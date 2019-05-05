#include "utils.hpp"

#define CHARVIDEO_IOC_MAGIC  '8'
#define MOTION_IOC_MAGIC  '9'

#define CHARVIDEO_IOCHALT    _IO(CHARVIDEO_IOC_MAGIC, 0)
#define CHARVIDEO_IOCSTART    _IO(CHARVIDEO_IOC_MAGIC, 1)
#define CHARVIDEO_IOCSTATUS    _IO(CHARVIDEO_IOC_MAGIC, 2)

#define CHARVIDEO_IOCQHEIGHT _IOR(CHARVIDEO_IOC_MAGIC,  3, int)
#define CHARVIDEO_IOCQWIDTH _IOR(CHARVIDEO_IOC_MAGIC,  4, int)
#define CHARVIDEO_IOCQPIXELLEN _IOR(CHARVIDEO_IOC_MAGIC,  5, int)
#define CHARVIDEO_IOCQBUFSIZE _IOR(CHARVIDEO_IOC_MAGIC,  6, int)

#define MOTION_IOCTSETENABLE    _IO(MOTION_IOC_MAGIC, 0)
#define MOTION_IOCTSETDIR	_IO(MOTION_IOC_MAGIC, 1)

#define SERVO_LEFT 220
#define SERVO_RIGHT 380
#define SERVO_CENTER (SERVO_LEFT + (SERVO_RIGHT-SERVO_LEFT)/2)

#define CLK_FREQ 50000000.0f
#define CLK_TO_CM (((1000000.0f / CLK_FREQ) * 2.54f) / 147.0f);

//#define RFID_DEBUG

struct properties cfg;

int f_motors;
int f_servo;
int f_rfid;
int f_rgbled;

cv::CascadeClassifier stop_cascade;
std::string stop_cascade_name = "stop.xml";

std::mutex IMAGE_mutex;
std::mutex COUT_mutex;
std::mutex SPEED_mutex;
std::mutex STOP_mutex;

char lane_done = 0;
struct sigaction sigIntHandler;
char stop_sign;
struct cardQueue *c_queue = NULL;

/* ------------------------------------------------------------ */
/*** int map_servo_fine(double input, double in_min, double in_max, double mean)
 **
 **   Parameters:
 **     input: 				the average point on the detection line
 **		in_min:				the left end of the detection line
 **		in_max:				the right end of the detection line
 **		mean:				the "center" of the detection line
 **
 **   Return Value:
 **      Individual servo command.
 **
 **   Description:
 **      This function maps the point on the detection line to the boundaries of
 **      the servo motor keeping in mind if the received value is to the right or
 **      to the left of the detection line imaginary center (because the center
 **      is not right in the middle of the detection line the outputs will be
 **      fine tuned in the inside region and rough in the outside region).
 **
 **      Basically a scaled map function.
 */
int map_servo_fine(double input, double in_min, double in_max, double mean) {

	if (input < mean) {
		return (int) full_map(input, in_min, mean, SERVO_LEFT, SERVO_CENTER);
	} else {
		return (int) full_map(input, mean, in_max, SERVO_CENTER, SERVO_RIGHT);
	}

}

/* ------------------------------------------------------------ */
/*** int choose_servo(int left, int right, int mean)
 **
 **   Parameters:
 **     left: 				the left side servo command
 **		right:				the right side servo command
 **		mean:				the center of the servo
 **
 **   Return Value:
 **      Servo command.
 **
 **   Description:
 **      This function returns the correct servo commnad meaning either:
 **      	- an average of the left and right servo command if it is posible
 **      	- the extreme servo command (if one of the sides is detecting a
 **      		sharp turn it chooses the sharp maneuver over the normal one)
 **      	- if none of the conditions above are met the average of the two
 **      		is returned ()
 */
int choose_servo(int left, int right, int mean) {
	if (left != 0 && right != 0) {
		if (abs(right - left) < cfg.servo_fine) {
			return average_not_zero(left, right);
		} else {
			if (left < mean && right < mean) {
				return std::min(left, right);
			} else if (left > mean && right > mean) {
				return std::max(left, right);
			} else {
				return average_not_zero(left, right);
			}
		}
	} else {
		return average_not_zero(left, right);
	}
}

/* ------------------------------------------------------------ */
/*** std::vector<int> choose_advanced_servo(int left_1, int right_1, int left_2, int right_2, int left_3, int right_3, int mean, int current_speed, int base_speed, int lane_keep)
 **
 **   Parameters:
 **     left_1: 			the left detection line 1 average
 **		right_1:			the right detection line 1 average
 **     left_2: 			the left detection line 2 average
 **		right_2:			the right detection line 2 average
 **     left_3: 			the left detection line 3 average
 **		right_3:			the right detection line 3 average
 **		mean:				the center of the servo
 **		current_speed:		the current speed of the car
 **		base_speed:			the speed set by the user
 **		lane_keep:			the lanes considered in deciding the servo output
 **
 **   Return Value:
 **      A vector with servo command on [0] and the speed the car is capable of doing now [1]
 **
 **   Description:
 **      This function returns the servo command adjusted to the lane keep parameter and
 **      the possible speed which is gradually increased or decreased (between the
 **      configured limits) depending on how well the lane lines are detected.
 */
std::vector<int> choose_advanced_servo(int left_1, int right_1, int left_2, int right_2, int left_3, int right_3, int mean, int current_speed, int base_speed, int lane_keep) {

	std::vector<int> ret;

	if (lane_keep == 1) {
		// adjust servo only with the right_lane_line
		ret.push_back(choose_servo(0, right_1, mean));
	} else if (lane_keep == -1) {
		// adjust servo only with the left_lane_line
		ret.push_back(choose_servo(left_1, 0, mean));
	} else {
		// adjust servo with both lane lines
		ret.push_back(choose_servo(left_1, right_1, mean));
	}

	if (left_1 != 0 || right_1 != 0) {

		if (left_2 != 0 && right_2 != 0) {
			if (left_3 != 0 && right_3 != 0) {
				if (current_speed < base_speed * cfg.speed_up_max) {
					ret.push_back(current_speed + base_speed * cfg.speed_up_rate);
				} else {
					ret.push_back(base_speed * cfg.speed_up_max);
				}
			} else {
				if (current_speed > base_speed) {
					ret.push_back(current_speed - base_speed * cfg.speed_up_rate);
				} else if (current_speed < base_speed) {
					ret.push_back(current_speed + base_speed * cfg.speed_up_rate);
				} else {
					ret.push_back(base_speed);
				}
			}
		} else {
			if (current_speed > base_speed * cfg.speed_up_min) {
				ret.push_back(current_speed - base_speed * cfg.speed_up_rate);
			} else {
				ret.push_back(base_speed * cfg.speed_up_min);
			}
		}
	} else {
		ret.push_back(base_speed * cfg.speed_up_min);
	}

	return ret;

}

/* ------------------------------------------------------------ */
/*** double find_avg_point_on_line(cv::Mat frame_pixels, cv::Mat frame_image, int line_y, int line_start, int line_stop, int param)
 **
 **   Parameters:
 **     frame_pixels: 		the image from which the lane is identified
 **		frame_image:		the image where the detected line is displayed
 **     line_y: 			the detection line y coordinate
 **		line_start:			the detection line x coordinate to the left
 **     line_stop: 			the detection line x coordinate to the right
 **		param:				the debug parameter
 **
 **   Return Value:
 **      The x position of the lane line on the detection area.
 **
 **   Description:
 **      This function computes the average point of the lane on the detection
 **      line and displays (prints) the coordinate of the points found and their average.
 */
double find_avg_point_on_line(cv::Mat frame_pixels, cv::Mat frame_image, int line_y, int line_start, int line_stop, int param) {

	std::vector<int> v;
	double ret = -1;
	for (int i = 0; i < line_stop - line_start + 3; i += 1) {
		if (frame_pixels.at<uchar>(cv::Point(i + line_start, line_y)) > 0) {
			if (param == 1 || param == -1) {
				COUT_mutex.lock();
				std::cout << "px " << i + line_start << "\n";
				COUT_mutex.unlock();
			}
			if (cfg.draw == 1 && (param == 2 || param == -1)) {
				cv::line(frame_image, cv::Point(i + line_start, line_y - 7), cv::Point(i + line_start, line_y + 7), cv::Scalar(0, 0, 255), 4, CV_AA);
			}
			v.push_back(i + line_start);
		}
	}

	if (v.size() > 0) {
		ret = std::accumulate(v.begin(), v.end(), 0.0) / v.size();
		if (cfg.draw == 1 && (param == 2 || param == -1)) {
			cv::line(frame_image, cv::Point(ret, line_y - 10), cv::Point(ret, line_y + 10), cv::Scalar(255, 0, 255), 3,
			CV_AA);
		}
	}

	return ret;
}

/* ------------------------------------------------------------ */
/*** int servo_speed_adj(int servo_no_adj, int current_speed)
 **
 **   Parameters:
 **     servo_no_adj: 		the raw servo command
 **		current_speed:		the current speed of the car
 **
 **   Return Value:
 **      The speed adjusted servo command.
 **
 **   Description:
 **      This function adjusts the raw servo command computed
 **      to the speed of the car, so if the car is going fast it
 **      doesn't need to turn as sharp to take higher angle turn
 **      as it would need to turn at a lower speed.
 */
int servo_speed_adj(int servo_no_adj, int current_speed) {

	double servo_post_adj;
	double servo_pre_adj = 0;

	if (servo_no_adj != -1) {
		servo_pre_adj = full_map(current_speed, cfg.min_speed, cfg.max_speed, cfg.min_adj_servo, cfg.max_adj_servo);
		servo_post_adj = SERVO_CENTER - (SERVO_CENTER - servo_no_adj) * servo_pre_adj;
	} else {
		servo_post_adj = servo_no_adj;
	}

	return (int) servo_post_adj;
}

/* ------------------------------------------------------------ */
/*** std::vector<double> average_lane_lines(cv::Mat frame_pixels, cv::Mat frame_image, int param)
 **
 **   Parameters:
 **     frame_pixels: 		the image from which the lane is identified
 **		frame_image:		the image where the detected line is displayed
 **		param:				the debug parameter
 **
 **   Return Value:
 **      A vector containing the detected coordinates from the 6 detection zones.
 **
 **   Description:
 **      This function returns the 6 average lane lines points and prints relevant information if needed.
 */
std::vector<double> average_lane_lines(cv::Mat frame_pixels, cv::Mat frame_image, int param) {

	std::vector<double> ret;
	if (param == 1 || param == -1) {
		COUT_mutex.lock();
		std::cout << "++left 1" << "\n";
		COUT_mutex.unlock();
	}
	ret.push_back(find_avg_point_on_line(frame_pixels, frame_image, cfg.y_1, cfg.left_x_1_1, cfg.left_x_2_1, param));
	if (param == 1 || param == -1) {
		COUT_mutex.lock();
		std::cout << "++right 1" << "\n";
		COUT_mutex.unlock();
	}
	ret.push_back(find_avg_point_on_line(frame_pixels, frame_image, cfg.y_1, cfg.right_x_1_1, cfg.right_x_2_1, param));
	if (param == 1 || param == -1) {
		COUT_mutex.lock();
		std::cout << "++left 2" << "\n";
		COUT_mutex.unlock();
	}
	ret.push_back(find_avg_point_on_line(frame_pixels, frame_image, cfg.y_2, cfg.left_x_1_2, cfg.left_x_2_2, param));
	if (param == 1 || param == -1) {
		COUT_mutex.lock();
		std::cout << "++right 2" << "\n";
		COUT_mutex.unlock();
	}
	ret.push_back(find_avg_point_on_line(frame_pixels, frame_image, cfg.y_2, cfg.right_x_1_2, cfg.right_x_2_2, param));
	if (param == 1 || param == -1) {
		COUT_mutex.lock();
		std::cout << "++left 3" << "\n";
		COUT_mutex.unlock();
	}
	ret.push_back(find_avg_point_on_line(frame_pixels, frame_image, cfg.y_3, cfg.left_x_1_3, cfg.left_x_2_3, param));
	if (param == 1 || param == -1) {
		COUT_mutex.lock();
		std::cout << "++right 3" << "\n";
		COUT_mutex.unlock();
	}
	ret.push_back(find_avg_point_on_line(frame_pixels, frame_image, cfg.y_3, cfg.right_x_1_3, cfg.right_x_2_3, param));

	return ret;
}

/* ------------------------------------------------------------ */
/*** std::vector<int> servo_and_speed(cv::Mat frame_pixels, cv::Mat frame_image, int param, int current_speed, int base_speed, int lane_keep)
 **
 **   Parameters:
 **     frame_pixels: 		the image from which the lane is identified
 **		frame_image:		the image where the data is displayed
 **		param:				the debug parameter
 **		current_speed:		the current speed of the car
 **		base_speed:			the speed set by the user
 **		lane_keep:			the lanes considered in deciding the servo output
 **
 **   Return Value:
 **      A vector containing the final computations of the servo command and possible speed.
 **
 **   Description:
 **      This function is a combination of all the other functions that calculate the working parameters of the car.
 **      	- compute the position of the lane lines
 **      	- map said positions to servo outputs
 **      	- chose the correct servo output and compute the possible speed of the car
 **      	- adjust chosen servo output to the speed of the car
 */
std::vector<int> servo_and_speed(cv::Mat frame_pixels, cv::Mat frame_image, int param, int current_speed, int base_speed, int lane_keep) {

	int servo_no_adj;

	double left_avg_1, right_avg_1, left_avg_2, right_avg_2, left_avg_3, right_avg_3;

	std::vector<double> averages = average_lane_lines(frame_pixels, frame_image, param);

	left_avg_1 = averages[0];
	right_avg_1 = averages[1];
	left_avg_2 = averages[2];
	right_avg_2 = averages[3];
	left_avg_3 = averages[4];
	right_avg_3 = averages[5];

	int servo_left1 = 0, servo_right1 = 0, servo_left2 = 0, servo_right2 = 0, servo_left3 = 0, servo_right3 = 0;

	if (left_avg_1 != -1) {
		servo_left1 = map_servo_fine(left_avg_1, cfg.left_x_1_1, cfg.left_x_2_1, cfg.left_mean_1);
		if (left_avg_2 != -1) {
			servo_left2 = map_servo_fine(left_avg_2, cfg.left_x_1_2, cfg.left_x_2_2, cfg.left_mean_2);
			if (left_avg_3 != -1) {
				servo_left3 = map_servo_fine(left_avg_3, cfg.left_x_1_3, cfg.left_x_2_3, cfg.left_mean_3);
			}
		}
	}

	if (right_avg_1 != -1) {
		servo_right1 = map_servo_fine(right_avg_1, cfg.right_x_1_1, cfg.right_x_2_1, cfg.right_mean_1);
		if (right_avg_2 != -1) {
			servo_right2 = map_servo_fine(right_avg_2, cfg.right_x_1_2, cfg.right_x_2_2, cfg.right_mean_2);
			if (right_avg_3 != -1) {
				servo_right3 = map_servo_fine(right_avg_3, cfg.right_x_1_3, cfg.right_x_2_3, cfg.right_mean_3);
			}
		}
	}

	if (param == 1 || param == -1) {
		COUT_mutex.lock();
		std::cout << "lft  = " << servo_left1 << ", rgt = " << servo_right1 << "\n";
		COUT_mutex.unlock();

	}

	int posible_speed = 0;

	std::vector<int> srv_spd = choose_advanced_servo(servo_left1, servo_right1, servo_left2, servo_right2, servo_left3, servo_right3, SERVO_CENTER, current_speed, base_speed, lane_keep);

	servo_no_adj = srv_spd[0];
	posible_speed = srv_spd[1];

	std::vector<int> ret;
	ret.push_back(servo_speed_adj(servo_no_adj, posible_speed));
	ret.push_back(posible_speed);

	return ret;
}

/* ------------------------------------------------------------ */
/*** void draw_accel(cv::Mat frame, float accel_x, float accel_y, int area_corner_x, int area_corner_y)
 **
 **   Parameters:
 **     frame: 			the image where the data is displayed
 **		accel_x:		the x value of the acceleration
 **		accel_y:		the y value of the acceleration
 **		area_corner_x:	the top left corner of the draw zone
 **		area_corner_y:	the top left corner of the draw zone
 **
 **   Return Value:
 **      None.
 **
 **   Description:
 **      This function draws the acceleration display on the streamed image.
 */
void draw_accel(cv::Mat frame, float accel_x, float accel_y, int area_corner_x, int area_corner_y) {

	int length = 80;
	int center = length / 2;
	int radius = length / 2;
	int thickness = 2;
	int shift = 0;
	int range = 4;

	cv::circle(frame, cv::Point(area_corner_x + center, area_corner_y + center), radius, cv::Scalar(0, 0, 255), thickness, CV_AA);
	cv::line(frame, cv::Point(area_corner_x + 0, area_corner_y + center), cv::Point(area_corner_x + length, area_corner_y + center), cv::Scalar(0, 0, 255), thickness, CV_AA, shift);
	cv::line(frame, cv::Point(area_corner_x + center, area_corner_y + 0), cv::Point(area_corner_x + center, area_corner_y + length), cv::Scalar(0, 0, 255), thickness, CV_AA, shift);

	float x = full_map(accel_y, -range, range, 0, length);
	float y = full_map(accel_x, -range, range, 0, length);

	if (x > length) {
		x = length;
	}
	if (x < 0) {
		x = 0;
	}
	if (y > length) {
		y = length;
	}
	if (y < 0) {
		y = 0;
	}

	cv::circle(frame, cv::Point(area_corner_x + x, area_corner_y + y), 3, cv::Scalar(255, 255, 255), thickness, CV_AA);

}

/* ------------------------------------------------------------ */
/*** int detect_and_display(cv::Mat frame, int param)
 **
 **   Parameters:
 **     frame: 			the image where the data is displayed
 **		param:			the debug parameter
 **
 **   Return Value:
 **      Stop sign flag.
 **
 **   Description:
 **      This function detects if there are any stop signs in the current frame.
 **      	- preprocess the frame (grayscale and equalize histograms)
 **      	- detect stop signs using Haar cascades
 **      	- display/print critical information about the signs
 **      	- check if the considered sign is close to the required stop sign (right dimension and color)
 */
int detect_and_display(cv::Mat frame, int param) {

	int ret = 0;
	std::vector<cv::Rect> stop_signs;
	cv::Mat frame_gray;
	cv::cvtColor(frame, frame_gray, cv::COLOR_BGR2GRAY);
	cv::equalizeHist(frame_gray, frame_gray);

	stop_cascade.detectMultiScale(frame_gray, stop_signs, 1.1, 2, 0 | cv::CASCADE_SCALE_IMAGE, cv::Size(30, 30));
	if (param == 1 || param == -1) {
		COUT_mutex.lock();
		std::cout << "stop signs = " << stop_signs.size() << "\n";
		COUT_mutex.unlock();
	}

	for (size_t i = 0; i < stop_signs.size(); i++) {
		if (param == 1 || param == -1) {
			COUT_mutex.lock();
			std::cout << "stop " << i << " height = " << stop_signs[i].height << "\n";
			std::cout << "stop " << i << " width = " << stop_signs[i].width << "\n";
			COUT_mutex.unlock();
		}

		// draw an ellipse around the sign
		if (cfg.draw == 2 && (param == 2 || param == -1)) {
			cv::Point center(stop_signs[i].x + stop_signs[i].width / 2, stop_signs[i].y + stop_signs[i].height / 2);
			cv::ellipse(frame, center, cv::Size(stop_signs[i].width / 2, stop_signs[i].height / 2), 0, 0, 360, cv::Scalar(255, 0, 255), 4, 8, 0);
		}

		if (stop_signs[i].height >= cfg.sign_min && stop_signs[i].height <= cfg.sign_max) {
			cv::Scalar clr = cv::mean(crop(frame, stop_signs[i].x, stop_signs[i].y, stop_signs[i].x + stop_signs[i].width, stop_signs[i].y + stop_signs[i].height));

			if (clr.val[2] >= clr.val[1] && clr.val[2] >= clr.val[0]) {
				ret = 1;
			}

		}
	}

	return ret;

}

/* ------------------------------------------------------------ */
/*** std::vector<int> speed_and_stop(int param, cv::Mat frame_stream, FILE* sonar, int current_speed, int base_speed, int stop_time, int posible_speed, int lane_keep)
 **
 **   Parameters:
 **		param:				the debug parameter
 **		frame_stream:		the image where the data is displayed
 **		sonar:				the file pointer to /dev/sonar
 **		rgbled:				the file pointer to /dev/rgbled
 **		current_speed:		the current speed of the car
 **		base_speed:			the speed set by the user
 **		stop_time:			the time the car needs to be still
 **		possible_speed:		THe possible speed of the car
 **		lane_keep:			the lanes considered in deciding the servo output
 **
 **   Return Value:
 **     A vector with:
 **     	- [0] current speed
 **     	- [1] base speed
 **     	- [2] stop time
 **     	- [3] distance to object in front
 **     	- [4] which lane to keep
 **
 **   Description:
 **     This function checks (in this order):
 **      	- for objects in front of the car;
 **      	- for stop signs
 **      	- RFID cards
 **     Then returns computed values to take them at the next iteration and computes
 **     a "rolling" state of the car determining speed the time of halting distance
 **     to the object in front if there are any and lane keeping decisions.
 **
 */
std::vector<int> speed_and_stop(int param, cv::Mat frame_stream, FILE* sonar, FILE* rgbled, int current_speed, int base_speed, int stop_time, int posible_speed, int lane_keep) {
	std::vector<int> ret;
	int cur_spd = current_speed;
	int bas_spd = base_speed;
	int stp_tim = stop_time;
	int lan_kep = lane_keep;
	int dst = 0;

	int stop_sgn = 0;
	static int old_stop_sgn = 0;

	int cascade_flag = 0;

	static int color;

	if (stop_time <= 0) {

		cur_spd = posible_speed;
		stp_tim = 0;

		// Sonar part
		if (cfg.sonar_dist > 1) {

			int clk_edges;
			read(sonar->_fileno, &clk_edges, 4);
			int dist = clk_edges * CLK_TO_CM
			;

			dst = dist;
			if (dist < cfg.sonar_dist && dist != 0) {
				cur_spd = 0;
				stp_tim = 1;

				cascade_flag = 1;

				color = SONAR_COLOR;
				write(rgbled->_fileno, &color, 4);
			} else {
				if (color == SONAR_COLOR) {
					color = 0;
					write(rgbled->_fileno, &color, 4);
				}
			}
		}

		// Sign part
		if (cascade_flag == 0 && cfg.sign_on == 1) {
			STOP_mutex.lock();
			stop_sgn = stop_sign;
			STOP_mutex.unlock();

			if (stop_sgn == 1) {
				color = STOP_COLOR;
				write(rgbled->_fileno, &color, 4);
			} else {
				if (color == STOP_COLOR) {
					color = 0;
					write(rgbled->_fileno, &color, 4);

				}
			}

			if (stop_sgn == 0 && old_stop_sgn == 1) {

				cur_spd = 0;
				stp_tim = 1000000;

				cascade_flag = 1;
			}

			old_stop_sgn = stop_sgn;
		}

		// RFID part
		if (cascade_flag == 0 && cfg.rfid_on == 1) {
			struct card * card_now = popCard(c_queue);

			if (card_now != NULL) {

				if (card_now->type < 100) {
					// speed card
					if (param == 1 || param == -1) {
						COUT_mutex.lock();
						std::cout << "SPEED" << card_now->type << " CARD" << "\n";
						COUT_mutex.unlock();
					}
					if (cfg.draw == 1 && (param == 2 || param == -1)) {
						char card_str[30];
						sprintf(card_str, "SPEED%d CARD", card_now->type);
						cv::putText(frame_stream, card_str, cvPoint(250, 300), cv::FONT_HERSHEY_COMPLEX_SMALL, 0.8, cvScalar(0, 0, 255), 1, CV_AA);
					}

					bas_spd = card_now->type * 1000;

					cascade_flag = 1;

					color = SPEED_COLOR;
					write(rgbled->_fileno, &color, 4);

				} else {
					switch (card_now->type) {

					case STOP:
						if (param == 1 || param == -1) {
							COUT_mutex.lock();
							std::cout << "STOP CARD" << "\n";
							COUT_mutex.unlock();
						}
						if (cfg.draw == 1 && (param == 2 || param == -1)) {
							cv::putText(frame_stream, "STOP CARD", cvPoint(250, 300), cv::FONT_HERSHEY_COMPLEX_SMALL, 0.8, cvScalar(0, 0, 255), 1, CV_AA);
						}
						cur_spd = 0;
						stp_tim = 3000000;

						cascade_flag = 1;

						color = HALT_COLOR;
						write(rgbled->_fileno, &color, 4);

						break;

					case PAUSE:
						if (param == 1 || param == -1) {
							COUT_mutex.lock();
							std::cout << "PAUSE CARD" << "\n";
							COUT_mutex.unlock();
						}
						if (cfg.draw == 1 && (param == 2 || param == -1)) {
							cv::putText(frame_stream, "PAUSE CARD", cvPoint(250, 300), cv::FONT_HERSHEY_COMPLEX_SMALL, 0.8, cvScalar(0, 0, 255), 1, CV_AA);
						}
						cur_spd = 0;
						stp_tim = 1000000;

						cascade_flag = 1;

						color = HALT_COLOR;
						write(rgbled->_fileno, &color, 4);

						break;
					case KEEPR:
						if (param == 1 || param == -1) {
							COUT_mutex.lock();
							std::cout << "KEEP RIGHT CARD" << "\n";
							COUT_mutex.unlock();
						}
						if (cfg.draw == 1 && (param == 2 || param == -1)) {
							cv::putText(frame_stream, "KEEP RIGHT CARD", cvPoint(250, 300), cv::FONT_HERSHEY_COMPLEX_SMALL, 0.8, cvScalar(0, 0, 255), 1, CV_AA);
						}

						if (lan_kep == 0) {
							lan_kep = 1;
						} else {
							lan_kep = 0;
						}

						cascade_flag = 1;
						break;

					case KEEPL:
						if (param == 1 || param == -1) {
							COUT_mutex.lock();
							std::cout << "KEEP LEFT CARD" << "\n";
							COUT_mutex.unlock();
						}
						if (cfg.draw == 1 && (param == 2 || param == -1)) {
							cv::putText(frame_stream, "KEEP LEFT CARD", cvPoint(250, 300), cv::FONT_HERSHEY_COMPLEX_SMALL, 0.8, cvScalar(0, 0, 255), 1, CV_AA);
						}
						if (lan_kep == 0) {
							lan_kep = -1;
						} else {
							lan_kep = 0;
						}

						cascade_flag = 1;
						break;

					case KEEPLR:
						if (param == 1 || param == -1) {
							COUT_mutex.lock();
							std::cout << "KEEP BOTH CARD" << "\n";
							COUT_mutex.unlock();
						}
						if (cfg.draw == 1 && (param == 2 || param == -1)) {
							cv::putText(frame_stream, "KEEP BOTH CARD", cvPoint(250, 300), cv::FONT_HERSHEY_COMPLEX_SMALL, 0.8, cvScalar(0, 0, 255), 1, CV_AA);
						}
						lan_kep = 0;

						cascade_flag = 1;
						break;

					}
					if (lan_kep != 0) {
						color = SINGLE_LANE_COLOR;
						write(rgbled->_fileno, &color, 4);
					} else {
						color = 0;
						write(rgbled->_fileno, &color, 4);
					}

				}

				free(card_now);

			}
		}
	}

	ret.push_back(cur_spd);
	ret.push_back(bas_spd);
	ret.push_back(stp_tim);
	ret.push_back(dst);
	ret.push_back(lan_kep);

	return ret;
}

/* ------------------------------------------------------------ */
/*** void my_handler(int s)
 **
 **   Parameters:
 **		s:			signal received
 **
 **   Return Value:
 **     None.
 **
 **   Description:
 **     This is a SIG_INT handler to stop the car in case of emergency or user input by pressing CTRL^C
 **
 */
void my_handler(int s) {

	std::cout << "\nCAR ";

	unsigned int speed = 0;
	int servo_out = SERVO_CENTER;
	int color = 0;
	lane_done = 1;

	write(f_servo, &servo_out, 2);
	write(f_motors, &speed, 4);
	write(f_rgbled, &color, 4);

	fake_interrupt();

	std::cout << "STOPPED." << "\n";
}

/* ------------------------------------------------------------ */
/*** void lane_component(int param, int iterations, FILE* camera, FILE* servo, FILE* motors, FILE* sonar, FILE* acl, unsigned short usr_speed, int h, int w, int l)
 **
 **   Parameters:
 **		param:				the debug parameter
 **		iterations:			the number of user set iterations
 **		camera:				the file pionter to /dev/videoHLS
 **		servo:				the file pointer to /dev/servo
 **		motors:				the file pointer to /dev/motors
 **		sonar:				the file pointer to /dev/sonar
 **		acl:				the file pointer to /dev/i2c-1 (accelerometer)
 **		rgbled:				the file pointer to /dev/rgbled
 **		usr_speed:			the user assigned speed
 **		h:					height of the stream
 **		w:					width of the stream
 **		l:					color depth of the stream
 **
 **   Return Value:
 **     None.
 **
 **   Description:
 **     This function is running in its own thread and it is responsible of
 **     controlling the car's lane detection and correct driving.
 **     It achieves this by using some previous functions. After resizing
 **     the camera image it gets the servo angle and possible speed from
 **     servo_and_speed(...) function and then decides if it is able to go
 **     forward and in what conditions (keeping the right or the left road
 **     or how much it still has to stop) from speed_and_stop(...) function.
 **     After the working parameters are calculated this functions writes an
 **     image containing the lasts iterations actions and goes to the next
 **     iterations where it will compute the iterations current parameters
 **     to the road read from the video stream and last computed parameters.
 **
 */
void lane_component(int param, int iterations, FILE* camera, FILE* servo, FILE* motors, FILE* sonar, FILE* acl, FILE* rgbled, unsigned short usr_speed, int h, int w, int l) {

	int servo_out = 300;
	int old_servo_out = servo_out;

	int dist = 0;

	unsigned int speed;

	unsigned int posible_speed;

	int current_speed = usr_speed;
	int base_speed = usr_speed;
	int stop_time = 0;

	int lane_keep = 0;

	unsigned char* pixels;
	pixels = (unsigned char *) malloc(h * w * l * sizeof(char));

	auto start = std::chrono::high_resolution_clock::now();
	auto finish = std::chrono::high_resolution_clock::now();
	auto duration = std::chrono::duration_cast<std::chrono::microseconds>(finish - start);

	int full_time = 0;
	int loop;

	try {
		for (loop = 0; loop < iterations && lane_done == 0; loop++) {

			start = std::chrono::high_resolution_clock::now();

			COUT_mutex.lock();
			std::cout << "loop=============" << loop << "\n";
			COUT_mutex.unlock();

			cv::Mat frame_1, frame, frame_stream;

			fread(pixels, 1, h * w * l, camera);

			frame_1 = cv::Mat(h, w, CV_8UC1, &pixels[0]);

			if (param != 100) {
				cv::resize(frame_1, frame, cv::Size(), cfg.resize_factor, cfg.resize_factor);
			} else {
				frame_1.copyTo(frame);
			}

			if (cfg.draw == 1 && (param == 2 || param == -1)) {
				cv::cvtColor(frame, frame_stream, cv::COLOR_GRAY2BGR);
			}

			std::vector<int> srv_spd = servo_and_speed(frame, frame_stream, param, current_speed, base_speed, lane_keep);

			servo_out = srv_spd[0];
			posible_speed = srv_spd[1];

			if (servo_out == -1) {
				servo_out = old_servo_out;
			}

			if (servo_out <= SERVO_LEFT)
				servo_out = SERVO_LEFT;
			if (servo_out >= SERVO_RIGHT)
				servo_out = SERVO_RIGHT;

			old_servo_out = servo_out;

			std::vector<int> big_speed = speed_and_stop(param, frame_stream, sonar, rgbled, current_speed, base_speed, stop_time, posible_speed, lane_keep);

			current_speed = big_speed[0];
			base_speed = big_speed[1];
			stop_time = big_speed[2];
			dist = big_speed[3];
			lane_keep = big_speed[4];

			//speed that is written to motors
			speed = ((unsigned short) current_speed << 16) + (unsigned short) current_speed;

			int mtr_write = write(motors->_fileno, &speed, 4);
			if (mtr_write < 4) {
				COUT_mutex.lock();
				std::cerr << "Failed write to motors." << "\n";
				COUT_mutex.unlock();
				break;
			}
			int srv_write = write(servo->_fileno, &servo_out, 2);
			if (srv_write < 2) {
				COUT_mutex.lock();
				std::cerr << "Failed write to servo." << "\n";
				COUT_mutex.unlock();
				break;
			}

			if (param == 1 || param == -1) {
				COUT_mutex.lock();

				std::cout << "servo = " << servo_out << "\n";
				std::cout << "speed = " << (speed >> 16) << "\n";
				std::cout << "dist  = " << dist << "\n";

				COUT_mutex.unlock();
			}

			if (cfg.draw == 1 && (param == 2 || param == -1)) {
				cv::line(frame_stream, cv::Point(cfg.right_x_1_1, cfg.y_1), cv::Point(cfg.right_x_2_1, cfg.y_1), cv::Scalar(100, 0, 0), 2, CV_AA);
				cv::line(frame_stream, cv::Point(cfg.left_x_1_1, cfg.y_1), cv::Point(cfg.left_x_2_1, cfg.y_1), cv::Scalar(0, 100, 0), 2, CV_AA);
				cv::line(frame_stream, cv::Point(cfg.right_x_1_2, cfg.y_2), cv::Point(cfg.right_x_2_2, cfg.y_2), cv::Scalar(100, 0, 0), 2, CV_AA);
				cv::line(frame_stream, cv::Point(cfg.left_x_1_2, cfg.y_2), cv::Point(cfg.left_x_2_2, cfg.y_2), cv::Scalar(0, 100, 0), 2, CV_AA);
				cv::line(frame_stream, cv::Point(cfg.right_x_1_3, cfg.y_3), cv::Point(cfg.right_x_2_3, cfg.y_3), cv::Scalar(100, 0, 0), 2, CV_AA);
				cv::line(frame_stream, cv::Point(cfg.left_x_1_3, cfg.y_3), cv::Point(cfg.left_x_2_3, cfg.y_3), cv::Scalar(0, 100, 0), 2, CV_AA);

				cv::line(frame_stream, cv::Point(cfg.left_mean_1, cfg.y_1 - 5), cv::Point(cfg.left_mean_1, cfg.y_1 + 5), cv::Scalar(0, 255, 255), 2, CV_AA);
				cv::line(frame_stream, cv::Point(cfg.right_mean_1, cfg.y_1 - 5), cv::Point(cfg.right_mean_1, cfg.y_1 + 5), cv::Scalar(0, 255, 255), 2, CV_AA);
				cv::line(frame_stream, cv::Point(cfg.left_mean_2, cfg.y_2 - 5), cv::Point(cfg.left_mean_2, cfg.y_2 + 5), cv::Scalar(0, 255, 255), 2, CV_AA);
				cv::line(frame_stream, cv::Point(cfg.right_mean_2, cfg.y_2 - 5), cv::Point(cfg.right_mean_2, cfg.y_2 + 5), cv::Scalar(0, 255, 255), 2, CV_AA);
				cv::line(frame_stream, cv::Point(cfg.left_mean_3, cfg.y_3 - 5), cv::Point(cfg.left_mean_3, cfg.y_3 + 5), cv::Scalar(0, 255, 255), 2, CV_AA);
				cv::line(frame_stream, cv::Point(cfg.right_mean_3, cfg.y_3 - 5), cv::Point(cfg.right_mean_3, cfg.y_3 + 5), cv::Scalar(0, 255, 255), 2, CV_AA);

				char lop[20];
				sprintf(lop, "loop = %d", loop);
				cv::putText(frame_stream, lop, cvPoint(30, 30), cv::FONT_HERSHEY_COMPLEX_SMALL, 0.8, cvScalar(0, 0, 255), 1, CV_AA);

				char srv[20];
				sprintf(srv, "servo = %d", servo_out);
				cv::putText(frame_stream, srv, cvPoint(30, 60), cv::FONT_HERSHEY_COMPLEX_SMALL, 0.8, cvScalar(0, 0, 255), 1, CV_AA);

				char spd[20];
				sprintf(spd, "speed = %d", speed >> 16);
				cv::putText(frame_stream, spd, cvPoint(30, 90), cv::FONT_HERSHEY_COMPLEX_SMALL, 0.8, cvScalar(0, 0, 255), 1, CV_AA);

				char dst[20];
				sprintf(dst, "dist = %d", dist);
				cv::putText(frame_stream, dst, cvPoint(30, 120), cv::FONT_HERSHEY_COMPLEX_SMALL, 0.8, cvScalar(0, 0, 255), 1, CV_AA);

				if (cfg.acl_on == 1) {
					float accel_x, accel_y, accel_z;
					ACL_ReadAccelG(acl->_fileno, &accel_x, &accel_y, &accel_z);
					accel_x *= 9.8f;
					accel_y *= 9.8f;

					draw_accel(frame_stream, accel_x, accel_y, 500, 30);

				}

				try {

					cv::imwrite("/etc/mjpg-stream.jpg", frame_stream);

					if (param == -1) {
						char name[65];
						sprintf(name, "img_lane%d.jpg", loop);
						cv::imwrite(name, frame_stream);
					}

				} catch (std::runtime_error& ex) {
					COUT_mutex.lock();
					std::cerr << "Exception writing image: " << ex.what() << "\n";
					COUT_mutex.unlock();
				}
			}

			sigaction(SIGINT, &sigIntHandler, NULL);

			finish = std::chrono::high_resolution_clock::now();
			duration = std::chrono::duration_cast<std::chrono::microseconds>(finish - start);

			if (cfg.fps != -1 && duration.count() < cfg.loop_time) {
				usleep(cfg.loop_time - duration.count());
			}
			full_time += duration.count();

			stop_time -= duration.count();

		}

	} catch (...) {
		std::cout << "EX_T1" << "\n";
	}

	lane_done = 1;
	if (cfg.rfid_on == 1) {
		fake_interrupt();
	}

	COUT_mutex.lock();
	std::cout << "LANE time/loop = " << full_time / (double) loop << "\n";
	COUT_mutex.unlock();

}

/* ------------------------------------------------------------ */
/*** void sign_component(int param, FILE* camera, int h, int w, int l)
 **
 **   Parameters:
 **		param:				the debug parameter
 **		camera:				the file pionter to /dev/video
 **		h:					height of the stream
 **		w:					width of the stream
 **		l:					color depth of the stream
 **
 **   Return Value:
 **     None.
 **
 **   Description:
 **     This function is running in its own thread and it is responsible of
 **     controlling the car's sign detection algorithm. It uses a Haar
 **     cascade technique (detect_and_display(...) function) and it runs
 **     until the lane_component part of the control algorithm finishes.
 **     The preprocessing is minial, only resising the original camera image
 **     and cropping it to halt the size (tipically road signs are on the
 **     right side of the road)
 **
 */
void sign_component(int param, FILE* camera, int h, int w, int l) {

	auto start = std::chrono::high_resolution_clock::now();
	auto finish = std::chrono::high_resolution_clock::now();
	auto duration = std::chrono::duration_cast<std::chrono::microseconds>(finish - start);

	int sign = 0;

	int loop = 0;

	double full_time = 0;

	unsigned char* pixels;
	pixels = (unsigned char *) malloc(h * w * l * sizeof(char));

	try {
		while (lane_done == 0) {

			start = std::chrono::high_resolution_clock::now();

			cv::Mat frame;

			fread(pixels, 1, h * w * l, camera);

			frame = cv::Mat(h, w, CV_8UC3, &pixels[0]);

			if (frame.rows != 0) {

				cv::Mat region_image_sign, frame_stream;

				region_image_sign = crop(frame, frame.cols / 2, 0, frame.cols, frame.rows);
				cv::resize(region_image_sign, frame_stream, cv::Size(), cfg.resize_factor, cfg.resize_factor);

				sign = detect_and_display(frame_stream, param);
				STOP_mutex.lock();
				stop_sign = sign;
				STOP_mutex.unlock();

				if (cfg.draw == 2 && (param == 2 || param == -1)) {
					try {

						cv::imwrite("/etc/mjpg-stream.jpg", frame_stream);

						if (param == -1) {
							char name[65];
							sprintf(name, "img_sign%d.jpg", loop);
							cv::imwrite(name, frame);
						}

					} catch (std::runtime_error& ex) {
						std::cerr << "Exception writing image: " << ex.what() << "\n";
					}
				}

				finish = std::chrono::high_resolution_clock::now();
				duration = std::chrono::duration_cast<std::chrono::microseconds>(finish - start);

				if (cfg.fps != -1 && duration.count() < cfg.loop_time) {
					usleep(cfg.loop_time - duration.count());
				}
				loop++;
				full_time += duration.count();
			}

		}

	} catch (...) {
		std::cout << "EX_T2" << "\n";
	}

	COUT_mutex.lock();
	std::cout << "SIGN time/loop = " << full_time / (double) loop << "\n";
	COUT_mutex.unlock();

}

/* ------------------------------------------------------------ */
/*** void runRFID(int fd, struct cardQueue *queue)
 **
 **   Parameters:
 **		fd:					the RFID file descriptor
 **		queue:				the queue in which the RFID cards are stored
 **
 **   Return Value:
 **     None.
 **
 **   Description:
 **     This function is running in its own thread and it is responsible of
 **     controlling the car's RFID detection part of the control algorithm.
 **     The functions and main part of this function are explained in
 **     PN532_rfid.h file. It runs until the lane_component part of
 **     the control algorithm finishes.
 **
 */
void RFID_component(int fd, struct cardQueue *queue) {

	uint8_t success;
	uint8_t uid[6];
	uint8_t uidLength;

	uint8_t keys[6] = { 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF }; //default key
	uint8_t block = 4;
	uint8_t numCards = 0;

	try {

		while (lane_done == 0) {

#ifdef RFID_DEBUG
			printf("Waiting for card\n");
#endif
			memset(uid, 0, 6);
			success = 0;
			while (success != 1 && lane_done == 0) {
				success = readPassiveTargetID(fd, PN532_MIFARE_ISO14443A, uid, &uidLength, 1);
				if (success == 1)
					break;
			}
			if (success) {
				if (uidLength != 4)
					continue;

				success = mifareclassic_AuthenticateBlock(fd, uid, uidLength, block, 0, keys);
				if (success) {
					uint8_t data[16];

					success = mifareclassic_ReadDataBlock(fd, block, data);
					if (success) {
						struct card *card = (struct card*) malloc(sizeof(card));
						card->type = data[0];
						memcpy(&card->UID, uid, 4);
						uint8_t result = insertCard(queue, card);
						if (result == 1) {
							numCards++;

#ifdef RFID_DEBUG
							printf("Inserted card\n");
#endif
						}

					} else {
#ifdef RFID_DEBUG
						printf("Read block failed.\n");
#endif
					}
				} else {
#ifdef RFID_DEBUG
					printf("Block auth failed.\n");
#endif
				}
			}

		}
	} catch (...) {
		std::cout << "EX_T3" << "\n";
	}
}

int main(int argc, char** argv) {

	std::cout << "OpenCV version : " << CV_VERSION << "\n";

	if (argc != 4) {
		std::cerr << argv[0] << " <debug param> <number of iterations> <speed>" << "\n" << "0 - nothing" << "\n" << "1 - just text" << "\n" << "2 - just images" << "\n" << "\n" << "-1 - text and images" << "\n" << "100 - calibration mode" << "\n";
		return -1;
	}

	// get the arguments
	int param = atoi(argv[1]);
	int iterations = atoi(argv[2]);
	unsigned short usr_speed = atoi(argv[3]);

	// check parameters
	if (iterations < 0) {
		std::cerr << "Bad number of iterations." << "\n";

		return -1;
	} else if (iterations == 42) {
		iterations = 100000;
	}
	if (param == 100) {
		iterations = 1;
	}

	std::vector<FILE*> fp;

	std::string cfg_name = "prop.cfg";
	std::vector<double> calib_avg;
	// initialize the cfg
	cfg = configure(param, cfg_name, calib_avg);

	// open the different devices and check if they have opened correctly
	FILE* camera_lane = fopen("/dev/videoHLS", "rb");
	if (camera_lane < 0) {
		std::cerr << "Failed to open lane camera." << "\n";
		close_fp(fp);
		return -1;
	}
	fp.push_back(camera_lane);

	FILE* camera_sign = fopen("/dev/video", "rb");
	if (camera_sign < 0) {
		std::cerr << "Failed to open sign camera." << "\n";
		close_fp(fp);
		return -1;
	}
	fp.push_back(camera_sign);

	FILE* servo = fopen("/dev/servo", "r+b");
	if (servo < 0) {
		std::cerr << "Failed to open servo." << "\n";
		close_fp(fp);
		return -1;
	}
	fp.push_back(servo);

	FILE* motors = fopen("/dev/motors", "r+b");
	if (motors < 0) {
		std::cerr << "Failed to open motors." << "\n";
		close_fp(fp);
		return -1;
	}
	fp.push_back(motors);

	FILE* sonar;
	if (cfg.sonar_dist > 1) {
		sonar = fopen("/dev/sonar", "rb");
		if (sonar < 0) {
			std::cerr << "Failed to open sonar." << "\n";
			close_fp(fp);
			return -1;
		}
		fp.push_back(sonar);
	}

	FILE* rgbled = fopen("/dev/rgbled", "r+b");
	if (rgbled < 0) {
		std::cerr << "Failed to open rgbled." << "\n";
		close_fp(fp);
		return -1;
	}
	fp.push_back(rgbled);

	FILE* acl;
	if (cfg.acl_on == 1) {
		acl = fopen("/dev/i2c-1", "r+b");
		if (acl < 0) {
			std::cerr << "Failed to open acl." << "\n";
			close_fp(fp);
			return -1;
		}
		fp.push_back(acl);

		if (ACL_Init(acl->_fileno) < 0) {
			std::cerr << "Failed to initialize acl." << "\n";
			close_fp(fp);
			return -1;
		}
	}

	int rfid = -1;
	if (cfg.rfid_on == 1) {
		rfid = initRFID();
		createCardQueue(&c_queue);
		if (rfid < 0) {
			std::cerr << "Failed to open RFID." << "\n";
			close_fp(fp);
			return -1;
		}
		f_rfid = rfid;
	}

	f_motors = motors->_fileno;
	f_servo = servo->_fileno;
	f_rgbled = rgbled->_fileno;

	// initialize motors direction (the car is always going forward)
	unsigned int left_dir = 1;
	unsigned int right_dir = left_dir;
	ioctl(motors->_fileno, MOTION_IOCTSETDIR, ((left_dir & 1) << 1) + (right_dir & 1));

	// enable motors
	unsigned int enable = 1;
	ioctl(motors->_fileno, MOTION_IOCTSETENABLE, enable);

	// center wheels
	int stock_servo_out = SERVO_CENTER;
	write(servo->_fileno, &stock_servo_out, 2);

	// set starting speed to 0
	int stock_speed = 0;
	write(motors->_fileno, &stock_speed, 4);

	// turn off the led
	int color = 0;
	write(rgbled->_fileno, &color, 4);

	// load Haar cascade
	if (!stop_cascade.load(stop_cascade_name)) {
		std::cerr << "Failed to load stop sign cascade" << "\n";
		close_fp(fp);
		if (cfg.rfid_on == 1)
			closeRFID(rfid);
		return -1;
	};

	// set SIG_INT handler
	memset(&sigIntHandler, 0, sizeof(sigIntHandler));
	sigIntHandler.sa_flags = SA_RESETHAND;
	sigIntHandler.sa_handler = my_handler;
	sigaction(SIGINT, &sigIntHandler, NULL);

	// get canfiguration data from the 2 video streams
	int h_lane = ioctl(camera_lane->_fileno, CHARVIDEO_IOCQHEIGHT);
	int w_lane = ioctl(camera_lane->_fileno, CHARVIDEO_IOCQWIDTH);
	int l_lane = ioctl(camera_lane->_fileno, CHARVIDEO_IOCQPIXELLEN);

	int h_sign = ioctl(camera_sign->_fileno, CHARVIDEO_IOCQHEIGHT);
	int w_sign = ioctl(camera_sign->_fileno, CHARVIDEO_IOCQWIDTH);
	int l_sign = ioctl(camera_sign->_fileno, CHARVIDEO_IOCQPIXELLEN);

	if (param != 100) {

		// the main part of the algorithm, where the threads are started if needed
		std::thread t1, t2, t3;

		t1 = std::thread(lane_component, param, iterations, camera_lane, servo, motors, sonar, acl, rgbled, usr_speed, h_lane, w_lane, l_lane);
		if (cfg.sign_on == 1) {
			t2 = std::thread(sign_component, param, camera_sign, h_sign, w_sign, l_sign);
		}
		if (cfg.rfid_on == 1) {
			t3 = std::thread(RFID_component, rfid, c_queue);
		}

		t1.join();
		std::cout << "T1 joined" << "\n";
		if (cfg.sign_on == 1) {
			t2.join();
			std::cout << "T2 joined" << "\n";
		}
		if (cfg.rfid_on == 1) {
			t3.join();
			std::cout << "T3 joined" << "\n";
		}

	} else {

		// the calibration part of the algorithm overwrites the means of the
		// detection zones with ones calculated from the current image and the config file is changed
		unsigned char* pixels;
		pixels = (unsigned char *) malloc(h_lane * w_lane * l_lane * sizeof(char));
		fread(pixels, 1, h_lane * w_lane * l_lane, camera_lane);
		cv::Mat calib_img = cv::Mat(h_lane, w_lane, CV_8UC1, &pixels[0]);
		calib_avg = average_lane_lines(calib_img, calib_img, param);
		cfg = configure(param, cfg_name, calib_avg);

	}

	// the end of the algorithm, threads are joined, and for good
	// measure, the servo and motors are reverted to their default positions
	stock_servo_out = SERVO_CENTER;
	write(servo->_fileno, &stock_servo_out, 2);
	stock_speed = 0;
	write(motors->_fileno, &stock_speed, 4);
	color = 0;
	write(rgbled->_fileno, &color, 4);

	close_fp(fp);
	if (cfg.rfid_on == 1) {
		closeRFID(rfid);
		freeCardQueue(c_queue);
	}

	return 0;
}

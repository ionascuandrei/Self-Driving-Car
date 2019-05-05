struct properties {
	int y_1, y_2, y_3;
	int line_distance_1_out, line_distance_1_in;
	int line_distance_1, line_distance_2, line_distance_3;
	int servo_fine, min_speed, max_speed;

	double servo_map_a, servo_map_b, servo_map_c, servo_map_d;

	int sign_min, sign_max, fps;
	int left_mean_1, left_mean_2, left_mean_3;
	int right_mean_1, right_mean_2, right_mean_3;
	double resize_factor, min_adj_servo, max_adj_servo;

	int left_x_1_1;
	int left_x_2_1;

	int right_x_1_1;
	int right_x_2_1;

	int left_x_1_2;
	int left_x_2_2;

	int right_x_1_2;
	int right_x_2_2;

	int left_x_1_3;
	int left_x_2_3;

	int right_x_1_3;
	int right_x_2_3;

	int loop_time;

	int rfid_on;
	int sign_on;
	int sonar_dist;

	int acl_on;

	double speed_up_min, speed_up_max, speed_up_rate;

	int draw;
};

enum prop_codes {
	E_resize_factor,
	E_y_1,
	E_y_2,
	E_y_3,
	E_line_dist_1_out,
	E_line_dist_1_in,
	E_line_dist_1,
	E_line_dist_2,
	E_line_dist_3,
	E_servo_fine,
	E_min_speed,
	E_max_speed,
	E_min_adj_servo,
	E_max_adj_servo,
	E_servo_map_a,
	E_servo_map_b,
	E_servo_map_c,
	E_servo_map_d,
	E_sign_min,
	E_sign_max,
	E_fps,
	E_speed_up_min,
	E_speed_up_max,
	E_speed_up_rate,
	E_rfid_on,
	E_sign_on,
	E_acl_on,
	E_sonar_dist,
	E_left_mean_1,
	E_left_mean_2,
	E_left_mean_3,
	E_right_mean_1,
	E_right_mean_2,
	E_right_mean_3,
	E_calib,
	E_invalid,
	E_draw
};

/* ------------------------------------------------------------ */
/*** prop_codes string_to_prop(std::string const& inString)
 **
 **   Parameters:
 **		inSting:					the string of the property from the config file.
 **
 **   Return Value:
 **     A prop_code
 **
 **   Description:
 **     This function is a helper function that enables the use of a switch for strings.
 **
 */
prop_codes string_to_prop(std::string const& inString) {

	if (inString == "resize_factor")
		return E_resize_factor;
	if (inString == "y_1")
		return E_y_1;
	if (inString == "y_2")
		return E_y_2;
	if (inString == "y_3")
		return E_y_3;
	if (inString == "line_dist_1_out")
		return E_line_dist_1_out;
	if (inString == "line_dist_1_in")
		return E_line_dist_1_in;
	if (inString == "line_dist_1")
		return E_line_dist_1;
	if (inString == "line_dist_2")
		return E_line_dist_2;
	if (inString == "line_dist_3")
		return E_line_dist_3;
	if (inString == "servo_fine")
		return E_servo_fine;
	if (inString == "min_speed")
		return E_min_speed;
	if (inString == "max_speed")
		return E_max_speed;
	if (inString == "min_adj_servo")
		return E_min_adj_servo;
	if (inString == "max_adj_servo")
		return E_max_adj_servo;
	if (inString == "servo_map_a")
		return E_servo_map_a;
	if (inString == "servo_map_b")
		return E_servo_map_b;
	if (inString == "servo_map_c")
		return E_servo_map_c;
	if (inString == "servo_map_d")
		return E_servo_map_d;
	if (inString == "sign_min")
		return E_sign_min;
	if (inString == "sign_max")
		return E_sign_max;
	if (inString == "fps")
		return E_fps;
	if (inString == "rfid_on")
		return E_rfid_on;
	if (inString == "sign_on")
		return E_sign_on;
	if (inString == "acl_on")
		return E_acl_on;
	if (inString == "sonar_dist")
		return E_sonar_dist;
	if (inString == "speed_up_min")
		return E_speed_up_min;
	if (inString == "speed_up_max")
		return E_speed_up_max;
	if (inString == "speed_up_rate")
		return E_speed_up_rate;
	if (inString == "left_mean_1")
		return E_left_mean_1;
	if (inString == "left_mean_2")
		return E_left_mean_2;
	if (inString == "left_mean_3")
		return E_left_mean_3;
	if (inString == "right_mean_1")
		return E_right_mean_1;
	if (inString == "right_mean_2")
		return E_right_mean_2;
	if (inString == "right_mean_3")
		return E_right_mean_3;
	if (inString == "$")
		return E_calib;
	if (inString == "draw")
		return E_draw;

	return E_invalid;

}

/* ------------------------------------------------------------ */
/*** struct properties configure(int param, std::string filename, std::vector<double> mean)
 **
 **   Parameters:
 **   	param:						calibration mode flag
 **		filename:					the name of the config file.
 **		mean:						if there is the need of calibration this are the
 **									values from which the old ones are overwritten
 **
 **   Return Value:
 **     The configuration structure.
 **
 **   Description:
 **     This function is a helper function that enables the use of a switch for strings.
 **
 */
struct properties configure(int param, std::string filename, std::vector<double> mean) {

	int seek_calib = 0;

	struct properties configuration;

	std::string line;
	std::string prop;
	std::ifstream config_file;
	try {
		config_file.open(filename);

		// reading the whole configuration file and setting the parameters form it
		while (std::getline(config_file, line)) {
			std::istringstream is_line(line);
			std::getline(is_line, prop, '=');
			std::string value;
			std::getline(is_line, value);

			switch (string_to_prop(prop)) {
			case E_resize_factor:
				configuration.resize_factor = std::stof(value);
				break;
			case E_y_1:
				configuration.y_1 = std::stoi(value);
				break;
			case E_y_2:
				configuration.y_2 = std::stoi(value);
				break;
			case E_y_3:
				configuration.y_3 = std::stoi(value);
				break;
			case E_line_dist_1_out:
				configuration.line_distance_1_out = std::stoi(value);
				break;
			case E_line_dist_1_in:
				configuration.line_distance_1_in = std::stoi(value);
				break;
			case E_line_dist_1:
				configuration.line_distance_1 = std::stoi(value);
				break;
			case E_line_dist_2:
				configuration.line_distance_2 = std::stoi(value);
				break;
			case E_line_dist_3:
				configuration.line_distance_3 = std::stoi(value);
				break;
			case E_servo_fine:
				configuration.servo_fine = std::stoi(value);
				break;
			case E_min_speed:
				configuration.min_speed = std::stoi(value);
				break;
			case E_max_speed:
				configuration.max_speed = std::stoi(value);
				break;
			case E_min_adj_servo:
				configuration.min_adj_servo = std::stof(value);
				break;
			case E_max_adj_servo:
				configuration.max_adj_servo = std::stof(value);
				break;
			case E_servo_map_a:
				configuration.servo_map_a = std::stof(value);
				break;
			case E_servo_map_b:
				configuration.servo_map_b = std::stof(value);
				break;
			case E_servo_map_c:
				configuration.servo_map_c = std::stof(value);
				break;
			case E_servo_map_d:
				configuration.servo_map_d = std::stof(value);
				break;
			case E_sign_min:
				configuration.sign_min = std::stoi(value);
				break;
			case E_sign_max:
				configuration.sign_max = std::stoi(value);
				break;
			case E_fps:
				configuration.fps = std::stoi(value);
				break;
			case E_sign_on:
				configuration.sign_on = std::stoi(value);
				break;
			case E_rfid_on:
				configuration.rfid_on = std::stoi(value);
				break;
			case E_acl_on:
				configuration.acl_on = std::stoi(value);
				break;
			case E_speed_up_min:
				configuration.speed_up_min = std::stof(value);
				break;
			case E_speed_up_max:
				configuration.speed_up_max = std::stof(value);
				break;
			case E_speed_up_rate:
				configuration.speed_up_rate = std::stof(value);
				break;
			case E_sonar_dist:
				configuration.sonar_dist = std::stof(value);
				break;
			case E_left_mean_1:
				configuration.left_mean_1 = std::stoi(value);
				break;
			case E_left_mean_2:
				configuration.left_mean_2 = std::stoi(value);
				break;
			case E_left_mean_3:
				configuration.left_mean_3 = std::stoi(value);
				break;
			case E_right_mean_1:
				configuration.right_mean_1 = std::stoi(value);
				break;
			case E_right_mean_2:
				configuration.right_mean_2 = std::stoi(value);
				break;
			case E_right_mean_3:
				configuration.right_mean_3 = std::stoi(value);
				break;
			case E_calib:
				seek_calib = config_file.tellg();
				break;
			case E_draw:
				configuration.draw = std::stoi(value);
				break;
			case E_invalid:
				continue;
			}

		}

		config_file.close();

		// computing other parameters from the ones read
		configuration.loop_time = (1000000 / configuration.fps);

		// calibration part
		if (param == 100) {
			std::ofstream config_file_out;
			if (mean.size() == 6) {
				config_file_out.open(filename, std::ios::in | std::ios::out);

				configuration.left_x_1_1 = (((int) mean[0] - configuration.line_distance_1_out));
				configuration.left_x_2_1 = (((int) mean[0] + configuration.line_distance_1_in));

				configuration.right_x_1_1 = (((int) mean[1] - configuration.line_distance_1_in));
				configuration.right_x_2_1 = (((int) mean[1] + configuration.line_distance_1_out));

				configuration.left_x_1_2 = (((int) mean[2] - configuration.line_distance_2));
				configuration.left_x_2_2 = (((int) mean[2] + configuration.line_distance_2));

				configuration.right_x_1_2 = (((int) mean[3] - configuration.line_distance_2));
				configuration.right_x_2_2 = (((int) mean[3] + configuration.line_distance_2));

				configuration.left_x_1_3 = (((int) mean[4] - configuration.line_distance_3));
				configuration.left_x_2_3 = (((int) mean[4] + configuration.line_distance_3));

				configuration.right_x_1_3 = (((int) mean[5] - configuration.line_distance_3));
				configuration.right_x_2_3 = (((int) mean[5] + configuration.line_distance_3));

				config_file_out.seekp(seek_calib, std::ios::beg);

				config_file_out << "left_mean_1=" << (int) mean[0] << "\n";
				config_file_out << "left_mean_2=" << (int) mean[2] << "\n";
				config_file_out << "left_mean_3=" << (int) mean[4] << "\n";
				config_file_out << "right_mean_1=" << (int) mean[1] << "\n";
				config_file_out << "right_mean_2=" << (int) mean[3] << "\n";
				config_file_out << "right_mean_3=" << (int) mean[5] << "\n";
				configuration.left_mean_1 = (int) mean[0];
				configuration.left_mean_2 = (int) mean[2];
				configuration.left_mean_3 = (int) mean[4];
				configuration.right_mean_1 = (int) mean[1];
				configuration.right_mean_2 = (int) mean[3];
				configuration.right_mean_3 = (int) mean[5];

				config_file_out.close();
			} else {
				configuration.left_x_1_1 = ((configuration.left_mean_1 - configuration.line_distance_1_out));
				configuration.left_x_2_1 = ((configuration.left_mean_1 + configuration.line_distance_1_in));

				configuration.right_x_1_1 = ((configuration.right_mean_1 - configuration.line_distance_1_in));
				configuration.right_x_2_1 = ((configuration.right_mean_1 + configuration.line_distance_1_out));

				configuration.left_x_1_2 = ((configuration.left_mean_2 - configuration.line_distance_2));
				configuration.left_x_2_2 = ((configuration.left_mean_2 + configuration.line_distance_2));

				configuration.right_x_1_2 = ((configuration.right_mean_2 - configuration.line_distance_2));
				configuration.right_x_2_2 = ((configuration.right_mean_2 + configuration.line_distance_2));

				configuration.left_x_1_3 = ((configuration.left_mean_3 - configuration.line_distance_3));
				configuration.left_x_2_3 = ((configuration.left_mean_3 + configuration.line_distance_3));

				configuration.right_x_1_3 = ((configuration.right_mean_3 - configuration.line_distance_3));
				configuration.right_x_2_3 = ((configuration.right_mean_3 + configuration.line_distance_3));
			}

		} else {
			// parameters already scaled to the resize factor of the image
			configuration.y_1 *= configuration.resize_factor;
			configuration.y_2 *= configuration.resize_factor;
			configuration.y_3 *= configuration.resize_factor;
			configuration.line_distance_1 *= configuration.resize_factor;
			configuration.line_distance_1_out *= configuration.resize_factor;
			configuration.line_distance_1_in *= configuration.resize_factor;
			configuration.line_distance_2 *= configuration.resize_factor;
			configuration.line_distance_3 *= configuration.resize_factor;
			configuration.left_mean_1 *= configuration.resize_factor;
			configuration.left_mean_2 *= configuration.resize_factor;
			configuration.left_mean_3 *= configuration.resize_factor;
			configuration.right_mean_1 *= configuration.resize_factor;
			configuration.right_mean_2 *= configuration.resize_factor;
			configuration.right_mean_3 *= configuration.resize_factor;

			configuration.left_x_1_1 = ((configuration.left_mean_1 - configuration.line_distance_1_out));
			configuration.left_x_2_1 = ((configuration.left_mean_1 + configuration.line_distance_1_in));

			configuration.right_x_1_1 = ((configuration.right_mean_1 - configuration.line_distance_1_in));
			configuration.right_x_2_1 = ((configuration.right_mean_1 + configuration.line_distance_1_out));

			configuration.left_x_1_2 = ((configuration.left_mean_2 - configuration.line_distance_2));
			configuration.left_x_2_2 = ((configuration.left_mean_2 + configuration.line_distance_2));

			configuration.right_x_1_2 = ((configuration.right_mean_2 - configuration.line_distance_2));
			configuration.right_x_2_2 = ((configuration.right_mean_2 + configuration.line_distance_2));

			configuration.left_x_1_3 = ((configuration.left_mean_3 - configuration.line_distance_3));
			configuration.left_x_2_3 = ((configuration.left_mean_3 + configuration.line_distance_3));

			configuration.right_x_1_3 = ((configuration.right_mean_3 - configuration.line_distance_3));
			configuration.right_x_2_3 = ((configuration.right_mean_3 + configuration.line_distance_3));
		}

	} catch (...) {
		std::cout << "INVALID CONFIGURATION FILE" << '\n';
	}

	return configuration;

}

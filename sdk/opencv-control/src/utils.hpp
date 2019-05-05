#include <opencv2/core.hpp>
#include <opencv2/opencv.hpp>
#include <opencv2/imgproc/imgproc.hpp>
#include <opencv2/imgproc.hpp>
#include <opencv2/imgcodecs.hpp>
#include <opencv2/objdetect.hpp>

#include <stdlib.h>
#include <stdio.h>
#include <stdint.h>
#include <unistd.h>
#include <string.h>
#include <signal.h>
#include <fcntl.h>
#include <sys/mman.h>
#include <sys/ioctl.h>
#include <linux/i2c-dev.h>
#include <math.h>
extern "C" {
#include <uiotools/uiotools.h>
}

#include <iostream>
#include <vector>
#include <numeric>
#include <chrono>
#include <fstream>
#include <sstream>
#include <thread>
#include <mutex>
#include <typeinfo>
#include <csignal>
#include <string>



#include "PN532_rfid.h"
#include "cardQueue.h"
#include "cards.h"
#include "acl.h"
#include "config.hpp"


/* ------------------------------------------------------------ */
/*** double full_map(double input, double in_min, double in_max, double out_min, double out_max)
 **
 **   Parameters:
 **		input:					the value to be mapped
 **		in_min:					the low end of the input range
 **		in_max:					the high end of the input range
 **		out_min:				the low end of the output range
 **		out_max:				the high end of the output range
 **
 **   Return Value:
 **     The mapped value.
 **
 **   Description:
 **     This function is a helper function that maps a value from a range to another range
 **
 */
double full_map(double input, double in_min, double in_max, double out_min, double out_max) {

	double slope = (double) (out_max - out_min) / (double) (in_max - in_min);
	double output = (double) out_min + slope * (double) (input - in_min);
	return output;
}


/* ------------------------------------------------------------ */
/*** double average_not_zero(int a, int b)
 **
 **   Parameters:
 **		a:					number 1
 **		b:					munber 2
 **
 **   Return Value:
 **     - The average of the two number, if they are not 0
 **     - -1 if both number are 0
 **
 **   Description:
 **     This function is a helper function that returns an average of two non zero numbers.
 **
 */
double average_not_zero(int a, int b) {

	if (a != 0 && b != 0) {
		return (double) (a + b) / 2;
	} else if (a != 0) {
		return a;
	} else if (b != 0) {
		return b;
	} else {
		return -1;
	}
}


/* ------------------------------------------------------------ */
/*** cv::Mat crop(cv::Mat frame, int x1, int y1, int x2, int y2)
 **
 **   Parameters:
 **		frame:					the image to be cropped.
 **		x1:						the 4 coordinates of the crop rectangle
 **		y1:
 **		x2:
 **		y2:
 **
 **   Return Value:
 **     Cropped Image
 **
 **   Description:
 **     This function is a helper function that crops an image.
 **
 */
cv::Mat crop(cv::Mat frame, int x1, int y1, int x2, int y2) {

	cv::Rect roi;
	roi.x = x1;
	roi.y = y1;
	roi.width = x2 - x1;
	roi.height = y2 - y1;

	cv::Mat crop = frame(roi);
	return crop;
}


/* ------------------------------------------------------------ */
/*** void close_fp(std::vector<FILE*> fp)
 **
 **   Parameters:
 **		fp:					the file pointer vector.
 **
 **   Return Value:
 **     None.
 **
 **   Description:
 **     This function is a helper function that closes
 **     all the files opened and stored in the fp vector.
 **
 */
void close_fp(std::vector<FILE*> fp) {
	for (unsigned int i = 0; i < fp.size(); i++) {
		fclose(fp[i]);
	}
}

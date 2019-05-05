/**
 * This application is a self-test routine for the
 * devices /dev/motors and /dev/servo and can be used
 * as a refference for their use modes.
 */
#include <stdio.h>
#include <unistd.h>
#include <string.h>
#include <fcntl.h>
#include <sys/mman.h>
#include <linux/ioctl.h>

#define MOTION_IOC_MAGIC  '9'

#define MOTION_IOCTSETENABLE    _IO(MOTION_IOC_MAGIC, 0)
#define MOTION_IOCTSETDIR	_IO(MOTION_IOC_MAGIC, 1)

#define MOTION_IOC_MAXNR 1

#define SERVO_LEFT 220
#define SERVO_RIGHT 380
#define SERVO_CENTER (SERVO_LEFT + (SERVO_RIGHT-SERVO_LEFT)/2)

#define SERVO_TEST


int main(void) {
	int motors, servo;

	motors = open("/dev/motors", O_WRONLY);
	if (motors < 1) {
		fprintf(stderr,"Can't open motors.\n");
		return -1;
	}

	servo = open("/dev/servo", O_WRONLY);
	if (servo < 1) {
		fprintf(stderr,"Can't open servo.\n");
		return -1;
	}


	unsigned int enable = 0;
	unsigned int leftDir = 0;
	unsigned int rightDir = 0;

	unsigned short leftSpeed = 0;
	unsigned short rightSpeed = 0;

	unsigned short servoPos = SERVO_CENTER;

	ioctl(motors, MOTION_IOCTSETENABLE, enable);
	write(motors, &leftSpeed, 4);
	write(servo, &servoPos, 2);

	printf("Starting left motor testing\n");
	enable = 1;
	leftDir=0;
	//write control
	ioctl(motors, MOTION_IOCTSETENABLE, enable);
	ioctl(motors, MOTION_IOCTSETDIR, ((leftDir&1)<<1) +(rightDir&1));

	printf("Direction %d\n", leftDir);

	for (int i=0; i<=0xFFFF; i++) {
		leftSpeed = i;
		//write leftspeed
		unsigned int speed = (leftSpeed<<16) + rightSpeed;
		write(motors, &speed, 4);
		usleep(100);
	}

	printf("Slowing down\n");

	for (int i=0xFFFF; i>=0; i--) {
			leftSpeed = i;
			//write leftspeed
			unsigned int speed = (leftSpeed<<16) + rightSpeed;
			write(motors, &speed, 4);
			usleep(100);
	}

	leftDir=1;
	//write control
	ioctl(motors, MOTION_IOCTSETDIR, ((leftDir&1)<<1) +(rightDir&1));

	printf("Direction %d\n", leftDir);

	for (int i=0; i<=0xFFFF; i++) {
			leftSpeed = i;
			//write leftspeed
			unsigned int speed = (leftSpeed<<16) + rightSpeed;
			write(motors, &speed, 4);
			usleep(100);
	}

	printf("Slowing down\n");

	for (int i=0xFFFF; i>=0; i--) {
			leftSpeed = i;
			//write leftspeed
			unsigned int speed = (leftSpeed<<16) + rightSpeed;
			write(motors, &speed, 4);
			usleep(100);
	}

	//stop motors
	leftDir = 0;

	printf("Starting right motor testing\n");

	rightDir=0;
	//write control
	ioctl(motors, MOTION_IOCTSETDIR, ((leftDir&1)<<1) +(rightDir&1));

	printf("Direction %d\n", rightDir);

	for (int i=0; i<=0xFFFF; i++) {
		rightSpeed = i;
		//write rightspeed
		unsigned int speed = (leftSpeed<<16) + rightSpeed;
		write(motors, &speed, 4);
		usleep(100);
	}

	printf("Slowing down\n");

	for (int i=0xFFFF; i>=0; i--) {
		rightSpeed = i;
		//write rightspeed
		unsigned int speed = (leftSpeed<<16) + rightSpeed;
		write(motors, &speed, 4);
		usleep(100);
	}

	rightDir=1;
	//write control
	ioctl(motors, MOTION_IOCTSETDIR, ((leftDir&1)<<1) +(rightDir&1));

	printf("Direction %d\n", rightDir);

	for (int i=0; i<=0xFFFF; i++) {
		rightSpeed = i;
		//write rightspeed
		unsigned int speed = (leftSpeed<<16) + rightSpeed;
		write(motors, &speed, 4);
		usleep(100);
	}

	printf("Slowing down\n");

	for (int i=0xFFFF; i>=0; i--) {
		rightSpeed = i;
		//write rightspeed
		unsigned int speed = (leftSpeed<<16) + rightSpeed;
		write(motors, &speed, 4);
		usleep(100);
	}

	//stop motors
	unsigned int speed = 0;
	write(motors, &speed, 4);
	usleep(100000);
	enable = 0;
	ioctl(motors, MOTION_IOCTSETENABLE, enable);


	enable = 1;
	ioctl(motors, MOTION_IOCTSETENABLE, enable);
	printf("Starting servo testing\n");

	printf("Centering servo %d\n", SERVO_CENTER);
	servoPos = SERVO_CENTER;
	write(servo, &servoPos, 2);
	usleep(10000);

	for (int reps =0; reps<10; reps++){
		for (int i= SERVO_LEFT; i<=SERVO_RIGHT; i++) {
			servoPos = i;
			write(servo, &servoPos, 2);
			usleep(10000);
		}
		for (int i= SERVO_RIGHT; i>=SERVO_LEFT; i--) {
			servoPos = i;
			write(servo, &servoPos, 2);
			usleep(10000);
		}
	}

	printf("Centering servo\n");
	servoPos = SERVO_CENTER;
	write(servo, &servoPos, 2);
	usleep(100000);

	ioctl(motors, MOTION_IOCTSETENABLE, 0);


	close(motors);
	close(servo);
	return 0;
}






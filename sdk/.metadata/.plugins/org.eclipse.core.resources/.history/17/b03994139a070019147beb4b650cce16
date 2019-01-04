#include <stdio.h>
#include <stdint.h>
#include <stdlib.h>
#include <poll.h>
#include <fcntl.h>
#include <errno.h>
#include <unistd.h>
#include <sys/mman.h>


#define CUSTOM_IP_MAP_SIZE                  0x10000
//#define CUSTOM_IP_BASEADDR	                0x40000000
#define CONTROL_REG_OFFSET   0
#define SERVO_REG_OFFSET   4
#define MOTOR_REG_OFFSET   8



int main(void) {
	int 		fd;
	void 		*ptr;

	fd = open("/dev/uio0", O_RDWR);
	if (fd < 1) {
		fprintf(stderr,"Invalid UIO device file.\n");
		return -1;
	}

	// mmap the UIO device
	ptr = mmap(NULL, CUSTOM_IP_MAP_SIZE, PROT_READ|PROT_WRITE, MAP_SHARED, fd, 0);

	unsigned int enable = 0;
	unsigned int leftDir = 0;
	unsigned int rightDir = 0;

	unsigned short leftSpeed = 0;
	unsigned short rightSpeed = 0;

	unsigned int servoPos = 0;



	//*((unsigned *)(ptr + CUSTOM_IP_S00_AXI_SLV_REG0_OFFSET)) = 0;

	*((unsigned *)(ptr + CONTROL_REG_OFFSET)) = (leftDir<<2) + (rightDir<<1) + enable;
	*((unsigned *)(ptr + SERVO_REG_OFFSET)) = 340;

	printf("Starting left motor testing\n");
	enable = 1;
	leftDir=0;
	*((unsigned *)(ptr + CONTROL_REG_OFFSET)) = (leftDir<<2) + (rightDir<<1) + enable;

	printf("Direction %d\n", leftDir);

	for (int i=0; i<=0xFFFF; i++) {
		leftSpeed = i;
		*((unsigned *)(ptr + MOTOR_REG_OFFSET)) = leftSpeed<<16;
		usleep(100);
	}

	printf("Slowing down\n");

	for (int i=0xFFFF; i>=0; i--) {
			leftSpeed = i;
			*((unsigned *)(ptr + MOTOR_REG_OFFSET)) = leftSpeed<<16;
			usleep(100);
	}

	leftDir=1;
	*((unsigned *)(ptr + CONTROL_REG_OFFSET)) = (leftDir<<2) + (rightDir<<1) + enable;

	printf("Direction %d\n", leftDir);

	for (int i=0; i<=0xFFFF; i++) {
			leftSpeed = i;
			*((unsigned *)(ptr + MOTOR_REG_OFFSET)) = leftSpeed<<16;
			usleep(100);
	}

	printf("Slowing down\n");

	for (int i=0xFFFF; i>=0; i--) {
			leftSpeed = i;
			*((unsigned *)(ptr + MOTOR_REG_OFFSET)) = leftSpeed<<16;
			usleep(100);
	}

	*((unsigned *)(ptr + MOTOR_REG_OFFSET)) = 0;
	leftDir = 0;

	printf("Starting right motor testing\n");

	rightDir=0;
	*((unsigned *)(ptr + CONTROL_REG_OFFSET)) = (leftDir<<2) + (rightDir<<1) + enable;

	printf("Direction %d\n", rightDir);

	for (int i=0; i<=0xFFFF; i++) {
		rightSpeed = i;
		*((unsigned *)(ptr + MOTOR_REG_OFFSET)) = rightSpeed;
		usleep(100);
	}

	printf("Slowing down\n");

	for (int i=0xFFFF; i>=0; i--) {
		rightSpeed = i;
		*((unsigned *)(ptr + MOTOR_REG_OFFSET)) = rightSpeed;
		usleep(100);
	}

	rightDir=1;
	*((unsigned *)(ptr + CONTROL_REG_OFFSET)) = (leftDir<<2) + (rightDir<<1) + enable;

	printf("Direction %d\n", rightDir);

	for (int i=0; i<=0xFFFF; i++) {
		rightSpeed = i;
		*((unsigned *)(ptr + MOTOR_REG_OFFSET)) = rightSpeed;
		usleep(100);
	}

	printf("Slowing down\n");

	for (int i=0xFFFF; i>=0; i--) {
		rightSpeed = i;
		*((unsigned *)(ptr + MOTOR_REG_OFFSET)) = rightSpeed;
		usleep(100);
	}

	*((unsigned *)(ptr + MOTOR_REG_OFFSET)) = 0;

	printf("Starting servo testing\n");

	printf("Centering servo\n");
	*((unsigned *)(ptr + SERVO_REG_OFFSET)) = 340;
	usleep(10000);

	for (int reps =0; reps<10; reps++){
		for (int i= 280; i<=400; i++) {
			servoPos = i;
			*((unsigned *)(ptr + SERVO_REG_OFFSET)) = servoPos;
			usleep(10000);
		}
		for (int i= 400; i>=280; i--) {
			servoPos = i;
			*((unsigned *)(ptr + SERVO_REG_OFFSET)) = servoPos;
			usleep(10000);
		}
	}

	printf("Centering servo\n");
	*((unsigned *)(ptr + SERVO_REG_OFFSET)) = 340;
	usleep(10000);

	*((unsigned *)(ptr + CONTROL_REG_OFFSET)) = 0;
	*((unsigned *)(ptr + MOTOR_REG_OFFSET)) = 0;


	munmap(ptr, CUSTOM_IP_MAP_SIZE);
	return 0;
}






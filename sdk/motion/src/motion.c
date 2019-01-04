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



int main(int argc, char *argv[]) {
	int 		fd;
	void 		*ptr;

	fd = open("/dev/uio0", O_RDWR);
	if (fd < 1) {
		fprintf(stderr,"Invalid UIO device file.\n");
		return -1;
	}

	// mmap the UIO device
	ptr = mmap(NULL, CUSTOM_IP_MAP_SIZE, PROT_READ|PROT_WRITE, MAP_SHARED, fd, 0);

	unsigned int enable = 1;
	unsigned int leftDir = 1;
	unsigned int rightDir = 1;

	unsigned short leftSpeed = 0;
	unsigned short rightSpeed = 0;


	//*((unsigned *)(ptr + CUSTOM_IP_S00_AXI_SLV_REG0_OFFSET)) = 0;

	*((unsigned *)(ptr + CONTROL_REG_OFFSET)) = (leftDir<<2) + (rightDir<<1) + enable;
	*((unsigned *)(ptr + SERVO_REG_OFFSET)) = 340;

	leftSpeed = strtoul(argv[1],NULL,0);
	int sleeptime = strtoul(argv[2],NULL,0);

	rightSpeed = leftSpeed;

	*((unsigned *)(ptr + MOTOR_REG_OFFSET)) = (leftSpeed<<16)+rightSpeed;
	usleep(sleeptime);

	*((unsigned *)(ptr + CONTROL_REG_OFFSET)) = 0;
	*((unsigned *)(ptr + MOTOR_REG_OFFSET)) = 0;


	munmap(ptr, CUSTOM_IP_MAP_SIZE);
	return 0;
}






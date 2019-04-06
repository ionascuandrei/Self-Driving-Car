#include <stdio.h>
#include <stdint.h>
#include <stdlib.h>
#include <poll.h>
#include <fcntl.h>
#include <errno.h>
#include <unistd.h>
#include <sys/mman.h>


#include <linux/ioctl.h>

#define MOTION_IOC_MAGIC  '9'

#define MOTION_IOCTSETENABLE    _IO(MOTION_IOC_MAGIC, 0)
#define MOTION_IOCTSETDIR	_IO(MOTION_IOC_MAGIC, 1)

#define MOTION_IOC_MAXNR 1

#define SERVO_LEFT 220
#define SERVO_RIGHT 380
#define SERVO_CENTER (SERVO_LEFT + (SERVO_RIGHT-SERVO_LEFT)/2)


#define CLK_FREQ 50000000.0f // FCLK0 frequency not found in xparameters.h
const double clk_to_cm=(((1000000.0f/CLK_FREQ)*2.54f)/147.0f);


int main(int argc, char *argv[]) {
	if (argc<2){
		printf("Usage: motion option: 0=motors, 1=steering\n");
		return 0;
	}

	int motors, servo, sonar;

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

	sonar = open("/dev/sonar", O_RDONLY);
	if(!sonar) {
		printf("Can't open sonar\n");
		return -1;
	}

	unsigned int clk_edges;
	double dist;

	unsigned int enable = 1;
	unsigned int leftDir = 1;
	unsigned int rightDir = 1;

	unsigned short leftSpeed = 0;
	unsigned short rightSpeed = 0;

	unsigned stopDist = 0;

	unsigned option = strtoul(argv[1],NULL,0); //0 for motors, 1 for steering
	ioctl(motors, MOTION_IOCTSETENABLE, enable);

	if (option==0){ // motion 0 dir speed time
		if (argc<5){
			printf("Usage:motion 0 dir speed time [stopdist]\n");
			printf("Speed is u16 [0, 65535]. Time is in us. Stopdist is in cm.\n");
		}else{
			leftDir = strtoul(argv[2],NULL,0);
			rightDir=leftDir;

			leftSpeed = strtoul(argv[3],NULL,0);
			rightSpeed = leftSpeed;

			unsigned int sleeptime = strtoul(argv[4],NULL,0);

			if(argv[5]!=NULL)
				stopDist = strtoul(argv[5], NULL, 0);


			unsigned int speed = (leftSpeed<<16)+rightSpeed;
			write(motors, &speed, 4);
			ioctl(motors, MOTION_IOCTSETDIR, ((leftDir&1)<<1)+(rightDir&1));

			for (int i=0; i<sleeptime/1000; i++) {
				read(sonar, &clk_edges, 4);
				dist = clk_edges * clk_to_cm;
				if (dist<stopDist)
					break;
				usleep(1000);
			}
			speed = 0;
			write(motors, &speed, 4);
		}
	} else if(option==1){ // motion 1 position
		if (argc<3){
			printf("Usage:motion 1 position\n");
			printf("Servo limits are [%d, %d]\n", SERVO_LEFT, SERVO_RIGHT);
		}else{
			unsigned newServo = strtoul(argv[2],NULL,0);
			if (newServo<SERVO_LEFT)
				newServo = SERVO_LEFT+5;
			else if(newServo > SERVO_RIGHT)
				newServo = SERVO_RIGHT-5;

			write(servo, &newServo, 2);
			usleep(100000);
			//*((unsigned *)(ptr + CONTROL_REG_OFFSET)) = 0;
			unsigned int speed = 0;
			write(motors, &speed, 4);
			}
	}

	close(motors);
	close(servo);
	close(sonar);
	return 0;
}






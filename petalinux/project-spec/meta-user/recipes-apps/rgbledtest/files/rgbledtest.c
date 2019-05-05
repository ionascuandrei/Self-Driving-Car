/**
 * This application can be used as a reference to the /dev/rgbled
 * device node API. Usage is:
 *
 * ./rgbledtest 0xXXBBGGRR
 * where XXBBGGRR is a 32bit value represented in HEX, like 00FF33CD
 *
 * ./rgbledtest B G R
 * where B, G and R are 8 bit values (between 0-255).
 *
 * B - blue LED duty cycle (0-0%, 255-100%)
 * G - green LED duty cycle (0-0%, 255-100%)
 * R - red LED duty cycle (0-0%, 255-100%)
 */
#include <stdio.h>
#include <unistd.h>
#include <stdlib.h>
#include <fcntl.h>

int main(int argc, char *argv[]) {
	if (argc < 2)
		printf("Usage: ./%s 0xXXBBGGRR\t or\t ./%s B G R\n", argv[0], argv[0]);

	unsigned int output = 0;

	if (argc == 2) {
		output = strtoul(argv[1], NULL, 16);
	} else if (argc == 4) {
		unsigned char r = 0, g = 0, b = 0;
		b = atoi(argv[1]);
		g = atoi(argv[2]);
		r = atoi(argv[3]);
		output = (b << 16) | (g << 8) | r;
	} else {
		printf("Invalid input. See usage.\n");
		return -1;
	}

	int fd = open("/dev/rgbled", O_WRONLY);
	if (fd < 0) {
		printf("Can't open /dev/rgbled\n");
		return -1;
	}

	write(fd, &output, 4);
	close(fd);
}

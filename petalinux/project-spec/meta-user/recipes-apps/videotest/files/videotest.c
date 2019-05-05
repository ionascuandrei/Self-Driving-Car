/**
 * This application can be used as a reference for the /dev/video and /dev/videoHLS
 * device nodes usage and API.
 * It uses all the available function calls supported (open, read, ioctl, close).
 * The program reads the image form the given video pipeline and saves it into a
 * .ppm image format (uncompressed image).
 *
 * Usage:
 * 	./videotest <device name> <output_image_name>
 * Where device name can be /dev/video or /dev/videoHLS
 */
#include <stdio.h>
#include <stdint.h>
#include <stdlib.h>
#include <poll.h>
#include <fcntl.h>
#include <errno.h>
#include <unistd.h>
#include <sys/mman.h>
#include <sys/ioctl.h>

#include <vdmadriver/linux/charvideo_ioctl.h>

int main(int argc, char *argv[]) {
	if (argc < 3) {
		printf("Usage ./%s /dev/videoX out_name\n", argv[0]);
		return -1;
	}

	int fd;
	fd = open(argv[1], O_RDONLY);
	if (fd < 0) {
		printf("Can't open %s\n", argv[1]);
		return -1;
	}

	//Print the VDMA's status to kernel log
	ioctl(fd, CHARVIDEO_IOCSTATUS);

	//Get the image sizes from the video driver
	int h, w, l;
	h = ioctl(fd, CHARVIDEO_IOCQHEIGHT);
	w = ioctl(fd, CHARVIDEO_IOCQWIDTH);
	l = ioctl(fd, CHARVIDEO_IOCQPIXELLEN);

	unsigned char buf[h * w * l];
	read(fd, buf, w * h * l);
	close(fd);

	char filename[100];
	sprintf(filename, "/home/root/%s.ppm", argv[2]);
	FILE *outimg = fopen(filename, "wt");

	//if the pixel length is only 1 byte, then the image is grayscale (ppm format 5)
	if (l == 1)
		fprintf(outimg, "P5\n%d %d\n%d\n", w, h, 255);
	else
		fprintf(outimg, "P6\n%d %d\n%d\n", w, h, 255);

	printf("Opened %s\n", filename);

	//The images are stored in the VDMAs in the BGR format so it must be
	//changed to RGB for human understandable images

	if (l != 1) { //BGR to RGB
		for (int i = 0; i < w * h * l; i += 3) {
			uint8_t aux = buf[i + 2];
			buf[i + 2] = buf[i];
			buf[i] = aux;
		}
	}

	fwrite(buf, 1, w * h * l, outimg);

	fclose(outimg);

	return 0;
}

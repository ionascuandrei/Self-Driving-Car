#include <stdio.h>
#include <unistd.h>
#include <string.h>
#include <fcntl.h>
#include <sys/mman.h>
#include <uiotools/uiotools.h>
#include <time.h>
#include "cameraiic.h"

#define CSI_2_RX_NAME "MIPI_CSI_2_RX"
#define D_PHY_RX_NAME "MIPI_D_PHY_RX"

#define MIPI_MAP_SIZE 0x10000
#define MIPI_PIPELINE_ENABLE 0x2
#define MIPI_PIPELINE_RESET 0x1


int main() {

    //Reset the MIPI video pipeline
	int fd;
	void *ptr;

	fd = findDeviceByName(CSI_2_RX_NAME);
	if (fd<0)
		return -1;
	ptr = mmap(NULL, MIPI_MAP_SIZE, PROT_READ|PROT_WRITE, MAP_SHARED, fd, 0);
	if(!ptr)
		return -1;
	*((unsigned *)(ptr)) = MIPI_PIPELINE_ENABLE;
	munmap(ptr, MIPI_MAP_SIZE);
	close(fd);

	fd = findDeviceByName(D_PHY_RX_NAME);
	if (fd<0)
		return -1;
	ptr = mmap(NULL, MIPI_MAP_SIZE, PROT_READ|PROT_WRITE, MAP_SHARED, fd, 0);
	if (!ptr)
		return -1;
	*((unsigned *)(ptr)) = MIPI_PIPELINE_ENABLE;
	munmap(ptr, MIPI_MAP_SIZE);
	close(fd);

	int camerafd=-1;
	camerafd = cameraInit();
	if (camerafd<0) {
		printf("Camera error!\n\n");
		return -1;
	}


	printf("Successfully setup the camera!\n");
	close(camerafd);
	return 0;
}

#include <stdio.h>
#include <stdint.h>
#include <stdlib.h>
#include <poll.h>
#include <fcntl.h>
#include <errno.h>
#include <unistd.h>
#include <sys/mman.h>


#define CUSTOM_IP_MAP_SIZE                  0x10000
#define CUSTOM_IP_BASEADDR	                0x40000000
#define CUSTOM_IP_S00_AXI_SLV_REG0_OFFSET   0
#define CUSTOM_IP_S00_AXI_SLV_REG1_OFFSET   4

int main(void)
{
	int 		fd;
	void 		*ptr;
	int n = 0;

	fd = open("/dev/uio1", O_RDWR);
	if (fd < 1) {
		fprintf(stderr,"Invalid UIO device file.\n");
		return -1;
	}

	// mmap the UIO device
	ptr = mmap(NULL, CUSTOM_IP_MAP_SIZE, PROT_READ|PROT_WRITE, MAP_SHARED, fd, 0);


	// Clear LED
	fprintf(stdout,"\nClear LEDs\n");
	*((unsigned *)(ptr + CUSTOM_IP_S00_AXI_SLV_REG0_OFFSET)) = n;




	while (1) {
		*((unsigned *)(ptr + CUSTOM_IP_S00_AXI_SLV_REG0_OFFSET)) = n;
		n++;
		usleep(200000);
		if (n>15)
			n = 0;

		int button = *((unsigned *)(ptr + CUSTOM_IP_S00_AXI_SLV_REG1_OFFSET));
		printf("Button value is %d.\n", button);

		}

	// Unmap the address range
	munmap(ptr, CUSTOM_IP_MAP_SIZE);
	return 0;

}

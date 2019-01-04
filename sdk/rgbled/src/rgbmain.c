#include <stdio.h>
#include <stdint.h>
#include <stdlib.h>
#include <poll.h>
#include <fcntl.h>
#include <errno.h>
#include <unistd.h>
#include <sys/mman.h>


#define CUSTOM_IP_MAP_SIZE                  0x10000
#define CUSTOM_IP_BASEADDR	                0x43c10000
#define CUSTOM_IP_S00_AXI_SLV_REG0_OFFSET   0

int main(void)
{
	int 		fd;
	void 		*ptr;
	unsigned int r=0, g=0, b=0;

	fd = open("/dev/uio2", O_RDWR);
	if (fd < 1) {
		fprintf(stderr,"Invalid UIO device file.\n");
		return -1;
	}

	// mmap the UIO device
	ptr = mmap(NULL, CUSTOM_IP_MAP_SIZE, PROT_READ|PROT_WRITE, MAP_SHARED, fd, 0);


	// Clear LED
	fprintf(stdout,"\nClear LEDs\n");
	*((unsigned *)(ptr + CUSTOM_IP_S00_AXI_SLV_REG0_OFFSET)) = 0;




	while (1) {
		printf("Enter r g b values:");
		scanf("%u %u %u", &r, &g, &b);
		printf("\n");
		*((unsigned *)(ptr + CUSTOM_IP_S00_AXI_SLV_REG0_OFFSET)) = (b<<16)+(g<<8)+r;

		if(r+g+b==0)
			break;

		}

	// Unmap the address range
	munmap(ptr, CUSTOM_IP_MAP_SIZE);
	return 0;

}

#include <stdio.h>
#include <stdint.h>
#include <stdlib.h>
#include <poll.h>
#include <fcntl.h>
#include <errno.h>
#include <unistd.h>
#include <sys/mman.h>


#define CUSTOM_IP_MAP_SIZE                  0x1000
//#define CUSTOM_IP_BASEADDR	                0x40000000
#define CUSTOM_IP_S00_AXI_SLV_REG0_OFFSET   0
#define CUSTOM_IP_S00_AXI_SLV_REG1_OFFSET   4


#define CLK_FREQ 50000000 // FCLK0 frequency not found in xparameters.h
#define adj 10000000/CLK_FREQ/147



int main(void) {
	int 		fd;
	void 		*ptr;

	fd = open("/dev/uio1", O_RDWR);
	if (fd < 1) {
		fprintf(stderr,"Invalid UIO device file.\n");
		return -1;
	}

	// mmap the UIO device
	ptr = mmap(NULL, CUSTOM_IP_MAP_SIZE, PROT_READ|PROT_WRITE, MAP_SHARED, fd, 0);
	printf("Mapped mem.\n");
	while (1) {
		unsigned long dist;
		unsigned long clk_edges = (unsigned long)*((unsigned *)(ptr + CUSTOM_IP_S00_AXI_SLV_REG1_OFFSET));
		//printf("clk_count: %lu  ", clk_edges);
		unsigned int dist_10x =  (unsigned int)(clk_edges * adj);
		//printf("dist_10x: %u  ", dist_10x);
		dist = (unsigned int)((dist_10x + 5) / 10);

		printf("dist (cm) = %4g\n", (float)dist*2.54f);
		usleep(100000);
   }

	munmap(ptr, CUSTOM_IP_MAP_SIZE);
	return 0;
}





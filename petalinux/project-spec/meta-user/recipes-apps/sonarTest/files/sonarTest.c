#include <stdio.h>
#include <stdint.h>
#include <stdlib.h>
#include <poll.h>
#include <fcntl.h>
#include <errno.h>
#include <unistd.h>
#include <sys/mman.h>


#define CLK_FREQ 50000000.0f // FCLK0 frequency not found in xparameters.h


//147us is 2.54 cm
//CLK_usPeriod is (CLK_usPERIOD*2.54)/147

const double clk_to_cm=(((1000000.0f/CLK_FREQ)*2.54f)/147.0f);



int main(void) {
	int 		fd;

	fd = open("/dev/sonar", O_RDONLY);
	if(!fd) {
		printf("Can't open sonar\n");
		return -1;
	}
	printf("const %g\n", clk_to_cm);

	unsigned int clk_edges;
	double dist;

	while (1) {


		read(fd, &clk_edges, 4);

		dist = clk_edges * clk_to_cm;


		printf("%x, dist (cm) = %g\n", clk_edges, dist);
		usleep(100000);
   }

	return 0;
}






#include "uiotools.h"


int findDeviceByName(char* name){
	FILE* fd;
	int id=0;
	while (1) {
		//printf("id is %d\n", id);
		char uiopath[100];
		sprintf(uiopath, "/sys/class/uio/uio%d/name", id);
		//printf("file opened is #%s#\n", uiopath);

		fd = fopen(uiopath, "rt");
		if (fd == NULL) {
				return -1;
			}
		char devname[strlen(name)+1];
		fgets(devname, strlen(name)+1, fd);
		//printf("/sys/class name is #%s#\n", devname);

		if (strcasecmp(devname, name) == 0) {
			sprintf(uiopath, "/dev/uio%d", id);
			//printf("match: #%s#\n", uiopath);
			return open(uiopath, O_RDWR);
		}

		id++;
	}

	return -1;
}


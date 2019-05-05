#include "uiotools.h"

/**
* Tries to find a UIO device that matches the name
*/
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
			fclose(fd);
			return open(uiopath, O_RDWR);
		}

		id++;
	}

	return -1;
}

/**
* Tries to find a UIO device that matches the name and is
* physically mapped to the givven memory address
*/
int findDeviceByNameAndAddr(char *name, unsigned int addr) {
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
		fclose(fd);
		//printf("/sys/class name is #%s#\n", devname);

		if (strcasecmp(devname, name) == 0) {	
			char addrpath[100];
			unsigned int address;
			sprintf(addrpath, "/sys/class/uio/uio%d/maps/map0/addr", id);
			FILE *addrfd = fopen(addrpath, "rt");
			if (addrfd == NULL)
				return -1;

			fscanf(addrfd, "0x%08X", &address);
			fclose(addrfd);

			if(address==addr) {
				sprintf(uiopath, "/dev/uio%d", id);
				return open(uiopath, O_RDWR);
			}
			
		}
		id++;
	}

	return -1;
}

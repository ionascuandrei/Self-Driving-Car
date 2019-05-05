#include <stdio.h>
#include <string.h>
#include <fcntl.h>

// @returns - file descriptor or -1
int findDeviceByName(char* name);
int findDeviceByNameAndAddr(char *name, unsigned int addr);
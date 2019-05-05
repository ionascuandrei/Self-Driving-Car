SUMMARY = "Recipe for  build an external vdmadriver Linux kernel module"
SECTION = "PETALINUX/modules"
LICENSE = "GPLv2"
LIC_FILES_CHKSUM = "file://COPYING;md5=12f884d2ae1ff87c09e5b7ccc2c4ca7e"

inherit module

SRC_URI = "file://Makefile \
           file://vdmadriver.c \
           file://vdmadriver.h \
           file://vdma.h \
           file://charvideodev.h \
           file://charvideo_ioctl.h \
	   file://COPYING \
          "

S = "${WORKDIR}"

# The inherit of module.bbclass will automatically name module packages with
# "kernel-module-" prefix as required by the oe-core build environment.

do_install_append() {
	install -d ${D}/usr/include/vdmadriver/linux/
	install -m 0755 ${S}/charvideo_ioctl.h ${D}/usr/include/vdmadriver/linux/
}


FILES_${PN}-dev = "/usr/include/vdmadriver/*"

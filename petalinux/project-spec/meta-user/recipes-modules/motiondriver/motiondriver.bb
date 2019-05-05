SUMMARY = "Recipe for  build an external motiondriver Linux kernel module"
SECTION = "PETALINUX/modules"
LICENSE = "GPLv2"
LIC_FILES_CHKSUM = "file://COPYING;md5=12f884d2ae1ff87c09e5b7ccc2c4ca7e"

inherit module

SRC_URI = "file://Makefile \
           file://motiondriver.c \
           file://motiondriver.h \
           file://motors.h \
           file://servo.h \
           file://motion_ioctl.h \
	   file://COPYING \
          "

S = "${WORKDIR}"

# The inherit of module.bbclass will automatically name module packages with
# "kernel-module-" prefix as required by the oe-core build environment.


do_install_append() {
	install -d ${D}/usr/include/motiondriver/linux/
	install -m 0755 ${S}/motion_ioctl.h ${D}/usr/include/motiondriver/linux/
}


FILES_${PN}-dev = "/usr/include/motiondriver/*"

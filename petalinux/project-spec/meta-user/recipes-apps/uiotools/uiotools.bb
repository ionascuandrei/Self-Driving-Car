#
# This file is the uiotools recipe.
#
  
SUMMARY = "Simple uiotools application"
SECTION = "libs"
LICENSE = "MIT"
LIC_FILES_CHKSUM = "file://${COMMON_LICENSE_DIR}/MIT;md5=0835ade698e0bcf8506ecda2f7b4f302"
  
FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
  
SRC_URI = " \
	file://uiotools.c \
	file://uiotools.h \
	file://Makefile \
	"
  
S = "${WORKDIR}"
  
PACKAGE_ARCH = "${MACHINE_ARCH}"
PROVIDES = "uiotools"
TARGET_CC_ARCH += "${LDFLAGS}"
  
do_install() {
	install -d ${D}${libdir}
	install -d ${D}${includedir}
	oe_libinstall -so libuiotools ${D}${libdir}
	# This is optional and depends if you have any headers to copied along with libraries
	# This example includes uiotools.h to to copied to <TARGET_ROOTFS>/usr/lib/uiotools/uiotools.h
	install -d -m 0655 ${D}${includedir}/uiotools
	install -m 0644 ${S}/*.h ${D}${includedir}/uiotools/
}
  
FILES_${PN} = "${libdir}/*.so.* ${includedir}/*"
FILES_${PN}-dev = "${libdir}/*.so"

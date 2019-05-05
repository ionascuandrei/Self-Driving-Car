#
# This file is the motion recipe.
#

SUMMARY = "Simple motion application"
SECTION = "PETALINUX/apps"
LICENSE = "MIT"
LIC_FILES_CHKSUM = "file://${COMMON_LICENSE_DIR}/MIT;md5=0835ade698e0bcf8506ecda2f7b4f302"

SRC_URI = "file://motion.c \
	   file://Makefile \
		  "

S = "${WORKDIR}"

DEPENDS += " uiotools"
DEPENDS += "motiondriver"

do_compile() {
	     oe_runmake
}

do_install() {
	     install -d ${D}${bindir}
	     install -m 0755 motion ${D}${bindir}
}

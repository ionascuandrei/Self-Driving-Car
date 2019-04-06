#
# This file is the sonarTest recipe.
#

SUMMARY = "Simple sonarTest application"
SECTION = "PETALINUX/apps"
LICENSE = "MIT"
LIC_FILES_CHKSUM = "file://${COMMON_LICENSE_DIR}/MIT;md5=0835ade698e0bcf8506ecda2f7b4f302"

#FILESEXTRAPATHS_prepend := "${THISDIR}/files:"

SRC_URI = "file://sonarTest.c \
	   file://Makefile \
		  "

S = "${WORKDIR}"

DEPENDS += " uiotools"

do_compile() {
	     oe_runmake
}

do_install() {
	     install -d ${D}${bindir}
	     install -m 0755 sonarTest ${D}${bindir}
}

#FILES_${PN} += "sonarTest"

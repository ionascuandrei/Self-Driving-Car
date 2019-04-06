#
# This file is the rfidtest recipe.
#

SUMMARY = "Simple rfidtest application"
SECTION = "PETALINUX/apps"
LICENSE = "MIT"
LIC_FILES_CHKSUM = "file://${COMMON_LICENSE_DIR}/MIT;md5=0835ade698e0bcf8506ecda2f7b4f302"

SRC_URI = "file://rfidtest.c \
	   file://PN532_rfid.h \
	   file://cardQueue.h \
	   file://cards.h \
	   file://Makefile \
		  "

S = "${WORKDIR}"

do_compile() {
	     oe_runmake
}

do_install() {
	     install -d ${D}${bindir}
	     install -m 0755 rfidtest ${D}${bindir}
}

#
# This file is the stop-xml recipe.
#

SUMMARY = "Simple stop-xml application"
SECTION = "PETALINUX/apps"
LICENSE = "MIT"
LIC_FILES_CHKSUM = "file://${COMMON_LICENSE_DIR}/MIT;md5=0835ade698e0bcf8506ecda2f7b4f302"

SRC_URI = "file://stop.xml \
	"

S = "${WORKDIR}"

do_install() {
	     install -d ${D}/home/root
	     install -m 0755 ${S}/stop.xml ${D}/home/root
}

FILES_${PN} += "/home/root/stop.xml"

#
# This file is the mjpg-streamer recipe.
#

SUMMARY = "Simple mjpg-streamer application"
SECTION = "PETALINUX/apps"
LICENSE = "MIT"
LIC_FILES_CHKSUM = "file://${COMMON_LICENSE_DIR}/MIT;md5=0835ade698e0bcf8506ecda2f7b4f302"

SRC_URI = "file://mjpg-streamer \
	   file://input_file.so \
	   file://output_http.so \
	   file://stream-start \
	   file://stream-end \
		  "

S = "${WORKDIR}"

do_install() {
	     install -d ${D}${bindir}
	     install -m 0755 mjpg-streamer ${D}${bindir}
	     install -m 0755 stream-start ${D}${bindir}
	     install -m 0755 stream-end ${D}${bindir}
     	     install -d ${D}${bindir}/mjpg-modules
	     install -m 0755 output_http.so ${D}${bindir}/mjpg-modules
	     install -m 0755 input_file.so ${D}${bindir}/mjpg-modules
}

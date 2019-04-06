#
# This file is the init-camera-sh recipe.
#

SUMMARY = "Simple init-camera-boot application"
SECTION = "PETALINUX/apps"
LICENSE = "MIT"
LIC_FILES_CHKSUM = "file://${COMMON_LICENSE_DIR}/MIT;md5=0835ade698e0bcf8506ecda2f7b4f302"

SRC_URI = "file://init-camera.sh \
	"

S = "${WORKDIR}"

inherit update-rc.d

INITSCRIPT_NAME = "init-camera.sh"
INITSCRIPT_PARAMS = "start 99 S ."

do_install() {
	install -d ${D}${sysconfdir}/init.d
	install -m 0755 ${S}/init-camera.sh ${D}${sysconfdir}/init.d/init-camera.sh
}

#
# This file is the init-wpa-supplicant-conf recipe.
#

SUMMARY = "Simple init-wpa-supplicant-conf application"
SECTION = "PETALINUX/apps"
LICENSE = "MIT"
LIC_FILES_CHKSUM = "file://${COMMON_LICENSE_DIR}/MIT;md5=0835ade698e0bcf8506ecda2f7b4f302"

SRC_URI = "file://wpa_supplicant_AP92EF.conf \
	"

S = "${WORKDIR}"

do_install() {
	     install -d ${D}/${sysconfdir}
	     install -m 0755 ${S}/wpa_supplicant_AP92EF.conf ${D}/${sysconfdir}
}

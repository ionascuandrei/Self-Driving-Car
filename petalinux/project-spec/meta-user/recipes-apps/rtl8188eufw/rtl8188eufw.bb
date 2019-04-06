#
# This file is the rtl8188eufw recipe.
#

SUMMARY = "Adds the .bin firmware for the Realtek rtl8188eu USB WiFi dongle."
SECTION = "PETALINUX/apps"
LICENSE = "MIT"
LIC_FILES_CHKSUM = "file://${COMMON_LICENSE_DIR}/MIT;md5=0835ade698e0bcf8506ecda2f7b4f302"

SRC_URI = "file://rtl8188eufw.bin \
	"

FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
S = "${WORKDIR}"


do_install_append() {
	install -d ${D}/lib/firmware/rtlwifi/
	install -m 0644 ${S}/rtl8188eufw.bin ${D}/lib/firmware/rtlwifi/rtl8188eufw.bin
}

FILES_${PN} += "/lib/*"

SUMMARY = "8188eu USB Wi-FI Dongle driver"
SECTION = "PETALINUX/modules"
LICENSE = "GPLv2"
LIC_FILES_CHKSUM = "file://COPYING;md5=12f884d2ae1ff87c09e5b7ccc2c4ca7e"

inherit module

SRC_URI = "file://Makefile \
           file://wn722n.tar.gz \
	   file://COPYING \
          "

S = "${WORKDIR}"

KERNEL_MODULE_AUTOLOAD += "8188eu.ko"

# The inherit of module.bbclass will automatically name module packages with
# "kernel-module-" prefix as required by the oe-core build environment.

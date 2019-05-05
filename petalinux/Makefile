LOCAL_USERNAME = SET_THIS_TO_YOUR_USERNAME

BOOT_PARTITION = /media/$(LOCAL_USERNAME)/BOOT
ROOTFS_PARTITION = /media/$(LOCAL_USERNAME)/rootfs
SSH_IP = SET_THIS_TO_ZYBO_IP

PETALINUX_APPS = \
	rfidtest \
	initcamera \
	sonarTest \
	motionselftest \
	motion \
	opencv-control \

PETALINUX_MODULES = \
	vdmadriver \
	hlsvdmadriver \
	motiondriver \
	sonardriver \
	rgbleddriver \

build: hardware-change

deploy: package deploy-kernel deploy-rootfs

package:
	petalinux-package --boot --format BIN --fsbl ./images/linux/zynq_fsbl.elf --fpga ./images/linux/design_1_wrapper.bit --u-boot --force

deploy-kernel:./images/linux/BOOT.BIN ./images/linux/image.ub
	ls $(BOOT_PARTITION)
	rm -f $(BOOT_PARTITION)/BOOT.BIN $(BOOT_PARTITION)/image.ub
	cp ./images/linux/BOOT.BIN $(BOOT_PARTITION)
	cp ./images/linux/image.ub $(BOOT_PARTITION)

deploy-rootfs:
	sudo -v
	ls $(ROOTFS_PARTITION)
	sudo rm -rf $(ROOTFS_PARTITION)/*
	sudo cp ./images/linux/rootfs.cpio $(ROOTFS_PARTITION)
	cd $(ROOTFS_PARTITION); \
	sudo pax -rvf rootfs.cpio &>/dev/null

unmount:
	sync
	umount $(BOOT_PARTITION)
	umount $(ROOTFS_PARTITION)
	sync


hardware-change:
	petalinux-config --get-hw-description=../sdk/ --oldconfig
	petalinux-build

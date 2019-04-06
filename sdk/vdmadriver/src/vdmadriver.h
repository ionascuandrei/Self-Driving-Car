#ifndef VDMADRIVER_H_
#define VDMADRIVER_H_

struct vdmaDriver_local {
	int irq;
	unsigned long mem_start;
	unsigned long mem_end;
	void __iomem *base_addr;
	unsigned char *buffer_vaddr;
	dma_addr_t buffer_paddr;
	struct charvideo_dev *chardev;
	struct vdmaController *vdmactrl;
	struct module *this;
};

#endif

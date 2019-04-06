/*  vdmadriver.c - The simplest kernel module.

* Copyright (C) 2013 - 2016 Xilinx, Inc
*
*   This program is free software; you can redistribute it and/or modify
*   it under the terms of the GNU General Public License as published by
*   the Free Software Foundation; either version 2 of the License, or
*   (at your option) any later version.

*   This program is distributed in the hope that it will be useful,
*   but WITHOUT ANY WARRANTY; without even the implied warranty of
*   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
*   GNU General Public License for more details.
*
*   You should have received a copy of the GNU General Public License along
*   with this program. If not, see <http://www.gnu.org/licenses/>.

*/
#include <linux/kernel.h>
#include <linux/init.h>
#include <linux/module.h>
#include <linux/slab.h>
#include <linux/io.h>
#include <linux/interrupt.h>

#include <linux/fs.h> 	     /* file stuff */
#include <linux/errno.h>     /* error codes */
#include <linux/cdev.h>      /* char device stuff */
#include <asm/uaccess.h>  /* copy_to_user() */

#include <linux/of_address.h>
#include <linux/of_device.h>
#include <linux/of_platform.h>
#include <linux/of_reserved_mem.h>
#include <linux/dma-mapping.h>
#include <linux/delay.h>


#include "vdmadriver.h"
#include "vdma.h"
#include "charvideodev.h"

#define CONFIG_OF
#define CONFIG_OF_RESERVED_MEM

/* Standard module information, edit as appropriate */
MODULE_LICENSE("GPL");
MODULE_AUTHOR
    ("Catabit");
MODULE_DESCRIPTION
    ("vdmadriver - loadable module that manages the vdma-camera pipeline and exposes a framebuffer via read()");

#define DRIVER_NAME "vdmadriver"
#define ALLOC_SIZE 64*1000*1000 //128mb



static irqreturn_t vdmaDriver_irq(int irq, void *lp)
{
	printk("vdmadriver interrupt\n");
	return IRQ_HANDLED;
}

static inline u32 dma_read(struct vdmaDriver_local *dev, u32 reg)
{
	return ioread32(dev->base_addr + reg);
}

static inline void dma_write(struct vdmaDriver_local *dev, u32 reg, u32 value)
{
	iowrite32(value, dev->base_addr + reg);
}


static int vdmaDriver_probe(struct platform_device *pdev)
{
	struct resource *r_irq; /* Interrupt resources */
	struct resource *r_mem; /* IO mem resources */
	struct device *dev = &pdev->dev;
	struct vdmaDriver_local *lp = NULL;

	int rc = 0;
	dev_info(dev, "Device Tree Probing\n");
	/* Get iospace for the device */
	r_mem = platform_get_resource(pdev, IORESOURCE_MEM, 0);
	if (!r_mem) {
		dev_err(dev, "invalid address\n");
		return -ENODEV;
	}
	lp = (struct vdmaDriver_local *) kmalloc(sizeof(struct vdmaDriver_local), GFP_KERNEL);
	if (!lp) {
		dev_err(dev, "Cound not allocate vdmadriver device\n");
		return -ENOMEM;
	}
	lp->this = THIS_MODULE;
	dev_set_drvdata(dev, lp);
	lp->mem_start = r_mem->start;
	lp->mem_end = r_mem->end;

	if (!request_mem_region(lp->mem_start,
				lp->mem_end - lp->mem_start + 1,
				DRIVER_NAME)) {
		dev_err(dev, "Couldn't lock memory region at %p\n",
			(void *)lp->mem_start);
		rc = -EBUSY;
		goto error1;
	}

	lp->base_addr = ioremap(lp->mem_start, lp->mem_end - lp->mem_start + 1);
	if (!lp->base_addr) {
		dev_err(dev, "vdmadriver: Could not allocate iomem\n");
		rc = -EIO;
		goto error2;
	}

	rc = of_reserved_mem_device_init(dev);
	if(rc) {
		dev_err(dev, "Could not get reserved memory\n");
		goto error2;
	}

	/* Allocate memory */
	dev_info(dev, "Trying to get coherent memory\n");
	dma_set_coherent_mask(dev, 0xFFFFFFFF);
	lp->buffer_vaddr = dma_alloc_coherent(dev, ALLOC_SIZE, &lp->buffer_paddr, GFP_KERNEL);
	if(!lp->buffer_vaddr){
		dev_err(dev, "Could not get coherent memory\n");
		goto error2;
	}

	dev_info(dev, "Allocated coherent memory, virtual: 0x%0lX, physical: 0x%0lX\n", (u32)lp->buffer_vaddr, lp->buffer_paddr);


	lp->chardev = charvideo_alloc(lp);
	if (!lp->chardev){
		dev_err(dev, "vdmadriver: Could not allocate chardev\n");
		rc = -EIO;
		goto error3;
	}

	printk(KERN_NOTICE "charvideo init with major %d\n", lp->chardev->dev_major);

	lp->vdmactrl = initVdmaController(lp);
	if (!lp->vdmactrl){
		dev_err(dev, "vdmadriver: Could not allocate vdmactrl\n");
		rc = -EIO;
		goto error3;
	}

	/* Get IRQ for the device */
	r_irq = platform_get_resource(pdev, IORESOURCE_IRQ, 0);

	if(r_irq){
		lp->irq = r_irq->start;
		rc = request_irq(lp->irq, &vdmaDriver_irq, 0, DRIVER_NAME, lp);
		if (rc) {
			dev_err(dev, "vdmadriver: Could not allocate interrupt %d.\n",lp->irq);
			goto error4;
		}
	}

	if(vdma_setup(lp->vdmactrl)<0){
		dev_err(dev, "vdmadriver: Could not setup vdmactrl.\n");
		goto error4;
	}

	dev_info(dev,"vdmadriver at 0x%08x mapped to 0x%08x, irq=%d\n",
			(unsigned int __force)lp->mem_start,
			(unsigned int __force)lp->base_addr,
			lp->irq);

	vdma_s2mm_status_dump(lp->vdmactrl);
	vdma_start_triple_buffering(lp->vdmactrl);
	vdma_s2mm_status_dump(lp->vdmactrl);

	return 0;

error4:
	free_irq(lp->irq, lp);
	if (lp->vdmactrl) kfree(lp->vdmactrl); // TODO : add cleanup
error3:
	dma_free_coherent(dev, ALLOC_SIZE, lp->buffer_vaddr, lp->buffer_paddr);
error2:
	release_mem_region(lp->mem_start, lp->mem_end - lp->mem_start + 1);
error1:
	kfree(lp);
	dev_set_drvdata(dev, NULL);
	return rc;
}

static int vdmaDriver_remove(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct vdmaDriver_local *lp = dev_get_drvdata(dev);
	dma_free_coherent(dev, ALLOC_SIZE, lp->buffer_vaddr, lp->buffer_paddr);
	free_irq(lp->irq, lp);
	release_mem_region(lp->mem_start, lp->mem_end - lp->mem_start + 1);
	if(lp->chardev) charvideo_delete(lp->chardev);
	kfree(lp);
	dev_set_drvdata(dev, NULL);
	return 0;
}

#ifdef CONFIG_OF
static struct of_device_id vdmaDriver_of_match[] = {
	{ .compatible = "ctbt,vdmadriver", },
	{ /* end of list */ },
};
MODULE_DEVICE_TABLE(of, vdmaDriver_of_match);
#else
# define vdmaDriver_of_match
#endif


static struct platform_driver vdmaDriver_driver = {
	.driver = {
		.name = DRIVER_NAME,
		.owner = THIS_MODULE,
		.of_match_table	= vdmaDriver_of_match,
	},
	.probe		= vdmaDriver_probe,
	.remove		= vdmaDriver_remove,
};

static int __init vdmaDriver_init(void)
{
	printk("<1>Hello module world.\n");

	return platform_driver_register(&vdmaDriver_driver);
}


static void __exit vdmaDriver_exit(void)
{
	platform_driver_unregister(&vdmaDriver_driver);
	printk(KERN_ALERT "Goodbye module world.\n");
}


module_init(vdmaDriver_init);
module_exit(vdmaDriver_exit);

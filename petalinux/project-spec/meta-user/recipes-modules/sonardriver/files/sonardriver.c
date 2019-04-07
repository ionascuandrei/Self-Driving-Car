/*  sonardriver.c - The simplest kernel module.

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

#include "sonardriver.h"
#include "sonar.h"

#define CONFIG_OF
#define CONFIG_OF_RESERVED_MEM

/* Standard module information, edit as appropriate */
MODULE_LICENSE("GPL");
MODULE_AUTHOR
    ("Catabit");
MODULE_DESCRIPTION
    ("sonar - loadable module that manages the sonar via /dev/sonar and allows reads");

#define DRIVER_NAME "sonardriver"


static int sonardriver_probe(struct platform_device *pdev)
{
	struct resource *r_mem; /* IO mem resources */
	struct device *dev = &pdev->dev;
	struct sonardriver_local *lp = NULL;

	int rc = 0;
	dev_info(dev, "Device Tree Probing\n");
	/* Get iospace for the device */
	r_mem = platform_get_resource(pdev, IORESOURCE_MEM, 0);
	if (!r_mem) {
		dev_err(dev, "invalid address\n");
		return -ENODEV;
	}
	lp = (struct sonardriver_local *) kmalloc(sizeof(struct sonardriver_local), GFP_KERNEL);
	if (!lp) {
		dev_err(dev, "Cound not allocate sonardriver device\n");
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
		dev_err(dev, "sonardriver: Could not allocate iomem\n");
		rc = -EIO;
		goto error2;
	}

	//init subdevices

	lp->sonar = sonar_alloc(lp);
	if (!lp->sonar){
		dev_err(dev, "sonardriver: Could not allocate sonar\n");
		rc = -EIO;
		goto error2;
	}

	printk(KERN_NOTICE "Sonar init with major %d\n", lp->sonar->dev_major);


	dev_info(dev,"sonardriver at 0x%08x mapped to 0x%08x",
			(unsigned int __force)lp->mem_start,
			(unsigned int __force)lp->base_addr);

	return 0;


error2:
	release_mem_region(lp->mem_start, lp->mem_end - lp->mem_start + 1);
error1:
	kfree(lp);
	dev_set_drvdata(dev, NULL);
	return rc;
}

static int sonardriver_remove(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct sonardriver_local *lp = dev_get_drvdata(dev);
	release_mem_region(lp->mem_start, lp->mem_end - lp->mem_start + 1);

	//release subdevices
	if(lp->sonar) sonar_delete(lp->sonar);
	kfree(lp);
	dev_set_drvdata(dev, NULL);
	return 0;
}

#ifdef CONFIG_OF
static struct of_device_id sonardriver_of_match[] = {
	{ .compatible = "ctbt,sonardriver", },
	{ /* end of list */ },
};
MODULE_DEVICE_TABLE(of, sonardriver_of_match);
#else
# define sonardriver_of_match
#endif


static struct platform_driver sonardriver = {
	.driver = {
		.name = DRIVER_NAME,
		.owner = THIS_MODULE,
		.of_match_table	= sonardriver_of_match,
	},
	.probe		= sonardriver_probe,
	.remove		= sonardriver_remove,
};

static int __init sonardriver_init(void)
{
	printk("<sonardriver> Hello module world.\n");

	return platform_driver_register(&sonardriver);
}


static void __exit sonardriver_exit(void)
{
	platform_driver_unregister(&sonardriver);
	printk(KERN_ALERT "<sonardriver> Goodbye module world.\n");
}


module_init(sonardriver_init);
module_exit(sonardriver_exit);

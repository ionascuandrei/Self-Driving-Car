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

#include "motiondriver.h"
#include "motors.h"
#include "servo.h"

#define CONFIG_OF
#define CONFIG_OF_RESERVED_MEM

/* Standard module information, edit as appropriate */
MODULE_LICENSE("GPL");
MODULE_AUTHOR
    ("Catabit");
MODULE_DESCRIPTION
    ("motiondriver - loadable module that manages the motion hardware via /dev/motors and /dev/servo nodes");

#define DRIVER_NAME "motiondriver"


static int motiondriver_probe(struct platform_device *pdev)
{
	struct resource *r_mem; /* IO mem resources */
	struct device *dev = &pdev->dev;
	struct motiondriver_local *lp = NULL;

	int rc = 0;
	dev_info(dev, "Device Tree Probing\n");
	/* Get iospace for the device */
	r_mem = platform_get_resource(pdev, IORESOURCE_MEM, 0);
	if (!r_mem) {
		dev_err(dev, "invalid address\n");
		return -ENODEV;
	}
	lp = (struct motiondriver_local *) kmalloc(sizeof(struct motiondriver_local), GFP_KERNEL);
	if (!lp) {
		dev_err(dev, "Cound not allocate motiondriver device\n");
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
		dev_err(dev, "motiondriver: Could not allocate iomem\n");
		rc = -EIO;
		goto error2;
	}


	//init subdevices

	lp->motors = motors_alloc(lp);
	if (!lp->motors){
		dev_err(dev, "motiondriver: Could not allocate motors\n");
		rc = -EIO;
		goto error2;
	}

	lp->servo = servo_alloc(lp);
	if (!lp->servo){
		dev_err(dev, "motiondriver: Could not allocate servo\n");
		rc = -EIO;

		motors_delete(lp->motors);
		goto error2;
	}

	printk(KERN_NOTICE "Motors init with major %d\n", lp->motors->dev_major);
	printk(KERN_NOTICE "Servo init with major %d\n", lp->servo->dev_major);


	dev_info(dev,"motiondriver at 0x%08x mapped to 0x%08x",
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

static int motiondriver_remove(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct motiondriver_local *lp = dev_get_drvdata(dev);
	release_mem_region(lp->mem_start, lp->mem_end - lp->mem_start + 1);

	//release subdevices
	if(lp->motors) motors_delete(lp->motors);
	if(lp->servo) servo_delete(lp->servo);
	kfree(lp);
	dev_set_drvdata(dev, NULL);
	return 0;
}

#ifdef CONFIG_OF
static struct of_device_id motiondriver_of_match[] = {
	{ .compatible = "ctbt,motiondriver", },
	{ /* end of list */ },
};
MODULE_DEVICE_TABLE(of, motiondriver_of_match);
#else
# define motiondriver_of_match
#endif


static struct platform_driver motiondriver = {
	.driver = {
		.name = DRIVER_NAME,
		.owner = THIS_MODULE,
		.of_match_table	= motiondriver_of_match,
	},
	.probe		= motiondriver_probe,
	.remove		= motiondriver_remove,
};

static int __init motiondriver_init(void)
{
	printk("<motiondriver> Hello module world.\n");

	return platform_driver_register(&motiondriver);
}


static void __exit motiondriver_exit(void)
{
	platform_driver_unregister(&motiondriver);
	printk(KERN_ALERT "<motiondriver> Goodbye module world.\n");
}


module_init(motiondriver_init);
module_exit(motiondriver_exit);

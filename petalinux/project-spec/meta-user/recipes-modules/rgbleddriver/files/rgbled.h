#ifndef RGBLED_H_
#define RGBLED_H_

#include "rgbleddriver.h"

struct rgbled_dev {
	int dev_major;
	struct rgbleddriver_local *lp;
	struct cdev cdev;
	struct class *class;
	struct device *node;
};

/**
 * Manges open calls on new files
 */
int rgbled_open(struct inode *in, struct file *fp)
{
	struct rgbled_dev *dev;
	//printk(KERN_NOTICE "Opened a file\n");

	dev = container_of(in->i_cdev, struct rgbled_dev, cdev);
	fp->private_data = dev;

	return 0;
}

/**
 * Manages write calls to the files associated with this device node
 * Is used to set the 3 pwm duty cycles via a 24 bit integer
 * [31-24] unused
 * [23-16] red
 * [15-8] green
 * [7-0] blue
 */
ssize_t rgbled_write(struct file *filp, const char __user *buf, size_t count,
                loff_t *f_pos)
{
	struct rgbled_dev *dev = filp->private_data;
	void __iomem *base_addr = dev->lp->base_addr;

	uint32_t value = 0;

	if (count>sizeof(uint32_t)) // can only write 2 bytes
		return -1;

	if (copy_from_user(&value, buf, count)) {
		return -EFAULT;
	}

	//printk("Got value %d\n", value);

	//limit the value to 24bit
	if (value>0x00FFFFFF)
		return -1;

	//limit the value to the current steering config
	//TODO: add ioctl to get the defaults

	reg_write(base_addr, 0, value);

	*f_pos += count;
	return count;
}


struct file_operations rgbled_fops = {
	.owner =    THIS_MODULE,
	.open =     rgbled_open,
	.write =	rgbled_write,
};

/**
 * Clears memory and associated structures
 */
void rgbled_delete(struct rgbled_dev *dev)
{
	dev_t devno = MKDEV(dev->dev_major, 0);

	device_destroy(dev->class, devno);
	class_destroy(dev->class);

	cdev_del(&dev->cdev);

	kfree(dev);

	unregister_chrdev_region(devno, 1);

	printk(KERN_NOTICE "Unregistered sonar char device.\n");
}

/**
 * Does the required setup to create a new device node
 */
static int rgbled_setup_cdev(struct rgbled_dev *dev)
{
	int err, devno = MKDEV(dev->dev_major, 0);
	struct device *node;


	cdev_init(&dev->cdev, &rgbled_fops);
	dev->cdev.owner = THIS_MODULE;
	dev->cdev.ops = &rgbled_fops;
	err = cdev_add (&dev->cdev, devno, 1);
	if (err){
		printk(KERN_WARNING "Error %d adding rgbled\n", err);
		return -1;
	}

	dev->class = class_create(THIS_MODULE, "rgbled");
	if (!dev->class) {
		printk(KERN_WARNING "Can't create class");
		return -1;
	}

	printk(KERN_NOTICE "Created class.\n");


	node = device_create(dev->class, NULL, devno, NULL, "rgbled");
	if (!node) {
		printk(KERN_WARNING "Can't create device /dev/rgbled\n");
		class_destroy(dev->class);
		return -1;
	}


	return 0;
}


int rgbled_init(struct rgbled_dev *device, struct rgbleddriver_local *lp)
{
	int result;
	dev_t major = 0;

	result = alloc_chrdev_region(&major, 0, 1, "rgbled");

	device->dev_major = MAJOR(major);
	if (result < 0) {
		printk(KERN_WARNING "rgbled: can't get major %d\n", device->dev_major);
		rgbled_delete(device);
		return result;
	}

	device->lp = lp;


	result = rgbled_setup_cdev(device);
	if(result<0)
	{
		rgbled_delete(device);
		return result;
	}

	return 0;
}

struct rgbled_dev* rgbled_alloc(struct rgbleddriver_local *lp){
	struct rgbled_dev *local;

	local = kmalloc(sizeof(struct rgbled_dev), GFP_KERNEL);
	if (!local)
		return NULL;

	int result;
	result = rgbled_init(local, lp);
	if (result<0)
		return NULL;

	return local;
}

#endif

#ifndef SONAR_H_
#define SONAR_H_

#include "sonardriver.h"

struct sonar_dev {
	int dev_major;
	struct sonardriver_local *lp;
	struct cdev cdev;
	struct class *class;
	struct device *node;
};

/**
 * Manages read calls on the files associated with this device node
 * It returns a 4 byte value coresponding to the physical register
 * that stores the clock ticks measured by the VHDL component
 */
ssize_t sonar_read(struct file *fp, char __user *buf, size_t count, loff_t *f_pos)
{
	struct sonar_dev *dev = fp->private_data;


	if (*f_pos >= 4)
		*f_pos=0;

	if (count>4)
		return -1;

	volatile uint32_t sonarTicks = reg_read(dev->lp->base_addr, 0);


	if (copy_to_user(buf, &sonarTicks, count)) {
		return -EFAULT;
	}

	*f_pos += count;
	return count;

}

int sonar_open(struct inode *in, struct file *fp)
{
	struct sonar_dev *dev;
	//printk(KERN_NOTICE "Opened a file\n");

	dev = container_of(in->i_cdev, struct sonar_dev, cdev);
	fp->private_data = dev;

	return 0;
}


struct file_operations sonar_fops = {
	.owner =    THIS_MODULE,
	.open =     sonar_open,
	.read = sonar_read,
};



void sonar_delete(struct sonar_dev *dev)
{
	dev_t devno = MKDEV(dev->dev_major, 0);

	device_destroy(dev->class, devno);
	class_destroy(dev->class);

	cdev_del(&dev->cdev);

	kfree(dev);

	unregister_chrdev_region(devno, 1);

	printk(KERN_NOTICE "Unregistered sonar char device.\n");
}


static int sonar_setup_cdev(struct sonar_dev *dev)
{
	int err, devno = MKDEV(dev->dev_major, 0);
	struct device *node;


	cdev_init(&dev->cdev, &sonar_fops);
	dev->cdev.owner = THIS_MODULE;
	dev->cdev.ops = &sonar_fops;
	err = cdev_add (&dev->cdev, devno, 1);
	if (err){
		printk(KERN_WARNING "Error %d adding sonar\n", err);
		return -1;
	}

	dev->class = class_create(THIS_MODULE, "sonar");
	if (!dev->class) {
		printk(KERN_WARNING "Can't create class");
		return -1;
	}

	printk(KERN_NOTICE "Created class.\n");


	node = device_create(dev->class, NULL, devno, NULL, "sonar");
	if (!node) {
		printk(KERN_WARNING "Can't create device /dev/sonar\n");
		class_destroy(dev->class);
		return -1;
	}


	return 0;
}


int sonar_init(struct sonar_dev *device, struct sonardriver_local *lp)
{
	int result;
	dev_t major = 0;

	result = alloc_chrdev_region(&major, 0, 1, "sonar");

	device->dev_major = MAJOR(major);
	if (result < 0) {
		printk(KERN_WARNING "sonar: can't get major %d\n", device->dev_major);
		sonar_delete(device);
		return result;
	}

	device->lp = lp;


	result = sonar_setup_cdev(device);
	if(result<0)
	{
		sonar_delete(device);
		return result;
	}

	return 0;
}

struct sonar_dev* sonar_alloc(struct sonardriver_local *lp){
	struct sonar_dev *local;

	local = kmalloc(sizeof(struct sonar_dev), GFP_KERNEL);
	if (!local)
		return NULL;

	int result;
	result = sonar_init(local, lp);
	if (result<0)
		return NULL;

	return local;
}

#endif

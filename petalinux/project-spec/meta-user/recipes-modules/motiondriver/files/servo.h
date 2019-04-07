#ifndef SERVO_H_
#define SERVO_H_

#include "motion_ioctl.h"
#include "motiondriver.h"

#define SERVO_LEFT 220
#define SERVO_RIGHT 380


struct servo_dev {
	int dev_major;
	struct motiondriver_local *lp;
	struct cdev cdev;
	struct class *class;
	struct device *node;
};


/**
 * TODO: write() will be used to directly adjust the servo's position via a 12 bit uint
 */
ssize_t servo_write(struct file *filp, const char __user *buf, size_t count,
                loff_t *f_pos)
{
	struct servo_dev *dev = filp->private_data;
	void __iomem *base_addr = dev->lp->base_addr;

	uint16_t value = 0;

	if (count>sizeof(uint16_t)) // can only write 2 bytes
		return -1;

	if (copy_from_user(&value, buf, count)) {
		return -EFAULT;
	}

	//printk("Got value %d\n", value);

	//limit the value to 12bit
	if (value>4096)
		return -1;

	//limit the value to the current steering config
	//TODO: add ioctl to get the defaults
	if(value<SERVO_LEFT || value>SERVO_RIGHT)
		return -1;



	reg_write(base_addr, SERVO_REG_OFFSET, value);

	*f_pos += count;
	return count;
}


long servo_ioctl(struct file *fp, unsigned int cmd, unsigned long arg) {
	struct servo_dev *dev = fp->private_data;
	void __iomem *base_addr = dev->lp->base_addr;
	int err = 0, tmp;
	int retval = 0;


	if (_IOC_TYPE(cmd) != MOTION_IOC_MAGIC)
		return -ENOTTY;
	if (_IOC_NR(cmd) > MOTION_IOC_MAXNR)
		return -ENOTTY;

	if (_IOC_DIR(cmd) & _IOC_READ)
	err = !access_ok(VERIFY_WRITE, (void __user *)arg, _IOC_SIZE(cmd));
	else if (_IOC_DIR(cmd) & _IOC_WRITE)
	err = !access_ok(VERIFY_READ, (void __user *)arg, _IOC_SIZE(cmd));
	if (err)
		return -EFAULT;

	switch (cmd) {

	case MOTION_IOCQSERVOLEFT:
			return SERVO_LEFT;

	case MOTION_IOCQSERVORIGHT:
			return SERVO_RIGHT;

	default:
		return -ENOTTY;
	}

	return retval;

}



int servo_open(struct inode *in, struct file *fp)
{
	struct servo_dev *dev;
	//printk(KERN_NOTICE "Opened a file\n");

	dev = container_of(in->i_cdev, struct servo_dev, cdev);
	fp->private_data = dev;


	return 0;
}


struct file_operations servo_fops = {
	.owner =    THIS_MODULE,
	.open =     servo_open,
	.write = 	servo_write,
	.unlocked_ioctl = servo_ioctl,
};



void servo_delete(struct servo_dev *dev)
{
	dev_t devno = MKDEV(dev->dev_major, 0);

	device_destroy(dev->class, devno);
	class_destroy(dev->class);

	cdev_del(&dev->cdev);

	kfree(dev);

	unregister_chrdev_region(devno, 1);

	printk(KERN_NOTICE "Unregistered servo char device.\n");
}


static int servo_setup_cdev(struct servo_dev *dev)
{
	int err, devno = MKDEV(dev->dev_major, 0);
	struct device *node;


	cdev_init(&dev->cdev, &servo_fops);
	dev->cdev.owner = THIS_MODULE;
	dev->cdev.ops = &servo_fops;
	err = cdev_add (&dev->cdev, devno, 1);
	if (err){
		printk(KERN_WARNING "Error %d adding servo\n", err);
		return -1;
	}

	dev->class = class_create(THIS_MODULE, "servo");
	if (!dev->class) {
		printk(KERN_WARNING "Can't create class");
		return -1;
	}

	printk(KERN_NOTICE "Created class.\n");


	node = device_create(dev->class, NULL, devno, NULL, "servo");
	if (!node) {
		printk(KERN_WARNING "Can't create device /dev/servo\n");
		class_destroy(dev->class);
		return -1;
	}


	return 0;
}


int servo_init(struct servo_dev *device, struct motiondriver_local *lp)
{
	int result;
	dev_t major = 0;

	result = alloc_chrdev_region(&major, 0, 1, "servo");

	device->dev_major = MAJOR(major);
	if (result < 0) {
		printk(KERN_WARNING "servo: can't get major %d\n", device->dev_major);
		servo_delete(device);
		return result;
	}

	device->lp = lp;


	result = servo_setup_cdev(device);
	if(result<0)
	{
		servo_delete(device);
		return result;
	}

	return 0;
}

struct servo_dev* servo_alloc(struct motiondriver_local *lp){
	struct servo_dev *local;

	local = kmalloc(sizeof(struct servo_dev), GFP_KERNEL);
	if (!local)
		return NULL;

	int result;
	result = servo_init(local, lp);
	if (result<0)
		return NULL;

	return local;
}

#endif

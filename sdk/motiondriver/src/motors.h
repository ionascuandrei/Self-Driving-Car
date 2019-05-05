#ifndef MOTORS_H_
#define MOTORS_H_

#include "motion_ioctl.h"
#include "motiondriver.h"

struct motors_dev {
	int dev_major;
	struct motiondriver_local *lp;
	struct cdev cdev;
	struct class *class;
	struct device *node;
};


/**
 * Handles writes to the file descriptors managed by this device node.
 * It verifies the input and then writes the value to the physical device's
 * register.
 */
ssize_t motors_write(struct file *filp, const char __user *buf, size_t count,
                loff_t *f_pos)
{
	struct motors_dev *dev = filp->private_data;
	void __iomem *base_addr = dev->lp->base_addr;

	uint32_t value = 0;

	if (count>sizeof(uint32_t)) { // can only write 4 bytes
		printk(KERN_WARNING "Exceded count on write\n");
		return -1;
	}

	if (copy_from_user(&value, buf, count)) {
		return -EFAULT;
	}


	reg_write(base_addr, MOTOR_REG_OFFSET, value);

	*f_pos += count;
	return count;
}

/**
 * Handles ioctl calls on the files managed by this device node.
 * Can be used to set the direction of the motors and the software
 * enable bit.
 */
long motors_ioctl(struct file *fp, unsigned int cmd, unsigned long arg) {
	struct motors_dev *dev = fp->private_data;
	void __iomem *base_addr = dev->lp->base_addr;
	int err = 0, tmp;
	int retval = 0;

	uint8_t state = reg_read(base_addr, CONTROL_REG_OFFSET) & 1; //get the enable bit
	uint8_t dir = reg_read(base_addr, CONTROL_REG_OFFSET) & 0b110; // get the direction bits

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

	case MOTION_IOCTSETENABLE: // 1 bit value for the enable
		if (! capable (CAP_SYS_ADMIN))
				return -EPERM;
		if (arg > 1)
				return -ENOTTY;
		//printk("Set enable arg:%d, dir:%d, result: %d\n", arg, dir, arg+dir);
		reg_write(base_addr, CONTROL_REG_OFFSET, (uint32_t) (arg + dir));
		break;


	case MOTION_IOCTSETDIR:  // 2 bit value for the 2 motors (maxval 3);
		if (! capable (CAP_SYS_ADMIN))
			return -EPERM;
		if (arg > 3)
			return -ENOTTY;
		//printk("Set dir arg:%d, state:%d, result: %d\n", arg, dir, ((arg<<1) + state));
		reg_write(base_addr, CONTROL_REG_OFFSET, (uint32_t) ((arg<<1) + state));
		break;

	default:
		return -ENOTTY;
	}

	return retval;

}

/**
 * Opens a new file associated with this device node
 */
int motors_open(struct inode *in, struct file *fp)
{
	struct motors_dev *dev;
	//printk(KERN_NOTICE "Opened a file\n");

	//Reference itself in the file's private data field, to be
	//usable in reads/writes
	dev = container_of(in->i_cdev, struct motors_dev, cdev);
	fp->private_data = dev;


	return 0;
}

struct file_operations motors_fops = {
	.owner =    THIS_MODULE,
	.unlocked_ioctl = motors_ioctl,
	.open =     motors_open,
	.write = motors_write,
};

/**
 * Free registered structures and memory
 */
void motors_delete(struct motors_dev *dev)
{
	dev_t devno = MKDEV(dev->dev_major, 0);

	device_destroy(dev->class, devno);
	class_destroy(dev->class);

	cdev_del(&dev->cdev);

	kfree(dev);

	unregister_chrdev_region(devno, 1);

	printk(KERN_NOTICE "Unregistered motors char device.\n");
}

/**
 * Register the required structures, device nodes, classes and such
 */
static int motors_setup_cdev(struct motors_dev *dev)
{
	int err, devno = MKDEV(dev->dev_major, 0);
	struct device *node;


	cdev_init(&dev->cdev, &motors_fops);
	dev->cdev.owner = THIS_MODULE;
	dev->cdev.ops = &motors_fops;
	err = cdev_add (&dev->cdev, devno, 1);
	if (err){
		printk(KERN_WARNING "Error %d adding motors\n", err);
		return -1;
	}

	dev->class = class_create(THIS_MODULE, "motors");
	if (!dev->class) {
		printk(KERN_WARNING "Can't create class");
		return -1;
	}

	printk(KERN_NOTICE "Created class.\n");


	node = device_create(dev->class, NULL, devno, NULL, "motors");
	if (!node) {
		printk(KERN_WARNING "Can't create device /dev/motors\n");
		class_destroy(dev->class);
		return -1;
	}


	return 0;
}


int motors_init(struct motors_dev *device, struct motiondriver_local *lp)
{
	int result;
	dev_t major = 0;

	result = alloc_chrdev_region(&major, 0, 1, "motors");

	device->dev_major = MAJOR(major);
	if (result < 0) {
		printk(KERN_WARNING "motors: can't get major %d\n", device->dev_major);
		motors_delete(device);
		return result;
	}

	device->lp = lp;


	result = motors_setup_cdev(device);
	if(result<0)
	{
		motors_delete(device);
		return result;
	}

	return 0;
}

struct motors_dev* motors_alloc(struct motiondriver_local *lp){
	struct motors_dev *local;

	local = kmalloc(sizeof(struct motors_dev), GFP_KERNEL);
	if (!local)
		return NULL;

	int result;
	result = motors_init(local, lp);
	if (result<0)
		return NULL;

	return local;
}

#endif

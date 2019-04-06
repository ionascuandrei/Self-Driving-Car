#ifndef SONARDRIVER_H_
#define SONARDRIVER_H_

#define CONTROL_REG_OFFSET 0
#define SERVO_REG_OFFSET 4
#define MOTOR_REG_OFFSET 8

struct sonardriver_local {
	unsigned long mem_start;
	unsigned long mem_end;
	void __iomem *base_addr;
	struct sonar_dev *sonar;
	struct module *this;
};

static inline u32 reg_read(void __iomem * base_addr, u32 reg)
{
	return ioread32(base_addr + reg);
}

static inline void reg_write(void __iomem * base_addr, u32 reg, u32 value)
{
	iowrite32(value, base_addr + reg);
}

#endif

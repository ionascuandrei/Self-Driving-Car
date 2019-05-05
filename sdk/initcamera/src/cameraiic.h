#include <stdio.h>
#include <unistd.h>
#include <string.h>
#include <stdint.h>
#include <fcntl.h>
#include <sys/mman.h>
#include <sys/ioctl.h>
#include <linux/i2c-dev.h>


const uint16_t cfg_advanced_awb_[][2] = {
		// Enable Advanced AWB
		{0x3406 ,0x00},
		{0x5192 ,0x04},
		{0x5191 ,0xf8},
		{0x518d ,0x26},
		{0x518f ,0x42},
		{0x518e ,0x2b},
		{0x5190 ,0x42},
		{0x518b ,0xd0},
		{0x518c ,0xbd},
		{0x5187 ,0x18},
		{0x5188 ,0x18},
		{0x5189 ,0x56},
		{0x518a ,0x5c},
		{0x5186 ,0x1c},
		{0x5181 ,0x50},
		{0x5184 ,0x20},
		{0x5182 ,0x11},
		{0x5183 ,0x00},
		{0x5001 ,0x03},
		{0xFFFF, 0xFFFF}
	};

const uint16_t cfg_simple_awb_[][2] =
	{
		// Disable Advanced AWB
		{0x518d ,0x00},
		{0x518f ,0x20},
		{0x518e ,0x00},
		{0x5190 ,0x20},
		{0x518b ,0x00},
		{0x518c ,0x00},
		{0x5187 ,0x10},
		{0x5188 ,0x10},
		{0x5189 ,0x40},
		{0x518a ,0x40},
		{0x5186 ,0x10},
		{0x5181 ,0x58},
		{0x5184 ,0x25},
		{0x5182 ,0x11},

		// Enable simple AWB
		{0x3406 ,0x00},
		{0x5183 ,0x80},
		{0x5191 ,0xff},
		{0x5192 ,0x00},
		{0x5001 ,0x03},
		{0xFFFF, 0xFFFF}
	};

const uint16_t cfg_disable_awb_[][2] =
	{
		// Disable Advanced AWB
		{0x518d ,0x00},
		{0x518f ,0x20},
		{0x518e ,0x00},
		{0x5190 ,0x20},
		{0x518b ,0x00},
		{0x518c ,0x00},
		{0x5187 ,0x10},
		{0x5188 ,0x10},
		{0x5189 ,0x40},
		{0x518a ,0x40},
		{0x5186 ,0x10},
		{0x5181 ,0x58},
		{0x5184 ,0x25},
		{0x5182 ,0x11},

		{0x5001 ,0x02},
		{0xFFFF, 0xFFFF}
	};

const uint16_t cfg_1080p_30fps_[][2]= {
	//1920 x 1080 @ 30fps, RAW10, MIPISCLK=420, SCLK=84MHz, PCLK=84M
	//PLL1 configuration
	//[7:4]=0010 System clock divider /2, [3:0]=0001 Scale divider for MIPI /1
	{0x3035, 0x21}, // 30fps setting
	//[7:0]=105 PLL multiplier
	{0x3036, 0x69},
	//[4]=0 PLL root divider /1, [3:0]=5 PLL pre-divider /1.5
	{0x3037, 0x05},
	//[5:4]=01 PCLK root divider /2, [3:2]=00 SCLK2x root divider /1, [1:0]=01 SCLK root divider /2
	{0x3108, 0x11},

	//[6:4]=001 PLL charge pump, [3:0]=1010 MIPI 10-bit mode
	{0x3034, 0x1A},

	//[3:0]=0 X address start high byte
	{0x3800, (336 >> 8) & 0x0F},
	//[7:0]=0 X address start low byte
	{0x3801, 336 & 0xFF},
	//[2:0]=0 Y address start high byte
	{0x3802, (426 >> 8) & 0x07},
	//[7:0]=0 Y address start low byte
	{0x3803, 426 & 0xFF},

	//[3:0] X address end high byte
	{0x3804, (2287 >> 8) & 0x0F},
	//[7:0] X address end low byte
	{0x3805, 2287 & 0xFF},
	//[2:0] Y address end high byte
	{0x3806, (1529 >> 8) & 0x07},
	//[7:0] Y address end low byte
	{0x3807, 1529 & 0xFF},

	//[3:0]=0 timing hoffset high byte
	{0x3810, (16 >> 8) & 0x0F},
	//[7:0]=0 timing hoffset low byte
	{0x3811, 16 & 0xFF},
	//[2:0]=0 timing voffset high byte
	{0x3812, (12 >> 8) & 0x07},
	//[7:0]=0 timing voffset low byte
	{0x3813, 12 & 0xFF},

	//[3:0] Output horizontal width high byte
	{0x3808, (1920 >> 8) & 0x0F},
	//[7:0] Output horizontal width low byte
	{0x3809, 1920 & 0xFF},
	//[2:0] Output vertical height high byte
	{0x380a, (1080 >> 8) & 0x7F},
	//[7:0] Output vertical height low byte
	{0x380b, 1080 & 0xFF},

	//HTS line exposure time in # of pixels Tline=HTS/sclk
	{0x380c, (2500 >> 8) & 0x1F},
	{0x380d, 2500 & 0xFF},
	//VTS frame exposure time in # lines
	{0x380e, (1120 >> 8) & 0xFF},
	{0x380f, 1120 & 0xFF},

	//[7:4]=0x1 horizontal odd subsample increment, [3:0]=0x1 horizontal even subsample increment
	{0x3814, 0x11},
	//[7:4]=0x1 vertical odd subsample increment, [3:0]=0x1 vertical even subsample increment
	{0x3815, 0x11},

	//[2]=0 ISP mirror, [1]=0 sensor mirror, [0]=0 no horizontal binning
	{0x3821, 0x00},

	//little MIPI shit: global timing unit, period of PCLK in ns * 2(depends on # of lanes)
	{0x4837, 24}, // 1/84M*2

	//Undocumented anti-green settings
	{0x3618, 0x00}, // Removes vertical lines appearing under bright light
	{0x3612, 0x59},
	{0x3708, 0x64},
	{0x3709, 0x52},
	{0x370c, 0x03},

	//[7:4]=0x0 Formatter RAW, [3:0]=0x0 BGBG/GRGR
	{0x4300, 0x00},
	//[2:0]=0x3 Format select ISP RAW (DPC)
	{0x501f, 0x03},
	{0xFFFF, 0xFFFF}
};

const uint16_t cfg_720p_60fps_[][2]= {
	//1280 x 720 binned, RAW10, MIPISCLK=280M, SCLK=56Mz, PCLK=56M
	//PLL1 configuration
	//[7:4]=0010 System clock divider /2, [3:0]=0001 Scale divider for MIPI /1
	{0x3035, 0x21},
	//[7:0]=70 PLL multiplier
	{0x3036, 0x46},
	//[4]=0 PLL root divider /1, [3:0]=5 PLL pre-divider /1.5
	{0x3037, 0x05},
	//[5:4]=01 PCLK root divider /2, [3:2]=00 SCLK2x root divider /1, [1:0]=01 SCLK root divider /2
	{0x3108, 0x11},

	//[6:4]=001 PLL charge pump, [3:0]=1010 MIPI 10-bit mode
	{0x3034, 0x1A},

	//[3:0]=0 X address start high byte
	{0x3800, (0 >> 8) & 0x0F},
	//[7:0]=0 X address start low byte
	{0x3801, 0 & 0xFF},
	//[2:0]=0 Y address start high byte
	{0x3802, (8 >> 8) & 0x07},
	//[7:0]=0 Y address start low byte
	{0x3803, 8 & 0xFF},

	//[3:0] X address end high byte
	{0x3804, (2619 >> 8) & 0x0F},
	//[7:0] X address end low byte
	{0x3805, 2619 & 0xFF},
	//[2:0] Y address end high byte
	{0x3806, (1947 >> 8) & 0x07},
	//[7:0] Y address end low byte
	{0x3807, 1947 & 0xFF},

	//[3:0]=0 timing hoffset high byte
	{0x3810, (0 >> 8) & 0x0F},
	//[7:0]=0 timing hoffset low byte
	{0x3811, 0 & 0xFF},
	//[2:0]=0 timing voffset high byte
	{0x3812, (0 >> 8) & 0x07},
	//[7:0]=0 timing voffset low byte
	{0x3813, 0 & 0xFF},

	//[3:0] Output horizontal width high byte
	{0x3808, (1280 >> 8) & 0x0F},
	//[7:0] Output horizontal width low byte
	{0x3809, 1280 & 0xFF},
	//[2:0] Output vertical height high byte
	{0x380a, (720 >> 8) & 0x7F},
	//[7:0] Output vertical height low byte
	{0x380b, 720 & 0xFF},

	//HTS line exposure time in # of pixels
	{0x380c, (1896 >> 8) & 0x1F},
	{0x380d, 1896 & 0xFF},
	//VTS frame exposure time in # lines
	{0x380e, (984 >> 8) & 0xFF},
	{0x380f, 984 & 0xFF},

	//[7:4]=0x3 horizontal odd subsample increment, [3:0]=0x1 horizontal even subsample increment
	{0x3814, 0x31},
	//[7:4]=0x3 vertical odd subsample increment, [3:0]=0x1 vertical even subsample increment
	{0x3815, 0x31},

	//[2]=0 ISP mirror, [1]=0 sensor mirror, [0]=1 horizontal binning
	{0x3821, 0x01},

	//little MIPI shit: global timing unit, period of PCLK in ns * 2(depends on # of lanes)
	{0x4837, 36}, // 1/56M*2

	//Undocumented anti-green settings
	{0x3618, 0x00}, // Removes vertical lines appearing under bright light
	{0x3612, 0x59},
	{0x3708, 0x64},
	{0x3709, 0x52},
	{0x370c, 0x03},

	//[7:4]=0x0 Formatter RAW, [3:0]=0x0 BGBG/GRGR
	{0x4300, 0x00},
	//[2:0]=0x3 Format select ISP RAW (DPC)
	{0x501f, 0x03},
	{0xFFFF, 0xFFFF}
};

const uint16_t cfg_init_[][2] = {
		//[7]=0 Software reset; [6]=1 Software power down; Default=0x02
		{0x3008, 0x42},
		//[1]=1 System input clock from PLL; Default read = 0x11
		{0x3103, 0x03},
		//[3:0]=0000 MD2P,MD2N,MCP,MCN input; Default=0x00
		{0x3017, 0x00},
		//[7:2]=000000 MD1P,MD1N, D3:0 input; Default=0x00
		{0x3018, 0x00},
		//[6:4]=001 PLL charge pump, [3:0]=1000 MIPI 8-bit mode
		{0x3034, 0x18},

		//              +----------------+        +------------------+         +---------------------+        +---------------------+
		//XVCLK         | PRE_DIV0       |        | Mult (4+252)     |         | Sys divider (0=16)  |        | MIPI divider (0=16) |
		//+-------+-----> 3037[3:0]=0001 +--------> 3036[7:0]=0x38   +---------> 3035[7:4]=0001      +--------> 3035[3:0]=0001      |
		//12MHz   |     | / 1            | 12MHz  | * 56             | 672MHz  | / 1                 | 672MHz | / 1                 |
		//        |     +----------------+        +------------------+         +----------+----------+        +----------+----------+
		//        |                                                                       |                              |
		//        |                                                                       |                      MIPISCLK|672MHz
		//        |                                                                       |                              |
		//        |     +----------------+        +------------------+         +----------v----------+        +----------v----------+
		//        |     | PRE_DIVSP      |        | R_DIV_SP         |         | PLL R divider       |        | MIPI PHY            | MIPI_CLK
		//        +-----> 303d[5:4]=01   +--------> 303d[2]=0 (+1)   |         | 3037[4]=1 (+1)      |        |                     +------->
		//              | / 1.5          |  8MHz  | / 1              |         | / 2                 |        | / 2                 | 336MHz
		//              +----------------+        +---------+--------+         +----------+----------+        +---------------------+
		//                                                  |                             |
		//                                                  |                             |
		//                                                  |                             |
		//              +----------------+        +---------v--------+         +----------v----------+        +---------------------+
		//              | SP divider     |        | Mult             |         | BIT div (MIPI 8/10) |        | SCLK divider        | SCLK
		//              | 303c[3:0]=0x1  +<-------+ 303b[4:0]=0x19   |         | 3034[3:0]=0x8)      +----+---> 3108[1:0]=01 (2^)   +------->
		//              | / 1            | 200MHz | * 25             |         | / 2                 |    |   | / 2                 | 84MHz
		//              +--------+-------+        +------------------+         +----------+----------+    |   +---------------------+
		//                       |                                                        |               |
		//                       |                                                        |               |
		//                       |                                                        |               |
		//              +--------v-------+                                     +----------v----------+    |   +---------------------+
		//              | R_SELD5 div    | ADCCLK                              | PCLK div            |    |   | SCLK2x divider      |
		//              | 303d[1:0]=001  +------->                             | 3108[5:4]=00 (2^)   |    +---> 3108[3:2]=00 (2^)   +------->
		//              | / 1            | 200MHz                              | / 1                 |        | / 1                 | 168MHz
		//              +----------------+                                     +----------+----------+        +---------------------+
		//                                                                                |
		//                                                                                |
		//                                                                                |
		//                                                                     +----------v----------+        +---------------------+
		//                                                                     | P divider (* #lanes)| PCLK   | Scale divider       |
		//                                                                     | 3035[3:0]=0001      +--------> 3824[4:0]           |
		//                                                                     | / 1                 | 168MHz | / 2                 |
		//                                                                     +---------------------+        +---------------------+

		//PLL1 configuration
		//[7:4]=0001 System clock divider /1, [3:0]=0001 Scale divider for MIPI /1
		{0x3035, 0x11},
		//[7:0]=56 PLL multiplier
		{0x3036, 0x38},
		//[4]=1 PLL root divider /2, [3:0]=1 PLL pre-divider /1
		{0x3037, 0x11},
		//[5:4]=00 PCLK root divider /1, [3:2]=00 SCLK2x root divider /1, [1:0]=01 SCLK root divider /2
		{0x3108, 0x01},
		//PLL2 configuration
		//[5:4]=01 PRE_DIV_SP /1.5, [2]=1 R_DIV_SP /1, [1:0]=00 DIV12_SP /1
		{0x303D, 0x10},
		//[4:0]=11001 PLL2 multiplier DIV_CNT5B = 25
		{0x303B, 0x19},

		{0x3630, 0x2e},
		{0x3631, 0x0e},
		{0x3632, 0xe2},
		{0x3633, 0x23},
		{0x3621, 0xe0},
		{0x3704, 0xa0},
		{0x3703, 0x5a},
		{0x3715, 0x78},
		{0x3717, 0x01},
		{0x370b, 0x60},
		{0x3705, 0x1a},
		{0x3905, 0x02},
		{0x3906, 0x10},
		{0x3901, 0x0a},
		{0x3731, 0x02},
		//VCM debug mode
		{0x3600, 0x37},
		{0x3601, 0x33},
		//System control register changing not recommended
		{0x302d, 0x60},
		//??
		{0x3620, 0x52},
		{0x371b, 0x20},
		//?? DVP
		{0x471c, 0x50},

		{0x3a13, 0x43},
		{0x3a18, 0x00},
		{0x3a19, 0xf8},
		{0x3635, 0x13},
		{0x3636, 0x06},
		{0x3634, 0x44},
		{0x3622, 0x01},
		{0x3c01, 0x34},
		{0x3c04, 0x28},
		{0x3c05, 0x98},
		{0x3c06, 0x00},
		{0x3c07, 0x08},
		{0x3c08, 0x00},
		{0x3c09, 0x1c},
		{0x3c0a, 0x9c},
		{0x3c0b, 0x40},

		//[7]=1 color bar enable, [3:2]=00 eight color bar
		{0x503d, 0x00},
		//[2]=1 ISP vflip, [1]=1 sensor vflip
		{0x3820, 0x46},

		//[7:5]=010 Two lane mode, [4]=0 MIPI HS TX no power down, [3]=0 MIPI LP RX no power down, [2]=1 MIPI enable, [1:0]=10 Debug mode; Default=0x58
		{0x300e, 0x45},
		//[5]=0 Clock free running, [4]=1 Send line short packet, [3]=0 Use lane1 as default, [2]=1 MIPI bus LP11 when no packet; Default=0x04
		{0x4800, 0x14},
		{0x302e, 0x08},
		//[7:4]=0x3 YUV422, [3:0]=0x0 YUYV
		//{0x4300, 0x30},
		//[7:4]=0x6 RGB565, [3:0]=0x0 {b[4:0],g[5:3],g[2:0],r[4:0]}
		{0x4300, 0x6f},
		{0x501f, 0x01},

		{0x4713, 0x03},
		{0x4407, 0x04},
		{0x440e, 0x00},
		{0x460b, 0x35},
		//[1]=0 DVP PCLK divider manual control by 0x3824[4:0]
		{0x460c, 0x20},
		//[4:0]=1 SCALE_DIV=INT(3824[4:0]/2)
		{0x3824, 0x01},

		//MIPI timing
		//		{0x4805, 0x10}, //LPX global timing select=auto
		//		{0x4818, 0x00}, //hs_prepare + hs_zero_min ns
		//		{0x4819, 0x96},
		//		{0x482A, 0x00}, //hs_prepare + hs_zero_min UI
		//
		//		{0x4824, 0x00}, //lpx_p_min ns
		//		{0x4825, 0x32},
		//		{0x4830, 0x00}, //lpx_p_min UI
		//
		//		{0x4826, 0x00}, //hs_prepare_min ns
		//		{0x4827, 0x32},
		//		{0x4831, 0x00}, //hs_prepare_min UI

		//[7]=1 LENC correction enabled, [5]=1 RAW gamma enabled, [2]=1 Black pixel cancellation enabled, [1]=1 White pixel cancellation enabled, [0]=1 Color interpolation enabled
		{0x5000, 0x07},
		//[7]=0 Special digital effects, [5]=0 scaling, [2]=0 UV average disabled, [1]=1 Color matrix enabled, [0]=1 Auto white balance enabled
		{0x5001, 0x03},
		{0xFFFF, 0xFFFF}
	};

uint8_t dev_address_ = (0x3c);
uint8_t dev_address2_ = (0x46 >> 1);
uint8_t const dev_ID_h_ = 0x56;
uint8_t const dev_ID_l_ = 0x40;
uint16_t const reg_ID_h = 0x300A;
uint16_t const reg_ID_l = 0x300B;
unsigned int const retry_count_ = 10;

uint16_t const OV5640_REG_PRE_ISP_TEST_SET1 = 0x503D;
uint16_t const OV5640_FORMAT_MUX_CONTROL = 0x501f;



void readReg(int fd, uint16_t reg_addr, uint8_t *out){
	// Using I2C Read
	for (int i=0; i<retry_count_; i++) {
		unsigned char buf[2];
		buf[0] = reg_addr>>8;
		buf[1] = (uint8_t) reg_addr;

		write(fd, buf, 2);
		if (read(fd,out,1) != 1) {
			/* ERROR HANDLING: i2c transaction failed */
			printf("Failed to read from the i2c bus.\n");
		} else {
			break;
		}
	}
}

void writeReg(int fd, uint16_t reg_addr, uint8_t const reg_data) {
	// Using I2C Read
	for (int i=0; i<retry_count_; i++) {
		unsigned char buf[3];
		buf[0] = reg_addr>>8;
		buf[1] = (uint8_t) reg_addr;
		buf[2] = reg_data;

		//printf("writing %2x%2x \n", buf[0], buf[1]);

		if (write(fd, buf, 3) != 3) {
			/* ERROR HANDLING: i2c transaction failed */
			printf("Failed to read from the i2c bus.\n");
		} else {
			break;
		}
	}
}

/**
 * enabled = 1 - Sets the camera into Color Bars testing mode
 */
void set_test(int fd, uint8_t enabled){
	if (enabled==1){
		writeReg(fd, OV5640_REG_PRE_ISP_TEST_SET1, 0x80);
	} else if (enabled==0){
		writeReg(fd, OV5640_REG_PRE_ISP_TEST_SET1, 0x00);
	}
}

/**
 * format = 0 RAW
 * format = 1 RGB
 * **/
void set_isp_format(int fd, uint8_t format){
	writeReg(fd, 0x3008, 0x42);
	if (format==1){
		writeReg(fd, OV5640_FORMAT_MUX_CONTROL, 0x01);
	} else if (format==0){
		writeReg(fd, OV5640_FORMAT_MUX_CONTROL, 0x03);
	}
	writeReg(fd, 0x3008, 0x02);
}

/**
 * Software reset
 */
void cam_reset(int fd){
	writeReg(fd, 0x3008, 0x82);
}

/**
 * Read a 'config' array and write it to the camera registers via I2C
 */
void writeConfig(int fd, const uint16_t config[][2]) {
	writeReg(fd, 0x3008, 0x42);
	int i=0;
	while (config[i][0]!=0xFFFF && config[i][1]!=0xFFFF) {
		writeReg(fd, config[i][0], (uint8_t) config[i][1]);
		i++;
	}
	writeReg(fd, 0x3008, 0x02);
}

/**
 * Initialize the I2C bus and camera
 * Returns a file descriptor on success, or -1 on failure
 */
int cameraInit(){
	int fd;
	if ((fd = open("/dev/i2c-0", O_RDWR)) < 0) {
		/* ERROR HANDLING: you can check errno to see what went wrong */
		printf("Failed to open the i2c bus\n");
		return -1;
	}
	printf("Opened the bus\n");

	if (ioctl(fd,I2C_SLAVE,dev_address_) < 0 ) {
		printf("Failed to acquire bus access and/or talk to slave.\n");
		/* ERROR HANDLING; you can check errno to see what went wrong */
		return -1;
	}
	printf("Passed ioctl \n");


	uint8_t id_h, id_l;
	readReg(fd, reg_ID_h, &id_h);
	readReg(fd, reg_ID_l, &id_l);
	if (id_h != dev_ID_h_ || id_l != dev_ID_l_)
	{
		printf("Got %02x %02x. Expected %02x %02x\r\n", id_h, id_l, dev_ID_h_, dev_ID_l_);
		return -1;
	}

	writeReg(fd, 0x3103, 0x11);
	writeReg(fd, 0x3008, 0x82);
	printf("Camera powerup done\n");
	usleep(10000);

	writeConfig(fd,  cfg_init_);
	printf("Camera init done\n");
	usleep(10000);

	writeConfig(fd, cfg_720p_60fps_);
	//writeConfig(fd, cfg_1080p_30fps_);
	printf("Camera mode set done\n");
	usleep(10000);

	//writeConfig(fd, cfg_simple_awb_);
	printf("Camera AWB set done\n");
	usleep(10000);

	//writeConfig(fd, cfg_test_);
	printf("Camera test config done\n");
	usleep(10000);

	set_test(fd, 0);
	set_isp_format(fd, 0);
	usleep(10000);

	return fd;
}

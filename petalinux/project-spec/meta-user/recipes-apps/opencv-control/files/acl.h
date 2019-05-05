/* PmodACL.h -- PmodACL Driver Definitions                                    */

#ifndef PMODACL_H
#define PMODACL_H
/* ------------------------------------------------------------ */
/*                  Definitions                                 */
/* ------------------------------------------------------------ */
#define ACL_NO_BITS           10
#define ACL_I2C_ADDR          0x1D
#define ACL_CONV_OFFSET_G_LSB (15.6 * 0.001) // Convert offset (g) to LSB,
											 // 15.6 mg/LSB

/* ------------------------------------------------------------ */
/*                  Register Addresses Definitions              */
/* ------------------------------------------------------------ */

#define ACL_REG_DEVID         0x00
#define ACL_REG_OFSX          0x1E
#define ACL_REG_OFSY          0x1F
#define ACL_REG_OFSZ          0x20
#define ACL_REG_DUR           0x21
#define ACL_REG_LATENT        0x22
#define ACL_REG_WINDOW        0x23
#define ACL_REG_THRESH_ACT    0x24
#define ACL_REG_THRESH_INACT  0x25
#define ACL_REG_TIME_INACT    0x26
#define ACL_REG_ACT_INACT_CTL 0x27
#define ACL_REG_THRESH_FF     0x28
#define ACL_REG_TIME_FF       0x29
#define ACL_REG_BW_RATE       0x2C
#define ACL_REG_POWER_CTL     0x2D
#define ACL_REG_INT_ENABLE    0x2E
#define ACL_REG_INT_MAP       0x2F
#define ACL_REG_INT_SOURCE    0x30
#define ACL_REG_DATA_FORMAT   0x31
#define ACL_REG_DATAX0        0x32
#define ACL_REG_DATAX1        0x33
#define ACL_REG_DATAY0        0x34
#define ACL_REG_DATAY1        0x35
#define ACL_REG_DATAZ0        0x36
#define ACL_REG_DATAZ1        0x37
#define ACL_REG_FIFO_CTL      0x38
#define ACL_REG_FIFO_STATUS   0x39

/* ------------------------------------------------------------ */
/*                  Bit Masks Definitions                       */
/* ------------------------------------------------------------ */

#define ACL_MSK_POWER_CTL_MEASURE  1<<3
#define ACL_MSK_DATA_FORMAT_RANGE0 1<<0
#define ACL_MSK_DATA_FORMAT_RANGE1 1<<1

/* ------------------------------------------------------------ */
/*                  Parameters Definitions                      */
/* ------------------------------------------------------------ */

#define ACL_PAR_ACCESS_DSPI0 0
#define ACL_PAR_ACCESS_DSPI1 1
#define ACL_PAR_ACCESS_DSPI2 2
#define ACL_PAR_ACCESS_I2C   10
#define ACL_PAR_GRANGE_PM2G  0
#define ACL_PAR_GRANGE_PM4G  1
#define ACL_PAR_GRANGE_PM8G  2
#define ACL_PAR_GRANGE_PM16G 3
#define ACL_PAR_AXIS_XP      0
#define ACL_PAR_AXIS_XN      1
#define ACL_PAR_AXIS_YP      2
#define ACL_PAR_AXIS_YN      3
#define ACL_PAR_AXIS_ZP      4
#define ACL_PAR_AXIS_ZN      5
#define ACL_PAR_AXIS_X       0
#define ACL_PAR_AXIS_Y       1
#define ACL_PAR_AXIS_Z       2

float gRangeLSB;

/* ------------------------------------------------------------ */
/*                  Procedure Declarations                      */
/* ------------------------------------------------------------ */

int readData(int fd, uint8_t *data, uint8_t length) {
	int result = read(fd, data, length);

	if (result != length) {
		printf("Failed to read %d bytes from the i2c bus. Read %d bytes instead.\n", length, result);
		return result;
	}
	else {
		return length;
	}
}

int writeData(int fd, uint8_t *data, uint8_t length) {
	int result = write(fd, data, length);

	if (result != length) {
		printf("Failed to write %d bytes on the i2c bus. Wrote %d bytes instead.\n", length, result);
		return result;
	}
	else {
		return length;
	}
}

/* ------------------------------------------------------------ */
/*** void ACL_ReadI2C(int fd, uint8_t reg, uint8_t *rData, int nData)
**
**   Parameters:
**      fd : 		 the PmodACL fd to communicate with
**      reg:         the starting register to read from
**      rData:       the byte array to read into
**      nData:       the number of data bytes to read
**
**   Return Value:
**      none
**
**   Description:
**      Reads data in through I2C. It will read the first byte from the starting
**      register, then the next from the following register. Data is stored into
**      rData.
*/
void ACL_ReadI2C(int fd, uint8_t reg, uint8_t *rData, int nData) {
	writeData(fd, &reg, 1);
	readData(fd, rData, nData);
}

/* ------------------------------------------------------------ */
/*** void ACL_WriteI2C(int fd, uint8_t reg, uint8_t *wData, int nData)
**
**   Parameters:
**      fd: 		 the PmodACL fd to communicate with
**      reg:         the starting register to write to
**      wData:       the data to write
**      nData:       the number of data bytes to write
**
**   Return Value:
**      none
**
**   Description:
**      Writes the byte array to the chip via I2C. It will write the first byte
**      into the specified register, then the next into the following register
**      until all of the data has been sent.
*/
void ACL_WriteI2C(int fd, uint8_t reg, uint8_t *wData, int nData) {
	// As requested by documentation, first byte contains:
	//    bit 7 =    0 because is a write operation
	//    bit 6 =    1 if more than one bytes is written, 0 if a single byte is
	//               written
	//    bits 5-0 = the address

	uint8_t bytearray[nData + 1];
	int i;
	bytearray[0] = ((nData > 1) ? 0x40 : 0) | (reg & 0x3F);
	for (i = 0; i < nData; i++) {
		bytearray[i + 1] = wData[i];
	}
	writeData(fd, bytearray, nData + 1);
}

/* ------------------------------------------------------------ */
/*** void ACL_SetRegisterBits(int fd, uint8_t reg, uint8_t mask, uint8_t fValue)
**
**   Parameters:
**      fd:      		  the PmodACL fd to communicate with
**      reg:              the address of the register whose bits are set
**      bMask:            the mask indicating which bits are affected
**      fValue:           1 if the bits are set or 0 if their bits are reset
**
**   Return Value:
**      None
**
**   Description:
**      This function sets the value of some bits (corresponding to the bMask)
**      of a register (indicated by reg) to 1 or 0 (indicated by
**      fValue).
*/
void ACL_SetRegisterBits(int fd, uint8_t reg, uint8_t mask, uint8_t fValue) {
	uint8_t regval;
	ACL_ReadI2C(fd, reg, &regval, 1);
	if (fValue)
		regval |= mask;
	else
		regval &= ~mask;
	ACL_WriteI2C(fd, reg, &regval, 1);
}

/* ------------------------------------------------------------ */
/*** void ACL_SetMeasure(int fd, uint8_t fMeasure)
**
**   Parameters:
**      fd: 		 the PmodACL fd to communicate with
**      fMeasure:    the value to be set for MEASURE bit of POWER_CTL register
**
**   Return Value:
**      None
**
**   Description:
**      This function sets the MEASURE bit of POWER_CTL register. This toggles
**      between measurement and standby mode.
**
**
**      0 - StandBy Mode
**      1 - Measurement Mode
**
*/
void ACL_SetMeasure(int fd, uint8_t fMeasure) {
	ACL_SetRegisterBits(fd, ACL_REG_POWER_CTL,
		ACL_MSK_POWER_CTL_MEASURE, fMeasure);
}

/* ------------------------------------------------------------ */
/*** float ACL_GetGRangeLSB(u8 bGRange)
**
**   Parameters:
**      bGRange: the parameter specifying the g range. Can be one of the
**               parameters in the following list
**                  0   ACL_PAR_GRANGE_PM2G Parameter g range : +/- 2g
**                  1   ACL_PAR_GRANGE_PM4G Parameter g range : +/- 4g
**                  2   ACL_PAR_GRANGE_PM8G Parameter g range : +/- 8g
**                  3   ACL_PAR_GRANGE_PM16G Parameter g range : +/- 16g
**
**   Return Value:
**      float - the value in "g" corresponding to the G range parameter, that
**              corresponds to 1 accelerometer LSB
**
**   Description:
**      Converts the parameter indicating the G range into the value that
**      corresponds to 1 accelerometer LSB.
**      For example ACL_PAR_GRANGE_PM8G: Range is 16g, accelerometer is on 10
**      bits, that corresponds to 16/(2^10). This constant is later used in
**      converting readings to acceleration values in g. (for example converts
**      ACL_PAR_GRANGE_PM8G into 8).
*/
float ACL_GetGRangeLSB(uint8_t bGRange) {
	float dGMaxValue = 0;
	float dResult;
	switch (bGRange) {
	case ACL_PAR_GRANGE_PM2G:
		dGMaxValue = 2;
		break;
	case ACL_PAR_GRANGE_PM4G:
		dGMaxValue = 4;
		break;
	case ACL_PAR_GRANGE_PM8G:
		dGMaxValue = 8;
		break;
	case ACL_PAR_GRANGE_PM16G:
		dGMaxValue = 16;
		break;
	}
	dResult = 2 * dGMaxValue / (float)(1 << ACL_NO_BITS);
	return dResult;
}

/* ------------------------------------------------------------ */
/*** void ACL_SetGRange(int fd, uint8_t bGRangePar)
**
**   Parameters:
**      fd: 		 the PmodACL fd to communicate with
**      bGRangePar:  the parameter specifying the g range. Can be one of the
**                   parameters from the following list:
**                      0   ACL_PAR_GRANGE_PM2G Parameter g range : +/- 2g
**                      1   ACL_PAR_GRANGE_PM4G Parameter g range : +/- 4g
**                      2   ACL_PAR_GRANGE_PM8G Parameter g range : +/- 8g
**                      3   ACL_PAR_GRANGE_PM16G Parameter g range : +/- 16g
**
**   Return Value:
**      None
**
**   Description:
**      The function sets the appropriate g range bits in the DATA_FORMAT
**      register. The accepted argument values are between 0 and 3.
**
**      If the argument is within the accepted values range, it sets the g range
**      bits in DATA_FORMAT register and ACL_ERR_SUCCESS status is returned.
**
**      If value is outside this range no value is set.
*/
void ACL_SetGRange(int fd, uint8_t bGRangePar) {
	gRangeLSB = ACL_GetGRangeLSB(bGRangePar);

	ACL_SetRegisterBits(fd, ACL_REG_DATA_FORMAT,
		ACL_MSK_DATA_FORMAT_RANGE0, (bGRangePar & 1));
	ACL_SetRegisterBits(fd, ACL_REG_DATA_FORMAT,
		ACL_MSK_DATA_FORMAT_RANGE1, (bGRangePar & 2) >> 1);
}

/* ------------------------------------------------------------ */
/*** float ConvertReadingToValueG(int16_t uiReading)
**
**   Parameters:
**      uiReading:   the 2 bytes containing the reading (in fact only 10 bits
**                   are used).
**
**   Return Value:
**      the value of the acceleration in "g" corresponding to the 10 bits
**      reading and the current g range
**
**   Description:
**      Converts the value from the 10 bit reading to the float value (in g)
**      corresponding to the acceleration, considering the current selected g
**      range.
*/
float ConvertReadingToValueG(int16_t uiReading) {
	// Convert the accelerometer value to G's.
	// With 10 (ACL_NO_BITS) bits measuring over a +/- ng range we can find how
	// to convert by using the equation:
	//    Gs = Measurement Value * (G-range/(2^10))
	// m_dGRangeLSB is pre-computed in ACL_SetGRange
	float dResult = ((float)uiReading) * gRangeLSB;
	return dResult;
}

/* ------------------------------------------------------------ */
/*** void ACL_ReadAccelG(int fd, float *aclXg, float *aclYg,
**         float *aclZg)
**
**   Parameters:
**      fd:         the PmodACL device to communicate with
**      aclXg:      the output parameter that will receive acceleration on
**                      X-axis (in "g")
**      aclYg:      the output parameter that will receive acceleration on
**                      Y-axis (in "g")
**      aclZg:      the output parameter that will receive acceleration on
**                      Z-axis (in "g")
**
**   Return Value:
**      void
**
**   Description:
**      This function is the main function used for acceleration reading,
**      providing the 3 current acceleration values in "g".
**       - It reads simultaneously the acceleration on three axes in a buffer of
**         6 bytes using the ReadRegister function
**       - For each of the three axes, combines the two bytes in order to get a
**         10-bit value
**       - For each of the three axes, converts the 10-bit value to the value
**         expressed in "g", considering the currently selected g range
*/
void ACL_ReadAccelG(int fd, float *aclXg, float *aclYg, float *aclZg) {
	uint16_t rgwRegVals[3];
	ACL_ReadI2C(fd, ACL_REG_DATAX0, (uint8_t *)rgwRegVals, 6);
	*aclXg = ConvertReadingToValueG(rgwRegVals[0]);
	*aclYg = ConvertReadingToValueG(rgwRegVals[1]);
	*aclZg = ConvertReadingToValueG(rgwRegVals[2]);
}

/* ------------------------------------------------------------ */
/*** void ReadAccel(int fd, int16_t *aclX, int16_t *aclY,
**      int16_t *aclZ)
**
**   Parameters:
**      fd: 		the PmodACL fd to communicate with
**      aclX:       the output parameter that will receive acceleration on
**                      X-axis - 10 bits signed value
**      aclY:       the output parameter that will receive acceleration on
**                      Y-axis - 10 bits signed value
**      aclZ:       the output parameter that will receive acceleration on
**                      Z-axis - 10 bits signed value
**
**   Return Value:
**      None
**
**   Description:
**      This function provides the 3 "raw" 10-bit values read from the
**      accelerometer.
**       - It reads simultaneously the acceleration on three axes in a buffer of
**         6 bytes using the ReadRegister function
**       - For each of the three axes, combines the two bytes in order to get a
**         10-bit value
*/
void ReadAccel(int fd, int16_t *aclX, int16_t *aclY, int16_t *aclZ) {
	uint16_t rgwRegVals[3];
	ACL_ReadI2C(fd, ACL_REG_DATAX0, (uint8_t *)rgwRegVals, 6);
	*aclX = rgwRegVals[0];
	*aclY = rgwRegVals[1];
	*aclZ = rgwRegVals[2];
}

/* ------------------------------------------------------------ */
/*** void ACL_SetOffsetG(int fd, uint8_t bAxisParam, float dOffset)
**
**   Parameters:
**      fd: 		 the PmodACL fd to communicate with
**      bAxisParam:  byte indicating the axis whose offset will be set. Can be
**                   one of:
**                      ACL_PAR_AXIS_X - indicating X-axis
**                      ACL_PAR_AXIS_Y - indicating Y-axis
**                      ACL_PAR_AXIS_Z - indicating Z-axis
**      dOffsetX:    the offset for X-axis in "g"
**
**   Return Value:
**      None
**
**   Description:
**      This function sets the specified axis offset, the value being given in
**      "g". The accepted argument values are between -2g and +2g.
**
**      If argument is within the accepted values range, its value is quantified
**      in the 8-bit offset register using a scale factor of 15.6 mg/LSB and
**      ACL_ERR_SUCCESS is returned.
**
**      If value is outside this range or if bAxisParam parameter is outside the
**      0 - 3 range, the function does nothing.
*/
void ACL_SetOffsetG(int fd, uint8_t bAxisParam, float dOffset) {
	int8_t bOffsetVal = (uint8_t)(dOffset / (float)ACL_CONV_OFFSET_G_LSB);
	switch (bAxisParam) {
	case ACL_PAR_AXIS_X:
		ACL_WriteI2C(fd, ACL_REG_OFSX, (uint8_t *)&bOffsetVal, 1);
		break;
	case ACL_PAR_AXIS_Y:
		ACL_WriteI2C(fd, ACL_REG_OFSY, (uint8_t *)&bOffsetVal, 1);
		break;
	case ACL_PAR_AXIS_Z:
		ACL_WriteI2C(fd, ACL_REG_OFSZ, (uint8_t *)&bOffsetVal, 1);
		break;
	}
}

/* ------------------------------------------------------------ */
/*** float ACL_GetOffsetG(int fd, uint8_t bAxisParam)
**
**   Parameters:
**      fd: 		 the PmodACL fd to communicate with
**      bAxisParam:  byte indicating the axis whose acceleration will be read.
**                   Can be one of:
**                      ACL_PAR_AXIS_X - indicating X-axis
**                      ACL_PAR_AXIS_Y - indicating Y-axis
**                      ACL_PAR_AXIS_Z - indicating Z-axis
**
**   Return Value:
**      The offset for X-axis in "g".
**
**   Description:
**      This function returns the offset, in "g", for the specified axis.
**      It converts the 8-bit value quantified in the offset register into a
**      value expressed in "g", using a scale factor of 15.6 mg/LSB.
*/
float ACL_GetOffsetG(int fd, uint8_t bAxisParam) {
	int8_t bOffsetVal;
	float dResult;
	switch (bAxisParam) {
	case ACL_PAR_AXIS_X:
		ACL_ReadI2C(fd, ACL_REG_OFSX, (uint8_t*)&bOffsetVal, 1);
		break;
	case ACL_PAR_AXIS_Y:
		ACL_ReadI2C(fd, ACL_REG_OFSY, (uint8_t*)&bOffsetVal, 1);
		break;
	case ACL_PAR_AXIS_Z:
		ACL_ReadI2C(fd, ACL_REG_OFSZ, (uint8_t*)&bOffsetVal, 1);
		break;
	}
	dResult = (float)bOffsetVal * (float)ACL_CONV_OFFSET_G_LSB;
	return dResult;
}

/* ------------------------------------------------------------ */
/*** void ACL_CalibrateOneAxisGravitational(int fd, uint8_t bAxisInfo)
**
**   Parameters:
**      InstancePtr: the PmodACL device to communicate with
**      bAxisInfo:   Parameter specifying axes orientation. Can be one of the
**                   following:
**         0   ACL_PAR_AXIS_XP - X-axis oriented in the gravitational direction
**         1   ACL_PAR_AXIS_XN - X-axis oriented opposite the gravitational
**                                  direction
**         2   ACL_PAR_AXIS_YP - Y-axis oriented in the gravitational direction
**         3   ACL_PAR_AXIS_YN - Y-axis oriented opposite the gravitational
**                                  direction
**         4   ACL_PAR_AXIS_ZP - Z-axis oriented in the gravitational direction
**         5   ACL_PAR_AXIS_ZN - Z-axis oriented opposite the gravitational
**                                  direction
**
**   Return Value:
**      None
**
**   Description:
**      The accepted argument values are between 0 and +5.
**      This function performs the calibration of the accelerometer by setting
**      the offset registers in the following manner:
**          Computes the correction factor that must be loaded in the offset
**          registers so that the acceleration readings are:
**              1 for the gravitational axis, if positive orientation
**             -1 for the gravitational axis, if negative orientation
**              0 for the other axes
**      The accepted argument values are between 0 and 5.
**      If the argument value is outside this range, the function does nothing.
**      The user should wait
*/
void ACL_CalibrateOneAxisGravitational(int fd, uint8_t bAxisInfo) {
	// Perform calibration
	float dX, dSumX = 0, dY, dSumY = 0, dZ, dSumZ = 0;
	// Set the offset registers to 0
	// Put the device into standby mode to configure it.
	ACL_SetMeasure(fd, 0);
	ACL_SetOffsetG(fd, ACL_PAR_AXIS_X, 0);
	ACL_SetOffsetG(fd, ACL_PAR_AXIS_Y, 0);
	ACL_SetOffsetG(fd, ACL_PAR_AXIS_Z, 0);
	ACL_SetMeasure(fd, 1);

	// Read average acceleration on the three axes
	int idxAvg;

	int nCntMeasurements = 128;
	// Consume some readings
	for (idxAvg = 0; idxAvg < nCntMeasurements; idxAvg++) {
		ACL_ReadAccelG(fd, &dX, &dY, &dZ);
	}

	// Compute average values
	for (idxAvg = 0; idxAvg < nCntMeasurements; idxAvg++) {
		ACL_ReadAccelG(fd, &dX, &dY, &dZ);
		dSumX = dSumX + dX;
		dSumY = dSumY + dY;
		dSumZ = dSumZ + dZ;
	}

	dX = dSumX / nCntMeasurements;
	dY = dSumY / nCntMeasurements;
	dZ = dSumZ / nCntMeasurements;

	// Computes the correction that must be put in the offset registers so that
	// the acceleration readings are:
	//   1 for the gravitational axis, if positive
	//  -1 for the gravitational axis, if negative
	//   0 for the other axes
	switch (bAxisInfo) {
	case ACL_PAR_AXIS_XP:
		dX = 1.0 - dX;
		dY = 0.0 - dY;
		dZ = 0.0 - dZ;
		break;
	case ACL_PAR_AXIS_XN:
		dX = -1.0 - dX;
		dY = 0.0 - dY;
		dZ = 0.0 - dZ;
		break;
	case ACL_PAR_AXIS_YP:
		dY = 1.0 - dY;
		dX = 0.0 - dX;
		dZ = 0.0 - dZ;
		break;
	case ACL_PAR_AXIS_YN:
		dY = -1.0 - dY;
		dX = 0.0 - dX;
		dZ = 0.0 - dZ;
		break;
	case ACL_PAR_AXIS_ZP:
		dZ = 1.0 - dZ;
		dY = 0.0 - dY;
		dX = 0.0 - dX;
		break;
	case ACL_PAR_AXIS_ZN:
		dZ = -1.0 - dZ;
		dY = 0.0 - dY;
		dX = 0.0 - dX;
		break;
	}

	// Put the device into standby mode to configure it.
	ACL_SetMeasure(fd, 0);

	// Set the offset data to registers
	ACL_SetOffsetG(fd, ACL_PAR_AXIS_X, dX);
	ACL_SetOffsetG(fd, ACL_PAR_AXIS_Y, dY);
	ACL_SetOffsetG(fd, ACL_PAR_AXIS_Z, dZ);
	ACL_SetMeasure(fd, 1);
}

/* ------------------------------------------------------------ */
/*** int ACL_Init(int fd)
**
**   Parameters:
**      fd: 				the PmodACL fd to communicate with
**
**   Return Value:
**      1: 					successfully initialized PmodACL
**      -1:					failed to initialize PmodACL
**
**   Description:
**      This function calibrates the PmodACL.
*/
int ACL_Init(int fd) {

	if (ioctl(fd, I2C_SLAVE, ACL_I2C_ADDR) < 0) {
		fprintf(stderr, "Failed to acquire bus access and/or talk to slave.\n");
		/* ERROR HANDLING; you can check errno to see what went wrong */
		return -1;
	}

	ACL_SetMeasure(fd, 0);
	ACL_SetGRange(fd, ACL_PAR_GRANGE_PM4G);
	ACL_SetMeasure(fd, 1);
	ACL_CalibrateOneAxisGravitational(fd, ACL_PAR_AXIS_ZP);
	usleep(1000); 	// After calibration, some delay is required for the new settings
			  	  	    // to take effect.

	return 1;

}

#endif // PMODACL_H

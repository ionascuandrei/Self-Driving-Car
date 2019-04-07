#ifndef PN532_RFID_H
#define PN532_RFID_H

//#define RFID_DEBUG


#define PN532_PREAMBLE                (0x00)
#define PN532_STARTCODE1              (0x00)
#define PN532_STARTCODE2              (0xFF)
#define PN532_POSTAMBLE               (0x00)

#define PN532_HOSTTOPN532             (0xD4)
#define PN532_PN532TOHOST             (0xD5)
#define PN532_ACK_WAIT_TIME           (10)  // ms, timeout of waiting for ACK

#define PN532_I2C_ADDRESS  			  0x24 //0x48>>1

#define PN532_INVALID_ACK             (-1)
#define PN532_TIMEOUT                 (-2)
#define PN532_INVALID_FRAME           (-3)
#define PN532_NO_SPACE                (-4)

// PN532 Commands
#define PN532_COMMAND_DIAGNOSE              (0x00)
#define PN532_COMMAND_GETFIRMWAREVERSION    (0x02)
#define PN532_COMMAND_GETGENERALSTATUS      (0x04)
#define PN532_COMMAND_READREGISTER          (0x06)
#define PN532_COMMAND_WRITEREGISTER         (0x08)
#define PN532_COMMAND_READGPIO              (0x0C)
#define PN532_COMMAND_WRITEGPIO             (0x0E)
#define PN532_COMMAND_SETSERIALBAUDRATE     (0x10)
#define PN532_COMMAND_SETPARAMETERS         (0x12)
#define PN532_COMMAND_SAMCONFIGURATION      (0x14)
#define PN532_COMMAND_POWERDOWN             (0x16)
#define PN532_COMMAND_RFCONFIGURATION       (0x32)
#define PN532_COMMAND_RFREGULATIONTEST      (0x58)
#define PN532_COMMAND_INJUMPFORDEP          (0x56)
#define PN532_COMMAND_INJUMPFORPSL          (0x46)
#define PN532_COMMAND_INLISTPASSIVETARGET   (0x4A)
#define PN532_COMMAND_INATR                 (0x50)
#define PN532_COMMAND_INPSL                 (0x4E)
#define PN532_COMMAND_INDATAEXCHANGE        (0x40)
#define PN532_COMMAND_INCOMMUNICATETHRU     (0x42)
#define PN532_COMMAND_INDESELECT            (0x44)
#define PN532_COMMAND_INRELEASE             (0x52)
#define PN532_COMMAND_INSELECT              (0x54)
#define PN532_COMMAND_INAUTOPOLL            (0x60)
#define PN532_COMMAND_TGINITASTARGET        (0x8C)
#define PN532_COMMAND_TGSETGENERALBYTES     (0x92)
#define PN532_COMMAND_TGGETDATA             (0x86)
#define PN532_COMMAND_TGSETDATA             (0x8E)
#define PN532_COMMAND_TGSETMETADATA         (0x94)
#define PN532_COMMAND_TGGETINITIATORCOMMAND (0x88)
#define PN532_COMMAND_TGRESPONSETOINITIATOR (0x90)
#define PN532_COMMAND_TGGETTARGETSTATUS     (0x8A)

#define PN532_RESPONSE_INDATAEXCHANGE       (0x41)
#define PN532_RESPONSE_INLISTPASSIVETARGET  (0x4B)


#define PN532_MIFARE_ISO14443A              (0x00)

// Mifare Commands
#define MIFARE_CMD_AUTH_A                   (0x60)
#define MIFARE_CMD_AUTH_B                   (0x61)
#define MIFARE_CMD_READ                     (0x30)
#define MIFARE_CMD_WRITE                    (0xA0)
#define MIFARE_CMD_WRITE_ULTRALIGHT         (0xA2)
#define MIFARE_CMD_TRANSFER                 (0xB0)
#define MIFARE_CMD_DECREMENT                (0xC0)
#define MIFARE_CMD_INCREMENT                (0xC1)
#define MIFARE_CMD_STORE                    (0xC2)


uint8_t command; //last command sent



void PrintHex(const uint8_t *data, const uint32_t numBytes)
{
    for (uint8_t i = 0; i < numBytes; i++) {
        printf(" %2X", data[i]);
    }
    printf("\n");
}

void PrintHexChar(const uint8_t *data, const uint32_t numBytes)
{
    for (uint8_t i = 0; i < numBytes; i++) {
        printf(" %2X", data[i]);
    }
    printf("    ");
    for (uint8_t i = 0; i < numBytes; i++) {
        char c = data[i];
        if (c <= 0x1f || c > 0x7f) {
            printf(".");
        } else {
            printf("%c", c);
        }

    }
    printf("\n");
}

int requestData(int fd, int8_t address, uint8_t *output, uint8_t length){
	int result = read(fd,output,length);

	//i2c_smbus_read_block_data(fd, 1, output);

	if (result != length) {
		//printf("Failed to read %d bytes from the i2c bus. Read %d bytes instead.\n", length, result);
		return result;
	} else {
		return length;
	}
}


int8_t readAckFrame(int fd) {
	const uint8_t PN532_ACK[] = {0, 0, 0xFF, 0, 0xFF, 0};
	uint8_t ackBuf[sizeof(PN532_ACK)+1];

	uint16_t time = 0;
	do {
		if (requestData(fd, PN532_I2C_ADDRESS, ackBuf, 7)==7) {
			if (ackBuf[0] & 1) {  // check first byte --- status
				break;         // PN532 is ready
			}
		}
		/*printf("ACK: ");
		for (int i=0; i<7; i++){
			printf(" 0x%x", ackBuf[i]);
		}
		printf("\n");
		*/

		usleep(1000);
		time++;
		if (time > PN532_ACK_WAIT_TIME) {
			printf("TIMEOUT ACK\n");
			return PN532_TIMEOUT;
		}
	} while (1);

	//requestData(fd, PN532_I2C_ADDRESS, ackBuf+1, 6);

	int ok=1;
	for (int i=0; i<sizeof(PN532_ACK); i++){
		if (ackBuf[1+i]!=PN532_ACK[i])
			ok=0;
	}


	//if (memcmp(ackBuf+1, PN532_ACK, sizeof(PN532_ACK))) {
	if (ok==0){
		printf("Invalid ACK\n");
		return PN532_INVALID_ACK;
	}

	return 0;
}

/**
    * @brief    write a command and check ack
    * @param    header  packet header
    * @param    hlen    length of header
    * @param    body    packet body
    * @param    blen    length of body
    * @return   0       success
    *           not 0   failed
    */

int8_t writeCommand(int fd, const uint8_t *header, uint8_t hlen, const uint8_t *body, uint8_t blen) {
	uint8_t iicbuf[10];
	command = header[0];

	iicbuf[0] = PN532_PREAMBLE;
	iicbuf[1] = PN532_STARTCODE1;
	iicbuf[2] = PN532_STARTCODE2;

	int8_t length = hlen + blen + 1;   // length of data field: TFI + DATA

	iicbuf[3] = length;
	iicbuf[4] = ~length +1;
	iicbuf[5] = PN532_HOSTTOPN532;

	// WRITE THE HEADER
	memcpy(iicbuf+6, header, hlen);

	// WRITE THE BODY
	if (body!=NULL && blen >0) {
		//memcpy(iicbuf, body, blen);
		//write(fd, iicbuf, blen);
		printf("BODY NOT SUPPORTED YET");
		return -42;
	}

	uint8_t sum = PN532_HOSTTOPN532;    // sum of TFI + DATA
	for (int i=0; i<hlen; i++) sum += header[i];

	if (body!=NULL && blen >0)
		for (int i=0; i<blen; i++) sum += body[i];

	iicbuf[6+hlen]= ~sum +1; //checksum
	iicbuf[7+hlen]=PN532_POSTAMBLE;

	if(write(fd, iicbuf, 8+hlen)!=8+hlen)
		return -1;

	return readAckFrame(fd);

}

int16_t getResponseLength(int fd, uint16_t timeout) {
	const uint8_t PN532_NACK[] = {0, 0, 0xFF, 0xFF, 0, 0};
	uint16_t time = 0;
	uint8_t iicbuf[7];


	do {
		if (requestData(fd, PN532_I2C_ADDRESS, iicbuf, 7)) {
			if (iicbuf[0] & 1) {  // check first byte --- status
				break;         // PN532 is ready
			}
		}

		usleep(1000);
		time++;
		if ((0 != timeout) && (time > timeout)) {

			printf("TIMEOUT RESPONSE LENGTH\n");
			return -1;
		}
	} while (1);


	if (0x00 != iicbuf[1]      ||       // PREAMBLE
			0x00 != iicbuf[2]  ||       // STARTCODE1
			0xFF != iicbuf[3]           // STARTCODE2
		) {

		return PN532_INVALID_FRAME;
	}

	uint8_t length = iicbuf[4];

	// request for last respond msg again

	write(fd, PN532_NACK, 6);

	return length;
}

/**
    * @brief    read the response of a command, strip prefix and suffix
    * @param    buf     to contain the response data
    * @param    len     lenght to read
    * @param    timeout max time to wait, 0 means no timeout
    * @return   >=0     length of response without prefix and suffix
    *           <0      failed to read response
    */
int16_t readResponse(int fd, uint8_t* buf, uint8_t len, uint16_t timeout) {
	uint16_t time = 0;
	int8_t length;
	uint8_t iicbuf[64];

	//requestData(fd, PN532_I2C_ADDRESS, iicbuf, sizeof(iicbuf));
	//length = iicbuf[3];

	// [RDY] 00 00 FF LEN LCS (TFI PD0 ... PDn) DCS 00
	do {
		if (requestData(fd, PN532_I2C_ADDRESS, iicbuf, sizeof(iicbuf))) {
			if (iicbuf[0] & 1) {  // check first byte --- status
				break;         // PN532 is ready
			}
		}

		usleep(1000);
		time++;
		if ((0 != timeout) && (time > timeout)) {
			printf("TIMEOUT RESPONSE\n");
			return -1;
		}
	} while (1);

	//###############################

	/*for (int i=0; i<30; i++){
		printf(" 0x%x", iicbuf[i]);
	}
	printf("\n");
	*/

	//###############################


	if (0x00 != iicbuf[1]      ||       // PREAMBLE
			0x00 != iicbuf[2]  ||       // STARTCODE1
			0xFF != iicbuf[3]           // STARTCODE2
		) {

		return PN532_INVALID_FRAME;
	}

	length = iicbuf[4];

	if (length<1){
		printf("Could not get response length. %d\n", length);
		return -1;
	}


	if (0 != (uint8_t)(length + iicbuf[5])) {   // checksum of length
		return PN532_INVALID_FRAME;
	}

	uint8_t cmd = command + 1;               // response command
	if (PN532_PN532TOHOST != iicbuf[6] || (cmd) != iicbuf[7]) {
		return PN532_INVALID_FRAME;
	}

	length -= 2;
	if (length > len) {
		return PN532_NO_SPACE;  // not enough space
	}

	uint8_t sum = PN532_PN532TOHOST + cmd;
	for (uint8_t i = 0; i < length; i++) {
		buf[i] = iicbuf[8+i];
		sum += buf[i];
	}

	uint8_t checksum = iicbuf[8+length];
	if (0 != (uint8_t)(sum + checksum)) {
		printf("Checksum invalid!\n");
		return PN532_INVALID_FRAME;
	}

	return length;
}


//#############################################################################


/**************************************************************************/
/*!
    @brief  Checks the firmware version of the PN5xx chip

    @returns  The chip's firmware version and ID
*/
/**************************************************************************/
uint32_t getFirmwareVersion(int fd)
{
    uint32_t response;
    uint8_t pn532_packetbuffer[64];

    pn532_packetbuffer[0] = PN532_COMMAND_GETFIRMWAREVERSION;

    if (writeCommand(fd, pn532_packetbuffer, 1, NULL, 0)<0) {
        return 0;
    }


    // read data packet
    int16_t status = readResponse(fd, pn532_packetbuffer, sizeof(pn532_packetbuffer), 1000);
    if (0 > status) {
        return 0;
    }


    response = pn532_packetbuffer[0];
    response <<= 8;
    response |= pn532_packetbuffer[1];
    response <<= 8;
    response |= pn532_packetbuffer[2];
    response <<= 8;
    response |= pn532_packetbuffer[3];

    return response;
}

/**************************************************************************/
/*!
    @brief  Configures the SAM (Secure Access Module)
*/
/**************************************************************************/
uint8_t SAMConfig(int fd)
{
	uint8_t pn532_packetbuffer[64];
    pn532_packetbuffer[0] = PN532_COMMAND_SAMCONFIGURATION;
    pn532_packetbuffer[1] = 0x01; // normal mode;
    pn532_packetbuffer[2] = 0x14; // timeout 50ms * 20 = 1 second
    pn532_packetbuffer[3] = 0x01; // use IRQ pin!

    if (writeCommand(fd, pn532_packetbuffer, 4, NULL, 0))
        return 0;

    int success =  readResponse(fd, pn532_packetbuffer, sizeof(pn532_packetbuffer), 1000);

    if (0 > success) {
		return 0;
	}

    return 0 < success;
}

/**************************************************************************/
/*!
    Sets the MxRtyPassiveActivation uint8_t of the RFConfiguration register

    @param  maxRetries    0xFF to wait forever, 0x00..0xFE to timeout
                          after mxRetries

    @returns 1 if everything executed properly, 0 for an error
*/
/**************************************************************************/
uint8_t setPassiveActivationRetries(int fd, uint8_t maxRetries)
{
	uint8_t pn532_packetbuffer[64];
    pn532_packetbuffer[0] = PN532_COMMAND_RFCONFIGURATION;
    pn532_packetbuffer[1] = 5;    // Config item 5 (MaxRetries)
    pn532_packetbuffer[2] = 0xFF; // MxRtyATR (default = 0xFF)
    pn532_packetbuffer[3] = 0x01; // MxRtyPSL (default = 0x01)
    pn532_packetbuffer[4] = maxRetries;

    if (writeCommand(fd, pn532_packetbuffer, 5, NULL, 0))
		return 0;

	return (0 < readResponse(fd, pn532_packetbuffer, sizeof(pn532_packetbuffer), 1000));
}

/**************************************************************************/
/*!
    Sets the RFon/off uint8_t of the RFConfiguration register

    @param  autoRFCA    0x00 No check of the external field before
                        activation

                        0x02 Check the external field before
                        activation

    @param  rFOnOff     0x00 Switch the RF field off, 0x01 switch the RF
                        field on

    @returns    1 if everything executed properly, 0 for an error
*/
/**************************************************************************/
uint8_t setRFField(int fd, uint8_t autoRFCA, uint8_t rFOnOff)
{
	uint8_t pn532_packetbuffer[64];
    pn532_packetbuffer[0] = PN532_COMMAND_RFCONFIGURATION;
    pn532_packetbuffer[1] = 1;
    pn532_packetbuffer[2] = 0x00 | autoRFCA | rFOnOff;

    if (writeCommand(fd, pn532_packetbuffer, 3, NULL, 0))
		return 0;

	return (0 < readResponse(fd, pn532_packetbuffer, sizeof(pn532_packetbuffer), 1000));
}

/***** ISO14443A Commands ******/

/**************************************************************************/
/*!
    Waits for an ISO14443A target to enter the field

    @param  cardBaudRate  Baud rate of the card
    @param  uid           Pointer to the array that will be populated
                          with the card's UID (up to 7 bytes)
    @param  uidLength     Pointer to the variable that will hold the
                          length of the card's UID.

    @returns 1 if everything executed properly, 0 for an error
*/
/**************************************************************************/
uint8_t readPassiveTargetID(int fd, uint8_t cardbaudrate, uint8_t *uid, uint8_t *uidLength, uint16_t timeout)
{
	uint8_t pn532_packetbuffer[64];
    pn532_packetbuffer[0] = PN532_COMMAND_INLISTPASSIVETARGET;
    pn532_packetbuffer[1] = 1;  // max 1 cards at once (we can set this to 2 later)
    pn532_packetbuffer[2] = cardbaudrate;


    if (writeCommand(fd, pn532_packetbuffer, 3, NULL, 0))
		return 0;

    // read data packet
    if (readResponse(fd, pn532_packetbuffer, sizeof(pn532_packetbuffer), timeout) < 0) {
        return 0x0;
    }

    // check some basic stuff
    /* ISO14443A card response should be in the following format:

      byte            Description
      -------------   ------------------------------------------
      b0              Tags Found
      b1              Tag Number (only one used in this example)
      b2..3           SENS_RES
      b4              SEL_RES
      b5              NFCID Length
      b6..NFCIDLen    NFCID
    */

    if (pn532_packetbuffer[0] != 1)
        return 0;

    uint16_t sens_res = pn532_packetbuffer[2];
    sens_res <<= 8;
    sens_res |= pn532_packetbuffer[3];


    /* Card appears to be Mifare Classic */
    *uidLength = pn532_packetbuffer[5];

    for (uint8_t i = 0; i < pn532_packetbuffer[5]; i++) {
        uid[i] = pn532_packetbuffer[6 + i];
    }

    return 1;
}

/***** Mifare Classic Functions ******/

/**************************************************************************/
/*!
      Indicates whether the specified block number is the first block
      in the sector (block 0 relative to the current sector)
*/
/**************************************************************************/
uint8_t mifareclassic_IsFirstBlock (uint32_t uiBlock)
{
    // Test if we are in the small or big sectors
    if (uiBlock < 128)
        return ((uiBlock) % 4 == 0);
    else
        return ((uiBlock) % 16 == 0);
}

/**************************************************************************/
/*!
      Indicates whether the specified block number is the sector trailer
*/
/**************************************************************************/
uint8_t mifareclassic_IsTrailerBlock (uint32_t uiBlock)
{
    // Test if we are in the small or big sectors
    if (uiBlock < 128)
        return ((uiBlock + 1) % 4 == 0);
    else
        return ((uiBlock + 1) % 16 == 0);
}


/**************************************************************************/
/*!
    Tries to authenticate a block of memory on a MIFARE card using the
    INDATAEXCHANGE command.  See section 7.3.8 of the PN532 User Manual
    for more information on sending MIFARE and other commands.

    @param  uid           Pointer to a byte array containing the card UID
    @param  uidLen        The length (in bytes) of the card's UID (Should
                          be 4 for MIFARE Classic)
    @param  blockNumber   The block number to authenticate.  (0..63 for
                          1KB cards, and 0..255 for 4KB cards).
    @param  keyNumber     Which key type to use during authentication
                          (0 = MIFARE_CMD_AUTH_A, 1 = MIFARE_CMD_AUTH_B)
    @param  keyData       Pointer to a byte array containing the 6 bytes
                          key value

    @returns 1 if everything executed properly, 0 for an error
*/
/**************************************************************************/
uint8_t mifareclassic_AuthenticateBlock (int fd, uint8_t *uid, uint8_t uidLen, uint32_t blockNumber, uint8_t keyNumber, uint8_t *keyData)
{
    uint8_t i;
    uint8_t pn532_packetbuffer[64];

    uint8_t _uid[7];  // ISO14443A uid
	uint8_t _uidLen;  // uid len
	uint8_t _key[6];  // Mifare Classic key

    // Hang on to the key and uid data
    memcpy (_key, keyData, 6);
    memcpy (_uid, uid, uidLen);
    _uidLen = uidLen;

    // Prepare the authentication command //
    pn532_packetbuffer[0] = PN532_COMMAND_INDATAEXCHANGE;   /* Data Exchange Header */
    pn532_packetbuffer[1] = 1;                              /* Max card numbers */
    pn532_packetbuffer[2] = (keyNumber) ? MIFARE_CMD_AUTH_B : MIFARE_CMD_AUTH_A;
    pn532_packetbuffer[3] = blockNumber;                    /* Block Number (1K = 0..63, 4K = 0..255 */
    memcpy (pn532_packetbuffer + 4, _key, 6);
    for (i = 0; i < _uidLen; i++) {
        pn532_packetbuffer[10 + i] = _uid[i];              /* 4 bytes card ID */
    }


    if (writeCommand(fd, pn532_packetbuffer, 10 + _uidLen, NULL, 0))
        return 0;

    // Read the response packet
    readResponse(fd, pn532_packetbuffer, sizeof(pn532_packetbuffer), 1000);

    // Check if the response is valid and we are authenticated???
    // for an auth success it should be bytes 5-7: 0xD5 0x41 0x00
    // Mifare auth error is technically byte 7: 0x14 but anything other and 0x00 is not good
    if (pn532_packetbuffer[0] != 0x00) {
        return 0;
    }

    return 1;
}


/**************************************************************************/
/*!
    Tries to read an entire 16-bytes data block at the specified block
    address.

    @param  blockNumber   The block number to authenticate.  (0..63 for
                          1KB cards, and 0..255 for 4KB cards).
    @param  data          Pointer to the byte array that will hold the
                          retrieved data (if any)

    @returns 1 if everything executed properly, 0 for an error
*/
/**************************************************************************/
uint8_t mifareclassic_ReadDataBlock (int fd, uint8_t blockNumber, uint8_t *data)
{
	uint8_t pn532_packetbuffer[64];

    /* Prepare the command */
    pn532_packetbuffer[0] = PN532_COMMAND_INDATAEXCHANGE;
    pn532_packetbuffer[1] = 1;                      /* Card number */
    pn532_packetbuffer[2] = MIFARE_CMD_READ;        /* Mifare Read command = 0x30 */
    pn532_packetbuffer[3] = blockNumber;            /* Block Number (0..63 for 1K, 0..255 for 4K) */

    /* Send the command */
    if (writeCommand(fd, pn532_packetbuffer, 4, NULL, 0)) {
        return 0;
    }

    /* Read the response packet */
    readResponse(fd, pn532_packetbuffer, sizeof(pn532_packetbuffer), 1000);

    /* If byte 8 isn't 0x00 we probably have an error */
    if (pn532_packetbuffer[0] != 0x00) {
        return 0;
    }

    /* Copy the 16 data bytes to the output buffer        */
    /* Block content starts at byte 9 of a valid response */
    memcpy (data, pn532_packetbuffer + 1, 16);

    return 1;
}

/**************************************************************************/
/*!
    Tries to write an entire 16-bytes data block at the specified block
    address.

    @param  blockNumber   The block number to authenticate.  (0..63 for
                          1KB cards, and 0..255 for 4KB cards).
    @param  data          The byte array that contains the data to write.

    @returns 1 if everything executed properly, 0 for an error
*/
/**************************************************************************/
uint8_t mifareclassic_WriteDataBlock (int fd, uint8_t blockNumber, uint8_t *data)
{
	uint8_t pn532_packetbuffer[64];

    /* Prepare the first command */
    pn532_packetbuffer[0] = PN532_COMMAND_INDATAEXCHANGE;
    pn532_packetbuffer[1] = 1;                      /* Card number */
    pn532_packetbuffer[2] = MIFARE_CMD_WRITE;       /* Mifare Write command = 0xA0 */
    pn532_packetbuffer[3] = blockNumber;            /* Block Number (0..63 for 1K, 0..255 for 4K) */
    memcpy (pn532_packetbuffer + 4, data, 16);        /* Data Payload */

    /* Send the command */
    if (writeCommand(fd, pn532_packetbuffer, 20, NULL, 0)) {
        return 0;
    }

    /* Read the response packet */
    return (0 < readResponse(fd, pn532_packetbuffer, sizeof(pn532_packetbuffer), 1000));
}


int init(){
	int fd;
	command = 0;
	if ((fd = open("/dev/i2c-1", O_RDWR)) < 0) {
		/* ERROR HANDLING: you can check errno to see what went wrong */
		printf("Failed to open the i2c bus\n");
		return -1;
	}
#ifdef RFID_DEBUG
	printf("Opened the bus\n");
#endif

	if (ioctl(fd,I2C_SLAVE_FORCE ,PN532_I2C_ADDRESS) < 0 ) {
		printf("Failed to acquire bus access and/or talk to slave.\n");
		/* ERROR HANDLING; you can check errno to see what went wrong */
		return -1;
	}
#ifdef RFID_DEBUG
	printf("Opened device \n");
#endif
	return fd;
}


int initRFID() {
	int fd = init();
	if (!fd) {
		printf("Error opening device");
		return -1;
	}
	uint32_t versiondata = getFirmwareVersion(fd);
	if (!versiondata) {
		printf("Didn't find PN53x board\n");
		return -1; // halt
	}

#ifdef RFID_DEBUG
	printf("Found chip PN5");
	printf("%x\n", (versiondata >> 24) & 0xFF);
	printf("Firmware ver. ");
	printf("%d", (versiondata >> 16) & 0xFF);
	printf(".");
	printf("%d\n", (versiondata >> 8) & 0xFF);
#endif

	if (SAMConfig(fd) != 0)
		return -1;

	return fd;

}

#endif

#include "PN532_rfid.h"
#include "cardQueue.h"
#include "cards.h"

#define TIMEOUT 1000
#define MAXCARDS 4

void runRFID(int fd, struct cardQueue *queue) {

	uint8_t success;
	uint8_t uid[6];
	uint8_t uidLength;

	uint8_t keya[6] = { 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF }; //default key
	uint8_t block = 4;
	uint8_t numCards = 0;

	while (numCards < MAXCARDS) {
#ifdef RFID_DEBUG
		printf("Waiting for card\n");
#endif
		memset(uid, 0, 6);
		success = readPassiveTargetID(fd, PN532_MIFARE_ISO14443A, uid,
				&uidLength, 0);
		if (success) {
			if (uidLength != 4)
				continue;

			success = mifareclassic_AuthenticateBlock(fd, uid, uidLength, block,
					0, keya);
			if (success) {
				uint8_t data[16];

				success = mifareclassic_ReadDataBlock(fd, block, data);
				if (success) {
					struct card *card = malloc(sizeof(card));
					card->type = data[0];
					memcpy(&card->UID, uid, 4);
					uint8_t result = insertCard(queue, card);
					if (result == 1) {
						numCards++;
#ifdef RFID_DEBUG
						printf("Inserted card\n");
#endif
					}

				} else {
#ifdef RFID_DEBUG
					printf("Read block failed.\n");
#endif
				}
			} else {
#ifdef RFID_DEBUG
				printf("Block auth failed.\n");
#endif
			}
		}
	}
}

void writeRFID(int fd, uint8_t *data) {
	uint8_t success;
	uint8_t uid[6];
	uint8_t uidLength;

	uint8_t keya[6] = { 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF }; //default key
	uint8_t block = 4;

	memset(uid, 0, 6);
	printf("Approach the card\n");
	success = readPassiveTargetID(fd, PN532_MIFARE_ISO14443A, uid, &uidLength,
			0);
	if (success) {
		if (uidLength == 4) {

			success = mifareclassic_AuthenticateBlock(fd, uid, uidLength, block,
					0, keya);
			if (success) {
				success = mifareclassic_WriteDataBlock(fd, block, data);
				if (success) {
					printf("Successfully wrote data!\n");
				}
			} else {
				printf("Read block failed.\n");
			}
		} else {
			printf("Block auth failed.\n");
		}
	}
}

int main(int argc, char *argv[]) {
	int fd = initRFID();
	if (fd < 0)
		return -1;

	if (argc > 1) {
		uint8_t cardType = atoi(argv[1]);
		uint8_t str[12];
		memset(str, 0, 12);
		printf("Enter the string you want written. Max 11 chars\n");
		fgets((char *) str, 12, stdin);
		printf("Writing card with type %d and string %s\n", cardType, str);

		uint8_t data[16];
		memset(data, 0, 16);
		data[0] = cardType;
		memcpy(data + 4, str, 12);

		writeRFID(fd, data);

	} else {

		struct cardQueue *queue = NULL;
		createCardQueue(&queue);

		runRFID(fd, queue);

		printQueue(queue);
		freeCardQueue(queue);
		free(queue);
	}

	close(fd);
	return 0;
}


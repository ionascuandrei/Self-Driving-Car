#ifndef CARDQUEUE_H
#define CARDQUEUE_H

#define CHECKDUPLICATES


#include <stdlib.h>
#include "PN532_rfid.h"

struct card {
	uint8_t type;
	uint32_t UID;
};

struct Node {
	struct card *card;
	struct Node *next;
};

struct cardQueue {
	struct Node *head;
	struct Node *last;
};

/**
 * Returns the number of cards inserted (0 or 1)
 */
int insertCard(struct cardQueue *q, struct card *card) {
#ifdef CHECKDUPLICATES
	if (q->last != NULL){
		if (card->UID == q->last->card->UID){
#ifdef RFID_DEBUG
			printf("##### DUPLICATE\n");
#endif
			return 0;
		}
	}
#endif
	struct Node *newnode = malloc(sizeof(struct Node));
	newnode->card=card;
	newnode->next = NULL;

	if (q->head == NULL) {
		q->head = newnode;
		q->last = newnode;
		return 1;
	}
	q->last->next = newnode;
	q->last = newnode;
	return 1;
}

struct card *getCard(struct cardQueue *q) {
	if (q->head == NULL)
		return NULL;

	return q->head->card;
}

struct card *popCard(struct cardQueue *q) {
	if (q->head == NULL)
		return NULL;

	struct Node *result = q->head;
	q->head = q->head->next;
	return result->card;
}

void createCardQueue(struct cardQueue **q) {
	if ((*q) != NULL)
		return;

	(*q) = malloc(sizeof(struct cardQueue));
	(*q)->head = NULL;
	(*q)->last = NULL;
}

static void freeNodes(struct Node *node){
	if (!node)
		return;

	if(node->card)
		free(node->card);

	if(node->next)
		freeNodes(node->next);
	free(node);
}

void freeCardQueue(struct cardQueue *q){
	freeNodes(q->head);
	q->head=NULL;
	q->last=NULL;
}


void printcard(struct card card) {
	printf("Card UID: %d, type: %d\n", card.UID, card.type);
}

void printQueue(struct cardQueue *q){
	printf("QUEUE:\n");
	struct card *card;
	card = popCard(q);
	while (card != NULL) {
		printcard(*card);
		card = popCard(q);
	}
	printf("END QUEUE ##############\n");
}

#endif

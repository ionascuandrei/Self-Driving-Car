#ifndef CARDQUEUE_H
#define CARDQUEUE_H

#define CHECKDUPLICATES

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
	uint32_t lastUID;
};

/**
 * Returns the number of cards inserted (0 or 1)
 */
int insertCard(struct cardQueue *q, struct card *card) {
#ifdef CHECKDUPLICATES
	if (q->last != NULL){
		if (card->UID == q->lastUID){
#ifdef RFID_DEBUG
			printf("##### DUPLICATE\n");
#endif
			return 0;
		}
	}
#endif
	struct Node *newnode = (struct Node *)malloc(sizeof(struct Node));
	newnode->card=card;
	newnode->next = NULL;

	if (q->head == NULL) {
		q->head = newnode;
		q->last = newnode;
		q->lastUID = newnode->card->UID;
		return 1;
	}
	q->last->next = newnode;
	q->last = newnode;
	q->lastUID = newnode->card->UID;
	return 1;
}

/**
 * Gets the top card in the queue
 */
struct card *getCard(struct cardQueue *q) {
	if (q->head == NULL)
		return NULL;

	return q->head->card;
}

/**
 * Gets the top card in the queue and removes it
 */
struct card *popCard(struct cardQueue *q) {
	if (q->head == NULL)
		return NULL;

	struct Node *result = q->head;
	q->head = q->head->next;
	//if (q->head == NULL)
	//	q->lastUID = 0;
	return result->card;
}

/**
 * Creates a new cardQueue object
 */
void createCardQueue(struct cardQueue **q) {
	if ((*q) != NULL)
		return;

	(*q) = (struct cardQueue *)malloc(sizeof(struct cardQueue));
	(*q)->head = NULL;
	(*q)->last = NULL;
	(*q)->lastUID = 0;
}

/**
 * Helper function used in freeing memory
 */
static void freeNodes(struct Node *node){
	if (!node)
		return;

	if(node->card)
		free(node->card);

	if(node->next)
		freeNodes(node->next);
	free(node);
}

/**
 * Frees the allocated meemory for the cardQueue
 */
void freeCardQueue(struct cardQueue *q){
	freeNodes(q->head);
	q->head=NULL;
	q->last=NULL;
}

//DEBUG AND PRINT FUNCTIONS

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

#ifndef QUEUE_APIS_H
#define QUEUE_APIS_H
#include "queuePrivate.h"

/*
	################################ READ ONLY DON'T EDIT ###############################
*/
typedef enum {
	QUEUE_NO_ERROR,
	QUEUE_FULL,
	QUEUE_EMPTY,
	QUEUE_NULL_OPERATION
}QUEUE_STATE;





QUEUE_STATE queue_create(queue_t *ptq);
QUEUE_STATE queue_add(queueEntery dataEnqueue ,queue_t *ptq);
QUEUE_STATE queue_get(queueEntery *dataEnqueue ,queue_t *ptq);
u8 queue_size(queue_t *ptq);




#endif


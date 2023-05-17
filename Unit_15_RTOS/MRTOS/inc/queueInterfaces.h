#ifndef QUEUE_APIS_H
#define QUEUE_APIS_H
#include "queuePrivate.h"

STACK_STATE queue_create(queue_t *ptq);
STACK_STATE queue_add(queueEntery dataEnqueue ,queue_t *ptq);
STACK_STATE queue_get(queueEntery *dataEnqueue ,queue_t *ptq);

#endif


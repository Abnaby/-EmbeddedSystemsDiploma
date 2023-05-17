#ifndef _QUEUE_PRIVATE_H
#define _QUEUE_PRIVATE_H
#include "stdio.h"
#include "queueConfig.h"
typedef workingDataType queueEntery;
/*************QUEUE********************/
typedef struct queue
{
	int _rear ; 
	int _front; 
	int _counter;
	queueEntery _queueArr[queueSize];
}queue_t;
/*
	################################ READ ONLY DON'T EDIT ###############################
*/
typedef enum {
	QUEUE_NO_ERROR,
	QUEUE_FULL,
	QUEUE_EMPTY,
	QUEUE_NULL_OPERATION
}STACK_STATE;


#endif

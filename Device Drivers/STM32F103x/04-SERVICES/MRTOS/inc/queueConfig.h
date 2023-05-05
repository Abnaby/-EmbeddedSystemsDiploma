#ifndef QUEUE_CONFIG_H
#define QUEUE_CONFIG_H
#include "MRTOS_Scheduler.h"
#include "MRTOS_Porting.h"
/*
	@stackSize
		Description: refer to size of queue
		Limitation : Must be an Integer Number.
*/
#define queueSize	MAX_NUM_OF_TASKS
/*
	@workingDataType
		Description: refer to stack size
		Limitation : Must be a standart type (int,floa,double and char).
*/
#define workingDataType MRTOS_Task*






#endif

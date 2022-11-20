#ifndef _STACK_PRIVATE_H
#define _STACK_PRIVATE_H
#include "stdio.h"
#include "stackConfig.h"
typedef workingDataType stackEntery;
typedef struct stack {
    int _stackTop;
    stackEntery _stackArray[stackSize];
}stack_t;
/*
	################################ READ ONLY DON'T EDIT ###############################
*/
typedef enum {
	STACK_NO_ERROR,
	STACK_FULL,
	STACK_EMPTY,
	STACK_NULL_OPERATION
}STACK_STATE;

#endif

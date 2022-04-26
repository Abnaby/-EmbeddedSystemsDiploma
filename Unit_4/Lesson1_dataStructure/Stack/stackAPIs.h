#ifndef STACK_APIS_H
#define STACK_APIS_H
#include "stackPrivate.h"

void stack_creation(stack_t *pointerToStack);
STACK_STATE stack_push(stackEntery enteryData,stack_t *pointerToStack);
STACK_STATE stack_pop(stackEntery *enteryData,stack_t *pointerToStack);
STACK_STATE stack_isEmpty(stack_t *pointerToStack);
STACK_STATE stack_isFull(stack_t *pointerToStack);
int stack_size(stack_t *pointerToStack);
STACK_STATE stack_clear(stack_t *pointerToStack);
STACK_STATE stack_traverse(stack_t *pointerToStack , void (*pf)(stackEntery));
STACK_STATE stack_print(stack_t *pointerToStack);
#endif


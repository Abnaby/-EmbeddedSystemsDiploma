#include "stackConfig.h"
#include "stackAPIs.h"
#include "stackPrivate.h"
#
void stack_creation(stack_t *pointerToStack)
{
    pointerToStack->_stackTop = 0;
}
STACK_STATE stack_push(stackEntery enteryData,stack_t *pointerToStack)
{
    /*  Check if it Full or not     */
    if(pointerToStack->_stackTop == stackSize-1)
        return STACK_FULL ;
    /*  If it not full add e=new entery */
    pointerToStack ->_stackArray[pointerToStack->_stackTop++] = enteryData ;
    return STACK_NO_ERROR ;
}
STACK_STATE stack_pop(stackEntery *enteryData,stack_t *pointerToStack)
{
    /* Check if it empty or not */
    if(pointerToStack->_stackTop == 0)
        return STACK_EMPTY ;
    /*  Add entery to *enteryData */
    pointerToStack->_stackTop -- ;
    *enteryData = pointerToStack->_stackArray[pointerToStack->_stackTop];
    return STACK_NO_ERROR ;
}
STACK_STATE stack_isEmpty(stack_t *pointerToStack)
{
    if(pointerToStack->_stackTop == 0)
        return STACK_EMPTY ;
    return STACK_NO_ERROR ;
}
STACK_STATE stack_isFull(stack_t *pointerToStack)
{
    if(pointerToStack->_stackTop == stackSize-1)
        return STACK_FULL ;
    return STACK_NO_ERROR ;
}
int stack_size(stack_t *pointerToStack)
{
    return pointerToStack->_stackTop;
}
STACK_STATE stack_clear(stack_t *pointerToStack)
{
    pointerToStack->_stackTop = 0 ;
    return STACK_NO_ERROR ;
}
STACK_STATE stack_traverse(stack_t *pointerToStack , void (*pf)(stackEntery))
{
    if(pointerToStack->_stackTop == 0)
        return STACK_EMPTY ;
    if(pf == NULL)
        return STACK_NULL_OPERATION;
    for(int i = pointerToStack->_stackTop ; i > 0 ; i--)
            (*pf)(pointerToStack->_stackArray[i]);
    return STACK_NO_ERROR ;
}
STACK_STATE stack_print(stack_t *pointerToStack)
{
    if(pointerToStack->_stackTop == 0)
        return STACK_EMPTY ;
    for (int i = 0 ; i < pointerToStack->_stackTop ; i++)
        printf("%d\n",pointerToStack->_stackArray[i]);
    return STACK_NO_ERROR ;
}

STACK_STATE stack_getTop(stackEntery *enteryData,stack_t *pointerToStack)
{
    if(pointerToStack->_stackTop == 0)
        return STACK_EMPTY ;	
	*enteryData = pointerToStack->_stackArray[pointerToStack->_stackTop];
}

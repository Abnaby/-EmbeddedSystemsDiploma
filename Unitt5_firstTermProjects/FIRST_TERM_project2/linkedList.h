#ifndef _LINKED_LISIT_H
#define _LINKED_LISIT_H
#include <stdio.h>
#include <stdlib.h>
#include "studentDB.h"

typedef studentInfo_t entery_t ;

typedef struct node
{
	entery_t data;
	struct node *nextNode;
}node_t;

typedef struct array_s
{
	node_t *head ;
	int number_ofNodes ;
}dynamicArray;

typedef enum {
	LIST_NO_ERROR,
	LIST_FULL,
	LIST_EMPTY,
	LIST_NULL_OPERATION,
	LIST_NOT_FOUND_DATA,
	LIST_DATA_EXIST
}STACK_STATE;
/***************** APIS ********************/
STACK_STATE linkedList_create(dynamicArray *p_toLinkedList );
STACK_STATE linkedList_insertItem(entery_t data,dynamicArray *p_toLinkedList);
STACK_STATE linkedList_popItem(entery_t *data,dynamicArray *p_toLinkedList);
STACK_STATE linkedList_deleteNthNode(int position, dynamicArray* p_toLinkedList);
STACK_STATE linkedList_searchNode(int key, int* index, dynamicArray* p_toLinkedList);
STACK_STATE linkedList_numOfNodes(int* result, dynamicArray* p_toLinkedList);
STACK_STATE linkedList_traverseList(dynamicArray* p_toLinkedList, void(*p2f)(entery_t data,int key),int key);






#endif // _LINKED_LISIT_H

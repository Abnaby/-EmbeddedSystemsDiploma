#include "linkedList.h"

STACK_STATE linkedList_create(dynamicArray *p_toLinkedList )
{
	if(p_toLinkedList != NULL)
    {
		p_toLinkedList->head = NULL ;
		p_toLinkedList->number_ofNodes = 0 ;
		return LIST_NO_ERROR;
    }
	else
		return LIST_NULL_OPERATION;
}
STACK_STATE linkedList_insertItem(entery_t data,dynamicArray *p_toLinkedList)
{
    if (p_toLinkedList != NULL)
    {
        //create a new node
        struct node* newNode = malloc(sizeof(struct node));
        newNode->data = data;
        newNode->nextNode = NULL;

        //if head is NULL, it is an empty list
        if (p_toLinkedList->head == NULL)
            p_toLinkedList->head = newNode;
        //Otherwise, find the last node and add the newNode
        else
        {
            struct node* lastNode = p_toLinkedList->head;
            //last node's next address will be NULL.
            while (lastNode->nextNode != NULL)
            {
                lastNode = lastNode->nextNode;
            }
            //add the newNode at the end of the linked list
            lastNode->nextNode = newNode;
        }
        p_toLinkedList->number_ofNodes++; 
        return LIST_NO_ERROR;
    }
    return LIST_NULL_OPERATION;
}
STACK_STATE linkedList_popItem(entery_t *data,dynamicArray *p_toLinkedList)
{
	/* 	Check if p_toLinkedList has successfully created */
	if(p_toLinkedList != NULL)
	{
	    if(p_toLinkedList->head != NULL)
        {
            node_t *tmp = p_toLinkedList->head;
            *data = tmp->data;
            p_toLinkedList->head = p_toLinkedList->head->nextNode;
            free(tmp);
            p_toLinkedList->number_ofNodes--;
            return LIST_NO_ERROR;
        }
        // is empty
        return LIST_EMPTY; 
	}
	return LIST_NULL_OPERATION;

}

STACK_STATE linkedList_deleteNthNode(int position, dynamicArray* p_toLinkedList)
{

    if (p_toLinkedList != NULL)
    {
        //if head is NULL, it is an empty list
        if (p_toLinkedList->head == NULL)
            return LIST_EMPTY;
        else
        {
            p_toLinkedList->number_ofNodes--; 
            node_t* current = p_toLinkedList->head; 
            node_t* prev = p_toLinkedList->head; 
            if (position == 1)
            {
                p_toLinkedList->head = p_toLinkedList->head->nextNode; 
                free(current);
                return LIST_NO_ERROR;
            }
            else
            {
                while (position != 1 )
                {
                    prev = current; 
                    current = current->nextNode; 
                    position--;
                }
                prev->nextNode = current->nextNode;
                free(current);

                return LIST_NO_ERROR;
            }
        }

    }
    return LIST_NULL_OPERATION;
}
STACK_STATE linkedList_searchNode(int key,int *index , dynamicArray* p_toLinkedList)
{
    if (p_toLinkedList == NULL)
        return LIST_NULL_OPERATION;
    //if head is NULL, it is an empty list
    if (p_toLinkedList->head == NULL)
        return LIST_EMPTY;

    node_t *temp = p_toLinkedList->head;
    int Local_index = 1;
    while (temp != NULL)
    {
        if (temp->data.roll == key)
        {
            *index = Local_index;
            return LIST_DATA_EXIST;
        }
        temp = temp->nextNode; 
        Local_index++;
    }
    return LIST_NOT_FOUND_DATA;
}
STACK_STATE linkedList_numOfNodes(int* result, dynamicArray* p_toLinkedList)
{
    if (p_toLinkedList == NULL)
        return LIST_NULL_OPERATION;
    *result = p_toLinkedList->number_ofNodes;
    return LIST_NO_ERROR;
}
STACK_STATE linkedList_traverseList(dynamicArray* p_toLinkedList, void(*p2f)(entery_t data,int key),int key)
{
    if (p_toLinkedList == NULL)
        return LIST_NULL_OPERATION;
    //if head is NULL, it is an empty list
    if (p_toLinkedList->head == NULL)
        return LIST_EMPTY;
    node_t *temp = p_toLinkedList->head;
    while (temp != NULL)
    {
        (*p2f)(temp->data,key);
        temp = temp->nextNode;
    }
    return LIST_NO_ERROR;
}
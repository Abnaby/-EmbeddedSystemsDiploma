/*
 * main.c
 *
 *  Created on: Oct 4, 2021
 *      Author: Abnaby
 */
#include <stdio.h>
void main ()
{
    int sumTO; 
    int result  = 0; 
    int forCounter = 0 ; 
    printf("Enter an number: ");
    scanf("%d",&sumTO);
    for(forCounter = 1 ; forCounter <= sumTO ;forCounter++ )
    {
        result+= forCounter;
    }

    printf("Sum %d",result);
}

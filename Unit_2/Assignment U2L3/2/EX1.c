/*
 * main.c
 *
 *  Created on: Oct 4, 2021
 *      Author: Abnaby
 */
#include <stdio.h>
void main ()
{
	int numToCheck = 0 ; 
	printf("Enter an integer you want to check: ");
	scanf("%d",&numToCheck);
	if(numToCheck % 2 == 0)
	    printf("%d is even.",numToCheck);
    else
        printf("%d is odd.",numToCheck);
}

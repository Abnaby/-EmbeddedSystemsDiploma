/*
 * main.c
 *
 *  Created on: Oct 4, 2021
 *      Author: Abnaby
 */
#include <stdio.h>
void main ()
{
	float num1 = 0  ; 
	printf("Enter a number: ");
	scanf("%f",&num1);
	if(num1 >0)
	    printf("%f is positve.",num1);
    else if(num1 < 0)
        printf("%f is negative.",num1);
    else
        printf("You entered zero.");
}

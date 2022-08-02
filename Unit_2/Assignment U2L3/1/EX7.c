/*
 * main.c
 *
 *  Created on: Oct 4, 2021
 *      Author: Abnaby
 */
#include <stdio.h>
void main ()
{
	float numberOne , numberTwo; 
	fflush(stdout); fflush(stdin) ; 
	printf("Enter value of a:");
	scanf("%f",&numberOne) ;
    printf("Enter value of b:");
    scanf("%f",&numberTwo) ;
    numberOne = numberOne + numberTwo ; 
    numberTwo = numberOne - numberTwo ; 
    numberOne = numberOne - numberTwo ; 
	printf("After swapping, value of a = %f \r\nAfter swapping, value of b = %f ",numberOne,numberTwo);
}

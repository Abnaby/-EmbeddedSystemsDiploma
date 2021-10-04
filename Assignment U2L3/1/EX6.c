/*
 * main.c
 *
 *  Created on: Oct 4, 2021
 *      Author: Abnaby
 */
#include <stdio.h>
void main ()
{
	float numberOne , numberTwo , tempForSwapping; 
	fflush(stdout); fflush(stdin) ; 
	printf("Enter value of a:");
	scanf("%f",&numberOne) ;
    printf("Enter value of b:");
    scanf("%f",&numberTwo) ;
	tempForSwapping = numberOne ;
	numberOne = numberTwo ; 
	numberTwo = tempForSwapping ;  
	printf("After swapping, value of a = %0.2f \r\nAfter swapping, value of b = %0.1f ",numberOne,numberTwo);
}

/*
 * main.c
 *
 *  Created on: Oct 4, 2021
 *      Author: Abnaby
 */
#include <stdio.h>
void main ()
{
	float num1 = 0 , num2 =0 , num3 = 0  ; 
	printf("Enter three numbers: ");
	scanf("%f %f %f",&num1,&num2,&num3);
    if(num1 > num2)
    {
        if(num1 > num3)
        {
            printf("Largest number = %f",num1);
        }
        else
        {
            printf("Largest number = %f",num3); 
        }
    }
    else
    {
        if(num2 > num3)
        {
            printf("Largest number = %f",num2);
        }
        else
        {
            printf("Largest number = %f",num3); 
        }
    }
}

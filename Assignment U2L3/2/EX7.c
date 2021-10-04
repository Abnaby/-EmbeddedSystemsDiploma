/*
 * main.c
 *
 *  Created on: Oct 4, 2021
 *      Author: Abnaby
 */
#include <stdio.h>
void main ()
{
    int factorialTO; 
    int result  = 1; 
    int forCounter = 0 ; 
    printf("Enter an integer: ");
    scanf("%d",&factorialTO);
    if(factorialTO > 0 )
    {
        for(forCounter = 2 ; forCounter <= factorialTO ;forCounter++ )
        {
            result*= forCounter;
        }   
    }
    else if (factorialTO == 0)
    {
        result = 1 ;
    }
    else
    {
        printf("Error!!! Factorial of negative number doesn't exist.");
    }


    printf("Factorial %d",result);
}

/*
 * main.c
 *
 *  Created on: Oct 4, 2021
 *      Author: Abnaby
 */
#include <stdio.h>
void main ()
{
    char charToCheck ; 
    printf("Enter an alphabet: ");
    scanf("%c",&charToCheck);
    switch(charToCheck)
    {
        case 'a':
        case 'A':
        case 'e':
        case 'E':
        case 'o':
        case 'O':
        case 'i':
        case 'I':
        case 'u':
        case 'U':
        printf("%c is a vowel" , charToCheck);
        break ; 
        default: 
        printf("%c is a consonant" , charToCheck);
        break ; 
    }
}

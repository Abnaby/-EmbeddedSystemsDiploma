#include <stdio.h>

int main()
{
    int numofElements ; 
    char arr [100];
    char newChar ; 
    int counter = 0 ;
    int result = 0 ; 
    printf("Enter a string: ");
    gets(arr);
    printf("Enter a character to find frequency: ");
    scanf("%c",&newChar);
    for(counter = 0 ; counter < sizeof(arr) ; counter++)
    {
        if(arr[counter] == '\0')
        {
            break ; 
        }
        else if(arr[counter] == newChar)
        {
           result++; 
        }
        else
        {
            /*
            do nothing
            */
        }

    }


    printf ("Frequency of %c = %d" , newChar, result);

    return 0;
}

#include <stdio.h>
#include <string.h>
int main()
{
    int numofElements ; 
    char arr [100];
    int counter = 0 ; 
    printf("Enter the string: ");
    gets(arr);
    printf("Reversed string is : ");
    for(counter= strlen(arr) -1  ; counter >=0   ; counter--)
    {
        printf("%c" , arr[counter]);
    }
    return 0;
}

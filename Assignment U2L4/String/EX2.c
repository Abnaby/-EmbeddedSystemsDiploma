#include <stdio.h>
#include <string.h>
int main()
{
    int numofElements ; 
    char arr [100];
    printf("Enter a string: ");
    gets(arr);
    printf("Length of string: %ld",strlen(arr));
    return 0;
}


#include <stdio.h>
#include <string.h>
void revWord(char arr[], int length);
int g_counter = 0;
int main()
{
    char word[40];
    printf("Enter a sentance: ");
    gets(word);
    g_counter = 0;
    revWord(word, strlen(word));
    return 0;
}
void revWord(char arr[], int length)
{

    if (arr[g_counter++] == '\0')
    {
        g_counter--;
        return;
    }
    else
    {
        revWord(arr, g_counter);
        g_counter--;
        printf("%c", arr[g_counter]);
    }
}

#include <stdio.h>
#include "stackAPIs.h"
/********************************** Example ***********************/
/* ###############################Balanced Parentheses ############################## */
int Balanced_Parentheses(char *arr);
int charCompare(char, char);
int main()
{
    char str[stackSize];
    printf("Enter String With in range of length %d char\n",stackSize);
    fgets(str, stackSize, stdin);
    if(Balanced_Parentheses(str))
        printf("Balanced");
    else
        printf("Not Balanced");
    return 0 ;
}

int Balanced_Parentheses(char *arr)
{
    stack_t word ;
    stack_creation(&word);
    int i = 0 ;
    while (arr[i] != '\0')
    {
        if (arr[i] == '[' || arr[i] == '(' || arr[i] == '{')
        {
            stack_push(arr[i],&word);
        }
        else if (arr[i] == ']' || arr[i] == ')' || arr[i] == '}')
        {
            /* Compare between top of stack and current character */
            char topOfStack;
            stack_pop(&topOfStack,&word);
            if(!charCompare(topOfStack,arr[i]))
            {
                 stack_push(topOfStack,&word);
                 return 0 ;
            }
        }
        i++;
    }
    if(stack_isEmpty(&word) == STACK_EMPTY)
        return 1 ;
    return 0 ;
}
int charCompare(char start, char end)
{
	return ((start == '[' && end == ']') || (start == '{' && end == '}') || (start == '(' && end == ')'));

}

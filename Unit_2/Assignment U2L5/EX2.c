/******************************************************************************

Welcome to GDB Online.
GDB online is an online compiler and debugger tool for C, C++, Python, Java, PHP, Ruby, Perl,
C#, VB, Swift, Pascal, Fortran, Haskell, Objective-C, Assembly, HTML, CSS, JS, SQLite, Prolog.
Code, Compile, Run and Debug online from anywhere in world.

*******************************************************************************/
#include <stdio.h>
int fact(int to);
int main()
{
    int to ; 
    printf("Enter an positive integer: ");
    scanf("%d",&to);
    if(to<0)
        printf("Negtive Number");
    else
        printf("Factorial of %d = %d",to,fact(to));

    

    return 0;
}
int fact(int to)
{
    int result ; 
    if(to == 0 || to == 1)
        result =  1;
    else
    {
        result = to * fact(to-1);
    }
    return result ;
}

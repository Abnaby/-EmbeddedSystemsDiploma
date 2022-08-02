/******************************************************************************

Welcome to GDB Online.
GDB online is an online compiler and debugger tool for C, C++, Python, Java, PHP, Ruby, Perl,
C#, VB, Swift, Pascal, Fortran, Haskell, Objective-C, Assembly, HTML, CSS, JS, SQLite, Prolog.
Code, Compile, Run and Debug online from anywhere in world.

*******************************************************************************/
#include <stdio.h>
void printPrime(int from,int to);
int main()
{
    int from , to ; 
    printf("Enter two numbers(intervals): ");
    scanf("%d %d",&from,&to);
    printPrime(from,to);
    

    return 0;
}
void printPrime(int from,int to)
{
    int counter , counter2; 
    int isPrime = 1 ; 
    printf("Prime numbers between %d and %d are: ",from,to);
    for(counter = from ; counter<to ; counter++)
    {
        if(counter == 0 || counter == 1)
            continue ; 
        else
        {
            for(counter2 = 2 ; counter2 < counter ; counter2++)
            {
                if(counter % counter2 == 0)
                {
                    isPrime = 0;
                    break ;
                }
            }
            if(isPrime)
            {
                printf("%d ",counter);
            }
            isPrime = 1 ; 
        }
    }
}
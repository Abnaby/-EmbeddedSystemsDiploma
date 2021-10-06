#include <stdio.h>

int main()
{
    int numofElements ; 
    float newNumber ;
    float arr [100];
    int counter = 0 ;
    printf("Enter number of elements: ");
    scanf("%d",&numofElements);
    for(counter = 0 ; counter < numofElements ; counter++)
    {
        scanf("%f",&arr[counter]);
    }
    printf("Enter the elements to be searched : ");
    scanf("%f",&newNumber);

    for(counter = 0 ; counter < numofElements+1 ; counter++)
    {
        if(arr[counter] == newNumber)
        {
            printf("Number found at location = %d ",counter+1);
            break ; 
        }
            
    }

    return 0;
}

#include <stdio.h>

int main()
{
    int numofElements ; 
    float newNumber ;
    int index ; 
    float arr [100];
    int counter = 0 ;
    printf("Enter number of elements: ");
    scanf("%d",&numofElements);
    for(counter = 0 ; counter < numofElements ; counter++)
    {
        scanf("%f",&arr[counter]);
    }
    printf("Enter the elements to be inserted : ");
    scanf("%f",&newNumber);
    printf("Enter the location : ");
    scanf("%d",&index);
    index = index-1 ; 
    for(counter= numofElements; counter >= 0 ; counter--)
    {
        if(counter < index) 
        {
            //do nothing
        }
        else if (counter == index)
        {
            arr[counter+1]=arr[counter];
            arr[counter] = newNumber ; 
        }
        else
        {
            arr[counter+1]=arr[counter];
        }
    }
    for(counter = 0 ; counter < numofElements+1 ; counter++)
    {
            printf("%f ",arr[counter]);
    }

    return 0;
}

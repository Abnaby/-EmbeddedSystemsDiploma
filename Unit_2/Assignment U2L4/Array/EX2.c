#include <stdio.h>

int main()
{
    int numofData = 0 ;
    float arr[100];
    float result = 0  ;
    int counter = 0 ; 
    printf("Enter the number of data: ");
    scanf("%d",&numofData);
    for(counter = 0 ; counter < numofData ; counter++ )
    {
        printf("%d. Enter Number: ",counter+1);
        scanf("%f" ,&arr[counter]);
    }
    for(counter = 0 ; counter < numofData ; counter++ )
    {
        result += arr[counter];
        
    }  
    result = result/numofData ; 
    printf("Average = %f",result);
    return 0;
}

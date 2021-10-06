#include <stdio.h>

int main()
{
    int row,col ; 
    int rowCounter,colCounter ; 
    float givenMatrix [10][10];
    float resultMatrix [10][10];
    printf("Enter rows and colum of matrix:");
    scanf("%d %d",&row,&col);
    printf("Enter elements of matrix:");
    for(rowCounter= 0 ; rowCounter < row ; rowCounter++)
    {
        for(colCounter = 0 ;colCounter<col ; colCounter++ )
        {
            printf("Enter elements a%d%d: ",rowCounter+1 ,colCounter+1);
            scanf("%f",&givenMatrix[rowCounter][colCounter]);
        }
        
    }
    printf("Entered Matrix: \n");
    for(rowCounter= 0 ; rowCounter < row ; rowCounter++)
    {
        for(colCounter = 0 ;colCounter<col ; colCounter++ )
        {
            resultMatrix[colCounter][rowCounter] = givenMatrix[rowCounter][colCounter] ; 
            printf("%f: ",givenMatrix[rowCounter][colCounter]);
        }
        printf("\n");
    }
    printf("Transpose of Matrix:\n");
    for(colCounter= 0 ; colCounter < col ; colCounter++)
    {
        for(rowCounter = 0 ;rowCounter<row ; rowCounter++ )
        {
            printf("%f: ",resultMatrix[colCounter][rowCounter]);
        }
        printf("\n");
    }
    return 0;
}

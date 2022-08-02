#include <stdio.h>
#include <stdlib.h>

int main()
{
    char matrix[4][4];
    float matrixOne [2][2] ;
    float matrixTwo [2][2] ;
    float result [2][2] ;
    int rowCounter = 0 , colCounter = 0  ;
    printf("Hello World");
   printf("Enter the elements of 1st matrix \r\n");
    for(rowCounter = 0 ; rowCounter < 4 ; rowCounter++ )
    {
        if(rowCounter < 2)
        {
           
            printf("Enter a%d%d: " ,1 , colCounter+1);
            gets(&matrix[rowCounter]);
            matrixOne[0][colCounter] = atof(&matrix[rowCounter]);
             colCounter = (rowCounter==1)?0:++colCounter;
        }
        else
        {
            printf("Enter a%d%d: " ,2 , colCounter+1);
            gets(&matrix[rowCounter]);
            matrixOne[1][colCounter] = atof(&matrix[rowCounter]); 
            colCounter++;
        }
    }
    colCounter  = 0 ;
    printf("Enter the elements of 2st matrix \r\n");
    for(rowCounter = 0 ; rowCounter < 4 ; rowCounter++ )
    {
        if(rowCounter < 2)
        {
           
            printf("Enter a%d%d: " ,1 , colCounter+1);
            gets(&matrix[rowCounter]);
            matrixTwo[0][colCounter] = atof(&matrix[rowCounter]);
             colCounter = (rowCounter==1)?0:++colCounter;
        }
        else
        {
            printf("Enter a%d%d: " ,2 , colCounter+1);
            gets(&matrix[rowCounter]);
            matrixTwo[1][colCounter] = atof(&matrix[rowCounter]); 
            colCounter++;
        }
    }
   
    /*                      MAKE OPERATION                      */
    
    for(rowCounter = 0 ; rowCounter <2 ; rowCounter++ )
    {
        for(colCounter = 0 ; colCounter < 2 ; colCounter++ )
        {
          result[rowCounter][colCounter] = matrixOne[rowCounter][colCounter] + matrixTwo[rowCounter][colCounter] ;
        }
    }
    /*                      print                           */
    printf("Sum of Matrix:\r\n");
    for(rowCounter = 0 ; rowCounter < 2 ; rowCounter++)
    {
        for(colCounter = 0 ; colCounter <2 ; colCounter++ )
        {
            result[rowCounter][colCounter] = matrixOne[rowCounter][colCounter] + matrixTwo[rowCounter][colCounter] ;
            printf("%0.1f   ",result[rowCounter][colCounter]) ;
        }
        printf("\n");
    }  
    return 0;
}

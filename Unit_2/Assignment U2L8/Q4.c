#include <stdio.h>
#include <string.h>

int main(void) {
  int arr[15];
  int elements = 0 ;  
  printf("Input the number of elements to store in the array (max 15) :"); 
  int i = 0 ; 
  scanf("%d",&elements);
  printf("Input %d number of elements in the array :\n",elements);
  /*        Take An array           */
  for(i=0 ; i<elements ; i++)
  {
    printf("Element-%d : ",i+1);
    scanf("%d",&arr[i]);
  }
  int*ptr = arr+elements-1 ; 

  /*        Inverse using pointer          */
  printf("The elements of array in reverse order are : \n");
  i-- ; 
  while(i!= -1)
  {
    printf("Element-%d : ",i+1);
    printf("%d\n",*ptr);
    ptr-- ; 
    i--;
  }

  

  


  
  return 0;
}
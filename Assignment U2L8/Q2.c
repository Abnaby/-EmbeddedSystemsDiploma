#include <stdio.h>

int main(void) {
  char alph[26] = {} ; 
  char *ptr = alph ;
  int counter = 0 ; 

  for(counter=0 ; counter <26 ; counter++)
  {
    *ptr = counter + 'A' ;
    ptr++; 
  }
  ptr = alph ; 
  for(counter=0 ; counter <26 ; counter++)
  {
    printf("%c " ,*ptr) ; 
    ptr++; 
  }
  
  
  return 0;
}
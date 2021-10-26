#include <stdio.h>
#include <string.h>

int main(void) {
  char string[20]; 
  printf("Input string : "); 
  gets(string); 
  printf("Reverse of the string is: ");
  int stringLength = strlen(string) ; 
  char *p_string = string ; 
  int i = 0 ; 
  while(i != stringLength-1)
  {
    i++ ; 
    p_string++;
  }
  for(i=0 ; i < stringLength ; i++)
  {
    printf("%c",*p_string);
    p_string-- ; 
  }

  


  
  return 0;
}
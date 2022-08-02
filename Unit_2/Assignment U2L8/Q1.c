#include <stdio.h>

int main(void) {
  int m = 29 ; 
  int* pm = &m ; 
  printf("Address of m = %p \nvalue of m = %d\n",(unsigned int*)pm,*pm);
  int* pab = &m ; 
  printf("Now ab is assigned with the address of m.\n");
  printf("Address of ab = %p \nvalue of ab = %d\n",(unsigned int*)pab,*pab);
  printf("The value of m assigned to 34 now.\n");
  m = 34 ; 
  printf("Address of ab = %p \nvalue of ab = %d\n",(unsigned int*)pab,*pab);
  printf("The pointer variable ab is assigned with the value 7 now. \n");
  printf("Address of m = %p \nvalue of m = %d\n",(unsigned int*)&m,m);

  return 0;
}
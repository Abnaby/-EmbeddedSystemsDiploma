#include <stdio.h>

struct Scomplex
{
  
    float real;
    float img;
    
    
};
void display( struct Scomplex *s1,struct Scomplex *s2);
int main()
{
    struct Scomplex d1,d2;
    printf("Entar 1st complex number:\nEnter real and imaginary respectively: ");
    scanf("%f",&d1.real);
    scanf("%f",&d1.img);
    printf("Entar 2nd complex number:\nEnter real and imaginary respectively: ");
    scanf("%f",&d2.real);
    scanf("%f",&d2.img);
    display(&d1,&d2);
    

    return 0;
}
void display( struct Scomplex *s1,struct Scomplex *s2)
{
    printf("sum=%0.1f+%0.1fi",s1->real+s2->real,s1->img+s2->img);
}

#include <stdio.h>

#define PI 3.14
#define AREA(R) (PI*R*R)

int main()
{

    printf("Enter The Redius: ");
    float r ; 
    scanf("%f",&r);

    printf("Area = %0.2f",AREA(r));
    return 0;
}


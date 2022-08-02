
#include <stdio.h>
#include <string.h>
int powerCalc (int base , int power);
int main()
{
    int base = 0 ,power = 0 ; 
    printf("Enter base number: ");
    scanf("%d" , &base);
    printf("Enter power number(positive integer): ");
    scanf("%d" , &power);
    if(power >= 0)
    {
        printf("%d ^ %d = %d",base , power , powerCalc(base,power));

    }
    return 0;
}
int powerCalc (int base , int power)
{
    if(power == 1)
    {
        return base ; 
    }
    else
    {
        base = base * powerCalc(base,power-1);
    }
}
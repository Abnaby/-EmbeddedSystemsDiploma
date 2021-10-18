#include <stdio.h>
#define InchToFeet(inch) (inch/12)
struct distance
{
  
    float feet;
    float inch;
    
    
};
struct distance add_distances(struct distance* distance1,struct distance* distance2);
int main()
{
    struct distance d1,d2;
    printf("Entar Information for 1st distance:\nEnter Feet: ");
    scanf("%f",&d1.feet);
    printf("Enter Inchs: ");
    scanf("%f",&d1.inch);
    printf("Entar Information for 2nd distance:\nEnter Feet: ");
    scanf("%f",&d2.feet);
    printf("Enter Inchs: ");
    scanf("%f",&d2.inch);
    struct distance sum ; 
    sum = add_distances(&d1,&d2);
	printf("Sum of distance=%0.1f'%.1f\"",sum.feet, sum.inch);

    return 0;
}
struct distance add_distances(struct distance* distance1,struct distance* distance2)
{
    struct distance sum;
	int sum_inch = distance1->inch + distance2->inch ;
	sum.feet = distance1->feet + distance2->feet + InchToFeet(sum_inch); 
	sum.inch = distance1->inch + distance2->inch - sum_inch +sum_inch%12;
	return sum ; 
}
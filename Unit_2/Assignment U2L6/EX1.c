#include <stdio.h>

struct student
{
    char name[50];
    int rollNo;
    float marks;
    
};
void displayData(struct student *s);
int main()
{
    struct student s;
    printf("Entar Name: ");
    gets(s.name);
    printf("Entar roll number: ");
    scanf("%d",&s.rollNo);
    printf("Entar Marks: ");
    scanf("%f",&s.marks);
    displayData(&s);

    return 0;
}
void displayData(struct student *s)
{
   printf("Dispalying Information\n");
   printf("named: %s\nRoll: %d\nMarks: %f",s->name,s->rollNo,s->marks);
}
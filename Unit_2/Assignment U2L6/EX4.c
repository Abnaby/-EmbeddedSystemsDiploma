#include <stdio.h>
#define print(...) printf(__VA_ARGS__);fflush(stdin);fflush(stdout);
#define scan(...) scanf(__VA_ARGS__);fflush(stdin);fflush(stdout);

struct student
{
    char name[50];
    int rollNo;
    float marks;

};
void displayData(struct student s[],int size);
int main()
{

    struct student s[10];
    int i = 0 ;
    fflush(stdin);fflush(stdout);
    for(i=0; i<10;i++)
    {
        print("Entar Name: ");
        gets(s[i].name);
        print("Entar roll number: ");
        scan("%d",&s[i].rollNo);
        print("Entar Marks: ");
        scan("%f",&s[i].marks);
    }

    displayData(s,10);

    return 0;
}
void displayData(struct student s[],int size)
{
    int i = 0 ;
    for(i=0;i<size;i++)
    {
    	fflush(stdin);fflush(stdout);
        print("Dispalying Information\n");
        print("named: %s\nRoll: %d\nMarks: %f\n",s[i].name,s[i].rollNo,s[i].marks);
    }

}

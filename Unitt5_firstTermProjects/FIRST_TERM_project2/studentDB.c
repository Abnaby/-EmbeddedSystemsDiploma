#include "studentDB.h"
#include "linkedList.h"
#include <string.h>
#define Dprint printf
#define Dscan scanf_s
#define CMPI(n1,n2) _strcmpi(n1,n2)
#define OPEN_FILE fopen
#define READ_FILE fscanf
static dynamicArray student_arr;
static void courseList(entery_t structData, int id);
static void editStudentInfo(entery_t structData, int key);
static void printStudentInfo(studentInfo_t stud);
static STACK_STATE linkedList_searchNodeByRoll(int key, studentInfo_t *stud, dynamicArray* p_toLinkedList);
static STACK_STATE linkedList_searchNodeByFName(char fName[], studentInfo_t* stud, dynamicArray* p_toLinkedList);

void initDataBase()
{
    linkedList_create(&student_arr);
}
void add_student_manually()
{
	Dprint(" ------------------------\n");
	Dprint(" Add the student details\n");
	Dprint(" ------------------------\n");
	Dprint(" \t Enter the roll number: ");
    int local_state = 0;
	int rollNumber = 0;
	Dscan("%d", &rollNumber);
	/* Check RollNumber reabpeted or not */
    studentInfo_t RollRepeatedStudent;
    local_state = check_rollNumber(rollNumber,&RollRepeatedStudent);
    // exist previous
    if (local_state == 1)
    {
        Dprint(" \t [ERROR] Roll number %d is already taken\n", rollNumber);
        return;
    }
    else if (local_state == -1)
    {
        Dprint(" \t [ERROR] Exist Error In List\n");
        return;
    }
    else
    {
        studentInfo_t stud;
        stud.roll = rollNumber;
        Dprint(" \t Enter first name of student: ");
        Dscan("%s", stud.fname, sizeof(stud.fname));
       // fgets(stud.fname, 50, stdin);
        Dprint(" \t Enter last name of student: ");
        //fgets(stud.lname, 50, stdin);
        //Dscan("%s", stud.lname);
        Dscan("%s", stud.lname, sizeof(stud.lname));
        Dprint(" \t Enter the GPA you obtained: ");
        Dscan("%f", &stud.gpa);
        Dprint(" \t Enter the courses ID\n");
        int i = 0;
        for (i = 0; i < NUM_OF_COURSES; i++)
        {
            Dprint(" \t Course %d ID: ", i + 1);
            Dscan("%d", &stud.cid[i]);
        }
        local_state = linkedList_insertItem(stud, &student_arr);
        if(local_state == LIST_NO_ERROR)
            Dprint(" [INFO] Student details is added successfully\n");
    }
}
#define fileName "data.txt"
void add_student_file()
{
    FILE* fptr;
    if ((fptr = OPEN_FILE(fileName, "r")) == NULL) {
        printf("Error! opening file");
        return;
    }
    // read buffer
    char buffer[50];
    studentInfo_t stud;
    int rollNumber;
    int Cheack_EOF;
    int local_state;
    /* Read Roll number */
    while(1)
    {
        READ_FILE(fptr, "%s", buffer);
        rollNumber = atoi(buffer);
        stud.roll = rollNumber;
        /************************ Check Roll Number ************************/
        studentInfo_t RollRepeatedStudent;
        local_state = check_rollNumber(rollNumber, &RollRepeatedStudent);
        /* Read First name */
        READ_FILE(fptr, "%s", stud.fname);
        /* Read Last name */
        READ_FILE(fptr, "%s", stud.lname);
        /* Read GPA */
        READ_FILE(fptr, "%s", buffer);
        stud.gpa = atof(buffer);
        /* Read Courses */
        int i = 0;
        for (i = 0; i < NUM_OF_COURSES; i++) {
            /* Read Courses ID */
           Cheack_EOF =  READ_FILE(fptr, "%s", buffer);
            stud.cid[i] = atoi(buffer);
        }
                // Check Roll Number
        if (local_state == 1)
        {
            Dprint(" \t [ERROR] Roll number %d is already taken\n", rollNumber);
            continue;
        }
        else if (local_state == -1)
        {
            Dprint(" \t [ERROR] Exist Error In List\n");
            continue;
        }
        /* Inset Student in Linkedlist */
        local_state = linkedList_insertItem(stud, &student_arr);
        if (LIST_NO_ERROR == local_state)
        {
            Dprint(" \t [INFO] Roll number %d saved successfully\n", rollNumber);
        }
        else
        {
            Dprint(" \t [ERROR] Roll number %d saved successfully\n", rollNumber);
        }

        /* Check if reached EOF */
        if (Cheack_EOF == EOF) {
            fclose(fptr);
            break;
        }
    }
}
/* Find the student by the given roll number */
void find_rl()
{
    int studNum = studentNumber();
    if (studNum != 0)
    {
        int rollNumber = 0;
        int local_state = 0;
        Dprint(" \t Find a student by roll number : ");
        Dscan("%d", &rollNumber);
        studentInfo_t stud;
        local_state = linkedList_searchNodeByRoll(rollNumber, &stud, &student_arr);
        if (local_state == LIST_DATA_EXIST)
        {
            printStudentInfo(stud);
        }
        else if(local_state == LIST_NOT_FOUND_DATA)
        {
            Dprint(" \t \t [ERROR] Roll number %d not found\n", rollNumber);
        }
        return;
    }
    Dprint(" \t [ERROR] The list is empty!\n");

}
/* Find the student by the given first name */
void find_fn()
{
    int studNum = studentNumber();
    if (studNum != 0)
    {
        int local_state = 0;
        studentInfo_t stud;
        Dprint(" \t Find a student by first name : ");
        char fname[50];
        Dscan("%s", fname , sizeof(fname));
        local_state = linkedList_searchNodeByFName(fname, &stud, &student_arr);
        if (local_state == LIST_DATA_EXIST)
        {
            printStudentInfo(stud);
        }
        else if (local_state == LIST_NOT_FOUND_DATA)
        {
            Dprint(" \t \t [ERROR] First name %s not found\n", fname);

        }
        return;
    }
    Dprint(" \t [ERROR] The list is empty!\n");
}
/* Find the student registered in a course */
void find_c()
{
    int studNum = studentNumber();
    if (studNum != 0)
    {
        int ID;
        Dprint(" \t Find students by course ID : ");
        Dscan("%d", &ID);
        linkedList_traverseList(&student_arr,courseList,ID);
        return;
    }
    Dprint(" \t [ERROR] The list is empty!\n");
}
/* number of students */
void tot_s()
{
    int studNum = studentNumber();
    Dprint(" \t -----------------------------------------\n");
    Dprint(" \t [INFO] The total number of students is %d\n", studNum);
    Dprint(" \t -----------------------------------------\n");

}

void del_s()
{
    int studNum = studentNumber();
    if (studNum != 0)
    {
        int local_state = 0;
        int rollNumber = 0;
        Dprint(" \t Delete a student by roll number : ");
        Dscan("%d", &rollNumber);
        int index = 0;
        local_state = linkedList_searchNode(rollNumber, &index, &student_arr);
        if (local_state == LIST_DATA_EXIST)
        {
            local_state = linkedList_deleteNthNode(index, &student_arr);
            if(local_state == LIST_NO_ERROR)
                Dprint(" \t \t [INFO] The roll number is removed successfully\n");
            else
                Dprint(" \t \t [ERROR] Failed remove The roll number\n");

        }
        else if (local_state == LIST_NOT_FOUND_DATA)
        {
            Dprint(" \t [ERROR] The roll number %d not found\n", rollNumber);
        }

        return;
    }
    Dprint(" \t [ERROR] The list is empty!\n");

}
/* Update a student Data */
void up_s()
{
    int studNum = studentNumber();
    if (studNum != 0)
    {
        Dprint(" \t Update a student by roll number : ");
        int local_state = 0;
        int rollNumber = 0;
        Dscan("%d", &rollNumber);
        linkedList_traverseList(&student_arr, editStudentInfo, rollNumber);
        return;
    }
    Dprint(" \t [ERROR] The list is empty!\n");

}
void show_s()
{
    int studNum = studentNumber();
    if (studNum != 0)
    {
        linkedList_traverseList(&student_arr, printStudentInfo, 0);
        return;
    }

    Dprint(" \t [ERROR] The list is empty!\n");

}
/*Private APIs*/
static int check_rollNumber(int roll, studentInfo_t* stud)
{

    int nOfStudents;
	int local_errorState = linkedList_numOfNodes(&nOfStudents, &student_arr);
	if (local_errorState != LIST_NULL_OPERATION)
	{
        // list empty
        if (nOfStudents == 0)
        {
            return 0;
        }
        // else

        local_errorState = linkedList_searchNodeByRoll(roll,&stud, &student_arr);
        if (local_errorState == LIST_DATA_EXIST)
            return 1;
        else if (local_errorState == LIST_NOT_FOUND_DATA)
            return 0;
	}
	return -1;
}
static STACK_STATE linkedList_searchNodeByRoll(int key, studentInfo_t *stud, dynamicArray* p_toLinkedList)
{
    if (p_toLinkedList == NULL)
        return LIST_NULL_OPERATION;
    //if head is NULL, it is an empty list
    if (p_toLinkedList->head == NULL)
        return LIST_EMPTY;

    node_t* temp = p_toLinkedList->head;

    while (temp != NULL)
    {
        if (temp->data.roll == key)
        {
            *stud = temp->data;
            return LIST_DATA_EXIST;
        }
        temp = temp->nextNode;
    }
    return LIST_NOT_FOUND_DATA;
}
static STACK_STATE linkedList_searchNodeByFName(char fName[], studentInfo_t* stud, dynamicArray* p_toLinkedList)
{
    if (p_toLinkedList == NULL)
        return LIST_NULL_OPERATION;
    //if head is NULL, it is an empty list
    if (p_toLinkedList->head == NULL)
        return LIST_EMPTY;

    node_t* temp = p_toLinkedList->head;

    while (temp != NULL)
    {
        if (CMPI(temp->data.fname , fName) == 0)
        {
            *stud = temp->data;
            return LIST_DATA_EXIST;
        }
        temp = temp->nextNode;
    }
    return LIST_NOT_FOUND_DATA;
}
static int studentNumber(void)
{
    int nOfStudents;
    int local_errorState = linkedList_numOfNodes(&nOfStudents, &student_arr);
    if (local_errorState == LIST_NO_ERROR)
        return nOfStudents;
    return -1;
}
static void printStudentInfo(studentInfo_t stud)
{
    Dprint(" \t \t ----------------------------\n");
    Dprint(" \t \t Student First Name: %s\n", stud.fname);
    Dprint(" \t \t Student Last Name: %s\n", stud.lname);
    Dprint(" \t \t Student Roll Number: %d\n", stud.roll);
    Dprint(" \t \t Student GPA Number: %.1f\n", stud.gpa);
    int j;
    for (j = 0; j < NUM_OF_COURSES; j++) {
        Dprint(" \t \t Course %d ID: %d\n", j + 1, stud.cid[j]);
    }
    Dprint(" \t \t ----------------------------\n");

}
static void courseList(entery_t structData , int id)
{
    int i = 0;
    for (i = 0; i < NUM_OF_COURSES; i++)
    {
        if (structData.cid[i] == id)
        {
            printStudentInfo(structData);
            break;
        }
    }
}
static void editStudentInfo(entery_t structData, int key)
{
    if (structData.roll == key)
    {
        printStudentInfo(structData);
        Dprint(" \t Edit \n");
        Dprint(" \t \t 1. First name\n");
        Dprint(" \t \t 2. Last name\n");
        Dprint(" \t \t 3. Roll number\n");
        Dprint(" \t \t 4. GPA\n");
        Dprint(" \t \t 5. Courses\n");
        Dprint(" \t Enter your choice: ");
        int choice = 0;
        Dscan("%d", &choice);
        switch (choice) {
        case 1:
            Dprint(" \t \t Enter the new first name: ");
            Dscan("%s", structData.fname, sizeof(structData.lname));

            Dprint(" \t \t [INFO] First Name Updated successfully\n");
            break;
        case 2:
            Dprint(" \t \t Enter the new last name: ");
            Dscan("%s", structData.lname, sizeof(structData.lname));
            Dprint(" \t \t [INFO] Last NameUpdated successfully\n");
            break;
        case 3:
            Dprint(" \t \t Enter the new roll number: ");
            Dscan("%d", &structData.roll);
            Dprint(" [INFO] Roll Number Updated successfully\n");
            break;
        case 4:
            Dprint(" \t \t Enter the new GPA: ");
            Dscan("%f", &structData.gpa);
            Dprint(" [INFO] GPA Updated successfully\n");
            break;
        case 5:
            Dprint(" \t \t Enter the new course ID: \n");
            int j;
            for (j = 0; j < NUM_OF_COURSES; j++) {
                Dprint(" \t \t Course %d ID: ", j + 1);
                Dscan("%d", &structData.cid[j]);
            }
            Dprint(" \t [INFO] Course IDs Updated successfully\n");
            break;
        default:
            Dprint(" \t Wrong input value\n");
            break;
        }
    }

}

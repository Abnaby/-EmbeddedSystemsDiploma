#ifndef  _STUDENT_DB_H_
#define _STUDENT_DB_H_
#include <stdio.h>
#include <stdlib.h>
#define NUM_OF_COURSES 5
typedef struct sInfo
{
	char fname[50];
	char lname[50];
	int roll;
	float gpa;
	int cid[NUM_OF_COURSES];
}studentInfo_t;
/* APIs */
void add_student_manually();		/* Add student details manually				 */
void add_student_file();			/* Add student details from text file 		 */
void find_rl();						/* Find the student by the given roll number */
void find_fn();						/* Find the student by the given first name  */
void find_c();						/* Find the student registered in a course 	 */
void tot_s();						/* Count number of students 				 */
void del_s();						/* Delete a student 						 */
void up_s();						/* Update a student 						 */
void show_s();						/* Print student details 					 */
/*Private APIs*/
static int check_rollNumber(int roll, studentInfo_t* stud);
void initDataBase();
static void printStudentInfo(studentInfo_t stud);
static int studentNumber(void);


#endif // ! _STUDENT_DB_H_

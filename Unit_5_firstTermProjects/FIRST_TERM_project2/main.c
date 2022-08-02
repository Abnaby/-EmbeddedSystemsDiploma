#include <stdio.h>
#include <stdlib.h>
#include "linkedList.h"
#include "studentDB.h"
#define Dprint printf
#define Dscan scanf_s

int main() {
	int choice;
	Dprint(" Welcome to the student management system\n");
	initDataBase();
	while (1) {
		Dprint("\n Choose the task that you want to perform\n");
		Dprint(" 1.  Add a student details manually\n");
		Dprint(" 2.  Add a student details from a text file\n");
		Dprint(" 3.  Find student details by roll number\n");
		Dprint(" 4.  Find student details by first name\n");
		Dprint(" 5.  Find student details by course ID\n");
		Dprint(" 6.  Find the total number of students\n");
		Dprint(" 7.  Delete student details by roll number\n");
		Dprint(" 8.  Update student details by roll number\n");
		Dprint(" 9.  Show all information\n");
		Dprint(" 10. Exit\n");
		Dprint(" Enter your choice to perform the task: ");
		Dscan("%d", &choice);
		switch (choice) {
		case 1:
			add_student_manually();
			break;
		case 2:
			add_student_file();
			break;
		case 3:
			find_rl();
			break;
		case 4:
			find_fn();
			break;
		case 5:
			find_c();
			break;
		case 6:
			tot_s();
			break;
		case 7:
			del_s();
			break;
		case 8:
			up_s();
			break;
		case 9:
			show_s();
			break;
		case 10:
			return 1;
		default:
			Dprint(" Wrong input value\n");
			break;
		}
	}
}

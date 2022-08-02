#include "stdio.h"

void  main()
{
char operator;
float operand1, operand2;

printf ("Enter operator + or - or * or / : ");
scanf("%c", &operator);
printf("Enter two operands:");
scanf("%f %f", &operand1, &operand2);
switch(operator)
{
	case '+':
		printf("%f %c %f = %f", operand1, operator, operand2, operand1 + operand2);
		break;
	case '-':
		printf("%f %c %f = %f", operand1, operator, operand2, operand1 - operand2);
		break;
	case '*':
		printf("%f %c %f = %f", operand1, operator, operand2, operand1 * operand2);
		break;
	case '/':
		printf("%f %c %f = %f", operand1, operator, operand2, operand1 / operand2);
		break;
	default:
	printf("not valid operator");
	break;
}

}
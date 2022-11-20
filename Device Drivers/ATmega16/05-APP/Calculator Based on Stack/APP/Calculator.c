/*
 * Calculator.c
 *
 * Created: 10/29/2022 1:06:29 PM
 *  Author: Abnaby
 */ 



/******************************************************************************
* Includes
*******************************************************************************/
#include "Calculator.h"



/******************************************************************************
* Module Preprocessor Constants
*******************************************************************************/



/******************************************************************************
* Module Preprocessor Macros
*******************************************************************************/




/******************************************************************************
* Typedefs
*******************************************************************************/



/******************************************************************************
* Module Variable Definitions
*******************************************************************************/
u8 LCD_pins[]=
{
	// < Enable,rsPin, rwPort,d4Port,d4Pin ....... d7Port,d7Pin> 
	//EN
	PORTC , PIN2 ,
	//RS
	PORTC , PIN0 ,
	//D4
	PORTC , PIN4 ,
	//D5
	PORTC , PIN5 ,
	//D6
	PORTC , PIN6 ,
	//D7
	PORTC , PIN7 
};

static u8 Glob_u8Eqn[20] ; 
UART_cnfg myUART ; 	
LCD_Config myLCD ; 


/******************************************************************************
* Function Prototypes
*******************************************************************************/

#define LAST_EQN_CHAR 13

#define BACKSLASH     0x08


/******************************************************************************
* Function Definitions
*******************************************************************************/







/************************************* static APIs ***********************/

static int charCompare(u8 start, u8 end)
{
	return ((start == '[' && end == ']') || (start == '{' && end == '}') || (start == '(' && end == ')'));
}


static int Balanced_Parentheses(u8 *arr)
{
    stack_t word ;
    stack_creation(&word);
    u8 i = 0 ;
    while (arr[i] != '\0')
    {
        if (arr[i] == '[' || arr[i] == '(' || arr[i] == '{')
        {
            stack_push(arr[i],&word);
        }
        else if (arr[i] == ']' || arr[i] == ')' || arr[i] == '}')
        {
            /* Compare between top of stack and current character */
            u8 topOfStack;
            stack_pop(&topOfStack,&word);
            if(!charCompare(topOfStack,arr[i]))
            {
                 stack_push(topOfStack,&word);
                 return 0 ;
            }
        }
        i++;
    }
    if(stack_isEmpty(&word) == STACK_EMPTY)
        return 1 ;
    return 0 ;
}
static u8 precedence(u8 c)
{
    if (c == '^')
        return 3;
    else if (c == '/' || c == '*')
        return 2;
    else if (c == '+' || c == '-')
        return 1;
    else
        return -1;
}
static u8 is_digit (u8 c) 
{
    return (u8)((c>='0') && (c<='9')) ;
}
static u8 is_operator(u8 c)
{
	u8 res = 0 ; 
	switch (c)
	{
		case '+':
		case '-':
		case '*':
		case '/':
			res = 1 ;
			break ; 
		default : 
			res = 0 ; 
	}
	return res ; 
}
static void InfixToPostfix(u8 infix_exp[], u8 postfix_exp[])
{ 
    stack_t op ;
	stack_creation(&op);
	u8 i, j;
	u8 item;
	u8 x;
	i=0;
	j=0;
	
	item=infix_exp[i];         /* initialize before loop*/

	while(item != '\0')        /* run loop till end of infix expression */
	{
		if(item == '(')
		{
			stack_push(item,&op);
		}
		else if( is_digit(item) )
		{
			postfix_exp[j] = item;              /* add operand symbol to postfix expr */
			j++;
		}
		else if(is_operator(item) == 1)        /* means symbol is operator */
		{
			stack_pop(&x,&op);
			while(is_operator(x) == 1 && precedence(x)>= precedence(item))
			{
				postfix_exp[j] = x;                  /* so pop all higher precendence operator and */
				j++;
				stack_pop(&x,&op);                  /* add them to postfix expresion */
			}
			stack_push(x,&op);

			/* because just above while loop will terminate we have
			oppped one extra item
			for which condition fails and loop terminates, so that one*/
			stack_push(item,&op);
		}
		else if(item == ')')         /* if current symbol is ')' then */
		{
			stack_pop(&x,&op);                            /* pop and keep popping until */
			while(x != '(')                /* '(' encounterd */
			{
				postfix_exp[j] = x;
				j++;
				stack_pop(&x,&op); 
			}
		}
		else
		{ /* if current symbol is neither operand not '(' nor ')' and nor
			operator */
			/* error */ 
		}
		i++;

		item = infix_exp[i]; /* go to next symbol of infix expression */
	} /* while loop ends here */
	if(!stack_isEmpty(&op))
	{
		// nInvalid infix Expression
	}

	postfix_exp[j] = '\0'; 

}
static void EvalPostfix(char postfix[] , u8 * ptr_u8Result)
{
    stack_t eva ;
	stack_creation(&eva);
	u8 LOC_u8Result ; 
    u8 i = 0 ;
    u8 num;
    u8 A, B , Res;
    while(postfix[i] != '\0')
    {
        if(is_digit(postfix[i]))
        {
            num = postfix[i] - 48;
            stack_push(num,&eva);;
        }
        else
        {
			stack_pop(&A,&eva); 
			stack_pop(&B,&eva); 
            switch(postfix[i])
            {
				case '+':
				{
					Res = A + B;
					break;
				}
				case '-':
				{
					Res = B - A;
					break;
				}
				case '*':
				{
					Res = A * B;
					break;
				}
				case '/':
				{
					Res = B / A;
					break;
				}
            }
			stack_push(Res,&eva);
        }
        i++;
    }	
	stack_pop(&LOC_u8Result,&eva); 
	*ptr_u8Result = LOC_u8Result ; 
}
static void tostring(u8 str[], u8 num)
{
	int i, rem, len = 0, n;
	n = num;
	/*	Get Digits in Num	*/
    while (n != 0)
    {
        len++;
        n /= 10;
    }
	/* Loop On Digits	*/
    for (i = 0; i < len; i++)
    {
		// Num = 123   Rem = 3     Nume = 12 
        rem = num % 10;
        num = num / 10;
        str[len - (i + 1)] = rem + '0';
    }
    str[len] = '\0';
}

/*********************************** APIs ********************************/
void APP_voidCalculatorSetup(void)
{
	/*	INIT GPIO	*/ 
	GPIO_voidInit();
	/*  INIT USART	*/
	myUART.baudrate = 9600 ;
	myUART.databits =  _8BIT;
	myUART.parity= DISABLED_PARITY;
	myUART.stopbits= _1STOPBIT ;
	myUART.state= TRANCIVER ;
	myUART.operation= Asynchronous;
	MCAL_USART_init(&myUART);
	MCAL_USART_SendString(addString("USART Initialized"));
	MCAL_USART_TxByteSynch('\r');
	MCAL_USART_TxByteSynch('\n');
	/* INIT LCD		*/
	myLCD.LCD_SIZE_Rows = 4 ; 
	myLCD.LCD_SIZE_Cols = 16 ; 
	myLCD.LCD_PortPins = LCD_pins ;
	LCD_voidInit(&myLCD); 
	LCD_voidSendString(&myLCD,addString("LCD Initialized"));
	_delay_ms(200);	
}

void APP_voidCalculatorStrat(void)
{
	/*********************** VARs	*****************************/
	u8 LOC_u8ChkExitChat = 0  ; 
	u8 LOC_u8Counter  = 0  ; 
	u8 LOC_u8Result =  0 ; 
	/*********************** Display ****************************/
	LCD_voidClear(&myLCD);
	LCD_voidSendString(&myLCD,addString("Enter EQN : "));
	MCAL_USART_SendString(addString("Enter EQN : "));
	LCD_voidGotoXY(&myLCD,0,1);
	MCAL_USART_TxByteSynch('\r');
	MCAL_USART_TxByteSynch('\n');
	MCAL_USART_SendString(addString("    "));
	/*********************** Get Eqn ****************************/
	Glob_u8Eqn[LOC_u8Counter++] = '('  ; 
	MCAL_USART_RxByteSynch(&Glob_u8Eqn[LOC_u8Counter]);
	LOC_u8ChkExitChat = Glob_u8Eqn[LOC_u8Counter] ; 
	/********************** Display******************************/
	MCAL_USART_TxByteSynch(Glob_u8Eqn[LOC_u8Counter]);
	LCD_voidSendChar(&myLCD,Glob_u8Eqn[LOC_u8Counter]);
	// Increase Counter 
	LOC_u8Counter++ ; 

	/********************** Get Rest of EQN **********************/
	while(!(LOC_u8ChkExitChat == (u8)LAST_EQN_CHAR || LOC_u8ChkExitChat == (u8)'='))
	{
		// Stil Recieving 
		MCAL_USART_RxByteSynch(&Glob_u8Eqn[LOC_u8Counter]);
		// Disp To USART and LCD
		MCAL_USART_TxByteSynch(Glob_u8Eqn[LOC_u8Counter]);
		LCD_voidSendChar(&myLCD,Glob_u8Eqn[LOC_u8Counter]);
		// Check Exit Char
		LOC_u8ChkExitChat = Glob_u8Eqn[LOC_u8Counter] ; 	
		// Chack Backslach 
		if(Glob_u8Eqn[LOC_u8Counter] == BACKSLASH ) 
		{
			
			LCD_voidClear(&myLCD);
			MCAL_USART_TxByteSynch('\r');
			MCAL_USART_TxByteSynch('\n');
			if(LOC_u8Counter == 0 )
			{
				LCD_voidSendString(&myLCD,addString("Enter EQN : "));
				MCAL_USART_SendString(addString("Enter EQN :"));
			}
			else
			{
				// Return Eqn 
				Glob_u8Eqn[LOC_u8Counter] = '\0';
				LOC_u8Counter--; 
				LCD_voidSendString(&myLCD,addString("EQN is : "));
				MCAL_USART_SendString(addString("EQN is :"));
			}
			LCD_voidGotoXY(&myLCD,0,1);
			MCAL_USART_TxByteSynch('\r');
			MCAL_USART_TxByteSynch('\n');
			u8 Loc_u8Counter  ; 
			for(Loc_u8Counter = 1 ; Loc_u8Counter < LOC_u8Counter ; Loc_u8Counter++)
			{
				LCD_voidSendChar(&myLCD,Glob_u8Eqn[Loc_u8Counter]);
				MCAL_USART_TxByteSynch(Glob_u8Eqn[Loc_u8Counter]);
			}	
		}
		else
		{
		// Increase Counter 
		LOC_u8Counter++ ; 

		}

	}
	Glob_u8Eqn[--LOC_u8Counter] = ')'  ; 
	Glob_u8Eqn[++LOC_u8Counter] = '\0' ; 
	/************************ Have EQN	**************************/
	u8 stringBuffer[50];
	LOC_u8Counter = 0 ;
	if(Balanced_Parentheses(Glob_u8Eqn))
	{
		InfixToPostfix(Glob_u8Eqn,stringBuffer);
		EvalPostfix(stringBuffer , &LOC_u8Result);
		LCD_voidClear(&myLCD);
		LCD_voidSendString(&myLCD,addString("Result"));
		LCD_voidGotoXY(&myLCD,0,1);
		MCAL_USART_TxByteSynch('\r');
		MCAL_USART_TxByteSynch('\n');	
		tostring(stringBuffer,LOC_u8Result);
		while (stringBuffer[LOC_u8Counter] != '\0')
		{
			LCD_voidSendChar(&myLCD,stringBuffer[LOC_u8Counter]);
			LOC_u8Counter++ ; 
		}

		_delay_ms(10000);
	}
    else
	{
		LCD_voidClear(&myLCD);
        LCD_voidSendString(&myLCD,addString("Not Balanced"));
		_delay_ms(800);
		return ; 
	}	
	/************************ Wait ****************************/	
		_delay_ms(50000);

}
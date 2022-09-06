/**
 * @file main.c
 * @author Mohamed Abd El-Naby (mahameda.naby#gmail.com)
 * @brief this file contain the main code of application
 * @version 0.1
 * @date 2022-08-18
 * 
 * @copyright Copyright (c) 2022
 * 
 */
#include "STD_TYPES.h"
#include "MAPPING.h"
#include "BIT_MATH.h"
#include "GPIO_interface.h"
#include "USART_Interface.h"
#include "KeyPad.h"

#define ROWS	4
#define COLS	4
int main (void)
{
	/*		Key Patterns	*/
	char keys[ROWS][COLS] = 
	{
	  {'7','8','9','/'},
	  {'4','5','6','X'},
	  {'1','2','3','-'},
	  {'C','0','=','+'}
	};
	/*		Key GPIOs		*/
	u8 RowsPins[] =
	{
		PORTA,PIN0, 
		PORTA,PIN1,
		PORTA,PIN2,
		PORTA,PIN3
	}; 
	u8 ColsPins[] = 
	{
		PORTA,PIN4, 
		PORTA,PIN5,
		PORTA,PIN6,
		PORTA,PIN7
	};
	/*	Keypad Init		*/
	KeyPad_cnfg myKeypad; 
	myKeypad.NumOfRows = ROWS ;	// Output
	myKeypad.NumOfCols = COLS ;	//Input
	myKeypad.Port_Pin_Rows = RowsPins ;
	myKeypad.Port_Pin_Cols = ColsPins ;
	myKeypad.KeysPattern = newKeyMap(keys) ;
	HAL_KeyPadInit(&myKeypad);
	/*	Init USART		*/
	UART_cnfg x ; 	
	x.baudrate = 9600 ;
	x.databits =  _8BIT;
	x.parity= DISABLED_PARITY;
	x.stopbits= _1STOPBIT ;
	x.state= TRANCIVER  ;
	x.operation= Asynchronous;
	MCAL_USART_init(&x);
	u8 data ; 
	//MCAL_USART_SendString("Hello From The Other Side :) ") ; 
	while(1)
	{
		data = HAL_KeyPadGetPressedKey(&myKeypad); 
		if(data != 200)
		{
		MCAL_USART_TxByteSynch(data);
		MCAL_USART_TxByteSynch('\r');
		MCAL_USART_TxByteSynch('\n');
		
		}
	}

}


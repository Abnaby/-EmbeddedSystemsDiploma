/*
 * APP.c
 *
 * Created: 12/4/2022 2:41:55 PM
 *  Author: Abnaby
 */ 


/******************************************************************************
* Includes
*******************************************************************************/
#include "APP.h"

#define _APP_DEBUG_	0

/******************************************************************************
* Module Preprocessor Constants
*******************************************************************************/

/******************************************************************************
* Module Preprocessor Macros
*******************************************************************************/
#define END_SPI_COMMUNICATION	'#'
#define VALID_ID_SYMBOL			'$'
#define MASTER_ACK				'+'
#define WAIT_SYMBOL				'.'
#define LCD_WAITING_TIME		150
#define SPI_START_SEND()	GPIO_voidTogglePin(PORTA,PIN0);
#define SPI_STOP_SEND()		1 

#define GREEN_LED	PORTC,PIN7
#define RED_LED		PORTD,PIN2

/******************************************************************************
* Typedefs
*******************************************************************************/

typedef enum 
{
	NOT_VALID_ID = '0'	,	
	VALID_ID	= '1'
}ID_Check_t ; 


/******************************************************************************
* Module Variable Definitions
*******************************************************************************/

// 
ID_Check_t Glob_ID_Valid =  NOT_VALID_ID ; 

// SPI
SPI_Config mySPI =	
{
    SPI_INTERRUPT_DISABLE  ,
    SPI_MSB_FIRST   ,
    SPI_SLAVE    ,
    SPI_IDLE_LOW   ,
    SPI_LEADING_EDGE  ,
    SPI_Fosc_OVER_16	

};
// Buzzer

static void Buzzer(u8 copyNumberOfRepeatations)
{
	u8 LOC_u8Counter = 0 ;
	for(LOC_u8Counter ; LOC_u8Counter<copyNumberOfRepeatations ; LOC_u8Counter++)
	{
		GPIO_voidSetPinValue(PORTC,PIN6,HIGH);
		_delay_ms(100);
		GPIO_voidSetPinValue(PORTC,PIN6,LOW);
		_delay_ms(100);		
	}	
}
// LCD
static LCD_Config myLCD ;
u8 LCD_PortPin[]=
{
	// < Enable,rsPin, rwPort,d4Port,d4Pin ....... d7Port,d7Pin>
	//EN
	PORTC , PIN1 ,
	//RS
	PORTC , PIN0 ,
	//D4
	PORTC , PIN2 ,
	//D5
	PORTC , PIN3 ,
	//D6
	PORTC , PIN4 ,
	//D7
	PORTC , PIN5
};
static void LCD_voidMainScreen()
{
	LCD_voidSetCursorType(&myLCD, CURS_OFF ) ;
	LCD_voidClear(&myLCD);
	LCD_voidSendString(&myLCD,addString("Entrance Gate"));
	LCD_voidGotoXY(&myLCD,0,1);
	LCD_voidSendString(&myLCD,addString("Low Power Mode "));
	_delay_ms(LCD_WAITING_TIME);
	LCD_voidSetDisplayState(&myLCD,DISP_OFF);
}

static void LCD_voidSetup(void)
{
	myLCD.LCD_SIZE_Rows = 2 ;
	myLCD.LCD_SIZE_Cols = 16 ;
	myLCD.LCD_PortPins = LCD_PortPin ;
	LCD_voidInit(&myLCD);
	/*	Main Screen	*/
	LCD_voidMainScreen();
}

static void System_voidStates(u8 copy_u8Selection)
{
	LCD_voidSetCursorType(&myLCD, CURS_OFF ) ;
	LCD_voidClear(&myLCD);
	LCD_voidSendString(&myLCD,addString("Entrance Gate"));
	LCD_voidGotoXY(&myLCD,0,1);
	switch(copy_u8Selection)
	{
		case 0 : 
		GPIO_voidSetPinValue(GREEN_LED, HIGH);
		GPIO_voidSetPinValue(RED_LED, LOW);
		LCD_voidSendString(&myLCD,addString("Your ID is Valid "));	
		_delay_ms(200);
		GPIO_voidSetPinValue(GREEN_LED, LOW);
		GPIO_voidSetPinValue(RED_LED, LOW);
		LCD_voidSetDisplayState(&myLCD,DISP_OFF);
		break ; 
		case 1 : 
		GPIO_voidSetPinValue(GREEN_LED, LOW);
		GPIO_voidSetPinValue(RED_LED, HIGH);
		LCD_voidSendString(&myLCD,addString("Invalid ID"));
		Buzzer(3);
		GPIO_voidSetPinValue(GREEN_LED, LOW);
		GPIO_voidSetPinValue(RED_LED, LOW);
		LCD_voidSetDisplayState(&myLCD,DISP_OFF);
		MCAL_USART_SendString((u8*)"\r\n***** ENTER RFID CARD *****\r\n");
		break ; 
		default : break ; 
	}

}


/******************************************************************************
* private Function Prototypes
*******************************************************************************/

/******************************************************************************
* private Callbacks Definitions
*******************************************************************************/

void RFID_Callback(u8 *ptr_Name , u8 *ptr_ID);


/******************************************************************************
* private Functions Definitions
*******************************************************************************/

void APP_voidSendDataThroughSPI(u8 *ptr_Name , u8 *ptr_ID); 
void APP_IsValidID(void) ;
void APP_voidSendStringThroughSPI(u8 *ptr_String); 
void APP_voidGetSPI_Data(u8 recievedData);



/******************************************************************************
* Function Definitions
*******************************************************************************/


/*				MAIN FCNs				*/
void ECU1_Entance_APP_SETUP(void) 
{
	/*	MCAL INIT	*/
	// GPIO 
	GPIO_voidInit(); 
	GPIO_voidSetPinDirection(PORTA,PIN0,OUTPUT); //	For Trigger Master 
	GPIO_voidSetPinDirection(PORTC,PIN6,OUTPUT); // For Buzzer
	GPIO_voidSetPinDirection(GREEN_LED,OUTPUT); // For Green Led
	GPIO_voidSetPinDirection(RED_LED,OUTPUT); // For Red Led 
	

	
	// SPI
	GPIO_voidSPI_SlaveInit();
	MCAL_SPI_voidInit(&mySPI);
	
	/*	HAL Init	*/
	PIR_voidInit(); 
	
	RFID_voidInit();
	RFID_voidGetData_Asynch(RFID_Callback);
	
	GateControl_voidInit(); 
	
	LCD_voidSetup();
	MCAL_USART_SendString((u8*)"\r\n***** ENTRANCE GATE *****\r\n*****ENTER RFID CARD *****\r\n");

	
	
	/*	Global Interrupt	*/
	ENABLE_GLOBAL_INTERRUPT();

	
}
#if _APP_DEBUG_ == 1
 #include<util/delay.h>
 #else 
#endif

void ECU1_Entance_APP_LOOP(void) 
{
	// Stuck Here Until Get Valid ID
	while(Glob_ID_Valid !=  VALID_ID)
	{
		GateControl_voidCloseGate() ;
	}
	// If Glob_ID_Valid == VALID_ID
	{
		/* Disable Interrupts	*/
		DISABLE_GLOBAL_INTERRUPT();
		
		GateControl_voidOpenGate() ; 
		while(PIR_u8ExistMovement() == 1) ; 
		Glob_ID_Valid =  NOT_VALID_ID ; 
		/*	Clear Any Pending Flag of USART	*/
		MCAL_voidClearFlags();
		/* Renable Interrupts	*/ 
		ENABLE_GLOBAL_INTERRUPT();
		MCAL_USART_SendString((u8*)"\r\n***** ENTER RFID CARD *****\r\n");

	}


}
	
/******************************************************************************
* Callbacks Definitions
*******************************************************************************/



void RFID_Callback(u8 *ptr_Name , u8 *ptr_ID)
{
	#if _APP_DEBUG_ == 1
		MCAL_USART_TxByteSynch('\r') ;
		MCAL_USART_TxByteSynch('\n') ;
		MCAL_USART_TxByteSynch('\r') ;
		MCAL_USART_TxByteSynch('\n') ;
		u8 i = 0 ; 
		MCAL_USART_SendString((u8*) "User Name : " ); 
		while(ptr_Name[i] != '\0')
		{
			MCAL_USART_TxByteSynch(ptr_Name[i]); 
			i++ ; 
		}
		MCAL_USART_TxByteSynch('\r') ;
		MCAL_USART_TxByteSynch('\n') ;
		MCAL_USART_TxByteSynch('\r') ;
		MCAL_USART_TxByteSynch('\n') ;
		i = 0 ; 
		MCAL_USART_SendString((u8*) "ID : ") ; 
		while(ptr_ID[i] != '\0')
		{
			MCAL_USART_TxByteSynch(ptr_ID[i]); 
			i++ ; 
		}
		 #else 
	#endif 
	
	APP_voidSendDataThroughSPI(ptr_Name , ptr_ID) ; 
}
void APP_voidSendDataThroughSPI(u8 *ptr_Name , u8 *ptr_ID)
{
	SPI_START_SEND();

	
	APP_voidSendStringThroughSPI(ptr_Name) ; 
	APP_voidSendStringThroughSPI(ptr_ID) ;
	APP_IsValidID();	  
}

void APP_IsValidID(void)
{
	ID_Check_t LOC_Result = NOT_VALID_ID ; 
	do
	{
		MCAL_SPI_voidByteExchangeAsynch(VALID_ID_SYMBOL , &LOC_Result);
	}while(!( LOC_Result == '1' || LOC_Result == '0') );
	Glob_ID_Valid = LOC_Result ; 
	(Glob_ID_Valid == VALID_ID) ? (System_voidStates(0)) : (System_voidStates(1)) ; 

}
void APP_voidSendStringThroughSPI(u8 *ptr_String)
{
	u8 LOC_u8DummyData = 0 ; 
	u8 i = 0;
	while(ptr_String[i] != '\0' )
	{
		do
		{
			MCAL_SPI_voidByteExchangeAsynch(ptr_String[i] , &LOC_u8DummyData);
			#if _APP_DEBUG_ == 1
				MCAL_USART_TxByteSynch(LOC_u8DummyData) ;
				MCAL_USART_TxByteSynch('\n') ;
				MCAL_USART_TxByteSynch('\r') ;
			 #else 

			#endif
		}while(LOC_u8DummyData != MASTER_ACK);
		i++ ; 
	}
}

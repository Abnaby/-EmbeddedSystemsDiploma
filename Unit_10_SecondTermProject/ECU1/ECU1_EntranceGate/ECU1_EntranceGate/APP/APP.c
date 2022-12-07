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

#define SPI_START_SEND()	GPIO_voidTogglePin(PORTA,PIN0);
#define SPI_STOP_SEND()		1 

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
	GPIO_voidSetPinDirection(PORTA,PIN0,OUTPUT); 
	
	// SPI
	GPIO_voidSPI_SlaveInit();
	MCAL_SPI_voidInit(&mySPI);
	
	/*	HAL Init	*/
	PIR_voidInit(); 
	
	RFID_voidInit();
	RFID_voidGetData_Asynch(RFID_Callback);
	
	GateControl_voidInit(); 
	
	/*	Global Interrupt	*/
	ENABLE_GLOBAL_INTERRUPT();

	
}
#if _APP_DEBUG_ == 1
 #include<util/delay.h>
 #else 
#endif

void ECU1_Entance_APP_LOOP(void) 
{
	while(Glob_ID_Valid ==  VALID_ID)
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
	}
	GateControl_voidCloseGate() ;
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

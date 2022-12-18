/*
 * APP.c
 *
 * Created: 12/9/2022 11:30:00 PM
 * Author : Abnaby
 */ 


/******************************************************************************
* Includes
*******************************************************************************/
#include "APP.h"

#define _APP_DEBUG_ 0

/******************************************************************************
* Module Preprocessor Constants
*******************************************************************************/
#define ECU1_PORT_PIN			PORTA, PIN4
#define ECU3_PORT_PIN			PORTB, PIN0

#define ECU1_EXTI_PORT		PORTA
#define ECU3_EXTI_PORT		PORTA
/******************************************************************************
* Module Preprocessor Macros
*******************************************************************************/
#define END_SPI_COMMUNICATION	'#'
#define VALID_ID_SYMBOL			'$'
#define MASTER_ACK				'+'
#define WAIT_SYMBOL				'.'

#define ID_SIZE					7
#define NAME_MAX_SIZE			10




#define OPTION_ADD_USER					'1'
#define OPTION_EDIT_USER				'3'
#define OPTION_DELETE_USER				'2'

#define OPTION_ADMIN_SELECT				'1'
#define OPTION_GARAGE_SELECT			'2'

#define KEYPAD_BACK_SYMBOL		'#'

#define UART_TERMINATE_CHAR		13





/******************************************************************************
* Typedefs
*******************************************************************************/

typedef enum 
{
	NOT_VALID_ID = '0'	,	
	VALID_ID	= '1'
}ID_Check_t ; 

typedef enum
{
	DELT_ONE_DRIVER	,
	DELT_ALL_DRIVERS

}DeletingDrivers_t;
/******************************************************************************
* Module Variable Definitions
*******************************************************************************/

ID_Check_t Glob_ID_Valid =  NOT_VALID_ID ; 
// Garage Data

static _7Segment_Config mySegment = {COMN_ANODE , _7_SEG_4_PIN_IC } ;


/************************************ Predefined Admin Stage	***********************************/
#define NUMBER_OF_ADMINS	2
/**
 * 					Each Admin has 2 Identifiers
 * 									one of them username (with NAME_MAX_SIZE)
 * 									another is password  (with NAME_MAX_SIZE)
 */
u8 Glob_u8AdminArr[NUMBER_OF_ADMINS][2][NAME_MAX_SIZE+1];

u8 Glob_LogginSeesionExpired = 1 ;
u8 LOC_u8TimerCounter = 0 ;
#define EXPIRITION_TIME_IN_MS		5
#define	TIME_OF_ONE_INTTERRUPT		5000
/************************************ Drivers Stage	***********************************/
#define MAX_SLOTS_IN_GARAGE		3
u8 Glob_u8NumberOfCurrentUsers ;
u8 Glob_u8DriverArr[MAX_SLOTS_IN_GARAGE][2][NAME_MAX_SIZE+1];
u8 Glob_u8NumberOfAvailableSlots = MAX_SLOTS_IN_GARAGE ;
u8 Glob_u8DriverFreeIndex[MAX_SLOTS_IN_GARAGE] = {1,1,1};

// Arr of Vehicle in garage
u8 Glob_u8InGarage[MAX_SLOTS_IN_GARAGE] = {0,0,0};

// Arr of  Vechile out of garage
u8 Glob_u8OutGarage[MAX_SLOTS_IN_GARAGE] = {1,1,1};


/*************************************	Start LCD Vars	*******************************************/
u8 LCD_PortPin[]=
{
	// < Enable,rsPin, rwPort,d4Port,d4Pin ....... d7Port,d7Pin>
	//EN
	PORTB , PIN5 ,
	//RS
	PORTB , PIN4 ,
	//D4
	PORTB , PIN3 ,
	//D5
	PORTA , PIN15 ,
	//D6
	PORTA , PIN11 ,
	//D7
	PORTA , PIN12
};
 // LCD Special Char
u8 LCD_ProgrssBarChar[] = {
		  0x1F,
		  0x11,
		  0x11,
		  0x11,
		  0x11,
		  0x11,
		  0x1F,
		  0x1F
};
u8 LCD_Deleting[] = {
		  0x00,
		  0x00,
		  0x11,
		  0x0A,
		  0x04,
		  0x0A,
		  0x11,
		  0x00
};
u8 LCD_Adding[] = {
		  0x00,
		  0x0E,
		  0x0E,
		  0x0E,
		  0x1F,
		  0x0E,
		  0x04,
		  0x00
};
static LCD_Config myLCD ;

/************************************************* END LCD Vars	********************************************************/
/************************************************* Start Keypad Vars	********************************************************/

KeyPad_cnfg myKeypad;
/*		Key Patterns	*/
#define ROWS	4
#define COLS	3
u8 keys[ROWS][COLS] =
{
  {'1','2','3'},
  {'4','5','6'},
  {'7','8','9'},
  {'*','0','#'}
};
/*		Key GPIOs		*/
u8 RowsPins[] =
{
		PORTB,PIN12,
		PORTB,PIN13,
		PORTB,PIN14,
		PORTB,PIN15
};
u8 ColsPins[] =
{
	PORTB,PIN8,
	PORTB,PIN9,
	PORTB,PIN11
};


/************************************************* END Keypad Vars	********************************************************/



/******************************************************************************
* private Function Prototypes
*******************************************************************************/
static void progressBar(LCD_Config *myLCD, u8 prcentage, u16 delayOfBar);
static void DeletingBar(LCD_Config *myLCD, u8 prcentage, u16 delayOfBar);

static void SPI_voidSetup(void);
static void LCD_voidSetup(void);
static void LCD_voidMainScreen(void);
static void LCD_voidAdminOptions(void);
static void LCD_voidStatusOptions(void);
static void LCD_AddDriver(void);
static u8 System_u8ValidateAdminData(void);
static void System_voidFillAdminsData(void);
static void System_voidAddNewUser(void);
u8 compTwoStrings (u8*string1 , u8*string2);
static void System_VoidDeleteUser(DeletingDrivers_t copy_DeleteType);
static void LCD_voidDeleteDriver(void);


/******************************************************************************
* private Callbacks Definitions
*******************************************************************************/

void xDelay(u32 time)
{
	u32 i;
	u32 j;
	for(i = time;i > 0;i--)
		for(j = 10;j > 0;j--);
}

#define _delay_ms(ms) xDelay(ms)


static void ECU1_Callback(void);

static void ECU3_Callback(void);
static void Tiner_voidCallback(void);
/******************************************************************************
* private Functions Definitions
*******************************************************************************/

/*********************************** START SYSTEM FCN	*************************/
static void System_voidFillAdminsData(void)
{
	/*	1st Driver	*/
	Glob_u8AdminArr[0][0][0] = 'M'	;
	Glob_u8AdminArr[0][0][1] = 'o'	;
	Glob_u8AdminArr[0][0][2] = 'h'	;
	Glob_u8AdminArr[0][0][3] = 'a'	;
	Glob_u8AdminArr[0][0][4] = 'm'	;
	Glob_u8AdminArr[0][0][5] = 'e'	;
	Glob_u8AdminArr[0][0][6] = 'd'	;
	Glob_u8AdminArr[0][1][7] = '\0'	;

	Glob_u8AdminArr[0][1][0] = '0'	;
	Glob_u8AdminArr[0][1][1] = '0'	;
	Glob_u8AdminArr[0][1][2] = '0'	;
	Glob_u8AdminArr[0][1][3] = '0'	;
	Glob_u8AdminArr[0][1][4] = '0'	;
	Glob_u8AdminArr[0][1][5] = '0'	;
	Glob_u8AdminArr[0][1][6] = '1'	;
	Glob_u8AdminArr[0][1][7] = '\0'	;

	/*	2nd Driver	*/
	Glob_u8AdminArr[1][0][0] = 'a'	;
	Glob_u8AdminArr[1][0][1] = 'l'	;
	Glob_u8AdminArr[1][0][2] = 'i'	;
	Glob_u8AdminArr[1][0][3] = '\0'	;

	Glob_u8AdminArr[1][1][0] = '1'	;
	Glob_u8AdminArr[1][1][1] = '2'	;
	Glob_u8AdminArr[1][1][2] = '3'	;
	Glob_u8AdminArr[1][1][3] = '4'	;
	Glob_u8AdminArr[1][1][4] = '5'	;
	Glob_u8AdminArr[1][1][5] = '6'	;
	Glob_u8AdminArr[1][1][6] = '7'	;
	Glob_u8AdminArr[1][1][7] = '\0'	;

}
static void System_voidFillDriverssData(void)
{
	/*	1st Driver	*/
	Glob_u8DriverArr[0][0][0] = 'M'	;
	Glob_u8DriverArr[0][0][1] = 'o'	;
	Glob_u8DriverArr[0][0][2] = 'h'	;
	Glob_u8DriverArr[0][0][3] = 'a'	;
	Glob_u8DriverArr[0][0][4] = 'm'	;
	Glob_u8DriverArr[0][0][5] = 'e'	;
	Glob_u8DriverArr[0][0][6] = 'd'	;
	Glob_u8DriverArr[0][1][7] = '\0'	;

	Glob_u8DriverArr[0][1][0] = '0'	;
	Glob_u8DriverArr[0][1][1] = '0'	;
	Glob_u8DriverArr[0][1][2] = '0'	;
	Glob_u8DriverArr[0][1][3] = '0'	;
	Glob_u8DriverArr[0][1][4] = '0'	;
	Glob_u8DriverArr[0][1][5] = '0'	;
	Glob_u8DriverArr[0][1][6] = '1'	;
	Glob_u8DriverArr[0][1][7] = '\0'	;

	/*	2nd Driver	*/
	Glob_u8DriverArr[1][0][0] = 'a'	;
	Glob_u8DriverArr[1][0][1] = 'l'	;
	Glob_u8DriverArr[1][0][2] = 'i'	;
	Glob_u8DriverArr[1][0][3] = '\0'	;

	Glob_u8DriverArr[1][1][0] = '1'	;
	Glob_u8DriverArr[1][1][1] = '2'	;
	Glob_u8DriverArr[1][1][2] = '3'	;
	Glob_u8DriverArr[1][1][3] = '4'	;
	Glob_u8DriverArr[1][1][4] = '5'	;
	Glob_u8DriverArr[1][1][5] = '6'	;
	Glob_u8DriverArr[1][1][6] = '7'	;
	Glob_u8DriverArr[1][1][7] = '\0'	;

	// Data
	Glob_u8NumberOfCurrentUsers = 2 ;

}
static u8 System_u8ValidateAdminData(void)
{
	u16 LOC_u8ReceivedData = 0 , LOC_u8Counter = 0 ;
	u8 LOC_u8userName[NAME_MAX_SIZE+1] = {0} ;
	u8 LOC_u8Password[ID_SIZE+1] = {0} ;
	u8 LOC_u8Flag = 0 ;

	LCD_voidSetCursorType(&myLCD, CURS_OFF) ;
	LCD_voidClear(&myLCD);
	LCD_voidSendString(&myLCD,addString("Admin Username"));
	LCD_voidGotoXY(&myLCD,0,1);
	LCD_voidSetCursorType(&myLCD, CURS_ON_BLINK) ;

	/*	Get User Name By USART	*/
	do
	{
		USART_voidReceiveDataSynch(USART_1, &LOC_u8ReceivedData);
		USART_voidSendDataSynch(USART_1, &LOC_u8ReceivedData);
		LOC_u8userName[LOC_u8Counter] = (u8)LOC_u8ReceivedData;
		LCD_voidSendChar(&myLCD, (u8)LOC_u8ReceivedData );
		LOC_u8Counter++ ;
	}
	while((NAME_MAX_SIZE >= LOC_u8Counter) && (UART_TERMINATE_CHAR != LOC_u8ReceivedData));
	LOC_u8userName[LOC_u8Counter-1] = '\0';
	LCD_voidSetCursorType(&myLCD, CURS_OFF) ;
	LCD_voidGotoXY(&myLCD,0,2);
	LCD_voidSendString(&myLCD,addString("Admin Password"));
	LCD_voidGotoXY(&myLCD,0,3);
	LOC_u8Counter = 0 ;
	/*	Get Password By USART	*/
	LCD_voidSetCursorType(&myLCD, CURS_ON_BLINK) ;
	do
	{
		USART_voidReceiveDataSynch(USART_1, &LOC_u8ReceivedData);
		USART_voidSendDataSynch(USART_1, &LOC_u8ReceivedData);
		LOC_u8Password[LOC_u8Counter] = (u8)LOC_u8ReceivedData;
		LCD_voidSendChar(&myLCD, '*' );

		LOC_u8Counter++ ;

	}
	while((ID_SIZE >= LOC_u8Counter) && (UART_TERMINATE_CHAR != LOC_u8ReceivedData));
	LOC_u8Password[LOC_u8Counter-1] = '\0' ;

	/*	Validate if Exist or not	*/

	/*	Searching	*/
	LOC_u8Counter = 0 ;
	u8 LOC_u8Result = 1 ;
	u8 adminIndex = 10  ;
	for(LOC_u8Counter = 0 ; LOC_u8Counter < Glob_u8NumberOfCurrentUsers ; LOC_u8Counter++)
	{
		// Name Searching
		LOC_u8Result = compTwoStrings(LOC_u8userName, &Glob_u8AdminArr[LOC_u8Counter][0][0]);
		if(LOC_u8Result == 0)
		{
			adminIndex = LOC_u8Counter ;
			break ;
		}

	}
	if(LOC_u8Result == 0 && adminIndex <= NUMBER_OF_ADMINS)
	{
		LOC_u8Result = 1 ;
		// Pass Verify
		LOC_u8Result = compTwoStrings(LOC_u8Password, &Glob_u8AdminArr[adminIndex][1][0]);
	}
	else
	{
		LOC_u8Result = 1 ;
	}


	if(LOC_u8Result == 0)
	{
		// Valid User Name and password
		LOC_u8Flag = 1 ;
		Glob_LogginSeesionExpired = 0 ;
		USART_voidSendStringWithDelimiterSynch(USART_1, addString("\r\n********************* SUCCESSFUL LOGIN ****************************** \r\n\0"), '\0');
	}
	else
	{
		// invalid-username
		LCD_voidClear(&myLCD);
		LCD_voidGotoXY(&myLCD, 2, 1);
		LCD_voidSendString(&myLCD, addString("Wrong Admin")) ;
		LCD_voidGotoXY(&myLCD, 4, 2);
		LCD_voidSendString(&myLCD, addString("Password")) ;
		_delay_ms(10);
		LOC_u8Flag = 0 ;
		USART_voidSendStringWithDelimiterSynch(USART_1, addString("\r\n********************* UNSUCCESSFUL LOGIN ****************************** \r\n\0"), '\0');
		Glob_LogginSeesionExpired = 1;
	}

	/*******************************/

	return LOC_u8Flag ;
}

static void System_voidAddNewUser(void)
{


	if(MAX_SLOTS_IN_GARAGE > Glob_u8NumberOfCurrentUsers)
	{
		u16 LOC_u8ReceivedData = 0 ; u8 LOC_u8ArrayIndex ;
		u8 LOC_u8Counter = 0 ;
		// Get Free Array Index
		for(LOC_u8Counter = 0 ; LOC_u8Counter < MAX_SLOTS_IN_GARAGE ; LOC_u8Counter++)
		{
			if(Glob_u8DriverFreeIndex[LOC_u8Counter] == 1)
			{
				LOC_u8ArrayIndex = LOC_u8Counter;
				Glob_u8DriverFreeIndex[LOC_u8Counter] = 0 ;
				LOC_u8Counter = 0 ;
				break ;
			}
		}
		// Can Add new Driver
		LCD_voidSetCursorType(&myLCD, CURS_OFF) ;
		LCD_voidClear(&myLCD);
		USART_voidSendStringWithDelimiterSynch(USART_1, addString("\r\n********************* Adding Driver Data ****************************** \r\n\0"), '\0');

		LCD_voidSendString(&myLCD,addString("Driver Username"));
		LCD_voidGotoXY(&myLCD,0,1);
		LCD_voidSetCursorType(&myLCD, CURS_ON_BLINK) ;
		// Take Name
		while((LOC_u8ReceivedData != UART_TERMINATE_CHAR) && LOC_u8Counter <= NAME_MAX_SIZE)
		{
			USART_voidReceiveDataSynch(USART_1, &LOC_u8ReceivedData);

			if((LOC_u8ReceivedData >= 'a'  && LOC_u8ReceivedData <= 'z') || (LOC_u8ReceivedData >= 'A'  && LOC_u8ReceivedData <= 'Z'))
			{
				USART_voidSendDataSynch(USART_1, &LOC_u8ReceivedData);
				LCD_voidSendChar(&myLCD, (u8)LOC_u8ReceivedData );
				// Save it on Array
				Glob_u8DriverArr[LOC_u8ArrayIndex][0][LOC_u8Counter] = (u8)LOC_u8ReceivedData ;
				LOC_u8Counter++ ;

			}
			else
			{
				// Unsupported
			}
		}
		Glob_u8DriverArr[LOC_u8ArrayIndex][0][++LOC_u8Counter] = (u8)'\0' ;
		// Take ID
		USART_voidSendStringWithDelimiterSynch(USART_1, addString("\r\n\0"), '\0');

		LCD_voidSetCursorType(&myLCD, CURS_OFF) ;
		LCD_voidGotoXY(&myLCD,0,2);
		LCD_voidSendString(&myLCD,addString("Driver ID"));
		LCD_voidGotoXY(&myLCD,0,3);
		LOC_u8Counter = 0 ;
		LOC_u8ReceivedData = 0 ;

		LCD_voidSetCursorType(&myLCD, CURS_ON_BLINK) ;

		do
		{
			USART_voidReceiveDataSynch(USART_1, &LOC_u8ReceivedData);
			if((LOC_u8ReceivedData >= '0'  && LOC_u8ReceivedData <= '9'))
			{
				USART_voidSendDataSynch(USART_1, &LOC_u8ReceivedData);
				LCD_voidSendChar(&myLCD, (u8)LOC_u8ReceivedData );
				// Save it on Array
				Glob_u8DriverArr[LOC_u8ArrayIndex][1][LOC_u8Counter] = (u8)LOC_u8ReceivedData ;
				LOC_u8Counter++ ;

			}
			else
			{
				// Unsupported
			}
		}
		while((ID_SIZE >= LOC_u8Counter) && (UART_TERMINATE_CHAR != LOC_u8ReceivedData));
		Glob_u8DriverArr[LOC_u8ArrayIndex][1][LOC_u8Counter] = '\0' ;


		Glob_u8NumberOfCurrentUsers++ ;
		USART_voidSendStringWithDelimiterSynch(USART_1, addString("\r\n********************* DONE ****************************** \r\n\0"), '\0');
		LCD_AddDriver();

	}
	else
	{
		// FULL
		LCD_voidSetCursorType(&myLCD, CURS_OFF ) ;
		LCD_voidClear(&myLCD);
		LCD_voidSendString(&myLCD,addString("PARKING GARAGE"));
		LCD_voidGotoXY(&myLCD,2,1);
		LCD_voidSendString(&myLCD,addString("FULL CAPACITY"));
		_delay_ms(200);
		LCD_voidMainScreen();
	}



}
static void System_VoidDeleteUser(DeletingDrivers_t copy_DeleteType)
{

	if(Glob_u8NumberOfCurrentUsers != 0)
	{
		u8 LOC_u8Counter = 0 ;
		if(copy_DeleteType == DELT_ONE_DRIVER)
		{
			// Search For Users
			LCD_voidSetCursorType(&myLCD, CURS_OFF) ;
			LCD_voidClear(&myLCD);
			USART_voidSendStringWithDelimiterSynch(USART_1, addString("\r\n********************* Delete Driver ****************************** \r\n\0"), '\0');

			LCD_voidSendString(&myLCD,addString("Driver Username"));
			LCD_voidGotoXY(&myLCD,0,1);
			LCD_voidSetCursorType(&myLCD, CURS_ON_BLINK) ;

			u8 LOC_u8username[NAME_MAX_SIZE+1];
			u8 LOC_u8ID[ID_SIZE+1];
			u16 LOC_u8ReceivedData = 0 ;

			// Take Name
			while((LOC_u8ReceivedData != UART_TERMINATE_CHAR) && LOC_u8Counter <= NAME_MAX_SIZE)
			{
				USART_voidReceiveDataSynch(USART_1, &LOC_u8ReceivedData);

				if((LOC_u8ReceivedData >= 'a'  && LOC_u8ReceivedData <= 'z') || (LOC_u8ReceivedData >= 'A'  && LOC_u8ReceivedData <= 'Z'))
				{
					USART_voidSendDataSynch(USART_1, &LOC_u8ReceivedData);
					LCD_voidSendChar(&myLCD, (u8)LOC_u8ReceivedData );
					// Save it on Array
					LOC_u8username[LOC_u8Counter] = (u8)LOC_u8ReceivedData ;
					LOC_u8Counter++ ;
				}
				else
				{
					// Unsupported
				}
			}

			LOC_u8username[LOC_u8Counter] = (u8)'\0' ;
			LOC_u8ReceivedData = 0 ;
			LOC_u8Counter = 0 ;
			USART_voidSendStringWithDelimiterSynch(USART_1, addString("\r\n\0"), '\0');

			LCD_voidSetCursorType(&myLCD, CURS_OFF) ;
			LCD_voidGotoXY(&myLCD,0,2);
			LCD_voidSendString(&myLCD,addString("Driver ID"));
			LCD_voidGotoXY(&myLCD,0,3);
			LOC_u8Counter = 0 ;
			LOC_u8ReceivedData = 0 ;

			LCD_voidSetCursorType(&myLCD, CURS_ON_BLINK) ;

			do
			{
				USART_voidReceiveDataSynch(USART_1, &LOC_u8ReceivedData);
				if((LOC_u8ReceivedData >= '0'  && LOC_u8ReceivedData <= '9'))
				{
					USART_voidSendDataSynch(USART_1, &LOC_u8ReceivedData);
					LCD_voidSendChar(&myLCD, (u8)LOC_u8ReceivedData );
					// Save it on Array
					LOC_u8ID[LOC_u8Counter] = (u8)LOC_u8ReceivedData ;
					LOC_u8Counter++ ;

				}
				else
				{
					// Unsupported
				}
			}
			while((ID_SIZE >= LOC_u8Counter) && (UART_TERMINATE_CHAR != LOC_u8ReceivedData));
			LOC_u8ID[LOC_u8Counter] = '\0' ;

			/*	Searching	*/
			LOC_u8Counter = 0 ;
			u8 LOC_u8Result = 1 ;
			u8 DriverIndex = 10  ;
			for(LOC_u8Counter = 0 ; LOC_u8Counter < Glob_u8NumberOfCurrentUsers ; LOC_u8Counter++)
			{
				// Name Searching
				LOC_u8Result = compTwoStrings(LOC_u8username, &Glob_u8DriverArr[LOC_u8Counter][0][0]);
				if(LOC_u8Result == 0)
				{
					DriverIndex = LOC_u8Counter ;
					break ;
				}

			}
			if(LOC_u8Result == 0 && DriverIndex >= Glob_u8NumberOfCurrentUsers)
			{
				LOC_u8Result = 1 ;
				// ID Verify
				LOC_u8Result = compTwoStrings(LOC_u8ID, &Glob_u8DriverArr[DriverIndex][1][0]);
			}

			if(LOC_u8Result == 0)
			{
				// Valid Name and ID
				Glob_u8DriverFreeIndex[DriverIndex] = 1 ;
				Glob_u8NumberOfCurrentUsers-- ;
				USART_voidSendStringWithDelimiterSynch(USART_1, addString("\r\n********************* SUCCESSFUL ****************************** \r\n\0"), '\0');
				LCD_voidDeleteDriver();
			}
			else
			{
				LCD_voidClear(&myLCD);
				LCD_voidGotoXY(&myLCD, 2, 2) ;
				LCD_voidSendString(&myLCD, addString("UNSUCCESSFUL"));
				USART_voidSendStringWithDelimiterSynch(USART_1, addString("\r\n********************* UNSUCCESSFUL ****************************** \r\n\0"), '\0');
				LCD_voidMainScreen();
			}

		}
		else if(DELT_ALL_DRIVERS)
		{
			for(LOC_u8Counter = 0 ; LOC_u8Counter < MAX_SLOTS_IN_GARAGE ; LOC_u8Counter++)
			{
				Glob_u8DriverFreeIndex[LOC_u8Counter] = 1 ;
			}
			Glob_u8NumberOfCurrentUsers = 0 ;
			USART_voidSendStringWithDelimiterSynch(USART_1, addString("\r\n********************* SUCCESSFUL ****************************** \r\n\0"), '\0');
			LCD_voidDeleteDriver();
		}
	}
	else
	{
		// No Users
		LCD_voidSetCursorType(&myLCD, CURS_OFF ) ;
		LCD_voidClear(&myLCD);
		LCD_voidSendString(&myLCD,addString("PARKING GARAGE"));
		LCD_voidGotoXY(&myLCD,2,1);
		LCD_voidSendString(&myLCD,addString("No Existence"));
		LCD_voidGotoXY(&myLCD,2,2);
		LCD_voidSendString(&myLCD,addString("Drivers Data"));
		_delay_ms(200);
		LCD_voidMainScreen();
	}
}
/*********************************** END SYSTEM FCN	*************************/

u8 compTwoStrings (u8*string1 , u8*string2)
{
    u8 LOC_u8Counter=0 ;
    u8 LOC_u8Flag = 0 ;
    while(string1[LOC_u8Counter] != '\0' &&string2[LOC_u8Counter] != '\0')
    {
        if(string1[LOC_u8Counter] != string2[LOC_u8Counter])
        {
            LOC_u8Flag = 1;
            break;
        }
        LOC_u8Counter++;
    }
    return LOC_u8Flag ;
}

static SPI_config SPI1_Communication ;

static void SPI_voidSetup(void)
{
	GPIO_voidSetPinDirection(ECU1_PORT_PIN,GPIO_OUTPUT_2MHZ_PUSH_PULL) ;
	GPIO_voidSetPinDirection(ECU3_PORT_PIN,GPIO_OUTPUT_2MHZ_PUSH_PULL) ;

	// Force the Slave Select (HIGH) for idle Mode
	GPIO_voidSetPinValue(ECU1_PORT_PIN, HIGH);
	GPIO_voidSetPinValue(ECU3_PORT_PIN, HIGH);


	SPI1_Communication.SPI_CommMode = SPI_FULL_DOUPLEX ;
	SPI1_Communication.SPI_DataOrder = SPI_MSB_FIRST  ;
	SPI1_Communication.SPI_DataSize =SPI_8_BIT_DATA  ;
	SPI1_Communication.SPI_IdleLevel = SPI_IDLE_LOW ;
	SPI1_Communication.SPI_DataSampling = SPI_LEADING_EDGE ;
	SPI1_Communication.SPI_BuadRate = SPI_BUAD_PRESCALED_BY_16;
	SPI1_Communication.SPI_Mode = SPI_MASTER ;
	SPI1_Communication.SPI_IRQ =SPI_IRQ_DISABLED ;
	SPI1_Communication.SPI_SlaveSelectMangment =SPI_SSM_HW_SLAVE ;
	SPI1_Communication.P_IRQ_CallBack = NULL ;
	SPI_voidInit(SPI_1, &SPI1_Communication) ;
	SPI_VoidGPIO_SetPins(SPI_1);
}


/********************************************** Start of LCD fcn	********************************************************/
static 	USART_Config myUART ;

static void LCD_voidSetup(void)
{
	myLCD.LCD_SIZE_Rows = 4 ;
	myLCD.LCD_SIZE_Cols = 16 ;
	myLCD.LCD_PortPins = LCD_PortPin ;
	LCD_voidInit(&myLCD);
	/* First time	*/
#if _APP_DEBUG_ == 0
	LCD_voidSendString(&myLCD, addString("Welcome"));
	LCD_voidGotoXY(&myLCD,4,1);
	LCD_voidSendString(&myLCD,addString(" Abnaby Wait"));
	progressBar(&myLCD,100,0);
	LCD_voidGotoXY(&myLCD,0,0);
	LCD_voidSetCursorType(&myLCD, CURS_OFF ) ;
	/*	Main Screen	*/
	LCD_voidMainScreen();
#endif

}

void UART_voidSetup(void)
{
	/*	GPIO	*/
	USART__VoidGPIO_SetPins(USART_1);
	/*	UART	*/
	myUART.USART_OperationMode = USART_TRANCIVER ; ;
	myUART.USART_BuadRate = 9600 ;
	myUART.USART_DataLength = USART_8BIT ;
	myUART.USART_Parity =USART_DISABLE_PARITY ;
	myUART.USART_StopBit = USART_1_STOPBIT ;
	myUART.USART_HWFlowControl = USART_HW_FLOW_CONTROLLED_DISALBED ;
	myUART.USART_IdleLevel     =USART_IDLE_LOW ;
	myUART.USART_DataSampling  = USART_LEADING_EDGE ;
	myUART.P_IRQ_CallBack = NULL  ;
	myUART.USART_IRQ_t =  USART_DISABLE_IRQs ;
	USART_voidInit(USART_1, &myUART);
	USART_voidSendStringWithDelimiterSynch(USART_1, addString("********************* ADMIN DASHBOARD ****************************** \r\n\0"), '\0');

}
static void progressBar(LCD_Config *myLCD, u8 prcentage, u16 delayOfBar)
{
	LCD_voidStoreCustomChar(myLCD ,LCD_ProgrssBarChar , 0);
	LCD_voidGotoXY(myLCD,0,2);
	prcentage = (u8)((prcentage * 16 )/100) ;
	for(int i = 0 ; i < prcentage ; i++)
	{
		LCD_voidSendChar(myLCD,0);
		_delay_ms(delayOfBar);
	}

}
static void DeletingBar(LCD_Config *myLCD, u8 prcentage, u16 delayOfBar)
{
	LCD_voidStoreCustomChar(myLCD ,LCD_Deleting , 2);
	LCD_voidGotoXY(myLCD,4,1);
	LCD_voidSendString(myLCD, addString("Deleting"));
	LCD_voidGotoXY(myLCD,0,2);
	prcentage = (u8)((prcentage * 16 )/100) ;
	for(int i = 0 ; i < prcentage ; i++)
	{
		LCD_voidSendChar(myLCD,2);
		_delay_ms(delayOfBar);
	}
	LCD_voidGotoXY(myLCD,6,3);
	LCD_voidSendString(myLCD, addString("DONE"));
}
static void AddinggBar(LCD_Config *myLCD, u8 prcentage, u16 delayOfBar)
{
	LCD_voidStoreCustomChar(myLCD ,LCD_Adding , 4);
	LCD_voidGotoXY(myLCD,5,1);
	LCD_voidSendString(myLCD, addString("Adding"));
	LCD_voidGotoXY(myLCD,0,2);
	prcentage = (u8)((prcentage * 16 )/100) ;
	for(int i = 0 ; i < prcentage ; i++)
	{
		LCD_voidSendChar(myLCD,4);
		_delay_ms(delayOfBar);
	}
	LCD_voidGotoXY(myLCD,6,3);
	LCD_voidSendString(myLCD, addString("DONE"));
}

static void LCD_voidMainScreen(void)
{
	LCD_voidSetCursorType(&myLCD, CURS_OFF ) ;
	LCD_voidClear(&myLCD);
	LCD_voidSendString(&myLCD,addString("PARKING GARAGE"));
	LCD_voidGotoXY(&myLCD,0,1);
	LCD_voidSendString(&myLCD,addString("Select one of : "));
	LCD_voidGotoXY(&myLCD,0,2);
	LCD_voidSendString(&myLCD,addString("1-Admin Options"));
	LCD_voidGotoXY(&myLCD,0,3);
	LCD_voidSendString(&myLCD,addString("2-Garage Statues"));
}

static void LCD_voidAdminOptions(void)
{
	LCD_voidSetCursorType(&myLCD, CURS_OFF ) ;
	LCD_voidClear(&myLCD);
	LCD_voidSendString(&myLCD,addString("PARKING GARAGE"));
	LCD_voidGotoXY(&myLCD,0,1);
	LCD_voidSendString(&myLCD,addString("1- Add Driver"));
	LCD_voidGotoXY(&myLCD,0,2);
	LCD_voidSendString(&myLCD,addString("2- Delete Driver"));
	LCD_voidGotoXY(&myLCD,0,3);
	LCD_voidSendString(&myLCD,addString("3- Edit Data"));
	LCD_voidSendString(&myLCD,addString("  <B"));
}

static void LCD_voidStatusOptions(void)
{
	LCD_voidSetCursorType(&myLCD, CURS_OFF ) ;
	LCD_voidClear(&myLCD);
	LCD_voidSendString(&myLCD,addString("PARKING GARAGE"));
	LCD_voidGotoXY(&myLCD,0,1);
	LCD_voidSendString(&myLCD,addString("-Available Slots"));
	LCD_voidGotoXY(&myLCD,6,2);
	LCD_voidSendString(&myLCD,addString(" = "));
	LCD_voidSendNumber(&myLCD, Glob_u8NumberOfAvailableSlots) ;


	LCD_voidGotoXY(&myLCD,11,3);
	LCD_voidSendString(&myLCD,addString("<BACK"));
	LCD_voidSetCursorType(&myLCD, CURS_ON_BLINK ) ;

}

static void LCD_AddDriver(void)
{
	LCD_voidSetCursorType(&myLCD, CURS_OFF) ;
	LCD_voidClear(&myLCD);
	LCD_voidSendString(&myLCD,addString("PARKING GARAGE"));
	LCD_voidGotoXY(&myLCD,0,1);
	AddinggBar(&myLCD,100,1);
	LCD_voidMainScreen();
}

static void LCD_voidDeleteDriver(void)
{
	LCD_voidSetCursorType(&myLCD, CURS_OFF) ;
	LCD_voidClear(&myLCD);
	LCD_voidSendString(&myLCD,addString("PARKING GARAGE"));
	LCD_voidGotoXY(&myLCD,0,1);
	DeletingBar(&myLCD,100,1);
	LCD_voidMainScreen();

}
static void LCD_voidDeletingOptions(void)
{
	LCD_voidSetCursorType(&myLCD, CURS_OFF) ;
	LCD_voidClear(&myLCD);
	LCD_voidSendString(&myLCD,addString("PARKING GARAGE"));
	LCD_voidGotoXY(&myLCD,0,1);
	LCD_voidSendString(&myLCD,addString("1- Delete Driver"));
	LCD_voidGotoXY(&myLCD,0,2);
	LCD_voidSendString(&myLCD,addString("2- Delete All"));
	LCD_voidGotoXY(&myLCD,3,3);
	LCD_voidSendString(&myLCD,addString("<MAIN SCREEN"));
	LCD_voidSetCursorType(&myLCD, CURS_ON_BLINK ) ;
}

/********************************************** End of LCD fcn	********************************************************/

/********************************************** Start of Keypad fcn	********************************************************/
static void keypad_voidSetup(void)
{
	/*	Keypad Init		*/
	myKeypad.NumOfRows = ROWS ;	// Output
	myKeypad.NumOfCols = COLS ;	//Input
	myKeypad.Port_Pin_Rows = RowsPins ;
	myKeypad.Port_Pin_Cols = ColsPins ;
	myKeypad.KeysPattern = newKeyMap(keys) ;
	HAL_KeyPadInit(&myKeypad);
}
/********************************************** End of Keypad fcn	********************************************************/

/********************************************** Start of Seven Segment fcn	********************************************************/
void _7Segnent_voidSetup(void)
{
	mySegment._7SegmentMode = _7_SEG_4_PIN_IC ;
	mySegment._7SegmentType = COMN_ANODE ;
	/************** Set 7 Segment2 Pins ***********************/
	mySegment._7SegmentPins._7SEG_A_PORT = PORTA ;
	mySegment._7SegmentPins._7SEG_A_PIN  = PIN8;
	mySegment._7SegmentPins._7SEG_B_PORT = PORTB ;
	mySegment._7SegmentPins._7SEG_B_PIN  = PIN10  ;
	mySegment._7SegmentPins._7SEG_C_PORT = PORTB ;
	mySegment._7SegmentPins._7SEG_C_PIN  = PIN1 ;
	mySegment._7SegmentPins._7SEG_D_PORT = PORTA ;
	mySegment._7SegmentPins._7SEG_D_PIN  = PIN3;

	/************** Set 7 Segment Init ***********************/
	HAL_7SegmentInit(&mySegment);
	HAL_7SegmentWriteNumber(&mySegment, Glob_u8NumberOfAvailableSlots);
}

/********************************************** End of Seven Segment fcn	********************************************************/
/********************************************** Start of EXTI fcn	********************************************************/
static void EXTI_voidSetup(void)
{
	// EXTI0
	NVIC_voidEnableInterrupt(6);
	AFIO_voidEXTIConfiguration(EXTI_LINE0, ECU1_EXTI_PORT);
	EXTI_voidInitLine(EXTI_LINE0, EXTI_ON_CHANGE);
	EXTI_voidSetCallBackFCN(EXTI_LINE0, ECU1_Callback);
	EXTI_voidEnableEXTI(EXTI_LINE0);

	// EXTI1
	NVIC_voidEnableInterrupt(7);
	AFIO_voidEXTIConfiguration(EXTI_LINE1, ECU3_EXTI_PORT);
	EXTI_voidInitLine(EXTI_LINE1, EXTI_ON_CHANGE);
	EXTI_voidSetCallBackFCN(EXTI_LINE1, ECU3_Callback);
	EXTI_voidEnableEXTI(EXTI_LINE1);






}
/********************************************** End of EXTI fcn	********************************************************/


/******************************************************************************
* Function Definitions
*******************************************************************************/


/*				MAIN FCNs				*/
void ECU3_Dashboard_APP_SETUP(void)
{
	/*			Init MCU Clock			*/
	RCC_voidInitSysClocks();
	RCC_voidEnableClock(RCC_APB2, PORTA);
	RCC_voidEnableClock(RCC_APB2, PORTB);
	RCC_voidEnableClock(RCC_APB2,14 );		/*	USART1	*/
	RCC_voidEnableClock(RCC_APB2 , 0 );		/*	AFIO	*/
	RCC_voidEnableClock(RCC_APB2,12 );		/*	SPI	*/
	

	/*			MCAL					*/
	UART_voidSetup();
	EXTI_voidSetup();
	SPI_voidSetup() ;
	STK_voidInit();


	/*			HAL					*/
	keypad_voidSetup();
	_7Segnent_voidSetup();
	LCD_voidSetup();
	STK_voidSetIntervalPeriodic_MS(TIME_OF_ONE_INTTERRUPT, Tiner_voidCallback);



	/*			General				*/
	System_voidFillAdminsData();
	System_voidFillDriverssData();
}

u8 Glob_u8Pressed_Key = KEYPAD_NOT_PRESSED_RETURN ;
void ECU3_Dashboard_APP_LOOP(void)
{

	do
	{
		Glob_u8Pressed_Key = HAL_KeyPadGetPressedKey(&myKeypad);

	}while(!(Glob_u8Pressed_Key>= '1' && Glob_u8Pressed_Key <= '2'));



	// Get Option
	if((u8)OPTION_ADMIN_SELECT == Glob_u8Pressed_Key)
	{
		// Validate Admin username and password
		if(Glob_LogginSeesionExpired == 1)
		{
			System_u8ValidateAdminData() ;
		}

		if(Glob_LogginSeesionExpired == 0)
		{
			// admin privilege Screen
			LCD_voidAdminOptions();
			do
			{
				Glob_u8Pressed_Key = HAL_KeyPadGetPressedKey(&myKeypad);

			}while(!((Glob_u8Pressed_Key>= '1' && Glob_u8Pressed_Key <= '3' ) || (Glob_u8Pressed_Key == (u8)KEYPAD_BACK_SYMBOL ))) ;

			/* Check  Pressed Key */
			if(OPTION_ADD_USER == Glob_u8Pressed_Key)
			{
				// Add New User
				System_voidAddNewUser();

			}
			else if(OPTION_DELETE_USER == Glob_u8Pressed_Key)
			{
				// Display Deleting Options
				LCD_voidDeletingOptions();
				// Get Answer
				do
				{
					Glob_u8Pressed_Key = HAL_KeyPadGetPressedKey(&myKeypad);

				}while(!((Glob_u8Pressed_Key>= '1' && Glob_u8Pressed_Key <= '2' ) || (Glob_u8Pressed_Key == (u8)KEYPAD_BACK_SYMBOL ))) ;
				// Delete exist User
				switch(Glob_u8Pressed_Key)
				{
					case	'1' : System_VoidDeleteUser(DELT_ONE_DRIVER); break ;
					case	'2' : System_VoidDeleteUser(DELT_ALL_DRIVERS); break ;
					default     : LCD_voidMainScreen();
				}


			}
			else if(OPTION_EDIT_USER == Glob_u8Pressed_Key)
			{
				// Edit Exist User

			}
			else if(KEYPAD_BACK_SYMBOL == Glob_u8Pressed_Key)
			{
				// Return to Home
				LCD_voidMainScreen();
			}
			else
			{
				//<TODO ERROR> Wrong in options of admin Screen Selection
				LCD_voidMainScreen();
			}
		}
		else
		{
			// Wrong Admin Data
			LCD_voidMainScreen();
		}
	}
	else if ((u8)OPTION_GARAGE_SELECT == Glob_u8Pressed_Key)
	{
		// Display Garage Status
		LCD_voidStatusOptions() ;
		// Check Go back char
		do
		{
			Glob_u8Pressed_Key = HAL_KeyPadGetPressedKey(&myKeypad);

		}while(!(Glob_u8Pressed_Key == (u8)KEYPAD_BACK_SYMBOL ))  ;

		if(KEYPAD_BACK_SYMBOL == Glob_u8Pressed_Key)
		{
			// Return to Home
			LCD_voidMainScreen();
		}
		else
		{
			//<TODO ERROR> Wrong in options of garage status Screen Selection.
		}


	}
	else
	{
		//<TODO ERROR> Wrong Main Screen Selection
		LCD_voidMainScreen();

	}

}
	
	

/******************************************************************************
* Callbacks Definitions
*******************************************************************************/

static void ECU1_Callback(void)
{


#if _APP_DEBUG_ == 1
	 LCD_voidClear(&myLCD);
	LCD_voidSendString(&myLCD, addString("Ana ECU1 Ya Bro"));
#endif

	u16 LOC_u8TxBuffer = MASTER_ACK ;
	u16 LOC_u8RxBuffer = 0 ;
	u8 LOC_u8userName[NAME_MAX_SIZE+1] = {0} ;
	u8 LOC_u8ID[ID_SIZE+1] = {0} ;

	u8 LOC_u8Counter = 0 ,LOC_u8NameCounter = 0 ,LOC_u8IDCounter = 0 ;

	// Make Slave Pin Low to initiate transaction
	GPIO_voidSetPinValue(ECU1_PORT_PIN, LOW);
	// Send Master NACK
	SPI_voidSend_RecieveDataSynch(SPI_1, NULL , &LOC_u8RxBuffer);
	// Send Master Ack
	do
	{
		SPI_voidSend_RecieveDataSynch(SPI_1, &LOC_u8TxBuffer, &LOC_u8RxBuffer);
#if _APP_DEBUG_ == 1
		LCD_voidSendChar(&myLCD, LOC_u8RxBuffer) ;
#endif
		if( (LOC_u8RxBuffer >= 'a'  && LOC_u8RxBuffer <= 'z') || (LOC_u8RxBuffer >= 'A'  && LOC_u8RxBuffer <= 'Z') )
		{
			// UserName Field
			LOC_u8userName[LOC_u8NameCounter] = LOC_u8RxBuffer ;
			LOC_u8NameCounter++ ;
#if _APP_DEBUG_ == 1
		//LCD_voidSendChar(&myLCD, LOC_u8RxBuffer) ;
#endif
		}
		else if (LOC_u8RxBuffer >= '0' && LOC_u8RxBuffer <= '9')
		{
			// ID Field
			LOC_u8ID[LOC_u8IDCounter] = LOC_u8RxBuffer ;
			LOC_u8IDCounter++ ;
#if _APP_DEBUG_ == 1
		LCD_voidSendChar(&myLCD, LOC_u8RxBuffer) ;
#endif
		}
		else
		{
			// Invalid
		}
	}while(LOC_u8RxBuffer != VALID_ID_SYMBOL);
	LOC_u8userName[LOC_u8NameCounter] = '\0';
	LOC_u8ID[LOC_u8IDCounter] ='\0';

	// When Come VALID_ID_SYMBOL check username exist or not
	if(Glob_u8NumberOfCurrentUsers == 0  || Glob_u8NumberOfAvailableSlots == 0)
	{
		// Send invaild
		// NOT_VALID_ID
		LOC_u8TxBuffer = NOT_VALID_ID ;
		SPI_voidSend_RecieveDataSynch(SPI_1, &LOC_u8TxBuffer, &LOC_u8RxBuffer);
	}
	else
	{
		/*	Searching	*/
		LOC_u8Counter = 0 ;
		u8 LOC_u8Result = 1 ;
		u8 userIdx = 10  ;
		for(LOC_u8Counter = 0 ; LOC_u8Counter < Glob_u8NumberOfCurrentUsers ; LOC_u8Counter++)
		{
			// Name Searching
			LOC_u8Result = compTwoStrings(LOC_u8userName, &Glob_u8DriverArr[LOC_u8Counter][0][0]);
			if(LOC_u8Result == 0)
			{
				userIdx = LOC_u8Counter ;
				if(Glob_u8InGarage[userIdx] == 1)
				{
					// Wrong Gate
					LOC_u8Result = 1 ;

				}
				break ;
			}

		}
		if(LOC_u8Result == 0 && userIdx <= Glob_u8NumberOfCurrentUsers)
		{
			LOC_u8Result = 1 ;
			// ID Verify
			LOC_u8Result = compTwoStrings(LOC_u8ID, &Glob_u8DriverArr[userIdx][1][0]);
		}

		if(LOC_u8Result == 0)
		{

			// Valid Name and ID Send VALID_ID
			do
			{
				LOC_u8TxBuffer = VALID_ID ;
				SPI_voidSend_RecieveDataSynch(SPI_1, &LOC_u8TxBuffer, &LOC_u8RxBuffer);
			}while(VALID_ID_SYMBOL == LOC_u8RxBuffer) ;

			Glob_u8NumberOfAvailableSlots-- ;
			HAL_7SegmentWriteNumber(&mySegment, Glob_u8NumberOfAvailableSlots);
			Glob_u8InGarage[userIdx] = 1;
			Glob_u8OutGarage[userIdx] = 0;

		}
		else
		{
			// invalid Name and ID Send NOT_VALID_ID
			LOC_u8TxBuffer = NOT_VALID_ID ;
			do
			{
				LOC_u8TxBuffer = '0' ;
				SPI_voidSend_RecieveDataSynch(SPI_1, &LOC_u8TxBuffer, &LOC_u8RxBuffer);
			}while(VALID_ID_SYMBOL == LOC_u8RxBuffer) ;

		}

	}

	// Make Slave Pin High to end transaction
	GPIO_voidSetPinValue(ECU1_PORT_PIN, HIGH);




}
static void ECU3_Callback(void)
{


#if _APP_DEBUG_ == 1
	 LCD_voidClear(&myLCD);
	LCD_voidSendString(&myLCD, addString("Ana ECU1 Ya Bro"));
#endif

	u16 LOC_u8TxBuffer = MASTER_ACK ;
	u16 LOC_u8RxBuffer = 0 ;
	u8 LOC_u8userName[NAME_MAX_SIZE+1] = {0} ;
	u8 LOC_u8ID[ID_SIZE+1] = {0} ;

	u8 LOC_u8Counter = 0 ,LOC_u8NameCounter = 0 ,LOC_u8IDCounter = 0 ;

	// Make Slave Pin Low to initiate transaction
	GPIO_voidSetPinValue(ECU3_PORT_PIN, LOW);
	// Send Master NACK
	SPI_voidSend_RecieveDataSynch(SPI_1, NULL , &LOC_u8RxBuffer);
	// Send Master Ack
	do
	{
		SPI_voidSend_RecieveDataSynch(SPI_1, &LOC_u8TxBuffer, &LOC_u8RxBuffer);
#if _APP_DEBUG_ == 1
		//LCD_voidSendChar(&myLCD, LOC_u8RxBuffer) ;
#endif
		if( (LOC_u8RxBuffer >= 'a'  && LOC_u8RxBuffer <= 'z') || (LOC_u8RxBuffer >= 'A'  && LOC_u8RxBuffer <= 'Z') )
		{
			// UserName Field
			LOC_u8userName[LOC_u8NameCounter] = LOC_u8RxBuffer ;
			LOC_u8NameCounter++ ;
#if _APP_DEBUG_ == 1
		//LCD_voidSendChar(&myLCD, LOC_u8RxBuffer) ;
#endif
		}
		else if (LOC_u8RxBuffer >= '0' && LOC_u8RxBuffer <= '9')
		{
			// ID Field
			LOC_u8ID[LOC_u8IDCounter] = LOC_u8RxBuffer ;
			LOC_u8IDCounter++ ;
#if _APP_DEBUG_ == 1
		//LCD_voidSendChar(&myLCD, LOC_u8RxBuffer) ;
#endif
		}
		else
		{
			// Invalid
		}
	}while(LOC_u8RxBuffer != VALID_ID_SYMBOL);
	LOC_u8userName[LOC_u8NameCounter] = '\0';
	LOC_u8ID[LOC_u8IDCounter] ='\0';

	// When Come VALID_ID_SYMBOL check username exist or not
	if(Glob_u8NumberOfCurrentUsers == 0 || Glob_u8NumberOfAvailableSlots == MAX_SLOTS_IN_GARAGE)
	{
		// Send invaild
		// NOT_VALID_ID
		LOC_u8TxBuffer = NOT_VALID_ID ;
		SPI_voidSend_RecieveDataSynch(SPI_1, &LOC_u8TxBuffer, &LOC_u8RxBuffer);
	}
	else
	{
		/*	Searching	*/
		LOC_u8Counter = 0 ;
		u8 LOC_u8Result = 1 ;
		u8 userIdx = 10  ;
		for(LOC_u8Counter = 0 ; LOC_u8Counter < Glob_u8NumberOfCurrentUsers ; LOC_u8Counter++)
		{
			// Name Searching
			LOC_u8Result = compTwoStrings(LOC_u8userName, &Glob_u8DriverArr[LOC_u8Counter][0][0]);
			if(LOC_u8Result == 0)
			{
				userIdx = LOC_u8Counter ;
				if(Glob_u8OutGarage[userIdx] == 1)
				{
					// Wrong Out Gate ببيخرج من مكان الدخول
					LOC_u8Result = 1 ;
				}
				break ;
			}

		}
		if(LOC_u8Result == 0 && userIdx <= Glob_u8NumberOfCurrentUsers)
		{
			LOC_u8Result = 1 ;
			// ID Verify
			LOC_u8Result = compTwoStrings(LOC_u8ID, &Glob_u8DriverArr[userIdx][1][0]);
		}

		if(LOC_u8Result == 0)
		{
#if _APP_DEBUG_ == 1
	//LCD_voidClear(&myLCD);
	//LCD_voidSendString(&myLCD, addString("VALID"));
#endif
			// Valid Name and ID Send VALID_ID
			do
			{
				LOC_u8TxBuffer = VALID_ID ;
				SPI_voidSend_RecieveDataSynch(SPI_1, &LOC_u8TxBuffer, &LOC_u8RxBuffer);
			}while(VALID_ID_SYMBOL == LOC_u8RxBuffer) ;
			Glob_u8NumberOfAvailableSlots++ ;
			HAL_7SegmentWriteNumber(&mySegment, Glob_u8NumberOfAvailableSlots);
			Glob_u8InGarage[userIdx] = 0;
			Glob_u8OutGarage[userIdx] = 1;


		}
		else
		{
			// invalid Name and ID Send NOT_VALID_ID
			LOC_u8TxBuffer = NOT_VALID_ID ;
			do
			{
				LOC_u8TxBuffer = '0' ;
				SPI_voidSend_RecieveDataSynch(SPI_1, &LOC_u8TxBuffer, &LOC_u8RxBuffer);
			}while(VALID_ID_SYMBOL == LOC_u8RxBuffer) ;

		#if _APP_DEBUG_ == 1
			//LCD_voidClear(&myLCD);
		//	LCD_voidSendString(&myLCD, addString("IN-VALID")) ;

		#endif
		}

	}

	// Make Slave Pin High to end transaction
	GPIO_voidSetPinValue(ECU3_PORT_PIN, HIGH);

}

static void Tiner_voidCallback (void)
{

	// (EXPIRITION_TIME_IN_MS * TIME_OF_ONE_INTTERRUPT (each interrupt cones after 5 sec) ) / 0.1 ;
	if(EXPIRITION_TIME_IN_MS*60 > LOC_u8TimerCounter)
	{
		LOC_u8TimerCounter++ ;
	}
	else
	{
		Glob_LogginSeesionExpired = 1 ;
		LOC_u8TimerCounter = 0 ;
	}

}


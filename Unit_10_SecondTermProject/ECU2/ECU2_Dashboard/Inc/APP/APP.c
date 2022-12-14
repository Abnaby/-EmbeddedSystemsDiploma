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

#define _APP_DEBUG_	1

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

#define ID_SIZE					7
#define NAME_MAX_SIZE			10

#define MAX_SLOTS_IN_GARAGE		3
#define SPI1_PORT_PIN			PORTA, PIN4


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

ID_Check_t Glob_ID_Valid =  NOT_VALID_ID ; 
// Garage Data

u8 Glob_u8NumberOfAvailableSlots = MAX_SLOTS_IN_GARAGE ;


// LCD
u8 LCD_PortPin[]=
{
	// < Enable,rsPin, rwPort,d4Port,d4Pin ....... d7Port,d7Pin>
	//EN
	PORTA , PIN0 ,
	//RS
	PORTA , PIN1 ,
	//D4
	PORTA , PIN2 ,
	//D5
	PORTA , PIN3 ,
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
static void LCD_voidValidateID(void);
static void LCD_AddDriver(void);


/******************************************************************************
* private Callbacks Definitions
*******************************************************************************/

void xDelay(u32 time)
{
	u32 i;
	u32 j;
	for(i = time;i > 0;i--)
		for(j = 1000;j > 0;j--);

}

#define _delay_ms(ms) xDelay(ms)
/******************************************************************************
* private Functions Definitions
*******************************************************************************/
static SPI_config SPI1_Communication ;

static void SPI_voidSetup(void)
{
	GPIO_voidSetPinDirection(PORTA, PIN4,GPIO_OUTPUT_10MHZ_PUSH_PULL) ;
	// Force the Slave Select (HIGH) for idle Mode
	GPIO_voidSetPinValue(PORTA, PIN4, HIGH);


	SPI1_Communication.SPI_CommMode = SPI_FULL_DOUPLEX ;
	SPI1_Communication.SPI_DataOrder = SPI_MSB_FIRST  ;
	SPI1_Communication.SPI_DataSize =SPI_8_BIT_DATA  ;
	SPI1_Communication.SPI_IdleLevel = SPI_IDLE_HIGH ;
	SPI1_Communication.SPI_DataSampling = SPI_TRAILING_EDGE ;
	SPI1_Communication.SPI_BuadRate = SPI_BUAD_PRESCALED_BY_16;
	SPI1_Communication.SPI_Mode = SPI_MASTER ;
	SPI1_Communication.SPI_IRQ =SPI_IRQ_DISABLED ;
	SPI1_Communication.SPI_SlaveSelectMangment =SPI_SSM_SW_SLAVE_SET ;
	SPI1_Communication.P_IRQ_CallBack = NULL ;
	SPI_voidInit(SPI_1, &SPI1_Communication) ;
	SPI_VoidGPIO_SetPins(SPI_1);
}

static LCD_Config myLCD ;

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

static void LCD_voidValidateID(void)
{
	LCD_voidSetCursorType(&myLCD, CURS_OFF) ;
	LCD_voidClear(&myLCD);
	LCD_voidSendString(&myLCD,addString("PARKING GARAGE"));
	LCD_voidGotoXY(&myLCD,0,1);
	LCD_voidSendString(&myLCD,addString("Enter Driver ID: "));
	LCD_voidGotoXY(&myLCD,11,3);
	LCD_voidSendString(&myLCD,addString("<BACK"));
	LCD_voidGotoXY(&myLCD,5,2);
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
/******************************************************************************
* Function Definitions
*******************************************************************************/


/*				MAIN FCNs				*/
void ECU3_Dashboard_APP_SETUP(void)
{
	/*			Init MCU Clock			*/
	RCC_voidInitSysClocks();
	RCC_voidEnableClock(RCC_APB2,PORTA );


	
	/*			MCAL					*/
	//SPI_voidSetup() ;

	/*			HAL					*/
	LCD_voidSetup();
	LCD_AddDriver();
}


void ECU3_Dashboard_APP_LOOP(void)
{

}
	
	

/******************************************************************************
* Callbacks Definitions
*******************************************************************************/


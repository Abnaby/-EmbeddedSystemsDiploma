/**
* @file TFT_program.c
* @author Mohamed Abd El-Naby (mahameda.naby@gmail.com) 
* @brief 
* @version 0.1
* @date 2022-11-10
*
*/
/******************************************************************************
* Includes
*******************************************************************************/
#include "STD_TYPES.h"
#include "BIT_MATH.h"
#include "COMMON.h"
#include "RCC_interface.h"
#include "GPIO_interface.h"
#include "SPI_interface.h"
#include "STK_interface.h"
#include "TFT_interface.h"
#include "TFT_config.h"
#include "TFT_private.h"










/******************************************************************************
* Module Preprocessor Constants
*******************************************************************************/




/******************************************************************************
* Module Preprocessor Macros
*******************************************************************************/



#define TFT_WIDTH_SIZE    (TFT_WIDTH - 1)
#define TFT_HEIGHT_SIZE   (TFT_HEIGHT - 1)


/******************************************************************************
* Typedefs
*******************************************************************************/




/******************************************************************************
* Module Variable Definitions
*******************************************************************************/
static SPI_config mySPI ;




/******************************************************************************
* Function Prototypes
*******************************************************************************/




/******************************************************************************
* Function Definitions
*******************************************************************************/

/*      STATIC  */

static void TFT_voidWriteCmd(u8     Copy_u8Command)
{
	GPIO_voidSetPinValue( TFT_A0_PIN, LOW) ;
	GPIO_voidSetPinValue(TFT_SLAVE_SLCT_PIN, LOW);
    SPI_voidSendDataSynch(SPI_1  , (u16*)&Copy_u8Command) ;
	GPIO_voidSetPinValue(TFT_SLAVE_SLCT_PIN, HIGH);

}
static void TFT_voidWriteData(u8    Copy_u8Data)
{
    GPIO_voidSetPinValue(TFT_A0_PIN , HIGH) ; 
	GPIO_voidSetPinValue(TFT_SLAVE_SLCT_PIN, LOW);
    SPI_voidSendDataSynch(SPI_1  , (u16*)&Copy_u8Data) ;
	GPIO_voidSetPinValue(TFT_SLAVE_SLCT_PIN, HIGH);

}

/************************** Public	*****************************/

void TFT_voidInit(void)
{
	/************************************ RCC INIT	***************************************/
	RCC_voidInitSysClocks();
	RCC_voidEnableClock(RCC_APB2, PORTA);
	RCC_voidEnableClock(RCC_APB2, PORTB);
	RCC_voidEnableClock(RCC_APB2, PORTC);
	RCC_voidEnableClock(RCC_APB2,12 );

	/*********************************** INIT SPI	***************************************/
	mySPI.SPI_Mode 					= SPI_MASTER ;
	mySPI.SPI_CommMode 				= SPI_FULL_DOUPLEX ;
	mySPI.SPI_DataOrder 			= SPI_MSB_FIRST  ;
	mySPI.SPI_DataSize 				= SPI_8_BIT_DATA  ;
	mySPI.SPI_IdleLevel 			= SPI_IDLE_HIGH ;
	mySPI.SPI_DataSampling			= SPI_TRAILING_EDGE ;
	mySPI.SPI_BuadRate 				= SPI_BUAD_PRESCALED_BY_2;
	mySPI.SPI_IRQ 					= SPI_IRQ_DISABLED ;
	mySPI.SPI_SlaveSelectMangment 	= SPI_SSM_SW_SLAVE_SET ;
	mySPI.P_IRQ_CallBack 			= NULL ;
	SPI_voidInit(SPI_1, &mySPI);
	/************************************ INIT GPIO	**************************************/
	GPIO_voidSetPinDirection(TFT_SLAVE_SLCT_PIN ,GPIO_OUTPUT_10MHZ_PUSH_PULL) ;			//Slave Select
	GPIO_voidSetPinValue(TFT_SLAVE_SLCT_PIN, HIGH);										// Force Salve Select to HIGH
	SPI_VoidGPIO_SetPins(SPI_1);														// SPI Pins
	GPIO_voidSetPinDirection( TFT_A0_PIN , GPIO_OUTPUT_10MHZ_PUSH_PULL   );				//RST
	GPIO_voidSetPinDirection( TFT_RST_PIN , GPIO_OUTPUT_10MHZ_PUSH_PULL   );			//A0(D/C)


	/*********************************** INIT STK 	****************************************/
	STK_voidInit();
	/*********************************** INIT TFT   *****************************************/
	// 1 - REST PULSE
	   GPIO_voidSetPinValue(TFT_RST_PIN, HIGH);
	   STK_voidSetBusyWait_US(100);
	   GPIO_voidSetPinValue(TFT_RST_PIN, LOW);
	   STK_voidSetBusyWait_US(1);
	   GPIO_voidSetPinValue(TFT_RST_PIN, HIGH);
	   STK_voidSetBusyWait_US(100);
	   GPIO_voidSetPinValue(TFT_RST_PIN, LOW);
	   STK_voidSetBusyWait_US(100);
	   GPIO_voidSetPinValue(TFT_RST_PIN, HIGH);
	   STK_voidSetBusyWait_MS(120);
	 // 2- Get Out of Sleep Mode
	   TFT_voidWriteCmd(TFT_SLPOUT_CMD);
	   STK_voidSetBusyWait_MS(150);
	 // 3- Color Mode
	   TFT_voidWriteCmd(TFT_COLMOD_CMD);
	   TFT_voidWriteData(TFT_COLOR_MODE);
	 // 4- TFT Display On
	   TFT_voidWriteCmd(TFT_DISPON_CMD);
	// 5- Remap TFT addresses ( x = 0 , y = 0 Start From The Left Top Of The TFT )
	   TFT_voidWriteCmd(TFT_MADCTL_CMD);
	   TFT_voidWriteData(0xC0);
}

void TFT_voidGotoXY(u16 x , u16 y)
{
	//	ADDRESS Y
	TFT_voidWriteCmd(TFT_RASET_CMD) ;
	TFT_voidWriteData(y >> TFT_GET_HIGH_BYTE);
	TFT_voidWriteData(y &  TFT_GET_LOW_BYTE);
	//	ADDRESS X
	TFT_voidWriteCmd(TFT_CASET_CMD) ;
	TFT_voidWriteData(x >> TFT_GET_HIGH_BYTE);
	TFT_voidWriteData(x &  TFT_GET_LOW_BYTE);
}
void TFT_voidDisplayImage(const u16 * Copy_u16Image)
{

	u16 Local_u16Counter ;
	/* WRITE MEM	*/
	TFT_voidWriteCmd( TFT_RAMWR_CMD ) ;

	for(Local_u16Counter = 0;Local_u16Counter < (TFT_WIDTH * TFT_HEIGHT);Local_u16Counter++)
	{
		TFT_voidWriteData(Copy_u16Image[Local_u16Counter] >> TFT_GET_HIGH_BYTE);
		TFT_voidWriteData(Copy_u16Image[Local_u16Counter] &  TFT_GET_LOW_BYTE);
	}

}



/************************************* End of File ******************************************/

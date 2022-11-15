/**
* @file EXT_EEPROM.c
* @author Mohamed Abd El-Naby (mahameda.naby@gmail.com) 
* @brief 
* @version 0.2
* @date 2022-11-15
*
*/


/******************************************************************************
* Includes
*******************************************************************************/
#include "STD_TYPES.h"
#include "BIT_MATH.h"
#include "COMMON.h"
#include "RCC_interface.h"
#include "I2C_interface.h"
#include "EXT_EEPROM.h"


#if EEPROM_SUPPORT_DMA == 1
#include "NVIC_interface.h"
#include "DMA_interface.h"
#else
#endif



/******************************************************************************
* Module Preprocessor Constants
*******************************************************************************/




/******************************************************************************
* Module Preprocessor Macros
*******************************************************************************/

#define I2C_GET_HIGH_BYTE   8
#define I2C_GET_LOW_BYTE    0X00FF



/******************************************************************************
* Typedefs
*******************************************************************************/




/******************************************************************************
* Module Variable Definitions
*******************************************************************************/
static const I2C_Config_t _EEPROM_I2C = {I2C_STRETCH_MODE_ENABLE ,	 I2C_I2C_MODE ,  I2C_STANDART_MODE_100K_HZ ,
							{ 0 ,I2C_SLAVE_7_BIT_ADDRESS , 0 ,  0 } ,  I2C_GENERAL_CALL_ENABLE ,I2C_DMA_ENABLE };


#if EEPROM_SUPPORT_DMA == 1
static const DMA_Config_t _DMA1_I2C_PRIV_ = {CHANNEL6 ,DMA_HIGH , DISABLE_CIRCULAR , MEM_TO_PERI , BYTE ,BYTE  , MEM_INCREMENT_ENABLE ,PERIPHERAL_INCREMENT_DISABLE ,
												HALF_TX_INT_DISABLE , TX_INT_ENABLE , ERROR_INT_DISABLE };

static void __EEPROM_DMA_Finished_(void);
void (*EEPROM_CB_FNC_)(void) = NULL ;

#else

#endif





/******************************************************************************
* Function Prototypes
*******************************************************************************/




/******************************************************************************
* Function Definitions
*******************************************************************************/

void EEPROM_voidInit(void)
{
	/*	Init Clocks	*/
	RCC_voidInitSysClocks() ;
	RCC_voidEnableClock(RCC_APB2,PORTB) ; // I2C ON PORT B
	RCC_voidEnableClock(RCC_APB1, 21) ;		// I2C
	RCC_voidEnableClock(RCC_AHB, 0); 	/*	DMA1	*/


#if EEPROM_SUPPORT_DMA == 1
	/*	NVIC	*/
	NVIC_voidEnableInterrupt(16);	/* DMA1 CH6*/
	/*********** DMA	*********************/
	DMA_voidInitChannel(&_DMA1_I2C_PRIV_);


#endif

	/* Set GPIO Pins	*/
	I2C_VoidGPIO_SetPins(I2C_1);
	/*	Init This Node As A  Master 	*/
	I2C_Init(I2C_1, &_EEPROM_I2C);

}
void EEPROM_voidWriteNBytes(u16 copy_u16Address , u8 *ptr_u8Data , u16 copy_u16DataLength)
{
	u16 LOC_u16Counter = 0 ;
	u16 LOC_U16TotalFrame = 2 + copy_u16DataLength ; // MSB ADDRESS + LSB ADDRESS + DATA
	u8 TX_Buffer[EXT_EEPROM_BUFFER_SIZER+2] ;
	TX_Buffer[0] = 	((copy_u16Address >> I2C_GET_HIGH_BYTE)&0xFF);			// MSB of Address
	TX_Buffer[1] = 	((copy_u16Address &  I2C_GET_LOW_BYTE)&0xFF);			// LSB of Address

	// Add Data to buffer
	for(LOC_u16Counter = 2  ; LOC_u16Counter < LOC_U16TotalFrame ; LOC_u16Counter++)
	{
		TX_Buffer[LOC_u16Counter] = ptr_u8Data[LOC_u16Counter-2] ;
	}

	// Send Buffer
	I2C_voidMasterTransmit(I2C_1, EXT_EEPROM_ADDRESS, TX_Buffer, LOC_U16TotalFrame, I2C_START, I2C_END_WITH_STOP) ;
}
#if EEPROM_SUPPORT_DMA == 1
void EEPROM_voidWriteNBytes_DMA(u16 copy_u16Address , u8 *ptr_u8Data , u16 copy_u16DataLength , void(*ptrFCN)(void))
{
	EEPROM_CB_FNC_ = ptrFCN ;

	u32 DMA_address = 0 ;
	u16 LOC_u16Counter = 0 ;

	u16 LOC_U16TotalFrame = 2 + copy_u16DataLength ; // MSB ADDRESS + LSB ADDRESS + DATA
	u8 TX_Buffer[EXT_EEPROM_BUFFER_SIZER+2] ;
	TX_Buffer[0] = 	((copy_u16Address >> I2C_GET_HIGH_BYTE)&0xFF);			// MSB of Address
	TX_Buffer[1] = 	((copy_u16Address &  I2C_GET_LOW_BYTE)&0xFF);			// LSB of Address

	// Add Data to buffer
	for(LOC_u16Counter = 2  ; LOC_u16Counter < LOC_U16TotalFrame ; LOC_u16Counter++)
	{
		TX_Buffer[LOC_u16Counter] = ptr_u8Data[LOC_u16Counter-2] ;
	}

	// Send Address At First
	I2C_voidMasterTransmitDMA(I2C_1, EXT_EEPROM_ADDRESS, I2C_START) ;

	// Start DMA1 CH7
	I2C_voidGetDMA_PeripheralAddress(I2C_1 , &DMA_address);
	DMA_voidStatrTransfer(CHANNEL6,DMA_address , TX_Buffer, LOC_U16TotalFrame, __EEPROM_DMA_Finished_) ;

}
#endif
void EEPROM_voidReadNBytes(u16 copy_u16Address, u8 *ptr_u8Data , u16 copy_u16DataLength)
{
	u16 LOC_U16TotalFrame = 2  ; // MSB ADDRESS + LSB ADDRESS
	u8 TX_Buffer[EXT_EEPROM_BUFFER_SIZER+2] ;
	TX_Buffer[0] = 	copy_u16Address >> I2C_GET_HIGH_BYTE;			// MSB of Address
	TX_Buffer[1] = 	copy_u16Address &  I2C_GET_LOW_BYTE;			// LSB of Address

	// Send Address
	I2C_voidMasterTransmit(I2C_1, EXT_EEPROM_ADDRESS, TX_Buffer, LOC_U16TotalFrame, I2C_START, I2C_END_WITHOUT_STOP) ;

	// Start Reading
	I2C_voidMasterReceive(I2C_1, EXT_EEPROM_ADDRESS, ptr_u8Data, copy_u16DataLength, I2C_REPEATED_START, I2C_END_WITH_STOP) ;


}

#if EEPROM_SUPPORT_DMA == 1
static void __EEPROM_DMA_Finished_(void)
{
	// STOP
	I2C_voidGenerateStop(I2C_1);
	

	// CALL
	if(EEPROM_CB_FNC_ != NULL)
	{
		EEPROM_CB_FNC_();
	}
}

#else

#endif


/************************************* End of File ******************************************/

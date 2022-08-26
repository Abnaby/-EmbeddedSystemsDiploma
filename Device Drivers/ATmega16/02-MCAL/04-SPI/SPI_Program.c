/**
* @file SPI_Program.c
* @author Mohamed Abd El-Naby (mahameda.naby@gmail.com) 
* @brief 
* @version 0.1
* @date 2022-08-23
*
*/
/******************************************************************************
* Includes
*******************************************************************************/
#include "STD_TYPES.h"
#include "BIT_MATH.h"
#include "SPI_Interface.h"
#include "SPI_Config.h"
#include "SPI_Private.h"










/******************************************************************************
* Module Preprocessor Constants
*******************************************************************************/

 


/******************************************************************************
* Module Preprocessor Macros
*******************************************************************************/
#define WAIT_TO_EXCHANGE()      while(!(SPI_SPSR & (1<<SPSR_SPIF)))



/******************************************************************************
* Typedefs
*******************************************************************************/




/******************************************************************************
* Module Variable Definitions
*******************************************************************************/




/******************************************************************************
* Function Prototypes
*******************************************************************************/




/******************************************************************************
* Function Definitions
*******************************************************************************/
void MCAL_SPI_voidInit(SPI_Config* ptr_SPI_Config)
{
    #define CNFG_ACCESS(PARAM) ptr_SPI_Config->PARAM
 
    // Set Clk Rate SPI2X in SPI_SPSR SPI Status Registe
	(((CNFG_ACCESS(SPI_SetClockRate)>>2) & 0b001) == 1) ? (SPI_SPSR |= (1<<SPSR_SPI2X )) : (SPI_SPSR &= ~(1<<SPSR_SPI2X ));
   /*          Config SPCR SPI Control Register        */
    SPI_SPCR =  CNFG_ACCESS(SPI_InterruptState) 
             |  (1 << SPCR_SPE)
             |  CNFG_ACCESS(SPI_SetDataOrder)
             |  CNFG_ACCESS(SPI_ModeSelect)
             |  CNFG_ACCESS(SPI_IdleStateLevel)
             |  CNFG_ACCESS(SPI_DataSamplingEdge)
             |  (CNFG_ACCESS(SPI_SetClockRate) & 0b011) ;
	//	Clear SPI Interrupt by reading SPSR AND SPDR
	SPI_SPDR |= 0 ;
	SPI_SPSR |= 0 ;
}
void MCAL_SPI_voidByteExchangeAsynch(u8 cpy_u8DataToBeTransmit, u8* ptr_dataToBeReceived)
{
    /*          CHECK IF SPI ENABLED OR NOT     */
    if (SPI_SPCR & 0b01000000)
    {
        /* Start transmission */
        SPI_SPDR = cpy_u8DataToBeTransmit;
        /* Wait for exchange complete */
        WAIT_TO_EXCHANGE();
        /*  Return New Data */
        *ptr_dataToBeReceived =   SPI_SPDR ; 

    }
    else 
    {
        //<TODO ERROR> SPI MODULE NOT ENABLED 
    }
}

void MCAL_SPI_voidSendByteAsynch(u8 cpy_u8Data)
{
    /*          CHECK IF SPI ENABLED OR NOT     */
    if (SPI_SPCR & 0b01000000)
    {
        /* Start transmission */
        SPI_SPDR = cpy_u8Data;
        /* Wait for exchange complete */
        WAIT_TO_EXCHANGE();
    }
    else 
    {
        //<TODO ERROR> SPI MODULE NOT ENABLED 
    }
}
void MCAL_SPI_voidReceiveByteAsynch(u8* ptr_u8Data)
{
    /*          CHECK IF SPI ENABLED OR NOT     */
    if (SPI_SPCR & 0b01000000)
    {
		/* Wait for reception complete */
		WAIT_TO_EXCHANGE() ; 
		;
        /*  Get data               */
        *ptr_u8Data = SPI_SPDR;
    }
    else 
    {
        //<TODO ERROR> SPI MODULE NOT ENABLED 
    }
}
void MCAL_SPI_voidSendByteSynch(u8 cpy_u8Data , void(*Exchange_CallBack)(void))
{   
    /*          CHECK IF SPI ENABLED OR NOT     */
    if (SPI_SPCR & 0b01000000)
    {
        Global_ExchangeComplate = Exchange_CallBack ; 
        /* Start transmission */
        SPI_SPDR = cpy_u8Data;
        /* Enable Interrupt */
        SPI_SPCR |= SPI_INTERRUPT_ENABLE ;
    }
    else 
    {
        //<TODO ERROR> SPI MODULE NOT ENABLED 
    }
}

void MCAL_SPI_voidReceiveByteSynch(void(*Exchange_CallBack)(void))
{
    /*          CHECK IF SPI ENABLED OR NOT     */
    if (SPI_SPCR & 0b01000000)
    {
        Global_ExchangeComplate = Exchange_CallBack ; 
	
        /* Enable Interrupt */
        SPI_SPCR |= SPI_INTERRUPT_ENABLE ;
    }
    else 
    {
        //<TODO ERROR> SPI MODULE NOT ENABLED 
    }
}

void MCAL_SPI_voidEnableInterrupt(void)
{
    /*          CHECK IF SPI ENABLED OR NOT     */
    if (SPI_SPCR & 0b01000000)
    {	
        /* Enable Interrupt */
        SPI_SPCR |= SPI_INTERRUPT_ENABLE ;
        //	Clear SPI Interrupt by reading SPSR AND SPDR
        SPI_SPDR |= 0 ;
        SPI_SPSR |= 0 ;
    }
    else 
    {
        //<TODO ERROR> SPI MODULE NOT ENABLED 
    }
}


void MCAL_SPI_voidDisableInterrupt(void)
{
    /*          CHECK IF SPI ENABLED OR NOT     */
    if (SPI_SPCR & 0b01000000)
    {	
        /* Enable Interrupt */
        SPI_SPCR &= ~ SPI_INTERRUPT_ENABLE ;
    }
    else 
    {
        //<TODO ERROR> SPI MODULE NOT ENABLED 
    }
}

void __vector_10(void)
{
    Global_ExchangeComplate() ;
	 
}

/************************************* End of File ******************************************/
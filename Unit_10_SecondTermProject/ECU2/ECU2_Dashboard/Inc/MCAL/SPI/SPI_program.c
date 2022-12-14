/**
* @file SPI_program.c
* @author Mohamed Abd El-Naby (mahameda.naby@gmail.com) 
* @brief 
* @version 0.1
* @date 2022-11-08
*
*/
/******************************************************************************
* Includes
*******************************************************************************/
#include "../../LIB/STD_TYPES/STD_TYPES.h"
#include "../../LIB/BIT_MATH/BIT_MATH.h"
#include "../GPIO/GPIO_interface.h"

#include "SPI_interface.h"
#include "SPI_config.h"
#include "SPI_private.h"











/******************************************************************************
* Module Preprocessor Constants
*******************************************************************************/




/******************************************************************************
* Module Preprocessor Macros
*******************************************************************************/
#define  SPI_SR_TXE		(((u8)0x02))
#define  SPI_SR_RXNE	(((u8)0x01))

#define SPI_WAIT_TX_EMPTY(SPIx)	while(!(SPIx->SR & SPI_SR_TXE))
#define SPI_WAIT_RX_EMPTY(SPIx)	while(!(SPIx->SR & SPI_SR_RXNE))



/******************************************************************************
* Typedefs
*******************************************************************************/



/******************************************************************************
* Module Variable Definitions
*******************************************************************************/
static SPI_config *Global_SPI_Config[2] = {NULL ,NULL};

/******************************************************************************
* Function Prototypes
*******************************************************************************/




/******************************************************************************
* Function Definitions
*******************************************************************************/
void SPI_voidInit(SPI_Select_t SPI_Number , SPI_config* SPI_UsrConfig)
{
	u16 LOC_u16Reg_CR1 = 0 ;
	u16 LOC_u16Reg_CR2 = 0 ;

	/*	Enable SPI	*/
	LOC_u16Reg_CR1  = (1<<6) ;
	/* Configuration Master/Slave	*/
	LOC_u16Reg_CR1  |= SPI_UsrConfig->SPI_Mode ;
	/* Comm Mode	*/
	LOC_u16Reg_CR1  |= SPI_UsrConfig->SPI_CommMode ;
	/* Frame Format	*/
	LOC_u16Reg_CR1  |= SPI_UsrConfig->SPI_DataSize ;
	/* Clock Polarity/Phase	*/
	LOC_u16Reg_CR1  |= SPI_UsrConfig->SPI_IdleLevel ;
	LOC_u16Reg_CR1  |= SPI_UsrConfig->SPI_DataSampling ;
	/*	NSS	*/
	if(SPI_UsrConfig->SPI_SlaveSelectMangment == SPI_SSM_HW_MASTER_SS_EN)
	{
		LOC_u16Reg_CR2 |= SPI_UsrConfig->SPI_SlaveSelectMangment ;
	}
	else if(SPI_UsrConfig->SPI_SlaveSelectMangment == SPI_SSM_HW_MASTER_SS_DISABLED)
	{
		LOC_u16Reg_CR2 &= SPI_UsrConfig->SPI_SlaveSelectMangment ;
	}
	else
	{
		LOC_u16Reg_CR1 |= SPI_UsrConfig->SPI_SlaveSelectMangment ;
	}
	/* Buad Rate	*/
	LOC_u16Reg_CR1 |= SPI_UsrConfig->SPI_BuadRate ;

	/*	Interrupt	*/
	if(SPI_UsrConfig->SPI_IRQ != SPI_IRQ_DISABLED)
	{
		LOC_u16Reg_CR2 |= SPI_UsrConfig->SPI_IRQ;
	}

	if(SPI_Number == SPI_1)
	{
		Global_SPI_Config[0] = SPI_UsrConfig ;
		SPI1->CR1 = LOC_u16Reg_CR1 ;
		SPI1->CR2 = LOC_u16Reg_CR2 ;

	}
	else if(SPI_Number == SPI_2)
	{
		Global_SPI_Config[1] = SPI_UsrConfig ;
		SPI2->CR1 = LOC_u16Reg_CR1 ;
		SPI2->CR2 = LOC_u16Reg_CR2 ;

	}
	else
	{
		// <!TODO> Error in Init
	}

}


void SPI_voidSendDataSynch(SPI_Select_t SPI_Number , u16 *pTxBuffer)
{
	if(SPI_Number == SPI_1)
	{
		SPI_WAIT_TX_EMPTY(SPI1);
		SPI1->DR = *pTxBuffer ;
	}
	else if(SPI_Number == SPI_2)
	{
		SPI_WAIT_TX_EMPTY(SPI2);
		SPI2->DR = *pTxBuffer ;
	}
	else
	{
		// <!TODO> Error in Init
	}
}


void SPI_voidRecieveDataSynch(SPI_Select_t SPI_Number , u16 *pRxBuffer )
{
	if(SPI_Number == SPI_1)
	{
		SPI_WAIT_RX_EMPTY(SPI1);
		*pRxBuffer = SPI1->DR  ;

	}
	else if(SPI_Number == SPI_2)
	{
		SPI_WAIT_RX_EMPTY(SPI2);
		*pRxBuffer = SPI2->DR  ;

	}
	else
	{
		// <!TODO> Error in Init
	}
}

void SPI_voidSend_RecieveDataSynch(SPI_Select_t SPI_Number , u16 *pTxBuffer, u16 *pRxBuffer)
{
	if(SPI_Number == SPI_1)
	{
		SPI_WAIT_TX_EMPTY(SPI1);
		SPI1->DR = *pTxBuffer ;
		SPI_WAIT_RX_EMPTY(SPI1);
		*pRxBuffer = SPI1->DR  ;
	}
	else if(SPI_Number == SPI_2)
	{
		SPI_WAIT_TX_EMPTY(SPI2);
		SPI2->DR = *pTxBuffer ;
		SPI_WAIT_RX_EMPTY(SPI2);
		*pRxBuffer = SPI2->DR  ;

	}
	else
	{
		// <!TODO> Error in Init
	}
}

void SPI_VoidGPIO_SetPins(SPI_Select_t SPI_Number)
{
	if(SPI_Number == SPI_1)
	{

		//	 From STM32F103xx pin definitions table
		//   	PA4 : SPI1_NSS
		//   	PA5 : SPI1_SCK
		//		PA6 : SPI1_MISO
		//   	PA7 : SPI1_MOSI
		// =========================== Master ====================================
		if(Global_SPI_Config[0]->SPI_Mode == SPI_MASTER)
		{
			// PA4 Chek
			switch(Global_SPI_Config[0]->SPI_SlaveSelectMangment)
			{
				case SPI_SSM_HW_MASTER_SS_DISABLED : GPIO_voidSetPinDirection(PORTA,PIN4,GPIO_INPUT_FLOATING); 			  break ; 		// LIKE MULTIMASTER
				case SPI_SSM_HW_MASTER_SS_EN	   : GPIO_voidSetPinDirection(PORTA,PIN4,GPIO_OUTPUT_10MHZ_AF_PUSH_PULL); break ;
				default: break ;
			}
			// PA5 : SPI1_SCK : OUTPUT AF
			GPIO_voidSetPinDirection(PORTA,PIN5,GPIO_OUTPUT_10MHZ_AF_PUSH_PULL);
			// MISO AND MOSI
			if(Global_SPI_Config[0]->SPI_CommMode == SPI_FULL_DOUPLEX)
			{
				// PA6  : SPI1_MISO
				GPIO_voidSetPinDirection(PORTA,PIN6,GPIO_INPUT_FLOATING);
				// PA7 : SPI1_MOSI
				GPIO_voidSetPinDirection(PORTA,PIN7,GPIO_OUTPUT_10MHZ_AF_PUSH_PULL);
			}
			else
			{
				//<TODO> Half Duplex / Simplex
			}


		}
		else
		{
			// =========================== Slave ====================================
			// PA4 : SPI1_NSS
			if(Global_SPI_Config[0]->SPI_SlaveSelectMangment == SPI_SSM_HW_SLAVE)
			{
				GPIO_voidSetPinDirection(PORTA,PIN4,GPIO_INPUT_FLOATING);
			}
			// PA5 : SPI1_SCK
			GPIO_voidSetPinDirection(PORTA,PIN5,GPIO_INPUT_FLOATING);

			if(Global_SPI_Config[0]->SPI_CommMode == SPI_FULL_DOUPLEX)
			{
				// PA6  : SPI1_MISO
				GPIO_voidSetPinDirection(PORTA,PIN6,GPIO_OUTPUT_10MHZ_AF_PUSH_PULL);
				// PA7 : SPI1_MOSI
				GPIO_voidSetPinDirection(PORTA,PIN7,GPIO_INPUT_FLOATING);
			}

		}

	}
	else if(SPI_Number == SPI_2)
	{
			// From STM32F103xx pin definitions table
			//   	PB12 : SPI2_NSS
			//   	PB13 : SPI2_SCK
			//   	PB14 : SPI2_MISO
			//   	PB15 : SPI2_MOSI
			// =========================== Master ====================================
			if(Global_SPI_Config[1]->SPI_Mode == SPI_MASTER)
			{
				// PB12 Chek
				switch(Global_SPI_Config[1]->SPI_SlaveSelectMangment)
				{
					case SPI_SSM_HW_MASTER_SS_DISABLED : GPIO_voidSetPinDirection(PORTB,PIN12,GPIO_INPUT_FLOATING); 			  break ; 		// LIKE MULTIMASTER
					case SPI_SSM_HW_MASTER_SS_EN	   : GPIO_voidSetPinDirection(PORTB,PIN12,GPIO_OUTPUT_10MHZ_AF_PUSH_PULL); break ;
					default: break ;
				}
				// PB13 : SPI1_SCK : OUTPUT AF
				GPIO_voidSetPinDirection(PORTB,PIN13,GPIO_OUTPUT_10MHZ_AF_PUSH_PULL);
				// MISO AND MOSI
				if(Global_SPI_Config[1]->SPI_CommMode == SPI_FULL_DOUPLEX)
				{
					// PA6  : SPI1_MISO
					GPIO_voidSetPinDirection(PORTB,PIN14,GPIO_INPUT_FLOATING);
					// PA7 : SPI1_MOSI
					GPIO_voidSetPinDirection(PORTB,PIN14,GPIO_OUTPUT_10MHZ_AF_PUSH_PULL);
				}
				else
				{
					//<TODO> Half Duplex / Simplex
				}


			}
			else
			{
				// =========================== Slave ====================================
				// PB12 : SPI1_NSS
				if(Global_SPI_Config[1]->SPI_SlaveSelectMangment == SPI_SSM_HW_SLAVE)
				{
					GPIO_voidSetPinDirection(PORTB,PIN12,GPIO_INPUT_FLOATING);
				}
				// PB13 : SPI1_SCK
				GPIO_voidSetPinDirection(PORTB,PIN13,GPIO_INPUT_FLOATING);

				if(Global_SPI_Config[1]->SPI_CommMode == SPI_FULL_DOUPLEX)
				{
					// PA6  : SPI1_MISO
					GPIO_voidSetPinDirection(PORTB,PIN14,GPIO_OUTPUT_10MHZ_AF_PUSH_PULL);
					// PA7 : SPI1_MOSI
					GPIO_voidSetPinDirection(PORTB,PIN14,GPIO_INPUT_FLOATING);
				}

			}
	}
	else
	{
		// <!TODO> Error in Init
	}
}
/*************************************	IRQ	************************************************/

void SPI1_IRQHandler(void)
{
	SPI_IRQ_SRC irq_src;

	irq_src.SPI_TXE  = ((SPI1->SR & (1<<1)) >> 1);
	irq_src.SPI_RXNE = ((SPI1->SR & (1<<0)) >> 0);
	irq_src.SPI_ERROR = ((SPI1->SR & (1<<4)) >> 4);

	Global_SPI_Config[0]->P_IRQ_CallBack(irq_src);
}

void SPI2_IRQHandler(void)
{
	SPI_IRQ_SRC irq_src;

	irq_src.SPI_TXE  = ((SPI1->SR & (1<<1)) >> 1);
	irq_src.SPI_RXNE = ((SPI1->SR & (1<<0)) >> 0);
	irq_src.SPI_ERROR = ((SPI1->SR & (1<<4)) >> 4);

	Global_SPI_Config[1]->P_IRQ_CallBack(irq_src);
}
/************************************* End of File ******************************************/

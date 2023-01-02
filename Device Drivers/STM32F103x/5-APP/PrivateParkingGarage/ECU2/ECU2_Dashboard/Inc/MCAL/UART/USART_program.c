/**
* @file USART_program.c
* @author Mohamed Abd El-Naby (mahameda.naby@gmail.com) 
* @brief 
* @version 0.3
* @date 2022-11-16
*
*/
/******************************************************************************
* Includes
*******************************************************************************/
#include "../../LIB/STD_TYPES/STD_TYPES.h"
#include "../../LIB/BIT_MATH/BIT_MATH.h"
#include "../../LIB/COMMON/COMMON.h"
#include "../GPIO/GPIO_interface.h"
#include "USART_interface.h"
#include "USART_config.h"
#include "USART_private.h"










/******************************************************************************
* Module Preprocessor Constants
*******************************************************************************/




/******************************************************************************
* Module Preprocessor Macros
*******************************************************************************/
/*Transmit data register empty*/

#define WAIT_TO_TXE(USRTx)	while(!(GET_BIT(USRTx->SR ,TXE )))
#define WAIT_TO_TXC(USRTx)	while(!(GET_BIT(USRTx->SR ,TXC )))
#define WAIT_TO_RXNE(USRTx)	while(!(GET_BIT(USRTx->SR ,RXNE)))


/******************************************************************************
* Typedefs
*******************************************************************************/




/******************************************************************************
* Module Variable Definitions
*******************************************************************************/
static USART_Config *Global_USART_Config[3] = {NULL ,NULL,NULL};



/******************************************************************************
* Function Prototypes
*******************************************************************************/

void USART_voidBuadRateCalc(u32 BuadRate , u32 PClock , u32 *BRR_Reg);


/******************************************************************************
* Function Definitions
*******************************************************************************/
void USART_voidInit(USART_Number_t  USART_Number , USART_Config * usrConfig)
{
	u16 LOC_u16CR1 = 0 ;
	u16 LOC_u16CR2 = 0 ;
	u16 LOC_u16CR3 = 0 ;

/********************************************************* CR1 REG	****************************************************************/
	LOC_u16CR1 = (1<<13)								/*	Enable	*/
				|(usrConfig->USART_DataLength)			/*	Data Length	*/
				|(usrConfig->USART_Parity)				/*	 Parity control	*/
				|(usrConfig->USART_OperationMode)		/*	Tx,Rx or Tx and Rx*/
				|(usrConfig->USART_IRQ_t) ;
/*
	u8 LOC_u8Counter = 0 ;
	for(LOC_u8Counter = 0 ; LOC_u8Counter < 4 ;LOC_u8Counter++)
	{
		if(usrConfig->USART_IRQ_t[LOC_u8Counter] != (u8)NULL)
		{
			LOC_u16CR1 |= (usrConfig->USART_IRQ_t[LOC_u8Counter]) ;
		}
	}
*/
/******************************************************* CR2 REG ********************************************************************/
	LOC_u16CR2 = (usrConfig->USART_StopBit) 			/*	Number of Stop Bits	*/
				|(usrConfig->USART_IdleLevel)			/*	Clock polarity		*/
				|(usrConfig->USART_DataSampling);		/*	Clock phase			*/
/******************************************************* CR3 REG ********************************************************************/
	LOC_u16CR3 = (usrConfig->USART_DMA);			/*	DMA		*/

/******************************************************* BuadRate ********************************************************************/
	Global_USART_Config[USART_Number] = usrConfig ;
	u32 BRR_Reg = 0 ;
	USART_voidBuadRateCalc(usrConfig->USART_BuadRate , 8000000 , &BRR_Reg);


/******************************************************* Regs ********************************************************************/


	switch(USART_Number)
	{
	case USART_1 : USART1->BRR =  BRR_Reg  ; USART1->CR1 = LOC_u16CR1 ;  USART1->CR2 = LOC_u16CR2 , USART1->CR3 = LOC_u16CR3 ; 	break ;
	case USART_2 : USART2->BRR =  BRR_Reg  ; USART2->CR1 = LOC_u16CR1 ;  USART2->CR2 = LOC_u16CR2 ; USART2->CR3 = LOC_u16CR3 ;   	break ;
	case USART_3 : USART3->BRR =  BRR_Reg  ; USART3->CR1 = LOC_u16CR1 ;  USART3->CR2 = LOC_u16CR2 ; USART3->CR3 = LOC_u16CR3 ; 	break ;
	default : break ;

	}
}

void USART_voidSendDataSynch(USART_Number_t USART_Number , u16 *P_u16Data)
{
	switch(USART_Number)
	{
	case USART_1 :
		WAIT_TO_TXE(USART1)	;
		USART1->DR = *P_u16Data ;
		WAIT_TO_TXC(USART1);
		break ;
	case USART_2 :
		WAIT_TO_TXE(USART2)	;
		USART2->DR = *P_u16Data ;
		WAIT_TO_TXC(USART2);
		break ;
	case USART_3:
		WAIT_TO_TXE(USART3)	;
		USART3->DR = *P_u16Data ;
		WAIT_TO_TXC(USART3);
		break ;
	default:
		break ;
	}
}

void USART_voidSendDataAsynch(USART_Number_t USART_Number , u16 *P_u16Data )
{
	*P_u16Data = *P_u16Data & 0x01FF ;
	switch(USART_Number)
	{
	case USART_1 :
		USART1->DR = *P_u16Data ;
		break ;
	case USART_2 :
		USART2->DR = *P_u16Data ;
		break ;
	case USART_3:
		USART3->DR = *P_u16Data ;
		break ;
	default:
		break ;
	}
}

void USART_voidReceiveDataSynch(USART_Number_t USART_Number , u16 *P_u16Data)
{

	if(Global_USART_Config[USART_Number]->USART_DataLength == USART_9BIT)
	{
		if(Global_USART_Config[USART_Number]->USART_Parity == USART_DISABLE_PARITY)
		{
			// 9-BIT DATA
			switch(USART_Number)
			{
			case USART_1 :
				WAIT_TO_RXNE(USART1)	;
				*P_u16Data = (USART1->DR) & 0x1FF ;
				break ;
			case USART_2 :
				WAIT_TO_RXNE(USART2)	;
				*P_u16Data = (USART2->DR) & 0x1FF  ;
				break ;
			case USART_3:
				WAIT_TO_RXNE(USART3)	;
				*P_u16Data = (USART3->DR) & 0x1FF  ;
				break ;
			default:
				break ;
			}

		}
		else
		{
			// 9-bit is parity
			switch(USART_Number)
			{
			case USART_1 :
				WAIT_TO_RXNE(USART1)	;
				*P_u16Data = (USART1->DR)& ((u8)0xFF) ;
				break ;
			case USART_2 :
				WAIT_TO_RXNE(USART2)	;
				*P_u16Data = (USART2->DR) &((u8)0xFF) ;
				break ;
			case USART_3:
				WAIT_TO_RXNE(USART3)	;
				*P_u16Data =( USART3->DR)& ((u8)0xFF) ;
				break ;
			default:
				break ;
			}
		}
	}
	else
	{
		if(Global_USART_Config[USART_Number]->USART_Parity == USART_DISABLE_PARITY)
		{
			switch(USART_Number)
			{
			case USART_1 :
				WAIT_TO_RXNE(USART1)	;
				*P_u16Data = (USART1->DR)& ((u8)0xFF) ;
				break ;
			case USART_2 :
				WAIT_TO_RXNE(USART2)	;
				*P_u16Data = (USART2->DR) &((u8)0xFF) ;
				break ;
			case USART_3:
				WAIT_TO_RXNE(USART3)	;
				*P_u16Data =( USART3->DR)& ((u8)0xFF) ;
				break ;
			default:
				break ;
			}
		}
		else
		{
			// 8-bit is parity
			switch(USART_Number)
			{
			case USART_1 :
				WAIT_TO_RXNE(USART1)	;
				*P_u16Data = (USART1->DR)& ((u8)0x7F) ;
				break ;
			case USART_2 :
				WAIT_TO_RXNE(USART2)	;
				*P_u16Data = (USART2->DR) &((u8)0x7F) ;
				break ;
			case USART_3:
				WAIT_TO_RXNE(USART3)	;
				*P_u16Data =( USART3->DR)& ((u8)0x7F) ;
				break ;
			default:
				break ;
			}
		}
	}
}

void USART_voidReceiveDataAsynch(USART_Number_t USART_Number)
{

}


void USART_voidBuadRateCalc(u32 BuadRate , u32 PClock , u32 *BRR_Reg)
{

	

	u32 USARTDEV = ((PClock)/(16*BuadRate)) ;
	u32 USARTDEV_Mull_100 = ((25.0 * PClock)/(4.0*BuadRate)) ;
	u32 Mantiessa_Mull_100 = USARTDEV * 100  ;
	u32 Mantiessa = USARTDEV ;
	u32 Fraction = ((USARTDEV_Mull_100 - Mantiessa_Mull_100)*16) /100 ;

	/*u32 Mantiessa = ((PClock)/(16*BuadRate)) ;
	u32 Fraction  = ((((1.0*PClock)/(16.0*BuadRate)) * 100) - (Mantiessa * 100)) * 16 ;
	*/
	if(Fraction > 16)
	{
		Mantiessa = Mantiessa+1 ;
	}
	*BRR_Reg = (u16) ((Mantiessa<<4) | (Fraction & 0x0F)) ;

}
void USART__VoidGPIO_SetPins(USART_Number_t USART_Number)
{

	if(Global_USART_Config[USART_Number]->USART_OperationMode == USART_TRANSMIT)
	{


	}
	else if (Global_USART_Config[USART_Number]->USART_OperationMode == USART_RECEIVE)
	{

	}
	else
	{
		// Trancieve


	}

	if(USART_Number == USART_1)
	{
		//PA9 TX	--> OUTPUT_AF_PP
		//PA10 RX	--> _AF_INPUT
		//PA11 CTS	-->	INPUT_FLO
		//PA12 RTS	--> OUTPUT_AF_PP
		if(Global_USART_Config[USART_Number]->USART_OperationMode == USART_TRANSMIT)
		{
			GPIO_voidSetPinDirection(PORTA, PIN9, GPIO_OUTPUT_10MHZ_AF_PUSH_PULL);


		}
		else if (Global_USART_Config[USART_Number]->USART_OperationMode == USART_RECEIVE)
		{
			GPIO_voidSetPinDirection(PORTA, PIN10, GPIO_INPUT_FLOATING);

		}
		else
		{
			// Trancieve
			GPIO_voidSetPinDirection(PORTA, PIN10, GPIO_INPUT_FLOATING);
			GPIO_voidSetPinDirection(PORTA, PIN9, GPIO_OUTPUT_10MHZ_AF_PUSH_PULL);

		}

		if(Global_USART_Config[0]->USART_HWFlowControl == USART_HW_FLOW_CONTROLLED_RTS)
		{
			GPIO_voidSetPinDirection(PORTA, PIN12 ,  GPIO_OUTPUT_10MHZ_AF_PUSH_PULL);
		}
		else if (Global_USART_Config[0]->USART_HWFlowControl == USART_HW_FLOW_CONTROLLED_CTS)
		{
			GPIO_voidSetPinDirection(PORTA, PIN11, GPIO_INPUT_FLOATING);

		}
		else if(Global_USART_Config[0]->USART_HWFlowControl == USART_HW_FLOW_CONTROLLED_DISALBED)
		{
				// Do nothing

		}
		else
		{
			// CTS AND RTS
			GPIO_voidSetPinDirection(PORTA, PIN11, GPIO_INPUT_FLOATING);
			GPIO_voidSetPinDirection(PORTA, PIN12 ,  GPIO_OUTPUT_10MHZ_AF_PUSH_PULL);
		}



	}
	else if(USART_Number == USART_2)
	{
		//PA2 TX
		//PA3 RX
		//PA0 CTS
		//PA1 RTS
		if(Global_USART_Config[USART_Number]->USART_OperationMode == USART_TRANSMIT)
		{
			GPIO_voidSetPinDirection(PORTA, PIN2, GPIO_OUTPUT_10MHZ_AF_PUSH_PULL);


		}
		else if (Global_USART_Config[USART_Number]->USART_OperationMode == USART_RECEIVE)
		{
			GPIO_voidSetPinDirection(PORTA, PIN13, GPIO_INPUT_FLOATING);

		}
		else
		{
			// Trancieve
			GPIO_voidSetPinDirection(PORTA, PIN2, GPIO_OUTPUT_10MHZ_AF_PUSH_PULL);
			GPIO_voidSetPinDirection(PORTA, PIN13, GPIO_INPUT_FLOATING);

		}

		if(Global_USART_Config[1]->USART_HWFlowControl == USART_HW_FLOW_CONTROLLED_RTS)
		{
			GPIO_voidSetPinDirection(PORTA, PIN1,  GPIO_OUTPUT_10MHZ_AF_PUSH_PULL);
		}
		else if (Global_USART_Config[1]->USART_HWFlowControl == USART_HW_FLOW_CONTROLLED_CTS)
		{
			GPIO_voidSetPinDirection(PORTA, PIN0, GPIO_INPUT_FLOATING);

		}
		else if(Global_USART_Config[1]->USART_HWFlowControl == USART_HW_FLOW_CONTROLLED_DISALBED)
		{
				// Do nothing

		}
		else
		{
			// CTS AND RTS
			GPIO_voidSetPinDirection(PORTA, PIN0, GPIO_INPUT_FLOATING);
			GPIO_voidSetPinDirection(PORTA, PIN1,  GPIO_OUTPUT_10MHZ_AF_PUSH_PULL);
		}
	}
	else if (USART_Number == USART_3)
	{
		//PB10 TX
		//PB11 RX
		//PB13 CTS
		//PA14 RTS
		if(Global_USART_Config[USART_Number]->USART_OperationMode == USART_TRANSMIT)
		{
			GPIO_voidSetPinDirection(PORTB, PIN10, GPIO_OUTPUT_10MHZ_AF_PUSH_PULL);


		}
		else if (Global_USART_Config[USART_Number]->USART_OperationMode == USART_RECEIVE)
		{
			GPIO_voidSetPinDirection(PORTB, PIN11, GPIO_INPUT_FLOATING);

		}
		else
		{
			// Trancieve
			GPIO_voidSetPinDirection(PORTB, PIN10, GPIO_OUTPUT_10MHZ_AF_PUSH_PULL);
			GPIO_voidSetPinDirection(PORTB, PIN11, GPIO_INPUT_FLOATING);

		}

		if(Global_USART_Config[2]->USART_HWFlowControl == USART_HW_FLOW_CONTROLLED_RTS)
		{
			GPIO_voidSetPinDirection(PORTB, PIN14,  GPIO_OUTPUT_10MHZ_AF_PUSH_PULL);
		}
		else if (Global_USART_Config[2]->USART_HWFlowControl == USART_HW_FLOW_CONTROLLED_CTS)
		{
			GPIO_voidSetPinDirection(PORTB, PIN13, GPIO_INPUT_FLOATING);

		}
		else if(Global_USART_Config[2]->USART_HWFlowControl == USART_HW_FLOW_CONTROLLED_DISALBED)
		{
				// Do nothing

		}
		else
		{
			// CTS AND RTS
			GPIO_voidSetPinDirection(PORTB, PIN14,  GPIO_OUTPUT_10MHZ_AF_PUSH_PULL);
			GPIO_voidSetPinDirection(PORTB, PIN13, GPIO_INPUT_FLOATING);
		}
	}
	else
	{
		// <TODO> EROOR
	}



}
/************************************* ISR		*********************************************/
void USART1_IRQHandler(void)
{
	/*
	USART_IRQ_SRC irq_src;

	irq_src.USART_TXE  = ((USART1->SR & (1<<7)) >> 7);
	irq_src.USART_TXC  = ((USART1->SR & (1<<6)) >> 6);
	irq_src.USART_RXNE  = ((USART1->SR & (1<<5)) >> 5);
	irq_src.USART_PE	 = ((USART1->SR & (1<<0)) >> 0);
	if(Global_USART_Config[0]->P_IRQ_CallBack != NULL)
	{
		if(irq_src.USART_RXNE != 1)
		{
			Global_USART_Config[0]->P_IRQ_CallBack(NULL , irq_src);
		}
		else
		{
			Global_USART_Config[0]->P_IRQ_CallBack(USART1->DR , irq_src);

		}
	}
	*/
	Global_USART_Config[0]->P_IRQ_CallBack(USART1->DR);
	//	Clear Fflags
	 USART1->SR &=~ (1<<6) ; // TXC
	 USART1->SR &=~  (1<<5) ; // RXNE

}
void USART2_IRQHandler(void)
{
	/*
	USART_IRQ_SRC irq_src;

	irq_src.USART_TXE  = ((USART2->SR & (1<<7)) >> 7);
	irq_src.USART_TXC  = ((USART2->SR & (1<<6)) >> 6);
	irq_src.USART_RXNE  = ((USART2->SR & (1<<5)) >> 5);
	irq_src.USART_PE	 = ((USART2->SR & (1<<0)) >> 0);
	if(Global_USART_Config[1]->P_IRQ_CallBack != NULL)
	{
		if(irq_src.USART_RXNE != 1)
		{
			Global_USART_Config[1]->P_IRQ_CallBack(NULL , irq_src);
		}
		else
		{
			Global_USART_Config[1]->P_IRQ_CallBack(USART2->DR , irq_src);

		}
	}
	*/
	Global_USART_Config[1]->P_IRQ_CallBack(USART2->DR);
	//Flags
	 USART2->SR &=~  (1<<6) ; // TXC
	 USART2->SR &=~ (1<<5) ; // RXNE
}
void USART3_IRQHandler(void)
{
	/*
	USART_IRQ_SRC irq_src;

	irq_src.USART_TXE  = ((USART3->SR & (1<<7)) >> 7);
	irq_src.USART_TXC  = ((USART3->SR & (1<<6)) >> 6);
	irq_src.USART_RXNE  = ((USART3->SR & (1<<5)) >> 5);
	irq_src.USART_PE	 = ((USART3->SR & (1<<0)) >> 0);
	if(Global_USART_Config[2]->P_IRQ_CallBack != NULL)
	{
		if(irq_src.USART_RXNE != 1)
		{
			Global_USART_Config[2]->P_IRQ_CallBack(NULL , irq_src);
		}
		else
		{
			Global_USART_Config[2]->P_IRQ_CallBack(USART2->DR , irq_src);

		}
	}
*/
	Global_USART_Config[2]->P_IRQ_CallBack(USART2->DR);
	//Flags
	 USART3->SR &=~  (1<<6) ; // TXC
	 USART3->SR&=~  (1<<5) ; // RXNE
}


void USART_voidGetDMA_PeripheralAddress(USART_Number_t USART_Number , u32* ptr_u32PeripheralAddress)
{
	u32 LOC_u32Result  ;

	switch(USART_Number)
	{
	case USART_1 : LOC_u32Result = (u32)(&(USART1->DR)) ; break ;
	case USART_2 : LOC_u32Result = (u32)(&(USART2->DR)) ; break ;
	case USART_3 : LOC_u32Result = (u32)(&(USART3->DR)) ; break ;
	default : break ;
	}

	*ptr_u32PeripheralAddress =LOC_u32Result ;
}

void USART_voidSendStringWithFixedSizeSynch(USART_Number_t USART_Number , u8 *P_u8Data , u16 copy_u16BufferSize )
{
	u16 LOC_u16Counter = 0 ;
	for(LOC_u16Counter = 0 ; LOC_u16Counter < copy_u16BufferSize ; LOC_u16Counter++)
	{
		USART_voidSendDataSynch(USART_Number, (u16*)&P_u8Data[LOC_u16Counter]);
	}
}
void USART_voidSendStringWithDelimiterSynch(USART_Number_t USART_Number , u8 *P_u8Data , u8 copy_u16Delimiter )
{
	u32 LOC_u16Counter = 0 ;
	while (P_u8Data[LOC_u16Counter] != copy_u16Delimiter)
	{
		USART_voidSendDataSynch(USART_Number, (u16*)&P_u8Data[LOC_u16Counter]);
		LOC_u16Counter++ ;
	}
}
/************************************* End of File ******************************************/

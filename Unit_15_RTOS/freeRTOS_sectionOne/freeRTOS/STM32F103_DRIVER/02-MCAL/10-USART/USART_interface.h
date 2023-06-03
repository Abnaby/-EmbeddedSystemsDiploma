/**
* @file USART_interface.h
* @author Mohamed Abd El-Naby (mahameda.naby@gmail.com) 
* @brief 
* @version 0.3
* @date 2022-11-16
*
*/
#ifndef USART_INTERFACE_H 
#define USART_INTERFACE_H 





/******************************************************************************
* Includes
*******************************************************************************/




/******************************************************************************
* Preprocessor Constants
 *******************************************************************************/



/******************************************************************************
* Configuration Constants
*******************************************************************************/



/******************************************************************************
* Macros
*******************************************************************************/





/******************************************************************************
* Typedefs
*******************************************************************************/
typedef enum
{
	USART_RECEIVE					= (1<<2),
	USART_TRANSMIT					= (1<<3),
	USART_TRANCIVER					= (1<<2)|(1<<3)
}USART_OperationMode_t;

typedef enum
{
	USART_8BIT                   = 0,
	USART_9BIT                   = (1<<12)
}USART_DataLength_t;

typedef enum
{
	USART_DISABLE_PARITY	         = 0,
	USART_EVEN_PARITY             = (1<<10)	,
	USART_ODD_PARITY             	= (1<<10)|(1<<9)
}USART_Parity_t ;

typedef enum
{
	USART_1_STOPBIT               	  = 0,
	USART_0_P_5_STOPBIT               = (1<<12)	,
	USART_2_STOPBIT					  = (1<<13)	,
	USART_1_P_5_STOPBIT				  = (1<<12)|(1<<13)
}USART_StopBit_t ;

typedef enum
{
	USART_HW_FLOW_CONTROLLED_DISALBED	=	0		,
	USART_HW_FLOW_CONTROLLED_RTS		=	(1<<8)	,
	USART_HW_FLOW_CONTROLLED_CTS		=	(1<<9)	,
	USART_HW_FLOW_CONTROLLED_RTS_CTS	=	(1<<8)|(1<<9)
}USART_HWFlowControl_t;

typedef enum
{
	USART_DISABLE_IRQs			=	0	,
	USART_ENABLE_TXE_IRQs		=	(1<<7)	,
	USART_ENABLE_TXC_IRQs		=	(1<<6)	,
	USART_ENABLE_RXNE_IRQs		=	(1<<5)	,
	USART_ENABLE_PE_IRQs		=	(1<<8)
}USART_IRQ_t;

typedef enum
{
	USART_1	,
	USART_2 ,
	USART_3
}USART_Number_t;

typedef enum
{
	USART_IDLE_LOW            =   0            ,
	USART_IDLE_HIGH           =   (1<<10)

}USART_IdleLevel_t;

typedef enum
{
	USART_LEADING_EDGE        =   0            ,
	USART_TRAILING_EDGE       =   (1<<9)

}USART_DataSampling_t;

typedef enum
{
	DMA_DISABLE = 0	,
	DMA_TX_ENABLE	= (1<<7),
	DMA_RX_ENABLE	= (1<<6),
	DMA_TX_RX_ENABLE = ((1<<6) | (1<<7) )

}USART_DMA_t;
/******************************************************************************
* Typedefs Struct
*******************************************************************************/
typedef struct
{
	u8 USART_TXE:1;                      // TX buffer empty interrupt
	u8 USART_TXC:1;                      // TX Complete
	u8 USART_RXNE:1;                     // RX buffer not empty interrupt
	u8 USART_PE:1;                     // Error interrupt
	u8 USART_Reserved:4;
}USART_IRQ_SRC;

typedef struct
{
	USART_OperationMode_t	USART_OperationMode	;
	u32						USART_BuadRate		;
	USART_DataLength_t		USART_DataLength	;
	USART_Parity_t			USART_Parity		;
	USART_StopBit_t			USART_StopBit		;
	USART_HWFlowControl_t	USART_HWFlowControl;
	USART_IdleLevel_t		USART_IdleLevel		;
	USART_DataSampling_t	USART_DataSampling	;
	USART_DMA_t				USART_DMA			;			// See @ref 282 in Datasheet
	//USART_IRQ_t				USART_IRQ_t[4]		;		// Set Each Element with @USART_IRQ_t and reset set by (u8)NULL
	USART_IRQ_t				USART_IRQ_t	;
	//void(* P_IRQ_CallBack)(u16 copy_u16Data , USART_IRQ_SRC irq_src);
	void(* P_IRQ_CallBack)(u16 copy_u16Data);

}USART_Config;







/******************************************************************************
* Variables
*******************************************************************************/




/******************************************************************************
* Function Prototypes
*******************************************************************************/

void USART_voidInit(USART_Number_t USART_Number , USART_Config * usrConfig);

void USART_voidSendDataSynch(USART_Number_t USART_Number , u16 *P_u16Data) ;

void USART_voidSendDataAsynch(USART_Number_t USART_Number , u16 *P_u16Data );

void USART_voidReceiveDataSynch(USART_Number_t USART_Number , u16 *P_u16Data) ;

void USART_voidSendDataSynch(USART_Number_t USART_Number , u16 *P_u16Data);

void USART__VoidGPIO_SetPins(USART_Number_t USART_Number) ;

void USART_voidGetDMA_PeripheralAddress(USART_Number_t USART_Number , u32* ptr_u32PeripheralAddress) ;

void USART_voidSendStringWithFixedSizeSynch(USART_Number_t USART_Number , u8 *P_u8Data , u16 copy_u16BufferSize );

void USART_voidSendStringWithDelimiterSynch(USART_Number_t USART_Number , u8 *P_u8Data , u8 copy_u16Delimiter );

#endif
/************************************* End of File ******************************************/

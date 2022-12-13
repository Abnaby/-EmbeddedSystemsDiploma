/**
 * @file SPI_interface.h
 * @author Mohamed Abd El-Naby (mahameda.naby@gmail.com)
 * @brief
 * @version 0.1
 * @date 2022-11-08
 *
 */
#ifndef SPI_INTERFACE_H 
#define SPI_INTERFACE_H 





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
 * Enums
 *******************************************************************************/


typedef enum
{
	SPI_1 ,
	SPI_2
}SPI_Select_t ;

typedef enum
{
	SPI_SLAVE           =   0                  ,
	SPI_MASTER          =   (0x1UL << 2 )

}SPI_Mode_t;

typedef enum
{
	SPI_8_BIT_DATA 		= 0			,
	SPI_16_BIT_DATA     = (1<<11)
}SPI_DataSize_t;

typedef enum
{
	SPI_MSB_FIRST        =    0              ,
	SPI_LSB_FIRST        =	  (1<<7)

}SPI_DataOrder_t ;


typedef enum
{
	SPI_FULL_DOUPLEX 			= 0 ,
	SPI_FULL_DOUPLEX_RX 		= (0x1<<10) ,
	SPI_SIMPLEX_TX				= (0x1 << 15),
	SPI_SIMPLEX_RX				= (0x1<<15)| (0x1<<14 )
}SPI_CommMode_t;



typedef enum
{
	SPI_IDLE_LOW            =   0            ,
	SPI_IDLE_HIGH           =   (1<<1)

}SPI_IdleLevel_t;

typedef enum
{
	SPI_LEADING_EDGE        =   0            ,
	SPI_TRAILING_EDGE       =   (1<<0)

}SPI_DataSampling_t;

typedef enum
{
	SPI_SSM_HW_SLAVE				= 0	,
	SPI_SSM_HW_MASTER_SS_EN			= (1<<2) ,
	SPI_SSM_HW_MASTER_SS_DISABLED	= ~(1<<2)	 ,	//CLEAR

	SPI_SSM_SW_SLAVE_REST			= (1<<9),
	SPI_SSM_SW_SLAVE_SET			= (1<<9) | (1<<8)


}SPI_SlaveSelectMangment_t;

typedef enum
{
	SPI_BUAD_PRESCALED_BY_2			= 0 ,
	SPI_BUAD_PRESCALED_BY_4			= (0b001UL<<3) ,
	SPI_BUAD_PRESCALED_BY_8			= (0b010UL<<3) ,
	SPI_BUAD_PRESCALED_BY_16		= (0b011UL<<3) ,
	SPI_BUAD_PRESCALED_BY_32		= (0b100UL<<3) ,
	SPI_BUAD_PRESCALED_BY_64		= (0b101UL<<3) ,
	SPI_BUAD_PRESCALED_BY_128		= (0b110UL<<3) ,
	SPI_BUAD_PRESCALED_BY_256		= (0b111UL<<3)

}SPI_BuadRate_t;

typedef enum
{
	SPI_IRQ_DISABLED			=	0 ,
	SPI_IRQ_ENABLE_TXEIE		=	(1<<7) ,
	SPI_IRQ_ENABLE_RXNEIE		=	(1<<6) ,
	SPI_IRQ_ENABLE_ERRIE		= 	(1<<5)

}SPI_IRQ_t;



typedef struct
{
	u8 SPI_TXE:1;                      // TX buffer empty interrupt
	u8 SPI_RXNE:1;                     // RX buffer not empty interrupt
	u8 SPI_ERROR:1;                     // Error interrupt
	u8 SPI_Reserved:5;
}SPI_IRQ_SRC;
/******************************************************************************
 * Typedefs
 *******************************************************************************/

typedef struct 
{
	SPI_Mode_t			 		SPI_Mode   ;
	SPI_CommMode_t 		 		SPI_CommMode ;
	SPI_DataOrder_t		 		SPI_DataOrder ;
	SPI_DataSize_t		 		SPI_DataSize	;
	SPI_IdleLevel_t		 		SPI_IdleLevel ;
	SPI_DataSampling_t	 		SPI_DataSampling;
	SPI_SlaveSelectMangment_t	SPI_SlaveSelectMangment;
	SPI_BuadRate_t				SPI_BuadRate		;
	SPI_IRQ_t					SPI_IRQ				;
	void(* P_IRQ_CallBack)(SPI_IRQ_SRC irq_src);
}SPI_config;




/******************************************************************************
 * Variables
 *******************************************************************************/




/******************************************************************************
 * Function Prototypes
 *******************************************************************************/

/**
 * @brief 			- Initialize the SPI according to the specified parameter
 * @param 	 		- SPI_Number : where x can be (1,2 depending on device used)
 * @param 	 		- SPI_Config : All UART Configuration EXTI_PinConfig_t
 * @retval 			- None
 * Note				- Support for SPI Full Duplex Master/Slave only & NSS HW/SW
 * 					- in case of master you have to configure pin and drive it
 */
void SPI_voidInit(SPI_Select_t SPI_Number , SPI_config* SPI_config);

/**
 * @brief 			- transmit Buffer on SPI
 * @param 	 		- SPI_Number : where x can be (1,2 depending on device used)
 * @param 	 		- Buffer : Buffer for data will be send
 * @retval 			- None
 * Note				- None
 */
void SPI_voidSendDataSynch(SPI_Select_t SPI_Number , u16 *pTxBuffer);
/**
 * @brief 			- Receive Buffer from SPI
 * @param 	 		- SPI_Number : where x can be (1,2 depending on device used)
 * @param 	 		- Buffer : Buffer for data will be received
 * @retval 			- None
 * Note				- None
 */
void SPI_voidRecieveDataSynch(SPI_Select_t SPI_Number , u16 *pRxBuffer);


/**=
 * @brief 			- Transmit and Receive Buffer on SPI at the same time
 * @param 	 		- SPI_Number : where x can be (1,2 depending on device used)
 * @param 	 		- Buffer : Buffer for data will be transmitted
 * @param			- Buffer : Buffer for data will be received
 * @retval 			- None
 * Note				- None
 */
void SPI_voidSend_RecieveDataSynch(SPI_Select_t SPI_Number , u16 *pTxBuffer, u16 *pRxBuffer);

/**
 * @brief 			- Configure SPI pins
 * @param [in] 		- SPI_Number : where x can be (1,2 depending on device used)
 * @retval 			- None
 * Note				- None
 */

void SPI_VoidGPIO_SetPins(SPI_Select_t SPI_Number) ;

#endif
/************************************* End of File ******************************************/

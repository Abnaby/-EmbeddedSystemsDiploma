/**
* @file USART_private.h
* @author Mohamed Abd El-Naby (mahameda.naby@gmail.com) 
* @brief 
* @version 0.2
* @date 2022-11-10
*
*/
#ifndef USART_PRIVATE_H 
#define USART_PRIVATE_H 





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
* Typedefs
*******************************************************************************/

typedef struct{

	volatile u32 SR;
	volatile u32 DR;
	volatile u32 BRR;
	volatile u32 CR1;
	volatile u32 CR2;
	volatile u32 CR3;
	volatile u32 GTPR;

}USART_Type;


/******************************************************************************
* Macros
*******************************************************************************/




#define USART1 ( ( volatile USART_Type* ) 0x40013800 )

#define USART2 ( ( volatile USART_Type* ) 0x40004400 )

#define USART3 ( ( volatile USART_Type* ) 0x40004800 )


#define TXE	7
#define TXC	6
#define RXNE	5

/******************************************************************************
* Variables
*******************************************************************************/




/******************************************************************************
* Module Variable Definitions
*******************************************************************************/




/******************************************************************************
* Private Function Prototypes
*******************************************************************************/


void USART_voidBuadRateCalc(u16 BuadRate , u32 PClock , u16 *BRR_Reg);

#endif
/************************************* End of File ******************************************/

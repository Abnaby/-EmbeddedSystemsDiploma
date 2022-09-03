/**
* @file USART_Private.h
* @author Mohamed Abd El-Naby (mahameda.naby@gmail.com) 
* @brief 
* @version 0.1
* @date 2022-08-14
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
#define TX_NORMAL_SPD           0
#define TX_DOUBLE_SPD           1

#define USART_MODE_SYNCH     (0b01000000)         
#define USART_MODE_ASYNCH    (0b01000000)


/******************************************************************************
* Configuration Constants
*******************************************************************************/




/******************************************************************************
* Macros
*******************************************************************************/
#define USART_UDR                    *((volatile u8*)0x2C)
#define USART_UCSRA                  *((volatile u8*)0x2B)
#define USART_UCSRB                  *((volatile u8*)0x2A)
#define USART_UBRRL                  *((volatile u8*)0x29)
#define USART_UCSRC                  *((volatile u8*)0x40)
#define USART_UBRRH                  *((volatile u8*)0x40)


// UCSRA REG DESCRIPTION

#define UCSRA_RXC                   (0b10000000)
#define UCSRA_TXC                   (0b01000000)
#define UCSRA_UDRE                  (0b00100000)
#define UCSRA_FE                    (0b00010000)
#define UCSRA_DOR                   (0b00001000)
#define UCSRA_PE                    (0b00000100)
#define UCSRA_U2X                   (0b00000010)
#define UCSRA_MPCM                  (0b00000001)


// UCSRB REG DESCRIPTION 

#define UCSRB_RXCIE                 (0b10000000)
#define UCSRB_TXCIE                 (0b01000000)
#define UCSRB_UDRIE                 (0b00100000)
#define UCSRB_RXEN                  (0b00010000)
#define UCSRB_TXEN                  (0b00001000)
#define UCSRB_UCSZ2                 (0b00000100)
#define UCSRB_RXB8                  (0b00000010)
#define UCSRB_TXB8                  (0b00000001)

    
// UCSRC REG DESCRIPTION 

#define UCSRC_URSEL                 (0b10000000)
#define UCSRC_UMSEL                 (0b01000000)
#define UCSRC_UPM1                  (0b00100000)
#define UCSRC_UPM0                  (0b00010000)
#define UCSRC_USBS                  (0b00001000)
#define UCSRC_UCSZ1                 (0b00000100)
#define UCSRC_UCSZ0                 (0b00000010)
#define UCSRC_UCPOL                 (0b00000001)
    

// UBRH REG DESCRIPTION 

#define UBRRH_URSEL                 (0b10000000)
#define UBRRH_UBRR_LSB              (0b00000001)
#define UBRRH_UBRR_MSB              (0b00001000)
    


/******************************************************************************
* Typedefs
*******************************************************************************/




/******************************************************************************
* Variables
*******************************************************************************/




/******************************************************************************
* Module Variable Definitions
*******************************************************************************/




/******************************************************************************
* Private Function Prototypes
*******************************************************************************/

static u8 MCAL_u8PrivateEffectiveData(u8 data); 

 void __vector_11(void) __attribute__(( signal , used ));    //USART, Rx Complete
 void __vector_13(void) __attribute__(( signal , used ));    //USART, Tx Complete
 void __vector_12(void) __attribute__(( signal , used ));   //USART Data Register Empty

static void (*Global_TxComplate) (void) = NULL;
#endif
/************************************* End of File ******************************************/
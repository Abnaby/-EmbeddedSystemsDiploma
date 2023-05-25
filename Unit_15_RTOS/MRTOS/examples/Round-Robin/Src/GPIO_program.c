/**
* @file GPIO_program.c
* @author Mohamed Abd El-Naby (mahameda.naby@gmail.com) 
* @brief 
* @version 0.1
* @date 2022-10-25
*
*/
/******************************************************************************
* Includes
*******************************************************************************/
#include "STD_TYPES.h"
#include "BIT_MATH.h"
#include "COMMON.h"
#include "GPIO_interface.h"
#include "GPIO_config.h"
#include "GPIO_private.h"










/******************************************************************************
* Module Preprocessor Constants
*******************************************************************************/




/******************************************************************************
* Module Preprocessor Macros
*******************************************************************************/




/******************************************************************************
* Typedefs
*******************************************************************************/




/******************************************************************************
* Module Variable Definitions
*******************************************************************************/




/******************************************************************************
* Function Prototypes
*******************************************************************************/

void GPIO_voidSetPinDirection	(u8 Copy_u8Port, Pin_t Copy_Pin , u8 Copy_u8Mode)
{
    	switch(Copy_u8Port)
	{
		case PORTA :
			if(Copy_Pin <= 7)
			{
				/* 			RESET		*/

				GPIOA->CRL &= ~(0b1111<<(Copy_Pin*4));
				/*			VALUE		*/
				
				GPIOA->CRL |= ((Copy_u8Mode)<< (4*Copy_Pin));
			}
			else if (Copy_Pin <= 15 )
			{
				Copy_Pin = Copy_Pin - 8 ;
				GPIOA->CRH &= ~(0b1111<<(Copy_Pin*4));
				GPIOA->CRH |= ((Copy_u8Mode)<< ( 4 * Copy_Pin));

			}
			else 
			{
				/* error */ 
			}
			break;
		case PORTB :
			if(Copy_Pin <= 7)
			{
				GPIOB->CRL &= ~(0b1111<<(Copy_Pin*4)); // to reset pin
				GPIOB->CRL |= ((Copy_u8Mode)<< ( 4 * Copy_Pin));
			}
			else if (Copy_Pin <= 15 )
			{
				Copy_Pin = Copy_Pin - 8 ; //TO REPRESENT PIN 8 IN FIRST 4 BITS IN CRH REGESTER
				GPIOB->CRH &= ~(0b1111<<(Copy_Pin*4));
				GPIOB->CRH |= ((Copy_u8Mode)<< (4*Copy_Pin));

			}
			else 
			{
				/* error */ 
			}
			break;
		case PORTC :
			if(Copy_Pin <= 7)
			{
				GPIOC->CRL &= ((0b0000)     << ( 4 * Copy_Pin)) ; // to reset pin
				GPIOC->CRL |= ((Copy_u8Mode)<< ( 4 * Copy_Pin));
			}
			else if (Copy_Pin <= 15 )
			{
				Copy_Pin = Copy_Pin - 8 ; //TO REPRESENT PIN 8 IN FIRST 4 BITS IN CRH REGESTER
				GPIOC->CRH &= ~(0b1111<<(Copy_Pin*4)); // to reset pin
				GPIOC->CRH |= ((Copy_u8Mode)<< (4*Copy_Pin));
			}
			else 
			{
				/* error */ 
			}
			break;
		default : break ;	
	}

}

void GPIO_voidSetPortDirection	(u8 Copy_u8Port, 				 u8 Copy_u8Mode)
{
	u32 LOC_u32Mode=0;
	switch(Copy_u8Port)
	{
		case PORTA :
			/*			RESET		*/
			GPIOA->CRL = 0x0 ;
			GPIOA->CRH = 0x0;
			/*			VALUE		*/
			LOC_u32Mode=0;
			for (u8 i=0 ; i<=7 ;i++)
				LOC_u32Mode = (LOC_u32Mode << 4) | Copy_u8Mode;
			GPIOA->CRL =  LOC_u32Mode ;
			GPIOA->CRH = LOC_u32Mode ;
			break;
		case PORTB :
			GPIOB->CRL = 0x0 ;
			GPIOB->CRH = 0x0;
			/*			VALUE		*/
			LOC_u32Mode=0;
			for (u8 i=0 ; i<=7 ;i++)
				LOC_u32Mode = (LOC_u32Mode << 4) | Copy_u8Mode; ;
			GPIOB->CRL =  LOC_u32Mode ;
			GPIOB->CRH = LOC_u32Mode ;
			break;
		case PORTC :
			GPIOC->CRL = 0x0 ;
			GPIOC->CRH = 0x0;
			/*			VALUE		*/
			LOC_u32Mode=0;
			for (u8 i=0 ; i<=7 ;i++)
				LOC_u32Mode = (LOC_u32Mode << 4) | Copy_u8Mode; ;
			GPIOC->CRL =  LOC_u32Mode ;
			GPIOC->CRH = LOC_u32Mode ;
			break;
		default :  break ;
	}

}
void GPIO_voidSetPinValue(u8 Copy_u8Port, Pin_t Copy_Pin , u8 Copy_u8Value)
{
	switch(Copy_u8Port)
	{
		case PORTA :		
			switch (Copy_u8Value)
			{
				case HIGH :
					GPIOA->BSRR = (1 << Copy_Pin);
					break ;
				case LOW  :	
					GPIOA->BRR = (1 << Copy_Pin);
					break ;
				default :
					/*error */ 
					break ; 
			}	
			break ; 
		case PORTB :
			switch (Copy_u8Value)
			{
				case HIGH :
					GPIOB->BSRR = (1 << Copy_Pin);
					break ;
				case LOW  :	
					GPIOB->BRR = (1 << Copy_Pin);
					break ;
				default :
					/*error */ 
					break ; 
			}			
			break ;
		case PORTC	:
			switch (Copy_u8Value)
			{
				case HIGH :
					GPIOC->BSRR = (1 << Copy_Pin);
					break ;
				case LOW  :	
					GPIOC->BRR = (1 << Copy_Pin);
					break ;
				default :
					/*error */ 
					break ; 
			}	
			break ;
		default :
		//error
			break ;
	}

}
void GPIO_voidSetPortValue		(u8 Copy_u8Port, u8 Copy_u8Value)
{
	switch(Copy_u8Port)
	{
		case PORTA :
			switch(Copy_u8Value)
			{
			case HIGH :
				GPIOA->ODR = 0b1111111111111111 ;
				break ;
			case LOW :
				GPIOA->ODR = 0b0000000000000000 ;
				break ;
			}
			break ;
		case PORTB :
			switch(Copy_u8Value)
			{
			case HIGH :
				GPIOB->ODR = 0b1111111111111111 ;
				break ;
			case LOW :
				GPIOB->ODR = 0b0000000000000000 ;
				break ;
			}
			break ;
		case PORTC :
			switch(Copy_u8Value)
			{
			case HIGH :
				GPIOC->ODR = 0b1111111111111111 ;
				break ;
			case LOW :
				GPIOC->ODR = 0b0000000000000000 ;
				break ;
			}
			break ;
		default :
			/** 		error 		**/
		break ;
	}

}
void GPIO_voidTogglePinValue	(u8 Copy_u8Port, Pin_t Copy_Pin)
{
	switch(Copy_u8Port){
		case PORTA :
			TOG_BIT(GPIOA->ODR , Copy_Pin ) ;

			break ;
		case PORTB :
			TOG_BIT(GPIOB->ODR , Copy_Pin ) ;

			break ;
		case PORTC :
			TOG_BIT(GPIOC->ODR , Copy_Pin ) ;
			break ;
		default :
			/* error */
			break ;

	}


}

u8 GPIO_u8GetPinValue (u8 Copy_u8Port, Pin_t Copy_Pin)
{
	u8 LOC_u8Result = 0;
	if(Copy_Pin > 15)
	{
		/* error */
	}
	switch(Copy_u8Port)
	{
		case PORTA :
			LOC_u8Result  = GET_BIT(GPIOA->IDR , Copy_Pin ) ;
			break ;
		case PORTB :
			LOC_u8Result  = GET_BIT(GPIOB->IDR , Copy_Pin ) ;
			break ;
		case PORTC :
			LOC_u8Result  = GET_BIT(GPIOC->IDR , Copy_Pin ) ;
			break ;
		default :
			/* error */
			break ;
	}
	return LOC_u8Result ;
}

void GPIO_u8ChoosePullMode(u8 Copy_u8Port, Pin_t Copy_Pin, GPIO_PULL_MODE_t Copy_Mode)
{
	switch(Copy_u8Port)
	{
		case PORTA :
            switch(Copy_Mode)
            {
                case GPIO_PULL_DOWN : CLR_BIT(GPIOA->ODR, Copy_Pin);break;
                case GPIO_PULL_UP   : SET_BIT(GPIOA->ODR, Copy_Pin);break;
                default : /*!<TODO: Error Code*/break;
            }			break ;
		case PORTB :
            switch(Copy_Mode)
            {
                case GPIO_PULL_DOWN : CLR_BIT(GPIOB->ODR, Copy_Pin);break;
                case GPIO_PULL_UP   : SET_BIT(GPIOB->ODR, Copy_Pin);break;
                default : /*!<TODO: Error Code*/break;
            }			break ;
		case PORTC :
            switch(Copy_Mode)
            {
                case GPIO_PULL_DOWN : CLR_BIT(GPIOC->ODR, Copy_Pin);break;
                case GPIO_PULL_UP   : SET_BIT(GPIOC->ODR, Copy_Pin);break;
                default : /*!<TODO: Error Code*/break;
            }			break ;
		default :
			/* error */
			break ;
	}

}
/******************************************************************************
* Function Definitions
*******************************************************************************/




/************************************* End of File ******************************************/

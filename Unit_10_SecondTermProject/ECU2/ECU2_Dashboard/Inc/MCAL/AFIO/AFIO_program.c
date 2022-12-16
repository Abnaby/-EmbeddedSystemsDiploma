/**
* @file AFIO_program.c
* @author Mohamed Abd El-Naby (mahameda.naby@gmail.com) 
* @brief 
* @version 0.1
* @date 2022-10-28
*
*/
/******************************************************************************
* Includes
*******************************************************************************/
#include "../../LIB/STD_TYPES/STD_TYPES.h"
#include "../../LIB/BIT_MATH/BIT_MATH.h"
#include "../../LIB/COMMON/COMMON.h"

#include "AFIO_interface.h"
#include "AFIO_config.h"
#include "AFIO_private.h"










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




/******************************************************************************
* Function Definitions
*******************************************************************************/

void AFIO_voidEXTIConfiguration(EXTI_Lines Copy_LineID , u8 Copy_u8PortNumber)
{
    Copy_u8PortNumber = Copy_u8PortNumber - PORTA ; // Ex PORTB = 3 = 3 - 2 = 1 
    u8 LOC_u8IntIndex = 0  ; 
    u8 LOC_u8LinePosition = 0  ; 
    LOC_u8IntIndex = Copy_LineID / 4 ;
    LOC_u8LinePosition = Copy_LineID % 4 ;  
    /*			RESET		*/
	AFIO -> AFIO_EXTICR[LOC_u8IntIndex] &=~((0b1111)<<(LOC_u8LinePosition));
	/*			ASSIGN		*/
	AFIO -> AFIO_EXTICR[LOC_u8IntIndex]  |= ((Copy_u8PortNumber)<<(LOC_u8LinePosition));
}


/************************************* End of File ******************************************/

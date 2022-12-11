/**
* @file PIR
* @author Mohamed Abd El-Naby (mahameda.naby@gmail.com) 
* @brief 
* @version 3.0
* @date 2022-12-4
*
*/

/******************************************************************************
* Includes
*******************************************************************************/

#include "../../LIB/BIT_MATH/BIT_MATH.h"
#include "../../LIB/STD_TYPES/STD_TYPES.h"
#include "../../LIB/MAPPING/MAPPING.h"
#include "../../MCAL/GPIO/GPIO_interface.h"
#if PIR_BASED_ON == PIR_INTERRUPT 
#include "../../MCAL/EXTI/EXT_INT_interface.h"
#endif		
#include "PIR.h"




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

void PIR_voidInit(void)
{
	#if PIR_BASED_ON == PIR_INTERRUPT 
	#else 
		GPIO_voidSetPinDirection(PIR_PORT_PIN,INPUT_FLOAT);
	#endif 
    
} 



#if PIR_BASED_ON == PIR_INTERRUPT 
void PIR_voidExistMovement(void(*Callback)(void))
{
	/*    Set PIR_USING_EXTIx Mode For Interrupt At PIR_INTERRUPT_AT   */
	EXTINT_voidMode(PIR_USING_EXTIx ,PIR_INTERRUPT_AT,Callback);
	/*    Enable Peripheral Flag For INT0  */
	EXTINT_voidEnable(PIR_USING_EXTIx);
}
#else
u8 PIR_u8ExistMovement(void)
{
    u8 LOC_u8Result = 0 ; 
    LOC_u8Result = GPIO_u8GetPinValue(PIR_PORT_PIN); 
    return LOC_u8Result ; 
}
#endif 

/************************************* End of File ******************************************/
/**
* @file NVIC_program.c
* @author Mohamed Abd El-Naby (mahameda.naby@gmail.com) 
* @brief 
* @version 0.1
* @date 2022-10-27
*
*/
/******************************************************************************
* Includes
*******************************************************************************/
#include "STD_TYPES.h"
#include "BIT_MATH.h"
#include "COMMON.h"
#include "NVIC_interface.h"
#include "NVIC_config.h"
#include "NVIC_private.h"










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
void NVIC_voidEnableInterrupt  ( u8 Copy_u8IntNumber )
{
	if(Copy_u8IntNumber <= 31)
	{
		SET_BIT(NVIC_ISER[0] , Copy_u8IntNumber ); 
	}
	else if (Copy_u8IntNumber <= 59 )
	{
		Copy_u8IntNumber -= 32 ; 
		SET_BIT(NVIC_ISER[1] , Copy_u8IntNumber ); 
	}
	else 
	{
		/*	 <TODO> ERROR OUT OF INTERRUPT NUMBERS	*/
	}
}

void NVIC_voidSetPenddingFlag  ( u8 Copy_u8IntNumber )
{
	if(Copy_u8IntNumber <= 31)
	{

		SET_BIT(NVIC_ISPR[0] , Copy_u8IntNumber ); 
	}
	else if (Copy_u8IntNumber <= 59 )
	{
		Copy_u8IntNumber -= 32 ; 
		SET_BIT(NVIC_ISPR[1] , Copy_u8IntNumber ); 
	}
	else 
	{
		/*	 <TODO> ERROR OUT OF INTERRUPT NUMBERS	*/
	}		
}

void NVIC_voidClearPenddingFlag( u8 Copy_u8IntNumber )
{
	if(Copy_u8IntNumber <= 31)
	{
		SET_BIT(NVIC_ICPR[0] , Copy_u8IntNumber ); 
	}
	else if (Copy_u8IntNumber <= 59 )
	{
		Copy_u8IntNumber -= 32 ; 
		SET_BIT(NVIC_ICPR[1] , Copy_u8IntNumber ); 
	}
	else 
	{
		/*	 <TODO> ERROR OUT OF INTERRUPT NUMBERS	*/
	}	
}


activeFlagState_t NVIC_u8GetInterruptStatus ( u8 Copy_u8IntNumber )
{
	activeFlagState_t LOC_u8ActiveBitStatues = INT_NOT_ACTIVE ;
	if(Copy_u8IntNumber <= 31)
	{
		LOC_u8ActiveBitStatues = GET_BIT(NVIC_IABR[0] , Copy_u8IntNumber ); 
	}
	else if (Copy_u8IntNumber <= 59 )
	{
		Copy_u8IntNumber -= 32 ; 
		LOC_u8ActiveBitStatues = GET_BIT(NVIC_IABR[1] , Copy_u8IntNumber ); 
	}
	else 
	{
		/*	 <TODO> ERROR OUT OF INTERRUPT NUMBERS	*/
	}
	return LOC_u8ActiveBitStatues ; 
}


void NVIC_voidSetIRQ_PriorityGrouping (u8 Copy_u8IntNumber , u8 Copy_u8GroupPripority, u8 Copy_u8SubGroupPripority)
{
	u8 LOC_u8Priority ;
	// READ SCB_AIRCR Reg	
	u32 SCB_AIRCR_regVal = SCB_AIRCR  ;
	// Priority Eqn 
	LOC_u8Priority = 	(Copy_u8SubGroupPripority | (Copy_u8GroupPripority<<((SCB_AIRCR_regVal- 0x05FA0300)/0x100)));
	// Set Priority 
	NVIC_IPR[Copy_u8IntNumber] = (LOC_u8Priority << 4);
}





/************************************* End of File ******************************************/

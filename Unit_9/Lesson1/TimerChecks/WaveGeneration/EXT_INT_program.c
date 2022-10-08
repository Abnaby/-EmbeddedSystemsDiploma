/**************************************************************************/
/* Author	: Mohamed                                               	  */
/* Date		: 28 January 2021                                 		      */
/* Version	: V01							  							  */
/**************************************************************************/

/******************************************************************************
* Includes
*******************************************************************************/
#include "BIT_MATH.h"
#include "STD_TYPES.h"
#include "MAPPING.h"

#include "EXT_INT_interface.h"
#include "EXT_INT_private.h"
#include "EXT_INT_config.h"
void EXTINT_voidInit(void)
{
	CLR_BIT(EXTINT_GICR,GICR_INT0);
	CLR_BIT(EXTINT_GICR,GICR_INT1);
	CLR_BIT(EXTINT_GICR,GICR_INT2);
	/*	 clear any existing edge flag	*/
	SET_BIT(EXTINT_GIFR,GIFR_INTF0);
	SET_BIT(EXTINT_GIFR,GIFR_INTF1);
	SET_BIT(EXTINT_GIFR,GIFR_INTF2);
}
void EXTINT_voidEnable(u8 copy_u8InterruptID )
{
	switch(copy_u8InterruptID)
	{
		case EXT_INT0 :
		/*		ENABLE INT0		*/
		SET_BIT(EXTINT_GICR,GICR_INT0);
		break ;
		case EXT_INT1 :
		/*		ENABLE INT1 	*/
		SET_BIT(EXTINT_GICR,GICR_INT1);
		break ;
		case EXT_INT2 :
		/*		ENABLE INT2		*/
		SET_BIT(EXTINT_GICR,GICR_INT2);

		break;
		default :
		break ;

	}
}
void EXTINT_voidMode(u8 copy_u8InterruptID , u8 copy_u8InterruptMode ,  void(*copy_funcAddress)(void))
{	
	switch(copy_u8InterruptID)
	{
		case EXT_INT0 :
		/*		SET CALLBACK FUNCTION		*/
		if(copy_funcAddress != NULL)
		{
			Callback_INT0 = copy_funcAddress;
		}
		else
		{
			//<!TODO ERROR>
		}

		switch(copy_u8InterruptMode)
		{
			case EXT_INT0_LOW_LEVEL :
			/*	CLEAR ISC00 AND ISC01 IN MCUCR	*/
			CLR_BIT(EXTINT_MCUCR,MCUCR_ISC00);
			CLR_BIT(EXTINT_MCUCR,MCUCR_ISC01);
			break ;
			case EXT_INT0_FALLING_EDGE :
			/*	CLEAR ISC00 AND SET ISC01 IN MCUCR	*/
			CLR_BIT(EXTINT_MCUCR,MCUCR_ISC00);
			SET_BIT(EXTINT_MCUCR,MCUCR_ISC01);
			break ;
			case EXT_INT0_RISING_EDGE :
			/*	SER ISC00 AND ISC01 IN MCUCR	*/
			SET_BIT(EXTINT_MCUCR,MCUCR_ISC00);
			SET_BIT(EXTINT_MCUCR,MCUCR_ISC01);
			break;
			case EXT_INT0_LOGICAL_CHANGE :
			/*	SET ISC00 AND CLEAR ISC01 IN MCUCR	*/
			CLR_BIT(EXTINT_MCUCR,MCUCR_ISC01);
			SET_BIT(EXTINT_MCUCR,MCUCR_ISC00);
			break ;
			default :
			//<!TODO ERROR>
			break ;
		}
		break ;
		case EXT_INT1 : 
			/*		SET CALLBACK FUNCTION		*/
			if(copy_funcAddress != NULL)
			{
				Callback_INT1 = copy_funcAddress;
			}
			else
			{
				//<!TODO ERROR>
			}

			switch(copy_u8InterruptMode)
			{
				case EXT_INT1_LOW_LEVEL :
				/*	CLEAR ISC10 AND ISC11 IN MCUCR	*/
				CLR_BIT(EXTINT_MCUCR,MCUCR_ISC10);
				CLR_BIT(EXTINT_MCUCR,MCUCR_ISC11);
				break ;
				case EXT_INT1_FALLING_EDGE :
				/*	CLEAR ISC10 AND SET ISC11 IN MCUCR	*/
				CLR_BIT(EXTINT_MCUCR,MCUCR_ISC10);
				SET_BIT(EXTINT_MCUCR,MCUCR_ISC11);
				break ;
				case EXT_INT1_RISING_EDGE :
				/*	SER ISC10 AND ISC11 IN MCUCR	*/
				SET_BIT(EXTINT_MCUCR,MCUCR_ISC10);
				SET_BIT(EXTINT_MCUCR,MCUCR_ISC11);
				break;
				case EXT_INT1_LOGICAL_CHANGE :
				/*	SET ISC11 AND CLEAR ISC10 IN MCUCR	*/
				CLR_BIT(EXTINT_MCUCR,MCUCR_ISC11);
				SET_BIT(EXTINT_MCUCR,MCUCR_ISC10);
				break ;
				default :
				//<!TODO ERROR>
				break ;
			}
			break ;
		case EXT_INT2 : 
			/*		SET CALLBACK FUNCTION		*/
			if(copy_funcAddress != NULL)
			{
				Callback_INT2 = copy_funcAddress;
			}
			else
			{
				//<!TODO ERROR>
			}

			switch(copy_u8InterruptMode)
			{
				case EXT_INT2_FALLING_EDGE :
				/*	CLEAR ISC2 IN MCUCSR	*/
				CLR_BIT(EXTINT_MCUCSR,MCUCSR_ISC2);
				break ;
				case EXT_INT2_RISING_EDGE :
				/*	SET ISC2 IN MCUCSR	*/
				SET_BIT(EXTINT_MCUCSR,MCUCSR_ISC2);
				break;
				default :
				//<!TODO ERROR>
				break ;
			}		
			break;
		default :
		//<!TODO ERROR>
		break ;

	}
}
void EXTINT_voidDisable(u8 copy_u8InterruptID )
{
	switch(copy_u8InterruptID)
	{
		case EXT_INT0 :
		/*		DISABLE INT0		*/
		CLR_BIT(EXTINT_GICR,GICR_INT0);
		break ;
		case EXT_INT1 :
		/*		DISABLE INT1 	*/
		CLR_BIT(EXTINT_GICR,GICR_INT1);
		break ;
		case EXT_INT2 :
		/*		DISABLE INT2		*/
		CLR_BIT(EXTINT_GICR,GICR_INT2);
		break;
		default :
		break ;

	}
}
void EXTINT_voidGlobalIntEnable(void)
{
	/*	ENABLE GLOBAL INTTERUPT	*/
	SET_BIT(SREG,SREG_GIE);
}


void __vector_1(void)
{
	Callback_INT0();	
}

void __vector_2(void)
{
		Callback_INT1();
	
		
}

void __vector_18(void)
{
	Callback_INT2();
}
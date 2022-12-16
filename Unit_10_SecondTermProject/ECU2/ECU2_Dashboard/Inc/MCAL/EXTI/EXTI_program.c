/**
* @file EXTI_program.c
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

#include "EXTI_interface.h"
#include "EXTI_config.h"
#include "EXTI_private.h"










/******************************************************************************
* Module Preprocessor Constants
*******************************************************************************/




/******************************************************************************
* Module Preprocessor Macros
*******************************************************************************/

#define _NUMBER_OF_EXTI 16


/******************************************************************************
* Typedefs
*******************************************************************************/




/******************************************************************************
* Module Variable Definitions
*******************************************************************************/
static EXTI_voidPtrToFunction  EXTI_PtrFunction [_NUMBER_OF_EXTI];



/******************************************************************************
* Function Prototypes
*******************************************************************************/




/******************************************************************************
* Function Definitions
*******************************************************************************/

void EXTI_voidInitLine(EXTI_Lines copy_LineID , EXTI_CapturingMode copy_SetModeOfIRQ)
{
    switch (copy_SetModeOfIRQ)
    {
    case EXTI_RISING: 
    CLR_BIT(EXTI->FTSR , copy_LineID);
    SET_BIT(EXTI->RTSR , copy_LineID);
    case EXTI_FALLING: 
    SET_BIT(EXTI->FTSR , copy_LineID);
    CLR_BIT(EXTI->RTSR , copy_LineID);
    case EXTI_ON_CHANGE: 
    SET_BIT(EXTI->RTSR , copy_LineID);
    SET_BIT(EXTI->FTSR , copy_LineID);
    default:
        // <TODO> ERROR
        break;
    }
}


void EXTI_voidEnableEXTI(EXTI_Lines copy_LineID)
{
    SET_BIT((EXTI->IMR) , copy_LineID );
}

void EXTI_voidDisableEXTI(EXTI_Lines copy_LineID)
{
    CLR_BIT((EXTI->IMR) , copy_LineID );
}

void EXTI_voidSoftwareTrigger(EXTI_Lines copy_LineID)
{
    	SET_BIT( EXTI->SWIER , copy_LineID );
}
void EXTI_voidChangeLineTrigger(EXTI_Lines copy_LineID , EXTI_CapturingMode copy_SetModeOfIRQ)
{
    EXTI_voidInitLine(copy_LineID,copy_SetModeOfIRQ);
}

void EXTI_voidSetCallBackFCN(EXTI_Lines copy_LineID , EXTI_voidPtrToFunction ptr_ISRFunc)
{
    EXTI_PtrFunction[copy_LineID] = ptr_ISRFunc ; 
}

/************************************* Callback Functions   ********************************/
   void EXTI0_IRQHandler(void)
  {
    EXTI_PtrFunction[0]();
    /*	CLR Pending Flag	*/
    EXTI->PR |= (1<<0);

  }
   void EXTI1_IRQHandler(void)
  {
    EXTI_PtrFunction[1]();
    /*	CLR Pending Flag	*/
    EXTI->PR |= (1<<1);
  }
   void EXTI2_IRQHandler(void)
  {
    EXTI_PtrFunction[2]();
    /*	CLR Pending Flag	*/
    EXTI->PR |= (1<<2);
  }
   void EXTI3_IRQHandler(void)
  {
    EXTI_PtrFunction[3]();
    /*	CLR Pending Flag	*/
    EXTI->PR |= (1<<3);
  }
   void EXTI4_IRQHandler(void)
  {
    EXTI_PtrFunction[4]();
    /*	CLR Pending Flag	*/
    EXTI->PR |= (1<<4);
  }
   void EXTI5_IRQHandler(void)
  {
    EXTI_PtrFunction[5]();
    /*	CLR Pending Flag	*/
    EXTI->PR |= (1<<5);
  }
   void EXTI6_IRQHandler(void)
  {
    EXTI_PtrFunction[6]();
    /*	CLR Pending Flag	*/
    EXTI->PR |= (1<<6);
  }
   void EXTI7_IRQHandler(void)
  {

    EXTI_PtrFunction[7]();
    /*	CLR Pending Flag	*/
    EXTI->PR |= (1<<7);
  }
   void EXTI8_IRQHandler(void)
  {
    EXTI_PtrFunction[8]();
    /*	CLR Pending Flag	*/
    EXTI->PR |= (1<<8);
  }
   void EXTI9_IRQHandler(void)
  {
    EXTI_PtrFunction[9]();
    /*	CLR Pending Flag	*/
    EXTI->PR |= (1<<9);
  }
   void EXTI10_IRQHandler(void)
  {
    EXTI_PtrFunction[10]();
    /*	CLR Pending Flag	*/
    EXTI->PR |= (1<<10);
  }
   void EXTI11_IRQHandler(void)
  {
    EXTI_PtrFunction[11]();
    /*	CLR Pending Flag	*/
    EXTI->PR |= (1<<11);
  }
   void EXTI12_IRQHandler(void)
  {
    EXTI_PtrFunction[12]();
    /*	CLR Pending Flag	*/
    EXTI->PR |= (1<<12);
  }
   void EXTI13_IRQHandler(void)
  {
    EXTI_PtrFunction[13]();
    /*	CLR Pending Flag	*/
    EXTI->PR |= (1<<13);
  }
   void EXTI14_IRQHandler(void)
  {
    EXTI_PtrFunction[14]();
    /*	CLR Pending Flag	*/
    EXTI->PR |= (1<<14);
  }
   void EXTI15_IRQHandler(void)
  {
    EXTI_PtrFunction[15]();
    /*	CLR Pending Flag	*/
    EXTI->PR |= (1<<15);
  }
/************************************* End of File ******************************************/

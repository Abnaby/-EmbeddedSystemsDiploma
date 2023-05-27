/**
* @file SCB_program.c
* @author Mohamed Abd El-Naby (mahameda.naby@gmail.com) 
* @brief 
* @version 0.2
* @date 2023-01-02
*
*/
/******************************************************************************
* Includes
*******************************************************************************/
#include "STD_TYPES.h"
#include "BIT_MATH.h"
#include "COMMON.h"

#include "SCB_interface.h"
#include "SCB_config.h"
#include "SCB_private.h"










/******************************************************************************
* Module Preprocessor Constants
*******************************************************************************/




/******************************************************************************
* Module Preprocessor Macros
*******************************************************************************/

typedef void (*PTR_FCN)(void);
PTR_FCN SCB_ADDRESS_TO_CALL;



/******************************************************************************
* Typedefs
*******************************************************************************/

#define NULL (void*)0


/******************************************************************************
* Module Variable Definitions
*******************************************************************************/




/******************************************************************************
* Function Prototypes
*******************************************************************************/




/******************************************************************************
* Function Definitions
*******************************************************************************/

void SCB_voidSetPriorityGrouping(PriorityGrouping_t  copy_selectGroupingSettings)
{

	/*  Make Sure the copy_selectGroupingSettings is in range   */
    if(copy_selectGroupingSettings >= SCB_16_GROUP_0_SUB_GROUP && copy_selectGroupingSettings <= SCB_0_GROUP_16_SUB_GROUP)
    {
        SCB_AIRCR = copy_selectGroupingSettings ;
    }
    else
    {
        // <TODO> Ruturn Error Out of Range
    }
}

void SCB_voidOffesetVectorTable(u32 *PTR_STARTUP)
{
    if(PTR_STARTUP != NULL)
    {
        // Setting the offset of the vector table.
        SCB_VTOR = (u32)PTR_STARTUP ;
    }
    else
    {
        // <!TODO ERROR>
    }
}

void SCB_voidJumptoApp(void(* P_APP)(void))
{
    if(P_APP != NULL)
    {
        SCB_ADDRESS_TO_CALL = *(PTR_FCN*)(P_APP);
    }
    else
    {
              // <!TODO ERROR>  
    }
}

void SCB_voidTrigPendSV(void)
{
	SCB_ICSR  |= (1 << 28) ;
	//*(volatile u32 *)0xE000ED04 = (0x1 << 28);
}


/************************************* End of File ******************************************/

/**
* @file SCB_program.c
* @author Mohamed Abd El-Naby (mahameda.naby@gmail.com) 
* @brief 
* @version 0.1
* @date 2022-10-28
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


/************************************* End of File ******************************************/

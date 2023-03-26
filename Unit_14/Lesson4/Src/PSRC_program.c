/**
* @file PSRC_program.c
* @author Mohamed Abd El-Naby (mahameda.naby@gmail.com) 
* @brief Processor Special Register Control 
* @version 0.1
* @date 2023-03-09
*
*/
/******************************************************************************
* Includes
*******************************************************************************/
#include "STD_TYPES.h"
#include "BIT_MATH.h"
#include "PSRC_interface.h"
#include "PSRC_config.h"
#include "PSRC_private.h"










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
PSRC_Return_t PSRC_voidSetAccessLevel(PSRC_AccessLevel_t copy_AccessLevel , u8    copy_u8HandleExceptions)
{
    u8 LOC_u8ControlReg = 0 ; 
    PSRC_Return_t LOC_u8ReturnType = PSRC_UNSUCCESSFUL_OPER ;

    // Read Current Mode in C variable 
    __asm(
            "MRS %[In],CONTROL \n\t"
            :[In]"=r"(LOC_u8ControlReg)
        );  

    switch (copy_AccessLevel)
    {
    case PSRC_PRIVILEGED_ACCESS:
        {
            // Check Current Access Level 
            if(LOC_u8ControlReg & 0b01)
            {
                // Unprivilleged access 
                // Return Error
                LOC_u8ReturnType = PSRC_UNSUCCESSFUL_OPER;
                
            }
            else
            {
                
                LOC_u8ReturnType = PSRC_SUCCESSFUL_OPER ;
            }
            if(copy_u8HandleExceptions == 0)
            {
                // Perform What user want.
                __asm(
                    "MRS R0,CONTROL \n\t"
                    "LSR R0,R0,#1   \n\t"
                    "LSL R0,R0,#1   \n\t"
                    "MSR CONTROL,R0 "
                ); 
                
            }
            else
            {
                // Enable Handling Mode
            }
        }
        break;
    case PSRC_UNPRIVILEGED_ACCESS:
        __asm(
            "MRS R0,CONTROL \n\t"
            "ORR R0,R0,#0x1 \n\t"
            "MSR CONTROL,R0"
        );
        LOC_u8ReturnType = PSRC_SUCCESSFUL_OPER ;
        break ;
    default:
        LOC_u8ReturnType = PSRC_UNSUCCESSFUL_OPER ;
        break;
    }
    return LOC_u8ReturnType ; 
}

PSRC_Return_t PSRC_voidSetUsageStackPointer(PSRC_StackPointer_t copy_StackPointer , u8    copy_u8HandleExceptions)
{
    PSRC_Return_t LOC_u8ReturnType = PSRC_UNSUCCESSFUL_OPER ;
    switch(copy_StackPointer)
    {
		case PSRC_MSP :
		{
			/*
			 * Clear SP Bit
			 * 2                0
			 * LSB              MSB
			 * FPU     SP	    nPRIV
			 * 1		0		1            (And with 0b101)
			 */
            __asm(
                    "MRS R0,CONTROL \n\t"
                    "AND R0,R0,#0b101   \n\t"
                    "MSR CONTROL,R0 "
                );
		}
    	break;
		case PSRC_PSP:
		{
			/*
			 * Set SP Bit
			 * 2                0
			 * LSB              MSB
			 * FPU     SP	    nPRIV
			 * 0		1		0			(Or With 0b010)
			 */
            __asm(
                    "MRS R0,CONTROL \n\t"
                    "ORR R0,R0,#0b010   \n\t"
                    "MSR CONTROL,R0 "
                );
		}
    	break;
    }
    return LOC_u8ReturnType ;
}
/************************************* End of File ******************************************/

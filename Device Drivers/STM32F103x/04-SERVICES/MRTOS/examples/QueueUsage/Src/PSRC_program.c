/**
* @file PSRC_program.c
* @author Mohamed Abd El-Naby (mahameda.naby@gmail.com) 
* @brief Processor Special Register Control Driver
* @version 2.0
* @date 2023-04-11
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

__attribute__((naked)) void PSRC_voidSetAccessLevel(PSRC_AccessLevel_t copy_AccessLevel)
{
	/*
		// C Code
		if(copy_AccessLevel == PSRC_PRIVILEGED_ACCESS)
		{
			__asm
			(
			"MRS 	R3,CONTROL \n\t"
			"BFC	R3,#0,#1  \n\t"
	        "MSR  CONTROL,R3 \n\t"
			);
		}
		else if (copy_AccessLevel == PSRC_PRIVILEGED_ACCESS)
		{
			__asm
			(
			"MRS R3,CONTROL \n\t"
			"ORR R3,R3,#0x1 \n\t"
			"MSR CONTROL,R3	\n\t"		);

		}
		else
		{

		}
	*/
		 // Corresponding Assembly
		/*  Mixing C code is not supported inside naked functions: */
		/*  int res = 0;
			return res;
		*/
		__asm volatile (
				"PUSH {LR}	\n\t"
				"MOV	R1,%0	\n\t"
				"MOV	R2,%1	\n\t"
				"CMP	R1, R0	\n\t"
				"ITTT	EQ	\n\t"
				"MRSeq 	R3,CONTROL \n\t"
				"BFCeq	R3,#0,#1  \n\t"
	            "MSReq  CONTROL,R3 \n\t"
				"ITTT	NE	\n\t"
				"MRSne R3,CONTROL \n\t"
				"ORRne R3,R3,#0x1 \n\t"
				"MSRne CONTROL,R3	\n\t"
				"POP	{PC}"
				:
				:"r"(PSRC_PRIVILEGED_ACCESS),
				 "r"(PSRC_UNPRIVILEGED_ACCESS)
				);
}

/************************************* End of File ******************************************/

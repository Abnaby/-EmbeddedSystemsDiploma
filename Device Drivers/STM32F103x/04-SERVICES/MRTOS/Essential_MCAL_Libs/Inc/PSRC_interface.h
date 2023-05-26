/**
* @file PSRC_interface.h
* @author Mohamed Abd El-Naby (mahameda.naby@gmail.com) 
* @brief Processor Special Register Control Driver
* @version 2.0
* @date 2023-04-11
*
*/
#ifndef PSRC_INTERFACE_H 
#define PSRC_INTERFACE_H 


/******************************************************************************
* Includes
*******************************************************************************/




/******************************************************************************
* Preprocessor Constants
 *******************************************************************************/

# define FORCE_INLINE __attribute__((always_inline)) inline




/******************************************************************************
* Configuration Constants
*******************************************************************************/




/******************************************************************************
* Macros Functions
*******************************************************************************/
/**
 * @brief This function is used to Set the working stack .
 * @details This Macro is based on @ref PSRC_voidSetWorkingStack_MSP and @ref PSRC_voidSetWorkingStack_PSP inline functions
 * 			Just Text replacement by the original API. it is provided due to support portability between versions.
 * @note  This Function is naked function just push LR only and Pop it in PC at the end of fcn .
 * @note  Need Privileged Access Level.
 * @note to change it Need Thread Mode with privileged access.
 * @param Select one of  @ref PSRC_AccessLevel_t.
 * @return void
 */
#define PSRC_voidSetUsageStackPointer(copy_StackPointer)	PSRC_voidSetWorkingStack##copy_StackPointer()

/******************************************************************************
* Typedefs
*******************************************************************************/

/**
 * @brief This enum holds the possible access levels 
 * 
 */
typedef enum
{
    PSRC_PRIVILEGED_ACCESS, 
    PSRC_UNPRIVILEGED_ACCESS
}PSRC_AccessLevel_t ; 

/**
 * @brief This enum holds the shadowed stack pointers
 *
 */
typedef enum
{
	_MSP ,
	_PSP
}PSRC_StackPointer_t;





/******************************************************************************
* Variables
*******************************************************************************/




/******************************************************************************
* Function Prototypes
*******************************************************************************/

/**
 * @brief This function is used to switch from privileged access level to unprivileged access level or vice versa.
 * @details in case of current mode is privileged access so we can change the access level at any time to an unprivileged access level 
 *          in case of current mode is unprivileged access so we can change the access level only in handler mode(in IRQ).
 *          but if tried to switch access level it will make a hard-fault exception.
 * @note  This Function is naked function just push LR only and Pop it in PC at the end of fcn .
 * @note  Need Privileged Access Level.
 * @note  Can Change it in any ISR.
 * @note to change it Need Thread Mode with privileged access.
 * @param copy_AccessLevel select the access level form @ref PSRC_AccessLevel_t.
 * @return void
 */
__attribute__((naked)) void PSRC_voidSetAccessLevel(PSRC_AccessLevel_t copy_AccessLevel);


/**
 * @brief This function is used to switch to use process stack
 * @note  This Function is inline function so will take place in the caller line .
 * @note  Need Privileged Access Level.
 * @param void
 * @return void
 */
FORCE_INLINE void PSRC_voidSetWorkingStack_PSP(void)
{
	/********************************** DON'T EDIT ANYTHING HERE	***********************************/
	/*
	 * Set SP Bit in CONTROL
	 * 2                0
	 * LSB              MSB
	 * FPU     SP	    nPRIV
	 * 0		1		0			(Or With 0b010)
	 */
    __asm volatile (
            "MRS R0,CONTROL \n\t"
            "ORR R0,R0,#0b010   \n\t"
            "MSR CONTROL,R0 "
        );
}
/**
 * @brief This function is used to switch to use main stack
 * @note  This Function is inline function so will take place in the caller line .
 * @note  Need Privileged Access Level.
 * @note to change it Need Thread Mode with privileged access.
 * @param void
 * @return void
 */
FORCE_INLINE void PSRC_voidSetWorkingStack_MSP(void)
{
	/********************************** DON'T EDIT ANYTHING HERE	***********************************/
	/*
	 * Clear SP Bit in CONTROL
	 * 2                0
	 * LSB              MSB
	 * FPU     SP	    nPRIV
	 * 1		0		1            (And with 0b101)
	 */
    __asm volatile (
            "MRS R0,CONTROL \n\t"
            "AND R0,R0,#0b101   \n\t"
            "MSR CONTROL,R0 "
        );
}

/**
 * @brief This function is used to set the top of process stack pointer
 * @note  This Function is inline function so will take place in the caller line .
 * @note  Need Privileged Access Level.
 * @param copy_u32topOfPSP: the address of the top of process stack
 * @return void
 */
FORCE_INLINE void PSRC_voidSetPSP(u32 copy_u32topOfPSP)
{
	/********************************** DON'T EDIT ANYTHING HERE	***********************************/
	// copy_u32topOfPSP --> is already in R0 as a param
	__asm volatile
					(
							"MSR PSP , %0 "
							:
							: "r"(copy_u32topOfPSP)
					);
}

/**
 * @brief This function is used to get the current top of process stack pointer
 * @note  This Function is inline function so will take place in the caller line .
 * @note  Need Privileged Access Level.
 * @param void
 * @return U32 --> Current Stack Pointer address
 */
FORCE_INLINE u32 PSRC_voidGetPSP(void)
{
	/********************************** DON'T EDIT ANYTHING HERE	***********************************/
	u32 Loc_u32TopOfStack =  0 ;
	__asm volatile
					(
							"MRS %0 , PSP " : "=r"(Loc_u32TopOfStack)
					);
	return (Loc_u32TopOfStack);
}

/**
 * @brief This function is used to set the top of Main stack pointer
 * @note  This Function is inline function so will take place in the caller line .
 * @note  Need Privileged Access Level.
 * @param copy_u32topOfPSP: the address of the top op process stack
 * @return void
 */
FORCE_INLINE void PSRC_voidSetMSP(u32 copy_u32topOfPSP)
{
	/********************************** DON'T EDIT ANYTHING HERE	***********************************/
	// copy_u32topOfPSP --> is already in R0 as a param
	__asm volatile
					(
							"MSR MSP , %0 "
							:
							: "r"(copy_u32topOfPSP)
					);
}

/**
 * @brief This function is used to get the current top of main stack pointer
 * @note  This Function is inline function so will take place in the caller line .
 * @note  Need Privileged Access Level.
 * @param void
 * @return U32 --> Current Stack Pointer address
 */
FORCE_INLINE u32 PSRC_voidGetMSP(void)
{
	/********************************** DON'T EDIT ANYTHING HERE	***********************************/
	u32 Loc_u32TopOfStack =  0 ;
	__asm volatile
					(
							"MRS %0 , MSP " : "=r"(Loc_u32TopOfStack)
					);
	return (Loc_u32TopOfStack);
}

#endif
/************************************* End of File ******************************************/

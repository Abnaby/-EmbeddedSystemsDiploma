/**
* @file FPEC_program.c
* @author Mohamed Abd El-Naby (mahameda.naby@gmail.com) 
* @brief 
* @version 0.1
* @date 2022-12-26
*
*/
/******************************************************************************
* Includes
*******************************************************************************/
#include "STD_TYPES.h"
#include "BIT_MATH.h"
#include "FPEC_interface.h"
#include "FPEC_config.h"
#include "FPEC_private.h"










/******************************************************************************
* Module Preprocessor Constants
*******************************************************************************/

#define FLASH_KEY1               ((u32)0x45670123)
#define FLASH_KEY2               ((u32)0xCDEF89AB)
#define FPEC_WAIT_BUSY_FLAG()      while (GET_BIT(FPEC->SR,0) == 1)
#define FPEC_PAGE_SIZE             PAGE_SIZE_IN_K * (u16)1024 
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
* Private Function Definitions
*******************************************************************************/
static void FPEC_voidFlashUnlock(void)
{
    FPEC -> KEYR = FLASH_KEY1;
    FPEC -> KEYR = FLASH_KEY2;
}


/******************************************************************************
* Function Definitions
*******************************************************************************/
void FPEC_voidInit(void)
{



}
void FPEC_voidFlashWrite(u32 Copy_u32Address, u16* Ptr_u16Data, u8 Copy_u8Length)
{
    u16 LOC_u16Counter = 0 ; 
    /*  Wait Busy Flag  */
    FPEC_WAIT_BUSY_FLAG();
    /*  Check Locking */
    if(GET_BIT(FPEC->CR,7) == 1)
    {
        // Unlock
        FPEC_voidFlashUnlock(); 
    }
    /*  Start Writing   */ 
    for(LOC_u16Counter = 0 ; LOC_u16Counter < Copy_u8Length ; LOC_u16Counter++)\
    {
        /* Write Flash Operation */
        SET_BIT(FPEC->CR,0);
        /* Half word operation (Just Ignore High Part Bec it Constnt 0x0800 xxxx) */
        *((volatile u16*)Copy_u32Address) = Ptr_u16Data[LOC_u16Counter] ; 
        /*  Increase Address by two byte    */
        Copy_u32Address = Copy_u32Address + 2 ; 
        /*  Wait Busy Flag  */
        FPEC_WAIT_BUSY_FLAG();
        /* END of Programming   */
        SET_BIT(FPEC->SR,5);
		CLR_BIT(FPEC->CR,0);
    }
}
void FPEC_voidFlashWriteHalfWord(u32 Copy_u32Address, u16 Copy_u16Data) 
{
    /*  Wait Busy Flag  */
    FPEC_WAIT_BUSY_FLAG();
    /*  Check Locking */
    if(GET_BIT(FPEC->CR,7) == 1)
    {
        // Unlock
        FPEC_voidFlashUnlock(); 
    }
    /*  Start Writing   */ 
    /* Write Flash Operation */
    SET_BIT(FPEC->CR,0);
    /* Half word operation (Just Ignore High Part Bec it Constnt 0x0800 xxxx) */
    *((volatile u16*)Copy_u32Address) = Copy_u16Data ;
    /*  Increase Address by two byte    */
    Copy_u32Address = Copy_u32Address + 2 ; 
    /*  Wait Busy Flag  */
    FPEC_WAIT_BUSY_FLAG();
    /* END of Programming   */
    SET_BIT(FPEC->SR,5);
    CLR_BIT(FPEC->CR,0);
}
void FPEC_voidFlashPageErase(u8 Copy_u8PageNumber)
{
    /*  Wait Busy Flag  */
    FPEC_WAIT_BUSY_FLAG();
    /*  Check Locking */
    if(GET_BIT(FPEC->CR,7) == 1)
    {
        // Unlock
        FPEC_voidFlashUnlock(); 
    }
    /* Page Erase Operation */
	SET_BIT(FPEC->CR,1);
    // Program the FLASH_AR register to select a page to erase.
   FPEC->AR = FLASH_START_ADDRESS + (u32)(Copy_u8PageNumber * FPEC_PAGE_SIZE);
   	/* Start operation */
	SET_BIT(FPEC->CR,6);
    /*  Wait Busy Flag  */
    FPEC_WAIT_BUSY_FLAG();
	/* EOP */
	SET_BIT(FPEC->SR,5);
	CLR_BIT(FPEC->CR,1);
    
}


void FPEC_voidEraseAppArea(u8 Copy_u8StartFromPageNumber)
{
    u16 LOC_u16Counter = 0 ;
    for(LOC_u16Counter = Copy_u8StartFromPageNumber ; LOC_u16Counter < FLASH_SIZE_IN_K ; LOC_u16Counter++) 
    {
        FPEC_voidFlashPageErase(LOC_u16Counter) ; 
    }
}
/************************************* End of File ******************************************/

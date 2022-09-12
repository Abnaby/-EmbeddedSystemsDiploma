/**
* @file ATMEGA_EEPROM_Program.c
* @author Mohamed Abd El-Naby (mahameda.naby@gmail.com) 
* @brief 
* @version 0.1
* @date 2022-09-11
*
*/
/******************************************************************************
* Includes
*******************************************************************************/
#include "STD_TYPES.h"
#include "BIT_MATH.h"
#include "ATMEGA_EEPROM_Interface.h"
#include "ATMEGA_EEPROM_Config.h"
#include "ATMEGA_EEPROM_Private.h"










/******************************************************************************
* Module Preprocessor Constants
*******************************************************************************/
#define WAIT_EEWE_FALG()   while ((EEPRM_EECR &(1<< EECR_EEWE)))
#define WAIT_SPMCR_FALG()   while ((EEPRM_SPMCR &(1<< SPMCR_SPMEN)))
#define WAIT_TO_READ_OPERATION()    while ((EEPRM_EECR &(1<< EECR_EERE)))
#define ENABLE_MASTER_WRITE()       (EEPRM_EECR |= (1<<EECR_EEMWE))
#define KICK_WRITE_OPERATION()       (EEPRM_EECR |= (1<<EECR_EEWE))
#define KICK_READ_OPERATION()       (EEPRM_EECR |= (1<<EECR_EERE))





/******************************************************************************
* Module Preprocessor Macros
*******************************************************************************/


#define EEPROM_LWEST_ADD    0
#define EEPROM_HIGHST_ADD    511


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
EEPROM_errorState intEPPROM_Init(void)
{
    //   The initial value of EEAR is undefined. A proper value must be written before the EEPROM may be accessed.
    return EEPROM_OK ; 
}
EEPROM_errorState intEPPROM_WriteByte(u16 copy_u16Address, u8 copy_u8Data)
{
    if (copy_u16Address >= EEPROM_LWEST_ADD && copy_u16Address <= EEPROM_HIGHST_ADD)
    {
        /*  Wait until EEWE becomes zero : completion of previous write     */
        WAIT_EEWE_FALG(); 
        /* Wait until SPMEN in SPMCR becomes zero */
        WAIT_SPMCR_FALG();
        /* Set up address registers */
        EEPRM_EEARL = (copy_u16Address & 0x0FF) ; 
        EEPRM_EEARH = ((copy_u16Address & 0x100)>>8) ; 
        /* Set up data registers */
        EEPRM_EEDR = copy_u8Data ;
        /*  Enable Master Write to EEPROM   */
        ENABLE_MASTER_WRITE();
        /*  Start Write Operation   */
        KICK_WRITE_OPERATION() ; 
        return EEPROM_OK ; 
    }
    else
    {
        return EEPROM_N_OK ; 
    }
}

EEPROM_errorState intEPPROM_ReadByte(u16 copy_u16Address, u8 *copy_u8Data)
{
    if (copy_u16Address >= EEPROM_LWEST_ADD && copy_u16Address <= EEPROM_HIGHST_ADD)
    {
        /*  Wait until EEWE becomes zero : completion of previous write     */
        WAIT_EEWE_FALG();  //The user should poll the EEWE bit before starting the read operation. If a write operation is in progress, it is neither possible to read the EEPROM, nor to change the EEAR Register
        /*  Setup Address   */
        EEPRM_EEARL = (copy_u16Address & 0x0FF) ; 
        EEPRM_EEARH = ((copy_u16Address & 0x100)>>8) ; 
        /*  Start Read Operation    */    
        KICK_READ_OPERATION();
        /*  Get Data    */
        *copy_u8Data = EEPRM_EEDR ; 
        return EEPROM_OK ; 
    }
    else
    {
        return EEPROM_N_OK ; 
    }
}

EEPROM_errorState intEPPROM_ReadWord(u16 copy_u16Address, u16 *ptr_u16Data)
{
    u8 LOC_u8Error = 0 ; 
    u8 *LOC_u8Data = (u8 *)ptr_u16Data;
    LOC_u8Error = intEPPROM_ReadByte(copy_u16Address ,&LOC_u8Data[0]) ; 
	copy_u16Address = copy_u16Address+1 ; 
    LOC_u8Error = intEPPROM_ReadByte(copy_u16Address ,&LOC_u8Data[1]) ;
    return LOC_u8Error ;
}

EEPROM_errorState intEPPROM_WriteWord(u16 copy_u16Address, u16 copy_u16Data)
{
    u8 LOC_u8Error = 0 ; 
    u8 *LOC_u8Data = (u8 *)&copy_u16Data;
    LOC_u8Error = intEPPROM_WriteByte(copy_u16Address ,LOC_u8Data[0]) ; 
	copy_u16Address = copy_u16Address+1 ; 
	LOC_u8Error = intEPPROM_WriteByte(copy_u16Address ,LOC_u8Data[1]) ;
    return LOC_u8Error ;
}

EEPROM_errorState intEPPROM_ReadDword(u16 copy_u16Address, u32 *ptr_u32Data)
{
     u8 LOC_u8Error = 0 ; 
     u8 *LOC_u8Data = (u8 *)ptr_u32Data;
     u8 LOC_u8Index = 1 ;

    LOC_u8Error = intEPPROM_ReadByte(copy_u16Address ,&LOC_u8Data[0]) ; 
    while(LOC_u8Error == EEPROM_OK && LOC_u8Index <=3)
    {
		 copy_u16Address = copy_u16Address+LOC_u8Index ; 
         LOC_u8Error = intEPPROM_ReadByte(copy_u16Address ,&LOC_u8Data[LOC_u8Index]) ;
         LOC_u8Index++; 
    }       
    return LOC_u8Error ;
}
EEPROM_errorState intEPPROM_WriteDword(u16 copy_u16Address, u32 copy_u32Data)
{
     u8 LOC_u8Error = 0 ; 
     u8 *LOC_u8Data = (u8*)&copy_u32Data;
     u8 LOC_u8Index = 1 ;

    LOC_u8Error = intEPPROM_WriteByte(copy_u16Address ,LOC_u8Data[0]) ; 
    while(LOC_u8Error == EEPROM_OK && LOC_u8Index <=3)
    {
		 copy_u16Address = (copy_u16Address+LOC_u8Index) ;
         LOC_u8Error = intEPPROM_WriteByte(copy_u16Address ,LOC_u8Data[LOC_u8Index]) ;
         LOC_u8Index++ ;
    }       
    return LOC_u8Error ;   
}

EEPROM_errorState intEPPROM_ReadBlock(u16 copy_u16StartAddress, u16 copyNumberOfByte ,u8 *ptr_u8Data)
{
    u8 LOC_u8Error = EEPROM_OK ;  
    u16 LOC_u8Index  ;
    for(LOC_u8Index = 0 ; (LOC_u8Index <=  copyNumberOfByte) && (LOC_u8Error == EEPROM_OK) ; LOC_u8Index++)
    {
        LOC_u8Error = intEPPROM_ReadByte((copy_u16StartAddress+LOC_u8Index),(u8*)&ptr_u8Data[LOC_u8Index]) ; 
    }
    return LOC_u8Error;
}
EEPROM_errorState intEPPROM_WriteBlock(u16 copy_u16StartAddress, u16 copyNumberOfByte ,u8 *ptr_u8Data)
{
    u8 LOC_u8Error = EEPROM_OK ;  
    u16 LOC_u8Index  ;
    for(LOC_u8Index = 0 ; (LOC_u8Index <=  copyNumberOfByte) && (LOC_u8Error == EEPROM_OK) ; LOC_u8Index++)
    {
        LOC_u8Error = intEPPROM_WriteByte((copy_u16StartAddress+LOC_u8Index),ptr_u8Data[LOC_u8Index]) ; 
    }
    return LOC_u8Error;  
}
EEPROM_errorState intEPPROM_UpdateByte(u16 copy_u16Address, u8 copy_u8Data)
{
    u8 LOC_u8Error; 
   LOC_u8Error =  intEPPROM_WriteByte(copy_u16Address,copy_u8Data);
    return LOC_u8Error;
}
/************************************* End of File ******************************************/
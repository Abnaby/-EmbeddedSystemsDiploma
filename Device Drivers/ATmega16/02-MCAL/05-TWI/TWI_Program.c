/**
* @file TWI_Program.c
* @author Mohamed Abd El-Naby (mahameda.naby@gmail.com) 
* @brief 
* @version 0.1
* @date 2022-08-29
*
*/
/******************************************************************************
* Includes
*******************************************************************************/
#include "STD_TYPES.h"
#include "BIT_MATH.h"
#include "MAPPING.h"
#include "TWI_Interface.h"
#include "TWI_Config.h"
#include "TWI_Private.h"










/******************************************************************************
* Module Preprocessor Constants
*******************************************************************************/

#define WAIT_INT_FLAG() while(!(TWI_TWICR&(1<<TWICR_TWINT)))
#define CHK_STATUS() (TWI_TWSR & 0xF8)

/******************************************************************************
* Module Preprocessor Macros
*******************************************************************************/

#define SPD_EQN(SPD)    ( 0.5 * (CPU_CLOCK_FREQ/SPD - 16))

#define NRML_SPED_CALC  SPD_EQN(100000)
#define HIGH_SPED_CALC  SPD_EQN(400000)



/******************************************************************************
* Typedefs
*******************************************************************************/

typedef enum
{
    M_START       = 0x08,
	M_RETART      = 0x10,
}Master_Common ;

typedef enum
{
	MT_SLA_W_ACK    = 0x18,    
	MT_SLA_W_NACK   = 0x20,  
	MT_DATA_W_ACK   = 0x28,   
	MT_DATA_W_NACK  = 0x30,
    MT_ARBIT_LOST   = 0x38
}MasterTx_StatusCodes ; 

typedef enum
{

	MR_SLA_R_ACK   = 0x40,
	MR_SLA_R_NACK   = 0x48,
	MR_DATA_R_ACK   = 0x50,
	MR_DATA_R_NACK  = 0x58
}MasterRx_StatusCodes ; 


typedef enum
{
    SR_SLA_W_ACK                = 0x60 ,
    SR_ARBIT_LOST_SLA_ACK       = 0x68 , 
    SR_GENERAL_CALL             = 0x70 , 
    SR_GC_ARBIT_LOST            = 0x78 , 
    SR_SLA_W_ADDRESSED_ACK      = 0x80 , 
    SR_SLA_W_ADDRESSED_NACK     = 0x88 ,
    SR_GC_ADDRESSED_ACK         = 0x90 ,
    SR_GC_ADDRESSED_NACK        = 0x98 ,
    SR_STOP_REPEATED_START      = 0xA0  
}SlaveRX_statusCodes ; 

typedef enum
{
    ST_SLA_R_ACK                = 0xA8 ,
    ST_SLA_R_LOST_ARBIT         = 0xB0 ,
    ST_DATA_TRANSMITTED_ACK     = 0xB8 ,
    ST_DATA_TRANSMITTED_NACK    = 0xC0 ,
    ST_LAST_DATA                = 0xC8 ,

    


}SlaveTX_statusCodes; 

/******************************************************************************
* Module Variable Definitions
*******************************************************************************/
TWI_Config Global_TWI_Config;   



/******************************************************************************
* Explantions 
*******************************************************************************/

/**
 * TWI flags explained:
 *
 * TWINT: TWI Interrupt Flag. It is set when the TWI finishes ANY bus operation and has to cleared (by writing a 1 to it) before a new operation can be started.
 * TWEA: TWI Enable Acknowledge; When the device receives data (as slave or as master), this bit has to be set if the next incoming byte should be ACKed and cleared for a NACK.
 * TWSTA: TWI Start; When a master has to generate a start condition, write this bit 1 together with TWEN and TWINT. The TWI hardware will generate a start condition and return the appropriate status code.
 * TWSTO: TWI Stop; Similar to TWSTA, but generates a Stop condition on the bus. TWINT is not set after generating a Stop condition.
 * TWWC: TWI Write Collision; Set by the TWI hardware when writing to the TWI Data Register TWDR while TWINT is high.
 * TWEN: Any bus operation only takes place when TWEN is written to 1 when accessing TWI_TWICR.
 * TWIE: TWI Interrupt Enable; If this bit is set, the CPU will jump to the TWI reset vector when a TWI interrupt occurs.
 * ---------------------------------------------------------------------------------------------- */



/******************************************************************************
* Function Definitions
*******************************************************************************/
TWI_Errors MCAL_TWI_Init(TWI_Config* ptr_TWI_Config)
{
    Global_TWI_Config = * ptr_TWI_Config ; 
    /*  Check Mode  */
    if (ptr_TWI_Config->TWI_MODE_SELECT == MASTER)
    {
        /*  Init Bit Rate       */
	   (((ptr_TWI_Config->TWI_SPD) == NORMAL_MODE) ? (TWI_TWBR = NRML_SPED_CALC) : (TWI_TWBR = HIGH_SPED_CALC ));  
        /*  Enable TWI       */
        TWI_TWICR = (1<<TWICR_TWEN);
    }
    else if(ptr_TWI_Config->TWI_MODE_SELECT == SLAVE)
    {
        /*      SELECT SLAVE ADDRESS        */
        TWI_TWAR = (SLAVE_ADDRESS_IF_USED) ; 
        TWI_TWICR = (1<<TWICR_TWEA)|(1<<TWICR_TWEN)|(1<<TWICR_TWINT);     /*  TWEA, TWEN,   are Set 
                                                                           *  TWSTA, TWSTO, are cleared 
                                                                           *  TWIE          don't care    */ 
    }
    else
    {
        return ERROR_SLCT_VALID_MODE ; 
    }
    return NO_ERROR ;  
}


TWI_Errors MCAL_TWI_StartCondition(void)
{
    /*  Check Mode  */
    if (Global_TWI_Config.TWI_MODE_SELECT == MASTER)
    {
        /*  Send    Start   Condition       */
        TWI_TWICR = (1<<TWICR_TWINT)|(1<<TWICR_TWSTA)|(1<<TWICR_TWEN) ;
        /*  Wait For indicates that the START condition has been transmitted    */
        WAIT_INT_FLAG();
    }
    else if(Global_TWI_Config.TWI_MODE_SELECT == SLAVE)
    {

        return ERROR_ISSUED_BY_MSTR_ONLY ; 
    }
    else
    {
        return ERROR_SLCT_VALID_MODE ; 
    }
    return NO_ERROR ;  
}
TWI_Errors MCAL_TWI_SlaveAddressMatch(addressingMode mode)
{
 /*  Check Mode  */
    if (Global_TWI_Config.TWI_MODE_SELECT == MASTER)
    {
        return ERROR_ISSUED_BY_SLVE_ONLY ; 

    }
    else if(Global_TWI_Config.TWI_MODE_SELECT == SLAVE)
    {
		
		
		switch (mode) 
		{
			case SLA_R : 
				// Get acknowlegement, Enable TWI, Clear TWI interrupt flag
												  // Wait for TWINT flag
				while((CHK_STATUS())!= ST_SLA_R_ACK );						// Loop till correct acknoledgement have been received

			break ;
			case SLA_W :
				/* Wait for Own SLA+W has been received; ACK has been returned  */
				while ( CHK_STATUS() != SR_SLA_W_ACK) ; 
			break;
		}
    }
    else
    {
        return ERROR_SLCT_VALID_MODE ; 
    }
    return NO_ERROR ;  
}



TWI_Errors MCAL_TWI_SlaveAddress(u8 copy_u8SlaveAddress)
{
    /*  Check Mode  */
    if (Global_TWI_Config.TWI_MODE_SELECT == MASTER)
    {
        /*  Check value of TWI Status Register  */
        u8 LOC_u8TWSR_State  = TWI_TWSR & 0xF8 ; 
        if(LOC_u8TWSR_State != M_START)
            return ERROR_START_CONDITION_FAIL ;
        /* Write SLA+W/R in TWI data register */
        TWI_TWDR = copy_u8SlaveAddress ;
        /* Enable TWI & clear interrupt flag */ 
        TWI_TWICR=(1<<TWICR_TWEN)|(1<<TWICR_TWINT);	
        /* Wait for TWINT Flag set. This indicates that the SLA+W has been transmitted, and ACK/NACK has been received. */
        WAIT_INT_FLAG();
        /*  Check value of TWI Status Register  */
        LOC_u8TWSR_State  = TWI_TWSR & 0xF8 ; 
        if(LOC_u8TWSR_State == MT_SLA_W_ACK || LOC_u8TWSR_State == MR_SLA_R_ACK)
            return ACK_RECEIVED ; 
        else if (LOC_u8TWSR_State == MT_SLA_W_NACK || LOC_u8TWSR_State == MR_SLA_R_NACK)
            return NACK_RECEIVED ;
        else
            return SLA_W_FAILD ; 
    }
    else if(Global_TWI_Config.TWI_MODE_SELECT == SLAVE)
    {
        return ERROR_ISSUED_BY_MSTR_ONLY ; 
    }
    else
    {
        return ERROR_SLCT_VALID_MODE ; 
    }
    return NO_ERROR ;  
}

TWI_Errors MCAL_TWI_RepeatedStart(u8 copy_u8SlaveAddress)
{
    /*  Check Mode  */
    if (Global_TWI_Config.TWI_MODE_SELECT == MASTER)
    {
        u8 LOC_u8TWSR_State ; 
        /*  Send    Start   Condition       */
        TWI_TWICR = (1<<TWICR_TWINT)|(1<<TWICR_TWSTA)|(1<<TWICR_TWEN) ;
        /*  Wait For indicates that the START condition has been transmitted    */
        WAIT_INT_FLAG();
        /*  Check value of TWI Status Register  */
        LOC_u8TWSR_State  = TWI_TWSR & 0xF8 ; 
        if(LOC_u8TWSR_State != M_RETART)
            return ERROR_RESTART_CONDITION_FAIL ;        
        /* Write TWI data register */
        TWI_TWDR = copy_u8SlaveAddress ;
        /* Enable TWI & clear interrupt flag */ 
        TWI_TWICR=(1<<TWICR_TWEN)|(1<<TWICR_TWINT);	
        /* Wait for TWINT Flag set. This indicates that the SLA+W has been transmitted, and ACK/NACK has been received. */
        WAIT_INT_FLAG();
        /*  Check value of TWI Status Register  */
        LOC_u8TWSR_State  = TWI_TWSR & 0xF8 ; 
        if(LOC_u8TWSR_State == MT_SLA_W_ACK || LOC_u8TWSR_State == MR_SLA_R_ACK)
            return ACK_RECEIVED ; 
        else if (LOC_u8TWSR_State == MT_SLA_W_NACK || LOC_u8TWSR_State == MR_SLA_R_NACK)
            return NACK_RECEIVED ;
        else
            return ERROR_UNDEFINED ;
 
    }
    else if(Global_TWI_Config.TWI_MODE_SELECT == SLAVE)
    {
        return ERROR_ISSUED_BY_MSTR_ONLY ; 
    }
    else
    {
        return ERROR_SLCT_VALID_MODE ; 
    }
    return NO_ERROR ;  
}
TWI_Errors MCAL_TWI_Write(u8 copy_u8Data)
{
    /*  Check Mode  */
    if (Global_TWI_Config.TWI_MODE_SELECT == MASTER)
    {
        u8 LOC_u8TWSR_State ;
        /*          Load DATA into TWDR Register            */
        TWI_TWDR =  copy_u8Data ; 
        /*          Clear TWINT bit in TWI_TWICR to start transmission of data           */
        TWI_TWICR=(1<<TWICR_TWEN)|(1<<TWICR_TWINT);	
        /*          Wait for data transmition           */
        WAIT_INT_FLAG(); 
		LOC_u8TWSR_State = TWI_TWSR & 0xF8 ; 
        /*          Chk Flags           */
        if (LOC_u8TWSR_State == MT_DATA_W_ACK || LOC_u8TWSR_State == MT_SLA_W_ACK || LOC_u8TWSR_State == MR_SLA_R_ACK)
        {
            return ACK_RECEIVED;
        }
        else if (LOC_u8TWSR_State == MT_DATA_W_NACK || LOC_u8TWSR_State == MT_SLA_W_NACK || LOC_u8TWSR_State == MR_SLA_R_NACK)
        {
            return NACK_RECEIVED ;
        }
        else
        {
            return ERROR_DTA_TX_FAIL ;
        }
    }
    else if(Global_TWI_Config.TWI_MODE_SELECT == SLAVE)
    {
		/*	Clear TWINT FLag	*/
		TWI_TWDR = copy_u8Data ; 
		/*	Wait untill TX	*/
		WAIT_INT_FLAG();
		/*	Clear Flags		*/	
		TWI_TWICR=(1<<TWICR_TWEN)|(1<<TWICR_TWINT) | (1<<TWICR_TWEA);
		/*	Return Status	*/
		if (CHK_STATUS() == ST_DATA_TRANSMITTED_ACK)
		{
			return ACK_RECEIVED ; 
			
		}
		else if ( CHK_STATUS() == ST_DATA_TRANSMITTED_NACK )
		{
			return NACK_RECEIVED ; 

		}
		else 
        {
            return ERROR_DTA_TX_FAIL ;
		}

    }
    else
    {
        return ERROR_SLCT_VALID_MODE ; 
    }
    return NO_ERROR ;    
}
TWI_Errors MCAL_TWI_Read(u8* ptr_u8Data ,ReadWith ack_state) 
{
    /*  Check Mode  */
    if (Global_TWI_Config.TWI_MODE_SELECT == MASTER)
    {
        if(ack_state == READ_WITH_ACK)
        {
            /*       Clear Flags and Set Ack Bit     */
            TWI_TWICR = (1<<TWICR_TWINT)|(1<<TWICR_TWEN)|(1<< TWICR_TWEA) ;
        }
        else if(ack_state == READ_WITH_NACK) 
        {
  
            /*       Clear Flags     */
            TWI_TWICR = (1<<TWICR_TWINT)|(1<<TWICR_TWEN) ;
        }
        else
        {
            return ERROR_UNDEFINED ; 
        }
		
        /*      Wait For Data Be Vaild  */
        WAIT_INT_FLAG();
        *ptr_u8Data = TWI_TWDR ;        
    }
    else if(Global_TWI_Config.TWI_MODE_SELECT == SLAVE)
    {

		// Clear TWI interrupt flag,Get acknowlegement, Enable TWI
		TWI_TWICR= (1<<TWICR_TWINT)|(1<<TWICR_TWEA)|(1<<TWICR_TWEN);			/* After its own Slave address and the write bit 
																				have been received, the TWINT Flag is set 
																				and a valid status code can be read from TWSR */

		WAIT_INT_FLAG();														// Wait for TWINT flag

		while (CHK_STATUS() != SR_SLA_W_ADDRESSED_ACK) ;						// Wait for acknowledgement
		*ptr_u8Data = TWI_TWDR ; 												// Get value from TWDR

    }
    else
    {
        return ERROR_SLCT_VALID_MODE ; 
    }
    return NO_ERROR ;    
}


TWI_Errors MCAL_TWI_StopCondition(void)
{
    if (Global_TWI_Config.TWI_MODE_SELECT == MASTER)
    {
        /*  Send    STOP   Condition       */
        TWI_TWICR = (1<<TWICR_TWINT)|(1<<TWICR_TWSTO)|(1<<TWICR_TWEN) ;
        /*  Wait For indicates that the STOP condition has been transmitted    */
         while(TWI_TWICR&(1<<TWICR_TWSTO));	
    }
    else if(Global_TWI_Config.TWI_MODE_SELECT == SLAVE)
    {
        return ERROR_ISSUED_BY_MSTR_ONLY ; 
    }
    else
    {
        return ERROR_SLCT_VALID_MODE ; 
    }
    return NO_ERROR ;   
}


TWI_Errors MCAL_TWI_SendDataAuto(u8 copy_u8SlaveAddress , u8 copy_u8Data) 
{
    /*  Check Mode  */
    if (Global_TWI_Config.TWI_MODE_SELECT == MASTER)
    {
        u8 LOC_u8TWSR_State ;
        /*      Send start condition        */
       LOC_u8TWSR_State =  MCAL_TWI_StartCondition(); 
       if (LOC_u8TWSR_State != NO_ERROR) 
                return ERROR_START_CONDITION_FAIL ; 
        /*      Send Slave Address With Write Operation 0bxxxxxxx0       */
        copy_u8SlaveAddress = copy_u8SlaveAddress < 1 ; 
        LOC_u8TWSR_State = MCAL_TWI_SlaveAddress(copy_u8SlaveAddress) ; 
        if (LOC_u8TWSR_State != ACK_RECEIVED)
                return LOC_u8TWSR_State ; 
        /*      Send Data        */    
       LOC_u8TWSR_State =  MCAL_TWI_Write(copy_u8Data); 
       if (LOC_u8TWSR_State != ACK_RECEIVED )
                return LOC_u8TWSR_State ; 
        /*     Send Stop Condition  */
        MCAL_TWI_StopCondition(); 
    }
    else if(Global_TWI_Config.TWI_MODE_SELECT == SLAVE)
    {
        return ERROR_ISSUED_BY_MSTR_ONLY ; 
    }
    else
    {
        return ERROR_SLCT_VALID_MODE ; 
    }
    return NO_ERROR ;    
}

TWI_Errors MCAL_TWI_ReceiveDataAuto(u8 copy_u8SlaveAddress , u8 *ptr_u8Data)
{
    /*  Check Mode  */
    if (Global_TWI_Config.TWI_MODE_SELECT == MASTER)
    {
        u8 LOC_u8TWSR_State ;
        /*      Send start condition        */
       LOC_u8TWSR_State =  MCAL_TWI_StartCondition(); 
       if (LOC_u8TWSR_State != NO_ERROR) 
                return ERROR_START_CONDITION_FAIL ; 
        /*      Send Slave Address With Read Operation 0bxxxxxxx1      */
        copy_u8SlaveAddress = (copy_u8SlaveAddress < 1) | 1  ; 
        LOC_u8TWSR_State = MCAL_TWI_SlaveAddress(copy_u8SlaveAddress) ; 
        if (LOC_u8TWSR_State != ACK_RECEIVED)
                return LOC_u8TWSR_State ; 
        /*      Get Data        */    
       LOC_u8TWSR_State =  MCAL_TWI_Read(ptr_u8Data,READ_WITH_NACK); 
       if (LOC_u8TWSR_State != ACK_RECEIVED )
                return LOC_u8TWSR_State ; 
        /*     Send Stop Condition  */
        MCAL_TWI_StopCondition(); 
    }
    else if(Global_TWI_Config.TWI_MODE_SELECT == SLAVE)
    {
        return ERROR_ISSUED_BY_MSTR_ONLY ; 
    }
    else
    {
        return ERROR_SLCT_VALID_MODE ; 
    }
    return NO_ERROR ;    
}


TWI_Errors MCAL_TWI_ReceiveUntillStop(void (*ptr_callbck)(u8 copy_callbackData))
{
	

    if (Global_TWI_Config.TWI_MODE_SELECT == MASTER)
    {
		return ERROR_ISSUED_BY_SLVE_ONLY ; 
    }
    else if(Global_TWI_Config.TWI_MODE_SELECT == SLAVE)
    {
		u8 LOC_u8Data = 0 ; 
        while(CHK_STATUS() != SR_STOP_REPEATED_START)
		{
			
			MCAL_TWI_Read(&LOC_u8Data, 1);
			ptr_callbck(LOC_u8Data);
			 			
		}
    }
    else
    {
        return ERROR_SLCT_VALID_MODE ; 
    }
    return NO_ERROR ;    	
}

/************************************* End of File ******************************************/
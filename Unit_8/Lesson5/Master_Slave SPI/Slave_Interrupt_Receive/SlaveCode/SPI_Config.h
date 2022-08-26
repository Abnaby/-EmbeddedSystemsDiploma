/**
* @file SPI_Config.h
* @author Mohamed Abd El-Naby (mahameda.naby@gmail.com) 
* @brief 
* @version 0.1
* @date 2022-08-23
*
*/
#ifndef SPI_CONFIG_H 
#define SPI_CONFIG_H 





/******************************************************************************
* Includes
*******************************************************************************/




/******************************************************************************
* Preprocessor Constants
 *******************************************************************************/




/******************************************************************************
* Typedefs
*******************************************************************************/
/*                  Referances                  */

/**
 * @brief This Enum SPI_InterruptControl is Used to determine the state of the interrupt 
 * 
 */
typedef enum
{
    SPI_INTERRUPT_DISABLE =  0                ,      
    SPI_INTERRUPT_ENABLE  =  0b10000000
}SPI_InterruptControl;  

/**
 * @brief This Enum SPI_DataOrder is Used to determine the sequance of data transmittion  
 * 
 */
typedef enum
{
    SPI_MSB_FIRST        =    0              ,
    SPI_LSB_FIRST        =    0b00100000  

}SPI_DataOrder ; 

/**
 * @brief This Enum SPI_Mode is Used to determine SPI mode of operation
 * 
 */
typedef enum
{
    SPI_SLAVE           =   0                  ,
    SPI_MASTER          =   0b00010000        
    
}SPI_Mode;

/**
 * @brief This Enum SPI_ClockRate is Used to determine Clk of SPI Module 
 * 
 */
typedef enum
{
    SPI_Fosc_OVER_2         = 0b100     ,
    SPI_Fosc_OVER_4         = 0        ,
    SPI_Fosc_OVER_8         = 0b101     ,
    SPI_Fosc_OVER_16        = 0b001     ,
    SPI_Fosc_OVER_32        = 0b110    ,
    SPI_Fosc_OVER_64        = 0b010     ,
    SPI_Fosc_OVER_128       = 0b011     
}SPI_ClockRate ; 

/**
 * @brief This Enum SPI_IdleLevel is Used to determine Level of IDLE of clock state  
 * 
 */
typedef enum
{
    SPI_IDLE_LOW            =   0            ,
    SPI_IDLE_HIGH           =   0b00001000
                    
}SPI_IdleLevel;

/**
 * @brief This Enum SPI_DataSampling is Used to determine When sample data 
 * 
 */
typedef enum
{
    SPI_LEADING_EDGE        =   0            ,
    SPI_TRAILING_EDGE       =   0b00000100

}SPI_DataSampling; 



/************************************ Configuration Struct  *********************************/
/**
 * @brief This Struct SPI_Config is Used to initialization of SPI Module
 * 
 */
typedef struct 
{
    SPI_InterruptControl    SPI_InterruptState      ;
    SPI_DataOrder           SPI_SetDataOrder        ;
    SPI_Mode                SPI_ModeSelect          ;
    SPI_IdleLevel           SPI_IdleStateLevel      ;
    SPI_DataSampling        SPI_DataSamplingEdge    ;
    SPI_ClockRate           SPI_SetClockRate		;
    
}SPI_Config;

/******************************************************************************
* Configuration Constants
*******************************************************************************/




#endif
/************************************* End of File ******************************************/
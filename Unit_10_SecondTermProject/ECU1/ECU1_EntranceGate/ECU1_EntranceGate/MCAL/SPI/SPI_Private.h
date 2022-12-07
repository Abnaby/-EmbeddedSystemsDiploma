/**
* @file SPI_Private.h
* @author Mohamed Abd El-Naby (mahameda.naby@gmail.com) 
* @brief 
* @version 0.1
* @date 2022-08-23
*
*/
#ifndef SPI_PRIVATE_H 
#define SPI_PRIVATE_H 





/******************************************************************************
* Includes
*******************************************************************************/




/******************************************************************************
* Preprocessor Constants
 *******************************************************************************/




/******************************************************************************
* Configuration Constants
*******************************************************************************/




/******************************************************************************
* Macros
*******************************************************************************/
#define SPI_SPCR                    (*((volatile u8 *)0x2D ))       //  SPCR – SPI Control Register
#define SPI_SPSR                    (*((volatile u8 *)0x2E ))       //  SPSR – SPI Status Registe
#define SPI_SPDR                    (*((volatile u8 *)0x2F ))       //  SPDR – SPI Data Register    MSB -------------- LSB


#define SPCR_SPIE       7           //  Bit 7 – SPIE: SPI Interrupt Enable            
#define SPCR_SPE        6           //  Bit 6 – SPE: SPI Enable
#define SPCR_DORD       5           //  Bit 5 – DORD: Data Order
#define SPCR_MSTR       4           //  Bit 4 – MSTR: Master/Slave Select
#define SPCR_CPOL       3           //  Bit 3 – CPOL: Clock Polarity
#define SPCR_CPHA       2           //  Bit 2 – CPHA: Clock Phase
#define SPCR_SPR1       1           //  Bits 1, 0 – SPR1, SPR0: SPI Clock Rate Select 1 and 0
#define SPCR_SPR0       0

#define SPSR_SPIF       7           //  Bit 7 – SPIF: SPI Interrupt Flag
#define SPSR_WCOL       6           //  Bit 6 – WCOL: Write COLlision Flag
#define SPSR_SPI2X      0           //  Bit 0 – SPI2X: Double SPI Speed Bit
                                    //  When this bit is written logic one the SPI speed (SCK Frequency) will be doubled when the SPI is in Master mode
                                    //  This means that the minimum SCK period will be two CPU clock periods. When the SPI is configured as Slave, the SPI is only guaranteed to work at fosc/4 or lower


/******************************************************************************
* Typedefs
*******************************************************************************/




/******************************************************************************
* Variables
*******************************************************************************/




/******************************************************************************
* Module Variable Definitions
*******************************************************************************/




/******************************************************************************
* Private Function Prototypes
*******************************************************************************/
 void __vector_10(void) __attribute__(( signal , used ));   //  Serial Transfer Complete
static void (*Global_ExchangeComplate) (void) = 0;


#endif
/************************************* End of File ******************************************/
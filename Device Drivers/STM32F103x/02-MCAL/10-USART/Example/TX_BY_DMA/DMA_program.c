/**
* @file DMA_program.c
* @author Mohamed Abd El-Naby (mahameda.naby@gmail.com) 
* @brief 
* @version 0.1
* @date 2022-11-07
*
*/
/******************************************************************************
* Includes
*******************************************************************************/
#include "STD_TYPES.h"
#include "BIT_MATH.h"
#include "COMMON.h"
#include "DMA_interface.h"
#include "DMA_config.h"
#include "DMA_private.h"










/******************************************************************************
* Module Preprocessor Constants
*******************************************************************************/


#define GET_CHANNEL()     (DMA->CHANNEL[((ptr_UsrConfig->channelNumber))])

/******************************************************************************
* Module Preprocessor Macros
*******************************************************************************/


#define _NUMBER_OF_DMA_CNANNEL 7

/******************************************************************************
* Typedefs
*******************************************************************************/


typedef void (*DMA_voidPtrToFunction)(void);

/******************************************************************************
* Module Variable Definitions
*******************************************************************************/

static DMA_voidPtrToFunction  DMA_PtrFunction [_NUMBER_OF_DMA_CNANNEL];


/******************************************************************************
* Function Prototypes
*******************************************************************************/




/******************************************************************************
* Function Definitions
*******************************************************************************/
void DMA_voidInitChannel(DMA_Config_t* ptr_UsrConfig)
{
    /*  DISABLE DMA     */ 
    CLR_BIT( GET_CHANNEL().CCR ,  0 );
    while( GET_BIT(  GET_CHANNEL().CCR  , 0 ) == 1 );
    /* Set Direction    */

    GET_CHANNEL().CCR &=~(0b100000000010000) ;
    GET_CHANNEL().CCR |= (ptr_UsrConfig->channelDirection) ;
    /* Set Mode */
    CLR_BIT(GET_CHANNEL().CCR , 5 );
    GET_CHANNEL().CCR |= ptr_UsrConfig->channelCircularMode ;
    /* Mem Increment Mode   */
    CLR_BIT( GET_CHANNEL().CCR , 7  );
    GET_CHANNEL().CCR |= ptr_UsrConfig->channelMemIncrement ;
    /* Pripheral Increment Mode */
     CLR_BIT( GET_CHANNEL().CCR , 6  );
    GET_CHANNEL().CCR |= ptr_UsrConfig->channelPriphIncremnet ;
    /*  Mem Memory Size    */
    if( ptr_UsrConfig->channelMemElementSize == BYTE )
    {
        CLR_BIT( GET_CHANNEL().CCR , 10 );
        CLR_BIT( GET_CHANNEL().CCR , 11 );
    }
    else if( ptr_UsrConfig->channelMemElementSize == HALF_WORD  )
    {
        SET_BIT( GET_CHANNEL().CCR , 10 );
        CLR_BIT( GET_CHANNEL().CCR , 11 );
    }
    else if ( ptr_UsrConfig->channelMemElementSize == WORD )
    {
        CLR_BIT( GET_CHANNEL().CCR , 10 );
        SET_BIT( GET_CHANNEL().CCR , 11 );
    }
    /*  Proheral Memory Size    */
	if( ptr_UsrConfig->channelPriphElementSize == BYTE )
    {
		CLR_BIT( GET_CHANNEL().CCR , 8 );
		CLR_BIT( GET_CHANNEL().CCR , 9 );
	}
    else if( ptr_UsrConfig->channelPriphElementSize == HALF_WORD  )
    {
		SET_BIT( GET_CHANNEL().CCR , 8 );
		CLR_BIT( GET_CHANNEL().CCR , 9 );
	}
    else if ( ptr_UsrConfig->channelPriphElementSize == WORD )
    {
		CLR_BIT( GET_CHANNEL().CCR , 8 );
		SET_BIT( GET_CHANNEL().CCR , 9 );
	}
    /*  Priority    */
    GET_CHANNEL().CCR &=~(0b11 << 12 );
    GET_CHANNEL().CCR |= ptr_UsrConfig->channelPriority ;
    /*  Interrupts   */
    GET_CHANNEL().CCR &=~(0b111 << 1 );
    GET_CHANNEL().CCR |= ptr_UsrConfig->channelHalfTransferInt ;
    GET_CHANNEL().CCR |= ptr_UsrConfig->channelCompleteTransferInt ;
    GET_CHANNEL().CCR |= ptr_UsrConfig->channelerrorInTransferInt ;

}
void DMA_voidSetChannelState(DMA_Channel_t channelNumber, DMA_State_t channelState)
{
    CLR_BIT( DMA->CHANNEL[(channelNumber)].CCR ,  0 );
    DMA->CHANNEL[(channelNumber)].CCR |= channelState;
}
void DNA_voidSetHalfCompleteInterruptState(DMA_Channel_t channelNumber , DMA_halfTxInterrupt_t channelHalfTransferIntState)
{
    CLR_BIT( DMA->CHANNEL[(channelNumber)].CCR ,  2 );
    DMA->CHANNEL[(channelNumber)].CCR |= channelHalfTransferIntState ;

}
void DNA_voidSetCompleteInterruptState(DMA_Channel_t channelNumber , DMA_CompleteTxInterrupt_t channelCompleteTransferInt)
{
    CLR_BIT( DMA->CHANNEL[(channelNumber)].CCR ,  1 );
    DMA->CHANNEL[(channelNumber)].CCR |= channelCompleteTransferInt ;
}
void DNA_voidSetErrorInterruptState(DMA_Channel_t channelNumber , DMA_errorInterrupt_t  channelerrorInTransferInt)
{
    CLR_BIT( DMA->CHANNEL[(channelNumber)].CCR ,  3 );
    DMA->CHANNEL[(channelNumber)].CCR |= channelerrorInTransferInt  ;

}

void DMA_voidStatrTransfer(DMA_Channel_t channelNumber , u32 * PeripheralAddress , u32 * MemoryAddress , u16 Copy_u16BlockSize ,  void ( *Ptr ) ( void )  )
{
	/* Clear Flags	*/
	DMA->IFCR = 0xFFFFFFF ;
	/* SetAdresses 	*/
    DMA->CHANNEL[(channelNumber)].CNDTR = Copy_u16BlockSize ;
    DMA->CHANNEL[(channelNumber)].CPAR = (u32)PeripheralAddress ;
    DMA->CHANNEL[(channelNumber)].CMAR = (u32)MemoryAddress ;
    DMA_PtrFunction[(channelNumber)] = Ptr ;
    SET_BIT( DMA->CHANNEL[(channelNumber)].CCR ,  0 );

}
/**** ISR   ***/

void DMA1_Channel1_IRQHandler(void)
  {
    // Read ISR 
    if(GET_BIT(DMA->ISR , 1) == 1 )
    {
        /* CMPLT    */
        DMA_PtrFunction[0]();
    }
    else if (GET_BIT(DMA->ISR , 2) == 1)
    {
        /* half transfer flag */
    }
    else
    {
        /* transfer error flag */ 
    }
    
    /*	CLR Pending Flag	*/
    DMA->IFCR  = (1 << 0);
  }

void DMA1_Channel2_IRQHandler(void)
  {
    // Read ISR 
    if(GET_BIT(DMA->ISR , 5) == 1 )
    {
        /* CMPLT    */
        DMA_PtrFunction[1]();
    }
    else if (GET_BIT(DMA->ISR , 6) == 1)
    {
        /* half transfer flag */
    }
    else
    {
        /* transfer error flag */ 
    }
    /*	CLR Pending Flag	*/
    DMA->IFCR  = (1 << 4);
  }
void DMA1_Channel3_IRQHandler(void)
  {
    // Read ISR 
    if(GET_BIT(DMA->ISR , 9) == 1 )
    {
        /* CMPLT    */
        DMA_PtrFunction[2]();
    }
    else if (GET_BIT(DMA->ISR , 10) == 1)
    {
        /* half transfer flag */
    }
    else
    {
        /* transfer error flag */ 
    }
    /*	CLR Pending Flag	*/
    DMA->IFCR  = (1 << 8);
  }
void DMA1_Channel4_IRQHandler(void)
  {
    // Read ISR 
    if(GET_BIT(DMA->ISR , 13) == 1 )
    {
        /* CMPLT    */
        DMA_PtrFunction[3]();
    }
    else if (GET_BIT(DMA->ISR , 14) == 1)
    {
        /* half transfer flag */
    }
    else
    {
        /* transfer error flag */ 
    }
    /*	CLR Pending Flag	*/
    DMA->IFCR  = (1 << 12);
  }
  void DMA1_Channel5_IRQHandler(void)
  {
    // Read ISR 
    if(GET_BIT(DMA->ISR , 17) == 1 )
    {
        /* CMPLT    */
        DMA_PtrFunction[4]();
    }
    else if (GET_BIT(DMA->ISR , 18) == 1)
    {
        /* half transfer flag */
    }
    else
    {
        /* transfer error flag */ 
    }
    /*	CLR Pending Flag	*/
    DMA->IFCR  = (1 << 16);
  }
  void DMA1_Channel6_IRQHandler(void)
  {
    // Read ISR 
    if(GET_BIT(DMA->ISR , 21) == 1 )
    {
        /* CMPLT    */
        DMA_PtrFunction[5]();
    }
    else if (GET_BIT(DMA->ISR , 22) == 1)
    {
        /* half transfer flag */
    }
    else
    {
        /* transfer error flag */ 
    }
    /*	CLR Pending Flag	*/
    DMA->IFCR  = (1 << 20);
  }
  void DMA1_Channel7_IRQHandler(void)
  {
    // Read ISR 
    if(GET_BIT(DMA->ISR , 25) == 1 )
    {
        /* CMPLT    */
        DMA_PtrFunction[6]();
    }
    else if (GET_BIT(DMA->ISR , 26) == 1)
    {
        /* half transfer flag */
    }
    else
    {
        /* transfer error flag */ 
    }
    /*	CLR Pending Flag	*/
    DMA->IFCR  = (1 << 24);
  }
/************************************* End of File ******************************************/

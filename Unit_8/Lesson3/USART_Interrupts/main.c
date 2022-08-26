#define F_CPU 1600000UL	/* Define CPU frequency here xMHz */
/*      INCLUDES      */
#include "BIT_MATH.h" 
#include "STD_TYPES.h"
#include "MAPPING.h"
#include "GPIO_interface.h"
#include "EXT_INT_interface.h"
#include "USART_Interface.h"

void X(void);
int main(void)
{	
  /*    Init. External Interrupts   */
	EXTINT_voidInit();
  /*	Init. USART Module			*/
	UART_cnfg x ; 	
	x.baudrate = 9600 ;
	x.databits =  _8BIT;
	x.parity= DISABLED_PARITY;
	x.stopbits= _1STOPBIT ;
	x.state= TRANCIVER ;
	x.operation= Asynchronous;
	MCAL_USART_init(&x);
  /*    Enable Global Interrupt Flag    */
	EXTINT_voidGlobalIntEnable();
	u8 data; 
	  MCAL_USART_RxByteAsynch(&data);
	 MCAL_USART_TxByteAsynch(data, X);
	 	  MCAL_USART_TxByteAsynch('x', X);
  while (1)
  {
  }
}

void X(void)
{
	MCAL_voidDisableTxInterrupt();
	MCAL_USART_SendString("TX Complete.");
}
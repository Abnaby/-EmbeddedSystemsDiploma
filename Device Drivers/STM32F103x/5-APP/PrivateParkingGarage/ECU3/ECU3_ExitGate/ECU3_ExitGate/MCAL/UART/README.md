# External Interrupt Driver  
## Development
Microchip Studio 7 (Version: 7.0.2594 - )
© 2020 Microchip Technology, Inc.
All rights reserved.


OS Version: Microsoft Windows NT 6.2.9200.0
Platform: Win32NT


## Notes
## V1 Features : 
 Can Control UART in ATmega16A   
&nbsp; 1 - Enable USART.  
&nbsp; 2 - Set of different configuration for UART.  
&nbsp; 3 - Send or Receive a byte of data.  
&nbsp; 4 - Send or Receive a 4 byte of data.  
 
## Development :  
In V1 will has this function :  
| Function Name | Usage |  Parameter | return | Note |
| ------ | ------ |  ------ |  ------ |  ------ |
| MCAL_USART_init(UART_cnfg*)  | <a href="#UART-initialization">UART Initilalization</a> by user defined struct. |`UART_cnfg* ptr_usart` - <a href="#UART-Struct">UART struct content</a> |`void`|
| MCAL_USART_TxByteSynch(u8)  | Transmit a byte of data. |`u8 copy_u8Data`  to be transmitted |`void`|
| MCAL_USART_TxSynch(u32)  | Transmit a 4 byte of data. |`u32 copy_u32Data` to be transmitted |`void`|
| MCAL_USART_RxByteSynch(u8*)  | Receive a byte of data. |`u8 *ptr_u8ReceivedData` pointer to var that hold the received data. |`void`|
| MCAL_USART_RxSynch(u32)  | Receive a 4 byte of data. |`u32 *ptr_u32ReceivedData` pointer to 32 bit variable that hold received data. |`void`|
| MCAL_USART_SendString(u8*)  | Send a string. |`u8 *str` pointer to string to be transmitted. |`void`|
| MCAL_USART_TxChar(u8)  | send character. |`u8 ch` Character to be transmitted. |`void`|
| MCAL_USART_TxByteAsynch(u8,callBackFun)  | receive a byte of data Asynchronously. |`u8 *copy_u8Data` Pointer to character to be transmitted.|`void`| Need To Enable Global Interrupt First From EXTI Module|
| MCAL_USART_RxByteAsynch(u8*)  | send a character of data Asynchronously. |`u8 copy_u8Data` Character to be transmitted. <br/>`void(*Tx_CallBack)(void)` Callback Function to be executed when data transmitted. |`void`| Need To Enable Global Interrupt First From EXTI Module|
| MCAL_voidDisableTxInterrupt(void)  | Disable USART Transmit Interrupt. |`void` |`void`|
 MCAL_voidDisableRxInterrupt(void)  | Disable USART Recieve Interrupt. |`void` |`void`|
  MCAL_USART_GetFlagState(u8)  | Get Different State of Flags <a href="#USART-FLAGS">available for USART</a>  . |`u8 cpy_u8Flag` one of <a href="#USART-FLAGS">available flags for USART</a>  |`USART_FlagsStatus` <a href="#USART-ReturnedFLAGS">States of Desired Flags</a> |

### UART-Initialization
```c
	UART_cnfg x ; 	

	x.baudrate    = 9600 ;
	x.databits    = _8BIT;
	x.parity      = ODD_PARITY;
	x.stopbits    = _2STOPBIT ;
	x.state       = TRANCIVER ;
	x.operation   = Asynchronous;

   MCAL_USART_init(&x);
```
| Members | Description |  Parameters | 
| ------ | ------ |  ------ | 
| <a href="#USART_Baud_Rate">baudrate</a>  | Set UART Baud Rate   | - <a href="#USART_Baud_Rate">refToParameters</a> |`void`|
| <a href="#USART_Number_of_data_bits">databits</a>  | Set Number of Data Bits   | - <a href="#USART_Number_of_data_bits">refToParameters</a> |`void`|
| <a href="#USART_Parity">parity</a>  | En/Disable Even, Odd Parity  | - <a href="#USART_Parity">refToParameters</a> |`void`|
| <a href="#USART_Stop_Bits">stopbits</a>  | Set Number of Stop Bits | - <a href="#USART_Stop_Bits">refToParameters</a> |`void`|
| <a href="#USART_Operation">operation</a>  | Set UsART Mode A/synchhronous   | - <a href="#USART_Operation">refToParameters</a> |`void`|

## Different Configuration Parameter : 

```c
typedef struct  
{
	u16                     baudrate;
	USART_dataBitsCnfg      databits;
	USART_parityCnfg        parity;
	USART_stopBitCnfg       stopbits;
	USART_stateCnfg         state;
	USRT_operationCnfg      operation;
}UART_cnfg;

```
- USART_Baud_Rate 
```
Ex :
    1200,
    2400,
    4800,
    9600,       (Normally Used)
    19200,
    115200,
```
- USART_State
```c
typedef enum
{
	RECEIVE					= 0b10,
	TRANSMIT				= 0b01,			
	TRANCIVER				= 0b11
}USART_stateCnfg;
```
- USART_Number_of_data_bits
```c
typedef enum
{
	_5BIT                   = 0b000,
	_6BIT                   = 0b001,
	_7BIT                   = 0b010,
	_8BIT                   = 0b011,
	_9BIT                   = 0b111
}USART_dataBitsCnfg;
```
- USART_Parity
```c
typedef enum
{
	DISABLED_PARITY         = 0,
	ODD_PARITY             = 0b100000,
	EVEN_PARITY              = 0b110000
}USART_parityCnfg;
```
- USART_Stop_Bits
```c
typedef enum
{
	_1STOPBIT               = 0,
	_2STOPBIT               = 0b1000
}USART_stopBitCnfg; 
```
- USART_Operation
```c
typedef enum
{
	Asynchronous            = 0,
	Synchronous             = 1
}USRT_operationCnfg;
```



## USART-FLAGS

| FlagName | Description  | 
| ------ | ------ | 
| USART_RXC_FLAG |  can be used to to know that there is a received data | 
| USART_TXC_FLAG |  can be used to to know that the data transmitted.  | 
| USART_DRE_FLAG |  when flag set, ready to receive new data. | 
| USART_DATA_OVER_RUN_FLAG | Data OverRun condition is detected. | 
| USART_PARITY_ERROR_FLAG | Used to know htere is a error in parity of not. | 
| USART_FRAME_ERROR_FLAG | Occure When Exist Error in Frame. | 


## USART-ReturnedFLAGS
 FlagName | Description  | 
 | ------ | ------ | 
| USART_TX_COMPLATE | Data Transmitted Successfully. | 
| USART_TX_NOT_COMPLATE | Wait to Transmition. | 
| USART_RX_COMPLATE | Data Recieived Successfully. | 
| USART_RX_NOT_COMPLATE | No Data Recieved. | 
| USART_Data_Register_Empty | Ready to Receive New Data. | 
| USART_Data_Register_NOT_Empty | NOT Ready to Receive New Data. | 
| USART_NO_PARITY_ERROR | Exist Parity Error. | 
| USART_PARITY_ERROR | Data Recieved Successfully.| 
| USART_NO_DOV_ERROR | Data OverRun Condition is Detected. (old data missed without read it) | 
| USART_DOV_ERROR | No Data OverRun | 
| USART_NO_FR | Exist Error in Frame | 
| USART_FR | Data Recieved Successfully. | 


# Full Example  
## Resend a Received Data Synch.   
```c
/**
 * @file main.c
 * @author Mohamed Abd El-Naby (mahameda.naby#gmail.com)
 * @brief this file contain the main code of application
 * @version 0.1
 * @date 2022-08-18
 * 
 * @copyright Copyright (c) 2022
 * 
 */
#include "STD_TYPES.h"
#include "MAPPING.h"
#include "BIT_MATH.h"
#include "USART_Interface.h"

/**
 * @brief This is the entery point of code 
 * 
 * @return int (will never happen)
 */
int main(void)
{
	UART_cnfg x ; 	
	x.baudrate = 9600 ;
	x.databits =  _8BIT;
	x.parity= ODD_PARITY;
	x.stopbits= _2STOPBIT ;
	x.state= TRANCIVER ;
	x.operation= Asynchronous;
   MCAL_USART_init(&x);
  u8 *data ; 
	MCAL_USART_SendString("Hello From The Other Side :) ") ; 
	
    while (1) 
    {
      MCAL_USART_RxByteSynch(&data) ;
      MCAL_USART_TxByteSynch(data) ;


    }
}


```
## Resend a Received Data Asynch.   
```c
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
```
## Contributing  
Bug reports, feature requests, and so on are always welcome. Feel free to leave a note in the Issues section.

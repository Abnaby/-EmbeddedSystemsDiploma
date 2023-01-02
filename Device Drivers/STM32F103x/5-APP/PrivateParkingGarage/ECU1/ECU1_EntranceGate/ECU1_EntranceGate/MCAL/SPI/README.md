# External Interrupt Driver  
## Development
Microchip Studio 7 (Version: 7.0.2594 - )
© 2020 Microchip Technology, Inc.
All rights reserved.


OS Version: Microsoft Windows NT 6.2.9200.0
Platform: Win32NT


## Notes
## V1 Features : 
 Can Control SPI in ATmega16A   
&nbsp; 1 - Set of different configuration for SPI Module.  
&nbsp; 2 - Send or Receive a byte of data Synchronously.  
&nbsp; 3 - Send or Receive a byte of data Asynchronously.  
 
## Development :  
In V1 will has this function :  
| Function Name | Usage |  Parameter | return | Note |
| ------ | ------ |  ------ |  ------ |  ------ |
| MCAL_SPI_voidInit(ptr_SPI_Config*)  | <a href="#SPI-initialization">SPI Initilalization</a> by user defined struct. |`SPI_Config* ptr_SPI_Config` - <a href="#SPI-Struct">SPI struct content</a> |`void`| Need to call `GPIO_voidSPI_MasterInit` or `GPIO_voidSPI_SlaveInit` from GPIO device driver.
| MCAL_SPI_voidByteExchangeAsynch(u8,u8*) | This Function Used to Exchange data between Master and Slave Asynchronously.. |`u8 cpy_u8DataToBeTransmit`  data to be transmitted<br/>`u8 *ptr_dataToBeReceived`  pointer to u8 variable to received incomming data. |`void`|
| MCAL_SPI_voidSendByteAsynch(u8)  | Transmit a byte of data Asynchronously. |`u8 cpy_u8Data`  to be transmitted |`void`|
| MCAL_SPI_voidReceiveByteAsynch(u8*)  | Receive a byte of data Asynchronously. |`u8 *ptr_u8ReceivedData` pointer to var that hold the received data. |`void`|
| MCAL_SPI_voidSendByteSynch(u8,p2f)  | This Function Used to Send a byte of data through SPI Module Synchronously. |`u8 cpy_u8Data` a byte of data to be transmitted Synchronously. `void(*Exchange_CallBack)(void)` pointer to function to be execute when data transmitted.|`void`|Need To Enable Global Interrupt First From EXTI Module|
| MCAL_SPI_voidReceiveByteSynch(p2f)  | This Function is used to recieve a byte of data through SPI Module Synchronously. |`void(*Exchange_CallBack)(void)` pointer to function to be execute when data Received. |`void`|Need To Enable Global Interrupt First From EXTI Module|
| MCAL_SPI_voidEnableInterrupt(void)  | This Function is used to Enable SPI Interrupt. |`void` |`void`|To generate Interrupt Need To Enable Global Interrupt First From EXTI Module|
| MCAL_SPI_voidDisableInterrupt(void)  | This Function is used to Disable SPI Interrupt. |`void` |`void`||

### SPI-Initialization
```c
SPI_Config mySPI =	
{
    SPI_INTERRUPT_DISABLE  ,
    SPI_MSB_FIRST   ,
    SPI_MASTER    ,
    SPI_IDLE_LOW   ,
    SPI_LEADING_EDGE  ,
    SPI_Fosc_OVER_4	

};

MCAL_SPI_voidInit(&mySPI);
```
| Members | Description |  Parameters | Notes | 
| ------ | ------ |  ------ | --------------| 
| <a href="#SPI_InterruptControl">SPI_InterruptControl</a>  | Enable/Disable SPI Interrupts. | - <a href="#SPI_InterruptControl">refToParameters</a> ||
| <a href="#SPI_DataOrder">SPI_DataOrder</a>  | LSB/MSB Transmit First.   | - <a href="#SPI_DataOrder">refToParameters</a> |`Master And Slave Must have the same data order.|
| <a href="#SPI_Mode">SPI_Mode</a>  | Master Or Slave  | - <a href="#SPI_Mode">refToParameters</a> ||
| <a href="#SPI_IdleLevel">SPI_IdleLevel</a>  | Idel be LOW/HIGH Level | - <a href="#SPI_IdleLevel">refToParameters</a> |Master And Slave Must have the same Clock Polarity.|
| <a href="#SPI_DataSampling">SPI_DataSampling</a>  | determine When sample data  | - <a href="#SPI_DataSampling">refToParameters</a> |Master And Slave Must have the same Clock Phase|
| <a href="#SPI_ClockRate">SPI_ClockRate</a>  | Set Clock Rate of SPI Module | - <a href="#SPI_ClockRate">refToParameters</a> |Master And Slave Must have the same Clock Rate|

## Different Configuration Parameter : 

```c
typedef struct 
{
    SPI_InterruptControl    SPI_InterruptState      ;
    SPI_DataOrder           SPI_SetDataOrder        ;
    SPI_Mode                SPI_ModeSelect          ;
    SPI_IdleLevel           SPI_IdleStateLevel      ;
    SPI_DataSampling        SPI_DataSamplingEdge    ;
    SPI_ClockRate           SPI_SetClockRate		;
    
}SPI_Config;

```
- SPI_InterruptControl 
```
typedef enum
{
    SPI_INTERRUPT_DISABLE =  0                ,      
    SPI_INTERRUPT_ENABLE  =  0b10000000
}SPI_InterruptControl; 

```
- SPI_DataOrder
```c
typedef enum
{
typedef enum
{
    SPI_MSB_FIRST        =    0              ,
    SPI_LSB_FIRST        =    0b00100000  

}SPI_DataOrder ; 
```
- SPI_Mode
```c
typedef enum
{
    SPI_SLAVE           =   0                  ,
    SPI_MASTER          =   0b00010000        
    
}SPI_Mode;
```
- SPI_IdleLevel
```c
typedef enum
{
    SPI_IDLE_LOW            =   0            ,
    SPI_IDLE_HIGH           =   0b00001000
                    
}SPI_IdleLevel;

```
- SPI_DataSampling
```c
typedef enum
{
    SPI_LEADING_EDGE        =   0            ,
    SPI_TRAILING_EDGE       =   0b00000100

}SPI_DataSampling; 
```
- SPI_ClockRate
```c
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
```
# Full Example  
## Transmit Data from Master to Slave to control Seven-segment display
> Schematic 
![image](https://i.ibb.co/cLNW5XD/Capture.png)

>Master Code (Transmit Asynchronously)
```c
#include "STD_TYPES.h"
#include "MAPPING.h"
#include "BIT_MATH.h"
#include "GPIO_interface.h"
#include "SPI_Interface.h"
#include "SPI_Private.h"
#include<avr/io.h>
#include<util/delay.h>


/*							MASTER						*/


SPI_Config mySPI =	
{
    SPI_INTERRUPT_DISABLE  ,
    SPI_LSB_FIRST   ,
    SPI_MASTER    ,
    SPI_IDLE_LOW   ,
    SPI_LEADING_EDGE  ,
    SPI_Fosc_OVER_4	

};
int main (void)
{ 
	GPIO_voidSPI_MasterInit();
	MCAL_SPI_voidInit(&mySPI);
	u8   k = '0' ;
	while(1)
	{
		MCAL_SPI_voidSendByteAsynch(k);
		_delay_ms(200); 
		( k > '9') ? k = '0' : k++ ; 
	}

}

```
>Slave Code (Receive Synchronously)  
```c

#include "STD_TYPES.h"
#include "MAPPING.h"
#include "BIT_MATH.h"
#include "GPIO_interface.h"
#include "SPI_Interface.h"
#include "SPI_Private.h"
#include "EXT_INT_interface.h"
#include<avr/io.h>
//#include<util/delay.h>

void interrupt_x(void);
/*									SLAVE					*/

char arr[]={0b00111111,0b00000110,0b01011011,0b01001111,0b01100110,0b01101101,0b11111101,0b00000111,0b01111111,0b11101111};   

SPI_Config mySPI =	
{
    SPI_INTERRUPT_ENABLE  ,
    SPI_LSB_FIRST   ,
    SPI_SLAVE    ,
    SPI_IDLE_LOW   ,
    SPI_LEADING_EDGE  ,
    SPI_Fosc_OVER_4	

};
int main (void)
{
	/*		GPIO INIT FOR 7SEG			*/
	DDRC=0XFF;
	/*		GPIO INIT FOR SPI			*/
	GPIO_voidSPI_SlaveInit();
	/*		SPI INIT					*/
	MCAL_SPI_voidInit(&mySPI);
	
	MCAL_SPI_voidReceiveByteSynch(interrupt_x);
	/*		Enable Global Interrupt		*/
	EXTINT_voidGlobalIntEnable();
	while(1)
	{
	}

}
void interrupt_x (void)
{
	u8 k  ; 
	MCAL_SPI_voidReceiveByteAsynch(&k);
	switch(k)
	{
		case '0' : PORTC= arr[0] ; break ; 
		case '1' : PORTC= arr[1] ;break ; 
		case '2' : PORTC= arr[2] ;break ; 
		case '3' : PORTC= arr[3] ;break ; 
		case '4' : PORTC= arr[4] ;break ; 
		case '5' : PORTC= arr[5] ;break ; 
		case '6' : PORTC= arr[6] ;break ; 
		case '7' : PORTC= arr[7] ;break ; 
		case '8' : PORTC= arr[8] ;break ; 
		case '9' : PORTC= arr[9] ;break ; 
			
	}
	
}
```
>Result 
![image](https://i.ibb.co/pJC09H1/U8-L4.gif)
## Contributing  
Bug reports, feature requests, and so on are always welcome. Feel free to leave a note in the Issues section.

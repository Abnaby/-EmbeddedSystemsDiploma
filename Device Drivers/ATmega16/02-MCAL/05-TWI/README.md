# External Interrupt Driver  
## Development
Microchip Studio 7 (Version: 7.0.2594 - )
© 2020 Microchip Technology, Inc.
All rights reserved.


OS Version: Microsoft Windows NT 6.2.9200.0
Platform: Win32NT


## Notes
## V1 Features : 
 Can Control TWI in ATmega16A   
&nbsp; 1 - Set of different configuration for TWI Module.  
&nbsp; 2 - Support Different Modes like: 
            1- Master Transmit.
            2- Master Receive.
            3- Slave Receive. 
            4- Slave Transmit.  
 
## Development :  
In V1 will has this function :  
| Function Name | Usage |  Parameter | return | Note |
| ------ | ------ |  ------ |  ------ |  ------ |
| MCAL_TWI_Init(ptr_TWI_Config*)  | <a href="#TWI-initialization">TWI Initilalization</a> by user defined struct  to initalize TWI Mdule . |`TWI_Config* ptr_TWI_Config` - <a href="#TWI-Struct">TWI struct content</a> |`TWI_Errors` <a href="#TWI-Errors">enum of errors and states</a>  can be returned | For Master and Slave.| 
| MCAL_TWI_StartCondition(void) | This Function Used to Send START condition. |`void`  |`TWI_Errors` <a href="#TWI-Errors">enum of errors and states</a>  can be returned | Master Only
| MCAL_TWI_SlaveAddress(u8)  | Send Slave address Write Operation. |`u8 copy_u8SlaveAddress`  Slave Address that master can Transmitt or Receive from it. |`TWI_Errors` <a href="#TWI-Errors">enum of errors and states</a>  can be returned | 1- Master Only <br/> 2- Address Must be 7 bit from 0b0000001 to 0b1111111 <br/> 3- For read operation `copy_u8SlaveAddress` must be 7-bit address + 1 <br/> 4-For write operation `copy_u8SlaveAddress` must be 7-bit address + 0| 
| MCAL_TWI_RepeatedStart(u8)  | This function used to send repeated start. |`u8 copy_u8SlaveAddress`  Slave Address + R/W that master can Transmitt or Receive from it. |`TWI_Errors` <a href="#TWI-Errors">enum of errors and states</a>  can be returned |Master Only|
| MCAL_TWI_Write(u8)  | This function used to send repeated start. |`u8 copy_u8Data`  Data to be transmitted. |`TWI_Errors` <a href="#TWI-Errors">enum of errors and states</a>  can be returned |Master/Slave|
| MCAL_TWI_Read(u8*,ack_state)  | This Function Used to receive data from Master <-- Slave or from Slave <-- Master and read it with ACK ot NACK. |`ptr_u8Data` pointer to data to be Received. <br/> `TWI_Errors` Read <a href="#TWI-ReadWith">With ACK or read with NACK</a> . | `TWI_Errors` <a href="#TWI-Errors">enum of errors and states</a> | Master / Slave |
| MCAL_TWI_SendDataAuto(u8,u8)  | This Function Used to transmit data from Masster to slave -  Master Transmit Slave Receive (MTSR). |`u8 copy_u8SlaveAddress`  Slave Address + R/W that master can Transmitt or Receive from it <br/> `u8 copy_u8Data`  Data to be transmitted.   |`TWI_Errors` <a href="#TWI-Errors">enum of errors and states</a>  can be returned |Master Only|
| MCAL_TWI_ReceiveDataAuto(u8,u8*)  | This Function Used to transmit data from master to slave - Master Recevive Slave Transmit (MRST). |`u8 copy_u8SlaveAddress`  Slave Address + R/W that master can Transmitt or Receive from it <br/> `u8 *ptr_u8Data`  Pointer to data to be Recieved..   |`TWI_Errors` <a href="#TWI-Errors">enum of errors and states</a>  can be returned |Master Only|
| MCAL_TWI_StopCondition(void)  | This Function is used to Send STOP condition. |`void`  |`TWI_Errors` <a href="#TWI-Errors">enum of errors and states</a>  can be returned |Master Only|
| MCAL_TWI_SlaveAddressMatch(addressingMode)  | This Function Used to Match slave address. |`addressingMode mode`  used to select how match addrees -  <a href="#TWI-addressingMode">in case of Slave Address + Read or Slave Address + Write</a>|`TWI_Errors` <a href="#TWI-Errors">enum of errors and states</a>  can be returned |Slave Only|
| MCAL_TWI_ReceiveUntillStop(p2f)  | This Function Used to receive data untill master send stop condition Asynch. |`void (*ptr_callbck)(u8 copy_callbackData)`  Pointer to function executed when a byte of data received. |`TWI_Errors` <a href="#TWI-Errors">enum of errors and states</a>  can be returned |Slave Only|
### TWI-Initialization
```c
TWI_Config myI2C=
{
	MASTER , 
	NORMAL_MODE
};
MCAL_TWI_Init(&myTWI);

```


## Different Configuration Parameter : 

- TWI-Struct

```c
typedef struct 
{
    TWI_Mode           TWI_MODE_SELECT        ;
    TWI_SPD_Mode       TWI_SPD                ; //  Not Important for slave mode

    
}TWI_Config;

```

- TWI_Mode 
```
typedef enum
{
    MASTER,
    SLAVE
}TWI_Mode;

- TWI_SPD_Mode
```c
typedef enum 
{

    NORMAL_MODE         ,           //  100kHz. 
    FAST_MODE           ,           //  400kHz 
}TWI_SPD_Mode;
```
- TWI-ReadWith
```c
typedef enum
{
    READ_WITH_ACK ,     
    READ_WITH_NACK  
    
}ReadWith; 
```
- TWI-addressingMode
```c
typedef enum
{
	SLA_R	,               //  Slave Address + Read
	SLA_W                   //  Slave Address + Write
}addressingMode; 

```
- TWI-Errors
```c
typedef enum
{
    NO_ERROR                   ,                                    // No Error Happend 
    ERROR_SLCT_VALID_MODE      ,                                    // Error in mode selection @see ref TWI_Mode
    ERROR_START_CONDITION_FAIL ,                                    // Start Condition fail 
    ACK_RECEIVED               ,                                    // Received Acknowledge 
    NACK_RECEIVED              ,                                    // Received NotAcknowledge
    SLA_W_FAILD                ,                                    // Slave Address + Write operation fail 
    ERROR_ISSUED_BY_MSTR_ONLY  ,                                    // Happend when use a slave functions in master mode
    ERROR_ISSUED_BY_SLVE_ONLY  ,                                    // Happend when use a master functions in slave mode 
    ERROR_RESTART_CONDITION_FAIL,                                   // Repeated start condition fail 
    ERROR_DTA_TX_FAIL           ,                                   // Error in data transmition
    ERROR_UNDEFINED                                                 // Undefined Error
}TWI_Errors; 
```

# Hardware-Setup 
![image](https://drive.google.com/uc?export=download&id=1lFL9ormXLi3VGTPopIkqTqrcICbQSDM8)


# Full Example  
## Mode 1 : Master Transmit 
```c
#include "STD_TYPES.h"
#include "MAPPING.h"
#include "BIT_MATH.h"
#include "TWI_Interface.h"
#include<avr/io.h>
#include <util/delay.h>

/*		INIT I2C			*/
TWI_Config myI2C=
{
	MASTER , 
	NORMAL_MODE
};
int main (void)
{

	MCAL_TWI_Init(&myI2C);
	u8 error ,*ptr; 
	while(1)
	{
		error = 	MCAL_TWI_StartCondition(); 
		if (error == NO_ERROR)
		{
			error = MCAL_TWI_SlaveAddress(0x10);
			if (error == ACK_RECEIVED)
			{
				error = MCAL_TWI_Write(0xA9);
				if (error == ACK_RECEIVED)
				{
						MCAL_TWI_StopCondition(); 
					
				}
			}

		}
		_delay_ms(1000);		
	}

}
```
![image](https://drive.google.com/uc?export=download&id=1mC21-YC4GEkApfFfLfyURGlM_-ODV90X)

## Mode 2 : Master Receive 
```c

#include "STD_TYPES.h"
#include "MAPPING.h"
#include "BIT_MATH.h"
#include "TWI_Interface.h"
#include<avr/io.h>
#include <util/delay.h>
#include "USART_Interface.h"

/*		INIT I2C			*/
TWI_Config myI2C=
{
	MASTER , 
	NORMAL_MODE
};
int main (void)
{
	UART_cnfg x ; 	
	x.baudrate = 9600 ;
	x.databits =  _8BIT;
	x.parity= DISABLED_PARITY;
	x.stopbits= _1STOPBIT ;
	x.state= TRANCIVER ;
	x.operation= Asynchronous;
	MCAL_USART_init(&x);


	MCAL_TWI_Init(&myI2C);
	u8 error ,data; 
	
	while(1)
	{
		error = 	MCAL_TWI_StartCondition(); 
		if (error == NO_ERROR)
		{
			error = MCAL_TWI_SlaveAddress(0x10 + 1);		// Address + 1 for recieve 
			error = MCAL_TWI_Read(&data ,READ_WITH_NACK) ;
					MCAL_TWI_StopCondition(); 
					MCAL_USART_TxChar(data);
					
					
		}
		//_delay_ms(1000);		
	}

}

```
![image](https://drive.google.com/uc?export=download&id=16ITozpfb5ex2NiaouREiISM8BnCygsQG)

## Mode 3 : Slave Receive 
```c

#include "STD_TYPES.h"
#include "MAPPING.h"
#include "BIT_MATH.h"
#include "TWI_Interface.h"
#include<avr/io.h>
#include <util/delay.h>

#include "USART_Interface.h"


TWI_Config myI2C=
{
	SLAVE , 
	NORMAL_MODE
};

void funcToBeExected (u8 recievedData);

int main (void)
{
	// ***********************USART*********************************
	UART_cnfg x ; 	
	x.baudrate = 9600 ;
	x.databits =  _8BIT;
	x.parity= DISABLED_PARITY;
	x.stopbits= _1STOPBIT ;
	x.state= TRANCIVER ;
	x.operation= Asynchronous;
	MCAL_USART_init(&x);

	
	//**********************IIC**********************************

	MCAL_TWI_Init(&myI2C);
	u8 data= 0x00 ; 

					

	while(1)
	{
		MCAL_TWI_SlaveAddressMatch(SLA_W);
		MCAL_TWI_ReceiveUntillStop(funcToBeExected);
	}

}

void funcToBeExected (u8 recievedData)
{
	MCAL_USART_TxChar(recievedData);
}
```
![image](https://drive.google.com/uc?export=download&id=16CPF3j9K6kDGF44PvPKlvq1C9JU3sVj_)

## Mode 4 : Slave Transmit 
```c

#include "STD_TYPES.h"
#include "MAPPING.h"
#include "BIT_MATH.h"
#include "TWI_Interface.h"
#include<avr/io.h>
#include <util/delay.h>

#include "USART_Interface.h"
/*		INIT I2C			*/


TWI_Config myI2C=
{
	SLAVE , 
	NORMAL_MODE
};
int main (void)
{
	UART_cnfg x ; 	
	x.baudrate = 9600 ;
	x.databits =  _8BIT;
	x.parity= DISABLED_PARITY;
	x.stopbits= _1STOPBIT ;
	x.state= TRANCIVER ;
	x.operation= Asynchronous;
	MCAL_USART_init(&x);

	

	MCAL_TWI_Init(&myI2C);
	

					
	u8 a = '0' , error ; 
	MCAL_TWI_SlaveAddressMatch(SLA_R);

	while(1)
	{
		error = MCAL_TWI_Write(a);
		if (error ==  ACK_RECEIVED)
		{
			MCAL_USART_SendString ("ACK_RECEIVED    "); 
		}
		else if (error == NACK_RECEIVED)
		{
			MCAL_USART_SendString ("NACK_RECEIVED    ");
			
		}
		else
        {
                        MCAL_USART_SendString (" XDXDXD    "); ;

        }

		
		(a>= '0' && a<= '9') ? (a++) : (a='0');

	}

}

```


![image](https://drive.google.com/uc?export=download&id=1g_fkcnMJq7vpAJitusE3r_hID4aaUA-V)





## Contributing  
Bug reports, feature requests, and so on are always welcome. Feel free to leave a note in the Issues section.

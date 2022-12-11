/**
* @file PIR
* @author Mohamed Abd El-Naby (mahameda.naby@gmail.com) 
* @brief 
* @version 3.0
* @date 2022-12-4
*
*/
#ifndef PIR_H 
#define PIR_H 


/******************************************************************************
* Includes
*******************************************************************************/



/******************************************************************************
* Preprocessor Constants
 *******************************************************************************/
#define PIR_INTERRUPT	0
#define PIR_POLLING		4

/******************************************************************************
* User Configuration
*******************************************************************************/
/**
	PIR_PORT_PIN			--> Write in forms of 
								PORTx,PINy
	PIR_BASED_ON			-->	PIR_INTERRUPT
								PIR_POLLING
	PIR_USING_EXTIx			--> EXT_INT0
								EXT_INT1
								EXT_INT2
	PIR_INTERRUPT_AT		--> EXT_INTx_LOW_LEVEL
								EXT_INTx_FALLING_EDGE
								EXT_INTx_RISING_EDGE
								EXT_INTx_LOGICAL_CHANGE
					Note That 
							EXT_INT2  Support only EXT_INT2_FALLING_EDGE and EXT_INT2_RISING_EDGE
								
*/
#define PIR_BASED_ON	    PIR_POLLING

#if  PIR_BASED_ON == PIR_INTERRUPT
#define PIR_USING_EXTIx		EXT_INT0
#define PIR_INTERRUPT_AT	EXT_INT0_RISING_EDGE
#else
#define PIR_PORT_PIN        PORTA,PIN1
#endif 





/******************************************************************************
* Configuration Constants
*******************************************************************************/




/******************************************************************************
* Macros
*******************************************************************************/




/******************************************************************************
* Typedefs
*******************************************************************************/





/******************************************************************************
* Function Prototypes
*******************************************************************************/
void PIR_voidInit(void);

#if PIR_BASED_ON == PIR_INTERRUPT 
void PIR_voidExistMovement(void(*Callback)(void)); 
#else 
u8 PIR_u8ExistMovement(void); 
#endif 

#endif
/************************************* End of File ******************************************/
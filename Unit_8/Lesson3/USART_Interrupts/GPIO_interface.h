/**************************************************************************/
/* Author	: Mohamed                                               	  */
/* Date		: 28 January 2021                                 		      */
/* Version	: V01							  							  */
/**************************************************************************/
#ifndef GPIO_interface_H
#define GPIO_interface_H
/******************************************************************************
* Includes
*******************************************************************************/


/******************************************************************************
* Preprocessor Constants
*******************************************************************************/
#define GPIO_FIRST_PIN	0
#define GPIO_LAST_PIN	7

/******************************************************************************
* Typedefs
*******************************************************************************/


/******************************************************************************
* Function Prototypes
*******************************************************************************/

/******************************************************************************
* Func Name   : GPIO_voidInit();
* Description :	Initialize DDRx , PORTx and PIN direction 
* Parameters  : void
* Return type : void 
******************************************************************************/
void GPIO_voidInit();
/******************************************************************************
* Func Name   : GPIO_voidSetPinDirection();
* Description :	Set diriction of pin
* Parameters  : copy_u8PortId - PORTA,PORTB,PORTC and PORTD-
                copy_u8PinNumber -PIN0 : PIN7-
                copy_u8PinDirection - INPUT_FLOATING, INPUT_PULLUP and OUTPUT
* Return type : void 
******************************************************************************/
void GPIO_voidSetPinDirection(u8 copy_u8PortId,u8 copy_u8PinNumber ,u8 copy_u8PinDirection);
/******************************************************************************
* Func Name   : GPIO_voidSetPinValue();
* Description :	Set Pin Value
* Parameters  : copy_u8PortId - PORTA,PORTB,PORTC and PORTD-
                copy_u8PinNumber -PIN0 : PIN7-
                copy_u8Value - HIGH OR LOW -
* Return type : void 
******************************************************************************/
void GPIO_voidSetPinValue(u8 copy_u8PortId,u8 copy_u8PinNumber ,u8 copy_u8Value);
/******************************************************************************
* Func Name   : GPIO_u8GetPinValue();
* Description :	Get Input Value
* Parameters  : copy_u8PortId - PORTA,PORTB,PORTC and PORTD-
                copy_u8PinNumber -PIN0 : PIN7-
* Return type : 0 or 1 from PINx 
******************************************************************************/
u8	GPIO_u8GetPinValue(u8 copy_u8PortId,u8 copy_u8PinNumber);
/******************************************************************************
* Func Name   : GPIO_voidSetPortDirection();
* Description :	Set diriction of Port
* Parameters  : copy_u8PortId - PORTA,PORTB,PORTC and PORTD-
                copy_u8PinDirection - INPUT_FLOATING, INPUT_PULLUP and OUTPUT
* Return type : void 
******************************************************************************/
void GPIO_voidSetPortDirection(u8 copy_u8PortId ,u8 copy_u8PortDirection);
/******************************************************************************
* Func Name   : GPIO_voidSetPortValue();
* Description :	Set Port Value
* Parameters  : copy_u8PortId - PORTA,PORTB,PORTC and PORTD-
                copy_u8Value - HIGH OR LOW -
* Return type : void 
******************************************************************************/
void GPIO_voidSetPortValue(u8 copy_u8PortId,u8 copy_u8Value);
/******************************************************************************
* Func Name   : GPIO_voidTogglePin();
* Description :	Toggle Pin
* Parameters  : copy_u8PortId - PORTA,PORTB,PORTC and PORTD-
                copy_u8PinNumber -PIN0 : PIN7-
* Return type : void 
******************************************************************************/
void GPIO_voidTogglePin(u8 copy_u8PortId,u8 copy_u8PinNumber);
#endif
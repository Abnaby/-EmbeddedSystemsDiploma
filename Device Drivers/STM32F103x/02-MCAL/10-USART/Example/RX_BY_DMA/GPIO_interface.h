/**
* @file GPIO_interface.h
* @author Mohamed Abd El-Naby (mahameda.naby@gmail.com) 
* @brief 
* @version 0.1
* @date 2022-10-25
*
*/
#ifndef GPIO_INTERFACE_H 
#define GPIO_INTERFACE_H 




/******************************************************************************
* Includes
*******************************************************************************/
#include "COMMON.h"



/******************************************************************************
* Preprocessor Constants
 *******************************************************************************/




/******************************************************************************
* Configuration Constants
*******************************************************************************/




/******************************************************************************
* Macros
*******************************************************************************/

		/*			PORT INPUT BIT CONFIGURATION  					*/

#define	GPIO_INPUT_ANALOG					0b0000
#define	GPIO_INPUT_FLOATING					0b0100
#define	GPIO_PULLUP_PULLDOWN				0b1000

		/*			PORT OUTPUT BIT CONFIGURATION  					*/

#define GPIO_OUTPUT_10MHZ_PUSH_PULL			0b0001
#define GPIO_OUTPUT_10MHZ_OPEN_DRAIN		0b0101
#define GPIO_OUTPUT_10MHZ_AF_PUSH_PULL		0b1001
#define GPIO_OUTPUT_10MHZ_AF_OPEN_DRAIN		0b1101

#define GPIO_OUTPUT_2MHZ_PUSH_PULL			0b0010
#define GPIO_OUTPUT_2MHZ_OPEN_DRAIN			0b0110
#define GPIO_OUTPUT_2MHZ_AF_PUSH_PULL		0b1010
#define GPIO_OUTPUT_2MHZ_AF_OPEN_DRAIN		0b1110

#define GPIO_OUTPUT_50MHZ_PUSH_PULL			0b0011
#define GPIO_OUTPUT_50MHZ_OPEN_DRAIN		0b0111
#define GPIO_OUTPUT_50MHZ_AF_PUSH_PULL		0b1011
#define GPIO_OUTPUT_50MHZ_AF_OPEN_DRAIN		0b1111






/******************************************************************************
* Typedefs
*******************************************************************************/

typedef enum
{
   GPIO_PULL_DOWN = 0,
   GPIO_PULL_UP
}GPIO_PULL_MODE_t;


/******************************************************************************
* Variables
*******************************************************************************/




/******************************************************************************
* Function Prototypes
*******************************************************************************/

/**
 * @brief Set Direction of Pin
 * 
 * @param Copy_u8Port   PORTA,PORTB,PORTC
 * @param Copy_u8Pin    PIN0 : PIN7
 * @param Copy_u8Mode   Select Mode Of Operation
 */
void GPIO_voidSetPinDirection	(u8 Copy_u8Port, Pin_t Copy_u8Pin , u8 Copy_u8Mode);

/**
 * @brief Set Direction of Port
 * 
 * @param Copy_u8Port   PORTA,PORTB,PORTC
 * @param Copy_u8Mode   Select Mode Of Operation
 */
void GPIO_voidSetPortDirection	(u8 Copy_u8Port, 				 u8 Copy_u8Mode);

/**
 * @brief Set Pin Value
 *  
 * @param Copy_u8Port PORTA,PORTB,PORTC
 * @param Copy_u8Pin  PIN0 : PIN7
 * @param Copy_u8Value HIGH/LOW
 */
void GPIO_voidSetPinValue(u8 Copy_u8Port, Pin_t Copy_u8Pin , u8 Copy_u8Value);
/**
 * @brief Set PORT Value
 *  
 * @param Copy_u8Port PORTA,PORTB,PORTC
 * @param Copy_u8Value HIGH/LOW
 */
void GPIO_voidSetPortValue		(u8 Copy_u8Port, u8 Copy_u8Value);
/**
 * @brief toggle pin Value
 *
 * @param Copy_u8Port PORTA,PORTB,PORTC
 * @param Copy_u8Pin  PIN0 : PIN7
 */
void GPIO_voidTogglePinValue	(u8 Copy_u8Port, Pin_t Copy_Pin);

/**
 * @brief GET PIN VALUE
 *
 * @param Copy_u8Port PORTA,PORTB,PORTC
 * @param Copy_u8Pin  PIN0 : PIN7
 */
u8 GPIO_u8GetPinValue (u8 Copy_u8Port, Pin_t Copy_Pin);
/**
 * @brief Select Pull Mode
 *
 * @param Copy_u8Port PORTA,PORTB,PORTC
 * @param Copy_u8Pin  PIN0 : PIN7
 * @param Copy_Mode select from @ref GPIO_PULL_MODE_t
 */
void GPIO_u8ChoosePullMode(u8 Copy_u8Port, Pin_t Copy_Pin, GPIO_PULL_MODE_t Copy_Mode);
#endif
/************************************* End of File ******************************************/

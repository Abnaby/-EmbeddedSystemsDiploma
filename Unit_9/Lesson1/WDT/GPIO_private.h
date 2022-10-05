/**************************************************************************/
/* Author	: Mohamed                                               	  */
/* Date		: 28 January 2021                                 		      */
/* Version	: V01							  							  */
/**************************************************************************/
#ifndef GPIO_private_H
#define GPIO_private_H

/******************************************************************************
* Preprocessor Constants
*******************************************************************************/

/******************************************************************************
* Configuration Constants
*******************************************************************************/
/*!<***************************Register Address for PORTA**********************/
#define GPIO_PORTA		*((volatile u8 *)(0x3B))
#define GPIO_DDRA       *((volatile u8 *)(0x3A))
#define GPIO_PINA       *((volatile u8 *)(0x39))
/*!<***************************Register Address for PORTB**********************/
#define GPIO_PORTB		*((volatile u8 *)(0x38))
#define GPIO_DDRB		*((volatile u8 *)(0x37))
#define GPIO_PINB		*((volatile u8 *)(0x36))
/*!<***************************Register Address for PORTC**********************/
#define GPIO_PORTC		*((volatile u8 *)(0x35))
#define GPIO_DDRC		*((volatile u8 *)(0x34))
#define GPIO_PINC		*((volatile u8 *)(0x33))
/*!<***************************Register Address for PORTD**********************/
#define GPIO_PORTD		*((volatile u8 *)(0x32))
#define GPIO_DDRD		*((volatile u8 *)(0x31))
#define GPIO_PIND		*((volatile u8 *)(0x30))
/*!<***************************Special Function I/O Register**********************/
#define GPIO_SFIOR		*((volatile u8 *)(0x50))



	
#endif
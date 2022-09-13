/**************************************************************************/
/* Author	: Mohamed                                               	  */
/* Date		: 15 February 2021                                 		      */
/* Version	: V02							  							  */
/**************************************************************************/

#ifndef MAPPING_H
#define MAPPING_H
/****************************************************      CPU CLK          *********************************************/
#define CPU_CLOCK_FREQ          (16000000UL)                    

/****************************************************      NULL DEF.          *********************************************/
#define NULL 0
/****************************************************      GPIOS          *********************************************/
/*  PORT AND PINS IN ATmage16A  */
#define	PORTA  0
#define	PORTB  1
#define	PORTC  2
#define	PORTD  3

#define	PIN0  0
#define	PIN1  1
#define	PIN2  2
#define	PIN3  3
#define	PIN4  4
#define	PIN5  5
#define	PIN6  6
#define	PIN7  7
/*  GPIO MODES  */
#define INPUT_FLOAT		0
#define INPUT_PULLUP	2
#define OUTPUT			1
/*  OUTPUT MODE */
#define LOW		0
#define HIGH	1

/*  SET AND CLEAR   */
#define SET 0Xff 
#define CLR 0X00 
/****************************************************      INTERRUPTS          *********************************************/
/*      EXTERNAL INTERRUPTS SENSE     */
#define EXT_INT0                    0
#define EXT_INT0_LOW_LEVEL          3
#define EXT_INT0_FALLING_EDGE       6
#define EXT_INT0_RISING_EDGE        9
#define EXT_INT0_LOGICAL_CHANGE     12

#define EXT_INT1                    15
#define EXT_INT1_LOW_LEVEL          18
#define EXT_INT1_FALLING_EDGE       21
#define EXT_INT1_RISING_EDGE        24
#define EXT_INT1_LOGICAL_CHANGE     27
#define EXT_INT2                    30
#define EXT_INT2_FALLING_EDGE       33
#define EXT_INT2_RISING_EDGE        36





#endif
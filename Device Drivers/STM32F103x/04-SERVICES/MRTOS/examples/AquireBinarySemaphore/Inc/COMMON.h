/**************************************************************************/
/* Author	: Mohamed                                                 */
/* Date		: 28 OCT 2022                                             */
/* Version	: V02							  */
/**************************************************************************/
#ifndef COMMON_H
#define COMMON_H

/************************	PORTS	**********************************/

#define PORTA	2
#define PORTB	3
#define PORTC	4

/************************	PINS	**********************************/
typedef enum
{
	PIN0 = 0 , 
	PIN1  , 
	PIN2  , 
	PIN3  , 
	PIN4  , 
	PIN5  , 
	PIN6  , 
	PIN7  , 
	PIN8  , 
	PIN9  , 
	PIN10 , 
	PIN11 , 
	PIN12 , 
	PIN13 , 
	PIN14 , 
	PIN15  
}Pin_t;

/************************* LOGIC ****************************************/
#define	HIGH								1
#define LOW									0

/************************* SCB PRIORITY	*********************************/
typedef enum
{
    SCB_16_GROUP_0_SUB_GROUP = 	(u32)0x05FA0300 ,   //0b011  -->  4 bits for group (IPR) ==> Group
    SCB_8_GROUP_2_SUB_GROUP	 =  (u32)0x05FA0400 ,   //0b100  -->  3 bits for group and 1 bit for sub
    SCB_4_GROUP_4_SUB_GROUP	 =  (u32)0x05FA0500 ,   //0b101  -->  2 bits for group and 2 bit for sun
    SCB_2_GROUP_8_SUB_GROUP	 =  (u32)0x05FA0600 ,   //0b110  -->  1 bit  for group and 3 bits for sub
    SCB_0_GROUP_16_SUB_GROUP =  (u32)0x05FA0700     //0b111  -->  0 bit for group and 4 bits for sub

}PriorityGrouping_t;

/************************ EXTERNAL INTERRUPT LINES	************************/ 
typedef enum
{
	EXTI_LINE0 = 0 ,
	EXTI_LINE1		,
	EXTI_LINE2		,
	EXTI_LINE3		,
	EXTI_LINE4		,
	EXTI_LINE5		,
	EXTI_LINE6		,
	EXTI_LINE7		,
	EXTI_LINE8		,
	EXTI_LINE9		,
	EXTI_LINE10		,
	EXTI_LINE11		,
	EXTI_LINE12		,
	EXTI_LINE13		,
	EXTI_LINE14		,
	EXTI_LINE15
}EXTI_Lines ; 
/************************* GLOBAL IRQs	*******************/
#define ENABLE_GLOB_IRQ		__asm volatile ("CPSIE i");
#define DISABLE_GLOB_IRQ	__asm volatile ("CPSID i");

#endif

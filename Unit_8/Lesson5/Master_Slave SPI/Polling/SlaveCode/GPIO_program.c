/**************************************************************************/
/* Author	: Mohamed                                               	  */
/* Date		: 28 January 2021                                 		      */
/* Version	: V01							  							  */
/**************************************************************************/

/******************************************************************************
* Includes
*******************************************************************************/
#include "BIT_MATH.h"
#include "STD_TYPES.h"
#include "MAPPING.h"

#include "GPIO_interface.h"
#include "GPIO_private.h"
#include "GPIO_config.h"

void GPIO_voidInit()
{
	GPIO_PORTA = CLR ;
	GPIO_DDRA = CLR ;
	GPIO_PINA = CLR ;
	GPIO_PORTB = CLR ;
	GPIO_DDRB = CLR ;
	GPIO_PINB= CLR ;
	GPIO_PORTC = CLR ;
	GPIO_DDRC= CLR ;
	GPIO_PINC = CLR ;
	GPIO_PORTD = CLR ;
	GPIO_DDRD = CLR ;
	GPIO_PIND = CLR ;
	
}

void GPIO_voidSetPinDirection(u8 copy_u8PortId,u8 copy_u8PinNumber ,u8 copy_u8PinDirection)
{
	if(copy_u8PinNumber >= GPIO_FIRST_PIN && copy_u8PinNumber <= GPIO_LAST_PIN)
	{
		switch(copy_u8PortId)
		{
			case PORTA :
				switch(copy_u8PinDirection)
				{
					case INPUT_FLOAT:
						/*	CLEAR DDxn AND PORTxn	*/
						CLR_BIT(GPIO_DDRA,copy_u8PinNumber);
						CLR_BIT(GPIO_PORTA,copy_u8PinNumber);
						break;
					case INPUT_PULLUP:
						/*	CLEAR DDxn AND SET PORTxn	*/
						CLR_BIT(GPIO_DDRA,copy_u8PinNumber);
						SET_BIT(GPIO_PORTA,copy_u8PinNumber);
						break;
					case OUTPUT:	
						/* SET DDxn	*/
						SET_BIT(GPIO_DDRA,copy_u8PinNumber);
						break;
					default:	break ;
				}
				break ;
			case PORTB :
				switch(copy_u8PinDirection)
				{
					case INPUT_FLOAT:
						/*	CLEAR DDxn AND PORTxn	*/
						CLR_BIT(GPIO_DDRB,copy_u8PinNumber);
						CLR_BIT(GPIO_PORTB,copy_u8PinNumber);
						break;
					case INPUT_PULLUP:
						/*	CLEAR DDxn AND SET PORTxn	*/
						CLR_BIT(GPIO_DDRB,copy_u8PinNumber);
						SET_BIT(GPIO_PORTB,copy_u8PinNumber);
						break;
					case OUTPUT:	
						/* SET DDxn	*/
						SET_BIT(GPIO_DDRB,copy_u8PinNumber);
						break;
					default:	break ;
				}	
				break ;
			case PORTC :
				switch(copy_u8PinDirection)
				{
					case INPUT_FLOAT:
						/*	CLEAR DDxn AND PORTxn	*/
						CLR_BIT(GPIO_DDRC,copy_u8PinNumber);
						CLR_BIT(GPIO_PORTC,copy_u8PinNumber);
						break;
					case INPUT_PULLUP:
						/*	CLEAR DDxn AND SET PORTxn	*/
						CLR_BIT(GPIO_DDRC,copy_u8PinNumber);
						SET_BIT(GPIO_PORTC,copy_u8PinNumber);
						break;
					case OUTPUT:	
						/* SET DDxn	*/
						SET_BIT(GPIO_DDRC,copy_u8PinNumber);
						break;
					default:	break ;
				}
				break ;
			case PORTD :
				switch(copy_u8PinDirection)
				{
					case INPUT_FLOAT:
						/*	CLEAR DDxn AND PORTxn	*/
						CLR_BIT(GPIO_DDRD,copy_u8PinNumber);
						CLR_BIT(GPIO_PORTD,copy_u8PinNumber);
						break;
					case INPUT_PULLUP:
						/*	CLEAR DDxn AND SET PORTxn	*/
						CLR_BIT(GPIO_DDRD,copy_u8PinNumber);
						SET_BIT(GPIO_PORTD,copy_u8PinNumber);
						break;
					case OUTPUT:	
						/* SET DDxn	*/
						SET_BIT(GPIO_DDRD,copy_u8PinNumber);
						break;
					default:	break ;
				}
				break ;
			default: break ;
		}
	}
	else
	{
		//<!TODO> ERROR STATE
	}
}
void GPIO_voidSetPinValue(u8 copy_u8PortId,u8 copy_u8PinNumber ,u8 copy_u8Value)
{
	if(copy_u8PinNumber >= GPIO_FIRST_PIN && copy_u8PinNumber <= GPIO_LAST_PIN)
	{
		switch(copy_u8PortId)
		{
			case PORTA :
				switch(copy_u8Value)
				{
					case HIGH:
						/*	SET PORTxn	*/
						SET_BIT(GPIO_PORTA,copy_u8PinNumber);
						break;
					case LOW:
						/*	CLEAR PORTxn	*/
						CLR_BIT(GPIO_PORTA,copy_u8PinNumber);
						break;
					default:	break ;
				}
				break ;
			case PORTB : 
				switch(copy_u8Value)
				{
					case HIGH:
						/*	SET PORTxn	*/
						SET_BIT(GPIO_PORTB,copy_u8PinNumber);
						break;
					case LOW:
						/*	CLEAR PORTxn	*/
						CLR_BIT(GPIO_PORTB,copy_u8PinNumber);
						break;
					default:	break ;
				}
				break ;
			case PORTC :
				switch(copy_u8Value)
				{
					case HIGH:
						/*	SET PORTxn	*/
						SET_BIT(GPIO_PORTC,copy_u8PinNumber);
						break;
					case LOW:
						/*	CLEAR PORTxn	*/
						CLR_BIT(GPIO_PORTC,copy_u8PinNumber);
						break;
					default:	break ;
				}
				break ;
			case PORTD :
				switch(copy_u8Value)
				{
					case HIGH:
						/*	SET PORTxn	*/
						SET_BIT(GPIO_PORTD,copy_u8PinNumber);
						break;
					case LOW:
						/*	CLEAR PORTxn	*/
						CLR_BIT(GPIO_PORTD,copy_u8PinNumber);
						break;
					default:	break ;
				}
				break ;
			default: break ;
		}
	}
	else
	{
		//<!TODO> ERROR STATE
	}
}
u8	GPIO_u8GetPinValue(u8 copy_u8PortId,u8 copy_u8PinNumber)
{
	u8 LOC_u8PinValue = 0 ;
	if(copy_u8PinNumber >= GPIO_FIRST_PIN && copy_u8PinNumber <= GPIO_LAST_PIN)
	{
		switch(copy_u8PortId)
		{
			case PORTA :
				LOC_u8PinValue =   GET_BIT(GPIO_PINA,copy_u8PinNumber);
				break ;
			case PORTB : 
				LOC_u8PinValue =   GET_BIT(GPIO_PINB,copy_u8PinNumber);
				break ;
			case PORTC :
				LOC_u8PinValue =   GET_BIT(GPIO_PINC,copy_u8PinNumber);
				break ;
			case PORTD :
				LOC_u8PinValue = GET_BIT(GPIO_PIND,copy_u8PinNumber);
				break ;
			default : break;
		}
	}
	return LOC_u8PinValue ; 
}

void GPIO_voidSetPortDirection(u8 copy_u8PortId ,u8 copy_u8PortDirection)
{
		switch(copy_u8PortId)
		{
			case PORTA :
				switch(copy_u8PortDirection)
				{
					case INPUT_FLOAT:
						/*	CLEAR DDxn AND PORTxn	*/
						GPIO_DDRA = CLR ;
						GPIO_PORTA = CLR ;					
						break;
					case INPUT_PULLUP:
						/*	CLEAR DDxn AND SET PORTxn	*/
						GPIO_DDRA = CLR ;
						GPIO_PORTA = SET ;
						break;
					case OUTPUT:	
						/* SET DDxn	*/
						GPIO_DDRA = SET ;
						break;
					default:	break ;
				}
				break ;
			case PORTB :
				switch(copy_u8PortDirection)
				{
					case INPUT_FLOAT:
						/*	CLEAR DDxn AND PORTxn	*/
						GPIO_DDRB = CLR ;
						GPIO_PORTB = CLR ;
						break;
					case INPUT_PULLUP:
						/*	CLEAR DDxn AND SET PORTxn	*/
						GPIO_DDRB = CLR ;
						GPIO_PORTB = SET ;
						break;
					case OUTPUT:	
						/* SET DDxn	*/
						GPIO_DDRB = SET ;
						break;
					default:	break ;
				}	
				break ;
			case PORTC :
				switch(copy_u8PortDirection)
				{
					case INPUT_FLOAT:
						/*	CLEAR DDxn AND PORTxn	*/
						GPIO_DDRC = CLR ;
						GPIO_PORTC = CLR ;
						break;
					case INPUT_PULLUP:
						/*	CLEAR DDxn AND SET PORTxn	*/
						GPIO_DDRC = CLR ;
						GPIO_PORTC = SET ;
						break;
					case OUTPUT:	
						/* SET DDxn	*/
						GPIO_DDRC = SET ;
						break;
					default:	break ;
				}
				break ;
			case PORTD :
				switch(copy_u8PortDirection)
				{
					case INPUT_FLOAT:
						/*	CLEAR DDxn AND PORTxn	*/
						GPIO_DDRD = CLR ;
						GPIO_PORTD = CLR ;
						break;
					case INPUT_PULLUP:
						/*	CLEAR DDxn AND SET PORTxn	*/
						GPIO_DDRD = CLR ;
						GPIO_PORTD = SET ;
						break;
					case OUTPUT:	
						/* SET DDxn	*/
						GPIO_DDRD = SET ;
						break;
					default:	break ;
				}
				break ;
			default: break ;
			
		}

}

void GPIO_voidSetPortValue(u8 copy_u8PortId,u8 copy_u8Value)
{
		switch(copy_u8PortId)
		{
			case PORTA :
				switch(copy_u8Value)
				{
					case HIGH:
						/*	CLEAR DDxn AND PORTxn	*/
						GPIO_PORTA = SET;
						break;
					case LOW:
						/*	CLEAR DDxn AND SET PORTxn	*/
						GPIO_PORTA = CLR;
						break;
					default:	break ;
				}
				break ;
			case PORTB : 
				switch(copy_u8Value)
				{
					case HIGH:
						/*	CLEAR DDxn AND PORTxn	*/
						GPIO_PORTB = SET;
						break;
					case LOW:
						/*	CLEAR DDxn AND SET PORTxn	*/
						GPIO_PORTB = CLR;
						break;
					default:	break ;
				}
				break ;
			case PORTC :
				switch(copy_u8Value)
				{
					case HIGH:
						/*	CLEAR DDxn AND PORTxn	*/
						GPIO_PORTC = SET ; 
						break;
					case LOW:
						/*	CLEAR DDxn AND SET PORTxn	*/
						GPIO_PORTC = CLR ;
						break;
					default:	break ;
				}
				break ;
			case PORTD :
				switch(copy_u8Value)
				{
					case HIGH:
						/*	CLEAR DDxn AND PORTxn	*/
						GPIO_PORTD = SET ; 
						break;
					case LOW:
						/*	CLEAR DDxn AND SET PORTxn	*/
						GPIO_PORTD = CLR ;
						break;
					default:	break ;
				}
				break ;
			default: break ;
		}

}
void GPIO_voidTogglePin(u8 copy_u8PortId,u8 copy_u8PinNumber)
{
	if(copy_u8PinNumber >= GPIO_FIRST_PIN && copy_u8PinNumber <= GPIO_LAST_PIN)
	{
		switch(copy_u8PortId)
		{
			case PORTA : 
				TOG_BIT(GPIO_PORTA,copy_u8PinNumber);
				break;
			case PORTB :
				TOG_BIT(GPIO_PORTB,copy_u8PinNumber);
				break;
			case PORTC :
				TOG_BIT(GPIO_PORTC,copy_u8PinNumber);
				break;
			case PORTD :
				TOG_BIT(GPIO_PORTD,copy_u8PinNumber);
			    break;
			default: break;
		}
		
	}
	else
	{
		//<!TODO> ERROR STATE
	}
}
void GPIO_voidSPI_MasterInit(void)
{
	// Set MOSI, SS,and SCK output, all others input
	#define MASTER_MOSI_PIN		PORTB	,	PIN5	,	OUTPUT
	#define MASTER_SCK_PIN		PORTB	,	PIN7	,	OUTPUT
	#define MASTER_MISO_PIN		PORTB	,	PIN6	,	INPUT_FLOAT
	#define MASTER_SS_PIN		PORTB	,	PIN4	,	OUTPUT
	GPIO_voidSetPinDirection(MASTER_MOSI_PIN) ;
	GPIO_voidSetPinDirection(MASTER_SCK_PIN) ;
	GPIO_voidSetPinDirection(MASTER_MISO_PIN) ;
	GPIO_voidSetPinDirection(MASTER_SS_PIN) ;
	
	
}

void GPIO_voidSPI_SlaveInit(void)
{
	// Set MISO output, all others input
	#define SLAVE_MISO_PIN		PORTB	,	PIN6	,	OUTPUT
	#define SLAVE_MOSI_PIN		PORTB	,	PIN5	,	INPUT_FLOAT
	#define SLAVE_SCK_PIN		PORTB	,	PIN7	,	INPUT_FLOAT
	#define SLAVE_SS_PIN		PORTB	,	PIN4	,	INPUT_FLOAT
	GPIO_voidSetPinDirection(SLAVE_MOSI_PIN) ;
	GPIO_voidSetPinDirection(SLAVE_SCK_PIN) ;
	GPIO_voidSetPinDirection(SLAVE_MISO_PIN) ;
	GPIO_voidSetPinDirection(SLAVE_SS_PIN) ;
	
}


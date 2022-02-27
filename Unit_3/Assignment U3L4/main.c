
#include "Platform_Types.h"
#define Base_RCC 	0x400FE000
#define GPIO_PORTF 	0x40025000
#define SYSCTL_RCGC2 	*(volatile uint32 *)(Base_RCC + 0x108)
#define GPIOF_DATA_R	*(volatile uint32 *)(GPIO_PORTF + 0x3FC)
#define GPIOF_DIR_R		*(volatile uint32 *)(GPIO_PORTF + 0x400)
#define GPIOF_DEN_R		*(volatile uint32 *)(GPIO_PORTF + 0x51C)
void main(void){
	/*******************SETUP****************/
	volatile uint32 delayC ; 
	SYSCTL_RCGC2 = 0x00000020;
	for (delayC = 0 ; delayC < 200 ; delayC++) ;
	GPIOF_DIR_R |= (1<<3) ;
	GPIOF_DEN_R |= (1<<3) ; 

	while(1){
		GPIOF_DATA_R |= (1<<3) ; 
		for (delayC = 0 ; delayC < 200 ; delayC++) ;
		GPIOF_DATA_R &= ~(1<<3) ; 
		for (delayC = 0 ; delayC < 200 ; delayC++) ;
	}
}

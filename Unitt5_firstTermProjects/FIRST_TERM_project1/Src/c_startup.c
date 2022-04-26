#include "Platform_Types.h"
//#define SP	0x20001000	/*	START of STACK POINTER	*/
 
/*
	STARTUP_FUNC
		1- Disable All Int
		2- Define Int vector secions 
		3- Init Mem and Hardware
		4- Copy data from ROM -> RAM like 
			.text 
		5- Init data areas 
		6- Init Stack
		7- Enable Int
		8- call main
*/
extern uint32 _STACK_TOP ; 	
extern void main(void);
void resetHandler(void);
void defaultHandler(void);
void NMI_Handler(void)__attribute__((weak,alias("defaultHandler"))) ;  /* Weak --> to be overwritten, alias to make decleration emitted to be alias fo another fcn */
void HardFault_Handler(void)__attribute__((weak,alias("defaultHandler"))) ; 
void MMFault_Handler(void)__attribute__((weak,alias("defaultHandler"))) ; 
void BusFault_Handler(void)__attribute__((weak,alias("defaultHandler"))) ; 
void UsageFault_Handler(void)__attribute__((weak,alias("defaultHandler"))) ; 
void RESEVERD_Handler(void)__attribute__((weak,alias("defaultHandler"))) ; 
void SVcall_Handler(void)__attribute__((weak,alias("defaultHandler"))) ; 
void DebugReserved_Handler(void)__attribute__((weak,alias("defaultHandler"))) ; 
void PendSV_Handler(void)__attribute__((weak,alias("defaultHandler"))) ; 
void SysTick_Handler(void)__attribute__((weak,alias("defaultHandler"))) ; 
void IRQ0_Handler(void)__attribute__((weak,alias("defaultHandler"))) ; 


uint32 vectors[] __attribute__((section(".vectors"))) = /* add this array in section vectors that hold 1st address in flash */
{
	(uint32) &_STACK_TOP , 
	(uint32) &resetHandler,					/* 1 Reset */
	(uint32) &NMI_Handler,					/* 2 NMI */
	(uint32) &HardFault_Handler,			/* 3 Hard Fault */
	(uint32) &MMFault_Handler,				/* 4 MM Fault */
	(uint32) &BusFault_Handler,				/* 5 Bus Fault */
	(uint32) &UsageFault_Handler,			/* 6 Usage Fault */
	(uint32) &RESEVERD_Handler,				/* 7 RESEVERD */
	(uint32) &RESEVERD_Handler,				/* 8 RESEVERD */
	(uint32) &RESEVERD_Handler,				/* 9 RESEVERD */
	(uint32) &RESEVERD_Handler,				/* 10 RESEVERD */
	(uint32) &SVcall_Handler,				/* 11 SV call */
	(uint32) &DebugReserved_Handler,		/* 12 Debug reserved */
	(uint32) &RESEVERD_Handler,				/* 13 RESEVERD */
	(uint32) &PendSV_Handler,				/* 14 PendSV */
	(uint32) &SysTick_Handler,				/* 15 SysTick */
	(uint32) &IRQ0_Handler					/* 16 IRQ0 ...*/
};

void defaultHandler(void)
{
	resetHandler();
}
extern uint32 _E_TEXT_SEC ; 	
extern uint32 _S_DATA_SEC ; 
extern uint32 _E_DATA_SEC ; 
extern uint32 _S_BSS_SEC ; 
extern uint32 _E_BSS_SEC ; 

void resetHandler(void)
{
	/*									.data FORM ROM TO RAM										*/
	uint16 DATA_SIZE = 	(uint16 *)&_E_DATA_SEC - (uint16 *)&_S_DATA_SEC ;  // uint16 because sram rang 0x0x2000 0000:0x2000 1000 so we use the LS part
	uint16 * P_SRC = (uint16 *)&_E_TEXT_SEC ; 
	uint16 * P_DST = (uint16 *)&_S_DATA_SEC ; 
	
	for(uint16 i = 0 ; i < DATA_SIZE ; i++)
	{
		*((uint16 *)(P_DST++)) = *((uint16 *)(P_SRC++));
	}
	/*									bss SECTION									*/
	uint16 BSS_SIZE = 	(uint16 *)&_E_DATA_SEC - (uint16 *)&_S_DATA_SEC ; 
	P_DST = (uint16 *)&_S_BSS_SEC ; 
	for(uint16 i = 0 ; i < BSS_SIZE ; i++)
	{
		*((uint16 *)(P_DST++)) = ((uint16)0) ;
	}
	/*									JUMMP MAIN										*/
	main();
}
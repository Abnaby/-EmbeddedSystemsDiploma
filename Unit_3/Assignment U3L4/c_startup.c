#include "Platform_Types.h"
#define SP	0x20001000	/*	START of STACK POINTER	*/
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
/***************************************** RESEARVE STACK SIZE **********************************/
// MAKE IT GLOBAL UNINTIALIZED TO ADD IT ON BSS SECTION ON RAM 
static uint32 global_u32Stack[256]; // 1024B --> 256*4(SIZE OF UINT32) STATIC FOR MAKE ITS SCOPE IN THIS SIZE

void (*vectors[])() __attribute__((section(".vectors"))) = /* add this array in section vectors that hold 1st address in flash */
{
	 (void (*)(void)) ((uint32)global_u32Stack + sizeof(global_u32Stack)) ,  // cast to pointer to fcn because of array hold adress of func
	 &resetHandler,					/* 1 Reset */
	 &NMI_Handler,					/* 2 NMI */
	 &HardFault_Handler,			/* 3 Hard Fault */
	 &MMFault_Handler,				/* 4 MM Fault */
	 &BusFault_Handler,				/* 5 Bus Fault */
	 &UsageFault_Handler,			/* 6 Usage Fault */
	 &RESEVERD_Handler,				/* 7 RESEVERD */
	 &RESEVERD_Handler,				/* 8 RESEVERD */
	 &RESEVERD_Handler,				/* 9 RESEVERD */
	 &RESEVERD_Handler,				/* 10 RESEVERD */
	 &SVcall_Handler,				/* 11 SV call */
	 &DebugReserved_Handler,		/* 12 Debug reserved */
	 &RESEVERD_Handler,				/* 13 RESEVERD */
	 &PendSV_Handler,				/* 14 PendSV */
	 &SysTick_Handler,				/* 15 SysTick */
	 &IRQ0_Handler					/* 16 IRQ0 ...*/
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
/*********************************************************************************
	@ Author    : Mohamed Abd El-Naby
	@ Version   : V01                                                               
	@ Date      : 1 December 2021                              
*********************************************************************************/
/* _Heap_Size = 0x200; */     				 /* required amount of 512B heap  */
_Stack_Size = 0x1000; 				 /* required amount of 4kB stack */
ENTRY(resetHandler)				     /* Entry Point */

/* Specify Memory Areas	*/
MEMORY
{
	FLASH (rx) :	ORIGIN = 0x08000000 , LENGTH = 32K
	SRAM  (rwx) :	ORIGIN = 0x20000000 , LENGTH = 10K
}

/* Define Output Sections */
SECTIONS
{

	/* The program code and other data goes into FLASH */
	.text  : 
	{
		. = ALIGN(4); 
		_TEXT_S_ = . ; 
		*(.vectors*)								/* .rodata* sections (constants, strings, etc.) */
		*(.text*)	 								/* .text* sections (code) */
		_E_TEXT_SEC = . ; 
		. = ALIGN(4); 
	}>FLASH 

	/* Initialized data sections goes into RAM, load LMA copy after code */
	.data : 
	{
		. = ALIGN(4); 
		_S_DATA_SEC = . ;
		*(.data*)
		*(.rodata*)
		_E_DATA_SEC = . ;
		. = ALIGN(4); 
	}> SRAM AT>FLASH 

  	/* Uninitialized data section */
	.bss : 
	{
		. = ALIGN(4); 
		_S_BSS_SEC = . ;
		*(.bss)
		_E_BSS_SEC = .;
		. = ALIGN(4); 
	}>SRAM
	/* size of Heap and Stack */
    /*  . = . + _Heap_Size;  */
    . = . + _Stack_Size;
    _STACK_TOP = . ;
    . = ALIGN(4);
	
}
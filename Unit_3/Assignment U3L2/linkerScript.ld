/*********************************************************************************
	@ Author    : Mohamed Abd El-Naby
	@ Version   : V01                                                               
	@ Date      : 1 December 2021                              
*********************************************************************************/
ENTRY(reset)
MEMORY
{
	Mem (rwx):ORIGIN = 0x00000000 , LENGTH = 64M
}
SECTIONS
{
	. = 0x10000 ; 
	.startup . : 
	{
		startup.o(.text) 
	}> Mem
	.text : 
	{
		*(.text)
	}> Mem 
	.data : 
	{
		*(.data)
	}> Mem
	.bss : 
	{
		*(.bss)
	}> Mem
	.common : 
	{
		*(COMMON)
	}> Mem
	. = . + 0x1000 ; /* 4K Stack Memory	*/
	stack_top = . ; 
}
	MEMORY
	{
		flash (rx):ORIGIN = 0x00000000  , LENGTH = 512M
		sram (rwx):ORIGIN = 0x20000000  , LENGTH = 512M
	}
	SECTIONS
	{
		.text : {
			*(.vectors*)
			*(.text*)
			*(.rodata*)
			_E_TEXT_SEC = . ; 
		} > flash 
		.data : {
			_S_DATA_SEC = . ;
			*(.data*)
			_E_DATA_SEC = . ;
		} > sram AT> flash 
		.bss : {
			_S_BSS_SEC = . ;
			*(.bss*)
			_E_BSS_SEC = . ;
		} > sram 
	. = ALIGN(4); 
	}


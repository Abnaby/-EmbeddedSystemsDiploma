/*********************************************************************************
	@ Author    : Mohamed Abd El-Naby
	@ Version   : V01                                                               
	@ Date      : 7 Novamber 2021  
	@ INFO		 : CPU_TYPE				32-BIT										
			 	   CPU_BIT_ORDER        LSB_FIRST                               
*********************************************************************************/


#ifndef PLATFORM_TYPES_H
#define PLATFORM_TYPES_H
/************************************* BOOL EXPRESSION	************************/
/*
	@name 		 :	boolean
	@Description : 	This standard AUTOSAR type shall only be used together with the definitions TRUE 
					and FALSE
	@Range 		 : TRUE		1
				   FALSE    0		
*/
typedef unsigned char boolean ;
/**
 * In case of in-built compiler support of the symbols, redefinitions shall be
 * avoided using a conditional check.
 * These symbols shall only be used in conjunction with the boolean type
 * defined in Platform_Types.h.
 */
//	TRUE DEFENTION
#ifndef TRUE	/* conditional check */
#define TRUE	((boolean)1)
#endif
//	FALSE DEFENATION
#ifndef FALSE	/* conditional check */
#define FALSE	((boolean)0)
#endif

/************************************ SIGNED EXPRESSION ************************/
/*
	@name 		 : sint8
	@Description : This standard AUTOSAR type shall be of 8 bit signed. 
	@Range		 : 7 bit + 1 bit sign --> 
											-128..+127
											0x80..0x7F
*/
typedef signed char 		sint8 ;

/*
	@name 		 : sint16
	@Description : This standard AUTOSAR type shall be of 16 bit signed. 
	@Range		 : 15 bit + 1 bit sign -->
											32768..+32767
											0x8000..0x7FFF
*/
typedef signed short 		sint16;
/*
	@name 		 : sint32
	@Description : This standard AUTOSAR type shall be 32 bit signed. 
	@Range 		 : 31 bit + 1 bit sign -->
											-2147483648..+2147483647
											0x80000000..0x7FFFFFFF
*/
typedef signed long 		sint32;
/*
	@Novamber	 : sint64
	@Description : This standard AUTOSAR type shall be 64 bit signed.
	@Range		 : 63 bit + 1 bit sign -->
											-9223372036854775808..9223372036854775807
											0x8000000000000000..0x7FFFFFFFFFFFFFFF
*/
typedef signed long long 	sint64;


/************************************ UNSIGNED EXPRESSION ************************/
/*
	@Novamber	 : uint8
	@Description : This standard AUTOSAR type shall be of 8 bit unsigned. 
	@Range		 : 8 bit --> 
							0..255
							0x00..0xFF
*/
typedef unsigned char 		uint8 ;

/*
	@Novamber	 : uint16
	@Description : This standard AUTOSAR type shall be of 16 bit unsigned. 
	@Range		 : 16 bit -->
								0..65535
								0x0000..0xFFFF
*/
typedef unsigned short 		uint16;

/*
	@Novamber	 : uint32
	@Description : This standard AUTOSAR type shall be 32 bit unsigned. 
	@Range		 : 32 bit -->
								0..4294967295
								0x00000000..0xFFFFFFFF
*/
typedef unsigned long 		uint32;
/*
	@Novamber	 : uint64
	@Description : This standard AUTOSAR type shall be 64 bit unsigned. 
	@Range		 : 64 bit -->
								0..18446744073709551615
								0x0000000000000000..0xFFFFFFFFFFFFFFFF
*/

typedef unsigned long long 	uint64;

/************************************* DECIMAL POINT ****************************/
typedef float float32 ; 
typedef double double64; 




#endif	/* PLATFORM_TYPES_H */
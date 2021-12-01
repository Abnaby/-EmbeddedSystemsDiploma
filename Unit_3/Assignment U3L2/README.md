### Introduction 
Making a simple bare-metal application sends a string using a UART channel using VersatilePB microcontroller based on arm926ej-s.
#####The objective in this lab  
dealing with cross-toolchain like arm toolchain, startup files and how to build it, and writing simple linker script for ARM architecture.
#####Tools
* Cross-toolchain : GNU ARM Cross-ToolChain
                    arm-none-eabi-gcc (GNU Tools for Arm Embedded Processors 7-2017-q4-major) 7.2.1 20170904 (release) [ARM/embedded-7-branch revision 255204]
### Development 
#### Files 
![Working Files](https://i.ibb.co/F8D4YwL/Capture.png)  
#### Platform_Types.h
The platform types for STMicroelectronics ST30 could have the following mapping to the ANSI C types: 
  * CPU TYPE: 32-BIT
  * CPU_BIT_ORDER: LSB_FIRST
  * CPU_BYTE_ORDER: LOW_BYTE_FIRST 
![Little Endian](https://i.ibb.co/WFcbsTX/Capture.png)  
source :[AUTOSAR Document](https://www.autosar.org/fileadmin/user_upload/standards/classic/4-3/AUTOSAR_SWS_PlatformTypes.pdf)*
#### Platform_Types

| Types | Range in Bits | Range in Decimal |   
| ------ | ------ |------ |
| boolean | ------ |TRUE, FALSE |
| sint8 | 7 bit + 1 bit sign |-128..+127|
| sint16 | 15 bit + 1 bit sign |-32768..+32767 |
| sint32 | 31 bit + 1 bit sign | -2147483648..+2147483647 |
| sint64 | 63 bit + 1 bit sign |-9223372036854775808..9223372036854775807 |
| uint8 | 8 bit |0..255 |
| uint16 |  16 bit  |0..65535|
| uint32 | 32 bit |0..4294967295 |
| uint64 | 64 bit |0..18446744073709551615 |
| float32 | 32 bit |----------------- |
| double64 | 64 bit |----------------- |

#### app.c
![app.c](https://i.ibb.co/XSSCdpg/Capture.png)  
1. Includes files  
    1.1 Platrorm_Types.h for predefined types.
    1.2 uart.h for UART chennal.
2. Define global array for string `Global_uint8StringBuffer` be send by UART chennal 0 .
3. in main function:   
    3.1 make boolean var to track error state in function return `Local_booleanUART_ErrorState`.  
    3.2 Used API UART_booleanSendString and send my global string ` UART_booleanSendString(Global_uint8StringBuffer)`  
    3.3 booling in `Local_booleanUART_ErrorState` if it zero it will try to send string again.  
#### uart.h
![uart.h](https://i.ibb.co/zhMqFvj/Capture.png)  
1. Header guards
   Header guards are designed to ensure that the contents of a given header file are not copied more than once into any single file, to prevent duplicate definitions.
2. Define the base address of UART0 and DR register to write in its FIFO to send the string.
3. API Header to send a string from app.c

#### uart.c
![uart.c](https://i.ibb.co/9nqf6cq/Capture.png)  
1. Includes files  
    1.1 Platrorm_Types.h for predefined types.  
    1.2 uart.h: UART Header file.
2. ` UART_booleanSendString(uint8 *P_txString)` : 
   1. description: API put string into FIFO buffer(DR register).
   2. parameters: `uint8 *P_txString` pointer to string be transmit.
   3. return type : `boolean` for trace error it will be 0 if 1st char is null  
### Generate *.o files
 ![files.o](https://i.ibb.co/2nTPNFh/Capture.png)  
 1) `arm-none-eabi-gcc.exe`: GNU Arm Embedded Toolchain is a ready-to-use.  
 2) Options:    
    a) `-c` :  Compile and assemble, but do not link.  
    b) `-g` :  Enable debug information.  
    c) `-I` . : Header file exist in the same directory.   
3)  `-mcpu=arm926ej-s` : processor type.  
4) converte `.c` file to `.o` (Relocatable Binary), so we have 2 .c file app.c and uart.c so we compiled and assembled it.
### Navigate *.o files (Relocatable Image)
![files.o](https://i.ibb.co/XywLCgS/Capture.png)  
1) `arm-none-eabi-objdump.exe` : Toolchain binary utilities.  
2) `-h` : --[section-] headers  Display the contents of the section headers.  
3) Sections:   
    I) Vertical :   
        &emsp;a) `.text`:  assembly.  
        &emsp;b) `.data`: for global initialized data.   (exist in flash)  
        &emsp;c) `.bss` : for global/static uninitialized data. (Doesn't exist in flash add on RAM by knowing its size)  
        &emsp;d) `form 4 to 9` : debug info. 
        anothor sections :  
        &emsp;e) `.rodata` : form const data.  
    II) Horz. :   
         &emsp;a) `size`: the size of the section in bytes.  
         &emsp;b) `VMA`: Virtual Mem. address of the output section.  
         &emsp;c) `LMA`: Load Mem. address of the output section.
### startup file content   
![startup.s](https://i.ibb.co/JCPnDbp/su-Content.png)  
1) `global` refer to the global section to be seen from other files.
2) Define sections like :  
    a) `reset` section to be executed first.    
        &emsp;    `ldr` --> load stack pointer to address stack_top (defined in linker script)  
        &emsp;    `bl` --> branch label to main  
    b) `stop` section will be executed after the execution of the reset section.  

### Compile startup file    
![startup.s](https://i.ibb.co/tQNrJQb/su.png)  
 `arm-none-eabi-as.exe` : Toolchain binary utilities for assambler
### Disassembly of startup file
![startup.s](https://i.ibb.co/Lg1djjB/Disass-of-su.png)  

### Linking files with LinkerScript
![Linking](https://i.ibb.co/9bB3PVq/ld.png)  
- Target dependent 
- `-T` argumant to pass our own linker script.  
### Entry point and header sections 
![Entry point](https://i.ibb.co/ch9J9pY/readelf.png)  
as set in linker script  
![linker file ](https://i.ibb.co/d4jMLV6/entery.png)  
## Header sections
![Header](https://i.ibb.co/cCJnWRP/section-Headers.png)  

### Symbols 
![Symbols](https://i.ibb.co/3TnjH42/Symboles.png)  
&emsp;`D` refere to Data section   
&emsp;`T` refere to text section  
&emsp;`U` refere to unresolved   
![Symbols](https://i.ibb.co/x6GmXzt/symbols-in-elf.png)  
all `symboles` are resolved

### QEMU Simulation

![QEMU](https://i.ibb.co/cFFKhsy/simulation.png)  



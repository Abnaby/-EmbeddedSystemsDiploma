# ARM-V7 LAB 1 
## CODE
```c

#include "STD_TYPES.h"


u8 a= 1 ,
		b = 2 ;
u16 c ;

int main(void){

	__asm("nop\n \tnop");

	__asm("add %[out1], %[in1], %[in2]"
			: [out1] "=r" (c)    // Input-parameters
			: [in1] "r"  (a)  ,	 //	Output-parameters
			  [in2] "r"  (b)
			: "r0"				// Don't Use R0
			  );

	__asm("nop\n \tnop");

	while(1){

	}

}

```
## Explanation
	At First Load the address of variable a in RAM in r3 -General Purpose Register-
	because the a is globally initialized,So due to the startup .data section at flashing time, it will be in ROM but in run time it will be in RAM.
![image](https://drive.google.com/uc?export=download&id=1MuuX6k-XCG95JsfR2H_akHtO0eiBx_KY)

	After Load Address of the variable a in RAM to R3 than get the value of variable a 
	from RAM 

![image](https://drive.google.com/uc?export=download&id=1umMsfX7ldhk93JSFzd_s_I23ZZLC29eZ)

	Repeat operation for variable b 
	Then perform the ADD instruction.
![image](https://drive.google.com/uc?export=download&id=10c9af-S0oKgfFERQeGmVvARBtY8kKVaR)

	After that store the result in variable c by storing the address of the variable in RAM in
	the R2 register, then store the value -result- in this address.

## Full Description 
![image](https://drive.google.com/uc?export=download&id=1oVNZZFCg3vBq9pcudRBP3Z3dF68igNhh)

## Contributing  
Bug reports, feature requests, and so on are always welcome. Feel free to leave a note in the Issues section.

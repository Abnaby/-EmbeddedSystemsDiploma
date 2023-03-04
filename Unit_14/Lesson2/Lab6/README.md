# ARM-V7 LAB 6

## Explanation
### 1- Read Control Register and save the value in C Variable while CPU In thread Mode
	MRS Is a 32-bit instruction, its mission is moving special register values 
	to general register 
![image](https://drive.google.com/uc?export=download&id=1QEeAzbVOOi_I3TpOZxZp-RQhEw8E9DyU)

	Load the value of special register named CONTROL to general purpose registed
	named R3.
![image](https://drive.google.com/uc?export=download&id=1ALTFv886ZP5LAfGdt3fM19dI6qFJ3n4m)

	Load the address of variable Glob_u32ControlReg in RAM in r2 -General Purpose Register-
	because the a is globally initialized,So due to the startup .data section at flashing time, it will be in ROM but in run time it will be in RAM.

![image](https://drive.google.com/uc?export=download&id=1bhL6Lzuy168WIEtKuLgm1lvVQc3j4I0F)

	So we have the address of the variable in R2 and the values of CONTROL in R3
	perform store operation to store the values or R3 into the address stored in R2
![image](https://drive.google.com/uc?export=download&id=1lasZ0JH6ZVhx0iSmKmSpUw4qxaM8y4Z1)

### 2- Read xPSR Register and save the value in C Variable while CPU In Handler Mode
	Perform the same steps but when execute ISR 

![image](https://drive.google.com/uc?export=download&id=1pMQBFzFSNjgon3Wn4LJhNNXqoPMhAD2k)


## Contributing  
Bug reports, feature requests, and so on are always welcome. Feel free to leave a note in the Issues section.

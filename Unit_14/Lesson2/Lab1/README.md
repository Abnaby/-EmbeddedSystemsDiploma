# ARM-V7 LAB 1 
## TASK
```s
                                    ;************   CODE    ************;
RESET
			; Initialize stack pointer
			; COPY DATA ROM --> RAM 
			; Reserve BSS in RAM 
			B		main ; Branch to main symbol
main
			MOV		R0 , #5
			BL		subtract
			B		termination
			
subtract
			SUB		R0 , R0 , #1 	; R0 = R0 -1
			CMP		R0 , #0
			BNE		subtract
			MOV		PC , LR
			
termination

```
![image](https://drive.google.com/uc?export=download&id=1NZ7ChlL_unQkcOagSilbqico9RykaXCr)

## Simulation [GIF]

![image](https://drive.google.com/uc?export=download&id=14s2VHEeIqLLNDtx-8BLYx8gEVJvJHYgB)



## Contributing  
Bug reports, feature requests, and so on are always welcome. Feel free to leave a note in the Issues section.

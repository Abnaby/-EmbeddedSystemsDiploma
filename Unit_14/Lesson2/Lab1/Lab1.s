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

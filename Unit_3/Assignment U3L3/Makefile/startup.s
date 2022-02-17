@@ Author    : Mohamed Abd El-Naby
@@ Version   : V01  
@@ Date      : 1 December 2021

.global reset
reset: 
	ldr sp, = stack_top
	bl main
stop:
	b stop


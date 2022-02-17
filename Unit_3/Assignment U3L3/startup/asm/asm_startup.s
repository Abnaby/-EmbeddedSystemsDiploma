.section .vectors
.word 0x20001000		/* stack top address */
.word _reset			/* 1 Reset */
.word Vector_handler	/* 2 NMI */
.word Vector_handler	/* 3 Hard Fault */
.word Vector_handler	/* 4 MM Fault */
.word Vector_handler	/* 5 Bus Fault */
.word Vector_handler	/* 6 Usage Fault */
.word Vector_handler	/* 7 RESEVERD */
.word Vector_handler	/* 8 RESEVERD */
.word Vector_handler	/* 9 RESEVERD */
.word Vector_handler	/* 10 RESEVERD */
.word Vector_handler	/* 11 SV call */
.word Vector_handler	/* 12 Debug reserved */
.word Vector_handler	/* 13 RESEVERD */
.word Vector_handler	/* 14 PendSV */
.word Vector_handler	/* 15 SysTick */
.word Vector_handler	/* 16 IRQ0 ...*/

.thumb_func
.section .text
_reset:
	bl main
	b .
Vector_handler:
	b _reset


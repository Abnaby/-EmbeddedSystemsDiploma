
lab1_GPIO_OUTPUT.elf:     file format elf32-littlearm


Disassembly of section .isr_vector:

08000000 <g_pfnVectors>:
 8000000:	20002800 	andcs	r2, r0, r0, lsl #16
 8000004:	08000839 	stmdaeq	r0, {r0, r3, r4, r5, fp}
 8000008:	08000889 	stmdaeq	r0, {r0, r3, r7, fp}
 800000c:	08000821 	stmdaeq	r0, {r0, r5, fp}
 8000010:	08000889 	stmdaeq	r0, {r0, r3, r7, fp}
 8000014:	08000889 	stmdaeq	r0, {r0, r3, r7, fp}
 8000018:	08000889 	stmdaeq	r0, {r0, r3, r7, fp}
	...
 800002c:	080007e1 	stmdaeq	r0, {r0, r5, r6, r7, r8, r9, sl}
 8000030:	08000889 	stmdaeq	r0, {r0, r3, r7, fp}
 8000034:	00000000 	andeq	r0, r0, r0
 8000038:	08000889 	stmdaeq	r0, {r0, r3, r7, fp}
 800003c:	08000651 	stmdaeq	r0, {r0, r4, r6, r9, sl}
 8000040:	08000889 	stmdaeq	r0, {r0, r3, r7, fp}
 8000044:	08000889 	stmdaeq	r0, {r0, r3, r7, fp}
 8000048:	08000889 	stmdaeq	r0, {r0, r3, r7, fp}
 800004c:	08000889 	stmdaeq	r0, {r0, r3, r7, fp}
 8000050:	08000889 	stmdaeq	r0, {r0, r3, r7, fp}
 8000054:	08000889 	stmdaeq	r0, {r0, r3, r7, fp}
 8000058:	080002e9 	stmdaeq	r0, {r0, r3, r5, r6, r7, r9}
 800005c:	0800030d 	stmdaeq	r0, {r0, r2, r3, r8, r9}
 8000060:	08000331 	stmdaeq	r0, {r0, r4, r5, r8, r9}
 8000064:	08000355 	stmdaeq	r0, {r0, r2, r4, r6, r8, r9}
 8000068:	08000379 	stmdaeq	r0, {r0, r3, r4, r5, r6, r8, r9}
 800006c:	08000889 	stmdaeq	r0, {r0, r3, r7, fp}
 8000070:	08000889 	stmdaeq	r0, {r0, r3, r7, fp}
 8000074:	08000889 	stmdaeq	r0, {r0, r3, r7, fp}
 8000078:	08000889 	stmdaeq	r0, {r0, r3, r7, fp}
 800007c:	08000889 	stmdaeq	r0, {r0, r3, r7, fp}
 8000080:	08000889 	stmdaeq	r0, {r0, r3, r7, fp}
 8000084:	08000889 	stmdaeq	r0, {r0, r3, r7, fp}
 8000088:	08000889 	stmdaeq	r0, {r0, r3, r7, fp}
 800008c:	08000889 	stmdaeq	r0, {r0, r3, r7, fp}
 8000090:	08000889 	stmdaeq	r0, {r0, r3, r7, fp}
 8000094:	08000889 	stmdaeq	r0, {r0, r3, r7, fp}
 8000098:	08000889 	stmdaeq	r0, {r0, r3, r7, fp}
 800009c:	08000889 	stmdaeq	r0, {r0, r3, r7, fp}
 80000a0:	08000889 	stmdaeq	r0, {r0, r3, r7, fp}
 80000a4:	08000889 	stmdaeq	r0, {r0, r3, r7, fp}
 80000a8:	08000889 	stmdaeq	r0, {r0, r3, r7, fp}
 80000ac:	08000889 	stmdaeq	r0, {r0, r3, r7, fp}
 80000b0:	08000889 	stmdaeq	r0, {r0, r3, r7, fp}
 80000b4:	08000889 	stmdaeq	r0, {r0, r3, r7, fp}
 80000b8:	08000889 	stmdaeq	r0, {r0, r3, r7, fp}
 80000bc:	08000889 	stmdaeq	r0, {r0, r3, r7, fp}
 80000c0:	08000889 	stmdaeq	r0, {r0, r3, r7, fp}
 80000c4:	08000889 	stmdaeq	r0, {r0, r3, r7, fp}
 80000c8:	08000889 	stmdaeq	r0, {r0, r3, r7, fp}
 80000cc:	08000889 	stmdaeq	r0, {r0, r3, r7, fp}
 80000d0:	08000889 	stmdaeq	r0, {r0, r3, r7, fp}
 80000d4:	080006b1 	stmdaeq	r0, {r0, r4, r5, r7, r9, sl}
 80000d8:	080006e9 	stmdaeq	r0, {r0, r3, r5, r6, r7, r9, sl}
 80000dc:	08000721 	stmdaeq	r0, {r0, r5, r8, r9, sl}
 80000e0:	08000889 	stmdaeq	r0, {r0, r3, r7, fp}
 80000e4:	08000889 	stmdaeq	r0, {r0, r3, r7, fp}
 80000e8:	00000000 	andeq	r0, r0, r0
 80000ec:	08000889 	stmdaeq	r0, {r0, r3, r7, fp}
 80000f0:	08000889 	stmdaeq	r0, {r0, r3, r7, fp}
 80000f4:	08000889 	stmdaeq	r0, {r0, r3, r7, fp}
 80000f8:	08000889 	stmdaeq	r0, {r0, r3, r7, fp}
 80000fc:	08000889 	stmdaeq	r0, {r0, r3, r7, fp}
 8000100:	08000889 	stmdaeq	r0, {r0, r3, r7, fp}
 8000104:	08000889 	stmdaeq	r0, {r0, r3, r7, fp}
 8000108:	08000889 	stmdaeq	r0, {r0, r3, r7, fp}
 800010c:	08000889 	stmdaeq	r0, {r0, r3, r7, fp}
 8000110:	08000889 	stmdaeq	r0, {r0, r3, r7, fp}
 8000114:	08000889 	stmdaeq	r0, {r0, r3, r7, fp}
 8000118:	08000889 	stmdaeq	r0, {r0, r3, r7, fp}
 800011c:	08000889 	stmdaeq	r0, {r0, r3, r7, fp}
 8000120:	08000889 	stmdaeq	r0, {r0, r3, r7, fp}
 8000124:	08000889 	stmdaeq	r0, {r0, r3, r7, fp}
 8000128:	08000889 	stmdaeq	r0, {r0, r3, r7, fp}
 800012c:	08000889 	stmdaeq	r0, {r0, r3, r7, fp}

Disassembly of section .text:

08000130 <__do_global_dtors_aux>:
 8000130:	b510      	push	{r4, lr}
 8000132:	4c05      	ldr	r4, [pc, #20]	; (8000148 <__do_global_dtors_aux+0x18>)
 8000134:	7823      	ldrb	r3, [r4, #0]
 8000136:	b933      	cbnz	r3, 8000146 <__do_global_dtors_aux+0x16>
 8000138:	4b04      	ldr	r3, [pc, #16]	; (800014c <__do_global_dtors_aux+0x1c>)
 800013a:	b113      	cbz	r3, 8000142 <__do_global_dtors_aux+0x12>
 800013c:	4804      	ldr	r0, [pc, #16]	; (8000150 <__do_global_dtors_aux+0x20>)
 800013e:	f3af 8000 	nop.w
 8000142:	2301      	movs	r3, #1
 8000144:	7023      	strb	r3, [r4, #0]
 8000146:	bd10      	pop	{r4, pc}
 8000148:	20000000 	andcs	r0, r0, r0
 800014c:	00000000 	andeq	r0, r0, r0
 8000150:	080008d4 	stmdaeq	r0, {r2, r4, r6, r7, fp}

08000154 <frame_dummy>:
 8000154:	b508      	push	{r3, lr}
 8000156:	4b03      	ldr	r3, [pc, #12]	; (8000164 <frame_dummy+0x10>)
 8000158:	b11b      	cbz	r3, 8000162 <frame_dummy+0xe>
 800015a:	4903      	ldr	r1, [pc, #12]	; (8000168 <frame_dummy+0x14>)
 800015c:	4803      	ldr	r0, [pc, #12]	; (800016c <frame_dummy+0x18>)
 800015e:	f3af 8000 	nop.w
 8000162:	bd08      	pop	{r3, pc}
 8000164:	00000000 	andeq	r0, r0, r0
 8000168:	20000004 	andcs	r0, r0, r4
 800016c:	080008d4 	stmdaeq	r0, {r2, r4, r6, r7, fp}

08000170 <AFIO_voidEXTIConfiguration>:
 8000170:	b480      	push	{r7}
 8000172:	b085      	sub	sp, #20
 8000174:	af00      	add	r7, sp, #0
 8000176:	4603      	mov	r3, r0
 8000178:	460a      	mov	r2, r1
 800017a:	71fb      	strb	r3, [r7, #7]
 800017c:	4613      	mov	r3, r2
 800017e:	71bb      	strb	r3, [r7, #6]
 8000180:	79bb      	ldrb	r3, [r7, #6]
 8000182:	3b02      	subs	r3, #2
 8000184:	71bb      	strb	r3, [r7, #6]
 8000186:	2300      	movs	r3, #0
 8000188:	73fb      	strb	r3, [r7, #15]
 800018a:	2300      	movs	r3, #0
 800018c:	73bb      	strb	r3, [r7, #14]
 800018e:	79fb      	ldrb	r3, [r7, #7]
 8000190:	089b      	lsrs	r3, r3, #2
 8000192:	73fb      	strb	r3, [r7, #15]
 8000194:	79fb      	ldrb	r3, [r7, #7]
 8000196:	f003 0303 	and.w	r3, r3, #3
 800019a:	73bb      	strb	r3, [r7, #14]
 800019c:	4a12      	ldr	r2, [pc, #72]	; (80001e8 <AFIO_voidEXTIConfiguration+0x78>)
 800019e:	7bfb      	ldrb	r3, [r7, #15]
 80001a0:	3302      	adds	r3, #2
 80001a2:	f852 2023 	ldr.w	r2, [r2, r3, lsl #2]
 80001a6:	7bbb      	ldrb	r3, [r7, #14]
 80001a8:	210f      	movs	r1, #15
 80001aa:	fa01 f303 	lsl.w	r3, r1, r3
 80001ae:	43db      	mvns	r3, r3
 80001b0:	4618      	mov	r0, r3
 80001b2:	490d      	ldr	r1, [pc, #52]	; (80001e8 <AFIO_voidEXTIConfiguration+0x78>)
 80001b4:	7bfb      	ldrb	r3, [r7, #15]
 80001b6:	4002      	ands	r2, r0
 80001b8:	3302      	adds	r3, #2
 80001ba:	f841 2023 	str.w	r2, [r1, r3, lsl #2]
 80001be:	4a0a      	ldr	r2, [pc, #40]	; (80001e8 <AFIO_voidEXTIConfiguration+0x78>)
 80001c0:	7bfb      	ldrb	r3, [r7, #15]
 80001c2:	3302      	adds	r3, #2
 80001c4:	f852 2023 	ldr.w	r2, [r2, r3, lsl #2]
 80001c8:	79b9      	ldrb	r1, [r7, #6]
 80001ca:	7bbb      	ldrb	r3, [r7, #14]
 80001cc:	fa01 f303 	lsl.w	r3, r1, r3
 80001d0:	4618      	mov	r0, r3
 80001d2:	4905      	ldr	r1, [pc, #20]	; (80001e8 <AFIO_voidEXTIConfiguration+0x78>)
 80001d4:	7bfb      	ldrb	r3, [r7, #15]
 80001d6:	4302      	orrs	r2, r0
 80001d8:	3302      	adds	r3, #2
 80001da:	f841 2023 	str.w	r2, [r1, r3, lsl #2]
 80001de:	bf00      	nop
 80001e0:	3714      	adds	r7, #20
 80001e2:	46bd      	mov	sp, r7
 80001e4:	bc80      	pop	{r7}
 80001e6:	4770      	bx	lr
 80001e8:	40010400 	andmi	r0, r1, r0, lsl #8

080001ec <EXTI_voidInitLine>:
 80001ec:	b480      	push	{r7}
 80001ee:	b083      	sub	sp, #12
 80001f0:	af00      	add	r7, sp, #0
 80001f2:	4603      	mov	r3, r0
 80001f4:	460a      	mov	r2, r1
 80001f6:	71fb      	strb	r3, [r7, #7]
 80001f8:	4613      	mov	r3, r2
 80001fa:	71bb      	strb	r3, [r7, #6]
 80001fc:	79bb      	ldrb	r3, [r7, #6]
 80001fe:	2b01      	cmp	r3, #1
 8000200:	d019      	beq.n	8000236 <EXTI_voidInitLine+0x4a>
 8000202:	2b02      	cmp	r3, #2
 8000204:	d02c      	beq.n	8000260 <EXTI_voidInitLine+0x74>
 8000206:	2b00      	cmp	r3, #0
 8000208:	d000      	beq.n	800020c <EXTI_voidInitLine+0x20>
 800020a:	e03d      	b.n	8000288 <EXTI_voidInitLine+0x9c>
 800020c:	4b21      	ldr	r3, [pc, #132]	; (8000294 <EXTI_voidInitLine+0xa8>)
 800020e:	68db      	ldr	r3, [r3, #12]
 8000210:	79fa      	ldrb	r2, [r7, #7]
 8000212:	2101      	movs	r1, #1
 8000214:	fa01 f202 	lsl.w	r2, r1, r2
 8000218:	43d2      	mvns	r2, r2
 800021a:	4611      	mov	r1, r2
 800021c:	4a1d      	ldr	r2, [pc, #116]	; (8000294 <EXTI_voidInitLine+0xa8>)
 800021e:	400b      	ands	r3, r1
 8000220:	60d3      	str	r3, [r2, #12]
 8000222:	4b1c      	ldr	r3, [pc, #112]	; (8000294 <EXTI_voidInitLine+0xa8>)
 8000224:	689b      	ldr	r3, [r3, #8]
 8000226:	79fa      	ldrb	r2, [r7, #7]
 8000228:	2101      	movs	r1, #1
 800022a:	fa01 f202 	lsl.w	r2, r1, r2
 800022e:	4611      	mov	r1, r2
 8000230:	4a18      	ldr	r2, [pc, #96]	; (8000294 <EXTI_voidInitLine+0xa8>)
 8000232:	430b      	orrs	r3, r1
 8000234:	6093      	str	r3, [r2, #8]
 8000236:	4b17      	ldr	r3, [pc, #92]	; (8000294 <EXTI_voidInitLine+0xa8>)
 8000238:	68db      	ldr	r3, [r3, #12]
 800023a:	79fa      	ldrb	r2, [r7, #7]
 800023c:	2101      	movs	r1, #1
 800023e:	fa01 f202 	lsl.w	r2, r1, r2
 8000242:	4611      	mov	r1, r2
 8000244:	4a13      	ldr	r2, [pc, #76]	; (8000294 <EXTI_voidInitLine+0xa8>)
 8000246:	430b      	orrs	r3, r1
 8000248:	60d3      	str	r3, [r2, #12]
 800024a:	4b12      	ldr	r3, [pc, #72]	; (8000294 <EXTI_voidInitLine+0xa8>)
 800024c:	689b      	ldr	r3, [r3, #8]
 800024e:	79fa      	ldrb	r2, [r7, #7]
 8000250:	2101      	movs	r1, #1
 8000252:	fa01 f202 	lsl.w	r2, r1, r2
 8000256:	43d2      	mvns	r2, r2
 8000258:	4611      	mov	r1, r2
 800025a:	4a0e      	ldr	r2, [pc, #56]	; (8000294 <EXTI_voidInitLine+0xa8>)
 800025c:	400b      	ands	r3, r1
 800025e:	6093      	str	r3, [r2, #8]
 8000260:	4b0c      	ldr	r3, [pc, #48]	; (8000294 <EXTI_voidInitLine+0xa8>)
 8000262:	689b      	ldr	r3, [r3, #8]
 8000264:	79fa      	ldrb	r2, [r7, #7]
 8000266:	2101      	movs	r1, #1
 8000268:	fa01 f202 	lsl.w	r2, r1, r2
 800026c:	4611      	mov	r1, r2
 800026e:	4a09      	ldr	r2, [pc, #36]	; (8000294 <EXTI_voidInitLine+0xa8>)
 8000270:	430b      	orrs	r3, r1
 8000272:	6093      	str	r3, [r2, #8]
 8000274:	4b07      	ldr	r3, [pc, #28]	; (8000294 <EXTI_voidInitLine+0xa8>)
 8000276:	68db      	ldr	r3, [r3, #12]
 8000278:	79fa      	ldrb	r2, [r7, #7]
 800027a:	2101      	movs	r1, #1
 800027c:	fa01 f202 	lsl.w	r2, r1, r2
 8000280:	4611      	mov	r1, r2
 8000282:	4a04      	ldr	r2, [pc, #16]	; (8000294 <EXTI_voidInitLine+0xa8>)
 8000284:	430b      	orrs	r3, r1
 8000286:	60d3      	str	r3, [r2, #12]
 8000288:	bf00      	nop
 800028a:	bf00      	nop
 800028c:	370c      	adds	r7, #12
 800028e:	46bd      	mov	sp, r7
 8000290:	bc80      	pop	{r7}
 8000292:	4770      	bx	lr
 8000294:	40010400 	andmi	r0, r1, r0, lsl #8

08000298 <EXTI_voidEnableEXTI>:
 8000298:	b480      	push	{r7}
 800029a:	b083      	sub	sp, #12
 800029c:	af00      	add	r7, sp, #0
 800029e:	4603      	mov	r3, r0
 80002a0:	71fb      	strb	r3, [r7, #7]
 80002a2:	4b07      	ldr	r3, [pc, #28]	; (80002c0 <EXTI_voidEnableEXTI+0x28>)
 80002a4:	681b      	ldr	r3, [r3, #0]
 80002a6:	79fa      	ldrb	r2, [r7, #7]
 80002a8:	2101      	movs	r1, #1
 80002aa:	fa01 f202 	lsl.w	r2, r1, r2
 80002ae:	4611      	mov	r1, r2
 80002b0:	4a03      	ldr	r2, [pc, #12]	; (80002c0 <EXTI_voidEnableEXTI+0x28>)
 80002b2:	430b      	orrs	r3, r1
 80002b4:	6013      	str	r3, [r2, #0]
 80002b6:	bf00      	nop
 80002b8:	370c      	adds	r7, #12
 80002ba:	46bd      	mov	sp, r7
 80002bc:	bc80      	pop	{r7}
 80002be:	4770      	bx	lr
 80002c0:	40010400 	andmi	r0, r1, r0, lsl #8

080002c4 <EXTI_voidSetCallBackFCN>:
 80002c4:	b480      	push	{r7}
 80002c6:	b083      	sub	sp, #12
 80002c8:	af00      	add	r7, sp, #0
 80002ca:	4603      	mov	r3, r0
 80002cc:	6039      	str	r1, [r7, #0]
 80002ce:	71fb      	strb	r3, [r7, #7]
 80002d0:	79fb      	ldrb	r3, [r7, #7]
 80002d2:	4904      	ldr	r1, [pc, #16]	; (80002e4 <EXTI_voidSetCallBackFCN+0x20>)
 80002d4:	683a      	ldr	r2, [r7, #0]
 80002d6:	f841 2023 	str.w	r2, [r1, r3, lsl #2]
 80002da:	bf00      	nop
 80002dc:	370c      	adds	r7, #12
 80002de:	46bd      	mov	sp, r7
 80002e0:	bc80      	pop	{r7}
 80002e2:	4770      	bx	lr
 80002e4:	2000001c 	andcs	r0, r0, ip, lsl r0

080002e8 <EXTI0_IRQHandler>:
 80002e8:	b580      	push	{r7, lr}
 80002ea:	af00      	add	r7, sp, #0
 80002ec:	4b05      	ldr	r3, [pc, #20]	; (8000304 <EXTI0_IRQHandler+0x1c>)
 80002ee:	681b      	ldr	r3, [r3, #0]
 80002f0:	4798      	blx	r3
 80002f2:	4b05      	ldr	r3, [pc, #20]	; (8000308 <EXTI0_IRQHandler+0x20>)
 80002f4:	695b      	ldr	r3, [r3, #20]
 80002f6:	4a04      	ldr	r2, [pc, #16]	; (8000308 <EXTI0_IRQHandler+0x20>)
 80002f8:	f043 0301 	orr.w	r3, r3, #1
 80002fc:	6153      	str	r3, [r2, #20]
 80002fe:	bf00      	nop
 8000300:	bd80      	pop	{r7, pc}
 8000302:	bf00      	nop
 8000304:	2000001c 	andcs	r0, r0, ip, lsl r0
 8000308:	40010400 	andmi	r0, r1, r0, lsl #8

0800030c <EXTI1_IRQHandler>:
 800030c:	b580      	push	{r7, lr}
 800030e:	af00      	add	r7, sp, #0
 8000310:	4b05      	ldr	r3, [pc, #20]	; (8000328 <EXTI1_IRQHandler+0x1c>)
 8000312:	685b      	ldr	r3, [r3, #4]
 8000314:	4798      	blx	r3
 8000316:	4b05      	ldr	r3, [pc, #20]	; (800032c <EXTI1_IRQHandler+0x20>)
 8000318:	695b      	ldr	r3, [r3, #20]
 800031a:	4a04      	ldr	r2, [pc, #16]	; (800032c <EXTI1_IRQHandler+0x20>)
 800031c:	f043 0302 	orr.w	r3, r3, #2
 8000320:	6153      	str	r3, [r2, #20]
 8000322:	bf00      	nop
 8000324:	bd80      	pop	{r7, pc}
 8000326:	bf00      	nop
 8000328:	2000001c 	andcs	r0, r0, ip, lsl r0
 800032c:	40010400 	andmi	r0, r1, r0, lsl #8

08000330 <EXTI2_IRQHandler>:
 8000330:	b580      	push	{r7, lr}
 8000332:	af00      	add	r7, sp, #0
 8000334:	4b05      	ldr	r3, [pc, #20]	; (800034c <EXTI2_IRQHandler+0x1c>)
 8000336:	689b      	ldr	r3, [r3, #8]
 8000338:	4798      	blx	r3
 800033a:	4b05      	ldr	r3, [pc, #20]	; (8000350 <EXTI2_IRQHandler+0x20>)
 800033c:	695b      	ldr	r3, [r3, #20]
 800033e:	4a04      	ldr	r2, [pc, #16]	; (8000350 <EXTI2_IRQHandler+0x20>)
 8000340:	f043 0304 	orr.w	r3, r3, #4
 8000344:	6153      	str	r3, [r2, #20]
 8000346:	bf00      	nop
 8000348:	bd80      	pop	{r7, pc}
 800034a:	bf00      	nop
 800034c:	2000001c 	andcs	r0, r0, ip, lsl r0
 8000350:	40010400 	andmi	r0, r1, r0, lsl #8

08000354 <EXTI3_IRQHandler>:
 8000354:	b580      	push	{r7, lr}
 8000356:	af00      	add	r7, sp, #0
 8000358:	4b05      	ldr	r3, [pc, #20]	; (8000370 <EXTI3_IRQHandler+0x1c>)
 800035a:	68db      	ldr	r3, [r3, #12]
 800035c:	4798      	blx	r3
 800035e:	4b05      	ldr	r3, [pc, #20]	; (8000374 <EXTI3_IRQHandler+0x20>)
 8000360:	695b      	ldr	r3, [r3, #20]
 8000362:	4a04      	ldr	r2, [pc, #16]	; (8000374 <EXTI3_IRQHandler+0x20>)
 8000364:	f043 0308 	orr.w	r3, r3, #8
 8000368:	6153      	str	r3, [r2, #20]
 800036a:	bf00      	nop
 800036c:	bd80      	pop	{r7, pc}
 800036e:	bf00      	nop
 8000370:	2000001c 	andcs	r0, r0, ip, lsl r0
 8000374:	40010400 	andmi	r0, r1, r0, lsl #8

08000378 <EXTI4_IRQHandler>:
 8000378:	b580      	push	{r7, lr}
 800037a:	af00      	add	r7, sp, #0
 800037c:	4b05      	ldr	r3, [pc, #20]	; (8000394 <EXTI4_IRQHandler+0x1c>)
 800037e:	691b      	ldr	r3, [r3, #16]
 8000380:	4798      	blx	r3
 8000382:	4b05      	ldr	r3, [pc, #20]	; (8000398 <EXTI4_IRQHandler+0x20>)
 8000384:	695b      	ldr	r3, [r3, #20]
 8000386:	4a04      	ldr	r2, [pc, #16]	; (8000398 <EXTI4_IRQHandler+0x20>)
 8000388:	f043 0310 	orr.w	r3, r3, #16
 800038c:	6153      	str	r3, [r2, #20]
 800038e:	bf00      	nop
 8000390:	bd80      	pop	{r7, pc}
 8000392:	bf00      	nop
 8000394:	2000001c 	andcs	r0, r0, ip, lsl r0
 8000398:	40010400 	andmi	r0, r1, r0, lsl #8

0800039c <GPIO_voidSetPinDirection>:
 800039c:	b480      	push	{r7}
 800039e:	b083      	sub	sp, #12
 80003a0:	af00      	add	r7, sp, #0
 80003a2:	4603      	mov	r3, r0
 80003a4:	71fb      	strb	r3, [r7, #7]
 80003a6:	460b      	mov	r3, r1
 80003a8:	71bb      	strb	r3, [r7, #6]
 80003aa:	4613      	mov	r3, r2
 80003ac:	717b      	strb	r3, [r7, #5]
 80003ae:	79fb      	ldrb	r3, [r7, #7]
 80003b0:	2b03      	cmp	r3, #3
 80003b2:	d03e      	beq.n	8000432 <GPIO_voidSetPinDirection+0x96>
 80003b4:	2b04      	cmp	r3, #4
 80003b6:	d075      	beq.n	80004a4 <GPIO_voidSetPinDirection+0x108>
 80003b8:	2b02      	cmp	r3, #2
 80003ba:	d000      	beq.n	80003be <GPIO_voidSetPinDirection+0x22>
 80003bc:	e0a9      	b.n	8000512 <GPIO_voidSetPinDirection+0x176>
 80003be:	79bb      	ldrb	r3, [r7, #6]
 80003c0:	2b07      	cmp	r3, #7
 80003c2:	d817      	bhi.n	80003f4 <GPIO_voidSetPinDirection+0x58>
 80003c4:	4b55      	ldr	r3, [pc, #340]	; (800051c <GPIO_voidSetPinDirection+0x180>)
 80003c6:	681b      	ldr	r3, [r3, #0]
 80003c8:	79ba      	ldrb	r2, [r7, #6]
 80003ca:	0092      	lsls	r2, r2, #2
 80003cc:	210f      	movs	r1, #15
 80003ce:	fa01 f202 	lsl.w	r2, r1, r2
 80003d2:	43d2      	mvns	r2, r2
 80003d4:	4611      	mov	r1, r2
 80003d6:	4a51      	ldr	r2, [pc, #324]	; (800051c <GPIO_voidSetPinDirection+0x180>)
 80003d8:	400b      	ands	r3, r1
 80003da:	6013      	str	r3, [r2, #0]
 80003dc:	4b4f      	ldr	r3, [pc, #316]	; (800051c <GPIO_voidSetPinDirection+0x180>)
 80003de:	681b      	ldr	r3, [r3, #0]
 80003e0:	7979      	ldrb	r1, [r7, #5]
 80003e2:	79ba      	ldrb	r2, [r7, #6]
 80003e4:	0092      	lsls	r2, r2, #2
 80003e6:	fa01 f202 	lsl.w	r2, r1, r2
 80003ea:	4611      	mov	r1, r2
 80003ec:	4a4b      	ldr	r2, [pc, #300]	; (800051c <GPIO_voidSetPinDirection+0x180>)
 80003ee:	430b      	orrs	r3, r1
 80003f0:	6013      	str	r3, [r2, #0]
 80003f2:	e089      	b.n	8000508 <GPIO_voidSetPinDirection+0x16c>
 80003f4:	79bb      	ldrb	r3, [r7, #6]
 80003f6:	2b0f      	cmp	r3, #15
 80003f8:	f200 8086 	bhi.w	8000508 <GPIO_voidSetPinDirection+0x16c>
 80003fc:	79bb      	ldrb	r3, [r7, #6]
 80003fe:	3b08      	subs	r3, #8
 8000400:	71bb      	strb	r3, [r7, #6]
 8000402:	4b46      	ldr	r3, [pc, #280]	; (800051c <GPIO_voidSetPinDirection+0x180>)
 8000404:	685b      	ldr	r3, [r3, #4]
 8000406:	79ba      	ldrb	r2, [r7, #6]
 8000408:	0092      	lsls	r2, r2, #2
 800040a:	210f      	movs	r1, #15
 800040c:	fa01 f202 	lsl.w	r2, r1, r2
 8000410:	43d2      	mvns	r2, r2
 8000412:	4611      	mov	r1, r2
 8000414:	4a41      	ldr	r2, [pc, #260]	; (800051c <GPIO_voidSetPinDirection+0x180>)
 8000416:	400b      	ands	r3, r1
 8000418:	6053      	str	r3, [r2, #4]
 800041a:	4b40      	ldr	r3, [pc, #256]	; (800051c <GPIO_voidSetPinDirection+0x180>)
 800041c:	685b      	ldr	r3, [r3, #4]
 800041e:	7979      	ldrb	r1, [r7, #5]
 8000420:	79ba      	ldrb	r2, [r7, #6]
 8000422:	0092      	lsls	r2, r2, #2
 8000424:	fa01 f202 	lsl.w	r2, r1, r2
 8000428:	4611      	mov	r1, r2
 800042a:	4a3c      	ldr	r2, [pc, #240]	; (800051c <GPIO_voidSetPinDirection+0x180>)
 800042c:	430b      	orrs	r3, r1
 800042e:	6053      	str	r3, [r2, #4]
 8000430:	e06a      	b.n	8000508 <GPIO_voidSetPinDirection+0x16c>
 8000432:	79bb      	ldrb	r3, [r7, #6]
 8000434:	2b07      	cmp	r3, #7
 8000436:	d817      	bhi.n	8000468 <GPIO_voidSetPinDirection+0xcc>
 8000438:	4b39      	ldr	r3, [pc, #228]	; (8000520 <GPIO_voidSetPinDirection+0x184>)
 800043a:	681b      	ldr	r3, [r3, #0]
 800043c:	79ba      	ldrb	r2, [r7, #6]
 800043e:	0092      	lsls	r2, r2, #2
 8000440:	210f      	movs	r1, #15
 8000442:	fa01 f202 	lsl.w	r2, r1, r2
 8000446:	43d2      	mvns	r2, r2
 8000448:	4611      	mov	r1, r2
 800044a:	4a35      	ldr	r2, [pc, #212]	; (8000520 <GPIO_voidSetPinDirection+0x184>)
 800044c:	400b      	ands	r3, r1
 800044e:	6013      	str	r3, [r2, #0]
 8000450:	4b33      	ldr	r3, [pc, #204]	; (8000520 <GPIO_voidSetPinDirection+0x184>)
 8000452:	681b      	ldr	r3, [r3, #0]
 8000454:	7979      	ldrb	r1, [r7, #5]
 8000456:	79ba      	ldrb	r2, [r7, #6]
 8000458:	0092      	lsls	r2, r2, #2
 800045a:	fa01 f202 	lsl.w	r2, r1, r2
 800045e:	4611      	mov	r1, r2
 8000460:	4a2f      	ldr	r2, [pc, #188]	; (8000520 <GPIO_voidSetPinDirection+0x184>)
 8000462:	430b      	orrs	r3, r1
 8000464:	6013      	str	r3, [r2, #0]
 8000466:	e051      	b.n	800050c <GPIO_voidSetPinDirection+0x170>
 8000468:	79bb      	ldrb	r3, [r7, #6]
 800046a:	2b0f      	cmp	r3, #15
 800046c:	d84e      	bhi.n	800050c <GPIO_voidSetPinDirection+0x170>
 800046e:	79bb      	ldrb	r3, [r7, #6]
 8000470:	3b08      	subs	r3, #8
 8000472:	71bb      	strb	r3, [r7, #6]
 8000474:	4b2a      	ldr	r3, [pc, #168]	; (8000520 <GPIO_voidSetPinDirection+0x184>)
 8000476:	685b      	ldr	r3, [r3, #4]
 8000478:	79ba      	ldrb	r2, [r7, #6]
 800047a:	0092      	lsls	r2, r2, #2
 800047c:	210f      	movs	r1, #15
 800047e:	fa01 f202 	lsl.w	r2, r1, r2
 8000482:	43d2      	mvns	r2, r2
 8000484:	4611      	mov	r1, r2
 8000486:	4a26      	ldr	r2, [pc, #152]	; (8000520 <GPIO_voidSetPinDirection+0x184>)
 8000488:	400b      	ands	r3, r1
 800048a:	6053      	str	r3, [r2, #4]
 800048c:	4b24      	ldr	r3, [pc, #144]	; (8000520 <GPIO_voidSetPinDirection+0x184>)
 800048e:	685b      	ldr	r3, [r3, #4]
 8000490:	7979      	ldrb	r1, [r7, #5]
 8000492:	79ba      	ldrb	r2, [r7, #6]
 8000494:	0092      	lsls	r2, r2, #2
 8000496:	fa01 f202 	lsl.w	r2, r1, r2
 800049a:	4611      	mov	r1, r2
 800049c:	4a20      	ldr	r2, [pc, #128]	; (8000520 <GPIO_voidSetPinDirection+0x184>)
 800049e:	430b      	orrs	r3, r1
 80004a0:	6053      	str	r3, [r2, #4]
 80004a2:	e033      	b.n	800050c <GPIO_voidSetPinDirection+0x170>
 80004a4:	79bb      	ldrb	r3, [r7, #6]
 80004a6:	2b07      	cmp	r3, #7
 80004a8:	d810      	bhi.n	80004cc <GPIO_voidSetPinDirection+0x130>
 80004aa:	4b1e      	ldr	r3, [pc, #120]	; (8000524 <GPIO_voidSetPinDirection+0x188>)
 80004ac:	681b      	ldr	r3, [r3, #0]
 80004ae:	4b1d      	ldr	r3, [pc, #116]	; (8000524 <GPIO_voidSetPinDirection+0x188>)
 80004b0:	2200      	movs	r2, #0
 80004b2:	601a      	str	r2, [r3, #0]
 80004b4:	4b1b      	ldr	r3, [pc, #108]	; (8000524 <GPIO_voidSetPinDirection+0x188>)
 80004b6:	681b      	ldr	r3, [r3, #0]
 80004b8:	7979      	ldrb	r1, [r7, #5]
 80004ba:	79ba      	ldrb	r2, [r7, #6]
 80004bc:	0092      	lsls	r2, r2, #2
 80004be:	fa01 f202 	lsl.w	r2, r1, r2
 80004c2:	4611      	mov	r1, r2
 80004c4:	4a17      	ldr	r2, [pc, #92]	; (8000524 <GPIO_voidSetPinDirection+0x188>)
 80004c6:	430b      	orrs	r3, r1
 80004c8:	6013      	str	r3, [r2, #0]
 80004ca:	e021      	b.n	8000510 <GPIO_voidSetPinDirection+0x174>
 80004cc:	79bb      	ldrb	r3, [r7, #6]
 80004ce:	2b0f      	cmp	r3, #15
 80004d0:	d81e      	bhi.n	8000510 <GPIO_voidSetPinDirection+0x174>
 80004d2:	79bb      	ldrb	r3, [r7, #6]
 80004d4:	3b08      	subs	r3, #8
 80004d6:	71bb      	strb	r3, [r7, #6]
 80004d8:	4b12      	ldr	r3, [pc, #72]	; (8000524 <GPIO_voidSetPinDirection+0x188>)
 80004da:	685b      	ldr	r3, [r3, #4]
 80004dc:	79ba      	ldrb	r2, [r7, #6]
 80004de:	0092      	lsls	r2, r2, #2
 80004e0:	210f      	movs	r1, #15
 80004e2:	fa01 f202 	lsl.w	r2, r1, r2
 80004e6:	43d2      	mvns	r2, r2
 80004e8:	4611      	mov	r1, r2
 80004ea:	4a0e      	ldr	r2, [pc, #56]	; (8000524 <GPIO_voidSetPinDirection+0x188>)
 80004ec:	400b      	ands	r3, r1
 80004ee:	6053      	str	r3, [r2, #4]
 80004f0:	4b0c      	ldr	r3, [pc, #48]	; (8000524 <GPIO_voidSetPinDirection+0x188>)
 80004f2:	685b      	ldr	r3, [r3, #4]
 80004f4:	7979      	ldrb	r1, [r7, #5]
 80004f6:	79ba      	ldrb	r2, [r7, #6]
 80004f8:	0092      	lsls	r2, r2, #2
 80004fa:	fa01 f202 	lsl.w	r2, r1, r2
 80004fe:	4611      	mov	r1, r2
 8000500:	4a08      	ldr	r2, [pc, #32]	; (8000524 <GPIO_voidSetPinDirection+0x188>)
 8000502:	430b      	orrs	r3, r1
 8000504:	6053      	str	r3, [r2, #4]
 8000506:	e003      	b.n	8000510 <GPIO_voidSetPinDirection+0x174>
 8000508:	bf00      	nop
 800050a:	e002      	b.n	8000512 <GPIO_voidSetPinDirection+0x176>
 800050c:	bf00      	nop
 800050e:	e000      	b.n	8000512 <GPIO_voidSetPinDirection+0x176>
 8000510:	bf00      	nop
 8000512:	bf00      	nop
 8000514:	370c      	adds	r7, #12
 8000516:	46bd      	mov	sp, r7
 8000518:	bc80      	pop	{r7}
 800051a:	4770      	bx	lr
 800051c:	40010800 	andmi	r0, r1, r0, lsl #16
 8000520:	40010c00 	andmi	r0, r1, r0, lsl #24
 8000524:	40011000 	andmi	r1, r1, r0

08000528 <NVIC_voidEnableInterrupt>:
 8000528:	b480      	push	{r7}
 800052a:	b083      	sub	sp, #12
 800052c:	af00      	add	r7, sp, #0
 800052e:	4603      	mov	r3, r0
 8000530:	71fb      	strb	r3, [r7, #7]
 8000532:	79fb      	ldrb	r3, [r7, #7]
 8000534:	2b1f      	cmp	r3, #31
 8000536:	d80a      	bhi.n	800054e <NVIC_voidEnableInterrupt+0x26>
 8000538:	4b0f      	ldr	r3, [pc, #60]	; (8000578 <NVIC_voidEnableInterrupt+0x50>)
 800053a:	681b      	ldr	r3, [r3, #0]
 800053c:	79fa      	ldrb	r2, [r7, #7]
 800053e:	2101      	movs	r1, #1
 8000540:	fa01 f202 	lsl.w	r2, r1, r2
 8000544:	4611      	mov	r1, r2
 8000546:	4a0c      	ldr	r2, [pc, #48]	; (8000578 <NVIC_voidEnableInterrupt+0x50>)
 8000548:	430b      	orrs	r3, r1
 800054a:	6013      	str	r3, [r2, #0]
 800054c:	e00f      	b.n	800056e <NVIC_voidEnableInterrupt+0x46>
 800054e:	79fb      	ldrb	r3, [r7, #7]
 8000550:	2b3b      	cmp	r3, #59	; 0x3b
 8000552:	d80c      	bhi.n	800056e <NVIC_voidEnableInterrupt+0x46>
 8000554:	79fb      	ldrb	r3, [r7, #7]
 8000556:	3b20      	subs	r3, #32
 8000558:	71fb      	strb	r3, [r7, #7]
 800055a:	4b08      	ldr	r3, [pc, #32]	; (800057c <NVIC_voidEnableInterrupt+0x54>)
 800055c:	681b      	ldr	r3, [r3, #0]
 800055e:	79fa      	ldrb	r2, [r7, #7]
 8000560:	2101      	movs	r1, #1
 8000562:	fa01 f202 	lsl.w	r2, r1, r2
 8000566:	4611      	mov	r1, r2
 8000568:	4a04      	ldr	r2, [pc, #16]	; (800057c <NVIC_voidEnableInterrupt+0x54>)
 800056a:	430b      	orrs	r3, r1
 800056c:	6013      	str	r3, [r2, #0]
 800056e:	bf00      	nop
 8000570:	370c      	adds	r7, #12
 8000572:	46bd      	mov	sp, r7
 8000574:	bc80      	pop	{r7}
 8000576:	4770      	bx	lr
 8000578:	e000e100 	and	lr, r0, r0, lsl #2
 800057c:	e000e104 	and	lr, r0, r4, lsl #2

08000580 <PSRC_voidSetAccessLevel>:
 8000580:	2300      	movs	r3, #0
 8000582:	2201      	movs	r2, #1
 8000584:	b500      	push	{lr}
 8000586:	4619      	mov	r1, r3
 8000588:	4612      	mov	r2, r2
 800058a:	4281      	cmp	r1, r0
 800058c:	bf02      	ittt	eq
 800058e:	f3ef 8314 	mrseq	r3, CONTROL
 8000592:	f36f 0300 	bfceq	r3, #0, #1
 8000596:	f383 8814 	msreq	CONTROL, r3
 800059a:	bf1e      	ittt	ne
 800059c:	f3ef 8314 	mrsne	r3, CONTROL
 80005a0:	f043 0301 	orrne.w	r3, r3, #1
 80005a4:	f383 8814 	msrne	CONTROL, r3
 80005a8:	bd00      	pop	{pc}
 80005aa:	bf00      	nop

080005ac <RCC_voidInitSysClock>:
 80005ac:	b480      	push	{r7}
 80005ae:	af00      	add	r7, sp, #0
 80005b0:	4b05      	ldr	r3, [pc, #20]	; (80005c8 <RCC_voidInitSysClock+0x1c>)
 80005b2:	f44f 3280 	mov.w	r2, #65536	; 0x10000
 80005b6:	601a      	str	r2, [r3, #0]
 80005b8:	4b04      	ldr	r3, [pc, #16]	; (80005cc <RCC_voidInitSysClock+0x20>)
 80005ba:	2201      	movs	r2, #1
 80005bc:	601a      	str	r2, [r3, #0]
 80005be:	bf00      	nop
 80005c0:	46bd      	mov	sp, r7
 80005c2:	bc80      	pop	{r7}
 80005c4:	4770      	bx	lr
 80005c6:	bf00      	nop
 80005c8:	40021000 	andmi	r1, r2, r0
 80005cc:	40021004 	andmi	r1, r2, r4

080005d0 <RCC_voidEnableClock>:
 80005d0:	b480      	push	{r7}
 80005d2:	b083      	sub	sp, #12
 80005d4:	af00      	add	r7, sp, #0
 80005d6:	4603      	mov	r3, r0
 80005d8:	460a      	mov	r2, r1
 80005da:	71fb      	strb	r3, [r7, #7]
 80005dc:	4613      	mov	r3, r2
 80005de:	71bb      	strb	r3, [r7, #6]
 80005e0:	79bb      	ldrb	r3, [r7, #6]
 80005e2:	2b1f      	cmp	r3, #31
 80005e4:	d828      	bhi.n	8000638 <RCC_voidEnableClock+0x68>
 80005e6:	79fb      	ldrb	r3, [r7, #7]
 80005e8:	2b01      	cmp	r3, #1
 80005ea:	d00f      	beq.n	800060c <RCC_voidEnableClock+0x3c>
 80005ec:	2b02      	cmp	r3, #2
 80005ee:	d018      	beq.n	8000622 <RCC_voidEnableClock+0x52>
 80005f0:	2b00      	cmp	r3, #0
 80005f2:	d000      	beq.n	80005f6 <RCC_voidEnableClock+0x26>
 80005f4:	e020      	b.n	8000638 <RCC_voidEnableClock+0x68>
 80005f6:	4b13      	ldr	r3, [pc, #76]	; (8000644 <RCC_voidEnableClock+0x74>)
 80005f8:	681b      	ldr	r3, [r3, #0]
 80005fa:	79ba      	ldrb	r2, [r7, #6]
 80005fc:	2101      	movs	r1, #1
 80005fe:	fa01 f202 	lsl.w	r2, r1, r2
 8000602:	4611      	mov	r1, r2
 8000604:	4a0f      	ldr	r2, [pc, #60]	; (8000644 <RCC_voidEnableClock+0x74>)
 8000606:	430b      	orrs	r3, r1
 8000608:	6013      	str	r3, [r2, #0]
 800060a:	e015      	b.n	8000638 <RCC_voidEnableClock+0x68>
 800060c:	4b0e      	ldr	r3, [pc, #56]	; (8000648 <RCC_voidEnableClock+0x78>)
 800060e:	681b      	ldr	r3, [r3, #0]
 8000610:	79ba      	ldrb	r2, [r7, #6]
 8000612:	2101      	movs	r1, #1
 8000614:	fa01 f202 	lsl.w	r2, r1, r2
 8000618:	4611      	mov	r1, r2
 800061a:	4a0b      	ldr	r2, [pc, #44]	; (8000648 <RCC_voidEnableClock+0x78>)
 800061c:	430b      	orrs	r3, r1
 800061e:	6013      	str	r3, [r2, #0]
 8000620:	e00a      	b.n	8000638 <RCC_voidEnableClock+0x68>
 8000622:	4b0a      	ldr	r3, [pc, #40]	; (800064c <RCC_voidEnableClock+0x7c>)
 8000624:	681b      	ldr	r3, [r3, #0]
 8000626:	79ba      	ldrb	r2, [r7, #6]
 8000628:	2101      	movs	r1, #1
 800062a:	fa01 f202 	lsl.w	r2, r1, r2
 800062e:	4611      	mov	r1, r2
 8000630:	4a06      	ldr	r2, [pc, #24]	; (800064c <RCC_voidEnableClock+0x7c>)
 8000632:	430b      	orrs	r3, r1
 8000634:	6013      	str	r3, [r2, #0]
 8000636:	bf00      	nop
 8000638:	bf00      	nop
 800063a:	370c      	adds	r7, #12
 800063c:	46bd      	mov	sp, r7
 800063e:	bc80      	pop	{r7}
 8000640:	4770      	bx	lr
 8000642:	bf00      	nop
 8000644:	40021014 	andmi	r1, r2, r4, lsl r0
 8000648:	4002101c 	andmi	r1, r2, ip, lsl r0
 800064c:	40021018 	andmi	r1, r2, r8, lsl r0

08000650 <SysTick_Handler>:
 8000650:	b580      	push	{r7, lr}
 8000652:	b082      	sub	sp, #8
 8000654:	af00      	add	r7, sp, #0
 8000656:	2300      	movs	r3, #0
 8000658:	71fb      	strb	r3, [r7, #7]
 800065a:	4b12      	ldr	r3, [pc, #72]	; (80006a4 <SysTick_Handler+0x54>)
 800065c:	781b      	ldrb	r3, [r3, #0]
 800065e:	2b02      	cmp	r3, #2
 8000660:	d111      	bne.n	8000686 <SysTick_Handler+0x36>
 8000662:	4b11      	ldr	r3, [pc, #68]	; (80006a8 <SysTick_Handler+0x58>)
 8000664:	681b      	ldr	r3, [r3, #0]
 8000666:	4a10      	ldr	r2, [pc, #64]	; (80006a8 <SysTick_Handler+0x58>)
 8000668:	f023 0302 	bic.w	r3, r3, #2
 800066c:	6013      	str	r3, [r2, #0]
 800066e:	4b0e      	ldr	r3, [pc, #56]	; (80006a8 <SysTick_Handler+0x58>)
 8000670:	681b      	ldr	r3, [r3, #0]
 8000672:	4a0d      	ldr	r2, [pc, #52]	; (80006a8 <SysTick_Handler+0x58>)
 8000674:	f023 0301 	bic.w	r3, r3, #1
 8000678:	6013      	str	r3, [r2, #0]
 800067a:	4b0b      	ldr	r3, [pc, #44]	; (80006a8 <SysTick_Handler+0x58>)
 800067c:	2200      	movs	r2, #0
 800067e:	605a      	str	r2, [r3, #4]
 8000680:	4b09      	ldr	r3, [pc, #36]	; (80006a8 <SysTick_Handler+0x58>)
 8000682:	2200      	movs	r2, #0
 8000684:	609a      	str	r2, [r3, #8]
 8000686:	4b09      	ldr	r3, [pc, #36]	; (80006ac <SysTick_Handler+0x5c>)
 8000688:	681b      	ldr	r3, [r3, #0]
 800068a:	4798      	blx	r3
 800068c:	4b06      	ldr	r3, [pc, #24]	; (80006a8 <SysTick_Handler+0x58>)
 800068e:	681b      	ldr	r3, [r3, #0]
 8000690:	0c1b      	lsrs	r3, r3, #16
 8000692:	b2db      	uxtb	r3, r3
 8000694:	f003 0301 	and.w	r3, r3, #1
 8000698:	71fb      	strb	r3, [r7, #7]
 800069a:	bf00      	nop
 800069c:	3708      	adds	r7, #8
 800069e:	46bd      	mov	sp, r7
 80006a0:	bd80      	pop	{r7, pc}
 80006a2:	bf00      	nop
 80006a4:	2000006c 	andcs	r0, r0, ip, rrx
 80006a8:	e000e010 	and	lr, r0, r0, lsl r0
 80006ac:	2000005c 	andcs	r0, r0, ip, asr r0

080006b0 <USART1_IRQHandler>:
 80006b0:	b580      	push	{r7, lr}
 80006b2:	af00      	add	r7, sp, #0
 80006b4:	4b0a      	ldr	r3, [pc, #40]	; (80006e0 <USART1_IRQHandler+0x30>)
 80006b6:	681b      	ldr	r3, [r3, #0]
 80006b8:	699b      	ldr	r3, [r3, #24]
 80006ba:	4a0a      	ldr	r2, [pc, #40]	; (80006e4 <USART1_IRQHandler+0x34>)
 80006bc:	6852      	ldr	r2, [r2, #4]
 80006be:	b292      	uxth	r2, r2
 80006c0:	4610      	mov	r0, r2
 80006c2:	4798      	blx	r3
 80006c4:	4b07      	ldr	r3, [pc, #28]	; (80006e4 <USART1_IRQHandler+0x34>)
 80006c6:	681b      	ldr	r3, [r3, #0]
 80006c8:	4a06      	ldr	r2, [pc, #24]	; (80006e4 <USART1_IRQHandler+0x34>)
 80006ca:	f023 0340 	bic.w	r3, r3, #64	; 0x40
 80006ce:	6013      	str	r3, [r2, #0]
 80006d0:	4b04      	ldr	r3, [pc, #16]	; (80006e4 <USART1_IRQHandler+0x34>)
 80006d2:	681b      	ldr	r3, [r3, #0]
 80006d4:	4a03      	ldr	r2, [pc, #12]	; (80006e4 <USART1_IRQHandler+0x34>)
 80006d6:	f023 0320 	bic.w	r3, r3, #32
 80006da:	6013      	str	r3, [r2, #0]
 80006dc:	bf00      	nop
 80006de:	bd80      	pop	{r7, pc}
 80006e0:	20000060 	andcs	r0, r0, r0, rrx
 80006e4:	40013800 	andmi	r3, r1, r0, lsl #16

080006e8 <USART2_IRQHandler>:
 80006e8:	b580      	push	{r7, lr}
 80006ea:	af00      	add	r7, sp, #0
 80006ec:	4b0a      	ldr	r3, [pc, #40]	; (8000718 <USART2_IRQHandler+0x30>)
 80006ee:	685b      	ldr	r3, [r3, #4]
 80006f0:	699b      	ldr	r3, [r3, #24]
 80006f2:	4a0a      	ldr	r2, [pc, #40]	; (800071c <USART2_IRQHandler+0x34>)
 80006f4:	6852      	ldr	r2, [r2, #4]
 80006f6:	b292      	uxth	r2, r2
 80006f8:	4610      	mov	r0, r2
 80006fa:	4798      	blx	r3
 80006fc:	4b07      	ldr	r3, [pc, #28]	; (800071c <USART2_IRQHandler+0x34>)
 80006fe:	681b      	ldr	r3, [r3, #0]
 8000700:	4a06      	ldr	r2, [pc, #24]	; (800071c <USART2_IRQHandler+0x34>)
 8000702:	f023 0340 	bic.w	r3, r3, #64	; 0x40
 8000706:	6013      	str	r3, [r2, #0]
 8000708:	4b04      	ldr	r3, [pc, #16]	; (800071c <USART2_IRQHandler+0x34>)
 800070a:	681b      	ldr	r3, [r3, #0]
 800070c:	4a03      	ldr	r2, [pc, #12]	; (800071c <USART2_IRQHandler+0x34>)
 800070e:	f023 0320 	bic.w	r3, r3, #32
 8000712:	6013      	str	r3, [r2, #0]
 8000714:	bf00      	nop
 8000716:	bd80      	pop	{r7, pc}
 8000718:	20000060 	andcs	r0, r0, r0, rrx
 800071c:	40004400 	andmi	r4, r0, r0, lsl #8

08000720 <USART3_IRQHandler>:
 8000720:	b580      	push	{r7, lr}
 8000722:	af00      	add	r7, sp, #0
 8000724:	4b0a      	ldr	r3, [pc, #40]	; (8000750 <USART3_IRQHandler+0x30>)
 8000726:	689b      	ldr	r3, [r3, #8]
 8000728:	699b      	ldr	r3, [r3, #24]
 800072a:	4a0a      	ldr	r2, [pc, #40]	; (8000754 <USART3_IRQHandler+0x34>)
 800072c:	6852      	ldr	r2, [r2, #4]
 800072e:	b292      	uxth	r2, r2
 8000730:	4610      	mov	r0, r2
 8000732:	4798      	blx	r3
 8000734:	4b08      	ldr	r3, [pc, #32]	; (8000758 <USART3_IRQHandler+0x38>)
 8000736:	681b      	ldr	r3, [r3, #0]
 8000738:	4a07      	ldr	r2, [pc, #28]	; (8000758 <USART3_IRQHandler+0x38>)
 800073a:	f023 0340 	bic.w	r3, r3, #64	; 0x40
 800073e:	6013      	str	r3, [r2, #0]
 8000740:	4b05      	ldr	r3, [pc, #20]	; (8000758 <USART3_IRQHandler+0x38>)
 8000742:	681b      	ldr	r3, [r3, #0]
 8000744:	4a04      	ldr	r2, [pc, #16]	; (8000758 <USART3_IRQHandler+0x38>)
 8000746:	f023 0320 	bic.w	r3, r3, #32
 800074a:	6013      	str	r3, [r2, #0]
 800074c:	bf00      	nop
 800074e:	bd80      	pop	{r7, pc}
 8000750:	20000060 	andcs	r0, r0, r0, rrx
 8000754:	40004400 	andmi	r4, r0, r0, lsl #8
 8000758:	40004800 	andmi	r4, r0, r0, lsl #16

0800075c <main>:
 800075c:	b580      	push	{r7, lr}
 800075e:	af00      	add	r7, sp, #0
 8000760:	f7ff ff24 	bl	80005ac <RCC_voidInitSysClock>
 8000764:	2102      	movs	r1, #2
 8000766:	2002      	movs	r0, #2
 8000768:	f7ff ff32 	bl	80005d0 <RCC_voidEnableClock>
 800076c:	2201      	movs	r2, #1
 800076e:	2105      	movs	r1, #5
 8000770:	2002      	movs	r0, #2
 8000772:	f7ff fe13 	bl	800039c <GPIO_voidSetPinDirection>
 8000776:	2006      	movs	r0, #6
 8000778:	f7ff fed6 	bl	8000528 <NVIC_voidEnableInterrupt>
 800077c:	2102      	movs	r1, #2
 800077e:	2000      	movs	r0, #0
 8000780:	f7ff fcf6 	bl	8000170 <AFIO_voidEXTIConfiguration>
 8000784:	2100      	movs	r1, #0
 8000786:	2000      	movs	r0, #0
 8000788:	f7ff fd30 	bl	80001ec <EXTI_voidInitLine>
 800078c:	490c      	ldr	r1, [pc, #48]	; (80007c0 <main+0x64>)
 800078e:	2000      	movs	r0, #0
 8000790:	f7ff fd98 	bl	80002c4 <EXTI_voidSetCallBackFCN>
 8000794:	2000      	movs	r0, #0
 8000796:	f7ff fd7f 	bl	8000298 <EXTI_voidEnableEXTI>
 800079a:	2001      	movs	r0, #1
 800079c:	f7ff fef0 	bl	8000580 <PSRC_voidSetAccessLevel>
 80007a0:	df00      	svc	0
 80007a2:	4b08      	ldr	r3, [pc, #32]	; (80007c4 <main+0x68>)
 80007a4:	781b      	ldrb	r3, [r3, #0]
 80007a6:	b2db      	uxtb	r3, r3
 80007a8:	2b00      	cmp	r3, #0
 80007aa:	d0fa      	beq.n	80007a2 <main+0x46>
 80007ac:	4b05      	ldr	r3, [pc, #20]	; (80007c4 <main+0x68>)
 80007ae:	2200      	movs	r2, #0
 80007b0:	701a      	strb	r2, [r3, #0]
 80007b2:	f3ef 8014 	mrs	r0, CONTROL
 80007b6:	f000 0005 	and.w	r0, r0, #5
 80007ba:	f380 8814 	msr	CONTROL, r0
 80007be:	e7f0      	b.n	80007a2 <main+0x46>
 80007c0:	080007c9 	stmdaeq	r0, {r0, r3, r6, r7, r8, r9, sl}
 80007c4:	2000006d 	andcs	r0, r0, sp, rrx

080007c8 <EXTI0_Handler>:
 80007c8:	b580      	push	{r7, lr}
 80007ca:	af00      	add	r7, sp, #0
 80007cc:	4b03      	ldr	r3, [pc, #12]	; (80007dc <EXTI0_Handler+0x14>)
 80007ce:	2201      	movs	r2, #1
 80007d0:	701a      	strb	r2, [r3, #0]
 80007d2:	2000      	movs	r0, #0
 80007d4:	f7ff fed4 	bl	8000580 <PSRC_voidSetAccessLevel>
 80007d8:	bf00      	nop
 80007da:	bd80      	pop	{r7, pc}
 80007dc:	2000006d 	andcs	r0, r0, sp, rrx

080007e0 <SVC_Handler>:
 80007e0:	f01e 0f04 	tst.w	lr, #4
 80007e4:	bf0c      	ite	eq
 80007e6:	f3ef 8008 	mrseq	r0, MSP
 80007ea:	f3ef 8009 	mrsne	r0, PSP
 80007ee:	f000 b801 	b.w	80007f4 <SVC_Handler_Main>
 80007f2:	bf00      	nop

080007f4 <SVC_Handler_Main>:
 80007f4:	b580      	push	{r7, lr}
 80007f6:	b084      	sub	sp, #16
 80007f8:	af00      	add	r7, sp, #0
 80007fa:	6078      	str	r0, [r7, #4]
 80007fc:	687b      	ldr	r3, [r7, #4]
 80007fe:	3318      	adds	r3, #24
 8000800:	681b      	ldr	r3, [r3, #0]
 8000802:	3b02      	subs	r3, #2
 8000804:	781b      	ldrb	r3, [r3, #0]
 8000806:	73fb      	strb	r3, [r7, #15]
 8000808:	7bfb      	ldrb	r3, [r7, #15]
 800080a:	2b00      	cmp	r3, #0
 800080c:	d000      	beq.n	8000810 <SVC_Handler_Main+0x1c>
 800080e:	e003      	b.n	8000818 <SVC_Handler_Main+0x24>
 8000810:	2000      	movs	r0, #0
 8000812:	f7ff feb5 	bl	8000580 <PSRC_voidSetAccessLevel>
 8000816:	bf00      	nop
 8000818:	bf00      	nop
 800081a:	3710      	adds	r7, #16
 800081c:	46bd      	mov	sp, r7
 800081e:	bd80      	pop	{r7, pc}

08000820 <HardFault_Handler>:
 8000820:	b480      	push	{r7}
 8000822:	af00      	add	r7, sp, #0
 8000824:	4b03      	ldr	r3, [pc, #12]	; (8000834 <HardFault_Handler+0x14>)
 8000826:	2200      	movs	r2, #0
 8000828:	701a      	strb	r2, [r3, #0]
 800082a:	bf00      	nop
 800082c:	46bd      	mov	sp, r7
 800082e:	bc80      	pop	{r7}
 8000830:	4770      	bx	lr
 8000832:	bf00      	nop
 8000834:	2000006d 	andcs	r0, r0, sp, rrx

08000838 <Reset_Handler>:
 8000838:	480d      	ldr	r0, [pc, #52]	; (8000870 <LoopForever+0x2>)
 800083a:	4685      	mov	sp, r0
 800083c:	f3af 8000 	nop.w
 8000840:	480c      	ldr	r0, [pc, #48]	; (8000874 <LoopForever+0x6>)
 8000842:	490d      	ldr	r1, [pc, #52]	; (8000878 <LoopForever+0xa>)
 8000844:	4a0d      	ldr	r2, [pc, #52]	; (800087c <LoopForever+0xe>)
 8000846:	2300      	movs	r3, #0
 8000848:	e002      	b.n	8000850 <LoopCopyDataInit>

0800084a <CopyDataInit>:
 800084a:	58d4      	ldr	r4, [r2, r3]
 800084c:	50c4      	str	r4, [r0, r3]
 800084e:	3304      	adds	r3, #4

08000850 <LoopCopyDataInit>:
 8000850:	18c4      	adds	r4, r0, r3
 8000852:	428c      	cmp	r4, r1
 8000854:	d3f9      	bcc.n	800084a <CopyDataInit>
 8000856:	4a0a      	ldr	r2, [pc, #40]	; (8000880 <LoopForever+0x12>)
 8000858:	4c0a      	ldr	r4, [pc, #40]	; (8000884 <LoopForever+0x16>)
 800085a:	2300      	movs	r3, #0
 800085c:	e001      	b.n	8000862 <LoopFillZerobss>

0800085e <FillZerobss>:
 800085e:	6013      	str	r3, [r2, #0]
 8000860:	3204      	adds	r2, #4

08000862 <LoopFillZerobss>:
 8000862:	42a2      	cmp	r2, r4
 8000864:	d3fb      	bcc.n	800085e <FillZerobss>
 8000866:	f000 f811 	bl	800088c <__libc_init_array>
 800086a:	f7ff ff77 	bl	800075c <main>

0800086e <LoopForever>:
 800086e:	e7fe      	b.n	800086e <LoopForever>
 8000870:	20002800 	andcs	r2, r0, r0, lsl #16
 8000874:	20000000 	andcs	r0, r0, r0
 8000878:	20000000 	andcs	r0, r0, r0
 800087c:	080008f4 	stmdaeq	r0, {r2, r4, r5, r6, r7, fp}
 8000880:	20000000 	andcs	r0, r0, r0
 8000884:	20000070 	andcs	r0, r0, r0, ror r0

08000888 <ADC1_2_IRQHandler>:
 8000888:	e7fe      	b.n	8000888 <ADC1_2_IRQHandler>
	...

0800088c <__libc_init_array>:
 800088c:	b570      	push	{r4, r5, r6, lr}
 800088e:	2500      	movs	r5, #0
 8000890:	4e0c      	ldr	r6, [pc, #48]	; (80008c4 <__libc_init_array+0x38>)
 8000892:	4c0d      	ldr	r4, [pc, #52]	; (80008c8 <__libc_init_array+0x3c>)
 8000894:	1ba4      	subs	r4, r4, r6
 8000896:	10a4      	asrs	r4, r4, #2
 8000898:	42a5      	cmp	r5, r4
 800089a:	d109      	bne.n	80008b0 <__libc_init_array+0x24>
 800089c:	f000 f81a 	bl	80008d4 <_init>
 80008a0:	2500      	movs	r5, #0
 80008a2:	4e0a      	ldr	r6, [pc, #40]	; (80008cc <__libc_init_array+0x40>)
 80008a4:	4c0a      	ldr	r4, [pc, #40]	; (80008d0 <__libc_init_array+0x44>)
 80008a6:	1ba4      	subs	r4, r4, r6
 80008a8:	10a4      	asrs	r4, r4, #2
 80008aa:	42a5      	cmp	r5, r4
 80008ac:	d105      	bne.n	80008ba <__libc_init_array+0x2e>
 80008ae:	bd70      	pop	{r4, r5, r6, pc}
 80008b0:	f856 3025 	ldr.w	r3, [r6, r5, lsl #2]
 80008b4:	4798      	blx	r3
 80008b6:	3501      	adds	r5, #1
 80008b8:	e7ee      	b.n	8000898 <__libc_init_array+0xc>
 80008ba:	f856 3025 	ldr.w	r3, [r6, r5, lsl #2]
 80008be:	4798      	blx	r3
 80008c0:	3501      	adds	r5, #1
 80008c2:	e7f2      	b.n	80008aa <__libc_init_array+0x1e>
 80008c4:	080008ec 	stmdaeq	r0, {r2, r3, r5, r6, r7, fp}
 80008c8:	080008ec 	stmdaeq	r0, {r2, r3, r5, r6, r7, fp}
 80008cc:	080008ec 	stmdaeq	r0, {r2, r3, r5, r6, r7, fp}
 80008d0:	080008f0 	stmdaeq	r0, {r4, r5, r6, r7, fp}

080008d4 <_init>:
 80008d4:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 80008d6:	bf00      	nop
 80008d8:	bcf8      	pop	{r3, r4, r5, r6, r7}
 80008da:	bc08      	pop	{r3}
 80008dc:	469e      	mov	lr, r3
 80008de:	4770      	bx	lr

080008e0 <_fini>:
 80008e0:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 80008e2:	bf00      	nop
 80008e4:	bcf8      	pop	{r3, r4, r5, r6, r7}
 80008e6:	bc08      	pop	{r3}
 80008e8:	469e      	mov	lr, r3
 80008ea:	4770      	bx	lr

Disassembly of section .init_array:

080008ec <__frame_dummy_init_array_entry>:
 80008ec:	08000155 	stmdaeq	r0, {r0, r2, r4, r6, r8}

Disassembly of section .fini_array:

080008f0 <__do_global_dtors_aux_fini_array_entry>:
 80008f0:	08000131 	stmdaeq	r0, {r0, r4, r5, r8}

Disassembly of section .bss:

20000000 <__bss_start__>:
20000000:	00000000 	andeq	r0, r0, r0

20000004 <object.8661>:
	...

2000001c <EXTI_PtrFunction>:
	...

2000005c <Glob_STKCallback>:
2000005c:	00000000 	andeq	r0, r0, r0

20000060 <Global_USART_Config>:
	...

2000006c <STK_u8ModeOfInterval>:
	...

2000006d <test>:
2000006d:	Address 0x000000002000006d is out of bounds.


Disassembly of section ._user_heap_stack:

20000070 <._user_heap_stack>:
	...

Disassembly of section .ARM.attributes:

00000000 <.ARM.attributes>:
   0:	00002841 	andeq	r2, r0, r1, asr #16
   4:	61656100 	cmnvs	r5, r0, lsl #2
   8:	01006962 	tsteq	r0, r2, ror #18
   c:	0000001e 	andeq	r0, r0, lr, lsl r0
  10:	4d2d3705 	stcmi	7, cr3, [sp, #-20]!	; 0xffffffec
  14:	070a0600 	streq	r0, [sl, -r0, lsl #12]
  18:	1202094d 	andne	r0, r2, #1261568	; 0x134000
  1c:	15011404 	strne	r1, [r1, #-1028]	; 0xfffffbfc
  20:	18031701 	stmdane	r3, {r0, r8, r9, sl, ip}
  24:	22011a01 	andcs	r1, r1, #4096	; 0x1000
  28:	Address 0x0000000000000028 is out of bounds.


Disassembly of section .debug_info:

00000000 <.debug_info>:
       0:	00000189 	andeq	r0, r0, r9, lsl #3
       4:	00000002 	andeq	r0, r0, r2
       8:	01040000 	mrseq	r0, (UNDEF: 4)
       c:	00002bd2 	ldrdeq	r2, [r0], -r2	; <UNPREDICTABLE>
      10:	0013c80c 	andseq	ip, r3, ip, lsl #16
      14:	00114f00 	andseq	r4, r1, r0, lsl #30
	...
      2c:	38750200 	ldmdacc	r5!, {r9}^
      30:	37090200 	strcc	r0, [r9, -r0, lsl #4]
      34:	03000000 	movweq	r0, #0
      38:	23710801 	cmncs	r1, #65536	; 0x10000
      3c:	02030000 	andeq	r0, r3, #0
      40:	00047007 	andeq	r7, r4, r7
      44:	33750200 	cmncc	r5, #0, 4
      48:	0b020032 	bleq	80118 <_Min_Stack_Size+0x7fd18>
      4c:	00000055 	andeq	r0, r0, r5, asr r0
      50:	00004504 	andeq	r4, r0, r4, lsl #10
      54:	07040300 	streq	r0, [r4, -r0, lsl #6]
      58:	00001efa 	strdeq	r1, [r0], -sl
      5c:	66070403 	strvs	r0, [r7], -r3, lsl #8
      60:	05000021 	streq	r0, [r0, #-33]	; 0xffffffdf
      64:	00370107 	eorseq	r0, r7, r7, lsl #2
      68:	35040000 	strcc	r0, [r4, #-0]
      6c:	000000d1 	ldrdeq	r0, [r0], -r1
      70:	0022ad06 	eoreq	sl, r2, r6, lsl #26
      74:	b8060000 	stmdalt	r6, {}	; <UNPREDICTABLE>
      78:	01000022 	tsteq	r0, r2, lsr #32
      7c:	0022c306 	eoreq	ip, r2, r6, lsl #6
      80:	ce060200 	cdpgt	2, 0, cr0, cr6, cr0, {0}
      84:	03000022 	movweq	r0, #34	; 0x22
      88:	00091c06 	andeq	r1, r9, r6, lsl #24
      8c:	65060400 	strvs	r0, [r6, #-1024]	; 0xfffffc00
      90:	05000009 	streq	r0, [r0, #-9]
      94:	002d8c06 	eoreq	r8, sp, r6, lsl #24
      98:	10060600 	andne	r0, r6, r0, lsl #12
      9c:	07000023 	streq	r0, [r0, -r3, lsr #32]
      a0:	00231b06 	eoreq	r1, r3, r6, lsl #22
      a4:	26060800 	strcs	r0, [r6], -r0, lsl #16
      a8:	09000023 	stmdbeq	r0, {r0, r1, r5}
      ac:	001f3806 	andseq	r3, pc, r6, lsl #16
      b0:	44060a00 	strmi	r0, [r6], #-2560	; 0xfffff600
      b4:	0b00001f 	bleq	138 <_Min_Heap_Size-0xc8>
      b8:	001f5006 	andseq	r5, pc, r6
      bc:	5c060c00 	stcpl	12, cr0, [r6], {-0}
      c0:	0d00001f 	stceq	0, cr0, [r0, #-124]	; 0xffffff84
      c4:	001f6806 	andseq	r6, pc, r6, lsl #16
      c8:	74060e00 	strvc	r0, [r6], #-3584	; 0xfffff200
      cc:	0f00001f 	svceq	0x0000001f
      d0:	027b0700 	rsbseq	r0, fp, #0, 14
      d4:	46040000 	strmi	r0, [r4], -r0
      d8:	00000063 	andeq	r0, r0, r3, rrx
      dc:	27031c08 	strcs	r1, [r3, -r8, lsl #24]
      e0:	0000011d 	andeq	r0, r0, sp, lsl r1
      e4:	002daf09 	eoreq	sl, sp, r9, lsl #30
      e8:	50290300 	eorpl	r0, r9, r0, lsl #6
      ec:	02000000 	andeq	r0, r0, #0
      f0:	46090023 	strmi	r0, [r9], -r3, lsr #32
      f4:	03000005 	movweq	r0, #5
      f8:	0000502a 	andeq	r5, r0, sl, lsr #32
      fc:	04230200 	strteq	r0, [r3], #-512	; 0xfffffe00
     100:	0028d409 	eoreq	sp, r8, r9, lsl #8
     104:	2d2b0300 	stccs	3, cr0, [fp, #-0]
     108:	02000001 	andeq	r0, r0, #1
     10c:	12090823 	andne	r0, r9, #2293760	; 0x230000
     110:	03000022 	movweq	r0, #34	; 0x22
     114:	0000502c 	andeq	r5, r0, ip, lsr #32
     118:	18230200 	stmdane	r3!, {r9}
     11c:	00500a00 	subseq	r0, r0, r0, lsl #20
     120:	012d0000 			; <UNDEFINED> instruction: 0x012d0000
     124:	5c0b0000 	stcpl	0, cr0, [fp], {-0}
     128:	03000000 	movweq	r0, #0
     12c:	011d0400 	tsteq	sp, r0, lsl #8
     130:	49070000 	stmdbmi	r7, {}	; <UNPREDICTABLE>
     134:	03000018 	movweq	r0, #24
     138:	0000dc2d 	andeq	sp, r0, sp, lsr #24
     13c:	ca010c00 	bgt	43144 <_Min_Stack_Size+0x42d44>
     140:	0100000e 	tsteq	r0, lr
     144:	01700143 	cmneq	r0, r3, asr #2
     148:	01ec0800 	mvneq	r0, r0, lsl #16
     14c:	00000800 	andeq	r0, r0, r0, lsl #16
     150:	0d010000 	stceq	0, cr0, [r1, #-0]
     154:	000012a1 	andeq	r1, r0, r1, lsr #5
     158:	00d14301 	sbcseq	r4, r1, r1, lsl #6
     15c:	91020000 	mrsls	r0, (UNDEF: 2)
     160:	18fe0d6f 	ldmne	lr!, {r0, r1, r2, r3, r5, r6, r8, sl, fp}^
     164:	43010000 	movwmi	r0, #4096	; 0x1000
     168:	0000002d 	andeq	r0, r0, sp, lsr #32
     16c:	0e6e9102 	lgneqe	f1, f2
     170:	0000172f 	andeq	r1, r0, pc, lsr #14
     174:	002d4601 	eoreq	r4, sp, r1, lsl #12
     178:	91020000 	mrsls	r0, (UNDEF: 2)
     17c:	04140e77 	ldreq	r0, [r4], #-3703	; 0xfffff189
     180:	47010000 	strmi	r0, [r1, -r0]
     184:	0000002d 	andeq	r0, r0, sp, lsr #32
     188:	00769102 	rsbseq	r9, r6, r2, lsl #2
     18c:	00041100 	andeq	r1, r4, r0, lsl #2
     190:	c3000200 	movwgt	r0, #512	; 0x200
     194:	04000000 	streq	r0, [r0], #-0
     198:	002bd201 	eoreq	sp, fp, r1, lsl #4
     19c:	30090c00 	andcc	r0, r9, r0, lsl #24
     1a0:	114f0000 	mrsne	r0, SPSR
     1a4:	00100000 	andseq	r0, r0, r0
	...
     1b0:	00b60000 	adcseq	r0, r6, r0
     1b4:	0b0a0000 	bleq	2801bc <_Min_Stack_Size+0x27fdbc>
     1b8:	01020000 	mrseq	r0, (UNDEF: 2)
     1bc:	00237108 	eoreq	r7, r3, r8, lsl #2
     1c0:	07020200 	streq	r0, [r2, -r0, lsl #4]
     1c4:	00000470 	andeq	r0, r0, r0, ror r4
     1c8:	32337503 	eorscc	r7, r3, #12582912	; 0xc00000
     1cc:	4b0b0500 	blmi	2c15d4 <_Min_Stack_Size+0x2c11d4>
     1d0:	04000000 	streq	r0, [r0], #-0
     1d4:	0000003b 	andeq	r0, r0, fp, lsr r0
     1d8:	fa070402 	blx	1c11e8 <_Min_Stack_Size+0x1c0de8>
     1dc:	0200001e 	andeq	r0, r0, #30
     1e0:	21660704 	cmncs	r6, r4, lsl #14
     1e4:	07050000 	streq	r0, [r5, -r0]
     1e8:	00002d01 	andeq	r2, r0, r1, lsl #26
     1ec:	c7350200 	ldrgt	r0, [r5, -r0, lsl #4]!
     1f0:	06000000 	streq	r0, [r0], -r0
     1f4:	000022ad 	andeq	r2, r0, sp, lsr #5
     1f8:	22b80600 	adcscs	r0, r8, #0, 12
     1fc:	06010000 	streq	r0, [r1], -r0
     200:	000022c3 	andeq	r2, r0, r3, asr #5
     204:	22ce0602 	sbccs	r0, lr, #2097152	; 0x200000
     208:	06030000 	streq	r0, [r3], -r0
     20c:	0000091c 	andeq	r0, r0, ip, lsl r9
     210:	09650604 	stmdbeq	r5!, {r2, r9, sl}^
     214:	06050000 	streq	r0, [r5], -r0
     218:	00002d8c 	andeq	r2, r0, ip, lsl #27
     21c:	23100606 	tstcs	r0, #6291456	; 0x600000
     220:	06070000 	streq	r0, [r7], -r0
     224:	0000231b 	andeq	r2, r0, fp, lsl r3
     228:	23260608 			; <UNDEFINED> instruction: 0x23260608
     22c:	06090000 	streq	r0, [r9], -r0
     230:	00001f38 	andeq	r1, r0, r8, lsr pc
     234:	1f44060a 	svcne	0x0044060a
     238:	060b0000 	streq	r0, [fp], -r0
     23c:	00001f50 	andeq	r1, r0, r0, asr pc
     240:	1f5c060c 	svcne	0x005c060c
     244:	060d0000 	streq	r0, [sp], -r0
     248:	00001f68 	andeq	r1, r0, r8, ror #30
     24c:	1f74060e 	svcne	0x0074060e
     250:	000f0000 	andeq	r0, pc, r0
     254:	00027b07 	andeq	r7, r2, r7, lsl #22
     258:	59460200 	stmdbpl	r6, {r9}^
     25c:	05000000 	streq	r0, [r0, #-0]
     260:	002d0107 	eoreq	r0, sp, r7, lsl #2
     264:	30030000 	andcc	r0, r3, r0
     268:	000000f2 	strdeq	r0, [r0], -r2
     26c:	00315906 	eorseq	r5, r1, r6, lsl #18
     270:	65060000 	strvs	r0, [r6, #-0]
     274:	01000032 	tsteq	r0, r2, lsr r0
     278:	00312d06 	eorseq	r2, r1, r6, lsl #26
     27c:	07000200 	streq	r0, [r0, -r0, lsl #4]
     280:	000031dd 	ldrdeq	r3, [r0], -sp
     284:	00d23403 	sbcseq	r3, r2, r3, lsl #8
     288:	91070000 	mrsls	r0, (UNDEF: 7)
     28c:	0300002f 	movweq	r0, #47	; 0x2f
     290:	00010836 	andeq	r0, r1, r6, lsr r8
     294:	0e040800 	cdpeq	8, 0, cr0, cr4, cr0, {0}
     298:	09000001 	stmdbeq	r0, {r0}
     29c:	04180a01 	ldreq	r0, [r8], #-2561	; 0xfffff5ff
     2a0:	00016c27 	andeq	r6, r1, r7, lsr #24
     2a4:	4d490b00 	vstrmi	d16, [r9, #-0]
     2a8:	29040052 	stmdbcs	r4, {r1, r4, r6}
     2ac:	00000046 	andeq	r0, r0, r6, asr #32
     2b0:	0b002302 	bleq	8ec0 <_Min_Stack_Size+0x8ac0>
     2b4:	00524d45 	subseq	r4, r2, r5, asr #26
     2b8:	00462a04 	subeq	r2, r6, r4, lsl #20
     2bc:	23020000 	movwcs	r0, #8192	; 0x2000
     2c0:	319e0c04 	orrscc	r0, lr, r4, lsl #24
     2c4:	2b040000 	blcs	1002cc <_Min_Stack_Size+0xffecc>
     2c8:	00000046 	andeq	r0, r0, r6, asr #32
     2cc:	0c082302 	stceq	3, cr2, [r8], {2}
     2d0:	000031d8 	ldrdeq	r3, [r0], -r8
     2d4:	00462c04 	subeq	r2, r6, r4, lsl #24
     2d8:	23020000 	movwcs	r0, #8192	; 0x2000
     2dc:	31d20c0c 	bicscc	r0, r2, ip, lsl #24
     2e0:	2d040000 	stccs	0, cr0, [r4, #-0]
     2e4:	00000046 	andeq	r0, r0, r6, asr #32
     2e8:	0b102302 	bleq	408ef8 <_Min_Stack_Size+0x408af8>
     2ec:	04005250 	streq	r5, [r0], #-592	; 0xfffffdb0
     2f0:	0000462e 	andeq	r4, r0, lr, lsr #12
     2f4:	14230200 	strtne	r0, [r3], #-512	; 0xfffffe00
     2f8:	30ef0700 	rsccc	r0, pc, r0, lsl #14
     2fc:	2f040000 	svccs	0x00040000
     300:	00000110 	andeq	r0, r0, r0, lsl r1
     304:	0000fd0d 	andeq	pc, r0, sp, lsl #26
     308:	00018700 	andeq	r8, r1, r0, lsl #14
     30c:	00520e00 	subseq	r0, r2, r0, lsl #28
     310:	000f0000 	andeq	r0, pc, r0
     314:	0031b50f 	eorseq	fp, r1, pc, lsl #10
     318:	77340100 	ldrvc	r0, [r4, -r0, lsl #2]!
     31c:	05000001 	streq	r0, [r0, #-1]
     320:	00001c03 	andeq	r1, r0, r3, lsl #24
     324:	ba011020 	blt	443ac <_Min_Stack_Size+0x43fac>
     328:	0100002f 	tsteq	r0, pc, lsr #32
     32c:	000001cc 	andeq	r0, r0, ip, asr #3
     330:	00000000 	andeq	r0, r0, r0
     334:	005c0000 	subseq	r0, ip, r0
     338:	10010000 	andne	r0, r1, r0
     33c:	0031a301 	eorseq	sl, r1, r1, lsl #6
     340:	01c60100 	biceq	r0, r6, r0, lsl #2
	...
     34c:	00000088 	andeq	r0, r0, r8, lsl #1
     350:	f9011001 			; <UNDEFINED> instruction: 0xf9011001
     354:	01000030 	tsteq	r0, r0, lsr r0
     358:	000001c0 	andeq	r0, r0, r0, asr #3
     35c:	00000000 	andeq	r0, r0, r0
     360:	00b40000 	adcseq	r0, r4, r0
     364:	10010000 	andne	r0, r1, r0
     368:	00325301 	eorseq	r5, r2, r1, lsl #6
     36c:	01ba0100 			; <UNDEFINED> instruction: 0x01ba0100
	...
     378:	000000e0 	andeq	r0, r0, r0, ror #1
     37c:	65011001 	strvs	r1, [r1, #-1]
     380:	01000031 	tsteq	r0, r1, lsr r0
     384:	000001b4 			; <UNDEFINED> instruction: 0x000001b4
     388:	00000000 	andeq	r0, r0, r0
     38c:	010c0000 	mrseq	r0, (UNDEF: 12)
     390:	10010000 	andne	r0, r1, r0
     394:	00309301 	eorseq	r9, r0, r1, lsl #6
     398:	01ae0100 			; <UNDEFINED> instruction: 0x01ae0100
	...
     3a4:	00000138 	andeq	r0, r0, r8, lsr r1
     3a8:	54011001 	strpl	r1, [r1], #-1
     3ac:	01000030 	tsteq	r0, r0, lsr r0
     3b0:	000001a8 	andeq	r0, r0, r8, lsr #3
     3b4:	00000000 	andeq	r0, r0, r0
     3b8:	01640000 	cmneq	r4, r0
     3bc:	10010000 	andne	r0, r1, r0
     3c0:	00324201 	eorseq	r4, r2, r1, lsl #4
     3c4:	01a20100 			; <UNDEFINED> instruction: 0x01a20100
	...
     3d0:	00000190 	muleq	r0, r0, r1
     3d4:	0b011001 	bleq	443e0 <_Min_Stack_Size+0x43fe0>
     3d8:	01000031 	tsteq	r0, r1, lsr r0
     3dc:	0000019b 	muleq	r0, fp, r1
     3e0:	00000000 	andeq	r0, r0, r0
     3e4:	01bc0000 			; <UNDEFINED> instruction: 0x01bc0000
     3e8:	10010000 	andne	r0, r1, r0
     3ec:	00308201 	eorseq	r8, r0, r1, lsl #4
     3f0:	01950100 	orrseq	r0, r5, r0, lsl #2
	...
     3fc:	000001e8 	andeq	r0, r0, r8, ror #3
     400:	f0011001 			; <UNDEFINED> instruction: 0xf0011001
     404:	01000031 	tsteq	r0, r1, lsr r0
     408:	0000018f 	andeq	r0, r0, pc, lsl #3
     40c:	00000000 	andeq	r0, r0, r0
     410:	02140000 	andseq	r0, r4, #0
     414:	10010000 	andne	r0, r1, r0
     418:	00311c01 	eorseq	r1, r1, r1, lsl #24
     41c:	01890100 	orreq	r0, r9, r0, lsl #2
     420:	08000378 	stmdaeq	r0, {r3, r4, r5, r6, r8, r9}
     424:	0800039c 	stmdaeq	r0, {r2, r3, r4, r7, r8, r9}
     428:	00000240 	andeq	r0, r0, r0, asr #4
     42c:	2f011001 	svccs	0x00011001
     430:	01000030 	tsteq	r0, r0, lsr r0
     434:	03540183 	cmpeq	r4, #-1073741792	; 0xc0000020
     438:	03780800 	cmneq	r8, #0, 16
     43c:	026c0800 	rsbeq	r0, ip, #0, 16
     440:	10010000 	andne	r0, r1, r0
     444:	00320101 	eorseq	r0, r2, r1, lsl #2
     448:	017d0100 	cmneq	sp, r0, lsl #2
     44c:	08000330 	stmdaeq	r0, {r4, r5, r8, r9}
     450:	08000354 	stmdaeq	r0, {r2, r4, r6, r8, r9}
     454:	00000298 	muleq	r0, r8, r2
     458:	48011001 	stmdami	r1, {r0, ip}
     45c:	01000031 	tsteq	r0, r1, lsr r0
     460:	030c0177 	movweq	r0, #49527	; 0xc177
     464:	03300800 	teqeq	r0, #0, 16
     468:	02c40800 	sbceq	r0, r4, #0, 16
     46c:	10010000 	andne	r0, r1, r0
     470:	002fdf01 	eoreq	sp, pc, r1, lsl #30
     474:	01700100 	cmneq	r0, r0, lsl #2
     478:	080002e8 	stmdaeq	r0, {r3, r5, r6, r7, r9}
     47c:	0800030c 	stmdaeq	r0, {r2, r3, r8, r9}
     480:	000002f0 	strdeq	r0, [r0], -r0	; <UNPREDICTABLE>
     484:	86011101 	strhi	r1, [r1], -r1, lsl #2
     488:	01000031 	tsteq	r0, r1, lsr r0
     48c:	02c4016a 	sbceq	r0, r4, #-2147483622	; 0x8000001a
     490:	02e80800 	rsceq	r0, r8, #0, 16
     494:	031c0800 	tsteq	ip, #0, 16
     498:	2f010000 	svccs	0x00010000
     49c:	12000003 	andne	r0, r0, #3
     4a0:	000031c6 	andeq	r3, r0, r6, asr #3
     4a4:	00c76a01 	sbceq	r6, r7, r1, lsl #20
     4a8:	91020000 	mrsls	r0, (UNDEF: 2)
     4ac:	313c1277 	teqcc	ip, r7, ror r2
     4b0:	6a010000 	bvs	404b8 <_Min_Stack_Size+0x400b8>
     4b4:	000000fd 	strdeq	r0, [r0], -sp
     4b8:	00709102 	rsbseq	r9, r0, r2, lsl #2
     4bc:	32270113 	eorcc	r0, r7, #-1073741820	; 0xc0000004
     4c0:	65010000 	strvs	r0, [r1, #-0]
     4c4:	00000001 	andeq	r0, r0, r1
     4c8:	00000000 	andeq	r0, r0, r0
     4cc:	00037800 	andeq	r7, r3, r0, lsl #16
     4d0:	03660100 	cmneq	r6, #0, 2
     4d4:	c6120000 	ldrgt	r0, [r2], -r0
     4d8:	01000031 	tsteq	r0, r1, lsr r0
     4dc:	0000c765 	andeq	ip, r0, r5, ror #14
     4e0:	77910200 	ldrvc	r0, [r1, r0, lsl #4]
     4e4:	0030cb12 	eorseq	ip, r0, r2, lsl fp
     4e8:	f2650100 	vrhadd.s32	d16, d5, d0
     4ec:	02000000 	andeq	r0, r0, #0
     4f0:	11007691 			; <UNDEFINED> instruction: 0x11007691
     4f4:	002ff001 	eoreq	pc, pc, r1
     4f8:	01610100 	cmneq	r1, r0, lsl #2
	...
     504:	000003c8 	andeq	r0, r0, r8, asr #7
     508:	00038f01 	andeq	r8, r3, r1, lsl #30
     50c:	31c61200 	biccc	r1, r6, r0, lsl #4
     510:	61010000 	mrsvs	r0, (UNDEF: 1)
     514:	000000c7 	andeq	r0, r0, r7, asr #1
     518:	00779102 	rsbseq	r9, r7, r2, lsl #2
     51c:	32120111 	andscc	r0, r2, #1073741828	; 0x40000004
     520:	5c010000 	stcpl	0, cr0, [r1], {-0}
     524:	00000001 	andeq	r0, r0, r1
     528:	00000000 	andeq	r0, r0, r0
     52c:	00042400 	andeq	r2, r4, r0, lsl #8
     530:	03b80100 			; <UNDEFINED> instruction: 0x03b80100
     534:	c6120000 	ldrgt	r0, [r2], -r0
     538:	01000031 	tsteq	r0, r1, lsr r0
     53c:	0000c75c 	andeq	ip, r0, ip, asr r7
     540:	77910200 	ldrvc	r0, [r1, r0, lsl #4]
     544:	40011100 	andmi	r1, r1, r0, lsl #2
     548:	01000030 	tsteq	r0, r0, lsr r0
     54c:	02980157 	addseq	r0, r8, #-1073741803	; 0xc0000015
     550:	02c40800 	sbceq	r0, r4, #0, 16
     554:	04800800 	streq	r0, [r0], #2048	; 0x800
     558:	e1010000 	mrs	r0, (UNDEF: 1)
     55c:	12000003 	andne	r0, r0, #3
     560:	000031c6 	andeq	r3, r0, r6, asr #3
     564:	00c75701 	sbceq	r5, r7, r1, lsl #14
     568:	91020000 	mrsls	r0, (UNDEF: 2)
     56c:	01140077 	tsteq	r4, r7, ror r0
     570:	00002fa8 	andeq	r2, r0, r8, lsr #31
     574:	ec014301 	stc	3, cr4, [r1], {1}
     578:	98080001 	stmdals	r8, {r0}
     57c:	dc080002 	stcle	0, cr0, [r8], {2}
     580:	01000004 	tsteq	r0, r4
     584:	0031c612 	eorseq	ip, r1, r2, lsl r6
     588:	c7430100 	strbgt	r0, [r3, -r0, lsl #2]
     58c:	02000000 	andeq	r0, r0, #0
     590:	cb127791 	blgt	49e3dc <_Min_Stack_Size+0x49dfdc>
     594:	01000030 	tsteq	r0, r0, lsr r0
     598:	0000f243 	andeq	pc, r0, r3, asr #4
     59c:	76910200 	ldrvc	r0, [r1], r0, lsl #4
     5a0:	039b0000 	orrseq	r0, fp, #0
     5a4:	00020000 	andeq	r0, r2, r0
     5a8:	000001f1 	strdeq	r0, [r0], -r1
     5ac:	2bd20104 	blcs	ff4809c4 <_estack+0xdf47e1c4>
     5b0:	230c0000 	movwcs	r0, #49152	; 0xc000
     5b4:	4f000035 	svcmi	0x00000035
     5b8:	c8000011 	stmdagt	r0, {r0, r4}
	...
     5c4:	fb000000 	blx	5ce <_Min_Stack_Size+0x1ce>
     5c8:	70000002 	andvc	r0, r0, r2
     5cc:	0200000b 	andeq	r0, r0, #11
     5d0:	02003875 	andeq	r3, r0, #7667712	; 0x750000
     5d4:	00003709 	andeq	r3, r0, r9, lsl #14
     5d8:	08010300 	stmdaeq	r1, {r8, r9}
     5dc:	00002371 	andeq	r2, r0, r1, ror r3
     5e0:	70070203 	andvc	r0, r7, r3, lsl #4
     5e4:	02000004 	andeq	r0, r0, #4
     5e8:	00323375 	eorseq	r3, r2, r5, ror r3
     5ec:	00500b02 	subseq	r0, r0, r2, lsl #22
     5f0:	04030000 	streq	r0, [r3], #-0
     5f4:	001efa07 	andseq	pc, lr, r7, lsl #20
     5f8:	01070400 	tsteq	r7, r0, lsl #8
     5fc:	00000037 	andeq	r0, r0, r7, lsr r0
     600:	00c51103 	sbceq	r1, r5, r3, lsl #2
     604:	19050000 	stmdbne	r5, {}	; <UNPREDICTABLE>
     608:	00000035 	andeq	r0, r0, r5, lsr r0
     60c:	00365405 	eorseq	r5, r6, r5, lsl #8
     610:	59050100 	stmdbpl	r5, {r8}
     614:	02000036 	andeq	r0, r0, #54	; 0x36
     618:	00365e05 	eorseq	r5, r6, r5, lsl #28
     61c:	63050300 	movwvs	r0, #21248	; 0x5300
     620:	04000036 	streq	r0, [r0], #-54	; 0xffffffca
     624:	00366805 	eorseq	r6, r6, r5, lsl #16
     628:	07050500 	streq	r0, [r5, -r0, lsl #10]
     62c:	06000034 			; <UNDEFINED> instruction: 0x06000034
     630:	00366d05 	eorseq	r6, r6, r5, lsl #26
     634:	1e050700 	cdpne	7, 0, cr0, cr5, cr0, {0}
     638:	08000035 	stmdaeq	r0, {r0, r2, r4, r5}
     63c:	00367205 	eorseq	r7, r6, r5, lsl #4
     640:	9b050900 	blls	142a48 <_Min_Stack_Size+0x142648>
     644:	0a000033 	beq	718 <_Min_Stack_Size+0x318>
     648:	0033a105 	eorseq	sl, r3, r5, lsl #2
     64c:	a7050b00 	strge	r0, [r5, -r0, lsl #22]
     650:	0c000033 	stceq	0, cr0, [r0], {51}	; 0x33
     654:	0033ad05 	eorseq	sl, r3, r5, lsl #26
     658:	b3050d00 	movwlt	r0, #23808	; 0x5d00
     65c:	0e000033 	mcreq	0, 0, r0, cr0, cr3, {1}
     660:	0033b905 	eorseq	fp, r3, r5, lsl #18
     664:	06000f00 	streq	r0, [r0], -r0, lsl #30
     668:	00003513 	andeq	r3, r0, r3, lsl r5
     66c:	00572203 	subseq	r2, r7, r3, lsl #4
     670:	04030000 	streq	r0, [r3], #-0
     674:	00216607 	eoreq	r6, r1, r7, lsl #12
     678:	01070400 	tsteq	r7, r0, lsl #8
     67c:	00000037 	andeq	r0, r0, r7, lsr r0
     680:	00f14904 	rscseq	r4, r1, r4, lsl #18
     684:	b9050000 	stmdblt	r5, {}	; <UNPREDICTABLE>
     688:	00000034 	andeq	r0, r0, r4, lsr r0
     68c:	0034ac05 	eorseq	sl, r4, r5, lsl #24
     690:	06000100 	streq	r0, [r0], -r0, lsl #2
     694:	00003607 	andeq	r3, r0, r7, lsl #12
     698:	00d74c04 	sbcseq	r4, r7, r4, lsl #24
     69c:	1c070000 	stcne	0, cr0, [r7], {-0}
     6a0:	01672705 	cmneq	r7, r5, lsl #14
     6a4:	43080000 	movwmi	r0, #32768	; 0x8000
     6a8:	05004c52 	streq	r4, [r0, #-3154]	; 0xfffff3ae
     6ac:	00004529 	andeq	r4, r0, r9, lsr #10
     6b0:	00230200 	eoreq	r0, r3, r0, lsl #4
     6b4:	48524308 	ldmdami	r2, {r3, r8, r9, lr}^
     6b8:	452a0500 	strmi	r0, [sl, #-1280]!	; 0xfffffb00
     6bc:	02000000 	andeq	r0, r0, #0
     6c0:	49080423 	stmdbmi	r8, {r0, r1, r5, sl}
     6c4:	05005244 	streq	r5, [r0, #-580]	; 0xfffffdbc
     6c8:	0000452b 	andeq	r4, r0, fp, lsr #10
     6cc:	08230200 	stmdaeq	r3!, {r9}
     6d0:	52444f08 	subpl	r4, r4, #8, 30
     6d4:	452c0500 	strmi	r0, [ip, #-1280]!	; 0xfffffb00
     6d8:	02000000 	andeq	r0, r0, #0
     6dc:	8e090c23 	cdphi	12, 0, cr0, cr9, cr3, {1}
     6e0:	05000032 	streq	r0, [r0, #-50]	; 0xffffffce
     6e4:	0000452d 	andeq	r4, r0, sp, lsr #10
     6e8:	10230200 	eorne	r0, r3, r0, lsl #4
     6ec:	52524208 	subspl	r4, r2, #8, 4	; 0x80000000
     6f0:	452e0500 	strmi	r0, [lr, #-1280]!	; 0xfffffb00
     6f4:	02000000 	andeq	r0, r0, #0
     6f8:	1d091423 	cfstrsne	mvf1, [r9, #-140]	; 0xffffff74
     6fc:	05000037 	streq	r0, [r0, #-55]	; 0xffffffc9
     700:	0000452f 	andeq	r4, r0, pc, lsr #10
     704:	18230200 	stmdane	r3!, {r9}
     708:	00fc0a00 	rscseq	r0, ip, r0, lsl #20
     70c:	82060000 	andhi	r0, r6, #0
     710:	05000032 	streq	r0, [r0, #-50]	; 0xffffffce
     714:	00017d30 	andeq	r7, r1, r0, lsr sp
     718:	67040b00 	strvs	r0, [r4, -r0, lsl #22]
     71c:	0c000001 	stceq	0, cr0, [r0], {1}
     720:	00000177 	andeq	r0, r0, r7, ror r1
     724:	35c1010d 	strbcc	r0, [r1, #269]	; 0x10d
     728:	35010000 	strcc	r0, [r1, #-0]
     72c:	00000101 	andeq	r0, r0, r1, lsl #2
     730:	00000000 	andeq	r0, r0, r0
     734:	05380000 	ldreq	r0, [r8, #-0]!
     738:	cb010000 	blgt	40740 <_Min_Stack_Size+0x40340>
     73c:	0e000001 	cdpeq	0, 0, cr0, cr0, cr1, {0}
     740:	000035d7 	ldrdeq	r3, [r0], -r7
     744:	2d013501 	cfstr32cs	mvfx3, [r1, #-4]
     748:	02000000 	andeq	r0, r0, #0
     74c:	4b0e7791 	blmi	39e598 <_Min_Stack_Size+0x39e198>
     750:	01000036 	tsteq	r0, r6, lsr r0
     754:	00c50135 	sbceq	r0, r5, r5, lsr r1
     758:	91020000 	mrsls	r0, (UNDEF: 2)
     75c:	33730e76 	cmncc	r3, #1888	; 0x760
     760:	35010000 	strcc	r0, [r1, #-0]
     764:	0000f101 	andeq	pc, r0, r1, lsl #2
     768:	75910200 	ldrvc	r0, [r1, #512]	; 0x200
     76c:	b6010f00 	strlt	r0, [r1], -r0, lsl #30
     770:	01000032 	tsteq	r0, r2, lsr r0
     774:	2d01011c 	stfcss	f0, [r1, #-112]	; 0xffffff90
	...
     780:	94000000 	strls	r0, [r0], #-0
     784:	01000005 	tsteq	r0, r5
     788:	00000218 	andeq	r0, r0, r8, lsl r2
     78c:	0035d70e 	eorseq	sp, r5, lr, lsl #14
     790:	011c0100 	tsteq	ip, r0, lsl #2
     794:	0000002d 	andeq	r0, r0, sp, lsr #32
     798:	0e6f9102 	lgneqe	f1, f2
     79c:	0000364b 	andeq	r3, r0, fp, asr #12
     7a0:	c5011c01 	strgt	r1, [r1, #-3073]	; 0xfffff3ff
     7a4:	02000000 	andeq	r0, r0, #0
     7a8:	bf106e91 	svclt	0x00106e91
     7ac:	01000033 	tsteq	r0, r3, lsr r0
     7b0:	002d011e 	eoreq	r0, sp, lr, lsl r1
     7b4:	91020000 	mrsls	r0, (UNDEF: 2)
     7b8:	010d0077 	tsteq	sp, r7, ror r0
     7bc:	00003677 	andeq	r3, r0, r7, ror r6
     7c0:	01010501 	tsteq	r1, r1, lsl #10
	...
     7cc:	000005f0 	strdeq	r0, [r0], -r0	; <UNPREDICTABLE>
     7d0:	00025201 	andeq	r5, r2, r1, lsl #4
     7d4:	35d70e00 	ldrbcc	r0, [r7, #3584]	; 0xe00
     7d8:	05010000 	streq	r0, [r1, #-0]
     7dc:	00002d01 	andeq	r2, r0, r1, lsl #26
     7e0:	77910200 	ldrvc	r0, [r1, r0, lsl #4]
     7e4:	00364b0e 	eorseq	r4, r6, lr, lsl #22
     7e8:	01050100 	mrseq	r0, (UNDEF: 21)
     7ec:	000000c5 	andeq	r0, r0, r5, asr #1
     7f0:	00769102 	rsbseq	r9, r6, r2, lsl #2
     7f4:	32a00111 	adccc	r0, r0, #1073741828	; 0x40000004
     7f8:	da010000 	ble	40800 <_Min_Stack_Size+0x40400>
     7fc:	00000001 	andeq	r0, r0, r1
     800:	00000000 	andeq	r0, r0, r0
     804:	00064c00 	andeq	r4, r6, r0, lsl #24
     808:	02890100 	addeq	r0, r9, #0, 2
     80c:	d7120000 	ldrle	r0, [r2, -r0]
     810:	01000035 	tsteq	r0, r5, lsr r0
     814:	00002dda 	ldrdeq	r2, [r0], -sl
     818:	77910200 	ldrvc	r0, [r1, r0, lsl #4]
     81c:	00329312 	eorseq	r9, r2, r2, lsl r3
     820:	2dda0100 	ldfcse	f0, [sl]
     824:	02000000 	andeq	r0, r0, #0
     828:	11007691 			; <UNDEFINED> instruction: 0x11007691
     82c:	00359001 	eorseq	r9, r5, r1
     830:	01a60100 			; <UNDEFINED> instruction: 0x01a60100
	...
     83c:	000006a8 	andeq	r0, r0, r8, lsr #13
     840:	0002ce01 	andeq	ip, r2, r1, lsl #28
     844:	35d71200 	ldrbcc	r1, [r7, #512]	; 0x200
     848:	a6010000 	strge	r0, [r1], -r0
     84c:	0000002d 	andeq	r0, r0, sp, lsr #32
     850:	12779102 	rsbsne	r9, r7, #-2147483648	; 0x80000000
     854:	0000364b 	andeq	r3, r0, fp, asr #12
     858:	00c5a601 	sbceq	sl, r5, r1, lsl #12
     85c:	91020000 	mrsls	r0, (UNDEF: 2)
     860:	32931276 	addscc	r1, r3, #1610612743	; 0x60000007
     864:	a6010000 	strge	r0, [r1], -r0
     868:	0000002d 	andeq	r0, r0, sp, lsr #32
     86c:	00759102 	rsbseq	r9, r5, r2, lsl #2
     870:	37030111 	smladcc	r3, r1, r1, r0
     874:	7e010000 	cdpvc	0, 0, cr0, cr1, cr0, {0}
     878:	00000001 	andeq	r0, r0, r1
     87c:	00000000 	andeq	r0, r0, r0
     880:	00070400 	andeq	r0, r7, r0, lsl #8
     884:	035d0100 	cmpeq	sp, #0, 2
     888:	d7120000 	ldrle	r0, [r2, -r0]
     88c:	01000035 	tsteq	r0, r5, lsr r0
     890:	00002d7e 	andeq	r2, r0, lr, ror sp
     894:	6f910200 	svcvs	0x00910200
     898:	0032f012 	eorseq	pc, r2, r2, lsl r0	; <UNPREDICTABLE>
     89c:	2d7e0100 	ldfcse	f0, [lr, #-0]
     8a0:	02000000 	andeq	r0, r0, #0
     8a4:	21136e91 			; <UNDEFINED> instruction: 0x21136e91
     8a8:	01000033 	tsteq	r0, r3, lsr r0
     8ac:	00004580 	andeq	r4, r0, r0, lsl #11
     8b0:	74910200 	ldrvc	r0, [r1], #512	; 0x200
     8b4:	00000014 	andeq	r0, r0, r4, lsl r0
     8b8:	00000000 	andeq	r0, r0, r0
     8bc:	00032c00 	andeq	r2, r3, r0, lsl #24
     8c0:	00691500 	rsbeq	r1, r9, r0, lsl #10
     8c4:	002d8901 	eoreq	r8, sp, r1, lsl #18
     8c8:	91020000 	mrsls	r0, (UNDEF: 2)
     8cc:	00140073 	andseq	r0, r4, r3, ror r0
     8d0:	00000000 	andeq	r0, r0, r0
     8d4:	46000000 	strmi	r0, [r0], -r0
     8d8:	15000003 	strne	r0, [r0, #-3]
     8dc:	93010069 	movwls	r0, #4201	; 0x1069
     8e0:	0000002d 	andeq	r0, r0, sp, lsr #32
     8e4:	00729102 	rsbseq	r9, r2, r2, lsl #2
     8e8:	00000016 	andeq	r0, r0, r6, lsl r0
     8ec:	00000000 	andeq	r0, r0, r0
     8f0:	00691500 	rsbeq	r1, r9, r0, lsl #10
     8f4:	002d9d01 	eoreq	r9, sp, r1, lsl #26
     8f8:	91020000 	mrsls	r0, (UNDEF: 2)
     8fc:	17000071 	smlsdxne	r0, r1, r0, r0
     900:	0033cc01 	eorseq	ip, r3, r1, lsl #24
     904:	013c0100 	teqeq	ip, r0, lsl #2
     908:	0800039c 	stmdaeq	r0, {r2, r3, r4, r7, r8, r9}
     90c:	08000528 	stmdaeq	r0, {r3, r5, r8, sl}
     910:	00000760 	andeq	r0, r0, r0, ror #14
     914:	35d71201 	ldrbcc	r1, [r7, #513]	; 0x201
     918:	3c010000 	stccc	0, cr0, [r1], {-0}
     91c:	0000002d 	andeq	r0, r0, sp, lsr #32
     920:	12779102 	rsbsne	r9, r7, #-2147483648	; 0x80000000
     924:	0000364b 	andeq	r3, r0, fp, asr #12
     928:	00c53c01 	sbceq	r3, r5, r1, lsl #24
     92c:	91020000 	mrsls	r0, (UNDEF: 2)
     930:	32f01276 	rscscc	r1, r0, #1610612743	; 0x60000007
     934:	3c010000 	stccc	0, cr0, [r1], {-0}
     938:	0000002d 	andeq	r0, r0, sp, lsr #32
     93c:	00759102 	rsbseq	r9, r5, r2, lsl #2
     940:	00019300 	andeq	r9, r1, r0, lsl #6
     944:	52000200 	andpl	r0, r0, #0, 4
     948:	04000003 	streq	r0, [r0], #-3
     94c:	002bd201 	eoreq	sp, fp, r1, lsl #4
     950:	374a0c00 	strbcc	r0, [sl, -r0, lsl #24]
     954:	114f0000 	mrsne	r0, SPSR
     958:	01080000 	mrseq	r0, (UNDEF: 8)
	...
     964:	05100000 	ldreq	r0, [r0, #-0]
     968:	0c4f0000 	mareq	acc0, r0, pc
     96c:	75020000 	strvc	r0, [r2, #-0]
     970:	09020038 	stmdbeq	r2, {r3, r4, r5}
     974:	00000037 	andeq	r0, r0, r7, lsr r0
     978:	71080103 	tstvc	r8, r3, lsl #2
     97c:	03000023 	movweq	r0, #35	; 0x23
     980:	04700702 	ldrbteq	r0, [r0], #-1794	; 0xfffff8fe
     984:	75020000 	strvc	r0, [r2, #-0]
     988:	02003233 	andeq	r3, r0, #805306371	; 0x30000003
     98c:	0000500b 	andeq	r5, r0, fp
     990:	07040300 	streq	r0, [r4, -r0, lsl #6]
     994:	00001efa 	strdeq	r1, [r0], -sl
     998:	66070403 	strvs	r0, [r7], -r3, lsl #8
     99c:	04000021 	streq	r0, [r0], #-33	; 0xffffffdf
     9a0:	00370107 	eorseq	r0, r7, r7, lsl #2
     9a4:	30030000 	andcc	r0, r3, r0
     9a8:	00000078 	andeq	r0, r0, r8, ror r0
     9ac:	00379605 	eorseq	r9, r7, r5, lsl #12
     9b0:	06050000 	streq	r0, [r5], -r0
     9b4:	01000039 	tsteq	r0, r9, lsr r0
     9b8:	38070600 	stmdacc	r7, {r9, sl}
     9bc:	33030000 	movwcc	r0, #12288	; 0x3000
     9c0:	0000005e 	andeq	r0, r0, lr, asr r0
     9c4:	39f80107 	ldmibcc	r8!, {r0, r1, r2, r8}^
     9c8:	8b010000 	blhi	409d0 <_Min_Stack_Size+0x405d0>
     9cc:	00000001 	andeq	r0, r0, r1
     9d0:	00000000 	andeq	r0, r0, r0
     9d4:	0007bc00 	andeq	fp, r7, r0, lsl #24
     9d8:	00e40100 	rsceq	r0, r4, r0, lsl #2
     9dc:	22080000 	andcs	r0, r8, #0
     9e0:	01000037 	tsteq	r0, r7, lsr r0
     9e4:	00002d8b 	andeq	r2, r0, fp, lsl #27
     9e8:	6f910200 	svcvs	0x00910200
     9ec:	0039e208 	eorseq	lr, r9, r8, lsl #4
     9f0:	2d8b0100 	stfcss	f0, [fp]
     9f4:	02000000 	andeq	r0, r0, #0
     9f8:	ee086e91 	mcr	14, 0, r6, cr8, cr1, {4}
     9fc:	01000037 	tsteq	r0, r7, lsr r0
     a00:	00002d8b 	andeq	r2, r0, fp, lsl #27
     a04:	6d910200 	lfmvs	f0, 4, [r1]
     a08:	0038da09 	eorseq	sp, r8, r9, lsl #20
     a0c:	2d8d0100 	stfcss	f0, [sp]
     a10:	02000000 	andeq	r0, r0, #0
     a14:	a5097391 	strge	r7, [r9, #-913]	; 0xfffffc6f
     a18:	01000037 	tsteq	r0, r7, lsr r0
     a1c:	0000458f 	andeq	r4, r0, pc, lsl #11
     a20:	74910200 	ldrvc	r0, [r1], #512	; 0x200
     a24:	c8010a00 	stmdagt	r1, {r9, fp}
     a28:	01000039 	tsteq	r0, r9, lsr r0
     a2c:	00780177 	rsbseq	r0, r8, r7, ror r1
	...
     a38:	08180000 	ldmdaeq	r8, {}	; <UNPREDICTABLE>
     a3c:	1f010000 	svcne	0x00010000
     a40:	08000001 	stmdaeq	r0, {r0}
     a44:	00003722 	andeq	r3, r0, r2, lsr #14
     a48:	002d7701 	eoreq	r7, sp, r1, lsl #14
     a4c:	91020000 	mrsls	r0, (UNDEF: 2)
     a50:	3733096f 	ldrcc	r0, [r3, -pc, ror #18]!
     a54:	79010000 	stmdbvc	r1, {}	; <UNPREDICTABLE>
     a58:	00000078 	andeq	r0, r0, r8, ror r0
     a5c:	00779102 	rsbseq	r9, r7, r2, lsl #2
     a60:	38a30107 	stmiacc	r3!, {r0, r1, r2, r8}
     a64:	65010000 	strvs	r0, [r1, #-0]
     a68:	00000001 	andeq	r0, r0, r1
     a6c:	00000000 	andeq	r0, r0, r0
     a70:	00087400 	andeq	r7, r8, r0, lsl #8
     a74:	01480100 	mrseq	r0, (UNDEF: 88)
     a78:	22080000 	andcs	r0, r8, #0
     a7c:	01000037 	tsteq	r0, r7, lsr r0
     a80:	00002d65 	andeq	r2, r0, r5, ror #26
     a84:	77910200 	ldrvc	r0, [r1, r0, lsl #4]
     a88:	8c010700 	stchi	7, cr0, [r1], {-0}
     a8c:	0100003a 	tsteq	r0, sl, lsr r0
     a90:	00000153 	andeq	r0, r0, r3, asr r1
     a94:	00000000 	andeq	r0, r0, r0
     a98:	08d00000 	ldmeq	r0, {}^	; <UNPREDICTABLE>
     a9c:	71010000 	mrsvc	r0, (UNDEF: 1)
     aa0:	08000001 	stmdaeq	r0, {r0}
     aa4:	00003722 	andeq	r3, r0, r2, lsr #14
     aa8:	002d5301 	eoreq	r5, sp, r1, lsl #6
     aac:	91020000 	mrsls	r0, (UNDEF: 2)
     ab0:	010b0077 	tsteq	fp, r7, ror r0
     ab4:	00003a51 	andeq	r3, r0, r1, asr sl
     ab8:	28014201 	stmdacs	r1, {r0, r9, lr}
     abc:	80080005 	andhi	r0, r8, r5
     ac0:	2c080005 	stccs	0, cr0, [r8], {5}
     ac4:	01000009 	tsteq	r0, r9
     ac8:	00372208 	eorseq	r2, r7, r8, lsl #4
     acc:	2d420100 	stfcse	f0, [r2, #-0]
     ad0:	02000000 	andeq	r0, r0, #0
     ad4:	00007791 	muleq	r0, r1, r7
     ad8:	00000087 	andeq	r0, r0, r7, lsl #1
     adc:	04160002 	ldreq	r0, [r6], #-2
     ae0:	01040000 	mrseq	r0, (UNDEF: 4)
     ae4:	00002bd2 	ldrdeq	r2, [r0], -r2	; <UNPREDICTABLE>
     ae8:	003ba90c 	eorseq	sl, fp, ip, lsl #18
     aec:	00114f00 	andseq	r4, r1, r0, lsl #30
     af0:	00013800 	andeq	r3, r1, r0, lsl #16
	...
     afc:	00062a00 	andeq	r2, r6, r0, lsl #20
     b00:	000ce500 	andeq	lr, ip, r0, lsl #10
     b04:	08010200 	stmdaeq	r1, {r9}
     b08:	00002371 	andeq	r2, r0, r1, ror r3
     b0c:	70070202 	andvc	r0, r7, r2, lsl #4
     b10:	02000004 	andeq	r0, r0, #4
     b14:	1efa0704 	cdpne	7, 15, cr0, cr10, cr4, {0}
     b18:	07030000 	streq	r0, [r3, -r0]
     b1c:	00002d01 	andeq	r2, r0, r1, lsl #26
     b20:	5c3c0200 	lfmpl	f0, 4, [ip], #-0
     b24:	04000000 	streq	r0, [r0], #-0
     b28:	00003aa5 	andeq	r3, r0, r5, lsr #21
     b2c:	3bbf0400 	blcc	fefc1b34 <_estack+0xdefbf334>
     b30:	00010000 	andeq	r0, r1, r0
     b34:	003bd805 	eorseq	sp, fp, r5, lsl #16
     b38:	423f0200 	eorsmi	r0, pc, #0, 4
     b3c:	06000000 	streq	r0, [r0], -r0
     b40:	003b7f01 	eorseq	r7, fp, r1, lsl #30
     b44:	01410100 	mrseq	r0, (UNDEF: 81)
     b48:	08000580 	stmdaeq	r0, {r7, r8, sl}
     b4c:	080005ac 	stmdaeq	r0, {r2, r3, r5, r7, r8, sl}
     b50:	01007d02 	tsteq	r0, r2, lsl #26
     b54:	003b6e07 	eorseq	r6, fp, r7, lsl #28
     b58:	5c410100 	stfple	f0, [r1], {-0}
     b5c:	01000000 	mrseq	r0, (UNDEF: 0)
     b60:	d8000050 	stmdale	r0, {r4, r6}
     b64:	02000000 	andeq	r0, r0, #0
     b68:	00048800 	andeq	r8, r4, r0, lsl #16
     b6c:	d2010400 	andle	r0, r1, #0, 8
     b70:	0c00002b 	stceq	0, cr0, [r0], {43}	; 0x2b
     b74:	00003c83 	andeq	r3, r0, r3, lsl #25
     b78:	0000114f 	andeq	r1, r0, pc, asr #2
     b7c:	00000148 	andeq	r0, r0, r8, asr #2
	...
     b88:	000006d2 	ldrdeq	r0, [r0], -r2
     b8c:	00000d3c 	andeq	r0, r0, ip, lsr sp
     b90:	00387502 	eorseq	r7, r8, r2, lsl #10
     b94:	00370902 	eorseq	r0, r7, r2, lsl #18
     b98:	01030000 	mrseq	r0, (UNDEF: 3)
     b9c:	00237108 	eoreq	r7, r3, r8, lsl #2
     ba0:	07020300 	streq	r0, [r2, -r0, lsl #6]
     ba4:	00000470 	andeq	r0, r0, r0, ror r4
     ba8:	32337502 	eorscc	r7, r3, #8388608	; 0x800000
     bac:	500b0200 	andpl	r0, fp, r0, lsl #4
     bb0:	03000000 	movweq	r0, #0
     bb4:	1efa0704 	cdpne	7, 15, cr0, cr10, cr4, {0}
     bb8:	01040000 	mrseq	r0, (UNDEF: 4)
     bbc:	00003dee 	andeq	r3, r0, lr, ror #27
     bc0:	00014501 	andeq	r4, r1, r1, lsl #10
     bc4:	00000000 	andeq	r0, r0, r0
     bc8:	88000000 	stmdahi	r0, {}	; <UNPREDICTABLE>
     bcc:	01000009 	tsteq	r0, r9
     bd0:	0000008e 	andeq	r0, r0, lr, lsl #1
     bd4:	003d3e05 	eorseq	r3, sp, r5, lsl #28
     bd8:	2d450100 	stfcse	f0, [r5, #-0]
     bdc:	02000000 	andeq	r0, r0, #0
     be0:	ca057791 	bgt	15ea2c <_Min_Stack_Size+0x15e62c>
     be4:	0100003c 	tsteq	r0, ip, lsr r0
     be8:	00002d45 	andeq	r2, r0, r5, asr #26
     bec:	76910200 	ldrvc	r0, [r1], r0, lsl #4
     bf0:	3d010400 	cfstrscc	mvf0, [r1, #-0]
     bf4:	0100003c 	tsteq	r0, ip, lsr r0
     bf8:	05d00130 	ldrbeq	r0, [r0, #304]	; 0x130
     bfc:	06500800 	ldrbeq	r0, [r0], -r0, lsl #16
     c00:	09e40800 	stmibeq	r4!, {fp}^
     c04:	c5010000 	strgt	r0, [r1, #-0]
     c08:	05000000 	streq	r0, [r0, #-0]
     c0c:	00003d3e 	andeq	r3, r0, lr, lsr sp
     c10:	002d3001 	eoreq	r3, sp, r1
     c14:	91020000 	mrsls	r0, (UNDEF: 2)
     c18:	3cca0577 	cfstr64cc	mvdx0, [sl], {119}	; 0x77
     c1c:	30010000 	andcc	r0, r1, r0
     c20:	0000002d 	andeq	r0, r0, sp, lsr #32
     c24:	00769102 	rsbseq	r9, r6, r2, lsl #2
     c28:	3beb0106 	blcc	ffac1048 <_estack+0xdfabe848>
     c2c:	0d010000 	stceq	0, cr0, [r1, #-0]
     c30:	0005ac01 	andeq	sl, r5, r1, lsl #24
     c34:	0005d008 	andeq	sp, r5, r8
     c38:	000a4008 	andeq	r4, sl, r8
     c3c:	de000100 	adfles	f0, f0, f0
     c40:	02000004 	andeq	r0, r0, #4
     c44:	0004fa00 	andeq	pc, r4, r0, lsl #20
     c48:	d2010400 	andle	r0, r1, #0, 8
     c4c:	0c00002b 	stceq	0, cr0, [r0], {43}	; 0x2b
     c50:	00003f9a 	muleq	r0, sl, pc	; <UNPREDICTABLE>
     c54:	0000114f 	andeq	r1, r0, pc, asr #2
     c58:	00000168 	andeq	r0, r0, r8, ror #2
	...
     c64:	000007ae 	andeq	r0, r0, lr, lsr #15
     c68:	00000e27 	andeq	r0, r0, r7, lsr #28
     c6c:	00387502 	eorseq	r7, r8, r2, lsl #10
     c70:	00370902 	eorseq	r0, r7, r2, lsl #18
     c74:	01030000 	mrseq	r0, (UNDEF: 3)
     c78:	00237108 	eoreq	r7, r3, r8, lsl #2
     c7c:	31750200 	cmncc	r5, r0, lsl #4
     c80:	0a020036 	beq	80d60 <_Min_Stack_Size+0x80960>
     c84:	00000049 	andeq	r0, r0, r9, asr #32
     c88:	70070203 	andvc	r0, r7, r3, lsl #4
     c8c:	02000004 	andeq	r0, r0, #4
     c90:	00323375 	eorseq	r3, r2, r5, ror r3
     c94:	00600b02 	rsbeq	r0, r0, r2, lsl #22
     c98:	50040000 	andpl	r0, r4, r0
     c9c:	03000000 	movweq	r0, #0
     ca0:	1efa0704 	cdpne	7, 15, cr0, cr10, cr4, {0}
     ca4:	04030000 	streq	r0, [r3], #-0
     ca8:	00216607 	eoreq	r6, r1, r7, lsl #12
     cac:	417a0500 	cmnmi	sl, r0, lsl #10
     cb0:	30040000 	andcc	r0, r4, r0
     cb4:	00000079 	andeq	r0, r0, r9, ror r0
     cb8:	007f0406 	rsbseq	r0, pc, r6, lsl #8
     cbc:	01070000 	mrseq	r0, (UNDEF: 7)
     cc0:	28031008 	stmdacs	r3, {r3, ip}
     cc4:	000000c2 	andeq	r0, r0, r2, asr #1
     cc8:	003eb609 	eorseq	fp, lr, r9, lsl #12
     ccc:	5b290300 	blpl	a418d4 <_Min_Stack_Size+0xa414d4>
     cd0:	02000000 	andeq	r0, r0, #0
     cd4:	bb090023 	bllt	240d68 <_Min_Stack_Size+0x240968>
     cd8:	0300003e 	movweq	r0, #62	; 0x3e
     cdc:	00005b2a 	andeq	r5, r0, sl, lsr #22
     ce0:	04230200 	strteq	r0, [r3], #-512	; 0xfffffe00
     ce4:	4c41560a 	mcrrmi	6, 0, r5, r1, cr10
     ce8:	5b2b0300 	blpl	ac18f0 <_Min_Stack_Size+0xac14f0>
     cec:	02000000 	andeq	r0, r0, #0
     cf0:	da090823 	ble	242d84 <_Min_Stack_Size+0x242984>
     cf4:	0300003e 	movweq	r0, #62	; 0x3e
     cf8:	00005b2c 	andeq	r5, r0, ip, lsr #22
     cfc:	0c230200 	sfmeq	f0, 4, [r3], #-0
     d00:	41340500 	teqmi	r4, r0, lsl #10
     d04:	2d030000 	stccs	0, cr0, [r3, #-0]
     d08:	00000081 	andeq	r0, r0, r1, lsl #1
     d0c:	6704070b 	strvs	r0, [r4, -fp, lsl #14]
     d10:	03000000 	movweq	r0, #0
     d14:	0000eb30 	andeq	lr, r0, r0, lsr fp
     d18:	408b0c00 	addmi	r0, fp, r0, lsl #24
     d1c:	03e80000 	mvneq	r0, #0
     d20:	00412d0d 	subeq	r2, r1, sp, lsl #26
     d24:	0f424000 	svceq	0x00424000
     d28:	af050000 	svcge	0x00050000
     d2c:	0300003f 	movweq	r0, #63	; 0x3f
     d30:	0000cd33 	andeq	ip, r0, r3, lsr sp
     d34:	3f130e00 	svccc	0x00130e00
     d38:	33010000 	movwcc	r0, #4096	; 0x1000
     d3c:	0000006e 	andeq	r0, r0, lr, rrx
     d40:	5c030501 	cfstr32pl	mvfx0, [r3], {1}
     d44:	0e200000 	cdpeq	0, 2, cr0, cr0, cr0, {0}
     d48:	00003e96 	muleq	r0, r6, lr
     d4c:	002d3401 	eoreq	r3, sp, r1, lsl #8
     d50:	05010000 	streq	r0, [r1, #-0]
     d54:	00006c03 	andeq	r6, r0, r3, lsl #24
     d58:	d0010f20 	andle	r0, r1, r0, lsr #30
     d5c:	01000040 	tsteq	r0, r0, asr #32
     d60:	50010125 	andpl	r0, r1, r5, lsr #2
     d64:	b0080006 	andlt	r0, r8, r6
     d68:	84080006 	strhi	r0, [r8], #-6
     d6c:	0100000a 	tsteq	r0, sl
     d70:	00000145 	andeq	r0, r0, r5, asr #2
     d74:	00427110 	subeq	r7, r2, r0, lsl r1
     d78:	01260100 			; <UNDEFINED> instruction: 0x01260100
     d7c:	0000002d 	andeq	r0, r0, sp, lsr #32
     d80:	00779102 	rsbseq	r9, r7, r2, lsl #2
     d84:	3fdb0111 	svccc	0x00db0111
     d88:	1e010000 	cdpne	0, 0, cr0, cr1, cr0, {0}
     d8c:	01740101 	cmneq	r4, r1, lsl #2
	...
     d98:	0ad40000 	beq	ff500da0 <_estack+0xdf4fe5a0>
     d9c:	74010000 	strvc	r0, [r1], #-0
     da0:	10000001 	andne	r0, r0, r1
     da4:	0000418a 	andeq	r4, r0, sl, lsl #3
     da8:	74012001 	strvc	r2, [r1], #-1
     dac:	02000001 	andeq	r0, r0, #1
     db0:	03006c91 	movweq	r6, #3217	; 0xc91
     db4:	3f940404 	svccc	0x00940404
     db8:	01110000 	tsteq	r1, r0
     dbc:	00003ff6 	strdeq	r3, [r0], -r6
     dc0:	01011801 	tsteq	r1, r1, lsl #16
     dc4:	00000174 	andeq	r0, r0, r4, ror r1
	...
     dd0:	00000b24 	andeq	r0, r0, r4, lsr #22
     dd4:	0001aa01 	andeq	sl, r1, r1, lsl #20
     dd8:	418a1000 	orrmi	r1, sl, r0
     ddc:	1a010000 	bne	40de4 <_Min_Stack_Size+0x409e4>
     de0:	00017401 	andeq	r7, r1, r1, lsl #8
     de4:	6c910200 	lfmvs	f0, 4, [r1], {0}
     de8:	f9011200 			; <UNDEFINED> instruction: 0xf9011200
     dec:	01000041 	tsteq	r0, r1, asr #32
     df0:	50010112 	andpl	r0, r1, r2, lsl r1
	...
     dfc:	74000000 	strvc	r0, [r0], #-0
     e00:	0100000b 	tsteq	r0, fp
     e04:	000001d9 	ldrdeq	r0, [r0], -r9
     e08:	0041d410 	subeq	sp, r1, r0, lsl r4
     e0c:	01140100 	tsteq	r4, r0, lsl #2
     e10:	00000050 	andeq	r0, r0, r0, asr r0
     e14:	00749102 	rsbseq	r9, r4, r2, lsl #2
     e18:	3e7d0111 	mrccc	1, 3, r0, cr13, cr1, {0}
     e1c:	0a010000 	beq	40e24 <_Min_Stack_Size+0x40a24>
     e20:	01740101 	cmneq	r4, r1, lsl #2
	...
     e2c:	0bd00000 	bleq	ff400e34 <_estack+0xdf3fe634>
     e30:	08010000 	stmdaeq	r1, {}	; <UNPREDICTABLE>
     e34:	10000002 	andne	r0, r0, r2
     e38:	0000418a 	andeq	r4, r0, sl, lsl #3
     e3c:	74010c01 	strvc	r0, [r1], #-3073	; 0xfffff3ff
     e40:	02000001 	andeq	r0, r0, #1
     e44:	11007491 			; <UNDEFINED> instruction: 0x11007491
     e48:	0040a601 	subeq	sl, r0, r1, lsl #12
     e4c:	01010100 	mrseq	r0, (UNDEF: 17)
     e50:	00017401 	andeq	r7, r1, r1, lsl #8
	...
     e5c:	000c2000 	andeq	r2, ip, r0
     e60:	02370100 	eorseq	r0, r7, #0, 2
     e64:	8a100000 	bhi	400e6c <_Min_Stack_Size+0x400a6c>
     e68:	01000041 	tsteq	r0, r1, asr #32
     e6c:	01740103 	cmneq	r4, r3, lsl #2
     e70:	91020000 	mrsls	r0, (UNDEF: 2)
     e74:	01130074 	tsteq	r3, r4, ror r0
     e78:	00003f4b 	andeq	r3, r0, fp, asr #30
     e7c:	5001fb01 	andpl	pc, r1, r1, lsl #22
	...
     e88:	70000000 	andvc	r0, r0, r0
     e8c:	0100000c 	tsteq	r0, ip
     e90:	00000264 	andeq	r0, r0, r4, ror #4
     e94:	00429f14 	subeq	r9, r2, r4, lsl pc
     e98:	50fd0100 	rscspl	r0, sp, r0, lsl #2
     e9c:	02000000 	andeq	r0, r0, #0
     ea0:	15007491 	strne	r7, [r0, #-1169]	; 0xfffffb6f
     ea4:	00401101 	subeq	r1, r0, r1, lsl #2
     ea8:	01eb0100 	mvneq	r0, r0, lsl #2
	...
     eb4:	00000ccc 	andeq	r0, r0, ip, asr #25
     eb8:	0002a901 	andeq	sl, r2, r1, lsl #18
     ebc:	3f041600 	svccc	0x00041600
     ec0:	eb010000 	bl	40ec8 <_Min_Stack_Size+0x40ac8>
     ec4:	0000003e 	andeq	r0, r0, lr, lsr r0
     ec8:	166e9102 	strbtne	r9, [lr], -r2, lsl #2
     ecc:	00003eab 	andeq	r3, r0, fp, lsr #29
     ed0:	006eeb01 	rsbeq	lr, lr, r1, lsl #22
     ed4:	91020000 	mrsls	r0, (UNDEF: 2)
     ed8:	42431468 	submi	r1, r3, #104, 8	; 0x68000000
     edc:	ed010000 	stc	0, cr0, [r1, #-0]
     ee0:	0000003e 	andeq	r0, r0, lr, lsr r0
     ee4:	00769102 	rsbseq	r9, r6, r2, lsl #2
     ee8:	42520115 	subsmi	r0, r2, #1073741829	; 0x40000005
     eec:	db010000 	blle	40ef4 <_Min_Stack_Size+0x40af4>
     ef0:	00000001 	andeq	r0, r0, r1
     ef4:	00000000 	andeq	r0, r0, r0
     ef8:	000d1c00 	andeq	r1, sp, r0, lsl #24
     efc:	02ee0100 	rsceq	r0, lr, #0, 2
     f00:	43160000 	tstmi	r6, #0
     f04:	01000041 	tsteq	r0, r1, asr #32
     f08:	00003edb 	ldrdeq	r3, [r0], -fp
     f0c:	6e910200 	cdpvs	2, 9, cr0, cr1, cr0, {0}
     f10:	003eab16 	eorseq	sl, lr, r6, lsl fp
     f14:	6edb0100 	cdpvs	1, 13, cr0, cr11, cr0, {0}
     f18:	02000000 	andeq	r0, r0, #0
     f1c:	43146891 	tstmi	r4, #9502720	; 0x910000
     f20:	01000042 	tsteq	r0, r2, asr #32
     f24:	00003edd 	ldrdeq	r3, [r0], -sp
     f28:	76910200 	ldrvc	r0, [r1], r0, lsl #4
     f2c:	11011700 	tstne	r1, r0, lsl #14
     f30:	01000041 	tsteq	r0, r1, asr #32
     f34:	000001c8 	andeq	r0, r0, r8, asr #3
     f38:	00000000 	andeq	r0, r0, r0
     f3c:	0d6c0000 	stcleq	0, cr0, [ip, #-0]
     f40:	25010000 	strcs	r0, [r1, #-0]
     f44:	16000003 	strne	r0, [r0], -r3
     f48:	00004092 	muleq	r0, r2, r0
     f4c:	0050c801 	subseq	ip, r0, r1, lsl #16
     f50:	91020000 	mrsls	r0, (UNDEF: 2)
     f54:	3eab1674 	mcrcc	6, 5, r1, cr11, cr4, {3}
     f58:	c8010000 	stmdagt	r1, {}	; <UNPREDICTABLE>
     f5c:	0000006e 	andeq	r0, r0, lr, rrx
     f60:	00709102 	rsbseq	r9, r0, r2, lsl #2
     f64:	3fbe0115 	svccc	0x00be0115
     f68:	b7010000 	strlt	r0, [r1, -r0]
     f6c:	00000001 	andeq	r0, r0, r1
     f70:	00000000 	andeq	r0, r0, r0
     f74:	000dc800 	andeq	ip, sp, r0, lsl #16
     f78:	036a0100 	cmneq	sl, #0, 2
     f7c:	04160000 	ldreq	r0, [r6], #-0
     f80:	0100003f 	tsteq	r0, pc, lsr r0
     f84:	00003eb7 			; <UNDEFINED> instruction: 0x00003eb7
     f88:	6e910200 	cdpvs	2, 9, cr0, cr1, cr0, {0}
     f8c:	003eab16 	eorseq	sl, lr, r6, lsl fp
     f90:	6eb70100 	frdvss	f0, f7, f0
     f94:	02000000 	andeq	r0, r0, #0
     f98:	43146891 	tstmi	r4, #9502720	; 0x910000
     f9c:	01000042 	tsteq	r0, r2, asr #32
     fa0:	00003eb9 			; <UNDEFINED> instruction: 0x00003eb9
     fa4:	76910200 	ldrvc	r0, [r1], r0, lsl #4
     fa8:	9d011500 	cfstr32ls	mvfx1, [r1, #-0]
     fac:	01000041 	tsteq	r0, r1, asr #32
     fb0:	000001a6 	andeq	r0, r0, r6, lsr #3
     fb4:	00000000 	andeq	r0, r0, r0
     fb8:	0e180000 	cdpeq	0, 1, cr0, cr8, cr0, {0}
     fbc:	af010000 	svcge	0x00010000
     fc0:	16000003 	strne	r0, [r0], -r3
     fc4:	00004143 	andeq	r4, r0, r3, asr #2
     fc8:	003ea601 	eorseq	sl, lr, r1, lsl #12
     fcc:	91020000 	mrsls	r0, (UNDEF: 2)
     fd0:	3eab166e 	cdpcc	6, 10, cr1, cr11, cr14, {3}
     fd4:	a6010000 	strge	r0, [r1], -r0
     fd8:	0000006e 	andeq	r0, r0, lr, rrx
     fdc:	14689102 	strbtne	r9, [r8], #-258	; 0xfffffefe
     fe0:	00004243 	andeq	r4, r0, r3, asr #4
     fe4:	003ea801 	eorseq	sl, lr, r1, lsl #16
     fe8:	91020000 	mrsls	r0, (UNDEF: 2)
     fec:	01170076 	tsteq	r7, r6, ror r0
     ff0:	000041ba 			; <UNDEFINED> instruction: 0x000041ba
     ff4:	00019201 	andeq	r9, r1, r1, lsl #4
     ff8:	00000000 	andeq	r0, r0, r0
     ffc:	68000000 	stmdavs	r0, {}	; <UNPREDICTABLE>
    1000:	0100000e 	tsteq	r0, lr
    1004:	000003e6 	andeq	r0, r0, r6, ror #7
    1008:	00409216 	subeq	r9, r0, r6, lsl r2
    100c:	50920100 	addspl	r0, r2, r0, lsl #2
    1010:	02000000 	andeq	r0, r0, #0
    1014:	ab167491 	blge	59e260 <_Min_Stack_Size+0x59de60>
    1018:	0100003e 	tsteq	r0, lr, lsr r0
    101c:	00006e92 	muleq	r0, r2, lr
    1020:	70910200 	addsvc	r0, r1, r0, lsl #4
    1024:	74011500 	strvc	r1, [r1], #-1280	; 0xfffffb00
    1028:	01000040 	tsteq	r0, r0, asr #32
    102c:	00000180 	andeq	r0, r0, r0, lsl #3
    1030:	00000000 	andeq	r0, r0, r0
    1034:	0ec40000 	cdpeq	0, 12, cr0, cr4, cr0, {0}
    1038:	1d010000 	stcne	0, cr0, [r1, #-0]
    103c:	16000004 	strne	r0, [r0], -r4
    1040:	00003f04 	andeq	r3, r0, r4, lsl #30
    1044:	003e8001 	eorseq	r8, lr, r1
    1048:	91020000 	mrsls	r0, (UNDEF: 2)
    104c:	4243146e 	submi	r1, r3, #1845493760	; 0x6e000000
    1050:	83010000 	movwhi	r0, #4096	; 0x1000
    1054:	0000003e 	andeq	r0, r0, lr, lsr r0
    1058:	00769102 	rsbseq	r9, r6, r2, lsl #2
    105c:	42b30115 	adcsmi	r0, r3, #1073741829	; 0x40000005
    1060:	6e010000 	cdpvs	0, 0, cr0, cr1, cr0, {0}
    1064:	00000001 	andeq	r0, r0, r1
    1068:	00000000 	andeq	r0, r0, r0
    106c:	000f1400 	andeq	r1, pc, r0, lsl #8
    1070:	04540100 	ldrbeq	r0, [r4], #-256	; 0xffffff00
    1074:	43160000 	tstmi	r6, #0
    1078:	01000041 	tsteq	r0, r1, asr #32
    107c:	00003e6e 	andeq	r3, r0, lr, ror #28
    1080:	6e910200 	cdpvs	2, 9, cr0, cr1, cr0, {0}
    1084:	00424314 	subeq	r4, r2, r4, lsl r3
    1088:	3e710100 	rpwccs	f0, f1, f0
    108c:	02000000 	andeq	r0, r0, #0
    1090:	17007691 			; <UNDEFINED> instruction: 0x17007691
    1094:	00403001 	subeq	r3, r0, r1
    1098:	015b0100 	cmpeq	fp, r0, lsl #2
	...
    10a4:	00000f64 	andeq	r0, r0, r4, ror #30
    10a8:	00049501 	andeq	r9, r4, r1, lsl #10
    10ac:	40921600 	addsmi	r1, r2, r0, lsl #12
    10b0:	5b010000 	blpl	410b8 <_Min_Stack_Size+0x40cb8>
    10b4:	00000050 	andeq	r0, r0, r0, asr r0
    10b8:	186c9102 	stmdane	ip!, {r1, r8, ip, pc}^
	...
    10c4:	003f7014 	eorseq	r7, pc, r4, lsl r0	; <UNPREDICTABLE>
    10c8:	2d5f0100 	ldfcse	f0, [pc, #-0]	; 10d0 <_Min_Stack_Size+0xcd0>
    10cc:	02000000 	andeq	r0, r0, #0
    10d0:	00007791 	muleq	r0, r1, r7
    10d4:	3ef70119 	mrccc	1, 7, r0, cr7, cr9, {0}
    10d8:	56010000 	strpl	r0, [r1], -r0
    10dc:	00000001 	andeq	r0, r0, r1
    10e0:	00000000 	andeq	r0, r0, r0
    10e4:	000fc000 	andeq	ip, pc, r0
    10e8:	ca1a0100 	bgt	6814f0 <_Min_Stack_Size+0x6810f0>
    10ec:	01000042 	tsteq	r0, r2, asr #32
    10f0:	00500141 	subseq	r0, r0, r1, asr #2
	...
    10fc:	10040000 	andne	r0, r4, r0
    1100:	16010000 	strne	r0, [r1], -r0
    1104:	0000413a 	andeq	r4, r0, sl, lsr r1
    1108:	00eb4101 	rsceq	r4, fp, r1, lsl #2
    110c:	91020000 	mrsls	r0, (UNDEF: 2)
    1110:	3f3e146c 	svccc	0x003e146c
    1114:	43010000 	movwmi	r0, #4096	; 0x1000
    1118:	00000050 	andeq	r0, r0, r0, asr r0
    111c:	00749102 	rsbseq	r9, r4, r2, lsl #2
    1120:	00074400 	andeq	r4, r7, r0, lsl #8
    1124:	b6000200 	strlt	r0, [r0], -r0, lsl #4
    1128:	04000006 	streq	r0, [r0], #-6
    112c:	002bd201 	eoreq	sp, fp, r1, lsl #4
    1130:	47920c00 	ldrmi	r0, [r2, r0, lsl #24]
    1134:	114f0000 	mrsne	r0, SPSR
    1138:	02000000 	andeq	r0, r0, #0
	...
    1144:	09ef0000 	stmibeq	pc!, {}^	; <UNPREDICTABLE>
    1148:	0ecf0000 	cdpeq	0, 12, cr0, cr15, cr0, {0}
    114c:	75020000 	strvc	r0, [r2, #-0]
    1150:	09020038 	stmdbeq	r2, {r3, r4, r5}
    1154:	00000037 	andeq	r0, r0, r7, lsr r0
    1158:	71080103 	tstvc	r8, r3, lsl #2
    115c:	02000023 	andeq	r0, r0, #35	; 0x23
    1160:	00363175 	eorseq	r3, r6, r5, ror r1
    1164:	00490a02 	subeq	r0, r9, r2, lsl #20
    1168:	02030000 	andeq	r0, r3, #0
    116c:	00047007 	andeq	r7, r4, r7
    1170:	33750200 	cmncc	r5, #0, 4
    1174:	0b020032 	bleq	81244 <_Min_Stack_Size+0x80e44>
    1178:	00000060 	andeq	r0, r0, r0, rrx
    117c:	00005004 	andeq	r5, r0, r4
    1180:	07040300 	streq	r0, [r4, -r0, lsl #6]
    1184:	00001efa 	strdeq	r1, [r0], -sl
    1188:	37010705 	strcc	r0, [r1, -r5, lsl #14]
    118c:	03000000 	movweq	r0, #0
    1190:	0000d511 	andeq	sp, r0, r1, lsl r5
    1194:	35190600 	ldrcc	r0, [r9, #-1536]	; 0xfffffa00
    1198:	06000000 	streq	r0, [r0], -r0
    119c:	00003654 	andeq	r3, r0, r4, asr r6
    11a0:	36590601 	ldrbcc	r0, [r9], -r1, lsl #12
    11a4:	06020000 	streq	r0, [r2], -r0
    11a8:	0000365e 	andeq	r3, r0, lr, asr r6
    11ac:	36630603 	strbtcc	r0, [r3], -r3, lsl #12
    11b0:	06040000 	streq	r0, [r4], -r0
    11b4:	00003668 	andeq	r3, r0, r8, ror #12
    11b8:	34070605 	strcc	r0, [r7], #-1541	; 0xfffff9fb
    11bc:	06060000 	streq	r0, [r6], -r0
    11c0:	0000366d 	andeq	r3, r0, sp, ror #12
    11c4:	351e0607 	ldrcc	r0, [lr, #-1543]	; 0xfffff9f9
    11c8:	06080000 	streq	r0, [r8], -r0
    11cc:	00003672 	andeq	r3, r0, r2, ror r6
    11d0:	339b0609 	orrscc	r0, fp, #9437184	; 0x900000
    11d4:	060a0000 	streq	r0, [sl], -r0
    11d8:	000033a1 	andeq	r3, r0, r1, lsr #7
    11dc:	33a7060b 			; <UNDEFINED> instruction: 0x33a7060b
    11e0:	060c0000 	streq	r0, [ip], -r0
    11e4:	000033ad 	andeq	r3, r0, sp, lsr #7
    11e8:	33b3060d 			; <UNDEFINED> instruction: 0x33b3060d
    11ec:	060e0000 	streq	r0, [lr], -r0
    11f0:	000033b9 			; <UNDEFINED> instruction: 0x000033b9
    11f4:	0403000f 	streq	r0, [r3], #-15
    11f8:	00216607 	eoreq	r6, r1, r7, lsl #12
    11fc:	01070500 	tsteq	r7, r0, lsl #10
    1200:	00000037 	andeq	r0, r0, r7, lsr r0
    1204:	00fc2f04 	rscseq	r2, ip, r4, lsl #30
    1208:	03060000 	movweq	r0, #24576	; 0x6000
    120c:	04000043 	streq	r0, [r0], #-67	; 0xffffffbd
    1210:	00454e06 	subeq	r4, r5, r6, lsl #28
    1214:	69060800 	stmdbvs	r6, {fp}
    1218:	0c000044 	stceq	0, cr0, [r0], {68}	; 0x44
    121c:	44b10700 	ldrtmi	r0, [r1], #1792	; 0x700
    1220:	33040000 	movwcc	r0, #16384	; 0x4000
    1224:	000000dc 	ldrdeq	r0, [r0], -ip
    1228:	49020705 	stmdbmi	r2, {r0, r2, r8, r9, sl}
    122c:	04000000 	streq	r0, [r0], #-0
    1230:	00012236 	andeq	r2, r1, r6, lsr r2
    1234:	47ee0600 	strbmi	r0, [lr, r0, lsl #12]!
    1238:	08000000 	stmdaeq	r0, {}	; <UNPREDICTABLE>
    123c:	000048b2 			; <UNDEFINED> instruction: 0x000048b2
    1240:	07001000 	streq	r1, [r0, -r0]
    1244:	0000458b 	andeq	r4, r0, fp, lsl #11
    1248:	01073904 	tsteq	r7, r4, lsl #18
    124c:	07050000 	streq	r0, [r5, -r0]
    1250:	00004902 	andeq	r4, r0, r2, lsl #18
    1254:	4f3c0400 	svcmi	0x003c0400
    1258:	06000001 	streq	r0, [r0], -r1
    125c:	00004519 	andeq	r4, r0, r9, lsl r5
    1260:	49010800 	stmdbmi	r1, {fp}
    1264:	04000000 	streq	r0, [r0], #-0
    1268:	00448808 	subeq	r8, r4, r8, lsl #16
    126c:	00060000 	andeq	r0, r6, r0
    1270:	00462807 	subeq	r2, r6, r7, lsl #16
    1274:	2d400400 	cfstrdcs	mvd0, [r0, #-0]
    1278:	05000001 	streq	r0, [r0, #-1]
    127c:	00490207 	subeq	r0, r9, r7, lsl #4
    1280:	43040000 	movwmi	r0, #16384	; 0x4000
    1284:	00000183 	andeq	r0, r0, r3, lsl #3
    1288:	0047f906 	subeq	pc, r7, r6, lsl #18
    128c:	3a080000 	bcc	201294 <_Min_Stack_Size+0x200e94>
    1290:	00000043 	andeq	r0, r0, r3, asr #32
    1294:	46c50810 			; <UNDEFINED> instruction: 0x46c50810
    1298:	20000000 	andcs	r0, r0, r0
    129c:	00463708 	subeq	r3, r6, r8, lsl #14
    12a0:	00300000 	eorseq	r0, r0, r0
    12a4:	0049f907 	subeq	pc, r9, r7, lsl #18
    12a8:	5a480400 	bpl	12022b0 <_Min_Stack_Size+0x1201eb0>
    12ac:	05000001 	streq	r0, [r0, #-1]
    12b0:	00490207 	subeq	r0, r9, r7, lsl #4
    12b4:	4b040000 	blmi	1012bc <_Min_Stack_Size+0x100ebc>
    12b8:	000001b7 			; <UNDEFINED> instruction: 0x000001b7
    12bc:	00483006 	subeq	r3, r8, r6
    12c0:	0d080000 	stceq	0, cr0, [r8, #-0]
    12c4:	00000047 	andeq	r0, r0, r7, asr #32
    12c8:	47510801 	ldrbmi	r0, [r1, -r1, lsl #16]
    12cc:	02000000 	andeq	r0, r0, #0
    12d0:	00456a08 	subeq	r6, r5, r8, lsl #20
    12d4:	00030000 	andeq	r0, r3, r0
    12d8:	00489207 	subeq	r9, r8, r7, lsl #4
    12dc:	8e500400 	cdphi	4, 5, cr0, cr0, cr0, {0}
    12e0:	05000001 	streq	r0, [r0, #-1]
    12e4:	00490207 	subeq	r0, r9, r7, lsl #4
    12e8:	53040000 	movwpl	r0, #16384	; 0x4000
    12ec:	000001ef 	andeq	r0, r0, pc, ror #3
    12f0:	0046b206 	subeq	fp, r6, r6, lsl #4
    12f4:	0f060000 	svceq	0x00060000
    12f8:	80000044 	andhi	r0, r0, r4, asr #32
    12fc:	0049e306 	subeq	lr, r9, r6, lsl #6
    1300:	eb064000 	bl	191308 <_Min_Stack_Size+0x190f08>
    1304:	20000046 	andcs	r0, r0, r6, asr #32
    1308:	00497f08 	subeq	r7, r9, r8, lsl #30
    130c:	00010000 	andeq	r0, r1, r0
    1310:	004a3e07 	subeq	r3, sl, r7, lsl #28
    1314:	c2590400 	subsgt	r0, r9, #0, 8
    1318:	05000001 	streq	r0, [r0, #-1]
    131c:	00370107 	eorseq	r0, r7, r7, lsl #2
    1320:	5c040000 	stcpl	0, cr0, [r4], {-0}
    1324:	0000021a 	andeq	r0, r0, sl, lsl r2
    1328:	00460406 	subeq	r0, r6, r6, lsl #8
    132c:	0c060000 	stceq	0, cr0, [r6], {-0}
    1330:	01000046 	tsteq	r0, r6, asr #32
    1334:	00461406 	subeq	r1, r6, r6, lsl #8
    1338:	07000200 	streq	r0, [r0, -r0, lsl #4]
    133c:	000046dc 	ldrdeq	r4, [r0], -ip
    1340:	01fa6004 	mvnseq	r6, r4
    1344:	07050000 	streq	r0, [r5, -r0]
    1348:	00004902 	andeq	r4, r0, r2, lsl #18
    134c:	40630400 	rsbmi	r0, r3, r0, lsl #8
    1350:	06000002 	streq	r0, [r0], -r2
    1354:	00004994 	muleq	r0, r4, r9
    1358:	452e0800 	strmi	r0, [lr, #-2048]!	; 0xfffff800
    135c:	04000000 	streq	r0, [r0], #-0
    1360:	43a90700 			; <UNDEFINED> instruction: 0x43a90700
    1364:	67040000 	strvs	r0, [r4, -r0]
    1368:	00000225 	andeq	r0, r0, r5, lsr #4
    136c:	49020705 	stmdbmi	r2, {r0, r2, r8, r9, sl}
    1370:	04000000 	streq	r0, [r0], #-0
    1374:	0002666a 	andeq	r6, r2, sl, ror #12
    1378:	43fc0600 	mvnsmi	r0, #0, 12
    137c:	08000000 	stmdaeq	r0, {}	; <UNPREDICTABLE>
    1380:	00004852 	andeq	r4, r0, r2, asr r8
    1384:	07000200 	streq	r0, [r0, -r0, lsl #4]
    1388:	00004a4a 	andeq	r4, r0, sl, asr #20
    138c:	024b6e04 	subeq	r6, fp, #4, 28	; 0x40
    1390:	07050000 	streq	r0, [r5, -r0]
    1394:	00003701 	andeq	r3, r0, r1, lsl #14
    1398:	97710400 	ldrbls	r0, [r1, -r0, lsl #8]!
    139c:	06000002 	streq	r0, [r0], -r2
    13a0:	0000461c 	andeq	r4, r0, ip, lsl r6
    13a4:	48bd0600 	popmi	{r9, sl}
    13a8:	06800000 	streq	r0, [r0], r0
    13ac:	0000442a 	andeq	r4, r0, sl, lsr #8
    13b0:	48cb0640 	stmiami	fp, {r6, r9, sl}^
    13b4:	00c00000 	sbceq	r0, r0, r0
    13b8:	00466207 	subeq	r6, r6, r7, lsl #4
    13bc:	71770400 	cmnvc	r7, r0, lsl #8
    13c0:	09000002 	stmdbeq	r0, {r1}
    13c4:	4584041c 	strmi	r0, [r4, #1052]	; 0x41c
    13c8:	0a000003 	beq	13dc <_Min_Stack_Size+0xfdc>
    13cc:	00004311 	andeq	r4, r0, r1, lsl r3
    13d0:	00fc8604 	rscseq	r8, ip, r4, lsl #12
    13d4:	23020000 	movwcs	r0, #8192	; 0x2000
    13d8:	44790a00 	ldrbtmi	r0, [r9], #-2560	; 0xfffff600
    13dc:	87040000 	strhi	r0, [r4, -r0]
    13e0:	00000050 	andeq	r0, r0, r0, asr r0
    13e4:	0a042302 	beq	109ff4 <_Min_Stack_Size+0x109bf4>
    13e8:	0000476e 	andeq	r4, r0, lr, ror #14
    13ec:	01228804 			; <UNDEFINED> instruction: 0x01228804
    13f0:	23020000 	movwcs	r0, #8192	; 0x2000
    13f4:	49c50a08 	stmibmi	r5, {r3, r9, fp}^
    13f8:	89040000 	stmdbhi	r4, {}	; <UNPREDICTABLE>
    13fc:	0000014f 	andeq	r0, r0, pc, asr #2
    1400:	0a0a2302 	beq	28a010 <_Min_Stack_Size+0x289c10>
    1404:	000047bb 			; <UNDEFINED> instruction: 0x000047bb
    1408:	01838a04 	orreq	r8, r3, r4, lsl #20
    140c:	23020000 	movwcs	r0, #8192	; 0x2000
    1410:	43610a0c 	cmnmi	r1, #12, 20	; 0xc000
    1414:	8b040000 	blhi	10141c <_Min_Stack_Size+0x10101c>
    1418:	000001b7 			; <UNDEFINED> instruction: 0x000001b7
    141c:	0a0e2302 	beq	38a02c <_Min_Stack_Size+0x389c2c>
    1420:	0000453e 	andeq	r4, r0, lr, lsr r5
    1424:	02408c04 	subeq	r8, r0, #4, 24	; 0x400
    1428:	23020000 	movwcs	r0, #8192	; 0x2000
    142c:	487f0a10 	ldmdami	pc!, {r4, r9, fp}^	; <UNPREDICTABLE>
    1430:	8d040000 	stchi	0, cr0, [r4, #-0]
    1434:	00000266 	andeq	r0, r0, r6, ror #4
    1438:	0a122302 	beq	48a048 <_Min_Stack_Size+0x489c48>
    143c:	0000439f 	muleq	r0, pc, r3	; <UNPREDICTABLE>
    1440:	02978e04 	addseq	r8, r7, #4, 28	; 0x40
    1444:	23020000 	movwcs	r0, #8192	; 0x2000
    1448:	4a3e0a14 	bmi	f83ca0 <_Min_Stack_Size+0xf838a0>
    144c:	90040000 	andls	r0, r4, r0
    1450:	000001ef 	andeq	r0, r0, pc, ror #3
    1454:	0a162302 	beq	58a064 <_Min_Stack_Size+0x589c64>
    1458:	00004382 	andeq	r4, r0, r2, lsl #7
    145c:	03519204 	cmpeq	r1, #4, 4	; 0x40000000
    1460:	23020000 	movwcs	r0, #8192	; 0x2000
    1464:	010b0018 	tsteq	fp, r8, lsl r0
    1468:	00000351 	andeq	r0, r0, r1, asr r3
    146c:	00003e0c 	andeq	r3, r0, ip, lsl #28
    1470:	040d0000 	streq	r0, [sp], #-0
    1474:	00000345 	andeq	r0, r0, r5, asr #6
    1478:	004a1f07 	subeq	r1, sl, r7, lsl #30
    147c:	a2940400 	addsge	r0, r4, #0, 8
    1480:	09000002 	stmdbeq	r0, {r1}
    1484:	cb27051c 	blgt	9c28fc <_Min_Stack_Size+0x9c24fc>
    1488:	0e000003 	cdpeq	0, 0, cr0, cr0, cr3, {0}
    148c:	05005253 	streq	r5, [r0, #-595]	; 0xfffffdad
    1490:	00005b29 	andeq	r5, r0, r9, lsr #22
    1494:	00230200 	eoreq	r0, r3, r0, lsl #4
    1498:	0052440e 	subseq	r4, r2, lr, lsl #8
    149c:	005b2a05 	subseq	r2, fp, r5, lsl #20
    14a0:	23020000 	movwcs	r0, #8192	; 0x2000
    14a4:	52420e04 	subpl	r0, r2, #4, 28	; 0x40
    14a8:	2b050052 	blcs	1415f8 <_Min_Stack_Size+0x1411f8>
    14ac:	0000005b 	andeq	r0, r0, fp, asr r0
    14b0:	0e082302 	cdpeq	3, 0, cr2, cr8, cr2, {0}
    14b4:	00315243 	eorseq	r5, r1, r3, asr #4
    14b8:	005b2c05 	subseq	r2, fp, r5, lsl #24
    14bc:	23020000 	movwcs	r0, #8192	; 0x2000
    14c0:	52430e0c 	subpl	r0, r3, #12, 28	; 0xc0
    14c4:	2d050032 	stccs	0, cr0, [r5, #-200]	; 0xffffff38
    14c8:	0000005b 	andeq	r0, r0, fp, asr r0
    14cc:	0e102302 	cdpeq	3, 1, cr2, cr0, cr2, {0}
    14d0:	00335243 	eorseq	r5, r3, r3, asr #4
    14d4:	005b2e05 	subseq	r2, fp, r5, lsl #28
    14d8:	23020000 	movwcs	r0, #8192	; 0x2000
    14dc:	44250a14 	strtmi	r0, [r5], #-2580	; 0xfffff5ec
    14e0:	2f050000 	svccs	0x00050000
    14e4:	0000005b 	andeq	r0, r0, fp, asr r0
    14e8:	00182302 	andseq	r2, r8, r2, lsl #6
    14ec:	00432507 	subeq	r2, r3, r7, lsl #10
    14f0:	62310500 	eorsvs	r0, r1, #0, 10
    14f4:	0f000003 	svceq	0x00000003
    14f8:	000003e6 	andeq	r0, r0, r6, ror #7
    14fc:	000003e6 	andeq	r0, r0, r6, ror #7
    1500:	0000d510 	andeq	sp, r0, r0, lsl r5
    1504:	0d000200 	sfmeq	f0, 4, [r0, #-0]
    1508:	00035704 	andeq	r5, r3, r4, lsl #14
    150c:	4a181100 	bmi	605914 <_Min_Stack_Size+0x605514>
    1510:	38010000 	stmdacc	r1, {}	; <UNPREDICTABLE>
    1514:	000003d6 	ldrdeq	r0, [r0], -r6
    1518:	00600305 	rsbeq	r0, r0, r5, lsl #6
    151c:	01122000 	tsteq	r2, r0
    1520:	0000472a 	andeq	r4, r0, sl, lsr #14
    1524:	01022f01 	tsteq	r2, r1, lsl #30
	...
    1530:	00001060 	andeq	r1, r0, r0, rrx
    1534:	00045501 	andeq	r5, r4, r1, lsl #10
    1538:	43751300 	cmnmi	r5, #0, 6
    153c:	2f010000 	svccs	0x00010000
    1540:	00021a02 	andeq	r1, r2, r2, lsl #20
    1544:	6f910200 	svcvs	0x00910200
    1548:	0044cf13 	subeq	ip, r4, r3, lsl pc
    154c:	022f0100 	eoreq	r0, pc, #0, 2
    1550:	00000455 	andeq	r0, r0, r5, asr r4
    1554:	13689102 	cmnne	r8, #-2147483648	; 0x80000000
    1558:	00004a2c 	andeq	r4, r0, ip, lsr #20
    155c:	2d022f01 	stccs	15, cr2, [r2, #-4]
    1560:	02000000 	andeq	r0, r0, #0
    1564:	9d146e91 	ldcls	14, cr6, [r4, #-580]	; 0xfffffdbc
    1568:	01000046 	tsteq	r0, r6, asr #32
    156c:	00500231 	subseq	r0, r0, r1, lsr r2
    1570:	91020000 	mrsls	r0, (UNDEF: 2)
    1574:	040d0074 	streq	r0, [sp], #-116	; 0xffffff8c
    1578:	0000002d 	andeq	r0, r0, sp, lsr #32
    157c:	48090112 	stmdami	r9, {r1, r4, r8}
    1580:	27010000 	strcs	r0, [r1, -r0]
    1584:	00000102 	andeq	r0, r0, r2, lsl #2
    1588:	00000000 	andeq	r0, r0, r0
    158c:	10b00000 	adcsne	r0, r0, r0
    1590:	b3010000 	movwlt	r0, #4096	; 0x1000
    1594:	13000004 	movwne	r0, #4
    1598:	00004375 	andeq	r4, r0, r5, ror r3
    159c:	1a022701 	bne	8b1a8 <_Min_Stack_Size+0x8ada8>
    15a0:	02000002 	andeq	r0, r0, #2
    15a4:	cf136f91 	svcgt	0x00136f91
    15a8:	01000044 	tsteq	r0, r4, asr #32
    15ac:	04550227 	ldrbeq	r0, [r5], #-551	; 0xfffffdd9
    15b0:	91020000 	mrsls	r0, (UNDEF: 2)
    15b4:	434e1368 	movtmi	r1, #58216	; 0xe368
    15b8:	27010000 	strcs	r0, [r1, -r0]
    15bc:	00003e02 	andeq	r3, r0, r2, lsl #28
    15c0:	6c910200 	lfmvs	f0, 4, [r1], {0}
    15c4:	00469d14 	subeq	r9, r6, r4, lsl sp
    15c8:	02290100 	eoreq	r0, r9, #0, 2
    15cc:	0000003e 	andeq	r0, r0, lr, lsr r0
    15d0:	00769102 	rsbseq	r9, r6, r2, lsl #2
    15d4:	42e00115 	rscmi	r0, r0, #1073741829	; 0x40000005
    15d8:	18010000 	stmdane	r1, {}	; <UNPREDICTABLE>
    15dc:	00000102 	andeq	r0, r0, r2, lsl #2
    15e0:	00000000 	andeq	r0, r0, r0
    15e4:	11000000 	mrsne	r0, (UNDEF: 0)
    15e8:	fc010000 	stc2	0, cr0, [r1], {-0}
    15ec:	13000004 	movwne	r0, #4
    15f0:	00004375 	andeq	r4, r0, r5, ror r3
    15f4:	1a021801 	bne	87600 <_Min_Stack_Size+0x87200>
    15f8:	02000002 	andeq	r0, r0, #2
    15fc:	66136f91 	sadd8vs	r6, r3, r1
    1600:	01000048 	tsteq	r0, r8, asr #32
    1604:	04fc0218 	ldrbteq	r0, [ip], #536	; 0x218
    1608:	91020000 	mrsls	r0, (UNDEF: 2)
    160c:	43911468 	orrsmi	r1, r1, #104, 8	; 0x68000000
    1610:	1a010000 	bne	41618 <_Min_Stack_Size+0x41218>
    1614:	00005002 	andeq	r5, r0, r2
    1618:	74910200 	ldrvc	r0, [r1], #512	; 0x200
    161c:	50040d00 	andpl	r0, r4, r0, lsl #26
    1620:	16000000 	strne	r0, [r0], -r0
    1624:	0044d801 	subeq	sp, r4, r1, lsl #16
    1628:	01fb0100 	mvnseq	r0, r0, lsl #2
    162c:	00072001 	andeq	r2, r7, r1
    1630:	00075c08 	andeq	r5, r7, r8, lsl #24
    1634:	00115c08 	andseq	r5, r1, r8, lsl #24
    1638:	01160100 	tsteq	r6, r0, lsl #2
    163c:	00004a5f 	andeq	r4, r0, pc, asr sl
    1640:	0101e001 	tsteq	r1, r1
    1644:	080006e8 	stmdaeq	r0, {r3, r5, r6, r7, r9, sl}
    1648:	08000720 	stmdaeq	r0, {r5, r8, r9, sl}
    164c:	00001188 	andeq	r1, r0, r8, lsl #3
    1650:	a9011601 	stmdbge	r1, {r0, r9, sl, ip}
    1654:	01000047 	tsteq	r0, r7, asr #32
    1658:	b00101c4 	andlt	r0, r1, r4, asr #3
    165c:	e8080006 	stmda	r8, {r1, r2}
    1660:	b4080006 	strlt	r0, [r8], #-6
    1664:	01000011 	tsteq	r0, r1, lsl r0
    1668:	43e40112 	mvnmi	r0, #-2147483644	; 0x80000004
    166c:	1b010000 	blne	41674 <_Min_Stack_Size+0x41274>
    1670:	00000101 	andeq	r0, r0, r1, lsl #2
    1674:	00000000 	andeq	r0, r0, r0
    1678:	11e00000 	mvnne	r0, r0
    167c:	72010000 	andvc	r0, r1, #0
    1680:	13000005 	movwne	r0, #5
    1684:	00004375 	andeq	r4, r0, r5, ror r3
    1688:	1a011b01 	bne	48294 <_Min_Stack_Size+0x47e94>
    168c:	02000002 	andeq	r0, r0, #2
    1690:	12007791 	andne	r7, r0, #38010880	; 0x2440000
    1694:	00464b01 	subeq	r4, r6, r1, lsl #22
    1698:	01060100 	mrseq	r0, (UNDEF: 22)
    169c:	00000001 	andeq	r0, r0, r1
    16a0:	00000000 	andeq	r0, r0, r0
    16a4:	00123000 	andseq	r3, r2, r0
    16a8:	06060100 	streq	r0, [r6], -r0, lsl #2
    16ac:	7f130000 	svcvc	0x00130000
    16b0:	01000044 	tsteq	r0, r4, asr #32
    16b4:	00500106 	subseq	r0, r0, r6, lsl #2
    16b8:	91020000 	mrsls	r0, (UNDEF: 2)
    16bc:	46d51354 			; <UNDEFINED> instruction: 0x46d51354
    16c0:	06010000 	streq	r0, [r1], -r0
    16c4:	00005001 	andeq	r5, r0, r1
    16c8:	50910200 	addspl	r0, r1, r0, lsl #4
    16cc:	0044c713 	subeq	ip, r4, r3, lsl r7
    16d0:	01060100 	mrseq	r0, (UNDEF: 22)
    16d4:	000004fc 	strdeq	r0, [r0], -ip
    16d8:	144c9102 	strbne	r9, [ip], #-258	; 0xfffffefe
    16dc:	000049a3 	andeq	r4, r0, r3, lsr #19
    16e0:	50010b01 	andpl	r0, r1, r1, lsl #22
    16e4:	02000000 	andeq	r0, r0, #0
    16e8:	dc146891 	ldcle	8, cr6, [r4], {145}	; 0x91
    16ec:	01000048 	tsteq	r0, r8, asr #32
    16f0:	0050010c 	subseq	r0, r0, ip, lsl #2
    16f4:	91020000 	mrsls	r0, (UNDEF: 2)
    16f8:	477f1464 	ldrbmi	r1, [pc, -r4, ror #8]!
    16fc:	0d010000 	stceq	0, cr0, [r1, #-0]
    1700:	00005001 	andeq	r5, r0, r1
    1704:	60910200 	addsvs	r0, r1, r0, lsl #4
    1708:	0049ac14 	subeq	sl, r9, r4, lsl ip
    170c:	010e0100 	mrseq	r0, (UNDEF: 30)
    1710:	00000050 	andeq	r0, r0, r0, asr r0
    1714:	146c9102 	strbtne	r9, [ip], #-258	; 0xfffffefe
    1718:	000047c9 	andeq	r4, r0, r9, asr #15
    171c:	50010f01 	andpl	r0, r1, r1, lsl #30
    1720:	02000000 	andeq	r0, r0, #0
    1724:	15005c91 	strne	r5, [r0, #-3217]	; 0xfffff36f
    1728:	0047d201 	subeq	sp, r7, r1, lsl #4
    172c:	01000100 	mrseq	r0, (UNDEF: 16)
    1730:	00000001 	andeq	r0, r0, r1
    1734:	00000000 	andeq	r0, r0, r0
    1738:	00128000 	andseq	r8, r2, r0
    173c:	06310100 	ldrteq	r0, [r1], -r0, lsl #2
    1740:	75130000 	ldrvc	r0, [r3, #-0]
    1744:	01000043 	tsteq	r0, r3, asr #32
    1748:	021a0100 	andseq	r0, sl, #0, 2
    174c:	91020000 	mrsls	r0, (UNDEF: 2)
    1750:	01170077 	tsteq	r7, r7, ror r0
    1754:	00004438 	andeq	r4, r0, r8, lsr r4
    1758:	0001a101 	andeq	sl, r1, r1, lsl #2
    175c:	00000000 	andeq	r0, r0, r0
    1760:	dc000000 	stcle	0, cr0, [r0], {-0}
    1764:	01000012 	tsteq	r0, r2, lsl r0
    1768:	00000668 	andeq	r0, r0, r8, ror #12
    176c:	00437518 	subeq	r7, r3, r8, lsl r5
    1770:	1aa10100 	bne	fe841b78 <_estack+0xde83f378>
    1774:	02000002 	andeq	r0, r0, #2
    1778:	30187791 	mulscc	r8, r1, r7
    177c:	01000043 	tsteq	r0, r3, asr #32
    1780:	000668a1 	andeq	r6, r6, r1, lsr #17
    1784:	70910200 	addsvc	r0, r1, r0, lsl #4
    1788:	3e040d00 	cdpcc	13, 0, cr0, cr4, cr0, {0}
    178c:	17000000 	strne	r0, [r0, -r0]
    1790:	0043cb01 	subeq	ip, r3, r1, lsl #22
    1794:	018e0100 	orreq	r0, lr, r0, lsl #2
	...
    17a0:	00001338 	andeq	r1, r0, r8, lsr r3
    17a4:	0006a501 	andeq	sl, r6, r1, lsl #10
    17a8:	43751800 	cmnmi	r5, #0, 16
    17ac:	8e010000 	cdphi	0, 0, cr0, cr1, cr0, {0}
    17b0:	0000021a 	andeq	r0, r0, sl, lsl r2
    17b4:	18779102 	ldmdane	r7!, {r1, r8, ip, pc}^
    17b8:	00004330 	andeq	r4, r0, r0, lsr r3
    17bc:	06688e01 	strbteq	r8, [r8], -r1, lsl #28
    17c0:	91020000 	mrsls	r0, (UNDEF: 2)
    17c4:	01170070 	tsteq	r7, r0, ror r0
    17c8:	00004499 	muleq	r0, r9, r4
    17cc:	00017601 	andeq	r7, r1, r1, lsl #12
    17d0:	00000000 	andeq	r0, r0, r0
    17d4:	94000000 	strls	r0, [r0], #-0
    17d8:	01000013 	tsteq	r0, r3, lsl r0
    17dc:	000006dc 	ldrdeq	r0, [r0], -ip
    17e0:	00437518 	subeq	r7, r3, r8, lsl r5
    17e4:	1a760100 	bne	1d81bec <_Min_Stack_Size+0x1d817ec>
    17e8:	02000002 	andeq	r0, r0, #2
    17ec:	30187791 	mulscc	r8, r1, r7
    17f0:	01000043 	tsteq	r0, r3, asr #32
    17f4:	00066876 	andeq	r6, r6, r6, ror r8
    17f8:	70910200 	addsvc	r0, r1, r0, lsl #4
    17fc:	b6011900 	strlt	r1, [r1], -r0, lsl #18
    1800:	01000049 	tsteq	r0, r9, asr #32
    1804:	00000146 	andeq	r0, r0, r6, asr #2
    1808:	00000000 	andeq	r0, r0, r0
    180c:	13f00000 	mvnsne	r0, #0
    1810:	18010000 	stmdane	r1, {}	; <UNPREDICTABLE>
    1814:	00004375 	andeq	r4, r0, r5, ror r3
    1818:	021a4601 	andseq	r4, sl, #1048576	; 0x100000
    181c:	91020000 	mrsls	r0, (UNDEF: 2)
    1820:	48a8186f 	stmiami	r8!, {r0, r1, r2, r3, r5, r6, fp, ip}
    1824:	46010000 	strmi	r0, [r1], -r0
    1828:	000003e6 	andeq	r0, r0, r6, ror #7
    182c:	11689102 	cmnne	r8, r2, lsl #2
    1830:	00004453 	andeq	r4, r0, r3, asr r4
    1834:	003e4801 	eorseq	r4, lr, r1, lsl #16
    1838:	91020000 	mrsls	r0, (UNDEF: 2)
    183c:	445e1176 	ldrbmi	r1, [lr], #-374	; 0xfffffe8a
    1840:	49010000 	stmdbmi	r1, {}	; <UNPREDICTABLE>
    1844:	0000003e 	andeq	r0, r0, lr, lsr r0
    1848:	11749102 	cmnne	r4, r2, lsl #2
    184c:	00004702 	andeq	r4, r0, r2, lsl #14
    1850:	003e4a01 	eorseq	r4, lr, r1, lsl #20
    1854:	91020000 	mrsls	r0, (UNDEF: 2)
    1858:	44c71172 	strbmi	r1, [r7], #370	; 0x172
    185c:	65010000 	strvs	r0, [r1, #-0]
    1860:	0000003e 	andeq	r0, r0, lr, lsr r0
    1864:	00709102 	rsbseq	r9, r0, r2, lsl #2
    1868:	00028600 	andeq	r8, r2, r0, lsl #12
    186c:	2e000200 	cdpcs	2, 0, cr0, cr0, cr0, {0}
    1870:	04000008 	streq	r0, [r0], #-8
    1874:	002bd201 	eoreq	sp, fp, r1, lsl #4
    1878:	4a760c00 	bmi	1d84880 <_Min_Stack_Size+0x1d84480>
    187c:	114f0000 	mrsne	r0, SPSR
    1880:	02700000 	rsbseq	r0, r0, #0
	...
    188c:	0d0f0000 	stceq	0, cr0, [pc, #-0]	; 1894 <_Min_Stack_Size+0x1494>
    1890:	0f720000 	svceq	0x00720000
    1894:	75020000 	strvc	r0, [r2, #-0]
    1898:	09030038 	stmdbeq	r3, {r3, r4, r5}
    189c:	0000003c 	andeq	r0, r0, ip, lsr r0
    18a0:	00002d03 	andeq	r2, r0, r3, lsl #26
    18a4:	08010400 	stmdaeq	r1, {sl}
    18a8:	00002371 	andeq	r2, r0, r1, ror r3
    18ac:	70070204 	andvc	r0, r7, r4, lsl #4
    18b0:	02000004 	andeq	r0, r0, #4
    18b4:	00323375 	eorseq	r3, r2, r5, ror r3
    18b8:	00550b03 	subseq	r0, r5, r3, lsl #22
    18bc:	04040000 	streq	r0, [r4], #-0
    18c0:	001efa07 	andseq	pc, lr, r7, lsl #20
    18c4:	01070500 	tsteq	r7, r0, lsl #10
    18c8:	0000003c 	andeq	r0, r0, ip, lsr r0
    18cc:	00ca1104 	sbceq	r1, sl, r4, lsl #2
    18d0:	19060000 	stmdbne	r6, {}	; <UNPREDICTABLE>
    18d4:	00000035 	andeq	r0, r0, r5, lsr r0
    18d8:	00365406 	eorseq	r5, r6, r6, lsl #8
    18dc:	59060100 	stmdbpl	r6, {r8}
    18e0:	02000036 	andeq	r0, r0, #54	; 0x36
    18e4:	00365e06 	eorseq	r5, r6, r6, lsl #28
    18e8:	63060300 	movwvs	r0, #25344	; 0x6300
    18ec:	04000036 	streq	r0, [r0], #-54	; 0xffffffca
    18f0:	00366806 	eorseq	r6, r6, r6, lsl #16
    18f4:	07060500 	streq	r0, [r6, -r0, lsl #10]
    18f8:	06000034 			; <UNDEFINED> instruction: 0x06000034
    18fc:	00366d06 	eorseq	r6, r6, r6, lsl #26
    1900:	1e060700 	cdpne	7, 0, cr0, cr6, cr0, {0}
    1904:	08000035 	stmdaeq	r0, {r0, r2, r4, r5}
    1908:	00367206 	eorseq	r7, r6, r6, lsl #4
    190c:	9b060900 	blls	183d14 <_Min_Stack_Size+0x183914>
    1910:	0a000033 	beq	19e4 <_Min_Stack_Size+0x15e4>
    1914:	0033a106 	eorseq	sl, r3, r6, lsl #2
    1918:	a7060b00 	strge	r0, [r6, -r0, lsl #22]
    191c:	0c000033 	stceq	0, cr0, [r0], {51}	; 0x33
    1920:	0033ad06 	eorseq	sl, r3, r6, lsl #26
    1924:	b3060d00 	movwlt	r0, #27904	; 0x6d00
    1928:	0e000033 	mcreq	0, 0, r0, cr0, cr3, {1}
    192c:	0033b906 	eorseq	fp, r3, r6, lsl #18
    1930:	04000f00 	streq	r0, [r0], #-3840	; 0xfffff100
    1934:	21660704 	cmncs	r6, r4, lsl #14
    1938:	07050000 	streq	r0, [r5, -r0]
    193c:	00003c01 	andeq	r3, r0, r1, lsl #24
    1940:	3f350400 	svccc	0x00350400
    1944:	06000001 	streq	r0, [r0], -r1
    1948:	000022ad 	andeq	r2, r0, sp, lsr #5
    194c:	22b80600 	adcscs	r0, r8, #0, 12
    1950:	06010000 	streq	r0, [r1], -r0
    1954:	000022c3 	andeq	r2, r0, r3, asr #5
    1958:	22ce0602 	sbccs	r0, lr, #2097152	; 0x200000
    195c:	06030000 	streq	r0, [r3], -r0
    1960:	0000091c 	andeq	r0, r0, ip, lsl r9
    1964:	09650604 	stmdbeq	r5!, {r2, r9, sl}^
    1968:	06050000 	streq	r0, [r5], -r0
    196c:	00002d8c 	andeq	r2, r0, ip, lsl #27
    1970:	23100606 	tstcs	r0, #6291456	; 0x600000
    1974:	06070000 	streq	r0, [r7], -r0
    1978:	0000231b 	andeq	r2, r0, fp, lsl r3
    197c:	23260608 			; <UNDEFINED> instruction: 0x23260608
    1980:	06090000 	streq	r0, [r9], -r0
    1984:	00001f38 	andeq	r1, r0, r8, lsr pc
    1988:	1f44060a 	svcne	0x0044060a
    198c:	060b0000 	streq	r0, [fp], -r0
    1990:	00001f50 	andeq	r1, r0, r0, asr pc
    1994:	1f5c060c 	svcne	0x005c060c
    1998:	060d0000 	streq	r0, [sp], -r0
    199c:	00001f68 	andeq	r1, r0, r8, ror #30
    19a0:	1f74060e 	svcne	0x0074060e
    19a4:	000f0000 	andeq	r0, pc, r0
    19a8:	3c010705 	stccc	7, cr0, [r1], {5}
    19ac:	05000000 	streq	r0, [r0, #-0]
    19b0:	00015f30 	andeq	r5, r1, r0, lsr pc
    19b4:	31590600 	cmpcc	r9, r0, lsl #12
    19b8:	06000000 	streq	r0, [r0], -r0
    19bc:	00003265 	andeq	r3, r0, r5, ror #4
    19c0:	312d0601 			; <UNDEFINED> instruction: 0x312d0601
    19c4:	00020000 	andeq	r0, r2, r0
    19c8:	3c010705 	stccc	7, cr0, [r1], {5}
    19cc:	02000000 	andeq	r0, r0, #0
    19d0:	0001793c 	andeq	r7, r1, ip, lsr r9
    19d4:	3aa50600 	bcc	fe9431dc <_estack+0xde9409dc>
    19d8:	06000000 	streq	r0, [r0], -r0
    19dc:	00003bbf 			; <UNDEFINED> instruction: 0x00003bbf
    19e0:	71070001 	tstvc	r7, r1
    19e4:	0100004a 	tsteq	r0, sl, asr #32
    19e8:	0000370a 	andeq	r3, r0, sl, lsl #14
    19ec:	03050100 	movweq	r0, #20736	; 0x5100
    19f0:	2000006d 	andcs	r0, r0, sp, rrx
    19f4:	4b180108 	blmi	601e1c <_Min_Stack_Size+0x601a1c>
    19f8:	66010000 	strvs	r0, [r1], -r0
    19fc:	00082001 	andeq	r2, r8, r1
    1a00:	00083808 	andeq	r3, r8, r8, lsl #16
    1a04:	00144008 	andseq	r4, r4, r8
    1a08:	01090100 	mrseq	r0, (UNDEF: 25)
    1a0c:	00004ad2 	ldrdeq	r4, [r0], -r2
    1a10:	f4015201 	vst1.8	{d5-d8}, [r1], r1
    1a14:	20080007 	andcs	r0, r8, r7
    1a18:	84080008 	strhi	r0, [r8], #-8
    1a1c:	01000014 	tsteq	r0, r4, lsl r0
    1a20:	000001d8 	ldrdeq	r0, [r0], -r8
    1a24:	004b0f0a 	subeq	r0, fp, sl, lsl #30
    1a28:	d8520100 	ldmdale	r2, {r8}^
    1a2c:	02000001 	andeq	r0, r0, #1
    1a30:	aa0b6c91 	bge	2dcc7c <_Min_Stack_Size+0x2dc87c>
    1a34:	0100004a 	tsteq	r0, sl, asr #32
    1a38:	00002d5a 	andeq	r2, r0, sl, asr sp
    1a3c:	77910200 	ldrvc	r0, [r1, r0, lsl #4]
    1a40:	ca040c00 	bgt	104a48 <_Min_Stack_Size+0x104648>
    1a44:	0d000000 	stceq	0, cr0, [r0, #-0]
    1a48:	004a9701 	subeq	r9, sl, r1, lsl #14
    1a4c:	01470100 	mrseq	r0, (UNDEF: 87)
    1a50:	080007e0 	stmdaeq	r0, {r5, r6, r7, r8, r9, sl}
    1a54:	080007f4 	stmdaeq	r0, {r2, r4, r5, r6, r7, r8, r9, sl}
    1a58:	01007d02 	tsteq	r0, r2, lsl #26
    1a5c:	4a84010e 	bmi	fe101e9c <_estack+0xde0ff69c>
    1a60:	3c010000 	stccc	0, cr0, [r1], {-0}
    1a64:	0007c801 	andeq	ip, r7, r1, lsl #16
    1a68:	0007e008 	andeq	lr, r7, r8
    1a6c:	0014d408 	andseq	sp, r4, r8, lsl #8
    1a70:	010f0100 	mrseq	r0, (UNDEF: 31)
    1a74:	00004b0a 	andeq	r4, r0, sl, lsl #22
    1a78:	37011901 	strcc	r1, [r1, -r1, lsl #18]
    1a7c:	5c000002 	stcpl	0, cr0, [r0], {2}
    1a80:	c8080007 	stmdagt	r8, {r0, r1, r2}
    1a84:	00080007 	andeq	r0, r8, r7
    1a88:	01000015 	tsteq	r0, r5, lsl r0
    1a8c:	00000237 	andeq	r0, r0, r7, lsr r2
    1a90:	00027f10 	andeq	r7, r2, r0, lsl pc
    1a94:	0007b200 	andeq	fp, r7, r0, lsl #4
    1a98:	0007be08 	andeq	fp, r7, r8, lsl #28
    1a9c:	00350108 	eorseq	r0, r5, r8, lsl #2
    1aa0:	69050411 	stmdbvs	r5, {r0, r4, sl}
    1aa4:	1200746e 	andne	r7, r0, #1845493760	; 0x6e000000
    1aa8:	004aa301 	subeq	sl, sl, r1, lsl #6
    1aac:	010b0100 	mrseq	r0, (UNDEF: 27)
	...
    1ab8:	0000152c 	andeq	r1, r0, ip, lsr #10
    1abc:	00027f01 	andeq	r7, r2, r1, lsl #30
    1ac0:	4a920a00 	bmi	fe4842c8 <_estack+0xde481ac8>
    1ac4:	0b010000 	bleq	41acc <_Min_Stack_Size+0x416cc>
    1ac8:	0000004a 	andeq	r0, r0, sl, asr #32
    1acc:	136c9102 	cmnne	ip, #-2147483648	; 0x80000000
    1ad0:	0d010069 	stceq	0, cr0, [r1, #-420]	; 0xfffffe5c
    1ad4:	0000004a 	andeq	r0, r0, sl, asr #32
    1ad8:	13749102 	cmnne	r4, #-2147483648	; 0x80000000
    1adc:	0e01006a 	cdpeq	0, 0, cr0, cr1, cr10, {3}
    1ae0:	0000004a 	andeq	r0, r0, sl, asr #32
    1ae4:	00709102 	rsbseq	r9, r0, r2, lsl #2
    1ae8:	4ab50114 	bmi	fed41f40 <_estack+0xded3f740>
    1aec:	88020000 	stmdahi	r2, {}	; <UNPREDICTABLE>
    1af0:	1e000301 	cdpne	3, 0, cr0, cr0, cr1, {0}
    1af4:	02000000 	andeq	r0, r0, #0
    1af8:	00098a00 	andeq	r8, r9, r0, lsl #20
    1afc:	81010400 	tsthi	r1, r0, lsl #8
    1b00:	a800000e 	stmdage	r0, {r1, r2, r3}
    1b04:	2a000002 	bcs	1b14 <_Min_Stack_Size+0x1714>
    1b08:	4f00004b 	svcmi	0x0000004b
    1b0c:	4d000011 	stcmi	0, cr0, [r0, #-68]	; 0xffffffbc
    1b10:	0100004b 	tsteq	r0, fp, asr #32
    1b14:	Address 0x0000000000001b14 is out of bounds.


Disassembly of section .debug_abbrev:

00000000 <.debug_abbrev>:
   0:	25011101 	strcs	r1, [r1, #-257]	; 0xfffffeff
   4:	030b130e 	movweq	r1, #45838	; 0xb30e
   8:	550e1b0e 	strpl	r1, [lr, #-2830]	; 0xfffff4f2
   c:	52011106 	andpl	r1, r1, #-2147483647	; 0x80000001
  10:	99061001 	stmdbls	r6, {r0, ip}
  14:	00000642 	andeq	r0, r0, r2, asr #12
  18:	03001602 	movweq	r1, #1538	; 0x602
  1c:	3b0b3a08 	blcc	2ce844 <_Min_Stack_Size+0x2ce444>
  20:	0013490b 	andseq	r4, r3, fp, lsl #18
  24:	00240300 	eoreq	r0, r4, r0, lsl #6
  28:	0b3e0b0b 	bleq	f82c5c <_Min_Stack_Size+0xf8285c>
  2c:	00000e03 	andeq	r0, r0, r3, lsl #28
  30:	49003504 	stmdbmi	r0, {r2, r8, sl, ip, sp}
  34:	05000013 	streq	r0, [r0, #-19]	; 0xffffffed
  38:	0b3e0104 	bleq	f80450 <_Min_Stack_Size+0xf80050>
  3c:	13490b0b 	movtne	r0, #39691	; 0x9b0b
  40:	0b3b0b3a 	bleq	ec2d30 <_Min_Stack_Size+0xec2930>
  44:	00001301 	andeq	r1, r0, r1, lsl #6
  48:	03002806 	movweq	r2, #2054	; 0x806
  4c:	000b1c0e 	andeq	r1, fp, lr, lsl #24
  50:	00160700 	andseq	r0, r6, r0, lsl #14
  54:	0b3a0e03 	bleq	e83868 <_Min_Stack_Size+0xe83468>
  58:	13490b3b 	movtne	r0, #39739	; 0x9b3b
  5c:	13080000 	movwne	r0, #32768	; 0x8000
  60:	3a0b0b01 	bcc	2c2c6c <_Min_Stack_Size+0x2c286c>
  64:	010b3b0b 	tsteq	fp, fp, lsl #22
  68:	09000013 	stmdbeq	r0, {r0, r1, r4}
  6c:	0e03000d 	cdpeq	0, 0, cr0, cr3, cr13, {0}
  70:	0b3b0b3a 	bleq	ec2d60 <_Min_Stack_Size+0xec2960>
  74:	0a381349 	beq	e04da0 <_Min_Stack_Size+0xe049a0>
  78:	010a0000 	mrseq	r0, (UNDEF: 10)
  7c:	01134901 	tsteq	r3, r1, lsl #18
  80:	0b000013 	bleq	d4 <_Min_Heap_Size-0x12c>
  84:	13490021 	movtne	r0, #36897	; 0x9021
  88:	00000b2f 	andeq	r0, r0, pc, lsr #22
  8c:	3f012e0c 	svccc	0x00012e0c
  90:	3a0e030c 	bcc	380cc8 <_Min_Stack_Size+0x3808c8>
  94:	270b3b0b 	strcs	r3, [fp, -fp, lsl #22]
  98:	1201110c 	andne	r1, r1, #12, 2
  9c:	97064001 	strls	r4, [r6, -r1]
  a0:	00000c42 	andeq	r0, r0, r2, asr #24
  a4:	0300050d 	movweq	r0, #1293	; 0x50d
  a8:	3b0b3a0e 	blcc	2ce8e8 <_Min_Stack_Size+0x2ce4e8>
  ac:	0213490b 	andseq	r4, r3, #180224	; 0x2c000
  b0:	0e00000a 	cdpeq	0, 0, cr0, cr0, cr10, {0}
  b4:	0e030034 	mcreq	0, 0, r0, cr3, cr4, {1}
  b8:	0b3b0b3a 	bleq	ec2da8 <_Min_Stack_Size+0xec29a8>
  bc:	0a021349 	beq	84de8 <_Min_Stack_Size+0x849e8>
  c0:	01000000 	mrseq	r0, (UNDEF: 0)
  c4:	0e250111 	mcreq	1, 1, r0, cr5, cr1, {0}
  c8:	0e030b13 	vmoveq.32	d3[0], r0
  cc:	06550e1b 			; <UNDEFINED> instruction: 0x06550e1b
  d0:	01520111 	cmpeq	r2, r1, lsl r1
  d4:	42990610 	addsmi	r0, r9, #16, 12	; 0x1000000
  d8:	02000006 	andeq	r0, r0, #6
  dc:	0b0b0024 	bleq	2c0174 <_Min_Stack_Size+0x2bfd74>
  e0:	0e030b3e 	vmoveq.16	d3[0], r0
  e4:	16030000 	strne	r0, [r3], -r0
  e8:	3a080300 	bcc	200cf0 <_Min_Stack_Size+0x2008f0>
  ec:	490b3b0b 	stmdbmi	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
  f0:	04000013 	streq	r0, [r0], #-19	; 0xffffffed
  f4:	13490035 	movtne	r0, #36917	; 0x9035
  f8:	04050000 	streq	r0, [r5], #-0
  fc:	0b0b3e01 	bleq	2cf908 <_Min_Stack_Size+0x2cf508>
 100:	3a13490b 	bcc	4d2534 <_Min_Stack_Size+0x4d2134>
 104:	010b3b0b 	tsteq	fp, fp, lsl #22
 108:	06000013 			; <UNDEFINED> instruction: 0x06000013
 10c:	0e030028 	cdpeq	0, 0, cr0, cr3, cr8, {1}
 110:	00000b1c 	andeq	r0, r0, ip, lsl fp
 114:	03001607 	movweq	r1, #1543	; 0x607
 118:	3b0b3a0e 	blcc	2ce958 <_Min_Stack_Size+0x2ce558>
 11c:	0013490b 	andseq	r4, r3, fp, lsl #18
 120:	000f0800 	andeq	r0, pc, r0, lsl #16
 124:	13490b0b 	movtne	r0, #39691	; 0x9b0b
 128:	15090000 	strne	r0, [r9, #-0]
 12c:	000c2700 	andeq	r2, ip, r0, lsl #14
 130:	01130a00 	tsteq	r3, r0, lsl #20
 134:	0b3a0b0b 	bleq	e82d68 <_Min_Stack_Size+0xe82968>
 138:	13010b3b 	movwne	r0, #6971	; 0x1b3b
 13c:	0d0b0000 	stceq	0, cr0, [fp, #-0]
 140:	3a080300 	bcc	200d48 <_Min_Stack_Size+0x200948>
 144:	490b3b0b 	stmdbmi	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
 148:	000a3813 	andeq	r3, sl, r3, lsl r8
 14c:	000d0c00 	andeq	r0, sp, r0, lsl #24
 150:	0b3a0e03 	bleq	e83964 <_Min_Stack_Size+0xe83564>
 154:	13490b3b 	movtne	r0, #39739	; 0x9b3b
 158:	00000a38 	andeq	r0, r0, r8, lsr sl
 15c:	4901010d 	stmdbmi	r1, {r0, r2, r3, r8}
 160:	00130113 	andseq	r0, r3, r3, lsl r1
 164:	00210e00 	eoreq	r0, r1, r0, lsl #28
 168:	0b2f1349 	bleq	bc4e94 <_Min_Stack_Size+0xbc4a94>
 16c:	340f0000 	strcc	r0, [pc], #-0	; 174 <_Min_Heap_Size-0x8c>
 170:	3a0e0300 	bcc	380d78 <_Min_Stack_Size+0x380978>
 174:	490b3b0b 	stmdbmi	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
 178:	000a0213 	andeq	r0, sl, r3, lsl r2
 17c:	002e1000 	eoreq	r1, lr, r0
 180:	0e030c3f 	mcreq	12, 0, r0, cr3, cr15, {1}
 184:	0b3b0b3a 	bleq	ec2e74 <_Min_Stack_Size+0xec2a74>
 188:	01110c27 	tsteq	r1, r7, lsr #24
 18c:	06400112 			; <UNDEFINED> instruction: 0x06400112
 190:	000c4296 	muleq	ip, r6, r2
 194:	012e1100 			; <UNDEFINED> instruction: 0x012e1100
 198:	0e030c3f 	mcreq	12, 0, r0, cr3, cr15, {1}
 19c:	0b3b0b3a 	bleq	ec2e8c <_Min_Stack_Size+0xec2a8c>
 1a0:	01110c27 	tsteq	r1, r7, lsr #24
 1a4:	06400112 			; <UNDEFINED> instruction: 0x06400112
 1a8:	010c4297 			; <UNDEFINED> instruction: 0x010c4297
 1ac:	12000013 	andne	r0, r0, #19
 1b0:	0e030005 	cdpeq	0, 0, cr0, cr3, cr5, {0}
 1b4:	0b3b0b3a 	bleq	ec2ea4 <_Min_Stack_Size+0xec2aa4>
 1b8:	0a021349 	beq	84ee4 <_Min_Stack_Size+0x84ae4>
 1bc:	2e130000 	cdpcs	0, 1, cr0, cr3, cr0, {0}
 1c0:	030c3f01 	movweq	r3, #52993	; 0xcf01
 1c4:	3b0b3a0e 	blcc	2cea04 <_Min_Stack_Size+0x2ce604>
 1c8:	110c270b 	tstne	ip, fp, lsl #14
 1cc:	40011201 	andmi	r1, r1, r1, lsl #4
 1d0:	0c429606 	mcrreq	6, 0, r9, r2, cr6
 1d4:	00001301 	andeq	r1, r0, r1, lsl #6
 1d8:	3f012e14 	svccc	0x00012e14
 1dc:	3a0e030c 	bcc	380e14 <_Min_Stack_Size+0x380a14>
 1e0:	270b3b0b 	strcs	r3, [fp, -fp, lsl #22]
 1e4:	1201110c 	andne	r1, r1, #12, 2
 1e8:	97064001 	strls	r4, [r6, -r1]
 1ec:	00000c42 	andeq	r0, r0, r2, asr #24
 1f0:	01110100 	tsteq	r1, r0, lsl #2
 1f4:	0b130e25 	bleq	4c3a90 <_Min_Stack_Size+0x4c3690>
 1f8:	0e1b0e03 	cdpeq	14, 1, cr0, cr11, cr3, {0}
 1fc:	01110655 	tsteq	r1, r5, asr r6
 200:	06100152 			; <UNDEFINED> instruction: 0x06100152
 204:	00064299 	muleq	r6, r9, r2
 208:	00160200 	andseq	r0, r6, r0, lsl #4
 20c:	0b3a0803 	bleq	e82220 <_Min_Stack_Size+0xe81e20>
 210:	13490b3b 	movtne	r0, #39739	; 0x9b3b
 214:	24030000 	strcs	r0, [r3], #-0
 218:	3e0b0b00 	vmlacc.f64	d0, d11, d0
 21c:	000e030b 	andeq	r0, lr, fp, lsl #6
 220:	01040400 	tsteq	r4, r0, lsl #8
 224:	0b0b0b3e 	bleq	2c2f24 <_Min_Stack_Size+0x2c2b24>
 228:	0b3a1349 	bleq	e84f54 <_Min_Stack_Size+0xe84b54>
 22c:	13010b3b 	movwne	r0, #6971	; 0x1b3b
 230:	28050000 	stmdacs	r5, {}	; <UNPREDICTABLE>
 234:	1c0e0300 	stcne	3, cr0, [lr], {-0}
 238:	0600000b 	streq	r0, [r0], -fp
 23c:	0e030016 	mcreq	0, 0, r0, cr3, cr6, {0}
 240:	0b3b0b3a 	bleq	ec2f30 <_Min_Stack_Size+0xec2b30>
 244:	00001349 	andeq	r1, r0, r9, asr #6
 248:	0b011307 	bleq	44e6c <_Min_Stack_Size+0x44a6c>
 24c:	3b0b3a0b 	blcc	2cea80 <_Min_Stack_Size+0x2ce680>
 250:	0013010b 	andseq	r0, r3, fp, lsl #2
 254:	000d0800 	andeq	r0, sp, r0, lsl #16
 258:	0b3a0803 	bleq	e8226c <_Min_Stack_Size+0xe81e6c>
 25c:	13490b3b 	movtne	r0, #39739	; 0x9b3b
 260:	00000a38 	andeq	r0, r0, r8, lsr sl
 264:	03000d09 	movweq	r0, #3337	; 0xd09
 268:	3b0b3a0e 	blcc	2ceaa8 <_Min_Stack_Size+0x2ce6a8>
 26c:	3813490b 	ldmdacc	r3, {r0, r1, r3, r8, fp, lr}
 270:	0a00000a 	beq	2a0 <_Min_Heap_Size+0xa0>
 274:	13490035 	movtne	r0, #36917	; 0x9035
 278:	0f0b0000 	svceq	0x000b0000
 27c:	490b0b00 	stmdbmi	fp, {r8, r9, fp}
 280:	0c000013 	stceq	0, cr0, [r0], {19}
 284:	13490026 	movtne	r0, #36902	; 0x9026
 288:	2e0d0000 	cdpcs	0, 0, cr0, cr13, cr0, {0}
 28c:	030c3f01 	movweq	r3, #52993	; 0xcf01
 290:	3b0b3a0e 	blcc	2cead0 <_Min_Stack_Size+0x2ce6d0>
 294:	110c2705 	tstne	ip, r5, lsl #14
 298:	40011201 	andmi	r1, r1, r1, lsl #4
 29c:	0c429706 	mcrreq	7, 0, r9, r2, cr6
 2a0:	00001301 	andeq	r1, r0, r1, lsl #6
 2a4:	0300050e 	movweq	r0, #1294	; 0x50e
 2a8:	3b0b3a0e 	blcc	2ceae8 <_Min_Stack_Size+0x2ce6e8>
 2ac:	02134905 	andseq	r4, r3, #81920	; 0x14000
 2b0:	0f00000a 	svceq	0x0000000a
 2b4:	0c3f012e 	ldfeqs	f0, [pc], #-184	; 204 <_Min_Heap_Size+0x4>
 2b8:	0b3a0e03 	bleq	e83acc <_Min_Stack_Size+0xe836cc>
 2bc:	0c27053b 	cfstr32eq	mvfx0, [r7], #-236	; 0xffffff14
 2c0:	01111349 	tsteq	r1, r9, asr #6
 2c4:	06400112 			; <UNDEFINED> instruction: 0x06400112
 2c8:	010c4297 			; <UNDEFINED> instruction: 0x010c4297
 2cc:	10000013 	andne	r0, r0, r3, lsl r0
 2d0:	0e030034 	mcreq	0, 0, r0, cr3, cr4, {1}
 2d4:	053b0b3a 	ldreq	r0, [fp, #-2874]!	; 0xfffff4c6
 2d8:	0a021349 	beq	85004 <_Min_Stack_Size+0x84c04>
 2dc:	2e110000 	cdpcs	0, 1, cr0, cr1, cr0, {0}
 2e0:	030c3f01 	movweq	r3, #52993	; 0xcf01
 2e4:	3b0b3a0e 	blcc	2ceb24 <_Min_Stack_Size+0x2ce724>
 2e8:	110c270b 	tstne	ip, fp, lsl #14
 2ec:	40011201 	andmi	r1, r1, r1, lsl #4
 2f0:	0c429706 	mcrreq	7, 0, r9, r2, cr6
 2f4:	00001301 	andeq	r1, r0, r1, lsl #6
 2f8:	03000512 	movweq	r0, #1298	; 0x512
 2fc:	3b0b3a0e 	blcc	2ceb3c <_Min_Stack_Size+0x2ce73c>
 300:	0213490b 	andseq	r4, r3, #180224	; 0x2c000
 304:	1300000a 	movwne	r0, #10
 308:	0e030034 	mcreq	0, 0, r0, cr3, cr4, {1}
 30c:	0b3b0b3a 	bleq	ec2ffc <_Min_Stack_Size+0xec2bfc>
 310:	0a021349 	beq	8503c <_Min_Stack_Size+0x84c3c>
 314:	0b140000 	bleq	50031c <_Min_Stack_Size+0x4fff1c>
 318:	12011101 	andne	r1, r1, #1073741824	; 0x40000000
 31c:	00130101 	andseq	r0, r3, r1, lsl #2
 320:	00341500 	eorseq	r1, r4, r0, lsl #10
 324:	0b3a0803 	bleq	e82338 <_Min_Stack_Size+0xe81f38>
 328:	13490b3b 	movtne	r0, #39739	; 0x9b3b
 32c:	00000a02 	andeq	r0, r0, r2, lsl #20
 330:	11010b16 	tstne	r1, r6, lsl fp
 334:	00011201 	andeq	r1, r1, r1, lsl #4
 338:	012e1700 			; <UNDEFINED> instruction: 0x012e1700
 33c:	0e030c3f 	mcreq	12, 0, r0, cr3, cr15, {1}
 340:	0b3b0b3a 	bleq	ec3030 <_Min_Stack_Size+0xec2c30>
 344:	01110c27 	tsteq	r1, r7, lsr #24
 348:	06400112 			; <UNDEFINED> instruction: 0x06400112
 34c:	000c4297 	muleq	ip, r7, r2
 350:	11010000 	mrsne	r0, (UNDEF: 1)
 354:	130e2501 	movwne	r2, #58625	; 0xe501
 358:	1b0e030b 	blne	380f8c <_Min_Stack_Size+0x380b8c>
 35c:	1106550e 	tstne	r6, lr, lsl #10
 360:	10015201 	andne	r5, r1, r1, lsl #4
 364:	06429906 	strbeq	r9, [r2], -r6, lsl #18
 368:	16020000 	strne	r0, [r2], -r0
 36c:	3a080300 	bcc	200f74 <_Min_Stack_Size+0x200b74>
 370:	490b3b0b 	stmdbmi	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
 374:	03000013 	movweq	r0, #19
 378:	0b0b0024 	bleq	2c0410 <_Min_Stack_Size+0x2c0010>
 37c:	0e030b3e 	vmoveq.16	d3[0], r0
 380:	04040000 	streq	r0, [r4], #-0
 384:	0b0b3e01 	bleq	2cfb90 <_Min_Stack_Size+0x2cf790>
 388:	3a13490b 	bcc	4d27bc <_Min_Stack_Size+0x4d23bc>
 38c:	010b3b0b 	tsteq	fp, fp, lsl #22
 390:	05000013 	streq	r0, [r0, #-19]	; 0xffffffed
 394:	0e030028 	cdpeq	0, 0, cr0, cr3, cr8, {1}
 398:	00000b1c 	andeq	r0, r0, ip, lsl fp
 39c:	03001606 	movweq	r1, #1542	; 0x606
 3a0:	3b0b3a0e 	blcc	2cebe0 <_Min_Stack_Size+0x2ce7e0>
 3a4:	0013490b 	andseq	r4, r3, fp, lsl #18
 3a8:	012e0700 			; <UNDEFINED> instruction: 0x012e0700
 3ac:	0e030c3f 	mcreq	12, 0, r0, cr3, cr15, {1}
 3b0:	0b3b0b3a 	bleq	ec30a0 <_Min_Stack_Size+0xec2ca0>
 3b4:	01110c27 	tsteq	r1, r7, lsr #24
 3b8:	06400112 			; <UNDEFINED> instruction: 0x06400112
 3bc:	010c4297 			; <UNDEFINED> instruction: 0x010c4297
 3c0:	08000013 	stmdaeq	r0, {r0, r1, r4}
 3c4:	0e030005 	cdpeq	0, 0, cr0, cr3, cr5, {0}
 3c8:	0b3b0b3a 	bleq	ec30b8 <_Min_Stack_Size+0xec2cb8>
 3cc:	0a021349 	beq	850f8 <_Min_Stack_Size+0x84cf8>
 3d0:	34090000 	strcc	r0, [r9], #-0
 3d4:	3a0e0300 	bcc	380fdc <_Min_Stack_Size+0x380bdc>
 3d8:	490b3b0b 	stmdbmi	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
 3dc:	000a0213 	andeq	r0, sl, r3, lsl r2
 3e0:	012e0a00 			; <UNDEFINED> instruction: 0x012e0a00
 3e4:	0e030c3f 	mcreq	12, 0, r0, cr3, cr15, {1}
 3e8:	0b3b0b3a 	bleq	ec30d8 <_Min_Stack_Size+0xec2cd8>
 3ec:	13490c27 	movtne	r0, #39975	; 0x9c27
 3f0:	01120111 	tsteq	r2, r1, lsl r1
 3f4:	42970640 	addsmi	r0, r7, #64, 12	; 0x4000000
 3f8:	0013010c 	andseq	r0, r3, ip, lsl #2
 3fc:	012e0b00 			; <UNDEFINED> instruction: 0x012e0b00
 400:	0e030c3f 	mcreq	12, 0, r0, cr3, cr15, {1}
 404:	0b3b0b3a 	bleq	ec30f4 <_Min_Stack_Size+0xec2cf4>
 408:	01110c27 	tsteq	r1, r7, lsr #24
 40c:	06400112 			; <UNDEFINED> instruction: 0x06400112
 410:	000c4297 	muleq	ip, r7, r2
 414:	11010000 	mrsne	r0, (UNDEF: 1)
 418:	130e2501 	movwne	r2, #58625	; 0xe501
 41c:	1b0e030b 	blne	381050 <_Min_Stack_Size+0x380c50>
 420:	1106550e 	tstne	r6, lr, lsl #10
 424:	10015201 	andne	r5, r1, r1, lsl #4
 428:	06429906 	strbeq	r9, [r2], -r6, lsl #18
 42c:	24020000 	strcs	r0, [r2], #-0
 430:	3e0b0b00 	vmlacc.f64	d0, d11, d0
 434:	000e030b 	andeq	r0, lr, fp, lsl #6
 438:	01040300 	mrseq	r0, LR_abt
 43c:	0b0b0b3e 	bleq	2c313c <_Min_Stack_Size+0x2c2d3c>
 440:	0b3a1349 	bleq	e8516c <_Min_Stack_Size+0xe84d6c>
 444:	13010b3b 	movwne	r0, #6971	; 0x1b3b
 448:	28040000 	stmdacs	r4, {}	; <UNPREDICTABLE>
 44c:	1c0e0300 	stcne	3, cr0, [lr], {-0}
 450:	0500000b 	streq	r0, [r0, #-11]
 454:	0e030016 	mcreq	0, 0, r0, cr3, cr6, {0}
 458:	0b3b0b3a 	bleq	ec3148 <_Min_Stack_Size+0xec2d48>
 45c:	00001349 	andeq	r1, r0, r9, asr #6
 460:	3f012e06 	svccc	0x00012e06
 464:	3a0e030c 	bcc	38109c <_Min_Stack_Size+0x380c9c>
 468:	270b3b0b 	strcs	r3, [fp, -fp, lsl #22]
 46c:	1201110c 	andne	r1, r1, #12, 2
 470:	970a4001 	strls	r4, [sl, -r1]
 474:	00000c42 	andeq	r0, r0, r2, asr #24
 478:	03000507 	movweq	r0, #1287	; 0x507
 47c:	3b0b3a0e 	blcc	2cecbc <_Min_Stack_Size+0x2ce8bc>
 480:	0213490b 	andseq	r4, r3, #180224	; 0x2c000
 484:	0000000a 	andeq	r0, r0, sl
 488:	25011101 	strcs	r1, [r1, #-257]	; 0xfffffeff
 48c:	030b130e 	movweq	r1, #45838	; 0xb30e
 490:	550e1b0e 	strpl	r1, [lr, #-2830]	; 0xfffff4f2
 494:	52011106 	andpl	r1, r1, #-2147483647	; 0x80000001
 498:	99061001 	stmdbls	r6, {r0, ip}
 49c:	00000642 	andeq	r0, r0, r2, asr #12
 4a0:	03001602 	movweq	r1, #1538	; 0x602
 4a4:	3b0b3a08 	blcc	2ceccc <_Min_Stack_Size+0x2ce8cc>
 4a8:	0013490b 	andseq	r4, r3, fp, lsl #18
 4ac:	00240300 	eoreq	r0, r4, r0, lsl #6
 4b0:	0b3e0b0b 	bleq	f830e4 <_Min_Stack_Size+0xf82ce4>
 4b4:	00000e03 	andeq	r0, r0, r3, lsl #28
 4b8:	3f012e04 	svccc	0x00012e04
 4bc:	3a0e030c 	bcc	3810f4 <_Min_Stack_Size+0x380cf4>
 4c0:	270b3b0b 	strcs	r3, [fp, -fp, lsl #22]
 4c4:	1201110c 	andne	r1, r1, #12, 2
 4c8:	97064001 	strls	r4, [r6, -r1]
 4cc:	13010c42 	movwne	r0, #7234	; 0x1c42
 4d0:	05050000 	streq	r0, [r5, #-0]
 4d4:	3a0e0300 	bcc	3810dc <_Min_Stack_Size+0x380cdc>
 4d8:	490b3b0b 	stmdbmi	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
 4dc:	000a0213 	andeq	r0, sl, r3, lsl r2
 4e0:	002e0600 	eoreq	r0, lr, r0, lsl #12
 4e4:	0e030c3f 	mcreq	12, 0, r0, cr3, cr15, {1}
 4e8:	0b3b0b3a 	bleq	ec31d8 <_Min_Stack_Size+0xec2dd8>
 4ec:	01110c27 	tsteq	r1, r7, lsr #24
 4f0:	06400112 			; <UNDEFINED> instruction: 0x06400112
 4f4:	000c4297 	muleq	ip, r7, r2
 4f8:	11010000 	mrsne	r0, (UNDEF: 1)
 4fc:	130e2501 	movwne	r2, #58625	; 0xe501
 500:	1b0e030b 	blne	381134 <_Min_Stack_Size+0x380d34>
 504:	1106550e 	tstne	r6, lr, lsl #10
 508:	10015201 	andne	r5, r1, r1, lsl #4
 50c:	06429906 	strbeq	r9, [r2], -r6, lsl #18
 510:	16020000 	strne	r0, [r2], -r0
 514:	3a080300 	bcc	20111c <_Min_Stack_Size+0x200d1c>
 518:	490b3b0b 	stmdbmi	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
 51c:	03000013 	movweq	r0, #19
 520:	0b0b0024 	bleq	2c05b8 <_Min_Stack_Size+0x2c01b8>
 524:	0e030b3e 	vmoveq.16	d3[0], r0
 528:	35040000 	strcc	r0, [r4, #-0]
 52c:	00134900 	andseq	r4, r3, r0, lsl #18
 530:	00160500 	andseq	r0, r6, r0, lsl #10
 534:	0b3a0e03 	bleq	e83d48 <_Min_Stack_Size+0xe83948>
 538:	13490b3b 	movtne	r0, #39739	; 0x9b3b
 53c:	0f060000 	svceq	0x00060000
 540:	490b0b00 	stmdbmi	fp, {r8, r9, fp}
 544:	07000013 	smladeq	r0, r3, r0, r0
 548:	0c270015 	stceq	0, cr0, [r7], #-84	; 0xffffffac
 54c:	13080000 	movwne	r0, #32768	; 0x8000
 550:	3a0b0b01 	bcc	2c315c <_Min_Stack_Size+0x2c2d5c>
 554:	010b3b0b 	tsteq	fp, fp, lsl #22
 558:	09000013 	stmdbeq	r0, {r0, r1, r4}
 55c:	0e03000d 	cdpeq	0, 0, cr0, cr3, cr13, {0}
 560:	0b3b0b3a 	bleq	ec3250 <_Min_Stack_Size+0xec2e50>
 564:	0a381349 	beq	e05290 <_Min_Stack_Size+0xe04e90>
 568:	0d0a0000 	stceq	0, cr0, [sl, #-0]
 56c:	3a080300 	bcc	201174 <_Min_Stack_Size+0x200d74>
 570:	490b3b0b 	stmdbmi	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
 574:	000a3813 	andeq	r3, sl, r3, lsl r8
 578:	01040b00 	tsteq	r4, r0, lsl #22
 57c:	0b0b0b3e 	bleq	2c327c <_Min_Stack_Size+0x2c2e7c>
 580:	0b3a1349 	bleq	e852ac <_Min_Stack_Size+0xe84eac>
 584:	13010b3b 	movwne	r0, #6971	; 0x1b3b
 588:	280c0000 	stmdacs	ip, {}	; <UNPREDICTABLE>
 58c:	1c0e0300 	stcne	3, cr0, [lr], {-0}
 590:	0d000005 	stceq	0, cr0, [r0, #-20]	; 0xffffffec
 594:	0e030028 	cdpeq	0, 0, cr0, cr3, cr8, {1}
 598:	0000061c 	andeq	r0, r0, ip, lsl r6
 59c:	0300340e 	movweq	r3, #1038	; 0x40e
 5a0:	3b0b3a0e 	blcc	2cede0 <_Min_Stack_Size+0x2ce9e0>
 5a4:	3f13490b 	svccc	0x0013490b
 5a8:	000a020c 	andeq	r0, sl, ip, lsl #4
 5ac:	012e0f00 			; <UNDEFINED> instruction: 0x012e0f00
 5b0:	0e030c3f 	mcreq	12, 0, r0, cr3, cr15, {1}
 5b4:	053b0b3a 	ldreq	r0, [fp, #-2874]!	; 0xfffff4c6
 5b8:	01110c27 	tsteq	r1, r7, lsr #24
 5bc:	06400112 			; <UNDEFINED> instruction: 0x06400112
 5c0:	010c4296 			; <UNDEFINED> instruction: 0x010c4296
 5c4:	10000013 	andne	r0, r0, r3, lsl r0
 5c8:	0e030034 	mcreq	0, 0, r0, cr3, cr4, {1}
 5cc:	053b0b3a 	ldreq	r0, [fp, #-2874]!	; 0xfffff4c6
 5d0:	0a021349 	beq	852fc <_Min_Stack_Size+0x84efc>
 5d4:	2e110000 	cdpcs	0, 1, cr0, cr1, cr0, {0}
 5d8:	030c3f01 	movweq	r3, #52993	; 0xcf01
 5dc:	3b0b3a0e 	blcc	2cee1c <_Min_Stack_Size+0x2cea1c>
 5e0:	490c2705 	stmdbmi	ip, {r0, r2, r8, r9, sl, sp}
 5e4:	12011113 	andne	r1, r1, #-1073741820	; 0xc0000004
 5e8:	96064001 	strls	r4, [r6], -r1
 5ec:	13010c42 	movwne	r0, #7234	; 0x1c42
 5f0:	2e120000 	cdpcs	0, 1, cr0, cr2, cr0, {0}
 5f4:	030c3f01 	movweq	r3, #52993	; 0xcf01
 5f8:	3b0b3a0e 	blcc	2cee38 <_Min_Stack_Size+0x2cea38>
 5fc:	490c2705 	stmdbmi	ip, {r0, r2, r8, r9, sl, sp}
 600:	12011113 	andne	r1, r1, #-1073741820	; 0xc0000004
 604:	97064001 	strls	r4, [r6, -r1]
 608:	13010c42 	movwne	r0, #7234	; 0x1c42
 60c:	2e130000 	cdpcs	0, 1, cr0, cr3, cr0, {0}
 610:	030c3f01 	movweq	r3, #52993	; 0xcf01
 614:	3b0b3a0e 	blcc	2cee54 <_Min_Stack_Size+0x2cea54>
 618:	490c270b 	stmdbmi	ip, {r0, r1, r3, r8, r9, sl, sp}
 61c:	12011113 	andne	r1, r1, #-1073741820	; 0xc0000004
 620:	97064001 	strls	r4, [r6, -r1]
 624:	13010c42 	movwne	r0, #7234	; 0x1c42
 628:	34140000 	ldrcc	r0, [r4], #-0
 62c:	3a0e0300 	bcc	381234 <_Min_Stack_Size+0x380e34>
 630:	490b3b0b 	stmdbmi	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
 634:	000a0213 	andeq	r0, sl, r3, lsl r2
 638:	012e1500 			; <UNDEFINED> instruction: 0x012e1500
 63c:	0e030c3f 	mcreq	12, 0, r0, cr3, cr15, {1}
 640:	0b3b0b3a 	bleq	ec3330 <_Min_Stack_Size+0xec2f30>
 644:	01110c27 	tsteq	r1, r7, lsr #24
 648:	06400112 			; <UNDEFINED> instruction: 0x06400112
 64c:	010c4296 			; <UNDEFINED> instruction: 0x010c4296
 650:	16000013 			; <UNDEFINED> instruction: 0x16000013
 654:	0e030005 	cdpeq	0, 0, cr0, cr3, cr5, {0}
 658:	0b3b0b3a 	bleq	ec3348 <_Min_Stack_Size+0xec2f48>
 65c:	0a021349 	beq	85388 <_Min_Stack_Size+0x84f88>
 660:	2e170000 	cdpcs	0, 1, cr0, cr7, cr0, {0}
 664:	030c3f01 	movweq	r3, #52993	; 0xcf01
 668:	3b0b3a0e 	blcc	2ceea8 <_Min_Stack_Size+0x2ceaa8>
 66c:	110c270b 	tstne	ip, fp, lsl #14
 670:	40011201 	andmi	r1, r1, r1, lsl #4
 674:	0c429706 	mcrreq	7, 0, r9, r2, cr6
 678:	00001301 	andeq	r1, r0, r1, lsl #6
 67c:	11010b18 	tstne	r1, r8, lsl fp
 680:	00011201 	andeq	r1, r1, r1, lsl #4
 684:	002e1900 	eoreq	r1, lr, r0, lsl #18
 688:	0e030c3f 	mcreq	12, 0, r0, cr3, cr15, {1}
 68c:	0b3b0b3a 	bleq	ec337c <_Min_Stack_Size+0xec2f7c>
 690:	01110c27 	tsteq	r1, r7, lsr #24
 694:	06400112 			; <UNDEFINED> instruction: 0x06400112
 698:	000c4297 	muleq	ip, r7, r2
 69c:	012e1a00 			; <UNDEFINED> instruction: 0x012e1a00
 6a0:	0b3a0e03 	bleq	e83eb4 <_Min_Stack_Size+0xe83ab4>
 6a4:	0c270b3b 			; <UNDEFINED> instruction: 0x0c270b3b
 6a8:	01111349 	tsteq	r1, r9, asr #6
 6ac:	06400112 			; <UNDEFINED> instruction: 0x06400112
 6b0:	000c4297 	muleq	ip, r7, r2
 6b4:	11010000 	mrsne	r0, (UNDEF: 1)
 6b8:	130e2501 	movwne	r2, #58625	; 0xe501
 6bc:	1b0e030b 	blne	3812f0 <_Min_Stack_Size+0x380ef0>
 6c0:	1106550e 	tstne	r6, lr, lsl #10
 6c4:	10015201 	andne	r5, r1, r1, lsl #4
 6c8:	06429906 	strbeq	r9, [r2], -r6, lsl #18
 6cc:	16020000 	strne	r0, [r2], -r0
 6d0:	3a080300 	bcc	2012d8 <_Min_Stack_Size+0x200ed8>
 6d4:	490b3b0b 	stmdbmi	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
 6d8:	03000013 	movweq	r0, #19
 6dc:	0b0b0024 	bleq	2c0774 <_Min_Stack_Size+0x2c0374>
 6e0:	0e030b3e 	vmoveq.16	d3[0], r0
 6e4:	35040000 	strcc	r0, [r4, #-0]
 6e8:	00134900 	andseq	r4, r3, r0, lsl #18
 6ec:	01040500 	tsteq	r4, r0, lsl #10
 6f0:	0b0b0b3e 	bleq	2c33f0 <_Min_Stack_Size+0x2c2ff0>
 6f4:	0b3a1349 	bleq	e85420 <_Min_Stack_Size+0xe85020>
 6f8:	13010b3b 	movwne	r0, #6971	; 0x1b3b
 6fc:	28060000 	stmdacs	r6, {}	; <UNPREDICTABLE>
 700:	1c0e0300 	stcne	3, cr0, [lr], {-0}
 704:	0700000b 	streq	r0, [r0, -fp]
 708:	0e030016 	mcreq	0, 0, r0, cr3, cr6, {0}
 70c:	0b3b0b3a 	bleq	ec33fc <_Min_Stack_Size+0xec2ffc>
 710:	00001349 	andeq	r1, r0, r9, asr #6
 714:	03002808 	movweq	r2, #2056	; 0x808
 718:	00051c0e 	andeq	r1, r5, lr, lsl #24
 71c:	01130900 	tsteq	r3, r0, lsl #18
 720:	0b3a0b0b 	bleq	e83354 <_Min_Stack_Size+0xe82f54>
 724:	13010b3b 	movwne	r0, #6971	; 0x1b3b
 728:	0d0a0000 	stceq	0, cr0, [sl, #-0]
 72c:	3a0e0300 	bcc	381334 <_Min_Stack_Size+0x380f34>
 730:	490b3b0b 	stmdbmi	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
 734:	000a3813 	andeq	r3, sl, r3, lsl r8
 738:	01150b00 	tsteq	r5, r0, lsl #22
 73c:	13010c27 	movwne	r0, #7207	; 0x1c27
 740:	050c0000 	streq	r0, [ip, #-0]
 744:	00134900 	andseq	r4, r3, r0, lsl #18
 748:	000f0d00 	andeq	r0, pc, r0, lsl #26
 74c:	13490b0b 	movtne	r0, #39691	; 0x9b0b
 750:	0d0e0000 	stceq	0, cr0, [lr, #-0]
 754:	3a080300 	bcc	20135c <_Min_Stack_Size+0x200f5c>
 758:	490b3b0b 	stmdbmi	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
 75c:	000a3813 	andeq	r3, sl, r3, lsl r8
 760:	01010f00 	tsteq	r1, r0, lsl #30
 764:	13011349 	movwne	r1, #4937	; 0x1349
 768:	21100000 	tstcs	r0, r0
 76c:	2f134900 	svccs	0x00134900
 770:	1100000b 	tstne	r0, fp
 774:	0e030034 	mcreq	0, 0, r0, cr3, cr4, {1}
 778:	0b3b0b3a 	bleq	ec3468 <_Min_Stack_Size+0xec3068>
 77c:	0a021349 	beq	854a8 <_Min_Stack_Size+0x850a8>
 780:	2e120000 	cdpcs	0, 1, cr0, cr2, cr0, {0}
 784:	030c3f01 	movweq	r3, #52993	; 0xcf01
 788:	3b0b3a0e 	blcc	2cefc8 <_Min_Stack_Size+0x2cebc8>
 78c:	110c2705 	tstne	ip, r5, lsl #14
 790:	40011201 	andmi	r1, r1, r1, lsl #4
 794:	0c429606 	mcrreq	6, 0, r9, r2, cr6
 798:	00001301 	andeq	r1, r0, r1, lsl #6
 79c:	03000513 	movweq	r0, #1299	; 0x513
 7a0:	3b0b3a0e 	blcc	2cefe0 <_Min_Stack_Size+0x2cebe0>
 7a4:	02134905 	andseq	r4, r3, #81920	; 0x14000
 7a8:	1400000a 	strne	r0, [r0], #-10
 7ac:	0e030034 	mcreq	0, 0, r0, cr3, cr4, {1}
 7b0:	053b0b3a 	ldreq	r0, [fp, #-2874]!	; 0xfffff4c6
 7b4:	0a021349 	beq	854e0 <_Min_Stack_Size+0x850e0>
 7b8:	2e150000 	cdpcs	0, 1, cr0, cr5, cr0, {0}
 7bc:	030c3f01 	movweq	r3, #52993	; 0xcf01
 7c0:	3b0b3a0e 	blcc	2cf000 <_Min_Stack_Size+0x2cec00>
 7c4:	110c2705 	tstne	ip, r5, lsl #14
 7c8:	40011201 	andmi	r1, r1, r1, lsl #4
 7cc:	0c429706 	mcrreq	7, 0, r9, r2, cr6
 7d0:	00001301 	andeq	r1, r0, r1, lsl #6
 7d4:	3f002e16 	svccc	0x00002e16
 7d8:	3a0e030c 	bcc	381410 <_Min_Stack_Size+0x381010>
 7dc:	27053b0b 	strcs	r3, [r5, -fp, lsl #22]
 7e0:	1201110c 	andne	r1, r1, #12, 2
 7e4:	96064001 	strls	r4, [r6], -r1
 7e8:	00000c42 	andeq	r0, r0, r2, asr #24
 7ec:	3f012e17 	svccc	0x00012e17
 7f0:	3a0e030c 	bcc	381428 <_Min_Stack_Size+0x381028>
 7f4:	270b3b0b 	strcs	r3, [fp, -fp, lsl #22]
 7f8:	1201110c 	andne	r1, r1, #12, 2
 7fc:	97064001 	strls	r4, [r6, -r1]
 800:	13010c42 	movwne	r0, #7234	; 0x1c42
 804:	05180000 	ldreq	r0, [r8, #-0]
 808:	3a0e0300 	bcc	381410 <_Min_Stack_Size+0x381010>
 80c:	490b3b0b 	stmdbmi	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
 810:	000a0213 	andeq	r0, sl, r3, lsl r2
 814:	012e1900 			; <UNDEFINED> instruction: 0x012e1900
 818:	0e030c3f 	mcreq	12, 0, r0, cr3, cr15, {1}
 81c:	0b3b0b3a 	bleq	ec350c <_Min_Stack_Size+0xec310c>
 820:	01110c27 	tsteq	r1, r7, lsr #24
 824:	06400112 			; <UNDEFINED> instruction: 0x06400112
 828:	000c4296 	muleq	ip, r6, r2
 82c:	11010000 	mrsne	r0, (UNDEF: 1)
 830:	130e2501 	movwne	r2, #58625	; 0xe501
 834:	1b0e030b 	blne	381468 <_Min_Stack_Size+0x381068>
 838:	1106550e 	tstne	r6, lr, lsl #10
 83c:	10015201 	andne	r5, r1, r1, lsl #4
 840:	06429906 	strbeq	r9, [r2], -r6, lsl #18
 844:	16020000 	strne	r0, [r2], -r0
 848:	3a080300 	bcc	201450 <_Min_Stack_Size+0x201050>
 84c:	490b3b0b 	stmdbmi	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
 850:	03000013 	movweq	r0, #19
 854:	13490035 	movtne	r0, #36917	; 0x9035
 858:	24040000 	strcs	r0, [r4], #-0
 85c:	3e0b0b00 	vmlacc.f64	d0, d11, d0
 860:	000e030b 	andeq	r0, lr, fp, lsl #6
 864:	01040500 	tsteq	r4, r0, lsl #10
 868:	0b0b0b3e 	bleq	2c3568 <_Min_Stack_Size+0x2c3168>
 86c:	0b3a1349 	bleq	e85598 <_Min_Stack_Size+0xe85198>
 870:	13010b3b 	movwne	r0, #6971	; 0x1b3b
 874:	28060000 	stmdacs	r6, {}	; <UNPREDICTABLE>
 878:	1c0e0300 	stcne	3, cr0, [lr], {-0}
 87c:	0700000b 	streq	r0, [r0, -fp]
 880:	0e030034 	mcreq	0, 0, r0, cr3, cr4, {1}
 884:	0b3b0b3a 	bleq	ec3574 <_Min_Stack_Size+0xec3174>
 888:	0c3f1349 	ldceq	3, cr1, [pc], #-292	; 76c <_Min_Stack_Size+0x36c>
 88c:	00000a02 	andeq	r0, r0, r2, lsl #20
 890:	3f002e08 	svccc	0x00002e08
 894:	3a0e030c 	bcc	3814cc <_Min_Stack_Size+0x3810cc>
 898:	270b3b0b 	strcs	r3, [fp, -fp, lsl #22]
 89c:	1201110c 	andne	r1, r1, #12, 2
 8a0:	97064001 	strls	r4, [r6, -r1]
 8a4:	00000c42 	andeq	r0, r0, r2, asr #24
 8a8:	3f012e09 	svccc	0x00012e09
 8ac:	3a0e030c 	bcc	3814e4 <_Min_Stack_Size+0x3810e4>
 8b0:	270b3b0b 	strcs	r3, [fp, -fp, lsl #22]
 8b4:	1201110c 	andne	r1, r1, #12, 2
 8b8:	96064001 	strls	r4, [r6], -r1
 8bc:	13010c42 	movwne	r0, #7234	; 0x1c42
 8c0:	050a0000 	streq	r0, [sl, #-0]
 8c4:	3a0e0300 	bcc	3814cc <_Min_Stack_Size+0x3810cc>
 8c8:	490b3b0b 	stmdbmi	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
 8cc:	000a0213 	andeq	r0, sl, r3, lsl r2
 8d0:	00340b00 	eorseq	r0, r4, r0, lsl #22
 8d4:	0b3a0e03 	bleq	e840e8 <_Min_Stack_Size+0xe83ce8>
 8d8:	13490b3b 	movtne	r0, #39739	; 0x9b3b
 8dc:	00000a02 	andeq	r0, r0, r2, lsl #20
 8e0:	0b000f0c 	bleq	4518 <_Min_Stack_Size+0x4118>
 8e4:	0013490b 	andseq	r4, r3, fp, lsl #18
 8e8:	002e0d00 	eoreq	r0, lr, r0, lsl #26
 8ec:	0e030c3f 	mcreq	12, 0, r0, cr3, cr15, {1}
 8f0:	0b3b0b3a 	bleq	ec35e0 <_Min_Stack_Size+0xec31e0>
 8f4:	01110c27 	tsteq	r1, r7, lsr #24
 8f8:	0a400112 	beq	1000d48 <_Min_Stack_Size+0x1000948>
 8fc:	000c4297 	muleq	ip, r7, r2
 900:	002e0e00 	eoreq	r0, lr, r0, lsl #28
 904:	0e030c3f 	mcreq	12, 0, r0, cr3, cr15, {1}
 908:	0b3b0b3a 	bleq	ec35f8 <_Min_Stack_Size+0xec31f8>
 90c:	01110c27 	tsteq	r1, r7, lsr #24
 910:	06400112 			; <UNDEFINED> instruction: 0x06400112
 914:	000c4296 	muleq	ip, r6, r2
 918:	012e0f00 			; <UNDEFINED> instruction: 0x012e0f00
 91c:	0e030c3f 	mcreq	12, 0, r0, cr3, cr15, {1}
 920:	0b3b0b3a 	bleq	ec3610 <_Min_Stack_Size+0xec3210>
 924:	13490c27 	movtne	r0, #39975	; 0x9c27
 928:	01120111 	tsteq	r2, r1, lsl r1
 92c:	42960640 	addsmi	r0, r6, #64, 12	; 0x4000000
 930:	0013010c 	andseq	r0, r3, ip, lsl #2
 934:	001d1000 	andseq	r1, sp, r0
 938:	01111331 	tsteq	r1, r1, lsr r3
 93c:	0b580112 	bleq	1600d8c <_Min_Stack_Size+0x160098c>
 940:	00000b59 	andeq	r0, r0, r9, asr fp
 944:	0b002411 	bleq	9990 <_Min_Stack_Size+0x9590>
 948:	030b3e0b 	movweq	r3, #48651	; 0xbe0b
 94c:	12000008 	andne	r0, r0, #8
 950:	0c3f012e 	ldfeqs	f0, [pc], #-184	; 8a0 <_Min_Stack_Size+0x4a0>
 954:	0b3a0e03 	bleq	e84168 <_Min_Stack_Size+0xe83d68>
 958:	0c270b3b 			; <UNDEFINED> instruction: 0x0c270b3b
 95c:	01120111 	tsteq	r2, r1, lsl r1
 960:	42970640 	addsmi	r0, r7, #64, 12	; 0x4000000
 964:	0013010c 	andseq	r0, r3, ip, lsl #2
 968:	00341300 	eorseq	r1, r4, r0, lsl #6
 96c:	0b3a0803 	bleq	e82980 <_Min_Stack_Size+0xe82580>
 970:	13490b3b 	movtne	r0, #39739	; 0x9b3b
 974:	00000a02 	andeq	r0, r0, r2, lsl #20
 978:	3f002e14 	svccc	0x00002e14
 97c:	3a0e030c 	bcc	3815b4 <_Min_Stack_Size+0x3811b4>
 980:	270b3b0b 	strcs	r3, [fp, -fp, lsl #22]
 984:	000b200c 	andeq	r2, fp, ip
 988:	11010000 	mrsne	r0, (UNDEF: 1)
 98c:	55061000 	strpl	r1, [r6, #-0]
 990:	1b0e0306 	blne	3815b0 <_Min_Stack_Size+0x3811b0>
 994:	130e250e 	movwne	r2, #58638	; 0xe50e
 998:	00000005 	andeq	r0, r0, r5

Disassembly of section .debug_loc:

00000000 <.debug_loc>:
       0:	08000170 	stmdaeq	r0, {r4, r5, r6, r8}
       4:	08000172 	stmdaeq	r0, {r1, r4, r5, r6, r8}
       8:	007d0002 	rsbseq	r0, sp, r2
       c:	08000172 	stmdaeq	r0, {r1, r4, r5, r6, r8}
      10:	08000174 	stmdaeq	r0, {r2, r4, r5, r6, r8}
      14:	047d0002 	ldrbteq	r0, [sp], #-2
      18:	08000174 	stmdaeq	r0, {r2, r4, r5, r6, r8}
      1c:	08000176 	stmdaeq	r0, {r1, r2, r4, r5, r6, r8}
      20:	187d0002 	ldmdane	sp!, {r1}^
      24:	08000176 	stmdaeq	r0, {r1, r2, r4, r5, r6, r8}
      28:	080001e2 	stmdaeq	r0, {r1, r5, r6, r7, r8}
      2c:	18770002 	ldmdane	r7!, {r1}^
      30:	080001e2 	stmdaeq	r0, {r1, r5, r6, r7, r8}
      34:	080001e4 	stmdaeq	r0, {r2, r5, r6, r7, r8}
      38:	04770002 	ldrbteq	r0, [r7], #-2
      3c:	080001e4 	stmdaeq	r0, {r2, r5, r6, r7, r8}
      40:	080001e6 	stmdaeq	r0, {r1, r2, r5, r6, r7, r8}
      44:	047d0002 	ldrbteq	r0, [sp], #-2
      48:	080001e6 	stmdaeq	r0, {r1, r2, r5, r6, r7, r8}
      4c:	080001ec 	stmdaeq	r0, {r2, r3, r5, r6, r7, r8}
      50:	007d0002 	rsbseq	r0, sp, r2
	...
      64:	007d0002 	rsbseq	r0, sp, r2
	...
      70:	087d0002 	ldmdaeq	sp!, {r1}^
	...
      7c:	08770002 	ldmdaeq	r7!, {r1}^
	...
      90:	007d0002 	rsbseq	r0, sp, r2
	...
      9c:	087d0002 	ldmdaeq	sp!, {r1}^
	...
      a8:	08770002 	ldmdaeq	r7!, {r1}^
	...
      bc:	007d0002 	rsbseq	r0, sp, r2
	...
      c8:	087d0002 	ldmdaeq	sp!, {r1}^
	...
      d4:	08770002 	ldmdaeq	r7!, {r1}^
	...
      e8:	007d0002 	rsbseq	r0, sp, r2
	...
      f4:	087d0002 	ldmdaeq	sp!, {r1}^
	...
     100:	08770002 	ldmdaeq	r7!, {r1}^
	...
     114:	007d0002 	rsbseq	r0, sp, r2
	...
     120:	087d0002 	ldmdaeq	sp!, {r1}^
	...
     12c:	08770002 	ldmdaeq	r7!, {r1}^
	...
     140:	007d0002 	rsbseq	r0, sp, r2
	...
     14c:	087d0002 	ldmdaeq	sp!, {r1}^
	...
     158:	08770002 	ldmdaeq	r7!, {r1}^
	...
     16c:	007d0002 	rsbseq	r0, sp, r2
	...
     178:	087d0002 	ldmdaeq	sp!, {r1}^
	...
     184:	08770002 	ldmdaeq	r7!, {r1}^
	...
     198:	007d0002 	rsbseq	r0, sp, r2
	...
     1a4:	087d0002 	ldmdaeq	sp!, {r1}^
	...
     1b0:	08770002 	ldmdaeq	r7!, {r1}^
	...
     1c4:	007d0002 	rsbseq	r0, sp, r2
	...
     1d0:	087d0002 	ldmdaeq	sp!, {r1}^
	...
     1dc:	08770002 	ldmdaeq	r7!, {r1}^
	...
     1f0:	007d0002 	rsbseq	r0, sp, r2
	...
     1fc:	087d0002 	ldmdaeq	sp!, {r1}^
	...
     208:	08770002 	ldmdaeq	r7!, {r1}^
	...
     21c:	007d0002 	rsbseq	r0, sp, r2
	...
     228:	087d0002 	ldmdaeq	sp!, {r1}^
	...
     234:	08770002 	ldmdaeq	r7!, {r1}^
	...
     240:	08000378 	stmdaeq	r0, {r3, r4, r5, r6, r8, r9}
     244:	0800037a 	stmdaeq	r0, {r1, r3, r4, r5, r6, r8, r9}
     248:	007d0002 	rsbseq	r0, sp, r2
     24c:	0800037a 	stmdaeq	r0, {r1, r3, r4, r5, r6, r8, r9}
     250:	0800037c 	stmdaeq	r0, {r2, r3, r4, r5, r6, r8, r9}
     254:	087d0002 	ldmdaeq	sp!, {r1}^
     258:	0800037c 	stmdaeq	r0, {r2, r3, r4, r5, r6, r8, r9}
     25c:	0800039c 	stmdaeq	r0, {r2, r3, r4, r7, r8, r9}
     260:	08770002 	ldmdaeq	r7!, {r1}^
	...
     26c:	08000354 	stmdaeq	r0, {r2, r4, r6, r8, r9}
     270:	08000356 	stmdaeq	r0, {r1, r2, r4, r6, r8, r9}
     274:	007d0002 	rsbseq	r0, sp, r2
     278:	08000356 	stmdaeq	r0, {r1, r2, r4, r6, r8, r9}
     27c:	08000358 	stmdaeq	r0, {r3, r4, r6, r8, r9}
     280:	087d0002 	ldmdaeq	sp!, {r1}^
     284:	08000358 	stmdaeq	r0, {r3, r4, r6, r8, r9}
     288:	08000378 	stmdaeq	r0, {r3, r4, r5, r6, r8, r9}
     28c:	08770002 	ldmdaeq	r7!, {r1}^
	...
     298:	08000330 	stmdaeq	r0, {r4, r5, r8, r9}
     29c:	08000332 	stmdaeq	r0, {r1, r4, r5, r8, r9}
     2a0:	007d0002 	rsbseq	r0, sp, r2
     2a4:	08000332 	stmdaeq	r0, {r1, r4, r5, r8, r9}
     2a8:	08000334 	stmdaeq	r0, {r2, r4, r5, r8, r9}
     2ac:	087d0002 	ldmdaeq	sp!, {r1}^
     2b0:	08000334 	stmdaeq	r0, {r2, r4, r5, r8, r9}
     2b4:	08000354 	stmdaeq	r0, {r2, r4, r6, r8, r9}
     2b8:	08770002 	ldmdaeq	r7!, {r1}^
	...
     2c4:	0800030c 	stmdaeq	r0, {r2, r3, r8, r9}
     2c8:	0800030e 	stmdaeq	r0, {r1, r2, r3, r8, r9}
     2cc:	007d0002 	rsbseq	r0, sp, r2
     2d0:	0800030e 	stmdaeq	r0, {r1, r2, r3, r8, r9}
     2d4:	08000310 	stmdaeq	r0, {r4, r8, r9}
     2d8:	087d0002 	ldmdaeq	sp!, {r1}^
     2dc:	08000310 	stmdaeq	r0, {r4, r8, r9}
     2e0:	08000330 	stmdaeq	r0, {r4, r5, r8, r9}
     2e4:	08770002 	ldmdaeq	r7!, {r1}^
	...
     2f0:	080002e8 	stmdaeq	r0, {r3, r5, r6, r7, r9}
     2f4:	080002ea 	stmdaeq	r0, {r1, r3, r5, r6, r7, r9}
     2f8:	007d0002 	rsbseq	r0, sp, r2
     2fc:	080002ea 	stmdaeq	r0, {r1, r3, r5, r6, r7, r9}
     300:	080002ec 	stmdaeq	r0, {r2, r3, r5, r6, r7, r9}
     304:	087d0002 	ldmdaeq	sp!, {r1}^
     308:	080002ec 	stmdaeq	r0, {r2, r3, r5, r6, r7, r9}
     30c:	0800030c 	stmdaeq	r0, {r2, r3, r8, r9}
     310:	08770002 	ldmdaeq	r7!, {r1}^
	...
     31c:	080002c4 	stmdaeq	r0, {r2, r6, r7, r9}
     320:	080002c6 	stmdaeq	r0, {r1, r2, r6, r7, r9}
     324:	007d0002 	rsbseq	r0, sp, r2
     328:	080002c6 	stmdaeq	r0, {r1, r2, r6, r7, r9}
     32c:	080002c8 	stmdaeq	r0, {r3, r6, r7, r9}
     330:	047d0002 	ldrbteq	r0, [sp], #-2
     334:	080002c8 	stmdaeq	r0, {r3, r6, r7, r9}
     338:	080002ca 	stmdaeq	r0, {r1, r3, r6, r7, r9}
     33c:	107d0002 	rsbsne	r0, sp, r2
     340:	080002ca 	stmdaeq	r0, {r1, r3, r6, r7, r9}
     344:	080002de 	stmdaeq	r0, {r1, r2, r3, r4, r6, r7, r9}
     348:	10770002 	rsbsne	r0, r7, r2
     34c:	080002de 	stmdaeq	r0, {r1, r2, r3, r4, r6, r7, r9}
     350:	080002e0 	stmdaeq	r0, {r5, r6, r7, r9}
     354:	04770002 	ldrbteq	r0, [r7], #-2
     358:	080002e0 	stmdaeq	r0, {r5, r6, r7, r9}
     35c:	080002e2 	stmdaeq	r0, {r1, r5, r6, r7, r9}
     360:	047d0002 	ldrbteq	r0, [sp], #-2
     364:	080002e2 	stmdaeq	r0, {r1, r5, r6, r7, r9}
     368:	080002e8 	stmdaeq	r0, {r3, r5, r6, r7, r9}
     36c:	007d0002 	rsbseq	r0, sp, r2
	...
     380:	007d0002 	rsbseq	r0, sp, r2
	...
     38c:	087d0002 	ldmdaeq	sp!, {r1}^
	...
     398:	107d0002 	rsbsne	r0, sp, r2
	...
     3a4:	10770002 	rsbsne	r0, r7, r2
	...
     3b0:	08770002 	ldmdaeq	r7!, {r1}^
	...
     3bc:	087d0002 	ldmdaeq	sp!, {r1}^
	...
     3d0:	007d0002 	rsbseq	r0, sp, r2
	...
     3dc:	047d0002 	ldrbteq	r0, [sp], #-2
	...
     3e8:	107d0002 	rsbsne	r0, sp, r2
	...
     3f4:	10770002 	rsbsne	r0, r7, r2
	...
     400:	04770002 	ldrbteq	r0, [r7], #-2
	...
     40c:	047d0002 	ldrbteq	r0, [sp], #-2
	...
     418:	007d0002 	rsbseq	r0, sp, r2
	...
     42c:	007d0002 	rsbseq	r0, sp, r2
	...
     438:	047d0002 	ldrbteq	r0, [sp], #-2
	...
     444:	107d0002 	rsbsne	r0, sp, r2
	...
     450:	10770002 	rsbsne	r0, r7, r2
	...
     45c:	04770002 	ldrbteq	r0, [r7], #-2
	...
     468:	047d0002 	ldrbteq	r0, [sp], #-2
	...
     474:	007d0002 	rsbseq	r0, sp, r2
	...
     480:	08000298 	stmdaeq	r0, {r3, r4, r7, r9}
     484:	0800029a 	stmdaeq	r0, {r1, r3, r4, r7, r9}
     488:	007d0002 	rsbseq	r0, sp, r2
     48c:	0800029a 	stmdaeq	r0, {r1, r3, r4, r7, r9}
     490:	0800029c 	stmdaeq	r0, {r2, r3, r4, r7, r9}
     494:	047d0002 	ldrbteq	r0, [sp], #-2
     498:	0800029c 	stmdaeq	r0, {r2, r3, r4, r7, r9}
     49c:	0800029e 	stmdaeq	r0, {r1, r2, r3, r4, r7, r9}
     4a0:	107d0002 	rsbsne	r0, sp, r2
     4a4:	0800029e 	stmdaeq	r0, {r1, r2, r3, r4, r7, r9}
     4a8:	080002ba 	stmdaeq	r0, {r1, r3, r4, r5, r7, r9}
     4ac:	10770002 	rsbsne	r0, r7, r2
     4b0:	080002ba 	stmdaeq	r0, {r1, r3, r4, r5, r7, r9}
     4b4:	080002bc 	stmdaeq	r0, {r2, r3, r4, r5, r7, r9}
     4b8:	04770002 	ldrbteq	r0, [r7], #-2
     4bc:	080002bc 	stmdaeq	r0, {r2, r3, r4, r5, r7, r9}
     4c0:	080002be 	stmdaeq	r0, {r1, r2, r3, r4, r5, r7, r9}
     4c4:	047d0002 	ldrbteq	r0, [sp], #-2
     4c8:	080002be 	stmdaeq	r0, {r1, r2, r3, r4, r5, r7, r9}
     4cc:	080002c4 	stmdaeq	r0, {r2, r6, r7, r9}
     4d0:	007d0002 	rsbseq	r0, sp, r2
	...
     4dc:	080001ec 	stmdaeq	r0, {r2, r3, r5, r6, r7, r8}
     4e0:	080001ee 	stmdaeq	r0, {r1, r2, r3, r5, r6, r7, r8}
     4e4:	007d0002 	rsbseq	r0, sp, r2
     4e8:	080001ee 	stmdaeq	r0, {r1, r2, r3, r5, r6, r7, r8}
     4ec:	080001f0 	stmdaeq	r0, {r4, r5, r6, r7, r8}
     4f0:	047d0002 	ldrbteq	r0, [sp], #-2
     4f4:	080001f0 	stmdaeq	r0, {r4, r5, r6, r7, r8}
     4f8:	080001f2 	stmdaeq	r0, {r1, r4, r5, r6, r7, r8}
     4fc:	107d0002 	rsbsne	r0, sp, r2
     500:	080001f2 	stmdaeq	r0, {r1, r4, r5, r6, r7, r8}
     504:	0800028e 	stmdaeq	r0, {r1, r2, r3, r7, r9}
     508:	10770002 	rsbsne	r0, r7, r2
     50c:	0800028e 	stmdaeq	r0, {r1, r2, r3, r7, r9}
     510:	08000290 	stmdaeq	r0, {r4, r7, r9}
     514:	04770002 	ldrbteq	r0, [r7], #-2
     518:	08000290 	stmdaeq	r0, {r4, r7, r9}
     51c:	08000292 	stmdaeq	r0, {r1, r4, r7, r9}
     520:	047d0002 	ldrbteq	r0, [sp], #-2
     524:	08000292 	stmdaeq	r0, {r1, r4, r7, r9}
     528:	08000298 	stmdaeq	r0, {r3, r4, r7, r9}
     52c:	007d0002 	rsbseq	r0, sp, r2
	...
     540:	007d0002 	rsbseq	r0, sp, r2
	...
     54c:	047d0002 	ldrbteq	r0, [sp], #-2
	...
     558:	107d0002 	rsbsne	r0, sp, r2
	...
     564:	10770002 	rsbsne	r0, r7, r2
	...
     570:	04770002 	ldrbteq	r0, [r7], #-2
	...
     57c:	047d0002 	ldrbteq	r0, [sp], #-2
	...
     588:	007d0002 	rsbseq	r0, sp, r2
	...
     59c:	007d0002 	rsbseq	r0, sp, r2
	...
     5a8:	047d0002 	ldrbteq	r0, [sp], #-2
	...
     5b4:	187d0002 	ldmdane	sp!, {r1}^
	...
     5c0:	18770002 	ldmdane	r7!, {r1}^
	...
     5cc:	04770002 	ldrbteq	r0, [r7], #-2
	...
     5d8:	047d0002 	ldrbteq	r0, [sp], #-2
	...
     5e4:	007d0002 	rsbseq	r0, sp, r2
	...
     5f8:	007d0002 	rsbseq	r0, sp, r2
	...
     604:	047d0002 	ldrbteq	r0, [sp], #-2
	...
     610:	107d0002 	rsbsne	r0, sp, r2
	...
     61c:	10770002 	rsbsne	r0, r7, r2
	...
     628:	04770002 	ldrbteq	r0, [r7], #-2
	...
     634:	047d0002 	ldrbteq	r0, [sp], #-2
	...
     640:	007d0002 	rsbseq	r0, sp, r2
	...
     654:	007d0002 	rsbseq	r0, sp, r2
	...
     660:	047d0002 	ldrbteq	r0, [sp], #-2
	...
     66c:	107d0002 	rsbsne	r0, sp, r2
	...
     678:	10770002 	rsbsne	r0, r7, r2
	...
     684:	04770002 	ldrbteq	r0, [r7], #-2
	...
     690:	047d0002 	ldrbteq	r0, [sp], #-2
	...
     69c:	007d0002 	rsbseq	r0, sp, r2
	...
     6b0:	007d0002 	rsbseq	r0, sp, r2
	...
     6bc:	047d0002 	ldrbteq	r0, [sp], #-2
	...
     6c8:	107d0002 	rsbsne	r0, sp, r2
	...
     6d4:	10770002 	rsbsne	r0, r7, r2
	...
     6e0:	04770002 	ldrbteq	r0, [r7], #-2
	...
     6ec:	047d0002 	ldrbteq	r0, [sp], #-2
	...
     6f8:	007d0002 	rsbseq	r0, sp, r2
	...
     70c:	007d0002 	rsbseq	r0, sp, r2
	...
     718:	047d0002 	ldrbteq	r0, [sp], #-2
	...
     724:	187d0002 	ldmdane	sp!, {r1}^
	...
     730:	18770002 	ldmdane	r7!, {r1}^
	...
     73c:	04770002 	ldrbteq	r0, [r7], #-2
	...
     748:	047d0002 	ldrbteq	r0, [sp], #-2
	...
     754:	007d0002 	rsbseq	r0, sp, r2
	...
     760:	0800039c 	stmdaeq	r0, {r2, r3, r4, r7, r8, r9}
     764:	0800039e 	stmdaeq	r0, {r1, r2, r3, r4, r7, r8, r9}
     768:	007d0002 	rsbseq	r0, sp, r2
     76c:	0800039e 	stmdaeq	r0, {r1, r2, r3, r4, r7, r8, r9}
     770:	080003a0 	stmdaeq	r0, {r5, r7, r8, r9}
     774:	047d0002 	ldrbteq	r0, [sp], #-2
     778:	080003a0 	stmdaeq	r0, {r5, r7, r8, r9}
     77c:	080003a2 	stmdaeq	r0, {r1, r5, r7, r8, r9}
     780:	107d0002 	rsbsne	r0, sp, r2
     784:	080003a2 	stmdaeq	r0, {r1, r5, r7, r8, r9}
     788:	08000516 	stmdaeq	r0, {r1, r2, r4, r8, sl}
     78c:	10770002 	rsbsne	r0, r7, r2
     790:	08000516 	stmdaeq	r0, {r1, r2, r4, r8, sl}
     794:	08000518 	stmdaeq	r0, {r3, r4, r8, sl}
     798:	04770002 	ldrbteq	r0, [r7], #-2
     79c:	08000518 	stmdaeq	r0, {r3, r4, r8, sl}
     7a0:	0800051a 	stmdaeq	r0, {r1, r3, r4, r8, sl}
     7a4:	047d0002 	ldrbteq	r0, [sp], #-2
     7a8:	0800051a 	stmdaeq	r0, {r1, r3, r4, r8, sl}
     7ac:	08000528 	stmdaeq	r0, {r3, r5, r8, sl}
     7b0:	007d0002 	rsbseq	r0, sp, r2
	...
     7c4:	007d0002 	rsbseq	r0, sp, r2
	...
     7d0:	047d0002 	ldrbteq	r0, [sp], #-2
	...
     7dc:	187d0002 	ldmdane	sp!, {r1}^
	...
     7e8:	18770002 	ldmdane	r7!, {r1}^
	...
     7f4:	04770002 	ldrbteq	r0, [r7], #-2
	...
     800:	047d0002 	ldrbteq	r0, [sp], #-2
	...
     80c:	007d0002 	rsbseq	r0, sp, r2
	...
     820:	007d0002 	rsbseq	r0, sp, r2
	...
     82c:	047d0002 	ldrbteq	r0, [sp], #-2
	...
     838:	187d0002 	ldmdane	sp!, {r1}^
	...
     844:	18770002 	ldmdane	r7!, {r1}^
	...
     850:	04770002 	ldrbteq	r0, [r7], #-2
	...
     85c:	047d0002 	ldrbteq	r0, [sp], #-2
	...
     868:	007d0002 	rsbseq	r0, sp, r2
	...
     87c:	007d0002 	rsbseq	r0, sp, r2
	...
     888:	047d0002 	ldrbteq	r0, [sp], #-2
	...
     894:	107d0002 	rsbsne	r0, sp, r2
	...
     8a0:	10770002 	rsbsne	r0, r7, r2
	...
     8ac:	04770002 	ldrbteq	r0, [r7], #-2
	...
     8b8:	047d0002 	ldrbteq	r0, [sp], #-2
	...
     8c4:	007d0002 	rsbseq	r0, sp, r2
	...
     8d8:	007d0002 	rsbseq	r0, sp, r2
	...
     8e4:	047d0002 	ldrbteq	r0, [sp], #-2
	...
     8f0:	107d0002 	rsbsne	r0, sp, r2
	...
     8fc:	10770002 	rsbsne	r0, r7, r2
	...
     908:	04770002 	ldrbteq	r0, [r7], #-2
	...
     914:	047d0002 	ldrbteq	r0, [sp], #-2
	...
     920:	007d0002 	rsbseq	r0, sp, r2
	...
     92c:	08000528 	stmdaeq	r0, {r3, r5, r8, sl}
     930:	0800052a 	stmdaeq	r0, {r1, r3, r5, r8, sl}
     934:	007d0002 	rsbseq	r0, sp, r2
     938:	0800052a 	stmdaeq	r0, {r1, r3, r5, r8, sl}
     93c:	0800052c 	stmdaeq	r0, {r2, r3, r5, r8, sl}
     940:	047d0002 	ldrbteq	r0, [sp], #-2
     944:	0800052c 	stmdaeq	r0, {r2, r3, r5, r8, sl}
     948:	0800052e 	stmdaeq	r0, {r1, r2, r3, r5, r8, sl}
     94c:	107d0002 	rsbsne	r0, sp, r2
     950:	0800052e 	stmdaeq	r0, {r1, r2, r3, r5, r8, sl}
     954:	08000572 	stmdaeq	r0, {r1, r4, r5, r6, r8, sl}
     958:	10770002 	rsbsne	r0, r7, r2
     95c:	08000572 	stmdaeq	r0, {r1, r4, r5, r6, r8, sl}
     960:	08000574 	stmdaeq	r0, {r2, r4, r5, r6, r8, sl}
     964:	04770002 	ldrbteq	r0, [r7], #-2
     968:	08000574 	stmdaeq	r0, {r2, r4, r5, r6, r8, sl}
     96c:	08000576 	stmdaeq	r0, {r1, r2, r4, r5, r6, r8, sl}
     970:	047d0002 	ldrbteq	r0, [sp], #-2
     974:	08000576 	stmdaeq	r0, {r1, r2, r4, r5, r6, r8, sl}
     978:	08000580 	stmdaeq	r0, {r7, r8, sl}
     97c:	007d0002 	rsbseq	r0, sp, r2
	...
     990:	007d0002 	rsbseq	r0, sp, r2
	...
     99c:	047d0002 	ldrbteq	r0, [sp], #-2
	...
     9a8:	107d0002 	rsbsne	r0, sp, r2
	...
     9b4:	10770002 	rsbsne	r0, r7, r2
	...
     9c0:	04770002 	ldrbteq	r0, [r7], #-2
	...
     9cc:	047d0002 	ldrbteq	r0, [sp], #-2
	...
     9d8:	007d0002 	rsbseq	r0, sp, r2
	...
     9e4:	080005d0 	stmdaeq	r0, {r4, r6, r7, r8, sl}
     9e8:	080005d2 	stmdaeq	r0, {r1, r4, r6, r7, r8, sl}
     9ec:	007d0002 	rsbseq	r0, sp, r2
     9f0:	080005d2 	stmdaeq	r0, {r1, r4, r6, r7, r8, sl}
     9f4:	080005d4 	stmdaeq	r0, {r2, r4, r6, r7, r8, sl}
     9f8:	047d0002 	ldrbteq	r0, [sp], #-2
     9fc:	080005d4 	stmdaeq	r0, {r2, r4, r6, r7, r8, sl}
     a00:	080005d6 	stmdaeq	r0, {r1, r2, r4, r6, r7, r8, sl}
     a04:	107d0002 	rsbsne	r0, sp, r2
     a08:	080005d6 	stmdaeq	r0, {r1, r2, r4, r6, r7, r8, sl}
     a0c:	0800063c 	stmdaeq	r0, {r2, r3, r4, r5, r9, sl}
     a10:	10770002 	rsbsne	r0, r7, r2
     a14:	0800063c 	stmdaeq	r0, {r2, r3, r4, r5, r9, sl}
     a18:	0800063e 	stmdaeq	r0, {r1, r2, r3, r4, r5, r9, sl}
     a1c:	04770002 	ldrbteq	r0, [r7], #-2
     a20:	0800063e 	stmdaeq	r0, {r1, r2, r3, r4, r5, r9, sl}
     a24:	08000640 	stmdaeq	r0, {r6, r9, sl}
     a28:	047d0002 	ldrbteq	r0, [sp], #-2
     a2c:	08000640 	stmdaeq	r0, {r6, r9, sl}
     a30:	08000650 	stmdaeq	r0, {r4, r6, r9, sl}
     a34:	007d0002 	rsbseq	r0, sp, r2
	...
     a40:	080005ac 	stmdaeq	r0, {r2, r3, r5, r7, r8, sl}
     a44:	080005ae 	stmdaeq	r0, {r1, r2, r3, r5, r7, r8, sl}
     a48:	007d0002 	rsbseq	r0, sp, r2
     a4c:	080005ae 	stmdaeq	r0, {r1, r2, r3, r5, r7, r8, sl}
     a50:	080005b0 	stmdaeq	r0, {r4, r5, r7, r8, sl}
     a54:	047d0002 	ldrbteq	r0, [sp], #-2
     a58:	080005b0 	stmdaeq	r0, {r4, r5, r7, r8, sl}
     a5c:	080005c2 	stmdaeq	r0, {r1, r6, r7, r8, sl}
     a60:	04770002 	ldrbteq	r0, [r7], #-2
     a64:	080005c2 	stmdaeq	r0, {r1, r6, r7, r8, sl}
     a68:	080005c4 	stmdaeq	r0, {r2, r6, r7, r8, sl}
     a6c:	047d0002 	ldrbteq	r0, [sp], #-2
     a70:	080005c4 	stmdaeq	r0, {r2, r6, r7, r8, sl}
     a74:	080005d0 	stmdaeq	r0, {r4, r6, r7, r8, sl}
     a78:	007d0002 	rsbseq	r0, sp, r2
	...
     a84:	08000650 	stmdaeq	r0, {r4, r6, r9, sl}
     a88:	08000652 	stmdaeq	r0, {r1, r4, r6, r9, sl}
     a8c:	007d0002 	rsbseq	r0, sp, r2
     a90:	08000652 	stmdaeq	r0, {r1, r4, r6, r9, sl}
     a94:	08000654 	stmdaeq	r0, {r2, r4, r6, r9, sl}
     a98:	087d0002 	ldmdaeq	sp!, {r1}^
     a9c:	08000654 	stmdaeq	r0, {r2, r4, r6, r9, sl}
     aa0:	08000656 	stmdaeq	r0, {r1, r2, r4, r6, r9, sl}
     aa4:	107d0002 	rsbsne	r0, sp, r2
     aa8:	08000656 	stmdaeq	r0, {r1, r2, r4, r6, r9, sl}
     aac:	0800069e 	stmdaeq	r0, {r1, r2, r3, r4, r7, r9, sl}
     ab0:	10770002 	rsbsne	r0, r7, r2
     ab4:	0800069e 	stmdaeq	r0, {r1, r2, r3, r4, r7, r9, sl}
     ab8:	080006a0 	stmdaeq	r0, {r5, r7, r9, sl}
     abc:	08770002 	ldmdaeq	r7!, {r1}^
     ac0:	080006a0 	stmdaeq	r0, {r5, r7, r9, sl}
     ac4:	080006b0 	stmdaeq	r0, {r4, r5, r7, r9, sl}
     ac8:	087d0002 	ldmdaeq	sp!, {r1}^
	...
     adc:	007d0002 	rsbseq	r0, sp, r2
	...
     ae8:	0c7d0002 	ldcleq	0, cr0, [sp], #-8
	...
     af4:	187d0002 	ldmdane	sp!, {r1}^
	...
     b00:	18770002 	ldmdane	r7!, {r1}^
	...
     b0c:	0c770002 	ldcleq	0, cr0, [r7], #-8
	...
     b18:	0c7d0002 	ldcleq	0, cr0, [sp], #-8
	...
     b2c:	007d0002 	rsbseq	r0, sp, r2
	...
     b38:	0c7d0002 	ldcleq	0, cr0, [sp], #-8
	...
     b44:	187d0002 	ldmdane	sp!, {r1}^
	...
     b50:	18770002 	ldmdane	r7!, {r1}^
	...
     b5c:	0c770002 	ldcleq	0, cr0, [r7], #-8
	...
     b68:	0c7d0002 	ldcleq	0, cr0, [sp], #-8
	...
     b7c:	007d0002 	rsbseq	r0, sp, r2
	...
     b88:	047d0002 	ldrbteq	r0, [sp], #-2
	...
     b94:	107d0002 	rsbsne	r0, sp, r2
	...
     ba0:	10770002 	rsbsne	r0, r7, r2
	...
     bac:	04770002 	ldrbteq	r0, [r7], #-2
	...
     bb8:	047d0002 	ldrbteq	r0, [sp], #-2
	...
     bc4:	007d0002 	rsbseq	r0, sp, r2
	...
     bd8:	007d0002 	rsbseq	r0, sp, r2
	...
     be4:	087d0002 	ldmdaeq	sp!, {r1}^
	...
     bf0:	107d0002 	rsbsne	r0, sp, r2
	...
     bfc:	10770002 	rsbsne	r0, r7, r2
	...
     c08:	08770002 	ldmdaeq	r7!, {r1}^
	...
     c14:	087d0002 	ldmdaeq	sp!, {r1}^
	...
     c28:	007d0002 	rsbseq	r0, sp, r2
	...
     c34:	087d0002 	ldmdaeq	sp!, {r1}^
	...
     c40:	107d0002 	rsbsne	r0, sp, r2
	...
     c4c:	10770002 	rsbsne	r0, r7, r2
	...
     c58:	08770002 	ldmdaeq	r7!, {r1}^
	...
     c64:	087d0002 	ldmdaeq	sp!, {r1}^
	...
     c78:	007d0002 	rsbseq	r0, sp, r2
	...
     c84:	047d0002 	ldrbteq	r0, [sp], #-2
	...
     c90:	107d0002 	rsbsne	r0, sp, r2
	...
     c9c:	10770002 	rsbsne	r0, r7, r2
	...
     ca8:	04770002 	ldrbteq	r0, [r7], #-2
	...
     cb4:	047d0002 	ldrbteq	r0, [sp], #-2
	...
     cc0:	007d0002 	rsbseq	r0, sp, r2
	...
     cd4:	007d0002 	rsbseq	r0, sp, r2
	...
     ce0:	087d0002 	ldmdaeq	sp!, {r1}^
	...
     cec:	187d0002 	ldmdane	sp!, {r1}^
	...
     cf8:	18770002 	ldmdane	r7!, {r1}^
	...
     d04:	08770002 	ldmdaeq	r7!, {r1}^
	...
     d10:	087d0002 	ldmdaeq	sp!, {r1}^
	...
     d24:	007d0002 	rsbseq	r0, sp, r2
	...
     d30:	087d0002 	ldmdaeq	sp!, {r1}^
	...
     d3c:	187d0002 	ldmdane	sp!, {r1}^
	...
     d48:	18770002 	ldmdane	r7!, {r1}^
	...
     d54:	08770002 	ldmdaeq	r7!, {r1}^
	...
     d60:	087d0002 	ldmdaeq	sp!, {r1}^
	...
     d74:	007d0002 	rsbseq	r0, sp, r2
	...
     d80:	047d0002 	ldrbteq	r0, [sp], #-2
	...
     d8c:	107d0002 	rsbsne	r0, sp, r2
	...
     d98:	10770002 	rsbsne	r0, r7, r2
	...
     da4:	04770002 	ldrbteq	r0, [r7], #-2
	...
     db0:	047d0002 	ldrbteq	r0, [sp], #-2
	...
     dbc:	007d0002 	rsbseq	r0, sp, r2
	...
     dd0:	007d0002 	rsbseq	r0, sp, r2
	...
     ddc:	087d0002 	ldmdaeq	sp!, {r1}^
	...
     de8:	187d0002 	ldmdane	sp!, {r1}^
	...
     df4:	18770002 	ldmdane	r7!, {r1}^
	...
     e00:	08770002 	ldmdaeq	r7!, {r1}^
	...
     e0c:	087d0002 	ldmdaeq	sp!, {r1}^
	...
     e20:	007d0002 	rsbseq	r0, sp, r2
	...
     e2c:	087d0002 	ldmdaeq	sp!, {r1}^
	...
     e38:	187d0002 	ldmdane	sp!, {r1}^
	...
     e44:	18770002 	ldmdane	r7!, {r1}^
	...
     e50:	08770002 	ldmdaeq	r7!, {r1}^
	...
     e5c:	087d0002 	ldmdaeq	sp!, {r1}^
	...
     e70:	007d0002 	rsbseq	r0, sp, r2
	...
     e7c:	047d0002 	ldrbteq	r0, [sp], #-2
	...
     e88:	107d0002 	rsbsne	r0, sp, r2
	...
     e94:	10770002 	rsbsne	r0, r7, r2
	...
     ea0:	04770002 	ldrbteq	r0, [r7], #-2
	...
     eac:	047d0002 	ldrbteq	r0, [sp], #-2
	...
     eb8:	007d0002 	rsbseq	r0, sp, r2
	...
     ecc:	007d0002 	rsbseq	r0, sp, r2
	...
     ed8:	087d0002 	ldmdaeq	sp!, {r1}^
	...
     ee4:	187d0002 	ldmdane	sp!, {r1}^
	...
     ef0:	18770002 	ldmdane	r7!, {r1}^
	...
     efc:	08770002 	ldmdaeq	r7!, {r1}^
	...
     f08:	087d0002 	ldmdaeq	sp!, {r1}^
	...
     f1c:	007d0002 	rsbseq	r0, sp, r2
	...
     f28:	087d0002 	ldmdaeq	sp!, {r1}^
	...
     f34:	187d0002 	ldmdane	sp!, {r1}^
	...
     f40:	18770002 	ldmdane	r7!, {r1}^
	...
     f4c:	08770002 	ldmdaeq	r7!, {r1}^
	...
     f58:	087d0002 	ldmdaeq	sp!, {r1}^
	...
     f6c:	007d0002 	rsbseq	r0, sp, r2
	...
     f78:	047d0002 	ldrbteq	r0, [sp], #-2
	...
     f84:	187d0002 	ldmdane	sp!, {r1}^
	...
     f90:	18770002 	ldmdane	r7!, {r1}^
	...
     f9c:	04770002 	ldrbteq	r0, [r7], #-2
	...
     fa8:	047d0002 	ldrbteq	r0, [sp], #-2
	...
     fb4:	007d0002 	rsbseq	r0, sp, r2
	...
     fc8:	007d0002 	rsbseq	r0, sp, r2
	...
     fd4:	047d0002 	ldrbteq	r0, [sp], #-2
	...
     fe0:	04770002 	ldrbteq	r0, [r7], #-2
	...
     fec:	047d0002 	ldrbteq	r0, [sp], #-2
	...
     ff8:	007d0002 	rsbseq	r0, sp, r2
	...
    100c:	007d0002 	rsbseq	r0, sp, r2
	...
    1018:	047d0002 	ldrbteq	r0, [sp], #-2
	...
    1024:	187d0002 	ldmdane	sp!, {r1}^
	...
    1030:	18770002 	ldmdane	r7!, {r1}^
	...
    103c:	04770002 	ldrbteq	r0, [r7], #-2
	...
    1048:	047d0002 	ldrbteq	r0, [sp], #-2
	...
    1054:	007d0002 	rsbseq	r0, sp, r2
	...
    1068:	007d0002 	rsbseq	r0, sp, r2
	...
    1074:	087d0002 	ldmdaeq	sp!, {r1}^
	...
    1080:	187d0002 	ldmdane	sp!, {r1}^
	...
    108c:	18770002 	ldmdane	r7!, {r1}^
	...
    1098:	08770002 	ldmdaeq	r7!, {r1}^
	...
    10a4:	087d0002 	ldmdaeq	sp!, {r1}^
	...
    10b8:	007d0002 	rsbseq	r0, sp, r2
	...
    10c4:	087d0002 	ldmdaeq	sp!, {r1}^
	...
    10d0:	187d0002 	ldmdane	sp!, {r1}^
	...
    10dc:	18770002 	ldmdane	r7!, {r1}^
	...
    10e8:	08770002 	ldmdaeq	r7!, {r1}^
	...
    10f4:	087d0002 	ldmdaeq	sp!, {r1}^
	...
    1108:	007d0002 	rsbseq	r0, sp, r2
	...
    1114:	047d0002 	ldrbteq	r0, [sp], #-2
	...
    1120:	187d0002 	ldmdane	sp!, {r1}^
	...
    112c:	18770002 	ldmdane	r7!, {r1}^
	...
    1138:	04770002 	ldrbteq	r0, [r7], #-2
	...
    1144:	047d0002 	ldrbteq	r0, [sp], #-2
	...
    1150:	007d0002 	rsbseq	r0, sp, r2
	...
    115c:	08000720 	stmdaeq	r0, {r5, r8, r9, sl}
    1160:	08000722 	stmdaeq	r0, {r1, r5, r8, r9, sl}
    1164:	007d0002 	rsbseq	r0, sp, r2
    1168:	08000722 	stmdaeq	r0, {r1, r5, r8, r9, sl}
    116c:	08000724 	stmdaeq	r0, {r2, r5, r8, r9, sl}
    1170:	087d0002 	ldmdaeq	sp!, {r1}^
    1174:	08000724 	stmdaeq	r0, {r2, r5, r8, r9, sl}
    1178:	0800075c 	stmdaeq	r0, {r2, r3, r4, r6, r8, r9, sl}
    117c:	08770002 	ldmdaeq	r7!, {r1}^
	...
    1188:	080006e8 	stmdaeq	r0, {r3, r5, r6, r7, r9, sl}
    118c:	080006ea 	stmdaeq	r0, {r1, r3, r5, r6, r7, r9, sl}
    1190:	007d0002 	rsbseq	r0, sp, r2
    1194:	080006ea 	stmdaeq	r0, {r1, r3, r5, r6, r7, r9, sl}
    1198:	080006ec 	stmdaeq	r0, {r2, r3, r5, r6, r7, r9, sl}
    119c:	087d0002 	ldmdaeq	sp!, {r1}^
    11a0:	080006ec 	stmdaeq	r0, {r2, r3, r5, r6, r7, r9, sl}
    11a4:	08000720 	stmdaeq	r0, {r5, r8, r9, sl}
    11a8:	08770002 	ldmdaeq	r7!, {r1}^
	...
    11b4:	080006b0 	stmdaeq	r0, {r4, r5, r7, r9, sl}
    11b8:	080006b2 	stmdaeq	r0, {r1, r4, r5, r7, r9, sl}
    11bc:	007d0002 	rsbseq	r0, sp, r2
    11c0:	080006b2 	stmdaeq	r0, {r1, r4, r5, r7, r9, sl}
    11c4:	080006b4 	stmdaeq	r0, {r2, r4, r5, r7, r9, sl}
    11c8:	087d0002 	ldmdaeq	sp!, {r1}^
    11cc:	080006b4 	stmdaeq	r0, {r2, r4, r5, r7, r9, sl}
    11d0:	080006e8 	stmdaeq	r0, {r3, r5, r6, r7, r9, sl}
    11d4:	08770002 	ldmdaeq	r7!, {r1}^
	...
    11e8:	007d0002 	rsbseq	r0, sp, r2
	...
    11f4:	087d0002 	ldmdaeq	sp!, {r1}^
	...
    1200:	107d0002 	rsbsne	r0, sp, r2
	...
    120c:	10770002 	rsbsne	r0, r7, r2
	...
    1218:	08770002 	ldmdaeq	r7!, {r1}^
	...
    1224:	087d0002 	ldmdaeq	sp!, {r1}^
	...
    1238:	007d0002 	rsbseq	r0, sp, r2
	...
    1244:	107d0002 	rsbsne	r0, sp, r2
	...
    1250:	387d0002 	ldmdacc	sp!, {r1}^
	...
    125c:	38770002 	ldmdacc	r7!, {r1}^
	...
    1268:	10770002 	rsbsne	r0, r7, r2
	...
    1274:	107d0002 	rsbsne	r0, sp, r2
	...
    1288:	007d0002 	rsbseq	r0, sp, r2
	...
    1294:	047d0002 	ldrbteq	r0, [sp], #-2
	...
    12a0:	107d0002 	rsbsne	r0, sp, r2
	...
    12ac:	10770002 	rsbsne	r0, r7, r2
	...
    12b8:	04770002 	ldrbteq	r0, [r7], #-2
	...
    12c4:	047d0002 	ldrbteq	r0, [sp], #-2
	...
    12d0:	007d0002 	rsbseq	r0, sp, r2
	...
    12e4:	007d0002 	rsbseq	r0, sp, r2
	...
    12f0:	047d0002 	ldrbteq	r0, [sp], #-2
	...
    12fc:	107d0002 	rsbsne	r0, sp, r2
	...
    1308:	10770002 	rsbsne	r0, r7, r2
	...
    1314:	04770002 	ldrbteq	r0, [r7], #-2
	...
    1320:	047d0002 	ldrbteq	r0, [sp], #-2
	...
    132c:	007d0002 	rsbseq	r0, sp, r2
	...
    1340:	007d0002 	rsbseq	r0, sp, r2
	...
    134c:	047d0002 	ldrbteq	r0, [sp], #-2
	...
    1358:	107d0002 	rsbsne	r0, sp, r2
	...
    1364:	10770002 	rsbsne	r0, r7, r2
	...
    1370:	04770002 	ldrbteq	r0, [r7], #-2
	...
    137c:	047d0002 	ldrbteq	r0, [sp], #-2
	...
    1388:	007d0002 	rsbseq	r0, sp, r2
	...
    139c:	007d0002 	rsbseq	r0, sp, r2
	...
    13a8:	047d0002 	ldrbteq	r0, [sp], #-2
	...
    13b4:	107d0002 	rsbsne	r0, sp, r2
	...
    13c0:	10770002 	rsbsne	r0, r7, r2
	...
    13cc:	04770002 	ldrbteq	r0, [r7], #-2
	...
    13d8:	047d0002 	ldrbteq	r0, [sp], #-2
	...
    13e4:	007d0002 	rsbseq	r0, sp, r2
	...
    13f8:	007d0002 	rsbseq	r0, sp, r2
	...
    1404:	087d0002 	ldmdaeq	sp!, {r1}^
	...
    1410:	187d0002 	ldmdane	sp!, {r1}^
	...
    141c:	18770002 	ldmdane	r7!, {r1}^
	...
    1428:	08770002 	ldmdaeq	r7!, {r1}^
	...
    1434:	087d0002 	ldmdaeq	sp!, {r1}^
	...
    1440:	08000820 	stmdaeq	r0, {r5, fp}
    1444:	08000822 	stmdaeq	r0, {r1, r5, fp}
    1448:	007d0002 	rsbseq	r0, sp, r2
    144c:	08000822 	stmdaeq	r0, {r1, r5, fp}
    1450:	08000824 	stmdaeq	r0, {r2, r5, fp}
    1454:	047d0002 	ldrbteq	r0, [sp], #-2
    1458:	08000824 	stmdaeq	r0, {r2, r5, fp}
    145c:	0800082e 	stmdaeq	r0, {r1, r2, r3, r5, fp}
    1460:	04770002 	ldrbteq	r0, [r7], #-2
    1464:	0800082e 	stmdaeq	r0, {r1, r2, r3, r5, fp}
    1468:	08000830 	stmdaeq	r0, {r4, r5, fp}
    146c:	047d0002 	ldrbteq	r0, [sp], #-2
    1470:	08000830 	stmdaeq	r0, {r4, r5, fp}
    1474:	08000838 	stmdaeq	r0, {r3, r4, r5, fp}
    1478:	007d0002 	rsbseq	r0, sp, r2
	...
    1484:	080007f4 	stmdaeq	r0, {r2, r4, r5, r6, r7, r8, r9, sl}
    1488:	080007f6 	stmdaeq	r0, {r1, r2, r4, r5, r6, r7, r8, r9, sl}
    148c:	007d0002 	rsbseq	r0, sp, r2
    1490:	080007f6 	stmdaeq	r0, {r1, r2, r4, r5, r6, r7, r8, r9, sl}
    1494:	080007f8 	stmdaeq	r0, {r3, r4, r5, r6, r7, r8, r9, sl}
    1498:	087d0002 	ldmdaeq	sp!, {r1}^
    149c:	080007f8 	stmdaeq	r0, {r3, r4, r5, r6, r7, r8, r9, sl}
    14a0:	080007fa 	stmdaeq	r0, {r1, r3, r4, r5, r6, r7, r8, r9, sl}
    14a4:	187d0002 	ldmdane	sp!, {r1}^
    14a8:	080007fa 	stmdaeq	r0, {r1, r3, r4, r5, r6, r7, r8, r9, sl}
    14ac:	0800081c 	stmdaeq	r0, {r2, r3, r4, fp}
    14b0:	18770002 	ldmdane	r7!, {r1}^
    14b4:	0800081c 	stmdaeq	r0, {r2, r3, r4, fp}
    14b8:	0800081e 	stmdaeq	r0, {r1, r2, r3, r4, fp}
    14bc:	08770002 	ldmdaeq	r7!, {r1}^
    14c0:	0800081e 	stmdaeq	r0, {r1, r2, r3, r4, fp}
    14c4:	08000820 	stmdaeq	r0, {r5, fp}
    14c8:	087d0002 	ldmdaeq	sp!, {r1}^
	...
    14d4:	080007c8 	stmdaeq	r0, {r3, r6, r7, r8, r9, sl}
    14d8:	080007ca 	stmdaeq	r0, {r1, r3, r6, r7, r8, r9, sl}
    14dc:	007d0002 	rsbseq	r0, sp, r2
    14e0:	080007ca 	stmdaeq	r0, {r1, r3, r6, r7, r8, r9, sl}
    14e4:	080007cc 	stmdaeq	r0, {r2, r3, r6, r7, r8, r9, sl}
    14e8:	087d0002 	ldmdaeq	sp!, {r1}^
    14ec:	080007cc 	stmdaeq	r0, {r2, r3, r6, r7, r8, r9, sl}
    14f0:	080007e0 	stmdaeq	r0, {r5, r6, r7, r8, r9, sl}
    14f4:	08770002 	ldmdaeq	r7!, {r1}^
	...
    1500:	0800075c 	stmdaeq	r0, {r2, r3, r4, r6, r8, r9, sl}
    1504:	0800075e 	stmdaeq	r0, {r1, r2, r3, r4, r6, r8, r9, sl}
    1508:	007d0002 	rsbseq	r0, sp, r2
    150c:	0800075e 	stmdaeq	r0, {r1, r2, r3, r4, r6, r8, r9, sl}
    1510:	08000760 	stmdaeq	r0, {r5, r6, r8, r9, sl}
    1514:	087d0002 	ldmdaeq	sp!, {r1}^
    1518:	08000760 	stmdaeq	r0, {r5, r6, r8, r9, sl}
    151c:	080007c8 	stmdaeq	r0, {r3, r6, r7, r8, r9, sl}
    1520:	08770002 	ldmdaeq	r7!, {r1}^
	...
    1534:	007d0002 	rsbseq	r0, sp, r2
	...
    1540:	047d0002 	ldrbteq	r0, [sp], #-2
	...
    154c:	187d0002 	ldmdane	sp!, {r1}^
	...
    1558:	18770002 	ldmdane	r7!, {r1}^
	...
    1564:	04770002 	ldrbteq	r0, [r7], #-2
	...
    1570:	047d0002 	ldrbteq	r0, [sp], #-2
	...
    157c:	007d0002 	rsbseq	r0, sp, r2
	...

Disassembly of section .debug_aranges:

00000000 <.debug_aranges>:
   0:	0000001c 	andeq	r0, r0, ip, lsl r0
   4:	00000002 	andeq	r0, r0, r2
   8:	00040000 	andeq	r0, r4, r0
   c:	00000000 	andeq	r0, r0, r0
  10:	08000170 	stmdaeq	r0, {r4, r5, r6, r8}
  14:	0000007c 	andeq	r0, r0, ip, ror r0
	...
  20:	000000c4 	andeq	r0, r0, r4, asr #1
  24:	018d0002 	orreq	r0, sp, r2
  28:	00040000 	andeq	r0, r4, r0
  2c:	00000000 	andeq	r0, r0, r0
  30:	080001ec 	stmdaeq	r0, {r2, r3, r5, r6, r7, r8}
  34:	000000ac 	andeq	r0, r0, ip, lsr #1
  38:	08000298 	stmdaeq	r0, {r3, r4, r7, r9}
  3c:	0000002c 	andeq	r0, r0, ip, lsr #32
  40:	00000000 	andeq	r0, r0, r0
  44:	00000030 	andeq	r0, r0, r0, lsr r0
  48:	00000000 	andeq	r0, r0, r0
  4c:	0000002c 	andeq	r0, r0, ip, lsr #32
  50:	00000000 	andeq	r0, r0, r0
  54:	00000024 	andeq	r0, r0, r4, lsr #32
  58:	080002c4 	stmdaeq	r0, {r2, r6, r7, r9}
  5c:	00000024 	andeq	r0, r0, r4, lsr #32
  60:	080002e8 	stmdaeq	r0, {r3, r5, r6, r7, r9}
  64:	00000024 	andeq	r0, r0, r4, lsr #32
  68:	0800030c 	stmdaeq	r0, {r2, r3, r8, r9}
  6c:	00000024 	andeq	r0, r0, r4, lsr #32
  70:	08000330 	stmdaeq	r0, {r4, r5, r8, r9}
  74:	00000024 	andeq	r0, r0, r4, lsr #32
  78:	08000354 	stmdaeq	r0, {r2, r4, r6, r8, r9}
  7c:	00000024 	andeq	r0, r0, r4, lsr #32
  80:	08000378 	stmdaeq	r0, {r3, r4, r5, r6, r8, r9}
  84:	00000024 	andeq	r0, r0, r4, lsr #32
  88:	00000000 	andeq	r0, r0, r0
  8c:	00000024 	andeq	r0, r0, r4, lsr #32
  90:	00000000 	andeq	r0, r0, r0
  94:	00000024 	andeq	r0, r0, r4, lsr #32
  98:	00000000 	andeq	r0, r0, r0
  9c:	00000024 	andeq	r0, r0, r4, lsr #32
  a0:	00000000 	andeq	r0, r0, r0
  a4:	00000024 	andeq	r0, r0, r4, lsr #32
  a8:	00000000 	andeq	r0, r0, r0
  ac:	00000024 	andeq	r0, r0, r4, lsr #32
  b0:	00000000 	andeq	r0, r0, r0
  b4:	00000024 	andeq	r0, r0, r4, lsr #32
  b8:	00000000 	andeq	r0, r0, r0
  bc:	00000024 	andeq	r0, r0, r4, lsr #32
  c0:	00000000 	andeq	r0, r0, r0
  c4:	00000024 	andeq	r0, r0, r4, lsr #32
  c8:	00000000 	andeq	r0, r0, r0
  cc:	00000024 	andeq	r0, r0, r4, lsr #32
  d0:	00000000 	andeq	r0, r0, r0
  d4:	00000024 	andeq	r0, r0, r4, lsr #32
  d8:	00000000 	andeq	r0, r0, r0
  dc:	00000024 	andeq	r0, r0, r4, lsr #32
	...
  e8:	0000004c 	andeq	r0, r0, ip, asr #32
  ec:	05a20002 	streq	r0, [r2, #2]!
  f0:	00040000 	andeq	r0, r4, r0
  f4:	00000000 	andeq	r0, r0, r0
  f8:	0800039c 	stmdaeq	r0, {r2, r3, r4, r7, r8, r9}
  fc:	0000018c 	andeq	r0, r0, ip, lsl #3
 100:	00000000 	andeq	r0, r0, r0
 104:	000000e8 	andeq	r0, r0, r8, ror #1
 108:	00000000 	andeq	r0, r0, r0
 10c:	000000ac 	andeq	r0, r0, ip, lsr #1
 110:	00000000 	andeq	r0, r0, r0
 114:	00000098 	muleq	r0, r8, r0
 118:	00000000 	andeq	r0, r0, r0
 11c:	00000078 	andeq	r0, r0, r8, ror r0
 120:	00000000 	andeq	r0, r0, r0
 124:	00000078 	andeq	r0, r0, r8, ror r0
 128:	00000000 	andeq	r0, r0, r0
 12c:	000000ec 	andeq	r0, r0, ip, ror #1
	...
 138:	0000003c 	andeq	r0, r0, ip, lsr r0
 13c:	09410002 	stmdbeq	r1, {r1}^
 140:	00040000 	andeq	r0, r4, r0
 144:	00000000 	andeq	r0, r0, r0
 148:	08000528 	stmdaeq	r0, {r3, r5, r8, sl}
 14c:	00000058 	andeq	r0, r0, r8, asr r0
 150:	00000000 	andeq	r0, r0, r0
 154:	00000058 	andeq	r0, r0, r8, asr r0
 158:	00000000 	andeq	r0, r0, r0
 15c:	00000058 	andeq	r0, r0, r8, asr r0
 160:	00000000 	andeq	r0, r0, r0
 164:	0000005c 	andeq	r0, r0, ip, asr r0
 168:	00000000 	andeq	r0, r0, r0
 16c:	00000058 	andeq	r0, r0, r8, asr r0
	...
 178:	0000001c 	andeq	r0, r0, ip, lsl r0
 17c:	0ad80002 	beq	ff60018c <_estack+0xdf5fd98c>
 180:	00040000 	andeq	r0, r4, r0
 184:	00000000 	andeq	r0, r0, r0
 188:	08000580 	stmdaeq	r0, {r7, r8, sl}
 18c:	0000002c 	andeq	r0, r0, ip, lsr #32
	...
 198:	0000002c 	andeq	r0, r0, ip, lsr #32
 19c:	0b630002 	bleq	18c01ac <_Min_Stack_Size+0x18bfdac>
 1a0:	00040000 	andeq	r0, r4, r0
 1a4:	00000000 	andeq	r0, r0, r0
 1a8:	080005ac 	stmdaeq	r0, {r2, r3, r5, r7, r8, sl}
 1ac:	00000024 	andeq	r0, r0, r4, lsr #32
 1b0:	080005d0 	stmdaeq	r0, {r4, r6, r7, r8, sl}
 1b4:	00000080 	andeq	r0, r0, r0, lsl #1
 1b8:	00000000 	andeq	r0, r0, r0
 1bc:	00000084 	andeq	r0, r0, r4, lsl #1
	...
 1c8:	000000a4 	andeq	r0, r0, r4, lsr #1
 1cc:	0c3f0002 	ldceq	0, cr0, [pc], #-8	; 1cc <_Min_Heap_Size-0x34>
 1d0:	00040000 	andeq	r0, r4, r0
	...
 1dc:	00000028 	andeq	r0, r0, r8, lsr #32
 1e0:	00000000 	andeq	r0, r0, r0
 1e4:	00000020 	andeq	r0, r0, r0, lsr #32
 1e8:	00000000 	andeq	r0, r0, r0
 1ec:	00000060 	andeq	r0, r0, r0, rrx
 1f0:	00000000 	andeq	r0, r0, r0
 1f4:	00000068 	andeq	r0, r0, r8, rrx
 1f8:	00000000 	andeq	r0, r0, r0
 1fc:	0000006c 	andeq	r0, r0, ip, rrx
 200:	00000000 	andeq	r0, r0, r0
 204:	00000060 	andeq	r0, r0, r0, rrx
 208:	00000000 	andeq	r0, r0, r0
 20c:	00000064 	andeq	r0, r0, r4, rrx
 210:	00000000 	andeq	r0, r0, r0
 214:	00000064 	andeq	r0, r0, r4, rrx
 218:	00000000 	andeq	r0, r0, r0
 21c:	00000060 	andeq	r0, r0, r0, rrx
 220:	00000000 	andeq	r0, r0, r0
 224:	00000064 	andeq	r0, r0, r4, rrx
 228:	00000000 	andeq	r0, r0, r0
 22c:	00000064 	andeq	r0, r0, r4, rrx
 230:	00000000 	andeq	r0, r0, r0
 234:	00000028 	andeq	r0, r0, r8, lsr #32
 238:	00000000 	andeq	r0, r0, r0
 23c:	0000004c 	andeq	r0, r0, ip, asr #32
 240:	00000000 	andeq	r0, r0, r0
 244:	00000050 	andeq	r0, r0, r0, asr r0
 248:	00000000 	andeq	r0, r0, r0
 24c:	00000020 	andeq	r0, r0, r0, lsr #32
 250:	00000000 	andeq	r0, r0, r0
 254:	00000038 	andeq	r0, r0, r8, lsr r0
 258:	00000000 	andeq	r0, r0, r0
 25c:	00000038 	andeq	r0, r0, r8, lsr r0
 260:	08000650 	stmdaeq	r0, {r4, r6, r9, sl}
 264:	00000060 	andeq	r0, r0, r0, rrx
	...
 270:	0000007c 	andeq	r0, r0, ip, ror r0
 274:	11210002 			; <UNDEFINED> instruction: 0x11210002
 278:	00040000 	andeq	r0, r4, r0
	...
 284:	000000f0 	strdeq	r0, [r0], -r0	; <UNPREDICTABLE>
 288:	00000000 	andeq	r0, r0, r0
 28c:	000000b0 	strheq	r0, [r0], -r0	; <UNPREDICTABLE>
 290:	00000000 	andeq	r0, r0, r0
 294:	00000060 	andeq	r0, r0, r0, rrx
 298:	00000000 	andeq	r0, r0, r0
 29c:	00000220 	andeq	r0, r0, r0, lsr #4
 2a0:	00000000 	andeq	r0, r0, r0
 2a4:	00000014 	andeq	r0, r0, r4, lsl r0
 2a8:	00000000 	andeq	r0, r0, r0
 2ac:	000000b8 	strheq	r0, [r0], -r8
 2b0:	00000000 	andeq	r0, r0, r0
 2b4:	000001fc 	strdeq	r0, [r0], -ip
 2b8:	080006b0 	stmdaeq	r0, {r4, r5, r7, r9, sl}
 2bc:	00000038 	andeq	r0, r0, r8, lsr r0
 2c0:	080006e8 	stmdaeq	r0, {r3, r5, r6, r7, r9, sl}
 2c4:	00000038 	andeq	r0, r0, r8, lsr r0
 2c8:	08000720 	stmdaeq	r0, {r5, r8, r9, sl}
 2cc:	0000003c 	andeq	r0, r0, ip, lsr r0
 2d0:	00000000 	andeq	r0, r0, r0
 2d4:	0000004c 	andeq	r0, r0, ip, asr #32
 2d8:	00000000 	andeq	r0, r0, r0
 2dc:	00000040 	andeq	r0, r0, r0, asr #32
 2e0:	00000000 	andeq	r0, r0, r0
 2e4:	00000042 	andeq	r0, r0, r2, asr #32
	...
 2f0:	00000044 	andeq	r0, r0, r4, asr #32
 2f4:	18690002 	stmdane	r9!, {r1}^
 2f8:	00040000 	andeq	r0, r4, r0
	...
 304:	00000038 	andeq	r0, r0, r8, lsr r0
 308:	0800075c 	stmdaeq	r0, {r2, r3, r4, r6, r8, r9, sl}
 30c:	0000006c 	andeq	r0, r0, ip, rrx
 310:	080007c8 	stmdaeq	r0, {r3, r6, r7, r8, r9, sl}
 314:	00000018 	andeq	r0, r0, r8, lsl r0
 318:	080007e0 	stmdaeq	r0, {r5, r6, r7, r8, r9, sl}
 31c:	00000014 	andeq	r0, r0, r4, lsl r0
 320:	080007f4 	stmdaeq	r0, {r2, r4, r5, r6, r7, r8, r9, sl}
 324:	0000002c 	andeq	r0, r0, ip, lsr #32
 328:	08000820 	stmdaeq	r0, {r5, fp}
 32c:	00000018 	andeq	r0, r0, r8, lsl r0
	...
 338:	00000024 	andeq	r0, r0, r4, lsr #32
 33c:	1af30002 	bne	ffcc034c <_estack+0xdfcbdb4c>
 340:	00040000 	andeq	r0, r4, r0
 344:	00000000 	andeq	r0, r0, r0
 348:	08000838 	stmdaeq	r0, {r3, r4, r5, fp}
 34c:	00000050 	andeq	r0, r0, r0, asr r0
 350:	08000888 	stmdaeq	r0, {r3, r7, fp}
 354:	00000002 	andeq	r0, r0, r2
	...

Disassembly of section .debug_ranges:

00000000 <.debug_ranges>:
   0:	08000170 	stmdaeq	r0, {r4, r5, r6, r8}
   4:	080001ec 	stmdaeq	r0, {r2, r3, r5, r6, r7, r8}
	...
  10:	080001ec 	stmdaeq	r0, {r2, r3, r5, r6, r7, r8}
  14:	08000298 	stmdaeq	r0, {r3, r4, r7, r9}
  18:	08000298 	stmdaeq	r0, {r3, r4, r7, r9}
  1c:	080002c4 	stmdaeq	r0, {r2, r6, r7, r9}
  20:	00000001 	andeq	r0, r0, r1
  24:	00000001 	andeq	r0, r0, r1
  28:	00000001 	andeq	r0, r0, r1
  2c:	00000001 	andeq	r0, r0, r1
  30:	00000001 	andeq	r0, r0, r1
  34:	00000001 	andeq	r0, r0, r1
  38:	080002c4 	stmdaeq	r0, {r2, r6, r7, r9}
  3c:	080002e8 	stmdaeq	r0, {r3, r5, r6, r7, r9}
  40:	080002e8 	stmdaeq	r0, {r3, r5, r6, r7, r9}
  44:	0800030c 	stmdaeq	r0, {r2, r3, r8, r9}
  48:	0800030c 	stmdaeq	r0, {r2, r3, r8, r9}
  4c:	08000330 	stmdaeq	r0, {r4, r5, r8, r9}
  50:	08000330 	stmdaeq	r0, {r4, r5, r8, r9}
  54:	08000354 	stmdaeq	r0, {r2, r4, r6, r8, r9}
  58:	08000354 	stmdaeq	r0, {r2, r4, r6, r8, r9}
  5c:	08000378 	stmdaeq	r0, {r3, r4, r5, r6, r8, r9}
  60:	08000378 	stmdaeq	r0, {r3, r4, r5, r6, r8, r9}
  64:	0800039c 	stmdaeq	r0, {r2, r3, r4, r7, r8, r9}
  68:	00000001 	andeq	r0, r0, r1
  6c:	00000001 	andeq	r0, r0, r1
  70:	00000001 	andeq	r0, r0, r1
  74:	00000001 	andeq	r0, r0, r1
  78:	00000001 	andeq	r0, r0, r1
  7c:	00000001 	andeq	r0, r0, r1
  80:	00000001 	andeq	r0, r0, r1
  84:	00000001 	andeq	r0, r0, r1
  88:	00000001 	andeq	r0, r0, r1
  8c:	00000001 	andeq	r0, r0, r1
  90:	00000001 	andeq	r0, r0, r1
  94:	00000001 	andeq	r0, r0, r1
  98:	00000001 	andeq	r0, r0, r1
  9c:	00000001 	andeq	r0, r0, r1
  a0:	00000001 	andeq	r0, r0, r1
  a4:	00000001 	andeq	r0, r0, r1
  a8:	00000001 	andeq	r0, r0, r1
  ac:	00000001 	andeq	r0, r0, r1
  b0:	00000001 	andeq	r0, r0, r1
  b4:	00000001 	andeq	r0, r0, r1
  b8:	00000001 	andeq	r0, r0, r1
  bc:	00000001 	andeq	r0, r0, r1
	...
  c8:	0800039c 	stmdaeq	r0, {r2, r3, r4, r7, r8, r9}
  cc:	08000528 	stmdaeq	r0, {r3, r5, r8, sl}
  d0:	00000001 	andeq	r0, r0, r1
  d4:	00000001 	andeq	r0, r0, r1
  d8:	00000001 	andeq	r0, r0, r1
  dc:	00000001 	andeq	r0, r0, r1
  e0:	00000001 	andeq	r0, r0, r1
  e4:	00000001 	andeq	r0, r0, r1
  e8:	00000001 	andeq	r0, r0, r1
  ec:	00000001 	andeq	r0, r0, r1
  f0:	00000001 	andeq	r0, r0, r1
  f4:	00000001 	andeq	r0, r0, r1
  f8:	00000001 	andeq	r0, r0, r1
  fc:	00000001 	andeq	r0, r0, r1
	...
 108:	08000528 	stmdaeq	r0, {r3, r5, r8, sl}
 10c:	08000580 	stmdaeq	r0, {r7, r8, sl}
 110:	00000001 	andeq	r0, r0, r1
 114:	00000001 	andeq	r0, r0, r1
 118:	00000001 	andeq	r0, r0, r1
 11c:	00000001 	andeq	r0, r0, r1
 120:	00000001 	andeq	r0, r0, r1
 124:	00000001 	andeq	r0, r0, r1
 128:	00000001 	andeq	r0, r0, r1
 12c:	00000001 	andeq	r0, r0, r1
	...
 138:	08000580 	stmdaeq	r0, {r7, r8, sl}
 13c:	080005ac 	stmdaeq	r0, {r2, r3, r5, r7, r8, sl}
	...
 148:	080005ac 	stmdaeq	r0, {r2, r3, r5, r7, r8, sl}
 14c:	080005d0 	stmdaeq	r0, {r4, r6, r7, r8, sl}
 150:	080005d0 	stmdaeq	r0, {r4, r6, r7, r8, sl}
 154:	08000650 	stmdaeq	r0, {r4, r6, r9, sl}
 158:	00000001 	andeq	r0, r0, r1
 15c:	00000001 	andeq	r0, r0, r1
	...
 168:	00000001 	andeq	r0, r0, r1
 16c:	00000001 	andeq	r0, r0, r1
 170:	00000001 	andeq	r0, r0, r1
 174:	00000001 	andeq	r0, r0, r1
 178:	00000001 	andeq	r0, r0, r1
 17c:	00000001 	andeq	r0, r0, r1
 180:	00000001 	andeq	r0, r0, r1
 184:	00000001 	andeq	r0, r0, r1
 188:	00000001 	andeq	r0, r0, r1
 18c:	00000001 	andeq	r0, r0, r1
 190:	00000001 	andeq	r0, r0, r1
 194:	00000001 	andeq	r0, r0, r1
 198:	00000001 	andeq	r0, r0, r1
 19c:	00000001 	andeq	r0, r0, r1
 1a0:	00000001 	andeq	r0, r0, r1
 1a4:	00000001 	andeq	r0, r0, r1
 1a8:	00000001 	andeq	r0, r0, r1
 1ac:	00000001 	andeq	r0, r0, r1
 1b0:	00000001 	andeq	r0, r0, r1
 1b4:	00000001 	andeq	r0, r0, r1
 1b8:	00000001 	andeq	r0, r0, r1
 1bc:	00000001 	andeq	r0, r0, r1
 1c0:	00000001 	andeq	r0, r0, r1
 1c4:	00000001 	andeq	r0, r0, r1
 1c8:	00000001 	andeq	r0, r0, r1
 1cc:	00000001 	andeq	r0, r0, r1
 1d0:	00000001 	andeq	r0, r0, r1
 1d4:	00000001 	andeq	r0, r0, r1
 1d8:	00000001 	andeq	r0, r0, r1
 1dc:	00000001 	andeq	r0, r0, r1
 1e0:	00000001 	andeq	r0, r0, r1
 1e4:	00000001 	andeq	r0, r0, r1
 1e8:	00000001 	andeq	r0, r0, r1
 1ec:	00000001 	andeq	r0, r0, r1
 1f0:	08000650 	stmdaeq	r0, {r4, r6, r9, sl}
 1f4:	080006b0 	stmdaeq	r0, {r4, r5, r7, r9, sl}
	...
 200:	00000001 	andeq	r0, r0, r1
 204:	00000001 	andeq	r0, r0, r1
 208:	00000001 	andeq	r0, r0, r1
 20c:	00000001 	andeq	r0, r0, r1
 210:	00000001 	andeq	r0, r0, r1
 214:	00000001 	andeq	r0, r0, r1
 218:	00000001 	andeq	r0, r0, r1
 21c:	00000001 	andeq	r0, r0, r1
 220:	00000001 	andeq	r0, r0, r1
 224:	00000001 	andeq	r0, r0, r1
 228:	00000001 	andeq	r0, r0, r1
 22c:	00000001 	andeq	r0, r0, r1
 230:	00000001 	andeq	r0, r0, r1
 234:	00000001 	andeq	r0, r0, r1
 238:	080006b0 	stmdaeq	r0, {r4, r5, r7, r9, sl}
 23c:	080006e8 	stmdaeq	r0, {r3, r5, r6, r7, r9, sl}
 240:	080006e8 	stmdaeq	r0, {r3, r5, r6, r7, r9, sl}
 244:	08000720 	stmdaeq	r0, {r5, r8, r9, sl}
 248:	08000720 	stmdaeq	r0, {r5, r8, r9, sl}
 24c:	0800075c 	stmdaeq	r0, {r2, r3, r4, r6, r8, r9, sl}
 250:	00000001 	andeq	r0, r0, r1
 254:	00000001 	andeq	r0, r0, r1
 258:	00000001 	andeq	r0, r0, r1
 25c:	00000001 	andeq	r0, r0, r1
 260:	00000001 	andeq	r0, r0, r1
 264:	00000001 	andeq	r0, r0, r1
	...
 270:	00000001 	andeq	r0, r0, r1
 274:	00000001 	andeq	r0, r0, r1
 278:	0800075c 	stmdaeq	r0, {r2, r3, r4, r6, r8, r9, sl}
 27c:	080007c8 	stmdaeq	r0, {r3, r6, r7, r8, r9, sl}
 280:	080007c8 	stmdaeq	r0, {r3, r6, r7, r8, r9, sl}
 284:	080007e0 	stmdaeq	r0, {r5, r6, r7, r8, r9, sl}
 288:	080007e0 	stmdaeq	r0, {r5, r6, r7, r8, r9, sl}
 28c:	080007f4 	stmdaeq	r0, {r2, r4, r5, r6, r7, r8, r9, sl}
 290:	080007f4 	stmdaeq	r0, {r2, r4, r5, r6, r7, r8, r9, sl}
 294:	08000820 	stmdaeq	r0, {r5, fp}
 298:	08000820 	stmdaeq	r0, {r5, fp}
 29c:	08000838 	stmdaeq	r0, {r3, r4, r5, fp}
	...
 2a8:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
 2ac:	00000000 	andeq	r0, r0, r0
 2b0:	08000838 	stmdaeq	r0, {r3, r4, r5, fp}
 2b4:	08000888 	stmdaeq	r0, {r3, r7, fp}
 2b8:	08000888 	stmdaeq	r0, {r3, r7, fp}
 2bc:	0800088a 	stmdaeq	r0, {r1, r3, r7, fp}
	...

Disassembly of section .debug_macro:

00000000 <.debug_macro>:
   0:	00020004 	andeq	r0, r2, r4
   4:	07000000 	streq	r0, [r0, -r0]
   8:	0000004a 	andeq	r0, r0, sl, asr #32
   c:	03010003 	movweq	r0, #4099	; 0x1003
  10:	0705020c 	streq	r0, [r5, -ip, lsl #4]
  14:	00002061 	andeq	r2, r0, r1, rrx
  18:	050d0304 	streq	r0, [sp, #-772]	; 0xfffffcfc
  1c:	000aaa07 	andeq	sl, sl, r7, lsl #20
  20:	0e030400 	cfcpyseq	mvf0, mvf3
  24:	0acc0704 	beq	ff301c3c <_estack+0xdf2ff43c>
  28:	03040000 	movweq	r0, #16384	; 0x4000
  2c:	0a05060f 	beq	141870 <_Min_Stack_Size+0x141470>
  30:	00001eb4 			; <UNDEFINED> instruction: 0x00001eb4
  34:	07100304 	ldreq	r0, [r0, -r4, lsl #6]
  38:	099b0a05 	ldmibeq	fp, {r0, r2, r9, fp}
  3c:	03040000 	movweq	r0, #16384	; 0x4000
  40:	f4070311 	vst2.8	{d0-d3}, [r7 :64], r1
  44:	0400000a 	streq	r0, [r0], #-10
  48:	00040004 	andeq	r0, r4, r4
  4c:	62000500 	andvs	r0, r0, #0, 10
  50:	0500001b 	streq	r0, [r0, #-27]	; 0xffffffe5
  54:	0017a800 	andseq	sl, r7, r0, lsl #16
  58:	09000500 	stmdbeq	r0, {r8, sl}
  5c:	0500001d 	streq	r0, [r0, #-29]	; 0xffffffe3
  60:	0007ac00 	andeq	sl, r7, r0, lsl #24
  64:	1b000500 	blne	146c <_Min_Stack_Size+0x106c>
  68:	05000026 	streq	r0, [r0, #-38]	; 0xffffffda
  6c:	00052200 	andeq	r2, r5, r0, lsl #4
  70:	e6000500 	str	r0, [r0], -r0, lsl #10
  74:	05000003 	streq	r0, [r0, #-3]
  78:	001c6400 	andseq	r6, ip, r0, lsl #8
  7c:	9c000500 	cfstr32ls	mvfx0, [r0], {-0}
  80:	05000004 	streq	r0, [r0, #-4]
  84:	00086b00 	andeq	r6, r8, r0, lsl #22
  88:	90000500 	andls	r0, r0, r0, lsl #10
  8c:	05000006 	streq	r0, [r0, #-6]
  90:	001b3700 	andseq	r3, fp, r0, lsl #14
  94:	a8000500 	stmdage	r0, {r8, sl}
  98:	05000005 	streq	r0, [r0, #-5]
  9c:	00274200 	eoreq	r4, r7, r0, lsl #4
  a0:	95000500 	strls	r0, [r0, #-1280]	; 0xfffffb00
  a4:	0500001b 	streq	r0, [r0, #-27]	; 0xffffffe5
  a8:	001a0100 	andseq	r0, sl, r0, lsl #2
  ac:	2f000500 	svccs	0x00000500
  b0:	0500002a 	streq	r0, [r0, #-42]	; 0xffffffd6
  b4:	00064200 	andeq	r4, r6, r0, lsl #4
  b8:	4b000500 	blmi	14c0 <_Min_Stack_Size+0x10c0>
  bc:	05000023 	streq	r0, [r0, #-35]	; 0xffffffdd
  c0:	0006a300 	andeq	sl, r6, r0, lsl #6
  c4:	ad000500 	cfstr32ge	mvfx0, [r0, #-0]
  c8:	05000011 	streq	r0, [r0, #-17]	; 0xffffffef
  cc:	001c5000 	andseq	r5, ip, r0
  d0:	83000500 	movwhi	r0, #1280	; 0x500
  d4:	05000004 	streq	r0, [r0, #-4]
  d8:	00044c00 	andeq	r4, r4, r0, lsl #24
  dc:	8c000500 	cfstr32hi	mvfx0, [r0], {-0}
  e0:	05000019 	streq	r0, [r0, #-25]	; 0xffffffe7
  e4:	00120800 	andseq	r0, r2, r0, lsl #16
  e8:	84000500 	strhi	r0, [r0], #-1280	; 0xfffffb00
  ec:	05000012 	streq	r0, [r0, #-18]	; 0xffffffee
  f0:	00050800 	andeq	r0, r5, r0, lsl #16
  f4:	47000500 	strmi	r0, [r0, -r0, lsl #10]
  f8:	05000020 	streq	r0, [r0, #-32]	; 0xffffffe0
  fc:	00072400 	andeq	r2, r7, r0, lsl #8
 100:	f0000500 			; <UNDEFINED> instruction: 0xf0000500
 104:	0500001d 	streq	r0, [r0, #-29]	; 0xffffffe3
 108:	00242e00 	eoreq	r2, r4, r0, lsl #28
 10c:	b9000500 	stmdblt	r0, {r8, sl}
 110:	05000028 	streq	r0, [r0, #-40]	; 0xffffffd8
 114:	0005c300 	andeq	ip, r5, r0, lsl #6
 118:	42000500 	andmi	r0, r0, #0, 10
 11c:	0500000f 	streq	r0, [r0, #-15]
 120:	001bc000 	andseq	ip, fp, r0
 124:	40000500 	andmi	r0, r0, r0, lsl #10
 128:	0500002a 	streq	r0, [r0, #-42]	; 0xffffffd6
 12c:	00278f00 	eoreq	r8, r7, r0, lsl #30
 130:	60000500 	andvs	r0, r0, r0, lsl #10
 134:	05000004 	streq	r0, [r0, #-4]
 138:	001eea00 	andseq	lr, lr, r0, lsl #20
 13c:	8a000500 	bhi	1544 <_Min_Stack_Size+0x1144>
 140:	0500002e 	streq	r0, [r0, #-46]	; 0xffffffd2
 144:	00224200 	eoreq	r4, r2, r0, lsl #4
 148:	ec000500 	cfstr32	mvfx0, [r0], {-0}
 14c:	05000005 	streq	r0, [r0, #-5]
 150:	00211c00 	eoreq	r1, r1, r0, lsl #24
 154:	b5000500 	strlt	r0, [r0, #-1280]	; 0xfffffb00
 158:	0500001c 	streq	r0, [r0, #-28]	; 0xffffffe4
 15c:	00236200 	eoreq	r6, r3, r0, lsl #4
 160:	34000500 	strcc	r0, [r0], #-1280	; 0xfffffb00
 164:	05000013 	streq	r0, [r0, #-19]	; 0xffffffed
 168:	0023e700 	eoreq	lr, r3, r0, lsl #14
 16c:	ea000500 	b	1574 <_Min_Stack_Size+0x1174>
 170:	0500002a 	streq	r0, [r0, #-42]	; 0xffffffd6
 174:	0006ce00 	andeq	ip, r6, r0, lsl #28
 178:	01000500 	tsteq	r0, r0, lsl #10
 17c:	05000018 	streq	r0, [r0, #-24]	; 0xffffffe8
 180:	00087e00 	andeq	r7, r8, r0, lsl #28
 184:	b8000500 	stmdalt	r0, {r8, sl}
 188:	05000023 	streq	r0, [r0, #-35]	; 0xffffffdd
 18c:	0019b800 	andseq	fp, r9, r0, lsl #16
 190:	0c000500 	cfstr32eq	mvfx0, [r0], {-0}
 194:	05000014 	streq	r0, [r0, #-20]	; 0xffffffec
 198:	001f8000 	andseq	r8, pc, r0
 19c:	64000500 	strvs	r0, [r0], #-1280	; 0xfffffb00
 1a0:	05000005 	streq	r0, [r0, #-5]
 1a4:	000eb300 	andeq	fp, lr, r0, lsl #6
 1a8:	f4000500 	vst3.8	{d0,d2,d4}, [r0], r0
 1ac:	05000012 	streq	r0, [r0, #-18]	; 0xffffffee
 1b0:	0029ff00 	eoreq	pc, r9, r0, lsl #30
 1b4:	ba000500 	blt	15bc <_Min_Stack_Size+0x11bc>
 1b8:	05000009 	streq	r0, [r0, #-9]
 1bc:	0000e400 	andeq	lr, r0, r0, lsl #8
 1c0:	77000500 	strvc	r0, [r0, -r0, lsl #10]
 1c4:	05000015 	streq	r0, [r0, #-21]	; 0xffffffeb
 1c8:	00215100 	eoreq	r5, r1, r0, lsl #2
 1cc:	f7000500 			; <UNDEFINED> instruction: 0xf7000500
 1d0:	0500000c 	streq	r0, [r0, #-12]
 1d4:	0027e000 	eoreq	lr, r7, r0
 1d8:	6d000500 	cfstr32vs	mvfx0, [r0, #-0]
 1dc:	0500000a 	streq	r0, [r0, #-10]
 1e0:	00268900 	eoreq	r8, r6, r0, lsl #18
 1e4:	df000500 	svcle	0x00000500
 1e8:	05000002 	streq	r0, [r0, #-2]
 1ec:	0015b300 	andseq	fp, r5, r0, lsl #6
 1f0:	d9000500 	stmdble	r0, {r8, sl}
 1f4:	05000007 	streq	r0, [r0, #-7]
 1f8:	00200200 	eoreq	r0, r0, r0, lsl #4
 1fc:	91000500 	tstls	r0, r0, lsl #10
 200:	05000005 	streq	r0, [r0, #-5]
 204:	001bdb00 	andseq	sp, fp, r0, lsl #22
 208:	de000500 	cfsh32le	mvfx0, mvfx0, #0
 20c:	05000013 	streq	r0, [r0, #-19]	; 0xffffffed
 210:	00233100 	eoreq	r3, r3, r0, lsl #2
 214:	d8000500 	stmdale	r0, {r8, sl}
 218:	05000021 	streq	r0, [r0, #-33]	; 0xffffffdf
 21c:	00225c00 	eoreq	r5, r2, r0, lsl #24
 220:	d6000500 	strle	r0, [r0], -r0, lsl #10
 224:	05000003 	streq	r0, [r0, #-3]
 228:	000c6300 	andeq	r6, ip, r0, lsl #6
 22c:	9c000500 	cfstr32ls	mvfx0, [r0], {-0}
 230:	05000008 	streq	r0, [r0, #-8]
 234:	001c1d00 	andseq	r1, ip, r0, lsl #26
 238:	7f000500 	svcvc	0x00000500
 23c:	05000023 	streq	r0, [r0, #-35]	; 0xffffffdd
 240:	0024f200 	eoreq	pc, r4, r0, lsl #4
 244:	c6000500 	strgt	r0, [r0], -r0, lsl #10
 248:	0500001e 	streq	r0, [r0, #-30]	; 0xffffffe2
 24c:	0002c800 	andeq	ip, r2, r0, lsl #16
 250:	57000500 	strpl	r0, [r0, -r0, lsl #10]
 254:	05000013 	streq	r0, [r0, #-19]	; 0xffffffed
 258:	0020ac00 	eoreq	sl, r0, r0, lsl #24
 25c:	80000500 	andhi	r0, r0, r0, lsl #10
 260:	05000024 	streq	r0, [r0, #-36]	; 0xffffffdc
 264:	001e3b00 	andseq	r3, lr, r0, lsl #22
 268:	14000500 	strne	r0, [r0], #-1280	; 0xfffffb00
 26c:	05000010 	streq	r0, [r0, #-16]
 270:	002a9000 	eoreq	r9, sl, r0
 274:	64000500 	strvs	r0, [r0], #-1280	; 0xfffffb00
 278:	0500002e 	streq	r0, [r0, #-46]	; 0xffffffd2
 27c:	00070400 	andeq	r0, r7, r0, lsl #8
 280:	c1000500 	tstgt	r0, r0, lsl #10
 284:	05000017 	streq	r0, [r0, #-23]	; 0xffffffe9
 288:	00002500 	andeq	r2, r0, r0, lsl #10
 28c:	62000500 	andvs	r0, r0, #0, 10
 290:	0500001e 	streq	r0, [r0, #-30]	; 0xffffffe2
 294:	001fea00 	andseq	lr, pc, r0, lsl #20
 298:	76000500 	strvc	r0, [r0], -r0, lsl #10
 29c:	0500000d 	streq	r0, [r0, #-13]
 2a0:	001bf400 	andseq	pc, fp, r0, lsl #8
 2a4:	92000500 	andls	r0, r0, #0, 10
 2a8:	05000020 	streq	r0, [r0, #-32]	; 0xffffffe0
 2ac:	000d5300 	andeq	r5, sp, r0, lsl #6
 2b0:	1c000500 	cfstr32ne	mvfx0, [r0], {-0}
 2b4:	05000017 	streq	r0, [r0, #-23]	; 0xffffffe9
 2b8:	00176800 	andseq	r6, r7, r0, lsl #16
 2bc:	91000500 	tstls	r0, r0, lsl #10
 2c0:	0500001d 	streq	r0, [r0, #-29]	; 0xffffffe3
 2c4:	001aae00 	andseq	sl, sl, r0, lsl #28
 2c8:	b6000500 	strlt	r0, [r0], -r0, lsl #10
 2cc:	05000006 	streq	r0, [r0, #-6]
 2d0:	0009dc00 	andeq	sp, r9, r0, lsl #24
 2d4:	f5000500 			; <UNDEFINED> instruction: 0xf5000500
 2d8:	05000016 	streq	r0, [r0, #-22]	; 0xffffffea
 2dc:	0007be00 	andeq	fp, r7, r0, lsl #28
 2e0:	83000500 	movwhi	r0, #1280	; 0x500
 2e4:	0500001a 	streq	r0, [r0, #-26]	; 0xffffffe6
 2e8:	000a3000 	andeq	r3, sl, r0
 2ec:	fd000500 	stc2	5, cr0, [r0, #-0]
 2f0:	0500002d 	streq	r0, [r0, #-45]	; 0xffffffd3
 2f4:	002cf700 	eoreq	pc, ip, r0, lsl #14
 2f8:	34000500 	strcc	r0, [r0], #-1280	; 0xfffffb00
 2fc:	05000028 	streq	r0, [r0, #-40]	; 0xffffffd8
 300:	00167900 	andseq	r7, r6, r0, lsl #18
 304:	ec000500 	cfstr32	mvfx0, [r0], {-0}
 308:	05000022 	streq	r0, [r0, #-34]	; 0xffffffde
 30c:	00210300 	eoreq	r0, r1, r0, lsl #6
 310:	3a000500 	bcc	1718 <_Min_Stack_Size+0x1318>
 314:	0500000d 	streq	r0, [r0, #-13]
 318:	00021100 	andeq	r1, r2, r0, lsl #2
 31c:	fa000500 	blx	1724 <_Min_Stack_Size+0x1324>
 320:	0500002e 	streq	r0, [r0, #-46]	; 0xffffffd2
 324:	00043c00 	andeq	r3, r4, r0, lsl #24
 328:	55000500 	strpl	r0, [r0, #-1280]	; 0xfffffb00
 32c:	05000027 	streq	r0, [r0, #-39]	; 0xffffffd9
 330:	0011c000 	andseq	ip, r1, r0
 334:	15000500 	strne	r0, [r0, #-1280]	; 0xfffffb00
 338:	0500000e 	streq	r0, [r0, #-14]
 33c:	00252400 	eoreq	r2, r5, r0, lsl #8
 340:	eb000500 	bl	1748 <_Min_Stack_Size+0x1348>
 344:	05000004 	streq	r0, [r0, #-4]
 348:	00123300 	andseq	r3, r2, r0, lsl #6
 34c:	71000500 	tstvc	r0, r0, lsl #10
 350:	0500000b 	streq	r0, [r0, #-11]
 354:	00013400 	andeq	r3, r1, r0, lsl #8
 358:	fb000500 	blx	1762 <_Min_Stack_Size+0x1362>
 35c:	0500001a 	streq	r0, [r0, #-26]	; 0xffffffe6
 360:	001ba800 	andseq	sl, fp, r0, lsl #16
 364:	00000500 	andeq	r0, r0, r0, lsl #10
 368:	0500000b 	streq	r0, [r0, #-11]
 36c:	002f6200 	eoreq	r6, pc, r0, lsl #4
 370:	65000500 	strvs	r0, [r0, #-1280]	; 0xfffffb00
 374:	05000012 	streq	r0, [r0, #-18]	; 0xffffffee
 378:	00155700 	andseq	r5, r5, r0, lsl #14
 37c:	9f000500 	svcls	0x00000500
 380:	05000003 	streq	r0, [r0, #-3]
 384:	00173e00 	andseq	r3, r7, r0, lsl #28
 388:	52000500 	andpl	r0, r0, #0, 10
 38c:	05000026 	streq	r0, [r0, #-38]	; 0xffffffda
 390:	0019a400 	andseq	sl, r9, r0, lsl #8
 394:	5b000500 	blpl	179c <_Min_Stack_Size+0x139c>
 398:	0500002d 	streq	r0, [r0, #-45]	; 0xffffffd3
 39c:	0017f100 	andseq	pc, r7, r0, lsl #2
 3a0:	79000500 	stmdbvc	r0, {r8, sl}
 3a4:	0500001d 	streq	r0, [r0, #-29]	; 0xffffffe3
 3a8:	00163700 	andseq	r3, r6, r0, lsl #14
 3ac:	b2000500 	andlt	r0, r0, #0, 10
 3b0:	05000029 	streq	r0, [r0, #-41]	; 0xffffffd7
 3b4:	0027f400 	eoreq	pc, r7, r0, lsl #8
 3b8:	40000500 	andmi	r0, r0, r0, lsl #10
 3bc:	0500000e 	streq	r0, [r0, #-14]
 3c0:	0014e900 	andseq	lr, r4, r0, lsl #18
 3c4:	63000500 	movwvs	r0, #1280	; 0x500
 3c8:	0500000b 	streq	r0, [r0, #-11]
 3cc:	002c9300 	eoreq	r9, ip, r0, lsl #6
 3d0:	50000500 	andpl	r0, r0, r0, lsl #10
 3d4:	05000029 	streq	r0, [r0, #-41]	; 0xffffffd7
 3d8:	00272e00 	eoreq	r2, r7, r0, lsl #28
 3dc:	35000500 	strcc	r0, [r0, #-1280]	; 0xfffffb00
 3e0:	05000014 	streq	r0, [r0, #-20]	; 0xffffffec
 3e4:	00207c00 	eoreq	r7, r0, r0, lsl #24
 3e8:	6d000500 	cfstr32vs	mvfx0, [r0, #-0]
 3ec:	05000028 	streq	r0, [r0, #-40]	; 0xffffffd8
 3f0:	0018da00 	andseq	sp, r8, r0, lsl #20
 3f4:	91000500 	tstls	r0, r0, lsl #10
 3f8:	05000023 	streq	r0, [r0, #-35]	; 0xffffffdd
 3fc:	00005d00 	andeq	r5, r0, r0, lsl #26
 400:	4d000500 	cfstr32mi	mvfx0, [r0, #-0]
 404:	0500002f 	streq	r0, [r0, #-47]	; 0xffffffd1
 408:	00092700 	andeq	r2, r9, r0, lsl #14
 40c:	17000500 	strne	r0, [r0, -r0, lsl #10]
 410:	0500002a 	streq	r0, [r0, #-42]	; 0xffffffd6
 414:	00055000 	andeq	r5, r5, r0
 418:	53000500 	movwpl	r0, #1280	; 0x500
 41c:	05000018 	streq	r0, [r0, #-24]	; 0xffffffe8
 420:	0002b000 	andeq	fp, r2, r0
 424:	99000500 	stmdbls	r0, {r8, sl}
 428:	05000015 	streq	r0, [r0, #-21]	; 0xffffffeb
 42c:	001b8000 	andseq	r8, fp, r0
 430:	2c000500 	cfstr32cs	mvfx0, [r0], {-0}
 434:	0500002b 	streq	r0, [r0, #-43]	; 0xffffffd5
 438:	002f7a00 	eoreq	r7, pc, r0, lsl #20
 43c:	70000500 	andvc	r0, r0, r0, lsl #10
 440:	05000003 	streq	r0, [r0, #-3]
 444:	000f5e00 	andeq	r5, pc, r0, lsl #28
 448:	5e000500 	cfsh32pl	mvfx0, mvfx0, #0
 44c:	0500002a 	streq	r0, [r0, #-42]	; 0xffffffd6
 450:	002ab400 	eoreq	fp, sl, r0, lsl #8
 454:	77000500 	strvc	r0, [r0, -r0, lsl #10]
 458:	0500002d 	streq	r0, [r0, #-45]	; 0xffffffd3
 45c:	0029d300 	eoreq	sp, r9, r0, lsl #6
 460:	69000500 	stmdbvs	r0, {r8, sl}
 464:	0500000e 	streq	r0, [r0, #-14]
 468:	001a3d00 	andseq	r3, sl, r0, lsl #26
 46c:	32000500 	andcc	r0, r0, #0, 10
 470:	05000006 	streq	r0, [r0, #-6]
 474:	001dad00 	andseq	sl, sp, r0, lsl #26
 478:	09000500 	stmdbeq	r0, {r8, sl}
 47c:	05000024 	streq	r0, [r0, #-36]	; 0xffffffdc
 480:	00218800 	eoreq	r8, r1, r0, lsl #16
 484:	29000500 	stmdbcs	r0, {r8, sl}
 488:	0500002d 	streq	r0, [r0, #-45]	; 0xffffffd3
 48c:	002ce400 	eoreq	lr, ip, r0, lsl #8
 490:	75000500 	strvc	r0, [r0, #-1280]	; 0xfffffb00
 494:	05000022 	streq	r0, [r0, #-34]	; 0xffffffde
 498:	0019db00 	andseq	sp, r9, r0, lsl #22
 49c:	2c000500 	cfstr32cs	mvfx0, [r0], {-0}
 4a0:	0500001d 	streq	r0, [r0, #-29]	; 0xffffffe3
 4a4:	0027b700 	eoreq	fp, r7, r0, lsl #14
 4a8:	67000500 	strvs	r0, [r0, -r0, lsl #10]
 4ac:	05000010 	streq	r0, [r0, #-16]
 4b0:	002ee400 	eoreq	lr, lr, r0, lsl #8
 4b4:	61000500 	tstvs	r0, r0, lsl #10
 4b8:	0500001d 	streq	r0, [r0, #-29]	; 0xffffffe3
 4bc:	00222900 	eoreq	r2, r2, r0, lsl #18
 4c0:	ec000500 	cfstr32	mvfx0, [r0], {-0}
 4c4:	05000001 	streq	r0, [r0, #-1]
 4c8:	0015e000 	andseq	lr, r5, r0
 4cc:	2b000500 	blcs	18d4 <_Min_Stack_Size+0x14d4>
 4d0:	05000015 	streq	r0, [r0, #-21]	; 0xffffffeb
 4d4:	00077200 	andeq	r7, r7, r0, lsl #4
 4d8:	20000500 	andcs	r0, r0, r0, lsl #10
 4dc:	05000018 	streq	r0, [r0, #-24]	; 0xffffffe8
 4e0:	002d9700 	eoreq	r9, sp, r0, lsl #14
 4e4:	1c000500 	cfstr32ne	mvfx0, [r0], {-0}
 4e8:	05000013 	streq	r0, [r0, #-19]	; 0xffffffed
 4ec:	00065400 	andeq	r5, r6, r0, lsl #8
 4f0:	91000500 	tstls	r0, r0, lsl #10
 4f4:	05000028 	streq	r0, [r0, #-40]	; 0xffffffd8
 4f8:	00097000 	andeq	r7, r9, r0
 4fc:	95000500 	strls	r0, [r0, #-1280]	; 0xfffffb00
 500:	05000024 	streq	r0, [r0, #-36]	; 0xffffffdc
 504:	000a8b00 	andeq	r8, sl, r0, lsl #22
 508:	cb000500 	blgt	1910 <_Min_Stack_Size+0x1510>
 50c:	05000000 	streq	r0, [r0, #-0]
 510:	000c7e00 	andeq	r7, ip, r0, lsl #28
 514:	ee000500 	cfsh32	mvfx0, mvfx0, #0
 518:	05000006 	streq	r0, [r0, #-6]
 51c:	00085a00 	andeq	r5, r8, r0, lsl #20
 520:	f5000500 			; <UNDEFINED> instruction: 0xf5000500
 524:	05000028 	streq	r0, [r0, #-40]	; 0xffffffd8
 528:	0012bc00 	andseq	fp, r2, r0, lsl #24
 52c:	05000500 	streq	r0, [r0, #-1280]	; 0xfffffb00
 530:	05000001 	streq	r0, [r0, #-1]
 534:	00109400 	andseq	r9, r0, r0, lsl #8
 538:	fd000500 	stc2	5, cr0, [r0, #-0]
 53c:	05000014 	streq	r0, [r0, #-20]	; 0xffffffec
 540:	0021e900 	eoreq	lr, r1, r0, lsl #18
 544:	8d000500 	cfstr32hi	mvfx0, [r0, #-0]
 548:	0500000f 	streq	r0, [r0, #-15]
 54c:	0026be00 	eoreq	fp, r6, r0, lsl #28
 550:	f0000500 			; <UNDEFINED> instruction: 0xf0000500
 554:	05000015 	streq	r0, [r0, #-21]	; 0xffffffeb
 558:	00162000 	andseq	r2, r6, r0
 55c:	e5000500 	str	r0, [r0, #-1280]	; 0xfffffb00
 560:	0500000e 	streq	r0, [r0, #-14]
 564:	00004300 	andeq	r4, r0, r0, lsl #6
 568:	4d000500 	cfstr32mi	mvfx0, [r0, #-0]
 56c:	05000019 	streq	r0, [r0, #-25]	; 0xffffffe7
 570:	00191000 	andseq	r1, r9, r0
 574:	69000500 	stmdbvs	r0, {r8, sl}
 578:	05000029 	streq	r0, [r0, #-41]	; 0xffffffd7
 57c:	00213400 	eoreq	r3, r1, r0, lsl #8
 580:	1c000500 	cfstr32ne	mvfx0, [r0], {-0}
 584:	05000001 	streq	r0, [r0, #-1]
 588:	002d4100 	eoreq	r4, sp, r0, lsl #2
 58c:	86000500 	strhi	r0, [r0], -r0, lsl #10
 590:	05000002 	streq	r0, [r0, #-2]
 594:	00258300 	eoreq	r8, r5, r0, lsl #6
 598:	43000500 	movwmi	r0, #1280	; 0x500
 59c:	0500002b 	streq	r0, [r0, #-43]	; 0xffffffd5
 5a0:	00298400 	eoreq	r8, r9, r0, lsl #8
 5a4:	fe000500 	cdp2	5, 0, cr0, cr0, cr0, {0}
 5a8:	0500000e 	streq	r0, [r0, #-14]
 5ac:	00164d00 	andseq	r4, r6, r0, lsl #26
 5b0:	a9000500 	stmdbge	r0, {r8, sl}
 5b4:	0500002b 	streq	r0, [r0, #-43]	; 0xffffffd5
 5b8:	002b1100 	eoreq	r1, fp, r0, lsl #2
 5bc:	4d000500 	cfstr32mi	mvfx0, [r0, #-0]
 5c0:	0500001e 	streq	r0, [r0, #-30]	; 0xffffffe2
 5c4:	00277700 	eoreq	r7, r7, r0, lsl #14
 5c8:	d6000500 	strle	r0, [r0], -r0, lsl #10
 5cc:	05000011 	streq	r0, [r0, #-17]	; 0xffffffef
 5d0:	000c1100 	andeq	r1, ip, r0, lsl #2
 5d4:	d5000500 	strle	r0, [r0, #-1280]	; 0xfffffb00
 5d8:	05000017 	streq	r0, [r0, #-23]	; 0xffffffe9
 5dc:	00061900 	andeq	r1, r6, r0, lsl #18
 5e0:	4b000500 	blmi	19e8 <_Min_Stack_Size+0x15e8>
 5e4:	05000007 	streq	r0, [r0, #-7]
 5e8:	002f3700 	eoreq	r3, pc, r0, lsl #14
 5ec:	b4000500 	strlt	r0, [r0], #-1280	; 0xfffffb00
 5f0:	05000016 	streq	r0, [r0, #-22]	; 0xffffffea
 5f4:	0020ed00 	eoreq	lr, r0, r0, lsl #26
 5f8:	1d000500 	cfstr32ne	mvfx0, [r0, #-0]
 5fc:	0500002e 	streq	r0, [r0, #-46]	; 0xffffffd2
 600:	000fb600 	andeq	fp, pc, r0, lsl #12
 604:	78000500 	stmdavc	r0, {r8, sl}
 608:	05000001 	streq	r0, [r0, #-1]
 60c:	00008800 	andeq	r8, r0, r0, lsl #16
 610:	20000500 	andcs	r0, r0, r0, lsl #10
 614:	05000011 	streq	r0, [r0, #-17]	; 0xffffffef
 618:	0014a400 	andseq	sl, r4, r0, lsl #8
 61c:	c0000500 	andgt	r0, r0, r0, lsl #10
 620:	05000021 	streq	r0, [r0, #-33]	; 0xffffffdf
 624:	00052d00 	andeq	r2, r5, r0, lsl #26
 628:	aa000500 	bge	1a30 <_Min_Stack_Size+0x1630>
 62c:	0500002c 	streq	r0, [r0, #-44]	; 0xffffffd4
 630:	000da700 	andeq	sl, sp, r0, lsl #14
 634:	01000500 	tsteq	r0, r0, lsl #10
 638:	05000008 	streq	r0, [r0, #-8]
 63c:	001ed800 	andseq	sp, lr, r0, lsl #16
 640:	0c000500 	cfstr32eq	mvfx0, [r0], {-0}
 644:	0500001f 	streq	r0, [r0, #-31]	; 0xffffffe1
 648:	0010f200 	andseq	pc, r0, r0, lsl #4
 64c:	de000500 	cfsh32le	mvfx0, mvfx0, #0
 650:	0500000c 	streq	r0, [r0, #-12]
 654:	00255800 	eoreq	r5, r5, r0, lsl #16
 658:	d9000500 	stmdble	r0, {r8, sl}
 65c:	05000022 	streq	r0, [r0, #-34]	; 0xffffffde
 660:	00282100 	eoreq	r2, r8, r0, lsl #2
 664:	bf000500 	svclt	0x00000500
 668:	05000003 	streq	r0, [r0, #-3]
 66c:	00124a00 	andseq	r4, r2, r0, lsl #20
 670:	19000500 	stmdbne	r0, {r8, sl}
 674:	0500001b 	streq	r0, [r0, #-27]	; 0xffffffe5
 678:	00290f00 	eoreq	r0, r9, r0, lsl #30
 67c:	1b000500 	blne	1a84 <_Min_Stack_Size+0x1684>
 680:	0500001d 	streq	r0, [r0, #-29]	; 0xffffffe3
 684:	000fdc00 	andeq	sp, pc, r0, lsl #24
 688:	9b000500 	blls	1a90 <_Min_Stack_Size+0x1690>
 68c:	0500001c 	streq	r0, [r0, #-28]	; 0xffffffe4
 690:	00260000 	eoreq	r0, r6, r0
 694:	90000500 	andls	r0, r0, r0, lsl #10
 698:	05000013 	streq	r0, [r0, #-19]	; 0xffffffed
 69c:	0000b900 	andeq	fp, r0, r0, lsl #18
 6a0:	e6000500 	str	r0, [r0], -r0, lsl #10
 6a4:	0500001c 	streq	r0, [r0, #-28]	; 0xffffffe4
 6a8:	000cc200 	andeq	ip, ip, r0, lsl #4
 6ac:	bd000500 	cfstr32lt	mvfx0, [r0, #-0]
 6b0:	05000018 	streq	r0, [r0, #-24]	; 0xffffffe8
 6b4:	00183600 	andseq	r3, r8, r0, lsl #12
 6b8:	8d000500 	cfstr32hi	mvfx0, [r0, #-0]
 6bc:	05000007 	streq	r0, [r0, #-7]
 6c0:	00031100 	andeq	r1, r3, r0, lsl #2
 6c4:	cd000500 	cfstr32gt	mvfx0, [r0, #-0]
 6c8:	0500002d 	streq	r0, [r0, #-45]	; 0xffffffd3
 6cc:	000e9600 	andeq	r9, lr, r0, lsl #12
 6d0:	09000500 	stmdbeq	r0, {r8, sl}
 6d4:	0500001c 	streq	r0, [r0, #-28]	; 0xffffffe4
 6d8:	000dc200 	andeq	ip, sp, r0, lsl #4
 6dc:	d2000500 	andle	r0, r0, #0, 10
 6e0:	05000014 	streq	r0, [r0, #-20]	; 0xffffffec
 6e4:	00245000 	eoreq	r5, r4, r0
 6e8:	88000500 	stmdahi	r0, {r8, sl}
 6ec:	0500000d 	streq	r0, [r0, #-13]
 6f0:	0016e100 	andseq	lr, r6, r0, lsl #2
 6f4:	5d000500 	cfstr32pl	mvfx0, [r0, #-0]
 6f8:	05000003 	streq	r0, [r0, #-3]
 6fc:	002ea200 	eoreq	sl, lr, r0, lsl #4
 700:	d6000500 	strle	r0, [r0], -r0, lsl #10
 704:	0500000a 	streq	r0, [r0, #-10]
 708:	001e8f00 	andseq	r8, lr, r0, lsl #30
 70c:	c6000500 	strgt	r0, [r0], -r0, lsl #10
 710:	0500001d 	streq	r0, [r0, #-29]	; 0xffffffe3
 714:	00084600 	andeq	r4, r8, r0, lsl #12
 718:	50000500 	andpl	r0, r0, r0, lsl #10
 71c:	0500000e 	streq	r0, [r0, #-14]
 720:	000de900 	andeq	lr, sp, r0, lsl #18
 724:	c3000500 	movwgt	r0, #1280	; 0x500
 728:	0500002e 	streq	r0, [r0, #-46]	; 0xffffffd2
 72c:	000f3000 	andeq	r3, pc, r0
 730:	ad000500 	cfstr32ge	mvfx0, [r0, #-0]
 734:	05000010 	streq	r0, [r0, #-16]
 738:	0024d000 	eoreq	sp, r4, r0
 73c:	18000500 	stmdane	r0, {r8, sl}
 740:	0500001a 	streq	r0, [r0, #-26]	; 0xffffffe6
 744:	0012d800 	andseq	sp, r2, r0, lsl #16
 748:	ad000500 	cfstr32ge	mvfx0, [r0, #-0]
 74c:	05000021 	streq	r0, [r0, #-33]	; 0xffffffdf
 750:	0014bf00 	andseq	fp, r4, r0, lsl #30
 754:	0a000500 	beq	1b5c <_Min_Stack_Size+0x175c>
 758:	05000028 	streq	r0, [r0, #-40]	; 0xffffffd8
 75c:	001fb700 	andseq	fp, pc, r0, lsl #14
 760:	45000500 	strmi	r0, [r0, #-1280]	; 0xfffffb00
 764:	0500000c 	streq	r0, [r0, #-12]
 768:	0016a200 	andseq	sl, r6, r0, lsl #4
 76c:	55000500 	strpl	r0, [r0, #-1280]	; 0xfffffb00
 770:	05000010 	streq	r0, [r0, #-16]
 774:	001c2f00 	andseq	r2, ip, r0, lsl #30
 778:	1d000500 	cfstr32ne	mvfx0, [r0, #-0]
 77c:	0500001e 	streq	r0, [r0, #-30]	; 0xffffffe2
 780:	00192200 	andseq	r2, r9, r0, lsl #4
 784:	6d000500 	cfstr32vs	mvfx0, [r0, #-0]
 788:	0500001b 	streq	r0, [r0, #-27]	; 0xffffffe5
 78c:	00154400 	andseq	r4, r5, r0, lsl #8
 790:	81000500 	tsthi	r0, r0, lsl #10
 794:	0500000e 	streq	r0, [r0, #-14]
 798:	0020cd00 	eoreq	ip, r0, r0, lsl #26
 79c:	38000500 	stmdacc	r0, {r8, sl}
 7a0:	05000010 	streq	r0, [r0, #-16]
 7a4:	00189b00 	andseq	r9, r8, r0, lsl #22
 7a8:	20000500 	andcs	r0, r0, r0, lsl #10
 7ac:	05000012 	streq	r0, [r0, #-18]	; 0xffffffee
 7b0:	0008b500 	andeq	fp, r8, r0, lsl #10
 7b4:	d3000500 	movwle	r0, #1280	; 0x500
 7b8:	0500001a 	streq	r0, [r0, #-26]	; 0xffffffe6
 7bc:	00253b00 	eoreq	r3, r5, r0, lsl #22
 7c0:	d2000500 	andle	r0, r0, #0, 10
 7c4:	0500001c 	streq	r0, [r0, #-28]	; 0xffffffe4
 7c8:	0016cd00 	andseq	ip, r6, r0, lsl #26
 7cc:	05000500 	streq	r0, [r0, #-1280]	; 0xfffffb00
 7d0:	05000009 	streq	r0, [r0, #-9]
 7d4:	000c9800 	andeq	r9, ip, r0, lsl #16
 7d8:	b8000500 	stmdalt	r0, {r8, sl}
 7dc:	05000001 	streq	r0, [r0, #-1]
 7e0:	000dd500 	andeq	sp, sp, r0, lsl #10
 7e4:	7c000500 	cfstr32vc	mvfx0, [r0], {-0}
 7e8:	05000006 	streq	r0, [r0, #-6]
 7ec:	00093e00 	andeq	r3, r9, r0, lsl #28
 7f0:	4b000500 	blmi	1bf8 <_Min_Stack_Size+0x17f8>
 7f4:	05000014 	streq	r0, [r0, #-20]	; 0xffffffec
 7f8:	00147500 	andseq	r7, r4, r0, lsl #10
 7fc:	e0000500 	and	r0, r0, r0, lsl #10
 800:	05000028 	streq	r0, [r0, #-40]	; 0xffffffd8
 804:	0007ec00 	andeq	lr, r7, r0, lsl #24
 808:	49000500 	stmdbmi	r0, {r8, sl}
 80c:	0500000a 	streq	r0, [r0, #-10]
 810:	0008d900 	andeq	sp, r8, r0, lsl #18
 814:	16000500 	strne	r0, [r0], -r0, lsl #10
 818:	0500002f 	streq	r0, [r0, #-47]	; 0xffffffd1
 81c:	002b9b00 	eoreq	r9, fp, r0, lsl #22
 820:	5e000500 	cfsh32pl	mvfx0, mvfx0, #0
 824:	05000002 	streq	r0, [r0, #-2]
 828:	00230100 	eoreq	r0, r3, r0, lsl #2
 82c:	2a000500 	bcs	1c34 <_Min_Stack_Size+0x1834>
 830:	0500001f 	streq	r0, [r0, #-31]	; 0xffffffe1
 834:	00219e00 	eoreq	r9, r1, r0, lsl #28
 838:	6e000500 	cfsh32vs	mvfx0, mvfx0, #0
 83c:	05000020 	streq	r0, [r0, #-32]	; 0xffffffe0
 840:	001fa800 	andseq	sl, pc, r0, lsl #16
 844:	5f000500 	svcpl	0x00000500
 848:	05000028 	streq	r0, [r0, #-40]	; 0xffffffd8
 84c:	00228d00 	eoreq	r8, r2, r0, lsl #26
 850:	52000500 	andpl	r0, r0, #0, 10
 854:	0500001a 	streq	r0, [r0, #-26]	; 0xffffffe6
 858:	0020be00 	eoreq	fp, r0, r0, lsl #28
 85c:	74000500 	strvc	r0, [r0], #-1280	; 0xfffffb00
 860:	05000025 	streq	r0, [r0, #-37]	; 0xffffffdb
 864:	00229d00 	eoreq	r9, r2, r0, lsl #26
 868:	81000500 	tsthi	r0, r0, lsl #10
 86c:	05000013 	streq	r0, [r0, #-19]	; 0xffffffed
 870:	0025ae00 	eoreq	sl, r5, r0, lsl #28
 874:	02000500 	andeq	r0, r0, #0, 10
 878:	05000002 	streq	r0, [r0, #-2]
 87c:	00193d00 	andseq	r3, r9, r0, lsl #26
 880:	6c000500 	cfstr32vs	mvfx0, [r0], {-0}
 884:	05000002 	streq	r0, [r0, #-2]
 888:	00197b00 	andseq	r7, r9, r0, lsl #22
 88c:	ae000500 	cfsh32ge	mvfx0, mvfx0, #0
 890:	05000018 	streq	r0, [r0, #-24]	; 0xffffffe8
 894:	00247200 	eoreq	r7, r4, r0, lsl #4
 898:	be000500 	cfsh32lt	mvfx0, mvfx0, #0
 89c:	05000025 	streq	r0, [r0, #-37]	; 0xffffffdb
 8a0:	0012ad00 	andseq	sl, r2, r0, lsl #26
 8a4:	c7000500 	strgt	r0, [r0, -r0, lsl #10]
 8a8:	0500000a 	streq	r0, [r0, #-10]
 8ac:	000bd200 	andeq	sp, fp, r0, lsl #4
 8b0:	f9000500 			; <UNDEFINED> instruction: 0xf9000500
 8b4:	05000011 	streq	r0, [r0, #-17]	; 0xffffffef
 8b8:	001d5200 	andseq	r5, sp, r0, lsl #4
 8bc:	8c000500 	cfstr32hi	mvfx0, [r0], {-0}
 8c0:	0500002b 	streq	r0, [r0, #-43]	; 0xffffffd5
 8c4:	001a6000 	andseq	r6, sl, r0
 8c8:	c3000500 	movwgt	r0, #1280	; 0x500
 8cc:	0500002b 	streq	r0, [r0, #-43]	; 0xffffffd5
 8d0:	00170c00 	andseq	r0, r7, r0, lsl #24
 8d4:	10000500 	andne	r0, r0, r0, lsl #10
 8d8:	05000011 	streq	r0, [r0, #-17]	; 0xffffffef
 8dc:	002ded00 	eoreq	lr, sp, r0, lsl #26
 8e0:	aa000500 	bge	1ce8 <_Min_Stack_Size+0x18e8>
 8e4:	05000009 	streq	r0, [r0, #-9]
 8e8:	00130c00 	andseq	r0, r3, r0, lsl #24
 8ec:	40000500 	andmi	r0, r0, r0, lsl #10
 8f0:	05000029 	streq	r0, [r0, #-41]	; 0xffffffd7
 8f4:	00151600 	andseq	r1, r5, r0, lsl #12
 8f8:	84000500 	strhi	r0, [r0], #-1280	; 0xfffffb00
 8fc:	05000018 	streq	r0, [r0, #-24]	; 0xffffffe8
 900:	00136a00 	andseq	r6, r3, r0, lsl #20
 904:	94000500 	strls	r0, [r0], #-1280	; 0xfffffb00
 908:	05000014 	streq	r0, [r0, #-20]	; 0xffffffec
 90c:	0005d800 	andeq	sp, r5, r0, lsl #16
 910:	a2000500 	andge	r0, r0, #0, 10
 914:	0500000a 	streq	r0, [r0, #-10]
 918:	000bad00 	andeq	sl, fp, r0, lsl #26
 91c:	09000500 	stmdbeq	r0, {r8, sl}
 920:	05000027 	streq	r0, [r0, #-39]	; 0xffffffd9
 924:	000b8f00 	andeq	r8, fp, r0, lsl #30
 928:	6e000500 	cfsh32vs	mvfx0, mvfx0, #0
 92c:	0500002b 	streq	r0, [r0, #-43]	; 0xffffffd5
 930:	00186200 	andseq	r6, r8, r0, lsl #4
 934:	cc000500 	cfstr32gt	mvfx0, [r0], {-0}
 938:	05000025 	streq	r0, [r0, #-37]	; 0xffffffdb
 93c:	00201600 	eoreq	r1, r0, r0, lsl #12
 940:	21000500 	tstcs	r0, r0, lsl #10
 944:	05000029 	streq	r0, [r0, #-41]	; 0xffffffd7
 948:	000ff700 	andeq	pc, pc, r0, lsl #14
 94c:	27000500 	strcs	r0, [r0, -r0, lsl #10]
 950:	0500000c 	streq	r0, [r0, #-12]
 954:	0026ea00 	eoreq	lr, r6, r0, lsl #20
 958:	4c000500 	cfstr32mi	mvfx0, [r0], {-0}
 95c:	05000001 	streq	r0, [r0, #-1]
 960:	00250300 	eoreq	r0, r5, r0, lsl #6
 964:	92000500 	andls	r0, r0, #0, 10
 968:	0500001a 	streq	r0, [r0, #-26]	; 0xffffffe6
 96c:	0010d600 	andseq	sp, r0, r0, lsl #12
 970:	db000500 	blle	1d78 <_Min_Stack_Size+0x1978>
 974:	0500001d 	streq	r0, [r0, #-29]	; 0xffffffe3
 978:	00022d00 	andeq	r2, r2, r0, lsl #26
 97c:	bf000500 	svclt	0x00000500
 980:	06000010 			; <UNDEFINED> instruction: 0x06000010
 984:	00284d00 	eoreq	r4, r8, r0, lsl #26
 988:	ea000500 	b	1d90 <_Min_Stack_Size+0x1990>
 98c:	05000029 	streq	r0, [r0, #-41]	; 0xffffffd7
 990:	002db900 	eoreq	fp, sp, r0, lsl #18
 994:	27000600 	strcs	r0, [r0, -r0, lsl #12]
 998:	05000004 	streq	r0, [r0, #-4]
 99c:	00119300 	andseq	r9, r1, r0, lsl #6
 9a0:	05000600 	streq	r0, [r0, #-1536]	; 0xfffffa00
 9a4:	05000006 	streq	r0, [r0, #-6]
 9a8:	0009f700 	andeq	pc, r9, r0, lsl #14
 9ac:	d4000500 	strle	r0, [r0], #-1280	; 0xfffffb00
 9b0:	0500001f 	streq	r0, [r0, #-31]	; 0xffffffe1
 9b4:	00166500 	andseq	r6, r6, r0, lsl #10
 9b8:	6c000600 	stcvs	6, cr0, [r0], {-0}
 9bc:	06000026 	streq	r0, [r0], -r6, lsr #32
 9c0:	0001d700 	andeq	sp, r1, r0, lsl #14
 9c4:	e1000500 	tst	r0, r0, lsl #10
 9c8:	0500000b 	streq	r0, [r0, #-11]
 9cc:	00032f00 	andeq	r2, r3, r0, lsl #30
 9d0:	4d000500 	cfstr32mi	mvfx0, [r0, #-0]
 9d4:	0500000b 	streq	r0, [r0, #-11]
 9d8:	001a3300 	andseq	r3, sl, r0, lsl #6
 9dc:	9f000500 	svcls	0x00000500
 9e0:	05000007 	streq	r0, [r0, #-7]
 9e4:	002aa600 	eoreq	sl, sl, r0, lsl #12
 9e8:	1d000500 	cfstr32ne	mvfx0, [r0, #-0]
 9ec:	05000022 	streq	r0, [r0, #-34]	; 0xffffffde
 9f0:	0009ea00 	andeq	lr, r9, r0, lsl #20
 9f4:	eb000500 	bl	1dfc <_Min_Stack_Size+0x19fc>
 9f8:	05000011 	streq	r0, [r0, #-17]	; 0xffffffef
 9fc:	00196400 	andseq	r6, r9, r0, lsl #8
 a00:	c4000500 	strgt	r0, [r0], #-1280	; 0xfffffb00
 a04:	05000024 	streq	r0, [r0, #-36]	; 0xffffffdc
 a08:	0026b100 	eoreq	fp, r6, r0, lsl #2
 a0c:	43000500 	movwmi	r0, #1280	; 0x500
 a10:	06000024 	streq	r0, [r0], -r4, lsr #32
 a14:	00199b00 	andseq	r9, r9, r0, lsl #22
 a18:	46000600 	strmi	r0, [r0], -r0, lsl #12
 a1c:	06000003 	streq	r0, [r0], -r3
 a20:	002d0b00 	eoreq	r0, sp, r0, lsl #22
 a24:	37000600 	strcc	r0, [r0, -r0, lsl #12]
 a28:	06000020 	streq	r0, [r0], -r0, lsr #32
 a2c:	000b2800 	andeq	r2, fp, r0, lsl #16
 a30:	00000600 	andeq	r0, r0, r0, lsl #12
 a34:	06000000 	streq	r0, [r0], -r0
 a38:	00179600 	andseq	r9, r7, r0, lsl #12
 a3c:	20000600 	andcs	r0, r0, r0, lsl #12
 a40:	06000002 	streq	r0, [r0], -r2
 a44:	000a6200 	andeq	r6, sl, r0, lsl #4
 a48:	fb000600 	blx	2252 <_Min_Stack_Size+0x1e52>
 a4c:	0500001c 	streq	r0, [r0, #-28]	; 0xffffffe4
 a50:	0015ca00 	andseq	ip, r5, r0, lsl #20
 a54:	ee000500 	cfsh32	mvfx0, mvfx0, #0
 a58:	05000025 	streq	r0, [r0, #-37]	; 0xffffffdb
 a5c:	001f1e00 	andseq	r1, pc, r0, lsl #28
 a60:	23000500 	movwcs	r0, #1280	; 0x500
 a64:	0500000d 	streq	r0, [r0, #-13]
 a68:	00113700 	andseq	r3, r1, r0, lsl #14
 a6c:	73000500 	movwvc	r0, #1280	; 0x500
 a70:	05000021 	streq	r0, [r0, #-33]	; 0xffffffdf
 a74:	0003f700 	andeq	pc, r3, r0, lsl #14
 a78:	4a000500 	bmi	1e80 <_Min_Stack_Size+0x1a80>
 a7c:	0500001b 	streq	r0, [r0, #-27]	; 0xffffffe5
 a80:	001c7a00 	andseq	r7, ip, r0, lsl #20
 a84:	79000500 	stmdbvc	r0, {r8, sl}
 a88:	0500001a 	streq	r0, [r0, #-26]	; 0xffffffe6
 a8c:	000bfd00 	andeq	pc, fp, r0, lsl #26
 a90:	32000500 	andcc	r0, r0, #0, 10
 a94:	0500000d 	streq	r0, [r0, #-13]
 a98:	00242400 	eoreq	r2, r4, r0, lsl #8
 a9c:	a0000500 	andge	r0, r0, r0, lsl #10
 aa0:	05000002 	streq	r0, [r0, #-2]
 aa4:	00177e00 	andseq	r7, r7, r0, lsl #28
 aa8:	00040000 	andeq	r0, r4, r0
 aac:	db070500 	blle	1c1eb4 <_Min_Stack_Size+0x1c1ab4>
 ab0:	05000023 	streq	r0, [r0, #-35]	; 0xffffffdd
 ab4:	000a0b09 	andeq	r0, sl, r9, lsl #22
 ab8:	920a0500 	andls	r0, sl, #0, 10
 abc:	05000001 	streq	r0, [r0, #-1]
 ac0:	00262d0b 	eoreq	r2, r6, fp, lsl #26
 ac4:	a30c0500 	movwge	r0, #50432	; 0xc500
 ac8:	00000013 	andeq	r0, r0, r3, lsl r0
 acc:	05000004 	streq	r0, [r0, #-4]
 ad0:	001a6f07 	andseq	r6, sl, r7, lsl #30
 ad4:	700b0500 	andvc	r0, fp, r0, lsl #10
 ad8:	05000001 	streq	r0, [r0, #-1]
 adc:	0005bb0c 	andeq	fp, r5, ip, lsl #22
 ae0:	1c0d0500 	cfstr32ne	mvfx0, [sp], {-0}
 ae4:	05000007 	streq	r0, [r0, #-7]
 ae8:	00140525 	andseq	r0, r4, r5, lsr #10
 aec:	ae260500 	cfsh64ge	mvdx0, mvdx6, #0
 af0:	0000001e 	andeq	r0, r0, lr, lsl r0
 af4:	05000004 	streq	r0, [r0, #-4]
 af8:	0017860a 	andseq	r8, r7, sl, lsl #12
 afc:	41340500 	teqmi	r4, r0, lsl #10
 b00:	05000002 	streq	r0, [r0, #-2]
 b04:	002e3437 	eoreq	r3, lr, r7, lsr r4
 b08:	00040000 	andeq	r0, r4, r0
 b0c:	0000b602 	andeq	fp, r0, r2, lsl #12
 b10:	004a0700 	subeq	r0, sl, r0, lsl #14
 b14:	00030000 	andeq	r0, r3, r0
 b18:	050c0301 	streq	r0, [ip, #-769]	; 0xfffffcff
 b1c:	20610705 	rsbcs	r0, r1, r5, lsl #14
 b20:	03040000 	movweq	r0, #16384	; 0x4000
 b24:	aa07060d 	bge	1c2360 <_Min_Stack_Size+0x1c1f60>
 b28:	0400000a 	streq	r0, [r0], #-10
 b2c:	07020e03 	streq	r0, [r2, -r3, lsl #28]
 b30:	00000acc 	andeq	r0, r0, ip, asr #21
 b34:	030f0304 	movweq	r0, #62212	; 0xf304
 b38:	30dd0a05 	sbcscc	r0, sp, r5, lsl #20
 b3c:	03040000 	movweq	r0, #16384	; 0x4000
 b40:	0a050710 	beq	142788 <_Min_Stack_Size+0x142388>
 b44:	00003177 	andeq	r3, r0, r7, ror r1
 b48:	04110304 	ldreq	r0, [r1], #-772	; 0xfffffcfc
 b4c:	000b5a07 	andeq	r5, fp, r7, lsl #20
 b50:	27050400 	strcs	r0, [r5, -r0, lsl #8]
 b54:	00002fcc 	andeq	r2, r0, ip, asr #31
 b58:	00040004 	andeq	r0, r4, r4
 b5c:	1f0a0500 	svcne	0x000a0500
 b60:	05000030 	streq	r0, [r0, #-48]	; 0xffffffd0
 b64:	00306535 	eorseq	r6, r0, r5, lsr r5
 b68:	a5370500 	ldrge	r0, [r7, #-1280]!	; 0xfffffb00
 b6c:	00000030 	andeq	r0, r0, r0, lsr r0
 b70:	fb020004 	blx	80b8a <_Min_Stack_Size+0x8078a>
 b74:	07000002 	streq	r0, [r0, -r2]
 b78:	0000004a 	andeq	r0, r0, sl, asr #32
 b7c:	03010003 	movweq	r0, #4099	; 0x1003
 b80:	0705020c 	streq	r0, [r5, -ip, lsl #4]
 b84:	00002061 	andeq	r2, r0, r1, rrx
 b88:	060d0304 	streq	r0, [sp], -r4, lsl #6
 b8c:	000aaa07 	andeq	sl, sl, r7, lsl #20
 b90:	0e030400 	cfcpyseq	mvf0, mvf3
 b94:	0acc0703 	beq	ff3027a8 <_estack+0xdf2fffa8>
 b98:	03040000 	movweq	r0, #16384	; 0x4000
 b9c:	0a05040f 	beq	141be0 <_Min_Stack_Size+0x1417e0>
 ba0:	00003434 	andeq	r3, r0, r4, lsr r4
 ba4:	04031203 	streq	r1, [r3], #-515	; 0xfffffdfd
 ba8:	000bc307 	andeq	ip, fp, r7, lsl #6
 bac:	10030400 	andne	r0, r3, r0, lsl #8
 bb0:	180a0507 	stmdane	sl, {r0, r1, r2, r8, sl}
 bb4:	04000036 	streq	r0, [r0], #-54	; 0xffffffca
 bb8:	07051103 	streq	r1, [r5, -r3, lsl #2]
 bbc:	00000c21 	andeq	r0, r0, r1, lsr #24
 bc0:	04000404 	streq	r0, [r0], #-1028	; 0xfffffbfc
 bc4:	2a050000 	bcs	140bcc <_Min_Stack_Size+0x1407cc>
 bc8:	0000346c 	andeq	r3, r0, ip, ror #8
 bcc:	35392b05 	ldrcc	r2, [r9, #-2821]!	; 0xfffff4fb
 bd0:	2c050000 	stccs	0, cr0, [r5], {-0}
 bd4:	000035a5 	andeq	r3, r0, r5, lsr #11
 bd8:	332d3005 			; <UNDEFINED> instruction: 0x332d3005
 bdc:	31050000 	mrscc	r0, (UNDEF: 5)
 be0:	00003627 	andeq	r3, r0, r7, lsr #12
 be4:	34463205 	strbcc	r3, [r6], #-517	; 0xfffffdfb
 be8:	33050000 	movwcc	r0, #20480	; 0x5000
 bec:	00003485 	andeq	r3, r0, r5, lsl #9
 bf0:	33e53505 	mvncc	r3, #20971520	; 0x1400000
 bf4:	36050000 	strcc	r0, [r5], -r0
 bf8:	000034f0 	strdeq	r3, [r0], -r0
 bfc:	32fc3705 	rscscc	r3, ip, #1310720	; 0x140000
 c00:	38050000 	stmdacc	r5, {}	; <UNPREDICTABLE>
 c04:	000036dd 	ldrdeq	r3, [r0], -sp
 c08:	33503a05 	cmpcc	r0, #20480	; 0x5000
 c0c:	3b050000 	blcc	140c14 <_Min_Stack_Size+0x140814>
 c10:	000035e3 	andeq	r3, r0, r3, ror #11
 c14:	368f3c05 	strcc	r3, [pc], r5, lsl #24
 c18:	3d050000 	stccc	0, cr0, [r5, #-0]
 c1c:	000032c9 	andeq	r3, r0, r9, asr #5
 c20:	00000400 	andeq	r0, r0, r0, lsl #8
 c24:	32720a05 	rsbscc	r0, r2, #20480	; 0x5000
 c28:	37050000 	strcc	r0, [r5, -r0]
 c2c:	00003554 	andeq	r3, r0, r4, asr r5
 c30:	337d3805 	cmncc	sp, #327680	; 0x50000
 c34:	39050000 	stmdbcc	r5, {}	; <UNPREDICTABLE>
 c38:	00003572 	andeq	r3, r0, r2, ror r5
 c3c:	340c3d05 	strcc	r3, [ip], #-3333	; 0xfffff2fb
 c40:	40050000 	andmi	r0, r5, r0
 c44:	000036b5 			; <UNDEFINED> instruction: 0x000036b5
 c48:	34c84405 	strbcc	r4, [r8], #1029	; 0x405
 c4c:	04000000 	streq	r0, [r0], #-0
 c50:	05100200 	ldreq	r0, [r0, #-512]	; 0xfffffe00
 c54:	4a070000 	bmi	1c0c5c <_Min_Stack_Size+0x1c085c>
 c58:	03000000 	movweq	r0, #0
 c5c:	0c030100 	stfeqs	f0, [r3], {-0}
 c60:	61070502 	tstvs	r7, r2, lsl #10
 c64:	04000020 	streq	r0, [r0], #-32	; 0xffffffe0
 c68:	07040d03 	streq	r0, [r4, -r3, lsl #26]
 c6c:	00000aaa 	andeq	r0, r0, sl, lsr #21
 c70:	050e0304 	streq	r0, [lr, #-772]	; 0xfffffcfc
 c74:	000acc07 	andeq	ip, sl, r7, lsl #24
 c78:	0f030400 	svceq	0x00030400
 c7c:	6a0a0503 	bvs	282090 <_Min_Stack_Size+0x281c90>
 c80:	0400003a 	streq	r0, [r0], #-58	; 0xffffffc6
 c84:	05061003 	streq	r1, [r6, #-3]
 c88:	0039b90a 	eorseq	fp, r9, sl, lsl #18
 c8c:	11030400 	tstne	r3, r0, lsl #8
 c90:	0c990707 	ldceq	7, cr0, [r9], {7}
 c94:	04040000 	streq	r0, [r4], #-0
 c98:	00000400 	andeq	r0, r0, r0, lsl #8
 c9c:	3a7c0a05 	bcc	1f034b8 <_Min_Stack_Size+0x1f030b8>
 ca0:	28050000 	stmdacs	r5, {}	; <UNPREDICTABLE>
 ca4:	000038e9 	andeq	r3, r0, r9, ror #17
 ca8:	3a192a05 	bcc	64b4c4 <_Min_Stack_Size+0x64b0c4>
 cac:	2b050000 	blcs	140cb4 <_Min_Stack_Size+0x1408b4>
 cb0:	000037b6 			; <UNDEFINED> instruction: 0x000037b6
 cb4:	39812c05 	stmibcc	r1, {r0, r2, sl, fp, sp}
 cb8:	2d050000 	stccs	0, cr0, [r5, #-0]
 cbc:	00003911 	andeq	r3, r0, r1, lsl r9
 cc0:	39492e05 	stmdbcc	r9, {r0, r2, r9, sl, fp, sp}^
 cc4:	2f050000 	svccs	0x00050000
 cc8:	00003760 	andeq	r3, r0, r0, ror #14
 ccc:	386b3005 	stmdacc	fp!, {r0, r2, ip, sp}^
 cd0:	33050000 	movwcc	r0, #20480	; 0x5000
 cd4:	00003819 	andeq	r3, r0, r9, lsl r8
 cd8:	38353505 	ldmdacc	r5!, {r0, r2, r8, sl, ip, sp}
 cdc:	37050000 	strcc	r0, [r5, -r0]
 ce0:	000038be 			; <UNDEFINED> instruction: 0x000038be
 ce4:	02000400 	andeq	r0, r0, #0, 8
 ce8:	0000062a 	andeq	r0, r0, sl, lsr #12
 cec:	00004a07 	andeq	r4, r0, r7, lsl #20
 cf0:	01000300 	mrseq	r0, LR_irq
 cf4:	05030c03 	streq	r0, [r3, #-3075]	; 0xfffff3fd
 cf8:	00206107 	eoreq	r6, r0, r7, lsl #2
 cfc:	0d030400 	cfstrseq	mvf0, [r3, #-0]
 d00:	0aaa0704 	beq	fea82918 <_estack+0xdea80118>
 d04:	03040000 	movweq	r0, #16384	; 0x4000
 d08:	2607020e 	strcs	r0, [r7], -lr, lsl #4
 d0c:	0400000d 	streq	r0, [r0], #-13
 d10:	05050f03 	streq	r0, [r5, #-3843]	; 0xfffff0fd
 d14:	003b1c0a 	eorseq	r1, fp, sl, lsl #24
 d18:	10030400 	andne	r0, r3, r0, lsl #8
 d1c:	2b0a0506 	blcs	28213c <_Min_Stack_Size+0x281d3c>
 d20:	0400003b 	streq	r0, [r0], #-59	; 0xffffffc5
 d24:	00040004 	andeq	r0, r4, r4
 d28:	970a0500 	strls	r0, [sl, -r0, lsl #10]
 d2c:	0500003b 	streq	r0, [r0, #-59]	; 0xffffffc5
 d30:	003b3b18 	eorseq	r3, fp, r8, lsl fp
 d34:	bc310500 	cfldr32lt	mvfx0, [r1], #-0
 d38:	0000003a 	andeq	r0, r0, sl, lsr r0
 d3c:	d2020004 	andle	r0, r2, #4
 d40:	07000006 	streq	r0, [r0, -r6]
 d44:	0000004a 	andeq	r0, r0, sl, asr #32
 d48:	03010003 	movweq	r0, #4099	; 0x1003
 d4c:	07050207 	streq	r0, [r5, -r7, lsl #4]
 d50:	00002061 	andeq	r2, r0, r1, rrx
 d54:	03080304 	movweq	r0, #33540	; 0x8304
 d58:	000aaa07 	andeq	sl, sl, r7, lsl #20
 d5c:	09030400 	stmdbeq	r3, {sl}
 d60:	a8080504 	stmdage	r8, {r2, r8, sl}
 d64:	0300003d 	movweq	r0, #61	; 0x3d
 d68:	0704020a 	streq	r0, [r4, -sl, lsl #4]
 d6c:	00000d85 	andeq	r0, r0, r5, lsl #27
 d70:	050a0304 	streq	r0, [sl, #-772]	; 0xfffffcfc
 d74:	000d9b07 	andeq	r9, sp, r7, lsl #22
 d78:	0b030400 	bleq	c1d80 <_Min_Stack_Size+0xc1980>
 d7c:	0e170706 	cdpeq	7, 1, cr0, cr7, cr6, {0}
 d80:	04040000 	streq	r0, [r4], #-0
 d84:	00000400 	andeq	r0, r0, r0, lsl #8
 d88:	3c000c05 	stccc	12, cr0, [r0], {5}
 d8c:	0d050000 	stceq	0, cr0, [r5, #-0]
 d90:	00003d33 	andeq	r3, r0, r3, lsr sp
 d94:	3e030e05 	cdpcc	14, 0, cr0, cr3, cr5, {0}
 d98:	04000000 	streq	r0, [r0], #-0
 d9c:	08050000 	stmdaeq	r5, {}	; <UNPREDICTABLE>
 da0:	00003cd7 	ldrdeq	r3, [r0], -r7
 da4:	3c980d05 	ldccc	13, cr0, [r8], {5}
 da8:	0e050000 	cdpeq	0, 0, cr0, cr5, cr0, {0}
 dac:	00003e40 	andeq	r3, r0, r0, asr #28
 db0:	3ce70f05 	stclcc	15, cr0, [r7], #20
 db4:	10050000 	andne	r0, r5, r0
 db8:	00003d87 	andeq	r3, r0, r7, lsl #27
 dbc:	3d031105 	stfccs	f1, [r3, #-20]	; 0xffffffec
 dc0:	12050000 	andne	r0, r5, #0
 dc4:	00003c14 	andeq	r3, r0, r4, lsl ip
 dc8:	3e5d1305 	cdpcc	3, 5, cr1, cr13, cr5, {0}
 dcc:	14050000 	strne	r0, [r5], #-0
 dd0:	00003d4b 	andeq	r3, r0, fp, asr #26
 dd4:	3dc71505 	cfstr64cc	mvdx1, [r7, #20]
 dd8:	16050000 	strne	r0, [r5], -r0
 ddc:	00003d6b 	andeq	r3, r0, fp, ror #26
 de0:	3e2e1e05 	cdpcc	14, 2, cr1, cr14, cr5, {0}
 de4:	1f050000 	svcne	0x00050000
 de8:	00003dba 			; <UNDEFINED> instruction: 0x00003dba
 dec:	3de42005 	stclcc	0, cr2, [r4, #20]!
 df0:	21050000 	mrscs	r0, (UNDEF: 5)
 df4:	00003c0a 	andeq	r3, r0, sl, lsl #24
 df8:	3cb32405 	cfldrscc	mvf2, [r3], #20
 dfc:	25050000 	strcs	r0, [r5, #-0]
 e00:	00003e0e 	andeq	r3, r0, lr, lsl #28
 e04:	3c512605 	mrrccc	6, 0, r2, r1, cr5
 e08:	2a050000 	bcs	140e10 <_Min_Stack_Size+0x140a10>
 e0c:	00003c33 	andeq	r3, r0, r3, lsr ip
 e10:	3e252b05 	vmulcc.f64	d2, d5, d5
 e14:	04000000 	streq	r0, [r0], #-0
 e18:	08050000 	stmdaeq	r5, {}	; <UNPREDICTABLE>
 e1c:	00003d24 	andeq	r3, r0, r4, lsr #26
 e20:	3c620f05 	stclcc	15, cr0, [r2], #-20	; 0xffffffec
 e24:	04000000 	streq	r0, [r0], #-0
 e28:	07ae0200 	streq	r0, [lr, r0, lsl #4]!
 e2c:	4a070000 	bmi	1c0e34 <_Min_Stack_Size+0x1c0a34>
 e30:	03000000 	movweq	r0, #0
 e34:	0c030100 	stfeqs	f0, [r3], {-0}
 e38:	61070502 	tstvs	r7, r2, lsl #10
 e3c:	04000020 	streq	r0, [r0], #-32	; 0xffffffe0
 e40:	07050d03 	streq	r0, [r5, -r3, lsl #26]
 e44:	00000aaa 	andeq	r0, r0, sl, lsr #21
 e48:	060e0304 	streq	r0, [lr], -r4, lsl #6
 e4c:	000acc07 	andeq	ip, sl, r7, lsl #24
 e50:	0f030400 	svceq	0x00030400
 e54:	0e6f0704 	cdpeq	7, 6, cr0, cr15, cr4, {0}
 e58:	03040000 	movweq	r0, #16384	; 0x4000
 e5c:	85070710 	strhi	r0, [r7, #-1808]	; 0xfffff8f0
 e60:	0400000e 	streq	r0, [r0], #-14
 e64:	07031103 	streq	r1, [r3, -r3, lsl #2]
 e68:	00000e9b 	muleq	r0, fp, lr
 e6c:	04000404 	streq	r0, [r0], #-1028	; 0xfffffbfc
 e70:	0a050000 	beq	140e78 <_Min_Stack_Size+0x140a78>
 e74:	000040bf 	strheq	r4, [r0], -pc	; <UNPREDICTABLE>
 e78:	405a2305 	subsmi	r2, sl, r5, lsl #6
 e7c:	24050000 	strcs	r0, [r5], #-0
 e80:	00003f81 	andeq	r3, r0, r1, lsl #31
 e84:	00000400 	andeq	r0, r0, r0, lsl #8
 e88:	3f620a05 	svccc	0x00620a05
 e8c:	2a050000 	bcs	140e94 <_Min_Stack_Size+0x140a94>
 e90:	00004212 	andeq	r4, r0, r2, lsl r2
 e94:	41523105 	cmpmi	r2, r5, lsl #2
 e98:	04000000 	streq	r0, [r0], #-0
 e9c:	0a050000 	beq	140ea4 <_Min_Stack_Size+0x140aa4>
 ea0:	000041ea 	andeq	r4, r0, sl, ror #3
 ea4:	42833a05 	addmi	r3, r3, #20480	; 0x5000
 ea8:	3b050000 	blcc	140eb0 <_Min_Stack_Size+0x140ab0>
 eac:	000040e0 	andeq	r4, r0, r0, ror #1
 eb0:	3ec04305 	cdpcc	3, 12, cr4, cr0, cr5, {0}
 eb4:	46050000 	strmi	r0, [r5], -r0
 eb8:	00003ee0 	andeq	r3, r0, r0, ror #29
 ebc:	3f244705 	svccc	0x00244705
 ec0:	49050000 	stmdbmi	r5, {}	; <UNPREDICTABLE>
 ec4:	0000422d 	andeq	r4, r0, sp, lsr #4
 ec8:	40444a05 	submi	r4, r4, r5, lsl #20
 ecc:	04000000 	streq	r0, [r0], #-0
 ed0:	09ef0200 	stmibeq	pc!, {r9}^	; <UNPREDICTABLE>
 ed4:	4a070000 	bmi	1c0edc <_Min_Stack_Size+0x1c0adc>
 ed8:	03000000 	movweq	r0, #0
 edc:	0c030100 	stfeqs	f0, [r3], {-0}
 ee0:	61070502 	tstvs	r7, r2, lsl #10
 ee4:	04000020 	streq	r0, [r0], #-32	; 0xffffffe0
 ee8:	07060d03 	streq	r0, [r6, -r3, lsl #26]
 eec:	00000aaa 	andeq	r0, r0, sl, lsr #21
 ef0:	030e0304 	movweq	r0, #58116	; 0xe304
 ef4:	000acc07 	andeq	ip, sl, r7, lsl #24
 ef8:	0f030400 	svceq	0x00030400
 efc:	340a0507 	strcc	r0, [sl], #-1287	; 0xfffffaf9
 f00:	03000034 	movweq	r0, #52	; 0x34
 f04:	07040312 	smladeq	r4, r2, r3, r0
 f08:	00000bc3 	andeq	r0, r0, r3, asr #23
 f0c:	04100304 	ldreq	r0, [r0], #-772	; 0xfffffcfc
 f10:	48ee0a05 	stmiami	lr!, {r0, r2, r9, fp}^
 f14:	03040000 	movweq	r0, #16384	; 0x4000
 f18:	0a050811 	beq	142f64 <_Min_Stack_Size+0x142b64>
 f1c:	000043bb 			; <UNDEFINED> instruction: 0x000043bb
 f20:	05120304 	ldreq	r0, [r2, #-772]	; 0xfffffcfc
 f24:	000f4407 	andeq	r4, pc, r7, lsl #8
 f28:	18050400 	stmdane	r5, {sl}
 f2c:	00004a09 	andeq	r4, r0, r9, lsl #20
 f30:	49492905 	stmdbmi	r9, {r0, r2, r8, fp, sp}^
 f34:	2a050000 	bcs	140f3c <_Min_Stack_Size+0x140b3c>
 f38:	00004913 	andeq	r4, r0, r3, lsl r9
 f3c:	45cd2b05 	strbmi	r2, [sp, #2821]	; 0xb05
 f40:	00040000 	andeq	r0, r4, r0
 f44:	05000004 	streq	r0, [r0, #-4]
 f48:	0049d20a 	subeq	sp, r9, sl, lsl #4
 f4c:	6e3b0500 	cfabs32vs	mvfx0, mvfx11
 f50:	05000046 	streq	r0, [r0, #-70]	; 0xffffffba
 f54:	00459e3d 	subeq	r9, r5, sp, lsr lr
 f58:	ea3f0500 	b	fc2360 <_Min_Stack_Size+0xfc1f60>
 f5c:	05000044 	streq	r0, [r0, #-68]	; 0xffffffbc
 f60:	00456442 	subeq	r6, r5, r2, asr #8
 f64:	ac430500 	cfstr64ge	mvdx0, [r3], {-0}
 f68:	05000046 	streq	r0, [r0, #-70]	; 0xffffffba
 f6c:	00455d44 	subeq	r5, r5, r4, asr #26
 f70:	00040000 	andeq	r0, r4, r0
 f74:	000d0f02 	andeq	r0, sp, r2, lsl #30
 f78:	004a0700 	subeq	r0, sl, r0, lsl #14
 f7c:	00030000 	andeq	r0, r3, r0
 f80:	03010301 	movweq	r0, #4865	; 0x1301
 f84:	20610705 	rsbcs	r0, r1, r5, lsl #14
 f88:	03040000 	movweq	r0, #16384	; 0x4000
 f8c:	aa070602 	bge	1c279c <_Min_Stack_Size+0x1c239c>
 f90:	0400000a 	streq	r0, [r0], #-10
 f94:	05070303 	streq	r0, [r7, #-771]	; 0xfffffcfd
 f98:	003da808 	eorseq	sl, sp, r8, lsl #16
 f9c:	030a0300 	movweq	r0, #41728	; 0xa300
 fa0:	0d850704 	stceq	7, cr0, [r5, #16]
 fa4:	03040000 	movweq	r0, #16384	; 0x4000
 fa8:	0a050804 	beq	142fc0 <_Min_Stack_Size+0x142bc0>
 fac:	00003434 	andeq	r3, r0, r4, lsr r4
 fb0:	07041203 	streq	r1, [r4, -r3, lsl #4]
 fb4:	00000acc 	andeq	r0, r0, ip, asr #21
 fb8:	0bc30704 	bleq	ff0c2bd0 <_estack+0xdf0c03d0>
 fbc:	03040000 	movweq	r0, #16384	; 0x4000
 fc0:	0a050905 	beq	1433dc <_Min_Stack_Size+0x142fdc>
 fc4:	00003a6a 	andeq	r3, r0, sl, ror #20
 fc8:	05060304 	streq	r0, [r6, #-772]	; 0xfffffcfc
 fcc:	30dd0a05 	sbcscc	r0, sp, r5, lsl #20
 fd0:	03040000 	movweq	r0, #16384	; 0x4000
 fd4:	0a050a07 	beq	1437f8 <_Min_Stack_Size+0x1433f8>
 fd8:	00001eb4 			; <UNDEFINED> instruction: 0x00001eb4
 fdc:	02080304 	andeq	r0, r8, #4, 6	; 0x10000000
 fe0:	000d2607 	andeq	r2, sp, r7, lsl #12
 fe4:	16050400 	strne	r0, [r5], -r0, lsl #8
 fe8:	00004ae3 	andeq	r4, r0, r3, ror #21
 fec:	Address 0x0000000000000fec is out of bounds.


Disassembly of section .debug_line:

00000000 <.debug_line>:
   0:	000000b2 	strheq	r0, [r0], -r2
   4:	00930002 	addseq	r0, r3, r2
   8:	01020000 	mrseq	r0, (UNDEF: 2)
   c:	000d0efb 	strdeq	r0, [sp], -fp
  10:	01010101 	tsteq	r1, r1, lsl #2
  14:	01000000 	mrseq	r0, (UNDEF: 0)
  18:	2e010000 	cdpcs	0, 0, cr0, cr1, cr0, {0}
  1c:	72532f2e 	subsvc	r2, r3, #46, 30	; 0xb8
  20:	2e2e0063 	cdpcs	0, 2, cr0, cr14, cr3, {3}
  24:	636e492f 	cmnvs	lr, #770048	; 0xbc000
  28:	46410000 	strbmi	r0, [r1], -r0
  2c:	705f4f49 	subsvc	r4, pc, r9, asr #30
  30:	72676f72 	rsbvc	r6, r7, #456	; 0x1c8
  34:	632e6d61 			; <UNDEFINED> instruction: 0x632e6d61
  38:	00000100 	andeq	r0, r0, r0, lsl #2
  3c:	5f445453 	svcpl	0x00445453
  40:	45505954 	ldrbmi	r5, [r0, #-2388]	; 0xfffff6ac
  44:	00682e53 	rsbeq	r2, r8, r3, asr lr
  48:	41000002 	tstmi	r0, r2
  4c:	5f4f4946 	svcpl	0x004f4946
  50:	76697270 			; <UNDEFINED> instruction: 0x76697270
  54:	2e657461 	cdpcs	4, 6, cr7, cr5, cr1, {3}
  58:	00020068 	andeq	r0, r2, r8, rrx
  5c:	4d4f4300 	stclmi	3, cr4, [pc, #-0]	; 64 <_Min_Heap_Size-0x19c>
  60:	2e4e4f4d 	cdpcs	15, 4, cr4, cr14, cr13, {2}
  64:	00020068 	andeq	r0, r2, r8, rrx
  68:	54494200 	strbpl	r4, [r9], #-512	; 0xfffffe00
  6c:	54414d5f 	strbpl	r4, [r1], #-3423	; 0xfffff2a1
  70:	00682e48 	rsbeq	r2, r8, r8, asr #28
  74:	41000002 	tstmi	r0, r2
  78:	5f4f4946 	svcpl	0x004f4946
  7c:	65746e69 	ldrbvs	r6, [r4, #-3689]!	; 0xfffff197
  80:	63616672 	cmnvs	r1, #119537664	; 0x7200000
  84:	00682e65 	rsbeq	r2, r8, r5, ror #28
  88:	41000002 	tstmi	r0, r2
  8c:	5f4f4946 	svcpl	0x004f4946
  90:	666e6f63 	strbtvs	r6, [lr], -r3, ror #30
  94:	682e6769 	stmdavs	lr!, {r0, r3, r5, r6, r8, r9, sl, sp, lr}
  98:	00000200 	andeq	r0, r0, r0, lsl #4
  9c:	02050000 	andeq	r0, r5, #0
  a0:	08000170 	stmdaeq	r0, {r4, r5, r6, r8}
  a4:	0100c303 	tsteq	r0, r3, lsl #6
  a8:	2f2f3d83 	svccs	0x002f3d83
  ac:	14084c3d 	strne	r4, [r8], #-3133	; 0xfffff3c3
  b0:	000702f3 	strdeq	r0, [r7], -r3
  b4:	02410101 	subeq	r0, r1, #1073741824	; 0x40000000
  b8:	00020000 	andeq	r0, r2, r0
  bc:	00000093 	muleq	r0, r3, r0
  c0:	0efb0102 	cdpeq	1, 15, cr0, cr11, cr2, {0}
  c4:	0101000d 	tsteq	r1, sp
  c8:	00000101 	andeq	r0, r0, r1, lsl #2
  cc:	00000100 	andeq	r0, r0, r0, lsl #2
  d0:	2f2e2e01 	svccs	0x002e2e01
  d4:	00637253 	rsbeq	r7, r3, r3, asr r2
  d8:	492f2e2e 	stmdbmi	pc!, {r1, r2, r3, r5, r9, sl, fp, sp}	; <UNPREDICTABLE>
  dc:	0000636e 	andeq	r6, r0, lr, ror #6
  e0:	49545845 	ldmdbmi	r4, {r0, r2, r6, fp, ip, lr}^
  e4:	6f72705f 	svcvs	0x0072705f
  e8:	6d617267 	sfmvs	f7, 2, [r1, #-412]!	; 0xfffffe64
  ec:	0100632e 	tsteq	r0, lr, lsr #6
  f0:	4f430000 	svcmi	0x00430000
  f4:	4e4f4d4d 	cdpmi	13, 4, cr4, cr15, cr13, {2}
  f8:	0200682e 	andeq	r6, r0, #3014656	; 0x2e0000
  fc:	58450000 	stmdapl	r5, {}^	; <UNPREDICTABLE>
 100:	695f4954 	ldmdbvs	pc, {r2, r4, r6, r8, fp, lr}^	; <UNPREDICTABLE>
 104:	7265746e 	rsbvc	r7, r5, #1845493760	; 0x6e000000
 108:	65636166 	strbvs	r6, [r3, #-358]!	; 0xfffffe9a
 10c:	0200682e 	andeq	r6, r0, #3014656	; 0x2e0000
 110:	58450000 	stmdapl	r5, {}^	; <UNPREDICTABLE>
 114:	705f4954 	subsvc	r4, pc, r4, asr r9	; <UNPREDICTABLE>
 118:	61766972 	cmnvs	r6, r2, ror r9
 11c:	682e6574 	stmdavs	lr!, {r2, r4, r5, r6, r8, sl, sp, lr}
 120:	00000200 	andeq	r0, r0, r0, lsl #4
 124:	5f445453 	svcpl	0x00445453
 128:	45505954 	ldrbmi	r5, [r0, #-2388]	; 0xfffff6ac
 12c:	00682e53 	rsbeq	r2, r8, r3, asr lr
 130:	42000002 	andmi	r0, r0, #2
 134:	4d5f5449 	cfldrdmi	mvd5, [pc, #-292]	; 18 <_Min_Heap_Size-0x1e8>
 138:	2e485441 	cdpcs	4, 4, cr5, cr8, cr1, {2}
 13c:	00020068 	andeq	r0, r2, r8, rrx
 140:	54584500 	ldrbpl	r4, [r8], #-1280	; 0xfffffb00
 144:	6f635f49 	svcvs	0x00635f49
 148:	6769666e 	strbvs	r6, [r9, -lr, ror #12]!
 14c:	0200682e 	andeq	r6, r0, #3014656	; 0x2e0000
 150:	00000000 	andeq	r0, r0, r0
 154:	01ec0205 	mvneq	r0, r5, lsl #4
 158:	c3030800 	movwgt	r0, #14336	; 0x3800
 15c:	03830100 	orreq	r0, r3, #0, 2
 160:	7603740d 	strvc	r7, [r3], -sp, lsl #8
 164:	9fa0ad20 	svcls	0x00a0ad20
 168:	22a19fae 	adccs	r9, r1, #696	; 0x2b8
 16c:	01000702 	tsteq	r0, r2, lsl #14
 170:	02050001 	andeq	r0, r5, #1
 174:	08000298 	stmdaeq	r0, {r3, r4, r7, r9}
 178:	0100d703 	tsteq	r0, r3, lsl #14
 17c:	07029f59 	smlsdeq	r2, r9, pc, r9	; <UNPREDICTABLE>
 180:	00010100 	andeq	r0, r1, r0, lsl #2
 184:	00000205 	andeq	r0, r0, r5, lsl #4
 188:	dc030000 	stcle	0, cr0, [r3], {-0}
 18c:	ad590100 	ldfgee	f0, [r9, #-0]
 190:	01000802 	tsteq	r0, r2, lsl #16
 194:	02050001 	andeq	r0, r5, #1
 198:	00000000 	andeq	r0, r0, r0
 19c:	0100e103 	tsteq	r0, r3, lsl #2
 1a0:	07029f59 	smlsdeq	r2, r9, pc, r9	; <UNPREDICTABLE>
 1a4:	00010100 	andeq	r0, r1, r0, lsl #2
 1a8:	00000205 	andeq	r0, r0, r5, lsl #4
 1ac:	e5030000 	str	r0, [r3, #-0]
 1b0:	67830100 	strvs	r0, [r3, r0, lsl #2]
 1b4:	01000402 	tsteq	r0, r2, lsl #8
 1b8:	02050001 	andeq	r0, r5, #1
 1bc:	080002c4 	stmdaeq	r0, {r2, r6, r7, r9}
 1c0:	0100ea03 	tsteq	r0, r3, lsl #20
 1c4:	07025967 	streq	r5, [r2, -r7, ror #18]
 1c8:	00010100 	andeq	r0, r1, r0, lsl #2
 1cc:	02e80205 	rsceq	r0, r8, #1342177280	; 0x50000000
 1d0:	f0030800 			; <UNDEFINED> instruction: 0xf0030800
 1d4:	3e2f0100 	sufcce	f0, f7, f0
 1d8:	00070268 	andeq	r0, r7, r8, ror #4
 1dc:	05000101 	streq	r0, [r0, #-257]	; 0xfffffeff
 1e0:	00030c02 	andeq	r0, r3, r2, lsl #24
 1e4:	00f70308 	rscseq	r0, r7, r8, lsl #6
 1e8:	673e2f01 	ldrvs	r2, [lr, -r1, lsl #30]!
 1ec:	01000702 	tsteq	r0, r2, lsl #14
 1f0:	02050001 	andeq	r0, r5, #1
 1f4:	08000330 	stmdaeq	r0, {r4, r5, r8, r9}
 1f8:	0100fd03 	tsteq	r0, r3, lsl #26	; <UNPREDICTABLE>
 1fc:	02673e2f 	rsbeq	r3, r7, #752	; 0x2f0
 200:	01010007 	tsteq	r1, r7
 204:	54020500 	strpl	r0, [r2], #-1280	; 0xfffffb00
 208:	03080003 	movweq	r0, #32771	; 0x8003
 20c:	2f010183 	svccs	0x00010183
 210:	0702673e 	smladxeq	r2, lr, r7, r6
 214:	00010100 	andeq	r0, r1, r0, lsl #2
 218:	03780205 	cmneq	r8, #1342177280	; 0x50000000
 21c:	89030800 	stmdbhi	r3, {fp}
 220:	3e2f0101 	sufcce	f0, f7, f1
 224:	00070267 	andeq	r0, r7, r7, ror #4
 228:	05000101 	streq	r0, [r0, #-257]	; 0xfffffeff
 22c:	00000002 	andeq	r0, r0, r2
 230:	018f0300 	orreq	r0, pc, r0, lsl #6
 234:	673e2f01 	ldrvs	r2, [lr, -r1, lsl #30]!
 238:	01000702 	tsteq	r0, r2, lsl #14
 23c:	02050001 	andeq	r0, r5, #1
 240:	00000000 	andeq	r0, r0, r0
 244:	01019503 	tsteq	r1, r3, lsl #10
 248:	02673e2f 	rsbeq	r3, r7, #752	; 0x2f0
 24c:	01010007 	tsteq	r1, r7
 250:	00020500 	andeq	r0, r2, r0, lsl #10
 254:	03000000 	movweq	r0, #0
 258:	3001019b 	mulcc	r1, fp, r1
 25c:	0702673e 	smladxeq	r2, lr, r7, r6
 260:	00010100 	andeq	r0, r1, r0, lsl #2
 264:	00000205 	andeq	r0, r0, r5, lsl #4
 268:	a2030000 	andge	r0, r3, #0
 26c:	3e2f0101 	sufcce	f0, f7, f1
 270:	00070267 	andeq	r0, r7, r7, ror #4
 274:	05000101 	streq	r0, [r0, #-257]	; 0xfffffeff
 278:	00000002 	andeq	r0, r0, r2
 27c:	01a80300 			; <UNDEFINED> instruction: 0x01a80300
 280:	673e2f01 	ldrvs	r2, [lr, -r1, lsl #30]!
 284:	01000702 	tsteq	r0, r2, lsl #14
 288:	02050001 	andeq	r0, r5, #1
 28c:	00000000 	andeq	r0, r0, r0
 290:	0101ae03 	tsteq	r1, r3, lsl #28
 294:	02673e2f 	rsbeq	r3, r7, #752	; 0x2f0
 298:	01010007 	tsteq	r1, r7
 29c:	00020500 	andeq	r0, r2, r0, lsl #10
 2a0:	03000000 	movweq	r0, #0
 2a4:	2f0101b4 	svccs	0x000101b4
 2a8:	0702673e 	smladxeq	r2, lr, r7, r6
 2ac:	00010100 	andeq	r0, r1, r0, lsl #2
 2b0:	00000205 	andeq	r0, r0, r5, lsl #4
 2b4:	ba030000 	blt	c02bc <_Min_Stack_Size+0xbfebc>
 2b8:	3e2f0101 	sufcce	f0, f7, f1
 2bc:	00070267 	andeq	r0, r7, r7, ror #4
 2c0:	05000101 	streq	r0, [r0, #-257]	; 0xfffffeff
 2c4:	00000002 	andeq	r0, r0, r2
 2c8:	01c00300 	biceq	r0, r0, r0, lsl #6
 2cc:	673e2f01 	ldrvs	r2, [lr, -r1, lsl #30]!
 2d0:	01000702 	tsteq	r0, r2, lsl #14
 2d4:	02050001 	andeq	r0, r5, #1
 2d8:	00000000 	andeq	r0, r0, r0
 2dc:	0101c603 	tsteq	r1, r3, lsl #12
 2e0:	02673e2f 	rsbeq	r3, r7, #752	; 0x2f0
 2e4:	01010007 	tsteq	r1, r7
 2e8:	00020500 	andeq	r0, r2, r0, lsl #10
 2ec:	03000000 	movweq	r0, #0
 2f0:	2f0101cc 	svccs	0x000101cc
 2f4:	0702673e 	smladxeq	r2, lr, r7, r6
 2f8:	11010100 	mrsne	r0, (UNDEF: 17)
 2fc:	02000002 	andeq	r0, r0, #2
 300:	00009300 	andeq	r9, r0, r0, lsl #6
 304:	fb010200 	blx	40b0e <_Min_Stack_Size+0x4070e>
 308:	01000d0e 	tsteq	r0, lr, lsl #26
 30c:	00010101 	andeq	r0, r1, r1, lsl #2
 310:	00010000 	andeq	r0, r1, r0
 314:	2e2e0100 	sufcse	f0, f6, f0
 318:	6372532f 	cmnvs	r2, #-1140850688	; 0xbc000000
 31c:	2f2e2e00 	svccs	0x002e2e00
 320:	00636e49 	rsbeq	r6, r3, r9, asr #28
 324:	49504700 	ldmdbmi	r0, {r8, r9, sl, lr}^
 328:	72705f4f 	rsbsvc	r5, r0, #316	; 0x13c
 32c:	6172676f 	cmnvs	r2, pc, ror #14
 330:	00632e6d 	rsbeq	r2, r3, sp, ror #28
 334:	53000001 	movwpl	r0, #1
 338:	545f4454 	ldrbpl	r4, [pc], #-1108	; 340 <_Min_Heap_Size+0x140>
 33c:	53455059 	movtpl	r5, #20569	; 0x5059
 340:	0200682e 	andeq	r6, r0, #3014656	; 0x2e0000
 344:	4f430000 	svcmi	0x00430000
 348:	4e4f4d4d 	cdpmi	13, 4, cr4, cr15, cr13, {2}
 34c:	0200682e 	andeq	r6, r0, #3014656	; 0x2e0000
 350:	50470000 	subpl	r0, r7, r0
 354:	695f4f49 	ldmdbvs	pc, {r0, r3, r6, r8, r9, sl, fp, lr}^	; <UNPREDICTABLE>
 358:	7265746e 	rsbvc	r7, r5, #1845493760	; 0x6e000000
 35c:	65636166 	strbvs	r6, [r3, #-358]!	; 0xfffffe9a
 360:	0200682e 	andeq	r6, r0, #3014656	; 0x2e0000
 364:	50470000 	subpl	r0, r7, r0
 368:	705f4f49 	subsvc	r4, pc, r9, asr #30
 36c:	61766972 	cmnvs	r6, r2, ror r9
 370:	682e6574 	stmdavs	lr!, {r2, r4, r5, r6, r8, sl, sp, lr}
 374:	00000200 	andeq	r0, r0, r0, lsl #4
 378:	5f544942 	svcpl	0x00544942
 37c:	4854414d 	ldmdami	r4, {r0, r2, r3, r6, r8, lr}^
 380:	0200682e 	andeq	r6, r0, #3014656	; 0x2e0000
 384:	50470000 	subpl	r0, r7, r0
 388:	635f4f49 	cmpvs	pc, #292	; 0x124
 38c:	69666e6f 	stmdbvs	r6!, {r0, r1, r2, r3, r5, r6, r9, sl, fp, sp, lr}^
 390:	00682e67 	rsbeq	r2, r8, r7, ror #28
 394:	00000002 	andeq	r0, r0, r2
 398:	9c020500 	cfstr32ls	mvfx0, [r2], {-0}
 39c:	03080003 	movweq	r0, #32771	; 0x8003
 3a0:	0391013c 	orrseq	r0, r1, #60, 2
 3a4:	4803743b 	stmdami	r3, {r0, r1, r3, r4, r5, sl, ip, sp, lr}
 3a8:	03bd4020 			; <UNDEFINED> instruction: 0x03bd4020
 3ac:	7503ac0d 	strvc	sl, [r3, #-3085]	; 0xfffff3f3
 3b0:	bb3d4c20 	bllt	f53438 <_Min_Stack_Size+0xf53038>
 3b4:	bb3e22b3 	bllt	f88e88 <_Min_Stack_Size+0xf88a88>
 3b8:	03ac0d03 			; <UNDEFINED> instruction: 0x03ac0d03
 3bc:	3d3e2075 	ldccc	0, cr2, [lr, #-468]!	; 0xfffffe2c
 3c0:	3e22b3bb 	mcrcc	3, 1, fp, cr2, cr11, {5}
 3c4:	ac0c0359 	stcge	3, cr0, [ip], {89}	; 0x59
 3c8:	3e207603 	cfmadda32cc	mvax0, mvax7, mvfx0, mvfx3
 3cc:	03b2bb3d 			; <UNDEFINED> instruction: 0x03b2bb3d
 3d0:	1203205d 	andne	r2, r3, #93	; 0x5d
 3d4:	2e11032e 	cdpcs	3, 1, cr0, cr1, cr14, {1}
 3d8:	000b0224 	andeq	r0, fp, r4, lsr #4
 3dc:	05000101 	streq	r0, [r0, #-257]	; 0xfffffeff
 3e0:	00000002 	andeq	r0, r0, r2
 3e4:	00fe0300 	rscseq	r0, lr, r0, lsl #6
 3e8:	032f8301 			; <UNDEFINED> instruction: 0x032f8301
 3ec:	63037421 	movwvs	r7, #13345	; 0x3421
 3f0:	2f3e3d20 	svccs	0x003e3d20
 3f4:	03040200 	movweq	r0, #16896	; 0x4200
 3f8:	0402003d 	streq	r0, [r2], #-61	; 0xffffffc3
 3fc:	02005703 	andeq	r5, r0, #786432	; 0xc0000
 400:	3c060104 	stfccs	f0, [r6], {4}
 404:	3d3d3e06 	ldccc	14, cr3, [sp, #-24]!	; 0xffffffe8
 408:	2f3e3d22 	svccs	0x003e3d22
 40c:	03040200 	movweq	r0, #16896	; 0x4200
 410:	0402003d 	streq	r0, [r2], #-61	; 0xffffffc3
 414:	02005703 	andeq	r5, r0, #786432	; 0xc0000
 418:	3c060104 	stfccs	f0, [r6], {4}
 41c:	3d3d3e06 	ldccc	14, cr3, [sp, #-24]!	; 0xffffffe8
 420:	2f3e3d22 	svccs	0x003e3d22
 424:	03040200 	movweq	r0, #16896	; 0x4200
 428:	0402003d 	streq	r0, [r2], #-61	; 0xffffffc3
 42c:	02005703 	andeq	r5, r0, #786432	; 0xc0000
 430:	3c060104 	stfccs	f0, [r6], {4}
 434:	3d3d3e06 	ldccc	14, cr3, [sp, #-24]!	; 0xffffffe8
 438:	000b0224 	andeq	r0, fp, r4, lsr #4
 43c:	05000101 	streq	r0, [r0, #-257]	; 0xfffffeff
 440:	00000002 	andeq	r0, r0, r2
 444:	01a60300 			; <UNDEFINED> instruction: 0x01a60300
 448:	2e039101 	mvfcss	f1, f1
 44c:	20550374 	subscs	r0, r5, r4, ror r3
 450:	03580a03 	cmpeq	r8, #12288	; 0x3000
 454:	22592079 	subscs	r2, r9, #121	; 0x79
 458:	03222559 			; <UNDEFINED> instruction: 0x03222559
 45c:	7903580a 	stmdbvc	r3, {r1, r3, fp, ip, lr}
 460:	59225920 	stmdbpl	r2!, {r5, r8, fp, ip, lr}
 464:	0a032225 	beq	c8d00 <_Min_Stack_Size+0xc8900>
 468:	20790358 	rsbscs	r0, r9, r8, asr r3
 46c:	25592259 	ldrbcs	r2, [r9, #-601]	; 0xfffffda7
 470:	000c0226 	andeq	r0, ip, r6, lsr #4
 474:	05000101 	streq	r0, [r0, #-257]	; 0xfffffeff
 478:	00000002 	andeq	r0, r0, r2
 47c:	01da0300 	bicseq	r0, sl, r0, lsl #6
 480:	25038301 	strcs	r8, [r3, #-769]	; 0xfffffcff
 484:	205e0374 	subscs	r0, lr, r4, ror r3
 488:	03580903 	cmpeq	r8, #49152	; 0xc000
 48c:	224b207a 	subcs	r2, fp, #122	; 0x7a
 490:	0322223d 			; <UNDEFINED> instruction: 0x0322223d
 494:	7a035809 	bvc	d64c0 <_Min_Stack_Size+0xd60c0>
 498:	3d224b20 	vstmdbcc	r2!, {d4-d19}
 49c:	09032222 	stmdbeq	r3, {r1, r5, r9, sp}
 4a0:	207a0358 	rsbscs	r0, sl, r8, asr r3
 4a4:	223d224b 	eorscs	r2, sp, #-1342177276	; 0xb0000004
 4a8:	000c0226 	andeq	r0, ip, r6, lsr #4
 4ac:	05000101 	streq	r0, [r0, #-257]	; 0xfffffeff
 4b0:	00000002 	andeq	r0, r0, r2
 4b4:	02850300 	addeq	r0, r5, #0, 6
 4b8:	0e038301 	cdpeq	3, 0, cr8, cr3, cr1, {0}
 4bc:	20740374 	rsbscs	r0, r4, r4, ror r3
 4c0:	22a022a0 	adccs	r2, r0, #160, 4
 4c4:	0b02289f 	bleq	8a748 <_Min_Stack_Size+0x8a348>
 4c8:	00010100 	andeq	r0, r1, r0, lsl #2
 4cc:	00000205 	andeq	r0, r0, r5, lsl #4
 4d0:	9c030000 	stcls	0, cr0, [r3], {-0}
 4d4:	33830102 	orrcc	r0, r3, #-2147483648	; 0x80000000
 4d8:	03740d03 	cmneq	r4, #3, 26	; 0xc0
 4dc:	22912076 	addscs	r2, r1, #118	; 0x76
 4e0:	25912291 	ldrcs	r2, [r1, #657]	; 0x291
 4e4:	000b0221 	andeq	r0, fp, r1, lsr #4
 4e8:	05000101 	streq	r0, [r0, #-257]	; 0xfffffeff
 4ec:	00000002 	andeq	r0, r0, r2
 4f0:	02b50300 	adcseq	r0, r5, #0, 6
 4f4:	19039101 	stmdbne	r3, {r0, r8, ip, pc}
 4f8:	206a0374 	rsbcs	r0, sl, r4, ror r3
 4fc:	aebb1e5c 	mrcge	14, 5, r1, cr11, cr12, {2}
 500:	bb1e5c22 	bllt	797590 <_Min_Stack_Size+0x797190>
 504:	1e5c22ae 	cdpne	2, 5, cr2, cr12, cr14, {5}
 508:	0226aebb 	eoreq	sl, r6, #2992	; 0xbb0
 50c:	0101000b 	tsteq	r1, fp
 510:	00000116 	andeq	r0, r0, r6, lsl r1
 514:	00930002 	addseq	r0, r3, r2
 518:	01020000 	mrseq	r0, (UNDEF: 2)
 51c:	000d0efb 	strdeq	r0, [sp], -fp
 520:	01010101 	tsteq	r1, r1, lsl #2
 524:	01000000 	mrseq	r0, (UNDEF: 0)
 528:	2e010000 	cdpcs	0, 0, cr0, cr1, cr0, {0}
 52c:	72532f2e 	subsvc	r2, r3, #46, 30	; 0xb8
 530:	2e2e0063 	cdpcs	0, 2, cr0, cr14, cr3, {3}
 534:	636e492f 	cmnvs	lr, #770048	; 0xbc000
 538:	564e0000 	strbpl	r0, [lr], -r0
 53c:	705f4349 	subsvc	r4, pc, r9, asr #6
 540:	72676f72 	rsbvc	r6, r7, #456	; 0x1c8
 544:	632e6d61 			; <UNDEFINED> instruction: 0x632e6d61
 548:	00000100 	andeq	r0, r0, r0, lsl #2
 54c:	5f445453 	svcpl	0x00445453
 550:	45505954 	ldrbmi	r5, [r0, #-2388]	; 0xfffff6ac
 554:	00682e53 	rsbeq	r2, r8, r3, asr lr
 558:	4e000002 	cdpmi	0, 0, cr0, cr0, cr2, {0}
 55c:	5f434956 	svcpl	0x00434956
 560:	65746e69 	ldrbvs	r6, [r4, #-3689]!	; 0xfffff197
 564:	63616672 	cmnvs	r1, #119537664	; 0x7200000
 568:	00682e65 	rsbeq	r2, r8, r5, ror #28
 56c:	42000002 	andmi	r0, r0, #2
 570:	4d5f5449 	cfldrdmi	mvd5, [pc, #-292]	; 454 <_Min_Stack_Size+0x54>
 574:	2e485441 	cdpcs	4, 4, cr5, cr8, cr1, {2}
 578:	00020068 	andeq	r0, r2, r8, rrx
 57c:	4d4f4300 	stclmi	3, cr4, [pc, #-0]	; 584 <_Min_Stack_Size+0x184>
 580:	2e4e4f4d 	cdpcs	15, 4, cr4, cr14, cr13, {2}
 584:	00020068 	andeq	r0, r2, r8, rrx
 588:	49564e00 	ldmdbmi	r6, {r9, sl, fp, lr}^
 58c:	6f635f43 	svcvs	0x00635f43
 590:	6769666e 	strbvs	r6, [r9, -lr, ror #12]!
 594:	0200682e 	andeq	r6, r0, #3014656	; 0x2e0000
 598:	564e0000 	strbpl	r0, [lr], -r0
 59c:	705f4349 	subsvc	r4, pc, r9, asr #6
 5a0:	61766972 	cmnvs	r6, r2, ror r9
 5a4:	682e6574 	stmdavs	lr!, {r2, r4, r5, r6, r8, sl, sp, lr}
 5a8:	00000200 	andeq	r0, r0, r0, lsl #4
 5ac:	02050000 	andeq	r0, r5, #0
 5b0:	08000528 	stmdaeq	r0, {r3, r5, r8, sl}
 5b4:	0100c203 	tsteq	r0, r3, lsl #4
 5b8:	0b033e59 	bleq	cff24 <_Min_Stack_Size+0xcfb24>
 5bc:	2077039e 			; <UNDEFINED> instruction: 0x2077039e
 5c0:	02a43d3e 	adceq	r3, r4, #3968	; 0xf80
 5c4:	01010009 	tsteq	r1, r9
 5c8:	00020500 	andeq	r0, r2, r0, lsl #10
 5cc:	03000000 	movweq	r0, #0
 5d0:	590100d3 	stmdbpl	r1, {r0, r1, r4, r6, r7}
 5d4:	9e0b033f 	mcrls	3, 0, r0, cr11, cr15, {1}
 5d8:	3e207703 	cdpcc	7, 2, cr7, cr0, cr3, {0}
 5dc:	0902a43d 	stmdbeq	r2, {r0, r2, r3, r4, r5, sl, sp, pc}
 5e0:	00010100 	andeq	r0, r1, r0, lsl #2
 5e4:	00000205 	andeq	r0, r0, r5, lsl #4
 5e8:	e5030000 	str	r0, [r3, #-0]
 5ec:	3e590100 	rdfcce	f0, f1, f0
 5f0:	039e0b03 	orrseq	r0, lr, #3072	; 0xc00
 5f4:	3d3e2077 	ldccc	0, cr2, [lr, #-476]!	; 0xfffffe24
 5f8:	000902a4 	andeq	r0, r9, r4, lsr #5
 5fc:	05000101 	streq	r0, [r0, #-257]	; 0xfffffeff
 600:	00000002 	andeq	r0, r0, r2
 604:	00f70300 	rscseq	r0, r7, r0, lsl #6
 608:	3e2f5901 	vmulcc.f16	s10, s30, s2	; <UNPREDICTABLE>
 60c:	963d3ea0 	ldrtls	r3, [sp], -r0, lsr #29
 610:	000a0221 	andeq	r0, sl, r1, lsr #4
 614:	05000101 	streq	r0, [r0, #-257]	; 0xfffffeff
 618:	00000002 	andeq	r0, r0, r2
 61c:	018b0300 	orreq	r0, fp, r0, lsl #6
 620:	ca3e9301 	bgt	fa522c <_Min_Stack_Size+0xfa4e2c>
 624:	000a0291 	muleq	sl, r1, r2
 628:	00a40101 	adceq	r0, r4, r1, lsl #2
 62c:	00020000 	andeq	r0, r2, r0
 630:	00000087 	andeq	r0, r0, r7, lsl #1
 634:	0efb0102 	cdpeq	1, 15, cr0, cr11, cr2, {0}
 638:	0101000d 	tsteq	r1, sp
 63c:	00000101 	andeq	r0, r0, r1, lsl #2
 640:	00000100 	andeq	r0, r0, r0, lsl #2
 644:	2f2e2e01 	svccs	0x002e2e01
 648:	00637253 	rsbeq	r7, r3, r3, asr r2
 64c:	492f2e2e 	stmdbmi	pc!, {r1, r2, r3, r5, r9, sl, fp, sp}	; <UNPREDICTABLE>
 650:	0000636e 	andeq	r6, r0, lr, ror #6
 654:	43525350 	cmpmi	r2, #80, 6	; 0x40000001
 658:	6f72705f 	svcvs	0x0072705f
 65c:	6d617267 	sfmvs	f7, 2, [r1, #-412]!	; 0xfffffe64
 660:	0100632e 	tsteq	r0, lr, lsr #6
 664:	53500000 	cmppl	r0, #0
 668:	695f4352 	ldmdbvs	pc, {r1, r4, r6, r8, r9, lr}^	; <UNPREDICTABLE>
 66c:	7265746e 	rsbvc	r7, r5, #1845493760	; 0x6e000000
 670:	65636166 	strbvs	r6, [r3, #-358]!	; 0xfffffe9a
 674:	0200682e 	andeq	r6, r0, #3014656	; 0x2e0000
 678:	54530000 	ldrbpl	r0, [r3], #-0
 67c:	59545f44 	ldmdbpl	r4, {r2, r6, r8, r9, sl, fp, ip, lr}^
 680:	2e534550 	mrccs	5, 2, r4, cr3, cr0, {2}
 684:	00020068 	andeq	r0, r2, r8, rrx
 688:	54494200 	strbpl	r4, [r9], #-512	; 0xfffffe00
 68c:	54414d5f 	strbpl	r4, [r1], #-3423	; 0xfffff2a1
 690:	00682e48 	rsbeq	r2, r8, r8, asr #28
 694:	50000002 	andpl	r0, r0, r2
 698:	5f435253 	svcpl	0x00435253
 69c:	666e6f63 	strbtvs	r6, [lr], -r3, ror #30
 6a0:	682e6769 	stmdavs	lr!, {r0, r3, r5, r6, r8, r9, sl, sp, lr}
 6a4:	00000200 	andeq	r0, r0, r0, lsl #4
 6a8:	43525350 	cmpmi	r2, #80, 6	; 0x40000001
 6ac:	6972705f 	ldmdbvs	r2!, {r0, r1, r2, r3, r4, r6, ip, sp, lr}^
 6b0:	65746176 	ldrbvs	r6, [r4, #-374]!	; 0xfffffe8a
 6b4:	0200682e 	andeq	r6, r0, #3014656	; 0x2e0000
 6b8:	00000000 	andeq	r0, r0, r0
 6bc:	05800205 	streq	r0, [r0, #517]	; 0x205
 6c0:	c1030800 	tstgt	r3, r0, lsl #16
 6c4:	1f030100 	svcne	0x00030100
 6c8:	08120301 	ldmdaeq	r2, {r0, r8, r9}
 6cc:	0001024a 	andeq	r0, r1, sl, asr #4
 6d0:	00d80101 	sbcseq	r0, r8, r1, lsl #2
 6d4:	00020000 	andeq	r0, r2, r0
 6d8:	00000083 	andeq	r0, r0, r3, lsl #1
 6dc:	0efb0102 	cdpeq	1, 15, cr0, cr11, cr2, {0}
 6e0:	0101000d 	tsteq	r1, sp
 6e4:	00000101 	andeq	r0, r0, r1, lsl #2
 6e8:	00000100 	andeq	r0, r0, r0, lsl #2
 6ec:	2f2e2e01 	svccs	0x002e2e01
 6f0:	00637253 	rsbeq	r7, r3, r3, asr r2
 6f4:	492f2e2e 	stmdbmi	pc!, {r1, r2, r3, r5, r9, sl, fp, sp}	; <UNPREDICTABLE>
 6f8:	0000636e 	andeq	r6, r0, lr, ror #6
 6fc:	5f434352 	svcpl	0x00434352
 700:	676f7270 			; <UNDEFINED> instruction: 0x676f7270
 704:	2e6d6172 	mcrcs	1, 3, r6, cr13, cr2, {3}
 708:	00010063 	andeq	r0, r1, r3, rrx
 70c:	44545300 	ldrbmi	r5, [r4], #-768	; 0xfffffd00
 710:	5059545f 	subspl	r5, r9, pc, asr r4
 714:	682e5345 	stmdavs	lr!, {r0, r2, r6, r8, r9, ip, lr}
 718:	00000200 	andeq	r0, r0, r0, lsl #4
 71c:	5f544942 	svcpl	0x00544942
 720:	4854414d 	ldmdami	r4, {r0, r2, r3, r6, r8, lr}^
 724:	0200682e 	andeq	r6, r0, #3014656	; 0x2e0000
 728:	43520000 	cmpmi	r2, #0
 72c:	6e695f43 	cdpvs	15, 6, cr5, cr9, cr3, {2}
 730:	66726574 			; <UNDEFINED> instruction: 0x66726574
 734:	2e656361 	cdpcs	3, 6, cr6, cr5, cr1, {3}
 738:	00020068 	andeq	r0, r2, r8, rrx
 73c:	43435200 	movtmi	r5, #12800	; 0x3200
 740:	6972705f 	ldmdbvs	r2!, {r0, r1, r2, r3, r4, r6, ip, sp, lr}^
 744:	65746176 	ldrbvs	r6, [r4, #-374]!	; 0xfffffe8a
 748:	0200682e 	andeq	r6, r0, #3014656	; 0x2e0000
 74c:	43520000 	cmpmi	r2, #0
 750:	6f635f43 	svcvs	0x00635f43
 754:	6769666e 	strbvs	r6, [r9, -lr, ror #12]!
 758:	0200682e 	andeq	r6, r0, #3014656	; 0x2e0000
 75c:	00000000 	andeq	r0, r0, r0
 760:	05ac0205 	streq	r0, [ip, #517]!	; 0x205
 764:	0d030800 	stceq	8, cr0, [r3, #-0]
 768:	2e0b0301 	cdpcs	3, 0, cr0, cr11, cr1, {0}
 76c:	3c14034b 	ldccc	3, cr0, [r4], {75}	; 0x4b
 770:	01000902 	tsteq	r0, r2, lsl #18
 774:	02050001 	andeq	r0, r5, #1
 778:	080005d0 	stmdaeq	r0, {r4, r6, r7, r8, sl}
 77c:	84013003 	strhi	r3, [r1], #-3
 780:	740d033f 	strvc	r0, [sp], #-831	; 0xfffffcc1
 784:	ad207503 	cfstr32ge	mvfx7, [r0, #-12]!
 788:	ac0903ad 	stcge	3, cr0, [r9], {173}	; 0xad
 78c:	01000c02 	tsteq	r0, r2, lsl #24
 790:	02050001 	andeq	r0, r5, #1
 794:	00000000 	andeq	r0, r0, r0
 798:	0100c503 	tsteq	r0, r3, lsl #10
 79c:	0d033f84 	stceq	15, cr3, [r3, #-528]	; 0xfffffdf0
 7a0:	20750374 	rsbscs	r0, r5, r4, ror r3
 7a4:	0903bbbb 	stmdbeq	r3, {r0, r1, r3, r4, r5, r7, r8, r9, fp, ip, sp, pc}
 7a8:	000b02ba 			; <UNDEFINED> instruction: 0x000b02ba
 7ac:	023d0101 	eorseq	r0, sp, #1073741824	; 0x40000000
 7b0:	00020000 	andeq	r0, r2, r0
 7b4:	0000008f 	andeq	r0, r0, pc, lsl #1
 7b8:	0efb0102 	cdpeq	1, 15, cr0, cr11, cr2, {0}
 7bc:	0101000d 	tsteq	r1, sp
 7c0:	00000101 	andeq	r0, r0, r1, lsl #2
 7c4:	00000100 	andeq	r0, r0, r0, lsl #2
 7c8:	2f2e2e01 	svccs	0x002e2e01
 7cc:	00637253 	rsbeq	r7, r3, r3, asr r2
 7d0:	492f2e2e 	stmdbmi	pc!, {r1, r2, r3, r5, r9, sl, fp, sp}	; <UNPREDICTABLE>
 7d4:	0000636e 	andeq	r6, r0, lr, ror #6
 7d8:	5f4b5453 	svcpl	0x004b5453
 7dc:	676f7270 			; <UNDEFINED> instruction: 0x676f7270
 7e0:	2e6d6172 	mcrcs	1, 3, r6, cr13, cr2, {3}
 7e4:	00010063 	andeq	r0, r1, r3, rrx
 7e8:	44545300 	ldrbmi	r5, [r4], #-768	; 0xfffffd00
 7ec:	5059545f 	subspl	r5, r9, pc, asr r4
 7f0:	682e5345 	stmdavs	lr!, {r0, r2, r6, r8, r9, ip, lr}
 7f4:	00000200 	andeq	r0, r0, r0, lsl #4
 7f8:	5f4b5453 	svcpl	0x004b5453
 7fc:	76697270 			; <UNDEFINED> instruction: 0x76697270
 800:	2e657461 	cdpcs	4, 6, cr7, cr5, cr1, {3}
 804:	00020068 	andeq	r0, r2, r8, rrx
 808:	4b545300 	blmi	1515410 <_Min_Stack_Size+0x1515010>
 80c:	746e695f 	strbtvc	r6, [lr], #-2399	; 0xfffff6a1
 810:	61667265 	cmnvs	r6, r5, ror #4
 814:	682e6563 	stmdavs	lr!, {r0, r1, r5, r6, r8, sl, sp, lr}
 818:	00000200 	andeq	r0, r0, r0, lsl #4
 81c:	5f544942 	svcpl	0x00544942
 820:	4854414d 	ldmdami	r4, {r0, r2, r3, r6, r8, lr}^
 824:	0200682e 	andeq	r6, r0, #3014656	; 0x2e0000
 828:	4f430000 	svcmi	0x00430000
 82c:	4e4f4d4d 	cdpmi	13, 4, cr4, cr15, cr13, {2}
 830:	0200682e 	andeq	r6, r0, #3014656	; 0x2e0000
 834:	54530000 	ldrbpl	r0, [r3], #-0
 838:	6f635f4b 	svcvs	0x00635f4b
 83c:	6769666e 	strbvs	r6, [r9, -lr, ror #12]!
 840:	0200682e 	andeq	r6, r0, #3014656	; 0x2e0000
 844:	00000000 	andeq	r0, r0, r0
 848:	00000205 	andeq	r0, r0, r5, lsl #4
 84c:	c1030000 	mrsgt	r0, (UNDEF: 3)
 850:	354e0100 	strbcc	r0, [lr, #-256]	; 0xffffff00
 854:	0802215a 	stmdaeq	r2, {r1, r3, r4, r6, r8, sp}
 858:	00010100 	andeq	r0, r1, r0, lsl #2
 85c:	00000205 	andeq	r0, r0, r5, lsl #4
 860:	d6030000 	strle	r0, [r3], -r0
 864:	3d2f0100 	stfccs	f0, [pc, #-0]	; 86c <_Min_Stack_Size+0x46c>
 868:	0007024b 	andeq	r0, r7, fp, asr #4
 86c:	05000101 	streq	r0, [r0, #-257]	; 0xfffffeff
 870:	00000002 	andeq	r0, r0, r2
 874:	00db0300 	sbcseq	r0, fp, r0, lsl #6
 878:	304c4b01 	subcc	r4, ip, r1, lsl #22
 87c:	0200673e 	andeq	r6, r0, #16252928	; 0xf80000
 880:	3e750104 	rpwccs	f0, f5, f4
 884:	023f3d68 	eorseq	r3, pc, #104, 26	; 0x1a00
 888:	01010007 	tsteq	r1, r7
 88c:	00020500 	andeq	r0, r2, r0, lsl #10
 890:	03000000 	movweq	r0, #0
 894:	5a0100ee 	bpl	40c54 <_Min_Stack_Size+0x40854>
 898:	68683e68 	stmdavs	r8!, {r3, r5, r6, r9, sl, fp, ip, sp}^
 89c:	01040200 	mrseq	r0, R12_usr
 8a0:	76062006 	strvc	r2, [r6], -r6
 8a4:	023d3d68 	eorseq	r3, sp, #104, 26	; 0x1a00
 8a8:	01010006 	tsteq	r1, r6
 8ac:	00020500 	andeq	r0, r2, r0, lsl #10
 8b0:	03000000 	movweq	r0, #0
 8b4:	5a010180 	bpl	40ebc <_Min_Stack_Size+0x40abc>
 8b8:	68683e5a 	stmdavs	r8!, {r1, r3, r4, r6, r9, sl, fp, ip, sp}^
 8bc:	01040200 	mrseq	r0, R12_usr
 8c0:	76062006 	strvc	r2, [r6], -r6
 8c4:	023d3d68 	eorseq	r3, sp, #104, 26	; 0x1a00
 8c8:	01010009 	tsteq	r1, r9
 8cc:	00020500 	andeq	r0, r2, r0, lsl #10
 8d0:	03000000 	movweq	r0, #0
 8d4:	59010192 	stmdbpl	r1, {r1, r4, r7, r8}
 8d8:	683e684d 	ldmdavs	lr!, {r0, r2, r3, r6, fp, sp, lr}
 8dc:	026a3e3e 	rsbeq	r3, sl, #992	; 0x3e0
 8e0:	0101000c 	tsteq	r1, ip
 8e4:	00020500 	andeq	r0, r2, r0, lsl #10
 8e8:	03000000 	movweq	r0, #0
 8ec:	670101a6 	strvs	r0, [r1, -r6, lsr #3]
 8f0:	3e683e68 	cdpcc	14, 6, cr3, cr8, cr8, {3}
 8f4:	0268683e 	rsbeq	r6, r8, #4063232	; 0x3e0000
 8f8:	0101000b 	tsteq	r1, fp
 8fc:	00020500 	andeq	r0, r2, r0, lsl #10
 900:	03000000 	movweq	r0, #0
 904:	670101b7 			; <UNDEFINED> instruction: 0x670101b7
 908:	3e683e5a 	mcrcc	14, 3, r3, cr8, cr10, {2}
 90c:	0267683e 	rsbeq	r6, r7, #4063232	; 0x3e0000
 910:	0101000c 	tsteq	r1, ip
 914:	00020500 	andeq	r0, r2, r0, lsl #10
 918:	03000000 	movweq	r0, #0
 91c:	590101c8 	stmdbpl	r1, {r3, r6, r7, r8}
 920:	683e684d 	ldmdavs	lr!, {r0, r2, r3, r6, fp, sp, lr}
 924:	02693e3e 	rsbeq	r3, r9, #992	; 0x3e0
 928:	0101000c 	tsteq	r1, ip
 92c:	00020500 	andeq	r0, r2, r0, lsl #10
 930:	03000000 	movweq	r0, #0
 934:	670101db 			; <UNDEFINED> instruction: 0x670101db
 938:	3e683e68 	cdpcc	14, 6, cr3, cr8, cr8, {3}
 93c:	0267683e 	rsbeq	r6, r7, #4063232	; 0x3e0000
 940:	0101000b 	tsteq	r1, fp
 944:	00020500 	andeq	r0, r2, r0, lsl #10
 948:	03000000 	movweq	r0, #0
 94c:	670101eb 	strvs	r0, [r1, -fp, ror #3]
 950:	3e683e5a 	mcrcc	14, 3, r3, cr8, cr10, {2}
 954:	0267683e 	rsbeq	r6, r7, #4063232	; 0x3e0000
 958:	0101000c 	tsteq	r1, ip
 95c:	00020500 	andeq	r0, r2, r0, lsl #10
 960:	03000000 	movweq	r0, #0
 964:	3d0101fb 	stfccs	f0, [r1, #-1004]	; 0xfffffc14
 968:	0221672f 	eoreq	r6, r1, #12320768	; 0xbc0000
 96c:	01010008 	tsteq	r1, r8
 970:	00020500 	andeq	r0, r2, r0, lsl #10
 974:	03000000 	movweq	r0, #0
 978:	3d010281 	sfmcc	f0, 4, [r1, #-516]	; 0xfffffdfc
 97c:	21e5a13d 	mvncs	sl, sp, lsr r1
 980:	01000602 	tsteq	r0, r2, lsl #12
 984:	02050001 	andeq	r0, r5, #1
 988:	00000000 	andeq	r0, r0, r0
 98c:	01028a03 	tsteq	r2, r3, lsl #20
 990:	d79f3d3d 			; <UNDEFINED> instruction: 0xd79f3d3d
 994:	00090221 	andeq	r0, r9, r1, lsr #4
 998:	05000101 	streq	r0, [r0, #-257]	; 0xfffffeff
 99c:	00000002 	andeq	r0, r0, r2
 9a0:	02920300 	addseq	r0, r2, #0, 6
 9a4:	3d2f3d01 	stccc	13, cr3, [pc, #-4]!	; 9a8 <_Min_Stack_Size+0x5a8>
 9a8:	00070221 	andeq	r0, r7, r1, lsr #4
 9ac:	05000101 	streq	r0, [r0, #-257]	; 0xfffffeff
 9b0:	00000002 	andeq	r0, r0, r2
 9b4:	02980300 	addseq	r0, r8, #0, 6
 9b8:	d73d3d01 	ldrle	r3, [sp, -r1, lsl #26]!
 9bc:	00070221 	andeq	r0, r7, r1, lsr #4
 9c0:	05000101 	streq	r0, [r0, #-257]	; 0xfffffeff
 9c4:	00000002 	andeq	r0, r0, r2
 9c8:	029e0300 	addseq	r0, lr, #0, 6
 9cc:	c93d3d01 	ldmdbgt	sp!, {r0, r8, sl, fp, ip, sp}
 9d0:	00080221 	andeq	r0, r8, r1, lsr #4
 9d4:	05000101 	streq	r0, [r0, #-257]	; 0xfffffeff
 9d8:	00065002 	andeq	r5, r6, r2
 9dc:	02a40308 	adceq	r0, r4, #8, 6	; 0x20000000
 9e0:	4d2f3d01 	stcmi	13, cr3, [pc, #-4]!	; 9e4 <_Min_Stack_Size+0x5e4>
 9e4:	3f3d6768 	svccc	0x003d6768
 9e8:	0b02753e 	bleq	9dee8 <_Min_Stack_Size+0x9dae8>
 9ec:	1c010100 	stfnes	f0, [r1], {-0}
 9f0:	02000003 	andeq	r0, r0, #3
 9f4:	0000ab00 	andeq	sl, r0, r0, lsl #22
 9f8:	fb010200 	blx	41202 <_Min_Stack_Size+0x40e02>
 9fc:	01000d0e 	tsteq	r0, lr, lsl #26
 a00:	00010101 	andeq	r0, r1, r1, lsl #2
 a04:	00010000 	andeq	r0, r1, r0
 a08:	2e2e0100 	sufcse	f0, f6, f0
 a0c:	6372532f 	cmnvs	r2, #-1140850688	; 0xbc000000
 a10:	2f2e2e00 	svccs	0x002e2e00
 a14:	00636e49 	rsbeq	r6, r3, r9, asr #28
 a18:	41535500 	cmpmi	r3, r0, lsl #10
 a1c:	705f5452 	subsvc	r5, pc, r2, asr r4	; <UNPREDICTABLE>
 a20:	72676f72 	rsbvc	r6, r7, #456	; 0x1c8
 a24:	632e6d61 			; <UNDEFINED> instruction: 0x632e6d61
 a28:	00000100 	andeq	r0, r0, r0, lsl #2
 a2c:	5f445453 	svcpl	0x00445453
 a30:	45505954 	ldrbmi	r5, [r0, #-2388]	; 0xfffff6ac
 a34:	00682e53 	rsbeq	r2, r8, r3, asr lr
 a38:	43000002 	movwmi	r0, #2
 a3c:	4f4d4d4f 	svcmi	0x004d4d4f
 a40:	00682e4e 	rsbeq	r2, r8, lr, asr #28
 a44:	55000002 	strpl	r0, [r0, #-2]
 a48:	54524153 	ldrbpl	r4, [r2], #-339	; 0xfffffead
 a4c:	746e695f 	strbtvc	r6, [lr], #-2399	; 0xfffff6a1
 a50:	61667265 	cmnvs	r6, r5, ror #4
 a54:	682e6563 	stmdavs	lr!, {r0, r1, r5, r6, r8, sl, sp, lr}
 a58:	00000200 	andeq	r0, r0, r0, lsl #4
 a5c:	52415355 	subpl	r5, r1, #1409286145	; 0x54000001
 a60:	72705f54 	rsbsvc	r5, r0, #84, 30	; 0x150
 a64:	74617669 	strbtvc	r7, [r1], #-1641	; 0xfffff997
 a68:	00682e65 	rsbeq	r2, r8, r5, ror #28
 a6c:	42000002 	andmi	r0, r0, #2
 a70:	4d5f5449 	cfldrdmi	mvd5, [pc, #-292]	; 954 <_Min_Stack_Size+0x554>
 a74:	2e485441 	cdpcs	4, 4, cr5, cr8, cr1, {2}
 a78:	00020068 	andeq	r0, r2, r8, rrx
 a7c:	49504700 	ldmdbmi	r0, {r8, r9, sl, lr}^
 a80:	6e695f4f 	cdpvs	15, 6, cr5, cr9, cr15, {2}
 a84:	66726574 			; <UNDEFINED> instruction: 0x66726574
 a88:	2e656361 	cdpcs	3, 6, cr6, cr5, cr1, {3}
 a8c:	00020068 	andeq	r0, r2, r8, rrx
 a90:	41535500 	cmpmi	r3, r0, lsl #10
 a94:	635f5452 	cmpvs	pc, #1375731712	; 0x52000000
 a98:	69666e6f 	stmdbvs	r6!, {r0, r1, r2, r3, r5, r6, r9, sl, fp, sp, lr}^
 a9c:	00682e67 	rsbeq	r2, r8, r7, ror #28
 aa0:	00000002 	andeq	r0, r0, r2
 aa4:	00020500 	andeq	r0, r2, r0, lsl #10
 aa8:	03000000 	movweq	r0, #0
 aac:	670100c6 	strvs	r0, [r1, -r6, asr #1]
 ab0:	2f322f2f 	svccs	0x00322f2f
 ab4:	0346752f 	movteq	r7, #25903	; 0x652f
 ab8:	2d2f3c10 	stccs	12, cr3, [pc, #-64]!	; a80 <_Min_Stack_Size+0x680>
 abc:	3f322c30 	svccc	0x00322c30
 ac0:	79882f59 	stmibvc	r8, {r0, r3, r4, r6, r8, r9, sl, fp, sp}
 ac4:	ccc9c91d 			; <UNDEFINED> instruction: 0xccc9c91d
 ac8:	01000f02 	tsteq	r0, r2, lsl #30
 acc:	02050001 	andeq	r0, r5, #1
 ad0:	00000000 	andeq	r0, r0, r0
 ad4:	0100f603 	tsteq	r0, r3, lsl #12	; <UNPREDICTABLE>
 ad8:	74120367 	ldrvc	r0, [r2], #-871	; 0xfffffc99
 adc:	00207103 	eoreq	r7, r0, r3, lsl #2
 ae0:	06010402 	streq	r0, [r1], -r2, lsl #8
 ae4:	4b750620 	blmi	1d4236c <_Min_Stack_Size+0x1d41f6c>
 ae8:	01040200 	mrseq	r0, R12_usr
 aec:	75062006 	strvc	r2, [r6, #-6]
 af0:	04020022 	streq	r0, [r2], #-34	; 0xffffffde
 af4:	06200601 	strteq	r0, [r0], -r1, lsl #12
 af8:	02004b75 	andeq	r4, r0, #119808	; 0x1d400
 afc:	20060104 	andcs	r0, r6, r4, lsl #2
 b00:	00227506 	eoreq	r7, r2, r6, lsl #10
 b04:	06010402 	streq	r0, [r1], -r2, lsl #8
 b08:	4b750620 	blmi	1d42390 <_Min_Stack_Size+0x1d41f90>
 b0c:	01040200 	mrseq	r0, R12_usr
 b10:	75062006 	strvc	r2, [r6, #-6]
 b14:	000b0224 	andeq	r0, fp, r4, lsr #4
 b18:	05000101 	streq	r0, [r0, #-257]	; 0xfffffeff
 b1c:	00000002 	andeq	r0, r0, r2
 b20:	018e0300 	orreq	r0, lr, r0, lsl #6
 b24:	03756701 	cmneq	r5, #262144	; 0x40000
 b28:	7703740c 	strvc	r7, [r3, -ip, lsl #8]
 b2c:	4b224b20 	blmi	8937b4 <_Min_Stack_Size+0x8933b4>
 b30:	02244b22 	eoreq	r4, r4, #34816	; 0x8800
 b34:	0101000c 	tsteq	r1, ip
 b38:	00020500 	andeq	r0, r2, r0, lsl #10
 b3c:	03000000 	movweq	r0, #0
 b40:	680101a1 	stmdavs	r1, {r0, r5, r7, r8}
 b44:	0f037784 	svceq	0x00037784
 b48:	20740374 	rsbscs	r0, r4, r4, ror r3
 b4c:	01040200 	mrseq	r0, R12_usr
 b50:	75062006 	strvc	r2, [r6, #-6]
 b54:	02002283 	andeq	r2, r0, #805306376	; 0x30000008
 b58:	20060104 	andcs	r0, r6, r4, lsl #2
 b5c:	22837506 	addcs	r7, r3, #25165824	; 0x1800000
 b60:	01040200 	mrseq	r0, R12_usr
 b64:	75062006 	strvc	r2, [r6, #-6]
 b68:	20090383 	andcs	r0, r9, r3, lsl #7
 b6c:	03740f03 	cmneq	r4, #3, 30
 b70:	02002074 	andeq	r2, r0, #116	; 0x74
 b74:	20060104 	andcs	r0, r6, r4, lsl #2
 b78:	22757506 	rsbscs	r7, r5, #25165824	; 0x1800000
 b7c:	01040200 	mrseq	r0, R12_usr
 b80:	75062006 	strvc	r2, [r6, #-6]
 b84:	02002275 	andeq	r2, r0, #1342177287	; 0x50000007
 b88:	20060104 	andcs	r0, r6, r4, lsl #2
 b8c:	28757506 	ldmdacs	r5!, {r1, r2, r8, sl, ip, sp, lr}^
 b90:	740f0376 	strvc	r0, [pc], #-886	; b98 <_Min_Stack_Size+0x798>
 b94:	00207403 	eoreq	r7, r0, r3, lsl #8
 b98:	06010402 	streq	r0, [r1], -r2, lsl #8
 b9c:	75750620 	ldrbvc	r0, [r5, #-1568]!	; 0xfffff9e0
 ba0:	04020022 	streq	r0, [r2], #-34	; 0xffffffde
 ba4:	06200601 	strteq	r0, [r0], -r1, lsl #12
 ba8:	00227575 	eoreq	r7, r2, r5, ror r5
 bac:	06010402 	streq	r0, [r1], -r2, lsl #8
 bb0:	75750620 	ldrbvc	r0, [r5, #-1568]!	; 0xfffff9e0
 bb4:	740f0328 	strvc	r0, [pc], #-808	; bbc <_Min_Stack_Size+0x7bc>
 bb8:	00207403 	eoreq	r7, r0, r3, lsl #8
 bbc:	06010402 	streq	r0, [r1], -r2, lsl #8
 bc0:	83750620 	cmnhi	r5, #32, 12	; 0x2000000
 bc4:	04020022 	streq	r0, [r2], #-34	; 0xffffffde
 bc8:	06200601 	strteq	r0, [r0], -r1, lsl #12
 bcc:	00228375 	eoreq	r8, r2, r5, ror r3
 bd0:	06010402 	streq	r0, [r1], -r2, lsl #8
 bd4:	83750620 	cmnhi	r5, #32, 12	; 0x2000000
 bd8:	000e0226 	andeq	r0, lr, r6, lsr #4
 bdc:	05000101 	streq	r0, [r0, #-257]	; 0xfffffeff
 be0:	00000002 	andeq	r0, r0, r2
 be4:	02800300 	addeq	r0, r0, #0, 6
 be8:	05025a01 	streq	r5, [r2, #-2561]	; 0xfffff5ff
 bec:	00010100 	andeq	r0, r1, r0, lsl #2
 bf0:	00000205 	andeq	r0, r0, r5, lsl #4
 bf4:	86030000 	strhi	r0, [r3], -r0
 bf8:	676a0102 	strbvs	r0, [sl, -r2, lsl #2]!
 bfc:	59132202 	ldmdbpl	r3, {r1, r9, sp}
 c00:	3e3e952f 	cdpcc	5, 3, cr9, cr14, cr15, {1}
 c04:	000a02d8 	ldrdeq	r0, [sl], -r8
 c08:	05000101 	streq	r0, [r0, #-257]	; 0xfffffeff
 c0c:	00000002 	andeq	r0, r0, r2
 c10:	029b0300 	addseq	r0, fp, #0, 6
 c14:	10035a01 	andne	r5, r3, r1, lsl #20
 c18:	6a764266 	bvs	1d915b8 <_Min_Stack_Size+0x1d911b8>
 c1c:	5c596c76 	mrrcpl	12, 7, r6, r9, cr6
 c20:	00f90368 	rscseq	r0, r9, r8, ror #6
 c24:	7f890358 	svcvc	0x00890358
 c28:	f5036820 			; <UNDEFINED> instruction: 0xf5036820
 c2c:	8e035800 	cdphi	8, 0, cr5, cr3, cr0, {0}
 c30:	596e207f 	stmdbpl	lr!, {r0, r1, r2, r3, r4, r5, r6, sp}^
 c34:	5800e903 	stmdapl	r0, {r0, r1, r8, fp, sp, lr, pc}
 c38:	207f9d03 	rsbscs	r9, pc, r3, lsl #26
 c3c:	766a7642 	strbtvc	r7, [sl], -r2, asr #12
 c40:	685c596c 	ldmdavs	ip, {r2, r3, r5, r6, r8, fp, ip, lr}^
 c44:	5800c803 	stmdapl	r0, {r0, r1, fp, lr, pc}
 c48:	207fba03 	rsbscs	fp, pc, r3, lsl #20
 c4c:	00c40368 	sbceq	r0, r4, r8, ror #6
 c50:	7fbf0358 	svcvc	0x00bf0358
 c54:	03596020 	cmpeq	r9, #32
 c58:	4b035838 	blmi	d6d40 <_Min_Stack_Size+0xd6940>
 c5c:	6a764220 	bvs	1d914e4 <_Min_Stack_Size+0x1d910e4>
 c60:	5c596c76 	mrrcpl	12, 7, r6, r9, cr6
 c64:	581a0368 	ldmdapl	sl, {r3, r5, r6, r8, r9}
 c68:	68206803 	stmdavs	r0!, {r0, r1, fp, sp, lr}
 c6c:	03581603 	cmpeq	r8, #3145728	; 0x300000
 c70:	5960206d 	stmdbpl	r0!, {r0, r2, r3, r5, r6, sp}^
 c74:	02580a03 	subseq	r0, r8, #12288	; 0x3000
 c78:	01010006 	tsteq	r1, r6
 c7c:	b0020500 	andlt	r0, r2, r0, lsl #10
 c80:	03080006 	movweq	r0, #32774	; 0x8006
 c84:	030103c4 	movweq	r0, #5060	; 0x13c4
 c88:	67842e15 	usada8vs	r4, r5, lr, r2
 c8c:	00060268 	andeq	r0, r6, r8, ror #4
 c90:	05000101 	streq	r0, [r0, #-257]	; 0xfffffeff
 c94:	0006e802 	andeq	lr, r6, r2, lsl #16
 c98:	03e00308 	mvneq	r0, #8, 6	; 0x20000000
 c9c:	2e150301 	cdpcs	3, 1, cr0, cr5, cr1, {0}
 ca0:	02676784 	rsbeq	r6, r7, #132, 14	; 0x2100000
 ca4:	01010006 	tsteq	r1, r6
 ca8:	20020500 	andcs	r0, r2, r0, lsl #10
 cac:	03080007 	movweq	r0, #32775	; 0x8007
 cb0:	030103fb 	movweq	r0, #5115	; 0x13fb
 cb4:	67842e15 	usada8vs	r4, r5, lr, r2
 cb8:	00080267 	andeq	r0, r8, r7, ror #4
 cbc:	05000101 	streq	r0, [r0, #-257]	; 0xfffffeff
 cc0:	00000002 	andeq	r0, r0, r2
 cc4:	04980300 	ldreq	r0, [r8], #768	; 0x300
 cc8:	1d796901 			; <UNDEFINED> instruction: 0x1d796901
 ccc:	3d403d3d 	stclcc	13, cr3, [r0, #-244]	; 0xffffff0c
 cd0:	01000c02 	tsteq	r0, r2, lsl #24
 cd4:	02050001 	andeq	r0, r5, #1
 cd8:	00000000 	andeq	r0, r0, r0
 cdc:	0104a703 	tsteq	r4, r3, lsl #14
 ce0:	02002f83 	andeq	r2, r0, #524	; 0x20c
 ce4:	003e0304 	eorseq	r0, lr, r4, lsl #6
 ce8:	80030402 	andhi	r0, r3, r2, lsl #8
 cec:	01040200 	mrseq	r0, R12_usr
 cf0:	4e063c06 	cdpmi	12, 0, cr3, cr6, cr6, {0}
 cf4:	01000402 	tsteq	r0, r2, lsl #8
 cf8:	02050001 	andeq	r0, r5, #1
 cfc:	00000000 	andeq	r0, r0, r0
 d00:	0104af03 	tsteq	r4, r3, lsl #30
 d04:	83222f83 			; <UNDEFINED> instruction: 0x83222f83
 d08:	04027939 	streq	r7, [r2], #-2361	; 0xfffff6c7
 d0c:	6e010100 	adfvss	f0, f1, f0
 d10:	02000001 	andeq	r0, r0, #1
 d14:	0000cb00 	andeq	ip, r0, r0, lsl #22
 d18:	fb010200 	blx	41522 <_Min_Stack_Size+0x41122>
 d1c:	01000d0e 	tsteq	r0, lr, lsl #26
 d20:	00010101 	andeq	r0, r1, r1, lsl #2
 d24:	00010000 	andeq	r0, r1, r0
 d28:	2e2e0100 	sufcse	f0, f6, f0
 d2c:	6372532f 	cmnvs	r2, #-1140850688	; 0xbc000000
 d30:	2f2e2e00 	svccs	0x002e2e00
 d34:	00636e49 	rsbeq	r6, r3, r9, asr #28
 d38:	69616d00 	stmdbvs	r1!, {r8, sl, fp, sp, lr}^
 d3c:	00632e6e 	rsbeq	r2, r3, lr, ror #28
 d40:	50000001 	andpl	r0, r0, r1
 d44:	5f435253 	svcpl	0x00435253
 d48:	65746e69 	ldrbvs	r6, [r4, #-3689]!	; 0xfffff197
 d4c:	63616672 	cmnvs	r1, #119537664	; 0x7200000
 d50:	00682e65 	rsbeq	r2, r8, r5, ror #28
 d54:	53000002 	movwpl	r0, #2
 d58:	545f4454 	ldrbpl	r4, [pc], #-1108	; d60 <_Min_Stack_Size+0x960>
 d5c:	53455059 	movtpl	r5, #20569	; 0x5059
 d60:	0200682e 	andeq	r6, r0, #3014656	; 0x2e0000
 d64:	4f430000 	svcmi	0x00430000
 d68:	4e4f4d4d 	cdpmi	13, 4, cr4, cr15, cr13, {2}
 d6c:	0200682e 	andeq	r6, r0, #3014656	; 0x2e0000
 d70:	58450000 	stmdapl	r5, {}^	; <UNPREDICTABLE>
 d74:	695f4954 	ldmdbvs	pc, {r2, r4, r6, r8, fp, lr}^	; <UNPREDICTABLE>
 d78:	7265746e 	rsbvc	r7, r5, #1845493760	; 0x6e000000
 d7c:	65636166 	strbvs	r6, [r3, #-358]!	; 0xfffffe9a
 d80:	0200682e 	andeq	r6, r0, #3014656	; 0x2e0000
 d84:	49420000 	stmdbmi	r2, {}^	; <UNPREDICTABLE>
 d88:	414d5f54 	cmpmi	sp, r4, asr pc
 d8c:	682e4854 	stmdavs	lr!, {r2, r4, r6, fp, lr}
 d90:	00000200 	andeq	r0, r0, r0, lsl #4
 d94:	5f434352 	svcpl	0x00434352
 d98:	65746e69 	ldrbvs	r6, [r4, #-3689]!	; 0xfffff197
 d9c:	63616672 	cmnvs	r1, #119537664	; 0x7200000
 da0:	00682e65 	rsbeq	r2, r8, r5, ror #28
 da4:	47000002 	strmi	r0, [r0, -r2]
 da8:	5f4f4950 	svcpl	0x004f4950
 dac:	65746e69 	ldrbvs	r6, [r4, #-3689]!	; 0xfffff197
 db0:	63616672 	cmnvs	r1, #119537664	; 0x7200000
 db4:	00682e65 	rsbeq	r2, r8, r5, ror #28
 db8:	4e000002 	cdpmi	0, 0, cr0, cr0, cr2, {0}
 dbc:	5f434956 	svcpl	0x00434956
 dc0:	65746e69 	ldrbvs	r6, [r4, #-3689]!	; 0xfffff197
 dc4:	63616672 	cmnvs	r1, #119537664	; 0x7200000
 dc8:	00682e65 	rsbeq	r2, r8, r5, ror #28
 dcc:	41000002 	tstmi	r0, r2
 dd0:	5f4f4946 	svcpl	0x004f4946
 dd4:	65746e69 	ldrbvs	r6, [r4, #-3689]!	; 0xfffff197
 dd8:	63616672 	cmnvs	r1, #119537664	; 0x7200000
 ddc:	00682e65 	rsbeq	r2, r8, r5, ror #28
 de0:	00000002 	andeq	r0, r0, r2
 de4:	00020500 	andeq	r0, r2, r0, lsl #10
 de8:	03000000 	movweq	r0, #0
 dec:	3d4d010b 	stfcce	f0, [sp, #-44]	; 0xffffffd4
 df0:	03040200 	movweq	r0, #16896	; 0x4200
 df4:	02004a06 	andeq	r4, r0, #24576	; 0x6000
 df8:	003c0104 	eorseq	r0, ip, r4, lsl #2
 dfc:	06020402 	streq	r0, [r2], -r2, lsl #8
 e00:	0402003b 	streq	r0, [r2], #-59	; 0xffffffc5
 e04:	063c0601 	ldrteq	r0, [ip], -r1, lsl #12
 e08:	0005023f 	andeq	r0, r5, pc, lsr r2
 e0c:	05000101 	streq	r0, [r0, #-257]	; 0xfffffeff
 e10:	00075c02 	andeq	r5, r7, r2, lsl #24
 e14:	01180308 	tsteq	r8, r8, lsl #6
 e18:	5a4b2f35 	bpl	12ccaf4 <_Min_Stack_Size+0x12cc6f4>
 e1c:	4c4c4c3e 	mcrrmi	12, 3, r4, ip, cr14
 e20:	59243d3e 	stmdbpl	r4!, {r1, r2, r3, r4, r5, r8, sl, fp, ip, sp}
 e24:	de030204 	cdple	2, 0, cr0, cr3, cr4, {0}
 e28:	01043c00 	tsteq	r4, r0, lsl #24
 e2c:	667fa103 	ldrbtvs	sl, [pc], -r3, lsl #2
 e30:	01000502 	tsteq	r0, r2, lsl #10
 e34:	02050001 	andeq	r0, r5, #1
 e38:	080007c8 	stmdaeq	r0, {r3, r6, r7, r8, r9, sl}
 e3c:	31013c03 	tstcc	r1, r3, lsl #24
 e40:	04023f3e 	streq	r3, [r2], #-3902	; 0xfffff0c2
 e44:	00010100 	andeq	r0, r1, r0, lsl #2
 e48:	07e00205 	strbeq	r0, [r0, r5, lsl #4]!
 e4c:	c7030800 	strgt	r0, [r3, -r0, lsl #16]
 e50:	97130100 	ldrls	r0, [r3, -r0, lsl #2]
 e54:	01000102 	tsteq	r0, r2, lsl #2
 e58:	02050001 	andeq	r0, r5, #1
 e5c:	080007f4 	stmdaeq	r0, {r2, r4, r5, r6, r7, r8, r9, sl}
 e60:	0100d203 	tsteq	r0, r3, lsl #4
 e64:	1d426751 	stclne	7, cr6, [r2, #-324]	; 0xfffffebc
 e68:	0402243d 	streq	r2, [r2], #-1085	; 0xfffffbc3
 e6c:	00010100 	andeq	r0, r1, r0, lsl #2
 e70:	08200205 	stmdaeq	r0!, {r0, r2, r9}
 e74:	e6030800 	str	r0, [r3], -r0, lsl #16
 e78:	3e2f0100 	sufcce	f0, f7, f0
 e7c:	01000702 	tsteq	r0, r2, lsl #14
 e80:	00008001 	andeq	r8, r0, r1
 e84:	39000200 	stmdbcc	r0, {r9}
 e88:	02000000 	andeq	r0, r0, #0
 e8c:	0d0efb01 	vstreq	d15, [lr, #-4]
 e90:	01010100 	mrseq	r0, (UNDEF: 17)
 e94:	00000001 	andeq	r0, r0, r1
 e98:	01000001 	tsteq	r0, r1
 e9c:	532f2e2e 			; <UNDEFINED> instruction: 0x532f2e2e
 ea0:	74726174 	ldrbtvc	r6, [r2], #-372	; 0xfffffe8c
 ea4:	00007075 	andeq	r7, r0, r5, ror r0
 ea8:	72617473 	rsbvc	r7, r1, #1929379840	; 0x73000000
 eac:	5f707574 	svcpl	0x00707574
 eb0:	336d7473 	cmncc	sp, #1929379840	; 0x73000000
 eb4:	30316632 	eorscc	r6, r1, r2, lsr r6
 eb8:	74366333 	ldrtvc	r6, [r6], #-819	; 0xfffffccd
 ebc:	00732e78 	rsbseq	r2, r3, r8, ror lr
 ec0:	00000001 	andeq	r0, r0, r1
 ec4:	38020500 	stmdacc	r2, {r8, sl}
 ec8:	03080008 	movweq	r0, #32776	; 0x8008
 ecc:	2221013a 	eorcs	r0, r1, #-2147483634	; 0x8000000e
 ed0:	21212131 			; <UNDEFINED> instruction: 0x21212131
 ed4:	21212321 			; <UNDEFINED> instruction: 0x21212321
 ed8:	23212123 			; <UNDEFINED> instruction: 0x23212123
 edc:	23212121 			; <UNDEFINED> instruction: 0x23212121
 ee0:	23212321 			; <UNDEFINED> instruction: 0x23212321
 ee4:	56033130 			; <UNDEFINED> instruction: 0x56033130
 ee8:	2f2f3420 	svccs	0x002f3420
 eec:	2f2e0f03 	svccs	0x002e0f03
 ef0:	01000202 	tsteq	r0, r2, lsl #4
 ef4:	02050001 	andeq	r0, r5, #1
 ef8:	08000888 	stmdaeq	r0, {r3, r7, fp}
 efc:	0100f303 	tsteq	r0, r3, lsl #6	; <UNPREDICTABLE>
 f00:	01000102 	tsteq	r0, r2, lsl #2
 f04:	Address 0x0000000000000f04 is out of bounds.


Disassembly of section .debug_str:

00000000 <.debug_str>:
       0:	52415f5f 	subpl	r5, r1, #380	; 0x17c
       4:	45465f4d 	strbmi	r5, [r6, #-3917]	; 0xfffff0b3
       8:	52555441 	subspl	r5, r5, #1090519040	; 0x41000000
       c:	50465f45 	subpl	r5, r6, r5, asr #30
      10:	565f3631 			; <UNDEFINED> instruction: 0x565f3631
      14:	4f544345 	svcmi	0x00544345
      18:	52415f52 	subpl	r5, r1, #328	; 0x148
      1c:	4d485449 	cfstrdmi	mvd5, [r8, #-292]	; 0xfffffedc
      20:	43495445 	movtmi	r5, #37957	; 0x9445
      24:	535f5f00 	cmppl	pc, #0, 30
      28:	415f4749 	cmpmi	pc, r9, asr #14
      2c:	494d4f54 	stmdbmi	sp, {r2, r4, r6, r8, r9, sl, fp, lr}^
      30:	414d5f43 	cmpmi	sp, r3, asr #30
      34:	205f5f58 	subscs	r5, pc, r8, asr pc	; <UNPREDICTABLE>
      38:	66377830 			; <UNDEFINED> instruction: 0x66377830
      3c:	66666666 	strbtvs	r6, [r6], -r6, ror #12
      40:	5f006666 	svcpl	0x00006666
      44:	544c465f 	strbpl	r4, [ip], #-1631	; 0xfffff9a1
      48:	485f3436 	ldmdami	pc, {r1, r2, r4, r5, sl, ip, sp}^	; <UNPREDICTABLE>
      4c:	515f5341 	cmppl	pc, r1, asr #6
      50:	54454955 	strbpl	r4, [r5], #-2389	; 0xfffff6ab
      54:	4e414e5f 	mcrmi	14, 2, r4, cr1, cr15, {2}
      58:	31205f5f 			; <UNDEFINED> instruction: 0x31205f5f
      5c:	465f5f00 	ldrbmi	r5, [pc], -r0, lsl #30
      60:	445f544c 	ldrbmi	r5, [pc], #-1100	; 68 <_Min_Heap_Size-0x198>
      64:	524f4e45 	subpl	r4, pc, #1104	; 0x450
      68:	494d5f4d 	stmdbmi	sp, {r0, r2, r3, r6, r8, r9, sl, fp, ip, lr}^
      6c:	205f5f4e 	subscs	r5, pc, lr, asr #30
      70:	30342e31 	eorscc	r2, r4, r1, lsr lr
      74:	38393231 	ldmdacc	r9!, {r0, r4, r5, r9, ip, sp}
      78:	33343634 	teqcc	r4, #52, 12	; 0x3400000
      7c:	31383432 	teqcc	r8, r2, lsr r4
      80:	2d653137 	stfcse	f3, [r5, #-220]!	; 0xffffff24
      84:	00463534 	subeq	r3, r6, r4, lsr r5
      88:	45445f5f 	strbmi	r5, [r4, #-3935]	; 0xfffff0a1
      8c:	5f343643 	svcpl	0x00343643
      90:	4e425553 	mcrmi	5, 2, r5, cr2, cr3, {2}
      94:	414d524f 	cmpmi	sp, pc, asr #4
      98:	494d5f4c 	stmdbmi	sp, {r2, r3, r6, r8, r9, sl, fp, ip, lr}^
      9c:	205f5f4e 	subscs	r5, pc, lr, asr #30
      a0:	30302e30 	eorscc	r2, r0, r0, lsr lr
      a4:	30303030 	eorscc	r3, r0, r0, lsr r0
      a8:	30303030 	eorscc	r3, r0, r0, lsr r0
      ac:	30303030 	eorscc	r3, r0, r0, lsr r0
      b0:	332d4531 			; <UNDEFINED> instruction: 0x332d4531
      b4:	44443338 	strbmi	r3, [r4], #-824	; 0xfffffcc8
      b8:	555f5f00 	ldrbpl	r5, [pc, #-3840]	; fffff1c0 <_estack+0xdfffc9c0>
      bc:	43415246 	movtmi	r5, #4678	; 0x1246
      c0:	42495f54 	submi	r5, r9, #84, 30	; 0x150
      c4:	5f5f5449 	svcpl	0x005f5449
      c8:	5f003020 	svcpl	0x00003020
      cc:	544c465f 	strbpl	r4, [ip], #-1631	; 0xfffff9a1
      d0:	485f3233 	ldmdami	pc, {r0, r1, r4, r5, r9, ip, sp}^	; <UNPREDICTABLE>
      d4:	495f5341 	ldmdbmi	pc, {r0, r6, r8, r9, ip, lr}^	; <UNPREDICTABLE>
      d8:	4e49464e 	cdpmi	6, 4, cr4, cr9, cr14, {2}
      dc:	5f595449 	svcpl	0x00595449
      e0:	0031205f 	eorseq	r2, r1, pc, asr r0
      e4:	49555f5f 	ldmdbmi	r5, {r0, r1, r2, r3, r4, r6, r8, r9, sl, fp, ip, lr}^
      e8:	465f544e 	ldrbmi	r5, [pc], -lr, asr #8
      ec:	38545341 	ldmdacc	r4, {r0, r6, r8, r9, ip, lr}^
      f0:	5059545f 	subspl	r5, r9, pc, asr r4
      f4:	205f5f45 	subscs	r5, pc, r5, asr #30
      f8:	69736e75 	ldmdbvs	r3!, {r0, r2, r4, r5, r6, r9, sl, fp, sp, lr}^
      fc:	64656e67 	strbtvs	r6, [r5], #-3687	; 0xfffff199
     100:	746e6920 	strbtvc	r6, [lr], #-2336	; 0xfffff6e0
     104:	465f5f00 	ldrbmi	r5, [pc], -r0, lsl #30
     108:	3436544c 	ldrtcc	r5, [r6], #-1100	; 0xfffffbb4
     10c:	58414d5f 	stmdapl	r1, {r0, r1, r2, r3, r4, r6, r8, sl, fp, lr}^
     110:	5058455f 	subspl	r4, r8, pc, asr r5
     114:	31205f5f 			; <UNDEFINED> instruction: 0x31205f5f
     118:	00343230 	eorseq	r3, r4, r0, lsr r2
     11c:	4c465f5f 	mcrrmi	15, 5, r5, r6, cr15
     120:	58323354 	ldmdapl	r2!, {r2, r4, r6, r8, r9, ip, sp}
     124:	58414d5f 	stmdapl	r1, {r0, r1, r2, r3, r4, r6, r8, sl, fp, lr}^
     128:	5058455f 	subspl	r4, r8, pc, asr r5
     12c:	31205f5f 			; <UNDEFINED> instruction: 0x31205f5f
     130:	00343230 	eorseq	r3, r4, r0, lsr r2
     134:	4e495f5f 	mcrmi	15, 2, r5, cr9, cr15, {2}
     138:	41465f54 	cmpmi	r6, r4, asr pc
     13c:	36315453 			; <UNDEFINED> instruction: 0x36315453
     140:	4449575f 	strbmi	r5, [r9], #-1887	; 0xfffff8a1
     144:	5f5f4854 	svcpl	0x005f4854
     148:	00323320 	eorseq	r3, r2, r0, lsr #6
     14c:	43475f5f 	movtmi	r5, #32607	; 0x7f5f
     150:	54415f43 	strbpl	r5, [r1], #-3907	; 0xfffff0bd
     154:	43494d4f 	movtmi	r4, #40271	; 0x9d4f
     158:	5345545f 	movtpl	r5, #21599	; 0x545f
     15c:	4e415f54 	mcrmi	15, 2, r5, cr1, cr4, {2}
     160:	45535f44 	ldrbmi	r5, [r3, #-3908]	; 0xfffff0bc
     164:	52545f54 	subspl	r5, r4, #84, 30	; 0x150
     168:	41564555 	cmpmi	r6, r5, asr r5
     16c:	0031204c 	eorseq	r2, r1, ip, asr #32
     170:	54524f50 	ldrbpl	r4, [r2], #-3920	; 0xfffff0b0
     174:	00322041 	eorseq	r2, r2, r1, asr #32
     178:	45445f5f 	strbmi	r5, [r4, #-3935]	; 0xfffff0a1
     17c:	5f343643 	svcpl	0x00343643
     180:	49535045 	ldmdbmi	r3, {r0, r2, r6, ip, lr}^
     184:	5f4e4f4c 	svcpl	0x004e4f4c
     188:	4531205f 	ldrmi	r2, [r1, #-95]!	; 0xffffffa1
     18c:	4435312d 	ldrtmi	r3, [r5], #-301	; 0xfffffed3
     190:	4c430044 	mcrrmi	0, 4, r0, r3, cr4
     194:	49425f52 	stmdbmi	r2, {r1, r4, r6, r8, r9, sl, fp, ip, lr}^
     198:	41562854 	cmpmi	r6, r4, asr r8
     19c:	49422c52 	stmdbmi	r2, {r1, r4, r6, sl, fp, sp}^
     1a0:	56202954 			; <UNDEFINED> instruction: 0x56202954
     1a4:	26205241 	strtcs	r5, [r0], -r1, asr #4
     1a8:	287e203d 	ldmdacs	lr!, {r0, r2, r3, r4, r5, sp}^
     1ac:	3c3c2031 	ldccc	0, cr2, [ip], #-196	; 0xffffff3c
     1b0:	49422820 	stmdbmi	r2, {r5, fp, sp}^
     1b4:	00292954 	eoreq	r2, r9, r4, asr r9
     1b8:	4c555f5f 	mrrcmi	15, 5, r5, r5, cr15	; <UNPREDICTABLE>
     1bc:	55434341 	strbpl	r4, [r3, #-833]	; 0xfffffcbf
     1c0:	50455f4d 	subpl	r5, r5, sp, asr #30
     1c4:	4f4c4953 	svcmi	0x004c4953
     1c8:	205f5f4e 	subscs	r5, pc, lr, asr #30
     1cc:	50317830 	eorspl	r7, r1, r0, lsr r8
     1d0:	5532332d 	ldrpl	r3, [r2, #-813]!	; 0xfffffcd3
     1d4:	5f004b4c 	svcpl	0x00004b4c
     1d8:	4d52415f 	ldfmie	f4, [r2, #-380]	; 0xfffffe84
     1dc:	4145465f 	cmpmi	r5, pc, asr r6
     1e0:	45525554 	ldrbmi	r5, [r2, #-1364]	; 0xfffffaac
     1e4:	4d49535f 	stclmi	3, cr5, [r9, #-380]	; 0xfffffe84
     1e8:	00323344 	eorseq	r3, r2, r4, asr #6
     1ec:	4c465f5f 	mcrrmi	15, 5, r5, r6, cr15
     1f0:	5f323354 	svcpl	0x00323354
     1f4:	544e414d 	strbpl	r4, [lr], #-333	; 0xfffffeb3
     1f8:	4749445f 	smlsldmi	r4, r9, pc, r4	; <UNPREDICTABLE>
     1fc:	32205f5f 	eorcc	r5, r0, #380	; 0x17c
     200:	5f5f0034 	svcpl	0x005f0034
     204:	5f515355 	svcpl	0x00515355
     208:	54494249 	strbpl	r4, [r9], #-585	; 0xfffffdb7
     20c:	30205f5f 	eorcc	r5, r0, pc, asr pc
     210:	555f5f00 	ldrbpl	r5, [pc, #-3840]	; fffff318 <_estack+0xdfffcb18>
     214:	38544e49 	ldmdacc	r4, {r0, r3, r6, r9, sl, fp, lr}^
     218:	6328435f 			; <UNDEFINED> instruction: 0x6328435f
     21c:	00632029 	rsbeq	r2, r3, r9, lsr #32
     220:	52415f5f 	subpl	r5, r1, #380	; 0x17c
     224:	454e5f4d 	strbmi	r5, [lr, #-3917]	; 0xfffff0b3
     228:	5f5f4e4f 	svcpl	0x005f4e4f
     22c:	535f5f00 	cmppl	pc, #0, 30
     230:	4f455a49 	svcmi	0x00455a49
     234:	49575f46 	ldmdbmi	r7, {r1, r2, r6, r8, r9, sl, fp, ip, lr}^
     238:	545f544e 	ldrbpl	r5, [pc], #-1102	; 240 <_Min_Heap_Size+0x40>
     23c:	34205f5f 	strtcc	r5, [r0], #-3935	; 0xfffff0a1
     240:	49464100 	stmdbmi	r6, {r8, lr}^
     244:	41425f4f 	cmpmi	r2, pc, asr #30
     248:	415f4553 	cmpmi	pc, r3, asr r5	; <UNPREDICTABLE>
     24c:	45524444 	ldrbmi	r4, [r2, #-1092]	; 0xfffffbbc
     250:	30205353 	eorcc	r5, r0, r3, asr r3
     254:	30303478 	eorscc	r3, r0, r8, ror r4
     258:	30343031 	eorscc	r3, r4, r1, lsr r0
     25c:	5f5f0030 	svcpl	0x005f0030
     260:	495f5151 	ldmdbmi	pc, {r0, r4, r6, r8, ip, lr}^	; <UNPREDICTABLE>
     264:	5f544942 	svcpl	0x00544942
     268:	0030205f 	eorseq	r2, r0, pc, asr r0
     26c:	44555f5f 	ldrbmi	r5, [r5], #-3935	; 0xfffff0a1
     270:	42495f51 	submi	r5, r9, #324	; 0x144
     274:	5f5f5449 	svcpl	0x005f5449
     278:	45003020 	strmi	r3, [r0, #-32]	; 0xffffffe0
     27c:	5f495458 	svcpl	0x00495458
     280:	656e694c 	strbvs	r6, [lr, #-2380]!	; 0xfffff6b4
     284:	5f5f0073 	svcpl	0x005f0073
     288:	33544c46 	cmpcc	r4, #17920	; 0x4600
     28c:	445f5832 	ldrbmi	r5, [pc], #-2098	; 294 <_Min_Heap_Size+0x94>
     290:	4d494345 	stclmi	3, cr4, [r9, #-276]	; 0xfffffeec
     294:	445f4c41 	ldrbmi	r4, [pc], #-3137	; 29c <_Min_Heap_Size+0x9c>
     298:	5f5f4749 	svcpl	0x005f4749
     29c:	00373120 	eorseq	r3, r7, r0, lsr #2
     2a0:	334d5453 	movtcc	r5, #54355	; 0xd453
     2a4:	30314632 	eorscc	r4, r1, r2, lsr r6
     2a8:	54364333 	ldrtpl	r4, [r6], #-819	; 0xfffffccd
     2ac:	00312078 	eorseq	r2, r1, r8, ror r0
     2b0:	42445f5f 	submi	r5, r4, #380	; 0x17c
     2b4:	494d5f4c 	stmdbmi	sp, {r2, r3, r6, r8, r9, sl, fp, ip, lr}^
     2b8:	58455f4e 	stmdapl	r5, {r1, r2, r3, r6, r8, r9, sl, fp, ip, lr}^
     2bc:	205f5f50 	subscs	r5, pc, r0, asr pc	; <UNPREDICTABLE>
     2c0:	30312d28 	eorscc	r2, r1, r8, lsr #26
     2c4:	00293132 	eoreq	r3, r9, r2, lsr r1
     2c8:	4f4c5f5f 	svcmi	0x004c5f5f
     2cc:	4c5f474e 	mrrcmi	7, 4, r4, pc, cr14	; <UNPREDICTABLE>
     2d0:	5f474e4f 	svcpl	0x00474e4f
     2d4:	54444957 	strbpl	r4, [r4], #-2391	; 0xfffff6a9
     2d8:	205f5f48 	subscs	r5, pc, r8, asr #30
     2dc:	5f003436 	svcpl	0x00003436
     2e0:	7361685f 	cmnvc	r1, #6225920	; 0x5f0000
     2e4:	636e695f 	cmnvs	lr, #1556480	; 0x17c000
     2e8:	6564756c 	strbvs	r7, [r4, #-1388]!	; 0xfffffa94
     2ec:	78656e5f 	stmdavc	r5!, {r0, r1, r2, r3, r4, r6, r9, sl, fp, sp, lr}^
     2f0:	54532874 	ldrbpl	r2, [r3], #-2164	; 0xfffff78c
     2f4:	5f202952 	svcpl	0x00202952
     2f8:	7361685f 	cmnvc	r1, #6225920	; 0x5f0000
     2fc:	636e695f 	cmnvs	lr, #1556480	; 0x17c000
     300:	6564756c 	strbvs	r7, [r4, #-1388]!	; 0xfffffa94
     304:	78656e5f 	stmdavc	r5!, {r0, r1, r2, r3, r4, r6, r9, sl, fp, sp, lr}^
     308:	285f5f74 	ldmdacs	pc, {r2, r4, r5, r6, r8, r9, sl, fp, ip, lr}^	; <UNPREDICTABLE>
     30c:	29525453 	ldmdbcs	r2, {r0, r1, r4, r6, sl, ip, lr}^
     310:	4c5f5f00 	mrrcmi	15, 0, r5, pc, cr0	; <UNPREDICTABLE>
     314:	43415246 	movtmi	r5, #4678	; 0x1246
     318:	494d5f54 	stmdbmi	sp, {r2, r4, r6, r8, r9, sl, fp, ip, lr}^
     31c:	205f5f4e 	subscs	r5, pc, lr, asr #30
     320:	2e302d28 	cdpcs	13, 3, cr2, cr0, cr8, {1}
     324:	2d524c35 	ldclcs	12, cr4, [r2, #-212]	; 0xffffff2c
     328:	4c352e30 	ldcmi	14, cr2, [r5], #-192	; 0xffffff40
     32c:	5f002952 	svcpl	0x00002952
     330:	4d52415f 	ldfmie	f4, [r2, #-380]	; 0xfffffe84
     334:	5a49535f 	bpl	12550b8 <_Min_Stack_Size+0x1254cb8>
     338:	5f464f45 	svcpl	0x00464f45
     33c:	41484357 	cmpmi	r8, r7, asr r3
     340:	20545f52 	subscs	r5, r4, r2, asr pc
     344:	5f5f0034 	svcpl	0x005f0034
     348:	5f4d5241 	svcpl	0x004d5241
     34c:	36315046 	ldrtcc	r5, [r1], -r6, asr #32
     350:	524f465f 	subpl	r4, pc, #99614720	; 0x5f00000
     354:	5f54414d 	svcpl	0x0054414d
     358:	45454549 	strbmi	r4, [r5, #-1353]	; 0xfffffab7
     35c:	4c5f5f00 	mrrcmi	15, 0, r5, pc, cr0	; <UNPREDICTABLE>
     360:	4152464c 	cmpmi	r2, ip, asr #12
     364:	495f5443 	ldmdbmi	pc, {r0, r1, r6, sl, ip, lr}^	; <UNPREDICTABLE>
     368:	5f544942 	svcpl	0x00544942
     36c:	0030205f 	eorseq	r2, r0, pc, asr r0
     370:	42445f5f 	submi	r5, r4, #380	; 0x17c
     374:	414d5f4c 	cmpmi	sp, ip, asr #30
     378:	205f5f58 	subscs	r5, pc, r8, asr pc	; <UNPREDICTABLE>
     37c:	6f642828 	svcvs	0x00642828
     380:	656c6275 	strbvs	r6, [ip, #-629]!	; 0xfffffd8b
     384:	372e3129 	strcc	r3, [lr, -r9, lsr #2]!
     388:	39363739 	ldmdbcc	r6!, {r0, r3, r4, r5, r8, r9, sl, ip, sp}
     38c:	34333133 	ldrtcc	r3, [r3], #-307	; 0xfffffecd
     390:	33323638 	teqcc	r2, #56, 12	; 0x3800000
     394:	65373531 	ldrvs	r3, [r7, #-1329]!	; 0xfffffacf
     398:	3830332b 	ldmdacc	r0!, {r0, r1, r3, r5, r8, r9, ip, sp}
     39c:	5f00294c 	svcpl	0x0000294c
     3a0:	4e49555f 	mcrmi	5, 2, r5, cr9, cr15, {2}
     3a4:	41465f54 	cmpmi	r6, r4, asr pc
     3a8:	32335453 	eorscc	r5, r3, #1392508928	; 0x53000000
     3ac:	58414d5f 	stmdapl	r1, {r0, r1, r2, r3, r4, r6, r8, sl, fp, lr}^
     3b0:	30205f5f 	eorcc	r5, r0, pc, asr pc
     3b4:	66666678 			; <UNDEFINED> instruction: 0x66666678
     3b8:	66666666 	strbtvs	r6, [r6], -r6, ror #12
     3bc:	5f005566 	svcpl	0x00005566
     3c0:	4653555f 			; <UNDEFINED> instruction: 0x4653555f
     3c4:	54434152 	strbpl	r4, [r3], #-338	; 0xfffffeae
     3c8:	4e494d5f 	mcrmi	13, 2, r4, cr9, cr15, {2}
     3cc:	30205f5f 	eorcc	r5, r0, pc, asr pc
     3d0:	4855302e 	ldmdami	r5, {r1, r2, r3, r5, ip, sp}^
     3d4:	5f5f0052 	svcpl	0x005f0052
     3d8:	544e4957 	strbpl	r4, [lr], #-2391	; 0xfffff6a9
     3dc:	4e494d5f 	mcrmi	13, 2, r4, cr9, cr15, {2}
     3e0:	30205f5f 	eorcc	r5, r0, pc, asr pc
     3e4:	5f5f0055 	svcpl	0x005f0055
     3e8:	43554e47 	cmpmi	r5, #1136	; 0x470
     3ec:	4e494d5f 	mcrmi	13, 2, r4, cr9, cr15, {2}
     3f0:	5f5f524f 	svcpl	0x005f524f
     3f4:	5f003320 	svcpl	0x00003320
     3f8:	4d52415f 	ldfmie	f4, [r2, #-380]	; 0xfffffe84
     3fc:	4d53415f 	ldfmie	f4, [r3, #-380]	; 0xfffffe84
     400:	4e59535f 	mrcmi	3, 2, r5, cr9, cr15, {2}
     404:	5f584154 	svcpl	0x00584154
     408:	46494e55 			; <UNDEFINED> instruction: 0x46494e55
     40c:	5f444549 	svcpl	0x00444549
     410:	0031205f 	eorseq	r2, r1, pc, asr r0
     414:	5f434f4c 	svcpl	0x00434f4c
     418:	694c3875 	stmdbvs	ip, {r0, r2, r4, r5, r6, fp, ip, sp}^
     41c:	6f50656e 	svcvs	0x0050656e
     420:	69746973 	ldmdbvs	r4!, {r0, r1, r4, r5, r6, r8, fp, sp, lr}^
     424:	5f006e6f 	svcpl	0x00006e6f
     428:	4d52415f 	ldfmie	f4, [r2, #-380]	; 0xfffffe84
     42c:	4145465f 	cmpmi	r5, pc, asr r6
     430:	45525554 	ldrbmi	r5, [r2, #-1364]	; 0xfffffaac
     434:	5952435f 	ldmdbpl	r2, {r0, r1, r2, r3, r4, r6, r8, r9, lr}^
     438:	004f5450 	subeq	r5, pc, r0, asr r4	; <UNPREDICTABLE>
     43c:	49555f5f 	ldmdbmi	r5, {r0, r1, r2, r3, r4, r6, r8, r9, sl, fp, ip, lr}^
     440:	3631544e 	ldrtcc	r5, [r1], -lr, asr #8
     444:	6328435f 			; <UNDEFINED> instruction: 0x6328435f
     448:	00632029 	rsbeq	r2, r3, r9, lsr #32
     44c:	49535f5f 	ldmdbmi	r3, {r0, r1, r2, r3, r4, r6, r8, r9, sl, fp, ip, lr}^
     450:	464f455a 			; <UNDEFINED> instruction: 0x464f455a
     454:	5a49535f 	bpl	12551d8 <_Min_Stack_Size+0x1254dd8>
     458:	5f545f45 	svcpl	0x00545f45
     45c:	0034205f 	eorseq	r2, r4, pc, asr r0
     460:	48435f5f 	stmdami	r3, {r0, r1, r2, r3, r4, r6, r8, r9, sl, fp, ip, lr}^
     464:	36315241 	ldrtcc	r5, [r1], -r1, asr #4
     468:	5059545f 	subspl	r5, r9, pc, asr r4
     46c:	205f5f45 	subscs	r5, pc, r5, asr #30
     470:	726f6873 	rsbvc	r6, pc, #7536640	; 0x730000
     474:	6e752074 	mrcvs	0, 3, r2, cr5, cr4, {3}
     478:	6e676973 			; <UNDEFINED> instruction: 0x6e676973
     47c:	69206465 	stmdbvs	r0!, {r0, r2, r5, r6, sl, sp, lr}
     480:	5f00746e 	svcpl	0x0000746e
     484:	5a49535f 	bpl	1255208 <_Min_Stack_Size+0x1254e08>
     488:	5f464f45 	svcpl	0x00464f45
     48c:	474e4f4c 	strbmi	r4, [lr, -ip, asr #30]
     490:	554f445f 	strbpl	r4, [pc, #-1119]	; 39 <_Min_Heap_Size-0x1c7>
     494:	5f454c42 	svcpl	0x00454c42
     498:	0038205f 	eorseq	r2, r8, pc, asr r0
     49c:	45565f5f 	ldrbmi	r5, [r6, #-3935]	; 0xfffff0a1
     4a0:	4f495352 	svcmi	0x00495352
     4a4:	205f5f4e 	subscs	r5, pc, lr, asr #30
     4a8:	332e3722 			; <UNDEFINED> instruction: 0x332e3722
     4ac:	3220312e 	eorcc	r3, r0, #-2147483637	; 0x8000000b
     4b0:	30383130 	eorscc	r3, r8, r0, lsr r1
     4b4:	20323236 	eorscs	r3, r2, r6, lsr r2
     4b8:	6c657228 	sfmvs	f7, 2, [r5], #-160	; 0xffffff60
     4bc:	65736165 	ldrbvs	r6, [r3, #-357]!	; 0xfffffe9b
     4c0:	415b2029 	cmpmi	fp, r9, lsr #32
     4c4:	652f4d52 	strvs	r4, [pc, #-3410]!	; fffff77a <_estack+0xdfffcf7a>
     4c8:	6465626d 	strbtvs	r6, [r5], #-621	; 0xfffffd93
     4cc:	2d646564 	cfstr64cs	mvdx6, [r4, #-400]!	; 0xfffffe70
     4d0:	72622d37 	rsbvc	r2, r2, #3520	; 0xdc0
     4d4:	68636e61 	stmdavs	r3!, {r0, r5, r6, r9, sl, fp, sp, lr}^
     4d8:	76657220 	strbtvc	r7, [r5], -r0, lsr #4
     4dc:	6f697369 	svcvs	0x00697369
     4e0:	3632206e 	ldrtcc	r2, [r2], -lr, rrx
     4e4:	37303931 			; <UNDEFINED> instruction: 0x37303931
     4e8:	5f00225d 	svcpl	0x0000225d
     4ec:	544e495f 	strbpl	r4, [lr], #-2399	; 0xfffff6a1
     4f0:	5341465f 	movtpl	r4, #5727	; 0x165f
     4f4:	4d5f3854 	ldclmi	8, cr3, [pc, #-336]	; 3ac <_Min_Heap_Size+0x1ac>
     4f8:	5f5f5841 	svcpl	0x005f5841
     4fc:	37783020 	ldrbcc	r3, [r8, -r0, lsr #32]!
     500:	66666666 	strbtvs	r6, [r6], -r6, ror #12
     504:	00666666 	rsbeq	r6, r6, r6, ror #12
     508:	524f5f5f 	subpl	r5, pc, #380	; 0x17c
     50c:	5f524544 	svcpl	0x00524544
     510:	5f474942 	svcpl	0x00474942
     514:	49444e45 	stmdbmi	r4, {r0, r2, r6, r9, sl, fp, lr}^
     518:	5f5f4e41 	svcpl	0x005f4e41
     51c:	32333420 	eorscc	r3, r3, #32, 8	; 0x20000000
     520:	5f5f0031 	svcpl	0x005f0031
     524:	43554e47 	cmpmi	r5, #1136	; 0x470
     528:	37205f5f 			; <UNDEFINED> instruction: 0x37205f5f
     52c:	445f5f00 	ldrbmi	r5, [pc], #-3840	; 534 <_Min_Stack_Size+0x134>
     530:	32314345 	eorscc	r4, r1, #335544321	; 0x14000001
     534:	494d5f38 	stmdbmi	sp, {r3, r4, r5, r8, r9, sl, fp, ip, lr}^
     538:	205f5f4e 	subscs	r5, pc, lr, asr #30
     53c:	362d4531 			; <UNDEFINED> instruction: 0x362d4531
     540:	44333431 	ldrtmi	r3, [r3], #-1073	; 0xfffffbcf
     544:	4641004c 	strbmi	r0, [r1], -ip, asr #32
     548:	4d5f4f49 	ldclmi	15, cr4, [pc, #-292]	; 42c <_Min_Stack_Size+0x2c>
     54c:	00525041 	subseq	r5, r2, r1, asr #32
     550:	42445f5f 	submi	r5, r4, #380	; 0x17c
     554:	414d5f4c 	cmpmi	sp, ip, asr #30
     558:	445f544e 	ldrbmi	r5, [pc], #-1102	; 560 <_Min_Stack_Size+0x160>
     55c:	5f5f4749 	svcpl	0x005f4749
     560:	00333520 	eorseq	r3, r3, r0, lsr #10
     564:	49555f5f 	ldmdbmi	r5, {r0, r1, r2, r3, r4, r6, r8, r9, sl, fp, ip, lr}^
     568:	4c5f544e 	cfldrdmi	mvd5, [pc], {78}	; 0x4e
     56c:	54534145 	ldrbpl	r4, [r3], #-325	; 0xfffffebb
     570:	545f3436 	ldrbpl	r3, [pc], #-1078	; 578 <_Min_Stack_Size+0x178>
     574:	5f455059 	svcpl	0x00455059
     578:	6f6c205f 	svcvs	0x006c205f
     57c:	6c20676e 	stcvs	7, cr6, [r0], #-440	; 0xfffffe48
     580:	20676e6f 	rsbcs	r6, r7, pc, ror #28
     584:	69736e75 	ldmdbvs	r3!, {r0, r2, r4, r5, r6, r9, sl, fp, sp, lr}^
     588:	64656e67 	strbtvs	r6, [r5], #-3687	; 0xfffff199
     58c:	746e6920 	strbtvc	r6, [lr], #-2336	; 0xfffff6e0
     590:	495f5f00 	ldmdbmi	pc, {r8, r9, sl, fp, ip, lr}^	; <UNPREDICTABLE>
     594:	4d5f544e 	cfldrdmi	mvd5, [pc, #-312]	; 464 <_Min_Stack_Size+0x64>
     598:	5f5f5841 	svcpl	0x005f5841
     59c:	37783020 	ldrbcc	r3, [r8, -r0, lsr #32]!
     5a0:	66666666 	strbtvs	r6, [r6], -r6, ror #12
     5a4:	00666666 	rsbeq	r6, r6, r6, ror #12
     5a8:	54415f5f 	strbpl	r5, [r1], #-3935	; 0xfffff0a1
     5ac:	43494d4f 	movtmi	r4, #40271	; 0x9d4f
     5b0:	4c45525f 	sfmmi	f5, 2, [r5], {95}	; 0x5f
     5b4:	45534145 	ldrbmi	r4, [r3, #-325]	; 0xfffffebb
     5b8:	50003320 	andpl	r3, r0, r0, lsr #6
     5bc:	4254524f 	subsmi	r5, r4, #-268435452	; 0xf0000004
     5c0:	5f003320 	svcpl	0x00003320
     5c4:	5254505f 	subspl	r5, r4, #95	; 0x5f
     5c8:	46464944 	strbmi	r4, [r6], -r4, asr #18
     5cc:	5059545f 	subspl	r5, r9, pc, asr r4
     5d0:	205f5f45 	subscs	r5, pc, r5, asr #30
     5d4:	00746e69 	rsbseq	r6, r4, r9, ror #28
     5d8:	48435f5f 	stmdami	r3, {r0, r1, r2, r3, r4, r6, r8, r9, sl, fp, ip, lr}^
     5dc:	555f5241 	ldrbpl	r5, [pc, #-577]	; 3a3 <_Min_Heap_Size+0x1a3>
     5e0:	4749534e 	strbmi	r5, [r9, -lr, asr #6]
     5e4:	5f44454e 	svcpl	0x0044454e
     5e8:	0031205f 	eorseq	r2, r1, pc, asr r0
     5ec:	4e495f5f 	mcrmi	15, 2, r5, cr9, cr15, {2}
     5f0:	5f363154 	svcpl	0x00363154
     5f4:	45505954 	ldrbmi	r5, [r0, #-2388]	; 0xfffff6ac
     5f8:	73205f5f 			; <UNDEFINED> instruction: 0x73205f5f
     5fc:	74726f68 	ldrbtvc	r6, [r2], #-3944	; 0xfffff098
     600:	746e6920 	strbtvc	r6, [lr], #-2336	; 0xfffff6e0
     604:	415f5f00 	cmpmi	pc, r0, lsl #30
     608:	465f4d52 			; <UNDEFINED> instruction: 0x465f4d52
     60c:	55544145 	ldrbpl	r4, [r4, #-325]	; 0xfffffebb
     610:	515f4552 	cmppl	pc, r2, asr r5	; <UNPREDICTABLE>
     614:	584d4452 	stmdapl	sp, {r1, r4, r6, sl, lr}^
     618:	445f5f00 	ldrbmi	r5, [pc], #-3840	; 620 <_Min_Stack_Size+0x220>
     61c:	32334345 	eorscc	r4, r3, #335544321	; 0x14000001
     620:	5350455f 	cmppl	r0, #398458880	; 0x17c00000
     624:	4e4f4c49 	cdpmi	12, 4, cr4, cr15, cr9, {2}
     628:	31205f5f 			; <UNDEFINED> instruction: 0x31205f5f
     62c:	44362d45 	ldrtmi	r2, [r6], #-3397	; 0xfffff2bb
     630:	5f5f0046 	svcpl	0x005f0046
     634:	4c42444c 	cfstrdmi	mvd4, [r2], {76}	; 0x4c
     638:	4749445f 	smlsldmi	r4, r9, pc, r4	; <UNPREDICTABLE>
     63c:	31205f5f 			; <UNDEFINED> instruction: 0x31205f5f
     640:	5f5f0035 	svcpl	0x005f0035
     644:	455a4953 	ldrbmi	r4, [sl, #-2387]	; 0xfffff6ad
     648:	4c5f464f 	mrrcmi	6, 4, r4, pc, cr15	; <UNPREDICTABLE>
     64c:	5f474e4f 	svcpl	0x00474e4f
     650:	0034205f 	eorseq	r2, r4, pc, asr r0
     654:	4c465f5f 	mcrrmi	15, 5, r5, r6, cr15
     658:	5f323354 	svcpl	0x00323354
     65c:	5f58414d 	svcpl	0x0058414d
     660:	2e33205f 	mrccs	0, 1, r2, cr3, cr15, {2}
     664:	38323034 	ldmdacc	r2!, {r2, r4, r5, ip, sp}
     668:	36343332 			; <UNDEFINED> instruction: 0x36343332
     66c:	35383336 	ldrcc	r3, [r8, #-822]!	; 0xfffffcca
     670:	36383832 			; <UNDEFINED> instruction: 0x36383832
     674:	38332b65 	ldmdacc	r3!, {r0, r2, r5, r6, r8, r9, fp, sp}
     678:	00323346 	eorseq	r3, r2, r6, asr #6
     67c:	4c4c5f5f 	mcrrmi	15, 5, r5, ip, cr15
     680:	55434341 	strbpl	r4, [r3, #-833]	; 0xfffffcbf
     684:	42495f4d 	submi	r5, r9, #308	; 0x134
     688:	5f5f5449 	svcpl	0x005f5449
     68c:	00323320 	eorseq	r3, r2, r0, lsr #6
     690:	54415f5f 	strbpl	r5, [r1], #-3935	; 0xfffff0a1
     694:	43494d4f 	movtmi	r4, #40271	; 0x9d4f
     698:	5145535f 	cmppl	r5, pc, asr r3
     69c:	5453435f 	ldrbpl	r4, [r3], #-863	; 0xfffffca1
     6a0:	5f003520 	svcpl	0x00003520
     6a4:	5a49535f 	bpl	1255428 <_Min_Stack_Size+0x1255028>
     6a8:	5f464f45 	svcpl	0x00464f45
     6ac:	524f4853 	subpl	r4, pc, #5439488	; 0x530000
     6b0:	205f5f54 	subscs	r5, pc, r4, asr pc	; <UNPREDICTABLE>
     6b4:	5f5f0032 	svcpl	0x005f0032
     6b8:	5f544e49 	svcpl	0x00544e49
     6bc:	5341454c 	movtpl	r4, #5452	; 0x154c
     6c0:	4d5f3854 	ldclmi	8, cr3, [pc, #-336]	; 578 <_Min_Stack_Size+0x178>
     6c4:	5f5f5841 	svcpl	0x005f5841
     6c8:	37783020 	ldrbcc	r3, [r8, -r0, lsr #32]!
     6cc:	5f5f0066 	svcpl	0x005f0066
     6d0:	5f544e49 	svcpl	0x00544e49
     6d4:	5341454c 	movtpl	r4, #5452	; 0x154c
     6d8:	545f3854 	ldrbpl	r3, [pc], #-2132	; 6e0 <_Min_Stack_Size+0x2e0>
     6dc:	5f455059 	svcpl	0x00455059
     6e0:	6973205f 	ldmdbvs	r3!, {r0, r1, r2, r3, r4, r6, sp}^
     6e4:	64656e67 	strbtvs	r6, [r5], #-3687	; 0xfffff199
     6e8:	61686320 	cmnvs	r8, r0, lsr #6
     6ec:	5f5f0072 	svcpl	0x005f0072
     6f0:	36544c46 	ldrbcc	r4, [r4], -r6, asr #24
     6f4:	414d5f34 	cmpmi	sp, r4, lsr pc
     6f8:	445f544e 	ldrbmi	r5, [pc], #-1102	; 700 <_Min_Stack_Size+0x300>
     6fc:	5f5f4749 	svcpl	0x005f4749
     700:	00333520 	eorseq	r3, r3, r0, lsr #10
     704:	49555f5f 	ldmdbmi	r5, {r0, r1, r2, r3, r4, r6, r8, r9, sl, fp, ip, lr}^
     708:	414d544e 	cmpmi	sp, lr, asr #8
     70c:	28435f58 	stmdacs	r3, {r3, r4, r6, r8, r9, sl, fp, ip, lr}^
     710:	63202963 			; <UNDEFINED> instruction: 0x63202963
     714:	20232320 	eorcs	r2, r3, r0, lsr #6
     718:	004c4c55 	subeq	r4, ip, r5, asr ip
     71c:	54524f50 	ldrbpl	r4, [r2], #-3920	; 0xfffff0b0
     720:	00342043 	eorseq	r2, r4, r3, asr #32
     724:	59425f5f 	stmdbpl	r2, {r0, r1, r2, r3, r4, r6, r8, r9, sl, fp, ip, lr}^
     728:	4f5f4554 	svcmi	0x005f4554
     72c:	52454452 	subpl	r4, r5, #1375731712	; 0x52000000
     730:	5f205f5f 	svcpl	0x00205f5f
     734:	44524f5f 	ldrbmi	r4, [r2], #-3935	; 0xfffff0a1
     738:	4c5f5245 	lfmmi	f5, 2, [pc], {69}	; 0x45
     73c:	4c545449 	cfldrdmi	mvd5, [r4], {73}	; 0x49
     740:	4e455f45 	cdpmi	15, 4, cr5, cr5, cr5, {2}
     744:	4e414944 	vmlsmi.f16	s9, s2, s8	; <UNPREDICTABLE>
     748:	5f005f5f 	svcpl	0x00005f5f
     74c:	4345445f 	movtmi	r4, #21599	; 0x545f
     750:	535f3233 	cmppl	pc, #805306371	; 0x30000003
     754:	4f4e4255 	svcmi	0x004e4255
     758:	4c414d52 	mcrrmi	13, 5, r4, r1, cr2
     75c:	4e494d5f 	mcrmi	13, 2, r4, cr9, cr15, {2}
     760:	30205f5f 	eorcc	r5, r0, pc, asr pc
     764:	3030302e 	eorscc	r3, r0, lr, lsr #32
     768:	45313030 	ldrmi	r3, [r1, #-48]!	; 0xffffffd0
     76c:	4435392d 	ldrtmi	r3, [r5], #-2349	; 0xfffff6d3
     770:	5f5f0046 	svcpl	0x005f0046
     774:	33544c46 	cmpcc	r4, #17920	; 0x4600
     778:	494d5f32 	stmdbmi	sp, {r1, r4, r5, r8, r9, sl, fp, ip, lr}^
     77c:	30315f4e 	eorscc	r5, r1, lr, asr #30
     780:	5058455f 	subspl	r4, r8, pc, asr r5
     784:	28205f5f 	stmdacs	r0!, {r0, r1, r2, r3, r4, r6, r8, r9, sl, fp, ip, lr}
     788:	2937332d 	ldmdbcs	r7!, {r0, r2, r3, r5, r8, r9, ip, sp}
     78c:	4c5f5f00 	mrrcmi	15, 0, r5, pc, cr0	; <UNPREDICTABLE>
     790:	43415246 	movtmi	r5, #4678	; 0x1246
     794:	42495f54 	submi	r5, r9, #84, 30	; 0x150
     798:	5f5f5449 	svcpl	0x005f5449
     79c:	5f003020 	svcpl	0x00003020
     7a0:	4d52415f 	ldfmie	f4, [r2, #-380]	; 0xfffffe84
     7a4:	4352415f 	cmpmi	r2, #-1073741801	; 0xc0000017
     7a8:	00372048 	eorseq	r2, r7, r8, asr #32
     7ac:	54535f5f 	ldrbpl	r5, [r3], #-3935	; 0xfffff0a1
     7b0:	555f4344 	ldrbpl	r4, [pc, #-836]	; 474 <_Min_Stack_Size+0x74>
     7b4:	335f4654 	cmpcc	pc, #84, 12	; 0x5400000
     7b8:	205f5f32 	subscs	r5, pc, r2, lsr pc	; <UNPREDICTABLE>
     7bc:	5f5f0031 	svcpl	0x005f0031
     7c0:	5f544e49 	svcpl	0x00544e49
     7c4:	5341454c 	movtpl	r4, #5452	; 0x154c
     7c8:	5f363154 	svcpl	0x00363154
     7cc:	5f58414d 	svcpl	0x0058414d
     7d0:	7830205f 	ldmdavc	r0!, {r0, r1, r2, r3, r4, r6, sp}
     7d4:	66666637 			; <UNDEFINED> instruction: 0x66666637
     7d8:	535f5f00 	cmppl	pc, #0, 30
     7dc:	52414843 	subpl	r4, r1, #4390912	; 0x430000
     7e0:	58414d5f 	stmdapl	r1, {r0, r1, r2, r3, r4, r6, r8, sl, fp, lr}^
     7e4:	30205f5f 	eorcc	r5, r0, pc, asr pc
     7e8:	00663778 	rsbeq	r3, r6, r8, ror r7
     7ec:	4c555f5f 	mrrcmi	15, 5, r5, r5, cr15	; <UNPREDICTABLE>
     7f0:	4343414c 	movtmi	r4, #12620	; 0x314c
     7f4:	495f4d55 	ldmdbmi	pc, {r0, r2, r4, r6, r8, sl, fp, lr}^	; <UNPREDICTABLE>
     7f8:	5f544942 	svcpl	0x00544942
     7fc:	3233205f 	eorscc	r2, r3, #95	; 0x5f
     800:	445f5f00 	ldrbmi	r5, [pc], #-3840	; 808 <_Min_Stack_Size+0x408>
     804:	32314345 	eorscc	r4, r1, #335544321	; 0x14000001
     808:	55535f38 	ldrbpl	r5, [r3, #-3896]	; 0xfffff0c8
     80c:	524f4e42 	subpl	r4, pc, #1056	; 0x420
     810:	5f4c414d 	svcpl	0x004c414d
     814:	5f4e494d 	svcpl	0x004e494d
     818:	2e30205f 	mrccs	0, 1, r2, cr0, cr15, {2}
     81c:	30303030 	eorscc	r3, r0, r0, lsr r0
     820:	30303030 	eorscc	r3, r0, r0, lsr r0
     824:	30303030 	eorscc	r3, r0, r0, lsr r0
     828:	30303030 	eorscc	r3, r0, r0, lsr r0
     82c:	30303030 	eorscc	r3, r0, r0, lsr r0
     830:	30303030 	eorscc	r3, r0, r0, lsr r0
     834:	30303030 	eorscc	r3, r0, r0, lsr r0
     838:	30303030 	eorscc	r3, r0, r0, lsr r0
     83c:	362d4531 			; <UNDEFINED> instruction: 0x362d4531
     840:	44333431 	ldrtmi	r3, [r3], #-1073	; 0xfffffbcf
     844:	5f5f004c 	svcpl	0x005f004c
     848:	464c4c55 			; <UNDEFINED> instruction: 0x464c4c55
     84c:	54434152 	strbpl	r4, [r3], #-338	; 0xfffffeae
     850:	4942495f 	stmdbmi	r2, {r0, r1, r2, r3, r4, r6, r8, fp, lr}^
     854:	205f5f54 	subscs	r5, pc, r4, asr pc	; <UNPREDICTABLE>
     858:	5f5f0030 	svcpl	0x005f0030
     85c:	36544c46 	ldrbcc	r4, [r4], -r6, asr #24
     860:	49445f34 	stmdbmi	r4, {r2, r4, r5, r8, r9, sl, fp, ip, lr}^
     864:	205f5f47 	subscs	r5, pc, r7, asr #30
     868:	5f003531 	svcpl	0x00003531
     86c:	4f54415f 	svcmi	0x0054415f
     870:	5f43494d 	svcpl	0x0043494d
     874:	414c4552 	cmpmi	ip, r2, asr r5
     878:	20444558 	subcs	r4, r4, r8, asr r5
     87c:	5f5f0030 	svcpl	0x005f0030
     880:	5f544e49 	svcpl	0x00544e49
     884:	5341454c 	movtpl	r4, #5452	; 0x154c
     888:	5f323354 	svcpl	0x00323354
     88c:	45505954 	ldrbmi	r5, [r0, #-2388]	; 0xfffff6ac
     890:	6c205f5f 	stcvs	15, cr5, [r0], #-380	; 0xfffffe84
     894:	20676e6f 	rsbcs	r6, r7, pc, ror #28
     898:	00746e69 	rsbseq	r6, r4, r9, ror #28
     89c:	49535f5f 	ldmdbmi	r3, {r0, r1, r2, r3, r4, r6, r8, r9, sl, fp, ip, lr}^
     8a0:	4d5f455a 	cfldr64mi	mvdx4, [pc, #-360]	; 740 <_Min_Stack_Size+0x340>
     8a4:	5f5f5841 	svcpl	0x005f5841
     8a8:	66783020 	ldrbtvs	r3, [r8], -r0, lsr #32
     8ac:	66666666 	strbtvs	r6, [r6], -r6, ror #12
     8b0:	55666666 	strbpl	r6, [r6, #-1638]!	; 0xfffff99a
     8b4:	4c5f5f00 	mrrcmi	15, 0, r5, pc, cr0	; <UNPREDICTABLE>
     8b8:	55434341 	strbpl	r4, [r3, #-833]	; 0xfffffcbf
     8bc:	494d5f4d 	stmdbmi	sp, {r0, r2, r3, r6, r8, r9, sl, fp, ip, lr}^
     8c0:	205f5f4e 	subscs	r5, pc, lr, asr #30
     8c4:	58302d28 	ldmdapl	r0!, {r3, r5, r8, sl, fp, sp}
     8c8:	31335031 	teqcc	r3, r1, lsr r0
     8cc:	302d4b4c 	eorcc	r4, sp, ip, asr #22
     8d0:	33503158 	cmpcc	r0, #88, 2
     8d4:	294b4c31 	stmdbcs	fp, {r0, r4, r5, sl, fp, lr}^
     8d8:	555f5f00 	ldrbpl	r5, [pc, #-3840]	; fffff9e0 <_estack+0xdfffd1e0>
     8dc:	43414c4c 	movtmi	r4, #7244	; 0x1c4c
     8e0:	5f4d5543 	svcpl	0x004d5543
     8e4:	5f58414d 	svcpl	0x0058414d
     8e8:	5830205f 	ldmdapl	r0!, {r0, r1, r2, r3, r4, r6, sp}
     8ec:	46464646 	strbmi	r4, [r6], -r6, asr #12
     8f0:	46464646 	strbmi	r4, [r6], -r6, asr #12
     8f4:	46464646 	strbmi	r4, [r6], -r6, asr #12
     8f8:	46464646 	strbmi	r4, [r6], -r6, asr #12
     8fc:	32332d50 	eorscc	r2, r3, #80, 26	; 0x1400
     900:	4b4c4c55 	blmi	1313a5c <_Min_Stack_Size+0x131365c>
     904:	555f5f00 	ldrbpl	r5, [pc, #-3840]	; fffffa0c <_estack+0xdfffd20c>
     908:	4343414c 	movtmi	r4, #12620	; 0x314c
     90c:	4d5f4d55 	ldclmi	13, cr4, [pc, #-340]	; 7c0 <_Min_Stack_Size+0x3c0>
     910:	5f5f4e49 	svcpl	0x005f4e49
     914:	302e3020 	eorcc	r3, lr, r0, lsr #32
     918:	004b4c55 	subeq	r4, fp, r5, asr ip
     91c:	49545845 	ldmdbmi	r4, {r0, r2, r6, fp, ip, lr}^
     920:	4e494c5f 	mcrmi	12, 2, r4, cr9, cr15, {2}
     924:	5f003445 	svcpl	0x00003445
     928:	544c465f 	strbpl	r4, [ip], #-1631	; 0xfffff9a1
     92c:	5341485f 	movtpl	r4, #6239	; 0x185f
     930:	464e495f 			; <UNDEFINED> instruction: 0x464e495f
     934:	54494e49 	strbpl	r4, [r9], #-3657	; 0xfffff1b7
     938:	205f5f59 	subscs	r5, pc, r9, asr pc	; <UNPREDICTABLE>
     93c:	5f5f0031 	svcpl	0x005f0031
     940:	43414c4c 	movtmi	r4, #7244	; 0x1c4c
     944:	5f4d5543 	svcpl	0x004d5543
     948:	5f4e494d 	svcpl	0x004e494d
     94c:	2d28205f 	stccs	0, cr2, [r8, #-380]!	; 0xfffffe84
     950:	50315830 	eorspl	r5, r1, r0, lsr r8
     954:	4c4c3133 	stfmie	f3, [ip], {51}	; 0x33
     958:	58302d4b 	ldmdapl	r0!, {r0, r1, r3, r6, r8, sl, fp, sp}
     95c:	31335031 	teqcc	r3, r1, lsr r0
     960:	294b4c4c 	stmdbcs	fp, {r2, r3, r6, sl, fp, lr}^
     964:	54584500 	ldrbpl	r4, [r8], #-1280	; 0xfffffb00
     968:	494c5f49 	stmdbmi	ip, {r0, r3, r6, r8, r9, sl, fp, ip, lr}^
     96c:	0035454e 	eorseq	r4, r5, lr, asr #10
     970:	4c465f5f 	mcrrmi	15, 5, r5, r6, cr15
     974:	5f323354 	svcpl	0x00323354
     978:	49535045 	ldmdbmi	r3, {r0, r2, r6, ip, lr}^
     97c:	5f4e4f4c 	svcpl	0x004e4f4c
     980:	2e31205f 	mrccs	0, 1, r2, cr1, cr15, {2}
     984:	30323931 	eorscc	r3, r2, r1, lsr r9
     988:	39383239 	ldmdbcc	r8!, {r0, r3, r4, r5, r9, ip, sp}
     98c:	37303535 			; <UNDEFINED> instruction: 0x37303535
     990:	35323138 	ldrcc	r3, [r2, #-312]!	; 0xfffffec8
     994:	46372d65 	ldrtmi	r2, [r7], -r5, ror #26
     998:	41003233 	tstmi	r0, r3, lsr r2
     99c:	5f4f4946 	svcpl	0x004f4946
     9a0:	464e4f43 	strbmi	r4, [lr], -r3, asr #30
     9a4:	485f4749 	ldmdami	pc, {r0, r3, r6, r8, r9, sl, lr}^	; <UNPREDICTABLE>
     9a8:	5f5f0020 	svcpl	0x005f0020
     9ac:	5f414455 	svcpl	0x00414455
     9b0:	54494249 	strbpl	r4, [r9], #-585	; 0xfffffdb7
     9b4:	33205f5f 			; <UNDEFINED> instruction: 0x33205f5f
     9b8:	5f5f0032 	svcpl	0x005f0032
     9bc:	5f544e49 	svcpl	0x00544e49
     9c0:	54534146 	ldrbpl	r4, [r3], #-326	; 0xfffffeba
     9c4:	545f3436 	ldrbpl	r3, [pc], #-1078	; 9cc <_Min_Stack_Size+0x5cc>
     9c8:	5f455059 	svcpl	0x00455059
     9cc:	6f6c205f 	svcvs	0x006c205f
     9d0:	6c20676e 	stcvs	7, cr6, [r0], #-440	; 0xfffffe48
     9d4:	20676e6f 	rsbcs	r6, r7, pc, ror #28
     9d8:	00746e69 	rsbseq	r6, r4, r9, ror #28
     9dc:	4e495f5f 	mcrmi	15, 2, r5, cr9, cr15, {2}
     9e0:	435f3854 	cmpmi	pc, #84, 16	; 0x540000
     9e4:	20296328 	eorcs	r6, r9, r8, lsr #6
     9e8:	5f5f0063 	svcpl	0x005f0063
     9ec:	6d756874 	ldclvs	8, cr6, [r5, #-464]!	; 0xfffffe30
     9f0:	5f5f3262 	svcpl	0x005f3262
     9f4:	5f003120 	svcpl	0x00003120
     9f8:	4d52415f 	ldfmie	f4, [r2, #-380]	; 0xfffffe84
     9fc:	4232335f 	eorsmi	r3, r2, #2080374785	; 0x7c000001
     a00:	535f5449 	cmppl	pc, #1224736768	; 0x49000000
     a04:	45544154 	ldrbmi	r4, [r4, #-340]	; 0xfffffeac
     a08:	53003120 	movwpl	r3, #288	; 0x120
     a0c:	425f5445 	subsmi	r5, pc, #1157627904	; 0x45000000
     a10:	56285449 	strtpl	r5, [r8], -r9, asr #8
     a14:	422c5241 	eormi	r5, ip, #268435460	; 0x10000004
     a18:	20295449 	eorcs	r5, r9, r9, asr #8
     a1c:	20524156 	subscs	r4, r2, r6, asr r1
     a20:	28203d7c 	stmdacs	r0!, {r2, r3, r4, r5, r6, r8, sl, fp, ip, sp}
     a24:	3c3c2031 	ldccc	0, cr2, [ip], #-196	; 0xffffff3c
     a28:	49422820 	stmdbmi	r2, {r5, fp, sp}^
     a2c:	00292954 	eoreq	r2, r9, r4, asr r9
     a30:	4e495f5f 	mcrmi	15, 2, r5, cr9, cr15, {2}
     a34:	454c5f54 	strbmi	r5, [ip, #-3924]	; 0xfffff0ac
     a38:	31545341 	cmpcc	r4, r1, asr #6
     a3c:	49575f36 	ldmdbmi	r7, {r1, r2, r4, r5, r8, r9, sl, fp, ip, lr}^
     a40:	5f485444 	svcpl	0x00485444
     a44:	3631205f 			; <UNDEFINED> instruction: 0x3631205f
     a48:	555f5f00 	ldrbpl	r5, [pc, #-3840]	; fffffb50 <_estack+0xdfffd350>
     a4c:	43414c4c 	movtmi	r4, #7244	; 0x1c4c
     a50:	5f4d5543 	svcpl	0x004d5543
     a54:	5f4e494d 	svcpl	0x004e494d
     a58:	2e30205f 	mrccs	0, 1, r2, cr0, cr15, {2}
     a5c:	4c4c5530 	cfstr64mi	mvdx5, [ip], {48}	; 0x30
     a60:	5f5f004b 	svcpl	0x005f004b
     a64:	5f4d5241 	svcpl	0x004d5241
     a68:	4e4f454e 	cdpmi	5, 4, cr4, cr15, cr14, {2}
     a6c:	555f5f00 	ldrbpl	r5, [pc, #-3840]	; fffffb74 <_estack+0xdfffd374>
     a70:	50544e49 	subspl	r4, r4, r9, asr #28
     a74:	545f5254 	ldrbpl	r5, [pc], #-596	; a7c <_Min_Stack_Size+0x67c>
     a78:	5f455059 	svcpl	0x00455059
     a7c:	6e75205f 	mrcvs	0, 3, r2, cr5, cr15, {2}
     a80:	6e676973 			; <UNDEFINED> instruction: 0x6e676973
     a84:	69206465 	stmdbvs	r0!, {r0, r2, r5, r6, sl, sp, lr}
     a88:	5f00746e 	svcpl	0x0000746e
     a8c:	544c465f 	strbpl	r4, [ip], #-1631	; 0xfffff9a1
     a90:	485f3233 	ldmdami	pc, {r0, r1, r4, r5, r9, ip, sp}^	; <UNPREDICTABLE>
     a94:	445f5341 	ldrbmi	r5, [pc], #-833	; a9c <_Min_Stack_Size+0x69c>
     a98:	524f4e45 	subpl	r4, pc, #1104	; 0x450
     a9c:	205f5f4d 	subscs	r5, pc, sp, asr #30
     aa0:	5f5f0031 	svcpl	0x005f0031
     aa4:	5f434347 	svcpl	0x00434347
     aa8:	45564148 	ldrbmi	r4, [r6, #-328]	; 0xfffffeb8
     aac:	4e59535f 	mrcmi	3, 2, r5, cr9, cr15, {2}
     ab0:	4f435f43 	svcmi	0x00435f43
     ab4:	5241504d 	subpl	r5, r1, #77	; 0x4d
     ab8:	4e415f45 	cdpmi	15, 4, cr5, cr1, cr5, {2}
     abc:	57535f44 	ldrbpl	r5, [r3, -r4, asr #30]
     ac0:	315f5041 	cmpcc	pc, r1, asr #32
     ac4:	5f003120 	svcpl	0x00003120
     ac8:	5f41535f 	svcpl	0x0041535f
     acc:	54494249 	strbpl	r4, [r9], #-585	; 0xfffffdb7
     ad0:	31205f5f 			; <UNDEFINED> instruction: 0x31205f5f
     ad4:	5f5f0036 	svcpl	0x005f0036
     ad8:	52464c4c 	subpl	r4, r6, #76, 24	; 0x4c00
     adc:	5f544341 	svcpl	0x00544341
     ae0:	5f58414d 	svcpl	0x0058414d
     ae4:	5830205f 	ldmdapl	r0!, {r0, r1, r2, r3, r4, r6, sp}
     ae8:	46464637 			; <UNDEFINED> instruction: 0x46464637
     aec:	46464646 	strbmi	r4, [r6], -r6, asr #12
     af0:	46464646 	strbmi	r4, [r6], -r6, asr #12
     af4:	46464646 	strbmi	r4, [r6], -r6, asr #12
     af8:	33362d50 	teqcc	r6, #80, 26	; 0x1400
     afc:	00524c4c 	subseq	r4, r2, ip, asr #24
     b00:	4e495f5f 	mcrmi	15, 2, r5, cr9, cr15, {2}
     b04:	41465f54 	cmpmi	r6, r4, asr pc
     b08:	34365453 	ldrtcc	r5, [r6], #-1107	; 0xfffffbad
     b0c:	58414d5f 	stmdapl	r1, {r0, r1, r2, r3, r4, r6, r8, sl, fp, lr}^
     b10:	30205f5f 	eorcc	r5, r0, pc, asr pc
     b14:	66663778 			; <UNDEFINED> instruction: 0x66663778
     b18:	66666666 	strbtvs	r6, [r6], -r6, ror #12
     b1c:	66666666 	strbtvs	r6, [r6], -r6, ror #12
     b20:	66666666 	strbtvs	r6, [r6], -r6, ror #12
     b24:	004c4c66 	subeq	r4, ip, r6, ror #24
     b28:	52415f5f 	subpl	r5, r1, #380	; 0x17c
     b2c:	45465f4d 	strbmi	r5, [r6, #-3917]	; 0xfffff0b3
     b30:	52555441 	subspl	r5, r5, #1090519040	; 0x41000000
     b34:	50465f45 	subpl	r5, r6, r5, asr #30
     b38:	535f3631 	cmppl	pc, #51380224	; 0x3100000
     b3c:	414c4143 	cmpmi	ip, r3, asr #2
     b40:	52415f52 	subpl	r5, r1, #328	; 0x148
     b44:	4d485449 	cfstrdmi	mvd5, [r8, #-292]	; 0xfffffedc
     b48:	43495445 	movtmi	r5, #37957	; 0x9445
     b4c:	415f5f00 	cmpmi	pc, r0, lsl #30
     b50:	415f4d52 	cmpmi	pc, r2, asr sp	; <UNPREDICTABLE>
     b54:	5f484352 	svcpl	0x00484352
     b58:	464f5250 			; <UNDEFINED> instruction: 0x464f5250
     b5c:	20454c49 	subcs	r4, r5, r9, asr #24
     b60:	5f003737 	svcpl	0x00003737
     b64:	544c465f 	strbpl	r4, [ip], #-1631	; 0xfffff9a1
     b68:	4749445f 	smlsldmi	r4, r9, pc, r4	; <UNPREDICTABLE>
     b6c:	36205f5f 	qsaxcc	r5, r0, pc	; <UNPREDICTABLE>
     b70:	495f5f00 	ldmdbmi	pc, {r8, r9, sl, fp, ip, lr}^	; <UNPREDICTABLE>
     b74:	465f544e 	ldrbmi	r5, [pc], -lr, asr #8
     b78:	31545341 	cmpcc	r4, r1, asr #6
     b7c:	414d5f36 	cmpmi	sp, r6, lsr pc
     b80:	205f5f58 	subscs	r5, pc, r8, asr pc	; <UNPREDICTABLE>
     b84:	66377830 			; <UNDEFINED> instruction: 0x66377830
     b88:	66666666 	strbtvs	r6, [r6], -r6, ror #12
     b8c:	5f006666 	svcpl	0x00006666
     b90:	4343475f 	movtmi	r4, #14175	; 0x375f
     b94:	4f54415f 	svcmi	0x0054415f
     b98:	5f43494d 	svcpl	0x0043494d
     b9c:	4c4f4f42 	mcrrmi	15, 4, r4, pc, cr2
     ba0:	434f4c5f 	movtmi	r4, #64607	; 0xfc5f
     ba4:	52465f4b 	subpl	r5, r6, #300	; 0x12c
     ba8:	32204545 	eorcc	r4, r0, #289406976	; 0x11400000
     bac:	475f5f00 	ldrbmi	r5, [pc, -r0, lsl #30]
     bb0:	485f4343 	ldmdami	pc, {r0, r1, r6, r8, r9, lr}^	; <UNPREDICTABLE>
     bb4:	5f455641 	svcpl	0x00455641
     bb8:	434e5953 	movtmi	r5, #59731	; 0xe953
     bbc:	4d4f435f 	stclmi	3, cr4, [pc, #-380]	; a48 <_Min_Stack_Size+0x648>
     bc0:	45524150 	ldrbmi	r4, [r2, #-336]	; 0xfffffeb0
     bc4:	444e415f 	strbmi	r4, [lr], #-351	; 0xfffffea1
     bc8:	4157535f 	cmpmi	r7, pc, asr r3
     bcc:	20325f50 	eorscs	r5, r2, r0, asr pc
     bd0:	5f5f0031 	svcpl	0x005f0031
     bd4:	465f4144 	ldrbmi	r4, [pc], -r4, asr #2
     bd8:	5f544942 	svcpl	0x00544942
     bdc:	3133205f 	teqcc	r3, pc, asr r0
     be0:	415f5f00 	cmpmi	pc, r0, lsl #30
     be4:	535f4d52 	cmppl	pc, #5248	; 0x1480
     be8:	4f455a49 	svcmi	0x00455a49
     bec:	494d5f46 	stmdbmi	sp, {r1, r2, r6, r8, r9, sl, fp, ip, lr}^
     bf0:	414d494e 	cmpmi	sp, lr, asr #18
     bf4:	4e455f4c 	cdpmi	15, 4, cr5, cr5, cr12, {2}
     bf8:	31204d55 			; <UNDEFINED> instruction: 0x31204d55
     bfc:	555f5f00 	ldrbpl	r5, [pc, #-3840]	; fffffd04 <_estack+0xdfffd504>
     c00:	5f534553 	svcpl	0x00534553
     c04:	54494e49 	strbpl	r4, [r9], #-3657	; 0xfffff1b7
     c08:	494e4946 	stmdbmi	lr, {r1, r2, r6, r8, fp, lr}^
     c0c:	31205f5f 			; <UNDEFINED> instruction: 0x31205f5f
     c10:	445f5f00 	ldrbmi	r5, [pc], #-3840	; c18 <_Min_Stack_Size+0x818>
     c14:	32334345 	eorscc	r4, r3, #335544321	; 0x14000001
     c18:	4e494d5f 	mcrmi	13, 2, r4, cr9, cr15, {2}
     c1c:	31205f5f 			; <UNDEFINED> instruction: 0x31205f5f
     c20:	35392d45 	ldrcc	r2, [r9, #-3397]!	; 0xfffff2bb
     c24:	5f004644 	svcpl	0x00004644
     c28:	4343475f 	movtmi	r4, #14175	; 0x375f
     c2c:	4f54415f 	svcmi	0x0054415f
     c30:	5f43494d 	svcpl	0x0043494d
     c34:	474e4f4c 	strbmi	r4, [lr, -ip, asr #30]
     c38:	434f4c5f 	movtmi	r4, #64607	; 0xfc5f
     c3c:	52465f4b 	subpl	r5, r6, #300	; 0x12c
     c40:	32204545 	eorcc	r4, r0, #289406976	; 0x11400000
     c44:	555f5f00 	ldrbpl	r5, [pc, #-3840]	; fffffd4c <_estack+0xdfffd54c>
     c48:	43434153 	movtmi	r4, #12627	; 0x3153
     c4c:	455f4d55 	ldrbmi	r4, [pc, #-3413]	; fffffeff <_estack+0xdfffd6ff>
     c50:	4c495350 	mcrrmi	3, 5, r5, r9, cr0
     c54:	5f5f4e4f 	svcpl	0x005f4e4f
     c58:	31783020 	cmncc	r8, r0, lsr #32
     c5c:	55382d50 	ldrpl	r2, [r8, #-3408]!	; 0xfffff2b0
     c60:	5f004b48 	svcpl	0x00004b48
     c64:	5254505f 	subspl	r5, r4, #95	; 0x5f
     c68:	46464944 	strbmi	r4, [r6], -r4, asr #18
     c6c:	58414d5f 	stmdapl	r1, {r0, r1, r2, r3, r4, r6, r8, sl, fp, lr}^
     c70:	30205f5f 	eorcc	r5, r0, pc, asr pc
     c74:	66663778 			; <UNDEFINED> instruction: 0x66663778
     c78:	66666666 	strbtvs	r6, [r6], -r6, ror #12
     c7c:	5f5f0066 	svcpl	0x005f0066
     c80:	33544c46 	cmpcc	r4, #17920	; 0x4600
     c84:	41485f32 	cmpmi	r8, r2, lsr pc
     c88:	55515f53 	ldrbpl	r5, [r1, #-3923]	; 0xfffff0ad
     c8c:	5f544549 	svcpl	0x00544549
     c90:	5f4e414e 	svcpl	0x004e414e
     c94:	0031205f 	eorseq	r2, r1, pc, asr r0
     c98:	4c555f5f 	mrrcmi	15, 5, r5, r5, cr15	; <UNPREDICTABLE>
     c9c:	55434341 	strbpl	r4, [r3, #-833]	; 0xfffffcbf
     ca0:	414d5f4d 	cmpmi	sp, sp, asr #30
     ca4:	205f5f58 	subscs	r5, pc, r8, asr pc	; <UNPREDICTABLE>
     ca8:	46465830 			; <UNDEFINED> instruction: 0x46465830
     cac:	46464646 	strbmi	r4, [r6], -r6, asr #12
     cb0:	46464646 	strbmi	r4, [r6], -r6, asr #12
     cb4:	46464646 	strbmi	r4, [r6], -r6, asr #12
     cb8:	2d504646 	ldclcs	6, cr4, [r0, #-280]	; 0xfffffee8
     cbc:	4c553233 	lfmmi	f3, 2, [r5], {51}	; 0x33
     cc0:	5f5f004b 	svcpl	0x005f004b
     cc4:	41524655 	cmpmi	r2, r5, asr r6
     cc8:	4d5f5443 	cfldrdmi	mvd5, [pc, #-268]	; bc4 <_Min_Stack_Size+0x7c4>
     ccc:	5f5f5841 	svcpl	0x005f5841
     cd0:	46583020 	ldrbmi	r3, [r8], -r0, lsr #32
     cd4:	50464646 	subpl	r4, r6, r6, asr #12
     cd8:	5536312d 	ldrpl	r3, [r6, #-301]!	; 0xfffffed3
     cdc:	5f5f0052 	svcpl	0x005f0052
     ce0:	41524653 	cmpmi	r2, r3, asr r6
     ce4:	4d5f5443 	cfldrdmi	mvd5, [pc, #-268]	; be0 <_Min_Stack_Size+0x7e0>
     ce8:	5f5f5841 	svcpl	0x005f5841
     cec:	37583020 	ldrbcc	r3, [r8, -r0, lsr #32]
     cf0:	372d5046 	strcc	r5, [sp, -r6, asr #32]!
     cf4:	5f005248 	svcpl	0x00005248
     cf8:	4e49555f 	mcrmi	5, 2, r5, cr9, cr15, {2}
     cfc:	41465f54 	cmpmi	r6, r4, asr pc
     d00:	34365453 	ldrtcc	r5, [r6], #-1107	; 0xfffffbad
     d04:	5059545f 	subspl	r5, r9, pc, asr r4
     d08:	205f5f45 	subscs	r5, pc, r5, asr #30
     d0c:	676e6f6c 	strbvs	r6, [lr, -ip, ror #30]!
     d10:	6e6f6c20 	cdpvs	12, 6, cr6, cr15, cr0, {1}
     d14:	6e752067 	cdpvs	0, 7, cr2, cr5, cr7, {3}
     d18:	6e676973 			; <UNDEFINED> instruction: 0x6e676973
     d1c:	69206465 	stmdbvs	r0!, {r0, r2, r5, r6, sl, sp, lr}
     d20:	5f00746e 	svcpl	0x0000746e
     d24:	4d52415f 	ldfmie	f4, [r2, #-380]	; 0xfffffe84
     d28:	4241455f 	submi	r4, r1, #398458880	; 0x17c00000
     d2c:	205f5f49 	subscs	r5, pc, r9, asr #30
     d30:	54530031 	ldrbpl	r0, [r3], #-49	; 0xffffffcf
     d34:	2032334d 	eorscs	r3, r2, sp, asr #6
     d38:	5f5f0031 	svcpl	0x005f0031
     d3c:	544e4955 	strbpl	r4, [lr], #-2389	; 0xfffff6ab
     d40:	41454c5f 	cmpmi	r5, pc, asr ip
     d44:	5f385453 	svcpl	0x00385453
     d48:	5f58414d 	svcpl	0x0058414d
     d4c:	7830205f 	ldmdavc	r0!, {r0, r1, r2, r3, r4, r6, sp}
     d50:	5f006666 	svcpl	0x00006666
     d54:	544e495f 	strbpl	r4, [lr], #-2399	; 0xfffff6a1
     d58:	4d5f3436 	cfldrdmi	mvd3, [pc, #-216]	; c88 <_Min_Stack_Size+0x888>
     d5c:	5f5f5841 	svcpl	0x005f5841
     d60:	37783020 	ldrbcc	r3, [r8, -r0, lsr #32]!
     d64:	66666666 	strbtvs	r6, [r6], -r6, ror #12
     d68:	66666666 	strbtvs	r6, [r6], -r6, ror #12
     d6c:	66666666 	strbtvs	r6, [r6], -r6, ror #12
     d70:	4c666666 	stclmi	6, cr6, [r6], #-408	; 0xfffffe68
     d74:	5f5f004c 	svcpl	0x005f004c
     d78:	38544e49 	ldmdacc	r4, {r0, r3, r6, r9, sl, fp, lr}^
     d7c:	58414d5f 	stmdapl	r1, {r0, r1, r2, r3, r4, r6, r8, sl, fp, lr}^
     d80:	30205f5f 	eorcc	r5, r0, pc, asr pc
     d84:	00663778 	rsbeq	r3, r6, r8, ror r7
     d88:	4c555f5f 	mrrcmi	15, 5, r5, r5, cr15	; <UNPREDICTABLE>
     d8c:	43415246 	movtmi	r5, #4678	; 0x1246
     d90:	50455f54 	subpl	r5, r5, r4, asr pc
     d94:	4f4c4953 	svcmi	0x004c4953
     d98:	205f5f4e 	subscs	r5, pc, lr, asr #30
     d9c:	50317830 	eorspl	r7, r1, r0, lsr r8
     da0:	5532332d 	ldrpl	r3, [r2, #-813]!	; 0xfffffcd3
     da4:	5f00524c 	svcpl	0x0000524c
     da8:	4345445f 	movtmi	r4, #21599	; 0x545f
     dac:	5f383231 	svcpl	0x00383231
     db0:	49535045 	ldmdbmi	r3, {r0, r2, r6, ip, lr}^
     db4:	5f4e4f4c 	svcpl	0x004e4f4c
     db8:	4531205f 	ldrmi	r2, [r1, #-95]!	; 0xffffffa1
     dbc:	4433332d 	ldrtmi	r3, [r3], #-813	; 0xfffffcd3
     dc0:	5f5f004c 	svcpl	0x005f004c
     dc4:	52464c55 	subpl	r4, r6, #21760	; 0x5500
     dc8:	5f544341 	svcpl	0x00544341
     dcc:	54494249 	strbpl	r4, [r9], #-585	; 0xfffffdb7
     dd0:	30205f5f 	eorcc	r5, r0, pc, asr pc
     dd4:	4c5f5f00 	mrrcmi	15, 0, r5, pc, cr0	; <UNPREDICTABLE>
     dd8:	4343414c 	movtmi	r4, #12620	; 0x314c
     ddc:	465f4d55 			; <UNDEFINED> instruction: 0x465f4d55
     de0:	5f544942 	svcpl	0x00544942
     de4:	3133205f 	teqcc	r3, pc, asr r0
     de8:	555f5f00 	ldrbpl	r5, [pc, #-3840]	; fffffef0 <_estack+0xdfffd6f0>
     dec:	52464c4c 	subpl	r4, r6, #76, 24	; 0x4c00
     df0:	5f544341 	svcpl	0x00544341
     df4:	5f58414d 	svcpl	0x0058414d
     df8:	5830205f 	ldmdapl	r0!, {r0, r1, r2, r3, r4, r6, sp}
     dfc:	46464646 	strbmi	r4, [r6], -r6, asr #12
     e00:	46464646 	strbmi	r4, [r6], -r6, asr #12
     e04:	46464646 	strbmi	r4, [r6], -r6, asr #12
     e08:	46464646 	strbmi	r4, [r6], -r6, asr #12
     e0c:	34362d50 	ldrtcc	r2, [r6], #-3408	; 0xfffff2b0
     e10:	524c4c55 	subpl	r4, ip, #21760	; 0x5500
     e14:	555f5f00 	ldrbpl	r5, [pc, #-3840]	; ffffff1c <_estack+0xdfffd71c>
     e18:	5f544e49 	svcpl	0x00544e49
     e1c:	5341454c 	movtpl	r4, #5452	; 0x154c
     e20:	5f343654 	svcpl	0x00343654
     e24:	5f58414d 	svcpl	0x0058414d
     e28:	7830205f 	ldmdavc	r0!, {r0, r1, r2, r3, r4, r6, sp}
     e2c:	66666666 	strbtvs	r6, [r6], -r6, ror #12
     e30:	66666666 	strbtvs	r6, [r6], -r6, ror #12
     e34:	66666666 	strbtvs	r6, [r6], -r6, ror #12
     e38:	66666666 	strbtvs	r6, [r6], -r6, ror #12
     e3c:	004c4c55 	subeq	r4, ip, r5, asr ip
     e40:	4c465f5f 	mcrrmi	15, 5, r5, r6, cr15
     e44:	41525f54 	cmpmi	r2, r4, asr pc
     e48:	5f584944 	svcpl	0x00584944
     e4c:	0032205f 	eorseq	r2, r2, pc, asr r0
     e50:	4c555f5f 	mrrcmi	15, 5, r5, r5, cr15	; <UNPREDICTABLE>
     e54:	4152464c 	cmpmi	r2, ip, asr #12
     e58:	4d5f5443 	cfldrdmi	mvd5, [pc, #-268]	; d54 <_Min_Stack_Size+0x954>
     e5c:	5f5f4e49 	svcpl	0x005f4e49
     e60:	302e3020 	eorcc	r3, lr, r0, lsr #32
     e64:	524c4c55 	subpl	r4, ip, #21760	; 0x5500
     e68:	445f5f00 	ldrbmi	r5, [pc], #-3840	; e70 <_Min_Stack_Size+0xa70>
     e6c:	485f4c42 	ldmdami	pc, {r1, r6, sl, fp, lr}^	; <UNPREDICTABLE>
     e70:	515f5341 	cmppl	pc, r1, asr #6
     e74:	54454955 	strbpl	r4, [r5], #-2389	; 0xfffff6ab
     e78:	4e414e5f 	mcrmi	14, 2, r4, cr1, cr15, {2}
     e7c:	31205f5f 			; <UNDEFINED> instruction: 0x31205f5f
     e80:	555f5f00 	ldrbpl	r5, [pc, #-3840]	; ffffff88 <_estack+0xdfffd788>
     e84:	55434341 	strbpl	r4, [r3, #-833]	; 0xfffffcbf
     e88:	494d5f4d 	stmdbmi	sp, {r0, r2, r3, r6, r8, r9, sl, fp, ip, lr}^
     e8c:	205f5f4e 	subscs	r5, pc, lr, asr #30
     e90:	55302e30 	ldrpl	r2, [r0, #-3632]!	; 0xfffff1d0
     e94:	5f5f004b 	svcpl	0x005f004b
     e98:	4152464c 	cmpmi	r2, ip, asr #12
     e9c:	455f5443 	ldrbmi	r5, [pc, #-1091]	; a61 <_Min_Stack_Size+0x661>
     ea0:	4c495350 	mcrrmi	3, 5, r5, r9, cr0
     ea4:	5f5f4e4f 	svcpl	0x005f4e4f
     ea8:	31783020 	cmncc	r8, r0, lsr #32
     eac:	31332d50 	teqcc	r3, r0, asr sp
     eb0:	5f00524c 	svcpl	0x0000524c
     eb4:	544e495f 	strbpl	r4, [lr], #-2399	; 0xfffff6a1
     eb8:	5341465f 	movtpl	r4, #5727	; 0x165f
     ebc:	545f3854 	ldrbpl	r3, [pc], #-2132	; ec4 <_Min_Stack_Size+0xac4>
     ec0:	5f455059 	svcpl	0x00455059
     ec4:	6e69205f 	mcrvs	0, 3, r2, cr9, cr15, {2}
     ec8:	46410074 			; <UNDEFINED> instruction: 0x46410074
     ecc:	765f4f49 	ldrbvc	r4, [pc], -r9, asr #30
     ed0:	4564696f 	strbmi	r6, [r4, #-2415]!	; 0xfffff691
     ed4:	43495458 	movtmi	r5, #37976	; 0x9458
     ed8:	69666e6f 	stmdbvs	r6!, {r0, r1, r2, r3, r5, r6, r9, sl, fp, sp, lr}^
     edc:	61727567 	cmnvs	r2, r7, ror #10
     ee0:	6e6f6974 			; <UNDEFINED> instruction: 0x6e6f6974
     ee4:	465f5f00 	ldrbmi	r5, [pc], -r0, lsl #30
     ee8:	3436544c 	ldrtcc	r5, [r6], #-1100	; 0xfffffbb4
     eec:	5341485f 	movtpl	r4, #6239	; 0x185f
     ef0:	464e495f 			; <UNDEFINED> instruction: 0x464e495f
     ef4:	54494e49 	strbpl	r4, [r9], #-3657	; 0xfffff1b7
     ef8:	205f5f59 	subscs	r5, pc, r9, asr pc	; <UNPREDICTABLE>
     efc:	5f5f0031 	svcpl	0x005f0031
     f00:	33544c46 	cmpcc	r4, #17920	; 0x4600
     f04:	445f5832 	ldrbmi	r5, [pc], #-2098	; f0c <_Min_Stack_Size+0xb0c>
     f08:	524f4e45 	subpl	r4, pc, #1104	; 0x450
     f0c:	494d5f4d 	stmdbmi	sp, {r0, r2, r3, r6, r8, r9, sl, fp, ip, lr}^
     f10:	205f5f4e 	subscs	r5, pc, lr, asr #30
     f14:	34392e34 	ldrtcc	r2, [r9], #-3636	; 0xfffff1cc
     f18:	36353630 			; <UNDEFINED> instruction: 0x36353630
     f1c:	34383534 	ldrtcc	r3, [r8], #-1332	; 0xfffffacc
     f20:	36343231 			; <UNDEFINED> instruction: 0x36343231
     f24:	2d653435 	cfstrdcs	mvd3, [r5, #-212]!	; 0xffffff2c
     f28:	46343233 			; <UNDEFINED> instruction: 0x46343233
     f2c:	00783233 	rsbseq	r3, r8, r3, lsr r2
     f30:	41535f5f 	cmpmi	r3, pc, asr pc
     f34:	4d554343 	ldclmi	3, cr4, [r5, #-268]	; 0xfffffef4
     f38:	4942465f 	stmdbmi	r2, {r0, r1, r2, r3, r4, r6, r9, sl, lr}^
     f3c:	205f5f54 	subscs	r5, pc, r4, asr pc	; <UNPREDICTABLE>
     f40:	5f5f0037 	svcpl	0x005f0037
     f44:	41484357 	cmpmi	r8, r7, asr r3
     f48:	59545f52 	ldmdbpl	r4, {r1, r4, r6, r8, r9, sl, fp, ip, lr}^
     f4c:	5f5f4550 	svcpl	0x005f4550
     f50:	736e7520 	cmnvc	lr, #32, 10	; 0x8000000
     f54:	656e6769 	strbvs	r6, [lr, #-1897]!	; 0xfffff897
     f58:	6e692064 	cdpvs	0, 6, cr2, cr9, cr4, {3}
     f5c:	5f5f0074 	svcpl	0x005f0074
     f60:	5f4c4244 	svcpl	0x004c4244
     f64:	5f4e494d 	svcpl	0x004e494d
     f68:	2828205f 	stmdacs	r8!, {r0, r1, r2, r3, r4, r6, sp}
     f6c:	62756f64 	rsbsvs	r6, r5, #100, 30	; 0x190
     f70:	3229656c 	eorcc	r6, r9, #108, 10	; 0x1b000000
     f74:	3532322e 	ldrcc	r3, [r2, #-558]!	; 0xfffffdd2
     f78:	38333730 	ldmdacc	r3!, {r4, r5, r8, r9, sl, ip, sp}
     f7c:	30353835 	eorscc	r3, r5, r5, lsr r8
     f80:	31303237 	teqcc	r0, r7, lsr r2
     f84:	332d6534 			; <UNDEFINED> instruction: 0x332d6534
     f88:	294c3830 	stmdbcs	ip, {r4, r5, fp, ip, sp}^
     f8c:	465f5f00 	ldrbmi	r5, [pc], -r0, lsl #30
     f90:	3436544c 	ldrtcc	r5, [r6], #-1100	; 0xfffffbb4
     f94:	4e494d5f 	mcrmi	13, 2, r4, cr9, cr15, {2}
     f98:	32205f5f 	eorcc	r5, r0, #380	; 0x17c
     f9c:	3532322e 	ldrcc	r3, [r2, #-558]!	; 0xfffffdd2
     fa0:	38333730 	ldmdacc	r3!, {r4, r5, r8, r9, sl, ip, sp}
     fa4:	30353835 	eorscc	r3, r5, r5, lsr r8
     fa8:	31303237 	teqcc	r0, r7, lsr r2
     fac:	332d6534 			; <UNDEFINED> instruction: 0x332d6534
     fb0:	36463830 			; <UNDEFINED> instruction: 0x36463830
     fb4:	5f5f0034 	svcpl	0x005f0034
     fb8:	36434544 	strbcc	r4, [r3], -r4, asr #10
     fbc:	414d5f34 	cmpmi	sp, r4, lsr pc
     fc0:	205f5f58 	subscs	r5, pc, r8, asr pc	; <UNPREDICTABLE>
     fc4:	39392e39 	ldmdbcc	r9!, {r0, r3, r4, r5, r9, sl, fp, sp}
     fc8:	39393939 	ldmdbcc	r9!, {r0, r3, r4, r5, r8, fp, ip, sp}
     fcc:	39393939 	ldmdbcc	r9!, {r0, r3, r4, r5, r8, fp, ip, sp}
     fd0:	39393939 	ldmdbcc	r9!, {r0, r3, r4, r5, r8, fp, ip, sp}
     fd4:	38334539 	ldmdacc	r3!, {r0, r3, r4, r5, r8, sl, lr}
     fd8:	00444434 	subeq	r4, r4, r4, lsr r4
     fdc:	52465f5f 	subpl	r5, r6, #380	; 0x17c
     fe0:	5f544341 	svcpl	0x00544341
     fe4:	5f4e494d 	svcpl	0x004e494d
     fe8:	2d28205f 	stccs	0, cr2, [r8, #-380]!	; 0xfffffe84
     fec:	52352e30 	eorspl	r2, r5, #48, 28	; 0x300
     ff0:	352e302d 	strcc	r3, [lr, #-45]!	; 0xffffffd3
     ff4:	5f002952 	svcpl	0x00002952
     ff8:	4343475f 	movtmi	r4, #14175	; 0x375f
     ffc:	4f54415f 	svcmi	0x0054415f
    1000:	5f43494d 	svcpl	0x0043494d
    1004:	5f544e49 	svcpl	0x00544e49
    1008:	4b434f4c 	blmi	10d4d40 <_Min_Stack_Size+0x10d4940>
    100c:	4552465f 	ldrbmi	r4, [r2, #-1631]	; 0xfffff9a1
    1010:	00322045 	eorseq	r2, r2, r5, asr #32
    1014:	4e495f5f 	mcrmi	15, 2, r5, cr9, cr15, {2}
    1018:	58414d54 	stmdapl	r1, {r2, r4, r6, r8, sl, fp, lr}^
    101c:	58414d5f 	stmdapl	r1, {r0, r1, r2, r3, r4, r6, r8, sl, fp, lr}^
    1020:	30205f5f 	eorcc	r5, r0, pc, asr pc
    1024:	66663778 			; <UNDEFINED> instruction: 0x66663778
    1028:	66666666 	strbtvs	r6, [r6], -r6, ror #12
    102c:	66666666 	strbtvs	r6, [r6], -r6, ror #12
    1030:	66666666 	strbtvs	r6, [r6], -r6, ror #12
    1034:	004c4c66 	subeq	r4, ip, r6, ror #24
    1038:	41555f5f 	cmpmi	r5, pc, asr pc
    103c:	4d554343 	ldclmi	3, cr4, [r5, #-268]	; 0xfffffef4
    1040:	5350455f 	cmppl	r0, #398458880	; 0x17c00000
    1044:	4e4f4c49 	cdpmi	12, 4, cr4, cr15, cr9, {2}
    1048:	30205f5f 	eorcc	r5, r0, pc, asr pc
    104c:	2d503178 	ldfcse	f3, [r0, #-480]	; 0xfffffe20
    1050:	4b553631 	blmi	154e91c <_Min_Stack_Size+0x154e51c>
    1054:	415f5f00 	cmpmi	pc, r0, lsl #30
    1058:	4d554343 	ldclmi	3, cr4, [r5, #-268]	; 0xfffffef4
    105c:	4942495f 	stmdbmi	r2, {r0, r1, r2, r3, r4, r6, r8, fp, lr}^
    1060:	205f5f54 	subscs	r5, pc, r4, asr pc	; <UNPREDICTABLE>
    1064:	5f003631 	svcpl	0x00003631
    1068:	42444c5f 	submi	r4, r4, #24320	; 0x5f00
    106c:	45445f4c 	strbmi	r5, [r4, #-3916]	; 0xfffff0b4
    1070:	4d524f4e 	ldclmi	15, cr4, [r2, #-312]	; 0xfffffec8
    1074:	4e494d5f 	mcrmi	13, 2, r4, cr9, cr15, {2}
    1078:	34205f5f 	strtcc	r5, [r0], #-3935	; 0xfffff0a1
    107c:	3034392e 	eorscc	r3, r4, lr, lsr #18
    1080:	34363536 	ldrtcc	r3, [r6], #-1334	; 0xfffffaca
    1084:	31343835 	teqcc	r4, r5, lsr r8
    1088:	35363432 	ldrcc	r3, [r6, #-1074]!	; 0xfffffbce
    108c:	332d6534 			; <UNDEFINED> instruction: 0x332d6534
    1090:	004c3432 	subeq	r3, ip, r2, lsr r4
    1094:	4c465f5f 	mcrrmi	15, 5, r5, r6, cr15
    1098:	5f343654 	svcpl	0x00343654
    109c:	5f58414d 	svcpl	0x0058414d
    10a0:	455f3031 	ldrbmi	r3, [pc, #-49]	; 1077 <_Min_Stack_Size+0xc77>
    10a4:	5f5f5058 	svcpl	0x005f5058
    10a8:	38303320 	ldmdacc	r0!, {r5, r8, r9, ip, sp}
    10ac:	535f5f00 	cmppl	pc, #0, 30
    10b0:	55434341 	strbpl	r4, [r3, #-833]	; 0xfffffcbf
    10b4:	42495f4d 	submi	r5, r9, #308	; 0x134
    10b8:	5f5f5449 	svcpl	0x005f5449
    10bc:	5f003820 	svcpl	0x00003820
    10c0:	5a49535f 	bpl	1255e44 <_Min_Stack_Size+0x1255a44>
    10c4:	5f464f45 	svcpl	0x00464f45
    10c8:	44525450 	ldrbmi	r5, [r2], #-1104	; 0xfffffbb0
    10cc:	5f464649 	svcpl	0x00464649
    10d0:	205f5f54 	subscs	r5, pc, r4, asr pc	; <UNPREDICTABLE>
    10d4:	5f5f0034 	svcpl	0x005f0034
    10d8:	47415250 	smlsldmi	r5, r1, r0, r2
    10dc:	525f414d 	subspl	r4, pc, #1073741843	; 0x40000013
    10e0:	46454445 	strbmi	r4, [r5], -r5, asr #8
    10e4:	5f454e49 	svcpl	0x00454e49
    10e8:	4e545845 	cdpmi	8, 5, cr5, cr4, cr5, {2}
    10ec:	20454d41 	subcs	r4, r5, r1, asr #26
    10f0:	5f5f0031 	svcpl	0x005f0031
    10f4:	41524653 	cmpmi	r2, r3, asr r6
    10f8:	4d5f5443 	cfldrdmi	mvd5, [pc, #-268]	; ff4 <_Min_Stack_Size+0xbf4>
    10fc:	5f5f4e49 	svcpl	0x005f4e49
    1100:	302d2820 	eorcc	r2, sp, r0, lsr #16
    1104:	5248352e 	subpl	r3, r8, #192937984	; 0xb800000
    1108:	352e302d 	strcc	r3, [lr, #-45]!	; 0xffffffd3
    110c:	00295248 	eoreq	r5, r9, r8, asr #4
    1110:	53555f5f 	cmppl	r5, #380	; 0x17c
    1114:	42495f41 	submi	r5, r9, #260	; 0x104
    1118:	5f5f5449 	svcpl	0x005f5449
    111c:	00363120 	eorseq	r3, r6, r0, lsr #2
    1120:	45445f5f 	strbmi	r5, [r4, #-3935]	; 0xfffff0a1
    1124:	38323143 	ldmdacc	r2!, {r0, r1, r6, r8, ip, sp}
    1128:	4e414d5f 	mcrmi	13, 2, r4, cr1, cr15, {2}
    112c:	49445f54 	stmdbmi	r4, {r2, r4, r6, r8, r9, sl, fp, ip, lr}^
    1130:	205f5f47 	subscs	r5, pc, r7, asr #30
    1134:	5f003433 	svcpl	0x00003433
    1138:	4d52415f 	ldfmie	f4, [r2, #-380]	; 0xfffffe84
    113c:	4352415f 	cmpmi	r2, #-1073741801	; 0xc0000017
    1140:	58455f48 	stmdapl	r5, {r3, r6, r8, r9, sl, fp, ip, lr}^
    1144:	44495f54 	strbmi	r5, [r9], #-3924	; 0xfffff0ac
    1148:	5f5f5649 	svcpl	0x005f5649
    114c:	43003120 	movwmi	r3, #288	; 0x120
    1150:	73552f3a 	cmpvc	r5, #58, 30	; 0xe8
    1154:	2f737265 	svccs	0x00737265
    1158:	616e6241 	cmnvs	lr, r1, asr #4
    115c:	532f7962 			; <UNDEFINED> instruction: 0x532f7962
    1160:	32334d54 	eorscc	r4, r3, #84, 26	; 0x1500
    1164:	65627543 	strbvs	r7, [r2, #-1347]!	; 0xfffffabd
    1168:	2f454449 	svccs	0x00454449
    116c:	6b726f77 	blvs	1c9cf50 <_Min_Stack_Size+0x1c9cb50>
    1170:	63617073 	cmnvs	r1, #115	; 0x73
    1174:	2e315f65 	cdpcs	15, 3, cr5, cr1, cr5, {3}
    1178:	2f302e34 	svccs	0x00302e34
    117c:	3162616c 	cmncc	r2, ip, ror #2
    1180:	4950475f 	ldmdbmi	r0, {r0, r1, r2, r3, r4, r6, r8, r9, sl, lr}^
    1184:	554f5f4f 	strbpl	r5, [pc, #-3919]	; 23d <_Min_Heap_Size+0x3d>
    1188:	54555054 	ldrbpl	r5, [r5], #-84	; 0xffffffac
    118c:	6265442f 	rsbvs	r4, r5, #788529152	; 0x2f000000
    1190:	5f006775 	svcpl	0x00006775
    1194:	4d52415f 	ldfmie	f4, [r2, #-380]	; 0xfffffe84
    1198:	4145465f 	cmpmi	r5, pc, asr r6
    119c:	45525554 	ldrbmi	r5, [r2, #-1364]	; 0xfffffaac
    11a0:	414e555f 	cmpmi	lr, pc, asr r5
    11a4:	4e47494c 	vmlsmi.f16	s9, s14, s24	; <UNPREDICTABLE>
    11a8:	31204445 			; <UNDEFINED> instruction: 0x31204445
    11ac:	535f5f00 	cmppl	pc, #0, 30
    11b0:	4f455a49 	svcmi	0x00455a49
    11b4:	4c465f46 	mcrrmi	15, 4, r5, r6, cr6
    11b8:	5f54414f 	svcpl	0x0054414f
    11bc:	0034205f 	eorseq	r2, r4, pc, asr r0
    11c0:	49555f5f 	ldmdbmi	r5, {r0, r1, r2, r3, r4, r6, r8, r9, sl, fp, ip, lr}^
    11c4:	3233544e 	eorscc	r5, r3, #1308622848	; 0x4e000000
    11c8:	6328435f 			; <UNDEFINED> instruction: 0x6328435f
    11cc:	20632029 	rsbcs	r2, r3, r9, lsr #32
    11d0:	55202323 	strpl	r2, [r0, #-803]!	; 0xfffffcdd
    11d4:	5f5f004c 	svcpl	0x005f004c
    11d8:	33434544 	movtcc	r4, #13636	; 0x3544
    11dc:	414d5f32 	cmpmi	sp, r2, lsr pc
    11e0:	58455f58 	stmdapl	r5, {r3, r4, r6, r8, r9, sl, fp, ip, lr}^
    11e4:	205f5f50 	subscs	r5, pc, r0, asr pc	; <UNPREDICTABLE>
    11e8:	5f003739 	svcpl	0x00003739
    11ec:	5548545f 	strbpl	r5, [r8, #-1119]	; 0xfffffba1
    11f0:	4c45424d 	sfmmi	f4, 2, [r5], {77}	; 0x4d
    11f4:	31205f5f 			; <UNDEFINED> instruction: 0x31205f5f
    11f8:	445f5f00 	ldrbmi	r5, [pc], #-3840	; 1200 <_Min_Stack_Size+0xe00>
    11fc:	42495f41 	submi	r5, r9, #260	; 0x104
    1200:	5f5f5449 	svcpl	0x005f5449
    1204:	00323320 	eorseq	r3, r2, r0, lsr #6
    1208:	49425f5f 	stmdbmi	r2, {r0, r1, r2, r3, r4, r6, r8, r9, sl, fp, ip, lr}^
    120c:	53454747 	movtpl	r4, #22343	; 0x5747
    1210:	4c415f54 	mcrrmi	15, 5, r5, r1, cr4
    1214:	4d4e4749 	stclmi	7, cr4, [lr, #-292]	; 0xfffffedc
    1218:	5f544e45 	svcpl	0x00544e45
    121c:	0038205f 	eorseq	r2, r8, pc, asr r0
    1220:	414c5f5f 	cmpmi	ip, pc, asr pc
    1224:	4d554343 	ldclmi	3, cr4, [r5, #-268]	; 0xfffffef4
    1228:	4942495f 	stmdbmi	r2, {r0, r1, r2, r3, r4, r6, r8, fp, lr}^
    122c:	205f5f54 	subscs	r5, pc, r4, asr pc	; <UNPREDICTABLE>
    1230:	5f003233 	svcpl	0x00003233
    1234:	544e495f 	strbpl	r4, [lr], #-2399	; 0xfffff6a1
    1238:	5341465f 	movtpl	r4, #5727	; 0x165f
    123c:	575f3854 			; <UNDEFINED> instruction: 0x575f3854
    1240:	48544449 	ldmdami	r4, {r0, r3, r6, sl, lr}^
    1244:	33205f5f 			; <UNDEFINED> instruction: 0x33205f5f
    1248:	5f5f0032 	svcpl	0x005f0032
    124c:	52465355 	subpl	r5, r6, #1409286145	; 0x54000001
    1250:	5f544341 	svcpl	0x00544341
    1254:	5f58414d 	svcpl	0x0058414d
    1258:	5830205f 	ldmdapl	r0!, {r0, r1, r2, r3, r4, r6, sp}
    125c:	2d504646 	ldclcs	6, cr4, [r0, #-280]	; 0xfffffee8
    1260:	52485538 	subpl	r5, r8, #56, 10	; 0xe000000
    1264:	555f5f00 	ldrbpl	r5, [pc, #-3840]	; 36c <_Min_Heap_Size+0x16c>
    1268:	5f544e49 	svcpl	0x00544e49
    126c:	54534146 	ldrbpl	r4, [r3], #-326	; 0xfffffeba
    1270:	414d5f38 	cmpmi	sp, r8, lsr pc
    1274:	205f5f58 	subscs	r5, pc, r8, asr pc	; <UNPREDICTABLE>
    1278:	66667830 			; <UNDEFINED> instruction: 0x66667830
    127c:	66666666 	strbtvs	r6, [r6], -r6, ror #12
    1280:	00556666 	subseq	r6, r5, r6, ror #12
    1284:	524f5f5f 	subpl	r5, pc, #380	; 0x17c
    1288:	5f524544 	svcpl	0x00524544
    128c:	5454494c 	ldrbpl	r4, [r4], #-2380	; 0xfffff6b4
    1290:	455f454c 	ldrbmi	r4, [pc, #-1356]	; d4c <_Min_Stack_Size+0x94c>
    1294:	4149444e 	cmpmi	r9, lr, asr #8
    1298:	205f5f4e 	subscs	r5, pc, lr, asr #30
    129c:	34333231 	ldrtcc	r3, [r3], #-561	; 0xfffffdcf
    12a0:	706f4300 	rsbvc	r4, pc, r0, lsl #6
    12a4:	694c5f79 	stmdbvs	ip, {r0, r3, r4, r5, r6, r8, r9, sl, fp, ip, lr}^
    12a8:	4449656e 	strbmi	r6, [r9], #-1390	; 0xfffffa92
    12ac:	535f5f00 	cmppl	pc, #0, 30
    12b0:	42465f41 	submi	r5, r6, #260	; 0x104
    12b4:	5f5f5449 	svcpl	0x005f5449
    12b8:	00353120 	eorseq	r3, r5, r0, lsr #2
    12bc:	4c465f5f 	mcrrmi	15, 5, r5, r6, cr15
    12c0:	5f343654 	svcpl	0x00343654
    12c4:	5f4e494d 	svcpl	0x004e494d
    12c8:	455f3031 	ldrbmi	r3, [pc, #-49]	; 129f <_Min_Stack_Size+0xe9f>
    12cc:	5f5f5058 	svcpl	0x005f5058
    12d0:	332d2820 			; <UNDEFINED> instruction: 0x332d2820
    12d4:	00293730 	eoreq	r3, r9, r0, lsr r7
    12d8:	41535f5f 	cmpmi	r3, pc, asr pc
    12dc:	4d554343 	ldclmi	3, cr4, [r5, #-268]	; 0xfffffef4
    12e0:	5350455f 	cmppl	r0, #398458880	; 0x17c00000
    12e4:	4e4f4c49 	cdpmi	12, 4, cr4, cr15, cr9, {2}
    12e8:	30205f5f 	eorcc	r5, r0, pc, asr pc
    12ec:	2d503178 	ldfcse	f3, [r0, #-480]	; 0xfffffe20
    12f0:	004b4837 	subeq	r4, fp, r7, lsr r8
    12f4:	4e495f5f 	mcrmi	15, 2, r5, cr9, cr15, {2}
    12f8:	41465f54 	cmpmi	r6, r4, asr pc
    12fc:	36315453 			; <UNDEFINED> instruction: 0x36315453
    1300:	5059545f 	subspl	r5, r9, pc, asr r4
    1304:	205f5f45 	subscs	r5, pc, r5, asr #30
    1308:	00746e69 	rsbseq	r6, r4, r9, ror #28
    130c:	54555f5f 	ldrbpl	r5, [r5], #-3935	; 0xfffff0a1
    1310:	42465f41 	submi	r5, r6, #260	; 0x104
    1314:	5f5f5449 	svcpl	0x005f5449
    1318:	00343620 	eorseq	r3, r4, r0, lsr #12
    131c:	4c465f5f 	mcrrmi	15, 5, r5, r6, cr15
    1320:	5f323354 	svcpl	0x00323354
    1324:	49434544 	stmdbmi	r3, {r2, r6, r8, sl, lr}^
    1328:	5f4c414d 	svcpl	0x004c414d
    132c:	5f474944 	svcpl	0x00474944
    1330:	0039205f 	eorseq	r2, r9, pc, asr r0
    1334:	49555f5f 	ldmdbmi	r5, {r0, r1, r2, r3, r4, r6, r8, r9, sl, fp, ip, lr}^
    1338:	3631544e 	ldrtcc	r5, [r1], -lr, asr #8
    133c:	5059545f 	subspl	r5, r9, pc, asr r4
    1340:	205f5f45 	subscs	r5, pc, r5, asr #30
    1344:	726f6873 	rsbvc	r6, pc, #7536640	; 0x730000
    1348:	6e752074 	mrcvs	0, 3, r2, cr5, cr4, {3}
    134c:	6e676973 			; <UNDEFINED> instruction: 0x6e676973
    1350:	69206465 	stmdbvs	r0!, {r0, r2, r5, r6, sl, sp, lr}
    1354:	5f00746e 	svcpl	0x0000746e
    1358:	4843575f 	stmdami	r3, {r0, r1, r2, r3, r4, r6, r8, r9, sl, ip, lr}^
    135c:	575f5241 	ldrbpl	r5, [pc, -r1, asr #4]
    1360:	48544449 	ldmdami	r4, {r0, r3, r6, sl, lr}^
    1364:	33205f5f 			; <UNDEFINED> instruction: 0x33205f5f
    1368:	5f5f0032 	svcpl	0x005f0032
    136c:	43554e47 	cmpmi	r5, #1136	; 0x470
    1370:	4454535f 	ldrbmi	r5, [r4], #-863	; 0xfffffca1
    1374:	4e495f43 	cdpmi	15, 4, cr5, cr9, cr3, {2}
    1378:	454e494c 	strbmi	r4, [lr, #-2380]	; 0xfffff6b4
    137c:	31205f5f 			; <UNDEFINED> instruction: 0x31205f5f
    1380:	555f5f00 	ldrbpl	r5, [pc, #-3840]	; 488 <_Min_Stack_Size+0x88>
    1384:	495f5148 	ldmdbmi	pc, {r3, r6, r8, ip, lr}^	; <UNPREDICTABLE>
    1388:	5f544942 	svcpl	0x00544942
    138c:	0030205f 	eorseq	r2, r0, pc, asr r0
    1390:	46555f5f 	usaxmi	r5, r5, pc	; <UNPREDICTABLE>
    1394:	54434152 	strbpl	r4, [r3], #-338	; 0xfffffeae
    1398:	4942465f 	stmdbmi	r2, {r0, r1, r2, r3, r4, r6, r9, sl, lr}^
    139c:	205f5f54 	subscs	r5, pc, r4, asr pc	; <UNPREDICTABLE>
    13a0:	54003631 	strpl	r3, [r0], #-1585	; 0xfffff9cf
    13a4:	425f474f 	subsmi	r4, pc, #20709376	; 0x13c0000
    13a8:	56285449 	strtpl	r5, [r8], -r9, asr #8
    13ac:	422c5241 	eormi	r5, ip, #268435460	; 0x10000004
    13b0:	20295449 	eorcs	r5, r9, r9, asr #8
    13b4:	20524156 	subscs	r4, r2, r6, asr r1
    13b8:	28203d5e 	stmdacs	r0!, {r1, r2, r3, r4, r6, r8, sl, fp, ip, sp}
    13bc:	3c3c2031 	ldccc	0, cr2, [ip], #-196	; 0xffffff3c
    13c0:	49422820 	stmdbmi	r2, {r5, fp, sp}^
    13c4:	00292954 	eoreq	r2, r9, r4, asr r9
    13c8:	532f2e2e 			; <UNDEFINED> instruction: 0x532f2e2e
    13cc:	412f6372 			; <UNDEFINED> instruction: 0x412f6372
    13d0:	5f4f4946 	svcpl	0x004f4946
    13d4:	676f7270 			; <UNDEFINED> instruction: 0x676f7270
    13d8:	2e6d6172 	mcrcs	1, 3, r6, cr13, cr2, {3}
    13dc:	5f5f0063 	svcpl	0x005f0063
    13e0:	474e4f4c 	strbmi	r4, [lr, -ip, asr #30]
    13e4:	4e4f4c5f 	mcrmi	12, 2, r4, cr15, cr15, {2}
    13e8:	414d5f47 	cmpmi	sp, r7, asr #30
    13ec:	205f5f58 	subscs	r5, pc, r8, asr pc	; <UNPREDICTABLE>
    13f0:	66377830 			; <UNDEFINED> instruction: 0x66377830
    13f4:	66666666 	strbtvs	r6, [r6], -r6, ror #12
    13f8:	66666666 	strbtvs	r6, [r6], -r6, ror #12
    13fc:	66666666 	strbtvs	r6, [r6], -r6, ror #12
    1400:	4c4c6666 	mcrrmi	6, 6, r6, ip, cr6
    1404:	47494800 	strbmi	r4, [r9, -r0, lsl #16]
    1408:	00312048 	eorseq	r2, r1, r8, asr #32
    140c:	49555f5f 	ldmdbmi	r5, {r0, r1, r2, r3, r4, r6, r8, r9, sl, fp, ip, lr}^
    1410:	4c5f544e 	cfldrdmi	mvd5, [pc], {78}	; 0x4e
    1414:	54534145 	ldrbpl	r4, [r3], #-325	; 0xfffffebb
    1418:	545f3631 	ldrbpl	r3, [pc], #-1585	; 1420 <_Min_Stack_Size+0x1020>
    141c:	5f455059 	svcpl	0x00455059
    1420:	6873205f 	ldmdavs	r3!, {r0, r1, r2, r3, r4, r6, sp}^
    1424:	2074726f 	rsbscs	r7, r4, pc, ror #4
    1428:	69736e75 	ldmdbvs	r3!, {r0, r2, r4, r5, r6, r9, sl, fp, sp, lr}^
    142c:	64656e67 	strbtvs	r6, [r5], #-3687	; 0xfffff199
    1430:	746e6920 	strbtvc	r6, [lr], #-2336	; 0xfffff6e0
    1434:	465f5f00 	ldrbmi	r5, [pc], -r0, lsl #30
    1438:	4d5f544c 	cfldrdmi	mvd5, [pc, #-304]	; 1310 <_Min_Stack_Size+0xf10>
    143c:	315f5841 	cmpcc	pc, r1, asr #16
    1440:	58455f30 	stmdapl	r5, {r4, r5, r8, r9, sl, fp, ip, lr}^
    1444:	205f5f50 	subscs	r5, pc, r0, asr pc	; <UNPREDICTABLE>
    1448:	5f003833 	svcpl	0x00003833
    144c:	414c4c5f 	cmpmi	ip, pc, asr ip
    1450:	4d554343 	ldclmi	3, cr4, [r5, #-268]	; 0xfffffef4
    1454:	58414d5f 	stmdapl	r1, {r0, r1, r2, r3, r4, r6, r8, sl, fp, lr}^
    1458:	30205f5f 	eorcc	r5, r0, pc, asr pc
    145c:	46463758 			; <UNDEFINED> instruction: 0x46463758
    1460:	46464646 	strbmi	r4, [r6], -r6, asr #12
    1464:	46464646 	strbmi	r4, [r6], -r6, asr #12
    1468:	46464646 	strbmi	r4, [r6], -r6, asr #12
    146c:	332d5046 			; <UNDEFINED> instruction: 0x332d5046
    1470:	4b4c4c31 	blmi	131453c <_Min_Stack_Size+0x131413c>
    1474:	4c5f5f00 	mrrcmi	15, 0, r5, pc, cr0	; <UNPREDICTABLE>
    1478:	4343414c 	movtmi	r4, #12620	; 0x314c
    147c:	455f4d55 	ldrbmi	r4, [pc, #-3413]	; 72f <_Min_Stack_Size+0x32f>
    1480:	4c495350 	mcrrmi	3, 5, r5, r9, cr0
    1484:	5f5f4e4f 	svcpl	0x005f4e4f
    1488:	31783020 	cmncc	r8, r0, lsr #32
    148c:	31332d50 	teqcc	r3, r0, asr sp
    1490:	004b4c4c 	subeq	r4, fp, ip, asr #24
    1494:	4f4e5f5f 	svcmi	0x004e5f5f
    1498:	4c4e495f 	mcrrmi	9, 5, r4, lr, cr15	; <UNPREDICTABLE>
    149c:	5f454e49 	svcpl	0x00454e49
    14a0:	0031205f 	eorseq	r2, r1, pc, asr r0
    14a4:	45445f5f 	strbmi	r5, [r4, #-3935]	; 0xfffff0a1
    14a8:	38323143 	ldmdacc	r2!, {r0, r1, r6, r8, ip, sp}
    14ac:	4e494d5f 	mcrmi	13, 2, r4, cr9, cr15, {2}
    14b0:	5058455f 	subspl	r4, r8, pc, asr r5
    14b4:	28205f5f 	stmdacs	r0!, {r0, r1, r2, r3, r4, r6, r8, r9, sl, fp, ip, lr}
    14b8:	3431362d 	ldrtcc	r3, [r1], #-1581	; 0xfffff9d3
    14bc:	5f002932 	svcpl	0x00002932
    14c0:	4153555f 	cmpmi	r3, pc, asr r5
    14c4:	4d554343 	ldclmi	3, cr4, [r5, #-268]	; 0xfffffef4
    14c8:	4942495f 	stmdbmi	r2, {r0, r1, r2, r3, r4, r6, r8, fp, lr}^
    14cc:	205f5f54 	subscs	r5, pc, r4, asr pc	; <UNPREDICTABLE>
    14d0:	5f5f0038 	svcpl	0x005f0038
    14d4:	52464c55 	subpl	r4, r6, #21760	; 0x5500
    14d8:	5f544341 	svcpl	0x00544341
    14dc:	5f4e494d 	svcpl	0x004e494d
    14e0:	2e30205f 	mrccs	0, 1, r2, cr0, cr15, {2}
    14e4:	524c5530 	subpl	r5, ip, #48, 10	; 0xc000000
    14e8:	465f5f00 	ldrbmi	r5, [pc], -r0, lsl #30
    14ec:	4d5f544c 	cfldrdmi	mvd5, [pc, #-304]	; 13c4 <_Min_Stack_Size+0xfc4>
    14f0:	5f544e41 	svcpl	0x00544e41
    14f4:	5f474944 	svcpl	0x00474944
    14f8:	3432205f 	ldrtcc	r2, [r2], #-95	; 0xffffffa1
    14fc:	465f5f00 	ldrbmi	r5, [pc], -r0, lsl #30
    1500:	3436544c 	ldrtcc	r5, [r6], #-1100	; 0xfffffbb4
    1504:	4345445f 	movtmi	r4, #21599	; 0x545f
    1508:	4c414d49 	mcrrmi	13, 4, r4, r1, cr9
    150c:	4749445f 	smlsldmi	r4, r9, pc, r4	; <UNPREDICTABLE>
    1510:	31205f5f 			; <UNDEFINED> instruction: 0x31205f5f
    1514:	5f5f0037 	svcpl	0x005f0037
    1518:	49474552 	stmdbmi	r7, {r1, r4, r6, r8, sl, lr}^
    151c:	52455453 	subpl	r5, r5, #1392508928	; 0x53000000
    1520:	4552505f 	ldrbmi	r5, [r2, #-95]	; 0xffffffa1
    1524:	5f584946 	svcpl	0x00584946
    1528:	5f00205f 	svcpl	0x0000205f
    152c:	544c465f 	strbpl	r4, [ip], #-1631	; 0xfffff9a1
    1530:	4d5f3233 	lfmmi	f3, 2, [pc, #-204]	; 146c <_Min_Stack_Size+0x106c>
    1534:	455f4e49 	ldrbmi	r4, [pc, #-3657]	; 6f3 <_Min_Stack_Size+0x2f3>
    1538:	5f5f5058 	svcpl	0x005f5058
    153c:	312d2820 			; <UNDEFINED> instruction: 0x312d2820
    1540:	00293532 	eoreq	r3, r9, r2, lsr r5
    1544:	41555f5f 	cmpmi	r5, pc, asr pc
    1548:	4d554343 	ldclmi	3, cr4, [r5, #-268]	; 0xfffffef4
    154c:	4942495f 	stmdbmi	r2, {r0, r1, r2, r3, r4, r6, r8, fp, lr}^
    1550:	205f5f54 	subscs	r5, pc, r4, asr pc	; <UNPREDICTABLE>
    1554:	5f003631 	svcpl	0x00003631
    1558:	4e49555f 	mcrmi	5, 2, r5, cr9, cr15, {2}
    155c:	41465f54 	cmpmi	r6, r4, asr pc
    1560:	36315453 			; <UNDEFINED> instruction: 0x36315453
    1564:	58414d5f 	stmdapl	r1, {r0, r1, r2, r3, r4, r6, r8, sl, fp, lr}^
    1568:	30205f5f 	eorcc	r5, r0, pc, asr pc
    156c:	66666678 			; <UNDEFINED> instruction: 0x66666678
    1570:	66666666 	strbtvs	r6, [r6], -r6, ror #12
    1574:	5f005566 	svcpl	0x00005566
    1578:	4e49555f 	mcrmi	5, 2, r5, cr9, cr15, {2}
    157c:	41465f54 	cmpmi	r6, r4, asr pc
    1580:	36315453 			; <UNDEFINED> instruction: 0x36315453
    1584:	5059545f 	subspl	r5, r9, pc, asr r4
    1588:	205f5f45 	subscs	r5, pc, r5, asr #30
    158c:	69736e75 	ldmdbvs	r3!, {r0, r2, r4, r5, r6, r9, sl, fp, sp, lr}^
    1590:	64656e67 	strbtvs	r6, [r5], #-3687	; 0xfffff199
    1594:	746e6920 	strbtvc	r6, [lr], #-2336	; 0xfffff6e0
    1598:	445f5f00 	ldrbmi	r5, [pc], #-3840	; 15a0 <_Min_Stack_Size+0x11a0>
    159c:	4d5f4c42 	ldclmi	12, cr4, [pc, #-264]	; 149c <_Min_Stack_Size+0x109c>
    15a0:	315f4e49 	cmpcc	pc, r9, asr #28
    15a4:	58455f30 	stmdapl	r5, {r4, r5, r8, r9, sl, fp, ip, lr}^
    15a8:	205f5f50 	subscs	r5, pc, r0, asr pc	; <UNPREDICTABLE>
    15ac:	30332d28 	eorscc	r2, r3, r8, lsr #26
    15b0:	5f002937 	svcpl	0x00002937
    15b4:	5858475f 	ldmdapl	r8, {r0, r1, r2, r3, r4, r6, r8, r9, sl, lr}^
    15b8:	4942415f 	stmdbmi	r2, {r0, r1, r2, r3, r4, r6, r8, lr}^
    15bc:	5245565f 	subpl	r5, r5, #99614720	; 0x5f00000
    15c0:	4e4f4953 			; <UNDEFINED> instruction: 0x4e4f4953
    15c4:	31303120 	teqcc	r0, r0, lsr #2
    15c8:	5f5f0031 	svcpl	0x005f0031
    15cc:	4d554854 	ldclmi	8, cr4, [r5, #-336]	; 0xfffffeb0
    15d0:	4e495f42 	cdpmi	15, 4, cr5, cr9, cr2, {2}
    15d4:	57524554 			; <UNDEFINED> instruction: 0x57524554
    15d8:	5f4b524f 	svcpl	0x004b524f
    15dc:	0031205f 	eorseq	r2, r1, pc, asr r0
    15e0:	4c465f5f 	mcrrmi	15, 5, r5, r6, cr15
    15e4:	5f323354 	svcpl	0x00323354
    15e8:	5f474944 	svcpl	0x00474944
    15ec:	0036205f 	eorseq	r2, r6, pc, asr r0
    15f0:	4c465f5f 	mcrrmi	15, 5, r5, r6, cr15
    15f4:	5f343654 	svcpl	0x00343654
    15f8:	4f4e4544 	svcmi	0x004e4544
    15fc:	4d5f4d52 	ldclmi	13, cr4, [pc, #-328]	; 14bc <_Min_Stack_Size+0x10bc>
    1600:	5f5f4e49 	svcpl	0x005f4e49
    1604:	392e3420 	stmdbcc	lr!, {r5, sl, ip, sp}
    1608:	35363034 	ldrcc	r3, [r6, #-52]!	; 0xffffffcc
    160c:	38353436 	ldmdacc	r5!, {r1, r2, r4, r5, sl, ip, sp}
    1610:	34323134 	ldrtcc	r3, [r2], #-308	; 0xfffffecc
    1614:	65343536 	ldrvs	r3, [r4, #-1334]!	; 0xfffffaca
    1618:	3432332d 	ldrtcc	r3, [r2], #-813	; 0xfffffcd3
    161c:	00343646 	eorseq	r3, r4, r6, asr #12
    1620:	4c465f5f 	mcrrmi	15, 5, r5, r6, cr15
    1624:	5f343654 	svcpl	0x00343654
    1628:	5f534148 	svcpl	0x00534148
    162c:	4f4e4544 	svcmi	0x004e4544
    1630:	5f5f4d52 	svcpl	0x005f4d52
    1634:	5f003120 	svcpl	0x00003120
    1638:	544c465f 	strbpl	r4, [ip], #-1631	; 0xfffff9a1
    163c:	4156455f 	cmpmi	r6, pc, asr r5
    1640:	454d5f4c 	strbmi	r5, [sp, #-3916]	; 0xfffff0b4
    1644:	444f4854 	strbmi	r4, [pc], #-2132	; 164c <_Min_Stack_Size+0x124c>
    1648:	30205f5f 	eorcc	r5, r0, pc, asr pc
    164c:	465f5f00 	ldrbmi	r5, [pc], -r0, lsl #30
    1650:	3233544c 	eorscc	r5, r3, #76, 8	; 0x4c000000
    1654:	41485f58 	cmpmi	r8, r8, asr pc
    1658:	45445f53 	strbmi	r5, [r4, #-3923]	; 0xfffff0ad
    165c:	4d524f4e 	ldclmi	15, cr4, [r2, #-312]	; 0xfffffec8
    1660:	31205f5f 			; <UNDEFINED> instruction: 0x31205f5f
    1664:	415f5f00 	cmpmi	pc, r0, lsl #30
    1668:	465f4d52 			; <UNDEFINED> instruction: 0x465f4d52
    166c:	55544145 	ldrbpl	r4, [r4, #-325]	; 0xfffffebb
    1670:	435f4552 	cmpmi	pc, #343932928	; 0x14800000
    1674:	31205a4c 			; <UNDEFINED> instruction: 0x31205a4c
    1678:	495f5f00 	ldmdbmi	pc, {r8, r9, sl, fp, ip, lr}^	; <UNPREDICTABLE>
    167c:	4c5f544e 	cfldrdmi	mvd5, [pc], {78}	; 0x4e
    1680:	54534145 	ldrbpl	r4, [r3], #-325	; 0xfffffebb
    1684:	4d5f3436 	cfldrdmi	mvd3, [pc, #-216]	; 15b4 <_Min_Stack_Size+0x11b4>
    1688:	5f5f5841 	svcpl	0x005f5841
    168c:	37783020 	ldrbcc	r3, [r8, -r0, lsr #32]!
    1690:	66666666 	strbtvs	r6, [r6], -r6, ror #12
    1694:	66666666 	strbtvs	r6, [r6], -r6, ror #12
    1698:	66666666 	strbtvs	r6, [r6], -r6, ror #12
    169c:	4c666666 	stclmi	6, cr6, [r6], #-408	; 0xfffffe68
    16a0:	5f5f004c 	svcpl	0x005f004c
    16a4:	55434341 	strbpl	r4, [r3, #-833]	; 0xfffffcbf
    16a8:	42465f4d 	submi	r5, r6, #308	; 0x134
    16ac:	5f5f5449 	svcpl	0x005f5449
    16b0:	00353120 	eorseq	r3, r5, r0, lsr #2
    16b4:	45445f5f 	strbmi	r5, [r4, #-3935]	; 0xfffff0a1
    16b8:	5f343643 	svcpl	0x00343643
    16bc:	5f4e494d 	svcpl	0x004e494d
    16c0:	5f505845 	svcpl	0x00505845
    16c4:	2d28205f 	stccs	0, cr2, [r8, #-380]!	; 0xfffffe84
    16c8:	29323833 	ldmdbcs	r2!, {r0, r1, r4, r5, fp, ip, sp}
    16cc:	555f5f00 	ldrbpl	r5, [pc, #-3840]	; 7d4 <_Min_Stack_Size+0x3d4>
    16d0:	4343414c 	movtmi	r4, #12620	; 0x314c
    16d4:	495f4d55 	ldmdbmi	pc, {r0, r2, r4, r6, r8, sl, fp, lr}^	; <UNPREDICTABLE>
    16d8:	5f544942 	svcpl	0x00544942
    16dc:	3233205f 	eorscc	r2, r3, #95	; 0x5f
    16e0:	4c5f5f00 	mrrcmi	15, 0, r5, pc, cr0	; <UNPREDICTABLE>
    16e4:	4152464c 	cmpmi	r2, ip, asr #12
    16e8:	465f5443 	ldrbmi	r5, [pc], -r3, asr #8
    16ec:	5f544942 	svcpl	0x00544942
    16f0:	3336205f 	teqcc	r6, #95	; 0x5f
    16f4:	495f5f00 	ldmdbmi	pc, {r8, r9, sl, fp, ip, lr}^	; <UNPREDICTABLE>
    16f8:	4c5f544e 	cfldrdmi	mvd5, [pc], {78}	; 0x4e
    16fc:	54534145 	ldrbpl	r4, [r3], #-325	; 0xfffffebb
    1700:	49575f38 	ldmdbmi	r7, {r3, r4, r5, r8, r9, sl, fp, ip, lr}^
    1704:	5f485444 	svcpl	0x00485444
    1708:	0038205f 	eorseq	r2, r8, pc, asr r0
    170c:	53555f5f 	cmppl	r5, #380	; 0x17c
    1710:	42465f41 	submi	r5, r6, #260	; 0x104
    1714:	5f5f5449 	svcpl	0x005f5449
    1718:	00363120 	eorseq	r3, r6, r0, lsr #2
    171c:	49555f5f 	ldmdbmi	r5, {r0, r1, r2, r3, r4, r6, r8, r9, sl, fp, ip, lr}^
    1720:	5f38544e 	svcpl	0x0038544e
    1724:	5f58414d 	svcpl	0x0058414d
    1728:	7830205f 	ldmdavc	r0!, {r0, r1, r2, r3, r4, r6, sp}
    172c:	4c006666 	stcmi	6, cr6, [r0], {102}	; 0x66
    1730:	755f434f 	ldrbvc	r4, [pc, #-847]	; 13e9 <_Min_Stack_Size+0xfe9>
    1734:	746e4938 	strbtvc	r4, [lr], #-2360	; 0xfffff6c8
    1738:	65646e49 	strbvs	r6, [r4, #-3657]!	; 0xfffff1b7
    173c:	5f5f0078 	svcpl	0x005f0078
    1740:	544e4955 	strbpl	r4, [lr], #-2389	; 0xfffff6ab
    1744:	5341465f 	movtpl	r4, #5727	; 0x165f
    1748:	5f343654 	svcpl	0x00343654
    174c:	5f58414d 	svcpl	0x0058414d
    1750:	7830205f 	ldmdavc	r0!, {r0, r1, r2, r3, r4, r6, sp}
    1754:	66666666 	strbtvs	r6, [r6], -r6, ror #12
    1758:	66666666 	strbtvs	r6, [r6], -r6, ror #12
    175c:	66666666 	strbtvs	r6, [r6], -r6, ror #12
    1760:	66666666 	strbtvs	r6, [r6], -r6, ror #12
    1764:	004c4c55 	subeq	r4, ip, r5, asr ip
    1768:	49555f5f 	ldmdbmi	r5, {r0, r1, r2, r3, r4, r6, r8, r9, sl, fp, ip, lr}^
    176c:	3631544e 	ldrtcc	r5, [r1], -lr, asr #8
    1770:	58414d5f 	stmdapl	r1, {r0, r1, r2, r3, r4, r6, r8, sl, fp, lr}^
    1774:	30205f5f 	eorcc	r5, r0, pc, asr pc
    1778:	66666678 			; <UNDEFINED> instruction: 0x66666678
    177c:	45440066 	strbmi	r0, [r4, #-102]	; 0xffffff9a
    1780:	20475542 	subcs	r5, r7, r2, asr #10
    1784:	46410031 			; <UNDEFINED> instruction: 0x46410031
    1788:	505f4f49 	subspl	r4, pc, r9, asr #30
    178c:	41564952 	cmpmi	r6, r2, asr r9
    1790:	485f4554 	ldmdami	pc, {r2, r4, r6, r8, sl, lr}^	; <UNPREDICTABLE>
    1794:	5f5f0020 	svcpl	0x005f0020
    1798:	5f4d5241 	svcpl	0x004d5241
    179c:	54414546 	strbpl	r4, [r1], #-1350	; 0xfffffaba
    17a0:	5f455255 	svcpl	0x00455255
    17a4:	00414d46 	subeq	r4, r1, r6, asr #26
    17a8:	54535f5f 	ldrbpl	r5, [r3], #-3935	; 0xfffff0a1
    17ac:	565f4344 	ldrbpl	r4, [pc], -r4, asr #6
    17b0:	49535245 	ldmdbmi	r3, {r0, r2, r6, r9, ip, lr}^
    17b4:	5f5f4e4f 	svcpl	0x005f4e4f
    17b8:	31303220 	teqcc	r0, r0, lsr #4
    17bc:	4c323131 	ldfmis	f3, [r2], #-196	; 0xffffff3c
    17c0:	495f5f00 	ldmdbmi	pc, {r8, r9, sl, fp, ip, lr}^	; <UNPREDICTABLE>
    17c4:	414d544e 	cmpmi	sp, lr, asr #8
    17c8:	49575f58 	ldmdbmi	r7, {r3, r4, r6, r8, r9, sl, fp, ip, lr}^
    17cc:	5f485444 	svcpl	0x00485444
    17d0:	3436205f 	ldrtcc	r2, [r6], #-95	; 0xffffffa1
    17d4:	445f5f00 	ldrbmi	r5, [pc], #-3840	; 17dc <_Min_Stack_Size+0x13dc>
    17d8:	32334345 	eorscc	r4, r3, #335544321	; 0x14000001
    17dc:	58414d5f 	stmdapl	r1, {r0, r1, r2, r3, r4, r6, r8, sl, fp, lr}^
    17e0:	39205f5f 	stmdbcc	r0!, {r0, r1, r2, r3, r4, r6, r8, r9, sl, fp, ip, lr}
    17e4:	3939392e 	ldmdbcc	r9!, {r1, r2, r3, r5, r8, fp, ip, sp}
    17e8:	45393939 	ldrmi	r3, [r9, #-2361]!	; 0xfffff6c7
    17ec:	46443639 			; <UNDEFINED> instruction: 0x46443639
    17f0:	475f5f00 	ldrbmi	r5, [pc, -r0, lsl #30]
    17f4:	495f4343 	ldmdbmi	pc, {r0, r1, r6, r8, r9, lr}^	; <UNPREDICTABLE>
    17f8:	355f4345 	ldrbcc	r4, [pc, #-837]	; 14bb <_Min_Stack_Size+0x10bb>
    17fc:	30203935 	eorcc	r3, r0, r5, lsr r9
    1800:	495f5f00 	ldmdbmi	pc, {r8, r9, sl, fp, ip, lr}^	; <UNPREDICTABLE>
    1804:	4c5f544e 	cfldrdmi	mvd5, [pc], {78}	; 0x4e
    1808:	54534145 	ldrbpl	r4, [r3], #-325	; 0xfffffebb
    180c:	545f3631 	ldrbpl	r3, [pc], #-1585	; 1814 <_Min_Stack_Size+0x1414>
    1810:	5f455059 	svcpl	0x00455059
    1814:	6873205f 	ldmdavs	r3!, {r0, r1, r2, r3, r4, r6, sp}^
    1818:	2074726f 	rsbscs	r7, r4, pc, ror #4
    181c:	00746e69 	rsbseq	r6, r4, r9, ror #28
    1820:	4c465f5f 	mcrrmi	15, 5, r5, r6, cr15
    1824:	5f323354 	svcpl	0x00323354
    1828:	5f58414d 	svcpl	0x0058414d
    182c:	5f505845 	svcpl	0x00505845
    1830:	3231205f 	eorscc	r2, r1, #95	; 0x5f
    1834:	5f5f0038 	svcpl	0x005f0038
    1838:	4152464c 	cmpmi	r2, ip, asr #12
    183c:	465f5443 	ldrbmi	r5, [pc], -r3, asr #8
    1840:	5f544942 	svcpl	0x00544942
    1844:	3133205f 	teqcc	r3, pc, asr r0
    1848:	49464100 	stmdbmi	r6, {r8, lr}^
    184c:	79545f4f 	ldmdbvc	r4, {r0, r1, r2, r3, r6, r8, r9, sl, fp, ip, lr}^
    1850:	5f006570 	svcpl	0x00006570
    1854:	4c42445f 	cfstrdmi	mvd4, [r2], {95}	; 0x5f
    1858:	4749445f 	smlsldmi	r4, r9, pc, r4	; <UNPREDICTABLE>
    185c:	31205f5f 			; <UNDEFINED> instruction: 0x31205f5f
    1860:	5f5f0035 	svcpl	0x005f0035
    1864:	5f434347 	svcpl	0x00434347
    1868:	4d4f5441 	cfstrdmi	mvd5, [pc, #-260]	; 176c <_Min_Stack_Size+0x136c>
    186c:	435f4349 	cmpmi	pc, #603979777	; 0x24000001
    1870:	31524148 	cmpcc	r2, r8, asr #2
    1874:	5f545f36 	svcpl	0x00545f36
    1878:	4b434f4c 	blmi	10d55b0 <_Min_Stack_Size+0x10d51b0>
    187c:	4552465f 	ldrbmi	r4, [r2, #-1631]	; 0xfffff9a1
    1880:	00322045 	eorseq	r2, r2, r5, asr #32
    1884:	53555f5f 	cmppl	r5, #380	; 0x17c
    1888:	4c5f5245 	lfmmi	f5, 2, [pc], {69}	; 0x45
    188c:	4c454241 	sfmmi	f4, 2, [r5], {65}	; 0x41
    1890:	4552505f 	ldrbmi	r5, [r2, #-95]	; 0xffffffa1
    1894:	5f584946 	svcpl	0x00584946
    1898:	5f00205f 	svcpl	0x0000205f
    189c:	43414c5f 	movtmi	r4, #7263	; 0x1c5f
    18a0:	5f4d5543 	svcpl	0x004d5543
    18a4:	54494246 	strbpl	r4, [r9], #-582	; 0xfffffdba
    18a8:	33205f5f 			; <UNDEFINED> instruction: 0x33205f5f
    18ac:	5f5f0031 	svcpl	0x005f0031
    18b0:	5f515455 	svcpl	0x00515455
    18b4:	54494249 	strbpl	r4, [r9], #-585	; 0xfffffdb7
    18b8:	30205f5f 	eorcc	r5, r0, pc, asr pc
    18bc:	555f5f00 	ldrbpl	r5, [pc, #-3840]	; 9c4 <_Min_Stack_Size+0x5c4>
    18c0:	43415246 	movtmi	r5, #4678	; 0x1246
    18c4:	50455f54 	subpl	r5, r5, r4, asr pc
    18c8:	4f4c4953 	svcmi	0x004c4953
    18cc:	205f5f4e 	subscs	r5, pc, lr, asr #30
    18d0:	50317830 	eorspl	r7, r1, r0, lsr r8
    18d4:	5536312d 	ldrpl	r3, [r6, #-301]!	; 0xfffffed3
    18d8:	5f5f0052 	svcpl	0x005f0052
    18dc:	5f544c46 	svcpl	0x00544c46
    18e0:	5f4e494d 	svcpl	0x004e494d
    18e4:	2e31205f 	mrccs	0, 1, r2, cr1, cr15, {2}
    18e8:	34353731 	ldrtcc	r3, [r5], #-1841	; 0xfffff8cf
    18ec:	35333439 	ldrcc	r3, [r3, #-1081]!	; 0xfffffbc7
    18f0:	32323830 	eorscc	r3, r2, #48, 16	; 0x300000
    18f4:	35373832 	ldrcc	r3, [r7, #-2098]!	; 0xfffff7ce
    18f8:	38332d65 	ldmdacc	r3!, {r0, r2, r5, r6, r8, sl, fp, sp}
    18fc:	6f430046 	svcvs	0x00430046
    1900:	755f7970 	ldrbvc	r7, [pc, #-2416]	; f98 <_Min_Stack_Size+0xb98>
    1904:	726f5038 	rsbvc	r5, pc, #56	; 0x38
    1908:	6d754e74 	ldclvs	14, cr4, [r5, #-464]!	; 0xfffffe30
    190c:	00726562 	rsbseq	r6, r2, r2, ror #10
    1910:	4c465f5f 	mcrrmi	15, 5, r5, r6, cr15
    1914:	58323354 	ldmdapl	r2!, {r2, r4, r6, r8, r9, ip, sp}
    1918:	4749445f 	smlsldmi	r4, r9, pc, r4	; <UNPREDICTABLE>
    191c:	31205f5f 			; <UNDEFINED> instruction: 0x31205f5f
    1920:	5f5f0035 	svcpl	0x005f0035
    1924:	55434341 	strbpl	r4, [r3, #-833]	; 0xfffffcbf
    1928:	50455f4d 	subpl	r5, r5, sp, asr #30
    192c:	4f4c4953 	svcmi	0x004c4953
    1930:	205f5f4e 	subscs	r5, pc, lr, asr #30
    1934:	50317830 	eorspl	r7, r1, r0, lsr r8
    1938:	4b35312d 	blmi	d4ddf4 <_Min_Stack_Size+0xd4d9f4>
    193c:	555f5f00 	ldrbpl	r5, [pc, #-3840]	; a44 <_Min_Stack_Size+0x644>
    1940:	465f5144 	ldrbmi	r5, [pc], -r4, asr #2
    1944:	5f544942 	svcpl	0x00544942
    1948:	3436205f 	ldrtcc	r2, [r6], #-95	; 0xffffffa1
    194c:	465f5f00 	ldrbmi	r5, [pc], -r0, lsl #30
    1950:	3233544c 	eorscc	r5, r3, #76, 8	; 0x4c000000
    1954:	414d5f58 	cmpmi	sp, r8, asr pc
    1958:	445f544e 	ldrbmi	r5, [pc], #-1102	; 1960 <_Min_Stack_Size+0x1560>
    195c:	5f5f4749 	svcpl	0x005f4749
    1960:	00333520 	eorseq	r3, r3, r0, lsr #10
    1964:	52415f5f 	subpl	r5, r1, #380	; 0x17c
    1968:	52415f4d 	subpl	r5, r1, #308	; 0x134
    196c:	495f4843 	ldmdbmi	pc, {r0, r1, r6, fp, lr}^	; <UNPREDICTABLE>
    1970:	545f4153 	ldrbpl	r4, [pc], #-339	; 1978 <_Min_Stack_Size+0x1578>
    1974:	424d5548 	submi	r5, sp, #72, 10	; 0x12000000
    1978:	5f003220 	svcpl	0x00003220
    197c:	5154555f 	cmppl	r4, pc, asr r5
    1980:	4942465f 	stmdbmi	r2, {r0, r1, r2, r3, r4, r6, r9, sl, lr}^
    1984:	205f5f54 	subscs	r5, pc, r4, asr pc	; <UNPREDICTABLE>
    1988:	00383231 	eorseq	r3, r8, r1, lsr r2
    198c:	48435f5f 	stmdami	r3, {r0, r1, r2, r3, r4, r6, r8, r9, sl, fp, ip, lr}^
    1990:	425f5241 	subsmi	r5, pc, #268435460	; 0x10000004
    1994:	5f5f5449 	svcpl	0x005f5449
    1998:	5f003820 	svcpl	0x00003820
    199c:	4d52415f 	ldfmie	f4, [r2, #-380]	; 0xfffffe84
    19a0:	0050465f 	subseq	r4, r0, pc, asr r6
    19a4:	4e495f5f 	mcrmi	15, 2, r5, cr9, cr15, {2}
    19a8:	52545054 	subspl	r5, r4, #84	; 0x54
    19ac:	4449575f 	strbmi	r5, [r9], #-1887	; 0xfffff8a1
    19b0:	5f5f4854 	svcpl	0x005f4854
    19b4:	00323320 	eorseq	r3, r2, r0, lsr #6
    19b8:	49555f5f 	ldmdbmi	r5, {r0, r1, r2, r3, r4, r6, r8, r9, sl, fp, ip, lr}^
    19bc:	4c5f544e 	cfldrdmi	mvd5, [pc], {78}	; 0x4e
    19c0:	54534145 	ldrbpl	r4, [r3], #-325	; 0xfffffebb
    19c4:	59545f38 	ldmdbpl	r4, {r3, r4, r5, r8, r9, sl, fp, ip, lr}^
    19c8:	5f5f4550 	svcpl	0x005f4550
    19cc:	736e7520 	cmnvc	lr, #32, 10	; 0x8000000
    19d0:	656e6769 	strbvs	r6, [lr, #-1897]!	; 0xfffff897
    19d4:	68632064 	stmdavs	r3!, {r2, r5, r6, sp}^
    19d8:	5f007261 	svcpl	0x00007261
    19dc:	42444c5f 	submi	r4, r4, #24320	; 0x5f00
    19e0:	414d5f4c 	cmpmi	sp, ip, asr #30
    19e4:	205f5f58 	subscs	r5, pc, r8, asr pc	; <UNPREDICTABLE>
    19e8:	39372e31 	ldmdbcc	r7!, {r0, r4, r5, r9, sl, fp, sp}
    19ec:	33393637 	teqcc	r9, #57671680	; 0x3700000
    19f0:	38343331 	ldmdacc	r4!, {r0, r4, r5, r8, r9, ip, sp}
    19f4:	31333236 	teqcc	r3, r6, lsr r2
    19f8:	2b653735 	blcs	194f6d4 <_Min_Stack_Size+0x194f2d4>
    19fc:	4c383033 	ldcmi	0, cr3, [r8], #-204	; 0xffffff34
    1a00:	465f5f00 	ldrbmi	r5, [pc], -r0, lsl #30
    1a04:	54494e49 	strbpl	r4, [r9], #-3657	; 0xfffff1b7
    1a08:	414d5f45 	cmpmi	sp, r5, asr #30
    1a0c:	4f5f4854 	svcmi	0x005f4854
    1a10:	5f594c4e 	svcpl	0x00594c4e
    1a14:	0030205f 	eorseq	r2, r0, pc, asr r0
    1a18:	41535f5f 	cmpmi	r3, pc, asr pc
    1a1c:	4d554343 	ldclmi	3, cr4, [r5, #-268]	; 0xfffffef4
    1a20:	58414d5f 	stmdapl	r1, {r0, r1, r2, r3, r4, r6, r8, sl, fp, lr}^
    1a24:	30205f5f 	eorcc	r5, r0, pc, asr pc
    1a28:	46463758 			; <UNDEFINED> instruction: 0x46463758
    1a2c:	372d5046 	strcc	r5, [sp, -r6, asr #32]!
    1a30:	5f004b48 	svcpl	0x00004b48
    1a34:	6d72615f 	ldfvse	f6, [r2, #-380]!	; 0xfffffe84
    1a38:	31205f5f 			; <UNDEFINED> instruction: 0x31205f5f
    1a3c:	4c5f5f00 	mrrcmi	15, 0, r5, pc, cr0	; <UNPREDICTABLE>
    1a40:	5f4c4244 	svcpl	0x004c4244
    1a44:	544e414d 	strbpl	r4, [lr], #-333	; 0xfffffeb3
    1a48:	4749445f 	smlsldmi	r4, r9, pc, r4	; <UNPREDICTABLE>
    1a4c:	35205f5f 	strcc	r5, [r0, #-3935]!	; 0xfffff0a1
    1a50:	5f5f0033 	svcpl	0x005f0033
    1a54:	495f5154 	ldmdbmi	pc, {r2, r4, r6, r8, ip, lr}^	; <UNPREDICTABLE>
    1a58:	5f544942 	svcpl	0x00544942
    1a5c:	0030205f 	eorseq	r2, r0, pc, asr r0
    1a60:	48555f5f 	ldmdami	r5, {r0, r1, r2, r3, r4, r6, r8, r9, sl, fp, ip, lr}^
    1a64:	42465f41 	submi	r5, r6, #260	; 0x104
    1a68:	5f5f5449 	svcpl	0x005f5449
    1a6c:	43003820 	movwmi	r3, #2080	; 0x820
    1a70:	4f4d4d4f 	svcmi	0x004d4d4f
    1a74:	20485f4e 	subcs	r5, r8, lr, asr #30
    1a78:	455f5f00 	ldrbmi	r5, [pc, #-3840]	; b80 <_Min_Stack_Size+0x780>
    1a7c:	5f5f464c 	svcpl	0x005f464c
    1a80:	5f003120 	svcpl	0x00003120
    1a84:	544e495f 	strbpl	r4, [lr], #-2399	; 0xfffff6a1
    1a88:	435f3631 	cmpmi	pc, #51380224	; 0x3100000
    1a8c:	20296328 	eorcs	r6, r9, r8, lsr #6
    1a90:	5f5f0063 	svcpl	0x005f0063
    1a94:	5f434347 	svcpl	0x00434347
    1a98:	45564148 	ldrbmi	r4, [r6, #-328]	; 0xfffffeb8
    1a9c:	4157445f 	cmpmi	r7, pc, asr r4
    1aa0:	5f324652 	svcpl	0x00324652
    1aa4:	5f494643 	svcpl	0x00494643
    1aa8:	204d5341 	subcs	r5, sp, r1, asr #6
    1aac:	5f5f0031 	svcpl	0x005f0031
    1ab0:	544e4955 	strbpl	r4, [lr], #-2389	; 0xfffff6ab
    1ab4:	4d5f3436 	cfldrdmi	mvd3, [pc, #-216]	; 19e4 <_Min_Stack_Size+0x15e4>
    1ab8:	5f5f5841 	svcpl	0x005f5841
    1abc:	66783020 	ldrbtvs	r3, [r8], -r0, lsr #32
    1ac0:	66666666 	strbtvs	r6, [r6], -r6, ror #12
    1ac4:	66666666 	strbtvs	r6, [r6], -r6, ror #12
    1ac8:	66666666 	strbtvs	r6, [r6], -r6, ror #12
    1acc:	55666666 	strbpl	r6, [r6, #-1638]!	; 0xfffff99a
    1ad0:	5f004c4c 	svcpl	0x00004c4c
    1ad4:	43414c5f 	movtmi	r4, #7263	; 0x1c5f
    1ad8:	5f4d5543 	svcpl	0x004d5543
    1adc:	5f58414d 	svcpl	0x0058414d
    1ae0:	5830205f 	ldmdapl	r0!, {r0, r1, r2, r3, r4, r6, sp}
    1ae4:	46464637 			; <UNDEFINED> instruction: 0x46464637
    1ae8:	46464646 	strbmi	r4, [r6], -r6, asr #12
    1aec:	46464646 	strbmi	r4, [r6], -r6, asr #12
    1af0:	46464646 	strbmi	r4, [r6], -r6, asr #12
    1af4:	31332d50 	teqcc	r3, r0, asr sp
    1af8:	5f004b4c 	svcpl	0x00004b4c
    1afc:	544e495f 	strbpl	r4, [lr], #-2399	; 0xfffff6a1
    1b00:	5341465f 	movtpl	r4, #5727	; 0x165f
    1b04:	5f323354 	svcpl	0x00323354
    1b08:	5f58414d 	svcpl	0x0058414d
    1b0c:	7830205f 	ldmdavc	r0!, {r0, r1, r2, r3, r4, r6, sp}
    1b10:	66666637 			; <UNDEFINED> instruction: 0x66666637
    1b14:	66666666 	strbtvs	r6, [r6], -r6, ror #12
    1b18:	555f5f00 	ldrbpl	r5, [pc, #-3840]	; c20 <_Min_Stack_Size+0x820>
    1b1c:	41524653 	cmpmi	r2, r3, asr r6
    1b20:	455f5443 	ldrbmi	r5, [pc, #-1091]	; 16e5 <_Min_Stack_Size+0x12e5>
    1b24:	4c495350 	mcrrmi	3, 5, r5, r9, cr0
    1b28:	5f5f4e4f 	svcpl	0x005f4e4f
    1b2c:	31783020 	cmncc	r8, r0, lsr #32
    1b30:	55382d50 	ldrpl	r2, [r8, #-3408]!	; 0xfffff2b0
    1b34:	5f005248 	svcpl	0x00005248
    1b38:	4f54415f 	svcmi	0x0054415f
    1b3c:	5f43494d 	svcpl	0x0043494d
    1b40:	55514341 	ldrbpl	r4, [r1, #-833]	; 0xfffffcbf
    1b44:	20455249 	subcs	r5, r5, r9, asr #4
    1b48:	5f5f0032 	svcpl	0x005f0032
    1b4c:	5f4d5241 	svcpl	0x004d5241
    1b50:	54414546 	strbpl	r4, [r1], #-1350	; 0xfffffaba
    1b54:	5f455255 	svcpl	0x00455255
    1b58:	52504f43 	subspl	r4, r0, #268	; 0x10c
    1b5c:	3120434f 			; <UNDEFINED> instruction: 0x3120434f
    1b60:	5f5f0035 	svcpl	0x005f0035
    1b64:	43445453 	movtmi	r5, #17491	; 0x4453
    1b68:	31205f5f 			; <UNDEFINED> instruction: 0x31205f5f
    1b6c:	555f5f00 	ldrbpl	r5, [pc, #-3840]	; c74 <_Min_Stack_Size+0x874>
    1b70:	55434341 	strbpl	r4, [r3, #-833]	; 0xfffffcbf
    1b74:	42465f4d 	submi	r5, r6, #308	; 0x134
    1b78:	5f5f5449 	svcpl	0x005f5449
    1b7c:	00363120 	eorseq	r3, r6, r0, lsr #2
    1b80:	42445f5f 	submi	r5, r4, #380	; 0x17c
    1b84:	414d5f4c 	cmpmi	sp, ip, asr #30
    1b88:	58455f58 	stmdapl	r5, {r3, r4, r6, r8, r9, sl, fp, ip, lr}^
    1b8c:	205f5f50 	subscs	r5, pc, r0, asr pc	; <UNPREDICTABLE>
    1b90:	34323031 	ldrtcc	r3, [r2], #-49	; 0xffffffcf
    1b94:	415f5f00 	cmpmi	pc, r0, lsl #30
    1b98:	494d4f54 	stmdbmi	sp, {r2, r4, r6, r8, r9, sl, fp, lr}^
    1b9c:	4f435f43 	svcmi	0x00435f43
    1ba0:	4d55534e 	ldclmi	3, cr5, [r5, #-312]	; 0xfffffec8
    1ba4:	00312045 	eorseq	r2, r1, r5, asr #32
    1ba8:	4e495f5f 	mcrmi	15, 2, r5, cr9, cr15, {2}
    1bac:	41465f54 	cmpmi	r6, r4, asr pc
    1bb0:	32335453 	eorscc	r5, r3, #1392508928	; 0x53000000
    1bb4:	4449575f 	strbmi	r5, [r9], #-1887	; 0xfffff8a1
    1bb8:	5f5f4854 	svcpl	0x005f4854
    1bbc:	00323320 	eorseq	r3, r2, r0, lsr #6
    1bc0:	49575f5f 	ldmdbmi	r7, {r0, r1, r2, r3, r4, r6, r8, r9, sl, fp, ip, lr}^
    1bc4:	545f544e 	ldrbpl	r5, [pc], #-1102	; 1bcc <_Min_Stack_Size+0x17cc>
    1bc8:	5f455059 	svcpl	0x00455059
    1bcc:	6e75205f 	mrcvs	0, 3, r2, cr5, cr15, {2}
    1bd0:	6e676973 			; <UNDEFINED> instruction: 0x6e676973
    1bd4:	69206465 	stmdbvs	r0!, {r0, r2, r5, r6, sl, sp, lr}
    1bd8:	5f00746e 	svcpl	0x0000746e
    1bdc:	4e4f4c5f 	mcrmi	12, 2, r4, cr15, cr15, {2}
    1be0:	414d5f47 	cmpmi	sp, r7, asr #30
    1be4:	205f5f58 	subscs	r5, pc, r8, asr pc	; <UNPREDICTABLE>
    1be8:	66377830 			; <UNDEFINED> instruction: 0x66377830
    1bec:	66666666 	strbtvs	r6, [r6], -r6, ror #12
    1bf0:	004c6666 	subeq	r6, ip, r6, ror #12
    1bf4:	4e495f5f 	mcrmi	15, 2, r5, cr9, cr15, {2}
    1bf8:	5f363154 	svcpl	0x00363154
    1bfc:	5f58414d 	svcpl	0x0058414d
    1c00:	7830205f 	ldmdavc	r0!, {r0, r1, r2, r3, r4, r6, sp}
    1c04:	66666637 			; <UNDEFINED> instruction: 0x66666637
    1c08:	555f5f00 	ldrbpl	r5, [pc, #-3840]	; d10 <_Min_Stack_Size+0x910>
    1c0c:	4152464c 	cmpmi	r2, ip, asr #12
    1c10:	465f5443 	ldrbmi	r5, [pc], -r3, asr #8
    1c14:	5f544942 	svcpl	0x00544942
    1c18:	3233205f 	eorscc	r2, r3, #95	; 0x5f
    1c1c:	535f5f00 	cmppl	pc, #0, 30
    1c20:	52414843 	subpl	r4, r1, #4390912	; 0x430000
    1c24:	4449575f 	strbmi	r5, [r9], #-1887	; 0xfffff8a1
    1c28:	5f5f4854 	svcpl	0x005f4854
    1c2c:	5f003820 	svcpl	0x00003820
    1c30:	4343415f 	movtmi	r4, #12639	; 0x315f
    1c34:	4d5f4d55 	ldclmi	13, cr4, [pc, #-340]	; 1ae8 <_Min_Stack_Size+0x16e8>
    1c38:	5f5f4e49 	svcpl	0x005f4e49
    1c3c:	302d2820 	eorcc	r2, sp, r0, lsr #16
    1c40:	31503158 	cmpcc	r0, r8, asr r1
    1c44:	302d4b35 	eorcc	r4, sp, r5, lsr fp
    1c48:	31503158 	cmpcc	r0, r8, asr r1
    1c4c:	00294b35 	eoreq	r4, r9, r5, lsr fp
    1c50:	49535f5f 	ldmdbmi	r3, {r0, r1, r2, r3, r4, r6, r8, r9, sl, fp, ip, lr}^
    1c54:	464f455a 			; <UNDEFINED> instruction: 0x464f455a
    1c58:	554f445f 	strbpl	r4, [pc, #-1119]	; 1801 <_Min_Stack_Size+0x1401>
    1c5c:	5f454c42 	svcpl	0x00454c42
    1c60:	0038205f 	eorseq	r2, r8, pc, asr r0
    1c64:	4e475f5f 	mcrmi	15, 2, r5, cr7, cr15, {2}
    1c68:	505f4355 	subspl	r4, pc, r5, asr r3	; <UNPREDICTABLE>
    1c6c:	48435441 	stmdami	r3, {r0, r6, sl, ip, lr}^
    1c70:	4556454c 	ldrbmi	r4, [r6, #-1356]	; 0xfffffab4
    1c74:	205f5f4c 	subscs	r5, pc, ip, asr #30
    1c78:	5f5f0031 	svcpl	0x005f0031
    1c7c:	5f585847 	svcpl	0x00585847
    1c80:	45505954 	ldrbmi	r5, [r0, #-2388]	; 0xfffff6ac
    1c84:	4f464e49 	svcmi	0x00464e49
    1c88:	5551455f 	ldrbpl	r4, [r1, #-1375]	; 0xfffffaa1
    1c8c:	54494c41 	strbpl	r4, [r9], #-3137	; 0xfffff3bf
    1c90:	4e495f59 	mcrmi	15, 2, r5, cr9, cr9, {2}
    1c94:	454e494c 	strbmi	r4, [lr, #-2380]	; 0xfffff6b4
    1c98:	5f003020 	svcpl	0x00003020
    1c9c:	4152465f 	cmpmi	r2, pc, asr r6
    1ca0:	4d5f5443 	cfldrdmi	mvd5, [pc, #-268]	; 1b9c <_Min_Stack_Size+0x179c>
    1ca4:	5f5f5841 	svcpl	0x005f5841
    1ca8:	37583020 	ldrbcc	r3, [r8, -r0, lsr #32]
    1cac:	50464646 	subpl	r4, r6, r6, asr #12
    1cb0:	5235312d 	eorspl	r3, r5, #1073741835	; 0x4000000b
    1cb4:	495f5f00 	ldmdbmi	pc, {r8, r9, sl, fp, ip, lr}^	; <UNPREDICTABLE>
    1cb8:	3436544e 	ldrtcc	r5, [r6], #-1102	; 0xfffffbb2
    1cbc:	5059545f 	subspl	r5, r9, pc, asr r4
    1cc0:	205f5f45 	subscs	r5, pc, r5, asr #30
    1cc4:	676e6f6c 	strbvs	r6, [lr, -ip, ror #30]!
    1cc8:	6e6f6c20 	cdpvs	12, 6, cr6, cr15, cr0, {1}
    1ccc:	6e692067 	cdpvs	0, 6, cr2, cr9, cr7, {3}
    1cd0:	5f5f0074 	svcpl	0x005f0074
    1cd4:	43414c55 	movtmi	r4, #7253	; 0x1c55
    1cd8:	5f4d5543 	svcpl	0x004d5543
    1cdc:	54494246 	strbpl	r4, [r9], #-582	; 0xfffffdba
    1ce0:	33205f5f 			; <UNDEFINED> instruction: 0x33205f5f
    1ce4:	5f5f0032 	svcpl	0x005f0032
    1ce8:	41524655 	cmpmi	r2, r5, asr r6
    1cec:	4d5f5443 	cfldrdmi	mvd5, [pc, #-268]	; 1be8 <_Min_Stack_Size+0x17e8>
    1cf0:	5f5f4e49 	svcpl	0x005f4e49
    1cf4:	302e3020 	eorcc	r3, lr, r0, lsr #32
    1cf8:	5f005255 	svcpl	0x00005255
    1cfc:	4d52415f 	ldfmie	f4, [r2, #-380]	; 0xfffffe84
    1d00:	4f454e5f 	svcmi	0x00454e5f
    1d04:	50465f4e 	subpl	r5, r6, lr, asr #30
    1d08:	535f5f00 	cmppl	pc, #0, 30
    1d0c:	5f434454 	svcpl	0x00434454
    1d10:	5f465455 	svcpl	0x00465455
    1d14:	5f5f3631 	svcpl	0x005f3631
    1d18:	5f003120 	svcpl	0x00003120
    1d1c:	4152465f 	cmpmi	r2, pc, asr r6
    1d20:	495f5443 	ldmdbmi	pc, {r0, r1, r6, sl, ip, lr}^	; <UNPREDICTABLE>
    1d24:	5f544942 	svcpl	0x00544942
    1d28:	0030205f 	eorseq	r2, r0, pc, asr r0
    1d2c:	444c5f5f 	strbmi	r5, [ip], #-3935	; 0xfffff0a1
    1d30:	4d5f4c42 	ldclmi	12, cr4, [pc, #-264]	; 1c30 <_Min_Stack_Size+0x1830>
    1d34:	5f5f4e49 	svcpl	0x005f4e49
    1d38:	322e3220 	eorcc	r3, lr, #32, 4
    1d3c:	37303532 			; <UNDEFINED> instruction: 0x37303532
    1d40:	38353833 	ldmdacc	r5!, {r0, r1, r4, r5, fp, ip, sp}
    1d44:	32373035 	eorscc	r3, r7, #53	; 0x35
    1d48:	65343130 	ldrvs	r3, [r4, #-304]!	; 0xfffffed0
    1d4c:	3830332d 	ldmdacc	r0!, {r0, r2, r3, r5, r8, r9, ip, sp}
    1d50:	5f5f004c 	svcpl	0x005f004c
    1d54:	465f4154 			; <UNDEFINED> instruction: 0x465f4154
    1d58:	5f544942 	svcpl	0x00544942
    1d5c:	3336205f 	teqcc	r6, #95	; 0x5f
    1d60:	4c5f5f00 	mrrcmi	15, 0, r5, pc, cr0	; <UNPREDICTABLE>
    1d64:	5f4c4244 	svcpl	0x004c4244
    1d68:	5f534148 	svcpl	0x00534148
    1d6c:	49464e49 	stmdbmi	r6, {r0, r3, r6, r9, sl, fp, lr}^
    1d70:	5954494e 	ldmdbpl	r4, {r1, r2, r3, r6, r8, fp, lr}^
    1d74:	31205f5f 			; <UNDEFINED> instruction: 0x31205f5f
    1d78:	475f5f00 	ldrbmi	r5, [pc, -r0, lsl #30]
    1d7c:	495f4343 	ldmdbmi	pc, {r0, r1, r6, r8, r9, lr}^	; <UNPREDICTABLE>
    1d80:	355f4345 	ldrbcc	r4, [pc, #-837]	; 1a43 <_Min_Stack_Size+0x1643>
    1d84:	435f3935 	cmpmi	pc, #868352	; 0xd4000
    1d88:	4c504d4f 	mrrcmi	13, 4, r4, r0, cr15
    1d8c:	30205845 	eorcc	r5, r0, r5, asr #16
    1d90:	555f5f00 	ldrbpl	r5, [pc, #-3840]	; e98 <_Min_Stack_Size+0xa98>
    1d94:	33544e49 	cmpcc	r4, #1168	; 0x490
    1d98:	414d5f32 	cmpmi	sp, r2, lsr pc
    1d9c:	205f5f58 	subscs	r5, pc, r8, asr pc	; <UNPREDICTABLE>
    1da0:	66667830 			; <UNDEFINED> instruction: 0x66667830
    1da4:	66666666 	strbtvs	r6, [r6], -r6, ror #12
    1da8:	4c556666 	mrrcmi	6, 6, r6, r5, cr6
    1dac:	4c5f5f00 	mrrcmi	15, 0, r5, pc, cr0	; <UNPREDICTABLE>
    1db0:	5f4c4244 	svcpl	0x004c4244
    1db4:	5f4e494d 	svcpl	0x004e494d
    1db8:	5f505845 	svcpl	0x00505845
    1dbc:	2d28205f 	stccs	0, cr2, [r8, #-380]!	; 0xfffffe84
    1dc0:	31323031 	teqcc	r2, r1, lsr r0
    1dc4:	5f5f0029 	svcpl	0x005f0029
    1dc8:	464c4c55 			; <UNDEFINED> instruction: 0x464c4c55
    1dcc:	54434152 	strbpl	r4, [r3], #-338	; 0xfffffeae
    1dd0:	4942465f 	stmdbmi	r2, {r0, r1, r2, r3, r4, r6, r9, sl, lr}^
    1dd4:	205f5f54 	subscs	r5, pc, r4, asr pc	; <UNPREDICTABLE>
    1dd8:	5f003436 	svcpl	0x00003436
    1ddc:	5a49535f 	bpl	1256b60 <_Min_Stack_Size+0x1256760>
    1de0:	5f464f45 	svcpl	0x00464f45
    1de4:	41484357 	cmpmi	r8, r7, asr r3
    1de8:	5f545f52 	svcpl	0x00545f52
    1dec:	0034205f 	eorseq	r2, r4, pc, asr r0
    1df0:	4c465f5f 	mcrrmi	15, 5, r5, r6, cr15
    1df4:	5f54414f 	svcpl	0x0054414f
    1df8:	44524f57 	ldrbmi	r4, [r2], #-3927	; 0xfffff0a9
    1dfc:	44524f5f 	ldrbmi	r4, [r2], #-3935	; 0xfffff0a1
    1e00:	5f5f5245 	svcpl	0x005f5245
    1e04:	4f5f5f20 	svcmi	0x005f5f20
    1e08:	52454452 	subpl	r4, r5, #1375731712	; 0x52000000
    1e0c:	54494c5f 	strbpl	r4, [r9], #-3167	; 0xfffff3a1
    1e10:	5f454c54 	svcpl	0x00454c54
    1e14:	49444e45 	stmdbmi	r4, {r0, r2, r6, r9, sl, fp, lr}^
    1e18:	5f5f4e41 	svcpl	0x005f4e41
    1e1c:	415f5f00 	cmpmi	pc, r0, lsl #30
    1e20:	4d554343 	ldclmi	3, cr4, [r5, #-268]	; 0xfffffef4
    1e24:	58414d5f 	stmdapl	r1, {r0, r1, r2, r3, r4, r6, r8, sl, fp, lr}^
    1e28:	30205f5f 	eorcc	r5, r0, pc, asr pc
    1e2c:	46463758 			; <UNDEFINED> instruction: 0x46463758
    1e30:	46464646 	strbmi	r4, [r6], -r6, asr #12
    1e34:	312d5046 			; <UNDEFINED> instruction: 0x312d5046
    1e38:	5f004b35 	svcpl	0x00004b35
    1e3c:	5a49535f 	bpl	1256bc0 <_Min_Stack_Size+0x12567c0>
    1e40:	49575f45 	ldmdbmi	r7, {r0, r2, r6, r8, r9, sl, fp, ip, lr}^
    1e44:	5f485444 	svcpl	0x00485444
    1e48:	3233205f 	eorscc	r2, r3, #95	; 0x5f
    1e4c:	445f5f00 	ldrbmi	r5, [pc], #-3840	; 1e54 <_Min_Stack_Size+0x1a54>
    1e50:	32334345 	eorscc	r4, r3, #335544321	; 0x14000001
    1e54:	4e414d5f 	mcrmi	13, 2, r4, cr1, cr15, {2}
    1e58:	49445f54 	stmdbmi	r4, {r2, r4, r6, r8, r9, sl, fp, ip, lr}^
    1e5c:	205f5f47 	subscs	r5, pc, r7, asr #30
    1e60:	5f5f0037 	svcpl	0x005f0037
    1e64:	5f474953 	svcpl	0x00474953
    1e68:	4d4f5441 	cfstrdmi	mvd5, [pc, #-260]	; 1d6c <_Min_Stack_Size+0x196c>
    1e6c:	4d5f4349 	ldclmi	3, cr4, [pc, #-292]	; 1d50 <_Min_Stack_Size+0x1950>
    1e70:	5f5f4e49 	svcpl	0x005f4e49
    1e74:	5f2d2820 	svcpl	0x002d2820
    1e78:	4749535f 	smlsldmi	r5, r9, pc, r3	; <UNPREDICTABLE>
    1e7c:	4f54415f 	svcmi	0x0054415f
    1e80:	5f43494d 	svcpl	0x0043494d
    1e84:	5f58414d 	svcpl	0x0058414d
    1e88:	202d205f 	eorcs	r2, sp, pc, asr r0
    1e8c:	5f002931 	svcpl	0x00002931
    1e90:	464c4c5f 			; <UNDEFINED> instruction: 0x464c4c5f
    1e94:	54434152 	strbpl	r4, [r3], #-338	; 0xfffffeae
    1e98:	5350455f 	cmppl	r0, #398458880	; 0x17c00000
    1e9c:	4e4f4c49 	cdpmi	12, 4, cr4, cr15, cr9, {2}
    1ea0:	30205f5f 	eorcc	r5, r0, pc, asr pc
    1ea4:	2d503178 	ldfcse	f3, [r0, #-480]	; 0xfffffe20
    1ea8:	4c4c3336 	mcrrmi	3, 3, r3, ip, cr6
    1eac:	4f4c0052 	svcmi	0x004c0052
    1eb0:	00302057 	eorseq	r2, r0, r7, asr r0
    1eb4:	4f494641 	svcmi	0x00494641
    1eb8:	544e495f 	strbpl	r4, [lr], #-2399	; 0xfffff6a1
    1ebc:	41465245 	cmpmi	r6, r5, asr #4
    1ec0:	485f4543 	ldmdami	pc, {r0, r1, r6, r8, sl, lr}^	; <UNPREDICTABLE>
    1ec4:	5f5f0020 	svcpl	0x005f0020
    1ec8:	474e4f4c 	strbmi	r4, [lr, -ip, asr #30]
    1ecc:	4449575f 	strbmi	r5, [r9], #-1887	; 0xfffff8a1
    1ed0:	5f5f4854 	svcpl	0x005f4854
    1ed4:	00323320 	eorseq	r3, r2, r0, lsr #6
    1ed8:	46535f5f 	usaxmi	r5, r3, pc	; <UNPREDICTABLE>
    1edc:	54434152 	strbpl	r4, [r3], #-338	; 0xfffffeae
    1ee0:	4942465f 	stmdbmi	r2, {r0, r1, r2, r3, r4, r6, r9, sl, lr}^
    1ee4:	205f5f54 	subscs	r5, pc, r4, asr pc	; <UNPREDICTABLE>
    1ee8:	5f5f0037 	svcpl	0x005f0037
    1eec:	52414843 	subpl	r4, r1, #4390912	; 0x430000
    1ef0:	545f3233 	ldrbpl	r3, [pc], #-563	; 1ef8 <_Min_Stack_Size+0x1af8>
    1ef4:	5f455059 	svcpl	0x00455059
    1ef8:	6f6c205f 	svcvs	0x006c205f
    1efc:	7520676e 	strvc	r6, [r0, #-1902]!	; 0xfffff892
    1f00:	6769736e 	strbvs	r7, [r9, -lr, ror #6]!
    1f04:	2064656e 	rsbcs	r6, r4, lr, ror #10
    1f08:	00746e69 	rsbseq	r6, r4, r9, ror #28
    1f0c:	46535f5f 	usaxmi	r5, r3, pc	; <UNPREDICTABLE>
    1f10:	54434152 	strbpl	r4, [r3], #-338	; 0xfffffeae
    1f14:	4942495f 	stmdbmi	r2, {r0, r1, r2, r3, r4, r6, r8, fp, lr}^
    1f18:	205f5f54 	subscs	r5, pc, r4, asr pc	; <UNPREDICTABLE>
    1f1c:	5f5f0030 	svcpl	0x005f0030
    1f20:	5f4d5241 	svcpl	0x004d5241
    1f24:	20534350 	subscs	r4, r3, r0, asr r3
    1f28:	5f5f0031 	svcpl	0x005f0031
    1f2c:	495f5148 	ldmdbmi	pc, {r3, r6, r8, ip, lr}^	; <UNPREDICTABLE>
    1f30:	5f544942 	svcpl	0x00544942
    1f34:	0030205f 	eorseq	r2, r0, pc, asr r0
    1f38:	49545845 	ldmdbmi	r4, {r0, r2, r6, fp, ip, lr}^
    1f3c:	4e494c5f 	mcrmi	12, 2, r4, cr9, cr15, {2}
    1f40:	00303145 	eorseq	r3, r0, r5, asr #2
    1f44:	49545845 	ldmdbmi	r4, {r0, r2, r6, fp, ip, lr}^
    1f48:	4e494c5f 	mcrmi	12, 2, r4, cr9, cr15, {2}
    1f4c:	00313145 	eorseq	r3, r1, r5, asr #2
    1f50:	49545845 	ldmdbmi	r4, {r0, r2, r6, fp, ip, lr}^
    1f54:	4e494c5f 	mcrmi	12, 2, r4, cr9, cr15, {2}
    1f58:	00323145 	eorseq	r3, r2, r5, asr #2
    1f5c:	49545845 	ldmdbmi	r4, {r0, r2, r6, fp, ip, lr}^
    1f60:	4e494c5f 	mcrmi	12, 2, r4, cr9, cr15, {2}
    1f64:	00333145 	eorseq	r3, r3, r5, asr #2
    1f68:	49545845 	ldmdbmi	r4, {r0, r2, r6, fp, ip, lr}^
    1f6c:	4e494c5f 	mcrmi	12, 2, r4, cr9, cr15, {2}
    1f70:	00343145 	eorseq	r3, r4, r5, asr #2
    1f74:	49545845 	ldmdbmi	r4, {r0, r2, r6, fp, ip, lr}^
    1f78:	4e494c5f 	mcrmi	12, 2, r4, cr9, cr15, {2}
    1f7c:	00353145 	eorseq	r3, r5, r5, asr #2
    1f80:	49555f5f 	ldmdbmi	r5, {r0, r1, r2, r3, r4, r6, r8, r9, sl, fp, ip, lr}^
    1f84:	4c5f544e 	cfldrdmi	mvd5, [pc], {78}	; 0x4e
    1f88:	54534145 	ldrbpl	r4, [r3], #-325	; 0xfffffebb
    1f8c:	545f3233 	ldrbpl	r3, [pc], #-563	; 1f94 <_Min_Stack_Size+0x1b94>
    1f90:	5f455059 	svcpl	0x00455059
    1f94:	6f6c205f 	svcvs	0x006c205f
    1f98:	7520676e 	strvc	r6, [r0, #-1902]!	; 0xfffff892
    1f9c:	6769736e 	strbvs	r7, [r9, -lr, ror #6]!
    1fa0:	2064656e 	rsbcs	r6, r4, lr, ror #10
    1fa4:	00746e69 	rsbseq	r6, r4, r9, ror #28
    1fa8:	51445f5f 	cmppl	r4, pc, asr pc
    1fac:	4942465f 	stmdbmi	r2, {r0, r1, r2, r3, r4, r6, r9, sl, lr}^
    1fb0:	205f5f54 	subscs	r5, pc, r4, asr pc	; <UNPREDICTABLE>
    1fb4:	5f003336 	svcpl	0x00003336
    1fb8:	4153555f 	cmpmi	r3, pc, asr r5
    1fbc:	4d554343 	ldclmi	3, cr4, [r5, #-268]	; 0xfffffef4
    1fc0:	58414d5f 	stmdapl	r1, {r0, r1, r2, r3, r4, r6, r8, sl, fp, lr}^
    1fc4:	30205f5f 	eorcc	r5, r0, pc, asr pc
    1fc8:	46464658 			; <UNDEFINED> instruction: 0x46464658
    1fcc:	382d5046 	stmdacc	sp!, {r1, r2, r6, ip, lr}
    1fd0:	004b4855 	subeq	r4, fp, r5, asr r8
    1fd4:	52415f5f 	subpl	r5, r1, #380	; 0x17c
    1fd8:	45465f4d 	strbmi	r5, [r6, #-3917]	; 0xfffff0b3
    1fdc:	52555441 	subspl	r5, r5, #1090519040	; 0x41000000
    1fe0:	444c5f45 	strbmi	r5, [ip], #-3909	; 0xfffff0bb
    1fe4:	20584552 	subscs	r4, r8, r2, asr r5
    1fe8:	5f5f0037 	svcpl	0x005f0037
    1fec:	5f474953 	svcpl	0x00474953
    1ff0:	4d4f5441 	cfstrdmi	mvd5, [pc, #-260]	; 1ef4 <_Min_Stack_Size+0x1af4>
    1ff4:	575f4349 	ldrbpl	r4, [pc, -r9, asr #6]
    1ff8:	48544449 	ldmdami	r4, {r0, r3, r6, sl, lr}^
    1ffc:	33205f5f 			; <UNDEFINED> instruction: 0x33205f5f
    2000:	5f5f0032 	svcpl	0x005f0032
    2004:	54524853 	ldrbpl	r4, [r2], #-2131	; 0xfffff7ad
    2008:	58414d5f 	stmdapl	r1, {r0, r1, r2, r3, r4, r6, r8, sl, fp, lr}^
    200c:	30205f5f 	eorcc	r5, r0, pc, asr pc
    2010:	66663778 			; <UNDEFINED> instruction: 0x66663778
    2014:	5f5f0066 	svcpl	0x005f0066
    2018:	5f434347 	svcpl	0x00434347
    201c:	4d4f5441 	cfstrdmi	mvd5, [pc, #-260]	; 1f20 <_Min_Stack_Size+0x1b20>
    2020:	575f4349 	ldrbpl	r4, [pc, -r9, asr #6]
    2024:	52414843 	subpl	r4, r1, #4390912	; 0x430000
    2028:	4c5f545f 	cfldrdmi	mvd5, [pc], {95}	; 0x5f
    202c:	5f4b434f 	svcpl	0x004b434f
    2030:	45455246 	strbmi	r5, [r5, #-582]	; 0xfffffdba
    2034:	5f003220 	svcpl	0x00003220
    2038:	4d52415f 	ldfmie	f4, [r2, #-380]	; 0xfffffe84
    203c:	3150465f 	cmpcc	r0, pc, asr r6
    2040:	52415f36 	subpl	r5, r1, #54, 30	; 0xd8
    2044:	5f005347 	svcpl	0x00005347
    2048:	44524f5f 	ldrbmi	r4, [r2], #-3935	; 0xfffff0a1
    204c:	505f5245 	subspl	r5, pc, r5, asr #4
    2050:	455f5044 	ldrbmi	r5, [pc, #-68]	; 2014 <_Min_Stack_Size+0x1c14>
    2054:	4149444e 	cmpmi	r9, lr, asr #8
    2058:	205f5f4e 	subscs	r5, pc, lr, asr #30
    205c:	32313433 	eorscc	r3, r1, #855638016	; 0x33000000
    2060:	44545300 	ldrbmi	r5, [r4], #-768	; 0xfffffd00
    2064:	5059545f 	subspl	r5, r9, pc, asr r4
    2068:	485f5345 	ldmdami	pc, {r0, r2, r6, r8, r9, ip, lr}^	; <UNPREDICTABLE>
    206c:	5f5f0020 	svcpl	0x005f0020
    2070:	495f5153 	ldmdbmi	pc, {r0, r1, r4, r6, r8, ip, lr}^	; <UNPREDICTABLE>
    2074:	5f544942 	svcpl	0x00544942
    2078:	0030205f 	eorseq	r2, r0, pc, asr r0
    207c:	4c465f5f 	mcrrmi	15, 5, r5, r6, cr15
    2080:	45445f54 	strbmi	r5, [r4, #-3924]	; 0xfffff0ac
    2084:	414d4943 	cmpmi	sp, r3, asr #18
    2088:	49445f4c 	stmdbmi	r4, {r2, r3, r6, r8, r9, sl, fp, ip, lr}^
    208c:	205f5f47 	subscs	r5, pc, r7, asr #30
    2090:	5f5f0039 	svcpl	0x005f0039
    2094:	33544e49 	cmpcc	r4, #1168	; 0x490
    2098:	414d5f32 	cmpmi	sp, r2, lsr pc
    209c:	205f5f58 	subscs	r5, pc, r8, asr pc	; <UNPREDICTABLE>
    20a0:	66377830 			; <UNDEFINED> instruction: 0x66377830
    20a4:	66666666 	strbtvs	r6, [r6], -r6, ror #12
    20a8:	004c6666 	subeq	r6, ip, r6, ror #12
    20ac:	49575f5f 	ldmdbmi	r7, {r0, r1, r2, r3, r4, r6, r8, r9, sl, fp, ip, lr}^
    20b0:	575f544e 	ldrbpl	r5, [pc, -lr, asr #8]
    20b4:	48544449 	ldmdami	r4, {r0, r3, r6, sl, lr}^
    20b8:	33205f5f 			; <UNDEFINED> instruction: 0x33205f5f
    20bc:	5f5f0032 	svcpl	0x005f0032
    20c0:	5f515155 	svcpl	0x00515155
    20c4:	54494246 	strbpl	r4, [r9], #-582	; 0xfffffdba
    20c8:	38205f5f 	stmdacc	r0!, {r0, r1, r2, r3, r4, r6, r8, r9, sl, fp, ip, lr}
    20cc:	555f5f00 	ldrbpl	r5, [pc, #-3840]	; 11d4 <_Min_Stack_Size+0xdd4>
    20d0:	55434341 	strbpl	r4, [r3, #-833]	; 0xfffffcbf
    20d4:	414d5f4d 	cmpmi	sp, sp, asr #30
    20d8:	205f5f58 	subscs	r5, pc, r8, asr pc	; <UNPREDICTABLE>
    20dc:	46465830 			; <UNDEFINED> instruction: 0x46465830
    20e0:	46464646 	strbmi	r4, [r6], -r6, asr #12
    20e4:	2d504646 	ldclcs	6, cr4, [r0, #-280]	; 0xfffffee8
    20e8:	4b553631 	blmi	154f9b4 <_Min_Stack_Size+0x154f5b4>
    20ec:	445f5f00 	ldrbmi	r5, [pc], #-3840	; 20f4 <_Min_Stack_Size+0x1cf4>
    20f0:	34364345 	ldrtcc	r4, [r6], #-837	; 0xfffffcbb
    20f4:	58414d5f 	stmdapl	r1, {r0, r1, r2, r3, r4, r6, r8, sl, fp, lr}^
    20f8:	5058455f 	subspl	r4, r8, pc, asr r5
    20fc:	33205f5f 			; <UNDEFINED> instruction: 0x33205f5f
    2100:	5f003538 	svcpl	0x00003538
    2104:	544e495f 	strbpl	r4, [lr], #-2399	; 0xfffff6a1
    2108:	41454c5f 	cmpmi	r5, pc, asr ip
    210c:	34365453 	ldrtcc	r5, [r6], #-1107	; 0xfffffbad
    2110:	4449575f 	strbmi	r5, [r9], #-1887	; 0xfffff8a1
    2114:	5f5f4854 	svcpl	0x005f4854
    2118:	00343620 	eorseq	r3, r4, r0, lsr #12
    211c:	4e495f5f 	mcrmi	15, 2, r5, cr9, cr15, {2}
    2120:	5f323354 	svcpl	0x00323354
    2124:	45505954 	ldrbmi	r5, [r0, #-2388]	; 0xfffff6ac
    2128:	6c205f5f 	stcvs	15, cr5, [r0], #-380	; 0xfffffe84
    212c:	20676e6f 	rsbcs	r6, r7, pc, ror #28
    2130:	00746e69 	rsbseq	r6, r4, r9, ror #28
    2134:	4c465f5f 	mcrrmi	15, 5, r5, r6, cr15
    2138:	58323354 	ldmdapl	r2!, {r2, r4, r6, r8, r9, ip, sp}
    213c:	4e494d5f 	mcrmi	13, 2, r4, cr9, cr15, {2}
    2140:	5f30315f 	svcpl	0x0030315f
    2144:	5f505845 	svcpl	0x00505845
    2148:	2d28205f 	stccs	0, cr2, [r8, #-380]!	; 0xfffffe84
    214c:	29373033 	ldmdbcs	r7!, {r0, r1, r4, r5, ip, sp}
    2150:	555f5f00 	ldrbpl	r5, [pc, #-3840]	; 1258 <_Min_Stack_Size+0xe58>
    2154:	5f544e49 	svcpl	0x00544e49
    2158:	54534146 	ldrbpl	r4, [r3], #-326	; 0xfffffeba
    215c:	545f3233 	ldrbpl	r3, [pc], #-563	; 2164 <_Min_Stack_Size+0x1d64>
    2160:	5f455059 	svcpl	0x00455059
    2164:	6e75205f 	mrcvs	0, 3, r2, cr5, cr15, {2}
    2168:	6e676973 			; <UNDEFINED> instruction: 0x6e676973
    216c:	69206465 	stmdbvs	r0!, {r0, r2, r5, r6, sl, sp, lr}
    2170:	5f00746e 	svcpl	0x0000746e
    2174:	4d52415f 	ldfmie	f4, [r2, #-380]	; 0xfffffe84
    2178:	4145465f 	cmpmi	r5, pc, asr r6
    217c:	45525554 	ldrbmi	r5, [r2, #-1364]	; 0xfffffaac
    2180:	4944495f 	stmdbmi	r4, {r0, r1, r2, r3, r4, r6, r8, fp, lr}^
    2184:	00312056 	eorseq	r2, r1, r6, asr r0
    2188:	444c5f5f 	strbmi	r5, [ip], #-3935	; 0xfffff0a1
    218c:	4d5f4c42 	ldclmi	12, cr4, [pc, #-264]	; 208c <_Min_Stack_Size+0x1c8c>
    2190:	455f5841 	ldrbmi	r5, [pc, #-2113]	; 1957 <_Min_Stack_Size+0x1557>
    2194:	5f5f5058 	svcpl	0x005f5058
    2198:	32303120 	eorscc	r3, r0, #32, 2
    219c:	5f5f0034 	svcpl	0x005f0034
    21a0:	465f5153 			; <UNDEFINED> instruction: 0x465f5153
    21a4:	5f544942 	svcpl	0x00544942
    21a8:	3133205f 	teqcc	r3, pc, asr r0
    21ac:	555f5f00 	ldrbpl	r5, [pc, #-3840]	; 12b4 <_Min_Stack_Size+0xeb4>
    21b0:	43434153 	movtmi	r4, #12627	; 0x3153
    21b4:	465f4d55 			; <UNDEFINED> instruction: 0x465f4d55
    21b8:	5f544942 	svcpl	0x00544942
    21bc:	0038205f 	eorseq	r2, r8, pc, asr r0
    21c0:	45445f5f 	strbmi	r5, [r4, #-3935]	; 0xfffff0a1
    21c4:	38323143 	ldmdacc	r2!, {r0, r1, r6, r8, ip, sp}
    21c8:	58414d5f 	stmdapl	r1, {r0, r1, r2, r3, r4, r6, r8, sl, fp, lr}^
    21cc:	5058455f 	subspl	r4, r8, pc, asr r5
    21d0:	36205f5f 	qsaxcc	r5, r0, pc	; <UNPREDICTABLE>
    21d4:	00353431 	eorseq	r3, r5, r1, lsr r4
    21d8:	43575f5f 	cmpmi	r7, #380	; 0x17c
    21dc:	5f524148 	svcpl	0x00524148
    21e0:	5f4e494d 	svcpl	0x004e494d
    21e4:	5530205f 	ldrpl	r2, [r0, #-95]!	; 0xffffffa1
    21e8:	465f5f00 	ldrbmi	r5, [pc], -r0, lsl #30
    21ec:	3436544c 	ldrtcc	r5, [r6], #-1100	; 0xfffffbb4
    21f0:	58414d5f 	stmdapl	r1, {r0, r1, r2, r3, r4, r6, r8, sl, fp, lr}^
    21f4:	31205f5f 			; <UNDEFINED> instruction: 0x31205f5f
    21f8:	3739372e 	ldrcc	r3, [r9, -lr, lsr #14]!
    21fc:	31333936 	teqcc	r3, r6, lsr r9
    2200:	36383433 			; <UNDEFINED> instruction: 0x36383433
    2204:	35313332 	ldrcc	r3, [r1, #-818]!	; 0xfffffcce
    2208:	332b6537 			; <UNDEFINED> instruction: 0x332b6537
    220c:	36463830 			; <UNDEFINED> instruction: 0x36463830
    2210:	46410034 			; <UNDEFINED> instruction: 0x46410034
    2214:	4d5f4f49 	ldclmi	15, cr4, [pc, #-292]	; 20f8 <_Min_Stack_Size+0x1cf8>
    2218:	32525041 	subscc	r5, r2, #65	; 0x41
    221c:	745f5f00 	ldrbvc	r5, [pc], #-3840	; 2224 <_Min_Stack_Size+0x1e24>
    2220:	626d7568 	rsbvs	r7, sp, #104, 10	; 0x1a000000
    2224:	31205f5f 			; <UNDEFINED> instruction: 0x31205f5f
    2228:	4c5f5f00 	mrrcmi	15, 0, r5, pc, cr0	; <UNPREDICTABLE>
    222c:	5f4c4244 	svcpl	0x004c4244
    2230:	5f534148 	svcpl	0x00534148
    2234:	45495551 	strbmi	r5, [r9, #-1361]	; 0xfffffaaf
    2238:	414e5f54 	cmpmi	lr, r4, asr pc
    223c:	205f5f4e 	subscs	r5, pc, lr, asr #30
    2240:	5f5f0031 	svcpl	0x005f0031
    2244:	38544e49 	ldmdacc	r4, {r0, r3, r6, r9, sl, fp, lr}^
    2248:	5059545f 	subspl	r5, r9, pc, asr r4
    224c:	205f5f45 	subscs	r5, pc, r5, asr #30
    2250:	6e676973 			; <UNDEFINED> instruction: 0x6e676973
    2254:	63206465 			; <UNDEFINED> instruction: 0x63206465
    2258:	00726168 	rsbseq	r6, r2, r8, ror #2
    225c:	49575f5f 	ldmdbmi	r7, {r0, r1, r2, r3, r4, r6, r8, r9, sl, fp, ip, lr}^
    2260:	4d5f544e 	cfldrdmi	mvd5, [pc, #-312]	; 2130 <_Min_Stack_Size+0x1d30>
    2264:	5f5f5841 	svcpl	0x005f5841
    2268:	66783020 	ldrbtvs	r3, [r8], -r0, lsr #32
    226c:	66666666 	strbtvs	r6, [r6], -r6, ror #12
    2270:	55666666 	strbpl	r6, [r6, #-1638]!	; 0xfffff99a
    2274:	4c5f5f00 	mrrcmi	15, 0, r5, pc, cr0	; <UNPREDICTABLE>
    2278:	5f4c4244 	svcpl	0x004c4244
    227c:	49434544 	stmdbmi	r3, {r2, r6, r8, sl, lr}^
    2280:	5f4c414d 	svcpl	0x004c414d
    2284:	5f474944 	svcpl	0x00474944
    2288:	3731205f 			; <UNDEFINED> instruction: 0x3731205f
    228c:	545f5f00 	ldrbpl	r5, [pc], #-3840	; 2294 <_Min_Stack_Size+0x1e94>
    2290:	42465f51 	submi	r5, r6, #324	; 0x144
    2294:	5f5f5449 	svcpl	0x005f5449
    2298:	37323120 	ldrcc	r3, [r2, -r0, lsr #2]!
    229c:	555f5f00 	ldrbpl	r5, [pc, #-3840]	; 13a4 <_Min_Stack_Size+0xfa4>
    22a0:	465f5148 	ldrbmi	r5, [pc], -r8, asr #2
    22a4:	5f544942 	svcpl	0x00544942
    22a8:	3631205f 			; <UNDEFINED> instruction: 0x3631205f
    22ac:	54584500 	ldrbpl	r4, [r8], #-1280	; 0xfffffb00
    22b0:	494c5f49 	stmdbmi	ip, {r0, r3, r6, r8, r9, sl, fp, ip, lr}^
    22b4:	0030454e 	eorseq	r4, r0, lr, asr #10
    22b8:	49545845 	ldmdbmi	r4, {r0, r2, r6, fp, ip, lr}^
    22bc:	4e494c5f 	mcrmi	12, 2, r4, cr9, cr15, {2}
    22c0:	45003145 	strmi	r3, [r0, #-325]	; 0xfffffebb
    22c4:	5f495458 	svcpl	0x00495458
    22c8:	454e494c 	strbmi	r4, [lr, #-2380]	; 0xfffff6b4
    22cc:	58450032 	stmdapl	r5, {r1, r4, r5}^
    22d0:	4c5f4954 	mrrcmi	9, 5, r4, pc, cr4	; <UNPREDICTABLE>
    22d4:	33454e49 	movtcc	r4, #24137	; 0x5e49
    22d8:	555f5f00 	ldrbpl	r5, [pc, #-3840]	; 13e0 <_Min_Stack_Size+0xfe0>
    22dc:	41524653 	cmpmi	r2, r3, asr r6
    22e0:	465f5443 	ldrbmi	r5, [pc], -r3, asr #8
    22e4:	5f544942 	svcpl	0x00544942
    22e8:	0038205f 	eorseq	r2, r8, pc, asr r0
    22ec:	4e495f5f 	mcrmi	15, 2, r5, cr9, cr15, {2}
    22f0:	5f343654 	svcpl	0x00343654
    22f4:	29632843 	stmdbcs	r3!, {r0, r1, r6, fp, sp}^
    22f8:	23206320 			; <UNDEFINED> instruction: 0x23206320
    22fc:	4c4c2023 	mcrrmi	0, 2, r2, ip, cr3
    2300:	485f5f00 	ldmdami	pc, {r8, r9, sl, fp, ip, lr}^	; <UNPREDICTABLE>
    2304:	42465f51 	submi	r5, r6, #324	; 0x144
    2308:	5f5f5449 	svcpl	0x005f5449
    230c:	00353120 	eorseq	r3, r5, r0, lsr #2
    2310:	49545845 	ldmdbmi	r4, {r0, r2, r6, fp, ip, lr}^
    2314:	4e494c5f 	mcrmi	12, 2, r4, cr9, cr15, {2}
    2318:	45003745 	strmi	r3, [r0, #-1861]	; 0xfffff8bb
    231c:	5f495458 	svcpl	0x00495458
    2320:	454e494c 	strbmi	r4, [lr, #-2380]	; 0xfffff6b4
    2324:	58450038 	stmdapl	r5, {r3, r4, r5}^
    2328:	4c5f4954 	mrrcmi	9, 5, r4, pc, cr4	; <UNPREDICTABLE>
    232c:	39454e49 	stmdbcc	r5, {r0, r3, r6, r9, sl, fp, lr}^
    2330:	575f5f00 	ldrbpl	r5, [pc, -r0, lsl #30]
    2334:	52414843 	subpl	r4, r1, #4390912	; 0x430000
    2338:	58414d5f 	stmdapl	r1, {r0, r1, r2, r3, r4, r6, r8, sl, fp, lr}^
    233c:	30205f5f 	eorcc	r5, r0, pc, asr pc
    2340:	66666678 			; <UNDEFINED> instruction: 0x66666678
    2344:	66666666 	strbtvs	r6, [r6], -r6, ror #12
    2348:	5f005566 	svcpl	0x00005566
    234c:	5a49535f 	bpl	12570d0 <_Min_Stack_Size+0x1256cd0>
    2350:	5f464f45 	svcpl	0x00464f45
    2354:	474e4f4c 	strbmi	r4, [lr, -ip, asr #30]
    2358:	4e4f4c5f 	mcrmi	12, 2, r4, cr15, cr15, {2}
    235c:	205f5f47 	subscs	r5, pc, r7, asr #30
    2360:	5f5f0038 	svcpl	0x005f0038
    2364:	544e4955 	strbpl	r4, [lr], #-2389	; 0xfffff6ab
    2368:	59545f38 	ldmdbpl	r4, {r3, r4, r5, r8, r9, sl, fp, ip, lr}^
    236c:	5f5f4550 	svcpl	0x005f4550
    2370:	736e7520 	cmnvc	lr, #32, 10	; 0x8000000
    2374:	656e6769 	strbvs	r6, [lr, #-1897]!	; 0xfffff897
    2378:	68632064 	stmdavs	r3!, {r2, r5, r6, sp}^
    237c:	5f007261 	svcpl	0x00007261
    2380:	5248535f 	subpl	r5, r8, #2080374785	; 0x7c000001
    2384:	49575f54 	ldmdbmi	r7, {r2, r4, r6, r8, r9, sl, fp, ip, lr}^
    2388:	5f485444 	svcpl	0x00485444
    238c:	3631205f 			; <UNDEFINED> instruction: 0x3631205f
    2390:	465f5f00 	ldrbmi	r5, [pc], -r0, lsl #30
    2394:	455f544c 	ldrbmi	r5, [pc, #-1100]	; 1f50 <_Min_Stack_Size+0x1b50>
    2398:	4c495350 	mcrrmi	3, 5, r5, r9, cr0
    239c:	5f5f4e4f 	svcpl	0x005f4e4f
    23a0:	312e3120 			; <UNDEFINED> instruction: 0x312e3120
    23a4:	39303239 	ldmdbcc	r0!, {r0, r3, r4, r5, r9, ip, sp}
    23a8:	35393832 	ldrcc	r3, [r9, #-2098]!	; 0xfffff7ce
    23ac:	38373035 	ldmdacc	r7!, {r0, r2, r4, r5, ip, sp}
    23b0:	65353231 	ldrvs	r3, [r5, #-561]!	; 0xfffffdcf
    23b4:	0046372d 	subeq	r3, r6, sp, lsr #14
    23b8:	4e495f5f 	mcrmi	15, 2, r5, cr9, cr15, {2}
    23bc:	454c5f54 	strbmi	r5, [ip, #-3924]	; 0xfffff0ac
    23c0:	36545341 	ldrbcc	r5, [r4], -r1, asr #6
    23c4:	59545f34 	ldmdbpl	r4, {r2, r4, r5, r8, r9, sl, fp, ip, lr}^
    23c8:	5f5f4550 	svcpl	0x005f4550
    23cc:	6e6f6c20 	cdpvs	12, 6, cr6, cr15, cr0, {1}
    23d0:	6f6c2067 	svcvs	0x006c2067
    23d4:	6920676e 	stmdbvs	r0!, {r1, r2, r3, r5, r6, r8, r9, sl, sp, lr}
    23d8:	4200746e 	andmi	r7, r0, #1845493760	; 0x6e000000
    23dc:	4d5f5449 	cfldrdmi	mvd5, [pc, #-292]	; 22c0 <_Min_Stack_Size+0x1ec0>
    23e0:	5f485441 	svcpl	0x00485441
    23e4:	5f002048 	svcpl	0x00002048
    23e8:	4e49555f 	mcrmi	5, 2, r5, cr9, cr15, {2}
    23ec:	5f323354 	svcpl	0x00323354
    23f0:	45505954 	ldrbmi	r5, [r0, #-2388]	; 0xfffff6ac
    23f4:	6c205f5f 	stcvs	15, cr5, [r0], #-380	; 0xfffffe84
    23f8:	20676e6f 	rsbcs	r6, r7, pc, ror #28
    23fc:	69736e75 	ldmdbvs	r3!, {r0, r2, r4, r5, r6, r9, sl, fp, sp, lr}^
    2400:	64656e67 	strbtvs	r6, [r5], #-3687	; 0xfffff199
    2404:	746e6920 	strbtvc	r6, [lr], #-2336	; 0xfffff6e0
    2408:	4c5f5f00 	mrrcmi	15, 0, r5, pc, cr0	; <UNPREDICTABLE>
    240c:	5f4c4244 	svcpl	0x004c4244
    2410:	5f4e494d 	svcpl	0x004e494d
    2414:	455f3031 	ldrbmi	r3, [pc, #-49]	; 23eb <_Min_Stack_Size+0x1feb>
    2418:	5f5f5058 	svcpl	0x005f5058
    241c:	332d2820 			; <UNDEFINED> instruction: 0x332d2820
    2420:	00293730 	eoreq	r3, r9, r0, lsr r7
    2424:	334d5453 	movtcc	r5, #54355	; 0xd453
    2428:	20314632 	eorscs	r4, r1, r2, lsr r6
    242c:	5f5f0031 	svcpl	0x005f0031
    2430:	455a4953 	ldrbmi	r4, [sl, #-2387]	; 0xfffff6ad
    2434:	505f464f 	subspl	r4, pc, pc, asr #12
    2438:	544e494f 	strbpl	r4, [lr], #-2383	; 0xfffff6b1
    243c:	5f5f5245 	svcpl	0x005f5245
    2440:	5f003420 	svcpl	0x00003420
    2444:	5046565f 	subpl	r5, r6, pc, asr r6
    2448:	5f50465f 	svcpl	0x0050465f
    244c:	0031205f 	eorseq	r2, r1, pc, asr r0
    2450:	4c555f5f 	mrrcmi	15, 5, r5, r5, cr15	; <UNPREDICTABLE>
    2454:	43415246 	movtmi	r5, #4678	; 0x1246
    2458:	414d5f54 	cmpmi	sp, r4, asr pc
    245c:	205f5f58 	subscs	r5, pc, r8, asr pc	; <UNPREDICTABLE>
    2460:	46465830 			; <UNDEFINED> instruction: 0x46465830
    2464:	46464646 	strbmi	r4, [r6], -r6, asr #12
    2468:	2d504646 	ldclcs	6, cr4, [r0, #-280]	; 0xfffffee8
    246c:	4c553233 	lfmmi	f3, 2, [r5], {51}	; 0x33
    2470:	5f5f0052 	svcpl	0x005f0052
    2474:	465f4148 	ldrbmi	r4, [pc], -r8, asr #2
    2478:	5f544942 	svcpl	0x00544942
    247c:	0037205f 	eorseq	r2, r7, pc, asr r0
    2480:	54505f5f 	ldrbpl	r5, [r0], #-3935	; 0xfffff0a1
    2484:	46494452 			; <UNDEFINED> instruction: 0x46494452
    2488:	49575f46 	ldmdbmi	r7, {r1, r2, r6, r8, r9, sl, fp, ip, lr}^
    248c:	5f485444 	svcpl	0x00485444
    2490:	3233205f 	eorscc	r2, r3, #95	; 0x5f
    2494:	465f5f00 	ldrbmi	r5, [pc], -r0, lsl #30
    2498:	3233544c 	eorscc	r5, r3, #76, 8	; 0x4c000000
    249c:	4e45445f 	mcrmi	4, 2, r4, cr5, cr15, {2}
    24a0:	5f4d524f 	svcpl	0x004d524f
    24a4:	5f4e494d 	svcpl	0x004e494d
    24a8:	2e31205f 	mrccs	0, 1, r2, cr1, cr15, {2}
    24ac:	32313034 	eorscc	r3, r1, #52	; 0x34
    24b0:	36343839 			; <UNDEFINED> instruction: 0x36343839
    24b4:	34323334 	ldrtcc	r3, [r2], #-820	; 0xfffffccc
    24b8:	31373138 	teqcc	r7, r8, lsr r1
    24bc:	35342d65 	ldrcc	r2, [r4, #-3429]!	; 0xfffff29b
    24c0:	00323346 	eorseq	r3, r2, r6, asr #6
    24c4:	52415f5f 	subpl	r5, r1, #380	; 0x17c
    24c8:	5f4c454d 	svcpl	0x004c454d
    24cc:	0031205f 	eorseq	r2, r1, pc, asr r0
    24d0:	41535f5f 	cmpmi	r3, pc, asr pc
    24d4:	4d554343 	ldclmi	3, cr4, [r5, #-268]	; 0xfffffef4
    24d8:	4e494d5f 	mcrmi	13, 2, r4, cr9, cr15, {2}
    24dc:	28205f5f 	stmdacs	r0!, {r0, r1, r2, r3, r4, r6, r8, r9, sl, fp, ip, lr}
    24e0:	3158302d 	cmpcc	r8, sp, lsr #32
    24e4:	4b483750 	blmi	121022c <_Min_Stack_Size+0x120fe2c>
    24e8:	3158302d 	cmpcc	r8, sp, lsr #32
    24ec:	4b483750 	blmi	1210234 <_Min_Stack_Size+0x120fe34>
    24f0:	5f5f0029 	svcpl	0x005f0029
    24f4:	5f544e49 	svcpl	0x00544e49
    24f8:	54444957 	strbpl	r4, [r4], #-2391	; 0xfffff6a9
    24fc:	205f5f48 	subscs	r5, pc, r8, asr #30
    2500:	5f003233 	svcpl	0x00003233
    2504:	4343475f 	movtmi	r4, #14175	; 0x375f
    2508:	4f54415f 	svcmi	0x0054415f
    250c:	5f43494d 	svcpl	0x0043494d
    2510:	4e494f50 	mcrmi	15, 2, r4, cr9, cr0, {2}
    2514:	5f524554 	svcpl	0x00524554
    2518:	4b434f4c 	blmi	10d6250 <_Min_Stack_Size+0x10d5e50>
    251c:	4552465f 	ldrbmi	r4, [r2, #-1631]	; 0xfffff9a1
    2520:	00322045 	eorseq	r2, r2, r5, asr #32
    2524:	49555f5f 	ldmdbmi	r5, {r0, r1, r2, r3, r4, r6, r8, r9, sl, fp, ip, lr}^
    2528:	3436544e 	ldrtcc	r5, [r6], #-1102	; 0xfffffbb2
    252c:	6328435f 			; <UNDEFINED> instruction: 0x6328435f
    2530:	20632029 	rsbcs	r2, r3, r9, lsr #32
    2534:	55202323 	strpl	r2, [r0, #-803]!	; 0xfffffcdd
    2538:	5f004c4c 	svcpl	0x00004c4c
    253c:	43414c5f 	movtmi	r4, #7263	; 0x1c5f
    2540:	5f4d5543 	svcpl	0x004d5543
    2544:	49535045 	ldmdbmi	r3, {r0, r2, r6, ip, lr}^
    2548:	5f4e4f4c 	svcpl	0x004e4f4c
    254c:	7830205f 	ldmdavc	r0!, {r0, r1, r2, r3, r4, r6, sp}
    2550:	332d5031 			; <UNDEFINED> instruction: 0x332d5031
    2554:	004b4c31 	subeq	r4, fp, r1, lsr ip
    2558:	46535f5f 	usaxmi	r5, r3, pc	; <UNPREDICTABLE>
    255c:	54434152 	strbpl	r4, [r3], #-338	; 0xfffffeae
    2560:	5350455f 	cmppl	r0, #398458880	; 0x17c00000
    2564:	4e4f4c49 	cdpmi	12, 4, cr4, cr15, cr9, {2}
    2568:	30205f5f 	eorcc	r5, r0, pc, asr pc
    256c:	2d503178 	ldfcse	f3, [r0, #-480]	; 0xfffffe20
    2570:	00524837 	subseq	r4, r2, r7, lsr r8
    2574:	51555f5f 	cmppl	r5, pc, asr pc
    2578:	42495f51 	submi	r5, r9, #324	; 0x144
    257c:	5f5f5449 	svcpl	0x005f5449
    2580:	5f003020 	svcpl	0x00003020
    2584:	544c465f 	strbpl	r4, [ip], #-1631	; 0xfffff9a1
    2588:	5f583233 	svcpl	0x00583233
    258c:	5f58414d 	svcpl	0x0058414d
    2590:	2e31205f 	mrccs	0, 1, r2, cr1, cr15, {2}
    2594:	36373937 			; <UNDEFINED> instruction: 0x36373937
    2598:	33313339 	teqcc	r1, #-469762048	; 0xe4000000
    259c:	32363834 	eorscc	r3, r6, #52, 16	; 0x340000
    25a0:	37353133 			; <UNDEFINED> instruction: 0x37353133
    25a4:	30332b65 	eorscc	r2, r3, r5, ror #22
    25a8:	32334638 	eorscc	r4, r3, #56, 12	; 0x3800000
    25ac:	5f5f0078 	svcpl	0x005f0078
    25b0:	5f515355 	svcpl	0x00515355
    25b4:	54494246 	strbpl	r4, [r9], #-582	; 0xfffffdba
    25b8:	33205f5f 			; <UNDEFINED> instruction: 0x33205f5f
    25bc:	5f5f0032 	svcpl	0x005f0032
    25c0:	495f4148 	ldmdbmi	pc, {r3, r6, r8, lr}^	; <UNPREDICTABLE>
    25c4:	5f544942 	svcpl	0x00544942
    25c8:	0038205f 	eorseq	r2, r8, pc, asr r0
    25cc:	43475f5f 	movtmi	r5, #32607	; 0x7f5f
    25d0:	54415f43 	strbpl	r5, [r1], #-3907	; 0xfffff0bd
    25d4:	43494d4f 	movtmi	r4, #40271	; 0x9d4f
    25d8:	4148435f 	cmpmi	r8, pc, asr r3
    25dc:	5f323352 	svcpl	0x00323352
    25e0:	4f4c5f54 	svcmi	0x004c5f54
    25e4:	465f4b43 	ldrbmi	r4, [pc], -r3, asr #22
    25e8:	20454552 	subcs	r4, r5, r2, asr r5
    25ec:	5f5f0032 	svcpl	0x005f0032
    25f0:	5f4d5241 	svcpl	0x004d5241
    25f4:	48435241 	stmdami	r3, {r0, r6, r9, ip, lr}^
    25f8:	5f4d375f 	svcpl	0x004d375f
    25fc:	0031205f 	eorseq	r2, r1, pc, asr r0
    2600:	52465f5f 	subpl	r5, r6, #380	; 0x17c
    2604:	5f544341 	svcpl	0x00544341
    2608:	49535045 	ldmdbmi	r3, {r0, r2, r6, ip, lr}^
    260c:	5f4e4f4c 	svcpl	0x004e4f4c
    2610:	7830205f 	ldmdavc	r0!, {r0, r1, r2, r3, r4, r6, sp}
    2614:	312d5031 			; <UNDEFINED> instruction: 0x312d5031
    2618:	5f005235 	svcpl	0x00005235
    261c:	4454535f 	ldrbmi	r5, [r4], #-863	; 0xfffffca1
    2620:	4f485f43 	svcmi	0x00485f43
    2624:	44455453 	strbmi	r5, [r5], #-1107	; 0xfffffbad
    2628:	31205f5f 			; <UNDEFINED> instruction: 0x31205f5f
    262c:	54454700 	strbpl	r4, [r5], #-1792	; 0xfffff900
    2630:	5449425f 	strbpl	r4, [r9], #-607	; 0xfffffda1
    2634:	52415628 	subpl	r5, r1, #40, 12	; 0x2800000
    2638:	5449422c 	strbpl	r4, [r9], #-556	; 0xfffffdd4
    263c:	28282029 	stmdacs	r8!, {r0, r3, r5, sp}
    2640:	20524156 	subscs	r4, r2, r6, asr r1
    2644:	42203e3e 	eormi	r3, r0, #992	; 0x3e0
    2648:	20295449 	eorcs	r5, r9, r9, asr #8
    264c:	20312026 	eorscs	r2, r1, r6, lsr #32
    2650:	5f5f0029 	svcpl	0x005f0029
    2654:	50544e49 	subspl	r4, r4, r9, asr #28
    2658:	4d5f5254 	lfmmi	f5, 2, [pc, #-336]	; 2510 <_Min_Stack_Size+0x2110>
    265c:	5f5f5841 	svcpl	0x005f5841
    2660:	37783020 	ldrbcc	r3, [r8, -r0, lsr #32]!
    2664:	66666666 	strbtvs	r6, [r6], -r6, ror #12
    2668:	00666666 	rsbeq	r6, r6, r6, ror #12
    266c:	52415f5f 	subpl	r5, r1, #380	; 0x17c
    2670:	45465f4d 	strbmi	r5, [r6, #-3917]	; 0xfffff0b3
    2674:	52555441 	subspl	r5, r5, #1090519040	; 0x41000000
    2678:	554e5f45 	strbpl	r5, [lr, #-3909]	; 0xfffff0bb
    267c:	4952454d 	ldmdbmi	r2, {r0, r2, r3, r6, r8, sl, lr}^
    2680:	414d5f43 	cmpmi	sp, r3, asr #30
    2684:	4e494d58 	mcrmi	13, 2, r4, cr9, cr8, {2}
    2688:	685f5f00 	ldmdavs	pc, {r8, r9, sl, fp, ip, lr}^	; <UNPREDICTABLE>
    268c:	695f7361 	ldmdbvs	pc, {r0, r5, r6, r8, r9, ip, sp, lr}^	; <UNPREDICTABLE>
    2690:	756c636e 	strbvc	r6, [ip, #-878]!	; 0xfffffc92
    2694:	53286564 			; <UNDEFINED> instruction: 0x53286564
    2698:	20295254 	eorcs	r5, r9, r4, asr r2
    269c:	61685f5f 	cmnvs	r8, pc, asr pc
    26a0:	6e695f73 	mcrvs	15, 3, r5, cr9, cr3, {3}
    26a4:	64756c63 	ldrbtvs	r6, [r5], #-3171	; 0xfffff39d
    26a8:	285f5f65 	ldmdacs	pc, {r0, r2, r5, r6, r8, r9, sl, fp, ip, lr}^	; <UNPREDICTABLE>
    26ac:	29525453 	ldmdbcs	r2, {r0, r1, r4, r6, sl, ip, lr}^
    26b0:	535f5f00 	cmppl	pc, #0, 30
    26b4:	4654464f 	ldrbmi	r4, [r4], -pc, asr #12
    26b8:	205f5f50 	subscs	r5, pc, r0, asr pc	; <UNPREDICTABLE>
    26bc:	5f5f0031 	svcpl	0x005f0031
    26c0:	36544c46 	ldrbcc	r4, [r4], -r6, asr #24
    26c4:	50455f34 	subpl	r5, r5, r4, lsr pc
    26c8:	4f4c4953 	svcmi	0x004c4953
    26cc:	205f5f4e 	subscs	r5, pc, lr, asr #30
    26d0:	32322e32 	eorscc	r2, r2, #800	; 0x320
    26d4:	36343430 			; <UNDEFINED> instruction: 0x36343430
    26d8:	32393430 	eorscc	r3, r9, #48, 8	; 0x30000000
    26dc:	31333035 	teqcc	r3, r5, lsr r0
    26e0:	2d653133 	stfcse	f3, [r5, #-204]!	; 0xffffff34
    26e4:	36463631 			; <UNDEFINED> instruction: 0x36463631
    26e8:	5f5f0034 	svcpl	0x005f0034
    26ec:	5f434347 	svcpl	0x00434347
    26f0:	4d4f5441 	cfstrdmi	mvd5, [pc, #-260]	; 25f4 <_Min_Stack_Size+0x21f4>
    26f4:	4c5f4349 	mrrcmi	3, 4, r4, pc, cr9	; <UNPREDICTABLE>
    26f8:	474e4f4c 	strbmi	r4, [lr, -ip, asr #30]
    26fc:	434f4c5f 	movtmi	r4, #64607	; 0xfc5f
    2700:	52465f4b 	subpl	r5, r6, #300	; 0x12c
    2704:	31204545 			; <UNDEFINED> instruction: 0x31204545
    2708:	475f5f00 	ldrbmi	r5, [pc, -r0, lsl #30]
    270c:	485f4343 	ldmdami	pc, {r0, r1, r6, r8, r9, lr}^	; <UNPREDICTABLE>
    2710:	5f455641 	svcpl	0x00455641
    2714:	434e5953 	movtmi	r5, #59731	; 0xe953
    2718:	4d4f435f 	stclmi	3, cr4, [pc, #-380]	; 25a4 <_Min_Stack_Size+0x21a4>
    271c:	45524150 	ldrbmi	r4, [r2, #-336]	; 0xfffffeb0
    2720:	444e415f 	strbmi	r4, [lr], #-351	; 0xfffffea1
    2724:	4157535f 	cmpmi	r7, pc, asr r3
    2728:	20345f50 	eorscs	r5, r4, r0, asr pc
    272c:	5f5f0031 	svcpl	0x005f0031
    2730:	5f544c46 	svcpl	0x00544c46
    2734:	5f58414d 	svcpl	0x0058414d
    2738:	5f505845 	svcpl	0x00505845
    273c:	3231205f 	eorscc	r2, r1, #95	; 0x5f
    2740:	5f5f0038 	svcpl	0x005f0038
    2744:	4d4f5441 	cfstrdmi	mvd5, [pc, #-260]	; 2648 <_Min_Stack_Size+0x2248>
    2748:	415f4349 	cmpmi	pc, r9, asr #6
    274c:	525f5143 	subspl	r5, pc, #-1073741808	; 0xc0000010
    2750:	34204c45 	strtcc	r4, [r0], #-3141	; 0xfffff3bb
    2754:	555f5f00 	ldrbpl	r5, [pc, #-3840]	; 185c <_Min_Stack_Size+0x145c>
    2758:	5f544e49 	svcpl	0x00544e49
    275c:	5341454c 	movtpl	r4, #5452	; 0x154c
    2760:	5f323354 	svcpl	0x00323354
    2764:	5f58414d 	svcpl	0x0058414d
    2768:	7830205f 	ldmdavc	r0!, {r0, r1, r2, r3, r4, r6, sp}
    276c:	66666666 	strbtvs	r6, [r6], -r6, ror #12
    2770:	66666666 	strbtvs	r6, [r6], -r6, ror #12
    2774:	5f004c55 	svcpl	0x00004c55
    2778:	4345445f 	movtmi	r4, #21599	; 0x545f
    277c:	4d5f3233 	lfmmi	f3, 2, [pc, #-204]	; 26b8 <_Min_Stack_Size+0x22b8>
    2780:	455f4e49 	ldrbmi	r4, [pc, #-3657]	; 193f <_Min_Stack_Size+0x153f>
    2784:	5f5f5058 	svcpl	0x005f5058
    2788:	392d2820 	pushcc	{r5, fp, sp}
    278c:	5f002934 	svcpl	0x00002934
    2790:	4e49555f 	mcrmi	5, 2, r5, cr9, cr15, {2}
    2794:	58414d54 	stmdapl	r1, {r2, r4, r6, r8, sl, fp, lr}^
    2798:	5059545f 	subspl	r5, r9, pc, asr r4
    279c:	205f5f45 	subscs	r5, pc, r5, asr #30
    27a0:	676e6f6c 	strbvs	r6, [lr, -ip, ror #30]!
    27a4:	6e6f6c20 	cdpvs	12, 6, cr6, cr15, cr0, {1}
    27a8:	6e752067 	cdpvs	0, 7, cr2, cr5, cr7, {3}
    27ac:	6e676973 			; <UNDEFINED> instruction: 0x6e676973
    27b0:	69206465 	stmdbvs	r0!, {r0, r2, r5, r6, sl, sp, lr}
    27b4:	5f00746e 	svcpl	0x0000746e
    27b8:	42444c5f 	submi	r4, r4, #24320	; 0x5f00
    27bc:	50455f4c 	subpl	r5, r5, ip, asr #30
    27c0:	4f4c4953 	svcmi	0x004c4953
    27c4:	205f5f4e 	subscs	r5, pc, lr, asr #30
    27c8:	32322e32 	eorscc	r2, r2, #800	; 0x320
    27cc:	36343430 			; <UNDEFINED> instruction: 0x36343430
    27d0:	32393430 	eorscc	r3, r9, #48, 8	; 0x30000000
    27d4:	31333035 	teqcc	r3, r5, lsr r0
    27d8:	2d653133 	stfcse	f3, [r5, #-204]!	; 0xffffff34
    27dc:	004c3631 	subeq	r3, ip, r1, lsr r6
    27e0:	4e495f5f 	mcrmi	15, 2, r5, cr9, cr15, {2}
    27e4:	52545054 	subspl	r5, r4, #84	; 0x54
    27e8:	5059545f 	subspl	r5, r9, pc, asr r4
    27ec:	205f5f45 	subscs	r5, pc, r5, asr #30
    27f0:	00746e69 	rsbseq	r6, r4, r9, ror #28
    27f4:	45445f5f 	strbmi	r5, [r4, #-3935]	; 0xfffff0a1
    27f8:	56455f43 	strbpl	r5, [r5], -r3, asr #30
    27fc:	4d5f4c41 	ldclmi	12, cr4, [pc, #-260]	; 2700 <_Min_Stack_Size+0x2300>
    2800:	4f485445 	svcmi	0x00485445
    2804:	205f5f44 	subscs	r5, pc, r4, asr #30
    2808:	5f5f0032 	svcpl	0x005f0032
    280c:	43415355 	movtmi	r5, #4949	; 0x1355
    2810:	5f4d5543 	svcpl	0x004d5543
    2814:	5f4e494d 	svcpl	0x004e494d
    2818:	2e30205f 	mrccs	0, 1, r2, cr0, cr15, {2}
    281c:	4b485530 	blmi	1217ce4 <_Min_Stack_Size+0x12178e4>
    2820:	555f5f00 	ldrbpl	r5, [pc, #-3840]	; 1928 <_Min_Stack_Size+0x1528>
    2824:	41524653 	cmpmi	r2, r3, asr r6
    2828:	495f5443 	ldmdbmi	pc, {r0, r1, r6, sl, ip, lr}^	; <UNPREDICTABLE>
    282c:	5f544942 	svcpl	0x00544942
    2830:	0030205f 	eorseq	r2, r0, pc, asr r0
    2834:	4e495f5f 	mcrmi	15, 2, r5, cr9, cr15, {2}
    2838:	454c5f54 	strbmi	r5, [ip, #-3924]	; 0xfffff0ac
    283c:	33545341 	cmpcc	r4, #67108865	; 0x4000001
    2840:	49575f32 	ldmdbmi	r7, {r1, r4, r5, r8, r9, sl, fp, ip, lr}^
    2844:	5f485444 	svcpl	0x00485444
    2848:	3233205f 	eorscc	r2, r3, #95	; 0x5f
    284c:	415f5f00 	cmpmi	pc, r0, lsl #30
    2850:	465f4d52 			; <UNDEFINED> instruction: 0x465f4d52
    2854:	55544145 	ldrbpl	r4, [r4, #-325]	; 0xfffffebb
    2858:	445f4552 	ldrbmi	r4, [pc], #-1362	; 2860 <_Min_Stack_Size+0x2460>
    285c:	5f005053 	svcpl	0x00005053
    2860:	5f51445f 	svcpl	0x0051445f
    2864:	54494249 	strbpl	r4, [r9], #-585	; 0xfffffdb7
    2868:	30205f5f 	eorcc	r5, r0, pc, asr pc
    286c:	465f5f00 	ldrbmi	r5, [pc], -r0, lsl #30
    2870:	4d5f544c 	cfldrdmi	mvd5, [pc, #-304]	; 2748 <_Min_Stack_Size+0x2348>
    2874:	5f5f5841 	svcpl	0x005f5841
    2878:	342e3320 	strtcc	r3, [lr], #-800	; 0xfffffce0
    287c:	32383230 	eorscc	r3, r8, #48, 4
    2880:	36363433 			; <UNDEFINED> instruction: 0x36363433
    2884:	32353833 	eorscc	r3, r5, #3342336	; 0x330000
    2888:	65363838 	ldrvs	r3, [r6, #-2104]!	; 0xfffff7c8
    288c:	4638332b 	ldrtmi	r3, [r8], -fp, lsr #6
    2890:	465f5f00 	ldrbmi	r5, [pc], -r0, lsl #30
    2894:	3233544c 	eorscc	r5, r3, #76, 8	; 0x4c000000
    2898:	4e494d5f 	mcrmi	13, 2, r4, cr9, cr15, {2}
    289c:	31205f5f 			; <UNDEFINED> instruction: 0x31205f5f
    28a0:	3537312e 	ldrcc	r3, [r7, #-302]!	; 0xfffffed2
    28a4:	33343934 	teqcc	r4, #52, 18	; 0xd0000
    28a8:	32383035 	eorscc	r3, r8, #53	; 0x35
    28ac:	37383232 			; <UNDEFINED> instruction: 0x37383232
    28b0:	332d6535 			; <UNDEFINED> instruction: 0x332d6535
    28b4:	32334638 	eorscc	r4, r3, #56, 12	; 0x3800000
    28b8:	535f5f00 	cmppl	pc, #0, 30
    28bc:	5f455a49 	svcpl	0x00455a49
    28c0:	45505954 	ldrbmi	r5, [r0, #-2388]	; 0xfffff6ac
    28c4:	75205f5f 	strvc	r5, [r0, #-3935]!	; 0xfffff0a1
    28c8:	6769736e 	strbvs	r7, [r9, -lr, ror #6]!
    28cc:	2064656e 	rsbcs	r6, r4, lr, ror #10
    28d0:	00746e69 	rsbseq	r6, r4, r9, ror #28
    28d4:	4f494641 	svcmi	0x00494641
    28d8:	5458455f 	ldrbpl	r4, [r8], #-1375	; 0xfffffaa1
    28dc:	00524349 	subseq	r4, r2, r9, asr #6
    28e0:	4c555f5f 	mrrcmi	15, 5, r5, r5, cr15	; <UNPREDICTABLE>
    28e4:	4343414c 	movtmi	r4, #12620	; 0x314c
    28e8:	465f4d55 			; <UNDEFINED> instruction: 0x465f4d55
    28ec:	5f544942 	svcpl	0x00544942
    28f0:	3233205f 	eorscc	r2, r3, #95	; 0x5f
    28f4:	465f5f00 	ldrbmi	r5, [pc], -r0, lsl #30
    28f8:	3436544c 	ldrtcc	r5, [r6], #-1100	; 0xfffffbb4
    28fc:	4e494d5f 	mcrmi	13, 2, r4, cr9, cr15, {2}
    2900:	5058455f 	subspl	r4, r8, pc, asr r5
    2904:	28205f5f 	stmdacs	r0!, {r0, r1, r2, r3, r4, r6, r8, r9, sl, fp, ip, lr}
    2908:	3230312d 	eorscc	r3, r0, #1073741835	; 0x4000000b
    290c:	5f002931 	svcpl	0x00002931
    2910:	4152465f 	cmpmi	r2, pc, asr r6
    2914:	465f5443 	ldrbmi	r5, [pc], -r3, asr #8
    2918:	5f544942 	svcpl	0x00544942
    291c:	3531205f 	ldrcc	r2, [r1, #-95]!	; 0xffffffa1
    2920:	475f5f00 	ldrbmi	r5, [pc, -r0, lsl #30]
    2924:	415f4343 	cmpmi	pc, r3, asr #6
    2928:	494d4f54 	stmdbmi	sp, {r2, r4, r6, r8, r9, sl, fp, lr}^
    292c:	48535f43 	ldmdami	r3, {r0, r1, r6, r8, r9, sl, fp, ip, lr}^
    2930:	5f54524f 	svcpl	0x0054524f
    2934:	4b434f4c 	blmi	10d666c <_Min_Stack_Size+0x10d626c>
    2938:	4552465f 	ldrbmi	r4, [r2, #-1631]	; 0xfffff9a1
    293c:	00322045 	eorseq	r2, r2, r5, asr #32
    2940:	54555f5f 	ldrbpl	r5, [r5], #-3935	; 0xfffff0a1
    2944:	42495f41 	submi	r5, r9, #260	; 0x104
    2948:	5f5f5449 	svcpl	0x005f5449
    294c:	00343620 	eorseq	r3, r4, r0, lsr #12
    2950:	4c465f5f 	mcrrmi	15, 5, r5, r6, cr15
    2954:	494d5f54 	stmdbmi	sp, {r2, r4, r6, r8, r9, sl, fp, ip, lr}^
    2958:	30315f4e 	eorscc	r5, r1, lr, asr #30
    295c:	5058455f 	subspl	r4, r8, pc, asr r5
    2960:	28205f5f 	stmdacs	r0!, {r0, r1, r2, r3, r4, r6, r8, r9, sl, fp, ip, lr}
    2964:	2937332d 	ldmdbcs	r7!, {r0, r2, r3, r5, r8, r9, ip, sp}
    2968:	465f5f00 	ldrbmi	r5, [pc], -r0, lsl #30
    296c:	3233544c 	eorscc	r5, r3, #76, 8	; 0x4c000000
    2970:	494d5f58 	stmdbmi	sp, {r3, r4, r6, r8, r9, sl, fp, ip, lr}^
    2974:	58455f4e 	stmdapl	r5, {r1, r2, r3, r6, r8, r9, sl, fp, ip, lr}^
    2978:	205f5f50 	subscs	r5, pc, r0, asr pc	; <UNPREDICTABLE>
    297c:	30312d28 	eorscc	r2, r1, r8, lsr #26
    2980:	00293132 	eoreq	r3, r9, r2, lsr r1
    2984:	4c465f5f 	mcrrmi	15, 5, r5, r6, cr15
    2988:	58323354 	ldmdapl	r2!, {r2, r4, r6, r8, r9, ip, sp}
    298c:	5350455f 	cmppl	r0, #398458880	; 0x17c00000
    2990:	4e4f4c49 	cdpmi	12, 4, cr4, cr15, cr9, {2}
    2994:	32205f5f 	eorcc	r5, r0, #380	; 0x17c
    2998:	3032322e 	eorscc	r3, r2, lr, lsr #4
    299c:	30363434 	eorscc	r3, r6, r4, lsr r4
    29a0:	35323934 	ldrcc	r3, [r2, #-2356]!	; 0xfffff6cc
    29a4:	33313330 	teqcc	r1, #48, 6	; 0xc0000000
    29a8:	312d6531 			; <UNDEFINED> instruction: 0x312d6531
    29ac:	32334636 	eorscc	r4, r3, #56623104	; 0x3600000
    29b0:	5f5f0078 	svcpl	0x005f0078
    29b4:	5f544c46 	svcpl	0x00544c46
    29b8:	4c415645 	mcrrmi	6, 4, r5, r1, cr5
    29bc:	54454d5f 	strbpl	r4, [r5], #-3423	; 0xfffff2a1
    29c0:	5f444f48 	svcpl	0x00444f48
    29c4:	315f5354 	cmpcc	pc, r4, asr r3	; <UNPREDICTABLE>
    29c8:	31363638 	teqcc	r6, r8, lsr r6
    29cc:	5f5f335f 	svcpl	0x005f335f
    29d0:	5f003020 	svcpl	0x00003020
    29d4:	4c42445f 	cfstrdmi	mvd4, [r2], {95}	; 0x5f
    29d8:	5341485f 	movtpl	r4, #6239	; 0x185f
    29dc:	464e495f 			; <UNDEFINED> instruction: 0x464e495f
    29e0:	54494e49 	strbpl	r4, [r9], #-3657	; 0xfffff1b7
    29e4:	205f5f59 	subscs	r5, pc, r9, asr pc	; <UNPREDICTABLE>
    29e8:	5f5f0031 	svcpl	0x005f0031
    29ec:	5f4d5241 	svcpl	0x004d5241
    29f0:	54414546 	strbpl	r4, [r1], #-1350	; 0xfffffaba
    29f4:	5f455255 	svcpl	0x00455255
    29f8:	54494251 	strbpl	r4, [r9], #-593	; 0xfffffdaf
    29fc:	5f003120 	svcpl	0x00003120
    2a00:	544e495f 	strbpl	r4, [lr], #-2399	; 0xfffff6a1
    2a04:	5341465f 	movtpl	r4, #5727	; 0x165f
    2a08:	5f323354 	svcpl	0x00323354
    2a0c:	45505954 	ldrbmi	r5, [r0, #-2388]	; 0xfffff6ac
    2a10:	69205f5f 	stmdbvs	r0!, {r0, r1, r2, r3, r4, r6, r8, r9, sl, fp, ip, lr}
    2a14:	5f00746e 	svcpl	0x0000746e
    2a18:	544c465f 	strbpl	r4, [ip], #-1631	; 0xfffff9a1
    2a1c:	5341485f 	movtpl	r4, #6239	; 0x185f
    2a20:	4955515f 	ldmdbmi	r5, {r0, r1, r2, r3, r4, r6, r8, ip, lr}^
    2a24:	4e5f5445 	cdpmi	4, 5, cr5, cr15, cr5, {2}
    2a28:	5f5f4e41 	svcpl	0x005f4e41
    2a2c:	5f003120 	svcpl	0x00003120
    2a30:	5a49535f 	bpl	12577b4 <_Min_Stack_Size+0x12573b4>
    2a34:	5f464f45 	svcpl	0x00464f45
    2a38:	5f544e49 	svcpl	0x00544e49
    2a3c:	0034205f 	eorseq	r2, r4, pc, asr r0
    2a40:	4e495f5f 	mcrmi	15, 2, r5, cr9, cr15, {2}
    2a44:	58414d54 	stmdapl	r1, {r2, r4, r6, r8, sl, fp, lr}^
    2a48:	5059545f 	subspl	r5, r9, pc, asr r4
    2a4c:	205f5f45 	subscs	r5, pc, r5, asr #30
    2a50:	676e6f6c 	strbvs	r6, [lr, -ip, ror #30]!
    2a54:	6e6f6c20 	cdpvs	12, 6, cr6, cr15, cr0, {1}
    2a58:	6e692067 	cdpvs	0, 6, cr2, cr9, cr7, {3}
    2a5c:	5f5f0074 	svcpl	0x005f0074
    2a60:	5f4c4244 	svcpl	0x004c4244
    2a64:	49535045 	ldmdbmi	r3, {r0, r2, r6, ip, lr}^
    2a68:	5f4e4f4c 	svcpl	0x004e4f4c
    2a6c:	2828205f 	stmdacs	r8!, {r0, r1, r2, r3, r4, r6, sp}
    2a70:	62756f64 	rsbsvs	r6, r5, #100, 30	; 0x190
    2a74:	3229656c 	eorcc	r6, r9, #108, 10	; 0x1b000000
    2a78:	3032322e 	eorscc	r3, r2, lr, lsr #4
    2a7c:	30363434 	eorscc	r3, r6, r4, lsr r4
    2a80:	35323934 	ldrcc	r3, [r2, #-2356]!	; 0xfffff6cc
    2a84:	33313330 	teqcc	r1, #48, 6	; 0xc0000000
    2a88:	312d6531 			; <UNDEFINED> instruction: 0x312d6531
    2a8c:	00294c36 	eoreq	r4, r9, r6, lsr ip
    2a90:	4e495f5f 	mcrmi	15, 2, r5, cr9, cr15, {2}
    2a94:	58414d54 	stmdapl	r1, {r2, r4, r6, r8, sl, fp, lr}^
    2a98:	6328435f 			; <UNDEFINED> instruction: 0x6328435f
    2a9c:	20632029 	rsbcs	r2, r3, r9, lsr #32
    2aa0:	4c202323 	stcmi	3, cr2, [r0], #-140	; 0xffffff74
    2aa4:	5f5f004c 	svcpl	0x005f004c
    2aa8:	53435041 	movtpl	r5, #12353	; 0x3041
    2aac:	5f32335f 	svcpl	0x0032335f
    2ab0:	0031205f 	eorseq	r2, r1, pc, asr r0
    2ab4:	42445f5f 	submi	r5, r4, #380	; 0x17c
    2ab8:	45445f4c 	strbmi	r5, [r4, #-3916]	; 0xfffff0b4
    2abc:	4d524f4e 	ldclmi	15, cr4, [r2, #-312]	; 0xfffffec8
    2ac0:	4e494d5f 	mcrmi	13, 2, r4, cr9, cr15, {2}
    2ac4:	28205f5f 	stmdacs	r0!, {r0, r1, r2, r3, r4, r6, r8, r9, sl, fp, ip, lr}
    2ac8:	756f6428 	strbvc	r6, [pc, #-1064]!	; 26a8 <_Min_Stack_Size+0x22a8>
    2acc:	29656c62 	stmdbcs	r5!, {r1, r5, r6, sl, fp, sp, lr}^
    2ad0:	34392e34 	ldrtcc	r2, [r9], #-3636	; 0xfffff1cc
    2ad4:	36353630 			; <UNDEFINED> instruction: 0x36353630
    2ad8:	34383534 	ldrtcc	r3, [r8], #-1332	; 0xfffffacc
    2adc:	36343231 			; <UNDEFINED> instruction: 0x36343231
    2ae0:	2d653435 	cfstrdcs	mvd3, [r5, #-212]!	; 0xffffff2c
    2ae4:	4c343233 	lfmmi	f3, 4, [r4], #-204	; 0xffffff34
    2ae8:	5f5f0029 	svcpl	0x005f0029
    2aec:	544e4955 	strbpl	r4, [lr], #-2389	; 0xfffff6ab
    2af0:	545f3436 	ldrbpl	r3, [pc], #-1078	; 2af8 <_Min_Stack_Size+0x26f8>
    2af4:	5f455059 	svcpl	0x00455059
    2af8:	6f6c205f 	svcvs	0x006c205f
    2afc:	6c20676e 	stcvs	7, cr6, [r0], #-440	; 0xfffffe48
    2b00:	20676e6f 	rsbcs	r6, r7, pc, ror #28
    2b04:	69736e75 	ldmdbvs	r3!, {r0, r2, r4, r5, r6, r9, sl, fp, sp, lr}^
    2b08:	64656e67 	strbtvs	r6, [r5], #-3687	; 0xfffff199
    2b0c:	746e6920 	strbtvc	r6, [lr], #-2336	; 0xfffff6e0
    2b10:	465f5f00 	ldrbmi	r5, [pc], -r0, lsl #30
    2b14:	3233544c 	eorscc	r5, r3, #76, 8	; 0x4c000000
    2b18:	41485f58 	cmpmi	r8, r8, asr pc
    2b1c:	55515f53 	ldrbpl	r5, [r1, #-3923]	; 0xfffff0ad
    2b20:	5f544549 	svcpl	0x00544549
    2b24:	5f4e414e 	svcpl	0x004e414e
    2b28:	0031205f 	eorseq	r2, r1, pc, asr r0
    2b2c:	42445f5f 	submi	r5, r4, #380	; 0x17c
    2b30:	414d5f4c 	cmpmi	sp, ip, asr #30
    2b34:	30315f58 	eorscc	r5, r1, r8, asr pc
    2b38:	5058455f 	subspl	r4, r8, pc, asr r5
    2b3c:	33205f5f 			; <UNDEFINED> instruction: 0x33205f5f
    2b40:	5f003830 	svcpl	0x00003830
    2b44:	544c465f 	strbpl	r4, [ip], #-1631	; 0xfffff9a1
    2b48:	5f583233 	svcpl	0x00583233
    2b4c:	5f4e494d 	svcpl	0x004e494d
    2b50:	2e32205f 	mrccs	0, 1, r2, cr2, cr15, {2}
    2b54:	30353232 	eorscc	r3, r5, r2, lsr r2
    2b58:	35383337 	ldrcc	r3, [r8, #-823]!	; 0xfffffcc9
    2b5c:	37303538 			; <UNDEFINED> instruction: 0x37303538
    2b60:	34313032 	ldrtcc	r3, [r1], #-50	; 0xffffffce
    2b64:	30332d65 	eorscc	r2, r3, r5, ror #26
    2b68:	32334638 	eorscc	r4, r3, #56, 12	; 0x3800000
    2b6c:	5f5f0078 	svcpl	0x005f0078
    2b70:	5f434347 	svcpl	0x00434347
    2b74:	4d4f5441 	cfstrdmi	mvd5, [pc, #-260]	; 2a78 <_Min_Stack_Size+0x2678>
    2b78:	435f4349 	cmpmi	pc, #603979777	; 0x24000001
    2b7c:	5f524148 	svcpl	0x00524148
    2b80:	4b434f4c 	blmi	10d68b8 <_Min_Stack_Size+0x10d64b8>
    2b84:	4552465f 	ldrbmi	r4, [r2, #-1631]	; 0xfffff9a1
    2b88:	00322045 	eorseq	r2, r2, r5, asr #32
    2b8c:	41545f5f 	cmpmi	r4, pc, asr pc
    2b90:	4942495f 	stmdbmi	r2, {r0, r1, r2, r3, r4, r6, r8, fp, lr}^
    2b94:	205f5f54 	subscs	r5, pc, r4, asr pc	; <UNPREDICTABLE>
    2b98:	5f003436 	svcpl	0x00003436
    2b9c:	5f51515f 	svcpl	0x0051515f
    2ba0:	54494246 	strbpl	r4, [r9], #-582	; 0xfffffdba
    2ba4:	37205f5f 			; <UNDEFINED> instruction: 0x37205f5f
    2ba8:	465f5f00 	ldrbmi	r5, [pc], -r0, lsl #30
    2bac:	3233544c 	eorscc	r5, r3, #76, 8	; 0x4c000000
    2bb0:	41485f58 	cmpmi	r8, r8, asr pc
    2bb4:	4e495f53 	mcrmi	15, 2, r5, cr9, cr3, {2}
    2bb8:	494e4946 	stmdbmi	lr, {r1, r2, r6, r8, fp, lr}^
    2bbc:	5f5f5954 	svcpl	0x005f5954
    2bc0:	5f003120 	svcpl	0x00003120
    2bc4:	4148555f 	cmpmi	r8, pc, asr r5
    2bc8:	4942495f 	stmdbmi	r2, {r0, r1, r2, r3, r4, r6, r8, fp, lr}^
    2bcc:	205f5f54 	subscs	r5, pc, r4, asr pc	; <UNPREDICTABLE>
    2bd0:	4e470038 	mcrmi	0, 2, r0, cr7, cr8, {1}
    2bd4:	31432055 	qdaddcc	r2, r5, r3
    2bd8:	2e372031 	mrccs	0, 1, r2, cr7, cr1, {1}
    2bdc:	20312e33 	eorscs	r2, r1, r3, lsr lr
    2be0:	38313032 	ldmdacc	r1!, {r1, r4, r5, ip, sp}
    2be4:	32323630 	eorscc	r3, r2, #48, 12	; 0x3000000
    2be8:	65722820 	ldrbvs	r2, [r2, #-2080]!	; 0xfffff7e0
    2bec:	7361656c 	cmnvc	r1, #108, 10	; 0x1b000000
    2bf0:	5b202965 	blpl	80d18c <_Min_Stack_Size+0x80cd8c>
    2bf4:	2f4d5241 	svccs	0x004d5241
    2bf8:	65626d65 	strbvs	r6, [r2, #-3429]!	; 0xfffff29b
    2bfc:	64656464 	strbtvs	r6, [r5], #-1124	; 0xfffffb9c
    2c00:	622d372d 	eorvs	r3, sp, #11796480	; 0xb40000
    2c04:	636e6172 	cmnvs	lr, #-2147483620	; 0x8000001c
    2c08:	65722068 	ldrbvs	r2, [r2, #-104]!	; 0xffffff98
    2c0c:	69736976 	ldmdbvs	r3!, {r1, r2, r4, r5, r6, r8, fp, sp, lr}^
    2c10:	32206e6f 	eorcc	r6, r0, #1776	; 0x6f0
    2c14:	30393136 	eorscc	r3, r9, r6, lsr r1
    2c18:	2d205d37 	stccs	13, cr5, [r0, #-220]!	; 0xffffff24
    2c1c:	7570636d 	ldrbvc	r6, [r0, #-877]!	; 0xfffffc93
    2c20:	726f633d 	rsbvc	r6, pc, #-201326592	; 0xf4000000
    2c24:	2d786574 	cfldr64cs	mvdx6, [r8, #-464]!	; 0xfffffe30
    2c28:	2d20336d 	stccs	3, cr3, [r0, #-436]!	; 0xfffffe4c
    2c2c:	6f6c666d 	svcvs	0x006c666d
    2c30:	612d7461 			; <UNDEFINED> instruction: 0x612d7461
    2c34:	733d6962 	teqvc	sp, #1605632	; 0x188000
    2c38:	2074666f 	rsbscs	r6, r4, pc, ror #12
    2c3c:	68746d2d 	ldmdavs	r4!, {r0, r2, r3, r5, r8, sl, fp, sp, lr}^
    2c40:	20626d75 	rsbcs	r6, r2, r5, ror sp
    2c44:	7764672d 	strbvc	r6, [r4, -sp, lsr #14]!
    2c48:	2d667261 	sfmcs	f7, 2, [r6, #-388]!	; 0xfffffe7c
    2c4c:	672d2032 			; <UNDEFINED> instruction: 0x672d2032
    2c50:	4f2d2033 	svcmi	0x002d2033
    2c54:	732d2030 			; <UNDEFINED> instruction: 0x732d2030
    2c58:	673d6474 			; <UNDEFINED> instruction: 0x673d6474
    2c5c:	3131756e 	teqcc	r1, lr, ror #10
    2c60:	66662d20 	strbtvs	r2, [r6], -r0, lsr #26
    2c64:	74636e75 	strbtvc	r6, [r3], #-3701	; 0xfffff18b
    2c68:	2d6e6f69 	stclcs	15, cr6, [lr, #-420]!	; 0xfffffe5c
    2c6c:	74636573 	strbtvc	r6, [r3], #-1395	; 0xfffffa8d
    2c70:	736e6f69 	cmnvc	lr, #420	; 0x1a4
    2c74:	64662d20 	strbtvs	r2, [r6], #-3360	; 0xfffff2e0
    2c78:	2d617461 	cfstrdcs	mvd7, [r1, #-388]!	; 0xfffffe7c
    2c7c:	74636573 	strbtvc	r6, [r3], #-1395	; 0xfffffa8d
    2c80:	736e6f69 	cmnvc	lr, #420	; 0x1a4
    2c84:	73662d20 	cmnvc	r6, #32, 26	; 0x800
    2c88:	6b636174 	blvs	18db260 <_Min_Stack_Size+0x18dae60>
    2c8c:	6173752d 	cmnvs	r3, sp, lsr #10
    2c90:	5f006567 	svcpl	0x00006567
    2c94:	544c465f 	strbpl	r4, [ip], #-1631	; 0xfffff9a1
    2c98:	4e494d5f 	mcrmi	13, 2, r4, cr9, cr15, {2}
    2c9c:	5058455f 	subspl	r4, r8, pc, asr r5
    2ca0:	28205f5f 	stmdacs	r0!, {r0, r1, r2, r3, r4, r6, r8, r9, sl, fp, ip, lr}
    2ca4:	3532312d 	ldrcc	r3, [r2, #-301]!	; 0xfffffed3
    2ca8:	5f5f0029 	svcpl	0x005f0029
    2cac:	31434544 	cmpcc	r3, r4, asr #10
    2cb0:	4d5f3832 	ldclmi	8, cr3, [pc, #-200]	; 2bf0 <_Min_Stack_Size+0x27f0>
    2cb4:	5f5f5841 	svcpl	0x005f5841
    2cb8:	392e3920 	stmdbcc	lr!, {r5, r8, fp, ip, sp}
    2cbc:	39393939 	ldmdbcc	r9!, {r0, r3, r4, r5, r8, fp, ip, sp}
    2cc0:	39393939 	ldmdbcc	r9!, {r0, r3, r4, r5, r8, fp, ip, sp}
    2cc4:	39393939 	ldmdbcc	r9!, {r0, r3, r4, r5, r8, fp, ip, sp}
    2cc8:	39393939 	ldmdbcc	r9!, {r0, r3, r4, r5, r8, fp, ip, sp}
    2ccc:	39393939 	ldmdbcc	r9!, {r0, r3, r4, r5, r8, fp, ip, sp}
    2cd0:	39393939 	ldmdbcc	r9!, {r0, r3, r4, r5, r8, fp, ip, sp}
    2cd4:	39393939 	ldmdbcc	r9!, {r0, r3, r4, r5, r8, fp, ip, sp}
    2cd8:	39393939 	ldmdbcc	r9!, {r0, r3, r4, r5, r8, fp, ip, sp}
    2cdc:	34313645 	ldrtcc	r3, [r1], #-1605	; 0xfffff9bb
    2ce0:	004c4434 	subeq	r4, ip, r4, lsr r4
    2ce4:	45445f5f 	strbmi	r5, [r4, #-3935]	; 0xfffff0a1
    2ce8:	414d4943 	cmpmi	sp, r3, asr #18
    2cec:	49445f4c 	stmdbmi	r4, {r2, r3, r6, r8, r9, sl, fp, ip, lr}^
    2cf0:	205f5f47 	subscs	r5, pc, r7, asr #30
    2cf4:	5f003731 	svcpl	0x00003731
    2cf8:	544e495f 	strbpl	r4, [lr], #-2399	; 0xfffff6a1
    2cfc:	435f3233 	cmpmi	pc, #805306371	; 0x30000003
    2d00:	20296328 	eorcs	r6, r9, r8, lsr #6
    2d04:	23232063 			; <UNDEFINED> instruction: 0x23232063
    2d08:	5f004c20 	svcpl	0x00004c20
    2d0c:	4d52415f 	ldfmie	f4, [r2, #-380]	; 0xfffffe84
    2d10:	3150465f 	cmpcc	r0, pc, asr r6
    2d14:	4f465f36 	svcmi	0x00465f36
    2d18:	54414d52 	strbpl	r4, [r1], #-3410	; 0xfffff2ae
    2d1c:	544c415f 	strbpl	r4, [ip], #-351	; 0xfffffea1
    2d20:	414e5245 	cmpmi	lr, r5, asr #4
    2d24:	45564954 	ldrbmi	r4, [r6, #-2388]	; 0xfffff6ac
    2d28:	4c5f5f00 	mrrcmi	15, 0, r5, pc, cr0	; <UNPREDICTABLE>
    2d2c:	5f4c4244 	svcpl	0x004c4244
    2d30:	5f58414d 	svcpl	0x0058414d
    2d34:	455f3031 	ldrbmi	r3, [pc, #-49]	; 2d0b <_Min_Stack_Size+0x290b>
    2d38:	5f5f5058 	svcpl	0x005f5058
    2d3c:	38303320 	ldmdacc	r0!, {r5, r8, r9, ip, sp}
    2d40:	465f5f00 	ldrbmi	r5, [pc], -r0, lsl #30
    2d44:	3233544c 	eorscc	r5, r3, #76, 8	; 0x4c000000
    2d48:	414d5f58 	cmpmi	sp, r8, asr pc
    2d4c:	30315f58 	eorscc	r5, r1, r8, asr pc
    2d50:	5058455f 	subspl	r4, r8, pc, asr r5
    2d54:	33205f5f 			; <UNDEFINED> instruction: 0x33205f5f
    2d58:	5f003830 	svcpl	0x00003830
    2d5c:	4e49555f 	mcrmi	5, 2, r5, cr9, cr15, {2}
    2d60:	52545054 	subspl	r5, r4, #84	; 0x54
    2d64:	58414d5f 	stmdapl	r1, {r0, r1, r2, r3, r4, r6, r8, sl, fp, lr}^
    2d68:	30205f5f 	eorcc	r5, r0, pc, asr pc
    2d6c:	66666678 			; <UNDEFINED> instruction: 0x66666678
    2d70:	66666666 	strbtvs	r6, [r6], -r6, ror #12
    2d74:	5f005566 	svcpl	0x00005566
    2d78:	4c42445f 	cfstrdmi	mvd4, [r2], {95}	; 0x5f
    2d7c:	5341485f 	movtpl	r4, #6239	; 0x185f
    2d80:	4e45445f 	mcrmi	4, 2, r4, cr5, cr15, {2}
    2d84:	5f4d524f 	svcpl	0x004d524f
    2d88:	0031205f 	eorseq	r2, r1, pc, asr r0
    2d8c:	49545845 	ldmdbmi	r4, {r0, r2, r6, fp, ip, lr}^
    2d90:	4e494c5f 	mcrmi	12, 2, r4, cr9, cr15, {2}
    2d94:	5f003645 	svcpl	0x00003645
    2d98:	544c465f 	strbpl	r4, [ip], #-1631	; 0xfffff9a1
    2d9c:	4d5f3233 	lfmmi	f3, 2, [pc, #-204]	; 2cd8 <_Min_Stack_Size+0x28d8>
    2da0:	315f5841 	cmpcc	pc, r1, asr #16
    2da4:	58455f30 	stmdapl	r5, {r4, r5, r8, r9, sl, fp, ip, lr}^
    2da8:	205f5f50 	subscs	r5, pc, r0, asr pc	; <UNPREDICTABLE>
    2dac:	41003833 	tstmi	r0, r3, lsr r8
    2db0:	5f4f4946 	svcpl	0x004f4946
    2db4:	52435645 	subpl	r5, r3, #72351744	; 0x4500000
    2db8:	415f5f00 	cmpmi	pc, r0, lsl #30
    2dbc:	465f4d52 			; <UNDEFINED> instruction: 0x465f4d52
    2dc0:	55544145 	ldrbpl	r4, [r4, #-325]	; 0xfffffebb
    2dc4:	535f4552 	cmppl	pc, #343932928	; 0x14800000
    2dc8:	31205441 			; <UNDEFINED> instruction: 0x31205441
    2dcc:	4c5f5f00 	mrrcmi	15, 0, r5, pc, cr0	; <UNPREDICTABLE>
    2dd0:	43415246 	movtmi	r5, #4678	; 0x1246
    2dd4:	414d5f54 	cmpmi	sp, r4, asr pc
    2dd8:	205f5f58 	subscs	r5, pc, r8, asr pc	; <UNPREDICTABLE>
    2ddc:	46375830 			; <UNDEFINED> instruction: 0x46375830
    2de0:	46464646 	strbmi	r4, [r6], -r6, asr #12
    2de4:	2d504646 	ldclcs	6, cr4, [r0, #-280]	; 0xfffffee8
    2de8:	524c3133 	subpl	r3, ip, #-1073741812	; 0xc000000c
    2dec:	555f5f00 	ldrbpl	r5, [pc, #-3840]	; 1ef4 <_Min_Stack_Size+0x1af4>
    2df0:	465f4144 	ldrbmi	r4, [pc], -r4, asr #2
    2df4:	5f544942 	svcpl	0x00544942
    2df8:	3233205f 	eorscc	r2, r3, #95	; 0x5f
    2dfc:	495f5f00 	ldmdbmi	pc, {r8, r9, sl, fp, ip, lr}^	; <UNPREDICTABLE>
    2e00:	4c5f544e 	cfldrdmi	mvd5, [pc], {78}	; 0x4e
    2e04:	54534145 	ldrbpl	r4, [r3], #-325	; 0xfffffebb
    2e08:	4d5f3233 	lfmmi	f3, 2, [pc, #-204]	; 2d44 <_Min_Stack_Size+0x2944>
    2e0c:	5f5f5841 	svcpl	0x005f5841
    2e10:	37783020 	ldrbcc	r3, [r8, -r0, lsr #32]!
    2e14:	66666666 	strbtvs	r6, [r6], -r6, ror #12
    2e18:	4c666666 	stclmi	6, cr6, [r6], #-408	; 0xfffffe68
    2e1c:	445f5f00 	ldrbmi	r5, [pc], #-3840	; 2e24 <_Min_Stack_Size+0x2a24>
    2e20:	34364345 	ldrtcc	r4, [r6], #-837	; 0xfffffcbb
    2e24:	4e494d5f 	mcrmi	13, 2, r4, cr9, cr15, {2}
    2e28:	31205f5f 			; <UNDEFINED> instruction: 0x31205f5f
    2e2c:	38332d45 	ldmdacc	r3!, {r0, r2, r6, r8, sl, fp, sp}
    2e30:	00444433 	subeq	r4, r4, r3, lsr r4
    2e34:	4f494641 	svcmi	0x00494641
    2e38:	76282820 	strtvc	r2, [r8], -r0, lsr #16
    2e3c:	74616c6f 	strbtvc	r6, [r1], #-3183	; 0xfffff391
    2e40:	20656c69 	rsbcs	r6, r5, r9, ror #24
    2e44:	4f494641 	svcmi	0x00494641
    2e48:	7079545f 	rsbsvc	r5, r9, pc, asr r4
    2e4c:	202a2065 	eorcs	r2, sl, r5, rrx
    2e50:	49464129 	stmdbmi	r6, {r0, r3, r5, r8, lr}^
    2e54:	41425f4f 	cmpmi	r2, pc, asr #30
    2e58:	415f4553 	cmpmi	pc, r3, asr r5	; <UNPREDICTABLE>
    2e5c:	45524444 	ldrbmi	r4, [r2, #-1092]	; 0xfffffbbc
    2e60:	00295353 	eoreq	r5, r9, r3, asr r3
    2e64:	49555f5f 	ldmdbmi	r5, {r0, r1, r2, r3, r4, r6, r8, r9, sl, fp, ip, lr}^
    2e68:	414d544e 	cmpmi	sp, lr, asr #8
    2e6c:	414d5f58 	cmpmi	sp, r8, asr pc
    2e70:	205f5f58 	subscs	r5, pc, r8, asr pc	; <UNPREDICTABLE>
    2e74:	66667830 			; <UNDEFINED> instruction: 0x66667830
    2e78:	66666666 	strbtvs	r6, [r6], -r6, ror #12
    2e7c:	66666666 	strbtvs	r6, [r6], -r6, ror #12
    2e80:	66666666 	strbtvs	r6, [r6], -r6, ror #12
    2e84:	4c556666 	mrrcmi	6, 6, r6, r5, cr6
    2e88:	5f5f004c 	svcpl	0x005f004c
    2e8c:	5f474953 	svcpl	0x00474953
    2e90:	4d4f5441 	cfstrdmi	mvd5, [pc, #-260]	; 2d94 <_Min_Stack_Size+0x2994>
    2e94:	545f4349 	ldrbpl	r4, [pc], #-841	; 2e9c <_Min_Stack_Size+0x2a9c>
    2e98:	5f455059 	svcpl	0x00455059
    2e9c:	6e69205f 	mcrvs	0, 3, r2, cr9, cr15, {2}
    2ea0:	5f5f0074 	svcpl	0x005f0074
    2ea4:	52464c4c 	subpl	r4, r6, #76, 24	; 0x4c00
    2ea8:	5f544341 	svcpl	0x00544341
    2eac:	5f4e494d 	svcpl	0x004e494d
    2eb0:	2d28205f 	stccs	0, cr2, [r8, #-380]!	; 0xfffffe84
    2eb4:	4c352e30 	ldcmi	14, cr2, [r5], #-192	; 0xffffff40
    2eb8:	302d524c 	eorcc	r5, sp, ip, asr #4
    2ebc:	4c4c352e 	cfstr64mi	mvdx3, [ip], {46}	; 0x2e
    2ec0:	5f002952 	svcpl	0x00002952
    2ec4:	4c4c555f 	cfstr64mi	mvdx5, [ip], {95}	; 0x5f
    2ec8:	43415246 	movtmi	r5, #4678	; 0x1246
    2ecc:	50455f54 	subpl	r5, r5, r4, asr pc
    2ed0:	4f4c4953 	svcmi	0x004c4953
    2ed4:	205f5f4e 	subscs	r5, pc, lr, asr #30
    2ed8:	50317830 	eorspl	r7, r1, r0, lsr r8
    2edc:	5534362d 	ldrpl	r3, [r4, #-1581]!	; 0xfffff9d3
    2ee0:	00524c4c 	subseq	r4, r2, ip, asr #24
    2ee4:	444c5f5f 	strbmi	r5, [ip], #-3935	; 0xfffff0a1
    2ee8:	485f4c42 	ldmdami	pc, {r1, r6, sl, fp, lr}^	; <UNPREDICTABLE>
    2eec:	445f5341 	ldrbmi	r5, [pc], #-833	; 2ef4 <_Min_Stack_Size+0x2af4>
    2ef0:	524f4e45 	subpl	r4, pc, #1104	; 0x450
    2ef4:	205f5f4d 	subscs	r5, pc, sp, asr #30
    2ef8:	5f5f0031 	svcpl	0x005f0031
    2efc:	544e4955 	strbpl	r4, [lr], #-2389	; 0xfffff6ab
    2f00:	41454c5f 	cmpmi	r5, pc, asr ip
    2f04:	36315453 			; <UNDEFINED> instruction: 0x36315453
    2f08:	58414d5f 	stmdapl	r1, {r0, r1, r2, r3, r4, r6, r8, sl, fp, lr}^
    2f0c:	30205f5f 	eorcc	r5, r0, pc, asr pc
    2f10:	66666678 			; <UNDEFINED> instruction: 0x66666678
    2f14:	5f5f0066 	svcpl	0x005f0066
    2f18:	414c4c55 	cmpmi	ip, r5, asr ip
    2f1c:	4d554343 	ldclmi	3, cr4, [r5, #-268]	; 0xfffffef4
    2f20:	5350455f 	cmppl	r0, #398458880	; 0x17c00000
    2f24:	4e4f4c49 	cdpmi	12, 4, cr4, cr15, cr9, {2}
    2f28:	30205f5f 	eorcc	r5, r0, pc, asr pc
    2f2c:	2d503178 	ldfcse	f3, [r0, #-480]	; 0xfffffe20
    2f30:	4c553233 	lfmmi	f3, 2, [r5], {51}	; 0x33
    2f34:	5f004b4c 	svcpl	0x00004b4c
    2f38:	4345445f 	movtmi	r4, #21599	; 0x545f
    2f3c:	4d5f3436 	cfldrdmi	mvd3, [pc, #-216]	; 2e6c <_Min_Stack_Size+0x2a6c>
    2f40:	5f544e41 	svcpl	0x00544e41
    2f44:	5f474944 	svcpl	0x00474944
    2f48:	3631205f 			; <UNDEFINED> instruction: 0x3631205f
    2f4c:	465f5f00 	ldrbmi	r5, [pc], -r0, lsl #30
    2f50:	485f544c 	ldmdami	pc, {r2, r3, r6, sl, ip, lr}^	; <UNPREDICTABLE>
    2f54:	445f5341 	ldrbmi	r5, [pc], #-833	; 2f5c <_Min_Stack_Size+0x2b5c>
    2f58:	524f4e45 	subpl	r4, pc, #1104	; 0x450
    2f5c:	205f5f4d 	subscs	r5, pc, sp, asr #30
    2f60:	5f5f0031 	svcpl	0x005f0031
    2f64:	5f544e49 	svcpl	0x00544e49
    2f68:	54534146 	ldrbpl	r4, [r3], #-326	; 0xfffffeba
    2f6c:	575f3436 	smmlarpl	pc, r6, r4, r3	; <UNPREDICTABLE>
    2f70:	48544449 	ldmdami	r4, {r0, r3, r6, sl, lr}^
    2f74:	36205f5f 	qsaxcc	r5, r0, pc	; <UNPREDICTABLE>
    2f78:	5f5f0034 	svcpl	0x005f0034
    2f7c:	5f4c4244 	svcpl	0x004c4244
    2f80:	49434544 	stmdbmi	r3, {r2, r6, r8, sl, lr}^
    2f84:	5f4c414d 	svcpl	0x004c414d
    2f88:	5f474944 	svcpl	0x00474944
    2f8c:	3731205f 			; <UNDEFINED> instruction: 0x3731205f
    2f90:	54584500 	ldrbpl	r4, [r8], #-1280	; 0xfffffb00
    2f94:	6f765f49 	svcvs	0x00765f49
    2f98:	74506469 	ldrbvc	r6, [r0], #-1129	; 0xfffffb97
    2f9c:	466f5472 			; <UNDEFINED> instruction: 0x466f5472
    2fa0:	74636e75 	strbtvc	r6, [r3], #-3701	; 0xfffff18b
    2fa4:	006e6f69 	rsbeq	r6, lr, r9, ror #30
    2fa8:	49545845 	ldmdbmi	r4, {r0, r2, r6, fp, ip, lr}^
    2fac:	696f765f 	stmdbvs	pc!, {r0, r1, r2, r3, r4, r6, r9, sl, ip, sp, lr}^	; <UNPREDICTABLE>
    2fb0:	696e4964 	stmdbvs	lr!, {r2, r5, r6, r8, fp, lr}^
    2fb4:	6e694c74 	mcrvs	12, 3, r4, cr9, cr4, {3}
    2fb8:	58450065 	stmdapl	r5, {r0, r2, r5, r6}^
    2fbc:	35314954 	ldrcc	r4, [r1, #-2388]!	; 0xfffff6ac
    2fc0:	5152495f 	cmppl	r2, pc, asr r9
    2fc4:	646e6148 	strbtvs	r6, [lr], #-328	; 0xfffffeb8
    2fc8:	0072656c 	rsbseq	r6, r2, ip, ror #10
    2fcc:	4d554e5f 	ldclmi	14, cr4, [r5, #-380]	; 0xfffffe84
    2fd0:	5f524542 	svcpl	0x00524542
    2fd4:	455f464f 	ldrbmi	r4, [pc, #-1615]	; 298d <_Min_Stack_Size+0x258d>
    2fd8:	20495458 	subcs	r5, r9, r8, asr r4
    2fdc:	45003631 	strmi	r3, [r0, #-1585]	; 0xfffff9cf
    2fe0:	30495458 	subcc	r5, r9, r8, asr r4
    2fe4:	5152495f 	cmppl	r2, pc, asr r9
    2fe8:	646e6148 	strbtvs	r6, [lr], #-328	; 0xfffffeb8
    2fec:	0072656c 	rsbseq	r6, r2, ip, ror #10
    2ff0:	49545845 	ldmdbmi	r4, {r0, r2, r6, fp, ip, lr}^
    2ff4:	696f765f 	stmdbvs	pc!, {r0, r1, r2, r3, r4, r6, r9, sl, ip, sp, lr}^	; <UNPREDICTABLE>
    2ff8:	666f5364 	strbtvs	r5, [pc], -r4, ror #6
    2ffc:	72617774 	rsbvc	r7, r1, #116, 14	; 0x1d00000
    3000:	69725465 	ldmdbvs	r2!, {r0, r2, r5, r6, sl, ip, lr}^
    3004:	72656767 	rsbvc	r6, r5, #27000832	; 0x19c0000
    3008:	2f2e2e00 	svccs	0x002e2e00
    300c:	2f637253 	svccs	0x00637253
    3010:	49545845 	ldmdbmi	r4, {r0, r2, r6, fp, ip, lr}^
    3014:	6f72705f 	svcvs	0x0072705f
    3018:	6d617267 	sfmvs	f7, 2, [r1, #-412]!	; 0xfffffe64
    301c:	4500632e 	strmi	r6, [r0, #-814]	; 0xfffffcd2
    3020:	5f495458 	svcpl	0x00495458
    3024:	56495250 			; <UNDEFINED> instruction: 0x56495250
    3028:	5f455441 	svcpl	0x00455441
    302c:	45002048 	strmi	r2, [r0, #-72]	; 0xffffffb8
    3030:	33495458 	movtcc	r5, #37976	; 0x9458
    3034:	5152495f 	cmppl	r2, pc, asr r9
    3038:	646e6148 	strbtvs	r6, [lr], #-328	; 0xfffffeb8
    303c:	0072656c 	rsbseq	r6, r2, ip, ror #10
    3040:	49545845 	ldmdbmi	r4, {r0, r2, r6, fp, ip, lr}^
    3044:	696f765f 	stmdbvs	pc!, {r0, r1, r2, r3, r4, r6, r9, sl, ip, sp, lr}^	; <UNPREDICTABLE>
    3048:	616e4564 	cmnvs	lr, r4, ror #10
    304c:	45656c62 	strbmi	r6, [r5, #-3170]!	; 0xfffff39e
    3050:	00495458 	subeq	r5, r9, r8, asr r4
    3054:	49545845 	ldmdbmi	r4, {r0, r2, r6, fp, ip, lr}^
    3058:	52495f39 	subpl	r5, r9, #57, 30	; 0xe4
    305c:	6e614851 	mcrvs	8, 3, r4, cr1, cr1, {2}
    3060:	72656c64 	rsbvc	r6, r5, #100, 24	; 0x6400
    3064:	54584500 	ldrbpl	r4, [r8], #-1280	; 0xfffffb00
    3068:	41425f49 	cmpmi	r2, r9, asr #30
    306c:	415f4553 	cmpmi	pc, r3, asr r5	; <UNPREDICTABLE>
    3070:	45524444 	ldrbmi	r4, [r2, #-1092]	; 0xfffffbbc
    3074:	30205353 	eorcc	r5, r0, r3, asr r3
    3078:	30303478 	eorscc	r3, r0, r8, ror r4
    307c:	30343031 	eorscc	r3, r4, r1, lsr r0
    3080:	58450030 	stmdapl	r5, {r4, r5}^
    3084:	5f364954 	svcpl	0x00364954
    3088:	48515249 	ldmdami	r1, {r0, r3, r6, r9, ip, lr}^
    308c:	6c646e61 	stclvs	14, cr6, [r4], #-388	; 0xfffffe7c
    3090:	45007265 	strmi	r7, [r0, #-613]	; 0xfffffd9b
    3094:	31495458 	cmpcc	r9, r8, asr r4
    3098:	52495f30 	subpl	r5, r9, #48, 30	; 0xc0
    309c:	6e614851 	mcrvs	8, 3, r4, cr1, cr1, {2}
    30a0:	72656c64 	rsbvc	r6, r5, #100, 24	; 0x6400
    30a4:	54584500 	ldrbpl	r4, [r8], #-1280	; 0xfffffb00
    30a8:	28282049 	stmdacs	r8!, {r0, r3, r6, sp}
    30ac:	49545845 	ldmdbmi	r4, {r0, r2, r6, fp, ip, lr}^
    30b0:	6765725f 			; <UNDEFINED> instruction: 0x6765725f
    30b4:	292a2073 	stmdbcs	sl!, {r0, r1, r4, r5, r6, sp}
    30b8:	49545845 	ldmdbmi	r4, {r0, r2, r6, fp, ip, lr}^
    30bc:	5341425f 	movtpl	r4, #4703	; 0x125f
    30c0:	44415f45 	strbmi	r5, [r1], #-3909	; 0xfffff0bb
    30c4:	53455244 	movtpl	r5, #21060	; 0x5244
    30c8:	63002953 	movwvs	r2, #2387	; 0x953
    30cc:	5f79706f 	svcpl	0x0079706f
    30d0:	4d746553 	cfldr64mi	mvdx6, [r4, #-332]!	; 0xfffffeb4
    30d4:	4f65646f 	svcmi	0x0065646f
    30d8:	51524966 	cmppl	r2, r6, ror #18
    30dc:	54584500 	ldrbpl	r4, [r8], #-1280	; 0xfffffb00
    30e0:	4e495f49 	cdpmi	15, 4, cr5, cr9, cr9, {2}
    30e4:	46524554 			; <UNDEFINED> instruction: 0x46524554
    30e8:	5f454341 	svcpl	0x00454341
    30ec:	45002048 	strmi	r2, [r0, #-72]	; 0xffffffb8
    30f0:	5f495458 	svcpl	0x00495458
    30f4:	73676572 	cmnvc	r7, #478150656	; 0x1c800000
    30f8:	54584500 	ldrbpl	r4, [r8], #-1280	; 0xfffffb00
    30fc:	5f333149 	svcpl	0x00333149
    3100:	48515249 	ldmdami	r1, {r0, r3, r6, r9, ip, lr}^
    3104:	6c646e61 	stclvs	14, cr6, [r4], #-388	; 0xfffffe7c
    3108:	45007265 	strmi	r7, [r0, #-613]	; 0xfffffd9b
    310c:	37495458 	smlsldcc	r5, r9, r8, r4
    3110:	5152495f 	cmppl	r2, pc, asr r9
    3114:	646e6148 	strbtvs	r6, [lr], #-328	; 0xfffffeb8
    3118:	0072656c 	rsbseq	r6, r2, ip, ror #10
    311c:	49545845 	ldmdbmi	r4, {r0, r2, r6, fp, ip, lr}^
    3120:	52495f34 	subpl	r5, r9, #52, 30	; 0xd0
    3124:	6e614851 	mcrvs	8, 3, r4, cr1, cr1, {2}
    3128:	72656c64 	rsbvc	r6, r5, #100, 24	; 0x6400
    312c:	54584500 	ldrbpl	r4, [r8], #-1280	; 0xfffffb00
    3130:	4e4f5f49 	cdpmi	15, 4, cr5, cr15, cr9, {2}
    3134:	4148435f 	cmpmi	r8, pc, asr r3
    3138:	0045474e 	subeq	r4, r5, lr, asr #14
    313c:	5f727470 	svcpl	0x00727470
    3140:	46525349 	ldrbmi	r5, [r2], -r9, asr #6
    3144:	00636e75 	rsbeq	r6, r3, r5, ror lr
    3148:	49545845 	ldmdbmi	r4, {r0, r2, r6, fp, ip, lr}^
    314c:	52495f31 	subpl	r5, r9, #49, 30	; 0xc4
    3150:	6e614851 	mcrvs	8, 3, r4, cr1, cr1, {2}
    3154:	72656c64 	rsbvc	r6, r5, #100, 24	; 0x6400
    3158:	54584500 	ldrbpl	r4, [r8], #-1280	; 0xfffffb00
    315c:	49525f49 	ldmdbmi	r2, {r0, r3, r6, r8, r9, sl, fp, ip, lr}^
    3160:	474e4953 	smlsldmi	r4, lr, r3, r9
    3164:	54584500 	ldrbpl	r4, [r8], #-1280	; 0xfffffb00
    3168:	5f313149 	svcpl	0x00313149
    316c:	48515249 	ldmdami	r1, {r0, r3, r6, r9, ip, lr}^
    3170:	6c646e61 	stclvs	14, cr6, [r4], #-388	; 0xfffffe7c
    3174:	45007265 	strmi	r7, [r0, #-613]	; 0xfffffd9b
    3178:	5f495458 	svcpl	0x00495458
    317c:	464e4f43 	strbmi	r4, [lr], -r3, asr #30
    3180:	485f4749 	ldmdami	pc, {r0, r3, r6, r8, r9, sl, lr}^	; <UNPREDICTABLE>
    3184:	58450020 	stmdapl	r5, {r5}^
    3188:	765f4954 			; <UNDEFINED> instruction: 0x765f4954
    318c:	5364696f 	cmnpl	r4, #1818624	; 0x1bc000
    3190:	61437465 	cmpvs	r3, r5, ror #8
    3194:	61426c6c 	cmpvs	r2, ip, ror #24
    3198:	43466b63 	movtmi	r6, #27491	; 0x6b63
    319c:	5452004e 	ldrbpl	r0, [r2], #-78	; 0xffffffb2
    31a0:	45005253 	strmi	r5, [r0, #-595]	; 0xfffffdad
    31a4:	31495458 	cmpcc	r9, r8, asr r4
    31a8:	52495f34 	subpl	r5, r9, #52, 30	; 0xd0
    31ac:	6e614851 	mcrvs	8, 3, r4, cr1, cr1, {2}
    31b0:	72656c64 	rsbvc	r6, r5, #100, 24	; 0x6400
    31b4:	54584500 	ldrbpl	r4, [r8], #-1280	; 0xfffffb00
    31b8:	74505f49 	ldrbvc	r5, [r0], #-3913	; 0xfffff0b7
    31bc:	6e754672 	mrcvs	6, 3, r4, cr5, cr2, {3}
    31c0:	6f697463 	svcvs	0x00697463
    31c4:	6f63006e 	svcvs	0x0063006e
    31c8:	4c5f7970 	mrrcmi	9, 7, r7, pc, cr0	; <UNPREDICTABLE>
    31cc:	49656e69 	stmdbmi	r5!, {r0, r3, r5, r6, r9, sl, fp, sp, lr}^
    31d0:	57530044 	ldrbpl	r0, [r3, -r4, asr #32]
    31d4:	00524549 	subseq	r4, r2, r9, asr #10
    31d8:	52535446 	subspl	r5, r3, #1174405120	; 0x46000000
    31dc:	54584500 	ldrbpl	r4, [r8], #-1280	; 0xfffffb00
    31e0:	61435f49 	cmpvs	r3, r9, asr #30
    31e4:	72757470 	rsbsvc	r7, r5, #112, 8	; 0x70000000
    31e8:	4d676e69 	stclmi	14, cr6, [r7, #-420]!	; 0xfffffe5c
    31ec:	0065646f 	rsbeq	r6, r5, pc, ror #8
    31f0:	49545845 	ldmdbmi	r4, {r0, r2, r6, fp, ip, lr}^
    31f4:	52495f35 	subpl	r5, r9, #53, 30	; 0xd4
    31f8:	6e614851 	mcrvs	8, 3, r4, cr1, cr1, {2}
    31fc:	72656c64 	rsbvc	r6, r5, #100, 24	; 0x6400
    3200:	54584500 	ldrbpl	r4, [r8], #-1280	; 0xfffffb00
    3204:	495f3249 	ldmdbmi	pc, {r0, r3, r6, r9, ip, sp}^	; <UNPREDICTABLE>
    3208:	61485152 	cmpvs	r8, r2, asr r1
    320c:	656c646e 	strbvs	r6, [ip, #-1134]!	; 0xfffffb92
    3210:	58450072 	stmdapl	r5, {r1, r4, r5, r6}^
    3214:	765f4954 			; <UNDEFINED> instruction: 0x765f4954
    3218:	4464696f 	strbtmi	r6, [r4], #-2415	; 0xfffff691
    321c:	62617369 	rsbvs	r7, r1, #-1543503871	; 0xa4000001
    3220:	5845656c 	stmdapl	r5, {r2, r3, r5, r6, r8, sl, sp, lr}^
    3224:	45004954 	strmi	r4, [r0, #-2388]	; 0xfffff6ac
    3228:	5f495458 	svcpl	0x00495458
    322c:	64696f76 	strbtvs	r6, [r9], #-3958	; 0xfffff08a
    3230:	6e616843 	cdpvs	8, 6, cr6, cr1, cr3, {2}
    3234:	694c6567 	stmdbvs	ip, {r0, r1, r2, r5, r6, r8, sl, sp, lr}^
    3238:	7254656e 	subsvc	r6, r4, #461373440	; 0x1b800000
    323c:	65676769 	strbvs	r6, [r7, #-1897]!	; 0xfffff897
    3240:	58450072 	stmdapl	r5, {r1, r4, r5, r6}^
    3244:	5f384954 	svcpl	0x00384954
    3248:	48515249 	ldmdami	r1, {r0, r3, r6, r9, ip, lr}^
    324c:	6c646e61 	stclvs	14, cr6, [r4], #-388	; 0xfffffe7c
    3250:	45007265 	strmi	r7, [r0, #-613]	; 0xfffffd9b
    3254:	31495458 	cmpcc	r9, r8, asr r4
    3258:	52495f32 	subpl	r5, r9, #50, 30	; 0xc8
    325c:	6e614851 	mcrvs	8, 3, r4, cr1, cr1, {2}
    3260:	72656c64 	rsbvc	r6, r5, #100, 24	; 0x6400
    3264:	54584500 	ldrbpl	r4, [r8], #-1280	; 0xfffffb00
    3268:	41465f49 	cmpmi	r6, r9, asr #30
    326c:	4e494c4c 	cdpmi	12, 4, cr4, cr9, cr12, {2}
    3270:	50470047 	subpl	r0, r7, r7, asr #32
    3274:	505f4f49 	subspl	r4, pc, r9, asr #30
    3278:	41564952 	cmpmi	r6, r2, asr r9
    327c:	485f4554 	ldmdami	pc, {r2, r4, r6, r8, sl, lr}^	; <UNPREDICTABLE>
    3280:	50470020 	subpl	r0, r7, r0, lsr #32
    3284:	525f4f49 	subspl	r4, pc, #292	; 0x124
    3288:	5f736765 	svcpl	0x00736765
    328c:	53420074 	movtpl	r0, #8308	; 0x2074
    3290:	43005252 	movwmi	r5, #594	; 0x252
    3294:	5f79706f 	svcpl	0x0079706f
    3298:	61563875 	cmpvs	r6, r5, ror r8
    329c:	0065756c 	rsbeq	r7, r5, ip, ror #10
    32a0:	4f495047 	svcmi	0x00495047
    32a4:	696f765f 	stmdbvs	pc!, {r0, r1, r2, r3, r4, r6, r9, sl, ip, sp, lr}^	; <UNPREDICTABLE>
    32a8:	74655364 	strbtvc	r5, [r5], #-868	; 0xfffffc9c
    32ac:	74726f50 	ldrbtvc	r6, [r2], #-3920	; 0xfffff0b0
    32b0:	756c6156 	strbvc	r6, [ip, #-342]!	; 0xfffffeaa
    32b4:	50470065 	subpl	r0, r7, r5, rrx
    32b8:	755f4f49 	ldrbvc	r4, [pc, #-3913]	; 2377 <_Min_Stack_Size+0x1f77>
    32bc:	74654738 	strbtvc	r4, [r5], #-1848	; 0xfffff8c8
    32c0:	566e6950 			; <UNDEFINED> instruction: 0x566e6950
    32c4:	65756c61 	ldrbvs	r6, [r5, #-3169]!	; 0xfffff39f
    32c8:	49504700 	ldmdbmi	r0, {r8, r9, sl, lr}^
    32cc:	554f5f4f 	strbpl	r5, [pc, #-3919]	; 2385 <_Min_Stack_Size+0x1f85>
    32d0:	54555054 	ldrbpl	r5, [r5], #-84	; 0xffffffac
    32d4:	4d30355f 	cfldr32mi	mvfx3, [r0, #-380]!	; 0xfffffe84
    32d8:	415f5a48 	cmpmi	pc, r8, asr #20
    32dc:	504f5f46 	subpl	r5, pc, r6, asr #30
    32e0:	445f4e45 	ldrbmi	r4, [pc], #-3653	; 32e8 <_Min_Stack_Size+0x2ee8>
    32e4:	4e494152 	mcrmi	1, 2, r4, cr9, cr2, {2}
    32e8:	31623020 	cmncc	r2, r0, lsr #32
    32ec:	00313131 	eorseq	r3, r1, r1, lsr r1
    32f0:	79706f43 	ldmdbvc	r0!, {r0, r1, r6, r8, r9, sl, fp, sp, lr}^
    32f4:	4d38755f 	cfldr32mi	mvfx7, [r8, #-380]!	; 0xfffffe84
    32f8:	0065646f 	rsbeq	r6, r5, pc, ror #8
    32fc:	4f495047 	svcmi	0x00495047
    3300:	54554f5f 	ldrbpl	r4, [r5], #-3935	; 0xfffff0a1
    3304:	5f545550 	svcpl	0x00545550
    3308:	5a484d32 	bpl	12167d8 <_Min_Stack_Size+0x12163d8>
    330c:	5f46415f 	svcpl	0x0046415f
    3310:	48535550 	ldmdami	r3, {r4, r6, r8, sl, ip, lr}^
    3314:	4c55505f 	mrrcmi	0, 5, r5, r5, cr15	; <UNPREDICTABLE>
    3318:	6230204c 	eorsvs	r2, r0, #76	; 0x4c
    331c:	30313031 	eorscc	r3, r1, r1, lsr r0
    3320:	434f4c00 	movtmi	r4, #64512	; 0xfc00
    3324:	3233755f 	eorscc	r7, r3, #398458880	; 0x17c00000
    3328:	65646f4d 	strbvs	r6, [r4, #-3917]!	; 0xfffff0b3
    332c:	49504700 	ldmdbmi	r0, {r8, r9, sl, lr}^
    3330:	554f5f4f 	strbpl	r5, [pc, #-3919]	; 23e9 <_Min_Stack_Size+0x1fe9>
    3334:	54555054 	ldrbpl	r5, [r5], #-84	; 0xffffffac
    3338:	4d30315f 	ldfmis	f3, [r0, #-380]!	; 0xfffffe84
    333c:	505f5a48 	subspl	r5, pc, r8, asr #20
    3340:	5f485355 	svcpl	0x00485355
    3344:	4c4c5550 	cfstr64mi	mvdx5, [ip], {80}	; 0x50
    3348:	30623020 	rsbcc	r3, r2, r0, lsr #32
    334c:	00313030 	eorseq	r3, r1, r0, lsr r0
    3350:	4f495047 	svcmi	0x00495047
    3354:	54554f5f 	ldrbpl	r4, [r5], #-3935	; 0xfffff0a1
    3358:	5f545550 	svcpl	0x00545550
    335c:	484d3035 	stmdami	sp, {r0, r2, r4, r5, ip, sp}^
    3360:	55505f5a 	ldrbpl	r5, [r0, #-3930]	; 0xfffff0a6
    3364:	505f4853 	subspl	r4, pc, r3, asr r8	; <UNPREDICTABLE>
    3368:	204c4c55 	subcs	r4, ip, r5, asr ip
    336c:	30306230 	eorscc	r6, r0, r0, lsr r2
    3370:	43003131 	movwmi	r3, #305	; 0x131
    3374:	5f79706f 	svcpl	0x0079706f
    3378:	65646f4d 	strbvs	r6, [r4, #-3917]!	; 0xfffff0b3
    337c:	49504700 	ldmdbmi	r0, {r8, r9, sl, lr}^
    3380:	425f424f 	subsmi	r4, pc, #-268435452	; 0xf0000004
    3384:	5f455341 	svcpl	0x00455341
    3388:	52444441 	subpl	r4, r4, #1090519040	; 0x41000000
    338c:	20535345 	subscs	r5, r3, r5, asr #6
    3390:	30347830 	eorscc	r7, r4, r0, lsr r8
    3394:	43303130 	teqmi	r0, #48, 2
    3398:	50003030 	andpl	r3, r0, r0, lsr r0
    339c:	30314e49 	eorscc	r4, r1, r9, asr #28
    33a0:	4e495000 	cdpmi	0, 4, cr5, cr9, cr0, {0}
    33a4:	50003131 	andpl	r3, r0, r1, lsr r1
    33a8:	32314e49 	eorscc	r4, r1, #1168	; 0x490
    33ac:	4e495000 	cdpmi	0, 4, cr5, cr9, cr0, {0}
    33b0:	50003331 	andpl	r3, r0, r1, lsr r3
    33b4:	34314e49 	ldrtcc	r4, [r1], #-3657	; 0xfffff1b7
    33b8:	4e495000 	cdpmi	0, 4, cr5, cr9, cr0, {0}
    33bc:	4c003531 	cfstr32mi	mvfx3, [r0], {49}	; 0x31
    33c0:	755f434f 	ldrbvc	r4, [pc, #-847]	; 3079 <_Min_Stack_Size+0x2c79>
    33c4:	73655238 	cmnvc	r5, #56, 4	; 0x80000003
    33c8:	00746c75 	rsbseq	r6, r4, r5, ror ip
    33cc:	4f495047 	svcmi	0x00495047
    33d0:	696f765f 	stmdbvs	pc!, {r0, r1, r2, r3, r4, r6, r9, sl, ip, sp, lr}^	; <UNPREDICTABLE>
    33d4:	74655364 	strbtvc	r5, [r5], #-868	; 0xfffffc9c
    33d8:	446e6950 	strbtmi	r6, [lr], #-2384	; 0xfffff6b0
    33dc:	63657269 	cmnvs	r5, #-1879048186	; 0x90000006
    33e0:	6e6f6974 			; <UNDEFINED> instruction: 0x6e6f6974
    33e4:	49504700 	ldmdbmi	r0, {r8, r9, sl, lr}^
    33e8:	554f5f4f 	strbpl	r5, [pc, #-3919]	; 24a1 <_Min_Stack_Size+0x20a1>
    33ec:	54555054 	ldrbpl	r5, [r5], #-84	; 0xffffffac
    33f0:	484d325f 	stmdami	sp, {r0, r1, r2, r3, r4, r6, r9, ip, sp}^
    33f4:	55505f5a 	ldrbpl	r5, [r0, #-3930]	; 0xfffff0a6
    33f8:	505f4853 	subspl	r4, pc, r3, asr r8	; <UNPREDICTABLE>
    33fc:	204c4c55 	subcs	r4, ip, r5, asr ip
    3400:	30306230 	eorscc	r6, r0, r0, lsr r2
    3404:	50003031 	andpl	r3, r0, r1, lsr r0
    3408:	00364e49 	eorseq	r4, r6, r9, asr #28
    340c:	4f495047 	svcmi	0x00495047
    3410:	28282041 	stmdacs	r8!, {r0, r6, sp}
    3414:	4f495047 	svcmi	0x00495047
    3418:	6765525f 			; <UNDEFINED> instruction: 0x6765525f
    341c:	29745f73 	ldmdbcs	r4!, {r0, r1, r4, r5, r6, r8, r9, sl, fp, ip, lr}^
    3420:	4f495047 	svcmi	0x00495047
    3424:	41425f41 	cmpmi	r2, r1, asr #30
    3428:	415f4553 	cmpmi	pc, r3, asr r5	; <UNPREDICTABLE>
    342c:	45524444 	ldrbmi	r4, [r2, #-1092]	; 0xfffffbbc
    3430:	00295353 	eoreq	r5, r9, r3, asr r3
    3434:	4f495047 	svcmi	0x00495047
    3438:	544e495f 	strbpl	r4, [lr], #-2399	; 0xfffff6a1
    343c:	41465245 	cmpmi	r6, r5, asr #4
    3440:	485f4543 	ldmdami	pc, {r0, r1, r6, r8, sl, lr}^	; <UNPREDICTABLE>
    3444:	50470020 	subpl	r0, r7, r0, lsr #32
    3448:	4f5f4f49 	svcmi	0x005f4f49
    344c:	55505455 	ldrbpl	r5, [r0, #-1109]	; 0xfffffbab
    3450:	30315f54 	eorscc	r5, r1, r4, asr pc
    3454:	5f5a484d 	svcpl	0x005a484d
    3458:	505f4641 	subspl	r4, pc, r1, asr #12
    345c:	5f485355 	svcpl	0x00485355
    3460:	4c4c5550 	cfstr64mi	mvdx5, [ip], {80}	; 0x50
    3464:	31623020 	cmncc	r2, r0, lsr #32
    3468:	00313030 	eorseq	r3, r1, r0, lsr r0
    346c:	4f495047 	svcmi	0x00495047
    3470:	504e495f 	subpl	r4, lr, pc, asr r9
    3474:	415f5455 	cmpmi	pc, r5, asr r4	; <UNPREDICTABLE>
    3478:	4f4c414e 	svcmi	0x004c414e
    347c:	62302047 	eorsvs	r2, r0, #71	; 0x47
    3480:	30303030 	eorscc	r3, r0, r0, lsr r0
    3484:	49504700 	ldmdbmi	r0, {r8, r9, sl, lr}^
    3488:	554f5f4f 	strbpl	r5, [pc, #-3919]	; 2541 <_Min_Stack_Size+0x2141>
    348c:	54555054 	ldrbpl	r5, [r5], #-84	; 0xffffffac
    3490:	4d30315f 	ldfmis	f3, [r0, #-380]!	; 0xfffffe84
    3494:	415f5a48 	cmpmi	pc, r8, asr #20
    3498:	504f5f46 	subpl	r5, pc, r6, asr #30
    349c:	445f4e45 	ldrbmi	r4, [pc], #-3653	; 34a4 <_Min_Stack_Size+0x30a4>
    34a0:	4e494152 	mcrmi	1, 2, r4, cr9, cr2, {2}
    34a4:	31623020 	cmncc	r2, r0, lsr #32
    34a8:	00313031 	eorseq	r3, r1, r1, lsr r0
    34ac:	4f495047 	svcmi	0x00495047
    34b0:	4c55505f 	mrrcmi	0, 5, r5, r5, cr15	; <UNPREDICTABLE>
    34b4:	50555f4c 	subspl	r5, r5, ip, asr #30
    34b8:	49504700 	ldmdbmi	r0, {r8, r9, sl, lr}^
    34bc:	55505f4f 	ldrbpl	r5, [r0, #-3919]	; 0xfffff0b1
    34c0:	445f4c4c 	ldrbmi	r4, [pc], #-3148	; 34c8 <_Min_Stack_Size+0x30c8>
    34c4:	004e574f 	subeq	r5, lr, pc, asr #14
    34c8:	4f495047 	svcmi	0x00495047
    34cc:	28282043 	stmdacs	r8!, {r0, r1, r6, sp}
    34d0:	4f495047 	svcmi	0x00495047
    34d4:	6765525f 			; <UNDEFINED> instruction: 0x6765525f
    34d8:	29745f73 	ldmdbcs	r4!, {r0, r1, r4, r5, r6, r8, r9, sl, fp, ip, lr}^
    34dc:	4f495047 	svcmi	0x00495047
    34e0:	41425f43 	cmpmi	r2, r3, asr #30
    34e4:	415f4553 	cmpmi	pc, r3, asr r5	; <UNPREDICTABLE>
    34e8:	45524444 	ldrbmi	r4, [r2, #-1092]	; 0xfffffbbc
    34ec:	00295353 	eoreq	r5, r9, r3, asr r3
    34f0:	4f495047 	svcmi	0x00495047
    34f4:	54554f5f 	ldrbpl	r4, [r5], #-3935	; 0xfffff0a1
    34f8:	5f545550 	svcpl	0x00545550
    34fc:	5a484d32 	bpl	12169cc <_Min_Stack_Size+0x12165cc>
    3500:	45504f5f 	ldrbmi	r4, [r0, #-3935]	; 0xfffff0a1
    3504:	52445f4e 	subpl	r5, r4, #312	; 0x138
    3508:	204e4941 	subcs	r4, lr, r1, asr #18
    350c:	31306230 	teqcc	r0, r0, lsr r2
    3510:	50003031 	andpl	r3, r0, r1, lsr r0
    3514:	745f6e69 	ldrbvc	r6, [pc], #-3689	; 351c <_Min_Stack_Size+0x311c>
    3518:	4e495000 	cdpmi	0, 4, cr5, cr9, cr0, {0}
    351c:	49500030 	ldmdbmi	r0, {r4, r5}^
    3520:	2e00384e 	cdpcs	8, 0, cr3, cr0, cr14, {2}
    3524:	72532f2e 	subsvc	r2, r3, #46, 30	; 0xb8
    3528:	50472f63 	subpl	r2, r7, r3, ror #30
    352c:	705f4f49 	subsvc	r4, pc, r9, asr #30
    3530:	72676f72 	rsbvc	r6, r7, #456	; 0x1c8
    3534:	632e6d61 			; <UNDEFINED> instruction: 0x632e6d61
    3538:	49504700 	ldmdbmi	r0, {r8, r9, sl, lr}^
    353c:	4e495f4f 	cdpmi	15, 4, cr5, cr9, cr15, {2}
    3540:	5f545550 	svcpl	0x00545550
    3544:	414f4c46 	cmpmi	pc, r6, asr #24
    3548:	474e4954 	smlsldmi	r4, lr, r4, r9
    354c:	30623020 	rsbcc	r3, r2, r0, lsr #32
    3550:	00303031 	eorseq	r3, r0, r1, lsr r0
    3554:	4f495047 	svcmi	0x00495047
    3558:	41425f41 	cmpmi	r2, r1, asr #30
    355c:	415f4553 	cmpmi	pc, r3, asr r5	; <UNPREDICTABLE>
    3560:	45524444 	ldrbmi	r4, [r2, #-1092]	; 0xfffffbbc
    3564:	30205353 	eorcc	r5, r0, r3, asr r3
    3568:	30303478 	eorscc	r3, r0, r8, ror r4
    356c:	30383031 	eorscc	r3, r8, r1, lsr r0
    3570:	50470030 	subpl	r0, r7, r0, lsr r0
    3574:	5f434f49 	svcpl	0x00434f49
    3578:	45534142 	ldrbmi	r4, [r3, #-322]	; 0xfffffebe
    357c:	4444415f 	strbmi	r4, [r4], #-351	; 0xfffffea1
    3580:	53534552 	cmppl	r3, #343932928	; 0x14800000
    3584:	34783020 	ldrbtcc	r3, [r8], #-32	; 0xffffffe0
    3588:	31313030 	teqcc	r1, r0, lsr r0
    358c:	00303030 	eorseq	r3, r0, r0, lsr r0
    3590:	4f495047 	svcmi	0x00495047
    3594:	696f765f 	stmdbvs	pc!, {r0, r1, r2, r3, r4, r6, r9, sl, ip, sp, lr}^	; <UNPREDICTABLE>
    3598:	74655364 	strbtvc	r5, [r5], #-868	; 0xfffffc9c
    359c:	566e6950 			; <UNDEFINED> instruction: 0x566e6950
    35a0:	65756c61 	ldrbvs	r6, [r5, #-3169]!	; 0xfffff39f
    35a4:	49504700 	ldmdbmi	r0, {r8, r9, sl, lr}^
    35a8:	55505f4f 	ldrbpl	r5, [r0, #-3919]	; 0xfffff0b1
    35ac:	50554c4c 	subspl	r4, r5, ip, asr #24
    35b0:	4c55505f 	mrrcmi	0, 5, r5, r5, cr15	; <UNPREDICTABLE>
    35b4:	574f444c 	strbpl	r4, [pc, -ip, asr #8]
    35b8:	6230204e 	eorsvs	r2, r0, #78	; 0x4e
    35bc:	30303031 	eorscc	r3, r0, r1, lsr r0
    35c0:	49504700 	ldmdbmi	r0, {r8, r9, sl, lr}^
    35c4:	38755f4f 	ldmdacc	r5!, {r0, r1, r2, r3, r6, r8, r9, sl, fp, ip, lr}^
    35c8:	6f6f6843 	svcvs	0x006f6843
    35cc:	75506573 	ldrbvc	r6, [r0, #-1395]	; 0xfffffa8d
    35d0:	6f4d6c6c 	svcvs	0x004d6c6c
    35d4:	43006564 	movwmi	r6, #1380	; 0x564
    35d8:	5f79706f 	svcpl	0x0079706f
    35dc:	6f503875 	svcvs	0x00503875
    35e0:	47007472 	smlsdxmi	r0, r2, r4, r7
    35e4:	5f4f4950 	svcpl	0x004f4950
    35e8:	5054554f 	subspl	r5, r4, pc, asr #10
    35ec:	355f5455 	ldrbcc	r5, [pc, #-1109]	; 319f <_Min_Stack_Size+0x2d9f>
    35f0:	5a484d30 	bpl	1216ab8 <_Min_Stack_Size+0x12166b8>
    35f4:	45504f5f 	ldrbmi	r4, [r0, #-3935]	; 0xfffff0a1
    35f8:	52445f4e 	subpl	r5, r4, #312	; 0x138
    35fc:	204e4941 	subcs	r4, lr, r1, asr #18
    3600:	31306230 	teqcc	r0, r0, lsr r2
    3604:	47003131 	smladxmi	r0, r1, r1, r3
    3608:	5f4f4950 	svcpl	0x004f4950
    360c:	4c4c5550 	cfstr64mi	mvdx5, [ip], {80}	; 0x50
    3610:	444f4d5f 	strbmi	r4, [pc], #-3423	; 3618 <_Min_Stack_Size+0x3218>
    3614:	00745f45 	rsbseq	r5, r4, r5, asr #30
    3618:	4f495047 	svcmi	0x00495047
    361c:	4e4f435f 	mcrmi	3, 2, r4, cr15, cr15, {2}
    3620:	5f474946 	svcpl	0x00474946
    3624:	47002048 	strmi	r2, [r0, -r8, asr #32]
    3628:	5f4f4950 	svcpl	0x004f4950
    362c:	5054554f 	subspl	r5, r4, pc, asr #10
    3630:	315f5455 	cmpcc	pc, r5, asr r4	; <UNPREDICTABLE>
    3634:	5a484d30 	bpl	1216afc <_Min_Stack_Size+0x12166fc>
    3638:	45504f5f 	ldrbmi	r4, [r0, #-3935]	; 0xfffff0a1
    363c:	52445f4e 	subpl	r5, r4, #312	; 0x138
    3640:	204e4941 	subcs	r4, lr, r1, asr #18
    3644:	31306230 	teqcc	r0, r0, lsr r2
    3648:	43003130 	movwmi	r3, #304	; 0x130
    364c:	5f79706f 	svcpl	0x0079706f
    3650:	006e6950 	rsbeq	r6, lr, r0, asr r9
    3654:	314e4950 	cmpcc	lr, r0, asr r9
    3658:	4e495000 	cdpmi	0, 4, cr5, cr9, cr0, {0}
    365c:	49500032 	ldmdbmi	r0, {r1, r4, r5}^
    3660:	5000334e 	andpl	r3, r0, lr, asr #6
    3664:	00344e49 	eorseq	r4, r4, r9, asr #28
    3668:	354e4950 	strbcc	r4, [lr, #-2384]	; 0xfffff6b0
    366c:	4e495000 	cdpmi	0, 4, cr5, cr9, cr0, {0}
    3670:	49500037 	ldmdbmi	r0, {r0, r1, r2, r4, r5}^
    3674:	4700394e 	strmi	r3, [r0, -lr, asr #18]
    3678:	5f4f4950 	svcpl	0x004f4950
    367c:	64696f76 	strbtvs	r6, [r9], #-3958	; 0xfffff08a
    3680:	67676f54 			; <UNDEFINED> instruction: 0x67676f54
    3684:	6950656c 	ldmdbvs	r0, {r2, r3, r5, r6, r8, sl, sp, lr}^
    3688:	6c61566e 	stclvs	6, cr5, [r1], #-440	; 0xfffffe48
    368c:	47006575 	smlsdxmi	r0, r5, r5, r6
    3690:	5f4f4950 	svcpl	0x004f4950
    3694:	5054554f 	subspl	r5, r4, pc, asr #10
    3698:	355f5455 	ldrbcc	r5, [pc, #-1109]	; 324b <_Min_Stack_Size+0x2e4b>
    369c:	5a484d30 	bpl	1216b64 <_Min_Stack_Size+0x1216764>
    36a0:	5f46415f 	svcpl	0x0046415f
    36a4:	48535550 	ldmdami	r3, {r4, r6, r8, sl, ip, lr}^
    36a8:	4c55505f 	mrrcmi	0, 5, r5, r5, cr15	; <UNPREDICTABLE>
    36ac:	6230204c 	eorsvs	r2, r0, #76	; 0x4c
    36b0:	31313031 	teqcc	r1, r1, lsr r0
    36b4:	49504700 	ldmdbmi	r0, {r8, r9, sl, lr}^
    36b8:	2820424f 	stmdacs	r0!, {r0, r1, r2, r3, r6, r9, lr}
    36bc:	49504728 	ldmdbmi	r0, {r3, r5, r8, r9, sl, lr}^
    36c0:	65525f4f 	ldrbvs	r5, [r2, #-3919]	; 0xfffff0b1
    36c4:	745f7367 	ldrbvc	r7, [pc], #-871	; 36cc <_Min_Stack_Size+0x32cc>
    36c8:	49504729 	ldmdbmi	r0, {r0, r3, r5, r8, r9, sl, lr}^
    36cc:	425f424f 	subsmi	r4, pc, #-268435452	; 0xf0000004
    36d0:	5f455341 	svcpl	0x00455341
    36d4:	52444441 	subpl	r4, r4, #1090519040	; 0x41000000
    36d8:	29535345 	ldmdbcs	r3, {r0, r2, r6, r8, r9, ip, lr}^
    36dc:	49504700 	ldmdbmi	r0, {r8, r9, sl, lr}^
    36e0:	554f5f4f 	strbpl	r5, [pc, #-3919]	; 2799 <_Min_Stack_Size+0x2399>
    36e4:	54555054 	ldrbpl	r5, [r5], #-84	; 0xffffffac
    36e8:	484d325f 	stmdami	sp, {r0, r1, r2, r3, r4, r6, r9, ip, sp}^
    36ec:	46415f5a 			; <UNDEFINED> instruction: 0x46415f5a
    36f0:	45504f5f 	ldrbmi	r4, [r0, #-3935]	; 0xfffff0a1
    36f4:	52445f4e 	subpl	r5, r4, #312	; 0x138
    36f8:	204e4941 	subcs	r4, lr, r1, asr #18
    36fc:	31316230 	teqcc	r1, r0, lsr r2
    3700:	47003031 	smladxmi	r0, r1, r0, r3
    3704:	5f4f4950 	svcpl	0x004f4950
    3708:	64696f76 	strbtvs	r6, [r9], #-3958	; 0xfffff08a
    370c:	50746553 	rsbspl	r6, r4, r3, asr r5
    3710:	4474726f 	ldrbtmi	r7, [r4], #-623	; 0xfffffd91
    3714:	63657269 	cmnvs	r5, #-1879048186	; 0x90000006
    3718:	6e6f6974 			; <UNDEFINED> instruction: 0x6e6f6974
    371c:	4b434c00 	blmi	10d6724 <_Min_Stack_Size+0x10d6324>
    3720:	6f430052 	svcvs	0x00430052
    3724:	755f7970 	ldrbvc	r7, [pc, #-2416]	; 2dbc <_Min_Stack_Size+0x29bc>
    3728:	746e4938 	strbtvc	r4, [lr], #-2360	; 0xfffff6c8
    372c:	626d754e 	rsbvs	r7, sp, #327155712	; 0x13800000
    3730:	4c007265 	sfmmi	f7, 4, [r0], {101}	; 0x65
    3734:	755f434f 	ldrbvc	r4, [pc, #-847]	; 33ed <_Min_Stack_Size+0x2fed>
    3738:	74634138 	strbtvc	r4, [r3], #-312	; 0xfffffec8
    373c:	42657669 	rsbmi	r7, r5, #110100480	; 0x6900000
    3740:	74537469 	ldrbvc	r7, [r3], #-1129	; 0xfffffb97
    3744:	65757461 	ldrbvs	r7, [r5, #-1121]!	; 0xfffffb9f
    3748:	2e2e0073 	mcrcs	0, 1, r0, cr14, cr3, {3}
    374c:	6372532f 	cmnvs	r2, #-1140850688	; 0xbc000000
    3750:	49564e2f 	ldmdbmi	r6, {r0, r1, r2, r3, r5, r9, sl, fp, lr}^
    3754:	72705f43 	rsbsvc	r5, r0, #268	; 0x10c
    3758:	6172676f 	cmnvs	r2, pc, ror #14
    375c:	00632e6d 	rsbeq	r2, r3, sp, ror #28
    3760:	4349564e 	movtmi	r5, #38478	; 0x964e
    3764:	5250495f 	subspl	r4, r0, #1556480	; 0x17c000
    3768:	76282820 	strtvc	r2, [r8], -r0, lsr #16
    376c:	74616c6f 	strbtvc	r6, [r1], #-3183	; 0xfffff391
    3770:	20656c69 	rsbcs	r6, r5, r9, ror #24
    3774:	2a203875 	bcs	811950 <_Min_Stack_Size+0x811550>
    3778:	564e2829 	strbpl	r2, [lr], -r9, lsr #16
    377c:	425f4349 	subsmi	r4, pc, #603979777	; 0x24000001
    3780:	5f455341 	svcpl	0x00455341
    3784:	52444441 	subpl	r4, r4, #1090519040	; 0x41000000
    3788:	20535345 	subscs	r5, r3, r5, asr #6
    378c:	7830202b 	ldmdavc	r0!, {r0, r1, r3, r5, sp}
    3790:	29303033 	ldmdbcs	r0!, {r0, r1, r4, r5, ip, sp}
    3794:	4e490029 	cdpmi	0, 4, cr0, cr9, cr9, {1}
    3798:	4f4e5f54 	svcmi	0x004e5f54
    379c:	43415f54 	movtmi	r5, #8020	; 0x1f54
    37a0:	45564954 	ldrbmi	r4, [r6, #-2388]	; 0xfffff6ac
    37a4:	42435300 	submi	r5, r3, #0, 6
    37a8:	5249415f 	subpl	r4, r9, #-1073741801	; 0xc0000017
    37ac:	725f5243 	subsvc	r5, pc, #805306372	; 0x30000004
    37b0:	61566765 	cmpvs	r6, r5, ror #14
    37b4:	564e006c 	strbpl	r0, [lr], -ip, rrx
    37b8:	495f4349 	ldmdbmi	pc, {r0, r3, r6, r8, r9, lr}^	; <UNPREDICTABLE>
    37bc:	20524543 	subscs	r4, r2, r3, asr #10
    37c0:	6f762828 	svcvs	0x00762828
    37c4:	6974616c 	ldmdbvs	r4!, {r2, r3, r5, r6, r8, sp, lr}^
    37c8:	7520656c 	strvc	r6, [r0, #-1388]!	; 0xfffffa94
    37cc:	2a203233 	bcs	8100a0 <_Min_Stack_Size+0x80fca0>
    37d0:	564e2829 	strbpl	r2, [lr], -r9, lsr #16
    37d4:	425f4349 	subsmi	r4, pc, #603979777	; 0x24000001
    37d8:	5f455341 	svcpl	0x00455341
    37dc:	52444441 	subpl	r4, r4, #1090519040	; 0x41000000
    37e0:	20535345 	subscs	r5, r3, r5, asr #6
    37e4:	7830202b 	ldmdavc	r0!, {r0, r1, r3, r5, sp}
    37e8:	29303830 	ldmdbcs	r0!, {r4, r5, fp, ip, sp}
    37ec:	6f430029 	svcvs	0x00430029
    37f0:	755f7970 	ldrbvc	r7, [pc, #-2416]	; 2e88 <_Min_Stack_Size+0x2a88>
    37f4:	62755338 	rsbsvs	r5, r5, #56, 6	; 0xe0000000
    37f8:	756f7247 	strbvc	r7, [pc, #-583]!	; 35b9 <_Min_Stack_Size+0x31b9>
    37fc:	69725070 	ldmdbvs	r2!, {r4, r5, r6, ip, lr}^
    3800:	69726f70 	ldmdbvs	r2!, {r4, r5, r6, r8, r9, sl, fp, sp, lr}^
    3804:	61007974 	tstvs	r0, r4, ror r9
    3808:	76697463 	strbtvc	r7, [r9], -r3, ror #8
    380c:	616c4665 	cmnvs	ip, r5, ror #12
    3810:	61745367 	cmnvs	r4, r7, ror #6
    3814:	745f6574 	ldrbvc	r6, [pc], #-1396	; 381c <_Min_Stack_Size+0x341c>
    3818:	42435300 	submi	r5, r3, #0, 6
    381c:	5341425f 	movtpl	r4, #4703	; 0x125f
    3820:	44415f45 	strbmi	r5, [r1], #-3909	; 0xfffff0bb
    3824:	53455244 	movtpl	r5, #21060	; 0x5244
    3828:	78302053 	ldmdavc	r0!, {r0, r1, r4, r6, sp}
    382c:	30303045 	eorscc	r3, r0, r5, asr #32
    3830:	30304445 	eorscc	r4, r0, r5, asr #8
    3834:	42435300 	submi	r5, r3, #0, 6
    3838:	5249415f 	subpl	r4, r9, #-1073741801	; 0xc0000017
    383c:	2a205243 	bcs	818150 <_Min_Stack_Size+0x817d50>
    3840:	6f762828 	svcvs	0x00762828
    3844:	6974616c 	ldmdbvs	r4!, {r2, r3, r5, r6, r8, sp, lr}^
    3848:	7520656c 	strvc	r6, [r0, #-1388]!	; 0xfffffa94
    384c:	2a203233 	bcs	810120 <_Min_Stack_Size+0x80fd20>
    3850:	43532029 	cmpmi	r3, #41	; 0x29
    3854:	41425f42 	cmpmi	r2, r2, asr #30
    3858:	415f4553 	cmpmi	pc, r3, asr r5	; <UNPREDICTABLE>
    385c:	45524444 	ldrbmi	r4, [r2, #-1092]	; 0xfffffbbc
    3860:	2b205353 	blcs	8185b4 <_Min_Stack_Size+0x8181b4>
    3864:	30783020 	rsbscc	r3, r8, r0, lsr #32
    3868:	4e002943 	vmlsmi.f16	s4, s0, s6	; <UNPREDICTABLE>
    386c:	5f434956 	svcpl	0x00434956
    3870:	52495453 	subpl	r5, r9, #1392508928	; 0x53000000
    3874:	76282820 	strtvc	r2, [r8], -r0, lsr #16
    3878:	74616c6f 	strbtvc	r6, [r1], #-3183	; 0xfffff391
    387c:	20656c69 	rsbcs	r6, r5, r9, ror #24
    3880:	20323375 	eorscs	r3, r2, r5, ror r3
    3884:	4e28292a 	vmulmi.f16	s4, s16, s21	; <UNPREDICTABLE>
    3888:	5f434956 	svcpl	0x00434956
    388c:	45534142 	ldrbmi	r4, [r3, #-322]	; 0xfffffebe
    3890:	4444415f 	strbmi	r4, [r4], #-351	; 0xfffffea1
    3894:	53534552 	cmppl	r3, #343932928	; 0x14800000
    3898:	30202b20 	eorcc	r2, r0, r0, lsr #22
    389c:	30304578 	eorscc	r4, r0, r8, ror r5
    38a0:	4e002929 	vmlami.f16	s4, s0, s19	; <UNPREDICTABLE>
    38a4:	5f434956 	svcpl	0x00434956
    38a8:	64696f76 	strbtvs	r6, [r9], #-3958	; 0xfffff08a
    38ac:	61656c43 	cmnvs	r5, r3, asr #24
    38b0:	6e655072 	mcrvs	0, 3, r5, cr5, cr2, {3}
    38b4:	6e696464 	cdpvs	4, 6, cr6, cr9, cr4, {3}
    38b8:	616c4667 	cmnvs	ip, r7, ror #12
    38bc:	45560067 	ldrbmi	r0, [r6, #-103]	; 0xffffff99
    38c0:	454b5443 	strbmi	r5, [fp, #-1091]	; 0xfffffbbd
    38c4:	41545359 	cmpmi	r4, r9, asr r3
    38c8:	75282054 	strvc	r2, [r8, #-84]!	; 0xffffffac
    38cc:	30293233 	eorcc	r3, r9, r3, lsr r2
    38d0:	30414678 	subcc	r4, r1, r8, ror r6
    38d4:	30303035 	eorscc	r3, r0, r5, lsr r0
    38d8:	4f4c0030 	svcmi	0x004c0030
    38dc:	38755f43 	ldmdacc	r5!, {r0, r1, r6, r8, r9, sl, fp, ip, lr}^
    38e0:	6f697250 	svcvs	0x00697250
    38e4:	79746972 	ldmdbvc	r4!, {r1, r4, r5, r6, r8, fp, sp, lr}^
    38e8:	49564e00 	ldmdbmi	r6, {r9, sl, fp, lr}^
    38ec:	41425f43 	cmpmi	r2, r3, asr #30
    38f0:	415f4553 	cmpmi	pc, r3, asr r5	; <UNPREDICTABLE>
    38f4:	45524444 	ldrbmi	r4, [r2, #-1092]	; 0xfffffbbc
    38f8:	30205353 	eorcc	r5, r0, r3, asr r3
    38fc:	30304578 	eorscc	r4, r0, r8, ror r5
    3900:	30314530 	eorscc	r4, r1, r0, lsr r5
    3904:	4e490030 	mcrmi	0, 2, r0, cr9, cr0, {1}
    3908:	43415f54 	movtmi	r5, #8020	; 0x1f54
    390c:	45564954 	ldrbmi	r4, [r6, #-2388]	; 0xfffff6ac
    3910:	49564e00 	ldmdbmi	r6, {r9, sl, fp, lr}^
    3914:	43495f43 	movtmi	r5, #40771	; 0x9f43
    3918:	28205250 	stmdacs	r0!, {r4, r6, r9, ip, lr}
    391c:	6c6f7628 	stclvs	6, cr7, [pc], #-160	; 3884 <_Min_Stack_Size+0x3484>
    3920:	6c697461 	cfstrdvs	mvd7, [r9], #-388	; 0xfffffe7c
    3924:	33752065 	cmncc	r5, #101	; 0x65
    3928:	292a2032 	stmdbcs	sl!, {r1, r4, r5, sp}
    392c:	49564e28 	ldmdbmi	r6, {r3, r5, r9, sl, fp, lr}^
    3930:	41425f43 	cmpmi	r2, r3, asr #30
    3934:	415f4553 	cmpmi	pc, r3, asr r5	; <UNPREDICTABLE>
    3938:	45524444 	ldrbmi	r4, [r2, #-1092]	; 0xfffffbbc
    393c:	2b205353 	blcs	818690 <_Min_Stack_Size+0x818290>
    3940:	31783020 	cmncc	r8, r0, lsr #32
    3944:	29293038 	stmdbcs	r9!, {r3, r4, r5, ip, sp}
    3948:	49564e00 	ldmdbmi	r6, {r9, sl, fp, lr}^
    394c:	41495f43 	cmpmi	r9, r3, asr #30
    3950:	28205242 	stmdacs	r0!, {r1, r6, r9, ip, lr}
    3954:	6c6f7628 	stclvs	6, cr7, [pc], #-160	; 38bc <_Min_Stack_Size+0x34bc>
    3958:	6c697461 	cfstrdvs	mvd7, [r9], #-388	; 0xfffffe7c
    395c:	33752065 	cmncc	r5, #101	; 0x65
    3960:	292a2032 	stmdbcs	sl!, {r1, r4, r5, sp}
    3964:	49564e28 	ldmdbmi	r6, {r3, r5, r9, sl, fp, lr}^
    3968:	41425f43 	cmpmi	r2, r3, asr #30
    396c:	415f4553 	cmpmi	pc, r3, asr r5	; <UNPREDICTABLE>
    3970:	45524444 	ldrbmi	r4, [r2, #-1092]	; 0xfffffbbc
    3974:	2b205353 	blcs	8186c8 <_Min_Stack_Size+0x8182c8>
    3978:	32783020 	rsbscc	r3, r8, #32
    397c:	29293030 	stmdbcs	r9!, {r4, r5, ip, sp}
    3980:	49564e00 	ldmdbmi	r6, {r9, sl, fp, lr}^
    3984:	53495f43 	movtpl	r5, #40771	; 0x9f43
    3988:	28205250 	stmdacs	r0!, {r4, r6, r9, ip, lr}
    398c:	6c6f7628 	stclvs	6, cr7, [pc], #-160	; 38f4 <_Min_Stack_Size+0x34f4>
    3990:	6c697461 	cfstrdvs	mvd7, [r9], #-388	; 0xfffffe7c
    3994:	33752065 	cmncc	r5, #101	; 0x65
    3998:	292a2032 	stmdbcs	sl!, {r1, r4, r5, sp}
    399c:	49564e28 	ldmdbmi	r6, {r3, r5, r9, sl, fp, lr}^
    39a0:	41425f43 	cmpmi	r2, r3, asr #30
    39a4:	415f4553 	cmpmi	pc, r3, asr r5	; <UNPREDICTABLE>
    39a8:	45524444 	ldrbmi	r4, [r2, #-1092]	; 0xfffffbbc
    39ac:	2b205353 	blcs	818700 <_Min_Stack_Size+0x818300>
    39b0:	31783020 	cmncc	r8, r0, lsr #32
    39b4:	29293030 	stmdbcs	r9!, {r4, r5, ip, sp}
    39b8:	49564e00 	ldmdbmi	r6, {r9, sl, fp, lr}^
    39bc:	4f435f43 	svcmi	0x00435f43
    39c0:	4749464e 	strbmi	r4, [r9, -lr, asr #12]
    39c4:	0020485f 	eoreq	r4, r0, pc, asr r8
    39c8:	4349564e 	movtmi	r5, #38478	; 0x964e
    39cc:	4738755f 			; <UNDEFINED> instruction: 0x4738755f
    39d0:	6e497465 	cdpvs	4, 4, cr7, cr9, cr5, {3}
    39d4:	72726574 	rsbsvc	r6, r2, #116, 10	; 0x1d000000
    39d8:	53747075 	cmnpl	r4, #117	; 0x75
    39dc:	75746174 	ldrbvc	r6, [r4, #-372]!	; 0xfffffe8c
    39e0:	6f430073 	svcvs	0x00430073
    39e4:	755f7970 	ldrbvc	r7, [pc, #-2416]	; 307c <_Min_Stack_Size+0x2c7c>
    39e8:	6f724738 	svcvs	0x00724738
    39ec:	72507075 	subsvc	r7, r0, #117	; 0x75
    39f0:	726f7069 	rsbvc	r7, pc, #105	; 0x69
    39f4:	00797469 	rsbseq	r7, r9, r9, ror #8
    39f8:	4349564e 	movtmi	r5, #38478	; 0x964e
    39fc:	696f765f 	stmdbvs	pc!, {r0, r1, r2, r3, r4, r6, r9, sl, ip, sp, lr}^	; <UNPREDICTABLE>
    3a00:	74655364 	strbtvc	r5, [r5], #-868	; 0xfffffc9c
    3a04:	5f515249 	svcpl	0x00515249
    3a08:	6f697250 	svcvs	0x00697250
    3a0c:	79746972 	ldmdbvc	r4!, {r1, r4, r5, r6, r8, fp, sp, lr}^
    3a10:	756f7247 	strbvc	r7, [pc, #-583]!	; 37d1 <_Min_Stack_Size+0x33d1>
    3a14:	676e6970 			; <UNDEFINED> instruction: 0x676e6970
    3a18:	49564e00 	ldmdbmi	r6, {r9, sl, fp, lr}^
    3a1c:	53495f43 	movtpl	r5, #40771	; 0x9f43
    3a20:	28205245 	stmdacs	r0!, {r0, r2, r6, r9, ip, lr}
    3a24:	6c6f7628 	stclvs	6, cr7, [pc], #-160	; 398c <_Min_Stack_Size+0x358c>
    3a28:	6c697461 	cfstrdvs	mvd7, [r9], #-388	; 0xfffffe7c
    3a2c:	33752065 	cmncc	r5, #101	; 0x65
    3a30:	292a2032 	stmdbcs	sl!, {r1, r4, r5, sp}
    3a34:	49564e28 	ldmdbmi	r6, {r3, r5, r9, sl, fp, lr}^
    3a38:	41425f43 	cmpmi	r2, r3, asr #30
    3a3c:	415f4553 	cmpmi	pc, r3, asr r5	; <UNPREDICTABLE>
    3a40:	45524444 	ldrbmi	r4, [r2, #-1092]	; 0xfffffbbc
    3a44:	2b205353 	blcs	818798 <_Min_Stack_Size+0x818398>
    3a48:	30783020 	rsbscc	r3, r8, r0, lsr #32
    3a4c:	29293030 	stmdbcs	r9!, {r4, r5, ip, sp}
    3a50:	49564e00 	ldmdbmi	r6, {r9, sl, fp, lr}^
    3a54:	6f765f43 	svcvs	0x00765f43
    3a58:	6e456469 	cdpvs	4, 4, cr6, cr5, cr9, {3}
    3a5c:	656c6261 	strbvs	r6, [ip, #-609]!	; 0xfffffd9f
    3a60:	65746e49 	ldrbvs	r6, [r4, #-3657]!	; 0xfffff1b7
    3a64:	70757272 	rsbsvc	r7, r5, r2, ror r2
    3a68:	564e0074 			; <UNDEFINED> instruction: 0x564e0074
    3a6c:	495f4349 	ldmdbmi	pc, {r0, r3, r6, r8, r9, lr}^	; <UNPREDICTABLE>
    3a70:	5245544e 	subpl	r5, r5, #1308622848	; 0x4e000000
    3a74:	45434146 	strbmi	r4, [r3, #-326]	; 0xfffffeba
    3a78:	0020485f 	eoreq	r4, r0, pc, asr r8
    3a7c:	4349564e 	movtmi	r5, #38478	; 0x964e
    3a80:	4952505f 	ldmdbmi	r2, {r0, r1, r2, r3, r4, r6, ip, lr}^
    3a84:	45544156 	ldrbmi	r4, [r4, #-342]	; 0xfffffeaa
    3a88:	0020485f 	eoreq	r4, r0, pc, asr r8
    3a8c:	4349564e 	movtmi	r5, #38478	; 0x964e
    3a90:	696f765f 	stmdbvs	pc!, {r0, r1, r2, r3, r4, r6, r9, sl, ip, sp, lr}^	; <UNPREDICTABLE>
    3a94:	74655364 	strbtvc	r5, [r5], #-868	; 0xfffffc9c
    3a98:	646e6550 	strbtvs	r6, [lr], #-1360	; 0xfffffab0
    3a9c:	676e6964 	strbvs	r6, [lr, -r4, ror #18]!
    3aa0:	67616c46 	strbvs	r6, [r1, -r6, asr #24]!
    3aa4:	52535000 	subspl	r5, r3, #0
    3aa8:	52505f43 	subspl	r5, r0, #268	; 0x10c
    3aac:	4c495649 	mcrrmi	6, 4, r5, r9, cr9
    3ab0:	44454745 	strbmi	r4, [r5], #-1861	; 0xfffff8bb
    3ab4:	4343415f 	movtmi	r4, #12639	; 0x315f
    3ab8:	00535345 	subseq	r5, r3, r5, asr #6
    3abc:	43525350 	cmpmi	r2, #80, 6	; 0x40000001
    3ac0:	696f765f 	stmdbvs	pc!, {r0, r1, r2, r3, r4, r6, r9, sl, ip, sp, lr}^	; <UNPREDICTABLE>
    3ac4:	74655364 	strbtvc	r5, [r5], #-868	; 0xfffffc9c
    3ac8:	67617355 			; <UNDEFINED> instruction: 0x67617355
    3acc:	61745365 	cmnvs	r4, r5, ror #6
    3ad0:	6f506b63 	svcvs	0x00506b63
    3ad4:	65746e69 	ldrbvs	r6, [r4, #-3689]!	; 0xfffff197
    3ad8:	6f632872 	svcvs	0x00632872
    3adc:	535f7970 	cmppl	pc, #112, 18	; 0x1c0000
    3ae0:	6b636174 	blvs	18dc0b8 <_Min_Stack_Size+0x18dbcb8>
    3ae4:	6e696f50 	mcrvs	15, 3, r6, cr9, cr0, {2}
    3ae8:	29726574 	ldmdbcs	r2!, {r2, r4, r5, r6, r8, sl, sp, lr}^
    3aec:	52535020 	subspl	r5, r3, #32
    3af0:	6f765f43 	svcvs	0x00765f43
    3af4:	65536469 	ldrbvs	r6, [r3, #-1129]	; 0xfffffb97
    3af8:	726f5774 	rsbvc	r5, pc, #116, 14	; 0x1d00000
    3afc:	676e696b 	strbvs	r6, [lr, -fp, ror #18]!
    3b00:	63617453 	cmnvs	r1, #1392508928	; 0x53000000
    3b04:	2323206b 			; <UNDEFINED> instruction: 0x2323206b
    3b08:	79706f63 	ldmdbvc	r0!, {r0, r1, r5, r6, r8, r9, sl, fp, sp, lr}^
    3b0c:	6174535f 	cmnvs	r4, pc, asr r3
    3b10:	6f506b63 	svcvs	0x00506b63
    3b14:	65746e69 	ldrbvs	r6, [r4, #-3689]!	; 0xfffff197
    3b18:	00292872 	eoreq	r2, r9, r2, ror r8
    3b1c:	43525350 	cmpmi	r2, #80, 6	; 0x40000001
    3b20:	4e4f435f 	mcrmi	3, 2, r4, cr15, cr15, {2}
    3b24:	5f474946 	svcpl	0x00474946
    3b28:	50002048 	andpl	r2, r0, r8, asr #32
    3b2c:	5f435253 	svcpl	0x00435253
    3b30:	56495250 			; <UNDEFINED> instruction: 0x56495250
    3b34:	5f455441 	svcpl	0x00455441
    3b38:	46002048 	strmi	r2, [r0], -r8, asr #32
    3b3c:	4543524f 	strbmi	r5, [r3, #-591]	; 0xfffffdb1
    3b40:	4c4e495f 	mcrrmi	9, 5, r4, lr, cr15	; <UNPREDICTABLE>
    3b44:	20454e49 	subcs	r4, r5, r9, asr #28
    3b48:	74615f5f 	strbtvc	r5, [r1], #-3935	; 0xfffff0a1
    3b4c:	62697274 	rsbvs	r7, r9, #116, 4	; 0x40000007
    3b50:	5f657475 	svcpl	0x00657475
    3b54:	6128285f 			; <UNDEFINED> instruction: 0x6128285f
    3b58:	7961776c 	stmdbvc	r1!, {r2, r3, r5, r6, r8, r9, sl, ip, sp, lr}^
    3b5c:	6e695f73 	mcrvs	15, 3, r5, cr9, cr3, {3}
    3b60:	656e696c 	strbvs	r6, [lr, #-2412]!	; 0xfffff694
    3b64:	69202929 	stmdbvs	r0!, {r0, r3, r5, r8, fp, sp}
    3b68:	6e696c6e 	cdpvs	12, 6, cr6, cr9, cr14, {3}
    3b6c:	6f630065 	svcvs	0x00630065
    3b70:	415f7970 	cmpmi	pc, r0, ror r9	; <UNPREDICTABLE>
    3b74:	73656363 	cmnvc	r5, #-1946157055	; 0x8c000001
    3b78:	76654c73 			; <UNDEFINED> instruction: 0x76654c73
    3b7c:	50006c65 	andpl	r6, r0, r5, ror #24
    3b80:	5f435253 	svcpl	0x00435253
    3b84:	64696f76 	strbtvs	r6, [r9], #-3958	; 0xfffff08a
    3b88:	41746553 	cmnmi	r4, r3, asr r5
    3b8c:	73656363 	cmnvc	r5, #-1946157055	; 0x8c000001
    3b90:	76654c73 			; <UNDEFINED> instruction: 0x76654c73
    3b94:	50006c65 	andpl	r6, r0, r5, ror #24
    3b98:	5f435253 	svcpl	0x00435253
    3b9c:	45544e49 	ldrbmi	r4, [r4, #-3657]	; 0xfffff1b7
    3ba0:	43414652 	movtmi	r4, #5714	; 0x1652
    3ba4:	20485f45 	subcs	r5, r8, r5, asr #30
    3ba8:	2f2e2e00 	svccs	0x002e2e00
    3bac:	2f637253 	svccs	0x00637253
    3bb0:	43525350 	cmpmi	r2, #80, 6	; 0x40000001
    3bb4:	6f72705f 	svcvs	0x0072705f
    3bb8:	6d617267 	sfmvs	f7, 2, [r1, #-412]!	; 0xfffffe64
    3bbc:	5000632e 	andpl	r6, r0, lr, lsr #6
    3bc0:	5f435253 	svcpl	0x00435253
    3bc4:	52504e55 	subspl	r4, r0, #1360	; 0x550
    3bc8:	4c495649 	mcrrmi	6, 4, r5, r9, cr9
    3bcc:	44454745 	strbmi	r4, [r5], #-1861	; 0xfffff8bb
    3bd0:	4343415f 	movtmi	r4, #12639	; 0x315f
    3bd4:	00535345 	subseq	r5, r3, r5, asr #6
    3bd8:	43525350 	cmpmi	r2, #80, 6	; 0x40000001
    3bdc:	6363415f 	cmnvs	r3, #-1073741801	; 0xc0000017
    3be0:	4c737365 	ldclmi	3, cr7, [r3], #-404	; 0xfffffe6c
    3be4:	6c657665 	stclvs	6, cr7, [r5], #-404	; 0xfffffe6c
    3be8:	5200745f 	andpl	r7, r0, #1593835520	; 0x5f000000
    3bec:	765f4343 	ldrbvc	r4, [pc], -r3, asr #6
    3bf0:	4964696f 	stmdbmi	r4!, {r0, r1, r2, r3, r5, r6, r8, fp, sp, lr}^
    3bf4:	5374696e 	cmnpl	r4, #1802240	; 0x1b8000
    3bf8:	6c437379 	mcrrvs	3, 7, r7, r3, cr9
    3bfc:	006b636f 	rsbeq	r6, fp, pc, ror #6
    3c00:	5f434352 	svcpl	0x00434352
    3c04:	20424841 	subcs	r4, r2, r1, asr #16
    3c08:	43520030 	cmpmi	r2, #48	; 0x30
    3c0c:	4c505f43 	mrrcmi	15, 4, r5, r0, cr3
    3c10:	0033204c 	eorseq	r2, r3, ip, asr #32
    3c14:	5f434352 	svcpl	0x00434352
    3c18:	45424841 	strbmi	r4, [r2, #-2113]	; 0xfffff7bf
    3c1c:	2a20524e 	bcs	81855c <_Min_Stack_Size+0x81815c>
    3c20:	33752828 	cmncc	r5, #40, 16	; 0x280000
    3c24:	30292a32 	eorcc	r2, r9, r2, lsr sl
    3c28:	30303478 	eorscc	r3, r0, r8, ror r4
    3c2c:	31303132 	teqcc	r0, r2, lsr r1
    3c30:	43002934 	movwmi	r2, #2356	; 0x934
    3c34:	4f5f5353 	svcmi	0x005f5353
    3c38:	30204646 	eorcc	r4, r0, r6, asr #12
    3c3c:	43435200 	movtmi	r5, #12800	; 0x3200
    3c40:	696f765f 	stmdbvs	pc!, {r0, r1, r2, r3, r4, r6, r9, sl, ip, sp, lr}^	; <UNPREDICTABLE>
    3c44:	616e4564 	cmnvs	lr, r4, ror #10
    3c48:	43656c62 	cmnmi	r5, #25088	; 0x6200
    3c4c:	6b636f6c 	blvs	18dfa04 <_Min_Stack_Size+0x18df604>
    3c50:	43435200 	movtmi	r5, #12800	; 0x3200
    3c54:	4c4c505f 	mcrrmi	0, 5, r5, ip, cr15
    3c58:	5f4e495f 	svcpl	0x004e495f
    3c5c:	20455348 	subcs	r5, r5, r8, asr #6
    3c60:	43520032 	cmpmi	r2, #50	; 0x32
    3c64:	4c435f43 	mcrrmi	15, 4, r5, r3, cr3
    3c68:	5f4b434f 	svcpl	0x004b434f
    3c6c:	52554f53 	subspl	r4, r5, #332	; 0x14c
    3c70:	52204543 	eorpl	r4, r0, #281018368	; 0x10c00000
    3c74:	485f4343 	ldmdami	pc, {r0, r1, r6, r8, r9, lr}^	; <UNPREDICTABLE>
    3c78:	435f4553 	cmpmi	pc, #348127232	; 0x14c00000
    3c7c:	54535952 	ldrbpl	r5, [r3], #-2386	; 0xfffff6ae
    3c80:	2e004c41 	cdpcs	12, 0, cr4, cr0, cr1, {2}
    3c84:	72532f2e 	subsvc	r2, r3, #46, 30	; 0xb8
    3c88:	43522f63 	cmpmi	r2, #396	; 0x18c
    3c8c:	72705f43 	rsbsvc	r5, r0, #268	; 0x10c
    3c90:	6172676f 	cmnvs	r2, pc, ror #14
    3c94:	00632e6d 	rsbeq	r2, r3, sp, ror #28
    3c98:	5f434352 	svcpl	0x00434352
    3c9c:	2a205243 	bcs	8185b0 <_Min_Stack_Size+0x8181b0>
    3ca0:	33752828 	cmncc	r5, #40, 16	; 0x280000
    3ca4:	30292a32 	eorcc	r2, r9, r2, lsr sl
    3ca8:	30303478 	eorscc	r3, r0, r8, ror r4
    3cac:	30303132 	eorscc	r3, r0, r2, lsr r1
    3cb0:	52002930 	andpl	r2, r0, #48, 18	; 0xc0000
    3cb4:	505f4343 	subspl	r4, pc, r3, asr #6
    3cb8:	495f4c4c 	ldmdbmi	pc, {r2, r3, r6, sl, fp, lr}^	; <UNPREDICTABLE>
    3cbc:	53485f4e 	movtpl	r5, #36686	; 0x8f4e
    3cc0:	49445f49 	stmdbmi	r4, {r0, r3, r6, r8, r9, sl, fp, ip, lr}^
    3cc4:	20325f56 	eorscs	r5, r2, r6, asr pc
    3cc8:	6f430030 	svcvs	0x00430030
    3ccc:	755f7970 	ldrbvc	r7, [pc, #-2416]	; 3364 <_Min_Stack_Size+0x2f64>
    3cd0:	65725038 	ldrbvs	r5, [r2, #-56]!	; 0xffffffc8
    3cd4:	5f006449 	svcpl	0x00006449
    3cd8:	5f434352 	svcpl	0x00434352
    3cdc:	56495250 			; <UNDEFINED> instruction: 0x56495250
    3ce0:	5f455441 	svcpl	0x00455441
    3ce4:	52002048 	andpl	r2, r0, #72	; 0x48
    3ce8:	435f4343 	cmpmi	pc, #201326593	; 0xc000001
    3cec:	2a205249 	bcs	818618 <_Min_Stack_Size+0x818218>
    3cf0:	33752828 	cmncc	r5, #40, 16	; 0x280000
    3cf4:	30292a32 	eorcc	r2, r9, r2, lsr sl
    3cf8:	30303478 	eorscc	r3, r0, r8, ror r4
    3cfc:	30303132 	eorscc	r3, r0, r2, lsr r1
    3d00:	52002938 	andpl	r2, r0, #56, 18	; 0xe0000
    3d04:	415f4343 	cmpmi	pc, r3, asr #6
    3d08:	52314250 	eorspl	r4, r1, #80, 4
    3d0c:	20525453 	subscs	r5, r2, r3, asr r4
    3d10:	7528282a 	strvc	r2, [r8, #-2090]!	; 0xfffff7d6
    3d14:	292a3233 	stmdbcs	sl!, {r0, r1, r4, r5, r9, ip, sp}
    3d18:	30347830 	eorscc	r7, r4, r0, lsr r8
    3d1c:	30313230 	eorscc	r3, r1, r0, lsr r2
    3d20:	00293031 	eoreq	r3, r9, r1, lsr r0
    3d24:	4343525f 	movtmi	r5, #12895	; 0x325f
    3d28:	4e4f435f 	mcrmi	3, 2, r4, cr15, cr15, {2}
    3d2c:	5f474946 	svcpl	0x00474946
    3d30:	52002048 	andpl	r2, r0, #72	; 0x48
    3d34:	415f4343 	cmpmi	pc, r3, asr #6
    3d38:	20314250 	eorscs	r4, r1, r0, asr r2
    3d3c:	6f430031 	svcvs	0x00430031
    3d40:	755f7970 	ldrbvc	r7, [pc, #-2416]	; 33d8 <_Min_Stack_Size+0x2fd8>
    3d44:	73754238 	cmnvc	r5, #56, 4	; 0x80000003
    3d48:	52006449 	andpl	r6, r0, #1224736768	; 0x49000000
    3d4c:	415f4343 	cmpmi	pc, r3, asr #6
    3d50:	45314250 	ldrmi	r4, [r1, #-592]!	; 0xfffffdb0
    3d54:	2a20524e 	bcs	818694 <_Min_Stack_Size+0x818294>
    3d58:	33752828 	cmncc	r5, #40, 16	; 0x280000
    3d5c:	30292a32 	eorcc	r2, r9, r2, lsr sl
    3d60:	30303478 	eorscc	r3, r0, r8, ror r4
    3d64:	31303132 	teqcc	r0, r2, lsr r1
    3d68:	52002943 	andpl	r2, r0, #1097728	; 0x10c000
    3d6c:	435f4343 	cmpmi	pc, #201326593	; 0xc000001
    3d70:	2a205253 	bcs	8186c4 <_Min_Stack_Size+0x8182c4>
    3d74:	33752828 	cmncc	r5, #40, 16	; 0x280000
    3d78:	30292a32 	eorcc	r2, r9, r2, lsr sl
    3d7c:	30303478 	eorscc	r3, r0, r8, ror r4
    3d80:	32303132 	eorscc	r3, r0, #-2147483636	; 0x8000000c
    3d84:	52002934 	andpl	r2, r0, #52, 18	; 0xd0000
    3d88:	415f4343 	cmpmi	pc, r3, asr #6
    3d8c:	52324250 	eorspl	r4, r2, #80, 4
    3d90:	20525453 	subscs	r5, r2, r3, asr r4
    3d94:	7528282a 	strvc	r2, [r8, #-2090]!	; 0xfffff7d6
    3d98:	292a3233 	stmdbcs	sl!, {r0, r1, r4, r5, r9, ip, sp}
    3d9c:	30347830 	eorscc	r7, r4, r0, lsr r8
    3da0:	30313230 	eorscc	r3, r1, r0, lsr r2
    3da4:	00294330 	eoreq	r4, r9, r0, lsr r3
    3da8:	4343525f 	movtmi	r5, #12895	; 0x325f
    3dac:	544e495f 	strbpl	r4, [lr], #-2399	; 0xfffff6a1
    3db0:	41465245 	cmpmi	r6, r5, asr #4
    3db4:	485f4543 	ldmdami	pc, {r0, r1, r6, r8, sl, lr}^	; <UNPREDICTABLE>
    3db8:	43520020 	cmpmi	r2, #32
    3dbc:	53485f43 	movtpl	r5, #36675	; 0x8f43
    3dc0:	43525f45 	cmpmi	r2, #276	; 0x114
    3dc4:	52003120 	andpl	r3, r0, #32, 2
    3dc8:	425f4343 	subsmi	r4, pc, #201326593	; 0xc000001
    3dcc:	20524344 	subscs	r4, r2, r4, asr #6
    3dd0:	7528282a 	strvc	r2, [r8, #-2090]!	; 0xfffff7d6
    3dd4:	292a3233 	stmdbcs	sl!, {r0, r1, r4, r5, r9, ip, sp}
    3dd8:	30347830 	eorscc	r7, r4, r0, lsr r8
    3ddc:	30313230 	eorscc	r3, r1, r0, lsr r2
    3de0:	00293032 	eoreq	r3, r9, r2, lsr r0
    3de4:	5f434352 	svcpl	0x00434352
    3de8:	20495348 	subcs	r5, r9, r8, asr #6
    3dec:	43520032 	cmpmi	r2, #50	; 0x32
    3df0:	6f765f43 	svcvs	0x00765f43
    3df4:	69446469 	stmdbvs	r4, {r0, r3, r5, r6, sl, sp, lr}^
    3df8:	6c626173 	stfvse	f6, [r2], #-460	; 0xfffffe34
    3dfc:	6f6c4365 	svcvs	0x006c4365
    3e00:	52006b63 	andpl	r6, r0, #101376	; 0x18c00
    3e04:	415f4343 	cmpmi	pc, r3, asr #6
    3e08:	20324250 	eorscs	r4, r2, r0, asr r2
    3e0c:	43520032 	cmpmi	r2, #50	; 0x32
    3e10:	4c505f43 	mrrcmi	15, 4, r5, r0, cr3
    3e14:	4e495f4c 	cdpmi	15, 4, cr5, cr9, cr12, {2}
    3e18:	4553485f 	ldrbmi	r4, [r3, #-2143]	; 0xfffff7a1
    3e1c:	5649445f 			; <UNDEFINED> instruction: 0x5649445f
    3e20:	3120325f 			; <UNDEFINED> instruction: 0x3120325f
    3e24:	53534300 	cmppl	r3, #0, 6
    3e28:	204e4f5f 	subcs	r4, lr, pc, asr pc
    3e2c:	43520031 	cmpmi	r2, #49	; 0x31
    3e30:	53485f43 	movtpl	r5, #36675	; 0x8f43
    3e34:	52435f45 	subpl	r5, r3, #276	; 0x114
    3e38:	41545359 	cmpmi	r4, r9, asr r3
    3e3c:	0030204c 	eorseq	r2, r0, ip, asr #32
    3e40:	5f434352 	svcpl	0x00434352
    3e44:	52474643 	subpl	r4, r7, #70254592	; 0x4300000
    3e48:	28282a20 	stmdacs	r8!, {r5, r9, fp, sp}
    3e4c:	2a323375 	bcs	c90c28 <_Min_Stack_Size+0xc90828>
    3e50:	34783029 	ldrbtcc	r3, [r8], #-41	; 0xffffffd7
    3e54:	31323030 	teqcc	r2, r0, lsr r0
    3e58:	29343030 	ldmdbcs	r4!, {r4, r5, ip, sp}
    3e5c:	43435200 	movtmi	r5, #12800	; 0x3200
    3e60:	4250415f 	subsmi	r4, r0, #-1073741801	; 0xc0000017
    3e64:	524e4532 	subpl	r4, lr, #209715200	; 0xc800000
    3e68:	28282a20 	stmdacs	r8!, {r5, r9, fp, sp}
    3e6c:	2a323375 	bcs	c90c48 <_Min_Stack_Size+0xc90848>
    3e70:	34783029 	ldrbtcc	r3, [r8], #-41	; 0xffffffd7
    3e74:	31323030 	teqcc	r2, r0, lsr r0
    3e78:	29383130 	ldmdbcs	r8!, {r4, r5, r8, ip, sp}
    3e7c:	4b545300 	blmi	1518a84 <_Min_Stack_Size+0x1518684>
    3e80:	3233755f 	eorscc	r7, r3, #398458880	; 0x17c00000
    3e84:	45746547 	ldrbmi	r6, [r4, #-1351]!	; 0xfffffab9
    3e88:	7370616c 	cmnvc	r0, #108, 2
    3e8c:	69546465 	ldmdbvs	r4, {r0, r2, r5, r6, sl, sp, lr}^
    3e90:	555f656d 	ldrbpl	r6, [pc, #-1389]	; 392b <_Min_Stack_Size+0x352b>
    3e94:	54530053 	ldrbpl	r0, [r3], #-83	; 0xffffffad
    3e98:	38755f4b 	ldmdacc	r5!, {r0, r1, r3, r6, r8, r9, sl, fp, ip, lr}^
    3e9c:	65646f4d 	strbvs	r6, [r4, #-3917]!	; 0xfffff0b3
    3ea0:	6e49664f 	cdpvs	6, 4, cr6, cr9, cr15, {2}
    3ea4:	76726574 			; <UNDEFINED> instruction: 0x76726574
    3ea8:	70006c61 	andvc	r6, r0, r1, ror #24
    3eac:	745f7274 	ldrbvc	r7, [pc], #-628	; 3eb4 <_Min_Stack_Size+0x3ab4>
    3eb0:	6e75466f 	cdpvs	6, 7, cr4, cr5, cr15, {3}
    3eb4:	54430063 	strbpl	r0, [r3], #-99	; 0xffffff9d
    3eb8:	4c004c52 	stcmi	12, cr4, [r0], {82}	; 0x52
    3ebc:	0044414f 	subeq	r4, r4, pc, asr #2
    3ec0:	5f78614d 	svcpl	0x0078614d
    3ec4:	626d754e 	rsbvs	r7, sp, #327155712	; 0x13800000
    3ec8:	435f7265 	cmpmi	pc, #1342177286	; 0x50000006
    3ecc:	746e756f 	strbtvc	r7, [lr], #-1391	; 0xfffffa91
    3ed0:	37363120 	ldrcc	r3, [r6, -r0, lsr #2]!
    3ed4:	31323737 	teqcc	r2, r7, lsr r7
    3ed8:	41430036 	cmpmi	r3, r6, lsr r0
    3edc:	0042494c 	subeq	r4, r2, ip, asr #18
    3ee0:	5f4b5453 	svcpl	0x004b5453
    3ee4:	454e4547 	strbmi	r4, [lr, #-1351]	; 0xfffffab9
    3ee8:	45544152 	ldrbmi	r4, [r4, #-338]	; 0xfffffeae
    3eec:	4d5f315f 	ldfmie	f3, [pc, #-380]	; 3d78 <_Min_Stack_Size+0x3978>
    3ef0:	30312053 	eorscc	r2, r1, r3, asr r0
    3ef4:	53003030 	movwpl	r3, #48	; 0x30
    3ef8:	765f4b54 			; <UNDEFINED> instruction: 0x765f4b54
    3efc:	4964696f 	stmdbmi	r4!, {r0, r1, r2, r3, r5, r6, r8, fp, sp, lr}^
    3f00:	0074696e 	rsbseq	r6, r4, lr, ror #18
    3f04:	79706f43 	ldmdbvc	r0!, {r0, r1, r6, r8, r9, sl, fp, sp, lr}^
    3f08:	3631755f 			; <UNDEFINED> instruction: 0x3631755f
    3f0c:	656d6954 	strbvs	r6, [sp, #-2388]!	; 0xfffff6ac
    3f10:	47005355 	smlsdmi	r0, r5, r3, r5
    3f14:	5f626f6c 	svcpl	0x00626f6c
    3f18:	434b5453 	movtmi	r5, #46163	; 0xb453
    3f1c:	626c6c61 	rsbvs	r6, ip, #24832	; 0x6100
    3f20:	006b6361 	rsbeq	r6, fp, r1, ror #6
    3f24:	5f4b5453 	svcpl	0x004b5453
    3f28:	454e4547 	strbmi	r4, [lr, #-1351]	; 0xfffffab9
    3f2c:	45544152 	ldrbmi	r4, [r4, #-338]	; 0xfffffeae
    3f30:	555f315f 	ldrbpl	r3, [pc, #-351]	; 3dd9 <_Min_Stack_Size+0x39d9>
    3f34:	30312053 	eorscc	r2, r1, r3, asr r0
    3f38:	30303030 	eorscc	r3, r0, r0, lsr r0
    3f3c:	4f4c0030 	svcmi	0x004c0030
    3f40:	33755f43 	cmncc	r5, #268	; 0x10c
    3f44:	6f6c4332 	svcvs	0x006c4332
    3f48:	53006b63 	movwpl	r6, #2915	; 0xb63
    3f4c:	755f4b54 	ldrbvc	r4, [pc, #-2900]	; 3400 <_Min_Stack_Size+0x3000>
    3f50:	65473233 	strbvs	r3, [r7, #-563]	; 0xfffffdcd
    3f54:	616c4574 	smcvs	50260	; 0xc454
    3f58:	64657370 	strbtvs	r7, [r5], #-880	; 0xfffffc90
    3f5c:	6b636954 	blvs	18de4b4 <_Min_Stack_Size+0x18de0b4>
    3f60:	54530073 	ldrbpl	r0, [r3], #-115	; 0xffffff8d
    3f64:	4f435f4b 	svcmi	0x00435f4b
    3f68:	4749464e 	strbmi	r4, [r9, -lr, asr #12]
    3f6c:	0020485f 	eoreq	r4, r0, pc, asr r8
    3f70:	5f434f4c 	svcpl	0x00434f4c
    3f74:	6c463875 	mcrrvs	8, 7, r3, r6, cr5
    3f78:	74536761 	ldrbvc	r6, [r3], #-1889	; 0xfffff89f
    3f7c:	73757461 	cmnvc	r5, #1627389952	; 0x61000000
    3f80:	4b545300 	blmi	1518b88 <_Min_Stack_Size+0x1518788>
    3f84:	4248415f 	submi	r4, r8, #-1073741801	; 0xc0000017
    3f88:	30783020 	rsbscc	r3, r8, r0, lsr #32
    3f8c:	30303030 	eorscc	r3, r0, r0, lsr r0
    3f90:	00343030 	eorseq	r3, r4, r0, lsr r0
    3f94:	616f6c66 	cmnvs	pc, r6, ror #24
    3f98:	2e2e0074 	mcrcs	0, 1, r0, cr14, cr4, {3}
    3f9c:	6372532f 	cmnvs	r2, #-1140850688	; 0xbc000000
    3fa0:	4b54532f 	blmi	1518c64 <_Min_Stack_Size+0x1518864>
    3fa4:	6f72705f 	svcvs	0x0072705f
    3fa8:	6d617267 	sfmvs	f7, 2, [r1, #-412]!	; 0xfffffe64
    3fac:	5300632e 	movwpl	r6, #814	; 0x32e
    3fb0:	545f4b54 	ldrbpl	r4, [pc], #-2900	; 3fb8 <_Min_Stack_Size+0x3bb8>
    3fb4:	55656d69 	strbpl	r6, [r5, #-3433]!	; 0xfffff297
    3fb8:	5f74696e 	svcpl	0x0074696e
    3fbc:	54530074 	ldrbpl	r0, [r3], #-116	; 0xffffff8c
    3fc0:	6f765f4b 	svcvs	0x00765f4b
    3fc4:	65536469 	ldrbvs	r6, [r3, #-1129]	; 0xfffffb97
    3fc8:	746e4974 	strbtvc	r4, [lr], #-2420	; 0xfffff68c
    3fcc:	61767265 	cmnvs	r6, r5, ror #4
    3fd0:	6e69536c 	cdpvs	3, 6, cr5, cr9, cr12, {3}
    3fd4:	5f656c67 	svcpl	0x00656c67
    3fd8:	53005355 	movwpl	r5, #853	; 0x355
    3fdc:	755f4b54 	ldrbvc	r4, [pc, #-2900]	; 3490 <_Min_Stack_Size+0x3090>
    3fe0:	65473233 	strbvs	r3, [r7, #-563]	; 0xfffffdcd
    3fe4:	6d655274 	sfmvs	f5, 2, [r5, #-464]!	; 0xfffffe30
    3fe8:	696e6961 	stmdbvs	lr!, {r0, r5, r6, r8, fp, sp, lr}^
    3fec:	6954676e 	ldmdbvs	r4, {r1, r2, r3, r5, r6, r8, r9, sl, sp, lr}^
    3ff0:	555f656d 	ldrbpl	r6, [pc, #-1389]	; 3a8b <_Min_Stack_Size+0x368b>
    3ff4:	54530053 	ldrbpl	r0, [r3], #-83	; 0xffffffad
    3ff8:	33755f4b 	cmncc	r5, #300	; 0x12c
    3ffc:	74654732 	strbtvc	r4, [r5], #-1842	; 0xfffff8ce
    4000:	616d6552 	cmnvs	sp, r2, asr r5
    4004:	6e696e69 	cdpvs	14, 6, cr6, cr9, cr9, {3}
    4008:	6d695467 	cfstrdvs	mvd5, [r9, #-412]!	; 0xfffffe64
    400c:	534d5f65 	movtpl	r5, #57189	; 0xdf65
    4010:	4b545300 	blmi	1518c18 <_Min_Stack_Size+0x1518818>
    4014:	696f765f 	stmdbvs	pc!, {r0, r1, r2, r3, r4, r6, r9, sl, ip, sp, lr}^	; <UNPREDICTABLE>
    4018:	74655364 	strbtvc	r5, [r5], #-868	; 0xfffffc9c
    401c:	65746e49 	ldrbvs	r6, [r4, #-3657]!	; 0xfffff1b7
    4020:	6c617672 	stclvs	6, cr7, [r1], #-456	; 0xfffffe38
    4024:	69726550 	ldmdbvs	r2!, {r4, r6, r8, sl, sp, lr}^
    4028:	6369646f 	cmnvs	r9, #1862270976	; 0x6f000000
    402c:	0053555f 	subseq	r5, r3, pc, asr r5
    4030:	5f4b5453 	svcpl	0x004b5453
    4034:	64696f76 	strbtvs	r6, [r9], #-3958	; 0xfffff08a
    4038:	42746553 	rsbsmi	r6, r4, #348127232	; 0x14c00000
    403c:	57797375 			; <UNDEFINED> instruction: 0x57797375
    4040:	00746961 	rsbseq	r6, r4, r1, ror #18
    4044:	5f4b5453 	svcpl	0x004b5453
    4048:	49524550 	ldmdbmi	r2, {r4, r6, r8, sl, lr}^
    404c:	495f444f 	ldmdbmi	pc, {r0, r1, r2, r3, r6, sl, lr}^	; <UNPREDICTABLE>
    4050:	5245544e 	subpl	r5, r5, #1308622848	; 0x4e000000
    4054:	204c4156 	subcs	r4, ip, r6, asr r1
    4058:	54530030 	ldrbpl	r0, [r3], #-48	; 0xffffffd0
    405c:	48415f4b 	stmdami	r1, {r0, r1, r3, r6, r8, r9, sl, fp, ip, lr}^
    4060:	564f5f42 	strbpl	r5, [pc], -r2, asr #30
    4064:	385f5245 	ldmdacc	pc, {r0, r2, r6, r9, ip, lr}^	; <UNPREDICTABLE>
    4068:	30783020 	rsbscc	r3, r8, r0, lsr #32
    406c:	30303030 	eorscc	r3, r0, r0, lsr r0
    4070:	00303030 	eorseq	r3, r0, r0, lsr r0
    4074:	5f4b5453 	svcpl	0x004b5453
    4078:	64696f76 	strbtvs	r6, [r9], #-3958	; 0xfffff08a
    407c:	42746553 	rsbsmi	r6, r4, #348127232	; 0x14c00000
    4080:	57797375 			; <UNDEFINED> instruction: 0x57797375
    4084:	5f746961 	svcpl	0x00746961
    4088:	53005355 	movwpl	r5, #853	; 0x355
    408c:	4d5f4b54 	vldrmi	d20, [pc, #-336]	; 3f44 <_Min_Stack_Size+0x3b44>
    4090:	6f430053 	svcvs	0x00430053
    4094:	755f7970 	ldrbvc	r7, [pc, #-2416]	; 372c <_Min_Stack_Size+0x332c>
    4098:	69543233 	ldmdbvs	r4, {r0, r1, r4, r5, r9, ip, sp}^
    409c:	4e736b63 	vsubmi.f64	d22, d3, d19
    40a0:	65626d75 	strbvs	r6, [r2, #-3445]!	; 0xfffff28b
    40a4:	54530072 	ldrbpl	r0, [r3], #-114	; 0xffffff8e
    40a8:	33755f4b 	cmncc	r5, #300	; 0x12c
    40ac:	74654732 	strbtvc	r4, [r5], #-1842	; 0xfffff8ce
    40b0:	70616c45 	rsbvc	r6, r1, r5, asr #24
    40b4:	54646573 	strbtpl	r6, [r4], #-1395	; 0xfffffa8d
    40b8:	5f656d69 	svcpl	0x00656d69
    40bc:	5300534d 	movwpl	r5, #845	; 0x34d
    40c0:	495f4b54 	ldmdbmi	pc, {r2, r4, r6, r8, r9, fp, lr}^	; <UNPREDICTABLE>
    40c4:	5245544e 	subpl	r5, r5, #1308622848	; 0x4e000000
    40c8:	45434146 	strbmi	r4, [r3, #-326]	; 0xfffffeba
    40cc:	0020485f 	eoreq	r4, r0, pc, asr r8
    40d0:	54737953 	ldrbtpl	r7, [r3], #-2387	; 0xfffff6ad
    40d4:	5f6b6369 	svcpl	0x006b6369
    40d8:	646e6148 	strbtvs	r6, [lr], #-328	; 0xfffffeb8
    40dc:	0072656c 	rsbseq	r6, r2, ip, ror #10
    40e0:	204b5453 	subcs	r5, fp, r3, asr r4
    40e4:	6f762828 	svcvs	0x00762828
    40e8:	6974616c 	ldmdbvs	r4!, {r2, r3, r5, r6, r8, sp, lr}^
    40ec:	5320656c 			; <UNDEFINED> instruction: 0x5320656c
    40f0:	745f4b54 	ldrbvc	r4, [pc], #-2900	; 40f8 <_Min_Stack_Size+0x3cf8>
    40f4:	63202a20 			; <UNDEFINED> instruction: 0x63202a20
    40f8:	74736e6f 	ldrbtvc	r6, [r3], #-3695	; 0xfffff191
    40fc:	54532029 	ldrbpl	r2, [r3], #-41	; 0xffffffd7
    4100:	41425f4b 	cmpmi	r2, fp, asr #30
    4104:	415f4553 	cmpmi	pc, r3, asr r5	; <UNPREDICTABLE>
    4108:	45524444 	ldrbmi	r4, [r2, #-1092]	; 0xfffffbbc
    410c:	29205353 	stmdbcs	r0!, {r0, r1, r4, r6, r8, r9, ip, lr}
    4110:	4b545300 	blmi	1518d18 <_Min_Stack_Size+0x1518918>
    4114:	696f765f 	stmdbvs	pc!, {r0, r1, r2, r3, r4, r6, r9, sl, ip, sp, lr}^	; <UNPREDICTABLE>
    4118:	74655364 	strbtvc	r5, [r5], #-868	; 0xfffffc9c
    411c:	65746e49 	ldrbvs	r6, [r4, #-3657]!	; 0xfffff1b7
    4120:	6c617672 	stclvs	6, cr7, [r1], #-456	; 0xfffffe38
    4124:	69726550 	ldmdbvs	r2!, {r4, r6, r8, sl, sp, lr}^
    4128:	6369646f 	cmnvs	r9, #1862270976	; 0x6f000000
    412c:	4b545300 	blmi	1518d34 <_Min_Stack_Size+0x1518934>
    4130:	0053555f 	subseq	r5, r3, pc, asr r5
    4134:	5f4b5453 	svcpl	0x004b5453
    4138:	69740074 	ldmdbvs	r4!, {r2, r4, r5, r6}^
    413c:	6e55656d 	cdpvs	5, 5, cr6, cr5, cr13, {3}
    4140:	43007469 	movwmi	r7, #1129	; 0x469
    4144:	5f79706f 	svcpl	0x0079706f
    4148:	54363175 	ldrtpl	r3, [r6], #-373	; 0xfffffe8b
    414c:	4d656d69 	stclmi	13, cr6, [r5, #-420]!	; 0xfffffe5c
    4150:	54530053 	ldrbpl	r0, [r3], #-83	; 0xffffffad
    4154:	4c435f4b 	mcrrmi	15, 4, r5, r3, cr11
    4158:	4f535f4b 	svcmi	0x00535f4b
    415c:	45435255 	strbmi	r5, [r3, #-597]	; 0xfffffdab
    4160:	4c45535f 	mcrrmi	3, 5, r5, r5, cr15
    4164:	49544345 	ldmdbmi	r4, {r0, r2, r6, r8, r9, lr}^
    4168:	53204e4f 			; <UNDEFINED> instruction: 0x53204e4f
    416c:	415f4b54 	cmpmi	pc, r4, asr fp	; <UNPREDICTABLE>
    4170:	4f5f4248 	svcmi	0x005f4248
    4174:	5f524556 	svcpl	0x00524556
    4178:	74700038 	ldrbtvc	r0, [r0], #-56	; 0xffffffc8
    417c:	79535f72 	ldmdbvc	r3, {r1, r4, r5, r6, r8, r9, sl, fp, ip, lr}^
    4180:	63697473 	cmnvs	r9, #1929379840	; 0x73000000
    4184:	6e75466b 	cdpvs	6, 7, cr4, cr5, cr11, {3}
    4188:	4f4c0063 	svcmi	0x004c0063
    418c:	33755f43 	cmncc	r5, #268	; 0x10c
    4190:	616c4532 	cmnvs	ip, r2, lsr r5
    4194:	64657370 	strbtvs	r7, [r5], #-880	; 0xfffffc90
    4198:	656d6954 	strbvs	r6, [sp, #-2388]!	; 0xfffff6ac
    419c:	4b545300 	blmi	1518da4 <_Min_Stack_Size+0x15189a4>
    41a0:	696f765f 	stmdbvs	pc!, {r0, r1, r2, r3, r4, r6, r9, sl, ip, sp, lr}^	; <UNPREDICTABLE>
    41a4:	74655364 	strbtvc	r5, [r5], #-868	; 0xfffffc9c
    41a8:	65746e49 	ldrbvs	r6, [r4, #-3657]!	; 0xfffff1b7
    41ac:	6c617672 	stclvs	6, cr7, [r1], #-456	; 0xfffffe38
    41b0:	676e6953 			; <UNDEFINED> instruction: 0x676e6953
    41b4:	4d5f656c 	cfldr64mi	mvdx6, [pc, #-432]	; 400c <_Min_Stack_Size+0x3c0c>
    41b8:	54530053 	ldrbpl	r0, [r3], #-83	; 0xffffffad
    41bc:	6f765f4b 	svcvs	0x00765f4b
    41c0:	65536469 	ldrbvs	r6, [r3, #-1129]	; 0xfffffb97
    41c4:	746e4974 	strbtvc	r4, [lr], #-2420	; 0xfffff68c
    41c8:	61767265 	cmnvs	r6, r5, ror #4
    41cc:	6e69536c 	cdpvs	3, 6, cr5, cr9, cr12, {3}
    41d0:	00656c67 	rsbeq	r6, r5, r7, ror #24
    41d4:	5f434f4c 	svcpl	0x00434f4c
    41d8:	52323375 	eorspl	r3, r2, #-738197503	; 0xd4000001
    41dc:	69616d65 	stmdbvs	r1!, {r0, r2, r5, r6, r8, sl, fp, sp, lr}^
    41e0:	676e696e 	strbvs	r6, [lr, -lr, ror #18]!
    41e4:	6b636954 	blvs	18de73c <_Min_Stack_Size+0x18de33c>
    41e8:	54530073 	ldrbpl	r0, [r3], #-115	; 0xffffff8d
    41ec:	52505f4b 	subspl	r5, r0, #300	; 0x12c
    41f0:	54415649 	strbpl	r5, [r1], #-1609	; 0xfffff9b7
    41f4:	20485f45 	subcs	r5, r8, r5, asr #30
    41f8:	4b545300 	blmi	1518e00 <_Min_Stack_Size+0x1518a00>
    41fc:	3233755f 	eorscc	r7, r3, #398458880	; 0x17c00000
    4200:	52746547 	rsbspl	r6, r4, #297795584	; 0x11c00000
    4204:	69616d65 	stmdbvs	r1!, {r0, r2, r5, r6, r8, sl, fp, sp, lr}^
    4208:	676e696e 	strbvs	r6, [lr, -lr, ror #18]!
    420c:	6b636954 	blvs	18de764 <_Min_Stack_Size+0x18de364>
    4210:	48410073 	stmdami	r1, {r0, r1, r4, r5, r6}^
    4214:	4c435f42 	mcrrmi	15, 4, r5, r3, cr2
    4218:	5f4b434f 	svcpl	0x004b434f
    421c:	51455246 	cmppl	r5, r6, asr #4
    4220:	30382820 	eorscc	r2, r8, r0, lsr #16
    4224:	30303030 	eorscc	r3, r0, r0, lsr r0
    4228:	294c5530 	stmdbcs	ip, {r4, r5, r8, sl, ip, lr}^
    422c:	4b545300 	blmi	1518e34 <_Min_Stack_Size+0x1518a34>
    4230:	4e49535f 	mcrmi	3, 2, r5, cr9, cr15, {2}
    4234:	5f454c47 	svcpl	0x00454c47
    4238:	45544e49 	ldrbmi	r4, [r4, #-3657]	; 0xfffff1b7
    423c:	4c415652 	mcrrmi	6, 5, r5, r1, cr2
    4240:	4c003220 	sfmmi	f3, 4, [r0], {32}
    4244:	6c61636f 	stclvs	3, cr6, [r1], #-444	; 0xfffffe44
    4248:	3631755f 			; <UNDEFINED> instruction: 0x3631755f
    424c:	6b636954 	blvs	18de7a4 <_Min_Stack_Size+0x18de3a4>
    4250:	54530073 	ldrbpl	r0, [r3], #-115	; 0xffffff8d
    4254:	6f765f4b 	svcvs	0x00765f4b
    4258:	65536469 	ldrbvs	r6, [r3, #-1129]	; 0xfffffb97
    425c:	746e4974 	strbtvc	r4, [lr], #-2420	; 0xfffff68c
    4260:	61767265 	cmnvs	r6, r5, ror #4
    4264:	7265506c 	rsbvc	r5, r5, #108	; 0x6c
    4268:	69646f69 	stmdbvs	r4!, {r0, r3, r5, r6, r8, r9, sl, fp, sp, lr}^
    426c:	534d5f63 	movtpl	r5, #57187	; 0xdf63
    4270:	636f4c00 	cmnvs	pc, #0, 24
    4274:	755f6c61 	ldrbvc	r6, [pc, #-3169]	; 361b <_Min_Stack_Size+0x321b>
    4278:	6d655438 	cfstrdvs	mvd5, [r5, #-224]!	; 0xffffff20
    427c:	61726f70 	cmnvs	r2, r0, ror pc
    4280:	53007972 	movwpl	r7, #2418	; 0x972
    4284:	425f4b54 	subsmi	r4, pc, #84, 22	; 0x15000
    4288:	5f455341 	svcpl	0x00455341
    428c:	52444441 	subpl	r4, r4, #1090519040	; 0x41000000
    4290:	20535345 	subscs	r5, r3, r5, asr #6
    4294:	30457830 	subcc	r7, r5, r0, lsr r8
    4298:	30453030 	subcc	r3, r5, r0, lsr r0
    429c:	4c003031 	stcmi	0, cr3, [r0], {49}	; 0x31
    42a0:	755f434f 	ldrbvc	r4, [pc, #-847]	; 3f59 <_Min_Stack_Size+0x3b59>
    42a4:	6c453233 	sfmvs	f3, 2, [r5], {51}	; 0x33
    42a8:	65737061 	ldrbvs	r7, [r3, #-97]!	; 0xffffff9f
    42ac:	63695464 	cmnvs	r9, #100, 8	; 0x64000000
    42b0:	5300736b 	movwpl	r7, #875	; 0x36b
    42b4:	765f4b54 			; <UNDEFINED> instruction: 0x765f4b54
    42b8:	5364696f 	cmnpl	r4, #1818624	; 0x1bc000
    42bc:	75427465 	strbvc	r7, [r2, #-1125]	; 0xfffffb9b
    42c0:	61577973 	cmpvs	r7, r3, ror r9
    42c4:	4d5f7469 	cfldrdmi	mvd7, [pc, #-420]	; 4128 <_Min_Stack_Size+0x3d28>
    42c8:	54530053 	ldrbpl	r0, [r3], #-83	; 0xffffffad
    42cc:	33755f4b 	cmncc	r5, #300	; 0x12c
    42d0:	6e6f4332 	mcrvs	3, 3, r4, cr15, cr2, {1}
    42d4:	49676966 	stmdbmi	r7!, {r1, r2, r5, r6, r8, fp, sp, lr}^
    42d8:	7265746e 	rsbvc	r7, r5, #1845493760	; 0x6e000000
    42dc:	006c6176 	rsbeq	r6, ip, r6, ror r1
    42e0:	52415355 	subpl	r5, r1, #1409286145	; 0x54000001
    42e4:	6f765f54 	svcvs	0x00765f54
    42e8:	65476469 	strbvs	r6, [r7, #-1129]	; 0xfffffb97
    42ec:	414d4474 	hvcmi	54340	; 0xd444
    42f0:	7265505f 	rsbvc	r5, r5, #95	; 0x5f
    42f4:	65687069 	strbvs	r7, [r8, #-105]!	; 0xffffff97
    42f8:	416c6172 	smcmi	50706	; 0xc612
    42fc:	65726464 	ldrbvs	r6, [r2, #-1124]!	; 0xfffffb9c
    4300:	55007373 	strpl	r7, [r0, #-883]	; 0xfffffc8d
    4304:	54524153 	ldrbpl	r4, [r2], #-339	; 0xfffffead
    4308:	4345525f 	movtmi	r5, #21087	; 0x525f
    430c:	45564945 	ldrbmi	r4, [r6, #-2373]	; 0xfffff6bb
    4310:	41535500 	cmpmi	r3, r0, lsl #10
    4314:	4f5f5452 	svcmi	0x005f5452
    4318:	61726570 	cmnvs	r2, r0, ror r5
    431c:	6e6f6974 			; <UNDEFINED> instruction: 0x6e6f6974
    4320:	65646f4d 	strbvs	r6, [r4, #-3917]!	; 0xfffff0b3
    4324:	41535500 	cmpmi	r3, r0, lsl #10
    4328:	545f5452 	ldrbpl	r5, [pc], #-1106	; 4330 <_Min_Stack_Size+0x3f30>
    432c:	00657079 	rsbeq	r7, r5, r9, ror r0
    4330:	31755f50 	cmncc	r5, r0, asr pc
    4334:	74614436 	strbtvc	r4, [r1], #-1078	; 0xfffffbca
    4338:	53550061 	cmppl	r5, #97	; 0x61
    433c:	5f545241 	svcpl	0x00545241
    4340:	5f505f30 	svcpl	0x00505f30
    4344:	54535f35 	ldrbpl	r5, [r3], #-3893	; 0xfffff0cb
    4348:	4942504f 	stmdbmi	r2, {r0, r1, r2, r3, r6, ip, lr}^
    434c:	6f630054 	svcvs	0x00630054
    4350:	755f7970 	ldrbvc	r7, [pc, #-2416]	; 39e8 <_Min_Stack_Size+0x35e8>
    4354:	75423631 	strbvc	r3, [r2, #-1585]	; 0xfffff9cf
    4358:	72656666 	rsbvc	r6, r5, #106954752	; 0x6600000
    435c:	657a6953 	ldrbvs	r6, [sl, #-2387]!	; 0xfffff6ad
    4360:	41535500 	cmpmi	r3, r0, lsl #10
    4364:	485f5452 	ldmdami	pc, {r1, r4, r6, sl, ip, lr}^	; <UNPREDICTABLE>
    4368:	6f6c4657 	svcvs	0x006c4657
    436c:	6e6f4377 	mcrvs	3, 3, r4, cr15, cr7, {3}
    4370:	6c6f7274 	sfmvs	f7, 2, [pc], #-464	; 41a8 <_Min_Stack_Size+0x3da8>
    4374:	41535500 	cmpmi	r3, r0, lsl #10
    4378:	4e5f5452 	mrcmi	4, 2, r5, cr15, cr2, {2}
    437c:	65626d75 	strbvs	r6, [r2, #-3445]!	; 0xfffff28b
    4380:	5f500072 	svcpl	0x00500072
    4384:	5f515249 	svcpl	0x00515249
    4388:	6c6c6143 	stfvse	f6, [ip], #-268	; 0xfffffef4
    438c:	6b636142 	blvs	18dc89c <_Min_Stack_Size+0x18dc49c>
    4390:	434f4c00 	movtmi	r4, #64512	; 0xfc00
    4394:	3233755f 	eorscc	r7, r3, #398458880	; 0x17c00000
    4398:	75736552 	ldrbvc	r6, [r3, #-1362]!	; 0xfffffaae
    439c:	5500746c 	strpl	r7, [r0, #-1132]	; 0xfffffb94
    43a0:	54524153 	ldrbpl	r4, [r2], #-339	; 0xfffffead
    43a4:	414d445f 	cmpmi	sp, pc, asr r4
    43a8:	41535500 	cmpmi	r3, r0, lsl #10
    43ac:	495f5452 	ldmdbmi	pc, {r1, r4, r6, sl, ip, lr}^	; <UNPREDICTABLE>
    43b0:	4c656c64 	stclmi	12, cr6, [r5], #-400	; 0xfffffe70
    43b4:	6c657665 	stclvs	6, cr7, [r5], #-404	; 0xfffffe6c
    43b8:	5500745f 	strpl	r7, [r0, #-1119]	; 0xfffffba1
    43bc:	54524153 	ldrbpl	r4, [r2], #-339	; 0xfffffead
    43c0:	4e4f435f 	mcrmi	3, 2, r4, cr15, cr15, {2}
    43c4:	5f474946 	svcpl	0x00474946
    43c8:	55002048 	strpl	r2, [r0, #-72]	; 0xffffffb8
    43cc:	54524153 	ldrbpl	r4, [r2], #-339	; 0xfffffead
    43d0:	696f765f 	stmdbvs	pc!, {r0, r1, r2, r3, r4, r6, r9, sl, ip, sp, lr}^	; <UNPREDICTABLE>
    43d4:	6e655364 	cdpvs	3, 6, cr5, cr5, cr4, {3}
    43d8:	74614464 	strbtvc	r4, [r1], #-1124	; 0xfffffb9c
    43dc:	79734161 	ldmdbvc	r3!, {r0, r5, r6, r8, lr}^
    43e0:	0068636e 	rsbeq	r6, r8, lr, ror #6
    43e4:	52415355 	subpl	r5, r1, #1409286145	; 0x54000001
    43e8:	565f5f54 	usaxpl	r5, pc, r4	; <UNPREDICTABLE>
    43ec:	4764696f 	strbmi	r6, [r4, -pc, ror #18]!
    43f0:	5f4f4950 	svcpl	0x004f4950
    43f4:	50746553 	rsbspl	r6, r4, r3, asr r5
    43f8:	00736e69 	rsbseq	r6, r3, r9, ror #28
    43fc:	52415355 	subpl	r5, r1, #1409286145	; 0x54000001
    4400:	454c5f54 	strbmi	r5, [ip, #-3924]	; 0xfffff0ac
    4404:	4e494441 	cdpmi	4, 4, cr4, cr9, cr1, {2}
    4408:	44455f47 	strbmi	r5, [r5], #-3911	; 0xfffff0b9
    440c:	55004547 	strpl	r4, [r0, #-1351]	; 0xfffffab9
    4410:	54524153 	ldrbpl	r4, [r2], #-339	; 0xfffffead
    4414:	414e455f 	cmpmi	lr, pc, asr r5
    4418:	5f454c42 	svcpl	0x00454c42
    441c:	5f455854 	svcpl	0x00455854
    4420:	73515249 	cmpvc	r1, #-1879048188	; 0x90000004
    4424:	50544700 	subspl	r4, r4, r0, lsl #14
    4428:	4d440052 	stclmi	0, cr0, [r4, #-328]	; 0xfffffeb8
    442c:	58525f41 	ldmdapl	r2, {r0, r6, r8, r9, sl, fp, ip, lr}^
    4430:	414e455f 	cmpmi	lr, pc, asr r5
    4434:	00454c42 	subeq	r4, r5, r2, asr #24
    4438:	52415355 	subpl	r5, r1, #1409286145	; 0x54000001
    443c:	6f765f54 	svcvs	0x00765f54
    4440:	65526469 	ldrbvs	r6, [r2, #-1129]	; 0xfffffb97
    4444:	76696563 	strbtvc	r6, [r9], -r3, ror #10
    4448:	74614465 	strbtvc	r4, [r1], #-1125	; 0xfffffb9b
    444c:	6e795361 	cdpvs	3, 7, cr5, cr9, cr1, {3}
    4450:	4c006863 	stcmi	8, cr6, [r0], {99}	; 0x63
    4454:	755f434f 	ldrbvc	r4, [pc, #-847]	; 410d <_Min_Stack_Size+0x3d0d>
    4458:	52433631 	subpl	r3, r3, #51380224	; 0x3100000
    445c:	4f4c0031 	svcmi	0x004c0031
    4460:	31755f43 	cmncc	r5, r3, asr #30
    4464:	32524336 	subscc	r4, r2, #-671088640	; 0xd8000000
    4468:	41535500 	cmpmi	r3, r0, lsl #10
    446c:	545f5452 	ldrbpl	r5, [pc], #-1106	; 4474 <_Min_Stack_Size+0x4074>
    4470:	434e4152 	movtmi	r4, #57682	; 0xe152
    4474:	52455649 	subpl	r5, r5, #76546048	; 0x4900000
    4478:	41535500 	cmpmi	r3, r0, lsl #10
    447c:	425f5452 	subsmi	r5, pc, #1375731712	; 0x52000000
    4480:	52646175 	rsbpl	r6, r4, #1073741853	; 0x4000001d
    4484:	00657461 	rsbeq	r7, r5, r1, ror #8
    4488:	52415355 	subpl	r5, r1, #1409286145	; 0x54000001
    448c:	444f5f54 	strbmi	r5, [pc], #-3924	; 4494 <_Min_Stack_Size+0x4094>
    4490:	41505f44 	cmpmi	r0, r4, asr #30
    4494:	59544952 	ldmdbpl	r4, {r1, r4, r6, r8, fp, lr}^
    4498:	41535500 	cmpmi	r3, r0, lsl #10
    449c:	765f5452 			; <UNDEFINED> instruction: 0x765f5452
    44a0:	5364696f 	cmnpl	r4, #1818624	; 0x1bc000
    44a4:	44646e65 	strbtmi	r6, [r4], #-3685	; 0xfffff19b
    44a8:	53617461 	cmnpl	r1, #1627389952	; 0x61000000
    44ac:	68636e79 	stmdavs	r3!, {r0, r3, r4, r5, r6, r9, sl, fp, sp, lr}^
    44b0:	41535500 	cmpmi	r3, r0, lsl #10
    44b4:	4f5f5452 	svcmi	0x005f5452
    44b8:	61726570 	cmnvs	r2, r0, ror r5
    44bc:	6e6f6974 			; <UNDEFINED> instruction: 0x6e6f6974
    44c0:	65646f4d 	strbvs	r6, [r4, #-3917]!	; 0xfffff0b3
    44c4:	4200745f 	andmi	r7, r0, #1593835520	; 0x5f000000
    44c8:	525f5252 	subspl	r5, pc, #536870917	; 0x20000005
    44cc:	50006765 	andpl	r6, r0, r5, ror #14
    44d0:	4438755f 	ldrtmi	r7, [r8], #-1375	; 0xfffffaa1
    44d4:	00617461 	rsbeq	r7, r1, r1, ror #8
    44d8:	52415355 	subpl	r5, r1, #1409286145	; 0x54000001
    44dc:	495f3354 	ldmdbmi	pc, {r2, r4, r6, r8, r9, ip, sp}^	; <UNPREDICTABLE>
    44e0:	61485152 	cmpvs	r8, r2, asr r1
    44e4:	656c646e 	strbvs	r6, [ip, #-1134]!	; 0xfffffb92
    44e8:	53550072 	cmppl	r5, #114	; 0x72
    44ec:	33545241 	cmpcc	r4, #268435460	; 0x10000004
    44f0:	28202820 	stmdacs	r0!, {r5, fp, sp}
    44f4:	6c6f7620 	stclvs	6, cr7, [pc], #-128	; 447c <_Min_Stack_Size+0x407c>
    44f8:	6c697461 	cfstrdvs	mvd7, [r9], #-388	; 0xfffffe7c
    44fc:	53552065 	cmppl	r5, #101	; 0x65
    4500:	5f545241 	svcpl	0x00545241
    4504:	65707954 	ldrbvs	r7, [r0, #-2388]!	; 0xfffff6ac
    4508:	2029202a 	eorcs	r2, r9, sl, lsr #32
    450c:	30347830 	eorscc	r7, r4, r0, lsr r8
    4510:	38343030 	ldmdacc	r4!, {r4, r5, ip, sp}
    4514:	29203030 	stmdbcs	r0!, {r4, r5, ip, sp}
    4518:	41535500 	cmpmi	r3, r0, lsl #10
    451c:	445f5452 	ldrbmi	r5, [pc], #-1106	; 4524 <_Min_Stack_Size+0x4124>
    4520:	42415349 	submi	r5, r1, #603979777	; 0x24000001
    4524:	505f454c 	subspl	r4, pc, ip, asr #10
    4528:	54495241 	strbpl	r5, [r9], #-577	; 0xfffffdbf
    452c:	53550059 	cmppl	r5, #89	; 0x59
    4530:	5f545241 	svcpl	0x00545241
    4534:	454c4449 	strbmi	r4, [ip, #-1097]	; 0xfffffbb7
    4538:	4749485f 	smlsldmi	r4, r9, pc, r8	; <UNPREDICTABLE>
    453c:	53550048 	cmppl	r5, #72	; 0x48
    4540:	5f545241 	svcpl	0x00545241
    4544:	656c6449 	strbvs	r6, [ip, #-1097]!	; 0xfffffbb7
    4548:	6576654c 	ldrbvs	r6, [r6, #-1356]!	; 0xfffffab4
    454c:	5355006c 	cmppl	r5, #108	; 0x6c
    4550:	5f545241 	svcpl	0x00545241
    4554:	4e415254 	mcrmi	2, 2, r5, cr1, cr4, {2}
    4558:	54494d53 	strbpl	r4, [r9], #-3411	; 0xfffff2ad
    455c:	4e585200 	cdpmi	2, 5, cr5, cr8, cr0, {0}
    4560:	00352045 	eorseq	r2, r5, r5, asr #32
    4564:	20455854 	subcs	r5, r5, r4, asr r8
    4568:	53550037 	cmppl	r5, #55	; 0x37
    456c:	5f545241 	svcpl	0x00545241
    4570:	465f5748 	ldrbmi	r5, [pc], -r8, asr #14
    4574:	5f574f4c 	svcpl	0x00574f4c
    4578:	544e4f43 	strbpl	r4, [lr], #-3907	; 0xfffff0bd
    457c:	4c4c4f52 	mcrrmi	15, 5, r4, ip, cr2
    4580:	525f4445 	subspl	r4, pc, #1157627904	; 0x45000000
    4584:	435f5354 	cmpmi	pc, #84, 6	; 0x50000001
    4588:	55005354 	strpl	r5, [r0, #-852]	; 0xfffffcac
    458c:	54524153 	ldrbpl	r4, [r2], #-339	; 0xfffffead
    4590:	7461445f 	strbtvc	r4, [r1], #-1119	; 0xfffffba1
    4594:	6e654c61 	cdpvs	12, 6, cr4, cr5, cr1, {3}
    4598:	5f687467 	svcpl	0x00687467
    459c:	53550074 	cmppl	r5, #116	; 0x74
    45a0:	32545241 	subscc	r5, r4, #268435460	; 0x10000004
    45a4:	28202820 	stmdacs	r0!, {r5, fp, sp}
    45a8:	6c6f7620 	stclvs	6, cr7, [pc], #-128	; 4530 <_Min_Stack_Size+0x4130>
    45ac:	6c697461 	cfstrdvs	mvd7, [r9], #-388	; 0xfffffe7c
    45b0:	53552065 	cmppl	r5, #101	; 0x65
    45b4:	5f545241 	svcpl	0x00545241
    45b8:	65707954 	ldrbvs	r7, [r0, #-2388]!	; 0xfffff6ac
    45bc:	2029202a 	eorcs	r2, r9, sl, lsr #32
    45c0:	30347830 	eorscc	r7, r4, r0, lsr r8
    45c4:	34343030 	ldrtcc	r3, [r4], #-48	; 0xffffffd0
    45c8:	29203030 	stmdbcs	r0!, {r4, r5, ip, sp}
    45cc:	49415700 	stmdbmi	r1, {r8, r9, sl, ip, lr}^
    45d0:	4f545f54 	svcmi	0x00545f54
    45d4:	4e58525f 	mrcmi	2, 2, r5, cr8, cr15, {2}
    45d8:	53552845 	cmppl	r5, #4521984	; 0x450000
    45dc:	29785452 	ldmdbcs	r8!, {r1, r4, r6, sl, ip, lr}^
    45e0:	69687720 	stmdbvs	r8!, {r5, r8, r9, sl, ip, sp, lr}^
    45e4:	2128656c 			; <UNDEFINED> instruction: 0x2128656c
    45e8:	54454728 	strbpl	r4, [r5], #-1832	; 0xfffff8d8
    45ec:	5449425f 	strbpl	r4, [r9], #-607	; 0xfffffda1
    45f0:	52535528 	subspl	r5, r3, #40, 10	; 0xa000000
    45f4:	3e2d7854 	mcrcc	8, 1, r7, cr13, cr4, {2}
    45f8:	2c205253 	sfmcs	f5, 4, [r0], #-332	; 0xfffffeb4
    45fc:	454e5852 	strbmi	r5, [lr, #-2130]	; 0xfffff7ae
    4600:	00292929 	eoreq	r2, r9, r9, lsr #18
    4604:	52415355 	subpl	r5, r1, #1409286145	; 0x54000001
    4608:	00315f54 	eorseq	r5, r1, r4, asr pc
    460c:	52415355 	subpl	r5, r1, #1409286145	; 0x54000001
    4610:	00325f54 	eorseq	r5, r2, r4, asr pc
    4614:	52415355 	subpl	r5, r1, #1409286145	; 0x54000001
    4618:	00335f54 	eorseq	r5, r3, r4, asr pc
    461c:	5f414d44 	svcpl	0x00414d44
    4620:	41534944 	cmpmi	r3, r4, asr #18
    4624:	00454c42 	subeq	r4, r5, r2, asr #24
    4628:	52415355 	subpl	r5, r1, #1409286145	; 0x54000001
    462c:	61505f54 	cmpvs	r0, r4, asr pc
    4630:	79746972 	ldmdbvc	r4!, {r1, r4, r5, r6, r8, fp, sp, lr}^
    4634:	5500745f 	strpl	r7, [r0, #-1119]	; 0xfffffba1
    4638:	54524153 	ldrbpl	r4, [r2], #-339	; 0xfffffead
    463c:	505f315f 	subspl	r3, pc, pc, asr r1	; <UNPREDICTABLE>
    4640:	535f355f 	cmppl	pc, #398458880	; 0x17c00000
    4644:	42504f54 	subsmi	r4, r0, #84, 30	; 0x150
    4648:	55005449 	strpl	r5, [r0, #-1097]	; 0xfffffbb7
    464c:	54524153 	ldrbpl	r4, [r2], #-339	; 0xfffffead
    4650:	696f765f 	stmdbvs	pc!, {r0, r1, r2, r3, r4, r6, r9, sl, ip, sp, lr}^	; <UNPREDICTABLE>
    4654:	61754264 	cmnvs	r5, r4, ror #4
    4658:	74615264 	strbtvc	r5, [r1], #-612	; 0xfffffd9c
    465c:	6c614365 	stclvs	3, cr4, [r1], #-404	; 0xfffffe6c
    4660:	53550063 	cmppl	r5, #99	; 0x63
    4664:	5f545241 	svcpl	0x00545241
    4668:	5f414d44 	svcpl	0x00414d44
    466c:	53550074 	cmppl	r5, #116	; 0x74
    4670:	31545241 	cmpcc	r4, r1, asr #4
    4674:	28202820 	stmdacs	r0!, {r5, fp, sp}
    4678:	6c6f7620 	stclvs	6, cr7, [pc], #-128	; 4600 <_Min_Stack_Size+0x4200>
    467c:	6c697461 	cfstrdvs	mvd7, [r9], #-388	; 0xfffffe7c
    4680:	53552065 	cmppl	r5, #101	; 0x65
    4684:	5f545241 	svcpl	0x00545241
    4688:	65707954 	ldrbvs	r7, [r0, #-2388]!	; 0xfffff6ac
    468c:	2029202a 	eorcs	r2, r9, sl, lsr #32
    4690:	30347830 	eorscc	r7, r4, r0, lsr r8
    4694:	38333130 	ldmdacc	r3!, {r4, r5, r8, ip, sp}
    4698:	29203030 	stmdbcs	r0!, {r4, r5, ip, sp}
    469c:	434f4c00 	movtmi	r4, #64512	; 0xfc00
    46a0:	3631755f 			; <UNDEFINED> instruction: 0x3631755f
    46a4:	6e756f43 	cdpvs	15, 7, cr6, cr5, cr3, {2}
    46a8:	00726574 	rsbseq	r6, r2, r4, ror r5
    46ac:	20435854 	subcs	r5, r3, r4, asr r8
    46b0:	53550036 	cmppl	r5, #54	; 0x36
    46b4:	5f545241 	svcpl	0x00545241
    46b8:	41534944 	cmpmi	r3, r4, asr #18
    46bc:	5f454c42 	svcpl	0x00454c42
    46c0:	73515249 	cmpvc	r1, #-1879048188	; 0x90000004
    46c4:	41535500 	cmpmi	r3, r0, lsl #10
    46c8:	325f5452 	subscc	r5, pc, #1375731712	; 0x52000000
    46cc:	4f54535f 	svcmi	0x0054535f
    46d0:	54494250 	strbpl	r4, [r9], #-592	; 0xfffffdb0
    46d4:	6c435000 	marvs	acc0, r5, r3
    46d8:	006b636f 	rsbeq	r6, fp, pc, ror #6
    46dc:	52415355 	subpl	r5, r1, #1409286145	; 0x54000001
    46e0:	754e5f54 	strbvc	r5, [lr, #-3924]	; 0xfffff0ac
    46e4:	7265626d 	rsbvc	r6, r5, #-805306362	; 0xd0000006
    46e8:	5500745f 	strpl	r7, [r0, #-1119]	; 0xfffffba1
    46ec:	54524153 	ldrbpl	r4, [r2], #-339	; 0xfffffead
    46f0:	414e455f 	cmpmi	lr, pc, asr r5
    46f4:	5f454c42 	svcpl	0x00454c42
    46f8:	454e5852 	strbmi	r5, [lr, #-2130]	; 0xfffff7ae
    46fc:	5152495f 	cmppl	r2, pc, asr r9
    4700:	4f4c0073 	svcmi	0x004c0073
    4704:	31755f43 	cmncc	r5, r3, asr #30
    4708:	33524336 	cmpcc	r2, #-671088640	; 0xd8000000
    470c:	41535500 	cmpmi	r3, r0, lsl #10
    4710:	485f5452 	ldmdami	pc, {r1, r4, r6, sl, ip, lr}^	; <UNPREDICTABLE>
    4714:	4c465f57 	mcrrmi	15, 5, r5, r6, cr7
    4718:	435f574f 	cmpmi	pc, #20709376	; 0x13c0000
    471c:	52544e4f 	subspl	r4, r4, #1264	; 0x4f0
    4720:	454c4c4f 	strbmi	r4, [ip, #-3151]	; 0xfffff3b1
    4724:	54525f44 	ldrbpl	r5, [r2], #-3908	; 0xfffff0bc
    4728:	53550053 	cmppl	r5, #83	; 0x53
    472c:	5f545241 	svcpl	0x00545241
    4730:	64696f76 	strbtvs	r6, [r9], #-3958	; 0xfffff08a
    4734:	646e6553 	strbtvs	r6, [lr], #-1363	; 0xfffffaad
    4738:	69727453 	ldmdbvs	r2!, {r0, r1, r4, r6, sl, ip, sp, lr}^
    473c:	6957676e 	ldmdbvs	r7, {r1, r2, r3, r5, r6, r8, r9, sl, sp, lr}^
    4740:	65446874 	strbvs	r6, [r4, #-2164]	; 0xfffff78c
    4744:	696d696c 	stmdbvs	sp!, {r2, r3, r5, r6, r8, fp, sp, lr}^
    4748:	53726574 	cmnpl	r2, #116, 10	; 0x1d000000
    474c:	68636e79 	stmdavs	r3!, {r0, r3, r4, r5, r6, r9, sl, fp, sp, lr}^
    4750:	41535500 	cmpmi	r3, r0, lsl #10
    4754:	485f5452 	ldmdami	pc, {r1, r4, r6, sl, ip, lr}^	; <UNPREDICTABLE>
    4758:	4c465f57 	mcrrmi	15, 5, r5, r6, cr7
    475c:	435f574f 	cmpmi	pc, #20709376	; 0x13c0000
    4760:	52544e4f 	subspl	r4, r4, #1264	; 0x4f0
    4764:	454c4c4f 	strbmi	r4, [ip, #-3151]	; 0xfffff3b1
    4768:	54435f44 	strbpl	r5, [r3], #-3908	; 0xfffff0bc
    476c:	53550053 	cmppl	r5, #83	; 0x53
    4770:	5f545241 	svcpl	0x00545241
    4774:	61746144 	cmnvs	r4, r4, asr #2
    4778:	676e654c 	strbvs	r6, [lr, -ip, asr #10]!
    477c:	4d006874 	stcmi	8, cr6, [r0, #-464]	; 0xfffffe30
    4780:	69746e61 	ldmdbvs	r4!, {r0, r5, r6, r9, sl, fp, sp, lr}^
    4784:	61737365 	cmnvs	r3, r5, ror #6
    4788:	6c754d5f 	ldclvs	13, cr4, [r5], #-380	; 0xfffffe84
    478c:	30315f6c 	eorscc	r5, r1, ip, ror #30
    4790:	2e2e0030 	mcrcs	0, 1, r0, cr14, cr0, {1}
    4794:	6372532f 	cmnvs	r2, #-1140850688	; 0xbc000000
    4798:	4153552f 	cmpmi	r3, pc, lsr #10
    479c:	705f5452 	subsvc	r5, pc, r2, asr r4	; <UNPREDICTABLE>
    47a0:	72676f72 	rsbvc	r6, r7, #456	; 0x1c8
    47a4:	632e6d61 			; <UNDEFINED> instruction: 0x632e6d61
    47a8:	41535500 	cmpmi	r3, r0, lsl #10
    47ac:	5f315452 	svcpl	0x00315452
    47b0:	48515249 	ldmdami	r1, {r0, r3, r6, r9, ip, lr}^
    47b4:	6c646e61 	stclvs	14, cr6, [r4], #-388	; 0xfffffe7c
    47b8:	55007265 	strpl	r7, [r0, #-613]	; 0xfffffd9b
    47bc:	54524153 	ldrbpl	r4, [r2], #-339	; 0xfffffead
    47c0:	6f74535f 	svcvs	0x0074535f
    47c4:	74694270 	strbtvc	r4, [r9], #-624	; 0xfffffd90
    47c8:	61724600 	cmnvs	r2, r0, lsl #12
    47cc:	6f697463 	svcvs	0x00697463
    47d0:	5355006e 	cmppl	r5, #110	; 0x6e
    47d4:	5f545241 	svcpl	0x00545241
    47d8:	64696f76 	strbtvs	r6, [r9], #-3958	; 0xfffff08a
    47dc:	65636552 	strbvs	r6, [r3, #-1362]!	; 0xfffffaae
    47e0:	44657669 	strbtmi	r7, [r5], #-1641	; 0xfffff997
    47e4:	41617461 	cmnmi	r1, r1, ror #8
    47e8:	636e7973 	cmnvs	lr, #1884160	; 0x1cc000
    47ec:	53550068 	cmppl	r5, #104	; 0x68
    47f0:	5f545241 	svcpl	0x00545241
    47f4:	54494238 	strbpl	r4, [r9], #-568	; 0xfffffdc8
    47f8:	41535500 	cmpmi	r3, r0, lsl #10
    47fc:	315f5452 	cmpcc	pc, r2, asr r4	; <UNPREDICTABLE>
    4800:	4f54535f 	svcmi	0x0054535f
    4804:	54494250 	strbpl	r4, [r9], #-592	; 0xfffffdb0
    4808:	41535500 	cmpmi	r3, r0, lsl #10
    480c:	765f5452 			; <UNDEFINED> instruction: 0x765f5452
    4810:	5364696f 	cmnpl	r4, #1818624	; 0x1bc000
    4814:	53646e65 	cmnpl	r4, #1616	; 0x650
    4818:	6e697274 	mcrvs	2, 3, r7, cr9, cr4, {3}
    481c:	74695767 	strbtvc	r5, [r9], #-1895	; 0xfffff899
    4820:	78694668 	stmdavc	r9!, {r3, r5, r6, r9, sl, lr}^
    4824:	69536465 	ldmdbvs	r3, {r0, r2, r5, r6, sl, sp, lr}^
    4828:	7953657a 	ldmdbvc	r3, {r1, r3, r4, r5, r6, r8, sl, sp, lr}^
    482c:	0068636e 	rsbeq	r6, r8, lr, ror #6
    4830:	52415355 	subpl	r5, r1, #1409286145	; 0x54000001
    4834:	57485f54 	smlsldpl	r5, r8, r4, pc	; <UNPREDICTABLE>
    4838:	4f4c465f 	svcmi	0x004c465f
    483c:	4f435f57 	svcmi	0x00435f57
    4840:	4f52544e 	svcmi	0x0052544e
    4844:	44454c4c 	strbmi	r4, [r5], #-3148	; 0xfffff3b4
    4848:	5349445f 	movtpl	r4, #37983	; 0x945f
    484c:	45424c41 	strbmi	r4, [r2, #-3137]	; 0xfffff3bf
    4850:	53550044 	cmppl	r5, #68	; 0x44
    4854:	5f545241 	svcpl	0x00545241
    4858:	49415254 	stmdbmi	r1, {r2, r4, r6, r9, ip, lr}^
    485c:	474e494c 	strbmi	r4, [lr, -ip, asr #18]
    4860:	4744455f 	smlsldmi	r4, r4, pc, r5	; <UNPREDICTABLE>
    4864:	74700045 	ldrbtvc	r0, [r0], #-69	; 0xffffffbb
    4868:	33755f72 	cmncc	r5, #456	; 0x1c8
    486c:	72655032 	rsbvc	r5, r5, #50	; 0x32
    4870:	65687069 	strbvs	r7, [r8, #-105]!	; 0xffffff97
    4874:	416c6172 	smcmi	50706	; 0xc612
    4878:	65726464 	ldrbvs	r6, [r2, #-1124]!	; 0xfffffb9c
    487c:	55007373 	strpl	r7, [r0, #-883]	; 0xfffffc8d
    4880:	54524153 	ldrbpl	r4, [r2], #-339	; 0xfffffead
    4884:	7461445f 	strbtvc	r4, [r1], #-1119	; 0xfffffba1
    4888:	6d615361 	stclvs	3, cr5, [r1, #-388]!	; 0xfffffe7c
    488c:	6e696c70 	mcrvs	12, 3, r6, cr9, cr0, {3}
    4890:	53550067 	cmppl	r5, #103	; 0x67
    4894:	5f545241 	svcpl	0x00545241
    4898:	6c465748 	mcrrvs	7, 4, r5, r6, cr8
    489c:	6f43776f 	svcvs	0x0043776f
    48a0:	6f72746e 	svcvs	0x0072746e
    48a4:	00745f6c 	rsbseq	r5, r4, ip, ror #30
    48a8:	43727375 	cmnmi	r2, #-738197503	; 0xd4000001
    48ac:	69666e6f 	stmdbvs	r6!, {r0, r1, r2, r3, r5, r6, r9, sl, fp, sp, lr}^
    48b0:	53550067 	cmppl	r5, #103	; 0x67
    48b4:	5f545241 	svcpl	0x00545241
    48b8:	54494239 	strbpl	r4, [r9], #-569	; 0xfffffdc7
    48bc:	414d4400 	cmpmi	sp, r0, lsl #8
    48c0:	5f58545f 	svcpl	0x0058545f
    48c4:	42414e45 	submi	r4, r1, #1104	; 0x450
    48c8:	4400454c 	strmi	r4, [r0], #-1356	; 0xfffffab4
    48cc:	545f414d 	ldrbpl	r4, [pc], #-333	; 48d4 <_Min_Stack_Size+0x44d4>
    48d0:	58525f58 	ldmdapl	r2, {r3, r4, r6, r8, r9, sl, fp, ip, lr}^
    48d4:	414e455f 	cmpmi	lr, pc, asr r5
    48d8:	00454c42 	subeq	r4, r5, r2, asr #24
    48dc:	52415355 	subpl	r5, r1, #1409286145	; 0x54000001
    48e0:	56454454 			; <UNDEFINED> instruction: 0x56454454
    48e4:	6c754d5f 	ldclvs	13, cr4, [r5], #-380	; 0xfffffe84
    48e8:	30315f6c 	eorscc	r5, r1, ip, ror #30
    48ec:	53550030 	cmppl	r5, #48	; 0x30
    48f0:	5f545241 	svcpl	0x00545241
    48f4:	45544e49 	ldrbmi	r4, [r4, #-3657]	; 0xfffff1b7
    48f8:	43414652 	movtmi	r4, #5714	; 0x1652
    48fc:	20485f45 	subcs	r5, r8, r5, asr #30
    4900:	41535500 	cmpmi	r3, r0, lsl #10
    4904:	455f5452 	ldrbmi	r5, [pc, #-1106]	; 44ba <_Min_Stack_Size+0x40ba>
    4908:	5f4e4556 	svcpl	0x004e4556
    490c:	49524150 	ldmdbmi	r2, {r4, r6, r8, lr}^
    4910:	57005954 	smlsdpl	r0, r4, r9, r5
    4914:	5f544941 	svcpl	0x00544941
    4918:	545f4f54 	ldrbpl	r4, [pc], #-3924	; 4920 <_Min_Stack_Size+0x4520>
    491c:	55284358 	strpl	r4, [r8, #-856]!	; 0xfffffca8
    4920:	78545253 	ldmdavc	r4, {r0, r1, r4, r6, r9, ip, lr}^
    4924:	68772029 	ldmdavs	r7!, {r0, r3, r5, sp}^
    4928:	28656c69 	stmdacs	r5!, {r0, r3, r5, r6, sl, fp, sp, lr}^
    492c:	45472821 	strbmi	r2, [r7, #-2081]	; 0xfffff7df
    4930:	49425f54 	stmdbmi	r2, {r2, r4, r6, r8, r9, sl, fp, ip, lr}^
    4934:	53552854 	cmppl	r5, #84, 16	; 0x540000
    4938:	2d785452 	cfldrdcs	mvd5, [r8, #-328]!	; 0xfffffeb8
    493c:	2052533e 	subscs	r5, r2, lr, lsr r3
    4940:	4358542c 	cmpmi	r8, #44, 8	; 0x2c000000
    4944:	29292920 	stmdbcs	r9!, {r5, r8, fp, sp}
    4948:	49415700 	stmdbmi	r1, {r8, r9, sl, ip, lr}^
    494c:	4f545f54 	svcmi	0x00545f54
    4950:	4558545f 	ldrbmi	r5, [r8, #-1119]	; 0xfffffba1
    4954:	52535528 	subspl	r5, r3, #40, 10	; 0xa000000
    4958:	20297854 	eorcs	r7, r9, r4, asr r8
    495c:	6c696877 	stclvs	8, cr6, [r9], #-476	; 0xfffffe24
    4960:	28212865 	stmdacs	r1!, {r0, r2, r5, r6, fp, sp}
    4964:	5f544547 	svcpl	0x00544547
    4968:	28544942 	ldmdacs	r4, {r1, r6, r8, fp, lr}^
    496c:	54525355 	ldrbpl	r5, [r2], #-853	; 0xfffffcab
    4970:	533e2d78 	teqpl	lr, #120, 26	; 0x1e00
    4974:	542c2052 	strtpl	r2, [ip], #-82	; 0xffffffae
    4978:	29204558 	stmdbcs	r0!, {r3, r4, r6, r8, sl, lr}
    497c:	55002929 	strpl	r2, [r0, #-2345]	; 0xfffff6d7
    4980:	54524153 	ldrbpl	r4, [r2], #-339	; 0xfffffead
    4984:	414e455f 	cmpmi	lr, pc, asr r5
    4988:	5f454c42 	svcpl	0x00454c42
    498c:	495f4550 	ldmdbmi	pc, {r4, r6, r8, sl, lr}^	; <UNPREDICTABLE>
    4990:	00735152 	rsbseq	r5, r3, r2, asr r1
    4994:	52415355 	subpl	r5, r1, #1409286145	; 0x54000001
    4998:	44495f54 	strbmi	r5, [r9], #-3924	; 0xfffff0ac
    499c:	4c5f454c 	cfldr64mi	mvdx4, [pc], {76}	; 0x4c
    49a0:	5500574f 	strpl	r5, [r0, #-1871]	; 0xfffff8b1
    49a4:	54524153 	ldrbpl	r4, [r2], #-339	; 0xfffffead
    49a8:	00564544 	subseq	r4, r6, r4, asr #10
    49ac:	746e614d 	strbtvc	r6, [lr], #-333	; 0xfffffeb3
    49b0:	73736569 	cmnvc	r3, #440401920	; 0x1a400000
    49b4:	53550061 	cmppl	r5, #97	; 0x61
    49b8:	5f545241 	svcpl	0x00545241
    49bc:	64696f76 	strbtvs	r6, [r9], #-3958	; 0xfffff08a
    49c0:	74696e49 	strbtvc	r6, [r9], #-3657	; 0xfffff1b7
    49c4:	41535500 	cmpmi	r3, r0, lsl #10
    49c8:	505f5452 	subspl	r5, pc, r2, asr r4	; <UNPREDICTABLE>
    49cc:	74697261 	strbtvc	r7, [r9], #-609	; 0xfffffd9f
    49d0:	53550079 	cmppl	r5, #121	; 0x79
    49d4:	5f545241 	svcpl	0x00545241
    49d8:	56495250 			; <UNDEFINED> instruction: 0x56495250
    49dc:	5f455441 	svcpl	0x00455441
    49e0:	55002048 	strpl	r2, [r0, #-72]	; 0xffffffb8
    49e4:	54524153 	ldrbpl	r4, [r2], #-339	; 0xfffffead
    49e8:	414e455f 	cmpmi	lr, pc, asr r5
    49ec:	5f454c42 	svcpl	0x00454c42
    49f0:	5f435854 	svcpl	0x00435854
    49f4:	73515249 	cmpvc	r1, #-1879048188	; 0x90000004
    49f8:	41535500 	cmpmi	r3, r0, lsl #10
    49fc:	535f5452 	cmppl	pc, #1375731712	; 0x52000000
    4a00:	42706f74 	rsbsmi	r6, r0, #116, 30	; 0x1d0
    4a04:	745f7469 	ldrbvc	r7, [pc], #-1129	; 4a0c <_Min_Stack_Size+0x460c>
    4a08:	4c554e00 	mrrcmi	14, 0, r4, r5, cr0
    4a0c:	7628204c 	strtvc	r2, [r8], -ip, asr #32
    4a10:	2064696f 	rsbcs	r6, r4, pc, ror #18
    4a14:	0030292a 	eorseq	r2, r0, sl, lsr #18
    4a18:	626f6c47 	rsbvs	r6, pc, #18176	; 0x4700
    4a1c:	555f6c61 	ldrbpl	r6, [pc, #-3169]	; 3dc3 <_Min_Stack_Size+0x39c3>
    4a20:	54524153 	ldrbpl	r4, [r2], #-339	; 0xfffffead
    4a24:	6e6f435f 	mcrvs	3, 3, r4, cr15, cr15, {2}
    4a28:	00676966 	rsbeq	r6, r7, r6, ror #18
    4a2c:	79706f63 	ldmdbvc	r0!, {r0, r1, r5, r6, r8, r9, sl, fp, sp, lr}^
    4a30:	3631755f 			; <UNDEFINED> instruction: 0x3631755f
    4a34:	696c6544 	stmdbvs	ip!, {r2, r6, r8, sl, sp, lr}^
    4a38:	6574696d 	ldrbvs	r6, [r4, #-2413]!	; 0xfffff693
    4a3c:	53550072 	cmppl	r5, #114	; 0x72
    4a40:	5f545241 	svcpl	0x00545241
    4a44:	5f515249 	svcpl	0x00515249
    4a48:	53550074 	cmppl	r5, #116	; 0x74
    4a4c:	5f545241 	svcpl	0x00545241
    4a50:	61746144 	cmnvs	r4, r4, asr #2
    4a54:	706d6153 	rsbvc	r6, sp, r3, asr r1
    4a58:	676e696c 	strbvs	r6, [lr, -ip, ror #18]!
    4a5c:	5500745f 	strpl	r7, [r0, #-1119]	; 0xfffffba1
    4a60:	54524153 	ldrbpl	r4, [r2], #-339	; 0xfffffead
    4a64:	52495f32 	subpl	r5, r9, #50, 30	; 0xc8
    4a68:	6e614851 	mcrvs	8, 3, r4, cr1, cr1, {2}
    4a6c:	72656c64 	rsbvc	r6, r5, #100, 24	; 0x6400
    4a70:	73657400 	cmnvc	r5, #0, 8
    4a74:	2e2e0074 	mcrcs	0, 1, r0, cr14, cr4, {3}
    4a78:	6372532f 	cmnvs	r2, #-1140850688	; 0xbc000000
    4a7c:	69616d2f 	stmdbvs	r1!, {r0, r1, r2, r3, r5, r8, sl, fp, sp, lr}^
    4a80:	00632e6e 	rsbeq	r2, r3, lr, ror #28
    4a84:	49545845 	ldmdbmi	r4, {r0, r2, r6, fp, ip, lr}^
    4a88:	61485f30 	cmpvs	r8, r0, lsr pc
    4a8c:	656c646e 	strbvs	r6, [ip, #-1134]!	; 0xfffffb92
    4a90:	69740072 	ldmdbvs	r4!, {r1, r4, r5, r6}^
    4a94:	5300656d 	movwpl	r6, #1389	; 0x56d
    4a98:	485f4356 	ldmdami	pc, {r1, r2, r4, r6, r8, r9, lr}^	; <UNPREDICTABLE>
    4a9c:	6c646e61 	stclvs	14, cr6, [r4], #-388	; 0xfffffe7c
    4aa0:	78007265 	stmdavc	r0, {r0, r2, r5, r6, r9, ip, sp, lr}
    4aa4:	616c6544 	cmnvs	ip, r4, asr #10
    4aa8:	76730079 			; <UNDEFINED> instruction: 0x76730079
    4aac:	756e5f63 	strbvc	r5, [lr, #-3939]!	; 0xfffff09d
    4ab0:	7265626d 	rsbvc	r6, r5, #-805306362	; 0xd0000006
    4ab4:	52535000 	subspl	r5, r3, #0
    4ab8:	6f765f43 	svcvs	0x00765f43
    4abc:	65536469 	ldrbvs	r6, [r3, #-1129]	; 0xfffffb97
    4ac0:	726f5774 	rsbvc	r5, pc, #116, 14	; 0x1d00000
    4ac4:	676e696b 	strbvs	r6, [lr, -fp, ror #18]!
    4ac8:	63617453 	cmnvs	r1, #1392508928	; 0x53000000
    4acc:	534d5f6b 	movtpl	r5, #57195	; 0xdf6b
    4ad0:	56530050 			; <UNDEFINED> instruction: 0x56530050
    4ad4:	61485f43 	cmpvs	r8, r3, asr #30
    4ad8:	656c646e 	strbvs	r6, [ip, #-1134]!	; 0xfffffb92
    4adc:	614d5f72 	hvcvs	54770	; 0xd5f2
    4ae0:	45006e69 	strmi	r6, [r0, #-3689]	; 0xfffff197
    4ae4:	6c62616e 	stfvse	f6, [r2], #-440	; 0xfffffe48
    4ae8:	69725065 	ldmdbvs	r2!, {r0, r2, r5, r6, ip, lr}^
    4aec:	656c6976 	strbvs	r6, [ip, #-2422]!	; 0xfffff68a
    4af0:	4d646567 	cfstr64mi	mvdx6, [r4, #-412]!	; 0xfffffe64
    4af4:	2865646f 	stmdacs	r5!, {r0, r1, r2, r3, r5, r6, sl, sp, lr}^
    4af8:	5f5f2029 	svcpl	0x005f2029
    4afc:	286d7361 	stmdacs	sp!, {r0, r5, r6, r8, r9, ip, sp, lr}^
    4b00:	43565322 	cmpmi	r6, #-2013265920	; 0x88000000
    4b04:	22302320 	eorscs	r2, r0, #32, 6	; 0x80000000
    4b08:	616d0029 	cmnvs	sp, r9, lsr #32
    4b0c:	73006e69 	movwvc	r6, #3689	; 0xe69
    4b10:	615f6376 	cmpvs	pc, r6, ror r3	; <UNPREDICTABLE>
    4b14:	00736772 	rsbseq	r6, r3, r2, ror r7
    4b18:	64726148 	ldrbtvs	r6, [r2], #-328	; 0xfffffeb8
    4b1c:	6c756146 	ldfvse	f6, [r5], #-280	; 0xfffffee8
    4b20:	61485f74 	hvcvs	34292	; 0x85f4
    4b24:	656c646e 	strbvs	r6, [ip, #-1134]!	; 0xfffffb92
    4b28:	2e2e0072 	mcrcs	0, 1, r0, cr14, cr2, {3}
    4b2c:	6174532f 	cmnvs	r4, pc, lsr #6
    4b30:	70757472 	rsbsvc	r7, r5, r2, ror r4
    4b34:	6174732f 	cmnvs	r4, pc, lsr #6
    4b38:	70757472 	rsbsvc	r7, r5, r2, ror r4
    4b3c:	6d74735f 	ldclvs	3, cr7, [r4, #-380]!	; 0xfffffe84
    4b40:	31663233 	cmncc	r6, r3, lsr r2
    4b44:	36633330 			; <UNDEFINED> instruction: 0x36633330
    4b48:	732e7874 			; <UNDEFINED> instruction: 0x732e7874
    4b4c:	554e4700 	strbpl	r4, [lr, #-1792]	; 0xfffff900
    4b50:	20534120 	subscs	r4, r3, r0, lsr #2
    4b54:	30332e32 	eorscc	r2, r3, r2, lsr lr
    4b58:	Address 0x0000000000004b58 is out of bounds.


Disassembly of section .comment:

00000000 <.comment>:
   0:	3a434347 	bcc	10d0d24 <_Min_Stack_Size+0x10d0924>
   4:	4e472820 	cdpmi	8, 4, cr2, cr7, cr0, {1}
   8:	6f542055 	svcvs	0x00542055
   c:	20736c6f 	rsbscs	r6, r3, pc, ror #24
  10:	20726f66 	rsbscs	r6, r2, r6, ror #30
  14:	334d5453 	movtcc	r5, #54355	; 0xd453
  18:	2d372032 	ldccs	0, cr2, [r7, #-200]!	; 0xffffff38
  1c:	38313032 	ldmdacc	r1!, {r1, r4, r5, ip, sp}
  20:	2d32712d 	ldfcss	f7, [r2, #-180]!	; 0xffffff4c
  24:	61647075 	smcvs	18181	; 0x4705
  28:	322e6574 	eorcc	r6, lr, #116, 10	; 0x1d000000
  2c:	30393130 	eorscc	r3, r9, r0, lsr r1
  30:	2d383233 	lfmcs	f3, 4, [r8, #-204]!	; 0xffffff34
  34:	30303831 	eorscc	r3, r0, r1, lsr r8
  38:	2e372029 	cdpcs	0, 3, cr2, cr7, cr9, {1}
  3c:	20312e33 	eorscs	r2, r1, r3, lsr lr
  40:	38313032 	ldmdacc	r1!, {r1, r4, r5, ip, sp}
  44:	32323630 	eorscc	r3, r2, #48, 12	; 0x3000000
  48:	65722820 	ldrbvs	r2, [r2, #-2080]!	; 0xfffff7e0
  4c:	7361656c 	cmnvc	r1, #108, 10	; 0x1b000000
  50:	5b202965 	blpl	80a5ec <_Min_Stack_Size+0x80a1ec>
  54:	2f4d5241 	svccs	0x004d5241
  58:	65626d65 	strbvs	r6, [r2, #-3429]!	; 0xfffff29b
  5c:	64656464 	strbtvs	r6, [r5], #-1124	; 0xfffffb9c
  60:	622d372d 	eorvs	r3, sp, #11796480	; 0xb40000
  64:	636e6172 	cmnvs	lr, #-2147483620	; 0x8000001c
  68:	65722068 	ldrbvs	r2, [r2, #-104]!	; 0xffffff98
  6c:	69736976 	ldmdbvs	r3!, {r1, r2, r4, r5, r6, r8, fp, sp, lr}^
  70:	32206e6f 	eorcc	r6, r0, #1776	; 0x6f0
  74:	30393136 	eorscc	r3, r9, r6, lsr r1
  78:	Address 0x0000000000000078 is out of bounds.


Disassembly of section .debug_frame:

00000000 <.debug_frame>:
   0:	0000000c 	andeq	r0, r0, ip
   4:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
   8:	7c020001 	stcvc	0, cr0, [r2], {1}
   c:	000d0c0e 	andeq	r0, sp, lr, lsl #24
  10:	00000024 	andeq	r0, r0, r4, lsr #32
  14:	00000000 	andeq	r0, r0, r0
  18:	08000170 	stmdaeq	r0, {r4, r5, r6, r8}
  1c:	0000007c 	andeq	r0, r0, ip, ror r0
  20:	87040e41 	strhi	r0, [r4, -r1, asr #28]
  24:	180e4101 	stmdane	lr, {r0, r8, lr}
  28:	76070d41 	strvc	r0, [r7], -r1, asr #26
  2c:	0d41040e 	cfstrdeq	mvd0, [r1, #-56]	; 0xffffffc8
  30:	0ec7410d 	poleqs	f4, f7, #5.0
  34:	00000000 	andeq	r0, r0, r0
  38:	0000000c 	andeq	r0, r0, ip
  3c:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
  40:	7c020001 	stcvc	0, cr0, [r2], {1}
  44:	000d0c0e 	andeq	r0, sp, lr, lsl #24
  48:	00000024 	andeq	r0, r0, r4, lsr #32
  4c:	00000038 	andeq	r0, r0, r8, lsr r0
  50:	080001ec 	stmdaeq	r0, {r2, r3, r5, r6, r7, r8}
  54:	000000ac 	andeq	r0, r0, ip, lsr #1
  58:	87040e41 	strhi	r0, [r4, -r1, asr #28]
  5c:	100e4101 	andne	r4, lr, r1, lsl #2
  60:	02070d41 	andeq	r0, r7, #4160	; 0x1040
  64:	41040e4e 	tstmi	r4, lr, asr #28
  68:	c7410d0d 	strbgt	r0, [r1, -sp, lsl #26]
  6c:	0000000e 	andeq	r0, r0, lr
  70:	00000024 	andeq	r0, r0, r4, lsr #32
  74:	00000038 	andeq	r0, r0, r8, lsr r0
  78:	08000298 	stmdaeq	r0, {r3, r4, r7, r9}
  7c:	0000002c 	andeq	r0, r0, ip, lsr #32
  80:	87040e41 	strhi	r0, [r4, -r1, asr #28]
  84:	100e4101 	andne	r4, lr, r1, lsl #2
  88:	4e070d41 	cdpmi	13, 0, cr0, cr7, cr1, {2}
  8c:	0d41040e 	cfstrdeq	mvd0, [r1, #-56]	; 0xffffffc8
  90:	0ec7410d 	poleqs	f4, f7, #5.0
  94:	00000000 	andeq	r0, r0, r0
  98:	00000024 	andeq	r0, r0, r4, lsr #32
  9c:	00000038 	andeq	r0, r0, r8, lsr r0
  a0:	00000000 	andeq	r0, r0, r0
  a4:	00000030 	andeq	r0, r0, r0, lsr r0
  a8:	87040e41 	strhi	r0, [r4, -r1, asr #28]
  ac:	100e4101 	andne	r4, lr, r1, lsl #2
  b0:	4f070d41 	svcmi	0x00070d41
  b4:	0d41040e 	cfstrdeq	mvd0, [r1, #-56]	; 0xffffffc8
  b8:	0ec7410d 	poleqs	f4, f7, #5.0
  bc:	00000000 	andeq	r0, r0, r0
  c0:	00000024 	andeq	r0, r0, r4, lsr #32
  c4:	00000038 	andeq	r0, r0, r8, lsr r0
  c8:	00000000 	andeq	r0, r0, r0
  cc:	0000002c 	andeq	r0, r0, ip, lsr #32
  d0:	87040e41 	strhi	r0, [r4, -r1, asr #28]
  d4:	100e4101 	andne	r4, lr, r1, lsl #2
  d8:	4e070d41 	cdpmi	13, 0, cr0, cr7, cr1, {2}
  dc:	0d41040e 	cfstrdeq	mvd0, [r1, #-56]	; 0xffffffc8
  e0:	0ec7410d 	poleqs	f4, f7, #5.0
  e4:	00000000 	andeq	r0, r0, r0
  e8:	00000020 	andeq	r0, r0, r0, lsr #32
  ec:	00000038 	andeq	r0, r0, r8, lsr r0
  f0:	00000000 	andeq	r0, r0, r0
  f4:	00000024 	andeq	r0, r0, r4, lsr #32
  f8:	87080e41 	strhi	r0, [r8, -r1, asr #28]
  fc:	41018e02 	tstmi	r1, r2, lsl #28
 100:	0d41100e 	stcleq	0, cr1, [r1, #-56]	; 0xffffffc8
 104:	080e4d07 	stmdaeq	lr, {r0, r1, r2, r8, sl, fp, lr}
 108:	000d0d41 	andeq	r0, sp, r1, asr #26
 10c:	00000024 	andeq	r0, r0, r4, lsr #32
 110:	00000038 	andeq	r0, r0, r8, lsr r0
 114:	080002c4 	stmdaeq	r0, {r2, r6, r7, r9}
 118:	00000024 	andeq	r0, r0, r4, lsr #32
 11c:	87040e41 	strhi	r0, [r4, -r1, asr #28]
 120:	100e4101 	andne	r4, lr, r1, lsl #2
 124:	4a070d41 	bmi	1c3630 <_Min_Stack_Size+0x1c3230>
 128:	0d41040e 	cfstrdeq	mvd0, [r1, #-56]	; 0xffffffc8
 12c:	0ec7410d 	poleqs	f4, f7, #5.0
 130:	00000000 	andeq	r0, r0, r0
 134:	00000018 	andeq	r0, r0, r8, lsl r0
 138:	00000038 	andeq	r0, r0, r8, lsr r0
 13c:	080002e8 	stmdaeq	r0, {r3, r5, r6, r7, r9}
 140:	00000024 	andeq	r0, r0, r4, lsr #32
 144:	87080e41 	strhi	r0, [r8, -r1, asr #28]
 148:	41018e02 	tstmi	r1, r2, lsl #28
 14c:	0000070d 	andeq	r0, r0, sp, lsl #14
 150:	00000018 	andeq	r0, r0, r8, lsl r0
 154:	00000038 	andeq	r0, r0, r8, lsr r0
 158:	0800030c 	stmdaeq	r0, {r2, r3, r8, r9}
 15c:	00000024 	andeq	r0, r0, r4, lsr #32
 160:	87080e41 	strhi	r0, [r8, -r1, asr #28]
 164:	41018e02 	tstmi	r1, r2, lsl #28
 168:	0000070d 	andeq	r0, r0, sp, lsl #14
 16c:	00000018 	andeq	r0, r0, r8, lsl r0
 170:	00000038 	andeq	r0, r0, r8, lsr r0
 174:	08000330 	stmdaeq	r0, {r4, r5, r8, r9}
 178:	00000024 	andeq	r0, r0, r4, lsr #32
 17c:	87080e41 	strhi	r0, [r8, -r1, asr #28]
 180:	41018e02 	tstmi	r1, r2, lsl #28
 184:	0000070d 	andeq	r0, r0, sp, lsl #14
 188:	00000018 	andeq	r0, r0, r8, lsl r0
 18c:	00000038 	andeq	r0, r0, r8, lsr r0
 190:	08000354 	stmdaeq	r0, {r2, r4, r6, r8, r9}
 194:	00000024 	andeq	r0, r0, r4, lsr #32
 198:	87080e41 	strhi	r0, [r8, -r1, asr #28]
 19c:	41018e02 	tstmi	r1, r2, lsl #28
 1a0:	0000070d 	andeq	r0, r0, sp, lsl #14
 1a4:	00000018 	andeq	r0, r0, r8, lsl r0
 1a8:	00000038 	andeq	r0, r0, r8, lsr r0
 1ac:	08000378 	stmdaeq	r0, {r3, r4, r5, r6, r8, r9}
 1b0:	00000024 	andeq	r0, r0, r4, lsr #32
 1b4:	87080e41 	strhi	r0, [r8, -r1, asr #28]
 1b8:	41018e02 	tstmi	r1, r2, lsl #28
 1bc:	0000070d 	andeq	r0, r0, sp, lsl #14
 1c0:	00000018 	andeq	r0, r0, r8, lsl r0
 1c4:	00000038 	andeq	r0, r0, r8, lsr r0
 1c8:	00000000 	andeq	r0, r0, r0
 1cc:	00000024 	andeq	r0, r0, r4, lsr #32
 1d0:	87080e41 	strhi	r0, [r8, -r1, asr #28]
 1d4:	41018e02 	tstmi	r1, r2, lsl #28
 1d8:	0000070d 	andeq	r0, r0, sp, lsl #14
 1dc:	00000018 	andeq	r0, r0, r8, lsl r0
 1e0:	00000038 	andeq	r0, r0, r8, lsr r0
 1e4:	00000000 	andeq	r0, r0, r0
 1e8:	00000024 	andeq	r0, r0, r4, lsr #32
 1ec:	87080e41 	strhi	r0, [r8, -r1, asr #28]
 1f0:	41018e02 	tstmi	r1, r2, lsl #28
 1f4:	0000070d 	andeq	r0, r0, sp, lsl #14
 1f8:	00000018 	andeq	r0, r0, r8, lsl r0
 1fc:	00000038 	andeq	r0, r0, r8, lsr r0
 200:	00000000 	andeq	r0, r0, r0
 204:	00000024 	andeq	r0, r0, r4, lsr #32
 208:	87080e41 	strhi	r0, [r8, -r1, asr #28]
 20c:	41018e02 	tstmi	r1, r2, lsl #28
 210:	0000070d 	andeq	r0, r0, sp, lsl #14
 214:	00000018 	andeq	r0, r0, r8, lsl r0
 218:	00000038 	andeq	r0, r0, r8, lsr r0
 21c:	00000000 	andeq	r0, r0, r0
 220:	00000024 	andeq	r0, r0, r4, lsr #32
 224:	87080e41 	strhi	r0, [r8, -r1, asr #28]
 228:	41018e02 	tstmi	r1, r2, lsl #28
 22c:	0000070d 	andeq	r0, r0, sp, lsl #14
 230:	00000018 	andeq	r0, r0, r8, lsl r0
 234:	00000038 	andeq	r0, r0, r8, lsr r0
 238:	00000000 	andeq	r0, r0, r0
 23c:	00000024 	andeq	r0, r0, r4, lsr #32
 240:	87080e41 	strhi	r0, [r8, -r1, asr #28]
 244:	41018e02 	tstmi	r1, r2, lsl #28
 248:	0000070d 	andeq	r0, r0, sp, lsl #14
 24c:	00000018 	andeq	r0, r0, r8, lsl r0
 250:	00000038 	andeq	r0, r0, r8, lsr r0
 254:	00000000 	andeq	r0, r0, r0
 258:	00000024 	andeq	r0, r0, r4, lsr #32
 25c:	87080e41 	strhi	r0, [r8, -r1, asr #28]
 260:	41018e02 	tstmi	r1, r2, lsl #28
 264:	0000070d 	andeq	r0, r0, sp, lsl #14
 268:	00000018 	andeq	r0, r0, r8, lsl r0
 26c:	00000038 	andeq	r0, r0, r8, lsr r0
 270:	00000000 	andeq	r0, r0, r0
 274:	00000024 	andeq	r0, r0, r4, lsr #32
 278:	87080e41 	strhi	r0, [r8, -r1, asr #28]
 27c:	41018e02 	tstmi	r1, r2, lsl #28
 280:	0000070d 	andeq	r0, r0, sp, lsl #14
 284:	00000018 	andeq	r0, r0, r8, lsl r0
 288:	00000038 	andeq	r0, r0, r8, lsr r0
 28c:	00000000 	andeq	r0, r0, r0
 290:	00000024 	andeq	r0, r0, r4, lsr #32
 294:	87080e41 	strhi	r0, [r8, -r1, asr #28]
 298:	41018e02 	tstmi	r1, r2, lsl #28
 29c:	0000070d 	andeq	r0, r0, sp, lsl #14
 2a0:	00000018 	andeq	r0, r0, r8, lsl r0
 2a4:	00000038 	andeq	r0, r0, r8, lsr r0
 2a8:	00000000 	andeq	r0, r0, r0
 2ac:	00000024 	andeq	r0, r0, r4, lsr #32
 2b0:	87080e41 	strhi	r0, [r8, -r1, asr #28]
 2b4:	41018e02 	tstmi	r1, r2, lsl #28
 2b8:	0000070d 	andeq	r0, r0, sp, lsl #14
 2bc:	00000018 	andeq	r0, r0, r8, lsl r0
 2c0:	00000038 	andeq	r0, r0, r8, lsr r0
 2c4:	00000000 	andeq	r0, r0, r0
 2c8:	00000024 	andeq	r0, r0, r4, lsr #32
 2cc:	87080e41 	strhi	r0, [r8, -r1, asr #28]
 2d0:	41018e02 	tstmi	r1, r2, lsl #28
 2d4:	0000070d 	andeq	r0, r0, sp, lsl #14
 2d8:	00000018 	andeq	r0, r0, r8, lsl r0
 2dc:	00000038 	andeq	r0, r0, r8, lsr r0
 2e0:	00000000 	andeq	r0, r0, r0
 2e4:	00000024 	andeq	r0, r0, r4, lsr #32
 2e8:	87080e41 	strhi	r0, [r8, -r1, asr #28]
 2ec:	41018e02 	tstmi	r1, r2, lsl #28
 2f0:	0000070d 	andeq	r0, r0, sp, lsl #14
 2f4:	0000000c 	andeq	r0, r0, ip
 2f8:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
 2fc:	7c020001 	stcvc	0, cr0, [r2], {1}
 300:	000d0c0e 	andeq	r0, sp, lr, lsl #24
 304:	00000024 	andeq	r0, r0, r4, lsr #32
 308:	000002f4 	strdeq	r0, [r0], -r4
 30c:	0800039c 	stmdaeq	r0, {r2, r3, r4, r7, r8, r9}
 310:	0000018c 	andeq	r0, r0, ip, lsl #3
 314:	87040e41 	strhi	r0, [r4, -r1, asr #28]
 318:	100e4101 	andne	r4, lr, r1, lsl #2
 31c:	02070d41 	andeq	r0, r7, #4160	; 0x1040
 320:	41040eba 			; <UNDEFINED> instruction: 0x41040eba
 324:	c7410d0d 	strbgt	r0, [r1, -sp, lsl #26]
 328:	0000000e 	andeq	r0, r0, lr
 32c:	00000024 	andeq	r0, r0, r4, lsr #32
 330:	000002f4 	strdeq	r0, [r0], -r4
 334:	00000000 	andeq	r0, r0, r0
 338:	000000e8 	andeq	r0, r0, r8, ror #1
 33c:	87040e41 	strhi	r0, [r4, -r1, asr #28]
 340:	180e4101 	stmdane	lr, {r0, r8, lr}
 344:	02070d41 	andeq	r0, r7, #4160	; 0x1040
 348:	41040e68 	tstmi	r4, r8, ror #28
 34c:	c7410d0d 	strbgt	r0, [r1, -sp, lsl #26]
 350:	0000000e 	andeq	r0, r0, lr
 354:	00000024 	andeq	r0, r0, r4, lsr #32
 358:	000002f4 	strdeq	r0, [r0], -r4
 35c:	00000000 	andeq	r0, r0, r0
 360:	000000ac 	andeq	r0, r0, ip, lsr #1
 364:	87040e41 	strhi	r0, [r4, -r1, asr #28]
 368:	100e4101 	andne	r4, lr, r1, lsl #2
 36c:	02070d41 	andeq	r0, r7, #4160	; 0x1040
 370:	41040e49 	tstmi	r4, r9, asr #28
 374:	c7410d0d 	strbgt	r0, [r1, -sp, lsl #26]
 378:	0000000e 	andeq	r0, r0, lr
 37c:	00000024 	andeq	r0, r0, r4, lsr #32
 380:	000002f4 	strdeq	r0, [r0], -r4
 384:	00000000 	andeq	r0, r0, r0
 388:	00000098 	muleq	r0, r8, r0
 38c:	87040e41 	strhi	r0, [r4, -r1, asr #28]
 390:	100e4101 	andne	r4, lr, r1, lsl #2
 394:	7f070d41 	svcvc	0x00070d41
 398:	0d41040e 	cfstrdeq	mvd0, [r1, #-56]	; 0xffffffc8
 39c:	0ec7410d 	poleqs	f4, f7, #5.0
 3a0:	00000000 	andeq	r0, r0, r0
 3a4:	00000024 	andeq	r0, r0, r4, lsr #32
 3a8:	000002f4 	strdeq	r0, [r0], -r4
 3ac:	00000000 	andeq	r0, r0, r0
 3b0:	00000078 	andeq	r0, r0, r8, ror r0
 3b4:	87040e41 	strhi	r0, [r4, -r1, asr #28]
 3b8:	100e4101 	andne	r4, lr, r1, lsl #2
 3bc:	70070d41 	andvc	r0, r7, r1, asr #26
 3c0:	0d41040e 	cfstrdeq	mvd0, [r1, #-56]	; 0xffffffc8
 3c4:	0ec7410d 	poleqs	f4, f7, #5.0
 3c8:	00000000 	andeq	r0, r0, r0
 3cc:	00000024 	andeq	r0, r0, r4, lsr #32
 3d0:	000002f4 	strdeq	r0, [r0], -r4
 3d4:	00000000 	andeq	r0, r0, r0
 3d8:	00000078 	andeq	r0, r0, r8, ror r0
 3dc:	87040e41 	strhi	r0, [r4, -r1, asr #28]
 3e0:	180e4101 	stmdane	lr, {r0, r8, lr}
 3e4:	70070d41 	andvc	r0, r7, r1, asr #26
 3e8:	0d41040e 	cfstrdeq	mvd0, [r1, #-56]	; 0xffffffc8
 3ec:	0ec7410d 	poleqs	f4, f7, #5.0
 3f0:	00000000 	andeq	r0, r0, r0
 3f4:	00000024 	andeq	r0, r0, r4, lsr #32
 3f8:	000002f4 	strdeq	r0, [r0], -r4
 3fc:	00000000 	andeq	r0, r0, r0
 400:	000000ec 	andeq	r0, r0, ip, ror #1
 404:	87040e41 	strhi	r0, [r4, -r1, asr #28]
 408:	100e4101 	andne	r4, lr, r1, lsl #2
 40c:	02070d41 	andeq	r0, r7, #4160	; 0x1040
 410:	41040e6a 	tstmi	r4, sl, ror #28
 414:	c7410d0d 	strbgt	r0, [r1, -sp, lsl #26]
 418:	0000000e 	andeq	r0, r0, lr
 41c:	0000000c 	andeq	r0, r0, ip
 420:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
 424:	7c020001 	stcvc	0, cr0, [r2], {1}
 428:	000d0c0e 	andeq	r0, sp, lr, lsl #24
 42c:	00000024 	andeq	r0, r0, r4, lsr #32
 430:	0000041c 	andeq	r0, r0, ip, lsl r4
 434:	08000528 	stmdaeq	r0, {r3, r5, r8, sl}
 438:	00000058 	andeq	r0, r0, r8, asr r0
 43c:	87040e41 	strhi	r0, [r4, -r1, asr #28]
 440:	100e4101 	andne	r4, lr, r1, lsl #2
 444:	62070d41 	andvs	r0, r7, #4160	; 0x1040
 448:	0d41040e 	cfstrdeq	mvd0, [r1, #-56]	; 0xffffffc8
 44c:	0ec7410d 	poleqs	f4, f7, #5.0
 450:	00000000 	andeq	r0, r0, r0
 454:	00000024 	andeq	r0, r0, r4, lsr #32
 458:	0000041c 	andeq	r0, r0, ip, lsl r4
 45c:	00000000 	andeq	r0, r0, r0
 460:	00000058 	andeq	r0, r0, r8, asr r0
 464:	87040e41 	strhi	r0, [r4, -r1, asr #28]
 468:	100e4101 	andne	r4, lr, r1, lsl #2
 46c:	62070d41 	andvs	r0, r7, #4160	; 0x1040
 470:	0d41040e 	cfstrdeq	mvd0, [r1, #-56]	; 0xffffffc8
 474:	0ec7410d 	poleqs	f4, f7, #5.0
 478:	00000000 	andeq	r0, r0, r0
 47c:	00000024 	andeq	r0, r0, r4, lsr #32
 480:	0000041c 	andeq	r0, r0, ip, lsl r4
 484:	00000000 	andeq	r0, r0, r0
 488:	00000058 	andeq	r0, r0, r8, asr r0
 48c:	87040e41 	strhi	r0, [r4, -r1, asr #28]
 490:	100e4101 	andne	r4, lr, r1, lsl #2
 494:	62070d41 	andvs	r0, r7, #4160	; 0x1040
 498:	0d41040e 	cfstrdeq	mvd0, [r1, #-56]	; 0xffffffc8
 49c:	0ec7410d 	poleqs	f4, f7, #5.0
 4a0:	00000000 	andeq	r0, r0, r0
 4a4:	00000024 	andeq	r0, r0, r4, lsr #32
 4a8:	0000041c 	andeq	r0, r0, ip, lsl r4
 4ac:	00000000 	andeq	r0, r0, r0
 4b0:	0000005c 	andeq	r0, r0, ip, asr r0
 4b4:	87040e41 	strhi	r0, [r4, -r1, asr #28]
 4b8:	180e4101 	stmdane	lr, {r0, r8, lr}
 4bc:	63070d41 	movwvs	r0, #32065	; 0x7d41
 4c0:	0d41040e 	cfstrdeq	mvd0, [r1, #-56]	; 0xffffffc8
 4c4:	0ec7410d 	poleqs	f4, f7, #5.0
 4c8:	00000000 	andeq	r0, r0, r0
 4cc:	00000024 	andeq	r0, r0, r4, lsr #32
 4d0:	0000041c 	andeq	r0, r0, ip, lsl r4
 4d4:	00000000 	andeq	r0, r0, r0
 4d8:	00000058 	andeq	r0, r0, r8, asr r0
 4dc:	87040e41 	strhi	r0, [r4, -r1, asr #28]
 4e0:	180e4101 	stmdane	lr, {r0, r8, lr}
 4e4:	61070d41 	tstvs	r7, r1, asr #26
 4e8:	0d41040e 	cfstrdeq	mvd0, [r1, #-56]	; 0xffffffc8
 4ec:	0ec7410d 	poleqs	f4, f7, #5.0
 4f0:	00000000 	andeq	r0, r0, r0
 4f4:	0000000c 	andeq	r0, r0, ip
 4f8:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
 4fc:	7c020001 	stcvc	0, cr0, [r2], {1}
 500:	000d0c0e 	andeq	r0, sp, lr, lsl #24
 504:	0000000c 	andeq	r0, r0, ip
 508:	000004f4 	strdeq	r0, [r0], -r4
 50c:	08000580 	stmdaeq	r0, {r7, r8, sl}
 510:	0000002c 	andeq	r0, r0, ip, lsr #32
 514:	0000000c 	andeq	r0, r0, ip
 518:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
 51c:	7c020001 	stcvc	0, cr0, [r2], {1}
 520:	000d0c0e 	andeq	r0, sp, lr, lsl #24
 524:	0000001c 	andeq	r0, r0, ip, lsl r0
 528:	00000514 	andeq	r0, r0, r4, lsl r5
 52c:	080005ac 	stmdaeq	r0, {r2, r3, r5, r7, r8, sl}
 530:	00000024 	andeq	r0, r0, r4, lsr #32
 534:	87040e41 	strhi	r0, [r4, -r1, asr #28]
 538:	070d4101 	streq	r4, [sp, -r1, lsl #2]
 53c:	410d0d49 	tstmi	sp, r9, asr #26
 540:	00000ec7 	andeq	r0, r0, r7, asr #29
 544:	00000024 	andeq	r0, r0, r4, lsr #32
 548:	00000514 	andeq	r0, r0, r4, lsl r5
 54c:	080005d0 	stmdaeq	r0, {r4, r6, r7, r8, sl}
 550:	00000080 	andeq	r0, r0, r0, lsl #1
 554:	87040e41 	strhi	r0, [r4, -r1, asr #28]
 558:	100e4101 	andne	r4, lr, r1, lsl #2
 55c:	73070d41 	movwvc	r0, #32065	; 0x7d41
 560:	0d41040e 	cfstrdeq	mvd0, [r1, #-56]	; 0xffffffc8
 564:	0ec7410d 	poleqs	f4, f7, #5.0
 568:	00000000 	andeq	r0, r0, r0
 56c:	00000024 	andeq	r0, r0, r4, lsr #32
 570:	00000514 	andeq	r0, r0, r4, lsl r5
 574:	00000000 	andeq	r0, r0, r0
 578:	00000084 	andeq	r0, r0, r4, lsl #1
 57c:	87040e41 	strhi	r0, [r4, -r1, asr #28]
 580:	100e4101 	andne	r4, lr, r1, lsl #2
 584:	76070d41 	strvc	r0, [r7], -r1, asr #26
 588:	0d41040e 	cfstrdeq	mvd0, [r1, #-56]	; 0xffffffc8
 58c:	0ec7410d 	poleqs	f4, f7, #5.0
 590:	00000000 	andeq	r0, r0, r0
 594:	0000000c 	andeq	r0, r0, ip
 598:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
 59c:	7c020001 	stcvc	0, cr0, [r2], {1}
 5a0:	000d0c0e 	andeq	r0, sp, lr, lsl #24
 5a4:	00000024 	andeq	r0, r0, r4, lsr #32
 5a8:	00000594 	muleq	r0, r4, r5
 5ac:	00000000 	andeq	r0, r0, r0
 5b0:	00000028 	andeq	r0, r0, r8, lsr #32
 5b4:	87040e41 	strhi	r0, [r4, -r1, asr #28]
 5b8:	180e4101 	stmdane	lr, {r0, r8, lr}
 5bc:	4b070d41 	blmi	1c3ac8 <_Min_Stack_Size+0x1c36c8>
 5c0:	0d41040e 	cfstrdeq	mvd0, [r1, #-56]	; 0xffffffc8
 5c4:	0ec7410d 	poleqs	f4, f7, #5.0
 5c8:	00000000 	andeq	r0, r0, r0
 5cc:	0000001c 	andeq	r0, r0, ip, lsl r0
 5d0:	00000594 	muleq	r0, r4, r5
 5d4:	00000000 	andeq	r0, r0, r0
 5d8:	00000020 	andeq	r0, r0, r0, lsr #32
 5dc:	87040e41 	strhi	r0, [r4, -r1, asr #28]
 5e0:	070d4101 	streq	r4, [sp, -r1, lsl #2]
 5e4:	410d0d49 	tstmi	sp, r9, asr #26
 5e8:	00000ec7 	andeq	r0, r0, r7, asr #29
 5ec:	00000024 	andeq	r0, r0, r4, lsr #32
 5f0:	00000594 	muleq	r0, r4, r5
 5f4:	00000000 	andeq	r0, r0, r0
 5f8:	00000060 	andeq	r0, r0, r0, rrx
 5fc:	87040e41 	strhi	r0, [r4, -r1, asr #28]
 600:	180e4101 	stmdane	lr, {r0, r8, lr}
 604:	68070d41 	stmdavs	r7, {r0, r6, r8, sl, fp}
 608:	0d41040e 	cfstrdeq	mvd0, [r1, #-56]	; 0xffffffc8
 60c:	0ec7410d 	poleqs	f4, f7, #5.0
 610:	00000000 	andeq	r0, r0, r0
 614:	00000020 	andeq	r0, r0, r0, lsr #32
 618:	00000594 	muleq	r0, r4, r5
 61c:	00000000 	andeq	r0, r0, r0
 620:	00000068 	andeq	r0, r0, r8, rrx
 624:	87080e41 	strhi	r0, [r8, -r1, asr #28]
 628:	41018e02 	tstmi	r1, r2, lsl #28
 62c:	0d41180e 	stcleq	8, cr1, [r1, #-56]	; 0xffffffc8
 630:	080e6d07 	stmdaeq	lr, {r0, r1, r2, r8, sl, fp, sp, lr}
 634:	000d0d41 	andeq	r0, sp, r1, asr #26
 638:	00000020 	andeq	r0, r0, r0, lsr #32
 63c:	00000594 	muleq	r0, r4, r5
 640:	00000000 	andeq	r0, r0, r0
 644:	0000006c 	andeq	r0, r0, ip, rrx
 648:	87080e41 	strhi	r0, [r8, -r1, asr #28]
 64c:	41018e02 	tstmi	r1, r2, lsl #28
 650:	0d41180e 	stcleq	8, cr1, [r1, #-56]	; 0xffffffc8
 654:	080e6c07 	stmdaeq	lr, {r0, r1, r2, sl, fp, sp, lr}
 658:	000d0d41 	andeq	r0, sp, r1, asr #26
 65c:	00000024 	andeq	r0, r0, r4, lsr #32
 660:	00000594 	muleq	r0, r4, r5
 664:	00000000 	andeq	r0, r0, r0
 668:	00000060 	andeq	r0, r0, r0, rrx
 66c:	87040e41 	strhi	r0, [r4, -r1, asr #28]
 670:	100e4101 	andne	r4, lr, r1, lsl #2
 674:	63070d41 	movwvs	r0, #32065	; 0x7d41
 678:	0d41040e 	cfstrdeq	mvd0, [r1, #-56]	; 0xffffffc8
 67c:	0ec7410d 	poleqs	f4, f7, #5.0
 680:	00000000 	andeq	r0, r0, r0
 684:	00000020 	andeq	r0, r0, r0, lsr #32
 688:	00000594 	muleq	r0, r4, r5
 68c:	00000000 	andeq	r0, r0, r0
 690:	00000064 	andeq	r0, r0, r4, rrx
 694:	87080e41 	strhi	r0, [r8, -r1, asr #28]
 698:	41018e02 	tstmi	r1, r2, lsl #28
 69c:	0d41180e 	stcleq	8, cr1, [r1, #-56]	; 0xffffffc8
 6a0:	080e6607 	stmdaeq	lr, {r0, r1, r2, r9, sl, sp, lr}
 6a4:	000d0d41 	andeq	r0, sp, r1, asr #26
 6a8:	00000020 	andeq	r0, r0, r0, lsr #32
 6ac:	00000594 	muleq	r0, r4, r5
 6b0:	00000000 	andeq	r0, r0, r0
 6b4:	00000064 	andeq	r0, r0, r4, rrx
 6b8:	87080e41 	strhi	r0, [r8, -r1, asr #28]
 6bc:	41018e02 	tstmi	r1, r2, lsl #28
 6c0:	0d41180e 	stcleq	8, cr1, [r1, #-56]	; 0xffffffc8
 6c4:	080e6507 	stmdaeq	lr, {r0, r1, r2, r8, sl, sp, lr}
 6c8:	000d0d41 	andeq	r0, sp, r1, asr #26
 6cc:	00000024 	andeq	r0, r0, r4, lsr #32
 6d0:	00000594 	muleq	r0, r4, r5
 6d4:	00000000 	andeq	r0, r0, r0
 6d8:	00000060 	andeq	r0, r0, r0, rrx
 6dc:	87040e41 	strhi	r0, [r4, -r1, asr #28]
 6e0:	100e4101 	andne	r4, lr, r1, lsl #2
 6e4:	63070d41 	movwvs	r0, #32065	; 0x7d41
 6e8:	0d41040e 	cfstrdeq	mvd0, [r1, #-56]	; 0xffffffc8
 6ec:	0ec7410d 	poleqs	f4, f7, #5.0
 6f0:	00000000 	andeq	r0, r0, r0
 6f4:	00000020 	andeq	r0, r0, r0, lsr #32
 6f8:	00000594 	muleq	r0, r4, r5
 6fc:	00000000 	andeq	r0, r0, r0
 700:	00000064 	andeq	r0, r0, r4, rrx
 704:	87080e41 	strhi	r0, [r8, -r1, asr #28]
 708:	41018e02 	tstmi	r1, r2, lsl #28
 70c:	0d41180e 	stcleq	8, cr1, [r1, #-56]	; 0xffffffc8
 710:	080e6607 	stmdaeq	lr, {r0, r1, r2, r9, sl, sp, lr}
 714:	000d0d41 	andeq	r0, sp, r1, asr #26
 718:	00000020 	andeq	r0, r0, r0, lsr #32
 71c:	00000594 	muleq	r0, r4, r5
 720:	00000000 	andeq	r0, r0, r0
 724:	00000064 	andeq	r0, r0, r4, rrx
 728:	87080e41 	strhi	r0, [r8, -r1, asr #28]
 72c:	41018e02 	tstmi	r1, r2, lsl #28
 730:	0d41180e 	stcleq	8, cr1, [r1, #-56]	; 0xffffffc8
 734:	080e6507 	stmdaeq	lr, {r0, r1, r2, r8, sl, sp, lr}
 738:	000d0d41 	andeq	r0, sp, r1, asr #26
 73c:	00000024 	andeq	r0, r0, r4, lsr #32
 740:	00000594 	muleq	r0, r4, r5
 744:	00000000 	andeq	r0, r0, r0
 748:	00000028 	andeq	r0, r0, r8, lsr #32
 74c:	87040e41 	strhi	r0, [r4, -r1, asr #28]
 750:	100e4101 	andne	r4, lr, r1, lsl #2
 754:	4b070d41 	blmi	1c3c60 <_Min_Stack_Size+0x1c3860>
 758:	0d41040e 	cfstrdeq	mvd0, [r1, #-56]	; 0xffffffc8
 75c:	0ec7410d 	poleqs	f4, f7, #5.0
 760:	00000000 	andeq	r0, r0, r0
 764:	00000020 	andeq	r0, r0, r0, lsr #32
 768:	00000594 	muleq	r0, r4, r5
 76c:	00000000 	andeq	r0, r0, r0
 770:	0000004c 	andeq	r0, r0, ip, asr #32
 774:	87080e41 	strhi	r0, [r8, -r1, asr #28]
 778:	41018e02 	tstmi	r1, r2, lsl #28
 77c:	0d41100e 	stcleq	0, cr1, [r1, #-56]	; 0xffffffc8
 780:	080e5f07 	stmdaeq	lr, {r0, r1, r2, r8, r9, sl, fp, ip, lr}
 784:	000d0d41 	andeq	r0, sp, r1, asr #26
 788:	00000020 	andeq	r0, r0, r0, lsr #32
 78c:	00000594 	muleq	r0, r4, r5
 790:	00000000 	andeq	r0, r0, r0
 794:	00000050 	andeq	r0, r0, r0, asr r0
 798:	87080e41 	strhi	r0, [r8, -r1, asr #28]
 79c:	41018e02 	tstmi	r1, r2, lsl #28
 7a0:	0d41100e 	stcleq	0, cr1, [r1, #-56]	; 0xffffffc8
 7a4:	080e5e07 	stmdaeq	lr, {r0, r1, r2, r9, sl, fp, ip, lr}
 7a8:	000d0d41 	andeq	r0, sp, r1, asr #26
 7ac:	00000024 	andeq	r0, r0, r4, lsr #32
 7b0:	00000594 	muleq	r0, r4, r5
 7b4:	00000000 	andeq	r0, r0, r0
 7b8:	00000020 	andeq	r0, r0, r0, lsr #32
 7bc:	87040e41 	strhi	r0, [r4, -r1, asr #28]
 7c0:	100e4101 	andne	r4, lr, r1, lsl #2
 7c4:	48070d41 	stmdami	r7, {r0, r6, r8, sl, fp}
 7c8:	0d41040e 	cfstrdeq	mvd0, [r1, #-56]	; 0xffffffc8
 7cc:	0ec7410d 	poleqs	f4, f7, #5.0
 7d0:	00000000 	andeq	r0, r0, r0
 7d4:	00000024 	andeq	r0, r0, r4, lsr #32
 7d8:	00000594 	muleq	r0, r4, r5
 7dc:	00000000 	andeq	r0, r0, r0
 7e0:	00000038 	andeq	r0, r0, r8, lsr r0
 7e4:	840c0e41 	strhi	r0, [ip], #-3649	; 0xfffff1bf
 7e8:	8e028703 	cdphi	7, 0, cr8, cr2, cr3, {0}
 7ec:	180e4101 	stmdane	lr, {r0, r8, lr}
 7f0:	54070d41 	strpl	r0, [r7], #-3393	; 0xfffff2bf
 7f4:	0d410c0e 	stcleq	12, cr0, [r1, #-56]	; 0xffffffc8
 7f8:	0000000d 	andeq	r0, r0, sp
 7fc:	00000024 	andeq	r0, r0, r4, lsr #32
 800:	00000594 	muleq	r0, r4, r5
 804:	00000000 	andeq	r0, r0, r0
 808:	00000038 	andeq	r0, r0, r8, lsr r0
 80c:	840c0e41 	strhi	r0, [ip], #-3649	; 0xfffff1bf
 810:	8e028703 	cdphi	7, 0, cr8, cr2, cr3, {0}
 814:	180e4101 	stmdane	lr, {r0, r8, lr}
 818:	53070d41 	movwpl	r0, #32065	; 0x7d41
 81c:	0d410c0e 	stcleq	12, cr0, [r1, #-56]	; 0xffffffc8
 820:	0000000d 	andeq	r0, r0, sp
 824:	00000020 	andeq	r0, r0, r0, lsr #32
 828:	00000594 	muleq	r0, r4, r5
 82c:	08000650 	stmdaeq	r0, {r4, r6, r9, sl}
 830:	00000060 	andeq	r0, r0, r0, rrx
 834:	87080e41 	strhi	r0, [r8, -r1, asr #28]
 838:	41018e02 	tstmi	r1, r2, lsl #28
 83c:	0d41100e 	stcleq	0, cr1, [r1, #-56]	; 0xffffffc8
 840:	080e6407 	stmdaeq	lr, {r0, r1, r2, sl, sp, lr}
 844:	000d0d41 	andeq	r0, sp, r1, asr #26
 848:	0000000c 	andeq	r0, r0, ip
 84c:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
 850:	7c020001 	stcvc	0, cr0, [r2], {1}
 854:	000d0c0e 	andeq	r0, sp, lr, lsl #24
 858:	00000020 	andeq	r0, r0, r0, lsr #32
 85c:	00000848 	andeq	r0, r0, r8, asr #16
 860:	00000000 	andeq	r0, r0, r0
 864:	000000f0 	strdeq	r0, [r0], -r0	; <UNPREDICTABLE>
 868:	87080e41 	strhi	r0, [r8, -r1, asr #28]
 86c:	41018e02 	tstmi	r1, r2, lsl #28
 870:	0d41180e 	stcleq	8, cr1, [r1, #-56]	; 0xffffffc8
 874:	0e680207 	cdpeq	2, 6, cr0, cr8, cr7, {0}
 878:	0d0d4108 	stfeqs	f4, [sp, #-32]	; 0xffffffe0
 87c:	00000024 	andeq	r0, r0, r4, lsr #32
 880:	00000848 	andeq	r0, r0, r8, asr #16
 884:	00000000 	andeq	r0, r0, r0
 888:	000000b0 	strheq	r0, [r0], -r0	; <UNPREDICTABLE>
 88c:	87040e41 	strhi	r0, [r4, -r1, asr #28]
 890:	100e4101 	andne	r4, lr, r1, lsl #2
 894:	02070d41 	andeq	r0, r7, #4160	; 0x1040
 898:	41040e4c 	tstmi	r4, ip, asr #28
 89c:	c7410d0d 	strbgt	r0, [r1, -sp, lsl #26]
 8a0:	0000000e 	andeq	r0, r0, lr
 8a4:	00000024 	andeq	r0, r0, r4, lsr #32
 8a8:	00000848 	andeq	r0, r0, r8, asr #16
 8ac:	00000000 	andeq	r0, r0, r0
 8b0:	00000060 	andeq	r0, r0, r0, rrx
 8b4:	87040e41 	strhi	r0, [r4, -r1, asr #28]
 8b8:	100e4101 	andne	r4, lr, r1, lsl #2
 8bc:	63070d41 	movwvs	r0, #32065	; 0x7d41
 8c0:	0d41040e 	cfstrdeq	mvd0, [r1, #-56]	; 0xffffffc8
 8c4:	0ec7410d 	poleqs	f4, f7, #5.0
 8c8:	00000000 	andeq	r0, r0, r0
 8cc:	00000024 	andeq	r0, r0, r4, lsr #32
 8d0:	00000848 	andeq	r0, r0, r8, asr #16
 8d4:	00000000 	andeq	r0, r0, r0
 8d8:	00000220 	andeq	r0, r0, r0, lsr #4
 8dc:	87040e41 	strhi	r0, [r4, -r1, asr #28]
 8e0:	100e4101 	andne	r4, lr, r1, lsl #2
 8e4:	03070d41 	movweq	r0, #32065	; 0x7d41
 8e8:	040e0101 	streq	r0, [lr], #-257	; 0xfffffeff
 8ec:	410d0d41 	tstmi	sp, r1, asr #26
 8f0:	00000ec7 	andeq	r0, r0, r7, asr #29
 8f4:	00000024 	andeq	r0, r0, r4, lsr #32
 8f8:	00000848 	andeq	r0, r0, r8, asr #16
 8fc:	00000000 	andeq	r0, r0, r0
 900:	00000014 	andeq	r0, r0, r4, lsl r0
 904:	87040e41 	strhi	r0, [r4, -r1, asr #28]
 908:	100e4101 	andne	r4, lr, r1, lsl #2
 90c:	44070d41 	strmi	r0, [r7], #-3393	; 0xfffff2bf
 910:	0d41040e 	cfstrdeq	mvd0, [r1, #-56]	; 0xffffffc8
 914:	0ec7410d 	poleqs	f4, f7, #5.0
 918:	00000000 	andeq	r0, r0, r0
 91c:	00000024 	andeq	r0, r0, r4, lsr #32
 920:	00000848 	andeq	r0, r0, r8, asr #16
 924:	00000000 	andeq	r0, r0, r0
 928:	000000b8 	strheq	r0, [r0], -r8
 92c:	84100e41 	ldrhi	r0, [r0], #-3649	; 0xfffff1bf
 930:	87038504 	strhi	r8, [r3, -r4, lsl #10]
 934:	41018e02 	tstmi	r1, r2, lsl #28
 938:	0d41380e 	stcleq	8, cr3, [r1, #-56]	; 0xffffffc8
 93c:	0e510207 	cdpeq	2, 5, cr0, cr1, cr7, {0}
 940:	0d0d4110 	stfeqs	f4, [sp, #-64]	; 0xffffffc0
 944:	00000020 	andeq	r0, r0, r0, lsr #32
 948:	00000848 	andeq	r0, r0, r8, asr #16
 94c:	00000000 	andeq	r0, r0, r0
 950:	000001fc 	strdeq	r0, [r0], -ip
 954:	87080e41 	strhi	r0, [r8, -r1, asr #28]
 958:	41018e02 	tstmi	r1, r2, lsl #28
 95c:	0d41100e 	stcleq	0, cr1, [r1, #-56]	; 0xffffffc8
 960:	0ef70207 	cdpeq	2, 15, cr0, cr7, cr7, {0}
 964:	0d0d4108 	stfeqs	f4, [sp, #-32]	; 0xffffffe0
 968:	00000018 	andeq	r0, r0, r8, lsl r0
 96c:	00000848 	andeq	r0, r0, r8, asr #16
 970:	080006b0 	stmdaeq	r0, {r4, r5, r7, r9, sl}
 974:	00000038 	andeq	r0, r0, r8, lsr r0
 978:	87080e41 	strhi	r0, [r8, -r1, asr #28]
 97c:	41018e02 	tstmi	r1, r2, lsl #28
 980:	0000070d 	andeq	r0, r0, sp, lsl #14
 984:	00000018 	andeq	r0, r0, r8, lsl r0
 988:	00000848 	andeq	r0, r0, r8, asr #16
 98c:	080006e8 	stmdaeq	r0, {r3, r5, r6, r7, r9, sl}
 990:	00000038 	andeq	r0, r0, r8, lsr r0
 994:	87080e41 	strhi	r0, [r8, -r1, asr #28]
 998:	41018e02 	tstmi	r1, r2, lsl #28
 99c:	0000070d 	andeq	r0, r0, sp, lsl #14
 9a0:	00000018 	andeq	r0, r0, r8, lsl r0
 9a4:	00000848 	andeq	r0, r0, r8, asr #16
 9a8:	08000720 	stmdaeq	r0, {r5, r8, r9, sl}
 9ac:	0000003c 	andeq	r0, r0, ip, lsr r0
 9b0:	87080e41 	strhi	r0, [r8, -r1, asr #28]
 9b4:	41018e02 	tstmi	r1, r2, lsl #28
 9b8:	0000070d 	andeq	r0, r0, sp, lsl #14
 9bc:	00000024 	andeq	r0, r0, r4, lsr #32
 9c0:	00000848 	andeq	r0, r0, r8, asr #16
 9c4:	00000000 	andeq	r0, r0, r0
 9c8:	0000004c 	andeq	r0, r0, ip, asr #32
 9cc:	87040e41 	strhi	r0, [r4, -r1, asr #28]
 9d0:	180e4101 	stmdane	lr, {r0, r8, lr}
 9d4:	59070d41 	stmdbpl	r7, {r0, r6, r8, sl, fp}
 9d8:	0d41040e 	cfstrdeq	mvd0, [r1, #-56]	; 0xffffffc8
 9dc:	0ec7410d 	poleqs	f4, f7, #5.0
 9e0:	00000000 	andeq	r0, r0, r0
 9e4:	00000020 	andeq	r0, r0, r0, lsr #32
 9e8:	00000848 	andeq	r0, r0, r8, asr #16
 9ec:	00000000 	andeq	r0, r0, r0
 9f0:	00000040 	andeq	r0, r0, r0, asr #32
 9f4:	87080e41 	strhi	r0, [r8, -r1, asr #28]
 9f8:	41018e02 	tstmi	r1, r2, lsl #28
 9fc:	0d41180e 	stcleq	8, cr1, [r1, #-56]	; 0xffffffc8
 a00:	080e5b07 	stmdaeq	lr, {r0, r1, r2, r8, r9, fp, ip, lr}
 a04:	000d0d41 	andeq	r0, sp, r1, asr #26
 a08:	00000020 	andeq	r0, r0, r0, lsr #32
 a0c:	00000848 	andeq	r0, r0, r8, asr #16
 a10:	00000000 	andeq	r0, r0, r0
 a14:	00000042 	andeq	r0, r0, r2, asr #32
 a18:	87080e41 	strhi	r0, [r8, -r1, asr #28]
 a1c:	41018e02 	tstmi	r1, r2, lsl #28
 a20:	0d41180e 	stcleq	8, cr1, [r1, #-56]	; 0xffffffc8
 a24:	080e5c07 	stmdaeq	lr, {r0, r1, r2, sl, fp, ip, lr}
 a28:	000d0d41 	andeq	r0, sp, r1, asr #26
 a2c:	0000000c 	andeq	r0, r0, ip
 a30:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
 a34:	7c020001 	stcvc	0, cr0, [r2], {1}
 a38:	000d0c0e 	andeq	r0, sp, lr, lsl #24
 a3c:	00000024 	andeq	r0, r0, r4, lsr #32
 a40:	00000a2c 	andeq	r0, r0, ip, lsr #20
 a44:	00000000 	andeq	r0, r0, r0
 a48:	00000038 	andeq	r0, r0, r8, lsr r0
 a4c:	87040e41 	strhi	r0, [r4, -r1, asr #28]
 a50:	180e4101 	stmdane	lr, {r0, r8, lr}
 a54:	56070d41 	strpl	r0, [r7], -r1, asr #26
 a58:	0d41040e 	cfstrdeq	mvd0, [r1, #-56]	; 0xffffffc8
 a5c:	0ec7410d 	poleqs	f4, f7, #5.0
 a60:	00000000 	andeq	r0, r0, r0
 a64:	00000018 	andeq	r0, r0, r8, lsl r0
 a68:	00000a2c 	andeq	r0, r0, ip, lsr #20
 a6c:	0800075c 	stmdaeq	r0, {r2, r3, r4, r6, r8, r9, sl}
 a70:	0000006c 	andeq	r0, r0, ip, rrx
 a74:	87080e41 	strhi	r0, [r8, -r1, asr #28]
 a78:	41018e02 	tstmi	r1, r2, lsl #28
 a7c:	0000070d 	andeq	r0, r0, sp, lsl #14
 a80:	00000018 	andeq	r0, r0, r8, lsl r0
 a84:	00000a2c 	andeq	r0, r0, ip, lsr #20
 a88:	080007c8 	stmdaeq	r0, {r3, r6, r7, r8, r9, sl}
 a8c:	00000018 	andeq	r0, r0, r8, lsl r0
 a90:	87080e41 	strhi	r0, [r8, -r1, asr #28]
 a94:	41018e02 	tstmi	r1, r2, lsl #28
 a98:	0000070d 	andeq	r0, r0, sp, lsl #14
 a9c:	0000000c 	andeq	r0, r0, ip
 aa0:	00000a2c 	andeq	r0, r0, ip, lsr #20
 aa4:	080007e0 	stmdaeq	r0, {r5, r6, r7, r8, r9, sl}
 aa8:	00000014 	andeq	r0, r0, r4, lsl r0
 aac:	00000020 	andeq	r0, r0, r0, lsr #32
 ab0:	00000a2c 	andeq	r0, r0, ip, lsr #20
 ab4:	080007f4 	stmdaeq	r0, {r2, r4, r5, r6, r7, r8, r9, sl}
 ab8:	0000002c 	andeq	r0, r0, ip, lsr #32
 abc:	87080e41 	strhi	r0, [r8, -r1, asr #28]
 ac0:	41018e02 	tstmi	r1, r2, lsl #28
 ac4:	0d41180e 	stcleq	8, cr1, [r1, #-56]	; 0xffffffc8
 ac8:	080e5107 	stmdaeq	lr, {r0, r1, r2, r8, ip, lr}
 acc:	000d0d41 	andeq	r0, sp, r1, asr #26
 ad0:	0000001c 	andeq	r0, r0, ip, lsl r0
 ad4:	00000a2c 	andeq	r0, r0, ip, lsr #20
 ad8:	08000820 	stmdaeq	r0, {r5, fp}
 adc:	00000018 	andeq	r0, r0, r8, lsl r0
 ae0:	87040e41 	strhi	r0, [r4, -r1, asr #28]
 ae4:	070d4101 	streq	r4, [sp, -r1, lsl #2]
 ae8:	410d0d45 	tstmi	sp, r5, asr #26
 aec:	00000ec7 	andeq	r0, r0, r7, asr #29
 af0:	0000000c 	andeq	r0, r0, ip
 af4:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
 af8:	7c020001 	stcvc	0, cr0, [r2], {1}
 afc:	000d0c0e 	andeq	r0, sp, lr, lsl #24
 b00:	00000018 	andeq	r0, r0, r8, lsl r0
 b04:	00000af0 	strdeq	r0, [r0], -r0	; <UNPREDICTABLE>
 b08:	0800088c 	stmdaeq	r0, {r2, r3, r7, fp}
 b0c:	00000048 	andeq	r0, r0, r8, asr #32
 b10:	84100e41 	ldrhi	r0, [r0], #-3649	; 0xfffff1bf
 b14:	86038504 	strhi	r8, [r3], -r4, lsl #10
 b18:	00018e02 	andeq	r8, r1, r2, lsl #28

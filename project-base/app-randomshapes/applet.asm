
compiled/applet.elf:     file format elf32-littlearm


Disassembly of section .text:

d05a0010 <applet_entry>:
d05a0010:	b570      	push	{r4, r5, r6, lr}
d05a0012:	4e09      	ldr	r6, [pc, #36]	; (d05a0038 <applet_entry+0x28>)
d05a0014:	460d      	mov	r5, r1
d05a0016:	4604      	mov	r4, r0
d05a0018:	2100      	movs	r1, #0
d05a001a:	6833      	ldr	r3, [r6, #0]
d05a001c:	6898      	ldr	r0, [r3, #8]
d05a001e:	f001 fc39 	bl	d05a1894 <setbuf>
d05a0022:	6833      	ldr	r3, [r6, #0]
d05a0024:	2100      	movs	r1, #0
d05a0026:	68d8      	ldr	r0, [r3, #12]
d05a0028:	f001 fc34 	bl	d05a1894 <setbuf>
d05a002c:	4629      	mov	r1, r5
d05a002e:	4620      	mov	r0, r4
d05a0030:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
d05a0034:	f001 b8d0 	b.w	d05a11d8 <main>
d05a0038:	d05a2998 	.word	0xd05a2998

d05a003c <_write_r>:
d05a003c:	3901      	subs	r1, #1
d05a003e:	2901      	cmp	r1, #1
d05a0040:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d05a0042:	d81f      	bhi.n	d05a0084 <_write_r+0x48>
d05a0044:	b1e2      	cbz	r2, d05a0080 <_write_r+0x44>
d05a0046:	461c      	mov	r4, r3
d05a0048:	b1d3      	cbz	r3, d05a0080 <_write_r+0x44>
d05a004a:	4d12      	ldr	r5, [pc, #72]	; (d05a0094 <_write_r+0x58>)
d05a004c:	682e      	ldr	r6, [r5, #0]
d05a004e:	b9ae      	cbnz	r6, d05a007c <_write_r+0x40>
d05a0050:	4f11      	ldr	r7, [pc, #68]	; (d05a0098 <_write_r+0x5c>)
d05a0052:	2301      	movs	r3, #1
d05a0054:	4611      	mov	r1, r2
d05a0056:	4630      	mov	r0, r6
d05a0058:	602b      	str	r3, [r5, #0]
d05a005a:	4622      	mov	r2, r4
d05a005c:	7a3b      	ldrb	r3, [r7, #8]
d05a005e:	f897 c009 	ldrb.w	ip, [r7, #9]
d05a0062:	ea43 230c 	orr.w	r3, r3, ip, lsl #8
d05a0066:	f897 c00a 	ldrb.w	ip, [r7, #10]
d05a006a:	7aff      	ldrb	r7, [r7, #11]
d05a006c:	ea43 430c 	orr.w	r3, r3, ip, lsl #16
d05a0070:	ea43 6307 	orr.w	r3, r3, r7, lsl #24
d05a0074:	681b      	ldr	r3, [r3, #0]
d05a0076:	685b      	ldr	r3, [r3, #4]
d05a0078:	4798      	blx	r3
d05a007a:	602e      	str	r6, [r5, #0]
d05a007c:	4620      	mov	r0, r4
d05a007e:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d05a0080:	2000      	movs	r0, #0
d05a0082:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d05a0084:	f001 fbf8 	bl	d05a1878 <__errno>
d05a0088:	2209      	movs	r2, #9
d05a008a:	4603      	mov	r3, r0
d05a008c:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d05a0090:	601a      	str	r2, [r3, #0]
d05a0092:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d05a0094:	d05a2a04 	.word	0xd05a2a04
d05a0098:	2001f000 	.word	0x2001f000

d05a009c <_read>:
d05a009c:	b508      	push	{r3, lr}
d05a009e:	f001 fbeb 	bl	d05a1878 <__errno>
d05a00a2:	2258      	movs	r2, #88	; 0x58
d05a00a4:	4603      	mov	r3, r0
d05a00a6:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d05a00aa:	601a      	str	r2, [r3, #0]
d05a00ac:	bd08      	pop	{r3, pc}
d05a00ae:	bf00      	nop

d05a00b0 <_close>:
d05a00b0:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d05a00b4:	4770      	bx	lr
d05a00b6:	bf00      	nop

d05a00b8 <_fstat>:
d05a00b8:	f44f 5300 	mov.w	r3, #8192	; 0x2000
d05a00bc:	2000      	movs	r0, #0
d05a00be:	604b      	str	r3, [r1, #4]
d05a00c0:	4770      	bx	lr
d05a00c2:	bf00      	nop

d05a00c4 <_lseek>:
d05a00c4:	2000      	movs	r0, #0
d05a00c6:	4770      	bx	lr

d05a00c8 <_sbrk_r>:
d05a00c8:	4b0c      	ldr	r3, [pc, #48]	; (d05a00fc <_sbrk_r+0x34>)
d05a00ca:	4a0d      	ldr	r2, [pc, #52]	; (d05a0100 <_sbrk_r+0x38>)
d05a00cc:	6818      	ldr	r0, [r3, #0]
d05a00ce:	b510      	push	{r4, lr}
d05a00d0:	b918      	cbnz	r0, d05a00da <_sbrk_r+0x12>
d05a00d2:	1dd0      	adds	r0, r2, #7
d05a00d4:	f020 0007 	bic.w	r0, r0, #7
d05a00d8:	6018      	str	r0, [r3, #0]
d05a00da:	4401      	add	r1, r0
d05a00dc:	4c09      	ldr	r4, [pc, #36]	; (d05a0104 <_sbrk_r+0x3c>)
d05a00de:	42a1      	cmp	r1, r4
d05a00e0:	d803      	bhi.n	d05a00ea <_sbrk_r+0x22>
d05a00e2:	4291      	cmp	r1, r2
d05a00e4:	d301      	bcc.n	d05a00ea <_sbrk_r+0x22>
d05a00e6:	6019      	str	r1, [r3, #0]
d05a00e8:	bd10      	pop	{r4, pc}
d05a00ea:	f001 fbc5 	bl	d05a1878 <__errno>
d05a00ee:	220c      	movs	r2, #12
d05a00f0:	4603      	mov	r3, r0
d05a00f2:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d05a00f6:	601a      	str	r2, [r3, #0]
d05a00f8:	bd10      	pop	{r4, pc}
d05a00fa:	bf00      	nop
d05a00fc:	d05a2a00 	.word	0xd05a2a00
d05a0100:	d05b7cb8 	.word	0xd05b7cb8
d05a0104:	d0600000 	.word	0xd0600000

d05a0108 <on_menu_about>:
d05a0108:	4a0a      	ldr	r2, [pc, #40]	; (d05a0134 <on_menu_about+0x2c>)
d05a010a:	480b      	ldr	r0, [pc, #44]	; (d05a0138 <on_menu_about+0x30>)
d05a010c:	7a13      	ldrb	r3, [r2, #8]
d05a010e:	b410      	push	{r4}
d05a0110:	7a54      	ldrb	r4, [r2, #9]
d05a0112:	7a91      	ldrb	r1, [r2, #10]
d05a0114:	ea43 2304 	orr.w	r3, r3, r4, lsl #8
d05a0118:	7ad4      	ldrb	r4, [r2, #11]
d05a011a:	7800      	ldrb	r0, [r0, #0]
d05a011c:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d05a0120:	4a06      	ldr	r2, [pc, #24]	; (d05a013c <on_menu_about+0x34>)
d05a0122:	4907      	ldr	r1, [pc, #28]	; (d05a0140 <on_menu_about+0x38>)
d05a0124:	ea43 6304 	orr.w	r3, r3, r4, lsl #24
d05a0128:	f85d 4b04 	ldr.w	r4, [sp], #4
d05a012c:	691b      	ldr	r3, [r3, #16]
d05a012e:	691b      	ldr	r3, [r3, #16]
d05a0130:	4718      	bx	r3
d05a0132:	bf00      	nop
d05a0134:	2001f000 	.word	0x2001f000
d05a0138:	d05b5c28 	.word	0xd05b5c28
d05a013c:	d05a2818 	.word	0xd05a2818
d05a0140:	d05a283c 	.word	0xd05a283c

d05a0144 <set_status>:
d05a0144:	4b28      	ldr	r3, [pc, #160]	; (d05a01e8 <set_status+0xa4>)
d05a0146:	2160      	movs	r1, #96	; 0x60
d05a0148:	4828      	ldr	r0, [pc, #160]	; (d05a01ec <set_status+0xa8>)
d05a014a:	4a29      	ldr	r2, [pc, #164]	; (d05a01f0 <set_status+0xac>)
d05a014c:	b5f0      	push	{r4, r5, r6, r7, lr}
d05a014e:	4c29      	ldr	r4, [pc, #164]	; (d05a01f4 <set_status+0xb0>)
d05a0150:	b085      	sub	sp, #20
d05a0152:	781d      	ldrb	r5, [r3, #0]
d05a0154:	4b28      	ldr	r3, [pc, #160]	; (d05a01f8 <set_status+0xb4>)
d05a0156:	7800      	ldrb	r0, [r0, #0]
d05a0158:	6812      	ldr	r2, [r2, #0]
d05a015a:	2d00      	cmp	r5, #0
d05a015c:	bf08      	it	eq
d05a015e:	4623      	moveq	r3, r4
d05a0160:	4d26      	ldr	r5, [pc, #152]	; (d05a01fc <set_status+0xb8>)
d05a0162:	9001      	str	r0, [sp, #4]
d05a0164:	9200      	str	r2, [sp, #0]
d05a0166:	4826      	ldr	r0, [pc, #152]	; (d05a0200 <set_status+0xbc>)
d05a0168:	4a26      	ldr	r2, [pc, #152]	; (d05a0204 <set_status+0xc0>)
d05a016a:	f001 fc61 	bl	d05a1a30 <sniprintf>
d05a016e:	6828      	ldr	r0, [r5, #0]
d05a0170:	4c25      	ldr	r4, [pc, #148]	; (d05a0208 <set_status+0xc4>)
d05a0172:	b160      	cbz	r0, d05a018e <set_status+0x4a>
d05a0174:	7a23      	ldrb	r3, [r4, #8]
d05a0176:	7a62      	ldrb	r2, [r4, #9]
d05a0178:	7aa1      	ldrb	r1, [r4, #10]
d05a017a:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d05a017e:	7ae2      	ldrb	r2, [r4, #11]
d05a0180:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d05a0184:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d05a0188:	68db      	ldr	r3, [r3, #12]
d05a018a:	6d5b      	ldr	r3, [r3, #84]	; 0x54
d05a018c:	4798      	blx	r3
d05a018e:	7a22      	ldrb	r2, [r4, #8]
d05a0190:	f04f 0c21 	mov.w	ip, #33	; 0x21
d05a0194:	7a60      	ldrb	r0, [r4, #9]
d05a0196:	2710      	movs	r7, #16
d05a0198:	7aa1      	ldrb	r1, [r4, #10]
d05a019a:	f44f 73cc 	mov.w	r3, #408	; 0x198
d05a019e:	ea42 2200 	orr.w	r2, r2, r0, lsl #8
d05a01a2:	7ae0      	ldrb	r0, [r4, #11]
d05a01a4:	ea42 4201 	orr.w	r2, r2, r1, lsl #16
d05a01a8:	4915      	ldr	r1, [pc, #84]	; (d05a0200 <set_status+0xbc>)
d05a01aa:	ea42 6200 	orr.w	r2, r2, r0, lsl #24
d05a01ae:	4817      	ldr	r0, [pc, #92]	; (d05a020c <set_status+0xc8>)
d05a01b0:	68d6      	ldr	r6, [r2, #12]
d05a01b2:	22f4      	movs	r2, #244	; 0xf4
d05a01b4:	7800      	ldrb	r0, [r0, #0]
d05a01b6:	9101      	str	r1, [sp, #4]
d05a01b8:	210c      	movs	r1, #12
d05a01ba:	f8cd c008 	str.w	ip, [sp, #8]
d05a01be:	9700      	str	r7, [sp, #0]
d05a01c0:	69b6      	ldr	r6, [r6, #24]
d05a01c2:	47b0      	blx	r6
d05a01c4:	7a23      	ldrb	r3, [r4, #8]
d05a01c6:	7a62      	ldrb	r2, [r4, #9]
d05a01c8:	7aa1      	ldrb	r1, [r4, #10]
d05a01ca:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d05a01ce:	7ae2      	ldrb	r2, [r4, #11]
d05a01d0:	6028      	str	r0, [r5, #0]
d05a01d2:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d05a01d6:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d05a01da:	68db      	ldr	r3, [r3, #12]
d05a01dc:	6d9b      	ldr	r3, [r3, #88]	; 0x58
d05a01de:	b005      	add	sp, #20
d05a01e0:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
d05a01e4:	4718      	bx	r3
d05a01e6:	bf00      	nop
d05a01e8:	d05b5c38 	.word	0xd05b5c38
d05a01ec:	d05b5c20 	.word	0xd05b5c20
d05a01f0:	d05b5c2c 	.word	0xd05b5c2c
d05a01f4:	d05a2854 	.word	0xd05a2854
d05a01f8:	d05a284c 	.word	0xd05a284c
d05a01fc:	d05b5c9c 	.word	0xd05b5c9c
d05a0200:	d05b5c3c 	.word	0xd05b5c3c
d05a0204:	d05a285c 	.word	0xd05a285c
d05a0208:	2001f000 	.word	0x2001f000
d05a020c:	d05b5c28 	.word	0xd05b5c28

d05a0210 <set_paused_state>:
d05a0210:	b538      	push	{r3, r4, r5, lr}
d05a0212:	b148      	cbz	r0, d05a0228 <set_paused_state+0x18>
d05a0214:	4811      	ldr	r0, [pc, #68]	; (d05a025c <set_paused_state+0x4c>)
d05a0216:	2101      	movs	r1, #1
d05a0218:	4a11      	ldr	r2, [pc, #68]	; (d05a0260 <set_paused_state+0x50>)
d05a021a:	6803      	ldr	r3, [r0, #0]
d05a021c:	7011      	strb	r1, [r2, #0]
d05a021e:	b1cb      	cbz	r3, d05a0254 <set_paused_state+0x44>
d05a0220:	4c10      	ldr	r4, [pc, #64]	; (d05a0264 <set_paused_state+0x54>)
d05a0222:	2204      	movs	r2, #4
d05a0224:	2100      	movs	r1, #0
d05a0226:	e008      	b.n	d05a023a <set_paused_state+0x2a>
d05a0228:	4b0c      	ldr	r3, [pc, #48]	; (d05a025c <set_paused_state+0x4c>)
d05a022a:	490d      	ldr	r1, [pc, #52]	; (d05a0260 <set_paused_state+0x50>)
d05a022c:	681a      	ldr	r2, [r3, #0]
d05a022e:	7008      	strb	r0, [r1, #0]
d05a0230:	b182      	cbz	r2, d05a0254 <set_paused_state+0x44>
d05a0232:	4602      	mov	r2, r0
d05a0234:	4c0b      	ldr	r4, [pc, #44]	; (d05a0264 <set_paused_state+0x54>)
d05a0236:	4618      	mov	r0, r3
d05a0238:	2104      	movs	r1, #4
d05a023a:	7a23      	ldrb	r3, [r4, #8]
d05a023c:	7a65      	ldrb	r5, [r4, #9]
d05a023e:	ea43 2305 	orr.w	r3, r3, r5, lsl #8
d05a0242:	7aa5      	ldrb	r5, [r4, #10]
d05a0244:	7ae4      	ldrb	r4, [r4, #11]
d05a0246:	ea43 4305 	orr.w	r3, r3, r5, lsl #16
d05a024a:	ea43 6304 	orr.w	r3, r3, r4, lsl #24
d05a024e:	699b      	ldr	r3, [r3, #24]
d05a0250:	699b      	ldr	r3, [r3, #24]
d05a0252:	4798      	blx	r3
d05a0254:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
d05a0258:	f7ff bf74 	b.w	d05a0144 <set_status>
d05a025c:	d05b5c34 	.word	0xd05b5c34
d05a0260:	d05b5c38 	.word	0xd05b5c38
d05a0264:	2001f000 	.word	0x2001f000

d05a0268 <app_shutdown.part.0>:
d05a0268:	b570      	push	{r4, r5, r6, lr}
d05a026a:	4d28      	ldr	r5, [pc, #160]	; (d05a030c <app_shutdown.part.0+0xa4>)
d05a026c:	2200      	movs	r2, #0
d05a026e:	4b28      	ldr	r3, [pc, #160]	; (d05a0310 <app_shutdown.part.0+0xa8>)
d05a0270:	7828      	ldrb	r0, [r5, #0]
d05a0272:	4c28      	ldr	r4, [pc, #160]	; (d05a0314 <app_shutdown.part.0+0xac>)
d05a0274:	28ff      	cmp	r0, #255	; 0xff
d05a0276:	701a      	strb	r2, [r3, #0]
d05a0278:	d00e      	beq.n	d05a0298 <app_shutdown.part.0+0x30>
d05a027a:	7a23      	ldrb	r3, [r4, #8]
d05a027c:	7a62      	ldrb	r2, [r4, #9]
d05a027e:	7aa1      	ldrb	r1, [r4, #10]
d05a0280:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d05a0284:	7ae2      	ldrb	r2, [r4, #11]
d05a0286:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d05a028a:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d05a028e:	695b      	ldr	r3, [r3, #20]
d05a0290:	685b      	ldr	r3, [r3, #4]
d05a0292:	4798      	blx	r3
d05a0294:	23ff      	movs	r3, #255	; 0xff
d05a0296:	702b      	strb	r3, [r5, #0]
d05a0298:	4d1f      	ldr	r5, [pc, #124]	; (d05a0318 <app_shutdown.part.0+0xb0>)
d05a029a:	7828      	ldrb	r0, [r5, #0]
d05a029c:	b170      	cbz	r0, d05a02bc <app_shutdown.part.0+0x54>
d05a029e:	7a23      	ldrb	r3, [r4, #8]
d05a02a0:	7a61      	ldrb	r1, [r4, #9]
d05a02a2:	7aa2      	ldrb	r2, [r4, #10]
d05a02a4:	ea43 2101 	orr.w	r1, r3, r1, lsl #8
d05a02a8:	7ae3      	ldrb	r3, [r4, #11]
d05a02aa:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d05a02ae:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d05a02b2:	685b      	ldr	r3, [r3, #4]
d05a02b4:	685b      	ldr	r3, [r3, #4]
d05a02b6:	4798      	blx	r3
d05a02b8:	2300      	movs	r3, #0
d05a02ba:	702b      	strb	r3, [r5, #0]
d05a02bc:	4a17      	ldr	r2, [pc, #92]	; (d05a031c <app_shutdown.part.0+0xb4>)
d05a02be:	6810      	ldr	r0, [r2, #0]
d05a02c0:	b198      	cbz	r0, d05a02ea <app_shutdown.part.0+0x82>
d05a02c2:	7a23      	ldrb	r3, [r4, #8]
d05a02c4:	4610      	mov	r0, r2
d05a02c6:	7a61      	ldrb	r1, [r4, #9]
d05a02c8:	7aa2      	ldrb	r2, [r4, #10]
d05a02ca:	ea43 2101 	orr.w	r1, r3, r1, lsl #8
d05a02ce:	7ae3      	ldrb	r3, [r4, #11]
d05a02d0:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d05a02d4:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d05a02d8:	699b      	ldr	r3, [r3, #24]
d05a02da:	689b      	ldr	r3, [r3, #8]
d05a02dc:	4798      	blx	r3
d05a02de:	2300      	movs	r3, #0
d05a02e0:	490f      	ldr	r1, [pc, #60]	; (d05a0320 <app_shutdown.part.0+0xb8>)
d05a02e2:	4a10      	ldr	r2, [pc, #64]	; (d05a0324 <app_shutdown.part.0+0xbc>)
d05a02e4:	7828      	ldrb	r0, [r5, #0]
d05a02e6:	600b      	str	r3, [r1, #0]
d05a02e8:	6013      	str	r3, [r2, #0]
d05a02ea:	7a23      	ldrb	r3, [r4, #8]
d05a02ec:	2100      	movs	r1, #0
d05a02ee:	7a62      	ldrb	r2, [r4, #9]
d05a02f0:	7aa5      	ldrb	r5, [r4, #10]
d05a02f2:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d05a02f6:	7ae2      	ldrb	r2, [r4, #11]
d05a02f8:	ea43 4305 	orr.w	r3, r3, r5, lsl #16
d05a02fc:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d05a0300:	685b      	ldr	r3, [r3, #4]
d05a0302:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
d05a0306:	6a5b      	ldr	r3, [r3, #36]	; 0x24
d05a0308:	4718      	bx	r3
d05a030a:	bf00      	nop
d05a030c:	d05a2990 	.word	0xd05a2990
d05a0310:	d05a2a08 	.word	0xd05a2a08
d05a0314:	2001f000 	.word	0x2001f000
d05a0318:	d05b5c28 	.word	0xd05b5c28
d05a031c:	d05b5c24 	.word	0xd05b5c24
d05a0320:	d05b5c34 	.word	0xd05b5c34
d05a0324:	d05b5c30 	.word	0xd05b5c30

d05a0328 <on_close_clicked>:
d05a0328:	4b02      	ldr	r3, [pc, #8]	; (d05a0334 <on_close_clicked+0xc>)
d05a032a:	781b      	ldrb	r3, [r3, #0]
d05a032c:	b10b      	cbz	r3, d05a0332 <on_close_clicked+0xa>
d05a032e:	f7ff bf9b 	b.w	d05a0268 <app_shutdown.part.0>
d05a0332:	4770      	bx	lr
d05a0334:	d05a2a08 	.word	0xd05a2a08

d05a0338 <editor_proc>:
d05a0338:	2900      	cmp	r1, #0
d05a033a:	d039      	beq.n	d05a03b0 <editor_proc+0x78>
d05a033c:	680b      	ldr	r3, [r1, #0]
d05a033e:	2b20      	cmp	r3, #32
d05a0340:	b510      	push	{r4, lr}
d05a0342:	d018      	beq.n	d05a0376 <editor_proc+0x3e>
d05a0344:	2b70      	cmp	r3, #112	; 0x70
d05a0346:	d001      	beq.n	d05a034c <editor_proc+0x14>
d05a0348:	2000      	movs	r0, #0
d05a034a:	bd10      	pop	{r4, pc}
d05a034c:	68cb      	ldr	r3, [r1, #12]
d05a034e:	f5b3 6f10 	cmp.w	r3, #2304	; 0x900
d05a0352:	d1f9      	bne.n	d05a0348 <editor_proc+0x10>
d05a0354:	4b18      	ldr	r3, [pc, #96]	; (d05a03b8 <editor_proc+0x80>)
d05a0356:	690a      	ldr	r2, [r1, #16]
d05a0358:	681b      	ldr	r3, [r3, #0]
d05a035a:	429a      	cmp	r2, r3
d05a035c:	d1f4      	bne.n	d05a0348 <editor_proc+0x10>
d05a035e:	4b17      	ldr	r3, [pc, #92]	; (d05a03bc <editor_proc+0x84>)
d05a0360:	694a      	ldr	r2, [r1, #20]
d05a0362:	681b      	ldr	r3, [r3, #0]
d05a0364:	429a      	cmp	r2, r3
d05a0366:	d1ef      	bne.n	d05a0348 <editor_proc+0x10>
d05a0368:	4b15      	ldr	r3, [pc, #84]	; (d05a03c0 <editor_proc+0x88>)
d05a036a:	781b      	ldrb	r3, [r3, #0]
d05a036c:	b313      	cbz	r3, d05a03b4 <editor_proc+0x7c>
d05a036e:	f7ff ff7b 	bl	d05a0268 <app_shutdown.part.0>
d05a0372:	20f0      	movs	r0, #240	; 0xf0
d05a0374:	bd10      	pop	{r4, pc}
d05a0376:	68cb      	ldr	r3, [r1, #12]
d05a0378:	f5b3 5f80 	cmp.w	r3, #4096	; 0x1000
d05a037c:	d0f4      	beq.n	d05a0368 <editor_proc+0x30>
d05a037e:	f248 0204 	movw	r2, #32772	; 0x8004
d05a0382:	4293      	cmp	r3, r2
d05a0384:	d1e0      	bne.n	d05a0348 <editor_proc+0x10>
d05a0386:	4b0f      	ldr	r3, [pc, #60]	; (d05a03c4 <editor_proc+0x8c>)
d05a0388:	6818      	ldr	r0, [r3, #0]
d05a038a:	b168      	cbz	r0, d05a03a8 <editor_proc+0x70>
d05a038c:	4a0e      	ldr	r2, [pc, #56]	; (d05a03c8 <editor_proc+0x90>)
d05a038e:	7a13      	ldrb	r3, [r2, #8]
d05a0390:	7a54      	ldrb	r4, [r2, #9]
d05a0392:	7a91      	ldrb	r1, [r2, #10]
d05a0394:	ea43 2304 	orr.w	r3, r3, r4, lsl #8
d05a0398:	7ad2      	ldrb	r2, [r2, #11]
d05a039a:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d05a039e:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d05a03a2:	68db      	ldr	r3, [r3, #12]
d05a03a4:	6d9b      	ldr	r3, [r3, #88]	; 0x58
d05a03a6:	4798      	blx	r3
d05a03a8:	f7ff fecc 	bl	d05a0144 <set_status>
d05a03ac:	20f0      	movs	r0, #240	; 0xf0
d05a03ae:	bd10      	pop	{r4, pc}
d05a03b0:	4608      	mov	r0, r1
d05a03b2:	4770      	bx	lr
d05a03b4:	20f0      	movs	r0, #240	; 0xf0
d05a03b6:	bd10      	pop	{r4, pc}
d05a03b8:	d05b5c24 	.word	0xd05b5c24
d05a03bc:	d05b5c30 	.word	0xd05b5c30
d05a03c0:	d05a2a08 	.word	0xd05a2a08
d05a03c4:	d05a2a0c 	.word	0xd05a2a0c
d05a03c8:	2001f000 	.word	0x2001f000

d05a03cc <clear_demo>:
d05a03cc:	4b1d      	ldr	r3, [pc, #116]	; (d05a0444 <clear_demo+0x78>)
d05a03ce:	f44f 3299 	mov.w	r2, #78336	; 0x13200
d05a03d2:	481d      	ldr	r0, [pc, #116]	; (d05a0448 <clear_demo+0x7c>)
d05a03d4:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
d05a03d8:	7819      	ldrb	r1, [r3, #0]
d05a03da:	2500      	movs	r5, #0
d05a03dc:	4f1b      	ldr	r7, [pc, #108]	; (d05a044c <clear_demo+0x80>)
d05a03de:	3111      	adds	r1, #17
d05a03e0:	f8df 8074 	ldr.w	r8, [pc, #116]	; d05a0458 <clear_demo+0x8c>
d05a03e4:	f507 694c 	add.w	r9, r7, #3264	; 0xcc0
d05a03e8:	b2c9      	uxtb	r1, r1
d05a03ea:	f001 fa4b 	bl	d05a1884 <memset>
d05a03ee:	022e      	lsls	r6, r5, #8
d05a03f0:	462b      	mov	r3, r5
d05a03f2:	eb07 0a05 	add.w	sl, r7, r5
d05a03f6:	3501      	adds	r5, #1
d05a03f8:	fba8 2606 	umull	r2, r6, r8, r6
d05a03fc:	eb09 0403 	add.w	r4, r9, r3
d05a0400:	0a36      	lsrs	r6, r6, #8
d05a0402:	4650      	mov	r0, sl
d05a0404:	f50a 7acc 	add.w	sl, sl, #408	; 0x198
d05a0408:	2201      	movs	r2, #1
d05a040a:	4631      	mov	r1, r6
d05a040c:	f001 fa3a 	bl	d05a1884 <memset>
d05a0410:	45a2      	cmp	sl, r4
d05a0412:	d1f6      	bne.n	d05a0402 <clear_demo+0x36>
d05a0414:	f5b5 7fcc 	cmp.w	r5, #408	; 0x198
d05a0418:	d1e9      	bne.n	d05a03ee <clear_demo+0x22>
d05a041a:	4b0d      	ldr	r3, [pc, #52]	; (d05a0450 <clear_demo+0x84>)
d05a041c:	6818      	ldr	r0, [r3, #0]
d05a041e:	b168      	cbz	r0, d05a043c <clear_demo+0x70>
d05a0420:	4a0c      	ldr	r2, [pc, #48]	; (d05a0454 <clear_demo+0x88>)
d05a0422:	7a13      	ldrb	r3, [r2, #8]
d05a0424:	7a54      	ldrb	r4, [r2, #9]
d05a0426:	7a91      	ldrb	r1, [r2, #10]
d05a0428:	ea43 2304 	orr.w	r3, r3, r4, lsl #8
d05a042c:	7ad2      	ldrb	r2, [r2, #11]
d05a042e:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d05a0432:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d05a0436:	68db      	ldr	r3, [r3, #12]
d05a0438:	6d9b      	ldr	r3, [r3, #88]	; 0x58
d05a043a:	4798      	blx	r3
d05a043c:	e8bd 47f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
d05a0440:	f7ff be80 	b.w	d05a0144 <set_status>
d05a0444:	d05b5c20 	.word	0xd05b5c20
d05a0448:	d05a2a20 	.word	0xd05a2a20
d05a044c:	d05b4f60 	.word	0xd05b4f60
d05a0450:	d05a2a0c 	.word	0xd05a2a0c
d05a0454:	2001f000 	.word	0x2001f000
d05a0458:	a0a0a0a1 	.word	0xa0a0a0a1

d05a045c <on_clear_clicked>:
d05a045c:	f7ff bfb6 	b.w	d05a03cc <clear_demo>

d05a0460 <on_menu_clear>:
d05a0460:	f7ff bfb4 	b.w	d05a03cc <clear_demo>

d05a0464 <on_pause_clicked>:
d05a0464:	b538      	push	{r3, r4, r5, lr}
d05a0466:	4b11      	ldr	r3, [pc, #68]	; (d05a04ac <on_pause_clicked+0x48>)
d05a0468:	4811      	ldr	r0, [pc, #68]	; (d05a04b0 <on_pause_clicked+0x4c>)
d05a046a:	7819      	ldrb	r1, [r3, #0]
d05a046c:	b931      	cbnz	r1, d05a047c <on_pause_clicked+0x18>
d05a046e:	2401      	movs	r4, #1
d05a0470:	6802      	ldr	r2, [r0, #0]
d05a0472:	701c      	strb	r4, [r3, #0]
d05a0474:	b1aa      	cbz	r2, d05a04a2 <on_pause_clicked+0x3e>
d05a0476:	4c0f      	ldr	r4, [pc, #60]	; (d05a04b4 <on_pause_clicked+0x50>)
d05a0478:	2204      	movs	r2, #4
d05a047a:	e005      	b.n	d05a0488 <on_pause_clicked+0x24>
d05a047c:	2200      	movs	r2, #0
d05a047e:	6801      	ldr	r1, [r0, #0]
d05a0480:	701a      	strb	r2, [r3, #0]
d05a0482:	b171      	cbz	r1, d05a04a2 <on_pause_clicked+0x3e>
d05a0484:	4c0b      	ldr	r4, [pc, #44]	; (d05a04b4 <on_pause_clicked+0x50>)
d05a0486:	2104      	movs	r1, #4
d05a0488:	7a23      	ldrb	r3, [r4, #8]
d05a048a:	7a65      	ldrb	r5, [r4, #9]
d05a048c:	ea43 2305 	orr.w	r3, r3, r5, lsl #8
d05a0490:	7aa5      	ldrb	r5, [r4, #10]
d05a0492:	7ae4      	ldrb	r4, [r4, #11]
d05a0494:	ea43 4305 	orr.w	r3, r3, r5, lsl #16
d05a0498:	ea43 6304 	orr.w	r3, r3, r4, lsl #24
d05a049c:	699b      	ldr	r3, [r3, #24]
d05a049e:	699b      	ldr	r3, [r3, #24]
d05a04a0:	4798      	blx	r3
d05a04a2:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
d05a04a6:	f7ff be4d 	b.w	d05a0144 <set_status>
d05a04aa:	bf00      	nop
d05a04ac:	d05b5c38 	.word	0xd05b5c38
d05a04b0:	d05b5c34 	.word	0xd05b5c34
d05a04b4:	2001f000 	.word	0x2001f000

d05a04b8 <on_menu_pause>:
d05a04b8:	b538      	push	{r3, r4, r5, lr}
d05a04ba:	4b11      	ldr	r3, [pc, #68]	; (d05a0500 <on_menu_pause+0x48>)
d05a04bc:	4811      	ldr	r0, [pc, #68]	; (d05a0504 <on_menu_pause+0x4c>)
d05a04be:	7819      	ldrb	r1, [r3, #0]
d05a04c0:	b931      	cbnz	r1, d05a04d0 <on_menu_pause+0x18>
d05a04c2:	2401      	movs	r4, #1
d05a04c4:	6802      	ldr	r2, [r0, #0]
d05a04c6:	701c      	strb	r4, [r3, #0]
d05a04c8:	b1aa      	cbz	r2, d05a04f6 <on_menu_pause+0x3e>
d05a04ca:	4c0f      	ldr	r4, [pc, #60]	; (d05a0508 <on_menu_pause+0x50>)
d05a04cc:	2204      	movs	r2, #4
d05a04ce:	e005      	b.n	d05a04dc <on_menu_pause+0x24>
d05a04d0:	2200      	movs	r2, #0
d05a04d2:	6801      	ldr	r1, [r0, #0]
d05a04d4:	701a      	strb	r2, [r3, #0]
d05a04d6:	b171      	cbz	r1, d05a04f6 <on_menu_pause+0x3e>
d05a04d8:	4c0b      	ldr	r4, [pc, #44]	; (d05a0508 <on_menu_pause+0x50>)
d05a04da:	2104      	movs	r1, #4
d05a04dc:	7a23      	ldrb	r3, [r4, #8]
d05a04de:	7a65      	ldrb	r5, [r4, #9]
d05a04e0:	ea43 2305 	orr.w	r3, r3, r5, lsl #8
d05a04e4:	7aa5      	ldrb	r5, [r4, #10]
d05a04e6:	7ae4      	ldrb	r4, [r4, #11]
d05a04e8:	ea43 4305 	orr.w	r3, r3, r5, lsl #16
d05a04ec:	ea43 6304 	orr.w	r3, r3, r4, lsl #24
d05a04f0:	699b      	ldr	r3, [r3, #24]
d05a04f2:	699b      	ldr	r3, [r3, #24]
d05a04f4:	4798      	blx	r3
d05a04f6:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
d05a04fa:	f7ff be23 	b.w	d05a0144 <set_status>
d05a04fe:	bf00      	nop
d05a0500:	d05b5c38 	.word	0xd05b5c38
d05a0504:	d05b5c34 	.word	0xd05b5c34
d05a0508:	2001f000 	.word	0x2001f000

d05a050c <draw_random_shape>:
d05a050c:	4ac3      	ldr	r2, [pc, #780]	; (d05a081c <draw_random_shape+0x310>)
d05a050e:	49c4      	ldr	r1, [pc, #784]	; (d05a0820 <draw_random_shape+0x314>)
d05a0510:	6813      	ldr	r3, [r2, #0]
d05a0512:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d05a0516:	ea83 3343 	eor.w	r3, r3, r3, lsl #13
d05a051a:	f891 b000 	ldrb.w	fp, [r1]
d05a051e:	b08d      	sub	sp, #52	; 0x34
d05a0520:	f10b 0001 	add.w	r0, fp, #1
d05a0524:	ea83 4353 	eor.w	r3, r3, r3, lsr #17
d05a0528:	7008      	strb	r0, [r1, #0]
d05a052a:	f003 0003 	and.w	r0, r3, #3
d05a052e:	ea83 1143 	eor.w	r1, r3, r3, lsl #5
d05a0532:	2802      	cmp	r0, #2
d05a0534:	f000 8088 	beq.w	d05a0648 <draw_random_shape+0x13c>
d05a0538:	2803      	cmp	r0, #3
d05a053a:	ea81 3141 	eor.w	r1, r1, r1, lsl #13
d05a053e:	f000 8183 	beq.w	d05a0848 <draw_random_shape+0x33c>
d05a0542:	2801      	cmp	r0, #1
d05a0544:	f000 827e 	beq.w	d05a0a44 <draw_random_shape+0x538>
d05a0548:	ea81 4151 	eor.w	r1, r1, r1, lsr #17
d05a054c:	4bb5      	ldr	r3, [pc, #724]	; (d05a0824 <draw_random_shape+0x318>)
d05a054e:	4eb6      	ldr	r6, [pc, #728]	; (d05a0828 <draw_random_shape+0x31c>)
d05a0550:	f240 15a9 	movw	r5, #425	; 0x1a9
d05a0554:	ea81 1141 	eor.w	r1, r1, r1, lsl #5
d05a0558:	4cb4      	ldr	r4, [pc, #720]	; (d05a082c <draw_random_shape+0x320>)
d05a055a:	48b5      	ldr	r0, [pc, #724]	; (d05a0830 <draw_random_shape+0x324>)
d05a055c:	ea81 3741 	eor.w	r7, r1, r1, lsl #13
d05a0560:	fba3 c301 	umull	ip, r3, r3, r1
d05a0564:	ea87 4757 	eor.w	r7, r7, r7, lsr #17
d05a0568:	eba1 0c03 	sub.w	ip, r1, r3
d05a056c:	ea87 1747 	eor.w	r7, r7, r7, lsl #5
d05a0570:	eb03 035c 	add.w	r3, r3, ip, lsr #1
d05a0574:	ea87 3e47 	eor.w	lr, r7, r7, lsl #13
d05a0578:	fba6 6c07 	umull	r6, ip, r6, r7
d05a057c:	0a1b      	lsrs	r3, r3, #8
d05a057e:	ea8e 465e 	eor.w	r6, lr, lr, lsr #17
d05a0582:	fb05 1113 	mls	r1, r5, r3, r1
d05a0586:	ea4f 0c5c 	mov.w	ip, ip, lsr #1
d05a058a:	ea86 1646 	eor.w	r6, r6, r6, lsl #5
d05a058e:	25c9      	movs	r5, #201	; 0xc9
d05a0590:	b289      	uxth	r1, r1
d05a0592:	ea86 3346 	eor.w	r3, r6, r6, lsl #13
d05a0596:	fb05 771c 	mls	r7, r5, ip, r7
d05a059a:	fba0 e006 	umull	lr, r0, r0, r6
d05a059e:	ea83 4353 	eor.w	r3, r3, r3, lsr #17
d05a05a2:	0980      	lsrs	r0, r0, #6
d05a05a4:	ea83 1543 	eor.w	r5, r3, r3, lsl #5
d05a05a8:	eb00 00c0 	add.w	r0, r0, r0, lsl #3
d05a05ac:	fba4 4305 	umull	r4, r3, r4, r5
d05a05b0:	b2bc      	uxth	r4, r7
d05a05b2:	eb00 00c0 	add.w	r0, r0, r0, lsl #3
d05a05b6:	6015      	str	r5, [r2, #0]
d05a05b8:	1aef      	subs	r7, r5, r3
d05a05ba:	f1a1 0210 	sub.w	r2, r1, #16
d05a05be:	1a30      	subs	r0, r6, r0
d05a05c0:	eb03 0357 	add.w	r3, r3, r7, lsr #1
d05a05c4:	4402      	add	r2, r0
d05a05c6:	f1a4 0010 	sub.w	r0, r4, #16
d05a05ca:	095b      	lsrs	r3, r3, #5
d05a05cc:	b212      	sxth	r2, r2
d05a05ce:	ebc3 06c3 	rsb	r6, r3, r3, lsl #3
d05a05d2:	2a00      	cmp	r2, #0
d05a05d4:	eb03 03c6 	add.w	r3, r3, r6, lsl #3
d05a05d8:	eba5 0303 	sub.w	r3, r5, r3
d05a05dc:	4403      	add	r3, r0
d05a05de:	b21b      	sxth	r3, r3
d05a05e0:	dd2f      	ble.n	d05a0642 <draw_random_shape+0x136>
d05a05e2:	2b00      	cmp	r3, #0
d05a05e4:	dd2d      	ble.n	d05a0642 <draw_random_shape+0x136>
d05a05e6:	f1a4 0618 	sub.w	r6, r4, #24
d05a05ea:	2bc0      	cmp	r3, #192	; 0xc0
d05a05ec:	f1a1 0118 	sub.w	r1, r1, #24
d05a05f0:	b236      	sxth	r6, r6
d05a05f2:	bfa8      	it	ge
d05a05f4:	23c0      	movge	r3, #192	; 0xc0
d05a05f6:	f5b2 7fcc 	cmp.w	r2, #408	; 0x198
d05a05fa:	b209      	sxth	r1, r1
d05a05fc:	ea26 76e6 	bic.w	r6, r6, r6, asr #31
d05a0600:	bfa8      	it	ge
d05a0602:	f44f 72cc 	movge.w	r2, #408	; 0x198
d05a0606:	ea21 71e1 	bic.w	r1, r1, r1, asr #31
d05a060a:	429e      	cmp	r6, r3
d05a060c:	da19      	bge.n	d05a0642 <draw_random_shape+0x136>
d05a060e:	f44f 70cc 	mov.w	r0, #408	; 0x198
d05a0612:	f8df c22c 	ldr.w	ip, [pc, #556]	; d05a0840 <draw_random_shape+0x334>
d05a0616:	43f7      	mvns	r7, r6
d05a0618:	1a55      	subs	r5, r2, r1
d05a061a:	fb16 1400 	smlabb	r4, r6, r0, r1
d05a061e:	eb0c 0200 	add.w	r2, ip, r0
d05a0622:	443b      	add	r3, r7
d05a0624:	4411      	add	r1, r2
d05a0626:	4464      	add	r4, ip
d05a0628:	fa16 f383 	uxtah	r3, r6, r3
d05a062c:	fb00 1603 	mla	r6, r0, r3, r1
d05a0630:	4620      	mov	r0, r4
d05a0632:	f504 74cc 	add.w	r4, r4, #408	; 0x198
d05a0636:	462a      	mov	r2, r5
d05a0638:	4659      	mov	r1, fp
d05a063a:	f001 f923 	bl	d05a1884 <memset>
d05a063e:	42b4      	cmp	r4, r6
d05a0640:	d1f6      	bne.n	d05a0630 <draw_random_shape+0x124>
d05a0642:	b00d      	add	sp, #52	; 0x34
d05a0644:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d05a0648:	ea81 3141 	eor.w	r1, r1, r1, lsl #13
d05a064c:	4879      	ldr	r0, [pc, #484]	; (d05a0834 <draw_random_shape+0x328>)
d05a064e:	f44f 77cc 	mov.w	r7, #408	; 0x198
d05a0652:	f8df c1f0 	ldr.w	ip, [pc, #496]	; d05a0844 <draw_random_shape+0x338>
d05a0656:	ea81 4151 	eor.w	r1, r1, r1, lsr #17
d05a065a:	26b8      	movs	r6, #184	; 0xb8
d05a065c:	4d76      	ldr	r5, [pc, #472]	; (d05a0838 <draw_random_shape+0x32c>)
d05a065e:	ea81 1141 	eor.w	r1, r1, r1, lsl #5
d05a0662:	ea81 3341 	eor.w	r3, r1, r1, lsl #13
d05a0666:	fba0 e401 	umull	lr, r4, r0, r1
d05a066a:	ea83 4353 	eor.w	r3, r3, r3, lsr #17
d05a066e:	0a24      	lsrs	r4, r4, #8
d05a0670:	ea83 1343 	eor.w	r3, r3, r3, lsl #5
d05a0674:	fb07 1414 	mls	r4, r7, r4, r1
d05a0678:	ea83 3143 	eor.w	r1, r3, r3, lsl #13
d05a067c:	fbac ea03 	umull	lr, sl, ip, r3
d05a0680:	ea81 4151 	eor.w	r1, r1, r1, lsr #17
d05a0684:	ea4f 1ada 	mov.w	sl, sl, lsr #7
d05a0688:	ea81 1141 	eor.w	r1, r1, r1, lsl #5
d05a068c:	fb06 3a1a 	mls	sl, r6, sl, r3
d05a0690:	ea81 3341 	eor.w	r3, r1, r1, lsl #13
d05a0694:	fba0 e001 	umull	lr, r0, r0, r1
d05a0698:	ea83 4353 	eor.w	r3, r3, r3, lsr #17
d05a069c:	0a00      	lsrs	r0, r0, #8
d05a069e:	ea83 1343 	eor.w	r3, r3, r3, lsl #5
d05a06a2:	fb07 1010 	mls	r0, r7, r0, r1
d05a06a6:	b221      	sxth	r1, r4
d05a06a8:	ea83 3743 	eor.w	r7, r3, r3, lsl #13
d05a06ac:	9101      	str	r1, [sp, #4]
d05a06ae:	b2a4      	uxth	r4, r4
d05a06b0:	fbac c103 	umull	ip, r1, ip, r3
d05a06b4:	ea87 4757 	eor.w	r7, r7, r7, lsr #17
d05a06b8:	09c9      	lsrs	r1, r1, #7
d05a06ba:	ea87 1747 	eor.w	r7, r7, r7, lsl #5
d05a06be:	fb06 3111 	mls	r1, r6, r1, r3
d05a06c2:	b206      	sxth	r6, r0
d05a06c4:	fba5 3507 	umull	r3, r5, r5, r7
d05a06c8:	b280      	uxth	r0, r0
d05a06ca:	6017      	str	r7, [r2, #0]
d05a06cc:	b28a      	uxth	r2, r1
d05a06ce:	f025 0303 	bic.w	r3, r5, #3
d05a06d2:	b209      	sxth	r1, r1
d05a06d4:	9609      	str	r6, [sp, #36]	; 0x24
d05a06d6:	eb03 0595 	add.w	r5, r3, r5, lsr #2
d05a06da:	9104      	str	r1, [sp, #16]
d05a06dc:	fa1f f18a 	uxth.w	r1, sl
d05a06e0:	1b7f      	subs	r7, r7, r5
d05a06e2:	9d01      	ldr	r5, [sp, #4]
d05a06e4:	fa0f fa8a 	sxth.w	sl, sl
d05a06e8:	3701      	adds	r7, #1
d05a06ea:	42ae      	cmp	r6, r5
d05a06ec:	b2bb      	uxth	r3, r7
d05a06ee:	b2ff      	uxtb	r7, r7
d05a06f0:	f340 8214 	ble.w	d05a0b1c <draw_random_shape+0x610>
d05a06f4:	1b00      	subs	r0, r0, r4
d05a06f6:	2401      	movs	r4, #1
d05a06f8:	940a      	str	r4, [sp, #40]	; 0x28
d05a06fa:	b284      	uxth	r4, r0
d05a06fc:	b200      	sxth	r0, r0
d05a06fe:	9406      	str	r4, [sp, #24]
d05a0700:	9007      	str	r0, [sp, #28]
d05a0702:	9804      	ldr	r0, [sp, #16]
d05a0704:	4550      	cmp	r0, sl
d05a0706:	f340 8205 	ble.w	d05a0b14 <draw_random_shape+0x608>
d05a070a:	1a8a      	subs	r2, r1, r2
d05a070c:	2101      	movs	r1, #1
d05a070e:	910b      	str	r1, [sp, #44]	; 0x2c
d05a0710:	b291      	uxth	r1, r2
d05a0712:	b212      	sxth	r2, r2
d05a0714:	f8bd 9004 	ldrh.w	r9, [sp, #4]
d05a0718:	9105      	str	r1, [sp, #20]
d05a071a:	087f      	lsrs	r7, r7, #1
d05a071c:	9208      	str	r2, [sp, #32]
d05a071e:	460a      	mov	r2, r1
d05a0720:	9906      	ldr	r1, [sp, #24]
d05a0722:	fa1f f88a 	uxth.w	r8, sl
d05a0726:	1856      	adds	r6, r2, r1
d05a0728:	4659      	mov	r1, fp
d05a072a:	469b      	mov	fp, r3
d05a072c:	4653      	mov	r3, sl
d05a072e:	b236      	sxth	r6, r6
d05a0730:	46ba      	mov	sl, r7
d05a0732:	4637      	mov	r7, r6
d05a0734:	eba9 040a 	sub.w	r4, r9, sl
d05a0738:	eba8 000a 	sub.w	r0, r8, sl
d05a073c:	b2a4      	uxth	r4, r4
d05a073e:	b280      	uxth	r0, r0
d05a0740:	eb04 060b 	add.w	r6, r4, fp
d05a0744:	eb00 0c0b 	add.w	ip, r0, fp
d05a0748:	b236      	sxth	r6, r6
d05a074a:	fa0f fc8c 	sxth.w	ip, ip
d05a074e:	2e00      	cmp	r6, #0
d05a0750:	dd40      	ble.n	d05a07d4 <draw_random_shape+0x2c8>
d05a0752:	f1bc 0f00 	cmp.w	ip, #0
d05a0756:	dd3d      	ble.n	d05a07d4 <draw_random_shape+0x2c8>
d05a0758:	b224      	sxth	r4, r4
d05a075a:	f240 1297 	movw	r2, #407	; 0x197
d05a075e:	b200      	sxth	r0, r0
d05a0760:	4294      	cmp	r4, r2
d05a0762:	dc37      	bgt.n	d05a07d4 <draw_random_shape+0x2c8>
d05a0764:	28bf      	cmp	r0, #191	; 0xbf
d05a0766:	dc35      	bgt.n	d05a07d4 <draw_random_shape+0x2c8>
d05a0768:	f1bc 0fc0 	cmp.w	ip, #192	; 0xc0
d05a076c:	ea20 70e0 	bic.w	r0, r0, r0, asr #31
d05a0770:	ea24 74e4 	bic.w	r4, r4, r4, asr #31
d05a0774:	bfa8      	it	ge
d05a0776:	f04f 0cc0 	movge.w	ip, #192	; 0xc0
d05a077a:	f5b6 7fcc 	cmp.w	r6, #408	; 0x198
d05a077e:	bfa8      	it	ge
d05a0780:	f44f 76cc 	movge.w	r6, #408	; 0x198
d05a0784:	4560      	cmp	r0, ip
d05a0786:	da25      	bge.n	d05a07d4 <draw_random_shape+0x2c8>
d05a0788:	ebac 0c00 	sub.w	ip, ip, r0
d05a078c:	f44f 7ecc 	mov.w	lr, #408	; 0x198
d05a0790:	4a2a      	ldr	r2, [pc, #168]	; (d05a083c <draw_random_shape+0x330>)
d05a0792:	1b36      	subs	r6, r6, r4
d05a0794:	f10c 35ff 	add.w	r5, ip, #4294967295	; 0xffffffff
d05a0798:	f8cd 800c 	str.w	r8, [sp, #12]
d05a079c:	4422      	add	r2, r4
d05a079e:	46b8      	mov	r8, r7
d05a07a0:	fb10 440e 	smlabb	r4, r0, lr, r4
d05a07a4:	fa10 f085 	uxtah	r0, r0, r5
d05a07a8:	4d25      	ldr	r5, [pc, #148]	; (d05a0840 <draw_random_shape+0x334>)
d05a07aa:	461f      	mov	r7, r3
d05a07ac:	442c      	add	r4, r5
d05a07ae:	fb0e 2500 	mla	r5, lr, r0, r2
d05a07b2:	4632      	mov	r2, r6
d05a07b4:	460e      	mov	r6, r1
d05a07b6:	4620      	mov	r0, r4
d05a07b8:	f504 74cc 	add.w	r4, r4, #408	; 0x198
d05a07bc:	4631      	mov	r1, r6
d05a07be:	9202      	str	r2, [sp, #8]
d05a07c0:	f001 f860 	bl	d05a1884 <memset>
d05a07c4:	42ac      	cmp	r4, r5
d05a07c6:	9a02      	ldr	r2, [sp, #8]
d05a07c8:	d1f5      	bne.n	d05a07b6 <draw_random_shape+0x2aa>
d05a07ca:	463b      	mov	r3, r7
d05a07cc:	4631      	mov	r1, r6
d05a07ce:	4647      	mov	r7, r8
d05a07d0:	f8dd 800c 	ldr.w	r8, [sp, #12]
d05a07d4:	9a01      	ldr	r2, [sp, #4]
d05a07d6:	9809      	ldr	r0, [sp, #36]	; 0x24
d05a07d8:	4282      	cmp	r2, r0
d05a07da:	d103      	bne.n	d05a07e4 <draw_random_shape+0x2d8>
d05a07dc:	9a04      	ldr	r2, [sp, #16]
d05a07de:	4293      	cmp	r3, r2
d05a07e0:	f43f af2f 	beq.w	d05a0642 <draw_random_shape+0x136>
d05a07e4:	007a      	lsls	r2, r7, #1
d05a07e6:	9808      	ldr	r0, [sp, #32]
d05a07e8:	b212      	sxth	r2, r2
d05a07ea:	4282      	cmp	r2, r0
d05a07ec:	db09      	blt.n	d05a0802 <draw_random_shape+0x2f6>
d05a07ee:	9805      	ldr	r0, [sp, #20]
d05a07f0:	4407      	add	r7, r0
d05a07f2:	980a      	ldr	r0, [sp, #40]	; 0x28
d05a07f4:	4481      	add	r9, r0
d05a07f6:	b23f      	sxth	r7, r7
d05a07f8:	fa0f f089 	sxth.w	r0, r9
d05a07fc:	fa1f f989 	uxth.w	r9, r9
d05a0800:	9001      	str	r0, [sp, #4]
d05a0802:	9807      	ldr	r0, [sp, #28]
d05a0804:	4282      	cmp	r2, r0
d05a0806:	dc95      	bgt.n	d05a0734 <draw_random_shape+0x228>
d05a0808:	9b06      	ldr	r3, [sp, #24]
d05a080a:	441f      	add	r7, r3
d05a080c:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
d05a080e:	4498      	add	r8, r3
d05a0810:	b23f      	sxth	r7, r7
d05a0812:	fa0f f388 	sxth.w	r3, r8
d05a0816:	fa1f f888 	uxth.w	r8, r8
d05a081a:	e78b      	b.n	d05a0734 <draw_random_shape+0x228>
d05a081c:	d05a2994 	.word	0xd05a2994
d05a0820:	d05b5c20 	.word	0xd05b5c20
d05a0824:	34679acf 	.word	0x34679acf
d05a0828:	028c1979 	.word	0x028c1979
d05a082c:	1f7047dd 	.word	0x1f7047dd
d05a0830:	ca4587e7 	.word	0xca4587e7
d05a0834:	a0a0a0a1 	.word	0xa0a0a0a1
d05a0838:	cccccccd 	.word	0xcccccccd
d05a083c:	d05a2bb8 	.word	0xd05a2bb8
d05a0840:	d05a2a20 	.word	0xd05a2a20
d05a0844:	b21642c9 	.word	0xb21642c9
d05a0848:	ea81 4151 	eor.w	r1, r1, r1, lsr #17
d05a084c:	4bc2      	ldr	r3, [pc, #776]	; (d05a0b58 <draw_random_shape+0x64c>)
d05a084e:	f44f 7ccc 	mov.w	ip, #408	; 0x198
d05a0852:	4dc2      	ldr	r5, [pc, #776]	; (d05a0b5c <draw_random_shape+0x650>)
d05a0854:	ea81 1141 	eor.w	r1, r1, r1, lsl #5
d05a0858:	20b8      	movs	r0, #184	; 0xb8
d05a085a:	ea81 3441 	eor.w	r4, r1, r1, lsl #13
d05a085e:	fba3 7601 	umull	r7, r6, r3, r1
d05a0862:	ea84 4454 	eor.w	r4, r4, r4, lsr #17
d05a0866:	0a36      	lsrs	r6, r6, #8
d05a0868:	ea84 1444 	eor.w	r4, r4, r4, lsl #5
d05a086c:	fb0c 1116 	mls	r1, ip, r6, r1
d05a0870:	ea84 3644 	eor.w	r6, r4, r4, lsl #13
d05a0874:	fba5 e704 	umull	lr, r7, r5, r4
d05a0878:	b209      	sxth	r1, r1
d05a087a:	ea86 4656 	eor.w	r6, r6, r6, lsr #17
d05a087e:	09ff      	lsrs	r7, r7, #7
d05a0880:	ea86 1646 	eor.w	r6, r6, r6, lsl #5
d05a0884:	fb00 4717 	mls	r7, r0, r7, r4
d05a0888:	fba3 8e06 	umull	r8, lr, r3, r6
d05a088c:	ea86 3446 	eor.w	r4, r6, r6, lsl #13
d05a0890:	b23f      	sxth	r7, r7
d05a0892:	ea84 4454 	eor.w	r4, r4, r4, lsr #17
d05a0896:	ea4f 2e1e 	mov.w	lr, lr, lsr #8
d05a089a:	ea84 1444 	eor.w	r4, r4, r4, lsl #5
d05a089e:	fb0c 6e1e 	mls	lr, ip, lr, r6
d05a08a2:	ea84 3944 	eor.w	r9, r4, r4, lsl #13
d05a08a6:	fba5 6804 	umull	r6, r8, r5, r4
d05a08aa:	fa0f f68e 	sxth.w	r6, lr
d05a08ae:	ea4f 18d8 	mov.w	r8, r8, lsr #7
d05a08b2:	9602      	str	r6, [sp, #8]
d05a08b4:	ea89 4659 	eor.w	r6, r9, r9, lsr #17
d05a08b8:	fb00 4818 	mls	r8, r0, r8, r4
d05a08bc:	ea86 1e46 	eor.w	lr, r6, r6, lsl #5
d05a08c0:	ea8e 344e 	eor.w	r4, lr, lr, lsl #13
d05a08c4:	fba3 360e 	umull	r3, r6, r3, lr
d05a08c8:	fa0f f388 	sxth.w	r3, r8
d05a08cc:	ea84 4454 	eor.w	r4, r4, r4, lsr #17
d05a08d0:	0a36      	lsrs	r6, r6, #8
d05a08d2:	42bb      	cmp	r3, r7
d05a08d4:	ea84 1444 	eor.w	r4, r4, r4, lsl #5
d05a08d8:	fb0c e616 	mls	r6, ip, r6, lr
d05a08dc:	fba5 c504 	umull	ip, r5, r5, r4
d05a08e0:	b236      	sxth	r6, r6
d05a08e2:	6014      	str	r4, [r2, #0]
d05a08e4:	ea4f 15d5 	mov.w	r5, r5, lsr #7
d05a08e8:	fb00 4515 	mls	r5, r0, r5, r4
d05a08ec:	b22d      	sxth	r5, r5
d05a08ee:	f2c0 8094 	blt.w	d05a0a1a <draw_random_shape+0x50e>
d05a08f2:	42bd      	cmp	r5, r7
d05a08f4:	f280 809a 	bge.w	d05a0a2c <draw_random_shape+0x520>
d05a08f8:	42bb      	cmp	r3, r7
d05a08fa:	dd0a      	ble.n	d05a0912 <draw_random_shape+0x406>
d05a08fc:	4618      	mov	r0, r3
d05a08fe:	9a02      	ldr	r2, [sp, #8]
d05a0900:	463b      	mov	r3, r7
d05a0902:	9102      	str	r1, [sp, #8]
d05a0904:	4607      	mov	r7, r0
d05a0906:	4611      	mov	r1, r2
d05a0908:	42bd      	cmp	r5, r7
d05a090a:	f43f ae9a 	beq.w	d05a0642 <draw_random_shape+0x136>
d05a090e:	f73f ae98 	bgt.w	d05a0642 <draw_random_shape+0x136>
d05a0912:	1afa      	subs	r2, r7, r3
d05a0914:	fa1f f987 	uxth.w	r9, r7
d05a0918:	b2ac      	uxth	r4, r5
d05a091a:	fab2 f282 	clz	r2, r2
d05a091e:	fa1f f883 	uxth.w	r8, r3
d05a0922:	0952      	lsrs	r2, r2, #5
d05a0924:	9201      	str	r2, [sp, #4]
d05a0926:	eba9 0204 	sub.w	r2, r9, r4
d05a092a:	eba9 0908 	sub.w	r9, r9, r8
d05a092e:	eba8 0804 	sub.w	r8, r8, r4
d05a0932:	b212      	sxth	r2, r2
d05a0934:	fa0f f089 	sxth.w	r0, r9
d05a0938:	9203      	str	r2, [sp, #12]
d05a093a:	9005      	str	r0, [sp, #20]
d05a093c:	fa0f f088 	sxth.w	r0, r8
d05a0940:	9004      	str	r0, [sp, #16]
d05a0942:	2a00      	cmp	r2, #0
d05a0944:	f000 8158 	beq.w	d05a0bf8 <draw_random_shape+0x6ec>
d05a0948:	2800      	cmp	r0, #0
d05a094a:	f000 81be 	beq.w	d05a0cca <draw_random_shape+0x7be>
d05a094e:	9805      	ldr	r0, [sp, #20]
d05a0950:	2800      	cmp	r0, #0
d05a0952:	f000 80f0 	beq.w	d05a0b36 <draw_random_shape+0x62a>
d05a0956:	9802      	ldr	r0, [sp, #8]
d05a0958:	eb05 0945 	add.w	r9, r5, r5, lsl #1
d05a095c:	1aed      	subs	r5, r5, r3
d05a095e:	f04f 0a00 	mov.w	sl, #0
d05a0962:	1a0a      	subs	r2, r1, r0
d05a0964:	eb09 1909 	add.w	r9, r9, r9, lsl #4
d05a0968:	1b89      	subs	r1, r1, r6
d05a096a:	46d0      	mov	r8, sl
d05a096c:	fb02 f505 	mul.w	r5, r2, r5
d05a0970:	ea4f 09c9 	mov.w	r9, r9, lsl #3
d05a0974:	9207      	str	r2, [sp, #28]
d05a0976:	1b82      	subs	r2, r0, r6
d05a0978:	9106      	str	r1, [sp, #24]
d05a097a:	b2b6      	uxth	r6, r6
d05a097c:	9208      	str	r2, [sp, #32]
d05a097e:	463a      	mov	r2, r7
d05a0980:	f8cd b028 	str.w	fp, [sp, #40]	; 0x28
d05a0984:	461f      	mov	r7, r3
d05a0986:	4613      	mov	r3, r2
d05a0988:	e02e      	b.n	d05a09e8 <draw_random_shape+0x4dc>
d05a098a:	4291      	cmp	r1, r2
d05a098c:	db02      	blt.n	d05a0994 <draw_random_shape+0x488>
d05a098e:	468c      	mov	ip, r1
d05a0990:	4611      	mov	r1, r2
d05a0992:	4662      	mov	r2, ip
d05a0994:	3201      	adds	r2, #1
d05a0996:	3401      	adds	r4, #1
d05a0998:	b212      	sxth	r2, r2
d05a099a:	fa0f fb84 	sxth.w	fp, r4
d05a099e:	2a00      	cmp	r2, #0
d05a09a0:	dd16      	ble.n	d05a09d0 <draw_random_shape+0x4c4>
d05a09a2:	f5b1 7fcc 	cmp.w	r1, #408	; 0x198
d05a09a6:	da13      	bge.n	d05a09d0 <draw_random_shape+0x4c4>
d05a09a8:	f5b2 7fcc 	cmp.w	r2, #408	; 0x198
d05a09ac:	ea21 71e1 	bic.w	r1, r1, r1, asr #31
d05a09b0:	bfa8      	it	ge
d05a09b2:	f44f 72cc 	movge.w	r2, #408	; 0x198
d05a09b6:	4558      	cmp	r0, fp
d05a09b8:	b209      	sxth	r1, r1
d05a09ba:	da09      	bge.n	d05a09d0 <draw_random_shape+0x4c4>
d05a09bc:	eb01 0009 	add.w	r0, r1, r9
d05a09c0:	9309      	str	r3, [sp, #36]	; 0x24
d05a09c2:	4b67      	ldr	r3, [pc, #412]	; (d05a0b60 <draw_random_shape+0x654>)
d05a09c4:	1a52      	subs	r2, r2, r1
d05a09c6:	990a      	ldr	r1, [sp, #40]	; 0x28
d05a09c8:	4418      	add	r0, r3
d05a09ca:	f000 ff5b 	bl	d05a1884 <memset>
d05a09ce:	9b09      	ldr	r3, [sp, #36]	; 0x24
d05a09d0:	9a06      	ldr	r2, [sp, #24]
d05a09d2:	459b      	cmp	fp, r3
d05a09d4:	b2a4      	uxth	r4, r4
d05a09d6:	f509 79cc 	add.w	r9, r9, #408	; 0x198
d05a09da:	4490      	add	r8, r2
d05a09dc:	9a08      	ldr	r2, [sp, #32]
d05a09de:	4492      	add	sl, r2
d05a09e0:	9a07      	ldr	r2, [sp, #28]
d05a09e2:	4415      	add	r5, r2
d05a09e4:	f73f ae2d 	bgt.w	d05a0642 <draw_random_shape+0x136>
d05a09e8:	9a03      	ldr	r2, [sp, #12]
d05a09ea:	b220      	sxth	r0, r4
d05a09ec:	fb98 f2f2 	sdiv	r2, r8, r2
d05a09f0:	42b8      	cmp	r0, r7
d05a09f2:	4432      	add	r2, r6
d05a09f4:	b212      	sxth	r2, r2
d05a09f6:	f2c0 80f3 	blt.w	d05a0be0 <draw_random_shape+0x6d4>
d05a09fa:	9901      	ldr	r1, [sp, #4]
d05a09fc:	2900      	cmp	r1, #0
d05a09fe:	f040 80ef 	bne.w	d05a0be0 <draw_random_shape+0x6d4>
d05a0a02:	9905      	ldr	r1, [sp, #20]
d05a0a04:	fb95 fcf1 	sdiv	ip, r5, r1
d05a0a08:	9902      	ldr	r1, [sp, #8]
d05a0a0a:	4461      	add	r1, ip
d05a0a0c:	b209      	sxth	r1, r1
d05a0a0e:	2cbf      	cmp	r4, #191	; 0xbf
d05a0a10:	d9bb      	bls.n	d05a098a <draw_random_shape+0x47e>
d05a0a12:	3401      	adds	r4, #1
d05a0a14:	fa0f fb84 	sxth.w	fp, r4
d05a0a18:	e7da      	b.n	d05a09d0 <draw_random_shape+0x4c4>
d05a0a1a:	429d      	cmp	r5, r3
d05a0a1c:	f6ff af74 	blt.w	d05a0908 <draw_random_shape+0x3fc>
d05a0a20:	463a      	mov	r2, r7
d05a0a22:	4608      	mov	r0, r1
d05a0a24:	461f      	mov	r7, r3
d05a0a26:	9902      	ldr	r1, [sp, #8]
d05a0a28:	4613      	mov	r3, r2
d05a0a2a:	9002      	str	r0, [sp, #8]
d05a0a2c:	429d      	cmp	r5, r3
d05a0a2e:	db79      	blt.n	d05a0b24 <draw_random_shape+0x618>
d05a0a30:	42bd      	cmp	r5, r7
d05a0a32:	f43f ae06 	beq.w	d05a0642 <draw_random_shape+0x136>
d05a0a36:	4638      	mov	r0, r7
d05a0a38:	460a      	mov	r2, r1
d05a0a3a:	462f      	mov	r7, r5
d05a0a3c:	4631      	mov	r1, r6
d05a0a3e:	4605      	mov	r5, r0
d05a0a40:	4616      	mov	r6, r2
d05a0a42:	e766      	b.n	d05a0912 <draw_random_shape+0x406>
d05a0a44:	ea81 4151 	eor.w	r1, r1, r1, lsr #17
d05a0a48:	4f43      	ldr	r7, [pc, #268]	; (d05a0b58 <draw_random_shape+0x64c>)
d05a0a4a:	4e44      	ldr	r6, [pc, #272]	; (d05a0b5c <draw_random_shape+0x650>)
d05a0a4c:	f44f 79cc 	mov.w	r9, #408	; 0x198
d05a0a50:	ea81 1141 	eor.w	r1, r1, r1, lsl #5
d05a0a54:	4b43      	ldr	r3, [pc, #268]	; (d05a0b64 <draw_random_shape+0x658>)
d05a0a56:	25b8      	movs	r5, #184	; 0xb8
d05a0a58:	f64f 7cfc 	movw	ip, #65532	; 0xfffc
d05a0a5c:	ea81 3041 	eor.w	r0, r1, r1, lsl #13
d05a0a60:	fba7 4701 	umull	r4, r7, r7, r1
d05a0a64:	ea80 4050 	eor.w	r0, r0, r0, lsr #17
d05a0a68:	0a3f      	lsrs	r7, r7, #8
d05a0a6a:	ea80 1040 	eor.w	r0, r0, r0, lsl #5
d05a0a6e:	fb09 1717 	mls	r7, r9, r7, r1
d05a0a72:	ea80 3440 	eor.w	r4, r0, r0, lsl #13
d05a0a76:	fba6 6100 	umull	r6, r1, r6, r0
d05a0a7a:	ea84 4454 	eor.w	r4, r4, r4, lsr #17
d05a0a7e:	09c9      	lsrs	r1, r1, #7
d05a0a80:	ea84 1444 	eor.w	r4, r4, r4, lsl #5
d05a0a84:	fb05 0111 	mls	r1, r5, r1, r0
d05a0a88:	fba3 0304 	umull	r0, r3, r3, r4
d05a0a8c:	6014      	str	r4, [r2, #0]
d05a0a8e:	091b      	lsrs	r3, r3, #4
d05a0a90:	ebc3 02c3 	rsb	r2, r3, r3, lsl #3
d05a0a94:	eb03 0382 	add.w	r3, r3, r2, lsl #2
d05a0a98:	1ae4      	subs	r4, r4, r3
d05a0a9a:	b2a4      	uxth	r4, r4
d05a0a9c:	ebac 0c04 	sub.w	ip, ip, r4
d05a0aa0:	3404      	adds	r4, #4
d05a0aa2:	fa1f f38c 	uxth.w	r3, ip
d05a0aa6:	fa0f fc8c 	sxth.w	ip, ip
d05a0aaa:	4419      	add	r1, r3
d05a0aac:	fa13 f787 	uxtah	r7, r3, r7
d05a0ab0:	fb14 f304 	smulbb	r3, r4, r4
d05a0ab4:	4662      	mov	r2, ip
d05a0ab6:	b289      	uxth	r1, r1
d05a0ab8:	b2bf      	uxth	r7, r7
d05a0aba:	fa0f fa83 	sxth.w	sl, r3
d05a0abe:	b224      	sxth	r4, r4
d05a0ac0:	fb02 f502 	mul.w	r5, r2, r2
d05a0ac4:	fa0f fe81 	sxth.w	lr, r1
d05a0ac8:	b292      	uxth	r2, r2
d05a0aca:	4638      	mov	r0, r7
d05a0acc:	b2ad      	uxth	r5, r5
d05a0ace:	4663      	mov	r3, ip
d05a0ad0:	fb03 5603 	mla	r6, r3, r3, r5
d05a0ad4:	b29b      	uxth	r3, r3
d05a0ad6:	f100 0801 	add.w	r8, r0, #1
d05a0ada:	b236      	sxth	r6, r6
d05a0adc:	3301      	adds	r3, #1
d05a0ade:	45b2      	cmp	sl, r6
d05a0ae0:	b21b      	sxth	r3, r3
d05a0ae2:	db0a      	blt.n	d05a0afa <draw_random_shape+0x5ee>
d05a0ae4:	f240 1697 	movw	r6, #407	; 0x197
d05a0ae8:	42b0      	cmp	r0, r6
d05a0aea:	fb1e 0009 	smlabb	r0, lr, r9, r0
d05a0aee:	d804      	bhi.n	d05a0afa <draw_random_shape+0x5ee>
d05a0af0:	29bf      	cmp	r1, #191	; 0xbf
d05a0af2:	d802      	bhi.n	d05a0afa <draw_random_shape+0x5ee>
d05a0af4:	4e1a      	ldr	r6, [pc, #104]	; (d05a0b60 <draw_random_shape+0x654>)
d05a0af6:	f806 b000 	strb.w	fp, [r6, r0]
d05a0afa:	429c      	cmp	r4, r3
d05a0afc:	fa1f f088 	uxth.w	r0, r8
d05a0b00:	dae6      	bge.n	d05a0ad0 <draw_random_shape+0x5c4>
d05a0b02:	3201      	adds	r2, #1
d05a0b04:	3101      	adds	r1, #1
d05a0b06:	b212      	sxth	r2, r2
d05a0b08:	b289      	uxth	r1, r1
d05a0b0a:	4294      	cmp	r4, r2
d05a0b0c:	dad8      	bge.n	d05a0ac0 <draw_random_shape+0x5b4>
d05a0b0e:	b00d      	add	sp, #52	; 0x34
d05a0b10:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d05a0b14:	1a52      	subs	r2, r2, r1
d05a0b16:	f04f 31ff 	mov.w	r1, #4294967295	; 0xffffffff
d05a0b1a:	e5f8      	b.n	d05a070e <draw_random_shape+0x202>
d05a0b1c:	1a20      	subs	r0, r4, r0
d05a0b1e:	f04f 34ff 	mov.w	r4, #4294967295	; 0xffffffff
d05a0b22:	e5e9      	b.n	d05a06f8 <draw_random_shape+0x1ec>
d05a0b24:	4618      	mov	r0, r3
d05a0b26:	9a02      	ldr	r2, [sp, #8]
d05a0b28:	462b      	mov	r3, r5
d05a0b2a:	9602      	str	r6, [sp, #8]
d05a0b2c:	463d      	mov	r5, r7
d05a0b2e:	460e      	mov	r6, r1
d05a0b30:	4607      	mov	r7, r0
d05a0b32:	4611      	mov	r1, r2
d05a0b34:	e6e8      	b.n	d05a0908 <draw_random_shape+0x3fc>
d05a0b36:	1b8a      	subs	r2, r1, r6
d05a0b38:	eb05 0545 	add.w	r5, r5, r5, lsl #1
d05a0b3c:	9902      	ldr	r1, [sp, #8]
d05a0b3e:	4681      	mov	r9, r0
d05a0b40:	eb05 1505 	add.w	r5, r5, r5, lsl #4
d05a0b44:	f8cd b01c 	str.w	fp, [sp, #28]
d05a0b48:	1b89      	subs	r1, r1, r6
d05a0b4a:	469b      	mov	fp, r3
d05a0b4c:	4680      	mov	r8, r0
d05a0b4e:	b2b6      	uxth	r6, r6
d05a0b50:	00ed      	lsls	r5, r5, #3
d05a0b52:	4613      	mov	r3, r2
d05a0b54:	9105      	str	r1, [sp, #20]
d05a0b56:	e032      	b.n	d05a0bbe <draw_random_shape+0x6b2>
d05a0b58:	a0a0a0a1 	.word	0xa0a0a0a1
d05a0b5c:	b21642c9 	.word	0xb21642c9
d05a0b60:	d05a2a20 	.word	0xd05a2a20
d05a0b64:	8d3dcb09 	.word	0x8d3dcb09
d05a0b68:	428a      	cmp	r2, r1
d05a0b6a:	da02      	bge.n	d05a0b72 <draw_random_shape+0x666>
d05a0b6c:	468c      	mov	ip, r1
d05a0b6e:	4611      	mov	r1, r2
d05a0b70:	4662      	mov	r2, ip
d05a0b72:	3201      	adds	r2, #1
d05a0b74:	3401      	adds	r4, #1
d05a0b76:	b212      	sxth	r2, r2
d05a0b78:	fa0f fa84 	sxth.w	sl, r4
d05a0b7c:	2a00      	cmp	r2, #0
d05a0b7e:	dd15      	ble.n	d05a0bac <draw_random_shape+0x6a0>
d05a0b80:	f5b1 7fcc 	cmp.w	r1, #408	; 0x198
d05a0b84:	da12      	bge.n	d05a0bac <draw_random_shape+0x6a0>
d05a0b86:	f5b2 7fcc 	cmp.w	r2, #408	; 0x198
d05a0b8a:	ea21 71e1 	bic.w	r1, r1, r1, asr #31
d05a0b8e:	bfa8      	it	ge
d05a0b90:	f44f 72cc 	movge.w	r2, #408	; 0x198
d05a0b94:	4582      	cmp	sl, r0
d05a0b96:	b209      	sxth	r1, r1
d05a0b98:	dd08      	ble.n	d05a0bac <draw_random_shape+0x6a0>
d05a0b9a:	1948      	adds	r0, r1, r5
d05a0b9c:	9306      	str	r3, [sp, #24]
d05a0b9e:	4bb0      	ldr	r3, [pc, #704]	; (d05a0e60 <draw_random_shape+0x954>)
d05a0ba0:	1a52      	subs	r2, r2, r1
d05a0ba2:	9907      	ldr	r1, [sp, #28]
d05a0ba4:	4418      	add	r0, r3
d05a0ba6:	f000 fe6d 	bl	d05a1884 <memset>
d05a0baa:	9b06      	ldr	r3, [sp, #24]
d05a0bac:	9a05      	ldr	r2, [sp, #20]
d05a0bae:	45ba      	cmp	sl, r7
d05a0bb0:	4498      	add	r8, r3
d05a0bb2:	b2a4      	uxth	r4, r4
d05a0bb4:	f505 75cc 	add.w	r5, r5, #408	; 0x198
d05a0bb8:	4491      	add	r9, r2
d05a0bba:	f73f ad42 	bgt.w	d05a0642 <draw_random_shape+0x136>
d05a0bbe:	9a03      	ldr	r2, [sp, #12]
d05a0bc0:	b220      	sxth	r0, r4
d05a0bc2:	fb98 f1f2 	sdiv	r1, r8, r2
d05a0bc6:	4558      	cmp	r0, fp
d05a0bc8:	4431      	add	r1, r6
d05a0bca:	b209      	sxth	r1, r1
d05a0bcc:	db0e      	blt.n	d05a0bec <draw_random_shape+0x6e0>
d05a0bce:	9a01      	ldr	r2, [sp, #4]
d05a0bd0:	b962      	cbnz	r2, d05a0bec <draw_random_shape+0x6e0>
d05a0bd2:	9a02      	ldr	r2, [sp, #8]
d05a0bd4:	2cbf      	cmp	r4, #191	; 0xbf
d05a0bd6:	d9c7      	bls.n	d05a0b68 <draw_random_shape+0x65c>
d05a0bd8:	3401      	adds	r4, #1
d05a0bda:	fa0f fa84 	sxth.w	sl, r4
d05a0bde:	e7e5      	b.n	d05a0bac <draw_random_shape+0x6a0>
d05a0be0:	9904      	ldr	r1, [sp, #16]
d05a0be2:	fb9a f1f1 	sdiv	r1, sl, r1
d05a0be6:	4431      	add	r1, r6
d05a0be8:	b209      	sxth	r1, r1
d05a0bea:	e710      	b.n	d05a0a0e <draw_random_shape+0x502>
d05a0bec:	9a04      	ldr	r2, [sp, #16]
d05a0bee:	fb99 f2f2 	sdiv	r2, r9, r2
d05a0bf2:	4432      	add	r2, r6
d05a0bf4:	b212      	sxth	r2, r2
d05a0bf6:	e7ed      	b.n	d05a0bd4 <draw_random_shape+0x6c8>
d05a0bf8:	9a05      	ldr	r2, [sp, #20]
d05a0bfa:	2a00      	cmp	r2, #0
d05a0bfc:	f000 80c4 	beq.w	d05a0d88 <draw_random_shape+0x87c>
d05a0c00:	2800      	cmp	r0, #0
d05a0c02:	f000 8119 	beq.w	d05a0e38 <draw_random_shape+0x92c>
d05a0c06:	9a02      	ldr	r2, [sp, #8]
d05a0c08:	eb05 0845 	add.w	r8, r5, r5, lsl #1
d05a0c0c:	1aed      	subs	r5, r5, r3
d05a0c0e:	f8dd 900c 	ldr.w	r9, [sp, #12]
d05a0c12:	1a88      	subs	r0, r1, r2
d05a0c14:	1c72      	adds	r2, r6, #1
d05a0c16:	eb08 1808 	add.w	r8, r8, r8, lsl #4
d05a0c1a:	b211      	sxth	r1, r2
d05a0c1c:	9a02      	ldr	r2, [sp, #8]
d05a0c1e:	fb00 f505 	mul.w	r5, r0, r5
d05a0c22:	ea4f 08c8 	mov.w	r8, r8, lsl #3
d05a0c26:	1b92      	subs	r2, r2, r6
d05a0c28:	9108      	str	r1, [sp, #32]
d05a0c2a:	4659      	mov	r1, fp
d05a0c2c:	469b      	mov	fp, r3
d05a0c2e:	9203      	str	r2, [sp, #12]
d05a0c30:	463b      	mov	r3, r7
d05a0c32:	4607      	mov	r7, r0
d05a0c34:	e026      	b.n	d05a0c84 <draw_random_shape+0x778>
d05a0c36:	42b0      	cmp	r0, r6
d05a0c38:	da3c      	bge.n	d05a0cb4 <draw_random_shape+0x7a8>
d05a0c3a:	3401      	adds	r4, #1
d05a0c3c:	f8dd e020 	ldr.w	lr, [sp, #32]
d05a0c40:	fa0f fa84 	sxth.w	sl, r4
d05a0c44:	f5be 7fcc 	cmp.w	lr, #408	; 0x198
d05a0c48:	ea20 72e0 	bic.w	r2, r0, r0, asr #31
d05a0c4c:	bfa8      	it	ge
d05a0c4e:	f44f 7ecc 	movge.w	lr, #408	; 0x198
d05a0c52:	45d4      	cmp	ip, sl
d05a0c54:	b212      	sxth	r2, r2
d05a0c56:	da0c      	bge.n	d05a0c72 <draw_random_shape+0x766>
d05a0c58:	eb02 0c08 	add.w	ip, r2, r8
d05a0c5c:	9307      	str	r3, [sp, #28]
d05a0c5e:	4b80      	ldr	r3, [pc, #512]	; (d05a0e60 <draw_random_shape+0x954>)
d05a0c60:	ebae 0202 	sub.w	r2, lr, r2
d05a0c64:	9106      	str	r1, [sp, #24]
d05a0c66:	eb03 000c 	add.w	r0, r3, ip
d05a0c6a:	f000 fe0b 	bl	d05a1884 <memset>
d05a0c6e:	9b07      	ldr	r3, [sp, #28]
d05a0c70:	9906      	ldr	r1, [sp, #24]
d05a0c72:	9a03      	ldr	r2, [sp, #12]
d05a0c74:	459a      	cmp	sl, r3
d05a0c76:	b2a4      	uxth	r4, r4
d05a0c78:	f508 78cc 	add.w	r8, r8, #408	; 0x198
d05a0c7c:	4491      	add	r9, r2
d05a0c7e:	443d      	add	r5, r7
d05a0c80:	f73f acdf 	bgt.w	d05a0642 <draw_random_shape+0x136>
d05a0c84:	fa0f fc84 	sxth.w	ip, r4
d05a0c88:	45dc      	cmp	ip, fp
d05a0c8a:	db0d      	blt.n	d05a0ca8 <draw_random_shape+0x79c>
d05a0c8c:	9a01      	ldr	r2, [sp, #4]
d05a0c8e:	b95a      	cbnz	r2, d05a0ca8 <draw_random_shape+0x79c>
d05a0c90:	9a05      	ldr	r2, [sp, #20]
d05a0c92:	fb95 f0f2 	sdiv	r0, r5, r2
d05a0c96:	9a02      	ldr	r2, [sp, #8]
d05a0c98:	4410      	add	r0, r2
d05a0c9a:	b200      	sxth	r0, r0
d05a0c9c:	2cbf      	cmp	r4, #191	; 0xbf
d05a0c9e:	d9ca      	bls.n	d05a0c36 <draw_random_shape+0x72a>
d05a0ca0:	3401      	adds	r4, #1
d05a0ca2:	fa0f fa84 	sxth.w	sl, r4
d05a0ca6:	e7e4      	b.n	d05a0c72 <draw_random_shape+0x766>
d05a0ca8:	9a04      	ldr	r2, [sp, #16]
d05a0caa:	fb99 f0f2 	sdiv	r0, r9, r2
d05a0cae:	4430      	add	r0, r6
d05a0cb0:	b200      	sxth	r0, r0
d05a0cb2:	e7f3      	b.n	d05a0c9c <draw_random_shape+0x790>
d05a0cb4:	3001      	adds	r0, #1
d05a0cb6:	3401      	adds	r4, #1
d05a0cb8:	fa0f fe80 	sxth.w	lr, r0
d05a0cbc:	fa0f fa84 	sxth.w	sl, r4
d05a0cc0:	f1be 0f00 	cmp.w	lr, #0
d05a0cc4:	ddd5      	ble.n	d05a0c72 <draw_random_shape+0x766>
d05a0cc6:	4630      	mov	r0, r6
d05a0cc8:	e7bc      	b.n	d05a0c44 <draw_random_shape+0x738>
d05a0cca:	9a05      	ldr	r2, [sp, #20]
d05a0ccc:	2a00      	cmp	r2, #0
d05a0cce:	f000 810d 	beq.w	d05a0eec <draw_random_shape+0x9e0>
d05a0cd2:	9a02      	ldr	r2, [sp, #8]
d05a0cd4:	eb05 0945 	add.w	r9, r5, r5, lsl #1
d05a0cd8:	1aed      	subs	r5, r5, r3
d05a0cda:	f8cd b01c 	str.w	fp, [sp, #28]
d05a0cde:	1a8a      	subs	r2, r1, r2
d05a0ce0:	eb09 1909 	add.w	r9, r9, r9, lsl #4
d05a0ce4:	1b89      	subs	r1, r1, r6
d05a0ce6:	4680      	mov	r8, r0
d05a0ce8:	fb02 f505 	mul.w	r5, r2, r5
d05a0cec:	ea4f 09c9 	mov.w	r9, r9, lsl #3
d05a0cf0:	9206      	str	r2, [sp, #24]
d05a0cf2:	463a      	mov	r2, r7
d05a0cf4:	f8dd b00c 	ldr.w	fp, [sp, #12]
d05a0cf8:	461f      	mov	r7, r3
d05a0cfa:	9104      	str	r1, [sp, #16]
d05a0cfc:	4613      	mov	r3, r2
d05a0cfe:	e02c      	b.n	d05a0d5a <draw_random_shape+0x84e>
d05a0d00:	4291      	cmp	r1, r2
d05a0d02:	dd02      	ble.n	d05a0d0a <draw_random_shape+0x7fe>
d05a0d04:	468c      	mov	ip, r1
d05a0d06:	4611      	mov	r1, r2
d05a0d08:	4662      	mov	r2, ip
d05a0d0a:	3201      	adds	r2, #1
d05a0d0c:	3401      	adds	r4, #1
d05a0d0e:	b212      	sxth	r2, r2
d05a0d10:	fa0f fa84 	sxth.w	sl, r4
d05a0d14:	2a00      	cmp	r2, #0
d05a0d16:	dd16      	ble.n	d05a0d46 <draw_random_shape+0x83a>
d05a0d18:	f5b1 7fcc 	cmp.w	r1, #408	; 0x198
d05a0d1c:	da13      	bge.n	d05a0d46 <draw_random_shape+0x83a>
d05a0d1e:	f5b2 7fcc 	cmp.w	r2, #408	; 0x198
d05a0d22:	ea21 71e1 	bic.w	r1, r1, r1, asr #31
d05a0d26:	bfa8      	it	ge
d05a0d28:	f44f 72cc 	movge.w	r2, #408	; 0x198
d05a0d2c:	4582      	cmp	sl, r0
d05a0d2e:	b209      	sxth	r1, r1
d05a0d30:	dd09      	ble.n	d05a0d46 <draw_random_shape+0x83a>
d05a0d32:	eb01 0009 	add.w	r0, r1, r9
d05a0d36:	9303      	str	r3, [sp, #12]
d05a0d38:	4b49      	ldr	r3, [pc, #292]	; (d05a0e60 <draw_random_shape+0x954>)
d05a0d3a:	1a52      	subs	r2, r2, r1
d05a0d3c:	9907      	ldr	r1, [sp, #28]
d05a0d3e:	4418      	add	r0, r3
d05a0d40:	f000 fda0 	bl	d05a1884 <memset>
d05a0d44:	9b03      	ldr	r3, [sp, #12]
d05a0d46:	9a04      	ldr	r2, [sp, #16]
d05a0d48:	459a      	cmp	sl, r3
d05a0d4a:	b2a4      	uxth	r4, r4
d05a0d4c:	f509 79cc 	add.w	r9, r9, #408	; 0x198
d05a0d50:	4490      	add	r8, r2
d05a0d52:	9a06      	ldr	r2, [sp, #24]
d05a0d54:	4415      	add	r5, r2
d05a0d56:	f73f ac74 	bgt.w	d05a0642 <draw_random_shape+0x136>
d05a0d5a:	b220      	sxth	r0, r4
d05a0d5c:	fb98 f1fb 	sdiv	r1, r8, fp
d05a0d60:	42b8      	cmp	r0, r7
d05a0d62:	4431      	add	r1, r6
d05a0d64:	b209      	sxth	r1, r1
d05a0d66:	db0d      	blt.n	d05a0d84 <draw_random_shape+0x878>
d05a0d68:	9a01      	ldr	r2, [sp, #4]
d05a0d6a:	b95a      	cbnz	r2, d05a0d84 <draw_random_shape+0x878>
d05a0d6c:	9a05      	ldr	r2, [sp, #20]
d05a0d6e:	fb95 fcf2 	sdiv	ip, r5, r2
d05a0d72:	9a02      	ldr	r2, [sp, #8]
d05a0d74:	4462      	add	r2, ip
d05a0d76:	b212      	sxth	r2, r2
d05a0d78:	2cbf      	cmp	r4, #191	; 0xbf
d05a0d7a:	d9c1      	bls.n	d05a0d00 <draw_random_shape+0x7f4>
d05a0d7c:	3401      	adds	r4, #1
d05a0d7e:	fa0f fa84 	sxth.w	sl, r4
d05a0d82:	e7e0      	b.n	d05a0d46 <draw_random_shape+0x83a>
d05a0d84:	4632      	mov	r2, r6
d05a0d86:	e7f7      	b.n	d05a0d78 <draw_random_shape+0x86c>
d05a0d88:	eb05 0545 	add.w	r5, r5, r5, lsl #1
d05a0d8c:	2800      	cmp	r0, #0
d05a0d8e:	f000 80ff 	beq.w	d05a0f90 <draw_random_shape+0xa84>
d05a0d92:	9902      	ldr	r1, [sp, #8]
d05a0d94:	1c72      	adds	r2, r6, #1
d05a0d96:	eb05 1505 	add.w	r5, r5, r5, lsl #4
d05a0d9a:	f8dd 9014 	ldr.w	r9, [sp, #20]
d05a0d9e:	eba1 0a06 	sub.w	sl, r1, r6
d05a0da2:	b212      	sxth	r2, r2
d05a0da4:	4659      	mov	r1, fp
d05a0da6:	00ed      	lsls	r5, r5, #3
d05a0da8:	46d3      	mov	fp, sl
d05a0daa:	9205      	str	r2, [sp, #20]
d05a0dac:	46ba      	mov	sl, r7
d05a0dae:	461f      	mov	r7, r3
d05a0db0:	9b01      	ldr	r3, [sp, #4]
d05a0db2:	e024      	b.n	d05a0dfe <draw_random_shape+0x8f2>
d05a0db4:	42b0      	cmp	r0, r6
d05a0db6:	da34      	bge.n	d05a0e22 <draw_random_shape+0x916>
d05a0db8:	3401      	adds	r4, #1
d05a0dba:	f8dd e014 	ldr.w	lr, [sp, #20]
d05a0dbe:	fa0f f884 	sxth.w	r8, r4
d05a0dc2:	f5be 7fcc 	cmp.w	lr, #408	; 0x198
d05a0dc6:	ea20 72e0 	bic.w	r2, r0, r0, asr #31
d05a0dca:	bfa8      	it	ge
d05a0dcc:	f44f 7ecc 	movge.w	lr, #408	; 0x198
d05a0dd0:	45c4      	cmp	ip, r8
d05a0dd2:	b212      	sxth	r2, r2
d05a0dd4:	da0c      	bge.n	d05a0df0 <draw_random_shape+0x8e4>
d05a0dd6:	eb02 0c05 	add.w	ip, r2, r5
d05a0dda:	9303      	str	r3, [sp, #12]
d05a0ddc:	4b20      	ldr	r3, [pc, #128]	; (d05a0e60 <draw_random_shape+0x954>)
d05a0dde:	ebae 0202 	sub.w	r2, lr, r2
d05a0de2:	9101      	str	r1, [sp, #4]
d05a0de4:	eb03 000c 	add.w	r0, r3, ip
d05a0de8:	f000 fd4c 	bl	d05a1884 <memset>
d05a0dec:	9901      	ldr	r1, [sp, #4]
d05a0dee:	9b03      	ldr	r3, [sp, #12]
d05a0df0:	45d0      	cmp	r8, sl
d05a0df2:	b2a4      	uxth	r4, r4
d05a0df4:	f505 75cc 	add.w	r5, r5, #408	; 0x198
d05a0df8:	44d9      	add	r9, fp
d05a0dfa:	f73f ac22 	bgt.w	d05a0642 <draw_random_shape+0x136>
d05a0dfe:	fa0f fc84 	sxth.w	ip, r4
d05a0e02:	45bc      	cmp	ip, r7
d05a0e04:	db07      	blt.n	d05a0e16 <draw_random_shape+0x90a>
d05a0e06:	b933      	cbnz	r3, d05a0e16 <draw_random_shape+0x90a>
d05a0e08:	9802      	ldr	r0, [sp, #8]
d05a0e0a:	2cbf      	cmp	r4, #191	; 0xbf
d05a0e0c:	d9d2      	bls.n	d05a0db4 <draw_random_shape+0x8a8>
d05a0e0e:	3401      	adds	r4, #1
d05a0e10:	fa0f f884 	sxth.w	r8, r4
d05a0e14:	e7ec      	b.n	d05a0df0 <draw_random_shape+0x8e4>
d05a0e16:	9a04      	ldr	r2, [sp, #16]
d05a0e18:	fb99 f0f2 	sdiv	r0, r9, r2
d05a0e1c:	4430      	add	r0, r6
d05a0e1e:	b200      	sxth	r0, r0
d05a0e20:	e7f3      	b.n	d05a0e0a <draw_random_shape+0x8fe>
d05a0e22:	3001      	adds	r0, #1
d05a0e24:	3401      	adds	r4, #1
d05a0e26:	fa0f fe80 	sxth.w	lr, r0
d05a0e2a:	fa0f f884 	sxth.w	r8, r4
d05a0e2e:	f1be 0f00 	cmp.w	lr, #0
d05a0e32:	dddd      	ble.n	d05a0df0 <draw_random_shape+0x8e4>
d05a0e34:	4630      	mov	r0, r6
d05a0e36:	e7c4      	b.n	d05a0dc2 <draw_random_shape+0x8b6>
d05a0e38:	9a02      	ldr	r2, [sp, #8]
d05a0e3a:	eb05 0945 	add.w	r9, r5, r5, lsl #1
d05a0e3e:	1aed      	subs	r5, r5, r3
d05a0e40:	eba1 0802 	sub.w	r8, r1, r2
d05a0e44:	1c72      	adds	r2, r6, #1
d05a0e46:	eb09 1909 	add.w	r9, r9, r9, lsl #4
d05a0e4a:	4659      	mov	r1, fp
d05a0e4c:	b212      	sxth	r2, r2
d05a0e4e:	46b3      	mov	fp, r6
d05a0e50:	fb08 f505 	mul.w	r5, r8, r5
d05a0e54:	461e      	mov	r6, r3
d05a0e56:	ea4f 09c9 	mov.w	r9, r9, lsl #3
d05a0e5a:	9b01      	ldr	r3, [sp, #4]
d05a0e5c:	9204      	str	r2, [sp, #16]
d05a0e5e:	e02f      	b.n	d05a0ec0 <draw_random_shape+0x9b4>
d05a0e60:	d05a2a20 	.word	0xd05a2a20
d05a0e64:	bb83      	cbnz	r3, d05a0ec8 <draw_random_shape+0x9bc>
d05a0e66:	9a05      	ldr	r2, [sp, #20]
d05a0e68:	2cbf      	cmp	r4, #191	; 0xbf
d05a0e6a:	fb95 f0f2 	sdiv	r0, r5, r2
d05a0e6e:	9a02      	ldr	r2, [sp, #8]
d05a0e70:	4410      	add	r0, r2
d05a0e72:	b200      	sxth	r0, r0
d05a0e74:	d836      	bhi.n	d05a0ee4 <draw_random_shape+0x9d8>
d05a0e76:	4558      	cmp	r0, fp
d05a0e78:	da29      	bge.n	d05a0ece <draw_random_shape+0x9c2>
d05a0e7a:	3401      	adds	r4, #1
d05a0e7c:	f8dd e010 	ldr.w	lr, [sp, #16]
d05a0e80:	fa0f fa84 	sxth.w	sl, r4
d05a0e84:	f5be 7fcc 	cmp.w	lr, #408	; 0x198
d05a0e88:	ea20 72e0 	bic.w	r2, r0, r0, asr #31
d05a0e8c:	bfa8      	it	ge
d05a0e8e:	f44f 7ecc 	movge.w	lr, #408	; 0x198
d05a0e92:	45d4      	cmp	ip, sl
d05a0e94:	b212      	sxth	r2, r2
d05a0e96:	da0c      	bge.n	d05a0eb2 <draw_random_shape+0x9a6>
d05a0e98:	eb02 0c09 	add.w	ip, r2, r9
d05a0e9c:	9303      	str	r3, [sp, #12]
d05a0e9e:	4b58      	ldr	r3, [pc, #352]	; (d05a1000 <draw_random_shape+0xaf4>)
d05a0ea0:	ebae 0202 	sub.w	r2, lr, r2
d05a0ea4:	9101      	str	r1, [sp, #4]
d05a0ea6:	eb03 000c 	add.w	r0, r3, ip
d05a0eaa:	f000 fceb 	bl	d05a1884 <memset>
d05a0eae:	9901      	ldr	r1, [sp, #4]
d05a0eb0:	9b03      	ldr	r3, [sp, #12]
d05a0eb2:	45ba      	cmp	sl, r7
d05a0eb4:	b2a4      	uxth	r4, r4
d05a0eb6:	f509 79cc 	add.w	r9, r9, #408	; 0x198
d05a0eba:	4445      	add	r5, r8
d05a0ebc:	f73f abc1 	bgt.w	d05a0642 <draw_random_shape+0x136>
d05a0ec0:	fa0f fc84 	sxth.w	ip, r4
d05a0ec4:	45b4      	cmp	ip, r6
d05a0ec6:	dacd      	bge.n	d05a0e64 <draw_random_shape+0x958>
d05a0ec8:	2cbf      	cmp	r4, #191	; 0xbf
d05a0eca:	d80b      	bhi.n	d05a0ee4 <draw_random_shape+0x9d8>
d05a0ecc:	4658      	mov	r0, fp
d05a0ece:	3001      	adds	r0, #1
d05a0ed0:	3401      	adds	r4, #1
d05a0ed2:	fa0f fe80 	sxth.w	lr, r0
d05a0ed6:	fa0f fa84 	sxth.w	sl, r4
d05a0eda:	f1be 0f00 	cmp.w	lr, #0
d05a0ede:	dde8      	ble.n	d05a0eb2 <draw_random_shape+0x9a6>
d05a0ee0:	4658      	mov	r0, fp
d05a0ee2:	e7cf      	b.n	d05a0e84 <draw_random_shape+0x978>
d05a0ee4:	3401      	adds	r4, #1
d05a0ee6:	fa0f fa84 	sxth.w	sl, r4
d05a0eea:	e7e2      	b.n	d05a0eb2 <draw_random_shape+0x9a6>
d05a0eec:	eba1 0a06 	sub.w	sl, r1, r6
d05a0ef0:	eb05 0545 	add.w	r5, r5, r5, lsl #1
d05a0ef4:	4691      	mov	r9, r2
d05a0ef6:	f8cd b010 	str.w	fp, [sp, #16]
d05a0efa:	4652      	mov	r2, sl
d05a0efc:	eb05 1505 	add.w	r5, r5, r5, lsl #4
d05a0f00:	46bb      	mov	fp, r7
d05a0f02:	469a      	mov	sl, r3
d05a0f04:	00ed      	lsls	r5, r5, #3
d05a0f06:	9f03      	ldr	r7, [sp, #12]
d05a0f08:	4613      	mov	r3, r2
d05a0f0a:	e023      	b.n	d05a0f54 <draw_random_shape+0xa48>
d05a0f0c:	4586      	cmp	lr, r0
d05a0f0e:	db36      	blt.n	d05a0f7e <draw_random_shape+0xa72>
d05a0f10:	f10e 0201 	add.w	r2, lr, #1
d05a0f14:	3401      	adds	r4, #1
d05a0f16:	b212      	sxth	r2, r2
d05a0f18:	fa0f f884 	sxth.w	r8, r4
d05a0f1c:	f5b2 7fcc 	cmp.w	r2, #408	; 0x198
d05a0f20:	ea20 70e0 	bic.w	r0, r0, r0, asr #31
d05a0f24:	bfa8      	it	ge
d05a0f26:	f44f 72cc 	movge.w	r2, #408	; 0x198
d05a0f2a:	45c4      	cmp	ip, r8
d05a0f2c:	b200      	sxth	r0, r0
d05a0f2e:	da0a      	bge.n	d05a0f46 <draw_random_shape+0xa3a>
d05a0f30:	eb00 0c05 	add.w	ip, r0, r5
d05a0f34:	9303      	str	r3, [sp, #12]
d05a0f36:	4b32      	ldr	r3, [pc, #200]	; (d05a1000 <draw_random_shape+0xaf4>)
d05a0f38:	1a12      	subs	r2, r2, r0
d05a0f3a:	9904      	ldr	r1, [sp, #16]
d05a0f3c:	eb03 000c 	add.w	r0, r3, ip
d05a0f40:	f000 fca0 	bl	d05a1884 <memset>
d05a0f44:	9b03      	ldr	r3, [sp, #12]
d05a0f46:	45d8      	cmp	r8, fp
d05a0f48:	4499      	add	r9, r3
d05a0f4a:	b2a4      	uxth	r4, r4
d05a0f4c:	f505 75cc 	add.w	r5, r5, #408	; 0x198
d05a0f50:	f73f ab77 	bgt.w	d05a0642 <draw_random_shape+0x136>
d05a0f54:	fa0f fc84 	sxth.w	ip, r4
d05a0f58:	fb99 f0f7 	sdiv	r0, r9, r7
d05a0f5c:	45d4      	cmp	ip, sl
d05a0f5e:	4430      	add	r0, r6
d05a0f60:	b282      	uxth	r2, r0
d05a0f62:	b200      	sxth	r0, r0
d05a0f64:	db09      	blt.n	d05a0f7a <draw_random_shape+0xa6e>
d05a0f66:	9901      	ldr	r1, [sp, #4]
d05a0f68:	b939      	cbnz	r1, d05a0f7a <draw_random_shape+0xa6e>
d05a0f6a:	f8dd e008 	ldr.w	lr, [sp, #8]
d05a0f6e:	2cbf      	cmp	r4, #191	; 0xbf
d05a0f70:	d9cc      	bls.n	d05a0f0c <draw_random_shape+0xa00>
d05a0f72:	3401      	adds	r4, #1
d05a0f74:	fa0f f884 	sxth.w	r8, r4
d05a0f78:	e7e5      	b.n	d05a0f46 <draw_random_shape+0xa3a>
d05a0f7a:	46b6      	mov	lr, r6
d05a0f7c:	e7f7      	b.n	d05a0f6e <draw_random_shape+0xa62>
d05a0f7e:	3201      	adds	r2, #1
d05a0f80:	3401      	adds	r4, #1
d05a0f82:	b212      	sxth	r2, r2
d05a0f84:	fa0f f884 	sxth.w	r8, r4
d05a0f88:	2a00      	cmp	r2, #0
d05a0f8a:	dddc      	ble.n	d05a0f46 <draw_random_shape+0xa3a>
d05a0f8c:	4670      	mov	r0, lr
d05a0f8e:	e7c5      	b.n	d05a0f1c <draw_random_shape+0xa10>
d05a0f90:	eb05 1505 	add.w	r5, r5, r5, lsl #4
d05a0f94:	469a      	mov	sl, r3
d05a0f96:	f8df 8068 	ldr.w	r8, [pc, #104]	; d05a1000 <draw_random_shape+0xaf4>
d05a0f9a:	00ed      	lsls	r5, r5, #3
d05a0f9c:	9b02      	ldr	r3, [sp, #8]
d05a0f9e:	e01c      	b.n	d05a0fda <draw_random_shape+0xace>
d05a0fa0:	2cbf      	cmp	r4, #191	; 0xbf
d05a0fa2:	d826      	bhi.n	d05a0ff2 <draw_random_shape+0xae6>
d05a0fa4:	429e      	cmp	r6, r3
d05a0fa6:	dd28      	ble.n	d05a0ffa <draw_random_shape+0xaee>
d05a0fa8:	4630      	mov	r0, r6
d05a0faa:	461a      	mov	r2, r3
d05a0fac:	3401      	adds	r4, #1
d05a0fae:	3001      	adds	r0, #1
d05a0fb0:	fa0f f984 	sxth.w	r9, r4
d05a0fb4:	b200      	sxth	r0, r0
d05a0fb6:	45cc      	cmp	ip, r9
d05a0fb8:	da09      	bge.n	d05a0fce <draw_random_shape+0xac2>
d05a0fba:	eb02 0c05 	add.w	ip, r2, r5
d05a0fbe:	4659      	mov	r1, fp
d05a0fc0:	1a82      	subs	r2, r0, r2
d05a0fc2:	9302      	str	r3, [sp, #8]
d05a0fc4:	eb08 000c 	add.w	r0, r8, ip
d05a0fc8:	f000 fc5c 	bl	d05a1884 <memset>
d05a0fcc:	9b02      	ldr	r3, [sp, #8]
d05a0fce:	45b9      	cmp	r9, r7
d05a0fd0:	b2a4      	uxth	r4, r4
d05a0fd2:	f505 75cc 	add.w	r5, r5, #408	; 0x198
d05a0fd6:	f73f ab34 	bgt.w	d05a0642 <draw_random_shape+0x136>
d05a0fda:	fa0f fc84 	sxth.w	ip, r4
d05a0fde:	45d4      	cmp	ip, sl
d05a0fe0:	db02      	blt.n	d05a0fe8 <draw_random_shape+0xadc>
d05a0fe2:	9a01      	ldr	r2, [sp, #4]
d05a0fe4:	2a00      	cmp	r2, #0
d05a0fe6:	d0db      	beq.n	d05a0fa0 <draw_random_shape+0xa94>
d05a0fe8:	2cbf      	cmp	r4, #191	; 0xbf
d05a0fea:	d802      	bhi.n	d05a0ff2 <draw_random_shape+0xae6>
d05a0fec:	4630      	mov	r0, r6
d05a0fee:	4632      	mov	r2, r6
d05a0ff0:	e7dc      	b.n	d05a0fac <draw_random_shape+0xaa0>
d05a0ff2:	3401      	adds	r4, #1
d05a0ff4:	fa0f f984 	sxth.w	r9, r4
d05a0ff8:	e7e9      	b.n	d05a0fce <draw_random_shape+0xac2>
d05a0ffa:	4618      	mov	r0, r3
d05a0ffc:	4632      	mov	r2, r6
d05a0ffe:	e7d5      	b.n	d05a0fac <draw_random_shape+0xaa0>
d05a1000:	d05a2a20 	.word	0xd05a2a20

d05a1004 <on_timer_tick>:
d05a1004:	4b25      	ldr	r3, [pc, #148]	; (d05a109c <on_timer_tick+0x98>)
d05a1006:	781b      	ldrb	r3, [r3, #0]
d05a1008:	2b00      	cmp	r3, #0
d05a100a:	d046      	beq.n	d05a109a <on_timer_tick+0x96>
d05a100c:	4b24      	ldr	r3, [pc, #144]	; (d05a10a0 <on_timer_tick+0x9c>)
d05a100e:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
d05a1012:	781d      	ldrb	r5, [r3, #0]
d05a1014:	b10d      	cbz	r5, d05a101a <on_timer_tick+0x16>
d05a1016:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
d05a101a:	4f22      	ldr	r7, [pc, #136]	; (d05a10a4 <on_timer_tick+0xa0>)
d05a101c:	f7ff fa76 	bl	d05a050c <draw_random_shape>
d05a1020:	f8df 9090 	ldr.w	r9, [pc, #144]	; d05a10b4 <on_timer_tick+0xb0>
d05a1024:	f507 684c 	add.w	r8, r7, #3264	; 0xcc0
d05a1028:	f7ff fa70 	bl	d05a050c <draw_random_shape>
d05a102c:	f7ff fa6e 	bl	d05a050c <draw_random_shape>
d05a1030:	f7ff fa6c 	bl	d05a050c <draw_random_shape>
d05a1034:	f7ff fa6a 	bl	d05a050c <draw_random_shape>
d05a1038:	f7ff fa68 	bl	d05a050c <draw_random_shape>
d05a103c:	022e      	lsls	r6, r5, #8
d05a103e:	462b      	mov	r3, r5
d05a1040:	eb07 0a05 	add.w	sl, r7, r5
d05a1044:	3501      	adds	r5, #1
d05a1046:	fba9 2606 	umull	r2, r6, r9, r6
d05a104a:	eb08 0403 	add.w	r4, r8, r3
d05a104e:	0a36      	lsrs	r6, r6, #8
d05a1050:	4650      	mov	r0, sl
d05a1052:	f50a 7acc 	add.w	sl, sl, #408	; 0x198
d05a1056:	2201      	movs	r2, #1
d05a1058:	4631      	mov	r1, r6
d05a105a:	f000 fc13 	bl	d05a1884 <memset>
d05a105e:	45a2      	cmp	sl, r4
d05a1060:	d1f6      	bne.n	d05a1050 <on_timer_tick+0x4c>
d05a1062:	f5b5 7fcc 	cmp.w	r5, #408	; 0x198
d05a1066:	d1e9      	bne.n	d05a103c <on_timer_tick+0x38>
d05a1068:	4a0f      	ldr	r2, [pc, #60]	; (d05a10a8 <on_timer_tick+0xa4>)
d05a106a:	4910      	ldr	r1, [pc, #64]	; (d05a10ac <on_timer_tick+0xa8>)
d05a106c:	6813      	ldr	r3, [r2, #0]
d05a106e:	6808      	ldr	r0, [r1, #0]
d05a1070:	3301      	adds	r3, #1
d05a1072:	6013      	str	r3, [r2, #0]
d05a1074:	b168      	cbz	r0, d05a1092 <on_timer_tick+0x8e>
d05a1076:	4a0e      	ldr	r2, [pc, #56]	; (d05a10b0 <on_timer_tick+0xac>)
d05a1078:	7a13      	ldrb	r3, [r2, #8]
d05a107a:	7a54      	ldrb	r4, [r2, #9]
d05a107c:	7a91      	ldrb	r1, [r2, #10]
d05a107e:	ea43 2304 	orr.w	r3, r3, r4, lsl #8
d05a1082:	7ad2      	ldrb	r2, [r2, #11]
d05a1084:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d05a1088:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d05a108c:	68db      	ldr	r3, [r3, #12]
d05a108e:	6d9b      	ldr	r3, [r3, #88]	; 0x58
d05a1090:	4798      	blx	r3
d05a1092:	e8bd 47f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
d05a1096:	f7ff b855 	b.w	d05a0144 <set_status>
d05a109a:	4770      	bx	lr
d05a109c:	d05a2a08 	.word	0xd05a2a08
d05a10a0:	d05b5c38 	.word	0xd05b5c38
d05a10a4:	d05b4f60 	.word	0xd05b4f60
d05a10a8:	d05b5c2c 	.word	0xd05b5c2c
d05a10ac:	d05a2a0c 	.word	0xd05a2a0c
d05a10b0:	2001f000 	.word	0x2001f000
d05a10b4:	a0a0a0a1 	.word	0xa0a0a0a1

d05a10b8 <on_burst_clicked>:
d05a10b8:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
d05a10bc:	2418      	movs	r4, #24
d05a10be:	3c01      	subs	r4, #1
d05a10c0:	f7ff fa24 	bl	d05a050c <draw_random_shape>
d05a10c4:	f014 04ff 	ands.w	r4, r4, #255	; 0xff
d05a10c8:	d1f9      	bne.n	d05a10be <on_burst_clicked+0x6>
d05a10ca:	4f1a      	ldr	r7, [pc, #104]	; (d05a1134 <on_burst_clicked+0x7c>)
d05a10cc:	f8df 9074 	ldr.w	r9, [pc, #116]	; d05a1144 <on_burst_clicked+0x8c>
d05a10d0:	f507 684c 	add.w	r8, r7, #3264	; 0xcc0
d05a10d4:	0226      	lsls	r6, r4, #8
d05a10d6:	4623      	mov	r3, r4
d05a10d8:	eb07 0a04 	add.w	sl, r7, r4
d05a10dc:	3401      	adds	r4, #1
d05a10de:	fba9 2606 	umull	r2, r6, r9, r6
d05a10e2:	eb08 0503 	add.w	r5, r8, r3
d05a10e6:	0a36      	lsrs	r6, r6, #8
d05a10e8:	4650      	mov	r0, sl
d05a10ea:	f50a 7acc 	add.w	sl, sl, #408	; 0x198
d05a10ee:	2201      	movs	r2, #1
d05a10f0:	4631      	mov	r1, r6
d05a10f2:	f000 fbc7 	bl	d05a1884 <memset>
d05a10f6:	45aa      	cmp	sl, r5
d05a10f8:	d1f6      	bne.n	d05a10e8 <on_burst_clicked+0x30>
d05a10fa:	f5b4 7fcc 	cmp.w	r4, #408	; 0x198
d05a10fe:	d1e9      	bne.n	d05a10d4 <on_burst_clicked+0x1c>
d05a1100:	4a0d      	ldr	r2, [pc, #52]	; (d05a1138 <on_burst_clicked+0x80>)
d05a1102:	490e      	ldr	r1, [pc, #56]	; (d05a113c <on_burst_clicked+0x84>)
d05a1104:	6813      	ldr	r3, [r2, #0]
d05a1106:	6808      	ldr	r0, [r1, #0]
d05a1108:	3301      	adds	r3, #1
d05a110a:	6013      	str	r3, [r2, #0]
d05a110c:	b168      	cbz	r0, d05a112a <on_burst_clicked+0x72>
d05a110e:	4a0c      	ldr	r2, [pc, #48]	; (d05a1140 <on_burst_clicked+0x88>)
d05a1110:	7a13      	ldrb	r3, [r2, #8]
d05a1112:	7a54      	ldrb	r4, [r2, #9]
d05a1114:	7a91      	ldrb	r1, [r2, #10]
d05a1116:	ea43 2304 	orr.w	r3, r3, r4, lsl #8
d05a111a:	7ad2      	ldrb	r2, [r2, #11]
d05a111c:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d05a1120:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d05a1124:	68db      	ldr	r3, [r3, #12]
d05a1126:	6d9b      	ldr	r3, [r3, #88]	; 0x58
d05a1128:	4798      	blx	r3
d05a112a:	e8bd 47f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
d05a112e:	f7ff b809 	b.w	d05a0144 <set_status>
d05a1132:	bf00      	nop
d05a1134:	d05b4f60 	.word	0xd05b4f60
d05a1138:	d05b5c2c 	.word	0xd05b5c2c
d05a113c:	d05a2a0c 	.word	0xd05a2a0c
d05a1140:	2001f000 	.word	0x2001f000
d05a1144:	a0a0a0a1 	.word	0xa0a0a0a1

d05a1148 <on_menu_burst>:
d05a1148:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
d05a114c:	2418      	movs	r4, #24
d05a114e:	3c01      	subs	r4, #1
d05a1150:	f7ff f9dc 	bl	d05a050c <draw_random_shape>
d05a1154:	f014 04ff 	ands.w	r4, r4, #255	; 0xff
d05a1158:	d1f9      	bne.n	d05a114e <on_menu_burst+0x6>
d05a115a:	4f1a      	ldr	r7, [pc, #104]	; (d05a11c4 <on_menu_burst+0x7c>)
d05a115c:	f8df 9074 	ldr.w	r9, [pc, #116]	; d05a11d4 <on_menu_burst+0x8c>
d05a1160:	f507 684c 	add.w	r8, r7, #3264	; 0xcc0
d05a1164:	0226      	lsls	r6, r4, #8
d05a1166:	4623      	mov	r3, r4
d05a1168:	eb07 0a04 	add.w	sl, r7, r4
d05a116c:	3401      	adds	r4, #1
d05a116e:	fba9 2606 	umull	r2, r6, r9, r6
d05a1172:	eb08 0503 	add.w	r5, r8, r3
d05a1176:	0a36      	lsrs	r6, r6, #8
d05a1178:	4650      	mov	r0, sl
d05a117a:	f50a 7acc 	add.w	sl, sl, #408	; 0x198
d05a117e:	2201      	movs	r2, #1
d05a1180:	4631      	mov	r1, r6
d05a1182:	f000 fb7f 	bl	d05a1884 <memset>
d05a1186:	45aa      	cmp	sl, r5
d05a1188:	d1f6      	bne.n	d05a1178 <on_menu_burst+0x30>
d05a118a:	f5b4 7fcc 	cmp.w	r4, #408	; 0x198
d05a118e:	d1e9      	bne.n	d05a1164 <on_menu_burst+0x1c>
d05a1190:	4a0d      	ldr	r2, [pc, #52]	; (d05a11c8 <on_menu_burst+0x80>)
d05a1192:	490e      	ldr	r1, [pc, #56]	; (d05a11cc <on_menu_burst+0x84>)
d05a1194:	6813      	ldr	r3, [r2, #0]
d05a1196:	6808      	ldr	r0, [r1, #0]
d05a1198:	3301      	adds	r3, #1
d05a119a:	6013      	str	r3, [r2, #0]
d05a119c:	b168      	cbz	r0, d05a11ba <on_menu_burst+0x72>
d05a119e:	4a0c      	ldr	r2, [pc, #48]	; (d05a11d0 <on_menu_burst+0x88>)
d05a11a0:	7a13      	ldrb	r3, [r2, #8]
d05a11a2:	7a54      	ldrb	r4, [r2, #9]
d05a11a4:	7a91      	ldrb	r1, [r2, #10]
d05a11a6:	ea43 2304 	orr.w	r3, r3, r4, lsl #8
d05a11aa:	7ad2      	ldrb	r2, [r2, #11]
d05a11ac:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d05a11b0:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d05a11b4:	68db      	ldr	r3, [r3, #12]
d05a11b6:	6d9b      	ldr	r3, [r3, #88]	; 0x58
d05a11b8:	4798      	blx	r3
d05a11ba:	e8bd 47f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
d05a11be:	f7fe bfc1 	b.w	d05a0144 <set_status>
d05a11c2:	bf00      	nop
d05a11c4:	d05b4f60 	.word	0xd05b4f60
d05a11c8:	d05b5c2c 	.word	0xd05b5c2c
d05a11cc:	d05a2a0c 	.word	0xd05a2a0c
d05a11d0:	2001f000 	.word	0x2001f000
d05a11d4:	a0a0a0a1 	.word	0xa0a0a0a1

d05a11d8 <main>:
d05a11d8:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d05a11dc:	4bb5      	ldr	r3, [pc, #724]	; (d05a14b4 <main+0x2dc>)
d05a11de:	2701      	movs	r7, #1
d05a11e0:	4cb5      	ldr	r4, [pc, #724]	; (d05a14b8 <main+0x2e0>)
d05a11e2:	b089      	sub	sp, #36	; 0x24
d05a11e4:	701f      	strb	r7, [r3, #0]
d05a11e6:	f44f 7c90 	mov.w	ip, #288	; 0x120
d05a11ea:	7a21      	ldrb	r1, [r4, #8]
d05a11ec:	f240 306d 	movw	r0, #877	; 0x36d
d05a11f0:	7a65      	ldrb	r5, [r4, #9]
d05a11f2:	f44f 73d8 	mov.w	r3, #432	; 0x1b0
d05a11f6:	7aa6      	ldrb	r6, [r4, #10]
d05a11f8:	2214      	movs	r2, #20
d05a11fa:	ea41 2105 	orr.w	r1, r1, r5, lsl #8
d05a11fe:	7ae5      	ldrb	r5, [r4, #11]
d05a1200:	f8df e2f4 	ldr.w	lr, [pc, #756]	; d05a14f8 <main+0x320>
d05a1204:	ea41 4106 	orr.w	r1, r1, r6, lsl #16
d05a1208:	ea41 6105 	orr.w	r1, r1, r5, lsl #24
d05a120c:	4dab      	ldr	r5, [pc, #684]	; (d05a14bc <main+0x2e4>)
d05a120e:	684e      	ldr	r6, [r1, #4]
d05a1210:	2118      	movs	r1, #24
d05a1212:	f8cd e004 	str.w	lr, [sp, #4]
d05a1216:	f8cd c000 	str.w	ip, [sp]
d05a121a:	9002      	str	r0, [sp, #8]
d05a121c:	4628      	mov	r0, r5
d05a121e:	6836      	ldr	r6, [r6, #0]
d05a1220:	47b0      	blx	r6
d05a1222:	7a23      	ldrb	r3, [r4, #8]
d05a1224:	7a62      	ldrb	r2, [r4, #9]
d05a1226:	7aa1      	ldrb	r1, [r4, #10]
d05a1228:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d05a122c:	7ae2      	ldrb	r2, [r4, #11]
d05a122e:	7828      	ldrb	r0, [r5, #0]
d05a1230:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d05a1234:	49a2      	ldr	r1, [pc, #648]	; (d05a14c0 <main+0x2e8>)
d05a1236:	4ea3      	ldr	r6, [pc, #652]	; (d05a14c4 <main+0x2ec>)
d05a1238:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d05a123c:	685b      	ldr	r3, [r3, #4]
d05a123e:	689b      	ldr	r3, [r3, #8]
d05a1240:	4798      	blx	r3
d05a1242:	7a23      	ldrb	r3, [r4, #8]
d05a1244:	7a62      	ldrb	r2, [r4, #9]
d05a1246:	7aa1      	ldrb	r1, [r4, #10]
d05a1248:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d05a124c:	7ae2      	ldrb	r2, [r4, #11]
d05a124e:	7828      	ldrb	r0, [r5, #0]
d05a1250:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d05a1254:	499c      	ldr	r1, [pc, #624]	; (d05a14c8 <main+0x2f0>)
d05a1256:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d05a125a:	685b      	ldr	r3, [r3, #4]
d05a125c:	699b      	ldr	r3, [r3, #24]
d05a125e:	4798      	blx	r3
d05a1260:	f8d6 8000 	ldr.w	r8, [r6]
d05a1264:	f1b8 0f00 	cmp.w	r8, #0
d05a1268:	f040 80f2 	bne.w	d05a1450 <main+0x278>
d05a126c:	7a20      	ldrb	r0, [r4, #8]
d05a126e:	7a61      	ldrb	r1, [r4, #9]
d05a1270:	7aa2      	ldrb	r2, [r4, #10]
d05a1272:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d05a1276:	7ae3      	ldrb	r3, [r4, #11]
d05a1278:	4894      	ldr	r0, [pc, #592]	; (d05a14cc <main+0x2f4>)
d05a127a:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d05a127e:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d05a1282:	699b      	ldr	r3, [r3, #24]
d05a1284:	681b      	ldr	r3, [r3, #0]
d05a1286:	4798      	blx	r3
d05a1288:	6030      	str	r0, [r6, #0]
d05a128a:	2800      	cmp	r0, #0
d05a128c:	f000 80e0 	beq.w	d05a1450 <main+0x278>
d05a1290:	f894 e008 	ldrb.w	lr, [r4, #8]
d05a1294:	4641      	mov	r1, r8
d05a1296:	7a62      	ldrb	r2, [r4, #9]
d05a1298:	4630      	mov	r0, r6
d05a129a:	f894 c00a 	ldrb.w	ip, [r4, #10]
d05a129e:	ea4e 2202 	orr.w	r2, lr, r2, lsl #8
d05a12a2:	7ae3      	ldrb	r3, [r4, #11]
d05a12a4:	f8df 9254 	ldr.w	r9, [pc, #596]	; d05a14fc <main+0x324>
d05a12a8:	ea42 4c0c 	orr.w	ip, r2, ip, lsl #16
d05a12ac:	4a88      	ldr	r2, [pc, #544]	; (d05a14d0 <main+0x2f8>)
d05a12ae:	ea4c 6303 	orr.w	r3, ip, r3, lsl #24
d05a12b2:	699b      	ldr	r3, [r3, #24]
d05a12b4:	685b      	ldr	r3, [r3, #4]
d05a12b6:	4798      	blx	r3
d05a12b8:	7a23      	ldrb	r3, [r4, #8]
d05a12ba:	f894 c009 	ldrb.w	ip, [r4, #9]
d05a12be:	4642      	mov	r2, r8
d05a12c0:	7aa1      	ldrb	r1, [r4, #10]
d05a12c2:	ea43 230c 	orr.w	r3, r3, ip, lsl #8
d05a12c6:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d05a12ca:	7ae1      	ldrb	r1, [r4, #11]
d05a12cc:	ea43 6301 	orr.w	r3, r3, r1, lsl #24
d05a12d0:	4980      	ldr	r1, [pc, #512]	; (d05a14d4 <main+0x2fc>)
d05a12d2:	699b      	ldr	r3, [r3, #24]
d05a12d4:	695b      	ldr	r3, [r3, #20]
d05a12d6:	4798      	blx	r3
d05a12d8:	f894 c008 	ldrb.w	ip, [r4, #8]
d05a12dc:	7a62      	ldrb	r2, [r4, #9]
d05a12de:	4641      	mov	r1, r8
d05a12e0:	7aa0      	ldrb	r0, [r4, #10]
d05a12e2:	ea4c 2202 	orr.w	r2, ip, r2, lsl #8
d05a12e6:	7ae3      	ldrb	r3, [r4, #11]
d05a12e8:	ea42 4000 	orr.w	r0, r2, r0, lsl #16
d05a12ec:	4a7a      	ldr	r2, [pc, #488]	; (d05a14d8 <main+0x300>)
d05a12ee:	ea40 6303 	orr.w	r3, r0, r3, lsl #24
d05a12f2:	4630      	mov	r0, r6
d05a12f4:	699b      	ldr	r3, [r3, #24]
d05a12f6:	685b      	ldr	r3, [r3, #4]
d05a12f8:	4798      	blx	r3
d05a12fa:	7a23      	ldrb	r3, [r4, #8]
d05a12fc:	f894 c009 	ldrb.w	ip, [r4, #9]
d05a1300:	4642      	mov	r2, r8
d05a1302:	7aa1      	ldrb	r1, [r4, #10]
d05a1304:	ea43 230c 	orr.w	r3, r3, ip, lsl #8
d05a1308:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d05a130c:	7ae1      	ldrb	r1, [r4, #11]
d05a130e:	ea43 6301 	orr.w	r3, r3, r1, lsl #24
d05a1312:	4972      	ldr	r1, [pc, #456]	; (d05a14dc <main+0x304>)
d05a1314:	699b      	ldr	r3, [r3, #24]
d05a1316:	695b      	ldr	r3, [r3, #20]
d05a1318:	4798      	blx	r3
d05a131a:	f894 c008 	ldrb.w	ip, [r4, #8]
d05a131e:	7a62      	ldrb	r2, [r4, #9]
d05a1320:	4641      	mov	r1, r8
d05a1322:	7aa0      	ldrb	r0, [r4, #10]
d05a1324:	ea4c 2202 	orr.w	r2, ip, r2, lsl #8
d05a1328:	7ae3      	ldrb	r3, [r4, #11]
d05a132a:	ea42 4000 	orr.w	r0, r2, r0, lsl #16
d05a132e:	4a6c      	ldr	r2, [pc, #432]	; (d05a14e0 <main+0x308>)
d05a1330:	ea40 6303 	orr.w	r3, r0, r3, lsl #24
d05a1334:	4630      	mov	r0, r6
d05a1336:	699b      	ldr	r3, [r3, #24]
d05a1338:	685b      	ldr	r3, [r3, #4]
d05a133a:	4798      	blx	r3
d05a133c:	7a23      	ldrb	r3, [r4, #8]
d05a133e:	f894 c009 	ldrb.w	ip, [r4, #9]
d05a1342:	2202      	movs	r2, #2
d05a1344:	9007      	str	r0, [sp, #28]
d05a1346:	4641      	mov	r1, r8
d05a1348:	ea43 230c 	orr.w	r3, r3, ip, lsl #8
d05a134c:	7aa0      	ldrb	r0, [r4, #10]
d05a134e:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
d05a1352:	7ae0      	ldrb	r0, [r4, #11]
d05a1354:	ea43 6300 	orr.w	r3, r3, r0, lsl #24
d05a1358:	a807      	add	r0, sp, #28
d05a135a:	699b      	ldr	r3, [r3, #24]
d05a135c:	699b      	ldr	r3, [r3, #24]
d05a135e:	4798      	blx	r3
d05a1360:	f894 c008 	ldrb.w	ip, [r4, #8]
d05a1364:	7a62      	ldrb	r2, [r4, #9]
d05a1366:	4641      	mov	r1, r8
d05a1368:	7aa0      	ldrb	r0, [r4, #10]
d05a136a:	ea4c 2202 	orr.w	r2, ip, r2, lsl #8
d05a136e:	7ae3      	ldrb	r3, [r4, #11]
d05a1370:	ea42 4000 	orr.w	r0, r2, r0, lsl #16
d05a1374:	4a5b      	ldr	r2, [pc, #364]	; (d05a14e4 <main+0x30c>)
d05a1376:	ea40 6303 	orr.w	r3, r0, r3, lsl #24
d05a137a:	4630      	mov	r0, r6
d05a137c:	699b      	ldr	r3, [r3, #24]
d05a137e:	685b      	ldr	r3, [r3, #4]
d05a1380:	4798      	blx	r3
d05a1382:	f894 c008 	ldrb.w	ip, [r4, #8]
d05a1386:	4639      	mov	r1, r7
d05a1388:	7a67      	ldrb	r7, [r4, #9]
d05a138a:	7aa3      	ldrb	r3, [r4, #10]
d05a138c:	ea4c 2207 	orr.w	r2, ip, r7, lsl #8
d05a1390:	f8df e16c 	ldr.w	lr, [pc, #364]	; d05a1500 <main+0x328>
d05a1394:	ea42 4703 	orr.w	r7, r2, r3, lsl #16
d05a1398:	7ae3      	ldrb	r3, [r4, #11]
d05a139a:	f8ce 0000 	str.w	r0, [lr]
d05a139e:	4630      	mov	r0, r6
d05a13a0:	ea47 6303 	orr.w	r3, r7, r3, lsl #24
d05a13a4:	4a50      	ldr	r2, [pc, #320]	; (d05a14e8 <main+0x310>)
d05a13a6:	699b      	ldr	r3, [r3, #24]
d05a13a8:	685b      	ldr	r3, [r3, #4]
d05a13aa:	4798      	blx	r3
d05a13ac:	7a23      	ldrb	r3, [r4, #8]
d05a13ae:	7a61      	ldrb	r1, [r4, #9]
d05a13b0:	4642      	mov	r2, r8
d05a13b2:	7aa7      	ldrb	r7, [r4, #10]
d05a13b4:	ea43 2101 	orr.w	r1, r3, r1, lsl #8
d05a13b8:	7ae3      	ldrb	r3, [r4, #11]
d05a13ba:	f8c9 0000 	str.w	r0, [r9]
d05a13be:	ea41 4707 	orr.w	r7, r1, r7, lsl #16
d05a13c2:	494a      	ldr	r1, [pc, #296]	; (d05a14ec <main+0x314>)
d05a13c4:	ea47 6303 	orr.w	r3, r7, r3, lsl #24
d05a13c8:	699b      	ldr	r3, [r3, #24]
d05a13ca:	695b      	ldr	r3, [r3, #20]
d05a13cc:	4798      	blx	r3
d05a13ce:	7a21      	ldrb	r1, [r4, #8]
d05a13d0:	f894 c009 	ldrb.w	ip, [r4, #9]
d05a13d4:	4648      	mov	r0, r9
d05a13d6:	7aa7      	ldrb	r7, [r4, #10]
d05a13d8:	2208      	movs	r2, #8
d05a13da:	ea41 2c0c 	orr.w	ip, r1, ip, lsl #8
d05a13de:	7ae3      	ldrb	r3, [r4, #11]
d05a13e0:	4641      	mov	r1, r8
d05a13e2:	ea4c 4707 	orr.w	r7, ip, r7, lsl #16
d05a13e6:	ea47 6303 	orr.w	r3, r7, r3, lsl #24
d05a13ea:	699b      	ldr	r3, [r3, #24]
d05a13ec:	699b      	ldr	r3, [r3, #24]
d05a13ee:	4798      	blx	r3
d05a13f0:	7a22      	ldrb	r2, [r4, #8]
d05a13f2:	f894 c009 	ldrb.w	ip, [r4, #9]
d05a13f6:	2102      	movs	r1, #2
d05a13f8:	7aa7      	ldrb	r7, [r4, #10]
d05a13fa:	4630      	mov	r0, r6
d05a13fc:	ea42 2c0c 	orr.w	ip, r2, ip, lsl #8
d05a1400:	7ae3      	ldrb	r3, [r4, #11]
d05a1402:	4a3b      	ldr	r2, [pc, #236]	; (d05a14f0 <main+0x318>)
d05a1404:	ea4c 4707 	orr.w	r7, ip, r7, lsl #16
d05a1408:	ea47 6303 	orr.w	r3, r7, r3, lsl #24
d05a140c:	699b      	ldr	r3, [r3, #24]
d05a140e:	685b      	ldr	r3, [r3, #4]
d05a1410:	4798      	blx	r3
d05a1412:	7a21      	ldrb	r1, [r4, #8]
d05a1414:	f894 c009 	ldrb.w	ip, [r4, #9]
d05a1418:	4642      	mov	r2, r8
d05a141a:	7aa7      	ldrb	r7, [r4, #10]
d05a141c:	ea41 2c0c 	orr.w	ip, r1, ip, lsl #8
d05a1420:	7ae3      	ldrb	r3, [r4, #11]
d05a1422:	4934      	ldr	r1, [pc, #208]	; (d05a14f4 <main+0x31c>)
d05a1424:	ea4c 4707 	orr.w	r7, ip, r7, lsl #16
d05a1428:	ea47 6303 	orr.w	r3, r7, r3, lsl #24
d05a142c:	699b      	ldr	r3, [r3, #24]
d05a142e:	695b      	ldr	r3, [r3, #20]
d05a1430:	4798      	blx	r3
d05a1432:	7a20      	ldrb	r0, [r4, #8]
d05a1434:	7a61      	ldrb	r1, [r4, #9]
d05a1436:	7aa2      	ldrb	r2, [r4, #10]
d05a1438:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d05a143c:	7ae3      	ldrb	r3, [r4, #11]
d05a143e:	6830      	ldr	r0, [r6, #0]
d05a1440:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d05a1444:	7829      	ldrb	r1, [r5, #0]
d05a1446:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d05a144a:	699b      	ldr	r3, [r3, #24]
d05a144c:	68db      	ldr	r3, [r3, #12]
d05a144e:	4798      	blx	r3
d05a1450:	7a20      	ldrb	r0, [r4, #8]
d05a1452:	2101      	movs	r1, #1
d05a1454:	f894 c009 	ldrb.w	ip, [r4, #9]
d05a1458:	2716      	movs	r7, #22
d05a145a:	7aa2      	ldrb	r2, [r4, #10]
d05a145c:	460e      	mov	r6, r1
d05a145e:	ea40 2c0c 	orr.w	ip, r0, ip, lsl #8
d05a1462:	7ae3      	ldrb	r3, [r4, #11]
d05a1464:	7828      	ldrb	r0, [r5, #0]
d05a1466:	ea4c 4202 	orr.w	r2, ip, r2, lsl #16
d05a146a:	f8df a098 	ldr.w	sl, [pc, #152]	; d05a1504 <main+0x32c>
d05a146e:	f8df 9098 	ldr.w	r9, [pc, #152]	; d05a1508 <main+0x330>
d05a1472:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d05a1476:	f8df 8094 	ldr.w	r8, [pc, #148]	; d05a150c <main+0x334>
d05a147a:	685b      	ldr	r3, [r3, #4]
d05a147c:	6a5b      	ldr	r3, [r3, #36]	; 0x24
d05a147e:	4798      	blx	r3
d05a1480:	f894 e008 	ldrb.w	lr, [r4, #8]
d05a1484:	7a61      	ldrb	r1, [r4, #9]
d05a1486:	2348      	movs	r3, #72	; 0x48
d05a1488:	7aa0      	ldrb	r0, [r4, #10]
d05a148a:	220a      	movs	r2, #10
d05a148c:	ea4e 2c01 	orr.w	ip, lr, r1, lsl #8
d05a1490:	f894 e00b 	ldrb.w	lr, [r4, #11]
d05a1494:	ea4c 4100 	orr.w	r1, ip, r0, lsl #16
d05a1498:	f8df c074 	ldr.w	ip, [pc, #116]	; d05a1510 <main+0x338>
d05a149c:	ea41 600e 	orr.w	r0, r1, lr, lsl #24
d05a14a0:	210c      	movs	r1, #12
d05a14a2:	f8d0 e00c 	ldr.w	lr, [r0, #12]
d05a14a6:	9602      	str	r6, [sp, #8]
d05a14a8:	e9cd 7c00 	strd	r7, ip, [sp]
d05a14ac:	f8de b008 	ldr.w	fp, [lr, #8]
d05a14b0:	7828      	ldrb	r0, [r5, #0]
d05a14b2:	e02f      	b.n	d05a1514 <main+0x33c>
d05a14b4:	d05a2a08 	.word	0xd05a2a08
d05a14b8:	2001f000 	.word	0x2001f000
d05a14bc:	d05b5c28 	.word	0xd05b5c28
d05a14c0:	d05a0339 	.word	0xd05a0339
d05a14c4:	d05b5c24 	.word	0xd05b5c24
d05a14c8:	d05a2880 	.word	0xd05a2880
d05a14cc:	d05a289c 	.word	0xd05a289c
d05a14d0:	d05a28b4 	.word	0xd05a28b4
d05a14d4:	d05a1149 	.word	0xd05a1149
d05a14d8:	d05a28bc 	.word	0xd05a28bc
d05a14dc:	d05a0461 	.word	0xd05a0461
d05a14e0:	d05a28c8 	.word	0xd05a28c8
d05a14e4:	d05a28c4 	.word	0xd05a28c4
d05a14e8:	d05a284c 	.word	0xd05a284c
d05a14ec:	d05a04b9 	.word	0xd05a04b9
d05a14f0:	d05a28cc 	.word	0xd05a28cc
d05a14f4:	d05a0109 	.word	0xd05a0109
d05a14f8:	d05a283c 	.word	0xd05a283c
d05a14fc:	d05b5c34 	.word	0xd05b5c34
d05a1500:	d05b5c30 	.word	0xd05b5c30
d05a1504:	d05a2a1c 	.word	0xd05a2a1c
d05a1508:	d05a2a10 	.word	0xd05a2a10
d05a150c:	d05a2a14 	.word	0xd05a2a14
d05a1510:	d05a28e0 	.word	0xd05a28e0
d05a1514:	47d8      	blx	fp
d05a1516:	f894 c008 	ldrb.w	ip, [r4, #8]
d05a151a:	f894 e009 	ldrb.w	lr, [r4, #9]
d05a151e:	2348      	movs	r3, #72	; 0x48
d05a1520:	f8ca 0000 	str.w	r0, [sl]
d05a1524:	220a      	movs	r2, #10
d05a1526:	ea4c 2c0e 	orr.w	ip, ip, lr, lsl #8
d05a152a:	7aa0      	ldrb	r0, [r4, #10]
d05a152c:	215e      	movs	r1, #94	; 0x5e
d05a152e:	ea4c 4c00 	orr.w	ip, ip, r0, lsl #16
d05a1532:	7ae0      	ldrb	r0, [r4, #11]
d05a1534:	ea4c 6c00 	orr.w	ip, ip, r0, lsl #24
d05a1538:	48b0      	ldr	r0, [pc, #704]	; (d05a17fc <main+0x624>)
d05a153a:	f8dc c00c 	ldr.w	ip, [ip, #12]
d05a153e:	9700      	str	r7, [sp, #0]
d05a1540:	9602      	str	r6, [sp, #8]
d05a1542:	9001      	str	r0, [sp, #4]
d05a1544:	f8dc b008 	ldr.w	fp, [ip, #8]
d05a1548:	7828      	ldrb	r0, [r5, #0]
d05a154a:	47d8      	blx	fp
d05a154c:	f894 c008 	ldrb.w	ip, [r4, #8]
d05a1550:	f894 e009 	ldrb.w	lr, [r4, #9]
d05a1554:	2348      	movs	r3, #72	; 0x48
d05a1556:	f8c9 0000 	str.w	r0, [r9]
d05a155a:	220a      	movs	r2, #10
d05a155c:	ea4c 2c0e 	orr.w	ip, ip, lr, lsl #8
d05a1560:	7aa0      	ldrb	r0, [r4, #10]
d05a1562:	21b0      	movs	r1, #176	; 0xb0
d05a1564:	ea4c 4c00 	orr.w	ip, ip, r0, lsl #16
d05a1568:	7ae0      	ldrb	r0, [r4, #11]
d05a156a:	ea4c 6c00 	orr.w	ip, ip, r0, lsl #24
d05a156e:	48a4      	ldr	r0, [pc, #656]	; (d05a1800 <main+0x628>)
d05a1570:	f8dc c00c 	ldr.w	ip, [ip, #12]
d05a1574:	9700      	str	r7, [sp, #0]
d05a1576:	9602      	str	r6, [sp, #8]
d05a1578:	9001      	str	r0, [sp, #4]
d05a157a:	f8dc b008 	ldr.w	fp, [ip, #8]
d05a157e:	7828      	ldrb	r0, [r5, #0]
d05a1580:	47d8      	blx	fp
d05a1582:	f894 c008 	ldrb.w	ip, [r4, #8]
d05a1586:	f894 e009 	ldrb.w	lr, [r4, #9]
d05a158a:	2348      	movs	r3, #72	; 0x48
d05a158c:	f8c8 0000 	str.w	r0, [r8]
d05a1590:	220a      	movs	r2, #10
d05a1592:	ea4c 2c0e 	orr.w	ip, ip, lr, lsl #8
d05a1596:	7aa0      	ldrb	r0, [r4, #10]
d05a1598:	f44f 71ac 	mov.w	r1, #344	; 0x158
d05a159c:	f8df b28c 	ldr.w	fp, [pc, #652]	; d05a182c <main+0x654>
d05a15a0:	ea4c 4c00 	orr.w	ip, ip, r0, lsl #16
d05a15a4:	7ae0      	ldrb	r0, [r4, #11]
d05a15a6:	ea4c 6c00 	orr.w	ip, ip, r0, lsl #24
d05a15aa:	4896      	ldr	r0, [pc, #600]	; (d05a1804 <main+0x62c>)
d05a15ac:	f8dc c00c 	ldr.w	ip, [ip, #12]
d05a15b0:	9700      	str	r7, [sp, #0]
d05a15b2:	9602      	str	r6, [sp, #8]
d05a15b4:	9001      	str	r0, [sp, #4]
d05a15b6:	f8dc 7008 	ldr.w	r7, [ip, #8]
d05a15ba:	7828      	ldrb	r0, [r5, #0]
d05a15bc:	47b8      	blx	r7
d05a15be:	7a21      	ldrb	r1, [r4, #8]
d05a15c0:	7a67      	ldrb	r7, [r4, #9]
d05a15c2:	f04f 0e40 	mov.w	lr, #64	; 0x40
d05a15c6:	f894 c00a 	ldrb.w	ip, [r4, #10]
d05a15ca:	2204      	movs	r2, #4
d05a15cc:	ea41 2707 	orr.w	r7, r1, r7, lsl #8
d05a15d0:	498d      	ldr	r1, [pc, #564]	; (d05a1808 <main+0x630>)
d05a15d2:	7ae3      	ldrb	r3, [r4, #11]
d05a15d4:	6008      	str	r0, [r1, #0]
d05a15d6:	ea47 400c 	orr.w	r0, r7, ip, lsl #16
d05a15da:	21c0      	movs	r1, #192	; 0xc0
d05a15dc:	f44f 7ccc 	mov.w	ip, #408	; 0x198
d05a15e0:	ea40 6303 	orr.w	r3, r0, r3, lsl #24
d05a15e4:	20c2      	movs	r0, #194	; 0xc2
d05a15e6:	68df      	ldr	r7, [r3, #12]
d05a15e8:	f44f 73cd 	mov.w	r3, #410	; 0x19a
d05a15ec:	f8cd e010 	str.w	lr, [sp, #16]
d05a15f0:	9203      	str	r2, [sp, #12]
d05a15f2:	222c      	movs	r2, #44	; 0x2c
d05a15f4:	9102      	str	r1, [sp, #8]
d05a15f6:	210c      	movs	r1, #12
d05a15f8:	e9cd 0c00 	strd	r0, ip, [sp]
d05a15fc:	687f      	ldr	r7, [r7, #4]
d05a15fe:	7828      	ldrb	r0, [r5, #0]
d05a1600:	47b8      	blx	r7
d05a1602:	7a21      	ldrb	r1, [r4, #8]
d05a1604:	7a62      	ldrb	r2, [r4, #9]
d05a1606:	7aa3      	ldrb	r3, [r4, #10]
d05a1608:	ea41 2202 	orr.w	r2, r1, r2, lsl #8
d05a160c:	f894 c00b 	ldrb.w	ip, [r4, #11]
d05a1610:	4f7e      	ldr	r7, [pc, #504]	; (d05a180c <main+0x634>)
d05a1612:	ea42 4303 	orr.w	r3, r2, r3, lsl #16
d05a1616:	497e      	ldr	r1, [pc, #504]	; (d05a1810 <main+0x638>)
d05a1618:	6038      	str	r0, [r7, #0]
d05a161a:	ea43 630c 	orr.w	r3, r3, ip, lsl #24
d05a161e:	68db      	ldr	r3, [r3, #12]
d05a1620:	6f5b      	ldr	r3, [r3, #116]	; 0x74
d05a1622:	4798      	blx	r3
d05a1624:	f894 c008 	ldrb.w	ip, [r4, #8]
d05a1628:	7a61      	ldrb	r1, [r4, #9]
d05a162a:	2200      	movs	r2, #0
d05a162c:	7aa3      	ldrb	r3, [r4, #10]
d05a162e:	ea4c 2001 	orr.w	r0, ip, r1, lsl #8
d05a1632:	f894 c00b 	ldrb.w	ip, [r4, #11]
d05a1636:	ea40 4103 	orr.w	r1, r0, r3, lsl #16
d05a163a:	f8da 0000 	ldr.w	r0, [sl]
d05a163e:	ea41 630c 	orr.w	r3, r1, ip, lsl #24
d05a1642:	4974      	ldr	r1, [pc, #464]	; (d05a1814 <main+0x63c>)
d05a1644:	68db      	ldr	r3, [r3, #12]
d05a1646:	6e1b      	ldr	r3, [r3, #96]	; 0x60
d05a1648:	4798      	blx	r3
d05a164a:	f894 c008 	ldrb.w	ip, [r4, #8]
d05a164e:	7a61      	ldrb	r1, [r4, #9]
d05a1650:	2200      	movs	r2, #0
d05a1652:	7aa3      	ldrb	r3, [r4, #10]
d05a1654:	ea4c 2001 	orr.w	r0, ip, r1, lsl #8
d05a1658:	f894 c00b 	ldrb.w	ip, [r4, #11]
d05a165c:	ea40 4103 	orr.w	r1, r0, r3, lsl #16
d05a1660:	f8d9 0000 	ldr.w	r0, [r9]
d05a1664:	ea41 630c 	orr.w	r3, r1, ip, lsl #24
d05a1668:	496b      	ldr	r1, [pc, #428]	; (d05a1818 <main+0x640>)
d05a166a:	68db      	ldr	r3, [r3, #12]
d05a166c:	6e1b      	ldr	r3, [r3, #96]	; 0x60
d05a166e:	4798      	blx	r3
d05a1670:	f894 c008 	ldrb.w	ip, [r4, #8]
d05a1674:	7a61      	ldrb	r1, [r4, #9]
d05a1676:	2200      	movs	r2, #0
d05a1678:	7aa3      	ldrb	r3, [r4, #10]
d05a167a:	ea4c 2001 	orr.w	r0, ip, r1, lsl #8
d05a167e:	f894 c00b 	ldrb.w	ip, [r4, #11]
d05a1682:	ea40 4103 	orr.w	r1, r0, r3, lsl #16
d05a1686:	f8d8 0000 	ldr.w	r0, [r8]
d05a168a:	ea41 630c 	orr.w	r3, r1, ip, lsl #24
d05a168e:	4963      	ldr	r1, [pc, #396]	; (d05a181c <main+0x644>)
d05a1690:	68db      	ldr	r3, [r3, #12]
d05a1692:	6e1b      	ldr	r3, [r3, #96]	; 0x60
d05a1694:	4798      	blx	r3
d05a1696:	f894 c008 	ldrb.w	ip, [r4, #8]
d05a169a:	7a61      	ldrb	r1, [r4, #9]
d05a169c:	2200      	movs	r2, #0
d05a169e:	7aa3      	ldrb	r3, [r4, #10]
d05a16a0:	ea4c 2001 	orr.w	r0, ip, r1, lsl #8
d05a16a4:	f894 c00b 	ldrb.w	ip, [r4, #11]
d05a16a8:	ea40 4103 	orr.w	r1, r0, r3, lsl #16
d05a16ac:	4b56      	ldr	r3, [pc, #344]	; (d05a1808 <main+0x630>)
d05a16ae:	6818      	ldr	r0, [r3, #0]
d05a16b0:	ea41 630c 	orr.w	r3, r1, ip, lsl #24
d05a16b4:	495a      	ldr	r1, [pc, #360]	; (d05a1820 <main+0x648>)
d05a16b6:	68db      	ldr	r3, [r3, #12]
d05a16b8:	6e1b      	ldr	r3, [r3, #96]	; 0x60
d05a16ba:	4798      	blx	r3
d05a16bc:	7a20      	ldrb	r0, [r4, #8]
d05a16be:	7a62      	ldrb	r2, [r4, #9]
d05a16c0:	f894 c00a 	ldrb.w	ip, [r4, #10]
d05a16c4:	ea40 2102 	orr.w	r1, r0, r2, lsl #8
d05a16c8:	7ae3      	ldrb	r3, [r4, #11]
d05a16ca:	f8da 0000 	ldr.w	r0, [sl]
d05a16ce:	ea41 420c 	orr.w	r2, r1, ip, lsl #16
d05a16d2:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d05a16d6:	68db      	ldr	r3, [r3, #12]
d05a16d8:	6d9b      	ldr	r3, [r3, #88]	; 0x58
d05a16da:	4798      	blx	r3
d05a16dc:	7a20      	ldrb	r0, [r4, #8]
d05a16de:	7a61      	ldrb	r1, [r4, #9]
d05a16e0:	7aa2      	ldrb	r2, [r4, #10]
d05a16e2:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d05a16e6:	7ae3      	ldrb	r3, [r4, #11]
d05a16e8:	f8d9 0000 	ldr.w	r0, [r9]
d05a16ec:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d05a16f0:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d05a16f4:	68db      	ldr	r3, [r3, #12]
d05a16f6:	6d9b      	ldr	r3, [r3, #88]	; 0x58
d05a16f8:	4798      	blx	r3
d05a16fa:	7a20      	ldrb	r0, [r4, #8]
d05a16fc:	7a61      	ldrb	r1, [r4, #9]
d05a16fe:	7aa2      	ldrb	r2, [r4, #10]
d05a1700:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d05a1704:	7ae3      	ldrb	r3, [r4, #11]
d05a1706:	f8d8 0000 	ldr.w	r0, [r8]
d05a170a:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d05a170e:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d05a1712:	68db      	ldr	r3, [r3, #12]
d05a1714:	6d9b      	ldr	r3, [r3, #88]	; 0x58
d05a1716:	4798      	blx	r3
d05a1718:	7a20      	ldrb	r0, [r4, #8]
d05a171a:	7a61      	ldrb	r1, [r4, #9]
d05a171c:	7aa2      	ldrb	r2, [r4, #10]
d05a171e:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d05a1722:	7ae3      	ldrb	r3, [r4, #11]
d05a1724:	4838      	ldr	r0, [pc, #224]	; (d05a1808 <main+0x630>)
d05a1726:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d05a172a:	6800      	ldr	r0, [r0, #0]
d05a172c:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d05a1730:	68db      	ldr	r3, [r3, #12]
d05a1732:	6d9b      	ldr	r3, [r3, #88]	; 0x58
d05a1734:	4798      	blx	r3
d05a1736:	7a20      	ldrb	r0, [r4, #8]
d05a1738:	7a61      	ldrb	r1, [r4, #9]
d05a173a:	7aa2      	ldrb	r2, [r4, #10]
d05a173c:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d05a1740:	7ae3      	ldrb	r3, [r4, #11]
d05a1742:	6838      	ldr	r0, [r7, #0]
d05a1744:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d05a1748:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d05a174c:	68db      	ldr	r3, [r3, #12]
d05a174e:	6d9b      	ldr	r3, [r3, #88]	; 0x58
d05a1750:	4798      	blx	r3
d05a1752:	f44f 3299 	mov.w	r2, #78336	; 0x13200
d05a1756:	2100      	movs	r1, #0
d05a1758:	482d      	ldr	r0, [pc, #180]	; (d05a1810 <main+0x638>)
d05a175a:	f000 f893 	bl	d05a1884 <memset>
d05a175e:	7820      	ldrb	r0, [r4, #0]
d05a1760:	7861      	ldrb	r1, [r4, #1]
d05a1762:	78a2      	ldrb	r2, [r4, #2]
d05a1764:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d05a1768:	78e3      	ldrb	r3, [r4, #3]
d05a176a:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d05a176e:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d05a1772:	689b      	ldr	r3, [r3, #8]
d05a1774:	4798      	blx	r3
d05a1776:	4a2b      	ldr	r2, [pc, #172]	; (d05a1824 <main+0x64c>)
d05a1778:	6813      	ldr	r3, [r2, #0]
d05a177a:	4058      	eors	r0, r3
d05a177c:	6010      	str	r0, [r2, #0]
d05a177e:	f7fe fe25 	bl	d05a03cc <clear_demo>
d05a1782:	7a20      	ldrb	r0, [r4, #8]
d05a1784:	7a61      	ldrb	r1, [r4, #9]
d05a1786:	7aa2      	ldrb	r2, [r4, #10]
d05a1788:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d05a178c:	7ae3      	ldrb	r3, [r4, #11]
d05a178e:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d05a1792:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d05a1796:	695b      	ldr	r3, [r3, #20]
d05a1798:	681b      	ldr	r3, [r3, #0]
d05a179a:	4798      	blx	r3
d05a179c:	28ff      	cmp	r0, #255	; 0xff
d05a179e:	f88b 0000 	strb.w	r0, [fp]
d05a17a2:	d065      	beq.n	d05a1870 <main+0x698>
d05a17a4:	f894 c008 	ldrb.w	ip, [r4, #8]
d05a17a8:	f04f 0e00 	mov.w	lr, #0
d05a17ac:	7a61      	ldrb	r1, [r4, #9]
d05a17ae:	2232      	movs	r2, #50	; 0x32
d05a17b0:	7aa3      	ldrb	r3, [r4, #10]
d05a17b2:	ea4c 2101 	orr.w	r1, ip, r1, lsl #8
d05a17b6:	7ae7      	ldrb	r7, [r4, #11]
d05a17b8:	ea41 4303 	orr.w	r3, r1, r3, lsl #16
d05a17bc:	4611      	mov	r1, r2
d05a17be:	ea43 6707 	orr.w	r7, r3, r7, lsl #24
d05a17c2:	4b19      	ldr	r3, [pc, #100]	; (d05a1828 <main+0x650>)
d05a17c4:	697f      	ldr	r7, [r7, #20]
d05a17c6:	f8cd e000 	str.w	lr, [sp]
d05a17ca:	68bf      	ldr	r7, [r7, #8]
d05a17cc:	47b8      	blx	r7
d05a17ce:	b378      	cbz	r0, d05a1830 <main+0x658>
d05a17d0:	7a20      	ldrb	r0, [r4, #8]
d05a17d2:	7a61      	ldrb	r1, [r4, #9]
d05a17d4:	7aa2      	ldrb	r2, [r4, #10]
d05a17d6:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d05a17da:	7ae3      	ldrb	r3, [r4, #11]
d05a17dc:	f89b 0000 	ldrb.w	r0, [fp]
d05a17e0:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d05a17e4:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d05a17e8:	695b      	ldr	r3, [r3, #20]
d05a17ea:	685b      	ldr	r3, [r3, #4]
d05a17ec:	4798      	blx	r3
d05a17ee:	23ff      	movs	r3, #255	; 0xff
d05a17f0:	4630      	mov	r0, r6
d05a17f2:	f88b 3000 	strb.w	r3, [fp]
d05a17f6:	f7fe fd0b 	bl	d05a0210 <set_paused_state>
d05a17fa:	e019      	b.n	d05a1830 <main+0x658>
d05a17fc:	d05a28b4 	.word	0xd05a28b4
d05a1800:	d05a28bc 	.word	0xd05a28bc
d05a1804:	d05a28e8 	.word	0xd05a28e8
d05a1808:	d05a2a18 	.word	0xd05a2a18
d05a180c:	d05a2a0c 	.word	0xd05a2a0c
d05a1810:	d05a2a20 	.word	0xd05a2a20
d05a1814:	d05a0465 	.word	0xd05a0465
d05a1818:	d05a10b9 	.word	0xd05a10b9
d05a181c:	d05a045d 	.word	0xd05a045d
d05a1820:	d05a0329 	.word	0xd05a0329
d05a1824:	d05a2994 	.word	0xd05a2994
d05a1828:	d05a1005 	.word	0xd05a1005
d05a182c:	d05a2990 	.word	0xd05a2990
d05a1830:	7a23      	ldrb	r3, [r4, #8]
d05a1832:	7a62      	ldrb	r2, [r4, #9]
d05a1834:	7aa1      	ldrb	r1, [r4, #10]
d05a1836:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d05a183a:	7ae2      	ldrb	r2, [r4, #11]
d05a183c:	7828      	ldrb	r0, [r5, #0]
d05a183e:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d05a1842:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d05a1846:	685b      	ldr	r3, [r3, #4]
d05a1848:	68db      	ldr	r3, [r3, #12]
d05a184a:	4798      	blx	r3
d05a184c:	7a23      	ldrb	r3, [r4, #8]
d05a184e:	7a62      	ldrb	r2, [r4, #9]
d05a1850:	7aa1      	ldrb	r1, [r4, #10]
d05a1852:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d05a1856:	7ae2      	ldrb	r2, [r4, #11]
d05a1858:	7828      	ldrb	r0, [r5, #0]
d05a185a:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d05a185e:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d05a1862:	685b      	ldr	r3, [r3, #4]
d05a1864:	695b      	ldr	r3, [r3, #20]
d05a1866:	4798      	blx	r3
d05a1868:	2000      	movs	r0, #0
d05a186a:	b009      	add	sp, #36	; 0x24
d05a186c:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d05a1870:	4630      	mov	r0, r6
d05a1872:	f7fe fccd 	bl	d05a0210 <set_paused_state>
d05a1876:	e7db      	b.n	d05a1830 <main+0x658>

d05a1878 <__errno>:
d05a1878:	4b01      	ldr	r3, [pc, #4]	; (d05a1880 <__errno+0x8>)
d05a187a:	6818      	ldr	r0, [r3, #0]
d05a187c:	4770      	bx	lr
d05a187e:	bf00      	nop
d05a1880:	d05a2998 	.word	0xd05a2998

d05a1884 <memset>:
d05a1884:	4402      	add	r2, r0
d05a1886:	4603      	mov	r3, r0
d05a1888:	4293      	cmp	r3, r2
d05a188a:	d100      	bne.n	d05a188e <memset+0xa>
d05a188c:	4770      	bx	lr
d05a188e:	f803 1b01 	strb.w	r1, [r3], #1
d05a1892:	e7f9      	b.n	d05a1888 <memset+0x4>

d05a1894 <setbuf>:
d05a1894:	2900      	cmp	r1, #0
d05a1896:	f44f 6380 	mov.w	r3, #1024	; 0x400
d05a189a:	bf0c      	ite	eq
d05a189c:	2202      	moveq	r2, #2
d05a189e:	2200      	movne	r2, #0
d05a18a0:	f000 b800 	b.w	d05a18a4 <setvbuf>

d05a18a4 <setvbuf>:
d05a18a4:	e92d 43f7 	stmdb	sp!, {r0, r1, r2, r4, r5, r6, r7, r8, r9, lr}
d05a18a8:	461d      	mov	r5, r3
d05a18aa:	4b5d      	ldr	r3, [pc, #372]	; (d05a1a20 <setvbuf+0x17c>)
d05a18ac:	681f      	ldr	r7, [r3, #0]
d05a18ae:	4604      	mov	r4, r0
d05a18b0:	460e      	mov	r6, r1
d05a18b2:	4690      	mov	r8, r2
d05a18b4:	b127      	cbz	r7, d05a18c0 <setvbuf+0x1c>
d05a18b6:	69bb      	ldr	r3, [r7, #24]
d05a18b8:	b913      	cbnz	r3, d05a18c0 <setvbuf+0x1c>
d05a18ba:	4638      	mov	r0, r7
d05a18bc:	f000 fa06 	bl	d05a1ccc <__sinit>
d05a18c0:	4b58      	ldr	r3, [pc, #352]	; (d05a1a24 <setvbuf+0x180>)
d05a18c2:	429c      	cmp	r4, r3
d05a18c4:	d167      	bne.n	d05a1996 <setvbuf+0xf2>
d05a18c6:	687c      	ldr	r4, [r7, #4]
d05a18c8:	f1b8 0f02 	cmp.w	r8, #2
d05a18cc:	d006      	beq.n	d05a18dc <setvbuf+0x38>
d05a18ce:	f1b8 0f01 	cmp.w	r8, #1
d05a18d2:	f200 809f 	bhi.w	d05a1a14 <setvbuf+0x170>
d05a18d6:	2d00      	cmp	r5, #0
d05a18d8:	f2c0 809c 	blt.w	d05a1a14 <setvbuf+0x170>
d05a18dc:	6e63      	ldr	r3, [r4, #100]	; 0x64
d05a18de:	07db      	lsls	r3, r3, #31
d05a18e0:	d405      	bmi.n	d05a18ee <setvbuf+0x4a>
d05a18e2:	89a3      	ldrh	r3, [r4, #12]
d05a18e4:	0598      	lsls	r0, r3, #22
d05a18e6:	d402      	bmi.n	d05a18ee <setvbuf+0x4a>
d05a18e8:	6da0      	ldr	r0, [r4, #88]	; 0x58
d05a18ea:	f000 fa8d 	bl	d05a1e08 <__retarget_lock_acquire_recursive>
d05a18ee:	4621      	mov	r1, r4
d05a18f0:	4638      	mov	r0, r7
d05a18f2:	f000 f957 	bl	d05a1ba4 <_fflush_r>
d05a18f6:	6b61      	ldr	r1, [r4, #52]	; 0x34
d05a18f8:	b141      	cbz	r1, d05a190c <setvbuf+0x68>
d05a18fa:	f104 0344 	add.w	r3, r4, #68	; 0x44
d05a18fe:	4299      	cmp	r1, r3
d05a1900:	d002      	beq.n	d05a1908 <setvbuf+0x64>
d05a1902:	4638      	mov	r0, r7
d05a1904:	f000 faae 	bl	d05a1e64 <_free_r>
d05a1908:	2300      	movs	r3, #0
d05a190a:	6363      	str	r3, [r4, #52]	; 0x34
d05a190c:	2300      	movs	r3, #0
d05a190e:	61a3      	str	r3, [r4, #24]
d05a1910:	6063      	str	r3, [r4, #4]
d05a1912:	89a3      	ldrh	r3, [r4, #12]
d05a1914:	0619      	lsls	r1, r3, #24
d05a1916:	d503      	bpl.n	d05a1920 <setvbuf+0x7c>
d05a1918:	6921      	ldr	r1, [r4, #16]
d05a191a:	4638      	mov	r0, r7
d05a191c:	f000 faa2 	bl	d05a1e64 <_free_r>
d05a1920:	89a3      	ldrh	r3, [r4, #12]
d05a1922:	f423 634a 	bic.w	r3, r3, #3232	; 0xca0
d05a1926:	f023 0303 	bic.w	r3, r3, #3
d05a192a:	f1b8 0f02 	cmp.w	r8, #2
d05a192e:	81a3      	strh	r3, [r4, #12]
d05a1930:	d06c      	beq.n	d05a1a0c <setvbuf+0x168>
d05a1932:	ab01      	add	r3, sp, #4
d05a1934:	466a      	mov	r2, sp
d05a1936:	4621      	mov	r1, r4
d05a1938:	4638      	mov	r0, r7
d05a193a:	f000 fa67 	bl	d05a1e0c <__swhatbuf_r>
d05a193e:	89a3      	ldrh	r3, [r4, #12]
d05a1940:	4318      	orrs	r0, r3
d05a1942:	81a0      	strh	r0, [r4, #12]
d05a1944:	2d00      	cmp	r5, #0
d05a1946:	d130      	bne.n	d05a19aa <setvbuf+0x106>
d05a1948:	9d00      	ldr	r5, [sp, #0]
d05a194a:	4628      	mov	r0, r5
d05a194c:	f000 fa82 	bl	d05a1e54 <malloc>
d05a1950:	4606      	mov	r6, r0
d05a1952:	2800      	cmp	r0, #0
d05a1954:	d155      	bne.n	d05a1a02 <setvbuf+0x15e>
d05a1956:	f8dd 9000 	ldr.w	r9, [sp]
d05a195a:	45a9      	cmp	r9, r5
d05a195c:	d14a      	bne.n	d05a19f4 <setvbuf+0x150>
d05a195e:	f04f 35ff 	mov.w	r5, #4294967295	; 0xffffffff
d05a1962:	2200      	movs	r2, #0
d05a1964:	60a2      	str	r2, [r4, #8]
d05a1966:	f104 0247 	add.w	r2, r4, #71	; 0x47
d05a196a:	6022      	str	r2, [r4, #0]
d05a196c:	6122      	str	r2, [r4, #16]
d05a196e:	2201      	movs	r2, #1
d05a1970:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
d05a1974:	6162      	str	r2, [r4, #20]
d05a1976:	6e62      	ldr	r2, [r4, #100]	; 0x64
d05a1978:	f043 0302 	orr.w	r3, r3, #2
d05a197c:	07d2      	lsls	r2, r2, #31
d05a197e:	81a3      	strh	r3, [r4, #12]
d05a1980:	d405      	bmi.n	d05a198e <setvbuf+0xea>
d05a1982:	f413 7f00 	tst.w	r3, #512	; 0x200
d05a1986:	d102      	bne.n	d05a198e <setvbuf+0xea>
d05a1988:	6da0      	ldr	r0, [r4, #88]	; 0x58
d05a198a:	f000 fa3e 	bl	d05a1e0a <__retarget_lock_release_recursive>
d05a198e:	4628      	mov	r0, r5
d05a1990:	b003      	add	sp, #12
d05a1992:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
d05a1996:	4b24      	ldr	r3, [pc, #144]	; (d05a1a28 <setvbuf+0x184>)
d05a1998:	429c      	cmp	r4, r3
d05a199a:	d101      	bne.n	d05a19a0 <setvbuf+0xfc>
d05a199c:	68bc      	ldr	r4, [r7, #8]
d05a199e:	e793      	b.n	d05a18c8 <setvbuf+0x24>
d05a19a0:	4b22      	ldr	r3, [pc, #136]	; (d05a1a2c <setvbuf+0x188>)
d05a19a2:	429c      	cmp	r4, r3
d05a19a4:	bf08      	it	eq
d05a19a6:	68fc      	ldreq	r4, [r7, #12]
d05a19a8:	e78e      	b.n	d05a18c8 <setvbuf+0x24>
d05a19aa:	2e00      	cmp	r6, #0
d05a19ac:	d0cd      	beq.n	d05a194a <setvbuf+0xa6>
d05a19ae:	69bb      	ldr	r3, [r7, #24]
d05a19b0:	b913      	cbnz	r3, d05a19b8 <setvbuf+0x114>
d05a19b2:	4638      	mov	r0, r7
d05a19b4:	f000 f98a 	bl	d05a1ccc <__sinit>
d05a19b8:	f1b8 0f01 	cmp.w	r8, #1
d05a19bc:	bf08      	it	eq
d05a19be:	89a3      	ldrheq	r3, [r4, #12]
d05a19c0:	6026      	str	r6, [r4, #0]
d05a19c2:	bf04      	itt	eq
d05a19c4:	f043 0301 	orreq.w	r3, r3, #1
d05a19c8:	81a3      	strheq	r3, [r4, #12]
d05a19ca:	89a2      	ldrh	r2, [r4, #12]
d05a19cc:	f012 0308 	ands.w	r3, r2, #8
d05a19d0:	e9c4 6504 	strd	r6, r5, [r4, #16]
d05a19d4:	d01c      	beq.n	d05a1a10 <setvbuf+0x16c>
d05a19d6:	07d3      	lsls	r3, r2, #31
d05a19d8:	bf41      	itttt	mi
d05a19da:	2300      	movmi	r3, #0
d05a19dc:	426d      	negmi	r5, r5
d05a19de:	60a3      	strmi	r3, [r4, #8]
d05a19e0:	61a5      	strmi	r5, [r4, #24]
d05a19e2:	bf58      	it	pl
d05a19e4:	60a5      	strpl	r5, [r4, #8]
d05a19e6:	6e65      	ldr	r5, [r4, #100]	; 0x64
d05a19e8:	f015 0501 	ands.w	r5, r5, #1
d05a19ec:	d115      	bne.n	d05a1a1a <setvbuf+0x176>
d05a19ee:	f412 7f00 	tst.w	r2, #512	; 0x200
d05a19f2:	e7c8      	b.n	d05a1986 <setvbuf+0xe2>
d05a19f4:	4648      	mov	r0, r9
d05a19f6:	f000 fa2d 	bl	d05a1e54 <malloc>
d05a19fa:	4606      	mov	r6, r0
d05a19fc:	2800      	cmp	r0, #0
d05a19fe:	d0ae      	beq.n	d05a195e <setvbuf+0xba>
d05a1a00:	464d      	mov	r5, r9
d05a1a02:	89a3      	ldrh	r3, [r4, #12]
d05a1a04:	f043 0380 	orr.w	r3, r3, #128	; 0x80
d05a1a08:	81a3      	strh	r3, [r4, #12]
d05a1a0a:	e7d0      	b.n	d05a19ae <setvbuf+0x10a>
d05a1a0c:	2500      	movs	r5, #0
d05a1a0e:	e7a8      	b.n	d05a1962 <setvbuf+0xbe>
d05a1a10:	60a3      	str	r3, [r4, #8]
d05a1a12:	e7e8      	b.n	d05a19e6 <setvbuf+0x142>
d05a1a14:	f04f 35ff 	mov.w	r5, #4294967295	; 0xffffffff
d05a1a18:	e7b9      	b.n	d05a198e <setvbuf+0xea>
d05a1a1a:	2500      	movs	r5, #0
d05a1a1c:	e7b7      	b.n	d05a198e <setvbuf+0xea>
d05a1a1e:	bf00      	nop
d05a1a20:	d05a2998 	.word	0xd05a2998
d05a1a24:	d05a2914 	.word	0xd05a2914
d05a1a28:	d05a2934 	.word	0xd05a2934
d05a1a2c:	d05a28f4 	.word	0xd05a28f4

d05a1a30 <sniprintf>:
d05a1a30:	b40c      	push	{r2, r3}
d05a1a32:	b530      	push	{r4, r5, lr}
d05a1a34:	4b17      	ldr	r3, [pc, #92]	; (d05a1a94 <sniprintf+0x64>)
d05a1a36:	1e0c      	subs	r4, r1, #0
d05a1a38:	681d      	ldr	r5, [r3, #0]
d05a1a3a:	b09d      	sub	sp, #116	; 0x74
d05a1a3c:	da08      	bge.n	d05a1a50 <sniprintf+0x20>
d05a1a3e:	238b      	movs	r3, #139	; 0x8b
d05a1a40:	602b      	str	r3, [r5, #0]
d05a1a42:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d05a1a46:	b01d      	add	sp, #116	; 0x74
d05a1a48:	e8bd 4030 	ldmia.w	sp!, {r4, r5, lr}
d05a1a4c:	b002      	add	sp, #8
d05a1a4e:	4770      	bx	lr
d05a1a50:	f44f 7302 	mov.w	r3, #520	; 0x208
d05a1a54:	f8ad 3014 	strh.w	r3, [sp, #20]
d05a1a58:	bf14      	ite	ne
d05a1a5a:	f104 33ff 	addne.w	r3, r4, #4294967295	; 0xffffffff
d05a1a5e:	4623      	moveq	r3, r4
d05a1a60:	9304      	str	r3, [sp, #16]
d05a1a62:	9307      	str	r3, [sp, #28]
d05a1a64:	f64f 73ff 	movw	r3, #65535	; 0xffff
d05a1a68:	9002      	str	r0, [sp, #8]
d05a1a6a:	9006      	str	r0, [sp, #24]
d05a1a6c:	f8ad 3016 	strh.w	r3, [sp, #22]
d05a1a70:	9a20      	ldr	r2, [sp, #128]	; 0x80
d05a1a72:	ab21      	add	r3, sp, #132	; 0x84
d05a1a74:	a902      	add	r1, sp, #8
d05a1a76:	4628      	mov	r0, r5
d05a1a78:	9301      	str	r3, [sp, #4]
d05a1a7a:	f000 faf9 	bl	d05a2070 <_svfiprintf_r>
d05a1a7e:	1c43      	adds	r3, r0, #1
d05a1a80:	bfbc      	itt	lt
d05a1a82:	238b      	movlt	r3, #139	; 0x8b
d05a1a84:	602b      	strlt	r3, [r5, #0]
d05a1a86:	2c00      	cmp	r4, #0
d05a1a88:	d0dd      	beq.n	d05a1a46 <sniprintf+0x16>
d05a1a8a:	9b02      	ldr	r3, [sp, #8]
d05a1a8c:	2200      	movs	r2, #0
d05a1a8e:	701a      	strb	r2, [r3, #0]
d05a1a90:	e7d9      	b.n	d05a1a46 <sniprintf+0x16>
d05a1a92:	bf00      	nop
d05a1a94:	d05a2998 	.word	0xd05a2998

d05a1a98 <__sflush_r>:
d05a1a98:	898a      	ldrh	r2, [r1, #12]
d05a1a9a:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
d05a1a9e:	4605      	mov	r5, r0
d05a1aa0:	0710      	lsls	r0, r2, #28
d05a1aa2:	460c      	mov	r4, r1
d05a1aa4:	d458      	bmi.n	d05a1b58 <__sflush_r+0xc0>
d05a1aa6:	684b      	ldr	r3, [r1, #4]
d05a1aa8:	2b00      	cmp	r3, #0
d05a1aaa:	dc05      	bgt.n	d05a1ab8 <__sflush_r+0x20>
d05a1aac:	6c0b      	ldr	r3, [r1, #64]	; 0x40
d05a1aae:	2b00      	cmp	r3, #0
d05a1ab0:	dc02      	bgt.n	d05a1ab8 <__sflush_r+0x20>
d05a1ab2:	2000      	movs	r0, #0
d05a1ab4:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
d05a1ab8:	6ae6      	ldr	r6, [r4, #44]	; 0x2c
d05a1aba:	2e00      	cmp	r6, #0
d05a1abc:	d0f9      	beq.n	d05a1ab2 <__sflush_r+0x1a>
d05a1abe:	2300      	movs	r3, #0
d05a1ac0:	f412 5280 	ands.w	r2, r2, #4096	; 0x1000
d05a1ac4:	682f      	ldr	r7, [r5, #0]
d05a1ac6:	602b      	str	r3, [r5, #0]
d05a1ac8:	d032      	beq.n	d05a1b30 <__sflush_r+0x98>
d05a1aca:	6d60      	ldr	r0, [r4, #84]	; 0x54
d05a1acc:	89a3      	ldrh	r3, [r4, #12]
d05a1ace:	075a      	lsls	r2, r3, #29
d05a1ad0:	d505      	bpl.n	d05a1ade <__sflush_r+0x46>
d05a1ad2:	6863      	ldr	r3, [r4, #4]
d05a1ad4:	1ac0      	subs	r0, r0, r3
d05a1ad6:	6b63      	ldr	r3, [r4, #52]	; 0x34
d05a1ad8:	b10b      	cbz	r3, d05a1ade <__sflush_r+0x46>
d05a1ada:	6c23      	ldr	r3, [r4, #64]	; 0x40
d05a1adc:	1ac0      	subs	r0, r0, r3
d05a1ade:	2300      	movs	r3, #0
d05a1ae0:	4602      	mov	r2, r0
d05a1ae2:	6ae6      	ldr	r6, [r4, #44]	; 0x2c
d05a1ae4:	6a21      	ldr	r1, [r4, #32]
d05a1ae6:	4628      	mov	r0, r5
d05a1ae8:	47b0      	blx	r6
d05a1aea:	1c43      	adds	r3, r0, #1
d05a1aec:	89a3      	ldrh	r3, [r4, #12]
d05a1aee:	d106      	bne.n	d05a1afe <__sflush_r+0x66>
d05a1af0:	6829      	ldr	r1, [r5, #0]
d05a1af2:	291d      	cmp	r1, #29
d05a1af4:	d82c      	bhi.n	d05a1b50 <__sflush_r+0xb8>
d05a1af6:	4a2a      	ldr	r2, [pc, #168]	; (d05a1ba0 <__sflush_r+0x108>)
d05a1af8:	40ca      	lsrs	r2, r1
d05a1afa:	07d6      	lsls	r6, r2, #31
d05a1afc:	d528      	bpl.n	d05a1b50 <__sflush_r+0xb8>
d05a1afe:	2200      	movs	r2, #0
d05a1b00:	6062      	str	r2, [r4, #4]
d05a1b02:	04d9      	lsls	r1, r3, #19
d05a1b04:	6922      	ldr	r2, [r4, #16]
d05a1b06:	6022      	str	r2, [r4, #0]
d05a1b08:	d504      	bpl.n	d05a1b14 <__sflush_r+0x7c>
d05a1b0a:	1c42      	adds	r2, r0, #1
d05a1b0c:	d101      	bne.n	d05a1b12 <__sflush_r+0x7a>
d05a1b0e:	682b      	ldr	r3, [r5, #0]
d05a1b10:	b903      	cbnz	r3, d05a1b14 <__sflush_r+0x7c>
d05a1b12:	6560      	str	r0, [r4, #84]	; 0x54
d05a1b14:	6b61      	ldr	r1, [r4, #52]	; 0x34
d05a1b16:	602f      	str	r7, [r5, #0]
d05a1b18:	2900      	cmp	r1, #0
d05a1b1a:	d0ca      	beq.n	d05a1ab2 <__sflush_r+0x1a>
d05a1b1c:	f104 0344 	add.w	r3, r4, #68	; 0x44
d05a1b20:	4299      	cmp	r1, r3
d05a1b22:	d002      	beq.n	d05a1b2a <__sflush_r+0x92>
d05a1b24:	4628      	mov	r0, r5
d05a1b26:	f000 f99d 	bl	d05a1e64 <_free_r>
d05a1b2a:	2000      	movs	r0, #0
d05a1b2c:	6360      	str	r0, [r4, #52]	; 0x34
d05a1b2e:	e7c1      	b.n	d05a1ab4 <__sflush_r+0x1c>
d05a1b30:	6a21      	ldr	r1, [r4, #32]
d05a1b32:	2301      	movs	r3, #1
d05a1b34:	4628      	mov	r0, r5
d05a1b36:	47b0      	blx	r6
d05a1b38:	1c41      	adds	r1, r0, #1
d05a1b3a:	d1c7      	bne.n	d05a1acc <__sflush_r+0x34>
d05a1b3c:	682b      	ldr	r3, [r5, #0]
d05a1b3e:	2b00      	cmp	r3, #0
d05a1b40:	d0c4      	beq.n	d05a1acc <__sflush_r+0x34>
d05a1b42:	2b1d      	cmp	r3, #29
d05a1b44:	d001      	beq.n	d05a1b4a <__sflush_r+0xb2>
d05a1b46:	2b16      	cmp	r3, #22
d05a1b48:	d101      	bne.n	d05a1b4e <__sflush_r+0xb6>
d05a1b4a:	602f      	str	r7, [r5, #0]
d05a1b4c:	e7b1      	b.n	d05a1ab2 <__sflush_r+0x1a>
d05a1b4e:	89a3      	ldrh	r3, [r4, #12]
d05a1b50:	f043 0340 	orr.w	r3, r3, #64	; 0x40
d05a1b54:	81a3      	strh	r3, [r4, #12]
d05a1b56:	e7ad      	b.n	d05a1ab4 <__sflush_r+0x1c>
d05a1b58:	690f      	ldr	r7, [r1, #16]
d05a1b5a:	2f00      	cmp	r7, #0
d05a1b5c:	d0a9      	beq.n	d05a1ab2 <__sflush_r+0x1a>
d05a1b5e:	0793      	lsls	r3, r2, #30
d05a1b60:	680e      	ldr	r6, [r1, #0]
d05a1b62:	bf08      	it	eq
d05a1b64:	694b      	ldreq	r3, [r1, #20]
d05a1b66:	600f      	str	r7, [r1, #0]
d05a1b68:	bf18      	it	ne
d05a1b6a:	2300      	movne	r3, #0
d05a1b6c:	eba6 0807 	sub.w	r8, r6, r7
d05a1b70:	608b      	str	r3, [r1, #8]
d05a1b72:	f1b8 0f00 	cmp.w	r8, #0
d05a1b76:	dd9c      	ble.n	d05a1ab2 <__sflush_r+0x1a>
d05a1b78:	6a21      	ldr	r1, [r4, #32]
d05a1b7a:	6aa6      	ldr	r6, [r4, #40]	; 0x28
d05a1b7c:	4643      	mov	r3, r8
d05a1b7e:	463a      	mov	r2, r7
d05a1b80:	4628      	mov	r0, r5
d05a1b82:	47b0      	blx	r6
d05a1b84:	2800      	cmp	r0, #0
d05a1b86:	dc06      	bgt.n	d05a1b96 <__sflush_r+0xfe>
d05a1b88:	89a3      	ldrh	r3, [r4, #12]
d05a1b8a:	f043 0340 	orr.w	r3, r3, #64	; 0x40
d05a1b8e:	81a3      	strh	r3, [r4, #12]
d05a1b90:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d05a1b94:	e78e      	b.n	d05a1ab4 <__sflush_r+0x1c>
d05a1b96:	4407      	add	r7, r0
d05a1b98:	eba8 0800 	sub.w	r8, r8, r0
d05a1b9c:	e7e9      	b.n	d05a1b72 <__sflush_r+0xda>
d05a1b9e:	bf00      	nop
d05a1ba0:	20400001 	.word	0x20400001

d05a1ba4 <_fflush_r>:
d05a1ba4:	b538      	push	{r3, r4, r5, lr}
d05a1ba6:	690b      	ldr	r3, [r1, #16]
d05a1ba8:	4605      	mov	r5, r0
d05a1baa:	460c      	mov	r4, r1
d05a1bac:	b913      	cbnz	r3, d05a1bb4 <_fflush_r+0x10>
d05a1bae:	2500      	movs	r5, #0
d05a1bb0:	4628      	mov	r0, r5
d05a1bb2:	bd38      	pop	{r3, r4, r5, pc}
d05a1bb4:	b118      	cbz	r0, d05a1bbe <_fflush_r+0x1a>
d05a1bb6:	6983      	ldr	r3, [r0, #24]
d05a1bb8:	b90b      	cbnz	r3, d05a1bbe <_fflush_r+0x1a>
d05a1bba:	f000 f887 	bl	d05a1ccc <__sinit>
d05a1bbe:	4b14      	ldr	r3, [pc, #80]	; (d05a1c10 <_fflush_r+0x6c>)
d05a1bc0:	429c      	cmp	r4, r3
d05a1bc2:	d11b      	bne.n	d05a1bfc <_fflush_r+0x58>
d05a1bc4:	686c      	ldr	r4, [r5, #4]
d05a1bc6:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
d05a1bca:	2b00      	cmp	r3, #0
d05a1bcc:	d0ef      	beq.n	d05a1bae <_fflush_r+0xa>
d05a1bce:	6e62      	ldr	r2, [r4, #100]	; 0x64
d05a1bd0:	07d0      	lsls	r0, r2, #31
d05a1bd2:	d404      	bmi.n	d05a1bde <_fflush_r+0x3a>
d05a1bd4:	0599      	lsls	r1, r3, #22
d05a1bd6:	d402      	bmi.n	d05a1bde <_fflush_r+0x3a>
d05a1bd8:	6da0      	ldr	r0, [r4, #88]	; 0x58
d05a1bda:	f000 f915 	bl	d05a1e08 <__retarget_lock_acquire_recursive>
d05a1bde:	4628      	mov	r0, r5
d05a1be0:	4621      	mov	r1, r4
d05a1be2:	f7ff ff59 	bl	d05a1a98 <__sflush_r>
d05a1be6:	6e63      	ldr	r3, [r4, #100]	; 0x64
d05a1be8:	07da      	lsls	r2, r3, #31
d05a1bea:	4605      	mov	r5, r0
d05a1bec:	d4e0      	bmi.n	d05a1bb0 <_fflush_r+0xc>
d05a1bee:	89a3      	ldrh	r3, [r4, #12]
d05a1bf0:	059b      	lsls	r3, r3, #22
d05a1bf2:	d4dd      	bmi.n	d05a1bb0 <_fflush_r+0xc>
d05a1bf4:	6da0      	ldr	r0, [r4, #88]	; 0x58
d05a1bf6:	f000 f908 	bl	d05a1e0a <__retarget_lock_release_recursive>
d05a1bfa:	e7d9      	b.n	d05a1bb0 <_fflush_r+0xc>
d05a1bfc:	4b05      	ldr	r3, [pc, #20]	; (d05a1c14 <_fflush_r+0x70>)
d05a1bfe:	429c      	cmp	r4, r3
d05a1c00:	d101      	bne.n	d05a1c06 <_fflush_r+0x62>
d05a1c02:	68ac      	ldr	r4, [r5, #8]
d05a1c04:	e7df      	b.n	d05a1bc6 <_fflush_r+0x22>
d05a1c06:	4b04      	ldr	r3, [pc, #16]	; (d05a1c18 <_fflush_r+0x74>)
d05a1c08:	429c      	cmp	r4, r3
d05a1c0a:	bf08      	it	eq
d05a1c0c:	68ec      	ldreq	r4, [r5, #12]
d05a1c0e:	e7da      	b.n	d05a1bc6 <_fflush_r+0x22>
d05a1c10:	d05a2914 	.word	0xd05a2914
d05a1c14:	d05a2934 	.word	0xd05a2934
d05a1c18:	d05a28f4 	.word	0xd05a28f4

d05a1c1c <std>:
d05a1c1c:	2300      	movs	r3, #0
d05a1c1e:	b510      	push	{r4, lr}
d05a1c20:	4604      	mov	r4, r0
d05a1c22:	e9c0 3300 	strd	r3, r3, [r0]
d05a1c26:	e9c0 3304 	strd	r3, r3, [r0, #16]
d05a1c2a:	6083      	str	r3, [r0, #8]
d05a1c2c:	8181      	strh	r1, [r0, #12]
d05a1c2e:	6643      	str	r3, [r0, #100]	; 0x64
d05a1c30:	81c2      	strh	r2, [r0, #14]
d05a1c32:	6183      	str	r3, [r0, #24]
d05a1c34:	4619      	mov	r1, r3
d05a1c36:	2208      	movs	r2, #8
d05a1c38:	305c      	adds	r0, #92	; 0x5c
d05a1c3a:	f7ff fe23 	bl	d05a1884 <memset>
d05a1c3e:	4b05      	ldr	r3, [pc, #20]	; (d05a1c54 <std+0x38>)
d05a1c40:	6263      	str	r3, [r4, #36]	; 0x24
d05a1c42:	4b05      	ldr	r3, [pc, #20]	; (d05a1c58 <std+0x3c>)
d05a1c44:	62a3      	str	r3, [r4, #40]	; 0x28
d05a1c46:	4b05      	ldr	r3, [pc, #20]	; (d05a1c5c <std+0x40>)
d05a1c48:	62e3      	str	r3, [r4, #44]	; 0x2c
d05a1c4a:	4b05      	ldr	r3, [pc, #20]	; (d05a1c60 <std+0x44>)
d05a1c4c:	6224      	str	r4, [r4, #32]
d05a1c4e:	6323      	str	r3, [r4, #48]	; 0x30
d05a1c50:	bd10      	pop	{r4, pc}
d05a1c52:	bf00      	nop
d05a1c54:	d05a2599 	.word	0xd05a2599
d05a1c58:	d05a25bb 	.word	0xd05a25bb
d05a1c5c:	d05a25f3 	.word	0xd05a25f3
d05a1c60:	d05a2617 	.word	0xd05a2617

d05a1c64 <_cleanup_r>:
d05a1c64:	4901      	ldr	r1, [pc, #4]	; (d05a1c6c <_cleanup_r+0x8>)
d05a1c66:	f000 b8af 	b.w	d05a1dc8 <_fwalk_reent>
d05a1c6a:	bf00      	nop
d05a1c6c:	d05a1ba5 	.word	0xd05a1ba5

d05a1c70 <__sfmoreglue>:
d05a1c70:	b570      	push	{r4, r5, r6, lr}
d05a1c72:	1e4a      	subs	r2, r1, #1
d05a1c74:	2568      	movs	r5, #104	; 0x68
d05a1c76:	4355      	muls	r5, r2
d05a1c78:	460e      	mov	r6, r1
d05a1c7a:	f105 0174 	add.w	r1, r5, #116	; 0x74
d05a1c7e:	f000 f941 	bl	d05a1f04 <_malloc_r>
d05a1c82:	4604      	mov	r4, r0
d05a1c84:	b140      	cbz	r0, d05a1c98 <__sfmoreglue+0x28>
d05a1c86:	2100      	movs	r1, #0
d05a1c88:	e9c0 1600 	strd	r1, r6, [r0]
d05a1c8c:	300c      	adds	r0, #12
d05a1c8e:	60a0      	str	r0, [r4, #8]
d05a1c90:	f105 0268 	add.w	r2, r5, #104	; 0x68
d05a1c94:	f7ff fdf6 	bl	d05a1884 <memset>
d05a1c98:	4620      	mov	r0, r4
d05a1c9a:	bd70      	pop	{r4, r5, r6, pc}

d05a1c9c <__sfp_lock_acquire>:
d05a1c9c:	4801      	ldr	r0, [pc, #4]	; (d05a1ca4 <__sfp_lock_acquire+0x8>)
d05a1c9e:	f000 b8b3 	b.w	d05a1e08 <__retarget_lock_acquire_recursive>
d05a1ca2:	bf00      	nop
d05a1ca4:	d05b5cb0 	.word	0xd05b5cb0

d05a1ca8 <__sfp_lock_release>:
d05a1ca8:	4801      	ldr	r0, [pc, #4]	; (d05a1cb0 <__sfp_lock_release+0x8>)
d05a1caa:	f000 b8ae 	b.w	d05a1e0a <__retarget_lock_release_recursive>
d05a1cae:	bf00      	nop
d05a1cb0:	d05b5cb0 	.word	0xd05b5cb0

d05a1cb4 <__sinit_lock_acquire>:
d05a1cb4:	4801      	ldr	r0, [pc, #4]	; (d05a1cbc <__sinit_lock_acquire+0x8>)
d05a1cb6:	f000 b8a7 	b.w	d05a1e08 <__retarget_lock_acquire_recursive>
d05a1cba:	bf00      	nop
d05a1cbc:	d05b5cab 	.word	0xd05b5cab

d05a1cc0 <__sinit_lock_release>:
d05a1cc0:	4801      	ldr	r0, [pc, #4]	; (d05a1cc8 <__sinit_lock_release+0x8>)
d05a1cc2:	f000 b8a2 	b.w	d05a1e0a <__retarget_lock_release_recursive>
d05a1cc6:	bf00      	nop
d05a1cc8:	d05b5cab 	.word	0xd05b5cab

d05a1ccc <__sinit>:
d05a1ccc:	b510      	push	{r4, lr}
d05a1cce:	4604      	mov	r4, r0
d05a1cd0:	f7ff fff0 	bl	d05a1cb4 <__sinit_lock_acquire>
d05a1cd4:	69a3      	ldr	r3, [r4, #24]
d05a1cd6:	b11b      	cbz	r3, d05a1ce0 <__sinit+0x14>
d05a1cd8:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
d05a1cdc:	f7ff bff0 	b.w	d05a1cc0 <__sinit_lock_release>
d05a1ce0:	e9c4 3312 	strd	r3, r3, [r4, #72]	; 0x48
d05a1ce4:	6523      	str	r3, [r4, #80]	; 0x50
d05a1ce6:	4b13      	ldr	r3, [pc, #76]	; (d05a1d34 <__sinit+0x68>)
d05a1ce8:	4a13      	ldr	r2, [pc, #76]	; (d05a1d38 <__sinit+0x6c>)
d05a1cea:	681b      	ldr	r3, [r3, #0]
d05a1cec:	62a2      	str	r2, [r4, #40]	; 0x28
d05a1cee:	42a3      	cmp	r3, r4
d05a1cf0:	bf04      	itt	eq
d05a1cf2:	2301      	moveq	r3, #1
d05a1cf4:	61a3      	streq	r3, [r4, #24]
d05a1cf6:	4620      	mov	r0, r4
d05a1cf8:	f000 f820 	bl	d05a1d3c <__sfp>
d05a1cfc:	6060      	str	r0, [r4, #4]
d05a1cfe:	4620      	mov	r0, r4
d05a1d00:	f000 f81c 	bl	d05a1d3c <__sfp>
d05a1d04:	60a0      	str	r0, [r4, #8]
d05a1d06:	4620      	mov	r0, r4
d05a1d08:	f000 f818 	bl	d05a1d3c <__sfp>
d05a1d0c:	2200      	movs	r2, #0
d05a1d0e:	60e0      	str	r0, [r4, #12]
d05a1d10:	2104      	movs	r1, #4
d05a1d12:	6860      	ldr	r0, [r4, #4]
d05a1d14:	f7ff ff82 	bl	d05a1c1c <std>
d05a1d18:	68a0      	ldr	r0, [r4, #8]
d05a1d1a:	2201      	movs	r2, #1
d05a1d1c:	2109      	movs	r1, #9
d05a1d1e:	f7ff ff7d 	bl	d05a1c1c <std>
d05a1d22:	68e0      	ldr	r0, [r4, #12]
d05a1d24:	2202      	movs	r2, #2
d05a1d26:	2112      	movs	r1, #18
d05a1d28:	f7ff ff78 	bl	d05a1c1c <std>
d05a1d2c:	2301      	movs	r3, #1
d05a1d2e:	61a3      	str	r3, [r4, #24]
d05a1d30:	e7d2      	b.n	d05a1cd8 <__sinit+0xc>
d05a1d32:	bf00      	nop
d05a1d34:	d05a28f0 	.word	0xd05a28f0
d05a1d38:	d05a1c65 	.word	0xd05a1c65

d05a1d3c <__sfp>:
d05a1d3c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d05a1d3e:	4607      	mov	r7, r0
d05a1d40:	f7ff ffac 	bl	d05a1c9c <__sfp_lock_acquire>
d05a1d44:	4b1e      	ldr	r3, [pc, #120]	; (d05a1dc0 <__sfp+0x84>)
d05a1d46:	681e      	ldr	r6, [r3, #0]
d05a1d48:	69b3      	ldr	r3, [r6, #24]
d05a1d4a:	b913      	cbnz	r3, d05a1d52 <__sfp+0x16>
d05a1d4c:	4630      	mov	r0, r6
d05a1d4e:	f7ff ffbd 	bl	d05a1ccc <__sinit>
d05a1d52:	3648      	adds	r6, #72	; 0x48
d05a1d54:	e9d6 3401 	ldrd	r3, r4, [r6, #4]
d05a1d58:	3b01      	subs	r3, #1
d05a1d5a:	d503      	bpl.n	d05a1d64 <__sfp+0x28>
d05a1d5c:	6833      	ldr	r3, [r6, #0]
d05a1d5e:	b30b      	cbz	r3, d05a1da4 <__sfp+0x68>
d05a1d60:	6836      	ldr	r6, [r6, #0]
d05a1d62:	e7f7      	b.n	d05a1d54 <__sfp+0x18>
d05a1d64:	f9b4 500c 	ldrsh.w	r5, [r4, #12]
d05a1d68:	b9d5      	cbnz	r5, d05a1da0 <__sfp+0x64>
d05a1d6a:	4b16      	ldr	r3, [pc, #88]	; (d05a1dc4 <__sfp+0x88>)
d05a1d6c:	60e3      	str	r3, [r4, #12]
d05a1d6e:	f104 0058 	add.w	r0, r4, #88	; 0x58
d05a1d72:	6665      	str	r5, [r4, #100]	; 0x64
d05a1d74:	f000 f847 	bl	d05a1e06 <__retarget_lock_init_recursive>
d05a1d78:	f7ff ff96 	bl	d05a1ca8 <__sfp_lock_release>
d05a1d7c:	e9c4 5501 	strd	r5, r5, [r4, #4]
d05a1d80:	e9c4 5504 	strd	r5, r5, [r4, #16]
d05a1d84:	6025      	str	r5, [r4, #0]
d05a1d86:	61a5      	str	r5, [r4, #24]
d05a1d88:	2208      	movs	r2, #8
d05a1d8a:	4629      	mov	r1, r5
d05a1d8c:	f104 005c 	add.w	r0, r4, #92	; 0x5c
d05a1d90:	f7ff fd78 	bl	d05a1884 <memset>
d05a1d94:	e9c4 550d 	strd	r5, r5, [r4, #52]	; 0x34
d05a1d98:	e9c4 5512 	strd	r5, r5, [r4, #72]	; 0x48
d05a1d9c:	4620      	mov	r0, r4
d05a1d9e:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d05a1da0:	3468      	adds	r4, #104	; 0x68
d05a1da2:	e7d9      	b.n	d05a1d58 <__sfp+0x1c>
d05a1da4:	2104      	movs	r1, #4
d05a1da6:	4638      	mov	r0, r7
d05a1da8:	f7ff ff62 	bl	d05a1c70 <__sfmoreglue>
d05a1dac:	4604      	mov	r4, r0
d05a1dae:	6030      	str	r0, [r6, #0]
d05a1db0:	2800      	cmp	r0, #0
d05a1db2:	d1d5      	bne.n	d05a1d60 <__sfp+0x24>
d05a1db4:	f7ff ff78 	bl	d05a1ca8 <__sfp_lock_release>
d05a1db8:	230c      	movs	r3, #12
d05a1dba:	603b      	str	r3, [r7, #0]
d05a1dbc:	e7ee      	b.n	d05a1d9c <__sfp+0x60>
d05a1dbe:	bf00      	nop
d05a1dc0:	d05a28f0 	.word	0xd05a28f0
d05a1dc4:	ffff0001 	.word	0xffff0001

d05a1dc8 <_fwalk_reent>:
d05a1dc8:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
d05a1dcc:	4606      	mov	r6, r0
d05a1dce:	4688      	mov	r8, r1
d05a1dd0:	f100 0448 	add.w	r4, r0, #72	; 0x48
d05a1dd4:	2700      	movs	r7, #0
d05a1dd6:	e9d4 9501 	ldrd	r9, r5, [r4, #4]
d05a1dda:	f1b9 0901 	subs.w	r9, r9, #1
d05a1dde:	d505      	bpl.n	d05a1dec <_fwalk_reent+0x24>
d05a1de0:	6824      	ldr	r4, [r4, #0]
d05a1de2:	2c00      	cmp	r4, #0
d05a1de4:	d1f7      	bne.n	d05a1dd6 <_fwalk_reent+0xe>
d05a1de6:	4638      	mov	r0, r7
d05a1de8:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
d05a1dec:	89ab      	ldrh	r3, [r5, #12]
d05a1dee:	2b01      	cmp	r3, #1
d05a1df0:	d907      	bls.n	d05a1e02 <_fwalk_reent+0x3a>
d05a1df2:	f9b5 300e 	ldrsh.w	r3, [r5, #14]
d05a1df6:	3301      	adds	r3, #1
d05a1df8:	d003      	beq.n	d05a1e02 <_fwalk_reent+0x3a>
d05a1dfa:	4629      	mov	r1, r5
d05a1dfc:	4630      	mov	r0, r6
d05a1dfe:	47c0      	blx	r8
d05a1e00:	4307      	orrs	r7, r0
d05a1e02:	3568      	adds	r5, #104	; 0x68
d05a1e04:	e7e9      	b.n	d05a1dda <_fwalk_reent+0x12>

d05a1e06 <__retarget_lock_init_recursive>:
d05a1e06:	4770      	bx	lr

d05a1e08 <__retarget_lock_acquire_recursive>:
d05a1e08:	4770      	bx	lr

d05a1e0a <__retarget_lock_release_recursive>:
d05a1e0a:	4770      	bx	lr

d05a1e0c <__swhatbuf_r>:
d05a1e0c:	b570      	push	{r4, r5, r6, lr}
d05a1e0e:	460e      	mov	r6, r1
d05a1e10:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d05a1e14:	2900      	cmp	r1, #0
d05a1e16:	b096      	sub	sp, #88	; 0x58
d05a1e18:	4614      	mov	r4, r2
d05a1e1a:	461d      	mov	r5, r3
d05a1e1c:	da07      	bge.n	d05a1e2e <__swhatbuf_r+0x22>
d05a1e1e:	2300      	movs	r3, #0
d05a1e20:	602b      	str	r3, [r5, #0]
d05a1e22:	89b3      	ldrh	r3, [r6, #12]
d05a1e24:	061a      	lsls	r2, r3, #24
d05a1e26:	d410      	bmi.n	d05a1e4a <__swhatbuf_r+0x3e>
d05a1e28:	f44f 6380 	mov.w	r3, #1024	; 0x400
d05a1e2c:	e00e      	b.n	d05a1e4c <__swhatbuf_r+0x40>
d05a1e2e:	466a      	mov	r2, sp
d05a1e30:	f000 fc06 	bl	d05a2640 <_fstat_r>
d05a1e34:	2800      	cmp	r0, #0
d05a1e36:	dbf2      	blt.n	d05a1e1e <__swhatbuf_r+0x12>
d05a1e38:	9a01      	ldr	r2, [sp, #4]
d05a1e3a:	f402 4270 	and.w	r2, r2, #61440	; 0xf000
d05a1e3e:	f5a2 5300 	sub.w	r3, r2, #8192	; 0x2000
d05a1e42:	425a      	negs	r2, r3
d05a1e44:	415a      	adcs	r2, r3
d05a1e46:	602a      	str	r2, [r5, #0]
d05a1e48:	e7ee      	b.n	d05a1e28 <__swhatbuf_r+0x1c>
d05a1e4a:	2340      	movs	r3, #64	; 0x40
d05a1e4c:	2000      	movs	r0, #0
d05a1e4e:	6023      	str	r3, [r4, #0]
d05a1e50:	b016      	add	sp, #88	; 0x58
d05a1e52:	bd70      	pop	{r4, r5, r6, pc}

d05a1e54 <malloc>:
d05a1e54:	4b02      	ldr	r3, [pc, #8]	; (d05a1e60 <malloc+0xc>)
d05a1e56:	4601      	mov	r1, r0
d05a1e58:	6818      	ldr	r0, [r3, #0]
d05a1e5a:	f000 b853 	b.w	d05a1f04 <_malloc_r>
d05a1e5e:	bf00      	nop
d05a1e60:	d05a2998 	.word	0xd05a2998

d05a1e64 <_free_r>:
d05a1e64:	b537      	push	{r0, r1, r2, r4, r5, lr}
d05a1e66:	2900      	cmp	r1, #0
d05a1e68:	d048      	beq.n	d05a1efc <_free_r+0x98>
d05a1e6a:	f851 3c04 	ldr.w	r3, [r1, #-4]
d05a1e6e:	9001      	str	r0, [sp, #4]
d05a1e70:	2b00      	cmp	r3, #0
d05a1e72:	f1a1 0404 	sub.w	r4, r1, #4
d05a1e76:	bfb8      	it	lt
d05a1e78:	18e4      	addlt	r4, r4, r3
d05a1e7a:	f000 fc81 	bl	d05a2780 <__malloc_lock>
d05a1e7e:	4a20      	ldr	r2, [pc, #128]	; (d05a1f00 <_free_r+0x9c>)
d05a1e80:	9801      	ldr	r0, [sp, #4]
d05a1e82:	6813      	ldr	r3, [r2, #0]
d05a1e84:	4615      	mov	r5, r2
d05a1e86:	b933      	cbnz	r3, d05a1e96 <_free_r+0x32>
d05a1e88:	6063      	str	r3, [r4, #4]
d05a1e8a:	6014      	str	r4, [r2, #0]
d05a1e8c:	b003      	add	sp, #12
d05a1e8e:	e8bd 4030 	ldmia.w	sp!, {r4, r5, lr}
d05a1e92:	f000 bc7b 	b.w	d05a278c <__malloc_unlock>
d05a1e96:	42a3      	cmp	r3, r4
d05a1e98:	d90b      	bls.n	d05a1eb2 <_free_r+0x4e>
d05a1e9a:	6821      	ldr	r1, [r4, #0]
d05a1e9c:	1862      	adds	r2, r4, r1
d05a1e9e:	4293      	cmp	r3, r2
d05a1ea0:	bf04      	itt	eq
d05a1ea2:	681a      	ldreq	r2, [r3, #0]
d05a1ea4:	685b      	ldreq	r3, [r3, #4]
d05a1ea6:	6063      	str	r3, [r4, #4]
d05a1ea8:	bf04      	itt	eq
d05a1eaa:	1852      	addeq	r2, r2, r1
d05a1eac:	6022      	streq	r2, [r4, #0]
d05a1eae:	602c      	str	r4, [r5, #0]
d05a1eb0:	e7ec      	b.n	d05a1e8c <_free_r+0x28>
d05a1eb2:	461a      	mov	r2, r3
d05a1eb4:	685b      	ldr	r3, [r3, #4]
d05a1eb6:	b10b      	cbz	r3, d05a1ebc <_free_r+0x58>
d05a1eb8:	42a3      	cmp	r3, r4
d05a1eba:	d9fa      	bls.n	d05a1eb2 <_free_r+0x4e>
d05a1ebc:	6811      	ldr	r1, [r2, #0]
d05a1ebe:	1855      	adds	r5, r2, r1
d05a1ec0:	42a5      	cmp	r5, r4
d05a1ec2:	d10b      	bne.n	d05a1edc <_free_r+0x78>
d05a1ec4:	6824      	ldr	r4, [r4, #0]
d05a1ec6:	4421      	add	r1, r4
d05a1ec8:	1854      	adds	r4, r2, r1
d05a1eca:	42a3      	cmp	r3, r4
d05a1ecc:	6011      	str	r1, [r2, #0]
d05a1ece:	d1dd      	bne.n	d05a1e8c <_free_r+0x28>
d05a1ed0:	681c      	ldr	r4, [r3, #0]
d05a1ed2:	685b      	ldr	r3, [r3, #4]
d05a1ed4:	6053      	str	r3, [r2, #4]
d05a1ed6:	4421      	add	r1, r4
d05a1ed8:	6011      	str	r1, [r2, #0]
d05a1eda:	e7d7      	b.n	d05a1e8c <_free_r+0x28>
d05a1edc:	d902      	bls.n	d05a1ee4 <_free_r+0x80>
d05a1ede:	230c      	movs	r3, #12
d05a1ee0:	6003      	str	r3, [r0, #0]
d05a1ee2:	e7d3      	b.n	d05a1e8c <_free_r+0x28>
d05a1ee4:	6825      	ldr	r5, [r4, #0]
d05a1ee6:	1961      	adds	r1, r4, r5
d05a1ee8:	428b      	cmp	r3, r1
d05a1eea:	bf04      	itt	eq
d05a1eec:	6819      	ldreq	r1, [r3, #0]
d05a1eee:	685b      	ldreq	r3, [r3, #4]
d05a1ef0:	6063      	str	r3, [r4, #4]
d05a1ef2:	bf04      	itt	eq
d05a1ef4:	1949      	addeq	r1, r1, r5
d05a1ef6:	6021      	streq	r1, [r4, #0]
d05a1ef8:	6054      	str	r4, [r2, #4]
d05a1efa:	e7c7      	b.n	d05a1e8c <_free_r+0x28>
d05a1efc:	b003      	add	sp, #12
d05a1efe:	bd30      	pop	{r4, r5, pc}
d05a1f00:	d05b5ca0 	.word	0xd05b5ca0

d05a1f04 <_malloc_r>:
d05a1f04:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d05a1f06:	1ccd      	adds	r5, r1, #3
d05a1f08:	f025 0503 	bic.w	r5, r5, #3
d05a1f0c:	3508      	adds	r5, #8
d05a1f0e:	2d0c      	cmp	r5, #12
d05a1f10:	bf38      	it	cc
d05a1f12:	250c      	movcc	r5, #12
d05a1f14:	2d00      	cmp	r5, #0
d05a1f16:	4606      	mov	r6, r0
d05a1f18:	db01      	blt.n	d05a1f1e <_malloc_r+0x1a>
d05a1f1a:	42a9      	cmp	r1, r5
d05a1f1c:	d903      	bls.n	d05a1f26 <_malloc_r+0x22>
d05a1f1e:	230c      	movs	r3, #12
d05a1f20:	6033      	str	r3, [r6, #0]
d05a1f22:	2000      	movs	r0, #0
d05a1f24:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d05a1f26:	f000 fc2b 	bl	d05a2780 <__malloc_lock>
d05a1f2a:	4921      	ldr	r1, [pc, #132]	; (d05a1fb0 <_malloc_r+0xac>)
d05a1f2c:	680a      	ldr	r2, [r1, #0]
d05a1f2e:	4614      	mov	r4, r2
d05a1f30:	b99c      	cbnz	r4, d05a1f5a <_malloc_r+0x56>
d05a1f32:	4f20      	ldr	r7, [pc, #128]	; (d05a1fb4 <_malloc_r+0xb0>)
d05a1f34:	683b      	ldr	r3, [r7, #0]
d05a1f36:	b923      	cbnz	r3, d05a1f42 <_malloc_r+0x3e>
d05a1f38:	4621      	mov	r1, r4
d05a1f3a:	4630      	mov	r0, r6
d05a1f3c:	f7fe f8c4 	bl	d05a00c8 <_sbrk_r>
d05a1f40:	6038      	str	r0, [r7, #0]
d05a1f42:	4629      	mov	r1, r5
d05a1f44:	4630      	mov	r0, r6
d05a1f46:	f7fe f8bf 	bl	d05a00c8 <_sbrk_r>
d05a1f4a:	1c43      	adds	r3, r0, #1
d05a1f4c:	d123      	bne.n	d05a1f96 <_malloc_r+0x92>
d05a1f4e:	230c      	movs	r3, #12
d05a1f50:	6033      	str	r3, [r6, #0]
d05a1f52:	4630      	mov	r0, r6
d05a1f54:	f000 fc1a 	bl	d05a278c <__malloc_unlock>
d05a1f58:	e7e3      	b.n	d05a1f22 <_malloc_r+0x1e>
d05a1f5a:	6823      	ldr	r3, [r4, #0]
d05a1f5c:	1b5b      	subs	r3, r3, r5
d05a1f5e:	d417      	bmi.n	d05a1f90 <_malloc_r+0x8c>
d05a1f60:	2b0b      	cmp	r3, #11
d05a1f62:	d903      	bls.n	d05a1f6c <_malloc_r+0x68>
d05a1f64:	6023      	str	r3, [r4, #0]
d05a1f66:	441c      	add	r4, r3
d05a1f68:	6025      	str	r5, [r4, #0]
d05a1f6a:	e004      	b.n	d05a1f76 <_malloc_r+0x72>
d05a1f6c:	6863      	ldr	r3, [r4, #4]
d05a1f6e:	42a2      	cmp	r2, r4
d05a1f70:	bf0c      	ite	eq
d05a1f72:	600b      	streq	r3, [r1, #0]
d05a1f74:	6053      	strne	r3, [r2, #4]
d05a1f76:	4630      	mov	r0, r6
d05a1f78:	f000 fc08 	bl	d05a278c <__malloc_unlock>
d05a1f7c:	f104 000b 	add.w	r0, r4, #11
d05a1f80:	1d23      	adds	r3, r4, #4
d05a1f82:	f020 0007 	bic.w	r0, r0, #7
d05a1f86:	1ac2      	subs	r2, r0, r3
d05a1f88:	d0cc      	beq.n	d05a1f24 <_malloc_r+0x20>
d05a1f8a:	1a1b      	subs	r3, r3, r0
d05a1f8c:	50a3      	str	r3, [r4, r2]
d05a1f8e:	e7c9      	b.n	d05a1f24 <_malloc_r+0x20>
d05a1f90:	4622      	mov	r2, r4
d05a1f92:	6864      	ldr	r4, [r4, #4]
d05a1f94:	e7cc      	b.n	d05a1f30 <_malloc_r+0x2c>
d05a1f96:	1cc4      	adds	r4, r0, #3
d05a1f98:	f024 0403 	bic.w	r4, r4, #3
d05a1f9c:	42a0      	cmp	r0, r4
d05a1f9e:	d0e3      	beq.n	d05a1f68 <_malloc_r+0x64>
d05a1fa0:	1a21      	subs	r1, r4, r0
d05a1fa2:	4630      	mov	r0, r6
d05a1fa4:	f7fe f890 	bl	d05a00c8 <_sbrk_r>
d05a1fa8:	3001      	adds	r0, #1
d05a1faa:	d1dd      	bne.n	d05a1f68 <_malloc_r+0x64>
d05a1fac:	e7cf      	b.n	d05a1f4e <_malloc_r+0x4a>
d05a1fae:	bf00      	nop
d05a1fb0:	d05b5ca0 	.word	0xd05b5ca0
d05a1fb4:	d05b5ca4 	.word	0xd05b5ca4

d05a1fb8 <__ssputs_r>:
d05a1fb8:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
d05a1fbc:	688e      	ldr	r6, [r1, #8]
d05a1fbe:	429e      	cmp	r6, r3
d05a1fc0:	4682      	mov	sl, r0
d05a1fc2:	460c      	mov	r4, r1
d05a1fc4:	4690      	mov	r8, r2
d05a1fc6:	461f      	mov	r7, r3
d05a1fc8:	d838      	bhi.n	d05a203c <__ssputs_r+0x84>
d05a1fca:	898a      	ldrh	r2, [r1, #12]
d05a1fcc:	f412 6f90 	tst.w	r2, #1152	; 0x480
d05a1fd0:	d032      	beq.n	d05a2038 <__ssputs_r+0x80>
d05a1fd2:	6825      	ldr	r5, [r4, #0]
d05a1fd4:	6909      	ldr	r1, [r1, #16]
d05a1fd6:	eba5 0901 	sub.w	r9, r5, r1
d05a1fda:	6965      	ldr	r5, [r4, #20]
d05a1fdc:	eb05 0545 	add.w	r5, r5, r5, lsl #1
d05a1fe0:	eb05 75d5 	add.w	r5, r5, r5, lsr #31
d05a1fe4:	3301      	adds	r3, #1
d05a1fe6:	444b      	add	r3, r9
d05a1fe8:	106d      	asrs	r5, r5, #1
d05a1fea:	429d      	cmp	r5, r3
d05a1fec:	bf38      	it	cc
d05a1fee:	461d      	movcc	r5, r3
d05a1ff0:	0553      	lsls	r3, r2, #21
d05a1ff2:	d531      	bpl.n	d05a2058 <__ssputs_r+0xa0>
d05a1ff4:	4629      	mov	r1, r5
d05a1ff6:	f7ff ff85 	bl	d05a1f04 <_malloc_r>
d05a1ffa:	4606      	mov	r6, r0
d05a1ffc:	b950      	cbnz	r0, d05a2014 <__ssputs_r+0x5c>
d05a1ffe:	230c      	movs	r3, #12
d05a2000:	f8ca 3000 	str.w	r3, [sl]
d05a2004:	89a3      	ldrh	r3, [r4, #12]
d05a2006:	f043 0340 	orr.w	r3, r3, #64	; 0x40
d05a200a:	81a3      	strh	r3, [r4, #12]
d05a200c:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d05a2010:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
d05a2014:	6921      	ldr	r1, [r4, #16]
d05a2016:	464a      	mov	r2, r9
d05a2018:	f000 fb8a 	bl	d05a2730 <memcpy>
d05a201c:	89a3      	ldrh	r3, [r4, #12]
d05a201e:	f423 6390 	bic.w	r3, r3, #1152	; 0x480
d05a2022:	f043 0380 	orr.w	r3, r3, #128	; 0x80
d05a2026:	81a3      	strh	r3, [r4, #12]
d05a2028:	6126      	str	r6, [r4, #16]
d05a202a:	6165      	str	r5, [r4, #20]
d05a202c:	444e      	add	r6, r9
d05a202e:	eba5 0509 	sub.w	r5, r5, r9
d05a2032:	6026      	str	r6, [r4, #0]
d05a2034:	60a5      	str	r5, [r4, #8]
d05a2036:	463e      	mov	r6, r7
d05a2038:	42be      	cmp	r6, r7
d05a203a:	d900      	bls.n	d05a203e <__ssputs_r+0x86>
d05a203c:	463e      	mov	r6, r7
d05a203e:	4632      	mov	r2, r6
d05a2040:	6820      	ldr	r0, [r4, #0]
d05a2042:	4641      	mov	r1, r8
d05a2044:	f000 fb82 	bl	d05a274c <memmove>
d05a2048:	68a3      	ldr	r3, [r4, #8]
d05a204a:	6822      	ldr	r2, [r4, #0]
d05a204c:	1b9b      	subs	r3, r3, r6
d05a204e:	4432      	add	r2, r6
d05a2050:	60a3      	str	r3, [r4, #8]
d05a2052:	6022      	str	r2, [r4, #0]
d05a2054:	2000      	movs	r0, #0
d05a2056:	e7db      	b.n	d05a2010 <__ssputs_r+0x58>
d05a2058:	462a      	mov	r2, r5
d05a205a:	f000 fb9d 	bl	d05a2798 <_realloc_r>
d05a205e:	4606      	mov	r6, r0
d05a2060:	2800      	cmp	r0, #0
d05a2062:	d1e1      	bne.n	d05a2028 <__ssputs_r+0x70>
d05a2064:	6921      	ldr	r1, [r4, #16]
d05a2066:	4650      	mov	r0, sl
d05a2068:	f7ff fefc 	bl	d05a1e64 <_free_r>
d05a206c:	e7c7      	b.n	d05a1ffe <__ssputs_r+0x46>
	...

d05a2070 <_svfiprintf_r>:
d05a2070:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d05a2074:	4698      	mov	r8, r3
d05a2076:	898b      	ldrh	r3, [r1, #12]
d05a2078:	061b      	lsls	r3, r3, #24
d05a207a:	b09d      	sub	sp, #116	; 0x74
d05a207c:	4607      	mov	r7, r0
d05a207e:	460d      	mov	r5, r1
d05a2080:	4614      	mov	r4, r2
d05a2082:	d50e      	bpl.n	d05a20a2 <_svfiprintf_r+0x32>
d05a2084:	690b      	ldr	r3, [r1, #16]
d05a2086:	b963      	cbnz	r3, d05a20a2 <_svfiprintf_r+0x32>
d05a2088:	2140      	movs	r1, #64	; 0x40
d05a208a:	f7ff ff3b 	bl	d05a1f04 <_malloc_r>
d05a208e:	6028      	str	r0, [r5, #0]
d05a2090:	6128      	str	r0, [r5, #16]
d05a2092:	b920      	cbnz	r0, d05a209e <_svfiprintf_r+0x2e>
d05a2094:	230c      	movs	r3, #12
d05a2096:	603b      	str	r3, [r7, #0]
d05a2098:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d05a209c:	e0d1      	b.n	d05a2242 <_svfiprintf_r+0x1d2>
d05a209e:	2340      	movs	r3, #64	; 0x40
d05a20a0:	616b      	str	r3, [r5, #20]
d05a20a2:	2300      	movs	r3, #0
d05a20a4:	9309      	str	r3, [sp, #36]	; 0x24
d05a20a6:	2320      	movs	r3, #32
d05a20a8:	f88d 3029 	strb.w	r3, [sp, #41]	; 0x29
d05a20ac:	f8cd 800c 	str.w	r8, [sp, #12]
d05a20b0:	2330      	movs	r3, #48	; 0x30
d05a20b2:	f8df 81a8 	ldr.w	r8, [pc, #424]	; d05a225c <_svfiprintf_r+0x1ec>
d05a20b6:	f88d 302a 	strb.w	r3, [sp, #42]	; 0x2a
d05a20ba:	f04f 0901 	mov.w	r9, #1
d05a20be:	4623      	mov	r3, r4
d05a20c0:	469a      	mov	sl, r3
d05a20c2:	f813 2b01 	ldrb.w	r2, [r3], #1
d05a20c6:	b10a      	cbz	r2, d05a20cc <_svfiprintf_r+0x5c>
d05a20c8:	2a25      	cmp	r2, #37	; 0x25
d05a20ca:	d1f9      	bne.n	d05a20c0 <_svfiprintf_r+0x50>
d05a20cc:	ebba 0b04 	subs.w	fp, sl, r4
d05a20d0:	d00b      	beq.n	d05a20ea <_svfiprintf_r+0x7a>
d05a20d2:	465b      	mov	r3, fp
d05a20d4:	4622      	mov	r2, r4
d05a20d6:	4629      	mov	r1, r5
d05a20d8:	4638      	mov	r0, r7
d05a20da:	f7ff ff6d 	bl	d05a1fb8 <__ssputs_r>
d05a20de:	3001      	adds	r0, #1
d05a20e0:	f000 80aa 	beq.w	d05a2238 <_svfiprintf_r+0x1c8>
d05a20e4:	9a09      	ldr	r2, [sp, #36]	; 0x24
d05a20e6:	445a      	add	r2, fp
d05a20e8:	9209      	str	r2, [sp, #36]	; 0x24
d05a20ea:	f89a 3000 	ldrb.w	r3, [sl]
d05a20ee:	2b00      	cmp	r3, #0
d05a20f0:	f000 80a2 	beq.w	d05a2238 <_svfiprintf_r+0x1c8>
d05a20f4:	2300      	movs	r3, #0
d05a20f6:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
d05a20fa:	e9cd 2305 	strd	r2, r3, [sp, #20]
d05a20fe:	f10a 0a01 	add.w	sl, sl, #1
d05a2102:	9304      	str	r3, [sp, #16]
d05a2104:	9307      	str	r3, [sp, #28]
d05a2106:	f88d 3053 	strb.w	r3, [sp, #83]	; 0x53
d05a210a:	931a      	str	r3, [sp, #104]	; 0x68
d05a210c:	4654      	mov	r4, sl
d05a210e:	2205      	movs	r2, #5
d05a2110:	f814 1b01 	ldrb.w	r1, [r4], #1
d05a2114:	4851      	ldr	r0, [pc, #324]	; (d05a225c <_svfiprintf_r+0x1ec>)
d05a2116:	f000 fabb 	bl	d05a2690 <memchr>
d05a211a:	9a04      	ldr	r2, [sp, #16]
d05a211c:	b9d8      	cbnz	r0, d05a2156 <_svfiprintf_r+0xe6>
d05a211e:	06d0      	lsls	r0, r2, #27
d05a2120:	bf44      	itt	mi
d05a2122:	2320      	movmi	r3, #32
d05a2124:	f88d 3053 	strbmi.w	r3, [sp, #83]	; 0x53
d05a2128:	0711      	lsls	r1, r2, #28
d05a212a:	bf44      	itt	mi
d05a212c:	232b      	movmi	r3, #43	; 0x2b
d05a212e:	f88d 3053 	strbmi.w	r3, [sp, #83]	; 0x53
d05a2132:	f89a 3000 	ldrb.w	r3, [sl]
d05a2136:	2b2a      	cmp	r3, #42	; 0x2a
d05a2138:	d015      	beq.n	d05a2166 <_svfiprintf_r+0xf6>
d05a213a:	9a07      	ldr	r2, [sp, #28]
d05a213c:	4654      	mov	r4, sl
d05a213e:	2000      	movs	r0, #0
d05a2140:	f04f 0c0a 	mov.w	ip, #10
d05a2144:	4621      	mov	r1, r4
d05a2146:	f811 3b01 	ldrb.w	r3, [r1], #1
d05a214a:	3b30      	subs	r3, #48	; 0x30
d05a214c:	2b09      	cmp	r3, #9
d05a214e:	d94e      	bls.n	d05a21ee <_svfiprintf_r+0x17e>
d05a2150:	b1b0      	cbz	r0, d05a2180 <_svfiprintf_r+0x110>
d05a2152:	9207      	str	r2, [sp, #28]
d05a2154:	e014      	b.n	d05a2180 <_svfiprintf_r+0x110>
d05a2156:	eba0 0308 	sub.w	r3, r0, r8
d05a215a:	fa09 f303 	lsl.w	r3, r9, r3
d05a215e:	4313      	orrs	r3, r2
d05a2160:	9304      	str	r3, [sp, #16]
d05a2162:	46a2      	mov	sl, r4
d05a2164:	e7d2      	b.n	d05a210c <_svfiprintf_r+0x9c>
d05a2166:	9b03      	ldr	r3, [sp, #12]
d05a2168:	1d19      	adds	r1, r3, #4
d05a216a:	681b      	ldr	r3, [r3, #0]
d05a216c:	9103      	str	r1, [sp, #12]
d05a216e:	2b00      	cmp	r3, #0
d05a2170:	bfbb      	ittet	lt
d05a2172:	425b      	neglt	r3, r3
d05a2174:	f042 0202 	orrlt.w	r2, r2, #2
d05a2178:	9307      	strge	r3, [sp, #28]
d05a217a:	9307      	strlt	r3, [sp, #28]
d05a217c:	bfb8      	it	lt
d05a217e:	9204      	strlt	r2, [sp, #16]
d05a2180:	7823      	ldrb	r3, [r4, #0]
d05a2182:	2b2e      	cmp	r3, #46	; 0x2e
d05a2184:	d10c      	bne.n	d05a21a0 <_svfiprintf_r+0x130>
d05a2186:	7863      	ldrb	r3, [r4, #1]
d05a2188:	2b2a      	cmp	r3, #42	; 0x2a
d05a218a:	d135      	bne.n	d05a21f8 <_svfiprintf_r+0x188>
d05a218c:	9b03      	ldr	r3, [sp, #12]
d05a218e:	1d1a      	adds	r2, r3, #4
d05a2190:	681b      	ldr	r3, [r3, #0]
d05a2192:	9203      	str	r2, [sp, #12]
d05a2194:	2b00      	cmp	r3, #0
d05a2196:	bfb8      	it	lt
d05a2198:	f04f 33ff 	movlt.w	r3, #4294967295	; 0xffffffff
d05a219c:	3402      	adds	r4, #2
d05a219e:	9305      	str	r3, [sp, #20]
d05a21a0:	f8df a0c8 	ldr.w	sl, [pc, #200]	; d05a226c <_svfiprintf_r+0x1fc>
d05a21a4:	7821      	ldrb	r1, [r4, #0]
d05a21a6:	2203      	movs	r2, #3
d05a21a8:	4650      	mov	r0, sl
d05a21aa:	f000 fa71 	bl	d05a2690 <memchr>
d05a21ae:	b140      	cbz	r0, d05a21c2 <_svfiprintf_r+0x152>
d05a21b0:	2340      	movs	r3, #64	; 0x40
d05a21b2:	eba0 000a 	sub.w	r0, r0, sl
d05a21b6:	fa03 f000 	lsl.w	r0, r3, r0
d05a21ba:	9b04      	ldr	r3, [sp, #16]
d05a21bc:	4303      	orrs	r3, r0
d05a21be:	3401      	adds	r4, #1
d05a21c0:	9304      	str	r3, [sp, #16]
d05a21c2:	f814 1b01 	ldrb.w	r1, [r4], #1
d05a21c6:	4826      	ldr	r0, [pc, #152]	; (d05a2260 <_svfiprintf_r+0x1f0>)
d05a21c8:	f88d 1028 	strb.w	r1, [sp, #40]	; 0x28
d05a21cc:	2206      	movs	r2, #6
d05a21ce:	f000 fa5f 	bl	d05a2690 <memchr>
d05a21d2:	2800      	cmp	r0, #0
d05a21d4:	d038      	beq.n	d05a2248 <_svfiprintf_r+0x1d8>
d05a21d6:	4b23      	ldr	r3, [pc, #140]	; (d05a2264 <_svfiprintf_r+0x1f4>)
d05a21d8:	bb1b      	cbnz	r3, d05a2222 <_svfiprintf_r+0x1b2>
d05a21da:	9b03      	ldr	r3, [sp, #12]
d05a21dc:	3307      	adds	r3, #7
d05a21de:	f023 0307 	bic.w	r3, r3, #7
d05a21e2:	3308      	adds	r3, #8
d05a21e4:	9303      	str	r3, [sp, #12]
d05a21e6:	9b09      	ldr	r3, [sp, #36]	; 0x24
d05a21e8:	4433      	add	r3, r6
d05a21ea:	9309      	str	r3, [sp, #36]	; 0x24
d05a21ec:	e767      	b.n	d05a20be <_svfiprintf_r+0x4e>
d05a21ee:	fb0c 3202 	mla	r2, ip, r2, r3
d05a21f2:	460c      	mov	r4, r1
d05a21f4:	2001      	movs	r0, #1
d05a21f6:	e7a5      	b.n	d05a2144 <_svfiprintf_r+0xd4>
d05a21f8:	2300      	movs	r3, #0
d05a21fa:	3401      	adds	r4, #1
d05a21fc:	9305      	str	r3, [sp, #20]
d05a21fe:	4619      	mov	r1, r3
d05a2200:	f04f 0c0a 	mov.w	ip, #10
d05a2204:	4620      	mov	r0, r4
d05a2206:	f810 2b01 	ldrb.w	r2, [r0], #1
d05a220a:	3a30      	subs	r2, #48	; 0x30
d05a220c:	2a09      	cmp	r2, #9
d05a220e:	d903      	bls.n	d05a2218 <_svfiprintf_r+0x1a8>
d05a2210:	2b00      	cmp	r3, #0
d05a2212:	d0c5      	beq.n	d05a21a0 <_svfiprintf_r+0x130>
d05a2214:	9105      	str	r1, [sp, #20]
d05a2216:	e7c3      	b.n	d05a21a0 <_svfiprintf_r+0x130>
d05a2218:	fb0c 2101 	mla	r1, ip, r1, r2
d05a221c:	4604      	mov	r4, r0
d05a221e:	2301      	movs	r3, #1
d05a2220:	e7f0      	b.n	d05a2204 <_svfiprintf_r+0x194>
d05a2222:	ab03      	add	r3, sp, #12
d05a2224:	9300      	str	r3, [sp, #0]
d05a2226:	462a      	mov	r2, r5
d05a2228:	4b0f      	ldr	r3, [pc, #60]	; (d05a2268 <_svfiprintf_r+0x1f8>)
d05a222a:	a904      	add	r1, sp, #16
d05a222c:	4638      	mov	r0, r7
d05a222e:	f3af 8000 	nop.w
d05a2232:	1c42      	adds	r2, r0, #1
d05a2234:	4606      	mov	r6, r0
d05a2236:	d1d6      	bne.n	d05a21e6 <_svfiprintf_r+0x176>
d05a2238:	89ab      	ldrh	r3, [r5, #12]
d05a223a:	065b      	lsls	r3, r3, #25
d05a223c:	f53f af2c 	bmi.w	d05a2098 <_svfiprintf_r+0x28>
d05a2240:	9809      	ldr	r0, [sp, #36]	; 0x24
d05a2242:	b01d      	add	sp, #116	; 0x74
d05a2244:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d05a2248:	ab03      	add	r3, sp, #12
d05a224a:	9300      	str	r3, [sp, #0]
d05a224c:	462a      	mov	r2, r5
d05a224e:	4b06      	ldr	r3, [pc, #24]	; (d05a2268 <_svfiprintf_r+0x1f8>)
d05a2250:	a904      	add	r1, sp, #16
d05a2252:	4638      	mov	r0, r7
d05a2254:	f000 f87a 	bl	d05a234c <_printf_i>
d05a2258:	e7eb      	b.n	d05a2232 <_svfiprintf_r+0x1c2>
d05a225a:	bf00      	nop
d05a225c:	d05a2954 	.word	0xd05a2954
d05a2260:	d05a295e 	.word	0xd05a295e
d05a2264:	00000000 	.word	0x00000000
d05a2268:	d05a1fb9 	.word	0xd05a1fb9
d05a226c:	d05a295a 	.word	0xd05a295a

d05a2270 <_printf_common>:
d05a2270:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
d05a2274:	4616      	mov	r6, r2
d05a2276:	4699      	mov	r9, r3
d05a2278:	688a      	ldr	r2, [r1, #8]
d05a227a:	690b      	ldr	r3, [r1, #16]
d05a227c:	f8dd 8020 	ldr.w	r8, [sp, #32]
d05a2280:	4293      	cmp	r3, r2
d05a2282:	bfb8      	it	lt
d05a2284:	4613      	movlt	r3, r2
d05a2286:	6033      	str	r3, [r6, #0]
d05a2288:	f891 2043 	ldrb.w	r2, [r1, #67]	; 0x43
d05a228c:	4607      	mov	r7, r0
d05a228e:	460c      	mov	r4, r1
d05a2290:	b10a      	cbz	r2, d05a2296 <_printf_common+0x26>
d05a2292:	3301      	adds	r3, #1
d05a2294:	6033      	str	r3, [r6, #0]
d05a2296:	6823      	ldr	r3, [r4, #0]
d05a2298:	0699      	lsls	r1, r3, #26
d05a229a:	bf42      	ittt	mi
d05a229c:	6833      	ldrmi	r3, [r6, #0]
d05a229e:	3302      	addmi	r3, #2
d05a22a0:	6033      	strmi	r3, [r6, #0]
d05a22a2:	6825      	ldr	r5, [r4, #0]
d05a22a4:	f015 0506 	ands.w	r5, r5, #6
d05a22a8:	d106      	bne.n	d05a22b8 <_printf_common+0x48>
d05a22aa:	f104 0a19 	add.w	sl, r4, #25
d05a22ae:	68e3      	ldr	r3, [r4, #12]
d05a22b0:	6832      	ldr	r2, [r6, #0]
d05a22b2:	1a9b      	subs	r3, r3, r2
d05a22b4:	42ab      	cmp	r3, r5
d05a22b6:	dc26      	bgt.n	d05a2306 <_printf_common+0x96>
d05a22b8:	f894 2043 	ldrb.w	r2, [r4, #67]	; 0x43
d05a22bc:	1e13      	subs	r3, r2, #0
d05a22be:	6822      	ldr	r2, [r4, #0]
d05a22c0:	bf18      	it	ne
d05a22c2:	2301      	movne	r3, #1
d05a22c4:	0692      	lsls	r2, r2, #26
d05a22c6:	d42b      	bmi.n	d05a2320 <_printf_common+0xb0>
d05a22c8:	f104 0243 	add.w	r2, r4, #67	; 0x43
d05a22cc:	4649      	mov	r1, r9
d05a22ce:	4638      	mov	r0, r7
d05a22d0:	47c0      	blx	r8
d05a22d2:	3001      	adds	r0, #1
d05a22d4:	d01e      	beq.n	d05a2314 <_printf_common+0xa4>
d05a22d6:	6823      	ldr	r3, [r4, #0]
d05a22d8:	68e5      	ldr	r5, [r4, #12]
d05a22da:	6832      	ldr	r2, [r6, #0]
d05a22dc:	f003 0306 	and.w	r3, r3, #6
d05a22e0:	2b04      	cmp	r3, #4
d05a22e2:	bf08      	it	eq
d05a22e4:	1aad      	subeq	r5, r5, r2
d05a22e6:	68a3      	ldr	r3, [r4, #8]
d05a22e8:	6922      	ldr	r2, [r4, #16]
d05a22ea:	bf0c      	ite	eq
d05a22ec:	ea25 75e5 	biceq.w	r5, r5, r5, asr #31
d05a22f0:	2500      	movne	r5, #0
d05a22f2:	4293      	cmp	r3, r2
d05a22f4:	bfc4      	itt	gt
d05a22f6:	1a9b      	subgt	r3, r3, r2
d05a22f8:	18ed      	addgt	r5, r5, r3
d05a22fa:	2600      	movs	r6, #0
d05a22fc:	341a      	adds	r4, #26
d05a22fe:	42b5      	cmp	r5, r6
d05a2300:	d11a      	bne.n	d05a2338 <_printf_common+0xc8>
d05a2302:	2000      	movs	r0, #0
d05a2304:	e008      	b.n	d05a2318 <_printf_common+0xa8>
d05a2306:	2301      	movs	r3, #1
d05a2308:	4652      	mov	r2, sl
d05a230a:	4649      	mov	r1, r9
d05a230c:	4638      	mov	r0, r7
d05a230e:	47c0      	blx	r8
d05a2310:	3001      	adds	r0, #1
d05a2312:	d103      	bne.n	d05a231c <_printf_common+0xac>
d05a2314:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d05a2318:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
d05a231c:	3501      	adds	r5, #1
d05a231e:	e7c6      	b.n	d05a22ae <_printf_common+0x3e>
d05a2320:	18e1      	adds	r1, r4, r3
d05a2322:	1c5a      	adds	r2, r3, #1
d05a2324:	2030      	movs	r0, #48	; 0x30
d05a2326:	f881 0043 	strb.w	r0, [r1, #67]	; 0x43
d05a232a:	4422      	add	r2, r4
d05a232c:	f894 1045 	ldrb.w	r1, [r4, #69]	; 0x45
d05a2330:	f882 1043 	strb.w	r1, [r2, #67]	; 0x43
d05a2334:	3302      	adds	r3, #2
d05a2336:	e7c7      	b.n	d05a22c8 <_printf_common+0x58>
d05a2338:	2301      	movs	r3, #1
d05a233a:	4622      	mov	r2, r4
d05a233c:	4649      	mov	r1, r9
d05a233e:	4638      	mov	r0, r7
d05a2340:	47c0      	blx	r8
d05a2342:	3001      	adds	r0, #1
d05a2344:	d0e6      	beq.n	d05a2314 <_printf_common+0xa4>
d05a2346:	3601      	adds	r6, #1
d05a2348:	e7d9      	b.n	d05a22fe <_printf_common+0x8e>
	...

d05a234c <_printf_i>:
d05a234c:	e92d 47ff 	stmdb	sp!, {r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, lr}
d05a2350:	460c      	mov	r4, r1
d05a2352:	4691      	mov	r9, r2
d05a2354:	7e27      	ldrb	r7, [r4, #24]
d05a2356:	990c      	ldr	r1, [sp, #48]	; 0x30
d05a2358:	2f78      	cmp	r7, #120	; 0x78
d05a235a:	4680      	mov	r8, r0
d05a235c:	469a      	mov	sl, r3
d05a235e:	f104 0243 	add.w	r2, r4, #67	; 0x43
d05a2362:	d807      	bhi.n	d05a2374 <_printf_i+0x28>
d05a2364:	2f62      	cmp	r7, #98	; 0x62
d05a2366:	d80a      	bhi.n	d05a237e <_printf_i+0x32>
d05a2368:	2f00      	cmp	r7, #0
d05a236a:	f000 80d8 	beq.w	d05a251e <_printf_i+0x1d2>
d05a236e:	2f58      	cmp	r7, #88	; 0x58
d05a2370:	f000 80a3 	beq.w	d05a24ba <_printf_i+0x16e>
d05a2374:	f104 0642 	add.w	r6, r4, #66	; 0x42
d05a2378:	f884 7042 	strb.w	r7, [r4, #66]	; 0x42
d05a237c:	e03a      	b.n	d05a23f4 <_printf_i+0xa8>
d05a237e:	f1a7 0363 	sub.w	r3, r7, #99	; 0x63
d05a2382:	2b15      	cmp	r3, #21
d05a2384:	d8f6      	bhi.n	d05a2374 <_printf_i+0x28>
d05a2386:	a001      	add	r0, pc, #4	; (adr r0, d05a238c <_printf_i+0x40>)
d05a2388:	f850 f023 	ldr.w	pc, [r0, r3, lsl #2]
d05a238c:	d05a23e5 	.word	0xd05a23e5
d05a2390:	d05a23f9 	.word	0xd05a23f9
d05a2394:	d05a2375 	.word	0xd05a2375
d05a2398:	d05a2375 	.word	0xd05a2375
d05a239c:	d05a2375 	.word	0xd05a2375
d05a23a0:	d05a2375 	.word	0xd05a2375
d05a23a4:	d05a23f9 	.word	0xd05a23f9
d05a23a8:	d05a2375 	.word	0xd05a2375
d05a23ac:	d05a2375 	.word	0xd05a2375
d05a23b0:	d05a2375 	.word	0xd05a2375
d05a23b4:	d05a2375 	.word	0xd05a2375
d05a23b8:	d05a2505 	.word	0xd05a2505
d05a23bc:	d05a2429 	.word	0xd05a2429
d05a23c0:	d05a24e7 	.word	0xd05a24e7
d05a23c4:	d05a2375 	.word	0xd05a2375
d05a23c8:	d05a2375 	.word	0xd05a2375
d05a23cc:	d05a2527 	.word	0xd05a2527
d05a23d0:	d05a2375 	.word	0xd05a2375
d05a23d4:	d05a2429 	.word	0xd05a2429
d05a23d8:	d05a2375 	.word	0xd05a2375
d05a23dc:	d05a2375 	.word	0xd05a2375
d05a23e0:	d05a24ef 	.word	0xd05a24ef
d05a23e4:	680b      	ldr	r3, [r1, #0]
d05a23e6:	1d1a      	adds	r2, r3, #4
d05a23e8:	681b      	ldr	r3, [r3, #0]
d05a23ea:	600a      	str	r2, [r1, #0]
d05a23ec:	f104 0642 	add.w	r6, r4, #66	; 0x42
d05a23f0:	f884 3042 	strb.w	r3, [r4, #66]	; 0x42
d05a23f4:	2301      	movs	r3, #1
d05a23f6:	e0a3      	b.n	d05a2540 <_printf_i+0x1f4>
d05a23f8:	6825      	ldr	r5, [r4, #0]
d05a23fa:	6808      	ldr	r0, [r1, #0]
d05a23fc:	062e      	lsls	r6, r5, #24
d05a23fe:	f100 0304 	add.w	r3, r0, #4
d05a2402:	d50a      	bpl.n	d05a241a <_printf_i+0xce>
d05a2404:	6805      	ldr	r5, [r0, #0]
d05a2406:	600b      	str	r3, [r1, #0]
d05a2408:	2d00      	cmp	r5, #0
d05a240a:	da03      	bge.n	d05a2414 <_printf_i+0xc8>
d05a240c:	232d      	movs	r3, #45	; 0x2d
d05a240e:	426d      	negs	r5, r5
d05a2410:	f884 3043 	strb.w	r3, [r4, #67]	; 0x43
d05a2414:	485e      	ldr	r0, [pc, #376]	; (d05a2590 <_printf_i+0x244>)
d05a2416:	230a      	movs	r3, #10
d05a2418:	e019      	b.n	d05a244e <_printf_i+0x102>
d05a241a:	f015 0f40 	tst.w	r5, #64	; 0x40
d05a241e:	6805      	ldr	r5, [r0, #0]
d05a2420:	600b      	str	r3, [r1, #0]
d05a2422:	bf18      	it	ne
d05a2424:	b22d      	sxthne	r5, r5
d05a2426:	e7ef      	b.n	d05a2408 <_printf_i+0xbc>
d05a2428:	680b      	ldr	r3, [r1, #0]
d05a242a:	6825      	ldr	r5, [r4, #0]
d05a242c:	1d18      	adds	r0, r3, #4
d05a242e:	6008      	str	r0, [r1, #0]
d05a2430:	0628      	lsls	r0, r5, #24
d05a2432:	d501      	bpl.n	d05a2438 <_printf_i+0xec>
d05a2434:	681d      	ldr	r5, [r3, #0]
d05a2436:	e002      	b.n	d05a243e <_printf_i+0xf2>
d05a2438:	0669      	lsls	r1, r5, #25
d05a243a:	d5fb      	bpl.n	d05a2434 <_printf_i+0xe8>
d05a243c:	881d      	ldrh	r5, [r3, #0]
d05a243e:	4854      	ldr	r0, [pc, #336]	; (d05a2590 <_printf_i+0x244>)
d05a2440:	2f6f      	cmp	r7, #111	; 0x6f
d05a2442:	bf0c      	ite	eq
d05a2444:	2308      	moveq	r3, #8
d05a2446:	230a      	movne	r3, #10
d05a2448:	2100      	movs	r1, #0
d05a244a:	f884 1043 	strb.w	r1, [r4, #67]	; 0x43
d05a244e:	6866      	ldr	r6, [r4, #4]
d05a2450:	60a6      	str	r6, [r4, #8]
d05a2452:	2e00      	cmp	r6, #0
d05a2454:	bfa2      	ittt	ge
d05a2456:	6821      	ldrge	r1, [r4, #0]
d05a2458:	f021 0104 	bicge.w	r1, r1, #4
d05a245c:	6021      	strge	r1, [r4, #0]
d05a245e:	b90d      	cbnz	r5, d05a2464 <_printf_i+0x118>
d05a2460:	2e00      	cmp	r6, #0
d05a2462:	d04d      	beq.n	d05a2500 <_printf_i+0x1b4>
d05a2464:	4616      	mov	r6, r2
d05a2466:	fbb5 f1f3 	udiv	r1, r5, r3
d05a246a:	fb03 5711 	mls	r7, r3, r1, r5
d05a246e:	5dc7      	ldrb	r7, [r0, r7]
d05a2470:	f806 7d01 	strb.w	r7, [r6, #-1]!
d05a2474:	462f      	mov	r7, r5
d05a2476:	42bb      	cmp	r3, r7
d05a2478:	460d      	mov	r5, r1
d05a247a:	d9f4      	bls.n	d05a2466 <_printf_i+0x11a>
d05a247c:	2b08      	cmp	r3, #8
d05a247e:	d10b      	bne.n	d05a2498 <_printf_i+0x14c>
d05a2480:	6823      	ldr	r3, [r4, #0]
d05a2482:	07df      	lsls	r7, r3, #31
d05a2484:	d508      	bpl.n	d05a2498 <_printf_i+0x14c>
d05a2486:	6923      	ldr	r3, [r4, #16]
d05a2488:	6861      	ldr	r1, [r4, #4]
d05a248a:	4299      	cmp	r1, r3
d05a248c:	bfde      	ittt	le
d05a248e:	2330      	movle	r3, #48	; 0x30
d05a2490:	f806 3c01 	strble.w	r3, [r6, #-1]
d05a2494:	f106 36ff 	addle.w	r6, r6, #4294967295	; 0xffffffff
d05a2498:	1b92      	subs	r2, r2, r6
d05a249a:	6122      	str	r2, [r4, #16]
d05a249c:	f8cd a000 	str.w	sl, [sp]
d05a24a0:	464b      	mov	r3, r9
d05a24a2:	aa03      	add	r2, sp, #12
d05a24a4:	4621      	mov	r1, r4
d05a24a6:	4640      	mov	r0, r8
d05a24a8:	f7ff fee2 	bl	d05a2270 <_printf_common>
d05a24ac:	3001      	adds	r0, #1
d05a24ae:	d14c      	bne.n	d05a254a <_printf_i+0x1fe>
d05a24b0:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d05a24b4:	b004      	add	sp, #16
d05a24b6:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
d05a24ba:	4835      	ldr	r0, [pc, #212]	; (d05a2590 <_printf_i+0x244>)
d05a24bc:	f884 7045 	strb.w	r7, [r4, #69]	; 0x45
d05a24c0:	6823      	ldr	r3, [r4, #0]
d05a24c2:	680e      	ldr	r6, [r1, #0]
d05a24c4:	061f      	lsls	r7, r3, #24
d05a24c6:	f856 5b04 	ldr.w	r5, [r6], #4
d05a24ca:	600e      	str	r6, [r1, #0]
d05a24cc:	d514      	bpl.n	d05a24f8 <_printf_i+0x1ac>
d05a24ce:	07d9      	lsls	r1, r3, #31
d05a24d0:	bf44      	itt	mi
d05a24d2:	f043 0320 	orrmi.w	r3, r3, #32
d05a24d6:	6023      	strmi	r3, [r4, #0]
d05a24d8:	b91d      	cbnz	r5, d05a24e2 <_printf_i+0x196>
d05a24da:	6823      	ldr	r3, [r4, #0]
d05a24dc:	f023 0320 	bic.w	r3, r3, #32
d05a24e0:	6023      	str	r3, [r4, #0]
d05a24e2:	2310      	movs	r3, #16
d05a24e4:	e7b0      	b.n	d05a2448 <_printf_i+0xfc>
d05a24e6:	6823      	ldr	r3, [r4, #0]
d05a24e8:	f043 0320 	orr.w	r3, r3, #32
d05a24ec:	6023      	str	r3, [r4, #0]
d05a24ee:	2378      	movs	r3, #120	; 0x78
d05a24f0:	4828      	ldr	r0, [pc, #160]	; (d05a2594 <_printf_i+0x248>)
d05a24f2:	f884 3045 	strb.w	r3, [r4, #69]	; 0x45
d05a24f6:	e7e3      	b.n	d05a24c0 <_printf_i+0x174>
d05a24f8:	065e      	lsls	r6, r3, #25
d05a24fa:	bf48      	it	mi
d05a24fc:	b2ad      	uxthmi	r5, r5
d05a24fe:	e7e6      	b.n	d05a24ce <_printf_i+0x182>
d05a2500:	4616      	mov	r6, r2
d05a2502:	e7bb      	b.n	d05a247c <_printf_i+0x130>
d05a2504:	680b      	ldr	r3, [r1, #0]
d05a2506:	6826      	ldr	r6, [r4, #0]
d05a2508:	6960      	ldr	r0, [r4, #20]
d05a250a:	1d1d      	adds	r5, r3, #4
d05a250c:	600d      	str	r5, [r1, #0]
d05a250e:	0635      	lsls	r5, r6, #24
d05a2510:	681b      	ldr	r3, [r3, #0]
d05a2512:	d501      	bpl.n	d05a2518 <_printf_i+0x1cc>
d05a2514:	6018      	str	r0, [r3, #0]
d05a2516:	e002      	b.n	d05a251e <_printf_i+0x1d2>
d05a2518:	0671      	lsls	r1, r6, #25
d05a251a:	d5fb      	bpl.n	d05a2514 <_printf_i+0x1c8>
d05a251c:	8018      	strh	r0, [r3, #0]
d05a251e:	2300      	movs	r3, #0
d05a2520:	6123      	str	r3, [r4, #16]
d05a2522:	4616      	mov	r6, r2
d05a2524:	e7ba      	b.n	d05a249c <_printf_i+0x150>
d05a2526:	680b      	ldr	r3, [r1, #0]
d05a2528:	1d1a      	adds	r2, r3, #4
d05a252a:	600a      	str	r2, [r1, #0]
d05a252c:	681e      	ldr	r6, [r3, #0]
d05a252e:	6862      	ldr	r2, [r4, #4]
d05a2530:	2100      	movs	r1, #0
d05a2532:	4630      	mov	r0, r6
d05a2534:	f000 f8ac 	bl	d05a2690 <memchr>
d05a2538:	b108      	cbz	r0, d05a253e <_printf_i+0x1f2>
d05a253a:	1b80      	subs	r0, r0, r6
d05a253c:	6060      	str	r0, [r4, #4]
d05a253e:	6863      	ldr	r3, [r4, #4]
d05a2540:	6123      	str	r3, [r4, #16]
d05a2542:	2300      	movs	r3, #0
d05a2544:	f884 3043 	strb.w	r3, [r4, #67]	; 0x43
d05a2548:	e7a8      	b.n	d05a249c <_printf_i+0x150>
d05a254a:	6923      	ldr	r3, [r4, #16]
d05a254c:	4632      	mov	r2, r6
d05a254e:	4649      	mov	r1, r9
d05a2550:	4640      	mov	r0, r8
d05a2552:	47d0      	blx	sl
d05a2554:	3001      	adds	r0, #1
d05a2556:	d0ab      	beq.n	d05a24b0 <_printf_i+0x164>
d05a2558:	6823      	ldr	r3, [r4, #0]
d05a255a:	079b      	lsls	r3, r3, #30
d05a255c:	d413      	bmi.n	d05a2586 <_printf_i+0x23a>
d05a255e:	68e0      	ldr	r0, [r4, #12]
d05a2560:	9b03      	ldr	r3, [sp, #12]
d05a2562:	4298      	cmp	r0, r3
d05a2564:	bfb8      	it	lt
d05a2566:	4618      	movlt	r0, r3
d05a2568:	e7a4      	b.n	d05a24b4 <_printf_i+0x168>
d05a256a:	2301      	movs	r3, #1
d05a256c:	4632      	mov	r2, r6
d05a256e:	4649      	mov	r1, r9
d05a2570:	4640      	mov	r0, r8
d05a2572:	47d0      	blx	sl
d05a2574:	3001      	adds	r0, #1
d05a2576:	d09b      	beq.n	d05a24b0 <_printf_i+0x164>
d05a2578:	3501      	adds	r5, #1
d05a257a:	68e3      	ldr	r3, [r4, #12]
d05a257c:	9903      	ldr	r1, [sp, #12]
d05a257e:	1a5b      	subs	r3, r3, r1
d05a2580:	42ab      	cmp	r3, r5
d05a2582:	dcf2      	bgt.n	d05a256a <_printf_i+0x21e>
d05a2584:	e7eb      	b.n	d05a255e <_printf_i+0x212>
d05a2586:	2500      	movs	r5, #0
d05a2588:	f104 0619 	add.w	r6, r4, #25
d05a258c:	e7f5      	b.n	d05a257a <_printf_i+0x22e>
d05a258e:	bf00      	nop
d05a2590:	d05a2965 	.word	0xd05a2965
d05a2594:	d05a2976 	.word	0xd05a2976

d05a2598 <__sread>:
d05a2598:	b510      	push	{r4, lr}
d05a259a:	460c      	mov	r4, r1
d05a259c:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d05a25a0:	f000 f920 	bl	d05a27e4 <_read_r>
d05a25a4:	2800      	cmp	r0, #0
d05a25a6:	bfab      	itete	ge
d05a25a8:	6d63      	ldrge	r3, [r4, #84]	; 0x54
d05a25aa:	89a3      	ldrhlt	r3, [r4, #12]
d05a25ac:	181b      	addge	r3, r3, r0
d05a25ae:	f423 5380 	biclt.w	r3, r3, #4096	; 0x1000
d05a25b2:	bfac      	ite	ge
d05a25b4:	6563      	strge	r3, [r4, #84]	; 0x54
d05a25b6:	81a3      	strhlt	r3, [r4, #12]
d05a25b8:	bd10      	pop	{r4, pc}

d05a25ba <__swrite>:
d05a25ba:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
d05a25be:	461f      	mov	r7, r3
d05a25c0:	898b      	ldrh	r3, [r1, #12]
d05a25c2:	05db      	lsls	r3, r3, #23
d05a25c4:	4605      	mov	r5, r0
d05a25c6:	460c      	mov	r4, r1
d05a25c8:	4616      	mov	r6, r2
d05a25ca:	d505      	bpl.n	d05a25d8 <__swrite+0x1e>
d05a25cc:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d05a25d0:	2302      	movs	r3, #2
d05a25d2:	2200      	movs	r2, #0
d05a25d4:	f000 f846 	bl	d05a2664 <_lseek_r>
d05a25d8:	89a3      	ldrh	r3, [r4, #12]
d05a25da:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
d05a25de:	f423 5380 	bic.w	r3, r3, #4096	; 0x1000
d05a25e2:	81a3      	strh	r3, [r4, #12]
d05a25e4:	4632      	mov	r2, r6
d05a25e6:	463b      	mov	r3, r7
d05a25e8:	4628      	mov	r0, r5
d05a25ea:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
d05a25ee:	f7fd bd25 	b.w	d05a003c <_write_r>

d05a25f2 <__sseek>:
d05a25f2:	b510      	push	{r4, lr}
d05a25f4:	460c      	mov	r4, r1
d05a25f6:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d05a25fa:	f000 f833 	bl	d05a2664 <_lseek_r>
d05a25fe:	1c43      	adds	r3, r0, #1
d05a2600:	89a3      	ldrh	r3, [r4, #12]
d05a2602:	bf15      	itete	ne
d05a2604:	6560      	strne	r0, [r4, #84]	; 0x54
d05a2606:	f423 5380 	biceq.w	r3, r3, #4096	; 0x1000
d05a260a:	f443 5380 	orrne.w	r3, r3, #4096	; 0x1000
d05a260e:	81a3      	strheq	r3, [r4, #12]
d05a2610:	bf18      	it	ne
d05a2612:	81a3      	strhne	r3, [r4, #12]
d05a2614:	bd10      	pop	{r4, pc}

d05a2616 <__sclose>:
d05a2616:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d05a261a:	f000 b801 	b.w	d05a2620 <_close_r>
	...

d05a2620 <_close_r>:
d05a2620:	b538      	push	{r3, r4, r5, lr}
d05a2622:	4d06      	ldr	r5, [pc, #24]	; (d05a263c <_close_r+0x1c>)
d05a2624:	2300      	movs	r3, #0
d05a2626:	4604      	mov	r4, r0
d05a2628:	4608      	mov	r0, r1
d05a262a:	602b      	str	r3, [r5, #0]
d05a262c:	f7fd fd40 	bl	d05a00b0 <_close>
d05a2630:	1c43      	adds	r3, r0, #1
d05a2632:	d102      	bne.n	d05a263a <_close_r+0x1a>
d05a2634:	682b      	ldr	r3, [r5, #0]
d05a2636:	b103      	cbz	r3, d05a263a <_close_r+0x1a>
d05a2638:	6023      	str	r3, [r4, #0]
d05a263a:	bd38      	pop	{r3, r4, r5, pc}
d05a263c:	d05b5cb4 	.word	0xd05b5cb4

d05a2640 <_fstat_r>:
d05a2640:	b538      	push	{r3, r4, r5, lr}
d05a2642:	4d07      	ldr	r5, [pc, #28]	; (d05a2660 <_fstat_r+0x20>)
d05a2644:	2300      	movs	r3, #0
d05a2646:	4604      	mov	r4, r0
d05a2648:	4608      	mov	r0, r1
d05a264a:	4611      	mov	r1, r2
d05a264c:	602b      	str	r3, [r5, #0]
d05a264e:	f7fd fd33 	bl	d05a00b8 <_fstat>
d05a2652:	1c43      	adds	r3, r0, #1
d05a2654:	d102      	bne.n	d05a265c <_fstat_r+0x1c>
d05a2656:	682b      	ldr	r3, [r5, #0]
d05a2658:	b103      	cbz	r3, d05a265c <_fstat_r+0x1c>
d05a265a:	6023      	str	r3, [r4, #0]
d05a265c:	bd38      	pop	{r3, r4, r5, pc}
d05a265e:	bf00      	nop
d05a2660:	d05b5cb4 	.word	0xd05b5cb4

d05a2664 <_lseek_r>:
d05a2664:	b538      	push	{r3, r4, r5, lr}
d05a2666:	4d07      	ldr	r5, [pc, #28]	; (d05a2684 <_lseek_r+0x20>)
d05a2668:	4604      	mov	r4, r0
d05a266a:	4608      	mov	r0, r1
d05a266c:	4611      	mov	r1, r2
d05a266e:	2200      	movs	r2, #0
d05a2670:	602a      	str	r2, [r5, #0]
d05a2672:	461a      	mov	r2, r3
d05a2674:	f7fd fd26 	bl	d05a00c4 <_lseek>
d05a2678:	1c43      	adds	r3, r0, #1
d05a267a:	d102      	bne.n	d05a2682 <_lseek_r+0x1e>
d05a267c:	682b      	ldr	r3, [r5, #0]
d05a267e:	b103      	cbz	r3, d05a2682 <_lseek_r+0x1e>
d05a2680:	6023      	str	r3, [r4, #0]
d05a2682:	bd38      	pop	{r3, r4, r5, pc}
d05a2684:	d05b5cb4 	.word	0xd05b5cb4
	...

d05a2690 <memchr>:
d05a2690:	f001 01ff 	and.w	r1, r1, #255	; 0xff
d05a2694:	2a10      	cmp	r2, #16
d05a2696:	db2b      	blt.n	d05a26f0 <memchr+0x60>
d05a2698:	f010 0f07 	tst.w	r0, #7
d05a269c:	d008      	beq.n	d05a26b0 <memchr+0x20>
d05a269e:	f810 3b01 	ldrb.w	r3, [r0], #1
d05a26a2:	3a01      	subs	r2, #1
d05a26a4:	428b      	cmp	r3, r1
d05a26a6:	d02d      	beq.n	d05a2704 <memchr+0x74>
d05a26a8:	f010 0f07 	tst.w	r0, #7
d05a26ac:	b342      	cbz	r2, d05a2700 <memchr+0x70>
d05a26ae:	d1f6      	bne.n	d05a269e <memchr+0xe>
d05a26b0:	b4f0      	push	{r4, r5, r6, r7}
d05a26b2:	ea41 2101 	orr.w	r1, r1, r1, lsl #8
d05a26b6:	ea41 4101 	orr.w	r1, r1, r1, lsl #16
d05a26ba:	f022 0407 	bic.w	r4, r2, #7
d05a26be:	f07f 0700 	mvns.w	r7, #0
d05a26c2:	2300      	movs	r3, #0
d05a26c4:	e8f0 5602 	ldrd	r5, r6, [r0], #8
d05a26c8:	3c08      	subs	r4, #8
d05a26ca:	ea85 0501 	eor.w	r5, r5, r1
d05a26ce:	ea86 0601 	eor.w	r6, r6, r1
d05a26d2:	fa85 f547 	uadd8	r5, r5, r7
d05a26d6:	faa3 f587 	sel	r5, r3, r7
d05a26da:	fa86 f647 	uadd8	r6, r6, r7
d05a26de:	faa5 f687 	sel	r6, r5, r7
d05a26e2:	b98e      	cbnz	r6, d05a2708 <memchr+0x78>
d05a26e4:	d1ee      	bne.n	d05a26c4 <memchr+0x34>
d05a26e6:	bcf0      	pop	{r4, r5, r6, r7}
d05a26e8:	f001 01ff 	and.w	r1, r1, #255	; 0xff
d05a26ec:	f002 0207 	and.w	r2, r2, #7
d05a26f0:	b132      	cbz	r2, d05a2700 <memchr+0x70>
d05a26f2:	f810 3b01 	ldrb.w	r3, [r0], #1
d05a26f6:	3a01      	subs	r2, #1
d05a26f8:	ea83 0301 	eor.w	r3, r3, r1
d05a26fc:	b113      	cbz	r3, d05a2704 <memchr+0x74>
d05a26fe:	d1f8      	bne.n	d05a26f2 <memchr+0x62>
d05a2700:	2000      	movs	r0, #0
d05a2702:	4770      	bx	lr
d05a2704:	3801      	subs	r0, #1
d05a2706:	4770      	bx	lr
d05a2708:	2d00      	cmp	r5, #0
d05a270a:	bf06      	itte	eq
d05a270c:	4635      	moveq	r5, r6
d05a270e:	3803      	subeq	r0, #3
d05a2710:	3807      	subne	r0, #7
d05a2712:	f015 0f01 	tst.w	r5, #1
d05a2716:	d107      	bne.n	d05a2728 <memchr+0x98>
d05a2718:	3001      	adds	r0, #1
d05a271a:	f415 7f80 	tst.w	r5, #256	; 0x100
d05a271e:	bf02      	ittt	eq
d05a2720:	3001      	addeq	r0, #1
d05a2722:	f415 3fc0 	tsteq.w	r5, #98304	; 0x18000
d05a2726:	3001      	addeq	r0, #1
d05a2728:	bcf0      	pop	{r4, r5, r6, r7}
d05a272a:	3801      	subs	r0, #1
d05a272c:	4770      	bx	lr
d05a272e:	bf00      	nop

d05a2730 <memcpy>:
d05a2730:	440a      	add	r2, r1
d05a2732:	4291      	cmp	r1, r2
d05a2734:	f100 33ff 	add.w	r3, r0, #4294967295	; 0xffffffff
d05a2738:	d100      	bne.n	d05a273c <memcpy+0xc>
d05a273a:	4770      	bx	lr
d05a273c:	b510      	push	{r4, lr}
d05a273e:	f811 4b01 	ldrb.w	r4, [r1], #1
d05a2742:	f803 4f01 	strb.w	r4, [r3, #1]!
d05a2746:	4291      	cmp	r1, r2
d05a2748:	d1f9      	bne.n	d05a273e <memcpy+0xe>
d05a274a:	bd10      	pop	{r4, pc}

d05a274c <memmove>:
d05a274c:	4288      	cmp	r0, r1
d05a274e:	b510      	push	{r4, lr}
d05a2750:	eb01 0402 	add.w	r4, r1, r2
d05a2754:	d902      	bls.n	d05a275c <memmove+0x10>
d05a2756:	4284      	cmp	r4, r0
d05a2758:	4623      	mov	r3, r4
d05a275a:	d807      	bhi.n	d05a276c <memmove+0x20>
d05a275c:	1e43      	subs	r3, r0, #1
d05a275e:	42a1      	cmp	r1, r4
d05a2760:	d008      	beq.n	d05a2774 <memmove+0x28>
d05a2762:	f811 2b01 	ldrb.w	r2, [r1], #1
d05a2766:	f803 2f01 	strb.w	r2, [r3, #1]!
d05a276a:	e7f8      	b.n	d05a275e <memmove+0x12>
d05a276c:	4402      	add	r2, r0
d05a276e:	4601      	mov	r1, r0
d05a2770:	428a      	cmp	r2, r1
d05a2772:	d100      	bne.n	d05a2776 <memmove+0x2a>
d05a2774:	bd10      	pop	{r4, pc}
d05a2776:	f813 4d01 	ldrb.w	r4, [r3, #-1]!
d05a277a:	f802 4d01 	strb.w	r4, [r2, #-1]!
d05a277e:	e7f7      	b.n	d05a2770 <memmove+0x24>

d05a2780 <__malloc_lock>:
d05a2780:	4801      	ldr	r0, [pc, #4]	; (d05a2788 <__malloc_lock+0x8>)
d05a2782:	f7ff bb41 	b.w	d05a1e08 <__retarget_lock_acquire_recursive>
d05a2786:	bf00      	nop
d05a2788:	d05b5cac 	.word	0xd05b5cac

d05a278c <__malloc_unlock>:
d05a278c:	4801      	ldr	r0, [pc, #4]	; (d05a2794 <__malloc_unlock+0x8>)
d05a278e:	f7ff bb3c 	b.w	d05a1e0a <__retarget_lock_release_recursive>
d05a2792:	bf00      	nop
d05a2794:	d05b5cac 	.word	0xd05b5cac

d05a2798 <_realloc_r>:
d05a2798:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d05a279a:	4607      	mov	r7, r0
d05a279c:	4614      	mov	r4, r2
d05a279e:	460e      	mov	r6, r1
d05a27a0:	b921      	cbnz	r1, d05a27ac <_realloc_r+0x14>
d05a27a2:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
d05a27a6:	4611      	mov	r1, r2
d05a27a8:	f7ff bbac 	b.w	d05a1f04 <_malloc_r>
d05a27ac:	b922      	cbnz	r2, d05a27b8 <_realloc_r+0x20>
d05a27ae:	f7ff fb59 	bl	d05a1e64 <_free_r>
d05a27b2:	4625      	mov	r5, r4
d05a27b4:	4628      	mov	r0, r5
d05a27b6:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d05a27b8:	f000 f826 	bl	d05a2808 <_malloc_usable_size_r>
d05a27bc:	42a0      	cmp	r0, r4
d05a27be:	d20f      	bcs.n	d05a27e0 <_realloc_r+0x48>
d05a27c0:	4621      	mov	r1, r4
d05a27c2:	4638      	mov	r0, r7
d05a27c4:	f7ff fb9e 	bl	d05a1f04 <_malloc_r>
d05a27c8:	4605      	mov	r5, r0
d05a27ca:	2800      	cmp	r0, #0
d05a27cc:	d0f2      	beq.n	d05a27b4 <_realloc_r+0x1c>
d05a27ce:	4631      	mov	r1, r6
d05a27d0:	4622      	mov	r2, r4
d05a27d2:	f7ff ffad 	bl	d05a2730 <memcpy>
d05a27d6:	4631      	mov	r1, r6
d05a27d8:	4638      	mov	r0, r7
d05a27da:	f7ff fb43 	bl	d05a1e64 <_free_r>
d05a27de:	e7e9      	b.n	d05a27b4 <_realloc_r+0x1c>
d05a27e0:	4635      	mov	r5, r6
d05a27e2:	e7e7      	b.n	d05a27b4 <_realloc_r+0x1c>

d05a27e4 <_read_r>:
d05a27e4:	b538      	push	{r3, r4, r5, lr}
d05a27e6:	4d07      	ldr	r5, [pc, #28]	; (d05a2804 <_read_r+0x20>)
d05a27e8:	4604      	mov	r4, r0
d05a27ea:	4608      	mov	r0, r1
d05a27ec:	4611      	mov	r1, r2
d05a27ee:	2200      	movs	r2, #0
d05a27f0:	602a      	str	r2, [r5, #0]
d05a27f2:	461a      	mov	r2, r3
d05a27f4:	f7fd fc52 	bl	d05a009c <_read>
d05a27f8:	1c43      	adds	r3, r0, #1
d05a27fa:	d102      	bne.n	d05a2802 <_read_r+0x1e>
d05a27fc:	682b      	ldr	r3, [r5, #0]
d05a27fe:	b103      	cbz	r3, d05a2802 <_read_r+0x1e>
d05a2800:	6023      	str	r3, [r4, #0]
d05a2802:	bd38      	pop	{r3, r4, r5, pc}
d05a2804:	d05b5cb4 	.word	0xd05b5cb4

d05a2808 <_malloc_usable_size_r>:
d05a2808:	f851 3c04 	ldr.w	r3, [r1, #-4]
d05a280c:	1f18      	subs	r0, r3, #4
d05a280e:	2b00      	cmp	r3, #0
d05a2810:	bfbc      	itt	lt
d05a2812:	580b      	ldrlt	r3, [r1, r0]
d05a2814:	18c0      	addlt	r0, r0, r3
d05a2816:	4770      	bx	lr
d05a2818:	6d6d7544 	.word	0x6d6d7544
d05a281c:	656d2079 	.word	0x656d2079
d05a2820:	7420756e 	.word	0x7420756e
d05a2824:	20747365 	.word	0x20747365
d05a2828:	20616976 	.word	0x20616976
d05a282c:	20656874 	.word	0x20656874
d05a2830:	42444953 	.word	0x42444953
d05a2834:	4120584f 	.word	0x4120584f
d05a2838:	002e4950 	.word	0x002e4950
d05a283c:	646e6152 	.word	0x646e6152
d05a2840:	53206d6f 	.word	0x53206d6f
d05a2844:	65706168 	.word	0x65706168
d05a2848:	00000073 	.word	0x00000073
d05a284c:	73756150 	.word	0x73756150
d05a2850:	00006465 	.word	0x00006465
d05a2854:	6e6e7552 	.word	0x6e6e7552
d05a2858:	00676e69 	.word	0x00676e69
d05a285c:	7c207325 	.word	0x7c207325
d05a2860:	61726620 	.word	0x61726620
d05a2864:	2073656d 	.word	0x2073656d
d05a2868:	20756c25 	.word	0x20756c25
d05a286c:	6f63207c 	.word	0x6f63207c
d05a2870:	72756f6c 	.word	0x72756f6c
d05a2874:	646e6920 	.word	0x646e6920
d05a2878:	25207865 	.word	0x25207865
d05a287c:	00000075 	.word	0x00000075
d05a2880:	6e696f44 	.word	0x6e696f44
d05a2884:	6f732067 	.word	0x6f732067
d05a2888:	7220656d 	.word	0x7220656d
d05a288c:	6f646e61 	.word	0x6f646e61
d05a2890:	6873206d 	.word	0x6873206d
d05a2894:	73657061 	.word	0x73657061
d05a2898:	00000021 	.word	0x00000021
d05a289c:	70616853 	.word	0x70616853
d05a28a0:	4f7c7365 	.word	0x4f7c7365
d05a28a4:	6f697470 	.word	0x6f697470
d05a28a8:	417c736e 	.word	0x417c736e
d05a28ac:	74756f62 	.word	0x74756f62
d05a28b0:	00000000 	.word	0x00000000
d05a28b4:	73727542 	.word	0x73727542
d05a28b8:	00000074 	.word	0x00000074
d05a28bc:	61656c43 	.word	0x61656c43
d05a28c0:	00000072 	.word	0x00000072
d05a28c4:	74697845 	.word	0x74697845
d05a28c8:	00000000 	.word	0x00000000
d05a28cc:	756f6241 	.word	0x756f6241
d05a28d0:	61522074 	.word	0x61522074
d05a28d4:	6d6f646e 	.word	0x6d6f646e
d05a28d8:	61685320 	.word	0x61685320
d05a28dc:	00736570 	.word	0x00736570
d05a28e0:	73756150 	.word	0x73756150
d05a28e4:	00000065 	.word	0x00000065
d05a28e8:	736f6c43 	.word	0x736f6c43
d05a28ec:	00000065 	.word	0x00000065

d05a28f0 <_global_impure_ptr>:
d05a28f0:	d05a299c                                .)Z.

d05a28f4 <__sf_fake_stderr>:
	...

d05a2914 <__sf_fake_stdin>:
	...

d05a2934 <__sf_fake_stdout>:
	...
d05a2954:	2b302d23 6c680020 6665004c 47464567     #-0+ .hlL.efgEFG
d05a2964:	32313000 36353433 41393837 45444342     .0123456789ABCDE
d05a2974:	31300046 35343332 39383736 64636261     F.0123456789abcd
d05a2984:	                                         ef.

Disassembly of section .init:

d05a2988 <_init>:
d05a2988:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d05a298a:	bf00      	nop

Disassembly of section .fini:

d05a298c <_fini>:
d05a298c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d05a298e:	bf00      	nop


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
d05a001e:	f001 fc5f 	bl	d05a18e0 <setbuf>
d05a0022:	6833      	ldr	r3, [r6, #0]
d05a0024:	2100      	movs	r1, #0
d05a0026:	68d8      	ldr	r0, [r3, #12]
d05a0028:	f001 fc5a 	bl	d05a18e0 <setbuf>
d05a002c:	4629      	mov	r1, r5
d05a002e:	4620      	mov	r0, r4
d05a0030:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
d05a0034:	f001 b90a 	b.w	d05a124c <main>
d05a0038:	d05a29e8 	.word	0xd05a29e8

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
d05a0084:	f001 fc1e 	bl	d05a18c4 <__errno>
d05a0088:	2209      	movs	r2, #9
d05a008a:	4603      	mov	r3, r0
d05a008c:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d05a0090:	601a      	str	r2, [r3, #0]
d05a0092:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d05a0094:	d05a2a64 	.word	0xd05a2a64
d05a0098:	2001f000 	.word	0x2001f000

d05a009c <_read>:
d05a009c:	b508      	push	{r3, lr}
d05a009e:	f001 fc11 	bl	d05a18c4 <__errno>
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
d05a00ea:	f001 fbeb 	bl	d05a18c4 <__errno>
d05a00ee:	220c      	movs	r2, #12
d05a00f0:	4603      	mov	r3, r0
d05a00f2:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d05a00f6:	601a      	str	r2, [r3, #0]
d05a00f8:	bd10      	pop	{r4, pc}
d05a00fa:	bf00      	nop
d05a00fc:	d05a2a60 	.word	0xd05a2a60
d05a0100:	d05b7d18 	.word	0xd05b7d18
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
d05a0138:	d05b5c88 	.word	0xd05b5c88
d05a013c:	d05a2868 	.word	0xd05a2868
d05a0140:	d05a288c 	.word	0xd05a288c

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
d05a016a:	f001 fc87 	bl	d05a1a7c <sniprintf>
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
d05a01e8:	d05b5c98 	.word	0xd05b5c98
d05a01ec:	d05b5c80 	.word	0xd05b5c80
d05a01f0:	d05b5c8c 	.word	0xd05b5c8c
d05a01f4:	d05a28a4 	.word	0xd05a28a4
d05a01f8:	d05a289c 	.word	0xd05a289c
d05a01fc:	d05b5cfc 	.word	0xd05b5cfc
d05a0200:	d05b5c9c 	.word	0xd05b5c9c
d05a0204:	d05a28ac 	.word	0xd05a28ac
d05a0208:	2001f000 	.word	0x2001f000
d05a020c:	d05b5c88 	.word	0xd05b5c88

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
d05a025c:	d05b5c94 	.word	0xd05b5c94
d05a0260:	d05b5c98 	.word	0xd05b5c98
d05a0264:	2001f000 	.word	0x2001f000

d05a0268 <app_shutdown>:
d05a0268:	b538      	push	{r3, r4, r5, lr}
d05a026a:	4b22      	ldr	r3, [pc, #136]	; (d05a02f4 <app_shutdown+0x8c>)
d05a026c:	781a      	ldrb	r2, [r3, #0]
d05a026e:	2a00      	cmp	r2, #0
d05a0270:	d03e      	beq.n	d05a02f0 <app_shutdown+0x88>
d05a0272:	4c21      	ldr	r4, [pc, #132]	; (d05a02f8 <app_shutdown+0x90>)
d05a0274:	2200      	movs	r2, #0
d05a0276:	7820      	ldrb	r0, [r4, #0]
d05a0278:	701a      	strb	r2, [r3, #0]
d05a027a:	28ff      	cmp	r0, #255	; 0xff
d05a027c:	d00f      	beq.n	d05a029e <app_shutdown+0x36>
d05a027e:	4a1f      	ldr	r2, [pc, #124]	; (d05a02fc <app_shutdown+0x94>)
d05a0280:	7a13      	ldrb	r3, [r2, #8]
d05a0282:	7a55      	ldrb	r5, [r2, #9]
d05a0284:	7a91      	ldrb	r1, [r2, #10]
d05a0286:	ea43 2305 	orr.w	r3, r3, r5, lsl #8
d05a028a:	7ad2      	ldrb	r2, [r2, #11]
d05a028c:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d05a0290:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d05a0294:	695b      	ldr	r3, [r3, #20]
d05a0296:	685b      	ldr	r3, [r3, #4]
d05a0298:	4798      	blx	r3
d05a029a:	23ff      	movs	r3, #255	; 0xff
d05a029c:	7023      	strb	r3, [r4, #0]
d05a029e:	4c18      	ldr	r4, [pc, #96]	; (d05a0300 <app_shutdown+0x98>)
d05a02a0:	7820      	ldrb	r0, [r4, #0]
d05a02a2:	b178      	cbz	r0, d05a02c4 <app_shutdown+0x5c>
d05a02a4:	4a15      	ldr	r2, [pc, #84]	; (d05a02fc <app_shutdown+0x94>)
d05a02a6:	7a13      	ldrb	r3, [r2, #8]
d05a02a8:	7a55      	ldrb	r5, [r2, #9]
d05a02aa:	7a91      	ldrb	r1, [r2, #10]
d05a02ac:	ea43 2305 	orr.w	r3, r3, r5, lsl #8
d05a02b0:	7ad2      	ldrb	r2, [r2, #11]
d05a02b2:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d05a02b6:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d05a02ba:	685b      	ldr	r3, [r3, #4]
d05a02bc:	685b      	ldr	r3, [r3, #4]
d05a02be:	4798      	blx	r3
d05a02c0:	2300      	movs	r3, #0
d05a02c2:	7023      	strb	r3, [r4, #0]
d05a02c4:	480f      	ldr	r0, [pc, #60]	; (d05a0304 <app_shutdown+0x9c>)
d05a02c6:	6803      	ldr	r3, [r0, #0]
d05a02c8:	b193      	cbz	r3, d05a02f0 <app_shutdown+0x88>
d05a02ca:	4a0c      	ldr	r2, [pc, #48]	; (d05a02fc <app_shutdown+0x94>)
d05a02cc:	7a13      	ldrb	r3, [r2, #8]
d05a02ce:	7a54      	ldrb	r4, [r2, #9]
d05a02d0:	7a91      	ldrb	r1, [r2, #10]
d05a02d2:	ea43 2304 	orr.w	r3, r3, r4, lsl #8
d05a02d6:	7ad2      	ldrb	r2, [r2, #11]
d05a02d8:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d05a02dc:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d05a02e0:	699b      	ldr	r3, [r3, #24]
d05a02e2:	689b      	ldr	r3, [r3, #8]
d05a02e4:	4798      	blx	r3
d05a02e6:	2300      	movs	r3, #0
d05a02e8:	4907      	ldr	r1, [pc, #28]	; (d05a0308 <app_shutdown+0xa0>)
d05a02ea:	4a08      	ldr	r2, [pc, #32]	; (d05a030c <app_shutdown+0xa4>)
d05a02ec:	600b      	str	r3, [r1, #0]
d05a02ee:	6013      	str	r3, [r2, #0]
d05a02f0:	bd38      	pop	{r3, r4, r5, pc}
d05a02f2:	bf00      	nop
d05a02f4:	d05a2a68 	.word	0xd05a2a68
d05a02f8:	d05a29e0 	.word	0xd05a29e0
d05a02fc:	2001f000 	.word	0x2001f000
d05a0300:	d05b5c88 	.word	0xd05b5c88
d05a0304:	d05b5c84 	.word	0xd05b5c84
d05a0308:	d05b5c94 	.word	0xd05b5c94
d05a030c:	d05b5c90 	.word	0xd05b5c90

d05a0310 <editor_proc>:
d05a0310:	2900      	cmp	r1, #0
d05a0312:	d036      	beq.n	d05a0382 <editor_proc+0x72>
d05a0314:	680b      	ldr	r3, [r1, #0]
d05a0316:	2b20      	cmp	r3, #32
d05a0318:	b510      	push	{r4, lr}
d05a031a:	d015      	beq.n	d05a0348 <editor_proc+0x38>
d05a031c:	2b70      	cmp	r3, #112	; 0x70
d05a031e:	d001      	beq.n	d05a0324 <editor_proc+0x14>
d05a0320:	2000      	movs	r0, #0
d05a0322:	bd10      	pop	{r4, pc}
d05a0324:	68cb      	ldr	r3, [r1, #12]
d05a0326:	f5b3 6f10 	cmp.w	r3, #2304	; 0x900
d05a032a:	d1f9      	bne.n	d05a0320 <editor_proc+0x10>
d05a032c:	4b16      	ldr	r3, [pc, #88]	; (d05a0388 <editor_proc+0x78>)
d05a032e:	690a      	ldr	r2, [r1, #16]
d05a0330:	681b      	ldr	r3, [r3, #0]
d05a0332:	429a      	cmp	r2, r3
d05a0334:	d1f4      	bne.n	d05a0320 <editor_proc+0x10>
d05a0336:	4b15      	ldr	r3, [pc, #84]	; (d05a038c <editor_proc+0x7c>)
d05a0338:	694a      	ldr	r2, [r1, #20]
d05a033a:	681b      	ldr	r3, [r3, #0]
d05a033c:	429a      	cmp	r2, r3
d05a033e:	d1ef      	bne.n	d05a0320 <editor_proc+0x10>
d05a0340:	f7ff ff92 	bl	d05a0268 <app_shutdown>
d05a0344:	20f0      	movs	r0, #240	; 0xf0
d05a0346:	bd10      	pop	{r4, pc}
d05a0348:	68cb      	ldr	r3, [r1, #12]
d05a034a:	f5b3 5f80 	cmp.w	r3, #4096	; 0x1000
d05a034e:	d0f7      	beq.n	d05a0340 <editor_proc+0x30>
d05a0350:	f248 0204 	movw	r2, #32772	; 0x8004
d05a0354:	4293      	cmp	r3, r2
d05a0356:	d1e3      	bne.n	d05a0320 <editor_proc+0x10>
d05a0358:	4b0d      	ldr	r3, [pc, #52]	; (d05a0390 <editor_proc+0x80>)
d05a035a:	6818      	ldr	r0, [r3, #0]
d05a035c:	b168      	cbz	r0, d05a037a <editor_proc+0x6a>
d05a035e:	4a0d      	ldr	r2, [pc, #52]	; (d05a0394 <editor_proc+0x84>)
d05a0360:	7a13      	ldrb	r3, [r2, #8]
d05a0362:	7a54      	ldrb	r4, [r2, #9]
d05a0364:	7a91      	ldrb	r1, [r2, #10]
d05a0366:	ea43 2304 	orr.w	r3, r3, r4, lsl #8
d05a036a:	7ad2      	ldrb	r2, [r2, #11]
d05a036c:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d05a0370:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d05a0374:	68db      	ldr	r3, [r3, #12]
d05a0376:	6d9b      	ldr	r3, [r3, #88]	; 0x58
d05a0378:	4798      	blx	r3
d05a037a:	f7ff fee3 	bl	d05a0144 <set_status>
d05a037e:	20f0      	movs	r0, #240	; 0xf0
d05a0380:	bd10      	pop	{r4, pc}
d05a0382:	4608      	mov	r0, r1
d05a0384:	4770      	bx	lr
d05a0386:	bf00      	nop
d05a0388:	d05b5c84 	.word	0xd05b5c84
d05a038c:	d05b5c90 	.word	0xd05b5c90
d05a0390:	d05a2a6c 	.word	0xd05a2a6c
d05a0394:	2001f000 	.word	0x2001f000

d05a0398 <clear_demo>:
d05a0398:	4b1d      	ldr	r3, [pc, #116]	; (d05a0410 <clear_demo+0x78>)
d05a039a:	f44f 3299 	mov.w	r2, #78336	; 0x13200
d05a039e:	481d      	ldr	r0, [pc, #116]	; (d05a0414 <clear_demo+0x7c>)
d05a03a0:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
d05a03a4:	7819      	ldrb	r1, [r3, #0]
d05a03a6:	2500      	movs	r5, #0
d05a03a8:	4f1b      	ldr	r7, [pc, #108]	; (d05a0418 <clear_demo+0x80>)
d05a03aa:	3111      	adds	r1, #17
d05a03ac:	f8df 8074 	ldr.w	r8, [pc, #116]	; d05a0424 <clear_demo+0x8c>
d05a03b0:	f507 694c 	add.w	r9, r7, #3264	; 0xcc0
d05a03b4:	b2c9      	uxtb	r1, r1
d05a03b6:	f001 fa8b 	bl	d05a18d0 <memset>
d05a03ba:	022e      	lsls	r6, r5, #8
d05a03bc:	462b      	mov	r3, r5
d05a03be:	eb07 0a05 	add.w	sl, r7, r5
d05a03c2:	3501      	adds	r5, #1
d05a03c4:	fba8 2606 	umull	r2, r6, r8, r6
d05a03c8:	eb09 0403 	add.w	r4, r9, r3
d05a03cc:	0a36      	lsrs	r6, r6, #8
d05a03ce:	4650      	mov	r0, sl
d05a03d0:	f50a 7acc 	add.w	sl, sl, #408	; 0x198
d05a03d4:	2201      	movs	r2, #1
d05a03d6:	4631      	mov	r1, r6
d05a03d8:	f001 fa7a 	bl	d05a18d0 <memset>
d05a03dc:	45a2      	cmp	sl, r4
d05a03de:	d1f6      	bne.n	d05a03ce <clear_demo+0x36>
d05a03e0:	f5b5 7fcc 	cmp.w	r5, #408	; 0x198
d05a03e4:	d1e9      	bne.n	d05a03ba <clear_demo+0x22>
d05a03e6:	4b0d      	ldr	r3, [pc, #52]	; (d05a041c <clear_demo+0x84>)
d05a03e8:	6818      	ldr	r0, [r3, #0]
d05a03ea:	b168      	cbz	r0, d05a0408 <clear_demo+0x70>
d05a03ec:	4a0c      	ldr	r2, [pc, #48]	; (d05a0420 <clear_demo+0x88>)
d05a03ee:	7a13      	ldrb	r3, [r2, #8]
d05a03f0:	7a54      	ldrb	r4, [r2, #9]
d05a03f2:	7a91      	ldrb	r1, [r2, #10]
d05a03f4:	ea43 2304 	orr.w	r3, r3, r4, lsl #8
d05a03f8:	7ad2      	ldrb	r2, [r2, #11]
d05a03fa:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d05a03fe:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d05a0402:	68db      	ldr	r3, [r3, #12]
d05a0404:	6d9b      	ldr	r3, [r3, #88]	; 0x58
d05a0406:	4798      	blx	r3
d05a0408:	e8bd 47f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
d05a040c:	f7ff be9a 	b.w	d05a0144 <set_status>
d05a0410:	d05b5c80 	.word	0xd05b5c80
d05a0414:	d05a2a80 	.word	0xd05a2a80
d05a0418:	d05b4fc0 	.word	0xd05b4fc0
d05a041c:	d05a2a6c 	.word	0xd05a2a6c
d05a0420:	2001f000 	.word	0x2001f000
d05a0424:	a0a0a0a1 	.word	0xa0a0a0a1

d05a0428 <on_clear_clicked>:
d05a0428:	f7ff bfb6 	b.w	d05a0398 <clear_demo>

d05a042c <on_menu_clear>:
d05a042c:	f7ff bfb4 	b.w	d05a0398 <clear_demo>

d05a0430 <on_menu_pause>:
d05a0430:	b538      	push	{r3, r4, r5, lr}
d05a0432:	4b11      	ldr	r3, [pc, #68]	; (d05a0478 <on_menu_pause+0x48>)
d05a0434:	4811      	ldr	r0, [pc, #68]	; (d05a047c <on_menu_pause+0x4c>)
d05a0436:	7819      	ldrb	r1, [r3, #0]
d05a0438:	b931      	cbnz	r1, d05a0448 <on_menu_pause+0x18>
d05a043a:	2401      	movs	r4, #1
d05a043c:	6802      	ldr	r2, [r0, #0]
d05a043e:	701c      	strb	r4, [r3, #0]
d05a0440:	b1aa      	cbz	r2, d05a046e <on_menu_pause+0x3e>
d05a0442:	4c0f      	ldr	r4, [pc, #60]	; (d05a0480 <on_menu_pause+0x50>)
d05a0444:	2204      	movs	r2, #4
d05a0446:	e005      	b.n	d05a0454 <on_menu_pause+0x24>
d05a0448:	2200      	movs	r2, #0
d05a044a:	6801      	ldr	r1, [r0, #0]
d05a044c:	701a      	strb	r2, [r3, #0]
d05a044e:	b171      	cbz	r1, d05a046e <on_menu_pause+0x3e>
d05a0450:	4c0b      	ldr	r4, [pc, #44]	; (d05a0480 <on_menu_pause+0x50>)
d05a0452:	2104      	movs	r1, #4
d05a0454:	7a23      	ldrb	r3, [r4, #8]
d05a0456:	7a65      	ldrb	r5, [r4, #9]
d05a0458:	ea43 2305 	orr.w	r3, r3, r5, lsl #8
d05a045c:	7aa5      	ldrb	r5, [r4, #10]
d05a045e:	7ae4      	ldrb	r4, [r4, #11]
d05a0460:	ea43 4305 	orr.w	r3, r3, r5, lsl #16
d05a0464:	ea43 6304 	orr.w	r3, r3, r4, lsl #24
d05a0468:	699b      	ldr	r3, [r3, #24]
d05a046a:	699b      	ldr	r3, [r3, #24]
d05a046c:	4798      	blx	r3
d05a046e:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
d05a0472:	f7ff be67 	b.w	d05a0144 <set_status>
d05a0476:	bf00      	nop
d05a0478:	d05b5c98 	.word	0xd05b5c98
d05a047c:	d05b5c94 	.word	0xd05b5c94
d05a0480:	2001f000 	.word	0x2001f000

d05a0484 <on_pause_clicked>:
d05a0484:	b538      	push	{r3, r4, r5, lr}
d05a0486:	4b11      	ldr	r3, [pc, #68]	; (d05a04cc <on_pause_clicked+0x48>)
d05a0488:	4811      	ldr	r0, [pc, #68]	; (d05a04d0 <on_pause_clicked+0x4c>)
d05a048a:	7819      	ldrb	r1, [r3, #0]
d05a048c:	b931      	cbnz	r1, d05a049c <on_pause_clicked+0x18>
d05a048e:	2401      	movs	r4, #1
d05a0490:	6802      	ldr	r2, [r0, #0]
d05a0492:	701c      	strb	r4, [r3, #0]
d05a0494:	b1aa      	cbz	r2, d05a04c2 <on_pause_clicked+0x3e>
d05a0496:	4c0f      	ldr	r4, [pc, #60]	; (d05a04d4 <on_pause_clicked+0x50>)
d05a0498:	2204      	movs	r2, #4
d05a049a:	e005      	b.n	d05a04a8 <on_pause_clicked+0x24>
d05a049c:	2200      	movs	r2, #0
d05a049e:	6801      	ldr	r1, [r0, #0]
d05a04a0:	701a      	strb	r2, [r3, #0]
d05a04a2:	b171      	cbz	r1, d05a04c2 <on_pause_clicked+0x3e>
d05a04a4:	4c0b      	ldr	r4, [pc, #44]	; (d05a04d4 <on_pause_clicked+0x50>)
d05a04a6:	2104      	movs	r1, #4
d05a04a8:	7a23      	ldrb	r3, [r4, #8]
d05a04aa:	7a65      	ldrb	r5, [r4, #9]
d05a04ac:	ea43 2305 	orr.w	r3, r3, r5, lsl #8
d05a04b0:	7aa5      	ldrb	r5, [r4, #10]
d05a04b2:	7ae4      	ldrb	r4, [r4, #11]
d05a04b4:	ea43 4305 	orr.w	r3, r3, r5, lsl #16
d05a04b8:	ea43 6304 	orr.w	r3, r3, r4, lsl #24
d05a04bc:	699b      	ldr	r3, [r3, #24]
d05a04be:	699b      	ldr	r3, [r3, #24]
d05a04c0:	4798      	blx	r3
d05a04c2:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
d05a04c6:	f7ff be3d 	b.w	d05a0144 <set_status>
d05a04ca:	bf00      	nop
d05a04cc:	d05b5c98 	.word	0xd05b5c98
d05a04d0:	d05b5c94 	.word	0xd05b5c94
d05a04d4:	2001f000 	.word	0x2001f000

d05a04d8 <on_close_clicked>:
d05a04d8:	b538      	push	{r3, r4, r5, lr}
d05a04da:	4b22      	ldr	r3, [pc, #136]	; (d05a0564 <on_close_clicked+0x8c>)
d05a04dc:	781a      	ldrb	r2, [r3, #0]
d05a04de:	2a00      	cmp	r2, #0
d05a04e0:	d03e      	beq.n	d05a0560 <on_close_clicked+0x88>
d05a04e2:	4c21      	ldr	r4, [pc, #132]	; (d05a0568 <on_close_clicked+0x90>)
d05a04e4:	2200      	movs	r2, #0
d05a04e6:	7820      	ldrb	r0, [r4, #0]
d05a04e8:	701a      	strb	r2, [r3, #0]
d05a04ea:	28ff      	cmp	r0, #255	; 0xff
d05a04ec:	d00f      	beq.n	d05a050e <on_close_clicked+0x36>
d05a04ee:	4a1f      	ldr	r2, [pc, #124]	; (d05a056c <on_close_clicked+0x94>)
d05a04f0:	7a13      	ldrb	r3, [r2, #8]
d05a04f2:	7a55      	ldrb	r5, [r2, #9]
d05a04f4:	7a91      	ldrb	r1, [r2, #10]
d05a04f6:	ea43 2305 	orr.w	r3, r3, r5, lsl #8
d05a04fa:	7ad2      	ldrb	r2, [r2, #11]
d05a04fc:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d05a0500:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d05a0504:	695b      	ldr	r3, [r3, #20]
d05a0506:	685b      	ldr	r3, [r3, #4]
d05a0508:	4798      	blx	r3
d05a050a:	23ff      	movs	r3, #255	; 0xff
d05a050c:	7023      	strb	r3, [r4, #0]
d05a050e:	4c18      	ldr	r4, [pc, #96]	; (d05a0570 <on_close_clicked+0x98>)
d05a0510:	7820      	ldrb	r0, [r4, #0]
d05a0512:	b178      	cbz	r0, d05a0534 <on_close_clicked+0x5c>
d05a0514:	4a15      	ldr	r2, [pc, #84]	; (d05a056c <on_close_clicked+0x94>)
d05a0516:	7a13      	ldrb	r3, [r2, #8]
d05a0518:	7a55      	ldrb	r5, [r2, #9]
d05a051a:	7a91      	ldrb	r1, [r2, #10]
d05a051c:	ea43 2305 	orr.w	r3, r3, r5, lsl #8
d05a0520:	7ad2      	ldrb	r2, [r2, #11]
d05a0522:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d05a0526:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d05a052a:	685b      	ldr	r3, [r3, #4]
d05a052c:	685b      	ldr	r3, [r3, #4]
d05a052e:	4798      	blx	r3
d05a0530:	2300      	movs	r3, #0
d05a0532:	7023      	strb	r3, [r4, #0]
d05a0534:	480f      	ldr	r0, [pc, #60]	; (d05a0574 <on_close_clicked+0x9c>)
d05a0536:	6803      	ldr	r3, [r0, #0]
d05a0538:	b193      	cbz	r3, d05a0560 <on_close_clicked+0x88>
d05a053a:	4a0c      	ldr	r2, [pc, #48]	; (d05a056c <on_close_clicked+0x94>)
d05a053c:	7a13      	ldrb	r3, [r2, #8]
d05a053e:	7a54      	ldrb	r4, [r2, #9]
d05a0540:	7a91      	ldrb	r1, [r2, #10]
d05a0542:	ea43 2304 	orr.w	r3, r3, r4, lsl #8
d05a0546:	7ad2      	ldrb	r2, [r2, #11]
d05a0548:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d05a054c:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d05a0550:	699b      	ldr	r3, [r3, #24]
d05a0552:	689b      	ldr	r3, [r3, #8]
d05a0554:	4798      	blx	r3
d05a0556:	2300      	movs	r3, #0
d05a0558:	4907      	ldr	r1, [pc, #28]	; (d05a0578 <on_close_clicked+0xa0>)
d05a055a:	4a08      	ldr	r2, [pc, #32]	; (d05a057c <on_close_clicked+0xa4>)
d05a055c:	600b      	str	r3, [r1, #0]
d05a055e:	6013      	str	r3, [r2, #0]
d05a0560:	bd38      	pop	{r3, r4, r5, pc}
d05a0562:	bf00      	nop
d05a0564:	d05a2a68 	.word	0xd05a2a68
d05a0568:	d05a29e0 	.word	0xd05a29e0
d05a056c:	2001f000 	.word	0x2001f000
d05a0570:	d05b5c88 	.word	0xd05b5c88
d05a0574:	d05b5c84 	.word	0xd05b5c84
d05a0578:	d05b5c94 	.word	0xd05b5c94
d05a057c:	d05b5c90 	.word	0xd05b5c90

d05a0580 <draw_random_shape>:
d05a0580:	4ac3      	ldr	r2, [pc, #780]	; (d05a0890 <draw_random_shape+0x310>)
d05a0582:	49c4      	ldr	r1, [pc, #784]	; (d05a0894 <draw_random_shape+0x314>)
d05a0584:	6813      	ldr	r3, [r2, #0]
d05a0586:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d05a058a:	ea83 3343 	eor.w	r3, r3, r3, lsl #13
d05a058e:	f891 b000 	ldrb.w	fp, [r1]
d05a0592:	b08d      	sub	sp, #52	; 0x34
d05a0594:	f10b 0001 	add.w	r0, fp, #1
d05a0598:	ea83 4353 	eor.w	r3, r3, r3, lsr #17
d05a059c:	7008      	strb	r0, [r1, #0]
d05a059e:	f003 0003 	and.w	r0, r3, #3
d05a05a2:	ea83 1143 	eor.w	r1, r3, r3, lsl #5
d05a05a6:	2802      	cmp	r0, #2
d05a05a8:	f000 8088 	beq.w	d05a06bc <draw_random_shape+0x13c>
d05a05ac:	2803      	cmp	r0, #3
d05a05ae:	ea81 3141 	eor.w	r1, r1, r1, lsl #13
d05a05b2:	f000 8183 	beq.w	d05a08bc <draw_random_shape+0x33c>
d05a05b6:	2801      	cmp	r0, #1
d05a05b8:	f000 827e 	beq.w	d05a0ab8 <draw_random_shape+0x538>
d05a05bc:	ea81 4151 	eor.w	r1, r1, r1, lsr #17
d05a05c0:	4bb5      	ldr	r3, [pc, #724]	; (d05a0898 <draw_random_shape+0x318>)
d05a05c2:	4eb6      	ldr	r6, [pc, #728]	; (d05a089c <draw_random_shape+0x31c>)
d05a05c4:	f240 15a9 	movw	r5, #425	; 0x1a9
d05a05c8:	ea81 1141 	eor.w	r1, r1, r1, lsl #5
d05a05cc:	4cb4      	ldr	r4, [pc, #720]	; (d05a08a0 <draw_random_shape+0x320>)
d05a05ce:	48b5      	ldr	r0, [pc, #724]	; (d05a08a4 <draw_random_shape+0x324>)
d05a05d0:	ea81 3741 	eor.w	r7, r1, r1, lsl #13
d05a05d4:	fba3 c301 	umull	ip, r3, r3, r1
d05a05d8:	ea87 4757 	eor.w	r7, r7, r7, lsr #17
d05a05dc:	eba1 0c03 	sub.w	ip, r1, r3
d05a05e0:	ea87 1747 	eor.w	r7, r7, r7, lsl #5
d05a05e4:	eb03 035c 	add.w	r3, r3, ip, lsr #1
d05a05e8:	ea87 3e47 	eor.w	lr, r7, r7, lsl #13
d05a05ec:	fba6 6c07 	umull	r6, ip, r6, r7
d05a05f0:	0a1b      	lsrs	r3, r3, #8
d05a05f2:	ea8e 465e 	eor.w	r6, lr, lr, lsr #17
d05a05f6:	fb05 1113 	mls	r1, r5, r3, r1
d05a05fa:	ea4f 0c5c 	mov.w	ip, ip, lsr #1
d05a05fe:	ea86 1646 	eor.w	r6, r6, r6, lsl #5
d05a0602:	25c9      	movs	r5, #201	; 0xc9
d05a0604:	b289      	uxth	r1, r1
d05a0606:	ea86 3346 	eor.w	r3, r6, r6, lsl #13
d05a060a:	fb05 771c 	mls	r7, r5, ip, r7
d05a060e:	fba0 e006 	umull	lr, r0, r0, r6
d05a0612:	ea83 4353 	eor.w	r3, r3, r3, lsr #17
d05a0616:	0980      	lsrs	r0, r0, #6
d05a0618:	ea83 1543 	eor.w	r5, r3, r3, lsl #5
d05a061c:	eb00 00c0 	add.w	r0, r0, r0, lsl #3
d05a0620:	fba4 4305 	umull	r4, r3, r4, r5
d05a0624:	b2bc      	uxth	r4, r7
d05a0626:	eb00 00c0 	add.w	r0, r0, r0, lsl #3
d05a062a:	6015      	str	r5, [r2, #0]
d05a062c:	1aef      	subs	r7, r5, r3
d05a062e:	f1a1 0210 	sub.w	r2, r1, #16
d05a0632:	1a30      	subs	r0, r6, r0
d05a0634:	eb03 0357 	add.w	r3, r3, r7, lsr #1
d05a0638:	4402      	add	r2, r0
d05a063a:	f1a4 0010 	sub.w	r0, r4, #16
d05a063e:	095b      	lsrs	r3, r3, #5
d05a0640:	b212      	sxth	r2, r2
d05a0642:	ebc3 06c3 	rsb	r6, r3, r3, lsl #3
d05a0646:	2a00      	cmp	r2, #0
d05a0648:	eb03 03c6 	add.w	r3, r3, r6, lsl #3
d05a064c:	eba5 0303 	sub.w	r3, r5, r3
d05a0650:	4403      	add	r3, r0
d05a0652:	b21b      	sxth	r3, r3
d05a0654:	dd2f      	ble.n	d05a06b6 <draw_random_shape+0x136>
d05a0656:	2b00      	cmp	r3, #0
d05a0658:	dd2d      	ble.n	d05a06b6 <draw_random_shape+0x136>
d05a065a:	f1a4 0618 	sub.w	r6, r4, #24
d05a065e:	2bc0      	cmp	r3, #192	; 0xc0
d05a0660:	f1a1 0118 	sub.w	r1, r1, #24
d05a0664:	b236      	sxth	r6, r6
d05a0666:	bfa8      	it	ge
d05a0668:	23c0      	movge	r3, #192	; 0xc0
d05a066a:	f5b2 7fcc 	cmp.w	r2, #408	; 0x198
d05a066e:	b209      	sxth	r1, r1
d05a0670:	ea26 76e6 	bic.w	r6, r6, r6, asr #31
d05a0674:	bfa8      	it	ge
d05a0676:	f44f 72cc 	movge.w	r2, #408	; 0x198
d05a067a:	ea21 71e1 	bic.w	r1, r1, r1, asr #31
d05a067e:	429e      	cmp	r6, r3
d05a0680:	da19      	bge.n	d05a06b6 <draw_random_shape+0x136>
d05a0682:	f44f 70cc 	mov.w	r0, #408	; 0x198
d05a0686:	f8df c22c 	ldr.w	ip, [pc, #556]	; d05a08b4 <draw_random_shape+0x334>
d05a068a:	43f7      	mvns	r7, r6
d05a068c:	1a55      	subs	r5, r2, r1
d05a068e:	fb16 1400 	smlabb	r4, r6, r0, r1
d05a0692:	eb0c 0200 	add.w	r2, ip, r0
d05a0696:	443b      	add	r3, r7
d05a0698:	4411      	add	r1, r2
d05a069a:	4464      	add	r4, ip
d05a069c:	fa16 f383 	uxtah	r3, r6, r3
d05a06a0:	fb00 1603 	mla	r6, r0, r3, r1
d05a06a4:	4620      	mov	r0, r4
d05a06a6:	f504 74cc 	add.w	r4, r4, #408	; 0x198
d05a06aa:	462a      	mov	r2, r5
d05a06ac:	4659      	mov	r1, fp
d05a06ae:	f001 f90f 	bl	d05a18d0 <memset>
d05a06b2:	42b4      	cmp	r4, r6
d05a06b4:	d1f6      	bne.n	d05a06a4 <draw_random_shape+0x124>
d05a06b6:	b00d      	add	sp, #52	; 0x34
d05a06b8:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d05a06bc:	ea81 3141 	eor.w	r1, r1, r1, lsl #13
d05a06c0:	4879      	ldr	r0, [pc, #484]	; (d05a08a8 <draw_random_shape+0x328>)
d05a06c2:	f44f 77cc 	mov.w	r7, #408	; 0x198
d05a06c6:	f8df c1f0 	ldr.w	ip, [pc, #496]	; d05a08b8 <draw_random_shape+0x338>
d05a06ca:	ea81 4151 	eor.w	r1, r1, r1, lsr #17
d05a06ce:	26b8      	movs	r6, #184	; 0xb8
d05a06d0:	4d76      	ldr	r5, [pc, #472]	; (d05a08ac <draw_random_shape+0x32c>)
d05a06d2:	ea81 1141 	eor.w	r1, r1, r1, lsl #5
d05a06d6:	ea81 3341 	eor.w	r3, r1, r1, lsl #13
d05a06da:	fba0 e401 	umull	lr, r4, r0, r1
d05a06de:	ea83 4353 	eor.w	r3, r3, r3, lsr #17
d05a06e2:	0a24      	lsrs	r4, r4, #8
d05a06e4:	ea83 1343 	eor.w	r3, r3, r3, lsl #5
d05a06e8:	fb07 1414 	mls	r4, r7, r4, r1
d05a06ec:	ea83 3143 	eor.w	r1, r3, r3, lsl #13
d05a06f0:	fbac ea03 	umull	lr, sl, ip, r3
d05a06f4:	ea81 4151 	eor.w	r1, r1, r1, lsr #17
d05a06f8:	ea4f 1ada 	mov.w	sl, sl, lsr #7
d05a06fc:	ea81 1141 	eor.w	r1, r1, r1, lsl #5
d05a0700:	fb06 3a1a 	mls	sl, r6, sl, r3
d05a0704:	ea81 3341 	eor.w	r3, r1, r1, lsl #13
d05a0708:	fba0 e001 	umull	lr, r0, r0, r1
d05a070c:	ea83 4353 	eor.w	r3, r3, r3, lsr #17
d05a0710:	0a00      	lsrs	r0, r0, #8
d05a0712:	ea83 1343 	eor.w	r3, r3, r3, lsl #5
d05a0716:	fb07 1010 	mls	r0, r7, r0, r1
d05a071a:	b221      	sxth	r1, r4
d05a071c:	ea83 3743 	eor.w	r7, r3, r3, lsl #13
d05a0720:	9101      	str	r1, [sp, #4]
d05a0722:	b2a4      	uxth	r4, r4
d05a0724:	fbac c103 	umull	ip, r1, ip, r3
d05a0728:	ea87 4757 	eor.w	r7, r7, r7, lsr #17
d05a072c:	09c9      	lsrs	r1, r1, #7
d05a072e:	ea87 1747 	eor.w	r7, r7, r7, lsl #5
d05a0732:	fb06 3111 	mls	r1, r6, r1, r3
d05a0736:	b206      	sxth	r6, r0
d05a0738:	fba5 3507 	umull	r3, r5, r5, r7
d05a073c:	b280      	uxth	r0, r0
d05a073e:	6017      	str	r7, [r2, #0]
d05a0740:	b28a      	uxth	r2, r1
d05a0742:	f025 0303 	bic.w	r3, r5, #3
d05a0746:	b209      	sxth	r1, r1
d05a0748:	9609      	str	r6, [sp, #36]	; 0x24
d05a074a:	eb03 0595 	add.w	r5, r3, r5, lsr #2
d05a074e:	9104      	str	r1, [sp, #16]
d05a0750:	fa1f f18a 	uxth.w	r1, sl
d05a0754:	1b7f      	subs	r7, r7, r5
d05a0756:	9d01      	ldr	r5, [sp, #4]
d05a0758:	fa0f fa8a 	sxth.w	sl, sl
d05a075c:	3701      	adds	r7, #1
d05a075e:	42ae      	cmp	r6, r5
d05a0760:	b2bb      	uxth	r3, r7
d05a0762:	b2ff      	uxtb	r7, r7
d05a0764:	f340 8214 	ble.w	d05a0b90 <draw_random_shape+0x610>
d05a0768:	1b00      	subs	r0, r0, r4
d05a076a:	2401      	movs	r4, #1
d05a076c:	940a      	str	r4, [sp, #40]	; 0x28
d05a076e:	b284      	uxth	r4, r0
d05a0770:	b200      	sxth	r0, r0
d05a0772:	9406      	str	r4, [sp, #24]
d05a0774:	9007      	str	r0, [sp, #28]
d05a0776:	9804      	ldr	r0, [sp, #16]
d05a0778:	4550      	cmp	r0, sl
d05a077a:	f340 8205 	ble.w	d05a0b88 <draw_random_shape+0x608>
d05a077e:	1a8a      	subs	r2, r1, r2
d05a0780:	2101      	movs	r1, #1
d05a0782:	910b      	str	r1, [sp, #44]	; 0x2c
d05a0784:	b291      	uxth	r1, r2
d05a0786:	b212      	sxth	r2, r2
d05a0788:	f8bd 9004 	ldrh.w	r9, [sp, #4]
d05a078c:	9105      	str	r1, [sp, #20]
d05a078e:	087f      	lsrs	r7, r7, #1
d05a0790:	9208      	str	r2, [sp, #32]
d05a0792:	460a      	mov	r2, r1
d05a0794:	9906      	ldr	r1, [sp, #24]
d05a0796:	fa1f f88a 	uxth.w	r8, sl
d05a079a:	1856      	adds	r6, r2, r1
d05a079c:	4659      	mov	r1, fp
d05a079e:	469b      	mov	fp, r3
d05a07a0:	4653      	mov	r3, sl
d05a07a2:	b236      	sxth	r6, r6
d05a07a4:	46ba      	mov	sl, r7
d05a07a6:	4637      	mov	r7, r6
d05a07a8:	eba9 040a 	sub.w	r4, r9, sl
d05a07ac:	eba8 000a 	sub.w	r0, r8, sl
d05a07b0:	b2a4      	uxth	r4, r4
d05a07b2:	b280      	uxth	r0, r0
d05a07b4:	eb04 060b 	add.w	r6, r4, fp
d05a07b8:	eb00 0c0b 	add.w	ip, r0, fp
d05a07bc:	b236      	sxth	r6, r6
d05a07be:	fa0f fc8c 	sxth.w	ip, ip
d05a07c2:	2e00      	cmp	r6, #0
d05a07c4:	dd40      	ble.n	d05a0848 <draw_random_shape+0x2c8>
d05a07c6:	f1bc 0f00 	cmp.w	ip, #0
d05a07ca:	dd3d      	ble.n	d05a0848 <draw_random_shape+0x2c8>
d05a07cc:	b224      	sxth	r4, r4
d05a07ce:	f240 1297 	movw	r2, #407	; 0x197
d05a07d2:	b200      	sxth	r0, r0
d05a07d4:	4294      	cmp	r4, r2
d05a07d6:	dc37      	bgt.n	d05a0848 <draw_random_shape+0x2c8>
d05a07d8:	28bf      	cmp	r0, #191	; 0xbf
d05a07da:	dc35      	bgt.n	d05a0848 <draw_random_shape+0x2c8>
d05a07dc:	f1bc 0fc0 	cmp.w	ip, #192	; 0xc0
d05a07e0:	ea20 70e0 	bic.w	r0, r0, r0, asr #31
d05a07e4:	ea24 74e4 	bic.w	r4, r4, r4, asr #31
d05a07e8:	bfa8      	it	ge
d05a07ea:	f04f 0cc0 	movge.w	ip, #192	; 0xc0
d05a07ee:	f5b6 7fcc 	cmp.w	r6, #408	; 0x198
d05a07f2:	bfa8      	it	ge
d05a07f4:	f44f 76cc 	movge.w	r6, #408	; 0x198
d05a07f8:	4560      	cmp	r0, ip
d05a07fa:	da25      	bge.n	d05a0848 <draw_random_shape+0x2c8>
d05a07fc:	ebac 0c00 	sub.w	ip, ip, r0
d05a0800:	f44f 7ecc 	mov.w	lr, #408	; 0x198
d05a0804:	4a2a      	ldr	r2, [pc, #168]	; (d05a08b0 <draw_random_shape+0x330>)
d05a0806:	1b36      	subs	r6, r6, r4
d05a0808:	f10c 35ff 	add.w	r5, ip, #4294967295	; 0xffffffff
d05a080c:	f8cd 800c 	str.w	r8, [sp, #12]
d05a0810:	4422      	add	r2, r4
d05a0812:	46b8      	mov	r8, r7
d05a0814:	fb10 440e 	smlabb	r4, r0, lr, r4
d05a0818:	fa10 f085 	uxtah	r0, r0, r5
d05a081c:	4d25      	ldr	r5, [pc, #148]	; (d05a08b4 <draw_random_shape+0x334>)
d05a081e:	461f      	mov	r7, r3
d05a0820:	442c      	add	r4, r5
d05a0822:	fb0e 2500 	mla	r5, lr, r0, r2
d05a0826:	4632      	mov	r2, r6
d05a0828:	460e      	mov	r6, r1
d05a082a:	4620      	mov	r0, r4
d05a082c:	f504 74cc 	add.w	r4, r4, #408	; 0x198
d05a0830:	4631      	mov	r1, r6
d05a0832:	9202      	str	r2, [sp, #8]
d05a0834:	f001 f84c 	bl	d05a18d0 <memset>
d05a0838:	42ac      	cmp	r4, r5
d05a083a:	9a02      	ldr	r2, [sp, #8]
d05a083c:	d1f5      	bne.n	d05a082a <draw_random_shape+0x2aa>
d05a083e:	463b      	mov	r3, r7
d05a0840:	4631      	mov	r1, r6
d05a0842:	4647      	mov	r7, r8
d05a0844:	f8dd 800c 	ldr.w	r8, [sp, #12]
d05a0848:	9a01      	ldr	r2, [sp, #4]
d05a084a:	9809      	ldr	r0, [sp, #36]	; 0x24
d05a084c:	4282      	cmp	r2, r0
d05a084e:	d103      	bne.n	d05a0858 <draw_random_shape+0x2d8>
d05a0850:	9a04      	ldr	r2, [sp, #16]
d05a0852:	4293      	cmp	r3, r2
d05a0854:	f43f af2f 	beq.w	d05a06b6 <draw_random_shape+0x136>
d05a0858:	007a      	lsls	r2, r7, #1
d05a085a:	9808      	ldr	r0, [sp, #32]
d05a085c:	b212      	sxth	r2, r2
d05a085e:	4282      	cmp	r2, r0
d05a0860:	db09      	blt.n	d05a0876 <draw_random_shape+0x2f6>
d05a0862:	9805      	ldr	r0, [sp, #20]
d05a0864:	4407      	add	r7, r0
d05a0866:	980a      	ldr	r0, [sp, #40]	; 0x28
d05a0868:	4481      	add	r9, r0
d05a086a:	b23f      	sxth	r7, r7
d05a086c:	fa0f f089 	sxth.w	r0, r9
d05a0870:	fa1f f989 	uxth.w	r9, r9
d05a0874:	9001      	str	r0, [sp, #4]
d05a0876:	9807      	ldr	r0, [sp, #28]
d05a0878:	4282      	cmp	r2, r0
d05a087a:	dc95      	bgt.n	d05a07a8 <draw_random_shape+0x228>
d05a087c:	9b06      	ldr	r3, [sp, #24]
d05a087e:	441f      	add	r7, r3
d05a0880:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
d05a0882:	4498      	add	r8, r3
d05a0884:	b23f      	sxth	r7, r7
d05a0886:	fa0f f388 	sxth.w	r3, r8
d05a088a:	fa1f f888 	uxth.w	r8, r8
d05a088e:	e78b      	b.n	d05a07a8 <draw_random_shape+0x228>
d05a0890:	d05a29e4 	.word	0xd05a29e4
d05a0894:	d05b5c80 	.word	0xd05b5c80
d05a0898:	34679acf 	.word	0x34679acf
d05a089c:	028c1979 	.word	0x028c1979
d05a08a0:	1f7047dd 	.word	0x1f7047dd
d05a08a4:	ca4587e7 	.word	0xca4587e7
d05a08a8:	a0a0a0a1 	.word	0xa0a0a0a1
d05a08ac:	cccccccd 	.word	0xcccccccd
d05a08b0:	d05a2c18 	.word	0xd05a2c18
d05a08b4:	d05a2a80 	.word	0xd05a2a80
d05a08b8:	b21642c9 	.word	0xb21642c9
d05a08bc:	ea81 4151 	eor.w	r1, r1, r1, lsr #17
d05a08c0:	4bc2      	ldr	r3, [pc, #776]	; (d05a0bcc <draw_random_shape+0x64c>)
d05a08c2:	f44f 7ccc 	mov.w	ip, #408	; 0x198
d05a08c6:	4dc2      	ldr	r5, [pc, #776]	; (d05a0bd0 <draw_random_shape+0x650>)
d05a08c8:	ea81 1141 	eor.w	r1, r1, r1, lsl #5
d05a08cc:	20b8      	movs	r0, #184	; 0xb8
d05a08ce:	ea81 3441 	eor.w	r4, r1, r1, lsl #13
d05a08d2:	fba3 7601 	umull	r7, r6, r3, r1
d05a08d6:	ea84 4454 	eor.w	r4, r4, r4, lsr #17
d05a08da:	0a36      	lsrs	r6, r6, #8
d05a08dc:	ea84 1444 	eor.w	r4, r4, r4, lsl #5
d05a08e0:	fb0c 1116 	mls	r1, ip, r6, r1
d05a08e4:	ea84 3644 	eor.w	r6, r4, r4, lsl #13
d05a08e8:	fba5 e704 	umull	lr, r7, r5, r4
d05a08ec:	b209      	sxth	r1, r1
d05a08ee:	ea86 4656 	eor.w	r6, r6, r6, lsr #17
d05a08f2:	09ff      	lsrs	r7, r7, #7
d05a08f4:	ea86 1646 	eor.w	r6, r6, r6, lsl #5
d05a08f8:	fb00 4717 	mls	r7, r0, r7, r4
d05a08fc:	fba3 8e06 	umull	r8, lr, r3, r6
d05a0900:	ea86 3446 	eor.w	r4, r6, r6, lsl #13
d05a0904:	b23f      	sxth	r7, r7
d05a0906:	ea84 4454 	eor.w	r4, r4, r4, lsr #17
d05a090a:	ea4f 2e1e 	mov.w	lr, lr, lsr #8
d05a090e:	ea84 1444 	eor.w	r4, r4, r4, lsl #5
d05a0912:	fb0c 6e1e 	mls	lr, ip, lr, r6
d05a0916:	ea84 3944 	eor.w	r9, r4, r4, lsl #13
d05a091a:	fba5 6804 	umull	r6, r8, r5, r4
d05a091e:	fa0f f68e 	sxth.w	r6, lr
d05a0922:	ea4f 18d8 	mov.w	r8, r8, lsr #7
d05a0926:	9602      	str	r6, [sp, #8]
d05a0928:	ea89 4659 	eor.w	r6, r9, r9, lsr #17
d05a092c:	fb00 4818 	mls	r8, r0, r8, r4
d05a0930:	ea86 1e46 	eor.w	lr, r6, r6, lsl #5
d05a0934:	ea8e 344e 	eor.w	r4, lr, lr, lsl #13
d05a0938:	fba3 360e 	umull	r3, r6, r3, lr
d05a093c:	fa0f f388 	sxth.w	r3, r8
d05a0940:	ea84 4454 	eor.w	r4, r4, r4, lsr #17
d05a0944:	0a36      	lsrs	r6, r6, #8
d05a0946:	42bb      	cmp	r3, r7
d05a0948:	ea84 1444 	eor.w	r4, r4, r4, lsl #5
d05a094c:	fb0c e616 	mls	r6, ip, r6, lr
d05a0950:	fba5 c504 	umull	ip, r5, r5, r4
d05a0954:	b236      	sxth	r6, r6
d05a0956:	6014      	str	r4, [r2, #0]
d05a0958:	ea4f 15d5 	mov.w	r5, r5, lsr #7
d05a095c:	fb00 4515 	mls	r5, r0, r5, r4
d05a0960:	b22d      	sxth	r5, r5
d05a0962:	f2c0 8094 	blt.w	d05a0a8e <draw_random_shape+0x50e>
d05a0966:	42bd      	cmp	r5, r7
d05a0968:	f280 809a 	bge.w	d05a0aa0 <draw_random_shape+0x520>
d05a096c:	42bb      	cmp	r3, r7
d05a096e:	dd0a      	ble.n	d05a0986 <draw_random_shape+0x406>
d05a0970:	4618      	mov	r0, r3
d05a0972:	9a02      	ldr	r2, [sp, #8]
d05a0974:	463b      	mov	r3, r7
d05a0976:	9102      	str	r1, [sp, #8]
d05a0978:	4607      	mov	r7, r0
d05a097a:	4611      	mov	r1, r2
d05a097c:	42bd      	cmp	r5, r7
d05a097e:	f43f ae9a 	beq.w	d05a06b6 <draw_random_shape+0x136>
d05a0982:	f73f ae98 	bgt.w	d05a06b6 <draw_random_shape+0x136>
d05a0986:	1afa      	subs	r2, r7, r3
d05a0988:	fa1f f987 	uxth.w	r9, r7
d05a098c:	b2ac      	uxth	r4, r5
d05a098e:	fab2 f282 	clz	r2, r2
d05a0992:	fa1f f883 	uxth.w	r8, r3
d05a0996:	0952      	lsrs	r2, r2, #5
d05a0998:	9201      	str	r2, [sp, #4]
d05a099a:	eba9 0204 	sub.w	r2, r9, r4
d05a099e:	eba9 0908 	sub.w	r9, r9, r8
d05a09a2:	eba8 0804 	sub.w	r8, r8, r4
d05a09a6:	b212      	sxth	r2, r2
d05a09a8:	fa0f f089 	sxth.w	r0, r9
d05a09ac:	9203      	str	r2, [sp, #12]
d05a09ae:	9005      	str	r0, [sp, #20]
d05a09b0:	fa0f f088 	sxth.w	r0, r8
d05a09b4:	9004      	str	r0, [sp, #16]
d05a09b6:	2a00      	cmp	r2, #0
d05a09b8:	f000 8158 	beq.w	d05a0c6c <draw_random_shape+0x6ec>
d05a09bc:	2800      	cmp	r0, #0
d05a09be:	f000 81be 	beq.w	d05a0d3e <draw_random_shape+0x7be>
d05a09c2:	9805      	ldr	r0, [sp, #20]
d05a09c4:	2800      	cmp	r0, #0
d05a09c6:	f000 80f0 	beq.w	d05a0baa <draw_random_shape+0x62a>
d05a09ca:	9802      	ldr	r0, [sp, #8]
d05a09cc:	eb05 0945 	add.w	r9, r5, r5, lsl #1
d05a09d0:	1aed      	subs	r5, r5, r3
d05a09d2:	f04f 0a00 	mov.w	sl, #0
d05a09d6:	1a0a      	subs	r2, r1, r0
d05a09d8:	eb09 1909 	add.w	r9, r9, r9, lsl #4
d05a09dc:	1b89      	subs	r1, r1, r6
d05a09de:	46d0      	mov	r8, sl
d05a09e0:	fb02 f505 	mul.w	r5, r2, r5
d05a09e4:	ea4f 09c9 	mov.w	r9, r9, lsl #3
d05a09e8:	9207      	str	r2, [sp, #28]
d05a09ea:	1b82      	subs	r2, r0, r6
d05a09ec:	9106      	str	r1, [sp, #24]
d05a09ee:	b2b6      	uxth	r6, r6
d05a09f0:	9208      	str	r2, [sp, #32]
d05a09f2:	463a      	mov	r2, r7
d05a09f4:	f8cd b028 	str.w	fp, [sp, #40]	; 0x28
d05a09f8:	461f      	mov	r7, r3
d05a09fa:	4613      	mov	r3, r2
d05a09fc:	e02e      	b.n	d05a0a5c <draw_random_shape+0x4dc>
d05a09fe:	4291      	cmp	r1, r2
d05a0a00:	db02      	blt.n	d05a0a08 <draw_random_shape+0x488>
d05a0a02:	468c      	mov	ip, r1
d05a0a04:	4611      	mov	r1, r2
d05a0a06:	4662      	mov	r2, ip
d05a0a08:	3201      	adds	r2, #1
d05a0a0a:	3401      	adds	r4, #1
d05a0a0c:	b212      	sxth	r2, r2
d05a0a0e:	fa0f fb84 	sxth.w	fp, r4
d05a0a12:	2a00      	cmp	r2, #0
d05a0a14:	dd16      	ble.n	d05a0a44 <draw_random_shape+0x4c4>
d05a0a16:	f5b1 7fcc 	cmp.w	r1, #408	; 0x198
d05a0a1a:	da13      	bge.n	d05a0a44 <draw_random_shape+0x4c4>
d05a0a1c:	f5b2 7fcc 	cmp.w	r2, #408	; 0x198
d05a0a20:	ea21 71e1 	bic.w	r1, r1, r1, asr #31
d05a0a24:	bfa8      	it	ge
d05a0a26:	f44f 72cc 	movge.w	r2, #408	; 0x198
d05a0a2a:	4558      	cmp	r0, fp
d05a0a2c:	b209      	sxth	r1, r1
d05a0a2e:	da09      	bge.n	d05a0a44 <draw_random_shape+0x4c4>
d05a0a30:	eb01 0009 	add.w	r0, r1, r9
d05a0a34:	9309      	str	r3, [sp, #36]	; 0x24
d05a0a36:	4b67      	ldr	r3, [pc, #412]	; (d05a0bd4 <draw_random_shape+0x654>)
d05a0a38:	1a52      	subs	r2, r2, r1
d05a0a3a:	990a      	ldr	r1, [sp, #40]	; 0x28
d05a0a3c:	4418      	add	r0, r3
d05a0a3e:	f000 ff47 	bl	d05a18d0 <memset>
d05a0a42:	9b09      	ldr	r3, [sp, #36]	; 0x24
d05a0a44:	9a06      	ldr	r2, [sp, #24]
d05a0a46:	459b      	cmp	fp, r3
d05a0a48:	b2a4      	uxth	r4, r4
d05a0a4a:	f509 79cc 	add.w	r9, r9, #408	; 0x198
d05a0a4e:	4490      	add	r8, r2
d05a0a50:	9a08      	ldr	r2, [sp, #32]
d05a0a52:	4492      	add	sl, r2
d05a0a54:	9a07      	ldr	r2, [sp, #28]
d05a0a56:	4415      	add	r5, r2
d05a0a58:	f73f ae2d 	bgt.w	d05a06b6 <draw_random_shape+0x136>
d05a0a5c:	9a03      	ldr	r2, [sp, #12]
d05a0a5e:	b220      	sxth	r0, r4
d05a0a60:	fb98 f2f2 	sdiv	r2, r8, r2
d05a0a64:	42b8      	cmp	r0, r7
d05a0a66:	4432      	add	r2, r6
d05a0a68:	b212      	sxth	r2, r2
d05a0a6a:	f2c0 80f3 	blt.w	d05a0c54 <draw_random_shape+0x6d4>
d05a0a6e:	9901      	ldr	r1, [sp, #4]
d05a0a70:	2900      	cmp	r1, #0
d05a0a72:	f040 80ef 	bne.w	d05a0c54 <draw_random_shape+0x6d4>
d05a0a76:	9905      	ldr	r1, [sp, #20]
d05a0a78:	fb95 fcf1 	sdiv	ip, r5, r1
d05a0a7c:	9902      	ldr	r1, [sp, #8]
d05a0a7e:	4461      	add	r1, ip
d05a0a80:	b209      	sxth	r1, r1
d05a0a82:	2cbf      	cmp	r4, #191	; 0xbf
d05a0a84:	d9bb      	bls.n	d05a09fe <draw_random_shape+0x47e>
d05a0a86:	3401      	adds	r4, #1
d05a0a88:	fa0f fb84 	sxth.w	fp, r4
d05a0a8c:	e7da      	b.n	d05a0a44 <draw_random_shape+0x4c4>
d05a0a8e:	429d      	cmp	r5, r3
d05a0a90:	f6ff af74 	blt.w	d05a097c <draw_random_shape+0x3fc>
d05a0a94:	463a      	mov	r2, r7
d05a0a96:	4608      	mov	r0, r1
d05a0a98:	461f      	mov	r7, r3
d05a0a9a:	9902      	ldr	r1, [sp, #8]
d05a0a9c:	4613      	mov	r3, r2
d05a0a9e:	9002      	str	r0, [sp, #8]
d05a0aa0:	429d      	cmp	r5, r3
d05a0aa2:	db79      	blt.n	d05a0b98 <draw_random_shape+0x618>
d05a0aa4:	42bd      	cmp	r5, r7
d05a0aa6:	f43f ae06 	beq.w	d05a06b6 <draw_random_shape+0x136>
d05a0aaa:	4638      	mov	r0, r7
d05a0aac:	460a      	mov	r2, r1
d05a0aae:	462f      	mov	r7, r5
d05a0ab0:	4631      	mov	r1, r6
d05a0ab2:	4605      	mov	r5, r0
d05a0ab4:	4616      	mov	r6, r2
d05a0ab6:	e766      	b.n	d05a0986 <draw_random_shape+0x406>
d05a0ab8:	ea81 4151 	eor.w	r1, r1, r1, lsr #17
d05a0abc:	4f43      	ldr	r7, [pc, #268]	; (d05a0bcc <draw_random_shape+0x64c>)
d05a0abe:	4e44      	ldr	r6, [pc, #272]	; (d05a0bd0 <draw_random_shape+0x650>)
d05a0ac0:	f44f 79cc 	mov.w	r9, #408	; 0x198
d05a0ac4:	ea81 1141 	eor.w	r1, r1, r1, lsl #5
d05a0ac8:	4b43      	ldr	r3, [pc, #268]	; (d05a0bd8 <draw_random_shape+0x658>)
d05a0aca:	25b8      	movs	r5, #184	; 0xb8
d05a0acc:	f64f 7cfc 	movw	ip, #65532	; 0xfffc
d05a0ad0:	ea81 3041 	eor.w	r0, r1, r1, lsl #13
d05a0ad4:	fba7 4701 	umull	r4, r7, r7, r1
d05a0ad8:	ea80 4050 	eor.w	r0, r0, r0, lsr #17
d05a0adc:	0a3f      	lsrs	r7, r7, #8
d05a0ade:	ea80 1040 	eor.w	r0, r0, r0, lsl #5
d05a0ae2:	fb09 1717 	mls	r7, r9, r7, r1
d05a0ae6:	ea80 3440 	eor.w	r4, r0, r0, lsl #13
d05a0aea:	fba6 6100 	umull	r6, r1, r6, r0
d05a0aee:	ea84 4454 	eor.w	r4, r4, r4, lsr #17
d05a0af2:	09c9      	lsrs	r1, r1, #7
d05a0af4:	ea84 1444 	eor.w	r4, r4, r4, lsl #5
d05a0af8:	fb05 0111 	mls	r1, r5, r1, r0
d05a0afc:	fba3 0304 	umull	r0, r3, r3, r4
d05a0b00:	6014      	str	r4, [r2, #0]
d05a0b02:	091b      	lsrs	r3, r3, #4
d05a0b04:	ebc3 02c3 	rsb	r2, r3, r3, lsl #3
d05a0b08:	eb03 0382 	add.w	r3, r3, r2, lsl #2
d05a0b0c:	1ae4      	subs	r4, r4, r3
d05a0b0e:	b2a4      	uxth	r4, r4
d05a0b10:	ebac 0c04 	sub.w	ip, ip, r4
d05a0b14:	3404      	adds	r4, #4
d05a0b16:	fa1f f38c 	uxth.w	r3, ip
d05a0b1a:	fa0f fc8c 	sxth.w	ip, ip
d05a0b1e:	4419      	add	r1, r3
d05a0b20:	fa13 f787 	uxtah	r7, r3, r7
d05a0b24:	fb14 f304 	smulbb	r3, r4, r4
d05a0b28:	4662      	mov	r2, ip
d05a0b2a:	b289      	uxth	r1, r1
d05a0b2c:	b2bf      	uxth	r7, r7
d05a0b2e:	fa0f fa83 	sxth.w	sl, r3
d05a0b32:	b224      	sxth	r4, r4
d05a0b34:	fb02 f502 	mul.w	r5, r2, r2
d05a0b38:	fa0f fe81 	sxth.w	lr, r1
d05a0b3c:	b292      	uxth	r2, r2
d05a0b3e:	4638      	mov	r0, r7
d05a0b40:	b2ad      	uxth	r5, r5
d05a0b42:	4663      	mov	r3, ip
d05a0b44:	fb03 5603 	mla	r6, r3, r3, r5
d05a0b48:	b29b      	uxth	r3, r3
d05a0b4a:	f100 0801 	add.w	r8, r0, #1
d05a0b4e:	b236      	sxth	r6, r6
d05a0b50:	3301      	adds	r3, #1
d05a0b52:	45b2      	cmp	sl, r6
d05a0b54:	b21b      	sxth	r3, r3
d05a0b56:	db0a      	blt.n	d05a0b6e <draw_random_shape+0x5ee>
d05a0b58:	f240 1697 	movw	r6, #407	; 0x197
d05a0b5c:	42b0      	cmp	r0, r6
d05a0b5e:	fb1e 0009 	smlabb	r0, lr, r9, r0
d05a0b62:	d804      	bhi.n	d05a0b6e <draw_random_shape+0x5ee>
d05a0b64:	29bf      	cmp	r1, #191	; 0xbf
d05a0b66:	d802      	bhi.n	d05a0b6e <draw_random_shape+0x5ee>
d05a0b68:	4e1a      	ldr	r6, [pc, #104]	; (d05a0bd4 <draw_random_shape+0x654>)
d05a0b6a:	f806 b000 	strb.w	fp, [r6, r0]
d05a0b6e:	429c      	cmp	r4, r3
d05a0b70:	fa1f f088 	uxth.w	r0, r8
d05a0b74:	dae6      	bge.n	d05a0b44 <draw_random_shape+0x5c4>
d05a0b76:	3201      	adds	r2, #1
d05a0b78:	3101      	adds	r1, #1
d05a0b7a:	b212      	sxth	r2, r2
d05a0b7c:	b289      	uxth	r1, r1
d05a0b7e:	4294      	cmp	r4, r2
d05a0b80:	dad8      	bge.n	d05a0b34 <draw_random_shape+0x5b4>
d05a0b82:	b00d      	add	sp, #52	; 0x34
d05a0b84:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d05a0b88:	1a52      	subs	r2, r2, r1
d05a0b8a:	f04f 31ff 	mov.w	r1, #4294967295	; 0xffffffff
d05a0b8e:	e5f8      	b.n	d05a0782 <draw_random_shape+0x202>
d05a0b90:	1a20      	subs	r0, r4, r0
d05a0b92:	f04f 34ff 	mov.w	r4, #4294967295	; 0xffffffff
d05a0b96:	e5e9      	b.n	d05a076c <draw_random_shape+0x1ec>
d05a0b98:	4618      	mov	r0, r3
d05a0b9a:	9a02      	ldr	r2, [sp, #8]
d05a0b9c:	462b      	mov	r3, r5
d05a0b9e:	9602      	str	r6, [sp, #8]
d05a0ba0:	463d      	mov	r5, r7
d05a0ba2:	460e      	mov	r6, r1
d05a0ba4:	4607      	mov	r7, r0
d05a0ba6:	4611      	mov	r1, r2
d05a0ba8:	e6e8      	b.n	d05a097c <draw_random_shape+0x3fc>
d05a0baa:	1b8a      	subs	r2, r1, r6
d05a0bac:	eb05 0545 	add.w	r5, r5, r5, lsl #1
d05a0bb0:	9902      	ldr	r1, [sp, #8]
d05a0bb2:	4681      	mov	r9, r0
d05a0bb4:	eb05 1505 	add.w	r5, r5, r5, lsl #4
d05a0bb8:	f8cd b01c 	str.w	fp, [sp, #28]
d05a0bbc:	1b89      	subs	r1, r1, r6
d05a0bbe:	469b      	mov	fp, r3
d05a0bc0:	4680      	mov	r8, r0
d05a0bc2:	b2b6      	uxth	r6, r6
d05a0bc4:	00ed      	lsls	r5, r5, #3
d05a0bc6:	4613      	mov	r3, r2
d05a0bc8:	9105      	str	r1, [sp, #20]
d05a0bca:	e032      	b.n	d05a0c32 <draw_random_shape+0x6b2>
d05a0bcc:	a0a0a0a1 	.word	0xa0a0a0a1
d05a0bd0:	b21642c9 	.word	0xb21642c9
d05a0bd4:	d05a2a80 	.word	0xd05a2a80
d05a0bd8:	8d3dcb09 	.word	0x8d3dcb09
d05a0bdc:	428a      	cmp	r2, r1
d05a0bde:	da02      	bge.n	d05a0be6 <draw_random_shape+0x666>
d05a0be0:	468c      	mov	ip, r1
d05a0be2:	4611      	mov	r1, r2
d05a0be4:	4662      	mov	r2, ip
d05a0be6:	3201      	adds	r2, #1
d05a0be8:	3401      	adds	r4, #1
d05a0bea:	b212      	sxth	r2, r2
d05a0bec:	fa0f fa84 	sxth.w	sl, r4
d05a0bf0:	2a00      	cmp	r2, #0
d05a0bf2:	dd15      	ble.n	d05a0c20 <draw_random_shape+0x6a0>
d05a0bf4:	f5b1 7fcc 	cmp.w	r1, #408	; 0x198
d05a0bf8:	da12      	bge.n	d05a0c20 <draw_random_shape+0x6a0>
d05a0bfa:	f5b2 7fcc 	cmp.w	r2, #408	; 0x198
d05a0bfe:	ea21 71e1 	bic.w	r1, r1, r1, asr #31
d05a0c02:	bfa8      	it	ge
d05a0c04:	f44f 72cc 	movge.w	r2, #408	; 0x198
d05a0c08:	4582      	cmp	sl, r0
d05a0c0a:	b209      	sxth	r1, r1
d05a0c0c:	dd08      	ble.n	d05a0c20 <draw_random_shape+0x6a0>
d05a0c0e:	1948      	adds	r0, r1, r5
d05a0c10:	9306      	str	r3, [sp, #24]
d05a0c12:	4bb0      	ldr	r3, [pc, #704]	; (d05a0ed4 <draw_random_shape+0x954>)
d05a0c14:	1a52      	subs	r2, r2, r1
d05a0c16:	9907      	ldr	r1, [sp, #28]
d05a0c18:	4418      	add	r0, r3
d05a0c1a:	f000 fe59 	bl	d05a18d0 <memset>
d05a0c1e:	9b06      	ldr	r3, [sp, #24]
d05a0c20:	9a05      	ldr	r2, [sp, #20]
d05a0c22:	45ba      	cmp	sl, r7
d05a0c24:	4498      	add	r8, r3
d05a0c26:	b2a4      	uxth	r4, r4
d05a0c28:	f505 75cc 	add.w	r5, r5, #408	; 0x198
d05a0c2c:	4491      	add	r9, r2
d05a0c2e:	f73f ad42 	bgt.w	d05a06b6 <draw_random_shape+0x136>
d05a0c32:	9a03      	ldr	r2, [sp, #12]
d05a0c34:	b220      	sxth	r0, r4
d05a0c36:	fb98 f1f2 	sdiv	r1, r8, r2
d05a0c3a:	4558      	cmp	r0, fp
d05a0c3c:	4431      	add	r1, r6
d05a0c3e:	b209      	sxth	r1, r1
d05a0c40:	db0e      	blt.n	d05a0c60 <draw_random_shape+0x6e0>
d05a0c42:	9a01      	ldr	r2, [sp, #4]
d05a0c44:	b962      	cbnz	r2, d05a0c60 <draw_random_shape+0x6e0>
d05a0c46:	9a02      	ldr	r2, [sp, #8]
d05a0c48:	2cbf      	cmp	r4, #191	; 0xbf
d05a0c4a:	d9c7      	bls.n	d05a0bdc <draw_random_shape+0x65c>
d05a0c4c:	3401      	adds	r4, #1
d05a0c4e:	fa0f fa84 	sxth.w	sl, r4
d05a0c52:	e7e5      	b.n	d05a0c20 <draw_random_shape+0x6a0>
d05a0c54:	9904      	ldr	r1, [sp, #16]
d05a0c56:	fb9a f1f1 	sdiv	r1, sl, r1
d05a0c5a:	4431      	add	r1, r6
d05a0c5c:	b209      	sxth	r1, r1
d05a0c5e:	e710      	b.n	d05a0a82 <draw_random_shape+0x502>
d05a0c60:	9a04      	ldr	r2, [sp, #16]
d05a0c62:	fb99 f2f2 	sdiv	r2, r9, r2
d05a0c66:	4432      	add	r2, r6
d05a0c68:	b212      	sxth	r2, r2
d05a0c6a:	e7ed      	b.n	d05a0c48 <draw_random_shape+0x6c8>
d05a0c6c:	9a05      	ldr	r2, [sp, #20]
d05a0c6e:	2a00      	cmp	r2, #0
d05a0c70:	f000 80c4 	beq.w	d05a0dfc <draw_random_shape+0x87c>
d05a0c74:	2800      	cmp	r0, #0
d05a0c76:	f000 8119 	beq.w	d05a0eac <draw_random_shape+0x92c>
d05a0c7a:	9a02      	ldr	r2, [sp, #8]
d05a0c7c:	eb05 0845 	add.w	r8, r5, r5, lsl #1
d05a0c80:	1aed      	subs	r5, r5, r3
d05a0c82:	f8dd 900c 	ldr.w	r9, [sp, #12]
d05a0c86:	1a88      	subs	r0, r1, r2
d05a0c88:	1c72      	adds	r2, r6, #1
d05a0c8a:	eb08 1808 	add.w	r8, r8, r8, lsl #4
d05a0c8e:	b211      	sxth	r1, r2
d05a0c90:	9a02      	ldr	r2, [sp, #8]
d05a0c92:	fb00 f505 	mul.w	r5, r0, r5
d05a0c96:	ea4f 08c8 	mov.w	r8, r8, lsl #3
d05a0c9a:	1b92      	subs	r2, r2, r6
d05a0c9c:	9108      	str	r1, [sp, #32]
d05a0c9e:	4659      	mov	r1, fp
d05a0ca0:	469b      	mov	fp, r3
d05a0ca2:	9203      	str	r2, [sp, #12]
d05a0ca4:	463b      	mov	r3, r7
d05a0ca6:	4607      	mov	r7, r0
d05a0ca8:	e026      	b.n	d05a0cf8 <draw_random_shape+0x778>
d05a0caa:	42b0      	cmp	r0, r6
d05a0cac:	da3c      	bge.n	d05a0d28 <draw_random_shape+0x7a8>
d05a0cae:	3401      	adds	r4, #1
d05a0cb0:	f8dd e020 	ldr.w	lr, [sp, #32]
d05a0cb4:	fa0f fa84 	sxth.w	sl, r4
d05a0cb8:	f5be 7fcc 	cmp.w	lr, #408	; 0x198
d05a0cbc:	ea20 72e0 	bic.w	r2, r0, r0, asr #31
d05a0cc0:	bfa8      	it	ge
d05a0cc2:	f44f 7ecc 	movge.w	lr, #408	; 0x198
d05a0cc6:	45d4      	cmp	ip, sl
d05a0cc8:	b212      	sxth	r2, r2
d05a0cca:	da0c      	bge.n	d05a0ce6 <draw_random_shape+0x766>
d05a0ccc:	eb02 0c08 	add.w	ip, r2, r8
d05a0cd0:	9307      	str	r3, [sp, #28]
d05a0cd2:	4b80      	ldr	r3, [pc, #512]	; (d05a0ed4 <draw_random_shape+0x954>)
d05a0cd4:	ebae 0202 	sub.w	r2, lr, r2
d05a0cd8:	9106      	str	r1, [sp, #24]
d05a0cda:	eb03 000c 	add.w	r0, r3, ip
d05a0cde:	f000 fdf7 	bl	d05a18d0 <memset>
d05a0ce2:	9b07      	ldr	r3, [sp, #28]
d05a0ce4:	9906      	ldr	r1, [sp, #24]
d05a0ce6:	9a03      	ldr	r2, [sp, #12]
d05a0ce8:	459a      	cmp	sl, r3
d05a0cea:	b2a4      	uxth	r4, r4
d05a0cec:	f508 78cc 	add.w	r8, r8, #408	; 0x198
d05a0cf0:	4491      	add	r9, r2
d05a0cf2:	443d      	add	r5, r7
d05a0cf4:	f73f acdf 	bgt.w	d05a06b6 <draw_random_shape+0x136>
d05a0cf8:	fa0f fc84 	sxth.w	ip, r4
d05a0cfc:	45dc      	cmp	ip, fp
d05a0cfe:	db0d      	blt.n	d05a0d1c <draw_random_shape+0x79c>
d05a0d00:	9a01      	ldr	r2, [sp, #4]
d05a0d02:	b95a      	cbnz	r2, d05a0d1c <draw_random_shape+0x79c>
d05a0d04:	9a05      	ldr	r2, [sp, #20]
d05a0d06:	fb95 f0f2 	sdiv	r0, r5, r2
d05a0d0a:	9a02      	ldr	r2, [sp, #8]
d05a0d0c:	4410      	add	r0, r2
d05a0d0e:	b200      	sxth	r0, r0
d05a0d10:	2cbf      	cmp	r4, #191	; 0xbf
d05a0d12:	d9ca      	bls.n	d05a0caa <draw_random_shape+0x72a>
d05a0d14:	3401      	adds	r4, #1
d05a0d16:	fa0f fa84 	sxth.w	sl, r4
d05a0d1a:	e7e4      	b.n	d05a0ce6 <draw_random_shape+0x766>
d05a0d1c:	9a04      	ldr	r2, [sp, #16]
d05a0d1e:	fb99 f0f2 	sdiv	r0, r9, r2
d05a0d22:	4430      	add	r0, r6
d05a0d24:	b200      	sxth	r0, r0
d05a0d26:	e7f3      	b.n	d05a0d10 <draw_random_shape+0x790>
d05a0d28:	3001      	adds	r0, #1
d05a0d2a:	3401      	adds	r4, #1
d05a0d2c:	fa0f fe80 	sxth.w	lr, r0
d05a0d30:	fa0f fa84 	sxth.w	sl, r4
d05a0d34:	f1be 0f00 	cmp.w	lr, #0
d05a0d38:	ddd5      	ble.n	d05a0ce6 <draw_random_shape+0x766>
d05a0d3a:	4630      	mov	r0, r6
d05a0d3c:	e7bc      	b.n	d05a0cb8 <draw_random_shape+0x738>
d05a0d3e:	9a05      	ldr	r2, [sp, #20]
d05a0d40:	2a00      	cmp	r2, #0
d05a0d42:	f000 810d 	beq.w	d05a0f60 <draw_random_shape+0x9e0>
d05a0d46:	9a02      	ldr	r2, [sp, #8]
d05a0d48:	eb05 0945 	add.w	r9, r5, r5, lsl #1
d05a0d4c:	1aed      	subs	r5, r5, r3
d05a0d4e:	f8cd b01c 	str.w	fp, [sp, #28]
d05a0d52:	1a8a      	subs	r2, r1, r2
d05a0d54:	eb09 1909 	add.w	r9, r9, r9, lsl #4
d05a0d58:	1b89      	subs	r1, r1, r6
d05a0d5a:	4680      	mov	r8, r0
d05a0d5c:	fb02 f505 	mul.w	r5, r2, r5
d05a0d60:	ea4f 09c9 	mov.w	r9, r9, lsl #3
d05a0d64:	9206      	str	r2, [sp, #24]
d05a0d66:	463a      	mov	r2, r7
d05a0d68:	f8dd b00c 	ldr.w	fp, [sp, #12]
d05a0d6c:	461f      	mov	r7, r3
d05a0d6e:	9104      	str	r1, [sp, #16]
d05a0d70:	4613      	mov	r3, r2
d05a0d72:	e02c      	b.n	d05a0dce <draw_random_shape+0x84e>
d05a0d74:	4291      	cmp	r1, r2
d05a0d76:	dd02      	ble.n	d05a0d7e <draw_random_shape+0x7fe>
d05a0d78:	468c      	mov	ip, r1
d05a0d7a:	4611      	mov	r1, r2
d05a0d7c:	4662      	mov	r2, ip
d05a0d7e:	3201      	adds	r2, #1
d05a0d80:	3401      	adds	r4, #1
d05a0d82:	b212      	sxth	r2, r2
d05a0d84:	fa0f fa84 	sxth.w	sl, r4
d05a0d88:	2a00      	cmp	r2, #0
d05a0d8a:	dd16      	ble.n	d05a0dba <draw_random_shape+0x83a>
d05a0d8c:	f5b1 7fcc 	cmp.w	r1, #408	; 0x198
d05a0d90:	da13      	bge.n	d05a0dba <draw_random_shape+0x83a>
d05a0d92:	f5b2 7fcc 	cmp.w	r2, #408	; 0x198
d05a0d96:	ea21 71e1 	bic.w	r1, r1, r1, asr #31
d05a0d9a:	bfa8      	it	ge
d05a0d9c:	f44f 72cc 	movge.w	r2, #408	; 0x198
d05a0da0:	4582      	cmp	sl, r0
d05a0da2:	b209      	sxth	r1, r1
d05a0da4:	dd09      	ble.n	d05a0dba <draw_random_shape+0x83a>
d05a0da6:	eb01 0009 	add.w	r0, r1, r9
d05a0daa:	9303      	str	r3, [sp, #12]
d05a0dac:	4b49      	ldr	r3, [pc, #292]	; (d05a0ed4 <draw_random_shape+0x954>)
d05a0dae:	1a52      	subs	r2, r2, r1
d05a0db0:	9907      	ldr	r1, [sp, #28]
d05a0db2:	4418      	add	r0, r3
d05a0db4:	f000 fd8c 	bl	d05a18d0 <memset>
d05a0db8:	9b03      	ldr	r3, [sp, #12]
d05a0dba:	9a04      	ldr	r2, [sp, #16]
d05a0dbc:	459a      	cmp	sl, r3
d05a0dbe:	b2a4      	uxth	r4, r4
d05a0dc0:	f509 79cc 	add.w	r9, r9, #408	; 0x198
d05a0dc4:	4490      	add	r8, r2
d05a0dc6:	9a06      	ldr	r2, [sp, #24]
d05a0dc8:	4415      	add	r5, r2
d05a0dca:	f73f ac74 	bgt.w	d05a06b6 <draw_random_shape+0x136>
d05a0dce:	b220      	sxth	r0, r4
d05a0dd0:	fb98 f1fb 	sdiv	r1, r8, fp
d05a0dd4:	42b8      	cmp	r0, r7
d05a0dd6:	4431      	add	r1, r6
d05a0dd8:	b209      	sxth	r1, r1
d05a0dda:	db0d      	blt.n	d05a0df8 <draw_random_shape+0x878>
d05a0ddc:	9a01      	ldr	r2, [sp, #4]
d05a0dde:	b95a      	cbnz	r2, d05a0df8 <draw_random_shape+0x878>
d05a0de0:	9a05      	ldr	r2, [sp, #20]
d05a0de2:	fb95 fcf2 	sdiv	ip, r5, r2
d05a0de6:	9a02      	ldr	r2, [sp, #8]
d05a0de8:	4462      	add	r2, ip
d05a0dea:	b212      	sxth	r2, r2
d05a0dec:	2cbf      	cmp	r4, #191	; 0xbf
d05a0dee:	d9c1      	bls.n	d05a0d74 <draw_random_shape+0x7f4>
d05a0df0:	3401      	adds	r4, #1
d05a0df2:	fa0f fa84 	sxth.w	sl, r4
d05a0df6:	e7e0      	b.n	d05a0dba <draw_random_shape+0x83a>
d05a0df8:	4632      	mov	r2, r6
d05a0dfa:	e7f7      	b.n	d05a0dec <draw_random_shape+0x86c>
d05a0dfc:	eb05 0545 	add.w	r5, r5, r5, lsl #1
d05a0e00:	2800      	cmp	r0, #0
d05a0e02:	f000 80ff 	beq.w	d05a1004 <draw_random_shape+0xa84>
d05a0e06:	9902      	ldr	r1, [sp, #8]
d05a0e08:	1c72      	adds	r2, r6, #1
d05a0e0a:	eb05 1505 	add.w	r5, r5, r5, lsl #4
d05a0e0e:	f8dd 9014 	ldr.w	r9, [sp, #20]
d05a0e12:	eba1 0a06 	sub.w	sl, r1, r6
d05a0e16:	b212      	sxth	r2, r2
d05a0e18:	4659      	mov	r1, fp
d05a0e1a:	00ed      	lsls	r5, r5, #3
d05a0e1c:	46d3      	mov	fp, sl
d05a0e1e:	9205      	str	r2, [sp, #20]
d05a0e20:	46ba      	mov	sl, r7
d05a0e22:	461f      	mov	r7, r3
d05a0e24:	9b01      	ldr	r3, [sp, #4]
d05a0e26:	e024      	b.n	d05a0e72 <draw_random_shape+0x8f2>
d05a0e28:	42b0      	cmp	r0, r6
d05a0e2a:	da34      	bge.n	d05a0e96 <draw_random_shape+0x916>
d05a0e2c:	3401      	adds	r4, #1
d05a0e2e:	f8dd e014 	ldr.w	lr, [sp, #20]
d05a0e32:	fa0f f884 	sxth.w	r8, r4
d05a0e36:	f5be 7fcc 	cmp.w	lr, #408	; 0x198
d05a0e3a:	ea20 72e0 	bic.w	r2, r0, r0, asr #31
d05a0e3e:	bfa8      	it	ge
d05a0e40:	f44f 7ecc 	movge.w	lr, #408	; 0x198
d05a0e44:	45c4      	cmp	ip, r8
d05a0e46:	b212      	sxth	r2, r2
d05a0e48:	da0c      	bge.n	d05a0e64 <draw_random_shape+0x8e4>
d05a0e4a:	eb02 0c05 	add.w	ip, r2, r5
d05a0e4e:	9303      	str	r3, [sp, #12]
d05a0e50:	4b20      	ldr	r3, [pc, #128]	; (d05a0ed4 <draw_random_shape+0x954>)
d05a0e52:	ebae 0202 	sub.w	r2, lr, r2
d05a0e56:	9101      	str	r1, [sp, #4]
d05a0e58:	eb03 000c 	add.w	r0, r3, ip
d05a0e5c:	f000 fd38 	bl	d05a18d0 <memset>
d05a0e60:	9901      	ldr	r1, [sp, #4]
d05a0e62:	9b03      	ldr	r3, [sp, #12]
d05a0e64:	45d0      	cmp	r8, sl
d05a0e66:	b2a4      	uxth	r4, r4
d05a0e68:	f505 75cc 	add.w	r5, r5, #408	; 0x198
d05a0e6c:	44d9      	add	r9, fp
d05a0e6e:	f73f ac22 	bgt.w	d05a06b6 <draw_random_shape+0x136>
d05a0e72:	fa0f fc84 	sxth.w	ip, r4
d05a0e76:	45bc      	cmp	ip, r7
d05a0e78:	db07      	blt.n	d05a0e8a <draw_random_shape+0x90a>
d05a0e7a:	b933      	cbnz	r3, d05a0e8a <draw_random_shape+0x90a>
d05a0e7c:	9802      	ldr	r0, [sp, #8]
d05a0e7e:	2cbf      	cmp	r4, #191	; 0xbf
d05a0e80:	d9d2      	bls.n	d05a0e28 <draw_random_shape+0x8a8>
d05a0e82:	3401      	adds	r4, #1
d05a0e84:	fa0f f884 	sxth.w	r8, r4
d05a0e88:	e7ec      	b.n	d05a0e64 <draw_random_shape+0x8e4>
d05a0e8a:	9a04      	ldr	r2, [sp, #16]
d05a0e8c:	fb99 f0f2 	sdiv	r0, r9, r2
d05a0e90:	4430      	add	r0, r6
d05a0e92:	b200      	sxth	r0, r0
d05a0e94:	e7f3      	b.n	d05a0e7e <draw_random_shape+0x8fe>
d05a0e96:	3001      	adds	r0, #1
d05a0e98:	3401      	adds	r4, #1
d05a0e9a:	fa0f fe80 	sxth.w	lr, r0
d05a0e9e:	fa0f f884 	sxth.w	r8, r4
d05a0ea2:	f1be 0f00 	cmp.w	lr, #0
d05a0ea6:	dddd      	ble.n	d05a0e64 <draw_random_shape+0x8e4>
d05a0ea8:	4630      	mov	r0, r6
d05a0eaa:	e7c4      	b.n	d05a0e36 <draw_random_shape+0x8b6>
d05a0eac:	9a02      	ldr	r2, [sp, #8]
d05a0eae:	eb05 0945 	add.w	r9, r5, r5, lsl #1
d05a0eb2:	1aed      	subs	r5, r5, r3
d05a0eb4:	eba1 0802 	sub.w	r8, r1, r2
d05a0eb8:	1c72      	adds	r2, r6, #1
d05a0eba:	eb09 1909 	add.w	r9, r9, r9, lsl #4
d05a0ebe:	4659      	mov	r1, fp
d05a0ec0:	b212      	sxth	r2, r2
d05a0ec2:	46b3      	mov	fp, r6
d05a0ec4:	fb08 f505 	mul.w	r5, r8, r5
d05a0ec8:	461e      	mov	r6, r3
d05a0eca:	ea4f 09c9 	mov.w	r9, r9, lsl #3
d05a0ece:	9b01      	ldr	r3, [sp, #4]
d05a0ed0:	9204      	str	r2, [sp, #16]
d05a0ed2:	e02f      	b.n	d05a0f34 <draw_random_shape+0x9b4>
d05a0ed4:	d05a2a80 	.word	0xd05a2a80
d05a0ed8:	bb83      	cbnz	r3, d05a0f3c <draw_random_shape+0x9bc>
d05a0eda:	9a05      	ldr	r2, [sp, #20]
d05a0edc:	2cbf      	cmp	r4, #191	; 0xbf
d05a0ede:	fb95 f0f2 	sdiv	r0, r5, r2
d05a0ee2:	9a02      	ldr	r2, [sp, #8]
d05a0ee4:	4410      	add	r0, r2
d05a0ee6:	b200      	sxth	r0, r0
d05a0ee8:	d836      	bhi.n	d05a0f58 <draw_random_shape+0x9d8>
d05a0eea:	4558      	cmp	r0, fp
d05a0eec:	da29      	bge.n	d05a0f42 <draw_random_shape+0x9c2>
d05a0eee:	3401      	adds	r4, #1
d05a0ef0:	f8dd e010 	ldr.w	lr, [sp, #16]
d05a0ef4:	fa0f fa84 	sxth.w	sl, r4
d05a0ef8:	f5be 7fcc 	cmp.w	lr, #408	; 0x198
d05a0efc:	ea20 72e0 	bic.w	r2, r0, r0, asr #31
d05a0f00:	bfa8      	it	ge
d05a0f02:	f44f 7ecc 	movge.w	lr, #408	; 0x198
d05a0f06:	45d4      	cmp	ip, sl
d05a0f08:	b212      	sxth	r2, r2
d05a0f0a:	da0c      	bge.n	d05a0f26 <draw_random_shape+0x9a6>
d05a0f0c:	eb02 0c09 	add.w	ip, r2, r9
d05a0f10:	9303      	str	r3, [sp, #12]
d05a0f12:	4b58      	ldr	r3, [pc, #352]	; (d05a1074 <draw_random_shape+0xaf4>)
d05a0f14:	ebae 0202 	sub.w	r2, lr, r2
d05a0f18:	9101      	str	r1, [sp, #4]
d05a0f1a:	eb03 000c 	add.w	r0, r3, ip
d05a0f1e:	f000 fcd7 	bl	d05a18d0 <memset>
d05a0f22:	9901      	ldr	r1, [sp, #4]
d05a0f24:	9b03      	ldr	r3, [sp, #12]
d05a0f26:	45ba      	cmp	sl, r7
d05a0f28:	b2a4      	uxth	r4, r4
d05a0f2a:	f509 79cc 	add.w	r9, r9, #408	; 0x198
d05a0f2e:	4445      	add	r5, r8
d05a0f30:	f73f abc1 	bgt.w	d05a06b6 <draw_random_shape+0x136>
d05a0f34:	fa0f fc84 	sxth.w	ip, r4
d05a0f38:	45b4      	cmp	ip, r6
d05a0f3a:	dacd      	bge.n	d05a0ed8 <draw_random_shape+0x958>
d05a0f3c:	2cbf      	cmp	r4, #191	; 0xbf
d05a0f3e:	d80b      	bhi.n	d05a0f58 <draw_random_shape+0x9d8>
d05a0f40:	4658      	mov	r0, fp
d05a0f42:	3001      	adds	r0, #1
d05a0f44:	3401      	adds	r4, #1
d05a0f46:	fa0f fe80 	sxth.w	lr, r0
d05a0f4a:	fa0f fa84 	sxth.w	sl, r4
d05a0f4e:	f1be 0f00 	cmp.w	lr, #0
d05a0f52:	dde8      	ble.n	d05a0f26 <draw_random_shape+0x9a6>
d05a0f54:	4658      	mov	r0, fp
d05a0f56:	e7cf      	b.n	d05a0ef8 <draw_random_shape+0x978>
d05a0f58:	3401      	adds	r4, #1
d05a0f5a:	fa0f fa84 	sxth.w	sl, r4
d05a0f5e:	e7e2      	b.n	d05a0f26 <draw_random_shape+0x9a6>
d05a0f60:	eba1 0a06 	sub.w	sl, r1, r6
d05a0f64:	eb05 0545 	add.w	r5, r5, r5, lsl #1
d05a0f68:	4691      	mov	r9, r2
d05a0f6a:	f8cd b010 	str.w	fp, [sp, #16]
d05a0f6e:	4652      	mov	r2, sl
d05a0f70:	eb05 1505 	add.w	r5, r5, r5, lsl #4
d05a0f74:	46bb      	mov	fp, r7
d05a0f76:	469a      	mov	sl, r3
d05a0f78:	00ed      	lsls	r5, r5, #3
d05a0f7a:	9f03      	ldr	r7, [sp, #12]
d05a0f7c:	4613      	mov	r3, r2
d05a0f7e:	e023      	b.n	d05a0fc8 <draw_random_shape+0xa48>
d05a0f80:	4586      	cmp	lr, r0
d05a0f82:	db36      	blt.n	d05a0ff2 <draw_random_shape+0xa72>
d05a0f84:	f10e 0201 	add.w	r2, lr, #1
d05a0f88:	3401      	adds	r4, #1
d05a0f8a:	b212      	sxth	r2, r2
d05a0f8c:	fa0f f884 	sxth.w	r8, r4
d05a0f90:	f5b2 7fcc 	cmp.w	r2, #408	; 0x198
d05a0f94:	ea20 70e0 	bic.w	r0, r0, r0, asr #31
d05a0f98:	bfa8      	it	ge
d05a0f9a:	f44f 72cc 	movge.w	r2, #408	; 0x198
d05a0f9e:	45c4      	cmp	ip, r8
d05a0fa0:	b200      	sxth	r0, r0
d05a0fa2:	da0a      	bge.n	d05a0fba <draw_random_shape+0xa3a>
d05a0fa4:	eb00 0c05 	add.w	ip, r0, r5
d05a0fa8:	9303      	str	r3, [sp, #12]
d05a0faa:	4b32      	ldr	r3, [pc, #200]	; (d05a1074 <draw_random_shape+0xaf4>)
d05a0fac:	1a12      	subs	r2, r2, r0
d05a0fae:	9904      	ldr	r1, [sp, #16]
d05a0fb0:	eb03 000c 	add.w	r0, r3, ip
d05a0fb4:	f000 fc8c 	bl	d05a18d0 <memset>
d05a0fb8:	9b03      	ldr	r3, [sp, #12]
d05a0fba:	45d8      	cmp	r8, fp
d05a0fbc:	4499      	add	r9, r3
d05a0fbe:	b2a4      	uxth	r4, r4
d05a0fc0:	f505 75cc 	add.w	r5, r5, #408	; 0x198
d05a0fc4:	f73f ab77 	bgt.w	d05a06b6 <draw_random_shape+0x136>
d05a0fc8:	fa0f fc84 	sxth.w	ip, r4
d05a0fcc:	fb99 f0f7 	sdiv	r0, r9, r7
d05a0fd0:	45d4      	cmp	ip, sl
d05a0fd2:	4430      	add	r0, r6
d05a0fd4:	b282      	uxth	r2, r0
d05a0fd6:	b200      	sxth	r0, r0
d05a0fd8:	db09      	blt.n	d05a0fee <draw_random_shape+0xa6e>
d05a0fda:	9901      	ldr	r1, [sp, #4]
d05a0fdc:	b939      	cbnz	r1, d05a0fee <draw_random_shape+0xa6e>
d05a0fde:	f8dd e008 	ldr.w	lr, [sp, #8]
d05a0fe2:	2cbf      	cmp	r4, #191	; 0xbf
d05a0fe4:	d9cc      	bls.n	d05a0f80 <draw_random_shape+0xa00>
d05a0fe6:	3401      	adds	r4, #1
d05a0fe8:	fa0f f884 	sxth.w	r8, r4
d05a0fec:	e7e5      	b.n	d05a0fba <draw_random_shape+0xa3a>
d05a0fee:	46b6      	mov	lr, r6
d05a0ff0:	e7f7      	b.n	d05a0fe2 <draw_random_shape+0xa62>
d05a0ff2:	3201      	adds	r2, #1
d05a0ff4:	3401      	adds	r4, #1
d05a0ff6:	b212      	sxth	r2, r2
d05a0ff8:	fa0f f884 	sxth.w	r8, r4
d05a0ffc:	2a00      	cmp	r2, #0
d05a0ffe:	dddc      	ble.n	d05a0fba <draw_random_shape+0xa3a>
d05a1000:	4670      	mov	r0, lr
d05a1002:	e7c5      	b.n	d05a0f90 <draw_random_shape+0xa10>
d05a1004:	eb05 1505 	add.w	r5, r5, r5, lsl #4
d05a1008:	469a      	mov	sl, r3
d05a100a:	f8df 8068 	ldr.w	r8, [pc, #104]	; d05a1074 <draw_random_shape+0xaf4>
d05a100e:	00ed      	lsls	r5, r5, #3
d05a1010:	9b02      	ldr	r3, [sp, #8]
d05a1012:	e01c      	b.n	d05a104e <draw_random_shape+0xace>
d05a1014:	2cbf      	cmp	r4, #191	; 0xbf
d05a1016:	d826      	bhi.n	d05a1066 <draw_random_shape+0xae6>
d05a1018:	429e      	cmp	r6, r3
d05a101a:	dd28      	ble.n	d05a106e <draw_random_shape+0xaee>
d05a101c:	4630      	mov	r0, r6
d05a101e:	461a      	mov	r2, r3
d05a1020:	3401      	adds	r4, #1
d05a1022:	3001      	adds	r0, #1
d05a1024:	fa0f f984 	sxth.w	r9, r4
d05a1028:	b200      	sxth	r0, r0
d05a102a:	45cc      	cmp	ip, r9
d05a102c:	da09      	bge.n	d05a1042 <draw_random_shape+0xac2>
d05a102e:	eb02 0c05 	add.w	ip, r2, r5
d05a1032:	4659      	mov	r1, fp
d05a1034:	1a82      	subs	r2, r0, r2
d05a1036:	9302      	str	r3, [sp, #8]
d05a1038:	eb08 000c 	add.w	r0, r8, ip
d05a103c:	f000 fc48 	bl	d05a18d0 <memset>
d05a1040:	9b02      	ldr	r3, [sp, #8]
d05a1042:	45b9      	cmp	r9, r7
d05a1044:	b2a4      	uxth	r4, r4
d05a1046:	f505 75cc 	add.w	r5, r5, #408	; 0x198
d05a104a:	f73f ab34 	bgt.w	d05a06b6 <draw_random_shape+0x136>
d05a104e:	fa0f fc84 	sxth.w	ip, r4
d05a1052:	45d4      	cmp	ip, sl
d05a1054:	db02      	blt.n	d05a105c <draw_random_shape+0xadc>
d05a1056:	9a01      	ldr	r2, [sp, #4]
d05a1058:	2a00      	cmp	r2, #0
d05a105a:	d0db      	beq.n	d05a1014 <draw_random_shape+0xa94>
d05a105c:	2cbf      	cmp	r4, #191	; 0xbf
d05a105e:	d802      	bhi.n	d05a1066 <draw_random_shape+0xae6>
d05a1060:	4630      	mov	r0, r6
d05a1062:	4632      	mov	r2, r6
d05a1064:	e7dc      	b.n	d05a1020 <draw_random_shape+0xaa0>
d05a1066:	3401      	adds	r4, #1
d05a1068:	fa0f f984 	sxth.w	r9, r4
d05a106c:	e7e9      	b.n	d05a1042 <draw_random_shape+0xac2>
d05a106e:	4618      	mov	r0, r3
d05a1070:	4632      	mov	r2, r6
d05a1072:	e7d5      	b.n	d05a1020 <draw_random_shape+0xaa0>
d05a1074:	d05a2a80 	.word	0xd05a2a80

d05a1078 <on_timer_tick>:
d05a1078:	4b25      	ldr	r3, [pc, #148]	; (d05a1110 <on_timer_tick+0x98>)
d05a107a:	781b      	ldrb	r3, [r3, #0]
d05a107c:	2b00      	cmp	r3, #0
d05a107e:	d046      	beq.n	d05a110e <on_timer_tick+0x96>
d05a1080:	4b24      	ldr	r3, [pc, #144]	; (d05a1114 <on_timer_tick+0x9c>)
d05a1082:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
d05a1086:	781d      	ldrb	r5, [r3, #0]
d05a1088:	b10d      	cbz	r5, d05a108e <on_timer_tick+0x16>
d05a108a:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
d05a108e:	4f22      	ldr	r7, [pc, #136]	; (d05a1118 <on_timer_tick+0xa0>)
d05a1090:	f7ff fa76 	bl	d05a0580 <draw_random_shape>
d05a1094:	f8df 9090 	ldr.w	r9, [pc, #144]	; d05a1128 <on_timer_tick+0xb0>
d05a1098:	f507 684c 	add.w	r8, r7, #3264	; 0xcc0
d05a109c:	f7ff fa70 	bl	d05a0580 <draw_random_shape>
d05a10a0:	f7ff fa6e 	bl	d05a0580 <draw_random_shape>
d05a10a4:	f7ff fa6c 	bl	d05a0580 <draw_random_shape>
d05a10a8:	f7ff fa6a 	bl	d05a0580 <draw_random_shape>
d05a10ac:	f7ff fa68 	bl	d05a0580 <draw_random_shape>
d05a10b0:	022e      	lsls	r6, r5, #8
d05a10b2:	462b      	mov	r3, r5
d05a10b4:	eb07 0a05 	add.w	sl, r7, r5
d05a10b8:	3501      	adds	r5, #1
d05a10ba:	fba9 2606 	umull	r2, r6, r9, r6
d05a10be:	eb08 0403 	add.w	r4, r8, r3
d05a10c2:	0a36      	lsrs	r6, r6, #8
d05a10c4:	4650      	mov	r0, sl
d05a10c6:	f50a 7acc 	add.w	sl, sl, #408	; 0x198
d05a10ca:	2201      	movs	r2, #1
d05a10cc:	4631      	mov	r1, r6
d05a10ce:	f000 fbff 	bl	d05a18d0 <memset>
d05a10d2:	45a2      	cmp	sl, r4
d05a10d4:	d1f6      	bne.n	d05a10c4 <on_timer_tick+0x4c>
d05a10d6:	f5b5 7fcc 	cmp.w	r5, #408	; 0x198
d05a10da:	d1e9      	bne.n	d05a10b0 <on_timer_tick+0x38>
d05a10dc:	4a0f      	ldr	r2, [pc, #60]	; (d05a111c <on_timer_tick+0xa4>)
d05a10de:	4910      	ldr	r1, [pc, #64]	; (d05a1120 <on_timer_tick+0xa8>)
d05a10e0:	6813      	ldr	r3, [r2, #0]
d05a10e2:	6808      	ldr	r0, [r1, #0]
d05a10e4:	3301      	adds	r3, #1
d05a10e6:	6013      	str	r3, [r2, #0]
d05a10e8:	b168      	cbz	r0, d05a1106 <on_timer_tick+0x8e>
d05a10ea:	4a0e      	ldr	r2, [pc, #56]	; (d05a1124 <on_timer_tick+0xac>)
d05a10ec:	7a13      	ldrb	r3, [r2, #8]
d05a10ee:	7a54      	ldrb	r4, [r2, #9]
d05a10f0:	7a91      	ldrb	r1, [r2, #10]
d05a10f2:	ea43 2304 	orr.w	r3, r3, r4, lsl #8
d05a10f6:	7ad2      	ldrb	r2, [r2, #11]
d05a10f8:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d05a10fc:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d05a1100:	68db      	ldr	r3, [r3, #12]
d05a1102:	6d9b      	ldr	r3, [r3, #88]	; 0x58
d05a1104:	4798      	blx	r3
d05a1106:	e8bd 47f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
d05a110a:	f7ff b81b 	b.w	d05a0144 <set_status>
d05a110e:	4770      	bx	lr
d05a1110:	d05a2a68 	.word	0xd05a2a68
d05a1114:	d05b5c98 	.word	0xd05b5c98
d05a1118:	d05b4fc0 	.word	0xd05b4fc0
d05a111c:	d05b5c8c 	.word	0xd05b5c8c
d05a1120:	d05a2a6c 	.word	0xd05a2a6c
d05a1124:	2001f000 	.word	0x2001f000
d05a1128:	a0a0a0a1 	.word	0xa0a0a0a1

d05a112c <on_menu_burst>:
d05a112c:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
d05a1130:	2418      	movs	r4, #24
d05a1132:	3c01      	subs	r4, #1
d05a1134:	f7ff fa24 	bl	d05a0580 <draw_random_shape>
d05a1138:	f014 04ff 	ands.w	r4, r4, #255	; 0xff
d05a113c:	d1f9      	bne.n	d05a1132 <on_menu_burst+0x6>
d05a113e:	4f1a      	ldr	r7, [pc, #104]	; (d05a11a8 <on_menu_burst+0x7c>)
d05a1140:	f8df 9074 	ldr.w	r9, [pc, #116]	; d05a11b8 <on_menu_burst+0x8c>
d05a1144:	f507 684c 	add.w	r8, r7, #3264	; 0xcc0
d05a1148:	0226      	lsls	r6, r4, #8
d05a114a:	4623      	mov	r3, r4
d05a114c:	eb07 0a04 	add.w	sl, r7, r4
d05a1150:	3401      	adds	r4, #1
d05a1152:	fba9 2606 	umull	r2, r6, r9, r6
d05a1156:	eb08 0503 	add.w	r5, r8, r3
d05a115a:	0a36      	lsrs	r6, r6, #8
d05a115c:	4650      	mov	r0, sl
d05a115e:	f50a 7acc 	add.w	sl, sl, #408	; 0x198
d05a1162:	2201      	movs	r2, #1
d05a1164:	4631      	mov	r1, r6
d05a1166:	f000 fbb3 	bl	d05a18d0 <memset>
d05a116a:	45aa      	cmp	sl, r5
d05a116c:	d1f6      	bne.n	d05a115c <on_menu_burst+0x30>
d05a116e:	f5b4 7fcc 	cmp.w	r4, #408	; 0x198
d05a1172:	d1e9      	bne.n	d05a1148 <on_menu_burst+0x1c>
d05a1174:	4a0d      	ldr	r2, [pc, #52]	; (d05a11ac <on_menu_burst+0x80>)
d05a1176:	490e      	ldr	r1, [pc, #56]	; (d05a11b0 <on_menu_burst+0x84>)
d05a1178:	6813      	ldr	r3, [r2, #0]
d05a117a:	6808      	ldr	r0, [r1, #0]
d05a117c:	3301      	adds	r3, #1
d05a117e:	6013      	str	r3, [r2, #0]
d05a1180:	b168      	cbz	r0, d05a119e <on_menu_burst+0x72>
d05a1182:	4a0c      	ldr	r2, [pc, #48]	; (d05a11b4 <on_menu_burst+0x88>)
d05a1184:	7a13      	ldrb	r3, [r2, #8]
d05a1186:	7a54      	ldrb	r4, [r2, #9]
d05a1188:	7a91      	ldrb	r1, [r2, #10]
d05a118a:	ea43 2304 	orr.w	r3, r3, r4, lsl #8
d05a118e:	7ad2      	ldrb	r2, [r2, #11]
d05a1190:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d05a1194:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d05a1198:	68db      	ldr	r3, [r3, #12]
d05a119a:	6d9b      	ldr	r3, [r3, #88]	; 0x58
d05a119c:	4798      	blx	r3
d05a119e:	e8bd 47f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
d05a11a2:	f7fe bfcf 	b.w	d05a0144 <set_status>
d05a11a6:	bf00      	nop
d05a11a8:	d05b4fc0 	.word	0xd05b4fc0
d05a11ac:	d05b5c8c 	.word	0xd05b5c8c
d05a11b0:	d05a2a6c 	.word	0xd05a2a6c
d05a11b4:	2001f000 	.word	0x2001f000
d05a11b8:	a0a0a0a1 	.word	0xa0a0a0a1

d05a11bc <on_burst_clicked>:
d05a11bc:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
d05a11c0:	2418      	movs	r4, #24
d05a11c2:	3c01      	subs	r4, #1
d05a11c4:	f7ff f9dc 	bl	d05a0580 <draw_random_shape>
d05a11c8:	f014 04ff 	ands.w	r4, r4, #255	; 0xff
d05a11cc:	d1f9      	bne.n	d05a11c2 <on_burst_clicked+0x6>
d05a11ce:	4f1a      	ldr	r7, [pc, #104]	; (d05a1238 <on_burst_clicked+0x7c>)
d05a11d0:	f8df 9074 	ldr.w	r9, [pc, #116]	; d05a1248 <on_burst_clicked+0x8c>
d05a11d4:	f507 684c 	add.w	r8, r7, #3264	; 0xcc0
d05a11d8:	0226      	lsls	r6, r4, #8
d05a11da:	4623      	mov	r3, r4
d05a11dc:	eb07 0a04 	add.w	sl, r7, r4
d05a11e0:	3401      	adds	r4, #1
d05a11e2:	fba9 2606 	umull	r2, r6, r9, r6
d05a11e6:	eb08 0503 	add.w	r5, r8, r3
d05a11ea:	0a36      	lsrs	r6, r6, #8
d05a11ec:	4650      	mov	r0, sl
d05a11ee:	f50a 7acc 	add.w	sl, sl, #408	; 0x198
d05a11f2:	2201      	movs	r2, #1
d05a11f4:	4631      	mov	r1, r6
d05a11f6:	f000 fb6b 	bl	d05a18d0 <memset>
d05a11fa:	45aa      	cmp	sl, r5
d05a11fc:	d1f6      	bne.n	d05a11ec <on_burst_clicked+0x30>
d05a11fe:	f5b4 7fcc 	cmp.w	r4, #408	; 0x198
d05a1202:	d1e9      	bne.n	d05a11d8 <on_burst_clicked+0x1c>
d05a1204:	4a0d      	ldr	r2, [pc, #52]	; (d05a123c <on_burst_clicked+0x80>)
d05a1206:	490e      	ldr	r1, [pc, #56]	; (d05a1240 <on_burst_clicked+0x84>)
d05a1208:	6813      	ldr	r3, [r2, #0]
d05a120a:	6808      	ldr	r0, [r1, #0]
d05a120c:	3301      	adds	r3, #1
d05a120e:	6013      	str	r3, [r2, #0]
d05a1210:	b168      	cbz	r0, d05a122e <on_burst_clicked+0x72>
d05a1212:	4a0c      	ldr	r2, [pc, #48]	; (d05a1244 <on_burst_clicked+0x88>)
d05a1214:	7a13      	ldrb	r3, [r2, #8]
d05a1216:	7a54      	ldrb	r4, [r2, #9]
d05a1218:	7a91      	ldrb	r1, [r2, #10]
d05a121a:	ea43 2304 	orr.w	r3, r3, r4, lsl #8
d05a121e:	7ad2      	ldrb	r2, [r2, #11]
d05a1220:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d05a1224:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d05a1228:	68db      	ldr	r3, [r3, #12]
d05a122a:	6d9b      	ldr	r3, [r3, #88]	; 0x58
d05a122c:	4798      	blx	r3
d05a122e:	e8bd 47f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
d05a1232:	f7fe bf87 	b.w	d05a0144 <set_status>
d05a1236:	bf00      	nop
d05a1238:	d05b4fc0 	.word	0xd05b4fc0
d05a123c:	d05b5c8c 	.word	0xd05b5c8c
d05a1240:	d05a2a6c 	.word	0xd05a2a6c
d05a1244:	2001f000 	.word	0x2001f000
d05a1248:	a0a0a0a1 	.word	0xa0a0a0a1

d05a124c <main>:
d05a124c:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d05a1250:	4bb5      	ldr	r3, [pc, #724]	; (d05a1528 <main+0x2dc>)
d05a1252:	2701      	movs	r7, #1
d05a1254:	4cb5      	ldr	r4, [pc, #724]	; (d05a152c <main+0x2e0>)
d05a1256:	b089      	sub	sp, #36	; 0x24
d05a1258:	701f      	strb	r7, [r3, #0]
d05a125a:	f44f 7c90 	mov.w	ip, #288	; 0x120
d05a125e:	7a21      	ldrb	r1, [r4, #8]
d05a1260:	f240 306d 	movw	r0, #877	; 0x36d
d05a1264:	7a65      	ldrb	r5, [r4, #9]
d05a1266:	f44f 73d8 	mov.w	r3, #432	; 0x1b0
d05a126a:	7aa6      	ldrb	r6, [r4, #10]
d05a126c:	2214      	movs	r2, #20
d05a126e:	ea41 2105 	orr.w	r1, r1, r5, lsl #8
d05a1272:	7ae5      	ldrb	r5, [r4, #11]
d05a1274:	f8df e2f4 	ldr.w	lr, [pc, #756]	; d05a156c <main+0x320>
d05a1278:	ea41 4106 	orr.w	r1, r1, r6, lsl #16
d05a127c:	ea41 6105 	orr.w	r1, r1, r5, lsl #24
d05a1280:	4dab      	ldr	r5, [pc, #684]	; (d05a1530 <main+0x2e4>)
d05a1282:	684e      	ldr	r6, [r1, #4]
d05a1284:	2118      	movs	r1, #24
d05a1286:	f8cd e004 	str.w	lr, [sp, #4]
d05a128a:	f8cd c000 	str.w	ip, [sp]
d05a128e:	9002      	str	r0, [sp, #8]
d05a1290:	4628      	mov	r0, r5
d05a1292:	6836      	ldr	r6, [r6, #0]
d05a1294:	47b0      	blx	r6
d05a1296:	7a23      	ldrb	r3, [r4, #8]
d05a1298:	7a62      	ldrb	r2, [r4, #9]
d05a129a:	7aa1      	ldrb	r1, [r4, #10]
d05a129c:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d05a12a0:	7ae2      	ldrb	r2, [r4, #11]
d05a12a2:	7828      	ldrb	r0, [r5, #0]
d05a12a4:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d05a12a8:	49a2      	ldr	r1, [pc, #648]	; (d05a1534 <main+0x2e8>)
d05a12aa:	4ea3      	ldr	r6, [pc, #652]	; (d05a1538 <main+0x2ec>)
d05a12ac:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d05a12b0:	685b      	ldr	r3, [r3, #4]
d05a12b2:	689b      	ldr	r3, [r3, #8]
d05a12b4:	4798      	blx	r3
d05a12b6:	7a23      	ldrb	r3, [r4, #8]
d05a12b8:	7a62      	ldrb	r2, [r4, #9]
d05a12ba:	7aa1      	ldrb	r1, [r4, #10]
d05a12bc:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d05a12c0:	7ae2      	ldrb	r2, [r4, #11]
d05a12c2:	7828      	ldrb	r0, [r5, #0]
d05a12c4:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d05a12c8:	499c      	ldr	r1, [pc, #624]	; (d05a153c <main+0x2f0>)
d05a12ca:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d05a12ce:	685b      	ldr	r3, [r3, #4]
d05a12d0:	699b      	ldr	r3, [r3, #24]
d05a12d2:	4798      	blx	r3
d05a12d4:	f8d6 8000 	ldr.w	r8, [r6]
d05a12d8:	f1b8 0f00 	cmp.w	r8, #0
d05a12dc:	f040 80f2 	bne.w	d05a14c4 <main+0x278>
d05a12e0:	7a20      	ldrb	r0, [r4, #8]
d05a12e2:	7a61      	ldrb	r1, [r4, #9]
d05a12e4:	7aa2      	ldrb	r2, [r4, #10]
d05a12e6:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d05a12ea:	7ae3      	ldrb	r3, [r4, #11]
d05a12ec:	4894      	ldr	r0, [pc, #592]	; (d05a1540 <main+0x2f4>)
d05a12ee:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d05a12f2:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d05a12f6:	699b      	ldr	r3, [r3, #24]
d05a12f8:	681b      	ldr	r3, [r3, #0]
d05a12fa:	4798      	blx	r3
d05a12fc:	6030      	str	r0, [r6, #0]
d05a12fe:	2800      	cmp	r0, #0
d05a1300:	f000 80e0 	beq.w	d05a14c4 <main+0x278>
d05a1304:	f894 e008 	ldrb.w	lr, [r4, #8]
d05a1308:	4641      	mov	r1, r8
d05a130a:	7a62      	ldrb	r2, [r4, #9]
d05a130c:	4630      	mov	r0, r6
d05a130e:	f894 c00a 	ldrb.w	ip, [r4, #10]
d05a1312:	ea4e 2202 	orr.w	r2, lr, r2, lsl #8
d05a1316:	7ae3      	ldrb	r3, [r4, #11]
d05a1318:	f8df 9254 	ldr.w	r9, [pc, #596]	; d05a1570 <main+0x324>
d05a131c:	ea42 4c0c 	orr.w	ip, r2, ip, lsl #16
d05a1320:	4a88      	ldr	r2, [pc, #544]	; (d05a1544 <main+0x2f8>)
d05a1322:	ea4c 6303 	orr.w	r3, ip, r3, lsl #24
d05a1326:	699b      	ldr	r3, [r3, #24]
d05a1328:	685b      	ldr	r3, [r3, #4]
d05a132a:	4798      	blx	r3
d05a132c:	7a23      	ldrb	r3, [r4, #8]
d05a132e:	f894 c009 	ldrb.w	ip, [r4, #9]
d05a1332:	4642      	mov	r2, r8
d05a1334:	7aa1      	ldrb	r1, [r4, #10]
d05a1336:	ea43 230c 	orr.w	r3, r3, ip, lsl #8
d05a133a:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d05a133e:	7ae1      	ldrb	r1, [r4, #11]
d05a1340:	ea43 6301 	orr.w	r3, r3, r1, lsl #24
d05a1344:	4980      	ldr	r1, [pc, #512]	; (d05a1548 <main+0x2fc>)
d05a1346:	699b      	ldr	r3, [r3, #24]
d05a1348:	695b      	ldr	r3, [r3, #20]
d05a134a:	4798      	blx	r3
d05a134c:	f894 c008 	ldrb.w	ip, [r4, #8]
d05a1350:	7a62      	ldrb	r2, [r4, #9]
d05a1352:	4641      	mov	r1, r8
d05a1354:	7aa0      	ldrb	r0, [r4, #10]
d05a1356:	ea4c 2202 	orr.w	r2, ip, r2, lsl #8
d05a135a:	7ae3      	ldrb	r3, [r4, #11]
d05a135c:	ea42 4000 	orr.w	r0, r2, r0, lsl #16
d05a1360:	4a7a      	ldr	r2, [pc, #488]	; (d05a154c <main+0x300>)
d05a1362:	ea40 6303 	orr.w	r3, r0, r3, lsl #24
d05a1366:	4630      	mov	r0, r6
d05a1368:	699b      	ldr	r3, [r3, #24]
d05a136a:	685b      	ldr	r3, [r3, #4]
d05a136c:	4798      	blx	r3
d05a136e:	7a23      	ldrb	r3, [r4, #8]
d05a1370:	f894 c009 	ldrb.w	ip, [r4, #9]
d05a1374:	4642      	mov	r2, r8
d05a1376:	7aa1      	ldrb	r1, [r4, #10]
d05a1378:	ea43 230c 	orr.w	r3, r3, ip, lsl #8
d05a137c:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d05a1380:	7ae1      	ldrb	r1, [r4, #11]
d05a1382:	ea43 6301 	orr.w	r3, r3, r1, lsl #24
d05a1386:	4972      	ldr	r1, [pc, #456]	; (d05a1550 <main+0x304>)
d05a1388:	699b      	ldr	r3, [r3, #24]
d05a138a:	695b      	ldr	r3, [r3, #20]
d05a138c:	4798      	blx	r3
d05a138e:	f894 c008 	ldrb.w	ip, [r4, #8]
d05a1392:	7a62      	ldrb	r2, [r4, #9]
d05a1394:	4641      	mov	r1, r8
d05a1396:	7aa0      	ldrb	r0, [r4, #10]
d05a1398:	ea4c 2202 	orr.w	r2, ip, r2, lsl #8
d05a139c:	7ae3      	ldrb	r3, [r4, #11]
d05a139e:	ea42 4000 	orr.w	r0, r2, r0, lsl #16
d05a13a2:	4a6c      	ldr	r2, [pc, #432]	; (d05a1554 <main+0x308>)
d05a13a4:	ea40 6303 	orr.w	r3, r0, r3, lsl #24
d05a13a8:	4630      	mov	r0, r6
d05a13aa:	699b      	ldr	r3, [r3, #24]
d05a13ac:	685b      	ldr	r3, [r3, #4]
d05a13ae:	4798      	blx	r3
d05a13b0:	7a23      	ldrb	r3, [r4, #8]
d05a13b2:	f894 c009 	ldrb.w	ip, [r4, #9]
d05a13b6:	2202      	movs	r2, #2
d05a13b8:	9007      	str	r0, [sp, #28]
d05a13ba:	4641      	mov	r1, r8
d05a13bc:	ea43 230c 	orr.w	r3, r3, ip, lsl #8
d05a13c0:	7aa0      	ldrb	r0, [r4, #10]
d05a13c2:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
d05a13c6:	7ae0      	ldrb	r0, [r4, #11]
d05a13c8:	ea43 6300 	orr.w	r3, r3, r0, lsl #24
d05a13cc:	a807      	add	r0, sp, #28
d05a13ce:	699b      	ldr	r3, [r3, #24]
d05a13d0:	699b      	ldr	r3, [r3, #24]
d05a13d2:	4798      	blx	r3
d05a13d4:	f894 c008 	ldrb.w	ip, [r4, #8]
d05a13d8:	7a62      	ldrb	r2, [r4, #9]
d05a13da:	4641      	mov	r1, r8
d05a13dc:	7aa0      	ldrb	r0, [r4, #10]
d05a13de:	ea4c 2202 	orr.w	r2, ip, r2, lsl #8
d05a13e2:	7ae3      	ldrb	r3, [r4, #11]
d05a13e4:	ea42 4000 	orr.w	r0, r2, r0, lsl #16
d05a13e8:	4a5b      	ldr	r2, [pc, #364]	; (d05a1558 <main+0x30c>)
d05a13ea:	ea40 6303 	orr.w	r3, r0, r3, lsl #24
d05a13ee:	4630      	mov	r0, r6
d05a13f0:	699b      	ldr	r3, [r3, #24]
d05a13f2:	685b      	ldr	r3, [r3, #4]
d05a13f4:	4798      	blx	r3
d05a13f6:	f894 c008 	ldrb.w	ip, [r4, #8]
d05a13fa:	4639      	mov	r1, r7
d05a13fc:	7a67      	ldrb	r7, [r4, #9]
d05a13fe:	7aa3      	ldrb	r3, [r4, #10]
d05a1400:	ea4c 2207 	orr.w	r2, ip, r7, lsl #8
d05a1404:	f8df e16c 	ldr.w	lr, [pc, #364]	; d05a1574 <main+0x328>
d05a1408:	ea42 4703 	orr.w	r7, r2, r3, lsl #16
d05a140c:	7ae3      	ldrb	r3, [r4, #11]
d05a140e:	f8ce 0000 	str.w	r0, [lr]
d05a1412:	4630      	mov	r0, r6
d05a1414:	ea47 6303 	orr.w	r3, r7, r3, lsl #24
d05a1418:	4a50      	ldr	r2, [pc, #320]	; (d05a155c <main+0x310>)
d05a141a:	699b      	ldr	r3, [r3, #24]
d05a141c:	685b      	ldr	r3, [r3, #4]
d05a141e:	4798      	blx	r3
d05a1420:	7a23      	ldrb	r3, [r4, #8]
d05a1422:	7a61      	ldrb	r1, [r4, #9]
d05a1424:	4642      	mov	r2, r8
d05a1426:	7aa7      	ldrb	r7, [r4, #10]
d05a1428:	ea43 2101 	orr.w	r1, r3, r1, lsl #8
d05a142c:	7ae3      	ldrb	r3, [r4, #11]
d05a142e:	f8c9 0000 	str.w	r0, [r9]
d05a1432:	ea41 4707 	orr.w	r7, r1, r7, lsl #16
d05a1436:	494a      	ldr	r1, [pc, #296]	; (d05a1560 <main+0x314>)
d05a1438:	ea47 6303 	orr.w	r3, r7, r3, lsl #24
d05a143c:	699b      	ldr	r3, [r3, #24]
d05a143e:	695b      	ldr	r3, [r3, #20]
d05a1440:	4798      	blx	r3
d05a1442:	7a21      	ldrb	r1, [r4, #8]
d05a1444:	f894 c009 	ldrb.w	ip, [r4, #9]
d05a1448:	4648      	mov	r0, r9
d05a144a:	7aa7      	ldrb	r7, [r4, #10]
d05a144c:	2208      	movs	r2, #8
d05a144e:	ea41 2c0c 	orr.w	ip, r1, ip, lsl #8
d05a1452:	7ae3      	ldrb	r3, [r4, #11]
d05a1454:	4641      	mov	r1, r8
d05a1456:	ea4c 4707 	orr.w	r7, ip, r7, lsl #16
d05a145a:	ea47 6303 	orr.w	r3, r7, r3, lsl #24
d05a145e:	699b      	ldr	r3, [r3, #24]
d05a1460:	699b      	ldr	r3, [r3, #24]
d05a1462:	4798      	blx	r3
d05a1464:	7a22      	ldrb	r2, [r4, #8]
d05a1466:	f894 c009 	ldrb.w	ip, [r4, #9]
d05a146a:	2102      	movs	r1, #2
d05a146c:	7aa7      	ldrb	r7, [r4, #10]
d05a146e:	4630      	mov	r0, r6
d05a1470:	ea42 2c0c 	orr.w	ip, r2, ip, lsl #8
d05a1474:	7ae3      	ldrb	r3, [r4, #11]
d05a1476:	4a3b      	ldr	r2, [pc, #236]	; (d05a1564 <main+0x318>)
d05a1478:	ea4c 4707 	orr.w	r7, ip, r7, lsl #16
d05a147c:	ea47 6303 	orr.w	r3, r7, r3, lsl #24
d05a1480:	699b      	ldr	r3, [r3, #24]
d05a1482:	685b      	ldr	r3, [r3, #4]
d05a1484:	4798      	blx	r3
d05a1486:	7a21      	ldrb	r1, [r4, #8]
d05a1488:	f894 c009 	ldrb.w	ip, [r4, #9]
d05a148c:	4642      	mov	r2, r8
d05a148e:	7aa7      	ldrb	r7, [r4, #10]
d05a1490:	ea41 2c0c 	orr.w	ip, r1, ip, lsl #8
d05a1494:	7ae3      	ldrb	r3, [r4, #11]
d05a1496:	4934      	ldr	r1, [pc, #208]	; (d05a1568 <main+0x31c>)
d05a1498:	ea4c 4707 	orr.w	r7, ip, r7, lsl #16
d05a149c:	ea47 6303 	orr.w	r3, r7, r3, lsl #24
d05a14a0:	699b      	ldr	r3, [r3, #24]
d05a14a2:	695b      	ldr	r3, [r3, #20]
d05a14a4:	4798      	blx	r3
d05a14a6:	7a20      	ldrb	r0, [r4, #8]
d05a14a8:	7a61      	ldrb	r1, [r4, #9]
d05a14aa:	7aa2      	ldrb	r2, [r4, #10]
d05a14ac:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d05a14b0:	7ae3      	ldrb	r3, [r4, #11]
d05a14b2:	6830      	ldr	r0, [r6, #0]
d05a14b4:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d05a14b8:	7829      	ldrb	r1, [r5, #0]
d05a14ba:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d05a14be:	699b      	ldr	r3, [r3, #24]
d05a14c0:	68db      	ldr	r3, [r3, #12]
d05a14c2:	4798      	blx	r3
d05a14c4:	7a22      	ldrb	r2, [r4, #8]
d05a14c6:	2601      	movs	r6, #1
d05a14c8:	7a61      	ldrb	r1, [r4, #9]
d05a14ca:	f04f 0b16 	mov.w	fp, #22
d05a14ce:	f894 c00a 	ldrb.w	ip, [r4, #10]
d05a14d2:	2348      	movs	r3, #72	; 0x48
d05a14d4:	ea42 2101 	orr.w	r1, r2, r1, lsl #8
d05a14d8:	7ae7      	ldrb	r7, [r4, #11]
d05a14da:	f8df e09c 	ldr.w	lr, [pc, #156]	; d05a1578 <main+0x32c>
d05a14de:	220a      	movs	r2, #10
d05a14e0:	ea41 4c0c 	orr.w	ip, r1, ip, lsl #16
d05a14e4:	7828      	ldrb	r0, [r5, #0]
d05a14e6:	210c      	movs	r1, #12
d05a14e8:	f8df a090 	ldr.w	sl, [pc, #144]	; d05a157c <main+0x330>
d05a14ec:	ea4c 6707 	orr.w	r7, ip, r7, lsl #24
d05a14f0:	f8df 908c 	ldr.w	r9, [pc, #140]	; d05a1580 <main+0x334>
d05a14f4:	68ff      	ldr	r7, [r7, #12]
d05a14f6:	9602      	str	r6, [sp, #8]
d05a14f8:	e9cd be00 	strd	fp, lr, [sp]
d05a14fc:	68bf      	ldr	r7, [r7, #8]
d05a14fe:	47b8      	blx	r7
d05a1500:	f894 8008 	ldrb.w	r8, [r4, #8]
d05a1504:	f894 c009 	ldrb.w	ip, [r4, #9]
d05a1508:	2348      	movs	r3, #72	; 0x48
d05a150a:	7aa7      	ldrb	r7, [r4, #10]
d05a150c:	220a      	movs	r2, #10
d05a150e:	ea48 2e0c 	orr.w	lr, r8, ip, lsl #8
d05a1512:	f894 800b 	ldrb.w	r8, [r4, #11]
d05a1516:	f8ca 0000 	str.w	r0, [sl]
d05a151a:	215e      	movs	r1, #94	; 0x5e
d05a151c:	ea4e 4c07 	orr.w	ip, lr, r7, lsl #16
d05a1520:	f8df e020 	ldr.w	lr, [pc, #32]	; d05a1544 <main+0x2f8>
d05a1524:	7828      	ldrb	r0, [r5, #0]
d05a1526:	e02d      	b.n	d05a1584 <main+0x338>
d05a1528:	d05a2a68 	.word	0xd05a2a68
d05a152c:	2001f000 	.word	0x2001f000
d05a1530:	d05b5c88 	.word	0xd05b5c88
d05a1534:	d05a0311 	.word	0xd05a0311
d05a1538:	d05b5c84 	.word	0xd05b5c84
d05a153c:	d05a28d0 	.word	0xd05a28d0
d05a1540:	d05a28ec 	.word	0xd05a28ec
d05a1544:	d05a2904 	.word	0xd05a2904
d05a1548:	d05a112d 	.word	0xd05a112d
d05a154c:	d05a290c 	.word	0xd05a290c
d05a1550:	d05a042d 	.word	0xd05a042d
d05a1554:	d05a2918 	.word	0xd05a2918
d05a1558:	d05a2914 	.word	0xd05a2914
d05a155c:	d05a289c 	.word	0xd05a289c
d05a1560:	d05a0431 	.word	0xd05a0431
d05a1564:	d05a291c 	.word	0xd05a291c
d05a1568:	d05a0109 	.word	0xd05a0109
d05a156c:	d05a288c 	.word	0xd05a288c
d05a1570:	d05b5c94 	.word	0xd05b5c94
d05a1574:	d05b5c90 	.word	0xd05b5c90
d05a1578:	d05a2930 	.word	0xd05a2930
d05a157c:	d05a2a7c 	.word	0xd05a2a7c
d05a1580:	d05a2a70 	.word	0xd05a2a70
d05a1584:	ea4c 6708 	orr.w	r7, ip, r8, lsl #24
d05a1588:	f8df 8328 	ldr.w	r8, [pc, #808]	; d05a18b4 <main+0x668>
d05a158c:	68ff      	ldr	r7, [r7, #12]
d05a158e:	9602      	str	r6, [sp, #8]
d05a1590:	e9cd be00 	strd	fp, lr, [sp]
d05a1594:	68bf      	ldr	r7, [r7, #8]
d05a1596:	47b8      	blx	r7
d05a1598:	7a21      	ldrb	r1, [r4, #8]
d05a159a:	f894 c009 	ldrb.w	ip, [r4, #9]
d05a159e:	2348      	movs	r3, #72	; 0x48
d05a15a0:	f894 e00a 	ldrb.w	lr, [r4, #10]
d05a15a4:	220a      	movs	r2, #10
d05a15a6:	ea41 2c0c 	orr.w	ip, r1, ip, lsl #8
d05a15aa:	f8c9 0000 	str.w	r0, [r9]
d05a15ae:	7ae7      	ldrb	r7, [r4, #11]
d05a15b0:	21b0      	movs	r1, #176	; 0xb0
d05a15b2:	ea4c 400e 	orr.w	r0, ip, lr, lsl #16
d05a15b6:	f8df c300 	ldr.w	ip, [pc, #768]	; d05a18b8 <main+0x66c>
d05a15ba:	ea40 6707 	orr.w	r7, r0, r7, lsl #24
d05a15be:	7828      	ldrb	r0, [r5, #0]
d05a15c0:	68ff      	ldr	r7, [r7, #12]
d05a15c2:	9602      	str	r6, [sp, #8]
d05a15c4:	e9cd bc00 	strd	fp, ip, [sp]
d05a15c8:	68bf      	ldr	r7, [r7, #8]
d05a15ca:	47b8      	blx	r7
d05a15cc:	7a21      	ldrb	r1, [r4, #8]
d05a15ce:	f894 c009 	ldrb.w	ip, [r4, #9]
d05a15d2:	2348      	movs	r3, #72	; 0x48
d05a15d4:	f894 e00a 	ldrb.w	lr, [r4, #10]
d05a15d8:	220a      	movs	r2, #10
d05a15da:	ea41 2c0c 	orr.w	ip, r1, ip, lsl #8
d05a15de:	f8c8 0000 	str.w	r0, [r8]
d05a15e2:	7ae7      	ldrb	r7, [r4, #11]
d05a15e4:	f44f 71ac 	mov.w	r1, #344	; 0x158
d05a15e8:	ea4c 400e 	orr.w	r0, ip, lr, lsl #16
d05a15ec:	f8df c2cc 	ldr.w	ip, [pc, #716]	; d05a18bc <main+0x670>
d05a15f0:	ea40 6707 	orr.w	r7, r0, r7, lsl #24
d05a15f4:	7828      	ldrb	r0, [r5, #0]
d05a15f6:	68ff      	ldr	r7, [r7, #12]
d05a15f8:	f8cd b000 	str.w	fp, [sp]
d05a15fc:	f04f 0b40 	mov.w	fp, #64	; 0x40
d05a1600:	f8cd c004 	str.w	ip, [sp, #4]
d05a1604:	9602      	str	r6, [sp, #8]
d05a1606:	68bf      	ldr	r7, [r7, #8]
d05a1608:	47b8      	blx	r7
d05a160a:	7a27      	ldrb	r7, [r4, #8]
d05a160c:	7a63      	ldrb	r3, [r4, #9]
d05a160e:	2204      	movs	r2, #4
d05a1610:	f894 e00a 	ldrb.w	lr, [r4, #10]
d05a1614:	ea47 2103 	orr.w	r1, r7, r3, lsl #8
d05a1618:	f894 c00b 	ldrb.w	ip, [r4, #11]
d05a161c:	4f9c      	ldr	r7, [pc, #624]	; (d05a1890 <main+0x644>)
d05a161e:	ea41 430e 	orr.w	r3, r1, lr, lsl #16
d05a1622:	f44f 7ecc 	mov.w	lr, #408	; 0x198
d05a1626:	6038      	str	r0, [r7, #0]
d05a1628:	21c0      	movs	r1, #192	; 0xc0
d05a162a:	ea43 630c 	orr.w	r3, r3, ip, lsl #24
d05a162e:	20c2      	movs	r0, #194	; 0xc2
d05a1630:	f8d3 c00c 	ldr.w	ip, [r3, #12]
d05a1634:	f44f 73cd 	mov.w	r3, #410	; 0x19a
d05a1638:	9203      	str	r2, [sp, #12]
d05a163a:	222c      	movs	r2, #44	; 0x2c
d05a163c:	9102      	str	r1, [sp, #8]
d05a163e:	210c      	movs	r1, #12
d05a1640:	f8cd b010 	str.w	fp, [sp, #16]
d05a1644:	e9cd 0e00 	strd	r0, lr, [sp]
d05a1648:	f8dc b004 	ldr.w	fp, [ip, #4]
d05a164c:	7828      	ldrb	r0, [r5, #0]
d05a164e:	47d8      	blx	fp
d05a1650:	7a21      	ldrb	r1, [r4, #8]
d05a1652:	7a62      	ldrb	r2, [r4, #9]
d05a1654:	7aa3      	ldrb	r3, [r4, #10]
d05a1656:	ea41 2202 	orr.w	r2, r1, r2, lsl #8
d05a165a:	f894 c00b 	ldrb.w	ip, [r4, #11]
d05a165e:	f8df b260 	ldr.w	fp, [pc, #608]	; d05a18c0 <main+0x674>
d05a1662:	ea42 4303 	orr.w	r3, r2, r3, lsl #16
d05a1666:	498b      	ldr	r1, [pc, #556]	; (d05a1894 <main+0x648>)
d05a1668:	f8cb 0000 	str.w	r0, [fp]
d05a166c:	ea43 630c 	orr.w	r3, r3, ip, lsl #24
d05a1670:	68db      	ldr	r3, [r3, #12]
d05a1672:	6f5b      	ldr	r3, [r3, #116]	; 0x74
d05a1674:	4798      	blx	r3
d05a1676:	f894 c008 	ldrb.w	ip, [r4, #8]
d05a167a:	7a61      	ldrb	r1, [r4, #9]
d05a167c:	2200      	movs	r2, #0
d05a167e:	7aa3      	ldrb	r3, [r4, #10]
d05a1680:	ea4c 2001 	orr.w	r0, ip, r1, lsl #8
d05a1684:	f894 c00b 	ldrb.w	ip, [r4, #11]
d05a1688:	ea40 4103 	orr.w	r1, r0, r3, lsl #16
d05a168c:	f8da 0000 	ldr.w	r0, [sl]
d05a1690:	ea41 630c 	orr.w	r3, r1, ip, lsl #24
d05a1694:	4980      	ldr	r1, [pc, #512]	; (d05a1898 <main+0x64c>)
d05a1696:	68db      	ldr	r3, [r3, #12]
d05a1698:	6e1b      	ldr	r3, [r3, #96]	; 0x60
d05a169a:	4798      	blx	r3
d05a169c:	f894 c008 	ldrb.w	ip, [r4, #8]
d05a16a0:	7a61      	ldrb	r1, [r4, #9]
d05a16a2:	2200      	movs	r2, #0
d05a16a4:	7aa3      	ldrb	r3, [r4, #10]
d05a16a6:	ea4c 2001 	orr.w	r0, ip, r1, lsl #8
d05a16aa:	f894 c00b 	ldrb.w	ip, [r4, #11]
d05a16ae:	ea40 4103 	orr.w	r1, r0, r3, lsl #16
d05a16b2:	f8d9 0000 	ldr.w	r0, [r9]
d05a16b6:	ea41 630c 	orr.w	r3, r1, ip, lsl #24
d05a16ba:	4978      	ldr	r1, [pc, #480]	; (d05a189c <main+0x650>)
d05a16bc:	68db      	ldr	r3, [r3, #12]
d05a16be:	6e1b      	ldr	r3, [r3, #96]	; 0x60
d05a16c0:	4798      	blx	r3
d05a16c2:	f894 c008 	ldrb.w	ip, [r4, #8]
d05a16c6:	7a61      	ldrb	r1, [r4, #9]
d05a16c8:	2200      	movs	r2, #0
d05a16ca:	7aa3      	ldrb	r3, [r4, #10]
d05a16cc:	ea4c 2001 	orr.w	r0, ip, r1, lsl #8
d05a16d0:	f894 c00b 	ldrb.w	ip, [r4, #11]
d05a16d4:	ea40 4103 	orr.w	r1, r0, r3, lsl #16
d05a16d8:	f8d8 0000 	ldr.w	r0, [r8]
d05a16dc:	ea41 630c 	orr.w	r3, r1, ip, lsl #24
d05a16e0:	496f      	ldr	r1, [pc, #444]	; (d05a18a0 <main+0x654>)
d05a16e2:	68db      	ldr	r3, [r3, #12]
d05a16e4:	6e1b      	ldr	r3, [r3, #96]	; 0x60
d05a16e6:	4798      	blx	r3
d05a16e8:	f894 c008 	ldrb.w	ip, [r4, #8]
d05a16ec:	7a61      	ldrb	r1, [r4, #9]
d05a16ee:	2200      	movs	r2, #0
d05a16f0:	7aa3      	ldrb	r3, [r4, #10]
d05a16f2:	ea4c 2001 	orr.w	r0, ip, r1, lsl #8
d05a16f6:	f894 c00b 	ldrb.w	ip, [r4, #11]
d05a16fa:	ea40 4103 	orr.w	r1, r0, r3, lsl #16
d05a16fe:	6838      	ldr	r0, [r7, #0]
d05a1700:	ea41 630c 	orr.w	r3, r1, ip, lsl #24
d05a1704:	4967      	ldr	r1, [pc, #412]	; (d05a18a4 <main+0x658>)
d05a1706:	68db      	ldr	r3, [r3, #12]
d05a1708:	6e1b      	ldr	r3, [r3, #96]	; 0x60
d05a170a:	4798      	blx	r3
d05a170c:	7a20      	ldrb	r0, [r4, #8]
d05a170e:	7a62      	ldrb	r2, [r4, #9]
d05a1710:	f894 c00a 	ldrb.w	ip, [r4, #10]
d05a1714:	ea40 2102 	orr.w	r1, r0, r2, lsl #8
d05a1718:	7ae3      	ldrb	r3, [r4, #11]
d05a171a:	f8da 0000 	ldr.w	r0, [sl]
d05a171e:	ea41 420c 	orr.w	r2, r1, ip, lsl #16
d05a1722:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d05a1726:	68db      	ldr	r3, [r3, #12]
d05a1728:	6d9b      	ldr	r3, [r3, #88]	; 0x58
d05a172a:	4798      	blx	r3
d05a172c:	7a20      	ldrb	r0, [r4, #8]
d05a172e:	7a61      	ldrb	r1, [r4, #9]
d05a1730:	7aa2      	ldrb	r2, [r4, #10]
d05a1732:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d05a1736:	7ae3      	ldrb	r3, [r4, #11]
d05a1738:	f8d9 0000 	ldr.w	r0, [r9]
d05a173c:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d05a1740:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d05a1744:	68db      	ldr	r3, [r3, #12]
d05a1746:	6d9b      	ldr	r3, [r3, #88]	; 0x58
d05a1748:	4798      	blx	r3
d05a174a:	7a20      	ldrb	r0, [r4, #8]
d05a174c:	7a61      	ldrb	r1, [r4, #9]
d05a174e:	7aa2      	ldrb	r2, [r4, #10]
d05a1750:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d05a1754:	7ae3      	ldrb	r3, [r4, #11]
d05a1756:	f8d8 0000 	ldr.w	r0, [r8]
d05a175a:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d05a175e:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d05a1762:	68db      	ldr	r3, [r3, #12]
d05a1764:	6d9b      	ldr	r3, [r3, #88]	; 0x58
d05a1766:	4798      	blx	r3
d05a1768:	7a20      	ldrb	r0, [r4, #8]
d05a176a:	7a61      	ldrb	r1, [r4, #9]
d05a176c:	7aa2      	ldrb	r2, [r4, #10]
d05a176e:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d05a1772:	7ae3      	ldrb	r3, [r4, #11]
d05a1774:	6838      	ldr	r0, [r7, #0]
d05a1776:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d05a177a:	4f4b      	ldr	r7, [pc, #300]	; (d05a18a8 <main+0x65c>)
d05a177c:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d05a1780:	68db      	ldr	r3, [r3, #12]
d05a1782:	6d9b      	ldr	r3, [r3, #88]	; 0x58
d05a1784:	4798      	blx	r3
d05a1786:	7a20      	ldrb	r0, [r4, #8]
d05a1788:	7a61      	ldrb	r1, [r4, #9]
d05a178a:	7aa2      	ldrb	r2, [r4, #10]
d05a178c:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d05a1790:	7ae3      	ldrb	r3, [r4, #11]
d05a1792:	f8db 0000 	ldr.w	r0, [fp]
d05a1796:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d05a179a:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d05a179e:	68db      	ldr	r3, [r3, #12]
d05a17a0:	6d9b      	ldr	r3, [r3, #88]	; 0x58
d05a17a2:	4798      	blx	r3
d05a17a4:	f44f 3299 	mov.w	r2, #78336	; 0x13200
d05a17a8:	2100      	movs	r1, #0
d05a17aa:	483a      	ldr	r0, [pc, #232]	; (d05a1894 <main+0x648>)
d05a17ac:	f000 f890 	bl	d05a18d0 <memset>
d05a17b0:	7820      	ldrb	r0, [r4, #0]
d05a17b2:	7861      	ldrb	r1, [r4, #1]
d05a17b4:	78a2      	ldrb	r2, [r4, #2]
d05a17b6:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d05a17ba:	78e3      	ldrb	r3, [r4, #3]
d05a17bc:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d05a17c0:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d05a17c4:	689b      	ldr	r3, [r3, #8]
d05a17c6:	4798      	blx	r3
d05a17c8:	4a38      	ldr	r2, [pc, #224]	; (d05a18ac <main+0x660>)
d05a17ca:	6813      	ldr	r3, [r2, #0]
d05a17cc:	4058      	eors	r0, r3
d05a17ce:	6010      	str	r0, [r2, #0]
d05a17d0:	f7fe fde2 	bl	d05a0398 <clear_demo>
d05a17d4:	7a20      	ldrb	r0, [r4, #8]
d05a17d6:	7a61      	ldrb	r1, [r4, #9]
d05a17d8:	7aa2      	ldrb	r2, [r4, #10]
d05a17da:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d05a17de:	7ae3      	ldrb	r3, [r4, #11]
d05a17e0:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d05a17e4:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d05a17e8:	695b      	ldr	r3, [r3, #20]
d05a17ea:	681b      	ldr	r3, [r3, #0]
d05a17ec:	4798      	blx	r3
d05a17ee:	28ff      	cmp	r0, #255	; 0xff
d05a17f0:	7038      	strb	r0, [r7, #0]
d05a17f2:	d049      	beq.n	d05a1888 <main+0x63c>
d05a17f4:	f894 c008 	ldrb.w	ip, [r4, #8]
d05a17f8:	f04f 0e00 	mov.w	lr, #0
d05a17fc:	7a61      	ldrb	r1, [r4, #9]
d05a17fe:	2232      	movs	r2, #50	; 0x32
d05a1800:	7aa3      	ldrb	r3, [r4, #10]
d05a1802:	ea4c 2101 	orr.w	r1, ip, r1, lsl #8
d05a1806:	7ae7      	ldrb	r7, [r4, #11]
d05a1808:	ea41 4303 	orr.w	r3, r1, r3, lsl #16
d05a180c:	4611      	mov	r1, r2
d05a180e:	ea43 6707 	orr.w	r7, r3, r7, lsl #24
d05a1812:	4b27      	ldr	r3, [pc, #156]	; (d05a18b0 <main+0x664>)
d05a1814:	697f      	ldr	r7, [r7, #20]
d05a1816:	f8cd e000 	str.w	lr, [sp]
d05a181a:	68bf      	ldr	r7, [r7, #8]
d05a181c:	47b8      	blx	r7
d05a181e:	b198      	cbz	r0, d05a1848 <main+0x5fc>
d05a1820:	7a20      	ldrb	r0, [r4, #8]
d05a1822:	7a61      	ldrb	r1, [r4, #9]
d05a1824:	7aa2      	ldrb	r2, [r4, #10]
d05a1826:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d05a182a:	7ae3      	ldrb	r3, [r4, #11]
d05a182c:	4f1e      	ldr	r7, [pc, #120]	; (d05a18a8 <main+0x65c>)
d05a182e:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d05a1832:	7838      	ldrb	r0, [r7, #0]
d05a1834:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d05a1838:	695b      	ldr	r3, [r3, #20]
d05a183a:	685b      	ldr	r3, [r3, #4]
d05a183c:	4798      	blx	r3
d05a183e:	23ff      	movs	r3, #255	; 0xff
d05a1840:	4630      	mov	r0, r6
d05a1842:	703b      	strb	r3, [r7, #0]
d05a1844:	f7fe fce4 	bl	d05a0210 <set_paused_state>
d05a1848:	7a23      	ldrb	r3, [r4, #8]
d05a184a:	7a62      	ldrb	r2, [r4, #9]
d05a184c:	7aa1      	ldrb	r1, [r4, #10]
d05a184e:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d05a1852:	7ae2      	ldrb	r2, [r4, #11]
d05a1854:	7828      	ldrb	r0, [r5, #0]
d05a1856:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d05a185a:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d05a185e:	685b      	ldr	r3, [r3, #4]
d05a1860:	68db      	ldr	r3, [r3, #12]
d05a1862:	4798      	blx	r3
d05a1864:	7a23      	ldrb	r3, [r4, #8]
d05a1866:	7a62      	ldrb	r2, [r4, #9]
d05a1868:	7aa1      	ldrb	r1, [r4, #10]
d05a186a:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d05a186e:	7ae2      	ldrb	r2, [r4, #11]
d05a1870:	7828      	ldrb	r0, [r5, #0]
d05a1872:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d05a1876:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d05a187a:	685b      	ldr	r3, [r3, #4]
d05a187c:	695b      	ldr	r3, [r3, #20]
d05a187e:	4798      	blx	r3
d05a1880:	2000      	movs	r0, #0
d05a1882:	b009      	add	sp, #36	; 0x24
d05a1884:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d05a1888:	4630      	mov	r0, r6
d05a188a:	f7fe fcc1 	bl	d05a0210 <set_paused_state>
d05a188e:	e7db      	b.n	d05a1848 <main+0x5fc>
d05a1890:	d05a2a78 	.word	0xd05a2a78
d05a1894:	d05a2a80 	.word	0xd05a2a80
d05a1898:	d05a0485 	.word	0xd05a0485
d05a189c:	d05a11bd 	.word	0xd05a11bd
d05a18a0:	d05a0429 	.word	0xd05a0429
d05a18a4:	d05a04d9 	.word	0xd05a04d9
d05a18a8:	d05a29e0 	.word	0xd05a29e0
d05a18ac:	d05a29e4 	.word	0xd05a29e4
d05a18b0:	d05a1079 	.word	0xd05a1079
d05a18b4:	d05a2a74 	.word	0xd05a2a74
d05a18b8:	d05a290c 	.word	0xd05a290c
d05a18bc:	d05a2938 	.word	0xd05a2938
d05a18c0:	d05a2a6c 	.word	0xd05a2a6c

d05a18c4 <__errno>:
d05a18c4:	4b01      	ldr	r3, [pc, #4]	; (d05a18cc <__errno+0x8>)
d05a18c6:	6818      	ldr	r0, [r3, #0]
d05a18c8:	4770      	bx	lr
d05a18ca:	bf00      	nop
d05a18cc:	d05a29e8 	.word	0xd05a29e8

d05a18d0 <memset>:
d05a18d0:	4402      	add	r2, r0
d05a18d2:	4603      	mov	r3, r0
d05a18d4:	4293      	cmp	r3, r2
d05a18d6:	d100      	bne.n	d05a18da <memset+0xa>
d05a18d8:	4770      	bx	lr
d05a18da:	f803 1b01 	strb.w	r1, [r3], #1
d05a18de:	e7f9      	b.n	d05a18d4 <memset+0x4>

d05a18e0 <setbuf>:
d05a18e0:	2900      	cmp	r1, #0
d05a18e2:	f44f 6380 	mov.w	r3, #1024	; 0x400
d05a18e6:	bf0c      	ite	eq
d05a18e8:	2202      	moveq	r2, #2
d05a18ea:	2200      	movne	r2, #0
d05a18ec:	f000 b800 	b.w	d05a18f0 <setvbuf>

d05a18f0 <setvbuf>:
d05a18f0:	e92d 43f7 	stmdb	sp!, {r0, r1, r2, r4, r5, r6, r7, r8, r9, lr}
d05a18f4:	461d      	mov	r5, r3
d05a18f6:	4b5d      	ldr	r3, [pc, #372]	; (d05a1a6c <setvbuf+0x17c>)
d05a18f8:	681f      	ldr	r7, [r3, #0]
d05a18fa:	4604      	mov	r4, r0
d05a18fc:	460e      	mov	r6, r1
d05a18fe:	4690      	mov	r8, r2
d05a1900:	b127      	cbz	r7, d05a190c <setvbuf+0x1c>
d05a1902:	69bb      	ldr	r3, [r7, #24]
d05a1904:	b913      	cbnz	r3, d05a190c <setvbuf+0x1c>
d05a1906:	4638      	mov	r0, r7
d05a1908:	f000 fa06 	bl	d05a1d18 <__sinit>
d05a190c:	4b58      	ldr	r3, [pc, #352]	; (d05a1a70 <setvbuf+0x180>)
d05a190e:	429c      	cmp	r4, r3
d05a1910:	d167      	bne.n	d05a19e2 <setvbuf+0xf2>
d05a1912:	687c      	ldr	r4, [r7, #4]
d05a1914:	f1b8 0f02 	cmp.w	r8, #2
d05a1918:	d006      	beq.n	d05a1928 <setvbuf+0x38>
d05a191a:	f1b8 0f01 	cmp.w	r8, #1
d05a191e:	f200 809f 	bhi.w	d05a1a60 <setvbuf+0x170>
d05a1922:	2d00      	cmp	r5, #0
d05a1924:	f2c0 809c 	blt.w	d05a1a60 <setvbuf+0x170>
d05a1928:	6e63      	ldr	r3, [r4, #100]	; 0x64
d05a192a:	07db      	lsls	r3, r3, #31
d05a192c:	d405      	bmi.n	d05a193a <setvbuf+0x4a>
d05a192e:	89a3      	ldrh	r3, [r4, #12]
d05a1930:	0598      	lsls	r0, r3, #22
d05a1932:	d402      	bmi.n	d05a193a <setvbuf+0x4a>
d05a1934:	6da0      	ldr	r0, [r4, #88]	; 0x58
d05a1936:	f000 fa8d 	bl	d05a1e54 <__retarget_lock_acquire_recursive>
d05a193a:	4621      	mov	r1, r4
d05a193c:	4638      	mov	r0, r7
d05a193e:	f000 f957 	bl	d05a1bf0 <_fflush_r>
d05a1942:	6b61      	ldr	r1, [r4, #52]	; 0x34
d05a1944:	b141      	cbz	r1, d05a1958 <setvbuf+0x68>
d05a1946:	f104 0344 	add.w	r3, r4, #68	; 0x44
d05a194a:	4299      	cmp	r1, r3
d05a194c:	d002      	beq.n	d05a1954 <setvbuf+0x64>
d05a194e:	4638      	mov	r0, r7
d05a1950:	f000 faae 	bl	d05a1eb0 <_free_r>
d05a1954:	2300      	movs	r3, #0
d05a1956:	6363      	str	r3, [r4, #52]	; 0x34
d05a1958:	2300      	movs	r3, #0
d05a195a:	61a3      	str	r3, [r4, #24]
d05a195c:	6063      	str	r3, [r4, #4]
d05a195e:	89a3      	ldrh	r3, [r4, #12]
d05a1960:	0619      	lsls	r1, r3, #24
d05a1962:	d503      	bpl.n	d05a196c <setvbuf+0x7c>
d05a1964:	6921      	ldr	r1, [r4, #16]
d05a1966:	4638      	mov	r0, r7
d05a1968:	f000 faa2 	bl	d05a1eb0 <_free_r>
d05a196c:	89a3      	ldrh	r3, [r4, #12]
d05a196e:	f423 634a 	bic.w	r3, r3, #3232	; 0xca0
d05a1972:	f023 0303 	bic.w	r3, r3, #3
d05a1976:	f1b8 0f02 	cmp.w	r8, #2
d05a197a:	81a3      	strh	r3, [r4, #12]
d05a197c:	d06c      	beq.n	d05a1a58 <setvbuf+0x168>
d05a197e:	ab01      	add	r3, sp, #4
d05a1980:	466a      	mov	r2, sp
d05a1982:	4621      	mov	r1, r4
d05a1984:	4638      	mov	r0, r7
d05a1986:	f000 fa67 	bl	d05a1e58 <__swhatbuf_r>
d05a198a:	89a3      	ldrh	r3, [r4, #12]
d05a198c:	4318      	orrs	r0, r3
d05a198e:	81a0      	strh	r0, [r4, #12]
d05a1990:	2d00      	cmp	r5, #0
d05a1992:	d130      	bne.n	d05a19f6 <setvbuf+0x106>
d05a1994:	9d00      	ldr	r5, [sp, #0]
d05a1996:	4628      	mov	r0, r5
d05a1998:	f000 fa82 	bl	d05a1ea0 <malloc>
d05a199c:	4606      	mov	r6, r0
d05a199e:	2800      	cmp	r0, #0
d05a19a0:	d155      	bne.n	d05a1a4e <setvbuf+0x15e>
d05a19a2:	f8dd 9000 	ldr.w	r9, [sp]
d05a19a6:	45a9      	cmp	r9, r5
d05a19a8:	d14a      	bne.n	d05a1a40 <setvbuf+0x150>
d05a19aa:	f04f 35ff 	mov.w	r5, #4294967295	; 0xffffffff
d05a19ae:	2200      	movs	r2, #0
d05a19b0:	60a2      	str	r2, [r4, #8]
d05a19b2:	f104 0247 	add.w	r2, r4, #71	; 0x47
d05a19b6:	6022      	str	r2, [r4, #0]
d05a19b8:	6122      	str	r2, [r4, #16]
d05a19ba:	2201      	movs	r2, #1
d05a19bc:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
d05a19c0:	6162      	str	r2, [r4, #20]
d05a19c2:	6e62      	ldr	r2, [r4, #100]	; 0x64
d05a19c4:	f043 0302 	orr.w	r3, r3, #2
d05a19c8:	07d2      	lsls	r2, r2, #31
d05a19ca:	81a3      	strh	r3, [r4, #12]
d05a19cc:	d405      	bmi.n	d05a19da <setvbuf+0xea>
d05a19ce:	f413 7f00 	tst.w	r3, #512	; 0x200
d05a19d2:	d102      	bne.n	d05a19da <setvbuf+0xea>
d05a19d4:	6da0      	ldr	r0, [r4, #88]	; 0x58
d05a19d6:	f000 fa3e 	bl	d05a1e56 <__retarget_lock_release_recursive>
d05a19da:	4628      	mov	r0, r5
d05a19dc:	b003      	add	sp, #12
d05a19de:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
d05a19e2:	4b24      	ldr	r3, [pc, #144]	; (d05a1a74 <setvbuf+0x184>)
d05a19e4:	429c      	cmp	r4, r3
d05a19e6:	d101      	bne.n	d05a19ec <setvbuf+0xfc>
d05a19e8:	68bc      	ldr	r4, [r7, #8]
d05a19ea:	e793      	b.n	d05a1914 <setvbuf+0x24>
d05a19ec:	4b22      	ldr	r3, [pc, #136]	; (d05a1a78 <setvbuf+0x188>)
d05a19ee:	429c      	cmp	r4, r3
d05a19f0:	bf08      	it	eq
d05a19f2:	68fc      	ldreq	r4, [r7, #12]
d05a19f4:	e78e      	b.n	d05a1914 <setvbuf+0x24>
d05a19f6:	2e00      	cmp	r6, #0
d05a19f8:	d0cd      	beq.n	d05a1996 <setvbuf+0xa6>
d05a19fa:	69bb      	ldr	r3, [r7, #24]
d05a19fc:	b913      	cbnz	r3, d05a1a04 <setvbuf+0x114>
d05a19fe:	4638      	mov	r0, r7
d05a1a00:	f000 f98a 	bl	d05a1d18 <__sinit>
d05a1a04:	f1b8 0f01 	cmp.w	r8, #1
d05a1a08:	bf08      	it	eq
d05a1a0a:	89a3      	ldrheq	r3, [r4, #12]
d05a1a0c:	6026      	str	r6, [r4, #0]
d05a1a0e:	bf04      	itt	eq
d05a1a10:	f043 0301 	orreq.w	r3, r3, #1
d05a1a14:	81a3      	strheq	r3, [r4, #12]
d05a1a16:	89a2      	ldrh	r2, [r4, #12]
d05a1a18:	f012 0308 	ands.w	r3, r2, #8
d05a1a1c:	e9c4 6504 	strd	r6, r5, [r4, #16]
d05a1a20:	d01c      	beq.n	d05a1a5c <setvbuf+0x16c>
d05a1a22:	07d3      	lsls	r3, r2, #31
d05a1a24:	bf41      	itttt	mi
d05a1a26:	2300      	movmi	r3, #0
d05a1a28:	426d      	negmi	r5, r5
d05a1a2a:	60a3      	strmi	r3, [r4, #8]
d05a1a2c:	61a5      	strmi	r5, [r4, #24]
d05a1a2e:	bf58      	it	pl
d05a1a30:	60a5      	strpl	r5, [r4, #8]
d05a1a32:	6e65      	ldr	r5, [r4, #100]	; 0x64
d05a1a34:	f015 0501 	ands.w	r5, r5, #1
d05a1a38:	d115      	bne.n	d05a1a66 <setvbuf+0x176>
d05a1a3a:	f412 7f00 	tst.w	r2, #512	; 0x200
d05a1a3e:	e7c8      	b.n	d05a19d2 <setvbuf+0xe2>
d05a1a40:	4648      	mov	r0, r9
d05a1a42:	f000 fa2d 	bl	d05a1ea0 <malloc>
d05a1a46:	4606      	mov	r6, r0
d05a1a48:	2800      	cmp	r0, #0
d05a1a4a:	d0ae      	beq.n	d05a19aa <setvbuf+0xba>
d05a1a4c:	464d      	mov	r5, r9
d05a1a4e:	89a3      	ldrh	r3, [r4, #12]
d05a1a50:	f043 0380 	orr.w	r3, r3, #128	; 0x80
d05a1a54:	81a3      	strh	r3, [r4, #12]
d05a1a56:	e7d0      	b.n	d05a19fa <setvbuf+0x10a>
d05a1a58:	2500      	movs	r5, #0
d05a1a5a:	e7a8      	b.n	d05a19ae <setvbuf+0xbe>
d05a1a5c:	60a3      	str	r3, [r4, #8]
d05a1a5e:	e7e8      	b.n	d05a1a32 <setvbuf+0x142>
d05a1a60:	f04f 35ff 	mov.w	r5, #4294967295	; 0xffffffff
d05a1a64:	e7b9      	b.n	d05a19da <setvbuf+0xea>
d05a1a66:	2500      	movs	r5, #0
d05a1a68:	e7b7      	b.n	d05a19da <setvbuf+0xea>
d05a1a6a:	bf00      	nop
d05a1a6c:	d05a29e8 	.word	0xd05a29e8
d05a1a70:	d05a2964 	.word	0xd05a2964
d05a1a74:	d05a2984 	.word	0xd05a2984
d05a1a78:	d05a2944 	.word	0xd05a2944

d05a1a7c <sniprintf>:
d05a1a7c:	b40c      	push	{r2, r3}
d05a1a7e:	b530      	push	{r4, r5, lr}
d05a1a80:	4b17      	ldr	r3, [pc, #92]	; (d05a1ae0 <sniprintf+0x64>)
d05a1a82:	1e0c      	subs	r4, r1, #0
d05a1a84:	681d      	ldr	r5, [r3, #0]
d05a1a86:	b09d      	sub	sp, #116	; 0x74
d05a1a88:	da08      	bge.n	d05a1a9c <sniprintf+0x20>
d05a1a8a:	238b      	movs	r3, #139	; 0x8b
d05a1a8c:	602b      	str	r3, [r5, #0]
d05a1a8e:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d05a1a92:	b01d      	add	sp, #116	; 0x74
d05a1a94:	e8bd 4030 	ldmia.w	sp!, {r4, r5, lr}
d05a1a98:	b002      	add	sp, #8
d05a1a9a:	4770      	bx	lr
d05a1a9c:	f44f 7302 	mov.w	r3, #520	; 0x208
d05a1aa0:	f8ad 3014 	strh.w	r3, [sp, #20]
d05a1aa4:	bf14      	ite	ne
d05a1aa6:	f104 33ff 	addne.w	r3, r4, #4294967295	; 0xffffffff
d05a1aaa:	4623      	moveq	r3, r4
d05a1aac:	9304      	str	r3, [sp, #16]
d05a1aae:	9307      	str	r3, [sp, #28]
d05a1ab0:	f64f 73ff 	movw	r3, #65535	; 0xffff
d05a1ab4:	9002      	str	r0, [sp, #8]
d05a1ab6:	9006      	str	r0, [sp, #24]
d05a1ab8:	f8ad 3016 	strh.w	r3, [sp, #22]
d05a1abc:	9a20      	ldr	r2, [sp, #128]	; 0x80
d05a1abe:	ab21      	add	r3, sp, #132	; 0x84
d05a1ac0:	a902      	add	r1, sp, #8
d05a1ac2:	4628      	mov	r0, r5
d05a1ac4:	9301      	str	r3, [sp, #4]
d05a1ac6:	f000 faf9 	bl	d05a20bc <_svfiprintf_r>
d05a1aca:	1c43      	adds	r3, r0, #1
d05a1acc:	bfbc      	itt	lt
d05a1ace:	238b      	movlt	r3, #139	; 0x8b
d05a1ad0:	602b      	strlt	r3, [r5, #0]
d05a1ad2:	2c00      	cmp	r4, #0
d05a1ad4:	d0dd      	beq.n	d05a1a92 <sniprintf+0x16>
d05a1ad6:	9b02      	ldr	r3, [sp, #8]
d05a1ad8:	2200      	movs	r2, #0
d05a1ada:	701a      	strb	r2, [r3, #0]
d05a1adc:	e7d9      	b.n	d05a1a92 <sniprintf+0x16>
d05a1ade:	bf00      	nop
d05a1ae0:	d05a29e8 	.word	0xd05a29e8

d05a1ae4 <__sflush_r>:
d05a1ae4:	898a      	ldrh	r2, [r1, #12]
d05a1ae6:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
d05a1aea:	4605      	mov	r5, r0
d05a1aec:	0710      	lsls	r0, r2, #28
d05a1aee:	460c      	mov	r4, r1
d05a1af0:	d458      	bmi.n	d05a1ba4 <__sflush_r+0xc0>
d05a1af2:	684b      	ldr	r3, [r1, #4]
d05a1af4:	2b00      	cmp	r3, #0
d05a1af6:	dc05      	bgt.n	d05a1b04 <__sflush_r+0x20>
d05a1af8:	6c0b      	ldr	r3, [r1, #64]	; 0x40
d05a1afa:	2b00      	cmp	r3, #0
d05a1afc:	dc02      	bgt.n	d05a1b04 <__sflush_r+0x20>
d05a1afe:	2000      	movs	r0, #0
d05a1b00:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
d05a1b04:	6ae6      	ldr	r6, [r4, #44]	; 0x2c
d05a1b06:	2e00      	cmp	r6, #0
d05a1b08:	d0f9      	beq.n	d05a1afe <__sflush_r+0x1a>
d05a1b0a:	2300      	movs	r3, #0
d05a1b0c:	f412 5280 	ands.w	r2, r2, #4096	; 0x1000
d05a1b10:	682f      	ldr	r7, [r5, #0]
d05a1b12:	602b      	str	r3, [r5, #0]
d05a1b14:	d032      	beq.n	d05a1b7c <__sflush_r+0x98>
d05a1b16:	6d60      	ldr	r0, [r4, #84]	; 0x54
d05a1b18:	89a3      	ldrh	r3, [r4, #12]
d05a1b1a:	075a      	lsls	r2, r3, #29
d05a1b1c:	d505      	bpl.n	d05a1b2a <__sflush_r+0x46>
d05a1b1e:	6863      	ldr	r3, [r4, #4]
d05a1b20:	1ac0      	subs	r0, r0, r3
d05a1b22:	6b63      	ldr	r3, [r4, #52]	; 0x34
d05a1b24:	b10b      	cbz	r3, d05a1b2a <__sflush_r+0x46>
d05a1b26:	6c23      	ldr	r3, [r4, #64]	; 0x40
d05a1b28:	1ac0      	subs	r0, r0, r3
d05a1b2a:	2300      	movs	r3, #0
d05a1b2c:	4602      	mov	r2, r0
d05a1b2e:	6ae6      	ldr	r6, [r4, #44]	; 0x2c
d05a1b30:	6a21      	ldr	r1, [r4, #32]
d05a1b32:	4628      	mov	r0, r5
d05a1b34:	47b0      	blx	r6
d05a1b36:	1c43      	adds	r3, r0, #1
d05a1b38:	89a3      	ldrh	r3, [r4, #12]
d05a1b3a:	d106      	bne.n	d05a1b4a <__sflush_r+0x66>
d05a1b3c:	6829      	ldr	r1, [r5, #0]
d05a1b3e:	291d      	cmp	r1, #29
d05a1b40:	d82c      	bhi.n	d05a1b9c <__sflush_r+0xb8>
d05a1b42:	4a2a      	ldr	r2, [pc, #168]	; (d05a1bec <__sflush_r+0x108>)
d05a1b44:	40ca      	lsrs	r2, r1
d05a1b46:	07d6      	lsls	r6, r2, #31
d05a1b48:	d528      	bpl.n	d05a1b9c <__sflush_r+0xb8>
d05a1b4a:	2200      	movs	r2, #0
d05a1b4c:	6062      	str	r2, [r4, #4]
d05a1b4e:	04d9      	lsls	r1, r3, #19
d05a1b50:	6922      	ldr	r2, [r4, #16]
d05a1b52:	6022      	str	r2, [r4, #0]
d05a1b54:	d504      	bpl.n	d05a1b60 <__sflush_r+0x7c>
d05a1b56:	1c42      	adds	r2, r0, #1
d05a1b58:	d101      	bne.n	d05a1b5e <__sflush_r+0x7a>
d05a1b5a:	682b      	ldr	r3, [r5, #0]
d05a1b5c:	b903      	cbnz	r3, d05a1b60 <__sflush_r+0x7c>
d05a1b5e:	6560      	str	r0, [r4, #84]	; 0x54
d05a1b60:	6b61      	ldr	r1, [r4, #52]	; 0x34
d05a1b62:	602f      	str	r7, [r5, #0]
d05a1b64:	2900      	cmp	r1, #0
d05a1b66:	d0ca      	beq.n	d05a1afe <__sflush_r+0x1a>
d05a1b68:	f104 0344 	add.w	r3, r4, #68	; 0x44
d05a1b6c:	4299      	cmp	r1, r3
d05a1b6e:	d002      	beq.n	d05a1b76 <__sflush_r+0x92>
d05a1b70:	4628      	mov	r0, r5
d05a1b72:	f000 f99d 	bl	d05a1eb0 <_free_r>
d05a1b76:	2000      	movs	r0, #0
d05a1b78:	6360      	str	r0, [r4, #52]	; 0x34
d05a1b7a:	e7c1      	b.n	d05a1b00 <__sflush_r+0x1c>
d05a1b7c:	6a21      	ldr	r1, [r4, #32]
d05a1b7e:	2301      	movs	r3, #1
d05a1b80:	4628      	mov	r0, r5
d05a1b82:	47b0      	blx	r6
d05a1b84:	1c41      	adds	r1, r0, #1
d05a1b86:	d1c7      	bne.n	d05a1b18 <__sflush_r+0x34>
d05a1b88:	682b      	ldr	r3, [r5, #0]
d05a1b8a:	2b00      	cmp	r3, #0
d05a1b8c:	d0c4      	beq.n	d05a1b18 <__sflush_r+0x34>
d05a1b8e:	2b1d      	cmp	r3, #29
d05a1b90:	d001      	beq.n	d05a1b96 <__sflush_r+0xb2>
d05a1b92:	2b16      	cmp	r3, #22
d05a1b94:	d101      	bne.n	d05a1b9a <__sflush_r+0xb6>
d05a1b96:	602f      	str	r7, [r5, #0]
d05a1b98:	e7b1      	b.n	d05a1afe <__sflush_r+0x1a>
d05a1b9a:	89a3      	ldrh	r3, [r4, #12]
d05a1b9c:	f043 0340 	orr.w	r3, r3, #64	; 0x40
d05a1ba0:	81a3      	strh	r3, [r4, #12]
d05a1ba2:	e7ad      	b.n	d05a1b00 <__sflush_r+0x1c>
d05a1ba4:	690f      	ldr	r7, [r1, #16]
d05a1ba6:	2f00      	cmp	r7, #0
d05a1ba8:	d0a9      	beq.n	d05a1afe <__sflush_r+0x1a>
d05a1baa:	0793      	lsls	r3, r2, #30
d05a1bac:	680e      	ldr	r6, [r1, #0]
d05a1bae:	bf08      	it	eq
d05a1bb0:	694b      	ldreq	r3, [r1, #20]
d05a1bb2:	600f      	str	r7, [r1, #0]
d05a1bb4:	bf18      	it	ne
d05a1bb6:	2300      	movne	r3, #0
d05a1bb8:	eba6 0807 	sub.w	r8, r6, r7
d05a1bbc:	608b      	str	r3, [r1, #8]
d05a1bbe:	f1b8 0f00 	cmp.w	r8, #0
d05a1bc2:	dd9c      	ble.n	d05a1afe <__sflush_r+0x1a>
d05a1bc4:	6a21      	ldr	r1, [r4, #32]
d05a1bc6:	6aa6      	ldr	r6, [r4, #40]	; 0x28
d05a1bc8:	4643      	mov	r3, r8
d05a1bca:	463a      	mov	r2, r7
d05a1bcc:	4628      	mov	r0, r5
d05a1bce:	47b0      	blx	r6
d05a1bd0:	2800      	cmp	r0, #0
d05a1bd2:	dc06      	bgt.n	d05a1be2 <__sflush_r+0xfe>
d05a1bd4:	89a3      	ldrh	r3, [r4, #12]
d05a1bd6:	f043 0340 	orr.w	r3, r3, #64	; 0x40
d05a1bda:	81a3      	strh	r3, [r4, #12]
d05a1bdc:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d05a1be0:	e78e      	b.n	d05a1b00 <__sflush_r+0x1c>
d05a1be2:	4407      	add	r7, r0
d05a1be4:	eba8 0800 	sub.w	r8, r8, r0
d05a1be8:	e7e9      	b.n	d05a1bbe <__sflush_r+0xda>
d05a1bea:	bf00      	nop
d05a1bec:	20400001 	.word	0x20400001

d05a1bf0 <_fflush_r>:
d05a1bf0:	b538      	push	{r3, r4, r5, lr}
d05a1bf2:	690b      	ldr	r3, [r1, #16]
d05a1bf4:	4605      	mov	r5, r0
d05a1bf6:	460c      	mov	r4, r1
d05a1bf8:	b913      	cbnz	r3, d05a1c00 <_fflush_r+0x10>
d05a1bfa:	2500      	movs	r5, #0
d05a1bfc:	4628      	mov	r0, r5
d05a1bfe:	bd38      	pop	{r3, r4, r5, pc}
d05a1c00:	b118      	cbz	r0, d05a1c0a <_fflush_r+0x1a>
d05a1c02:	6983      	ldr	r3, [r0, #24]
d05a1c04:	b90b      	cbnz	r3, d05a1c0a <_fflush_r+0x1a>
d05a1c06:	f000 f887 	bl	d05a1d18 <__sinit>
d05a1c0a:	4b14      	ldr	r3, [pc, #80]	; (d05a1c5c <_fflush_r+0x6c>)
d05a1c0c:	429c      	cmp	r4, r3
d05a1c0e:	d11b      	bne.n	d05a1c48 <_fflush_r+0x58>
d05a1c10:	686c      	ldr	r4, [r5, #4]
d05a1c12:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
d05a1c16:	2b00      	cmp	r3, #0
d05a1c18:	d0ef      	beq.n	d05a1bfa <_fflush_r+0xa>
d05a1c1a:	6e62      	ldr	r2, [r4, #100]	; 0x64
d05a1c1c:	07d0      	lsls	r0, r2, #31
d05a1c1e:	d404      	bmi.n	d05a1c2a <_fflush_r+0x3a>
d05a1c20:	0599      	lsls	r1, r3, #22
d05a1c22:	d402      	bmi.n	d05a1c2a <_fflush_r+0x3a>
d05a1c24:	6da0      	ldr	r0, [r4, #88]	; 0x58
d05a1c26:	f000 f915 	bl	d05a1e54 <__retarget_lock_acquire_recursive>
d05a1c2a:	4628      	mov	r0, r5
d05a1c2c:	4621      	mov	r1, r4
d05a1c2e:	f7ff ff59 	bl	d05a1ae4 <__sflush_r>
d05a1c32:	6e63      	ldr	r3, [r4, #100]	; 0x64
d05a1c34:	07da      	lsls	r2, r3, #31
d05a1c36:	4605      	mov	r5, r0
d05a1c38:	d4e0      	bmi.n	d05a1bfc <_fflush_r+0xc>
d05a1c3a:	89a3      	ldrh	r3, [r4, #12]
d05a1c3c:	059b      	lsls	r3, r3, #22
d05a1c3e:	d4dd      	bmi.n	d05a1bfc <_fflush_r+0xc>
d05a1c40:	6da0      	ldr	r0, [r4, #88]	; 0x58
d05a1c42:	f000 f908 	bl	d05a1e56 <__retarget_lock_release_recursive>
d05a1c46:	e7d9      	b.n	d05a1bfc <_fflush_r+0xc>
d05a1c48:	4b05      	ldr	r3, [pc, #20]	; (d05a1c60 <_fflush_r+0x70>)
d05a1c4a:	429c      	cmp	r4, r3
d05a1c4c:	d101      	bne.n	d05a1c52 <_fflush_r+0x62>
d05a1c4e:	68ac      	ldr	r4, [r5, #8]
d05a1c50:	e7df      	b.n	d05a1c12 <_fflush_r+0x22>
d05a1c52:	4b04      	ldr	r3, [pc, #16]	; (d05a1c64 <_fflush_r+0x74>)
d05a1c54:	429c      	cmp	r4, r3
d05a1c56:	bf08      	it	eq
d05a1c58:	68ec      	ldreq	r4, [r5, #12]
d05a1c5a:	e7da      	b.n	d05a1c12 <_fflush_r+0x22>
d05a1c5c:	d05a2964 	.word	0xd05a2964
d05a1c60:	d05a2984 	.word	0xd05a2984
d05a1c64:	d05a2944 	.word	0xd05a2944

d05a1c68 <std>:
d05a1c68:	2300      	movs	r3, #0
d05a1c6a:	b510      	push	{r4, lr}
d05a1c6c:	4604      	mov	r4, r0
d05a1c6e:	e9c0 3300 	strd	r3, r3, [r0]
d05a1c72:	e9c0 3304 	strd	r3, r3, [r0, #16]
d05a1c76:	6083      	str	r3, [r0, #8]
d05a1c78:	8181      	strh	r1, [r0, #12]
d05a1c7a:	6643      	str	r3, [r0, #100]	; 0x64
d05a1c7c:	81c2      	strh	r2, [r0, #14]
d05a1c7e:	6183      	str	r3, [r0, #24]
d05a1c80:	4619      	mov	r1, r3
d05a1c82:	2208      	movs	r2, #8
d05a1c84:	305c      	adds	r0, #92	; 0x5c
d05a1c86:	f7ff fe23 	bl	d05a18d0 <memset>
d05a1c8a:	4b05      	ldr	r3, [pc, #20]	; (d05a1ca0 <std+0x38>)
d05a1c8c:	6263      	str	r3, [r4, #36]	; 0x24
d05a1c8e:	4b05      	ldr	r3, [pc, #20]	; (d05a1ca4 <std+0x3c>)
d05a1c90:	62a3      	str	r3, [r4, #40]	; 0x28
d05a1c92:	4b05      	ldr	r3, [pc, #20]	; (d05a1ca8 <std+0x40>)
d05a1c94:	62e3      	str	r3, [r4, #44]	; 0x2c
d05a1c96:	4b05      	ldr	r3, [pc, #20]	; (d05a1cac <std+0x44>)
d05a1c98:	6224      	str	r4, [r4, #32]
d05a1c9a:	6323      	str	r3, [r4, #48]	; 0x30
d05a1c9c:	bd10      	pop	{r4, pc}
d05a1c9e:	bf00      	nop
d05a1ca0:	d05a25e5 	.word	0xd05a25e5
d05a1ca4:	d05a2607 	.word	0xd05a2607
d05a1ca8:	d05a263f 	.word	0xd05a263f
d05a1cac:	d05a2663 	.word	0xd05a2663

d05a1cb0 <_cleanup_r>:
d05a1cb0:	4901      	ldr	r1, [pc, #4]	; (d05a1cb8 <_cleanup_r+0x8>)
d05a1cb2:	f000 b8af 	b.w	d05a1e14 <_fwalk_reent>
d05a1cb6:	bf00      	nop
d05a1cb8:	d05a1bf1 	.word	0xd05a1bf1

d05a1cbc <__sfmoreglue>:
d05a1cbc:	b570      	push	{r4, r5, r6, lr}
d05a1cbe:	1e4a      	subs	r2, r1, #1
d05a1cc0:	2568      	movs	r5, #104	; 0x68
d05a1cc2:	4355      	muls	r5, r2
d05a1cc4:	460e      	mov	r6, r1
d05a1cc6:	f105 0174 	add.w	r1, r5, #116	; 0x74
d05a1cca:	f000 f941 	bl	d05a1f50 <_malloc_r>
d05a1cce:	4604      	mov	r4, r0
d05a1cd0:	b140      	cbz	r0, d05a1ce4 <__sfmoreglue+0x28>
d05a1cd2:	2100      	movs	r1, #0
d05a1cd4:	e9c0 1600 	strd	r1, r6, [r0]
d05a1cd8:	300c      	adds	r0, #12
d05a1cda:	60a0      	str	r0, [r4, #8]
d05a1cdc:	f105 0268 	add.w	r2, r5, #104	; 0x68
d05a1ce0:	f7ff fdf6 	bl	d05a18d0 <memset>
d05a1ce4:	4620      	mov	r0, r4
d05a1ce6:	bd70      	pop	{r4, r5, r6, pc}

d05a1ce8 <__sfp_lock_acquire>:
d05a1ce8:	4801      	ldr	r0, [pc, #4]	; (d05a1cf0 <__sfp_lock_acquire+0x8>)
d05a1cea:	f000 b8b3 	b.w	d05a1e54 <__retarget_lock_acquire_recursive>
d05a1cee:	bf00      	nop
d05a1cf0:	d05b5d10 	.word	0xd05b5d10

d05a1cf4 <__sfp_lock_release>:
d05a1cf4:	4801      	ldr	r0, [pc, #4]	; (d05a1cfc <__sfp_lock_release+0x8>)
d05a1cf6:	f000 b8ae 	b.w	d05a1e56 <__retarget_lock_release_recursive>
d05a1cfa:	bf00      	nop
d05a1cfc:	d05b5d10 	.word	0xd05b5d10

d05a1d00 <__sinit_lock_acquire>:
d05a1d00:	4801      	ldr	r0, [pc, #4]	; (d05a1d08 <__sinit_lock_acquire+0x8>)
d05a1d02:	f000 b8a7 	b.w	d05a1e54 <__retarget_lock_acquire_recursive>
d05a1d06:	bf00      	nop
d05a1d08:	d05b5d0b 	.word	0xd05b5d0b

d05a1d0c <__sinit_lock_release>:
d05a1d0c:	4801      	ldr	r0, [pc, #4]	; (d05a1d14 <__sinit_lock_release+0x8>)
d05a1d0e:	f000 b8a2 	b.w	d05a1e56 <__retarget_lock_release_recursive>
d05a1d12:	bf00      	nop
d05a1d14:	d05b5d0b 	.word	0xd05b5d0b

d05a1d18 <__sinit>:
d05a1d18:	b510      	push	{r4, lr}
d05a1d1a:	4604      	mov	r4, r0
d05a1d1c:	f7ff fff0 	bl	d05a1d00 <__sinit_lock_acquire>
d05a1d20:	69a3      	ldr	r3, [r4, #24]
d05a1d22:	b11b      	cbz	r3, d05a1d2c <__sinit+0x14>
d05a1d24:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
d05a1d28:	f7ff bff0 	b.w	d05a1d0c <__sinit_lock_release>
d05a1d2c:	e9c4 3312 	strd	r3, r3, [r4, #72]	; 0x48
d05a1d30:	6523      	str	r3, [r4, #80]	; 0x50
d05a1d32:	4b13      	ldr	r3, [pc, #76]	; (d05a1d80 <__sinit+0x68>)
d05a1d34:	4a13      	ldr	r2, [pc, #76]	; (d05a1d84 <__sinit+0x6c>)
d05a1d36:	681b      	ldr	r3, [r3, #0]
d05a1d38:	62a2      	str	r2, [r4, #40]	; 0x28
d05a1d3a:	42a3      	cmp	r3, r4
d05a1d3c:	bf04      	itt	eq
d05a1d3e:	2301      	moveq	r3, #1
d05a1d40:	61a3      	streq	r3, [r4, #24]
d05a1d42:	4620      	mov	r0, r4
d05a1d44:	f000 f820 	bl	d05a1d88 <__sfp>
d05a1d48:	6060      	str	r0, [r4, #4]
d05a1d4a:	4620      	mov	r0, r4
d05a1d4c:	f000 f81c 	bl	d05a1d88 <__sfp>
d05a1d50:	60a0      	str	r0, [r4, #8]
d05a1d52:	4620      	mov	r0, r4
d05a1d54:	f000 f818 	bl	d05a1d88 <__sfp>
d05a1d58:	2200      	movs	r2, #0
d05a1d5a:	60e0      	str	r0, [r4, #12]
d05a1d5c:	2104      	movs	r1, #4
d05a1d5e:	6860      	ldr	r0, [r4, #4]
d05a1d60:	f7ff ff82 	bl	d05a1c68 <std>
d05a1d64:	68a0      	ldr	r0, [r4, #8]
d05a1d66:	2201      	movs	r2, #1
d05a1d68:	2109      	movs	r1, #9
d05a1d6a:	f7ff ff7d 	bl	d05a1c68 <std>
d05a1d6e:	68e0      	ldr	r0, [r4, #12]
d05a1d70:	2202      	movs	r2, #2
d05a1d72:	2112      	movs	r1, #18
d05a1d74:	f7ff ff78 	bl	d05a1c68 <std>
d05a1d78:	2301      	movs	r3, #1
d05a1d7a:	61a3      	str	r3, [r4, #24]
d05a1d7c:	e7d2      	b.n	d05a1d24 <__sinit+0xc>
d05a1d7e:	bf00      	nop
d05a1d80:	d05a2940 	.word	0xd05a2940
d05a1d84:	d05a1cb1 	.word	0xd05a1cb1

d05a1d88 <__sfp>:
d05a1d88:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d05a1d8a:	4607      	mov	r7, r0
d05a1d8c:	f7ff ffac 	bl	d05a1ce8 <__sfp_lock_acquire>
d05a1d90:	4b1e      	ldr	r3, [pc, #120]	; (d05a1e0c <__sfp+0x84>)
d05a1d92:	681e      	ldr	r6, [r3, #0]
d05a1d94:	69b3      	ldr	r3, [r6, #24]
d05a1d96:	b913      	cbnz	r3, d05a1d9e <__sfp+0x16>
d05a1d98:	4630      	mov	r0, r6
d05a1d9a:	f7ff ffbd 	bl	d05a1d18 <__sinit>
d05a1d9e:	3648      	adds	r6, #72	; 0x48
d05a1da0:	e9d6 3401 	ldrd	r3, r4, [r6, #4]
d05a1da4:	3b01      	subs	r3, #1
d05a1da6:	d503      	bpl.n	d05a1db0 <__sfp+0x28>
d05a1da8:	6833      	ldr	r3, [r6, #0]
d05a1daa:	b30b      	cbz	r3, d05a1df0 <__sfp+0x68>
d05a1dac:	6836      	ldr	r6, [r6, #0]
d05a1dae:	e7f7      	b.n	d05a1da0 <__sfp+0x18>
d05a1db0:	f9b4 500c 	ldrsh.w	r5, [r4, #12]
d05a1db4:	b9d5      	cbnz	r5, d05a1dec <__sfp+0x64>
d05a1db6:	4b16      	ldr	r3, [pc, #88]	; (d05a1e10 <__sfp+0x88>)
d05a1db8:	60e3      	str	r3, [r4, #12]
d05a1dba:	f104 0058 	add.w	r0, r4, #88	; 0x58
d05a1dbe:	6665      	str	r5, [r4, #100]	; 0x64
d05a1dc0:	f000 f847 	bl	d05a1e52 <__retarget_lock_init_recursive>
d05a1dc4:	f7ff ff96 	bl	d05a1cf4 <__sfp_lock_release>
d05a1dc8:	e9c4 5501 	strd	r5, r5, [r4, #4]
d05a1dcc:	e9c4 5504 	strd	r5, r5, [r4, #16]
d05a1dd0:	6025      	str	r5, [r4, #0]
d05a1dd2:	61a5      	str	r5, [r4, #24]
d05a1dd4:	2208      	movs	r2, #8
d05a1dd6:	4629      	mov	r1, r5
d05a1dd8:	f104 005c 	add.w	r0, r4, #92	; 0x5c
d05a1ddc:	f7ff fd78 	bl	d05a18d0 <memset>
d05a1de0:	e9c4 550d 	strd	r5, r5, [r4, #52]	; 0x34
d05a1de4:	e9c4 5512 	strd	r5, r5, [r4, #72]	; 0x48
d05a1de8:	4620      	mov	r0, r4
d05a1dea:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d05a1dec:	3468      	adds	r4, #104	; 0x68
d05a1dee:	e7d9      	b.n	d05a1da4 <__sfp+0x1c>
d05a1df0:	2104      	movs	r1, #4
d05a1df2:	4638      	mov	r0, r7
d05a1df4:	f7ff ff62 	bl	d05a1cbc <__sfmoreglue>
d05a1df8:	4604      	mov	r4, r0
d05a1dfa:	6030      	str	r0, [r6, #0]
d05a1dfc:	2800      	cmp	r0, #0
d05a1dfe:	d1d5      	bne.n	d05a1dac <__sfp+0x24>
d05a1e00:	f7ff ff78 	bl	d05a1cf4 <__sfp_lock_release>
d05a1e04:	230c      	movs	r3, #12
d05a1e06:	603b      	str	r3, [r7, #0]
d05a1e08:	e7ee      	b.n	d05a1de8 <__sfp+0x60>
d05a1e0a:	bf00      	nop
d05a1e0c:	d05a2940 	.word	0xd05a2940
d05a1e10:	ffff0001 	.word	0xffff0001

d05a1e14 <_fwalk_reent>:
d05a1e14:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
d05a1e18:	4606      	mov	r6, r0
d05a1e1a:	4688      	mov	r8, r1
d05a1e1c:	f100 0448 	add.w	r4, r0, #72	; 0x48
d05a1e20:	2700      	movs	r7, #0
d05a1e22:	e9d4 9501 	ldrd	r9, r5, [r4, #4]
d05a1e26:	f1b9 0901 	subs.w	r9, r9, #1
d05a1e2a:	d505      	bpl.n	d05a1e38 <_fwalk_reent+0x24>
d05a1e2c:	6824      	ldr	r4, [r4, #0]
d05a1e2e:	2c00      	cmp	r4, #0
d05a1e30:	d1f7      	bne.n	d05a1e22 <_fwalk_reent+0xe>
d05a1e32:	4638      	mov	r0, r7
d05a1e34:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
d05a1e38:	89ab      	ldrh	r3, [r5, #12]
d05a1e3a:	2b01      	cmp	r3, #1
d05a1e3c:	d907      	bls.n	d05a1e4e <_fwalk_reent+0x3a>
d05a1e3e:	f9b5 300e 	ldrsh.w	r3, [r5, #14]
d05a1e42:	3301      	adds	r3, #1
d05a1e44:	d003      	beq.n	d05a1e4e <_fwalk_reent+0x3a>
d05a1e46:	4629      	mov	r1, r5
d05a1e48:	4630      	mov	r0, r6
d05a1e4a:	47c0      	blx	r8
d05a1e4c:	4307      	orrs	r7, r0
d05a1e4e:	3568      	adds	r5, #104	; 0x68
d05a1e50:	e7e9      	b.n	d05a1e26 <_fwalk_reent+0x12>

d05a1e52 <__retarget_lock_init_recursive>:
d05a1e52:	4770      	bx	lr

d05a1e54 <__retarget_lock_acquire_recursive>:
d05a1e54:	4770      	bx	lr

d05a1e56 <__retarget_lock_release_recursive>:
d05a1e56:	4770      	bx	lr

d05a1e58 <__swhatbuf_r>:
d05a1e58:	b570      	push	{r4, r5, r6, lr}
d05a1e5a:	460e      	mov	r6, r1
d05a1e5c:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d05a1e60:	2900      	cmp	r1, #0
d05a1e62:	b096      	sub	sp, #88	; 0x58
d05a1e64:	4614      	mov	r4, r2
d05a1e66:	461d      	mov	r5, r3
d05a1e68:	da07      	bge.n	d05a1e7a <__swhatbuf_r+0x22>
d05a1e6a:	2300      	movs	r3, #0
d05a1e6c:	602b      	str	r3, [r5, #0]
d05a1e6e:	89b3      	ldrh	r3, [r6, #12]
d05a1e70:	061a      	lsls	r2, r3, #24
d05a1e72:	d410      	bmi.n	d05a1e96 <__swhatbuf_r+0x3e>
d05a1e74:	f44f 6380 	mov.w	r3, #1024	; 0x400
d05a1e78:	e00e      	b.n	d05a1e98 <__swhatbuf_r+0x40>
d05a1e7a:	466a      	mov	r2, sp
d05a1e7c:	f000 fc06 	bl	d05a268c <_fstat_r>
d05a1e80:	2800      	cmp	r0, #0
d05a1e82:	dbf2      	blt.n	d05a1e6a <__swhatbuf_r+0x12>
d05a1e84:	9a01      	ldr	r2, [sp, #4]
d05a1e86:	f402 4270 	and.w	r2, r2, #61440	; 0xf000
d05a1e8a:	f5a2 5300 	sub.w	r3, r2, #8192	; 0x2000
d05a1e8e:	425a      	negs	r2, r3
d05a1e90:	415a      	adcs	r2, r3
d05a1e92:	602a      	str	r2, [r5, #0]
d05a1e94:	e7ee      	b.n	d05a1e74 <__swhatbuf_r+0x1c>
d05a1e96:	2340      	movs	r3, #64	; 0x40
d05a1e98:	2000      	movs	r0, #0
d05a1e9a:	6023      	str	r3, [r4, #0]
d05a1e9c:	b016      	add	sp, #88	; 0x58
d05a1e9e:	bd70      	pop	{r4, r5, r6, pc}

d05a1ea0 <malloc>:
d05a1ea0:	4b02      	ldr	r3, [pc, #8]	; (d05a1eac <malloc+0xc>)
d05a1ea2:	4601      	mov	r1, r0
d05a1ea4:	6818      	ldr	r0, [r3, #0]
d05a1ea6:	f000 b853 	b.w	d05a1f50 <_malloc_r>
d05a1eaa:	bf00      	nop
d05a1eac:	d05a29e8 	.word	0xd05a29e8

d05a1eb0 <_free_r>:
d05a1eb0:	b537      	push	{r0, r1, r2, r4, r5, lr}
d05a1eb2:	2900      	cmp	r1, #0
d05a1eb4:	d048      	beq.n	d05a1f48 <_free_r+0x98>
d05a1eb6:	f851 3c04 	ldr.w	r3, [r1, #-4]
d05a1eba:	9001      	str	r0, [sp, #4]
d05a1ebc:	2b00      	cmp	r3, #0
d05a1ebe:	f1a1 0404 	sub.w	r4, r1, #4
d05a1ec2:	bfb8      	it	lt
d05a1ec4:	18e4      	addlt	r4, r4, r3
d05a1ec6:	f000 fc83 	bl	d05a27d0 <__malloc_lock>
d05a1eca:	4a20      	ldr	r2, [pc, #128]	; (d05a1f4c <_free_r+0x9c>)
d05a1ecc:	9801      	ldr	r0, [sp, #4]
d05a1ece:	6813      	ldr	r3, [r2, #0]
d05a1ed0:	4615      	mov	r5, r2
d05a1ed2:	b933      	cbnz	r3, d05a1ee2 <_free_r+0x32>
d05a1ed4:	6063      	str	r3, [r4, #4]
d05a1ed6:	6014      	str	r4, [r2, #0]
d05a1ed8:	b003      	add	sp, #12
d05a1eda:	e8bd 4030 	ldmia.w	sp!, {r4, r5, lr}
d05a1ede:	f000 bc7d 	b.w	d05a27dc <__malloc_unlock>
d05a1ee2:	42a3      	cmp	r3, r4
d05a1ee4:	d90b      	bls.n	d05a1efe <_free_r+0x4e>
d05a1ee6:	6821      	ldr	r1, [r4, #0]
d05a1ee8:	1862      	adds	r2, r4, r1
d05a1eea:	4293      	cmp	r3, r2
d05a1eec:	bf04      	itt	eq
d05a1eee:	681a      	ldreq	r2, [r3, #0]
d05a1ef0:	685b      	ldreq	r3, [r3, #4]
d05a1ef2:	6063      	str	r3, [r4, #4]
d05a1ef4:	bf04      	itt	eq
d05a1ef6:	1852      	addeq	r2, r2, r1
d05a1ef8:	6022      	streq	r2, [r4, #0]
d05a1efa:	602c      	str	r4, [r5, #0]
d05a1efc:	e7ec      	b.n	d05a1ed8 <_free_r+0x28>
d05a1efe:	461a      	mov	r2, r3
d05a1f00:	685b      	ldr	r3, [r3, #4]
d05a1f02:	b10b      	cbz	r3, d05a1f08 <_free_r+0x58>
d05a1f04:	42a3      	cmp	r3, r4
d05a1f06:	d9fa      	bls.n	d05a1efe <_free_r+0x4e>
d05a1f08:	6811      	ldr	r1, [r2, #0]
d05a1f0a:	1855      	adds	r5, r2, r1
d05a1f0c:	42a5      	cmp	r5, r4
d05a1f0e:	d10b      	bne.n	d05a1f28 <_free_r+0x78>
d05a1f10:	6824      	ldr	r4, [r4, #0]
d05a1f12:	4421      	add	r1, r4
d05a1f14:	1854      	adds	r4, r2, r1
d05a1f16:	42a3      	cmp	r3, r4
d05a1f18:	6011      	str	r1, [r2, #0]
d05a1f1a:	d1dd      	bne.n	d05a1ed8 <_free_r+0x28>
d05a1f1c:	681c      	ldr	r4, [r3, #0]
d05a1f1e:	685b      	ldr	r3, [r3, #4]
d05a1f20:	6053      	str	r3, [r2, #4]
d05a1f22:	4421      	add	r1, r4
d05a1f24:	6011      	str	r1, [r2, #0]
d05a1f26:	e7d7      	b.n	d05a1ed8 <_free_r+0x28>
d05a1f28:	d902      	bls.n	d05a1f30 <_free_r+0x80>
d05a1f2a:	230c      	movs	r3, #12
d05a1f2c:	6003      	str	r3, [r0, #0]
d05a1f2e:	e7d3      	b.n	d05a1ed8 <_free_r+0x28>
d05a1f30:	6825      	ldr	r5, [r4, #0]
d05a1f32:	1961      	adds	r1, r4, r5
d05a1f34:	428b      	cmp	r3, r1
d05a1f36:	bf04      	itt	eq
d05a1f38:	6819      	ldreq	r1, [r3, #0]
d05a1f3a:	685b      	ldreq	r3, [r3, #4]
d05a1f3c:	6063      	str	r3, [r4, #4]
d05a1f3e:	bf04      	itt	eq
d05a1f40:	1949      	addeq	r1, r1, r5
d05a1f42:	6021      	streq	r1, [r4, #0]
d05a1f44:	6054      	str	r4, [r2, #4]
d05a1f46:	e7c7      	b.n	d05a1ed8 <_free_r+0x28>
d05a1f48:	b003      	add	sp, #12
d05a1f4a:	bd30      	pop	{r4, r5, pc}
d05a1f4c:	d05b5d00 	.word	0xd05b5d00

d05a1f50 <_malloc_r>:
d05a1f50:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d05a1f52:	1ccd      	adds	r5, r1, #3
d05a1f54:	f025 0503 	bic.w	r5, r5, #3
d05a1f58:	3508      	adds	r5, #8
d05a1f5a:	2d0c      	cmp	r5, #12
d05a1f5c:	bf38      	it	cc
d05a1f5e:	250c      	movcc	r5, #12
d05a1f60:	2d00      	cmp	r5, #0
d05a1f62:	4606      	mov	r6, r0
d05a1f64:	db01      	blt.n	d05a1f6a <_malloc_r+0x1a>
d05a1f66:	42a9      	cmp	r1, r5
d05a1f68:	d903      	bls.n	d05a1f72 <_malloc_r+0x22>
d05a1f6a:	230c      	movs	r3, #12
d05a1f6c:	6033      	str	r3, [r6, #0]
d05a1f6e:	2000      	movs	r0, #0
d05a1f70:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d05a1f72:	f000 fc2d 	bl	d05a27d0 <__malloc_lock>
d05a1f76:	4921      	ldr	r1, [pc, #132]	; (d05a1ffc <_malloc_r+0xac>)
d05a1f78:	680a      	ldr	r2, [r1, #0]
d05a1f7a:	4614      	mov	r4, r2
d05a1f7c:	b99c      	cbnz	r4, d05a1fa6 <_malloc_r+0x56>
d05a1f7e:	4f20      	ldr	r7, [pc, #128]	; (d05a2000 <_malloc_r+0xb0>)
d05a1f80:	683b      	ldr	r3, [r7, #0]
d05a1f82:	b923      	cbnz	r3, d05a1f8e <_malloc_r+0x3e>
d05a1f84:	4621      	mov	r1, r4
d05a1f86:	4630      	mov	r0, r6
d05a1f88:	f7fe f89e 	bl	d05a00c8 <_sbrk_r>
d05a1f8c:	6038      	str	r0, [r7, #0]
d05a1f8e:	4629      	mov	r1, r5
d05a1f90:	4630      	mov	r0, r6
d05a1f92:	f7fe f899 	bl	d05a00c8 <_sbrk_r>
d05a1f96:	1c43      	adds	r3, r0, #1
d05a1f98:	d123      	bne.n	d05a1fe2 <_malloc_r+0x92>
d05a1f9a:	230c      	movs	r3, #12
d05a1f9c:	6033      	str	r3, [r6, #0]
d05a1f9e:	4630      	mov	r0, r6
d05a1fa0:	f000 fc1c 	bl	d05a27dc <__malloc_unlock>
d05a1fa4:	e7e3      	b.n	d05a1f6e <_malloc_r+0x1e>
d05a1fa6:	6823      	ldr	r3, [r4, #0]
d05a1fa8:	1b5b      	subs	r3, r3, r5
d05a1faa:	d417      	bmi.n	d05a1fdc <_malloc_r+0x8c>
d05a1fac:	2b0b      	cmp	r3, #11
d05a1fae:	d903      	bls.n	d05a1fb8 <_malloc_r+0x68>
d05a1fb0:	6023      	str	r3, [r4, #0]
d05a1fb2:	441c      	add	r4, r3
d05a1fb4:	6025      	str	r5, [r4, #0]
d05a1fb6:	e004      	b.n	d05a1fc2 <_malloc_r+0x72>
d05a1fb8:	6863      	ldr	r3, [r4, #4]
d05a1fba:	42a2      	cmp	r2, r4
d05a1fbc:	bf0c      	ite	eq
d05a1fbe:	600b      	streq	r3, [r1, #0]
d05a1fc0:	6053      	strne	r3, [r2, #4]
d05a1fc2:	4630      	mov	r0, r6
d05a1fc4:	f000 fc0a 	bl	d05a27dc <__malloc_unlock>
d05a1fc8:	f104 000b 	add.w	r0, r4, #11
d05a1fcc:	1d23      	adds	r3, r4, #4
d05a1fce:	f020 0007 	bic.w	r0, r0, #7
d05a1fd2:	1ac2      	subs	r2, r0, r3
d05a1fd4:	d0cc      	beq.n	d05a1f70 <_malloc_r+0x20>
d05a1fd6:	1a1b      	subs	r3, r3, r0
d05a1fd8:	50a3      	str	r3, [r4, r2]
d05a1fda:	e7c9      	b.n	d05a1f70 <_malloc_r+0x20>
d05a1fdc:	4622      	mov	r2, r4
d05a1fde:	6864      	ldr	r4, [r4, #4]
d05a1fe0:	e7cc      	b.n	d05a1f7c <_malloc_r+0x2c>
d05a1fe2:	1cc4      	adds	r4, r0, #3
d05a1fe4:	f024 0403 	bic.w	r4, r4, #3
d05a1fe8:	42a0      	cmp	r0, r4
d05a1fea:	d0e3      	beq.n	d05a1fb4 <_malloc_r+0x64>
d05a1fec:	1a21      	subs	r1, r4, r0
d05a1fee:	4630      	mov	r0, r6
d05a1ff0:	f7fe f86a 	bl	d05a00c8 <_sbrk_r>
d05a1ff4:	3001      	adds	r0, #1
d05a1ff6:	d1dd      	bne.n	d05a1fb4 <_malloc_r+0x64>
d05a1ff8:	e7cf      	b.n	d05a1f9a <_malloc_r+0x4a>
d05a1ffa:	bf00      	nop
d05a1ffc:	d05b5d00 	.word	0xd05b5d00
d05a2000:	d05b5d04 	.word	0xd05b5d04

d05a2004 <__ssputs_r>:
d05a2004:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
d05a2008:	688e      	ldr	r6, [r1, #8]
d05a200a:	429e      	cmp	r6, r3
d05a200c:	4682      	mov	sl, r0
d05a200e:	460c      	mov	r4, r1
d05a2010:	4690      	mov	r8, r2
d05a2012:	461f      	mov	r7, r3
d05a2014:	d838      	bhi.n	d05a2088 <__ssputs_r+0x84>
d05a2016:	898a      	ldrh	r2, [r1, #12]
d05a2018:	f412 6f90 	tst.w	r2, #1152	; 0x480
d05a201c:	d032      	beq.n	d05a2084 <__ssputs_r+0x80>
d05a201e:	6825      	ldr	r5, [r4, #0]
d05a2020:	6909      	ldr	r1, [r1, #16]
d05a2022:	eba5 0901 	sub.w	r9, r5, r1
d05a2026:	6965      	ldr	r5, [r4, #20]
d05a2028:	eb05 0545 	add.w	r5, r5, r5, lsl #1
d05a202c:	eb05 75d5 	add.w	r5, r5, r5, lsr #31
d05a2030:	3301      	adds	r3, #1
d05a2032:	444b      	add	r3, r9
d05a2034:	106d      	asrs	r5, r5, #1
d05a2036:	429d      	cmp	r5, r3
d05a2038:	bf38      	it	cc
d05a203a:	461d      	movcc	r5, r3
d05a203c:	0553      	lsls	r3, r2, #21
d05a203e:	d531      	bpl.n	d05a20a4 <__ssputs_r+0xa0>
d05a2040:	4629      	mov	r1, r5
d05a2042:	f7ff ff85 	bl	d05a1f50 <_malloc_r>
d05a2046:	4606      	mov	r6, r0
d05a2048:	b950      	cbnz	r0, d05a2060 <__ssputs_r+0x5c>
d05a204a:	230c      	movs	r3, #12
d05a204c:	f8ca 3000 	str.w	r3, [sl]
d05a2050:	89a3      	ldrh	r3, [r4, #12]
d05a2052:	f043 0340 	orr.w	r3, r3, #64	; 0x40
d05a2056:	81a3      	strh	r3, [r4, #12]
d05a2058:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d05a205c:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
d05a2060:	6921      	ldr	r1, [r4, #16]
d05a2062:	464a      	mov	r2, r9
d05a2064:	f000 fb8c 	bl	d05a2780 <memcpy>
d05a2068:	89a3      	ldrh	r3, [r4, #12]
d05a206a:	f423 6390 	bic.w	r3, r3, #1152	; 0x480
d05a206e:	f043 0380 	orr.w	r3, r3, #128	; 0x80
d05a2072:	81a3      	strh	r3, [r4, #12]
d05a2074:	6126      	str	r6, [r4, #16]
d05a2076:	6165      	str	r5, [r4, #20]
d05a2078:	444e      	add	r6, r9
d05a207a:	eba5 0509 	sub.w	r5, r5, r9
d05a207e:	6026      	str	r6, [r4, #0]
d05a2080:	60a5      	str	r5, [r4, #8]
d05a2082:	463e      	mov	r6, r7
d05a2084:	42be      	cmp	r6, r7
d05a2086:	d900      	bls.n	d05a208a <__ssputs_r+0x86>
d05a2088:	463e      	mov	r6, r7
d05a208a:	4632      	mov	r2, r6
d05a208c:	6820      	ldr	r0, [r4, #0]
d05a208e:	4641      	mov	r1, r8
d05a2090:	f000 fb84 	bl	d05a279c <memmove>
d05a2094:	68a3      	ldr	r3, [r4, #8]
d05a2096:	6822      	ldr	r2, [r4, #0]
d05a2098:	1b9b      	subs	r3, r3, r6
d05a209a:	4432      	add	r2, r6
d05a209c:	60a3      	str	r3, [r4, #8]
d05a209e:	6022      	str	r2, [r4, #0]
d05a20a0:	2000      	movs	r0, #0
d05a20a2:	e7db      	b.n	d05a205c <__ssputs_r+0x58>
d05a20a4:	462a      	mov	r2, r5
d05a20a6:	f000 fb9f 	bl	d05a27e8 <_realloc_r>
d05a20aa:	4606      	mov	r6, r0
d05a20ac:	2800      	cmp	r0, #0
d05a20ae:	d1e1      	bne.n	d05a2074 <__ssputs_r+0x70>
d05a20b0:	6921      	ldr	r1, [r4, #16]
d05a20b2:	4650      	mov	r0, sl
d05a20b4:	f7ff fefc 	bl	d05a1eb0 <_free_r>
d05a20b8:	e7c7      	b.n	d05a204a <__ssputs_r+0x46>
	...

d05a20bc <_svfiprintf_r>:
d05a20bc:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d05a20c0:	4698      	mov	r8, r3
d05a20c2:	898b      	ldrh	r3, [r1, #12]
d05a20c4:	061b      	lsls	r3, r3, #24
d05a20c6:	b09d      	sub	sp, #116	; 0x74
d05a20c8:	4607      	mov	r7, r0
d05a20ca:	460d      	mov	r5, r1
d05a20cc:	4614      	mov	r4, r2
d05a20ce:	d50e      	bpl.n	d05a20ee <_svfiprintf_r+0x32>
d05a20d0:	690b      	ldr	r3, [r1, #16]
d05a20d2:	b963      	cbnz	r3, d05a20ee <_svfiprintf_r+0x32>
d05a20d4:	2140      	movs	r1, #64	; 0x40
d05a20d6:	f7ff ff3b 	bl	d05a1f50 <_malloc_r>
d05a20da:	6028      	str	r0, [r5, #0]
d05a20dc:	6128      	str	r0, [r5, #16]
d05a20de:	b920      	cbnz	r0, d05a20ea <_svfiprintf_r+0x2e>
d05a20e0:	230c      	movs	r3, #12
d05a20e2:	603b      	str	r3, [r7, #0]
d05a20e4:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d05a20e8:	e0d1      	b.n	d05a228e <_svfiprintf_r+0x1d2>
d05a20ea:	2340      	movs	r3, #64	; 0x40
d05a20ec:	616b      	str	r3, [r5, #20]
d05a20ee:	2300      	movs	r3, #0
d05a20f0:	9309      	str	r3, [sp, #36]	; 0x24
d05a20f2:	2320      	movs	r3, #32
d05a20f4:	f88d 3029 	strb.w	r3, [sp, #41]	; 0x29
d05a20f8:	f8cd 800c 	str.w	r8, [sp, #12]
d05a20fc:	2330      	movs	r3, #48	; 0x30
d05a20fe:	f8df 81a8 	ldr.w	r8, [pc, #424]	; d05a22a8 <_svfiprintf_r+0x1ec>
d05a2102:	f88d 302a 	strb.w	r3, [sp, #42]	; 0x2a
d05a2106:	f04f 0901 	mov.w	r9, #1
d05a210a:	4623      	mov	r3, r4
d05a210c:	469a      	mov	sl, r3
d05a210e:	f813 2b01 	ldrb.w	r2, [r3], #1
d05a2112:	b10a      	cbz	r2, d05a2118 <_svfiprintf_r+0x5c>
d05a2114:	2a25      	cmp	r2, #37	; 0x25
d05a2116:	d1f9      	bne.n	d05a210c <_svfiprintf_r+0x50>
d05a2118:	ebba 0b04 	subs.w	fp, sl, r4
d05a211c:	d00b      	beq.n	d05a2136 <_svfiprintf_r+0x7a>
d05a211e:	465b      	mov	r3, fp
d05a2120:	4622      	mov	r2, r4
d05a2122:	4629      	mov	r1, r5
d05a2124:	4638      	mov	r0, r7
d05a2126:	f7ff ff6d 	bl	d05a2004 <__ssputs_r>
d05a212a:	3001      	adds	r0, #1
d05a212c:	f000 80aa 	beq.w	d05a2284 <_svfiprintf_r+0x1c8>
d05a2130:	9a09      	ldr	r2, [sp, #36]	; 0x24
d05a2132:	445a      	add	r2, fp
d05a2134:	9209      	str	r2, [sp, #36]	; 0x24
d05a2136:	f89a 3000 	ldrb.w	r3, [sl]
d05a213a:	2b00      	cmp	r3, #0
d05a213c:	f000 80a2 	beq.w	d05a2284 <_svfiprintf_r+0x1c8>
d05a2140:	2300      	movs	r3, #0
d05a2142:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
d05a2146:	e9cd 2305 	strd	r2, r3, [sp, #20]
d05a214a:	f10a 0a01 	add.w	sl, sl, #1
d05a214e:	9304      	str	r3, [sp, #16]
d05a2150:	9307      	str	r3, [sp, #28]
d05a2152:	f88d 3053 	strb.w	r3, [sp, #83]	; 0x53
d05a2156:	931a      	str	r3, [sp, #104]	; 0x68
d05a2158:	4654      	mov	r4, sl
d05a215a:	2205      	movs	r2, #5
d05a215c:	f814 1b01 	ldrb.w	r1, [r4], #1
d05a2160:	4851      	ldr	r0, [pc, #324]	; (d05a22a8 <_svfiprintf_r+0x1ec>)
d05a2162:	f000 fabd 	bl	d05a26e0 <memchr>
d05a2166:	9a04      	ldr	r2, [sp, #16]
d05a2168:	b9d8      	cbnz	r0, d05a21a2 <_svfiprintf_r+0xe6>
d05a216a:	06d0      	lsls	r0, r2, #27
d05a216c:	bf44      	itt	mi
d05a216e:	2320      	movmi	r3, #32
d05a2170:	f88d 3053 	strbmi.w	r3, [sp, #83]	; 0x53
d05a2174:	0711      	lsls	r1, r2, #28
d05a2176:	bf44      	itt	mi
d05a2178:	232b      	movmi	r3, #43	; 0x2b
d05a217a:	f88d 3053 	strbmi.w	r3, [sp, #83]	; 0x53
d05a217e:	f89a 3000 	ldrb.w	r3, [sl]
d05a2182:	2b2a      	cmp	r3, #42	; 0x2a
d05a2184:	d015      	beq.n	d05a21b2 <_svfiprintf_r+0xf6>
d05a2186:	9a07      	ldr	r2, [sp, #28]
d05a2188:	4654      	mov	r4, sl
d05a218a:	2000      	movs	r0, #0
d05a218c:	f04f 0c0a 	mov.w	ip, #10
d05a2190:	4621      	mov	r1, r4
d05a2192:	f811 3b01 	ldrb.w	r3, [r1], #1
d05a2196:	3b30      	subs	r3, #48	; 0x30
d05a2198:	2b09      	cmp	r3, #9
d05a219a:	d94e      	bls.n	d05a223a <_svfiprintf_r+0x17e>
d05a219c:	b1b0      	cbz	r0, d05a21cc <_svfiprintf_r+0x110>
d05a219e:	9207      	str	r2, [sp, #28]
d05a21a0:	e014      	b.n	d05a21cc <_svfiprintf_r+0x110>
d05a21a2:	eba0 0308 	sub.w	r3, r0, r8
d05a21a6:	fa09 f303 	lsl.w	r3, r9, r3
d05a21aa:	4313      	orrs	r3, r2
d05a21ac:	9304      	str	r3, [sp, #16]
d05a21ae:	46a2      	mov	sl, r4
d05a21b0:	e7d2      	b.n	d05a2158 <_svfiprintf_r+0x9c>
d05a21b2:	9b03      	ldr	r3, [sp, #12]
d05a21b4:	1d19      	adds	r1, r3, #4
d05a21b6:	681b      	ldr	r3, [r3, #0]
d05a21b8:	9103      	str	r1, [sp, #12]
d05a21ba:	2b00      	cmp	r3, #0
d05a21bc:	bfbb      	ittet	lt
d05a21be:	425b      	neglt	r3, r3
d05a21c0:	f042 0202 	orrlt.w	r2, r2, #2
d05a21c4:	9307      	strge	r3, [sp, #28]
d05a21c6:	9307      	strlt	r3, [sp, #28]
d05a21c8:	bfb8      	it	lt
d05a21ca:	9204      	strlt	r2, [sp, #16]
d05a21cc:	7823      	ldrb	r3, [r4, #0]
d05a21ce:	2b2e      	cmp	r3, #46	; 0x2e
d05a21d0:	d10c      	bne.n	d05a21ec <_svfiprintf_r+0x130>
d05a21d2:	7863      	ldrb	r3, [r4, #1]
d05a21d4:	2b2a      	cmp	r3, #42	; 0x2a
d05a21d6:	d135      	bne.n	d05a2244 <_svfiprintf_r+0x188>
d05a21d8:	9b03      	ldr	r3, [sp, #12]
d05a21da:	1d1a      	adds	r2, r3, #4
d05a21dc:	681b      	ldr	r3, [r3, #0]
d05a21de:	9203      	str	r2, [sp, #12]
d05a21e0:	2b00      	cmp	r3, #0
d05a21e2:	bfb8      	it	lt
d05a21e4:	f04f 33ff 	movlt.w	r3, #4294967295	; 0xffffffff
d05a21e8:	3402      	adds	r4, #2
d05a21ea:	9305      	str	r3, [sp, #20]
d05a21ec:	f8df a0c8 	ldr.w	sl, [pc, #200]	; d05a22b8 <_svfiprintf_r+0x1fc>
d05a21f0:	7821      	ldrb	r1, [r4, #0]
d05a21f2:	2203      	movs	r2, #3
d05a21f4:	4650      	mov	r0, sl
d05a21f6:	f000 fa73 	bl	d05a26e0 <memchr>
d05a21fa:	b140      	cbz	r0, d05a220e <_svfiprintf_r+0x152>
d05a21fc:	2340      	movs	r3, #64	; 0x40
d05a21fe:	eba0 000a 	sub.w	r0, r0, sl
d05a2202:	fa03 f000 	lsl.w	r0, r3, r0
d05a2206:	9b04      	ldr	r3, [sp, #16]
d05a2208:	4303      	orrs	r3, r0
d05a220a:	3401      	adds	r4, #1
d05a220c:	9304      	str	r3, [sp, #16]
d05a220e:	f814 1b01 	ldrb.w	r1, [r4], #1
d05a2212:	4826      	ldr	r0, [pc, #152]	; (d05a22ac <_svfiprintf_r+0x1f0>)
d05a2214:	f88d 1028 	strb.w	r1, [sp, #40]	; 0x28
d05a2218:	2206      	movs	r2, #6
d05a221a:	f000 fa61 	bl	d05a26e0 <memchr>
d05a221e:	2800      	cmp	r0, #0
d05a2220:	d038      	beq.n	d05a2294 <_svfiprintf_r+0x1d8>
d05a2222:	4b23      	ldr	r3, [pc, #140]	; (d05a22b0 <_svfiprintf_r+0x1f4>)
d05a2224:	bb1b      	cbnz	r3, d05a226e <_svfiprintf_r+0x1b2>
d05a2226:	9b03      	ldr	r3, [sp, #12]
d05a2228:	3307      	adds	r3, #7
d05a222a:	f023 0307 	bic.w	r3, r3, #7
d05a222e:	3308      	adds	r3, #8
d05a2230:	9303      	str	r3, [sp, #12]
d05a2232:	9b09      	ldr	r3, [sp, #36]	; 0x24
d05a2234:	4433      	add	r3, r6
d05a2236:	9309      	str	r3, [sp, #36]	; 0x24
d05a2238:	e767      	b.n	d05a210a <_svfiprintf_r+0x4e>
d05a223a:	fb0c 3202 	mla	r2, ip, r2, r3
d05a223e:	460c      	mov	r4, r1
d05a2240:	2001      	movs	r0, #1
d05a2242:	e7a5      	b.n	d05a2190 <_svfiprintf_r+0xd4>
d05a2244:	2300      	movs	r3, #0
d05a2246:	3401      	adds	r4, #1
d05a2248:	9305      	str	r3, [sp, #20]
d05a224a:	4619      	mov	r1, r3
d05a224c:	f04f 0c0a 	mov.w	ip, #10
d05a2250:	4620      	mov	r0, r4
d05a2252:	f810 2b01 	ldrb.w	r2, [r0], #1
d05a2256:	3a30      	subs	r2, #48	; 0x30
d05a2258:	2a09      	cmp	r2, #9
d05a225a:	d903      	bls.n	d05a2264 <_svfiprintf_r+0x1a8>
d05a225c:	2b00      	cmp	r3, #0
d05a225e:	d0c5      	beq.n	d05a21ec <_svfiprintf_r+0x130>
d05a2260:	9105      	str	r1, [sp, #20]
d05a2262:	e7c3      	b.n	d05a21ec <_svfiprintf_r+0x130>
d05a2264:	fb0c 2101 	mla	r1, ip, r1, r2
d05a2268:	4604      	mov	r4, r0
d05a226a:	2301      	movs	r3, #1
d05a226c:	e7f0      	b.n	d05a2250 <_svfiprintf_r+0x194>
d05a226e:	ab03      	add	r3, sp, #12
d05a2270:	9300      	str	r3, [sp, #0]
d05a2272:	462a      	mov	r2, r5
d05a2274:	4b0f      	ldr	r3, [pc, #60]	; (d05a22b4 <_svfiprintf_r+0x1f8>)
d05a2276:	a904      	add	r1, sp, #16
d05a2278:	4638      	mov	r0, r7
d05a227a:	f3af 8000 	nop.w
d05a227e:	1c42      	adds	r2, r0, #1
d05a2280:	4606      	mov	r6, r0
d05a2282:	d1d6      	bne.n	d05a2232 <_svfiprintf_r+0x176>
d05a2284:	89ab      	ldrh	r3, [r5, #12]
d05a2286:	065b      	lsls	r3, r3, #25
d05a2288:	f53f af2c 	bmi.w	d05a20e4 <_svfiprintf_r+0x28>
d05a228c:	9809      	ldr	r0, [sp, #36]	; 0x24
d05a228e:	b01d      	add	sp, #116	; 0x74
d05a2290:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d05a2294:	ab03      	add	r3, sp, #12
d05a2296:	9300      	str	r3, [sp, #0]
d05a2298:	462a      	mov	r2, r5
d05a229a:	4b06      	ldr	r3, [pc, #24]	; (d05a22b4 <_svfiprintf_r+0x1f8>)
d05a229c:	a904      	add	r1, sp, #16
d05a229e:	4638      	mov	r0, r7
d05a22a0:	f000 f87a 	bl	d05a2398 <_printf_i>
d05a22a4:	e7eb      	b.n	d05a227e <_svfiprintf_r+0x1c2>
d05a22a6:	bf00      	nop
d05a22a8:	d05a29a4 	.word	0xd05a29a4
d05a22ac:	d05a29ae 	.word	0xd05a29ae
d05a22b0:	00000000 	.word	0x00000000
d05a22b4:	d05a2005 	.word	0xd05a2005
d05a22b8:	d05a29aa 	.word	0xd05a29aa

d05a22bc <_printf_common>:
d05a22bc:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
d05a22c0:	4616      	mov	r6, r2
d05a22c2:	4699      	mov	r9, r3
d05a22c4:	688a      	ldr	r2, [r1, #8]
d05a22c6:	690b      	ldr	r3, [r1, #16]
d05a22c8:	f8dd 8020 	ldr.w	r8, [sp, #32]
d05a22cc:	4293      	cmp	r3, r2
d05a22ce:	bfb8      	it	lt
d05a22d0:	4613      	movlt	r3, r2
d05a22d2:	6033      	str	r3, [r6, #0]
d05a22d4:	f891 2043 	ldrb.w	r2, [r1, #67]	; 0x43
d05a22d8:	4607      	mov	r7, r0
d05a22da:	460c      	mov	r4, r1
d05a22dc:	b10a      	cbz	r2, d05a22e2 <_printf_common+0x26>
d05a22de:	3301      	adds	r3, #1
d05a22e0:	6033      	str	r3, [r6, #0]
d05a22e2:	6823      	ldr	r3, [r4, #0]
d05a22e4:	0699      	lsls	r1, r3, #26
d05a22e6:	bf42      	ittt	mi
d05a22e8:	6833      	ldrmi	r3, [r6, #0]
d05a22ea:	3302      	addmi	r3, #2
d05a22ec:	6033      	strmi	r3, [r6, #0]
d05a22ee:	6825      	ldr	r5, [r4, #0]
d05a22f0:	f015 0506 	ands.w	r5, r5, #6
d05a22f4:	d106      	bne.n	d05a2304 <_printf_common+0x48>
d05a22f6:	f104 0a19 	add.w	sl, r4, #25
d05a22fa:	68e3      	ldr	r3, [r4, #12]
d05a22fc:	6832      	ldr	r2, [r6, #0]
d05a22fe:	1a9b      	subs	r3, r3, r2
d05a2300:	42ab      	cmp	r3, r5
d05a2302:	dc26      	bgt.n	d05a2352 <_printf_common+0x96>
d05a2304:	f894 2043 	ldrb.w	r2, [r4, #67]	; 0x43
d05a2308:	1e13      	subs	r3, r2, #0
d05a230a:	6822      	ldr	r2, [r4, #0]
d05a230c:	bf18      	it	ne
d05a230e:	2301      	movne	r3, #1
d05a2310:	0692      	lsls	r2, r2, #26
d05a2312:	d42b      	bmi.n	d05a236c <_printf_common+0xb0>
d05a2314:	f104 0243 	add.w	r2, r4, #67	; 0x43
d05a2318:	4649      	mov	r1, r9
d05a231a:	4638      	mov	r0, r7
d05a231c:	47c0      	blx	r8
d05a231e:	3001      	adds	r0, #1
d05a2320:	d01e      	beq.n	d05a2360 <_printf_common+0xa4>
d05a2322:	6823      	ldr	r3, [r4, #0]
d05a2324:	68e5      	ldr	r5, [r4, #12]
d05a2326:	6832      	ldr	r2, [r6, #0]
d05a2328:	f003 0306 	and.w	r3, r3, #6
d05a232c:	2b04      	cmp	r3, #4
d05a232e:	bf08      	it	eq
d05a2330:	1aad      	subeq	r5, r5, r2
d05a2332:	68a3      	ldr	r3, [r4, #8]
d05a2334:	6922      	ldr	r2, [r4, #16]
d05a2336:	bf0c      	ite	eq
d05a2338:	ea25 75e5 	biceq.w	r5, r5, r5, asr #31
d05a233c:	2500      	movne	r5, #0
d05a233e:	4293      	cmp	r3, r2
d05a2340:	bfc4      	itt	gt
d05a2342:	1a9b      	subgt	r3, r3, r2
d05a2344:	18ed      	addgt	r5, r5, r3
d05a2346:	2600      	movs	r6, #0
d05a2348:	341a      	adds	r4, #26
d05a234a:	42b5      	cmp	r5, r6
d05a234c:	d11a      	bne.n	d05a2384 <_printf_common+0xc8>
d05a234e:	2000      	movs	r0, #0
d05a2350:	e008      	b.n	d05a2364 <_printf_common+0xa8>
d05a2352:	2301      	movs	r3, #1
d05a2354:	4652      	mov	r2, sl
d05a2356:	4649      	mov	r1, r9
d05a2358:	4638      	mov	r0, r7
d05a235a:	47c0      	blx	r8
d05a235c:	3001      	adds	r0, #1
d05a235e:	d103      	bne.n	d05a2368 <_printf_common+0xac>
d05a2360:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d05a2364:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
d05a2368:	3501      	adds	r5, #1
d05a236a:	e7c6      	b.n	d05a22fa <_printf_common+0x3e>
d05a236c:	18e1      	adds	r1, r4, r3
d05a236e:	1c5a      	adds	r2, r3, #1
d05a2370:	2030      	movs	r0, #48	; 0x30
d05a2372:	f881 0043 	strb.w	r0, [r1, #67]	; 0x43
d05a2376:	4422      	add	r2, r4
d05a2378:	f894 1045 	ldrb.w	r1, [r4, #69]	; 0x45
d05a237c:	f882 1043 	strb.w	r1, [r2, #67]	; 0x43
d05a2380:	3302      	adds	r3, #2
d05a2382:	e7c7      	b.n	d05a2314 <_printf_common+0x58>
d05a2384:	2301      	movs	r3, #1
d05a2386:	4622      	mov	r2, r4
d05a2388:	4649      	mov	r1, r9
d05a238a:	4638      	mov	r0, r7
d05a238c:	47c0      	blx	r8
d05a238e:	3001      	adds	r0, #1
d05a2390:	d0e6      	beq.n	d05a2360 <_printf_common+0xa4>
d05a2392:	3601      	adds	r6, #1
d05a2394:	e7d9      	b.n	d05a234a <_printf_common+0x8e>
	...

d05a2398 <_printf_i>:
d05a2398:	e92d 47ff 	stmdb	sp!, {r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, lr}
d05a239c:	460c      	mov	r4, r1
d05a239e:	4691      	mov	r9, r2
d05a23a0:	7e27      	ldrb	r7, [r4, #24]
d05a23a2:	990c      	ldr	r1, [sp, #48]	; 0x30
d05a23a4:	2f78      	cmp	r7, #120	; 0x78
d05a23a6:	4680      	mov	r8, r0
d05a23a8:	469a      	mov	sl, r3
d05a23aa:	f104 0243 	add.w	r2, r4, #67	; 0x43
d05a23ae:	d807      	bhi.n	d05a23c0 <_printf_i+0x28>
d05a23b0:	2f62      	cmp	r7, #98	; 0x62
d05a23b2:	d80a      	bhi.n	d05a23ca <_printf_i+0x32>
d05a23b4:	2f00      	cmp	r7, #0
d05a23b6:	f000 80d8 	beq.w	d05a256a <_printf_i+0x1d2>
d05a23ba:	2f58      	cmp	r7, #88	; 0x58
d05a23bc:	f000 80a3 	beq.w	d05a2506 <_printf_i+0x16e>
d05a23c0:	f104 0642 	add.w	r6, r4, #66	; 0x42
d05a23c4:	f884 7042 	strb.w	r7, [r4, #66]	; 0x42
d05a23c8:	e03a      	b.n	d05a2440 <_printf_i+0xa8>
d05a23ca:	f1a7 0363 	sub.w	r3, r7, #99	; 0x63
d05a23ce:	2b15      	cmp	r3, #21
d05a23d0:	d8f6      	bhi.n	d05a23c0 <_printf_i+0x28>
d05a23d2:	a001      	add	r0, pc, #4	; (adr r0, d05a23d8 <_printf_i+0x40>)
d05a23d4:	f850 f023 	ldr.w	pc, [r0, r3, lsl #2]
d05a23d8:	d05a2431 	.word	0xd05a2431
d05a23dc:	d05a2445 	.word	0xd05a2445
d05a23e0:	d05a23c1 	.word	0xd05a23c1
d05a23e4:	d05a23c1 	.word	0xd05a23c1
d05a23e8:	d05a23c1 	.word	0xd05a23c1
d05a23ec:	d05a23c1 	.word	0xd05a23c1
d05a23f0:	d05a2445 	.word	0xd05a2445
d05a23f4:	d05a23c1 	.word	0xd05a23c1
d05a23f8:	d05a23c1 	.word	0xd05a23c1
d05a23fc:	d05a23c1 	.word	0xd05a23c1
d05a2400:	d05a23c1 	.word	0xd05a23c1
d05a2404:	d05a2551 	.word	0xd05a2551
d05a2408:	d05a2475 	.word	0xd05a2475
d05a240c:	d05a2533 	.word	0xd05a2533
d05a2410:	d05a23c1 	.word	0xd05a23c1
d05a2414:	d05a23c1 	.word	0xd05a23c1
d05a2418:	d05a2573 	.word	0xd05a2573
d05a241c:	d05a23c1 	.word	0xd05a23c1
d05a2420:	d05a2475 	.word	0xd05a2475
d05a2424:	d05a23c1 	.word	0xd05a23c1
d05a2428:	d05a23c1 	.word	0xd05a23c1
d05a242c:	d05a253b 	.word	0xd05a253b
d05a2430:	680b      	ldr	r3, [r1, #0]
d05a2432:	1d1a      	adds	r2, r3, #4
d05a2434:	681b      	ldr	r3, [r3, #0]
d05a2436:	600a      	str	r2, [r1, #0]
d05a2438:	f104 0642 	add.w	r6, r4, #66	; 0x42
d05a243c:	f884 3042 	strb.w	r3, [r4, #66]	; 0x42
d05a2440:	2301      	movs	r3, #1
d05a2442:	e0a3      	b.n	d05a258c <_printf_i+0x1f4>
d05a2444:	6825      	ldr	r5, [r4, #0]
d05a2446:	6808      	ldr	r0, [r1, #0]
d05a2448:	062e      	lsls	r6, r5, #24
d05a244a:	f100 0304 	add.w	r3, r0, #4
d05a244e:	d50a      	bpl.n	d05a2466 <_printf_i+0xce>
d05a2450:	6805      	ldr	r5, [r0, #0]
d05a2452:	600b      	str	r3, [r1, #0]
d05a2454:	2d00      	cmp	r5, #0
d05a2456:	da03      	bge.n	d05a2460 <_printf_i+0xc8>
d05a2458:	232d      	movs	r3, #45	; 0x2d
d05a245a:	426d      	negs	r5, r5
d05a245c:	f884 3043 	strb.w	r3, [r4, #67]	; 0x43
d05a2460:	485e      	ldr	r0, [pc, #376]	; (d05a25dc <_printf_i+0x244>)
d05a2462:	230a      	movs	r3, #10
d05a2464:	e019      	b.n	d05a249a <_printf_i+0x102>
d05a2466:	f015 0f40 	tst.w	r5, #64	; 0x40
d05a246a:	6805      	ldr	r5, [r0, #0]
d05a246c:	600b      	str	r3, [r1, #0]
d05a246e:	bf18      	it	ne
d05a2470:	b22d      	sxthne	r5, r5
d05a2472:	e7ef      	b.n	d05a2454 <_printf_i+0xbc>
d05a2474:	680b      	ldr	r3, [r1, #0]
d05a2476:	6825      	ldr	r5, [r4, #0]
d05a2478:	1d18      	adds	r0, r3, #4
d05a247a:	6008      	str	r0, [r1, #0]
d05a247c:	0628      	lsls	r0, r5, #24
d05a247e:	d501      	bpl.n	d05a2484 <_printf_i+0xec>
d05a2480:	681d      	ldr	r5, [r3, #0]
d05a2482:	e002      	b.n	d05a248a <_printf_i+0xf2>
d05a2484:	0669      	lsls	r1, r5, #25
d05a2486:	d5fb      	bpl.n	d05a2480 <_printf_i+0xe8>
d05a2488:	881d      	ldrh	r5, [r3, #0]
d05a248a:	4854      	ldr	r0, [pc, #336]	; (d05a25dc <_printf_i+0x244>)
d05a248c:	2f6f      	cmp	r7, #111	; 0x6f
d05a248e:	bf0c      	ite	eq
d05a2490:	2308      	moveq	r3, #8
d05a2492:	230a      	movne	r3, #10
d05a2494:	2100      	movs	r1, #0
d05a2496:	f884 1043 	strb.w	r1, [r4, #67]	; 0x43
d05a249a:	6866      	ldr	r6, [r4, #4]
d05a249c:	60a6      	str	r6, [r4, #8]
d05a249e:	2e00      	cmp	r6, #0
d05a24a0:	bfa2      	ittt	ge
d05a24a2:	6821      	ldrge	r1, [r4, #0]
d05a24a4:	f021 0104 	bicge.w	r1, r1, #4
d05a24a8:	6021      	strge	r1, [r4, #0]
d05a24aa:	b90d      	cbnz	r5, d05a24b0 <_printf_i+0x118>
d05a24ac:	2e00      	cmp	r6, #0
d05a24ae:	d04d      	beq.n	d05a254c <_printf_i+0x1b4>
d05a24b0:	4616      	mov	r6, r2
d05a24b2:	fbb5 f1f3 	udiv	r1, r5, r3
d05a24b6:	fb03 5711 	mls	r7, r3, r1, r5
d05a24ba:	5dc7      	ldrb	r7, [r0, r7]
d05a24bc:	f806 7d01 	strb.w	r7, [r6, #-1]!
d05a24c0:	462f      	mov	r7, r5
d05a24c2:	42bb      	cmp	r3, r7
d05a24c4:	460d      	mov	r5, r1
d05a24c6:	d9f4      	bls.n	d05a24b2 <_printf_i+0x11a>
d05a24c8:	2b08      	cmp	r3, #8
d05a24ca:	d10b      	bne.n	d05a24e4 <_printf_i+0x14c>
d05a24cc:	6823      	ldr	r3, [r4, #0]
d05a24ce:	07df      	lsls	r7, r3, #31
d05a24d0:	d508      	bpl.n	d05a24e4 <_printf_i+0x14c>
d05a24d2:	6923      	ldr	r3, [r4, #16]
d05a24d4:	6861      	ldr	r1, [r4, #4]
d05a24d6:	4299      	cmp	r1, r3
d05a24d8:	bfde      	ittt	le
d05a24da:	2330      	movle	r3, #48	; 0x30
d05a24dc:	f806 3c01 	strble.w	r3, [r6, #-1]
d05a24e0:	f106 36ff 	addle.w	r6, r6, #4294967295	; 0xffffffff
d05a24e4:	1b92      	subs	r2, r2, r6
d05a24e6:	6122      	str	r2, [r4, #16]
d05a24e8:	f8cd a000 	str.w	sl, [sp]
d05a24ec:	464b      	mov	r3, r9
d05a24ee:	aa03      	add	r2, sp, #12
d05a24f0:	4621      	mov	r1, r4
d05a24f2:	4640      	mov	r0, r8
d05a24f4:	f7ff fee2 	bl	d05a22bc <_printf_common>
d05a24f8:	3001      	adds	r0, #1
d05a24fa:	d14c      	bne.n	d05a2596 <_printf_i+0x1fe>
d05a24fc:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d05a2500:	b004      	add	sp, #16
d05a2502:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
d05a2506:	4835      	ldr	r0, [pc, #212]	; (d05a25dc <_printf_i+0x244>)
d05a2508:	f884 7045 	strb.w	r7, [r4, #69]	; 0x45
d05a250c:	6823      	ldr	r3, [r4, #0]
d05a250e:	680e      	ldr	r6, [r1, #0]
d05a2510:	061f      	lsls	r7, r3, #24
d05a2512:	f856 5b04 	ldr.w	r5, [r6], #4
d05a2516:	600e      	str	r6, [r1, #0]
d05a2518:	d514      	bpl.n	d05a2544 <_printf_i+0x1ac>
d05a251a:	07d9      	lsls	r1, r3, #31
d05a251c:	bf44      	itt	mi
d05a251e:	f043 0320 	orrmi.w	r3, r3, #32
d05a2522:	6023      	strmi	r3, [r4, #0]
d05a2524:	b91d      	cbnz	r5, d05a252e <_printf_i+0x196>
d05a2526:	6823      	ldr	r3, [r4, #0]
d05a2528:	f023 0320 	bic.w	r3, r3, #32
d05a252c:	6023      	str	r3, [r4, #0]
d05a252e:	2310      	movs	r3, #16
d05a2530:	e7b0      	b.n	d05a2494 <_printf_i+0xfc>
d05a2532:	6823      	ldr	r3, [r4, #0]
d05a2534:	f043 0320 	orr.w	r3, r3, #32
d05a2538:	6023      	str	r3, [r4, #0]
d05a253a:	2378      	movs	r3, #120	; 0x78
d05a253c:	4828      	ldr	r0, [pc, #160]	; (d05a25e0 <_printf_i+0x248>)
d05a253e:	f884 3045 	strb.w	r3, [r4, #69]	; 0x45
d05a2542:	e7e3      	b.n	d05a250c <_printf_i+0x174>
d05a2544:	065e      	lsls	r6, r3, #25
d05a2546:	bf48      	it	mi
d05a2548:	b2ad      	uxthmi	r5, r5
d05a254a:	e7e6      	b.n	d05a251a <_printf_i+0x182>
d05a254c:	4616      	mov	r6, r2
d05a254e:	e7bb      	b.n	d05a24c8 <_printf_i+0x130>
d05a2550:	680b      	ldr	r3, [r1, #0]
d05a2552:	6826      	ldr	r6, [r4, #0]
d05a2554:	6960      	ldr	r0, [r4, #20]
d05a2556:	1d1d      	adds	r5, r3, #4
d05a2558:	600d      	str	r5, [r1, #0]
d05a255a:	0635      	lsls	r5, r6, #24
d05a255c:	681b      	ldr	r3, [r3, #0]
d05a255e:	d501      	bpl.n	d05a2564 <_printf_i+0x1cc>
d05a2560:	6018      	str	r0, [r3, #0]
d05a2562:	e002      	b.n	d05a256a <_printf_i+0x1d2>
d05a2564:	0671      	lsls	r1, r6, #25
d05a2566:	d5fb      	bpl.n	d05a2560 <_printf_i+0x1c8>
d05a2568:	8018      	strh	r0, [r3, #0]
d05a256a:	2300      	movs	r3, #0
d05a256c:	6123      	str	r3, [r4, #16]
d05a256e:	4616      	mov	r6, r2
d05a2570:	e7ba      	b.n	d05a24e8 <_printf_i+0x150>
d05a2572:	680b      	ldr	r3, [r1, #0]
d05a2574:	1d1a      	adds	r2, r3, #4
d05a2576:	600a      	str	r2, [r1, #0]
d05a2578:	681e      	ldr	r6, [r3, #0]
d05a257a:	6862      	ldr	r2, [r4, #4]
d05a257c:	2100      	movs	r1, #0
d05a257e:	4630      	mov	r0, r6
d05a2580:	f000 f8ae 	bl	d05a26e0 <memchr>
d05a2584:	b108      	cbz	r0, d05a258a <_printf_i+0x1f2>
d05a2586:	1b80      	subs	r0, r0, r6
d05a2588:	6060      	str	r0, [r4, #4]
d05a258a:	6863      	ldr	r3, [r4, #4]
d05a258c:	6123      	str	r3, [r4, #16]
d05a258e:	2300      	movs	r3, #0
d05a2590:	f884 3043 	strb.w	r3, [r4, #67]	; 0x43
d05a2594:	e7a8      	b.n	d05a24e8 <_printf_i+0x150>
d05a2596:	6923      	ldr	r3, [r4, #16]
d05a2598:	4632      	mov	r2, r6
d05a259a:	4649      	mov	r1, r9
d05a259c:	4640      	mov	r0, r8
d05a259e:	47d0      	blx	sl
d05a25a0:	3001      	adds	r0, #1
d05a25a2:	d0ab      	beq.n	d05a24fc <_printf_i+0x164>
d05a25a4:	6823      	ldr	r3, [r4, #0]
d05a25a6:	079b      	lsls	r3, r3, #30
d05a25a8:	d413      	bmi.n	d05a25d2 <_printf_i+0x23a>
d05a25aa:	68e0      	ldr	r0, [r4, #12]
d05a25ac:	9b03      	ldr	r3, [sp, #12]
d05a25ae:	4298      	cmp	r0, r3
d05a25b0:	bfb8      	it	lt
d05a25b2:	4618      	movlt	r0, r3
d05a25b4:	e7a4      	b.n	d05a2500 <_printf_i+0x168>
d05a25b6:	2301      	movs	r3, #1
d05a25b8:	4632      	mov	r2, r6
d05a25ba:	4649      	mov	r1, r9
d05a25bc:	4640      	mov	r0, r8
d05a25be:	47d0      	blx	sl
d05a25c0:	3001      	adds	r0, #1
d05a25c2:	d09b      	beq.n	d05a24fc <_printf_i+0x164>
d05a25c4:	3501      	adds	r5, #1
d05a25c6:	68e3      	ldr	r3, [r4, #12]
d05a25c8:	9903      	ldr	r1, [sp, #12]
d05a25ca:	1a5b      	subs	r3, r3, r1
d05a25cc:	42ab      	cmp	r3, r5
d05a25ce:	dcf2      	bgt.n	d05a25b6 <_printf_i+0x21e>
d05a25d0:	e7eb      	b.n	d05a25aa <_printf_i+0x212>
d05a25d2:	2500      	movs	r5, #0
d05a25d4:	f104 0619 	add.w	r6, r4, #25
d05a25d8:	e7f5      	b.n	d05a25c6 <_printf_i+0x22e>
d05a25da:	bf00      	nop
d05a25dc:	d05a29b5 	.word	0xd05a29b5
d05a25e0:	d05a29c6 	.word	0xd05a29c6

d05a25e4 <__sread>:
d05a25e4:	b510      	push	{r4, lr}
d05a25e6:	460c      	mov	r4, r1
d05a25e8:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d05a25ec:	f000 f922 	bl	d05a2834 <_read_r>
d05a25f0:	2800      	cmp	r0, #0
d05a25f2:	bfab      	itete	ge
d05a25f4:	6d63      	ldrge	r3, [r4, #84]	; 0x54
d05a25f6:	89a3      	ldrhlt	r3, [r4, #12]
d05a25f8:	181b      	addge	r3, r3, r0
d05a25fa:	f423 5380 	biclt.w	r3, r3, #4096	; 0x1000
d05a25fe:	bfac      	ite	ge
d05a2600:	6563      	strge	r3, [r4, #84]	; 0x54
d05a2602:	81a3      	strhlt	r3, [r4, #12]
d05a2604:	bd10      	pop	{r4, pc}

d05a2606 <__swrite>:
d05a2606:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
d05a260a:	461f      	mov	r7, r3
d05a260c:	898b      	ldrh	r3, [r1, #12]
d05a260e:	05db      	lsls	r3, r3, #23
d05a2610:	4605      	mov	r5, r0
d05a2612:	460c      	mov	r4, r1
d05a2614:	4616      	mov	r6, r2
d05a2616:	d505      	bpl.n	d05a2624 <__swrite+0x1e>
d05a2618:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d05a261c:	2302      	movs	r3, #2
d05a261e:	2200      	movs	r2, #0
d05a2620:	f000 f846 	bl	d05a26b0 <_lseek_r>
d05a2624:	89a3      	ldrh	r3, [r4, #12]
d05a2626:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
d05a262a:	f423 5380 	bic.w	r3, r3, #4096	; 0x1000
d05a262e:	81a3      	strh	r3, [r4, #12]
d05a2630:	4632      	mov	r2, r6
d05a2632:	463b      	mov	r3, r7
d05a2634:	4628      	mov	r0, r5
d05a2636:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
d05a263a:	f7fd bcff 	b.w	d05a003c <_write_r>

d05a263e <__sseek>:
d05a263e:	b510      	push	{r4, lr}
d05a2640:	460c      	mov	r4, r1
d05a2642:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d05a2646:	f000 f833 	bl	d05a26b0 <_lseek_r>
d05a264a:	1c43      	adds	r3, r0, #1
d05a264c:	89a3      	ldrh	r3, [r4, #12]
d05a264e:	bf15      	itete	ne
d05a2650:	6560      	strne	r0, [r4, #84]	; 0x54
d05a2652:	f423 5380 	biceq.w	r3, r3, #4096	; 0x1000
d05a2656:	f443 5380 	orrne.w	r3, r3, #4096	; 0x1000
d05a265a:	81a3      	strheq	r3, [r4, #12]
d05a265c:	bf18      	it	ne
d05a265e:	81a3      	strhne	r3, [r4, #12]
d05a2660:	bd10      	pop	{r4, pc}

d05a2662 <__sclose>:
d05a2662:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d05a2666:	f000 b801 	b.w	d05a266c <_close_r>
	...

d05a266c <_close_r>:
d05a266c:	b538      	push	{r3, r4, r5, lr}
d05a266e:	4d06      	ldr	r5, [pc, #24]	; (d05a2688 <_close_r+0x1c>)
d05a2670:	2300      	movs	r3, #0
d05a2672:	4604      	mov	r4, r0
d05a2674:	4608      	mov	r0, r1
d05a2676:	602b      	str	r3, [r5, #0]
d05a2678:	f7fd fd1a 	bl	d05a00b0 <_close>
d05a267c:	1c43      	adds	r3, r0, #1
d05a267e:	d102      	bne.n	d05a2686 <_close_r+0x1a>
d05a2680:	682b      	ldr	r3, [r5, #0]
d05a2682:	b103      	cbz	r3, d05a2686 <_close_r+0x1a>
d05a2684:	6023      	str	r3, [r4, #0]
d05a2686:	bd38      	pop	{r3, r4, r5, pc}
d05a2688:	d05b5d14 	.word	0xd05b5d14

d05a268c <_fstat_r>:
d05a268c:	b538      	push	{r3, r4, r5, lr}
d05a268e:	4d07      	ldr	r5, [pc, #28]	; (d05a26ac <_fstat_r+0x20>)
d05a2690:	2300      	movs	r3, #0
d05a2692:	4604      	mov	r4, r0
d05a2694:	4608      	mov	r0, r1
d05a2696:	4611      	mov	r1, r2
d05a2698:	602b      	str	r3, [r5, #0]
d05a269a:	f7fd fd0d 	bl	d05a00b8 <_fstat>
d05a269e:	1c43      	adds	r3, r0, #1
d05a26a0:	d102      	bne.n	d05a26a8 <_fstat_r+0x1c>
d05a26a2:	682b      	ldr	r3, [r5, #0]
d05a26a4:	b103      	cbz	r3, d05a26a8 <_fstat_r+0x1c>
d05a26a6:	6023      	str	r3, [r4, #0]
d05a26a8:	bd38      	pop	{r3, r4, r5, pc}
d05a26aa:	bf00      	nop
d05a26ac:	d05b5d14 	.word	0xd05b5d14

d05a26b0 <_lseek_r>:
d05a26b0:	b538      	push	{r3, r4, r5, lr}
d05a26b2:	4d07      	ldr	r5, [pc, #28]	; (d05a26d0 <_lseek_r+0x20>)
d05a26b4:	4604      	mov	r4, r0
d05a26b6:	4608      	mov	r0, r1
d05a26b8:	4611      	mov	r1, r2
d05a26ba:	2200      	movs	r2, #0
d05a26bc:	602a      	str	r2, [r5, #0]
d05a26be:	461a      	mov	r2, r3
d05a26c0:	f7fd fd00 	bl	d05a00c4 <_lseek>
d05a26c4:	1c43      	adds	r3, r0, #1
d05a26c6:	d102      	bne.n	d05a26ce <_lseek_r+0x1e>
d05a26c8:	682b      	ldr	r3, [r5, #0]
d05a26ca:	b103      	cbz	r3, d05a26ce <_lseek_r+0x1e>
d05a26cc:	6023      	str	r3, [r4, #0]
d05a26ce:	bd38      	pop	{r3, r4, r5, pc}
d05a26d0:	d05b5d14 	.word	0xd05b5d14
	...

d05a26e0 <memchr>:
d05a26e0:	f001 01ff 	and.w	r1, r1, #255	; 0xff
d05a26e4:	2a10      	cmp	r2, #16
d05a26e6:	db2b      	blt.n	d05a2740 <memchr+0x60>
d05a26e8:	f010 0f07 	tst.w	r0, #7
d05a26ec:	d008      	beq.n	d05a2700 <memchr+0x20>
d05a26ee:	f810 3b01 	ldrb.w	r3, [r0], #1
d05a26f2:	3a01      	subs	r2, #1
d05a26f4:	428b      	cmp	r3, r1
d05a26f6:	d02d      	beq.n	d05a2754 <memchr+0x74>
d05a26f8:	f010 0f07 	tst.w	r0, #7
d05a26fc:	b342      	cbz	r2, d05a2750 <memchr+0x70>
d05a26fe:	d1f6      	bne.n	d05a26ee <memchr+0xe>
d05a2700:	b4f0      	push	{r4, r5, r6, r7}
d05a2702:	ea41 2101 	orr.w	r1, r1, r1, lsl #8
d05a2706:	ea41 4101 	orr.w	r1, r1, r1, lsl #16
d05a270a:	f022 0407 	bic.w	r4, r2, #7
d05a270e:	f07f 0700 	mvns.w	r7, #0
d05a2712:	2300      	movs	r3, #0
d05a2714:	e8f0 5602 	ldrd	r5, r6, [r0], #8
d05a2718:	3c08      	subs	r4, #8
d05a271a:	ea85 0501 	eor.w	r5, r5, r1
d05a271e:	ea86 0601 	eor.w	r6, r6, r1
d05a2722:	fa85 f547 	uadd8	r5, r5, r7
d05a2726:	faa3 f587 	sel	r5, r3, r7
d05a272a:	fa86 f647 	uadd8	r6, r6, r7
d05a272e:	faa5 f687 	sel	r6, r5, r7
d05a2732:	b98e      	cbnz	r6, d05a2758 <memchr+0x78>
d05a2734:	d1ee      	bne.n	d05a2714 <memchr+0x34>
d05a2736:	bcf0      	pop	{r4, r5, r6, r7}
d05a2738:	f001 01ff 	and.w	r1, r1, #255	; 0xff
d05a273c:	f002 0207 	and.w	r2, r2, #7
d05a2740:	b132      	cbz	r2, d05a2750 <memchr+0x70>
d05a2742:	f810 3b01 	ldrb.w	r3, [r0], #1
d05a2746:	3a01      	subs	r2, #1
d05a2748:	ea83 0301 	eor.w	r3, r3, r1
d05a274c:	b113      	cbz	r3, d05a2754 <memchr+0x74>
d05a274e:	d1f8      	bne.n	d05a2742 <memchr+0x62>
d05a2750:	2000      	movs	r0, #0
d05a2752:	4770      	bx	lr
d05a2754:	3801      	subs	r0, #1
d05a2756:	4770      	bx	lr
d05a2758:	2d00      	cmp	r5, #0
d05a275a:	bf06      	itte	eq
d05a275c:	4635      	moveq	r5, r6
d05a275e:	3803      	subeq	r0, #3
d05a2760:	3807      	subne	r0, #7
d05a2762:	f015 0f01 	tst.w	r5, #1
d05a2766:	d107      	bne.n	d05a2778 <memchr+0x98>
d05a2768:	3001      	adds	r0, #1
d05a276a:	f415 7f80 	tst.w	r5, #256	; 0x100
d05a276e:	bf02      	ittt	eq
d05a2770:	3001      	addeq	r0, #1
d05a2772:	f415 3fc0 	tsteq.w	r5, #98304	; 0x18000
d05a2776:	3001      	addeq	r0, #1
d05a2778:	bcf0      	pop	{r4, r5, r6, r7}
d05a277a:	3801      	subs	r0, #1
d05a277c:	4770      	bx	lr
d05a277e:	bf00      	nop

d05a2780 <memcpy>:
d05a2780:	440a      	add	r2, r1
d05a2782:	4291      	cmp	r1, r2
d05a2784:	f100 33ff 	add.w	r3, r0, #4294967295	; 0xffffffff
d05a2788:	d100      	bne.n	d05a278c <memcpy+0xc>
d05a278a:	4770      	bx	lr
d05a278c:	b510      	push	{r4, lr}
d05a278e:	f811 4b01 	ldrb.w	r4, [r1], #1
d05a2792:	f803 4f01 	strb.w	r4, [r3, #1]!
d05a2796:	4291      	cmp	r1, r2
d05a2798:	d1f9      	bne.n	d05a278e <memcpy+0xe>
d05a279a:	bd10      	pop	{r4, pc}

d05a279c <memmove>:
d05a279c:	4288      	cmp	r0, r1
d05a279e:	b510      	push	{r4, lr}
d05a27a0:	eb01 0402 	add.w	r4, r1, r2
d05a27a4:	d902      	bls.n	d05a27ac <memmove+0x10>
d05a27a6:	4284      	cmp	r4, r0
d05a27a8:	4623      	mov	r3, r4
d05a27aa:	d807      	bhi.n	d05a27bc <memmove+0x20>
d05a27ac:	1e43      	subs	r3, r0, #1
d05a27ae:	42a1      	cmp	r1, r4
d05a27b0:	d008      	beq.n	d05a27c4 <memmove+0x28>
d05a27b2:	f811 2b01 	ldrb.w	r2, [r1], #1
d05a27b6:	f803 2f01 	strb.w	r2, [r3, #1]!
d05a27ba:	e7f8      	b.n	d05a27ae <memmove+0x12>
d05a27bc:	4402      	add	r2, r0
d05a27be:	4601      	mov	r1, r0
d05a27c0:	428a      	cmp	r2, r1
d05a27c2:	d100      	bne.n	d05a27c6 <memmove+0x2a>
d05a27c4:	bd10      	pop	{r4, pc}
d05a27c6:	f813 4d01 	ldrb.w	r4, [r3, #-1]!
d05a27ca:	f802 4d01 	strb.w	r4, [r2, #-1]!
d05a27ce:	e7f7      	b.n	d05a27c0 <memmove+0x24>

d05a27d0 <__malloc_lock>:
d05a27d0:	4801      	ldr	r0, [pc, #4]	; (d05a27d8 <__malloc_lock+0x8>)
d05a27d2:	f7ff bb3f 	b.w	d05a1e54 <__retarget_lock_acquire_recursive>
d05a27d6:	bf00      	nop
d05a27d8:	d05b5d0c 	.word	0xd05b5d0c

d05a27dc <__malloc_unlock>:
d05a27dc:	4801      	ldr	r0, [pc, #4]	; (d05a27e4 <__malloc_unlock+0x8>)
d05a27de:	f7ff bb3a 	b.w	d05a1e56 <__retarget_lock_release_recursive>
d05a27e2:	bf00      	nop
d05a27e4:	d05b5d0c 	.word	0xd05b5d0c

d05a27e8 <_realloc_r>:
d05a27e8:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d05a27ea:	4607      	mov	r7, r0
d05a27ec:	4614      	mov	r4, r2
d05a27ee:	460e      	mov	r6, r1
d05a27f0:	b921      	cbnz	r1, d05a27fc <_realloc_r+0x14>
d05a27f2:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
d05a27f6:	4611      	mov	r1, r2
d05a27f8:	f7ff bbaa 	b.w	d05a1f50 <_malloc_r>
d05a27fc:	b922      	cbnz	r2, d05a2808 <_realloc_r+0x20>
d05a27fe:	f7ff fb57 	bl	d05a1eb0 <_free_r>
d05a2802:	4625      	mov	r5, r4
d05a2804:	4628      	mov	r0, r5
d05a2806:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d05a2808:	f000 f826 	bl	d05a2858 <_malloc_usable_size_r>
d05a280c:	42a0      	cmp	r0, r4
d05a280e:	d20f      	bcs.n	d05a2830 <_realloc_r+0x48>
d05a2810:	4621      	mov	r1, r4
d05a2812:	4638      	mov	r0, r7
d05a2814:	f7ff fb9c 	bl	d05a1f50 <_malloc_r>
d05a2818:	4605      	mov	r5, r0
d05a281a:	2800      	cmp	r0, #0
d05a281c:	d0f2      	beq.n	d05a2804 <_realloc_r+0x1c>
d05a281e:	4631      	mov	r1, r6
d05a2820:	4622      	mov	r2, r4
d05a2822:	f7ff ffad 	bl	d05a2780 <memcpy>
d05a2826:	4631      	mov	r1, r6
d05a2828:	4638      	mov	r0, r7
d05a282a:	f7ff fb41 	bl	d05a1eb0 <_free_r>
d05a282e:	e7e9      	b.n	d05a2804 <_realloc_r+0x1c>
d05a2830:	4635      	mov	r5, r6
d05a2832:	e7e7      	b.n	d05a2804 <_realloc_r+0x1c>

d05a2834 <_read_r>:
d05a2834:	b538      	push	{r3, r4, r5, lr}
d05a2836:	4d07      	ldr	r5, [pc, #28]	; (d05a2854 <_read_r+0x20>)
d05a2838:	4604      	mov	r4, r0
d05a283a:	4608      	mov	r0, r1
d05a283c:	4611      	mov	r1, r2
d05a283e:	2200      	movs	r2, #0
d05a2840:	602a      	str	r2, [r5, #0]
d05a2842:	461a      	mov	r2, r3
d05a2844:	f7fd fc2a 	bl	d05a009c <_read>
d05a2848:	1c43      	adds	r3, r0, #1
d05a284a:	d102      	bne.n	d05a2852 <_read_r+0x1e>
d05a284c:	682b      	ldr	r3, [r5, #0]
d05a284e:	b103      	cbz	r3, d05a2852 <_read_r+0x1e>
d05a2850:	6023      	str	r3, [r4, #0]
d05a2852:	bd38      	pop	{r3, r4, r5, pc}
d05a2854:	d05b5d14 	.word	0xd05b5d14

d05a2858 <_malloc_usable_size_r>:
d05a2858:	f851 3c04 	ldr.w	r3, [r1, #-4]
d05a285c:	1f18      	subs	r0, r3, #4
d05a285e:	2b00      	cmp	r3, #0
d05a2860:	bfbc      	itt	lt
d05a2862:	580b      	ldrlt	r3, [r1, r0]
d05a2864:	18c0      	addlt	r0, r0, r3
d05a2866:	4770      	bx	lr
d05a2868:	6d6d7544 	.word	0x6d6d7544
d05a286c:	656d2079 	.word	0x656d2079
d05a2870:	7420756e 	.word	0x7420756e
d05a2874:	20747365 	.word	0x20747365
d05a2878:	20616976 	.word	0x20616976
d05a287c:	20656874 	.word	0x20656874
d05a2880:	42444953 	.word	0x42444953
d05a2884:	4120584f 	.word	0x4120584f
d05a2888:	002e4950 	.word	0x002e4950
d05a288c:	646e6152 	.word	0x646e6152
d05a2890:	53206d6f 	.word	0x53206d6f
d05a2894:	65706168 	.word	0x65706168
d05a2898:	00000073 	.word	0x00000073
d05a289c:	73756150 	.word	0x73756150
d05a28a0:	00006465 	.word	0x00006465
d05a28a4:	6e6e7552 	.word	0x6e6e7552
d05a28a8:	00676e69 	.word	0x00676e69
d05a28ac:	7c207325 	.word	0x7c207325
d05a28b0:	61726620 	.word	0x61726620
d05a28b4:	2073656d 	.word	0x2073656d
d05a28b8:	20756c25 	.word	0x20756c25
d05a28bc:	6f63207c 	.word	0x6f63207c
d05a28c0:	72756f6c 	.word	0x72756f6c
d05a28c4:	646e6920 	.word	0x646e6920
d05a28c8:	25207865 	.word	0x25207865
d05a28cc:	00000075 	.word	0x00000075
d05a28d0:	6e696f44 	.word	0x6e696f44
d05a28d4:	6f732067 	.word	0x6f732067
d05a28d8:	7220656d 	.word	0x7220656d
d05a28dc:	6f646e61 	.word	0x6f646e61
d05a28e0:	6873206d 	.word	0x6873206d
d05a28e4:	73657061 	.word	0x73657061
d05a28e8:	00000021 	.word	0x00000021
d05a28ec:	70616853 	.word	0x70616853
d05a28f0:	4f7c7365 	.word	0x4f7c7365
d05a28f4:	6f697470 	.word	0x6f697470
d05a28f8:	417c736e 	.word	0x417c736e
d05a28fc:	74756f62 	.word	0x74756f62
d05a2900:	00000000 	.word	0x00000000
d05a2904:	73727542 	.word	0x73727542
d05a2908:	00000074 	.word	0x00000074
d05a290c:	61656c43 	.word	0x61656c43
d05a2910:	00000072 	.word	0x00000072
d05a2914:	74697845 	.word	0x74697845
d05a2918:	00000000 	.word	0x00000000
d05a291c:	756f6241 	.word	0x756f6241
d05a2920:	61522074 	.word	0x61522074
d05a2924:	6d6f646e 	.word	0x6d6f646e
d05a2928:	61685320 	.word	0x61685320
d05a292c:	00736570 	.word	0x00736570
d05a2930:	73756150 	.word	0x73756150
d05a2934:	00000065 	.word	0x00000065
d05a2938:	736f6c43 	.word	0x736f6c43
d05a293c:	00000065 	.word	0x00000065

d05a2940 <_global_impure_ptr>:
d05a2940:	d05a29ec                                .)Z.

d05a2944 <__sf_fake_stderr>:
	...

d05a2964 <__sf_fake_stdin>:
	...

d05a2984 <__sf_fake_stdout>:
	...
d05a29a4:	2b302d23 6c680020 6665004c 47464567     #-0+ .hlL.efgEFG
d05a29b4:	32313000 36353433 41393837 45444342     .0123456789ABCDE
d05a29c4:	31300046 35343332 39383736 64636261     F.0123456789abcd
d05a29d4:	                                         ef.

Disassembly of section .init:

d05a29d8 <_init>:
d05a29d8:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d05a29da:	bf00      	nop

Disassembly of section .fini:

d05a29dc <_fini>:
d05a29dc:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d05a29de:	bf00      	nop

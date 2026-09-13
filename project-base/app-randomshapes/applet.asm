
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
d05a001e:	f001 fc57 	bl	d05a18d0 <setbuf>
d05a0022:	6833      	ldr	r3, [r6, #0]
d05a0024:	2100      	movs	r1, #0
d05a0026:	68d8      	ldr	r0, [r3, #12]
d05a0028:	f001 fc52 	bl	d05a18d0 <setbuf>
d05a002c:	4629      	mov	r1, r5
d05a002e:	4620      	mov	r0, r4
d05a0030:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
d05a0034:	f001 b90e 	b.w	d05a1254 <main>
d05a0038:	d05a29bc 	.word	0xd05a29bc

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
d05a0084:	f001 fc16 	bl	d05a18b4 <__errno>
d05a0088:	2209      	movs	r2, #9
d05a008a:	4603      	mov	r3, r0
d05a008c:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d05a0090:	601a      	str	r2, [r3, #0]
d05a0092:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d05a0094:	d05a2a24 	.word	0xd05a2a24
d05a0098:	2001f000 	.word	0x2001f000

d05a009c <_read>:
d05a009c:	b508      	push	{r3, lr}
d05a009e:	f001 fc09 	bl	d05a18b4 <__errno>
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
d05a00ea:	f001 fbe3 	bl	d05a18b4 <__errno>
d05a00ee:	220c      	movs	r2, #12
d05a00f0:	4603      	mov	r3, r0
d05a00f2:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d05a00f6:	601a      	str	r2, [r3, #0]
d05a00f8:	bd10      	pop	{r4, pc}
d05a00fa:	bf00      	nop
d05a00fc:	d05a2a20 	.word	0xd05a2a20
d05a0100:	d05b7cd8 	.word	0xd05b7cd8
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
d05a0138:	d05b5c48 	.word	0xd05b5c48
d05a013c:	d05a2858 	.word	0xd05a2858
d05a0140:	d05a287c 	.word	0xd05a287c

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
d05a016a:	f001 fc7f 	bl	d05a1a6c <sniprintf>
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
d05a01e8:	d05b5c58 	.word	0xd05b5c58
d05a01ec:	d05b5c40 	.word	0xd05b5c40
d05a01f0:	d05b5c4c 	.word	0xd05b5c4c
d05a01f4:	d05a2894 	.word	0xd05a2894
d05a01f8:	d05a288c 	.word	0xd05a288c
d05a01fc:	d05b5cbc 	.word	0xd05b5cbc
d05a0200:	d05b5c5c 	.word	0xd05b5c5c
d05a0204:	d05a289c 	.word	0xd05a289c
d05a0208:	2001f000 	.word	0x2001f000
d05a020c:	d05b5c48 	.word	0xd05b5c48

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
d05a025c:	d05b5c54 	.word	0xd05b5c54
d05a0260:	d05b5c58 	.word	0xd05b5c58
d05a0264:	2001f000 	.word	0x2001f000

d05a0268 <app_shutdown.part.0>:
d05a0268:	b538      	push	{r3, r4, r5, lr}
d05a026a:	4c21      	ldr	r4, [pc, #132]	; (d05a02f0 <app_shutdown.part.0+0x88>)
d05a026c:	2200      	movs	r2, #0
d05a026e:	4b21      	ldr	r3, [pc, #132]	; (d05a02f4 <app_shutdown.part.0+0x8c>)
d05a0270:	7820      	ldrb	r0, [r4, #0]
d05a0272:	701a      	strb	r2, [r3, #0]
d05a0274:	28ff      	cmp	r0, #255	; 0xff
d05a0276:	d00f      	beq.n	d05a0298 <app_shutdown.part.0+0x30>
d05a0278:	4a1f      	ldr	r2, [pc, #124]	; (d05a02f8 <app_shutdown.part.0+0x90>)
d05a027a:	7a13      	ldrb	r3, [r2, #8]
d05a027c:	7a55      	ldrb	r5, [r2, #9]
d05a027e:	7a91      	ldrb	r1, [r2, #10]
d05a0280:	ea43 2305 	orr.w	r3, r3, r5, lsl #8
d05a0284:	7ad2      	ldrb	r2, [r2, #11]
d05a0286:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d05a028a:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d05a028e:	695b      	ldr	r3, [r3, #20]
d05a0290:	685b      	ldr	r3, [r3, #4]
d05a0292:	4798      	blx	r3
d05a0294:	23ff      	movs	r3, #255	; 0xff
d05a0296:	7023      	strb	r3, [r4, #0]
d05a0298:	4c18      	ldr	r4, [pc, #96]	; (d05a02fc <app_shutdown.part.0+0x94>)
d05a029a:	7820      	ldrb	r0, [r4, #0]
d05a029c:	b178      	cbz	r0, d05a02be <app_shutdown.part.0+0x56>
d05a029e:	4a16      	ldr	r2, [pc, #88]	; (d05a02f8 <app_shutdown.part.0+0x90>)
d05a02a0:	7a13      	ldrb	r3, [r2, #8]
d05a02a2:	7a55      	ldrb	r5, [r2, #9]
d05a02a4:	7a91      	ldrb	r1, [r2, #10]
d05a02a6:	ea43 2305 	orr.w	r3, r3, r5, lsl #8
d05a02aa:	7ad2      	ldrb	r2, [r2, #11]
d05a02ac:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d05a02b0:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d05a02b4:	685b      	ldr	r3, [r3, #4]
d05a02b6:	685b      	ldr	r3, [r3, #4]
d05a02b8:	4798      	blx	r3
d05a02ba:	2300      	movs	r3, #0
d05a02bc:	7023      	strb	r3, [r4, #0]
d05a02be:	4c10      	ldr	r4, [pc, #64]	; (d05a0300 <app_shutdown.part.0+0x98>)
d05a02c0:	6820      	ldr	r0, [r4, #0]
d05a02c2:	b198      	cbz	r0, d05a02ec <app_shutdown.part.0+0x84>
d05a02c4:	4a0c      	ldr	r2, [pc, #48]	; (d05a02f8 <app_shutdown.part.0+0x90>)
d05a02c6:	7a13      	ldrb	r3, [r2, #8]
d05a02c8:	7a55      	ldrb	r5, [r2, #9]
d05a02ca:	7a91      	ldrb	r1, [r2, #10]
d05a02cc:	ea43 2305 	orr.w	r3, r3, r5, lsl #8
d05a02d0:	7ad2      	ldrb	r2, [r2, #11]
d05a02d2:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d05a02d6:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d05a02da:	699b      	ldr	r3, [r3, #24]
d05a02dc:	689b      	ldr	r3, [r3, #8]
d05a02de:	4798      	blx	r3
d05a02e0:	2300      	movs	r3, #0
d05a02e2:	4908      	ldr	r1, [pc, #32]	; (d05a0304 <app_shutdown.part.0+0x9c>)
d05a02e4:	4a08      	ldr	r2, [pc, #32]	; (d05a0308 <app_shutdown.part.0+0xa0>)
d05a02e6:	6023      	str	r3, [r4, #0]
d05a02e8:	600b      	str	r3, [r1, #0]
d05a02ea:	6013      	str	r3, [r2, #0]
d05a02ec:	bd38      	pop	{r3, r4, r5, pc}
d05a02ee:	bf00      	nop
d05a02f0:	d05a29b4 	.word	0xd05a29b4
d05a02f4:	d05a2a28 	.word	0xd05a2a28
d05a02f8:	2001f000 	.word	0x2001f000
d05a02fc:	d05b5c48 	.word	0xd05b5c48
d05a0300:	d05b5c44 	.word	0xd05b5c44
d05a0304:	d05b5c54 	.word	0xd05b5c54
d05a0308:	d05b5c50 	.word	0xd05b5c50

d05a030c <editor_proc>:
d05a030c:	2900      	cmp	r1, #0
d05a030e:	d039      	beq.n	d05a0384 <editor_proc+0x78>
d05a0310:	680b      	ldr	r3, [r1, #0]
d05a0312:	2b20      	cmp	r3, #32
d05a0314:	b510      	push	{r4, lr}
d05a0316:	d018      	beq.n	d05a034a <editor_proc+0x3e>
d05a0318:	2b70      	cmp	r3, #112	; 0x70
d05a031a:	d001      	beq.n	d05a0320 <editor_proc+0x14>
d05a031c:	2000      	movs	r0, #0
d05a031e:	bd10      	pop	{r4, pc}
d05a0320:	68cb      	ldr	r3, [r1, #12]
d05a0322:	f5b3 6f10 	cmp.w	r3, #2304	; 0x900
d05a0326:	d1f9      	bne.n	d05a031c <editor_proc+0x10>
d05a0328:	4b18      	ldr	r3, [pc, #96]	; (d05a038c <editor_proc+0x80>)
d05a032a:	690a      	ldr	r2, [r1, #16]
d05a032c:	681b      	ldr	r3, [r3, #0]
d05a032e:	429a      	cmp	r2, r3
d05a0330:	d1f4      	bne.n	d05a031c <editor_proc+0x10>
d05a0332:	4b17      	ldr	r3, [pc, #92]	; (d05a0390 <editor_proc+0x84>)
d05a0334:	694a      	ldr	r2, [r1, #20]
d05a0336:	681b      	ldr	r3, [r3, #0]
d05a0338:	429a      	cmp	r2, r3
d05a033a:	d1ef      	bne.n	d05a031c <editor_proc+0x10>
d05a033c:	4b15      	ldr	r3, [pc, #84]	; (d05a0394 <editor_proc+0x88>)
d05a033e:	781b      	ldrb	r3, [r3, #0]
d05a0340:	b313      	cbz	r3, d05a0388 <editor_proc+0x7c>
d05a0342:	f7ff ff91 	bl	d05a0268 <app_shutdown.part.0>
d05a0346:	20f0      	movs	r0, #240	; 0xf0
d05a0348:	bd10      	pop	{r4, pc}
d05a034a:	68cb      	ldr	r3, [r1, #12]
d05a034c:	f5b3 5f80 	cmp.w	r3, #4096	; 0x1000
d05a0350:	d0f4      	beq.n	d05a033c <editor_proc+0x30>
d05a0352:	f248 0204 	movw	r2, #32772	; 0x8004
d05a0356:	4293      	cmp	r3, r2
d05a0358:	d1e0      	bne.n	d05a031c <editor_proc+0x10>
d05a035a:	4b0f      	ldr	r3, [pc, #60]	; (d05a0398 <editor_proc+0x8c>)
d05a035c:	6818      	ldr	r0, [r3, #0]
d05a035e:	b168      	cbz	r0, d05a037c <editor_proc+0x70>
d05a0360:	4a0e      	ldr	r2, [pc, #56]	; (d05a039c <editor_proc+0x90>)
d05a0362:	7a13      	ldrb	r3, [r2, #8]
d05a0364:	7a54      	ldrb	r4, [r2, #9]
d05a0366:	7a91      	ldrb	r1, [r2, #10]
d05a0368:	ea43 2304 	orr.w	r3, r3, r4, lsl #8
d05a036c:	7ad2      	ldrb	r2, [r2, #11]
d05a036e:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d05a0372:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d05a0376:	68db      	ldr	r3, [r3, #12]
d05a0378:	6d9b      	ldr	r3, [r3, #88]	; 0x58
d05a037a:	4798      	blx	r3
d05a037c:	f7ff fee2 	bl	d05a0144 <set_status>
d05a0380:	20f0      	movs	r0, #240	; 0xf0
d05a0382:	bd10      	pop	{r4, pc}
d05a0384:	4608      	mov	r0, r1
d05a0386:	4770      	bx	lr
d05a0388:	20f0      	movs	r0, #240	; 0xf0
d05a038a:	bd10      	pop	{r4, pc}
d05a038c:	d05b5c44 	.word	0xd05b5c44
d05a0390:	d05b5c50 	.word	0xd05b5c50
d05a0394:	d05a2a28 	.word	0xd05a2a28
d05a0398:	d05a2a2c 	.word	0xd05a2a2c
d05a039c:	2001f000 	.word	0x2001f000

d05a03a0 <clear_demo>:
d05a03a0:	4b1d      	ldr	r3, [pc, #116]	; (d05a0418 <clear_demo+0x78>)
d05a03a2:	f44f 3299 	mov.w	r2, #78336	; 0x13200
d05a03a6:	481d      	ldr	r0, [pc, #116]	; (d05a041c <clear_demo+0x7c>)
d05a03a8:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
d05a03ac:	7819      	ldrb	r1, [r3, #0]
d05a03ae:	2500      	movs	r5, #0
d05a03b0:	4f1b      	ldr	r7, [pc, #108]	; (d05a0420 <clear_demo+0x80>)
d05a03b2:	3111      	adds	r1, #17
d05a03b4:	f8df 8074 	ldr.w	r8, [pc, #116]	; d05a042c <clear_demo+0x8c>
d05a03b8:	f507 694c 	add.w	r9, r7, #3264	; 0xcc0
d05a03bc:	b2c9      	uxtb	r1, r1
d05a03be:	f001 fa7f 	bl	d05a18c0 <memset>
d05a03c2:	022e      	lsls	r6, r5, #8
d05a03c4:	462b      	mov	r3, r5
d05a03c6:	eb07 0a05 	add.w	sl, r7, r5
d05a03ca:	3501      	adds	r5, #1
d05a03cc:	fba8 2606 	umull	r2, r6, r8, r6
d05a03d0:	eb09 0403 	add.w	r4, r9, r3
d05a03d4:	0a36      	lsrs	r6, r6, #8
d05a03d6:	4650      	mov	r0, sl
d05a03d8:	f50a 7acc 	add.w	sl, sl, #408	; 0x198
d05a03dc:	2201      	movs	r2, #1
d05a03de:	4631      	mov	r1, r6
d05a03e0:	f001 fa6e 	bl	d05a18c0 <memset>
d05a03e4:	45a2      	cmp	sl, r4
d05a03e6:	d1f6      	bne.n	d05a03d6 <clear_demo+0x36>
d05a03e8:	f5b5 7fcc 	cmp.w	r5, #408	; 0x198
d05a03ec:	d1e9      	bne.n	d05a03c2 <clear_demo+0x22>
d05a03ee:	4b0d      	ldr	r3, [pc, #52]	; (d05a0424 <clear_demo+0x84>)
d05a03f0:	6818      	ldr	r0, [r3, #0]
d05a03f2:	b168      	cbz	r0, d05a0410 <clear_demo+0x70>
d05a03f4:	4a0c      	ldr	r2, [pc, #48]	; (d05a0428 <clear_demo+0x88>)
d05a03f6:	7a13      	ldrb	r3, [r2, #8]
d05a03f8:	7a54      	ldrb	r4, [r2, #9]
d05a03fa:	7a91      	ldrb	r1, [r2, #10]
d05a03fc:	ea43 2304 	orr.w	r3, r3, r4, lsl #8
d05a0400:	7ad2      	ldrb	r2, [r2, #11]
d05a0402:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d05a0406:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d05a040a:	68db      	ldr	r3, [r3, #12]
d05a040c:	6d9b      	ldr	r3, [r3, #88]	; 0x58
d05a040e:	4798      	blx	r3
d05a0410:	e8bd 47f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
d05a0414:	f7ff be96 	b.w	d05a0144 <set_status>
d05a0418:	d05b5c40 	.word	0xd05b5c40
d05a041c:	d05a2a40 	.word	0xd05a2a40
d05a0420:	d05b4f80 	.word	0xd05b4f80
d05a0424:	d05a2a2c 	.word	0xd05a2a2c
d05a0428:	2001f000 	.word	0x2001f000
d05a042c:	a0a0a0a1 	.word	0xa0a0a0a1

d05a0430 <on_clear_clicked>:
d05a0430:	f7ff bfb6 	b.w	d05a03a0 <clear_demo>

d05a0434 <on_menu_clear>:
d05a0434:	f7ff bfb4 	b.w	d05a03a0 <clear_demo>

d05a0438 <on_menu_pause>:
d05a0438:	b538      	push	{r3, r4, r5, lr}
d05a043a:	4b11      	ldr	r3, [pc, #68]	; (d05a0480 <on_menu_pause+0x48>)
d05a043c:	4811      	ldr	r0, [pc, #68]	; (d05a0484 <on_menu_pause+0x4c>)
d05a043e:	7819      	ldrb	r1, [r3, #0]
d05a0440:	b931      	cbnz	r1, d05a0450 <on_menu_pause+0x18>
d05a0442:	2401      	movs	r4, #1
d05a0444:	6802      	ldr	r2, [r0, #0]
d05a0446:	701c      	strb	r4, [r3, #0]
d05a0448:	b1aa      	cbz	r2, d05a0476 <on_menu_pause+0x3e>
d05a044a:	4c0f      	ldr	r4, [pc, #60]	; (d05a0488 <on_menu_pause+0x50>)
d05a044c:	2204      	movs	r2, #4
d05a044e:	e005      	b.n	d05a045c <on_menu_pause+0x24>
d05a0450:	2200      	movs	r2, #0
d05a0452:	6801      	ldr	r1, [r0, #0]
d05a0454:	701a      	strb	r2, [r3, #0]
d05a0456:	b171      	cbz	r1, d05a0476 <on_menu_pause+0x3e>
d05a0458:	4c0b      	ldr	r4, [pc, #44]	; (d05a0488 <on_menu_pause+0x50>)
d05a045a:	2104      	movs	r1, #4
d05a045c:	7a23      	ldrb	r3, [r4, #8]
d05a045e:	7a65      	ldrb	r5, [r4, #9]
d05a0460:	ea43 2305 	orr.w	r3, r3, r5, lsl #8
d05a0464:	7aa5      	ldrb	r5, [r4, #10]
d05a0466:	7ae4      	ldrb	r4, [r4, #11]
d05a0468:	ea43 4305 	orr.w	r3, r3, r5, lsl #16
d05a046c:	ea43 6304 	orr.w	r3, r3, r4, lsl #24
d05a0470:	699b      	ldr	r3, [r3, #24]
d05a0472:	699b      	ldr	r3, [r3, #24]
d05a0474:	4798      	blx	r3
d05a0476:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
d05a047a:	f7ff be63 	b.w	d05a0144 <set_status>
d05a047e:	bf00      	nop
d05a0480:	d05b5c58 	.word	0xd05b5c58
d05a0484:	d05b5c54 	.word	0xd05b5c54
d05a0488:	2001f000 	.word	0x2001f000

d05a048c <on_pause_clicked>:
d05a048c:	b538      	push	{r3, r4, r5, lr}
d05a048e:	4b11      	ldr	r3, [pc, #68]	; (d05a04d4 <on_pause_clicked+0x48>)
d05a0490:	4811      	ldr	r0, [pc, #68]	; (d05a04d8 <on_pause_clicked+0x4c>)
d05a0492:	7819      	ldrb	r1, [r3, #0]
d05a0494:	b931      	cbnz	r1, d05a04a4 <on_pause_clicked+0x18>
d05a0496:	2401      	movs	r4, #1
d05a0498:	6802      	ldr	r2, [r0, #0]
d05a049a:	701c      	strb	r4, [r3, #0]
d05a049c:	b1aa      	cbz	r2, d05a04ca <on_pause_clicked+0x3e>
d05a049e:	4c0f      	ldr	r4, [pc, #60]	; (d05a04dc <on_pause_clicked+0x50>)
d05a04a0:	2204      	movs	r2, #4
d05a04a2:	e005      	b.n	d05a04b0 <on_pause_clicked+0x24>
d05a04a4:	2200      	movs	r2, #0
d05a04a6:	6801      	ldr	r1, [r0, #0]
d05a04a8:	701a      	strb	r2, [r3, #0]
d05a04aa:	b171      	cbz	r1, d05a04ca <on_pause_clicked+0x3e>
d05a04ac:	4c0b      	ldr	r4, [pc, #44]	; (d05a04dc <on_pause_clicked+0x50>)
d05a04ae:	2104      	movs	r1, #4
d05a04b0:	7a23      	ldrb	r3, [r4, #8]
d05a04b2:	7a65      	ldrb	r5, [r4, #9]
d05a04b4:	ea43 2305 	orr.w	r3, r3, r5, lsl #8
d05a04b8:	7aa5      	ldrb	r5, [r4, #10]
d05a04ba:	7ae4      	ldrb	r4, [r4, #11]
d05a04bc:	ea43 4305 	orr.w	r3, r3, r5, lsl #16
d05a04c0:	ea43 6304 	orr.w	r3, r3, r4, lsl #24
d05a04c4:	699b      	ldr	r3, [r3, #24]
d05a04c6:	699b      	ldr	r3, [r3, #24]
d05a04c8:	4798      	blx	r3
d05a04ca:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
d05a04ce:	f7ff be39 	b.w	d05a0144 <set_status>
d05a04d2:	bf00      	nop
d05a04d4:	d05b5c58 	.word	0xd05b5c58
d05a04d8:	d05b5c54 	.word	0xd05b5c54
d05a04dc:	2001f000 	.word	0x2001f000

d05a04e0 <on_close_clicked>:
d05a04e0:	b538      	push	{r3, r4, r5, lr}
d05a04e2:	4b22      	ldr	r3, [pc, #136]	; (d05a056c <on_close_clicked+0x8c>)
d05a04e4:	781a      	ldrb	r2, [r3, #0]
d05a04e6:	2a00      	cmp	r2, #0
d05a04e8:	d03f      	beq.n	d05a056a <on_close_clicked+0x8a>
d05a04ea:	4c21      	ldr	r4, [pc, #132]	; (d05a0570 <on_close_clicked+0x90>)
d05a04ec:	2200      	movs	r2, #0
d05a04ee:	7820      	ldrb	r0, [r4, #0]
d05a04f0:	701a      	strb	r2, [r3, #0]
d05a04f2:	28ff      	cmp	r0, #255	; 0xff
d05a04f4:	d00f      	beq.n	d05a0516 <on_close_clicked+0x36>
d05a04f6:	4a1f      	ldr	r2, [pc, #124]	; (d05a0574 <on_close_clicked+0x94>)
d05a04f8:	7a13      	ldrb	r3, [r2, #8]
d05a04fa:	7a55      	ldrb	r5, [r2, #9]
d05a04fc:	7a91      	ldrb	r1, [r2, #10]
d05a04fe:	ea43 2305 	orr.w	r3, r3, r5, lsl #8
d05a0502:	7ad2      	ldrb	r2, [r2, #11]
d05a0504:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d05a0508:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d05a050c:	695b      	ldr	r3, [r3, #20]
d05a050e:	685b      	ldr	r3, [r3, #4]
d05a0510:	4798      	blx	r3
d05a0512:	23ff      	movs	r3, #255	; 0xff
d05a0514:	7023      	strb	r3, [r4, #0]
d05a0516:	4c18      	ldr	r4, [pc, #96]	; (d05a0578 <on_close_clicked+0x98>)
d05a0518:	7820      	ldrb	r0, [r4, #0]
d05a051a:	b178      	cbz	r0, d05a053c <on_close_clicked+0x5c>
d05a051c:	4a15      	ldr	r2, [pc, #84]	; (d05a0574 <on_close_clicked+0x94>)
d05a051e:	7a13      	ldrb	r3, [r2, #8]
d05a0520:	7a55      	ldrb	r5, [r2, #9]
d05a0522:	7a91      	ldrb	r1, [r2, #10]
d05a0524:	ea43 2305 	orr.w	r3, r3, r5, lsl #8
d05a0528:	7ad2      	ldrb	r2, [r2, #11]
d05a052a:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d05a052e:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d05a0532:	685b      	ldr	r3, [r3, #4]
d05a0534:	685b      	ldr	r3, [r3, #4]
d05a0536:	4798      	blx	r3
d05a0538:	2300      	movs	r3, #0
d05a053a:	7023      	strb	r3, [r4, #0]
d05a053c:	4c0f      	ldr	r4, [pc, #60]	; (d05a057c <on_close_clicked+0x9c>)
d05a053e:	6820      	ldr	r0, [r4, #0]
d05a0540:	b198      	cbz	r0, d05a056a <on_close_clicked+0x8a>
d05a0542:	4a0c      	ldr	r2, [pc, #48]	; (d05a0574 <on_close_clicked+0x94>)
d05a0544:	7a13      	ldrb	r3, [r2, #8]
d05a0546:	7a55      	ldrb	r5, [r2, #9]
d05a0548:	7a91      	ldrb	r1, [r2, #10]
d05a054a:	ea43 2305 	orr.w	r3, r3, r5, lsl #8
d05a054e:	7ad2      	ldrb	r2, [r2, #11]
d05a0550:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d05a0554:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d05a0558:	699b      	ldr	r3, [r3, #24]
d05a055a:	689b      	ldr	r3, [r3, #8]
d05a055c:	4798      	blx	r3
d05a055e:	2300      	movs	r3, #0
d05a0560:	4907      	ldr	r1, [pc, #28]	; (d05a0580 <on_close_clicked+0xa0>)
d05a0562:	4a08      	ldr	r2, [pc, #32]	; (d05a0584 <on_close_clicked+0xa4>)
d05a0564:	6023      	str	r3, [r4, #0]
d05a0566:	600b      	str	r3, [r1, #0]
d05a0568:	6013      	str	r3, [r2, #0]
d05a056a:	bd38      	pop	{r3, r4, r5, pc}
d05a056c:	d05a2a28 	.word	0xd05a2a28
d05a0570:	d05a29b4 	.word	0xd05a29b4
d05a0574:	2001f000 	.word	0x2001f000
d05a0578:	d05b5c48 	.word	0xd05b5c48
d05a057c:	d05b5c44 	.word	0xd05b5c44
d05a0580:	d05b5c54 	.word	0xd05b5c54
d05a0584:	d05b5c50 	.word	0xd05b5c50

d05a0588 <draw_random_shape>:
d05a0588:	4ac3      	ldr	r2, [pc, #780]	; (d05a0898 <draw_random_shape+0x310>)
d05a058a:	49c4      	ldr	r1, [pc, #784]	; (d05a089c <draw_random_shape+0x314>)
d05a058c:	6813      	ldr	r3, [r2, #0]
d05a058e:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d05a0592:	ea83 3343 	eor.w	r3, r3, r3, lsl #13
d05a0596:	f891 b000 	ldrb.w	fp, [r1]
d05a059a:	b08d      	sub	sp, #52	; 0x34
d05a059c:	f10b 0001 	add.w	r0, fp, #1
d05a05a0:	ea83 4353 	eor.w	r3, r3, r3, lsr #17
d05a05a4:	7008      	strb	r0, [r1, #0]
d05a05a6:	f003 0003 	and.w	r0, r3, #3
d05a05aa:	ea83 1143 	eor.w	r1, r3, r3, lsl #5
d05a05ae:	2802      	cmp	r0, #2
d05a05b0:	f000 8088 	beq.w	d05a06c4 <draw_random_shape+0x13c>
d05a05b4:	2803      	cmp	r0, #3
d05a05b6:	ea81 3141 	eor.w	r1, r1, r1, lsl #13
d05a05ba:	f000 8183 	beq.w	d05a08c4 <draw_random_shape+0x33c>
d05a05be:	2801      	cmp	r0, #1
d05a05c0:	f000 827e 	beq.w	d05a0ac0 <draw_random_shape+0x538>
d05a05c4:	ea81 4151 	eor.w	r1, r1, r1, lsr #17
d05a05c8:	4bb5      	ldr	r3, [pc, #724]	; (d05a08a0 <draw_random_shape+0x318>)
d05a05ca:	4eb6      	ldr	r6, [pc, #728]	; (d05a08a4 <draw_random_shape+0x31c>)
d05a05cc:	f240 15a9 	movw	r5, #425	; 0x1a9
d05a05d0:	ea81 1141 	eor.w	r1, r1, r1, lsl #5
d05a05d4:	4cb4      	ldr	r4, [pc, #720]	; (d05a08a8 <draw_random_shape+0x320>)
d05a05d6:	48b5      	ldr	r0, [pc, #724]	; (d05a08ac <draw_random_shape+0x324>)
d05a05d8:	ea81 3741 	eor.w	r7, r1, r1, lsl #13
d05a05dc:	fba3 c301 	umull	ip, r3, r3, r1
d05a05e0:	ea87 4757 	eor.w	r7, r7, r7, lsr #17
d05a05e4:	eba1 0c03 	sub.w	ip, r1, r3
d05a05e8:	ea87 1747 	eor.w	r7, r7, r7, lsl #5
d05a05ec:	eb03 035c 	add.w	r3, r3, ip, lsr #1
d05a05f0:	ea87 3e47 	eor.w	lr, r7, r7, lsl #13
d05a05f4:	fba6 6c07 	umull	r6, ip, r6, r7
d05a05f8:	0a1b      	lsrs	r3, r3, #8
d05a05fa:	ea8e 465e 	eor.w	r6, lr, lr, lsr #17
d05a05fe:	fb05 1113 	mls	r1, r5, r3, r1
d05a0602:	ea4f 0c5c 	mov.w	ip, ip, lsr #1
d05a0606:	ea86 1646 	eor.w	r6, r6, r6, lsl #5
d05a060a:	25c9      	movs	r5, #201	; 0xc9
d05a060c:	b289      	uxth	r1, r1
d05a060e:	ea86 3346 	eor.w	r3, r6, r6, lsl #13
d05a0612:	fb05 771c 	mls	r7, r5, ip, r7
d05a0616:	fba0 e006 	umull	lr, r0, r0, r6
d05a061a:	ea83 4353 	eor.w	r3, r3, r3, lsr #17
d05a061e:	0980      	lsrs	r0, r0, #6
d05a0620:	ea83 1543 	eor.w	r5, r3, r3, lsl #5
d05a0624:	eb00 00c0 	add.w	r0, r0, r0, lsl #3
d05a0628:	fba4 4305 	umull	r4, r3, r4, r5
d05a062c:	b2bc      	uxth	r4, r7
d05a062e:	eb00 00c0 	add.w	r0, r0, r0, lsl #3
d05a0632:	6015      	str	r5, [r2, #0]
d05a0634:	1aef      	subs	r7, r5, r3
d05a0636:	f1a1 0210 	sub.w	r2, r1, #16
d05a063a:	1a30      	subs	r0, r6, r0
d05a063c:	eb03 0357 	add.w	r3, r3, r7, lsr #1
d05a0640:	4402      	add	r2, r0
d05a0642:	f1a4 0010 	sub.w	r0, r4, #16
d05a0646:	095b      	lsrs	r3, r3, #5
d05a0648:	b212      	sxth	r2, r2
d05a064a:	ebc3 06c3 	rsb	r6, r3, r3, lsl #3
d05a064e:	2a00      	cmp	r2, #0
d05a0650:	eb03 03c6 	add.w	r3, r3, r6, lsl #3
d05a0654:	eba5 0303 	sub.w	r3, r5, r3
d05a0658:	4403      	add	r3, r0
d05a065a:	b21b      	sxth	r3, r3
d05a065c:	dd2f      	ble.n	d05a06be <draw_random_shape+0x136>
d05a065e:	2b00      	cmp	r3, #0
d05a0660:	dd2d      	ble.n	d05a06be <draw_random_shape+0x136>
d05a0662:	f1a4 0618 	sub.w	r6, r4, #24
d05a0666:	2bc0      	cmp	r3, #192	; 0xc0
d05a0668:	f1a1 0118 	sub.w	r1, r1, #24
d05a066c:	b236      	sxth	r6, r6
d05a066e:	bfa8      	it	ge
d05a0670:	23c0      	movge	r3, #192	; 0xc0
d05a0672:	f5b2 7fcc 	cmp.w	r2, #408	; 0x198
d05a0676:	b209      	sxth	r1, r1
d05a0678:	ea26 76e6 	bic.w	r6, r6, r6, asr #31
d05a067c:	bfa8      	it	ge
d05a067e:	f44f 72cc 	movge.w	r2, #408	; 0x198
d05a0682:	ea21 71e1 	bic.w	r1, r1, r1, asr #31
d05a0686:	429e      	cmp	r6, r3
d05a0688:	da19      	bge.n	d05a06be <draw_random_shape+0x136>
d05a068a:	f44f 70cc 	mov.w	r0, #408	; 0x198
d05a068e:	f8df c22c 	ldr.w	ip, [pc, #556]	; d05a08bc <draw_random_shape+0x334>
d05a0692:	43f7      	mvns	r7, r6
d05a0694:	1a55      	subs	r5, r2, r1
d05a0696:	fb16 1400 	smlabb	r4, r6, r0, r1
d05a069a:	eb0c 0200 	add.w	r2, ip, r0
d05a069e:	443b      	add	r3, r7
d05a06a0:	4411      	add	r1, r2
d05a06a2:	4464      	add	r4, ip
d05a06a4:	fa16 f383 	uxtah	r3, r6, r3
d05a06a8:	fb00 1603 	mla	r6, r0, r3, r1
d05a06ac:	4620      	mov	r0, r4
d05a06ae:	f504 74cc 	add.w	r4, r4, #408	; 0x198
d05a06b2:	462a      	mov	r2, r5
d05a06b4:	4659      	mov	r1, fp
d05a06b6:	f001 f903 	bl	d05a18c0 <memset>
d05a06ba:	42b4      	cmp	r4, r6
d05a06bc:	d1f6      	bne.n	d05a06ac <draw_random_shape+0x124>
d05a06be:	b00d      	add	sp, #52	; 0x34
d05a06c0:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d05a06c4:	ea81 3141 	eor.w	r1, r1, r1, lsl #13
d05a06c8:	4879      	ldr	r0, [pc, #484]	; (d05a08b0 <draw_random_shape+0x328>)
d05a06ca:	f44f 77cc 	mov.w	r7, #408	; 0x198
d05a06ce:	f8df c1f0 	ldr.w	ip, [pc, #496]	; d05a08c0 <draw_random_shape+0x338>
d05a06d2:	ea81 4151 	eor.w	r1, r1, r1, lsr #17
d05a06d6:	26b8      	movs	r6, #184	; 0xb8
d05a06d8:	4d76      	ldr	r5, [pc, #472]	; (d05a08b4 <draw_random_shape+0x32c>)
d05a06da:	ea81 1141 	eor.w	r1, r1, r1, lsl #5
d05a06de:	ea81 3341 	eor.w	r3, r1, r1, lsl #13
d05a06e2:	fba0 e401 	umull	lr, r4, r0, r1
d05a06e6:	ea83 4353 	eor.w	r3, r3, r3, lsr #17
d05a06ea:	0a24      	lsrs	r4, r4, #8
d05a06ec:	ea83 1343 	eor.w	r3, r3, r3, lsl #5
d05a06f0:	fb07 1414 	mls	r4, r7, r4, r1
d05a06f4:	ea83 3143 	eor.w	r1, r3, r3, lsl #13
d05a06f8:	fbac ea03 	umull	lr, sl, ip, r3
d05a06fc:	ea81 4151 	eor.w	r1, r1, r1, lsr #17
d05a0700:	ea4f 1ada 	mov.w	sl, sl, lsr #7
d05a0704:	ea81 1141 	eor.w	r1, r1, r1, lsl #5
d05a0708:	fb06 3a1a 	mls	sl, r6, sl, r3
d05a070c:	ea81 3341 	eor.w	r3, r1, r1, lsl #13
d05a0710:	fba0 e001 	umull	lr, r0, r0, r1
d05a0714:	ea83 4353 	eor.w	r3, r3, r3, lsr #17
d05a0718:	0a00      	lsrs	r0, r0, #8
d05a071a:	ea83 1343 	eor.w	r3, r3, r3, lsl #5
d05a071e:	fb07 1010 	mls	r0, r7, r0, r1
d05a0722:	b221      	sxth	r1, r4
d05a0724:	ea83 3743 	eor.w	r7, r3, r3, lsl #13
d05a0728:	9101      	str	r1, [sp, #4]
d05a072a:	b2a4      	uxth	r4, r4
d05a072c:	fbac c103 	umull	ip, r1, ip, r3
d05a0730:	ea87 4757 	eor.w	r7, r7, r7, lsr #17
d05a0734:	09c9      	lsrs	r1, r1, #7
d05a0736:	ea87 1747 	eor.w	r7, r7, r7, lsl #5
d05a073a:	fb06 3111 	mls	r1, r6, r1, r3
d05a073e:	b206      	sxth	r6, r0
d05a0740:	fba5 3507 	umull	r3, r5, r5, r7
d05a0744:	b280      	uxth	r0, r0
d05a0746:	6017      	str	r7, [r2, #0]
d05a0748:	b28a      	uxth	r2, r1
d05a074a:	f025 0303 	bic.w	r3, r5, #3
d05a074e:	b209      	sxth	r1, r1
d05a0750:	9609      	str	r6, [sp, #36]	; 0x24
d05a0752:	eb03 0595 	add.w	r5, r3, r5, lsr #2
d05a0756:	9104      	str	r1, [sp, #16]
d05a0758:	fa1f f18a 	uxth.w	r1, sl
d05a075c:	1b7f      	subs	r7, r7, r5
d05a075e:	9d01      	ldr	r5, [sp, #4]
d05a0760:	fa0f fa8a 	sxth.w	sl, sl
d05a0764:	3701      	adds	r7, #1
d05a0766:	42ae      	cmp	r6, r5
d05a0768:	b2bb      	uxth	r3, r7
d05a076a:	b2ff      	uxtb	r7, r7
d05a076c:	f340 8214 	ble.w	d05a0b98 <draw_random_shape+0x610>
d05a0770:	1b00      	subs	r0, r0, r4
d05a0772:	2401      	movs	r4, #1
d05a0774:	940a      	str	r4, [sp, #40]	; 0x28
d05a0776:	b284      	uxth	r4, r0
d05a0778:	b200      	sxth	r0, r0
d05a077a:	9406      	str	r4, [sp, #24]
d05a077c:	9007      	str	r0, [sp, #28]
d05a077e:	9804      	ldr	r0, [sp, #16]
d05a0780:	4550      	cmp	r0, sl
d05a0782:	f340 8205 	ble.w	d05a0b90 <draw_random_shape+0x608>
d05a0786:	1a8a      	subs	r2, r1, r2
d05a0788:	2101      	movs	r1, #1
d05a078a:	910b      	str	r1, [sp, #44]	; 0x2c
d05a078c:	b291      	uxth	r1, r2
d05a078e:	b212      	sxth	r2, r2
d05a0790:	f8bd 9004 	ldrh.w	r9, [sp, #4]
d05a0794:	9105      	str	r1, [sp, #20]
d05a0796:	087f      	lsrs	r7, r7, #1
d05a0798:	9208      	str	r2, [sp, #32]
d05a079a:	460a      	mov	r2, r1
d05a079c:	9906      	ldr	r1, [sp, #24]
d05a079e:	fa1f f88a 	uxth.w	r8, sl
d05a07a2:	1856      	adds	r6, r2, r1
d05a07a4:	4659      	mov	r1, fp
d05a07a6:	469b      	mov	fp, r3
d05a07a8:	4653      	mov	r3, sl
d05a07aa:	b236      	sxth	r6, r6
d05a07ac:	46ba      	mov	sl, r7
d05a07ae:	4637      	mov	r7, r6
d05a07b0:	eba9 040a 	sub.w	r4, r9, sl
d05a07b4:	eba8 000a 	sub.w	r0, r8, sl
d05a07b8:	b2a4      	uxth	r4, r4
d05a07ba:	b280      	uxth	r0, r0
d05a07bc:	eb04 060b 	add.w	r6, r4, fp
d05a07c0:	eb00 0c0b 	add.w	ip, r0, fp
d05a07c4:	b236      	sxth	r6, r6
d05a07c6:	fa0f fc8c 	sxth.w	ip, ip
d05a07ca:	2e00      	cmp	r6, #0
d05a07cc:	dd40      	ble.n	d05a0850 <draw_random_shape+0x2c8>
d05a07ce:	f1bc 0f00 	cmp.w	ip, #0
d05a07d2:	dd3d      	ble.n	d05a0850 <draw_random_shape+0x2c8>
d05a07d4:	b224      	sxth	r4, r4
d05a07d6:	f240 1297 	movw	r2, #407	; 0x197
d05a07da:	b200      	sxth	r0, r0
d05a07dc:	4294      	cmp	r4, r2
d05a07de:	dc37      	bgt.n	d05a0850 <draw_random_shape+0x2c8>
d05a07e0:	28bf      	cmp	r0, #191	; 0xbf
d05a07e2:	dc35      	bgt.n	d05a0850 <draw_random_shape+0x2c8>
d05a07e4:	f1bc 0fc0 	cmp.w	ip, #192	; 0xc0
d05a07e8:	ea20 70e0 	bic.w	r0, r0, r0, asr #31
d05a07ec:	ea24 74e4 	bic.w	r4, r4, r4, asr #31
d05a07f0:	bfa8      	it	ge
d05a07f2:	f04f 0cc0 	movge.w	ip, #192	; 0xc0
d05a07f6:	f5b6 7fcc 	cmp.w	r6, #408	; 0x198
d05a07fa:	bfa8      	it	ge
d05a07fc:	f44f 76cc 	movge.w	r6, #408	; 0x198
d05a0800:	4560      	cmp	r0, ip
d05a0802:	da25      	bge.n	d05a0850 <draw_random_shape+0x2c8>
d05a0804:	ebac 0c00 	sub.w	ip, ip, r0
d05a0808:	f44f 7ecc 	mov.w	lr, #408	; 0x198
d05a080c:	4a2a      	ldr	r2, [pc, #168]	; (d05a08b8 <draw_random_shape+0x330>)
d05a080e:	1b36      	subs	r6, r6, r4
d05a0810:	f10c 35ff 	add.w	r5, ip, #4294967295	; 0xffffffff
d05a0814:	f8cd 800c 	str.w	r8, [sp, #12]
d05a0818:	4422      	add	r2, r4
d05a081a:	46b8      	mov	r8, r7
d05a081c:	fb10 440e 	smlabb	r4, r0, lr, r4
d05a0820:	fa10 f085 	uxtah	r0, r0, r5
d05a0824:	4d25      	ldr	r5, [pc, #148]	; (d05a08bc <draw_random_shape+0x334>)
d05a0826:	461f      	mov	r7, r3
d05a0828:	442c      	add	r4, r5
d05a082a:	fb0e 2500 	mla	r5, lr, r0, r2
d05a082e:	4632      	mov	r2, r6
d05a0830:	460e      	mov	r6, r1
d05a0832:	4620      	mov	r0, r4
d05a0834:	f504 74cc 	add.w	r4, r4, #408	; 0x198
d05a0838:	4631      	mov	r1, r6
d05a083a:	9202      	str	r2, [sp, #8]
d05a083c:	f001 f840 	bl	d05a18c0 <memset>
d05a0840:	42ac      	cmp	r4, r5
d05a0842:	9a02      	ldr	r2, [sp, #8]
d05a0844:	d1f5      	bne.n	d05a0832 <draw_random_shape+0x2aa>
d05a0846:	463b      	mov	r3, r7
d05a0848:	4631      	mov	r1, r6
d05a084a:	4647      	mov	r7, r8
d05a084c:	f8dd 800c 	ldr.w	r8, [sp, #12]
d05a0850:	9a01      	ldr	r2, [sp, #4]
d05a0852:	9809      	ldr	r0, [sp, #36]	; 0x24
d05a0854:	4282      	cmp	r2, r0
d05a0856:	d103      	bne.n	d05a0860 <draw_random_shape+0x2d8>
d05a0858:	9a04      	ldr	r2, [sp, #16]
d05a085a:	4293      	cmp	r3, r2
d05a085c:	f43f af2f 	beq.w	d05a06be <draw_random_shape+0x136>
d05a0860:	007a      	lsls	r2, r7, #1
d05a0862:	9808      	ldr	r0, [sp, #32]
d05a0864:	b212      	sxth	r2, r2
d05a0866:	4282      	cmp	r2, r0
d05a0868:	db09      	blt.n	d05a087e <draw_random_shape+0x2f6>
d05a086a:	9805      	ldr	r0, [sp, #20]
d05a086c:	4407      	add	r7, r0
d05a086e:	980a      	ldr	r0, [sp, #40]	; 0x28
d05a0870:	4481      	add	r9, r0
d05a0872:	b23f      	sxth	r7, r7
d05a0874:	fa0f f089 	sxth.w	r0, r9
d05a0878:	fa1f f989 	uxth.w	r9, r9
d05a087c:	9001      	str	r0, [sp, #4]
d05a087e:	9807      	ldr	r0, [sp, #28]
d05a0880:	4282      	cmp	r2, r0
d05a0882:	dc95      	bgt.n	d05a07b0 <draw_random_shape+0x228>
d05a0884:	9b06      	ldr	r3, [sp, #24]
d05a0886:	441f      	add	r7, r3
d05a0888:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
d05a088a:	4498      	add	r8, r3
d05a088c:	b23f      	sxth	r7, r7
d05a088e:	fa0f f388 	sxth.w	r3, r8
d05a0892:	fa1f f888 	uxth.w	r8, r8
d05a0896:	e78b      	b.n	d05a07b0 <draw_random_shape+0x228>
d05a0898:	d05a29b8 	.word	0xd05a29b8
d05a089c:	d05b5c40 	.word	0xd05b5c40
d05a08a0:	34679acf 	.word	0x34679acf
d05a08a4:	028c1979 	.word	0x028c1979
d05a08a8:	1f7047dd 	.word	0x1f7047dd
d05a08ac:	ca4587e7 	.word	0xca4587e7
d05a08b0:	a0a0a0a1 	.word	0xa0a0a0a1
d05a08b4:	cccccccd 	.word	0xcccccccd
d05a08b8:	d05a2bd8 	.word	0xd05a2bd8
d05a08bc:	d05a2a40 	.word	0xd05a2a40
d05a08c0:	b21642c9 	.word	0xb21642c9
d05a08c4:	ea81 4151 	eor.w	r1, r1, r1, lsr #17
d05a08c8:	4bc2      	ldr	r3, [pc, #776]	; (d05a0bd4 <draw_random_shape+0x64c>)
d05a08ca:	f44f 7ccc 	mov.w	ip, #408	; 0x198
d05a08ce:	4dc2      	ldr	r5, [pc, #776]	; (d05a0bd8 <draw_random_shape+0x650>)
d05a08d0:	ea81 1141 	eor.w	r1, r1, r1, lsl #5
d05a08d4:	20b8      	movs	r0, #184	; 0xb8
d05a08d6:	ea81 3441 	eor.w	r4, r1, r1, lsl #13
d05a08da:	fba3 7601 	umull	r7, r6, r3, r1
d05a08de:	ea84 4454 	eor.w	r4, r4, r4, lsr #17
d05a08e2:	0a36      	lsrs	r6, r6, #8
d05a08e4:	ea84 1444 	eor.w	r4, r4, r4, lsl #5
d05a08e8:	fb0c 1116 	mls	r1, ip, r6, r1
d05a08ec:	ea84 3644 	eor.w	r6, r4, r4, lsl #13
d05a08f0:	fba5 e704 	umull	lr, r7, r5, r4
d05a08f4:	b209      	sxth	r1, r1
d05a08f6:	ea86 4656 	eor.w	r6, r6, r6, lsr #17
d05a08fa:	09ff      	lsrs	r7, r7, #7
d05a08fc:	ea86 1646 	eor.w	r6, r6, r6, lsl #5
d05a0900:	fb00 4717 	mls	r7, r0, r7, r4
d05a0904:	fba3 8e06 	umull	r8, lr, r3, r6
d05a0908:	ea86 3446 	eor.w	r4, r6, r6, lsl #13
d05a090c:	b23f      	sxth	r7, r7
d05a090e:	ea84 4454 	eor.w	r4, r4, r4, lsr #17
d05a0912:	ea4f 2e1e 	mov.w	lr, lr, lsr #8
d05a0916:	ea84 1444 	eor.w	r4, r4, r4, lsl #5
d05a091a:	fb0c 6e1e 	mls	lr, ip, lr, r6
d05a091e:	ea84 3944 	eor.w	r9, r4, r4, lsl #13
d05a0922:	fba5 6804 	umull	r6, r8, r5, r4
d05a0926:	fa0f f68e 	sxth.w	r6, lr
d05a092a:	ea4f 18d8 	mov.w	r8, r8, lsr #7
d05a092e:	9602      	str	r6, [sp, #8]
d05a0930:	ea89 4659 	eor.w	r6, r9, r9, lsr #17
d05a0934:	fb00 4818 	mls	r8, r0, r8, r4
d05a0938:	ea86 1e46 	eor.w	lr, r6, r6, lsl #5
d05a093c:	ea8e 344e 	eor.w	r4, lr, lr, lsl #13
d05a0940:	fba3 360e 	umull	r3, r6, r3, lr
d05a0944:	fa0f f388 	sxth.w	r3, r8
d05a0948:	ea84 4454 	eor.w	r4, r4, r4, lsr #17
d05a094c:	0a36      	lsrs	r6, r6, #8
d05a094e:	42bb      	cmp	r3, r7
d05a0950:	ea84 1444 	eor.w	r4, r4, r4, lsl #5
d05a0954:	fb0c e616 	mls	r6, ip, r6, lr
d05a0958:	fba5 c504 	umull	ip, r5, r5, r4
d05a095c:	b236      	sxth	r6, r6
d05a095e:	6014      	str	r4, [r2, #0]
d05a0960:	ea4f 15d5 	mov.w	r5, r5, lsr #7
d05a0964:	fb00 4515 	mls	r5, r0, r5, r4
d05a0968:	b22d      	sxth	r5, r5
d05a096a:	f2c0 8094 	blt.w	d05a0a96 <draw_random_shape+0x50e>
d05a096e:	42bd      	cmp	r5, r7
d05a0970:	f280 809a 	bge.w	d05a0aa8 <draw_random_shape+0x520>
d05a0974:	42bb      	cmp	r3, r7
d05a0976:	dd0a      	ble.n	d05a098e <draw_random_shape+0x406>
d05a0978:	4618      	mov	r0, r3
d05a097a:	9a02      	ldr	r2, [sp, #8]
d05a097c:	463b      	mov	r3, r7
d05a097e:	9102      	str	r1, [sp, #8]
d05a0980:	4607      	mov	r7, r0
d05a0982:	4611      	mov	r1, r2
d05a0984:	42bd      	cmp	r5, r7
d05a0986:	f43f ae9a 	beq.w	d05a06be <draw_random_shape+0x136>
d05a098a:	f73f ae98 	bgt.w	d05a06be <draw_random_shape+0x136>
d05a098e:	1afa      	subs	r2, r7, r3
d05a0990:	fa1f f987 	uxth.w	r9, r7
d05a0994:	b2ac      	uxth	r4, r5
d05a0996:	fab2 f282 	clz	r2, r2
d05a099a:	fa1f f883 	uxth.w	r8, r3
d05a099e:	0952      	lsrs	r2, r2, #5
d05a09a0:	9201      	str	r2, [sp, #4]
d05a09a2:	eba9 0204 	sub.w	r2, r9, r4
d05a09a6:	eba9 0908 	sub.w	r9, r9, r8
d05a09aa:	eba8 0804 	sub.w	r8, r8, r4
d05a09ae:	b212      	sxth	r2, r2
d05a09b0:	fa0f f089 	sxth.w	r0, r9
d05a09b4:	9203      	str	r2, [sp, #12]
d05a09b6:	9005      	str	r0, [sp, #20]
d05a09b8:	fa0f f088 	sxth.w	r0, r8
d05a09bc:	9004      	str	r0, [sp, #16]
d05a09be:	2a00      	cmp	r2, #0
d05a09c0:	f000 8158 	beq.w	d05a0c74 <draw_random_shape+0x6ec>
d05a09c4:	2800      	cmp	r0, #0
d05a09c6:	f000 81be 	beq.w	d05a0d46 <draw_random_shape+0x7be>
d05a09ca:	9805      	ldr	r0, [sp, #20]
d05a09cc:	2800      	cmp	r0, #0
d05a09ce:	f000 80f0 	beq.w	d05a0bb2 <draw_random_shape+0x62a>
d05a09d2:	9802      	ldr	r0, [sp, #8]
d05a09d4:	eb05 0945 	add.w	r9, r5, r5, lsl #1
d05a09d8:	1aed      	subs	r5, r5, r3
d05a09da:	f04f 0a00 	mov.w	sl, #0
d05a09de:	1a0a      	subs	r2, r1, r0
d05a09e0:	eb09 1909 	add.w	r9, r9, r9, lsl #4
d05a09e4:	1b89      	subs	r1, r1, r6
d05a09e6:	46d0      	mov	r8, sl
d05a09e8:	fb02 f505 	mul.w	r5, r2, r5
d05a09ec:	ea4f 09c9 	mov.w	r9, r9, lsl #3
d05a09f0:	9207      	str	r2, [sp, #28]
d05a09f2:	1b82      	subs	r2, r0, r6
d05a09f4:	9106      	str	r1, [sp, #24]
d05a09f6:	b2b6      	uxth	r6, r6
d05a09f8:	9208      	str	r2, [sp, #32]
d05a09fa:	463a      	mov	r2, r7
d05a09fc:	f8cd b028 	str.w	fp, [sp, #40]	; 0x28
d05a0a00:	461f      	mov	r7, r3
d05a0a02:	4613      	mov	r3, r2
d05a0a04:	e02e      	b.n	d05a0a64 <draw_random_shape+0x4dc>
d05a0a06:	4291      	cmp	r1, r2
d05a0a08:	db02      	blt.n	d05a0a10 <draw_random_shape+0x488>
d05a0a0a:	468c      	mov	ip, r1
d05a0a0c:	4611      	mov	r1, r2
d05a0a0e:	4662      	mov	r2, ip
d05a0a10:	3201      	adds	r2, #1
d05a0a12:	3401      	adds	r4, #1
d05a0a14:	b212      	sxth	r2, r2
d05a0a16:	fa0f fb84 	sxth.w	fp, r4
d05a0a1a:	2a00      	cmp	r2, #0
d05a0a1c:	dd16      	ble.n	d05a0a4c <draw_random_shape+0x4c4>
d05a0a1e:	f5b1 7fcc 	cmp.w	r1, #408	; 0x198
d05a0a22:	da13      	bge.n	d05a0a4c <draw_random_shape+0x4c4>
d05a0a24:	f5b2 7fcc 	cmp.w	r2, #408	; 0x198
d05a0a28:	ea21 71e1 	bic.w	r1, r1, r1, asr #31
d05a0a2c:	bfa8      	it	ge
d05a0a2e:	f44f 72cc 	movge.w	r2, #408	; 0x198
d05a0a32:	4558      	cmp	r0, fp
d05a0a34:	b209      	sxth	r1, r1
d05a0a36:	da09      	bge.n	d05a0a4c <draw_random_shape+0x4c4>
d05a0a38:	eb01 0009 	add.w	r0, r1, r9
d05a0a3c:	9309      	str	r3, [sp, #36]	; 0x24
d05a0a3e:	4b67      	ldr	r3, [pc, #412]	; (d05a0bdc <draw_random_shape+0x654>)
d05a0a40:	1a52      	subs	r2, r2, r1
d05a0a42:	990a      	ldr	r1, [sp, #40]	; 0x28
d05a0a44:	4418      	add	r0, r3
d05a0a46:	f000 ff3b 	bl	d05a18c0 <memset>
d05a0a4a:	9b09      	ldr	r3, [sp, #36]	; 0x24
d05a0a4c:	9a06      	ldr	r2, [sp, #24]
d05a0a4e:	459b      	cmp	fp, r3
d05a0a50:	b2a4      	uxth	r4, r4
d05a0a52:	f509 79cc 	add.w	r9, r9, #408	; 0x198
d05a0a56:	4490      	add	r8, r2
d05a0a58:	9a08      	ldr	r2, [sp, #32]
d05a0a5a:	4492      	add	sl, r2
d05a0a5c:	9a07      	ldr	r2, [sp, #28]
d05a0a5e:	4415      	add	r5, r2
d05a0a60:	f73f ae2d 	bgt.w	d05a06be <draw_random_shape+0x136>
d05a0a64:	9a03      	ldr	r2, [sp, #12]
d05a0a66:	b220      	sxth	r0, r4
d05a0a68:	fb98 f2f2 	sdiv	r2, r8, r2
d05a0a6c:	42b8      	cmp	r0, r7
d05a0a6e:	4432      	add	r2, r6
d05a0a70:	b212      	sxth	r2, r2
d05a0a72:	f2c0 80f3 	blt.w	d05a0c5c <draw_random_shape+0x6d4>
d05a0a76:	9901      	ldr	r1, [sp, #4]
d05a0a78:	2900      	cmp	r1, #0
d05a0a7a:	f040 80ef 	bne.w	d05a0c5c <draw_random_shape+0x6d4>
d05a0a7e:	9905      	ldr	r1, [sp, #20]
d05a0a80:	fb95 fcf1 	sdiv	ip, r5, r1
d05a0a84:	9902      	ldr	r1, [sp, #8]
d05a0a86:	4461      	add	r1, ip
d05a0a88:	b209      	sxth	r1, r1
d05a0a8a:	2cbf      	cmp	r4, #191	; 0xbf
d05a0a8c:	d9bb      	bls.n	d05a0a06 <draw_random_shape+0x47e>
d05a0a8e:	3401      	adds	r4, #1
d05a0a90:	fa0f fb84 	sxth.w	fp, r4
d05a0a94:	e7da      	b.n	d05a0a4c <draw_random_shape+0x4c4>
d05a0a96:	429d      	cmp	r5, r3
d05a0a98:	f6ff af74 	blt.w	d05a0984 <draw_random_shape+0x3fc>
d05a0a9c:	463a      	mov	r2, r7
d05a0a9e:	4608      	mov	r0, r1
d05a0aa0:	461f      	mov	r7, r3
d05a0aa2:	9902      	ldr	r1, [sp, #8]
d05a0aa4:	4613      	mov	r3, r2
d05a0aa6:	9002      	str	r0, [sp, #8]
d05a0aa8:	429d      	cmp	r5, r3
d05a0aaa:	db79      	blt.n	d05a0ba0 <draw_random_shape+0x618>
d05a0aac:	42bd      	cmp	r5, r7
d05a0aae:	f43f ae06 	beq.w	d05a06be <draw_random_shape+0x136>
d05a0ab2:	4638      	mov	r0, r7
d05a0ab4:	460a      	mov	r2, r1
d05a0ab6:	462f      	mov	r7, r5
d05a0ab8:	4631      	mov	r1, r6
d05a0aba:	4605      	mov	r5, r0
d05a0abc:	4616      	mov	r6, r2
d05a0abe:	e766      	b.n	d05a098e <draw_random_shape+0x406>
d05a0ac0:	ea81 4151 	eor.w	r1, r1, r1, lsr #17
d05a0ac4:	4f43      	ldr	r7, [pc, #268]	; (d05a0bd4 <draw_random_shape+0x64c>)
d05a0ac6:	4e44      	ldr	r6, [pc, #272]	; (d05a0bd8 <draw_random_shape+0x650>)
d05a0ac8:	f44f 79cc 	mov.w	r9, #408	; 0x198
d05a0acc:	ea81 1141 	eor.w	r1, r1, r1, lsl #5
d05a0ad0:	4b43      	ldr	r3, [pc, #268]	; (d05a0be0 <draw_random_shape+0x658>)
d05a0ad2:	25b8      	movs	r5, #184	; 0xb8
d05a0ad4:	f64f 7cfc 	movw	ip, #65532	; 0xfffc
d05a0ad8:	ea81 3041 	eor.w	r0, r1, r1, lsl #13
d05a0adc:	fba7 4701 	umull	r4, r7, r7, r1
d05a0ae0:	ea80 4050 	eor.w	r0, r0, r0, lsr #17
d05a0ae4:	0a3f      	lsrs	r7, r7, #8
d05a0ae6:	ea80 1040 	eor.w	r0, r0, r0, lsl #5
d05a0aea:	fb09 1717 	mls	r7, r9, r7, r1
d05a0aee:	ea80 3440 	eor.w	r4, r0, r0, lsl #13
d05a0af2:	fba6 6100 	umull	r6, r1, r6, r0
d05a0af6:	ea84 4454 	eor.w	r4, r4, r4, lsr #17
d05a0afa:	09c9      	lsrs	r1, r1, #7
d05a0afc:	ea84 1444 	eor.w	r4, r4, r4, lsl #5
d05a0b00:	fb05 0111 	mls	r1, r5, r1, r0
d05a0b04:	fba3 0304 	umull	r0, r3, r3, r4
d05a0b08:	6014      	str	r4, [r2, #0]
d05a0b0a:	091b      	lsrs	r3, r3, #4
d05a0b0c:	ebc3 02c3 	rsb	r2, r3, r3, lsl #3
d05a0b10:	eb03 0382 	add.w	r3, r3, r2, lsl #2
d05a0b14:	1ae4      	subs	r4, r4, r3
d05a0b16:	b2a4      	uxth	r4, r4
d05a0b18:	ebac 0c04 	sub.w	ip, ip, r4
d05a0b1c:	3404      	adds	r4, #4
d05a0b1e:	fa1f f38c 	uxth.w	r3, ip
d05a0b22:	fa0f fc8c 	sxth.w	ip, ip
d05a0b26:	4419      	add	r1, r3
d05a0b28:	fa13 f787 	uxtah	r7, r3, r7
d05a0b2c:	fb14 f304 	smulbb	r3, r4, r4
d05a0b30:	4662      	mov	r2, ip
d05a0b32:	b289      	uxth	r1, r1
d05a0b34:	b2bf      	uxth	r7, r7
d05a0b36:	fa0f fa83 	sxth.w	sl, r3
d05a0b3a:	b224      	sxth	r4, r4
d05a0b3c:	fb02 f502 	mul.w	r5, r2, r2
d05a0b40:	fa0f fe81 	sxth.w	lr, r1
d05a0b44:	b292      	uxth	r2, r2
d05a0b46:	4638      	mov	r0, r7
d05a0b48:	b2ad      	uxth	r5, r5
d05a0b4a:	4663      	mov	r3, ip
d05a0b4c:	fb03 5603 	mla	r6, r3, r3, r5
d05a0b50:	b29b      	uxth	r3, r3
d05a0b52:	f100 0801 	add.w	r8, r0, #1
d05a0b56:	b236      	sxth	r6, r6
d05a0b58:	3301      	adds	r3, #1
d05a0b5a:	45b2      	cmp	sl, r6
d05a0b5c:	b21b      	sxth	r3, r3
d05a0b5e:	db0a      	blt.n	d05a0b76 <draw_random_shape+0x5ee>
d05a0b60:	f240 1697 	movw	r6, #407	; 0x197
d05a0b64:	42b0      	cmp	r0, r6
d05a0b66:	fb1e 0009 	smlabb	r0, lr, r9, r0
d05a0b6a:	d804      	bhi.n	d05a0b76 <draw_random_shape+0x5ee>
d05a0b6c:	29bf      	cmp	r1, #191	; 0xbf
d05a0b6e:	d802      	bhi.n	d05a0b76 <draw_random_shape+0x5ee>
d05a0b70:	4e1a      	ldr	r6, [pc, #104]	; (d05a0bdc <draw_random_shape+0x654>)
d05a0b72:	f806 b000 	strb.w	fp, [r6, r0]
d05a0b76:	429c      	cmp	r4, r3
d05a0b78:	fa1f f088 	uxth.w	r0, r8
d05a0b7c:	dae6      	bge.n	d05a0b4c <draw_random_shape+0x5c4>
d05a0b7e:	3201      	adds	r2, #1
d05a0b80:	3101      	adds	r1, #1
d05a0b82:	b212      	sxth	r2, r2
d05a0b84:	b289      	uxth	r1, r1
d05a0b86:	4294      	cmp	r4, r2
d05a0b88:	dad8      	bge.n	d05a0b3c <draw_random_shape+0x5b4>
d05a0b8a:	b00d      	add	sp, #52	; 0x34
d05a0b8c:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d05a0b90:	1a52      	subs	r2, r2, r1
d05a0b92:	f04f 31ff 	mov.w	r1, #4294967295	; 0xffffffff
d05a0b96:	e5f8      	b.n	d05a078a <draw_random_shape+0x202>
d05a0b98:	1a20      	subs	r0, r4, r0
d05a0b9a:	f04f 34ff 	mov.w	r4, #4294967295	; 0xffffffff
d05a0b9e:	e5e9      	b.n	d05a0774 <draw_random_shape+0x1ec>
d05a0ba0:	4618      	mov	r0, r3
d05a0ba2:	9a02      	ldr	r2, [sp, #8]
d05a0ba4:	462b      	mov	r3, r5
d05a0ba6:	9602      	str	r6, [sp, #8]
d05a0ba8:	463d      	mov	r5, r7
d05a0baa:	460e      	mov	r6, r1
d05a0bac:	4607      	mov	r7, r0
d05a0bae:	4611      	mov	r1, r2
d05a0bb0:	e6e8      	b.n	d05a0984 <draw_random_shape+0x3fc>
d05a0bb2:	1b8a      	subs	r2, r1, r6
d05a0bb4:	eb05 0545 	add.w	r5, r5, r5, lsl #1
d05a0bb8:	9902      	ldr	r1, [sp, #8]
d05a0bba:	4681      	mov	r9, r0
d05a0bbc:	eb05 1505 	add.w	r5, r5, r5, lsl #4
d05a0bc0:	f8cd b01c 	str.w	fp, [sp, #28]
d05a0bc4:	1b89      	subs	r1, r1, r6
d05a0bc6:	469b      	mov	fp, r3
d05a0bc8:	4680      	mov	r8, r0
d05a0bca:	b2b6      	uxth	r6, r6
d05a0bcc:	00ed      	lsls	r5, r5, #3
d05a0bce:	4613      	mov	r3, r2
d05a0bd0:	9105      	str	r1, [sp, #20]
d05a0bd2:	e032      	b.n	d05a0c3a <draw_random_shape+0x6b2>
d05a0bd4:	a0a0a0a1 	.word	0xa0a0a0a1
d05a0bd8:	b21642c9 	.word	0xb21642c9
d05a0bdc:	d05a2a40 	.word	0xd05a2a40
d05a0be0:	8d3dcb09 	.word	0x8d3dcb09
d05a0be4:	428a      	cmp	r2, r1
d05a0be6:	da02      	bge.n	d05a0bee <draw_random_shape+0x666>
d05a0be8:	468c      	mov	ip, r1
d05a0bea:	4611      	mov	r1, r2
d05a0bec:	4662      	mov	r2, ip
d05a0bee:	3201      	adds	r2, #1
d05a0bf0:	3401      	adds	r4, #1
d05a0bf2:	b212      	sxth	r2, r2
d05a0bf4:	fa0f fa84 	sxth.w	sl, r4
d05a0bf8:	2a00      	cmp	r2, #0
d05a0bfa:	dd15      	ble.n	d05a0c28 <draw_random_shape+0x6a0>
d05a0bfc:	f5b1 7fcc 	cmp.w	r1, #408	; 0x198
d05a0c00:	da12      	bge.n	d05a0c28 <draw_random_shape+0x6a0>
d05a0c02:	f5b2 7fcc 	cmp.w	r2, #408	; 0x198
d05a0c06:	ea21 71e1 	bic.w	r1, r1, r1, asr #31
d05a0c0a:	bfa8      	it	ge
d05a0c0c:	f44f 72cc 	movge.w	r2, #408	; 0x198
d05a0c10:	4582      	cmp	sl, r0
d05a0c12:	b209      	sxth	r1, r1
d05a0c14:	dd08      	ble.n	d05a0c28 <draw_random_shape+0x6a0>
d05a0c16:	1948      	adds	r0, r1, r5
d05a0c18:	9306      	str	r3, [sp, #24]
d05a0c1a:	4bb0      	ldr	r3, [pc, #704]	; (d05a0edc <draw_random_shape+0x954>)
d05a0c1c:	1a52      	subs	r2, r2, r1
d05a0c1e:	9907      	ldr	r1, [sp, #28]
d05a0c20:	4418      	add	r0, r3
d05a0c22:	f000 fe4d 	bl	d05a18c0 <memset>
d05a0c26:	9b06      	ldr	r3, [sp, #24]
d05a0c28:	9a05      	ldr	r2, [sp, #20]
d05a0c2a:	45ba      	cmp	sl, r7
d05a0c2c:	4498      	add	r8, r3
d05a0c2e:	b2a4      	uxth	r4, r4
d05a0c30:	f505 75cc 	add.w	r5, r5, #408	; 0x198
d05a0c34:	4491      	add	r9, r2
d05a0c36:	f73f ad42 	bgt.w	d05a06be <draw_random_shape+0x136>
d05a0c3a:	9a03      	ldr	r2, [sp, #12]
d05a0c3c:	b220      	sxth	r0, r4
d05a0c3e:	fb98 f1f2 	sdiv	r1, r8, r2
d05a0c42:	4558      	cmp	r0, fp
d05a0c44:	4431      	add	r1, r6
d05a0c46:	b209      	sxth	r1, r1
d05a0c48:	db0e      	blt.n	d05a0c68 <draw_random_shape+0x6e0>
d05a0c4a:	9a01      	ldr	r2, [sp, #4]
d05a0c4c:	b962      	cbnz	r2, d05a0c68 <draw_random_shape+0x6e0>
d05a0c4e:	9a02      	ldr	r2, [sp, #8]
d05a0c50:	2cbf      	cmp	r4, #191	; 0xbf
d05a0c52:	d9c7      	bls.n	d05a0be4 <draw_random_shape+0x65c>
d05a0c54:	3401      	adds	r4, #1
d05a0c56:	fa0f fa84 	sxth.w	sl, r4
d05a0c5a:	e7e5      	b.n	d05a0c28 <draw_random_shape+0x6a0>
d05a0c5c:	9904      	ldr	r1, [sp, #16]
d05a0c5e:	fb9a f1f1 	sdiv	r1, sl, r1
d05a0c62:	4431      	add	r1, r6
d05a0c64:	b209      	sxth	r1, r1
d05a0c66:	e710      	b.n	d05a0a8a <draw_random_shape+0x502>
d05a0c68:	9a04      	ldr	r2, [sp, #16]
d05a0c6a:	fb99 f2f2 	sdiv	r2, r9, r2
d05a0c6e:	4432      	add	r2, r6
d05a0c70:	b212      	sxth	r2, r2
d05a0c72:	e7ed      	b.n	d05a0c50 <draw_random_shape+0x6c8>
d05a0c74:	9a05      	ldr	r2, [sp, #20]
d05a0c76:	2a00      	cmp	r2, #0
d05a0c78:	f000 80c4 	beq.w	d05a0e04 <draw_random_shape+0x87c>
d05a0c7c:	2800      	cmp	r0, #0
d05a0c7e:	f000 8119 	beq.w	d05a0eb4 <draw_random_shape+0x92c>
d05a0c82:	9a02      	ldr	r2, [sp, #8]
d05a0c84:	eb05 0845 	add.w	r8, r5, r5, lsl #1
d05a0c88:	1aed      	subs	r5, r5, r3
d05a0c8a:	f8dd 900c 	ldr.w	r9, [sp, #12]
d05a0c8e:	1a88      	subs	r0, r1, r2
d05a0c90:	1c72      	adds	r2, r6, #1
d05a0c92:	eb08 1808 	add.w	r8, r8, r8, lsl #4
d05a0c96:	b211      	sxth	r1, r2
d05a0c98:	9a02      	ldr	r2, [sp, #8]
d05a0c9a:	fb00 f505 	mul.w	r5, r0, r5
d05a0c9e:	ea4f 08c8 	mov.w	r8, r8, lsl #3
d05a0ca2:	1b92      	subs	r2, r2, r6
d05a0ca4:	9108      	str	r1, [sp, #32]
d05a0ca6:	4659      	mov	r1, fp
d05a0ca8:	469b      	mov	fp, r3
d05a0caa:	9203      	str	r2, [sp, #12]
d05a0cac:	463b      	mov	r3, r7
d05a0cae:	4607      	mov	r7, r0
d05a0cb0:	e026      	b.n	d05a0d00 <draw_random_shape+0x778>
d05a0cb2:	42b0      	cmp	r0, r6
d05a0cb4:	da3c      	bge.n	d05a0d30 <draw_random_shape+0x7a8>
d05a0cb6:	3401      	adds	r4, #1
d05a0cb8:	f8dd e020 	ldr.w	lr, [sp, #32]
d05a0cbc:	fa0f fa84 	sxth.w	sl, r4
d05a0cc0:	f5be 7fcc 	cmp.w	lr, #408	; 0x198
d05a0cc4:	ea20 72e0 	bic.w	r2, r0, r0, asr #31
d05a0cc8:	bfa8      	it	ge
d05a0cca:	f44f 7ecc 	movge.w	lr, #408	; 0x198
d05a0cce:	45d4      	cmp	ip, sl
d05a0cd0:	b212      	sxth	r2, r2
d05a0cd2:	da0c      	bge.n	d05a0cee <draw_random_shape+0x766>
d05a0cd4:	eb02 0c08 	add.w	ip, r2, r8
d05a0cd8:	9307      	str	r3, [sp, #28]
d05a0cda:	4b80      	ldr	r3, [pc, #512]	; (d05a0edc <draw_random_shape+0x954>)
d05a0cdc:	ebae 0202 	sub.w	r2, lr, r2
d05a0ce0:	9106      	str	r1, [sp, #24]
d05a0ce2:	eb03 000c 	add.w	r0, r3, ip
d05a0ce6:	f000 fdeb 	bl	d05a18c0 <memset>
d05a0cea:	9b07      	ldr	r3, [sp, #28]
d05a0cec:	9906      	ldr	r1, [sp, #24]
d05a0cee:	9a03      	ldr	r2, [sp, #12]
d05a0cf0:	459a      	cmp	sl, r3
d05a0cf2:	b2a4      	uxth	r4, r4
d05a0cf4:	f508 78cc 	add.w	r8, r8, #408	; 0x198
d05a0cf8:	4491      	add	r9, r2
d05a0cfa:	443d      	add	r5, r7
d05a0cfc:	f73f acdf 	bgt.w	d05a06be <draw_random_shape+0x136>
d05a0d00:	fa0f fc84 	sxth.w	ip, r4
d05a0d04:	45dc      	cmp	ip, fp
d05a0d06:	db0d      	blt.n	d05a0d24 <draw_random_shape+0x79c>
d05a0d08:	9a01      	ldr	r2, [sp, #4]
d05a0d0a:	b95a      	cbnz	r2, d05a0d24 <draw_random_shape+0x79c>
d05a0d0c:	9a05      	ldr	r2, [sp, #20]
d05a0d0e:	fb95 f0f2 	sdiv	r0, r5, r2
d05a0d12:	9a02      	ldr	r2, [sp, #8]
d05a0d14:	4410      	add	r0, r2
d05a0d16:	b200      	sxth	r0, r0
d05a0d18:	2cbf      	cmp	r4, #191	; 0xbf
d05a0d1a:	d9ca      	bls.n	d05a0cb2 <draw_random_shape+0x72a>
d05a0d1c:	3401      	adds	r4, #1
d05a0d1e:	fa0f fa84 	sxth.w	sl, r4
d05a0d22:	e7e4      	b.n	d05a0cee <draw_random_shape+0x766>
d05a0d24:	9a04      	ldr	r2, [sp, #16]
d05a0d26:	fb99 f0f2 	sdiv	r0, r9, r2
d05a0d2a:	4430      	add	r0, r6
d05a0d2c:	b200      	sxth	r0, r0
d05a0d2e:	e7f3      	b.n	d05a0d18 <draw_random_shape+0x790>
d05a0d30:	3001      	adds	r0, #1
d05a0d32:	3401      	adds	r4, #1
d05a0d34:	fa0f fe80 	sxth.w	lr, r0
d05a0d38:	fa0f fa84 	sxth.w	sl, r4
d05a0d3c:	f1be 0f00 	cmp.w	lr, #0
d05a0d40:	ddd5      	ble.n	d05a0cee <draw_random_shape+0x766>
d05a0d42:	4630      	mov	r0, r6
d05a0d44:	e7bc      	b.n	d05a0cc0 <draw_random_shape+0x738>
d05a0d46:	9a05      	ldr	r2, [sp, #20]
d05a0d48:	2a00      	cmp	r2, #0
d05a0d4a:	f000 810d 	beq.w	d05a0f68 <draw_random_shape+0x9e0>
d05a0d4e:	9a02      	ldr	r2, [sp, #8]
d05a0d50:	eb05 0945 	add.w	r9, r5, r5, lsl #1
d05a0d54:	1aed      	subs	r5, r5, r3
d05a0d56:	f8cd b01c 	str.w	fp, [sp, #28]
d05a0d5a:	1a8a      	subs	r2, r1, r2
d05a0d5c:	eb09 1909 	add.w	r9, r9, r9, lsl #4
d05a0d60:	1b89      	subs	r1, r1, r6
d05a0d62:	4680      	mov	r8, r0
d05a0d64:	fb02 f505 	mul.w	r5, r2, r5
d05a0d68:	ea4f 09c9 	mov.w	r9, r9, lsl #3
d05a0d6c:	9206      	str	r2, [sp, #24]
d05a0d6e:	463a      	mov	r2, r7
d05a0d70:	f8dd b00c 	ldr.w	fp, [sp, #12]
d05a0d74:	461f      	mov	r7, r3
d05a0d76:	9104      	str	r1, [sp, #16]
d05a0d78:	4613      	mov	r3, r2
d05a0d7a:	e02c      	b.n	d05a0dd6 <draw_random_shape+0x84e>
d05a0d7c:	4291      	cmp	r1, r2
d05a0d7e:	dd02      	ble.n	d05a0d86 <draw_random_shape+0x7fe>
d05a0d80:	468c      	mov	ip, r1
d05a0d82:	4611      	mov	r1, r2
d05a0d84:	4662      	mov	r2, ip
d05a0d86:	3201      	adds	r2, #1
d05a0d88:	3401      	adds	r4, #1
d05a0d8a:	b212      	sxth	r2, r2
d05a0d8c:	fa0f fa84 	sxth.w	sl, r4
d05a0d90:	2a00      	cmp	r2, #0
d05a0d92:	dd16      	ble.n	d05a0dc2 <draw_random_shape+0x83a>
d05a0d94:	f5b1 7fcc 	cmp.w	r1, #408	; 0x198
d05a0d98:	da13      	bge.n	d05a0dc2 <draw_random_shape+0x83a>
d05a0d9a:	f5b2 7fcc 	cmp.w	r2, #408	; 0x198
d05a0d9e:	ea21 71e1 	bic.w	r1, r1, r1, asr #31
d05a0da2:	bfa8      	it	ge
d05a0da4:	f44f 72cc 	movge.w	r2, #408	; 0x198
d05a0da8:	4582      	cmp	sl, r0
d05a0daa:	b209      	sxth	r1, r1
d05a0dac:	dd09      	ble.n	d05a0dc2 <draw_random_shape+0x83a>
d05a0dae:	eb01 0009 	add.w	r0, r1, r9
d05a0db2:	9303      	str	r3, [sp, #12]
d05a0db4:	4b49      	ldr	r3, [pc, #292]	; (d05a0edc <draw_random_shape+0x954>)
d05a0db6:	1a52      	subs	r2, r2, r1
d05a0db8:	9907      	ldr	r1, [sp, #28]
d05a0dba:	4418      	add	r0, r3
d05a0dbc:	f000 fd80 	bl	d05a18c0 <memset>
d05a0dc0:	9b03      	ldr	r3, [sp, #12]
d05a0dc2:	9a04      	ldr	r2, [sp, #16]
d05a0dc4:	459a      	cmp	sl, r3
d05a0dc6:	b2a4      	uxth	r4, r4
d05a0dc8:	f509 79cc 	add.w	r9, r9, #408	; 0x198
d05a0dcc:	4490      	add	r8, r2
d05a0dce:	9a06      	ldr	r2, [sp, #24]
d05a0dd0:	4415      	add	r5, r2
d05a0dd2:	f73f ac74 	bgt.w	d05a06be <draw_random_shape+0x136>
d05a0dd6:	b220      	sxth	r0, r4
d05a0dd8:	fb98 f1fb 	sdiv	r1, r8, fp
d05a0ddc:	42b8      	cmp	r0, r7
d05a0dde:	4431      	add	r1, r6
d05a0de0:	b209      	sxth	r1, r1
d05a0de2:	db0d      	blt.n	d05a0e00 <draw_random_shape+0x878>
d05a0de4:	9a01      	ldr	r2, [sp, #4]
d05a0de6:	b95a      	cbnz	r2, d05a0e00 <draw_random_shape+0x878>
d05a0de8:	9a05      	ldr	r2, [sp, #20]
d05a0dea:	fb95 fcf2 	sdiv	ip, r5, r2
d05a0dee:	9a02      	ldr	r2, [sp, #8]
d05a0df0:	4462      	add	r2, ip
d05a0df2:	b212      	sxth	r2, r2
d05a0df4:	2cbf      	cmp	r4, #191	; 0xbf
d05a0df6:	d9c1      	bls.n	d05a0d7c <draw_random_shape+0x7f4>
d05a0df8:	3401      	adds	r4, #1
d05a0dfa:	fa0f fa84 	sxth.w	sl, r4
d05a0dfe:	e7e0      	b.n	d05a0dc2 <draw_random_shape+0x83a>
d05a0e00:	4632      	mov	r2, r6
d05a0e02:	e7f7      	b.n	d05a0df4 <draw_random_shape+0x86c>
d05a0e04:	eb05 0545 	add.w	r5, r5, r5, lsl #1
d05a0e08:	2800      	cmp	r0, #0
d05a0e0a:	f000 80ff 	beq.w	d05a100c <draw_random_shape+0xa84>
d05a0e0e:	9902      	ldr	r1, [sp, #8]
d05a0e10:	1c72      	adds	r2, r6, #1
d05a0e12:	eb05 1505 	add.w	r5, r5, r5, lsl #4
d05a0e16:	f8dd 9014 	ldr.w	r9, [sp, #20]
d05a0e1a:	eba1 0a06 	sub.w	sl, r1, r6
d05a0e1e:	b212      	sxth	r2, r2
d05a0e20:	4659      	mov	r1, fp
d05a0e22:	00ed      	lsls	r5, r5, #3
d05a0e24:	46d3      	mov	fp, sl
d05a0e26:	9205      	str	r2, [sp, #20]
d05a0e28:	46ba      	mov	sl, r7
d05a0e2a:	461f      	mov	r7, r3
d05a0e2c:	9b01      	ldr	r3, [sp, #4]
d05a0e2e:	e024      	b.n	d05a0e7a <draw_random_shape+0x8f2>
d05a0e30:	42b0      	cmp	r0, r6
d05a0e32:	da34      	bge.n	d05a0e9e <draw_random_shape+0x916>
d05a0e34:	3401      	adds	r4, #1
d05a0e36:	f8dd e014 	ldr.w	lr, [sp, #20]
d05a0e3a:	fa0f f884 	sxth.w	r8, r4
d05a0e3e:	f5be 7fcc 	cmp.w	lr, #408	; 0x198
d05a0e42:	ea20 72e0 	bic.w	r2, r0, r0, asr #31
d05a0e46:	bfa8      	it	ge
d05a0e48:	f44f 7ecc 	movge.w	lr, #408	; 0x198
d05a0e4c:	45c4      	cmp	ip, r8
d05a0e4e:	b212      	sxth	r2, r2
d05a0e50:	da0c      	bge.n	d05a0e6c <draw_random_shape+0x8e4>
d05a0e52:	eb02 0c05 	add.w	ip, r2, r5
d05a0e56:	9303      	str	r3, [sp, #12]
d05a0e58:	4b20      	ldr	r3, [pc, #128]	; (d05a0edc <draw_random_shape+0x954>)
d05a0e5a:	ebae 0202 	sub.w	r2, lr, r2
d05a0e5e:	9101      	str	r1, [sp, #4]
d05a0e60:	eb03 000c 	add.w	r0, r3, ip
d05a0e64:	f000 fd2c 	bl	d05a18c0 <memset>
d05a0e68:	9901      	ldr	r1, [sp, #4]
d05a0e6a:	9b03      	ldr	r3, [sp, #12]
d05a0e6c:	45d0      	cmp	r8, sl
d05a0e6e:	b2a4      	uxth	r4, r4
d05a0e70:	f505 75cc 	add.w	r5, r5, #408	; 0x198
d05a0e74:	44d9      	add	r9, fp
d05a0e76:	f73f ac22 	bgt.w	d05a06be <draw_random_shape+0x136>
d05a0e7a:	fa0f fc84 	sxth.w	ip, r4
d05a0e7e:	45bc      	cmp	ip, r7
d05a0e80:	db07      	blt.n	d05a0e92 <draw_random_shape+0x90a>
d05a0e82:	b933      	cbnz	r3, d05a0e92 <draw_random_shape+0x90a>
d05a0e84:	9802      	ldr	r0, [sp, #8]
d05a0e86:	2cbf      	cmp	r4, #191	; 0xbf
d05a0e88:	d9d2      	bls.n	d05a0e30 <draw_random_shape+0x8a8>
d05a0e8a:	3401      	adds	r4, #1
d05a0e8c:	fa0f f884 	sxth.w	r8, r4
d05a0e90:	e7ec      	b.n	d05a0e6c <draw_random_shape+0x8e4>
d05a0e92:	9a04      	ldr	r2, [sp, #16]
d05a0e94:	fb99 f0f2 	sdiv	r0, r9, r2
d05a0e98:	4430      	add	r0, r6
d05a0e9a:	b200      	sxth	r0, r0
d05a0e9c:	e7f3      	b.n	d05a0e86 <draw_random_shape+0x8fe>
d05a0e9e:	3001      	adds	r0, #1
d05a0ea0:	3401      	adds	r4, #1
d05a0ea2:	fa0f fe80 	sxth.w	lr, r0
d05a0ea6:	fa0f f884 	sxth.w	r8, r4
d05a0eaa:	f1be 0f00 	cmp.w	lr, #0
d05a0eae:	dddd      	ble.n	d05a0e6c <draw_random_shape+0x8e4>
d05a0eb0:	4630      	mov	r0, r6
d05a0eb2:	e7c4      	b.n	d05a0e3e <draw_random_shape+0x8b6>
d05a0eb4:	9a02      	ldr	r2, [sp, #8]
d05a0eb6:	eb05 0945 	add.w	r9, r5, r5, lsl #1
d05a0eba:	1aed      	subs	r5, r5, r3
d05a0ebc:	eba1 0802 	sub.w	r8, r1, r2
d05a0ec0:	1c72      	adds	r2, r6, #1
d05a0ec2:	eb09 1909 	add.w	r9, r9, r9, lsl #4
d05a0ec6:	4659      	mov	r1, fp
d05a0ec8:	b212      	sxth	r2, r2
d05a0eca:	46b3      	mov	fp, r6
d05a0ecc:	fb08 f505 	mul.w	r5, r8, r5
d05a0ed0:	461e      	mov	r6, r3
d05a0ed2:	ea4f 09c9 	mov.w	r9, r9, lsl #3
d05a0ed6:	9b01      	ldr	r3, [sp, #4]
d05a0ed8:	9204      	str	r2, [sp, #16]
d05a0eda:	e02f      	b.n	d05a0f3c <draw_random_shape+0x9b4>
d05a0edc:	d05a2a40 	.word	0xd05a2a40
d05a0ee0:	bb83      	cbnz	r3, d05a0f44 <draw_random_shape+0x9bc>
d05a0ee2:	9a05      	ldr	r2, [sp, #20]
d05a0ee4:	2cbf      	cmp	r4, #191	; 0xbf
d05a0ee6:	fb95 f0f2 	sdiv	r0, r5, r2
d05a0eea:	9a02      	ldr	r2, [sp, #8]
d05a0eec:	4410      	add	r0, r2
d05a0eee:	b200      	sxth	r0, r0
d05a0ef0:	d836      	bhi.n	d05a0f60 <draw_random_shape+0x9d8>
d05a0ef2:	4558      	cmp	r0, fp
d05a0ef4:	da29      	bge.n	d05a0f4a <draw_random_shape+0x9c2>
d05a0ef6:	3401      	adds	r4, #1
d05a0ef8:	f8dd e010 	ldr.w	lr, [sp, #16]
d05a0efc:	fa0f fa84 	sxth.w	sl, r4
d05a0f00:	f5be 7fcc 	cmp.w	lr, #408	; 0x198
d05a0f04:	ea20 72e0 	bic.w	r2, r0, r0, asr #31
d05a0f08:	bfa8      	it	ge
d05a0f0a:	f44f 7ecc 	movge.w	lr, #408	; 0x198
d05a0f0e:	45d4      	cmp	ip, sl
d05a0f10:	b212      	sxth	r2, r2
d05a0f12:	da0c      	bge.n	d05a0f2e <draw_random_shape+0x9a6>
d05a0f14:	eb02 0c09 	add.w	ip, r2, r9
d05a0f18:	9303      	str	r3, [sp, #12]
d05a0f1a:	4b58      	ldr	r3, [pc, #352]	; (d05a107c <draw_random_shape+0xaf4>)
d05a0f1c:	ebae 0202 	sub.w	r2, lr, r2
d05a0f20:	9101      	str	r1, [sp, #4]
d05a0f22:	eb03 000c 	add.w	r0, r3, ip
d05a0f26:	f000 fccb 	bl	d05a18c0 <memset>
d05a0f2a:	9901      	ldr	r1, [sp, #4]
d05a0f2c:	9b03      	ldr	r3, [sp, #12]
d05a0f2e:	45ba      	cmp	sl, r7
d05a0f30:	b2a4      	uxth	r4, r4
d05a0f32:	f509 79cc 	add.w	r9, r9, #408	; 0x198
d05a0f36:	4445      	add	r5, r8
d05a0f38:	f73f abc1 	bgt.w	d05a06be <draw_random_shape+0x136>
d05a0f3c:	fa0f fc84 	sxth.w	ip, r4
d05a0f40:	45b4      	cmp	ip, r6
d05a0f42:	dacd      	bge.n	d05a0ee0 <draw_random_shape+0x958>
d05a0f44:	2cbf      	cmp	r4, #191	; 0xbf
d05a0f46:	d80b      	bhi.n	d05a0f60 <draw_random_shape+0x9d8>
d05a0f48:	4658      	mov	r0, fp
d05a0f4a:	3001      	adds	r0, #1
d05a0f4c:	3401      	adds	r4, #1
d05a0f4e:	fa0f fe80 	sxth.w	lr, r0
d05a0f52:	fa0f fa84 	sxth.w	sl, r4
d05a0f56:	f1be 0f00 	cmp.w	lr, #0
d05a0f5a:	dde8      	ble.n	d05a0f2e <draw_random_shape+0x9a6>
d05a0f5c:	4658      	mov	r0, fp
d05a0f5e:	e7cf      	b.n	d05a0f00 <draw_random_shape+0x978>
d05a0f60:	3401      	adds	r4, #1
d05a0f62:	fa0f fa84 	sxth.w	sl, r4
d05a0f66:	e7e2      	b.n	d05a0f2e <draw_random_shape+0x9a6>
d05a0f68:	eba1 0a06 	sub.w	sl, r1, r6
d05a0f6c:	eb05 0545 	add.w	r5, r5, r5, lsl #1
d05a0f70:	4691      	mov	r9, r2
d05a0f72:	f8cd b010 	str.w	fp, [sp, #16]
d05a0f76:	4652      	mov	r2, sl
d05a0f78:	eb05 1505 	add.w	r5, r5, r5, lsl #4
d05a0f7c:	46bb      	mov	fp, r7
d05a0f7e:	469a      	mov	sl, r3
d05a0f80:	00ed      	lsls	r5, r5, #3
d05a0f82:	9f03      	ldr	r7, [sp, #12]
d05a0f84:	4613      	mov	r3, r2
d05a0f86:	e023      	b.n	d05a0fd0 <draw_random_shape+0xa48>
d05a0f88:	4586      	cmp	lr, r0
d05a0f8a:	db36      	blt.n	d05a0ffa <draw_random_shape+0xa72>
d05a0f8c:	f10e 0201 	add.w	r2, lr, #1
d05a0f90:	3401      	adds	r4, #1
d05a0f92:	b212      	sxth	r2, r2
d05a0f94:	fa0f f884 	sxth.w	r8, r4
d05a0f98:	f5b2 7fcc 	cmp.w	r2, #408	; 0x198
d05a0f9c:	ea20 70e0 	bic.w	r0, r0, r0, asr #31
d05a0fa0:	bfa8      	it	ge
d05a0fa2:	f44f 72cc 	movge.w	r2, #408	; 0x198
d05a0fa6:	45c4      	cmp	ip, r8
d05a0fa8:	b200      	sxth	r0, r0
d05a0faa:	da0a      	bge.n	d05a0fc2 <draw_random_shape+0xa3a>
d05a0fac:	eb00 0c05 	add.w	ip, r0, r5
d05a0fb0:	9303      	str	r3, [sp, #12]
d05a0fb2:	4b32      	ldr	r3, [pc, #200]	; (d05a107c <draw_random_shape+0xaf4>)
d05a0fb4:	1a12      	subs	r2, r2, r0
d05a0fb6:	9904      	ldr	r1, [sp, #16]
d05a0fb8:	eb03 000c 	add.w	r0, r3, ip
d05a0fbc:	f000 fc80 	bl	d05a18c0 <memset>
d05a0fc0:	9b03      	ldr	r3, [sp, #12]
d05a0fc2:	45d8      	cmp	r8, fp
d05a0fc4:	4499      	add	r9, r3
d05a0fc6:	b2a4      	uxth	r4, r4
d05a0fc8:	f505 75cc 	add.w	r5, r5, #408	; 0x198
d05a0fcc:	f73f ab77 	bgt.w	d05a06be <draw_random_shape+0x136>
d05a0fd0:	fa0f fc84 	sxth.w	ip, r4
d05a0fd4:	fb99 f0f7 	sdiv	r0, r9, r7
d05a0fd8:	45d4      	cmp	ip, sl
d05a0fda:	4430      	add	r0, r6
d05a0fdc:	b282      	uxth	r2, r0
d05a0fde:	b200      	sxth	r0, r0
d05a0fe0:	db09      	blt.n	d05a0ff6 <draw_random_shape+0xa6e>
d05a0fe2:	9901      	ldr	r1, [sp, #4]
d05a0fe4:	b939      	cbnz	r1, d05a0ff6 <draw_random_shape+0xa6e>
d05a0fe6:	f8dd e008 	ldr.w	lr, [sp, #8]
d05a0fea:	2cbf      	cmp	r4, #191	; 0xbf
d05a0fec:	d9cc      	bls.n	d05a0f88 <draw_random_shape+0xa00>
d05a0fee:	3401      	adds	r4, #1
d05a0ff0:	fa0f f884 	sxth.w	r8, r4
d05a0ff4:	e7e5      	b.n	d05a0fc2 <draw_random_shape+0xa3a>
d05a0ff6:	46b6      	mov	lr, r6
d05a0ff8:	e7f7      	b.n	d05a0fea <draw_random_shape+0xa62>
d05a0ffa:	3201      	adds	r2, #1
d05a0ffc:	3401      	adds	r4, #1
d05a0ffe:	b212      	sxth	r2, r2
d05a1000:	fa0f f884 	sxth.w	r8, r4
d05a1004:	2a00      	cmp	r2, #0
d05a1006:	dddc      	ble.n	d05a0fc2 <draw_random_shape+0xa3a>
d05a1008:	4670      	mov	r0, lr
d05a100a:	e7c5      	b.n	d05a0f98 <draw_random_shape+0xa10>
d05a100c:	eb05 1505 	add.w	r5, r5, r5, lsl #4
d05a1010:	469a      	mov	sl, r3
d05a1012:	f8df 8068 	ldr.w	r8, [pc, #104]	; d05a107c <draw_random_shape+0xaf4>
d05a1016:	00ed      	lsls	r5, r5, #3
d05a1018:	9b02      	ldr	r3, [sp, #8]
d05a101a:	e01c      	b.n	d05a1056 <draw_random_shape+0xace>
d05a101c:	2cbf      	cmp	r4, #191	; 0xbf
d05a101e:	d826      	bhi.n	d05a106e <draw_random_shape+0xae6>
d05a1020:	429e      	cmp	r6, r3
d05a1022:	dd28      	ble.n	d05a1076 <draw_random_shape+0xaee>
d05a1024:	4630      	mov	r0, r6
d05a1026:	461a      	mov	r2, r3
d05a1028:	3401      	adds	r4, #1
d05a102a:	3001      	adds	r0, #1
d05a102c:	fa0f f984 	sxth.w	r9, r4
d05a1030:	b200      	sxth	r0, r0
d05a1032:	45cc      	cmp	ip, r9
d05a1034:	da09      	bge.n	d05a104a <draw_random_shape+0xac2>
d05a1036:	eb02 0c05 	add.w	ip, r2, r5
d05a103a:	4659      	mov	r1, fp
d05a103c:	1a82      	subs	r2, r0, r2
d05a103e:	9302      	str	r3, [sp, #8]
d05a1040:	eb08 000c 	add.w	r0, r8, ip
d05a1044:	f000 fc3c 	bl	d05a18c0 <memset>
d05a1048:	9b02      	ldr	r3, [sp, #8]
d05a104a:	45b9      	cmp	r9, r7
d05a104c:	b2a4      	uxth	r4, r4
d05a104e:	f505 75cc 	add.w	r5, r5, #408	; 0x198
d05a1052:	f73f ab34 	bgt.w	d05a06be <draw_random_shape+0x136>
d05a1056:	fa0f fc84 	sxth.w	ip, r4
d05a105a:	45d4      	cmp	ip, sl
d05a105c:	db02      	blt.n	d05a1064 <draw_random_shape+0xadc>
d05a105e:	9a01      	ldr	r2, [sp, #4]
d05a1060:	2a00      	cmp	r2, #0
d05a1062:	d0db      	beq.n	d05a101c <draw_random_shape+0xa94>
d05a1064:	2cbf      	cmp	r4, #191	; 0xbf
d05a1066:	d802      	bhi.n	d05a106e <draw_random_shape+0xae6>
d05a1068:	4630      	mov	r0, r6
d05a106a:	4632      	mov	r2, r6
d05a106c:	e7dc      	b.n	d05a1028 <draw_random_shape+0xaa0>
d05a106e:	3401      	adds	r4, #1
d05a1070:	fa0f f984 	sxth.w	r9, r4
d05a1074:	e7e9      	b.n	d05a104a <draw_random_shape+0xac2>
d05a1076:	4618      	mov	r0, r3
d05a1078:	4632      	mov	r2, r6
d05a107a:	e7d5      	b.n	d05a1028 <draw_random_shape+0xaa0>
d05a107c:	d05a2a40 	.word	0xd05a2a40

d05a1080 <on_timer_tick>:
d05a1080:	4b25      	ldr	r3, [pc, #148]	; (d05a1118 <on_timer_tick+0x98>)
d05a1082:	781b      	ldrb	r3, [r3, #0]
d05a1084:	2b00      	cmp	r3, #0
d05a1086:	d046      	beq.n	d05a1116 <on_timer_tick+0x96>
d05a1088:	4b24      	ldr	r3, [pc, #144]	; (d05a111c <on_timer_tick+0x9c>)
d05a108a:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
d05a108e:	781d      	ldrb	r5, [r3, #0]
d05a1090:	b10d      	cbz	r5, d05a1096 <on_timer_tick+0x16>
d05a1092:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
d05a1096:	4f22      	ldr	r7, [pc, #136]	; (d05a1120 <on_timer_tick+0xa0>)
d05a1098:	f7ff fa76 	bl	d05a0588 <draw_random_shape>
d05a109c:	f8df 9090 	ldr.w	r9, [pc, #144]	; d05a1130 <on_timer_tick+0xb0>
d05a10a0:	f507 684c 	add.w	r8, r7, #3264	; 0xcc0
d05a10a4:	f7ff fa70 	bl	d05a0588 <draw_random_shape>
d05a10a8:	f7ff fa6e 	bl	d05a0588 <draw_random_shape>
d05a10ac:	f7ff fa6c 	bl	d05a0588 <draw_random_shape>
d05a10b0:	f7ff fa6a 	bl	d05a0588 <draw_random_shape>
d05a10b4:	f7ff fa68 	bl	d05a0588 <draw_random_shape>
d05a10b8:	022e      	lsls	r6, r5, #8
d05a10ba:	462b      	mov	r3, r5
d05a10bc:	eb07 0a05 	add.w	sl, r7, r5
d05a10c0:	3501      	adds	r5, #1
d05a10c2:	fba9 2606 	umull	r2, r6, r9, r6
d05a10c6:	eb08 0403 	add.w	r4, r8, r3
d05a10ca:	0a36      	lsrs	r6, r6, #8
d05a10cc:	4650      	mov	r0, sl
d05a10ce:	f50a 7acc 	add.w	sl, sl, #408	; 0x198
d05a10d2:	2201      	movs	r2, #1
d05a10d4:	4631      	mov	r1, r6
d05a10d6:	f000 fbf3 	bl	d05a18c0 <memset>
d05a10da:	45a2      	cmp	sl, r4
d05a10dc:	d1f6      	bne.n	d05a10cc <on_timer_tick+0x4c>
d05a10de:	f5b5 7fcc 	cmp.w	r5, #408	; 0x198
d05a10e2:	d1e9      	bne.n	d05a10b8 <on_timer_tick+0x38>
d05a10e4:	4a0f      	ldr	r2, [pc, #60]	; (d05a1124 <on_timer_tick+0xa4>)
d05a10e6:	4910      	ldr	r1, [pc, #64]	; (d05a1128 <on_timer_tick+0xa8>)
d05a10e8:	6813      	ldr	r3, [r2, #0]
d05a10ea:	6808      	ldr	r0, [r1, #0]
d05a10ec:	3301      	adds	r3, #1
d05a10ee:	6013      	str	r3, [r2, #0]
d05a10f0:	b168      	cbz	r0, d05a110e <on_timer_tick+0x8e>
d05a10f2:	4a0e      	ldr	r2, [pc, #56]	; (d05a112c <on_timer_tick+0xac>)
d05a10f4:	7a13      	ldrb	r3, [r2, #8]
d05a10f6:	7a54      	ldrb	r4, [r2, #9]
d05a10f8:	7a91      	ldrb	r1, [r2, #10]
d05a10fa:	ea43 2304 	orr.w	r3, r3, r4, lsl #8
d05a10fe:	7ad2      	ldrb	r2, [r2, #11]
d05a1100:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d05a1104:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d05a1108:	68db      	ldr	r3, [r3, #12]
d05a110a:	6d9b      	ldr	r3, [r3, #88]	; 0x58
d05a110c:	4798      	blx	r3
d05a110e:	e8bd 47f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
d05a1112:	f7ff b817 	b.w	d05a0144 <set_status>
d05a1116:	4770      	bx	lr
d05a1118:	d05a2a28 	.word	0xd05a2a28
d05a111c:	d05b5c58 	.word	0xd05b5c58
d05a1120:	d05b4f80 	.word	0xd05b4f80
d05a1124:	d05b5c4c 	.word	0xd05b5c4c
d05a1128:	d05a2a2c 	.word	0xd05a2a2c
d05a112c:	2001f000 	.word	0x2001f000
d05a1130:	a0a0a0a1 	.word	0xa0a0a0a1

d05a1134 <on_burst_clicked>:
d05a1134:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
d05a1138:	2418      	movs	r4, #24
d05a113a:	3c01      	subs	r4, #1
d05a113c:	f7ff fa24 	bl	d05a0588 <draw_random_shape>
d05a1140:	f014 04ff 	ands.w	r4, r4, #255	; 0xff
d05a1144:	d1f9      	bne.n	d05a113a <on_burst_clicked+0x6>
d05a1146:	4f1a      	ldr	r7, [pc, #104]	; (d05a11b0 <on_burst_clicked+0x7c>)
d05a1148:	f8df 9074 	ldr.w	r9, [pc, #116]	; d05a11c0 <on_burst_clicked+0x8c>
d05a114c:	f507 684c 	add.w	r8, r7, #3264	; 0xcc0
d05a1150:	0226      	lsls	r6, r4, #8
d05a1152:	4623      	mov	r3, r4
d05a1154:	eb07 0a04 	add.w	sl, r7, r4
d05a1158:	3401      	adds	r4, #1
d05a115a:	fba9 2606 	umull	r2, r6, r9, r6
d05a115e:	eb08 0503 	add.w	r5, r8, r3
d05a1162:	0a36      	lsrs	r6, r6, #8
d05a1164:	4650      	mov	r0, sl
d05a1166:	f50a 7acc 	add.w	sl, sl, #408	; 0x198
d05a116a:	2201      	movs	r2, #1
d05a116c:	4631      	mov	r1, r6
d05a116e:	f000 fba7 	bl	d05a18c0 <memset>
d05a1172:	45aa      	cmp	sl, r5
d05a1174:	d1f6      	bne.n	d05a1164 <on_burst_clicked+0x30>
d05a1176:	f5b4 7fcc 	cmp.w	r4, #408	; 0x198
d05a117a:	d1e9      	bne.n	d05a1150 <on_burst_clicked+0x1c>
d05a117c:	4a0d      	ldr	r2, [pc, #52]	; (d05a11b4 <on_burst_clicked+0x80>)
d05a117e:	490e      	ldr	r1, [pc, #56]	; (d05a11b8 <on_burst_clicked+0x84>)
d05a1180:	6813      	ldr	r3, [r2, #0]
d05a1182:	6808      	ldr	r0, [r1, #0]
d05a1184:	3301      	adds	r3, #1
d05a1186:	6013      	str	r3, [r2, #0]
d05a1188:	b168      	cbz	r0, d05a11a6 <on_burst_clicked+0x72>
d05a118a:	4a0c      	ldr	r2, [pc, #48]	; (d05a11bc <on_burst_clicked+0x88>)
d05a118c:	7a13      	ldrb	r3, [r2, #8]
d05a118e:	7a54      	ldrb	r4, [r2, #9]
d05a1190:	7a91      	ldrb	r1, [r2, #10]
d05a1192:	ea43 2304 	orr.w	r3, r3, r4, lsl #8
d05a1196:	7ad2      	ldrb	r2, [r2, #11]
d05a1198:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d05a119c:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d05a11a0:	68db      	ldr	r3, [r3, #12]
d05a11a2:	6d9b      	ldr	r3, [r3, #88]	; 0x58
d05a11a4:	4798      	blx	r3
d05a11a6:	e8bd 47f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
d05a11aa:	f7fe bfcb 	b.w	d05a0144 <set_status>
d05a11ae:	bf00      	nop
d05a11b0:	d05b4f80 	.word	0xd05b4f80
d05a11b4:	d05b5c4c 	.word	0xd05b5c4c
d05a11b8:	d05a2a2c 	.word	0xd05a2a2c
d05a11bc:	2001f000 	.word	0x2001f000
d05a11c0:	a0a0a0a1 	.word	0xa0a0a0a1

d05a11c4 <on_menu_burst>:
d05a11c4:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
d05a11c8:	2418      	movs	r4, #24
d05a11ca:	3c01      	subs	r4, #1
d05a11cc:	f7ff f9dc 	bl	d05a0588 <draw_random_shape>
d05a11d0:	f014 04ff 	ands.w	r4, r4, #255	; 0xff
d05a11d4:	d1f9      	bne.n	d05a11ca <on_menu_burst+0x6>
d05a11d6:	4f1a      	ldr	r7, [pc, #104]	; (d05a1240 <on_menu_burst+0x7c>)
d05a11d8:	f8df 9074 	ldr.w	r9, [pc, #116]	; d05a1250 <on_menu_burst+0x8c>
d05a11dc:	f507 684c 	add.w	r8, r7, #3264	; 0xcc0
d05a11e0:	0226      	lsls	r6, r4, #8
d05a11e2:	4623      	mov	r3, r4
d05a11e4:	eb07 0a04 	add.w	sl, r7, r4
d05a11e8:	3401      	adds	r4, #1
d05a11ea:	fba9 2606 	umull	r2, r6, r9, r6
d05a11ee:	eb08 0503 	add.w	r5, r8, r3
d05a11f2:	0a36      	lsrs	r6, r6, #8
d05a11f4:	4650      	mov	r0, sl
d05a11f6:	f50a 7acc 	add.w	sl, sl, #408	; 0x198
d05a11fa:	2201      	movs	r2, #1
d05a11fc:	4631      	mov	r1, r6
d05a11fe:	f000 fb5f 	bl	d05a18c0 <memset>
d05a1202:	45aa      	cmp	sl, r5
d05a1204:	d1f6      	bne.n	d05a11f4 <on_menu_burst+0x30>
d05a1206:	f5b4 7fcc 	cmp.w	r4, #408	; 0x198
d05a120a:	d1e9      	bne.n	d05a11e0 <on_menu_burst+0x1c>
d05a120c:	4a0d      	ldr	r2, [pc, #52]	; (d05a1244 <on_menu_burst+0x80>)
d05a120e:	490e      	ldr	r1, [pc, #56]	; (d05a1248 <on_menu_burst+0x84>)
d05a1210:	6813      	ldr	r3, [r2, #0]
d05a1212:	6808      	ldr	r0, [r1, #0]
d05a1214:	3301      	adds	r3, #1
d05a1216:	6013      	str	r3, [r2, #0]
d05a1218:	b168      	cbz	r0, d05a1236 <on_menu_burst+0x72>
d05a121a:	4a0c      	ldr	r2, [pc, #48]	; (d05a124c <on_menu_burst+0x88>)
d05a121c:	7a13      	ldrb	r3, [r2, #8]
d05a121e:	7a54      	ldrb	r4, [r2, #9]
d05a1220:	7a91      	ldrb	r1, [r2, #10]
d05a1222:	ea43 2304 	orr.w	r3, r3, r4, lsl #8
d05a1226:	7ad2      	ldrb	r2, [r2, #11]
d05a1228:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d05a122c:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d05a1230:	68db      	ldr	r3, [r3, #12]
d05a1232:	6d9b      	ldr	r3, [r3, #88]	; 0x58
d05a1234:	4798      	blx	r3
d05a1236:	e8bd 47f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
d05a123a:	f7fe bf83 	b.w	d05a0144 <set_status>
d05a123e:	bf00      	nop
d05a1240:	d05b4f80 	.word	0xd05b4f80
d05a1244:	d05b5c4c 	.word	0xd05b5c4c
d05a1248:	d05a2a2c 	.word	0xd05a2a2c
d05a124c:	2001f000 	.word	0x2001f000
d05a1250:	a0a0a0a1 	.word	0xa0a0a0a1

d05a1254 <main>:
d05a1254:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d05a1258:	4bb4      	ldr	r3, [pc, #720]	; (d05a152c <main+0x2d8>)
d05a125a:	2601      	movs	r6, #1
d05a125c:	4cb4      	ldr	r4, [pc, #720]	; (d05a1530 <main+0x2dc>)
d05a125e:	b089      	sub	sp, #36	; 0x24
d05a1260:	701e      	strb	r6, [r3, #0]
d05a1262:	f44f 7c90 	mov.w	ip, #288	; 0x120
d05a1266:	7a21      	ldrb	r1, [r4, #8]
d05a1268:	f240 306d 	movw	r0, #877	; 0x36d
d05a126c:	7a65      	ldrb	r5, [r4, #9]
d05a126e:	f44f 73d8 	mov.w	r3, #432	; 0x1b0
d05a1272:	7aa7      	ldrb	r7, [r4, #10]
d05a1274:	2214      	movs	r2, #20
d05a1276:	ea41 2105 	orr.w	r1, r1, r5, lsl #8
d05a127a:	7ae5      	ldrb	r5, [r4, #11]
d05a127c:	f8df e2f0 	ldr.w	lr, [pc, #752]	; d05a1570 <main+0x31c>
d05a1280:	ea41 4107 	orr.w	r1, r1, r7, lsl #16
d05a1284:	ea41 6105 	orr.w	r1, r1, r5, lsl #24
d05a1288:	4daa      	ldr	r5, [pc, #680]	; (d05a1534 <main+0x2e0>)
d05a128a:	684f      	ldr	r7, [r1, #4]
d05a128c:	2118      	movs	r1, #24
d05a128e:	9002      	str	r0, [sp, #8]
d05a1290:	4628      	mov	r0, r5
d05a1292:	f8cd e004 	str.w	lr, [sp, #4]
d05a1296:	f8cd c000 	str.w	ip, [sp]
d05a129a:	683f      	ldr	r7, [r7, #0]
d05a129c:	47b8      	blx	r7
d05a129e:	7a23      	ldrb	r3, [r4, #8]
d05a12a0:	7a62      	ldrb	r2, [r4, #9]
d05a12a2:	7aa1      	ldrb	r1, [r4, #10]
d05a12a4:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d05a12a8:	7ae2      	ldrb	r2, [r4, #11]
d05a12aa:	4fa3      	ldr	r7, [pc, #652]	; (d05a1538 <main+0x2e4>)
d05a12ac:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d05a12b0:	7828      	ldrb	r0, [r5, #0]
d05a12b2:	49a2      	ldr	r1, [pc, #648]	; (d05a153c <main+0x2e8>)
d05a12b4:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d05a12b8:	685b      	ldr	r3, [r3, #4]
d05a12ba:	689b      	ldr	r3, [r3, #8]
d05a12bc:	4798      	blx	r3
d05a12be:	f8d7 8000 	ldr.w	r8, [r7]
d05a12c2:	f1b8 0f00 	cmp.w	r8, #0
d05a12c6:	f040 80f4 	bne.w	d05a14b2 <main+0x25e>
d05a12ca:	7a20      	ldrb	r0, [r4, #8]
d05a12cc:	7a61      	ldrb	r1, [r4, #9]
d05a12ce:	7aa2      	ldrb	r2, [r4, #10]
d05a12d0:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d05a12d4:	7ae3      	ldrb	r3, [r4, #11]
d05a12d6:	489a      	ldr	r0, [pc, #616]	; (d05a1540 <main+0x2ec>)
d05a12d8:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d05a12dc:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d05a12e0:	699b      	ldr	r3, [r3, #24]
d05a12e2:	681b      	ldr	r3, [r3, #0]
d05a12e4:	4798      	blx	r3
d05a12e6:	6038      	str	r0, [r7, #0]
d05a12e8:	2800      	cmp	r0, #0
d05a12ea:	f000 80e2 	beq.w	d05a14b2 <main+0x25e>
d05a12ee:	f894 e008 	ldrb.w	lr, [r4, #8]
d05a12f2:	4641      	mov	r1, r8
d05a12f4:	7a62      	ldrb	r2, [r4, #9]
d05a12f6:	4638      	mov	r0, r7
d05a12f8:	f894 c00a 	ldrb.w	ip, [r4, #10]
d05a12fc:	ea4e 2202 	orr.w	r2, lr, r2, lsl #8
d05a1300:	7ae3      	ldrb	r3, [r4, #11]
d05a1302:	f8df 9270 	ldr.w	r9, [pc, #624]	; d05a1574 <main+0x320>
d05a1306:	ea42 4c0c 	orr.w	ip, r2, ip, lsl #16
d05a130a:	4a8e      	ldr	r2, [pc, #568]	; (d05a1544 <main+0x2f0>)
d05a130c:	ea4c 6303 	orr.w	r3, ip, r3, lsl #24
d05a1310:	699b      	ldr	r3, [r3, #24]
d05a1312:	685b      	ldr	r3, [r3, #4]
d05a1314:	4798      	blx	r3
d05a1316:	7a23      	ldrb	r3, [r4, #8]
d05a1318:	f894 c009 	ldrb.w	ip, [r4, #9]
d05a131c:	4642      	mov	r2, r8
d05a131e:	7aa1      	ldrb	r1, [r4, #10]
d05a1320:	ea43 230c 	orr.w	r3, r3, ip, lsl #8
d05a1324:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d05a1328:	7ae1      	ldrb	r1, [r4, #11]
d05a132a:	ea43 6301 	orr.w	r3, r3, r1, lsl #24
d05a132e:	4986      	ldr	r1, [pc, #536]	; (d05a1548 <main+0x2f4>)
d05a1330:	699b      	ldr	r3, [r3, #24]
d05a1332:	695b      	ldr	r3, [r3, #20]
d05a1334:	4798      	blx	r3
d05a1336:	f894 c008 	ldrb.w	ip, [r4, #8]
d05a133a:	7a62      	ldrb	r2, [r4, #9]
d05a133c:	4641      	mov	r1, r8
d05a133e:	7aa0      	ldrb	r0, [r4, #10]
d05a1340:	ea4c 2202 	orr.w	r2, ip, r2, lsl #8
d05a1344:	7ae3      	ldrb	r3, [r4, #11]
d05a1346:	ea42 4000 	orr.w	r0, r2, r0, lsl #16
d05a134a:	4a80      	ldr	r2, [pc, #512]	; (d05a154c <main+0x2f8>)
d05a134c:	ea40 6303 	orr.w	r3, r0, r3, lsl #24
d05a1350:	4638      	mov	r0, r7
d05a1352:	699b      	ldr	r3, [r3, #24]
d05a1354:	685b      	ldr	r3, [r3, #4]
d05a1356:	4798      	blx	r3
d05a1358:	7a23      	ldrb	r3, [r4, #8]
d05a135a:	f894 c009 	ldrb.w	ip, [r4, #9]
d05a135e:	4642      	mov	r2, r8
d05a1360:	7aa1      	ldrb	r1, [r4, #10]
d05a1362:	ea43 230c 	orr.w	r3, r3, ip, lsl #8
d05a1366:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d05a136a:	7ae1      	ldrb	r1, [r4, #11]
d05a136c:	ea43 6301 	orr.w	r3, r3, r1, lsl #24
d05a1370:	4977      	ldr	r1, [pc, #476]	; (d05a1550 <main+0x2fc>)
d05a1372:	699b      	ldr	r3, [r3, #24]
d05a1374:	695b      	ldr	r3, [r3, #20]
d05a1376:	4798      	blx	r3
d05a1378:	f894 c008 	ldrb.w	ip, [r4, #8]
d05a137c:	7a62      	ldrb	r2, [r4, #9]
d05a137e:	4641      	mov	r1, r8
d05a1380:	7aa0      	ldrb	r0, [r4, #10]
d05a1382:	ea4c 2202 	orr.w	r2, ip, r2, lsl #8
d05a1386:	7ae3      	ldrb	r3, [r4, #11]
d05a1388:	ea42 4000 	orr.w	r0, r2, r0, lsl #16
d05a138c:	4a71      	ldr	r2, [pc, #452]	; (d05a1554 <main+0x300>)
d05a138e:	ea40 6303 	orr.w	r3, r0, r3, lsl #24
d05a1392:	4638      	mov	r0, r7
d05a1394:	699b      	ldr	r3, [r3, #24]
d05a1396:	685b      	ldr	r3, [r3, #4]
d05a1398:	4798      	blx	r3
d05a139a:	7a23      	ldrb	r3, [r4, #8]
d05a139c:	f894 c009 	ldrb.w	ip, [r4, #9]
d05a13a0:	2202      	movs	r2, #2
d05a13a2:	9007      	str	r0, [sp, #28]
d05a13a4:	4641      	mov	r1, r8
d05a13a6:	ea43 230c 	orr.w	r3, r3, ip, lsl #8
d05a13aa:	7aa0      	ldrb	r0, [r4, #10]
d05a13ac:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
d05a13b0:	7ae0      	ldrb	r0, [r4, #11]
d05a13b2:	ea43 6300 	orr.w	r3, r3, r0, lsl #24
d05a13b6:	a807      	add	r0, sp, #28
d05a13b8:	699b      	ldr	r3, [r3, #24]
d05a13ba:	699b      	ldr	r3, [r3, #24]
d05a13bc:	4798      	blx	r3
d05a13be:	f894 c008 	ldrb.w	ip, [r4, #8]
d05a13c2:	7a62      	ldrb	r2, [r4, #9]
d05a13c4:	4641      	mov	r1, r8
d05a13c6:	7aa0      	ldrb	r0, [r4, #10]
d05a13c8:	ea4c 2202 	orr.w	r2, ip, r2, lsl #8
d05a13cc:	7ae3      	ldrb	r3, [r4, #11]
d05a13ce:	ea42 4000 	orr.w	r0, r2, r0, lsl #16
d05a13d2:	4a61      	ldr	r2, [pc, #388]	; (d05a1558 <main+0x304>)
d05a13d4:	ea40 6303 	orr.w	r3, r0, r3, lsl #24
d05a13d8:	4638      	mov	r0, r7
d05a13da:	699b      	ldr	r3, [r3, #24]
d05a13dc:	685b      	ldr	r3, [r3, #4]
d05a13de:	4798      	blx	r3
d05a13e0:	f894 c008 	ldrb.w	ip, [r4, #8]
d05a13e4:	4631      	mov	r1, r6
d05a13e6:	7a66      	ldrb	r6, [r4, #9]
d05a13e8:	7aa3      	ldrb	r3, [r4, #10]
d05a13ea:	ea4c 2206 	orr.w	r2, ip, r6, lsl #8
d05a13ee:	f8df e188 	ldr.w	lr, [pc, #392]	; d05a1578 <main+0x324>
d05a13f2:	ea42 4603 	orr.w	r6, r2, r3, lsl #16
d05a13f6:	7ae3      	ldrb	r3, [r4, #11]
d05a13f8:	f8ce 0000 	str.w	r0, [lr]
d05a13fc:	4638      	mov	r0, r7
d05a13fe:	ea46 6303 	orr.w	r3, r6, r3, lsl #24
d05a1402:	4a56      	ldr	r2, [pc, #344]	; (d05a155c <main+0x308>)
d05a1404:	699b      	ldr	r3, [r3, #24]
d05a1406:	685b      	ldr	r3, [r3, #4]
d05a1408:	4798      	blx	r3
d05a140a:	7a23      	ldrb	r3, [r4, #8]
d05a140c:	7a61      	ldrb	r1, [r4, #9]
d05a140e:	4642      	mov	r2, r8
d05a1410:	7aa6      	ldrb	r6, [r4, #10]
d05a1412:	ea43 2101 	orr.w	r1, r3, r1, lsl #8
d05a1416:	7ae3      	ldrb	r3, [r4, #11]
d05a1418:	f8c9 0000 	str.w	r0, [r9]
d05a141c:	ea41 4606 	orr.w	r6, r1, r6, lsl #16
d05a1420:	494f      	ldr	r1, [pc, #316]	; (d05a1560 <main+0x30c>)
d05a1422:	ea46 6303 	orr.w	r3, r6, r3, lsl #24
d05a1426:	699b      	ldr	r3, [r3, #24]
d05a1428:	695b      	ldr	r3, [r3, #20]
d05a142a:	4798      	blx	r3
d05a142c:	4b4d      	ldr	r3, [pc, #308]	; (d05a1564 <main+0x310>)
d05a142e:	781b      	ldrb	r3, [r3, #0]
d05a1430:	b183      	cbz	r3, d05a1454 <main+0x200>
d05a1432:	f894 c008 	ldrb.w	ip, [r4, #8]
d05a1436:	4641      	mov	r1, r8
d05a1438:	7a62      	ldrb	r2, [r4, #9]
d05a143a:	4648      	mov	r0, r9
d05a143c:	7aa6      	ldrb	r6, [r4, #10]
d05a143e:	ea4c 2202 	orr.w	r2, ip, r2, lsl #8
d05a1442:	7ae3      	ldrb	r3, [r4, #11]
d05a1444:	ea42 4606 	orr.w	r6, r2, r6, lsl #16
d05a1448:	2204      	movs	r2, #4
d05a144a:	ea46 6303 	orr.w	r3, r6, r3, lsl #24
d05a144e:	699b      	ldr	r3, [r3, #24]
d05a1450:	699b      	ldr	r3, [r3, #24]
d05a1452:	4798      	blx	r3
d05a1454:	7a22      	ldrb	r2, [r4, #8]
d05a1456:	2102      	movs	r1, #2
d05a1458:	7a60      	ldrb	r0, [r4, #9]
d05a145a:	7aa6      	ldrb	r6, [r4, #10]
d05a145c:	ea42 2000 	orr.w	r0, r2, r0, lsl #8
d05a1460:	7ae3      	ldrb	r3, [r4, #11]
d05a1462:	4a41      	ldr	r2, [pc, #260]	; (d05a1568 <main+0x314>)
d05a1464:	ea40 4606 	orr.w	r6, r0, r6, lsl #16
d05a1468:	4833      	ldr	r0, [pc, #204]	; (d05a1538 <main+0x2e4>)
d05a146a:	ea46 6303 	orr.w	r3, r6, r3, lsl #24
d05a146e:	699b      	ldr	r3, [r3, #24]
d05a1470:	685b      	ldr	r3, [r3, #4]
d05a1472:	4798      	blx	r3
d05a1474:	f894 c008 	ldrb.w	ip, [r4, #8]
d05a1478:	7a61      	ldrb	r1, [r4, #9]
d05a147a:	2200      	movs	r2, #0
d05a147c:	7aa6      	ldrb	r6, [r4, #10]
d05a147e:	ea4c 2101 	orr.w	r1, ip, r1, lsl #8
d05a1482:	7ae3      	ldrb	r3, [r4, #11]
d05a1484:	ea41 4606 	orr.w	r6, r1, r6, lsl #16
d05a1488:	4938      	ldr	r1, [pc, #224]	; (d05a156c <main+0x318>)
d05a148a:	ea46 6303 	orr.w	r3, r6, r3, lsl #24
d05a148e:	699b      	ldr	r3, [r3, #24]
d05a1490:	695b      	ldr	r3, [r3, #20]
d05a1492:	4798      	blx	r3
d05a1494:	7a20      	ldrb	r0, [r4, #8]
d05a1496:	7a61      	ldrb	r1, [r4, #9]
d05a1498:	7aa2      	ldrb	r2, [r4, #10]
d05a149a:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d05a149e:	7ae3      	ldrb	r3, [r4, #11]
d05a14a0:	6838      	ldr	r0, [r7, #0]
d05a14a2:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d05a14a6:	7829      	ldrb	r1, [r5, #0]
d05a14a8:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d05a14ac:	699b      	ldr	r3, [r3, #24]
d05a14ae:	68db      	ldr	r3, [r3, #12]
d05a14b0:	4798      	blx	r3
d05a14b2:	7a22      	ldrb	r2, [r4, #8]
d05a14b4:	2601      	movs	r6, #1
d05a14b6:	7a61      	ldrb	r1, [r4, #9]
d05a14b8:	f04f 0b16 	mov.w	fp, #22
d05a14bc:	f894 c00a 	ldrb.w	ip, [r4, #10]
d05a14c0:	2348      	movs	r3, #72	; 0x48
d05a14c2:	ea42 2101 	orr.w	r1, r2, r1, lsl #8
d05a14c6:	7ae7      	ldrb	r7, [r4, #11]
d05a14c8:	f8df e0b0 	ldr.w	lr, [pc, #176]	; d05a157c <main+0x328>
d05a14cc:	220a      	movs	r2, #10
d05a14ce:	ea41 4c0c 	orr.w	ip, r1, ip, lsl #16
d05a14d2:	7828      	ldrb	r0, [r5, #0]
d05a14d4:	210c      	movs	r1, #12
d05a14d6:	f8df a0a8 	ldr.w	sl, [pc, #168]	; d05a1580 <main+0x32c>
d05a14da:	ea4c 6707 	orr.w	r7, ip, r7, lsl #24
d05a14de:	f8df 90a4 	ldr.w	r9, [pc, #164]	; d05a1584 <main+0x330>
d05a14e2:	68ff      	ldr	r7, [r7, #12]
d05a14e4:	9602      	str	r6, [sp, #8]
d05a14e6:	e9cd be00 	strd	fp, lr, [sp]
d05a14ea:	68bf      	ldr	r7, [r7, #8]
d05a14ec:	47b8      	blx	r7
d05a14ee:	f894 8008 	ldrb.w	r8, [r4, #8]
d05a14f2:	f894 c009 	ldrb.w	ip, [r4, #9]
d05a14f6:	2348      	movs	r3, #72	; 0x48
d05a14f8:	7aa7      	ldrb	r7, [r4, #10]
d05a14fa:	220a      	movs	r2, #10
d05a14fc:	ea48 2e0c 	orr.w	lr, r8, ip, lsl #8
d05a1500:	f894 800b 	ldrb.w	r8, [r4, #11]
d05a1504:	f8ca 0000 	str.w	r0, [sl]
d05a1508:	215e      	movs	r1, #94	; 0x5e
d05a150a:	ea4e 4c07 	orr.w	ip, lr, r7, lsl #16
d05a150e:	f8df e034 	ldr.w	lr, [pc, #52]	; d05a1544 <main+0x2f0>
d05a1512:	7828      	ldrb	r0, [r5, #0]
d05a1514:	ea4c 6708 	orr.w	r7, ip, r8, lsl #24
d05a1518:	f8df 806c 	ldr.w	r8, [pc, #108]	; d05a1588 <main+0x334>
d05a151c:	68ff      	ldr	r7, [r7, #12]
d05a151e:	9602      	str	r6, [sp, #8]
d05a1520:	e9cd be00 	strd	fp, lr, [sp]
d05a1524:	68bf      	ldr	r7, [r7, #8]
d05a1526:	47b8      	blx	r7
d05a1528:	7a21      	ldrb	r1, [r4, #8]
d05a152a:	e02f      	b.n	d05a158c <main+0x338>
d05a152c:	d05a2a28 	.word	0xd05a2a28
d05a1530:	2001f000 	.word	0x2001f000
d05a1534:	d05b5c48 	.word	0xd05b5c48
d05a1538:	d05b5c44 	.word	0xd05b5c44
d05a153c:	d05a030d 	.word	0xd05a030d
d05a1540:	d05a28c0 	.word	0xd05a28c0
d05a1544:	d05a28d8 	.word	0xd05a28d8
d05a1548:	d05a11c5 	.word	0xd05a11c5
d05a154c:	d05a28e0 	.word	0xd05a28e0
d05a1550:	d05a0435 	.word	0xd05a0435
d05a1554:	d05a28ec 	.word	0xd05a28ec
d05a1558:	d05a28e8 	.word	0xd05a28e8
d05a155c:	d05a288c 	.word	0xd05a288c
d05a1560:	d05a0439 	.word	0xd05a0439
d05a1564:	d05b5c58 	.word	0xd05b5c58
d05a1568:	d05a28f0 	.word	0xd05a28f0
d05a156c:	d05a0109 	.word	0xd05a0109
d05a1570:	d05a287c 	.word	0xd05a287c
d05a1574:	d05b5c54 	.word	0xd05b5c54
d05a1578:	d05b5c50 	.word	0xd05b5c50
d05a157c:	d05a2904 	.word	0xd05a2904
d05a1580:	d05a2a3c 	.word	0xd05a2a3c
d05a1584:	d05a2a30 	.word	0xd05a2a30
d05a1588:	d05a2a34 	.word	0xd05a2a34
d05a158c:	f894 c009 	ldrb.w	ip, [r4, #9]
d05a1590:	2348      	movs	r3, #72	; 0x48
d05a1592:	f894 e00a 	ldrb.w	lr, [r4, #10]
d05a1596:	220a      	movs	r2, #10
d05a1598:	ea41 2c0c 	orr.w	ip, r1, ip, lsl #8
d05a159c:	f8c9 0000 	str.w	r0, [r9]
d05a15a0:	7ae7      	ldrb	r7, [r4, #11]
d05a15a2:	21b0      	movs	r1, #176	; 0xb0
d05a15a4:	ea4c 400e 	orr.w	r0, ip, lr, lsl #16
d05a15a8:	f8df c2fc 	ldr.w	ip, [pc, #764]	; d05a18a8 <main+0x654>
d05a15ac:	ea40 6707 	orr.w	r7, r0, r7, lsl #24
d05a15b0:	7828      	ldrb	r0, [r5, #0]
d05a15b2:	68ff      	ldr	r7, [r7, #12]
d05a15b4:	9602      	str	r6, [sp, #8]
d05a15b6:	e9cd bc00 	strd	fp, ip, [sp]
d05a15ba:	68bf      	ldr	r7, [r7, #8]
d05a15bc:	47b8      	blx	r7
d05a15be:	7a21      	ldrb	r1, [r4, #8]
d05a15c0:	f894 c009 	ldrb.w	ip, [r4, #9]
d05a15c4:	2348      	movs	r3, #72	; 0x48
d05a15c6:	f894 e00a 	ldrb.w	lr, [r4, #10]
d05a15ca:	220a      	movs	r2, #10
d05a15cc:	ea41 2c0c 	orr.w	ip, r1, ip, lsl #8
d05a15d0:	f8c8 0000 	str.w	r0, [r8]
d05a15d4:	7ae7      	ldrb	r7, [r4, #11]
d05a15d6:	f44f 71ac 	mov.w	r1, #344	; 0x158
d05a15da:	ea4c 400e 	orr.w	r0, ip, lr, lsl #16
d05a15de:	f8df c2cc 	ldr.w	ip, [pc, #716]	; d05a18ac <main+0x658>
d05a15e2:	ea40 6707 	orr.w	r7, r0, r7, lsl #24
d05a15e6:	7828      	ldrb	r0, [r5, #0]
d05a15e8:	68ff      	ldr	r7, [r7, #12]
d05a15ea:	f8cd b000 	str.w	fp, [sp]
d05a15ee:	f04f 0b40 	mov.w	fp, #64	; 0x40
d05a15f2:	f8cd c004 	str.w	ip, [sp, #4]
d05a15f6:	9602      	str	r6, [sp, #8]
d05a15f8:	68bf      	ldr	r7, [r7, #8]
d05a15fa:	47b8      	blx	r7
d05a15fc:	7a27      	ldrb	r7, [r4, #8]
d05a15fe:	7a63      	ldrb	r3, [r4, #9]
d05a1600:	2204      	movs	r2, #4
d05a1602:	f894 e00a 	ldrb.w	lr, [r4, #10]
d05a1606:	ea47 2103 	orr.w	r1, r7, r3, lsl #8
d05a160a:	f894 c00b 	ldrb.w	ip, [r4, #11]
d05a160e:	4f9d      	ldr	r7, [pc, #628]	; (d05a1884 <main+0x630>)
d05a1610:	ea41 430e 	orr.w	r3, r1, lr, lsl #16
d05a1614:	f44f 7ecc 	mov.w	lr, #408	; 0x198
d05a1618:	6038      	str	r0, [r7, #0]
d05a161a:	21c0      	movs	r1, #192	; 0xc0
d05a161c:	ea43 630c 	orr.w	r3, r3, ip, lsl #24
d05a1620:	20c2      	movs	r0, #194	; 0xc2
d05a1622:	f8d3 c00c 	ldr.w	ip, [r3, #12]
d05a1626:	f44f 73cd 	mov.w	r3, #410	; 0x19a
d05a162a:	9203      	str	r2, [sp, #12]
d05a162c:	222c      	movs	r2, #44	; 0x2c
d05a162e:	9102      	str	r1, [sp, #8]
d05a1630:	210c      	movs	r1, #12
d05a1632:	f8cd b010 	str.w	fp, [sp, #16]
d05a1636:	e9cd 0e00 	strd	r0, lr, [sp]
d05a163a:	f8dc b004 	ldr.w	fp, [ip, #4]
d05a163e:	7828      	ldrb	r0, [r5, #0]
d05a1640:	47d8      	blx	fp
d05a1642:	7a21      	ldrb	r1, [r4, #8]
d05a1644:	7a62      	ldrb	r2, [r4, #9]
d05a1646:	7aa3      	ldrb	r3, [r4, #10]
d05a1648:	ea41 2202 	orr.w	r2, r1, r2, lsl #8
d05a164c:	f894 c00b 	ldrb.w	ip, [r4, #11]
d05a1650:	f8df b25c 	ldr.w	fp, [pc, #604]	; d05a18b0 <main+0x65c>
d05a1654:	ea42 4303 	orr.w	r3, r2, r3, lsl #16
d05a1658:	498b      	ldr	r1, [pc, #556]	; (d05a1888 <main+0x634>)
d05a165a:	f8cb 0000 	str.w	r0, [fp]
d05a165e:	ea43 630c 	orr.w	r3, r3, ip, lsl #24
d05a1662:	68db      	ldr	r3, [r3, #12]
d05a1664:	6f5b      	ldr	r3, [r3, #116]	; 0x74
d05a1666:	4798      	blx	r3
d05a1668:	f894 c008 	ldrb.w	ip, [r4, #8]
d05a166c:	7a61      	ldrb	r1, [r4, #9]
d05a166e:	2200      	movs	r2, #0
d05a1670:	7aa3      	ldrb	r3, [r4, #10]
d05a1672:	ea4c 2001 	orr.w	r0, ip, r1, lsl #8
d05a1676:	f894 c00b 	ldrb.w	ip, [r4, #11]
d05a167a:	ea40 4103 	orr.w	r1, r0, r3, lsl #16
d05a167e:	f8da 0000 	ldr.w	r0, [sl]
d05a1682:	ea41 630c 	orr.w	r3, r1, ip, lsl #24
d05a1686:	4981      	ldr	r1, [pc, #516]	; (d05a188c <main+0x638>)
d05a1688:	68db      	ldr	r3, [r3, #12]
d05a168a:	6e1b      	ldr	r3, [r3, #96]	; 0x60
d05a168c:	4798      	blx	r3
d05a168e:	f894 c008 	ldrb.w	ip, [r4, #8]
d05a1692:	7a61      	ldrb	r1, [r4, #9]
d05a1694:	2200      	movs	r2, #0
d05a1696:	7aa3      	ldrb	r3, [r4, #10]
d05a1698:	ea4c 2001 	orr.w	r0, ip, r1, lsl #8
d05a169c:	f894 c00b 	ldrb.w	ip, [r4, #11]
d05a16a0:	ea40 4103 	orr.w	r1, r0, r3, lsl #16
d05a16a4:	f8d9 0000 	ldr.w	r0, [r9]
d05a16a8:	ea41 630c 	orr.w	r3, r1, ip, lsl #24
d05a16ac:	4978      	ldr	r1, [pc, #480]	; (d05a1890 <main+0x63c>)
d05a16ae:	68db      	ldr	r3, [r3, #12]
d05a16b0:	6e1b      	ldr	r3, [r3, #96]	; 0x60
d05a16b2:	4798      	blx	r3
d05a16b4:	f894 c008 	ldrb.w	ip, [r4, #8]
d05a16b8:	7a61      	ldrb	r1, [r4, #9]
d05a16ba:	2200      	movs	r2, #0
d05a16bc:	7aa3      	ldrb	r3, [r4, #10]
d05a16be:	ea4c 2001 	orr.w	r0, ip, r1, lsl #8
d05a16c2:	f894 c00b 	ldrb.w	ip, [r4, #11]
d05a16c6:	ea40 4103 	orr.w	r1, r0, r3, lsl #16
d05a16ca:	f8d8 0000 	ldr.w	r0, [r8]
d05a16ce:	ea41 630c 	orr.w	r3, r1, ip, lsl #24
d05a16d2:	4970      	ldr	r1, [pc, #448]	; (d05a1894 <main+0x640>)
d05a16d4:	68db      	ldr	r3, [r3, #12]
d05a16d6:	6e1b      	ldr	r3, [r3, #96]	; 0x60
d05a16d8:	4798      	blx	r3
d05a16da:	f894 c008 	ldrb.w	ip, [r4, #8]
d05a16de:	7a61      	ldrb	r1, [r4, #9]
d05a16e0:	2200      	movs	r2, #0
d05a16e2:	7aa3      	ldrb	r3, [r4, #10]
d05a16e4:	ea4c 2001 	orr.w	r0, ip, r1, lsl #8
d05a16e8:	f894 c00b 	ldrb.w	ip, [r4, #11]
d05a16ec:	ea40 4103 	orr.w	r1, r0, r3, lsl #16
d05a16f0:	6838      	ldr	r0, [r7, #0]
d05a16f2:	ea41 630c 	orr.w	r3, r1, ip, lsl #24
d05a16f6:	4968      	ldr	r1, [pc, #416]	; (d05a1898 <main+0x644>)
d05a16f8:	68db      	ldr	r3, [r3, #12]
d05a16fa:	6e1b      	ldr	r3, [r3, #96]	; 0x60
d05a16fc:	4798      	blx	r3
d05a16fe:	7a20      	ldrb	r0, [r4, #8]
d05a1700:	7a62      	ldrb	r2, [r4, #9]
d05a1702:	f894 c00a 	ldrb.w	ip, [r4, #10]
d05a1706:	ea40 2102 	orr.w	r1, r0, r2, lsl #8
d05a170a:	7ae3      	ldrb	r3, [r4, #11]
d05a170c:	f8da 0000 	ldr.w	r0, [sl]
d05a1710:	ea41 420c 	orr.w	r2, r1, ip, lsl #16
d05a1714:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d05a1718:	68db      	ldr	r3, [r3, #12]
d05a171a:	6d9b      	ldr	r3, [r3, #88]	; 0x58
d05a171c:	4798      	blx	r3
d05a171e:	7a20      	ldrb	r0, [r4, #8]
d05a1720:	7a61      	ldrb	r1, [r4, #9]
d05a1722:	7aa2      	ldrb	r2, [r4, #10]
d05a1724:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d05a1728:	7ae3      	ldrb	r3, [r4, #11]
d05a172a:	f8d9 0000 	ldr.w	r0, [r9]
d05a172e:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d05a1732:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d05a1736:	68db      	ldr	r3, [r3, #12]
d05a1738:	6d9b      	ldr	r3, [r3, #88]	; 0x58
d05a173a:	4798      	blx	r3
d05a173c:	7a20      	ldrb	r0, [r4, #8]
d05a173e:	7a61      	ldrb	r1, [r4, #9]
d05a1740:	7aa2      	ldrb	r2, [r4, #10]
d05a1742:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d05a1746:	7ae3      	ldrb	r3, [r4, #11]
d05a1748:	f8d8 0000 	ldr.w	r0, [r8]
d05a174c:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d05a1750:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d05a1754:	68db      	ldr	r3, [r3, #12]
d05a1756:	6d9b      	ldr	r3, [r3, #88]	; 0x58
d05a1758:	4798      	blx	r3
d05a175a:	7a20      	ldrb	r0, [r4, #8]
d05a175c:	7a61      	ldrb	r1, [r4, #9]
d05a175e:	7aa2      	ldrb	r2, [r4, #10]
d05a1760:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d05a1764:	7ae3      	ldrb	r3, [r4, #11]
d05a1766:	6838      	ldr	r0, [r7, #0]
d05a1768:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d05a176c:	4f4b      	ldr	r7, [pc, #300]	; (d05a189c <main+0x648>)
d05a176e:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d05a1772:	68db      	ldr	r3, [r3, #12]
d05a1774:	6d9b      	ldr	r3, [r3, #88]	; 0x58
d05a1776:	4798      	blx	r3
d05a1778:	7a20      	ldrb	r0, [r4, #8]
d05a177a:	7a61      	ldrb	r1, [r4, #9]
d05a177c:	7aa2      	ldrb	r2, [r4, #10]
d05a177e:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d05a1782:	7ae3      	ldrb	r3, [r4, #11]
d05a1784:	f8db 0000 	ldr.w	r0, [fp]
d05a1788:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d05a178c:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d05a1790:	68db      	ldr	r3, [r3, #12]
d05a1792:	6d9b      	ldr	r3, [r3, #88]	; 0x58
d05a1794:	4798      	blx	r3
d05a1796:	f44f 3299 	mov.w	r2, #78336	; 0x13200
d05a179a:	2100      	movs	r1, #0
d05a179c:	483a      	ldr	r0, [pc, #232]	; (d05a1888 <main+0x634>)
d05a179e:	f000 f88f 	bl	d05a18c0 <memset>
d05a17a2:	7820      	ldrb	r0, [r4, #0]
d05a17a4:	7861      	ldrb	r1, [r4, #1]
d05a17a6:	78a2      	ldrb	r2, [r4, #2]
d05a17a8:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d05a17ac:	78e3      	ldrb	r3, [r4, #3]
d05a17ae:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d05a17b2:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d05a17b6:	689b      	ldr	r3, [r3, #8]
d05a17b8:	4798      	blx	r3
d05a17ba:	4a39      	ldr	r2, [pc, #228]	; (d05a18a0 <main+0x64c>)
d05a17bc:	6813      	ldr	r3, [r2, #0]
d05a17be:	4058      	eors	r0, r3
d05a17c0:	6010      	str	r0, [r2, #0]
d05a17c2:	f7fe fded 	bl	d05a03a0 <clear_demo>
d05a17c6:	7a20      	ldrb	r0, [r4, #8]
d05a17c8:	7a61      	ldrb	r1, [r4, #9]
d05a17ca:	7aa2      	ldrb	r2, [r4, #10]
d05a17cc:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d05a17d0:	7ae3      	ldrb	r3, [r4, #11]
d05a17d2:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d05a17d6:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d05a17da:	695b      	ldr	r3, [r3, #20]
d05a17dc:	681b      	ldr	r3, [r3, #0]
d05a17de:	4798      	blx	r3
d05a17e0:	28ff      	cmp	r0, #255	; 0xff
d05a17e2:	7038      	strb	r0, [r7, #0]
d05a17e4:	d049      	beq.n	d05a187a <main+0x626>
d05a17e6:	f894 c008 	ldrb.w	ip, [r4, #8]
d05a17ea:	f04f 0e00 	mov.w	lr, #0
d05a17ee:	7a61      	ldrb	r1, [r4, #9]
d05a17f0:	2232      	movs	r2, #50	; 0x32
d05a17f2:	7aa3      	ldrb	r3, [r4, #10]
d05a17f4:	ea4c 2101 	orr.w	r1, ip, r1, lsl #8
d05a17f8:	7ae7      	ldrb	r7, [r4, #11]
d05a17fa:	ea41 4303 	orr.w	r3, r1, r3, lsl #16
d05a17fe:	4611      	mov	r1, r2
d05a1800:	ea43 6707 	orr.w	r7, r3, r7, lsl #24
d05a1804:	4b27      	ldr	r3, [pc, #156]	; (d05a18a4 <main+0x650>)
d05a1806:	697f      	ldr	r7, [r7, #20]
d05a1808:	f8cd e000 	str.w	lr, [sp]
d05a180c:	68bf      	ldr	r7, [r7, #8]
d05a180e:	47b8      	blx	r7
d05a1810:	b198      	cbz	r0, d05a183a <main+0x5e6>
d05a1812:	7a20      	ldrb	r0, [r4, #8]
d05a1814:	7a61      	ldrb	r1, [r4, #9]
d05a1816:	7aa2      	ldrb	r2, [r4, #10]
d05a1818:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d05a181c:	7ae3      	ldrb	r3, [r4, #11]
d05a181e:	4f1f      	ldr	r7, [pc, #124]	; (d05a189c <main+0x648>)
d05a1820:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d05a1824:	7838      	ldrb	r0, [r7, #0]
d05a1826:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d05a182a:	695b      	ldr	r3, [r3, #20]
d05a182c:	685b      	ldr	r3, [r3, #4]
d05a182e:	4798      	blx	r3
d05a1830:	23ff      	movs	r3, #255	; 0xff
d05a1832:	4630      	mov	r0, r6
d05a1834:	703b      	strb	r3, [r7, #0]
d05a1836:	f7fe fceb 	bl	d05a0210 <set_paused_state>
d05a183a:	7a23      	ldrb	r3, [r4, #8]
d05a183c:	7a62      	ldrb	r2, [r4, #9]
d05a183e:	7aa1      	ldrb	r1, [r4, #10]
d05a1840:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d05a1844:	7ae2      	ldrb	r2, [r4, #11]
d05a1846:	7828      	ldrb	r0, [r5, #0]
d05a1848:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d05a184c:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d05a1850:	685b      	ldr	r3, [r3, #4]
d05a1852:	68db      	ldr	r3, [r3, #12]
d05a1854:	4798      	blx	r3
d05a1856:	7a23      	ldrb	r3, [r4, #8]
d05a1858:	7a62      	ldrb	r2, [r4, #9]
d05a185a:	7aa1      	ldrb	r1, [r4, #10]
d05a185c:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d05a1860:	7ae2      	ldrb	r2, [r4, #11]
d05a1862:	7828      	ldrb	r0, [r5, #0]
d05a1864:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d05a1868:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d05a186c:	685b      	ldr	r3, [r3, #4]
d05a186e:	695b      	ldr	r3, [r3, #20]
d05a1870:	4798      	blx	r3
d05a1872:	2000      	movs	r0, #0
d05a1874:	b009      	add	sp, #36	; 0x24
d05a1876:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d05a187a:	4630      	mov	r0, r6
d05a187c:	f7fe fcc8 	bl	d05a0210 <set_paused_state>
d05a1880:	e7db      	b.n	d05a183a <main+0x5e6>
d05a1882:	bf00      	nop
d05a1884:	d05a2a38 	.word	0xd05a2a38
d05a1888:	d05a2a40 	.word	0xd05a2a40
d05a188c:	d05a048d 	.word	0xd05a048d
d05a1890:	d05a1135 	.word	0xd05a1135
d05a1894:	d05a0431 	.word	0xd05a0431
d05a1898:	d05a04e1 	.word	0xd05a04e1
d05a189c:	d05a29b4 	.word	0xd05a29b4
d05a18a0:	d05a29b8 	.word	0xd05a29b8
d05a18a4:	d05a1081 	.word	0xd05a1081
d05a18a8:	d05a28e0 	.word	0xd05a28e0
d05a18ac:	d05a290c 	.word	0xd05a290c
d05a18b0:	d05a2a2c 	.word	0xd05a2a2c

d05a18b4 <__errno>:
d05a18b4:	4b01      	ldr	r3, [pc, #4]	; (d05a18bc <__errno+0x8>)
d05a18b6:	6818      	ldr	r0, [r3, #0]
d05a18b8:	4770      	bx	lr
d05a18ba:	bf00      	nop
d05a18bc:	d05a29bc 	.word	0xd05a29bc

d05a18c0 <memset>:
d05a18c0:	4402      	add	r2, r0
d05a18c2:	4603      	mov	r3, r0
d05a18c4:	4293      	cmp	r3, r2
d05a18c6:	d100      	bne.n	d05a18ca <memset+0xa>
d05a18c8:	4770      	bx	lr
d05a18ca:	f803 1b01 	strb.w	r1, [r3], #1
d05a18ce:	e7f9      	b.n	d05a18c4 <memset+0x4>

d05a18d0 <setbuf>:
d05a18d0:	2900      	cmp	r1, #0
d05a18d2:	f44f 6380 	mov.w	r3, #1024	; 0x400
d05a18d6:	bf0c      	ite	eq
d05a18d8:	2202      	moveq	r2, #2
d05a18da:	2200      	movne	r2, #0
d05a18dc:	f000 b800 	b.w	d05a18e0 <setvbuf>

d05a18e0 <setvbuf>:
d05a18e0:	e92d 43f7 	stmdb	sp!, {r0, r1, r2, r4, r5, r6, r7, r8, r9, lr}
d05a18e4:	461d      	mov	r5, r3
d05a18e6:	4b5d      	ldr	r3, [pc, #372]	; (d05a1a5c <setvbuf+0x17c>)
d05a18e8:	681f      	ldr	r7, [r3, #0]
d05a18ea:	4604      	mov	r4, r0
d05a18ec:	460e      	mov	r6, r1
d05a18ee:	4690      	mov	r8, r2
d05a18f0:	b127      	cbz	r7, d05a18fc <setvbuf+0x1c>
d05a18f2:	69bb      	ldr	r3, [r7, #24]
d05a18f4:	b913      	cbnz	r3, d05a18fc <setvbuf+0x1c>
d05a18f6:	4638      	mov	r0, r7
d05a18f8:	f000 fa06 	bl	d05a1d08 <__sinit>
d05a18fc:	4b58      	ldr	r3, [pc, #352]	; (d05a1a60 <setvbuf+0x180>)
d05a18fe:	429c      	cmp	r4, r3
d05a1900:	d167      	bne.n	d05a19d2 <setvbuf+0xf2>
d05a1902:	687c      	ldr	r4, [r7, #4]
d05a1904:	f1b8 0f02 	cmp.w	r8, #2
d05a1908:	d006      	beq.n	d05a1918 <setvbuf+0x38>
d05a190a:	f1b8 0f01 	cmp.w	r8, #1
d05a190e:	f200 809f 	bhi.w	d05a1a50 <setvbuf+0x170>
d05a1912:	2d00      	cmp	r5, #0
d05a1914:	f2c0 809c 	blt.w	d05a1a50 <setvbuf+0x170>
d05a1918:	6e63      	ldr	r3, [r4, #100]	; 0x64
d05a191a:	07db      	lsls	r3, r3, #31
d05a191c:	d405      	bmi.n	d05a192a <setvbuf+0x4a>
d05a191e:	89a3      	ldrh	r3, [r4, #12]
d05a1920:	0598      	lsls	r0, r3, #22
d05a1922:	d402      	bmi.n	d05a192a <setvbuf+0x4a>
d05a1924:	6da0      	ldr	r0, [r4, #88]	; 0x58
d05a1926:	f000 fa8d 	bl	d05a1e44 <__retarget_lock_acquire_recursive>
d05a192a:	4621      	mov	r1, r4
d05a192c:	4638      	mov	r0, r7
d05a192e:	f000 f957 	bl	d05a1be0 <_fflush_r>
d05a1932:	6b61      	ldr	r1, [r4, #52]	; 0x34
d05a1934:	b141      	cbz	r1, d05a1948 <setvbuf+0x68>
d05a1936:	f104 0344 	add.w	r3, r4, #68	; 0x44
d05a193a:	4299      	cmp	r1, r3
d05a193c:	d002      	beq.n	d05a1944 <setvbuf+0x64>
d05a193e:	4638      	mov	r0, r7
d05a1940:	f000 faae 	bl	d05a1ea0 <_free_r>
d05a1944:	2300      	movs	r3, #0
d05a1946:	6363      	str	r3, [r4, #52]	; 0x34
d05a1948:	2300      	movs	r3, #0
d05a194a:	61a3      	str	r3, [r4, #24]
d05a194c:	6063      	str	r3, [r4, #4]
d05a194e:	89a3      	ldrh	r3, [r4, #12]
d05a1950:	0619      	lsls	r1, r3, #24
d05a1952:	d503      	bpl.n	d05a195c <setvbuf+0x7c>
d05a1954:	6921      	ldr	r1, [r4, #16]
d05a1956:	4638      	mov	r0, r7
d05a1958:	f000 faa2 	bl	d05a1ea0 <_free_r>
d05a195c:	89a3      	ldrh	r3, [r4, #12]
d05a195e:	f423 634a 	bic.w	r3, r3, #3232	; 0xca0
d05a1962:	f023 0303 	bic.w	r3, r3, #3
d05a1966:	f1b8 0f02 	cmp.w	r8, #2
d05a196a:	81a3      	strh	r3, [r4, #12]
d05a196c:	d06c      	beq.n	d05a1a48 <setvbuf+0x168>
d05a196e:	ab01      	add	r3, sp, #4
d05a1970:	466a      	mov	r2, sp
d05a1972:	4621      	mov	r1, r4
d05a1974:	4638      	mov	r0, r7
d05a1976:	f000 fa67 	bl	d05a1e48 <__swhatbuf_r>
d05a197a:	89a3      	ldrh	r3, [r4, #12]
d05a197c:	4318      	orrs	r0, r3
d05a197e:	81a0      	strh	r0, [r4, #12]
d05a1980:	2d00      	cmp	r5, #0
d05a1982:	d130      	bne.n	d05a19e6 <setvbuf+0x106>
d05a1984:	9d00      	ldr	r5, [sp, #0]
d05a1986:	4628      	mov	r0, r5
d05a1988:	f000 fa82 	bl	d05a1e90 <malloc>
d05a198c:	4606      	mov	r6, r0
d05a198e:	2800      	cmp	r0, #0
d05a1990:	d155      	bne.n	d05a1a3e <setvbuf+0x15e>
d05a1992:	f8dd 9000 	ldr.w	r9, [sp]
d05a1996:	45a9      	cmp	r9, r5
d05a1998:	d14a      	bne.n	d05a1a30 <setvbuf+0x150>
d05a199a:	f04f 35ff 	mov.w	r5, #4294967295	; 0xffffffff
d05a199e:	2200      	movs	r2, #0
d05a19a0:	60a2      	str	r2, [r4, #8]
d05a19a2:	f104 0247 	add.w	r2, r4, #71	; 0x47
d05a19a6:	6022      	str	r2, [r4, #0]
d05a19a8:	6122      	str	r2, [r4, #16]
d05a19aa:	2201      	movs	r2, #1
d05a19ac:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
d05a19b0:	6162      	str	r2, [r4, #20]
d05a19b2:	6e62      	ldr	r2, [r4, #100]	; 0x64
d05a19b4:	f043 0302 	orr.w	r3, r3, #2
d05a19b8:	07d2      	lsls	r2, r2, #31
d05a19ba:	81a3      	strh	r3, [r4, #12]
d05a19bc:	d405      	bmi.n	d05a19ca <setvbuf+0xea>
d05a19be:	f413 7f00 	tst.w	r3, #512	; 0x200
d05a19c2:	d102      	bne.n	d05a19ca <setvbuf+0xea>
d05a19c4:	6da0      	ldr	r0, [r4, #88]	; 0x58
d05a19c6:	f000 fa3e 	bl	d05a1e46 <__retarget_lock_release_recursive>
d05a19ca:	4628      	mov	r0, r5
d05a19cc:	b003      	add	sp, #12
d05a19ce:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
d05a19d2:	4b24      	ldr	r3, [pc, #144]	; (d05a1a64 <setvbuf+0x184>)
d05a19d4:	429c      	cmp	r4, r3
d05a19d6:	d101      	bne.n	d05a19dc <setvbuf+0xfc>
d05a19d8:	68bc      	ldr	r4, [r7, #8]
d05a19da:	e793      	b.n	d05a1904 <setvbuf+0x24>
d05a19dc:	4b22      	ldr	r3, [pc, #136]	; (d05a1a68 <setvbuf+0x188>)
d05a19de:	429c      	cmp	r4, r3
d05a19e0:	bf08      	it	eq
d05a19e2:	68fc      	ldreq	r4, [r7, #12]
d05a19e4:	e78e      	b.n	d05a1904 <setvbuf+0x24>
d05a19e6:	2e00      	cmp	r6, #0
d05a19e8:	d0cd      	beq.n	d05a1986 <setvbuf+0xa6>
d05a19ea:	69bb      	ldr	r3, [r7, #24]
d05a19ec:	b913      	cbnz	r3, d05a19f4 <setvbuf+0x114>
d05a19ee:	4638      	mov	r0, r7
d05a19f0:	f000 f98a 	bl	d05a1d08 <__sinit>
d05a19f4:	f1b8 0f01 	cmp.w	r8, #1
d05a19f8:	bf08      	it	eq
d05a19fa:	89a3      	ldrheq	r3, [r4, #12]
d05a19fc:	6026      	str	r6, [r4, #0]
d05a19fe:	bf04      	itt	eq
d05a1a00:	f043 0301 	orreq.w	r3, r3, #1
d05a1a04:	81a3      	strheq	r3, [r4, #12]
d05a1a06:	89a2      	ldrh	r2, [r4, #12]
d05a1a08:	f012 0308 	ands.w	r3, r2, #8
d05a1a0c:	e9c4 6504 	strd	r6, r5, [r4, #16]
d05a1a10:	d01c      	beq.n	d05a1a4c <setvbuf+0x16c>
d05a1a12:	07d3      	lsls	r3, r2, #31
d05a1a14:	bf41      	itttt	mi
d05a1a16:	2300      	movmi	r3, #0
d05a1a18:	426d      	negmi	r5, r5
d05a1a1a:	60a3      	strmi	r3, [r4, #8]
d05a1a1c:	61a5      	strmi	r5, [r4, #24]
d05a1a1e:	bf58      	it	pl
d05a1a20:	60a5      	strpl	r5, [r4, #8]
d05a1a22:	6e65      	ldr	r5, [r4, #100]	; 0x64
d05a1a24:	f015 0501 	ands.w	r5, r5, #1
d05a1a28:	d115      	bne.n	d05a1a56 <setvbuf+0x176>
d05a1a2a:	f412 7f00 	tst.w	r2, #512	; 0x200
d05a1a2e:	e7c8      	b.n	d05a19c2 <setvbuf+0xe2>
d05a1a30:	4648      	mov	r0, r9
d05a1a32:	f000 fa2d 	bl	d05a1e90 <malloc>
d05a1a36:	4606      	mov	r6, r0
d05a1a38:	2800      	cmp	r0, #0
d05a1a3a:	d0ae      	beq.n	d05a199a <setvbuf+0xba>
d05a1a3c:	464d      	mov	r5, r9
d05a1a3e:	89a3      	ldrh	r3, [r4, #12]
d05a1a40:	f043 0380 	orr.w	r3, r3, #128	; 0x80
d05a1a44:	81a3      	strh	r3, [r4, #12]
d05a1a46:	e7d0      	b.n	d05a19ea <setvbuf+0x10a>
d05a1a48:	2500      	movs	r5, #0
d05a1a4a:	e7a8      	b.n	d05a199e <setvbuf+0xbe>
d05a1a4c:	60a3      	str	r3, [r4, #8]
d05a1a4e:	e7e8      	b.n	d05a1a22 <setvbuf+0x142>
d05a1a50:	f04f 35ff 	mov.w	r5, #4294967295	; 0xffffffff
d05a1a54:	e7b9      	b.n	d05a19ca <setvbuf+0xea>
d05a1a56:	2500      	movs	r5, #0
d05a1a58:	e7b7      	b.n	d05a19ca <setvbuf+0xea>
d05a1a5a:	bf00      	nop
d05a1a5c:	d05a29bc 	.word	0xd05a29bc
d05a1a60:	d05a2938 	.word	0xd05a2938
d05a1a64:	d05a2958 	.word	0xd05a2958
d05a1a68:	d05a2918 	.word	0xd05a2918

d05a1a6c <sniprintf>:
d05a1a6c:	b40c      	push	{r2, r3}
d05a1a6e:	b530      	push	{r4, r5, lr}
d05a1a70:	4b17      	ldr	r3, [pc, #92]	; (d05a1ad0 <sniprintf+0x64>)
d05a1a72:	1e0c      	subs	r4, r1, #0
d05a1a74:	681d      	ldr	r5, [r3, #0]
d05a1a76:	b09d      	sub	sp, #116	; 0x74
d05a1a78:	da08      	bge.n	d05a1a8c <sniprintf+0x20>
d05a1a7a:	238b      	movs	r3, #139	; 0x8b
d05a1a7c:	602b      	str	r3, [r5, #0]
d05a1a7e:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d05a1a82:	b01d      	add	sp, #116	; 0x74
d05a1a84:	e8bd 4030 	ldmia.w	sp!, {r4, r5, lr}
d05a1a88:	b002      	add	sp, #8
d05a1a8a:	4770      	bx	lr
d05a1a8c:	f44f 7302 	mov.w	r3, #520	; 0x208
d05a1a90:	f8ad 3014 	strh.w	r3, [sp, #20]
d05a1a94:	bf14      	ite	ne
d05a1a96:	f104 33ff 	addne.w	r3, r4, #4294967295	; 0xffffffff
d05a1a9a:	4623      	moveq	r3, r4
d05a1a9c:	9304      	str	r3, [sp, #16]
d05a1a9e:	9307      	str	r3, [sp, #28]
d05a1aa0:	f64f 73ff 	movw	r3, #65535	; 0xffff
d05a1aa4:	9002      	str	r0, [sp, #8]
d05a1aa6:	9006      	str	r0, [sp, #24]
d05a1aa8:	f8ad 3016 	strh.w	r3, [sp, #22]
d05a1aac:	9a20      	ldr	r2, [sp, #128]	; 0x80
d05a1aae:	ab21      	add	r3, sp, #132	; 0x84
d05a1ab0:	a902      	add	r1, sp, #8
d05a1ab2:	4628      	mov	r0, r5
d05a1ab4:	9301      	str	r3, [sp, #4]
d05a1ab6:	f000 faf9 	bl	d05a20ac <_svfiprintf_r>
d05a1aba:	1c43      	adds	r3, r0, #1
d05a1abc:	bfbc      	itt	lt
d05a1abe:	238b      	movlt	r3, #139	; 0x8b
d05a1ac0:	602b      	strlt	r3, [r5, #0]
d05a1ac2:	2c00      	cmp	r4, #0
d05a1ac4:	d0dd      	beq.n	d05a1a82 <sniprintf+0x16>
d05a1ac6:	9b02      	ldr	r3, [sp, #8]
d05a1ac8:	2200      	movs	r2, #0
d05a1aca:	701a      	strb	r2, [r3, #0]
d05a1acc:	e7d9      	b.n	d05a1a82 <sniprintf+0x16>
d05a1ace:	bf00      	nop
d05a1ad0:	d05a29bc 	.word	0xd05a29bc

d05a1ad4 <__sflush_r>:
d05a1ad4:	898a      	ldrh	r2, [r1, #12]
d05a1ad6:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
d05a1ada:	4605      	mov	r5, r0
d05a1adc:	0710      	lsls	r0, r2, #28
d05a1ade:	460c      	mov	r4, r1
d05a1ae0:	d458      	bmi.n	d05a1b94 <__sflush_r+0xc0>
d05a1ae2:	684b      	ldr	r3, [r1, #4]
d05a1ae4:	2b00      	cmp	r3, #0
d05a1ae6:	dc05      	bgt.n	d05a1af4 <__sflush_r+0x20>
d05a1ae8:	6c0b      	ldr	r3, [r1, #64]	; 0x40
d05a1aea:	2b00      	cmp	r3, #0
d05a1aec:	dc02      	bgt.n	d05a1af4 <__sflush_r+0x20>
d05a1aee:	2000      	movs	r0, #0
d05a1af0:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
d05a1af4:	6ae6      	ldr	r6, [r4, #44]	; 0x2c
d05a1af6:	2e00      	cmp	r6, #0
d05a1af8:	d0f9      	beq.n	d05a1aee <__sflush_r+0x1a>
d05a1afa:	2300      	movs	r3, #0
d05a1afc:	f412 5280 	ands.w	r2, r2, #4096	; 0x1000
d05a1b00:	682f      	ldr	r7, [r5, #0]
d05a1b02:	602b      	str	r3, [r5, #0]
d05a1b04:	d032      	beq.n	d05a1b6c <__sflush_r+0x98>
d05a1b06:	6d60      	ldr	r0, [r4, #84]	; 0x54
d05a1b08:	89a3      	ldrh	r3, [r4, #12]
d05a1b0a:	075a      	lsls	r2, r3, #29
d05a1b0c:	d505      	bpl.n	d05a1b1a <__sflush_r+0x46>
d05a1b0e:	6863      	ldr	r3, [r4, #4]
d05a1b10:	1ac0      	subs	r0, r0, r3
d05a1b12:	6b63      	ldr	r3, [r4, #52]	; 0x34
d05a1b14:	b10b      	cbz	r3, d05a1b1a <__sflush_r+0x46>
d05a1b16:	6c23      	ldr	r3, [r4, #64]	; 0x40
d05a1b18:	1ac0      	subs	r0, r0, r3
d05a1b1a:	2300      	movs	r3, #0
d05a1b1c:	4602      	mov	r2, r0
d05a1b1e:	6ae6      	ldr	r6, [r4, #44]	; 0x2c
d05a1b20:	6a21      	ldr	r1, [r4, #32]
d05a1b22:	4628      	mov	r0, r5
d05a1b24:	47b0      	blx	r6
d05a1b26:	1c43      	adds	r3, r0, #1
d05a1b28:	89a3      	ldrh	r3, [r4, #12]
d05a1b2a:	d106      	bne.n	d05a1b3a <__sflush_r+0x66>
d05a1b2c:	6829      	ldr	r1, [r5, #0]
d05a1b2e:	291d      	cmp	r1, #29
d05a1b30:	d82c      	bhi.n	d05a1b8c <__sflush_r+0xb8>
d05a1b32:	4a2a      	ldr	r2, [pc, #168]	; (d05a1bdc <__sflush_r+0x108>)
d05a1b34:	40ca      	lsrs	r2, r1
d05a1b36:	07d6      	lsls	r6, r2, #31
d05a1b38:	d528      	bpl.n	d05a1b8c <__sflush_r+0xb8>
d05a1b3a:	2200      	movs	r2, #0
d05a1b3c:	6062      	str	r2, [r4, #4]
d05a1b3e:	04d9      	lsls	r1, r3, #19
d05a1b40:	6922      	ldr	r2, [r4, #16]
d05a1b42:	6022      	str	r2, [r4, #0]
d05a1b44:	d504      	bpl.n	d05a1b50 <__sflush_r+0x7c>
d05a1b46:	1c42      	adds	r2, r0, #1
d05a1b48:	d101      	bne.n	d05a1b4e <__sflush_r+0x7a>
d05a1b4a:	682b      	ldr	r3, [r5, #0]
d05a1b4c:	b903      	cbnz	r3, d05a1b50 <__sflush_r+0x7c>
d05a1b4e:	6560      	str	r0, [r4, #84]	; 0x54
d05a1b50:	6b61      	ldr	r1, [r4, #52]	; 0x34
d05a1b52:	602f      	str	r7, [r5, #0]
d05a1b54:	2900      	cmp	r1, #0
d05a1b56:	d0ca      	beq.n	d05a1aee <__sflush_r+0x1a>
d05a1b58:	f104 0344 	add.w	r3, r4, #68	; 0x44
d05a1b5c:	4299      	cmp	r1, r3
d05a1b5e:	d002      	beq.n	d05a1b66 <__sflush_r+0x92>
d05a1b60:	4628      	mov	r0, r5
d05a1b62:	f000 f99d 	bl	d05a1ea0 <_free_r>
d05a1b66:	2000      	movs	r0, #0
d05a1b68:	6360      	str	r0, [r4, #52]	; 0x34
d05a1b6a:	e7c1      	b.n	d05a1af0 <__sflush_r+0x1c>
d05a1b6c:	6a21      	ldr	r1, [r4, #32]
d05a1b6e:	2301      	movs	r3, #1
d05a1b70:	4628      	mov	r0, r5
d05a1b72:	47b0      	blx	r6
d05a1b74:	1c41      	adds	r1, r0, #1
d05a1b76:	d1c7      	bne.n	d05a1b08 <__sflush_r+0x34>
d05a1b78:	682b      	ldr	r3, [r5, #0]
d05a1b7a:	2b00      	cmp	r3, #0
d05a1b7c:	d0c4      	beq.n	d05a1b08 <__sflush_r+0x34>
d05a1b7e:	2b1d      	cmp	r3, #29
d05a1b80:	d001      	beq.n	d05a1b86 <__sflush_r+0xb2>
d05a1b82:	2b16      	cmp	r3, #22
d05a1b84:	d101      	bne.n	d05a1b8a <__sflush_r+0xb6>
d05a1b86:	602f      	str	r7, [r5, #0]
d05a1b88:	e7b1      	b.n	d05a1aee <__sflush_r+0x1a>
d05a1b8a:	89a3      	ldrh	r3, [r4, #12]
d05a1b8c:	f043 0340 	orr.w	r3, r3, #64	; 0x40
d05a1b90:	81a3      	strh	r3, [r4, #12]
d05a1b92:	e7ad      	b.n	d05a1af0 <__sflush_r+0x1c>
d05a1b94:	690f      	ldr	r7, [r1, #16]
d05a1b96:	2f00      	cmp	r7, #0
d05a1b98:	d0a9      	beq.n	d05a1aee <__sflush_r+0x1a>
d05a1b9a:	0793      	lsls	r3, r2, #30
d05a1b9c:	680e      	ldr	r6, [r1, #0]
d05a1b9e:	bf08      	it	eq
d05a1ba0:	694b      	ldreq	r3, [r1, #20]
d05a1ba2:	600f      	str	r7, [r1, #0]
d05a1ba4:	bf18      	it	ne
d05a1ba6:	2300      	movne	r3, #0
d05a1ba8:	eba6 0807 	sub.w	r8, r6, r7
d05a1bac:	608b      	str	r3, [r1, #8]
d05a1bae:	f1b8 0f00 	cmp.w	r8, #0
d05a1bb2:	dd9c      	ble.n	d05a1aee <__sflush_r+0x1a>
d05a1bb4:	6a21      	ldr	r1, [r4, #32]
d05a1bb6:	6aa6      	ldr	r6, [r4, #40]	; 0x28
d05a1bb8:	4643      	mov	r3, r8
d05a1bba:	463a      	mov	r2, r7
d05a1bbc:	4628      	mov	r0, r5
d05a1bbe:	47b0      	blx	r6
d05a1bc0:	2800      	cmp	r0, #0
d05a1bc2:	dc06      	bgt.n	d05a1bd2 <__sflush_r+0xfe>
d05a1bc4:	89a3      	ldrh	r3, [r4, #12]
d05a1bc6:	f043 0340 	orr.w	r3, r3, #64	; 0x40
d05a1bca:	81a3      	strh	r3, [r4, #12]
d05a1bcc:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d05a1bd0:	e78e      	b.n	d05a1af0 <__sflush_r+0x1c>
d05a1bd2:	4407      	add	r7, r0
d05a1bd4:	eba8 0800 	sub.w	r8, r8, r0
d05a1bd8:	e7e9      	b.n	d05a1bae <__sflush_r+0xda>
d05a1bda:	bf00      	nop
d05a1bdc:	20400001 	.word	0x20400001

d05a1be0 <_fflush_r>:
d05a1be0:	b538      	push	{r3, r4, r5, lr}
d05a1be2:	690b      	ldr	r3, [r1, #16]
d05a1be4:	4605      	mov	r5, r0
d05a1be6:	460c      	mov	r4, r1
d05a1be8:	b913      	cbnz	r3, d05a1bf0 <_fflush_r+0x10>
d05a1bea:	2500      	movs	r5, #0
d05a1bec:	4628      	mov	r0, r5
d05a1bee:	bd38      	pop	{r3, r4, r5, pc}
d05a1bf0:	b118      	cbz	r0, d05a1bfa <_fflush_r+0x1a>
d05a1bf2:	6983      	ldr	r3, [r0, #24]
d05a1bf4:	b90b      	cbnz	r3, d05a1bfa <_fflush_r+0x1a>
d05a1bf6:	f000 f887 	bl	d05a1d08 <__sinit>
d05a1bfa:	4b14      	ldr	r3, [pc, #80]	; (d05a1c4c <_fflush_r+0x6c>)
d05a1bfc:	429c      	cmp	r4, r3
d05a1bfe:	d11b      	bne.n	d05a1c38 <_fflush_r+0x58>
d05a1c00:	686c      	ldr	r4, [r5, #4]
d05a1c02:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
d05a1c06:	2b00      	cmp	r3, #0
d05a1c08:	d0ef      	beq.n	d05a1bea <_fflush_r+0xa>
d05a1c0a:	6e62      	ldr	r2, [r4, #100]	; 0x64
d05a1c0c:	07d0      	lsls	r0, r2, #31
d05a1c0e:	d404      	bmi.n	d05a1c1a <_fflush_r+0x3a>
d05a1c10:	0599      	lsls	r1, r3, #22
d05a1c12:	d402      	bmi.n	d05a1c1a <_fflush_r+0x3a>
d05a1c14:	6da0      	ldr	r0, [r4, #88]	; 0x58
d05a1c16:	f000 f915 	bl	d05a1e44 <__retarget_lock_acquire_recursive>
d05a1c1a:	4628      	mov	r0, r5
d05a1c1c:	4621      	mov	r1, r4
d05a1c1e:	f7ff ff59 	bl	d05a1ad4 <__sflush_r>
d05a1c22:	6e63      	ldr	r3, [r4, #100]	; 0x64
d05a1c24:	07da      	lsls	r2, r3, #31
d05a1c26:	4605      	mov	r5, r0
d05a1c28:	d4e0      	bmi.n	d05a1bec <_fflush_r+0xc>
d05a1c2a:	89a3      	ldrh	r3, [r4, #12]
d05a1c2c:	059b      	lsls	r3, r3, #22
d05a1c2e:	d4dd      	bmi.n	d05a1bec <_fflush_r+0xc>
d05a1c30:	6da0      	ldr	r0, [r4, #88]	; 0x58
d05a1c32:	f000 f908 	bl	d05a1e46 <__retarget_lock_release_recursive>
d05a1c36:	e7d9      	b.n	d05a1bec <_fflush_r+0xc>
d05a1c38:	4b05      	ldr	r3, [pc, #20]	; (d05a1c50 <_fflush_r+0x70>)
d05a1c3a:	429c      	cmp	r4, r3
d05a1c3c:	d101      	bne.n	d05a1c42 <_fflush_r+0x62>
d05a1c3e:	68ac      	ldr	r4, [r5, #8]
d05a1c40:	e7df      	b.n	d05a1c02 <_fflush_r+0x22>
d05a1c42:	4b04      	ldr	r3, [pc, #16]	; (d05a1c54 <_fflush_r+0x74>)
d05a1c44:	429c      	cmp	r4, r3
d05a1c46:	bf08      	it	eq
d05a1c48:	68ec      	ldreq	r4, [r5, #12]
d05a1c4a:	e7da      	b.n	d05a1c02 <_fflush_r+0x22>
d05a1c4c:	d05a2938 	.word	0xd05a2938
d05a1c50:	d05a2958 	.word	0xd05a2958
d05a1c54:	d05a2918 	.word	0xd05a2918

d05a1c58 <std>:
d05a1c58:	2300      	movs	r3, #0
d05a1c5a:	b510      	push	{r4, lr}
d05a1c5c:	4604      	mov	r4, r0
d05a1c5e:	e9c0 3300 	strd	r3, r3, [r0]
d05a1c62:	e9c0 3304 	strd	r3, r3, [r0, #16]
d05a1c66:	6083      	str	r3, [r0, #8]
d05a1c68:	8181      	strh	r1, [r0, #12]
d05a1c6a:	6643      	str	r3, [r0, #100]	; 0x64
d05a1c6c:	81c2      	strh	r2, [r0, #14]
d05a1c6e:	6183      	str	r3, [r0, #24]
d05a1c70:	4619      	mov	r1, r3
d05a1c72:	2208      	movs	r2, #8
d05a1c74:	305c      	adds	r0, #92	; 0x5c
d05a1c76:	f7ff fe23 	bl	d05a18c0 <memset>
d05a1c7a:	4b05      	ldr	r3, [pc, #20]	; (d05a1c90 <std+0x38>)
d05a1c7c:	6263      	str	r3, [r4, #36]	; 0x24
d05a1c7e:	4b05      	ldr	r3, [pc, #20]	; (d05a1c94 <std+0x3c>)
d05a1c80:	62a3      	str	r3, [r4, #40]	; 0x28
d05a1c82:	4b05      	ldr	r3, [pc, #20]	; (d05a1c98 <std+0x40>)
d05a1c84:	62e3      	str	r3, [r4, #44]	; 0x2c
d05a1c86:	4b05      	ldr	r3, [pc, #20]	; (d05a1c9c <std+0x44>)
d05a1c88:	6224      	str	r4, [r4, #32]
d05a1c8a:	6323      	str	r3, [r4, #48]	; 0x30
d05a1c8c:	bd10      	pop	{r4, pc}
d05a1c8e:	bf00      	nop
d05a1c90:	d05a25d5 	.word	0xd05a25d5
d05a1c94:	d05a25f7 	.word	0xd05a25f7
d05a1c98:	d05a262f 	.word	0xd05a262f
d05a1c9c:	d05a2653 	.word	0xd05a2653

d05a1ca0 <_cleanup_r>:
d05a1ca0:	4901      	ldr	r1, [pc, #4]	; (d05a1ca8 <_cleanup_r+0x8>)
d05a1ca2:	f000 b8af 	b.w	d05a1e04 <_fwalk_reent>
d05a1ca6:	bf00      	nop
d05a1ca8:	d05a1be1 	.word	0xd05a1be1

d05a1cac <__sfmoreglue>:
d05a1cac:	b570      	push	{r4, r5, r6, lr}
d05a1cae:	1e4a      	subs	r2, r1, #1
d05a1cb0:	2568      	movs	r5, #104	; 0x68
d05a1cb2:	4355      	muls	r5, r2
d05a1cb4:	460e      	mov	r6, r1
d05a1cb6:	f105 0174 	add.w	r1, r5, #116	; 0x74
d05a1cba:	f000 f941 	bl	d05a1f40 <_malloc_r>
d05a1cbe:	4604      	mov	r4, r0
d05a1cc0:	b140      	cbz	r0, d05a1cd4 <__sfmoreglue+0x28>
d05a1cc2:	2100      	movs	r1, #0
d05a1cc4:	e9c0 1600 	strd	r1, r6, [r0]
d05a1cc8:	300c      	adds	r0, #12
d05a1cca:	60a0      	str	r0, [r4, #8]
d05a1ccc:	f105 0268 	add.w	r2, r5, #104	; 0x68
d05a1cd0:	f7ff fdf6 	bl	d05a18c0 <memset>
d05a1cd4:	4620      	mov	r0, r4
d05a1cd6:	bd70      	pop	{r4, r5, r6, pc}

d05a1cd8 <__sfp_lock_acquire>:
d05a1cd8:	4801      	ldr	r0, [pc, #4]	; (d05a1ce0 <__sfp_lock_acquire+0x8>)
d05a1cda:	f000 b8b3 	b.w	d05a1e44 <__retarget_lock_acquire_recursive>
d05a1cde:	bf00      	nop
d05a1ce0:	d05b5cd0 	.word	0xd05b5cd0

d05a1ce4 <__sfp_lock_release>:
d05a1ce4:	4801      	ldr	r0, [pc, #4]	; (d05a1cec <__sfp_lock_release+0x8>)
d05a1ce6:	f000 b8ae 	b.w	d05a1e46 <__retarget_lock_release_recursive>
d05a1cea:	bf00      	nop
d05a1cec:	d05b5cd0 	.word	0xd05b5cd0

d05a1cf0 <__sinit_lock_acquire>:
d05a1cf0:	4801      	ldr	r0, [pc, #4]	; (d05a1cf8 <__sinit_lock_acquire+0x8>)
d05a1cf2:	f000 b8a7 	b.w	d05a1e44 <__retarget_lock_acquire_recursive>
d05a1cf6:	bf00      	nop
d05a1cf8:	d05b5ccb 	.word	0xd05b5ccb

d05a1cfc <__sinit_lock_release>:
d05a1cfc:	4801      	ldr	r0, [pc, #4]	; (d05a1d04 <__sinit_lock_release+0x8>)
d05a1cfe:	f000 b8a2 	b.w	d05a1e46 <__retarget_lock_release_recursive>
d05a1d02:	bf00      	nop
d05a1d04:	d05b5ccb 	.word	0xd05b5ccb

d05a1d08 <__sinit>:
d05a1d08:	b510      	push	{r4, lr}
d05a1d0a:	4604      	mov	r4, r0
d05a1d0c:	f7ff fff0 	bl	d05a1cf0 <__sinit_lock_acquire>
d05a1d10:	69a3      	ldr	r3, [r4, #24]
d05a1d12:	b11b      	cbz	r3, d05a1d1c <__sinit+0x14>
d05a1d14:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
d05a1d18:	f7ff bff0 	b.w	d05a1cfc <__sinit_lock_release>
d05a1d1c:	e9c4 3312 	strd	r3, r3, [r4, #72]	; 0x48
d05a1d20:	6523      	str	r3, [r4, #80]	; 0x50
d05a1d22:	4b13      	ldr	r3, [pc, #76]	; (d05a1d70 <__sinit+0x68>)
d05a1d24:	4a13      	ldr	r2, [pc, #76]	; (d05a1d74 <__sinit+0x6c>)
d05a1d26:	681b      	ldr	r3, [r3, #0]
d05a1d28:	62a2      	str	r2, [r4, #40]	; 0x28
d05a1d2a:	42a3      	cmp	r3, r4
d05a1d2c:	bf04      	itt	eq
d05a1d2e:	2301      	moveq	r3, #1
d05a1d30:	61a3      	streq	r3, [r4, #24]
d05a1d32:	4620      	mov	r0, r4
d05a1d34:	f000 f820 	bl	d05a1d78 <__sfp>
d05a1d38:	6060      	str	r0, [r4, #4]
d05a1d3a:	4620      	mov	r0, r4
d05a1d3c:	f000 f81c 	bl	d05a1d78 <__sfp>
d05a1d40:	60a0      	str	r0, [r4, #8]
d05a1d42:	4620      	mov	r0, r4
d05a1d44:	f000 f818 	bl	d05a1d78 <__sfp>
d05a1d48:	2200      	movs	r2, #0
d05a1d4a:	60e0      	str	r0, [r4, #12]
d05a1d4c:	2104      	movs	r1, #4
d05a1d4e:	6860      	ldr	r0, [r4, #4]
d05a1d50:	f7ff ff82 	bl	d05a1c58 <std>
d05a1d54:	68a0      	ldr	r0, [r4, #8]
d05a1d56:	2201      	movs	r2, #1
d05a1d58:	2109      	movs	r1, #9
d05a1d5a:	f7ff ff7d 	bl	d05a1c58 <std>
d05a1d5e:	68e0      	ldr	r0, [r4, #12]
d05a1d60:	2202      	movs	r2, #2
d05a1d62:	2112      	movs	r1, #18
d05a1d64:	f7ff ff78 	bl	d05a1c58 <std>
d05a1d68:	2301      	movs	r3, #1
d05a1d6a:	61a3      	str	r3, [r4, #24]
d05a1d6c:	e7d2      	b.n	d05a1d14 <__sinit+0xc>
d05a1d6e:	bf00      	nop
d05a1d70:	d05a2914 	.word	0xd05a2914
d05a1d74:	d05a1ca1 	.word	0xd05a1ca1

d05a1d78 <__sfp>:
d05a1d78:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d05a1d7a:	4607      	mov	r7, r0
d05a1d7c:	f7ff ffac 	bl	d05a1cd8 <__sfp_lock_acquire>
d05a1d80:	4b1e      	ldr	r3, [pc, #120]	; (d05a1dfc <__sfp+0x84>)
d05a1d82:	681e      	ldr	r6, [r3, #0]
d05a1d84:	69b3      	ldr	r3, [r6, #24]
d05a1d86:	b913      	cbnz	r3, d05a1d8e <__sfp+0x16>
d05a1d88:	4630      	mov	r0, r6
d05a1d8a:	f7ff ffbd 	bl	d05a1d08 <__sinit>
d05a1d8e:	3648      	adds	r6, #72	; 0x48
d05a1d90:	e9d6 3401 	ldrd	r3, r4, [r6, #4]
d05a1d94:	3b01      	subs	r3, #1
d05a1d96:	d503      	bpl.n	d05a1da0 <__sfp+0x28>
d05a1d98:	6833      	ldr	r3, [r6, #0]
d05a1d9a:	b30b      	cbz	r3, d05a1de0 <__sfp+0x68>
d05a1d9c:	6836      	ldr	r6, [r6, #0]
d05a1d9e:	e7f7      	b.n	d05a1d90 <__sfp+0x18>
d05a1da0:	f9b4 500c 	ldrsh.w	r5, [r4, #12]
d05a1da4:	b9d5      	cbnz	r5, d05a1ddc <__sfp+0x64>
d05a1da6:	4b16      	ldr	r3, [pc, #88]	; (d05a1e00 <__sfp+0x88>)
d05a1da8:	60e3      	str	r3, [r4, #12]
d05a1daa:	f104 0058 	add.w	r0, r4, #88	; 0x58
d05a1dae:	6665      	str	r5, [r4, #100]	; 0x64
d05a1db0:	f000 f847 	bl	d05a1e42 <__retarget_lock_init_recursive>
d05a1db4:	f7ff ff96 	bl	d05a1ce4 <__sfp_lock_release>
d05a1db8:	e9c4 5501 	strd	r5, r5, [r4, #4]
d05a1dbc:	e9c4 5504 	strd	r5, r5, [r4, #16]
d05a1dc0:	6025      	str	r5, [r4, #0]
d05a1dc2:	61a5      	str	r5, [r4, #24]
d05a1dc4:	2208      	movs	r2, #8
d05a1dc6:	4629      	mov	r1, r5
d05a1dc8:	f104 005c 	add.w	r0, r4, #92	; 0x5c
d05a1dcc:	f7ff fd78 	bl	d05a18c0 <memset>
d05a1dd0:	e9c4 550d 	strd	r5, r5, [r4, #52]	; 0x34
d05a1dd4:	e9c4 5512 	strd	r5, r5, [r4, #72]	; 0x48
d05a1dd8:	4620      	mov	r0, r4
d05a1dda:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d05a1ddc:	3468      	adds	r4, #104	; 0x68
d05a1dde:	e7d9      	b.n	d05a1d94 <__sfp+0x1c>
d05a1de0:	2104      	movs	r1, #4
d05a1de2:	4638      	mov	r0, r7
d05a1de4:	f7ff ff62 	bl	d05a1cac <__sfmoreglue>
d05a1de8:	4604      	mov	r4, r0
d05a1dea:	6030      	str	r0, [r6, #0]
d05a1dec:	2800      	cmp	r0, #0
d05a1dee:	d1d5      	bne.n	d05a1d9c <__sfp+0x24>
d05a1df0:	f7ff ff78 	bl	d05a1ce4 <__sfp_lock_release>
d05a1df4:	230c      	movs	r3, #12
d05a1df6:	603b      	str	r3, [r7, #0]
d05a1df8:	e7ee      	b.n	d05a1dd8 <__sfp+0x60>
d05a1dfa:	bf00      	nop
d05a1dfc:	d05a2914 	.word	0xd05a2914
d05a1e00:	ffff0001 	.word	0xffff0001

d05a1e04 <_fwalk_reent>:
d05a1e04:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
d05a1e08:	4606      	mov	r6, r0
d05a1e0a:	4688      	mov	r8, r1
d05a1e0c:	f100 0448 	add.w	r4, r0, #72	; 0x48
d05a1e10:	2700      	movs	r7, #0
d05a1e12:	e9d4 9501 	ldrd	r9, r5, [r4, #4]
d05a1e16:	f1b9 0901 	subs.w	r9, r9, #1
d05a1e1a:	d505      	bpl.n	d05a1e28 <_fwalk_reent+0x24>
d05a1e1c:	6824      	ldr	r4, [r4, #0]
d05a1e1e:	2c00      	cmp	r4, #0
d05a1e20:	d1f7      	bne.n	d05a1e12 <_fwalk_reent+0xe>
d05a1e22:	4638      	mov	r0, r7
d05a1e24:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
d05a1e28:	89ab      	ldrh	r3, [r5, #12]
d05a1e2a:	2b01      	cmp	r3, #1
d05a1e2c:	d907      	bls.n	d05a1e3e <_fwalk_reent+0x3a>
d05a1e2e:	f9b5 300e 	ldrsh.w	r3, [r5, #14]
d05a1e32:	3301      	adds	r3, #1
d05a1e34:	d003      	beq.n	d05a1e3e <_fwalk_reent+0x3a>
d05a1e36:	4629      	mov	r1, r5
d05a1e38:	4630      	mov	r0, r6
d05a1e3a:	47c0      	blx	r8
d05a1e3c:	4307      	orrs	r7, r0
d05a1e3e:	3568      	adds	r5, #104	; 0x68
d05a1e40:	e7e9      	b.n	d05a1e16 <_fwalk_reent+0x12>

d05a1e42 <__retarget_lock_init_recursive>:
d05a1e42:	4770      	bx	lr

d05a1e44 <__retarget_lock_acquire_recursive>:
d05a1e44:	4770      	bx	lr

d05a1e46 <__retarget_lock_release_recursive>:
d05a1e46:	4770      	bx	lr

d05a1e48 <__swhatbuf_r>:
d05a1e48:	b570      	push	{r4, r5, r6, lr}
d05a1e4a:	460e      	mov	r6, r1
d05a1e4c:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d05a1e50:	2900      	cmp	r1, #0
d05a1e52:	b096      	sub	sp, #88	; 0x58
d05a1e54:	4614      	mov	r4, r2
d05a1e56:	461d      	mov	r5, r3
d05a1e58:	da07      	bge.n	d05a1e6a <__swhatbuf_r+0x22>
d05a1e5a:	2300      	movs	r3, #0
d05a1e5c:	602b      	str	r3, [r5, #0]
d05a1e5e:	89b3      	ldrh	r3, [r6, #12]
d05a1e60:	061a      	lsls	r2, r3, #24
d05a1e62:	d410      	bmi.n	d05a1e86 <__swhatbuf_r+0x3e>
d05a1e64:	f44f 6380 	mov.w	r3, #1024	; 0x400
d05a1e68:	e00e      	b.n	d05a1e88 <__swhatbuf_r+0x40>
d05a1e6a:	466a      	mov	r2, sp
d05a1e6c:	f000 fc06 	bl	d05a267c <_fstat_r>
d05a1e70:	2800      	cmp	r0, #0
d05a1e72:	dbf2      	blt.n	d05a1e5a <__swhatbuf_r+0x12>
d05a1e74:	9a01      	ldr	r2, [sp, #4]
d05a1e76:	f402 4270 	and.w	r2, r2, #61440	; 0xf000
d05a1e7a:	f5a2 5300 	sub.w	r3, r2, #8192	; 0x2000
d05a1e7e:	425a      	negs	r2, r3
d05a1e80:	415a      	adcs	r2, r3
d05a1e82:	602a      	str	r2, [r5, #0]
d05a1e84:	e7ee      	b.n	d05a1e64 <__swhatbuf_r+0x1c>
d05a1e86:	2340      	movs	r3, #64	; 0x40
d05a1e88:	2000      	movs	r0, #0
d05a1e8a:	6023      	str	r3, [r4, #0]
d05a1e8c:	b016      	add	sp, #88	; 0x58
d05a1e8e:	bd70      	pop	{r4, r5, r6, pc}

d05a1e90 <malloc>:
d05a1e90:	4b02      	ldr	r3, [pc, #8]	; (d05a1e9c <malloc+0xc>)
d05a1e92:	4601      	mov	r1, r0
d05a1e94:	6818      	ldr	r0, [r3, #0]
d05a1e96:	f000 b853 	b.w	d05a1f40 <_malloc_r>
d05a1e9a:	bf00      	nop
d05a1e9c:	d05a29bc 	.word	0xd05a29bc

d05a1ea0 <_free_r>:
d05a1ea0:	b537      	push	{r0, r1, r2, r4, r5, lr}
d05a1ea2:	2900      	cmp	r1, #0
d05a1ea4:	d048      	beq.n	d05a1f38 <_free_r+0x98>
d05a1ea6:	f851 3c04 	ldr.w	r3, [r1, #-4]
d05a1eaa:	9001      	str	r0, [sp, #4]
d05a1eac:	2b00      	cmp	r3, #0
d05a1eae:	f1a1 0404 	sub.w	r4, r1, #4
d05a1eb2:	bfb8      	it	lt
d05a1eb4:	18e4      	addlt	r4, r4, r3
d05a1eb6:	f000 fc83 	bl	d05a27c0 <__malloc_lock>
d05a1eba:	4a20      	ldr	r2, [pc, #128]	; (d05a1f3c <_free_r+0x9c>)
d05a1ebc:	9801      	ldr	r0, [sp, #4]
d05a1ebe:	6813      	ldr	r3, [r2, #0]
d05a1ec0:	4615      	mov	r5, r2
d05a1ec2:	b933      	cbnz	r3, d05a1ed2 <_free_r+0x32>
d05a1ec4:	6063      	str	r3, [r4, #4]
d05a1ec6:	6014      	str	r4, [r2, #0]
d05a1ec8:	b003      	add	sp, #12
d05a1eca:	e8bd 4030 	ldmia.w	sp!, {r4, r5, lr}
d05a1ece:	f000 bc7d 	b.w	d05a27cc <__malloc_unlock>
d05a1ed2:	42a3      	cmp	r3, r4
d05a1ed4:	d90b      	bls.n	d05a1eee <_free_r+0x4e>
d05a1ed6:	6821      	ldr	r1, [r4, #0]
d05a1ed8:	1862      	adds	r2, r4, r1
d05a1eda:	4293      	cmp	r3, r2
d05a1edc:	bf04      	itt	eq
d05a1ede:	681a      	ldreq	r2, [r3, #0]
d05a1ee0:	685b      	ldreq	r3, [r3, #4]
d05a1ee2:	6063      	str	r3, [r4, #4]
d05a1ee4:	bf04      	itt	eq
d05a1ee6:	1852      	addeq	r2, r2, r1
d05a1ee8:	6022      	streq	r2, [r4, #0]
d05a1eea:	602c      	str	r4, [r5, #0]
d05a1eec:	e7ec      	b.n	d05a1ec8 <_free_r+0x28>
d05a1eee:	461a      	mov	r2, r3
d05a1ef0:	685b      	ldr	r3, [r3, #4]
d05a1ef2:	b10b      	cbz	r3, d05a1ef8 <_free_r+0x58>
d05a1ef4:	42a3      	cmp	r3, r4
d05a1ef6:	d9fa      	bls.n	d05a1eee <_free_r+0x4e>
d05a1ef8:	6811      	ldr	r1, [r2, #0]
d05a1efa:	1855      	adds	r5, r2, r1
d05a1efc:	42a5      	cmp	r5, r4
d05a1efe:	d10b      	bne.n	d05a1f18 <_free_r+0x78>
d05a1f00:	6824      	ldr	r4, [r4, #0]
d05a1f02:	4421      	add	r1, r4
d05a1f04:	1854      	adds	r4, r2, r1
d05a1f06:	42a3      	cmp	r3, r4
d05a1f08:	6011      	str	r1, [r2, #0]
d05a1f0a:	d1dd      	bne.n	d05a1ec8 <_free_r+0x28>
d05a1f0c:	681c      	ldr	r4, [r3, #0]
d05a1f0e:	685b      	ldr	r3, [r3, #4]
d05a1f10:	6053      	str	r3, [r2, #4]
d05a1f12:	4421      	add	r1, r4
d05a1f14:	6011      	str	r1, [r2, #0]
d05a1f16:	e7d7      	b.n	d05a1ec8 <_free_r+0x28>
d05a1f18:	d902      	bls.n	d05a1f20 <_free_r+0x80>
d05a1f1a:	230c      	movs	r3, #12
d05a1f1c:	6003      	str	r3, [r0, #0]
d05a1f1e:	e7d3      	b.n	d05a1ec8 <_free_r+0x28>
d05a1f20:	6825      	ldr	r5, [r4, #0]
d05a1f22:	1961      	adds	r1, r4, r5
d05a1f24:	428b      	cmp	r3, r1
d05a1f26:	bf04      	itt	eq
d05a1f28:	6819      	ldreq	r1, [r3, #0]
d05a1f2a:	685b      	ldreq	r3, [r3, #4]
d05a1f2c:	6063      	str	r3, [r4, #4]
d05a1f2e:	bf04      	itt	eq
d05a1f30:	1949      	addeq	r1, r1, r5
d05a1f32:	6021      	streq	r1, [r4, #0]
d05a1f34:	6054      	str	r4, [r2, #4]
d05a1f36:	e7c7      	b.n	d05a1ec8 <_free_r+0x28>
d05a1f38:	b003      	add	sp, #12
d05a1f3a:	bd30      	pop	{r4, r5, pc}
d05a1f3c:	d05b5cc0 	.word	0xd05b5cc0

d05a1f40 <_malloc_r>:
d05a1f40:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d05a1f42:	1ccd      	adds	r5, r1, #3
d05a1f44:	f025 0503 	bic.w	r5, r5, #3
d05a1f48:	3508      	adds	r5, #8
d05a1f4a:	2d0c      	cmp	r5, #12
d05a1f4c:	bf38      	it	cc
d05a1f4e:	250c      	movcc	r5, #12
d05a1f50:	2d00      	cmp	r5, #0
d05a1f52:	4606      	mov	r6, r0
d05a1f54:	db01      	blt.n	d05a1f5a <_malloc_r+0x1a>
d05a1f56:	42a9      	cmp	r1, r5
d05a1f58:	d903      	bls.n	d05a1f62 <_malloc_r+0x22>
d05a1f5a:	230c      	movs	r3, #12
d05a1f5c:	6033      	str	r3, [r6, #0]
d05a1f5e:	2000      	movs	r0, #0
d05a1f60:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d05a1f62:	f000 fc2d 	bl	d05a27c0 <__malloc_lock>
d05a1f66:	4921      	ldr	r1, [pc, #132]	; (d05a1fec <_malloc_r+0xac>)
d05a1f68:	680a      	ldr	r2, [r1, #0]
d05a1f6a:	4614      	mov	r4, r2
d05a1f6c:	b99c      	cbnz	r4, d05a1f96 <_malloc_r+0x56>
d05a1f6e:	4f20      	ldr	r7, [pc, #128]	; (d05a1ff0 <_malloc_r+0xb0>)
d05a1f70:	683b      	ldr	r3, [r7, #0]
d05a1f72:	b923      	cbnz	r3, d05a1f7e <_malloc_r+0x3e>
d05a1f74:	4621      	mov	r1, r4
d05a1f76:	4630      	mov	r0, r6
d05a1f78:	f7fe f8a6 	bl	d05a00c8 <_sbrk_r>
d05a1f7c:	6038      	str	r0, [r7, #0]
d05a1f7e:	4629      	mov	r1, r5
d05a1f80:	4630      	mov	r0, r6
d05a1f82:	f7fe f8a1 	bl	d05a00c8 <_sbrk_r>
d05a1f86:	1c43      	adds	r3, r0, #1
d05a1f88:	d123      	bne.n	d05a1fd2 <_malloc_r+0x92>
d05a1f8a:	230c      	movs	r3, #12
d05a1f8c:	6033      	str	r3, [r6, #0]
d05a1f8e:	4630      	mov	r0, r6
d05a1f90:	f000 fc1c 	bl	d05a27cc <__malloc_unlock>
d05a1f94:	e7e3      	b.n	d05a1f5e <_malloc_r+0x1e>
d05a1f96:	6823      	ldr	r3, [r4, #0]
d05a1f98:	1b5b      	subs	r3, r3, r5
d05a1f9a:	d417      	bmi.n	d05a1fcc <_malloc_r+0x8c>
d05a1f9c:	2b0b      	cmp	r3, #11
d05a1f9e:	d903      	bls.n	d05a1fa8 <_malloc_r+0x68>
d05a1fa0:	6023      	str	r3, [r4, #0]
d05a1fa2:	441c      	add	r4, r3
d05a1fa4:	6025      	str	r5, [r4, #0]
d05a1fa6:	e004      	b.n	d05a1fb2 <_malloc_r+0x72>
d05a1fa8:	6863      	ldr	r3, [r4, #4]
d05a1faa:	42a2      	cmp	r2, r4
d05a1fac:	bf0c      	ite	eq
d05a1fae:	600b      	streq	r3, [r1, #0]
d05a1fb0:	6053      	strne	r3, [r2, #4]
d05a1fb2:	4630      	mov	r0, r6
d05a1fb4:	f000 fc0a 	bl	d05a27cc <__malloc_unlock>
d05a1fb8:	f104 000b 	add.w	r0, r4, #11
d05a1fbc:	1d23      	adds	r3, r4, #4
d05a1fbe:	f020 0007 	bic.w	r0, r0, #7
d05a1fc2:	1ac2      	subs	r2, r0, r3
d05a1fc4:	d0cc      	beq.n	d05a1f60 <_malloc_r+0x20>
d05a1fc6:	1a1b      	subs	r3, r3, r0
d05a1fc8:	50a3      	str	r3, [r4, r2]
d05a1fca:	e7c9      	b.n	d05a1f60 <_malloc_r+0x20>
d05a1fcc:	4622      	mov	r2, r4
d05a1fce:	6864      	ldr	r4, [r4, #4]
d05a1fd0:	e7cc      	b.n	d05a1f6c <_malloc_r+0x2c>
d05a1fd2:	1cc4      	adds	r4, r0, #3
d05a1fd4:	f024 0403 	bic.w	r4, r4, #3
d05a1fd8:	42a0      	cmp	r0, r4
d05a1fda:	d0e3      	beq.n	d05a1fa4 <_malloc_r+0x64>
d05a1fdc:	1a21      	subs	r1, r4, r0
d05a1fde:	4630      	mov	r0, r6
d05a1fe0:	f7fe f872 	bl	d05a00c8 <_sbrk_r>
d05a1fe4:	3001      	adds	r0, #1
d05a1fe6:	d1dd      	bne.n	d05a1fa4 <_malloc_r+0x64>
d05a1fe8:	e7cf      	b.n	d05a1f8a <_malloc_r+0x4a>
d05a1fea:	bf00      	nop
d05a1fec:	d05b5cc0 	.word	0xd05b5cc0
d05a1ff0:	d05b5cc4 	.word	0xd05b5cc4

d05a1ff4 <__ssputs_r>:
d05a1ff4:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
d05a1ff8:	688e      	ldr	r6, [r1, #8]
d05a1ffa:	429e      	cmp	r6, r3
d05a1ffc:	4682      	mov	sl, r0
d05a1ffe:	460c      	mov	r4, r1
d05a2000:	4690      	mov	r8, r2
d05a2002:	461f      	mov	r7, r3
d05a2004:	d838      	bhi.n	d05a2078 <__ssputs_r+0x84>
d05a2006:	898a      	ldrh	r2, [r1, #12]
d05a2008:	f412 6f90 	tst.w	r2, #1152	; 0x480
d05a200c:	d032      	beq.n	d05a2074 <__ssputs_r+0x80>
d05a200e:	6825      	ldr	r5, [r4, #0]
d05a2010:	6909      	ldr	r1, [r1, #16]
d05a2012:	eba5 0901 	sub.w	r9, r5, r1
d05a2016:	6965      	ldr	r5, [r4, #20]
d05a2018:	eb05 0545 	add.w	r5, r5, r5, lsl #1
d05a201c:	eb05 75d5 	add.w	r5, r5, r5, lsr #31
d05a2020:	3301      	adds	r3, #1
d05a2022:	444b      	add	r3, r9
d05a2024:	106d      	asrs	r5, r5, #1
d05a2026:	429d      	cmp	r5, r3
d05a2028:	bf38      	it	cc
d05a202a:	461d      	movcc	r5, r3
d05a202c:	0553      	lsls	r3, r2, #21
d05a202e:	d531      	bpl.n	d05a2094 <__ssputs_r+0xa0>
d05a2030:	4629      	mov	r1, r5
d05a2032:	f7ff ff85 	bl	d05a1f40 <_malloc_r>
d05a2036:	4606      	mov	r6, r0
d05a2038:	b950      	cbnz	r0, d05a2050 <__ssputs_r+0x5c>
d05a203a:	230c      	movs	r3, #12
d05a203c:	f8ca 3000 	str.w	r3, [sl]
d05a2040:	89a3      	ldrh	r3, [r4, #12]
d05a2042:	f043 0340 	orr.w	r3, r3, #64	; 0x40
d05a2046:	81a3      	strh	r3, [r4, #12]
d05a2048:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d05a204c:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
d05a2050:	6921      	ldr	r1, [r4, #16]
d05a2052:	464a      	mov	r2, r9
d05a2054:	f000 fb8c 	bl	d05a2770 <memcpy>
d05a2058:	89a3      	ldrh	r3, [r4, #12]
d05a205a:	f423 6390 	bic.w	r3, r3, #1152	; 0x480
d05a205e:	f043 0380 	orr.w	r3, r3, #128	; 0x80
d05a2062:	81a3      	strh	r3, [r4, #12]
d05a2064:	6126      	str	r6, [r4, #16]
d05a2066:	6165      	str	r5, [r4, #20]
d05a2068:	444e      	add	r6, r9
d05a206a:	eba5 0509 	sub.w	r5, r5, r9
d05a206e:	6026      	str	r6, [r4, #0]
d05a2070:	60a5      	str	r5, [r4, #8]
d05a2072:	463e      	mov	r6, r7
d05a2074:	42be      	cmp	r6, r7
d05a2076:	d900      	bls.n	d05a207a <__ssputs_r+0x86>
d05a2078:	463e      	mov	r6, r7
d05a207a:	4632      	mov	r2, r6
d05a207c:	6820      	ldr	r0, [r4, #0]
d05a207e:	4641      	mov	r1, r8
d05a2080:	f000 fb84 	bl	d05a278c <memmove>
d05a2084:	68a3      	ldr	r3, [r4, #8]
d05a2086:	6822      	ldr	r2, [r4, #0]
d05a2088:	1b9b      	subs	r3, r3, r6
d05a208a:	4432      	add	r2, r6
d05a208c:	60a3      	str	r3, [r4, #8]
d05a208e:	6022      	str	r2, [r4, #0]
d05a2090:	2000      	movs	r0, #0
d05a2092:	e7db      	b.n	d05a204c <__ssputs_r+0x58>
d05a2094:	462a      	mov	r2, r5
d05a2096:	f000 fb9f 	bl	d05a27d8 <_realloc_r>
d05a209a:	4606      	mov	r6, r0
d05a209c:	2800      	cmp	r0, #0
d05a209e:	d1e1      	bne.n	d05a2064 <__ssputs_r+0x70>
d05a20a0:	6921      	ldr	r1, [r4, #16]
d05a20a2:	4650      	mov	r0, sl
d05a20a4:	f7ff fefc 	bl	d05a1ea0 <_free_r>
d05a20a8:	e7c7      	b.n	d05a203a <__ssputs_r+0x46>
	...

d05a20ac <_svfiprintf_r>:
d05a20ac:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d05a20b0:	4698      	mov	r8, r3
d05a20b2:	898b      	ldrh	r3, [r1, #12]
d05a20b4:	061b      	lsls	r3, r3, #24
d05a20b6:	b09d      	sub	sp, #116	; 0x74
d05a20b8:	4607      	mov	r7, r0
d05a20ba:	460d      	mov	r5, r1
d05a20bc:	4614      	mov	r4, r2
d05a20be:	d50e      	bpl.n	d05a20de <_svfiprintf_r+0x32>
d05a20c0:	690b      	ldr	r3, [r1, #16]
d05a20c2:	b963      	cbnz	r3, d05a20de <_svfiprintf_r+0x32>
d05a20c4:	2140      	movs	r1, #64	; 0x40
d05a20c6:	f7ff ff3b 	bl	d05a1f40 <_malloc_r>
d05a20ca:	6028      	str	r0, [r5, #0]
d05a20cc:	6128      	str	r0, [r5, #16]
d05a20ce:	b920      	cbnz	r0, d05a20da <_svfiprintf_r+0x2e>
d05a20d0:	230c      	movs	r3, #12
d05a20d2:	603b      	str	r3, [r7, #0]
d05a20d4:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d05a20d8:	e0d1      	b.n	d05a227e <_svfiprintf_r+0x1d2>
d05a20da:	2340      	movs	r3, #64	; 0x40
d05a20dc:	616b      	str	r3, [r5, #20]
d05a20de:	2300      	movs	r3, #0
d05a20e0:	9309      	str	r3, [sp, #36]	; 0x24
d05a20e2:	2320      	movs	r3, #32
d05a20e4:	f88d 3029 	strb.w	r3, [sp, #41]	; 0x29
d05a20e8:	f8cd 800c 	str.w	r8, [sp, #12]
d05a20ec:	2330      	movs	r3, #48	; 0x30
d05a20ee:	f8df 81a8 	ldr.w	r8, [pc, #424]	; d05a2298 <_svfiprintf_r+0x1ec>
d05a20f2:	f88d 302a 	strb.w	r3, [sp, #42]	; 0x2a
d05a20f6:	f04f 0901 	mov.w	r9, #1
d05a20fa:	4623      	mov	r3, r4
d05a20fc:	469a      	mov	sl, r3
d05a20fe:	f813 2b01 	ldrb.w	r2, [r3], #1
d05a2102:	b10a      	cbz	r2, d05a2108 <_svfiprintf_r+0x5c>
d05a2104:	2a25      	cmp	r2, #37	; 0x25
d05a2106:	d1f9      	bne.n	d05a20fc <_svfiprintf_r+0x50>
d05a2108:	ebba 0b04 	subs.w	fp, sl, r4
d05a210c:	d00b      	beq.n	d05a2126 <_svfiprintf_r+0x7a>
d05a210e:	465b      	mov	r3, fp
d05a2110:	4622      	mov	r2, r4
d05a2112:	4629      	mov	r1, r5
d05a2114:	4638      	mov	r0, r7
d05a2116:	f7ff ff6d 	bl	d05a1ff4 <__ssputs_r>
d05a211a:	3001      	adds	r0, #1
d05a211c:	f000 80aa 	beq.w	d05a2274 <_svfiprintf_r+0x1c8>
d05a2120:	9a09      	ldr	r2, [sp, #36]	; 0x24
d05a2122:	445a      	add	r2, fp
d05a2124:	9209      	str	r2, [sp, #36]	; 0x24
d05a2126:	f89a 3000 	ldrb.w	r3, [sl]
d05a212a:	2b00      	cmp	r3, #0
d05a212c:	f000 80a2 	beq.w	d05a2274 <_svfiprintf_r+0x1c8>
d05a2130:	2300      	movs	r3, #0
d05a2132:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
d05a2136:	e9cd 2305 	strd	r2, r3, [sp, #20]
d05a213a:	f10a 0a01 	add.w	sl, sl, #1
d05a213e:	9304      	str	r3, [sp, #16]
d05a2140:	9307      	str	r3, [sp, #28]
d05a2142:	f88d 3053 	strb.w	r3, [sp, #83]	; 0x53
d05a2146:	931a      	str	r3, [sp, #104]	; 0x68
d05a2148:	4654      	mov	r4, sl
d05a214a:	2205      	movs	r2, #5
d05a214c:	f814 1b01 	ldrb.w	r1, [r4], #1
d05a2150:	4851      	ldr	r0, [pc, #324]	; (d05a2298 <_svfiprintf_r+0x1ec>)
d05a2152:	f000 fabd 	bl	d05a26d0 <memchr>
d05a2156:	9a04      	ldr	r2, [sp, #16]
d05a2158:	b9d8      	cbnz	r0, d05a2192 <_svfiprintf_r+0xe6>
d05a215a:	06d0      	lsls	r0, r2, #27
d05a215c:	bf44      	itt	mi
d05a215e:	2320      	movmi	r3, #32
d05a2160:	f88d 3053 	strbmi.w	r3, [sp, #83]	; 0x53
d05a2164:	0711      	lsls	r1, r2, #28
d05a2166:	bf44      	itt	mi
d05a2168:	232b      	movmi	r3, #43	; 0x2b
d05a216a:	f88d 3053 	strbmi.w	r3, [sp, #83]	; 0x53
d05a216e:	f89a 3000 	ldrb.w	r3, [sl]
d05a2172:	2b2a      	cmp	r3, #42	; 0x2a
d05a2174:	d015      	beq.n	d05a21a2 <_svfiprintf_r+0xf6>
d05a2176:	9a07      	ldr	r2, [sp, #28]
d05a2178:	4654      	mov	r4, sl
d05a217a:	2000      	movs	r0, #0
d05a217c:	f04f 0c0a 	mov.w	ip, #10
d05a2180:	4621      	mov	r1, r4
d05a2182:	f811 3b01 	ldrb.w	r3, [r1], #1
d05a2186:	3b30      	subs	r3, #48	; 0x30
d05a2188:	2b09      	cmp	r3, #9
d05a218a:	d94e      	bls.n	d05a222a <_svfiprintf_r+0x17e>
d05a218c:	b1b0      	cbz	r0, d05a21bc <_svfiprintf_r+0x110>
d05a218e:	9207      	str	r2, [sp, #28]
d05a2190:	e014      	b.n	d05a21bc <_svfiprintf_r+0x110>
d05a2192:	eba0 0308 	sub.w	r3, r0, r8
d05a2196:	fa09 f303 	lsl.w	r3, r9, r3
d05a219a:	4313      	orrs	r3, r2
d05a219c:	9304      	str	r3, [sp, #16]
d05a219e:	46a2      	mov	sl, r4
d05a21a0:	e7d2      	b.n	d05a2148 <_svfiprintf_r+0x9c>
d05a21a2:	9b03      	ldr	r3, [sp, #12]
d05a21a4:	1d19      	adds	r1, r3, #4
d05a21a6:	681b      	ldr	r3, [r3, #0]
d05a21a8:	9103      	str	r1, [sp, #12]
d05a21aa:	2b00      	cmp	r3, #0
d05a21ac:	bfbb      	ittet	lt
d05a21ae:	425b      	neglt	r3, r3
d05a21b0:	f042 0202 	orrlt.w	r2, r2, #2
d05a21b4:	9307      	strge	r3, [sp, #28]
d05a21b6:	9307      	strlt	r3, [sp, #28]
d05a21b8:	bfb8      	it	lt
d05a21ba:	9204      	strlt	r2, [sp, #16]
d05a21bc:	7823      	ldrb	r3, [r4, #0]
d05a21be:	2b2e      	cmp	r3, #46	; 0x2e
d05a21c0:	d10c      	bne.n	d05a21dc <_svfiprintf_r+0x130>
d05a21c2:	7863      	ldrb	r3, [r4, #1]
d05a21c4:	2b2a      	cmp	r3, #42	; 0x2a
d05a21c6:	d135      	bne.n	d05a2234 <_svfiprintf_r+0x188>
d05a21c8:	9b03      	ldr	r3, [sp, #12]
d05a21ca:	1d1a      	adds	r2, r3, #4
d05a21cc:	681b      	ldr	r3, [r3, #0]
d05a21ce:	9203      	str	r2, [sp, #12]
d05a21d0:	2b00      	cmp	r3, #0
d05a21d2:	bfb8      	it	lt
d05a21d4:	f04f 33ff 	movlt.w	r3, #4294967295	; 0xffffffff
d05a21d8:	3402      	adds	r4, #2
d05a21da:	9305      	str	r3, [sp, #20]
d05a21dc:	f8df a0c8 	ldr.w	sl, [pc, #200]	; d05a22a8 <_svfiprintf_r+0x1fc>
d05a21e0:	7821      	ldrb	r1, [r4, #0]
d05a21e2:	2203      	movs	r2, #3
d05a21e4:	4650      	mov	r0, sl
d05a21e6:	f000 fa73 	bl	d05a26d0 <memchr>
d05a21ea:	b140      	cbz	r0, d05a21fe <_svfiprintf_r+0x152>
d05a21ec:	2340      	movs	r3, #64	; 0x40
d05a21ee:	eba0 000a 	sub.w	r0, r0, sl
d05a21f2:	fa03 f000 	lsl.w	r0, r3, r0
d05a21f6:	9b04      	ldr	r3, [sp, #16]
d05a21f8:	4303      	orrs	r3, r0
d05a21fa:	3401      	adds	r4, #1
d05a21fc:	9304      	str	r3, [sp, #16]
d05a21fe:	f814 1b01 	ldrb.w	r1, [r4], #1
d05a2202:	4826      	ldr	r0, [pc, #152]	; (d05a229c <_svfiprintf_r+0x1f0>)
d05a2204:	f88d 1028 	strb.w	r1, [sp, #40]	; 0x28
d05a2208:	2206      	movs	r2, #6
d05a220a:	f000 fa61 	bl	d05a26d0 <memchr>
d05a220e:	2800      	cmp	r0, #0
d05a2210:	d038      	beq.n	d05a2284 <_svfiprintf_r+0x1d8>
d05a2212:	4b23      	ldr	r3, [pc, #140]	; (d05a22a0 <_svfiprintf_r+0x1f4>)
d05a2214:	bb1b      	cbnz	r3, d05a225e <_svfiprintf_r+0x1b2>
d05a2216:	9b03      	ldr	r3, [sp, #12]
d05a2218:	3307      	adds	r3, #7
d05a221a:	f023 0307 	bic.w	r3, r3, #7
d05a221e:	3308      	adds	r3, #8
d05a2220:	9303      	str	r3, [sp, #12]
d05a2222:	9b09      	ldr	r3, [sp, #36]	; 0x24
d05a2224:	4433      	add	r3, r6
d05a2226:	9309      	str	r3, [sp, #36]	; 0x24
d05a2228:	e767      	b.n	d05a20fa <_svfiprintf_r+0x4e>
d05a222a:	fb0c 3202 	mla	r2, ip, r2, r3
d05a222e:	460c      	mov	r4, r1
d05a2230:	2001      	movs	r0, #1
d05a2232:	e7a5      	b.n	d05a2180 <_svfiprintf_r+0xd4>
d05a2234:	2300      	movs	r3, #0
d05a2236:	3401      	adds	r4, #1
d05a2238:	9305      	str	r3, [sp, #20]
d05a223a:	4619      	mov	r1, r3
d05a223c:	f04f 0c0a 	mov.w	ip, #10
d05a2240:	4620      	mov	r0, r4
d05a2242:	f810 2b01 	ldrb.w	r2, [r0], #1
d05a2246:	3a30      	subs	r2, #48	; 0x30
d05a2248:	2a09      	cmp	r2, #9
d05a224a:	d903      	bls.n	d05a2254 <_svfiprintf_r+0x1a8>
d05a224c:	2b00      	cmp	r3, #0
d05a224e:	d0c5      	beq.n	d05a21dc <_svfiprintf_r+0x130>
d05a2250:	9105      	str	r1, [sp, #20]
d05a2252:	e7c3      	b.n	d05a21dc <_svfiprintf_r+0x130>
d05a2254:	fb0c 2101 	mla	r1, ip, r1, r2
d05a2258:	4604      	mov	r4, r0
d05a225a:	2301      	movs	r3, #1
d05a225c:	e7f0      	b.n	d05a2240 <_svfiprintf_r+0x194>
d05a225e:	ab03      	add	r3, sp, #12
d05a2260:	9300      	str	r3, [sp, #0]
d05a2262:	462a      	mov	r2, r5
d05a2264:	4b0f      	ldr	r3, [pc, #60]	; (d05a22a4 <_svfiprintf_r+0x1f8>)
d05a2266:	a904      	add	r1, sp, #16
d05a2268:	4638      	mov	r0, r7
d05a226a:	f3af 8000 	nop.w
d05a226e:	1c42      	adds	r2, r0, #1
d05a2270:	4606      	mov	r6, r0
d05a2272:	d1d6      	bne.n	d05a2222 <_svfiprintf_r+0x176>
d05a2274:	89ab      	ldrh	r3, [r5, #12]
d05a2276:	065b      	lsls	r3, r3, #25
d05a2278:	f53f af2c 	bmi.w	d05a20d4 <_svfiprintf_r+0x28>
d05a227c:	9809      	ldr	r0, [sp, #36]	; 0x24
d05a227e:	b01d      	add	sp, #116	; 0x74
d05a2280:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d05a2284:	ab03      	add	r3, sp, #12
d05a2286:	9300      	str	r3, [sp, #0]
d05a2288:	462a      	mov	r2, r5
d05a228a:	4b06      	ldr	r3, [pc, #24]	; (d05a22a4 <_svfiprintf_r+0x1f8>)
d05a228c:	a904      	add	r1, sp, #16
d05a228e:	4638      	mov	r0, r7
d05a2290:	f000 f87a 	bl	d05a2388 <_printf_i>
d05a2294:	e7eb      	b.n	d05a226e <_svfiprintf_r+0x1c2>
d05a2296:	bf00      	nop
d05a2298:	d05a2978 	.word	0xd05a2978
d05a229c:	d05a2982 	.word	0xd05a2982
d05a22a0:	00000000 	.word	0x00000000
d05a22a4:	d05a1ff5 	.word	0xd05a1ff5
d05a22a8:	d05a297e 	.word	0xd05a297e

d05a22ac <_printf_common>:
d05a22ac:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
d05a22b0:	4616      	mov	r6, r2
d05a22b2:	4699      	mov	r9, r3
d05a22b4:	688a      	ldr	r2, [r1, #8]
d05a22b6:	690b      	ldr	r3, [r1, #16]
d05a22b8:	f8dd 8020 	ldr.w	r8, [sp, #32]
d05a22bc:	4293      	cmp	r3, r2
d05a22be:	bfb8      	it	lt
d05a22c0:	4613      	movlt	r3, r2
d05a22c2:	6033      	str	r3, [r6, #0]
d05a22c4:	f891 2043 	ldrb.w	r2, [r1, #67]	; 0x43
d05a22c8:	4607      	mov	r7, r0
d05a22ca:	460c      	mov	r4, r1
d05a22cc:	b10a      	cbz	r2, d05a22d2 <_printf_common+0x26>
d05a22ce:	3301      	adds	r3, #1
d05a22d0:	6033      	str	r3, [r6, #0]
d05a22d2:	6823      	ldr	r3, [r4, #0]
d05a22d4:	0699      	lsls	r1, r3, #26
d05a22d6:	bf42      	ittt	mi
d05a22d8:	6833      	ldrmi	r3, [r6, #0]
d05a22da:	3302      	addmi	r3, #2
d05a22dc:	6033      	strmi	r3, [r6, #0]
d05a22de:	6825      	ldr	r5, [r4, #0]
d05a22e0:	f015 0506 	ands.w	r5, r5, #6
d05a22e4:	d106      	bne.n	d05a22f4 <_printf_common+0x48>
d05a22e6:	f104 0a19 	add.w	sl, r4, #25
d05a22ea:	68e3      	ldr	r3, [r4, #12]
d05a22ec:	6832      	ldr	r2, [r6, #0]
d05a22ee:	1a9b      	subs	r3, r3, r2
d05a22f0:	42ab      	cmp	r3, r5
d05a22f2:	dc26      	bgt.n	d05a2342 <_printf_common+0x96>
d05a22f4:	f894 2043 	ldrb.w	r2, [r4, #67]	; 0x43
d05a22f8:	1e13      	subs	r3, r2, #0
d05a22fa:	6822      	ldr	r2, [r4, #0]
d05a22fc:	bf18      	it	ne
d05a22fe:	2301      	movne	r3, #1
d05a2300:	0692      	lsls	r2, r2, #26
d05a2302:	d42b      	bmi.n	d05a235c <_printf_common+0xb0>
d05a2304:	f104 0243 	add.w	r2, r4, #67	; 0x43
d05a2308:	4649      	mov	r1, r9
d05a230a:	4638      	mov	r0, r7
d05a230c:	47c0      	blx	r8
d05a230e:	3001      	adds	r0, #1
d05a2310:	d01e      	beq.n	d05a2350 <_printf_common+0xa4>
d05a2312:	6823      	ldr	r3, [r4, #0]
d05a2314:	68e5      	ldr	r5, [r4, #12]
d05a2316:	6832      	ldr	r2, [r6, #0]
d05a2318:	f003 0306 	and.w	r3, r3, #6
d05a231c:	2b04      	cmp	r3, #4
d05a231e:	bf08      	it	eq
d05a2320:	1aad      	subeq	r5, r5, r2
d05a2322:	68a3      	ldr	r3, [r4, #8]
d05a2324:	6922      	ldr	r2, [r4, #16]
d05a2326:	bf0c      	ite	eq
d05a2328:	ea25 75e5 	biceq.w	r5, r5, r5, asr #31
d05a232c:	2500      	movne	r5, #0
d05a232e:	4293      	cmp	r3, r2
d05a2330:	bfc4      	itt	gt
d05a2332:	1a9b      	subgt	r3, r3, r2
d05a2334:	18ed      	addgt	r5, r5, r3
d05a2336:	2600      	movs	r6, #0
d05a2338:	341a      	adds	r4, #26
d05a233a:	42b5      	cmp	r5, r6
d05a233c:	d11a      	bne.n	d05a2374 <_printf_common+0xc8>
d05a233e:	2000      	movs	r0, #0
d05a2340:	e008      	b.n	d05a2354 <_printf_common+0xa8>
d05a2342:	2301      	movs	r3, #1
d05a2344:	4652      	mov	r2, sl
d05a2346:	4649      	mov	r1, r9
d05a2348:	4638      	mov	r0, r7
d05a234a:	47c0      	blx	r8
d05a234c:	3001      	adds	r0, #1
d05a234e:	d103      	bne.n	d05a2358 <_printf_common+0xac>
d05a2350:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d05a2354:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
d05a2358:	3501      	adds	r5, #1
d05a235a:	e7c6      	b.n	d05a22ea <_printf_common+0x3e>
d05a235c:	18e1      	adds	r1, r4, r3
d05a235e:	1c5a      	adds	r2, r3, #1
d05a2360:	2030      	movs	r0, #48	; 0x30
d05a2362:	f881 0043 	strb.w	r0, [r1, #67]	; 0x43
d05a2366:	4422      	add	r2, r4
d05a2368:	f894 1045 	ldrb.w	r1, [r4, #69]	; 0x45
d05a236c:	f882 1043 	strb.w	r1, [r2, #67]	; 0x43
d05a2370:	3302      	adds	r3, #2
d05a2372:	e7c7      	b.n	d05a2304 <_printf_common+0x58>
d05a2374:	2301      	movs	r3, #1
d05a2376:	4622      	mov	r2, r4
d05a2378:	4649      	mov	r1, r9
d05a237a:	4638      	mov	r0, r7
d05a237c:	47c0      	blx	r8
d05a237e:	3001      	adds	r0, #1
d05a2380:	d0e6      	beq.n	d05a2350 <_printf_common+0xa4>
d05a2382:	3601      	adds	r6, #1
d05a2384:	e7d9      	b.n	d05a233a <_printf_common+0x8e>
	...

d05a2388 <_printf_i>:
d05a2388:	e92d 47ff 	stmdb	sp!, {r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, lr}
d05a238c:	460c      	mov	r4, r1
d05a238e:	4691      	mov	r9, r2
d05a2390:	7e27      	ldrb	r7, [r4, #24]
d05a2392:	990c      	ldr	r1, [sp, #48]	; 0x30
d05a2394:	2f78      	cmp	r7, #120	; 0x78
d05a2396:	4680      	mov	r8, r0
d05a2398:	469a      	mov	sl, r3
d05a239a:	f104 0243 	add.w	r2, r4, #67	; 0x43
d05a239e:	d807      	bhi.n	d05a23b0 <_printf_i+0x28>
d05a23a0:	2f62      	cmp	r7, #98	; 0x62
d05a23a2:	d80a      	bhi.n	d05a23ba <_printf_i+0x32>
d05a23a4:	2f00      	cmp	r7, #0
d05a23a6:	f000 80d8 	beq.w	d05a255a <_printf_i+0x1d2>
d05a23aa:	2f58      	cmp	r7, #88	; 0x58
d05a23ac:	f000 80a3 	beq.w	d05a24f6 <_printf_i+0x16e>
d05a23b0:	f104 0642 	add.w	r6, r4, #66	; 0x42
d05a23b4:	f884 7042 	strb.w	r7, [r4, #66]	; 0x42
d05a23b8:	e03a      	b.n	d05a2430 <_printf_i+0xa8>
d05a23ba:	f1a7 0363 	sub.w	r3, r7, #99	; 0x63
d05a23be:	2b15      	cmp	r3, #21
d05a23c0:	d8f6      	bhi.n	d05a23b0 <_printf_i+0x28>
d05a23c2:	a001      	add	r0, pc, #4	; (adr r0, d05a23c8 <_printf_i+0x40>)
d05a23c4:	f850 f023 	ldr.w	pc, [r0, r3, lsl #2]
d05a23c8:	d05a2421 	.word	0xd05a2421
d05a23cc:	d05a2435 	.word	0xd05a2435
d05a23d0:	d05a23b1 	.word	0xd05a23b1
d05a23d4:	d05a23b1 	.word	0xd05a23b1
d05a23d8:	d05a23b1 	.word	0xd05a23b1
d05a23dc:	d05a23b1 	.word	0xd05a23b1
d05a23e0:	d05a2435 	.word	0xd05a2435
d05a23e4:	d05a23b1 	.word	0xd05a23b1
d05a23e8:	d05a23b1 	.word	0xd05a23b1
d05a23ec:	d05a23b1 	.word	0xd05a23b1
d05a23f0:	d05a23b1 	.word	0xd05a23b1
d05a23f4:	d05a2541 	.word	0xd05a2541
d05a23f8:	d05a2465 	.word	0xd05a2465
d05a23fc:	d05a2523 	.word	0xd05a2523
d05a2400:	d05a23b1 	.word	0xd05a23b1
d05a2404:	d05a23b1 	.word	0xd05a23b1
d05a2408:	d05a2563 	.word	0xd05a2563
d05a240c:	d05a23b1 	.word	0xd05a23b1
d05a2410:	d05a2465 	.word	0xd05a2465
d05a2414:	d05a23b1 	.word	0xd05a23b1
d05a2418:	d05a23b1 	.word	0xd05a23b1
d05a241c:	d05a252b 	.word	0xd05a252b
d05a2420:	680b      	ldr	r3, [r1, #0]
d05a2422:	1d1a      	adds	r2, r3, #4
d05a2424:	681b      	ldr	r3, [r3, #0]
d05a2426:	600a      	str	r2, [r1, #0]
d05a2428:	f104 0642 	add.w	r6, r4, #66	; 0x42
d05a242c:	f884 3042 	strb.w	r3, [r4, #66]	; 0x42
d05a2430:	2301      	movs	r3, #1
d05a2432:	e0a3      	b.n	d05a257c <_printf_i+0x1f4>
d05a2434:	6825      	ldr	r5, [r4, #0]
d05a2436:	6808      	ldr	r0, [r1, #0]
d05a2438:	062e      	lsls	r6, r5, #24
d05a243a:	f100 0304 	add.w	r3, r0, #4
d05a243e:	d50a      	bpl.n	d05a2456 <_printf_i+0xce>
d05a2440:	6805      	ldr	r5, [r0, #0]
d05a2442:	600b      	str	r3, [r1, #0]
d05a2444:	2d00      	cmp	r5, #0
d05a2446:	da03      	bge.n	d05a2450 <_printf_i+0xc8>
d05a2448:	232d      	movs	r3, #45	; 0x2d
d05a244a:	426d      	negs	r5, r5
d05a244c:	f884 3043 	strb.w	r3, [r4, #67]	; 0x43
d05a2450:	485e      	ldr	r0, [pc, #376]	; (d05a25cc <_printf_i+0x244>)
d05a2452:	230a      	movs	r3, #10
d05a2454:	e019      	b.n	d05a248a <_printf_i+0x102>
d05a2456:	f015 0f40 	tst.w	r5, #64	; 0x40
d05a245a:	6805      	ldr	r5, [r0, #0]
d05a245c:	600b      	str	r3, [r1, #0]
d05a245e:	bf18      	it	ne
d05a2460:	b22d      	sxthne	r5, r5
d05a2462:	e7ef      	b.n	d05a2444 <_printf_i+0xbc>
d05a2464:	680b      	ldr	r3, [r1, #0]
d05a2466:	6825      	ldr	r5, [r4, #0]
d05a2468:	1d18      	adds	r0, r3, #4
d05a246a:	6008      	str	r0, [r1, #0]
d05a246c:	0628      	lsls	r0, r5, #24
d05a246e:	d501      	bpl.n	d05a2474 <_printf_i+0xec>
d05a2470:	681d      	ldr	r5, [r3, #0]
d05a2472:	e002      	b.n	d05a247a <_printf_i+0xf2>
d05a2474:	0669      	lsls	r1, r5, #25
d05a2476:	d5fb      	bpl.n	d05a2470 <_printf_i+0xe8>
d05a2478:	881d      	ldrh	r5, [r3, #0]
d05a247a:	4854      	ldr	r0, [pc, #336]	; (d05a25cc <_printf_i+0x244>)
d05a247c:	2f6f      	cmp	r7, #111	; 0x6f
d05a247e:	bf0c      	ite	eq
d05a2480:	2308      	moveq	r3, #8
d05a2482:	230a      	movne	r3, #10
d05a2484:	2100      	movs	r1, #0
d05a2486:	f884 1043 	strb.w	r1, [r4, #67]	; 0x43
d05a248a:	6866      	ldr	r6, [r4, #4]
d05a248c:	60a6      	str	r6, [r4, #8]
d05a248e:	2e00      	cmp	r6, #0
d05a2490:	bfa2      	ittt	ge
d05a2492:	6821      	ldrge	r1, [r4, #0]
d05a2494:	f021 0104 	bicge.w	r1, r1, #4
d05a2498:	6021      	strge	r1, [r4, #0]
d05a249a:	b90d      	cbnz	r5, d05a24a0 <_printf_i+0x118>
d05a249c:	2e00      	cmp	r6, #0
d05a249e:	d04d      	beq.n	d05a253c <_printf_i+0x1b4>
d05a24a0:	4616      	mov	r6, r2
d05a24a2:	fbb5 f1f3 	udiv	r1, r5, r3
d05a24a6:	fb03 5711 	mls	r7, r3, r1, r5
d05a24aa:	5dc7      	ldrb	r7, [r0, r7]
d05a24ac:	f806 7d01 	strb.w	r7, [r6, #-1]!
d05a24b0:	462f      	mov	r7, r5
d05a24b2:	42bb      	cmp	r3, r7
d05a24b4:	460d      	mov	r5, r1
d05a24b6:	d9f4      	bls.n	d05a24a2 <_printf_i+0x11a>
d05a24b8:	2b08      	cmp	r3, #8
d05a24ba:	d10b      	bne.n	d05a24d4 <_printf_i+0x14c>
d05a24bc:	6823      	ldr	r3, [r4, #0]
d05a24be:	07df      	lsls	r7, r3, #31
d05a24c0:	d508      	bpl.n	d05a24d4 <_printf_i+0x14c>
d05a24c2:	6923      	ldr	r3, [r4, #16]
d05a24c4:	6861      	ldr	r1, [r4, #4]
d05a24c6:	4299      	cmp	r1, r3
d05a24c8:	bfde      	ittt	le
d05a24ca:	2330      	movle	r3, #48	; 0x30
d05a24cc:	f806 3c01 	strble.w	r3, [r6, #-1]
d05a24d0:	f106 36ff 	addle.w	r6, r6, #4294967295	; 0xffffffff
d05a24d4:	1b92      	subs	r2, r2, r6
d05a24d6:	6122      	str	r2, [r4, #16]
d05a24d8:	f8cd a000 	str.w	sl, [sp]
d05a24dc:	464b      	mov	r3, r9
d05a24de:	aa03      	add	r2, sp, #12
d05a24e0:	4621      	mov	r1, r4
d05a24e2:	4640      	mov	r0, r8
d05a24e4:	f7ff fee2 	bl	d05a22ac <_printf_common>
d05a24e8:	3001      	adds	r0, #1
d05a24ea:	d14c      	bne.n	d05a2586 <_printf_i+0x1fe>
d05a24ec:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d05a24f0:	b004      	add	sp, #16
d05a24f2:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
d05a24f6:	4835      	ldr	r0, [pc, #212]	; (d05a25cc <_printf_i+0x244>)
d05a24f8:	f884 7045 	strb.w	r7, [r4, #69]	; 0x45
d05a24fc:	6823      	ldr	r3, [r4, #0]
d05a24fe:	680e      	ldr	r6, [r1, #0]
d05a2500:	061f      	lsls	r7, r3, #24
d05a2502:	f856 5b04 	ldr.w	r5, [r6], #4
d05a2506:	600e      	str	r6, [r1, #0]
d05a2508:	d514      	bpl.n	d05a2534 <_printf_i+0x1ac>
d05a250a:	07d9      	lsls	r1, r3, #31
d05a250c:	bf44      	itt	mi
d05a250e:	f043 0320 	orrmi.w	r3, r3, #32
d05a2512:	6023      	strmi	r3, [r4, #0]
d05a2514:	b91d      	cbnz	r5, d05a251e <_printf_i+0x196>
d05a2516:	6823      	ldr	r3, [r4, #0]
d05a2518:	f023 0320 	bic.w	r3, r3, #32
d05a251c:	6023      	str	r3, [r4, #0]
d05a251e:	2310      	movs	r3, #16
d05a2520:	e7b0      	b.n	d05a2484 <_printf_i+0xfc>
d05a2522:	6823      	ldr	r3, [r4, #0]
d05a2524:	f043 0320 	orr.w	r3, r3, #32
d05a2528:	6023      	str	r3, [r4, #0]
d05a252a:	2378      	movs	r3, #120	; 0x78
d05a252c:	4828      	ldr	r0, [pc, #160]	; (d05a25d0 <_printf_i+0x248>)
d05a252e:	f884 3045 	strb.w	r3, [r4, #69]	; 0x45
d05a2532:	e7e3      	b.n	d05a24fc <_printf_i+0x174>
d05a2534:	065e      	lsls	r6, r3, #25
d05a2536:	bf48      	it	mi
d05a2538:	b2ad      	uxthmi	r5, r5
d05a253a:	e7e6      	b.n	d05a250a <_printf_i+0x182>
d05a253c:	4616      	mov	r6, r2
d05a253e:	e7bb      	b.n	d05a24b8 <_printf_i+0x130>
d05a2540:	680b      	ldr	r3, [r1, #0]
d05a2542:	6826      	ldr	r6, [r4, #0]
d05a2544:	6960      	ldr	r0, [r4, #20]
d05a2546:	1d1d      	adds	r5, r3, #4
d05a2548:	600d      	str	r5, [r1, #0]
d05a254a:	0635      	lsls	r5, r6, #24
d05a254c:	681b      	ldr	r3, [r3, #0]
d05a254e:	d501      	bpl.n	d05a2554 <_printf_i+0x1cc>
d05a2550:	6018      	str	r0, [r3, #0]
d05a2552:	e002      	b.n	d05a255a <_printf_i+0x1d2>
d05a2554:	0671      	lsls	r1, r6, #25
d05a2556:	d5fb      	bpl.n	d05a2550 <_printf_i+0x1c8>
d05a2558:	8018      	strh	r0, [r3, #0]
d05a255a:	2300      	movs	r3, #0
d05a255c:	6123      	str	r3, [r4, #16]
d05a255e:	4616      	mov	r6, r2
d05a2560:	e7ba      	b.n	d05a24d8 <_printf_i+0x150>
d05a2562:	680b      	ldr	r3, [r1, #0]
d05a2564:	1d1a      	adds	r2, r3, #4
d05a2566:	600a      	str	r2, [r1, #0]
d05a2568:	681e      	ldr	r6, [r3, #0]
d05a256a:	6862      	ldr	r2, [r4, #4]
d05a256c:	2100      	movs	r1, #0
d05a256e:	4630      	mov	r0, r6
d05a2570:	f000 f8ae 	bl	d05a26d0 <memchr>
d05a2574:	b108      	cbz	r0, d05a257a <_printf_i+0x1f2>
d05a2576:	1b80      	subs	r0, r0, r6
d05a2578:	6060      	str	r0, [r4, #4]
d05a257a:	6863      	ldr	r3, [r4, #4]
d05a257c:	6123      	str	r3, [r4, #16]
d05a257e:	2300      	movs	r3, #0
d05a2580:	f884 3043 	strb.w	r3, [r4, #67]	; 0x43
d05a2584:	e7a8      	b.n	d05a24d8 <_printf_i+0x150>
d05a2586:	6923      	ldr	r3, [r4, #16]
d05a2588:	4632      	mov	r2, r6
d05a258a:	4649      	mov	r1, r9
d05a258c:	4640      	mov	r0, r8
d05a258e:	47d0      	blx	sl
d05a2590:	3001      	adds	r0, #1
d05a2592:	d0ab      	beq.n	d05a24ec <_printf_i+0x164>
d05a2594:	6823      	ldr	r3, [r4, #0]
d05a2596:	079b      	lsls	r3, r3, #30
d05a2598:	d413      	bmi.n	d05a25c2 <_printf_i+0x23a>
d05a259a:	68e0      	ldr	r0, [r4, #12]
d05a259c:	9b03      	ldr	r3, [sp, #12]
d05a259e:	4298      	cmp	r0, r3
d05a25a0:	bfb8      	it	lt
d05a25a2:	4618      	movlt	r0, r3
d05a25a4:	e7a4      	b.n	d05a24f0 <_printf_i+0x168>
d05a25a6:	2301      	movs	r3, #1
d05a25a8:	4632      	mov	r2, r6
d05a25aa:	4649      	mov	r1, r9
d05a25ac:	4640      	mov	r0, r8
d05a25ae:	47d0      	blx	sl
d05a25b0:	3001      	adds	r0, #1
d05a25b2:	d09b      	beq.n	d05a24ec <_printf_i+0x164>
d05a25b4:	3501      	adds	r5, #1
d05a25b6:	68e3      	ldr	r3, [r4, #12]
d05a25b8:	9903      	ldr	r1, [sp, #12]
d05a25ba:	1a5b      	subs	r3, r3, r1
d05a25bc:	42ab      	cmp	r3, r5
d05a25be:	dcf2      	bgt.n	d05a25a6 <_printf_i+0x21e>
d05a25c0:	e7eb      	b.n	d05a259a <_printf_i+0x212>
d05a25c2:	2500      	movs	r5, #0
d05a25c4:	f104 0619 	add.w	r6, r4, #25
d05a25c8:	e7f5      	b.n	d05a25b6 <_printf_i+0x22e>
d05a25ca:	bf00      	nop
d05a25cc:	d05a2989 	.word	0xd05a2989
d05a25d0:	d05a299a 	.word	0xd05a299a

d05a25d4 <__sread>:
d05a25d4:	b510      	push	{r4, lr}
d05a25d6:	460c      	mov	r4, r1
d05a25d8:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d05a25dc:	f000 f922 	bl	d05a2824 <_read_r>
d05a25e0:	2800      	cmp	r0, #0
d05a25e2:	bfab      	itete	ge
d05a25e4:	6d63      	ldrge	r3, [r4, #84]	; 0x54
d05a25e6:	89a3      	ldrhlt	r3, [r4, #12]
d05a25e8:	181b      	addge	r3, r3, r0
d05a25ea:	f423 5380 	biclt.w	r3, r3, #4096	; 0x1000
d05a25ee:	bfac      	ite	ge
d05a25f0:	6563      	strge	r3, [r4, #84]	; 0x54
d05a25f2:	81a3      	strhlt	r3, [r4, #12]
d05a25f4:	bd10      	pop	{r4, pc}

d05a25f6 <__swrite>:
d05a25f6:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
d05a25fa:	461f      	mov	r7, r3
d05a25fc:	898b      	ldrh	r3, [r1, #12]
d05a25fe:	05db      	lsls	r3, r3, #23
d05a2600:	4605      	mov	r5, r0
d05a2602:	460c      	mov	r4, r1
d05a2604:	4616      	mov	r6, r2
d05a2606:	d505      	bpl.n	d05a2614 <__swrite+0x1e>
d05a2608:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d05a260c:	2302      	movs	r3, #2
d05a260e:	2200      	movs	r2, #0
d05a2610:	f000 f846 	bl	d05a26a0 <_lseek_r>
d05a2614:	89a3      	ldrh	r3, [r4, #12]
d05a2616:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
d05a261a:	f423 5380 	bic.w	r3, r3, #4096	; 0x1000
d05a261e:	81a3      	strh	r3, [r4, #12]
d05a2620:	4632      	mov	r2, r6
d05a2622:	463b      	mov	r3, r7
d05a2624:	4628      	mov	r0, r5
d05a2626:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
d05a262a:	f7fd bd07 	b.w	d05a003c <_write_r>

d05a262e <__sseek>:
d05a262e:	b510      	push	{r4, lr}
d05a2630:	460c      	mov	r4, r1
d05a2632:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d05a2636:	f000 f833 	bl	d05a26a0 <_lseek_r>
d05a263a:	1c43      	adds	r3, r0, #1
d05a263c:	89a3      	ldrh	r3, [r4, #12]
d05a263e:	bf15      	itete	ne
d05a2640:	6560      	strne	r0, [r4, #84]	; 0x54
d05a2642:	f423 5380 	biceq.w	r3, r3, #4096	; 0x1000
d05a2646:	f443 5380 	orrne.w	r3, r3, #4096	; 0x1000
d05a264a:	81a3      	strheq	r3, [r4, #12]
d05a264c:	bf18      	it	ne
d05a264e:	81a3      	strhne	r3, [r4, #12]
d05a2650:	bd10      	pop	{r4, pc}

d05a2652 <__sclose>:
d05a2652:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d05a2656:	f000 b801 	b.w	d05a265c <_close_r>
	...

d05a265c <_close_r>:
d05a265c:	b538      	push	{r3, r4, r5, lr}
d05a265e:	4d06      	ldr	r5, [pc, #24]	; (d05a2678 <_close_r+0x1c>)
d05a2660:	2300      	movs	r3, #0
d05a2662:	4604      	mov	r4, r0
d05a2664:	4608      	mov	r0, r1
d05a2666:	602b      	str	r3, [r5, #0]
d05a2668:	f7fd fd22 	bl	d05a00b0 <_close>
d05a266c:	1c43      	adds	r3, r0, #1
d05a266e:	d102      	bne.n	d05a2676 <_close_r+0x1a>
d05a2670:	682b      	ldr	r3, [r5, #0]
d05a2672:	b103      	cbz	r3, d05a2676 <_close_r+0x1a>
d05a2674:	6023      	str	r3, [r4, #0]
d05a2676:	bd38      	pop	{r3, r4, r5, pc}
d05a2678:	d05b5cd4 	.word	0xd05b5cd4

d05a267c <_fstat_r>:
d05a267c:	b538      	push	{r3, r4, r5, lr}
d05a267e:	4d07      	ldr	r5, [pc, #28]	; (d05a269c <_fstat_r+0x20>)
d05a2680:	2300      	movs	r3, #0
d05a2682:	4604      	mov	r4, r0
d05a2684:	4608      	mov	r0, r1
d05a2686:	4611      	mov	r1, r2
d05a2688:	602b      	str	r3, [r5, #0]
d05a268a:	f7fd fd15 	bl	d05a00b8 <_fstat>
d05a268e:	1c43      	adds	r3, r0, #1
d05a2690:	d102      	bne.n	d05a2698 <_fstat_r+0x1c>
d05a2692:	682b      	ldr	r3, [r5, #0]
d05a2694:	b103      	cbz	r3, d05a2698 <_fstat_r+0x1c>
d05a2696:	6023      	str	r3, [r4, #0]
d05a2698:	bd38      	pop	{r3, r4, r5, pc}
d05a269a:	bf00      	nop
d05a269c:	d05b5cd4 	.word	0xd05b5cd4

d05a26a0 <_lseek_r>:
d05a26a0:	b538      	push	{r3, r4, r5, lr}
d05a26a2:	4d07      	ldr	r5, [pc, #28]	; (d05a26c0 <_lseek_r+0x20>)
d05a26a4:	4604      	mov	r4, r0
d05a26a6:	4608      	mov	r0, r1
d05a26a8:	4611      	mov	r1, r2
d05a26aa:	2200      	movs	r2, #0
d05a26ac:	602a      	str	r2, [r5, #0]
d05a26ae:	461a      	mov	r2, r3
d05a26b0:	f7fd fd08 	bl	d05a00c4 <_lseek>
d05a26b4:	1c43      	adds	r3, r0, #1
d05a26b6:	d102      	bne.n	d05a26be <_lseek_r+0x1e>
d05a26b8:	682b      	ldr	r3, [r5, #0]
d05a26ba:	b103      	cbz	r3, d05a26be <_lseek_r+0x1e>
d05a26bc:	6023      	str	r3, [r4, #0]
d05a26be:	bd38      	pop	{r3, r4, r5, pc}
d05a26c0:	d05b5cd4 	.word	0xd05b5cd4
	...

d05a26d0 <memchr>:
d05a26d0:	f001 01ff 	and.w	r1, r1, #255	; 0xff
d05a26d4:	2a10      	cmp	r2, #16
d05a26d6:	db2b      	blt.n	d05a2730 <memchr+0x60>
d05a26d8:	f010 0f07 	tst.w	r0, #7
d05a26dc:	d008      	beq.n	d05a26f0 <memchr+0x20>
d05a26de:	f810 3b01 	ldrb.w	r3, [r0], #1
d05a26e2:	3a01      	subs	r2, #1
d05a26e4:	428b      	cmp	r3, r1
d05a26e6:	d02d      	beq.n	d05a2744 <memchr+0x74>
d05a26e8:	f010 0f07 	tst.w	r0, #7
d05a26ec:	b342      	cbz	r2, d05a2740 <memchr+0x70>
d05a26ee:	d1f6      	bne.n	d05a26de <memchr+0xe>
d05a26f0:	b4f0      	push	{r4, r5, r6, r7}
d05a26f2:	ea41 2101 	orr.w	r1, r1, r1, lsl #8
d05a26f6:	ea41 4101 	orr.w	r1, r1, r1, lsl #16
d05a26fa:	f022 0407 	bic.w	r4, r2, #7
d05a26fe:	f07f 0700 	mvns.w	r7, #0
d05a2702:	2300      	movs	r3, #0
d05a2704:	e8f0 5602 	ldrd	r5, r6, [r0], #8
d05a2708:	3c08      	subs	r4, #8
d05a270a:	ea85 0501 	eor.w	r5, r5, r1
d05a270e:	ea86 0601 	eor.w	r6, r6, r1
d05a2712:	fa85 f547 	uadd8	r5, r5, r7
d05a2716:	faa3 f587 	sel	r5, r3, r7
d05a271a:	fa86 f647 	uadd8	r6, r6, r7
d05a271e:	faa5 f687 	sel	r6, r5, r7
d05a2722:	b98e      	cbnz	r6, d05a2748 <memchr+0x78>
d05a2724:	d1ee      	bne.n	d05a2704 <memchr+0x34>
d05a2726:	bcf0      	pop	{r4, r5, r6, r7}
d05a2728:	f001 01ff 	and.w	r1, r1, #255	; 0xff
d05a272c:	f002 0207 	and.w	r2, r2, #7
d05a2730:	b132      	cbz	r2, d05a2740 <memchr+0x70>
d05a2732:	f810 3b01 	ldrb.w	r3, [r0], #1
d05a2736:	3a01      	subs	r2, #1
d05a2738:	ea83 0301 	eor.w	r3, r3, r1
d05a273c:	b113      	cbz	r3, d05a2744 <memchr+0x74>
d05a273e:	d1f8      	bne.n	d05a2732 <memchr+0x62>
d05a2740:	2000      	movs	r0, #0
d05a2742:	4770      	bx	lr
d05a2744:	3801      	subs	r0, #1
d05a2746:	4770      	bx	lr
d05a2748:	2d00      	cmp	r5, #0
d05a274a:	bf06      	itte	eq
d05a274c:	4635      	moveq	r5, r6
d05a274e:	3803      	subeq	r0, #3
d05a2750:	3807      	subne	r0, #7
d05a2752:	f015 0f01 	tst.w	r5, #1
d05a2756:	d107      	bne.n	d05a2768 <memchr+0x98>
d05a2758:	3001      	adds	r0, #1
d05a275a:	f415 7f80 	tst.w	r5, #256	; 0x100
d05a275e:	bf02      	ittt	eq
d05a2760:	3001      	addeq	r0, #1
d05a2762:	f415 3fc0 	tsteq.w	r5, #98304	; 0x18000
d05a2766:	3001      	addeq	r0, #1
d05a2768:	bcf0      	pop	{r4, r5, r6, r7}
d05a276a:	3801      	subs	r0, #1
d05a276c:	4770      	bx	lr
d05a276e:	bf00      	nop

d05a2770 <memcpy>:
d05a2770:	440a      	add	r2, r1
d05a2772:	4291      	cmp	r1, r2
d05a2774:	f100 33ff 	add.w	r3, r0, #4294967295	; 0xffffffff
d05a2778:	d100      	bne.n	d05a277c <memcpy+0xc>
d05a277a:	4770      	bx	lr
d05a277c:	b510      	push	{r4, lr}
d05a277e:	f811 4b01 	ldrb.w	r4, [r1], #1
d05a2782:	f803 4f01 	strb.w	r4, [r3, #1]!
d05a2786:	4291      	cmp	r1, r2
d05a2788:	d1f9      	bne.n	d05a277e <memcpy+0xe>
d05a278a:	bd10      	pop	{r4, pc}

d05a278c <memmove>:
d05a278c:	4288      	cmp	r0, r1
d05a278e:	b510      	push	{r4, lr}
d05a2790:	eb01 0402 	add.w	r4, r1, r2
d05a2794:	d902      	bls.n	d05a279c <memmove+0x10>
d05a2796:	4284      	cmp	r4, r0
d05a2798:	4623      	mov	r3, r4
d05a279a:	d807      	bhi.n	d05a27ac <memmove+0x20>
d05a279c:	1e43      	subs	r3, r0, #1
d05a279e:	42a1      	cmp	r1, r4
d05a27a0:	d008      	beq.n	d05a27b4 <memmove+0x28>
d05a27a2:	f811 2b01 	ldrb.w	r2, [r1], #1
d05a27a6:	f803 2f01 	strb.w	r2, [r3, #1]!
d05a27aa:	e7f8      	b.n	d05a279e <memmove+0x12>
d05a27ac:	4402      	add	r2, r0
d05a27ae:	4601      	mov	r1, r0
d05a27b0:	428a      	cmp	r2, r1
d05a27b2:	d100      	bne.n	d05a27b6 <memmove+0x2a>
d05a27b4:	bd10      	pop	{r4, pc}
d05a27b6:	f813 4d01 	ldrb.w	r4, [r3, #-1]!
d05a27ba:	f802 4d01 	strb.w	r4, [r2, #-1]!
d05a27be:	e7f7      	b.n	d05a27b0 <memmove+0x24>

d05a27c0 <__malloc_lock>:
d05a27c0:	4801      	ldr	r0, [pc, #4]	; (d05a27c8 <__malloc_lock+0x8>)
d05a27c2:	f7ff bb3f 	b.w	d05a1e44 <__retarget_lock_acquire_recursive>
d05a27c6:	bf00      	nop
d05a27c8:	d05b5ccc 	.word	0xd05b5ccc

d05a27cc <__malloc_unlock>:
d05a27cc:	4801      	ldr	r0, [pc, #4]	; (d05a27d4 <__malloc_unlock+0x8>)
d05a27ce:	f7ff bb3a 	b.w	d05a1e46 <__retarget_lock_release_recursive>
d05a27d2:	bf00      	nop
d05a27d4:	d05b5ccc 	.word	0xd05b5ccc

d05a27d8 <_realloc_r>:
d05a27d8:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d05a27da:	4607      	mov	r7, r0
d05a27dc:	4614      	mov	r4, r2
d05a27de:	460e      	mov	r6, r1
d05a27e0:	b921      	cbnz	r1, d05a27ec <_realloc_r+0x14>
d05a27e2:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
d05a27e6:	4611      	mov	r1, r2
d05a27e8:	f7ff bbaa 	b.w	d05a1f40 <_malloc_r>
d05a27ec:	b922      	cbnz	r2, d05a27f8 <_realloc_r+0x20>
d05a27ee:	f7ff fb57 	bl	d05a1ea0 <_free_r>
d05a27f2:	4625      	mov	r5, r4
d05a27f4:	4628      	mov	r0, r5
d05a27f6:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d05a27f8:	f000 f826 	bl	d05a2848 <_malloc_usable_size_r>
d05a27fc:	42a0      	cmp	r0, r4
d05a27fe:	d20f      	bcs.n	d05a2820 <_realloc_r+0x48>
d05a2800:	4621      	mov	r1, r4
d05a2802:	4638      	mov	r0, r7
d05a2804:	f7ff fb9c 	bl	d05a1f40 <_malloc_r>
d05a2808:	4605      	mov	r5, r0
d05a280a:	2800      	cmp	r0, #0
d05a280c:	d0f2      	beq.n	d05a27f4 <_realloc_r+0x1c>
d05a280e:	4631      	mov	r1, r6
d05a2810:	4622      	mov	r2, r4
d05a2812:	f7ff ffad 	bl	d05a2770 <memcpy>
d05a2816:	4631      	mov	r1, r6
d05a2818:	4638      	mov	r0, r7
d05a281a:	f7ff fb41 	bl	d05a1ea0 <_free_r>
d05a281e:	e7e9      	b.n	d05a27f4 <_realloc_r+0x1c>
d05a2820:	4635      	mov	r5, r6
d05a2822:	e7e7      	b.n	d05a27f4 <_realloc_r+0x1c>

d05a2824 <_read_r>:
d05a2824:	b538      	push	{r3, r4, r5, lr}
d05a2826:	4d07      	ldr	r5, [pc, #28]	; (d05a2844 <_read_r+0x20>)
d05a2828:	4604      	mov	r4, r0
d05a282a:	4608      	mov	r0, r1
d05a282c:	4611      	mov	r1, r2
d05a282e:	2200      	movs	r2, #0
d05a2830:	602a      	str	r2, [r5, #0]
d05a2832:	461a      	mov	r2, r3
d05a2834:	f7fd fc32 	bl	d05a009c <_read>
d05a2838:	1c43      	adds	r3, r0, #1
d05a283a:	d102      	bne.n	d05a2842 <_read_r+0x1e>
d05a283c:	682b      	ldr	r3, [r5, #0]
d05a283e:	b103      	cbz	r3, d05a2842 <_read_r+0x1e>
d05a2840:	6023      	str	r3, [r4, #0]
d05a2842:	bd38      	pop	{r3, r4, r5, pc}
d05a2844:	d05b5cd4 	.word	0xd05b5cd4

d05a2848 <_malloc_usable_size_r>:
d05a2848:	f851 3c04 	ldr.w	r3, [r1, #-4]
d05a284c:	1f18      	subs	r0, r3, #4
d05a284e:	2b00      	cmp	r3, #0
d05a2850:	bfbc      	itt	lt
d05a2852:	580b      	ldrlt	r3, [r1, r0]
d05a2854:	18c0      	addlt	r0, r0, r3
d05a2856:	4770      	bx	lr
d05a2858:	6d6d7544 	.word	0x6d6d7544
d05a285c:	656d2079 	.word	0x656d2079
d05a2860:	7420756e 	.word	0x7420756e
d05a2864:	20747365 	.word	0x20747365
d05a2868:	20616976 	.word	0x20616976
d05a286c:	20656874 	.word	0x20656874
d05a2870:	42444953 	.word	0x42444953
d05a2874:	4120584f 	.word	0x4120584f
d05a2878:	002e4950 	.word	0x002e4950
d05a287c:	646e6152 	.word	0x646e6152
d05a2880:	53206d6f 	.word	0x53206d6f
d05a2884:	65706168 	.word	0x65706168
d05a2888:	00000073 	.word	0x00000073
d05a288c:	73756150 	.word	0x73756150
d05a2890:	00006465 	.word	0x00006465
d05a2894:	6e6e7552 	.word	0x6e6e7552
d05a2898:	00676e69 	.word	0x00676e69
d05a289c:	7c207325 	.word	0x7c207325
d05a28a0:	61726620 	.word	0x61726620
d05a28a4:	2073656d 	.word	0x2073656d
d05a28a8:	20756c25 	.word	0x20756c25
d05a28ac:	6f63207c 	.word	0x6f63207c
d05a28b0:	72756f6c 	.word	0x72756f6c
d05a28b4:	646e6920 	.word	0x646e6920
d05a28b8:	25207865 	.word	0x25207865
d05a28bc:	00000075 	.word	0x00000075
d05a28c0:	70616853 	.word	0x70616853
d05a28c4:	4f7c7365 	.word	0x4f7c7365
d05a28c8:	6f697470 	.word	0x6f697470
d05a28cc:	417c736e 	.word	0x417c736e
d05a28d0:	74756f62 	.word	0x74756f62
d05a28d4:	00000000 	.word	0x00000000
d05a28d8:	73727542 	.word	0x73727542
d05a28dc:	00000074 	.word	0x00000074
d05a28e0:	61656c43 	.word	0x61656c43
d05a28e4:	00000072 	.word	0x00000072
d05a28e8:	74697845 	.word	0x74697845
d05a28ec:	00000000 	.word	0x00000000
d05a28f0:	756f6241 	.word	0x756f6241
d05a28f4:	61522074 	.word	0x61522074
d05a28f8:	6d6f646e 	.word	0x6d6f646e
d05a28fc:	61685320 	.word	0x61685320
d05a2900:	00736570 	.word	0x00736570
d05a2904:	73756150 	.word	0x73756150
d05a2908:	00000065 	.word	0x00000065
d05a290c:	736f6c43 	.word	0x736f6c43
d05a2910:	00000065 	.word	0x00000065

d05a2914 <_global_impure_ptr>:
d05a2914:	d05a29c0                                .)Z.

d05a2918 <__sf_fake_stderr>:
	...

d05a2938 <__sf_fake_stdin>:
	...

d05a2958 <__sf_fake_stdout>:
	...
d05a2978:	2b302d23 6c680020 6665004c 47464567     #-0+ .hlL.efgEFG
d05a2988:	32313000 36353433 41393837 45444342     .0123456789ABCDE
d05a2998:	31300046 35343332 39383736 64636261     F.0123456789abcd
d05a29a8:	                                         ef.

Disassembly of section .init:

d05a29ac <_init>:
d05a29ac:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d05a29ae:	bf00      	nop

Disassembly of section .fini:

d05a29b0 <_fini>:
d05a29b0:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d05a29b2:	bf00      	nop

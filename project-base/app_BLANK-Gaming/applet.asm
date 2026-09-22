
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
d05a001e:	f000 f96d 	bl	d05a02fc <setbuf>
d05a0022:	6833      	ldr	r3, [r6, #0]
d05a0024:	2100      	movs	r1, #0
d05a0026:	68d8      	ldr	r0, [r3, #12]
d05a0028:	f000 f968 	bl	d05a02fc <setbuf>
d05a002c:	4629      	mov	r1, r5
d05a002e:	4620      	mov	r0, r4
d05a0030:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
d05a0034:	f000 b874 	b.w	d05a0120 <main>
d05a0038:	d05a0b50 	.word	0xd05a0b50

d05a003c <initMalloc>:
d05a003c:	4902      	ldr	r1, [pc, #8]	; (d05a0048 <initMalloc+0xc>)
d05a003e:	4b03      	ldr	r3, [pc, #12]	; (d05a004c <initMalloc+0x10>)
d05a0040:	4a03      	ldr	r2, [pc, #12]	; (d05a0050 <initMalloc+0x14>)
d05a0042:	1a5b      	subs	r3, r3, r1
d05a0044:	6013      	str	r3, [r2, #0]
d05a0046:	4770      	bx	lr
d05a0048:	d05a2c20 	.word	0xd05a2c20
d05a004c:	d0600000 	.word	0xd0600000
d05a0050:	d05a0c0c 	.word	0xd05a0c0c

d05a0054 <_write_r>:
d05a0054:	3901      	subs	r1, #1
d05a0056:	2901      	cmp	r1, #1
d05a0058:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d05a005a:	d81f      	bhi.n	d05a009c <_write_r+0x48>
d05a005c:	b1e2      	cbz	r2, d05a0098 <_write_r+0x44>
d05a005e:	461c      	mov	r4, r3
d05a0060:	b1d3      	cbz	r3, d05a0098 <_write_r+0x44>
d05a0062:	4d12      	ldr	r5, [pc, #72]	; (d05a00ac <_write_r+0x58>)
d05a0064:	682e      	ldr	r6, [r5, #0]
d05a0066:	b9ae      	cbnz	r6, d05a0094 <_write_r+0x40>
d05a0068:	4f11      	ldr	r7, [pc, #68]	; (d05a00b0 <_write_r+0x5c>)
d05a006a:	2301      	movs	r3, #1
d05a006c:	4611      	mov	r1, r2
d05a006e:	4630      	mov	r0, r6
d05a0070:	602b      	str	r3, [r5, #0]
d05a0072:	4622      	mov	r2, r4
d05a0074:	7a3b      	ldrb	r3, [r7, #8]
d05a0076:	f897 c009 	ldrb.w	ip, [r7, #9]
d05a007a:	ea43 230c 	orr.w	r3, r3, ip, lsl #8
d05a007e:	f897 c00a 	ldrb.w	ip, [r7, #10]
d05a0082:	7aff      	ldrb	r7, [r7, #11]
d05a0084:	ea43 430c 	orr.w	r3, r3, ip, lsl #16
d05a0088:	ea43 6307 	orr.w	r3, r3, r7, lsl #24
d05a008c:	681b      	ldr	r3, [r3, #0]
d05a008e:	685b      	ldr	r3, [r3, #4]
d05a0090:	4798      	blx	r3
d05a0092:	602e      	str	r6, [r5, #0]
d05a0094:	4620      	mov	r0, r4
d05a0096:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d05a0098:	2000      	movs	r0, #0
d05a009a:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d05a009c:	f000 f920 	bl	d05a02e0 <__errno>
d05a00a0:	2209      	movs	r2, #9
d05a00a2:	4603      	mov	r3, r0
d05a00a4:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d05a00a8:	601a      	str	r2, [r3, #0]
d05a00aa:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d05a00ac:	d05a0bc4 	.word	0xd05a0bc4
d05a00b0:	2001f000 	.word	0x2001f000

d05a00b4 <_read>:
d05a00b4:	b508      	push	{r3, lr}
d05a00b6:	f000 f913 	bl	d05a02e0 <__errno>
d05a00ba:	2258      	movs	r2, #88	; 0x58
d05a00bc:	4603      	mov	r3, r0
d05a00be:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d05a00c2:	601a      	str	r2, [r3, #0]
d05a00c4:	bd08      	pop	{r3, pc}
d05a00c6:	bf00      	nop

d05a00c8 <_close>:
d05a00c8:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d05a00cc:	4770      	bx	lr
d05a00ce:	bf00      	nop

d05a00d0 <_fstat>:
d05a00d0:	f44f 5300 	mov.w	r3, #8192	; 0x2000
d05a00d4:	2000      	movs	r0, #0
d05a00d6:	604b      	str	r3, [r1, #4]
d05a00d8:	4770      	bx	lr
d05a00da:	bf00      	nop

d05a00dc <_lseek>:
d05a00dc:	2000      	movs	r0, #0
d05a00de:	4770      	bx	lr

d05a00e0 <_sbrk_r>:
d05a00e0:	4b0c      	ldr	r3, [pc, #48]	; (d05a0114 <_sbrk_r+0x34>)
d05a00e2:	4a0d      	ldr	r2, [pc, #52]	; (d05a0118 <_sbrk_r+0x38>)
d05a00e4:	6818      	ldr	r0, [r3, #0]
d05a00e6:	b510      	push	{r4, lr}
d05a00e8:	b918      	cbnz	r0, d05a00f2 <_sbrk_r+0x12>
d05a00ea:	1dd0      	adds	r0, r2, #7
d05a00ec:	f020 0007 	bic.w	r0, r0, #7
d05a00f0:	6018      	str	r0, [r3, #0]
d05a00f2:	4401      	add	r1, r0
d05a00f4:	4c09      	ldr	r4, [pc, #36]	; (d05a011c <_sbrk_r+0x3c>)
d05a00f6:	42a1      	cmp	r1, r4
d05a00f8:	d803      	bhi.n	d05a0102 <_sbrk_r+0x22>
d05a00fa:	4291      	cmp	r1, r2
d05a00fc:	d301      	bcc.n	d05a0102 <_sbrk_r+0x22>
d05a00fe:	6019      	str	r1, [r3, #0]
d05a0100:	bd10      	pop	{r4, pc}
d05a0102:	f000 f8ed 	bl	d05a02e0 <__errno>
d05a0106:	220c      	movs	r2, #12
d05a0108:	4603      	mov	r3, r0
d05a010a:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d05a010e:	601a      	str	r2, [r3, #0]
d05a0110:	bd10      	pop	{r4, pc}
d05a0112:	bf00      	nop
d05a0114:	d05a0bc0 	.word	0xd05a0bc0
d05a0118:	d05a2c20 	.word	0xd05a2c20
d05a011c:	d0600000 	.word	0xd0600000

d05a0120 <main>:
d05a0120:	4c6b      	ldr	r4, [pc, #428]	; (d05a02d0 <main+0x1b0>)
d05a0122:	2000      	movs	r0, #0
d05a0124:	2501      	movs	r5, #1
d05a0126:	4e6b      	ldr	r6, [pc, #428]	; (d05a02d4 <main+0x1b4>)
d05a0128:	7823      	ldrb	r3, [r4, #0]
d05a012a:	7862      	ldrb	r2, [r4, #1]
d05a012c:	78a1      	ldrb	r1, [r4, #2]
d05a012e:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d05a0132:	78e2      	ldrb	r2, [r4, #3]
d05a0134:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d05a0138:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d05a013c:	b580      	push	{r7, lr}
d05a013e:	681b      	ldr	r3, [r3, #0]
d05a0140:	b082      	sub	sp, #8
d05a0142:	4798      	blx	r3
d05a0144:	7923      	ldrb	r3, [r4, #4]
d05a0146:	7962      	ldrb	r2, [r4, #5]
d05a0148:	79a1      	ldrb	r1, [r4, #6]
d05a014a:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d05a014e:	79e2      	ldrb	r2, [r4, #7]
d05a0150:	4f61      	ldr	r7, [pc, #388]	; (d05a02d8 <main+0x1b8>)
d05a0152:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d05a0156:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d05a015a:	689b      	ldr	r3, [r3, #8]
d05a015c:	4798      	blx	r3
d05a015e:	f7ff ff6d 	bl	d05a003c <initMalloc>
d05a0162:	7d23      	ldrb	r3, [r4, #20]
d05a0164:	7d62      	ldrb	r2, [r4, #21]
d05a0166:	f44f 7000 	mov.w	r0, #512	; 0x200
d05a016a:	7da1      	ldrb	r1, [r4, #22]
d05a016c:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d05a0170:	7de2      	ldrb	r2, [r4, #23]
d05a0172:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d05a0176:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d05a017a:	681b      	ldr	r3, [r3, #0]
d05a017c:	681b      	ldr	r3, [r3, #0]
d05a017e:	4798      	blx	r3
d05a0180:	7d22      	ldrb	r2, [r4, #20]
d05a0182:	7d60      	ldrb	r0, [r4, #21]
d05a0184:	2190      	movs	r1, #144	; 0x90
d05a0186:	7da3      	ldrb	r3, [r4, #22]
d05a0188:	ea42 2200 	orr.w	r2, r2, r0, lsl #8
d05a018c:	f894 c017 	ldrb.w	ip, [r4, #23]
d05a0190:	ea42 4203 	orr.w	r2, r2, r3, lsl #16
d05a0194:	7b23      	ldrb	r3, [r4, #12]
d05a0196:	7b60      	ldrb	r0, [r4, #13]
d05a0198:	ea42 620c 	orr.w	r2, r2, ip, lsl #24
d05a019c:	ea43 2300 	orr.w	r3, r3, r0, lsl #8
d05a01a0:	7ba0      	ldrb	r0, [r4, #14]
d05a01a2:	6812      	ldr	r2, [r2, #0]
d05a01a4:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
d05a01a8:	7be0      	ldrb	r0, [r4, #15]
d05a01aa:	6852      	ldr	r2, [r2, #4]
d05a01ac:	ea43 6300 	orr.w	r3, r3, r0, lsl #24
d05a01b0:	20dc      	movs	r0, #220	; 0xdc
d05a01b2:	7015      	strb	r5, [r2, #0]
d05a01b4:	681b      	ldr	r3, [r3, #0]
d05a01b6:	691b      	ldr	r3, [r3, #16]
d05a01b8:	4798      	blx	r3
d05a01ba:	7b20      	ldrb	r0, [r4, #12]
d05a01bc:	7b61      	ldrb	r1, [r4, #13]
d05a01be:	f04f 0c06 	mov.w	ip, #6
d05a01c2:	7ba2      	ldrb	r2, [r4, #14]
d05a01c4:	f44f 73a0 	mov.w	r3, #320	; 0x140
d05a01c8:	ea40 2001 	orr.w	r0, r0, r1, lsl #8
d05a01cc:	7be1      	ldrb	r1, [r4, #15]
d05a01ce:	ea40 4002 	orr.w	r0, r0, r2, lsl #16
d05a01d2:	f44f 72f0 	mov.w	r2, #480	; 0x1e0
d05a01d6:	ea40 6001 	orr.w	r0, r0, r1, lsl #24
d05a01da:	4619      	mov	r1, r3
d05a01dc:	6805      	ldr	r5, [r0, #0]
d05a01de:	4610      	mov	r0, r2
d05a01e0:	f8cd c000 	str.w	ip, [sp]
d05a01e4:	696d      	ldr	r5, [r5, #20]
d05a01e6:	47a8      	blx	r5
d05a01e8:	7b23      	ldrb	r3, [r4, #12]
d05a01ea:	7b62      	ldrb	r2, [r4, #13]
d05a01ec:	7ba1      	ldrb	r1, [r4, #14]
d05a01ee:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d05a01f2:	7be2      	ldrb	r2, [r4, #15]
d05a01f4:	4d39      	ldr	r5, [pc, #228]	; (d05a02dc <main+0x1bc>)
d05a01f6:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d05a01fa:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d05a01fe:	681b      	ldr	r3, [r3, #0]
d05a0200:	6b5b      	ldr	r3, [r3, #52]	; 0x34
d05a0202:	4798      	blx	r3
d05a0204:	7b23      	ldrb	r3, [r4, #12]
d05a0206:	7b62      	ldrb	r2, [r4, #13]
d05a0208:	7ba1      	ldrb	r1, [r4, #14]
d05a020a:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d05a020e:	7be2      	ldrb	r2, [r4, #15]
d05a0210:	6038      	str	r0, [r7, #0]
d05a0212:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d05a0216:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d05a021a:	681b      	ldr	r3, [r3, #0]
d05a021c:	6b9b      	ldr	r3, [r3, #56]	; 0x38
d05a021e:	4798      	blx	r3
d05a0220:	6030      	str	r0, [r6, #0]
d05a0222:	e023      	b.n	d05a026c <main+0x14c>
d05a0224:	ea40 4202 	orr.w	r2, r0, r2, lsl #16
d05a0228:	7be3      	ldrb	r3, [r4, #15]
d05a022a:	6831      	ldr	r1, [r6, #0]
d05a022c:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d05a0230:	6838      	ldr	r0, [r7, #0]
d05a0232:	681b      	ldr	r3, [r3, #0]
d05a0234:	6a5b      	ldr	r3, [r3, #36]	; 0x24
d05a0236:	4798      	blx	r3
d05a0238:	7b20      	ldrb	r0, [r4, #12]
d05a023a:	7b61      	ldrb	r1, [r4, #13]
d05a023c:	7ba2      	ldrb	r2, [r4, #14]
d05a023e:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d05a0242:	7be3      	ldrb	r3, [r4, #15]
d05a0244:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d05a0248:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d05a024c:	681b      	ldr	r3, [r3, #0]
d05a024e:	681b      	ldr	r3, [r3, #0]
d05a0250:	4798      	blx	r3
d05a0252:	7d20      	ldrb	r0, [r4, #20]
d05a0254:	7d61      	ldrb	r1, [r4, #21]
d05a0256:	7da2      	ldrb	r2, [r4, #22]
d05a0258:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d05a025c:	7de3      	ldrb	r3, [r4, #23]
d05a025e:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d05a0262:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d05a0266:	685b      	ldr	r3, [r3, #4]
d05a0268:	685b      	ldr	r3, [r3, #4]
d05a026a:	4798      	blx	r3
d05a026c:	7b20      	ldrb	r0, [r4, #12]
d05a026e:	7b61      	ldrb	r1, [r4, #13]
d05a0270:	7ba2      	ldrb	r2, [r4, #14]
d05a0272:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d05a0276:	7be3      	ldrb	r3, [r4, #15]
d05a0278:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d05a027c:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d05a0280:	681b      	ldr	r3, [r3, #0]
d05a0282:	68db      	ldr	r3, [r3, #12]
d05a0284:	4798      	blx	r3
d05a0286:	7b20      	ldrb	r0, [r4, #12]
d05a0288:	7b61      	ldrb	r1, [r4, #13]
d05a028a:	7ba2      	ldrb	r2, [r4, #14]
d05a028c:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d05a0290:	7be3      	ldrb	r3, [r4, #15]
d05a0292:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d05a0296:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d05a029a:	685b      	ldr	r3, [r3, #4]
d05a029c:	681b      	ldr	r3, [r3, #0]
d05a029e:	4798      	blx	r3
d05a02a0:	782b      	ldrb	r3, [r5, #0]
d05a02a2:	7b21      	ldrb	r1, [r4, #12]
d05a02a4:	f1c3 0301 	rsb	r3, r3, #1
d05a02a8:	7b60      	ldrb	r0, [r4, #13]
d05a02aa:	7ba2      	ldrb	r2, [r4, #14]
d05a02ac:	b2db      	uxtb	r3, r3
d05a02ae:	ea41 2000 	orr.w	r0, r1, r0, lsl #8
d05a02b2:	702b      	strb	r3, [r5, #0]
d05a02b4:	2b00      	cmp	r3, #0
d05a02b6:	d1b5      	bne.n	d05a0224 <main+0x104>
d05a02b8:	ea40 4202 	orr.w	r2, r0, r2, lsl #16
d05a02bc:	7be3      	ldrb	r3, [r4, #15]
d05a02be:	6839      	ldr	r1, [r7, #0]
d05a02c0:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d05a02c4:	6830      	ldr	r0, [r6, #0]
d05a02c6:	681b      	ldr	r3, [r3, #0]
d05a02c8:	6a5b      	ldr	r3, [r3, #36]	; 0x24
d05a02ca:	4798      	blx	r3
d05a02cc:	e7b4      	b.n	d05a0238 <main+0x118>
d05a02ce:	bf00      	nop
d05a02d0:	2001f000 	.word	0x2001f000
d05a02d4:	d05a0c00 	.word	0xd05a0c00
d05a02d8:	d05a0be0 	.word	0xd05a0be0
d05a02dc:	d05a0bc8 	.word	0xd05a0bc8

d05a02e0 <__errno>:
d05a02e0:	4b01      	ldr	r3, [pc, #4]	; (d05a02e8 <__errno+0x8>)
d05a02e2:	6818      	ldr	r0, [r3, #0]
d05a02e4:	4770      	bx	lr
d05a02e6:	bf00      	nop
d05a02e8:	d05a0b50 	.word	0xd05a0b50

d05a02ec <memset>:
d05a02ec:	4402      	add	r2, r0
d05a02ee:	4603      	mov	r3, r0
d05a02f0:	4293      	cmp	r3, r2
d05a02f2:	d100      	bne.n	d05a02f6 <memset+0xa>
d05a02f4:	4770      	bx	lr
d05a02f6:	f803 1b01 	strb.w	r1, [r3], #1
d05a02fa:	e7f9      	b.n	d05a02f0 <memset+0x4>

d05a02fc <setbuf>:
d05a02fc:	2900      	cmp	r1, #0
d05a02fe:	f44f 6380 	mov.w	r3, #1024	; 0x400
d05a0302:	bf0c      	ite	eq
d05a0304:	2202      	moveq	r2, #2
d05a0306:	2200      	movne	r2, #0
d05a0308:	f000 b800 	b.w	d05a030c <setvbuf>

d05a030c <setvbuf>:
d05a030c:	e92d 43f7 	stmdb	sp!, {r0, r1, r2, r4, r5, r6, r7, r8, r9, lr}
d05a0310:	461d      	mov	r5, r3
d05a0312:	4b5d      	ldr	r3, [pc, #372]	; (d05a0488 <setvbuf+0x17c>)
d05a0314:	681f      	ldr	r7, [r3, #0]
d05a0316:	4604      	mov	r4, r0
d05a0318:	460e      	mov	r6, r1
d05a031a:	4690      	mov	r8, r2
d05a031c:	b127      	cbz	r7, d05a0328 <setvbuf+0x1c>
d05a031e:	69bb      	ldr	r3, [r7, #24]
d05a0320:	b913      	cbnz	r3, d05a0328 <setvbuf+0x1c>
d05a0322:	4638      	mov	r0, r7
d05a0324:	f000 f9d2 	bl	d05a06cc <__sinit>
d05a0328:	4b58      	ldr	r3, [pc, #352]	; (d05a048c <setvbuf+0x180>)
d05a032a:	429c      	cmp	r4, r3
d05a032c:	d167      	bne.n	d05a03fe <setvbuf+0xf2>
d05a032e:	687c      	ldr	r4, [r7, #4]
d05a0330:	f1b8 0f02 	cmp.w	r8, #2
d05a0334:	d006      	beq.n	d05a0344 <setvbuf+0x38>
d05a0336:	f1b8 0f01 	cmp.w	r8, #1
d05a033a:	f200 809f 	bhi.w	d05a047c <setvbuf+0x170>
d05a033e:	2d00      	cmp	r5, #0
d05a0340:	f2c0 809c 	blt.w	d05a047c <setvbuf+0x170>
d05a0344:	6e63      	ldr	r3, [r4, #100]	; 0x64
d05a0346:	07db      	lsls	r3, r3, #31
d05a0348:	d405      	bmi.n	d05a0356 <setvbuf+0x4a>
d05a034a:	89a3      	ldrh	r3, [r4, #12]
d05a034c:	0598      	lsls	r0, r3, #22
d05a034e:	d402      	bmi.n	d05a0356 <setvbuf+0x4a>
d05a0350:	6da0      	ldr	r0, [r4, #88]	; 0x58
d05a0352:	f000 fa59 	bl	d05a0808 <__retarget_lock_acquire_recursive>
d05a0356:	4621      	mov	r1, r4
d05a0358:	4638      	mov	r0, r7
d05a035a:	f000 f923 	bl	d05a05a4 <_fflush_r>
d05a035e:	6b61      	ldr	r1, [r4, #52]	; 0x34
d05a0360:	b141      	cbz	r1, d05a0374 <setvbuf+0x68>
d05a0362:	f104 0344 	add.w	r3, r4, #68	; 0x44
d05a0366:	4299      	cmp	r1, r3
d05a0368:	d002      	beq.n	d05a0370 <setvbuf+0x64>
d05a036a:	4638      	mov	r0, r7
d05a036c:	f000 fa7a 	bl	d05a0864 <_free_r>
d05a0370:	2300      	movs	r3, #0
d05a0372:	6363      	str	r3, [r4, #52]	; 0x34
d05a0374:	2300      	movs	r3, #0
d05a0376:	61a3      	str	r3, [r4, #24]
d05a0378:	6063      	str	r3, [r4, #4]
d05a037a:	89a3      	ldrh	r3, [r4, #12]
d05a037c:	0619      	lsls	r1, r3, #24
d05a037e:	d503      	bpl.n	d05a0388 <setvbuf+0x7c>
d05a0380:	6921      	ldr	r1, [r4, #16]
d05a0382:	4638      	mov	r0, r7
d05a0384:	f000 fa6e 	bl	d05a0864 <_free_r>
d05a0388:	89a3      	ldrh	r3, [r4, #12]
d05a038a:	f423 634a 	bic.w	r3, r3, #3232	; 0xca0
d05a038e:	f023 0303 	bic.w	r3, r3, #3
d05a0392:	f1b8 0f02 	cmp.w	r8, #2
d05a0396:	81a3      	strh	r3, [r4, #12]
d05a0398:	d06c      	beq.n	d05a0474 <setvbuf+0x168>
d05a039a:	ab01      	add	r3, sp, #4
d05a039c:	466a      	mov	r2, sp
d05a039e:	4621      	mov	r1, r4
d05a03a0:	4638      	mov	r0, r7
d05a03a2:	f000 fa33 	bl	d05a080c <__swhatbuf_r>
d05a03a6:	89a3      	ldrh	r3, [r4, #12]
d05a03a8:	4318      	orrs	r0, r3
d05a03aa:	81a0      	strh	r0, [r4, #12]
d05a03ac:	2d00      	cmp	r5, #0
d05a03ae:	d130      	bne.n	d05a0412 <setvbuf+0x106>
d05a03b0:	9d00      	ldr	r5, [sp, #0]
d05a03b2:	4628      	mov	r0, r5
d05a03b4:	f000 fa4e 	bl	d05a0854 <malloc>
d05a03b8:	4606      	mov	r6, r0
d05a03ba:	2800      	cmp	r0, #0
d05a03bc:	d155      	bne.n	d05a046a <setvbuf+0x15e>
d05a03be:	f8dd 9000 	ldr.w	r9, [sp]
d05a03c2:	45a9      	cmp	r9, r5
d05a03c4:	d14a      	bne.n	d05a045c <setvbuf+0x150>
d05a03c6:	f04f 35ff 	mov.w	r5, #4294967295	; 0xffffffff
d05a03ca:	2200      	movs	r2, #0
d05a03cc:	60a2      	str	r2, [r4, #8]
d05a03ce:	f104 0247 	add.w	r2, r4, #71	; 0x47
d05a03d2:	6022      	str	r2, [r4, #0]
d05a03d4:	6122      	str	r2, [r4, #16]
d05a03d6:	2201      	movs	r2, #1
d05a03d8:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
d05a03dc:	6162      	str	r2, [r4, #20]
d05a03de:	6e62      	ldr	r2, [r4, #100]	; 0x64
d05a03e0:	f043 0302 	orr.w	r3, r3, #2
d05a03e4:	07d2      	lsls	r2, r2, #31
d05a03e6:	81a3      	strh	r3, [r4, #12]
d05a03e8:	d405      	bmi.n	d05a03f6 <setvbuf+0xea>
d05a03ea:	f413 7f00 	tst.w	r3, #512	; 0x200
d05a03ee:	d102      	bne.n	d05a03f6 <setvbuf+0xea>
d05a03f0:	6da0      	ldr	r0, [r4, #88]	; 0x58
d05a03f2:	f000 fa0a 	bl	d05a080a <__retarget_lock_release_recursive>
d05a03f6:	4628      	mov	r0, r5
d05a03f8:	b003      	add	sp, #12
d05a03fa:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
d05a03fe:	4b24      	ldr	r3, [pc, #144]	; (d05a0490 <setvbuf+0x184>)
d05a0400:	429c      	cmp	r4, r3
d05a0402:	d101      	bne.n	d05a0408 <setvbuf+0xfc>
d05a0404:	68bc      	ldr	r4, [r7, #8]
d05a0406:	e793      	b.n	d05a0330 <setvbuf+0x24>
d05a0408:	4b22      	ldr	r3, [pc, #136]	; (d05a0494 <setvbuf+0x188>)
d05a040a:	429c      	cmp	r4, r3
d05a040c:	bf08      	it	eq
d05a040e:	68fc      	ldreq	r4, [r7, #12]
d05a0410:	e78e      	b.n	d05a0330 <setvbuf+0x24>
d05a0412:	2e00      	cmp	r6, #0
d05a0414:	d0cd      	beq.n	d05a03b2 <setvbuf+0xa6>
d05a0416:	69bb      	ldr	r3, [r7, #24]
d05a0418:	b913      	cbnz	r3, d05a0420 <setvbuf+0x114>
d05a041a:	4638      	mov	r0, r7
d05a041c:	f000 f956 	bl	d05a06cc <__sinit>
d05a0420:	f1b8 0f01 	cmp.w	r8, #1
d05a0424:	bf08      	it	eq
d05a0426:	89a3      	ldrheq	r3, [r4, #12]
d05a0428:	6026      	str	r6, [r4, #0]
d05a042a:	bf04      	itt	eq
d05a042c:	f043 0301 	orreq.w	r3, r3, #1
d05a0430:	81a3      	strheq	r3, [r4, #12]
d05a0432:	89a2      	ldrh	r2, [r4, #12]
d05a0434:	f012 0308 	ands.w	r3, r2, #8
d05a0438:	e9c4 6504 	strd	r6, r5, [r4, #16]
d05a043c:	d01c      	beq.n	d05a0478 <setvbuf+0x16c>
d05a043e:	07d3      	lsls	r3, r2, #31
d05a0440:	bf41      	itttt	mi
d05a0442:	2300      	movmi	r3, #0
d05a0444:	426d      	negmi	r5, r5
d05a0446:	60a3      	strmi	r3, [r4, #8]
d05a0448:	61a5      	strmi	r5, [r4, #24]
d05a044a:	bf58      	it	pl
d05a044c:	60a5      	strpl	r5, [r4, #8]
d05a044e:	6e65      	ldr	r5, [r4, #100]	; 0x64
d05a0450:	f015 0501 	ands.w	r5, r5, #1
d05a0454:	d115      	bne.n	d05a0482 <setvbuf+0x176>
d05a0456:	f412 7f00 	tst.w	r2, #512	; 0x200
d05a045a:	e7c8      	b.n	d05a03ee <setvbuf+0xe2>
d05a045c:	4648      	mov	r0, r9
d05a045e:	f000 f9f9 	bl	d05a0854 <malloc>
d05a0462:	4606      	mov	r6, r0
d05a0464:	2800      	cmp	r0, #0
d05a0466:	d0ae      	beq.n	d05a03c6 <setvbuf+0xba>
d05a0468:	464d      	mov	r5, r9
d05a046a:	89a3      	ldrh	r3, [r4, #12]
d05a046c:	f043 0380 	orr.w	r3, r3, #128	; 0x80
d05a0470:	81a3      	strh	r3, [r4, #12]
d05a0472:	e7d0      	b.n	d05a0416 <setvbuf+0x10a>
d05a0474:	2500      	movs	r5, #0
d05a0476:	e7a8      	b.n	d05a03ca <setvbuf+0xbe>
d05a0478:	60a3      	str	r3, [r4, #8]
d05a047a:	e7e8      	b.n	d05a044e <setvbuf+0x142>
d05a047c:	f04f 35ff 	mov.w	r5, #4294967295	; 0xffffffff
d05a0480:	e7b9      	b.n	d05a03f6 <setvbuf+0xea>
d05a0482:	2500      	movs	r5, #0
d05a0484:	e7b7      	b.n	d05a03f6 <setvbuf+0xea>
d05a0486:	bf00      	nop
d05a0488:	d05a0b50 	.word	0xd05a0b50
d05a048c:	d05a0b08 	.word	0xd05a0b08
d05a0490:	d05a0b28 	.word	0xd05a0b28
d05a0494:	d05a0ae8 	.word	0xd05a0ae8

d05a0498 <__sflush_r>:
d05a0498:	898a      	ldrh	r2, [r1, #12]
d05a049a:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
d05a049e:	4605      	mov	r5, r0
d05a04a0:	0710      	lsls	r0, r2, #28
d05a04a2:	460c      	mov	r4, r1
d05a04a4:	d458      	bmi.n	d05a0558 <__sflush_r+0xc0>
d05a04a6:	684b      	ldr	r3, [r1, #4]
d05a04a8:	2b00      	cmp	r3, #0
d05a04aa:	dc05      	bgt.n	d05a04b8 <__sflush_r+0x20>
d05a04ac:	6c0b      	ldr	r3, [r1, #64]	; 0x40
d05a04ae:	2b00      	cmp	r3, #0
d05a04b0:	dc02      	bgt.n	d05a04b8 <__sflush_r+0x20>
d05a04b2:	2000      	movs	r0, #0
d05a04b4:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
d05a04b8:	6ae6      	ldr	r6, [r4, #44]	; 0x2c
d05a04ba:	2e00      	cmp	r6, #0
d05a04bc:	d0f9      	beq.n	d05a04b2 <__sflush_r+0x1a>
d05a04be:	2300      	movs	r3, #0
d05a04c0:	f412 5280 	ands.w	r2, r2, #4096	; 0x1000
d05a04c4:	682f      	ldr	r7, [r5, #0]
d05a04c6:	602b      	str	r3, [r5, #0]
d05a04c8:	d032      	beq.n	d05a0530 <__sflush_r+0x98>
d05a04ca:	6d60      	ldr	r0, [r4, #84]	; 0x54
d05a04cc:	89a3      	ldrh	r3, [r4, #12]
d05a04ce:	075a      	lsls	r2, r3, #29
d05a04d0:	d505      	bpl.n	d05a04de <__sflush_r+0x46>
d05a04d2:	6863      	ldr	r3, [r4, #4]
d05a04d4:	1ac0      	subs	r0, r0, r3
d05a04d6:	6b63      	ldr	r3, [r4, #52]	; 0x34
d05a04d8:	b10b      	cbz	r3, d05a04de <__sflush_r+0x46>
d05a04da:	6c23      	ldr	r3, [r4, #64]	; 0x40
d05a04dc:	1ac0      	subs	r0, r0, r3
d05a04de:	2300      	movs	r3, #0
d05a04e0:	4602      	mov	r2, r0
d05a04e2:	6ae6      	ldr	r6, [r4, #44]	; 0x2c
d05a04e4:	6a21      	ldr	r1, [r4, #32]
d05a04e6:	4628      	mov	r0, r5
d05a04e8:	47b0      	blx	r6
d05a04ea:	1c43      	adds	r3, r0, #1
d05a04ec:	89a3      	ldrh	r3, [r4, #12]
d05a04ee:	d106      	bne.n	d05a04fe <__sflush_r+0x66>
d05a04f0:	6829      	ldr	r1, [r5, #0]
d05a04f2:	291d      	cmp	r1, #29
d05a04f4:	d82c      	bhi.n	d05a0550 <__sflush_r+0xb8>
d05a04f6:	4a2a      	ldr	r2, [pc, #168]	; (d05a05a0 <__sflush_r+0x108>)
d05a04f8:	40ca      	lsrs	r2, r1
d05a04fa:	07d6      	lsls	r6, r2, #31
d05a04fc:	d528      	bpl.n	d05a0550 <__sflush_r+0xb8>
d05a04fe:	2200      	movs	r2, #0
d05a0500:	6062      	str	r2, [r4, #4]
d05a0502:	04d9      	lsls	r1, r3, #19
d05a0504:	6922      	ldr	r2, [r4, #16]
d05a0506:	6022      	str	r2, [r4, #0]
d05a0508:	d504      	bpl.n	d05a0514 <__sflush_r+0x7c>
d05a050a:	1c42      	adds	r2, r0, #1
d05a050c:	d101      	bne.n	d05a0512 <__sflush_r+0x7a>
d05a050e:	682b      	ldr	r3, [r5, #0]
d05a0510:	b903      	cbnz	r3, d05a0514 <__sflush_r+0x7c>
d05a0512:	6560      	str	r0, [r4, #84]	; 0x54
d05a0514:	6b61      	ldr	r1, [r4, #52]	; 0x34
d05a0516:	602f      	str	r7, [r5, #0]
d05a0518:	2900      	cmp	r1, #0
d05a051a:	d0ca      	beq.n	d05a04b2 <__sflush_r+0x1a>
d05a051c:	f104 0344 	add.w	r3, r4, #68	; 0x44
d05a0520:	4299      	cmp	r1, r3
d05a0522:	d002      	beq.n	d05a052a <__sflush_r+0x92>
d05a0524:	4628      	mov	r0, r5
d05a0526:	f000 f99d 	bl	d05a0864 <_free_r>
d05a052a:	2000      	movs	r0, #0
d05a052c:	6360      	str	r0, [r4, #52]	; 0x34
d05a052e:	e7c1      	b.n	d05a04b4 <__sflush_r+0x1c>
d05a0530:	6a21      	ldr	r1, [r4, #32]
d05a0532:	2301      	movs	r3, #1
d05a0534:	4628      	mov	r0, r5
d05a0536:	47b0      	blx	r6
d05a0538:	1c41      	adds	r1, r0, #1
d05a053a:	d1c7      	bne.n	d05a04cc <__sflush_r+0x34>
d05a053c:	682b      	ldr	r3, [r5, #0]
d05a053e:	2b00      	cmp	r3, #0
d05a0540:	d0c4      	beq.n	d05a04cc <__sflush_r+0x34>
d05a0542:	2b1d      	cmp	r3, #29
d05a0544:	d001      	beq.n	d05a054a <__sflush_r+0xb2>
d05a0546:	2b16      	cmp	r3, #22
d05a0548:	d101      	bne.n	d05a054e <__sflush_r+0xb6>
d05a054a:	602f      	str	r7, [r5, #0]
d05a054c:	e7b1      	b.n	d05a04b2 <__sflush_r+0x1a>
d05a054e:	89a3      	ldrh	r3, [r4, #12]
d05a0550:	f043 0340 	orr.w	r3, r3, #64	; 0x40
d05a0554:	81a3      	strh	r3, [r4, #12]
d05a0556:	e7ad      	b.n	d05a04b4 <__sflush_r+0x1c>
d05a0558:	690f      	ldr	r7, [r1, #16]
d05a055a:	2f00      	cmp	r7, #0
d05a055c:	d0a9      	beq.n	d05a04b2 <__sflush_r+0x1a>
d05a055e:	0793      	lsls	r3, r2, #30
d05a0560:	680e      	ldr	r6, [r1, #0]
d05a0562:	bf08      	it	eq
d05a0564:	694b      	ldreq	r3, [r1, #20]
d05a0566:	600f      	str	r7, [r1, #0]
d05a0568:	bf18      	it	ne
d05a056a:	2300      	movne	r3, #0
d05a056c:	eba6 0807 	sub.w	r8, r6, r7
d05a0570:	608b      	str	r3, [r1, #8]
d05a0572:	f1b8 0f00 	cmp.w	r8, #0
d05a0576:	dd9c      	ble.n	d05a04b2 <__sflush_r+0x1a>
d05a0578:	6a21      	ldr	r1, [r4, #32]
d05a057a:	6aa6      	ldr	r6, [r4, #40]	; 0x28
d05a057c:	4643      	mov	r3, r8
d05a057e:	463a      	mov	r2, r7
d05a0580:	4628      	mov	r0, r5
d05a0582:	47b0      	blx	r6
d05a0584:	2800      	cmp	r0, #0
d05a0586:	dc06      	bgt.n	d05a0596 <__sflush_r+0xfe>
d05a0588:	89a3      	ldrh	r3, [r4, #12]
d05a058a:	f043 0340 	orr.w	r3, r3, #64	; 0x40
d05a058e:	81a3      	strh	r3, [r4, #12]
d05a0590:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d05a0594:	e78e      	b.n	d05a04b4 <__sflush_r+0x1c>
d05a0596:	4407      	add	r7, r0
d05a0598:	eba8 0800 	sub.w	r8, r8, r0
d05a059c:	e7e9      	b.n	d05a0572 <__sflush_r+0xda>
d05a059e:	bf00      	nop
d05a05a0:	20400001 	.word	0x20400001

d05a05a4 <_fflush_r>:
d05a05a4:	b538      	push	{r3, r4, r5, lr}
d05a05a6:	690b      	ldr	r3, [r1, #16]
d05a05a8:	4605      	mov	r5, r0
d05a05aa:	460c      	mov	r4, r1
d05a05ac:	b913      	cbnz	r3, d05a05b4 <_fflush_r+0x10>
d05a05ae:	2500      	movs	r5, #0
d05a05b0:	4628      	mov	r0, r5
d05a05b2:	bd38      	pop	{r3, r4, r5, pc}
d05a05b4:	b118      	cbz	r0, d05a05be <_fflush_r+0x1a>
d05a05b6:	6983      	ldr	r3, [r0, #24]
d05a05b8:	b90b      	cbnz	r3, d05a05be <_fflush_r+0x1a>
d05a05ba:	f000 f887 	bl	d05a06cc <__sinit>
d05a05be:	4b14      	ldr	r3, [pc, #80]	; (d05a0610 <_fflush_r+0x6c>)
d05a05c0:	429c      	cmp	r4, r3
d05a05c2:	d11b      	bne.n	d05a05fc <_fflush_r+0x58>
d05a05c4:	686c      	ldr	r4, [r5, #4]
d05a05c6:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
d05a05ca:	2b00      	cmp	r3, #0
d05a05cc:	d0ef      	beq.n	d05a05ae <_fflush_r+0xa>
d05a05ce:	6e62      	ldr	r2, [r4, #100]	; 0x64
d05a05d0:	07d0      	lsls	r0, r2, #31
d05a05d2:	d404      	bmi.n	d05a05de <_fflush_r+0x3a>
d05a05d4:	0599      	lsls	r1, r3, #22
d05a05d6:	d402      	bmi.n	d05a05de <_fflush_r+0x3a>
d05a05d8:	6da0      	ldr	r0, [r4, #88]	; 0x58
d05a05da:	f000 f915 	bl	d05a0808 <__retarget_lock_acquire_recursive>
d05a05de:	4628      	mov	r0, r5
d05a05e0:	4621      	mov	r1, r4
d05a05e2:	f7ff ff59 	bl	d05a0498 <__sflush_r>
d05a05e6:	6e63      	ldr	r3, [r4, #100]	; 0x64
d05a05e8:	07da      	lsls	r2, r3, #31
d05a05ea:	4605      	mov	r5, r0
d05a05ec:	d4e0      	bmi.n	d05a05b0 <_fflush_r+0xc>
d05a05ee:	89a3      	ldrh	r3, [r4, #12]
d05a05f0:	059b      	lsls	r3, r3, #22
d05a05f2:	d4dd      	bmi.n	d05a05b0 <_fflush_r+0xc>
d05a05f4:	6da0      	ldr	r0, [r4, #88]	; 0x58
d05a05f6:	f000 f908 	bl	d05a080a <__retarget_lock_release_recursive>
d05a05fa:	e7d9      	b.n	d05a05b0 <_fflush_r+0xc>
d05a05fc:	4b05      	ldr	r3, [pc, #20]	; (d05a0614 <_fflush_r+0x70>)
d05a05fe:	429c      	cmp	r4, r3
d05a0600:	d101      	bne.n	d05a0606 <_fflush_r+0x62>
d05a0602:	68ac      	ldr	r4, [r5, #8]
d05a0604:	e7df      	b.n	d05a05c6 <_fflush_r+0x22>
d05a0606:	4b04      	ldr	r3, [pc, #16]	; (d05a0618 <_fflush_r+0x74>)
d05a0608:	429c      	cmp	r4, r3
d05a060a:	bf08      	it	eq
d05a060c:	68ec      	ldreq	r4, [r5, #12]
d05a060e:	e7da      	b.n	d05a05c6 <_fflush_r+0x22>
d05a0610:	d05a0b08 	.word	0xd05a0b08
d05a0614:	d05a0b28 	.word	0xd05a0b28
d05a0618:	d05a0ae8 	.word	0xd05a0ae8

d05a061c <std>:
d05a061c:	2300      	movs	r3, #0
d05a061e:	b510      	push	{r4, lr}
d05a0620:	4604      	mov	r4, r0
d05a0622:	e9c0 3300 	strd	r3, r3, [r0]
d05a0626:	e9c0 3304 	strd	r3, r3, [r0, #16]
d05a062a:	6083      	str	r3, [r0, #8]
d05a062c:	8181      	strh	r1, [r0, #12]
d05a062e:	6643      	str	r3, [r0, #100]	; 0x64
d05a0630:	81c2      	strh	r2, [r0, #14]
d05a0632:	6183      	str	r3, [r0, #24]
d05a0634:	4619      	mov	r1, r3
d05a0636:	2208      	movs	r2, #8
d05a0638:	305c      	adds	r0, #92	; 0x5c
d05a063a:	f7ff fe57 	bl	d05a02ec <memset>
d05a063e:	4b05      	ldr	r3, [pc, #20]	; (d05a0654 <std+0x38>)
d05a0640:	6263      	str	r3, [r4, #36]	; 0x24
d05a0642:	4b05      	ldr	r3, [pc, #20]	; (d05a0658 <std+0x3c>)
d05a0644:	62a3      	str	r3, [r4, #40]	; 0x28
d05a0646:	4b05      	ldr	r3, [pc, #20]	; (d05a065c <std+0x40>)
d05a0648:	62e3      	str	r3, [r4, #44]	; 0x2c
d05a064a:	4b05      	ldr	r3, [pc, #20]	; (d05a0660 <std+0x44>)
d05a064c:	6224      	str	r4, [r4, #32]
d05a064e:	6323      	str	r3, [r4, #48]	; 0x30
d05a0650:	bd10      	pop	{r4, pc}
d05a0652:	bf00      	nop
d05a0654:	d05a09b9 	.word	0xd05a09b9
d05a0658:	d05a09db 	.word	0xd05a09db
d05a065c:	d05a0a13 	.word	0xd05a0a13
d05a0660:	d05a0a37 	.word	0xd05a0a37

d05a0664 <_cleanup_r>:
d05a0664:	4901      	ldr	r1, [pc, #4]	; (d05a066c <_cleanup_r+0x8>)
d05a0666:	f000 b8af 	b.w	d05a07c8 <_fwalk_reent>
d05a066a:	bf00      	nop
d05a066c:	d05a05a5 	.word	0xd05a05a5

d05a0670 <__sfmoreglue>:
d05a0670:	b570      	push	{r4, r5, r6, lr}
d05a0672:	1e4a      	subs	r2, r1, #1
d05a0674:	2568      	movs	r5, #104	; 0x68
d05a0676:	4355      	muls	r5, r2
d05a0678:	460e      	mov	r6, r1
d05a067a:	f105 0174 	add.w	r1, r5, #116	; 0x74
d05a067e:	f000 f941 	bl	d05a0904 <_malloc_r>
d05a0682:	4604      	mov	r4, r0
d05a0684:	b140      	cbz	r0, d05a0698 <__sfmoreglue+0x28>
d05a0686:	2100      	movs	r1, #0
d05a0688:	e9c0 1600 	strd	r1, r6, [r0]
d05a068c:	300c      	adds	r0, #12
d05a068e:	60a0      	str	r0, [r4, #8]
d05a0690:	f105 0268 	add.w	r2, r5, #104	; 0x68
d05a0694:	f7ff fe2a 	bl	d05a02ec <memset>
d05a0698:	4620      	mov	r0, r4
d05a069a:	bd70      	pop	{r4, r5, r6, pc}

d05a069c <__sfp_lock_acquire>:
d05a069c:	4801      	ldr	r0, [pc, #4]	; (d05a06a4 <__sfp_lock_acquire+0x8>)
d05a069e:	f000 b8b3 	b.w	d05a0808 <__retarget_lock_acquire_recursive>
d05a06a2:	bf00      	nop
d05a06a4:	d05a0c18 	.word	0xd05a0c18

d05a06a8 <__sfp_lock_release>:
d05a06a8:	4801      	ldr	r0, [pc, #4]	; (d05a06b0 <__sfp_lock_release+0x8>)
d05a06aa:	f000 b8ae 	b.w	d05a080a <__retarget_lock_release_recursive>
d05a06ae:	bf00      	nop
d05a06b0:	d05a0c18 	.word	0xd05a0c18

d05a06b4 <__sinit_lock_acquire>:
d05a06b4:	4801      	ldr	r0, [pc, #4]	; (d05a06bc <__sinit_lock_acquire+0x8>)
d05a06b6:	f000 b8a7 	b.w	d05a0808 <__retarget_lock_acquire_recursive>
d05a06ba:	bf00      	nop
d05a06bc:	d05a0c13 	.word	0xd05a0c13

d05a06c0 <__sinit_lock_release>:
d05a06c0:	4801      	ldr	r0, [pc, #4]	; (d05a06c8 <__sinit_lock_release+0x8>)
d05a06c2:	f000 b8a2 	b.w	d05a080a <__retarget_lock_release_recursive>
d05a06c6:	bf00      	nop
d05a06c8:	d05a0c13 	.word	0xd05a0c13

d05a06cc <__sinit>:
d05a06cc:	b510      	push	{r4, lr}
d05a06ce:	4604      	mov	r4, r0
d05a06d0:	f7ff fff0 	bl	d05a06b4 <__sinit_lock_acquire>
d05a06d4:	69a3      	ldr	r3, [r4, #24]
d05a06d6:	b11b      	cbz	r3, d05a06e0 <__sinit+0x14>
d05a06d8:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
d05a06dc:	f7ff bff0 	b.w	d05a06c0 <__sinit_lock_release>
d05a06e0:	e9c4 3312 	strd	r3, r3, [r4, #72]	; 0x48
d05a06e4:	6523      	str	r3, [r4, #80]	; 0x50
d05a06e6:	4b13      	ldr	r3, [pc, #76]	; (d05a0734 <__sinit+0x68>)
d05a06e8:	4a13      	ldr	r2, [pc, #76]	; (d05a0738 <__sinit+0x6c>)
d05a06ea:	681b      	ldr	r3, [r3, #0]
d05a06ec:	62a2      	str	r2, [r4, #40]	; 0x28
d05a06ee:	42a3      	cmp	r3, r4
d05a06f0:	bf04      	itt	eq
d05a06f2:	2301      	moveq	r3, #1
d05a06f4:	61a3      	streq	r3, [r4, #24]
d05a06f6:	4620      	mov	r0, r4
d05a06f8:	f000 f820 	bl	d05a073c <__sfp>
d05a06fc:	6060      	str	r0, [r4, #4]
d05a06fe:	4620      	mov	r0, r4
d05a0700:	f000 f81c 	bl	d05a073c <__sfp>
d05a0704:	60a0      	str	r0, [r4, #8]
d05a0706:	4620      	mov	r0, r4
d05a0708:	f000 f818 	bl	d05a073c <__sfp>
d05a070c:	2200      	movs	r2, #0
d05a070e:	60e0      	str	r0, [r4, #12]
d05a0710:	2104      	movs	r1, #4
d05a0712:	6860      	ldr	r0, [r4, #4]
d05a0714:	f7ff ff82 	bl	d05a061c <std>
d05a0718:	68a0      	ldr	r0, [r4, #8]
d05a071a:	2201      	movs	r2, #1
d05a071c:	2109      	movs	r1, #9
d05a071e:	f7ff ff7d 	bl	d05a061c <std>
d05a0722:	68e0      	ldr	r0, [r4, #12]
d05a0724:	2202      	movs	r2, #2
d05a0726:	2112      	movs	r1, #18
d05a0728:	f7ff ff78 	bl	d05a061c <std>
d05a072c:	2301      	movs	r3, #1
d05a072e:	61a3      	str	r3, [r4, #24]
d05a0730:	e7d2      	b.n	d05a06d8 <__sinit+0xc>
d05a0732:	bf00      	nop
d05a0734:	d05a0ae4 	.word	0xd05a0ae4
d05a0738:	d05a0665 	.word	0xd05a0665

d05a073c <__sfp>:
d05a073c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d05a073e:	4607      	mov	r7, r0
d05a0740:	f7ff ffac 	bl	d05a069c <__sfp_lock_acquire>
d05a0744:	4b1e      	ldr	r3, [pc, #120]	; (d05a07c0 <__sfp+0x84>)
d05a0746:	681e      	ldr	r6, [r3, #0]
d05a0748:	69b3      	ldr	r3, [r6, #24]
d05a074a:	b913      	cbnz	r3, d05a0752 <__sfp+0x16>
d05a074c:	4630      	mov	r0, r6
d05a074e:	f7ff ffbd 	bl	d05a06cc <__sinit>
d05a0752:	3648      	adds	r6, #72	; 0x48
d05a0754:	e9d6 3401 	ldrd	r3, r4, [r6, #4]
d05a0758:	3b01      	subs	r3, #1
d05a075a:	d503      	bpl.n	d05a0764 <__sfp+0x28>
d05a075c:	6833      	ldr	r3, [r6, #0]
d05a075e:	b30b      	cbz	r3, d05a07a4 <__sfp+0x68>
d05a0760:	6836      	ldr	r6, [r6, #0]
d05a0762:	e7f7      	b.n	d05a0754 <__sfp+0x18>
d05a0764:	f9b4 500c 	ldrsh.w	r5, [r4, #12]
d05a0768:	b9d5      	cbnz	r5, d05a07a0 <__sfp+0x64>
d05a076a:	4b16      	ldr	r3, [pc, #88]	; (d05a07c4 <__sfp+0x88>)
d05a076c:	60e3      	str	r3, [r4, #12]
d05a076e:	f104 0058 	add.w	r0, r4, #88	; 0x58
d05a0772:	6665      	str	r5, [r4, #100]	; 0x64
d05a0774:	f000 f847 	bl	d05a0806 <__retarget_lock_init_recursive>
d05a0778:	f7ff ff96 	bl	d05a06a8 <__sfp_lock_release>
d05a077c:	e9c4 5501 	strd	r5, r5, [r4, #4]
d05a0780:	e9c4 5504 	strd	r5, r5, [r4, #16]
d05a0784:	6025      	str	r5, [r4, #0]
d05a0786:	61a5      	str	r5, [r4, #24]
d05a0788:	2208      	movs	r2, #8
d05a078a:	4629      	mov	r1, r5
d05a078c:	f104 005c 	add.w	r0, r4, #92	; 0x5c
d05a0790:	f7ff fdac 	bl	d05a02ec <memset>
d05a0794:	e9c4 550d 	strd	r5, r5, [r4, #52]	; 0x34
d05a0798:	e9c4 5512 	strd	r5, r5, [r4, #72]	; 0x48
d05a079c:	4620      	mov	r0, r4
d05a079e:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d05a07a0:	3468      	adds	r4, #104	; 0x68
d05a07a2:	e7d9      	b.n	d05a0758 <__sfp+0x1c>
d05a07a4:	2104      	movs	r1, #4
d05a07a6:	4638      	mov	r0, r7
d05a07a8:	f7ff ff62 	bl	d05a0670 <__sfmoreglue>
d05a07ac:	4604      	mov	r4, r0
d05a07ae:	6030      	str	r0, [r6, #0]
d05a07b0:	2800      	cmp	r0, #0
d05a07b2:	d1d5      	bne.n	d05a0760 <__sfp+0x24>
d05a07b4:	f7ff ff78 	bl	d05a06a8 <__sfp_lock_release>
d05a07b8:	230c      	movs	r3, #12
d05a07ba:	603b      	str	r3, [r7, #0]
d05a07bc:	e7ee      	b.n	d05a079c <__sfp+0x60>
d05a07be:	bf00      	nop
d05a07c0:	d05a0ae4 	.word	0xd05a0ae4
d05a07c4:	ffff0001 	.word	0xffff0001

d05a07c8 <_fwalk_reent>:
d05a07c8:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
d05a07cc:	4606      	mov	r6, r0
d05a07ce:	4688      	mov	r8, r1
d05a07d0:	f100 0448 	add.w	r4, r0, #72	; 0x48
d05a07d4:	2700      	movs	r7, #0
d05a07d6:	e9d4 9501 	ldrd	r9, r5, [r4, #4]
d05a07da:	f1b9 0901 	subs.w	r9, r9, #1
d05a07de:	d505      	bpl.n	d05a07ec <_fwalk_reent+0x24>
d05a07e0:	6824      	ldr	r4, [r4, #0]
d05a07e2:	2c00      	cmp	r4, #0
d05a07e4:	d1f7      	bne.n	d05a07d6 <_fwalk_reent+0xe>
d05a07e6:	4638      	mov	r0, r7
d05a07e8:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
d05a07ec:	89ab      	ldrh	r3, [r5, #12]
d05a07ee:	2b01      	cmp	r3, #1
d05a07f0:	d907      	bls.n	d05a0802 <_fwalk_reent+0x3a>
d05a07f2:	f9b5 300e 	ldrsh.w	r3, [r5, #14]
d05a07f6:	3301      	adds	r3, #1
d05a07f8:	d003      	beq.n	d05a0802 <_fwalk_reent+0x3a>
d05a07fa:	4629      	mov	r1, r5
d05a07fc:	4630      	mov	r0, r6
d05a07fe:	47c0      	blx	r8
d05a0800:	4307      	orrs	r7, r0
d05a0802:	3568      	adds	r5, #104	; 0x68
d05a0804:	e7e9      	b.n	d05a07da <_fwalk_reent+0x12>

d05a0806 <__retarget_lock_init_recursive>:
d05a0806:	4770      	bx	lr

d05a0808 <__retarget_lock_acquire_recursive>:
d05a0808:	4770      	bx	lr

d05a080a <__retarget_lock_release_recursive>:
d05a080a:	4770      	bx	lr

d05a080c <__swhatbuf_r>:
d05a080c:	b570      	push	{r4, r5, r6, lr}
d05a080e:	460e      	mov	r6, r1
d05a0810:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d05a0814:	2900      	cmp	r1, #0
d05a0816:	b096      	sub	sp, #88	; 0x58
d05a0818:	4614      	mov	r4, r2
d05a081a:	461d      	mov	r5, r3
d05a081c:	da07      	bge.n	d05a082e <__swhatbuf_r+0x22>
d05a081e:	2300      	movs	r3, #0
d05a0820:	602b      	str	r3, [r5, #0]
d05a0822:	89b3      	ldrh	r3, [r6, #12]
d05a0824:	061a      	lsls	r2, r3, #24
d05a0826:	d410      	bmi.n	d05a084a <__swhatbuf_r+0x3e>
d05a0828:	f44f 6380 	mov.w	r3, #1024	; 0x400
d05a082c:	e00e      	b.n	d05a084c <__swhatbuf_r+0x40>
d05a082e:	466a      	mov	r2, sp
d05a0830:	f000 f916 	bl	d05a0a60 <_fstat_r>
d05a0834:	2800      	cmp	r0, #0
d05a0836:	dbf2      	blt.n	d05a081e <__swhatbuf_r+0x12>
d05a0838:	9a01      	ldr	r2, [sp, #4]
d05a083a:	f402 4270 	and.w	r2, r2, #61440	; 0xf000
d05a083e:	f5a2 5300 	sub.w	r3, r2, #8192	; 0x2000
d05a0842:	425a      	negs	r2, r3
d05a0844:	415a      	adcs	r2, r3
d05a0846:	602a      	str	r2, [r5, #0]
d05a0848:	e7ee      	b.n	d05a0828 <__swhatbuf_r+0x1c>
d05a084a:	2340      	movs	r3, #64	; 0x40
d05a084c:	2000      	movs	r0, #0
d05a084e:	6023      	str	r3, [r4, #0]
d05a0850:	b016      	add	sp, #88	; 0x58
d05a0852:	bd70      	pop	{r4, r5, r6, pc}

d05a0854 <malloc>:
d05a0854:	4b02      	ldr	r3, [pc, #8]	; (d05a0860 <malloc+0xc>)
d05a0856:	4601      	mov	r1, r0
d05a0858:	6818      	ldr	r0, [r3, #0]
d05a085a:	f000 b853 	b.w	d05a0904 <_malloc_r>
d05a085e:	bf00      	nop
d05a0860:	d05a0b50 	.word	0xd05a0b50

d05a0864 <_free_r>:
d05a0864:	b537      	push	{r0, r1, r2, r4, r5, lr}
d05a0866:	2900      	cmp	r1, #0
d05a0868:	d048      	beq.n	d05a08fc <_free_r+0x98>
d05a086a:	f851 3c04 	ldr.w	r3, [r1, #-4]
d05a086e:	9001      	str	r0, [sp, #4]
d05a0870:	2b00      	cmp	r3, #0
d05a0872:	f1a1 0404 	sub.w	r4, r1, #4
d05a0876:	bfb8      	it	lt
d05a0878:	18e4      	addlt	r4, r4, r3
d05a087a:	f000 f915 	bl	d05a0aa8 <__malloc_lock>
d05a087e:	4a20      	ldr	r2, [pc, #128]	; (d05a0900 <_free_r+0x9c>)
d05a0880:	9801      	ldr	r0, [sp, #4]
d05a0882:	6813      	ldr	r3, [r2, #0]
d05a0884:	4615      	mov	r5, r2
d05a0886:	b933      	cbnz	r3, d05a0896 <_free_r+0x32>
d05a0888:	6063      	str	r3, [r4, #4]
d05a088a:	6014      	str	r4, [r2, #0]
d05a088c:	b003      	add	sp, #12
d05a088e:	e8bd 4030 	ldmia.w	sp!, {r4, r5, lr}
d05a0892:	f000 b90f 	b.w	d05a0ab4 <__malloc_unlock>
d05a0896:	42a3      	cmp	r3, r4
d05a0898:	d90b      	bls.n	d05a08b2 <_free_r+0x4e>
d05a089a:	6821      	ldr	r1, [r4, #0]
d05a089c:	1862      	adds	r2, r4, r1
d05a089e:	4293      	cmp	r3, r2
d05a08a0:	bf04      	itt	eq
d05a08a2:	681a      	ldreq	r2, [r3, #0]
d05a08a4:	685b      	ldreq	r3, [r3, #4]
d05a08a6:	6063      	str	r3, [r4, #4]
d05a08a8:	bf04      	itt	eq
d05a08aa:	1852      	addeq	r2, r2, r1
d05a08ac:	6022      	streq	r2, [r4, #0]
d05a08ae:	602c      	str	r4, [r5, #0]
d05a08b0:	e7ec      	b.n	d05a088c <_free_r+0x28>
d05a08b2:	461a      	mov	r2, r3
d05a08b4:	685b      	ldr	r3, [r3, #4]
d05a08b6:	b10b      	cbz	r3, d05a08bc <_free_r+0x58>
d05a08b8:	42a3      	cmp	r3, r4
d05a08ba:	d9fa      	bls.n	d05a08b2 <_free_r+0x4e>
d05a08bc:	6811      	ldr	r1, [r2, #0]
d05a08be:	1855      	adds	r5, r2, r1
d05a08c0:	42a5      	cmp	r5, r4
d05a08c2:	d10b      	bne.n	d05a08dc <_free_r+0x78>
d05a08c4:	6824      	ldr	r4, [r4, #0]
d05a08c6:	4421      	add	r1, r4
d05a08c8:	1854      	adds	r4, r2, r1
d05a08ca:	42a3      	cmp	r3, r4
d05a08cc:	6011      	str	r1, [r2, #0]
d05a08ce:	d1dd      	bne.n	d05a088c <_free_r+0x28>
d05a08d0:	681c      	ldr	r4, [r3, #0]
d05a08d2:	685b      	ldr	r3, [r3, #4]
d05a08d4:	6053      	str	r3, [r2, #4]
d05a08d6:	4421      	add	r1, r4
d05a08d8:	6011      	str	r1, [r2, #0]
d05a08da:	e7d7      	b.n	d05a088c <_free_r+0x28>
d05a08dc:	d902      	bls.n	d05a08e4 <_free_r+0x80>
d05a08de:	230c      	movs	r3, #12
d05a08e0:	6003      	str	r3, [r0, #0]
d05a08e2:	e7d3      	b.n	d05a088c <_free_r+0x28>
d05a08e4:	6825      	ldr	r5, [r4, #0]
d05a08e6:	1961      	adds	r1, r4, r5
d05a08e8:	428b      	cmp	r3, r1
d05a08ea:	bf04      	itt	eq
d05a08ec:	6819      	ldreq	r1, [r3, #0]
d05a08ee:	685b      	ldreq	r3, [r3, #4]
d05a08f0:	6063      	str	r3, [r4, #4]
d05a08f2:	bf04      	itt	eq
d05a08f4:	1949      	addeq	r1, r1, r5
d05a08f6:	6021      	streq	r1, [r4, #0]
d05a08f8:	6054      	str	r4, [r2, #4]
d05a08fa:	e7c7      	b.n	d05a088c <_free_r+0x28>
d05a08fc:	b003      	add	sp, #12
d05a08fe:	bd30      	pop	{r4, r5, pc}
d05a0900:	d05a0c04 	.word	0xd05a0c04

d05a0904 <_malloc_r>:
d05a0904:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d05a0906:	1ccd      	adds	r5, r1, #3
d05a0908:	f025 0503 	bic.w	r5, r5, #3
d05a090c:	3508      	adds	r5, #8
d05a090e:	2d0c      	cmp	r5, #12
d05a0910:	bf38      	it	cc
d05a0912:	250c      	movcc	r5, #12
d05a0914:	2d00      	cmp	r5, #0
d05a0916:	4606      	mov	r6, r0
d05a0918:	db01      	blt.n	d05a091e <_malloc_r+0x1a>
d05a091a:	42a9      	cmp	r1, r5
d05a091c:	d903      	bls.n	d05a0926 <_malloc_r+0x22>
d05a091e:	230c      	movs	r3, #12
d05a0920:	6033      	str	r3, [r6, #0]
d05a0922:	2000      	movs	r0, #0
d05a0924:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d05a0926:	f000 f8bf 	bl	d05a0aa8 <__malloc_lock>
d05a092a:	4921      	ldr	r1, [pc, #132]	; (d05a09b0 <_malloc_r+0xac>)
d05a092c:	680a      	ldr	r2, [r1, #0]
d05a092e:	4614      	mov	r4, r2
d05a0930:	b99c      	cbnz	r4, d05a095a <_malloc_r+0x56>
d05a0932:	4f20      	ldr	r7, [pc, #128]	; (d05a09b4 <_malloc_r+0xb0>)
d05a0934:	683b      	ldr	r3, [r7, #0]
d05a0936:	b923      	cbnz	r3, d05a0942 <_malloc_r+0x3e>
d05a0938:	4621      	mov	r1, r4
d05a093a:	4630      	mov	r0, r6
d05a093c:	f7ff fbd0 	bl	d05a00e0 <_sbrk_r>
d05a0940:	6038      	str	r0, [r7, #0]
d05a0942:	4629      	mov	r1, r5
d05a0944:	4630      	mov	r0, r6
d05a0946:	f7ff fbcb 	bl	d05a00e0 <_sbrk_r>
d05a094a:	1c43      	adds	r3, r0, #1
d05a094c:	d123      	bne.n	d05a0996 <_malloc_r+0x92>
d05a094e:	230c      	movs	r3, #12
d05a0950:	6033      	str	r3, [r6, #0]
d05a0952:	4630      	mov	r0, r6
d05a0954:	f000 f8ae 	bl	d05a0ab4 <__malloc_unlock>
d05a0958:	e7e3      	b.n	d05a0922 <_malloc_r+0x1e>
d05a095a:	6823      	ldr	r3, [r4, #0]
d05a095c:	1b5b      	subs	r3, r3, r5
d05a095e:	d417      	bmi.n	d05a0990 <_malloc_r+0x8c>
d05a0960:	2b0b      	cmp	r3, #11
d05a0962:	d903      	bls.n	d05a096c <_malloc_r+0x68>
d05a0964:	6023      	str	r3, [r4, #0]
d05a0966:	441c      	add	r4, r3
d05a0968:	6025      	str	r5, [r4, #0]
d05a096a:	e004      	b.n	d05a0976 <_malloc_r+0x72>
d05a096c:	6863      	ldr	r3, [r4, #4]
d05a096e:	42a2      	cmp	r2, r4
d05a0970:	bf0c      	ite	eq
d05a0972:	600b      	streq	r3, [r1, #0]
d05a0974:	6053      	strne	r3, [r2, #4]
d05a0976:	4630      	mov	r0, r6
d05a0978:	f000 f89c 	bl	d05a0ab4 <__malloc_unlock>
d05a097c:	f104 000b 	add.w	r0, r4, #11
d05a0980:	1d23      	adds	r3, r4, #4
d05a0982:	f020 0007 	bic.w	r0, r0, #7
d05a0986:	1ac2      	subs	r2, r0, r3
d05a0988:	d0cc      	beq.n	d05a0924 <_malloc_r+0x20>
d05a098a:	1a1b      	subs	r3, r3, r0
d05a098c:	50a3      	str	r3, [r4, r2]
d05a098e:	e7c9      	b.n	d05a0924 <_malloc_r+0x20>
d05a0990:	4622      	mov	r2, r4
d05a0992:	6864      	ldr	r4, [r4, #4]
d05a0994:	e7cc      	b.n	d05a0930 <_malloc_r+0x2c>
d05a0996:	1cc4      	adds	r4, r0, #3
d05a0998:	f024 0403 	bic.w	r4, r4, #3
d05a099c:	42a0      	cmp	r0, r4
d05a099e:	d0e3      	beq.n	d05a0968 <_malloc_r+0x64>
d05a09a0:	1a21      	subs	r1, r4, r0
d05a09a2:	4630      	mov	r0, r6
d05a09a4:	f7ff fb9c 	bl	d05a00e0 <_sbrk_r>
d05a09a8:	3001      	adds	r0, #1
d05a09aa:	d1dd      	bne.n	d05a0968 <_malloc_r+0x64>
d05a09ac:	e7cf      	b.n	d05a094e <_malloc_r+0x4a>
d05a09ae:	bf00      	nop
d05a09b0:	d05a0c04 	.word	0xd05a0c04
d05a09b4:	d05a0c08 	.word	0xd05a0c08

d05a09b8 <__sread>:
d05a09b8:	b510      	push	{r4, lr}
d05a09ba:	460c      	mov	r4, r1
d05a09bc:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d05a09c0:	f000 f87e 	bl	d05a0ac0 <_read_r>
d05a09c4:	2800      	cmp	r0, #0
d05a09c6:	bfab      	itete	ge
d05a09c8:	6d63      	ldrge	r3, [r4, #84]	; 0x54
d05a09ca:	89a3      	ldrhlt	r3, [r4, #12]
d05a09cc:	181b      	addge	r3, r3, r0
d05a09ce:	f423 5380 	biclt.w	r3, r3, #4096	; 0x1000
d05a09d2:	bfac      	ite	ge
d05a09d4:	6563      	strge	r3, [r4, #84]	; 0x54
d05a09d6:	81a3      	strhlt	r3, [r4, #12]
d05a09d8:	bd10      	pop	{r4, pc}

d05a09da <__swrite>:
d05a09da:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
d05a09de:	461f      	mov	r7, r3
d05a09e0:	898b      	ldrh	r3, [r1, #12]
d05a09e2:	05db      	lsls	r3, r3, #23
d05a09e4:	4605      	mov	r5, r0
d05a09e6:	460c      	mov	r4, r1
d05a09e8:	4616      	mov	r6, r2
d05a09ea:	d505      	bpl.n	d05a09f8 <__swrite+0x1e>
d05a09ec:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d05a09f0:	2302      	movs	r3, #2
d05a09f2:	2200      	movs	r2, #0
d05a09f4:	f000 f846 	bl	d05a0a84 <_lseek_r>
d05a09f8:	89a3      	ldrh	r3, [r4, #12]
d05a09fa:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
d05a09fe:	f423 5380 	bic.w	r3, r3, #4096	; 0x1000
d05a0a02:	81a3      	strh	r3, [r4, #12]
d05a0a04:	4632      	mov	r2, r6
d05a0a06:	463b      	mov	r3, r7
d05a0a08:	4628      	mov	r0, r5
d05a0a0a:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
d05a0a0e:	f7ff bb21 	b.w	d05a0054 <_write_r>

d05a0a12 <__sseek>:
d05a0a12:	b510      	push	{r4, lr}
d05a0a14:	460c      	mov	r4, r1
d05a0a16:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d05a0a1a:	f000 f833 	bl	d05a0a84 <_lseek_r>
d05a0a1e:	1c43      	adds	r3, r0, #1
d05a0a20:	89a3      	ldrh	r3, [r4, #12]
d05a0a22:	bf15      	itete	ne
d05a0a24:	6560      	strne	r0, [r4, #84]	; 0x54
d05a0a26:	f423 5380 	biceq.w	r3, r3, #4096	; 0x1000
d05a0a2a:	f443 5380 	orrne.w	r3, r3, #4096	; 0x1000
d05a0a2e:	81a3      	strheq	r3, [r4, #12]
d05a0a30:	bf18      	it	ne
d05a0a32:	81a3      	strhne	r3, [r4, #12]
d05a0a34:	bd10      	pop	{r4, pc}

d05a0a36 <__sclose>:
d05a0a36:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d05a0a3a:	f000 b801 	b.w	d05a0a40 <_close_r>
	...

d05a0a40 <_close_r>:
d05a0a40:	b538      	push	{r3, r4, r5, lr}
d05a0a42:	4d06      	ldr	r5, [pc, #24]	; (d05a0a5c <_close_r+0x1c>)
d05a0a44:	2300      	movs	r3, #0
d05a0a46:	4604      	mov	r4, r0
d05a0a48:	4608      	mov	r0, r1
d05a0a4a:	602b      	str	r3, [r5, #0]
d05a0a4c:	f7ff fb3c 	bl	d05a00c8 <_close>
d05a0a50:	1c43      	adds	r3, r0, #1
d05a0a52:	d102      	bne.n	d05a0a5a <_close_r+0x1a>
d05a0a54:	682b      	ldr	r3, [r5, #0]
d05a0a56:	b103      	cbz	r3, d05a0a5a <_close_r+0x1a>
d05a0a58:	6023      	str	r3, [r4, #0]
d05a0a5a:	bd38      	pop	{r3, r4, r5, pc}
d05a0a5c:	d05a0c1c 	.word	0xd05a0c1c

d05a0a60 <_fstat_r>:
d05a0a60:	b538      	push	{r3, r4, r5, lr}
d05a0a62:	4d07      	ldr	r5, [pc, #28]	; (d05a0a80 <_fstat_r+0x20>)
d05a0a64:	2300      	movs	r3, #0
d05a0a66:	4604      	mov	r4, r0
d05a0a68:	4608      	mov	r0, r1
d05a0a6a:	4611      	mov	r1, r2
d05a0a6c:	602b      	str	r3, [r5, #0]
d05a0a6e:	f7ff fb2f 	bl	d05a00d0 <_fstat>
d05a0a72:	1c43      	adds	r3, r0, #1
d05a0a74:	d102      	bne.n	d05a0a7c <_fstat_r+0x1c>
d05a0a76:	682b      	ldr	r3, [r5, #0]
d05a0a78:	b103      	cbz	r3, d05a0a7c <_fstat_r+0x1c>
d05a0a7a:	6023      	str	r3, [r4, #0]
d05a0a7c:	bd38      	pop	{r3, r4, r5, pc}
d05a0a7e:	bf00      	nop
d05a0a80:	d05a0c1c 	.word	0xd05a0c1c

d05a0a84 <_lseek_r>:
d05a0a84:	b538      	push	{r3, r4, r5, lr}
d05a0a86:	4d07      	ldr	r5, [pc, #28]	; (d05a0aa4 <_lseek_r+0x20>)
d05a0a88:	4604      	mov	r4, r0
d05a0a8a:	4608      	mov	r0, r1
d05a0a8c:	4611      	mov	r1, r2
d05a0a8e:	2200      	movs	r2, #0
d05a0a90:	602a      	str	r2, [r5, #0]
d05a0a92:	461a      	mov	r2, r3
d05a0a94:	f7ff fb22 	bl	d05a00dc <_lseek>
d05a0a98:	1c43      	adds	r3, r0, #1
d05a0a9a:	d102      	bne.n	d05a0aa2 <_lseek_r+0x1e>
d05a0a9c:	682b      	ldr	r3, [r5, #0]
d05a0a9e:	b103      	cbz	r3, d05a0aa2 <_lseek_r+0x1e>
d05a0aa0:	6023      	str	r3, [r4, #0]
d05a0aa2:	bd38      	pop	{r3, r4, r5, pc}
d05a0aa4:	d05a0c1c 	.word	0xd05a0c1c

d05a0aa8 <__malloc_lock>:
d05a0aa8:	4801      	ldr	r0, [pc, #4]	; (d05a0ab0 <__malloc_lock+0x8>)
d05a0aaa:	f7ff bead 	b.w	d05a0808 <__retarget_lock_acquire_recursive>
d05a0aae:	bf00      	nop
d05a0ab0:	d05a0c14 	.word	0xd05a0c14

d05a0ab4 <__malloc_unlock>:
d05a0ab4:	4801      	ldr	r0, [pc, #4]	; (d05a0abc <__malloc_unlock+0x8>)
d05a0ab6:	f7ff bea8 	b.w	d05a080a <__retarget_lock_release_recursive>
d05a0aba:	bf00      	nop
d05a0abc:	d05a0c14 	.word	0xd05a0c14

d05a0ac0 <_read_r>:
d05a0ac0:	b538      	push	{r3, r4, r5, lr}
d05a0ac2:	4d07      	ldr	r5, [pc, #28]	; (d05a0ae0 <_read_r+0x20>)
d05a0ac4:	4604      	mov	r4, r0
d05a0ac6:	4608      	mov	r0, r1
d05a0ac8:	4611      	mov	r1, r2
d05a0aca:	2200      	movs	r2, #0
d05a0acc:	602a      	str	r2, [r5, #0]
d05a0ace:	461a      	mov	r2, r3
d05a0ad0:	f7ff faf0 	bl	d05a00b4 <_read>
d05a0ad4:	1c43      	adds	r3, r0, #1
d05a0ad6:	d102      	bne.n	d05a0ade <_read_r+0x1e>
d05a0ad8:	682b      	ldr	r3, [r5, #0]
d05a0ada:	b103      	cbz	r3, d05a0ade <_read_r+0x1e>
d05a0adc:	6023      	str	r3, [r4, #0]
d05a0ade:	bd38      	pop	{r3, r4, r5, pc}
d05a0ae0:	d05a0c1c 	.word	0xd05a0c1c

d05a0ae4 <_global_impure_ptr>:
d05a0ae4:	d05a0b54                                T.Z.

d05a0ae8 <__sf_fake_stderr>:
	...

d05a0b08 <__sf_fake_stdin>:
	...

d05a0b28 <__sf_fake_stdout>:
	...

Disassembly of section .init:

d05a0b48 <_init>:
d05a0b48:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d05a0b4a:	bf00      	nop

Disassembly of section .fini:

d05a0b4c <_fini>:
d05a0b4c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d05a0b4e:	bf00      	nop


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
d05a001e:	f000 f94d 	bl	d05a02bc <setbuf>
d05a0022:	6833      	ldr	r3, [r6, #0]
d05a0024:	2100      	movs	r1, #0
d05a0026:	68d8      	ldr	r0, [r3, #12]
d05a0028:	f000 f948 	bl	d05a02bc <setbuf>
d05a002c:	4629      	mov	r1, r5
d05a002e:	4620      	mov	r0, r4
d05a0030:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
d05a0034:	f000 b89c 	b.w	d05a0170 <main>
d05a0038:	d05a0b90 	.word	0xd05a0b90

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
d05a0084:	f000 f90c 	bl	d05a02a0 <__errno>
d05a0088:	2209      	movs	r2, #9
d05a008a:	4603      	mov	r3, r0
d05a008c:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d05a0090:	601a      	str	r2, [r3, #0]
d05a0092:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d05a0094:	d05a0bf8 	.word	0xd05a0bf8
d05a0098:	2001f000 	.word	0x2001f000

d05a009c <_read>:
d05a009c:	b508      	push	{r3, lr}
d05a009e:	f000 f8ff 	bl	d05a02a0 <__errno>
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
d05a00ea:	f000 f8d9 	bl	d05a02a0 <__errno>
d05a00ee:	220c      	movs	r2, #12
d05a00f0:	4603      	mov	r3, r0
d05a00f2:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d05a00f6:	601a      	str	r2, [r3, #0]
d05a00f8:	bd10      	pop	{r4, pc}
d05a00fa:	bf00      	nop
d05a00fc:	d05a0bf4 	.word	0xd05a0bf4
d05a0100:	d05a2c18 	.word	0xd05a2c18
d05a0104:	d0600000 	.word	0xd0600000

d05a0108 <testapp_proc>:
d05a0108:	b111      	cbz	r1, d05a0110 <testapp_proc+0x8>
d05a010a:	680b      	ldr	r3, [r1, #0]
d05a010c:	2b20      	cmp	r3, #32
d05a010e:	d001      	beq.n	d05a0114 <testapp_proc+0xc>
d05a0110:	2000      	movs	r0, #0
d05a0112:	4770      	bx	lr
d05a0114:	68c9      	ldr	r1, [r1, #12]
d05a0116:	f5b1 5f80 	cmp.w	r1, #4096	; 0x1000
d05a011a:	d006      	beq.n	d05a012a <testapp_proc+0x22>
d05a011c:	f248 0004 	movw	r0, #32772	; 0x8004
d05a0120:	4281      	cmp	r1, r0
d05a0122:	bf0c      	ite	eq
d05a0124:	20f0      	moveq	r0, #240	; 0xf0
d05a0126:	2000      	movne	r0, #0
d05a0128:	4770      	bx	lr
d05a012a:	4b0e      	ldr	r3, [pc, #56]	; (d05a0164 <testapp_proc+0x5c>)
d05a012c:	781a      	ldrb	r2, [r3, #0]
d05a012e:	b1b2      	cbz	r2, d05a015e <testapp_proc+0x56>
d05a0130:	b570      	push	{r4, r5, r6, lr}
d05a0132:	4c0d      	ldr	r4, [pc, #52]	; (d05a0168 <testapp_proc+0x60>)
d05a0134:	2500      	movs	r5, #0
d05a0136:	7820      	ldrb	r0, [r4, #0]
d05a0138:	701d      	strb	r5, [r3, #0]
d05a013a:	b170      	cbz	r0, d05a015a <testapp_proc+0x52>
d05a013c:	4a0b      	ldr	r2, [pc, #44]	; (d05a016c <testapp_proc+0x64>)
d05a013e:	7a13      	ldrb	r3, [r2, #8]
d05a0140:	7a56      	ldrb	r6, [r2, #9]
d05a0142:	7a91      	ldrb	r1, [r2, #10]
d05a0144:	ea43 2306 	orr.w	r3, r3, r6, lsl #8
d05a0148:	7ad2      	ldrb	r2, [r2, #11]
d05a014a:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d05a014e:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d05a0152:	685b      	ldr	r3, [r3, #4]
d05a0154:	685b      	ldr	r3, [r3, #4]
d05a0156:	4798      	blx	r3
d05a0158:	7025      	strb	r5, [r4, #0]
d05a015a:	20f0      	movs	r0, #240	; 0xf0
d05a015c:	bd70      	pop	{r4, r5, r6, pc}
d05a015e:	20f0      	movs	r0, #240	; 0xf0
d05a0160:	4770      	bx	lr
d05a0162:	bf00      	nop
d05a0164:	d05a0bfc 	.word	0xd05a0bfc
d05a0168:	d05a0bfd 	.word	0xd05a0bfd
d05a016c:	2001f000 	.word	0x2001f000

d05a0170 <main>:
d05a0170:	b5f0      	push	{r4, r5, r6, r7, lr}
d05a0172:	4b43      	ldr	r3, [pc, #268]	; (d05a0280 <main+0x110>)
d05a0174:	2201      	movs	r2, #1
d05a0176:	4c43      	ldr	r4, [pc, #268]	; (d05a0284 <main+0x114>)
d05a0178:	b085      	sub	sp, #20
d05a017a:	701a      	strb	r2, [r3, #0]
d05a017c:	f240 306d 	movw	r0, #877	; 0x36d
d05a0180:	7a21      	ldrb	r1, [r4, #8]
d05a0182:	27c8      	movs	r7, #200	; 0xc8
d05a0184:	7a65      	ldrb	r5, [r4, #9]
d05a0186:	f44f 7396 	mov.w	r3, #300	; 0x12c
d05a018a:	7aa6      	ldrb	r6, [r4, #10]
d05a018c:	2214      	movs	r2, #20
d05a018e:	ea41 2105 	orr.w	r1, r1, r5, lsl #8
d05a0192:	7ae5      	ldrb	r5, [r4, #11]
d05a0194:	f8df c104 	ldr.w	ip, [pc, #260]	; d05a029c <main+0x12c>
d05a0198:	ea41 4106 	orr.w	r1, r1, r6, lsl #16
d05a019c:	ea41 6105 	orr.w	r1, r1, r5, lsl #24
d05a01a0:	4d39      	ldr	r5, [pc, #228]	; (d05a0288 <main+0x118>)
d05a01a2:	684e      	ldr	r6, [r1, #4]
d05a01a4:	2118      	movs	r1, #24
d05a01a6:	f8cd c004 	str.w	ip, [sp, #4]
d05a01aa:	9002      	str	r0, [sp, #8]
d05a01ac:	4628      	mov	r0, r5
d05a01ae:	9700      	str	r7, [sp, #0]
d05a01b0:	6836      	ldr	r6, [r6, #0]
d05a01b2:	47b0      	blx	r6
d05a01b4:	7a23      	ldrb	r3, [r4, #8]
d05a01b6:	7a62      	ldrb	r2, [r4, #9]
d05a01b8:	7aa1      	ldrb	r1, [r4, #10]
d05a01ba:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d05a01be:	7ae2      	ldrb	r2, [r4, #11]
d05a01c0:	7828      	ldrb	r0, [r5, #0]
d05a01c2:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d05a01c6:	4931      	ldr	r1, [pc, #196]	; (d05a028c <main+0x11c>)
d05a01c8:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d05a01cc:	685b      	ldr	r3, [r3, #4]
d05a01ce:	689b      	ldr	r3, [r3, #8]
d05a01d0:	4798      	blx	r3
d05a01d2:	7a23      	ldrb	r3, [r4, #8]
d05a01d4:	7a62      	ldrb	r2, [r4, #9]
d05a01d6:	7aa1      	ldrb	r1, [r4, #10]
d05a01d8:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d05a01dc:	7ae2      	ldrb	r2, [r4, #11]
d05a01de:	7828      	ldrb	r0, [r5, #0]
d05a01e0:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d05a01e4:	492a      	ldr	r1, [pc, #168]	; (d05a0290 <main+0x120>)
d05a01e6:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d05a01ea:	685b      	ldr	r3, [r3, #4]
d05a01ec:	699b      	ldr	r3, [r3, #24]
d05a01ee:	4798      	blx	r3
d05a01f0:	7a23      	ldrb	r3, [r4, #8]
d05a01f2:	7a62      	ldrb	r2, [r4, #9]
d05a01f4:	7aa1      	ldrb	r1, [r4, #10]
d05a01f6:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d05a01fa:	7ae2      	ldrb	r2, [r4, #11]
d05a01fc:	7828      	ldrb	r0, [r5, #0]
d05a01fe:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d05a0202:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d05a0206:	685b      	ldr	r3, [r3, #4]
d05a0208:	68db      	ldr	r3, [r3, #12]
d05a020a:	4798      	blx	r3
d05a020c:	7a23      	ldrb	r3, [r4, #8]
d05a020e:	7a62      	ldrb	r2, [r4, #9]
d05a0210:	7aa1      	ldrb	r1, [r4, #10]
d05a0212:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d05a0216:	7ae2      	ldrb	r2, [r4, #11]
d05a0218:	7828      	ldrb	r0, [r5, #0]
d05a021a:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d05a021e:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d05a0222:	685b      	ldr	r3, [r3, #4]
d05a0224:	695b      	ldr	r3, [r3, #20]
d05a0226:	4798      	blx	r3
d05a0228:	7823      	ldrb	r3, [r4, #0]
d05a022a:	7862      	ldrb	r2, [r4, #1]
d05a022c:	78a1      	ldrb	r1, [r4, #2]
d05a022e:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d05a0232:	78e2      	ldrb	r2, [r4, #3]
d05a0234:	4817      	ldr	r0, [pc, #92]	; (d05a0294 <main+0x124>)
d05a0236:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d05a023a:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d05a023e:	68db      	ldr	r3, [r3, #12]
d05a0240:	4798      	blx	r3
d05a0242:	7823      	ldrb	r3, [r4, #0]
d05a0244:	7862      	ldrb	r2, [r4, #1]
d05a0246:	78a1      	ldrb	r1, [r4, #2]
d05a0248:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d05a024c:	78e2      	ldrb	r2, [r4, #3]
d05a024e:	4812      	ldr	r0, [pc, #72]	; (d05a0298 <main+0x128>)
d05a0250:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d05a0254:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d05a0258:	68db      	ldr	r3, [r3, #12]
d05a025a:	4798      	blx	r3
d05a025c:	7a23      	ldrb	r3, [r4, #8]
d05a025e:	7a62      	ldrb	r2, [r4, #9]
d05a0260:	7aa1      	ldrb	r1, [r4, #10]
d05a0262:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d05a0266:	7ae2      	ldrb	r2, [r4, #11]
d05a0268:	7828      	ldrb	r0, [r5, #0]
d05a026a:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d05a026e:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d05a0272:	685b      	ldr	r3, [r3, #4]
d05a0274:	685b      	ldr	r3, [r3, #4]
d05a0276:	4798      	blx	r3
d05a0278:	2000      	movs	r0, #0
d05a027a:	b005      	add	sp, #20
d05a027c:	bdf0      	pop	{r4, r5, r6, r7, pc}
d05a027e:	bf00      	nop
d05a0280:	d05a0bfc 	.word	0xd05a0bfc
d05a0284:	2001f000 	.word	0x2001f000
d05a0288:	d05a0bfd 	.word	0xd05a0bfd
d05a028c:	d05a0109 	.word	0xd05a0109
d05a0290:	d05a0abc 	.word	0xd05a0abc
d05a0294:	d05a0adc 	.word	0xd05a0adc
d05a0298:	d05a0b20 	.word	0xd05a0b20
d05a029c:	d05a0aa4 	.word	0xd05a0aa4

d05a02a0 <__errno>:
d05a02a0:	4b01      	ldr	r3, [pc, #4]	; (d05a02a8 <__errno+0x8>)
d05a02a2:	6818      	ldr	r0, [r3, #0]
d05a02a4:	4770      	bx	lr
d05a02a6:	bf00      	nop
d05a02a8:	d05a0b90 	.word	0xd05a0b90

d05a02ac <memset>:
d05a02ac:	4402      	add	r2, r0
d05a02ae:	4603      	mov	r3, r0
d05a02b0:	4293      	cmp	r3, r2
d05a02b2:	d100      	bne.n	d05a02b6 <memset+0xa>
d05a02b4:	4770      	bx	lr
d05a02b6:	f803 1b01 	strb.w	r1, [r3], #1
d05a02ba:	e7f9      	b.n	d05a02b0 <memset+0x4>

d05a02bc <setbuf>:
d05a02bc:	2900      	cmp	r1, #0
d05a02be:	f44f 6380 	mov.w	r3, #1024	; 0x400
d05a02c2:	bf0c      	ite	eq
d05a02c4:	2202      	moveq	r2, #2
d05a02c6:	2200      	movne	r2, #0
d05a02c8:	f000 b800 	b.w	d05a02cc <setvbuf>

d05a02cc <setvbuf>:
d05a02cc:	e92d 43f7 	stmdb	sp!, {r0, r1, r2, r4, r5, r6, r7, r8, r9, lr}
d05a02d0:	461d      	mov	r5, r3
d05a02d2:	4b5d      	ldr	r3, [pc, #372]	; (d05a0448 <setvbuf+0x17c>)
d05a02d4:	681f      	ldr	r7, [r3, #0]
d05a02d6:	4604      	mov	r4, r0
d05a02d8:	460e      	mov	r6, r1
d05a02da:	4690      	mov	r8, r2
d05a02dc:	b127      	cbz	r7, d05a02e8 <setvbuf+0x1c>
d05a02de:	69bb      	ldr	r3, [r7, #24]
d05a02e0:	b913      	cbnz	r3, d05a02e8 <setvbuf+0x1c>
d05a02e2:	4638      	mov	r0, r7
d05a02e4:	f000 f9d2 	bl	d05a068c <__sinit>
d05a02e8:	4b58      	ldr	r3, [pc, #352]	; (d05a044c <setvbuf+0x180>)
d05a02ea:	429c      	cmp	r4, r3
d05a02ec:	d167      	bne.n	d05a03be <setvbuf+0xf2>
d05a02ee:	687c      	ldr	r4, [r7, #4]
d05a02f0:	f1b8 0f02 	cmp.w	r8, #2
d05a02f4:	d006      	beq.n	d05a0304 <setvbuf+0x38>
d05a02f6:	f1b8 0f01 	cmp.w	r8, #1
d05a02fa:	f200 809f 	bhi.w	d05a043c <setvbuf+0x170>
d05a02fe:	2d00      	cmp	r5, #0
d05a0300:	f2c0 809c 	blt.w	d05a043c <setvbuf+0x170>
d05a0304:	6e63      	ldr	r3, [r4, #100]	; 0x64
d05a0306:	07db      	lsls	r3, r3, #31
d05a0308:	d405      	bmi.n	d05a0316 <setvbuf+0x4a>
d05a030a:	89a3      	ldrh	r3, [r4, #12]
d05a030c:	0598      	lsls	r0, r3, #22
d05a030e:	d402      	bmi.n	d05a0316 <setvbuf+0x4a>
d05a0310:	6da0      	ldr	r0, [r4, #88]	; 0x58
d05a0312:	f000 fa59 	bl	d05a07c8 <__retarget_lock_acquire_recursive>
d05a0316:	4621      	mov	r1, r4
d05a0318:	4638      	mov	r0, r7
d05a031a:	f000 f923 	bl	d05a0564 <_fflush_r>
d05a031e:	6b61      	ldr	r1, [r4, #52]	; 0x34
d05a0320:	b141      	cbz	r1, d05a0334 <setvbuf+0x68>
d05a0322:	f104 0344 	add.w	r3, r4, #68	; 0x44
d05a0326:	4299      	cmp	r1, r3
d05a0328:	d002      	beq.n	d05a0330 <setvbuf+0x64>
d05a032a:	4638      	mov	r0, r7
d05a032c:	f000 fa7a 	bl	d05a0824 <_free_r>
d05a0330:	2300      	movs	r3, #0
d05a0332:	6363      	str	r3, [r4, #52]	; 0x34
d05a0334:	2300      	movs	r3, #0
d05a0336:	61a3      	str	r3, [r4, #24]
d05a0338:	6063      	str	r3, [r4, #4]
d05a033a:	89a3      	ldrh	r3, [r4, #12]
d05a033c:	0619      	lsls	r1, r3, #24
d05a033e:	d503      	bpl.n	d05a0348 <setvbuf+0x7c>
d05a0340:	6921      	ldr	r1, [r4, #16]
d05a0342:	4638      	mov	r0, r7
d05a0344:	f000 fa6e 	bl	d05a0824 <_free_r>
d05a0348:	89a3      	ldrh	r3, [r4, #12]
d05a034a:	f423 634a 	bic.w	r3, r3, #3232	; 0xca0
d05a034e:	f023 0303 	bic.w	r3, r3, #3
d05a0352:	f1b8 0f02 	cmp.w	r8, #2
d05a0356:	81a3      	strh	r3, [r4, #12]
d05a0358:	d06c      	beq.n	d05a0434 <setvbuf+0x168>
d05a035a:	ab01      	add	r3, sp, #4
d05a035c:	466a      	mov	r2, sp
d05a035e:	4621      	mov	r1, r4
d05a0360:	4638      	mov	r0, r7
d05a0362:	f000 fa33 	bl	d05a07cc <__swhatbuf_r>
d05a0366:	89a3      	ldrh	r3, [r4, #12]
d05a0368:	4318      	orrs	r0, r3
d05a036a:	81a0      	strh	r0, [r4, #12]
d05a036c:	2d00      	cmp	r5, #0
d05a036e:	d130      	bne.n	d05a03d2 <setvbuf+0x106>
d05a0370:	9d00      	ldr	r5, [sp, #0]
d05a0372:	4628      	mov	r0, r5
d05a0374:	f000 fa4e 	bl	d05a0814 <malloc>
d05a0378:	4606      	mov	r6, r0
d05a037a:	2800      	cmp	r0, #0
d05a037c:	d155      	bne.n	d05a042a <setvbuf+0x15e>
d05a037e:	f8dd 9000 	ldr.w	r9, [sp]
d05a0382:	45a9      	cmp	r9, r5
d05a0384:	d14a      	bne.n	d05a041c <setvbuf+0x150>
d05a0386:	f04f 35ff 	mov.w	r5, #4294967295	; 0xffffffff
d05a038a:	2200      	movs	r2, #0
d05a038c:	60a2      	str	r2, [r4, #8]
d05a038e:	f104 0247 	add.w	r2, r4, #71	; 0x47
d05a0392:	6022      	str	r2, [r4, #0]
d05a0394:	6122      	str	r2, [r4, #16]
d05a0396:	2201      	movs	r2, #1
d05a0398:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
d05a039c:	6162      	str	r2, [r4, #20]
d05a039e:	6e62      	ldr	r2, [r4, #100]	; 0x64
d05a03a0:	f043 0302 	orr.w	r3, r3, #2
d05a03a4:	07d2      	lsls	r2, r2, #31
d05a03a6:	81a3      	strh	r3, [r4, #12]
d05a03a8:	d405      	bmi.n	d05a03b6 <setvbuf+0xea>
d05a03aa:	f413 7f00 	tst.w	r3, #512	; 0x200
d05a03ae:	d102      	bne.n	d05a03b6 <setvbuf+0xea>
d05a03b0:	6da0      	ldr	r0, [r4, #88]	; 0x58
d05a03b2:	f000 fa0a 	bl	d05a07ca <__retarget_lock_release_recursive>
d05a03b6:	4628      	mov	r0, r5
d05a03b8:	b003      	add	sp, #12
d05a03ba:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
d05a03be:	4b24      	ldr	r3, [pc, #144]	; (d05a0450 <setvbuf+0x184>)
d05a03c0:	429c      	cmp	r4, r3
d05a03c2:	d101      	bne.n	d05a03c8 <setvbuf+0xfc>
d05a03c4:	68bc      	ldr	r4, [r7, #8]
d05a03c6:	e793      	b.n	d05a02f0 <setvbuf+0x24>
d05a03c8:	4b22      	ldr	r3, [pc, #136]	; (d05a0454 <setvbuf+0x188>)
d05a03ca:	429c      	cmp	r4, r3
d05a03cc:	bf08      	it	eq
d05a03ce:	68fc      	ldreq	r4, [r7, #12]
d05a03d0:	e78e      	b.n	d05a02f0 <setvbuf+0x24>
d05a03d2:	2e00      	cmp	r6, #0
d05a03d4:	d0cd      	beq.n	d05a0372 <setvbuf+0xa6>
d05a03d6:	69bb      	ldr	r3, [r7, #24]
d05a03d8:	b913      	cbnz	r3, d05a03e0 <setvbuf+0x114>
d05a03da:	4638      	mov	r0, r7
d05a03dc:	f000 f956 	bl	d05a068c <__sinit>
d05a03e0:	f1b8 0f01 	cmp.w	r8, #1
d05a03e4:	bf08      	it	eq
d05a03e6:	89a3      	ldrheq	r3, [r4, #12]
d05a03e8:	6026      	str	r6, [r4, #0]
d05a03ea:	bf04      	itt	eq
d05a03ec:	f043 0301 	orreq.w	r3, r3, #1
d05a03f0:	81a3      	strheq	r3, [r4, #12]
d05a03f2:	89a2      	ldrh	r2, [r4, #12]
d05a03f4:	f012 0308 	ands.w	r3, r2, #8
d05a03f8:	e9c4 6504 	strd	r6, r5, [r4, #16]
d05a03fc:	d01c      	beq.n	d05a0438 <setvbuf+0x16c>
d05a03fe:	07d3      	lsls	r3, r2, #31
d05a0400:	bf41      	itttt	mi
d05a0402:	2300      	movmi	r3, #0
d05a0404:	426d      	negmi	r5, r5
d05a0406:	60a3      	strmi	r3, [r4, #8]
d05a0408:	61a5      	strmi	r5, [r4, #24]
d05a040a:	bf58      	it	pl
d05a040c:	60a5      	strpl	r5, [r4, #8]
d05a040e:	6e65      	ldr	r5, [r4, #100]	; 0x64
d05a0410:	f015 0501 	ands.w	r5, r5, #1
d05a0414:	d115      	bne.n	d05a0442 <setvbuf+0x176>
d05a0416:	f412 7f00 	tst.w	r2, #512	; 0x200
d05a041a:	e7c8      	b.n	d05a03ae <setvbuf+0xe2>
d05a041c:	4648      	mov	r0, r9
d05a041e:	f000 f9f9 	bl	d05a0814 <malloc>
d05a0422:	4606      	mov	r6, r0
d05a0424:	2800      	cmp	r0, #0
d05a0426:	d0ae      	beq.n	d05a0386 <setvbuf+0xba>
d05a0428:	464d      	mov	r5, r9
d05a042a:	89a3      	ldrh	r3, [r4, #12]
d05a042c:	f043 0380 	orr.w	r3, r3, #128	; 0x80
d05a0430:	81a3      	strh	r3, [r4, #12]
d05a0432:	e7d0      	b.n	d05a03d6 <setvbuf+0x10a>
d05a0434:	2500      	movs	r5, #0
d05a0436:	e7a8      	b.n	d05a038a <setvbuf+0xbe>
d05a0438:	60a3      	str	r3, [r4, #8]
d05a043a:	e7e8      	b.n	d05a040e <setvbuf+0x142>
d05a043c:	f04f 35ff 	mov.w	r5, #4294967295	; 0xffffffff
d05a0440:	e7b9      	b.n	d05a03b6 <setvbuf+0xea>
d05a0442:	2500      	movs	r5, #0
d05a0444:	e7b7      	b.n	d05a03b6 <setvbuf+0xea>
d05a0446:	bf00      	nop
d05a0448:	d05a0b90 	.word	0xd05a0b90
d05a044c:	d05a0b48 	.word	0xd05a0b48
d05a0450:	d05a0b68 	.word	0xd05a0b68
d05a0454:	d05a0b28 	.word	0xd05a0b28

d05a0458 <__sflush_r>:
d05a0458:	898a      	ldrh	r2, [r1, #12]
d05a045a:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
d05a045e:	4605      	mov	r5, r0
d05a0460:	0710      	lsls	r0, r2, #28
d05a0462:	460c      	mov	r4, r1
d05a0464:	d458      	bmi.n	d05a0518 <__sflush_r+0xc0>
d05a0466:	684b      	ldr	r3, [r1, #4]
d05a0468:	2b00      	cmp	r3, #0
d05a046a:	dc05      	bgt.n	d05a0478 <__sflush_r+0x20>
d05a046c:	6c0b      	ldr	r3, [r1, #64]	; 0x40
d05a046e:	2b00      	cmp	r3, #0
d05a0470:	dc02      	bgt.n	d05a0478 <__sflush_r+0x20>
d05a0472:	2000      	movs	r0, #0
d05a0474:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
d05a0478:	6ae6      	ldr	r6, [r4, #44]	; 0x2c
d05a047a:	2e00      	cmp	r6, #0
d05a047c:	d0f9      	beq.n	d05a0472 <__sflush_r+0x1a>
d05a047e:	2300      	movs	r3, #0
d05a0480:	f412 5280 	ands.w	r2, r2, #4096	; 0x1000
d05a0484:	682f      	ldr	r7, [r5, #0]
d05a0486:	602b      	str	r3, [r5, #0]
d05a0488:	d032      	beq.n	d05a04f0 <__sflush_r+0x98>
d05a048a:	6d60      	ldr	r0, [r4, #84]	; 0x54
d05a048c:	89a3      	ldrh	r3, [r4, #12]
d05a048e:	075a      	lsls	r2, r3, #29
d05a0490:	d505      	bpl.n	d05a049e <__sflush_r+0x46>
d05a0492:	6863      	ldr	r3, [r4, #4]
d05a0494:	1ac0      	subs	r0, r0, r3
d05a0496:	6b63      	ldr	r3, [r4, #52]	; 0x34
d05a0498:	b10b      	cbz	r3, d05a049e <__sflush_r+0x46>
d05a049a:	6c23      	ldr	r3, [r4, #64]	; 0x40
d05a049c:	1ac0      	subs	r0, r0, r3
d05a049e:	2300      	movs	r3, #0
d05a04a0:	4602      	mov	r2, r0
d05a04a2:	6ae6      	ldr	r6, [r4, #44]	; 0x2c
d05a04a4:	6a21      	ldr	r1, [r4, #32]
d05a04a6:	4628      	mov	r0, r5
d05a04a8:	47b0      	blx	r6
d05a04aa:	1c43      	adds	r3, r0, #1
d05a04ac:	89a3      	ldrh	r3, [r4, #12]
d05a04ae:	d106      	bne.n	d05a04be <__sflush_r+0x66>
d05a04b0:	6829      	ldr	r1, [r5, #0]
d05a04b2:	291d      	cmp	r1, #29
d05a04b4:	d82c      	bhi.n	d05a0510 <__sflush_r+0xb8>
d05a04b6:	4a2a      	ldr	r2, [pc, #168]	; (d05a0560 <__sflush_r+0x108>)
d05a04b8:	40ca      	lsrs	r2, r1
d05a04ba:	07d6      	lsls	r6, r2, #31
d05a04bc:	d528      	bpl.n	d05a0510 <__sflush_r+0xb8>
d05a04be:	2200      	movs	r2, #0
d05a04c0:	6062      	str	r2, [r4, #4]
d05a04c2:	04d9      	lsls	r1, r3, #19
d05a04c4:	6922      	ldr	r2, [r4, #16]
d05a04c6:	6022      	str	r2, [r4, #0]
d05a04c8:	d504      	bpl.n	d05a04d4 <__sflush_r+0x7c>
d05a04ca:	1c42      	adds	r2, r0, #1
d05a04cc:	d101      	bne.n	d05a04d2 <__sflush_r+0x7a>
d05a04ce:	682b      	ldr	r3, [r5, #0]
d05a04d0:	b903      	cbnz	r3, d05a04d4 <__sflush_r+0x7c>
d05a04d2:	6560      	str	r0, [r4, #84]	; 0x54
d05a04d4:	6b61      	ldr	r1, [r4, #52]	; 0x34
d05a04d6:	602f      	str	r7, [r5, #0]
d05a04d8:	2900      	cmp	r1, #0
d05a04da:	d0ca      	beq.n	d05a0472 <__sflush_r+0x1a>
d05a04dc:	f104 0344 	add.w	r3, r4, #68	; 0x44
d05a04e0:	4299      	cmp	r1, r3
d05a04e2:	d002      	beq.n	d05a04ea <__sflush_r+0x92>
d05a04e4:	4628      	mov	r0, r5
d05a04e6:	f000 f99d 	bl	d05a0824 <_free_r>
d05a04ea:	2000      	movs	r0, #0
d05a04ec:	6360      	str	r0, [r4, #52]	; 0x34
d05a04ee:	e7c1      	b.n	d05a0474 <__sflush_r+0x1c>
d05a04f0:	6a21      	ldr	r1, [r4, #32]
d05a04f2:	2301      	movs	r3, #1
d05a04f4:	4628      	mov	r0, r5
d05a04f6:	47b0      	blx	r6
d05a04f8:	1c41      	adds	r1, r0, #1
d05a04fa:	d1c7      	bne.n	d05a048c <__sflush_r+0x34>
d05a04fc:	682b      	ldr	r3, [r5, #0]
d05a04fe:	2b00      	cmp	r3, #0
d05a0500:	d0c4      	beq.n	d05a048c <__sflush_r+0x34>
d05a0502:	2b1d      	cmp	r3, #29
d05a0504:	d001      	beq.n	d05a050a <__sflush_r+0xb2>
d05a0506:	2b16      	cmp	r3, #22
d05a0508:	d101      	bne.n	d05a050e <__sflush_r+0xb6>
d05a050a:	602f      	str	r7, [r5, #0]
d05a050c:	e7b1      	b.n	d05a0472 <__sflush_r+0x1a>
d05a050e:	89a3      	ldrh	r3, [r4, #12]
d05a0510:	f043 0340 	orr.w	r3, r3, #64	; 0x40
d05a0514:	81a3      	strh	r3, [r4, #12]
d05a0516:	e7ad      	b.n	d05a0474 <__sflush_r+0x1c>
d05a0518:	690f      	ldr	r7, [r1, #16]
d05a051a:	2f00      	cmp	r7, #0
d05a051c:	d0a9      	beq.n	d05a0472 <__sflush_r+0x1a>
d05a051e:	0793      	lsls	r3, r2, #30
d05a0520:	680e      	ldr	r6, [r1, #0]
d05a0522:	bf08      	it	eq
d05a0524:	694b      	ldreq	r3, [r1, #20]
d05a0526:	600f      	str	r7, [r1, #0]
d05a0528:	bf18      	it	ne
d05a052a:	2300      	movne	r3, #0
d05a052c:	eba6 0807 	sub.w	r8, r6, r7
d05a0530:	608b      	str	r3, [r1, #8]
d05a0532:	f1b8 0f00 	cmp.w	r8, #0
d05a0536:	dd9c      	ble.n	d05a0472 <__sflush_r+0x1a>
d05a0538:	6a21      	ldr	r1, [r4, #32]
d05a053a:	6aa6      	ldr	r6, [r4, #40]	; 0x28
d05a053c:	4643      	mov	r3, r8
d05a053e:	463a      	mov	r2, r7
d05a0540:	4628      	mov	r0, r5
d05a0542:	47b0      	blx	r6
d05a0544:	2800      	cmp	r0, #0
d05a0546:	dc06      	bgt.n	d05a0556 <__sflush_r+0xfe>
d05a0548:	89a3      	ldrh	r3, [r4, #12]
d05a054a:	f043 0340 	orr.w	r3, r3, #64	; 0x40
d05a054e:	81a3      	strh	r3, [r4, #12]
d05a0550:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d05a0554:	e78e      	b.n	d05a0474 <__sflush_r+0x1c>
d05a0556:	4407      	add	r7, r0
d05a0558:	eba8 0800 	sub.w	r8, r8, r0
d05a055c:	e7e9      	b.n	d05a0532 <__sflush_r+0xda>
d05a055e:	bf00      	nop
d05a0560:	20400001 	.word	0x20400001

d05a0564 <_fflush_r>:
d05a0564:	b538      	push	{r3, r4, r5, lr}
d05a0566:	690b      	ldr	r3, [r1, #16]
d05a0568:	4605      	mov	r5, r0
d05a056a:	460c      	mov	r4, r1
d05a056c:	b913      	cbnz	r3, d05a0574 <_fflush_r+0x10>
d05a056e:	2500      	movs	r5, #0
d05a0570:	4628      	mov	r0, r5
d05a0572:	bd38      	pop	{r3, r4, r5, pc}
d05a0574:	b118      	cbz	r0, d05a057e <_fflush_r+0x1a>
d05a0576:	6983      	ldr	r3, [r0, #24]
d05a0578:	b90b      	cbnz	r3, d05a057e <_fflush_r+0x1a>
d05a057a:	f000 f887 	bl	d05a068c <__sinit>
d05a057e:	4b14      	ldr	r3, [pc, #80]	; (d05a05d0 <_fflush_r+0x6c>)
d05a0580:	429c      	cmp	r4, r3
d05a0582:	d11b      	bne.n	d05a05bc <_fflush_r+0x58>
d05a0584:	686c      	ldr	r4, [r5, #4]
d05a0586:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
d05a058a:	2b00      	cmp	r3, #0
d05a058c:	d0ef      	beq.n	d05a056e <_fflush_r+0xa>
d05a058e:	6e62      	ldr	r2, [r4, #100]	; 0x64
d05a0590:	07d0      	lsls	r0, r2, #31
d05a0592:	d404      	bmi.n	d05a059e <_fflush_r+0x3a>
d05a0594:	0599      	lsls	r1, r3, #22
d05a0596:	d402      	bmi.n	d05a059e <_fflush_r+0x3a>
d05a0598:	6da0      	ldr	r0, [r4, #88]	; 0x58
d05a059a:	f000 f915 	bl	d05a07c8 <__retarget_lock_acquire_recursive>
d05a059e:	4628      	mov	r0, r5
d05a05a0:	4621      	mov	r1, r4
d05a05a2:	f7ff ff59 	bl	d05a0458 <__sflush_r>
d05a05a6:	6e63      	ldr	r3, [r4, #100]	; 0x64
d05a05a8:	07da      	lsls	r2, r3, #31
d05a05aa:	4605      	mov	r5, r0
d05a05ac:	d4e0      	bmi.n	d05a0570 <_fflush_r+0xc>
d05a05ae:	89a3      	ldrh	r3, [r4, #12]
d05a05b0:	059b      	lsls	r3, r3, #22
d05a05b2:	d4dd      	bmi.n	d05a0570 <_fflush_r+0xc>
d05a05b4:	6da0      	ldr	r0, [r4, #88]	; 0x58
d05a05b6:	f000 f908 	bl	d05a07ca <__retarget_lock_release_recursive>
d05a05ba:	e7d9      	b.n	d05a0570 <_fflush_r+0xc>
d05a05bc:	4b05      	ldr	r3, [pc, #20]	; (d05a05d4 <_fflush_r+0x70>)
d05a05be:	429c      	cmp	r4, r3
d05a05c0:	d101      	bne.n	d05a05c6 <_fflush_r+0x62>
d05a05c2:	68ac      	ldr	r4, [r5, #8]
d05a05c4:	e7df      	b.n	d05a0586 <_fflush_r+0x22>
d05a05c6:	4b04      	ldr	r3, [pc, #16]	; (d05a05d8 <_fflush_r+0x74>)
d05a05c8:	429c      	cmp	r4, r3
d05a05ca:	bf08      	it	eq
d05a05cc:	68ec      	ldreq	r4, [r5, #12]
d05a05ce:	e7da      	b.n	d05a0586 <_fflush_r+0x22>
d05a05d0:	d05a0b48 	.word	0xd05a0b48
d05a05d4:	d05a0b68 	.word	0xd05a0b68
d05a05d8:	d05a0b28 	.word	0xd05a0b28

d05a05dc <std>:
d05a05dc:	2300      	movs	r3, #0
d05a05de:	b510      	push	{r4, lr}
d05a05e0:	4604      	mov	r4, r0
d05a05e2:	e9c0 3300 	strd	r3, r3, [r0]
d05a05e6:	e9c0 3304 	strd	r3, r3, [r0, #16]
d05a05ea:	6083      	str	r3, [r0, #8]
d05a05ec:	8181      	strh	r1, [r0, #12]
d05a05ee:	6643      	str	r3, [r0, #100]	; 0x64
d05a05f0:	81c2      	strh	r2, [r0, #14]
d05a05f2:	6183      	str	r3, [r0, #24]
d05a05f4:	4619      	mov	r1, r3
d05a05f6:	2208      	movs	r2, #8
d05a05f8:	305c      	adds	r0, #92	; 0x5c
d05a05fa:	f7ff fe57 	bl	d05a02ac <memset>
d05a05fe:	4b05      	ldr	r3, [pc, #20]	; (d05a0614 <std+0x38>)
d05a0600:	6263      	str	r3, [r4, #36]	; 0x24
d05a0602:	4b05      	ldr	r3, [pc, #20]	; (d05a0618 <std+0x3c>)
d05a0604:	62a3      	str	r3, [r4, #40]	; 0x28
d05a0606:	4b05      	ldr	r3, [pc, #20]	; (d05a061c <std+0x40>)
d05a0608:	62e3      	str	r3, [r4, #44]	; 0x2c
d05a060a:	4b05      	ldr	r3, [pc, #20]	; (d05a0620 <std+0x44>)
d05a060c:	6224      	str	r4, [r4, #32]
d05a060e:	6323      	str	r3, [r4, #48]	; 0x30
d05a0610:	bd10      	pop	{r4, pc}
d05a0612:	bf00      	nop
d05a0614:	d05a0979 	.word	0xd05a0979
d05a0618:	d05a099b 	.word	0xd05a099b
d05a061c:	d05a09d3 	.word	0xd05a09d3
d05a0620:	d05a09f7 	.word	0xd05a09f7

d05a0624 <_cleanup_r>:
d05a0624:	4901      	ldr	r1, [pc, #4]	; (d05a062c <_cleanup_r+0x8>)
d05a0626:	f000 b8af 	b.w	d05a0788 <_fwalk_reent>
d05a062a:	bf00      	nop
d05a062c:	d05a0565 	.word	0xd05a0565

d05a0630 <__sfmoreglue>:
d05a0630:	b570      	push	{r4, r5, r6, lr}
d05a0632:	1e4a      	subs	r2, r1, #1
d05a0634:	2568      	movs	r5, #104	; 0x68
d05a0636:	4355      	muls	r5, r2
d05a0638:	460e      	mov	r6, r1
d05a063a:	f105 0174 	add.w	r1, r5, #116	; 0x74
d05a063e:	f000 f941 	bl	d05a08c4 <_malloc_r>
d05a0642:	4604      	mov	r4, r0
d05a0644:	b140      	cbz	r0, d05a0658 <__sfmoreglue+0x28>
d05a0646:	2100      	movs	r1, #0
d05a0648:	e9c0 1600 	strd	r1, r6, [r0]
d05a064c:	300c      	adds	r0, #12
d05a064e:	60a0      	str	r0, [r4, #8]
d05a0650:	f105 0268 	add.w	r2, r5, #104	; 0x68
d05a0654:	f7ff fe2a 	bl	d05a02ac <memset>
d05a0658:	4620      	mov	r0, r4
d05a065a:	bd70      	pop	{r4, r5, r6, pc}

d05a065c <__sfp_lock_acquire>:
d05a065c:	4801      	ldr	r0, [pc, #4]	; (d05a0664 <__sfp_lock_acquire+0x8>)
d05a065e:	f000 b8b3 	b.w	d05a07c8 <__retarget_lock_acquire_recursive>
d05a0662:	bf00      	nop
d05a0664:	d05a0c10 	.word	0xd05a0c10

d05a0668 <__sfp_lock_release>:
d05a0668:	4801      	ldr	r0, [pc, #4]	; (d05a0670 <__sfp_lock_release+0x8>)
d05a066a:	f000 b8ae 	b.w	d05a07ca <__retarget_lock_release_recursive>
d05a066e:	bf00      	nop
d05a0670:	d05a0c10 	.word	0xd05a0c10

d05a0674 <__sinit_lock_acquire>:
d05a0674:	4801      	ldr	r0, [pc, #4]	; (d05a067c <__sinit_lock_acquire+0x8>)
d05a0676:	f000 b8a7 	b.w	d05a07c8 <__retarget_lock_acquire_recursive>
d05a067a:	bf00      	nop
d05a067c:	d05a0c0b 	.word	0xd05a0c0b

d05a0680 <__sinit_lock_release>:
d05a0680:	4801      	ldr	r0, [pc, #4]	; (d05a0688 <__sinit_lock_release+0x8>)
d05a0682:	f000 b8a2 	b.w	d05a07ca <__retarget_lock_release_recursive>
d05a0686:	bf00      	nop
d05a0688:	d05a0c0b 	.word	0xd05a0c0b

d05a068c <__sinit>:
d05a068c:	b510      	push	{r4, lr}
d05a068e:	4604      	mov	r4, r0
d05a0690:	f7ff fff0 	bl	d05a0674 <__sinit_lock_acquire>
d05a0694:	69a3      	ldr	r3, [r4, #24]
d05a0696:	b11b      	cbz	r3, d05a06a0 <__sinit+0x14>
d05a0698:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
d05a069c:	f7ff bff0 	b.w	d05a0680 <__sinit_lock_release>
d05a06a0:	e9c4 3312 	strd	r3, r3, [r4, #72]	; 0x48
d05a06a4:	6523      	str	r3, [r4, #80]	; 0x50
d05a06a6:	4b13      	ldr	r3, [pc, #76]	; (d05a06f4 <__sinit+0x68>)
d05a06a8:	4a13      	ldr	r2, [pc, #76]	; (d05a06f8 <__sinit+0x6c>)
d05a06aa:	681b      	ldr	r3, [r3, #0]
d05a06ac:	62a2      	str	r2, [r4, #40]	; 0x28
d05a06ae:	42a3      	cmp	r3, r4
d05a06b0:	bf04      	itt	eq
d05a06b2:	2301      	moveq	r3, #1
d05a06b4:	61a3      	streq	r3, [r4, #24]
d05a06b6:	4620      	mov	r0, r4
d05a06b8:	f000 f820 	bl	d05a06fc <__sfp>
d05a06bc:	6060      	str	r0, [r4, #4]
d05a06be:	4620      	mov	r0, r4
d05a06c0:	f000 f81c 	bl	d05a06fc <__sfp>
d05a06c4:	60a0      	str	r0, [r4, #8]
d05a06c6:	4620      	mov	r0, r4
d05a06c8:	f000 f818 	bl	d05a06fc <__sfp>
d05a06cc:	2200      	movs	r2, #0
d05a06ce:	60e0      	str	r0, [r4, #12]
d05a06d0:	2104      	movs	r1, #4
d05a06d2:	6860      	ldr	r0, [r4, #4]
d05a06d4:	f7ff ff82 	bl	d05a05dc <std>
d05a06d8:	68a0      	ldr	r0, [r4, #8]
d05a06da:	2201      	movs	r2, #1
d05a06dc:	2109      	movs	r1, #9
d05a06de:	f7ff ff7d 	bl	d05a05dc <std>
d05a06e2:	68e0      	ldr	r0, [r4, #12]
d05a06e4:	2202      	movs	r2, #2
d05a06e6:	2112      	movs	r1, #18
d05a06e8:	f7ff ff78 	bl	d05a05dc <std>
d05a06ec:	2301      	movs	r3, #1
d05a06ee:	61a3      	str	r3, [r4, #24]
d05a06f0:	e7d2      	b.n	d05a0698 <__sinit+0xc>
d05a06f2:	bf00      	nop
d05a06f4:	d05a0b24 	.word	0xd05a0b24
d05a06f8:	d05a0625 	.word	0xd05a0625

d05a06fc <__sfp>:
d05a06fc:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d05a06fe:	4607      	mov	r7, r0
d05a0700:	f7ff ffac 	bl	d05a065c <__sfp_lock_acquire>
d05a0704:	4b1e      	ldr	r3, [pc, #120]	; (d05a0780 <__sfp+0x84>)
d05a0706:	681e      	ldr	r6, [r3, #0]
d05a0708:	69b3      	ldr	r3, [r6, #24]
d05a070a:	b913      	cbnz	r3, d05a0712 <__sfp+0x16>
d05a070c:	4630      	mov	r0, r6
d05a070e:	f7ff ffbd 	bl	d05a068c <__sinit>
d05a0712:	3648      	adds	r6, #72	; 0x48
d05a0714:	e9d6 3401 	ldrd	r3, r4, [r6, #4]
d05a0718:	3b01      	subs	r3, #1
d05a071a:	d503      	bpl.n	d05a0724 <__sfp+0x28>
d05a071c:	6833      	ldr	r3, [r6, #0]
d05a071e:	b30b      	cbz	r3, d05a0764 <__sfp+0x68>
d05a0720:	6836      	ldr	r6, [r6, #0]
d05a0722:	e7f7      	b.n	d05a0714 <__sfp+0x18>
d05a0724:	f9b4 500c 	ldrsh.w	r5, [r4, #12]
d05a0728:	b9d5      	cbnz	r5, d05a0760 <__sfp+0x64>
d05a072a:	4b16      	ldr	r3, [pc, #88]	; (d05a0784 <__sfp+0x88>)
d05a072c:	60e3      	str	r3, [r4, #12]
d05a072e:	f104 0058 	add.w	r0, r4, #88	; 0x58
d05a0732:	6665      	str	r5, [r4, #100]	; 0x64
d05a0734:	f000 f847 	bl	d05a07c6 <__retarget_lock_init_recursive>
d05a0738:	f7ff ff96 	bl	d05a0668 <__sfp_lock_release>
d05a073c:	e9c4 5501 	strd	r5, r5, [r4, #4]
d05a0740:	e9c4 5504 	strd	r5, r5, [r4, #16]
d05a0744:	6025      	str	r5, [r4, #0]
d05a0746:	61a5      	str	r5, [r4, #24]
d05a0748:	2208      	movs	r2, #8
d05a074a:	4629      	mov	r1, r5
d05a074c:	f104 005c 	add.w	r0, r4, #92	; 0x5c
d05a0750:	f7ff fdac 	bl	d05a02ac <memset>
d05a0754:	e9c4 550d 	strd	r5, r5, [r4, #52]	; 0x34
d05a0758:	e9c4 5512 	strd	r5, r5, [r4, #72]	; 0x48
d05a075c:	4620      	mov	r0, r4
d05a075e:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d05a0760:	3468      	adds	r4, #104	; 0x68
d05a0762:	e7d9      	b.n	d05a0718 <__sfp+0x1c>
d05a0764:	2104      	movs	r1, #4
d05a0766:	4638      	mov	r0, r7
d05a0768:	f7ff ff62 	bl	d05a0630 <__sfmoreglue>
d05a076c:	4604      	mov	r4, r0
d05a076e:	6030      	str	r0, [r6, #0]
d05a0770:	2800      	cmp	r0, #0
d05a0772:	d1d5      	bne.n	d05a0720 <__sfp+0x24>
d05a0774:	f7ff ff78 	bl	d05a0668 <__sfp_lock_release>
d05a0778:	230c      	movs	r3, #12
d05a077a:	603b      	str	r3, [r7, #0]
d05a077c:	e7ee      	b.n	d05a075c <__sfp+0x60>
d05a077e:	bf00      	nop
d05a0780:	d05a0b24 	.word	0xd05a0b24
d05a0784:	ffff0001 	.word	0xffff0001

d05a0788 <_fwalk_reent>:
d05a0788:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
d05a078c:	4606      	mov	r6, r0
d05a078e:	4688      	mov	r8, r1
d05a0790:	f100 0448 	add.w	r4, r0, #72	; 0x48
d05a0794:	2700      	movs	r7, #0
d05a0796:	e9d4 9501 	ldrd	r9, r5, [r4, #4]
d05a079a:	f1b9 0901 	subs.w	r9, r9, #1
d05a079e:	d505      	bpl.n	d05a07ac <_fwalk_reent+0x24>
d05a07a0:	6824      	ldr	r4, [r4, #0]
d05a07a2:	2c00      	cmp	r4, #0
d05a07a4:	d1f7      	bne.n	d05a0796 <_fwalk_reent+0xe>
d05a07a6:	4638      	mov	r0, r7
d05a07a8:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
d05a07ac:	89ab      	ldrh	r3, [r5, #12]
d05a07ae:	2b01      	cmp	r3, #1
d05a07b0:	d907      	bls.n	d05a07c2 <_fwalk_reent+0x3a>
d05a07b2:	f9b5 300e 	ldrsh.w	r3, [r5, #14]
d05a07b6:	3301      	adds	r3, #1
d05a07b8:	d003      	beq.n	d05a07c2 <_fwalk_reent+0x3a>
d05a07ba:	4629      	mov	r1, r5
d05a07bc:	4630      	mov	r0, r6
d05a07be:	47c0      	blx	r8
d05a07c0:	4307      	orrs	r7, r0
d05a07c2:	3568      	adds	r5, #104	; 0x68
d05a07c4:	e7e9      	b.n	d05a079a <_fwalk_reent+0x12>

d05a07c6 <__retarget_lock_init_recursive>:
d05a07c6:	4770      	bx	lr

d05a07c8 <__retarget_lock_acquire_recursive>:
d05a07c8:	4770      	bx	lr

d05a07ca <__retarget_lock_release_recursive>:
d05a07ca:	4770      	bx	lr

d05a07cc <__swhatbuf_r>:
d05a07cc:	b570      	push	{r4, r5, r6, lr}
d05a07ce:	460e      	mov	r6, r1
d05a07d0:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d05a07d4:	2900      	cmp	r1, #0
d05a07d6:	b096      	sub	sp, #88	; 0x58
d05a07d8:	4614      	mov	r4, r2
d05a07da:	461d      	mov	r5, r3
d05a07dc:	da07      	bge.n	d05a07ee <__swhatbuf_r+0x22>
d05a07de:	2300      	movs	r3, #0
d05a07e0:	602b      	str	r3, [r5, #0]
d05a07e2:	89b3      	ldrh	r3, [r6, #12]
d05a07e4:	061a      	lsls	r2, r3, #24
d05a07e6:	d410      	bmi.n	d05a080a <__swhatbuf_r+0x3e>
d05a07e8:	f44f 6380 	mov.w	r3, #1024	; 0x400
d05a07ec:	e00e      	b.n	d05a080c <__swhatbuf_r+0x40>
d05a07ee:	466a      	mov	r2, sp
d05a07f0:	f000 f916 	bl	d05a0a20 <_fstat_r>
d05a07f4:	2800      	cmp	r0, #0
d05a07f6:	dbf2      	blt.n	d05a07de <__swhatbuf_r+0x12>
d05a07f8:	9a01      	ldr	r2, [sp, #4]
d05a07fa:	f402 4270 	and.w	r2, r2, #61440	; 0xf000
d05a07fe:	f5a2 5300 	sub.w	r3, r2, #8192	; 0x2000
d05a0802:	425a      	negs	r2, r3
d05a0804:	415a      	adcs	r2, r3
d05a0806:	602a      	str	r2, [r5, #0]
d05a0808:	e7ee      	b.n	d05a07e8 <__swhatbuf_r+0x1c>
d05a080a:	2340      	movs	r3, #64	; 0x40
d05a080c:	2000      	movs	r0, #0
d05a080e:	6023      	str	r3, [r4, #0]
d05a0810:	b016      	add	sp, #88	; 0x58
d05a0812:	bd70      	pop	{r4, r5, r6, pc}

d05a0814 <malloc>:
d05a0814:	4b02      	ldr	r3, [pc, #8]	; (d05a0820 <malloc+0xc>)
d05a0816:	4601      	mov	r1, r0
d05a0818:	6818      	ldr	r0, [r3, #0]
d05a081a:	f000 b853 	b.w	d05a08c4 <_malloc_r>
d05a081e:	bf00      	nop
d05a0820:	d05a0b90 	.word	0xd05a0b90

d05a0824 <_free_r>:
d05a0824:	b537      	push	{r0, r1, r2, r4, r5, lr}
d05a0826:	2900      	cmp	r1, #0
d05a0828:	d048      	beq.n	d05a08bc <_free_r+0x98>
d05a082a:	f851 3c04 	ldr.w	r3, [r1, #-4]
d05a082e:	9001      	str	r0, [sp, #4]
d05a0830:	2b00      	cmp	r3, #0
d05a0832:	f1a1 0404 	sub.w	r4, r1, #4
d05a0836:	bfb8      	it	lt
d05a0838:	18e4      	addlt	r4, r4, r3
d05a083a:	f000 f915 	bl	d05a0a68 <__malloc_lock>
d05a083e:	4a20      	ldr	r2, [pc, #128]	; (d05a08c0 <_free_r+0x9c>)
d05a0840:	9801      	ldr	r0, [sp, #4]
d05a0842:	6813      	ldr	r3, [r2, #0]
d05a0844:	4615      	mov	r5, r2
d05a0846:	b933      	cbnz	r3, d05a0856 <_free_r+0x32>
d05a0848:	6063      	str	r3, [r4, #4]
d05a084a:	6014      	str	r4, [r2, #0]
d05a084c:	b003      	add	sp, #12
d05a084e:	e8bd 4030 	ldmia.w	sp!, {r4, r5, lr}
d05a0852:	f000 b90f 	b.w	d05a0a74 <__malloc_unlock>
d05a0856:	42a3      	cmp	r3, r4
d05a0858:	d90b      	bls.n	d05a0872 <_free_r+0x4e>
d05a085a:	6821      	ldr	r1, [r4, #0]
d05a085c:	1862      	adds	r2, r4, r1
d05a085e:	4293      	cmp	r3, r2
d05a0860:	bf04      	itt	eq
d05a0862:	681a      	ldreq	r2, [r3, #0]
d05a0864:	685b      	ldreq	r3, [r3, #4]
d05a0866:	6063      	str	r3, [r4, #4]
d05a0868:	bf04      	itt	eq
d05a086a:	1852      	addeq	r2, r2, r1
d05a086c:	6022      	streq	r2, [r4, #0]
d05a086e:	602c      	str	r4, [r5, #0]
d05a0870:	e7ec      	b.n	d05a084c <_free_r+0x28>
d05a0872:	461a      	mov	r2, r3
d05a0874:	685b      	ldr	r3, [r3, #4]
d05a0876:	b10b      	cbz	r3, d05a087c <_free_r+0x58>
d05a0878:	42a3      	cmp	r3, r4
d05a087a:	d9fa      	bls.n	d05a0872 <_free_r+0x4e>
d05a087c:	6811      	ldr	r1, [r2, #0]
d05a087e:	1855      	adds	r5, r2, r1
d05a0880:	42a5      	cmp	r5, r4
d05a0882:	d10b      	bne.n	d05a089c <_free_r+0x78>
d05a0884:	6824      	ldr	r4, [r4, #0]
d05a0886:	4421      	add	r1, r4
d05a0888:	1854      	adds	r4, r2, r1
d05a088a:	42a3      	cmp	r3, r4
d05a088c:	6011      	str	r1, [r2, #0]
d05a088e:	d1dd      	bne.n	d05a084c <_free_r+0x28>
d05a0890:	681c      	ldr	r4, [r3, #0]
d05a0892:	685b      	ldr	r3, [r3, #4]
d05a0894:	6053      	str	r3, [r2, #4]
d05a0896:	4421      	add	r1, r4
d05a0898:	6011      	str	r1, [r2, #0]
d05a089a:	e7d7      	b.n	d05a084c <_free_r+0x28>
d05a089c:	d902      	bls.n	d05a08a4 <_free_r+0x80>
d05a089e:	230c      	movs	r3, #12
d05a08a0:	6003      	str	r3, [r0, #0]
d05a08a2:	e7d3      	b.n	d05a084c <_free_r+0x28>
d05a08a4:	6825      	ldr	r5, [r4, #0]
d05a08a6:	1961      	adds	r1, r4, r5
d05a08a8:	428b      	cmp	r3, r1
d05a08aa:	bf04      	itt	eq
d05a08ac:	6819      	ldreq	r1, [r3, #0]
d05a08ae:	685b      	ldreq	r3, [r3, #4]
d05a08b0:	6063      	str	r3, [r4, #4]
d05a08b2:	bf04      	itt	eq
d05a08b4:	1949      	addeq	r1, r1, r5
d05a08b6:	6021      	streq	r1, [r4, #0]
d05a08b8:	6054      	str	r4, [r2, #4]
d05a08ba:	e7c7      	b.n	d05a084c <_free_r+0x28>
d05a08bc:	b003      	add	sp, #12
d05a08be:	bd30      	pop	{r4, r5, pc}
d05a08c0:	d05a0c00 	.word	0xd05a0c00

d05a08c4 <_malloc_r>:
d05a08c4:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d05a08c6:	1ccd      	adds	r5, r1, #3
d05a08c8:	f025 0503 	bic.w	r5, r5, #3
d05a08cc:	3508      	adds	r5, #8
d05a08ce:	2d0c      	cmp	r5, #12
d05a08d0:	bf38      	it	cc
d05a08d2:	250c      	movcc	r5, #12
d05a08d4:	2d00      	cmp	r5, #0
d05a08d6:	4606      	mov	r6, r0
d05a08d8:	db01      	blt.n	d05a08de <_malloc_r+0x1a>
d05a08da:	42a9      	cmp	r1, r5
d05a08dc:	d903      	bls.n	d05a08e6 <_malloc_r+0x22>
d05a08de:	230c      	movs	r3, #12
d05a08e0:	6033      	str	r3, [r6, #0]
d05a08e2:	2000      	movs	r0, #0
d05a08e4:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d05a08e6:	f000 f8bf 	bl	d05a0a68 <__malloc_lock>
d05a08ea:	4921      	ldr	r1, [pc, #132]	; (d05a0970 <_malloc_r+0xac>)
d05a08ec:	680a      	ldr	r2, [r1, #0]
d05a08ee:	4614      	mov	r4, r2
d05a08f0:	b99c      	cbnz	r4, d05a091a <_malloc_r+0x56>
d05a08f2:	4f20      	ldr	r7, [pc, #128]	; (d05a0974 <_malloc_r+0xb0>)
d05a08f4:	683b      	ldr	r3, [r7, #0]
d05a08f6:	b923      	cbnz	r3, d05a0902 <_malloc_r+0x3e>
d05a08f8:	4621      	mov	r1, r4
d05a08fa:	4630      	mov	r0, r6
d05a08fc:	f7ff fbe4 	bl	d05a00c8 <_sbrk_r>
d05a0900:	6038      	str	r0, [r7, #0]
d05a0902:	4629      	mov	r1, r5
d05a0904:	4630      	mov	r0, r6
d05a0906:	f7ff fbdf 	bl	d05a00c8 <_sbrk_r>
d05a090a:	1c43      	adds	r3, r0, #1
d05a090c:	d123      	bne.n	d05a0956 <_malloc_r+0x92>
d05a090e:	230c      	movs	r3, #12
d05a0910:	6033      	str	r3, [r6, #0]
d05a0912:	4630      	mov	r0, r6
d05a0914:	f000 f8ae 	bl	d05a0a74 <__malloc_unlock>
d05a0918:	e7e3      	b.n	d05a08e2 <_malloc_r+0x1e>
d05a091a:	6823      	ldr	r3, [r4, #0]
d05a091c:	1b5b      	subs	r3, r3, r5
d05a091e:	d417      	bmi.n	d05a0950 <_malloc_r+0x8c>
d05a0920:	2b0b      	cmp	r3, #11
d05a0922:	d903      	bls.n	d05a092c <_malloc_r+0x68>
d05a0924:	6023      	str	r3, [r4, #0]
d05a0926:	441c      	add	r4, r3
d05a0928:	6025      	str	r5, [r4, #0]
d05a092a:	e004      	b.n	d05a0936 <_malloc_r+0x72>
d05a092c:	6863      	ldr	r3, [r4, #4]
d05a092e:	42a2      	cmp	r2, r4
d05a0930:	bf0c      	ite	eq
d05a0932:	600b      	streq	r3, [r1, #0]
d05a0934:	6053      	strne	r3, [r2, #4]
d05a0936:	4630      	mov	r0, r6
d05a0938:	f000 f89c 	bl	d05a0a74 <__malloc_unlock>
d05a093c:	f104 000b 	add.w	r0, r4, #11
d05a0940:	1d23      	adds	r3, r4, #4
d05a0942:	f020 0007 	bic.w	r0, r0, #7
d05a0946:	1ac2      	subs	r2, r0, r3
d05a0948:	d0cc      	beq.n	d05a08e4 <_malloc_r+0x20>
d05a094a:	1a1b      	subs	r3, r3, r0
d05a094c:	50a3      	str	r3, [r4, r2]
d05a094e:	e7c9      	b.n	d05a08e4 <_malloc_r+0x20>
d05a0950:	4622      	mov	r2, r4
d05a0952:	6864      	ldr	r4, [r4, #4]
d05a0954:	e7cc      	b.n	d05a08f0 <_malloc_r+0x2c>
d05a0956:	1cc4      	adds	r4, r0, #3
d05a0958:	f024 0403 	bic.w	r4, r4, #3
d05a095c:	42a0      	cmp	r0, r4
d05a095e:	d0e3      	beq.n	d05a0928 <_malloc_r+0x64>
d05a0960:	1a21      	subs	r1, r4, r0
d05a0962:	4630      	mov	r0, r6
d05a0964:	f7ff fbb0 	bl	d05a00c8 <_sbrk_r>
d05a0968:	3001      	adds	r0, #1
d05a096a:	d1dd      	bne.n	d05a0928 <_malloc_r+0x64>
d05a096c:	e7cf      	b.n	d05a090e <_malloc_r+0x4a>
d05a096e:	bf00      	nop
d05a0970:	d05a0c00 	.word	0xd05a0c00
d05a0974:	d05a0c04 	.word	0xd05a0c04

d05a0978 <__sread>:
d05a0978:	b510      	push	{r4, lr}
d05a097a:	460c      	mov	r4, r1
d05a097c:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d05a0980:	f000 f87e 	bl	d05a0a80 <_read_r>
d05a0984:	2800      	cmp	r0, #0
d05a0986:	bfab      	itete	ge
d05a0988:	6d63      	ldrge	r3, [r4, #84]	; 0x54
d05a098a:	89a3      	ldrhlt	r3, [r4, #12]
d05a098c:	181b      	addge	r3, r3, r0
d05a098e:	f423 5380 	biclt.w	r3, r3, #4096	; 0x1000
d05a0992:	bfac      	ite	ge
d05a0994:	6563      	strge	r3, [r4, #84]	; 0x54
d05a0996:	81a3      	strhlt	r3, [r4, #12]
d05a0998:	bd10      	pop	{r4, pc}

d05a099a <__swrite>:
d05a099a:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
d05a099e:	461f      	mov	r7, r3
d05a09a0:	898b      	ldrh	r3, [r1, #12]
d05a09a2:	05db      	lsls	r3, r3, #23
d05a09a4:	4605      	mov	r5, r0
d05a09a6:	460c      	mov	r4, r1
d05a09a8:	4616      	mov	r6, r2
d05a09aa:	d505      	bpl.n	d05a09b8 <__swrite+0x1e>
d05a09ac:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d05a09b0:	2302      	movs	r3, #2
d05a09b2:	2200      	movs	r2, #0
d05a09b4:	f000 f846 	bl	d05a0a44 <_lseek_r>
d05a09b8:	89a3      	ldrh	r3, [r4, #12]
d05a09ba:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
d05a09be:	f423 5380 	bic.w	r3, r3, #4096	; 0x1000
d05a09c2:	81a3      	strh	r3, [r4, #12]
d05a09c4:	4632      	mov	r2, r6
d05a09c6:	463b      	mov	r3, r7
d05a09c8:	4628      	mov	r0, r5
d05a09ca:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
d05a09ce:	f7ff bb35 	b.w	d05a003c <_write_r>

d05a09d2 <__sseek>:
d05a09d2:	b510      	push	{r4, lr}
d05a09d4:	460c      	mov	r4, r1
d05a09d6:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d05a09da:	f000 f833 	bl	d05a0a44 <_lseek_r>
d05a09de:	1c43      	adds	r3, r0, #1
d05a09e0:	89a3      	ldrh	r3, [r4, #12]
d05a09e2:	bf15      	itete	ne
d05a09e4:	6560      	strne	r0, [r4, #84]	; 0x54
d05a09e6:	f423 5380 	biceq.w	r3, r3, #4096	; 0x1000
d05a09ea:	f443 5380 	orrne.w	r3, r3, #4096	; 0x1000
d05a09ee:	81a3      	strheq	r3, [r4, #12]
d05a09f0:	bf18      	it	ne
d05a09f2:	81a3      	strhne	r3, [r4, #12]
d05a09f4:	bd10      	pop	{r4, pc}

d05a09f6 <__sclose>:
d05a09f6:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d05a09fa:	f000 b801 	b.w	d05a0a00 <_close_r>
	...

d05a0a00 <_close_r>:
d05a0a00:	b538      	push	{r3, r4, r5, lr}
d05a0a02:	4d06      	ldr	r5, [pc, #24]	; (d05a0a1c <_close_r+0x1c>)
d05a0a04:	2300      	movs	r3, #0
d05a0a06:	4604      	mov	r4, r0
d05a0a08:	4608      	mov	r0, r1
d05a0a0a:	602b      	str	r3, [r5, #0]
d05a0a0c:	f7ff fb50 	bl	d05a00b0 <_close>
d05a0a10:	1c43      	adds	r3, r0, #1
d05a0a12:	d102      	bne.n	d05a0a1a <_close_r+0x1a>
d05a0a14:	682b      	ldr	r3, [r5, #0]
d05a0a16:	b103      	cbz	r3, d05a0a1a <_close_r+0x1a>
d05a0a18:	6023      	str	r3, [r4, #0]
d05a0a1a:	bd38      	pop	{r3, r4, r5, pc}
d05a0a1c:	d05a0c14 	.word	0xd05a0c14

d05a0a20 <_fstat_r>:
d05a0a20:	b538      	push	{r3, r4, r5, lr}
d05a0a22:	4d07      	ldr	r5, [pc, #28]	; (d05a0a40 <_fstat_r+0x20>)
d05a0a24:	2300      	movs	r3, #0
d05a0a26:	4604      	mov	r4, r0
d05a0a28:	4608      	mov	r0, r1
d05a0a2a:	4611      	mov	r1, r2
d05a0a2c:	602b      	str	r3, [r5, #0]
d05a0a2e:	f7ff fb43 	bl	d05a00b8 <_fstat>
d05a0a32:	1c43      	adds	r3, r0, #1
d05a0a34:	d102      	bne.n	d05a0a3c <_fstat_r+0x1c>
d05a0a36:	682b      	ldr	r3, [r5, #0]
d05a0a38:	b103      	cbz	r3, d05a0a3c <_fstat_r+0x1c>
d05a0a3a:	6023      	str	r3, [r4, #0]
d05a0a3c:	bd38      	pop	{r3, r4, r5, pc}
d05a0a3e:	bf00      	nop
d05a0a40:	d05a0c14 	.word	0xd05a0c14

d05a0a44 <_lseek_r>:
d05a0a44:	b538      	push	{r3, r4, r5, lr}
d05a0a46:	4d07      	ldr	r5, [pc, #28]	; (d05a0a64 <_lseek_r+0x20>)
d05a0a48:	4604      	mov	r4, r0
d05a0a4a:	4608      	mov	r0, r1
d05a0a4c:	4611      	mov	r1, r2
d05a0a4e:	2200      	movs	r2, #0
d05a0a50:	602a      	str	r2, [r5, #0]
d05a0a52:	461a      	mov	r2, r3
d05a0a54:	f7ff fb36 	bl	d05a00c4 <_lseek>
d05a0a58:	1c43      	adds	r3, r0, #1
d05a0a5a:	d102      	bne.n	d05a0a62 <_lseek_r+0x1e>
d05a0a5c:	682b      	ldr	r3, [r5, #0]
d05a0a5e:	b103      	cbz	r3, d05a0a62 <_lseek_r+0x1e>
d05a0a60:	6023      	str	r3, [r4, #0]
d05a0a62:	bd38      	pop	{r3, r4, r5, pc}
d05a0a64:	d05a0c14 	.word	0xd05a0c14

d05a0a68 <__malloc_lock>:
d05a0a68:	4801      	ldr	r0, [pc, #4]	; (d05a0a70 <__malloc_lock+0x8>)
d05a0a6a:	f7ff bead 	b.w	d05a07c8 <__retarget_lock_acquire_recursive>
d05a0a6e:	bf00      	nop
d05a0a70:	d05a0c0c 	.word	0xd05a0c0c

d05a0a74 <__malloc_unlock>:
d05a0a74:	4801      	ldr	r0, [pc, #4]	; (d05a0a7c <__malloc_unlock+0x8>)
d05a0a76:	f7ff bea8 	b.w	d05a07ca <__retarget_lock_release_recursive>
d05a0a7a:	bf00      	nop
d05a0a7c:	d05a0c0c 	.word	0xd05a0c0c

d05a0a80 <_read_r>:
d05a0a80:	b538      	push	{r3, r4, r5, lr}
d05a0a82:	4d07      	ldr	r5, [pc, #28]	; (d05a0aa0 <_read_r+0x20>)
d05a0a84:	4604      	mov	r4, r0
d05a0a86:	4608      	mov	r0, r1
d05a0a88:	4611      	mov	r1, r2
d05a0a8a:	2200      	movs	r2, #0
d05a0a8c:	602a      	str	r2, [r5, #0]
d05a0a8e:	461a      	mov	r2, r3
d05a0a90:	f7ff fb04 	bl	d05a009c <_read>
d05a0a94:	1c43      	adds	r3, r0, #1
d05a0a96:	d102      	bne.n	d05a0a9e <_read_r+0x1e>
d05a0a98:	682b      	ldr	r3, [r5, #0]
d05a0a9a:	b103      	cbz	r3, d05a0a9e <_read_r+0x1e>
d05a0a9c:	6023      	str	r3, [r4, #0]
d05a0a9e:	bd38      	pop	{r3, r4, r5, pc}
d05a0aa0:	d05a0c14 	.word	0xd05a0c14
d05a0aa4:	20495547 	.word	0x20495547
d05a0aa8:	6f636950 	.word	0x6f636950
d05a0aac:	6c6f6320 	.word	0x6c6f6320
d05a0ab0:	2072756f 	.word	0x2072756f
d05a0ab4:	74736574 	.word	0x74736574
d05a0ab8:	00000000 	.word	0x00000000
d05a0abc:	4f434950 	.word	0x4f434950
d05a0ac0:	204d4f43 	.word	0x204d4f43
d05a0ac4:	6d726554 	.word	0x6d726554
d05a0ac8:	6c616e69 	.word	0x6c616e69
d05a0acc:	6c6f4320 	.word	0x6c6f4320
d05a0ad0:	2072756f 	.word	0x2072756f
d05a0ad4:	74736554 	.word	0x74736554
d05a0ad8:	00217265 	.word	0x00217265
d05a0adc:	34345b1b 	.word	0x34345b1b
d05a0ae0:	3b33393b 	.word	0x3b33393b
d05a0ae4:	55476d31 	.word	0x55476d31
d05a0ae8:	45542049 	.word	0x45542049
d05a0aec:	41205453 	.word	0x41205453
d05a0af0:	3a205050 	.word	0x3a205050
d05a0af4:	63695020 	.word	0x63695020
d05a0af8:	6d6f436f 	.word	0x6d6f436f
d05a0afc:	73655420 	.word	0x73655420
d05a0b00:	6f632074 	.word	0x6f632074
d05a0b04:	72756f6c 	.word	0x72756f6c
d05a0b08:	305b1b21 	.word	0x305b1b21
d05a0b0c:	0a0a0d6d 	.word	0x0a0a0d6d
d05a0b10:	6c6c6548 	.word	0x6c6c6548
d05a0b14:	6f77206f 	.word	0x6f77206f
d05a0b18:	21646c72 	.word	0x21646c72
d05a0b1c:	00000000 	.word	0x00000000
d05a0b20:	0000000a 	.word	0x0000000a

d05a0b24 <_global_impure_ptr>:
d05a0b24:	d05a0b94                                ..Z.

d05a0b28 <__sf_fake_stderr>:
	...

d05a0b48 <__sf_fake_stdin>:
	...

d05a0b68 <__sf_fake_stdout>:
	...

Disassembly of section .init:

d05a0b88 <_init>:
d05a0b88:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d05a0b8a:	bf00      	nop

Disassembly of section .fini:

d05a0b8c <_fini>:
d05a0b8c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d05a0b8e:	bf00      	nop

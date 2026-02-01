
compiled/applet.elf:     file format elf32-littlearm


Disassembly of section .text:

d0000010 <applet_entry>:
d0000010:	b570      	push	{r4, r5, r6, lr}
d0000012:	4e09      	ldr	r6, [pc, #36]	; (d0000038 <applet_entry+0x28>)
d0000014:	460d      	mov	r5, r1
d0000016:	4604      	mov	r4, r0
d0000018:	2100      	movs	r1, #0
d000001a:	6833      	ldr	r3, [r6, #0]
d000001c:	6898      	ldr	r0, [r3, #8]
d000001e:	f000 f8fd 	bl	d000021c <setbuf>
d0000022:	6833      	ldr	r3, [r6, #0]
d0000024:	2100      	movs	r1, #0
d0000026:	68d8      	ldr	r0, [r3, #12]
d0000028:	f000 f8f8 	bl	d000021c <setbuf>
d000002c:	4629      	mov	r1, r5
d000002e:	4620      	mov	r0, r4
d0000030:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
d0000034:	f000 b868 	b.w	d0000108 <main>
d0000038:	d0000cac 	.word	0xd0000cac

d000003c <memset>:
d000003c:	4402      	add	r2, r0
d000003e:	4603      	mov	r3, r0
d0000040:	4293      	cmp	r3, r2
d0000042:	d100      	bne.n	d0000046 <memset+0xa>
d0000044:	4770      	bx	lr
d0000046:	f803 1b01 	strb.w	r1, [r3], #1
d000004a:	e7f9      	b.n	d0000040 <memset+0x4>

d000004c <_write_r>:
d000004c:	3901      	subs	r1, #1
d000004e:	2901      	cmp	r1, #1
d0000050:	b570      	push	{r4, r5, r6, lr}
d0000052:	d814      	bhi.n	d000007e <_write_r+0x32>
d0000054:	b18a      	cbz	r2, d000007a <_write_r+0x2e>
d0000056:	461c      	mov	r4, r3
d0000058:	b17b      	cbz	r3, d000007a <_write_r+0x2e>
d000005a:	4d0d      	ldr	r5, [pc, #52]	; (d0000090 <_write_r+0x44>)
d000005c:	682e      	ldr	r6, [r5, #0]
d000005e:	b956      	cbnz	r6, d0000076 <_write_r+0x2a>
d0000060:	2001      	movs	r0, #1
d0000062:	4b0c      	ldr	r3, [pc, #48]	; (d0000094 <_write_r+0x48>)
d0000064:	4611      	mov	r1, r2
d0000066:	4622      	mov	r2, r4
d0000068:	6028      	str	r0, [r5, #0]
d000006a:	4630      	mov	r0, r6
d000006c:	681b      	ldr	r3, [r3, #0]
d000006e:	681b      	ldr	r3, [r3, #0]
d0000070:	685b      	ldr	r3, [r3, #4]
d0000072:	4798      	blx	r3
d0000074:	602e      	str	r6, [r5, #0]
d0000076:	4620      	mov	r0, r4
d0000078:	bd70      	pop	{r4, r5, r6, pc}
d000007a:	2000      	movs	r0, #0
d000007c:	bd70      	pop	{r4, r5, r6, pc}
d000007e:	f000 f851 	bl	d0000124 <__errno>
d0000082:	2209      	movs	r2, #9
d0000084:	4603      	mov	r3, r0
d0000086:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d000008a:	601a      	str	r2, [r3, #0]
d000008c:	bd70      	pop	{r4, r5, r6, pc}
d000008e:	bf00      	nop
d0000090:	d0000d14 	.word	0xd0000d14
d0000094:	2001f800 	.word	0x2001f800

d0000098 <_read>:
d0000098:	b508      	push	{r3, lr}
d000009a:	f000 f843 	bl	d0000124 <__errno>
d000009e:	2258      	movs	r2, #88	; 0x58
d00000a0:	4603      	mov	r3, r0
d00000a2:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d00000a6:	601a      	str	r2, [r3, #0]
d00000a8:	bd08      	pop	{r3, pc}
d00000aa:	bf00      	nop

d00000ac <_close>:
d00000ac:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d00000b0:	4770      	bx	lr
d00000b2:	bf00      	nop

d00000b4 <_fstat>:
d00000b4:	f44f 5300 	mov.w	r3, #8192	; 0x2000
d00000b8:	2000      	movs	r0, #0
d00000ba:	604b      	str	r3, [r1, #4]
d00000bc:	4770      	bx	lr
d00000be:	bf00      	nop

d00000c0 <_lseek>:
d00000c0:	2000      	movs	r0, #0
d00000c2:	4770      	bx	lr

d00000c4 <_sbrk_r>:
d00000c4:	4b0c      	ldr	r3, [pc, #48]	; (d00000f8 <_sbrk_r+0x34>)
d00000c6:	4a0d      	ldr	r2, [pc, #52]	; (d00000fc <_sbrk_r+0x38>)
d00000c8:	6818      	ldr	r0, [r3, #0]
d00000ca:	b510      	push	{r4, lr}
d00000cc:	b918      	cbnz	r0, d00000d6 <_sbrk_r+0x12>
d00000ce:	1dd0      	adds	r0, r2, #7
d00000d0:	f020 0007 	bic.w	r0, r0, #7
d00000d4:	6018      	str	r0, [r3, #0]
d00000d6:	4401      	add	r1, r0
d00000d8:	4c09      	ldr	r4, [pc, #36]	; (d0000100 <_sbrk_r+0x3c>)
d00000da:	42a1      	cmp	r1, r4
d00000dc:	d803      	bhi.n	d00000e6 <_sbrk_r+0x22>
d00000de:	4291      	cmp	r1, r2
d00000e0:	d301      	bcc.n	d00000e6 <_sbrk_r+0x22>
d00000e2:	6019      	str	r1, [r3, #0]
d00000e4:	bd10      	pop	{r4, pc}
d00000e6:	f000 f81d 	bl	d0000124 <__errno>
d00000ea:	220c      	movs	r2, #12
d00000ec:	4603      	mov	r3, r0
d00000ee:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d00000f2:	601a      	str	r2, [r3, #0]
d00000f4:	bd10      	pop	{r4, pc}
d00000f6:	bf00      	nop
d00000f8:	d0000d10 	.word	0xd0000d10
d00000fc:	d0000d30 	.word	0xd0000d30
d0000100:	d0600000 	.word	0xd0600000

d0000104 <_isatty>:
d0000104:	2001      	movs	r0, #1
d0000106:	4770      	bx	lr

d0000108 <main>:
d0000108:	b508      	push	{r3, lr}
d000010a:	4804      	ldr	r0, [pc, #16]	; (d000011c <main+0x14>)
d000010c:	f000 f87e 	bl	d000020c <puts>
d0000110:	4803      	ldr	r0, [pc, #12]	; (d0000120 <main+0x18>)
d0000112:	f000 f87b 	bl	d000020c <puts>
d0000116:	2000      	movs	r0, #0
d0000118:	bd08      	pop	{r3, pc}
d000011a:	bf00      	nop
d000011c:	d0000c28 	.word	0xd0000c28
d0000120:	d0000c40 	.word	0xd0000c40

d0000124 <__errno>:
d0000124:	4b01      	ldr	r3, [pc, #4]	; (d000012c <__errno+0x8>)
d0000126:	6818      	ldr	r0, [r3, #0]
d0000128:	4770      	bx	lr
d000012a:	bf00      	nop
d000012c:	d0000cac 	.word	0xd0000cac

d0000130 <_puts_r>:
d0000130:	b570      	push	{r4, r5, r6, lr}
d0000132:	460e      	mov	r6, r1
d0000134:	4605      	mov	r5, r0
d0000136:	b118      	cbz	r0, d0000140 <_puts_r+0x10>
d0000138:	6983      	ldr	r3, [r0, #24]
d000013a:	b90b      	cbnz	r3, d0000140 <_puts_r+0x10>
d000013c:	f000 fb16 	bl	d000076c <__sinit>
d0000140:	69ab      	ldr	r3, [r5, #24]
d0000142:	68ac      	ldr	r4, [r5, #8]
d0000144:	b913      	cbnz	r3, d000014c <_puts_r+0x1c>
d0000146:	4628      	mov	r0, r5
d0000148:	f000 fb10 	bl	d000076c <__sinit>
d000014c:	4b2c      	ldr	r3, [pc, #176]	; (d0000200 <_puts_r+0xd0>)
d000014e:	429c      	cmp	r4, r3
d0000150:	d120      	bne.n	d0000194 <_puts_r+0x64>
d0000152:	686c      	ldr	r4, [r5, #4]
d0000154:	6e63      	ldr	r3, [r4, #100]	; 0x64
d0000156:	07db      	lsls	r3, r3, #31
d0000158:	d405      	bmi.n	d0000166 <_puts_r+0x36>
d000015a:	89a3      	ldrh	r3, [r4, #12]
d000015c:	0598      	lsls	r0, r3, #22
d000015e:	d402      	bmi.n	d0000166 <_puts_r+0x36>
d0000160:	6da0      	ldr	r0, [r4, #88]	; 0x58
d0000162:	f000 fba1 	bl	d00008a8 <__retarget_lock_acquire_recursive>
d0000166:	89a3      	ldrh	r3, [r4, #12]
d0000168:	0719      	lsls	r1, r3, #28
d000016a:	d51d      	bpl.n	d00001a8 <_puts_r+0x78>
d000016c:	6923      	ldr	r3, [r4, #16]
d000016e:	b1db      	cbz	r3, d00001a8 <_puts_r+0x78>
d0000170:	3e01      	subs	r6, #1
d0000172:	68a3      	ldr	r3, [r4, #8]
d0000174:	f816 1f01 	ldrb.w	r1, [r6, #1]!
d0000178:	3b01      	subs	r3, #1
d000017a:	60a3      	str	r3, [r4, #8]
d000017c:	bb39      	cbnz	r1, d00001ce <_puts_r+0x9e>
d000017e:	2b00      	cmp	r3, #0
d0000180:	da38      	bge.n	d00001f4 <_puts_r+0xc4>
d0000182:	4622      	mov	r2, r4
d0000184:	210a      	movs	r1, #10
d0000186:	4628      	mov	r0, r5
d0000188:	f000 f916 	bl	d00003b8 <__swbuf_r>
d000018c:	3001      	adds	r0, #1
d000018e:	d011      	beq.n	d00001b4 <_puts_r+0x84>
d0000190:	250a      	movs	r5, #10
d0000192:	e011      	b.n	d00001b8 <_puts_r+0x88>
d0000194:	4b1b      	ldr	r3, [pc, #108]	; (d0000204 <_puts_r+0xd4>)
d0000196:	429c      	cmp	r4, r3
d0000198:	d101      	bne.n	d000019e <_puts_r+0x6e>
d000019a:	68ac      	ldr	r4, [r5, #8]
d000019c:	e7da      	b.n	d0000154 <_puts_r+0x24>
d000019e:	4b1a      	ldr	r3, [pc, #104]	; (d0000208 <_puts_r+0xd8>)
d00001a0:	429c      	cmp	r4, r3
d00001a2:	bf08      	it	eq
d00001a4:	68ec      	ldreq	r4, [r5, #12]
d00001a6:	e7d5      	b.n	d0000154 <_puts_r+0x24>
d00001a8:	4621      	mov	r1, r4
d00001aa:	4628      	mov	r0, r5
d00001ac:	f000 f956 	bl	d000045c <__swsetup_r>
d00001b0:	2800      	cmp	r0, #0
d00001b2:	d0dd      	beq.n	d0000170 <_puts_r+0x40>
d00001b4:	f04f 35ff 	mov.w	r5, #4294967295	; 0xffffffff
d00001b8:	6e63      	ldr	r3, [r4, #100]	; 0x64
d00001ba:	07da      	lsls	r2, r3, #31
d00001bc:	d405      	bmi.n	d00001ca <_puts_r+0x9a>
d00001be:	89a3      	ldrh	r3, [r4, #12]
d00001c0:	059b      	lsls	r3, r3, #22
d00001c2:	d402      	bmi.n	d00001ca <_puts_r+0x9a>
d00001c4:	6da0      	ldr	r0, [r4, #88]	; 0x58
d00001c6:	f000 fb70 	bl	d00008aa <__retarget_lock_release_recursive>
d00001ca:	4628      	mov	r0, r5
d00001cc:	bd70      	pop	{r4, r5, r6, pc}
d00001ce:	2b00      	cmp	r3, #0
d00001d0:	da04      	bge.n	d00001dc <_puts_r+0xac>
d00001d2:	69a2      	ldr	r2, [r4, #24]
d00001d4:	429a      	cmp	r2, r3
d00001d6:	dc06      	bgt.n	d00001e6 <_puts_r+0xb6>
d00001d8:	290a      	cmp	r1, #10
d00001da:	d004      	beq.n	d00001e6 <_puts_r+0xb6>
d00001dc:	6823      	ldr	r3, [r4, #0]
d00001de:	1c5a      	adds	r2, r3, #1
d00001e0:	6022      	str	r2, [r4, #0]
d00001e2:	7019      	strb	r1, [r3, #0]
d00001e4:	e7c5      	b.n	d0000172 <_puts_r+0x42>
d00001e6:	4622      	mov	r2, r4
d00001e8:	4628      	mov	r0, r5
d00001ea:	f000 f8e5 	bl	d00003b8 <__swbuf_r>
d00001ee:	3001      	adds	r0, #1
d00001f0:	d1bf      	bne.n	d0000172 <_puts_r+0x42>
d00001f2:	e7df      	b.n	d00001b4 <_puts_r+0x84>
d00001f4:	6823      	ldr	r3, [r4, #0]
d00001f6:	250a      	movs	r5, #10
d00001f8:	1c5a      	adds	r2, r3, #1
d00001fa:	6022      	str	r2, [r4, #0]
d00001fc:	701d      	strb	r5, [r3, #0]
d00001fe:	e7db      	b.n	d00001b8 <_puts_r+0x88>
d0000200:	d0000c64 	.word	0xd0000c64
d0000204:	d0000c84 	.word	0xd0000c84
d0000208:	d0000c44 	.word	0xd0000c44

d000020c <puts>:
d000020c:	4b02      	ldr	r3, [pc, #8]	; (d0000218 <puts+0xc>)
d000020e:	4601      	mov	r1, r0
d0000210:	6818      	ldr	r0, [r3, #0]
d0000212:	f7ff bf8d 	b.w	d0000130 <_puts_r>
d0000216:	bf00      	nop
d0000218:	d0000cac 	.word	0xd0000cac

d000021c <setbuf>:
d000021c:	2900      	cmp	r1, #0
d000021e:	f44f 6380 	mov.w	r3, #1024	; 0x400
d0000222:	bf0c      	ite	eq
d0000224:	2202      	moveq	r2, #2
d0000226:	2200      	movne	r2, #0
d0000228:	f000 b800 	b.w	d000022c <setvbuf>

d000022c <setvbuf>:
d000022c:	e92d 43f7 	stmdb	sp!, {r0, r1, r2, r4, r5, r6, r7, r8, r9, lr}
d0000230:	461d      	mov	r5, r3
d0000232:	4b5d      	ldr	r3, [pc, #372]	; (d00003a8 <setvbuf+0x17c>)
d0000234:	681f      	ldr	r7, [r3, #0]
d0000236:	4604      	mov	r4, r0
d0000238:	460e      	mov	r6, r1
d000023a:	4690      	mov	r8, r2
d000023c:	b127      	cbz	r7, d0000248 <setvbuf+0x1c>
d000023e:	69bb      	ldr	r3, [r7, #24]
d0000240:	b913      	cbnz	r3, d0000248 <setvbuf+0x1c>
d0000242:	4638      	mov	r0, r7
d0000244:	f000 fa92 	bl	d000076c <__sinit>
d0000248:	4b58      	ldr	r3, [pc, #352]	; (d00003ac <setvbuf+0x180>)
d000024a:	429c      	cmp	r4, r3
d000024c:	d167      	bne.n	d000031e <setvbuf+0xf2>
d000024e:	687c      	ldr	r4, [r7, #4]
d0000250:	f1b8 0f02 	cmp.w	r8, #2
d0000254:	d006      	beq.n	d0000264 <setvbuf+0x38>
d0000256:	f1b8 0f01 	cmp.w	r8, #1
d000025a:	f200 809f 	bhi.w	d000039c <setvbuf+0x170>
d000025e:	2d00      	cmp	r5, #0
d0000260:	f2c0 809c 	blt.w	d000039c <setvbuf+0x170>
d0000264:	6e63      	ldr	r3, [r4, #100]	; 0x64
d0000266:	07db      	lsls	r3, r3, #31
d0000268:	d405      	bmi.n	d0000276 <setvbuf+0x4a>
d000026a:	89a3      	ldrh	r3, [r4, #12]
d000026c:	0598      	lsls	r0, r3, #22
d000026e:	d402      	bmi.n	d0000276 <setvbuf+0x4a>
d0000270:	6da0      	ldr	r0, [r4, #88]	; 0x58
d0000272:	f000 fb19 	bl	d00008a8 <__retarget_lock_acquire_recursive>
d0000276:	4621      	mov	r1, r4
d0000278:	4638      	mov	r0, r7
d000027a:	f000 f9e3 	bl	d0000644 <_fflush_r>
d000027e:	6b61      	ldr	r1, [r4, #52]	; 0x34
d0000280:	b141      	cbz	r1, d0000294 <setvbuf+0x68>
d0000282:	f104 0344 	add.w	r3, r4, #68	; 0x44
d0000286:	4299      	cmp	r1, r3
d0000288:	d002      	beq.n	d0000290 <setvbuf+0x64>
d000028a:	4638      	mov	r0, r7
d000028c:	f000 fb7a 	bl	d0000984 <_free_r>
d0000290:	2300      	movs	r3, #0
d0000292:	6363      	str	r3, [r4, #52]	; 0x34
d0000294:	2300      	movs	r3, #0
d0000296:	61a3      	str	r3, [r4, #24]
d0000298:	6063      	str	r3, [r4, #4]
d000029a:	89a3      	ldrh	r3, [r4, #12]
d000029c:	0619      	lsls	r1, r3, #24
d000029e:	d503      	bpl.n	d00002a8 <setvbuf+0x7c>
d00002a0:	6921      	ldr	r1, [r4, #16]
d00002a2:	4638      	mov	r0, r7
d00002a4:	f000 fb6e 	bl	d0000984 <_free_r>
d00002a8:	89a3      	ldrh	r3, [r4, #12]
d00002aa:	f423 634a 	bic.w	r3, r3, #3232	; 0xca0
d00002ae:	f023 0303 	bic.w	r3, r3, #3
d00002b2:	f1b8 0f02 	cmp.w	r8, #2
d00002b6:	81a3      	strh	r3, [r4, #12]
d00002b8:	d06c      	beq.n	d0000394 <setvbuf+0x168>
d00002ba:	ab01      	add	r3, sp, #4
d00002bc:	466a      	mov	r2, sp
d00002be:	4621      	mov	r1, r4
d00002c0:	4638      	mov	r0, r7
d00002c2:	f000 faf3 	bl	d00008ac <__swhatbuf_r>
d00002c6:	89a3      	ldrh	r3, [r4, #12]
d00002c8:	4318      	orrs	r0, r3
d00002ca:	81a0      	strh	r0, [r4, #12]
d00002cc:	2d00      	cmp	r5, #0
d00002ce:	d130      	bne.n	d0000332 <setvbuf+0x106>
d00002d0:	9d00      	ldr	r5, [sp, #0]
d00002d2:	4628      	mov	r0, r5
d00002d4:	f000 fb4e 	bl	d0000974 <malloc>
d00002d8:	4606      	mov	r6, r0
d00002da:	2800      	cmp	r0, #0
d00002dc:	d155      	bne.n	d000038a <setvbuf+0x15e>
d00002de:	f8dd 9000 	ldr.w	r9, [sp]
d00002e2:	45a9      	cmp	r9, r5
d00002e4:	d14a      	bne.n	d000037c <setvbuf+0x150>
d00002e6:	f04f 35ff 	mov.w	r5, #4294967295	; 0xffffffff
d00002ea:	2200      	movs	r2, #0
d00002ec:	60a2      	str	r2, [r4, #8]
d00002ee:	f104 0247 	add.w	r2, r4, #71	; 0x47
d00002f2:	6022      	str	r2, [r4, #0]
d00002f4:	6122      	str	r2, [r4, #16]
d00002f6:	2201      	movs	r2, #1
d00002f8:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
d00002fc:	6162      	str	r2, [r4, #20]
d00002fe:	6e62      	ldr	r2, [r4, #100]	; 0x64
d0000300:	f043 0302 	orr.w	r3, r3, #2
d0000304:	07d2      	lsls	r2, r2, #31
d0000306:	81a3      	strh	r3, [r4, #12]
d0000308:	d405      	bmi.n	d0000316 <setvbuf+0xea>
d000030a:	f413 7f00 	tst.w	r3, #512	; 0x200
d000030e:	d102      	bne.n	d0000316 <setvbuf+0xea>
d0000310:	6da0      	ldr	r0, [r4, #88]	; 0x58
d0000312:	f000 faca 	bl	d00008aa <__retarget_lock_release_recursive>
d0000316:	4628      	mov	r0, r5
d0000318:	b003      	add	sp, #12
d000031a:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
d000031e:	4b24      	ldr	r3, [pc, #144]	; (d00003b0 <setvbuf+0x184>)
d0000320:	429c      	cmp	r4, r3
d0000322:	d101      	bne.n	d0000328 <setvbuf+0xfc>
d0000324:	68bc      	ldr	r4, [r7, #8]
d0000326:	e793      	b.n	d0000250 <setvbuf+0x24>
d0000328:	4b22      	ldr	r3, [pc, #136]	; (d00003b4 <setvbuf+0x188>)
d000032a:	429c      	cmp	r4, r3
d000032c:	bf08      	it	eq
d000032e:	68fc      	ldreq	r4, [r7, #12]
d0000330:	e78e      	b.n	d0000250 <setvbuf+0x24>
d0000332:	2e00      	cmp	r6, #0
d0000334:	d0cd      	beq.n	d00002d2 <setvbuf+0xa6>
d0000336:	69bb      	ldr	r3, [r7, #24]
d0000338:	b913      	cbnz	r3, d0000340 <setvbuf+0x114>
d000033a:	4638      	mov	r0, r7
d000033c:	f000 fa16 	bl	d000076c <__sinit>
d0000340:	f1b8 0f01 	cmp.w	r8, #1
d0000344:	bf08      	it	eq
d0000346:	89a3      	ldrheq	r3, [r4, #12]
d0000348:	6026      	str	r6, [r4, #0]
d000034a:	bf04      	itt	eq
d000034c:	f043 0301 	orreq.w	r3, r3, #1
d0000350:	81a3      	strheq	r3, [r4, #12]
d0000352:	89a2      	ldrh	r2, [r4, #12]
d0000354:	f012 0308 	ands.w	r3, r2, #8
d0000358:	e9c4 6504 	strd	r6, r5, [r4, #16]
d000035c:	d01c      	beq.n	d0000398 <setvbuf+0x16c>
d000035e:	07d3      	lsls	r3, r2, #31
d0000360:	bf41      	itttt	mi
d0000362:	2300      	movmi	r3, #0
d0000364:	426d      	negmi	r5, r5
d0000366:	60a3      	strmi	r3, [r4, #8]
d0000368:	61a5      	strmi	r5, [r4, #24]
d000036a:	bf58      	it	pl
d000036c:	60a5      	strpl	r5, [r4, #8]
d000036e:	6e65      	ldr	r5, [r4, #100]	; 0x64
d0000370:	f015 0501 	ands.w	r5, r5, #1
d0000374:	d115      	bne.n	d00003a2 <setvbuf+0x176>
d0000376:	f412 7f00 	tst.w	r2, #512	; 0x200
d000037a:	e7c8      	b.n	d000030e <setvbuf+0xe2>
d000037c:	4648      	mov	r0, r9
d000037e:	f000 faf9 	bl	d0000974 <malloc>
d0000382:	4606      	mov	r6, r0
d0000384:	2800      	cmp	r0, #0
d0000386:	d0ae      	beq.n	d00002e6 <setvbuf+0xba>
d0000388:	464d      	mov	r5, r9
d000038a:	89a3      	ldrh	r3, [r4, #12]
d000038c:	f043 0380 	orr.w	r3, r3, #128	; 0x80
d0000390:	81a3      	strh	r3, [r4, #12]
d0000392:	e7d0      	b.n	d0000336 <setvbuf+0x10a>
d0000394:	2500      	movs	r5, #0
d0000396:	e7a8      	b.n	d00002ea <setvbuf+0xbe>
d0000398:	60a3      	str	r3, [r4, #8]
d000039a:	e7e8      	b.n	d000036e <setvbuf+0x142>
d000039c:	f04f 35ff 	mov.w	r5, #4294967295	; 0xffffffff
d00003a0:	e7b9      	b.n	d0000316 <setvbuf+0xea>
d00003a2:	2500      	movs	r5, #0
d00003a4:	e7b7      	b.n	d0000316 <setvbuf+0xea>
d00003a6:	bf00      	nop
d00003a8:	d0000cac 	.word	0xd0000cac
d00003ac:	d0000c64 	.word	0xd0000c64
d00003b0:	d0000c84 	.word	0xd0000c84
d00003b4:	d0000c44 	.word	0xd0000c44

d00003b8 <__swbuf_r>:
d00003b8:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d00003ba:	460e      	mov	r6, r1
d00003bc:	4614      	mov	r4, r2
d00003be:	4605      	mov	r5, r0
d00003c0:	b118      	cbz	r0, d00003ca <__swbuf_r+0x12>
d00003c2:	6983      	ldr	r3, [r0, #24]
d00003c4:	b90b      	cbnz	r3, d00003ca <__swbuf_r+0x12>
d00003c6:	f000 f9d1 	bl	d000076c <__sinit>
d00003ca:	4b21      	ldr	r3, [pc, #132]	; (d0000450 <__swbuf_r+0x98>)
d00003cc:	429c      	cmp	r4, r3
d00003ce:	d12b      	bne.n	d0000428 <__swbuf_r+0x70>
d00003d0:	686c      	ldr	r4, [r5, #4]
d00003d2:	69a3      	ldr	r3, [r4, #24]
d00003d4:	60a3      	str	r3, [r4, #8]
d00003d6:	89a3      	ldrh	r3, [r4, #12]
d00003d8:	071a      	lsls	r2, r3, #28
d00003da:	d52f      	bpl.n	d000043c <__swbuf_r+0x84>
d00003dc:	6923      	ldr	r3, [r4, #16]
d00003de:	b36b      	cbz	r3, d000043c <__swbuf_r+0x84>
d00003e0:	6923      	ldr	r3, [r4, #16]
d00003e2:	6820      	ldr	r0, [r4, #0]
d00003e4:	1ac0      	subs	r0, r0, r3
d00003e6:	6963      	ldr	r3, [r4, #20]
d00003e8:	b2f6      	uxtb	r6, r6
d00003ea:	4283      	cmp	r3, r0
d00003ec:	4637      	mov	r7, r6
d00003ee:	dc04      	bgt.n	d00003fa <__swbuf_r+0x42>
d00003f0:	4621      	mov	r1, r4
d00003f2:	4628      	mov	r0, r5
d00003f4:	f000 f926 	bl	d0000644 <_fflush_r>
d00003f8:	bb30      	cbnz	r0, d0000448 <__swbuf_r+0x90>
d00003fa:	68a3      	ldr	r3, [r4, #8]
d00003fc:	3b01      	subs	r3, #1
d00003fe:	60a3      	str	r3, [r4, #8]
d0000400:	6823      	ldr	r3, [r4, #0]
d0000402:	1c5a      	adds	r2, r3, #1
d0000404:	6022      	str	r2, [r4, #0]
d0000406:	701e      	strb	r6, [r3, #0]
d0000408:	6963      	ldr	r3, [r4, #20]
d000040a:	3001      	adds	r0, #1
d000040c:	4283      	cmp	r3, r0
d000040e:	d004      	beq.n	d000041a <__swbuf_r+0x62>
d0000410:	89a3      	ldrh	r3, [r4, #12]
d0000412:	07db      	lsls	r3, r3, #31
d0000414:	d506      	bpl.n	d0000424 <__swbuf_r+0x6c>
d0000416:	2e0a      	cmp	r6, #10
d0000418:	d104      	bne.n	d0000424 <__swbuf_r+0x6c>
d000041a:	4621      	mov	r1, r4
d000041c:	4628      	mov	r0, r5
d000041e:	f000 f911 	bl	d0000644 <_fflush_r>
d0000422:	b988      	cbnz	r0, d0000448 <__swbuf_r+0x90>
d0000424:	4638      	mov	r0, r7
d0000426:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d0000428:	4b0a      	ldr	r3, [pc, #40]	; (d0000454 <__swbuf_r+0x9c>)
d000042a:	429c      	cmp	r4, r3
d000042c:	d101      	bne.n	d0000432 <__swbuf_r+0x7a>
d000042e:	68ac      	ldr	r4, [r5, #8]
d0000430:	e7cf      	b.n	d00003d2 <__swbuf_r+0x1a>
d0000432:	4b09      	ldr	r3, [pc, #36]	; (d0000458 <__swbuf_r+0xa0>)
d0000434:	429c      	cmp	r4, r3
d0000436:	bf08      	it	eq
d0000438:	68ec      	ldreq	r4, [r5, #12]
d000043a:	e7ca      	b.n	d00003d2 <__swbuf_r+0x1a>
d000043c:	4621      	mov	r1, r4
d000043e:	4628      	mov	r0, r5
d0000440:	f000 f80c 	bl	d000045c <__swsetup_r>
d0000444:	2800      	cmp	r0, #0
d0000446:	d0cb      	beq.n	d00003e0 <__swbuf_r+0x28>
d0000448:	f04f 37ff 	mov.w	r7, #4294967295	; 0xffffffff
d000044c:	e7ea      	b.n	d0000424 <__swbuf_r+0x6c>
d000044e:	bf00      	nop
d0000450:	d0000c64 	.word	0xd0000c64
d0000454:	d0000c84 	.word	0xd0000c84
d0000458:	d0000c44 	.word	0xd0000c44

d000045c <__swsetup_r>:
d000045c:	4b32      	ldr	r3, [pc, #200]	; (d0000528 <__swsetup_r+0xcc>)
d000045e:	b570      	push	{r4, r5, r6, lr}
d0000460:	681d      	ldr	r5, [r3, #0]
d0000462:	4606      	mov	r6, r0
d0000464:	460c      	mov	r4, r1
d0000466:	b125      	cbz	r5, d0000472 <__swsetup_r+0x16>
d0000468:	69ab      	ldr	r3, [r5, #24]
d000046a:	b913      	cbnz	r3, d0000472 <__swsetup_r+0x16>
d000046c:	4628      	mov	r0, r5
d000046e:	f000 f97d 	bl	d000076c <__sinit>
d0000472:	4b2e      	ldr	r3, [pc, #184]	; (d000052c <__swsetup_r+0xd0>)
d0000474:	429c      	cmp	r4, r3
d0000476:	d10f      	bne.n	d0000498 <__swsetup_r+0x3c>
d0000478:	686c      	ldr	r4, [r5, #4]
d000047a:	89a3      	ldrh	r3, [r4, #12]
d000047c:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
d0000480:	0719      	lsls	r1, r3, #28
d0000482:	d42c      	bmi.n	d00004de <__swsetup_r+0x82>
d0000484:	06dd      	lsls	r5, r3, #27
d0000486:	d411      	bmi.n	d00004ac <__swsetup_r+0x50>
d0000488:	2309      	movs	r3, #9
d000048a:	6033      	str	r3, [r6, #0]
d000048c:	f042 0340 	orr.w	r3, r2, #64	; 0x40
d0000490:	81a3      	strh	r3, [r4, #12]
d0000492:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d0000496:	e03e      	b.n	d0000516 <__swsetup_r+0xba>
d0000498:	4b25      	ldr	r3, [pc, #148]	; (d0000530 <__swsetup_r+0xd4>)
d000049a:	429c      	cmp	r4, r3
d000049c:	d101      	bne.n	d00004a2 <__swsetup_r+0x46>
d000049e:	68ac      	ldr	r4, [r5, #8]
d00004a0:	e7eb      	b.n	d000047a <__swsetup_r+0x1e>
d00004a2:	4b24      	ldr	r3, [pc, #144]	; (d0000534 <__swsetup_r+0xd8>)
d00004a4:	429c      	cmp	r4, r3
d00004a6:	bf08      	it	eq
d00004a8:	68ec      	ldreq	r4, [r5, #12]
d00004aa:	e7e6      	b.n	d000047a <__swsetup_r+0x1e>
d00004ac:	0758      	lsls	r0, r3, #29
d00004ae:	d512      	bpl.n	d00004d6 <__swsetup_r+0x7a>
d00004b0:	6b61      	ldr	r1, [r4, #52]	; 0x34
d00004b2:	b141      	cbz	r1, d00004c6 <__swsetup_r+0x6a>
d00004b4:	f104 0344 	add.w	r3, r4, #68	; 0x44
d00004b8:	4299      	cmp	r1, r3
d00004ba:	d002      	beq.n	d00004c2 <__swsetup_r+0x66>
d00004bc:	4630      	mov	r0, r6
d00004be:	f000 fa61 	bl	d0000984 <_free_r>
d00004c2:	2300      	movs	r3, #0
d00004c4:	6363      	str	r3, [r4, #52]	; 0x34
d00004c6:	89a3      	ldrh	r3, [r4, #12]
d00004c8:	f023 0324 	bic.w	r3, r3, #36	; 0x24
d00004cc:	81a3      	strh	r3, [r4, #12]
d00004ce:	2300      	movs	r3, #0
d00004d0:	6063      	str	r3, [r4, #4]
d00004d2:	6923      	ldr	r3, [r4, #16]
d00004d4:	6023      	str	r3, [r4, #0]
d00004d6:	89a3      	ldrh	r3, [r4, #12]
d00004d8:	f043 0308 	orr.w	r3, r3, #8
d00004dc:	81a3      	strh	r3, [r4, #12]
d00004de:	6923      	ldr	r3, [r4, #16]
d00004e0:	b94b      	cbnz	r3, d00004f6 <__swsetup_r+0x9a>
d00004e2:	89a3      	ldrh	r3, [r4, #12]
d00004e4:	f403 7320 	and.w	r3, r3, #640	; 0x280
d00004e8:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
d00004ec:	d003      	beq.n	d00004f6 <__swsetup_r+0x9a>
d00004ee:	4621      	mov	r1, r4
d00004f0:	4630      	mov	r0, r6
d00004f2:	f000 f9ff 	bl	d00008f4 <__smakebuf_r>
d00004f6:	89a0      	ldrh	r0, [r4, #12]
d00004f8:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
d00004fc:	f010 0301 	ands.w	r3, r0, #1
d0000500:	d00a      	beq.n	d0000518 <__swsetup_r+0xbc>
d0000502:	2300      	movs	r3, #0
d0000504:	60a3      	str	r3, [r4, #8]
d0000506:	6963      	ldr	r3, [r4, #20]
d0000508:	425b      	negs	r3, r3
d000050a:	61a3      	str	r3, [r4, #24]
d000050c:	6923      	ldr	r3, [r4, #16]
d000050e:	b943      	cbnz	r3, d0000522 <__swsetup_r+0xc6>
d0000510:	f010 0080 	ands.w	r0, r0, #128	; 0x80
d0000514:	d1ba      	bne.n	d000048c <__swsetup_r+0x30>
d0000516:	bd70      	pop	{r4, r5, r6, pc}
d0000518:	0781      	lsls	r1, r0, #30
d000051a:	bf58      	it	pl
d000051c:	6963      	ldrpl	r3, [r4, #20]
d000051e:	60a3      	str	r3, [r4, #8]
d0000520:	e7f4      	b.n	d000050c <__swsetup_r+0xb0>
d0000522:	2000      	movs	r0, #0
d0000524:	e7f7      	b.n	d0000516 <__swsetup_r+0xba>
d0000526:	bf00      	nop
d0000528:	d0000cac 	.word	0xd0000cac
d000052c:	d0000c64 	.word	0xd0000c64
d0000530:	d0000c84 	.word	0xd0000c84
d0000534:	d0000c44 	.word	0xd0000c44

d0000538 <__sflush_r>:
d0000538:	898a      	ldrh	r2, [r1, #12]
d000053a:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
d000053e:	4605      	mov	r5, r0
d0000540:	0710      	lsls	r0, r2, #28
d0000542:	460c      	mov	r4, r1
d0000544:	d458      	bmi.n	d00005f8 <__sflush_r+0xc0>
d0000546:	684b      	ldr	r3, [r1, #4]
d0000548:	2b00      	cmp	r3, #0
d000054a:	dc05      	bgt.n	d0000558 <__sflush_r+0x20>
d000054c:	6c0b      	ldr	r3, [r1, #64]	; 0x40
d000054e:	2b00      	cmp	r3, #0
d0000550:	dc02      	bgt.n	d0000558 <__sflush_r+0x20>
d0000552:	2000      	movs	r0, #0
d0000554:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
d0000558:	6ae6      	ldr	r6, [r4, #44]	; 0x2c
d000055a:	2e00      	cmp	r6, #0
d000055c:	d0f9      	beq.n	d0000552 <__sflush_r+0x1a>
d000055e:	2300      	movs	r3, #0
d0000560:	f412 5280 	ands.w	r2, r2, #4096	; 0x1000
d0000564:	682f      	ldr	r7, [r5, #0]
d0000566:	602b      	str	r3, [r5, #0]
d0000568:	d032      	beq.n	d00005d0 <__sflush_r+0x98>
d000056a:	6d60      	ldr	r0, [r4, #84]	; 0x54
d000056c:	89a3      	ldrh	r3, [r4, #12]
d000056e:	075a      	lsls	r2, r3, #29
d0000570:	d505      	bpl.n	d000057e <__sflush_r+0x46>
d0000572:	6863      	ldr	r3, [r4, #4]
d0000574:	1ac0      	subs	r0, r0, r3
d0000576:	6b63      	ldr	r3, [r4, #52]	; 0x34
d0000578:	b10b      	cbz	r3, d000057e <__sflush_r+0x46>
d000057a:	6c23      	ldr	r3, [r4, #64]	; 0x40
d000057c:	1ac0      	subs	r0, r0, r3
d000057e:	2300      	movs	r3, #0
d0000580:	4602      	mov	r2, r0
d0000582:	6ae6      	ldr	r6, [r4, #44]	; 0x2c
d0000584:	6a21      	ldr	r1, [r4, #32]
d0000586:	4628      	mov	r0, r5
d0000588:	47b0      	blx	r6
d000058a:	1c43      	adds	r3, r0, #1
d000058c:	89a3      	ldrh	r3, [r4, #12]
d000058e:	d106      	bne.n	d000059e <__sflush_r+0x66>
d0000590:	6829      	ldr	r1, [r5, #0]
d0000592:	291d      	cmp	r1, #29
d0000594:	d82c      	bhi.n	d00005f0 <__sflush_r+0xb8>
d0000596:	4a2a      	ldr	r2, [pc, #168]	; (d0000640 <__sflush_r+0x108>)
d0000598:	40ca      	lsrs	r2, r1
d000059a:	07d6      	lsls	r6, r2, #31
d000059c:	d528      	bpl.n	d00005f0 <__sflush_r+0xb8>
d000059e:	2200      	movs	r2, #0
d00005a0:	6062      	str	r2, [r4, #4]
d00005a2:	04d9      	lsls	r1, r3, #19
d00005a4:	6922      	ldr	r2, [r4, #16]
d00005a6:	6022      	str	r2, [r4, #0]
d00005a8:	d504      	bpl.n	d00005b4 <__sflush_r+0x7c>
d00005aa:	1c42      	adds	r2, r0, #1
d00005ac:	d101      	bne.n	d00005b2 <__sflush_r+0x7a>
d00005ae:	682b      	ldr	r3, [r5, #0]
d00005b0:	b903      	cbnz	r3, d00005b4 <__sflush_r+0x7c>
d00005b2:	6560      	str	r0, [r4, #84]	; 0x54
d00005b4:	6b61      	ldr	r1, [r4, #52]	; 0x34
d00005b6:	602f      	str	r7, [r5, #0]
d00005b8:	2900      	cmp	r1, #0
d00005ba:	d0ca      	beq.n	d0000552 <__sflush_r+0x1a>
d00005bc:	f104 0344 	add.w	r3, r4, #68	; 0x44
d00005c0:	4299      	cmp	r1, r3
d00005c2:	d002      	beq.n	d00005ca <__sflush_r+0x92>
d00005c4:	4628      	mov	r0, r5
d00005c6:	f000 f9dd 	bl	d0000984 <_free_r>
d00005ca:	2000      	movs	r0, #0
d00005cc:	6360      	str	r0, [r4, #52]	; 0x34
d00005ce:	e7c1      	b.n	d0000554 <__sflush_r+0x1c>
d00005d0:	6a21      	ldr	r1, [r4, #32]
d00005d2:	2301      	movs	r3, #1
d00005d4:	4628      	mov	r0, r5
d00005d6:	47b0      	blx	r6
d00005d8:	1c41      	adds	r1, r0, #1
d00005da:	d1c7      	bne.n	d000056c <__sflush_r+0x34>
d00005dc:	682b      	ldr	r3, [r5, #0]
d00005de:	2b00      	cmp	r3, #0
d00005e0:	d0c4      	beq.n	d000056c <__sflush_r+0x34>
d00005e2:	2b1d      	cmp	r3, #29
d00005e4:	d001      	beq.n	d00005ea <__sflush_r+0xb2>
d00005e6:	2b16      	cmp	r3, #22
d00005e8:	d101      	bne.n	d00005ee <__sflush_r+0xb6>
d00005ea:	602f      	str	r7, [r5, #0]
d00005ec:	e7b1      	b.n	d0000552 <__sflush_r+0x1a>
d00005ee:	89a3      	ldrh	r3, [r4, #12]
d00005f0:	f043 0340 	orr.w	r3, r3, #64	; 0x40
d00005f4:	81a3      	strh	r3, [r4, #12]
d00005f6:	e7ad      	b.n	d0000554 <__sflush_r+0x1c>
d00005f8:	690f      	ldr	r7, [r1, #16]
d00005fa:	2f00      	cmp	r7, #0
d00005fc:	d0a9      	beq.n	d0000552 <__sflush_r+0x1a>
d00005fe:	0793      	lsls	r3, r2, #30
d0000600:	680e      	ldr	r6, [r1, #0]
d0000602:	bf08      	it	eq
d0000604:	694b      	ldreq	r3, [r1, #20]
d0000606:	600f      	str	r7, [r1, #0]
d0000608:	bf18      	it	ne
d000060a:	2300      	movne	r3, #0
d000060c:	eba6 0807 	sub.w	r8, r6, r7
d0000610:	608b      	str	r3, [r1, #8]
d0000612:	f1b8 0f00 	cmp.w	r8, #0
d0000616:	dd9c      	ble.n	d0000552 <__sflush_r+0x1a>
d0000618:	6a21      	ldr	r1, [r4, #32]
d000061a:	6aa6      	ldr	r6, [r4, #40]	; 0x28
d000061c:	4643      	mov	r3, r8
d000061e:	463a      	mov	r2, r7
d0000620:	4628      	mov	r0, r5
d0000622:	47b0      	blx	r6
d0000624:	2800      	cmp	r0, #0
d0000626:	dc06      	bgt.n	d0000636 <__sflush_r+0xfe>
d0000628:	89a3      	ldrh	r3, [r4, #12]
d000062a:	f043 0340 	orr.w	r3, r3, #64	; 0x40
d000062e:	81a3      	strh	r3, [r4, #12]
d0000630:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d0000634:	e78e      	b.n	d0000554 <__sflush_r+0x1c>
d0000636:	4407      	add	r7, r0
d0000638:	eba8 0800 	sub.w	r8, r8, r0
d000063c:	e7e9      	b.n	d0000612 <__sflush_r+0xda>
d000063e:	bf00      	nop
d0000640:	20400001 	.word	0x20400001

d0000644 <_fflush_r>:
d0000644:	b538      	push	{r3, r4, r5, lr}
d0000646:	690b      	ldr	r3, [r1, #16]
d0000648:	4605      	mov	r5, r0
d000064a:	460c      	mov	r4, r1
d000064c:	b913      	cbnz	r3, d0000654 <_fflush_r+0x10>
d000064e:	2500      	movs	r5, #0
d0000650:	4628      	mov	r0, r5
d0000652:	bd38      	pop	{r3, r4, r5, pc}
d0000654:	b118      	cbz	r0, d000065e <_fflush_r+0x1a>
d0000656:	6983      	ldr	r3, [r0, #24]
d0000658:	b90b      	cbnz	r3, d000065e <_fflush_r+0x1a>
d000065a:	f000 f887 	bl	d000076c <__sinit>
d000065e:	4b14      	ldr	r3, [pc, #80]	; (d00006b0 <_fflush_r+0x6c>)
d0000660:	429c      	cmp	r4, r3
d0000662:	d11b      	bne.n	d000069c <_fflush_r+0x58>
d0000664:	686c      	ldr	r4, [r5, #4]
d0000666:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
d000066a:	2b00      	cmp	r3, #0
d000066c:	d0ef      	beq.n	d000064e <_fflush_r+0xa>
d000066e:	6e62      	ldr	r2, [r4, #100]	; 0x64
d0000670:	07d0      	lsls	r0, r2, #31
d0000672:	d404      	bmi.n	d000067e <_fflush_r+0x3a>
d0000674:	0599      	lsls	r1, r3, #22
d0000676:	d402      	bmi.n	d000067e <_fflush_r+0x3a>
d0000678:	6da0      	ldr	r0, [r4, #88]	; 0x58
d000067a:	f000 f915 	bl	d00008a8 <__retarget_lock_acquire_recursive>
d000067e:	4628      	mov	r0, r5
d0000680:	4621      	mov	r1, r4
d0000682:	f7ff ff59 	bl	d0000538 <__sflush_r>
d0000686:	6e63      	ldr	r3, [r4, #100]	; 0x64
d0000688:	07da      	lsls	r2, r3, #31
d000068a:	4605      	mov	r5, r0
d000068c:	d4e0      	bmi.n	d0000650 <_fflush_r+0xc>
d000068e:	89a3      	ldrh	r3, [r4, #12]
d0000690:	059b      	lsls	r3, r3, #22
d0000692:	d4dd      	bmi.n	d0000650 <_fflush_r+0xc>
d0000694:	6da0      	ldr	r0, [r4, #88]	; 0x58
d0000696:	f000 f908 	bl	d00008aa <__retarget_lock_release_recursive>
d000069a:	e7d9      	b.n	d0000650 <_fflush_r+0xc>
d000069c:	4b05      	ldr	r3, [pc, #20]	; (d00006b4 <_fflush_r+0x70>)
d000069e:	429c      	cmp	r4, r3
d00006a0:	d101      	bne.n	d00006a6 <_fflush_r+0x62>
d00006a2:	68ac      	ldr	r4, [r5, #8]
d00006a4:	e7df      	b.n	d0000666 <_fflush_r+0x22>
d00006a6:	4b04      	ldr	r3, [pc, #16]	; (d00006b8 <_fflush_r+0x74>)
d00006a8:	429c      	cmp	r4, r3
d00006aa:	bf08      	it	eq
d00006ac:	68ec      	ldreq	r4, [r5, #12]
d00006ae:	e7da      	b.n	d0000666 <_fflush_r+0x22>
d00006b0:	d0000c64 	.word	0xd0000c64
d00006b4:	d0000c84 	.word	0xd0000c84
d00006b8:	d0000c44 	.word	0xd0000c44

d00006bc <std>:
d00006bc:	2300      	movs	r3, #0
d00006be:	b510      	push	{r4, lr}
d00006c0:	4604      	mov	r4, r0
d00006c2:	e9c0 3300 	strd	r3, r3, [r0]
d00006c6:	e9c0 3304 	strd	r3, r3, [r0, #16]
d00006ca:	6083      	str	r3, [r0, #8]
d00006cc:	8181      	strh	r1, [r0, #12]
d00006ce:	6643      	str	r3, [r0, #100]	; 0x64
d00006d0:	81c2      	strh	r2, [r0, #14]
d00006d2:	6183      	str	r3, [r0, #24]
d00006d4:	4619      	mov	r1, r3
d00006d6:	2208      	movs	r2, #8
d00006d8:	305c      	adds	r0, #92	; 0x5c
d00006da:	f7ff fcaf 	bl	d000003c <memset>
d00006de:	4b05      	ldr	r3, [pc, #20]	; (d00006f4 <std+0x38>)
d00006e0:	6263      	str	r3, [r4, #36]	; 0x24
d00006e2:	4b05      	ldr	r3, [pc, #20]	; (d00006f8 <std+0x3c>)
d00006e4:	62a3      	str	r3, [r4, #40]	; 0x28
d00006e6:	4b05      	ldr	r3, [pc, #20]	; (d00006fc <std+0x40>)
d00006e8:	62e3      	str	r3, [r4, #44]	; 0x2c
d00006ea:	4b05      	ldr	r3, [pc, #20]	; (d0000700 <std+0x44>)
d00006ec:	6224      	str	r4, [r4, #32]
d00006ee:	6323      	str	r3, [r4, #48]	; 0x30
d00006f0:	bd10      	pop	{r4, pc}
d00006f2:	bf00      	nop
d00006f4:	d0000ad9 	.word	0xd0000ad9
d00006f8:	d0000afb 	.word	0xd0000afb
d00006fc:	d0000b33 	.word	0xd0000b33
d0000700:	d0000b57 	.word	0xd0000b57

d0000704 <_cleanup_r>:
d0000704:	4901      	ldr	r1, [pc, #4]	; (d000070c <_cleanup_r+0x8>)
d0000706:	f000 b8af 	b.w	d0000868 <_fwalk_reent>
d000070a:	bf00      	nop
d000070c:	d0000645 	.word	0xd0000645

d0000710 <__sfmoreglue>:
d0000710:	b570      	push	{r4, r5, r6, lr}
d0000712:	1e4a      	subs	r2, r1, #1
d0000714:	2568      	movs	r5, #104	; 0x68
d0000716:	4355      	muls	r5, r2
d0000718:	460e      	mov	r6, r1
d000071a:	f105 0174 	add.w	r1, r5, #116	; 0x74
d000071e:	f000 f981 	bl	d0000a24 <_malloc_r>
d0000722:	4604      	mov	r4, r0
d0000724:	b140      	cbz	r0, d0000738 <__sfmoreglue+0x28>
d0000726:	2100      	movs	r1, #0
d0000728:	e9c0 1600 	strd	r1, r6, [r0]
d000072c:	300c      	adds	r0, #12
d000072e:	60a0      	str	r0, [r4, #8]
d0000730:	f105 0268 	add.w	r2, r5, #104	; 0x68
d0000734:	f7ff fc82 	bl	d000003c <memset>
d0000738:	4620      	mov	r0, r4
d000073a:	bd70      	pop	{r4, r5, r6, pc}

d000073c <__sfp_lock_acquire>:
d000073c:	4801      	ldr	r0, [pc, #4]	; (d0000744 <__sfp_lock_acquire+0x8>)
d000073e:	f000 b8b3 	b.w	d00008a8 <__retarget_lock_acquire_recursive>
d0000742:	bf00      	nop
d0000744:	d0000d28 	.word	0xd0000d28

d0000748 <__sfp_lock_release>:
d0000748:	4801      	ldr	r0, [pc, #4]	; (d0000750 <__sfp_lock_release+0x8>)
d000074a:	f000 b8ae 	b.w	d00008aa <__retarget_lock_release_recursive>
d000074e:	bf00      	nop
d0000750:	d0000d28 	.word	0xd0000d28

d0000754 <__sinit_lock_acquire>:
d0000754:	4801      	ldr	r0, [pc, #4]	; (d000075c <__sinit_lock_acquire+0x8>)
d0000756:	f000 b8a7 	b.w	d00008a8 <__retarget_lock_acquire_recursive>
d000075a:	bf00      	nop
d000075c:	d0000d23 	.word	0xd0000d23

d0000760 <__sinit_lock_release>:
d0000760:	4801      	ldr	r0, [pc, #4]	; (d0000768 <__sinit_lock_release+0x8>)
d0000762:	f000 b8a2 	b.w	d00008aa <__retarget_lock_release_recursive>
d0000766:	bf00      	nop
d0000768:	d0000d23 	.word	0xd0000d23

d000076c <__sinit>:
d000076c:	b510      	push	{r4, lr}
d000076e:	4604      	mov	r4, r0
d0000770:	f7ff fff0 	bl	d0000754 <__sinit_lock_acquire>
d0000774:	69a3      	ldr	r3, [r4, #24]
d0000776:	b11b      	cbz	r3, d0000780 <__sinit+0x14>
d0000778:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
d000077c:	f7ff bff0 	b.w	d0000760 <__sinit_lock_release>
d0000780:	e9c4 3312 	strd	r3, r3, [r4, #72]	; 0x48
d0000784:	6523      	str	r3, [r4, #80]	; 0x50
d0000786:	4b13      	ldr	r3, [pc, #76]	; (d00007d4 <__sinit+0x68>)
d0000788:	4a13      	ldr	r2, [pc, #76]	; (d00007d8 <__sinit+0x6c>)
d000078a:	681b      	ldr	r3, [r3, #0]
d000078c:	62a2      	str	r2, [r4, #40]	; 0x28
d000078e:	42a3      	cmp	r3, r4
d0000790:	bf04      	itt	eq
d0000792:	2301      	moveq	r3, #1
d0000794:	61a3      	streq	r3, [r4, #24]
d0000796:	4620      	mov	r0, r4
d0000798:	f000 f820 	bl	d00007dc <__sfp>
d000079c:	6060      	str	r0, [r4, #4]
d000079e:	4620      	mov	r0, r4
d00007a0:	f000 f81c 	bl	d00007dc <__sfp>
d00007a4:	60a0      	str	r0, [r4, #8]
d00007a6:	4620      	mov	r0, r4
d00007a8:	f000 f818 	bl	d00007dc <__sfp>
d00007ac:	2200      	movs	r2, #0
d00007ae:	60e0      	str	r0, [r4, #12]
d00007b0:	2104      	movs	r1, #4
d00007b2:	6860      	ldr	r0, [r4, #4]
d00007b4:	f7ff ff82 	bl	d00006bc <std>
d00007b8:	68a0      	ldr	r0, [r4, #8]
d00007ba:	2201      	movs	r2, #1
d00007bc:	2109      	movs	r1, #9
d00007be:	f7ff ff7d 	bl	d00006bc <std>
d00007c2:	68e0      	ldr	r0, [r4, #12]
d00007c4:	2202      	movs	r2, #2
d00007c6:	2112      	movs	r1, #18
d00007c8:	f7ff ff78 	bl	d00006bc <std>
d00007cc:	2301      	movs	r3, #1
d00007ce:	61a3      	str	r3, [r4, #24]
d00007d0:	e7d2      	b.n	d0000778 <__sinit+0xc>
d00007d2:	bf00      	nop
d00007d4:	d0000c24 	.word	0xd0000c24
d00007d8:	d0000705 	.word	0xd0000705

d00007dc <__sfp>:
d00007dc:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d00007de:	4607      	mov	r7, r0
d00007e0:	f7ff ffac 	bl	d000073c <__sfp_lock_acquire>
d00007e4:	4b1e      	ldr	r3, [pc, #120]	; (d0000860 <__sfp+0x84>)
d00007e6:	681e      	ldr	r6, [r3, #0]
d00007e8:	69b3      	ldr	r3, [r6, #24]
d00007ea:	b913      	cbnz	r3, d00007f2 <__sfp+0x16>
d00007ec:	4630      	mov	r0, r6
d00007ee:	f7ff ffbd 	bl	d000076c <__sinit>
d00007f2:	3648      	adds	r6, #72	; 0x48
d00007f4:	e9d6 3401 	ldrd	r3, r4, [r6, #4]
d00007f8:	3b01      	subs	r3, #1
d00007fa:	d503      	bpl.n	d0000804 <__sfp+0x28>
d00007fc:	6833      	ldr	r3, [r6, #0]
d00007fe:	b30b      	cbz	r3, d0000844 <__sfp+0x68>
d0000800:	6836      	ldr	r6, [r6, #0]
d0000802:	e7f7      	b.n	d00007f4 <__sfp+0x18>
d0000804:	f9b4 500c 	ldrsh.w	r5, [r4, #12]
d0000808:	b9d5      	cbnz	r5, d0000840 <__sfp+0x64>
d000080a:	4b16      	ldr	r3, [pc, #88]	; (d0000864 <__sfp+0x88>)
d000080c:	60e3      	str	r3, [r4, #12]
d000080e:	f104 0058 	add.w	r0, r4, #88	; 0x58
d0000812:	6665      	str	r5, [r4, #100]	; 0x64
d0000814:	f000 f847 	bl	d00008a6 <__retarget_lock_init_recursive>
d0000818:	f7ff ff96 	bl	d0000748 <__sfp_lock_release>
d000081c:	e9c4 5501 	strd	r5, r5, [r4, #4]
d0000820:	e9c4 5504 	strd	r5, r5, [r4, #16]
d0000824:	6025      	str	r5, [r4, #0]
d0000826:	61a5      	str	r5, [r4, #24]
d0000828:	2208      	movs	r2, #8
d000082a:	4629      	mov	r1, r5
d000082c:	f104 005c 	add.w	r0, r4, #92	; 0x5c
d0000830:	f7ff fc04 	bl	d000003c <memset>
d0000834:	e9c4 550d 	strd	r5, r5, [r4, #52]	; 0x34
d0000838:	e9c4 5512 	strd	r5, r5, [r4, #72]	; 0x48
d000083c:	4620      	mov	r0, r4
d000083e:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d0000840:	3468      	adds	r4, #104	; 0x68
d0000842:	e7d9      	b.n	d00007f8 <__sfp+0x1c>
d0000844:	2104      	movs	r1, #4
d0000846:	4638      	mov	r0, r7
d0000848:	f7ff ff62 	bl	d0000710 <__sfmoreglue>
d000084c:	4604      	mov	r4, r0
d000084e:	6030      	str	r0, [r6, #0]
d0000850:	2800      	cmp	r0, #0
d0000852:	d1d5      	bne.n	d0000800 <__sfp+0x24>
d0000854:	f7ff ff78 	bl	d0000748 <__sfp_lock_release>
d0000858:	230c      	movs	r3, #12
d000085a:	603b      	str	r3, [r7, #0]
d000085c:	e7ee      	b.n	d000083c <__sfp+0x60>
d000085e:	bf00      	nop
d0000860:	d0000c24 	.word	0xd0000c24
d0000864:	ffff0001 	.word	0xffff0001

d0000868 <_fwalk_reent>:
d0000868:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
d000086c:	4606      	mov	r6, r0
d000086e:	4688      	mov	r8, r1
d0000870:	f100 0448 	add.w	r4, r0, #72	; 0x48
d0000874:	2700      	movs	r7, #0
d0000876:	e9d4 9501 	ldrd	r9, r5, [r4, #4]
d000087a:	f1b9 0901 	subs.w	r9, r9, #1
d000087e:	d505      	bpl.n	d000088c <_fwalk_reent+0x24>
d0000880:	6824      	ldr	r4, [r4, #0]
d0000882:	2c00      	cmp	r4, #0
d0000884:	d1f7      	bne.n	d0000876 <_fwalk_reent+0xe>
d0000886:	4638      	mov	r0, r7
d0000888:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
d000088c:	89ab      	ldrh	r3, [r5, #12]
d000088e:	2b01      	cmp	r3, #1
d0000890:	d907      	bls.n	d00008a2 <_fwalk_reent+0x3a>
d0000892:	f9b5 300e 	ldrsh.w	r3, [r5, #14]
d0000896:	3301      	adds	r3, #1
d0000898:	d003      	beq.n	d00008a2 <_fwalk_reent+0x3a>
d000089a:	4629      	mov	r1, r5
d000089c:	4630      	mov	r0, r6
d000089e:	47c0      	blx	r8
d00008a0:	4307      	orrs	r7, r0
d00008a2:	3568      	adds	r5, #104	; 0x68
d00008a4:	e7e9      	b.n	d000087a <_fwalk_reent+0x12>

d00008a6 <__retarget_lock_init_recursive>:
d00008a6:	4770      	bx	lr

d00008a8 <__retarget_lock_acquire_recursive>:
d00008a8:	4770      	bx	lr

d00008aa <__retarget_lock_release_recursive>:
d00008aa:	4770      	bx	lr

d00008ac <__swhatbuf_r>:
d00008ac:	b570      	push	{r4, r5, r6, lr}
d00008ae:	460e      	mov	r6, r1
d00008b0:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d00008b4:	2900      	cmp	r1, #0
d00008b6:	b096      	sub	sp, #88	; 0x58
d00008b8:	4614      	mov	r4, r2
d00008ba:	461d      	mov	r5, r3
d00008bc:	da07      	bge.n	d00008ce <__swhatbuf_r+0x22>
d00008be:	2300      	movs	r3, #0
d00008c0:	602b      	str	r3, [r5, #0]
d00008c2:	89b3      	ldrh	r3, [r6, #12]
d00008c4:	061a      	lsls	r2, r3, #24
d00008c6:	d410      	bmi.n	d00008ea <__swhatbuf_r+0x3e>
d00008c8:	f44f 6380 	mov.w	r3, #1024	; 0x400
d00008cc:	e00e      	b.n	d00008ec <__swhatbuf_r+0x40>
d00008ce:	466a      	mov	r2, sp
d00008d0:	f000 f956 	bl	d0000b80 <_fstat_r>
d00008d4:	2800      	cmp	r0, #0
d00008d6:	dbf2      	blt.n	d00008be <__swhatbuf_r+0x12>
d00008d8:	9a01      	ldr	r2, [sp, #4]
d00008da:	f402 4270 	and.w	r2, r2, #61440	; 0xf000
d00008de:	f5a2 5300 	sub.w	r3, r2, #8192	; 0x2000
d00008e2:	425a      	negs	r2, r3
d00008e4:	415a      	adcs	r2, r3
d00008e6:	602a      	str	r2, [r5, #0]
d00008e8:	e7ee      	b.n	d00008c8 <__swhatbuf_r+0x1c>
d00008ea:	2340      	movs	r3, #64	; 0x40
d00008ec:	2000      	movs	r0, #0
d00008ee:	6023      	str	r3, [r4, #0]
d00008f0:	b016      	add	sp, #88	; 0x58
d00008f2:	bd70      	pop	{r4, r5, r6, pc}

d00008f4 <__smakebuf_r>:
d00008f4:	898b      	ldrh	r3, [r1, #12]
d00008f6:	b573      	push	{r0, r1, r4, r5, r6, lr}
d00008f8:	079d      	lsls	r5, r3, #30
d00008fa:	4606      	mov	r6, r0
d00008fc:	460c      	mov	r4, r1
d00008fe:	d507      	bpl.n	d0000910 <__smakebuf_r+0x1c>
d0000900:	f104 0347 	add.w	r3, r4, #71	; 0x47
d0000904:	6023      	str	r3, [r4, #0]
d0000906:	6123      	str	r3, [r4, #16]
d0000908:	2301      	movs	r3, #1
d000090a:	6163      	str	r3, [r4, #20]
d000090c:	b002      	add	sp, #8
d000090e:	bd70      	pop	{r4, r5, r6, pc}
d0000910:	ab01      	add	r3, sp, #4
d0000912:	466a      	mov	r2, sp
d0000914:	f7ff ffca 	bl	d00008ac <__swhatbuf_r>
d0000918:	9900      	ldr	r1, [sp, #0]
d000091a:	4605      	mov	r5, r0
d000091c:	4630      	mov	r0, r6
d000091e:	f000 f881 	bl	d0000a24 <_malloc_r>
d0000922:	b948      	cbnz	r0, d0000938 <__smakebuf_r+0x44>
d0000924:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
d0000928:	059a      	lsls	r2, r3, #22
d000092a:	d4ef      	bmi.n	d000090c <__smakebuf_r+0x18>
d000092c:	f023 0303 	bic.w	r3, r3, #3
d0000930:	f043 0302 	orr.w	r3, r3, #2
d0000934:	81a3      	strh	r3, [r4, #12]
d0000936:	e7e3      	b.n	d0000900 <__smakebuf_r+0xc>
d0000938:	4b0d      	ldr	r3, [pc, #52]	; (d0000970 <__smakebuf_r+0x7c>)
d000093a:	62b3      	str	r3, [r6, #40]	; 0x28
d000093c:	89a3      	ldrh	r3, [r4, #12]
d000093e:	6020      	str	r0, [r4, #0]
d0000940:	f043 0380 	orr.w	r3, r3, #128	; 0x80
d0000944:	81a3      	strh	r3, [r4, #12]
d0000946:	9b00      	ldr	r3, [sp, #0]
d0000948:	6163      	str	r3, [r4, #20]
d000094a:	9b01      	ldr	r3, [sp, #4]
d000094c:	6120      	str	r0, [r4, #16]
d000094e:	b15b      	cbz	r3, d0000968 <__smakebuf_r+0x74>
d0000950:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
d0000954:	4630      	mov	r0, r6
d0000956:	f000 f925 	bl	d0000ba4 <_isatty_r>
d000095a:	b128      	cbz	r0, d0000968 <__smakebuf_r+0x74>
d000095c:	89a3      	ldrh	r3, [r4, #12]
d000095e:	f023 0303 	bic.w	r3, r3, #3
d0000962:	f043 0301 	orr.w	r3, r3, #1
d0000966:	81a3      	strh	r3, [r4, #12]
d0000968:	89a0      	ldrh	r0, [r4, #12]
d000096a:	4305      	orrs	r5, r0
d000096c:	81a5      	strh	r5, [r4, #12]
d000096e:	e7cd      	b.n	d000090c <__smakebuf_r+0x18>
d0000970:	d0000705 	.word	0xd0000705

d0000974 <malloc>:
d0000974:	4b02      	ldr	r3, [pc, #8]	; (d0000980 <malloc+0xc>)
d0000976:	4601      	mov	r1, r0
d0000978:	6818      	ldr	r0, [r3, #0]
d000097a:	f000 b853 	b.w	d0000a24 <_malloc_r>
d000097e:	bf00      	nop
d0000980:	d0000cac 	.word	0xd0000cac

d0000984 <_free_r>:
d0000984:	b537      	push	{r0, r1, r2, r4, r5, lr}
d0000986:	2900      	cmp	r1, #0
d0000988:	d048      	beq.n	d0000a1c <_free_r+0x98>
d000098a:	f851 3c04 	ldr.w	r3, [r1, #-4]
d000098e:	9001      	str	r0, [sp, #4]
d0000990:	2b00      	cmp	r3, #0
d0000992:	f1a1 0404 	sub.w	r4, r1, #4
d0000996:	bfb8      	it	lt
d0000998:	18e4      	addlt	r4, r4, r3
d000099a:	f000 f925 	bl	d0000be8 <__malloc_lock>
d000099e:	4a20      	ldr	r2, [pc, #128]	; (d0000a20 <_free_r+0x9c>)
d00009a0:	9801      	ldr	r0, [sp, #4]
d00009a2:	6813      	ldr	r3, [r2, #0]
d00009a4:	4615      	mov	r5, r2
d00009a6:	b933      	cbnz	r3, d00009b6 <_free_r+0x32>
d00009a8:	6063      	str	r3, [r4, #4]
d00009aa:	6014      	str	r4, [r2, #0]
d00009ac:	b003      	add	sp, #12
d00009ae:	e8bd 4030 	ldmia.w	sp!, {r4, r5, lr}
d00009b2:	f000 b91f 	b.w	d0000bf4 <__malloc_unlock>
d00009b6:	42a3      	cmp	r3, r4
d00009b8:	d90b      	bls.n	d00009d2 <_free_r+0x4e>
d00009ba:	6821      	ldr	r1, [r4, #0]
d00009bc:	1862      	adds	r2, r4, r1
d00009be:	4293      	cmp	r3, r2
d00009c0:	bf04      	itt	eq
d00009c2:	681a      	ldreq	r2, [r3, #0]
d00009c4:	685b      	ldreq	r3, [r3, #4]
d00009c6:	6063      	str	r3, [r4, #4]
d00009c8:	bf04      	itt	eq
d00009ca:	1852      	addeq	r2, r2, r1
d00009cc:	6022      	streq	r2, [r4, #0]
d00009ce:	602c      	str	r4, [r5, #0]
d00009d0:	e7ec      	b.n	d00009ac <_free_r+0x28>
d00009d2:	461a      	mov	r2, r3
d00009d4:	685b      	ldr	r3, [r3, #4]
d00009d6:	b10b      	cbz	r3, d00009dc <_free_r+0x58>
d00009d8:	42a3      	cmp	r3, r4
d00009da:	d9fa      	bls.n	d00009d2 <_free_r+0x4e>
d00009dc:	6811      	ldr	r1, [r2, #0]
d00009de:	1855      	adds	r5, r2, r1
d00009e0:	42a5      	cmp	r5, r4
d00009e2:	d10b      	bne.n	d00009fc <_free_r+0x78>
d00009e4:	6824      	ldr	r4, [r4, #0]
d00009e6:	4421      	add	r1, r4
d00009e8:	1854      	adds	r4, r2, r1
d00009ea:	42a3      	cmp	r3, r4
d00009ec:	6011      	str	r1, [r2, #0]
d00009ee:	d1dd      	bne.n	d00009ac <_free_r+0x28>
d00009f0:	681c      	ldr	r4, [r3, #0]
d00009f2:	685b      	ldr	r3, [r3, #4]
d00009f4:	6053      	str	r3, [r2, #4]
d00009f6:	4421      	add	r1, r4
d00009f8:	6011      	str	r1, [r2, #0]
d00009fa:	e7d7      	b.n	d00009ac <_free_r+0x28>
d00009fc:	d902      	bls.n	d0000a04 <_free_r+0x80>
d00009fe:	230c      	movs	r3, #12
d0000a00:	6003      	str	r3, [r0, #0]
d0000a02:	e7d3      	b.n	d00009ac <_free_r+0x28>
d0000a04:	6825      	ldr	r5, [r4, #0]
d0000a06:	1961      	adds	r1, r4, r5
d0000a08:	428b      	cmp	r3, r1
d0000a0a:	bf04      	itt	eq
d0000a0c:	6819      	ldreq	r1, [r3, #0]
d0000a0e:	685b      	ldreq	r3, [r3, #4]
d0000a10:	6063      	str	r3, [r4, #4]
d0000a12:	bf04      	itt	eq
d0000a14:	1949      	addeq	r1, r1, r5
d0000a16:	6021      	streq	r1, [r4, #0]
d0000a18:	6054      	str	r4, [r2, #4]
d0000a1a:	e7c7      	b.n	d00009ac <_free_r+0x28>
d0000a1c:	b003      	add	sp, #12
d0000a1e:	bd30      	pop	{r4, r5, pc}
d0000a20:	d0000d18 	.word	0xd0000d18

d0000a24 <_malloc_r>:
d0000a24:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d0000a26:	1ccd      	adds	r5, r1, #3
d0000a28:	f025 0503 	bic.w	r5, r5, #3
d0000a2c:	3508      	adds	r5, #8
d0000a2e:	2d0c      	cmp	r5, #12
d0000a30:	bf38      	it	cc
d0000a32:	250c      	movcc	r5, #12
d0000a34:	2d00      	cmp	r5, #0
d0000a36:	4606      	mov	r6, r0
d0000a38:	db01      	blt.n	d0000a3e <_malloc_r+0x1a>
d0000a3a:	42a9      	cmp	r1, r5
d0000a3c:	d903      	bls.n	d0000a46 <_malloc_r+0x22>
d0000a3e:	230c      	movs	r3, #12
d0000a40:	6033      	str	r3, [r6, #0]
d0000a42:	2000      	movs	r0, #0
d0000a44:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d0000a46:	f000 f8cf 	bl	d0000be8 <__malloc_lock>
d0000a4a:	4921      	ldr	r1, [pc, #132]	; (d0000ad0 <_malloc_r+0xac>)
d0000a4c:	680a      	ldr	r2, [r1, #0]
d0000a4e:	4614      	mov	r4, r2
d0000a50:	b99c      	cbnz	r4, d0000a7a <_malloc_r+0x56>
d0000a52:	4f20      	ldr	r7, [pc, #128]	; (d0000ad4 <_malloc_r+0xb0>)
d0000a54:	683b      	ldr	r3, [r7, #0]
d0000a56:	b923      	cbnz	r3, d0000a62 <_malloc_r+0x3e>
d0000a58:	4621      	mov	r1, r4
d0000a5a:	4630      	mov	r0, r6
d0000a5c:	f7ff fb32 	bl	d00000c4 <_sbrk_r>
d0000a60:	6038      	str	r0, [r7, #0]
d0000a62:	4629      	mov	r1, r5
d0000a64:	4630      	mov	r0, r6
d0000a66:	f7ff fb2d 	bl	d00000c4 <_sbrk_r>
d0000a6a:	1c43      	adds	r3, r0, #1
d0000a6c:	d123      	bne.n	d0000ab6 <_malloc_r+0x92>
d0000a6e:	230c      	movs	r3, #12
d0000a70:	6033      	str	r3, [r6, #0]
d0000a72:	4630      	mov	r0, r6
d0000a74:	f000 f8be 	bl	d0000bf4 <__malloc_unlock>
d0000a78:	e7e3      	b.n	d0000a42 <_malloc_r+0x1e>
d0000a7a:	6823      	ldr	r3, [r4, #0]
d0000a7c:	1b5b      	subs	r3, r3, r5
d0000a7e:	d417      	bmi.n	d0000ab0 <_malloc_r+0x8c>
d0000a80:	2b0b      	cmp	r3, #11
d0000a82:	d903      	bls.n	d0000a8c <_malloc_r+0x68>
d0000a84:	6023      	str	r3, [r4, #0]
d0000a86:	441c      	add	r4, r3
d0000a88:	6025      	str	r5, [r4, #0]
d0000a8a:	e004      	b.n	d0000a96 <_malloc_r+0x72>
d0000a8c:	6863      	ldr	r3, [r4, #4]
d0000a8e:	42a2      	cmp	r2, r4
d0000a90:	bf0c      	ite	eq
d0000a92:	600b      	streq	r3, [r1, #0]
d0000a94:	6053      	strne	r3, [r2, #4]
d0000a96:	4630      	mov	r0, r6
d0000a98:	f000 f8ac 	bl	d0000bf4 <__malloc_unlock>
d0000a9c:	f104 000b 	add.w	r0, r4, #11
d0000aa0:	1d23      	adds	r3, r4, #4
d0000aa2:	f020 0007 	bic.w	r0, r0, #7
d0000aa6:	1ac2      	subs	r2, r0, r3
d0000aa8:	d0cc      	beq.n	d0000a44 <_malloc_r+0x20>
d0000aaa:	1a1b      	subs	r3, r3, r0
d0000aac:	50a3      	str	r3, [r4, r2]
d0000aae:	e7c9      	b.n	d0000a44 <_malloc_r+0x20>
d0000ab0:	4622      	mov	r2, r4
d0000ab2:	6864      	ldr	r4, [r4, #4]
d0000ab4:	e7cc      	b.n	d0000a50 <_malloc_r+0x2c>
d0000ab6:	1cc4      	adds	r4, r0, #3
d0000ab8:	f024 0403 	bic.w	r4, r4, #3
d0000abc:	42a0      	cmp	r0, r4
d0000abe:	d0e3      	beq.n	d0000a88 <_malloc_r+0x64>
d0000ac0:	1a21      	subs	r1, r4, r0
d0000ac2:	4630      	mov	r0, r6
d0000ac4:	f7ff fafe 	bl	d00000c4 <_sbrk_r>
d0000ac8:	3001      	adds	r0, #1
d0000aca:	d1dd      	bne.n	d0000a88 <_malloc_r+0x64>
d0000acc:	e7cf      	b.n	d0000a6e <_malloc_r+0x4a>
d0000ace:	bf00      	nop
d0000ad0:	d0000d18 	.word	0xd0000d18
d0000ad4:	d0000d1c 	.word	0xd0000d1c

d0000ad8 <__sread>:
d0000ad8:	b510      	push	{r4, lr}
d0000ada:	460c      	mov	r4, r1
d0000adc:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d0000ae0:	f000 f88e 	bl	d0000c00 <_read_r>
d0000ae4:	2800      	cmp	r0, #0
d0000ae6:	bfab      	itete	ge
d0000ae8:	6d63      	ldrge	r3, [r4, #84]	; 0x54
d0000aea:	89a3      	ldrhlt	r3, [r4, #12]
d0000aec:	181b      	addge	r3, r3, r0
d0000aee:	f423 5380 	biclt.w	r3, r3, #4096	; 0x1000
d0000af2:	bfac      	ite	ge
d0000af4:	6563      	strge	r3, [r4, #84]	; 0x54
d0000af6:	81a3      	strhlt	r3, [r4, #12]
d0000af8:	bd10      	pop	{r4, pc}

d0000afa <__swrite>:
d0000afa:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
d0000afe:	461f      	mov	r7, r3
d0000b00:	898b      	ldrh	r3, [r1, #12]
d0000b02:	05db      	lsls	r3, r3, #23
d0000b04:	4605      	mov	r5, r0
d0000b06:	460c      	mov	r4, r1
d0000b08:	4616      	mov	r6, r2
d0000b0a:	d505      	bpl.n	d0000b18 <__swrite+0x1e>
d0000b0c:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d0000b10:	2302      	movs	r3, #2
d0000b12:	2200      	movs	r2, #0
d0000b14:	f000 f856 	bl	d0000bc4 <_lseek_r>
d0000b18:	89a3      	ldrh	r3, [r4, #12]
d0000b1a:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
d0000b1e:	f423 5380 	bic.w	r3, r3, #4096	; 0x1000
d0000b22:	81a3      	strh	r3, [r4, #12]
d0000b24:	4632      	mov	r2, r6
d0000b26:	463b      	mov	r3, r7
d0000b28:	4628      	mov	r0, r5
d0000b2a:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
d0000b2e:	f7ff ba8d 	b.w	d000004c <_write_r>

d0000b32 <__sseek>:
d0000b32:	b510      	push	{r4, lr}
d0000b34:	460c      	mov	r4, r1
d0000b36:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d0000b3a:	f000 f843 	bl	d0000bc4 <_lseek_r>
d0000b3e:	1c43      	adds	r3, r0, #1
d0000b40:	89a3      	ldrh	r3, [r4, #12]
d0000b42:	bf15      	itete	ne
d0000b44:	6560      	strne	r0, [r4, #84]	; 0x54
d0000b46:	f423 5380 	biceq.w	r3, r3, #4096	; 0x1000
d0000b4a:	f443 5380 	orrne.w	r3, r3, #4096	; 0x1000
d0000b4e:	81a3      	strheq	r3, [r4, #12]
d0000b50:	bf18      	it	ne
d0000b52:	81a3      	strhne	r3, [r4, #12]
d0000b54:	bd10      	pop	{r4, pc}

d0000b56 <__sclose>:
d0000b56:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d0000b5a:	f000 b801 	b.w	d0000b60 <_close_r>
	...

d0000b60 <_close_r>:
d0000b60:	b538      	push	{r3, r4, r5, lr}
d0000b62:	4d06      	ldr	r5, [pc, #24]	; (d0000b7c <_close_r+0x1c>)
d0000b64:	2300      	movs	r3, #0
d0000b66:	4604      	mov	r4, r0
d0000b68:	4608      	mov	r0, r1
d0000b6a:	602b      	str	r3, [r5, #0]
d0000b6c:	f7ff fa9e 	bl	d00000ac <_close>
d0000b70:	1c43      	adds	r3, r0, #1
d0000b72:	d102      	bne.n	d0000b7a <_close_r+0x1a>
d0000b74:	682b      	ldr	r3, [r5, #0]
d0000b76:	b103      	cbz	r3, d0000b7a <_close_r+0x1a>
d0000b78:	6023      	str	r3, [r4, #0]
d0000b7a:	bd38      	pop	{r3, r4, r5, pc}
d0000b7c:	d0000d2c 	.word	0xd0000d2c

d0000b80 <_fstat_r>:
d0000b80:	b538      	push	{r3, r4, r5, lr}
d0000b82:	4d07      	ldr	r5, [pc, #28]	; (d0000ba0 <_fstat_r+0x20>)
d0000b84:	2300      	movs	r3, #0
d0000b86:	4604      	mov	r4, r0
d0000b88:	4608      	mov	r0, r1
d0000b8a:	4611      	mov	r1, r2
d0000b8c:	602b      	str	r3, [r5, #0]
d0000b8e:	f7ff fa91 	bl	d00000b4 <_fstat>
d0000b92:	1c43      	adds	r3, r0, #1
d0000b94:	d102      	bne.n	d0000b9c <_fstat_r+0x1c>
d0000b96:	682b      	ldr	r3, [r5, #0]
d0000b98:	b103      	cbz	r3, d0000b9c <_fstat_r+0x1c>
d0000b9a:	6023      	str	r3, [r4, #0]
d0000b9c:	bd38      	pop	{r3, r4, r5, pc}
d0000b9e:	bf00      	nop
d0000ba0:	d0000d2c 	.word	0xd0000d2c

d0000ba4 <_isatty_r>:
d0000ba4:	b538      	push	{r3, r4, r5, lr}
d0000ba6:	4d06      	ldr	r5, [pc, #24]	; (d0000bc0 <_isatty_r+0x1c>)
d0000ba8:	2300      	movs	r3, #0
d0000baa:	4604      	mov	r4, r0
d0000bac:	4608      	mov	r0, r1
d0000bae:	602b      	str	r3, [r5, #0]
d0000bb0:	f7ff faa8 	bl	d0000104 <_isatty>
d0000bb4:	1c43      	adds	r3, r0, #1
d0000bb6:	d102      	bne.n	d0000bbe <_isatty_r+0x1a>
d0000bb8:	682b      	ldr	r3, [r5, #0]
d0000bba:	b103      	cbz	r3, d0000bbe <_isatty_r+0x1a>
d0000bbc:	6023      	str	r3, [r4, #0]
d0000bbe:	bd38      	pop	{r3, r4, r5, pc}
d0000bc0:	d0000d2c 	.word	0xd0000d2c

d0000bc4 <_lseek_r>:
d0000bc4:	b538      	push	{r3, r4, r5, lr}
d0000bc6:	4d07      	ldr	r5, [pc, #28]	; (d0000be4 <_lseek_r+0x20>)
d0000bc8:	4604      	mov	r4, r0
d0000bca:	4608      	mov	r0, r1
d0000bcc:	4611      	mov	r1, r2
d0000bce:	2200      	movs	r2, #0
d0000bd0:	602a      	str	r2, [r5, #0]
d0000bd2:	461a      	mov	r2, r3
d0000bd4:	f7ff fa74 	bl	d00000c0 <_lseek>
d0000bd8:	1c43      	adds	r3, r0, #1
d0000bda:	d102      	bne.n	d0000be2 <_lseek_r+0x1e>
d0000bdc:	682b      	ldr	r3, [r5, #0]
d0000bde:	b103      	cbz	r3, d0000be2 <_lseek_r+0x1e>
d0000be0:	6023      	str	r3, [r4, #0]
d0000be2:	bd38      	pop	{r3, r4, r5, pc}
d0000be4:	d0000d2c 	.word	0xd0000d2c

d0000be8 <__malloc_lock>:
d0000be8:	4801      	ldr	r0, [pc, #4]	; (d0000bf0 <__malloc_lock+0x8>)
d0000bea:	f7ff be5d 	b.w	d00008a8 <__retarget_lock_acquire_recursive>
d0000bee:	bf00      	nop
d0000bf0:	d0000d24 	.word	0xd0000d24

d0000bf4 <__malloc_unlock>:
d0000bf4:	4801      	ldr	r0, [pc, #4]	; (d0000bfc <__malloc_unlock+0x8>)
d0000bf6:	f7ff be58 	b.w	d00008aa <__retarget_lock_release_recursive>
d0000bfa:	bf00      	nop
d0000bfc:	d0000d24 	.word	0xd0000d24

d0000c00 <_read_r>:
d0000c00:	b538      	push	{r3, r4, r5, lr}
d0000c02:	4d07      	ldr	r5, [pc, #28]	; (d0000c20 <_read_r+0x20>)
d0000c04:	4604      	mov	r4, r0
d0000c06:	4608      	mov	r0, r1
d0000c08:	4611      	mov	r1, r2
d0000c0a:	2200      	movs	r2, #0
d0000c0c:	602a      	str	r2, [r5, #0]
d0000c0e:	461a      	mov	r2, r3
d0000c10:	f7ff fa42 	bl	d0000098 <_read>
d0000c14:	1c43      	adds	r3, r0, #1
d0000c16:	d102      	bne.n	d0000c1e <_read_r+0x1e>
d0000c18:	682b      	ldr	r3, [r5, #0]
d0000c1a:	b103      	cbz	r3, d0000c1e <_read_r+0x1e>
d0000c1c:	6023      	str	r3, [r4, #0]
d0000c1e:	bd38      	pop	{r3, r4, r5, pc}
d0000c20:	d0000d2c 	.word	0xd0000d2c

d0000c24 <_global_impure_ptr>:
d0000c24:	d0000cb0 6c707041 73207465 20737961     ....Applet says 
d0000c34:	4c4c4548 0a21214f 00000000 0000000a     HELLO!!.........

d0000c44 <__sf_fake_stderr>:
	...

d0000c64 <__sf_fake_stdin>:
	...

d0000c84 <__sf_fake_stdout>:
	...

Disassembly of section .init:

d0000ca4 <_init>:
d0000ca4:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d0000ca6:	bf00      	nop

Disassembly of section .fini:

d0000ca8 <_fini>:
d0000ca8:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d0000caa:	bf00      	nop

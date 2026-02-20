
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
d000001e:	f000 f925 	bl	d000026c <setbuf>
d0000022:	6833      	ldr	r3, [r6, #0]
d0000024:	2100      	movs	r1, #0
d0000026:	68d8      	ldr	r0, [r3, #12]
d0000028:	f000 f920 	bl	d000026c <setbuf>
d000002c:	4629      	mov	r1, r5
d000002e:	4620      	mov	r0, r4
d0000030:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
d0000034:	f000 b868 	b.w	d0000108 <main>
d0000038:	d00014a8 	.word	0xd00014a8

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
d000007e:	f000 f861 	bl	d0000144 <__errno>
d0000082:	2209      	movs	r2, #9
d0000084:	4603      	mov	r3, r0
d0000086:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d000008a:	601a      	str	r2, [r3, #0]
d000008c:	bd70      	pop	{r4, r5, r6, pc}
d000008e:	bf00      	nop
d0000090:	d0001510 	.word	0xd0001510
d0000094:	2001f000 	.word	0x2001f000

d0000098 <_read>:
d0000098:	b508      	push	{r3, lr}
d000009a:	f000 f853 	bl	d0000144 <__errno>
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
d00000e6:	f000 f82d 	bl	d0000144 <__errno>
d00000ea:	220c      	movs	r2, #12
d00000ec:	4603      	mov	r3, r0
d00000ee:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d00000f2:	601a      	str	r2, [r3, #0]
d00000f4:	bd10      	pop	{r4, pc}
d00000f6:	bf00      	nop
d00000f8:	d000150c 	.word	0xd000150c
d00000fc:	d000152c 	.word	0xd000152c
d0000100:	d0600000 	.word	0xd0600000

d0000104 <_isatty>:
d0000104:	2001      	movs	r0, #1
d0000106:	4770      	bx	lr

d0000108 <main>:
d0000108:	b508      	push	{r3, lr}
d000010a:	4809      	ldr	r0, [pc, #36]	; (d0000130 <main+0x28>)
d000010c:	f000 f8a6 	bl	d000025c <puts>
d0000110:	2158      	movs	r1, #88	; 0x58
d0000112:	4808      	ldr	r0, [pc, #32]	; (d0000134 <main+0x2c>)
d0000114:	f000 f81c 	bl	d0000150 <iprintf>
d0000118:	4807      	ldr	r0, [pc, #28]	; (d0000138 <main+0x30>)
d000011a:	f000 f89f 	bl	d000025c <puts>
d000011e:	4807      	ldr	r0, [pc, #28]	; (d000013c <main+0x34>)
d0000120:	f000 f89c 	bl	d000025c <puts>
d0000124:	4806      	ldr	r0, [pc, #24]	; (d0000140 <main+0x38>)
d0000126:	f000 f813 	bl	d0000150 <iprintf>
d000012a:	2000      	movs	r0, #0
d000012c:	bd08      	pop	{r3, pc}
d000012e:	bf00      	nop
d0000130:	d0001300 	.word	0xd0001300
d0000134:	d0001318 	.word	0xd0001318
d0000138:	d0001338 	.word	0xd0001338
d000013c:	d0001368 	.word	0xd0001368
d0000140:	d0001394 	.word	0xd0001394

d0000144 <__errno>:
d0000144:	4b01      	ldr	r3, [pc, #4]	; (d000014c <__errno+0x8>)
d0000146:	6818      	ldr	r0, [r3, #0]
d0000148:	4770      	bx	lr
d000014a:	bf00      	nop
d000014c:	d00014a8 	.word	0xd00014a8

d0000150 <iprintf>:
d0000150:	b40f      	push	{r0, r1, r2, r3}
d0000152:	4b0a      	ldr	r3, [pc, #40]	; (d000017c <iprintf+0x2c>)
d0000154:	b513      	push	{r0, r1, r4, lr}
d0000156:	681c      	ldr	r4, [r3, #0]
d0000158:	b124      	cbz	r4, d0000164 <iprintf+0x14>
d000015a:	69a3      	ldr	r3, [r4, #24]
d000015c:	b913      	cbnz	r3, d0000164 <iprintf+0x14>
d000015e:	4620      	mov	r0, r4
d0000160:	f000 fb2c 	bl	d00007bc <__sinit>
d0000164:	ab05      	add	r3, sp, #20
d0000166:	9a04      	ldr	r2, [sp, #16]
d0000168:	68a1      	ldr	r1, [r4, #8]
d000016a:	9301      	str	r3, [sp, #4]
d000016c:	4620      	mov	r0, r4
d000016e:	f000 fd05 	bl	d0000b7c <_vfiprintf_r>
d0000172:	b002      	add	sp, #8
d0000174:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
d0000178:	b004      	add	sp, #16
d000017a:	4770      	bx	lr
d000017c:	d00014a8 	.word	0xd00014a8

d0000180 <_puts_r>:
d0000180:	b570      	push	{r4, r5, r6, lr}
d0000182:	460e      	mov	r6, r1
d0000184:	4605      	mov	r5, r0
d0000186:	b118      	cbz	r0, d0000190 <_puts_r+0x10>
d0000188:	6983      	ldr	r3, [r0, #24]
d000018a:	b90b      	cbnz	r3, d0000190 <_puts_r+0x10>
d000018c:	f000 fb16 	bl	d00007bc <__sinit>
d0000190:	69ab      	ldr	r3, [r5, #24]
d0000192:	68ac      	ldr	r4, [r5, #8]
d0000194:	b913      	cbnz	r3, d000019c <_puts_r+0x1c>
d0000196:	4628      	mov	r0, r5
d0000198:	f000 fb10 	bl	d00007bc <__sinit>
d000019c:	4b2c      	ldr	r3, [pc, #176]	; (d0000250 <_puts_r+0xd0>)
d000019e:	429c      	cmp	r4, r3
d00001a0:	d120      	bne.n	d00001e4 <_puts_r+0x64>
d00001a2:	686c      	ldr	r4, [r5, #4]
d00001a4:	6e63      	ldr	r3, [r4, #100]	; 0x64
d00001a6:	07db      	lsls	r3, r3, #31
d00001a8:	d405      	bmi.n	d00001b6 <_puts_r+0x36>
d00001aa:	89a3      	ldrh	r3, [r4, #12]
d00001ac:	0598      	lsls	r0, r3, #22
d00001ae:	d402      	bmi.n	d00001b6 <_puts_r+0x36>
d00001b0:	6da0      	ldr	r0, [r4, #88]	; 0x58
d00001b2:	f000 fba1 	bl	d00008f8 <__retarget_lock_acquire_recursive>
d00001b6:	89a3      	ldrh	r3, [r4, #12]
d00001b8:	0719      	lsls	r1, r3, #28
d00001ba:	d51d      	bpl.n	d00001f8 <_puts_r+0x78>
d00001bc:	6923      	ldr	r3, [r4, #16]
d00001be:	b1db      	cbz	r3, d00001f8 <_puts_r+0x78>
d00001c0:	3e01      	subs	r6, #1
d00001c2:	68a3      	ldr	r3, [r4, #8]
d00001c4:	f816 1f01 	ldrb.w	r1, [r6, #1]!
d00001c8:	3b01      	subs	r3, #1
d00001ca:	60a3      	str	r3, [r4, #8]
d00001cc:	bb39      	cbnz	r1, d000021e <_puts_r+0x9e>
d00001ce:	2b00      	cmp	r3, #0
d00001d0:	da38      	bge.n	d0000244 <_puts_r+0xc4>
d00001d2:	4622      	mov	r2, r4
d00001d4:	210a      	movs	r1, #10
d00001d6:	4628      	mov	r0, r5
d00001d8:	f000 f916 	bl	d0000408 <__swbuf_r>
d00001dc:	3001      	adds	r0, #1
d00001de:	d011      	beq.n	d0000204 <_puts_r+0x84>
d00001e0:	250a      	movs	r5, #10
d00001e2:	e011      	b.n	d0000208 <_puts_r+0x88>
d00001e4:	4b1b      	ldr	r3, [pc, #108]	; (d0000254 <_puts_r+0xd4>)
d00001e6:	429c      	cmp	r4, r3
d00001e8:	d101      	bne.n	d00001ee <_puts_r+0x6e>
d00001ea:	68ac      	ldr	r4, [r5, #8]
d00001ec:	e7da      	b.n	d00001a4 <_puts_r+0x24>
d00001ee:	4b1a      	ldr	r3, [pc, #104]	; (d0000258 <_puts_r+0xd8>)
d00001f0:	429c      	cmp	r4, r3
d00001f2:	bf08      	it	eq
d00001f4:	68ec      	ldreq	r4, [r5, #12]
d00001f6:	e7d5      	b.n	d00001a4 <_puts_r+0x24>
d00001f8:	4621      	mov	r1, r4
d00001fa:	4628      	mov	r0, r5
d00001fc:	f000 f956 	bl	d00004ac <__swsetup_r>
d0000200:	2800      	cmp	r0, #0
d0000202:	d0dd      	beq.n	d00001c0 <_puts_r+0x40>
d0000204:	f04f 35ff 	mov.w	r5, #4294967295	; 0xffffffff
d0000208:	6e63      	ldr	r3, [r4, #100]	; 0x64
d000020a:	07da      	lsls	r2, r3, #31
d000020c:	d405      	bmi.n	d000021a <_puts_r+0x9a>
d000020e:	89a3      	ldrh	r3, [r4, #12]
d0000210:	059b      	lsls	r3, r3, #22
d0000212:	d402      	bmi.n	d000021a <_puts_r+0x9a>
d0000214:	6da0      	ldr	r0, [r4, #88]	; 0x58
d0000216:	f000 fb70 	bl	d00008fa <__retarget_lock_release_recursive>
d000021a:	4628      	mov	r0, r5
d000021c:	bd70      	pop	{r4, r5, r6, pc}
d000021e:	2b00      	cmp	r3, #0
d0000220:	da04      	bge.n	d000022c <_puts_r+0xac>
d0000222:	69a2      	ldr	r2, [r4, #24]
d0000224:	429a      	cmp	r2, r3
d0000226:	dc06      	bgt.n	d0000236 <_puts_r+0xb6>
d0000228:	290a      	cmp	r1, #10
d000022a:	d004      	beq.n	d0000236 <_puts_r+0xb6>
d000022c:	6823      	ldr	r3, [r4, #0]
d000022e:	1c5a      	adds	r2, r3, #1
d0000230:	6022      	str	r2, [r4, #0]
d0000232:	7019      	strb	r1, [r3, #0]
d0000234:	e7c5      	b.n	d00001c2 <_puts_r+0x42>
d0000236:	4622      	mov	r2, r4
d0000238:	4628      	mov	r0, r5
d000023a:	f000 f8e5 	bl	d0000408 <__swbuf_r>
d000023e:	3001      	adds	r0, #1
d0000240:	d1bf      	bne.n	d00001c2 <_puts_r+0x42>
d0000242:	e7df      	b.n	d0000204 <_puts_r+0x84>
d0000244:	6823      	ldr	r3, [r4, #0]
d0000246:	250a      	movs	r5, #10
d0000248:	1c5a      	adds	r2, r3, #1
d000024a:	6022      	str	r2, [r4, #0]
d000024c:	701d      	strb	r5, [r3, #0]
d000024e:	e7db      	b.n	d0000208 <_puts_r+0x88>
d0000250:	d000142c 	.word	0xd000142c
d0000254:	d000144c 	.word	0xd000144c
d0000258:	d000140c 	.word	0xd000140c

d000025c <puts>:
d000025c:	4b02      	ldr	r3, [pc, #8]	; (d0000268 <puts+0xc>)
d000025e:	4601      	mov	r1, r0
d0000260:	6818      	ldr	r0, [r3, #0]
d0000262:	f7ff bf8d 	b.w	d0000180 <_puts_r>
d0000266:	bf00      	nop
d0000268:	d00014a8 	.word	0xd00014a8

d000026c <setbuf>:
d000026c:	2900      	cmp	r1, #0
d000026e:	f44f 6380 	mov.w	r3, #1024	; 0x400
d0000272:	bf0c      	ite	eq
d0000274:	2202      	moveq	r2, #2
d0000276:	2200      	movne	r2, #0
d0000278:	f000 b800 	b.w	d000027c <setvbuf>

d000027c <setvbuf>:
d000027c:	e92d 43f7 	stmdb	sp!, {r0, r1, r2, r4, r5, r6, r7, r8, r9, lr}
d0000280:	461d      	mov	r5, r3
d0000282:	4b5d      	ldr	r3, [pc, #372]	; (d00003f8 <setvbuf+0x17c>)
d0000284:	681f      	ldr	r7, [r3, #0]
d0000286:	4604      	mov	r4, r0
d0000288:	460e      	mov	r6, r1
d000028a:	4690      	mov	r8, r2
d000028c:	b127      	cbz	r7, d0000298 <setvbuf+0x1c>
d000028e:	69bb      	ldr	r3, [r7, #24]
d0000290:	b913      	cbnz	r3, d0000298 <setvbuf+0x1c>
d0000292:	4638      	mov	r0, r7
d0000294:	f000 fa92 	bl	d00007bc <__sinit>
d0000298:	4b58      	ldr	r3, [pc, #352]	; (d00003fc <setvbuf+0x180>)
d000029a:	429c      	cmp	r4, r3
d000029c:	d167      	bne.n	d000036e <setvbuf+0xf2>
d000029e:	687c      	ldr	r4, [r7, #4]
d00002a0:	f1b8 0f02 	cmp.w	r8, #2
d00002a4:	d006      	beq.n	d00002b4 <setvbuf+0x38>
d00002a6:	f1b8 0f01 	cmp.w	r8, #1
d00002aa:	f200 809f 	bhi.w	d00003ec <setvbuf+0x170>
d00002ae:	2d00      	cmp	r5, #0
d00002b0:	f2c0 809c 	blt.w	d00003ec <setvbuf+0x170>
d00002b4:	6e63      	ldr	r3, [r4, #100]	; 0x64
d00002b6:	07db      	lsls	r3, r3, #31
d00002b8:	d405      	bmi.n	d00002c6 <setvbuf+0x4a>
d00002ba:	89a3      	ldrh	r3, [r4, #12]
d00002bc:	0598      	lsls	r0, r3, #22
d00002be:	d402      	bmi.n	d00002c6 <setvbuf+0x4a>
d00002c0:	6da0      	ldr	r0, [r4, #88]	; 0x58
d00002c2:	f000 fb19 	bl	d00008f8 <__retarget_lock_acquire_recursive>
d00002c6:	4621      	mov	r1, r4
d00002c8:	4638      	mov	r0, r7
d00002ca:	f000 f9e3 	bl	d0000694 <_fflush_r>
d00002ce:	6b61      	ldr	r1, [r4, #52]	; 0x34
d00002d0:	b141      	cbz	r1, d00002e4 <setvbuf+0x68>
d00002d2:	f104 0344 	add.w	r3, r4, #68	; 0x44
d00002d6:	4299      	cmp	r1, r3
d00002d8:	d002      	beq.n	d00002e0 <setvbuf+0x64>
d00002da:	4638      	mov	r0, r7
d00002dc:	f000 fb7a 	bl	d00009d4 <_free_r>
d00002e0:	2300      	movs	r3, #0
d00002e2:	6363      	str	r3, [r4, #52]	; 0x34
d00002e4:	2300      	movs	r3, #0
d00002e6:	61a3      	str	r3, [r4, #24]
d00002e8:	6063      	str	r3, [r4, #4]
d00002ea:	89a3      	ldrh	r3, [r4, #12]
d00002ec:	0619      	lsls	r1, r3, #24
d00002ee:	d503      	bpl.n	d00002f8 <setvbuf+0x7c>
d00002f0:	6921      	ldr	r1, [r4, #16]
d00002f2:	4638      	mov	r0, r7
d00002f4:	f000 fb6e 	bl	d00009d4 <_free_r>
d00002f8:	89a3      	ldrh	r3, [r4, #12]
d00002fa:	f423 634a 	bic.w	r3, r3, #3232	; 0xca0
d00002fe:	f023 0303 	bic.w	r3, r3, #3
d0000302:	f1b8 0f02 	cmp.w	r8, #2
d0000306:	81a3      	strh	r3, [r4, #12]
d0000308:	d06c      	beq.n	d00003e4 <setvbuf+0x168>
d000030a:	ab01      	add	r3, sp, #4
d000030c:	466a      	mov	r2, sp
d000030e:	4621      	mov	r1, r4
d0000310:	4638      	mov	r0, r7
d0000312:	f000 faf3 	bl	d00008fc <__swhatbuf_r>
d0000316:	89a3      	ldrh	r3, [r4, #12]
d0000318:	4318      	orrs	r0, r3
d000031a:	81a0      	strh	r0, [r4, #12]
d000031c:	2d00      	cmp	r5, #0
d000031e:	d130      	bne.n	d0000382 <setvbuf+0x106>
d0000320:	9d00      	ldr	r5, [sp, #0]
d0000322:	4628      	mov	r0, r5
d0000324:	f000 fb4e 	bl	d00009c4 <malloc>
d0000328:	4606      	mov	r6, r0
d000032a:	2800      	cmp	r0, #0
d000032c:	d155      	bne.n	d00003da <setvbuf+0x15e>
d000032e:	f8dd 9000 	ldr.w	r9, [sp]
d0000332:	45a9      	cmp	r9, r5
d0000334:	d14a      	bne.n	d00003cc <setvbuf+0x150>
d0000336:	f04f 35ff 	mov.w	r5, #4294967295	; 0xffffffff
d000033a:	2200      	movs	r2, #0
d000033c:	60a2      	str	r2, [r4, #8]
d000033e:	f104 0247 	add.w	r2, r4, #71	; 0x47
d0000342:	6022      	str	r2, [r4, #0]
d0000344:	6122      	str	r2, [r4, #16]
d0000346:	2201      	movs	r2, #1
d0000348:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
d000034c:	6162      	str	r2, [r4, #20]
d000034e:	6e62      	ldr	r2, [r4, #100]	; 0x64
d0000350:	f043 0302 	orr.w	r3, r3, #2
d0000354:	07d2      	lsls	r2, r2, #31
d0000356:	81a3      	strh	r3, [r4, #12]
d0000358:	d405      	bmi.n	d0000366 <setvbuf+0xea>
d000035a:	f413 7f00 	tst.w	r3, #512	; 0x200
d000035e:	d102      	bne.n	d0000366 <setvbuf+0xea>
d0000360:	6da0      	ldr	r0, [r4, #88]	; 0x58
d0000362:	f000 faca 	bl	d00008fa <__retarget_lock_release_recursive>
d0000366:	4628      	mov	r0, r5
d0000368:	b003      	add	sp, #12
d000036a:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
d000036e:	4b24      	ldr	r3, [pc, #144]	; (d0000400 <setvbuf+0x184>)
d0000370:	429c      	cmp	r4, r3
d0000372:	d101      	bne.n	d0000378 <setvbuf+0xfc>
d0000374:	68bc      	ldr	r4, [r7, #8]
d0000376:	e793      	b.n	d00002a0 <setvbuf+0x24>
d0000378:	4b22      	ldr	r3, [pc, #136]	; (d0000404 <setvbuf+0x188>)
d000037a:	429c      	cmp	r4, r3
d000037c:	bf08      	it	eq
d000037e:	68fc      	ldreq	r4, [r7, #12]
d0000380:	e78e      	b.n	d00002a0 <setvbuf+0x24>
d0000382:	2e00      	cmp	r6, #0
d0000384:	d0cd      	beq.n	d0000322 <setvbuf+0xa6>
d0000386:	69bb      	ldr	r3, [r7, #24]
d0000388:	b913      	cbnz	r3, d0000390 <setvbuf+0x114>
d000038a:	4638      	mov	r0, r7
d000038c:	f000 fa16 	bl	d00007bc <__sinit>
d0000390:	f1b8 0f01 	cmp.w	r8, #1
d0000394:	bf08      	it	eq
d0000396:	89a3      	ldrheq	r3, [r4, #12]
d0000398:	6026      	str	r6, [r4, #0]
d000039a:	bf04      	itt	eq
d000039c:	f043 0301 	orreq.w	r3, r3, #1
d00003a0:	81a3      	strheq	r3, [r4, #12]
d00003a2:	89a2      	ldrh	r2, [r4, #12]
d00003a4:	f012 0308 	ands.w	r3, r2, #8
d00003a8:	e9c4 6504 	strd	r6, r5, [r4, #16]
d00003ac:	d01c      	beq.n	d00003e8 <setvbuf+0x16c>
d00003ae:	07d3      	lsls	r3, r2, #31
d00003b0:	bf41      	itttt	mi
d00003b2:	2300      	movmi	r3, #0
d00003b4:	426d      	negmi	r5, r5
d00003b6:	60a3      	strmi	r3, [r4, #8]
d00003b8:	61a5      	strmi	r5, [r4, #24]
d00003ba:	bf58      	it	pl
d00003bc:	60a5      	strpl	r5, [r4, #8]
d00003be:	6e65      	ldr	r5, [r4, #100]	; 0x64
d00003c0:	f015 0501 	ands.w	r5, r5, #1
d00003c4:	d115      	bne.n	d00003f2 <setvbuf+0x176>
d00003c6:	f412 7f00 	tst.w	r2, #512	; 0x200
d00003ca:	e7c8      	b.n	d000035e <setvbuf+0xe2>
d00003cc:	4648      	mov	r0, r9
d00003ce:	f000 faf9 	bl	d00009c4 <malloc>
d00003d2:	4606      	mov	r6, r0
d00003d4:	2800      	cmp	r0, #0
d00003d6:	d0ae      	beq.n	d0000336 <setvbuf+0xba>
d00003d8:	464d      	mov	r5, r9
d00003da:	89a3      	ldrh	r3, [r4, #12]
d00003dc:	f043 0380 	orr.w	r3, r3, #128	; 0x80
d00003e0:	81a3      	strh	r3, [r4, #12]
d00003e2:	e7d0      	b.n	d0000386 <setvbuf+0x10a>
d00003e4:	2500      	movs	r5, #0
d00003e6:	e7a8      	b.n	d000033a <setvbuf+0xbe>
d00003e8:	60a3      	str	r3, [r4, #8]
d00003ea:	e7e8      	b.n	d00003be <setvbuf+0x142>
d00003ec:	f04f 35ff 	mov.w	r5, #4294967295	; 0xffffffff
d00003f0:	e7b9      	b.n	d0000366 <setvbuf+0xea>
d00003f2:	2500      	movs	r5, #0
d00003f4:	e7b7      	b.n	d0000366 <setvbuf+0xea>
d00003f6:	bf00      	nop
d00003f8:	d00014a8 	.word	0xd00014a8
d00003fc:	d000142c 	.word	0xd000142c
d0000400:	d000144c 	.word	0xd000144c
d0000404:	d000140c 	.word	0xd000140c

d0000408 <__swbuf_r>:
d0000408:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d000040a:	460e      	mov	r6, r1
d000040c:	4614      	mov	r4, r2
d000040e:	4605      	mov	r5, r0
d0000410:	b118      	cbz	r0, d000041a <__swbuf_r+0x12>
d0000412:	6983      	ldr	r3, [r0, #24]
d0000414:	b90b      	cbnz	r3, d000041a <__swbuf_r+0x12>
d0000416:	f000 f9d1 	bl	d00007bc <__sinit>
d000041a:	4b21      	ldr	r3, [pc, #132]	; (d00004a0 <__swbuf_r+0x98>)
d000041c:	429c      	cmp	r4, r3
d000041e:	d12b      	bne.n	d0000478 <__swbuf_r+0x70>
d0000420:	686c      	ldr	r4, [r5, #4]
d0000422:	69a3      	ldr	r3, [r4, #24]
d0000424:	60a3      	str	r3, [r4, #8]
d0000426:	89a3      	ldrh	r3, [r4, #12]
d0000428:	071a      	lsls	r2, r3, #28
d000042a:	d52f      	bpl.n	d000048c <__swbuf_r+0x84>
d000042c:	6923      	ldr	r3, [r4, #16]
d000042e:	b36b      	cbz	r3, d000048c <__swbuf_r+0x84>
d0000430:	6923      	ldr	r3, [r4, #16]
d0000432:	6820      	ldr	r0, [r4, #0]
d0000434:	1ac0      	subs	r0, r0, r3
d0000436:	6963      	ldr	r3, [r4, #20]
d0000438:	b2f6      	uxtb	r6, r6
d000043a:	4283      	cmp	r3, r0
d000043c:	4637      	mov	r7, r6
d000043e:	dc04      	bgt.n	d000044a <__swbuf_r+0x42>
d0000440:	4621      	mov	r1, r4
d0000442:	4628      	mov	r0, r5
d0000444:	f000 f926 	bl	d0000694 <_fflush_r>
d0000448:	bb30      	cbnz	r0, d0000498 <__swbuf_r+0x90>
d000044a:	68a3      	ldr	r3, [r4, #8]
d000044c:	3b01      	subs	r3, #1
d000044e:	60a3      	str	r3, [r4, #8]
d0000450:	6823      	ldr	r3, [r4, #0]
d0000452:	1c5a      	adds	r2, r3, #1
d0000454:	6022      	str	r2, [r4, #0]
d0000456:	701e      	strb	r6, [r3, #0]
d0000458:	6963      	ldr	r3, [r4, #20]
d000045a:	3001      	adds	r0, #1
d000045c:	4283      	cmp	r3, r0
d000045e:	d004      	beq.n	d000046a <__swbuf_r+0x62>
d0000460:	89a3      	ldrh	r3, [r4, #12]
d0000462:	07db      	lsls	r3, r3, #31
d0000464:	d506      	bpl.n	d0000474 <__swbuf_r+0x6c>
d0000466:	2e0a      	cmp	r6, #10
d0000468:	d104      	bne.n	d0000474 <__swbuf_r+0x6c>
d000046a:	4621      	mov	r1, r4
d000046c:	4628      	mov	r0, r5
d000046e:	f000 f911 	bl	d0000694 <_fflush_r>
d0000472:	b988      	cbnz	r0, d0000498 <__swbuf_r+0x90>
d0000474:	4638      	mov	r0, r7
d0000476:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d0000478:	4b0a      	ldr	r3, [pc, #40]	; (d00004a4 <__swbuf_r+0x9c>)
d000047a:	429c      	cmp	r4, r3
d000047c:	d101      	bne.n	d0000482 <__swbuf_r+0x7a>
d000047e:	68ac      	ldr	r4, [r5, #8]
d0000480:	e7cf      	b.n	d0000422 <__swbuf_r+0x1a>
d0000482:	4b09      	ldr	r3, [pc, #36]	; (d00004a8 <__swbuf_r+0xa0>)
d0000484:	429c      	cmp	r4, r3
d0000486:	bf08      	it	eq
d0000488:	68ec      	ldreq	r4, [r5, #12]
d000048a:	e7ca      	b.n	d0000422 <__swbuf_r+0x1a>
d000048c:	4621      	mov	r1, r4
d000048e:	4628      	mov	r0, r5
d0000490:	f000 f80c 	bl	d00004ac <__swsetup_r>
d0000494:	2800      	cmp	r0, #0
d0000496:	d0cb      	beq.n	d0000430 <__swbuf_r+0x28>
d0000498:	f04f 37ff 	mov.w	r7, #4294967295	; 0xffffffff
d000049c:	e7ea      	b.n	d0000474 <__swbuf_r+0x6c>
d000049e:	bf00      	nop
d00004a0:	d000142c 	.word	0xd000142c
d00004a4:	d000144c 	.word	0xd000144c
d00004a8:	d000140c 	.word	0xd000140c

d00004ac <__swsetup_r>:
d00004ac:	4b32      	ldr	r3, [pc, #200]	; (d0000578 <__swsetup_r+0xcc>)
d00004ae:	b570      	push	{r4, r5, r6, lr}
d00004b0:	681d      	ldr	r5, [r3, #0]
d00004b2:	4606      	mov	r6, r0
d00004b4:	460c      	mov	r4, r1
d00004b6:	b125      	cbz	r5, d00004c2 <__swsetup_r+0x16>
d00004b8:	69ab      	ldr	r3, [r5, #24]
d00004ba:	b913      	cbnz	r3, d00004c2 <__swsetup_r+0x16>
d00004bc:	4628      	mov	r0, r5
d00004be:	f000 f97d 	bl	d00007bc <__sinit>
d00004c2:	4b2e      	ldr	r3, [pc, #184]	; (d000057c <__swsetup_r+0xd0>)
d00004c4:	429c      	cmp	r4, r3
d00004c6:	d10f      	bne.n	d00004e8 <__swsetup_r+0x3c>
d00004c8:	686c      	ldr	r4, [r5, #4]
d00004ca:	89a3      	ldrh	r3, [r4, #12]
d00004cc:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
d00004d0:	0719      	lsls	r1, r3, #28
d00004d2:	d42c      	bmi.n	d000052e <__swsetup_r+0x82>
d00004d4:	06dd      	lsls	r5, r3, #27
d00004d6:	d411      	bmi.n	d00004fc <__swsetup_r+0x50>
d00004d8:	2309      	movs	r3, #9
d00004da:	6033      	str	r3, [r6, #0]
d00004dc:	f042 0340 	orr.w	r3, r2, #64	; 0x40
d00004e0:	81a3      	strh	r3, [r4, #12]
d00004e2:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d00004e6:	e03e      	b.n	d0000566 <__swsetup_r+0xba>
d00004e8:	4b25      	ldr	r3, [pc, #148]	; (d0000580 <__swsetup_r+0xd4>)
d00004ea:	429c      	cmp	r4, r3
d00004ec:	d101      	bne.n	d00004f2 <__swsetup_r+0x46>
d00004ee:	68ac      	ldr	r4, [r5, #8]
d00004f0:	e7eb      	b.n	d00004ca <__swsetup_r+0x1e>
d00004f2:	4b24      	ldr	r3, [pc, #144]	; (d0000584 <__swsetup_r+0xd8>)
d00004f4:	429c      	cmp	r4, r3
d00004f6:	bf08      	it	eq
d00004f8:	68ec      	ldreq	r4, [r5, #12]
d00004fa:	e7e6      	b.n	d00004ca <__swsetup_r+0x1e>
d00004fc:	0758      	lsls	r0, r3, #29
d00004fe:	d512      	bpl.n	d0000526 <__swsetup_r+0x7a>
d0000500:	6b61      	ldr	r1, [r4, #52]	; 0x34
d0000502:	b141      	cbz	r1, d0000516 <__swsetup_r+0x6a>
d0000504:	f104 0344 	add.w	r3, r4, #68	; 0x44
d0000508:	4299      	cmp	r1, r3
d000050a:	d002      	beq.n	d0000512 <__swsetup_r+0x66>
d000050c:	4630      	mov	r0, r6
d000050e:	f000 fa61 	bl	d00009d4 <_free_r>
d0000512:	2300      	movs	r3, #0
d0000514:	6363      	str	r3, [r4, #52]	; 0x34
d0000516:	89a3      	ldrh	r3, [r4, #12]
d0000518:	f023 0324 	bic.w	r3, r3, #36	; 0x24
d000051c:	81a3      	strh	r3, [r4, #12]
d000051e:	2300      	movs	r3, #0
d0000520:	6063      	str	r3, [r4, #4]
d0000522:	6923      	ldr	r3, [r4, #16]
d0000524:	6023      	str	r3, [r4, #0]
d0000526:	89a3      	ldrh	r3, [r4, #12]
d0000528:	f043 0308 	orr.w	r3, r3, #8
d000052c:	81a3      	strh	r3, [r4, #12]
d000052e:	6923      	ldr	r3, [r4, #16]
d0000530:	b94b      	cbnz	r3, d0000546 <__swsetup_r+0x9a>
d0000532:	89a3      	ldrh	r3, [r4, #12]
d0000534:	f403 7320 	and.w	r3, r3, #640	; 0x280
d0000538:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
d000053c:	d003      	beq.n	d0000546 <__swsetup_r+0x9a>
d000053e:	4621      	mov	r1, r4
d0000540:	4630      	mov	r0, r6
d0000542:	f000 f9ff 	bl	d0000944 <__smakebuf_r>
d0000546:	89a0      	ldrh	r0, [r4, #12]
d0000548:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
d000054c:	f010 0301 	ands.w	r3, r0, #1
d0000550:	d00a      	beq.n	d0000568 <__swsetup_r+0xbc>
d0000552:	2300      	movs	r3, #0
d0000554:	60a3      	str	r3, [r4, #8]
d0000556:	6963      	ldr	r3, [r4, #20]
d0000558:	425b      	negs	r3, r3
d000055a:	61a3      	str	r3, [r4, #24]
d000055c:	6923      	ldr	r3, [r4, #16]
d000055e:	b943      	cbnz	r3, d0000572 <__swsetup_r+0xc6>
d0000560:	f010 0080 	ands.w	r0, r0, #128	; 0x80
d0000564:	d1ba      	bne.n	d00004dc <__swsetup_r+0x30>
d0000566:	bd70      	pop	{r4, r5, r6, pc}
d0000568:	0781      	lsls	r1, r0, #30
d000056a:	bf58      	it	pl
d000056c:	6963      	ldrpl	r3, [r4, #20]
d000056e:	60a3      	str	r3, [r4, #8]
d0000570:	e7f4      	b.n	d000055c <__swsetup_r+0xb0>
d0000572:	2000      	movs	r0, #0
d0000574:	e7f7      	b.n	d0000566 <__swsetup_r+0xba>
d0000576:	bf00      	nop
d0000578:	d00014a8 	.word	0xd00014a8
d000057c:	d000142c 	.word	0xd000142c
d0000580:	d000144c 	.word	0xd000144c
d0000584:	d000140c 	.word	0xd000140c

d0000588 <__sflush_r>:
d0000588:	898a      	ldrh	r2, [r1, #12]
d000058a:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
d000058e:	4605      	mov	r5, r0
d0000590:	0710      	lsls	r0, r2, #28
d0000592:	460c      	mov	r4, r1
d0000594:	d458      	bmi.n	d0000648 <__sflush_r+0xc0>
d0000596:	684b      	ldr	r3, [r1, #4]
d0000598:	2b00      	cmp	r3, #0
d000059a:	dc05      	bgt.n	d00005a8 <__sflush_r+0x20>
d000059c:	6c0b      	ldr	r3, [r1, #64]	; 0x40
d000059e:	2b00      	cmp	r3, #0
d00005a0:	dc02      	bgt.n	d00005a8 <__sflush_r+0x20>
d00005a2:	2000      	movs	r0, #0
d00005a4:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
d00005a8:	6ae6      	ldr	r6, [r4, #44]	; 0x2c
d00005aa:	2e00      	cmp	r6, #0
d00005ac:	d0f9      	beq.n	d00005a2 <__sflush_r+0x1a>
d00005ae:	2300      	movs	r3, #0
d00005b0:	f412 5280 	ands.w	r2, r2, #4096	; 0x1000
d00005b4:	682f      	ldr	r7, [r5, #0]
d00005b6:	602b      	str	r3, [r5, #0]
d00005b8:	d032      	beq.n	d0000620 <__sflush_r+0x98>
d00005ba:	6d60      	ldr	r0, [r4, #84]	; 0x54
d00005bc:	89a3      	ldrh	r3, [r4, #12]
d00005be:	075a      	lsls	r2, r3, #29
d00005c0:	d505      	bpl.n	d00005ce <__sflush_r+0x46>
d00005c2:	6863      	ldr	r3, [r4, #4]
d00005c4:	1ac0      	subs	r0, r0, r3
d00005c6:	6b63      	ldr	r3, [r4, #52]	; 0x34
d00005c8:	b10b      	cbz	r3, d00005ce <__sflush_r+0x46>
d00005ca:	6c23      	ldr	r3, [r4, #64]	; 0x40
d00005cc:	1ac0      	subs	r0, r0, r3
d00005ce:	2300      	movs	r3, #0
d00005d0:	4602      	mov	r2, r0
d00005d2:	6ae6      	ldr	r6, [r4, #44]	; 0x2c
d00005d4:	6a21      	ldr	r1, [r4, #32]
d00005d6:	4628      	mov	r0, r5
d00005d8:	47b0      	blx	r6
d00005da:	1c43      	adds	r3, r0, #1
d00005dc:	89a3      	ldrh	r3, [r4, #12]
d00005de:	d106      	bne.n	d00005ee <__sflush_r+0x66>
d00005e0:	6829      	ldr	r1, [r5, #0]
d00005e2:	291d      	cmp	r1, #29
d00005e4:	d82c      	bhi.n	d0000640 <__sflush_r+0xb8>
d00005e6:	4a2a      	ldr	r2, [pc, #168]	; (d0000690 <__sflush_r+0x108>)
d00005e8:	40ca      	lsrs	r2, r1
d00005ea:	07d6      	lsls	r6, r2, #31
d00005ec:	d528      	bpl.n	d0000640 <__sflush_r+0xb8>
d00005ee:	2200      	movs	r2, #0
d00005f0:	6062      	str	r2, [r4, #4]
d00005f2:	04d9      	lsls	r1, r3, #19
d00005f4:	6922      	ldr	r2, [r4, #16]
d00005f6:	6022      	str	r2, [r4, #0]
d00005f8:	d504      	bpl.n	d0000604 <__sflush_r+0x7c>
d00005fa:	1c42      	adds	r2, r0, #1
d00005fc:	d101      	bne.n	d0000602 <__sflush_r+0x7a>
d00005fe:	682b      	ldr	r3, [r5, #0]
d0000600:	b903      	cbnz	r3, d0000604 <__sflush_r+0x7c>
d0000602:	6560      	str	r0, [r4, #84]	; 0x54
d0000604:	6b61      	ldr	r1, [r4, #52]	; 0x34
d0000606:	602f      	str	r7, [r5, #0]
d0000608:	2900      	cmp	r1, #0
d000060a:	d0ca      	beq.n	d00005a2 <__sflush_r+0x1a>
d000060c:	f104 0344 	add.w	r3, r4, #68	; 0x44
d0000610:	4299      	cmp	r1, r3
d0000612:	d002      	beq.n	d000061a <__sflush_r+0x92>
d0000614:	4628      	mov	r0, r5
d0000616:	f000 f9dd 	bl	d00009d4 <_free_r>
d000061a:	2000      	movs	r0, #0
d000061c:	6360      	str	r0, [r4, #52]	; 0x34
d000061e:	e7c1      	b.n	d00005a4 <__sflush_r+0x1c>
d0000620:	6a21      	ldr	r1, [r4, #32]
d0000622:	2301      	movs	r3, #1
d0000624:	4628      	mov	r0, r5
d0000626:	47b0      	blx	r6
d0000628:	1c41      	adds	r1, r0, #1
d000062a:	d1c7      	bne.n	d00005bc <__sflush_r+0x34>
d000062c:	682b      	ldr	r3, [r5, #0]
d000062e:	2b00      	cmp	r3, #0
d0000630:	d0c4      	beq.n	d00005bc <__sflush_r+0x34>
d0000632:	2b1d      	cmp	r3, #29
d0000634:	d001      	beq.n	d000063a <__sflush_r+0xb2>
d0000636:	2b16      	cmp	r3, #22
d0000638:	d101      	bne.n	d000063e <__sflush_r+0xb6>
d000063a:	602f      	str	r7, [r5, #0]
d000063c:	e7b1      	b.n	d00005a2 <__sflush_r+0x1a>
d000063e:	89a3      	ldrh	r3, [r4, #12]
d0000640:	f043 0340 	orr.w	r3, r3, #64	; 0x40
d0000644:	81a3      	strh	r3, [r4, #12]
d0000646:	e7ad      	b.n	d00005a4 <__sflush_r+0x1c>
d0000648:	690f      	ldr	r7, [r1, #16]
d000064a:	2f00      	cmp	r7, #0
d000064c:	d0a9      	beq.n	d00005a2 <__sflush_r+0x1a>
d000064e:	0793      	lsls	r3, r2, #30
d0000650:	680e      	ldr	r6, [r1, #0]
d0000652:	bf08      	it	eq
d0000654:	694b      	ldreq	r3, [r1, #20]
d0000656:	600f      	str	r7, [r1, #0]
d0000658:	bf18      	it	ne
d000065a:	2300      	movne	r3, #0
d000065c:	eba6 0807 	sub.w	r8, r6, r7
d0000660:	608b      	str	r3, [r1, #8]
d0000662:	f1b8 0f00 	cmp.w	r8, #0
d0000666:	dd9c      	ble.n	d00005a2 <__sflush_r+0x1a>
d0000668:	6a21      	ldr	r1, [r4, #32]
d000066a:	6aa6      	ldr	r6, [r4, #40]	; 0x28
d000066c:	4643      	mov	r3, r8
d000066e:	463a      	mov	r2, r7
d0000670:	4628      	mov	r0, r5
d0000672:	47b0      	blx	r6
d0000674:	2800      	cmp	r0, #0
d0000676:	dc06      	bgt.n	d0000686 <__sflush_r+0xfe>
d0000678:	89a3      	ldrh	r3, [r4, #12]
d000067a:	f043 0340 	orr.w	r3, r3, #64	; 0x40
d000067e:	81a3      	strh	r3, [r4, #12]
d0000680:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d0000684:	e78e      	b.n	d00005a4 <__sflush_r+0x1c>
d0000686:	4407      	add	r7, r0
d0000688:	eba8 0800 	sub.w	r8, r8, r0
d000068c:	e7e9      	b.n	d0000662 <__sflush_r+0xda>
d000068e:	bf00      	nop
d0000690:	20400001 	.word	0x20400001

d0000694 <_fflush_r>:
d0000694:	b538      	push	{r3, r4, r5, lr}
d0000696:	690b      	ldr	r3, [r1, #16]
d0000698:	4605      	mov	r5, r0
d000069a:	460c      	mov	r4, r1
d000069c:	b913      	cbnz	r3, d00006a4 <_fflush_r+0x10>
d000069e:	2500      	movs	r5, #0
d00006a0:	4628      	mov	r0, r5
d00006a2:	bd38      	pop	{r3, r4, r5, pc}
d00006a4:	b118      	cbz	r0, d00006ae <_fflush_r+0x1a>
d00006a6:	6983      	ldr	r3, [r0, #24]
d00006a8:	b90b      	cbnz	r3, d00006ae <_fflush_r+0x1a>
d00006aa:	f000 f887 	bl	d00007bc <__sinit>
d00006ae:	4b14      	ldr	r3, [pc, #80]	; (d0000700 <_fflush_r+0x6c>)
d00006b0:	429c      	cmp	r4, r3
d00006b2:	d11b      	bne.n	d00006ec <_fflush_r+0x58>
d00006b4:	686c      	ldr	r4, [r5, #4]
d00006b6:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
d00006ba:	2b00      	cmp	r3, #0
d00006bc:	d0ef      	beq.n	d000069e <_fflush_r+0xa>
d00006be:	6e62      	ldr	r2, [r4, #100]	; 0x64
d00006c0:	07d0      	lsls	r0, r2, #31
d00006c2:	d404      	bmi.n	d00006ce <_fflush_r+0x3a>
d00006c4:	0599      	lsls	r1, r3, #22
d00006c6:	d402      	bmi.n	d00006ce <_fflush_r+0x3a>
d00006c8:	6da0      	ldr	r0, [r4, #88]	; 0x58
d00006ca:	f000 f915 	bl	d00008f8 <__retarget_lock_acquire_recursive>
d00006ce:	4628      	mov	r0, r5
d00006d0:	4621      	mov	r1, r4
d00006d2:	f7ff ff59 	bl	d0000588 <__sflush_r>
d00006d6:	6e63      	ldr	r3, [r4, #100]	; 0x64
d00006d8:	07da      	lsls	r2, r3, #31
d00006da:	4605      	mov	r5, r0
d00006dc:	d4e0      	bmi.n	d00006a0 <_fflush_r+0xc>
d00006de:	89a3      	ldrh	r3, [r4, #12]
d00006e0:	059b      	lsls	r3, r3, #22
d00006e2:	d4dd      	bmi.n	d00006a0 <_fflush_r+0xc>
d00006e4:	6da0      	ldr	r0, [r4, #88]	; 0x58
d00006e6:	f000 f908 	bl	d00008fa <__retarget_lock_release_recursive>
d00006ea:	e7d9      	b.n	d00006a0 <_fflush_r+0xc>
d00006ec:	4b05      	ldr	r3, [pc, #20]	; (d0000704 <_fflush_r+0x70>)
d00006ee:	429c      	cmp	r4, r3
d00006f0:	d101      	bne.n	d00006f6 <_fflush_r+0x62>
d00006f2:	68ac      	ldr	r4, [r5, #8]
d00006f4:	e7df      	b.n	d00006b6 <_fflush_r+0x22>
d00006f6:	4b04      	ldr	r3, [pc, #16]	; (d0000708 <_fflush_r+0x74>)
d00006f8:	429c      	cmp	r4, r3
d00006fa:	bf08      	it	eq
d00006fc:	68ec      	ldreq	r4, [r5, #12]
d00006fe:	e7da      	b.n	d00006b6 <_fflush_r+0x22>
d0000700:	d000142c 	.word	0xd000142c
d0000704:	d000144c 	.word	0xd000144c
d0000708:	d000140c 	.word	0xd000140c

d000070c <std>:
d000070c:	2300      	movs	r3, #0
d000070e:	b510      	push	{r4, lr}
d0000710:	4604      	mov	r4, r0
d0000712:	e9c0 3300 	strd	r3, r3, [r0]
d0000716:	e9c0 3304 	strd	r3, r3, [r0, #16]
d000071a:	6083      	str	r3, [r0, #8]
d000071c:	8181      	strh	r1, [r0, #12]
d000071e:	6643      	str	r3, [r0, #100]	; 0x64
d0000720:	81c2      	strh	r2, [r0, #14]
d0000722:	6183      	str	r3, [r0, #24]
d0000724:	4619      	mov	r1, r3
d0000726:	2208      	movs	r2, #8
d0000728:	305c      	adds	r0, #92	; 0x5c
d000072a:	f7ff fc87 	bl	d000003c <memset>
d000072e:	4b05      	ldr	r3, [pc, #20]	; (d0000744 <std+0x38>)
d0000730:	6263      	str	r3, [r4, #36]	; 0x24
d0000732:	4b05      	ldr	r3, [pc, #20]	; (d0000748 <std+0x3c>)
d0000734:	62a3      	str	r3, [r4, #40]	; 0x28
d0000736:	4b05      	ldr	r3, [pc, #20]	; (d000074c <std+0x40>)
d0000738:	62e3      	str	r3, [r4, #44]	; 0x2c
d000073a:	4b05      	ldr	r3, [pc, #20]	; (d0000750 <std+0x44>)
d000073c:	6224      	str	r4, [r4, #32]
d000073e:	6323      	str	r3, [r4, #48]	; 0x30
d0000740:	bd10      	pop	{r4, pc}
d0000742:	bf00      	nop
d0000744:	d0001105 	.word	0xd0001105
d0000748:	d0001127 	.word	0xd0001127
d000074c:	d000115f 	.word	0xd000115f
d0000750:	d0001183 	.word	0xd0001183

d0000754 <_cleanup_r>:
d0000754:	4901      	ldr	r1, [pc, #4]	; (d000075c <_cleanup_r+0x8>)
d0000756:	f000 b8af 	b.w	d00008b8 <_fwalk_reent>
d000075a:	bf00      	nop
d000075c:	d0000695 	.word	0xd0000695

d0000760 <__sfmoreglue>:
d0000760:	b570      	push	{r4, r5, r6, lr}
d0000762:	1e4a      	subs	r2, r1, #1
d0000764:	2568      	movs	r5, #104	; 0x68
d0000766:	4355      	muls	r5, r2
d0000768:	460e      	mov	r6, r1
d000076a:	f105 0174 	add.w	r1, r5, #116	; 0x74
d000076e:	f000 f981 	bl	d0000a74 <_malloc_r>
d0000772:	4604      	mov	r4, r0
d0000774:	b140      	cbz	r0, d0000788 <__sfmoreglue+0x28>
d0000776:	2100      	movs	r1, #0
d0000778:	e9c0 1600 	strd	r1, r6, [r0]
d000077c:	300c      	adds	r0, #12
d000077e:	60a0      	str	r0, [r4, #8]
d0000780:	f105 0268 	add.w	r2, r5, #104	; 0x68
d0000784:	f7ff fc5a 	bl	d000003c <memset>
d0000788:	4620      	mov	r0, r4
d000078a:	bd70      	pop	{r4, r5, r6, pc}

d000078c <__sfp_lock_acquire>:
d000078c:	4801      	ldr	r0, [pc, #4]	; (d0000794 <__sfp_lock_acquire+0x8>)
d000078e:	f000 b8b3 	b.w	d00008f8 <__retarget_lock_acquire_recursive>
d0000792:	bf00      	nop
d0000794:	d0001524 	.word	0xd0001524

d0000798 <__sfp_lock_release>:
d0000798:	4801      	ldr	r0, [pc, #4]	; (d00007a0 <__sfp_lock_release+0x8>)
d000079a:	f000 b8ae 	b.w	d00008fa <__retarget_lock_release_recursive>
d000079e:	bf00      	nop
d00007a0:	d0001524 	.word	0xd0001524

d00007a4 <__sinit_lock_acquire>:
d00007a4:	4801      	ldr	r0, [pc, #4]	; (d00007ac <__sinit_lock_acquire+0x8>)
d00007a6:	f000 b8a7 	b.w	d00008f8 <__retarget_lock_acquire_recursive>
d00007aa:	bf00      	nop
d00007ac:	d000151f 	.word	0xd000151f

d00007b0 <__sinit_lock_release>:
d00007b0:	4801      	ldr	r0, [pc, #4]	; (d00007b8 <__sinit_lock_release+0x8>)
d00007b2:	f000 b8a2 	b.w	d00008fa <__retarget_lock_release_recursive>
d00007b6:	bf00      	nop
d00007b8:	d000151f 	.word	0xd000151f

d00007bc <__sinit>:
d00007bc:	b510      	push	{r4, lr}
d00007be:	4604      	mov	r4, r0
d00007c0:	f7ff fff0 	bl	d00007a4 <__sinit_lock_acquire>
d00007c4:	69a3      	ldr	r3, [r4, #24]
d00007c6:	b11b      	cbz	r3, d00007d0 <__sinit+0x14>
d00007c8:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
d00007cc:	f7ff bff0 	b.w	d00007b0 <__sinit_lock_release>
d00007d0:	e9c4 3312 	strd	r3, r3, [r4, #72]	; 0x48
d00007d4:	6523      	str	r3, [r4, #80]	; 0x50
d00007d6:	4b13      	ldr	r3, [pc, #76]	; (d0000824 <__sinit+0x68>)
d00007d8:	4a13      	ldr	r2, [pc, #76]	; (d0000828 <__sinit+0x6c>)
d00007da:	681b      	ldr	r3, [r3, #0]
d00007dc:	62a2      	str	r2, [r4, #40]	; 0x28
d00007de:	42a3      	cmp	r3, r4
d00007e0:	bf04      	itt	eq
d00007e2:	2301      	moveq	r3, #1
d00007e4:	61a3      	streq	r3, [r4, #24]
d00007e6:	4620      	mov	r0, r4
d00007e8:	f000 f820 	bl	d000082c <__sfp>
d00007ec:	6060      	str	r0, [r4, #4]
d00007ee:	4620      	mov	r0, r4
d00007f0:	f000 f81c 	bl	d000082c <__sfp>
d00007f4:	60a0      	str	r0, [r4, #8]
d00007f6:	4620      	mov	r0, r4
d00007f8:	f000 f818 	bl	d000082c <__sfp>
d00007fc:	2200      	movs	r2, #0
d00007fe:	60e0      	str	r0, [r4, #12]
d0000800:	2104      	movs	r1, #4
d0000802:	6860      	ldr	r0, [r4, #4]
d0000804:	f7ff ff82 	bl	d000070c <std>
d0000808:	68a0      	ldr	r0, [r4, #8]
d000080a:	2201      	movs	r2, #1
d000080c:	2109      	movs	r1, #9
d000080e:	f7ff ff7d 	bl	d000070c <std>
d0000812:	68e0      	ldr	r0, [r4, #12]
d0000814:	2202      	movs	r2, #2
d0000816:	2112      	movs	r1, #18
d0000818:	f7ff ff78 	bl	d000070c <std>
d000081c:	2301      	movs	r3, #1
d000081e:	61a3      	str	r3, [r4, #24]
d0000820:	e7d2      	b.n	d00007c8 <__sinit+0xc>
d0000822:	bf00      	nop
d0000824:	d00012fc 	.word	0xd00012fc
d0000828:	d0000755 	.word	0xd0000755

d000082c <__sfp>:
d000082c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d000082e:	4607      	mov	r7, r0
d0000830:	f7ff ffac 	bl	d000078c <__sfp_lock_acquire>
d0000834:	4b1e      	ldr	r3, [pc, #120]	; (d00008b0 <__sfp+0x84>)
d0000836:	681e      	ldr	r6, [r3, #0]
d0000838:	69b3      	ldr	r3, [r6, #24]
d000083a:	b913      	cbnz	r3, d0000842 <__sfp+0x16>
d000083c:	4630      	mov	r0, r6
d000083e:	f7ff ffbd 	bl	d00007bc <__sinit>
d0000842:	3648      	adds	r6, #72	; 0x48
d0000844:	e9d6 3401 	ldrd	r3, r4, [r6, #4]
d0000848:	3b01      	subs	r3, #1
d000084a:	d503      	bpl.n	d0000854 <__sfp+0x28>
d000084c:	6833      	ldr	r3, [r6, #0]
d000084e:	b30b      	cbz	r3, d0000894 <__sfp+0x68>
d0000850:	6836      	ldr	r6, [r6, #0]
d0000852:	e7f7      	b.n	d0000844 <__sfp+0x18>
d0000854:	f9b4 500c 	ldrsh.w	r5, [r4, #12]
d0000858:	b9d5      	cbnz	r5, d0000890 <__sfp+0x64>
d000085a:	4b16      	ldr	r3, [pc, #88]	; (d00008b4 <__sfp+0x88>)
d000085c:	60e3      	str	r3, [r4, #12]
d000085e:	f104 0058 	add.w	r0, r4, #88	; 0x58
d0000862:	6665      	str	r5, [r4, #100]	; 0x64
d0000864:	f000 f847 	bl	d00008f6 <__retarget_lock_init_recursive>
d0000868:	f7ff ff96 	bl	d0000798 <__sfp_lock_release>
d000086c:	e9c4 5501 	strd	r5, r5, [r4, #4]
d0000870:	e9c4 5504 	strd	r5, r5, [r4, #16]
d0000874:	6025      	str	r5, [r4, #0]
d0000876:	61a5      	str	r5, [r4, #24]
d0000878:	2208      	movs	r2, #8
d000087a:	4629      	mov	r1, r5
d000087c:	f104 005c 	add.w	r0, r4, #92	; 0x5c
d0000880:	f7ff fbdc 	bl	d000003c <memset>
d0000884:	e9c4 550d 	strd	r5, r5, [r4, #52]	; 0x34
d0000888:	e9c4 5512 	strd	r5, r5, [r4, #72]	; 0x48
d000088c:	4620      	mov	r0, r4
d000088e:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d0000890:	3468      	adds	r4, #104	; 0x68
d0000892:	e7d9      	b.n	d0000848 <__sfp+0x1c>
d0000894:	2104      	movs	r1, #4
d0000896:	4638      	mov	r0, r7
d0000898:	f7ff ff62 	bl	d0000760 <__sfmoreglue>
d000089c:	4604      	mov	r4, r0
d000089e:	6030      	str	r0, [r6, #0]
d00008a0:	2800      	cmp	r0, #0
d00008a2:	d1d5      	bne.n	d0000850 <__sfp+0x24>
d00008a4:	f7ff ff78 	bl	d0000798 <__sfp_lock_release>
d00008a8:	230c      	movs	r3, #12
d00008aa:	603b      	str	r3, [r7, #0]
d00008ac:	e7ee      	b.n	d000088c <__sfp+0x60>
d00008ae:	bf00      	nop
d00008b0:	d00012fc 	.word	0xd00012fc
d00008b4:	ffff0001 	.word	0xffff0001

d00008b8 <_fwalk_reent>:
d00008b8:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
d00008bc:	4606      	mov	r6, r0
d00008be:	4688      	mov	r8, r1
d00008c0:	f100 0448 	add.w	r4, r0, #72	; 0x48
d00008c4:	2700      	movs	r7, #0
d00008c6:	e9d4 9501 	ldrd	r9, r5, [r4, #4]
d00008ca:	f1b9 0901 	subs.w	r9, r9, #1
d00008ce:	d505      	bpl.n	d00008dc <_fwalk_reent+0x24>
d00008d0:	6824      	ldr	r4, [r4, #0]
d00008d2:	2c00      	cmp	r4, #0
d00008d4:	d1f7      	bne.n	d00008c6 <_fwalk_reent+0xe>
d00008d6:	4638      	mov	r0, r7
d00008d8:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
d00008dc:	89ab      	ldrh	r3, [r5, #12]
d00008de:	2b01      	cmp	r3, #1
d00008e0:	d907      	bls.n	d00008f2 <_fwalk_reent+0x3a>
d00008e2:	f9b5 300e 	ldrsh.w	r3, [r5, #14]
d00008e6:	3301      	adds	r3, #1
d00008e8:	d003      	beq.n	d00008f2 <_fwalk_reent+0x3a>
d00008ea:	4629      	mov	r1, r5
d00008ec:	4630      	mov	r0, r6
d00008ee:	47c0      	blx	r8
d00008f0:	4307      	orrs	r7, r0
d00008f2:	3568      	adds	r5, #104	; 0x68
d00008f4:	e7e9      	b.n	d00008ca <_fwalk_reent+0x12>

d00008f6 <__retarget_lock_init_recursive>:
d00008f6:	4770      	bx	lr

d00008f8 <__retarget_lock_acquire_recursive>:
d00008f8:	4770      	bx	lr

d00008fa <__retarget_lock_release_recursive>:
d00008fa:	4770      	bx	lr

d00008fc <__swhatbuf_r>:
d00008fc:	b570      	push	{r4, r5, r6, lr}
d00008fe:	460e      	mov	r6, r1
d0000900:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d0000904:	2900      	cmp	r1, #0
d0000906:	b096      	sub	sp, #88	; 0x58
d0000908:	4614      	mov	r4, r2
d000090a:	461d      	mov	r5, r3
d000090c:	da07      	bge.n	d000091e <__swhatbuf_r+0x22>
d000090e:	2300      	movs	r3, #0
d0000910:	602b      	str	r3, [r5, #0]
d0000912:	89b3      	ldrh	r3, [r6, #12]
d0000914:	061a      	lsls	r2, r3, #24
d0000916:	d410      	bmi.n	d000093a <__swhatbuf_r+0x3e>
d0000918:	f44f 6380 	mov.w	r3, #1024	; 0x400
d000091c:	e00e      	b.n	d000093c <__swhatbuf_r+0x40>
d000091e:	466a      	mov	r2, sp
d0000920:	f000 fc44 	bl	d00011ac <_fstat_r>
d0000924:	2800      	cmp	r0, #0
d0000926:	dbf2      	blt.n	d000090e <__swhatbuf_r+0x12>
d0000928:	9a01      	ldr	r2, [sp, #4]
d000092a:	f402 4270 	and.w	r2, r2, #61440	; 0xf000
d000092e:	f5a2 5300 	sub.w	r3, r2, #8192	; 0x2000
d0000932:	425a      	negs	r2, r3
d0000934:	415a      	adcs	r2, r3
d0000936:	602a      	str	r2, [r5, #0]
d0000938:	e7ee      	b.n	d0000918 <__swhatbuf_r+0x1c>
d000093a:	2340      	movs	r3, #64	; 0x40
d000093c:	2000      	movs	r0, #0
d000093e:	6023      	str	r3, [r4, #0]
d0000940:	b016      	add	sp, #88	; 0x58
d0000942:	bd70      	pop	{r4, r5, r6, pc}

d0000944 <__smakebuf_r>:
d0000944:	898b      	ldrh	r3, [r1, #12]
d0000946:	b573      	push	{r0, r1, r4, r5, r6, lr}
d0000948:	079d      	lsls	r5, r3, #30
d000094a:	4606      	mov	r6, r0
d000094c:	460c      	mov	r4, r1
d000094e:	d507      	bpl.n	d0000960 <__smakebuf_r+0x1c>
d0000950:	f104 0347 	add.w	r3, r4, #71	; 0x47
d0000954:	6023      	str	r3, [r4, #0]
d0000956:	6123      	str	r3, [r4, #16]
d0000958:	2301      	movs	r3, #1
d000095a:	6163      	str	r3, [r4, #20]
d000095c:	b002      	add	sp, #8
d000095e:	bd70      	pop	{r4, r5, r6, pc}
d0000960:	ab01      	add	r3, sp, #4
d0000962:	466a      	mov	r2, sp
d0000964:	f7ff ffca 	bl	d00008fc <__swhatbuf_r>
d0000968:	9900      	ldr	r1, [sp, #0]
d000096a:	4605      	mov	r5, r0
d000096c:	4630      	mov	r0, r6
d000096e:	f000 f881 	bl	d0000a74 <_malloc_r>
d0000972:	b948      	cbnz	r0, d0000988 <__smakebuf_r+0x44>
d0000974:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
d0000978:	059a      	lsls	r2, r3, #22
d000097a:	d4ef      	bmi.n	d000095c <__smakebuf_r+0x18>
d000097c:	f023 0303 	bic.w	r3, r3, #3
d0000980:	f043 0302 	orr.w	r3, r3, #2
d0000984:	81a3      	strh	r3, [r4, #12]
d0000986:	e7e3      	b.n	d0000950 <__smakebuf_r+0xc>
d0000988:	4b0d      	ldr	r3, [pc, #52]	; (d00009c0 <__smakebuf_r+0x7c>)
d000098a:	62b3      	str	r3, [r6, #40]	; 0x28
d000098c:	89a3      	ldrh	r3, [r4, #12]
d000098e:	6020      	str	r0, [r4, #0]
d0000990:	f043 0380 	orr.w	r3, r3, #128	; 0x80
d0000994:	81a3      	strh	r3, [r4, #12]
d0000996:	9b00      	ldr	r3, [sp, #0]
d0000998:	6163      	str	r3, [r4, #20]
d000099a:	9b01      	ldr	r3, [sp, #4]
d000099c:	6120      	str	r0, [r4, #16]
d000099e:	b15b      	cbz	r3, d00009b8 <__smakebuf_r+0x74>
d00009a0:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
d00009a4:	4630      	mov	r0, r6
d00009a6:	f000 fc13 	bl	d00011d0 <_isatty_r>
d00009aa:	b128      	cbz	r0, d00009b8 <__smakebuf_r+0x74>
d00009ac:	89a3      	ldrh	r3, [r4, #12]
d00009ae:	f023 0303 	bic.w	r3, r3, #3
d00009b2:	f043 0301 	orr.w	r3, r3, #1
d00009b6:	81a3      	strh	r3, [r4, #12]
d00009b8:	89a0      	ldrh	r0, [r4, #12]
d00009ba:	4305      	orrs	r5, r0
d00009bc:	81a5      	strh	r5, [r4, #12]
d00009be:	e7cd      	b.n	d000095c <__smakebuf_r+0x18>
d00009c0:	d0000755 	.word	0xd0000755

d00009c4 <malloc>:
d00009c4:	4b02      	ldr	r3, [pc, #8]	; (d00009d0 <malloc+0xc>)
d00009c6:	4601      	mov	r1, r0
d00009c8:	6818      	ldr	r0, [r3, #0]
d00009ca:	f000 b853 	b.w	d0000a74 <_malloc_r>
d00009ce:	bf00      	nop
d00009d0:	d00014a8 	.word	0xd00014a8

d00009d4 <_free_r>:
d00009d4:	b537      	push	{r0, r1, r2, r4, r5, lr}
d00009d6:	2900      	cmp	r1, #0
d00009d8:	d048      	beq.n	d0000a6c <_free_r+0x98>
d00009da:	f851 3c04 	ldr.w	r3, [r1, #-4]
d00009de:	9001      	str	r0, [sp, #4]
d00009e0:	2b00      	cmp	r3, #0
d00009e2:	f1a1 0404 	sub.w	r4, r1, #4
d00009e6:	bfb8      	it	lt
d00009e8:	18e4      	addlt	r4, r4, r3
d00009ea:	f000 fc69 	bl	d00012c0 <__malloc_lock>
d00009ee:	4a20      	ldr	r2, [pc, #128]	; (d0000a70 <_free_r+0x9c>)
d00009f0:	9801      	ldr	r0, [sp, #4]
d00009f2:	6813      	ldr	r3, [r2, #0]
d00009f4:	4615      	mov	r5, r2
d00009f6:	b933      	cbnz	r3, d0000a06 <_free_r+0x32>
d00009f8:	6063      	str	r3, [r4, #4]
d00009fa:	6014      	str	r4, [r2, #0]
d00009fc:	b003      	add	sp, #12
d00009fe:	e8bd 4030 	ldmia.w	sp!, {r4, r5, lr}
d0000a02:	f000 bc63 	b.w	d00012cc <__malloc_unlock>
d0000a06:	42a3      	cmp	r3, r4
d0000a08:	d90b      	bls.n	d0000a22 <_free_r+0x4e>
d0000a0a:	6821      	ldr	r1, [r4, #0]
d0000a0c:	1862      	adds	r2, r4, r1
d0000a0e:	4293      	cmp	r3, r2
d0000a10:	bf04      	itt	eq
d0000a12:	681a      	ldreq	r2, [r3, #0]
d0000a14:	685b      	ldreq	r3, [r3, #4]
d0000a16:	6063      	str	r3, [r4, #4]
d0000a18:	bf04      	itt	eq
d0000a1a:	1852      	addeq	r2, r2, r1
d0000a1c:	6022      	streq	r2, [r4, #0]
d0000a1e:	602c      	str	r4, [r5, #0]
d0000a20:	e7ec      	b.n	d00009fc <_free_r+0x28>
d0000a22:	461a      	mov	r2, r3
d0000a24:	685b      	ldr	r3, [r3, #4]
d0000a26:	b10b      	cbz	r3, d0000a2c <_free_r+0x58>
d0000a28:	42a3      	cmp	r3, r4
d0000a2a:	d9fa      	bls.n	d0000a22 <_free_r+0x4e>
d0000a2c:	6811      	ldr	r1, [r2, #0]
d0000a2e:	1855      	adds	r5, r2, r1
d0000a30:	42a5      	cmp	r5, r4
d0000a32:	d10b      	bne.n	d0000a4c <_free_r+0x78>
d0000a34:	6824      	ldr	r4, [r4, #0]
d0000a36:	4421      	add	r1, r4
d0000a38:	1854      	adds	r4, r2, r1
d0000a3a:	42a3      	cmp	r3, r4
d0000a3c:	6011      	str	r1, [r2, #0]
d0000a3e:	d1dd      	bne.n	d00009fc <_free_r+0x28>
d0000a40:	681c      	ldr	r4, [r3, #0]
d0000a42:	685b      	ldr	r3, [r3, #4]
d0000a44:	6053      	str	r3, [r2, #4]
d0000a46:	4421      	add	r1, r4
d0000a48:	6011      	str	r1, [r2, #0]
d0000a4a:	e7d7      	b.n	d00009fc <_free_r+0x28>
d0000a4c:	d902      	bls.n	d0000a54 <_free_r+0x80>
d0000a4e:	230c      	movs	r3, #12
d0000a50:	6003      	str	r3, [r0, #0]
d0000a52:	e7d3      	b.n	d00009fc <_free_r+0x28>
d0000a54:	6825      	ldr	r5, [r4, #0]
d0000a56:	1961      	adds	r1, r4, r5
d0000a58:	428b      	cmp	r3, r1
d0000a5a:	bf04      	itt	eq
d0000a5c:	6819      	ldreq	r1, [r3, #0]
d0000a5e:	685b      	ldreq	r3, [r3, #4]
d0000a60:	6063      	str	r3, [r4, #4]
d0000a62:	bf04      	itt	eq
d0000a64:	1949      	addeq	r1, r1, r5
d0000a66:	6021      	streq	r1, [r4, #0]
d0000a68:	6054      	str	r4, [r2, #4]
d0000a6a:	e7c7      	b.n	d00009fc <_free_r+0x28>
d0000a6c:	b003      	add	sp, #12
d0000a6e:	bd30      	pop	{r4, r5, pc}
d0000a70:	d0001514 	.word	0xd0001514

d0000a74 <_malloc_r>:
d0000a74:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d0000a76:	1ccd      	adds	r5, r1, #3
d0000a78:	f025 0503 	bic.w	r5, r5, #3
d0000a7c:	3508      	adds	r5, #8
d0000a7e:	2d0c      	cmp	r5, #12
d0000a80:	bf38      	it	cc
d0000a82:	250c      	movcc	r5, #12
d0000a84:	2d00      	cmp	r5, #0
d0000a86:	4606      	mov	r6, r0
d0000a88:	db01      	blt.n	d0000a8e <_malloc_r+0x1a>
d0000a8a:	42a9      	cmp	r1, r5
d0000a8c:	d903      	bls.n	d0000a96 <_malloc_r+0x22>
d0000a8e:	230c      	movs	r3, #12
d0000a90:	6033      	str	r3, [r6, #0]
d0000a92:	2000      	movs	r0, #0
d0000a94:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d0000a96:	f000 fc13 	bl	d00012c0 <__malloc_lock>
d0000a9a:	4921      	ldr	r1, [pc, #132]	; (d0000b20 <_malloc_r+0xac>)
d0000a9c:	680a      	ldr	r2, [r1, #0]
d0000a9e:	4614      	mov	r4, r2
d0000aa0:	b99c      	cbnz	r4, d0000aca <_malloc_r+0x56>
d0000aa2:	4f20      	ldr	r7, [pc, #128]	; (d0000b24 <_malloc_r+0xb0>)
d0000aa4:	683b      	ldr	r3, [r7, #0]
d0000aa6:	b923      	cbnz	r3, d0000ab2 <_malloc_r+0x3e>
d0000aa8:	4621      	mov	r1, r4
d0000aaa:	4630      	mov	r0, r6
d0000aac:	f7ff fb0a 	bl	d00000c4 <_sbrk_r>
d0000ab0:	6038      	str	r0, [r7, #0]
d0000ab2:	4629      	mov	r1, r5
d0000ab4:	4630      	mov	r0, r6
d0000ab6:	f7ff fb05 	bl	d00000c4 <_sbrk_r>
d0000aba:	1c43      	adds	r3, r0, #1
d0000abc:	d123      	bne.n	d0000b06 <_malloc_r+0x92>
d0000abe:	230c      	movs	r3, #12
d0000ac0:	6033      	str	r3, [r6, #0]
d0000ac2:	4630      	mov	r0, r6
d0000ac4:	f000 fc02 	bl	d00012cc <__malloc_unlock>
d0000ac8:	e7e3      	b.n	d0000a92 <_malloc_r+0x1e>
d0000aca:	6823      	ldr	r3, [r4, #0]
d0000acc:	1b5b      	subs	r3, r3, r5
d0000ace:	d417      	bmi.n	d0000b00 <_malloc_r+0x8c>
d0000ad0:	2b0b      	cmp	r3, #11
d0000ad2:	d903      	bls.n	d0000adc <_malloc_r+0x68>
d0000ad4:	6023      	str	r3, [r4, #0]
d0000ad6:	441c      	add	r4, r3
d0000ad8:	6025      	str	r5, [r4, #0]
d0000ada:	e004      	b.n	d0000ae6 <_malloc_r+0x72>
d0000adc:	6863      	ldr	r3, [r4, #4]
d0000ade:	42a2      	cmp	r2, r4
d0000ae0:	bf0c      	ite	eq
d0000ae2:	600b      	streq	r3, [r1, #0]
d0000ae4:	6053      	strne	r3, [r2, #4]
d0000ae6:	4630      	mov	r0, r6
d0000ae8:	f000 fbf0 	bl	d00012cc <__malloc_unlock>
d0000aec:	f104 000b 	add.w	r0, r4, #11
d0000af0:	1d23      	adds	r3, r4, #4
d0000af2:	f020 0007 	bic.w	r0, r0, #7
d0000af6:	1ac2      	subs	r2, r0, r3
d0000af8:	d0cc      	beq.n	d0000a94 <_malloc_r+0x20>
d0000afa:	1a1b      	subs	r3, r3, r0
d0000afc:	50a3      	str	r3, [r4, r2]
d0000afe:	e7c9      	b.n	d0000a94 <_malloc_r+0x20>
d0000b00:	4622      	mov	r2, r4
d0000b02:	6864      	ldr	r4, [r4, #4]
d0000b04:	e7cc      	b.n	d0000aa0 <_malloc_r+0x2c>
d0000b06:	1cc4      	adds	r4, r0, #3
d0000b08:	f024 0403 	bic.w	r4, r4, #3
d0000b0c:	42a0      	cmp	r0, r4
d0000b0e:	d0e3      	beq.n	d0000ad8 <_malloc_r+0x64>
d0000b10:	1a21      	subs	r1, r4, r0
d0000b12:	4630      	mov	r0, r6
d0000b14:	f7ff fad6 	bl	d00000c4 <_sbrk_r>
d0000b18:	3001      	adds	r0, #1
d0000b1a:	d1dd      	bne.n	d0000ad8 <_malloc_r+0x64>
d0000b1c:	e7cf      	b.n	d0000abe <_malloc_r+0x4a>
d0000b1e:	bf00      	nop
d0000b20:	d0001514 	.word	0xd0001514
d0000b24:	d0001518 	.word	0xd0001518

d0000b28 <__sfputc_r>:
d0000b28:	6893      	ldr	r3, [r2, #8]
d0000b2a:	3b01      	subs	r3, #1
d0000b2c:	2b00      	cmp	r3, #0
d0000b2e:	b410      	push	{r4}
d0000b30:	6093      	str	r3, [r2, #8]
d0000b32:	da08      	bge.n	d0000b46 <__sfputc_r+0x1e>
d0000b34:	6994      	ldr	r4, [r2, #24]
d0000b36:	42a3      	cmp	r3, r4
d0000b38:	db01      	blt.n	d0000b3e <__sfputc_r+0x16>
d0000b3a:	290a      	cmp	r1, #10
d0000b3c:	d103      	bne.n	d0000b46 <__sfputc_r+0x1e>
d0000b3e:	f85d 4b04 	ldr.w	r4, [sp], #4
d0000b42:	f7ff bc61 	b.w	d0000408 <__swbuf_r>
d0000b46:	6813      	ldr	r3, [r2, #0]
d0000b48:	1c58      	adds	r0, r3, #1
d0000b4a:	6010      	str	r0, [r2, #0]
d0000b4c:	7019      	strb	r1, [r3, #0]
d0000b4e:	4608      	mov	r0, r1
d0000b50:	f85d 4b04 	ldr.w	r4, [sp], #4
d0000b54:	4770      	bx	lr

d0000b56 <__sfputs_r>:
d0000b56:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d0000b58:	4606      	mov	r6, r0
d0000b5a:	460f      	mov	r7, r1
d0000b5c:	4614      	mov	r4, r2
d0000b5e:	18d5      	adds	r5, r2, r3
d0000b60:	42ac      	cmp	r4, r5
d0000b62:	d101      	bne.n	d0000b68 <__sfputs_r+0x12>
d0000b64:	2000      	movs	r0, #0
d0000b66:	e007      	b.n	d0000b78 <__sfputs_r+0x22>
d0000b68:	f814 1b01 	ldrb.w	r1, [r4], #1
d0000b6c:	463a      	mov	r2, r7
d0000b6e:	4630      	mov	r0, r6
d0000b70:	f7ff ffda 	bl	d0000b28 <__sfputc_r>
d0000b74:	1c43      	adds	r3, r0, #1
d0000b76:	d1f3      	bne.n	d0000b60 <__sfputs_r+0xa>
d0000b78:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
	...

d0000b7c <_vfiprintf_r>:
d0000b7c:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0000b80:	460d      	mov	r5, r1
d0000b82:	b09d      	sub	sp, #116	; 0x74
d0000b84:	4614      	mov	r4, r2
d0000b86:	4698      	mov	r8, r3
d0000b88:	4606      	mov	r6, r0
d0000b8a:	b118      	cbz	r0, d0000b94 <_vfiprintf_r+0x18>
d0000b8c:	6983      	ldr	r3, [r0, #24]
d0000b8e:	b90b      	cbnz	r3, d0000b94 <_vfiprintf_r+0x18>
d0000b90:	f7ff fe14 	bl	d00007bc <__sinit>
d0000b94:	4b89      	ldr	r3, [pc, #548]	; (d0000dbc <_vfiprintf_r+0x240>)
d0000b96:	429d      	cmp	r5, r3
d0000b98:	d11b      	bne.n	d0000bd2 <_vfiprintf_r+0x56>
d0000b9a:	6875      	ldr	r5, [r6, #4]
d0000b9c:	6e6b      	ldr	r3, [r5, #100]	; 0x64
d0000b9e:	07d9      	lsls	r1, r3, #31
d0000ba0:	d405      	bmi.n	d0000bae <_vfiprintf_r+0x32>
d0000ba2:	89ab      	ldrh	r3, [r5, #12]
d0000ba4:	059a      	lsls	r2, r3, #22
d0000ba6:	d402      	bmi.n	d0000bae <_vfiprintf_r+0x32>
d0000ba8:	6da8      	ldr	r0, [r5, #88]	; 0x58
d0000baa:	f7ff fea5 	bl	d00008f8 <__retarget_lock_acquire_recursive>
d0000bae:	89ab      	ldrh	r3, [r5, #12]
d0000bb0:	071b      	lsls	r3, r3, #28
d0000bb2:	d501      	bpl.n	d0000bb8 <_vfiprintf_r+0x3c>
d0000bb4:	692b      	ldr	r3, [r5, #16]
d0000bb6:	b9eb      	cbnz	r3, d0000bf4 <_vfiprintf_r+0x78>
d0000bb8:	4629      	mov	r1, r5
d0000bba:	4630      	mov	r0, r6
d0000bbc:	f7ff fc76 	bl	d00004ac <__swsetup_r>
d0000bc0:	b1c0      	cbz	r0, d0000bf4 <_vfiprintf_r+0x78>
d0000bc2:	6e6b      	ldr	r3, [r5, #100]	; 0x64
d0000bc4:	07dc      	lsls	r4, r3, #31
d0000bc6:	d50e      	bpl.n	d0000be6 <_vfiprintf_r+0x6a>
d0000bc8:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d0000bcc:	b01d      	add	sp, #116	; 0x74
d0000bce:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0000bd2:	4b7b      	ldr	r3, [pc, #492]	; (d0000dc0 <_vfiprintf_r+0x244>)
d0000bd4:	429d      	cmp	r5, r3
d0000bd6:	d101      	bne.n	d0000bdc <_vfiprintf_r+0x60>
d0000bd8:	68b5      	ldr	r5, [r6, #8]
d0000bda:	e7df      	b.n	d0000b9c <_vfiprintf_r+0x20>
d0000bdc:	4b79      	ldr	r3, [pc, #484]	; (d0000dc4 <_vfiprintf_r+0x248>)
d0000bde:	429d      	cmp	r5, r3
d0000be0:	bf08      	it	eq
d0000be2:	68f5      	ldreq	r5, [r6, #12]
d0000be4:	e7da      	b.n	d0000b9c <_vfiprintf_r+0x20>
d0000be6:	89ab      	ldrh	r3, [r5, #12]
d0000be8:	0598      	lsls	r0, r3, #22
d0000bea:	d4ed      	bmi.n	d0000bc8 <_vfiprintf_r+0x4c>
d0000bec:	6da8      	ldr	r0, [r5, #88]	; 0x58
d0000bee:	f7ff fe84 	bl	d00008fa <__retarget_lock_release_recursive>
d0000bf2:	e7e9      	b.n	d0000bc8 <_vfiprintf_r+0x4c>
d0000bf4:	2300      	movs	r3, #0
d0000bf6:	9309      	str	r3, [sp, #36]	; 0x24
d0000bf8:	2320      	movs	r3, #32
d0000bfa:	f88d 3029 	strb.w	r3, [sp, #41]	; 0x29
d0000bfe:	f8cd 800c 	str.w	r8, [sp, #12]
d0000c02:	2330      	movs	r3, #48	; 0x30
d0000c04:	f8df 81c0 	ldr.w	r8, [pc, #448]	; d0000dc8 <_vfiprintf_r+0x24c>
d0000c08:	f88d 302a 	strb.w	r3, [sp, #42]	; 0x2a
d0000c0c:	f04f 0901 	mov.w	r9, #1
d0000c10:	4623      	mov	r3, r4
d0000c12:	469a      	mov	sl, r3
d0000c14:	f813 2b01 	ldrb.w	r2, [r3], #1
d0000c18:	b10a      	cbz	r2, d0000c1e <_vfiprintf_r+0xa2>
d0000c1a:	2a25      	cmp	r2, #37	; 0x25
d0000c1c:	d1f9      	bne.n	d0000c12 <_vfiprintf_r+0x96>
d0000c1e:	ebba 0b04 	subs.w	fp, sl, r4
d0000c22:	d00b      	beq.n	d0000c3c <_vfiprintf_r+0xc0>
d0000c24:	465b      	mov	r3, fp
d0000c26:	4622      	mov	r2, r4
d0000c28:	4629      	mov	r1, r5
d0000c2a:	4630      	mov	r0, r6
d0000c2c:	f7ff ff93 	bl	d0000b56 <__sfputs_r>
d0000c30:	3001      	adds	r0, #1
d0000c32:	f000 80aa 	beq.w	d0000d8a <_vfiprintf_r+0x20e>
d0000c36:	9a09      	ldr	r2, [sp, #36]	; 0x24
d0000c38:	445a      	add	r2, fp
d0000c3a:	9209      	str	r2, [sp, #36]	; 0x24
d0000c3c:	f89a 3000 	ldrb.w	r3, [sl]
d0000c40:	2b00      	cmp	r3, #0
d0000c42:	f000 80a2 	beq.w	d0000d8a <_vfiprintf_r+0x20e>
d0000c46:	2300      	movs	r3, #0
d0000c48:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
d0000c4c:	e9cd 2305 	strd	r2, r3, [sp, #20]
d0000c50:	f10a 0a01 	add.w	sl, sl, #1
d0000c54:	9304      	str	r3, [sp, #16]
d0000c56:	9307      	str	r3, [sp, #28]
d0000c58:	f88d 3053 	strb.w	r3, [sp, #83]	; 0x53
d0000c5c:	931a      	str	r3, [sp, #104]	; 0x68
d0000c5e:	4654      	mov	r4, sl
d0000c60:	2205      	movs	r2, #5
d0000c62:	f814 1b01 	ldrb.w	r1, [r4], #1
d0000c66:	4858      	ldr	r0, [pc, #352]	; (d0000dc8 <_vfiprintf_r+0x24c>)
d0000c68:	f000 fada 	bl	d0001220 <memchr>
d0000c6c:	9a04      	ldr	r2, [sp, #16]
d0000c6e:	b9d8      	cbnz	r0, d0000ca8 <_vfiprintf_r+0x12c>
d0000c70:	06d1      	lsls	r1, r2, #27
d0000c72:	bf44      	itt	mi
d0000c74:	2320      	movmi	r3, #32
d0000c76:	f88d 3053 	strbmi.w	r3, [sp, #83]	; 0x53
d0000c7a:	0713      	lsls	r3, r2, #28
d0000c7c:	bf44      	itt	mi
d0000c7e:	232b      	movmi	r3, #43	; 0x2b
d0000c80:	f88d 3053 	strbmi.w	r3, [sp, #83]	; 0x53
d0000c84:	f89a 3000 	ldrb.w	r3, [sl]
d0000c88:	2b2a      	cmp	r3, #42	; 0x2a
d0000c8a:	d015      	beq.n	d0000cb8 <_vfiprintf_r+0x13c>
d0000c8c:	9a07      	ldr	r2, [sp, #28]
d0000c8e:	4654      	mov	r4, sl
d0000c90:	2000      	movs	r0, #0
d0000c92:	f04f 0c0a 	mov.w	ip, #10
d0000c96:	4621      	mov	r1, r4
d0000c98:	f811 3b01 	ldrb.w	r3, [r1], #1
d0000c9c:	3b30      	subs	r3, #48	; 0x30
d0000c9e:	2b09      	cmp	r3, #9
d0000ca0:	d94e      	bls.n	d0000d40 <_vfiprintf_r+0x1c4>
d0000ca2:	b1b0      	cbz	r0, d0000cd2 <_vfiprintf_r+0x156>
d0000ca4:	9207      	str	r2, [sp, #28]
d0000ca6:	e014      	b.n	d0000cd2 <_vfiprintf_r+0x156>
d0000ca8:	eba0 0308 	sub.w	r3, r0, r8
d0000cac:	fa09 f303 	lsl.w	r3, r9, r3
d0000cb0:	4313      	orrs	r3, r2
d0000cb2:	9304      	str	r3, [sp, #16]
d0000cb4:	46a2      	mov	sl, r4
d0000cb6:	e7d2      	b.n	d0000c5e <_vfiprintf_r+0xe2>
d0000cb8:	9b03      	ldr	r3, [sp, #12]
d0000cba:	1d19      	adds	r1, r3, #4
d0000cbc:	681b      	ldr	r3, [r3, #0]
d0000cbe:	9103      	str	r1, [sp, #12]
d0000cc0:	2b00      	cmp	r3, #0
d0000cc2:	bfbb      	ittet	lt
d0000cc4:	425b      	neglt	r3, r3
d0000cc6:	f042 0202 	orrlt.w	r2, r2, #2
d0000cca:	9307      	strge	r3, [sp, #28]
d0000ccc:	9307      	strlt	r3, [sp, #28]
d0000cce:	bfb8      	it	lt
d0000cd0:	9204      	strlt	r2, [sp, #16]
d0000cd2:	7823      	ldrb	r3, [r4, #0]
d0000cd4:	2b2e      	cmp	r3, #46	; 0x2e
d0000cd6:	d10c      	bne.n	d0000cf2 <_vfiprintf_r+0x176>
d0000cd8:	7863      	ldrb	r3, [r4, #1]
d0000cda:	2b2a      	cmp	r3, #42	; 0x2a
d0000cdc:	d135      	bne.n	d0000d4a <_vfiprintf_r+0x1ce>
d0000cde:	9b03      	ldr	r3, [sp, #12]
d0000ce0:	1d1a      	adds	r2, r3, #4
d0000ce2:	681b      	ldr	r3, [r3, #0]
d0000ce4:	9203      	str	r2, [sp, #12]
d0000ce6:	2b00      	cmp	r3, #0
d0000ce8:	bfb8      	it	lt
d0000cea:	f04f 33ff 	movlt.w	r3, #4294967295	; 0xffffffff
d0000cee:	3402      	adds	r4, #2
d0000cf0:	9305      	str	r3, [sp, #20]
d0000cf2:	f8df a0e4 	ldr.w	sl, [pc, #228]	; d0000dd8 <_vfiprintf_r+0x25c>
d0000cf6:	7821      	ldrb	r1, [r4, #0]
d0000cf8:	2203      	movs	r2, #3
d0000cfa:	4650      	mov	r0, sl
d0000cfc:	f000 fa90 	bl	d0001220 <memchr>
d0000d00:	b140      	cbz	r0, d0000d14 <_vfiprintf_r+0x198>
d0000d02:	2340      	movs	r3, #64	; 0x40
d0000d04:	eba0 000a 	sub.w	r0, r0, sl
d0000d08:	fa03 f000 	lsl.w	r0, r3, r0
d0000d0c:	9b04      	ldr	r3, [sp, #16]
d0000d0e:	4303      	orrs	r3, r0
d0000d10:	3401      	adds	r4, #1
d0000d12:	9304      	str	r3, [sp, #16]
d0000d14:	f814 1b01 	ldrb.w	r1, [r4], #1
d0000d18:	482c      	ldr	r0, [pc, #176]	; (d0000dcc <_vfiprintf_r+0x250>)
d0000d1a:	f88d 1028 	strb.w	r1, [sp, #40]	; 0x28
d0000d1e:	2206      	movs	r2, #6
d0000d20:	f000 fa7e 	bl	d0001220 <memchr>
d0000d24:	2800      	cmp	r0, #0
d0000d26:	d03f      	beq.n	d0000da8 <_vfiprintf_r+0x22c>
d0000d28:	4b29      	ldr	r3, [pc, #164]	; (d0000dd0 <_vfiprintf_r+0x254>)
d0000d2a:	bb1b      	cbnz	r3, d0000d74 <_vfiprintf_r+0x1f8>
d0000d2c:	9b03      	ldr	r3, [sp, #12]
d0000d2e:	3307      	adds	r3, #7
d0000d30:	f023 0307 	bic.w	r3, r3, #7
d0000d34:	3308      	adds	r3, #8
d0000d36:	9303      	str	r3, [sp, #12]
d0000d38:	9b09      	ldr	r3, [sp, #36]	; 0x24
d0000d3a:	443b      	add	r3, r7
d0000d3c:	9309      	str	r3, [sp, #36]	; 0x24
d0000d3e:	e767      	b.n	d0000c10 <_vfiprintf_r+0x94>
d0000d40:	fb0c 3202 	mla	r2, ip, r2, r3
d0000d44:	460c      	mov	r4, r1
d0000d46:	2001      	movs	r0, #1
d0000d48:	e7a5      	b.n	d0000c96 <_vfiprintf_r+0x11a>
d0000d4a:	2300      	movs	r3, #0
d0000d4c:	3401      	adds	r4, #1
d0000d4e:	9305      	str	r3, [sp, #20]
d0000d50:	4619      	mov	r1, r3
d0000d52:	f04f 0c0a 	mov.w	ip, #10
d0000d56:	4620      	mov	r0, r4
d0000d58:	f810 2b01 	ldrb.w	r2, [r0], #1
d0000d5c:	3a30      	subs	r2, #48	; 0x30
d0000d5e:	2a09      	cmp	r2, #9
d0000d60:	d903      	bls.n	d0000d6a <_vfiprintf_r+0x1ee>
d0000d62:	2b00      	cmp	r3, #0
d0000d64:	d0c5      	beq.n	d0000cf2 <_vfiprintf_r+0x176>
d0000d66:	9105      	str	r1, [sp, #20]
d0000d68:	e7c3      	b.n	d0000cf2 <_vfiprintf_r+0x176>
d0000d6a:	fb0c 2101 	mla	r1, ip, r1, r2
d0000d6e:	4604      	mov	r4, r0
d0000d70:	2301      	movs	r3, #1
d0000d72:	e7f0      	b.n	d0000d56 <_vfiprintf_r+0x1da>
d0000d74:	ab03      	add	r3, sp, #12
d0000d76:	9300      	str	r3, [sp, #0]
d0000d78:	462a      	mov	r2, r5
d0000d7a:	4b16      	ldr	r3, [pc, #88]	; (d0000dd4 <_vfiprintf_r+0x258>)
d0000d7c:	a904      	add	r1, sp, #16
d0000d7e:	4630      	mov	r0, r6
d0000d80:	f3af 8000 	nop.w
d0000d84:	4607      	mov	r7, r0
d0000d86:	1c78      	adds	r0, r7, #1
d0000d88:	d1d6      	bne.n	d0000d38 <_vfiprintf_r+0x1bc>
d0000d8a:	6e6b      	ldr	r3, [r5, #100]	; 0x64
d0000d8c:	07d9      	lsls	r1, r3, #31
d0000d8e:	d405      	bmi.n	d0000d9c <_vfiprintf_r+0x220>
d0000d90:	89ab      	ldrh	r3, [r5, #12]
d0000d92:	059a      	lsls	r2, r3, #22
d0000d94:	d402      	bmi.n	d0000d9c <_vfiprintf_r+0x220>
d0000d96:	6da8      	ldr	r0, [r5, #88]	; 0x58
d0000d98:	f7ff fdaf 	bl	d00008fa <__retarget_lock_release_recursive>
d0000d9c:	89ab      	ldrh	r3, [r5, #12]
d0000d9e:	065b      	lsls	r3, r3, #25
d0000da0:	f53f af12 	bmi.w	d0000bc8 <_vfiprintf_r+0x4c>
d0000da4:	9809      	ldr	r0, [sp, #36]	; 0x24
d0000da6:	e711      	b.n	d0000bcc <_vfiprintf_r+0x50>
d0000da8:	ab03      	add	r3, sp, #12
d0000daa:	9300      	str	r3, [sp, #0]
d0000dac:	462a      	mov	r2, r5
d0000dae:	4b09      	ldr	r3, [pc, #36]	; (d0000dd4 <_vfiprintf_r+0x258>)
d0000db0:	a904      	add	r1, sp, #16
d0000db2:	4630      	mov	r0, r6
d0000db4:	f000 f880 	bl	d0000eb8 <_printf_i>
d0000db8:	e7e4      	b.n	d0000d84 <_vfiprintf_r+0x208>
d0000dba:	bf00      	nop
d0000dbc:	d000142c 	.word	0xd000142c
d0000dc0:	d000144c 	.word	0xd000144c
d0000dc4:	d000140c 	.word	0xd000140c
d0000dc8:	d000146c 	.word	0xd000146c
d0000dcc:	d0001476 	.word	0xd0001476
d0000dd0:	00000000 	.word	0x00000000
d0000dd4:	d0000b57 	.word	0xd0000b57
d0000dd8:	d0001472 	.word	0xd0001472

d0000ddc <_printf_common>:
d0000ddc:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
d0000de0:	4616      	mov	r6, r2
d0000de2:	4699      	mov	r9, r3
d0000de4:	688a      	ldr	r2, [r1, #8]
d0000de6:	690b      	ldr	r3, [r1, #16]
d0000de8:	f8dd 8020 	ldr.w	r8, [sp, #32]
d0000dec:	4293      	cmp	r3, r2
d0000dee:	bfb8      	it	lt
d0000df0:	4613      	movlt	r3, r2
d0000df2:	6033      	str	r3, [r6, #0]
d0000df4:	f891 2043 	ldrb.w	r2, [r1, #67]	; 0x43
d0000df8:	4607      	mov	r7, r0
d0000dfa:	460c      	mov	r4, r1
d0000dfc:	b10a      	cbz	r2, d0000e02 <_printf_common+0x26>
d0000dfe:	3301      	adds	r3, #1
d0000e00:	6033      	str	r3, [r6, #0]
d0000e02:	6823      	ldr	r3, [r4, #0]
d0000e04:	0699      	lsls	r1, r3, #26
d0000e06:	bf42      	ittt	mi
d0000e08:	6833      	ldrmi	r3, [r6, #0]
d0000e0a:	3302      	addmi	r3, #2
d0000e0c:	6033      	strmi	r3, [r6, #0]
d0000e0e:	6825      	ldr	r5, [r4, #0]
d0000e10:	f015 0506 	ands.w	r5, r5, #6
d0000e14:	d106      	bne.n	d0000e24 <_printf_common+0x48>
d0000e16:	f104 0a19 	add.w	sl, r4, #25
d0000e1a:	68e3      	ldr	r3, [r4, #12]
d0000e1c:	6832      	ldr	r2, [r6, #0]
d0000e1e:	1a9b      	subs	r3, r3, r2
d0000e20:	42ab      	cmp	r3, r5
d0000e22:	dc26      	bgt.n	d0000e72 <_printf_common+0x96>
d0000e24:	f894 2043 	ldrb.w	r2, [r4, #67]	; 0x43
d0000e28:	1e13      	subs	r3, r2, #0
d0000e2a:	6822      	ldr	r2, [r4, #0]
d0000e2c:	bf18      	it	ne
d0000e2e:	2301      	movne	r3, #1
d0000e30:	0692      	lsls	r2, r2, #26
d0000e32:	d42b      	bmi.n	d0000e8c <_printf_common+0xb0>
d0000e34:	f104 0243 	add.w	r2, r4, #67	; 0x43
d0000e38:	4649      	mov	r1, r9
d0000e3a:	4638      	mov	r0, r7
d0000e3c:	47c0      	blx	r8
d0000e3e:	3001      	adds	r0, #1
d0000e40:	d01e      	beq.n	d0000e80 <_printf_common+0xa4>
d0000e42:	6823      	ldr	r3, [r4, #0]
d0000e44:	68e5      	ldr	r5, [r4, #12]
d0000e46:	6832      	ldr	r2, [r6, #0]
d0000e48:	f003 0306 	and.w	r3, r3, #6
d0000e4c:	2b04      	cmp	r3, #4
d0000e4e:	bf08      	it	eq
d0000e50:	1aad      	subeq	r5, r5, r2
d0000e52:	68a3      	ldr	r3, [r4, #8]
d0000e54:	6922      	ldr	r2, [r4, #16]
d0000e56:	bf0c      	ite	eq
d0000e58:	ea25 75e5 	biceq.w	r5, r5, r5, asr #31
d0000e5c:	2500      	movne	r5, #0
d0000e5e:	4293      	cmp	r3, r2
d0000e60:	bfc4      	itt	gt
d0000e62:	1a9b      	subgt	r3, r3, r2
d0000e64:	18ed      	addgt	r5, r5, r3
d0000e66:	2600      	movs	r6, #0
d0000e68:	341a      	adds	r4, #26
d0000e6a:	42b5      	cmp	r5, r6
d0000e6c:	d11a      	bne.n	d0000ea4 <_printf_common+0xc8>
d0000e6e:	2000      	movs	r0, #0
d0000e70:	e008      	b.n	d0000e84 <_printf_common+0xa8>
d0000e72:	2301      	movs	r3, #1
d0000e74:	4652      	mov	r2, sl
d0000e76:	4649      	mov	r1, r9
d0000e78:	4638      	mov	r0, r7
d0000e7a:	47c0      	blx	r8
d0000e7c:	3001      	adds	r0, #1
d0000e7e:	d103      	bne.n	d0000e88 <_printf_common+0xac>
d0000e80:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d0000e84:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
d0000e88:	3501      	adds	r5, #1
d0000e8a:	e7c6      	b.n	d0000e1a <_printf_common+0x3e>
d0000e8c:	18e1      	adds	r1, r4, r3
d0000e8e:	1c5a      	adds	r2, r3, #1
d0000e90:	2030      	movs	r0, #48	; 0x30
d0000e92:	f881 0043 	strb.w	r0, [r1, #67]	; 0x43
d0000e96:	4422      	add	r2, r4
d0000e98:	f894 1045 	ldrb.w	r1, [r4, #69]	; 0x45
d0000e9c:	f882 1043 	strb.w	r1, [r2, #67]	; 0x43
d0000ea0:	3302      	adds	r3, #2
d0000ea2:	e7c7      	b.n	d0000e34 <_printf_common+0x58>
d0000ea4:	2301      	movs	r3, #1
d0000ea6:	4622      	mov	r2, r4
d0000ea8:	4649      	mov	r1, r9
d0000eaa:	4638      	mov	r0, r7
d0000eac:	47c0      	blx	r8
d0000eae:	3001      	adds	r0, #1
d0000eb0:	d0e6      	beq.n	d0000e80 <_printf_common+0xa4>
d0000eb2:	3601      	adds	r6, #1
d0000eb4:	e7d9      	b.n	d0000e6a <_printf_common+0x8e>
	...

d0000eb8 <_printf_i>:
d0000eb8:	e92d 47ff 	stmdb	sp!, {r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, lr}
d0000ebc:	460c      	mov	r4, r1
d0000ebe:	4691      	mov	r9, r2
d0000ec0:	7e27      	ldrb	r7, [r4, #24]
d0000ec2:	990c      	ldr	r1, [sp, #48]	; 0x30
d0000ec4:	2f78      	cmp	r7, #120	; 0x78
d0000ec6:	4680      	mov	r8, r0
d0000ec8:	469a      	mov	sl, r3
d0000eca:	f104 0243 	add.w	r2, r4, #67	; 0x43
d0000ece:	d807      	bhi.n	d0000ee0 <_printf_i+0x28>
d0000ed0:	2f62      	cmp	r7, #98	; 0x62
d0000ed2:	d80a      	bhi.n	d0000eea <_printf_i+0x32>
d0000ed4:	2f00      	cmp	r7, #0
d0000ed6:	f000 80d8 	beq.w	d000108a <_printf_i+0x1d2>
d0000eda:	2f58      	cmp	r7, #88	; 0x58
d0000edc:	f000 80a3 	beq.w	d0001026 <_printf_i+0x16e>
d0000ee0:	f104 0642 	add.w	r6, r4, #66	; 0x42
d0000ee4:	f884 7042 	strb.w	r7, [r4, #66]	; 0x42
d0000ee8:	e03a      	b.n	d0000f60 <_printf_i+0xa8>
d0000eea:	f1a7 0363 	sub.w	r3, r7, #99	; 0x63
d0000eee:	2b15      	cmp	r3, #21
d0000ef0:	d8f6      	bhi.n	d0000ee0 <_printf_i+0x28>
d0000ef2:	a001      	add	r0, pc, #4	; (adr r0, d0000ef8 <_printf_i+0x40>)
d0000ef4:	f850 f023 	ldr.w	pc, [r0, r3, lsl #2]
d0000ef8:	d0000f51 	.word	0xd0000f51
d0000efc:	d0000f65 	.word	0xd0000f65
d0000f00:	d0000ee1 	.word	0xd0000ee1
d0000f04:	d0000ee1 	.word	0xd0000ee1
d0000f08:	d0000ee1 	.word	0xd0000ee1
d0000f0c:	d0000ee1 	.word	0xd0000ee1
d0000f10:	d0000f65 	.word	0xd0000f65
d0000f14:	d0000ee1 	.word	0xd0000ee1
d0000f18:	d0000ee1 	.word	0xd0000ee1
d0000f1c:	d0000ee1 	.word	0xd0000ee1
d0000f20:	d0000ee1 	.word	0xd0000ee1
d0000f24:	d0001071 	.word	0xd0001071
d0000f28:	d0000f95 	.word	0xd0000f95
d0000f2c:	d0001053 	.word	0xd0001053
d0000f30:	d0000ee1 	.word	0xd0000ee1
d0000f34:	d0000ee1 	.word	0xd0000ee1
d0000f38:	d0001093 	.word	0xd0001093
d0000f3c:	d0000ee1 	.word	0xd0000ee1
d0000f40:	d0000f95 	.word	0xd0000f95
d0000f44:	d0000ee1 	.word	0xd0000ee1
d0000f48:	d0000ee1 	.word	0xd0000ee1
d0000f4c:	d000105b 	.word	0xd000105b
d0000f50:	680b      	ldr	r3, [r1, #0]
d0000f52:	1d1a      	adds	r2, r3, #4
d0000f54:	681b      	ldr	r3, [r3, #0]
d0000f56:	600a      	str	r2, [r1, #0]
d0000f58:	f104 0642 	add.w	r6, r4, #66	; 0x42
d0000f5c:	f884 3042 	strb.w	r3, [r4, #66]	; 0x42
d0000f60:	2301      	movs	r3, #1
d0000f62:	e0a3      	b.n	d00010ac <_printf_i+0x1f4>
d0000f64:	6825      	ldr	r5, [r4, #0]
d0000f66:	6808      	ldr	r0, [r1, #0]
d0000f68:	062e      	lsls	r6, r5, #24
d0000f6a:	f100 0304 	add.w	r3, r0, #4
d0000f6e:	d50a      	bpl.n	d0000f86 <_printf_i+0xce>
d0000f70:	6805      	ldr	r5, [r0, #0]
d0000f72:	600b      	str	r3, [r1, #0]
d0000f74:	2d00      	cmp	r5, #0
d0000f76:	da03      	bge.n	d0000f80 <_printf_i+0xc8>
d0000f78:	232d      	movs	r3, #45	; 0x2d
d0000f7a:	426d      	negs	r5, r5
d0000f7c:	f884 3043 	strb.w	r3, [r4, #67]	; 0x43
d0000f80:	485e      	ldr	r0, [pc, #376]	; (d00010fc <_printf_i+0x244>)
d0000f82:	230a      	movs	r3, #10
d0000f84:	e019      	b.n	d0000fba <_printf_i+0x102>
d0000f86:	f015 0f40 	tst.w	r5, #64	; 0x40
d0000f8a:	6805      	ldr	r5, [r0, #0]
d0000f8c:	600b      	str	r3, [r1, #0]
d0000f8e:	bf18      	it	ne
d0000f90:	b22d      	sxthne	r5, r5
d0000f92:	e7ef      	b.n	d0000f74 <_printf_i+0xbc>
d0000f94:	680b      	ldr	r3, [r1, #0]
d0000f96:	6825      	ldr	r5, [r4, #0]
d0000f98:	1d18      	adds	r0, r3, #4
d0000f9a:	6008      	str	r0, [r1, #0]
d0000f9c:	0628      	lsls	r0, r5, #24
d0000f9e:	d501      	bpl.n	d0000fa4 <_printf_i+0xec>
d0000fa0:	681d      	ldr	r5, [r3, #0]
d0000fa2:	e002      	b.n	d0000faa <_printf_i+0xf2>
d0000fa4:	0669      	lsls	r1, r5, #25
d0000fa6:	d5fb      	bpl.n	d0000fa0 <_printf_i+0xe8>
d0000fa8:	881d      	ldrh	r5, [r3, #0]
d0000faa:	4854      	ldr	r0, [pc, #336]	; (d00010fc <_printf_i+0x244>)
d0000fac:	2f6f      	cmp	r7, #111	; 0x6f
d0000fae:	bf0c      	ite	eq
d0000fb0:	2308      	moveq	r3, #8
d0000fb2:	230a      	movne	r3, #10
d0000fb4:	2100      	movs	r1, #0
d0000fb6:	f884 1043 	strb.w	r1, [r4, #67]	; 0x43
d0000fba:	6866      	ldr	r6, [r4, #4]
d0000fbc:	60a6      	str	r6, [r4, #8]
d0000fbe:	2e00      	cmp	r6, #0
d0000fc0:	bfa2      	ittt	ge
d0000fc2:	6821      	ldrge	r1, [r4, #0]
d0000fc4:	f021 0104 	bicge.w	r1, r1, #4
d0000fc8:	6021      	strge	r1, [r4, #0]
d0000fca:	b90d      	cbnz	r5, d0000fd0 <_printf_i+0x118>
d0000fcc:	2e00      	cmp	r6, #0
d0000fce:	d04d      	beq.n	d000106c <_printf_i+0x1b4>
d0000fd0:	4616      	mov	r6, r2
d0000fd2:	fbb5 f1f3 	udiv	r1, r5, r3
d0000fd6:	fb03 5711 	mls	r7, r3, r1, r5
d0000fda:	5dc7      	ldrb	r7, [r0, r7]
d0000fdc:	f806 7d01 	strb.w	r7, [r6, #-1]!
d0000fe0:	462f      	mov	r7, r5
d0000fe2:	42bb      	cmp	r3, r7
d0000fe4:	460d      	mov	r5, r1
d0000fe6:	d9f4      	bls.n	d0000fd2 <_printf_i+0x11a>
d0000fe8:	2b08      	cmp	r3, #8
d0000fea:	d10b      	bne.n	d0001004 <_printf_i+0x14c>
d0000fec:	6823      	ldr	r3, [r4, #0]
d0000fee:	07df      	lsls	r7, r3, #31
d0000ff0:	d508      	bpl.n	d0001004 <_printf_i+0x14c>
d0000ff2:	6923      	ldr	r3, [r4, #16]
d0000ff4:	6861      	ldr	r1, [r4, #4]
d0000ff6:	4299      	cmp	r1, r3
d0000ff8:	bfde      	ittt	le
d0000ffa:	2330      	movle	r3, #48	; 0x30
d0000ffc:	f806 3c01 	strble.w	r3, [r6, #-1]
d0001000:	f106 36ff 	addle.w	r6, r6, #4294967295	; 0xffffffff
d0001004:	1b92      	subs	r2, r2, r6
d0001006:	6122      	str	r2, [r4, #16]
d0001008:	f8cd a000 	str.w	sl, [sp]
d000100c:	464b      	mov	r3, r9
d000100e:	aa03      	add	r2, sp, #12
d0001010:	4621      	mov	r1, r4
d0001012:	4640      	mov	r0, r8
d0001014:	f7ff fee2 	bl	d0000ddc <_printf_common>
d0001018:	3001      	adds	r0, #1
d000101a:	d14c      	bne.n	d00010b6 <_printf_i+0x1fe>
d000101c:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d0001020:	b004      	add	sp, #16
d0001022:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
d0001026:	4835      	ldr	r0, [pc, #212]	; (d00010fc <_printf_i+0x244>)
d0001028:	f884 7045 	strb.w	r7, [r4, #69]	; 0x45
d000102c:	6823      	ldr	r3, [r4, #0]
d000102e:	680e      	ldr	r6, [r1, #0]
d0001030:	061f      	lsls	r7, r3, #24
d0001032:	f856 5b04 	ldr.w	r5, [r6], #4
d0001036:	600e      	str	r6, [r1, #0]
d0001038:	d514      	bpl.n	d0001064 <_printf_i+0x1ac>
d000103a:	07d9      	lsls	r1, r3, #31
d000103c:	bf44      	itt	mi
d000103e:	f043 0320 	orrmi.w	r3, r3, #32
d0001042:	6023      	strmi	r3, [r4, #0]
d0001044:	b91d      	cbnz	r5, d000104e <_printf_i+0x196>
d0001046:	6823      	ldr	r3, [r4, #0]
d0001048:	f023 0320 	bic.w	r3, r3, #32
d000104c:	6023      	str	r3, [r4, #0]
d000104e:	2310      	movs	r3, #16
d0001050:	e7b0      	b.n	d0000fb4 <_printf_i+0xfc>
d0001052:	6823      	ldr	r3, [r4, #0]
d0001054:	f043 0320 	orr.w	r3, r3, #32
d0001058:	6023      	str	r3, [r4, #0]
d000105a:	2378      	movs	r3, #120	; 0x78
d000105c:	4828      	ldr	r0, [pc, #160]	; (d0001100 <_printf_i+0x248>)
d000105e:	f884 3045 	strb.w	r3, [r4, #69]	; 0x45
d0001062:	e7e3      	b.n	d000102c <_printf_i+0x174>
d0001064:	065e      	lsls	r6, r3, #25
d0001066:	bf48      	it	mi
d0001068:	b2ad      	uxthmi	r5, r5
d000106a:	e7e6      	b.n	d000103a <_printf_i+0x182>
d000106c:	4616      	mov	r6, r2
d000106e:	e7bb      	b.n	d0000fe8 <_printf_i+0x130>
d0001070:	680b      	ldr	r3, [r1, #0]
d0001072:	6826      	ldr	r6, [r4, #0]
d0001074:	6960      	ldr	r0, [r4, #20]
d0001076:	1d1d      	adds	r5, r3, #4
d0001078:	600d      	str	r5, [r1, #0]
d000107a:	0635      	lsls	r5, r6, #24
d000107c:	681b      	ldr	r3, [r3, #0]
d000107e:	d501      	bpl.n	d0001084 <_printf_i+0x1cc>
d0001080:	6018      	str	r0, [r3, #0]
d0001082:	e002      	b.n	d000108a <_printf_i+0x1d2>
d0001084:	0671      	lsls	r1, r6, #25
d0001086:	d5fb      	bpl.n	d0001080 <_printf_i+0x1c8>
d0001088:	8018      	strh	r0, [r3, #0]
d000108a:	2300      	movs	r3, #0
d000108c:	6123      	str	r3, [r4, #16]
d000108e:	4616      	mov	r6, r2
d0001090:	e7ba      	b.n	d0001008 <_printf_i+0x150>
d0001092:	680b      	ldr	r3, [r1, #0]
d0001094:	1d1a      	adds	r2, r3, #4
d0001096:	600a      	str	r2, [r1, #0]
d0001098:	681e      	ldr	r6, [r3, #0]
d000109a:	6862      	ldr	r2, [r4, #4]
d000109c:	2100      	movs	r1, #0
d000109e:	4630      	mov	r0, r6
d00010a0:	f000 f8be 	bl	d0001220 <memchr>
d00010a4:	b108      	cbz	r0, d00010aa <_printf_i+0x1f2>
d00010a6:	1b80      	subs	r0, r0, r6
d00010a8:	6060      	str	r0, [r4, #4]
d00010aa:	6863      	ldr	r3, [r4, #4]
d00010ac:	6123      	str	r3, [r4, #16]
d00010ae:	2300      	movs	r3, #0
d00010b0:	f884 3043 	strb.w	r3, [r4, #67]	; 0x43
d00010b4:	e7a8      	b.n	d0001008 <_printf_i+0x150>
d00010b6:	6923      	ldr	r3, [r4, #16]
d00010b8:	4632      	mov	r2, r6
d00010ba:	4649      	mov	r1, r9
d00010bc:	4640      	mov	r0, r8
d00010be:	47d0      	blx	sl
d00010c0:	3001      	adds	r0, #1
d00010c2:	d0ab      	beq.n	d000101c <_printf_i+0x164>
d00010c4:	6823      	ldr	r3, [r4, #0]
d00010c6:	079b      	lsls	r3, r3, #30
d00010c8:	d413      	bmi.n	d00010f2 <_printf_i+0x23a>
d00010ca:	68e0      	ldr	r0, [r4, #12]
d00010cc:	9b03      	ldr	r3, [sp, #12]
d00010ce:	4298      	cmp	r0, r3
d00010d0:	bfb8      	it	lt
d00010d2:	4618      	movlt	r0, r3
d00010d4:	e7a4      	b.n	d0001020 <_printf_i+0x168>
d00010d6:	2301      	movs	r3, #1
d00010d8:	4632      	mov	r2, r6
d00010da:	4649      	mov	r1, r9
d00010dc:	4640      	mov	r0, r8
d00010de:	47d0      	blx	sl
d00010e0:	3001      	adds	r0, #1
d00010e2:	d09b      	beq.n	d000101c <_printf_i+0x164>
d00010e4:	3501      	adds	r5, #1
d00010e6:	68e3      	ldr	r3, [r4, #12]
d00010e8:	9903      	ldr	r1, [sp, #12]
d00010ea:	1a5b      	subs	r3, r3, r1
d00010ec:	42ab      	cmp	r3, r5
d00010ee:	dcf2      	bgt.n	d00010d6 <_printf_i+0x21e>
d00010f0:	e7eb      	b.n	d00010ca <_printf_i+0x212>
d00010f2:	2500      	movs	r5, #0
d00010f4:	f104 0619 	add.w	r6, r4, #25
d00010f8:	e7f5      	b.n	d00010e6 <_printf_i+0x22e>
d00010fa:	bf00      	nop
d00010fc:	d000147d 	.word	0xd000147d
d0001100:	d000148e 	.word	0xd000148e

d0001104 <__sread>:
d0001104:	b510      	push	{r4, lr}
d0001106:	460c      	mov	r4, r1
d0001108:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d000110c:	f000 f8e4 	bl	d00012d8 <_read_r>
d0001110:	2800      	cmp	r0, #0
d0001112:	bfab      	itete	ge
d0001114:	6d63      	ldrge	r3, [r4, #84]	; 0x54
d0001116:	89a3      	ldrhlt	r3, [r4, #12]
d0001118:	181b      	addge	r3, r3, r0
d000111a:	f423 5380 	biclt.w	r3, r3, #4096	; 0x1000
d000111e:	bfac      	ite	ge
d0001120:	6563      	strge	r3, [r4, #84]	; 0x54
d0001122:	81a3      	strhlt	r3, [r4, #12]
d0001124:	bd10      	pop	{r4, pc}

d0001126 <__swrite>:
d0001126:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
d000112a:	461f      	mov	r7, r3
d000112c:	898b      	ldrh	r3, [r1, #12]
d000112e:	05db      	lsls	r3, r3, #23
d0001130:	4605      	mov	r5, r0
d0001132:	460c      	mov	r4, r1
d0001134:	4616      	mov	r6, r2
d0001136:	d505      	bpl.n	d0001144 <__swrite+0x1e>
d0001138:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d000113c:	2302      	movs	r3, #2
d000113e:	2200      	movs	r2, #0
d0001140:	f000 f856 	bl	d00011f0 <_lseek_r>
d0001144:	89a3      	ldrh	r3, [r4, #12]
d0001146:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
d000114a:	f423 5380 	bic.w	r3, r3, #4096	; 0x1000
d000114e:	81a3      	strh	r3, [r4, #12]
d0001150:	4632      	mov	r2, r6
d0001152:	463b      	mov	r3, r7
d0001154:	4628      	mov	r0, r5
d0001156:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
d000115a:	f7fe bf77 	b.w	d000004c <_write_r>

d000115e <__sseek>:
d000115e:	b510      	push	{r4, lr}
d0001160:	460c      	mov	r4, r1
d0001162:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d0001166:	f000 f843 	bl	d00011f0 <_lseek_r>
d000116a:	1c43      	adds	r3, r0, #1
d000116c:	89a3      	ldrh	r3, [r4, #12]
d000116e:	bf15      	itete	ne
d0001170:	6560      	strne	r0, [r4, #84]	; 0x54
d0001172:	f423 5380 	biceq.w	r3, r3, #4096	; 0x1000
d0001176:	f443 5380 	orrne.w	r3, r3, #4096	; 0x1000
d000117a:	81a3      	strheq	r3, [r4, #12]
d000117c:	bf18      	it	ne
d000117e:	81a3      	strhne	r3, [r4, #12]
d0001180:	bd10      	pop	{r4, pc}

d0001182 <__sclose>:
d0001182:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d0001186:	f000 b801 	b.w	d000118c <_close_r>
	...

d000118c <_close_r>:
d000118c:	b538      	push	{r3, r4, r5, lr}
d000118e:	4d06      	ldr	r5, [pc, #24]	; (d00011a8 <_close_r+0x1c>)
d0001190:	2300      	movs	r3, #0
d0001192:	4604      	mov	r4, r0
d0001194:	4608      	mov	r0, r1
d0001196:	602b      	str	r3, [r5, #0]
d0001198:	f7fe ff88 	bl	d00000ac <_close>
d000119c:	1c43      	adds	r3, r0, #1
d000119e:	d102      	bne.n	d00011a6 <_close_r+0x1a>
d00011a0:	682b      	ldr	r3, [r5, #0]
d00011a2:	b103      	cbz	r3, d00011a6 <_close_r+0x1a>
d00011a4:	6023      	str	r3, [r4, #0]
d00011a6:	bd38      	pop	{r3, r4, r5, pc}
d00011a8:	d0001528 	.word	0xd0001528

d00011ac <_fstat_r>:
d00011ac:	b538      	push	{r3, r4, r5, lr}
d00011ae:	4d07      	ldr	r5, [pc, #28]	; (d00011cc <_fstat_r+0x20>)
d00011b0:	2300      	movs	r3, #0
d00011b2:	4604      	mov	r4, r0
d00011b4:	4608      	mov	r0, r1
d00011b6:	4611      	mov	r1, r2
d00011b8:	602b      	str	r3, [r5, #0]
d00011ba:	f7fe ff7b 	bl	d00000b4 <_fstat>
d00011be:	1c43      	adds	r3, r0, #1
d00011c0:	d102      	bne.n	d00011c8 <_fstat_r+0x1c>
d00011c2:	682b      	ldr	r3, [r5, #0]
d00011c4:	b103      	cbz	r3, d00011c8 <_fstat_r+0x1c>
d00011c6:	6023      	str	r3, [r4, #0]
d00011c8:	bd38      	pop	{r3, r4, r5, pc}
d00011ca:	bf00      	nop
d00011cc:	d0001528 	.word	0xd0001528

d00011d0 <_isatty_r>:
d00011d0:	b538      	push	{r3, r4, r5, lr}
d00011d2:	4d06      	ldr	r5, [pc, #24]	; (d00011ec <_isatty_r+0x1c>)
d00011d4:	2300      	movs	r3, #0
d00011d6:	4604      	mov	r4, r0
d00011d8:	4608      	mov	r0, r1
d00011da:	602b      	str	r3, [r5, #0]
d00011dc:	f7fe ff92 	bl	d0000104 <_isatty>
d00011e0:	1c43      	adds	r3, r0, #1
d00011e2:	d102      	bne.n	d00011ea <_isatty_r+0x1a>
d00011e4:	682b      	ldr	r3, [r5, #0]
d00011e6:	b103      	cbz	r3, d00011ea <_isatty_r+0x1a>
d00011e8:	6023      	str	r3, [r4, #0]
d00011ea:	bd38      	pop	{r3, r4, r5, pc}
d00011ec:	d0001528 	.word	0xd0001528

d00011f0 <_lseek_r>:
d00011f0:	b538      	push	{r3, r4, r5, lr}
d00011f2:	4d07      	ldr	r5, [pc, #28]	; (d0001210 <_lseek_r+0x20>)
d00011f4:	4604      	mov	r4, r0
d00011f6:	4608      	mov	r0, r1
d00011f8:	4611      	mov	r1, r2
d00011fa:	2200      	movs	r2, #0
d00011fc:	602a      	str	r2, [r5, #0]
d00011fe:	461a      	mov	r2, r3
d0001200:	f7fe ff5e 	bl	d00000c0 <_lseek>
d0001204:	1c43      	adds	r3, r0, #1
d0001206:	d102      	bne.n	d000120e <_lseek_r+0x1e>
d0001208:	682b      	ldr	r3, [r5, #0]
d000120a:	b103      	cbz	r3, d000120e <_lseek_r+0x1e>
d000120c:	6023      	str	r3, [r4, #0]
d000120e:	bd38      	pop	{r3, r4, r5, pc}
d0001210:	d0001528 	.word	0xd0001528
	...

d0001220 <memchr>:
d0001220:	f001 01ff 	and.w	r1, r1, #255	; 0xff
d0001224:	2a10      	cmp	r2, #16
d0001226:	db2b      	blt.n	d0001280 <memchr+0x60>
d0001228:	f010 0f07 	tst.w	r0, #7
d000122c:	d008      	beq.n	d0001240 <memchr+0x20>
d000122e:	f810 3b01 	ldrb.w	r3, [r0], #1
d0001232:	3a01      	subs	r2, #1
d0001234:	428b      	cmp	r3, r1
d0001236:	d02d      	beq.n	d0001294 <memchr+0x74>
d0001238:	f010 0f07 	tst.w	r0, #7
d000123c:	b342      	cbz	r2, d0001290 <memchr+0x70>
d000123e:	d1f6      	bne.n	d000122e <memchr+0xe>
d0001240:	b4f0      	push	{r4, r5, r6, r7}
d0001242:	ea41 2101 	orr.w	r1, r1, r1, lsl #8
d0001246:	ea41 4101 	orr.w	r1, r1, r1, lsl #16
d000124a:	f022 0407 	bic.w	r4, r2, #7
d000124e:	f07f 0700 	mvns.w	r7, #0
d0001252:	2300      	movs	r3, #0
d0001254:	e8f0 5602 	ldrd	r5, r6, [r0], #8
d0001258:	3c08      	subs	r4, #8
d000125a:	ea85 0501 	eor.w	r5, r5, r1
d000125e:	ea86 0601 	eor.w	r6, r6, r1
d0001262:	fa85 f547 	uadd8	r5, r5, r7
d0001266:	faa3 f587 	sel	r5, r3, r7
d000126a:	fa86 f647 	uadd8	r6, r6, r7
d000126e:	faa5 f687 	sel	r6, r5, r7
d0001272:	b98e      	cbnz	r6, d0001298 <memchr+0x78>
d0001274:	d1ee      	bne.n	d0001254 <memchr+0x34>
d0001276:	bcf0      	pop	{r4, r5, r6, r7}
d0001278:	f001 01ff 	and.w	r1, r1, #255	; 0xff
d000127c:	f002 0207 	and.w	r2, r2, #7
d0001280:	b132      	cbz	r2, d0001290 <memchr+0x70>
d0001282:	f810 3b01 	ldrb.w	r3, [r0], #1
d0001286:	3a01      	subs	r2, #1
d0001288:	ea83 0301 	eor.w	r3, r3, r1
d000128c:	b113      	cbz	r3, d0001294 <memchr+0x74>
d000128e:	d1f8      	bne.n	d0001282 <memchr+0x62>
d0001290:	2000      	movs	r0, #0
d0001292:	4770      	bx	lr
d0001294:	3801      	subs	r0, #1
d0001296:	4770      	bx	lr
d0001298:	2d00      	cmp	r5, #0
d000129a:	bf06      	itte	eq
d000129c:	4635      	moveq	r5, r6
d000129e:	3803      	subeq	r0, #3
d00012a0:	3807      	subne	r0, #7
d00012a2:	f015 0f01 	tst.w	r5, #1
d00012a6:	d107      	bne.n	d00012b8 <memchr+0x98>
d00012a8:	3001      	adds	r0, #1
d00012aa:	f415 7f80 	tst.w	r5, #256	; 0x100
d00012ae:	bf02      	ittt	eq
d00012b0:	3001      	addeq	r0, #1
d00012b2:	f415 3fc0 	tsteq.w	r5, #98304	; 0x18000
d00012b6:	3001      	addeq	r0, #1
d00012b8:	bcf0      	pop	{r4, r5, r6, r7}
d00012ba:	3801      	subs	r0, #1
d00012bc:	4770      	bx	lr
d00012be:	bf00      	nop

d00012c0 <__malloc_lock>:
d00012c0:	4801      	ldr	r0, [pc, #4]	; (d00012c8 <__malloc_lock+0x8>)
d00012c2:	f7ff bb19 	b.w	d00008f8 <__retarget_lock_acquire_recursive>
d00012c6:	bf00      	nop
d00012c8:	d0001520 	.word	0xd0001520

d00012cc <__malloc_unlock>:
d00012cc:	4801      	ldr	r0, [pc, #4]	; (d00012d4 <__malloc_unlock+0x8>)
d00012ce:	f7ff bb14 	b.w	d00008fa <__retarget_lock_release_recursive>
d00012d2:	bf00      	nop
d00012d4:	d0001520 	.word	0xd0001520

d00012d8 <_read_r>:
d00012d8:	b538      	push	{r3, r4, r5, lr}
d00012da:	4d07      	ldr	r5, [pc, #28]	; (d00012f8 <_read_r+0x20>)
d00012dc:	4604      	mov	r4, r0
d00012de:	4608      	mov	r0, r1
d00012e0:	4611      	mov	r1, r2
d00012e2:	2200      	movs	r2, #0
d00012e4:	602a      	str	r2, [r5, #0]
d00012e6:	461a      	mov	r2, r3
d00012e8:	f7fe fed6 	bl	d0000098 <_read>
d00012ec:	1c43      	adds	r3, r0, #1
d00012ee:	d102      	bne.n	d00012f6 <_read_r+0x1e>
d00012f0:	682b      	ldr	r3, [r5, #0]
d00012f2:	b103      	cbz	r3, d00012f6 <_read_r+0x1e>
d00012f4:	6023      	str	r3, [r4, #0]
d00012f6:	bd38      	pop	{r3, r4, r5, pc}
d00012f8:	d0001528 	.word	0xd0001528

d00012fc <_global_impure_ptr>:
d00012fc:	d00014ac 6c707041 73207465 20737961     ....Applet says 
d000130c:	4c4c4548 0a21214f 00000000 20555043     HELLO!!.....CPU 
d000131c:	74736574 20303420 3128202b 202a2032     test 40 + (12 * 
d000132c:	3d202934 646c2520 00000a0a 2a2a2a2a     4) = %ld....****
d000133c:	43204320 414d4d4f 5420444e 20545345      C COMMAND TEST 
d000134c:	0a2a2a2a 6d6f7246 64697320 2f786f62     ***.From sidbox/
d000135c:	66202f63 65646c6f 00002172 2a2a2a2a     c/ folder!..****
d000136c:	43204320 414d4d4f 5420444e 20545345      C COMMAND TEST 
d000137c:	0a2a2a2a 6c756f77 65622064 616c6320     ***.would be cla
d000138c:	2173706d 00000000 2a2a2a2a 43204320     mps!....**** C C
d000139c:	414d4d4f 5420444e 20545345 0a2a2a2a     OMMAND TEST ***.
d00013ac:	64616f6c 20676e69 6b726f77 636e6562     loading workbenc
d00013bc:	293b2068 75420a21 6f6e2074 6d412074     h ;)!.But not Am
d00013cc:	20616769 656d6572 7265626d 68656820     iga remember heh
d00013dc:	20490a65 45564f4c 554f5920 4d4f4320     e.I LOVE YOU COM
d00013ec:	4f444f4d 21214552 6968540a 73692073     MODORE!!.This is
d00013fc:	726f6620 756f7920 79756720 00002173      for you guys!..

d000140c <__sf_fake_stderr>:
	...

d000142c <__sf_fake_stdin>:
	...

d000144c <__sf_fake_stdout>:
	...
d000146c:	2b302d23 6c680020 6665004c 47464567     #-0+ .hlL.efgEFG
d000147c:	32313000 36353433 41393837 45444342     .0123456789ABCDE
d000148c:	31300046 35343332 39383736 64636261     F.0123456789abcd
d000149c:	                                         ef.

Disassembly of section .init:

d00014a0 <_init>:
d00014a0:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d00014a2:	bf00      	nop

Disassembly of section .fini:

d00014a4 <_fini>:
d00014a4:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d00014a6:	bf00      	nop

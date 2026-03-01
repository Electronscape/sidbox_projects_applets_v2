
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
d000001e:	f000 f92f 	bl	d0000280 <setbuf>
d0000022:	6833      	ldr	r3, [r6, #0]
d0000024:	2100      	movs	r1, #0
d0000026:	68d8      	ldr	r0, [r3, #12]
d0000028:	f000 f92a 	bl	d0000280 <setbuf>
d000002c:	4629      	mov	r1, r5
d000002e:	4620      	mov	r0, r4
d0000030:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
d0000034:	f000 b872 	b.w	d000011c <main>
d0000038:	d00014b8 	.word	0xd00014b8

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
d0000050:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d0000052:	d81f      	bhi.n	d0000094 <_write_r+0x48>
d0000054:	b1e2      	cbz	r2, d0000090 <_write_r+0x44>
d0000056:	461c      	mov	r4, r3
d0000058:	b1d3      	cbz	r3, d0000090 <_write_r+0x44>
d000005a:	4d12      	ldr	r5, [pc, #72]	; (d00000a4 <_write_r+0x58>)
d000005c:	682e      	ldr	r6, [r5, #0]
d000005e:	b9ae      	cbnz	r6, d000008c <_write_r+0x40>
d0000060:	4f11      	ldr	r7, [pc, #68]	; (d00000a8 <_write_r+0x5c>)
d0000062:	2301      	movs	r3, #1
d0000064:	4611      	mov	r1, r2
d0000066:	4630      	mov	r0, r6
d0000068:	602b      	str	r3, [r5, #0]
d000006a:	4622      	mov	r2, r4
d000006c:	793b      	ldrb	r3, [r7, #4]
d000006e:	f897 c005 	ldrb.w	ip, [r7, #5]
d0000072:	ea43 230c 	orr.w	r3, r3, ip, lsl #8
d0000076:	f897 c006 	ldrb.w	ip, [r7, #6]
d000007a:	79ff      	ldrb	r7, [r7, #7]
d000007c:	ea43 430c 	orr.w	r3, r3, ip, lsl #16
d0000080:	ea43 6307 	orr.w	r3, r3, r7, lsl #24
d0000084:	681b      	ldr	r3, [r3, #0]
d0000086:	685b      	ldr	r3, [r3, #4]
d0000088:	4798      	blx	r3
d000008a:	602e      	str	r6, [r5, #0]
d000008c:	4620      	mov	r0, r4
d000008e:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d0000090:	2000      	movs	r0, #0
d0000092:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d0000094:	f000 f860 	bl	d0000158 <__errno>
d0000098:	2209      	movs	r2, #9
d000009a:	4603      	mov	r3, r0
d000009c:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d00000a0:	601a      	str	r2, [r3, #0]
d00000a2:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d00000a4:	d0001520 	.word	0xd0001520
d00000a8:	2001f000 	.word	0x2001f000

d00000ac <_read>:
d00000ac:	b508      	push	{r3, lr}
d00000ae:	f000 f853 	bl	d0000158 <__errno>
d00000b2:	2258      	movs	r2, #88	; 0x58
d00000b4:	4603      	mov	r3, r0
d00000b6:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d00000ba:	601a      	str	r2, [r3, #0]
d00000bc:	bd08      	pop	{r3, pc}
d00000be:	bf00      	nop

d00000c0 <_close>:
d00000c0:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d00000c4:	4770      	bx	lr
d00000c6:	bf00      	nop

d00000c8 <_fstat>:
d00000c8:	f44f 5300 	mov.w	r3, #8192	; 0x2000
d00000cc:	2000      	movs	r0, #0
d00000ce:	604b      	str	r3, [r1, #4]
d00000d0:	4770      	bx	lr
d00000d2:	bf00      	nop

d00000d4 <_lseek>:
d00000d4:	2000      	movs	r0, #0
d00000d6:	4770      	bx	lr

d00000d8 <_sbrk_r>:
d00000d8:	4b0c      	ldr	r3, [pc, #48]	; (d000010c <_sbrk_r+0x34>)
d00000da:	4a0d      	ldr	r2, [pc, #52]	; (d0000110 <_sbrk_r+0x38>)
d00000dc:	6818      	ldr	r0, [r3, #0]
d00000de:	b510      	push	{r4, lr}
d00000e0:	b918      	cbnz	r0, d00000ea <_sbrk_r+0x12>
d00000e2:	1dd0      	adds	r0, r2, #7
d00000e4:	f020 0007 	bic.w	r0, r0, #7
d00000e8:	6018      	str	r0, [r3, #0]
d00000ea:	4401      	add	r1, r0
d00000ec:	4c09      	ldr	r4, [pc, #36]	; (d0000114 <_sbrk_r+0x3c>)
d00000ee:	42a1      	cmp	r1, r4
d00000f0:	d803      	bhi.n	d00000fa <_sbrk_r+0x22>
d00000f2:	4291      	cmp	r1, r2
d00000f4:	d301      	bcc.n	d00000fa <_sbrk_r+0x22>
d00000f6:	6019      	str	r1, [r3, #0]
d00000f8:	bd10      	pop	{r4, pc}
d00000fa:	f000 f82d 	bl	d0000158 <__errno>
d00000fe:	220c      	movs	r2, #12
d0000100:	4603      	mov	r3, r0
d0000102:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d0000106:	601a      	str	r2, [r3, #0]
d0000108:	bd10      	pop	{r4, pc}
d000010a:	bf00      	nop
d000010c:	d000151c 	.word	0xd000151c
d0000110:	d0003540 	.word	0xd0003540
d0000114:	d0600000 	.word	0xd0600000

d0000118 <_isatty>:
d0000118:	2001      	movs	r0, #1
d000011a:	4770      	bx	lr

d000011c <main>:
d000011c:	b508      	push	{r3, lr}
d000011e:	4809      	ldr	r0, [pc, #36]	; (d0000144 <main+0x28>)
d0000120:	f000 f8a6 	bl	d0000270 <puts>
d0000124:	2158      	movs	r1, #88	; 0x58
d0000126:	4808      	ldr	r0, [pc, #32]	; (d0000148 <main+0x2c>)
d0000128:	f000 f81c 	bl	d0000164 <iprintf>
d000012c:	4807      	ldr	r0, [pc, #28]	; (d000014c <main+0x30>)
d000012e:	f000 f89f 	bl	d0000270 <puts>
d0000132:	4807      	ldr	r0, [pc, #28]	; (d0000150 <main+0x34>)
d0000134:	f000 f89c 	bl	d0000270 <puts>
d0000138:	4806      	ldr	r0, [pc, #24]	; (d0000154 <main+0x38>)
d000013a:	f000 f813 	bl	d0000164 <iprintf>
d000013e:	2000      	movs	r0, #0
d0000140:	bd08      	pop	{r3, pc}
d0000142:	bf00      	nop
d0000144:	d0001310 	.word	0xd0001310
d0000148:	d0001328 	.word	0xd0001328
d000014c:	d0001348 	.word	0xd0001348
d0000150:	d0001378 	.word	0xd0001378
d0000154:	d00013a4 	.word	0xd00013a4

d0000158 <__errno>:
d0000158:	4b01      	ldr	r3, [pc, #4]	; (d0000160 <__errno+0x8>)
d000015a:	6818      	ldr	r0, [r3, #0]
d000015c:	4770      	bx	lr
d000015e:	bf00      	nop
d0000160:	d00014b8 	.word	0xd00014b8

d0000164 <iprintf>:
d0000164:	b40f      	push	{r0, r1, r2, r3}
d0000166:	4b0a      	ldr	r3, [pc, #40]	; (d0000190 <iprintf+0x2c>)
d0000168:	b513      	push	{r0, r1, r4, lr}
d000016a:	681c      	ldr	r4, [r3, #0]
d000016c:	b124      	cbz	r4, d0000178 <iprintf+0x14>
d000016e:	69a3      	ldr	r3, [r4, #24]
d0000170:	b913      	cbnz	r3, d0000178 <iprintf+0x14>
d0000172:	4620      	mov	r0, r4
d0000174:	f000 fb2c 	bl	d00007d0 <__sinit>
d0000178:	ab05      	add	r3, sp, #20
d000017a:	9a04      	ldr	r2, [sp, #16]
d000017c:	68a1      	ldr	r1, [r4, #8]
d000017e:	9301      	str	r3, [sp, #4]
d0000180:	4620      	mov	r0, r4
d0000182:	f000 fd05 	bl	d0000b90 <_vfiprintf_r>
d0000186:	b002      	add	sp, #8
d0000188:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
d000018c:	b004      	add	sp, #16
d000018e:	4770      	bx	lr
d0000190:	d00014b8 	.word	0xd00014b8

d0000194 <_puts_r>:
d0000194:	b570      	push	{r4, r5, r6, lr}
d0000196:	460e      	mov	r6, r1
d0000198:	4605      	mov	r5, r0
d000019a:	b118      	cbz	r0, d00001a4 <_puts_r+0x10>
d000019c:	6983      	ldr	r3, [r0, #24]
d000019e:	b90b      	cbnz	r3, d00001a4 <_puts_r+0x10>
d00001a0:	f000 fb16 	bl	d00007d0 <__sinit>
d00001a4:	69ab      	ldr	r3, [r5, #24]
d00001a6:	68ac      	ldr	r4, [r5, #8]
d00001a8:	b913      	cbnz	r3, d00001b0 <_puts_r+0x1c>
d00001aa:	4628      	mov	r0, r5
d00001ac:	f000 fb10 	bl	d00007d0 <__sinit>
d00001b0:	4b2c      	ldr	r3, [pc, #176]	; (d0000264 <_puts_r+0xd0>)
d00001b2:	429c      	cmp	r4, r3
d00001b4:	d120      	bne.n	d00001f8 <_puts_r+0x64>
d00001b6:	686c      	ldr	r4, [r5, #4]
d00001b8:	6e63      	ldr	r3, [r4, #100]	; 0x64
d00001ba:	07db      	lsls	r3, r3, #31
d00001bc:	d405      	bmi.n	d00001ca <_puts_r+0x36>
d00001be:	89a3      	ldrh	r3, [r4, #12]
d00001c0:	0598      	lsls	r0, r3, #22
d00001c2:	d402      	bmi.n	d00001ca <_puts_r+0x36>
d00001c4:	6da0      	ldr	r0, [r4, #88]	; 0x58
d00001c6:	f000 fba1 	bl	d000090c <__retarget_lock_acquire_recursive>
d00001ca:	89a3      	ldrh	r3, [r4, #12]
d00001cc:	0719      	lsls	r1, r3, #28
d00001ce:	d51d      	bpl.n	d000020c <_puts_r+0x78>
d00001d0:	6923      	ldr	r3, [r4, #16]
d00001d2:	b1db      	cbz	r3, d000020c <_puts_r+0x78>
d00001d4:	3e01      	subs	r6, #1
d00001d6:	68a3      	ldr	r3, [r4, #8]
d00001d8:	f816 1f01 	ldrb.w	r1, [r6, #1]!
d00001dc:	3b01      	subs	r3, #1
d00001de:	60a3      	str	r3, [r4, #8]
d00001e0:	bb39      	cbnz	r1, d0000232 <_puts_r+0x9e>
d00001e2:	2b00      	cmp	r3, #0
d00001e4:	da38      	bge.n	d0000258 <_puts_r+0xc4>
d00001e6:	4622      	mov	r2, r4
d00001e8:	210a      	movs	r1, #10
d00001ea:	4628      	mov	r0, r5
d00001ec:	f000 f916 	bl	d000041c <__swbuf_r>
d00001f0:	3001      	adds	r0, #1
d00001f2:	d011      	beq.n	d0000218 <_puts_r+0x84>
d00001f4:	250a      	movs	r5, #10
d00001f6:	e011      	b.n	d000021c <_puts_r+0x88>
d00001f8:	4b1b      	ldr	r3, [pc, #108]	; (d0000268 <_puts_r+0xd4>)
d00001fa:	429c      	cmp	r4, r3
d00001fc:	d101      	bne.n	d0000202 <_puts_r+0x6e>
d00001fe:	68ac      	ldr	r4, [r5, #8]
d0000200:	e7da      	b.n	d00001b8 <_puts_r+0x24>
d0000202:	4b1a      	ldr	r3, [pc, #104]	; (d000026c <_puts_r+0xd8>)
d0000204:	429c      	cmp	r4, r3
d0000206:	bf08      	it	eq
d0000208:	68ec      	ldreq	r4, [r5, #12]
d000020a:	e7d5      	b.n	d00001b8 <_puts_r+0x24>
d000020c:	4621      	mov	r1, r4
d000020e:	4628      	mov	r0, r5
d0000210:	f000 f956 	bl	d00004c0 <__swsetup_r>
d0000214:	2800      	cmp	r0, #0
d0000216:	d0dd      	beq.n	d00001d4 <_puts_r+0x40>
d0000218:	f04f 35ff 	mov.w	r5, #4294967295	; 0xffffffff
d000021c:	6e63      	ldr	r3, [r4, #100]	; 0x64
d000021e:	07da      	lsls	r2, r3, #31
d0000220:	d405      	bmi.n	d000022e <_puts_r+0x9a>
d0000222:	89a3      	ldrh	r3, [r4, #12]
d0000224:	059b      	lsls	r3, r3, #22
d0000226:	d402      	bmi.n	d000022e <_puts_r+0x9a>
d0000228:	6da0      	ldr	r0, [r4, #88]	; 0x58
d000022a:	f000 fb70 	bl	d000090e <__retarget_lock_release_recursive>
d000022e:	4628      	mov	r0, r5
d0000230:	bd70      	pop	{r4, r5, r6, pc}
d0000232:	2b00      	cmp	r3, #0
d0000234:	da04      	bge.n	d0000240 <_puts_r+0xac>
d0000236:	69a2      	ldr	r2, [r4, #24]
d0000238:	429a      	cmp	r2, r3
d000023a:	dc06      	bgt.n	d000024a <_puts_r+0xb6>
d000023c:	290a      	cmp	r1, #10
d000023e:	d004      	beq.n	d000024a <_puts_r+0xb6>
d0000240:	6823      	ldr	r3, [r4, #0]
d0000242:	1c5a      	adds	r2, r3, #1
d0000244:	6022      	str	r2, [r4, #0]
d0000246:	7019      	strb	r1, [r3, #0]
d0000248:	e7c5      	b.n	d00001d6 <_puts_r+0x42>
d000024a:	4622      	mov	r2, r4
d000024c:	4628      	mov	r0, r5
d000024e:	f000 f8e5 	bl	d000041c <__swbuf_r>
d0000252:	3001      	adds	r0, #1
d0000254:	d1bf      	bne.n	d00001d6 <_puts_r+0x42>
d0000256:	e7df      	b.n	d0000218 <_puts_r+0x84>
d0000258:	6823      	ldr	r3, [r4, #0]
d000025a:	250a      	movs	r5, #10
d000025c:	1c5a      	adds	r2, r3, #1
d000025e:	6022      	str	r2, [r4, #0]
d0000260:	701d      	strb	r5, [r3, #0]
d0000262:	e7db      	b.n	d000021c <_puts_r+0x88>
d0000264:	d000143c 	.word	0xd000143c
d0000268:	d000145c 	.word	0xd000145c
d000026c:	d000141c 	.word	0xd000141c

d0000270 <puts>:
d0000270:	4b02      	ldr	r3, [pc, #8]	; (d000027c <puts+0xc>)
d0000272:	4601      	mov	r1, r0
d0000274:	6818      	ldr	r0, [r3, #0]
d0000276:	f7ff bf8d 	b.w	d0000194 <_puts_r>
d000027a:	bf00      	nop
d000027c:	d00014b8 	.word	0xd00014b8

d0000280 <setbuf>:
d0000280:	2900      	cmp	r1, #0
d0000282:	f44f 6380 	mov.w	r3, #1024	; 0x400
d0000286:	bf0c      	ite	eq
d0000288:	2202      	moveq	r2, #2
d000028a:	2200      	movne	r2, #0
d000028c:	f000 b800 	b.w	d0000290 <setvbuf>

d0000290 <setvbuf>:
d0000290:	e92d 43f7 	stmdb	sp!, {r0, r1, r2, r4, r5, r6, r7, r8, r9, lr}
d0000294:	461d      	mov	r5, r3
d0000296:	4b5d      	ldr	r3, [pc, #372]	; (d000040c <setvbuf+0x17c>)
d0000298:	681f      	ldr	r7, [r3, #0]
d000029a:	4604      	mov	r4, r0
d000029c:	460e      	mov	r6, r1
d000029e:	4690      	mov	r8, r2
d00002a0:	b127      	cbz	r7, d00002ac <setvbuf+0x1c>
d00002a2:	69bb      	ldr	r3, [r7, #24]
d00002a4:	b913      	cbnz	r3, d00002ac <setvbuf+0x1c>
d00002a6:	4638      	mov	r0, r7
d00002a8:	f000 fa92 	bl	d00007d0 <__sinit>
d00002ac:	4b58      	ldr	r3, [pc, #352]	; (d0000410 <setvbuf+0x180>)
d00002ae:	429c      	cmp	r4, r3
d00002b0:	d167      	bne.n	d0000382 <setvbuf+0xf2>
d00002b2:	687c      	ldr	r4, [r7, #4]
d00002b4:	f1b8 0f02 	cmp.w	r8, #2
d00002b8:	d006      	beq.n	d00002c8 <setvbuf+0x38>
d00002ba:	f1b8 0f01 	cmp.w	r8, #1
d00002be:	f200 809f 	bhi.w	d0000400 <setvbuf+0x170>
d00002c2:	2d00      	cmp	r5, #0
d00002c4:	f2c0 809c 	blt.w	d0000400 <setvbuf+0x170>
d00002c8:	6e63      	ldr	r3, [r4, #100]	; 0x64
d00002ca:	07db      	lsls	r3, r3, #31
d00002cc:	d405      	bmi.n	d00002da <setvbuf+0x4a>
d00002ce:	89a3      	ldrh	r3, [r4, #12]
d00002d0:	0598      	lsls	r0, r3, #22
d00002d2:	d402      	bmi.n	d00002da <setvbuf+0x4a>
d00002d4:	6da0      	ldr	r0, [r4, #88]	; 0x58
d00002d6:	f000 fb19 	bl	d000090c <__retarget_lock_acquire_recursive>
d00002da:	4621      	mov	r1, r4
d00002dc:	4638      	mov	r0, r7
d00002de:	f000 f9e3 	bl	d00006a8 <_fflush_r>
d00002e2:	6b61      	ldr	r1, [r4, #52]	; 0x34
d00002e4:	b141      	cbz	r1, d00002f8 <setvbuf+0x68>
d00002e6:	f104 0344 	add.w	r3, r4, #68	; 0x44
d00002ea:	4299      	cmp	r1, r3
d00002ec:	d002      	beq.n	d00002f4 <setvbuf+0x64>
d00002ee:	4638      	mov	r0, r7
d00002f0:	f000 fb7a 	bl	d00009e8 <_free_r>
d00002f4:	2300      	movs	r3, #0
d00002f6:	6363      	str	r3, [r4, #52]	; 0x34
d00002f8:	2300      	movs	r3, #0
d00002fa:	61a3      	str	r3, [r4, #24]
d00002fc:	6063      	str	r3, [r4, #4]
d00002fe:	89a3      	ldrh	r3, [r4, #12]
d0000300:	0619      	lsls	r1, r3, #24
d0000302:	d503      	bpl.n	d000030c <setvbuf+0x7c>
d0000304:	6921      	ldr	r1, [r4, #16]
d0000306:	4638      	mov	r0, r7
d0000308:	f000 fb6e 	bl	d00009e8 <_free_r>
d000030c:	89a3      	ldrh	r3, [r4, #12]
d000030e:	f423 634a 	bic.w	r3, r3, #3232	; 0xca0
d0000312:	f023 0303 	bic.w	r3, r3, #3
d0000316:	f1b8 0f02 	cmp.w	r8, #2
d000031a:	81a3      	strh	r3, [r4, #12]
d000031c:	d06c      	beq.n	d00003f8 <setvbuf+0x168>
d000031e:	ab01      	add	r3, sp, #4
d0000320:	466a      	mov	r2, sp
d0000322:	4621      	mov	r1, r4
d0000324:	4638      	mov	r0, r7
d0000326:	f000 faf3 	bl	d0000910 <__swhatbuf_r>
d000032a:	89a3      	ldrh	r3, [r4, #12]
d000032c:	4318      	orrs	r0, r3
d000032e:	81a0      	strh	r0, [r4, #12]
d0000330:	2d00      	cmp	r5, #0
d0000332:	d130      	bne.n	d0000396 <setvbuf+0x106>
d0000334:	9d00      	ldr	r5, [sp, #0]
d0000336:	4628      	mov	r0, r5
d0000338:	f000 fb4e 	bl	d00009d8 <malloc>
d000033c:	4606      	mov	r6, r0
d000033e:	2800      	cmp	r0, #0
d0000340:	d155      	bne.n	d00003ee <setvbuf+0x15e>
d0000342:	f8dd 9000 	ldr.w	r9, [sp]
d0000346:	45a9      	cmp	r9, r5
d0000348:	d14a      	bne.n	d00003e0 <setvbuf+0x150>
d000034a:	f04f 35ff 	mov.w	r5, #4294967295	; 0xffffffff
d000034e:	2200      	movs	r2, #0
d0000350:	60a2      	str	r2, [r4, #8]
d0000352:	f104 0247 	add.w	r2, r4, #71	; 0x47
d0000356:	6022      	str	r2, [r4, #0]
d0000358:	6122      	str	r2, [r4, #16]
d000035a:	2201      	movs	r2, #1
d000035c:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
d0000360:	6162      	str	r2, [r4, #20]
d0000362:	6e62      	ldr	r2, [r4, #100]	; 0x64
d0000364:	f043 0302 	orr.w	r3, r3, #2
d0000368:	07d2      	lsls	r2, r2, #31
d000036a:	81a3      	strh	r3, [r4, #12]
d000036c:	d405      	bmi.n	d000037a <setvbuf+0xea>
d000036e:	f413 7f00 	tst.w	r3, #512	; 0x200
d0000372:	d102      	bne.n	d000037a <setvbuf+0xea>
d0000374:	6da0      	ldr	r0, [r4, #88]	; 0x58
d0000376:	f000 faca 	bl	d000090e <__retarget_lock_release_recursive>
d000037a:	4628      	mov	r0, r5
d000037c:	b003      	add	sp, #12
d000037e:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
d0000382:	4b24      	ldr	r3, [pc, #144]	; (d0000414 <setvbuf+0x184>)
d0000384:	429c      	cmp	r4, r3
d0000386:	d101      	bne.n	d000038c <setvbuf+0xfc>
d0000388:	68bc      	ldr	r4, [r7, #8]
d000038a:	e793      	b.n	d00002b4 <setvbuf+0x24>
d000038c:	4b22      	ldr	r3, [pc, #136]	; (d0000418 <setvbuf+0x188>)
d000038e:	429c      	cmp	r4, r3
d0000390:	bf08      	it	eq
d0000392:	68fc      	ldreq	r4, [r7, #12]
d0000394:	e78e      	b.n	d00002b4 <setvbuf+0x24>
d0000396:	2e00      	cmp	r6, #0
d0000398:	d0cd      	beq.n	d0000336 <setvbuf+0xa6>
d000039a:	69bb      	ldr	r3, [r7, #24]
d000039c:	b913      	cbnz	r3, d00003a4 <setvbuf+0x114>
d000039e:	4638      	mov	r0, r7
d00003a0:	f000 fa16 	bl	d00007d0 <__sinit>
d00003a4:	f1b8 0f01 	cmp.w	r8, #1
d00003a8:	bf08      	it	eq
d00003aa:	89a3      	ldrheq	r3, [r4, #12]
d00003ac:	6026      	str	r6, [r4, #0]
d00003ae:	bf04      	itt	eq
d00003b0:	f043 0301 	orreq.w	r3, r3, #1
d00003b4:	81a3      	strheq	r3, [r4, #12]
d00003b6:	89a2      	ldrh	r2, [r4, #12]
d00003b8:	f012 0308 	ands.w	r3, r2, #8
d00003bc:	e9c4 6504 	strd	r6, r5, [r4, #16]
d00003c0:	d01c      	beq.n	d00003fc <setvbuf+0x16c>
d00003c2:	07d3      	lsls	r3, r2, #31
d00003c4:	bf41      	itttt	mi
d00003c6:	2300      	movmi	r3, #0
d00003c8:	426d      	negmi	r5, r5
d00003ca:	60a3      	strmi	r3, [r4, #8]
d00003cc:	61a5      	strmi	r5, [r4, #24]
d00003ce:	bf58      	it	pl
d00003d0:	60a5      	strpl	r5, [r4, #8]
d00003d2:	6e65      	ldr	r5, [r4, #100]	; 0x64
d00003d4:	f015 0501 	ands.w	r5, r5, #1
d00003d8:	d115      	bne.n	d0000406 <setvbuf+0x176>
d00003da:	f412 7f00 	tst.w	r2, #512	; 0x200
d00003de:	e7c8      	b.n	d0000372 <setvbuf+0xe2>
d00003e0:	4648      	mov	r0, r9
d00003e2:	f000 faf9 	bl	d00009d8 <malloc>
d00003e6:	4606      	mov	r6, r0
d00003e8:	2800      	cmp	r0, #0
d00003ea:	d0ae      	beq.n	d000034a <setvbuf+0xba>
d00003ec:	464d      	mov	r5, r9
d00003ee:	89a3      	ldrh	r3, [r4, #12]
d00003f0:	f043 0380 	orr.w	r3, r3, #128	; 0x80
d00003f4:	81a3      	strh	r3, [r4, #12]
d00003f6:	e7d0      	b.n	d000039a <setvbuf+0x10a>
d00003f8:	2500      	movs	r5, #0
d00003fa:	e7a8      	b.n	d000034e <setvbuf+0xbe>
d00003fc:	60a3      	str	r3, [r4, #8]
d00003fe:	e7e8      	b.n	d00003d2 <setvbuf+0x142>
d0000400:	f04f 35ff 	mov.w	r5, #4294967295	; 0xffffffff
d0000404:	e7b9      	b.n	d000037a <setvbuf+0xea>
d0000406:	2500      	movs	r5, #0
d0000408:	e7b7      	b.n	d000037a <setvbuf+0xea>
d000040a:	bf00      	nop
d000040c:	d00014b8 	.word	0xd00014b8
d0000410:	d000143c 	.word	0xd000143c
d0000414:	d000145c 	.word	0xd000145c
d0000418:	d000141c 	.word	0xd000141c

d000041c <__swbuf_r>:
d000041c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d000041e:	460e      	mov	r6, r1
d0000420:	4614      	mov	r4, r2
d0000422:	4605      	mov	r5, r0
d0000424:	b118      	cbz	r0, d000042e <__swbuf_r+0x12>
d0000426:	6983      	ldr	r3, [r0, #24]
d0000428:	b90b      	cbnz	r3, d000042e <__swbuf_r+0x12>
d000042a:	f000 f9d1 	bl	d00007d0 <__sinit>
d000042e:	4b21      	ldr	r3, [pc, #132]	; (d00004b4 <__swbuf_r+0x98>)
d0000430:	429c      	cmp	r4, r3
d0000432:	d12b      	bne.n	d000048c <__swbuf_r+0x70>
d0000434:	686c      	ldr	r4, [r5, #4]
d0000436:	69a3      	ldr	r3, [r4, #24]
d0000438:	60a3      	str	r3, [r4, #8]
d000043a:	89a3      	ldrh	r3, [r4, #12]
d000043c:	071a      	lsls	r2, r3, #28
d000043e:	d52f      	bpl.n	d00004a0 <__swbuf_r+0x84>
d0000440:	6923      	ldr	r3, [r4, #16]
d0000442:	b36b      	cbz	r3, d00004a0 <__swbuf_r+0x84>
d0000444:	6923      	ldr	r3, [r4, #16]
d0000446:	6820      	ldr	r0, [r4, #0]
d0000448:	1ac0      	subs	r0, r0, r3
d000044a:	6963      	ldr	r3, [r4, #20]
d000044c:	b2f6      	uxtb	r6, r6
d000044e:	4283      	cmp	r3, r0
d0000450:	4637      	mov	r7, r6
d0000452:	dc04      	bgt.n	d000045e <__swbuf_r+0x42>
d0000454:	4621      	mov	r1, r4
d0000456:	4628      	mov	r0, r5
d0000458:	f000 f926 	bl	d00006a8 <_fflush_r>
d000045c:	bb30      	cbnz	r0, d00004ac <__swbuf_r+0x90>
d000045e:	68a3      	ldr	r3, [r4, #8]
d0000460:	3b01      	subs	r3, #1
d0000462:	60a3      	str	r3, [r4, #8]
d0000464:	6823      	ldr	r3, [r4, #0]
d0000466:	1c5a      	adds	r2, r3, #1
d0000468:	6022      	str	r2, [r4, #0]
d000046a:	701e      	strb	r6, [r3, #0]
d000046c:	6963      	ldr	r3, [r4, #20]
d000046e:	3001      	adds	r0, #1
d0000470:	4283      	cmp	r3, r0
d0000472:	d004      	beq.n	d000047e <__swbuf_r+0x62>
d0000474:	89a3      	ldrh	r3, [r4, #12]
d0000476:	07db      	lsls	r3, r3, #31
d0000478:	d506      	bpl.n	d0000488 <__swbuf_r+0x6c>
d000047a:	2e0a      	cmp	r6, #10
d000047c:	d104      	bne.n	d0000488 <__swbuf_r+0x6c>
d000047e:	4621      	mov	r1, r4
d0000480:	4628      	mov	r0, r5
d0000482:	f000 f911 	bl	d00006a8 <_fflush_r>
d0000486:	b988      	cbnz	r0, d00004ac <__swbuf_r+0x90>
d0000488:	4638      	mov	r0, r7
d000048a:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d000048c:	4b0a      	ldr	r3, [pc, #40]	; (d00004b8 <__swbuf_r+0x9c>)
d000048e:	429c      	cmp	r4, r3
d0000490:	d101      	bne.n	d0000496 <__swbuf_r+0x7a>
d0000492:	68ac      	ldr	r4, [r5, #8]
d0000494:	e7cf      	b.n	d0000436 <__swbuf_r+0x1a>
d0000496:	4b09      	ldr	r3, [pc, #36]	; (d00004bc <__swbuf_r+0xa0>)
d0000498:	429c      	cmp	r4, r3
d000049a:	bf08      	it	eq
d000049c:	68ec      	ldreq	r4, [r5, #12]
d000049e:	e7ca      	b.n	d0000436 <__swbuf_r+0x1a>
d00004a0:	4621      	mov	r1, r4
d00004a2:	4628      	mov	r0, r5
d00004a4:	f000 f80c 	bl	d00004c0 <__swsetup_r>
d00004a8:	2800      	cmp	r0, #0
d00004aa:	d0cb      	beq.n	d0000444 <__swbuf_r+0x28>
d00004ac:	f04f 37ff 	mov.w	r7, #4294967295	; 0xffffffff
d00004b0:	e7ea      	b.n	d0000488 <__swbuf_r+0x6c>
d00004b2:	bf00      	nop
d00004b4:	d000143c 	.word	0xd000143c
d00004b8:	d000145c 	.word	0xd000145c
d00004bc:	d000141c 	.word	0xd000141c

d00004c0 <__swsetup_r>:
d00004c0:	4b32      	ldr	r3, [pc, #200]	; (d000058c <__swsetup_r+0xcc>)
d00004c2:	b570      	push	{r4, r5, r6, lr}
d00004c4:	681d      	ldr	r5, [r3, #0]
d00004c6:	4606      	mov	r6, r0
d00004c8:	460c      	mov	r4, r1
d00004ca:	b125      	cbz	r5, d00004d6 <__swsetup_r+0x16>
d00004cc:	69ab      	ldr	r3, [r5, #24]
d00004ce:	b913      	cbnz	r3, d00004d6 <__swsetup_r+0x16>
d00004d0:	4628      	mov	r0, r5
d00004d2:	f000 f97d 	bl	d00007d0 <__sinit>
d00004d6:	4b2e      	ldr	r3, [pc, #184]	; (d0000590 <__swsetup_r+0xd0>)
d00004d8:	429c      	cmp	r4, r3
d00004da:	d10f      	bne.n	d00004fc <__swsetup_r+0x3c>
d00004dc:	686c      	ldr	r4, [r5, #4]
d00004de:	89a3      	ldrh	r3, [r4, #12]
d00004e0:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
d00004e4:	0719      	lsls	r1, r3, #28
d00004e6:	d42c      	bmi.n	d0000542 <__swsetup_r+0x82>
d00004e8:	06dd      	lsls	r5, r3, #27
d00004ea:	d411      	bmi.n	d0000510 <__swsetup_r+0x50>
d00004ec:	2309      	movs	r3, #9
d00004ee:	6033      	str	r3, [r6, #0]
d00004f0:	f042 0340 	orr.w	r3, r2, #64	; 0x40
d00004f4:	81a3      	strh	r3, [r4, #12]
d00004f6:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d00004fa:	e03e      	b.n	d000057a <__swsetup_r+0xba>
d00004fc:	4b25      	ldr	r3, [pc, #148]	; (d0000594 <__swsetup_r+0xd4>)
d00004fe:	429c      	cmp	r4, r3
d0000500:	d101      	bne.n	d0000506 <__swsetup_r+0x46>
d0000502:	68ac      	ldr	r4, [r5, #8]
d0000504:	e7eb      	b.n	d00004de <__swsetup_r+0x1e>
d0000506:	4b24      	ldr	r3, [pc, #144]	; (d0000598 <__swsetup_r+0xd8>)
d0000508:	429c      	cmp	r4, r3
d000050a:	bf08      	it	eq
d000050c:	68ec      	ldreq	r4, [r5, #12]
d000050e:	e7e6      	b.n	d00004de <__swsetup_r+0x1e>
d0000510:	0758      	lsls	r0, r3, #29
d0000512:	d512      	bpl.n	d000053a <__swsetup_r+0x7a>
d0000514:	6b61      	ldr	r1, [r4, #52]	; 0x34
d0000516:	b141      	cbz	r1, d000052a <__swsetup_r+0x6a>
d0000518:	f104 0344 	add.w	r3, r4, #68	; 0x44
d000051c:	4299      	cmp	r1, r3
d000051e:	d002      	beq.n	d0000526 <__swsetup_r+0x66>
d0000520:	4630      	mov	r0, r6
d0000522:	f000 fa61 	bl	d00009e8 <_free_r>
d0000526:	2300      	movs	r3, #0
d0000528:	6363      	str	r3, [r4, #52]	; 0x34
d000052a:	89a3      	ldrh	r3, [r4, #12]
d000052c:	f023 0324 	bic.w	r3, r3, #36	; 0x24
d0000530:	81a3      	strh	r3, [r4, #12]
d0000532:	2300      	movs	r3, #0
d0000534:	6063      	str	r3, [r4, #4]
d0000536:	6923      	ldr	r3, [r4, #16]
d0000538:	6023      	str	r3, [r4, #0]
d000053a:	89a3      	ldrh	r3, [r4, #12]
d000053c:	f043 0308 	orr.w	r3, r3, #8
d0000540:	81a3      	strh	r3, [r4, #12]
d0000542:	6923      	ldr	r3, [r4, #16]
d0000544:	b94b      	cbnz	r3, d000055a <__swsetup_r+0x9a>
d0000546:	89a3      	ldrh	r3, [r4, #12]
d0000548:	f403 7320 	and.w	r3, r3, #640	; 0x280
d000054c:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
d0000550:	d003      	beq.n	d000055a <__swsetup_r+0x9a>
d0000552:	4621      	mov	r1, r4
d0000554:	4630      	mov	r0, r6
d0000556:	f000 f9ff 	bl	d0000958 <__smakebuf_r>
d000055a:	89a0      	ldrh	r0, [r4, #12]
d000055c:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
d0000560:	f010 0301 	ands.w	r3, r0, #1
d0000564:	d00a      	beq.n	d000057c <__swsetup_r+0xbc>
d0000566:	2300      	movs	r3, #0
d0000568:	60a3      	str	r3, [r4, #8]
d000056a:	6963      	ldr	r3, [r4, #20]
d000056c:	425b      	negs	r3, r3
d000056e:	61a3      	str	r3, [r4, #24]
d0000570:	6923      	ldr	r3, [r4, #16]
d0000572:	b943      	cbnz	r3, d0000586 <__swsetup_r+0xc6>
d0000574:	f010 0080 	ands.w	r0, r0, #128	; 0x80
d0000578:	d1ba      	bne.n	d00004f0 <__swsetup_r+0x30>
d000057a:	bd70      	pop	{r4, r5, r6, pc}
d000057c:	0781      	lsls	r1, r0, #30
d000057e:	bf58      	it	pl
d0000580:	6963      	ldrpl	r3, [r4, #20]
d0000582:	60a3      	str	r3, [r4, #8]
d0000584:	e7f4      	b.n	d0000570 <__swsetup_r+0xb0>
d0000586:	2000      	movs	r0, #0
d0000588:	e7f7      	b.n	d000057a <__swsetup_r+0xba>
d000058a:	bf00      	nop
d000058c:	d00014b8 	.word	0xd00014b8
d0000590:	d000143c 	.word	0xd000143c
d0000594:	d000145c 	.word	0xd000145c
d0000598:	d000141c 	.word	0xd000141c

d000059c <__sflush_r>:
d000059c:	898a      	ldrh	r2, [r1, #12]
d000059e:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
d00005a2:	4605      	mov	r5, r0
d00005a4:	0710      	lsls	r0, r2, #28
d00005a6:	460c      	mov	r4, r1
d00005a8:	d458      	bmi.n	d000065c <__sflush_r+0xc0>
d00005aa:	684b      	ldr	r3, [r1, #4]
d00005ac:	2b00      	cmp	r3, #0
d00005ae:	dc05      	bgt.n	d00005bc <__sflush_r+0x20>
d00005b0:	6c0b      	ldr	r3, [r1, #64]	; 0x40
d00005b2:	2b00      	cmp	r3, #0
d00005b4:	dc02      	bgt.n	d00005bc <__sflush_r+0x20>
d00005b6:	2000      	movs	r0, #0
d00005b8:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
d00005bc:	6ae6      	ldr	r6, [r4, #44]	; 0x2c
d00005be:	2e00      	cmp	r6, #0
d00005c0:	d0f9      	beq.n	d00005b6 <__sflush_r+0x1a>
d00005c2:	2300      	movs	r3, #0
d00005c4:	f412 5280 	ands.w	r2, r2, #4096	; 0x1000
d00005c8:	682f      	ldr	r7, [r5, #0]
d00005ca:	602b      	str	r3, [r5, #0]
d00005cc:	d032      	beq.n	d0000634 <__sflush_r+0x98>
d00005ce:	6d60      	ldr	r0, [r4, #84]	; 0x54
d00005d0:	89a3      	ldrh	r3, [r4, #12]
d00005d2:	075a      	lsls	r2, r3, #29
d00005d4:	d505      	bpl.n	d00005e2 <__sflush_r+0x46>
d00005d6:	6863      	ldr	r3, [r4, #4]
d00005d8:	1ac0      	subs	r0, r0, r3
d00005da:	6b63      	ldr	r3, [r4, #52]	; 0x34
d00005dc:	b10b      	cbz	r3, d00005e2 <__sflush_r+0x46>
d00005de:	6c23      	ldr	r3, [r4, #64]	; 0x40
d00005e0:	1ac0      	subs	r0, r0, r3
d00005e2:	2300      	movs	r3, #0
d00005e4:	4602      	mov	r2, r0
d00005e6:	6ae6      	ldr	r6, [r4, #44]	; 0x2c
d00005e8:	6a21      	ldr	r1, [r4, #32]
d00005ea:	4628      	mov	r0, r5
d00005ec:	47b0      	blx	r6
d00005ee:	1c43      	adds	r3, r0, #1
d00005f0:	89a3      	ldrh	r3, [r4, #12]
d00005f2:	d106      	bne.n	d0000602 <__sflush_r+0x66>
d00005f4:	6829      	ldr	r1, [r5, #0]
d00005f6:	291d      	cmp	r1, #29
d00005f8:	d82c      	bhi.n	d0000654 <__sflush_r+0xb8>
d00005fa:	4a2a      	ldr	r2, [pc, #168]	; (d00006a4 <__sflush_r+0x108>)
d00005fc:	40ca      	lsrs	r2, r1
d00005fe:	07d6      	lsls	r6, r2, #31
d0000600:	d528      	bpl.n	d0000654 <__sflush_r+0xb8>
d0000602:	2200      	movs	r2, #0
d0000604:	6062      	str	r2, [r4, #4]
d0000606:	04d9      	lsls	r1, r3, #19
d0000608:	6922      	ldr	r2, [r4, #16]
d000060a:	6022      	str	r2, [r4, #0]
d000060c:	d504      	bpl.n	d0000618 <__sflush_r+0x7c>
d000060e:	1c42      	adds	r2, r0, #1
d0000610:	d101      	bne.n	d0000616 <__sflush_r+0x7a>
d0000612:	682b      	ldr	r3, [r5, #0]
d0000614:	b903      	cbnz	r3, d0000618 <__sflush_r+0x7c>
d0000616:	6560      	str	r0, [r4, #84]	; 0x54
d0000618:	6b61      	ldr	r1, [r4, #52]	; 0x34
d000061a:	602f      	str	r7, [r5, #0]
d000061c:	2900      	cmp	r1, #0
d000061e:	d0ca      	beq.n	d00005b6 <__sflush_r+0x1a>
d0000620:	f104 0344 	add.w	r3, r4, #68	; 0x44
d0000624:	4299      	cmp	r1, r3
d0000626:	d002      	beq.n	d000062e <__sflush_r+0x92>
d0000628:	4628      	mov	r0, r5
d000062a:	f000 f9dd 	bl	d00009e8 <_free_r>
d000062e:	2000      	movs	r0, #0
d0000630:	6360      	str	r0, [r4, #52]	; 0x34
d0000632:	e7c1      	b.n	d00005b8 <__sflush_r+0x1c>
d0000634:	6a21      	ldr	r1, [r4, #32]
d0000636:	2301      	movs	r3, #1
d0000638:	4628      	mov	r0, r5
d000063a:	47b0      	blx	r6
d000063c:	1c41      	adds	r1, r0, #1
d000063e:	d1c7      	bne.n	d00005d0 <__sflush_r+0x34>
d0000640:	682b      	ldr	r3, [r5, #0]
d0000642:	2b00      	cmp	r3, #0
d0000644:	d0c4      	beq.n	d00005d0 <__sflush_r+0x34>
d0000646:	2b1d      	cmp	r3, #29
d0000648:	d001      	beq.n	d000064e <__sflush_r+0xb2>
d000064a:	2b16      	cmp	r3, #22
d000064c:	d101      	bne.n	d0000652 <__sflush_r+0xb6>
d000064e:	602f      	str	r7, [r5, #0]
d0000650:	e7b1      	b.n	d00005b6 <__sflush_r+0x1a>
d0000652:	89a3      	ldrh	r3, [r4, #12]
d0000654:	f043 0340 	orr.w	r3, r3, #64	; 0x40
d0000658:	81a3      	strh	r3, [r4, #12]
d000065a:	e7ad      	b.n	d00005b8 <__sflush_r+0x1c>
d000065c:	690f      	ldr	r7, [r1, #16]
d000065e:	2f00      	cmp	r7, #0
d0000660:	d0a9      	beq.n	d00005b6 <__sflush_r+0x1a>
d0000662:	0793      	lsls	r3, r2, #30
d0000664:	680e      	ldr	r6, [r1, #0]
d0000666:	bf08      	it	eq
d0000668:	694b      	ldreq	r3, [r1, #20]
d000066a:	600f      	str	r7, [r1, #0]
d000066c:	bf18      	it	ne
d000066e:	2300      	movne	r3, #0
d0000670:	eba6 0807 	sub.w	r8, r6, r7
d0000674:	608b      	str	r3, [r1, #8]
d0000676:	f1b8 0f00 	cmp.w	r8, #0
d000067a:	dd9c      	ble.n	d00005b6 <__sflush_r+0x1a>
d000067c:	6a21      	ldr	r1, [r4, #32]
d000067e:	6aa6      	ldr	r6, [r4, #40]	; 0x28
d0000680:	4643      	mov	r3, r8
d0000682:	463a      	mov	r2, r7
d0000684:	4628      	mov	r0, r5
d0000686:	47b0      	blx	r6
d0000688:	2800      	cmp	r0, #0
d000068a:	dc06      	bgt.n	d000069a <__sflush_r+0xfe>
d000068c:	89a3      	ldrh	r3, [r4, #12]
d000068e:	f043 0340 	orr.w	r3, r3, #64	; 0x40
d0000692:	81a3      	strh	r3, [r4, #12]
d0000694:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d0000698:	e78e      	b.n	d00005b8 <__sflush_r+0x1c>
d000069a:	4407      	add	r7, r0
d000069c:	eba8 0800 	sub.w	r8, r8, r0
d00006a0:	e7e9      	b.n	d0000676 <__sflush_r+0xda>
d00006a2:	bf00      	nop
d00006a4:	20400001 	.word	0x20400001

d00006a8 <_fflush_r>:
d00006a8:	b538      	push	{r3, r4, r5, lr}
d00006aa:	690b      	ldr	r3, [r1, #16]
d00006ac:	4605      	mov	r5, r0
d00006ae:	460c      	mov	r4, r1
d00006b0:	b913      	cbnz	r3, d00006b8 <_fflush_r+0x10>
d00006b2:	2500      	movs	r5, #0
d00006b4:	4628      	mov	r0, r5
d00006b6:	bd38      	pop	{r3, r4, r5, pc}
d00006b8:	b118      	cbz	r0, d00006c2 <_fflush_r+0x1a>
d00006ba:	6983      	ldr	r3, [r0, #24]
d00006bc:	b90b      	cbnz	r3, d00006c2 <_fflush_r+0x1a>
d00006be:	f000 f887 	bl	d00007d0 <__sinit>
d00006c2:	4b14      	ldr	r3, [pc, #80]	; (d0000714 <_fflush_r+0x6c>)
d00006c4:	429c      	cmp	r4, r3
d00006c6:	d11b      	bne.n	d0000700 <_fflush_r+0x58>
d00006c8:	686c      	ldr	r4, [r5, #4]
d00006ca:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
d00006ce:	2b00      	cmp	r3, #0
d00006d0:	d0ef      	beq.n	d00006b2 <_fflush_r+0xa>
d00006d2:	6e62      	ldr	r2, [r4, #100]	; 0x64
d00006d4:	07d0      	lsls	r0, r2, #31
d00006d6:	d404      	bmi.n	d00006e2 <_fflush_r+0x3a>
d00006d8:	0599      	lsls	r1, r3, #22
d00006da:	d402      	bmi.n	d00006e2 <_fflush_r+0x3a>
d00006dc:	6da0      	ldr	r0, [r4, #88]	; 0x58
d00006de:	f000 f915 	bl	d000090c <__retarget_lock_acquire_recursive>
d00006e2:	4628      	mov	r0, r5
d00006e4:	4621      	mov	r1, r4
d00006e6:	f7ff ff59 	bl	d000059c <__sflush_r>
d00006ea:	6e63      	ldr	r3, [r4, #100]	; 0x64
d00006ec:	07da      	lsls	r2, r3, #31
d00006ee:	4605      	mov	r5, r0
d00006f0:	d4e0      	bmi.n	d00006b4 <_fflush_r+0xc>
d00006f2:	89a3      	ldrh	r3, [r4, #12]
d00006f4:	059b      	lsls	r3, r3, #22
d00006f6:	d4dd      	bmi.n	d00006b4 <_fflush_r+0xc>
d00006f8:	6da0      	ldr	r0, [r4, #88]	; 0x58
d00006fa:	f000 f908 	bl	d000090e <__retarget_lock_release_recursive>
d00006fe:	e7d9      	b.n	d00006b4 <_fflush_r+0xc>
d0000700:	4b05      	ldr	r3, [pc, #20]	; (d0000718 <_fflush_r+0x70>)
d0000702:	429c      	cmp	r4, r3
d0000704:	d101      	bne.n	d000070a <_fflush_r+0x62>
d0000706:	68ac      	ldr	r4, [r5, #8]
d0000708:	e7df      	b.n	d00006ca <_fflush_r+0x22>
d000070a:	4b04      	ldr	r3, [pc, #16]	; (d000071c <_fflush_r+0x74>)
d000070c:	429c      	cmp	r4, r3
d000070e:	bf08      	it	eq
d0000710:	68ec      	ldreq	r4, [r5, #12]
d0000712:	e7da      	b.n	d00006ca <_fflush_r+0x22>
d0000714:	d000143c 	.word	0xd000143c
d0000718:	d000145c 	.word	0xd000145c
d000071c:	d000141c 	.word	0xd000141c

d0000720 <std>:
d0000720:	2300      	movs	r3, #0
d0000722:	b510      	push	{r4, lr}
d0000724:	4604      	mov	r4, r0
d0000726:	e9c0 3300 	strd	r3, r3, [r0]
d000072a:	e9c0 3304 	strd	r3, r3, [r0, #16]
d000072e:	6083      	str	r3, [r0, #8]
d0000730:	8181      	strh	r1, [r0, #12]
d0000732:	6643      	str	r3, [r0, #100]	; 0x64
d0000734:	81c2      	strh	r2, [r0, #14]
d0000736:	6183      	str	r3, [r0, #24]
d0000738:	4619      	mov	r1, r3
d000073a:	2208      	movs	r2, #8
d000073c:	305c      	adds	r0, #92	; 0x5c
d000073e:	f7ff fc7d 	bl	d000003c <memset>
d0000742:	4b05      	ldr	r3, [pc, #20]	; (d0000758 <std+0x38>)
d0000744:	6263      	str	r3, [r4, #36]	; 0x24
d0000746:	4b05      	ldr	r3, [pc, #20]	; (d000075c <std+0x3c>)
d0000748:	62a3      	str	r3, [r4, #40]	; 0x28
d000074a:	4b05      	ldr	r3, [pc, #20]	; (d0000760 <std+0x40>)
d000074c:	62e3      	str	r3, [r4, #44]	; 0x2c
d000074e:	4b05      	ldr	r3, [pc, #20]	; (d0000764 <std+0x44>)
d0000750:	6224      	str	r4, [r4, #32]
d0000752:	6323      	str	r3, [r4, #48]	; 0x30
d0000754:	bd10      	pop	{r4, pc}
d0000756:	bf00      	nop
d0000758:	d0001119 	.word	0xd0001119
d000075c:	d000113b 	.word	0xd000113b
d0000760:	d0001173 	.word	0xd0001173
d0000764:	d0001197 	.word	0xd0001197

d0000768 <_cleanup_r>:
d0000768:	4901      	ldr	r1, [pc, #4]	; (d0000770 <_cleanup_r+0x8>)
d000076a:	f000 b8af 	b.w	d00008cc <_fwalk_reent>
d000076e:	bf00      	nop
d0000770:	d00006a9 	.word	0xd00006a9

d0000774 <__sfmoreglue>:
d0000774:	b570      	push	{r4, r5, r6, lr}
d0000776:	1e4a      	subs	r2, r1, #1
d0000778:	2568      	movs	r5, #104	; 0x68
d000077a:	4355      	muls	r5, r2
d000077c:	460e      	mov	r6, r1
d000077e:	f105 0174 	add.w	r1, r5, #116	; 0x74
d0000782:	f000 f981 	bl	d0000a88 <_malloc_r>
d0000786:	4604      	mov	r4, r0
d0000788:	b140      	cbz	r0, d000079c <__sfmoreglue+0x28>
d000078a:	2100      	movs	r1, #0
d000078c:	e9c0 1600 	strd	r1, r6, [r0]
d0000790:	300c      	adds	r0, #12
d0000792:	60a0      	str	r0, [r4, #8]
d0000794:	f105 0268 	add.w	r2, r5, #104	; 0x68
d0000798:	f7ff fc50 	bl	d000003c <memset>
d000079c:	4620      	mov	r0, r4
d000079e:	bd70      	pop	{r4, r5, r6, pc}

d00007a0 <__sfp_lock_acquire>:
d00007a0:	4801      	ldr	r0, [pc, #4]	; (d00007a8 <__sfp_lock_acquire+0x8>)
d00007a2:	f000 b8b3 	b.w	d000090c <__retarget_lock_acquire_recursive>
d00007a6:	bf00      	nop
d00007a8:	d0001534 	.word	0xd0001534

d00007ac <__sfp_lock_release>:
d00007ac:	4801      	ldr	r0, [pc, #4]	; (d00007b4 <__sfp_lock_release+0x8>)
d00007ae:	f000 b8ae 	b.w	d000090e <__retarget_lock_release_recursive>
d00007b2:	bf00      	nop
d00007b4:	d0001534 	.word	0xd0001534

d00007b8 <__sinit_lock_acquire>:
d00007b8:	4801      	ldr	r0, [pc, #4]	; (d00007c0 <__sinit_lock_acquire+0x8>)
d00007ba:	f000 b8a7 	b.w	d000090c <__retarget_lock_acquire_recursive>
d00007be:	bf00      	nop
d00007c0:	d000152f 	.word	0xd000152f

d00007c4 <__sinit_lock_release>:
d00007c4:	4801      	ldr	r0, [pc, #4]	; (d00007cc <__sinit_lock_release+0x8>)
d00007c6:	f000 b8a2 	b.w	d000090e <__retarget_lock_release_recursive>
d00007ca:	bf00      	nop
d00007cc:	d000152f 	.word	0xd000152f

d00007d0 <__sinit>:
d00007d0:	b510      	push	{r4, lr}
d00007d2:	4604      	mov	r4, r0
d00007d4:	f7ff fff0 	bl	d00007b8 <__sinit_lock_acquire>
d00007d8:	69a3      	ldr	r3, [r4, #24]
d00007da:	b11b      	cbz	r3, d00007e4 <__sinit+0x14>
d00007dc:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
d00007e0:	f7ff bff0 	b.w	d00007c4 <__sinit_lock_release>
d00007e4:	e9c4 3312 	strd	r3, r3, [r4, #72]	; 0x48
d00007e8:	6523      	str	r3, [r4, #80]	; 0x50
d00007ea:	4b13      	ldr	r3, [pc, #76]	; (d0000838 <__sinit+0x68>)
d00007ec:	4a13      	ldr	r2, [pc, #76]	; (d000083c <__sinit+0x6c>)
d00007ee:	681b      	ldr	r3, [r3, #0]
d00007f0:	62a2      	str	r2, [r4, #40]	; 0x28
d00007f2:	42a3      	cmp	r3, r4
d00007f4:	bf04      	itt	eq
d00007f6:	2301      	moveq	r3, #1
d00007f8:	61a3      	streq	r3, [r4, #24]
d00007fa:	4620      	mov	r0, r4
d00007fc:	f000 f820 	bl	d0000840 <__sfp>
d0000800:	6060      	str	r0, [r4, #4]
d0000802:	4620      	mov	r0, r4
d0000804:	f000 f81c 	bl	d0000840 <__sfp>
d0000808:	60a0      	str	r0, [r4, #8]
d000080a:	4620      	mov	r0, r4
d000080c:	f000 f818 	bl	d0000840 <__sfp>
d0000810:	2200      	movs	r2, #0
d0000812:	60e0      	str	r0, [r4, #12]
d0000814:	2104      	movs	r1, #4
d0000816:	6860      	ldr	r0, [r4, #4]
d0000818:	f7ff ff82 	bl	d0000720 <std>
d000081c:	68a0      	ldr	r0, [r4, #8]
d000081e:	2201      	movs	r2, #1
d0000820:	2109      	movs	r1, #9
d0000822:	f7ff ff7d 	bl	d0000720 <std>
d0000826:	68e0      	ldr	r0, [r4, #12]
d0000828:	2202      	movs	r2, #2
d000082a:	2112      	movs	r1, #18
d000082c:	f7ff ff78 	bl	d0000720 <std>
d0000830:	2301      	movs	r3, #1
d0000832:	61a3      	str	r3, [r4, #24]
d0000834:	e7d2      	b.n	d00007dc <__sinit+0xc>
d0000836:	bf00      	nop
d0000838:	d000130c 	.word	0xd000130c
d000083c:	d0000769 	.word	0xd0000769

d0000840 <__sfp>:
d0000840:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d0000842:	4607      	mov	r7, r0
d0000844:	f7ff ffac 	bl	d00007a0 <__sfp_lock_acquire>
d0000848:	4b1e      	ldr	r3, [pc, #120]	; (d00008c4 <__sfp+0x84>)
d000084a:	681e      	ldr	r6, [r3, #0]
d000084c:	69b3      	ldr	r3, [r6, #24]
d000084e:	b913      	cbnz	r3, d0000856 <__sfp+0x16>
d0000850:	4630      	mov	r0, r6
d0000852:	f7ff ffbd 	bl	d00007d0 <__sinit>
d0000856:	3648      	adds	r6, #72	; 0x48
d0000858:	e9d6 3401 	ldrd	r3, r4, [r6, #4]
d000085c:	3b01      	subs	r3, #1
d000085e:	d503      	bpl.n	d0000868 <__sfp+0x28>
d0000860:	6833      	ldr	r3, [r6, #0]
d0000862:	b30b      	cbz	r3, d00008a8 <__sfp+0x68>
d0000864:	6836      	ldr	r6, [r6, #0]
d0000866:	e7f7      	b.n	d0000858 <__sfp+0x18>
d0000868:	f9b4 500c 	ldrsh.w	r5, [r4, #12]
d000086c:	b9d5      	cbnz	r5, d00008a4 <__sfp+0x64>
d000086e:	4b16      	ldr	r3, [pc, #88]	; (d00008c8 <__sfp+0x88>)
d0000870:	60e3      	str	r3, [r4, #12]
d0000872:	f104 0058 	add.w	r0, r4, #88	; 0x58
d0000876:	6665      	str	r5, [r4, #100]	; 0x64
d0000878:	f000 f847 	bl	d000090a <__retarget_lock_init_recursive>
d000087c:	f7ff ff96 	bl	d00007ac <__sfp_lock_release>
d0000880:	e9c4 5501 	strd	r5, r5, [r4, #4]
d0000884:	e9c4 5504 	strd	r5, r5, [r4, #16]
d0000888:	6025      	str	r5, [r4, #0]
d000088a:	61a5      	str	r5, [r4, #24]
d000088c:	2208      	movs	r2, #8
d000088e:	4629      	mov	r1, r5
d0000890:	f104 005c 	add.w	r0, r4, #92	; 0x5c
d0000894:	f7ff fbd2 	bl	d000003c <memset>
d0000898:	e9c4 550d 	strd	r5, r5, [r4, #52]	; 0x34
d000089c:	e9c4 5512 	strd	r5, r5, [r4, #72]	; 0x48
d00008a0:	4620      	mov	r0, r4
d00008a2:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d00008a4:	3468      	adds	r4, #104	; 0x68
d00008a6:	e7d9      	b.n	d000085c <__sfp+0x1c>
d00008a8:	2104      	movs	r1, #4
d00008aa:	4638      	mov	r0, r7
d00008ac:	f7ff ff62 	bl	d0000774 <__sfmoreglue>
d00008b0:	4604      	mov	r4, r0
d00008b2:	6030      	str	r0, [r6, #0]
d00008b4:	2800      	cmp	r0, #0
d00008b6:	d1d5      	bne.n	d0000864 <__sfp+0x24>
d00008b8:	f7ff ff78 	bl	d00007ac <__sfp_lock_release>
d00008bc:	230c      	movs	r3, #12
d00008be:	603b      	str	r3, [r7, #0]
d00008c0:	e7ee      	b.n	d00008a0 <__sfp+0x60>
d00008c2:	bf00      	nop
d00008c4:	d000130c 	.word	0xd000130c
d00008c8:	ffff0001 	.word	0xffff0001

d00008cc <_fwalk_reent>:
d00008cc:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
d00008d0:	4606      	mov	r6, r0
d00008d2:	4688      	mov	r8, r1
d00008d4:	f100 0448 	add.w	r4, r0, #72	; 0x48
d00008d8:	2700      	movs	r7, #0
d00008da:	e9d4 9501 	ldrd	r9, r5, [r4, #4]
d00008de:	f1b9 0901 	subs.w	r9, r9, #1
d00008e2:	d505      	bpl.n	d00008f0 <_fwalk_reent+0x24>
d00008e4:	6824      	ldr	r4, [r4, #0]
d00008e6:	2c00      	cmp	r4, #0
d00008e8:	d1f7      	bne.n	d00008da <_fwalk_reent+0xe>
d00008ea:	4638      	mov	r0, r7
d00008ec:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
d00008f0:	89ab      	ldrh	r3, [r5, #12]
d00008f2:	2b01      	cmp	r3, #1
d00008f4:	d907      	bls.n	d0000906 <_fwalk_reent+0x3a>
d00008f6:	f9b5 300e 	ldrsh.w	r3, [r5, #14]
d00008fa:	3301      	adds	r3, #1
d00008fc:	d003      	beq.n	d0000906 <_fwalk_reent+0x3a>
d00008fe:	4629      	mov	r1, r5
d0000900:	4630      	mov	r0, r6
d0000902:	47c0      	blx	r8
d0000904:	4307      	orrs	r7, r0
d0000906:	3568      	adds	r5, #104	; 0x68
d0000908:	e7e9      	b.n	d00008de <_fwalk_reent+0x12>

d000090a <__retarget_lock_init_recursive>:
d000090a:	4770      	bx	lr

d000090c <__retarget_lock_acquire_recursive>:
d000090c:	4770      	bx	lr

d000090e <__retarget_lock_release_recursive>:
d000090e:	4770      	bx	lr

d0000910 <__swhatbuf_r>:
d0000910:	b570      	push	{r4, r5, r6, lr}
d0000912:	460e      	mov	r6, r1
d0000914:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d0000918:	2900      	cmp	r1, #0
d000091a:	b096      	sub	sp, #88	; 0x58
d000091c:	4614      	mov	r4, r2
d000091e:	461d      	mov	r5, r3
d0000920:	da07      	bge.n	d0000932 <__swhatbuf_r+0x22>
d0000922:	2300      	movs	r3, #0
d0000924:	602b      	str	r3, [r5, #0]
d0000926:	89b3      	ldrh	r3, [r6, #12]
d0000928:	061a      	lsls	r2, r3, #24
d000092a:	d410      	bmi.n	d000094e <__swhatbuf_r+0x3e>
d000092c:	f44f 6380 	mov.w	r3, #1024	; 0x400
d0000930:	e00e      	b.n	d0000950 <__swhatbuf_r+0x40>
d0000932:	466a      	mov	r2, sp
d0000934:	f000 fc44 	bl	d00011c0 <_fstat_r>
d0000938:	2800      	cmp	r0, #0
d000093a:	dbf2      	blt.n	d0000922 <__swhatbuf_r+0x12>
d000093c:	9a01      	ldr	r2, [sp, #4]
d000093e:	f402 4270 	and.w	r2, r2, #61440	; 0xf000
d0000942:	f5a2 5300 	sub.w	r3, r2, #8192	; 0x2000
d0000946:	425a      	negs	r2, r3
d0000948:	415a      	adcs	r2, r3
d000094a:	602a      	str	r2, [r5, #0]
d000094c:	e7ee      	b.n	d000092c <__swhatbuf_r+0x1c>
d000094e:	2340      	movs	r3, #64	; 0x40
d0000950:	2000      	movs	r0, #0
d0000952:	6023      	str	r3, [r4, #0]
d0000954:	b016      	add	sp, #88	; 0x58
d0000956:	bd70      	pop	{r4, r5, r6, pc}

d0000958 <__smakebuf_r>:
d0000958:	898b      	ldrh	r3, [r1, #12]
d000095a:	b573      	push	{r0, r1, r4, r5, r6, lr}
d000095c:	079d      	lsls	r5, r3, #30
d000095e:	4606      	mov	r6, r0
d0000960:	460c      	mov	r4, r1
d0000962:	d507      	bpl.n	d0000974 <__smakebuf_r+0x1c>
d0000964:	f104 0347 	add.w	r3, r4, #71	; 0x47
d0000968:	6023      	str	r3, [r4, #0]
d000096a:	6123      	str	r3, [r4, #16]
d000096c:	2301      	movs	r3, #1
d000096e:	6163      	str	r3, [r4, #20]
d0000970:	b002      	add	sp, #8
d0000972:	bd70      	pop	{r4, r5, r6, pc}
d0000974:	ab01      	add	r3, sp, #4
d0000976:	466a      	mov	r2, sp
d0000978:	f7ff ffca 	bl	d0000910 <__swhatbuf_r>
d000097c:	9900      	ldr	r1, [sp, #0]
d000097e:	4605      	mov	r5, r0
d0000980:	4630      	mov	r0, r6
d0000982:	f000 f881 	bl	d0000a88 <_malloc_r>
d0000986:	b948      	cbnz	r0, d000099c <__smakebuf_r+0x44>
d0000988:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
d000098c:	059a      	lsls	r2, r3, #22
d000098e:	d4ef      	bmi.n	d0000970 <__smakebuf_r+0x18>
d0000990:	f023 0303 	bic.w	r3, r3, #3
d0000994:	f043 0302 	orr.w	r3, r3, #2
d0000998:	81a3      	strh	r3, [r4, #12]
d000099a:	e7e3      	b.n	d0000964 <__smakebuf_r+0xc>
d000099c:	4b0d      	ldr	r3, [pc, #52]	; (d00009d4 <__smakebuf_r+0x7c>)
d000099e:	62b3      	str	r3, [r6, #40]	; 0x28
d00009a0:	89a3      	ldrh	r3, [r4, #12]
d00009a2:	6020      	str	r0, [r4, #0]
d00009a4:	f043 0380 	orr.w	r3, r3, #128	; 0x80
d00009a8:	81a3      	strh	r3, [r4, #12]
d00009aa:	9b00      	ldr	r3, [sp, #0]
d00009ac:	6163      	str	r3, [r4, #20]
d00009ae:	9b01      	ldr	r3, [sp, #4]
d00009b0:	6120      	str	r0, [r4, #16]
d00009b2:	b15b      	cbz	r3, d00009cc <__smakebuf_r+0x74>
d00009b4:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
d00009b8:	4630      	mov	r0, r6
d00009ba:	f000 fc13 	bl	d00011e4 <_isatty_r>
d00009be:	b128      	cbz	r0, d00009cc <__smakebuf_r+0x74>
d00009c0:	89a3      	ldrh	r3, [r4, #12]
d00009c2:	f023 0303 	bic.w	r3, r3, #3
d00009c6:	f043 0301 	orr.w	r3, r3, #1
d00009ca:	81a3      	strh	r3, [r4, #12]
d00009cc:	89a0      	ldrh	r0, [r4, #12]
d00009ce:	4305      	orrs	r5, r0
d00009d0:	81a5      	strh	r5, [r4, #12]
d00009d2:	e7cd      	b.n	d0000970 <__smakebuf_r+0x18>
d00009d4:	d0000769 	.word	0xd0000769

d00009d8 <malloc>:
d00009d8:	4b02      	ldr	r3, [pc, #8]	; (d00009e4 <malloc+0xc>)
d00009da:	4601      	mov	r1, r0
d00009dc:	6818      	ldr	r0, [r3, #0]
d00009de:	f000 b853 	b.w	d0000a88 <_malloc_r>
d00009e2:	bf00      	nop
d00009e4:	d00014b8 	.word	0xd00014b8

d00009e8 <_free_r>:
d00009e8:	b537      	push	{r0, r1, r2, r4, r5, lr}
d00009ea:	2900      	cmp	r1, #0
d00009ec:	d048      	beq.n	d0000a80 <_free_r+0x98>
d00009ee:	f851 3c04 	ldr.w	r3, [r1, #-4]
d00009f2:	9001      	str	r0, [sp, #4]
d00009f4:	2b00      	cmp	r3, #0
d00009f6:	f1a1 0404 	sub.w	r4, r1, #4
d00009fa:	bfb8      	it	lt
d00009fc:	18e4      	addlt	r4, r4, r3
d00009fe:	f000 fc67 	bl	d00012d0 <__malloc_lock>
d0000a02:	4a20      	ldr	r2, [pc, #128]	; (d0000a84 <_free_r+0x9c>)
d0000a04:	9801      	ldr	r0, [sp, #4]
d0000a06:	6813      	ldr	r3, [r2, #0]
d0000a08:	4615      	mov	r5, r2
d0000a0a:	b933      	cbnz	r3, d0000a1a <_free_r+0x32>
d0000a0c:	6063      	str	r3, [r4, #4]
d0000a0e:	6014      	str	r4, [r2, #0]
d0000a10:	b003      	add	sp, #12
d0000a12:	e8bd 4030 	ldmia.w	sp!, {r4, r5, lr}
d0000a16:	f000 bc61 	b.w	d00012dc <__malloc_unlock>
d0000a1a:	42a3      	cmp	r3, r4
d0000a1c:	d90b      	bls.n	d0000a36 <_free_r+0x4e>
d0000a1e:	6821      	ldr	r1, [r4, #0]
d0000a20:	1862      	adds	r2, r4, r1
d0000a22:	4293      	cmp	r3, r2
d0000a24:	bf04      	itt	eq
d0000a26:	681a      	ldreq	r2, [r3, #0]
d0000a28:	685b      	ldreq	r3, [r3, #4]
d0000a2a:	6063      	str	r3, [r4, #4]
d0000a2c:	bf04      	itt	eq
d0000a2e:	1852      	addeq	r2, r2, r1
d0000a30:	6022      	streq	r2, [r4, #0]
d0000a32:	602c      	str	r4, [r5, #0]
d0000a34:	e7ec      	b.n	d0000a10 <_free_r+0x28>
d0000a36:	461a      	mov	r2, r3
d0000a38:	685b      	ldr	r3, [r3, #4]
d0000a3a:	b10b      	cbz	r3, d0000a40 <_free_r+0x58>
d0000a3c:	42a3      	cmp	r3, r4
d0000a3e:	d9fa      	bls.n	d0000a36 <_free_r+0x4e>
d0000a40:	6811      	ldr	r1, [r2, #0]
d0000a42:	1855      	adds	r5, r2, r1
d0000a44:	42a5      	cmp	r5, r4
d0000a46:	d10b      	bne.n	d0000a60 <_free_r+0x78>
d0000a48:	6824      	ldr	r4, [r4, #0]
d0000a4a:	4421      	add	r1, r4
d0000a4c:	1854      	adds	r4, r2, r1
d0000a4e:	42a3      	cmp	r3, r4
d0000a50:	6011      	str	r1, [r2, #0]
d0000a52:	d1dd      	bne.n	d0000a10 <_free_r+0x28>
d0000a54:	681c      	ldr	r4, [r3, #0]
d0000a56:	685b      	ldr	r3, [r3, #4]
d0000a58:	6053      	str	r3, [r2, #4]
d0000a5a:	4421      	add	r1, r4
d0000a5c:	6011      	str	r1, [r2, #0]
d0000a5e:	e7d7      	b.n	d0000a10 <_free_r+0x28>
d0000a60:	d902      	bls.n	d0000a68 <_free_r+0x80>
d0000a62:	230c      	movs	r3, #12
d0000a64:	6003      	str	r3, [r0, #0]
d0000a66:	e7d3      	b.n	d0000a10 <_free_r+0x28>
d0000a68:	6825      	ldr	r5, [r4, #0]
d0000a6a:	1961      	adds	r1, r4, r5
d0000a6c:	428b      	cmp	r3, r1
d0000a6e:	bf04      	itt	eq
d0000a70:	6819      	ldreq	r1, [r3, #0]
d0000a72:	685b      	ldreq	r3, [r3, #4]
d0000a74:	6063      	str	r3, [r4, #4]
d0000a76:	bf04      	itt	eq
d0000a78:	1949      	addeq	r1, r1, r5
d0000a7a:	6021      	streq	r1, [r4, #0]
d0000a7c:	6054      	str	r4, [r2, #4]
d0000a7e:	e7c7      	b.n	d0000a10 <_free_r+0x28>
d0000a80:	b003      	add	sp, #12
d0000a82:	bd30      	pop	{r4, r5, pc}
d0000a84:	d0001524 	.word	0xd0001524

d0000a88 <_malloc_r>:
d0000a88:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d0000a8a:	1ccd      	adds	r5, r1, #3
d0000a8c:	f025 0503 	bic.w	r5, r5, #3
d0000a90:	3508      	adds	r5, #8
d0000a92:	2d0c      	cmp	r5, #12
d0000a94:	bf38      	it	cc
d0000a96:	250c      	movcc	r5, #12
d0000a98:	2d00      	cmp	r5, #0
d0000a9a:	4606      	mov	r6, r0
d0000a9c:	db01      	blt.n	d0000aa2 <_malloc_r+0x1a>
d0000a9e:	42a9      	cmp	r1, r5
d0000aa0:	d903      	bls.n	d0000aaa <_malloc_r+0x22>
d0000aa2:	230c      	movs	r3, #12
d0000aa4:	6033      	str	r3, [r6, #0]
d0000aa6:	2000      	movs	r0, #0
d0000aa8:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d0000aaa:	f000 fc11 	bl	d00012d0 <__malloc_lock>
d0000aae:	4921      	ldr	r1, [pc, #132]	; (d0000b34 <_malloc_r+0xac>)
d0000ab0:	680a      	ldr	r2, [r1, #0]
d0000ab2:	4614      	mov	r4, r2
d0000ab4:	b99c      	cbnz	r4, d0000ade <_malloc_r+0x56>
d0000ab6:	4f20      	ldr	r7, [pc, #128]	; (d0000b38 <_malloc_r+0xb0>)
d0000ab8:	683b      	ldr	r3, [r7, #0]
d0000aba:	b923      	cbnz	r3, d0000ac6 <_malloc_r+0x3e>
d0000abc:	4621      	mov	r1, r4
d0000abe:	4630      	mov	r0, r6
d0000ac0:	f7ff fb0a 	bl	d00000d8 <_sbrk_r>
d0000ac4:	6038      	str	r0, [r7, #0]
d0000ac6:	4629      	mov	r1, r5
d0000ac8:	4630      	mov	r0, r6
d0000aca:	f7ff fb05 	bl	d00000d8 <_sbrk_r>
d0000ace:	1c43      	adds	r3, r0, #1
d0000ad0:	d123      	bne.n	d0000b1a <_malloc_r+0x92>
d0000ad2:	230c      	movs	r3, #12
d0000ad4:	6033      	str	r3, [r6, #0]
d0000ad6:	4630      	mov	r0, r6
d0000ad8:	f000 fc00 	bl	d00012dc <__malloc_unlock>
d0000adc:	e7e3      	b.n	d0000aa6 <_malloc_r+0x1e>
d0000ade:	6823      	ldr	r3, [r4, #0]
d0000ae0:	1b5b      	subs	r3, r3, r5
d0000ae2:	d417      	bmi.n	d0000b14 <_malloc_r+0x8c>
d0000ae4:	2b0b      	cmp	r3, #11
d0000ae6:	d903      	bls.n	d0000af0 <_malloc_r+0x68>
d0000ae8:	6023      	str	r3, [r4, #0]
d0000aea:	441c      	add	r4, r3
d0000aec:	6025      	str	r5, [r4, #0]
d0000aee:	e004      	b.n	d0000afa <_malloc_r+0x72>
d0000af0:	6863      	ldr	r3, [r4, #4]
d0000af2:	42a2      	cmp	r2, r4
d0000af4:	bf0c      	ite	eq
d0000af6:	600b      	streq	r3, [r1, #0]
d0000af8:	6053      	strne	r3, [r2, #4]
d0000afa:	4630      	mov	r0, r6
d0000afc:	f000 fbee 	bl	d00012dc <__malloc_unlock>
d0000b00:	f104 000b 	add.w	r0, r4, #11
d0000b04:	1d23      	adds	r3, r4, #4
d0000b06:	f020 0007 	bic.w	r0, r0, #7
d0000b0a:	1ac2      	subs	r2, r0, r3
d0000b0c:	d0cc      	beq.n	d0000aa8 <_malloc_r+0x20>
d0000b0e:	1a1b      	subs	r3, r3, r0
d0000b10:	50a3      	str	r3, [r4, r2]
d0000b12:	e7c9      	b.n	d0000aa8 <_malloc_r+0x20>
d0000b14:	4622      	mov	r2, r4
d0000b16:	6864      	ldr	r4, [r4, #4]
d0000b18:	e7cc      	b.n	d0000ab4 <_malloc_r+0x2c>
d0000b1a:	1cc4      	adds	r4, r0, #3
d0000b1c:	f024 0403 	bic.w	r4, r4, #3
d0000b20:	42a0      	cmp	r0, r4
d0000b22:	d0e3      	beq.n	d0000aec <_malloc_r+0x64>
d0000b24:	1a21      	subs	r1, r4, r0
d0000b26:	4630      	mov	r0, r6
d0000b28:	f7ff fad6 	bl	d00000d8 <_sbrk_r>
d0000b2c:	3001      	adds	r0, #1
d0000b2e:	d1dd      	bne.n	d0000aec <_malloc_r+0x64>
d0000b30:	e7cf      	b.n	d0000ad2 <_malloc_r+0x4a>
d0000b32:	bf00      	nop
d0000b34:	d0001524 	.word	0xd0001524
d0000b38:	d0001528 	.word	0xd0001528

d0000b3c <__sfputc_r>:
d0000b3c:	6893      	ldr	r3, [r2, #8]
d0000b3e:	3b01      	subs	r3, #1
d0000b40:	2b00      	cmp	r3, #0
d0000b42:	b410      	push	{r4}
d0000b44:	6093      	str	r3, [r2, #8]
d0000b46:	da08      	bge.n	d0000b5a <__sfputc_r+0x1e>
d0000b48:	6994      	ldr	r4, [r2, #24]
d0000b4a:	42a3      	cmp	r3, r4
d0000b4c:	db01      	blt.n	d0000b52 <__sfputc_r+0x16>
d0000b4e:	290a      	cmp	r1, #10
d0000b50:	d103      	bne.n	d0000b5a <__sfputc_r+0x1e>
d0000b52:	f85d 4b04 	ldr.w	r4, [sp], #4
d0000b56:	f7ff bc61 	b.w	d000041c <__swbuf_r>
d0000b5a:	6813      	ldr	r3, [r2, #0]
d0000b5c:	1c58      	adds	r0, r3, #1
d0000b5e:	6010      	str	r0, [r2, #0]
d0000b60:	7019      	strb	r1, [r3, #0]
d0000b62:	4608      	mov	r0, r1
d0000b64:	f85d 4b04 	ldr.w	r4, [sp], #4
d0000b68:	4770      	bx	lr

d0000b6a <__sfputs_r>:
d0000b6a:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d0000b6c:	4606      	mov	r6, r0
d0000b6e:	460f      	mov	r7, r1
d0000b70:	4614      	mov	r4, r2
d0000b72:	18d5      	adds	r5, r2, r3
d0000b74:	42ac      	cmp	r4, r5
d0000b76:	d101      	bne.n	d0000b7c <__sfputs_r+0x12>
d0000b78:	2000      	movs	r0, #0
d0000b7a:	e007      	b.n	d0000b8c <__sfputs_r+0x22>
d0000b7c:	f814 1b01 	ldrb.w	r1, [r4], #1
d0000b80:	463a      	mov	r2, r7
d0000b82:	4630      	mov	r0, r6
d0000b84:	f7ff ffda 	bl	d0000b3c <__sfputc_r>
d0000b88:	1c43      	adds	r3, r0, #1
d0000b8a:	d1f3      	bne.n	d0000b74 <__sfputs_r+0xa>
d0000b8c:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
	...

d0000b90 <_vfiprintf_r>:
d0000b90:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0000b94:	460d      	mov	r5, r1
d0000b96:	b09d      	sub	sp, #116	; 0x74
d0000b98:	4614      	mov	r4, r2
d0000b9a:	4698      	mov	r8, r3
d0000b9c:	4606      	mov	r6, r0
d0000b9e:	b118      	cbz	r0, d0000ba8 <_vfiprintf_r+0x18>
d0000ba0:	6983      	ldr	r3, [r0, #24]
d0000ba2:	b90b      	cbnz	r3, d0000ba8 <_vfiprintf_r+0x18>
d0000ba4:	f7ff fe14 	bl	d00007d0 <__sinit>
d0000ba8:	4b89      	ldr	r3, [pc, #548]	; (d0000dd0 <_vfiprintf_r+0x240>)
d0000baa:	429d      	cmp	r5, r3
d0000bac:	d11b      	bne.n	d0000be6 <_vfiprintf_r+0x56>
d0000bae:	6875      	ldr	r5, [r6, #4]
d0000bb0:	6e6b      	ldr	r3, [r5, #100]	; 0x64
d0000bb2:	07d9      	lsls	r1, r3, #31
d0000bb4:	d405      	bmi.n	d0000bc2 <_vfiprintf_r+0x32>
d0000bb6:	89ab      	ldrh	r3, [r5, #12]
d0000bb8:	059a      	lsls	r2, r3, #22
d0000bba:	d402      	bmi.n	d0000bc2 <_vfiprintf_r+0x32>
d0000bbc:	6da8      	ldr	r0, [r5, #88]	; 0x58
d0000bbe:	f7ff fea5 	bl	d000090c <__retarget_lock_acquire_recursive>
d0000bc2:	89ab      	ldrh	r3, [r5, #12]
d0000bc4:	071b      	lsls	r3, r3, #28
d0000bc6:	d501      	bpl.n	d0000bcc <_vfiprintf_r+0x3c>
d0000bc8:	692b      	ldr	r3, [r5, #16]
d0000bca:	b9eb      	cbnz	r3, d0000c08 <_vfiprintf_r+0x78>
d0000bcc:	4629      	mov	r1, r5
d0000bce:	4630      	mov	r0, r6
d0000bd0:	f7ff fc76 	bl	d00004c0 <__swsetup_r>
d0000bd4:	b1c0      	cbz	r0, d0000c08 <_vfiprintf_r+0x78>
d0000bd6:	6e6b      	ldr	r3, [r5, #100]	; 0x64
d0000bd8:	07dc      	lsls	r4, r3, #31
d0000bda:	d50e      	bpl.n	d0000bfa <_vfiprintf_r+0x6a>
d0000bdc:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d0000be0:	b01d      	add	sp, #116	; 0x74
d0000be2:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0000be6:	4b7b      	ldr	r3, [pc, #492]	; (d0000dd4 <_vfiprintf_r+0x244>)
d0000be8:	429d      	cmp	r5, r3
d0000bea:	d101      	bne.n	d0000bf0 <_vfiprintf_r+0x60>
d0000bec:	68b5      	ldr	r5, [r6, #8]
d0000bee:	e7df      	b.n	d0000bb0 <_vfiprintf_r+0x20>
d0000bf0:	4b79      	ldr	r3, [pc, #484]	; (d0000dd8 <_vfiprintf_r+0x248>)
d0000bf2:	429d      	cmp	r5, r3
d0000bf4:	bf08      	it	eq
d0000bf6:	68f5      	ldreq	r5, [r6, #12]
d0000bf8:	e7da      	b.n	d0000bb0 <_vfiprintf_r+0x20>
d0000bfa:	89ab      	ldrh	r3, [r5, #12]
d0000bfc:	0598      	lsls	r0, r3, #22
d0000bfe:	d4ed      	bmi.n	d0000bdc <_vfiprintf_r+0x4c>
d0000c00:	6da8      	ldr	r0, [r5, #88]	; 0x58
d0000c02:	f7ff fe84 	bl	d000090e <__retarget_lock_release_recursive>
d0000c06:	e7e9      	b.n	d0000bdc <_vfiprintf_r+0x4c>
d0000c08:	2300      	movs	r3, #0
d0000c0a:	9309      	str	r3, [sp, #36]	; 0x24
d0000c0c:	2320      	movs	r3, #32
d0000c0e:	f88d 3029 	strb.w	r3, [sp, #41]	; 0x29
d0000c12:	f8cd 800c 	str.w	r8, [sp, #12]
d0000c16:	2330      	movs	r3, #48	; 0x30
d0000c18:	f8df 81c0 	ldr.w	r8, [pc, #448]	; d0000ddc <_vfiprintf_r+0x24c>
d0000c1c:	f88d 302a 	strb.w	r3, [sp, #42]	; 0x2a
d0000c20:	f04f 0901 	mov.w	r9, #1
d0000c24:	4623      	mov	r3, r4
d0000c26:	469a      	mov	sl, r3
d0000c28:	f813 2b01 	ldrb.w	r2, [r3], #1
d0000c2c:	b10a      	cbz	r2, d0000c32 <_vfiprintf_r+0xa2>
d0000c2e:	2a25      	cmp	r2, #37	; 0x25
d0000c30:	d1f9      	bne.n	d0000c26 <_vfiprintf_r+0x96>
d0000c32:	ebba 0b04 	subs.w	fp, sl, r4
d0000c36:	d00b      	beq.n	d0000c50 <_vfiprintf_r+0xc0>
d0000c38:	465b      	mov	r3, fp
d0000c3a:	4622      	mov	r2, r4
d0000c3c:	4629      	mov	r1, r5
d0000c3e:	4630      	mov	r0, r6
d0000c40:	f7ff ff93 	bl	d0000b6a <__sfputs_r>
d0000c44:	3001      	adds	r0, #1
d0000c46:	f000 80aa 	beq.w	d0000d9e <_vfiprintf_r+0x20e>
d0000c4a:	9a09      	ldr	r2, [sp, #36]	; 0x24
d0000c4c:	445a      	add	r2, fp
d0000c4e:	9209      	str	r2, [sp, #36]	; 0x24
d0000c50:	f89a 3000 	ldrb.w	r3, [sl]
d0000c54:	2b00      	cmp	r3, #0
d0000c56:	f000 80a2 	beq.w	d0000d9e <_vfiprintf_r+0x20e>
d0000c5a:	2300      	movs	r3, #0
d0000c5c:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
d0000c60:	e9cd 2305 	strd	r2, r3, [sp, #20]
d0000c64:	f10a 0a01 	add.w	sl, sl, #1
d0000c68:	9304      	str	r3, [sp, #16]
d0000c6a:	9307      	str	r3, [sp, #28]
d0000c6c:	f88d 3053 	strb.w	r3, [sp, #83]	; 0x53
d0000c70:	931a      	str	r3, [sp, #104]	; 0x68
d0000c72:	4654      	mov	r4, sl
d0000c74:	2205      	movs	r2, #5
d0000c76:	f814 1b01 	ldrb.w	r1, [r4], #1
d0000c7a:	4858      	ldr	r0, [pc, #352]	; (d0000ddc <_vfiprintf_r+0x24c>)
d0000c7c:	f000 fad8 	bl	d0001230 <memchr>
d0000c80:	9a04      	ldr	r2, [sp, #16]
d0000c82:	b9d8      	cbnz	r0, d0000cbc <_vfiprintf_r+0x12c>
d0000c84:	06d1      	lsls	r1, r2, #27
d0000c86:	bf44      	itt	mi
d0000c88:	2320      	movmi	r3, #32
d0000c8a:	f88d 3053 	strbmi.w	r3, [sp, #83]	; 0x53
d0000c8e:	0713      	lsls	r3, r2, #28
d0000c90:	bf44      	itt	mi
d0000c92:	232b      	movmi	r3, #43	; 0x2b
d0000c94:	f88d 3053 	strbmi.w	r3, [sp, #83]	; 0x53
d0000c98:	f89a 3000 	ldrb.w	r3, [sl]
d0000c9c:	2b2a      	cmp	r3, #42	; 0x2a
d0000c9e:	d015      	beq.n	d0000ccc <_vfiprintf_r+0x13c>
d0000ca0:	9a07      	ldr	r2, [sp, #28]
d0000ca2:	4654      	mov	r4, sl
d0000ca4:	2000      	movs	r0, #0
d0000ca6:	f04f 0c0a 	mov.w	ip, #10
d0000caa:	4621      	mov	r1, r4
d0000cac:	f811 3b01 	ldrb.w	r3, [r1], #1
d0000cb0:	3b30      	subs	r3, #48	; 0x30
d0000cb2:	2b09      	cmp	r3, #9
d0000cb4:	d94e      	bls.n	d0000d54 <_vfiprintf_r+0x1c4>
d0000cb6:	b1b0      	cbz	r0, d0000ce6 <_vfiprintf_r+0x156>
d0000cb8:	9207      	str	r2, [sp, #28]
d0000cba:	e014      	b.n	d0000ce6 <_vfiprintf_r+0x156>
d0000cbc:	eba0 0308 	sub.w	r3, r0, r8
d0000cc0:	fa09 f303 	lsl.w	r3, r9, r3
d0000cc4:	4313      	orrs	r3, r2
d0000cc6:	9304      	str	r3, [sp, #16]
d0000cc8:	46a2      	mov	sl, r4
d0000cca:	e7d2      	b.n	d0000c72 <_vfiprintf_r+0xe2>
d0000ccc:	9b03      	ldr	r3, [sp, #12]
d0000cce:	1d19      	adds	r1, r3, #4
d0000cd0:	681b      	ldr	r3, [r3, #0]
d0000cd2:	9103      	str	r1, [sp, #12]
d0000cd4:	2b00      	cmp	r3, #0
d0000cd6:	bfbb      	ittet	lt
d0000cd8:	425b      	neglt	r3, r3
d0000cda:	f042 0202 	orrlt.w	r2, r2, #2
d0000cde:	9307      	strge	r3, [sp, #28]
d0000ce0:	9307      	strlt	r3, [sp, #28]
d0000ce2:	bfb8      	it	lt
d0000ce4:	9204      	strlt	r2, [sp, #16]
d0000ce6:	7823      	ldrb	r3, [r4, #0]
d0000ce8:	2b2e      	cmp	r3, #46	; 0x2e
d0000cea:	d10c      	bne.n	d0000d06 <_vfiprintf_r+0x176>
d0000cec:	7863      	ldrb	r3, [r4, #1]
d0000cee:	2b2a      	cmp	r3, #42	; 0x2a
d0000cf0:	d135      	bne.n	d0000d5e <_vfiprintf_r+0x1ce>
d0000cf2:	9b03      	ldr	r3, [sp, #12]
d0000cf4:	1d1a      	adds	r2, r3, #4
d0000cf6:	681b      	ldr	r3, [r3, #0]
d0000cf8:	9203      	str	r2, [sp, #12]
d0000cfa:	2b00      	cmp	r3, #0
d0000cfc:	bfb8      	it	lt
d0000cfe:	f04f 33ff 	movlt.w	r3, #4294967295	; 0xffffffff
d0000d02:	3402      	adds	r4, #2
d0000d04:	9305      	str	r3, [sp, #20]
d0000d06:	f8df a0e4 	ldr.w	sl, [pc, #228]	; d0000dec <_vfiprintf_r+0x25c>
d0000d0a:	7821      	ldrb	r1, [r4, #0]
d0000d0c:	2203      	movs	r2, #3
d0000d0e:	4650      	mov	r0, sl
d0000d10:	f000 fa8e 	bl	d0001230 <memchr>
d0000d14:	b140      	cbz	r0, d0000d28 <_vfiprintf_r+0x198>
d0000d16:	2340      	movs	r3, #64	; 0x40
d0000d18:	eba0 000a 	sub.w	r0, r0, sl
d0000d1c:	fa03 f000 	lsl.w	r0, r3, r0
d0000d20:	9b04      	ldr	r3, [sp, #16]
d0000d22:	4303      	orrs	r3, r0
d0000d24:	3401      	adds	r4, #1
d0000d26:	9304      	str	r3, [sp, #16]
d0000d28:	f814 1b01 	ldrb.w	r1, [r4], #1
d0000d2c:	482c      	ldr	r0, [pc, #176]	; (d0000de0 <_vfiprintf_r+0x250>)
d0000d2e:	f88d 1028 	strb.w	r1, [sp, #40]	; 0x28
d0000d32:	2206      	movs	r2, #6
d0000d34:	f000 fa7c 	bl	d0001230 <memchr>
d0000d38:	2800      	cmp	r0, #0
d0000d3a:	d03f      	beq.n	d0000dbc <_vfiprintf_r+0x22c>
d0000d3c:	4b29      	ldr	r3, [pc, #164]	; (d0000de4 <_vfiprintf_r+0x254>)
d0000d3e:	bb1b      	cbnz	r3, d0000d88 <_vfiprintf_r+0x1f8>
d0000d40:	9b03      	ldr	r3, [sp, #12]
d0000d42:	3307      	adds	r3, #7
d0000d44:	f023 0307 	bic.w	r3, r3, #7
d0000d48:	3308      	adds	r3, #8
d0000d4a:	9303      	str	r3, [sp, #12]
d0000d4c:	9b09      	ldr	r3, [sp, #36]	; 0x24
d0000d4e:	443b      	add	r3, r7
d0000d50:	9309      	str	r3, [sp, #36]	; 0x24
d0000d52:	e767      	b.n	d0000c24 <_vfiprintf_r+0x94>
d0000d54:	fb0c 3202 	mla	r2, ip, r2, r3
d0000d58:	460c      	mov	r4, r1
d0000d5a:	2001      	movs	r0, #1
d0000d5c:	e7a5      	b.n	d0000caa <_vfiprintf_r+0x11a>
d0000d5e:	2300      	movs	r3, #0
d0000d60:	3401      	adds	r4, #1
d0000d62:	9305      	str	r3, [sp, #20]
d0000d64:	4619      	mov	r1, r3
d0000d66:	f04f 0c0a 	mov.w	ip, #10
d0000d6a:	4620      	mov	r0, r4
d0000d6c:	f810 2b01 	ldrb.w	r2, [r0], #1
d0000d70:	3a30      	subs	r2, #48	; 0x30
d0000d72:	2a09      	cmp	r2, #9
d0000d74:	d903      	bls.n	d0000d7e <_vfiprintf_r+0x1ee>
d0000d76:	2b00      	cmp	r3, #0
d0000d78:	d0c5      	beq.n	d0000d06 <_vfiprintf_r+0x176>
d0000d7a:	9105      	str	r1, [sp, #20]
d0000d7c:	e7c3      	b.n	d0000d06 <_vfiprintf_r+0x176>
d0000d7e:	fb0c 2101 	mla	r1, ip, r1, r2
d0000d82:	4604      	mov	r4, r0
d0000d84:	2301      	movs	r3, #1
d0000d86:	e7f0      	b.n	d0000d6a <_vfiprintf_r+0x1da>
d0000d88:	ab03      	add	r3, sp, #12
d0000d8a:	9300      	str	r3, [sp, #0]
d0000d8c:	462a      	mov	r2, r5
d0000d8e:	4b16      	ldr	r3, [pc, #88]	; (d0000de8 <_vfiprintf_r+0x258>)
d0000d90:	a904      	add	r1, sp, #16
d0000d92:	4630      	mov	r0, r6
d0000d94:	f3af 8000 	nop.w
d0000d98:	4607      	mov	r7, r0
d0000d9a:	1c78      	adds	r0, r7, #1
d0000d9c:	d1d6      	bne.n	d0000d4c <_vfiprintf_r+0x1bc>
d0000d9e:	6e6b      	ldr	r3, [r5, #100]	; 0x64
d0000da0:	07d9      	lsls	r1, r3, #31
d0000da2:	d405      	bmi.n	d0000db0 <_vfiprintf_r+0x220>
d0000da4:	89ab      	ldrh	r3, [r5, #12]
d0000da6:	059a      	lsls	r2, r3, #22
d0000da8:	d402      	bmi.n	d0000db0 <_vfiprintf_r+0x220>
d0000daa:	6da8      	ldr	r0, [r5, #88]	; 0x58
d0000dac:	f7ff fdaf 	bl	d000090e <__retarget_lock_release_recursive>
d0000db0:	89ab      	ldrh	r3, [r5, #12]
d0000db2:	065b      	lsls	r3, r3, #25
d0000db4:	f53f af12 	bmi.w	d0000bdc <_vfiprintf_r+0x4c>
d0000db8:	9809      	ldr	r0, [sp, #36]	; 0x24
d0000dba:	e711      	b.n	d0000be0 <_vfiprintf_r+0x50>
d0000dbc:	ab03      	add	r3, sp, #12
d0000dbe:	9300      	str	r3, [sp, #0]
d0000dc0:	462a      	mov	r2, r5
d0000dc2:	4b09      	ldr	r3, [pc, #36]	; (d0000de8 <_vfiprintf_r+0x258>)
d0000dc4:	a904      	add	r1, sp, #16
d0000dc6:	4630      	mov	r0, r6
d0000dc8:	f000 f880 	bl	d0000ecc <_printf_i>
d0000dcc:	e7e4      	b.n	d0000d98 <_vfiprintf_r+0x208>
d0000dce:	bf00      	nop
d0000dd0:	d000143c 	.word	0xd000143c
d0000dd4:	d000145c 	.word	0xd000145c
d0000dd8:	d000141c 	.word	0xd000141c
d0000ddc:	d000147c 	.word	0xd000147c
d0000de0:	d0001486 	.word	0xd0001486
d0000de4:	00000000 	.word	0x00000000
d0000de8:	d0000b6b 	.word	0xd0000b6b
d0000dec:	d0001482 	.word	0xd0001482

d0000df0 <_printf_common>:
d0000df0:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
d0000df4:	4616      	mov	r6, r2
d0000df6:	4699      	mov	r9, r3
d0000df8:	688a      	ldr	r2, [r1, #8]
d0000dfa:	690b      	ldr	r3, [r1, #16]
d0000dfc:	f8dd 8020 	ldr.w	r8, [sp, #32]
d0000e00:	4293      	cmp	r3, r2
d0000e02:	bfb8      	it	lt
d0000e04:	4613      	movlt	r3, r2
d0000e06:	6033      	str	r3, [r6, #0]
d0000e08:	f891 2043 	ldrb.w	r2, [r1, #67]	; 0x43
d0000e0c:	4607      	mov	r7, r0
d0000e0e:	460c      	mov	r4, r1
d0000e10:	b10a      	cbz	r2, d0000e16 <_printf_common+0x26>
d0000e12:	3301      	adds	r3, #1
d0000e14:	6033      	str	r3, [r6, #0]
d0000e16:	6823      	ldr	r3, [r4, #0]
d0000e18:	0699      	lsls	r1, r3, #26
d0000e1a:	bf42      	ittt	mi
d0000e1c:	6833      	ldrmi	r3, [r6, #0]
d0000e1e:	3302      	addmi	r3, #2
d0000e20:	6033      	strmi	r3, [r6, #0]
d0000e22:	6825      	ldr	r5, [r4, #0]
d0000e24:	f015 0506 	ands.w	r5, r5, #6
d0000e28:	d106      	bne.n	d0000e38 <_printf_common+0x48>
d0000e2a:	f104 0a19 	add.w	sl, r4, #25
d0000e2e:	68e3      	ldr	r3, [r4, #12]
d0000e30:	6832      	ldr	r2, [r6, #0]
d0000e32:	1a9b      	subs	r3, r3, r2
d0000e34:	42ab      	cmp	r3, r5
d0000e36:	dc26      	bgt.n	d0000e86 <_printf_common+0x96>
d0000e38:	f894 2043 	ldrb.w	r2, [r4, #67]	; 0x43
d0000e3c:	1e13      	subs	r3, r2, #0
d0000e3e:	6822      	ldr	r2, [r4, #0]
d0000e40:	bf18      	it	ne
d0000e42:	2301      	movne	r3, #1
d0000e44:	0692      	lsls	r2, r2, #26
d0000e46:	d42b      	bmi.n	d0000ea0 <_printf_common+0xb0>
d0000e48:	f104 0243 	add.w	r2, r4, #67	; 0x43
d0000e4c:	4649      	mov	r1, r9
d0000e4e:	4638      	mov	r0, r7
d0000e50:	47c0      	blx	r8
d0000e52:	3001      	adds	r0, #1
d0000e54:	d01e      	beq.n	d0000e94 <_printf_common+0xa4>
d0000e56:	6823      	ldr	r3, [r4, #0]
d0000e58:	68e5      	ldr	r5, [r4, #12]
d0000e5a:	6832      	ldr	r2, [r6, #0]
d0000e5c:	f003 0306 	and.w	r3, r3, #6
d0000e60:	2b04      	cmp	r3, #4
d0000e62:	bf08      	it	eq
d0000e64:	1aad      	subeq	r5, r5, r2
d0000e66:	68a3      	ldr	r3, [r4, #8]
d0000e68:	6922      	ldr	r2, [r4, #16]
d0000e6a:	bf0c      	ite	eq
d0000e6c:	ea25 75e5 	biceq.w	r5, r5, r5, asr #31
d0000e70:	2500      	movne	r5, #0
d0000e72:	4293      	cmp	r3, r2
d0000e74:	bfc4      	itt	gt
d0000e76:	1a9b      	subgt	r3, r3, r2
d0000e78:	18ed      	addgt	r5, r5, r3
d0000e7a:	2600      	movs	r6, #0
d0000e7c:	341a      	adds	r4, #26
d0000e7e:	42b5      	cmp	r5, r6
d0000e80:	d11a      	bne.n	d0000eb8 <_printf_common+0xc8>
d0000e82:	2000      	movs	r0, #0
d0000e84:	e008      	b.n	d0000e98 <_printf_common+0xa8>
d0000e86:	2301      	movs	r3, #1
d0000e88:	4652      	mov	r2, sl
d0000e8a:	4649      	mov	r1, r9
d0000e8c:	4638      	mov	r0, r7
d0000e8e:	47c0      	blx	r8
d0000e90:	3001      	adds	r0, #1
d0000e92:	d103      	bne.n	d0000e9c <_printf_common+0xac>
d0000e94:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d0000e98:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
d0000e9c:	3501      	adds	r5, #1
d0000e9e:	e7c6      	b.n	d0000e2e <_printf_common+0x3e>
d0000ea0:	18e1      	adds	r1, r4, r3
d0000ea2:	1c5a      	adds	r2, r3, #1
d0000ea4:	2030      	movs	r0, #48	; 0x30
d0000ea6:	f881 0043 	strb.w	r0, [r1, #67]	; 0x43
d0000eaa:	4422      	add	r2, r4
d0000eac:	f894 1045 	ldrb.w	r1, [r4, #69]	; 0x45
d0000eb0:	f882 1043 	strb.w	r1, [r2, #67]	; 0x43
d0000eb4:	3302      	adds	r3, #2
d0000eb6:	e7c7      	b.n	d0000e48 <_printf_common+0x58>
d0000eb8:	2301      	movs	r3, #1
d0000eba:	4622      	mov	r2, r4
d0000ebc:	4649      	mov	r1, r9
d0000ebe:	4638      	mov	r0, r7
d0000ec0:	47c0      	blx	r8
d0000ec2:	3001      	adds	r0, #1
d0000ec4:	d0e6      	beq.n	d0000e94 <_printf_common+0xa4>
d0000ec6:	3601      	adds	r6, #1
d0000ec8:	e7d9      	b.n	d0000e7e <_printf_common+0x8e>
	...

d0000ecc <_printf_i>:
d0000ecc:	e92d 47ff 	stmdb	sp!, {r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, lr}
d0000ed0:	460c      	mov	r4, r1
d0000ed2:	4691      	mov	r9, r2
d0000ed4:	7e27      	ldrb	r7, [r4, #24]
d0000ed6:	990c      	ldr	r1, [sp, #48]	; 0x30
d0000ed8:	2f78      	cmp	r7, #120	; 0x78
d0000eda:	4680      	mov	r8, r0
d0000edc:	469a      	mov	sl, r3
d0000ede:	f104 0243 	add.w	r2, r4, #67	; 0x43
d0000ee2:	d807      	bhi.n	d0000ef4 <_printf_i+0x28>
d0000ee4:	2f62      	cmp	r7, #98	; 0x62
d0000ee6:	d80a      	bhi.n	d0000efe <_printf_i+0x32>
d0000ee8:	2f00      	cmp	r7, #0
d0000eea:	f000 80d8 	beq.w	d000109e <_printf_i+0x1d2>
d0000eee:	2f58      	cmp	r7, #88	; 0x58
d0000ef0:	f000 80a3 	beq.w	d000103a <_printf_i+0x16e>
d0000ef4:	f104 0642 	add.w	r6, r4, #66	; 0x42
d0000ef8:	f884 7042 	strb.w	r7, [r4, #66]	; 0x42
d0000efc:	e03a      	b.n	d0000f74 <_printf_i+0xa8>
d0000efe:	f1a7 0363 	sub.w	r3, r7, #99	; 0x63
d0000f02:	2b15      	cmp	r3, #21
d0000f04:	d8f6      	bhi.n	d0000ef4 <_printf_i+0x28>
d0000f06:	a001      	add	r0, pc, #4	; (adr r0, d0000f0c <_printf_i+0x40>)
d0000f08:	f850 f023 	ldr.w	pc, [r0, r3, lsl #2]
d0000f0c:	d0000f65 	.word	0xd0000f65
d0000f10:	d0000f79 	.word	0xd0000f79
d0000f14:	d0000ef5 	.word	0xd0000ef5
d0000f18:	d0000ef5 	.word	0xd0000ef5
d0000f1c:	d0000ef5 	.word	0xd0000ef5
d0000f20:	d0000ef5 	.word	0xd0000ef5
d0000f24:	d0000f79 	.word	0xd0000f79
d0000f28:	d0000ef5 	.word	0xd0000ef5
d0000f2c:	d0000ef5 	.word	0xd0000ef5
d0000f30:	d0000ef5 	.word	0xd0000ef5
d0000f34:	d0000ef5 	.word	0xd0000ef5
d0000f38:	d0001085 	.word	0xd0001085
d0000f3c:	d0000fa9 	.word	0xd0000fa9
d0000f40:	d0001067 	.word	0xd0001067
d0000f44:	d0000ef5 	.word	0xd0000ef5
d0000f48:	d0000ef5 	.word	0xd0000ef5
d0000f4c:	d00010a7 	.word	0xd00010a7
d0000f50:	d0000ef5 	.word	0xd0000ef5
d0000f54:	d0000fa9 	.word	0xd0000fa9
d0000f58:	d0000ef5 	.word	0xd0000ef5
d0000f5c:	d0000ef5 	.word	0xd0000ef5
d0000f60:	d000106f 	.word	0xd000106f
d0000f64:	680b      	ldr	r3, [r1, #0]
d0000f66:	1d1a      	adds	r2, r3, #4
d0000f68:	681b      	ldr	r3, [r3, #0]
d0000f6a:	600a      	str	r2, [r1, #0]
d0000f6c:	f104 0642 	add.w	r6, r4, #66	; 0x42
d0000f70:	f884 3042 	strb.w	r3, [r4, #66]	; 0x42
d0000f74:	2301      	movs	r3, #1
d0000f76:	e0a3      	b.n	d00010c0 <_printf_i+0x1f4>
d0000f78:	6825      	ldr	r5, [r4, #0]
d0000f7a:	6808      	ldr	r0, [r1, #0]
d0000f7c:	062e      	lsls	r6, r5, #24
d0000f7e:	f100 0304 	add.w	r3, r0, #4
d0000f82:	d50a      	bpl.n	d0000f9a <_printf_i+0xce>
d0000f84:	6805      	ldr	r5, [r0, #0]
d0000f86:	600b      	str	r3, [r1, #0]
d0000f88:	2d00      	cmp	r5, #0
d0000f8a:	da03      	bge.n	d0000f94 <_printf_i+0xc8>
d0000f8c:	232d      	movs	r3, #45	; 0x2d
d0000f8e:	426d      	negs	r5, r5
d0000f90:	f884 3043 	strb.w	r3, [r4, #67]	; 0x43
d0000f94:	485e      	ldr	r0, [pc, #376]	; (d0001110 <_printf_i+0x244>)
d0000f96:	230a      	movs	r3, #10
d0000f98:	e019      	b.n	d0000fce <_printf_i+0x102>
d0000f9a:	f015 0f40 	tst.w	r5, #64	; 0x40
d0000f9e:	6805      	ldr	r5, [r0, #0]
d0000fa0:	600b      	str	r3, [r1, #0]
d0000fa2:	bf18      	it	ne
d0000fa4:	b22d      	sxthne	r5, r5
d0000fa6:	e7ef      	b.n	d0000f88 <_printf_i+0xbc>
d0000fa8:	680b      	ldr	r3, [r1, #0]
d0000faa:	6825      	ldr	r5, [r4, #0]
d0000fac:	1d18      	adds	r0, r3, #4
d0000fae:	6008      	str	r0, [r1, #0]
d0000fb0:	0628      	lsls	r0, r5, #24
d0000fb2:	d501      	bpl.n	d0000fb8 <_printf_i+0xec>
d0000fb4:	681d      	ldr	r5, [r3, #0]
d0000fb6:	e002      	b.n	d0000fbe <_printf_i+0xf2>
d0000fb8:	0669      	lsls	r1, r5, #25
d0000fba:	d5fb      	bpl.n	d0000fb4 <_printf_i+0xe8>
d0000fbc:	881d      	ldrh	r5, [r3, #0]
d0000fbe:	4854      	ldr	r0, [pc, #336]	; (d0001110 <_printf_i+0x244>)
d0000fc0:	2f6f      	cmp	r7, #111	; 0x6f
d0000fc2:	bf0c      	ite	eq
d0000fc4:	2308      	moveq	r3, #8
d0000fc6:	230a      	movne	r3, #10
d0000fc8:	2100      	movs	r1, #0
d0000fca:	f884 1043 	strb.w	r1, [r4, #67]	; 0x43
d0000fce:	6866      	ldr	r6, [r4, #4]
d0000fd0:	60a6      	str	r6, [r4, #8]
d0000fd2:	2e00      	cmp	r6, #0
d0000fd4:	bfa2      	ittt	ge
d0000fd6:	6821      	ldrge	r1, [r4, #0]
d0000fd8:	f021 0104 	bicge.w	r1, r1, #4
d0000fdc:	6021      	strge	r1, [r4, #0]
d0000fde:	b90d      	cbnz	r5, d0000fe4 <_printf_i+0x118>
d0000fe0:	2e00      	cmp	r6, #0
d0000fe2:	d04d      	beq.n	d0001080 <_printf_i+0x1b4>
d0000fe4:	4616      	mov	r6, r2
d0000fe6:	fbb5 f1f3 	udiv	r1, r5, r3
d0000fea:	fb03 5711 	mls	r7, r3, r1, r5
d0000fee:	5dc7      	ldrb	r7, [r0, r7]
d0000ff0:	f806 7d01 	strb.w	r7, [r6, #-1]!
d0000ff4:	462f      	mov	r7, r5
d0000ff6:	42bb      	cmp	r3, r7
d0000ff8:	460d      	mov	r5, r1
d0000ffa:	d9f4      	bls.n	d0000fe6 <_printf_i+0x11a>
d0000ffc:	2b08      	cmp	r3, #8
d0000ffe:	d10b      	bne.n	d0001018 <_printf_i+0x14c>
d0001000:	6823      	ldr	r3, [r4, #0]
d0001002:	07df      	lsls	r7, r3, #31
d0001004:	d508      	bpl.n	d0001018 <_printf_i+0x14c>
d0001006:	6923      	ldr	r3, [r4, #16]
d0001008:	6861      	ldr	r1, [r4, #4]
d000100a:	4299      	cmp	r1, r3
d000100c:	bfde      	ittt	le
d000100e:	2330      	movle	r3, #48	; 0x30
d0001010:	f806 3c01 	strble.w	r3, [r6, #-1]
d0001014:	f106 36ff 	addle.w	r6, r6, #4294967295	; 0xffffffff
d0001018:	1b92      	subs	r2, r2, r6
d000101a:	6122      	str	r2, [r4, #16]
d000101c:	f8cd a000 	str.w	sl, [sp]
d0001020:	464b      	mov	r3, r9
d0001022:	aa03      	add	r2, sp, #12
d0001024:	4621      	mov	r1, r4
d0001026:	4640      	mov	r0, r8
d0001028:	f7ff fee2 	bl	d0000df0 <_printf_common>
d000102c:	3001      	adds	r0, #1
d000102e:	d14c      	bne.n	d00010ca <_printf_i+0x1fe>
d0001030:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d0001034:	b004      	add	sp, #16
d0001036:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
d000103a:	4835      	ldr	r0, [pc, #212]	; (d0001110 <_printf_i+0x244>)
d000103c:	f884 7045 	strb.w	r7, [r4, #69]	; 0x45
d0001040:	6823      	ldr	r3, [r4, #0]
d0001042:	680e      	ldr	r6, [r1, #0]
d0001044:	061f      	lsls	r7, r3, #24
d0001046:	f856 5b04 	ldr.w	r5, [r6], #4
d000104a:	600e      	str	r6, [r1, #0]
d000104c:	d514      	bpl.n	d0001078 <_printf_i+0x1ac>
d000104e:	07d9      	lsls	r1, r3, #31
d0001050:	bf44      	itt	mi
d0001052:	f043 0320 	orrmi.w	r3, r3, #32
d0001056:	6023      	strmi	r3, [r4, #0]
d0001058:	b91d      	cbnz	r5, d0001062 <_printf_i+0x196>
d000105a:	6823      	ldr	r3, [r4, #0]
d000105c:	f023 0320 	bic.w	r3, r3, #32
d0001060:	6023      	str	r3, [r4, #0]
d0001062:	2310      	movs	r3, #16
d0001064:	e7b0      	b.n	d0000fc8 <_printf_i+0xfc>
d0001066:	6823      	ldr	r3, [r4, #0]
d0001068:	f043 0320 	orr.w	r3, r3, #32
d000106c:	6023      	str	r3, [r4, #0]
d000106e:	2378      	movs	r3, #120	; 0x78
d0001070:	4828      	ldr	r0, [pc, #160]	; (d0001114 <_printf_i+0x248>)
d0001072:	f884 3045 	strb.w	r3, [r4, #69]	; 0x45
d0001076:	e7e3      	b.n	d0001040 <_printf_i+0x174>
d0001078:	065e      	lsls	r6, r3, #25
d000107a:	bf48      	it	mi
d000107c:	b2ad      	uxthmi	r5, r5
d000107e:	e7e6      	b.n	d000104e <_printf_i+0x182>
d0001080:	4616      	mov	r6, r2
d0001082:	e7bb      	b.n	d0000ffc <_printf_i+0x130>
d0001084:	680b      	ldr	r3, [r1, #0]
d0001086:	6826      	ldr	r6, [r4, #0]
d0001088:	6960      	ldr	r0, [r4, #20]
d000108a:	1d1d      	adds	r5, r3, #4
d000108c:	600d      	str	r5, [r1, #0]
d000108e:	0635      	lsls	r5, r6, #24
d0001090:	681b      	ldr	r3, [r3, #0]
d0001092:	d501      	bpl.n	d0001098 <_printf_i+0x1cc>
d0001094:	6018      	str	r0, [r3, #0]
d0001096:	e002      	b.n	d000109e <_printf_i+0x1d2>
d0001098:	0671      	lsls	r1, r6, #25
d000109a:	d5fb      	bpl.n	d0001094 <_printf_i+0x1c8>
d000109c:	8018      	strh	r0, [r3, #0]
d000109e:	2300      	movs	r3, #0
d00010a0:	6123      	str	r3, [r4, #16]
d00010a2:	4616      	mov	r6, r2
d00010a4:	e7ba      	b.n	d000101c <_printf_i+0x150>
d00010a6:	680b      	ldr	r3, [r1, #0]
d00010a8:	1d1a      	adds	r2, r3, #4
d00010aa:	600a      	str	r2, [r1, #0]
d00010ac:	681e      	ldr	r6, [r3, #0]
d00010ae:	6862      	ldr	r2, [r4, #4]
d00010b0:	2100      	movs	r1, #0
d00010b2:	4630      	mov	r0, r6
d00010b4:	f000 f8bc 	bl	d0001230 <memchr>
d00010b8:	b108      	cbz	r0, d00010be <_printf_i+0x1f2>
d00010ba:	1b80      	subs	r0, r0, r6
d00010bc:	6060      	str	r0, [r4, #4]
d00010be:	6863      	ldr	r3, [r4, #4]
d00010c0:	6123      	str	r3, [r4, #16]
d00010c2:	2300      	movs	r3, #0
d00010c4:	f884 3043 	strb.w	r3, [r4, #67]	; 0x43
d00010c8:	e7a8      	b.n	d000101c <_printf_i+0x150>
d00010ca:	6923      	ldr	r3, [r4, #16]
d00010cc:	4632      	mov	r2, r6
d00010ce:	4649      	mov	r1, r9
d00010d0:	4640      	mov	r0, r8
d00010d2:	47d0      	blx	sl
d00010d4:	3001      	adds	r0, #1
d00010d6:	d0ab      	beq.n	d0001030 <_printf_i+0x164>
d00010d8:	6823      	ldr	r3, [r4, #0]
d00010da:	079b      	lsls	r3, r3, #30
d00010dc:	d413      	bmi.n	d0001106 <_printf_i+0x23a>
d00010de:	68e0      	ldr	r0, [r4, #12]
d00010e0:	9b03      	ldr	r3, [sp, #12]
d00010e2:	4298      	cmp	r0, r3
d00010e4:	bfb8      	it	lt
d00010e6:	4618      	movlt	r0, r3
d00010e8:	e7a4      	b.n	d0001034 <_printf_i+0x168>
d00010ea:	2301      	movs	r3, #1
d00010ec:	4632      	mov	r2, r6
d00010ee:	4649      	mov	r1, r9
d00010f0:	4640      	mov	r0, r8
d00010f2:	47d0      	blx	sl
d00010f4:	3001      	adds	r0, #1
d00010f6:	d09b      	beq.n	d0001030 <_printf_i+0x164>
d00010f8:	3501      	adds	r5, #1
d00010fa:	68e3      	ldr	r3, [r4, #12]
d00010fc:	9903      	ldr	r1, [sp, #12]
d00010fe:	1a5b      	subs	r3, r3, r1
d0001100:	42ab      	cmp	r3, r5
d0001102:	dcf2      	bgt.n	d00010ea <_printf_i+0x21e>
d0001104:	e7eb      	b.n	d00010de <_printf_i+0x212>
d0001106:	2500      	movs	r5, #0
d0001108:	f104 0619 	add.w	r6, r4, #25
d000110c:	e7f5      	b.n	d00010fa <_printf_i+0x22e>
d000110e:	bf00      	nop
d0001110:	d000148d 	.word	0xd000148d
d0001114:	d000149e 	.word	0xd000149e

d0001118 <__sread>:
d0001118:	b510      	push	{r4, lr}
d000111a:	460c      	mov	r4, r1
d000111c:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d0001120:	f000 f8e2 	bl	d00012e8 <_read_r>
d0001124:	2800      	cmp	r0, #0
d0001126:	bfab      	itete	ge
d0001128:	6d63      	ldrge	r3, [r4, #84]	; 0x54
d000112a:	89a3      	ldrhlt	r3, [r4, #12]
d000112c:	181b      	addge	r3, r3, r0
d000112e:	f423 5380 	biclt.w	r3, r3, #4096	; 0x1000
d0001132:	bfac      	ite	ge
d0001134:	6563      	strge	r3, [r4, #84]	; 0x54
d0001136:	81a3      	strhlt	r3, [r4, #12]
d0001138:	bd10      	pop	{r4, pc}

d000113a <__swrite>:
d000113a:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
d000113e:	461f      	mov	r7, r3
d0001140:	898b      	ldrh	r3, [r1, #12]
d0001142:	05db      	lsls	r3, r3, #23
d0001144:	4605      	mov	r5, r0
d0001146:	460c      	mov	r4, r1
d0001148:	4616      	mov	r6, r2
d000114a:	d505      	bpl.n	d0001158 <__swrite+0x1e>
d000114c:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d0001150:	2302      	movs	r3, #2
d0001152:	2200      	movs	r2, #0
d0001154:	f000 f856 	bl	d0001204 <_lseek_r>
d0001158:	89a3      	ldrh	r3, [r4, #12]
d000115a:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
d000115e:	f423 5380 	bic.w	r3, r3, #4096	; 0x1000
d0001162:	81a3      	strh	r3, [r4, #12]
d0001164:	4632      	mov	r2, r6
d0001166:	463b      	mov	r3, r7
d0001168:	4628      	mov	r0, r5
d000116a:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
d000116e:	f7fe bf6d 	b.w	d000004c <_write_r>

d0001172 <__sseek>:
d0001172:	b510      	push	{r4, lr}
d0001174:	460c      	mov	r4, r1
d0001176:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d000117a:	f000 f843 	bl	d0001204 <_lseek_r>
d000117e:	1c43      	adds	r3, r0, #1
d0001180:	89a3      	ldrh	r3, [r4, #12]
d0001182:	bf15      	itete	ne
d0001184:	6560      	strne	r0, [r4, #84]	; 0x54
d0001186:	f423 5380 	biceq.w	r3, r3, #4096	; 0x1000
d000118a:	f443 5380 	orrne.w	r3, r3, #4096	; 0x1000
d000118e:	81a3      	strheq	r3, [r4, #12]
d0001190:	bf18      	it	ne
d0001192:	81a3      	strhne	r3, [r4, #12]
d0001194:	bd10      	pop	{r4, pc}

d0001196 <__sclose>:
d0001196:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d000119a:	f000 b801 	b.w	d00011a0 <_close_r>
	...

d00011a0 <_close_r>:
d00011a0:	b538      	push	{r3, r4, r5, lr}
d00011a2:	4d06      	ldr	r5, [pc, #24]	; (d00011bc <_close_r+0x1c>)
d00011a4:	2300      	movs	r3, #0
d00011a6:	4604      	mov	r4, r0
d00011a8:	4608      	mov	r0, r1
d00011aa:	602b      	str	r3, [r5, #0]
d00011ac:	f7fe ff88 	bl	d00000c0 <_close>
d00011b0:	1c43      	adds	r3, r0, #1
d00011b2:	d102      	bne.n	d00011ba <_close_r+0x1a>
d00011b4:	682b      	ldr	r3, [r5, #0]
d00011b6:	b103      	cbz	r3, d00011ba <_close_r+0x1a>
d00011b8:	6023      	str	r3, [r4, #0]
d00011ba:	bd38      	pop	{r3, r4, r5, pc}
d00011bc:	d0001538 	.word	0xd0001538

d00011c0 <_fstat_r>:
d00011c0:	b538      	push	{r3, r4, r5, lr}
d00011c2:	4d07      	ldr	r5, [pc, #28]	; (d00011e0 <_fstat_r+0x20>)
d00011c4:	2300      	movs	r3, #0
d00011c6:	4604      	mov	r4, r0
d00011c8:	4608      	mov	r0, r1
d00011ca:	4611      	mov	r1, r2
d00011cc:	602b      	str	r3, [r5, #0]
d00011ce:	f7fe ff7b 	bl	d00000c8 <_fstat>
d00011d2:	1c43      	adds	r3, r0, #1
d00011d4:	d102      	bne.n	d00011dc <_fstat_r+0x1c>
d00011d6:	682b      	ldr	r3, [r5, #0]
d00011d8:	b103      	cbz	r3, d00011dc <_fstat_r+0x1c>
d00011da:	6023      	str	r3, [r4, #0]
d00011dc:	bd38      	pop	{r3, r4, r5, pc}
d00011de:	bf00      	nop
d00011e0:	d0001538 	.word	0xd0001538

d00011e4 <_isatty_r>:
d00011e4:	b538      	push	{r3, r4, r5, lr}
d00011e6:	4d06      	ldr	r5, [pc, #24]	; (d0001200 <_isatty_r+0x1c>)
d00011e8:	2300      	movs	r3, #0
d00011ea:	4604      	mov	r4, r0
d00011ec:	4608      	mov	r0, r1
d00011ee:	602b      	str	r3, [r5, #0]
d00011f0:	f7fe ff92 	bl	d0000118 <_isatty>
d00011f4:	1c43      	adds	r3, r0, #1
d00011f6:	d102      	bne.n	d00011fe <_isatty_r+0x1a>
d00011f8:	682b      	ldr	r3, [r5, #0]
d00011fa:	b103      	cbz	r3, d00011fe <_isatty_r+0x1a>
d00011fc:	6023      	str	r3, [r4, #0]
d00011fe:	bd38      	pop	{r3, r4, r5, pc}
d0001200:	d0001538 	.word	0xd0001538

d0001204 <_lseek_r>:
d0001204:	b538      	push	{r3, r4, r5, lr}
d0001206:	4d07      	ldr	r5, [pc, #28]	; (d0001224 <_lseek_r+0x20>)
d0001208:	4604      	mov	r4, r0
d000120a:	4608      	mov	r0, r1
d000120c:	4611      	mov	r1, r2
d000120e:	2200      	movs	r2, #0
d0001210:	602a      	str	r2, [r5, #0]
d0001212:	461a      	mov	r2, r3
d0001214:	f7fe ff5e 	bl	d00000d4 <_lseek>
d0001218:	1c43      	adds	r3, r0, #1
d000121a:	d102      	bne.n	d0001222 <_lseek_r+0x1e>
d000121c:	682b      	ldr	r3, [r5, #0]
d000121e:	b103      	cbz	r3, d0001222 <_lseek_r+0x1e>
d0001220:	6023      	str	r3, [r4, #0]
d0001222:	bd38      	pop	{r3, r4, r5, pc}
d0001224:	d0001538 	.word	0xd0001538
	...

d0001230 <memchr>:
d0001230:	f001 01ff 	and.w	r1, r1, #255	; 0xff
d0001234:	2a10      	cmp	r2, #16
d0001236:	db2b      	blt.n	d0001290 <memchr+0x60>
d0001238:	f010 0f07 	tst.w	r0, #7
d000123c:	d008      	beq.n	d0001250 <memchr+0x20>
d000123e:	f810 3b01 	ldrb.w	r3, [r0], #1
d0001242:	3a01      	subs	r2, #1
d0001244:	428b      	cmp	r3, r1
d0001246:	d02d      	beq.n	d00012a4 <memchr+0x74>
d0001248:	f010 0f07 	tst.w	r0, #7
d000124c:	b342      	cbz	r2, d00012a0 <memchr+0x70>
d000124e:	d1f6      	bne.n	d000123e <memchr+0xe>
d0001250:	b4f0      	push	{r4, r5, r6, r7}
d0001252:	ea41 2101 	orr.w	r1, r1, r1, lsl #8
d0001256:	ea41 4101 	orr.w	r1, r1, r1, lsl #16
d000125a:	f022 0407 	bic.w	r4, r2, #7
d000125e:	f07f 0700 	mvns.w	r7, #0
d0001262:	2300      	movs	r3, #0
d0001264:	e8f0 5602 	ldrd	r5, r6, [r0], #8
d0001268:	3c08      	subs	r4, #8
d000126a:	ea85 0501 	eor.w	r5, r5, r1
d000126e:	ea86 0601 	eor.w	r6, r6, r1
d0001272:	fa85 f547 	uadd8	r5, r5, r7
d0001276:	faa3 f587 	sel	r5, r3, r7
d000127a:	fa86 f647 	uadd8	r6, r6, r7
d000127e:	faa5 f687 	sel	r6, r5, r7
d0001282:	b98e      	cbnz	r6, d00012a8 <memchr+0x78>
d0001284:	d1ee      	bne.n	d0001264 <memchr+0x34>
d0001286:	bcf0      	pop	{r4, r5, r6, r7}
d0001288:	f001 01ff 	and.w	r1, r1, #255	; 0xff
d000128c:	f002 0207 	and.w	r2, r2, #7
d0001290:	b132      	cbz	r2, d00012a0 <memchr+0x70>
d0001292:	f810 3b01 	ldrb.w	r3, [r0], #1
d0001296:	3a01      	subs	r2, #1
d0001298:	ea83 0301 	eor.w	r3, r3, r1
d000129c:	b113      	cbz	r3, d00012a4 <memchr+0x74>
d000129e:	d1f8      	bne.n	d0001292 <memchr+0x62>
d00012a0:	2000      	movs	r0, #0
d00012a2:	4770      	bx	lr
d00012a4:	3801      	subs	r0, #1
d00012a6:	4770      	bx	lr
d00012a8:	2d00      	cmp	r5, #0
d00012aa:	bf06      	itte	eq
d00012ac:	4635      	moveq	r5, r6
d00012ae:	3803      	subeq	r0, #3
d00012b0:	3807      	subne	r0, #7
d00012b2:	f015 0f01 	tst.w	r5, #1
d00012b6:	d107      	bne.n	d00012c8 <memchr+0x98>
d00012b8:	3001      	adds	r0, #1
d00012ba:	f415 7f80 	tst.w	r5, #256	; 0x100
d00012be:	bf02      	ittt	eq
d00012c0:	3001      	addeq	r0, #1
d00012c2:	f415 3fc0 	tsteq.w	r5, #98304	; 0x18000
d00012c6:	3001      	addeq	r0, #1
d00012c8:	bcf0      	pop	{r4, r5, r6, r7}
d00012ca:	3801      	subs	r0, #1
d00012cc:	4770      	bx	lr
d00012ce:	bf00      	nop

d00012d0 <__malloc_lock>:
d00012d0:	4801      	ldr	r0, [pc, #4]	; (d00012d8 <__malloc_lock+0x8>)
d00012d2:	f7ff bb1b 	b.w	d000090c <__retarget_lock_acquire_recursive>
d00012d6:	bf00      	nop
d00012d8:	d0001530 	.word	0xd0001530

d00012dc <__malloc_unlock>:
d00012dc:	4801      	ldr	r0, [pc, #4]	; (d00012e4 <__malloc_unlock+0x8>)
d00012de:	f7ff bb16 	b.w	d000090e <__retarget_lock_release_recursive>
d00012e2:	bf00      	nop
d00012e4:	d0001530 	.word	0xd0001530

d00012e8 <_read_r>:
d00012e8:	b538      	push	{r3, r4, r5, lr}
d00012ea:	4d07      	ldr	r5, [pc, #28]	; (d0001308 <_read_r+0x20>)
d00012ec:	4604      	mov	r4, r0
d00012ee:	4608      	mov	r0, r1
d00012f0:	4611      	mov	r1, r2
d00012f2:	2200      	movs	r2, #0
d00012f4:	602a      	str	r2, [r5, #0]
d00012f6:	461a      	mov	r2, r3
d00012f8:	f7fe fed8 	bl	d00000ac <_read>
d00012fc:	1c43      	adds	r3, r0, #1
d00012fe:	d102      	bne.n	d0001306 <_read_r+0x1e>
d0001300:	682b      	ldr	r3, [r5, #0]
d0001302:	b103      	cbz	r3, d0001306 <_read_r+0x1e>
d0001304:	6023      	str	r3, [r4, #0]
d0001306:	bd38      	pop	{r3, r4, r5, pc}
d0001308:	d0001538 	.word	0xd0001538

d000130c <_global_impure_ptr>:
d000130c:	d00014bc 6c707041 73207465 20737961     ....Applet says 
d000131c:	4c4c4548 0a21214f 00000000 20555043     HELLO!!.....CPU 
d000132c:	74736574 20303420 3128202b 202a2032     test 40 + (12 * 
d000133c:	3d202934 646c2520 00000a0a 2a2a2a2a     4) = %ld....****
d000134c:	43204320 414d4d4f 5420444e 20545345      C COMMAND TEST 
d000135c:	0a2a2a2a 6d6f7246 64697320 2f786f62     ***.From sidbox/
d000136c:	66202f63 65646c6f 00002172 2a2a2a2a     c/ folder!..****
d000137c:	43204320 414d4d4f 5420444e 20545345      C COMMAND TEST 
d000138c:	0a2a2a2a 6c756f77 65622064 616c6320     ***.would be cla
d000139c:	2173706d 00000000 2a2a2a2a 43204320     mps!....**** C C
d00013ac:	414d4d4f 5420444e 20545345 0a2a2a2a     OMMAND TEST ***.
d00013bc:	64616f6c 20676e69 6b726f77 636e6562     loading workbenc
d00013cc:	293b2068 75420a21 6f6e2074 6d412074     h ;)!.But not Am
d00013dc:	20616769 656d6572 7265626d 68656820     iga remember heh
d00013ec:	20490a65 45564f4c 554f5920 4d4f4320     e.I LOVE YOU COM
d00013fc:	4f444f4d 21214552 6968540a 73692073     MODORE!!.This is
d000140c:	726f6620 756f7920 79756720 00002173      for you guys!..

d000141c <__sf_fake_stderr>:
	...

d000143c <__sf_fake_stdin>:
	...

d000145c <__sf_fake_stdout>:
	...
d000147c:	2b302d23 6c680020 6665004c 47464567     #-0+ .hlL.efgEFG
d000148c:	32313000 36353433 41393837 45444342     .0123456789ABCDE
d000149c:	31300046 35343332 39383736 64636261     F.0123456789abcd
d00014ac:	                                         ef.

Disassembly of section .init:

d00014b0 <_init>:
d00014b0:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d00014b2:	bf00      	nop

Disassembly of section .fini:

d00014b4 <_fini>:
d00014b4:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d00014b6:	bf00      	nop


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
d000001e:	f000 f915 	bl	d000024c <setbuf>
d0000022:	6833      	ldr	r3, [r6, #0]
d0000024:	2100      	movs	r1, #0
d0000026:	68d8      	ldr	r0, [r3, #12]
d0000028:	f000 f910 	bl	d000024c <setbuf>
d000002c:	4629      	mov	r1, r5
d000002e:	4620      	mov	r0, r4
d0000030:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
d0000034:	f000 b868 	b.w	d0000108 <main>
d0000038:	d00013b8 	.word	0xd00013b8

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
d0000090:	d0001420 	.word	0xd0001420
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
d00000f8:	d000141c 	.word	0xd000141c
d00000fc:	d000143c 	.word	0xd000143c
d0000100:	d0600000 	.word	0xd0600000

d0000104 <_isatty>:
d0000104:	2001      	movs	r0, #1
d0000106:	4770      	bx	lr

d0000108 <main>:
d0000108:	b508      	push	{r3, lr}
d000010a:	4804      	ldr	r0, [pc, #16]	; (d000011c <main+0x14>)
d000010c:	f000 f896 	bl	d000023c <puts>
d0000110:	2158      	movs	r1, #88	; 0x58
d0000112:	4803      	ldr	r0, [pc, #12]	; (d0000120 <main+0x18>)
d0000114:	f000 f80c 	bl	d0000130 <iprintf>
d0000118:	2000      	movs	r0, #0
d000011a:	bd08      	pop	{r3, pc}
d000011c:	d00012e0 	.word	0xd00012e0
d0000120:	d00012fc 	.word	0xd00012fc

d0000124 <__errno>:
d0000124:	4b01      	ldr	r3, [pc, #4]	; (d000012c <__errno+0x8>)
d0000126:	6818      	ldr	r0, [r3, #0]
d0000128:	4770      	bx	lr
d000012a:	bf00      	nop
d000012c:	d00013b8 	.word	0xd00013b8

d0000130 <iprintf>:
d0000130:	b40f      	push	{r0, r1, r2, r3}
d0000132:	4b0a      	ldr	r3, [pc, #40]	; (d000015c <iprintf+0x2c>)
d0000134:	b513      	push	{r0, r1, r4, lr}
d0000136:	681c      	ldr	r4, [r3, #0]
d0000138:	b124      	cbz	r4, d0000144 <iprintf+0x14>
d000013a:	69a3      	ldr	r3, [r4, #24]
d000013c:	b913      	cbnz	r3, d0000144 <iprintf+0x14>
d000013e:	4620      	mov	r0, r4
d0000140:	f000 fb2c 	bl	d000079c <__sinit>
d0000144:	ab05      	add	r3, sp, #20
d0000146:	9a04      	ldr	r2, [sp, #16]
d0000148:	68a1      	ldr	r1, [r4, #8]
d000014a:	9301      	str	r3, [sp, #4]
d000014c:	4620      	mov	r0, r4
d000014e:	f000 fd05 	bl	d0000b5c <_vfiprintf_r>
d0000152:	b002      	add	sp, #8
d0000154:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
d0000158:	b004      	add	sp, #16
d000015a:	4770      	bx	lr
d000015c:	d00013b8 	.word	0xd00013b8

d0000160 <_puts_r>:
d0000160:	b570      	push	{r4, r5, r6, lr}
d0000162:	460e      	mov	r6, r1
d0000164:	4605      	mov	r5, r0
d0000166:	b118      	cbz	r0, d0000170 <_puts_r+0x10>
d0000168:	6983      	ldr	r3, [r0, #24]
d000016a:	b90b      	cbnz	r3, d0000170 <_puts_r+0x10>
d000016c:	f000 fb16 	bl	d000079c <__sinit>
d0000170:	69ab      	ldr	r3, [r5, #24]
d0000172:	68ac      	ldr	r4, [r5, #8]
d0000174:	b913      	cbnz	r3, d000017c <_puts_r+0x1c>
d0000176:	4628      	mov	r0, r5
d0000178:	f000 fb10 	bl	d000079c <__sinit>
d000017c:	4b2c      	ldr	r3, [pc, #176]	; (d0000230 <_puts_r+0xd0>)
d000017e:	429c      	cmp	r4, r3
d0000180:	d120      	bne.n	d00001c4 <_puts_r+0x64>
d0000182:	686c      	ldr	r4, [r5, #4]
d0000184:	6e63      	ldr	r3, [r4, #100]	; 0x64
d0000186:	07db      	lsls	r3, r3, #31
d0000188:	d405      	bmi.n	d0000196 <_puts_r+0x36>
d000018a:	89a3      	ldrh	r3, [r4, #12]
d000018c:	0598      	lsls	r0, r3, #22
d000018e:	d402      	bmi.n	d0000196 <_puts_r+0x36>
d0000190:	6da0      	ldr	r0, [r4, #88]	; 0x58
d0000192:	f000 fba1 	bl	d00008d8 <__retarget_lock_acquire_recursive>
d0000196:	89a3      	ldrh	r3, [r4, #12]
d0000198:	0719      	lsls	r1, r3, #28
d000019a:	d51d      	bpl.n	d00001d8 <_puts_r+0x78>
d000019c:	6923      	ldr	r3, [r4, #16]
d000019e:	b1db      	cbz	r3, d00001d8 <_puts_r+0x78>
d00001a0:	3e01      	subs	r6, #1
d00001a2:	68a3      	ldr	r3, [r4, #8]
d00001a4:	f816 1f01 	ldrb.w	r1, [r6, #1]!
d00001a8:	3b01      	subs	r3, #1
d00001aa:	60a3      	str	r3, [r4, #8]
d00001ac:	bb39      	cbnz	r1, d00001fe <_puts_r+0x9e>
d00001ae:	2b00      	cmp	r3, #0
d00001b0:	da38      	bge.n	d0000224 <_puts_r+0xc4>
d00001b2:	4622      	mov	r2, r4
d00001b4:	210a      	movs	r1, #10
d00001b6:	4628      	mov	r0, r5
d00001b8:	f000 f916 	bl	d00003e8 <__swbuf_r>
d00001bc:	3001      	adds	r0, #1
d00001be:	d011      	beq.n	d00001e4 <_puts_r+0x84>
d00001c0:	250a      	movs	r5, #10
d00001c2:	e011      	b.n	d00001e8 <_puts_r+0x88>
d00001c4:	4b1b      	ldr	r3, [pc, #108]	; (d0000234 <_puts_r+0xd4>)
d00001c6:	429c      	cmp	r4, r3
d00001c8:	d101      	bne.n	d00001ce <_puts_r+0x6e>
d00001ca:	68ac      	ldr	r4, [r5, #8]
d00001cc:	e7da      	b.n	d0000184 <_puts_r+0x24>
d00001ce:	4b1a      	ldr	r3, [pc, #104]	; (d0000238 <_puts_r+0xd8>)
d00001d0:	429c      	cmp	r4, r3
d00001d2:	bf08      	it	eq
d00001d4:	68ec      	ldreq	r4, [r5, #12]
d00001d6:	e7d5      	b.n	d0000184 <_puts_r+0x24>
d00001d8:	4621      	mov	r1, r4
d00001da:	4628      	mov	r0, r5
d00001dc:	f000 f956 	bl	d000048c <__swsetup_r>
d00001e0:	2800      	cmp	r0, #0
d00001e2:	d0dd      	beq.n	d00001a0 <_puts_r+0x40>
d00001e4:	f04f 35ff 	mov.w	r5, #4294967295	; 0xffffffff
d00001e8:	6e63      	ldr	r3, [r4, #100]	; 0x64
d00001ea:	07da      	lsls	r2, r3, #31
d00001ec:	d405      	bmi.n	d00001fa <_puts_r+0x9a>
d00001ee:	89a3      	ldrh	r3, [r4, #12]
d00001f0:	059b      	lsls	r3, r3, #22
d00001f2:	d402      	bmi.n	d00001fa <_puts_r+0x9a>
d00001f4:	6da0      	ldr	r0, [r4, #88]	; 0x58
d00001f6:	f000 fb70 	bl	d00008da <__retarget_lock_release_recursive>
d00001fa:	4628      	mov	r0, r5
d00001fc:	bd70      	pop	{r4, r5, r6, pc}
d00001fe:	2b00      	cmp	r3, #0
d0000200:	da04      	bge.n	d000020c <_puts_r+0xac>
d0000202:	69a2      	ldr	r2, [r4, #24]
d0000204:	429a      	cmp	r2, r3
d0000206:	dc06      	bgt.n	d0000216 <_puts_r+0xb6>
d0000208:	290a      	cmp	r1, #10
d000020a:	d004      	beq.n	d0000216 <_puts_r+0xb6>
d000020c:	6823      	ldr	r3, [r4, #0]
d000020e:	1c5a      	adds	r2, r3, #1
d0000210:	6022      	str	r2, [r4, #0]
d0000212:	7019      	strb	r1, [r3, #0]
d0000214:	e7c5      	b.n	d00001a2 <_puts_r+0x42>
d0000216:	4622      	mov	r2, r4
d0000218:	4628      	mov	r0, r5
d000021a:	f000 f8e5 	bl	d00003e8 <__swbuf_r>
d000021e:	3001      	adds	r0, #1
d0000220:	d1bf      	bne.n	d00001a2 <_puts_r+0x42>
d0000222:	e7df      	b.n	d00001e4 <_puts_r+0x84>
d0000224:	6823      	ldr	r3, [r4, #0]
d0000226:	250a      	movs	r5, #10
d0000228:	1c5a      	adds	r2, r3, #1
d000022a:	6022      	str	r2, [r4, #0]
d000022c:	701d      	strb	r5, [r3, #0]
d000022e:	e7db      	b.n	d00001e8 <_puts_r+0x88>
d0000230:	d000133c 	.word	0xd000133c
d0000234:	d000135c 	.word	0xd000135c
d0000238:	d000131c 	.word	0xd000131c

d000023c <puts>:
d000023c:	4b02      	ldr	r3, [pc, #8]	; (d0000248 <puts+0xc>)
d000023e:	4601      	mov	r1, r0
d0000240:	6818      	ldr	r0, [r3, #0]
d0000242:	f7ff bf8d 	b.w	d0000160 <_puts_r>
d0000246:	bf00      	nop
d0000248:	d00013b8 	.word	0xd00013b8

d000024c <setbuf>:
d000024c:	2900      	cmp	r1, #0
d000024e:	f44f 6380 	mov.w	r3, #1024	; 0x400
d0000252:	bf0c      	ite	eq
d0000254:	2202      	moveq	r2, #2
d0000256:	2200      	movne	r2, #0
d0000258:	f000 b800 	b.w	d000025c <setvbuf>

d000025c <setvbuf>:
d000025c:	e92d 43f7 	stmdb	sp!, {r0, r1, r2, r4, r5, r6, r7, r8, r9, lr}
d0000260:	461d      	mov	r5, r3
d0000262:	4b5d      	ldr	r3, [pc, #372]	; (d00003d8 <setvbuf+0x17c>)
d0000264:	681f      	ldr	r7, [r3, #0]
d0000266:	4604      	mov	r4, r0
d0000268:	460e      	mov	r6, r1
d000026a:	4690      	mov	r8, r2
d000026c:	b127      	cbz	r7, d0000278 <setvbuf+0x1c>
d000026e:	69bb      	ldr	r3, [r7, #24]
d0000270:	b913      	cbnz	r3, d0000278 <setvbuf+0x1c>
d0000272:	4638      	mov	r0, r7
d0000274:	f000 fa92 	bl	d000079c <__sinit>
d0000278:	4b58      	ldr	r3, [pc, #352]	; (d00003dc <setvbuf+0x180>)
d000027a:	429c      	cmp	r4, r3
d000027c:	d167      	bne.n	d000034e <setvbuf+0xf2>
d000027e:	687c      	ldr	r4, [r7, #4]
d0000280:	f1b8 0f02 	cmp.w	r8, #2
d0000284:	d006      	beq.n	d0000294 <setvbuf+0x38>
d0000286:	f1b8 0f01 	cmp.w	r8, #1
d000028a:	f200 809f 	bhi.w	d00003cc <setvbuf+0x170>
d000028e:	2d00      	cmp	r5, #0
d0000290:	f2c0 809c 	blt.w	d00003cc <setvbuf+0x170>
d0000294:	6e63      	ldr	r3, [r4, #100]	; 0x64
d0000296:	07db      	lsls	r3, r3, #31
d0000298:	d405      	bmi.n	d00002a6 <setvbuf+0x4a>
d000029a:	89a3      	ldrh	r3, [r4, #12]
d000029c:	0598      	lsls	r0, r3, #22
d000029e:	d402      	bmi.n	d00002a6 <setvbuf+0x4a>
d00002a0:	6da0      	ldr	r0, [r4, #88]	; 0x58
d00002a2:	f000 fb19 	bl	d00008d8 <__retarget_lock_acquire_recursive>
d00002a6:	4621      	mov	r1, r4
d00002a8:	4638      	mov	r0, r7
d00002aa:	f000 f9e3 	bl	d0000674 <_fflush_r>
d00002ae:	6b61      	ldr	r1, [r4, #52]	; 0x34
d00002b0:	b141      	cbz	r1, d00002c4 <setvbuf+0x68>
d00002b2:	f104 0344 	add.w	r3, r4, #68	; 0x44
d00002b6:	4299      	cmp	r1, r3
d00002b8:	d002      	beq.n	d00002c0 <setvbuf+0x64>
d00002ba:	4638      	mov	r0, r7
d00002bc:	f000 fb7a 	bl	d00009b4 <_free_r>
d00002c0:	2300      	movs	r3, #0
d00002c2:	6363      	str	r3, [r4, #52]	; 0x34
d00002c4:	2300      	movs	r3, #0
d00002c6:	61a3      	str	r3, [r4, #24]
d00002c8:	6063      	str	r3, [r4, #4]
d00002ca:	89a3      	ldrh	r3, [r4, #12]
d00002cc:	0619      	lsls	r1, r3, #24
d00002ce:	d503      	bpl.n	d00002d8 <setvbuf+0x7c>
d00002d0:	6921      	ldr	r1, [r4, #16]
d00002d2:	4638      	mov	r0, r7
d00002d4:	f000 fb6e 	bl	d00009b4 <_free_r>
d00002d8:	89a3      	ldrh	r3, [r4, #12]
d00002da:	f423 634a 	bic.w	r3, r3, #3232	; 0xca0
d00002de:	f023 0303 	bic.w	r3, r3, #3
d00002e2:	f1b8 0f02 	cmp.w	r8, #2
d00002e6:	81a3      	strh	r3, [r4, #12]
d00002e8:	d06c      	beq.n	d00003c4 <setvbuf+0x168>
d00002ea:	ab01      	add	r3, sp, #4
d00002ec:	466a      	mov	r2, sp
d00002ee:	4621      	mov	r1, r4
d00002f0:	4638      	mov	r0, r7
d00002f2:	f000 faf3 	bl	d00008dc <__swhatbuf_r>
d00002f6:	89a3      	ldrh	r3, [r4, #12]
d00002f8:	4318      	orrs	r0, r3
d00002fa:	81a0      	strh	r0, [r4, #12]
d00002fc:	2d00      	cmp	r5, #0
d00002fe:	d130      	bne.n	d0000362 <setvbuf+0x106>
d0000300:	9d00      	ldr	r5, [sp, #0]
d0000302:	4628      	mov	r0, r5
d0000304:	f000 fb4e 	bl	d00009a4 <malloc>
d0000308:	4606      	mov	r6, r0
d000030a:	2800      	cmp	r0, #0
d000030c:	d155      	bne.n	d00003ba <setvbuf+0x15e>
d000030e:	f8dd 9000 	ldr.w	r9, [sp]
d0000312:	45a9      	cmp	r9, r5
d0000314:	d14a      	bne.n	d00003ac <setvbuf+0x150>
d0000316:	f04f 35ff 	mov.w	r5, #4294967295	; 0xffffffff
d000031a:	2200      	movs	r2, #0
d000031c:	60a2      	str	r2, [r4, #8]
d000031e:	f104 0247 	add.w	r2, r4, #71	; 0x47
d0000322:	6022      	str	r2, [r4, #0]
d0000324:	6122      	str	r2, [r4, #16]
d0000326:	2201      	movs	r2, #1
d0000328:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
d000032c:	6162      	str	r2, [r4, #20]
d000032e:	6e62      	ldr	r2, [r4, #100]	; 0x64
d0000330:	f043 0302 	orr.w	r3, r3, #2
d0000334:	07d2      	lsls	r2, r2, #31
d0000336:	81a3      	strh	r3, [r4, #12]
d0000338:	d405      	bmi.n	d0000346 <setvbuf+0xea>
d000033a:	f413 7f00 	tst.w	r3, #512	; 0x200
d000033e:	d102      	bne.n	d0000346 <setvbuf+0xea>
d0000340:	6da0      	ldr	r0, [r4, #88]	; 0x58
d0000342:	f000 faca 	bl	d00008da <__retarget_lock_release_recursive>
d0000346:	4628      	mov	r0, r5
d0000348:	b003      	add	sp, #12
d000034a:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
d000034e:	4b24      	ldr	r3, [pc, #144]	; (d00003e0 <setvbuf+0x184>)
d0000350:	429c      	cmp	r4, r3
d0000352:	d101      	bne.n	d0000358 <setvbuf+0xfc>
d0000354:	68bc      	ldr	r4, [r7, #8]
d0000356:	e793      	b.n	d0000280 <setvbuf+0x24>
d0000358:	4b22      	ldr	r3, [pc, #136]	; (d00003e4 <setvbuf+0x188>)
d000035a:	429c      	cmp	r4, r3
d000035c:	bf08      	it	eq
d000035e:	68fc      	ldreq	r4, [r7, #12]
d0000360:	e78e      	b.n	d0000280 <setvbuf+0x24>
d0000362:	2e00      	cmp	r6, #0
d0000364:	d0cd      	beq.n	d0000302 <setvbuf+0xa6>
d0000366:	69bb      	ldr	r3, [r7, #24]
d0000368:	b913      	cbnz	r3, d0000370 <setvbuf+0x114>
d000036a:	4638      	mov	r0, r7
d000036c:	f000 fa16 	bl	d000079c <__sinit>
d0000370:	f1b8 0f01 	cmp.w	r8, #1
d0000374:	bf08      	it	eq
d0000376:	89a3      	ldrheq	r3, [r4, #12]
d0000378:	6026      	str	r6, [r4, #0]
d000037a:	bf04      	itt	eq
d000037c:	f043 0301 	orreq.w	r3, r3, #1
d0000380:	81a3      	strheq	r3, [r4, #12]
d0000382:	89a2      	ldrh	r2, [r4, #12]
d0000384:	f012 0308 	ands.w	r3, r2, #8
d0000388:	e9c4 6504 	strd	r6, r5, [r4, #16]
d000038c:	d01c      	beq.n	d00003c8 <setvbuf+0x16c>
d000038e:	07d3      	lsls	r3, r2, #31
d0000390:	bf41      	itttt	mi
d0000392:	2300      	movmi	r3, #0
d0000394:	426d      	negmi	r5, r5
d0000396:	60a3      	strmi	r3, [r4, #8]
d0000398:	61a5      	strmi	r5, [r4, #24]
d000039a:	bf58      	it	pl
d000039c:	60a5      	strpl	r5, [r4, #8]
d000039e:	6e65      	ldr	r5, [r4, #100]	; 0x64
d00003a0:	f015 0501 	ands.w	r5, r5, #1
d00003a4:	d115      	bne.n	d00003d2 <setvbuf+0x176>
d00003a6:	f412 7f00 	tst.w	r2, #512	; 0x200
d00003aa:	e7c8      	b.n	d000033e <setvbuf+0xe2>
d00003ac:	4648      	mov	r0, r9
d00003ae:	f000 faf9 	bl	d00009a4 <malloc>
d00003b2:	4606      	mov	r6, r0
d00003b4:	2800      	cmp	r0, #0
d00003b6:	d0ae      	beq.n	d0000316 <setvbuf+0xba>
d00003b8:	464d      	mov	r5, r9
d00003ba:	89a3      	ldrh	r3, [r4, #12]
d00003bc:	f043 0380 	orr.w	r3, r3, #128	; 0x80
d00003c0:	81a3      	strh	r3, [r4, #12]
d00003c2:	e7d0      	b.n	d0000366 <setvbuf+0x10a>
d00003c4:	2500      	movs	r5, #0
d00003c6:	e7a8      	b.n	d000031a <setvbuf+0xbe>
d00003c8:	60a3      	str	r3, [r4, #8]
d00003ca:	e7e8      	b.n	d000039e <setvbuf+0x142>
d00003cc:	f04f 35ff 	mov.w	r5, #4294967295	; 0xffffffff
d00003d0:	e7b9      	b.n	d0000346 <setvbuf+0xea>
d00003d2:	2500      	movs	r5, #0
d00003d4:	e7b7      	b.n	d0000346 <setvbuf+0xea>
d00003d6:	bf00      	nop
d00003d8:	d00013b8 	.word	0xd00013b8
d00003dc:	d000133c 	.word	0xd000133c
d00003e0:	d000135c 	.word	0xd000135c
d00003e4:	d000131c 	.word	0xd000131c

d00003e8 <__swbuf_r>:
d00003e8:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d00003ea:	460e      	mov	r6, r1
d00003ec:	4614      	mov	r4, r2
d00003ee:	4605      	mov	r5, r0
d00003f0:	b118      	cbz	r0, d00003fa <__swbuf_r+0x12>
d00003f2:	6983      	ldr	r3, [r0, #24]
d00003f4:	b90b      	cbnz	r3, d00003fa <__swbuf_r+0x12>
d00003f6:	f000 f9d1 	bl	d000079c <__sinit>
d00003fa:	4b21      	ldr	r3, [pc, #132]	; (d0000480 <__swbuf_r+0x98>)
d00003fc:	429c      	cmp	r4, r3
d00003fe:	d12b      	bne.n	d0000458 <__swbuf_r+0x70>
d0000400:	686c      	ldr	r4, [r5, #4]
d0000402:	69a3      	ldr	r3, [r4, #24]
d0000404:	60a3      	str	r3, [r4, #8]
d0000406:	89a3      	ldrh	r3, [r4, #12]
d0000408:	071a      	lsls	r2, r3, #28
d000040a:	d52f      	bpl.n	d000046c <__swbuf_r+0x84>
d000040c:	6923      	ldr	r3, [r4, #16]
d000040e:	b36b      	cbz	r3, d000046c <__swbuf_r+0x84>
d0000410:	6923      	ldr	r3, [r4, #16]
d0000412:	6820      	ldr	r0, [r4, #0]
d0000414:	1ac0      	subs	r0, r0, r3
d0000416:	6963      	ldr	r3, [r4, #20]
d0000418:	b2f6      	uxtb	r6, r6
d000041a:	4283      	cmp	r3, r0
d000041c:	4637      	mov	r7, r6
d000041e:	dc04      	bgt.n	d000042a <__swbuf_r+0x42>
d0000420:	4621      	mov	r1, r4
d0000422:	4628      	mov	r0, r5
d0000424:	f000 f926 	bl	d0000674 <_fflush_r>
d0000428:	bb30      	cbnz	r0, d0000478 <__swbuf_r+0x90>
d000042a:	68a3      	ldr	r3, [r4, #8]
d000042c:	3b01      	subs	r3, #1
d000042e:	60a3      	str	r3, [r4, #8]
d0000430:	6823      	ldr	r3, [r4, #0]
d0000432:	1c5a      	adds	r2, r3, #1
d0000434:	6022      	str	r2, [r4, #0]
d0000436:	701e      	strb	r6, [r3, #0]
d0000438:	6963      	ldr	r3, [r4, #20]
d000043a:	3001      	adds	r0, #1
d000043c:	4283      	cmp	r3, r0
d000043e:	d004      	beq.n	d000044a <__swbuf_r+0x62>
d0000440:	89a3      	ldrh	r3, [r4, #12]
d0000442:	07db      	lsls	r3, r3, #31
d0000444:	d506      	bpl.n	d0000454 <__swbuf_r+0x6c>
d0000446:	2e0a      	cmp	r6, #10
d0000448:	d104      	bne.n	d0000454 <__swbuf_r+0x6c>
d000044a:	4621      	mov	r1, r4
d000044c:	4628      	mov	r0, r5
d000044e:	f000 f911 	bl	d0000674 <_fflush_r>
d0000452:	b988      	cbnz	r0, d0000478 <__swbuf_r+0x90>
d0000454:	4638      	mov	r0, r7
d0000456:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d0000458:	4b0a      	ldr	r3, [pc, #40]	; (d0000484 <__swbuf_r+0x9c>)
d000045a:	429c      	cmp	r4, r3
d000045c:	d101      	bne.n	d0000462 <__swbuf_r+0x7a>
d000045e:	68ac      	ldr	r4, [r5, #8]
d0000460:	e7cf      	b.n	d0000402 <__swbuf_r+0x1a>
d0000462:	4b09      	ldr	r3, [pc, #36]	; (d0000488 <__swbuf_r+0xa0>)
d0000464:	429c      	cmp	r4, r3
d0000466:	bf08      	it	eq
d0000468:	68ec      	ldreq	r4, [r5, #12]
d000046a:	e7ca      	b.n	d0000402 <__swbuf_r+0x1a>
d000046c:	4621      	mov	r1, r4
d000046e:	4628      	mov	r0, r5
d0000470:	f000 f80c 	bl	d000048c <__swsetup_r>
d0000474:	2800      	cmp	r0, #0
d0000476:	d0cb      	beq.n	d0000410 <__swbuf_r+0x28>
d0000478:	f04f 37ff 	mov.w	r7, #4294967295	; 0xffffffff
d000047c:	e7ea      	b.n	d0000454 <__swbuf_r+0x6c>
d000047e:	bf00      	nop
d0000480:	d000133c 	.word	0xd000133c
d0000484:	d000135c 	.word	0xd000135c
d0000488:	d000131c 	.word	0xd000131c

d000048c <__swsetup_r>:
d000048c:	4b32      	ldr	r3, [pc, #200]	; (d0000558 <__swsetup_r+0xcc>)
d000048e:	b570      	push	{r4, r5, r6, lr}
d0000490:	681d      	ldr	r5, [r3, #0]
d0000492:	4606      	mov	r6, r0
d0000494:	460c      	mov	r4, r1
d0000496:	b125      	cbz	r5, d00004a2 <__swsetup_r+0x16>
d0000498:	69ab      	ldr	r3, [r5, #24]
d000049a:	b913      	cbnz	r3, d00004a2 <__swsetup_r+0x16>
d000049c:	4628      	mov	r0, r5
d000049e:	f000 f97d 	bl	d000079c <__sinit>
d00004a2:	4b2e      	ldr	r3, [pc, #184]	; (d000055c <__swsetup_r+0xd0>)
d00004a4:	429c      	cmp	r4, r3
d00004a6:	d10f      	bne.n	d00004c8 <__swsetup_r+0x3c>
d00004a8:	686c      	ldr	r4, [r5, #4]
d00004aa:	89a3      	ldrh	r3, [r4, #12]
d00004ac:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
d00004b0:	0719      	lsls	r1, r3, #28
d00004b2:	d42c      	bmi.n	d000050e <__swsetup_r+0x82>
d00004b4:	06dd      	lsls	r5, r3, #27
d00004b6:	d411      	bmi.n	d00004dc <__swsetup_r+0x50>
d00004b8:	2309      	movs	r3, #9
d00004ba:	6033      	str	r3, [r6, #0]
d00004bc:	f042 0340 	orr.w	r3, r2, #64	; 0x40
d00004c0:	81a3      	strh	r3, [r4, #12]
d00004c2:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d00004c6:	e03e      	b.n	d0000546 <__swsetup_r+0xba>
d00004c8:	4b25      	ldr	r3, [pc, #148]	; (d0000560 <__swsetup_r+0xd4>)
d00004ca:	429c      	cmp	r4, r3
d00004cc:	d101      	bne.n	d00004d2 <__swsetup_r+0x46>
d00004ce:	68ac      	ldr	r4, [r5, #8]
d00004d0:	e7eb      	b.n	d00004aa <__swsetup_r+0x1e>
d00004d2:	4b24      	ldr	r3, [pc, #144]	; (d0000564 <__swsetup_r+0xd8>)
d00004d4:	429c      	cmp	r4, r3
d00004d6:	bf08      	it	eq
d00004d8:	68ec      	ldreq	r4, [r5, #12]
d00004da:	e7e6      	b.n	d00004aa <__swsetup_r+0x1e>
d00004dc:	0758      	lsls	r0, r3, #29
d00004de:	d512      	bpl.n	d0000506 <__swsetup_r+0x7a>
d00004e0:	6b61      	ldr	r1, [r4, #52]	; 0x34
d00004e2:	b141      	cbz	r1, d00004f6 <__swsetup_r+0x6a>
d00004e4:	f104 0344 	add.w	r3, r4, #68	; 0x44
d00004e8:	4299      	cmp	r1, r3
d00004ea:	d002      	beq.n	d00004f2 <__swsetup_r+0x66>
d00004ec:	4630      	mov	r0, r6
d00004ee:	f000 fa61 	bl	d00009b4 <_free_r>
d00004f2:	2300      	movs	r3, #0
d00004f4:	6363      	str	r3, [r4, #52]	; 0x34
d00004f6:	89a3      	ldrh	r3, [r4, #12]
d00004f8:	f023 0324 	bic.w	r3, r3, #36	; 0x24
d00004fc:	81a3      	strh	r3, [r4, #12]
d00004fe:	2300      	movs	r3, #0
d0000500:	6063      	str	r3, [r4, #4]
d0000502:	6923      	ldr	r3, [r4, #16]
d0000504:	6023      	str	r3, [r4, #0]
d0000506:	89a3      	ldrh	r3, [r4, #12]
d0000508:	f043 0308 	orr.w	r3, r3, #8
d000050c:	81a3      	strh	r3, [r4, #12]
d000050e:	6923      	ldr	r3, [r4, #16]
d0000510:	b94b      	cbnz	r3, d0000526 <__swsetup_r+0x9a>
d0000512:	89a3      	ldrh	r3, [r4, #12]
d0000514:	f403 7320 	and.w	r3, r3, #640	; 0x280
d0000518:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
d000051c:	d003      	beq.n	d0000526 <__swsetup_r+0x9a>
d000051e:	4621      	mov	r1, r4
d0000520:	4630      	mov	r0, r6
d0000522:	f000 f9ff 	bl	d0000924 <__smakebuf_r>
d0000526:	89a0      	ldrh	r0, [r4, #12]
d0000528:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
d000052c:	f010 0301 	ands.w	r3, r0, #1
d0000530:	d00a      	beq.n	d0000548 <__swsetup_r+0xbc>
d0000532:	2300      	movs	r3, #0
d0000534:	60a3      	str	r3, [r4, #8]
d0000536:	6963      	ldr	r3, [r4, #20]
d0000538:	425b      	negs	r3, r3
d000053a:	61a3      	str	r3, [r4, #24]
d000053c:	6923      	ldr	r3, [r4, #16]
d000053e:	b943      	cbnz	r3, d0000552 <__swsetup_r+0xc6>
d0000540:	f010 0080 	ands.w	r0, r0, #128	; 0x80
d0000544:	d1ba      	bne.n	d00004bc <__swsetup_r+0x30>
d0000546:	bd70      	pop	{r4, r5, r6, pc}
d0000548:	0781      	lsls	r1, r0, #30
d000054a:	bf58      	it	pl
d000054c:	6963      	ldrpl	r3, [r4, #20]
d000054e:	60a3      	str	r3, [r4, #8]
d0000550:	e7f4      	b.n	d000053c <__swsetup_r+0xb0>
d0000552:	2000      	movs	r0, #0
d0000554:	e7f7      	b.n	d0000546 <__swsetup_r+0xba>
d0000556:	bf00      	nop
d0000558:	d00013b8 	.word	0xd00013b8
d000055c:	d000133c 	.word	0xd000133c
d0000560:	d000135c 	.word	0xd000135c
d0000564:	d000131c 	.word	0xd000131c

d0000568 <__sflush_r>:
d0000568:	898a      	ldrh	r2, [r1, #12]
d000056a:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
d000056e:	4605      	mov	r5, r0
d0000570:	0710      	lsls	r0, r2, #28
d0000572:	460c      	mov	r4, r1
d0000574:	d458      	bmi.n	d0000628 <__sflush_r+0xc0>
d0000576:	684b      	ldr	r3, [r1, #4]
d0000578:	2b00      	cmp	r3, #0
d000057a:	dc05      	bgt.n	d0000588 <__sflush_r+0x20>
d000057c:	6c0b      	ldr	r3, [r1, #64]	; 0x40
d000057e:	2b00      	cmp	r3, #0
d0000580:	dc02      	bgt.n	d0000588 <__sflush_r+0x20>
d0000582:	2000      	movs	r0, #0
d0000584:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
d0000588:	6ae6      	ldr	r6, [r4, #44]	; 0x2c
d000058a:	2e00      	cmp	r6, #0
d000058c:	d0f9      	beq.n	d0000582 <__sflush_r+0x1a>
d000058e:	2300      	movs	r3, #0
d0000590:	f412 5280 	ands.w	r2, r2, #4096	; 0x1000
d0000594:	682f      	ldr	r7, [r5, #0]
d0000596:	602b      	str	r3, [r5, #0]
d0000598:	d032      	beq.n	d0000600 <__sflush_r+0x98>
d000059a:	6d60      	ldr	r0, [r4, #84]	; 0x54
d000059c:	89a3      	ldrh	r3, [r4, #12]
d000059e:	075a      	lsls	r2, r3, #29
d00005a0:	d505      	bpl.n	d00005ae <__sflush_r+0x46>
d00005a2:	6863      	ldr	r3, [r4, #4]
d00005a4:	1ac0      	subs	r0, r0, r3
d00005a6:	6b63      	ldr	r3, [r4, #52]	; 0x34
d00005a8:	b10b      	cbz	r3, d00005ae <__sflush_r+0x46>
d00005aa:	6c23      	ldr	r3, [r4, #64]	; 0x40
d00005ac:	1ac0      	subs	r0, r0, r3
d00005ae:	2300      	movs	r3, #0
d00005b0:	4602      	mov	r2, r0
d00005b2:	6ae6      	ldr	r6, [r4, #44]	; 0x2c
d00005b4:	6a21      	ldr	r1, [r4, #32]
d00005b6:	4628      	mov	r0, r5
d00005b8:	47b0      	blx	r6
d00005ba:	1c43      	adds	r3, r0, #1
d00005bc:	89a3      	ldrh	r3, [r4, #12]
d00005be:	d106      	bne.n	d00005ce <__sflush_r+0x66>
d00005c0:	6829      	ldr	r1, [r5, #0]
d00005c2:	291d      	cmp	r1, #29
d00005c4:	d82c      	bhi.n	d0000620 <__sflush_r+0xb8>
d00005c6:	4a2a      	ldr	r2, [pc, #168]	; (d0000670 <__sflush_r+0x108>)
d00005c8:	40ca      	lsrs	r2, r1
d00005ca:	07d6      	lsls	r6, r2, #31
d00005cc:	d528      	bpl.n	d0000620 <__sflush_r+0xb8>
d00005ce:	2200      	movs	r2, #0
d00005d0:	6062      	str	r2, [r4, #4]
d00005d2:	04d9      	lsls	r1, r3, #19
d00005d4:	6922      	ldr	r2, [r4, #16]
d00005d6:	6022      	str	r2, [r4, #0]
d00005d8:	d504      	bpl.n	d00005e4 <__sflush_r+0x7c>
d00005da:	1c42      	adds	r2, r0, #1
d00005dc:	d101      	bne.n	d00005e2 <__sflush_r+0x7a>
d00005de:	682b      	ldr	r3, [r5, #0]
d00005e0:	b903      	cbnz	r3, d00005e4 <__sflush_r+0x7c>
d00005e2:	6560      	str	r0, [r4, #84]	; 0x54
d00005e4:	6b61      	ldr	r1, [r4, #52]	; 0x34
d00005e6:	602f      	str	r7, [r5, #0]
d00005e8:	2900      	cmp	r1, #0
d00005ea:	d0ca      	beq.n	d0000582 <__sflush_r+0x1a>
d00005ec:	f104 0344 	add.w	r3, r4, #68	; 0x44
d00005f0:	4299      	cmp	r1, r3
d00005f2:	d002      	beq.n	d00005fa <__sflush_r+0x92>
d00005f4:	4628      	mov	r0, r5
d00005f6:	f000 f9dd 	bl	d00009b4 <_free_r>
d00005fa:	2000      	movs	r0, #0
d00005fc:	6360      	str	r0, [r4, #52]	; 0x34
d00005fe:	e7c1      	b.n	d0000584 <__sflush_r+0x1c>
d0000600:	6a21      	ldr	r1, [r4, #32]
d0000602:	2301      	movs	r3, #1
d0000604:	4628      	mov	r0, r5
d0000606:	47b0      	blx	r6
d0000608:	1c41      	adds	r1, r0, #1
d000060a:	d1c7      	bne.n	d000059c <__sflush_r+0x34>
d000060c:	682b      	ldr	r3, [r5, #0]
d000060e:	2b00      	cmp	r3, #0
d0000610:	d0c4      	beq.n	d000059c <__sflush_r+0x34>
d0000612:	2b1d      	cmp	r3, #29
d0000614:	d001      	beq.n	d000061a <__sflush_r+0xb2>
d0000616:	2b16      	cmp	r3, #22
d0000618:	d101      	bne.n	d000061e <__sflush_r+0xb6>
d000061a:	602f      	str	r7, [r5, #0]
d000061c:	e7b1      	b.n	d0000582 <__sflush_r+0x1a>
d000061e:	89a3      	ldrh	r3, [r4, #12]
d0000620:	f043 0340 	orr.w	r3, r3, #64	; 0x40
d0000624:	81a3      	strh	r3, [r4, #12]
d0000626:	e7ad      	b.n	d0000584 <__sflush_r+0x1c>
d0000628:	690f      	ldr	r7, [r1, #16]
d000062a:	2f00      	cmp	r7, #0
d000062c:	d0a9      	beq.n	d0000582 <__sflush_r+0x1a>
d000062e:	0793      	lsls	r3, r2, #30
d0000630:	680e      	ldr	r6, [r1, #0]
d0000632:	bf08      	it	eq
d0000634:	694b      	ldreq	r3, [r1, #20]
d0000636:	600f      	str	r7, [r1, #0]
d0000638:	bf18      	it	ne
d000063a:	2300      	movne	r3, #0
d000063c:	eba6 0807 	sub.w	r8, r6, r7
d0000640:	608b      	str	r3, [r1, #8]
d0000642:	f1b8 0f00 	cmp.w	r8, #0
d0000646:	dd9c      	ble.n	d0000582 <__sflush_r+0x1a>
d0000648:	6a21      	ldr	r1, [r4, #32]
d000064a:	6aa6      	ldr	r6, [r4, #40]	; 0x28
d000064c:	4643      	mov	r3, r8
d000064e:	463a      	mov	r2, r7
d0000650:	4628      	mov	r0, r5
d0000652:	47b0      	blx	r6
d0000654:	2800      	cmp	r0, #0
d0000656:	dc06      	bgt.n	d0000666 <__sflush_r+0xfe>
d0000658:	89a3      	ldrh	r3, [r4, #12]
d000065a:	f043 0340 	orr.w	r3, r3, #64	; 0x40
d000065e:	81a3      	strh	r3, [r4, #12]
d0000660:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d0000664:	e78e      	b.n	d0000584 <__sflush_r+0x1c>
d0000666:	4407      	add	r7, r0
d0000668:	eba8 0800 	sub.w	r8, r8, r0
d000066c:	e7e9      	b.n	d0000642 <__sflush_r+0xda>
d000066e:	bf00      	nop
d0000670:	20400001 	.word	0x20400001

d0000674 <_fflush_r>:
d0000674:	b538      	push	{r3, r4, r5, lr}
d0000676:	690b      	ldr	r3, [r1, #16]
d0000678:	4605      	mov	r5, r0
d000067a:	460c      	mov	r4, r1
d000067c:	b913      	cbnz	r3, d0000684 <_fflush_r+0x10>
d000067e:	2500      	movs	r5, #0
d0000680:	4628      	mov	r0, r5
d0000682:	bd38      	pop	{r3, r4, r5, pc}
d0000684:	b118      	cbz	r0, d000068e <_fflush_r+0x1a>
d0000686:	6983      	ldr	r3, [r0, #24]
d0000688:	b90b      	cbnz	r3, d000068e <_fflush_r+0x1a>
d000068a:	f000 f887 	bl	d000079c <__sinit>
d000068e:	4b14      	ldr	r3, [pc, #80]	; (d00006e0 <_fflush_r+0x6c>)
d0000690:	429c      	cmp	r4, r3
d0000692:	d11b      	bne.n	d00006cc <_fflush_r+0x58>
d0000694:	686c      	ldr	r4, [r5, #4]
d0000696:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
d000069a:	2b00      	cmp	r3, #0
d000069c:	d0ef      	beq.n	d000067e <_fflush_r+0xa>
d000069e:	6e62      	ldr	r2, [r4, #100]	; 0x64
d00006a0:	07d0      	lsls	r0, r2, #31
d00006a2:	d404      	bmi.n	d00006ae <_fflush_r+0x3a>
d00006a4:	0599      	lsls	r1, r3, #22
d00006a6:	d402      	bmi.n	d00006ae <_fflush_r+0x3a>
d00006a8:	6da0      	ldr	r0, [r4, #88]	; 0x58
d00006aa:	f000 f915 	bl	d00008d8 <__retarget_lock_acquire_recursive>
d00006ae:	4628      	mov	r0, r5
d00006b0:	4621      	mov	r1, r4
d00006b2:	f7ff ff59 	bl	d0000568 <__sflush_r>
d00006b6:	6e63      	ldr	r3, [r4, #100]	; 0x64
d00006b8:	07da      	lsls	r2, r3, #31
d00006ba:	4605      	mov	r5, r0
d00006bc:	d4e0      	bmi.n	d0000680 <_fflush_r+0xc>
d00006be:	89a3      	ldrh	r3, [r4, #12]
d00006c0:	059b      	lsls	r3, r3, #22
d00006c2:	d4dd      	bmi.n	d0000680 <_fflush_r+0xc>
d00006c4:	6da0      	ldr	r0, [r4, #88]	; 0x58
d00006c6:	f000 f908 	bl	d00008da <__retarget_lock_release_recursive>
d00006ca:	e7d9      	b.n	d0000680 <_fflush_r+0xc>
d00006cc:	4b05      	ldr	r3, [pc, #20]	; (d00006e4 <_fflush_r+0x70>)
d00006ce:	429c      	cmp	r4, r3
d00006d0:	d101      	bne.n	d00006d6 <_fflush_r+0x62>
d00006d2:	68ac      	ldr	r4, [r5, #8]
d00006d4:	e7df      	b.n	d0000696 <_fflush_r+0x22>
d00006d6:	4b04      	ldr	r3, [pc, #16]	; (d00006e8 <_fflush_r+0x74>)
d00006d8:	429c      	cmp	r4, r3
d00006da:	bf08      	it	eq
d00006dc:	68ec      	ldreq	r4, [r5, #12]
d00006de:	e7da      	b.n	d0000696 <_fflush_r+0x22>
d00006e0:	d000133c 	.word	0xd000133c
d00006e4:	d000135c 	.word	0xd000135c
d00006e8:	d000131c 	.word	0xd000131c

d00006ec <std>:
d00006ec:	2300      	movs	r3, #0
d00006ee:	b510      	push	{r4, lr}
d00006f0:	4604      	mov	r4, r0
d00006f2:	e9c0 3300 	strd	r3, r3, [r0]
d00006f6:	e9c0 3304 	strd	r3, r3, [r0, #16]
d00006fa:	6083      	str	r3, [r0, #8]
d00006fc:	8181      	strh	r1, [r0, #12]
d00006fe:	6643      	str	r3, [r0, #100]	; 0x64
d0000700:	81c2      	strh	r2, [r0, #14]
d0000702:	6183      	str	r3, [r0, #24]
d0000704:	4619      	mov	r1, r3
d0000706:	2208      	movs	r2, #8
d0000708:	305c      	adds	r0, #92	; 0x5c
d000070a:	f7ff fc97 	bl	d000003c <memset>
d000070e:	4b05      	ldr	r3, [pc, #20]	; (d0000724 <std+0x38>)
d0000710:	6263      	str	r3, [r4, #36]	; 0x24
d0000712:	4b05      	ldr	r3, [pc, #20]	; (d0000728 <std+0x3c>)
d0000714:	62a3      	str	r3, [r4, #40]	; 0x28
d0000716:	4b05      	ldr	r3, [pc, #20]	; (d000072c <std+0x40>)
d0000718:	62e3      	str	r3, [r4, #44]	; 0x2c
d000071a:	4b05      	ldr	r3, [pc, #20]	; (d0000730 <std+0x44>)
d000071c:	6224      	str	r4, [r4, #32]
d000071e:	6323      	str	r3, [r4, #48]	; 0x30
d0000720:	bd10      	pop	{r4, pc}
d0000722:	bf00      	nop
d0000724:	d00010e5 	.word	0xd00010e5
d0000728:	d0001107 	.word	0xd0001107
d000072c:	d000113f 	.word	0xd000113f
d0000730:	d0001163 	.word	0xd0001163

d0000734 <_cleanup_r>:
d0000734:	4901      	ldr	r1, [pc, #4]	; (d000073c <_cleanup_r+0x8>)
d0000736:	f000 b8af 	b.w	d0000898 <_fwalk_reent>
d000073a:	bf00      	nop
d000073c:	d0000675 	.word	0xd0000675

d0000740 <__sfmoreglue>:
d0000740:	b570      	push	{r4, r5, r6, lr}
d0000742:	1e4a      	subs	r2, r1, #1
d0000744:	2568      	movs	r5, #104	; 0x68
d0000746:	4355      	muls	r5, r2
d0000748:	460e      	mov	r6, r1
d000074a:	f105 0174 	add.w	r1, r5, #116	; 0x74
d000074e:	f000 f981 	bl	d0000a54 <_malloc_r>
d0000752:	4604      	mov	r4, r0
d0000754:	b140      	cbz	r0, d0000768 <__sfmoreglue+0x28>
d0000756:	2100      	movs	r1, #0
d0000758:	e9c0 1600 	strd	r1, r6, [r0]
d000075c:	300c      	adds	r0, #12
d000075e:	60a0      	str	r0, [r4, #8]
d0000760:	f105 0268 	add.w	r2, r5, #104	; 0x68
d0000764:	f7ff fc6a 	bl	d000003c <memset>
d0000768:	4620      	mov	r0, r4
d000076a:	bd70      	pop	{r4, r5, r6, pc}

d000076c <__sfp_lock_acquire>:
d000076c:	4801      	ldr	r0, [pc, #4]	; (d0000774 <__sfp_lock_acquire+0x8>)
d000076e:	f000 b8b3 	b.w	d00008d8 <__retarget_lock_acquire_recursive>
d0000772:	bf00      	nop
d0000774:	d0001434 	.word	0xd0001434

d0000778 <__sfp_lock_release>:
d0000778:	4801      	ldr	r0, [pc, #4]	; (d0000780 <__sfp_lock_release+0x8>)
d000077a:	f000 b8ae 	b.w	d00008da <__retarget_lock_release_recursive>
d000077e:	bf00      	nop
d0000780:	d0001434 	.word	0xd0001434

d0000784 <__sinit_lock_acquire>:
d0000784:	4801      	ldr	r0, [pc, #4]	; (d000078c <__sinit_lock_acquire+0x8>)
d0000786:	f000 b8a7 	b.w	d00008d8 <__retarget_lock_acquire_recursive>
d000078a:	bf00      	nop
d000078c:	d000142f 	.word	0xd000142f

d0000790 <__sinit_lock_release>:
d0000790:	4801      	ldr	r0, [pc, #4]	; (d0000798 <__sinit_lock_release+0x8>)
d0000792:	f000 b8a2 	b.w	d00008da <__retarget_lock_release_recursive>
d0000796:	bf00      	nop
d0000798:	d000142f 	.word	0xd000142f

d000079c <__sinit>:
d000079c:	b510      	push	{r4, lr}
d000079e:	4604      	mov	r4, r0
d00007a0:	f7ff fff0 	bl	d0000784 <__sinit_lock_acquire>
d00007a4:	69a3      	ldr	r3, [r4, #24]
d00007a6:	b11b      	cbz	r3, d00007b0 <__sinit+0x14>
d00007a8:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
d00007ac:	f7ff bff0 	b.w	d0000790 <__sinit_lock_release>
d00007b0:	e9c4 3312 	strd	r3, r3, [r4, #72]	; 0x48
d00007b4:	6523      	str	r3, [r4, #80]	; 0x50
d00007b6:	4b13      	ldr	r3, [pc, #76]	; (d0000804 <__sinit+0x68>)
d00007b8:	4a13      	ldr	r2, [pc, #76]	; (d0000808 <__sinit+0x6c>)
d00007ba:	681b      	ldr	r3, [r3, #0]
d00007bc:	62a2      	str	r2, [r4, #40]	; 0x28
d00007be:	42a3      	cmp	r3, r4
d00007c0:	bf04      	itt	eq
d00007c2:	2301      	moveq	r3, #1
d00007c4:	61a3      	streq	r3, [r4, #24]
d00007c6:	4620      	mov	r0, r4
d00007c8:	f000 f820 	bl	d000080c <__sfp>
d00007cc:	6060      	str	r0, [r4, #4]
d00007ce:	4620      	mov	r0, r4
d00007d0:	f000 f81c 	bl	d000080c <__sfp>
d00007d4:	60a0      	str	r0, [r4, #8]
d00007d6:	4620      	mov	r0, r4
d00007d8:	f000 f818 	bl	d000080c <__sfp>
d00007dc:	2200      	movs	r2, #0
d00007de:	60e0      	str	r0, [r4, #12]
d00007e0:	2104      	movs	r1, #4
d00007e2:	6860      	ldr	r0, [r4, #4]
d00007e4:	f7ff ff82 	bl	d00006ec <std>
d00007e8:	68a0      	ldr	r0, [r4, #8]
d00007ea:	2201      	movs	r2, #1
d00007ec:	2109      	movs	r1, #9
d00007ee:	f7ff ff7d 	bl	d00006ec <std>
d00007f2:	68e0      	ldr	r0, [r4, #12]
d00007f4:	2202      	movs	r2, #2
d00007f6:	2112      	movs	r1, #18
d00007f8:	f7ff ff78 	bl	d00006ec <std>
d00007fc:	2301      	movs	r3, #1
d00007fe:	61a3      	str	r3, [r4, #24]
d0000800:	e7d2      	b.n	d00007a8 <__sinit+0xc>
d0000802:	bf00      	nop
d0000804:	d00012dc 	.word	0xd00012dc
d0000808:	d0000735 	.word	0xd0000735

d000080c <__sfp>:
d000080c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d000080e:	4607      	mov	r7, r0
d0000810:	f7ff ffac 	bl	d000076c <__sfp_lock_acquire>
d0000814:	4b1e      	ldr	r3, [pc, #120]	; (d0000890 <__sfp+0x84>)
d0000816:	681e      	ldr	r6, [r3, #0]
d0000818:	69b3      	ldr	r3, [r6, #24]
d000081a:	b913      	cbnz	r3, d0000822 <__sfp+0x16>
d000081c:	4630      	mov	r0, r6
d000081e:	f7ff ffbd 	bl	d000079c <__sinit>
d0000822:	3648      	adds	r6, #72	; 0x48
d0000824:	e9d6 3401 	ldrd	r3, r4, [r6, #4]
d0000828:	3b01      	subs	r3, #1
d000082a:	d503      	bpl.n	d0000834 <__sfp+0x28>
d000082c:	6833      	ldr	r3, [r6, #0]
d000082e:	b30b      	cbz	r3, d0000874 <__sfp+0x68>
d0000830:	6836      	ldr	r6, [r6, #0]
d0000832:	e7f7      	b.n	d0000824 <__sfp+0x18>
d0000834:	f9b4 500c 	ldrsh.w	r5, [r4, #12]
d0000838:	b9d5      	cbnz	r5, d0000870 <__sfp+0x64>
d000083a:	4b16      	ldr	r3, [pc, #88]	; (d0000894 <__sfp+0x88>)
d000083c:	60e3      	str	r3, [r4, #12]
d000083e:	f104 0058 	add.w	r0, r4, #88	; 0x58
d0000842:	6665      	str	r5, [r4, #100]	; 0x64
d0000844:	f000 f847 	bl	d00008d6 <__retarget_lock_init_recursive>
d0000848:	f7ff ff96 	bl	d0000778 <__sfp_lock_release>
d000084c:	e9c4 5501 	strd	r5, r5, [r4, #4]
d0000850:	e9c4 5504 	strd	r5, r5, [r4, #16]
d0000854:	6025      	str	r5, [r4, #0]
d0000856:	61a5      	str	r5, [r4, #24]
d0000858:	2208      	movs	r2, #8
d000085a:	4629      	mov	r1, r5
d000085c:	f104 005c 	add.w	r0, r4, #92	; 0x5c
d0000860:	f7ff fbec 	bl	d000003c <memset>
d0000864:	e9c4 550d 	strd	r5, r5, [r4, #52]	; 0x34
d0000868:	e9c4 5512 	strd	r5, r5, [r4, #72]	; 0x48
d000086c:	4620      	mov	r0, r4
d000086e:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d0000870:	3468      	adds	r4, #104	; 0x68
d0000872:	e7d9      	b.n	d0000828 <__sfp+0x1c>
d0000874:	2104      	movs	r1, #4
d0000876:	4638      	mov	r0, r7
d0000878:	f7ff ff62 	bl	d0000740 <__sfmoreglue>
d000087c:	4604      	mov	r4, r0
d000087e:	6030      	str	r0, [r6, #0]
d0000880:	2800      	cmp	r0, #0
d0000882:	d1d5      	bne.n	d0000830 <__sfp+0x24>
d0000884:	f7ff ff78 	bl	d0000778 <__sfp_lock_release>
d0000888:	230c      	movs	r3, #12
d000088a:	603b      	str	r3, [r7, #0]
d000088c:	e7ee      	b.n	d000086c <__sfp+0x60>
d000088e:	bf00      	nop
d0000890:	d00012dc 	.word	0xd00012dc
d0000894:	ffff0001 	.word	0xffff0001

d0000898 <_fwalk_reent>:
d0000898:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
d000089c:	4606      	mov	r6, r0
d000089e:	4688      	mov	r8, r1
d00008a0:	f100 0448 	add.w	r4, r0, #72	; 0x48
d00008a4:	2700      	movs	r7, #0
d00008a6:	e9d4 9501 	ldrd	r9, r5, [r4, #4]
d00008aa:	f1b9 0901 	subs.w	r9, r9, #1
d00008ae:	d505      	bpl.n	d00008bc <_fwalk_reent+0x24>
d00008b0:	6824      	ldr	r4, [r4, #0]
d00008b2:	2c00      	cmp	r4, #0
d00008b4:	d1f7      	bne.n	d00008a6 <_fwalk_reent+0xe>
d00008b6:	4638      	mov	r0, r7
d00008b8:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
d00008bc:	89ab      	ldrh	r3, [r5, #12]
d00008be:	2b01      	cmp	r3, #1
d00008c0:	d907      	bls.n	d00008d2 <_fwalk_reent+0x3a>
d00008c2:	f9b5 300e 	ldrsh.w	r3, [r5, #14]
d00008c6:	3301      	adds	r3, #1
d00008c8:	d003      	beq.n	d00008d2 <_fwalk_reent+0x3a>
d00008ca:	4629      	mov	r1, r5
d00008cc:	4630      	mov	r0, r6
d00008ce:	47c0      	blx	r8
d00008d0:	4307      	orrs	r7, r0
d00008d2:	3568      	adds	r5, #104	; 0x68
d00008d4:	e7e9      	b.n	d00008aa <_fwalk_reent+0x12>

d00008d6 <__retarget_lock_init_recursive>:
d00008d6:	4770      	bx	lr

d00008d8 <__retarget_lock_acquire_recursive>:
d00008d8:	4770      	bx	lr

d00008da <__retarget_lock_release_recursive>:
d00008da:	4770      	bx	lr

d00008dc <__swhatbuf_r>:
d00008dc:	b570      	push	{r4, r5, r6, lr}
d00008de:	460e      	mov	r6, r1
d00008e0:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d00008e4:	2900      	cmp	r1, #0
d00008e6:	b096      	sub	sp, #88	; 0x58
d00008e8:	4614      	mov	r4, r2
d00008ea:	461d      	mov	r5, r3
d00008ec:	da07      	bge.n	d00008fe <__swhatbuf_r+0x22>
d00008ee:	2300      	movs	r3, #0
d00008f0:	602b      	str	r3, [r5, #0]
d00008f2:	89b3      	ldrh	r3, [r6, #12]
d00008f4:	061a      	lsls	r2, r3, #24
d00008f6:	d410      	bmi.n	d000091a <__swhatbuf_r+0x3e>
d00008f8:	f44f 6380 	mov.w	r3, #1024	; 0x400
d00008fc:	e00e      	b.n	d000091c <__swhatbuf_r+0x40>
d00008fe:	466a      	mov	r2, sp
d0000900:	f000 fc44 	bl	d000118c <_fstat_r>
d0000904:	2800      	cmp	r0, #0
d0000906:	dbf2      	blt.n	d00008ee <__swhatbuf_r+0x12>
d0000908:	9a01      	ldr	r2, [sp, #4]
d000090a:	f402 4270 	and.w	r2, r2, #61440	; 0xf000
d000090e:	f5a2 5300 	sub.w	r3, r2, #8192	; 0x2000
d0000912:	425a      	negs	r2, r3
d0000914:	415a      	adcs	r2, r3
d0000916:	602a      	str	r2, [r5, #0]
d0000918:	e7ee      	b.n	d00008f8 <__swhatbuf_r+0x1c>
d000091a:	2340      	movs	r3, #64	; 0x40
d000091c:	2000      	movs	r0, #0
d000091e:	6023      	str	r3, [r4, #0]
d0000920:	b016      	add	sp, #88	; 0x58
d0000922:	bd70      	pop	{r4, r5, r6, pc}

d0000924 <__smakebuf_r>:
d0000924:	898b      	ldrh	r3, [r1, #12]
d0000926:	b573      	push	{r0, r1, r4, r5, r6, lr}
d0000928:	079d      	lsls	r5, r3, #30
d000092a:	4606      	mov	r6, r0
d000092c:	460c      	mov	r4, r1
d000092e:	d507      	bpl.n	d0000940 <__smakebuf_r+0x1c>
d0000930:	f104 0347 	add.w	r3, r4, #71	; 0x47
d0000934:	6023      	str	r3, [r4, #0]
d0000936:	6123      	str	r3, [r4, #16]
d0000938:	2301      	movs	r3, #1
d000093a:	6163      	str	r3, [r4, #20]
d000093c:	b002      	add	sp, #8
d000093e:	bd70      	pop	{r4, r5, r6, pc}
d0000940:	ab01      	add	r3, sp, #4
d0000942:	466a      	mov	r2, sp
d0000944:	f7ff ffca 	bl	d00008dc <__swhatbuf_r>
d0000948:	9900      	ldr	r1, [sp, #0]
d000094a:	4605      	mov	r5, r0
d000094c:	4630      	mov	r0, r6
d000094e:	f000 f881 	bl	d0000a54 <_malloc_r>
d0000952:	b948      	cbnz	r0, d0000968 <__smakebuf_r+0x44>
d0000954:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
d0000958:	059a      	lsls	r2, r3, #22
d000095a:	d4ef      	bmi.n	d000093c <__smakebuf_r+0x18>
d000095c:	f023 0303 	bic.w	r3, r3, #3
d0000960:	f043 0302 	orr.w	r3, r3, #2
d0000964:	81a3      	strh	r3, [r4, #12]
d0000966:	e7e3      	b.n	d0000930 <__smakebuf_r+0xc>
d0000968:	4b0d      	ldr	r3, [pc, #52]	; (d00009a0 <__smakebuf_r+0x7c>)
d000096a:	62b3      	str	r3, [r6, #40]	; 0x28
d000096c:	89a3      	ldrh	r3, [r4, #12]
d000096e:	6020      	str	r0, [r4, #0]
d0000970:	f043 0380 	orr.w	r3, r3, #128	; 0x80
d0000974:	81a3      	strh	r3, [r4, #12]
d0000976:	9b00      	ldr	r3, [sp, #0]
d0000978:	6163      	str	r3, [r4, #20]
d000097a:	9b01      	ldr	r3, [sp, #4]
d000097c:	6120      	str	r0, [r4, #16]
d000097e:	b15b      	cbz	r3, d0000998 <__smakebuf_r+0x74>
d0000980:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
d0000984:	4630      	mov	r0, r6
d0000986:	f000 fc13 	bl	d00011b0 <_isatty_r>
d000098a:	b128      	cbz	r0, d0000998 <__smakebuf_r+0x74>
d000098c:	89a3      	ldrh	r3, [r4, #12]
d000098e:	f023 0303 	bic.w	r3, r3, #3
d0000992:	f043 0301 	orr.w	r3, r3, #1
d0000996:	81a3      	strh	r3, [r4, #12]
d0000998:	89a0      	ldrh	r0, [r4, #12]
d000099a:	4305      	orrs	r5, r0
d000099c:	81a5      	strh	r5, [r4, #12]
d000099e:	e7cd      	b.n	d000093c <__smakebuf_r+0x18>
d00009a0:	d0000735 	.word	0xd0000735

d00009a4 <malloc>:
d00009a4:	4b02      	ldr	r3, [pc, #8]	; (d00009b0 <malloc+0xc>)
d00009a6:	4601      	mov	r1, r0
d00009a8:	6818      	ldr	r0, [r3, #0]
d00009aa:	f000 b853 	b.w	d0000a54 <_malloc_r>
d00009ae:	bf00      	nop
d00009b0:	d00013b8 	.word	0xd00013b8

d00009b4 <_free_r>:
d00009b4:	b537      	push	{r0, r1, r2, r4, r5, lr}
d00009b6:	2900      	cmp	r1, #0
d00009b8:	d048      	beq.n	d0000a4c <_free_r+0x98>
d00009ba:	f851 3c04 	ldr.w	r3, [r1, #-4]
d00009be:	9001      	str	r0, [sp, #4]
d00009c0:	2b00      	cmp	r3, #0
d00009c2:	f1a1 0404 	sub.w	r4, r1, #4
d00009c6:	bfb8      	it	lt
d00009c8:	18e4      	addlt	r4, r4, r3
d00009ca:	f000 fc69 	bl	d00012a0 <__malloc_lock>
d00009ce:	4a20      	ldr	r2, [pc, #128]	; (d0000a50 <_free_r+0x9c>)
d00009d0:	9801      	ldr	r0, [sp, #4]
d00009d2:	6813      	ldr	r3, [r2, #0]
d00009d4:	4615      	mov	r5, r2
d00009d6:	b933      	cbnz	r3, d00009e6 <_free_r+0x32>
d00009d8:	6063      	str	r3, [r4, #4]
d00009da:	6014      	str	r4, [r2, #0]
d00009dc:	b003      	add	sp, #12
d00009de:	e8bd 4030 	ldmia.w	sp!, {r4, r5, lr}
d00009e2:	f000 bc63 	b.w	d00012ac <__malloc_unlock>
d00009e6:	42a3      	cmp	r3, r4
d00009e8:	d90b      	bls.n	d0000a02 <_free_r+0x4e>
d00009ea:	6821      	ldr	r1, [r4, #0]
d00009ec:	1862      	adds	r2, r4, r1
d00009ee:	4293      	cmp	r3, r2
d00009f0:	bf04      	itt	eq
d00009f2:	681a      	ldreq	r2, [r3, #0]
d00009f4:	685b      	ldreq	r3, [r3, #4]
d00009f6:	6063      	str	r3, [r4, #4]
d00009f8:	bf04      	itt	eq
d00009fa:	1852      	addeq	r2, r2, r1
d00009fc:	6022      	streq	r2, [r4, #0]
d00009fe:	602c      	str	r4, [r5, #0]
d0000a00:	e7ec      	b.n	d00009dc <_free_r+0x28>
d0000a02:	461a      	mov	r2, r3
d0000a04:	685b      	ldr	r3, [r3, #4]
d0000a06:	b10b      	cbz	r3, d0000a0c <_free_r+0x58>
d0000a08:	42a3      	cmp	r3, r4
d0000a0a:	d9fa      	bls.n	d0000a02 <_free_r+0x4e>
d0000a0c:	6811      	ldr	r1, [r2, #0]
d0000a0e:	1855      	adds	r5, r2, r1
d0000a10:	42a5      	cmp	r5, r4
d0000a12:	d10b      	bne.n	d0000a2c <_free_r+0x78>
d0000a14:	6824      	ldr	r4, [r4, #0]
d0000a16:	4421      	add	r1, r4
d0000a18:	1854      	adds	r4, r2, r1
d0000a1a:	42a3      	cmp	r3, r4
d0000a1c:	6011      	str	r1, [r2, #0]
d0000a1e:	d1dd      	bne.n	d00009dc <_free_r+0x28>
d0000a20:	681c      	ldr	r4, [r3, #0]
d0000a22:	685b      	ldr	r3, [r3, #4]
d0000a24:	6053      	str	r3, [r2, #4]
d0000a26:	4421      	add	r1, r4
d0000a28:	6011      	str	r1, [r2, #0]
d0000a2a:	e7d7      	b.n	d00009dc <_free_r+0x28>
d0000a2c:	d902      	bls.n	d0000a34 <_free_r+0x80>
d0000a2e:	230c      	movs	r3, #12
d0000a30:	6003      	str	r3, [r0, #0]
d0000a32:	e7d3      	b.n	d00009dc <_free_r+0x28>
d0000a34:	6825      	ldr	r5, [r4, #0]
d0000a36:	1961      	adds	r1, r4, r5
d0000a38:	428b      	cmp	r3, r1
d0000a3a:	bf04      	itt	eq
d0000a3c:	6819      	ldreq	r1, [r3, #0]
d0000a3e:	685b      	ldreq	r3, [r3, #4]
d0000a40:	6063      	str	r3, [r4, #4]
d0000a42:	bf04      	itt	eq
d0000a44:	1949      	addeq	r1, r1, r5
d0000a46:	6021      	streq	r1, [r4, #0]
d0000a48:	6054      	str	r4, [r2, #4]
d0000a4a:	e7c7      	b.n	d00009dc <_free_r+0x28>
d0000a4c:	b003      	add	sp, #12
d0000a4e:	bd30      	pop	{r4, r5, pc}
d0000a50:	d0001424 	.word	0xd0001424

d0000a54 <_malloc_r>:
d0000a54:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d0000a56:	1ccd      	adds	r5, r1, #3
d0000a58:	f025 0503 	bic.w	r5, r5, #3
d0000a5c:	3508      	adds	r5, #8
d0000a5e:	2d0c      	cmp	r5, #12
d0000a60:	bf38      	it	cc
d0000a62:	250c      	movcc	r5, #12
d0000a64:	2d00      	cmp	r5, #0
d0000a66:	4606      	mov	r6, r0
d0000a68:	db01      	blt.n	d0000a6e <_malloc_r+0x1a>
d0000a6a:	42a9      	cmp	r1, r5
d0000a6c:	d903      	bls.n	d0000a76 <_malloc_r+0x22>
d0000a6e:	230c      	movs	r3, #12
d0000a70:	6033      	str	r3, [r6, #0]
d0000a72:	2000      	movs	r0, #0
d0000a74:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d0000a76:	f000 fc13 	bl	d00012a0 <__malloc_lock>
d0000a7a:	4921      	ldr	r1, [pc, #132]	; (d0000b00 <_malloc_r+0xac>)
d0000a7c:	680a      	ldr	r2, [r1, #0]
d0000a7e:	4614      	mov	r4, r2
d0000a80:	b99c      	cbnz	r4, d0000aaa <_malloc_r+0x56>
d0000a82:	4f20      	ldr	r7, [pc, #128]	; (d0000b04 <_malloc_r+0xb0>)
d0000a84:	683b      	ldr	r3, [r7, #0]
d0000a86:	b923      	cbnz	r3, d0000a92 <_malloc_r+0x3e>
d0000a88:	4621      	mov	r1, r4
d0000a8a:	4630      	mov	r0, r6
d0000a8c:	f7ff fb1a 	bl	d00000c4 <_sbrk_r>
d0000a90:	6038      	str	r0, [r7, #0]
d0000a92:	4629      	mov	r1, r5
d0000a94:	4630      	mov	r0, r6
d0000a96:	f7ff fb15 	bl	d00000c4 <_sbrk_r>
d0000a9a:	1c43      	adds	r3, r0, #1
d0000a9c:	d123      	bne.n	d0000ae6 <_malloc_r+0x92>
d0000a9e:	230c      	movs	r3, #12
d0000aa0:	6033      	str	r3, [r6, #0]
d0000aa2:	4630      	mov	r0, r6
d0000aa4:	f000 fc02 	bl	d00012ac <__malloc_unlock>
d0000aa8:	e7e3      	b.n	d0000a72 <_malloc_r+0x1e>
d0000aaa:	6823      	ldr	r3, [r4, #0]
d0000aac:	1b5b      	subs	r3, r3, r5
d0000aae:	d417      	bmi.n	d0000ae0 <_malloc_r+0x8c>
d0000ab0:	2b0b      	cmp	r3, #11
d0000ab2:	d903      	bls.n	d0000abc <_malloc_r+0x68>
d0000ab4:	6023      	str	r3, [r4, #0]
d0000ab6:	441c      	add	r4, r3
d0000ab8:	6025      	str	r5, [r4, #0]
d0000aba:	e004      	b.n	d0000ac6 <_malloc_r+0x72>
d0000abc:	6863      	ldr	r3, [r4, #4]
d0000abe:	42a2      	cmp	r2, r4
d0000ac0:	bf0c      	ite	eq
d0000ac2:	600b      	streq	r3, [r1, #0]
d0000ac4:	6053      	strne	r3, [r2, #4]
d0000ac6:	4630      	mov	r0, r6
d0000ac8:	f000 fbf0 	bl	d00012ac <__malloc_unlock>
d0000acc:	f104 000b 	add.w	r0, r4, #11
d0000ad0:	1d23      	adds	r3, r4, #4
d0000ad2:	f020 0007 	bic.w	r0, r0, #7
d0000ad6:	1ac2      	subs	r2, r0, r3
d0000ad8:	d0cc      	beq.n	d0000a74 <_malloc_r+0x20>
d0000ada:	1a1b      	subs	r3, r3, r0
d0000adc:	50a3      	str	r3, [r4, r2]
d0000ade:	e7c9      	b.n	d0000a74 <_malloc_r+0x20>
d0000ae0:	4622      	mov	r2, r4
d0000ae2:	6864      	ldr	r4, [r4, #4]
d0000ae4:	e7cc      	b.n	d0000a80 <_malloc_r+0x2c>
d0000ae6:	1cc4      	adds	r4, r0, #3
d0000ae8:	f024 0403 	bic.w	r4, r4, #3
d0000aec:	42a0      	cmp	r0, r4
d0000aee:	d0e3      	beq.n	d0000ab8 <_malloc_r+0x64>
d0000af0:	1a21      	subs	r1, r4, r0
d0000af2:	4630      	mov	r0, r6
d0000af4:	f7ff fae6 	bl	d00000c4 <_sbrk_r>
d0000af8:	3001      	adds	r0, #1
d0000afa:	d1dd      	bne.n	d0000ab8 <_malloc_r+0x64>
d0000afc:	e7cf      	b.n	d0000a9e <_malloc_r+0x4a>
d0000afe:	bf00      	nop
d0000b00:	d0001424 	.word	0xd0001424
d0000b04:	d0001428 	.word	0xd0001428

d0000b08 <__sfputc_r>:
d0000b08:	6893      	ldr	r3, [r2, #8]
d0000b0a:	3b01      	subs	r3, #1
d0000b0c:	2b00      	cmp	r3, #0
d0000b0e:	b410      	push	{r4}
d0000b10:	6093      	str	r3, [r2, #8]
d0000b12:	da08      	bge.n	d0000b26 <__sfputc_r+0x1e>
d0000b14:	6994      	ldr	r4, [r2, #24]
d0000b16:	42a3      	cmp	r3, r4
d0000b18:	db01      	blt.n	d0000b1e <__sfputc_r+0x16>
d0000b1a:	290a      	cmp	r1, #10
d0000b1c:	d103      	bne.n	d0000b26 <__sfputc_r+0x1e>
d0000b1e:	f85d 4b04 	ldr.w	r4, [sp], #4
d0000b22:	f7ff bc61 	b.w	d00003e8 <__swbuf_r>
d0000b26:	6813      	ldr	r3, [r2, #0]
d0000b28:	1c58      	adds	r0, r3, #1
d0000b2a:	6010      	str	r0, [r2, #0]
d0000b2c:	7019      	strb	r1, [r3, #0]
d0000b2e:	4608      	mov	r0, r1
d0000b30:	f85d 4b04 	ldr.w	r4, [sp], #4
d0000b34:	4770      	bx	lr

d0000b36 <__sfputs_r>:
d0000b36:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d0000b38:	4606      	mov	r6, r0
d0000b3a:	460f      	mov	r7, r1
d0000b3c:	4614      	mov	r4, r2
d0000b3e:	18d5      	adds	r5, r2, r3
d0000b40:	42ac      	cmp	r4, r5
d0000b42:	d101      	bne.n	d0000b48 <__sfputs_r+0x12>
d0000b44:	2000      	movs	r0, #0
d0000b46:	e007      	b.n	d0000b58 <__sfputs_r+0x22>
d0000b48:	f814 1b01 	ldrb.w	r1, [r4], #1
d0000b4c:	463a      	mov	r2, r7
d0000b4e:	4630      	mov	r0, r6
d0000b50:	f7ff ffda 	bl	d0000b08 <__sfputc_r>
d0000b54:	1c43      	adds	r3, r0, #1
d0000b56:	d1f3      	bne.n	d0000b40 <__sfputs_r+0xa>
d0000b58:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
	...

d0000b5c <_vfiprintf_r>:
d0000b5c:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0000b60:	460d      	mov	r5, r1
d0000b62:	b09d      	sub	sp, #116	; 0x74
d0000b64:	4614      	mov	r4, r2
d0000b66:	4698      	mov	r8, r3
d0000b68:	4606      	mov	r6, r0
d0000b6a:	b118      	cbz	r0, d0000b74 <_vfiprintf_r+0x18>
d0000b6c:	6983      	ldr	r3, [r0, #24]
d0000b6e:	b90b      	cbnz	r3, d0000b74 <_vfiprintf_r+0x18>
d0000b70:	f7ff fe14 	bl	d000079c <__sinit>
d0000b74:	4b89      	ldr	r3, [pc, #548]	; (d0000d9c <_vfiprintf_r+0x240>)
d0000b76:	429d      	cmp	r5, r3
d0000b78:	d11b      	bne.n	d0000bb2 <_vfiprintf_r+0x56>
d0000b7a:	6875      	ldr	r5, [r6, #4]
d0000b7c:	6e6b      	ldr	r3, [r5, #100]	; 0x64
d0000b7e:	07d9      	lsls	r1, r3, #31
d0000b80:	d405      	bmi.n	d0000b8e <_vfiprintf_r+0x32>
d0000b82:	89ab      	ldrh	r3, [r5, #12]
d0000b84:	059a      	lsls	r2, r3, #22
d0000b86:	d402      	bmi.n	d0000b8e <_vfiprintf_r+0x32>
d0000b88:	6da8      	ldr	r0, [r5, #88]	; 0x58
d0000b8a:	f7ff fea5 	bl	d00008d8 <__retarget_lock_acquire_recursive>
d0000b8e:	89ab      	ldrh	r3, [r5, #12]
d0000b90:	071b      	lsls	r3, r3, #28
d0000b92:	d501      	bpl.n	d0000b98 <_vfiprintf_r+0x3c>
d0000b94:	692b      	ldr	r3, [r5, #16]
d0000b96:	b9eb      	cbnz	r3, d0000bd4 <_vfiprintf_r+0x78>
d0000b98:	4629      	mov	r1, r5
d0000b9a:	4630      	mov	r0, r6
d0000b9c:	f7ff fc76 	bl	d000048c <__swsetup_r>
d0000ba0:	b1c0      	cbz	r0, d0000bd4 <_vfiprintf_r+0x78>
d0000ba2:	6e6b      	ldr	r3, [r5, #100]	; 0x64
d0000ba4:	07dc      	lsls	r4, r3, #31
d0000ba6:	d50e      	bpl.n	d0000bc6 <_vfiprintf_r+0x6a>
d0000ba8:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d0000bac:	b01d      	add	sp, #116	; 0x74
d0000bae:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0000bb2:	4b7b      	ldr	r3, [pc, #492]	; (d0000da0 <_vfiprintf_r+0x244>)
d0000bb4:	429d      	cmp	r5, r3
d0000bb6:	d101      	bne.n	d0000bbc <_vfiprintf_r+0x60>
d0000bb8:	68b5      	ldr	r5, [r6, #8]
d0000bba:	e7df      	b.n	d0000b7c <_vfiprintf_r+0x20>
d0000bbc:	4b79      	ldr	r3, [pc, #484]	; (d0000da4 <_vfiprintf_r+0x248>)
d0000bbe:	429d      	cmp	r5, r3
d0000bc0:	bf08      	it	eq
d0000bc2:	68f5      	ldreq	r5, [r6, #12]
d0000bc4:	e7da      	b.n	d0000b7c <_vfiprintf_r+0x20>
d0000bc6:	89ab      	ldrh	r3, [r5, #12]
d0000bc8:	0598      	lsls	r0, r3, #22
d0000bca:	d4ed      	bmi.n	d0000ba8 <_vfiprintf_r+0x4c>
d0000bcc:	6da8      	ldr	r0, [r5, #88]	; 0x58
d0000bce:	f7ff fe84 	bl	d00008da <__retarget_lock_release_recursive>
d0000bd2:	e7e9      	b.n	d0000ba8 <_vfiprintf_r+0x4c>
d0000bd4:	2300      	movs	r3, #0
d0000bd6:	9309      	str	r3, [sp, #36]	; 0x24
d0000bd8:	2320      	movs	r3, #32
d0000bda:	f88d 3029 	strb.w	r3, [sp, #41]	; 0x29
d0000bde:	f8cd 800c 	str.w	r8, [sp, #12]
d0000be2:	2330      	movs	r3, #48	; 0x30
d0000be4:	f8df 81c0 	ldr.w	r8, [pc, #448]	; d0000da8 <_vfiprintf_r+0x24c>
d0000be8:	f88d 302a 	strb.w	r3, [sp, #42]	; 0x2a
d0000bec:	f04f 0901 	mov.w	r9, #1
d0000bf0:	4623      	mov	r3, r4
d0000bf2:	469a      	mov	sl, r3
d0000bf4:	f813 2b01 	ldrb.w	r2, [r3], #1
d0000bf8:	b10a      	cbz	r2, d0000bfe <_vfiprintf_r+0xa2>
d0000bfa:	2a25      	cmp	r2, #37	; 0x25
d0000bfc:	d1f9      	bne.n	d0000bf2 <_vfiprintf_r+0x96>
d0000bfe:	ebba 0b04 	subs.w	fp, sl, r4
d0000c02:	d00b      	beq.n	d0000c1c <_vfiprintf_r+0xc0>
d0000c04:	465b      	mov	r3, fp
d0000c06:	4622      	mov	r2, r4
d0000c08:	4629      	mov	r1, r5
d0000c0a:	4630      	mov	r0, r6
d0000c0c:	f7ff ff93 	bl	d0000b36 <__sfputs_r>
d0000c10:	3001      	adds	r0, #1
d0000c12:	f000 80aa 	beq.w	d0000d6a <_vfiprintf_r+0x20e>
d0000c16:	9a09      	ldr	r2, [sp, #36]	; 0x24
d0000c18:	445a      	add	r2, fp
d0000c1a:	9209      	str	r2, [sp, #36]	; 0x24
d0000c1c:	f89a 3000 	ldrb.w	r3, [sl]
d0000c20:	2b00      	cmp	r3, #0
d0000c22:	f000 80a2 	beq.w	d0000d6a <_vfiprintf_r+0x20e>
d0000c26:	2300      	movs	r3, #0
d0000c28:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
d0000c2c:	e9cd 2305 	strd	r2, r3, [sp, #20]
d0000c30:	f10a 0a01 	add.w	sl, sl, #1
d0000c34:	9304      	str	r3, [sp, #16]
d0000c36:	9307      	str	r3, [sp, #28]
d0000c38:	f88d 3053 	strb.w	r3, [sp, #83]	; 0x53
d0000c3c:	931a      	str	r3, [sp, #104]	; 0x68
d0000c3e:	4654      	mov	r4, sl
d0000c40:	2205      	movs	r2, #5
d0000c42:	f814 1b01 	ldrb.w	r1, [r4], #1
d0000c46:	4858      	ldr	r0, [pc, #352]	; (d0000da8 <_vfiprintf_r+0x24c>)
d0000c48:	f000 fada 	bl	d0001200 <memchr>
d0000c4c:	9a04      	ldr	r2, [sp, #16]
d0000c4e:	b9d8      	cbnz	r0, d0000c88 <_vfiprintf_r+0x12c>
d0000c50:	06d1      	lsls	r1, r2, #27
d0000c52:	bf44      	itt	mi
d0000c54:	2320      	movmi	r3, #32
d0000c56:	f88d 3053 	strbmi.w	r3, [sp, #83]	; 0x53
d0000c5a:	0713      	lsls	r3, r2, #28
d0000c5c:	bf44      	itt	mi
d0000c5e:	232b      	movmi	r3, #43	; 0x2b
d0000c60:	f88d 3053 	strbmi.w	r3, [sp, #83]	; 0x53
d0000c64:	f89a 3000 	ldrb.w	r3, [sl]
d0000c68:	2b2a      	cmp	r3, #42	; 0x2a
d0000c6a:	d015      	beq.n	d0000c98 <_vfiprintf_r+0x13c>
d0000c6c:	9a07      	ldr	r2, [sp, #28]
d0000c6e:	4654      	mov	r4, sl
d0000c70:	2000      	movs	r0, #0
d0000c72:	f04f 0c0a 	mov.w	ip, #10
d0000c76:	4621      	mov	r1, r4
d0000c78:	f811 3b01 	ldrb.w	r3, [r1], #1
d0000c7c:	3b30      	subs	r3, #48	; 0x30
d0000c7e:	2b09      	cmp	r3, #9
d0000c80:	d94e      	bls.n	d0000d20 <_vfiprintf_r+0x1c4>
d0000c82:	b1b0      	cbz	r0, d0000cb2 <_vfiprintf_r+0x156>
d0000c84:	9207      	str	r2, [sp, #28]
d0000c86:	e014      	b.n	d0000cb2 <_vfiprintf_r+0x156>
d0000c88:	eba0 0308 	sub.w	r3, r0, r8
d0000c8c:	fa09 f303 	lsl.w	r3, r9, r3
d0000c90:	4313      	orrs	r3, r2
d0000c92:	9304      	str	r3, [sp, #16]
d0000c94:	46a2      	mov	sl, r4
d0000c96:	e7d2      	b.n	d0000c3e <_vfiprintf_r+0xe2>
d0000c98:	9b03      	ldr	r3, [sp, #12]
d0000c9a:	1d19      	adds	r1, r3, #4
d0000c9c:	681b      	ldr	r3, [r3, #0]
d0000c9e:	9103      	str	r1, [sp, #12]
d0000ca0:	2b00      	cmp	r3, #0
d0000ca2:	bfbb      	ittet	lt
d0000ca4:	425b      	neglt	r3, r3
d0000ca6:	f042 0202 	orrlt.w	r2, r2, #2
d0000caa:	9307      	strge	r3, [sp, #28]
d0000cac:	9307      	strlt	r3, [sp, #28]
d0000cae:	bfb8      	it	lt
d0000cb0:	9204      	strlt	r2, [sp, #16]
d0000cb2:	7823      	ldrb	r3, [r4, #0]
d0000cb4:	2b2e      	cmp	r3, #46	; 0x2e
d0000cb6:	d10c      	bne.n	d0000cd2 <_vfiprintf_r+0x176>
d0000cb8:	7863      	ldrb	r3, [r4, #1]
d0000cba:	2b2a      	cmp	r3, #42	; 0x2a
d0000cbc:	d135      	bne.n	d0000d2a <_vfiprintf_r+0x1ce>
d0000cbe:	9b03      	ldr	r3, [sp, #12]
d0000cc0:	1d1a      	adds	r2, r3, #4
d0000cc2:	681b      	ldr	r3, [r3, #0]
d0000cc4:	9203      	str	r2, [sp, #12]
d0000cc6:	2b00      	cmp	r3, #0
d0000cc8:	bfb8      	it	lt
d0000cca:	f04f 33ff 	movlt.w	r3, #4294967295	; 0xffffffff
d0000cce:	3402      	adds	r4, #2
d0000cd0:	9305      	str	r3, [sp, #20]
d0000cd2:	f8df a0e4 	ldr.w	sl, [pc, #228]	; d0000db8 <_vfiprintf_r+0x25c>
d0000cd6:	7821      	ldrb	r1, [r4, #0]
d0000cd8:	2203      	movs	r2, #3
d0000cda:	4650      	mov	r0, sl
d0000cdc:	f000 fa90 	bl	d0001200 <memchr>
d0000ce0:	b140      	cbz	r0, d0000cf4 <_vfiprintf_r+0x198>
d0000ce2:	2340      	movs	r3, #64	; 0x40
d0000ce4:	eba0 000a 	sub.w	r0, r0, sl
d0000ce8:	fa03 f000 	lsl.w	r0, r3, r0
d0000cec:	9b04      	ldr	r3, [sp, #16]
d0000cee:	4303      	orrs	r3, r0
d0000cf0:	3401      	adds	r4, #1
d0000cf2:	9304      	str	r3, [sp, #16]
d0000cf4:	f814 1b01 	ldrb.w	r1, [r4], #1
d0000cf8:	482c      	ldr	r0, [pc, #176]	; (d0000dac <_vfiprintf_r+0x250>)
d0000cfa:	f88d 1028 	strb.w	r1, [sp, #40]	; 0x28
d0000cfe:	2206      	movs	r2, #6
d0000d00:	f000 fa7e 	bl	d0001200 <memchr>
d0000d04:	2800      	cmp	r0, #0
d0000d06:	d03f      	beq.n	d0000d88 <_vfiprintf_r+0x22c>
d0000d08:	4b29      	ldr	r3, [pc, #164]	; (d0000db0 <_vfiprintf_r+0x254>)
d0000d0a:	bb1b      	cbnz	r3, d0000d54 <_vfiprintf_r+0x1f8>
d0000d0c:	9b03      	ldr	r3, [sp, #12]
d0000d0e:	3307      	adds	r3, #7
d0000d10:	f023 0307 	bic.w	r3, r3, #7
d0000d14:	3308      	adds	r3, #8
d0000d16:	9303      	str	r3, [sp, #12]
d0000d18:	9b09      	ldr	r3, [sp, #36]	; 0x24
d0000d1a:	443b      	add	r3, r7
d0000d1c:	9309      	str	r3, [sp, #36]	; 0x24
d0000d1e:	e767      	b.n	d0000bf0 <_vfiprintf_r+0x94>
d0000d20:	fb0c 3202 	mla	r2, ip, r2, r3
d0000d24:	460c      	mov	r4, r1
d0000d26:	2001      	movs	r0, #1
d0000d28:	e7a5      	b.n	d0000c76 <_vfiprintf_r+0x11a>
d0000d2a:	2300      	movs	r3, #0
d0000d2c:	3401      	adds	r4, #1
d0000d2e:	9305      	str	r3, [sp, #20]
d0000d30:	4619      	mov	r1, r3
d0000d32:	f04f 0c0a 	mov.w	ip, #10
d0000d36:	4620      	mov	r0, r4
d0000d38:	f810 2b01 	ldrb.w	r2, [r0], #1
d0000d3c:	3a30      	subs	r2, #48	; 0x30
d0000d3e:	2a09      	cmp	r2, #9
d0000d40:	d903      	bls.n	d0000d4a <_vfiprintf_r+0x1ee>
d0000d42:	2b00      	cmp	r3, #0
d0000d44:	d0c5      	beq.n	d0000cd2 <_vfiprintf_r+0x176>
d0000d46:	9105      	str	r1, [sp, #20]
d0000d48:	e7c3      	b.n	d0000cd2 <_vfiprintf_r+0x176>
d0000d4a:	fb0c 2101 	mla	r1, ip, r1, r2
d0000d4e:	4604      	mov	r4, r0
d0000d50:	2301      	movs	r3, #1
d0000d52:	e7f0      	b.n	d0000d36 <_vfiprintf_r+0x1da>
d0000d54:	ab03      	add	r3, sp, #12
d0000d56:	9300      	str	r3, [sp, #0]
d0000d58:	462a      	mov	r2, r5
d0000d5a:	4b16      	ldr	r3, [pc, #88]	; (d0000db4 <_vfiprintf_r+0x258>)
d0000d5c:	a904      	add	r1, sp, #16
d0000d5e:	4630      	mov	r0, r6
d0000d60:	f3af 8000 	nop.w
d0000d64:	4607      	mov	r7, r0
d0000d66:	1c78      	adds	r0, r7, #1
d0000d68:	d1d6      	bne.n	d0000d18 <_vfiprintf_r+0x1bc>
d0000d6a:	6e6b      	ldr	r3, [r5, #100]	; 0x64
d0000d6c:	07d9      	lsls	r1, r3, #31
d0000d6e:	d405      	bmi.n	d0000d7c <_vfiprintf_r+0x220>
d0000d70:	89ab      	ldrh	r3, [r5, #12]
d0000d72:	059a      	lsls	r2, r3, #22
d0000d74:	d402      	bmi.n	d0000d7c <_vfiprintf_r+0x220>
d0000d76:	6da8      	ldr	r0, [r5, #88]	; 0x58
d0000d78:	f7ff fdaf 	bl	d00008da <__retarget_lock_release_recursive>
d0000d7c:	89ab      	ldrh	r3, [r5, #12]
d0000d7e:	065b      	lsls	r3, r3, #25
d0000d80:	f53f af12 	bmi.w	d0000ba8 <_vfiprintf_r+0x4c>
d0000d84:	9809      	ldr	r0, [sp, #36]	; 0x24
d0000d86:	e711      	b.n	d0000bac <_vfiprintf_r+0x50>
d0000d88:	ab03      	add	r3, sp, #12
d0000d8a:	9300      	str	r3, [sp, #0]
d0000d8c:	462a      	mov	r2, r5
d0000d8e:	4b09      	ldr	r3, [pc, #36]	; (d0000db4 <_vfiprintf_r+0x258>)
d0000d90:	a904      	add	r1, sp, #16
d0000d92:	4630      	mov	r0, r6
d0000d94:	f000 f880 	bl	d0000e98 <_printf_i>
d0000d98:	e7e4      	b.n	d0000d64 <_vfiprintf_r+0x208>
d0000d9a:	bf00      	nop
d0000d9c:	d000133c 	.word	0xd000133c
d0000da0:	d000135c 	.word	0xd000135c
d0000da4:	d000131c 	.word	0xd000131c
d0000da8:	d000137c 	.word	0xd000137c
d0000dac:	d0001386 	.word	0xd0001386
d0000db0:	00000000 	.word	0x00000000
d0000db4:	d0000b37 	.word	0xd0000b37
d0000db8:	d0001382 	.word	0xd0001382

d0000dbc <_printf_common>:
d0000dbc:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
d0000dc0:	4616      	mov	r6, r2
d0000dc2:	4699      	mov	r9, r3
d0000dc4:	688a      	ldr	r2, [r1, #8]
d0000dc6:	690b      	ldr	r3, [r1, #16]
d0000dc8:	f8dd 8020 	ldr.w	r8, [sp, #32]
d0000dcc:	4293      	cmp	r3, r2
d0000dce:	bfb8      	it	lt
d0000dd0:	4613      	movlt	r3, r2
d0000dd2:	6033      	str	r3, [r6, #0]
d0000dd4:	f891 2043 	ldrb.w	r2, [r1, #67]	; 0x43
d0000dd8:	4607      	mov	r7, r0
d0000dda:	460c      	mov	r4, r1
d0000ddc:	b10a      	cbz	r2, d0000de2 <_printf_common+0x26>
d0000dde:	3301      	adds	r3, #1
d0000de0:	6033      	str	r3, [r6, #0]
d0000de2:	6823      	ldr	r3, [r4, #0]
d0000de4:	0699      	lsls	r1, r3, #26
d0000de6:	bf42      	ittt	mi
d0000de8:	6833      	ldrmi	r3, [r6, #0]
d0000dea:	3302      	addmi	r3, #2
d0000dec:	6033      	strmi	r3, [r6, #0]
d0000dee:	6825      	ldr	r5, [r4, #0]
d0000df0:	f015 0506 	ands.w	r5, r5, #6
d0000df4:	d106      	bne.n	d0000e04 <_printf_common+0x48>
d0000df6:	f104 0a19 	add.w	sl, r4, #25
d0000dfa:	68e3      	ldr	r3, [r4, #12]
d0000dfc:	6832      	ldr	r2, [r6, #0]
d0000dfe:	1a9b      	subs	r3, r3, r2
d0000e00:	42ab      	cmp	r3, r5
d0000e02:	dc26      	bgt.n	d0000e52 <_printf_common+0x96>
d0000e04:	f894 2043 	ldrb.w	r2, [r4, #67]	; 0x43
d0000e08:	1e13      	subs	r3, r2, #0
d0000e0a:	6822      	ldr	r2, [r4, #0]
d0000e0c:	bf18      	it	ne
d0000e0e:	2301      	movne	r3, #1
d0000e10:	0692      	lsls	r2, r2, #26
d0000e12:	d42b      	bmi.n	d0000e6c <_printf_common+0xb0>
d0000e14:	f104 0243 	add.w	r2, r4, #67	; 0x43
d0000e18:	4649      	mov	r1, r9
d0000e1a:	4638      	mov	r0, r7
d0000e1c:	47c0      	blx	r8
d0000e1e:	3001      	adds	r0, #1
d0000e20:	d01e      	beq.n	d0000e60 <_printf_common+0xa4>
d0000e22:	6823      	ldr	r3, [r4, #0]
d0000e24:	68e5      	ldr	r5, [r4, #12]
d0000e26:	6832      	ldr	r2, [r6, #0]
d0000e28:	f003 0306 	and.w	r3, r3, #6
d0000e2c:	2b04      	cmp	r3, #4
d0000e2e:	bf08      	it	eq
d0000e30:	1aad      	subeq	r5, r5, r2
d0000e32:	68a3      	ldr	r3, [r4, #8]
d0000e34:	6922      	ldr	r2, [r4, #16]
d0000e36:	bf0c      	ite	eq
d0000e38:	ea25 75e5 	biceq.w	r5, r5, r5, asr #31
d0000e3c:	2500      	movne	r5, #0
d0000e3e:	4293      	cmp	r3, r2
d0000e40:	bfc4      	itt	gt
d0000e42:	1a9b      	subgt	r3, r3, r2
d0000e44:	18ed      	addgt	r5, r5, r3
d0000e46:	2600      	movs	r6, #0
d0000e48:	341a      	adds	r4, #26
d0000e4a:	42b5      	cmp	r5, r6
d0000e4c:	d11a      	bne.n	d0000e84 <_printf_common+0xc8>
d0000e4e:	2000      	movs	r0, #0
d0000e50:	e008      	b.n	d0000e64 <_printf_common+0xa8>
d0000e52:	2301      	movs	r3, #1
d0000e54:	4652      	mov	r2, sl
d0000e56:	4649      	mov	r1, r9
d0000e58:	4638      	mov	r0, r7
d0000e5a:	47c0      	blx	r8
d0000e5c:	3001      	adds	r0, #1
d0000e5e:	d103      	bne.n	d0000e68 <_printf_common+0xac>
d0000e60:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d0000e64:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
d0000e68:	3501      	adds	r5, #1
d0000e6a:	e7c6      	b.n	d0000dfa <_printf_common+0x3e>
d0000e6c:	18e1      	adds	r1, r4, r3
d0000e6e:	1c5a      	adds	r2, r3, #1
d0000e70:	2030      	movs	r0, #48	; 0x30
d0000e72:	f881 0043 	strb.w	r0, [r1, #67]	; 0x43
d0000e76:	4422      	add	r2, r4
d0000e78:	f894 1045 	ldrb.w	r1, [r4, #69]	; 0x45
d0000e7c:	f882 1043 	strb.w	r1, [r2, #67]	; 0x43
d0000e80:	3302      	adds	r3, #2
d0000e82:	e7c7      	b.n	d0000e14 <_printf_common+0x58>
d0000e84:	2301      	movs	r3, #1
d0000e86:	4622      	mov	r2, r4
d0000e88:	4649      	mov	r1, r9
d0000e8a:	4638      	mov	r0, r7
d0000e8c:	47c0      	blx	r8
d0000e8e:	3001      	adds	r0, #1
d0000e90:	d0e6      	beq.n	d0000e60 <_printf_common+0xa4>
d0000e92:	3601      	adds	r6, #1
d0000e94:	e7d9      	b.n	d0000e4a <_printf_common+0x8e>
	...

d0000e98 <_printf_i>:
d0000e98:	e92d 47ff 	stmdb	sp!, {r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, lr}
d0000e9c:	460c      	mov	r4, r1
d0000e9e:	4691      	mov	r9, r2
d0000ea0:	7e27      	ldrb	r7, [r4, #24]
d0000ea2:	990c      	ldr	r1, [sp, #48]	; 0x30
d0000ea4:	2f78      	cmp	r7, #120	; 0x78
d0000ea6:	4680      	mov	r8, r0
d0000ea8:	469a      	mov	sl, r3
d0000eaa:	f104 0243 	add.w	r2, r4, #67	; 0x43
d0000eae:	d807      	bhi.n	d0000ec0 <_printf_i+0x28>
d0000eb0:	2f62      	cmp	r7, #98	; 0x62
d0000eb2:	d80a      	bhi.n	d0000eca <_printf_i+0x32>
d0000eb4:	2f00      	cmp	r7, #0
d0000eb6:	f000 80d8 	beq.w	d000106a <_printf_i+0x1d2>
d0000eba:	2f58      	cmp	r7, #88	; 0x58
d0000ebc:	f000 80a3 	beq.w	d0001006 <_printf_i+0x16e>
d0000ec0:	f104 0642 	add.w	r6, r4, #66	; 0x42
d0000ec4:	f884 7042 	strb.w	r7, [r4, #66]	; 0x42
d0000ec8:	e03a      	b.n	d0000f40 <_printf_i+0xa8>
d0000eca:	f1a7 0363 	sub.w	r3, r7, #99	; 0x63
d0000ece:	2b15      	cmp	r3, #21
d0000ed0:	d8f6      	bhi.n	d0000ec0 <_printf_i+0x28>
d0000ed2:	a001      	add	r0, pc, #4	; (adr r0, d0000ed8 <_printf_i+0x40>)
d0000ed4:	f850 f023 	ldr.w	pc, [r0, r3, lsl #2]
d0000ed8:	d0000f31 	.word	0xd0000f31
d0000edc:	d0000f45 	.word	0xd0000f45
d0000ee0:	d0000ec1 	.word	0xd0000ec1
d0000ee4:	d0000ec1 	.word	0xd0000ec1
d0000ee8:	d0000ec1 	.word	0xd0000ec1
d0000eec:	d0000ec1 	.word	0xd0000ec1
d0000ef0:	d0000f45 	.word	0xd0000f45
d0000ef4:	d0000ec1 	.word	0xd0000ec1
d0000ef8:	d0000ec1 	.word	0xd0000ec1
d0000efc:	d0000ec1 	.word	0xd0000ec1
d0000f00:	d0000ec1 	.word	0xd0000ec1
d0000f04:	d0001051 	.word	0xd0001051
d0000f08:	d0000f75 	.word	0xd0000f75
d0000f0c:	d0001033 	.word	0xd0001033
d0000f10:	d0000ec1 	.word	0xd0000ec1
d0000f14:	d0000ec1 	.word	0xd0000ec1
d0000f18:	d0001073 	.word	0xd0001073
d0000f1c:	d0000ec1 	.word	0xd0000ec1
d0000f20:	d0000f75 	.word	0xd0000f75
d0000f24:	d0000ec1 	.word	0xd0000ec1
d0000f28:	d0000ec1 	.word	0xd0000ec1
d0000f2c:	d000103b 	.word	0xd000103b
d0000f30:	680b      	ldr	r3, [r1, #0]
d0000f32:	1d1a      	adds	r2, r3, #4
d0000f34:	681b      	ldr	r3, [r3, #0]
d0000f36:	600a      	str	r2, [r1, #0]
d0000f38:	f104 0642 	add.w	r6, r4, #66	; 0x42
d0000f3c:	f884 3042 	strb.w	r3, [r4, #66]	; 0x42
d0000f40:	2301      	movs	r3, #1
d0000f42:	e0a3      	b.n	d000108c <_printf_i+0x1f4>
d0000f44:	6825      	ldr	r5, [r4, #0]
d0000f46:	6808      	ldr	r0, [r1, #0]
d0000f48:	062e      	lsls	r6, r5, #24
d0000f4a:	f100 0304 	add.w	r3, r0, #4
d0000f4e:	d50a      	bpl.n	d0000f66 <_printf_i+0xce>
d0000f50:	6805      	ldr	r5, [r0, #0]
d0000f52:	600b      	str	r3, [r1, #0]
d0000f54:	2d00      	cmp	r5, #0
d0000f56:	da03      	bge.n	d0000f60 <_printf_i+0xc8>
d0000f58:	232d      	movs	r3, #45	; 0x2d
d0000f5a:	426d      	negs	r5, r5
d0000f5c:	f884 3043 	strb.w	r3, [r4, #67]	; 0x43
d0000f60:	485e      	ldr	r0, [pc, #376]	; (d00010dc <_printf_i+0x244>)
d0000f62:	230a      	movs	r3, #10
d0000f64:	e019      	b.n	d0000f9a <_printf_i+0x102>
d0000f66:	f015 0f40 	tst.w	r5, #64	; 0x40
d0000f6a:	6805      	ldr	r5, [r0, #0]
d0000f6c:	600b      	str	r3, [r1, #0]
d0000f6e:	bf18      	it	ne
d0000f70:	b22d      	sxthne	r5, r5
d0000f72:	e7ef      	b.n	d0000f54 <_printf_i+0xbc>
d0000f74:	680b      	ldr	r3, [r1, #0]
d0000f76:	6825      	ldr	r5, [r4, #0]
d0000f78:	1d18      	adds	r0, r3, #4
d0000f7a:	6008      	str	r0, [r1, #0]
d0000f7c:	0628      	lsls	r0, r5, #24
d0000f7e:	d501      	bpl.n	d0000f84 <_printf_i+0xec>
d0000f80:	681d      	ldr	r5, [r3, #0]
d0000f82:	e002      	b.n	d0000f8a <_printf_i+0xf2>
d0000f84:	0669      	lsls	r1, r5, #25
d0000f86:	d5fb      	bpl.n	d0000f80 <_printf_i+0xe8>
d0000f88:	881d      	ldrh	r5, [r3, #0]
d0000f8a:	4854      	ldr	r0, [pc, #336]	; (d00010dc <_printf_i+0x244>)
d0000f8c:	2f6f      	cmp	r7, #111	; 0x6f
d0000f8e:	bf0c      	ite	eq
d0000f90:	2308      	moveq	r3, #8
d0000f92:	230a      	movne	r3, #10
d0000f94:	2100      	movs	r1, #0
d0000f96:	f884 1043 	strb.w	r1, [r4, #67]	; 0x43
d0000f9a:	6866      	ldr	r6, [r4, #4]
d0000f9c:	60a6      	str	r6, [r4, #8]
d0000f9e:	2e00      	cmp	r6, #0
d0000fa0:	bfa2      	ittt	ge
d0000fa2:	6821      	ldrge	r1, [r4, #0]
d0000fa4:	f021 0104 	bicge.w	r1, r1, #4
d0000fa8:	6021      	strge	r1, [r4, #0]
d0000faa:	b90d      	cbnz	r5, d0000fb0 <_printf_i+0x118>
d0000fac:	2e00      	cmp	r6, #0
d0000fae:	d04d      	beq.n	d000104c <_printf_i+0x1b4>
d0000fb0:	4616      	mov	r6, r2
d0000fb2:	fbb5 f1f3 	udiv	r1, r5, r3
d0000fb6:	fb03 5711 	mls	r7, r3, r1, r5
d0000fba:	5dc7      	ldrb	r7, [r0, r7]
d0000fbc:	f806 7d01 	strb.w	r7, [r6, #-1]!
d0000fc0:	462f      	mov	r7, r5
d0000fc2:	42bb      	cmp	r3, r7
d0000fc4:	460d      	mov	r5, r1
d0000fc6:	d9f4      	bls.n	d0000fb2 <_printf_i+0x11a>
d0000fc8:	2b08      	cmp	r3, #8
d0000fca:	d10b      	bne.n	d0000fe4 <_printf_i+0x14c>
d0000fcc:	6823      	ldr	r3, [r4, #0]
d0000fce:	07df      	lsls	r7, r3, #31
d0000fd0:	d508      	bpl.n	d0000fe4 <_printf_i+0x14c>
d0000fd2:	6923      	ldr	r3, [r4, #16]
d0000fd4:	6861      	ldr	r1, [r4, #4]
d0000fd6:	4299      	cmp	r1, r3
d0000fd8:	bfde      	ittt	le
d0000fda:	2330      	movle	r3, #48	; 0x30
d0000fdc:	f806 3c01 	strble.w	r3, [r6, #-1]
d0000fe0:	f106 36ff 	addle.w	r6, r6, #4294967295	; 0xffffffff
d0000fe4:	1b92      	subs	r2, r2, r6
d0000fe6:	6122      	str	r2, [r4, #16]
d0000fe8:	f8cd a000 	str.w	sl, [sp]
d0000fec:	464b      	mov	r3, r9
d0000fee:	aa03      	add	r2, sp, #12
d0000ff0:	4621      	mov	r1, r4
d0000ff2:	4640      	mov	r0, r8
d0000ff4:	f7ff fee2 	bl	d0000dbc <_printf_common>
d0000ff8:	3001      	adds	r0, #1
d0000ffa:	d14c      	bne.n	d0001096 <_printf_i+0x1fe>
d0000ffc:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d0001000:	b004      	add	sp, #16
d0001002:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
d0001006:	4835      	ldr	r0, [pc, #212]	; (d00010dc <_printf_i+0x244>)
d0001008:	f884 7045 	strb.w	r7, [r4, #69]	; 0x45
d000100c:	6823      	ldr	r3, [r4, #0]
d000100e:	680e      	ldr	r6, [r1, #0]
d0001010:	061f      	lsls	r7, r3, #24
d0001012:	f856 5b04 	ldr.w	r5, [r6], #4
d0001016:	600e      	str	r6, [r1, #0]
d0001018:	d514      	bpl.n	d0001044 <_printf_i+0x1ac>
d000101a:	07d9      	lsls	r1, r3, #31
d000101c:	bf44      	itt	mi
d000101e:	f043 0320 	orrmi.w	r3, r3, #32
d0001022:	6023      	strmi	r3, [r4, #0]
d0001024:	b91d      	cbnz	r5, d000102e <_printf_i+0x196>
d0001026:	6823      	ldr	r3, [r4, #0]
d0001028:	f023 0320 	bic.w	r3, r3, #32
d000102c:	6023      	str	r3, [r4, #0]
d000102e:	2310      	movs	r3, #16
d0001030:	e7b0      	b.n	d0000f94 <_printf_i+0xfc>
d0001032:	6823      	ldr	r3, [r4, #0]
d0001034:	f043 0320 	orr.w	r3, r3, #32
d0001038:	6023      	str	r3, [r4, #0]
d000103a:	2378      	movs	r3, #120	; 0x78
d000103c:	4828      	ldr	r0, [pc, #160]	; (d00010e0 <_printf_i+0x248>)
d000103e:	f884 3045 	strb.w	r3, [r4, #69]	; 0x45
d0001042:	e7e3      	b.n	d000100c <_printf_i+0x174>
d0001044:	065e      	lsls	r6, r3, #25
d0001046:	bf48      	it	mi
d0001048:	b2ad      	uxthmi	r5, r5
d000104a:	e7e6      	b.n	d000101a <_printf_i+0x182>
d000104c:	4616      	mov	r6, r2
d000104e:	e7bb      	b.n	d0000fc8 <_printf_i+0x130>
d0001050:	680b      	ldr	r3, [r1, #0]
d0001052:	6826      	ldr	r6, [r4, #0]
d0001054:	6960      	ldr	r0, [r4, #20]
d0001056:	1d1d      	adds	r5, r3, #4
d0001058:	600d      	str	r5, [r1, #0]
d000105a:	0635      	lsls	r5, r6, #24
d000105c:	681b      	ldr	r3, [r3, #0]
d000105e:	d501      	bpl.n	d0001064 <_printf_i+0x1cc>
d0001060:	6018      	str	r0, [r3, #0]
d0001062:	e002      	b.n	d000106a <_printf_i+0x1d2>
d0001064:	0671      	lsls	r1, r6, #25
d0001066:	d5fb      	bpl.n	d0001060 <_printf_i+0x1c8>
d0001068:	8018      	strh	r0, [r3, #0]
d000106a:	2300      	movs	r3, #0
d000106c:	6123      	str	r3, [r4, #16]
d000106e:	4616      	mov	r6, r2
d0001070:	e7ba      	b.n	d0000fe8 <_printf_i+0x150>
d0001072:	680b      	ldr	r3, [r1, #0]
d0001074:	1d1a      	adds	r2, r3, #4
d0001076:	600a      	str	r2, [r1, #0]
d0001078:	681e      	ldr	r6, [r3, #0]
d000107a:	6862      	ldr	r2, [r4, #4]
d000107c:	2100      	movs	r1, #0
d000107e:	4630      	mov	r0, r6
d0001080:	f000 f8be 	bl	d0001200 <memchr>
d0001084:	b108      	cbz	r0, d000108a <_printf_i+0x1f2>
d0001086:	1b80      	subs	r0, r0, r6
d0001088:	6060      	str	r0, [r4, #4]
d000108a:	6863      	ldr	r3, [r4, #4]
d000108c:	6123      	str	r3, [r4, #16]
d000108e:	2300      	movs	r3, #0
d0001090:	f884 3043 	strb.w	r3, [r4, #67]	; 0x43
d0001094:	e7a8      	b.n	d0000fe8 <_printf_i+0x150>
d0001096:	6923      	ldr	r3, [r4, #16]
d0001098:	4632      	mov	r2, r6
d000109a:	4649      	mov	r1, r9
d000109c:	4640      	mov	r0, r8
d000109e:	47d0      	blx	sl
d00010a0:	3001      	adds	r0, #1
d00010a2:	d0ab      	beq.n	d0000ffc <_printf_i+0x164>
d00010a4:	6823      	ldr	r3, [r4, #0]
d00010a6:	079b      	lsls	r3, r3, #30
d00010a8:	d413      	bmi.n	d00010d2 <_printf_i+0x23a>
d00010aa:	68e0      	ldr	r0, [r4, #12]
d00010ac:	9b03      	ldr	r3, [sp, #12]
d00010ae:	4298      	cmp	r0, r3
d00010b0:	bfb8      	it	lt
d00010b2:	4618      	movlt	r0, r3
d00010b4:	e7a4      	b.n	d0001000 <_printf_i+0x168>
d00010b6:	2301      	movs	r3, #1
d00010b8:	4632      	mov	r2, r6
d00010ba:	4649      	mov	r1, r9
d00010bc:	4640      	mov	r0, r8
d00010be:	47d0      	blx	sl
d00010c0:	3001      	adds	r0, #1
d00010c2:	d09b      	beq.n	d0000ffc <_printf_i+0x164>
d00010c4:	3501      	adds	r5, #1
d00010c6:	68e3      	ldr	r3, [r4, #12]
d00010c8:	9903      	ldr	r1, [sp, #12]
d00010ca:	1a5b      	subs	r3, r3, r1
d00010cc:	42ab      	cmp	r3, r5
d00010ce:	dcf2      	bgt.n	d00010b6 <_printf_i+0x21e>
d00010d0:	e7eb      	b.n	d00010aa <_printf_i+0x212>
d00010d2:	2500      	movs	r5, #0
d00010d4:	f104 0619 	add.w	r6, r4, #25
d00010d8:	e7f5      	b.n	d00010c6 <_printf_i+0x22e>
d00010da:	bf00      	nop
d00010dc:	d000138d 	.word	0xd000138d
d00010e0:	d000139e 	.word	0xd000139e

d00010e4 <__sread>:
d00010e4:	b510      	push	{r4, lr}
d00010e6:	460c      	mov	r4, r1
d00010e8:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d00010ec:	f000 f8e4 	bl	d00012b8 <_read_r>
d00010f0:	2800      	cmp	r0, #0
d00010f2:	bfab      	itete	ge
d00010f4:	6d63      	ldrge	r3, [r4, #84]	; 0x54
d00010f6:	89a3      	ldrhlt	r3, [r4, #12]
d00010f8:	181b      	addge	r3, r3, r0
d00010fa:	f423 5380 	biclt.w	r3, r3, #4096	; 0x1000
d00010fe:	bfac      	ite	ge
d0001100:	6563      	strge	r3, [r4, #84]	; 0x54
d0001102:	81a3      	strhlt	r3, [r4, #12]
d0001104:	bd10      	pop	{r4, pc}

d0001106 <__swrite>:
d0001106:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
d000110a:	461f      	mov	r7, r3
d000110c:	898b      	ldrh	r3, [r1, #12]
d000110e:	05db      	lsls	r3, r3, #23
d0001110:	4605      	mov	r5, r0
d0001112:	460c      	mov	r4, r1
d0001114:	4616      	mov	r6, r2
d0001116:	d505      	bpl.n	d0001124 <__swrite+0x1e>
d0001118:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d000111c:	2302      	movs	r3, #2
d000111e:	2200      	movs	r2, #0
d0001120:	f000 f856 	bl	d00011d0 <_lseek_r>
d0001124:	89a3      	ldrh	r3, [r4, #12]
d0001126:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
d000112a:	f423 5380 	bic.w	r3, r3, #4096	; 0x1000
d000112e:	81a3      	strh	r3, [r4, #12]
d0001130:	4632      	mov	r2, r6
d0001132:	463b      	mov	r3, r7
d0001134:	4628      	mov	r0, r5
d0001136:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
d000113a:	f7fe bf87 	b.w	d000004c <_write_r>

d000113e <__sseek>:
d000113e:	b510      	push	{r4, lr}
d0001140:	460c      	mov	r4, r1
d0001142:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d0001146:	f000 f843 	bl	d00011d0 <_lseek_r>
d000114a:	1c43      	adds	r3, r0, #1
d000114c:	89a3      	ldrh	r3, [r4, #12]
d000114e:	bf15      	itete	ne
d0001150:	6560      	strne	r0, [r4, #84]	; 0x54
d0001152:	f423 5380 	biceq.w	r3, r3, #4096	; 0x1000
d0001156:	f443 5380 	orrne.w	r3, r3, #4096	; 0x1000
d000115a:	81a3      	strheq	r3, [r4, #12]
d000115c:	bf18      	it	ne
d000115e:	81a3      	strhne	r3, [r4, #12]
d0001160:	bd10      	pop	{r4, pc}

d0001162 <__sclose>:
d0001162:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d0001166:	f000 b801 	b.w	d000116c <_close_r>
	...

d000116c <_close_r>:
d000116c:	b538      	push	{r3, r4, r5, lr}
d000116e:	4d06      	ldr	r5, [pc, #24]	; (d0001188 <_close_r+0x1c>)
d0001170:	2300      	movs	r3, #0
d0001172:	4604      	mov	r4, r0
d0001174:	4608      	mov	r0, r1
d0001176:	602b      	str	r3, [r5, #0]
d0001178:	f7fe ff98 	bl	d00000ac <_close>
d000117c:	1c43      	adds	r3, r0, #1
d000117e:	d102      	bne.n	d0001186 <_close_r+0x1a>
d0001180:	682b      	ldr	r3, [r5, #0]
d0001182:	b103      	cbz	r3, d0001186 <_close_r+0x1a>
d0001184:	6023      	str	r3, [r4, #0]
d0001186:	bd38      	pop	{r3, r4, r5, pc}
d0001188:	d0001438 	.word	0xd0001438

d000118c <_fstat_r>:
d000118c:	b538      	push	{r3, r4, r5, lr}
d000118e:	4d07      	ldr	r5, [pc, #28]	; (d00011ac <_fstat_r+0x20>)
d0001190:	2300      	movs	r3, #0
d0001192:	4604      	mov	r4, r0
d0001194:	4608      	mov	r0, r1
d0001196:	4611      	mov	r1, r2
d0001198:	602b      	str	r3, [r5, #0]
d000119a:	f7fe ff8b 	bl	d00000b4 <_fstat>
d000119e:	1c43      	adds	r3, r0, #1
d00011a0:	d102      	bne.n	d00011a8 <_fstat_r+0x1c>
d00011a2:	682b      	ldr	r3, [r5, #0]
d00011a4:	b103      	cbz	r3, d00011a8 <_fstat_r+0x1c>
d00011a6:	6023      	str	r3, [r4, #0]
d00011a8:	bd38      	pop	{r3, r4, r5, pc}
d00011aa:	bf00      	nop
d00011ac:	d0001438 	.word	0xd0001438

d00011b0 <_isatty_r>:
d00011b0:	b538      	push	{r3, r4, r5, lr}
d00011b2:	4d06      	ldr	r5, [pc, #24]	; (d00011cc <_isatty_r+0x1c>)
d00011b4:	2300      	movs	r3, #0
d00011b6:	4604      	mov	r4, r0
d00011b8:	4608      	mov	r0, r1
d00011ba:	602b      	str	r3, [r5, #0]
d00011bc:	f7fe ffa2 	bl	d0000104 <_isatty>
d00011c0:	1c43      	adds	r3, r0, #1
d00011c2:	d102      	bne.n	d00011ca <_isatty_r+0x1a>
d00011c4:	682b      	ldr	r3, [r5, #0]
d00011c6:	b103      	cbz	r3, d00011ca <_isatty_r+0x1a>
d00011c8:	6023      	str	r3, [r4, #0]
d00011ca:	bd38      	pop	{r3, r4, r5, pc}
d00011cc:	d0001438 	.word	0xd0001438

d00011d0 <_lseek_r>:
d00011d0:	b538      	push	{r3, r4, r5, lr}
d00011d2:	4d07      	ldr	r5, [pc, #28]	; (d00011f0 <_lseek_r+0x20>)
d00011d4:	4604      	mov	r4, r0
d00011d6:	4608      	mov	r0, r1
d00011d8:	4611      	mov	r1, r2
d00011da:	2200      	movs	r2, #0
d00011dc:	602a      	str	r2, [r5, #0]
d00011de:	461a      	mov	r2, r3
d00011e0:	f7fe ff6e 	bl	d00000c0 <_lseek>
d00011e4:	1c43      	adds	r3, r0, #1
d00011e6:	d102      	bne.n	d00011ee <_lseek_r+0x1e>
d00011e8:	682b      	ldr	r3, [r5, #0]
d00011ea:	b103      	cbz	r3, d00011ee <_lseek_r+0x1e>
d00011ec:	6023      	str	r3, [r4, #0]
d00011ee:	bd38      	pop	{r3, r4, r5, pc}
d00011f0:	d0001438 	.word	0xd0001438
	...

d0001200 <memchr>:
d0001200:	f001 01ff 	and.w	r1, r1, #255	; 0xff
d0001204:	2a10      	cmp	r2, #16
d0001206:	db2b      	blt.n	d0001260 <memchr+0x60>
d0001208:	f010 0f07 	tst.w	r0, #7
d000120c:	d008      	beq.n	d0001220 <memchr+0x20>
d000120e:	f810 3b01 	ldrb.w	r3, [r0], #1
d0001212:	3a01      	subs	r2, #1
d0001214:	428b      	cmp	r3, r1
d0001216:	d02d      	beq.n	d0001274 <memchr+0x74>
d0001218:	f010 0f07 	tst.w	r0, #7
d000121c:	b342      	cbz	r2, d0001270 <memchr+0x70>
d000121e:	d1f6      	bne.n	d000120e <memchr+0xe>
d0001220:	b4f0      	push	{r4, r5, r6, r7}
d0001222:	ea41 2101 	orr.w	r1, r1, r1, lsl #8
d0001226:	ea41 4101 	orr.w	r1, r1, r1, lsl #16
d000122a:	f022 0407 	bic.w	r4, r2, #7
d000122e:	f07f 0700 	mvns.w	r7, #0
d0001232:	2300      	movs	r3, #0
d0001234:	e8f0 5602 	ldrd	r5, r6, [r0], #8
d0001238:	3c08      	subs	r4, #8
d000123a:	ea85 0501 	eor.w	r5, r5, r1
d000123e:	ea86 0601 	eor.w	r6, r6, r1
d0001242:	fa85 f547 	uadd8	r5, r5, r7
d0001246:	faa3 f587 	sel	r5, r3, r7
d000124a:	fa86 f647 	uadd8	r6, r6, r7
d000124e:	faa5 f687 	sel	r6, r5, r7
d0001252:	b98e      	cbnz	r6, d0001278 <memchr+0x78>
d0001254:	d1ee      	bne.n	d0001234 <memchr+0x34>
d0001256:	bcf0      	pop	{r4, r5, r6, r7}
d0001258:	f001 01ff 	and.w	r1, r1, #255	; 0xff
d000125c:	f002 0207 	and.w	r2, r2, #7
d0001260:	b132      	cbz	r2, d0001270 <memchr+0x70>
d0001262:	f810 3b01 	ldrb.w	r3, [r0], #1
d0001266:	3a01      	subs	r2, #1
d0001268:	ea83 0301 	eor.w	r3, r3, r1
d000126c:	b113      	cbz	r3, d0001274 <memchr+0x74>
d000126e:	d1f8      	bne.n	d0001262 <memchr+0x62>
d0001270:	2000      	movs	r0, #0
d0001272:	4770      	bx	lr
d0001274:	3801      	subs	r0, #1
d0001276:	4770      	bx	lr
d0001278:	2d00      	cmp	r5, #0
d000127a:	bf06      	itte	eq
d000127c:	4635      	moveq	r5, r6
d000127e:	3803      	subeq	r0, #3
d0001280:	3807      	subne	r0, #7
d0001282:	f015 0f01 	tst.w	r5, #1
d0001286:	d107      	bne.n	d0001298 <memchr+0x98>
d0001288:	3001      	adds	r0, #1
d000128a:	f415 7f80 	tst.w	r5, #256	; 0x100
d000128e:	bf02      	ittt	eq
d0001290:	3001      	addeq	r0, #1
d0001292:	f415 3fc0 	tsteq.w	r5, #98304	; 0x18000
d0001296:	3001      	addeq	r0, #1
d0001298:	bcf0      	pop	{r4, r5, r6, r7}
d000129a:	3801      	subs	r0, #1
d000129c:	4770      	bx	lr
d000129e:	bf00      	nop

d00012a0 <__malloc_lock>:
d00012a0:	4801      	ldr	r0, [pc, #4]	; (d00012a8 <__malloc_lock+0x8>)
d00012a2:	f7ff bb19 	b.w	d00008d8 <__retarget_lock_acquire_recursive>
d00012a6:	bf00      	nop
d00012a8:	d0001430 	.word	0xd0001430

d00012ac <__malloc_unlock>:
d00012ac:	4801      	ldr	r0, [pc, #4]	; (d00012b4 <__malloc_unlock+0x8>)
d00012ae:	f7ff bb14 	b.w	d00008da <__retarget_lock_release_recursive>
d00012b2:	bf00      	nop
d00012b4:	d0001430 	.word	0xd0001430

d00012b8 <_read_r>:
d00012b8:	b538      	push	{r3, r4, r5, lr}
d00012ba:	4d07      	ldr	r5, [pc, #28]	; (d00012d8 <_read_r+0x20>)
d00012bc:	4604      	mov	r4, r0
d00012be:	4608      	mov	r0, r1
d00012c0:	4611      	mov	r1, r2
d00012c2:	2200      	movs	r2, #0
d00012c4:	602a      	str	r2, [r5, #0]
d00012c6:	461a      	mov	r2, r3
d00012c8:	f7fe fee6 	bl	d0000098 <_read>
d00012cc:	1c43      	adds	r3, r0, #1
d00012ce:	d102      	bne.n	d00012d6 <_read_r+0x1e>
d00012d0:	682b      	ldr	r3, [r5, #0]
d00012d2:	b103      	cbz	r3, d00012d6 <_read_r+0x1e>
d00012d4:	6023      	str	r3, [r4, #0]
d00012d6:	bd38      	pop	{r3, r4, r5, pc}
d00012d8:	d0001438 	.word	0xd0001438

d00012dc <_global_impure_ptr>:
d00012dc:	d00013bc 6c707041 53207465 20737961     ....Applet Says 
d00012ec:	6c6c6568 7270206f 66746e69 00002928     hello printf()..
d00012fc:	20555043 74736574 20303420 3128202b     CPU test 40 + (1
d000130c:	202a2032 3d202934 646c2520 00000a0a     2 * 4) = %ld....

d000131c <__sf_fake_stderr>:
	...

d000133c <__sf_fake_stdin>:
	...

d000135c <__sf_fake_stdout>:
	...
d000137c:	2b302d23 6c680020 6665004c 47464567     #-0+ .hlL.efgEFG
d000138c:	32313000 36353433 41393837 45444342     .0123456789ABCDE
d000139c:	31300046 35343332 39383736 64636261     F.0123456789abcd
d00013ac:	                                         ef.

Disassembly of section .init:

d00013b0 <_init>:
d00013b0:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d00013b2:	bf00      	nop

Disassembly of section .fini:

d00013b4 <_fini>:
d00013b4:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d00013b6:	bf00      	nop

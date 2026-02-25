
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
d000001e:	f000 fbe1 	bl	d00007e4 <setbuf>
d0000022:	6833      	ldr	r3, [r6, #0]
d0000024:	2100      	movs	r1, #0
d0000026:	68d8      	ldr	r0, [r3, #12]
d0000028:	f000 fbdc 	bl	d00007e4 <setbuf>
d000002c:	4629      	mov	r1, r5
d000002e:	4620      	mov	r0, r4
d0000030:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
d0000034:	f000 ba96 	b.w	d0000564 <main>
d0000038:	d000107c 	.word	0xd000107c

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
d0000094:	f000 fba0 	bl	d00007d8 <__errno>
d0000098:	2209      	movs	r2, #9
d000009a:	4603      	mov	r3, r0
d000009c:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d00000a0:	601a      	str	r2, [r3, #0]
d00000a2:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d00000a4:	d0001104 	.word	0xd0001104
d00000a8:	2001f000 	.word	0x2001f000

d00000ac <_read>:
d00000ac:	b508      	push	{r3, lr}
d00000ae:	f000 fb93 	bl	d00007d8 <__errno>
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
d00000fa:	f000 fb6d 	bl	d00007d8 <__errno>
d00000fe:	220c      	movs	r2, #12
d0000100:	4603      	mov	r3, r0
d0000102:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d0000106:	601a      	str	r2, [r3, #0]
d0000108:	bd10      	pop	{r4, pc}
d000010a:	bf00      	nop
d000010c:	d0001100 	.word	0xd0001100
d0000110:	d0002040 	.word	0xd0002040
d0000114:	d0600000 	.word	0xd0600000

d0000118 <gfx_line>:
d0000118:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d000011c:	4282      	cmp	r2, r0
d000011e:	b087      	sub	sp, #28
d0000120:	4607      	mov	r7, r0
d0000122:	4692      	mov	sl, r2
d0000124:	4688      	mov	r8, r1
d0000126:	9303      	str	r3, [sp, #12]
d0000128:	dd45      	ble.n	d00001b6 <gfx_line+0x9e>
d000012a:	2301      	movs	r3, #1
d000012c:	eba2 0b00 	sub.w	fp, r2, r0
d0000130:	9304      	str	r3, [sp, #16]
d0000132:	9b03      	ldr	r3, [sp, #12]
d0000134:	4543      	cmp	r3, r8
d0000136:	dd38      	ble.n	d00001aa <gfx_line+0x92>
d0000138:	eba8 0903 	sub.w	r9, r8, r3
d000013c:	2301      	movs	r3, #1
d000013e:	9305      	str	r3, [sp, #20]
d0000140:	eb0b 0609 	add.w	r6, fp, r9
d0000144:	4d1f      	ldr	r5, [pc, #124]	; (d00001c4 <gfx_line+0xac>)
d0000146:	fa0f f188 	sxth.w	r1, r8
d000014a:	b238      	sxth	r0, r7
d000014c:	f895 c008 	ldrb.w	ip, [r5, #8]
d0000150:	2303      	movs	r3, #3
d0000152:	7a6c      	ldrb	r4, [r5, #9]
d0000154:	f895 e00a 	ldrb.w	lr, [r5, #10]
d0000158:	461a      	mov	r2, r3
d000015a:	ea4c 2404 	orr.w	r4, ip, r4, lsl #8
d000015e:	f895 c00b 	ldrb.w	ip, [r5, #11]
d0000162:	9102      	str	r1, [sp, #8]
d0000164:	ea44 4e0e 	orr.w	lr, r4, lr, lsl #16
d0000168:	9001      	str	r0, [sp, #4]
d000016a:	ea4e 640c 	orr.w	r4, lr, ip, lsl #24
d000016e:	6864      	ldr	r4, [r4, #4]
d0000170:	6864      	ldr	r4, [r4, #4]
d0000172:	47a0      	blx	r4
d0000174:	4557      	cmp	r7, sl
d0000176:	ea4f 0346 	mov.w	r3, r6, lsl #1
d000017a:	9801      	ldr	r0, [sp, #4]
d000017c:	9902      	ldr	r1, [sp, #8]
d000017e:	d102      	bne.n	d0000186 <gfx_line+0x6e>
d0000180:	9a03      	ldr	r2, [sp, #12]
d0000182:	4590      	cmp	r8, r2
d0000184:	d00e      	beq.n	d00001a4 <gfx_line+0x8c>
d0000186:	ebb9 0f46 	cmp.w	r9, r6, lsl #1
d000018a:	dc05      	bgt.n	d0000198 <gfx_line+0x80>
d000018c:	9a04      	ldr	r2, [sp, #16]
d000018e:	455b      	cmp	r3, fp
d0000190:	444e      	add	r6, r9
d0000192:	4417      	add	r7, r2
d0000194:	b238      	sxth	r0, r7
d0000196:	dcd9      	bgt.n	d000014c <gfx_line+0x34>
d0000198:	9b05      	ldr	r3, [sp, #20]
d000019a:	445e      	add	r6, fp
d000019c:	4498      	add	r8, r3
d000019e:	fa0f f188 	sxth.w	r1, r8
d00001a2:	e7d3      	b.n	d000014c <gfx_line+0x34>
d00001a4:	b007      	add	sp, #28
d00001a6:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d00001aa:	eba3 0908 	sub.w	r9, r3, r8
d00001ae:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
d00001b2:	9305      	str	r3, [sp, #20]
d00001b4:	e7c4      	b.n	d0000140 <gfx_line+0x28>
d00001b6:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
d00001ba:	eba0 0b02 	sub.w	fp, r0, r2
d00001be:	9304      	str	r3, [sp, #16]
d00001c0:	e7b7      	b.n	d0000132 <gfx_line+0x1a>
d00001c2:	bf00      	nop
d00001c4:	2001f000 	.word	0x2001f000

d00001c8 <sbx_init_worms>:
d00001c8:	2800      	cmp	r0, #0
d00001ca:	4b38      	ldr	r3, [pc, #224]	; (d00002ac <sbx_init_worms+0xe4>)
d00001cc:	bf08      	it	eq
d00001ce:	f04f 30a5 	moveq.w	r0, #2779096485	; 0xa5a5a5a5
d00001d2:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d00001d6:	4602      	mov	r2, r0
d00001d8:	f240 1bcb 	movw	fp, #459	; 0x1cb
d00001dc:	f503 6a70 	add.w	sl, r3, #3840	; 0xf00
d00001e0:	f8df 90d4 	ldr.w	r9, [pc, #212]	; d00002b8 <sbx_init_worms+0xf0>
d00001e4:	f240 1e2b 	movw	lr, #299	; 0x12b
d00001e8:	f04f 0800 	mov.w	r8, #0
d00001ec:	ea82 3242 	eor.w	r2, r2, r2, lsl #13
d00001f0:	2400      	movs	r4, #0
d00001f2:	f883 8058 	strb.w	r8, [r3, #88]	; 0x58
d00001f6:	ea82 4252 	eor.w	r2, r2, r2, lsr #17
d00001fa:	4620      	mov	r0, r4
d00001fc:	ea82 1242 	eor.w	r2, r2, r2, lsl #5
d0000200:	ea82 3542 	eor.w	r5, r2, r2, lsl #13
d0000204:	fba9 6702 	umull	r6, r7, r9, r2
d0000208:	ea85 4555 	eor.w	r5, r5, r5, lsr #17
d000020c:	09ff      	lsrs	r7, r7, #7
d000020e:	ea85 1645 	eor.w	r6, r5, r5, lsl #5
d0000212:	4d27      	ldr	r5, [pc, #156]	; (d00002b0 <sbx_init_worms+0xe8>)
d0000214:	fb0b 2217 	mls	r2, fp, r7, r2
d0000218:	ea86 3c46 	eor.w	ip, r6, r6, lsl #13
d000021c:	fba5 7506 	umull	r7, r5, r5, r6
d0000220:	3208      	adds	r2, #8
d0000222:	ea8c 4c5c 	eor.w	ip, ip, ip, lsr #17
d0000226:	b212      	sxth	r2, r2
d0000228:	ea8c 1c4c 	eor.w	ip, ip, ip, lsl #5
d000022c:	f362 000f 	bfi	r0, r2, #0, #16
d0000230:	09ed      	lsrs	r5, r5, #7
d0000232:	ea8c 374c 	eor.w	r7, ip, ip, lsl #13
d0000236:	801a      	strh	r2, [r3, #0]
d0000238:	f362 401f 	bfi	r0, r2, #16, #16
d000023c:	fb0e 6515 	mls	r5, lr, r5, r6
d0000240:	ea87 4757 	eor.w	r7, r7, r7, lsr #17
d0000244:	f883 c004 	strb.w	ip, [r3, #4]
d0000248:	3508      	adds	r5, #8
d000024a:	6098      	str	r0, [r3, #8]
d000024c:	ea87 1247 	eor.w	r2, r7, r7, lsl #5
d0000250:	f007 0703 	and.w	r7, r7, #3
d0000254:	b22d      	sxth	r5, r5
d0000256:	60d8      	str	r0, [r3, #12]
d0000258:	ea82 3242 	eor.w	r2, r2, r2, lsl #13
d000025c:	3702      	adds	r7, #2
d000025e:	f365 040f 	bfi	r4, r5, #0, #16
d0000262:	805d      	strh	r5, [r3, #2]
d0000264:	ea82 4252 	eor.w	r2, r2, r2, lsr #17
d0000268:	715f      	strb	r7, [r3, #5]
d000026a:	f365 441f 	bfi	r4, r5, #16, #16
d000026e:	6118      	str	r0, [r3, #16]
d0000270:	f002 060f 	and.w	r6, r2, #15
d0000274:	6158      	str	r0, [r3, #20]
d0000276:	6198      	str	r0, [r3, #24]
d0000278:	ea82 1242 	eor.w	r2, r2, r2, lsl #5
d000027c:	198d      	adds	r5, r1, r6
d000027e:	631c      	str	r4, [r3, #48]	; 0x30
d0000280:	635c      	str	r4, [r3, #52]	; 0x34
d0000282:	719d      	strb	r5, [r3, #6]
d0000284:	61d8      	str	r0, [r3, #28]
d0000286:	e9c3 440e 	strd	r4, r4, [r3, #56]	; 0x38
d000028a:	e9c3 4410 	strd	r4, r4, [r3, #64]	; 0x40
d000028e:	e9c3 4412 	strd	r4, r4, [r3, #72]	; 0x48
d0000292:	e9c3 4414 	strd	r4, r4, [r3, #80]	; 0x50
d0000296:	e9c3 0008 	strd	r0, r0, [r3, #32]
d000029a:	e9c3 000a 	strd	r0, r0, [r3, #40]	; 0x28
d000029e:	3360      	adds	r3, #96	; 0x60
d00002a0:	4553      	cmp	r3, sl
d00002a2:	d1a3      	bne.n	d00001ec <sbx_init_worms+0x24>
d00002a4:	4b03      	ldr	r3, [pc, #12]	; (d00002b4 <sbx_init_worms+0xec>)
d00002a6:	601a      	str	r2, [r3, #0]
d00002a8:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d00002ac:	d0001120 	.word	0xd0001120
d00002b0:	6d978b8f 	.word	0x6d978b8f
d00002b4:	d00010e0 	.word	0xd00010e0
d00002b8:	4763d59d 	.word	0x4763d59d

d00002bc <sbx_update_draw_worms>:
d00002bc:	e92d 4ff8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
d00002c0:	4ca1      	ldr	r4, [pc, #644]	; (d0000548 <sbx_update_draw_worms+0x28c>)
d00002c2:	f04f 0a00 	mov.w	sl, #0
d00002c6:	f8df b298 	ldr.w	fp, [pc, #664]	; d0000560 <sbx_update_draw_worms+0x2a4>
d00002ca:	46a1      	mov	r9, r4
d00002cc:	f9b9 1000 	ldrsh.w	r1, [r9]
d00002d0:	f899 3004 	ldrb.w	r3, [r9, #4]
d00002d4:	291f      	cmp	r1, #31
d00002d6:	f340 8109 	ble.w	d00004ec <sbx_update_draw_worms+0x230>
d00002da:	f5b1 7fdd 	cmp.w	r1, #442	; 0x1ba
d00002de:	bfd4      	ite	le
d00002e0:	461d      	movle	r5, r3
d00002e2:	2580      	movgt	r5, #128	; 0x80
d00002e4:	f9b9 0002 	ldrsh.w	r0, [r9, #2]
d00002e8:	281f      	cmp	r0, #31
d00002ea:	f340 80fd 	ble.w	d00004e8 <sbx_update_draw_worms+0x22c>
d00002ee:	f5b0 7f8d 	cmp.w	r0, #282	; 0x11a
d00002f2:	bfc8      	it	gt
d00002f4:	25c0      	movgt	r5, #192	; 0xc0
d00002f6:	1aea      	subs	r2, r5, r3
d00002f8:	f012 02ff 	ands.w	r2, r2, #255	; 0xff
d00002fc:	d007      	beq.n	d000030e <sbx_update_draw_worms+0x52>
d00002fe:	0616      	lsls	r6, r2, #24
d0000300:	f100 811a 	bmi.w	d0000538 <sbx_update_draw_worms+0x27c>
d0000304:	2a03      	cmp	r2, #3
d0000306:	f240 8115 	bls.w	d0000534 <sbx_update_draw_worms+0x278>
d000030a:	3304      	adds	r3, #4
d000030c:	b2db      	uxtb	r3, r3
d000030e:	4e8f      	ldr	r6, [pc, #572]	; (d000054c <sbx_update_draw_worms+0x290>)
d0000310:	f889 3004 	strb.w	r3, [r9, #4]
d0000314:	6835      	ldr	r5, [r6, #0]
d0000316:	ea85 3545 	eor.w	r5, r5, r5, lsl #13
d000031a:	ea85 4555 	eor.w	r5, r5, r5, lsr #17
d000031e:	ea85 1245 	eor.w	r2, r5, r5, lsl #5
d0000322:	06ed      	lsls	r5, r5, #27
d0000324:	f000 80e4 	beq.w	d00004f0 <sbx_update_draw_worms+0x234>
d0000328:	6032      	str	r2, [r6, #0]
d000032a:	f103 0540 	add.w	r5, r3, #64	; 0x40
d000032e:	4a88      	ldr	r2, [pc, #544]	; (d0000550 <sbx_update_draw_worms+0x294>)
d0000330:	f005 063f 	and.w	r6, r5, #63	; 0x3f
d0000334:	f3c5 1581 	ubfx	r5, r5, #6, #2
d0000338:	01b6      	lsls	r6, r6, #6
d000033a:	2d01      	cmp	r5, #1
d000033c:	fba2 7206 	umull	r7, r2, r2, r6
d0000340:	eba6 0602 	sub.w	r6, r6, r2
d0000344:	eb02 0256 	add.w	r2, r2, r6, lsr #1
d0000348:	ea4f 1252 	mov.w	r2, r2, lsr #5
d000034c:	f000 80e8 	beq.w	d0000520 <sbx_update_draw_worms+0x264>
d0000350:	2d02      	cmp	r5, #2
d0000352:	d004      	beq.n	d000035e <sbx_update_draw_worms+0xa2>
d0000354:	2d00      	cmp	r5, #0
d0000356:	f000 80e5 	beq.w	d0000524 <sbx_update_draw_worms+0x268>
d000035a:	f1c2 0240 	rsb	r2, r2, #64	; 0x40
d000035e:	4d7d      	ldr	r5, [pc, #500]	; (d0000554 <sbx_update_draw_worms+0x298>)
d0000360:	5cad      	ldrb	r5, [r5, r2]
d0000362:	426d      	negs	r5, r5
d0000364:	b26d      	sxtb	r5, r5
d0000366:	f003 073f 	and.w	r7, r3, #63	; 0x3f
d000036a:	4a79      	ldr	r2, [pc, #484]	; (d0000550 <sbx_update_draw_worms+0x294>)
d000036c:	f899 6005 	ldrb.w	r6, [r9, #5]
d0000370:	f3c3 1387 	ubfx	r3, r3, #6, #8
d0000374:	01bf      	lsls	r7, r7, #6
d0000376:	fb15 f506 	smulbb	r5, r5, r6
d000037a:	2b01      	cmp	r3, #1
d000037c:	fba2 2807 	umull	r2, r8, r2, r7
d0000380:	4a75      	ldr	r2, [pc, #468]	; (d0000558 <sbx_update_draw_worms+0x29c>)
d0000382:	ea4f 7ce5 	mov.w	ip, r5, asr #31
d0000386:	fb82 2e05 	smull	r2, lr, r2, r5
d000038a:	eba7 0708 	sub.w	r7, r7, r8
d000038e:	4475      	add	r5, lr
d0000390:	eb08 0257 	add.w	r2, r8, r7, lsr #1
d0000394:	ebcc 15a5 	rsb	r5, ip, r5, asr #6
d0000398:	ea4f 1252 	mov.w	r2, r2, lsr #5
d000039c:	f000 80c5 	beq.w	d000052a <sbx_update_draw_worms+0x26e>
d00003a0:	2b02      	cmp	r3, #2
d00003a2:	d004      	beq.n	d00003ae <sbx_update_draw_worms+0xf2>
d00003a4:	2b00      	cmp	r3, #0
d00003a6:	f000 80c2 	beq.w	d000052e <sbx_update_draw_worms+0x272>
d00003aa:	f1c2 0240 	rsb	r2, r2, #64	; 0x40
d00003ae:	4b69      	ldr	r3, [pc, #420]	; (d0000554 <sbx_update_draw_worms+0x298>)
d00003b0:	5c9b      	ldrb	r3, [r3, r2]
d00003b2:	425b      	negs	r3, r3
d00003b4:	b25b      	sxtb	r3, r3
d00003b6:	fb16 f603 	smulbb	r6, r6, r3
d00003ba:	4b67      	ldr	r3, [pc, #412]	; (d0000558 <sbx_update_draw_worms+0x29c>)
d00003bc:	4429      	add	r1, r5
d00003be:	fb83 3206 	smull	r3, r2, r3, r6
d00003c2:	17f3      	asrs	r3, r6, #31
d00003c4:	b209      	sxth	r1, r1
d00003c6:	4416      	add	r6, r2
d00003c8:	2907      	cmp	r1, #7
d00003ca:	f8a9 1000 	strh.w	r1, [r9]
d00003ce:	ebc3 13a6 	rsb	r3, r3, r6, asr #6
d00003d2:	4418      	add	r0, r3
d00003d4:	b200      	sxth	r0, r0
d00003d6:	f8a9 0002 	strh.w	r0, [r9, #2]
d00003da:	dc7d      	bgt.n	d00004d8 <sbx_update_draw_worms+0x21c>
d00003dc:	2308      	movs	r3, #8
d00003de:	f8a9 3000 	strh.w	r3, [r9]
d00003e2:	2807      	cmp	r0, #7
d00003e4:	dc70      	bgt.n	d00004c8 <sbx_update_draw_worms+0x20c>
d00003e6:	2308      	movs	r3, #8
d00003e8:	f8a9 3002 	strh.w	r3, [r9, #2]
d00003ec:	f899 2058 	ldrb.w	r2, [r9, #88]	; 0x58
d00003f0:	eb0a 034a 	add.w	r3, sl, sl, lsl #1
d00003f4:	f9b9 0000 	ldrsh.w	r0, [r9]
d00003f8:	ea4f 064a 	mov.w	r6, sl, lsl #1
d00003fc:	eb02 1303 	add.w	r3, r2, r3, lsl #4
d0000400:	3201      	adds	r2, #1
d0000402:	eb04 0143 	add.w	r1, r4, r3, lsl #1
d0000406:	b2d2      	uxtb	r2, r2
d0000408:	460b      	mov	r3, r1
d000040a:	8108      	strh	r0, [r1, #8]
d000040c:	2a13      	cmp	r2, #19
d000040e:	f9b9 1002 	ldrsh.w	r1, [r9, #2]
d0000412:	8619      	strh	r1, [r3, #48]	; 0x30
d0000414:	d854      	bhi.n	d00004c0 <sbx_update_draw_worms+0x204>
d0000416:	f889 2058 	strb.w	r2, [r9, #88]	; 0x58
d000041a:	f89b 1008 	ldrb.w	r1, [fp, #8]
d000041e:	4456      	add	r6, sl
d0000420:	f89b 3009 	ldrb.w	r3, [fp, #9]
d0000424:	2713      	movs	r7, #19
d0000426:	f89b 200a 	ldrb.w	r2, [fp, #10]
d000042a:	eb04 1846 	add.w	r8, r4, r6, lsl #5
d000042e:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
d0000432:	f89b 300b 	ldrb.w	r3, [fp, #11]
d0000436:	f899 0006 	ldrb.w	r0, [r9, #6]
d000043a:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d000043e:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0000442:	685b      	ldr	r3, [r3, #4]
d0000444:	68db      	ldr	r3, [r3, #12]
d0000446:	4798      	blx	r3
d0000448:	f899 3058 	ldrb.w	r3, [r9, #88]	; 0x58
d000044c:	1c5d      	adds	r5, r3, #1
d000044e:	eb03 1c06 	add.w	ip, r3, r6, lsl #4
d0000452:	eb05 1206 	add.w	r2, r5, r6, lsl #4
d0000456:	2d13      	cmp	r5, #19
d0000458:	eb04 034c 	add.w	r3, r4, ip, lsl #1
d000045c:	eb04 0e42 	add.w	lr, r4, r2, lsl #1
d0000460:	469c      	mov	ip, r3
d0000462:	dd17      	ble.n	d0000494 <sbx_update_draw_worms+0x1d8>
d0000464:	f9b3 1030 	ldrsh.w	r1, [r3, #48]	; 0x30
d0000468:	f9b3 0008 	ldrsh.w	r0, [r3, #8]
d000046c:	f9b8 2008 	ldrsh.w	r2, [r8, #8]
d0000470:	f9b8 3030 	ldrsh.w	r3, [r8, #48]	; 0x30
d0000474:	f7ff fe50 	bl	d0000118 <gfx_line>
d0000478:	3f01      	subs	r7, #1
d000047a:	f04f 0300 	mov.w	r3, #0
d000047e:	d1e5      	bne.n	d000044c <sbx_update_draw_worms+0x190>
d0000480:	f10a 0a01 	add.w	sl, sl, #1
d0000484:	f109 0960 	add.w	r9, r9, #96	; 0x60
d0000488:	f1ba 0f28 	cmp.w	sl, #40	; 0x28
d000048c:	f47f af1e 	bne.w	d00002cc <sbx_update_draw_worms+0x10>
d0000490:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0000494:	f9be 3030 	ldrsh.w	r3, [lr, #48]	; 0x30
d0000498:	f9be 2008 	ldrsh.w	r2, [lr, #8]
d000049c:	f9bc 1030 	ldrsh.w	r1, [ip, #48]	; 0x30
d00004a0:	f9bc 0008 	ldrsh.w	r0, [ip, #8]
d00004a4:	f7ff fe38 	bl	d0000118 <gfx_line>
d00004a8:	3f01      	subs	r7, #1
d00004aa:	462b      	mov	r3, r5
d00004ac:	d1ce      	bne.n	d000044c <sbx_update_draw_worms+0x190>
d00004ae:	f10a 0a01 	add.w	sl, sl, #1
d00004b2:	f109 0960 	add.w	r9, r9, #96	; 0x60
d00004b6:	f1ba 0f28 	cmp.w	sl, #40	; 0x28
d00004ba:	f47f af07 	bne.w	d00002cc <sbx_update_draw_worms+0x10>
d00004be:	e7e7      	b.n	d0000490 <sbx_update_draw_worms+0x1d4>
d00004c0:	2300      	movs	r3, #0
d00004c2:	f889 3058 	strb.w	r3, [r9, #88]	; 0x58
d00004c6:	e7a8      	b.n	d000041a <sbx_update_draw_worms+0x15e>
d00004c8:	f5b0 7f99 	cmp.w	r0, #306	; 0x132
d00004cc:	dd8e      	ble.n	d00003ec <sbx_update_draw_worms+0x130>
d00004ce:	f44f 7399 	mov.w	r3, #306	; 0x132
d00004d2:	f8a9 3002 	strh.w	r3, [r9, #2]
d00004d6:	e789      	b.n	d00003ec <sbx_update_draw_worms+0x130>
d00004d8:	f5b1 7fe9 	cmp.w	r1, #466	; 0x1d2
d00004dc:	dd81      	ble.n	d00003e2 <sbx_update_draw_worms+0x126>
d00004de:	f44f 73e9 	mov.w	r3, #466	; 0x1d2
d00004e2:	f8a9 3000 	strh.w	r3, [r9]
d00004e6:	e77c      	b.n	d00003e2 <sbx_update_draw_worms+0x126>
d00004e8:	2540      	movs	r5, #64	; 0x40
d00004ea:	e704      	b.n	d00002f6 <sbx_update_draw_worms+0x3a>
d00004ec:	2500      	movs	r5, #0
d00004ee:	e6f9      	b.n	d00002e4 <sbx_update_draw_worms+0x28>
d00004f0:	ea82 3242 	eor.w	r2, r2, r2, lsl #13
d00004f4:	4d19      	ldr	r5, [pc, #100]	; (d000055c <sbx_update_draw_worms+0x2a0>)
d00004f6:	ea82 4252 	eor.w	r2, r2, r2, lsr #17
d00004fa:	ea82 1242 	eor.w	r2, r2, r2, lsl #5
d00004fe:	fba5 6502 	umull	r6, r5, r5, r2
d0000502:	4e12      	ldr	r6, [pc, #72]	; (d000054c <sbx_update_draw_worms+0x290>)
d0000504:	6032      	str	r2, [r6, #0]
d0000506:	1b56      	subs	r6, r2, r5
d0000508:	eb05 0556 	add.w	r5, r5, r6, lsr #1
d000050c:	08ad      	lsrs	r5, r5, #2
d000050e:	ebc5 05c5 	rsb	r5, r5, r5, lsl #3
d0000512:	1b52      	subs	r2, r2, r5
d0000514:	3a03      	subs	r2, #3
d0000516:	4413      	add	r3, r2
d0000518:	b2db      	uxtb	r3, r3
d000051a:	f889 3004 	strb.w	r3, [r9, #4]
d000051e:	e704      	b.n	d000032a <sbx_update_draw_worms+0x6e>
d0000520:	f1c2 0240 	rsb	r2, r2, #64	; 0x40
d0000524:	4d0b      	ldr	r5, [pc, #44]	; (d0000554 <sbx_update_draw_worms+0x298>)
d0000526:	56ad      	ldrsb	r5, [r5, r2]
d0000528:	e71d      	b.n	d0000366 <sbx_update_draw_worms+0xaa>
d000052a:	f1c2 0240 	rsb	r2, r2, #64	; 0x40
d000052e:	4b09      	ldr	r3, [pc, #36]	; (d0000554 <sbx_update_draw_worms+0x298>)
d0000530:	569b      	ldrsb	r3, [r3, r2]
d0000532:	e740      	b.n	d00003b6 <sbx_update_draw_worms+0xfa>
d0000534:	462b      	mov	r3, r5
d0000536:	e6ea      	b.n	d000030e <sbx_update_draw_worms+0x52>
d0000538:	1b5a      	subs	r2, r3, r5
d000053a:	b2d2      	uxtb	r2, r2
d000053c:	2a03      	cmp	r2, #3
d000053e:	d9f9      	bls.n	d0000534 <sbx_update_draw_worms+0x278>
d0000540:	3b04      	subs	r3, #4
d0000542:	b2db      	uxtb	r3, r3
d0000544:	e6e3      	b.n	d000030e <sbx_update_draw_worms+0x52>
d0000546:	bf00      	nop
d0000548:	d0001120 	.word	0xd0001120
d000054c:	d00010e0 	.word	0xd00010e0
d0000550:	04104105 	.word	0x04104105
d0000554:	d0000fd0 	.word	0xd0000fd0
d0000558:	81020409 	.word	0x81020409
d000055c:	24924925 	.word	0x24924925
d0000560:	2001f000 	.word	0x2001f000

d0000564 <main>:
d0000564:	4a97      	ldr	r2, [pc, #604]	; (d00007c4 <main+0x260>)
d0000566:	213c      	movs	r1, #60	; 0x3c
d0000568:	4c97      	ldr	r4, [pc, #604]	; (d00007c8 <main+0x264>)
d000056a:	20dc      	movs	r0, #220	; 0xdc
d000056c:	6813      	ldr	r3, [r2, #0]
d000056e:	f04f 0800 	mov.w	r8, #0
d0000572:	4e96      	ldr	r6, [pc, #600]	; (d00007cc <main+0x268>)
d0000574:	f023 0310 	bic.w	r3, r3, #16
d0000578:	b580      	push	{r7, lr}
d000057a:	6013      	str	r3, [r2, #0]
d000057c:	b084      	sub	sp, #16
d000057e:	7a23      	ldrb	r3, [r4, #8]
d0000580:	7a62      	ldrb	r2, [r4, #9]
d0000582:	7aa5      	ldrb	r5, [r4, #10]
d0000584:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0000588:	7ae2      	ldrb	r2, [r4, #11]
d000058a:	4f91      	ldr	r7, [pc, #580]	; (d00007d0 <main+0x26c>)
d000058c:	ea43 4305 	orr.w	r3, r3, r5, lsl #16
d0000590:	4d90      	ldr	r5, [pc, #576]	; (d00007d4 <main+0x270>)
d0000592:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0000596:	681b      	ldr	r3, [r3, #0]
d0000598:	68db      	ldr	r3, [r3, #12]
d000059a:	4798      	blx	r3
d000059c:	f894 c008 	ldrb.w	ip, [r4, #8]
d00005a0:	7a60      	ldrb	r0, [r4, #9]
d00005a2:	f44f 73a0 	mov.w	r3, #320	; 0x140
d00005a6:	7aa1      	ldrb	r1, [r4, #10]
d00005a8:	f44f 72f0 	mov.w	r2, #480	; 0x1e0
d00005ac:	ea4c 2c00 	orr.w	ip, ip, r0, lsl #8
d00005b0:	7ae0      	ldrb	r0, [r4, #11]
d00005b2:	ea4c 4c01 	orr.w	ip, ip, r1, lsl #16
d00005b6:	4619      	mov	r1, r3
d00005b8:	ea4c 6c00 	orr.w	ip, ip, r0, lsl #24
d00005bc:	4610      	mov	r0, r2
d00005be:	f8dc c000 	ldr.w	ip, [ip]
d00005c2:	f8cd 8000 	str.w	r8, [sp]
d00005c6:	f8dc 9010 	ldr.w	r9, [ip, #16]
d00005ca:	47c8      	blx	r9
d00005cc:	f88d 8008 	strb.w	r8, [sp, #8]
d00005d0:	f8ad 800c 	strh.w	r8, [sp, #12]
d00005d4:	7a23      	ldrb	r3, [r4, #8]
d00005d6:	7a62      	ldrb	r2, [r4, #9]
d00005d8:	7aa1      	ldrb	r1, [r4, #10]
d00005da:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d00005de:	7ae2      	ldrb	r2, [r4, #11]
d00005e0:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d00005e4:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00005e8:	681b      	ldr	r3, [r3, #0]
d00005ea:	69db      	ldr	r3, [r3, #28]
d00005ec:	4798      	blx	r3
d00005ee:	7a23      	ldrb	r3, [r4, #8]
d00005f0:	7a62      	ldrb	r2, [r4, #9]
d00005f2:	7aa1      	ldrb	r1, [r4, #10]
d00005f4:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d00005f8:	7ae2      	ldrb	r2, [r4, #11]
d00005fa:	6038      	str	r0, [r7, #0]
d00005fc:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0000600:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0000604:	681b      	ldr	r3, [r3, #0]
d0000606:	6a1b      	ldr	r3, [r3, #32]
d0000608:	4798      	blx	r3
d000060a:	7823      	ldrb	r3, [r4, #0]
d000060c:	7862      	ldrb	r2, [r4, #1]
d000060e:	78a1      	ldrb	r1, [r4, #2]
d0000610:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0000614:	78e2      	ldrb	r2, [r4, #3]
d0000616:	6030      	str	r0, [r6, #0]
d0000618:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d000061c:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0000620:	681b      	ldr	r3, [r3, #0]
d0000622:	4798      	blx	r3
d0000624:	2150      	movs	r1, #80	; 0x50
d0000626:	2090      	movs	r0, #144	; 0x90
d0000628:	f7ff fdce 	bl	d00001c8 <sbx_init_worms>
d000062c:	7a23      	ldrb	r3, [r4, #8]
d000062e:	7a62      	ldrb	r2, [r4, #9]
d0000630:	7aa1      	ldrb	r1, [r4, #10]
d0000632:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0000636:	7ae2      	ldrb	r2, [r4, #11]
d0000638:	6838      	ldr	r0, [r7, #0]
d000063a:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d000063e:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0000642:	681b      	ldr	r3, [r3, #0]
d0000644:	695b      	ldr	r3, [r3, #20]
d0000646:	4798      	blx	r3
d0000648:	7a23      	ldrb	r3, [r4, #8]
d000064a:	7a62      	ldrb	r2, [r4, #9]
d000064c:	201d      	movs	r0, #29
d000064e:	7aa1      	ldrb	r1, [r4, #10]
d0000650:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0000654:	7ae2      	ldrb	r2, [r4, #11]
d0000656:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d000065a:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d000065e:	685b      	ldr	r3, [r3, #4]
d0000660:	68db      	ldr	r3, [r3, #12]
d0000662:	4798      	blx	r3
d0000664:	f894 c008 	ldrb.w	ip, [r4, #8]
d0000668:	7a60      	ldrb	r0, [r4, #9]
d000066a:	2340      	movs	r3, #64	; 0x40
d000066c:	7aa2      	ldrb	r2, [r4, #10]
d000066e:	211e      	movs	r1, #30
d0000670:	ea4c 2c00 	orr.w	ip, ip, r0, lsl #8
d0000674:	7ae0      	ldrb	r0, [r4, #11]
d0000676:	ea4c 4c02 	orr.w	ip, ip, r2, lsl #16
d000067a:	461a      	mov	r2, r3
d000067c:	ea4c 6c00 	orr.w	ip, ip, r0, lsl #24
d0000680:	4608      	mov	r0, r1
d0000682:	f8dc c004 	ldr.w	ip, [ip, #4]
d0000686:	f8dc 8004 	ldr.w	r8, [ip, #4]
d000068a:	47c0      	blx	r8
d000068c:	7a23      	ldrb	r3, [r4, #8]
d000068e:	7a62      	ldrb	r2, [r4, #9]
d0000690:	7aa1      	ldrb	r1, [r4, #10]
d0000692:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0000696:	7ae2      	ldrb	r2, [r4, #11]
d0000698:	6830      	ldr	r0, [r6, #0]
d000069a:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d000069e:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00006a2:	681b      	ldr	r3, [r3, #0]
d00006a4:	695b      	ldr	r3, [r3, #20]
d00006a6:	4798      	blx	r3
d00006a8:	7a23      	ldrb	r3, [r4, #8]
d00006aa:	7a62      	ldrb	r2, [r4, #9]
d00006ac:	200d      	movs	r0, #13
d00006ae:	7aa1      	ldrb	r1, [r4, #10]
d00006b0:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d00006b4:	7ae2      	ldrb	r2, [r4, #11]
d00006b6:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d00006ba:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00006be:	685b      	ldr	r3, [r3, #4]
d00006c0:	68db      	ldr	r3, [r3, #12]
d00006c2:	4798      	blx	r3
d00006c4:	f894 c008 	ldrb.w	ip, [r4, #8]
d00006c8:	7a60      	ldrb	r0, [r4, #9]
d00006ca:	2340      	movs	r3, #64	; 0x40
d00006cc:	7aa2      	ldrb	r2, [r4, #10]
d00006ce:	213c      	movs	r1, #60	; 0x3c
d00006d0:	ea4c 2c00 	orr.w	ip, ip, r0, lsl #8
d00006d4:	7ae0      	ldrb	r0, [r4, #11]
d00006d6:	ea4c 4c02 	orr.w	ip, ip, r2, lsl #16
d00006da:	461a      	mov	r2, r3
d00006dc:	ea4c 6c00 	orr.w	ip, ip, r0, lsl #24
d00006e0:	2082      	movs	r0, #130	; 0x82
d00006e2:	f8dc c004 	ldr.w	ip, [ip, #4]
d00006e6:	f8dc 8004 	ldr.w	r8, [ip, #4]
d00006ea:	47c0      	blx	r8
d00006ec:	e033      	b.n	d0000756 <main+0x1f2>
d00006ee:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d00006f2:	7ae3      	ldrb	r3, [r4, #11]
d00006f4:	6838      	ldr	r0, [r7, #0]
d00006f6:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d00006fa:	681b      	ldr	r3, [r3, #0]
d00006fc:	699b      	ldr	r3, [r3, #24]
d00006fe:	4798      	blx	r3
d0000700:	7a20      	ldrb	r0, [r4, #8]
d0000702:	7a61      	ldrb	r1, [r4, #9]
d0000704:	7aa2      	ldrb	r2, [r4, #10]
d0000706:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d000070a:	7ae3      	ldrb	r3, [r4, #11]
d000070c:	6830      	ldr	r0, [r6, #0]
d000070e:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d0000712:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0000716:	681b      	ldr	r3, [r3, #0]
d0000718:	695b      	ldr	r3, [r3, #20]
d000071a:	4798      	blx	r3
d000071c:	7a20      	ldrb	r0, [r4, #8]
d000071e:	7a61      	ldrb	r1, [r4, #9]
d0000720:	7aa2      	ldrb	r2, [r4, #10]
d0000722:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d0000726:	7ae3      	ldrb	r3, [r4, #11]
d0000728:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d000072c:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0000730:	685b      	ldr	r3, [r3, #4]
d0000732:	681b      	ldr	r3, [r3, #0]
d0000734:	4798      	blx	r3
d0000736:	f7ff fdc1 	bl	d00002bc <sbx_update_draw_worms>
d000073a:	7a20      	ldrb	r0, [r4, #8]
d000073c:	7a61      	ldrb	r1, [r4, #9]
d000073e:	7aa2      	ldrb	r2, [r4, #10]
d0000740:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d0000744:	7ae3      	ldrb	r3, [r4, #11]
d0000746:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d000074a:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d000074e:	681b      	ldr	r3, [r3, #0]
d0000750:	681b      	ldr	r3, [r3, #0]
d0000752:	4798      	blx	r3
d0000754:	bf00      	nop
d0000756:	f89d 3008 	ldrb.w	r3, [sp, #8]
d000075a:	3301      	adds	r3, #1
d000075c:	b2db      	uxtb	r3, r3
d000075e:	f88d 3008 	strb.w	r3, [sp, #8]
d0000762:	f89d 3008 	ldrb.w	r3, [sp, #8]
d0000766:	b2db      	uxtb	r3, r3
d0000768:	f88d 3008 	strb.w	r3, [sp, #8]
d000076c:	7a20      	ldrb	r0, [r4, #8]
d000076e:	7a61      	ldrb	r1, [r4, #9]
d0000770:	7aa2      	ldrb	r2, [r4, #10]
d0000772:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d0000776:	7ae3      	ldrb	r3, [r4, #11]
d0000778:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d000077c:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0000780:	681b      	ldr	r3, [r3, #0]
d0000782:	689b      	ldr	r3, [r3, #8]
d0000784:	4798      	blx	r3
d0000786:	782b      	ldrb	r3, [r5, #0]
d0000788:	f1c3 0301 	rsb	r3, r3, #1
d000078c:	b2db      	uxtb	r3, r3
d000078e:	702b      	strb	r3, [r5, #0]
d0000790:	782b      	ldrb	r3, [r5, #0]
d0000792:	7a20      	ldrb	r0, [r4, #8]
d0000794:	7a61      	ldrb	r1, [r4, #9]
d0000796:	7aa2      	ldrb	r2, [r4, #10]
d0000798:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d000079c:	2b00      	cmp	r3, #0
d000079e:	d1a6      	bne.n	d00006ee <main+0x18a>
d00007a0:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d00007a4:	7ae3      	ldrb	r3, [r4, #11]
d00007a6:	6830      	ldr	r0, [r6, #0]
d00007a8:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d00007ac:	681b      	ldr	r3, [r3, #0]
d00007ae:	699b      	ldr	r3, [r3, #24]
d00007b0:	4798      	blx	r3
d00007b2:	7a20      	ldrb	r0, [r4, #8]
d00007b4:	7a61      	ldrb	r1, [r4, #9]
d00007b6:	7aa2      	ldrb	r2, [r4, #10]
d00007b8:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d00007bc:	7ae3      	ldrb	r3, [r4, #11]
d00007be:	6838      	ldr	r0, [r7, #0]
d00007c0:	e7a5      	b.n	d000070e <main+0x1aa>
d00007c2:	bf00      	nop
d00007c4:	e000ed14 	.word	0xe000ed14
d00007c8:	2001f000 	.word	0x2001f000
d00007cc:	d0002028 	.word	0xd0002028
d00007d0:	d000202c 	.word	0xd000202c
d00007d4:	d0001108 	.word	0xd0001108

d00007d8 <__errno>:
d00007d8:	4b01      	ldr	r3, [pc, #4]	; (d00007e0 <__errno+0x8>)
d00007da:	6818      	ldr	r0, [r3, #0]
d00007dc:	4770      	bx	lr
d00007de:	bf00      	nop
d00007e0:	d000107c 	.word	0xd000107c

d00007e4 <setbuf>:
d00007e4:	2900      	cmp	r1, #0
d00007e6:	f44f 6380 	mov.w	r3, #1024	; 0x400
d00007ea:	bf0c      	ite	eq
d00007ec:	2202      	moveq	r2, #2
d00007ee:	2200      	movne	r2, #0
d00007f0:	f000 b800 	b.w	d00007f4 <setvbuf>

d00007f4 <setvbuf>:
d00007f4:	e92d 43f7 	stmdb	sp!, {r0, r1, r2, r4, r5, r6, r7, r8, r9, lr}
d00007f8:	461d      	mov	r5, r3
d00007fa:	4b5d      	ldr	r3, [pc, #372]	; (d0000970 <setvbuf+0x17c>)
d00007fc:	681f      	ldr	r7, [r3, #0]
d00007fe:	4604      	mov	r4, r0
d0000800:	460e      	mov	r6, r1
d0000802:	4690      	mov	r8, r2
d0000804:	b127      	cbz	r7, d0000810 <setvbuf+0x1c>
d0000806:	69bb      	ldr	r3, [r7, #24]
d0000808:	b913      	cbnz	r3, d0000810 <setvbuf+0x1c>
d000080a:	4638      	mov	r0, r7
d000080c:	f000 f9d2 	bl	d0000bb4 <__sinit>
d0000810:	4b58      	ldr	r3, [pc, #352]	; (d0000974 <setvbuf+0x180>)
d0000812:	429c      	cmp	r4, r3
d0000814:	d167      	bne.n	d00008e6 <setvbuf+0xf2>
d0000816:	687c      	ldr	r4, [r7, #4]
d0000818:	f1b8 0f02 	cmp.w	r8, #2
d000081c:	d006      	beq.n	d000082c <setvbuf+0x38>
d000081e:	f1b8 0f01 	cmp.w	r8, #1
d0000822:	f200 809f 	bhi.w	d0000964 <setvbuf+0x170>
d0000826:	2d00      	cmp	r5, #0
d0000828:	f2c0 809c 	blt.w	d0000964 <setvbuf+0x170>
d000082c:	6e63      	ldr	r3, [r4, #100]	; 0x64
d000082e:	07db      	lsls	r3, r3, #31
d0000830:	d405      	bmi.n	d000083e <setvbuf+0x4a>
d0000832:	89a3      	ldrh	r3, [r4, #12]
d0000834:	0598      	lsls	r0, r3, #22
d0000836:	d402      	bmi.n	d000083e <setvbuf+0x4a>
d0000838:	6da0      	ldr	r0, [r4, #88]	; 0x58
d000083a:	f000 fa59 	bl	d0000cf0 <__retarget_lock_acquire_recursive>
d000083e:	4621      	mov	r1, r4
d0000840:	4638      	mov	r0, r7
d0000842:	f000 f923 	bl	d0000a8c <_fflush_r>
d0000846:	6b61      	ldr	r1, [r4, #52]	; 0x34
d0000848:	b141      	cbz	r1, d000085c <setvbuf+0x68>
d000084a:	f104 0344 	add.w	r3, r4, #68	; 0x44
d000084e:	4299      	cmp	r1, r3
d0000850:	d002      	beq.n	d0000858 <setvbuf+0x64>
d0000852:	4638      	mov	r0, r7
d0000854:	f000 fa7a 	bl	d0000d4c <_free_r>
d0000858:	2300      	movs	r3, #0
d000085a:	6363      	str	r3, [r4, #52]	; 0x34
d000085c:	2300      	movs	r3, #0
d000085e:	61a3      	str	r3, [r4, #24]
d0000860:	6063      	str	r3, [r4, #4]
d0000862:	89a3      	ldrh	r3, [r4, #12]
d0000864:	0619      	lsls	r1, r3, #24
d0000866:	d503      	bpl.n	d0000870 <setvbuf+0x7c>
d0000868:	6921      	ldr	r1, [r4, #16]
d000086a:	4638      	mov	r0, r7
d000086c:	f000 fa6e 	bl	d0000d4c <_free_r>
d0000870:	89a3      	ldrh	r3, [r4, #12]
d0000872:	f423 634a 	bic.w	r3, r3, #3232	; 0xca0
d0000876:	f023 0303 	bic.w	r3, r3, #3
d000087a:	f1b8 0f02 	cmp.w	r8, #2
d000087e:	81a3      	strh	r3, [r4, #12]
d0000880:	d06c      	beq.n	d000095c <setvbuf+0x168>
d0000882:	ab01      	add	r3, sp, #4
d0000884:	466a      	mov	r2, sp
d0000886:	4621      	mov	r1, r4
d0000888:	4638      	mov	r0, r7
d000088a:	f000 fa33 	bl	d0000cf4 <__swhatbuf_r>
d000088e:	89a3      	ldrh	r3, [r4, #12]
d0000890:	4318      	orrs	r0, r3
d0000892:	81a0      	strh	r0, [r4, #12]
d0000894:	2d00      	cmp	r5, #0
d0000896:	d130      	bne.n	d00008fa <setvbuf+0x106>
d0000898:	9d00      	ldr	r5, [sp, #0]
d000089a:	4628      	mov	r0, r5
d000089c:	f000 fa4e 	bl	d0000d3c <malloc>
d00008a0:	4606      	mov	r6, r0
d00008a2:	2800      	cmp	r0, #0
d00008a4:	d155      	bne.n	d0000952 <setvbuf+0x15e>
d00008a6:	f8dd 9000 	ldr.w	r9, [sp]
d00008aa:	45a9      	cmp	r9, r5
d00008ac:	d14a      	bne.n	d0000944 <setvbuf+0x150>
d00008ae:	f04f 35ff 	mov.w	r5, #4294967295	; 0xffffffff
d00008b2:	2200      	movs	r2, #0
d00008b4:	60a2      	str	r2, [r4, #8]
d00008b6:	f104 0247 	add.w	r2, r4, #71	; 0x47
d00008ba:	6022      	str	r2, [r4, #0]
d00008bc:	6122      	str	r2, [r4, #16]
d00008be:	2201      	movs	r2, #1
d00008c0:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
d00008c4:	6162      	str	r2, [r4, #20]
d00008c6:	6e62      	ldr	r2, [r4, #100]	; 0x64
d00008c8:	f043 0302 	orr.w	r3, r3, #2
d00008cc:	07d2      	lsls	r2, r2, #31
d00008ce:	81a3      	strh	r3, [r4, #12]
d00008d0:	d405      	bmi.n	d00008de <setvbuf+0xea>
d00008d2:	f413 7f00 	tst.w	r3, #512	; 0x200
d00008d6:	d102      	bne.n	d00008de <setvbuf+0xea>
d00008d8:	6da0      	ldr	r0, [r4, #88]	; 0x58
d00008da:	f000 fa0a 	bl	d0000cf2 <__retarget_lock_release_recursive>
d00008de:	4628      	mov	r0, r5
d00008e0:	b003      	add	sp, #12
d00008e2:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
d00008e6:	4b24      	ldr	r3, [pc, #144]	; (d0000978 <setvbuf+0x184>)
d00008e8:	429c      	cmp	r4, r3
d00008ea:	d101      	bne.n	d00008f0 <setvbuf+0xfc>
d00008ec:	68bc      	ldr	r4, [r7, #8]
d00008ee:	e793      	b.n	d0000818 <setvbuf+0x24>
d00008f0:	4b22      	ldr	r3, [pc, #136]	; (d000097c <setvbuf+0x188>)
d00008f2:	429c      	cmp	r4, r3
d00008f4:	bf08      	it	eq
d00008f6:	68fc      	ldreq	r4, [r7, #12]
d00008f8:	e78e      	b.n	d0000818 <setvbuf+0x24>
d00008fa:	2e00      	cmp	r6, #0
d00008fc:	d0cd      	beq.n	d000089a <setvbuf+0xa6>
d00008fe:	69bb      	ldr	r3, [r7, #24]
d0000900:	b913      	cbnz	r3, d0000908 <setvbuf+0x114>
d0000902:	4638      	mov	r0, r7
d0000904:	f000 f956 	bl	d0000bb4 <__sinit>
d0000908:	f1b8 0f01 	cmp.w	r8, #1
d000090c:	bf08      	it	eq
d000090e:	89a3      	ldrheq	r3, [r4, #12]
d0000910:	6026      	str	r6, [r4, #0]
d0000912:	bf04      	itt	eq
d0000914:	f043 0301 	orreq.w	r3, r3, #1
d0000918:	81a3      	strheq	r3, [r4, #12]
d000091a:	89a2      	ldrh	r2, [r4, #12]
d000091c:	f012 0308 	ands.w	r3, r2, #8
d0000920:	e9c4 6504 	strd	r6, r5, [r4, #16]
d0000924:	d01c      	beq.n	d0000960 <setvbuf+0x16c>
d0000926:	07d3      	lsls	r3, r2, #31
d0000928:	bf41      	itttt	mi
d000092a:	2300      	movmi	r3, #0
d000092c:	426d      	negmi	r5, r5
d000092e:	60a3      	strmi	r3, [r4, #8]
d0000930:	61a5      	strmi	r5, [r4, #24]
d0000932:	bf58      	it	pl
d0000934:	60a5      	strpl	r5, [r4, #8]
d0000936:	6e65      	ldr	r5, [r4, #100]	; 0x64
d0000938:	f015 0501 	ands.w	r5, r5, #1
d000093c:	d115      	bne.n	d000096a <setvbuf+0x176>
d000093e:	f412 7f00 	tst.w	r2, #512	; 0x200
d0000942:	e7c8      	b.n	d00008d6 <setvbuf+0xe2>
d0000944:	4648      	mov	r0, r9
d0000946:	f000 f9f9 	bl	d0000d3c <malloc>
d000094a:	4606      	mov	r6, r0
d000094c:	2800      	cmp	r0, #0
d000094e:	d0ae      	beq.n	d00008ae <setvbuf+0xba>
d0000950:	464d      	mov	r5, r9
d0000952:	89a3      	ldrh	r3, [r4, #12]
d0000954:	f043 0380 	orr.w	r3, r3, #128	; 0x80
d0000958:	81a3      	strh	r3, [r4, #12]
d000095a:	e7d0      	b.n	d00008fe <setvbuf+0x10a>
d000095c:	2500      	movs	r5, #0
d000095e:	e7a8      	b.n	d00008b2 <setvbuf+0xbe>
d0000960:	60a3      	str	r3, [r4, #8]
d0000962:	e7e8      	b.n	d0000936 <setvbuf+0x142>
d0000964:	f04f 35ff 	mov.w	r5, #4294967295	; 0xffffffff
d0000968:	e7b9      	b.n	d00008de <setvbuf+0xea>
d000096a:	2500      	movs	r5, #0
d000096c:	e7b7      	b.n	d00008de <setvbuf+0xea>
d000096e:	bf00      	nop
d0000970:	d000107c 	.word	0xd000107c
d0000974:	d0001034 	.word	0xd0001034
d0000978:	d0001054 	.word	0xd0001054
d000097c:	d0001014 	.word	0xd0001014

d0000980 <__sflush_r>:
d0000980:	898a      	ldrh	r2, [r1, #12]
d0000982:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
d0000986:	4605      	mov	r5, r0
d0000988:	0710      	lsls	r0, r2, #28
d000098a:	460c      	mov	r4, r1
d000098c:	d458      	bmi.n	d0000a40 <__sflush_r+0xc0>
d000098e:	684b      	ldr	r3, [r1, #4]
d0000990:	2b00      	cmp	r3, #0
d0000992:	dc05      	bgt.n	d00009a0 <__sflush_r+0x20>
d0000994:	6c0b      	ldr	r3, [r1, #64]	; 0x40
d0000996:	2b00      	cmp	r3, #0
d0000998:	dc02      	bgt.n	d00009a0 <__sflush_r+0x20>
d000099a:	2000      	movs	r0, #0
d000099c:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
d00009a0:	6ae6      	ldr	r6, [r4, #44]	; 0x2c
d00009a2:	2e00      	cmp	r6, #0
d00009a4:	d0f9      	beq.n	d000099a <__sflush_r+0x1a>
d00009a6:	2300      	movs	r3, #0
d00009a8:	f412 5280 	ands.w	r2, r2, #4096	; 0x1000
d00009ac:	682f      	ldr	r7, [r5, #0]
d00009ae:	602b      	str	r3, [r5, #0]
d00009b0:	d032      	beq.n	d0000a18 <__sflush_r+0x98>
d00009b2:	6d60      	ldr	r0, [r4, #84]	; 0x54
d00009b4:	89a3      	ldrh	r3, [r4, #12]
d00009b6:	075a      	lsls	r2, r3, #29
d00009b8:	d505      	bpl.n	d00009c6 <__sflush_r+0x46>
d00009ba:	6863      	ldr	r3, [r4, #4]
d00009bc:	1ac0      	subs	r0, r0, r3
d00009be:	6b63      	ldr	r3, [r4, #52]	; 0x34
d00009c0:	b10b      	cbz	r3, d00009c6 <__sflush_r+0x46>
d00009c2:	6c23      	ldr	r3, [r4, #64]	; 0x40
d00009c4:	1ac0      	subs	r0, r0, r3
d00009c6:	2300      	movs	r3, #0
d00009c8:	4602      	mov	r2, r0
d00009ca:	6ae6      	ldr	r6, [r4, #44]	; 0x2c
d00009cc:	6a21      	ldr	r1, [r4, #32]
d00009ce:	4628      	mov	r0, r5
d00009d0:	47b0      	blx	r6
d00009d2:	1c43      	adds	r3, r0, #1
d00009d4:	89a3      	ldrh	r3, [r4, #12]
d00009d6:	d106      	bne.n	d00009e6 <__sflush_r+0x66>
d00009d8:	6829      	ldr	r1, [r5, #0]
d00009da:	291d      	cmp	r1, #29
d00009dc:	d82c      	bhi.n	d0000a38 <__sflush_r+0xb8>
d00009de:	4a2a      	ldr	r2, [pc, #168]	; (d0000a88 <__sflush_r+0x108>)
d00009e0:	40ca      	lsrs	r2, r1
d00009e2:	07d6      	lsls	r6, r2, #31
d00009e4:	d528      	bpl.n	d0000a38 <__sflush_r+0xb8>
d00009e6:	2200      	movs	r2, #0
d00009e8:	6062      	str	r2, [r4, #4]
d00009ea:	04d9      	lsls	r1, r3, #19
d00009ec:	6922      	ldr	r2, [r4, #16]
d00009ee:	6022      	str	r2, [r4, #0]
d00009f0:	d504      	bpl.n	d00009fc <__sflush_r+0x7c>
d00009f2:	1c42      	adds	r2, r0, #1
d00009f4:	d101      	bne.n	d00009fa <__sflush_r+0x7a>
d00009f6:	682b      	ldr	r3, [r5, #0]
d00009f8:	b903      	cbnz	r3, d00009fc <__sflush_r+0x7c>
d00009fa:	6560      	str	r0, [r4, #84]	; 0x54
d00009fc:	6b61      	ldr	r1, [r4, #52]	; 0x34
d00009fe:	602f      	str	r7, [r5, #0]
d0000a00:	2900      	cmp	r1, #0
d0000a02:	d0ca      	beq.n	d000099a <__sflush_r+0x1a>
d0000a04:	f104 0344 	add.w	r3, r4, #68	; 0x44
d0000a08:	4299      	cmp	r1, r3
d0000a0a:	d002      	beq.n	d0000a12 <__sflush_r+0x92>
d0000a0c:	4628      	mov	r0, r5
d0000a0e:	f000 f99d 	bl	d0000d4c <_free_r>
d0000a12:	2000      	movs	r0, #0
d0000a14:	6360      	str	r0, [r4, #52]	; 0x34
d0000a16:	e7c1      	b.n	d000099c <__sflush_r+0x1c>
d0000a18:	6a21      	ldr	r1, [r4, #32]
d0000a1a:	2301      	movs	r3, #1
d0000a1c:	4628      	mov	r0, r5
d0000a1e:	47b0      	blx	r6
d0000a20:	1c41      	adds	r1, r0, #1
d0000a22:	d1c7      	bne.n	d00009b4 <__sflush_r+0x34>
d0000a24:	682b      	ldr	r3, [r5, #0]
d0000a26:	2b00      	cmp	r3, #0
d0000a28:	d0c4      	beq.n	d00009b4 <__sflush_r+0x34>
d0000a2a:	2b1d      	cmp	r3, #29
d0000a2c:	d001      	beq.n	d0000a32 <__sflush_r+0xb2>
d0000a2e:	2b16      	cmp	r3, #22
d0000a30:	d101      	bne.n	d0000a36 <__sflush_r+0xb6>
d0000a32:	602f      	str	r7, [r5, #0]
d0000a34:	e7b1      	b.n	d000099a <__sflush_r+0x1a>
d0000a36:	89a3      	ldrh	r3, [r4, #12]
d0000a38:	f043 0340 	orr.w	r3, r3, #64	; 0x40
d0000a3c:	81a3      	strh	r3, [r4, #12]
d0000a3e:	e7ad      	b.n	d000099c <__sflush_r+0x1c>
d0000a40:	690f      	ldr	r7, [r1, #16]
d0000a42:	2f00      	cmp	r7, #0
d0000a44:	d0a9      	beq.n	d000099a <__sflush_r+0x1a>
d0000a46:	0793      	lsls	r3, r2, #30
d0000a48:	680e      	ldr	r6, [r1, #0]
d0000a4a:	bf08      	it	eq
d0000a4c:	694b      	ldreq	r3, [r1, #20]
d0000a4e:	600f      	str	r7, [r1, #0]
d0000a50:	bf18      	it	ne
d0000a52:	2300      	movne	r3, #0
d0000a54:	eba6 0807 	sub.w	r8, r6, r7
d0000a58:	608b      	str	r3, [r1, #8]
d0000a5a:	f1b8 0f00 	cmp.w	r8, #0
d0000a5e:	dd9c      	ble.n	d000099a <__sflush_r+0x1a>
d0000a60:	6a21      	ldr	r1, [r4, #32]
d0000a62:	6aa6      	ldr	r6, [r4, #40]	; 0x28
d0000a64:	4643      	mov	r3, r8
d0000a66:	463a      	mov	r2, r7
d0000a68:	4628      	mov	r0, r5
d0000a6a:	47b0      	blx	r6
d0000a6c:	2800      	cmp	r0, #0
d0000a6e:	dc06      	bgt.n	d0000a7e <__sflush_r+0xfe>
d0000a70:	89a3      	ldrh	r3, [r4, #12]
d0000a72:	f043 0340 	orr.w	r3, r3, #64	; 0x40
d0000a76:	81a3      	strh	r3, [r4, #12]
d0000a78:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d0000a7c:	e78e      	b.n	d000099c <__sflush_r+0x1c>
d0000a7e:	4407      	add	r7, r0
d0000a80:	eba8 0800 	sub.w	r8, r8, r0
d0000a84:	e7e9      	b.n	d0000a5a <__sflush_r+0xda>
d0000a86:	bf00      	nop
d0000a88:	20400001 	.word	0x20400001

d0000a8c <_fflush_r>:
d0000a8c:	b538      	push	{r3, r4, r5, lr}
d0000a8e:	690b      	ldr	r3, [r1, #16]
d0000a90:	4605      	mov	r5, r0
d0000a92:	460c      	mov	r4, r1
d0000a94:	b913      	cbnz	r3, d0000a9c <_fflush_r+0x10>
d0000a96:	2500      	movs	r5, #0
d0000a98:	4628      	mov	r0, r5
d0000a9a:	bd38      	pop	{r3, r4, r5, pc}
d0000a9c:	b118      	cbz	r0, d0000aa6 <_fflush_r+0x1a>
d0000a9e:	6983      	ldr	r3, [r0, #24]
d0000aa0:	b90b      	cbnz	r3, d0000aa6 <_fflush_r+0x1a>
d0000aa2:	f000 f887 	bl	d0000bb4 <__sinit>
d0000aa6:	4b14      	ldr	r3, [pc, #80]	; (d0000af8 <_fflush_r+0x6c>)
d0000aa8:	429c      	cmp	r4, r3
d0000aaa:	d11b      	bne.n	d0000ae4 <_fflush_r+0x58>
d0000aac:	686c      	ldr	r4, [r5, #4]
d0000aae:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
d0000ab2:	2b00      	cmp	r3, #0
d0000ab4:	d0ef      	beq.n	d0000a96 <_fflush_r+0xa>
d0000ab6:	6e62      	ldr	r2, [r4, #100]	; 0x64
d0000ab8:	07d0      	lsls	r0, r2, #31
d0000aba:	d404      	bmi.n	d0000ac6 <_fflush_r+0x3a>
d0000abc:	0599      	lsls	r1, r3, #22
d0000abe:	d402      	bmi.n	d0000ac6 <_fflush_r+0x3a>
d0000ac0:	6da0      	ldr	r0, [r4, #88]	; 0x58
d0000ac2:	f000 f915 	bl	d0000cf0 <__retarget_lock_acquire_recursive>
d0000ac6:	4628      	mov	r0, r5
d0000ac8:	4621      	mov	r1, r4
d0000aca:	f7ff ff59 	bl	d0000980 <__sflush_r>
d0000ace:	6e63      	ldr	r3, [r4, #100]	; 0x64
d0000ad0:	07da      	lsls	r2, r3, #31
d0000ad2:	4605      	mov	r5, r0
d0000ad4:	d4e0      	bmi.n	d0000a98 <_fflush_r+0xc>
d0000ad6:	89a3      	ldrh	r3, [r4, #12]
d0000ad8:	059b      	lsls	r3, r3, #22
d0000ada:	d4dd      	bmi.n	d0000a98 <_fflush_r+0xc>
d0000adc:	6da0      	ldr	r0, [r4, #88]	; 0x58
d0000ade:	f000 f908 	bl	d0000cf2 <__retarget_lock_release_recursive>
d0000ae2:	e7d9      	b.n	d0000a98 <_fflush_r+0xc>
d0000ae4:	4b05      	ldr	r3, [pc, #20]	; (d0000afc <_fflush_r+0x70>)
d0000ae6:	429c      	cmp	r4, r3
d0000ae8:	d101      	bne.n	d0000aee <_fflush_r+0x62>
d0000aea:	68ac      	ldr	r4, [r5, #8]
d0000aec:	e7df      	b.n	d0000aae <_fflush_r+0x22>
d0000aee:	4b04      	ldr	r3, [pc, #16]	; (d0000b00 <_fflush_r+0x74>)
d0000af0:	429c      	cmp	r4, r3
d0000af2:	bf08      	it	eq
d0000af4:	68ec      	ldreq	r4, [r5, #12]
d0000af6:	e7da      	b.n	d0000aae <_fflush_r+0x22>
d0000af8:	d0001034 	.word	0xd0001034
d0000afc:	d0001054 	.word	0xd0001054
d0000b00:	d0001014 	.word	0xd0001014

d0000b04 <std>:
d0000b04:	2300      	movs	r3, #0
d0000b06:	b510      	push	{r4, lr}
d0000b08:	4604      	mov	r4, r0
d0000b0a:	e9c0 3300 	strd	r3, r3, [r0]
d0000b0e:	e9c0 3304 	strd	r3, r3, [r0, #16]
d0000b12:	6083      	str	r3, [r0, #8]
d0000b14:	8181      	strh	r1, [r0, #12]
d0000b16:	6643      	str	r3, [r0, #100]	; 0x64
d0000b18:	81c2      	strh	r2, [r0, #14]
d0000b1a:	6183      	str	r3, [r0, #24]
d0000b1c:	4619      	mov	r1, r3
d0000b1e:	2208      	movs	r2, #8
d0000b20:	305c      	adds	r0, #92	; 0x5c
d0000b22:	f7ff fa8b 	bl	d000003c <memset>
d0000b26:	4b05      	ldr	r3, [pc, #20]	; (d0000b3c <std+0x38>)
d0000b28:	6263      	str	r3, [r4, #36]	; 0x24
d0000b2a:	4b05      	ldr	r3, [pc, #20]	; (d0000b40 <std+0x3c>)
d0000b2c:	62a3      	str	r3, [r4, #40]	; 0x28
d0000b2e:	4b05      	ldr	r3, [pc, #20]	; (d0000b44 <std+0x40>)
d0000b30:	62e3      	str	r3, [r4, #44]	; 0x2c
d0000b32:	4b05      	ldr	r3, [pc, #20]	; (d0000b48 <std+0x44>)
d0000b34:	6224      	str	r4, [r4, #32]
d0000b36:	6323      	str	r3, [r4, #48]	; 0x30
d0000b38:	bd10      	pop	{r4, pc}
d0000b3a:	bf00      	nop
d0000b3c:	d0000ea1 	.word	0xd0000ea1
d0000b40:	d0000ec3 	.word	0xd0000ec3
d0000b44:	d0000efb 	.word	0xd0000efb
d0000b48:	d0000f1f 	.word	0xd0000f1f

d0000b4c <_cleanup_r>:
d0000b4c:	4901      	ldr	r1, [pc, #4]	; (d0000b54 <_cleanup_r+0x8>)
d0000b4e:	f000 b8af 	b.w	d0000cb0 <_fwalk_reent>
d0000b52:	bf00      	nop
d0000b54:	d0000a8d 	.word	0xd0000a8d

d0000b58 <__sfmoreglue>:
d0000b58:	b570      	push	{r4, r5, r6, lr}
d0000b5a:	1e4a      	subs	r2, r1, #1
d0000b5c:	2568      	movs	r5, #104	; 0x68
d0000b5e:	4355      	muls	r5, r2
d0000b60:	460e      	mov	r6, r1
d0000b62:	f105 0174 	add.w	r1, r5, #116	; 0x74
d0000b66:	f000 f941 	bl	d0000dec <_malloc_r>
d0000b6a:	4604      	mov	r4, r0
d0000b6c:	b140      	cbz	r0, d0000b80 <__sfmoreglue+0x28>
d0000b6e:	2100      	movs	r1, #0
d0000b70:	e9c0 1600 	strd	r1, r6, [r0]
d0000b74:	300c      	adds	r0, #12
d0000b76:	60a0      	str	r0, [r4, #8]
d0000b78:	f105 0268 	add.w	r2, r5, #104	; 0x68
d0000b7c:	f7ff fa5e 	bl	d000003c <memset>
d0000b80:	4620      	mov	r0, r4
d0000b82:	bd70      	pop	{r4, r5, r6, pc}

d0000b84 <__sfp_lock_acquire>:
d0000b84:	4801      	ldr	r0, [pc, #4]	; (d0000b8c <__sfp_lock_acquire+0x8>)
d0000b86:	f000 b8b3 	b.w	d0000cf0 <__retarget_lock_acquire_recursive>
d0000b8a:	bf00      	nop
d0000b8c:	d0002038 	.word	0xd0002038

d0000b90 <__sfp_lock_release>:
d0000b90:	4801      	ldr	r0, [pc, #4]	; (d0000b98 <__sfp_lock_release+0x8>)
d0000b92:	f000 b8ae 	b.w	d0000cf2 <__retarget_lock_release_recursive>
d0000b96:	bf00      	nop
d0000b98:	d0002038 	.word	0xd0002038

d0000b9c <__sinit_lock_acquire>:
d0000b9c:	4801      	ldr	r0, [pc, #4]	; (d0000ba4 <__sinit_lock_acquire+0x8>)
d0000b9e:	f000 b8a7 	b.w	d0000cf0 <__retarget_lock_acquire_recursive>
d0000ba2:	bf00      	nop
d0000ba4:	d0002033 	.word	0xd0002033

d0000ba8 <__sinit_lock_release>:
d0000ba8:	4801      	ldr	r0, [pc, #4]	; (d0000bb0 <__sinit_lock_release+0x8>)
d0000baa:	f000 b8a2 	b.w	d0000cf2 <__retarget_lock_release_recursive>
d0000bae:	bf00      	nop
d0000bb0:	d0002033 	.word	0xd0002033

d0000bb4 <__sinit>:
d0000bb4:	b510      	push	{r4, lr}
d0000bb6:	4604      	mov	r4, r0
d0000bb8:	f7ff fff0 	bl	d0000b9c <__sinit_lock_acquire>
d0000bbc:	69a3      	ldr	r3, [r4, #24]
d0000bbe:	b11b      	cbz	r3, d0000bc8 <__sinit+0x14>
d0000bc0:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
d0000bc4:	f7ff bff0 	b.w	d0000ba8 <__sinit_lock_release>
d0000bc8:	e9c4 3312 	strd	r3, r3, [r4, #72]	; 0x48
d0000bcc:	6523      	str	r3, [r4, #80]	; 0x50
d0000bce:	4b13      	ldr	r3, [pc, #76]	; (d0000c1c <__sinit+0x68>)
d0000bd0:	4a13      	ldr	r2, [pc, #76]	; (d0000c20 <__sinit+0x6c>)
d0000bd2:	681b      	ldr	r3, [r3, #0]
d0000bd4:	62a2      	str	r2, [r4, #40]	; 0x28
d0000bd6:	42a3      	cmp	r3, r4
d0000bd8:	bf04      	itt	eq
d0000bda:	2301      	moveq	r3, #1
d0000bdc:	61a3      	streq	r3, [r4, #24]
d0000bde:	4620      	mov	r0, r4
d0000be0:	f000 f820 	bl	d0000c24 <__sfp>
d0000be4:	6060      	str	r0, [r4, #4]
d0000be6:	4620      	mov	r0, r4
d0000be8:	f000 f81c 	bl	d0000c24 <__sfp>
d0000bec:	60a0      	str	r0, [r4, #8]
d0000bee:	4620      	mov	r0, r4
d0000bf0:	f000 f818 	bl	d0000c24 <__sfp>
d0000bf4:	2200      	movs	r2, #0
d0000bf6:	60e0      	str	r0, [r4, #12]
d0000bf8:	2104      	movs	r1, #4
d0000bfa:	6860      	ldr	r0, [r4, #4]
d0000bfc:	f7ff ff82 	bl	d0000b04 <std>
d0000c00:	68a0      	ldr	r0, [r4, #8]
d0000c02:	2201      	movs	r2, #1
d0000c04:	2109      	movs	r1, #9
d0000c06:	f7ff ff7d 	bl	d0000b04 <std>
d0000c0a:	68e0      	ldr	r0, [r4, #12]
d0000c0c:	2202      	movs	r2, #2
d0000c0e:	2112      	movs	r1, #18
d0000c10:	f7ff ff78 	bl	d0000b04 <std>
d0000c14:	2301      	movs	r3, #1
d0000c16:	61a3      	str	r3, [r4, #24]
d0000c18:	e7d2      	b.n	d0000bc0 <__sinit+0xc>
d0000c1a:	bf00      	nop
d0000c1c:	d0000fcc 	.word	0xd0000fcc
d0000c20:	d0000b4d 	.word	0xd0000b4d

d0000c24 <__sfp>:
d0000c24:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d0000c26:	4607      	mov	r7, r0
d0000c28:	f7ff ffac 	bl	d0000b84 <__sfp_lock_acquire>
d0000c2c:	4b1e      	ldr	r3, [pc, #120]	; (d0000ca8 <__sfp+0x84>)
d0000c2e:	681e      	ldr	r6, [r3, #0]
d0000c30:	69b3      	ldr	r3, [r6, #24]
d0000c32:	b913      	cbnz	r3, d0000c3a <__sfp+0x16>
d0000c34:	4630      	mov	r0, r6
d0000c36:	f7ff ffbd 	bl	d0000bb4 <__sinit>
d0000c3a:	3648      	adds	r6, #72	; 0x48
d0000c3c:	e9d6 3401 	ldrd	r3, r4, [r6, #4]
d0000c40:	3b01      	subs	r3, #1
d0000c42:	d503      	bpl.n	d0000c4c <__sfp+0x28>
d0000c44:	6833      	ldr	r3, [r6, #0]
d0000c46:	b30b      	cbz	r3, d0000c8c <__sfp+0x68>
d0000c48:	6836      	ldr	r6, [r6, #0]
d0000c4a:	e7f7      	b.n	d0000c3c <__sfp+0x18>
d0000c4c:	f9b4 500c 	ldrsh.w	r5, [r4, #12]
d0000c50:	b9d5      	cbnz	r5, d0000c88 <__sfp+0x64>
d0000c52:	4b16      	ldr	r3, [pc, #88]	; (d0000cac <__sfp+0x88>)
d0000c54:	60e3      	str	r3, [r4, #12]
d0000c56:	f104 0058 	add.w	r0, r4, #88	; 0x58
d0000c5a:	6665      	str	r5, [r4, #100]	; 0x64
d0000c5c:	f000 f847 	bl	d0000cee <__retarget_lock_init_recursive>
d0000c60:	f7ff ff96 	bl	d0000b90 <__sfp_lock_release>
d0000c64:	e9c4 5501 	strd	r5, r5, [r4, #4]
d0000c68:	e9c4 5504 	strd	r5, r5, [r4, #16]
d0000c6c:	6025      	str	r5, [r4, #0]
d0000c6e:	61a5      	str	r5, [r4, #24]
d0000c70:	2208      	movs	r2, #8
d0000c72:	4629      	mov	r1, r5
d0000c74:	f104 005c 	add.w	r0, r4, #92	; 0x5c
d0000c78:	f7ff f9e0 	bl	d000003c <memset>
d0000c7c:	e9c4 550d 	strd	r5, r5, [r4, #52]	; 0x34
d0000c80:	e9c4 5512 	strd	r5, r5, [r4, #72]	; 0x48
d0000c84:	4620      	mov	r0, r4
d0000c86:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d0000c88:	3468      	adds	r4, #104	; 0x68
d0000c8a:	e7d9      	b.n	d0000c40 <__sfp+0x1c>
d0000c8c:	2104      	movs	r1, #4
d0000c8e:	4638      	mov	r0, r7
d0000c90:	f7ff ff62 	bl	d0000b58 <__sfmoreglue>
d0000c94:	4604      	mov	r4, r0
d0000c96:	6030      	str	r0, [r6, #0]
d0000c98:	2800      	cmp	r0, #0
d0000c9a:	d1d5      	bne.n	d0000c48 <__sfp+0x24>
d0000c9c:	f7ff ff78 	bl	d0000b90 <__sfp_lock_release>
d0000ca0:	230c      	movs	r3, #12
d0000ca2:	603b      	str	r3, [r7, #0]
d0000ca4:	e7ee      	b.n	d0000c84 <__sfp+0x60>
d0000ca6:	bf00      	nop
d0000ca8:	d0000fcc 	.word	0xd0000fcc
d0000cac:	ffff0001 	.word	0xffff0001

d0000cb0 <_fwalk_reent>:
d0000cb0:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
d0000cb4:	4606      	mov	r6, r0
d0000cb6:	4688      	mov	r8, r1
d0000cb8:	f100 0448 	add.w	r4, r0, #72	; 0x48
d0000cbc:	2700      	movs	r7, #0
d0000cbe:	e9d4 9501 	ldrd	r9, r5, [r4, #4]
d0000cc2:	f1b9 0901 	subs.w	r9, r9, #1
d0000cc6:	d505      	bpl.n	d0000cd4 <_fwalk_reent+0x24>
d0000cc8:	6824      	ldr	r4, [r4, #0]
d0000cca:	2c00      	cmp	r4, #0
d0000ccc:	d1f7      	bne.n	d0000cbe <_fwalk_reent+0xe>
d0000cce:	4638      	mov	r0, r7
d0000cd0:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
d0000cd4:	89ab      	ldrh	r3, [r5, #12]
d0000cd6:	2b01      	cmp	r3, #1
d0000cd8:	d907      	bls.n	d0000cea <_fwalk_reent+0x3a>
d0000cda:	f9b5 300e 	ldrsh.w	r3, [r5, #14]
d0000cde:	3301      	adds	r3, #1
d0000ce0:	d003      	beq.n	d0000cea <_fwalk_reent+0x3a>
d0000ce2:	4629      	mov	r1, r5
d0000ce4:	4630      	mov	r0, r6
d0000ce6:	47c0      	blx	r8
d0000ce8:	4307      	orrs	r7, r0
d0000cea:	3568      	adds	r5, #104	; 0x68
d0000cec:	e7e9      	b.n	d0000cc2 <_fwalk_reent+0x12>

d0000cee <__retarget_lock_init_recursive>:
d0000cee:	4770      	bx	lr

d0000cf0 <__retarget_lock_acquire_recursive>:
d0000cf0:	4770      	bx	lr

d0000cf2 <__retarget_lock_release_recursive>:
d0000cf2:	4770      	bx	lr

d0000cf4 <__swhatbuf_r>:
d0000cf4:	b570      	push	{r4, r5, r6, lr}
d0000cf6:	460e      	mov	r6, r1
d0000cf8:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d0000cfc:	2900      	cmp	r1, #0
d0000cfe:	b096      	sub	sp, #88	; 0x58
d0000d00:	4614      	mov	r4, r2
d0000d02:	461d      	mov	r5, r3
d0000d04:	da07      	bge.n	d0000d16 <__swhatbuf_r+0x22>
d0000d06:	2300      	movs	r3, #0
d0000d08:	602b      	str	r3, [r5, #0]
d0000d0a:	89b3      	ldrh	r3, [r6, #12]
d0000d0c:	061a      	lsls	r2, r3, #24
d0000d0e:	d410      	bmi.n	d0000d32 <__swhatbuf_r+0x3e>
d0000d10:	f44f 6380 	mov.w	r3, #1024	; 0x400
d0000d14:	e00e      	b.n	d0000d34 <__swhatbuf_r+0x40>
d0000d16:	466a      	mov	r2, sp
d0000d18:	f000 f916 	bl	d0000f48 <_fstat_r>
d0000d1c:	2800      	cmp	r0, #0
d0000d1e:	dbf2      	blt.n	d0000d06 <__swhatbuf_r+0x12>
d0000d20:	9a01      	ldr	r2, [sp, #4]
d0000d22:	f402 4270 	and.w	r2, r2, #61440	; 0xf000
d0000d26:	f5a2 5300 	sub.w	r3, r2, #8192	; 0x2000
d0000d2a:	425a      	negs	r2, r3
d0000d2c:	415a      	adcs	r2, r3
d0000d2e:	602a      	str	r2, [r5, #0]
d0000d30:	e7ee      	b.n	d0000d10 <__swhatbuf_r+0x1c>
d0000d32:	2340      	movs	r3, #64	; 0x40
d0000d34:	2000      	movs	r0, #0
d0000d36:	6023      	str	r3, [r4, #0]
d0000d38:	b016      	add	sp, #88	; 0x58
d0000d3a:	bd70      	pop	{r4, r5, r6, pc}

d0000d3c <malloc>:
d0000d3c:	4b02      	ldr	r3, [pc, #8]	; (d0000d48 <malloc+0xc>)
d0000d3e:	4601      	mov	r1, r0
d0000d40:	6818      	ldr	r0, [r3, #0]
d0000d42:	f000 b853 	b.w	d0000dec <_malloc_r>
d0000d46:	bf00      	nop
d0000d48:	d000107c 	.word	0xd000107c

d0000d4c <_free_r>:
d0000d4c:	b537      	push	{r0, r1, r2, r4, r5, lr}
d0000d4e:	2900      	cmp	r1, #0
d0000d50:	d048      	beq.n	d0000de4 <_free_r+0x98>
d0000d52:	f851 3c04 	ldr.w	r3, [r1, #-4]
d0000d56:	9001      	str	r0, [sp, #4]
d0000d58:	2b00      	cmp	r3, #0
d0000d5a:	f1a1 0404 	sub.w	r4, r1, #4
d0000d5e:	bfb8      	it	lt
d0000d60:	18e4      	addlt	r4, r4, r3
d0000d62:	f000 f915 	bl	d0000f90 <__malloc_lock>
d0000d66:	4a20      	ldr	r2, [pc, #128]	; (d0000de8 <_free_r+0x9c>)
d0000d68:	9801      	ldr	r0, [sp, #4]
d0000d6a:	6813      	ldr	r3, [r2, #0]
d0000d6c:	4615      	mov	r5, r2
d0000d6e:	b933      	cbnz	r3, d0000d7e <_free_r+0x32>
d0000d70:	6063      	str	r3, [r4, #4]
d0000d72:	6014      	str	r4, [r2, #0]
d0000d74:	b003      	add	sp, #12
d0000d76:	e8bd 4030 	ldmia.w	sp!, {r4, r5, lr}
d0000d7a:	f000 b90f 	b.w	d0000f9c <__malloc_unlock>
d0000d7e:	42a3      	cmp	r3, r4
d0000d80:	d90b      	bls.n	d0000d9a <_free_r+0x4e>
d0000d82:	6821      	ldr	r1, [r4, #0]
d0000d84:	1862      	adds	r2, r4, r1
d0000d86:	4293      	cmp	r3, r2
d0000d88:	bf04      	itt	eq
d0000d8a:	681a      	ldreq	r2, [r3, #0]
d0000d8c:	685b      	ldreq	r3, [r3, #4]
d0000d8e:	6063      	str	r3, [r4, #4]
d0000d90:	bf04      	itt	eq
d0000d92:	1852      	addeq	r2, r2, r1
d0000d94:	6022      	streq	r2, [r4, #0]
d0000d96:	602c      	str	r4, [r5, #0]
d0000d98:	e7ec      	b.n	d0000d74 <_free_r+0x28>
d0000d9a:	461a      	mov	r2, r3
d0000d9c:	685b      	ldr	r3, [r3, #4]
d0000d9e:	b10b      	cbz	r3, d0000da4 <_free_r+0x58>
d0000da0:	42a3      	cmp	r3, r4
d0000da2:	d9fa      	bls.n	d0000d9a <_free_r+0x4e>
d0000da4:	6811      	ldr	r1, [r2, #0]
d0000da6:	1855      	adds	r5, r2, r1
d0000da8:	42a5      	cmp	r5, r4
d0000daa:	d10b      	bne.n	d0000dc4 <_free_r+0x78>
d0000dac:	6824      	ldr	r4, [r4, #0]
d0000dae:	4421      	add	r1, r4
d0000db0:	1854      	adds	r4, r2, r1
d0000db2:	42a3      	cmp	r3, r4
d0000db4:	6011      	str	r1, [r2, #0]
d0000db6:	d1dd      	bne.n	d0000d74 <_free_r+0x28>
d0000db8:	681c      	ldr	r4, [r3, #0]
d0000dba:	685b      	ldr	r3, [r3, #4]
d0000dbc:	6053      	str	r3, [r2, #4]
d0000dbe:	4421      	add	r1, r4
d0000dc0:	6011      	str	r1, [r2, #0]
d0000dc2:	e7d7      	b.n	d0000d74 <_free_r+0x28>
d0000dc4:	d902      	bls.n	d0000dcc <_free_r+0x80>
d0000dc6:	230c      	movs	r3, #12
d0000dc8:	6003      	str	r3, [r0, #0]
d0000dca:	e7d3      	b.n	d0000d74 <_free_r+0x28>
d0000dcc:	6825      	ldr	r5, [r4, #0]
d0000dce:	1961      	adds	r1, r4, r5
d0000dd0:	428b      	cmp	r3, r1
d0000dd2:	bf04      	itt	eq
d0000dd4:	6819      	ldreq	r1, [r3, #0]
d0000dd6:	685b      	ldreq	r3, [r3, #4]
d0000dd8:	6063      	str	r3, [r4, #4]
d0000dda:	bf04      	itt	eq
d0000ddc:	1949      	addeq	r1, r1, r5
d0000dde:	6021      	streq	r1, [r4, #0]
d0000de0:	6054      	str	r4, [r2, #4]
d0000de2:	e7c7      	b.n	d0000d74 <_free_r+0x28>
d0000de4:	b003      	add	sp, #12
d0000de6:	bd30      	pop	{r4, r5, pc}
d0000de8:	d0002020 	.word	0xd0002020

d0000dec <_malloc_r>:
d0000dec:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d0000dee:	1ccd      	adds	r5, r1, #3
d0000df0:	f025 0503 	bic.w	r5, r5, #3
d0000df4:	3508      	adds	r5, #8
d0000df6:	2d0c      	cmp	r5, #12
d0000df8:	bf38      	it	cc
d0000dfa:	250c      	movcc	r5, #12
d0000dfc:	2d00      	cmp	r5, #0
d0000dfe:	4606      	mov	r6, r0
d0000e00:	db01      	blt.n	d0000e06 <_malloc_r+0x1a>
d0000e02:	42a9      	cmp	r1, r5
d0000e04:	d903      	bls.n	d0000e0e <_malloc_r+0x22>
d0000e06:	230c      	movs	r3, #12
d0000e08:	6033      	str	r3, [r6, #0]
d0000e0a:	2000      	movs	r0, #0
d0000e0c:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d0000e0e:	f000 f8bf 	bl	d0000f90 <__malloc_lock>
d0000e12:	4921      	ldr	r1, [pc, #132]	; (d0000e98 <_malloc_r+0xac>)
d0000e14:	680a      	ldr	r2, [r1, #0]
d0000e16:	4614      	mov	r4, r2
d0000e18:	b99c      	cbnz	r4, d0000e42 <_malloc_r+0x56>
d0000e1a:	4f20      	ldr	r7, [pc, #128]	; (d0000e9c <_malloc_r+0xb0>)
d0000e1c:	683b      	ldr	r3, [r7, #0]
d0000e1e:	b923      	cbnz	r3, d0000e2a <_malloc_r+0x3e>
d0000e20:	4621      	mov	r1, r4
d0000e22:	4630      	mov	r0, r6
d0000e24:	f7ff f958 	bl	d00000d8 <_sbrk_r>
d0000e28:	6038      	str	r0, [r7, #0]
d0000e2a:	4629      	mov	r1, r5
d0000e2c:	4630      	mov	r0, r6
d0000e2e:	f7ff f953 	bl	d00000d8 <_sbrk_r>
d0000e32:	1c43      	adds	r3, r0, #1
d0000e34:	d123      	bne.n	d0000e7e <_malloc_r+0x92>
d0000e36:	230c      	movs	r3, #12
d0000e38:	6033      	str	r3, [r6, #0]
d0000e3a:	4630      	mov	r0, r6
d0000e3c:	f000 f8ae 	bl	d0000f9c <__malloc_unlock>
d0000e40:	e7e3      	b.n	d0000e0a <_malloc_r+0x1e>
d0000e42:	6823      	ldr	r3, [r4, #0]
d0000e44:	1b5b      	subs	r3, r3, r5
d0000e46:	d417      	bmi.n	d0000e78 <_malloc_r+0x8c>
d0000e48:	2b0b      	cmp	r3, #11
d0000e4a:	d903      	bls.n	d0000e54 <_malloc_r+0x68>
d0000e4c:	6023      	str	r3, [r4, #0]
d0000e4e:	441c      	add	r4, r3
d0000e50:	6025      	str	r5, [r4, #0]
d0000e52:	e004      	b.n	d0000e5e <_malloc_r+0x72>
d0000e54:	6863      	ldr	r3, [r4, #4]
d0000e56:	42a2      	cmp	r2, r4
d0000e58:	bf0c      	ite	eq
d0000e5a:	600b      	streq	r3, [r1, #0]
d0000e5c:	6053      	strne	r3, [r2, #4]
d0000e5e:	4630      	mov	r0, r6
d0000e60:	f000 f89c 	bl	d0000f9c <__malloc_unlock>
d0000e64:	f104 000b 	add.w	r0, r4, #11
d0000e68:	1d23      	adds	r3, r4, #4
d0000e6a:	f020 0007 	bic.w	r0, r0, #7
d0000e6e:	1ac2      	subs	r2, r0, r3
d0000e70:	d0cc      	beq.n	d0000e0c <_malloc_r+0x20>
d0000e72:	1a1b      	subs	r3, r3, r0
d0000e74:	50a3      	str	r3, [r4, r2]
d0000e76:	e7c9      	b.n	d0000e0c <_malloc_r+0x20>
d0000e78:	4622      	mov	r2, r4
d0000e7a:	6864      	ldr	r4, [r4, #4]
d0000e7c:	e7cc      	b.n	d0000e18 <_malloc_r+0x2c>
d0000e7e:	1cc4      	adds	r4, r0, #3
d0000e80:	f024 0403 	bic.w	r4, r4, #3
d0000e84:	42a0      	cmp	r0, r4
d0000e86:	d0e3      	beq.n	d0000e50 <_malloc_r+0x64>
d0000e88:	1a21      	subs	r1, r4, r0
d0000e8a:	4630      	mov	r0, r6
d0000e8c:	f7ff f924 	bl	d00000d8 <_sbrk_r>
d0000e90:	3001      	adds	r0, #1
d0000e92:	d1dd      	bne.n	d0000e50 <_malloc_r+0x64>
d0000e94:	e7cf      	b.n	d0000e36 <_malloc_r+0x4a>
d0000e96:	bf00      	nop
d0000e98:	d0002020 	.word	0xd0002020
d0000e9c:	d0002024 	.word	0xd0002024

d0000ea0 <__sread>:
d0000ea0:	b510      	push	{r4, lr}
d0000ea2:	460c      	mov	r4, r1
d0000ea4:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d0000ea8:	f000 f87e 	bl	d0000fa8 <_read_r>
d0000eac:	2800      	cmp	r0, #0
d0000eae:	bfab      	itete	ge
d0000eb0:	6d63      	ldrge	r3, [r4, #84]	; 0x54
d0000eb2:	89a3      	ldrhlt	r3, [r4, #12]
d0000eb4:	181b      	addge	r3, r3, r0
d0000eb6:	f423 5380 	biclt.w	r3, r3, #4096	; 0x1000
d0000eba:	bfac      	ite	ge
d0000ebc:	6563      	strge	r3, [r4, #84]	; 0x54
d0000ebe:	81a3      	strhlt	r3, [r4, #12]
d0000ec0:	bd10      	pop	{r4, pc}

d0000ec2 <__swrite>:
d0000ec2:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
d0000ec6:	461f      	mov	r7, r3
d0000ec8:	898b      	ldrh	r3, [r1, #12]
d0000eca:	05db      	lsls	r3, r3, #23
d0000ecc:	4605      	mov	r5, r0
d0000ece:	460c      	mov	r4, r1
d0000ed0:	4616      	mov	r6, r2
d0000ed2:	d505      	bpl.n	d0000ee0 <__swrite+0x1e>
d0000ed4:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d0000ed8:	2302      	movs	r3, #2
d0000eda:	2200      	movs	r2, #0
d0000edc:	f000 f846 	bl	d0000f6c <_lseek_r>
d0000ee0:	89a3      	ldrh	r3, [r4, #12]
d0000ee2:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
d0000ee6:	f423 5380 	bic.w	r3, r3, #4096	; 0x1000
d0000eea:	81a3      	strh	r3, [r4, #12]
d0000eec:	4632      	mov	r2, r6
d0000eee:	463b      	mov	r3, r7
d0000ef0:	4628      	mov	r0, r5
d0000ef2:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
d0000ef6:	f7ff b8a9 	b.w	d000004c <_write_r>

d0000efa <__sseek>:
d0000efa:	b510      	push	{r4, lr}
d0000efc:	460c      	mov	r4, r1
d0000efe:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d0000f02:	f000 f833 	bl	d0000f6c <_lseek_r>
d0000f06:	1c43      	adds	r3, r0, #1
d0000f08:	89a3      	ldrh	r3, [r4, #12]
d0000f0a:	bf15      	itete	ne
d0000f0c:	6560      	strne	r0, [r4, #84]	; 0x54
d0000f0e:	f423 5380 	biceq.w	r3, r3, #4096	; 0x1000
d0000f12:	f443 5380 	orrne.w	r3, r3, #4096	; 0x1000
d0000f16:	81a3      	strheq	r3, [r4, #12]
d0000f18:	bf18      	it	ne
d0000f1a:	81a3      	strhne	r3, [r4, #12]
d0000f1c:	bd10      	pop	{r4, pc}

d0000f1e <__sclose>:
d0000f1e:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d0000f22:	f000 b801 	b.w	d0000f28 <_close_r>
	...

d0000f28 <_close_r>:
d0000f28:	b538      	push	{r3, r4, r5, lr}
d0000f2a:	4d06      	ldr	r5, [pc, #24]	; (d0000f44 <_close_r+0x1c>)
d0000f2c:	2300      	movs	r3, #0
d0000f2e:	4604      	mov	r4, r0
d0000f30:	4608      	mov	r0, r1
d0000f32:	602b      	str	r3, [r5, #0]
d0000f34:	f7ff f8c4 	bl	d00000c0 <_close>
d0000f38:	1c43      	adds	r3, r0, #1
d0000f3a:	d102      	bne.n	d0000f42 <_close_r+0x1a>
d0000f3c:	682b      	ldr	r3, [r5, #0]
d0000f3e:	b103      	cbz	r3, d0000f42 <_close_r+0x1a>
d0000f40:	6023      	str	r3, [r4, #0]
d0000f42:	bd38      	pop	{r3, r4, r5, pc}
d0000f44:	d000203c 	.word	0xd000203c

d0000f48 <_fstat_r>:
d0000f48:	b538      	push	{r3, r4, r5, lr}
d0000f4a:	4d07      	ldr	r5, [pc, #28]	; (d0000f68 <_fstat_r+0x20>)
d0000f4c:	2300      	movs	r3, #0
d0000f4e:	4604      	mov	r4, r0
d0000f50:	4608      	mov	r0, r1
d0000f52:	4611      	mov	r1, r2
d0000f54:	602b      	str	r3, [r5, #0]
d0000f56:	f7ff f8b7 	bl	d00000c8 <_fstat>
d0000f5a:	1c43      	adds	r3, r0, #1
d0000f5c:	d102      	bne.n	d0000f64 <_fstat_r+0x1c>
d0000f5e:	682b      	ldr	r3, [r5, #0]
d0000f60:	b103      	cbz	r3, d0000f64 <_fstat_r+0x1c>
d0000f62:	6023      	str	r3, [r4, #0]
d0000f64:	bd38      	pop	{r3, r4, r5, pc}
d0000f66:	bf00      	nop
d0000f68:	d000203c 	.word	0xd000203c

d0000f6c <_lseek_r>:
d0000f6c:	b538      	push	{r3, r4, r5, lr}
d0000f6e:	4d07      	ldr	r5, [pc, #28]	; (d0000f8c <_lseek_r+0x20>)
d0000f70:	4604      	mov	r4, r0
d0000f72:	4608      	mov	r0, r1
d0000f74:	4611      	mov	r1, r2
d0000f76:	2200      	movs	r2, #0
d0000f78:	602a      	str	r2, [r5, #0]
d0000f7a:	461a      	mov	r2, r3
d0000f7c:	f7ff f8aa 	bl	d00000d4 <_lseek>
d0000f80:	1c43      	adds	r3, r0, #1
d0000f82:	d102      	bne.n	d0000f8a <_lseek_r+0x1e>
d0000f84:	682b      	ldr	r3, [r5, #0]
d0000f86:	b103      	cbz	r3, d0000f8a <_lseek_r+0x1e>
d0000f88:	6023      	str	r3, [r4, #0]
d0000f8a:	bd38      	pop	{r3, r4, r5, pc}
d0000f8c:	d000203c 	.word	0xd000203c

d0000f90 <__malloc_lock>:
d0000f90:	4801      	ldr	r0, [pc, #4]	; (d0000f98 <__malloc_lock+0x8>)
d0000f92:	f7ff bead 	b.w	d0000cf0 <__retarget_lock_acquire_recursive>
d0000f96:	bf00      	nop
d0000f98:	d0002034 	.word	0xd0002034

d0000f9c <__malloc_unlock>:
d0000f9c:	4801      	ldr	r0, [pc, #4]	; (d0000fa4 <__malloc_unlock+0x8>)
d0000f9e:	f7ff bea8 	b.w	d0000cf2 <__retarget_lock_release_recursive>
d0000fa2:	bf00      	nop
d0000fa4:	d0002034 	.word	0xd0002034

d0000fa8 <_read_r>:
d0000fa8:	b538      	push	{r3, r4, r5, lr}
d0000faa:	4d07      	ldr	r5, [pc, #28]	; (d0000fc8 <_read_r+0x20>)
d0000fac:	4604      	mov	r4, r0
d0000fae:	4608      	mov	r0, r1
d0000fb0:	4611      	mov	r1, r2
d0000fb2:	2200      	movs	r2, #0
d0000fb4:	602a      	str	r2, [r5, #0]
d0000fb6:	461a      	mov	r2, r3
d0000fb8:	f7ff f878 	bl	d00000ac <_read>
d0000fbc:	1c43      	adds	r3, r0, #1
d0000fbe:	d102      	bne.n	d0000fc6 <_read_r+0x1e>
d0000fc0:	682b      	ldr	r3, [r5, #0]
d0000fc2:	b103      	cbz	r3, d0000fc6 <_read_r+0x1e>
d0000fc4:	6023      	str	r3, [r4, #0]
d0000fc6:	bd38      	pop	{r3, r4, r5, pc}
d0000fc8:	d000203c 	.word	0xd000203c

d0000fcc <_global_impure_ptr>:
d0000fcc:	d0001080                                ....

d0000fd0 <sin_q7_0_90>:
d0000fd0:	09060300 1613100c 221f1c19 2e2b2825     ..........."%(+.
d0000fe0:	39363331 43413e3c 4d4b4846 5654524f     1369<>ACFHKMORTV
d0000ff0:	5e5c5a58 66646260 6c6b6967 72716f6e     XZ\^`bdfgiklnoqr
d0001000:	77767573 7b7a7978 7e7d7c7c 7f7f7f7e     suvwxyz{||}~~...
d0001010:	0000007f                                ....

d0001014 <__sf_fake_stderr>:
	...

d0001034 <__sf_fake_stdin>:
	...

d0001054 <__sf_fake_stdout>:
	...

Disassembly of section .init:

d0001074 <_init>:
d0001074:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d0001076:	bf00      	nop

Disassembly of section .fini:

d0001078 <_fini>:
d0001078:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d000107a:	bf00      	nop


compiled/applet.elf:     file format elf32-littlearm


Disassembly of section .text:

d0020010 <applet_entry>:
d0020010:	b570      	push	{r4, r5, r6, lr}
d0020012:	4e09      	ldr	r6, [pc, #36]	; (d0020038 <applet_entry+0x28>)
d0020014:	460d      	mov	r5, r1
d0020016:	4604      	mov	r4, r0
d0020018:	2100      	movs	r1, #0
d002001a:	6833      	ldr	r3, [r6, #0]
d002001c:	6898      	ldr	r0, [r3, #8]
d002001e:	f000 fbab 	bl	d0020778 <setbuf>
d0020022:	6833      	ldr	r3, [r6, #0]
d0020024:	2100      	movs	r1, #0
d0020026:	68d8      	ldr	r0, [r3, #12]
d0020028:	f000 fba6 	bl	d0020778 <setbuf>
d002002c:	4629      	mov	r1, r5
d002002e:	4620      	mov	r0, r4
d0020030:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
d0020034:	f000 ba96 	b.w	d0020564 <main>
d0020038:	d002101c 	.word	0xd002101c

d002003c <memset>:
d002003c:	4402      	add	r2, r0
d002003e:	4603      	mov	r3, r0
d0020040:	4293      	cmp	r3, r2
d0020042:	d100      	bne.n	d0020046 <memset+0xa>
d0020044:	4770      	bx	lr
d0020046:	f803 1b01 	strb.w	r1, [r3], #1
d002004a:	e7f9      	b.n	d0020040 <memset+0x4>

d002004c <_write_r>:
d002004c:	3901      	subs	r1, #1
d002004e:	2901      	cmp	r1, #1
d0020050:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d0020052:	d81f      	bhi.n	d0020094 <_write_r+0x48>
d0020054:	b1e2      	cbz	r2, d0020090 <_write_r+0x44>
d0020056:	461c      	mov	r4, r3
d0020058:	b1d3      	cbz	r3, d0020090 <_write_r+0x44>
d002005a:	4d12      	ldr	r5, [pc, #72]	; (d00200a4 <_write_r+0x58>)
d002005c:	682e      	ldr	r6, [r5, #0]
d002005e:	b9ae      	cbnz	r6, d002008c <_write_r+0x40>
d0020060:	4f11      	ldr	r7, [pc, #68]	; (d00200a8 <_write_r+0x5c>)
d0020062:	2301      	movs	r3, #1
d0020064:	4611      	mov	r1, r2
d0020066:	4630      	mov	r0, r6
d0020068:	602b      	str	r3, [r5, #0]
d002006a:	4622      	mov	r2, r4
d002006c:	793b      	ldrb	r3, [r7, #4]
d002006e:	f897 c005 	ldrb.w	ip, [r7, #5]
d0020072:	ea43 230c 	orr.w	r3, r3, ip, lsl #8
d0020076:	f897 c006 	ldrb.w	ip, [r7, #6]
d002007a:	79ff      	ldrb	r7, [r7, #7]
d002007c:	ea43 430c 	orr.w	r3, r3, ip, lsl #16
d0020080:	ea43 6307 	orr.w	r3, r3, r7, lsl #24
d0020084:	681b      	ldr	r3, [r3, #0]
d0020086:	685b      	ldr	r3, [r3, #4]
d0020088:	4798      	blx	r3
d002008a:	602e      	str	r6, [r5, #0]
d002008c:	4620      	mov	r0, r4
d002008e:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d0020090:	2000      	movs	r0, #0
d0020092:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d0020094:	f000 fb6a 	bl	d002076c <__errno>
d0020098:	2209      	movs	r2, #9
d002009a:	4603      	mov	r3, r0
d002009c:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d00200a0:	601a      	str	r2, [r3, #0]
d00200a2:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d00200a4:	d00210a4 	.word	0xd00210a4
d00200a8:	2001f000 	.word	0x2001f000

d00200ac <_read>:
d00200ac:	b508      	push	{r3, lr}
d00200ae:	f000 fb5d 	bl	d002076c <__errno>
d00200b2:	2258      	movs	r2, #88	; 0x58
d00200b4:	4603      	mov	r3, r0
d00200b6:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d00200ba:	601a      	str	r2, [r3, #0]
d00200bc:	bd08      	pop	{r3, pc}
d00200be:	bf00      	nop

d00200c0 <_close>:
d00200c0:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d00200c4:	4770      	bx	lr
d00200c6:	bf00      	nop

d00200c8 <_fstat>:
d00200c8:	f44f 5300 	mov.w	r3, #8192	; 0x2000
d00200cc:	2000      	movs	r0, #0
d00200ce:	604b      	str	r3, [r1, #4]
d00200d0:	4770      	bx	lr
d00200d2:	bf00      	nop

d00200d4 <_lseek>:
d00200d4:	2000      	movs	r0, #0
d00200d6:	4770      	bx	lr

d00200d8 <_sbrk_r>:
d00200d8:	4b0c      	ldr	r3, [pc, #48]	; (d002010c <_sbrk_r+0x34>)
d00200da:	4a0d      	ldr	r2, [pc, #52]	; (d0020110 <_sbrk_r+0x38>)
d00200dc:	6818      	ldr	r0, [r3, #0]
d00200de:	b510      	push	{r4, lr}
d00200e0:	b918      	cbnz	r0, d00200ea <_sbrk_r+0x12>
d00200e2:	1dd0      	adds	r0, r2, #7
d00200e4:	f020 0007 	bic.w	r0, r0, #7
d00200e8:	6018      	str	r0, [r3, #0]
d00200ea:	4401      	add	r1, r0
d00200ec:	4c09      	ldr	r4, [pc, #36]	; (d0020114 <_sbrk_r+0x3c>)
d00200ee:	42a1      	cmp	r1, r4
d00200f0:	d803      	bhi.n	d00200fa <_sbrk_r+0x22>
d00200f2:	4291      	cmp	r1, r2
d00200f4:	d301      	bcc.n	d00200fa <_sbrk_r+0x22>
d00200f6:	6019      	str	r1, [r3, #0]
d00200f8:	bd10      	pop	{r4, pc}
d00200fa:	f000 fb37 	bl	d002076c <__errno>
d00200fe:	220c      	movs	r2, #12
d0020100:	4603      	mov	r3, r0
d0020102:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d0020106:	601a      	str	r2, [r3, #0]
d0020108:	bd10      	pop	{r4, pc}
d002010a:	bf00      	nop
d002010c:	d00210a0 	.word	0xd00210a0
d0020110:	d0021fe0 	.word	0xd0021fe0
d0020114:	d0600000 	.word	0xd0600000

d0020118 <gfx_line>:
d0020118:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d002011c:	4282      	cmp	r2, r0
d002011e:	b087      	sub	sp, #28
d0020120:	4607      	mov	r7, r0
d0020122:	4692      	mov	sl, r2
d0020124:	4688      	mov	r8, r1
d0020126:	9303      	str	r3, [sp, #12]
d0020128:	dd45      	ble.n	d00201b6 <gfx_line+0x9e>
d002012a:	2301      	movs	r3, #1
d002012c:	eba2 0b00 	sub.w	fp, r2, r0
d0020130:	9304      	str	r3, [sp, #16]
d0020132:	9b03      	ldr	r3, [sp, #12]
d0020134:	4543      	cmp	r3, r8
d0020136:	dd38      	ble.n	d00201aa <gfx_line+0x92>
d0020138:	eba8 0903 	sub.w	r9, r8, r3
d002013c:	2301      	movs	r3, #1
d002013e:	9305      	str	r3, [sp, #20]
d0020140:	eb0b 0609 	add.w	r6, fp, r9
d0020144:	4d1f      	ldr	r5, [pc, #124]	; (d00201c4 <gfx_line+0xac>)
d0020146:	fa0f f188 	sxth.w	r1, r8
d002014a:	b238      	sxth	r0, r7
d002014c:	f895 c008 	ldrb.w	ip, [r5, #8]
d0020150:	2303      	movs	r3, #3
d0020152:	7a6c      	ldrb	r4, [r5, #9]
d0020154:	f895 e00a 	ldrb.w	lr, [r5, #10]
d0020158:	461a      	mov	r2, r3
d002015a:	ea4c 2404 	orr.w	r4, ip, r4, lsl #8
d002015e:	f895 c00b 	ldrb.w	ip, [r5, #11]
d0020162:	9102      	str	r1, [sp, #8]
d0020164:	ea44 4e0e 	orr.w	lr, r4, lr, lsl #16
d0020168:	9001      	str	r0, [sp, #4]
d002016a:	ea4e 640c 	orr.w	r4, lr, ip, lsl #24
d002016e:	6864      	ldr	r4, [r4, #4]
d0020170:	6864      	ldr	r4, [r4, #4]
d0020172:	47a0      	blx	r4
d0020174:	4557      	cmp	r7, sl
d0020176:	ea4f 0346 	mov.w	r3, r6, lsl #1
d002017a:	9801      	ldr	r0, [sp, #4]
d002017c:	9902      	ldr	r1, [sp, #8]
d002017e:	d102      	bne.n	d0020186 <gfx_line+0x6e>
d0020180:	9a03      	ldr	r2, [sp, #12]
d0020182:	4590      	cmp	r8, r2
d0020184:	d00e      	beq.n	d00201a4 <gfx_line+0x8c>
d0020186:	ebb9 0f46 	cmp.w	r9, r6, lsl #1
d002018a:	dc05      	bgt.n	d0020198 <gfx_line+0x80>
d002018c:	9a04      	ldr	r2, [sp, #16]
d002018e:	455b      	cmp	r3, fp
d0020190:	444e      	add	r6, r9
d0020192:	4417      	add	r7, r2
d0020194:	b238      	sxth	r0, r7
d0020196:	dcd9      	bgt.n	d002014c <gfx_line+0x34>
d0020198:	9b05      	ldr	r3, [sp, #20]
d002019a:	445e      	add	r6, fp
d002019c:	4498      	add	r8, r3
d002019e:	fa0f f188 	sxth.w	r1, r8
d00201a2:	e7d3      	b.n	d002014c <gfx_line+0x34>
d00201a4:	b007      	add	sp, #28
d00201a6:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d00201aa:	eba3 0908 	sub.w	r9, r3, r8
d00201ae:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
d00201b2:	9305      	str	r3, [sp, #20]
d00201b4:	e7c4      	b.n	d0020140 <gfx_line+0x28>
d00201b6:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
d00201ba:	eba0 0b02 	sub.w	fp, r0, r2
d00201be:	9304      	str	r3, [sp, #16]
d00201c0:	e7b7      	b.n	d0020132 <gfx_line+0x1a>
d00201c2:	bf00      	nop
d00201c4:	2001f000 	.word	0x2001f000

d00201c8 <sbx_init_worms>:
d00201c8:	2800      	cmp	r0, #0
d00201ca:	4b38      	ldr	r3, [pc, #224]	; (d00202ac <sbx_init_worms+0xe4>)
d00201cc:	bf08      	it	eq
d00201ce:	f04f 30a5 	moveq.w	r0, #2779096485	; 0xa5a5a5a5
d00201d2:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d00201d6:	4602      	mov	r2, r0
d00201d8:	f240 1bcb 	movw	fp, #459	; 0x1cb
d00201dc:	f503 6a70 	add.w	sl, r3, #3840	; 0xf00
d00201e0:	f8df 90d4 	ldr.w	r9, [pc, #212]	; d00202b8 <sbx_init_worms+0xf0>
d00201e4:	f240 1e2b 	movw	lr, #299	; 0x12b
d00201e8:	f04f 0800 	mov.w	r8, #0
d00201ec:	ea82 3242 	eor.w	r2, r2, r2, lsl #13
d00201f0:	2400      	movs	r4, #0
d00201f2:	f883 8058 	strb.w	r8, [r3, #88]	; 0x58
d00201f6:	ea82 4252 	eor.w	r2, r2, r2, lsr #17
d00201fa:	4620      	mov	r0, r4
d00201fc:	ea82 1242 	eor.w	r2, r2, r2, lsl #5
d0020200:	ea82 3542 	eor.w	r5, r2, r2, lsl #13
d0020204:	fba9 6702 	umull	r6, r7, r9, r2
d0020208:	ea85 4555 	eor.w	r5, r5, r5, lsr #17
d002020c:	09ff      	lsrs	r7, r7, #7
d002020e:	ea85 1645 	eor.w	r6, r5, r5, lsl #5
d0020212:	4d27      	ldr	r5, [pc, #156]	; (d00202b0 <sbx_init_worms+0xe8>)
d0020214:	fb0b 2217 	mls	r2, fp, r7, r2
d0020218:	ea86 3c46 	eor.w	ip, r6, r6, lsl #13
d002021c:	fba5 7506 	umull	r7, r5, r5, r6
d0020220:	3208      	adds	r2, #8
d0020222:	ea8c 4c5c 	eor.w	ip, ip, ip, lsr #17
d0020226:	b212      	sxth	r2, r2
d0020228:	ea8c 1c4c 	eor.w	ip, ip, ip, lsl #5
d002022c:	f362 000f 	bfi	r0, r2, #0, #16
d0020230:	09ed      	lsrs	r5, r5, #7
d0020232:	ea8c 374c 	eor.w	r7, ip, ip, lsl #13
d0020236:	801a      	strh	r2, [r3, #0]
d0020238:	f362 401f 	bfi	r0, r2, #16, #16
d002023c:	fb0e 6515 	mls	r5, lr, r5, r6
d0020240:	ea87 4757 	eor.w	r7, r7, r7, lsr #17
d0020244:	f883 c004 	strb.w	ip, [r3, #4]
d0020248:	3508      	adds	r5, #8
d002024a:	6098      	str	r0, [r3, #8]
d002024c:	ea87 1247 	eor.w	r2, r7, r7, lsl #5
d0020250:	f007 0703 	and.w	r7, r7, #3
d0020254:	b22d      	sxth	r5, r5
d0020256:	60d8      	str	r0, [r3, #12]
d0020258:	ea82 3242 	eor.w	r2, r2, r2, lsl #13
d002025c:	3702      	adds	r7, #2
d002025e:	f365 040f 	bfi	r4, r5, #0, #16
d0020262:	805d      	strh	r5, [r3, #2]
d0020264:	ea82 4252 	eor.w	r2, r2, r2, lsr #17
d0020268:	715f      	strb	r7, [r3, #5]
d002026a:	f365 441f 	bfi	r4, r5, #16, #16
d002026e:	6118      	str	r0, [r3, #16]
d0020270:	f002 060f 	and.w	r6, r2, #15
d0020274:	6158      	str	r0, [r3, #20]
d0020276:	6198      	str	r0, [r3, #24]
d0020278:	ea82 1242 	eor.w	r2, r2, r2, lsl #5
d002027c:	198d      	adds	r5, r1, r6
d002027e:	631c      	str	r4, [r3, #48]	; 0x30
d0020280:	635c      	str	r4, [r3, #52]	; 0x34
d0020282:	719d      	strb	r5, [r3, #6]
d0020284:	61d8      	str	r0, [r3, #28]
d0020286:	e9c3 440e 	strd	r4, r4, [r3, #56]	; 0x38
d002028a:	e9c3 4410 	strd	r4, r4, [r3, #64]	; 0x40
d002028e:	e9c3 4412 	strd	r4, r4, [r3, #72]	; 0x48
d0020292:	e9c3 4414 	strd	r4, r4, [r3, #80]	; 0x50
d0020296:	e9c3 0008 	strd	r0, r0, [r3, #32]
d002029a:	e9c3 000a 	strd	r0, r0, [r3, #40]	; 0x28
d002029e:	3360      	adds	r3, #96	; 0x60
d00202a0:	4553      	cmp	r3, sl
d00202a2:	d1a3      	bne.n	d00201ec <sbx_init_worms+0x24>
d00202a4:	4b03      	ldr	r3, [pc, #12]	; (d00202b4 <sbx_init_worms+0xec>)
d00202a6:	601a      	str	r2, [r3, #0]
d00202a8:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d00202ac:	d00210c0 	.word	0xd00210c0
d00202b0:	6d978b8f 	.word	0x6d978b8f
d00202b4:	d0021080 	.word	0xd0021080
d00202b8:	4763d59d 	.word	0x4763d59d

d00202bc <sbx_update_draw_worms>:
d00202bc:	e92d 4ff8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
d00202c0:	4ca1      	ldr	r4, [pc, #644]	; (d0020548 <sbx_update_draw_worms+0x28c>)
d00202c2:	f04f 0a00 	mov.w	sl, #0
d00202c6:	f8df b298 	ldr.w	fp, [pc, #664]	; d0020560 <sbx_update_draw_worms+0x2a4>
d00202ca:	46a1      	mov	r9, r4
d00202cc:	f9b9 1000 	ldrsh.w	r1, [r9]
d00202d0:	f899 3004 	ldrb.w	r3, [r9, #4]
d00202d4:	291f      	cmp	r1, #31
d00202d6:	f340 8109 	ble.w	d00204ec <sbx_update_draw_worms+0x230>
d00202da:	f5b1 7fdd 	cmp.w	r1, #442	; 0x1ba
d00202de:	bfd4      	ite	le
d00202e0:	461d      	movle	r5, r3
d00202e2:	2580      	movgt	r5, #128	; 0x80
d00202e4:	f9b9 0002 	ldrsh.w	r0, [r9, #2]
d00202e8:	281f      	cmp	r0, #31
d00202ea:	f340 80fd 	ble.w	d00204e8 <sbx_update_draw_worms+0x22c>
d00202ee:	f5b0 7f8d 	cmp.w	r0, #282	; 0x11a
d00202f2:	bfc8      	it	gt
d00202f4:	25c0      	movgt	r5, #192	; 0xc0
d00202f6:	1aea      	subs	r2, r5, r3
d00202f8:	f012 02ff 	ands.w	r2, r2, #255	; 0xff
d00202fc:	d007      	beq.n	d002030e <sbx_update_draw_worms+0x52>
d00202fe:	0616      	lsls	r6, r2, #24
d0020300:	f100 811a 	bmi.w	d0020538 <sbx_update_draw_worms+0x27c>
d0020304:	2a03      	cmp	r2, #3
d0020306:	f240 8115 	bls.w	d0020534 <sbx_update_draw_worms+0x278>
d002030a:	3304      	adds	r3, #4
d002030c:	b2db      	uxtb	r3, r3
d002030e:	4e8f      	ldr	r6, [pc, #572]	; (d002054c <sbx_update_draw_worms+0x290>)
d0020310:	f889 3004 	strb.w	r3, [r9, #4]
d0020314:	6835      	ldr	r5, [r6, #0]
d0020316:	ea85 3545 	eor.w	r5, r5, r5, lsl #13
d002031a:	ea85 4555 	eor.w	r5, r5, r5, lsr #17
d002031e:	ea85 1245 	eor.w	r2, r5, r5, lsl #5
d0020322:	06ed      	lsls	r5, r5, #27
d0020324:	f000 80e4 	beq.w	d00204f0 <sbx_update_draw_worms+0x234>
d0020328:	6032      	str	r2, [r6, #0]
d002032a:	f103 0540 	add.w	r5, r3, #64	; 0x40
d002032e:	4a88      	ldr	r2, [pc, #544]	; (d0020550 <sbx_update_draw_worms+0x294>)
d0020330:	f005 063f 	and.w	r6, r5, #63	; 0x3f
d0020334:	f3c5 1581 	ubfx	r5, r5, #6, #2
d0020338:	01b6      	lsls	r6, r6, #6
d002033a:	2d01      	cmp	r5, #1
d002033c:	fba2 7206 	umull	r7, r2, r2, r6
d0020340:	eba6 0602 	sub.w	r6, r6, r2
d0020344:	eb02 0256 	add.w	r2, r2, r6, lsr #1
d0020348:	ea4f 1252 	mov.w	r2, r2, lsr #5
d002034c:	f000 80e8 	beq.w	d0020520 <sbx_update_draw_worms+0x264>
d0020350:	2d02      	cmp	r5, #2
d0020352:	d004      	beq.n	d002035e <sbx_update_draw_worms+0xa2>
d0020354:	2d00      	cmp	r5, #0
d0020356:	f000 80e5 	beq.w	d0020524 <sbx_update_draw_worms+0x268>
d002035a:	f1c2 0240 	rsb	r2, r2, #64	; 0x40
d002035e:	4d7d      	ldr	r5, [pc, #500]	; (d0020554 <sbx_update_draw_worms+0x298>)
d0020360:	5cad      	ldrb	r5, [r5, r2]
d0020362:	426d      	negs	r5, r5
d0020364:	b26d      	sxtb	r5, r5
d0020366:	f003 073f 	and.w	r7, r3, #63	; 0x3f
d002036a:	4a79      	ldr	r2, [pc, #484]	; (d0020550 <sbx_update_draw_worms+0x294>)
d002036c:	f899 6005 	ldrb.w	r6, [r9, #5]
d0020370:	f3c3 1387 	ubfx	r3, r3, #6, #8
d0020374:	01bf      	lsls	r7, r7, #6
d0020376:	fb15 f506 	smulbb	r5, r5, r6
d002037a:	2b01      	cmp	r3, #1
d002037c:	fba2 2807 	umull	r2, r8, r2, r7
d0020380:	4a75      	ldr	r2, [pc, #468]	; (d0020558 <sbx_update_draw_worms+0x29c>)
d0020382:	ea4f 7ce5 	mov.w	ip, r5, asr #31
d0020386:	fb82 2e05 	smull	r2, lr, r2, r5
d002038a:	eba7 0708 	sub.w	r7, r7, r8
d002038e:	4475      	add	r5, lr
d0020390:	eb08 0257 	add.w	r2, r8, r7, lsr #1
d0020394:	ebcc 15a5 	rsb	r5, ip, r5, asr #6
d0020398:	ea4f 1252 	mov.w	r2, r2, lsr #5
d002039c:	f000 80c5 	beq.w	d002052a <sbx_update_draw_worms+0x26e>
d00203a0:	2b02      	cmp	r3, #2
d00203a2:	d004      	beq.n	d00203ae <sbx_update_draw_worms+0xf2>
d00203a4:	2b00      	cmp	r3, #0
d00203a6:	f000 80c2 	beq.w	d002052e <sbx_update_draw_worms+0x272>
d00203aa:	f1c2 0240 	rsb	r2, r2, #64	; 0x40
d00203ae:	4b69      	ldr	r3, [pc, #420]	; (d0020554 <sbx_update_draw_worms+0x298>)
d00203b0:	5c9b      	ldrb	r3, [r3, r2]
d00203b2:	425b      	negs	r3, r3
d00203b4:	b25b      	sxtb	r3, r3
d00203b6:	fb16 f603 	smulbb	r6, r6, r3
d00203ba:	4b67      	ldr	r3, [pc, #412]	; (d0020558 <sbx_update_draw_worms+0x29c>)
d00203bc:	4429      	add	r1, r5
d00203be:	fb83 3206 	smull	r3, r2, r3, r6
d00203c2:	17f3      	asrs	r3, r6, #31
d00203c4:	b209      	sxth	r1, r1
d00203c6:	4416      	add	r6, r2
d00203c8:	2907      	cmp	r1, #7
d00203ca:	f8a9 1000 	strh.w	r1, [r9]
d00203ce:	ebc3 13a6 	rsb	r3, r3, r6, asr #6
d00203d2:	4418      	add	r0, r3
d00203d4:	b200      	sxth	r0, r0
d00203d6:	f8a9 0002 	strh.w	r0, [r9, #2]
d00203da:	dc7d      	bgt.n	d00204d8 <sbx_update_draw_worms+0x21c>
d00203dc:	2308      	movs	r3, #8
d00203de:	f8a9 3000 	strh.w	r3, [r9]
d00203e2:	2807      	cmp	r0, #7
d00203e4:	dc70      	bgt.n	d00204c8 <sbx_update_draw_worms+0x20c>
d00203e6:	2308      	movs	r3, #8
d00203e8:	f8a9 3002 	strh.w	r3, [r9, #2]
d00203ec:	f899 2058 	ldrb.w	r2, [r9, #88]	; 0x58
d00203f0:	eb0a 034a 	add.w	r3, sl, sl, lsl #1
d00203f4:	f9b9 0000 	ldrsh.w	r0, [r9]
d00203f8:	ea4f 064a 	mov.w	r6, sl, lsl #1
d00203fc:	eb02 1303 	add.w	r3, r2, r3, lsl #4
d0020400:	3201      	adds	r2, #1
d0020402:	eb04 0143 	add.w	r1, r4, r3, lsl #1
d0020406:	b2d2      	uxtb	r2, r2
d0020408:	460b      	mov	r3, r1
d002040a:	8108      	strh	r0, [r1, #8]
d002040c:	2a13      	cmp	r2, #19
d002040e:	f9b9 1002 	ldrsh.w	r1, [r9, #2]
d0020412:	8619      	strh	r1, [r3, #48]	; 0x30
d0020414:	d854      	bhi.n	d00204c0 <sbx_update_draw_worms+0x204>
d0020416:	f889 2058 	strb.w	r2, [r9, #88]	; 0x58
d002041a:	f89b 1008 	ldrb.w	r1, [fp, #8]
d002041e:	4456      	add	r6, sl
d0020420:	f89b 3009 	ldrb.w	r3, [fp, #9]
d0020424:	2713      	movs	r7, #19
d0020426:	f89b 200a 	ldrb.w	r2, [fp, #10]
d002042a:	eb04 1846 	add.w	r8, r4, r6, lsl #5
d002042e:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
d0020432:	f89b 300b 	ldrb.w	r3, [fp, #11]
d0020436:	f899 0006 	ldrb.w	r0, [r9, #6]
d002043a:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d002043e:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0020442:	685b      	ldr	r3, [r3, #4]
d0020444:	68db      	ldr	r3, [r3, #12]
d0020446:	4798      	blx	r3
d0020448:	f899 3058 	ldrb.w	r3, [r9, #88]	; 0x58
d002044c:	1c5d      	adds	r5, r3, #1
d002044e:	eb03 1c06 	add.w	ip, r3, r6, lsl #4
d0020452:	eb05 1206 	add.w	r2, r5, r6, lsl #4
d0020456:	2d13      	cmp	r5, #19
d0020458:	eb04 034c 	add.w	r3, r4, ip, lsl #1
d002045c:	eb04 0e42 	add.w	lr, r4, r2, lsl #1
d0020460:	469c      	mov	ip, r3
d0020462:	dd17      	ble.n	d0020494 <sbx_update_draw_worms+0x1d8>
d0020464:	f9b3 1030 	ldrsh.w	r1, [r3, #48]	; 0x30
d0020468:	f9b3 0008 	ldrsh.w	r0, [r3, #8]
d002046c:	f9b8 2008 	ldrsh.w	r2, [r8, #8]
d0020470:	f9b8 3030 	ldrsh.w	r3, [r8, #48]	; 0x30
d0020474:	f7ff fe50 	bl	d0020118 <gfx_line>
d0020478:	3f01      	subs	r7, #1
d002047a:	f04f 0300 	mov.w	r3, #0
d002047e:	d1e5      	bne.n	d002044c <sbx_update_draw_worms+0x190>
d0020480:	f10a 0a01 	add.w	sl, sl, #1
d0020484:	f109 0960 	add.w	r9, r9, #96	; 0x60
d0020488:	f1ba 0f28 	cmp.w	sl, #40	; 0x28
d002048c:	f47f af1e 	bne.w	d00202cc <sbx_update_draw_worms+0x10>
d0020490:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0020494:	f9be 3030 	ldrsh.w	r3, [lr, #48]	; 0x30
d0020498:	f9be 2008 	ldrsh.w	r2, [lr, #8]
d002049c:	f9bc 1030 	ldrsh.w	r1, [ip, #48]	; 0x30
d00204a0:	f9bc 0008 	ldrsh.w	r0, [ip, #8]
d00204a4:	f7ff fe38 	bl	d0020118 <gfx_line>
d00204a8:	3f01      	subs	r7, #1
d00204aa:	462b      	mov	r3, r5
d00204ac:	d1ce      	bne.n	d002044c <sbx_update_draw_worms+0x190>
d00204ae:	f10a 0a01 	add.w	sl, sl, #1
d00204b2:	f109 0960 	add.w	r9, r9, #96	; 0x60
d00204b6:	f1ba 0f28 	cmp.w	sl, #40	; 0x28
d00204ba:	f47f af07 	bne.w	d00202cc <sbx_update_draw_worms+0x10>
d00204be:	e7e7      	b.n	d0020490 <sbx_update_draw_worms+0x1d4>
d00204c0:	2300      	movs	r3, #0
d00204c2:	f889 3058 	strb.w	r3, [r9, #88]	; 0x58
d00204c6:	e7a8      	b.n	d002041a <sbx_update_draw_worms+0x15e>
d00204c8:	f5b0 7f99 	cmp.w	r0, #306	; 0x132
d00204cc:	dd8e      	ble.n	d00203ec <sbx_update_draw_worms+0x130>
d00204ce:	f44f 7399 	mov.w	r3, #306	; 0x132
d00204d2:	f8a9 3002 	strh.w	r3, [r9, #2]
d00204d6:	e789      	b.n	d00203ec <sbx_update_draw_worms+0x130>
d00204d8:	f5b1 7fe9 	cmp.w	r1, #466	; 0x1d2
d00204dc:	dd81      	ble.n	d00203e2 <sbx_update_draw_worms+0x126>
d00204de:	f44f 73e9 	mov.w	r3, #466	; 0x1d2
d00204e2:	f8a9 3000 	strh.w	r3, [r9]
d00204e6:	e77c      	b.n	d00203e2 <sbx_update_draw_worms+0x126>
d00204e8:	2540      	movs	r5, #64	; 0x40
d00204ea:	e704      	b.n	d00202f6 <sbx_update_draw_worms+0x3a>
d00204ec:	2500      	movs	r5, #0
d00204ee:	e6f9      	b.n	d00202e4 <sbx_update_draw_worms+0x28>
d00204f0:	ea82 3242 	eor.w	r2, r2, r2, lsl #13
d00204f4:	4d19      	ldr	r5, [pc, #100]	; (d002055c <sbx_update_draw_worms+0x2a0>)
d00204f6:	ea82 4252 	eor.w	r2, r2, r2, lsr #17
d00204fa:	ea82 1242 	eor.w	r2, r2, r2, lsl #5
d00204fe:	fba5 6502 	umull	r6, r5, r5, r2
d0020502:	4e12      	ldr	r6, [pc, #72]	; (d002054c <sbx_update_draw_worms+0x290>)
d0020504:	6032      	str	r2, [r6, #0]
d0020506:	1b56      	subs	r6, r2, r5
d0020508:	eb05 0556 	add.w	r5, r5, r6, lsr #1
d002050c:	08ad      	lsrs	r5, r5, #2
d002050e:	ebc5 05c5 	rsb	r5, r5, r5, lsl #3
d0020512:	1b52      	subs	r2, r2, r5
d0020514:	3a03      	subs	r2, #3
d0020516:	4413      	add	r3, r2
d0020518:	b2db      	uxtb	r3, r3
d002051a:	f889 3004 	strb.w	r3, [r9, #4]
d002051e:	e704      	b.n	d002032a <sbx_update_draw_worms+0x6e>
d0020520:	f1c2 0240 	rsb	r2, r2, #64	; 0x40
d0020524:	4d0b      	ldr	r5, [pc, #44]	; (d0020554 <sbx_update_draw_worms+0x298>)
d0020526:	56ad      	ldrsb	r5, [r5, r2]
d0020528:	e71d      	b.n	d0020366 <sbx_update_draw_worms+0xaa>
d002052a:	f1c2 0240 	rsb	r2, r2, #64	; 0x40
d002052e:	4b09      	ldr	r3, [pc, #36]	; (d0020554 <sbx_update_draw_worms+0x298>)
d0020530:	569b      	ldrsb	r3, [r3, r2]
d0020532:	e740      	b.n	d00203b6 <sbx_update_draw_worms+0xfa>
d0020534:	462b      	mov	r3, r5
d0020536:	e6ea      	b.n	d002030e <sbx_update_draw_worms+0x52>
d0020538:	1b5a      	subs	r2, r3, r5
d002053a:	b2d2      	uxtb	r2, r2
d002053c:	2a03      	cmp	r2, #3
d002053e:	d9f9      	bls.n	d0020534 <sbx_update_draw_worms+0x278>
d0020540:	3b04      	subs	r3, #4
d0020542:	b2db      	uxtb	r3, r3
d0020544:	e6e3      	b.n	d002030e <sbx_update_draw_worms+0x52>
d0020546:	bf00      	nop
d0020548:	d00210c0 	.word	0xd00210c0
d002054c:	d0021080 	.word	0xd0021080
d0020550:	04104105 	.word	0x04104105
d0020554:	d0020f70 	.word	0xd0020f70
d0020558:	81020409 	.word	0x81020409
d002055c:	24924925 	.word	0x24924925
d0020560:	2001f000 	.word	0x2001f000

d0020564 <main>:
d0020564:	4a7b      	ldr	r2, [pc, #492]	; (d0020754 <main+0x1f0>)
d0020566:	213c      	movs	r1, #60	; 0x3c
d0020568:	4c7b      	ldr	r4, [pc, #492]	; (d0020758 <main+0x1f4>)
d002056a:	20dc      	movs	r0, #220	; 0xdc
d002056c:	6813      	ldr	r3, [r2, #0]
d002056e:	f04f 0800 	mov.w	r8, #0
d0020572:	4e7a      	ldr	r6, [pc, #488]	; (d002075c <main+0x1f8>)
d0020574:	f023 0310 	bic.w	r3, r3, #16
d0020578:	b580      	push	{r7, lr}
d002057a:	6013      	str	r3, [r2, #0]
d002057c:	b084      	sub	sp, #16
d002057e:	7a23      	ldrb	r3, [r4, #8]
d0020580:	7a62      	ldrb	r2, [r4, #9]
d0020582:	7aa5      	ldrb	r5, [r4, #10]
d0020584:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0020588:	7ae2      	ldrb	r2, [r4, #11]
d002058a:	4f75      	ldr	r7, [pc, #468]	; (d0020760 <main+0x1fc>)
d002058c:	ea43 4305 	orr.w	r3, r3, r5, lsl #16
d0020590:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0020594:	681b      	ldr	r3, [r3, #0]
d0020596:	68db      	ldr	r3, [r3, #12]
d0020598:	4798      	blx	r3
d002059a:	7a25      	ldrb	r5, [r4, #8]
d002059c:	7a60      	ldrb	r0, [r4, #9]
d002059e:	f44f 73a0 	mov.w	r3, #320	; 0x140
d00205a2:	7aa1      	ldrb	r1, [r4, #10]
d00205a4:	f44f 72f0 	mov.w	r2, #480	; 0x1e0
d00205a8:	ea45 2500 	orr.w	r5, r5, r0, lsl #8
d00205ac:	7ae0      	ldrb	r0, [r4, #11]
d00205ae:	ea45 4501 	orr.w	r5, r5, r1, lsl #16
d00205b2:	4619      	mov	r1, r3
d00205b4:	ea45 6500 	orr.w	r5, r5, r0, lsl #24
d00205b8:	4610      	mov	r0, r2
d00205ba:	682d      	ldr	r5, [r5, #0]
d00205bc:	f8cd 8000 	str.w	r8, [sp]
d00205c0:	692d      	ldr	r5, [r5, #16]
d00205c2:	47a8      	blx	r5
d00205c4:	7a23      	ldrb	r3, [r4, #8]
d00205c6:	7a62      	ldrb	r2, [r4, #9]
d00205c8:	7aa1      	ldrb	r1, [r4, #10]
d00205ca:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d00205ce:	7ae2      	ldrb	r2, [r4, #11]
d00205d0:	4d64      	ldr	r5, [pc, #400]	; (d0020764 <main+0x200>)
d00205d2:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d00205d6:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00205da:	685b      	ldr	r3, [r3, #4]
d00205dc:	681b      	ldr	r3, [r3, #0]
d00205de:	4798      	blx	r3
d00205e0:	f88d 8008 	strb.w	r8, [sp, #8]
d00205e4:	f8ad 800c 	strh.w	r8, [sp, #12]
d00205e8:	7a23      	ldrb	r3, [r4, #8]
d00205ea:	7a62      	ldrb	r2, [r4, #9]
d00205ec:	7aa1      	ldrb	r1, [r4, #10]
d00205ee:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d00205f2:	7ae2      	ldrb	r2, [r4, #11]
d00205f4:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d00205f8:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00205fc:	681b      	ldr	r3, [r3, #0]
d00205fe:	69db      	ldr	r3, [r3, #28]
d0020600:	4798      	blx	r3
d0020602:	7a23      	ldrb	r3, [r4, #8]
d0020604:	7a62      	ldrb	r2, [r4, #9]
d0020606:	7aa1      	ldrb	r1, [r4, #10]
d0020608:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d002060c:	7ae2      	ldrb	r2, [r4, #11]
d002060e:	6038      	str	r0, [r7, #0]
d0020610:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0020614:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0020618:	681b      	ldr	r3, [r3, #0]
d002061a:	6a1b      	ldr	r3, [r3, #32]
d002061c:	4798      	blx	r3
d002061e:	7823      	ldrb	r3, [r4, #0]
d0020620:	7862      	ldrb	r2, [r4, #1]
d0020622:	78a1      	ldrb	r1, [r4, #2]
d0020624:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0020628:	78e2      	ldrb	r2, [r4, #3]
d002062a:	6030      	str	r0, [r6, #0]
d002062c:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0020630:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0020634:	681b      	ldr	r3, [r3, #0]
d0020636:	4798      	blx	r3
d0020638:	2150      	movs	r1, #80	; 0x50
d002063a:	2090      	movs	r0, #144	; 0x90
d002063c:	f7ff fdc4 	bl	d00201c8 <sbx_init_worms>
d0020640:	7b23      	ldrb	r3, [r4, #12]
d0020642:	7b62      	ldrb	r2, [r4, #13]
d0020644:	4641      	mov	r1, r8
d0020646:	7ba0      	ldrb	r0, [r4, #14]
d0020648:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d002064c:	7be2      	ldrb	r2, [r4, #15]
d002064e:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
d0020652:	4845      	ldr	r0, [pc, #276]	; (d0020768 <main+0x204>)
d0020654:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0020658:	681b      	ldr	r3, [r3, #0]
d002065a:	681b      	ldr	r3, [r3, #0]
d002065c:	4798      	blx	r3
d002065e:	e042      	b.n	d00206e6 <main+0x182>
d0020660:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d0020664:	7ae3      	ldrb	r3, [r4, #11]
d0020666:	6838      	ldr	r0, [r7, #0]
d0020668:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d002066c:	681b      	ldr	r3, [r3, #0]
d002066e:	699b      	ldr	r3, [r3, #24]
d0020670:	4798      	blx	r3
d0020672:	7a20      	ldrb	r0, [r4, #8]
d0020674:	7a61      	ldrb	r1, [r4, #9]
d0020676:	7aa2      	ldrb	r2, [r4, #10]
d0020678:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d002067c:	7ae3      	ldrb	r3, [r4, #11]
d002067e:	6830      	ldr	r0, [r6, #0]
d0020680:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d0020684:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0020688:	681b      	ldr	r3, [r3, #0]
d002068a:	695b      	ldr	r3, [r3, #20]
d002068c:	4798      	blx	r3
d002068e:	7a20      	ldrb	r0, [r4, #8]
d0020690:	7a61      	ldrb	r1, [r4, #9]
d0020692:	7aa2      	ldrb	r2, [r4, #10]
d0020694:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d0020698:	7ae3      	ldrb	r3, [r4, #11]
d002069a:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d002069e:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d00206a2:	685b      	ldr	r3, [r3, #4]
d00206a4:	681b      	ldr	r3, [r3, #0]
d00206a6:	4798      	blx	r3
d00206a8:	f7ff fe08 	bl	d00202bc <sbx_update_draw_worms>
d00206ac:	782b      	ldrb	r3, [r5, #0]
d00206ae:	b163      	cbz	r3, d00206ca <main+0x166>
d00206b0:	7b20      	ldrb	r0, [r4, #12]
d00206b2:	7b61      	ldrb	r1, [r4, #13]
d00206b4:	7ba2      	ldrb	r2, [r4, #14]
d00206b6:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d00206ba:	7be3      	ldrb	r3, [r4, #15]
d00206bc:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d00206c0:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d00206c4:	681b      	ldr	r3, [r3, #0]
d00206c6:	685b      	ldr	r3, [r3, #4]
d00206c8:	4798      	blx	r3
d00206ca:	7a20      	ldrb	r0, [r4, #8]
d00206cc:	7a61      	ldrb	r1, [r4, #9]
d00206ce:	7aa2      	ldrb	r2, [r4, #10]
d00206d0:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d00206d4:	7ae3      	ldrb	r3, [r4, #11]
d00206d6:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d00206da:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d00206de:	681b      	ldr	r3, [r3, #0]
d00206e0:	681b      	ldr	r3, [r3, #0]
d00206e2:	4798      	blx	r3
d00206e4:	bf00      	nop
d00206e6:	f89d 3008 	ldrb.w	r3, [sp, #8]
d00206ea:	3301      	adds	r3, #1
d00206ec:	b2db      	uxtb	r3, r3
d00206ee:	f88d 3008 	strb.w	r3, [sp, #8]
d00206f2:	f89d 3008 	ldrb.w	r3, [sp, #8]
d00206f6:	b2db      	uxtb	r3, r3
d00206f8:	f88d 3008 	strb.w	r3, [sp, #8]
d00206fc:	7a20      	ldrb	r0, [r4, #8]
d00206fe:	7a61      	ldrb	r1, [r4, #9]
d0020700:	7aa2      	ldrb	r2, [r4, #10]
d0020702:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d0020706:	7ae3      	ldrb	r3, [r4, #11]
d0020708:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d002070c:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0020710:	681b      	ldr	r3, [r3, #0]
d0020712:	689b      	ldr	r3, [r3, #8]
d0020714:	4798      	blx	r3
d0020716:	782b      	ldrb	r3, [r5, #0]
d0020718:	f1c3 0301 	rsb	r3, r3, #1
d002071c:	b2db      	uxtb	r3, r3
d002071e:	702b      	strb	r3, [r5, #0]
d0020720:	782b      	ldrb	r3, [r5, #0]
d0020722:	7a20      	ldrb	r0, [r4, #8]
d0020724:	7a61      	ldrb	r1, [r4, #9]
d0020726:	7aa2      	ldrb	r2, [r4, #10]
d0020728:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d002072c:	2b00      	cmp	r3, #0
d002072e:	d197      	bne.n	d0020660 <main+0xfc>
d0020730:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d0020734:	7ae3      	ldrb	r3, [r4, #11]
d0020736:	6830      	ldr	r0, [r6, #0]
d0020738:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d002073c:	681b      	ldr	r3, [r3, #0]
d002073e:	699b      	ldr	r3, [r3, #24]
d0020740:	4798      	blx	r3
d0020742:	7a20      	ldrb	r0, [r4, #8]
d0020744:	7a61      	ldrb	r1, [r4, #9]
d0020746:	7aa2      	ldrb	r2, [r4, #10]
d0020748:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d002074c:	7ae3      	ldrb	r3, [r4, #11]
d002074e:	6838      	ldr	r0, [r7, #0]
d0020750:	e796      	b.n	d0020680 <main+0x11c>
d0020752:	bf00      	nop
d0020754:	e000ed14 	.word	0xe000ed14
d0020758:	2001f000 	.word	0x2001f000
d002075c:	d0021fc8 	.word	0xd0021fc8
d0020760:	d0021fcc 	.word	0xd0021fcc
d0020764:	d00210a8 	.word	0xd00210a8
d0020768:	d0020f64 	.word	0xd0020f64

d002076c <__errno>:
d002076c:	4b01      	ldr	r3, [pc, #4]	; (d0020774 <__errno+0x8>)
d002076e:	6818      	ldr	r0, [r3, #0]
d0020770:	4770      	bx	lr
d0020772:	bf00      	nop
d0020774:	d002101c 	.word	0xd002101c

d0020778 <setbuf>:
d0020778:	2900      	cmp	r1, #0
d002077a:	f44f 6380 	mov.w	r3, #1024	; 0x400
d002077e:	bf0c      	ite	eq
d0020780:	2202      	moveq	r2, #2
d0020782:	2200      	movne	r2, #0
d0020784:	f000 b800 	b.w	d0020788 <setvbuf>

d0020788 <setvbuf>:
d0020788:	e92d 43f7 	stmdb	sp!, {r0, r1, r2, r4, r5, r6, r7, r8, r9, lr}
d002078c:	461d      	mov	r5, r3
d002078e:	4b5d      	ldr	r3, [pc, #372]	; (d0020904 <setvbuf+0x17c>)
d0020790:	681f      	ldr	r7, [r3, #0]
d0020792:	4604      	mov	r4, r0
d0020794:	460e      	mov	r6, r1
d0020796:	4690      	mov	r8, r2
d0020798:	b127      	cbz	r7, d00207a4 <setvbuf+0x1c>
d002079a:	69bb      	ldr	r3, [r7, #24]
d002079c:	b913      	cbnz	r3, d00207a4 <setvbuf+0x1c>
d002079e:	4638      	mov	r0, r7
d00207a0:	f000 f9d2 	bl	d0020b48 <__sinit>
d00207a4:	4b58      	ldr	r3, [pc, #352]	; (d0020908 <setvbuf+0x180>)
d00207a6:	429c      	cmp	r4, r3
d00207a8:	d167      	bne.n	d002087a <setvbuf+0xf2>
d00207aa:	687c      	ldr	r4, [r7, #4]
d00207ac:	f1b8 0f02 	cmp.w	r8, #2
d00207b0:	d006      	beq.n	d00207c0 <setvbuf+0x38>
d00207b2:	f1b8 0f01 	cmp.w	r8, #1
d00207b6:	f200 809f 	bhi.w	d00208f8 <setvbuf+0x170>
d00207ba:	2d00      	cmp	r5, #0
d00207bc:	f2c0 809c 	blt.w	d00208f8 <setvbuf+0x170>
d00207c0:	6e63      	ldr	r3, [r4, #100]	; 0x64
d00207c2:	07db      	lsls	r3, r3, #31
d00207c4:	d405      	bmi.n	d00207d2 <setvbuf+0x4a>
d00207c6:	89a3      	ldrh	r3, [r4, #12]
d00207c8:	0598      	lsls	r0, r3, #22
d00207ca:	d402      	bmi.n	d00207d2 <setvbuf+0x4a>
d00207cc:	6da0      	ldr	r0, [r4, #88]	; 0x58
d00207ce:	f000 fa59 	bl	d0020c84 <__retarget_lock_acquire_recursive>
d00207d2:	4621      	mov	r1, r4
d00207d4:	4638      	mov	r0, r7
d00207d6:	f000 f923 	bl	d0020a20 <_fflush_r>
d00207da:	6b61      	ldr	r1, [r4, #52]	; 0x34
d00207dc:	b141      	cbz	r1, d00207f0 <setvbuf+0x68>
d00207de:	f104 0344 	add.w	r3, r4, #68	; 0x44
d00207e2:	4299      	cmp	r1, r3
d00207e4:	d002      	beq.n	d00207ec <setvbuf+0x64>
d00207e6:	4638      	mov	r0, r7
d00207e8:	f000 fa7a 	bl	d0020ce0 <_free_r>
d00207ec:	2300      	movs	r3, #0
d00207ee:	6363      	str	r3, [r4, #52]	; 0x34
d00207f0:	2300      	movs	r3, #0
d00207f2:	61a3      	str	r3, [r4, #24]
d00207f4:	6063      	str	r3, [r4, #4]
d00207f6:	89a3      	ldrh	r3, [r4, #12]
d00207f8:	0619      	lsls	r1, r3, #24
d00207fa:	d503      	bpl.n	d0020804 <setvbuf+0x7c>
d00207fc:	6921      	ldr	r1, [r4, #16]
d00207fe:	4638      	mov	r0, r7
d0020800:	f000 fa6e 	bl	d0020ce0 <_free_r>
d0020804:	89a3      	ldrh	r3, [r4, #12]
d0020806:	f423 634a 	bic.w	r3, r3, #3232	; 0xca0
d002080a:	f023 0303 	bic.w	r3, r3, #3
d002080e:	f1b8 0f02 	cmp.w	r8, #2
d0020812:	81a3      	strh	r3, [r4, #12]
d0020814:	d06c      	beq.n	d00208f0 <setvbuf+0x168>
d0020816:	ab01      	add	r3, sp, #4
d0020818:	466a      	mov	r2, sp
d002081a:	4621      	mov	r1, r4
d002081c:	4638      	mov	r0, r7
d002081e:	f000 fa33 	bl	d0020c88 <__swhatbuf_r>
d0020822:	89a3      	ldrh	r3, [r4, #12]
d0020824:	4318      	orrs	r0, r3
d0020826:	81a0      	strh	r0, [r4, #12]
d0020828:	2d00      	cmp	r5, #0
d002082a:	d130      	bne.n	d002088e <setvbuf+0x106>
d002082c:	9d00      	ldr	r5, [sp, #0]
d002082e:	4628      	mov	r0, r5
d0020830:	f000 fa4e 	bl	d0020cd0 <malloc>
d0020834:	4606      	mov	r6, r0
d0020836:	2800      	cmp	r0, #0
d0020838:	d155      	bne.n	d00208e6 <setvbuf+0x15e>
d002083a:	f8dd 9000 	ldr.w	r9, [sp]
d002083e:	45a9      	cmp	r9, r5
d0020840:	d14a      	bne.n	d00208d8 <setvbuf+0x150>
d0020842:	f04f 35ff 	mov.w	r5, #4294967295	; 0xffffffff
d0020846:	2200      	movs	r2, #0
d0020848:	60a2      	str	r2, [r4, #8]
d002084a:	f104 0247 	add.w	r2, r4, #71	; 0x47
d002084e:	6022      	str	r2, [r4, #0]
d0020850:	6122      	str	r2, [r4, #16]
d0020852:	2201      	movs	r2, #1
d0020854:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
d0020858:	6162      	str	r2, [r4, #20]
d002085a:	6e62      	ldr	r2, [r4, #100]	; 0x64
d002085c:	f043 0302 	orr.w	r3, r3, #2
d0020860:	07d2      	lsls	r2, r2, #31
d0020862:	81a3      	strh	r3, [r4, #12]
d0020864:	d405      	bmi.n	d0020872 <setvbuf+0xea>
d0020866:	f413 7f00 	tst.w	r3, #512	; 0x200
d002086a:	d102      	bne.n	d0020872 <setvbuf+0xea>
d002086c:	6da0      	ldr	r0, [r4, #88]	; 0x58
d002086e:	f000 fa0a 	bl	d0020c86 <__retarget_lock_release_recursive>
d0020872:	4628      	mov	r0, r5
d0020874:	b003      	add	sp, #12
d0020876:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
d002087a:	4b24      	ldr	r3, [pc, #144]	; (d002090c <setvbuf+0x184>)
d002087c:	429c      	cmp	r4, r3
d002087e:	d101      	bne.n	d0020884 <setvbuf+0xfc>
d0020880:	68bc      	ldr	r4, [r7, #8]
d0020882:	e793      	b.n	d00207ac <setvbuf+0x24>
d0020884:	4b22      	ldr	r3, [pc, #136]	; (d0020910 <setvbuf+0x188>)
d0020886:	429c      	cmp	r4, r3
d0020888:	bf08      	it	eq
d002088a:	68fc      	ldreq	r4, [r7, #12]
d002088c:	e78e      	b.n	d00207ac <setvbuf+0x24>
d002088e:	2e00      	cmp	r6, #0
d0020890:	d0cd      	beq.n	d002082e <setvbuf+0xa6>
d0020892:	69bb      	ldr	r3, [r7, #24]
d0020894:	b913      	cbnz	r3, d002089c <setvbuf+0x114>
d0020896:	4638      	mov	r0, r7
d0020898:	f000 f956 	bl	d0020b48 <__sinit>
d002089c:	f1b8 0f01 	cmp.w	r8, #1
d00208a0:	bf08      	it	eq
d00208a2:	89a3      	ldrheq	r3, [r4, #12]
d00208a4:	6026      	str	r6, [r4, #0]
d00208a6:	bf04      	itt	eq
d00208a8:	f043 0301 	orreq.w	r3, r3, #1
d00208ac:	81a3      	strheq	r3, [r4, #12]
d00208ae:	89a2      	ldrh	r2, [r4, #12]
d00208b0:	f012 0308 	ands.w	r3, r2, #8
d00208b4:	e9c4 6504 	strd	r6, r5, [r4, #16]
d00208b8:	d01c      	beq.n	d00208f4 <setvbuf+0x16c>
d00208ba:	07d3      	lsls	r3, r2, #31
d00208bc:	bf41      	itttt	mi
d00208be:	2300      	movmi	r3, #0
d00208c0:	426d      	negmi	r5, r5
d00208c2:	60a3      	strmi	r3, [r4, #8]
d00208c4:	61a5      	strmi	r5, [r4, #24]
d00208c6:	bf58      	it	pl
d00208c8:	60a5      	strpl	r5, [r4, #8]
d00208ca:	6e65      	ldr	r5, [r4, #100]	; 0x64
d00208cc:	f015 0501 	ands.w	r5, r5, #1
d00208d0:	d115      	bne.n	d00208fe <setvbuf+0x176>
d00208d2:	f412 7f00 	tst.w	r2, #512	; 0x200
d00208d6:	e7c8      	b.n	d002086a <setvbuf+0xe2>
d00208d8:	4648      	mov	r0, r9
d00208da:	f000 f9f9 	bl	d0020cd0 <malloc>
d00208de:	4606      	mov	r6, r0
d00208e0:	2800      	cmp	r0, #0
d00208e2:	d0ae      	beq.n	d0020842 <setvbuf+0xba>
d00208e4:	464d      	mov	r5, r9
d00208e6:	89a3      	ldrh	r3, [r4, #12]
d00208e8:	f043 0380 	orr.w	r3, r3, #128	; 0x80
d00208ec:	81a3      	strh	r3, [r4, #12]
d00208ee:	e7d0      	b.n	d0020892 <setvbuf+0x10a>
d00208f0:	2500      	movs	r5, #0
d00208f2:	e7a8      	b.n	d0020846 <setvbuf+0xbe>
d00208f4:	60a3      	str	r3, [r4, #8]
d00208f6:	e7e8      	b.n	d00208ca <setvbuf+0x142>
d00208f8:	f04f 35ff 	mov.w	r5, #4294967295	; 0xffffffff
d00208fc:	e7b9      	b.n	d0020872 <setvbuf+0xea>
d00208fe:	2500      	movs	r5, #0
d0020900:	e7b7      	b.n	d0020872 <setvbuf+0xea>
d0020902:	bf00      	nop
d0020904:	d002101c 	.word	0xd002101c
d0020908:	d0020fd4 	.word	0xd0020fd4
d002090c:	d0020ff4 	.word	0xd0020ff4
d0020910:	d0020fb4 	.word	0xd0020fb4

d0020914 <__sflush_r>:
d0020914:	898a      	ldrh	r2, [r1, #12]
d0020916:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
d002091a:	4605      	mov	r5, r0
d002091c:	0710      	lsls	r0, r2, #28
d002091e:	460c      	mov	r4, r1
d0020920:	d458      	bmi.n	d00209d4 <__sflush_r+0xc0>
d0020922:	684b      	ldr	r3, [r1, #4]
d0020924:	2b00      	cmp	r3, #0
d0020926:	dc05      	bgt.n	d0020934 <__sflush_r+0x20>
d0020928:	6c0b      	ldr	r3, [r1, #64]	; 0x40
d002092a:	2b00      	cmp	r3, #0
d002092c:	dc02      	bgt.n	d0020934 <__sflush_r+0x20>
d002092e:	2000      	movs	r0, #0
d0020930:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
d0020934:	6ae6      	ldr	r6, [r4, #44]	; 0x2c
d0020936:	2e00      	cmp	r6, #0
d0020938:	d0f9      	beq.n	d002092e <__sflush_r+0x1a>
d002093a:	2300      	movs	r3, #0
d002093c:	f412 5280 	ands.w	r2, r2, #4096	; 0x1000
d0020940:	682f      	ldr	r7, [r5, #0]
d0020942:	602b      	str	r3, [r5, #0]
d0020944:	d032      	beq.n	d00209ac <__sflush_r+0x98>
d0020946:	6d60      	ldr	r0, [r4, #84]	; 0x54
d0020948:	89a3      	ldrh	r3, [r4, #12]
d002094a:	075a      	lsls	r2, r3, #29
d002094c:	d505      	bpl.n	d002095a <__sflush_r+0x46>
d002094e:	6863      	ldr	r3, [r4, #4]
d0020950:	1ac0      	subs	r0, r0, r3
d0020952:	6b63      	ldr	r3, [r4, #52]	; 0x34
d0020954:	b10b      	cbz	r3, d002095a <__sflush_r+0x46>
d0020956:	6c23      	ldr	r3, [r4, #64]	; 0x40
d0020958:	1ac0      	subs	r0, r0, r3
d002095a:	2300      	movs	r3, #0
d002095c:	4602      	mov	r2, r0
d002095e:	6ae6      	ldr	r6, [r4, #44]	; 0x2c
d0020960:	6a21      	ldr	r1, [r4, #32]
d0020962:	4628      	mov	r0, r5
d0020964:	47b0      	blx	r6
d0020966:	1c43      	adds	r3, r0, #1
d0020968:	89a3      	ldrh	r3, [r4, #12]
d002096a:	d106      	bne.n	d002097a <__sflush_r+0x66>
d002096c:	6829      	ldr	r1, [r5, #0]
d002096e:	291d      	cmp	r1, #29
d0020970:	d82c      	bhi.n	d00209cc <__sflush_r+0xb8>
d0020972:	4a2a      	ldr	r2, [pc, #168]	; (d0020a1c <__sflush_r+0x108>)
d0020974:	40ca      	lsrs	r2, r1
d0020976:	07d6      	lsls	r6, r2, #31
d0020978:	d528      	bpl.n	d00209cc <__sflush_r+0xb8>
d002097a:	2200      	movs	r2, #0
d002097c:	6062      	str	r2, [r4, #4]
d002097e:	04d9      	lsls	r1, r3, #19
d0020980:	6922      	ldr	r2, [r4, #16]
d0020982:	6022      	str	r2, [r4, #0]
d0020984:	d504      	bpl.n	d0020990 <__sflush_r+0x7c>
d0020986:	1c42      	adds	r2, r0, #1
d0020988:	d101      	bne.n	d002098e <__sflush_r+0x7a>
d002098a:	682b      	ldr	r3, [r5, #0]
d002098c:	b903      	cbnz	r3, d0020990 <__sflush_r+0x7c>
d002098e:	6560      	str	r0, [r4, #84]	; 0x54
d0020990:	6b61      	ldr	r1, [r4, #52]	; 0x34
d0020992:	602f      	str	r7, [r5, #0]
d0020994:	2900      	cmp	r1, #0
d0020996:	d0ca      	beq.n	d002092e <__sflush_r+0x1a>
d0020998:	f104 0344 	add.w	r3, r4, #68	; 0x44
d002099c:	4299      	cmp	r1, r3
d002099e:	d002      	beq.n	d00209a6 <__sflush_r+0x92>
d00209a0:	4628      	mov	r0, r5
d00209a2:	f000 f99d 	bl	d0020ce0 <_free_r>
d00209a6:	2000      	movs	r0, #0
d00209a8:	6360      	str	r0, [r4, #52]	; 0x34
d00209aa:	e7c1      	b.n	d0020930 <__sflush_r+0x1c>
d00209ac:	6a21      	ldr	r1, [r4, #32]
d00209ae:	2301      	movs	r3, #1
d00209b0:	4628      	mov	r0, r5
d00209b2:	47b0      	blx	r6
d00209b4:	1c41      	adds	r1, r0, #1
d00209b6:	d1c7      	bne.n	d0020948 <__sflush_r+0x34>
d00209b8:	682b      	ldr	r3, [r5, #0]
d00209ba:	2b00      	cmp	r3, #0
d00209bc:	d0c4      	beq.n	d0020948 <__sflush_r+0x34>
d00209be:	2b1d      	cmp	r3, #29
d00209c0:	d001      	beq.n	d00209c6 <__sflush_r+0xb2>
d00209c2:	2b16      	cmp	r3, #22
d00209c4:	d101      	bne.n	d00209ca <__sflush_r+0xb6>
d00209c6:	602f      	str	r7, [r5, #0]
d00209c8:	e7b1      	b.n	d002092e <__sflush_r+0x1a>
d00209ca:	89a3      	ldrh	r3, [r4, #12]
d00209cc:	f043 0340 	orr.w	r3, r3, #64	; 0x40
d00209d0:	81a3      	strh	r3, [r4, #12]
d00209d2:	e7ad      	b.n	d0020930 <__sflush_r+0x1c>
d00209d4:	690f      	ldr	r7, [r1, #16]
d00209d6:	2f00      	cmp	r7, #0
d00209d8:	d0a9      	beq.n	d002092e <__sflush_r+0x1a>
d00209da:	0793      	lsls	r3, r2, #30
d00209dc:	680e      	ldr	r6, [r1, #0]
d00209de:	bf08      	it	eq
d00209e0:	694b      	ldreq	r3, [r1, #20]
d00209e2:	600f      	str	r7, [r1, #0]
d00209e4:	bf18      	it	ne
d00209e6:	2300      	movne	r3, #0
d00209e8:	eba6 0807 	sub.w	r8, r6, r7
d00209ec:	608b      	str	r3, [r1, #8]
d00209ee:	f1b8 0f00 	cmp.w	r8, #0
d00209f2:	dd9c      	ble.n	d002092e <__sflush_r+0x1a>
d00209f4:	6a21      	ldr	r1, [r4, #32]
d00209f6:	6aa6      	ldr	r6, [r4, #40]	; 0x28
d00209f8:	4643      	mov	r3, r8
d00209fa:	463a      	mov	r2, r7
d00209fc:	4628      	mov	r0, r5
d00209fe:	47b0      	blx	r6
d0020a00:	2800      	cmp	r0, #0
d0020a02:	dc06      	bgt.n	d0020a12 <__sflush_r+0xfe>
d0020a04:	89a3      	ldrh	r3, [r4, #12]
d0020a06:	f043 0340 	orr.w	r3, r3, #64	; 0x40
d0020a0a:	81a3      	strh	r3, [r4, #12]
d0020a0c:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d0020a10:	e78e      	b.n	d0020930 <__sflush_r+0x1c>
d0020a12:	4407      	add	r7, r0
d0020a14:	eba8 0800 	sub.w	r8, r8, r0
d0020a18:	e7e9      	b.n	d00209ee <__sflush_r+0xda>
d0020a1a:	bf00      	nop
d0020a1c:	20400001 	.word	0x20400001

d0020a20 <_fflush_r>:
d0020a20:	b538      	push	{r3, r4, r5, lr}
d0020a22:	690b      	ldr	r3, [r1, #16]
d0020a24:	4605      	mov	r5, r0
d0020a26:	460c      	mov	r4, r1
d0020a28:	b913      	cbnz	r3, d0020a30 <_fflush_r+0x10>
d0020a2a:	2500      	movs	r5, #0
d0020a2c:	4628      	mov	r0, r5
d0020a2e:	bd38      	pop	{r3, r4, r5, pc}
d0020a30:	b118      	cbz	r0, d0020a3a <_fflush_r+0x1a>
d0020a32:	6983      	ldr	r3, [r0, #24]
d0020a34:	b90b      	cbnz	r3, d0020a3a <_fflush_r+0x1a>
d0020a36:	f000 f887 	bl	d0020b48 <__sinit>
d0020a3a:	4b14      	ldr	r3, [pc, #80]	; (d0020a8c <_fflush_r+0x6c>)
d0020a3c:	429c      	cmp	r4, r3
d0020a3e:	d11b      	bne.n	d0020a78 <_fflush_r+0x58>
d0020a40:	686c      	ldr	r4, [r5, #4]
d0020a42:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
d0020a46:	2b00      	cmp	r3, #0
d0020a48:	d0ef      	beq.n	d0020a2a <_fflush_r+0xa>
d0020a4a:	6e62      	ldr	r2, [r4, #100]	; 0x64
d0020a4c:	07d0      	lsls	r0, r2, #31
d0020a4e:	d404      	bmi.n	d0020a5a <_fflush_r+0x3a>
d0020a50:	0599      	lsls	r1, r3, #22
d0020a52:	d402      	bmi.n	d0020a5a <_fflush_r+0x3a>
d0020a54:	6da0      	ldr	r0, [r4, #88]	; 0x58
d0020a56:	f000 f915 	bl	d0020c84 <__retarget_lock_acquire_recursive>
d0020a5a:	4628      	mov	r0, r5
d0020a5c:	4621      	mov	r1, r4
d0020a5e:	f7ff ff59 	bl	d0020914 <__sflush_r>
d0020a62:	6e63      	ldr	r3, [r4, #100]	; 0x64
d0020a64:	07da      	lsls	r2, r3, #31
d0020a66:	4605      	mov	r5, r0
d0020a68:	d4e0      	bmi.n	d0020a2c <_fflush_r+0xc>
d0020a6a:	89a3      	ldrh	r3, [r4, #12]
d0020a6c:	059b      	lsls	r3, r3, #22
d0020a6e:	d4dd      	bmi.n	d0020a2c <_fflush_r+0xc>
d0020a70:	6da0      	ldr	r0, [r4, #88]	; 0x58
d0020a72:	f000 f908 	bl	d0020c86 <__retarget_lock_release_recursive>
d0020a76:	e7d9      	b.n	d0020a2c <_fflush_r+0xc>
d0020a78:	4b05      	ldr	r3, [pc, #20]	; (d0020a90 <_fflush_r+0x70>)
d0020a7a:	429c      	cmp	r4, r3
d0020a7c:	d101      	bne.n	d0020a82 <_fflush_r+0x62>
d0020a7e:	68ac      	ldr	r4, [r5, #8]
d0020a80:	e7df      	b.n	d0020a42 <_fflush_r+0x22>
d0020a82:	4b04      	ldr	r3, [pc, #16]	; (d0020a94 <_fflush_r+0x74>)
d0020a84:	429c      	cmp	r4, r3
d0020a86:	bf08      	it	eq
d0020a88:	68ec      	ldreq	r4, [r5, #12]
d0020a8a:	e7da      	b.n	d0020a42 <_fflush_r+0x22>
d0020a8c:	d0020fd4 	.word	0xd0020fd4
d0020a90:	d0020ff4 	.word	0xd0020ff4
d0020a94:	d0020fb4 	.word	0xd0020fb4

d0020a98 <std>:
d0020a98:	2300      	movs	r3, #0
d0020a9a:	b510      	push	{r4, lr}
d0020a9c:	4604      	mov	r4, r0
d0020a9e:	e9c0 3300 	strd	r3, r3, [r0]
d0020aa2:	e9c0 3304 	strd	r3, r3, [r0, #16]
d0020aa6:	6083      	str	r3, [r0, #8]
d0020aa8:	8181      	strh	r1, [r0, #12]
d0020aaa:	6643      	str	r3, [r0, #100]	; 0x64
d0020aac:	81c2      	strh	r2, [r0, #14]
d0020aae:	6183      	str	r3, [r0, #24]
d0020ab0:	4619      	mov	r1, r3
d0020ab2:	2208      	movs	r2, #8
d0020ab4:	305c      	adds	r0, #92	; 0x5c
d0020ab6:	f7ff fac1 	bl	d002003c <memset>
d0020aba:	4b05      	ldr	r3, [pc, #20]	; (d0020ad0 <std+0x38>)
d0020abc:	6263      	str	r3, [r4, #36]	; 0x24
d0020abe:	4b05      	ldr	r3, [pc, #20]	; (d0020ad4 <std+0x3c>)
d0020ac0:	62a3      	str	r3, [r4, #40]	; 0x28
d0020ac2:	4b05      	ldr	r3, [pc, #20]	; (d0020ad8 <std+0x40>)
d0020ac4:	62e3      	str	r3, [r4, #44]	; 0x2c
d0020ac6:	4b05      	ldr	r3, [pc, #20]	; (d0020adc <std+0x44>)
d0020ac8:	6224      	str	r4, [r4, #32]
d0020aca:	6323      	str	r3, [r4, #48]	; 0x30
d0020acc:	bd10      	pop	{r4, pc}
d0020ace:	bf00      	nop
d0020ad0:	d0020e35 	.word	0xd0020e35
d0020ad4:	d0020e57 	.word	0xd0020e57
d0020ad8:	d0020e8f 	.word	0xd0020e8f
d0020adc:	d0020eb3 	.word	0xd0020eb3

d0020ae0 <_cleanup_r>:
d0020ae0:	4901      	ldr	r1, [pc, #4]	; (d0020ae8 <_cleanup_r+0x8>)
d0020ae2:	f000 b8af 	b.w	d0020c44 <_fwalk_reent>
d0020ae6:	bf00      	nop
d0020ae8:	d0020a21 	.word	0xd0020a21

d0020aec <__sfmoreglue>:
d0020aec:	b570      	push	{r4, r5, r6, lr}
d0020aee:	1e4a      	subs	r2, r1, #1
d0020af0:	2568      	movs	r5, #104	; 0x68
d0020af2:	4355      	muls	r5, r2
d0020af4:	460e      	mov	r6, r1
d0020af6:	f105 0174 	add.w	r1, r5, #116	; 0x74
d0020afa:	f000 f941 	bl	d0020d80 <_malloc_r>
d0020afe:	4604      	mov	r4, r0
d0020b00:	b140      	cbz	r0, d0020b14 <__sfmoreglue+0x28>
d0020b02:	2100      	movs	r1, #0
d0020b04:	e9c0 1600 	strd	r1, r6, [r0]
d0020b08:	300c      	adds	r0, #12
d0020b0a:	60a0      	str	r0, [r4, #8]
d0020b0c:	f105 0268 	add.w	r2, r5, #104	; 0x68
d0020b10:	f7ff fa94 	bl	d002003c <memset>
d0020b14:	4620      	mov	r0, r4
d0020b16:	bd70      	pop	{r4, r5, r6, pc}

d0020b18 <__sfp_lock_acquire>:
d0020b18:	4801      	ldr	r0, [pc, #4]	; (d0020b20 <__sfp_lock_acquire+0x8>)
d0020b1a:	f000 b8b3 	b.w	d0020c84 <__retarget_lock_acquire_recursive>
d0020b1e:	bf00      	nop
d0020b20:	d0021fd8 	.word	0xd0021fd8

d0020b24 <__sfp_lock_release>:
d0020b24:	4801      	ldr	r0, [pc, #4]	; (d0020b2c <__sfp_lock_release+0x8>)
d0020b26:	f000 b8ae 	b.w	d0020c86 <__retarget_lock_release_recursive>
d0020b2a:	bf00      	nop
d0020b2c:	d0021fd8 	.word	0xd0021fd8

d0020b30 <__sinit_lock_acquire>:
d0020b30:	4801      	ldr	r0, [pc, #4]	; (d0020b38 <__sinit_lock_acquire+0x8>)
d0020b32:	f000 b8a7 	b.w	d0020c84 <__retarget_lock_acquire_recursive>
d0020b36:	bf00      	nop
d0020b38:	d0021fd3 	.word	0xd0021fd3

d0020b3c <__sinit_lock_release>:
d0020b3c:	4801      	ldr	r0, [pc, #4]	; (d0020b44 <__sinit_lock_release+0x8>)
d0020b3e:	f000 b8a2 	b.w	d0020c86 <__retarget_lock_release_recursive>
d0020b42:	bf00      	nop
d0020b44:	d0021fd3 	.word	0xd0021fd3

d0020b48 <__sinit>:
d0020b48:	b510      	push	{r4, lr}
d0020b4a:	4604      	mov	r4, r0
d0020b4c:	f7ff fff0 	bl	d0020b30 <__sinit_lock_acquire>
d0020b50:	69a3      	ldr	r3, [r4, #24]
d0020b52:	b11b      	cbz	r3, d0020b5c <__sinit+0x14>
d0020b54:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
d0020b58:	f7ff bff0 	b.w	d0020b3c <__sinit_lock_release>
d0020b5c:	e9c4 3312 	strd	r3, r3, [r4, #72]	; 0x48
d0020b60:	6523      	str	r3, [r4, #80]	; 0x50
d0020b62:	4b13      	ldr	r3, [pc, #76]	; (d0020bb0 <__sinit+0x68>)
d0020b64:	4a13      	ldr	r2, [pc, #76]	; (d0020bb4 <__sinit+0x6c>)
d0020b66:	681b      	ldr	r3, [r3, #0]
d0020b68:	62a2      	str	r2, [r4, #40]	; 0x28
d0020b6a:	42a3      	cmp	r3, r4
d0020b6c:	bf04      	itt	eq
d0020b6e:	2301      	moveq	r3, #1
d0020b70:	61a3      	streq	r3, [r4, #24]
d0020b72:	4620      	mov	r0, r4
d0020b74:	f000 f820 	bl	d0020bb8 <__sfp>
d0020b78:	6060      	str	r0, [r4, #4]
d0020b7a:	4620      	mov	r0, r4
d0020b7c:	f000 f81c 	bl	d0020bb8 <__sfp>
d0020b80:	60a0      	str	r0, [r4, #8]
d0020b82:	4620      	mov	r0, r4
d0020b84:	f000 f818 	bl	d0020bb8 <__sfp>
d0020b88:	2200      	movs	r2, #0
d0020b8a:	60e0      	str	r0, [r4, #12]
d0020b8c:	2104      	movs	r1, #4
d0020b8e:	6860      	ldr	r0, [r4, #4]
d0020b90:	f7ff ff82 	bl	d0020a98 <std>
d0020b94:	68a0      	ldr	r0, [r4, #8]
d0020b96:	2201      	movs	r2, #1
d0020b98:	2109      	movs	r1, #9
d0020b9a:	f7ff ff7d 	bl	d0020a98 <std>
d0020b9e:	68e0      	ldr	r0, [r4, #12]
d0020ba0:	2202      	movs	r2, #2
d0020ba2:	2112      	movs	r1, #18
d0020ba4:	f7ff ff78 	bl	d0020a98 <std>
d0020ba8:	2301      	movs	r3, #1
d0020baa:	61a3      	str	r3, [r4, #24]
d0020bac:	e7d2      	b.n	d0020b54 <__sinit+0xc>
d0020bae:	bf00      	nop
d0020bb0:	d0020f60 	.word	0xd0020f60
d0020bb4:	d0020ae1 	.word	0xd0020ae1

d0020bb8 <__sfp>:
d0020bb8:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d0020bba:	4607      	mov	r7, r0
d0020bbc:	f7ff ffac 	bl	d0020b18 <__sfp_lock_acquire>
d0020bc0:	4b1e      	ldr	r3, [pc, #120]	; (d0020c3c <__sfp+0x84>)
d0020bc2:	681e      	ldr	r6, [r3, #0]
d0020bc4:	69b3      	ldr	r3, [r6, #24]
d0020bc6:	b913      	cbnz	r3, d0020bce <__sfp+0x16>
d0020bc8:	4630      	mov	r0, r6
d0020bca:	f7ff ffbd 	bl	d0020b48 <__sinit>
d0020bce:	3648      	adds	r6, #72	; 0x48
d0020bd0:	e9d6 3401 	ldrd	r3, r4, [r6, #4]
d0020bd4:	3b01      	subs	r3, #1
d0020bd6:	d503      	bpl.n	d0020be0 <__sfp+0x28>
d0020bd8:	6833      	ldr	r3, [r6, #0]
d0020bda:	b30b      	cbz	r3, d0020c20 <__sfp+0x68>
d0020bdc:	6836      	ldr	r6, [r6, #0]
d0020bde:	e7f7      	b.n	d0020bd0 <__sfp+0x18>
d0020be0:	f9b4 500c 	ldrsh.w	r5, [r4, #12]
d0020be4:	b9d5      	cbnz	r5, d0020c1c <__sfp+0x64>
d0020be6:	4b16      	ldr	r3, [pc, #88]	; (d0020c40 <__sfp+0x88>)
d0020be8:	60e3      	str	r3, [r4, #12]
d0020bea:	f104 0058 	add.w	r0, r4, #88	; 0x58
d0020bee:	6665      	str	r5, [r4, #100]	; 0x64
d0020bf0:	f000 f847 	bl	d0020c82 <__retarget_lock_init_recursive>
d0020bf4:	f7ff ff96 	bl	d0020b24 <__sfp_lock_release>
d0020bf8:	e9c4 5501 	strd	r5, r5, [r4, #4]
d0020bfc:	e9c4 5504 	strd	r5, r5, [r4, #16]
d0020c00:	6025      	str	r5, [r4, #0]
d0020c02:	61a5      	str	r5, [r4, #24]
d0020c04:	2208      	movs	r2, #8
d0020c06:	4629      	mov	r1, r5
d0020c08:	f104 005c 	add.w	r0, r4, #92	; 0x5c
d0020c0c:	f7ff fa16 	bl	d002003c <memset>
d0020c10:	e9c4 550d 	strd	r5, r5, [r4, #52]	; 0x34
d0020c14:	e9c4 5512 	strd	r5, r5, [r4, #72]	; 0x48
d0020c18:	4620      	mov	r0, r4
d0020c1a:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d0020c1c:	3468      	adds	r4, #104	; 0x68
d0020c1e:	e7d9      	b.n	d0020bd4 <__sfp+0x1c>
d0020c20:	2104      	movs	r1, #4
d0020c22:	4638      	mov	r0, r7
d0020c24:	f7ff ff62 	bl	d0020aec <__sfmoreglue>
d0020c28:	4604      	mov	r4, r0
d0020c2a:	6030      	str	r0, [r6, #0]
d0020c2c:	2800      	cmp	r0, #0
d0020c2e:	d1d5      	bne.n	d0020bdc <__sfp+0x24>
d0020c30:	f7ff ff78 	bl	d0020b24 <__sfp_lock_release>
d0020c34:	230c      	movs	r3, #12
d0020c36:	603b      	str	r3, [r7, #0]
d0020c38:	e7ee      	b.n	d0020c18 <__sfp+0x60>
d0020c3a:	bf00      	nop
d0020c3c:	d0020f60 	.word	0xd0020f60
d0020c40:	ffff0001 	.word	0xffff0001

d0020c44 <_fwalk_reent>:
d0020c44:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
d0020c48:	4606      	mov	r6, r0
d0020c4a:	4688      	mov	r8, r1
d0020c4c:	f100 0448 	add.w	r4, r0, #72	; 0x48
d0020c50:	2700      	movs	r7, #0
d0020c52:	e9d4 9501 	ldrd	r9, r5, [r4, #4]
d0020c56:	f1b9 0901 	subs.w	r9, r9, #1
d0020c5a:	d505      	bpl.n	d0020c68 <_fwalk_reent+0x24>
d0020c5c:	6824      	ldr	r4, [r4, #0]
d0020c5e:	2c00      	cmp	r4, #0
d0020c60:	d1f7      	bne.n	d0020c52 <_fwalk_reent+0xe>
d0020c62:	4638      	mov	r0, r7
d0020c64:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
d0020c68:	89ab      	ldrh	r3, [r5, #12]
d0020c6a:	2b01      	cmp	r3, #1
d0020c6c:	d907      	bls.n	d0020c7e <_fwalk_reent+0x3a>
d0020c6e:	f9b5 300e 	ldrsh.w	r3, [r5, #14]
d0020c72:	3301      	adds	r3, #1
d0020c74:	d003      	beq.n	d0020c7e <_fwalk_reent+0x3a>
d0020c76:	4629      	mov	r1, r5
d0020c78:	4630      	mov	r0, r6
d0020c7a:	47c0      	blx	r8
d0020c7c:	4307      	orrs	r7, r0
d0020c7e:	3568      	adds	r5, #104	; 0x68
d0020c80:	e7e9      	b.n	d0020c56 <_fwalk_reent+0x12>

d0020c82 <__retarget_lock_init_recursive>:
d0020c82:	4770      	bx	lr

d0020c84 <__retarget_lock_acquire_recursive>:
d0020c84:	4770      	bx	lr

d0020c86 <__retarget_lock_release_recursive>:
d0020c86:	4770      	bx	lr

d0020c88 <__swhatbuf_r>:
d0020c88:	b570      	push	{r4, r5, r6, lr}
d0020c8a:	460e      	mov	r6, r1
d0020c8c:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d0020c90:	2900      	cmp	r1, #0
d0020c92:	b096      	sub	sp, #88	; 0x58
d0020c94:	4614      	mov	r4, r2
d0020c96:	461d      	mov	r5, r3
d0020c98:	da07      	bge.n	d0020caa <__swhatbuf_r+0x22>
d0020c9a:	2300      	movs	r3, #0
d0020c9c:	602b      	str	r3, [r5, #0]
d0020c9e:	89b3      	ldrh	r3, [r6, #12]
d0020ca0:	061a      	lsls	r2, r3, #24
d0020ca2:	d410      	bmi.n	d0020cc6 <__swhatbuf_r+0x3e>
d0020ca4:	f44f 6380 	mov.w	r3, #1024	; 0x400
d0020ca8:	e00e      	b.n	d0020cc8 <__swhatbuf_r+0x40>
d0020caa:	466a      	mov	r2, sp
d0020cac:	f000 f916 	bl	d0020edc <_fstat_r>
d0020cb0:	2800      	cmp	r0, #0
d0020cb2:	dbf2      	blt.n	d0020c9a <__swhatbuf_r+0x12>
d0020cb4:	9a01      	ldr	r2, [sp, #4]
d0020cb6:	f402 4270 	and.w	r2, r2, #61440	; 0xf000
d0020cba:	f5a2 5300 	sub.w	r3, r2, #8192	; 0x2000
d0020cbe:	425a      	negs	r2, r3
d0020cc0:	415a      	adcs	r2, r3
d0020cc2:	602a      	str	r2, [r5, #0]
d0020cc4:	e7ee      	b.n	d0020ca4 <__swhatbuf_r+0x1c>
d0020cc6:	2340      	movs	r3, #64	; 0x40
d0020cc8:	2000      	movs	r0, #0
d0020cca:	6023      	str	r3, [r4, #0]
d0020ccc:	b016      	add	sp, #88	; 0x58
d0020cce:	bd70      	pop	{r4, r5, r6, pc}

d0020cd0 <malloc>:
d0020cd0:	4b02      	ldr	r3, [pc, #8]	; (d0020cdc <malloc+0xc>)
d0020cd2:	4601      	mov	r1, r0
d0020cd4:	6818      	ldr	r0, [r3, #0]
d0020cd6:	f000 b853 	b.w	d0020d80 <_malloc_r>
d0020cda:	bf00      	nop
d0020cdc:	d002101c 	.word	0xd002101c

d0020ce0 <_free_r>:
d0020ce0:	b537      	push	{r0, r1, r2, r4, r5, lr}
d0020ce2:	2900      	cmp	r1, #0
d0020ce4:	d048      	beq.n	d0020d78 <_free_r+0x98>
d0020ce6:	f851 3c04 	ldr.w	r3, [r1, #-4]
d0020cea:	9001      	str	r0, [sp, #4]
d0020cec:	2b00      	cmp	r3, #0
d0020cee:	f1a1 0404 	sub.w	r4, r1, #4
d0020cf2:	bfb8      	it	lt
d0020cf4:	18e4      	addlt	r4, r4, r3
d0020cf6:	f000 f915 	bl	d0020f24 <__malloc_lock>
d0020cfa:	4a20      	ldr	r2, [pc, #128]	; (d0020d7c <_free_r+0x9c>)
d0020cfc:	9801      	ldr	r0, [sp, #4]
d0020cfe:	6813      	ldr	r3, [r2, #0]
d0020d00:	4615      	mov	r5, r2
d0020d02:	b933      	cbnz	r3, d0020d12 <_free_r+0x32>
d0020d04:	6063      	str	r3, [r4, #4]
d0020d06:	6014      	str	r4, [r2, #0]
d0020d08:	b003      	add	sp, #12
d0020d0a:	e8bd 4030 	ldmia.w	sp!, {r4, r5, lr}
d0020d0e:	f000 b90f 	b.w	d0020f30 <__malloc_unlock>
d0020d12:	42a3      	cmp	r3, r4
d0020d14:	d90b      	bls.n	d0020d2e <_free_r+0x4e>
d0020d16:	6821      	ldr	r1, [r4, #0]
d0020d18:	1862      	adds	r2, r4, r1
d0020d1a:	4293      	cmp	r3, r2
d0020d1c:	bf04      	itt	eq
d0020d1e:	681a      	ldreq	r2, [r3, #0]
d0020d20:	685b      	ldreq	r3, [r3, #4]
d0020d22:	6063      	str	r3, [r4, #4]
d0020d24:	bf04      	itt	eq
d0020d26:	1852      	addeq	r2, r2, r1
d0020d28:	6022      	streq	r2, [r4, #0]
d0020d2a:	602c      	str	r4, [r5, #0]
d0020d2c:	e7ec      	b.n	d0020d08 <_free_r+0x28>
d0020d2e:	461a      	mov	r2, r3
d0020d30:	685b      	ldr	r3, [r3, #4]
d0020d32:	b10b      	cbz	r3, d0020d38 <_free_r+0x58>
d0020d34:	42a3      	cmp	r3, r4
d0020d36:	d9fa      	bls.n	d0020d2e <_free_r+0x4e>
d0020d38:	6811      	ldr	r1, [r2, #0]
d0020d3a:	1855      	adds	r5, r2, r1
d0020d3c:	42a5      	cmp	r5, r4
d0020d3e:	d10b      	bne.n	d0020d58 <_free_r+0x78>
d0020d40:	6824      	ldr	r4, [r4, #0]
d0020d42:	4421      	add	r1, r4
d0020d44:	1854      	adds	r4, r2, r1
d0020d46:	42a3      	cmp	r3, r4
d0020d48:	6011      	str	r1, [r2, #0]
d0020d4a:	d1dd      	bne.n	d0020d08 <_free_r+0x28>
d0020d4c:	681c      	ldr	r4, [r3, #0]
d0020d4e:	685b      	ldr	r3, [r3, #4]
d0020d50:	6053      	str	r3, [r2, #4]
d0020d52:	4421      	add	r1, r4
d0020d54:	6011      	str	r1, [r2, #0]
d0020d56:	e7d7      	b.n	d0020d08 <_free_r+0x28>
d0020d58:	d902      	bls.n	d0020d60 <_free_r+0x80>
d0020d5a:	230c      	movs	r3, #12
d0020d5c:	6003      	str	r3, [r0, #0]
d0020d5e:	e7d3      	b.n	d0020d08 <_free_r+0x28>
d0020d60:	6825      	ldr	r5, [r4, #0]
d0020d62:	1961      	adds	r1, r4, r5
d0020d64:	428b      	cmp	r3, r1
d0020d66:	bf04      	itt	eq
d0020d68:	6819      	ldreq	r1, [r3, #0]
d0020d6a:	685b      	ldreq	r3, [r3, #4]
d0020d6c:	6063      	str	r3, [r4, #4]
d0020d6e:	bf04      	itt	eq
d0020d70:	1949      	addeq	r1, r1, r5
d0020d72:	6021      	streq	r1, [r4, #0]
d0020d74:	6054      	str	r4, [r2, #4]
d0020d76:	e7c7      	b.n	d0020d08 <_free_r+0x28>
d0020d78:	b003      	add	sp, #12
d0020d7a:	bd30      	pop	{r4, r5, pc}
d0020d7c:	d0021fc0 	.word	0xd0021fc0

d0020d80 <_malloc_r>:
d0020d80:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d0020d82:	1ccd      	adds	r5, r1, #3
d0020d84:	f025 0503 	bic.w	r5, r5, #3
d0020d88:	3508      	adds	r5, #8
d0020d8a:	2d0c      	cmp	r5, #12
d0020d8c:	bf38      	it	cc
d0020d8e:	250c      	movcc	r5, #12
d0020d90:	2d00      	cmp	r5, #0
d0020d92:	4606      	mov	r6, r0
d0020d94:	db01      	blt.n	d0020d9a <_malloc_r+0x1a>
d0020d96:	42a9      	cmp	r1, r5
d0020d98:	d903      	bls.n	d0020da2 <_malloc_r+0x22>
d0020d9a:	230c      	movs	r3, #12
d0020d9c:	6033      	str	r3, [r6, #0]
d0020d9e:	2000      	movs	r0, #0
d0020da0:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d0020da2:	f000 f8bf 	bl	d0020f24 <__malloc_lock>
d0020da6:	4921      	ldr	r1, [pc, #132]	; (d0020e2c <_malloc_r+0xac>)
d0020da8:	680a      	ldr	r2, [r1, #0]
d0020daa:	4614      	mov	r4, r2
d0020dac:	b99c      	cbnz	r4, d0020dd6 <_malloc_r+0x56>
d0020dae:	4f20      	ldr	r7, [pc, #128]	; (d0020e30 <_malloc_r+0xb0>)
d0020db0:	683b      	ldr	r3, [r7, #0]
d0020db2:	b923      	cbnz	r3, d0020dbe <_malloc_r+0x3e>
d0020db4:	4621      	mov	r1, r4
d0020db6:	4630      	mov	r0, r6
d0020db8:	f7ff f98e 	bl	d00200d8 <_sbrk_r>
d0020dbc:	6038      	str	r0, [r7, #0]
d0020dbe:	4629      	mov	r1, r5
d0020dc0:	4630      	mov	r0, r6
d0020dc2:	f7ff f989 	bl	d00200d8 <_sbrk_r>
d0020dc6:	1c43      	adds	r3, r0, #1
d0020dc8:	d123      	bne.n	d0020e12 <_malloc_r+0x92>
d0020dca:	230c      	movs	r3, #12
d0020dcc:	6033      	str	r3, [r6, #0]
d0020dce:	4630      	mov	r0, r6
d0020dd0:	f000 f8ae 	bl	d0020f30 <__malloc_unlock>
d0020dd4:	e7e3      	b.n	d0020d9e <_malloc_r+0x1e>
d0020dd6:	6823      	ldr	r3, [r4, #0]
d0020dd8:	1b5b      	subs	r3, r3, r5
d0020dda:	d417      	bmi.n	d0020e0c <_malloc_r+0x8c>
d0020ddc:	2b0b      	cmp	r3, #11
d0020dde:	d903      	bls.n	d0020de8 <_malloc_r+0x68>
d0020de0:	6023      	str	r3, [r4, #0]
d0020de2:	441c      	add	r4, r3
d0020de4:	6025      	str	r5, [r4, #0]
d0020de6:	e004      	b.n	d0020df2 <_malloc_r+0x72>
d0020de8:	6863      	ldr	r3, [r4, #4]
d0020dea:	42a2      	cmp	r2, r4
d0020dec:	bf0c      	ite	eq
d0020dee:	600b      	streq	r3, [r1, #0]
d0020df0:	6053      	strne	r3, [r2, #4]
d0020df2:	4630      	mov	r0, r6
d0020df4:	f000 f89c 	bl	d0020f30 <__malloc_unlock>
d0020df8:	f104 000b 	add.w	r0, r4, #11
d0020dfc:	1d23      	adds	r3, r4, #4
d0020dfe:	f020 0007 	bic.w	r0, r0, #7
d0020e02:	1ac2      	subs	r2, r0, r3
d0020e04:	d0cc      	beq.n	d0020da0 <_malloc_r+0x20>
d0020e06:	1a1b      	subs	r3, r3, r0
d0020e08:	50a3      	str	r3, [r4, r2]
d0020e0a:	e7c9      	b.n	d0020da0 <_malloc_r+0x20>
d0020e0c:	4622      	mov	r2, r4
d0020e0e:	6864      	ldr	r4, [r4, #4]
d0020e10:	e7cc      	b.n	d0020dac <_malloc_r+0x2c>
d0020e12:	1cc4      	adds	r4, r0, #3
d0020e14:	f024 0403 	bic.w	r4, r4, #3
d0020e18:	42a0      	cmp	r0, r4
d0020e1a:	d0e3      	beq.n	d0020de4 <_malloc_r+0x64>
d0020e1c:	1a21      	subs	r1, r4, r0
d0020e1e:	4630      	mov	r0, r6
d0020e20:	f7ff f95a 	bl	d00200d8 <_sbrk_r>
d0020e24:	3001      	adds	r0, #1
d0020e26:	d1dd      	bne.n	d0020de4 <_malloc_r+0x64>
d0020e28:	e7cf      	b.n	d0020dca <_malloc_r+0x4a>
d0020e2a:	bf00      	nop
d0020e2c:	d0021fc0 	.word	0xd0021fc0
d0020e30:	d0021fc4 	.word	0xd0021fc4

d0020e34 <__sread>:
d0020e34:	b510      	push	{r4, lr}
d0020e36:	460c      	mov	r4, r1
d0020e38:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d0020e3c:	f000 f87e 	bl	d0020f3c <_read_r>
d0020e40:	2800      	cmp	r0, #0
d0020e42:	bfab      	itete	ge
d0020e44:	6d63      	ldrge	r3, [r4, #84]	; 0x54
d0020e46:	89a3      	ldrhlt	r3, [r4, #12]
d0020e48:	181b      	addge	r3, r3, r0
d0020e4a:	f423 5380 	biclt.w	r3, r3, #4096	; 0x1000
d0020e4e:	bfac      	ite	ge
d0020e50:	6563      	strge	r3, [r4, #84]	; 0x54
d0020e52:	81a3      	strhlt	r3, [r4, #12]
d0020e54:	bd10      	pop	{r4, pc}

d0020e56 <__swrite>:
d0020e56:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
d0020e5a:	461f      	mov	r7, r3
d0020e5c:	898b      	ldrh	r3, [r1, #12]
d0020e5e:	05db      	lsls	r3, r3, #23
d0020e60:	4605      	mov	r5, r0
d0020e62:	460c      	mov	r4, r1
d0020e64:	4616      	mov	r6, r2
d0020e66:	d505      	bpl.n	d0020e74 <__swrite+0x1e>
d0020e68:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d0020e6c:	2302      	movs	r3, #2
d0020e6e:	2200      	movs	r2, #0
d0020e70:	f000 f846 	bl	d0020f00 <_lseek_r>
d0020e74:	89a3      	ldrh	r3, [r4, #12]
d0020e76:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
d0020e7a:	f423 5380 	bic.w	r3, r3, #4096	; 0x1000
d0020e7e:	81a3      	strh	r3, [r4, #12]
d0020e80:	4632      	mov	r2, r6
d0020e82:	463b      	mov	r3, r7
d0020e84:	4628      	mov	r0, r5
d0020e86:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
d0020e8a:	f7ff b8df 	b.w	d002004c <_write_r>

d0020e8e <__sseek>:
d0020e8e:	b510      	push	{r4, lr}
d0020e90:	460c      	mov	r4, r1
d0020e92:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d0020e96:	f000 f833 	bl	d0020f00 <_lseek_r>
d0020e9a:	1c43      	adds	r3, r0, #1
d0020e9c:	89a3      	ldrh	r3, [r4, #12]
d0020e9e:	bf15      	itete	ne
d0020ea0:	6560      	strne	r0, [r4, #84]	; 0x54
d0020ea2:	f423 5380 	biceq.w	r3, r3, #4096	; 0x1000
d0020ea6:	f443 5380 	orrne.w	r3, r3, #4096	; 0x1000
d0020eaa:	81a3      	strheq	r3, [r4, #12]
d0020eac:	bf18      	it	ne
d0020eae:	81a3      	strhne	r3, [r4, #12]
d0020eb0:	bd10      	pop	{r4, pc}

d0020eb2 <__sclose>:
d0020eb2:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d0020eb6:	f000 b801 	b.w	d0020ebc <_close_r>
	...

d0020ebc <_close_r>:
d0020ebc:	b538      	push	{r3, r4, r5, lr}
d0020ebe:	4d06      	ldr	r5, [pc, #24]	; (d0020ed8 <_close_r+0x1c>)
d0020ec0:	2300      	movs	r3, #0
d0020ec2:	4604      	mov	r4, r0
d0020ec4:	4608      	mov	r0, r1
d0020ec6:	602b      	str	r3, [r5, #0]
d0020ec8:	f7ff f8fa 	bl	d00200c0 <_close>
d0020ecc:	1c43      	adds	r3, r0, #1
d0020ece:	d102      	bne.n	d0020ed6 <_close_r+0x1a>
d0020ed0:	682b      	ldr	r3, [r5, #0]
d0020ed2:	b103      	cbz	r3, d0020ed6 <_close_r+0x1a>
d0020ed4:	6023      	str	r3, [r4, #0]
d0020ed6:	bd38      	pop	{r3, r4, r5, pc}
d0020ed8:	d0021fdc 	.word	0xd0021fdc

d0020edc <_fstat_r>:
d0020edc:	b538      	push	{r3, r4, r5, lr}
d0020ede:	4d07      	ldr	r5, [pc, #28]	; (d0020efc <_fstat_r+0x20>)
d0020ee0:	2300      	movs	r3, #0
d0020ee2:	4604      	mov	r4, r0
d0020ee4:	4608      	mov	r0, r1
d0020ee6:	4611      	mov	r1, r2
d0020ee8:	602b      	str	r3, [r5, #0]
d0020eea:	f7ff f8ed 	bl	d00200c8 <_fstat>
d0020eee:	1c43      	adds	r3, r0, #1
d0020ef0:	d102      	bne.n	d0020ef8 <_fstat_r+0x1c>
d0020ef2:	682b      	ldr	r3, [r5, #0]
d0020ef4:	b103      	cbz	r3, d0020ef8 <_fstat_r+0x1c>
d0020ef6:	6023      	str	r3, [r4, #0]
d0020ef8:	bd38      	pop	{r3, r4, r5, pc}
d0020efa:	bf00      	nop
d0020efc:	d0021fdc 	.word	0xd0021fdc

d0020f00 <_lseek_r>:
d0020f00:	b538      	push	{r3, r4, r5, lr}
d0020f02:	4d07      	ldr	r5, [pc, #28]	; (d0020f20 <_lseek_r+0x20>)
d0020f04:	4604      	mov	r4, r0
d0020f06:	4608      	mov	r0, r1
d0020f08:	4611      	mov	r1, r2
d0020f0a:	2200      	movs	r2, #0
d0020f0c:	602a      	str	r2, [r5, #0]
d0020f0e:	461a      	mov	r2, r3
d0020f10:	f7ff f8e0 	bl	d00200d4 <_lseek>
d0020f14:	1c43      	adds	r3, r0, #1
d0020f16:	d102      	bne.n	d0020f1e <_lseek_r+0x1e>
d0020f18:	682b      	ldr	r3, [r5, #0]
d0020f1a:	b103      	cbz	r3, d0020f1e <_lseek_r+0x1e>
d0020f1c:	6023      	str	r3, [r4, #0]
d0020f1e:	bd38      	pop	{r3, r4, r5, pc}
d0020f20:	d0021fdc 	.word	0xd0021fdc

d0020f24 <__malloc_lock>:
d0020f24:	4801      	ldr	r0, [pc, #4]	; (d0020f2c <__malloc_lock+0x8>)
d0020f26:	f7ff bead 	b.w	d0020c84 <__retarget_lock_acquire_recursive>
d0020f2a:	bf00      	nop
d0020f2c:	d0021fd4 	.word	0xd0021fd4

d0020f30 <__malloc_unlock>:
d0020f30:	4801      	ldr	r0, [pc, #4]	; (d0020f38 <__malloc_unlock+0x8>)
d0020f32:	f7ff bea8 	b.w	d0020c86 <__retarget_lock_release_recursive>
d0020f36:	bf00      	nop
d0020f38:	d0021fd4 	.word	0xd0021fd4

d0020f3c <_read_r>:
d0020f3c:	b538      	push	{r3, r4, r5, lr}
d0020f3e:	4d07      	ldr	r5, [pc, #28]	; (d0020f5c <_read_r+0x20>)
d0020f40:	4604      	mov	r4, r0
d0020f42:	4608      	mov	r0, r1
d0020f44:	4611      	mov	r1, r2
d0020f46:	2200      	movs	r2, #0
d0020f48:	602a      	str	r2, [r5, #0]
d0020f4a:	461a      	mov	r2, r3
d0020f4c:	f7ff f8ae 	bl	d00200ac <_read>
d0020f50:	1c43      	adds	r3, r0, #1
d0020f52:	d102      	bne.n	d0020f5a <_read_r+0x1e>
d0020f54:	682b      	ldr	r3, [r5, #0]
d0020f56:	b103      	cbz	r3, d0020f5a <_read_r+0x1e>
d0020f58:	6023      	str	r3, [r4, #0]
d0020f5a:	bd38      	pop	{r3, r4, r5, pc}
d0020f5c:	d0021fdc 	.word	0xd0021fdc

d0020f60 <_global_impure_ptr>:
d0020f60:	d0021020 6576656c 6d2e316c 0000646f      ...level1.mod..

d0020f70 <sin_q7_0_90>:
d0020f70:	09060300 1613100c 221f1c19 2e2b2825     ..........."%(+.
d0020f80:	39363331 43413e3c 4d4b4846 5654524f     1369<>ACFHKMORTV
d0020f90:	5e5c5a58 66646260 6c6b6967 72716f6e     XZ\^`bdfgiklnoqr
d0020fa0:	77767573 7b7a7978 7e7d7c7c 7f7f7f7e     suvwxyz{||}~~...
d0020fb0:	0000007f                                ....

d0020fb4 <__sf_fake_stderr>:
	...

d0020fd4 <__sf_fake_stdin>:
	...

d0020ff4 <__sf_fake_stdout>:
	...

Disassembly of section .init:

d0021014 <_init>:
d0021014:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d0021016:	bf00      	nop

Disassembly of section .fini:

d0021018 <_fini>:
d0021018:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d002101a:	bf00      	nop

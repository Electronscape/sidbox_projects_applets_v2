
compiled/applet.elf:     file format elf32-littlearm


Disassembly of section .text:

d0200010 <applet_entry>:
d0200010:	b570      	push	{r4, r5, r6, lr}
d0200012:	4e09      	ldr	r6, [pc, #36]	; (d0200038 <applet_entry+0x28>)
d0200014:	460d      	mov	r5, r1
d0200016:	4604      	mov	r4, r0
d0200018:	2100      	movs	r1, #0
d020001a:	6833      	ldr	r3, [r6, #0]
d020001c:	6898      	ldr	r0, [r3, #8]
d020001e:	f002 fbb9 	bl	d0202794 <setbuf>
d0200022:	6833      	ldr	r3, [r6, #0]
d0200024:	2100      	movs	r1, #0
d0200026:	68d8      	ldr	r0, [r3, #12]
d0200028:	f002 fbb4 	bl	d0202794 <setbuf>
d020002c:	4629      	mov	r1, r5
d020002e:	4620      	mov	r0, r4
d0200030:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
d0200034:	f001 bbe8 	b.w	d0201808 <main>
d0200038:	d0203948 	.word	0xd0203948

d020003c <initMalloc>:
d020003c:	4902      	ldr	r1, [pc, #8]	; (d0200048 <initMalloc+0xc>)
d020003e:	4b03      	ldr	r3, [pc, #12]	; (d020004c <initMalloc+0x10>)
d0200040:	4a03      	ldr	r2, [pc, #12]	; (d0200050 <initMalloc+0x14>)
d0200042:	1a5b      	subs	r3, r3, r1
d0200044:	6013      	str	r3, [r2, #0]
d0200046:	4770      	bx	lr
d0200048:	d0207198 	.word	0xd0207198
d020004c:	d0600000 	.word	0xd0600000
d0200050:	d0205064 	.word	0xd0205064

d0200054 <_write_r>:
d0200054:	3901      	subs	r1, #1
d0200056:	2901      	cmp	r1, #1
d0200058:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d020005a:	d81f      	bhi.n	d020009c <_write_r+0x48>
d020005c:	b1e2      	cbz	r2, d0200098 <_write_r+0x44>
d020005e:	461c      	mov	r4, r3
d0200060:	b1d3      	cbz	r3, d0200098 <_write_r+0x44>
d0200062:	4d12      	ldr	r5, [pc, #72]	; (d02000ac <_write_r+0x58>)
d0200064:	682e      	ldr	r6, [r5, #0]
d0200066:	b9ae      	cbnz	r6, d0200094 <_write_r+0x40>
d0200068:	4f11      	ldr	r7, [pc, #68]	; (d02000b0 <_write_r+0x5c>)
d020006a:	2301      	movs	r3, #1
d020006c:	4611      	mov	r1, r2
d020006e:	4630      	mov	r0, r6
d0200070:	602b      	str	r3, [r5, #0]
d0200072:	4622      	mov	r2, r4
d0200074:	7a3b      	ldrb	r3, [r7, #8]
d0200076:	f897 c009 	ldrb.w	ip, [r7, #9]
d020007a:	ea43 230c 	orr.w	r3, r3, ip, lsl #8
d020007e:	f897 c00a 	ldrb.w	ip, [r7, #10]
d0200082:	7aff      	ldrb	r7, [r7, #11]
d0200084:	ea43 430c 	orr.w	r3, r3, ip, lsl #16
d0200088:	ea43 6307 	orr.w	r3, r3, r7, lsl #24
d020008c:	681b      	ldr	r3, [r3, #0]
d020008e:	685b      	ldr	r3, [r3, #4]
d0200090:	4798      	blx	r3
d0200092:	602e      	str	r6, [r5, #0]
d0200094:	4620      	mov	r0, r4
d0200096:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d0200098:	2000      	movs	r0, #0
d020009a:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d020009c:	f002 fa24 	bl	d02024e8 <__errno>
d02000a0:	2209      	movs	r2, #9
d02000a2:	4603      	mov	r3, r0
d02000a4:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d02000a8:	601a      	str	r2, [r3, #0]
d02000aa:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d02000ac:	d02039c4 	.word	0xd02039c4
d02000b0:	2001f000 	.word	0x2001f000

d02000b4 <_read>:
d02000b4:	b508      	push	{r3, lr}
d02000b6:	f002 fa17 	bl	d02024e8 <__errno>
d02000ba:	2258      	movs	r2, #88	; 0x58
d02000bc:	4603      	mov	r3, r0
d02000be:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d02000c2:	601a      	str	r2, [r3, #0]
d02000c4:	bd08      	pop	{r3, pc}
d02000c6:	bf00      	nop

d02000c8 <_close>:
d02000c8:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d02000cc:	4770      	bx	lr
d02000ce:	bf00      	nop

d02000d0 <_fstat>:
d02000d0:	f44f 5300 	mov.w	r3, #8192	; 0x2000
d02000d4:	2000      	movs	r0, #0
d02000d6:	604b      	str	r3, [r1, #4]
d02000d8:	4770      	bx	lr
d02000da:	bf00      	nop

d02000dc <_lseek>:
d02000dc:	2000      	movs	r0, #0
d02000de:	4770      	bx	lr

d02000e0 <_sbrk_r>:
d02000e0:	4b0c      	ldr	r3, [pc, #48]	; (d0200114 <_sbrk_r+0x34>)
d02000e2:	4a0d      	ldr	r2, [pc, #52]	; (d0200118 <_sbrk_r+0x38>)
d02000e4:	6818      	ldr	r0, [r3, #0]
d02000e6:	b510      	push	{r4, lr}
d02000e8:	b918      	cbnz	r0, d02000f2 <_sbrk_r+0x12>
d02000ea:	1dd0      	adds	r0, r2, #7
d02000ec:	f020 0007 	bic.w	r0, r0, #7
d02000f0:	6018      	str	r0, [r3, #0]
d02000f2:	4401      	add	r1, r0
d02000f4:	4c09      	ldr	r4, [pc, #36]	; (d020011c <_sbrk_r+0x3c>)
d02000f6:	42a1      	cmp	r1, r4
d02000f8:	d803      	bhi.n	d0200102 <_sbrk_r+0x22>
d02000fa:	4291      	cmp	r1, r2
d02000fc:	d301      	bcc.n	d0200102 <_sbrk_r+0x22>
d02000fe:	6019      	str	r1, [r3, #0]
d0200100:	bd10      	pop	{r4, pc}
d0200102:	f002 f9f1 	bl	d02024e8 <__errno>
d0200106:	220c      	movs	r2, #12
d0200108:	4603      	mov	r3, r0
d020010a:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d020010e:	601a      	str	r2, [r3, #0]
d0200110:	bd10      	pop	{r4, pc}
d0200112:	bf00      	nop
d0200114:	d02039c0 	.word	0xd02039c0
d0200118:	d0207198 	.word	0xd0207198
d020011c:	d0600000 	.word	0xd0600000

d0200120 <_isatty>:
d0200120:	2001      	movs	r0, #1
d0200122:	4770      	bx	lr

d0200124 <draw_visualizer_grid>:
d0200124:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
d0200128:	4d98      	ldr	r5, [pc, #608]	; (d020038c <draw_visualizer_grid+0x268>)
d020012a:	2001      	movs	r0, #1
d020012c:	2600      	movs	r6, #0
d020012e:	7b2b      	ldrb	r3, [r5, #12]
d0200130:	7b6a      	ldrb	r2, [r5, #13]
d0200132:	7ba9      	ldrb	r1, [r5, #14]
d0200134:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0200138:	7bea      	ldrb	r2, [r5, #15]
d020013a:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d020013e:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0200142:	685b      	ldr	r3, [r3, #4]
d0200144:	68db      	ldr	r3, [r3, #12]
d0200146:	4798      	blx	r3
d0200148:	7b2c      	ldrb	r4, [r5, #12]
d020014a:	7b6a      	ldrb	r2, [r5, #13]
d020014c:	4631      	mov	r1, r6
d020014e:	7ba8      	ldrb	r0, [r5, #14]
d0200150:	f44f 73a0 	mov.w	r3, #320	; 0x140
d0200154:	ea44 2402 	orr.w	r4, r4, r2, lsl #8
d0200158:	7bea      	ldrb	r2, [r5, #15]
d020015a:	ea44 4400 	orr.w	r4, r4, r0, lsl #16
d020015e:	4630      	mov	r0, r6
d0200160:	ea44 6402 	orr.w	r4, r4, r2, lsl #24
d0200164:	f44f 72f0 	mov.w	r2, #480	; 0x1e0
d0200168:	6864      	ldr	r4, [r4, #4]
d020016a:	6864      	ldr	r4, [r4, #4]
d020016c:	47a0      	blx	r4
d020016e:	7b2b      	ldrb	r3, [r5, #12]
d0200170:	7b6a      	ldrb	r2, [r5, #13]
d0200172:	2004      	movs	r0, #4
d0200174:	7ba9      	ldrb	r1, [r5, #14]
d0200176:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d020017a:	7bea      	ldrb	r2, [r5, #15]
d020017c:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0200180:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0200184:	685b      	ldr	r3, [r3, #4]
d0200186:	68db      	ldr	r3, [r3, #12]
d0200188:	4798      	blx	r3
d020018a:	7b2b      	ldrb	r3, [r5, #12]
d020018c:	7b6c      	ldrb	r4, [r5, #13]
d020018e:	2107      	movs	r1, #7
d0200190:	7baa      	ldrb	r2, [r5, #14]
d0200192:	200a      	movs	r0, #10
d0200194:	ea43 2304 	orr.w	r3, r3, r4, lsl #8
d0200198:	7bec      	ldrb	r4, [r5, #15]
d020019a:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d020019e:	4a7c      	ldr	r2, [pc, #496]	; (d0200390 <draw_visualizer_grid+0x26c>)
d02001a0:	ea43 6304 	orr.w	r3, r3, r4, lsl #24
d02001a4:	685b      	ldr	r3, [r3, #4]
d02001a6:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d02001a8:	4798      	blx	r3
d02001aa:	7b2b      	ldrb	r3, [r5, #12]
d02001ac:	7b6a      	ldrb	r2, [r5, #13]
d02001ae:	2005      	movs	r0, #5
d02001b0:	7ba9      	ldrb	r1, [r5, #14]
d02001b2:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d02001b6:	7bea      	ldrb	r2, [r5, #15]
d02001b8:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d02001bc:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d02001c0:	685b      	ldr	r3, [r3, #4]
d02001c2:	68db      	ldr	r3, [r3, #12]
d02001c4:	4798      	blx	r3
d02001c6:	7b2b      	ldrb	r3, [r5, #12]
d02001c8:	7b6c      	ldrb	r4, [r5, #13]
d02001ca:	2107      	movs	r1, #7
d02001cc:	7baa      	ldrb	r2, [r5, #14]
d02001ce:	f44f 7088 	mov.w	r0, #272	; 0x110
d02001d2:	ea43 2304 	orr.w	r3, r3, r4, lsl #8
d02001d6:	7bec      	ldrb	r4, [r5, #15]
d02001d8:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d02001dc:	4a6d      	ldr	r2, [pc, #436]	; (d0200394 <draw_visualizer_grid+0x270>)
d02001de:	ea43 6304 	orr.w	r3, r3, r4, lsl #24
d02001e2:	685b      	ldr	r3, [r3, #4]
d02001e4:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d02001e6:	4798      	blx	r3
d02001e8:	7b29      	ldrb	r1, [r5, #12]
d02001ea:	2003      	movs	r0, #3
d02001ec:	7b6b      	ldrb	r3, [r5, #13]
d02001ee:	7baa      	ldrb	r2, [r5, #14]
d02001f0:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
d02001f4:	7beb      	ldrb	r3, [r5, #15]
d02001f6:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d02001fa:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d02001fe:	685b      	ldr	r3, [r3, #4]
d0200200:	68db      	ldr	r3, [r3, #12]
d0200202:	4798      	blx	r3
d0200204:	7b2a      	ldrb	r2, [r5, #12]
d0200206:	7b69      	ldrb	r1, [r5, #13]
d0200208:	09f0      	lsrs	r0, r6, #7
d020020a:	7bac      	ldrb	r4, [r5, #14]
d020020c:	f44f 7380 	mov.w	r3, #256	; 0x100
d0200210:	ea42 2101 	orr.w	r1, r2, r1, lsl #8
d0200214:	7bef      	ldrb	r7, [r5, #15]
d0200216:	3008      	adds	r0, #8
d0200218:	2201      	movs	r2, #1
d020021a:	ea41 4404 	orr.w	r4, r1, r4, lsl #16
d020021e:	2118      	movs	r1, #24
d0200220:	b200      	sxth	r0, r0
d0200222:	f506 56ae 	add.w	r6, r6, #5568	; 0x15c0
d0200226:	ea44 6407 	orr.w	r4, r4, r7, lsl #24
d020022a:	6864      	ldr	r4, [r4, #4]
d020022c:	6864      	ldr	r4, [r4, #4]
d020022e:	47a0      	blx	r4
d0200230:	f64e 7340 	movw	r3, #61248	; 0xef40
d0200234:	429e      	cmp	r6, r3
d0200236:	d1d7      	bne.n	d02001e8 <draw_visualizer_grid+0xc4>
d0200238:	f44f 76e8 	mov.w	r6, #464	; 0x1d0
d020023c:	2401      	movs	r4, #1
d020023e:	4f56      	ldr	r7, [pc, #344]	; (d0200398 <draw_visualizer_grid+0x274>)
d0200240:	fba7 2304 	umull	r2, r3, r7, r4
d0200244:	08db      	lsrs	r3, r3, #3
d0200246:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d020024a:	eba4 0383 	sub.w	r3, r4, r3, lsl #2
d020024e:	b2db      	uxtb	r3, r3
d0200250:	3b01      	subs	r3, #1
d0200252:	2b09      	cmp	r3, #9
d0200254:	d82d      	bhi.n	d02002b2 <draw_visualizer_grid+0x18e>
d0200256:	e8df f003 	tbb	[pc, r3]
d020025a:	2c05      	.short	0x2c05
d020025c:	052c2c05 	.word	0x052c2c05
d0200260:	052c052c 	.word	0x052c052c
d0200264:	f895 c00c 	ldrb.w	ip, [r5, #12]
d0200268:	2002      	movs	r0, #2
d020026a:	7b69      	ldrb	r1, [r5, #13]
d020026c:	7baa      	ldrb	r2, [r5, #14]
d020026e:	ea4c 2101 	orr.w	r1, ip, r1, lsl #8
d0200272:	7beb      	ldrb	r3, [r5, #15]
d0200274:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d0200278:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d020027c:	685b      	ldr	r3, [r3, #4]
d020027e:	68db      	ldr	r3, [r3, #12]
d0200280:	4798      	blx	r3
d0200282:	7b2a      	ldrb	r2, [r5, #12]
d0200284:	7b69      	ldrb	r1, [r5, #13]
d0200286:	09f0      	lsrs	r0, r6, #7
d0200288:	f895 c00e 	ldrb.w	ip, [r5, #14]
d020028c:	f44f 7380 	mov.w	r3, #256	; 0x100
d0200290:	ea42 2101 	orr.w	r1, r2, r1, lsl #8
d0200294:	f895 e00f 	ldrb.w	lr, [r5, #15]
d0200298:	3008      	adds	r0, #8
d020029a:	2201      	movs	r2, #1
d020029c:	ea41 4c0c 	orr.w	ip, r1, ip, lsl #16
d02002a0:	2118      	movs	r1, #24
d02002a2:	b200      	sxth	r0, r0
d02002a4:	ea4c 6c0e 	orr.w	ip, ip, lr, lsl #24
d02002a8:	f8dc c004 	ldr.w	ip, [ip, #4]
d02002ac:	f8dc 8004 	ldr.w	r8, [ip, #4]
d02002b0:	47c0      	blx	r8
d02002b2:	3401      	adds	r4, #1
d02002b4:	f506 76e8 	add.w	r6, r6, #464	; 0x1d0
d02002b8:	b2e4      	uxtb	r4, r4
d02002ba:	2c80      	cmp	r4, #128	; 0x80
d02002bc:	d1c0      	bne.n	d0200240 <draw_visualizer_grid+0x11c>
d02002be:	7b29      	ldrb	r1, [r5, #12]
d02002c0:	f04f 0818 	mov.w	r8, #24
d02002c4:	7b6b      	ldrb	r3, [r5, #13]
d02002c6:	2003      	movs	r0, #3
d02002c8:	7baa      	ldrb	r2, [r5, #14]
d02002ca:	e008      	b.n	d02002de <draw_visualizer_grid+0x1ba>
d02002cc:	f018 0f40 	tst.w	r8, #64	; 0x40
d02002d0:	7b29      	ldrb	r1, [r5, #12]
d02002d2:	7b6b      	ldrb	r3, [r5, #13]
d02002d4:	bf18      	it	ne
d02002d6:	2002      	movne	r0, #2
d02002d8:	7baa      	ldrb	r2, [r5, #14]
d02002da:	bf08      	it	eq
d02002dc:	2003      	moveq	r0, #3
d02002de:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
d02002e2:	7beb      	ldrb	r3, [r5, #15]
d02002e4:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d02002e8:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d02002ec:	685b      	ldr	r3, [r3, #4]
d02002ee:	68db      	ldr	r3, [r3, #12]
d02002f0:	4798      	blx	r3
d02002f2:	7b29      	ldrb	r1, [r5, #12]
d02002f4:	7b6f      	ldrb	r7, [r5, #13]
d02002f6:	2301      	movs	r3, #1
d02002f8:	7bae      	ldrb	r6, [r5, #14]
d02002fa:	f44f 72e8 	mov.w	r2, #464	; 0x1d0
d02002fe:	ea41 2707 	orr.w	r7, r1, r7, lsl #8
d0200302:	7bec      	ldrb	r4, [r5, #15]
d0200304:	fa0f f188 	sxth.w	r1, r8
d0200308:	f108 0820 	add.w	r8, r8, #32
d020030c:	ea47 4606 	orr.w	r6, r7, r6, lsl #16
d0200310:	2008      	movs	r0, #8
d0200312:	fa1f f888 	uxth.w	r8, r8
d0200316:	ea46 6404 	orr.w	r4, r6, r4, lsl #24
d020031a:	6864      	ldr	r4, [r4, #4]
d020031c:	6864      	ldr	r4, [r4, #4]
d020031e:	47a0      	blx	r4
d0200320:	f5b8 7f8c 	cmp.w	r8, #280	; 0x118
d0200324:	d1d2      	bne.n	d02002cc <draw_visualizer_grid+0x1a8>
d0200326:	7b2b      	ldrb	r3, [r5, #12]
d0200328:	2008      	movs	r0, #8
d020032a:	7b6a      	ldrb	r2, [r5, #13]
d020032c:	7ba9      	ldrb	r1, [r5, #14]
d020032e:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0200332:	7bea      	ldrb	r2, [r5, #15]
d0200334:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0200338:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d020033c:	685b      	ldr	r3, [r3, #4]
d020033e:	68db      	ldr	r3, [r3, #12]
d0200340:	4798      	blx	r3
d0200342:	7b2c      	ldrb	r4, [r5, #12]
d0200344:	7b69      	ldrb	r1, [r5, #13]
d0200346:	2302      	movs	r3, #2
d0200348:	7ba8      	ldrb	r0, [r5, #14]
d020034a:	f44f 72e8 	mov.w	r2, #464	; 0x1d0
d020034e:	ea44 2401 	orr.w	r4, r4, r1, lsl #8
d0200352:	7bee      	ldrb	r6, [r5, #15]
d0200354:	f44f 7191 	mov.w	r1, #290	; 0x122
d0200358:	ea44 4400 	orr.w	r4, r4, r0, lsl #16
d020035c:	2008      	movs	r0, #8
d020035e:	ea44 6406 	orr.w	r4, r4, r6, lsl #24
d0200362:	6864      	ldr	r4, [r4, #4]
d0200364:	6864      	ldr	r4, [r4, #4]
d0200366:	47a0      	blx	r4
d0200368:	7b2b      	ldrb	r3, [r5, #12]
d020036a:	7b6a      	ldrb	r2, [r5, #13]
d020036c:	2122      	movs	r1, #34	; 0x22
d020036e:	7bae      	ldrb	r6, [r5, #14]
d0200370:	200a      	movs	r0, #10
d0200372:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0200376:	7bec      	ldrb	r4, [r5, #15]
d0200378:	4a08      	ldr	r2, [pc, #32]	; (d020039c <draw_visualizer_grid+0x278>)
d020037a:	ea43 4306 	orr.w	r3, r3, r6, lsl #16
d020037e:	ea43 6304 	orr.w	r3, r3, r4, lsl #24
d0200382:	685b      	ldr	r3, [r3, #4]
d0200384:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
d0200388:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d020038a:	4718      	bx	r3
d020038c:	2001f000 	.word	0x2001f000
d0200390:	d02036e4 	.word	0xd02036e4
d0200394:	d02036f8 	.word	0xd02036f8
d0200398:	aaaaaaab 	.word	0xaaaaaaab
d020039c:	d0203910 	.word	0xd0203910

d02003a0 <draw_visualizer_keyboard>:
d02003a0:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
d02003a4:	4d51      	ldr	r5, [pc, #324]	; (d02004ec <draw_visualizer_keyboard+0x14c>)
d02003a6:	2006      	movs	r0, #6
d02003a8:	2700      	movs	r7, #0
d02003aa:	f8df 8144 	ldr.w	r8, [pc, #324]	; d02004f0 <draw_visualizer_keyboard+0x150>
d02003ae:	7b2b      	ldrb	r3, [r5, #12]
d02003b0:	7b6a      	ldrb	r2, [r5, #13]
d02003b2:	463e      	mov	r6, r7
d02003b4:	7ba9      	ldrb	r1, [r5, #14]
d02003b6:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d02003ba:	7bea      	ldrb	r2, [r5, #15]
d02003bc:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d02003c0:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d02003c4:	685b      	ldr	r3, [r3, #4]
d02003c6:	68db      	ldr	r3, [r3, #12]
d02003c8:	4798      	blx	r3
d02003ca:	7b2c      	ldrb	r4, [r5, #12]
d02003cc:	7b68      	ldrb	r0, [r5, #13]
d02003ce:	2312      	movs	r3, #18
d02003d0:	7ba9      	ldrb	r1, [r5, #14]
d02003d2:	f44f 72e8 	mov.w	r2, #464	; 0x1d0
d02003d6:	ea44 2400 	orr.w	r4, r4, r0, lsl #8
d02003da:	7be8      	ldrb	r0, [r5, #15]
d02003dc:	ea44 4401 	orr.w	r4, r4, r1, lsl #16
d02003e0:	f44f 7192 	mov.w	r1, #292	; 0x124
d02003e4:	ea44 6400 	orr.w	r4, r4, r0, lsl #24
d02003e8:	2008      	movs	r0, #8
d02003ea:	6864      	ldr	r4, [r4, #4]
d02003ec:	6864      	ldr	r4, [r4, #4]
d02003ee:	47a0      	blx	r4
d02003f0:	7b2b      	ldrb	r3, [r5, #12]
d02003f2:	7b6a      	ldrb	r2, [r5, #13]
d02003f4:	2007      	movs	r0, #7
d02003f6:	7ba9      	ldrb	r1, [r5, #14]
d02003f8:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d02003fc:	7bea      	ldrb	r2, [r5, #15]
d02003fe:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0200402:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0200406:	685b      	ldr	r3, [r3, #4]
d0200408:	68db      	ldr	r3, [r3, #12]
d020040a:	4798      	blx	r3
d020040c:	b2f3      	uxtb	r3, r6
d020040e:	09f8      	lsrs	r0, r7, #7
d0200410:	fba8 2403 	umull	r2, r4, r8, r3
d0200414:	3008      	adds	r0, #8
d0200416:	08e4      	lsrs	r4, r4, #3
d0200418:	b200      	sxth	r0, r0
d020041a:	eb04 0444 	add.w	r4, r4, r4, lsl #1
d020041e:	eba3 0384 	sub.w	r3, r3, r4, lsl #2
d0200422:	b2dc      	uxtb	r4, r3
d0200424:	1e63      	subs	r3, r4, #1
d0200426:	2b09      	cmp	r3, #9
d0200428:	d850      	bhi.n	d02004cc <draw_visualizer_keyboard+0x12c>
d020042a:	e8df f003 	tbb	[pc, r3]
d020042e:	4f05      	.short	0x4f05
d0200430:	054f4f05 	.word	0x054f4f05
d0200434:	054f054f 	.word	0x054f054f
d0200438:	7b2c      	ldrb	r4, [r5, #12]
d020043a:	230b      	movs	r3, #11
d020043c:	f895 e00d 	ldrb.w	lr, [r5, #13]
d0200440:	2203      	movs	r2, #3
d0200442:	f44f 7192 	mov.w	r1, #292	; 0x124
d0200446:	f895 c00e 	ldrb.w	ip, [r5, #14]
d020044a:	ea44 2e0e 	orr.w	lr, r4, lr, lsl #8
d020044e:	7bec      	ldrb	r4, [r5, #15]
d0200450:	ea4e 4c0c 	orr.w	ip, lr, ip, lsl #16
d0200454:	ea4c 6404 	orr.w	r4, ip, r4, lsl #24
d0200458:	6864      	ldr	r4, [r4, #4]
d020045a:	6864      	ldr	r4, [r4, #4]
d020045c:	47a0      	blx	r4
d020045e:	3601      	adds	r6, #1
d0200460:	f507 77e8 	add.w	r7, r7, #464	; 0x1d0
d0200464:	2e80      	cmp	r6, #128	; 0x80
d0200466:	d1d1      	bne.n	d020040c <draw_visualizer_keyboard+0x6c>
d0200468:	f04f 080c 	mov.w	r8, #12
d020046c:	f04f 0920 	mov.w	r9, #32
d0200470:	7b2c      	ldrb	r4, [r5, #12]
d0200472:	4648      	mov	r0, r9
d0200474:	7b69      	ldrb	r1, [r5, #13]
d0200476:	f109 0901 	add.w	r9, r9, #1
d020047a:	7baa      	ldrb	r2, [r5, #14]
d020047c:	ea44 2101 	orr.w	r1, r4, r1, lsl #8
d0200480:	7beb      	ldrb	r3, [r5, #15]
d0200482:	fa5f f989 	uxtb.w	r9, r9
d0200486:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d020048a:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d020048e:	685b      	ldr	r3, [r3, #4]
d0200490:	68db      	ldr	r3, [r3, #12]
d0200492:	4798      	blx	r3
d0200494:	7b29      	ldrb	r1, [r5, #12]
d0200496:	7b6f      	ldrb	r7, [r5, #13]
d0200498:	fa0f f088 	sxth.w	r0, r8
d020049c:	7bae      	ldrb	r6, [r5, #14]
d020049e:	f108 080c 	add.w	r8, r8, #12
d02004a2:	ea41 2707 	orr.w	r7, r1, r7, lsl #8
d02004a6:	7bec      	ldrb	r4, [r5, #15]
d02004a8:	fa1f f888 	uxth.w	r8, r8
d02004ac:	2305      	movs	r3, #5
d02004ae:	ea47 4606 	orr.w	r6, r7, r6, lsl #16
d02004b2:	2208      	movs	r2, #8
d02004b4:	f44f 719c 	mov.w	r1, #312	; 0x138
d02004b8:	ea46 6404 	orr.w	r4, r6, r4, lsl #24
d02004bc:	6864      	ldr	r4, [r4, #4]
d02004be:	6864      	ldr	r4, [r4, #4]
d02004c0:	47a0      	blx	r4
d02004c2:	f1b8 0fcc 	cmp.w	r8, #204	; 0xcc
d02004c6:	d1d3      	bne.n	d0200470 <draw_visualizer_keyboard+0xd0>
d02004c8:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
d02004cc:	2312      	movs	r3, #18
d02004ce:	2201      	movs	r2, #1
d02004d0:	f44f 7192 	mov.w	r1, #292	; 0x124
d02004d4:	2c00      	cmp	r4, #0
d02004d6:	d1c2      	bne.n	d020045e <draw_visualizer_keyboard+0xbe>
d02004d8:	f895 900c 	ldrb.w	r9, [r5, #12]
d02004dc:	f895 e00d 	ldrb.w	lr, [r5, #13]
d02004e0:	f895 c00e 	ldrb.w	ip, [r5, #14]
d02004e4:	ea49 2e0e 	orr.w	lr, r9, lr, lsl #8
d02004e8:	e7b1      	b.n	d020044e <draw_visualizer_keyboard+0xae>
d02004ea:	bf00      	nop
d02004ec:	2001f000 	.word	0x2001f000
d02004f0:	aaaaaaab 	.word	0xaaaaaaab

d02004f4 <midi_send_channel_panic>:
d02004f4:	e92d 43f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
d02004f8:	2500      	movs	r5, #0
d02004fa:	4b2f      	ldr	r3, [pc, #188]	; (d02005b8 <midi_send_channel_panic+0xc4>)
d02004fc:	4c2f      	ldr	r4, [pc, #188]	; (d02005bc <midi_send_channel_panic+0xc8>)
d02004fe:	b085      	sub	sp, #20
d0200500:	4e2f      	ldr	r6, [pc, #188]	; (d02005c0 <midi_send_channel_panic+0xcc>)
d0200502:	f44f 7200 	mov.w	r2, #512	; 0x200
d0200506:	4629      	mov	r1, r5
d0200508:	482e      	ldr	r0, [pc, #184]	; (d02005c4 <midi_send_channel_panic+0xd0>)
d020050a:	8025      	strh	r5, [r4, #0]
d020050c:	462f      	mov	r7, r5
d020050e:	801d      	strh	r5, [r3, #0]
d0200510:	46a9      	mov	r9, r5
d0200512:	8035      	strh	r5, [r6, #0]
d0200514:	f04f 0878 	mov.w	r8, #120	; 0x78
d0200518:	f001 fffc 	bl	d0202514 <memset>
d020051c:	4c2a      	ldr	r4, [pc, #168]	; (d02005c8 <midi_send_channel_panic+0xd4>)
d020051e:	4b2b      	ldr	r3, [pc, #172]	; (d02005cc <midi_send_channel_panic+0xd8>)
d0200520:	601d      	str	r5, [r3, #0]
d0200522:	7d20      	ldrb	r0, [r4, #20]
d0200524:	f067 054f 	orn	r5, r7, #79	; 0x4f
d0200528:	7d61      	ldrb	r1, [r4, #21]
d020052a:	f04f 0c7b 	mov.w	ip, #123	; 0x7b
d020052e:	7da2      	ldrb	r2, [r4, #22]
d0200530:	b2ed      	uxtb	r5, r5
d0200532:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d0200536:	7de3      	ldrb	r3, [r4, #23]
d0200538:	2679      	movs	r6, #121	; 0x79
d020053a:	f88d c00d 	strb.w	ip, [sp, #13]
d020053e:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d0200542:	f88d 5004 	strb.w	r5, [sp, #4]
d0200546:	f88d 5008 	strb.w	r5, [sp, #8]
d020054a:	2103      	movs	r1, #3
d020054c:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0200550:	f88d 500c 	strb.w	r5, [sp, #12]
d0200554:	f88d 6009 	strb.w	r6, [sp, #9]
d0200558:	a801      	add	r0, sp, #4
d020055a:	f88d 8005 	strb.w	r8, [sp, #5]
d020055e:	3701      	adds	r7, #1
d0200560:	f88d 9006 	strb.w	r9, [sp, #6]
d0200564:	f88d 900a 	strb.w	r9, [sp, #10]
d0200568:	f88d 900e 	strb.w	r9, [sp, #14]
d020056c:	681b      	ldr	r3, [r3, #0]
d020056e:	695b      	ldr	r3, [r3, #20]
d0200570:	4798      	blx	r3
d0200572:	7d26      	ldrb	r6, [r4, #20]
d0200574:	7d65      	ldrb	r5, [r4, #21]
d0200576:	2103      	movs	r1, #3
d0200578:	7da2      	ldrb	r2, [r4, #22]
d020057a:	a802      	add	r0, sp, #8
d020057c:	ea46 2505 	orr.w	r5, r6, r5, lsl #8
d0200580:	7de3      	ldrb	r3, [r4, #23]
d0200582:	ea45 4202 	orr.w	r2, r5, r2, lsl #16
d0200586:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d020058a:	681b      	ldr	r3, [r3, #0]
d020058c:	695b      	ldr	r3, [r3, #20]
d020058e:	4798      	blx	r3
d0200590:	7d26      	ldrb	r6, [r4, #20]
d0200592:	7d65      	ldrb	r5, [r4, #21]
d0200594:	2103      	movs	r1, #3
d0200596:	7da2      	ldrb	r2, [r4, #22]
d0200598:	a803      	add	r0, sp, #12
d020059a:	ea46 2505 	orr.w	r5, r6, r5, lsl #8
d020059e:	7de3      	ldrb	r3, [r4, #23]
d02005a0:	ea45 4202 	orr.w	r2, r5, r2, lsl #16
d02005a4:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d02005a8:	681b      	ldr	r3, [r3, #0]
d02005aa:	695b      	ldr	r3, [r3, #20]
d02005ac:	4798      	blx	r3
d02005ae:	2f10      	cmp	r7, #16
d02005b0:	d1b7      	bne.n	d0200522 <midi_send_channel_panic+0x2e>
d02005b2:	b005      	add	sp, #20
d02005b4:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
d02005b8:	d0204050 	.word	0xd0204050
d02005bc:	d0204454 	.word	0xd0204454
d02005c0:	d0204052 	.word	0xd0204052
d02005c4:	d0203e4c 	.word	0xd0203e4c
d02005c8:	2001f000 	.word	0x2001f000
d02005cc:	d020404c 	.word	0xd020404c

d02005d0 <app_shutdown>:
d02005d0:	b510      	push	{r4, lr}
d02005d2:	4c0e      	ldr	r4, [pc, #56]	; (d020060c <app_shutdown+0x3c>)
d02005d4:	f7ff ff8e 	bl	d02004f4 <midi_send_channel_panic>
d02005d8:	7923      	ldrb	r3, [r4, #4]
d02005da:	7962      	ldrb	r2, [r4, #5]
d02005dc:	79a1      	ldrb	r1, [r4, #6]
d02005de:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d02005e2:	79e2      	ldrb	r2, [r4, #7]
d02005e4:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d02005e8:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d02005ec:	685b      	ldr	r3, [r3, #4]
d02005ee:	4798      	blx	r3
d02005f0:	7823      	ldrb	r3, [r4, #0]
d02005f2:	7862      	ldrb	r2, [r4, #1]
d02005f4:	78a1      	ldrb	r1, [r4, #2]
d02005f6:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d02005fa:	78e2      	ldrb	r2, [r4, #3]
d02005fc:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0200600:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0200604:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
d0200608:	685b      	ldr	r3, [r3, #4]
d020060a:	4718      	bx	r3
d020060c:	2001f000 	.word	0x2001f000

d0200610 <midi_limiter_steal_note>:
d0200610:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0200614:	2300      	movs	r3, #0
d0200616:	b085      	sub	sp, #20
d0200618:	f04f 35ff 	mov.w	r5, #4294967295	; 0xffffffff
d020061c:	4e74      	ldr	r6, [pc, #464]	; (d02007f0 <midi_limiter_steal_note+0x1e0>)
d020061e:	e003      	b.n	d0200628 <midi_limiter_steal_note+0x18>
d0200620:	b21d      	sxth	r5, r3
d0200622:	3301      	adds	r3, #1
d0200624:	2b40      	cmp	r3, #64	; 0x40
d0200626:	d024      	beq.n	d0200672 <midi_limiter_steal_note+0x62>
d0200628:	eb06 01c3 	add.w	r1, r6, r3, lsl #3
d020062c:	eb06 02c5 	add.w	r2, r6, r5, lsl #3
d0200630:	79c8      	ldrb	r0, [r1, #7]
d0200632:	2800      	cmp	r0, #0
d0200634:	d0f5      	beq.n	d0200622 <midi_limiter_steal_note+0x12>
d0200636:	1c68      	adds	r0, r5, #1
d0200638:	d0f2      	beq.n	d0200620 <midi_limiter_steal_note+0x10>
d020063a:	7912      	ldrb	r2, [r2, #4]
d020063c:	7909      	ldrb	r1, [r1, #4]
d020063e:	f1a2 0209 	sub.w	r2, r2, #9
d0200642:	2909      	cmp	r1, #9
d0200644:	fab2 f282 	clz	r2, r2
d0200648:	ea4f 1252 	mov.w	r2, r2, lsr #5
d020064c:	d001      	beq.n	d0200652 <midi_limiter_steal_note+0x42>
d020064e:	2a00      	cmp	r2, #0
d0200650:	d1e6      	bne.n	d0200620 <midi_limiter_steal_note+0x10>
d0200652:	f1a1 0109 	sub.w	r1, r1, #9
d0200656:	fab1 f181 	clz	r1, r1
d020065a:	0949      	lsrs	r1, r1, #5
d020065c:	4291      	cmp	r1, r2
d020065e:	d1e0      	bne.n	d0200622 <midi_limiter_steal_note+0x12>
d0200660:	f856 1033 	ldr.w	r1, [r6, r3, lsl #3]
d0200664:	f856 2035 	ldr.w	r2, [r6, r5, lsl #3]
d0200668:	4291      	cmp	r1, r2
d020066a:	d3d9      	bcc.n	d0200620 <midi_limiter_steal_note+0x10>
d020066c:	3301      	adds	r3, #1
d020066e:	2b40      	cmp	r3, #64	; 0x40
d0200670:	d1da      	bne.n	d0200628 <midi_limiter_steal_note+0x18>
d0200672:	1c6b      	adds	r3, r5, #1
d0200674:	d038      	beq.n	d02006e8 <midi_limiter_steal_note+0xd8>
d0200676:	f8df b188 	ldr.w	fp, [pc, #392]	; d0200800 <midi_limiter_steal_note+0x1f0>
d020067a:	eb06 02c5 	add.w	r2, r6, r5, lsl #3
d020067e:	00eb      	lsls	r3, r5, #3
d0200680:	2000      	movs	r0, #0
d0200682:	f8bb 1000 	ldrh.w	r1, [fp]
d0200686:	7954      	ldrb	r4, [r2, #5]
d0200688:	9301      	str	r3, [sp, #4]
d020068a:	7913      	ldrb	r3, [r2, #4]
d020068c:	f5c1 6280 	rsb	r2, r1, #1024	; 0x400
d0200690:	f88d 000e 	strb.w	r0, [sp, #14]
d0200694:	f003 030f 	and.w	r3, r3, #15
d0200698:	b292      	uxth	r2, r2
d020069a:	f88d 400d 	strb.w	r4, [sp, #13]
d020069e:	f043 0380 	orr.w	r3, r3, #128	; 0x80
d02006a2:	2a02      	cmp	r2, #2
d02006a4:	f88d 300c 	strb.w	r3, [sp, #12]
d02006a8:	d922      	bls.n	d02006f0 <midi_limiter_steal_note+0xe0>
d02006aa:	4f52      	ldr	r7, [pc, #328]	; (d02007f4 <midi_limiter_steal_note+0x1e4>)
d02006ac:	1cca      	adds	r2, r1, #3
d02006ae:	4952      	ldr	r1, [pc, #328]	; (d02007f8 <midi_limiter_steal_note+0x1e8>)
d02006b0:	f8b7 c000 	ldrh.w	ip, [r7]
d02006b4:	f8ab 2000 	strh.w	r2, [fp]
d02006b8:	f10c 0201 	add.w	r2, ip, #1
d02006bc:	f801 300c 	strb.w	r3, [r1, ip]
d02006c0:	f3c2 0209 	ubfx	r2, r2, #0, #10
d02006c4:	1c53      	adds	r3, r2, #1
d02006c6:	548c      	strb	r4, [r1, r2]
d02006c8:	f3c3 0309 	ubfx	r3, r3, #0, #10
d02006cc:	1c5a      	adds	r2, r3, #1
d02006ce:	54c8      	strb	r0, [r1, r3]
d02006d0:	f3c2 0309 	ubfx	r3, r2, #0, #10
d02006d4:	803b      	strh	r3, [r7, #0]
d02006d6:	9b01      	ldr	r3, [sp, #4]
d02006d8:	2001      	movs	r0, #1
d02006da:	4433      	add	r3, r6
d02006dc:	461d      	mov	r5, r3
d02006de:	2300      	movs	r3, #0
d02006e0:	71eb      	strb	r3, [r5, #7]
d02006e2:	b005      	add	sp, #20
d02006e4:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d02006e8:	2000      	movs	r0, #0
d02006ea:	b005      	add	sp, #20
d02006ec:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d02006f0:	2900      	cmp	r1, #0
d02006f2:	d074      	beq.n	d02007de <midi_limiter_steal_note+0x1ce>
d02006f4:	4d41      	ldr	r5, [pc, #260]	; (d02007fc <midi_limiter_steal_note+0x1ec>)
d02006f6:	273c      	movs	r7, #60	; 0x3c
d02006f8:	f8df a0f8 	ldr.w	sl, [pc, #248]	; d02007f4 <midi_limiter_steal_note+0x1e4>
d02006fc:	8828      	ldrh	r0, [r5, #0]
d02006fe:	f8df 90f8 	ldr.w	r9, [pc, #248]	; d02007f8 <midi_limiter_steal_note+0x1e8>
d0200702:	f8df 8100 	ldr.w	r8, [pc, #256]	; d0200804 <midi_limiter_steal_note+0x1f4>
d0200706:	e001      	b.n	d020070c <midi_limiter_steal_note+0xfc>
d0200708:	2f00      	cmp	r7, #0
d020070a:	d04e      	beq.n	d02007aa <midi_limiter_steal_note+0x19a>
d020070c:	f8ba 2000 	ldrh.w	r2, [sl]
d0200710:	f5c0 6480 	rsb	r4, r0, #1024	; 0x400
d0200714:	f898 e014 	ldrb.w	lr, [r8, #20]
d0200718:	4282      	cmp	r2, r0
d020071a:	eba2 0200 	sub.w	r2, r2, r0
d020071e:	b2a4      	uxth	r4, r4
d0200720:	4448      	add	r0, r9
d0200722:	bf88      	it	hi
d0200724:	b294      	uxthhi	r4, r2
d0200726:	f898 2015 	ldrb.w	r2, [r8, #21]
d020072a:	42bc      	cmp	r4, r7
d020072c:	ea4e 2e02 	orr.w	lr, lr, r2, lsl #8
d0200730:	bf28      	it	cs
d0200732:	463c      	movcs	r4, r7
d0200734:	428c      	cmp	r4, r1
d0200736:	bf28      	it	cs
d0200738:	460c      	movcs	r4, r1
d020073a:	f898 1016 	ldrb.w	r1, [r8, #22]
d020073e:	f898 2017 	ldrb.w	r2, [r8, #23]
d0200742:	ea4e 4c01 	orr.w	ip, lr, r1, lsl #16
d0200746:	4621      	mov	r1, r4
d0200748:	1b3f      	subs	r7, r7, r4
d020074a:	ea4c 6202 	orr.w	r2, ip, r2, lsl #24
d020074e:	b2bf      	uxth	r7, r7
d0200750:	6812      	ldr	r2, [r2, #0]
d0200752:	6952      	ldr	r2, [r2, #20]
d0200754:	4790      	blx	r2
d0200756:	8828      	ldrh	r0, [r5, #0]
d0200758:	f8bb 2000 	ldrh.w	r2, [fp]
d020075c:	4420      	add	r0, r4
d020075e:	1b11      	subs	r1, r2, r4
d0200760:	f3c0 0009 	ubfx	r0, r0, #0, #10
d0200764:	b289      	uxth	r1, r1
d0200766:	8028      	strh	r0, [r5, #0]
d0200768:	f8ab 1000 	strh.w	r1, [fp]
d020076c:	2900      	cmp	r1, #0
d020076e:	d1cb      	bne.n	d0200708 <midi_limiter_steal_note+0xf8>
d0200770:	2303      	movs	r3, #3
d0200772:	f8ba 1000 	ldrh.w	r1, [sl]
d0200776:	f8ab 3000 	strh.w	r3, [fp]
d020077a:	1c4a      	adds	r2, r1, #1
d020077c:	f89d 300c 	ldrb.w	r3, [sp, #12]
d0200780:	f3c2 0209 	ubfx	r2, r2, #0, #10
d0200784:	f809 3001 	strb.w	r3, [r9, r1]
d0200788:	f89d 100d 	ldrb.w	r1, [sp, #13]
d020078c:	1c53      	adds	r3, r2, #1
d020078e:	f809 1002 	strb.w	r1, [r9, r2]
d0200792:	f3c3 0309 	ubfx	r3, r3, #0, #10
d0200796:	f89d 100e 	ldrb.w	r1, [sp, #14]
d020079a:	1c5a      	adds	r2, r3, #1
d020079c:	f809 1003 	strb.w	r1, [r9, r3]
d02007a0:	f3c2 0309 	ubfx	r3, r2, #0, #10
d02007a4:	f8aa 3000 	strh.w	r3, [sl]
d02007a8:	e795      	b.n	d02006d6 <midi_limiter_steal_note+0xc6>
d02007aa:	f504 6380 	add.w	r3, r4, #1024	; 0x400
d02007ae:	1a9b      	subs	r3, r3, r2
d02007b0:	b29b      	uxth	r3, r3
d02007b2:	2b02      	cmp	r3, #2
d02007b4:	d818      	bhi.n	d02007e8 <midi_limiter_steal_note+0x1d8>
d02007b6:	f898 3014 	ldrb.w	r3, [r8, #20]
d02007ba:	2103      	movs	r1, #3
d02007bc:	f898 2015 	ldrb.w	r2, [r8, #21]
d02007c0:	a803      	add	r0, sp, #12
d02007c2:	f898 4016 	ldrb.w	r4, [r8, #22]
d02007c6:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d02007ca:	f898 2017 	ldrb.w	r2, [r8, #23]
d02007ce:	ea43 4304 	orr.w	r3, r3, r4, lsl #16
d02007d2:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d02007d6:	681b      	ldr	r3, [r3, #0]
d02007d8:	695b      	ldr	r3, [r3, #20]
d02007da:	4798      	blx	r3
d02007dc:	e77b      	b.n	d02006d6 <midi_limiter_steal_note+0xc6>
d02007de:	f8df a014 	ldr.w	sl, [pc, #20]	; d02007f4 <midi_limiter_steal_note+0x1e4>
d02007e2:	f8df 9014 	ldr.w	r9, [pc, #20]	; d02007f8 <midi_limiter_steal_note+0x1e8>
d02007e6:	e7c3      	b.n	d0200770 <midi_limiter_steal_note+0x160>
d02007e8:	1ccb      	adds	r3, r1, #3
d02007ea:	b29b      	uxth	r3, r3
d02007ec:	e7c1      	b.n	d0200772 <midi_limiter_steal_note+0x162>
d02007ee:	bf00      	nop
d02007f0:	d0203e4c 	.word	0xd0203e4c
d02007f4:	d0204052 	.word	0xd0204052
d02007f8:	d0204054 	.word	0xd0204054
d02007fc:	d0204454 	.word	0xd0204454
d0200800:	d0204050 	.word	0xd0204050
d0200804:	2001f000 	.word	0x2001f000

d0200808 <midi_tx_enqueue_urgent_bytes>:
d0200808:	e92d 4ff8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
d020080c:	f8df 9144 	ldr.w	r9, [pc, #324]	; d0200954 <midi_tx_enqueue_urgent_bytes+0x14c>
d0200810:	460e      	mov	r6, r1
d0200812:	4605      	mov	r5, r0
d0200814:	f8b9 c000 	ldrh.w	ip, [r9]
d0200818:	f5cc 6380 	rsb	r3, ip, #1024	; 0x400
d020081c:	b29b      	uxth	r3, r3
d020081e:	4299      	cmp	r1, r3
d0200820:	d817      	bhi.n	d0200852 <midi_tx_enqueue_urgent_bytes+0x4a>
d0200822:	f8df b134 	ldr.w	fp, [pc, #308]	; d0200958 <midi_tx_enqueue_urgent_bytes+0x150>
d0200826:	4408      	add	r0, r1
d0200828:	f8df a130 	ldr.w	sl, [pc, #304]	; d020095c <midi_tx_enqueue_urgent_bytes+0x154>
d020082c:	f8bb 3000 	ldrh.w	r3, [fp]
d0200830:	f815 1b01 	ldrb.w	r1, [r5], #1
d0200834:	1c5a      	adds	r2, r3, #1
d0200836:	42a8      	cmp	r0, r5
d0200838:	f80a 1003 	strb.w	r1, [sl, r3]
d020083c:	f3c2 0309 	ubfx	r3, r2, #0, #10
d0200840:	d1f6      	bne.n	d0200830 <midi_tx_enqueue_urgent_bytes+0x28>
d0200842:	4466      	add	r6, ip
d0200844:	2001      	movs	r0, #1
d0200846:	f8ab 3000 	strh.w	r3, [fp]
d020084a:	f8a9 6000 	strh.w	r6, [r9]
d020084e:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0200852:	f1bc 0f00 	cmp.w	ip, #0
d0200856:	d071      	beq.n	d020093c <midi_tx_enqueue_urgent_bytes+0x134>
d0200858:	4b3d      	ldr	r3, [pc, #244]	; (d0200950 <midi_tx_enqueue_urgent_bytes+0x148>)
d020085a:	273c      	movs	r7, #60	; 0x3c
d020085c:	f8df b0f8 	ldr.w	fp, [pc, #248]	; d0200958 <midi_tx_enqueue_urgent_bytes+0x150>
d0200860:	8818      	ldrh	r0, [r3, #0]
d0200862:	f8df a0f8 	ldr.w	sl, [pc, #248]	; d020095c <midi_tx_enqueue_urgent_bytes+0x154>
d0200866:	f8df 80f8 	ldr.w	r8, [pc, #248]	; d0200960 <midi_tx_enqueue_urgent_bytes+0x158>
d020086a:	e001      	b.n	d0200870 <midi_tx_enqueue_urgent_bytes+0x68>
d020086c:	2f00      	cmp	r7, #0
d020086e:	d049      	beq.n	d0200904 <midi_tx_enqueue_urgent_bytes+0xfc>
d0200870:	f8bb 2000 	ldrh.w	r2, [fp]
d0200874:	f5c0 6480 	rsb	r4, r0, #1024	; 0x400
d0200878:	f898 e014 	ldrb.w	lr, [r8, #20]
d020087c:	4282      	cmp	r2, r0
d020087e:	eba2 0200 	sub.w	r2, r2, r0
d0200882:	b2a4      	uxth	r4, r4
d0200884:	4450      	add	r0, sl
d0200886:	bf88      	it	hi
d0200888:	b294      	uxthhi	r4, r2
d020088a:	f898 2015 	ldrb.w	r2, [r8, #21]
d020088e:	f898 1016 	ldrb.w	r1, [r8, #22]
d0200892:	42bc      	cmp	r4, r7
d0200894:	ea4e 2e02 	orr.w	lr, lr, r2, lsl #8
d0200898:	f898 2017 	ldrb.w	r2, [r8, #23]
d020089c:	bf28      	it	cs
d020089e:	463c      	movcs	r4, r7
d02008a0:	4564      	cmp	r4, ip
d02008a2:	bf28      	it	cs
d02008a4:	4664      	movcs	r4, ip
d02008a6:	ea4e 4c01 	orr.w	ip, lr, r1, lsl #16
d02008aa:	ea4c 6202 	orr.w	r2, ip, r2, lsl #24
d02008ae:	4621      	mov	r1, r4
d02008b0:	1b3f      	subs	r7, r7, r4
d02008b2:	6812      	ldr	r2, [r2, #0]
d02008b4:	b2bf      	uxth	r7, r7
d02008b6:	6952      	ldr	r2, [r2, #20]
d02008b8:	4790      	blx	r2
d02008ba:	4b25      	ldr	r3, [pc, #148]	; (d0200950 <midi_tx_enqueue_urgent_bytes+0x148>)
d02008bc:	f8b9 2000 	ldrh.w	r2, [r9]
d02008c0:	8818      	ldrh	r0, [r3, #0]
d02008c2:	eba2 0c04 	sub.w	ip, r2, r4
d02008c6:	4420      	add	r0, r4
d02008c8:	fa1f fc8c 	uxth.w	ip, ip
d02008cc:	f3c0 0009 	ubfx	r0, r0, #0, #10
d02008d0:	f8a9 c000 	strh.w	ip, [r9]
d02008d4:	8018      	strh	r0, [r3, #0]
d02008d6:	f1bc 0f00 	cmp.w	ip, #0
d02008da:	d1c7      	bne.n	d020086c <midi_tx_enqueue_urgent_bytes+0x64>
d02008dc:	4631      	mov	r1, r6
d02008de:	f8bb 3000 	ldrh.w	r3, [fp]
d02008e2:	442e      	add	r6, r5
d02008e4:	f815 0b01 	ldrb.w	r0, [r5], #1
d02008e8:	1c5a      	adds	r2, r3, #1
d02008ea:	42ae      	cmp	r6, r5
d02008ec:	f80a 0003 	strb.w	r0, [sl, r3]
d02008f0:	f3c2 0309 	ubfx	r3, r2, #0, #10
d02008f4:	d1f6      	bne.n	d02008e4 <midi_tx_enqueue_urgent_bytes+0xdc>
d02008f6:	2001      	movs	r0, #1
d02008f8:	f8ab 3000 	strh.w	r3, [fp]
d02008fc:	f8a9 1000 	strh.w	r1, [r9]
d0200900:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0200904:	f504 6480 	add.w	r4, r4, #1024	; 0x400
d0200908:	1aa4      	subs	r4, r4, r2
d020090a:	b2a4      	uxth	r4, r4
d020090c:	42a6      	cmp	r6, r4
d020090e:	d91a      	bls.n	d0200946 <midi_tx_enqueue_urgent_bytes+0x13e>
d0200910:	f898 3014 	ldrb.w	r3, [r8, #20]
d0200914:	4631      	mov	r1, r6
d0200916:	f898 2015 	ldrb.w	r2, [r8, #21]
d020091a:	4628      	mov	r0, r5
d020091c:	f898 4016 	ldrb.w	r4, [r8, #22]
d0200920:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0200924:	f898 2017 	ldrb.w	r2, [r8, #23]
d0200928:	ea43 4304 	orr.w	r3, r3, r4, lsl #16
d020092c:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0200930:	681b      	ldr	r3, [r3, #0]
d0200932:	695b      	ldr	r3, [r3, #20]
d0200934:	4798      	blx	r3
d0200936:	2001      	movs	r0, #1
d0200938:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
d020093c:	f8df b018 	ldr.w	fp, [pc, #24]	; d0200958 <midi_tx_enqueue_urgent_bytes+0x150>
d0200940:	f8df a018 	ldr.w	sl, [pc, #24]	; d020095c <midi_tx_enqueue_urgent_bytes+0x154>
d0200944:	e7ca      	b.n	d02008dc <midi_tx_enqueue_urgent_bytes+0xd4>
d0200946:	eb06 010c 	add.w	r1, r6, ip
d020094a:	b289      	uxth	r1, r1
d020094c:	e7c7      	b.n	d02008de <midi_tx_enqueue_urgent_bytes+0xd6>
d020094e:	bf00      	nop
d0200950:	d0204454 	.word	0xd0204454
d0200954:	d0204050 	.word	0xd0204050
d0200958:	d0204052 	.word	0xd0204052
d020095c:	d0204054 	.word	0xd0204054
d0200960:	2001f000 	.word	0x2001f000

d0200964 <midi_player_update_us.part.0>:
d0200964:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0200968:	f8d0 310c 	ldr.w	r3, [r0, #268]	; 0x10c
d020096c:	f04f 0a00 	mov.w	sl, #0
d0200970:	b089      	sub	sp, #36	; 0x24
d0200972:	f890 7100 	ldrb.w	r7, [r0, #256]	; 0x100
d0200976:	4419      	add	r1, r3
d0200978:	46d3      	mov	fp, sl
d020097a:	4682      	mov	sl, r0
d020097c:	f8c0 110c 	str.w	r1, [r0, #268]	; 0x10c
d0200980:	2f00      	cmp	r7, #0
d0200982:	f000 8275 	beq.w	d0200e70 <midi_player_update_us.part.0+0x50c>
d0200986:	1e7a      	subs	r2, r7, #1
d0200988:	f10a 0110 	add.w	r1, sl, #16
d020098c:	4653      	mov	r3, sl
d020098e:	f04f 35ff 	mov.w	r5, #4294967295	; 0xffffffff
d0200992:	b2d2      	uxtb	r2, r2
d0200994:	2400      	movs	r4, #0
d0200996:	eb01 1102 	add.w	r1, r1, r2, lsl #4
d020099a:	7b5a      	ldrb	r2, [r3, #13]
d020099c:	b12a      	cbz	r2, d02009aa <midi_player_update_us.part.0+0x46>
d020099e:	6898      	ldr	r0, [r3, #8]
d02009a0:	b10c      	cbz	r4, d02009a6 <midi_player_update_us.part.0+0x42>
d02009a2:	42a8      	cmp	r0, r5
d02009a4:	d201      	bcs.n	d02009aa <midi_player_update_us.part.0+0x46>
d02009a6:	4605      	mov	r5, r0
d02009a8:	4614      	mov	r4, r2
d02009aa:	3310      	adds	r3, #16
d02009ac:	4299      	cmp	r1, r3
d02009ae:	d1f4      	bne.n	d020099a <midi_player_update_us.part.0+0x36>
d02009b0:	2c00      	cmp	r4, #0
d02009b2:	f000 825d 	beq.w	d0200e70 <midi_player_update_us.part.0+0x50c>
d02009b6:	f8da 1108 	ldr.w	r1, [sl, #264]	; 0x108
d02009ba:	2300      	movs	r3, #0
d02009bc:	f8da 0110 	ldr.w	r0, [sl, #272]	; 0x110
d02009c0:	1a6e      	subs	r6, r5, r1
d02009c2:	f8da 4114 	ldr.w	r4, [sl, #276]	; 0x114
d02009c6:	2100      	movs	r1, #0
d02009c8:	f8ba 2104 	ldrh.w	r2, [sl, #260]	; 0x104
d02009cc:	fbe4 0106 	umlal	r0, r1, r4, r6
d02009d0:	f001 fc0e 	bl	d02021f0 <__aeabi_uldivmod>
d02009d4:	f8da 310c 	ldr.w	r3, [sl, #268]	; 0x10c
d02009d8:	4298      	cmp	r0, r3
d02009da:	f200 824e 	bhi.w	d0200e7a <midi_player_update_us.part.0+0x516>
d02009de:	1a1b      	subs	r3, r3, r0
d02009e0:	2000      	movs	r0, #0
d02009e2:	f8ca 5108 	str.w	r5, [sl, #264]	; 0x108
d02009e6:	4681      	mov	r9, r0
d02009e8:	f8ca 310c 	str.w	r3, [sl, #268]	; 0x10c
d02009ec:	f8ca 2110 	str.w	r2, [sl, #272]	; 0x110
d02009f0:	e005      	b.n	d02009fe <midi_player_update_us.part.0+0x9a>
d02009f2:	f109 0901 	add.w	r9, r9, #1
d02009f6:	fa5f f989 	uxtb.w	r9, r9
d02009fa:	45b9      	cmp	r9, r7
d02009fc:	d26e      	bcs.n	d0200adc <midi_player_update_us.part.0+0x178>
d02009fe:	eb0a 1109 	add.w	r1, sl, r9, lsl #4
d0200a02:	ea4f 1509 	mov.w	r5, r9, lsl #4
d0200a06:	7b4c      	ldrb	r4, [r1, #13]
d0200a08:	2c00      	cmp	r4, #0
d0200a0a:	d0f2      	beq.n	d02009f2 <midi_player_update_us.part.0+0x8e>
d0200a0c:	688a      	ldr	r2, [r1, #8]
d0200a0e:	f8da 3108 	ldr.w	r3, [sl, #264]	; 0x108
d0200a12:	429a      	cmp	r2, r3
d0200a14:	d1ed      	bne.n	d02009f2 <midi_player_update_us.part.0+0x8e>
d0200a16:	f85a 0005 	ldr.w	r0, [sl, r5]
d0200a1a:	46a8      	mov	r8, r5
d0200a1c:	684b      	ldr	r3, [r1, #4]
d0200a1e:	9100      	str	r1, [sp, #0]
d0200a20:	4298      	cmp	r0, r3
d0200a22:	d26b      	bcs.n	d0200afc <midi_player_update_us.part.0+0x198>
d0200a24:	f990 6000 	ldrsb.w	r6, [r0]
d0200a28:	7802      	ldrb	r2, [r0, #0]
d0200a2a:	2e00      	cmp	r6, #0
d0200a2c:	db69      	blt.n	d0200b02 <midi_player_update_us.part.0+0x19e>
d0200a2e:	7b0a      	ldrb	r2, [r1, #12]
d0200a30:	2a00      	cmp	r2, #0
d0200a32:	f000 814b 	beq.w	d0200ccc <midi_player_update_us.part.0+0x368>
d0200a36:	2aff      	cmp	r2, #255	; 0xff
d0200a38:	f000 814a 	beq.w	d0200cd0 <midi_player_update_us.part.0+0x36c>
d0200a3c:	f1a2 0cf0 	sub.w	ip, r2, #240	; 0xf0
d0200a40:	2af7      	cmp	r2, #247	; 0xf7
d0200a42:	fabc fc8c 	clz	ip, ip
d0200a46:	ea4f 1c5c 	mov.w	ip, ip, lsr #5
d0200a4a:	d002      	beq.n	d0200a52 <midi_player_update_us.part.0+0xee>
d0200a4c:	f1bc 0f00 	cmp.w	ip, #0
d0200a50:	d05d      	beq.n	d0200b0e <midi_player_update_us.part.0+0x1aa>
d0200a52:	f85a 1008 	ldr.w	r1, [sl, r8]
d0200a56:	428b      	cmp	r3, r1
d0200a58:	d92d      	bls.n	d0200ab6 <midi_player_update_us.part.0+0x152>
d0200a5a:	1c4e      	adds	r6, r1, #1
d0200a5c:	f84a 6008 	str.w	r6, [sl, r8]
d0200a60:	7808      	ldrb	r0, [r1, #0]
d0200a62:	f000 077f 	and.w	r7, r0, #127	; 0x7f
d0200a66:	0600      	lsls	r0, r0, #24
d0200a68:	f140 81bb 	bpl.w	d0200de2 <midi_player_update_us.part.0+0x47e>
d0200a6c:	42b3      	cmp	r3, r6
d0200a6e:	d922      	bls.n	d0200ab6 <midi_player_update_us.part.0+0x152>
d0200a70:	1c8e      	adds	r6, r1, #2
d0200a72:	f84a 6008 	str.w	r6, [sl, r8]
d0200a76:	7848      	ldrb	r0, [r1, #1]
d0200a78:	f000 0e7f 	and.w	lr, r0, #127	; 0x7f
d0200a7c:	0600      	lsls	r0, r0, #24
d0200a7e:	ea4e 17c7 	orr.w	r7, lr, r7, lsl #7
d0200a82:	f140 81ae 	bpl.w	d0200de2 <midi_player_update_us.part.0+0x47e>
d0200a86:	42b3      	cmp	r3, r6
d0200a88:	d915      	bls.n	d0200ab6 <midi_player_update_us.part.0+0x152>
d0200a8a:	1cce      	adds	r6, r1, #3
d0200a8c:	f84a 6008 	str.w	r6, [sl, r8]
d0200a90:	7888      	ldrb	r0, [r1, #2]
d0200a92:	f000 0e7f 	and.w	lr, r0, #127	; 0x7f
d0200a96:	0600      	lsls	r0, r0, #24
d0200a98:	ea4e 17c7 	orr.w	r7, lr, r7, lsl #7
d0200a9c:	f140 81a1 	bpl.w	d0200de2 <midi_player_update_us.part.0+0x47e>
d0200aa0:	42b3      	cmp	r3, r6
d0200aa2:	d908      	bls.n	d0200ab6 <midi_player_update_us.part.0+0x152>
d0200aa4:	1d0e      	adds	r6, r1, #4
d0200aa6:	f84a 6008 	str.w	r6, [sl, r8]
d0200aaa:	f991 0003 	ldrsb.w	r0, [r1, #3]
d0200aae:	78c9      	ldrb	r1, [r1, #3]
d0200ab0:	2800      	cmp	r0, #0
d0200ab2:	f280 8194 	bge.w	d0200dde <midi_player_update_us.part.0+0x47a>
d0200ab6:	4455      	add	r5, sl
d0200ab8:	2300      	movs	r3, #0
d0200aba:	736b      	strb	r3, [r5, #13]
d0200abc:	f10b 0b01 	add.w	fp, fp, #1
d0200ac0:	f5bb 5f80 	cmp.w	fp, #4096	; 0x1000
d0200ac4:	f080 81d9 	bcs.w	d0200e7a <midi_player_update_us.part.0+0x516>
d0200ac8:	f109 0901 	add.w	r9, r9, #1
d0200acc:	f89a 7100 	ldrb.w	r7, [sl, #256]	; 0x100
d0200ad0:	fa5f f989 	uxtb.w	r9, r9
d0200ad4:	45b9      	cmp	r9, r7
d0200ad6:	d208      	bcs.n	d0200aea <midi_player_update_us.part.0+0x186>
d0200ad8:	4620      	mov	r0, r4
d0200ada:	e790      	b.n	d02009fe <midi_player_update_us.part.0+0x9a>
d0200adc:	f5bb 5f80 	cmp.w	fp, #4096	; 0x1000
d0200ae0:	f080 81cb 	bcs.w	d0200e7a <midi_player_update_us.part.0+0x516>
d0200ae4:	2800      	cmp	r0, #0
d0200ae6:	f000 81cb 	beq.w	d0200e80 <midi_player_update_us.part.0+0x51c>
d0200aea:	2f00      	cmp	r7, #0
d0200aec:	f000 81c0 	beq.w	d0200e70 <midi_player_update_us.part.0+0x50c>
d0200af0:	2000      	movs	r0, #0
d0200af2:	4681      	mov	r9, r0
d0200af4:	e783      	b.n	d02009fe <midi_player_update_us.part.0+0x9a>
d0200af6:	4283      	cmp	r3, r0
d0200af8:	f200 80ea 	bhi.w	d0200cd0 <midi_player_update_us.part.0+0x36c>
d0200afc:	2300      	movs	r3, #0
d0200afe:	734b      	strb	r3, [r1, #13]
d0200b00:	e7dc      	b.n	d0200abc <midi_player_update_us.part.0+0x158>
d0200b02:	3001      	adds	r0, #1
d0200b04:	2aef      	cmp	r2, #239	; 0xef
d0200b06:	f84a 0005 	str.w	r0, [sl, r5]
d0200b0a:	d873      	bhi.n	d0200bf4 <midi_player_update_us.part.0+0x290>
d0200b0c:	730a      	strb	r2, [r1, #12]
d0200b0e:	f082 0180 	eor.w	r1, r2, #128	; 0x80
d0200b12:	296f      	cmp	r1, #111	; 0x6f
d0200b14:	d87e      	bhi.n	d0200c14 <midi_player_update_us.part.0+0x2b0>
d0200b16:	f002 0ee0 	and.w	lr, r2, #224	; 0xe0
d0200b1a:	f1be 0fc0 	cmp.w	lr, #192	; 0xc0
d0200b1e:	f040 81b4 	bne.w	d0200e8a <midi_player_update_us.part.0+0x526>
d0200b22:	2001      	movs	r0, #1
d0200b24:	2102      	movs	r1, #2
d0200b26:	4607      	mov	r7, r0
d0200b28:	f85a 6008 	ldr.w	r6, [sl, r8]
d0200b2c:	1b9b      	subs	r3, r3, r6
d0200b2e:	4283      	cmp	r3, r0
d0200b30:	d3c1      	bcc.n	d0200ab6 <midi_player_update_us.part.0+0x152>
d0200b32:	1c73      	adds	r3, r6, #1
d0200b34:	f88d 201c 	strb.w	r2, [sp, #28]
d0200b38:	2f02      	cmp	r7, #2
d0200b3a:	f84a 3008 	str.w	r3, [sl, r8]
d0200b3e:	7830      	ldrb	r0, [r6, #0]
d0200b40:	f88d 001d 	strb.w	r0, [sp, #29]
d0200b44:	d105      	bne.n	d0200b52 <midi_player_update_us.part.0+0x1ee>
d0200b46:	1cb3      	adds	r3, r6, #2
d0200b48:	f84a 3008 	str.w	r3, [sl, r8]
d0200b4c:	7873      	ldrb	r3, [r6, #1]
d0200b4e:	f88d 301e 	strb.w	r3, [sp, #30]
d0200b52:	f002 03f0 	and.w	r3, r2, #240	; 0xf0
d0200b56:	2902      	cmp	r1, #2
d0200b58:	9301      	str	r3, [sp, #4]
d0200b5a:	d009      	beq.n	d0200b70 <midi_player_update_us.part.0+0x20c>
d0200b5c:	f002 060f 	and.w	r6, r2, #15
d0200b60:	2b90      	cmp	r3, #144	; 0x90
d0200b62:	9604      	str	r6, [sp, #16]
d0200b64:	9603      	str	r6, [sp, #12]
d0200b66:	f000 8206 	beq.w	d0200f76 <midi_player_update_us.part.0+0x612>
d0200b6a:	2b80      	cmp	r3, #128	; 0x80
d0200b6c:	f000 82fe 	beq.w	d020116c <midi_player_update_us.part.0+0x808>
d0200b70:	f89a 3101 	ldrb.w	r3, [sl, #257]	; 0x101
d0200b74:	2b01      	cmp	r3, #1
d0200b76:	d158      	bne.n	d0200c2a <midi_player_update_us.part.0+0x2c6>
d0200b78:	f002 030f 	and.w	r3, r2, #15
d0200b7c:	9a01      	ldr	r2, [sp, #4]
d0200b7e:	2ac0      	cmp	r2, #192	; 0xc0
d0200b80:	9302      	str	r3, [sp, #8]
d0200b82:	f000 82b0 	beq.w	d02010e6 <midi_player_update_us.part.0+0x782>
d0200b86:	2ab0      	cmp	r2, #176	; 0xb0
d0200b88:	4613      	mov	r3, r2
d0200b8a:	f040 822a 	bne.w	d0200fe2 <midi_player_update_us.part.0+0x67e>
d0200b8e:	280a      	cmp	r0, #10
d0200b90:	d05a      	beq.n	d0200c48 <midi_player_update_us.part.0+0x2e4>
d0200b92:	285b      	cmp	r0, #91	; 0x5b
d0200b94:	d007      	beq.n	d0200ba6 <midi_player_update_us.part.0+0x242>
d0200b96:	f200 82df 	bhi.w	d0201158 <midi_player_update_us.part.0+0x7f4>
d0200b9a:	2807      	cmp	r0, #7
d0200b9c:	d003      	beq.n	d0200ba6 <midi_player_update_us.part.0+0x242>
d0200b9e:	2840      	cmp	r0, #64	; 0x40
d0200ba0:	d001      	beq.n	d0200ba6 <midi_player_update_us.part.0+0x242>
d0200ba2:	2801      	cmp	r0, #1
d0200ba4:	d150      	bne.n	d0200c48 <midi_player_update_us.part.0+0x2e4>
d0200ba6:	2902      	cmp	r1, #2
d0200ba8:	bf94      	ite	ls
d0200baa:	2300      	movls	r3, #0
d0200bac:	2301      	movhi	r3, #1
d0200bae:	9a01      	ldr	r2, [sp, #4]
d0200bb0:	2a80      	cmp	r2, #128	; 0x80
d0200bb2:	f040 82a5 	bne.w	d0201100 <midi_player_update_us.part.0+0x79c>
d0200bb6:	2b00      	cmp	r3, #0
d0200bb8:	f000 82a2 	beq.w	d0201100 <midi_player_update_us.part.0+0x79c>
d0200bbc:	a807      	add	r0, sp, #28
d0200bbe:	f7ff fe23 	bl	d0200808 <midi_tx_enqueue_urgent_bytes>
d0200bc2:	2800      	cmp	r0, #0
d0200bc4:	d040      	beq.n	d0200c48 <midi_player_update_us.part.0+0x2e4>
d0200bc6:	f89d 101d 	ldrb.w	r1, [sp, #29]
d0200bca:	2300      	movs	r3, #0
d0200bcc:	4ec4      	ldr	r6, [pc, #784]	; (d0200ee0 <midi_player_update_us.part.0+0x57c>)
d0200bce:	f001 017f 	and.w	r1, r1, #127	; 0x7f
d0200bd2:	4632      	mov	r2, r6
d0200bd4:	e003      	b.n	d0200bde <midi_player_update_us.part.0+0x27a>
d0200bd6:	3301      	adds	r3, #1
d0200bd8:	3208      	adds	r2, #8
d0200bda:	2b40      	cmp	r3, #64	; 0x40
d0200bdc:	d034      	beq.n	d0200c48 <midi_player_update_us.part.0+0x2e4>
d0200bde:	79d0      	ldrb	r0, [r2, #7]
d0200be0:	2800      	cmp	r0, #0
d0200be2:	d0f8      	beq.n	d0200bd6 <midi_player_update_us.part.0+0x272>
d0200be4:	7910      	ldrb	r0, [r2, #4]
d0200be6:	9f02      	ldr	r7, [sp, #8]
d0200be8:	42b8      	cmp	r0, r7
d0200bea:	d1f4      	bne.n	d0200bd6 <midi_player_update_us.part.0+0x272>
d0200bec:	7950      	ldrb	r0, [r2, #5]
d0200bee:	4288      	cmp	r0, r1
d0200bf0:	d1f1      	bne.n	d0200bd6 <midi_player_update_us.part.0+0x272>
d0200bf2:	e33c      	b.n	d020126e <midi_player_update_us.part.0+0x90a>
d0200bf4:	2aff      	cmp	r2, #255	; 0xff
d0200bf6:	f43f af7e 	beq.w	d0200af6 <midi_player_update_us.part.0+0x192>
d0200bfa:	f1a2 0cf0 	sub.w	ip, r2, #240	; 0xf0
d0200bfe:	2af7      	cmp	r2, #247	; 0xf7
d0200c00:	fabc fc8c 	clz	ip, ip
d0200c04:	ea4f 1c5c 	mov.w	ip, ip, lsr #5
d0200c08:	f43f af23 	beq.w	d0200a52 <midi_player_update_us.part.0+0xee>
d0200c0c:	f1bc 0f00 	cmp.w	ip, #0
d0200c10:	f47f af1f 	bne.w	d0200a52 <midi_player_update_us.part.0+0xee>
d0200c14:	2af2      	cmp	r2, #242	; 0xf2
d0200c16:	f000 814b 	beq.w	d0200eb0 <midi_player_update_us.part.0+0x54c>
d0200c1a:	f002 01fd 	and.w	r1, r2, #253	; 0xfd
d0200c1e:	29f1      	cmp	r1, #241	; 0xf1
d0200c20:	f000 8137 	beq.w	d0200e92 <midi_player_update_us.part.0+0x52e>
d0200c24:	2101      	movs	r1, #1
d0200c26:	f88d 201c 	strb.w	r2, [sp, #28]
d0200c2a:	4eae      	ldr	r6, [pc, #696]	; (d0200ee4 <midi_player_update_us.part.0+0x580>)
d0200c2c:	a807      	add	r0, sp, #28
d0200c2e:	7d33      	ldrb	r3, [r6, #20]
d0200c30:	7d72      	ldrb	r2, [r6, #21]
d0200c32:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0200c36:	7db2      	ldrb	r2, [r6, #22]
d0200c38:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d0200c3c:	7df2      	ldrb	r2, [r6, #23]
d0200c3e:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0200c42:	681b      	ldr	r3, [r3, #0]
d0200c44:	695b      	ldr	r3, [r3, #20]
d0200c46:	4798      	blx	r3
d0200c48:	eb0a 0305 	add.w	r3, sl, r5
d0200c4c:	7b5b      	ldrb	r3, [r3, #13]
d0200c4e:	2b00      	cmp	r3, #0
d0200c50:	f43f af34 	beq.w	d0200abc <midi_player_update_us.part.0+0x158>
d0200c54:	9b00      	ldr	r3, [sp, #0]
d0200c56:	6859      	ldr	r1, [r3, #4]
d0200c58:	f85a 3008 	ldr.w	r3, [sl, r8]
d0200c5c:	428b      	cmp	r3, r1
d0200c5e:	f4bf af2a 	bcs.w	d0200ab6 <midi_player_update_us.part.0+0x152>
d0200c62:	1c58      	adds	r0, r3, #1
d0200c64:	f84a 0008 	str.w	r0, [sl, r8]
d0200c68:	781e      	ldrb	r6, [r3, #0]
d0200c6a:	f006 027f 	and.w	r2, r6, #127	; 0x7f
d0200c6e:	0636      	lsls	r6, r6, #24
d0200c70:	d527      	bpl.n	d0200cc2 <midi_player_update_us.part.0+0x35e>
d0200c72:	4281      	cmp	r1, r0
d0200c74:	f67f af1f 	bls.w	d0200ab6 <midi_player_update_us.part.0+0x152>
d0200c78:	1c98      	adds	r0, r3, #2
d0200c7a:	f84a 0008 	str.w	r0, [sl, r8]
d0200c7e:	785e      	ldrb	r6, [r3, #1]
d0200c80:	f006 077f 	and.w	r7, r6, #127	; 0x7f
d0200c84:	ea47 12c2 	orr.w	r2, r7, r2, lsl #7
d0200c88:	0637      	lsls	r7, r6, #24
d0200c8a:	d51a      	bpl.n	d0200cc2 <midi_player_update_us.part.0+0x35e>
d0200c8c:	4281      	cmp	r1, r0
d0200c8e:	f67f af12 	bls.w	d0200ab6 <midi_player_update_us.part.0+0x152>
d0200c92:	1cd8      	adds	r0, r3, #3
d0200c94:	f84a 0008 	str.w	r0, [sl, r8]
d0200c98:	789e      	ldrb	r6, [r3, #2]
d0200c9a:	f006 077f 	and.w	r7, r6, #127	; 0x7f
d0200c9e:	0636      	lsls	r6, r6, #24
d0200ca0:	ea47 12c2 	orr.w	r2, r7, r2, lsl #7
d0200ca4:	d50d      	bpl.n	d0200cc2 <midi_player_update_us.part.0+0x35e>
d0200ca6:	4281      	cmp	r1, r0
d0200ca8:	f67f af05 	bls.w	d0200ab6 <midi_player_update_us.part.0+0x152>
d0200cac:	1d19      	adds	r1, r3, #4
d0200cae:	f84a 1008 	str.w	r1, [sl, r8]
d0200cb2:	f993 1003 	ldrsb.w	r1, [r3, #3]
d0200cb6:	78db      	ldrb	r3, [r3, #3]
d0200cb8:	2900      	cmp	r1, #0
d0200cba:	f6ff aefc 	blt.w	d0200ab6 <midi_player_update_us.part.0+0x152>
d0200cbe:	ea43 12c2 	orr.w	r2, r3, r2, lsl #7
d0200cc2:	4455      	add	r5, sl
d0200cc4:	68ab      	ldr	r3, [r5, #8]
d0200cc6:	4413      	add	r3, r2
d0200cc8:	60ab      	str	r3, [r5, #8]
d0200cca:	e6f7      	b.n	d0200abc <midi_player_update_us.part.0+0x158>
d0200ccc:	734a      	strb	r2, [r1, #13]
d0200cce:	e6f5      	b.n	d0200abc <midi_player_update_us.part.0+0x158>
d0200cd0:	1c42      	adds	r2, r0, #1
d0200cd2:	4293      	cmp	r3, r2
d0200cd4:	f84a 2008 	str.w	r2, [sl, r8]
d0200cd8:	7807      	ldrb	r7, [r0, #0]
d0200cda:	f67f aeec 	bls.w	d0200ab6 <midi_player_update_us.part.0+0x152>
d0200cde:	1c82      	adds	r2, r0, #2
d0200ce0:	f84a 2008 	str.w	r2, [sl, r8]
d0200ce4:	7846      	ldrb	r6, [r0, #1]
d0200ce6:	f006 017f 	and.w	r1, r6, #127	; 0x7f
d0200cea:	0636      	lsls	r6, r6, #24
d0200cec:	d527      	bpl.n	d0200d3e <midi_player_update_us.part.0+0x3da>
d0200cee:	4293      	cmp	r3, r2
d0200cf0:	f67f aee1 	bls.w	d0200ab6 <midi_player_update_us.part.0+0x152>
d0200cf4:	1cc2      	adds	r2, r0, #3
d0200cf6:	f84a 2008 	str.w	r2, [sl, r8]
d0200cfa:	7886      	ldrb	r6, [r0, #2]
d0200cfc:	f006 0c7f 	and.w	ip, r6, #127	; 0x7f
d0200d00:	0636      	lsls	r6, r6, #24
d0200d02:	ea4c 11c1 	orr.w	r1, ip, r1, lsl #7
d0200d06:	d51a      	bpl.n	d0200d3e <midi_player_update_us.part.0+0x3da>
d0200d08:	4293      	cmp	r3, r2
d0200d0a:	f67f aed4 	bls.w	d0200ab6 <midi_player_update_us.part.0+0x152>
d0200d0e:	1d02      	adds	r2, r0, #4
d0200d10:	f84a 2008 	str.w	r2, [sl, r8]
d0200d14:	78c6      	ldrb	r6, [r0, #3]
d0200d16:	f006 0c7f 	and.w	ip, r6, #127	; 0x7f
d0200d1a:	0636      	lsls	r6, r6, #24
d0200d1c:	ea4c 11c1 	orr.w	r1, ip, r1, lsl #7
d0200d20:	d50d      	bpl.n	d0200d3e <midi_player_update_us.part.0+0x3da>
d0200d22:	4293      	cmp	r3, r2
d0200d24:	f67f aec7 	bls.w	d0200ab6 <midi_player_update_us.part.0+0x152>
d0200d28:	1d42      	adds	r2, r0, #5
d0200d2a:	f84a 2008 	str.w	r2, [sl, r8]
d0200d2e:	f990 6004 	ldrsb.w	r6, [r0, #4]
d0200d32:	7900      	ldrb	r0, [r0, #4]
d0200d34:	2e00      	cmp	r6, #0
d0200d36:	f6ff aebe 	blt.w	d0200ab6 <midi_player_update_us.part.0+0x152>
d0200d3a:	ea40 11c1 	orr.w	r1, r0, r1, lsl #7
d0200d3e:	1a9b      	subs	r3, r3, r2
d0200d40:	428b      	cmp	r3, r1
d0200d42:	f4ff aeb8 	bcc.w	d0200ab6 <midi_player_update_us.part.0+0x152>
d0200d46:	2f51      	cmp	r7, #81	; 0x51
d0200d48:	f000 8108 	beq.w	d0200f5c <midi_player_update_us.part.0+0x5f8>
d0200d4c:	2f2f      	cmp	r7, #47	; 0x2f
d0200d4e:	d103      	bne.n	d0200d58 <midi_player_update_us.part.0+0x3f4>
d0200d50:	eb0a 0305 	add.w	r3, sl, r5
d0200d54:	2000      	movs	r0, #0
d0200d56:	7358      	strb	r0, [r3, #13]
d0200d58:	440a      	add	r2, r1
d0200d5a:	eb0a 0305 	add.w	r3, sl, r5
d0200d5e:	f84a 2008 	str.w	r2, [sl, r8]
d0200d62:	7b5b      	ldrb	r3, [r3, #13]
d0200d64:	2b00      	cmp	r3, #0
d0200d66:	f43f aea9 	beq.w	d0200abc <midi_player_update_us.part.0+0x158>
d0200d6a:	9b00      	ldr	r3, [sp, #0]
d0200d6c:	6859      	ldr	r1, [r3, #4]
d0200d6e:	428a      	cmp	r2, r1
d0200d70:	f4bf aea1 	bcs.w	d0200ab6 <midi_player_update_us.part.0+0x152>
d0200d74:	1c50      	adds	r0, r2, #1
d0200d76:	f84a 0008 	str.w	r0, [sl, r8]
d0200d7a:	7816      	ldrb	r6, [r2, #0]
d0200d7c:	f006 037f 	and.w	r3, r6, #127	; 0x7f
d0200d80:	0636      	lsls	r6, r6, #24
d0200d82:	d527      	bpl.n	d0200dd4 <midi_player_update_us.part.0+0x470>
d0200d84:	4281      	cmp	r1, r0
d0200d86:	f67f ae96 	bls.w	d0200ab6 <midi_player_update_us.part.0+0x152>
d0200d8a:	1c90      	adds	r0, r2, #2
d0200d8c:	f84a 0008 	str.w	r0, [sl, r8]
d0200d90:	7856      	ldrb	r6, [r2, #1]
d0200d92:	f006 077f 	and.w	r7, r6, #127	; 0x7f
d0200d96:	ea47 13c3 	orr.w	r3, r7, r3, lsl #7
d0200d9a:	0637      	lsls	r7, r6, #24
d0200d9c:	d51a      	bpl.n	d0200dd4 <midi_player_update_us.part.0+0x470>
d0200d9e:	4281      	cmp	r1, r0
d0200da0:	f67f ae89 	bls.w	d0200ab6 <midi_player_update_us.part.0+0x152>
d0200da4:	1cd0      	adds	r0, r2, #3
d0200da6:	f84a 0008 	str.w	r0, [sl, r8]
d0200daa:	7896      	ldrb	r6, [r2, #2]
d0200dac:	f006 077f 	and.w	r7, r6, #127	; 0x7f
d0200db0:	0636      	lsls	r6, r6, #24
d0200db2:	ea47 13c3 	orr.w	r3, r7, r3, lsl #7
d0200db6:	d50d      	bpl.n	d0200dd4 <midi_player_update_us.part.0+0x470>
d0200db8:	4281      	cmp	r1, r0
d0200dba:	f67f ae7c 	bls.w	d0200ab6 <midi_player_update_us.part.0+0x152>
d0200dbe:	1d11      	adds	r1, r2, #4
d0200dc0:	f84a 1008 	str.w	r1, [sl, r8]
d0200dc4:	f992 1003 	ldrsb.w	r1, [r2, #3]
d0200dc8:	78d2      	ldrb	r2, [r2, #3]
d0200dca:	2900      	cmp	r1, #0
d0200dcc:	f6ff ae73 	blt.w	d0200ab6 <midi_player_update_us.part.0+0x152>
d0200dd0:	ea42 13c3 	orr.w	r3, r2, r3, lsl #7
d0200dd4:	4455      	add	r5, sl
d0200dd6:	68aa      	ldr	r2, [r5, #8]
d0200dd8:	4413      	add	r3, r2
d0200dda:	60ab      	str	r3, [r5, #8]
d0200ddc:	e66e      	b.n	d0200abc <midi_player_update_us.part.0+0x158>
d0200dde:	ea41 17c7 	orr.w	r7, r1, r7, lsl #7
d0200de2:	1b9b      	subs	r3, r3, r6
d0200de4:	42bb      	cmp	r3, r7
d0200de6:	f4ff ae66 	bcc.w	d0200ab6 <midi_player_update_us.part.0+0x152>
d0200dea:	f89a 3101 	ldrb.w	r3, [sl, #257]	; 0x101
d0200dee:	2b00      	cmp	r3, #0
d0200df0:	d07a      	beq.n	d0200ee8 <midi_player_update_us.part.0+0x584>
d0200df2:	f85a 2008 	ldr.w	r2, [sl, r8]
d0200df6:	eb0a 0305 	add.w	r3, sl, r5
d0200dfa:	4417      	add	r7, r2
d0200dfc:	f84a 7008 	str.w	r7, [sl, r8]
d0200e00:	7b5b      	ldrb	r3, [r3, #13]
d0200e02:	2b00      	cmp	r3, #0
d0200e04:	f43f ae5a 	beq.w	d0200abc <midi_player_update_us.part.0+0x158>
d0200e08:	9b00      	ldr	r3, [sp, #0]
d0200e0a:	685a      	ldr	r2, [r3, #4]
d0200e0c:	4297      	cmp	r7, r2
d0200e0e:	f4bf ae52 	bcs.w	d0200ab6 <midi_player_update_us.part.0+0x152>
d0200e12:	1c79      	adds	r1, r7, #1
d0200e14:	f84a 1008 	str.w	r1, [sl, r8]
d0200e18:	7838      	ldrb	r0, [r7, #0]
d0200e1a:	f000 037f 	and.w	r3, r0, #127	; 0x7f
d0200e1e:	0600      	lsls	r0, r0, #24
d0200e20:	d5d8      	bpl.n	d0200dd4 <midi_player_update_us.part.0+0x470>
d0200e22:	428a      	cmp	r2, r1
d0200e24:	f67f ae47 	bls.w	d0200ab6 <midi_player_update_us.part.0+0x152>
d0200e28:	1cb9      	adds	r1, r7, #2
d0200e2a:	f84a 1008 	str.w	r1, [sl, r8]
d0200e2e:	7878      	ldrb	r0, [r7, #1]
d0200e30:	f000 067f 	and.w	r6, r0, #127	; 0x7f
d0200e34:	ea46 13c3 	orr.w	r3, r6, r3, lsl #7
d0200e38:	0606      	lsls	r6, r0, #24
d0200e3a:	d5cb      	bpl.n	d0200dd4 <midi_player_update_us.part.0+0x470>
d0200e3c:	428a      	cmp	r2, r1
d0200e3e:	f67f ae3a 	bls.w	d0200ab6 <midi_player_update_us.part.0+0x152>
d0200e42:	1cf9      	adds	r1, r7, #3
d0200e44:	f84a 1008 	str.w	r1, [sl, r8]
d0200e48:	78b8      	ldrb	r0, [r7, #2]
d0200e4a:	f000 067f 	and.w	r6, r0, #127	; 0x7f
d0200e4e:	0600      	lsls	r0, r0, #24
d0200e50:	ea46 13c3 	orr.w	r3, r6, r3, lsl #7
d0200e54:	d5be      	bpl.n	d0200dd4 <midi_player_update_us.part.0+0x470>
d0200e56:	428a      	cmp	r2, r1
d0200e58:	f67f ae2d 	bls.w	d0200ab6 <midi_player_update_us.part.0+0x152>
d0200e5c:	1d3a      	adds	r2, r7, #4
d0200e5e:	f84a 2008 	str.w	r2, [sl, r8]
d0200e62:	f997 1003 	ldrsb.w	r1, [r7, #3]
d0200e66:	78fa      	ldrb	r2, [r7, #3]
d0200e68:	2900      	cmp	r1, #0
d0200e6a:	f6ff ae24 	blt.w	d0200ab6 <midi_player_update_us.part.0+0x152>
d0200e6e:	e7af      	b.n	d0200dd0 <midi_player_update_us.part.0+0x46c>
d0200e70:	2300      	movs	r3, #0
d0200e72:	f88a 3118 	strb.w	r3, [sl, #280]	; 0x118
d0200e76:	f7ff fb3d 	bl	d02004f4 <midi_send_channel_panic>
d0200e7a:	b009      	add	sp, #36	; 0x24
d0200e7c:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0200e80:	f5bb 5f80 	cmp.w	fp, #4096	; 0x1000
d0200e84:	f4ff ad7c 	bcc.w	d0200980 <midi_player_update_us.part.0+0x1c>
d0200e88:	e7f7      	b.n	d0200e7a <midi_player_update_us.part.0+0x516>
d0200e8a:	2002      	movs	r0, #2
d0200e8c:	2103      	movs	r1, #3
d0200e8e:	4607      	mov	r7, r0
d0200e90:	e64a      	b.n	d0200b28 <midi_player_update_us.part.0+0x1c4>
d0200e92:	f85a 0008 	ldr.w	r0, [sl, r8]
d0200e96:	4283      	cmp	r3, r0
d0200e98:	f43f ae0d 	beq.w	d0200ab6 <midi_player_update_us.part.0+0x152>
d0200e9c:	1c43      	adds	r3, r0, #1
d0200e9e:	f88d 201c 	strb.w	r2, [sp, #28]
d0200ea2:	2102      	movs	r1, #2
d0200ea4:	f84a 3008 	str.w	r3, [sl, r8]
d0200ea8:	7803      	ldrb	r3, [r0, #0]
d0200eaa:	f88d 301d 	strb.w	r3, [sp, #29]
d0200eae:	e6bc      	b.n	d0200c2a <midi_player_update_us.part.0+0x2c6>
d0200eb0:	f85a 0008 	ldr.w	r0, [sl, r8]
d0200eb4:	1a1b      	subs	r3, r3, r0
d0200eb6:	2b01      	cmp	r3, #1
d0200eb8:	f67f adfd 	bls.w	d0200ab6 <midi_player_update_us.part.0+0x152>
d0200ebc:	4603      	mov	r3, r0
d0200ebe:	1c46      	adds	r6, r0, #1
d0200ec0:	f88d 201c 	strb.w	r2, [sp, #28]
d0200ec4:	2103      	movs	r1, #3
d0200ec6:	f84a 6008 	str.w	r6, [sl, r8]
d0200eca:	f813 2b02 	ldrb.w	r2, [r3], #2
d0200ece:	f88d 201d 	strb.w	r2, [sp, #29]
d0200ed2:	f84a 3008 	str.w	r3, [sl, r8]
d0200ed6:	7843      	ldrb	r3, [r0, #1]
d0200ed8:	f88d 301e 	strb.w	r3, [sp, #30]
d0200edc:	e6a5      	b.n	d0200c2a <midi_player_update_us.part.0+0x2c6>
d0200ede:	bf00      	nop
d0200ee0:	d0203e4c 	.word	0xd0203e4c
d0200ee4:	2001f000 	.word	0x2001f000
d0200ee8:	f88d 201c 	strb.w	r2, [sp, #28]
d0200eec:	f1bc 0f00 	cmp.w	ip, #0
d0200ef0:	d121      	bne.n	d0200f36 <midi_player_update_us.part.0+0x5d2>
d0200ef2:	2f00      	cmp	r7, #0
d0200ef4:	f43f af7d 	beq.w	d0200df2 <midi_player_update_us.part.0+0x48e>
d0200ef8:	9502      	str	r5, [sp, #8]
d0200efa:	463d      	mov	r5, r7
d0200efc:	9401      	str	r4, [sp, #4]
d0200efe:	4bb2      	ldr	r3, [pc, #712]	; (d02011c8 <midi_player_update_us.part.0+0x864>)
d0200f00:	2d40      	cmp	r5, #64	; 0x40
d0200f02:	462c      	mov	r4, r5
d0200f04:	4630      	mov	r0, r6
d0200f06:	7d19      	ldrb	r1, [r3, #20]
d0200f08:	bf28      	it	cs
d0200f0a:	2440      	movcs	r4, #64	; 0x40
d0200f0c:	7d5a      	ldrb	r2, [r3, #21]
d0200f0e:	f893 e016 	ldrb.w	lr, [r3, #22]
d0200f12:	4426      	add	r6, r4
d0200f14:	ea41 2202 	orr.w	r2, r1, r2, lsl #8
d0200f18:	f893 c017 	ldrb.w	ip, [r3, #23]
d0200f1c:	b2a1      	uxth	r1, r4
d0200f1e:	ea42 4e0e 	orr.w	lr, r2, lr, lsl #16
d0200f22:	ea4e 620c 	orr.w	r2, lr, ip, lsl #24
d0200f26:	6812      	ldr	r2, [r2, #0]
d0200f28:	6952      	ldr	r2, [r2, #20]
d0200f2a:	4790      	blx	r2
d0200f2c:	1b2d      	subs	r5, r5, r4
d0200f2e:	d1e6      	bne.n	d0200efe <midi_player_update_us.part.0+0x59a>
d0200f30:	9c01      	ldr	r4, [sp, #4]
d0200f32:	9d02      	ldr	r5, [sp, #8]
d0200f34:	e75d      	b.n	d0200df2 <midi_player_update_us.part.0+0x48e>
d0200f36:	4aa4      	ldr	r2, [pc, #656]	; (d02011c8 <midi_player_update_us.part.0+0x864>)
d0200f38:	2101      	movs	r1, #1
d0200f3a:	a807      	add	r0, sp, #28
d0200f3c:	7d13      	ldrb	r3, [r2, #20]
d0200f3e:	7d52      	ldrb	r2, [r2, #21]
d0200f40:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0200f44:	4aa0      	ldr	r2, [pc, #640]	; (d02011c8 <midi_player_update_us.part.0+0x864>)
d0200f46:	7d92      	ldrb	r2, [r2, #22]
d0200f48:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d0200f4c:	4a9e      	ldr	r2, [pc, #632]	; (d02011c8 <midi_player_update_us.part.0+0x864>)
d0200f4e:	7dd2      	ldrb	r2, [r2, #23]
d0200f50:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0200f54:	681b      	ldr	r3, [r3, #0]
d0200f56:	695b      	ldr	r3, [r3, #20]
d0200f58:	4798      	blx	r3
d0200f5a:	e7ca      	b.n	d0200ef2 <midi_player_update_us.part.0+0x58e>
d0200f5c:	2903      	cmp	r1, #3
d0200f5e:	f47f aefb 	bne.w	d0200d58 <midi_player_update_us.part.0+0x3f4>
d0200f62:	7853      	ldrb	r3, [r2, #1]
d0200f64:	7816      	ldrb	r6, [r2, #0]
d0200f66:	021b      	lsls	r3, r3, #8
d0200f68:	7890      	ldrb	r0, [r2, #2]
d0200f6a:	ea43 4306 	orr.w	r3, r3, r6, lsl #16
d0200f6e:	4303      	orrs	r3, r0
d0200f70:	f8ca 3114 	str.w	r3, [sl, #276]	; 0x114
d0200f74:	e6f0      	b.n	d0200d58 <midi_player_update_us.part.0+0x3f4>
d0200f76:	f89d 201e 	ldrb.w	r2, [sp, #30]
d0200f7a:	2a00      	cmp	r2, #0
d0200f7c:	f000 8096 	beq.w	d02010ac <midi_player_update_us.part.0+0x748>
d0200f80:	4e92      	ldr	r6, [pc, #584]	; (d02011cc <midi_player_update_us.part.0+0x868>)
d0200f82:	f04f 0c00 	mov.w	ip, #0
d0200f86:	9205      	str	r2, [sp, #20]
d0200f88:	4637      	mov	r7, r6
d0200f8a:	9602      	str	r6, [sp, #8]
d0200f8c:	e00c      	b.n	d0200fa8 <midi_player_update_us.part.0+0x644>
d0200f8e:	6832      	ldr	r2, [r6, #0]
d0200f90:	f10c 0c01 	add.w	ip, ip, #1
d0200f94:	683b      	ldr	r3, [r7, #0]
d0200f96:	429a      	cmp	r2, r3
d0200f98:	bf38      	it	cc
d0200f9a:	4637      	movcc	r7, r6
d0200f9c:	f1bc 0fc0 	cmp.w	ip, #192	; 0xc0
d0200fa0:	f106 0610 	add.w	r6, r6, #16
d0200fa4:	f000 810e 	beq.w	d02011c4 <midi_player_update_us.part.0+0x860>
d0200fa8:	7b33      	ldrb	r3, [r6, #12]
d0200faa:	2b00      	cmp	r3, #0
d0200fac:	d1ef      	bne.n	d0200f8e <midi_player_update_us.part.0+0x62a>
d0200fae:	9b02      	ldr	r3, [sp, #8]
d0200fb0:	9a05      	ldr	r2, [sp, #20]
d0200fb2:	eb03 170c 	add.w	r7, r3, ip, lsl #4
d0200fb6:	4e86      	ldr	r6, [pc, #536]	; (d02011d0 <midi_player_update_us.part.0+0x86c>)
d0200fb8:	f04f 0c01 	mov.w	ip, #1
d0200fbc:	9b03      	ldr	r3, [sp, #12]
d0200fbe:	6836      	ldr	r6, [r6, #0]
d0200fc0:	7238      	strb	r0, [r7, #8]
d0200fc2:	727b      	strb	r3, [r7, #9]
d0200fc4:	72ba      	strb	r2, [r7, #10]
d0200fc6:	603e      	str	r6, [r7, #0]
d0200fc8:	607e      	str	r6, [r7, #4]
d0200fca:	f887 c00b 	strb.w	ip, [r7, #11]
d0200fce:	f887 c00c 	strb.w	ip, [r7, #12]
d0200fd2:	f89a 3101 	ldrb.w	r3, [sl, #257]	; 0x101
d0200fd6:	2b01      	cmp	r3, #1
d0200fd8:	f47f ae27 	bne.w	d0200c2a <midi_player_update_us.part.0+0x2c6>
d0200fdc:	f89d 3010 	ldrb.w	r3, [sp, #16]
d0200fe0:	9302      	str	r3, [sp, #8]
d0200fe2:	f1be 0f80 	cmp.w	lr, #128	; 0x80
d0200fe6:	d102      	bne.n	d0200fee <midi_player_update_us.part.0+0x68a>
d0200fe8:	2903      	cmp	r1, #3
d0200fea:	f000 80d6 	beq.w	d020119a <midi_player_update_us.part.0+0x836>
d0200fee:	9b01      	ldr	r3, [sp, #4]
d0200ff0:	2bd0      	cmp	r3, #208	; 0xd0
d0200ff2:	f43f ae29 	beq.w	d0200c48 <midi_player_update_us.part.0+0x2e4>
d0200ff6:	2ba0      	cmp	r3, #160	; 0xa0
d0200ff8:	f43f ae26 	beq.w	d0200c48 <midi_player_update_us.part.0+0x2e4>
d0200ffc:	2902      	cmp	r1, #2
d0200ffe:	9a01      	ldr	r2, [sp, #4]
d0201000:	bf94      	ite	ls
d0201002:	2300      	movls	r3, #0
d0201004:	2301      	movhi	r3, #1
d0201006:	2a90      	cmp	r2, #144	; 0x90
d0201008:	f47f add1 	bne.w	d0200bae <midi_player_update_us.part.0+0x24a>
d020100c:	2b00      	cmp	r3, #0
d020100e:	f43f adce 	beq.w	d0200bae <midi_player_update_us.part.0+0x24a>
d0201012:	f89d 301e 	ldrb.w	r3, [sp, #30]
d0201016:	9301      	str	r3, [sp, #4]
d0201018:	2b00      	cmp	r3, #0
d020101a:	f43f adcf 	beq.w	d0200bbc <midi_player_update_us.part.0+0x258>
d020101e:	f89d e01d 	ldrb.w	lr, [sp, #29]
d0201022:	2200      	movs	r2, #0
d0201024:	4f6b      	ldr	r7, [pc, #428]	; (d02011d4 <midi_player_update_us.part.0+0x870>)
d0201026:	f00e 037f 	and.w	r3, lr, #127	; 0x7f
d020102a:	463e      	mov	r6, r7
d020102c:	9303      	str	r3, [sp, #12]
d020102e:	463b      	mov	r3, r7
d0201030:	e004      	b.n	d020103c <midi_player_update_us.part.0+0x6d8>
d0201032:	3201      	adds	r2, #1
d0201034:	3308      	adds	r3, #8
d0201036:	2a40      	cmp	r2, #64	; 0x40
d0201038:	f000 80ea 	beq.w	d0201210 <midi_player_update_us.part.0+0x8ac>
d020103c:	79d9      	ldrb	r1, [r3, #7]
d020103e:	2900      	cmp	r1, #0
d0201040:	d0f7      	beq.n	d0201032 <midi_player_update_us.part.0+0x6ce>
d0201042:	7919      	ldrb	r1, [r3, #4]
d0201044:	9802      	ldr	r0, [sp, #8]
d0201046:	4281      	cmp	r1, r0
d0201048:	d1f3      	bne.n	d0201032 <midi_player_update_us.part.0+0x6ce>
d020104a:	7959      	ldrb	r1, [r3, #5]
d020104c:	9803      	ldr	r0, [sp, #12]
d020104e:	4281      	cmp	r1, r0
d0201050:	d1ef      	bne.n	d0201032 <midi_player_update_us.part.0+0x6ce>
d0201052:	4961      	ldr	r1, [pc, #388]	; (d02011d8 <midi_player_update_us.part.0+0x874>)
d0201054:	eb06 00c2 	add.w	r0, r6, r2, lsl #3
d0201058:	680b      	ldr	r3, [r1, #0]
d020105a:	9303      	str	r3, [sp, #12]
d020105c:	9b01      	ldr	r3, [sp, #4]
d020105e:	7183      	strb	r3, [r0, #6]
d0201060:	9b03      	ldr	r3, [sp, #12]
d0201062:	3301      	adds	r3, #1
d0201064:	600b      	str	r3, [r1, #0]
d0201066:	f846 3032 	str.w	r3, [r6, r2, lsl #3]
d020106a:	4b5c      	ldr	r3, [pc, #368]	; (d02011dc <midi_player_update_us.part.0+0x878>)
d020106c:	881b      	ldrh	r3, [r3, #0]
d020106e:	f5c3 6280 	rsb	r2, r3, #1024	; 0x400
d0201072:	b292      	uxth	r2, r2
d0201074:	2a02      	cmp	r2, #2
d0201076:	f240 80e7 	bls.w	d0201248 <midi_player_update_us.part.0+0x8e4>
d020107a:	4f59      	ldr	r7, [pc, #356]	; (d02011e0 <midi_player_update_us.part.0+0x87c>)
d020107c:	3303      	adds	r3, #3
d020107e:	4e57      	ldr	r6, [pc, #348]	; (d02011dc <midi_player_update_us.part.0+0x878>)
d0201080:	8839      	ldrh	r1, [r7, #0]
d0201082:	8033      	strh	r3, [r6, #0]
d0201084:	1c4a      	adds	r2, r1, #1
d0201086:	4e57      	ldr	r6, [pc, #348]	; (d02011e4 <midi_player_update_us.part.0+0x880>)
d0201088:	f89d 001c 	ldrb.w	r0, [sp, #28]
d020108c:	f3c2 0209 	ubfx	r2, r2, #0, #10
d0201090:	5470      	strb	r0, [r6, r1]
d0201092:	1c53      	adds	r3, r2, #1
d0201094:	f806 e002 	strb.w	lr, [r6, r2]
d0201098:	f89d 101e 	ldrb.w	r1, [sp, #30]
d020109c:	f3c3 0309 	ubfx	r3, r3, #0, #10
d02010a0:	1c5a      	adds	r2, r3, #1
d02010a2:	54f1      	strb	r1, [r6, r3]
d02010a4:	f3c2 0309 	ubfx	r3, r2, #0, #10
d02010a8:	803b      	strh	r3, [r7, #0]
d02010aa:	e5cd      	b.n	d0200c48 <midi_player_update_us.part.0+0x2e4>
d02010ac:	4b47      	ldr	r3, [pc, #284]	; (d02011cc <midi_player_update_us.part.0+0x868>)
d02010ae:	4637      	mov	r7, r6
d02010b0:	9302      	str	r3, [sp, #8]
d02010b2:	e003      	b.n	d02010bc <midi_player_update_us.part.0+0x758>
d02010b4:	3201      	adds	r2, #1
d02010b6:	3310      	adds	r3, #16
d02010b8:	2ac0      	cmp	r2, #192	; 0xc0
d02010ba:	d08a      	beq.n	d0200fd2 <midi_player_update_us.part.0+0x66e>
d02010bc:	7b1e      	ldrb	r6, [r3, #12]
d02010be:	2e00      	cmp	r6, #0
d02010c0:	d0f8      	beq.n	d02010b4 <midi_player_update_us.part.0+0x750>
d02010c2:	7ade      	ldrb	r6, [r3, #11]
d02010c4:	2e00      	cmp	r6, #0
d02010c6:	d0f5      	beq.n	d02010b4 <midi_player_update_us.part.0+0x750>
d02010c8:	7a1e      	ldrb	r6, [r3, #8]
d02010ca:	4286      	cmp	r6, r0
d02010cc:	d1f2      	bne.n	d02010b4 <midi_player_update_us.part.0+0x750>
d02010ce:	7a5e      	ldrb	r6, [r3, #9]
d02010d0:	42be      	cmp	r6, r7
d02010d2:	d1ef      	bne.n	d02010b4 <midi_player_update_us.part.0+0x750>
d02010d4:	9e02      	ldr	r6, [sp, #8]
d02010d6:	4b3e      	ldr	r3, [pc, #248]	; (d02011d0 <midi_player_update_us.part.0+0x86c>)
d02010d8:	eb06 1202 	add.w	r2, r6, r2, lsl #4
d02010dc:	2600      	movs	r6, #0
d02010de:	681b      	ldr	r3, [r3, #0]
d02010e0:	72d6      	strb	r6, [r2, #11]
d02010e2:	6053      	str	r3, [r2, #4]
d02010e4:	e775      	b.n	d0200fd2 <midi_player_update_us.part.0+0x66e>
d02010e6:	2b09      	cmp	r3, #9
d02010e8:	f000 8090 	beq.w	d020120c <midi_player_update_us.part.0+0x8a8>
d02010ec:	f000 007f 	and.w	r0, r0, #127	; 0x7f
d02010f0:	4b3d      	ldr	r3, [pc, #244]	; (d02011e8 <midi_player_update_us.part.0+0x884>)
d02010f2:	5c1b      	ldrb	r3, [r3, r0]
d02010f4:	2902      	cmp	r1, #2
d02010f6:	f88d 301d 	strb.w	r3, [sp, #29]
d02010fa:	bf94      	ite	ls
d02010fc:	2300      	movls	r3, #0
d02010fe:	2301      	movhi	r3, #1
d0201100:	9a01      	ldr	r2, [sp, #4]
d0201102:	2ab0      	cmp	r2, #176	; 0xb0
d0201104:	f040 80ed 	bne.w	d02012e2 <midi_player_update_us.part.0+0x97e>
d0201108:	2b00      	cmp	r3, #0
d020110a:	f000 80ea 	beq.w	d02012e2 <midi_player_update_us.part.0+0x97e>
d020110e:	f89d 301d 	ldrb.w	r3, [sp, #29]
d0201112:	2b78      	cmp	r3, #120	; 0x78
d0201114:	f000 8105 	beq.w	d0201322 <midi_player_update_us.part.0+0x9be>
d0201118:	f1a3 067b 	sub.w	r6, r3, #123	; 0x7b
d020111c:	fab6 f686 	clz	r6, r6
d0201120:	0976      	lsrs	r6, r6, #5
d0201122:	2e00      	cmp	r6, #0
d0201124:	f040 80fd 	bne.w	d0201322 <midi_player_update_us.part.0+0x9be>
d0201128:	2b79      	cmp	r3, #121	; 0x79
d020112a:	f040 80da 	bne.w	d02012e2 <midi_player_update_us.part.0+0x97e>
d020112e:	2103      	movs	r1, #3
d0201130:	a807      	add	r0, sp, #28
d0201132:	f7ff fb69 	bl	d0200808 <midi_tx_enqueue_urgent_bytes>
d0201136:	2800      	cmp	r0, #0
d0201138:	f43f ad86 	beq.w	d0200c48 <midi_player_update_us.part.0+0x2e4>
d020113c:	4b25      	ldr	r3, [pc, #148]	; (d02011d4 <midi_player_update_us.part.0+0x870>)
d020113e:	f503 7200 	add.w	r2, r3, #512	; 0x200
d0201142:	79d9      	ldrb	r1, [r3, #7]
d0201144:	b121      	cbz	r1, d0201150 <midi_player_update_us.part.0+0x7ec>
d0201146:	7919      	ldrb	r1, [r3, #4]
d0201148:	9802      	ldr	r0, [sp, #8]
d020114a:	4281      	cmp	r1, r0
d020114c:	bf08      	it	eq
d020114e:	71de      	strbeq	r6, [r3, #7]
d0201150:	3308      	adds	r3, #8
d0201152:	4293      	cmp	r3, r2
d0201154:	d1f5      	bne.n	d0201142 <midi_player_update_us.part.0+0x7de>
d0201156:	e577      	b.n	d0200c48 <midi_player_update_us.part.0+0x2e4>
d0201158:	2879      	cmp	r0, #121	; 0x79
d020115a:	d803      	bhi.n	d0201164 <midi_player_update_us.part.0+0x800>
d020115c:	2877      	cmp	r0, #119	; 0x77
d020115e:	f67f ad73 	bls.w	d0200c48 <midi_player_update_us.part.0+0x2e4>
d0201162:	e520      	b.n	d0200ba6 <midi_player_update_us.part.0+0x242>
d0201164:	287b      	cmp	r0, #123	; 0x7b
d0201166:	f47f ad6f 	bne.w	d0200c48 <midi_player_update_us.part.0+0x2e4>
d020116a:	e51c      	b.n	d0200ba6 <midi_player_update_us.part.0+0x242>
d020116c:	4b17      	ldr	r3, [pc, #92]	; (d02011cc <midi_player_update_us.part.0+0x868>)
d020116e:	4637      	mov	r7, r6
d0201170:	2200      	movs	r2, #0
d0201172:	9302      	str	r3, [sp, #8]
d0201174:	e004      	b.n	d0201180 <midi_player_update_us.part.0+0x81c>
d0201176:	3201      	adds	r2, #1
d0201178:	3310      	adds	r3, #16
d020117a:	2ac0      	cmp	r2, #192	; 0xc0
d020117c:	f43f af29 	beq.w	d0200fd2 <midi_player_update_us.part.0+0x66e>
d0201180:	7b1e      	ldrb	r6, [r3, #12]
d0201182:	2e00      	cmp	r6, #0
d0201184:	d0f7      	beq.n	d0201176 <midi_player_update_us.part.0+0x812>
d0201186:	7ade      	ldrb	r6, [r3, #11]
d0201188:	2e00      	cmp	r6, #0
d020118a:	d0f4      	beq.n	d0201176 <midi_player_update_us.part.0+0x812>
d020118c:	7a1e      	ldrb	r6, [r3, #8]
d020118e:	4286      	cmp	r6, r0
d0201190:	d1f1      	bne.n	d0201176 <midi_player_update_us.part.0+0x812>
d0201192:	7a5e      	ldrb	r6, [r3, #9]
d0201194:	42be      	cmp	r6, r7
d0201196:	d1ee      	bne.n	d0201176 <midi_player_update_us.part.0+0x812>
d0201198:	e79c      	b.n	d02010d4 <midi_player_update_us.part.0+0x770>
d020119a:	9b02      	ldr	r3, [sp, #8]
d020119c:	f000 007f 	and.w	r0, r0, #127	; 0x7f
d02011a0:	2b09      	cmp	r3, #9
d02011a2:	d00c      	beq.n	d02011be <midi_player_update_us.part.0+0x85a>
d02011a4:	2823      	cmp	r0, #35	; 0x23
d02011a6:	d821      	bhi.n	d02011ec <midi_player_update_us.part.0+0x888>
d02011a8:	f100 030c 	add.w	r3, r0, #12
d02011ac:	2b23      	cmp	r3, #35	; 0x23
d02011ae:	d805      	bhi.n	d02011bc <midi_player_update_us.part.0+0x858>
d02011b0:	f100 0318 	add.w	r3, r0, #24
d02011b4:	2b23      	cmp	r3, #35	; 0x23
d02011b6:	d801      	bhi.n	d02011bc <midi_player_update_us.part.0+0x858>
d02011b8:	f100 0324 	add.w	r3, r0, #36	; 0x24
d02011bc:	4618      	mov	r0, r3
d02011be:	f88d 001d 	strb.w	r0, [sp, #29]
d02011c2:	e71b      	b.n	d0200ffc <midi_player_update_us.part.0+0x698>
d02011c4:	9a05      	ldr	r2, [sp, #20]
d02011c6:	e6f6      	b.n	d0200fb6 <midi_player_update_us.part.0+0x652>
d02011c8:	2001f000 	.word	0x2001f000
d02011cc:	d020445c 	.word	0xd020445c
d02011d0:	d0204458 	.word	0xd0204458
d02011d4:	d0203e4c 	.word	0xd0203e4c
d02011d8:	d020404c 	.word	0xd020404c
d02011dc:	d0204050 	.word	0xd0204050
d02011e0:	d0204052 	.word	0xd0204052
d02011e4:	d0204054 	.word	0xd0204054
d02011e8:	d02037e8 	.word	0xd02037e8
d02011ec:	2860      	cmp	r0, #96	; 0x60
d02011ee:	d9e6      	bls.n	d02011be <midi_player_update_us.part.0+0x85a>
d02011f0:	f1a0 030c 	sub.w	r3, r0, #12
d02011f4:	b2db      	uxtb	r3, r3
d02011f6:	2b60      	cmp	r3, #96	; 0x60
d02011f8:	d9e0      	bls.n	d02011bc <midi_player_update_us.part.0+0x858>
d02011fa:	f1a0 0318 	sub.w	r3, r0, #24
d02011fe:	b2db      	uxtb	r3, r3
d0201200:	2b60      	cmp	r3, #96	; 0x60
d0201202:	d9db      	bls.n	d02011bc <midi_player_update_us.part.0+0x858>
d0201204:	f1a0 0324 	sub.w	r3, r0, #36	; 0x24
d0201208:	b2db      	uxtb	r3, r3
d020120a:	e7d7      	b.n	d02011bc <midi_player_update_us.part.0+0x858>
d020120c:	2363      	movs	r3, #99	; 0x63
d020120e:	e771      	b.n	d02010f4 <midi_player_update_us.part.0+0x790>
d0201210:	f507 7300 	add.w	r3, r7, #512	; 0x200
d0201214:	4631      	mov	r1, r6
d0201216:	462e      	mov	r6, r5
d0201218:	4625      	mov	r5, r4
d020121a:	461c      	mov	r4, r3
d020121c:	463b      	mov	r3, r7
d020121e:	2000      	movs	r0, #0
d0201220:	79da      	ldrb	r2, [r3, #7]
d0201222:	f100 0c01 	add.w	ip, r0, #1
d0201226:	3308      	adds	r3, #8
d0201228:	b10a      	cbz	r2, d020122e <midi_player_update_us.part.0+0x8ca>
d020122a:	fa5f f08c 	uxtb.w	r0, ip
d020122e:	429c      	cmp	r4, r3
d0201230:	d1f6      	bne.n	d0201220 <midi_player_update_us.part.0+0x8bc>
d0201232:	2817      	cmp	r0, #23
d0201234:	d920      	bls.n	d0201278 <midi_player_update_us.part.0+0x914>
d0201236:	9104      	str	r1, [sp, #16]
d0201238:	f7ff f9ea 	bl	d0200610 <midi_limiter_steal_note>
d020123c:	9904      	ldr	r1, [sp, #16]
d020123e:	2800      	cmp	r0, #0
d0201240:	d1ec      	bne.n	d020121c <midi_player_update_us.part.0+0x8b8>
d0201242:	462c      	mov	r4, r5
d0201244:	4635      	mov	r5, r6
d0201246:	e4ff      	b.n	d0200c48 <midi_player_update_us.part.0+0x2e4>
d0201248:	f00e 0e7f 	and.w	lr, lr, #127	; 0x7f
d020124c:	2300      	movs	r3, #0
d020124e:	e004      	b.n	d020125a <midi_player_update_us.part.0+0x8f6>
d0201250:	3301      	adds	r3, #1
d0201252:	3708      	adds	r7, #8
d0201254:	2b40      	cmp	r3, #64	; 0x40
d0201256:	f43f acf7 	beq.w	d0200c48 <midi_player_update_us.part.0+0x2e4>
d020125a:	79fa      	ldrb	r2, [r7, #7]
d020125c:	2a00      	cmp	r2, #0
d020125e:	d0f7      	beq.n	d0201250 <midi_player_update_us.part.0+0x8ec>
d0201260:	793a      	ldrb	r2, [r7, #4]
d0201262:	9902      	ldr	r1, [sp, #8]
d0201264:	428a      	cmp	r2, r1
d0201266:	d1f3      	bne.n	d0201250 <midi_player_update_us.part.0+0x8ec>
d0201268:	797a      	ldrb	r2, [r7, #5]
d020126a:	4572      	cmp	r2, lr
d020126c:	d1f0      	bne.n	d0201250 <midi_player_update_us.part.0+0x8ec>
d020126e:	eb06 03c3 	add.w	r3, r6, r3, lsl #3
d0201272:	2200      	movs	r2, #0
d0201274:	71da      	strb	r2, [r3, #7]
d0201276:	e4e7      	b.n	d0200c48 <midi_player_update_us.part.0+0x2e4>
d0201278:	462c      	mov	r4, r5
d020127a:	2200      	movs	r2, #0
d020127c:	4635      	mov	r5, r6
d020127e:	460e      	mov	r6, r1
d0201280:	e002      	b.n	d0201288 <midi_player_update_us.part.0+0x924>
d0201282:	3201      	adds	r2, #1
d0201284:	2a40      	cmp	r2, #64	; 0x40
d0201286:	d01b      	beq.n	d02012c0 <midi_player_update_us.part.0+0x95c>
d0201288:	eb06 03c2 	add.w	r3, r6, r2, lsl #3
d020128c:	79db      	ldrb	r3, [r3, #7]
d020128e:	2b00      	cmp	r3, #0
d0201290:	d1f7      	bne.n	d0201282 <midi_player_update_us.part.0+0x91e>
d0201292:	b212      	sxth	r2, r2
d0201294:	482e      	ldr	r0, [pc, #184]	; (d0201350 <midi_player_update_us.part.0+0x9ec>)
d0201296:	f04f 0c01 	mov.w	ip, #1
d020129a:	f89d e01d 	ldrb.w	lr, [sp, #29]
d020129e:	eb06 01c2 	add.w	r1, r6, r2, lsl #3
d02012a2:	6803      	ldr	r3, [r0, #0]
d02012a4:	9802      	ldr	r0, [sp, #8]
d02012a6:	4463      	add	r3, ip
d02012a8:	f881 c007 	strb.w	ip, [r1, #7]
d02012ac:	7108      	strb	r0, [r1, #4]
d02012ae:	9803      	ldr	r0, [sp, #12]
d02012b0:	f846 3032 	str.w	r3, [r6, r2, lsl #3]
d02012b4:	7148      	strb	r0, [r1, #5]
d02012b6:	9801      	ldr	r0, [sp, #4]
d02012b8:	7188      	strb	r0, [r1, #6]
d02012ba:	4825      	ldr	r0, [pc, #148]	; (d0201350 <midi_player_update_us.part.0+0x9ec>)
d02012bc:	6003      	str	r3, [r0, #0]
d02012be:	e6d4      	b.n	d020106a <midi_player_update_us.part.0+0x706>
d02012c0:	f7ff f9a6 	bl	d0200610 <midi_limiter_steal_note>
d02012c4:	2800      	cmp	r0, #0
d02012c6:	f43f acbf 	beq.w	d0200c48 <midi_player_update_us.part.0+0x2e4>
d02012ca:	2200      	movs	r2, #0
d02012cc:	e003      	b.n	d02012d6 <midi_player_update_us.part.0+0x972>
d02012ce:	3201      	adds	r2, #1
d02012d0:	2a40      	cmp	r2, #64	; 0x40
d02012d2:	f43f acb9 	beq.w	d0200c48 <midi_player_update_us.part.0+0x2e4>
d02012d6:	eb06 03c2 	add.w	r3, r6, r2, lsl #3
d02012da:	79db      	ldrb	r3, [r3, #7]
d02012dc:	2b00      	cmp	r3, #0
d02012de:	d1f6      	bne.n	d02012ce <midi_player_update_us.part.0+0x96a>
d02012e0:	e7d7      	b.n	d0201292 <midi_player_update_us.part.0+0x92e>
d02012e2:	4b1c      	ldr	r3, [pc, #112]	; (d0201354 <midi_player_update_us.part.0+0x9f0>)
d02012e4:	b28a      	uxth	r2, r1
d02012e6:	8818      	ldrh	r0, [r3, #0]
d02012e8:	f5c0 6380 	rsb	r3, r0, #1024	; 0x400
d02012ec:	b29b      	uxth	r3, r3
d02012ee:	4299      	cmp	r1, r3
d02012f0:	f63f acaa 	bhi.w	d0200c48 <midi_player_update_us.part.0+0x2e4>
d02012f4:	4b18      	ldr	r3, [pc, #96]	; (d0201358 <midi_player_update_us.part.0+0x9f4>)
d02012f6:	ae07      	add	r6, sp, #28
d02012f8:	4686      	mov	lr, r0
d02012fa:	8819      	ldrh	r1, [r3, #0]
d02012fc:	2300      	movs	r3, #0
d02012fe:	3301      	adds	r3, #1
d0201300:	f816 cb01 	ldrb.w	ip, [r6], #1
d0201304:	1c4f      	adds	r7, r1, #1
d0201306:	4815      	ldr	r0, [pc, #84]	; (d020135c <midi_player_update_us.part.0+0x9f8>)
d0201308:	b29b      	uxth	r3, r3
d020130a:	f800 c001 	strb.w	ip, [r0, r1]
d020130e:	f3c7 0109 	ubfx	r1, r7, #0, #10
d0201312:	429a      	cmp	r2, r3
d0201314:	d8f3      	bhi.n	d02012fe <midi_player_update_us.part.0+0x99a>
d0201316:	4b10      	ldr	r3, [pc, #64]	; (d0201358 <midi_player_update_us.part.0+0x9f4>)
d0201318:	4472      	add	r2, lr
d020131a:	8019      	strh	r1, [r3, #0]
d020131c:	4b0d      	ldr	r3, [pc, #52]	; (d0201354 <midi_player_update_us.part.0+0x9f0>)
d020131e:	801a      	strh	r2, [r3, #0]
d0201320:	e492      	b.n	d0200c48 <midi_player_update_us.part.0+0x2e4>
d0201322:	2103      	movs	r1, #3
d0201324:	a807      	add	r0, sp, #28
d0201326:	f7ff fa6f 	bl	d0200808 <midi_tx_enqueue_urgent_bytes>
d020132a:	2800      	cmp	r0, #0
d020132c:	f43f ac8c 	beq.w	d0200c48 <midi_player_update_us.part.0+0x2e4>
d0201330:	4b0b      	ldr	r3, [pc, #44]	; (d0201360 <midi_player_update_us.part.0+0x9fc>)
d0201332:	2100      	movs	r1, #0
d0201334:	f503 7200 	add.w	r2, r3, #512	; 0x200
d0201338:	79d8      	ldrb	r0, [r3, #7]
d020133a:	b120      	cbz	r0, d0201346 <midi_player_update_us.part.0+0x9e2>
d020133c:	7918      	ldrb	r0, [r3, #4]
d020133e:	9e02      	ldr	r6, [sp, #8]
d0201340:	42b0      	cmp	r0, r6
d0201342:	bf08      	it	eq
d0201344:	71d9      	strbeq	r1, [r3, #7]
d0201346:	3308      	adds	r3, #8
d0201348:	429a      	cmp	r2, r3
d020134a:	d1f5      	bne.n	d0201338 <midi_player_update_us.part.0+0x9d4>
d020134c:	e47c      	b.n	d0200c48 <midi_player_update_us.part.0+0x2e4>
d020134e:	bf00      	nop
d0201350:	d020404c 	.word	0xd020404c
d0201354:	d0204050 	.word	0xd0204050
d0201358:	d0204052 	.word	0xd0204052
d020135c:	d0204054 	.word	0xd0204054
d0201360:	d0203e4c 	.word	0xd0203e4c

d0201364 <midi_player_init>:
d0201364:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0201368:	4616      	mov	r6, r2
d020136a:	b083      	sub	sp, #12
d020136c:	f44f 728e 	mov.w	r2, #284	; 0x11c
d0201370:	460c      	mov	r4, r1
d0201372:	2100      	movs	r1, #0
d0201374:	4605      	mov	r5, r0
d0201376:	f001 f8cd 	bl	d0202514 <memset>
d020137a:	2201      	movs	r2, #1
d020137c:	4b6e      	ldr	r3, [pc, #440]	; (d0201538 <midi_player_init+0x1d4>)
d020137e:	2e0d      	cmp	r6, #13
d0201380:	f885 2101 	strb.w	r2, [r5, #257]	; 0x101
d0201384:	f8c5 3114 	str.w	r3, [r5, #276]	; 0x114
d0201388:	d902      	bls.n	d0201390 <midi_player_init+0x2c>
d020138a:	7823      	ldrb	r3, [r4, #0]
d020138c:	2b4d      	cmp	r3, #77	; 0x4d
d020138e:	d002      	beq.n	d0201396 <midi_player_init+0x32>
d0201390:	b003      	add	sp, #12
d0201392:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0201396:	7863      	ldrb	r3, [r4, #1]
d0201398:	18a2      	adds	r2, r4, r2
d020139a:	2b54      	cmp	r3, #84	; 0x54
d020139c:	d1f8      	bne.n	d0201390 <midi_player_init+0x2c>
d020139e:	f812 3f01 	ldrb.w	r3, [r2, #1]!
d02013a2:	2b68      	cmp	r3, #104	; 0x68
d02013a4:	d1f4      	bne.n	d0201390 <midi_player_init+0x2c>
d02013a6:	7853      	ldrb	r3, [r2, #1]
d02013a8:	2b64      	cmp	r3, #100	; 0x64
d02013aa:	d1f1      	bne.n	d0201390 <midi_player_init+0x2c>
d02013ac:	7963      	ldrb	r3, [r4, #5]
d02013ae:	7922      	ldrb	r2, [r4, #4]
d02013b0:	79a1      	ldrb	r1, [r4, #6]
d02013b2:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
d02013b6:	79e3      	ldrb	r3, [r4, #7]
d02013b8:	ea42 4201 	orr.w	r2, r2, r1, lsl #16
d02013bc:	ea42 6203 	orr.w	r2, r2, r3, lsl #24
d02013c0:	ba12      	rev	r2, r2
d02013c2:	2a05      	cmp	r2, #5
d02013c4:	d9e4      	bls.n	d0201390 <midi_player_init+0x2c>
d02013c6:	f102 0708 	add.w	r7, r2, #8
d02013ca:	42be      	cmp	r6, r7
d02013cc:	d3e0      	bcc.n	d0201390 <midi_player_init+0x2c>
d02013ce:	7a21      	ldrb	r1, [r4, #8]
d02013d0:	7a63      	ldrb	r3, [r4, #9]
d02013d2:	ea43 2301 	orr.w	r3, r3, r1, lsl #8
d02013d6:	f8a5 3102 	strh.w	r3, [r5, #258]	; 0x102
d02013da:	7b21      	ldrb	r1, [r4, #12]
d02013dc:	7b63      	ldrb	r3, [r4, #13]
d02013de:	f894 c00a 	ldrb.w	ip, [r4, #10]
d02013e2:	ea43 2301 	orr.w	r3, r3, r1, lsl #8
d02013e6:	7ae1      	ldrb	r1, [r4, #11]
d02013e8:	b21b      	sxth	r3, r3
d02013ea:	2b00      	cmp	r3, #0
d02013ec:	f8a5 3104 	strh.w	r3, [r5, #260]	; 0x104
d02013f0:	ddce      	ble.n	d0201390 <midi_player_init+0x2c>
d02013f2:	3210      	adds	r2, #16
d02013f4:	2000      	movs	r0, #0
d02013f6:	4296      	cmp	r6, r2
d02013f8:	f0c0 8097 	bcc.w	d020152a <midi_player_init+0x1c6>
d02013fc:	ea41 2a0c 	orr.w	sl, r1, ip, lsl #8
d0201400:	e008      	b.n	d0201414 <midi_player_init+0xb0>
d0201402:	18d7      	adds	r7, r2, r3
d0201404:	f107 0208 	add.w	r2, r7, #8
d0201408:	4296      	cmp	r6, r2
d020140a:	f0c0 808b 	bcc.w	d0201524 <midi_player_init+0x1c0>
d020140e:	280f      	cmp	r0, #15
d0201410:	f200 8090 	bhi.w	d0201534 <midi_player_init+0x1d0>
d0201414:	4582      	cmp	sl, r0
d0201416:	f240 8085 	bls.w	d0201524 <midi_player_init+0x1c0>
d020141a:	19e1      	adds	r1, r4, r7
d020141c:	eba6 0c02 	sub.w	ip, r6, r2
d0201420:	f891 e005 	ldrb.w	lr, [r1, #5]
d0201424:	790b      	ldrb	r3, [r1, #4]
d0201426:	ea43 230e 	orr.w	r3, r3, lr, lsl #8
d020142a:	f891 e006 	ldrb.w	lr, [r1, #6]
d020142e:	ea43 430e 	orr.w	r3, r3, lr, lsl #16
d0201432:	f891 e007 	ldrb.w	lr, [r1, #7]
d0201436:	ea43 630e 	orr.w	r3, r3, lr, lsl #24
d020143a:	ba1b      	rev	r3, r3
d020143c:	4563      	cmp	r3, ip
d020143e:	d871      	bhi.n	d0201524 <midi_player_init+0x1c0>
d0201440:	5de7      	ldrb	r7, [r4, r7]
d0201442:	2f4d      	cmp	r7, #77	; 0x4d
d0201444:	d1dd      	bne.n	d0201402 <midi_player_init+0x9e>
d0201446:	784f      	ldrb	r7, [r1, #1]
d0201448:	3101      	adds	r1, #1
d020144a:	2f54      	cmp	r7, #84	; 0x54
d020144c:	d1d9      	bne.n	d0201402 <midi_player_init+0x9e>
d020144e:	f811 7f01 	ldrb.w	r7, [r1, #1]!
d0201452:	2f72      	cmp	r7, #114	; 0x72
d0201454:	d1d5      	bne.n	d0201402 <midi_player_init+0x9e>
d0201456:	7849      	ldrb	r1, [r1, #1]
d0201458:	296b      	cmp	r1, #107	; 0x6b
d020145a:	d1d2      	bne.n	d0201402 <midi_player_init+0x9e>
d020145c:	0107      	lsls	r7, r0, #4
d020145e:	eb04 0802 	add.w	r8, r4, r2
d0201462:	eb05 1b00 	add.w	fp, r5, r0, lsl #4
d0201466:	2100      	movs	r1, #0
d0201468:	f845 8007 	str.w	r8, [r5, r7]
d020146c:	eb08 0e03 	add.w	lr, r8, r3
d0201470:	f8cb 1008 	str.w	r1, [fp, #8]
d0201474:	f44f 7180 	mov.w	r1, #256	; 0x100
d0201478:	f8cb e004 	str.w	lr, [fp, #4]
d020147c:	4681      	mov	r9, r0
d020147e:	f8ab 100c 	strh.w	r1, [fp, #12]
d0201482:	46f4      	mov	ip, lr
d0201484:	59e9      	ldr	r1, [r5, r7]
d0201486:	9701      	str	r7, [sp, #4]
d0201488:	4571      	cmp	r1, lr
d020148a:	d235      	bcs.n	d02014f8 <midi_player_init+0x194>
d020148c:	f101 0801 	add.w	r8, r1, #1
d0201490:	f845 8007 	str.w	r8, [r5, r7]
d0201494:	f891 e000 	ldrb.w	lr, [r1]
d0201498:	f01e 0f80 	tst.w	lr, #128	; 0x80
d020149c:	f00e 007f 	and.w	r0, lr, #127	; 0x7f
d02014a0:	d033      	beq.n	d020150a <midi_player_init+0x1a6>
d02014a2:	45c4      	cmp	ip, r8
d02014a4:	d926      	bls.n	d02014f4 <midi_player_init+0x190>
d02014a6:	f101 0802 	add.w	r8, r1, #2
d02014aa:	f845 8007 	str.w	r8, [r5, r7]
d02014ae:	f891 e001 	ldrb.w	lr, [r1, #1]
d02014b2:	f00e 0b7f 	and.w	fp, lr, #127	; 0x7f
d02014b6:	f01e 0f80 	tst.w	lr, #128	; 0x80
d02014ba:	ea4b 10c0 	orr.w	r0, fp, r0, lsl #7
d02014be:	d024      	beq.n	d020150a <midi_player_init+0x1a6>
d02014c0:	45c4      	cmp	ip, r8
d02014c2:	d917      	bls.n	d02014f4 <midi_player_init+0x190>
d02014c4:	f101 0803 	add.w	r8, r1, #3
d02014c8:	f845 8007 	str.w	r8, [r5, r7]
d02014cc:	f891 e002 	ldrb.w	lr, [r1, #2]
d02014d0:	f00e 0b7f 	and.w	fp, lr, #127	; 0x7f
d02014d4:	f01e 0f80 	tst.w	lr, #128	; 0x80
d02014d8:	ea4b 10c0 	orr.w	r0, fp, r0, lsl #7
d02014dc:	d015      	beq.n	d020150a <midi_player_init+0x1a6>
d02014de:	45c4      	cmp	ip, r8
d02014e0:	d908      	bls.n	d02014f4 <midi_player_init+0x190>
d02014e2:	f101 0c04 	add.w	ip, r1, #4
d02014e6:	f845 c007 	str.w	ip, [r5, r7]
d02014ea:	f991 7003 	ldrsb.w	r7, [r1, #3]
d02014ee:	78c9      	ldrb	r1, [r1, #3]
d02014f0:	2f00      	cmp	r7, #0
d02014f2:	da08      	bge.n	d0201506 <midi_player_init+0x1a2>
d02014f4:	f895 0100 	ldrb.w	r0, [r5, #256]	; 0x100
d02014f8:	eb05 1909 	add.w	r9, r5, r9, lsl #4
d02014fc:	f04f 0100 	mov.w	r1, #0
d0201500:	f889 100d 	strb.w	r1, [r9, #13]
d0201504:	e77d      	b.n	d0201402 <midi_player_init+0x9e>
d0201506:	ea41 10c0 	orr.w	r0, r1, r0, lsl #7
d020150a:	9901      	ldr	r1, [sp, #4]
d020150c:	4429      	add	r1, r5
d020150e:	460f      	mov	r7, r1
d0201510:	6889      	ldr	r1, [r1, #8]
d0201512:	4408      	add	r0, r1
d0201514:	60b8      	str	r0, [r7, #8]
d0201516:	f895 0100 	ldrb.w	r0, [r5, #256]	; 0x100
d020151a:	3001      	adds	r0, #1
d020151c:	b2c0      	uxtb	r0, r0
d020151e:	f885 0100 	strb.w	r0, [r5, #256]	; 0x100
d0201522:	e76e      	b.n	d0201402 <midi_player_init+0x9e>
d0201524:	3800      	subs	r0, #0
d0201526:	bf18      	it	ne
d0201528:	2001      	movne	r0, #1
d020152a:	f885 0118 	strb.w	r0, [r5, #280]	; 0x118
d020152e:	b003      	add	sp, #12
d0201530:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0201534:	2001      	movs	r0, #1
d0201536:	e7f8      	b.n	d020152a <midi_player_init+0x1c6>
d0201538:	0007a120 	.word	0x0007a120

d020153c <setup>:
d020153c:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0201540:	460f      	mov	r7, r1
d0201542:	b085      	sub	sp, #20
d0201544:	4614      	mov	r4, r2
d0201546:	2100      	movs	r1, #0
d0201548:	4606      	mov	r6, r0
d020154a:	f44f 6240 	mov.w	r2, #3072	; 0xc00
d020154e:	4da4      	ldr	r5, [pc, #656]	; (d02017e0 <setup+0x2a4>)
d0201550:	48a4      	ldr	r0, [pc, #656]	; (d02017e4 <setup+0x2a8>)
d0201552:	f000 ffdf 	bl	d0202514 <memset>
d0201556:	4ba4      	ldr	r3, [pc, #656]	; (d02017e8 <setup+0x2ac>)
d0201558:	f04f 0c00 	mov.w	ip, #0
d020155c:	463a      	mov	r2, r7
d020155e:	4631      	mov	r1, r6
d0201560:	4628      	mov	r0, r5
d0201562:	f8c3 c000 	str.w	ip, [r3]
d0201566:	f7ff fefd 	bl	d0201364 <midi_player_init>
d020156a:	f885 4101 	strb.w	r4, [r5, #257]	; 0x101
d020156e:	b9a4      	cbnz	r4, d020159a <setup+0x5e>
d0201570:	4a9e      	ldr	r2, [pc, #632]	; (d02017ec <setup+0x2b0>)
d0201572:	499f      	ldr	r1, [pc, #636]	; (d02017f0 <setup+0x2b4>)
d0201574:	7d13      	ldrb	r3, [r2, #20]
d0201576:	7d54      	ldrb	r4, [r2, #21]
d0201578:	7d90      	ldrb	r0, [r2, #22]
d020157a:	ea43 2304 	orr.w	r3, r3, r4, lsl #8
d020157e:	7dd2      	ldrb	r2, [r2, #23]
d0201580:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
d0201584:	c903      	ldmia	r1, {r0, r1}
d0201586:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d020158a:	9002      	str	r0, [sp, #8]
d020158c:	a802      	add	r0, sp, #8
d020158e:	f8ad 100c 	strh.w	r1, [sp, #12]
d0201592:	2106      	movs	r1, #6
d0201594:	681b      	ldr	r3, [r3, #0]
d0201596:	695b      	ldr	r3, [r3, #20]
d0201598:	4798      	blx	r3
d020159a:	f7fe ffab 	bl	d02004f4 <midi_send_channel_panic>
d020159e:	f895 8101 	ldrb.w	r8, [r5, #257]	; 0x101
d02015a2:	f1b8 0f01 	cmp.w	r8, #1
d02015a6:	d009      	beq.n	d02015bc <setup+0x80>
d02015a8:	f895 3118 	ldrb.w	r3, [r5, #280]	; 0x118
d02015ac:	b11b      	cbz	r3, d02015b6 <setup+0x7a>
d02015ae:	2100      	movs	r1, #0
d02015b0:	488b      	ldr	r0, [pc, #556]	; (d02017e0 <setup+0x2a4>)
d02015b2:	f7ff f9d7 	bl	d0200964 <midi_player_update_us.part.0>
d02015b6:	b005      	add	sp, #20
d02015b8:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d02015bc:	4f8d      	ldr	r7, [pc, #564]	; (d02017f4 <setup+0x2b8>)
d02015be:	f04f 0c00 	mov.w	ip, #0
d02015c2:	488d      	ldr	r0, [pc, #564]	; (d02017f8 <setup+0x2bc>)
d02015c4:	f04f 0940 	mov.w	r9, #64	; 0x40
d02015c8:	8839      	ldrh	r1, [r7, #0]
d02015ca:	46e6      	mov	lr, ip
d02015cc:	4a8b      	ldr	r2, [pc, #556]	; (d02017fc <setup+0x2c0>)
d02015ce:	f8cd 8004 	str.w	r8, [sp, #4]
d02015d2:	f5c1 6380 	rsb	r3, r1, #1024	; 0x400
d02015d6:	b29b      	uxth	r3, r3
d02015d8:	2b02      	cmp	r3, #2
d02015da:	f240 80b7 	bls.w	d020174c <setup+0x210>
d02015de:	f8b0 a000 	ldrh.w	sl, [r0]
d02015e2:	f04c 06b0 	orr.w	r6, ip, #176	; 0xb0
d02015e6:	1ccc      	adds	r4, r1, #3
d02015e8:	f04f 0879 	mov.w	r8, #121	; 0x79
d02015ec:	f10a 0301 	add.w	r3, sl, #1
d02015f0:	f802 600a 	strb.w	r6, [r2, sl]
d02015f4:	b2a4      	uxth	r4, r4
d02015f6:	f3c3 0a09 	ubfx	sl, r3, #0, #10
d02015fa:	f5c4 6380 	rsb	r3, r4, #1024	; 0x400
d02015fe:	803c      	strh	r4, [r7, #0]
d0201600:	f10a 0b01 	add.w	fp, sl, #1
d0201604:	f802 800a 	strb.w	r8, [r2, sl]
d0201608:	b29b      	uxth	r3, r3
d020160a:	f3cb 0b09 	ubfx	fp, fp, #0, #10
d020160e:	2b02      	cmp	r3, #2
d0201610:	f10b 0a01 	add.w	sl, fp, #1
d0201614:	f802 e00b 	strb.w	lr, [r2, fp]
d0201618:	f3ca 0a09 	ubfx	sl, sl, #0, #10
d020161c:	f8a0 a000 	strh.w	sl, [r0]
d0201620:	f240 80dc 	bls.w	d02017dc <setup+0x2a0>
d0201624:	f10a 0301 	add.w	r3, sl, #1
d0201628:	1d8c      	adds	r4, r1, #6
d020162a:	f802 600a 	strb.w	r6, [r2, sl]
d020162e:	f3c3 0309 	ubfx	r3, r3, #0, #10
d0201632:	fa1f f884 	uxth.w	r8, r4
d0201636:	9c01      	ldr	r4, [sp, #4]
d0201638:	f103 0b01 	add.w	fp, r3, #1
d020163c:	f8a7 8000 	strh.w	r8, [r7]
d0201640:	54d4      	strb	r4, [r2, r3]
d0201642:	f5c8 6380 	rsb	r3, r8, #1024	; 0x400
d0201646:	f3cb 0b09 	ubfx	fp, fp, #0, #10
d020164a:	b29b      	uxth	r3, r3
d020164c:	f10b 0a01 	add.w	sl, fp, #1
d0201650:	f802 e00b 	strb.w	lr, [r2, fp]
d0201654:	2b02      	cmp	r3, #2
d0201656:	f3ca 0a09 	ubfx	sl, sl, #0, #10
d020165a:	f8a0 a000 	strh.w	sl, [r0]
d020165e:	f240 80bb 	bls.w	d02017d8 <setup+0x29c>
d0201662:	f10a 0301 	add.w	r3, sl, #1
d0201666:	f101 0409 	add.w	r4, r1, #9
d020166a:	f04f 0807 	mov.w	r8, #7
d020166e:	f802 600a 	strb.w	r6, [r2, sl]
d0201672:	f3c3 0309 	ubfx	r3, r3, #0, #10
d0201676:	b2a4      	uxth	r4, r4
d0201678:	f103 0b01 	add.w	fp, r3, #1
d020167c:	f802 8003 	strb.w	r8, [r2, r3]
d0201680:	f5c4 6380 	rsb	r3, r4, #1024	; 0x400
d0201684:	f04f 086f 	mov.w	r8, #111	; 0x6f
d0201688:	f3cb 0b09 	ubfx	fp, fp, #0, #10
d020168c:	803c      	strh	r4, [r7, #0]
d020168e:	b29b      	uxth	r3, r3
d0201690:	f10b 0a01 	add.w	sl, fp, #1
d0201694:	f802 800b 	strb.w	r8, [r2, fp]
d0201698:	2b02      	cmp	r3, #2
d020169a:	f3ca 0a09 	ubfx	sl, sl, #0, #10
d020169e:	f8a0 a000 	strh.w	sl, [r0]
d02016a2:	f240 809b 	bls.w	d02017dc <setup+0x2a0>
d02016a6:	f10a 0301 	add.w	r3, sl, #1
d02016aa:	f101 040c 	add.w	r4, r1, #12
d02016ae:	f04f 080a 	mov.w	r8, #10
d02016b2:	f802 600a 	strb.w	r6, [r2, sl]
d02016b6:	f3c3 0309 	ubfx	r3, r3, #0, #10
d02016ba:	b2a4      	uxth	r4, r4
d02016bc:	f103 0b01 	add.w	fp, r3, #1
d02016c0:	f802 8003 	strb.w	r8, [r2, r3]
d02016c4:	f5c4 6380 	rsb	r3, r4, #1024	; 0x400
d02016c8:	803c      	strh	r4, [r7, #0]
d02016ca:	f3cb 0b09 	ubfx	fp, fp, #0, #10
d02016ce:	b29b      	uxth	r3, r3
d02016d0:	f10b 0a01 	add.w	sl, fp, #1
d02016d4:	f802 900b 	strb.w	r9, [r2, fp]
d02016d8:	2b02      	cmp	r3, #2
d02016da:	f3ca 0a09 	ubfx	sl, sl, #0, #10
d02016de:	f8a0 a000 	strh.w	sl, [r0]
d02016e2:	d97b      	bls.n	d02017dc <setup+0x2a0>
d02016e4:	f10a 0301 	add.w	r3, sl, #1
d02016e8:	f101 040f 	add.w	r4, r1, #15
d02016ec:	f802 600a 	strb.w	r6, [r2, sl]
d02016f0:	f3c3 0309 	ubfx	r3, r3, #0, #10
d02016f4:	b2a4      	uxth	r4, r4
d02016f6:	f103 0b01 	add.w	fp, r3, #1
d02016fa:	f802 9003 	strb.w	r9, [r2, r3]
d02016fe:	f5c4 6380 	rsb	r3, r4, #1024	; 0x400
d0201702:	803c      	strh	r4, [r7, #0]
d0201704:	f3cb 0b09 	ubfx	fp, fp, #0, #10
d0201708:	b29b      	uxth	r3, r3
d020170a:	f10b 0a01 	add.w	sl, fp, #1
d020170e:	f802 e00b 	strb.w	lr, [r2, fp]
d0201712:	2b02      	cmp	r3, #2
d0201714:	f3ca 0a09 	ubfx	sl, sl, #0, #10
d0201718:	f8a0 a000 	strh.w	sl, [r0]
d020171c:	d95e      	bls.n	d02017dc <setup+0x2a0>
d020171e:	f10a 0301 	add.w	r3, sl, #1
d0201722:	3112      	adds	r1, #18
d0201724:	f802 600a 	strb.w	r6, [r2, sl]
d0201728:	267b      	movs	r6, #123	; 0x7b
d020172a:	f3c3 0309 	ubfx	r3, r3, #0, #10
d020172e:	b289      	uxth	r1, r1
d0201730:	1c5c      	adds	r4, r3, #1
d0201732:	54d6      	strb	r6, [r2, r3]
d0201734:	f5c1 6380 	rsb	r3, r1, #1024	; 0x400
d0201738:	8039      	strh	r1, [r7, #0]
d020173a:	f3c4 0409 	ubfx	r4, r4, #0, #10
d020173e:	b29b      	uxth	r3, r3
d0201740:	1c66      	adds	r6, r4, #1
d0201742:	f802 e004 	strb.w	lr, [r2, r4]
d0201746:	f3c6 0409 	ubfx	r4, r6, #0, #10
d020174a:	8004      	strh	r4, [r0, #0]
d020174c:	f10c 0c01 	add.w	ip, ip, #1
d0201750:	fa5f fc8c 	uxtb.w	ip, ip
d0201754:	f1bc 0f10 	cmp.w	ip, #16
d0201758:	f47f af3b 	bne.w	d02015d2 <setup+0x96>
d020175c:	4a28      	ldr	r2, [pc, #160]	; (d0201800 <setup+0x2c4>)
d020175e:	2b01      	cmp	r3, #1
d0201760:	6812      	ldr	r2, [r2, #0]
d0201762:	ea4f 4012 	mov.w	r0, r2, lsr #16
d0201766:	f8ad 2008 	strh.w	r2, [sp, #8]
d020176a:	f88d 000a 	strb.w	r0, [sp, #10]
d020176e:	f67f af1b 	bls.w	d02015a8 <setup+0x6c>
d0201772:	4821      	ldr	r0, [pc, #132]	; (d02017f8 <setup+0x2bc>)
d0201774:	1c8b      	adds	r3, r1, #2
d0201776:	4a21      	ldr	r2, [pc, #132]	; (d02017fc <setup+0x2c0>)
d0201778:	f04f 0cc9 	mov.w	ip, #201	; 0xc9
d020177c:	8806      	ldrh	r6, [r0, #0]
d020177e:	b29b      	uxth	r3, r3
d0201780:	1c74      	adds	r4, r6, #1
d0201782:	803b      	strh	r3, [r7, #0]
d0201784:	f5c3 6380 	rsb	r3, r3, #1024	; 0x400
d0201788:	f802 c006 	strb.w	ip, [r2, r6]
d020178c:	f3c4 0409 	ubfx	r4, r4, #0, #10
d0201790:	2663      	movs	r6, #99	; 0x63
d0201792:	b29b      	uxth	r3, r3
d0201794:	f104 0e01 	add.w	lr, r4, #1
d0201798:	5516      	strb	r6, [r2, r4]
d020179a:	2b02      	cmp	r3, #2
d020179c:	f3ce 0e09 	ubfx	lr, lr, #0, #10
d02017a0:	f8a0 e000 	strh.w	lr, [r0]
d02017a4:	f67f af00 	bls.w	d02015a8 <setup+0x6c>
d02017a8:	fa1f f48e 	uxth.w	r4, lr
d02017ac:	3105      	adds	r1, #5
d02017ae:	f89d 6008 	ldrb.w	r6, [sp, #8]
d02017b2:	1c63      	adds	r3, r4, #1
d02017b4:	8039      	strh	r1, [r7, #0]
d02017b6:	5516      	strb	r6, [r2, r4]
d02017b8:	f3c3 0109 	ubfx	r1, r3, #0, #10
d02017bc:	f89d 6009 	ldrb.w	r6, [sp, #9]
d02017c0:	f89d 400a 	ldrb.w	r4, [sp, #10]
d02017c4:	1c4b      	adds	r3, r1, #1
d02017c6:	5456      	strb	r6, [r2, r1]
d02017c8:	f3c3 0309 	ubfx	r3, r3, #0, #10
d02017cc:	1c59      	adds	r1, r3, #1
d02017ce:	54d4      	strb	r4, [r2, r3]
d02017d0:	f3c1 0309 	ubfx	r3, r1, #0, #10
d02017d4:	8003      	strh	r3, [r0, #0]
d02017d6:	e6e7      	b.n	d02015a8 <setup+0x6c>
d02017d8:	4641      	mov	r1, r8
d02017da:	e7b7      	b.n	d020174c <setup+0x210>
d02017dc:	4621      	mov	r1, r4
d02017de:	e7b5      	b.n	d020174c <setup+0x210>
d02017e0:	d0205068 	.word	0xd0205068
d02017e4:	d020445c 	.word	0xd020445c
d02017e8:	d0204458 	.word	0xd0204458
d02017ec:	2001f000 	.word	0x2001f000
d02017f0:	d0203714 	.word	0xd0203714
d02017f4:	d0204050 	.word	0xd0204050
d02017f8:	d0204052 	.word	0xd0204052
d02017fc:	d0204054 	.word	0xd0204054
d0201800:	d020371c 	.word	0xd020371c
d0201804:	00000000 	.word	0x00000000

d0201808 <main>:
d0201808:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d020180c:	4602      	mov	r2, r0
d020180e:	4fbc      	ldr	r7, [pc, #752]	; (d0201b00 <main+0x2f8>)
d0201810:	460d      	mov	r5, r1
d0201812:	2000      	movs	r0, #0
d0201814:	783b      	ldrb	r3, [r7, #0]
d0201816:	2602      	movs	r6, #2
d0201818:	ed2d 8b02 	vpush	{d8}
d020181c:	b089      	sub	sp, #36	; 0x24
d020181e:	9203      	str	r2, [sp, #12]
d0201820:	787a      	ldrb	r2, [r7, #1]
d0201822:	78b9      	ldrb	r1, [r7, #2]
d0201824:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0201828:	78fa      	ldrb	r2, [r7, #3]
d020182a:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d020182e:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0201832:	681b      	ldr	r3, [r3, #0]
d0201834:	4798      	blx	r3
d0201836:	793b      	ldrb	r3, [r7, #4]
d0201838:	797a      	ldrb	r2, [r7, #5]
d020183a:	79b9      	ldrb	r1, [r7, #6]
d020183c:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0201840:	79fa      	ldrb	r2, [r7, #7]
d0201842:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0201846:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d020184a:	689b      	ldr	r3, [r3, #8]
d020184c:	4798      	blx	r3
d020184e:	f7fe fbf5 	bl	d020003c <initMalloc>
d0201852:	7b3b      	ldrb	r3, [r7, #12]
d0201854:	7b7a      	ldrb	r2, [r7, #13]
d0201856:	2190      	movs	r1, #144	; 0x90
d0201858:	7bbc      	ldrb	r4, [r7, #14]
d020185a:	20dc      	movs	r0, #220	; 0xdc
d020185c:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0201860:	7bfa      	ldrb	r2, [r7, #15]
d0201862:	ea43 4304 	orr.w	r3, r3, r4, lsl #16
d0201866:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d020186a:	681b      	ldr	r3, [r3, #0]
d020186c:	691b      	ldr	r3, [r3, #16]
d020186e:	4798      	blx	r3
d0201870:	7b38      	ldrb	r0, [r7, #12]
d0201872:	7b79      	ldrb	r1, [r7, #13]
d0201874:	f44f 73a0 	mov.w	r3, #320	; 0x140
d0201878:	7bba      	ldrb	r2, [r7, #14]
d020187a:	ea40 2001 	orr.w	r0, r0, r1, lsl #8
d020187e:	7bf9      	ldrb	r1, [r7, #15]
d0201880:	ea40 4002 	orr.w	r0, r0, r2, lsl #16
d0201884:	f44f 72f0 	mov.w	r2, #480	; 0x1e0
d0201888:	ea40 6001 	orr.w	r0, r0, r1, lsl #24
d020188c:	4619      	mov	r1, r3
d020188e:	6804      	ldr	r4, [r0, #0]
d0201890:	4610      	mov	r0, r2
d0201892:	9600      	str	r6, [sp, #0]
d0201894:	6964      	ldr	r4, [r4, #20]
d0201896:	47a0      	blx	r4
d0201898:	7b3b      	ldrb	r3, [r7, #12]
d020189a:	7b7a      	ldrb	r2, [r7, #13]
d020189c:	7bb9      	ldrb	r1, [r7, #14]
d020189e:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d02018a2:	7bfa      	ldrb	r2, [r7, #15]
d02018a4:	4e97      	ldr	r6, [pc, #604]	; (d0201b04 <main+0x2fc>)
d02018a6:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d02018aa:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d02018ae:	681b      	ldr	r3, [r3, #0]
d02018b0:	6b5b      	ldr	r3, [r3, #52]	; 0x34
d02018b2:	4798      	blx	r3
d02018b4:	7b3b      	ldrb	r3, [r7, #12]
d02018b6:	4994      	ldr	r1, [pc, #592]	; (d0201b08 <main+0x300>)
d02018b8:	7b7a      	ldrb	r2, [r7, #13]
d02018ba:	6008      	str	r0, [r1, #0]
d02018bc:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d02018c0:	7bb9      	ldrb	r1, [r7, #14]
d02018c2:	7bfa      	ldrb	r2, [r7, #15]
d02018c4:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d02018c8:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d02018cc:	681b      	ldr	r3, [r3, #0]
d02018ce:	6b9b      	ldr	r3, [r3, #56]	; 0x38
d02018d0:	4798      	blx	r3
d02018d2:	4a8e      	ldr	r2, [pc, #568]	; (d0201b0c <main+0x304>)
d02018d4:	4603      	mov	r3, r0
d02018d6:	f44f 3016 	mov.w	r0, #153600	; 0x25800
d02018da:	6013      	str	r3, [r2, #0]
d02018dc:	f000 fe0a 	bl	d02024f4 <malloc>
d02018e0:	6030      	str	r0, [r6, #0]
d02018e2:	6833      	ldr	r3, [r6, #0]
d02018e4:	2b00      	cmp	r3, #0
d02018e6:	f000 8257 	beq.w	d0201d98 <main+0x590>
d02018ea:	4c89      	ldr	r4, [pc, #548]	; (d0201b10 <main+0x308>)
d02018ec:	f44f 72f0 	mov.w	r2, #480	; 0x1e0
d02018f0:	f44f 73a0 	mov.w	r3, #320	; 0x140
d02018f4:	f44f 3c16 	mov.w	ip, #153600	; 0x25800
d02018f8:	80b2      	strh	r2, [r6, #4]
d02018fa:	4620      	mov	r0, r4
d02018fc:	f44f 6280 	mov.w	r2, #1024	; 0x400
d0201900:	2100      	movs	r1, #0
d0201902:	80f3      	strh	r3, [r6, #6]
d0201904:	8133      	strh	r3, [r6, #8]
d0201906:	f8c6 c00c 	str.w	ip, [r6, #12]
d020190a:	f000 fe03 	bl	d0202514 <memset>
d020190e:	7b39      	ldrb	r1, [r7, #12]
d0201910:	4620      	mov	r0, r4
d0201912:	7b7b      	ldrb	r3, [r7, #13]
d0201914:	f8df c1fc 	ldr.w	ip, [pc, #508]	; d0201b14 <main+0x30c>
d0201918:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
d020191c:	7bbb      	ldrb	r3, [r7, #14]
d020191e:	ea41 4103 	orr.w	r1, r1, r3, lsl #16
d0201922:	7bfb      	ldrb	r3, [r7, #15]
d0201924:	ea41 6103 	orr.w	r1, r1, r3, lsl #24
d0201928:	a35d      	add	r3, pc, #372	; (adr r3, d0201aa0 <main+0x298>)
d020192a:	e9d3 2300 	ldrd	r2, r3, [r3]
d020192e:	6809      	ldr	r1, [r1, #0]
d0201930:	f8c4 c020 	str.w	ip, [r4, #32]
d0201934:	6cc9      	ldr	r1, [r1, #76]	; 0x4c
d0201936:	e9c4 2300 	strd	r2, r3, [r4]
d020193a:	a35b      	add	r3, pc, #364	; (adr r3, d0201aa8 <main+0x2a0>)
d020193c:	e9d3 2300 	ldrd	r2, r3, [r3]
d0201940:	f20f 196c 	addw	r9, pc, #364	; 0x16c
d0201944:	e9d9 8900 	ldrd	r8, r9, [r9]
d0201948:	e9c4 2304 	strd	r2, r3, [r4, #16]
d020194c:	a35a      	add	r3, pc, #360	; (adr r3, d0201ab8 <main+0x2b0>)
d020194e:	e9d3 2300 	ldrd	r2, r3, [r3]
d0201952:	e9c4 8902 	strd	r8, r9, [r4, #8]
d0201956:	e9c4 2320 	strd	r2, r3, [r4, #128]	; 0x80
d020195a:	f20f 1964 	addw	r9, pc, #356	; 0x164
d020195e:	e9d9 8900 	ldrd	r8, r9, [r9]
d0201962:	a359      	add	r3, pc, #356	; (adr r3, d0201ac8 <main+0x2c0>)
d0201964:	e9d3 2300 	ldrd	r2, r3, [r3]
d0201968:	e9c4 8906 	strd	r8, r9, [r4, #24]
d020196c:	e9c4 2324 	strd	r2, r3, [r4, #144]	; 0x90
d0201970:	f20f 195c 	addw	r9, pc, #348	; 0x15c
d0201974:	e9d9 8900 	ldrd	r8, r9, [r9]
d0201978:	a357      	add	r3, pc, #348	; (adr r3, d0201ad8 <main+0x2d0>)
d020197a:	e9d3 2300 	ldrd	r2, r3, [r3]
d020197e:	e9c4 8922 	strd	r8, r9, [r4, #136]	; 0x88
d0201982:	e9c4 2328 	strd	r2, r3, [r4, #160]	; 0xa0
d0201986:	f20f 1958 	addw	r9, pc, #344	; 0x158
d020198a:	e9d9 8900 	ldrd	r8, r9, [r9]
d020198e:	a356      	add	r3, pc, #344	; (adr r3, d0201ae8 <main+0x2e0>)
d0201990:	e9d3 2300 	ldrd	r2, r3, [r3]
d0201994:	e9c4 8926 	strd	r8, r9, [r4, #152]	; 0x98
d0201998:	e9c4 232c 	strd	r2, r3, [r4, #176]	; 0xb0
d020199c:	f20f 1950 	addw	r9, pc, #336	; 0x150
d02019a0:	e9d9 8900 	ldrd	r8, r9, [r9]
d02019a4:	a354      	add	r3, pc, #336	; (adr r3, d0201af8 <main+0x2f0>)
d02019a6:	e9d3 2300 	ldrd	r2, r3, [r3]
d02019aa:	e9c4 892a 	strd	r8, r9, [r4, #168]	; 0xa8
d02019ae:	e9c4 232e 	strd	r2, r3, [r4, #184]	; 0xb8
d02019b2:	4788      	blx	r1
d02019b4:	7b39      	ldrb	r1, [r7, #12]
d02019b6:	7b7b      	ldrb	r3, [r7, #13]
d02019b8:	4620      	mov	r0, r4
d02019ba:	7bba      	ldrb	r2, [r7, #14]
d02019bc:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
d02019c0:	7bfb      	ldrb	r3, [r7, #15]
d02019c2:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d02019c6:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d02019ca:	681b      	ldr	r3, [r3, #0]
d02019cc:	6d1b      	ldr	r3, [r3, #80]	; 0x50
d02019ce:	4798      	blx	r3
d02019d0:	7b3c      	ldrb	r4, [r7, #12]
d02019d2:	7b79      	ldrb	r1, [r7, #13]
d02019d4:	4630      	mov	r0, r6
d02019d6:	7bba      	ldrb	r2, [r7, #14]
d02019d8:	ea44 2101 	orr.w	r1, r4, r1, lsl #8
d02019dc:	7bfb      	ldrb	r3, [r7, #15]
d02019de:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d02019e2:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d02019e6:	681b      	ldr	r3, [r3, #0]
d02019e8:	699b      	ldr	r3, [r3, #24]
d02019ea:	4798      	blx	r3
d02019ec:	f7fe fb9a 	bl	d0200124 <draw_visualizer_grid>
d02019f0:	f7fe fcd6 	bl	d02003a0 <draw_visualizer_keyboard>
d02019f4:	7b3c      	ldrb	r4, [r7, #12]
d02019f6:	7b79      	ldrb	r1, [r7, #13]
d02019f8:	4630      	mov	r0, r6
d02019fa:	7bba      	ldrb	r2, [r7, #14]
d02019fc:	ea44 2101 	orr.w	r1, r4, r1, lsl #8
d0201a00:	7bfb      	ldrb	r3, [r7, #15]
d0201a02:	4c41      	ldr	r4, [pc, #260]	; (d0201b08 <main+0x300>)
d0201a04:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d0201a08:	4e40      	ldr	r6, [pc, #256]	; (d0201b0c <main+0x304>)
d0201a0a:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0201a0e:	681b      	ldr	r3, [r3, #0]
d0201a10:	6a1b      	ldr	r3, [r3, #32]
d0201a12:	4798      	blx	r3
d0201a14:	7b38      	ldrb	r0, [r7, #12]
d0201a16:	7b79      	ldrb	r1, [r7, #13]
d0201a18:	7bba      	ldrb	r2, [r7, #14]
d0201a1a:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d0201a1e:	7bfb      	ldrb	r3, [r7, #15]
d0201a20:	6820      	ldr	r0, [r4, #0]
d0201a22:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d0201a26:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0201a2a:	681b      	ldr	r3, [r3, #0]
d0201a2c:	699b      	ldr	r3, [r3, #24]
d0201a2e:	4798      	blx	r3
d0201a30:	7b38      	ldrb	r0, [r7, #12]
d0201a32:	7b79      	ldrb	r1, [r7, #13]
d0201a34:	7bba      	ldrb	r2, [r7, #14]
d0201a36:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d0201a3a:	7bfb      	ldrb	r3, [r7, #15]
d0201a3c:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d0201a40:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0201a44:	685b      	ldr	r3, [r3, #4]
d0201a46:	681b      	ldr	r3, [r3, #0]
d0201a48:	4798      	blx	r3
d0201a4a:	7b38      	ldrb	r0, [r7, #12]
d0201a4c:	7b79      	ldrb	r1, [r7, #13]
d0201a4e:	7bba      	ldrb	r2, [r7, #14]
d0201a50:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d0201a54:	7bfb      	ldrb	r3, [r7, #15]
d0201a56:	6830      	ldr	r0, [r6, #0]
d0201a58:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d0201a5c:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0201a60:	681b      	ldr	r3, [r3, #0]
d0201a62:	699b      	ldr	r3, [r3, #24]
d0201a64:	4798      	blx	r3
d0201a66:	7b38      	ldrb	r0, [r7, #12]
d0201a68:	7b79      	ldrb	r1, [r7, #13]
d0201a6a:	7bba      	ldrb	r2, [r7, #14]
d0201a6c:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d0201a70:	7bfb      	ldrb	r3, [r7, #15]
d0201a72:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d0201a76:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0201a7a:	685b      	ldr	r3, [r3, #4]
d0201a7c:	681b      	ldr	r3, [r3, #0]
d0201a7e:	4798      	blx	r3
d0201a80:	7b38      	ldrb	r0, [r7, #12]
d0201a82:	7b79      	ldrb	r1, [r7, #13]
d0201a84:	7bba      	ldrb	r2, [r7, #14]
d0201a86:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d0201a8a:	7bfb      	ldrb	r3, [r7, #15]
d0201a8c:	6820      	ldr	r0, [r4, #0]
d0201a8e:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d0201a92:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0201a96:	681b      	ldr	r3, [r3, #0]
d0201a98:	69db      	ldr	r3, [r3, #28]
d0201a9a:	4798      	blx	r3
d0201a9c:	e03c      	b.n	d0201b18 <main+0x310>
d0201a9e:	bf00      	nop
d0201aa0:	00000000 	.word	0x00000000
d0201aa4:	ff03070c 	.word	0xff03070c
d0201aa8:	ffe2f1ec 	.word	0xffe2f1ec
d0201aac:	ff697f84 	.word	0xff697f84
d0201ab0:	ff0f1922 	.word	0xff0f1922
d0201ab4:	ff202e3a 	.word	0xff202e3a
d0201ab8:	ffff4c5c 	.word	0xffff4c5c
d0201abc:	ffff9a34 	.word	0xffff9a34
d0201ac0:	ffdae1d6 	.word	0xffdae1d6
d0201ac4:	ff080c12 	.word	0xff080c12
d0201ac8:	ff34d2cc 	.word	0xff34d2cc
d0201acc:	ff4e9fff 	.word	0xff4e9fff
d0201ad0:	ffffe049 	.word	0xffffe049
d0201ad4:	ff5ce477 	.word	0xff5ce477
d0201ad8:	ffff78aa 	.word	0xffff78aa
d0201adc:	ffbebebe 	.word	0xffbebebe
d0201ae0:	ffa96cff 	.word	0xffa96cff
d0201ae4:	ffec5eda 	.word	0xffec5eda
d0201ae8:	ffdc7437 	.word	0xffdc7437
d0201aec:	ff845ed2 	.word	0xff845ed2
d0201af0:	ffa2d748 	.word	0xffa2d748
d0201af4:	ff3487b4 	.word	0xff3487b4
d0201af8:	ff58cdf5 	.word	0xff58cdf5
d0201afc:	fff5f5f5 	.word	0xfff5f5f5
d0201b00:	2001f000 	.word	0x2001f000
d0201b04:	d0203de0 	.word	0xd0203de0
d0201b08:	d0203e20 	.word	0xd0203e20
d0201b0c:	d0203e40 	.word	0xd0203e40
d0201b10:	d02039e0 	.word	0xd02039e0
d0201b14:	ffffe876 	.word	0xffffe876
d0201b18:	7b38      	ldrb	r0, [r7, #12]
d0201b1a:	7b79      	ldrb	r1, [r7, #13]
d0201b1c:	7bba      	ldrb	r2, [r7, #14]
d0201b1e:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d0201b22:	7bfb      	ldrb	r3, [r7, #15]
d0201b24:	6830      	ldr	r0, [r6, #0]
d0201b26:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d0201b2a:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0201b2e:	681b      	ldr	r3, [r3, #0]
d0201b30:	699b      	ldr	r3, [r3, #24]
d0201b32:	4798      	blx	r3
d0201b34:	9b03      	ldr	r3, [sp, #12]
d0201b36:	2b01      	cmp	r3, #1
d0201b38:	f340 831f 	ble.w	d020217a <main+0x972>
d0201b3c:	46a8      	mov	r8, r5
d0201b3e:	9505      	str	r5, [sp, #20]
d0201b40:	2601      	movs	r6, #1
d0201b42:	461d      	mov	r5, r3
d0201b44:	e002      	b.n	d0201b4c <main+0x344>
d0201b46:	42b5      	cmp	r5, r6
d0201b48:	f000 80dd 	beq.w	d0201d06 <main+0x4fe>
d0201b4c:	f858 4f04 	ldr.w	r4, [r8, #4]!
d0201b50:	3601      	adds	r6, #1
d0201b52:	4620      	mov	r0, r4
d0201b54:	2c00      	cmp	r4, #0
d0201b56:	d0f6      	beq.n	d0201b46 <main+0x33e>
d0201b58:	f000 fef4 	bl	d0202944 <strlen>
d0201b5c:	1f03      	subs	r3, r0, #4
d0201b5e:	2803      	cmp	r0, #3
d0201b60:	eb04 0203 	add.w	r2, r4, r3
d0201b64:	d9ef      	bls.n	d0201b46 <main+0x33e>
d0201b66:	5ce3      	ldrb	r3, [r4, r3]
d0201b68:	2b2e      	cmp	r3, #46	; 0x2e
d0201b6a:	d1ec      	bne.n	d0201b46 <main+0x33e>
d0201b6c:	7853      	ldrb	r3, [r2, #1]
d0201b6e:	f003 03df 	and.w	r3, r3, #223	; 0xdf
d0201b72:	2b4d      	cmp	r3, #77	; 0x4d
d0201b74:	d1e7      	bne.n	d0201b46 <main+0x33e>
d0201b76:	7893      	ldrb	r3, [r2, #2]
d0201b78:	f003 03df 	and.w	r3, r3, #223	; 0xdf
d0201b7c:	2b49      	cmp	r3, #73	; 0x49
d0201b7e:	d1e2      	bne.n	d0201b46 <main+0x33e>
d0201b80:	78d3      	ldrb	r3, [r2, #3]
d0201b82:	f003 03df 	and.w	r3, r3, #223	; 0xdf
d0201b86:	2b44      	cmp	r3, #68	; 0x44
d0201b88:	d1dd      	bne.n	d0201b46 <main+0x33e>
d0201b8a:	2601      	movs	r6, #1
d0201b8c:	f8df b240 	ldr.w	fp, [pc, #576]	; d0201dd0 <main+0x5c8>
d0201b90:	f8df a240 	ldr.w	sl, [pc, #576]	; d0201dd4 <main+0x5cc>
d0201b94:	f8df 9240 	ldr.w	r9, [pc, #576]	; d0201dd8 <main+0x5d0>
d0201b98:	f8df 8240 	ldr.w	r8, [pc, #576]	; d0201ddc <main+0x5d4>
d0201b9c:	9d05      	ldr	r5, [sp, #20]
d0201b9e:	9404      	str	r4, [sp, #16]
d0201ba0:	e016      	b.n	d0201bd0 <main+0x3c8>
d0201ba2:	f000 fec5 	bl	d0202930 <strcmp>
d0201ba6:	4602      	mov	r2, r0
d0201ba8:	4649      	mov	r1, r9
d0201baa:	4620      	mov	r0, r4
d0201bac:	b1e2      	cbz	r2, d0201be8 <main+0x3e0>
d0201bae:	f000 febf 	bl	d0202930 <strcmp>
d0201bb2:	4602      	mov	r2, r0
d0201bb4:	4641      	mov	r1, r8
d0201bb6:	4620      	mov	r0, r4
d0201bb8:	2a00      	cmp	r2, #0
d0201bba:	f000 80f4 	beq.w	d0201da6 <main+0x59e>
d0201bbe:	f000 feb7 	bl	d0202930 <strcmp>
d0201bc2:	2800      	cmp	r0, #0
d0201bc4:	f000 80a1 	beq.w	d0201d0a <main+0x502>
d0201bc8:	9b03      	ldr	r3, [sp, #12]
d0201bca:	42b3      	cmp	r3, r6
d0201bcc:	f000 809d 	beq.w	d0201d0a <main+0x502>
d0201bd0:	f855 4f04 	ldr.w	r4, [r5, #4]!
d0201bd4:	4659      	mov	r1, fp
d0201bd6:	3601      	adds	r6, #1
d0201bd8:	4620      	mov	r0, r4
d0201bda:	f000 fea9 	bl	d0202930 <strcmp>
d0201bde:	4602      	mov	r2, r0
d0201be0:	4651      	mov	r1, sl
d0201be2:	4620      	mov	r0, r4
d0201be4:	2a00      	cmp	r2, #0
d0201be6:	d1dc      	bne.n	d0201ba2 <main+0x39a>
d0201be8:	9c04      	ldr	r4, [sp, #16]
d0201bea:	ee08 2a10 	vmov	s16, r2
d0201bee:	2c00      	cmp	r4, #0
d0201bf0:	f000 8092 	beq.w	d0201d18 <main+0x510>
d0201bf4:	7823      	ldrb	r3, [r4, #0]
d0201bf6:	2b00      	cmp	r3, #0
d0201bf8:	f000 80d9 	beq.w	d0201dae <main+0x5a6>
d0201bfc:	1c61      	adds	r1, r4, #1
d0201bfe:	4622      	mov	r2, r4
d0201c00:	e002      	b.n	d0201c08 <main+0x400>
d0201c02:	f811 3b01 	ldrb.w	r3, [r1], #1
d0201c06:	b143      	cbz	r3, d0201c1a <main+0x412>
d0201c08:	2b5c      	cmp	r3, #92	; 0x5c
d0201c0a:	d001      	beq.n	d0201c10 <main+0x408>
d0201c0c:	2b2f      	cmp	r3, #47	; 0x2f
d0201c0e:	d1f8      	bne.n	d0201c02 <main+0x3fa>
d0201c10:	460a      	mov	r2, r1
d0201c12:	f811 3b01 	ldrb.w	r3, [r1], #1
d0201c16:	2b00      	cmp	r3, #0
d0201c18:	d1f6      	bne.n	d0201c08 <main+0x400>
d0201c1a:	4d67      	ldr	r5, [pc, #412]	; (d0201db8 <main+0x5b0>)
d0201c1c:	f242 013a 	movw	r1, #8250	; 0x203a
d0201c20:	4b66      	ldr	r3, [pc, #408]	; (d0201dbc <main+0x5b4>)
d0201c22:	80a9      	strh	r1, [r5, #4]
d0201c24:	602b      	str	r3, [r5, #0]
d0201c26:	7811      	ldrb	r1, [r2, #0]
d0201c28:	2900      	cmp	r1, #0
d0201c2a:	f000 80c2 	beq.w	d0201db2 <main+0x5aa>
d0201c2e:	4613      	mov	r3, r2
d0201c30:	1d68      	adds	r0, r5, #5
d0201c32:	2206      	movs	r2, #6
d0201c34:	e001      	b.n	d0201c3a <main+0x432>
d0201c36:	2a36      	cmp	r2, #54	; 0x36
d0201c38:	d806      	bhi.n	d0201c48 <main+0x440>
d0201c3a:	f800 1f01 	strb.w	r1, [r0, #1]!
d0201c3e:	3201      	adds	r2, #1
d0201c40:	f813 1f01 	ldrb.w	r1, [r3, #1]!
d0201c44:	2900      	cmp	r1, #0
d0201c46:	d1f6      	bne.n	d0201c36 <main+0x42e>
d0201c48:	7b38      	ldrb	r0, [r7, #12]
d0201c4a:	2600      	movs	r6, #0
d0201c4c:	7b79      	ldrb	r1, [r7, #13]
d0201c4e:	54ae      	strb	r6, [r5, r2]
d0201c50:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d0201c54:	7bba      	ldrb	r2, [r7, #14]
d0201c56:	7bfb      	ldrb	r3, [r7, #15]
d0201c58:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d0201c5c:	4858      	ldr	r0, [pc, #352]	; (d0201dc0 <main+0x5b8>)
d0201c5e:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0201c62:	681b      	ldr	r3, [r3, #0]
d0201c64:	699b      	ldr	r3, [r3, #24]
d0201c66:	4798      	blx	r3
d0201c68:	f7fe fa5c 	bl	d0200124 <draw_visualizer_grid>
d0201c6c:	f7fe fb98 	bl	d02003a0 <draw_visualizer_keyboard>
d0201c70:	7b38      	ldrb	r0, [r7, #12]
d0201c72:	7b79      	ldrb	r1, [r7, #13]
d0201c74:	7bba      	ldrb	r2, [r7, #14]
d0201c76:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d0201c7a:	7bfb      	ldrb	r3, [r7, #15]
d0201c7c:	4850      	ldr	r0, [pc, #320]	; (d0201dc0 <main+0x5b8>)
d0201c7e:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d0201c82:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0201c86:	681b      	ldr	r3, [r3, #0]
d0201c88:	6a1b      	ldr	r3, [r3, #32]
d0201c8a:	4798      	blx	r3
d0201c8c:	793a      	ldrb	r2, [r7, #4]
d0201c8e:	7979      	ldrb	r1, [r7, #5]
d0201c90:	4630      	mov	r0, r6
d0201c92:	79bd      	ldrb	r5, [r7, #6]
d0201c94:	ea42 2101 	orr.w	r1, r2, r1, lsl #8
d0201c98:	79fb      	ldrb	r3, [r7, #7]
d0201c9a:	2201      	movs	r2, #1
d0201c9c:	9607      	str	r6, [sp, #28]
d0201c9e:	ea41 4505 	orr.w	r5, r1, r5, lsl #16
d0201ca2:	4621      	mov	r1, r4
d0201ca4:	ea45 6303 	orr.w	r3, r5, r3, lsl #24
d0201ca8:	681b      	ldr	r3, [r3, #0]
d0201caa:	681b      	ldr	r3, [r3, #0]
d0201cac:	4798      	blx	r3
d0201cae:	4681      	mov	r9, r0
d0201cb0:	b9e8      	cbnz	r0, d0201cee <main+0x4e6>
d0201cb2:	7939      	ldrb	r1, [r7, #4]
d0201cb4:	797b      	ldrb	r3, [r7, #5]
d0201cb6:	79ba      	ldrb	r2, [r7, #6]
d0201cb8:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
d0201cbc:	79fb      	ldrb	r3, [r7, #7]
d0201cbe:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d0201cc2:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0201cc6:	681b      	ldr	r3, [r3, #0]
d0201cc8:	685b      	ldr	r3, [r3, #4]
d0201cca:	4798      	blx	r3
d0201ccc:	280d      	cmp	r0, #13
d0201cce:	4605      	mov	r5, r0
d0201cd0:	d829      	bhi.n	d0201d26 <main+0x51e>
d0201cd2:	793b      	ldrb	r3, [r7, #4]
d0201cd4:	4648      	mov	r0, r9
d0201cd6:	797a      	ldrb	r2, [r7, #5]
d0201cd8:	79b9      	ldrb	r1, [r7, #6]
d0201cda:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0201cde:	79fa      	ldrb	r2, [r7, #7]
d0201ce0:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0201ce4:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0201ce8:	681b      	ldr	r3, [r3, #0]
d0201cea:	68db      	ldr	r3, [r3, #12]
d0201cec:	4798      	blx	r3
d0201cee:	4621      	mov	r1, r4
d0201cf0:	4834      	ldr	r0, [pc, #208]	; (d0201dc4 <main+0x5bc>)
d0201cf2:	f000 fcc1 	bl	d0202678 <iprintf>
d0201cf6:	f7fe fc6b 	bl	d02005d0 <app_shutdown>
d0201cfa:	2001      	movs	r0, #1
d0201cfc:	b009      	add	sp, #36	; 0x24
d0201cfe:	ecbd 8b02 	vpop	{d8}
d0201d02:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0201d06:	2400      	movs	r4, #0
d0201d08:	e73f      	b.n	d0201b8a <main+0x382>
d0201d0a:	2301      	movs	r3, #1
d0201d0c:	9c04      	ldr	r4, [sp, #16]
d0201d0e:	ee08 3a10 	vmov	s16, r3
d0201d12:	2c00      	cmp	r4, #0
d0201d14:	f47f af6e 	bne.w	d0201bf4 <main+0x3ec>
d0201d18:	482b      	ldr	r0, [pc, #172]	; (d0201dc8 <main+0x5c0>)
d0201d1a:	f000 fd33 	bl	d0202784 <puts>
d0201d1e:	f7fe fc57 	bl	d02005d0 <app_shutdown>
d0201d22:	2001      	movs	r0, #1
d0201d24:	e7ea      	b.n	d0201cfc <main+0x4f4>
d0201d26:	f000 fbe5 	bl	d02024f4 <malloc>
d0201d2a:	4606      	mov	r6, r0
d0201d2c:	2800      	cmp	r0, #0
d0201d2e:	f000 824c 	beq.w	d02021ca <main+0x9c2>
d0201d32:	f897 c004 	ldrb.w	ip, [r7, #4]
d0201d36:	ab07      	add	r3, sp, #28
d0201d38:	7978      	ldrb	r0, [r7, #5]
d0201d3a:	462a      	mov	r2, r5
d0201d3c:	f897 e006 	ldrb.w	lr, [r7, #6]
d0201d40:	4631      	mov	r1, r6
d0201d42:	ea4c 2000 	orr.w	r0, ip, r0, lsl #8
d0201d46:	f897 c007 	ldrb.w	ip, [r7, #7]
d0201d4a:	ea40 4e0e 	orr.w	lr, r0, lr, lsl #16
d0201d4e:	4648      	mov	r0, r9
d0201d50:	ea4e 6c0c 	orr.w	ip, lr, ip, lsl #24
d0201d54:	f8dc c000 	ldr.w	ip, [ip]
d0201d58:	f8dc 8008 	ldr.w	r8, [ip, #8]
d0201d5c:	47c0      	blx	r8
d0201d5e:	7939      	ldrb	r1, [r7, #4]
d0201d60:	4602      	mov	r2, r0
d0201d62:	797b      	ldrb	r3, [r7, #5]
d0201d64:	4648      	mov	r0, r9
d0201d66:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
d0201d6a:	4690      	mov	r8, r2
d0201d6c:	9204      	str	r2, [sp, #16]
d0201d6e:	79ba      	ldrb	r2, [r7, #6]
d0201d70:	79fb      	ldrb	r3, [r7, #7]
d0201d72:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d0201d76:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0201d7a:	681b      	ldr	r3, [r3, #0]
d0201d7c:	68db      	ldr	r3, [r3, #12]
d0201d7e:	4798      	blx	r3
d0201d80:	4643      	mov	r3, r8
d0201d82:	b92b      	cbnz	r3, d0201d90 <main+0x588>
d0201d84:	9b07      	ldr	r3, [sp, #28]
d0201d86:	429d      	cmp	r5, r3
d0201d88:	d102      	bne.n	d0201d90 <main+0x588>
d0201d8a:	7833      	ldrb	r3, [r6, #0]
d0201d8c:	2b4d      	cmp	r3, #77	; 0x4d
d0201d8e:	d027      	beq.n	d0201de0 <main+0x5d8>
d0201d90:	4630      	mov	r0, r6
d0201d92:	f000 fbb7 	bl	d0202504 <free>
d0201d96:	e7aa      	b.n	d0201cee <main+0x4e6>
d0201d98:	480c      	ldr	r0, [pc, #48]	; (d0201dcc <main+0x5c4>)
d0201d9a:	f000 fcf3 	bl	d0202784 <puts>
d0201d9e:	f7fe fc17 	bl	d02005d0 <app_shutdown>
d0201da2:	2001      	movs	r0, #1
d0201da4:	e7aa      	b.n	d0201cfc <main+0x4f4>
d0201da6:	9c04      	ldr	r4, [sp, #16]
d0201da8:	ee08 2a10 	vmov	s16, r2
d0201dac:	e71f      	b.n	d0201bee <main+0x3e6>
d0201dae:	4622      	mov	r2, r4
d0201db0:	e733      	b.n	d0201c1a <main+0x412>
d0201db2:	2206      	movs	r2, #6
d0201db4:	e748      	b.n	d0201c48 <main+0x440>
d0201db6:	bf00      	nop
d0201db8:	d0203910 	.word	0xd0203910
d0201dbc:	676e6f73 	.word	0x676e6f73
d0201dc0:	d0203de0 	.word	0xd0203de0
d0201dc4:	d020379c 	.word	0xd020379c
d0201dc8:	d0203770 	.word	0xd0203770
d0201dcc:	d0203720 	.word	0xd0203720
d0201dd0:	d020374c 	.word	0xd020374c
d0201dd4:	d0203754 	.word	0xd0203754
d0201dd8:	d020375c 	.word	0xd020375c
d0201ddc:	d0203768 	.word	0xd0203768
d0201de0:	7873      	ldrb	r3, [r6, #1]
d0201de2:	2b54      	cmp	r3, #84	; 0x54
d0201de4:	d1d4      	bne.n	d0201d90 <main+0x588>
d0201de6:	78b3      	ldrb	r3, [r6, #2]
d0201de8:	2b68      	cmp	r3, #104	; 0x68
d0201dea:	d1d1      	bne.n	d0201d90 <main+0x588>
d0201dec:	78f3      	ldrb	r3, [r6, #3]
d0201dee:	2b64      	cmp	r3, #100	; 0x64
d0201df0:	d1ce      	bne.n	d0201d90 <main+0x588>
d0201df2:	4b7c      	ldr	r3, [pc, #496]	; (d0201fe4 <main+0x7dc>)
d0201df4:	6818      	ldr	r0, [r3, #0]
d0201df6:	b108      	cbz	r0, d0201dfc <main+0x5f4>
d0201df8:	f000 fb84 	bl	d0202504 <free>
d0201dfc:	4b79      	ldr	r3, [pc, #484]	; (d0201fe4 <main+0x7dc>)
d0201dfe:	4630      	mov	r0, r6
d0201e00:	4629      	mov	r1, r5
d0201e02:	ee18 2a10 	vmov	r2, s16
d0201e06:	601e      	str	r6, [r3, #0]
d0201e08:	4b77      	ldr	r3, [pc, #476]	; (d0201fe8 <main+0x7e0>)
d0201e0a:	601d      	str	r5, [r3, #0]
d0201e0c:	f7ff fb96 	bl	d020153c <setup>
d0201e10:	4b76      	ldr	r3, [pc, #472]	; (d0201fec <main+0x7e4>)
d0201e12:	f893 3118 	ldrb.w	r3, [r3, #280]	; 0x118
d0201e16:	2b00      	cmp	r3, #0
d0201e18:	f000 81a7 	beq.w	d020216a <main+0x962>
d0201e1c:	7839      	ldrb	r1, [r7, #0]
d0201e1e:	787b      	ldrb	r3, [r7, #1]
d0201e20:	78ba      	ldrb	r2, [r7, #2]
d0201e22:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
d0201e26:	78fb      	ldrb	r3, [r7, #3]
d0201e28:	4871      	ldr	r0, [pc, #452]	; (d0201ff0 <main+0x7e8>)
d0201e2a:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d0201e2e:	f8df 81d8 	ldr.w	r8, [pc, #472]	; d0202008 <main+0x800>
d0201e32:	f8df 91d8 	ldr.w	r9, [pc, #472]	; d020200c <main+0x804>
d0201e36:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0201e3a:	68db      	ldr	r3, [r3, #12]
d0201e3c:	4798      	blx	r3
d0201e3e:	4b6d      	ldr	r3, [pc, #436]	; (d0201ff4 <main+0x7ec>)
d0201e40:	781b      	ldrb	r3, [r3, #0]
d0201e42:	2b00      	cmp	r3, #0
d0201e44:	f000 8172 	beq.w	d020212c <main+0x924>
d0201e48:	4b6b      	ldr	r3, [pc, #428]	; (d0201ff8 <main+0x7f0>)
d0201e4a:	6818      	ldr	r0, [r3, #0]
d0201e4c:	7b3c      	ldrb	r4, [r7, #12]
d0201e4e:	7b79      	ldrb	r1, [r7, #13]
d0201e50:	7bba      	ldrb	r2, [r7, #14]
d0201e52:	ea44 2101 	orr.w	r1, r4, r1, lsl #8
d0201e56:	7bfb      	ldrb	r3, [r7, #15]
d0201e58:	9003      	str	r0, [sp, #12]
d0201e5a:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d0201e5e:	4d67      	ldr	r5, [pc, #412]	; (d0201ffc <main+0x7f4>)
d0201e60:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0201e64:	462c      	mov	r4, r5
d0201e66:	681b      	ldr	r3, [r3, #0]
d0201e68:	68db      	ldr	r3, [r3, #12]
d0201e6a:	4798      	blx	r3
d0201e6c:	7b3b      	ldrb	r3, [r7, #12]
d0201e6e:	7b7a      	ldrb	r2, [r7, #13]
d0201e70:	9803      	ldr	r0, [sp, #12]
d0201e72:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0201e76:	7bba      	ldrb	r2, [r7, #14]
d0201e78:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d0201e7c:	7bfa      	ldrb	r2, [r7, #15]
d0201e7e:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0201e82:	681b      	ldr	r3, [r3, #0]
d0201e84:	699b      	ldr	r3, [r3, #24]
d0201e86:	4798      	blx	r3
d0201e88:	7b3b      	ldrb	r3, [r7, #12]
d0201e8a:	7b7a      	ldrb	r2, [r7, #13]
d0201e8c:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0201e90:	7bba      	ldrb	r2, [r7, #14]
d0201e92:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d0201e96:	7bfa      	ldrb	r2, [r7, #15]
d0201e98:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0201e9c:	685b      	ldr	r3, [r3, #4]
d0201e9e:	681b      	ldr	r3, [r3, #0]
d0201ea0:	4798      	blx	r3
d0201ea2:	7b23      	ldrb	r3, [r4, #12]
d0201ea4:	2b00      	cmp	r3, #0
d0201ea6:	d07f      	beq.n	d0201fa8 <main+0x7a0>
d0201ea8:	f8d8 2000 	ldr.w	r2, [r8]
d0201eac:	2300      	movs	r3, #0
d0201eae:	6826      	ldr	r6, [r4, #0]
d0201eb0:	f44f 7b92 	mov.w	fp, #292	; 0x124
d0201eb4:	7ae1      	ldrb	r1, [r4, #11]
d0201eb6:	1b96      	subs	r6, r2, r6
d0201eb8:	b949      	cbnz	r1, d0201ece <main+0x6c6>
d0201eba:	6863      	ldr	r3, [r4, #4]
d0201ebc:	1ad2      	subs	r2, r2, r3
d0201ebe:	0052      	lsls	r2, r2, #1
d0201ec0:	ebab 0b02 	sub.w	fp, fp, r2
d0201ec4:	f1bb 0f17 	cmp.w	fp, #23
d0201ec8:	bfcc      	ite	gt
d0201eca:	2300      	movgt	r3, #0
d0201ecc:	2301      	movle	r3, #1
d0201ece:	0076      	lsls	r6, r6, #1
d0201ed0:	f5c6 7692 	rsb	r6, r6, #292	; 0x124
d0201ed4:	f5b6 7f92 	cmp.w	r6, #292	; 0x124
d0201ed8:	dc66      	bgt.n	d0201fa8 <main+0x7a0>
d0201eda:	2e18      	cmp	r6, #24
d0201edc:	bfb8      	it	lt
d0201ede:	2618      	movlt	r6, #24
d0201ee0:	2b00      	cmp	r3, #0
d0201ee2:	d161      	bne.n	d0201fa8 <main+0x7a0>
d0201ee4:	f897 c00c 	ldrb.w	ip, [r7, #12]
d0201ee8:	f5bb 7f92 	cmp.w	fp, #292	; 0x124
d0201eec:	bfd4      	ite	le
d0201eee:	ebc6 0b0b 	rsble	fp, r6, fp
d0201ef2:	f5c6 7b92 	rsbgt	fp, r6, #292	; 0x124
d0201ef6:	7b79      	ldrb	r1, [r7, #13]
d0201ef8:	b236      	sxth	r6, r6
d0201efa:	7bbb      	ldrb	r3, [r7, #14]
d0201efc:	fa0f fb8b 	sxth.w	fp, fp
d0201f00:	ea4c 2001 	orr.w	r0, ip, r1, lsl #8
d0201f04:	7bfa      	ldrb	r2, [r7, #15]
d0201f06:	f894 a008 	ldrb.w	sl, [r4, #8]
d0201f0a:	ea40 4103 	orr.w	r1, r0, r3, lsl #16
d0201f0e:	7a60      	ldrb	r0, [r4, #9]
d0201f10:	f44f 73e8 	mov.w	r3, #464	; 0x1d0
d0201f14:	ea41 6202 	orr.w	r2, r1, r2, lsl #24
d0201f18:	3020      	adds	r0, #32
d0201f1a:	fb03 fa0a 	mul.w	sl, r3, sl
d0201f1e:	6853      	ldr	r3, [r2, #4]
d0201f20:	b2c0      	uxtb	r0, r0
d0201f22:	ea4f 1ada 	mov.w	sl, sl, lsr #7
d0201f26:	68db      	ldr	r3, [r3, #12]
d0201f28:	4798      	blx	r3
d0201f2a:	7b3a      	ldrb	r2, [r7, #12]
d0201f2c:	f897 e00d 	ldrb.w	lr, [r7, #13]
d0201f30:	465b      	mov	r3, fp
d0201f32:	f897 c00e 	ldrb.w	ip, [r7, #14]
d0201f36:	f10a 0a08 	add.w	sl, sl, #8
d0201f3a:	ea42 220e 	orr.w	r2, r2, lr, lsl #8
d0201f3e:	f897 b00f 	ldrb.w	fp, [r7, #15]
d0201f42:	2b03      	cmp	r3, #3
d0201f44:	4650      	mov	r0, sl
d0201f46:	ea42 4e0c 	orr.w	lr, r2, ip, lsl #16
d0201f4a:	4631      	mov	r1, r6
d0201f4c:	bfb8      	it	lt
d0201f4e:	2303      	movlt	r3, #3
d0201f50:	2204      	movs	r2, #4
d0201f52:	ea4e 6c0b 	orr.w	ip, lr, fp, lsl #24
d0201f56:	f8dc c004 	ldr.w	ip, [ip, #4]
d0201f5a:	f8dc b004 	ldr.w	fp, [ip, #4]
d0201f5e:	47d8      	blx	fp
d0201f60:	7aa3      	ldrb	r3, [r4, #10]
d0201f62:	2004      	movs	r0, #4
d0201f64:	2b64      	cmp	r3, #100	; 0x64
d0201f66:	d91f      	bls.n	d0201fa8 <main+0x7a0>
d0201f68:	f897 c00c 	ldrb.w	ip, [r7, #12]
d0201f6c:	7b79      	ldrb	r1, [r7, #13]
d0201f6e:	7bba      	ldrb	r2, [r7, #14]
d0201f70:	ea4c 2101 	orr.w	r1, ip, r1, lsl #8
d0201f74:	7bfb      	ldrb	r3, [r7, #15]
d0201f76:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d0201f7a:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0201f7e:	685b      	ldr	r3, [r3, #4]
d0201f80:	68db      	ldr	r3, [r3, #12]
d0201f82:	4798      	blx	r3
d0201f84:	7b3a      	ldrb	r2, [r7, #12]
d0201f86:	7b7b      	ldrb	r3, [r7, #13]
d0201f88:	4631      	mov	r1, r6
d0201f8a:	f897 c00e 	ldrb.w	ip, [r7, #14]
d0201f8e:	4650      	mov	r0, sl
d0201f90:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
d0201f94:	7bfe      	ldrb	r6, [r7, #15]
d0201f96:	2301      	movs	r3, #1
d0201f98:	ea42 4c0c 	orr.w	ip, r2, ip, lsl #16
d0201f9c:	2204      	movs	r2, #4
d0201f9e:	ea4c 6606 	orr.w	r6, ip, r6, lsl #24
d0201fa2:	6876      	ldr	r6, [r6, #4]
d0201fa4:	6876      	ldr	r6, [r6, #4]
d0201fa6:	47b0      	blx	r6
d0201fa8:	3410      	adds	r4, #16
d0201faa:	4b15      	ldr	r3, [pc, #84]	; (d0202000 <main+0x7f8>)
d0201fac:	42a3      	cmp	r3, r4
d0201fae:	f47f af78 	bne.w	d0201ea2 <main+0x69a>
d0201fb2:	4b0e      	ldr	r3, [pc, #56]	; (d0201fec <main+0x7e4>)
d0201fb4:	f893 3118 	ldrb.w	r3, [r3, #280]	; 0x118
d0201fb8:	b123      	cbz	r3, d0201fc4 <main+0x7bc>
d0201fba:	f644 6120 	movw	r1, #20000	; 0x4e20
d0201fbe:	480b      	ldr	r0, [pc, #44]	; (d0201fec <main+0x7e4>)
d0201fc0:	f7fe fcd0 	bl	d0200964 <midi_player_update_us.part.0>
d0201fc4:	f8b9 2000 	ldrh.w	r2, [r9]
d0201fc8:	2a00      	cmp	r2, #0
d0201fca:	d059      	beq.n	d0202080 <main+0x878>
d0201fcc:	f8df b040 	ldr.w	fp, [pc, #64]	; d0202010 <main+0x808>
d0201fd0:	243c      	movs	r4, #60	; 0x3c
d0201fd2:	9503      	str	r5, [sp, #12]
d0201fd4:	f8df a03c 	ldr.w	sl, [pc, #60]	; d0202014 <main+0x80c>
d0201fd8:	4625      	mov	r5, r4
d0201fda:	f8bb 0000 	ldrh.w	r0, [fp]
d0201fde:	4e09      	ldr	r6, [pc, #36]	; (d0202004 <main+0x7fc>)
d0201fe0:	e01b      	b.n	d020201a <main+0x812>
d0201fe2:	bf00      	nop
d0201fe4:	d0203e44 	.word	0xd0203e44
d0201fe8:	d0203e48 	.word	0xd0203e48
d0201fec:	d0205068 	.word	0xd0205068
d0201ff0:	d02037d0 	.word	0xd02037d0
d0201ff4:	d0203e00 	.word	0xd0203e00
d0201ff8:	d0203e20 	.word	0xd0203e20
d0201ffc:	d020445c 	.word	0xd020445c
d0202000:	d020505c 	.word	0xd020505c
d0202004:	d0204054 	.word	0xd0204054
d0202008:	d0204458 	.word	0xd0204458
d020200c:	d0204050 	.word	0xd0204050
d0202010:	d0204454 	.word	0xd0204454
d0202014:	d0204052 	.word	0xd0204052
d0202018:	b38a      	cbz	r2, d020207e <main+0x876>
d020201a:	f8ba 1000 	ldrh.w	r1, [sl]
d020201e:	f5c0 6480 	rsb	r4, r0, #1024	; 0x400
d0202022:	f897 e014 	ldrb.w	lr, [r7, #20]
d0202026:	4281      	cmp	r1, r0
d0202028:	eba1 0100 	sub.w	r1, r1, r0
d020202c:	b2a4      	uxth	r4, r4
d020202e:	f897 c015 	ldrb.w	ip, [r7, #21]
d0202032:	bf88      	it	hi
d0202034:	b28c      	uxthhi	r4, r1
d0202036:	7db9      	ldrb	r1, [r7, #22]
d0202038:	ea4e 2e0c 	orr.w	lr, lr, ip, lsl #8
d020203c:	4430      	add	r0, r6
d020203e:	42ac      	cmp	r4, r5
d0202040:	ea4e 4c01 	orr.w	ip, lr, r1, lsl #16
d0202044:	bf28      	it	cs
d0202046:	462c      	movcs	r4, r5
d0202048:	4294      	cmp	r4, r2
d020204a:	bf28      	it	cs
d020204c:	4614      	movcs	r4, r2
d020204e:	7dfa      	ldrb	r2, [r7, #23]
d0202050:	ea4c 6202 	orr.w	r2, ip, r2, lsl #24
d0202054:	4621      	mov	r1, r4
d0202056:	6812      	ldr	r2, [r2, #0]
d0202058:	6952      	ldr	r2, [r2, #20]
d020205a:	4790      	blx	r2
d020205c:	f8b9 2000 	ldrh.w	r2, [r9]
d0202060:	f8bb 0000 	ldrh.w	r0, [fp]
d0202064:	1b2b      	subs	r3, r5, r4
d0202066:	4420      	add	r0, r4
d0202068:	1b14      	subs	r4, r2, r4
d020206a:	b29d      	uxth	r5, r3
d020206c:	f3c0 0009 	ubfx	r0, r0, #0, #10
d0202070:	b2a2      	uxth	r2, r4
d0202072:	f8ab 0000 	strh.w	r0, [fp]
d0202076:	f8a9 2000 	strh.w	r2, [r9]
d020207a:	2d00      	cmp	r5, #0
d020207c:	d1cc      	bne.n	d0202018 <main+0x810>
d020207e:	9d03      	ldr	r5, [sp, #12]
d0202080:	f8d8 2000 	ldr.w	r2, [r8]
d0202084:	3201      	adds	r2, #1
d0202086:	f8c8 2000 	str.w	r2, [r8]
d020208a:	7b2b      	ldrb	r3, [r5, #12]
d020208c:	b143      	cbz	r3, d02020a0 <main+0x898>
d020208e:	7ae9      	ldrb	r1, [r5, #11]
d0202090:	b931      	cbnz	r1, d02020a0 <main+0x898>
d0202092:	686b      	ldr	r3, [r5, #4]
d0202094:	1ad3      	subs	r3, r2, r3
d0202096:	005b      	lsls	r3, r3, #1
d0202098:	f5b3 7f8c 	cmp.w	r3, #280	; 0x118
d020209c:	bf88      	it	hi
d020209e:	7329      	strbhi	r1, [r5, #12]
d02020a0:	3510      	adds	r5, #16
d02020a2:	4b4b      	ldr	r3, [pc, #300]	; (d02021d0 <main+0x9c8>)
d02020a4:	42ab      	cmp	r3, r5
d02020a6:	d1f0      	bne.n	d020208a <main+0x882>
d02020a8:	4b4a      	ldr	r3, [pc, #296]	; (d02021d4 <main+0x9cc>)
d02020aa:	f893 3118 	ldrb.w	r3, [r3, #280]	; 0x118
d02020ae:	2b00      	cmp	r3, #0
d02020b0:	d046      	beq.n	d0202140 <main+0x938>
d02020b2:	7838      	ldrb	r0, [r7, #0]
d02020b4:	7879      	ldrb	r1, [r7, #1]
d02020b6:	78ba      	ldrb	r2, [r7, #2]
d02020b8:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d02020bc:	78fb      	ldrb	r3, [r7, #3]
d02020be:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d02020c2:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d02020c6:	6a1b      	ldr	r3, [r3, #32]
d02020c8:	4798      	blx	r3
d02020ca:	9b04      	ldr	r3, [sp, #16]
d02020cc:	f000 0402 	and.w	r4, r0, #2
d02020d0:	b10b      	cbz	r3, d02020d6 <main+0x8ce>
d02020d2:	2c00      	cmp	r4, #0
d02020d4:	d03d      	beq.n	d0202152 <main+0x94a>
d02020d6:	4a40      	ldr	r2, [pc, #256]	; (d02021d8 <main+0x9d0>)
d02020d8:	7b39      	ldrb	r1, [r7, #12]
d02020da:	7813      	ldrb	r3, [r2, #0]
d02020dc:	7b78      	ldrb	r0, [r7, #13]
d02020de:	f1c3 0301 	rsb	r3, r3, #1
d02020e2:	ea41 2000 	orr.w	r0, r1, r0, lsl #8
d02020e6:	b2db      	uxtb	r3, r3
d02020e8:	7013      	strb	r3, [r2, #0]
d02020ea:	7bba      	ldrb	r2, [r7, #14]
d02020ec:	b30b      	cbz	r3, d0202132 <main+0x92a>
d02020ee:	493b      	ldr	r1, [pc, #236]	; (d02021dc <main+0x9d4>)
d02020f0:	ea40 4202 	orr.w	r2, r0, r2, lsl #16
d02020f4:	7bfb      	ldrb	r3, [r7, #15]
d02020f6:	6809      	ldr	r1, [r1, #0]
d02020f8:	4839      	ldr	r0, [pc, #228]	; (d02021e0 <main+0x9d8>)
d02020fa:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d02020fe:	6800      	ldr	r0, [r0, #0]
d0202100:	681b      	ldr	r3, [r3, #0]
d0202102:	6a5b      	ldr	r3, [r3, #36]	; 0x24
d0202104:	4798      	blx	r3
d0202106:	7b39      	ldrb	r1, [r7, #12]
d0202108:	7b7b      	ldrb	r3, [r7, #13]
d020210a:	7bba      	ldrb	r2, [r7, #14]
d020210c:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
d0202110:	7bfb      	ldrb	r3, [r7, #15]
d0202112:	9404      	str	r4, [sp, #16]
d0202114:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d0202118:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d020211c:	681b      	ldr	r3, [r3, #0]
d020211e:	681b      	ldr	r3, [r3, #0]
d0202120:	4798      	blx	r3
d0202122:	4b2d      	ldr	r3, [pc, #180]	; (d02021d8 <main+0x9d0>)
d0202124:	781b      	ldrb	r3, [r3, #0]
d0202126:	2b00      	cmp	r3, #0
d0202128:	f47f ae8e 	bne.w	d0201e48 <main+0x640>
d020212c:	4b2b      	ldr	r3, [pc, #172]	; (d02021dc <main+0x9d4>)
d020212e:	6818      	ldr	r0, [r3, #0]
d0202130:	e68c      	b.n	d0201e4c <main+0x644>
d0202132:	492b      	ldr	r1, [pc, #172]	; (d02021e0 <main+0x9d8>)
d0202134:	ea40 4202 	orr.w	r2, r0, r2, lsl #16
d0202138:	7bfb      	ldrb	r3, [r7, #15]
d020213a:	6809      	ldr	r1, [r1, #0]
d020213c:	4827      	ldr	r0, [pc, #156]	; (d02021dc <main+0x9d4>)
d020213e:	e7dc      	b.n	d02020fa <main+0x8f2>
d0202140:	4b28      	ldr	r3, [pc, #160]	; (d02021e4 <main+0x9dc>)
d0202142:	ee18 2a10 	vmov	r2, s16
d0202146:	6819      	ldr	r1, [r3, #0]
d0202148:	4b27      	ldr	r3, [pc, #156]	; (d02021e8 <main+0x9e0>)
d020214a:	6818      	ldr	r0, [r3, #0]
d020214c:	f7ff f9f6 	bl	d020153c <setup>
d0202150:	e7af      	b.n	d02020b2 <main+0x8aa>
d0202152:	4c25      	ldr	r4, [pc, #148]	; (d02021e8 <main+0x9e0>)
d0202154:	f7fe fa3c 	bl	d02005d0 <app_shutdown>
d0202158:	6820      	ldr	r0, [r4, #0]
d020215a:	2800      	cmp	r0, #0
d020215c:	f43f adce 	beq.w	d0201cfc <main+0x4f4>
d0202160:	f000 f9d0 	bl	d0202504 <free>
d0202164:	2000      	movs	r0, #0
d0202166:	6020      	str	r0, [r4, #0]
d0202168:	e5c8      	b.n	d0201cfc <main+0x4f4>
d020216a:	4621      	mov	r1, r4
d020216c:	481f      	ldr	r0, [pc, #124]	; (d02021ec <main+0x9e4>)
d020216e:	f000 fa83 	bl	d0202678 <iprintf>
d0202172:	f7fe fa2d 	bl	d02005d0 <app_shutdown>
d0202176:	2001      	movs	r0, #1
d0202178:	e5c0      	b.n	d0201cfc <main+0x4f4>
d020217a:	f47f adcd 	bne.w	d0201d18 <main+0x510>
d020217e:	682c      	ldr	r4, [r5, #0]
d0202180:	2c00      	cmp	r4, #0
d0202182:	f43f adc9 	beq.w	d0201d18 <main+0x510>
d0202186:	4620      	mov	r0, r4
d0202188:	f000 fbdc 	bl	d0202944 <strlen>
d020218c:	2803      	cmp	r0, #3
d020218e:	f67f adc3 	bls.w	d0201d18 <main+0x510>
d0202192:	3804      	subs	r0, #4
d0202194:	5c23      	ldrb	r3, [r4, r0]
d0202196:	4420      	add	r0, r4
d0202198:	2b2e      	cmp	r3, #46	; 0x2e
d020219a:	f47f adbd 	bne.w	d0201d18 <main+0x510>
d020219e:	7843      	ldrb	r3, [r0, #1]
d02021a0:	f003 03df 	and.w	r3, r3, #223	; 0xdf
d02021a4:	2b4d      	cmp	r3, #77	; 0x4d
d02021a6:	f47f adb7 	bne.w	d0201d18 <main+0x510>
d02021aa:	7883      	ldrb	r3, [r0, #2]
d02021ac:	f003 03df 	and.w	r3, r3, #223	; 0xdf
d02021b0:	2b49      	cmp	r3, #73	; 0x49
d02021b2:	f47f adb1 	bne.w	d0201d18 <main+0x510>
d02021b6:	78c3      	ldrb	r3, [r0, #3]
d02021b8:	f003 03df 	and.w	r3, r3, #223	; 0xdf
d02021bc:	2b44      	cmp	r3, #68	; 0x44
d02021be:	f47f adab 	bne.w	d0201d18 <main+0x510>
d02021c2:	9b03      	ldr	r3, [sp, #12]
d02021c4:	ee08 3a10 	vmov	s16, r3
d02021c8:	e514      	b.n	d0201bf4 <main+0x3ec>
d02021ca:	793b      	ldrb	r3, [r7, #4]
d02021cc:	e583      	b.n	d0201cd6 <main+0x4ce>
d02021ce:	bf00      	nop
d02021d0:	d020505c 	.word	0xd020505c
d02021d4:	d0205068 	.word	0xd0205068
d02021d8:	d0203e00 	.word	0xd0203e00
d02021dc:	d0203e40 	.word	0xd0203e40
d02021e0:	d0203e20 	.word	0xd0203e20
d02021e4:	d0203e48 	.word	0xd0203e48
d02021e8:	d0203e44 	.word	0xd0203e44
d02021ec:	d02037b8 	.word	0xd02037b8

d02021f0 <__aeabi_uldivmod>:
d02021f0:	b953      	cbnz	r3, d0202208 <__aeabi_uldivmod+0x18>
d02021f2:	b94a      	cbnz	r2, d0202208 <__aeabi_uldivmod+0x18>
d02021f4:	2900      	cmp	r1, #0
d02021f6:	bf08      	it	eq
d02021f8:	2800      	cmpeq	r0, #0
d02021fa:	bf1c      	itt	ne
d02021fc:	f04f 31ff 	movne.w	r1, #4294967295	; 0xffffffff
d0202200:	f04f 30ff 	movne.w	r0, #4294967295	; 0xffffffff
d0202204:	f000 b96e 	b.w	d02024e4 <__aeabi_idiv0>
d0202208:	f1ad 0c08 	sub.w	ip, sp, #8
d020220c:	e96d ce04 	strd	ip, lr, [sp, #-16]!
d0202210:	f000 f806 	bl	d0202220 <__udivmoddi4>
d0202214:	f8dd e004 	ldr.w	lr, [sp, #4]
d0202218:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
d020221c:	b004      	add	sp, #16
d020221e:	4770      	bx	lr

d0202220 <__udivmoddi4>:
d0202220:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
d0202224:	9d08      	ldr	r5, [sp, #32]
d0202226:	4604      	mov	r4, r0
d0202228:	468c      	mov	ip, r1
d020222a:	2b00      	cmp	r3, #0
d020222c:	f040 8083 	bne.w	d0202336 <__udivmoddi4+0x116>
d0202230:	428a      	cmp	r2, r1
d0202232:	4617      	mov	r7, r2
d0202234:	d947      	bls.n	d02022c6 <__udivmoddi4+0xa6>
d0202236:	fab2 f282 	clz	r2, r2
d020223a:	b142      	cbz	r2, d020224e <__udivmoddi4+0x2e>
d020223c:	f1c2 0020 	rsb	r0, r2, #32
d0202240:	fa24 f000 	lsr.w	r0, r4, r0
d0202244:	4091      	lsls	r1, r2
d0202246:	4097      	lsls	r7, r2
d0202248:	ea40 0c01 	orr.w	ip, r0, r1
d020224c:	4094      	lsls	r4, r2
d020224e:	ea4f 4817 	mov.w	r8, r7, lsr #16
d0202252:	0c23      	lsrs	r3, r4, #16
d0202254:	fbbc f6f8 	udiv	r6, ip, r8
d0202258:	fa1f fe87 	uxth.w	lr, r7
d020225c:	fb08 c116 	mls	r1, r8, r6, ip
d0202260:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0202264:	fb06 f10e 	mul.w	r1, r6, lr
d0202268:	4299      	cmp	r1, r3
d020226a:	d909      	bls.n	d0202280 <__udivmoddi4+0x60>
d020226c:	18fb      	adds	r3, r7, r3
d020226e:	f106 30ff 	add.w	r0, r6, #4294967295	; 0xffffffff
d0202272:	f080 8119 	bcs.w	d02024a8 <__udivmoddi4+0x288>
d0202276:	4299      	cmp	r1, r3
d0202278:	f240 8116 	bls.w	d02024a8 <__udivmoddi4+0x288>
d020227c:	3e02      	subs	r6, #2
d020227e:	443b      	add	r3, r7
d0202280:	1a5b      	subs	r3, r3, r1
d0202282:	b2a4      	uxth	r4, r4
d0202284:	fbb3 f0f8 	udiv	r0, r3, r8
d0202288:	fb08 3310 	mls	r3, r8, r0, r3
d020228c:	ea44 4403 	orr.w	r4, r4, r3, lsl #16
d0202290:	fb00 fe0e 	mul.w	lr, r0, lr
d0202294:	45a6      	cmp	lr, r4
d0202296:	d909      	bls.n	d02022ac <__udivmoddi4+0x8c>
d0202298:	193c      	adds	r4, r7, r4
d020229a:	f100 33ff 	add.w	r3, r0, #4294967295	; 0xffffffff
d020229e:	f080 8105 	bcs.w	d02024ac <__udivmoddi4+0x28c>
d02022a2:	45a6      	cmp	lr, r4
d02022a4:	f240 8102 	bls.w	d02024ac <__udivmoddi4+0x28c>
d02022a8:	3802      	subs	r0, #2
d02022aa:	443c      	add	r4, r7
d02022ac:	ea40 4006 	orr.w	r0, r0, r6, lsl #16
d02022b0:	eba4 040e 	sub.w	r4, r4, lr
d02022b4:	2600      	movs	r6, #0
d02022b6:	b11d      	cbz	r5, d02022c0 <__udivmoddi4+0xa0>
d02022b8:	40d4      	lsrs	r4, r2
d02022ba:	2300      	movs	r3, #0
d02022bc:	e9c5 4300 	strd	r4, r3, [r5]
d02022c0:	4631      	mov	r1, r6
d02022c2:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
d02022c6:	b902      	cbnz	r2, d02022ca <__udivmoddi4+0xaa>
d02022c8:	deff      	udf	#255	; 0xff
d02022ca:	fab2 f282 	clz	r2, r2
d02022ce:	2a00      	cmp	r2, #0
d02022d0:	d150      	bne.n	d0202374 <__udivmoddi4+0x154>
d02022d2:	1bcb      	subs	r3, r1, r7
d02022d4:	ea4f 4e17 	mov.w	lr, r7, lsr #16
d02022d8:	fa1f f887 	uxth.w	r8, r7
d02022dc:	2601      	movs	r6, #1
d02022de:	fbb3 fcfe 	udiv	ip, r3, lr
d02022e2:	0c21      	lsrs	r1, r4, #16
d02022e4:	fb0e 331c 	mls	r3, lr, ip, r3
d02022e8:	ea41 4103 	orr.w	r1, r1, r3, lsl #16
d02022ec:	fb08 f30c 	mul.w	r3, r8, ip
d02022f0:	428b      	cmp	r3, r1
d02022f2:	d907      	bls.n	d0202304 <__udivmoddi4+0xe4>
d02022f4:	1879      	adds	r1, r7, r1
d02022f6:	f10c 30ff 	add.w	r0, ip, #4294967295	; 0xffffffff
d02022fa:	d202      	bcs.n	d0202302 <__udivmoddi4+0xe2>
d02022fc:	428b      	cmp	r3, r1
d02022fe:	f200 80e9 	bhi.w	d02024d4 <__udivmoddi4+0x2b4>
d0202302:	4684      	mov	ip, r0
d0202304:	1ac9      	subs	r1, r1, r3
d0202306:	b2a3      	uxth	r3, r4
d0202308:	fbb1 f0fe 	udiv	r0, r1, lr
d020230c:	fb0e 1110 	mls	r1, lr, r0, r1
d0202310:	ea43 4401 	orr.w	r4, r3, r1, lsl #16
d0202314:	fb08 f800 	mul.w	r8, r8, r0
d0202318:	45a0      	cmp	r8, r4
d020231a:	d907      	bls.n	d020232c <__udivmoddi4+0x10c>
d020231c:	193c      	adds	r4, r7, r4
d020231e:	f100 33ff 	add.w	r3, r0, #4294967295	; 0xffffffff
d0202322:	d202      	bcs.n	d020232a <__udivmoddi4+0x10a>
d0202324:	45a0      	cmp	r8, r4
d0202326:	f200 80d9 	bhi.w	d02024dc <__udivmoddi4+0x2bc>
d020232a:	4618      	mov	r0, r3
d020232c:	eba4 0408 	sub.w	r4, r4, r8
d0202330:	ea40 400c 	orr.w	r0, r0, ip, lsl #16
d0202334:	e7bf      	b.n	d02022b6 <__udivmoddi4+0x96>
d0202336:	428b      	cmp	r3, r1
d0202338:	d909      	bls.n	d020234e <__udivmoddi4+0x12e>
d020233a:	2d00      	cmp	r5, #0
d020233c:	f000 80b1 	beq.w	d02024a2 <__udivmoddi4+0x282>
d0202340:	2600      	movs	r6, #0
d0202342:	e9c5 0100 	strd	r0, r1, [r5]
d0202346:	4630      	mov	r0, r6
d0202348:	4631      	mov	r1, r6
d020234a:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
d020234e:	fab3 f683 	clz	r6, r3
d0202352:	2e00      	cmp	r6, #0
d0202354:	d14a      	bne.n	d02023ec <__udivmoddi4+0x1cc>
d0202356:	428b      	cmp	r3, r1
d0202358:	d302      	bcc.n	d0202360 <__udivmoddi4+0x140>
d020235a:	4282      	cmp	r2, r0
d020235c:	f200 80b8 	bhi.w	d02024d0 <__udivmoddi4+0x2b0>
d0202360:	1a84      	subs	r4, r0, r2
d0202362:	eb61 0103 	sbc.w	r1, r1, r3
d0202366:	2001      	movs	r0, #1
d0202368:	468c      	mov	ip, r1
d020236a:	2d00      	cmp	r5, #0
d020236c:	d0a8      	beq.n	d02022c0 <__udivmoddi4+0xa0>
d020236e:	e9c5 4c00 	strd	r4, ip, [r5]
d0202372:	e7a5      	b.n	d02022c0 <__udivmoddi4+0xa0>
d0202374:	f1c2 0320 	rsb	r3, r2, #32
d0202378:	fa20 f603 	lsr.w	r6, r0, r3
d020237c:	4097      	lsls	r7, r2
d020237e:	fa01 f002 	lsl.w	r0, r1, r2
d0202382:	ea4f 4e17 	mov.w	lr, r7, lsr #16
d0202386:	40d9      	lsrs	r1, r3
d0202388:	4330      	orrs	r0, r6
d020238a:	0c03      	lsrs	r3, r0, #16
d020238c:	fbb1 f6fe 	udiv	r6, r1, lr
d0202390:	fa1f f887 	uxth.w	r8, r7
d0202394:	fb0e 1116 	mls	r1, lr, r6, r1
d0202398:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d020239c:	fb06 f108 	mul.w	r1, r6, r8
d02023a0:	4299      	cmp	r1, r3
d02023a2:	fa04 f402 	lsl.w	r4, r4, r2
d02023a6:	d909      	bls.n	d02023bc <__udivmoddi4+0x19c>
d02023a8:	18fb      	adds	r3, r7, r3
d02023aa:	f106 3cff 	add.w	ip, r6, #4294967295	; 0xffffffff
d02023ae:	f080 808d 	bcs.w	d02024cc <__udivmoddi4+0x2ac>
d02023b2:	4299      	cmp	r1, r3
d02023b4:	f240 808a 	bls.w	d02024cc <__udivmoddi4+0x2ac>
d02023b8:	3e02      	subs	r6, #2
d02023ba:	443b      	add	r3, r7
d02023bc:	1a5b      	subs	r3, r3, r1
d02023be:	b281      	uxth	r1, r0
d02023c0:	fbb3 f0fe 	udiv	r0, r3, lr
d02023c4:	fb0e 3310 	mls	r3, lr, r0, r3
d02023c8:	ea41 4103 	orr.w	r1, r1, r3, lsl #16
d02023cc:	fb00 f308 	mul.w	r3, r0, r8
d02023d0:	428b      	cmp	r3, r1
d02023d2:	d907      	bls.n	d02023e4 <__udivmoddi4+0x1c4>
d02023d4:	1879      	adds	r1, r7, r1
d02023d6:	f100 3cff 	add.w	ip, r0, #4294967295	; 0xffffffff
d02023da:	d273      	bcs.n	d02024c4 <__udivmoddi4+0x2a4>
d02023dc:	428b      	cmp	r3, r1
d02023de:	d971      	bls.n	d02024c4 <__udivmoddi4+0x2a4>
d02023e0:	3802      	subs	r0, #2
d02023e2:	4439      	add	r1, r7
d02023e4:	1acb      	subs	r3, r1, r3
d02023e6:	ea40 4606 	orr.w	r6, r0, r6, lsl #16
d02023ea:	e778      	b.n	d02022de <__udivmoddi4+0xbe>
d02023ec:	f1c6 0c20 	rsb	ip, r6, #32
d02023f0:	fa03 f406 	lsl.w	r4, r3, r6
d02023f4:	fa22 f30c 	lsr.w	r3, r2, ip
d02023f8:	431c      	orrs	r4, r3
d02023fa:	fa20 f70c 	lsr.w	r7, r0, ip
d02023fe:	fa01 f306 	lsl.w	r3, r1, r6
d0202402:	ea4f 4e14 	mov.w	lr, r4, lsr #16
d0202406:	fa21 f10c 	lsr.w	r1, r1, ip
d020240a:	431f      	orrs	r7, r3
d020240c:	0c3b      	lsrs	r3, r7, #16
d020240e:	fbb1 f9fe 	udiv	r9, r1, lr
d0202412:	fa1f f884 	uxth.w	r8, r4
d0202416:	fb0e 1119 	mls	r1, lr, r9, r1
d020241a:	ea43 4101 	orr.w	r1, r3, r1, lsl #16
d020241e:	fb09 fa08 	mul.w	sl, r9, r8
d0202422:	458a      	cmp	sl, r1
d0202424:	fa02 f206 	lsl.w	r2, r2, r6
d0202428:	fa00 f306 	lsl.w	r3, r0, r6
d020242c:	d908      	bls.n	d0202440 <__udivmoddi4+0x220>
d020242e:	1861      	adds	r1, r4, r1
d0202430:	f109 30ff 	add.w	r0, r9, #4294967295	; 0xffffffff
d0202434:	d248      	bcs.n	d02024c8 <__udivmoddi4+0x2a8>
d0202436:	458a      	cmp	sl, r1
d0202438:	d946      	bls.n	d02024c8 <__udivmoddi4+0x2a8>
d020243a:	f1a9 0902 	sub.w	r9, r9, #2
d020243e:	4421      	add	r1, r4
d0202440:	eba1 010a 	sub.w	r1, r1, sl
d0202444:	b2bf      	uxth	r7, r7
d0202446:	fbb1 f0fe 	udiv	r0, r1, lr
d020244a:	fb0e 1110 	mls	r1, lr, r0, r1
d020244e:	ea47 4701 	orr.w	r7, r7, r1, lsl #16
d0202452:	fb00 f808 	mul.w	r8, r0, r8
d0202456:	45b8      	cmp	r8, r7
d0202458:	d907      	bls.n	d020246a <__udivmoddi4+0x24a>
d020245a:	19e7      	adds	r7, r4, r7
d020245c:	f100 31ff 	add.w	r1, r0, #4294967295	; 0xffffffff
d0202460:	d22e      	bcs.n	d02024c0 <__udivmoddi4+0x2a0>
d0202462:	45b8      	cmp	r8, r7
d0202464:	d92c      	bls.n	d02024c0 <__udivmoddi4+0x2a0>
d0202466:	3802      	subs	r0, #2
d0202468:	4427      	add	r7, r4
d020246a:	ea40 4009 	orr.w	r0, r0, r9, lsl #16
d020246e:	eba7 0708 	sub.w	r7, r7, r8
d0202472:	fba0 8902 	umull	r8, r9, r0, r2
d0202476:	454f      	cmp	r7, r9
d0202478:	46c6      	mov	lr, r8
d020247a:	4649      	mov	r1, r9
d020247c:	d31a      	bcc.n	d02024b4 <__udivmoddi4+0x294>
d020247e:	d017      	beq.n	d02024b0 <__udivmoddi4+0x290>
d0202480:	b15d      	cbz	r5, d020249a <__udivmoddi4+0x27a>
d0202482:	ebb3 020e 	subs.w	r2, r3, lr
d0202486:	eb67 0701 	sbc.w	r7, r7, r1
d020248a:	fa07 fc0c 	lsl.w	ip, r7, ip
d020248e:	40f2      	lsrs	r2, r6
d0202490:	ea4c 0202 	orr.w	r2, ip, r2
d0202494:	40f7      	lsrs	r7, r6
d0202496:	e9c5 2700 	strd	r2, r7, [r5]
d020249a:	2600      	movs	r6, #0
d020249c:	4631      	mov	r1, r6
d020249e:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
d02024a2:	462e      	mov	r6, r5
d02024a4:	4628      	mov	r0, r5
d02024a6:	e70b      	b.n	d02022c0 <__udivmoddi4+0xa0>
d02024a8:	4606      	mov	r6, r0
d02024aa:	e6e9      	b.n	d0202280 <__udivmoddi4+0x60>
d02024ac:	4618      	mov	r0, r3
d02024ae:	e6fd      	b.n	d02022ac <__udivmoddi4+0x8c>
d02024b0:	4543      	cmp	r3, r8
d02024b2:	d2e5      	bcs.n	d0202480 <__udivmoddi4+0x260>
d02024b4:	ebb8 0e02 	subs.w	lr, r8, r2
d02024b8:	eb69 0104 	sbc.w	r1, r9, r4
d02024bc:	3801      	subs	r0, #1
d02024be:	e7df      	b.n	d0202480 <__udivmoddi4+0x260>
d02024c0:	4608      	mov	r0, r1
d02024c2:	e7d2      	b.n	d020246a <__udivmoddi4+0x24a>
d02024c4:	4660      	mov	r0, ip
d02024c6:	e78d      	b.n	d02023e4 <__udivmoddi4+0x1c4>
d02024c8:	4681      	mov	r9, r0
d02024ca:	e7b9      	b.n	d0202440 <__udivmoddi4+0x220>
d02024cc:	4666      	mov	r6, ip
d02024ce:	e775      	b.n	d02023bc <__udivmoddi4+0x19c>
d02024d0:	4630      	mov	r0, r6
d02024d2:	e74a      	b.n	d020236a <__udivmoddi4+0x14a>
d02024d4:	f1ac 0c02 	sub.w	ip, ip, #2
d02024d8:	4439      	add	r1, r7
d02024da:	e713      	b.n	d0202304 <__udivmoddi4+0xe4>
d02024dc:	3802      	subs	r0, #2
d02024de:	443c      	add	r4, r7
d02024e0:	e724      	b.n	d020232c <__udivmoddi4+0x10c>
d02024e2:	bf00      	nop

d02024e4 <__aeabi_idiv0>:
d02024e4:	4770      	bx	lr
d02024e6:	bf00      	nop

d02024e8 <__errno>:
d02024e8:	4b01      	ldr	r3, [pc, #4]	; (d02024f0 <__errno+0x8>)
d02024ea:	6818      	ldr	r0, [r3, #0]
d02024ec:	4770      	bx	lr
d02024ee:	bf00      	nop
d02024f0:	d0203948 	.word	0xd0203948

d02024f4 <malloc>:
d02024f4:	4b02      	ldr	r3, [pc, #8]	; (d0202500 <malloc+0xc>)
d02024f6:	4601      	mov	r1, r0
d02024f8:	6818      	ldr	r0, [r3, #0]
d02024fa:	f000 b863 	b.w	d02025c4 <_malloc_r>
d02024fe:	bf00      	nop
d0202500:	d0203948 	.word	0xd0203948

d0202504 <free>:
d0202504:	4b02      	ldr	r3, [pc, #8]	; (d0202510 <free+0xc>)
d0202506:	4601      	mov	r1, r0
d0202508:	6818      	ldr	r0, [r3, #0]
d020250a:	f000 b80b 	b.w	d0202524 <_free_r>
d020250e:	bf00      	nop
d0202510:	d0203948 	.word	0xd0203948

d0202514 <memset>:
d0202514:	4402      	add	r2, r0
d0202516:	4603      	mov	r3, r0
d0202518:	4293      	cmp	r3, r2
d020251a:	d100      	bne.n	d020251e <memset+0xa>
d020251c:	4770      	bx	lr
d020251e:	f803 1b01 	strb.w	r1, [r3], #1
d0202522:	e7f9      	b.n	d0202518 <memset+0x4>

d0202524 <_free_r>:
d0202524:	b537      	push	{r0, r1, r2, r4, r5, lr}
d0202526:	2900      	cmp	r1, #0
d0202528:	d048      	beq.n	d02025bc <_free_r+0x98>
d020252a:	f851 3c04 	ldr.w	r3, [r1, #-4]
d020252e:	9001      	str	r0, [sp, #4]
d0202530:	2b00      	cmp	r3, #0
d0202532:	f1a1 0404 	sub.w	r4, r1, #4
d0202536:	bfb8      	it	lt
d0202538:	18e4      	addlt	r4, r4, r3
d020253a:	f000 fce9 	bl	d0202f10 <__malloc_lock>
d020253e:	4a20      	ldr	r2, [pc, #128]	; (d02025c0 <_free_r+0x9c>)
d0202540:	9801      	ldr	r0, [sp, #4]
d0202542:	6813      	ldr	r3, [r2, #0]
d0202544:	4615      	mov	r5, r2
d0202546:	b933      	cbnz	r3, d0202556 <_free_r+0x32>
d0202548:	6063      	str	r3, [r4, #4]
d020254a:	6014      	str	r4, [r2, #0]
d020254c:	b003      	add	sp, #12
d020254e:	e8bd 4030 	ldmia.w	sp!, {r4, r5, lr}
d0202552:	f000 bce3 	b.w	d0202f1c <__malloc_unlock>
d0202556:	42a3      	cmp	r3, r4
d0202558:	d90b      	bls.n	d0202572 <_free_r+0x4e>
d020255a:	6821      	ldr	r1, [r4, #0]
d020255c:	1862      	adds	r2, r4, r1
d020255e:	4293      	cmp	r3, r2
d0202560:	bf04      	itt	eq
d0202562:	681a      	ldreq	r2, [r3, #0]
d0202564:	685b      	ldreq	r3, [r3, #4]
d0202566:	6063      	str	r3, [r4, #4]
d0202568:	bf04      	itt	eq
d020256a:	1852      	addeq	r2, r2, r1
d020256c:	6022      	streq	r2, [r4, #0]
d020256e:	602c      	str	r4, [r5, #0]
d0202570:	e7ec      	b.n	d020254c <_free_r+0x28>
d0202572:	461a      	mov	r2, r3
d0202574:	685b      	ldr	r3, [r3, #4]
d0202576:	b10b      	cbz	r3, d020257c <_free_r+0x58>
d0202578:	42a3      	cmp	r3, r4
d020257a:	d9fa      	bls.n	d0202572 <_free_r+0x4e>
d020257c:	6811      	ldr	r1, [r2, #0]
d020257e:	1855      	adds	r5, r2, r1
d0202580:	42a5      	cmp	r5, r4
d0202582:	d10b      	bne.n	d020259c <_free_r+0x78>
d0202584:	6824      	ldr	r4, [r4, #0]
d0202586:	4421      	add	r1, r4
d0202588:	1854      	adds	r4, r2, r1
d020258a:	42a3      	cmp	r3, r4
d020258c:	6011      	str	r1, [r2, #0]
d020258e:	d1dd      	bne.n	d020254c <_free_r+0x28>
d0202590:	681c      	ldr	r4, [r3, #0]
d0202592:	685b      	ldr	r3, [r3, #4]
d0202594:	6053      	str	r3, [r2, #4]
d0202596:	4421      	add	r1, r4
d0202598:	6011      	str	r1, [r2, #0]
d020259a:	e7d7      	b.n	d020254c <_free_r+0x28>
d020259c:	d902      	bls.n	d02025a4 <_free_r+0x80>
d020259e:	230c      	movs	r3, #12
d02025a0:	6003      	str	r3, [r0, #0]
d02025a2:	e7d3      	b.n	d020254c <_free_r+0x28>
d02025a4:	6825      	ldr	r5, [r4, #0]
d02025a6:	1961      	adds	r1, r4, r5
d02025a8:	428b      	cmp	r3, r1
d02025aa:	bf04      	itt	eq
d02025ac:	6819      	ldreq	r1, [r3, #0]
d02025ae:	685b      	ldreq	r3, [r3, #4]
d02025b0:	6063      	str	r3, [r4, #4]
d02025b2:	bf04      	itt	eq
d02025b4:	1949      	addeq	r1, r1, r5
d02025b6:	6021      	streq	r1, [r4, #0]
d02025b8:	6054      	str	r4, [r2, #4]
d02025ba:	e7c7      	b.n	d020254c <_free_r+0x28>
d02025bc:	b003      	add	sp, #12
d02025be:	bd30      	pop	{r4, r5, pc}
d02025c0:	d020505c 	.word	0xd020505c

d02025c4 <_malloc_r>:
d02025c4:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d02025c6:	1ccd      	adds	r5, r1, #3
d02025c8:	f025 0503 	bic.w	r5, r5, #3
d02025cc:	3508      	adds	r5, #8
d02025ce:	2d0c      	cmp	r5, #12
d02025d0:	bf38      	it	cc
d02025d2:	250c      	movcc	r5, #12
d02025d4:	2d00      	cmp	r5, #0
d02025d6:	4606      	mov	r6, r0
d02025d8:	db01      	blt.n	d02025de <_malloc_r+0x1a>
d02025da:	42a9      	cmp	r1, r5
d02025dc:	d903      	bls.n	d02025e6 <_malloc_r+0x22>
d02025de:	230c      	movs	r3, #12
d02025e0:	6033      	str	r3, [r6, #0]
d02025e2:	2000      	movs	r0, #0
d02025e4:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d02025e6:	f000 fc93 	bl	d0202f10 <__malloc_lock>
d02025ea:	4921      	ldr	r1, [pc, #132]	; (d0202670 <_malloc_r+0xac>)
d02025ec:	680a      	ldr	r2, [r1, #0]
d02025ee:	4614      	mov	r4, r2
d02025f0:	b99c      	cbnz	r4, d020261a <_malloc_r+0x56>
d02025f2:	4f20      	ldr	r7, [pc, #128]	; (d0202674 <_malloc_r+0xb0>)
d02025f4:	683b      	ldr	r3, [r7, #0]
d02025f6:	b923      	cbnz	r3, d0202602 <_malloc_r+0x3e>
d02025f8:	4621      	mov	r1, r4
d02025fa:	4630      	mov	r0, r6
d02025fc:	f7fd fd70 	bl	d02000e0 <_sbrk_r>
d0202600:	6038      	str	r0, [r7, #0]
d0202602:	4629      	mov	r1, r5
d0202604:	4630      	mov	r0, r6
d0202606:	f7fd fd6b 	bl	d02000e0 <_sbrk_r>
d020260a:	1c43      	adds	r3, r0, #1
d020260c:	d123      	bne.n	d0202656 <_malloc_r+0x92>
d020260e:	230c      	movs	r3, #12
d0202610:	6033      	str	r3, [r6, #0]
d0202612:	4630      	mov	r0, r6
d0202614:	f000 fc82 	bl	d0202f1c <__malloc_unlock>
d0202618:	e7e3      	b.n	d02025e2 <_malloc_r+0x1e>
d020261a:	6823      	ldr	r3, [r4, #0]
d020261c:	1b5b      	subs	r3, r3, r5
d020261e:	d417      	bmi.n	d0202650 <_malloc_r+0x8c>
d0202620:	2b0b      	cmp	r3, #11
d0202622:	d903      	bls.n	d020262c <_malloc_r+0x68>
d0202624:	6023      	str	r3, [r4, #0]
d0202626:	441c      	add	r4, r3
d0202628:	6025      	str	r5, [r4, #0]
d020262a:	e004      	b.n	d0202636 <_malloc_r+0x72>
d020262c:	6863      	ldr	r3, [r4, #4]
d020262e:	42a2      	cmp	r2, r4
d0202630:	bf0c      	ite	eq
d0202632:	600b      	streq	r3, [r1, #0]
d0202634:	6053      	strne	r3, [r2, #4]
d0202636:	4630      	mov	r0, r6
d0202638:	f000 fc70 	bl	d0202f1c <__malloc_unlock>
d020263c:	f104 000b 	add.w	r0, r4, #11
d0202640:	1d23      	adds	r3, r4, #4
d0202642:	f020 0007 	bic.w	r0, r0, #7
d0202646:	1ac2      	subs	r2, r0, r3
d0202648:	d0cc      	beq.n	d02025e4 <_malloc_r+0x20>
d020264a:	1a1b      	subs	r3, r3, r0
d020264c:	50a3      	str	r3, [r4, r2]
d020264e:	e7c9      	b.n	d02025e4 <_malloc_r+0x20>
d0202650:	4622      	mov	r2, r4
d0202652:	6864      	ldr	r4, [r4, #4]
d0202654:	e7cc      	b.n	d02025f0 <_malloc_r+0x2c>
d0202656:	1cc4      	adds	r4, r0, #3
d0202658:	f024 0403 	bic.w	r4, r4, #3
d020265c:	42a0      	cmp	r0, r4
d020265e:	d0e3      	beq.n	d0202628 <_malloc_r+0x64>
d0202660:	1a21      	subs	r1, r4, r0
d0202662:	4630      	mov	r0, r6
d0202664:	f7fd fd3c 	bl	d02000e0 <_sbrk_r>
d0202668:	3001      	adds	r0, #1
d020266a:	d1dd      	bne.n	d0202628 <_malloc_r+0x64>
d020266c:	e7cf      	b.n	d020260e <_malloc_r+0x4a>
d020266e:	bf00      	nop
d0202670:	d020505c 	.word	0xd020505c
d0202674:	d0205060 	.word	0xd0205060

d0202678 <iprintf>:
d0202678:	b40f      	push	{r0, r1, r2, r3}
d020267a:	4b0a      	ldr	r3, [pc, #40]	; (d02026a4 <iprintf+0x2c>)
d020267c:	b513      	push	{r0, r1, r4, lr}
d020267e:	681c      	ldr	r4, [r3, #0]
d0202680:	b124      	cbz	r4, d020268c <iprintf+0x14>
d0202682:	69a3      	ldr	r3, [r4, #24]
d0202684:	b913      	cbnz	r3, d020268c <iprintf+0x14>
d0202686:	4620      	mov	r0, r4
d0202688:	f000 fb3e 	bl	d0202d08 <__sinit>
d020268c:	ab05      	add	r3, sp, #20
d020268e:	9a04      	ldr	r2, [sp, #16]
d0202690:	68a1      	ldr	r1, [r4, #8]
d0202692:	9301      	str	r3, [sp, #4]
d0202694:	4620      	mov	r0, r4
d0202696:	f000 fc71 	bl	d0202f7c <_vfiprintf_r>
d020269a:	b002      	add	sp, #8
d020269c:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
d02026a0:	b004      	add	sp, #16
d02026a2:	4770      	bx	lr
d02026a4:	d0203948 	.word	0xd0203948

d02026a8 <_puts_r>:
d02026a8:	b570      	push	{r4, r5, r6, lr}
d02026aa:	460e      	mov	r6, r1
d02026ac:	4605      	mov	r5, r0
d02026ae:	b118      	cbz	r0, d02026b8 <_puts_r+0x10>
d02026b0:	6983      	ldr	r3, [r0, #24]
d02026b2:	b90b      	cbnz	r3, d02026b8 <_puts_r+0x10>
d02026b4:	f000 fb28 	bl	d0202d08 <__sinit>
d02026b8:	69ab      	ldr	r3, [r5, #24]
d02026ba:	68ac      	ldr	r4, [r5, #8]
d02026bc:	b913      	cbnz	r3, d02026c4 <_puts_r+0x1c>
d02026be:	4628      	mov	r0, r5
d02026c0:	f000 fb22 	bl	d0202d08 <__sinit>
d02026c4:	4b2c      	ldr	r3, [pc, #176]	; (d0202778 <_puts_r+0xd0>)
d02026c6:	429c      	cmp	r4, r3
d02026c8:	d120      	bne.n	d020270c <_puts_r+0x64>
d02026ca:	686c      	ldr	r4, [r5, #4]
d02026cc:	6e63      	ldr	r3, [r4, #100]	; 0x64
d02026ce:	07db      	lsls	r3, r3, #31
d02026d0:	d405      	bmi.n	d02026de <_puts_r+0x36>
d02026d2:	89a3      	ldrh	r3, [r4, #12]
d02026d4:	0598      	lsls	r0, r3, #22
d02026d6:	d402      	bmi.n	d02026de <_puts_r+0x36>
d02026d8:	6da0      	ldr	r0, [r4, #88]	; 0x58
d02026da:	f000 fbb3 	bl	d0202e44 <__retarget_lock_acquire_recursive>
d02026de:	89a3      	ldrh	r3, [r4, #12]
d02026e0:	0719      	lsls	r1, r3, #28
d02026e2:	d51d      	bpl.n	d0202720 <_puts_r+0x78>
d02026e4:	6923      	ldr	r3, [r4, #16]
d02026e6:	b1db      	cbz	r3, d0202720 <_puts_r+0x78>
d02026e8:	3e01      	subs	r6, #1
d02026ea:	68a3      	ldr	r3, [r4, #8]
d02026ec:	f816 1f01 	ldrb.w	r1, [r6, #1]!
d02026f0:	3b01      	subs	r3, #1
d02026f2:	60a3      	str	r3, [r4, #8]
d02026f4:	bb39      	cbnz	r1, d0202746 <_puts_r+0x9e>
d02026f6:	2b00      	cmp	r3, #0
d02026f8:	da38      	bge.n	d020276c <_puts_r+0xc4>
d02026fa:	4622      	mov	r2, r4
d02026fc:	210a      	movs	r1, #10
d02026fe:	4628      	mov	r0, r5
d0202700:	f000 f928 	bl	d0202954 <__swbuf_r>
d0202704:	3001      	adds	r0, #1
d0202706:	d011      	beq.n	d020272c <_puts_r+0x84>
d0202708:	250a      	movs	r5, #10
d020270a:	e011      	b.n	d0202730 <_puts_r+0x88>
d020270c:	4b1b      	ldr	r3, [pc, #108]	; (d020277c <_puts_r+0xd4>)
d020270e:	429c      	cmp	r4, r3
d0202710:	d101      	bne.n	d0202716 <_puts_r+0x6e>
d0202712:	68ac      	ldr	r4, [r5, #8]
d0202714:	e7da      	b.n	d02026cc <_puts_r+0x24>
d0202716:	4b1a      	ldr	r3, [pc, #104]	; (d0202780 <_puts_r+0xd8>)
d0202718:	429c      	cmp	r4, r3
d020271a:	bf08      	it	eq
d020271c:	68ec      	ldreq	r4, [r5, #12]
d020271e:	e7d5      	b.n	d02026cc <_puts_r+0x24>
d0202720:	4621      	mov	r1, r4
d0202722:	4628      	mov	r0, r5
d0202724:	f000 f968 	bl	d02029f8 <__swsetup_r>
d0202728:	2800      	cmp	r0, #0
d020272a:	d0dd      	beq.n	d02026e8 <_puts_r+0x40>
d020272c:	f04f 35ff 	mov.w	r5, #4294967295	; 0xffffffff
d0202730:	6e63      	ldr	r3, [r4, #100]	; 0x64
d0202732:	07da      	lsls	r2, r3, #31
d0202734:	d405      	bmi.n	d0202742 <_puts_r+0x9a>
d0202736:	89a3      	ldrh	r3, [r4, #12]
d0202738:	059b      	lsls	r3, r3, #22
d020273a:	d402      	bmi.n	d0202742 <_puts_r+0x9a>
d020273c:	6da0      	ldr	r0, [r4, #88]	; 0x58
d020273e:	f000 fb82 	bl	d0202e46 <__retarget_lock_release_recursive>
d0202742:	4628      	mov	r0, r5
d0202744:	bd70      	pop	{r4, r5, r6, pc}
d0202746:	2b00      	cmp	r3, #0
d0202748:	da04      	bge.n	d0202754 <_puts_r+0xac>
d020274a:	69a2      	ldr	r2, [r4, #24]
d020274c:	429a      	cmp	r2, r3
d020274e:	dc06      	bgt.n	d020275e <_puts_r+0xb6>
d0202750:	290a      	cmp	r1, #10
d0202752:	d004      	beq.n	d020275e <_puts_r+0xb6>
d0202754:	6823      	ldr	r3, [r4, #0]
d0202756:	1c5a      	adds	r2, r3, #1
d0202758:	6022      	str	r2, [r4, #0]
d020275a:	7019      	strb	r1, [r3, #0]
d020275c:	e7c5      	b.n	d02026ea <_puts_r+0x42>
d020275e:	4622      	mov	r2, r4
d0202760:	4628      	mov	r0, r5
d0202762:	f000 f8f7 	bl	d0202954 <__swbuf_r>
d0202766:	3001      	adds	r0, #1
d0202768:	d1bf      	bne.n	d02026ea <_puts_r+0x42>
d020276a:	e7df      	b.n	d020272c <_puts_r+0x84>
d020276c:	6823      	ldr	r3, [r4, #0]
d020276e:	250a      	movs	r5, #10
d0202770:	1c5a      	adds	r2, r3, #1
d0202772:	6022      	str	r2, [r4, #0]
d0202774:	701d      	strb	r5, [r3, #0]
d0202776:	e7db      	b.n	d0202730 <_puts_r+0x88>
d0202778:	d020388c 	.word	0xd020388c
d020277c:	d02038ac 	.word	0xd02038ac
d0202780:	d020386c 	.word	0xd020386c

d0202784 <puts>:
d0202784:	4b02      	ldr	r3, [pc, #8]	; (d0202790 <puts+0xc>)
d0202786:	4601      	mov	r1, r0
d0202788:	6818      	ldr	r0, [r3, #0]
d020278a:	f7ff bf8d 	b.w	d02026a8 <_puts_r>
d020278e:	bf00      	nop
d0202790:	d0203948 	.word	0xd0203948

d0202794 <setbuf>:
d0202794:	2900      	cmp	r1, #0
d0202796:	f44f 6380 	mov.w	r3, #1024	; 0x400
d020279a:	bf0c      	ite	eq
d020279c:	2202      	moveq	r2, #2
d020279e:	2200      	movne	r2, #0
d02027a0:	f000 b800 	b.w	d02027a4 <setvbuf>

d02027a4 <setvbuf>:
d02027a4:	e92d 43f7 	stmdb	sp!, {r0, r1, r2, r4, r5, r6, r7, r8, r9, lr}
d02027a8:	461d      	mov	r5, r3
d02027aa:	4b5d      	ldr	r3, [pc, #372]	; (d0202920 <setvbuf+0x17c>)
d02027ac:	681f      	ldr	r7, [r3, #0]
d02027ae:	4604      	mov	r4, r0
d02027b0:	460e      	mov	r6, r1
d02027b2:	4690      	mov	r8, r2
d02027b4:	b127      	cbz	r7, d02027c0 <setvbuf+0x1c>
d02027b6:	69bb      	ldr	r3, [r7, #24]
d02027b8:	b913      	cbnz	r3, d02027c0 <setvbuf+0x1c>
d02027ba:	4638      	mov	r0, r7
d02027bc:	f000 faa4 	bl	d0202d08 <__sinit>
d02027c0:	4b58      	ldr	r3, [pc, #352]	; (d0202924 <setvbuf+0x180>)
d02027c2:	429c      	cmp	r4, r3
d02027c4:	d167      	bne.n	d0202896 <setvbuf+0xf2>
d02027c6:	687c      	ldr	r4, [r7, #4]
d02027c8:	f1b8 0f02 	cmp.w	r8, #2
d02027cc:	d006      	beq.n	d02027dc <setvbuf+0x38>
d02027ce:	f1b8 0f01 	cmp.w	r8, #1
d02027d2:	f200 809f 	bhi.w	d0202914 <setvbuf+0x170>
d02027d6:	2d00      	cmp	r5, #0
d02027d8:	f2c0 809c 	blt.w	d0202914 <setvbuf+0x170>
d02027dc:	6e63      	ldr	r3, [r4, #100]	; 0x64
d02027de:	07db      	lsls	r3, r3, #31
d02027e0:	d405      	bmi.n	d02027ee <setvbuf+0x4a>
d02027e2:	89a3      	ldrh	r3, [r4, #12]
d02027e4:	0598      	lsls	r0, r3, #22
d02027e6:	d402      	bmi.n	d02027ee <setvbuf+0x4a>
d02027e8:	6da0      	ldr	r0, [r4, #88]	; 0x58
d02027ea:	f000 fb2b 	bl	d0202e44 <__retarget_lock_acquire_recursive>
d02027ee:	4621      	mov	r1, r4
d02027f0:	4638      	mov	r0, r7
d02027f2:	f000 f9f5 	bl	d0202be0 <_fflush_r>
d02027f6:	6b61      	ldr	r1, [r4, #52]	; 0x34
d02027f8:	b141      	cbz	r1, d020280c <setvbuf+0x68>
d02027fa:	f104 0344 	add.w	r3, r4, #68	; 0x44
d02027fe:	4299      	cmp	r1, r3
d0202800:	d002      	beq.n	d0202808 <setvbuf+0x64>
d0202802:	4638      	mov	r0, r7
d0202804:	f7ff fe8e 	bl	d0202524 <_free_r>
d0202808:	2300      	movs	r3, #0
d020280a:	6363      	str	r3, [r4, #52]	; 0x34
d020280c:	2300      	movs	r3, #0
d020280e:	61a3      	str	r3, [r4, #24]
d0202810:	6063      	str	r3, [r4, #4]
d0202812:	89a3      	ldrh	r3, [r4, #12]
d0202814:	0619      	lsls	r1, r3, #24
d0202816:	d503      	bpl.n	d0202820 <setvbuf+0x7c>
d0202818:	6921      	ldr	r1, [r4, #16]
d020281a:	4638      	mov	r0, r7
d020281c:	f7ff fe82 	bl	d0202524 <_free_r>
d0202820:	89a3      	ldrh	r3, [r4, #12]
d0202822:	f423 634a 	bic.w	r3, r3, #3232	; 0xca0
d0202826:	f023 0303 	bic.w	r3, r3, #3
d020282a:	f1b8 0f02 	cmp.w	r8, #2
d020282e:	81a3      	strh	r3, [r4, #12]
d0202830:	d06c      	beq.n	d020290c <setvbuf+0x168>
d0202832:	ab01      	add	r3, sp, #4
d0202834:	466a      	mov	r2, sp
d0202836:	4621      	mov	r1, r4
d0202838:	4638      	mov	r0, r7
d020283a:	f000 fb05 	bl	d0202e48 <__swhatbuf_r>
d020283e:	89a3      	ldrh	r3, [r4, #12]
d0202840:	4318      	orrs	r0, r3
d0202842:	81a0      	strh	r0, [r4, #12]
d0202844:	2d00      	cmp	r5, #0
d0202846:	d130      	bne.n	d02028aa <setvbuf+0x106>
d0202848:	9d00      	ldr	r5, [sp, #0]
d020284a:	4628      	mov	r0, r5
d020284c:	f7ff fe52 	bl	d02024f4 <malloc>
d0202850:	4606      	mov	r6, r0
d0202852:	2800      	cmp	r0, #0
d0202854:	d155      	bne.n	d0202902 <setvbuf+0x15e>
d0202856:	f8dd 9000 	ldr.w	r9, [sp]
d020285a:	45a9      	cmp	r9, r5
d020285c:	d14a      	bne.n	d02028f4 <setvbuf+0x150>
d020285e:	f04f 35ff 	mov.w	r5, #4294967295	; 0xffffffff
d0202862:	2200      	movs	r2, #0
d0202864:	60a2      	str	r2, [r4, #8]
d0202866:	f104 0247 	add.w	r2, r4, #71	; 0x47
d020286a:	6022      	str	r2, [r4, #0]
d020286c:	6122      	str	r2, [r4, #16]
d020286e:	2201      	movs	r2, #1
d0202870:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
d0202874:	6162      	str	r2, [r4, #20]
d0202876:	6e62      	ldr	r2, [r4, #100]	; 0x64
d0202878:	f043 0302 	orr.w	r3, r3, #2
d020287c:	07d2      	lsls	r2, r2, #31
d020287e:	81a3      	strh	r3, [r4, #12]
d0202880:	d405      	bmi.n	d020288e <setvbuf+0xea>
d0202882:	f413 7f00 	tst.w	r3, #512	; 0x200
d0202886:	d102      	bne.n	d020288e <setvbuf+0xea>
d0202888:	6da0      	ldr	r0, [r4, #88]	; 0x58
d020288a:	f000 fadc 	bl	d0202e46 <__retarget_lock_release_recursive>
d020288e:	4628      	mov	r0, r5
d0202890:	b003      	add	sp, #12
d0202892:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
d0202896:	4b24      	ldr	r3, [pc, #144]	; (d0202928 <setvbuf+0x184>)
d0202898:	429c      	cmp	r4, r3
d020289a:	d101      	bne.n	d02028a0 <setvbuf+0xfc>
d020289c:	68bc      	ldr	r4, [r7, #8]
d020289e:	e793      	b.n	d02027c8 <setvbuf+0x24>
d02028a0:	4b22      	ldr	r3, [pc, #136]	; (d020292c <setvbuf+0x188>)
d02028a2:	429c      	cmp	r4, r3
d02028a4:	bf08      	it	eq
d02028a6:	68fc      	ldreq	r4, [r7, #12]
d02028a8:	e78e      	b.n	d02027c8 <setvbuf+0x24>
d02028aa:	2e00      	cmp	r6, #0
d02028ac:	d0cd      	beq.n	d020284a <setvbuf+0xa6>
d02028ae:	69bb      	ldr	r3, [r7, #24]
d02028b0:	b913      	cbnz	r3, d02028b8 <setvbuf+0x114>
d02028b2:	4638      	mov	r0, r7
d02028b4:	f000 fa28 	bl	d0202d08 <__sinit>
d02028b8:	f1b8 0f01 	cmp.w	r8, #1
d02028bc:	bf08      	it	eq
d02028be:	89a3      	ldrheq	r3, [r4, #12]
d02028c0:	6026      	str	r6, [r4, #0]
d02028c2:	bf04      	itt	eq
d02028c4:	f043 0301 	orreq.w	r3, r3, #1
d02028c8:	81a3      	strheq	r3, [r4, #12]
d02028ca:	89a2      	ldrh	r2, [r4, #12]
d02028cc:	f012 0308 	ands.w	r3, r2, #8
d02028d0:	e9c4 6504 	strd	r6, r5, [r4, #16]
d02028d4:	d01c      	beq.n	d0202910 <setvbuf+0x16c>
d02028d6:	07d3      	lsls	r3, r2, #31
d02028d8:	bf41      	itttt	mi
d02028da:	2300      	movmi	r3, #0
d02028dc:	426d      	negmi	r5, r5
d02028de:	60a3      	strmi	r3, [r4, #8]
d02028e0:	61a5      	strmi	r5, [r4, #24]
d02028e2:	bf58      	it	pl
d02028e4:	60a5      	strpl	r5, [r4, #8]
d02028e6:	6e65      	ldr	r5, [r4, #100]	; 0x64
d02028e8:	f015 0501 	ands.w	r5, r5, #1
d02028ec:	d115      	bne.n	d020291a <setvbuf+0x176>
d02028ee:	f412 7f00 	tst.w	r2, #512	; 0x200
d02028f2:	e7c8      	b.n	d0202886 <setvbuf+0xe2>
d02028f4:	4648      	mov	r0, r9
d02028f6:	f7ff fdfd 	bl	d02024f4 <malloc>
d02028fa:	4606      	mov	r6, r0
d02028fc:	2800      	cmp	r0, #0
d02028fe:	d0ae      	beq.n	d020285e <setvbuf+0xba>
d0202900:	464d      	mov	r5, r9
d0202902:	89a3      	ldrh	r3, [r4, #12]
d0202904:	f043 0380 	orr.w	r3, r3, #128	; 0x80
d0202908:	81a3      	strh	r3, [r4, #12]
d020290a:	e7d0      	b.n	d02028ae <setvbuf+0x10a>
d020290c:	2500      	movs	r5, #0
d020290e:	e7a8      	b.n	d0202862 <setvbuf+0xbe>
d0202910:	60a3      	str	r3, [r4, #8]
d0202912:	e7e8      	b.n	d02028e6 <setvbuf+0x142>
d0202914:	f04f 35ff 	mov.w	r5, #4294967295	; 0xffffffff
d0202918:	e7b9      	b.n	d020288e <setvbuf+0xea>
d020291a:	2500      	movs	r5, #0
d020291c:	e7b7      	b.n	d020288e <setvbuf+0xea>
d020291e:	bf00      	nop
d0202920:	d0203948 	.word	0xd0203948
d0202924:	d020388c 	.word	0xd020388c
d0202928:	d02038ac 	.word	0xd02038ac
d020292c:	d020386c 	.word	0xd020386c

d0202930 <strcmp>:
d0202930:	f810 2b01 	ldrb.w	r2, [r0], #1
d0202934:	f811 3b01 	ldrb.w	r3, [r1], #1
d0202938:	2a01      	cmp	r2, #1
d020293a:	bf28      	it	cs
d020293c:	429a      	cmpcs	r2, r3
d020293e:	d0f7      	beq.n	d0202930 <strcmp>
d0202940:	1ad0      	subs	r0, r2, r3
d0202942:	4770      	bx	lr

d0202944 <strlen>:
d0202944:	4603      	mov	r3, r0
d0202946:	f813 2b01 	ldrb.w	r2, [r3], #1
d020294a:	2a00      	cmp	r2, #0
d020294c:	d1fb      	bne.n	d0202946 <strlen+0x2>
d020294e:	1a18      	subs	r0, r3, r0
d0202950:	3801      	subs	r0, #1
d0202952:	4770      	bx	lr

d0202954 <__swbuf_r>:
d0202954:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d0202956:	460e      	mov	r6, r1
d0202958:	4614      	mov	r4, r2
d020295a:	4605      	mov	r5, r0
d020295c:	b118      	cbz	r0, d0202966 <__swbuf_r+0x12>
d020295e:	6983      	ldr	r3, [r0, #24]
d0202960:	b90b      	cbnz	r3, d0202966 <__swbuf_r+0x12>
d0202962:	f000 f9d1 	bl	d0202d08 <__sinit>
d0202966:	4b21      	ldr	r3, [pc, #132]	; (d02029ec <__swbuf_r+0x98>)
d0202968:	429c      	cmp	r4, r3
d020296a:	d12b      	bne.n	d02029c4 <__swbuf_r+0x70>
d020296c:	686c      	ldr	r4, [r5, #4]
d020296e:	69a3      	ldr	r3, [r4, #24]
d0202970:	60a3      	str	r3, [r4, #8]
d0202972:	89a3      	ldrh	r3, [r4, #12]
d0202974:	071a      	lsls	r2, r3, #28
d0202976:	d52f      	bpl.n	d02029d8 <__swbuf_r+0x84>
d0202978:	6923      	ldr	r3, [r4, #16]
d020297a:	b36b      	cbz	r3, d02029d8 <__swbuf_r+0x84>
d020297c:	6923      	ldr	r3, [r4, #16]
d020297e:	6820      	ldr	r0, [r4, #0]
d0202980:	1ac0      	subs	r0, r0, r3
d0202982:	6963      	ldr	r3, [r4, #20]
d0202984:	b2f6      	uxtb	r6, r6
d0202986:	4283      	cmp	r3, r0
d0202988:	4637      	mov	r7, r6
d020298a:	dc04      	bgt.n	d0202996 <__swbuf_r+0x42>
d020298c:	4621      	mov	r1, r4
d020298e:	4628      	mov	r0, r5
d0202990:	f000 f926 	bl	d0202be0 <_fflush_r>
d0202994:	bb30      	cbnz	r0, d02029e4 <__swbuf_r+0x90>
d0202996:	68a3      	ldr	r3, [r4, #8]
d0202998:	3b01      	subs	r3, #1
d020299a:	60a3      	str	r3, [r4, #8]
d020299c:	6823      	ldr	r3, [r4, #0]
d020299e:	1c5a      	adds	r2, r3, #1
d02029a0:	6022      	str	r2, [r4, #0]
d02029a2:	701e      	strb	r6, [r3, #0]
d02029a4:	6963      	ldr	r3, [r4, #20]
d02029a6:	3001      	adds	r0, #1
d02029a8:	4283      	cmp	r3, r0
d02029aa:	d004      	beq.n	d02029b6 <__swbuf_r+0x62>
d02029ac:	89a3      	ldrh	r3, [r4, #12]
d02029ae:	07db      	lsls	r3, r3, #31
d02029b0:	d506      	bpl.n	d02029c0 <__swbuf_r+0x6c>
d02029b2:	2e0a      	cmp	r6, #10
d02029b4:	d104      	bne.n	d02029c0 <__swbuf_r+0x6c>
d02029b6:	4621      	mov	r1, r4
d02029b8:	4628      	mov	r0, r5
d02029ba:	f000 f911 	bl	d0202be0 <_fflush_r>
d02029be:	b988      	cbnz	r0, d02029e4 <__swbuf_r+0x90>
d02029c0:	4638      	mov	r0, r7
d02029c2:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d02029c4:	4b0a      	ldr	r3, [pc, #40]	; (d02029f0 <__swbuf_r+0x9c>)
d02029c6:	429c      	cmp	r4, r3
d02029c8:	d101      	bne.n	d02029ce <__swbuf_r+0x7a>
d02029ca:	68ac      	ldr	r4, [r5, #8]
d02029cc:	e7cf      	b.n	d020296e <__swbuf_r+0x1a>
d02029ce:	4b09      	ldr	r3, [pc, #36]	; (d02029f4 <__swbuf_r+0xa0>)
d02029d0:	429c      	cmp	r4, r3
d02029d2:	bf08      	it	eq
d02029d4:	68ec      	ldreq	r4, [r5, #12]
d02029d6:	e7ca      	b.n	d020296e <__swbuf_r+0x1a>
d02029d8:	4621      	mov	r1, r4
d02029da:	4628      	mov	r0, r5
d02029dc:	f000 f80c 	bl	d02029f8 <__swsetup_r>
d02029e0:	2800      	cmp	r0, #0
d02029e2:	d0cb      	beq.n	d020297c <__swbuf_r+0x28>
d02029e4:	f04f 37ff 	mov.w	r7, #4294967295	; 0xffffffff
d02029e8:	e7ea      	b.n	d02029c0 <__swbuf_r+0x6c>
d02029ea:	bf00      	nop
d02029ec:	d020388c 	.word	0xd020388c
d02029f0:	d02038ac 	.word	0xd02038ac
d02029f4:	d020386c 	.word	0xd020386c

d02029f8 <__swsetup_r>:
d02029f8:	4b32      	ldr	r3, [pc, #200]	; (d0202ac4 <__swsetup_r+0xcc>)
d02029fa:	b570      	push	{r4, r5, r6, lr}
d02029fc:	681d      	ldr	r5, [r3, #0]
d02029fe:	4606      	mov	r6, r0
d0202a00:	460c      	mov	r4, r1
d0202a02:	b125      	cbz	r5, d0202a0e <__swsetup_r+0x16>
d0202a04:	69ab      	ldr	r3, [r5, #24]
d0202a06:	b913      	cbnz	r3, d0202a0e <__swsetup_r+0x16>
d0202a08:	4628      	mov	r0, r5
d0202a0a:	f000 f97d 	bl	d0202d08 <__sinit>
d0202a0e:	4b2e      	ldr	r3, [pc, #184]	; (d0202ac8 <__swsetup_r+0xd0>)
d0202a10:	429c      	cmp	r4, r3
d0202a12:	d10f      	bne.n	d0202a34 <__swsetup_r+0x3c>
d0202a14:	686c      	ldr	r4, [r5, #4]
d0202a16:	89a3      	ldrh	r3, [r4, #12]
d0202a18:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
d0202a1c:	0719      	lsls	r1, r3, #28
d0202a1e:	d42c      	bmi.n	d0202a7a <__swsetup_r+0x82>
d0202a20:	06dd      	lsls	r5, r3, #27
d0202a22:	d411      	bmi.n	d0202a48 <__swsetup_r+0x50>
d0202a24:	2309      	movs	r3, #9
d0202a26:	6033      	str	r3, [r6, #0]
d0202a28:	f042 0340 	orr.w	r3, r2, #64	; 0x40
d0202a2c:	81a3      	strh	r3, [r4, #12]
d0202a2e:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d0202a32:	e03e      	b.n	d0202ab2 <__swsetup_r+0xba>
d0202a34:	4b25      	ldr	r3, [pc, #148]	; (d0202acc <__swsetup_r+0xd4>)
d0202a36:	429c      	cmp	r4, r3
d0202a38:	d101      	bne.n	d0202a3e <__swsetup_r+0x46>
d0202a3a:	68ac      	ldr	r4, [r5, #8]
d0202a3c:	e7eb      	b.n	d0202a16 <__swsetup_r+0x1e>
d0202a3e:	4b24      	ldr	r3, [pc, #144]	; (d0202ad0 <__swsetup_r+0xd8>)
d0202a40:	429c      	cmp	r4, r3
d0202a42:	bf08      	it	eq
d0202a44:	68ec      	ldreq	r4, [r5, #12]
d0202a46:	e7e6      	b.n	d0202a16 <__swsetup_r+0x1e>
d0202a48:	0758      	lsls	r0, r3, #29
d0202a4a:	d512      	bpl.n	d0202a72 <__swsetup_r+0x7a>
d0202a4c:	6b61      	ldr	r1, [r4, #52]	; 0x34
d0202a4e:	b141      	cbz	r1, d0202a62 <__swsetup_r+0x6a>
d0202a50:	f104 0344 	add.w	r3, r4, #68	; 0x44
d0202a54:	4299      	cmp	r1, r3
d0202a56:	d002      	beq.n	d0202a5e <__swsetup_r+0x66>
d0202a58:	4630      	mov	r0, r6
d0202a5a:	f7ff fd63 	bl	d0202524 <_free_r>
d0202a5e:	2300      	movs	r3, #0
d0202a60:	6363      	str	r3, [r4, #52]	; 0x34
d0202a62:	89a3      	ldrh	r3, [r4, #12]
d0202a64:	f023 0324 	bic.w	r3, r3, #36	; 0x24
d0202a68:	81a3      	strh	r3, [r4, #12]
d0202a6a:	2300      	movs	r3, #0
d0202a6c:	6063      	str	r3, [r4, #4]
d0202a6e:	6923      	ldr	r3, [r4, #16]
d0202a70:	6023      	str	r3, [r4, #0]
d0202a72:	89a3      	ldrh	r3, [r4, #12]
d0202a74:	f043 0308 	orr.w	r3, r3, #8
d0202a78:	81a3      	strh	r3, [r4, #12]
d0202a7a:	6923      	ldr	r3, [r4, #16]
d0202a7c:	b94b      	cbnz	r3, d0202a92 <__swsetup_r+0x9a>
d0202a7e:	89a3      	ldrh	r3, [r4, #12]
d0202a80:	f403 7320 	and.w	r3, r3, #640	; 0x280
d0202a84:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
d0202a88:	d003      	beq.n	d0202a92 <__swsetup_r+0x9a>
d0202a8a:	4621      	mov	r1, r4
d0202a8c:	4630      	mov	r0, r6
d0202a8e:	f000 f9ff 	bl	d0202e90 <__smakebuf_r>
d0202a92:	89a0      	ldrh	r0, [r4, #12]
d0202a94:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
d0202a98:	f010 0301 	ands.w	r3, r0, #1
d0202a9c:	d00a      	beq.n	d0202ab4 <__swsetup_r+0xbc>
d0202a9e:	2300      	movs	r3, #0
d0202aa0:	60a3      	str	r3, [r4, #8]
d0202aa2:	6963      	ldr	r3, [r4, #20]
d0202aa4:	425b      	negs	r3, r3
d0202aa6:	61a3      	str	r3, [r4, #24]
d0202aa8:	6923      	ldr	r3, [r4, #16]
d0202aaa:	b943      	cbnz	r3, d0202abe <__swsetup_r+0xc6>
d0202aac:	f010 0080 	ands.w	r0, r0, #128	; 0x80
d0202ab0:	d1ba      	bne.n	d0202a28 <__swsetup_r+0x30>
d0202ab2:	bd70      	pop	{r4, r5, r6, pc}
d0202ab4:	0781      	lsls	r1, r0, #30
d0202ab6:	bf58      	it	pl
d0202ab8:	6963      	ldrpl	r3, [r4, #20]
d0202aba:	60a3      	str	r3, [r4, #8]
d0202abc:	e7f4      	b.n	d0202aa8 <__swsetup_r+0xb0>
d0202abe:	2000      	movs	r0, #0
d0202ac0:	e7f7      	b.n	d0202ab2 <__swsetup_r+0xba>
d0202ac2:	bf00      	nop
d0202ac4:	d0203948 	.word	0xd0203948
d0202ac8:	d020388c 	.word	0xd020388c
d0202acc:	d02038ac 	.word	0xd02038ac
d0202ad0:	d020386c 	.word	0xd020386c

d0202ad4 <__sflush_r>:
d0202ad4:	898a      	ldrh	r2, [r1, #12]
d0202ad6:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
d0202ada:	4605      	mov	r5, r0
d0202adc:	0710      	lsls	r0, r2, #28
d0202ade:	460c      	mov	r4, r1
d0202ae0:	d458      	bmi.n	d0202b94 <__sflush_r+0xc0>
d0202ae2:	684b      	ldr	r3, [r1, #4]
d0202ae4:	2b00      	cmp	r3, #0
d0202ae6:	dc05      	bgt.n	d0202af4 <__sflush_r+0x20>
d0202ae8:	6c0b      	ldr	r3, [r1, #64]	; 0x40
d0202aea:	2b00      	cmp	r3, #0
d0202aec:	dc02      	bgt.n	d0202af4 <__sflush_r+0x20>
d0202aee:	2000      	movs	r0, #0
d0202af0:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
d0202af4:	6ae6      	ldr	r6, [r4, #44]	; 0x2c
d0202af6:	2e00      	cmp	r6, #0
d0202af8:	d0f9      	beq.n	d0202aee <__sflush_r+0x1a>
d0202afa:	2300      	movs	r3, #0
d0202afc:	f412 5280 	ands.w	r2, r2, #4096	; 0x1000
d0202b00:	682f      	ldr	r7, [r5, #0]
d0202b02:	602b      	str	r3, [r5, #0]
d0202b04:	d032      	beq.n	d0202b6c <__sflush_r+0x98>
d0202b06:	6d60      	ldr	r0, [r4, #84]	; 0x54
d0202b08:	89a3      	ldrh	r3, [r4, #12]
d0202b0a:	075a      	lsls	r2, r3, #29
d0202b0c:	d505      	bpl.n	d0202b1a <__sflush_r+0x46>
d0202b0e:	6863      	ldr	r3, [r4, #4]
d0202b10:	1ac0      	subs	r0, r0, r3
d0202b12:	6b63      	ldr	r3, [r4, #52]	; 0x34
d0202b14:	b10b      	cbz	r3, d0202b1a <__sflush_r+0x46>
d0202b16:	6c23      	ldr	r3, [r4, #64]	; 0x40
d0202b18:	1ac0      	subs	r0, r0, r3
d0202b1a:	2300      	movs	r3, #0
d0202b1c:	4602      	mov	r2, r0
d0202b1e:	6ae6      	ldr	r6, [r4, #44]	; 0x2c
d0202b20:	6a21      	ldr	r1, [r4, #32]
d0202b22:	4628      	mov	r0, r5
d0202b24:	47b0      	blx	r6
d0202b26:	1c43      	adds	r3, r0, #1
d0202b28:	89a3      	ldrh	r3, [r4, #12]
d0202b2a:	d106      	bne.n	d0202b3a <__sflush_r+0x66>
d0202b2c:	6829      	ldr	r1, [r5, #0]
d0202b2e:	291d      	cmp	r1, #29
d0202b30:	d82c      	bhi.n	d0202b8c <__sflush_r+0xb8>
d0202b32:	4a2a      	ldr	r2, [pc, #168]	; (d0202bdc <__sflush_r+0x108>)
d0202b34:	40ca      	lsrs	r2, r1
d0202b36:	07d6      	lsls	r6, r2, #31
d0202b38:	d528      	bpl.n	d0202b8c <__sflush_r+0xb8>
d0202b3a:	2200      	movs	r2, #0
d0202b3c:	6062      	str	r2, [r4, #4]
d0202b3e:	04d9      	lsls	r1, r3, #19
d0202b40:	6922      	ldr	r2, [r4, #16]
d0202b42:	6022      	str	r2, [r4, #0]
d0202b44:	d504      	bpl.n	d0202b50 <__sflush_r+0x7c>
d0202b46:	1c42      	adds	r2, r0, #1
d0202b48:	d101      	bne.n	d0202b4e <__sflush_r+0x7a>
d0202b4a:	682b      	ldr	r3, [r5, #0]
d0202b4c:	b903      	cbnz	r3, d0202b50 <__sflush_r+0x7c>
d0202b4e:	6560      	str	r0, [r4, #84]	; 0x54
d0202b50:	6b61      	ldr	r1, [r4, #52]	; 0x34
d0202b52:	602f      	str	r7, [r5, #0]
d0202b54:	2900      	cmp	r1, #0
d0202b56:	d0ca      	beq.n	d0202aee <__sflush_r+0x1a>
d0202b58:	f104 0344 	add.w	r3, r4, #68	; 0x44
d0202b5c:	4299      	cmp	r1, r3
d0202b5e:	d002      	beq.n	d0202b66 <__sflush_r+0x92>
d0202b60:	4628      	mov	r0, r5
d0202b62:	f7ff fcdf 	bl	d0202524 <_free_r>
d0202b66:	2000      	movs	r0, #0
d0202b68:	6360      	str	r0, [r4, #52]	; 0x34
d0202b6a:	e7c1      	b.n	d0202af0 <__sflush_r+0x1c>
d0202b6c:	6a21      	ldr	r1, [r4, #32]
d0202b6e:	2301      	movs	r3, #1
d0202b70:	4628      	mov	r0, r5
d0202b72:	47b0      	blx	r6
d0202b74:	1c41      	adds	r1, r0, #1
d0202b76:	d1c7      	bne.n	d0202b08 <__sflush_r+0x34>
d0202b78:	682b      	ldr	r3, [r5, #0]
d0202b7a:	2b00      	cmp	r3, #0
d0202b7c:	d0c4      	beq.n	d0202b08 <__sflush_r+0x34>
d0202b7e:	2b1d      	cmp	r3, #29
d0202b80:	d001      	beq.n	d0202b86 <__sflush_r+0xb2>
d0202b82:	2b16      	cmp	r3, #22
d0202b84:	d101      	bne.n	d0202b8a <__sflush_r+0xb6>
d0202b86:	602f      	str	r7, [r5, #0]
d0202b88:	e7b1      	b.n	d0202aee <__sflush_r+0x1a>
d0202b8a:	89a3      	ldrh	r3, [r4, #12]
d0202b8c:	f043 0340 	orr.w	r3, r3, #64	; 0x40
d0202b90:	81a3      	strh	r3, [r4, #12]
d0202b92:	e7ad      	b.n	d0202af0 <__sflush_r+0x1c>
d0202b94:	690f      	ldr	r7, [r1, #16]
d0202b96:	2f00      	cmp	r7, #0
d0202b98:	d0a9      	beq.n	d0202aee <__sflush_r+0x1a>
d0202b9a:	0793      	lsls	r3, r2, #30
d0202b9c:	680e      	ldr	r6, [r1, #0]
d0202b9e:	bf08      	it	eq
d0202ba0:	694b      	ldreq	r3, [r1, #20]
d0202ba2:	600f      	str	r7, [r1, #0]
d0202ba4:	bf18      	it	ne
d0202ba6:	2300      	movne	r3, #0
d0202ba8:	eba6 0807 	sub.w	r8, r6, r7
d0202bac:	608b      	str	r3, [r1, #8]
d0202bae:	f1b8 0f00 	cmp.w	r8, #0
d0202bb2:	dd9c      	ble.n	d0202aee <__sflush_r+0x1a>
d0202bb4:	6a21      	ldr	r1, [r4, #32]
d0202bb6:	6aa6      	ldr	r6, [r4, #40]	; 0x28
d0202bb8:	4643      	mov	r3, r8
d0202bba:	463a      	mov	r2, r7
d0202bbc:	4628      	mov	r0, r5
d0202bbe:	47b0      	blx	r6
d0202bc0:	2800      	cmp	r0, #0
d0202bc2:	dc06      	bgt.n	d0202bd2 <__sflush_r+0xfe>
d0202bc4:	89a3      	ldrh	r3, [r4, #12]
d0202bc6:	f043 0340 	orr.w	r3, r3, #64	; 0x40
d0202bca:	81a3      	strh	r3, [r4, #12]
d0202bcc:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d0202bd0:	e78e      	b.n	d0202af0 <__sflush_r+0x1c>
d0202bd2:	4407      	add	r7, r0
d0202bd4:	eba8 0800 	sub.w	r8, r8, r0
d0202bd8:	e7e9      	b.n	d0202bae <__sflush_r+0xda>
d0202bda:	bf00      	nop
d0202bdc:	20400001 	.word	0x20400001

d0202be0 <_fflush_r>:
d0202be0:	b538      	push	{r3, r4, r5, lr}
d0202be2:	690b      	ldr	r3, [r1, #16]
d0202be4:	4605      	mov	r5, r0
d0202be6:	460c      	mov	r4, r1
d0202be8:	b913      	cbnz	r3, d0202bf0 <_fflush_r+0x10>
d0202bea:	2500      	movs	r5, #0
d0202bec:	4628      	mov	r0, r5
d0202bee:	bd38      	pop	{r3, r4, r5, pc}
d0202bf0:	b118      	cbz	r0, d0202bfa <_fflush_r+0x1a>
d0202bf2:	6983      	ldr	r3, [r0, #24]
d0202bf4:	b90b      	cbnz	r3, d0202bfa <_fflush_r+0x1a>
d0202bf6:	f000 f887 	bl	d0202d08 <__sinit>
d0202bfa:	4b14      	ldr	r3, [pc, #80]	; (d0202c4c <_fflush_r+0x6c>)
d0202bfc:	429c      	cmp	r4, r3
d0202bfe:	d11b      	bne.n	d0202c38 <_fflush_r+0x58>
d0202c00:	686c      	ldr	r4, [r5, #4]
d0202c02:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
d0202c06:	2b00      	cmp	r3, #0
d0202c08:	d0ef      	beq.n	d0202bea <_fflush_r+0xa>
d0202c0a:	6e62      	ldr	r2, [r4, #100]	; 0x64
d0202c0c:	07d0      	lsls	r0, r2, #31
d0202c0e:	d404      	bmi.n	d0202c1a <_fflush_r+0x3a>
d0202c10:	0599      	lsls	r1, r3, #22
d0202c12:	d402      	bmi.n	d0202c1a <_fflush_r+0x3a>
d0202c14:	6da0      	ldr	r0, [r4, #88]	; 0x58
d0202c16:	f000 f915 	bl	d0202e44 <__retarget_lock_acquire_recursive>
d0202c1a:	4628      	mov	r0, r5
d0202c1c:	4621      	mov	r1, r4
d0202c1e:	f7ff ff59 	bl	d0202ad4 <__sflush_r>
d0202c22:	6e63      	ldr	r3, [r4, #100]	; 0x64
d0202c24:	07da      	lsls	r2, r3, #31
d0202c26:	4605      	mov	r5, r0
d0202c28:	d4e0      	bmi.n	d0202bec <_fflush_r+0xc>
d0202c2a:	89a3      	ldrh	r3, [r4, #12]
d0202c2c:	059b      	lsls	r3, r3, #22
d0202c2e:	d4dd      	bmi.n	d0202bec <_fflush_r+0xc>
d0202c30:	6da0      	ldr	r0, [r4, #88]	; 0x58
d0202c32:	f000 f908 	bl	d0202e46 <__retarget_lock_release_recursive>
d0202c36:	e7d9      	b.n	d0202bec <_fflush_r+0xc>
d0202c38:	4b05      	ldr	r3, [pc, #20]	; (d0202c50 <_fflush_r+0x70>)
d0202c3a:	429c      	cmp	r4, r3
d0202c3c:	d101      	bne.n	d0202c42 <_fflush_r+0x62>
d0202c3e:	68ac      	ldr	r4, [r5, #8]
d0202c40:	e7df      	b.n	d0202c02 <_fflush_r+0x22>
d0202c42:	4b04      	ldr	r3, [pc, #16]	; (d0202c54 <_fflush_r+0x74>)
d0202c44:	429c      	cmp	r4, r3
d0202c46:	bf08      	it	eq
d0202c48:	68ec      	ldreq	r4, [r5, #12]
d0202c4a:	e7da      	b.n	d0202c02 <_fflush_r+0x22>
d0202c4c:	d020388c 	.word	0xd020388c
d0202c50:	d02038ac 	.word	0xd02038ac
d0202c54:	d020386c 	.word	0xd020386c

d0202c58 <std>:
d0202c58:	2300      	movs	r3, #0
d0202c5a:	b510      	push	{r4, lr}
d0202c5c:	4604      	mov	r4, r0
d0202c5e:	e9c0 3300 	strd	r3, r3, [r0]
d0202c62:	e9c0 3304 	strd	r3, r3, [r0, #16]
d0202c66:	6083      	str	r3, [r0, #8]
d0202c68:	8181      	strh	r1, [r0, #12]
d0202c6a:	6643      	str	r3, [r0, #100]	; 0x64
d0202c6c:	81c2      	strh	r2, [r0, #14]
d0202c6e:	6183      	str	r3, [r0, #24]
d0202c70:	4619      	mov	r1, r3
d0202c72:	2208      	movs	r2, #8
d0202c74:	305c      	adds	r0, #92	; 0x5c
d0202c76:	f7ff fc4d 	bl	d0202514 <memset>
d0202c7a:	4b05      	ldr	r3, [pc, #20]	; (d0202c90 <std+0x38>)
d0202c7c:	6263      	str	r3, [r4, #36]	; 0x24
d0202c7e:	4b05      	ldr	r3, [pc, #20]	; (d0202c94 <std+0x3c>)
d0202c80:	62a3      	str	r3, [r4, #40]	; 0x28
d0202c82:	4b05      	ldr	r3, [pc, #20]	; (d0202c98 <std+0x40>)
d0202c84:	62e3      	str	r3, [r4, #44]	; 0x2c
d0202c86:	4b05      	ldr	r3, [pc, #20]	; (d0202c9c <std+0x44>)
d0202c88:	6224      	str	r4, [r4, #32]
d0202c8a:	6323      	str	r3, [r4, #48]	; 0x30
d0202c8c:	bd10      	pop	{r4, pc}
d0202c8e:	bf00      	nop
d0202c90:	d0203505 	.word	0xd0203505
d0202c94:	d0203527 	.word	0xd0203527
d0202c98:	d020355f 	.word	0xd020355f
d0202c9c:	d0203583 	.word	0xd0203583

d0202ca0 <_cleanup_r>:
d0202ca0:	4901      	ldr	r1, [pc, #4]	; (d0202ca8 <_cleanup_r+0x8>)
d0202ca2:	f000 b8af 	b.w	d0202e04 <_fwalk_reent>
d0202ca6:	bf00      	nop
d0202ca8:	d0202be1 	.word	0xd0202be1

d0202cac <__sfmoreglue>:
d0202cac:	b570      	push	{r4, r5, r6, lr}
d0202cae:	1e4a      	subs	r2, r1, #1
d0202cb0:	2568      	movs	r5, #104	; 0x68
d0202cb2:	4355      	muls	r5, r2
d0202cb4:	460e      	mov	r6, r1
d0202cb6:	f105 0174 	add.w	r1, r5, #116	; 0x74
d0202cba:	f7ff fc83 	bl	d02025c4 <_malloc_r>
d0202cbe:	4604      	mov	r4, r0
d0202cc0:	b140      	cbz	r0, d0202cd4 <__sfmoreglue+0x28>
d0202cc2:	2100      	movs	r1, #0
d0202cc4:	e9c0 1600 	strd	r1, r6, [r0]
d0202cc8:	300c      	adds	r0, #12
d0202cca:	60a0      	str	r0, [r4, #8]
d0202ccc:	f105 0268 	add.w	r2, r5, #104	; 0x68
d0202cd0:	f7ff fc20 	bl	d0202514 <memset>
d0202cd4:	4620      	mov	r0, r4
d0202cd6:	bd70      	pop	{r4, r5, r6, pc}

d0202cd8 <__sfp_lock_acquire>:
d0202cd8:	4801      	ldr	r0, [pc, #4]	; (d0202ce0 <__sfp_lock_acquire+0x8>)
d0202cda:	f000 b8b3 	b.w	d0202e44 <__retarget_lock_acquire_recursive>
d0202cde:	bf00      	nop
d0202ce0:	d020518c 	.word	0xd020518c

d0202ce4 <__sfp_lock_release>:
d0202ce4:	4801      	ldr	r0, [pc, #4]	; (d0202cec <__sfp_lock_release+0x8>)
d0202ce6:	f000 b8ae 	b.w	d0202e46 <__retarget_lock_release_recursive>
d0202cea:	bf00      	nop
d0202cec:	d020518c 	.word	0xd020518c

d0202cf0 <__sinit_lock_acquire>:
d0202cf0:	4801      	ldr	r0, [pc, #4]	; (d0202cf8 <__sinit_lock_acquire+0x8>)
d0202cf2:	f000 b8a7 	b.w	d0202e44 <__retarget_lock_acquire_recursive>
d0202cf6:	bf00      	nop
d0202cf8:	d0205187 	.word	0xd0205187

d0202cfc <__sinit_lock_release>:
d0202cfc:	4801      	ldr	r0, [pc, #4]	; (d0202d04 <__sinit_lock_release+0x8>)
d0202cfe:	f000 b8a2 	b.w	d0202e46 <__retarget_lock_release_recursive>
d0202d02:	bf00      	nop
d0202d04:	d0205187 	.word	0xd0205187

d0202d08 <__sinit>:
d0202d08:	b510      	push	{r4, lr}
d0202d0a:	4604      	mov	r4, r0
d0202d0c:	f7ff fff0 	bl	d0202cf0 <__sinit_lock_acquire>
d0202d10:	69a3      	ldr	r3, [r4, #24]
d0202d12:	b11b      	cbz	r3, d0202d1c <__sinit+0x14>
d0202d14:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
d0202d18:	f7ff bff0 	b.w	d0202cfc <__sinit_lock_release>
d0202d1c:	e9c4 3312 	strd	r3, r3, [r4, #72]	; 0x48
d0202d20:	6523      	str	r3, [r4, #80]	; 0x50
d0202d22:	4b13      	ldr	r3, [pc, #76]	; (d0202d70 <__sinit+0x68>)
d0202d24:	4a13      	ldr	r2, [pc, #76]	; (d0202d74 <__sinit+0x6c>)
d0202d26:	681b      	ldr	r3, [r3, #0]
d0202d28:	62a2      	str	r2, [r4, #40]	; 0x28
d0202d2a:	42a3      	cmp	r3, r4
d0202d2c:	bf04      	itt	eq
d0202d2e:	2301      	moveq	r3, #1
d0202d30:	61a3      	streq	r3, [r4, #24]
d0202d32:	4620      	mov	r0, r4
d0202d34:	f000 f820 	bl	d0202d78 <__sfp>
d0202d38:	6060      	str	r0, [r4, #4]
d0202d3a:	4620      	mov	r0, r4
d0202d3c:	f000 f81c 	bl	d0202d78 <__sfp>
d0202d40:	60a0      	str	r0, [r4, #8]
d0202d42:	4620      	mov	r0, r4
d0202d44:	f000 f818 	bl	d0202d78 <__sfp>
d0202d48:	2200      	movs	r2, #0
d0202d4a:	60e0      	str	r0, [r4, #12]
d0202d4c:	2104      	movs	r1, #4
d0202d4e:	6860      	ldr	r0, [r4, #4]
d0202d50:	f7ff ff82 	bl	d0202c58 <std>
d0202d54:	68a0      	ldr	r0, [r4, #8]
d0202d56:	2201      	movs	r2, #1
d0202d58:	2109      	movs	r1, #9
d0202d5a:	f7ff ff7d 	bl	d0202c58 <std>
d0202d5e:	68e0      	ldr	r0, [r4, #12]
d0202d60:	2202      	movs	r2, #2
d0202d62:	2112      	movs	r1, #18
d0202d64:	f7ff ff78 	bl	d0202c58 <std>
d0202d68:	2301      	movs	r3, #1
d0202d6a:	61a3      	str	r3, [r4, #24]
d0202d6c:	e7d2      	b.n	d0202d14 <__sinit+0xc>
d0202d6e:	bf00      	nop
d0202d70:	d0203868 	.word	0xd0203868
d0202d74:	d0202ca1 	.word	0xd0202ca1

d0202d78 <__sfp>:
d0202d78:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d0202d7a:	4607      	mov	r7, r0
d0202d7c:	f7ff ffac 	bl	d0202cd8 <__sfp_lock_acquire>
d0202d80:	4b1e      	ldr	r3, [pc, #120]	; (d0202dfc <__sfp+0x84>)
d0202d82:	681e      	ldr	r6, [r3, #0]
d0202d84:	69b3      	ldr	r3, [r6, #24]
d0202d86:	b913      	cbnz	r3, d0202d8e <__sfp+0x16>
d0202d88:	4630      	mov	r0, r6
d0202d8a:	f7ff ffbd 	bl	d0202d08 <__sinit>
d0202d8e:	3648      	adds	r6, #72	; 0x48
d0202d90:	e9d6 3401 	ldrd	r3, r4, [r6, #4]
d0202d94:	3b01      	subs	r3, #1
d0202d96:	d503      	bpl.n	d0202da0 <__sfp+0x28>
d0202d98:	6833      	ldr	r3, [r6, #0]
d0202d9a:	b30b      	cbz	r3, d0202de0 <__sfp+0x68>
d0202d9c:	6836      	ldr	r6, [r6, #0]
d0202d9e:	e7f7      	b.n	d0202d90 <__sfp+0x18>
d0202da0:	f9b4 500c 	ldrsh.w	r5, [r4, #12]
d0202da4:	b9d5      	cbnz	r5, d0202ddc <__sfp+0x64>
d0202da6:	4b16      	ldr	r3, [pc, #88]	; (d0202e00 <__sfp+0x88>)
d0202da8:	60e3      	str	r3, [r4, #12]
d0202daa:	f104 0058 	add.w	r0, r4, #88	; 0x58
d0202dae:	6665      	str	r5, [r4, #100]	; 0x64
d0202db0:	f000 f847 	bl	d0202e42 <__retarget_lock_init_recursive>
d0202db4:	f7ff ff96 	bl	d0202ce4 <__sfp_lock_release>
d0202db8:	e9c4 5501 	strd	r5, r5, [r4, #4]
d0202dbc:	e9c4 5504 	strd	r5, r5, [r4, #16]
d0202dc0:	6025      	str	r5, [r4, #0]
d0202dc2:	61a5      	str	r5, [r4, #24]
d0202dc4:	2208      	movs	r2, #8
d0202dc6:	4629      	mov	r1, r5
d0202dc8:	f104 005c 	add.w	r0, r4, #92	; 0x5c
d0202dcc:	f7ff fba2 	bl	d0202514 <memset>
d0202dd0:	e9c4 550d 	strd	r5, r5, [r4, #52]	; 0x34
d0202dd4:	e9c4 5512 	strd	r5, r5, [r4, #72]	; 0x48
d0202dd8:	4620      	mov	r0, r4
d0202dda:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d0202ddc:	3468      	adds	r4, #104	; 0x68
d0202dde:	e7d9      	b.n	d0202d94 <__sfp+0x1c>
d0202de0:	2104      	movs	r1, #4
d0202de2:	4638      	mov	r0, r7
d0202de4:	f7ff ff62 	bl	d0202cac <__sfmoreglue>
d0202de8:	4604      	mov	r4, r0
d0202dea:	6030      	str	r0, [r6, #0]
d0202dec:	2800      	cmp	r0, #0
d0202dee:	d1d5      	bne.n	d0202d9c <__sfp+0x24>
d0202df0:	f7ff ff78 	bl	d0202ce4 <__sfp_lock_release>
d0202df4:	230c      	movs	r3, #12
d0202df6:	603b      	str	r3, [r7, #0]
d0202df8:	e7ee      	b.n	d0202dd8 <__sfp+0x60>
d0202dfa:	bf00      	nop
d0202dfc:	d0203868 	.word	0xd0203868
d0202e00:	ffff0001 	.word	0xffff0001

d0202e04 <_fwalk_reent>:
d0202e04:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
d0202e08:	4606      	mov	r6, r0
d0202e0a:	4688      	mov	r8, r1
d0202e0c:	f100 0448 	add.w	r4, r0, #72	; 0x48
d0202e10:	2700      	movs	r7, #0
d0202e12:	e9d4 9501 	ldrd	r9, r5, [r4, #4]
d0202e16:	f1b9 0901 	subs.w	r9, r9, #1
d0202e1a:	d505      	bpl.n	d0202e28 <_fwalk_reent+0x24>
d0202e1c:	6824      	ldr	r4, [r4, #0]
d0202e1e:	2c00      	cmp	r4, #0
d0202e20:	d1f7      	bne.n	d0202e12 <_fwalk_reent+0xe>
d0202e22:	4638      	mov	r0, r7
d0202e24:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
d0202e28:	89ab      	ldrh	r3, [r5, #12]
d0202e2a:	2b01      	cmp	r3, #1
d0202e2c:	d907      	bls.n	d0202e3e <_fwalk_reent+0x3a>
d0202e2e:	f9b5 300e 	ldrsh.w	r3, [r5, #14]
d0202e32:	3301      	adds	r3, #1
d0202e34:	d003      	beq.n	d0202e3e <_fwalk_reent+0x3a>
d0202e36:	4629      	mov	r1, r5
d0202e38:	4630      	mov	r0, r6
d0202e3a:	47c0      	blx	r8
d0202e3c:	4307      	orrs	r7, r0
d0202e3e:	3568      	adds	r5, #104	; 0x68
d0202e40:	e7e9      	b.n	d0202e16 <_fwalk_reent+0x12>

d0202e42 <__retarget_lock_init_recursive>:
d0202e42:	4770      	bx	lr

d0202e44 <__retarget_lock_acquire_recursive>:
d0202e44:	4770      	bx	lr

d0202e46 <__retarget_lock_release_recursive>:
d0202e46:	4770      	bx	lr

d0202e48 <__swhatbuf_r>:
d0202e48:	b570      	push	{r4, r5, r6, lr}
d0202e4a:	460e      	mov	r6, r1
d0202e4c:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d0202e50:	2900      	cmp	r1, #0
d0202e52:	b096      	sub	sp, #88	; 0x58
d0202e54:	4614      	mov	r4, r2
d0202e56:	461d      	mov	r5, r3
d0202e58:	da07      	bge.n	d0202e6a <__swhatbuf_r+0x22>
d0202e5a:	2300      	movs	r3, #0
d0202e5c:	602b      	str	r3, [r5, #0]
d0202e5e:	89b3      	ldrh	r3, [r6, #12]
d0202e60:	061a      	lsls	r2, r3, #24
d0202e62:	d410      	bmi.n	d0202e86 <__swhatbuf_r+0x3e>
d0202e64:	f44f 6380 	mov.w	r3, #1024	; 0x400
d0202e68:	e00e      	b.n	d0202e88 <__swhatbuf_r+0x40>
d0202e6a:	466a      	mov	r2, sp
d0202e6c:	f000 fb9e 	bl	d02035ac <_fstat_r>
d0202e70:	2800      	cmp	r0, #0
d0202e72:	dbf2      	blt.n	d0202e5a <__swhatbuf_r+0x12>
d0202e74:	9a01      	ldr	r2, [sp, #4]
d0202e76:	f402 4270 	and.w	r2, r2, #61440	; 0xf000
d0202e7a:	f5a2 5300 	sub.w	r3, r2, #8192	; 0x2000
d0202e7e:	425a      	negs	r2, r3
d0202e80:	415a      	adcs	r2, r3
d0202e82:	602a      	str	r2, [r5, #0]
d0202e84:	e7ee      	b.n	d0202e64 <__swhatbuf_r+0x1c>
d0202e86:	2340      	movs	r3, #64	; 0x40
d0202e88:	2000      	movs	r0, #0
d0202e8a:	6023      	str	r3, [r4, #0]
d0202e8c:	b016      	add	sp, #88	; 0x58
d0202e8e:	bd70      	pop	{r4, r5, r6, pc}

d0202e90 <__smakebuf_r>:
d0202e90:	898b      	ldrh	r3, [r1, #12]
d0202e92:	b573      	push	{r0, r1, r4, r5, r6, lr}
d0202e94:	079d      	lsls	r5, r3, #30
d0202e96:	4606      	mov	r6, r0
d0202e98:	460c      	mov	r4, r1
d0202e9a:	d507      	bpl.n	d0202eac <__smakebuf_r+0x1c>
d0202e9c:	f104 0347 	add.w	r3, r4, #71	; 0x47
d0202ea0:	6023      	str	r3, [r4, #0]
d0202ea2:	6123      	str	r3, [r4, #16]
d0202ea4:	2301      	movs	r3, #1
d0202ea6:	6163      	str	r3, [r4, #20]
d0202ea8:	b002      	add	sp, #8
d0202eaa:	bd70      	pop	{r4, r5, r6, pc}
d0202eac:	ab01      	add	r3, sp, #4
d0202eae:	466a      	mov	r2, sp
d0202eb0:	f7ff ffca 	bl	d0202e48 <__swhatbuf_r>
d0202eb4:	9900      	ldr	r1, [sp, #0]
d0202eb6:	4605      	mov	r5, r0
d0202eb8:	4630      	mov	r0, r6
d0202eba:	f7ff fb83 	bl	d02025c4 <_malloc_r>
d0202ebe:	b948      	cbnz	r0, d0202ed4 <__smakebuf_r+0x44>
d0202ec0:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
d0202ec4:	059a      	lsls	r2, r3, #22
d0202ec6:	d4ef      	bmi.n	d0202ea8 <__smakebuf_r+0x18>
d0202ec8:	f023 0303 	bic.w	r3, r3, #3
d0202ecc:	f043 0302 	orr.w	r3, r3, #2
d0202ed0:	81a3      	strh	r3, [r4, #12]
d0202ed2:	e7e3      	b.n	d0202e9c <__smakebuf_r+0xc>
d0202ed4:	4b0d      	ldr	r3, [pc, #52]	; (d0202f0c <__smakebuf_r+0x7c>)
d0202ed6:	62b3      	str	r3, [r6, #40]	; 0x28
d0202ed8:	89a3      	ldrh	r3, [r4, #12]
d0202eda:	6020      	str	r0, [r4, #0]
d0202edc:	f043 0380 	orr.w	r3, r3, #128	; 0x80
d0202ee0:	81a3      	strh	r3, [r4, #12]
d0202ee2:	9b00      	ldr	r3, [sp, #0]
d0202ee4:	6163      	str	r3, [r4, #20]
d0202ee6:	9b01      	ldr	r3, [sp, #4]
d0202ee8:	6120      	str	r0, [r4, #16]
d0202eea:	b15b      	cbz	r3, d0202f04 <__smakebuf_r+0x74>
d0202eec:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
d0202ef0:	4630      	mov	r0, r6
d0202ef2:	f000 fb6d 	bl	d02035d0 <_isatty_r>
d0202ef6:	b128      	cbz	r0, d0202f04 <__smakebuf_r+0x74>
d0202ef8:	89a3      	ldrh	r3, [r4, #12]
d0202efa:	f023 0303 	bic.w	r3, r3, #3
d0202efe:	f043 0301 	orr.w	r3, r3, #1
d0202f02:	81a3      	strh	r3, [r4, #12]
d0202f04:	89a0      	ldrh	r0, [r4, #12]
d0202f06:	4305      	orrs	r5, r0
d0202f08:	81a5      	strh	r5, [r4, #12]
d0202f0a:	e7cd      	b.n	d0202ea8 <__smakebuf_r+0x18>
d0202f0c:	d0202ca1 	.word	0xd0202ca1

d0202f10 <__malloc_lock>:
d0202f10:	4801      	ldr	r0, [pc, #4]	; (d0202f18 <__malloc_lock+0x8>)
d0202f12:	f7ff bf97 	b.w	d0202e44 <__retarget_lock_acquire_recursive>
d0202f16:	bf00      	nop
d0202f18:	d0205188 	.word	0xd0205188

d0202f1c <__malloc_unlock>:
d0202f1c:	4801      	ldr	r0, [pc, #4]	; (d0202f24 <__malloc_unlock+0x8>)
d0202f1e:	f7ff bf92 	b.w	d0202e46 <__retarget_lock_release_recursive>
d0202f22:	bf00      	nop
d0202f24:	d0205188 	.word	0xd0205188

d0202f28 <__sfputc_r>:
d0202f28:	6893      	ldr	r3, [r2, #8]
d0202f2a:	3b01      	subs	r3, #1
d0202f2c:	2b00      	cmp	r3, #0
d0202f2e:	b410      	push	{r4}
d0202f30:	6093      	str	r3, [r2, #8]
d0202f32:	da08      	bge.n	d0202f46 <__sfputc_r+0x1e>
d0202f34:	6994      	ldr	r4, [r2, #24]
d0202f36:	42a3      	cmp	r3, r4
d0202f38:	db01      	blt.n	d0202f3e <__sfputc_r+0x16>
d0202f3a:	290a      	cmp	r1, #10
d0202f3c:	d103      	bne.n	d0202f46 <__sfputc_r+0x1e>
d0202f3e:	f85d 4b04 	ldr.w	r4, [sp], #4
d0202f42:	f7ff bd07 	b.w	d0202954 <__swbuf_r>
d0202f46:	6813      	ldr	r3, [r2, #0]
d0202f48:	1c58      	adds	r0, r3, #1
d0202f4a:	6010      	str	r0, [r2, #0]
d0202f4c:	7019      	strb	r1, [r3, #0]
d0202f4e:	4608      	mov	r0, r1
d0202f50:	f85d 4b04 	ldr.w	r4, [sp], #4
d0202f54:	4770      	bx	lr

d0202f56 <__sfputs_r>:
d0202f56:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d0202f58:	4606      	mov	r6, r0
d0202f5a:	460f      	mov	r7, r1
d0202f5c:	4614      	mov	r4, r2
d0202f5e:	18d5      	adds	r5, r2, r3
d0202f60:	42ac      	cmp	r4, r5
d0202f62:	d101      	bne.n	d0202f68 <__sfputs_r+0x12>
d0202f64:	2000      	movs	r0, #0
d0202f66:	e007      	b.n	d0202f78 <__sfputs_r+0x22>
d0202f68:	f814 1b01 	ldrb.w	r1, [r4], #1
d0202f6c:	463a      	mov	r2, r7
d0202f6e:	4630      	mov	r0, r6
d0202f70:	f7ff ffda 	bl	d0202f28 <__sfputc_r>
d0202f74:	1c43      	adds	r3, r0, #1
d0202f76:	d1f3      	bne.n	d0202f60 <__sfputs_r+0xa>
d0202f78:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
	...

d0202f7c <_vfiprintf_r>:
d0202f7c:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0202f80:	460d      	mov	r5, r1
d0202f82:	b09d      	sub	sp, #116	; 0x74
d0202f84:	4614      	mov	r4, r2
d0202f86:	4698      	mov	r8, r3
d0202f88:	4606      	mov	r6, r0
d0202f8a:	b118      	cbz	r0, d0202f94 <_vfiprintf_r+0x18>
d0202f8c:	6983      	ldr	r3, [r0, #24]
d0202f8e:	b90b      	cbnz	r3, d0202f94 <_vfiprintf_r+0x18>
d0202f90:	f7ff feba 	bl	d0202d08 <__sinit>
d0202f94:	4b89      	ldr	r3, [pc, #548]	; (d02031bc <_vfiprintf_r+0x240>)
d0202f96:	429d      	cmp	r5, r3
d0202f98:	d11b      	bne.n	d0202fd2 <_vfiprintf_r+0x56>
d0202f9a:	6875      	ldr	r5, [r6, #4]
d0202f9c:	6e6b      	ldr	r3, [r5, #100]	; 0x64
d0202f9e:	07d9      	lsls	r1, r3, #31
d0202fa0:	d405      	bmi.n	d0202fae <_vfiprintf_r+0x32>
d0202fa2:	89ab      	ldrh	r3, [r5, #12]
d0202fa4:	059a      	lsls	r2, r3, #22
d0202fa6:	d402      	bmi.n	d0202fae <_vfiprintf_r+0x32>
d0202fa8:	6da8      	ldr	r0, [r5, #88]	; 0x58
d0202faa:	f7ff ff4b 	bl	d0202e44 <__retarget_lock_acquire_recursive>
d0202fae:	89ab      	ldrh	r3, [r5, #12]
d0202fb0:	071b      	lsls	r3, r3, #28
d0202fb2:	d501      	bpl.n	d0202fb8 <_vfiprintf_r+0x3c>
d0202fb4:	692b      	ldr	r3, [r5, #16]
d0202fb6:	b9eb      	cbnz	r3, d0202ff4 <_vfiprintf_r+0x78>
d0202fb8:	4629      	mov	r1, r5
d0202fba:	4630      	mov	r0, r6
d0202fbc:	f7ff fd1c 	bl	d02029f8 <__swsetup_r>
d0202fc0:	b1c0      	cbz	r0, d0202ff4 <_vfiprintf_r+0x78>
d0202fc2:	6e6b      	ldr	r3, [r5, #100]	; 0x64
d0202fc4:	07dc      	lsls	r4, r3, #31
d0202fc6:	d50e      	bpl.n	d0202fe6 <_vfiprintf_r+0x6a>
d0202fc8:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d0202fcc:	b01d      	add	sp, #116	; 0x74
d0202fce:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0202fd2:	4b7b      	ldr	r3, [pc, #492]	; (d02031c0 <_vfiprintf_r+0x244>)
d0202fd4:	429d      	cmp	r5, r3
d0202fd6:	d101      	bne.n	d0202fdc <_vfiprintf_r+0x60>
d0202fd8:	68b5      	ldr	r5, [r6, #8]
d0202fda:	e7df      	b.n	d0202f9c <_vfiprintf_r+0x20>
d0202fdc:	4b79      	ldr	r3, [pc, #484]	; (d02031c4 <_vfiprintf_r+0x248>)
d0202fde:	429d      	cmp	r5, r3
d0202fe0:	bf08      	it	eq
d0202fe2:	68f5      	ldreq	r5, [r6, #12]
d0202fe4:	e7da      	b.n	d0202f9c <_vfiprintf_r+0x20>
d0202fe6:	89ab      	ldrh	r3, [r5, #12]
d0202fe8:	0598      	lsls	r0, r3, #22
d0202fea:	d4ed      	bmi.n	d0202fc8 <_vfiprintf_r+0x4c>
d0202fec:	6da8      	ldr	r0, [r5, #88]	; 0x58
d0202fee:	f7ff ff2a 	bl	d0202e46 <__retarget_lock_release_recursive>
d0202ff2:	e7e9      	b.n	d0202fc8 <_vfiprintf_r+0x4c>
d0202ff4:	2300      	movs	r3, #0
d0202ff6:	9309      	str	r3, [sp, #36]	; 0x24
d0202ff8:	2320      	movs	r3, #32
d0202ffa:	f88d 3029 	strb.w	r3, [sp, #41]	; 0x29
d0202ffe:	f8cd 800c 	str.w	r8, [sp, #12]
d0203002:	2330      	movs	r3, #48	; 0x30
d0203004:	f8df 81c0 	ldr.w	r8, [pc, #448]	; d02031c8 <_vfiprintf_r+0x24c>
d0203008:	f88d 302a 	strb.w	r3, [sp, #42]	; 0x2a
d020300c:	f04f 0901 	mov.w	r9, #1
d0203010:	4623      	mov	r3, r4
d0203012:	469a      	mov	sl, r3
d0203014:	f813 2b01 	ldrb.w	r2, [r3], #1
d0203018:	b10a      	cbz	r2, d020301e <_vfiprintf_r+0xa2>
d020301a:	2a25      	cmp	r2, #37	; 0x25
d020301c:	d1f9      	bne.n	d0203012 <_vfiprintf_r+0x96>
d020301e:	ebba 0b04 	subs.w	fp, sl, r4
d0203022:	d00b      	beq.n	d020303c <_vfiprintf_r+0xc0>
d0203024:	465b      	mov	r3, fp
d0203026:	4622      	mov	r2, r4
d0203028:	4629      	mov	r1, r5
d020302a:	4630      	mov	r0, r6
d020302c:	f7ff ff93 	bl	d0202f56 <__sfputs_r>
d0203030:	3001      	adds	r0, #1
d0203032:	f000 80aa 	beq.w	d020318a <_vfiprintf_r+0x20e>
d0203036:	9a09      	ldr	r2, [sp, #36]	; 0x24
d0203038:	445a      	add	r2, fp
d020303a:	9209      	str	r2, [sp, #36]	; 0x24
d020303c:	f89a 3000 	ldrb.w	r3, [sl]
d0203040:	2b00      	cmp	r3, #0
d0203042:	f000 80a2 	beq.w	d020318a <_vfiprintf_r+0x20e>
d0203046:	2300      	movs	r3, #0
d0203048:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
d020304c:	e9cd 2305 	strd	r2, r3, [sp, #20]
d0203050:	f10a 0a01 	add.w	sl, sl, #1
d0203054:	9304      	str	r3, [sp, #16]
d0203056:	9307      	str	r3, [sp, #28]
d0203058:	f88d 3053 	strb.w	r3, [sp, #83]	; 0x53
d020305c:	931a      	str	r3, [sp, #104]	; 0x68
d020305e:	4654      	mov	r4, sl
d0203060:	2205      	movs	r2, #5
d0203062:	f814 1b01 	ldrb.w	r1, [r4], #1
d0203066:	4858      	ldr	r0, [pc, #352]	; (d02031c8 <_vfiprintf_r+0x24c>)
d0203068:	f000 fada 	bl	d0203620 <memchr>
d020306c:	9a04      	ldr	r2, [sp, #16]
d020306e:	b9d8      	cbnz	r0, d02030a8 <_vfiprintf_r+0x12c>
d0203070:	06d1      	lsls	r1, r2, #27
d0203072:	bf44      	itt	mi
d0203074:	2320      	movmi	r3, #32
d0203076:	f88d 3053 	strbmi.w	r3, [sp, #83]	; 0x53
d020307a:	0713      	lsls	r3, r2, #28
d020307c:	bf44      	itt	mi
d020307e:	232b      	movmi	r3, #43	; 0x2b
d0203080:	f88d 3053 	strbmi.w	r3, [sp, #83]	; 0x53
d0203084:	f89a 3000 	ldrb.w	r3, [sl]
d0203088:	2b2a      	cmp	r3, #42	; 0x2a
d020308a:	d015      	beq.n	d02030b8 <_vfiprintf_r+0x13c>
d020308c:	9a07      	ldr	r2, [sp, #28]
d020308e:	4654      	mov	r4, sl
d0203090:	2000      	movs	r0, #0
d0203092:	f04f 0c0a 	mov.w	ip, #10
d0203096:	4621      	mov	r1, r4
d0203098:	f811 3b01 	ldrb.w	r3, [r1], #1
d020309c:	3b30      	subs	r3, #48	; 0x30
d020309e:	2b09      	cmp	r3, #9
d02030a0:	d94e      	bls.n	d0203140 <_vfiprintf_r+0x1c4>
d02030a2:	b1b0      	cbz	r0, d02030d2 <_vfiprintf_r+0x156>
d02030a4:	9207      	str	r2, [sp, #28]
d02030a6:	e014      	b.n	d02030d2 <_vfiprintf_r+0x156>
d02030a8:	eba0 0308 	sub.w	r3, r0, r8
d02030ac:	fa09 f303 	lsl.w	r3, r9, r3
d02030b0:	4313      	orrs	r3, r2
d02030b2:	9304      	str	r3, [sp, #16]
d02030b4:	46a2      	mov	sl, r4
d02030b6:	e7d2      	b.n	d020305e <_vfiprintf_r+0xe2>
d02030b8:	9b03      	ldr	r3, [sp, #12]
d02030ba:	1d19      	adds	r1, r3, #4
d02030bc:	681b      	ldr	r3, [r3, #0]
d02030be:	9103      	str	r1, [sp, #12]
d02030c0:	2b00      	cmp	r3, #0
d02030c2:	bfbb      	ittet	lt
d02030c4:	425b      	neglt	r3, r3
d02030c6:	f042 0202 	orrlt.w	r2, r2, #2
d02030ca:	9307      	strge	r3, [sp, #28]
d02030cc:	9307      	strlt	r3, [sp, #28]
d02030ce:	bfb8      	it	lt
d02030d0:	9204      	strlt	r2, [sp, #16]
d02030d2:	7823      	ldrb	r3, [r4, #0]
d02030d4:	2b2e      	cmp	r3, #46	; 0x2e
d02030d6:	d10c      	bne.n	d02030f2 <_vfiprintf_r+0x176>
d02030d8:	7863      	ldrb	r3, [r4, #1]
d02030da:	2b2a      	cmp	r3, #42	; 0x2a
d02030dc:	d135      	bne.n	d020314a <_vfiprintf_r+0x1ce>
d02030de:	9b03      	ldr	r3, [sp, #12]
d02030e0:	1d1a      	adds	r2, r3, #4
d02030e2:	681b      	ldr	r3, [r3, #0]
d02030e4:	9203      	str	r2, [sp, #12]
d02030e6:	2b00      	cmp	r3, #0
d02030e8:	bfb8      	it	lt
d02030ea:	f04f 33ff 	movlt.w	r3, #4294967295	; 0xffffffff
d02030ee:	3402      	adds	r4, #2
d02030f0:	9305      	str	r3, [sp, #20]
d02030f2:	f8df a0e4 	ldr.w	sl, [pc, #228]	; d02031d8 <_vfiprintf_r+0x25c>
d02030f6:	7821      	ldrb	r1, [r4, #0]
d02030f8:	2203      	movs	r2, #3
d02030fa:	4650      	mov	r0, sl
d02030fc:	f000 fa90 	bl	d0203620 <memchr>
d0203100:	b140      	cbz	r0, d0203114 <_vfiprintf_r+0x198>
d0203102:	2340      	movs	r3, #64	; 0x40
d0203104:	eba0 000a 	sub.w	r0, r0, sl
d0203108:	fa03 f000 	lsl.w	r0, r3, r0
d020310c:	9b04      	ldr	r3, [sp, #16]
d020310e:	4303      	orrs	r3, r0
d0203110:	3401      	adds	r4, #1
d0203112:	9304      	str	r3, [sp, #16]
d0203114:	f814 1b01 	ldrb.w	r1, [r4], #1
d0203118:	482c      	ldr	r0, [pc, #176]	; (d02031cc <_vfiprintf_r+0x250>)
d020311a:	f88d 1028 	strb.w	r1, [sp, #40]	; 0x28
d020311e:	2206      	movs	r2, #6
d0203120:	f000 fa7e 	bl	d0203620 <memchr>
d0203124:	2800      	cmp	r0, #0
d0203126:	d03f      	beq.n	d02031a8 <_vfiprintf_r+0x22c>
d0203128:	4b29      	ldr	r3, [pc, #164]	; (d02031d0 <_vfiprintf_r+0x254>)
d020312a:	bb1b      	cbnz	r3, d0203174 <_vfiprintf_r+0x1f8>
d020312c:	9b03      	ldr	r3, [sp, #12]
d020312e:	3307      	adds	r3, #7
d0203130:	f023 0307 	bic.w	r3, r3, #7
d0203134:	3308      	adds	r3, #8
d0203136:	9303      	str	r3, [sp, #12]
d0203138:	9b09      	ldr	r3, [sp, #36]	; 0x24
d020313a:	443b      	add	r3, r7
d020313c:	9309      	str	r3, [sp, #36]	; 0x24
d020313e:	e767      	b.n	d0203010 <_vfiprintf_r+0x94>
d0203140:	fb0c 3202 	mla	r2, ip, r2, r3
d0203144:	460c      	mov	r4, r1
d0203146:	2001      	movs	r0, #1
d0203148:	e7a5      	b.n	d0203096 <_vfiprintf_r+0x11a>
d020314a:	2300      	movs	r3, #0
d020314c:	3401      	adds	r4, #1
d020314e:	9305      	str	r3, [sp, #20]
d0203150:	4619      	mov	r1, r3
d0203152:	f04f 0c0a 	mov.w	ip, #10
d0203156:	4620      	mov	r0, r4
d0203158:	f810 2b01 	ldrb.w	r2, [r0], #1
d020315c:	3a30      	subs	r2, #48	; 0x30
d020315e:	2a09      	cmp	r2, #9
d0203160:	d903      	bls.n	d020316a <_vfiprintf_r+0x1ee>
d0203162:	2b00      	cmp	r3, #0
d0203164:	d0c5      	beq.n	d02030f2 <_vfiprintf_r+0x176>
d0203166:	9105      	str	r1, [sp, #20]
d0203168:	e7c3      	b.n	d02030f2 <_vfiprintf_r+0x176>
d020316a:	fb0c 2101 	mla	r1, ip, r1, r2
d020316e:	4604      	mov	r4, r0
d0203170:	2301      	movs	r3, #1
d0203172:	e7f0      	b.n	d0203156 <_vfiprintf_r+0x1da>
d0203174:	ab03      	add	r3, sp, #12
d0203176:	9300      	str	r3, [sp, #0]
d0203178:	462a      	mov	r2, r5
d020317a:	4b16      	ldr	r3, [pc, #88]	; (d02031d4 <_vfiprintf_r+0x258>)
d020317c:	a904      	add	r1, sp, #16
d020317e:	4630      	mov	r0, r6
d0203180:	f3af 8000 	nop.w
d0203184:	4607      	mov	r7, r0
d0203186:	1c78      	adds	r0, r7, #1
d0203188:	d1d6      	bne.n	d0203138 <_vfiprintf_r+0x1bc>
d020318a:	6e6b      	ldr	r3, [r5, #100]	; 0x64
d020318c:	07d9      	lsls	r1, r3, #31
d020318e:	d405      	bmi.n	d020319c <_vfiprintf_r+0x220>
d0203190:	89ab      	ldrh	r3, [r5, #12]
d0203192:	059a      	lsls	r2, r3, #22
d0203194:	d402      	bmi.n	d020319c <_vfiprintf_r+0x220>
d0203196:	6da8      	ldr	r0, [r5, #88]	; 0x58
d0203198:	f7ff fe55 	bl	d0202e46 <__retarget_lock_release_recursive>
d020319c:	89ab      	ldrh	r3, [r5, #12]
d020319e:	065b      	lsls	r3, r3, #25
d02031a0:	f53f af12 	bmi.w	d0202fc8 <_vfiprintf_r+0x4c>
d02031a4:	9809      	ldr	r0, [sp, #36]	; 0x24
d02031a6:	e711      	b.n	d0202fcc <_vfiprintf_r+0x50>
d02031a8:	ab03      	add	r3, sp, #12
d02031aa:	9300      	str	r3, [sp, #0]
d02031ac:	462a      	mov	r2, r5
d02031ae:	4b09      	ldr	r3, [pc, #36]	; (d02031d4 <_vfiprintf_r+0x258>)
d02031b0:	a904      	add	r1, sp, #16
d02031b2:	4630      	mov	r0, r6
d02031b4:	f000 f880 	bl	d02032b8 <_printf_i>
d02031b8:	e7e4      	b.n	d0203184 <_vfiprintf_r+0x208>
d02031ba:	bf00      	nop
d02031bc:	d020388c 	.word	0xd020388c
d02031c0:	d02038ac 	.word	0xd02038ac
d02031c4:	d020386c 	.word	0xd020386c
d02031c8:	d02038cc 	.word	0xd02038cc
d02031cc:	d02038d6 	.word	0xd02038d6
d02031d0:	00000000 	.word	0x00000000
d02031d4:	d0202f57 	.word	0xd0202f57
d02031d8:	d02038d2 	.word	0xd02038d2

d02031dc <_printf_common>:
d02031dc:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
d02031e0:	4616      	mov	r6, r2
d02031e2:	4699      	mov	r9, r3
d02031e4:	688a      	ldr	r2, [r1, #8]
d02031e6:	690b      	ldr	r3, [r1, #16]
d02031e8:	f8dd 8020 	ldr.w	r8, [sp, #32]
d02031ec:	4293      	cmp	r3, r2
d02031ee:	bfb8      	it	lt
d02031f0:	4613      	movlt	r3, r2
d02031f2:	6033      	str	r3, [r6, #0]
d02031f4:	f891 2043 	ldrb.w	r2, [r1, #67]	; 0x43
d02031f8:	4607      	mov	r7, r0
d02031fa:	460c      	mov	r4, r1
d02031fc:	b10a      	cbz	r2, d0203202 <_printf_common+0x26>
d02031fe:	3301      	adds	r3, #1
d0203200:	6033      	str	r3, [r6, #0]
d0203202:	6823      	ldr	r3, [r4, #0]
d0203204:	0699      	lsls	r1, r3, #26
d0203206:	bf42      	ittt	mi
d0203208:	6833      	ldrmi	r3, [r6, #0]
d020320a:	3302      	addmi	r3, #2
d020320c:	6033      	strmi	r3, [r6, #0]
d020320e:	6825      	ldr	r5, [r4, #0]
d0203210:	f015 0506 	ands.w	r5, r5, #6
d0203214:	d106      	bne.n	d0203224 <_printf_common+0x48>
d0203216:	f104 0a19 	add.w	sl, r4, #25
d020321a:	68e3      	ldr	r3, [r4, #12]
d020321c:	6832      	ldr	r2, [r6, #0]
d020321e:	1a9b      	subs	r3, r3, r2
d0203220:	42ab      	cmp	r3, r5
d0203222:	dc26      	bgt.n	d0203272 <_printf_common+0x96>
d0203224:	f894 2043 	ldrb.w	r2, [r4, #67]	; 0x43
d0203228:	1e13      	subs	r3, r2, #0
d020322a:	6822      	ldr	r2, [r4, #0]
d020322c:	bf18      	it	ne
d020322e:	2301      	movne	r3, #1
d0203230:	0692      	lsls	r2, r2, #26
d0203232:	d42b      	bmi.n	d020328c <_printf_common+0xb0>
d0203234:	f104 0243 	add.w	r2, r4, #67	; 0x43
d0203238:	4649      	mov	r1, r9
d020323a:	4638      	mov	r0, r7
d020323c:	47c0      	blx	r8
d020323e:	3001      	adds	r0, #1
d0203240:	d01e      	beq.n	d0203280 <_printf_common+0xa4>
d0203242:	6823      	ldr	r3, [r4, #0]
d0203244:	68e5      	ldr	r5, [r4, #12]
d0203246:	6832      	ldr	r2, [r6, #0]
d0203248:	f003 0306 	and.w	r3, r3, #6
d020324c:	2b04      	cmp	r3, #4
d020324e:	bf08      	it	eq
d0203250:	1aad      	subeq	r5, r5, r2
d0203252:	68a3      	ldr	r3, [r4, #8]
d0203254:	6922      	ldr	r2, [r4, #16]
d0203256:	bf0c      	ite	eq
d0203258:	ea25 75e5 	biceq.w	r5, r5, r5, asr #31
d020325c:	2500      	movne	r5, #0
d020325e:	4293      	cmp	r3, r2
d0203260:	bfc4      	itt	gt
d0203262:	1a9b      	subgt	r3, r3, r2
d0203264:	18ed      	addgt	r5, r5, r3
d0203266:	2600      	movs	r6, #0
d0203268:	341a      	adds	r4, #26
d020326a:	42b5      	cmp	r5, r6
d020326c:	d11a      	bne.n	d02032a4 <_printf_common+0xc8>
d020326e:	2000      	movs	r0, #0
d0203270:	e008      	b.n	d0203284 <_printf_common+0xa8>
d0203272:	2301      	movs	r3, #1
d0203274:	4652      	mov	r2, sl
d0203276:	4649      	mov	r1, r9
d0203278:	4638      	mov	r0, r7
d020327a:	47c0      	blx	r8
d020327c:	3001      	adds	r0, #1
d020327e:	d103      	bne.n	d0203288 <_printf_common+0xac>
d0203280:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d0203284:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
d0203288:	3501      	adds	r5, #1
d020328a:	e7c6      	b.n	d020321a <_printf_common+0x3e>
d020328c:	18e1      	adds	r1, r4, r3
d020328e:	1c5a      	adds	r2, r3, #1
d0203290:	2030      	movs	r0, #48	; 0x30
d0203292:	f881 0043 	strb.w	r0, [r1, #67]	; 0x43
d0203296:	4422      	add	r2, r4
d0203298:	f894 1045 	ldrb.w	r1, [r4, #69]	; 0x45
d020329c:	f882 1043 	strb.w	r1, [r2, #67]	; 0x43
d02032a0:	3302      	adds	r3, #2
d02032a2:	e7c7      	b.n	d0203234 <_printf_common+0x58>
d02032a4:	2301      	movs	r3, #1
d02032a6:	4622      	mov	r2, r4
d02032a8:	4649      	mov	r1, r9
d02032aa:	4638      	mov	r0, r7
d02032ac:	47c0      	blx	r8
d02032ae:	3001      	adds	r0, #1
d02032b0:	d0e6      	beq.n	d0203280 <_printf_common+0xa4>
d02032b2:	3601      	adds	r6, #1
d02032b4:	e7d9      	b.n	d020326a <_printf_common+0x8e>
	...

d02032b8 <_printf_i>:
d02032b8:	e92d 47ff 	stmdb	sp!, {r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, lr}
d02032bc:	460c      	mov	r4, r1
d02032be:	4691      	mov	r9, r2
d02032c0:	7e27      	ldrb	r7, [r4, #24]
d02032c2:	990c      	ldr	r1, [sp, #48]	; 0x30
d02032c4:	2f78      	cmp	r7, #120	; 0x78
d02032c6:	4680      	mov	r8, r0
d02032c8:	469a      	mov	sl, r3
d02032ca:	f104 0243 	add.w	r2, r4, #67	; 0x43
d02032ce:	d807      	bhi.n	d02032e0 <_printf_i+0x28>
d02032d0:	2f62      	cmp	r7, #98	; 0x62
d02032d2:	d80a      	bhi.n	d02032ea <_printf_i+0x32>
d02032d4:	2f00      	cmp	r7, #0
d02032d6:	f000 80d8 	beq.w	d020348a <_printf_i+0x1d2>
d02032da:	2f58      	cmp	r7, #88	; 0x58
d02032dc:	f000 80a3 	beq.w	d0203426 <_printf_i+0x16e>
d02032e0:	f104 0642 	add.w	r6, r4, #66	; 0x42
d02032e4:	f884 7042 	strb.w	r7, [r4, #66]	; 0x42
d02032e8:	e03a      	b.n	d0203360 <_printf_i+0xa8>
d02032ea:	f1a7 0363 	sub.w	r3, r7, #99	; 0x63
d02032ee:	2b15      	cmp	r3, #21
d02032f0:	d8f6      	bhi.n	d02032e0 <_printf_i+0x28>
d02032f2:	a001      	add	r0, pc, #4	; (adr r0, d02032f8 <_printf_i+0x40>)
d02032f4:	f850 f023 	ldr.w	pc, [r0, r3, lsl #2]
d02032f8:	d0203351 	.word	0xd0203351
d02032fc:	d0203365 	.word	0xd0203365
d0203300:	d02032e1 	.word	0xd02032e1
d0203304:	d02032e1 	.word	0xd02032e1
d0203308:	d02032e1 	.word	0xd02032e1
d020330c:	d02032e1 	.word	0xd02032e1
d0203310:	d0203365 	.word	0xd0203365
d0203314:	d02032e1 	.word	0xd02032e1
d0203318:	d02032e1 	.word	0xd02032e1
d020331c:	d02032e1 	.word	0xd02032e1
d0203320:	d02032e1 	.word	0xd02032e1
d0203324:	d0203471 	.word	0xd0203471
d0203328:	d0203395 	.word	0xd0203395
d020332c:	d0203453 	.word	0xd0203453
d0203330:	d02032e1 	.word	0xd02032e1
d0203334:	d02032e1 	.word	0xd02032e1
d0203338:	d0203493 	.word	0xd0203493
d020333c:	d02032e1 	.word	0xd02032e1
d0203340:	d0203395 	.word	0xd0203395
d0203344:	d02032e1 	.word	0xd02032e1
d0203348:	d02032e1 	.word	0xd02032e1
d020334c:	d020345b 	.word	0xd020345b
d0203350:	680b      	ldr	r3, [r1, #0]
d0203352:	1d1a      	adds	r2, r3, #4
d0203354:	681b      	ldr	r3, [r3, #0]
d0203356:	600a      	str	r2, [r1, #0]
d0203358:	f104 0642 	add.w	r6, r4, #66	; 0x42
d020335c:	f884 3042 	strb.w	r3, [r4, #66]	; 0x42
d0203360:	2301      	movs	r3, #1
d0203362:	e0a3      	b.n	d02034ac <_printf_i+0x1f4>
d0203364:	6825      	ldr	r5, [r4, #0]
d0203366:	6808      	ldr	r0, [r1, #0]
d0203368:	062e      	lsls	r6, r5, #24
d020336a:	f100 0304 	add.w	r3, r0, #4
d020336e:	d50a      	bpl.n	d0203386 <_printf_i+0xce>
d0203370:	6805      	ldr	r5, [r0, #0]
d0203372:	600b      	str	r3, [r1, #0]
d0203374:	2d00      	cmp	r5, #0
d0203376:	da03      	bge.n	d0203380 <_printf_i+0xc8>
d0203378:	232d      	movs	r3, #45	; 0x2d
d020337a:	426d      	negs	r5, r5
d020337c:	f884 3043 	strb.w	r3, [r4, #67]	; 0x43
d0203380:	485e      	ldr	r0, [pc, #376]	; (d02034fc <_printf_i+0x244>)
d0203382:	230a      	movs	r3, #10
d0203384:	e019      	b.n	d02033ba <_printf_i+0x102>
d0203386:	f015 0f40 	tst.w	r5, #64	; 0x40
d020338a:	6805      	ldr	r5, [r0, #0]
d020338c:	600b      	str	r3, [r1, #0]
d020338e:	bf18      	it	ne
d0203390:	b22d      	sxthne	r5, r5
d0203392:	e7ef      	b.n	d0203374 <_printf_i+0xbc>
d0203394:	680b      	ldr	r3, [r1, #0]
d0203396:	6825      	ldr	r5, [r4, #0]
d0203398:	1d18      	adds	r0, r3, #4
d020339a:	6008      	str	r0, [r1, #0]
d020339c:	0628      	lsls	r0, r5, #24
d020339e:	d501      	bpl.n	d02033a4 <_printf_i+0xec>
d02033a0:	681d      	ldr	r5, [r3, #0]
d02033a2:	e002      	b.n	d02033aa <_printf_i+0xf2>
d02033a4:	0669      	lsls	r1, r5, #25
d02033a6:	d5fb      	bpl.n	d02033a0 <_printf_i+0xe8>
d02033a8:	881d      	ldrh	r5, [r3, #0]
d02033aa:	4854      	ldr	r0, [pc, #336]	; (d02034fc <_printf_i+0x244>)
d02033ac:	2f6f      	cmp	r7, #111	; 0x6f
d02033ae:	bf0c      	ite	eq
d02033b0:	2308      	moveq	r3, #8
d02033b2:	230a      	movne	r3, #10
d02033b4:	2100      	movs	r1, #0
d02033b6:	f884 1043 	strb.w	r1, [r4, #67]	; 0x43
d02033ba:	6866      	ldr	r6, [r4, #4]
d02033bc:	60a6      	str	r6, [r4, #8]
d02033be:	2e00      	cmp	r6, #0
d02033c0:	bfa2      	ittt	ge
d02033c2:	6821      	ldrge	r1, [r4, #0]
d02033c4:	f021 0104 	bicge.w	r1, r1, #4
d02033c8:	6021      	strge	r1, [r4, #0]
d02033ca:	b90d      	cbnz	r5, d02033d0 <_printf_i+0x118>
d02033cc:	2e00      	cmp	r6, #0
d02033ce:	d04d      	beq.n	d020346c <_printf_i+0x1b4>
d02033d0:	4616      	mov	r6, r2
d02033d2:	fbb5 f1f3 	udiv	r1, r5, r3
d02033d6:	fb03 5711 	mls	r7, r3, r1, r5
d02033da:	5dc7      	ldrb	r7, [r0, r7]
d02033dc:	f806 7d01 	strb.w	r7, [r6, #-1]!
d02033e0:	462f      	mov	r7, r5
d02033e2:	42bb      	cmp	r3, r7
d02033e4:	460d      	mov	r5, r1
d02033e6:	d9f4      	bls.n	d02033d2 <_printf_i+0x11a>
d02033e8:	2b08      	cmp	r3, #8
d02033ea:	d10b      	bne.n	d0203404 <_printf_i+0x14c>
d02033ec:	6823      	ldr	r3, [r4, #0]
d02033ee:	07df      	lsls	r7, r3, #31
d02033f0:	d508      	bpl.n	d0203404 <_printf_i+0x14c>
d02033f2:	6923      	ldr	r3, [r4, #16]
d02033f4:	6861      	ldr	r1, [r4, #4]
d02033f6:	4299      	cmp	r1, r3
d02033f8:	bfde      	ittt	le
d02033fa:	2330      	movle	r3, #48	; 0x30
d02033fc:	f806 3c01 	strble.w	r3, [r6, #-1]
d0203400:	f106 36ff 	addle.w	r6, r6, #4294967295	; 0xffffffff
d0203404:	1b92      	subs	r2, r2, r6
d0203406:	6122      	str	r2, [r4, #16]
d0203408:	f8cd a000 	str.w	sl, [sp]
d020340c:	464b      	mov	r3, r9
d020340e:	aa03      	add	r2, sp, #12
d0203410:	4621      	mov	r1, r4
d0203412:	4640      	mov	r0, r8
d0203414:	f7ff fee2 	bl	d02031dc <_printf_common>
d0203418:	3001      	adds	r0, #1
d020341a:	d14c      	bne.n	d02034b6 <_printf_i+0x1fe>
d020341c:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d0203420:	b004      	add	sp, #16
d0203422:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
d0203426:	4835      	ldr	r0, [pc, #212]	; (d02034fc <_printf_i+0x244>)
d0203428:	f884 7045 	strb.w	r7, [r4, #69]	; 0x45
d020342c:	6823      	ldr	r3, [r4, #0]
d020342e:	680e      	ldr	r6, [r1, #0]
d0203430:	061f      	lsls	r7, r3, #24
d0203432:	f856 5b04 	ldr.w	r5, [r6], #4
d0203436:	600e      	str	r6, [r1, #0]
d0203438:	d514      	bpl.n	d0203464 <_printf_i+0x1ac>
d020343a:	07d9      	lsls	r1, r3, #31
d020343c:	bf44      	itt	mi
d020343e:	f043 0320 	orrmi.w	r3, r3, #32
d0203442:	6023      	strmi	r3, [r4, #0]
d0203444:	b91d      	cbnz	r5, d020344e <_printf_i+0x196>
d0203446:	6823      	ldr	r3, [r4, #0]
d0203448:	f023 0320 	bic.w	r3, r3, #32
d020344c:	6023      	str	r3, [r4, #0]
d020344e:	2310      	movs	r3, #16
d0203450:	e7b0      	b.n	d02033b4 <_printf_i+0xfc>
d0203452:	6823      	ldr	r3, [r4, #0]
d0203454:	f043 0320 	orr.w	r3, r3, #32
d0203458:	6023      	str	r3, [r4, #0]
d020345a:	2378      	movs	r3, #120	; 0x78
d020345c:	4828      	ldr	r0, [pc, #160]	; (d0203500 <_printf_i+0x248>)
d020345e:	f884 3045 	strb.w	r3, [r4, #69]	; 0x45
d0203462:	e7e3      	b.n	d020342c <_printf_i+0x174>
d0203464:	065e      	lsls	r6, r3, #25
d0203466:	bf48      	it	mi
d0203468:	b2ad      	uxthmi	r5, r5
d020346a:	e7e6      	b.n	d020343a <_printf_i+0x182>
d020346c:	4616      	mov	r6, r2
d020346e:	e7bb      	b.n	d02033e8 <_printf_i+0x130>
d0203470:	680b      	ldr	r3, [r1, #0]
d0203472:	6826      	ldr	r6, [r4, #0]
d0203474:	6960      	ldr	r0, [r4, #20]
d0203476:	1d1d      	adds	r5, r3, #4
d0203478:	600d      	str	r5, [r1, #0]
d020347a:	0635      	lsls	r5, r6, #24
d020347c:	681b      	ldr	r3, [r3, #0]
d020347e:	d501      	bpl.n	d0203484 <_printf_i+0x1cc>
d0203480:	6018      	str	r0, [r3, #0]
d0203482:	e002      	b.n	d020348a <_printf_i+0x1d2>
d0203484:	0671      	lsls	r1, r6, #25
d0203486:	d5fb      	bpl.n	d0203480 <_printf_i+0x1c8>
d0203488:	8018      	strh	r0, [r3, #0]
d020348a:	2300      	movs	r3, #0
d020348c:	6123      	str	r3, [r4, #16]
d020348e:	4616      	mov	r6, r2
d0203490:	e7ba      	b.n	d0203408 <_printf_i+0x150>
d0203492:	680b      	ldr	r3, [r1, #0]
d0203494:	1d1a      	adds	r2, r3, #4
d0203496:	600a      	str	r2, [r1, #0]
d0203498:	681e      	ldr	r6, [r3, #0]
d020349a:	6862      	ldr	r2, [r4, #4]
d020349c:	2100      	movs	r1, #0
d020349e:	4630      	mov	r0, r6
d02034a0:	f000 f8be 	bl	d0203620 <memchr>
d02034a4:	b108      	cbz	r0, d02034aa <_printf_i+0x1f2>
d02034a6:	1b80      	subs	r0, r0, r6
d02034a8:	6060      	str	r0, [r4, #4]
d02034aa:	6863      	ldr	r3, [r4, #4]
d02034ac:	6123      	str	r3, [r4, #16]
d02034ae:	2300      	movs	r3, #0
d02034b0:	f884 3043 	strb.w	r3, [r4, #67]	; 0x43
d02034b4:	e7a8      	b.n	d0203408 <_printf_i+0x150>
d02034b6:	6923      	ldr	r3, [r4, #16]
d02034b8:	4632      	mov	r2, r6
d02034ba:	4649      	mov	r1, r9
d02034bc:	4640      	mov	r0, r8
d02034be:	47d0      	blx	sl
d02034c0:	3001      	adds	r0, #1
d02034c2:	d0ab      	beq.n	d020341c <_printf_i+0x164>
d02034c4:	6823      	ldr	r3, [r4, #0]
d02034c6:	079b      	lsls	r3, r3, #30
d02034c8:	d413      	bmi.n	d02034f2 <_printf_i+0x23a>
d02034ca:	68e0      	ldr	r0, [r4, #12]
d02034cc:	9b03      	ldr	r3, [sp, #12]
d02034ce:	4298      	cmp	r0, r3
d02034d0:	bfb8      	it	lt
d02034d2:	4618      	movlt	r0, r3
d02034d4:	e7a4      	b.n	d0203420 <_printf_i+0x168>
d02034d6:	2301      	movs	r3, #1
d02034d8:	4632      	mov	r2, r6
d02034da:	4649      	mov	r1, r9
d02034dc:	4640      	mov	r0, r8
d02034de:	47d0      	blx	sl
d02034e0:	3001      	adds	r0, #1
d02034e2:	d09b      	beq.n	d020341c <_printf_i+0x164>
d02034e4:	3501      	adds	r5, #1
d02034e6:	68e3      	ldr	r3, [r4, #12]
d02034e8:	9903      	ldr	r1, [sp, #12]
d02034ea:	1a5b      	subs	r3, r3, r1
d02034ec:	42ab      	cmp	r3, r5
d02034ee:	dcf2      	bgt.n	d02034d6 <_printf_i+0x21e>
d02034f0:	e7eb      	b.n	d02034ca <_printf_i+0x212>
d02034f2:	2500      	movs	r5, #0
d02034f4:	f104 0619 	add.w	r6, r4, #25
d02034f8:	e7f5      	b.n	d02034e6 <_printf_i+0x22e>
d02034fa:	bf00      	nop
d02034fc:	d02038dd 	.word	0xd02038dd
d0203500:	d02038ee 	.word	0xd02038ee

d0203504 <__sread>:
d0203504:	b510      	push	{r4, lr}
d0203506:	460c      	mov	r4, r1
d0203508:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d020350c:	f000 f8d8 	bl	d02036c0 <_read_r>
d0203510:	2800      	cmp	r0, #0
d0203512:	bfab      	itete	ge
d0203514:	6d63      	ldrge	r3, [r4, #84]	; 0x54
d0203516:	89a3      	ldrhlt	r3, [r4, #12]
d0203518:	181b      	addge	r3, r3, r0
d020351a:	f423 5380 	biclt.w	r3, r3, #4096	; 0x1000
d020351e:	bfac      	ite	ge
d0203520:	6563      	strge	r3, [r4, #84]	; 0x54
d0203522:	81a3      	strhlt	r3, [r4, #12]
d0203524:	bd10      	pop	{r4, pc}

d0203526 <__swrite>:
d0203526:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
d020352a:	461f      	mov	r7, r3
d020352c:	898b      	ldrh	r3, [r1, #12]
d020352e:	05db      	lsls	r3, r3, #23
d0203530:	4605      	mov	r5, r0
d0203532:	460c      	mov	r4, r1
d0203534:	4616      	mov	r6, r2
d0203536:	d505      	bpl.n	d0203544 <__swrite+0x1e>
d0203538:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d020353c:	2302      	movs	r3, #2
d020353e:	2200      	movs	r2, #0
d0203540:	f000 f856 	bl	d02035f0 <_lseek_r>
d0203544:	89a3      	ldrh	r3, [r4, #12]
d0203546:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
d020354a:	f423 5380 	bic.w	r3, r3, #4096	; 0x1000
d020354e:	81a3      	strh	r3, [r4, #12]
d0203550:	4632      	mov	r2, r6
d0203552:	463b      	mov	r3, r7
d0203554:	4628      	mov	r0, r5
d0203556:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
d020355a:	f7fc bd7b 	b.w	d0200054 <_write_r>

d020355e <__sseek>:
d020355e:	b510      	push	{r4, lr}
d0203560:	460c      	mov	r4, r1
d0203562:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d0203566:	f000 f843 	bl	d02035f0 <_lseek_r>
d020356a:	1c43      	adds	r3, r0, #1
d020356c:	89a3      	ldrh	r3, [r4, #12]
d020356e:	bf15      	itete	ne
d0203570:	6560      	strne	r0, [r4, #84]	; 0x54
d0203572:	f423 5380 	biceq.w	r3, r3, #4096	; 0x1000
d0203576:	f443 5380 	orrne.w	r3, r3, #4096	; 0x1000
d020357a:	81a3      	strheq	r3, [r4, #12]
d020357c:	bf18      	it	ne
d020357e:	81a3      	strhne	r3, [r4, #12]
d0203580:	bd10      	pop	{r4, pc}

d0203582 <__sclose>:
d0203582:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d0203586:	f000 b801 	b.w	d020358c <_close_r>
	...

d020358c <_close_r>:
d020358c:	b538      	push	{r3, r4, r5, lr}
d020358e:	4d06      	ldr	r5, [pc, #24]	; (d02035a8 <_close_r+0x1c>)
d0203590:	2300      	movs	r3, #0
d0203592:	4604      	mov	r4, r0
d0203594:	4608      	mov	r0, r1
d0203596:	602b      	str	r3, [r5, #0]
d0203598:	f7fc fd96 	bl	d02000c8 <_close>
d020359c:	1c43      	adds	r3, r0, #1
d020359e:	d102      	bne.n	d02035a6 <_close_r+0x1a>
d02035a0:	682b      	ldr	r3, [r5, #0]
d02035a2:	b103      	cbz	r3, d02035a6 <_close_r+0x1a>
d02035a4:	6023      	str	r3, [r4, #0]
d02035a6:	bd38      	pop	{r3, r4, r5, pc}
d02035a8:	d0205190 	.word	0xd0205190

d02035ac <_fstat_r>:
d02035ac:	b538      	push	{r3, r4, r5, lr}
d02035ae:	4d07      	ldr	r5, [pc, #28]	; (d02035cc <_fstat_r+0x20>)
d02035b0:	2300      	movs	r3, #0
d02035b2:	4604      	mov	r4, r0
d02035b4:	4608      	mov	r0, r1
d02035b6:	4611      	mov	r1, r2
d02035b8:	602b      	str	r3, [r5, #0]
d02035ba:	f7fc fd89 	bl	d02000d0 <_fstat>
d02035be:	1c43      	adds	r3, r0, #1
d02035c0:	d102      	bne.n	d02035c8 <_fstat_r+0x1c>
d02035c2:	682b      	ldr	r3, [r5, #0]
d02035c4:	b103      	cbz	r3, d02035c8 <_fstat_r+0x1c>
d02035c6:	6023      	str	r3, [r4, #0]
d02035c8:	bd38      	pop	{r3, r4, r5, pc}
d02035ca:	bf00      	nop
d02035cc:	d0205190 	.word	0xd0205190

d02035d0 <_isatty_r>:
d02035d0:	b538      	push	{r3, r4, r5, lr}
d02035d2:	4d06      	ldr	r5, [pc, #24]	; (d02035ec <_isatty_r+0x1c>)
d02035d4:	2300      	movs	r3, #0
d02035d6:	4604      	mov	r4, r0
d02035d8:	4608      	mov	r0, r1
d02035da:	602b      	str	r3, [r5, #0]
d02035dc:	f7fc fda0 	bl	d0200120 <_isatty>
d02035e0:	1c43      	adds	r3, r0, #1
d02035e2:	d102      	bne.n	d02035ea <_isatty_r+0x1a>
d02035e4:	682b      	ldr	r3, [r5, #0]
d02035e6:	b103      	cbz	r3, d02035ea <_isatty_r+0x1a>
d02035e8:	6023      	str	r3, [r4, #0]
d02035ea:	bd38      	pop	{r3, r4, r5, pc}
d02035ec:	d0205190 	.word	0xd0205190

d02035f0 <_lseek_r>:
d02035f0:	b538      	push	{r3, r4, r5, lr}
d02035f2:	4d07      	ldr	r5, [pc, #28]	; (d0203610 <_lseek_r+0x20>)
d02035f4:	4604      	mov	r4, r0
d02035f6:	4608      	mov	r0, r1
d02035f8:	4611      	mov	r1, r2
d02035fa:	2200      	movs	r2, #0
d02035fc:	602a      	str	r2, [r5, #0]
d02035fe:	461a      	mov	r2, r3
d0203600:	f7fc fd6c 	bl	d02000dc <_lseek>
d0203604:	1c43      	adds	r3, r0, #1
d0203606:	d102      	bne.n	d020360e <_lseek_r+0x1e>
d0203608:	682b      	ldr	r3, [r5, #0]
d020360a:	b103      	cbz	r3, d020360e <_lseek_r+0x1e>
d020360c:	6023      	str	r3, [r4, #0]
d020360e:	bd38      	pop	{r3, r4, r5, pc}
d0203610:	d0205190 	.word	0xd0205190
	...

d0203620 <memchr>:
d0203620:	f001 01ff 	and.w	r1, r1, #255	; 0xff
d0203624:	2a10      	cmp	r2, #16
d0203626:	db2b      	blt.n	d0203680 <memchr+0x60>
d0203628:	f010 0f07 	tst.w	r0, #7
d020362c:	d008      	beq.n	d0203640 <memchr+0x20>
d020362e:	f810 3b01 	ldrb.w	r3, [r0], #1
d0203632:	3a01      	subs	r2, #1
d0203634:	428b      	cmp	r3, r1
d0203636:	d02d      	beq.n	d0203694 <memchr+0x74>
d0203638:	f010 0f07 	tst.w	r0, #7
d020363c:	b342      	cbz	r2, d0203690 <memchr+0x70>
d020363e:	d1f6      	bne.n	d020362e <memchr+0xe>
d0203640:	b4f0      	push	{r4, r5, r6, r7}
d0203642:	ea41 2101 	orr.w	r1, r1, r1, lsl #8
d0203646:	ea41 4101 	orr.w	r1, r1, r1, lsl #16
d020364a:	f022 0407 	bic.w	r4, r2, #7
d020364e:	f07f 0700 	mvns.w	r7, #0
d0203652:	2300      	movs	r3, #0
d0203654:	e8f0 5602 	ldrd	r5, r6, [r0], #8
d0203658:	3c08      	subs	r4, #8
d020365a:	ea85 0501 	eor.w	r5, r5, r1
d020365e:	ea86 0601 	eor.w	r6, r6, r1
d0203662:	fa85 f547 	uadd8	r5, r5, r7
d0203666:	faa3 f587 	sel	r5, r3, r7
d020366a:	fa86 f647 	uadd8	r6, r6, r7
d020366e:	faa5 f687 	sel	r6, r5, r7
d0203672:	b98e      	cbnz	r6, d0203698 <memchr+0x78>
d0203674:	d1ee      	bne.n	d0203654 <memchr+0x34>
d0203676:	bcf0      	pop	{r4, r5, r6, r7}
d0203678:	f001 01ff 	and.w	r1, r1, #255	; 0xff
d020367c:	f002 0207 	and.w	r2, r2, #7
d0203680:	b132      	cbz	r2, d0203690 <memchr+0x70>
d0203682:	f810 3b01 	ldrb.w	r3, [r0], #1
d0203686:	3a01      	subs	r2, #1
d0203688:	ea83 0301 	eor.w	r3, r3, r1
d020368c:	b113      	cbz	r3, d0203694 <memchr+0x74>
d020368e:	d1f8      	bne.n	d0203682 <memchr+0x62>
d0203690:	2000      	movs	r0, #0
d0203692:	4770      	bx	lr
d0203694:	3801      	subs	r0, #1
d0203696:	4770      	bx	lr
d0203698:	2d00      	cmp	r5, #0
d020369a:	bf06      	itte	eq
d020369c:	4635      	moveq	r5, r6
d020369e:	3803      	subeq	r0, #3
d02036a0:	3807      	subne	r0, #7
d02036a2:	f015 0f01 	tst.w	r5, #1
d02036a6:	d107      	bne.n	d02036b8 <memchr+0x98>
d02036a8:	3001      	adds	r0, #1
d02036aa:	f415 7f80 	tst.w	r5, #256	; 0x100
d02036ae:	bf02      	ittt	eq
d02036b0:	3001      	addeq	r0, #1
d02036b2:	f415 3fc0 	tsteq.w	r5, #98304	; 0x18000
d02036b6:	3001      	addeq	r0, #1
d02036b8:	bcf0      	pop	{r4, r5, r6, r7}
d02036ba:	3801      	subs	r0, #1
d02036bc:	4770      	bx	lr
d02036be:	bf00      	nop

d02036c0 <_read_r>:
d02036c0:	b538      	push	{r3, r4, r5, lr}
d02036c2:	4d07      	ldr	r5, [pc, #28]	; (d02036e0 <_read_r+0x20>)
d02036c4:	4604      	mov	r4, r0
d02036c6:	4608      	mov	r0, r1
d02036c8:	4611      	mov	r1, r2
d02036ca:	2200      	movs	r2, #0
d02036cc:	602a      	str	r2, [r5, #0]
d02036ce:	461a      	mov	r2, r3
d02036d0:	f7fc fcf0 	bl	d02000b4 <_read>
d02036d4:	1c43      	adds	r3, r0, #1
d02036d6:	d102      	bne.n	d02036de <_read_r+0x1e>
d02036d8:	682b      	ldr	r3, [r5, #0]
d02036da:	b103      	cbz	r3, d02036de <_read_r+0x1e>
d02036dc:	6023      	str	r3, [r4, #0]
d02036de:	bd38      	pop	{r3, r4, r5, pc}
d02036e0:	d0205190 	.word	0xd0205190
d02036e4:	6964694d 	.word	0x6964694d
d02036e8:	73616c42 	.word	0x73616c42
d02036ec:	20726574 	.word	0x20726574
d02036f0:	342e3056 	.word	0x342e3056
d02036f4:	00000000 	.word	0x00000000
d02036f8:	68676972 	.word	0x68676972
d02036fc:	6c632074 	.word	0x6c632074
d0203700:	206b6369 	.word	0x206b6369
d0203704:	656c6572 	.word	0x656c6572
d0203708:	20657361 	.word	0x20657361
d020370c:	74697865 	.word	0x74697865
d0203710:	00000073 	.word	0x00000073
d0203714:	097f7ef0 	.word	0x097f7ef0
d0203718:	0000f701 	.word	0x0000f701
d020371c:	00400ab9 	.word	0x00400ab9
d0203720:	6c756f43 	.word	0x6c756f43
d0203724:	6f6e2064 	.word	0x6f6e2064
d0203728:	6c612074 	.word	0x6c612074
d020372c:	61636f6c 	.word	0x61636f6c
d0203730:	76206574 	.word	0x76206574
d0203734:	61757369 	.word	0x61757369
d0203738:	657a696c 	.word	0x657a696c
d020373c:	61622072 	.word	0x61622072
d0203740:	72676b63 	.word	0x72676b63
d0203744:	646e756f 	.word	0x646e756f
d0203748:	00000000 	.word	0x00000000
d020374c:	61722d2d 	.word	0x61722d2d
d0203750:	00000077 	.word	0x00000077
d0203754:	6d672d2d 	.word	0x6d672d2d
d0203758:	00000000 	.word	0x00000000
d020375c:	6f6e2d2d 	.word	0x6f6e2d2d
d0203760:	7273702d 	.word	0x7273702d
d0203764:	00003438 	.word	0x00003438
d0203768:	73702d2d 	.word	0x73702d2d
d020376c:	00343872 	.word	0x00343872
d0203770:	6964696d 	.word	0x6964696d
d0203774:	73616c62 	.word	0x73616c62
d0203778:	2e726574 	.word	0x2e726574
d020377c:	20707061 	.word	0x20707061
d0203780:	6c69663c 	.word	0x6c69663c
d0203784:	696d2e65 	.word	0x696d2e65
d0203788:	5b203e64 	.word	0x5b203e64
d020378c:	73702d2d 	.word	0x73702d2d
d0203790:	7c343872 	.word	0x7c343872
d0203794:	61722d2d 	.word	0x61722d2d
d0203798:	00005d77 	.word	0x00005d77
d020379c:	6c756f43 	.word	0x6c756f43
d02037a0:	6f6e2064 	.word	0x6f6e2064
d02037a4:	6f6c2074 	.word	0x6f6c2074
d02037a8:	4d206461 	.word	0x4d206461
d02037ac:	3a494449 	.word	0x3a494449
d02037b0:	0a732520 	.word	0x0a732520
d02037b4:	00000000 	.word	0x00000000
d02037b8:	75736e55 	.word	0x75736e55
d02037bc:	726f7070 	.word	0x726f7070
d02037c0:	20646574 	.word	0x20646574
d02037c4:	4944494d 	.word	0x4944494d
d02037c8:	7325203a 	.word	0x7325203a
d02037cc:	0000000a 	.word	0x0000000a
d02037d0:	6964694d 	.word	0x6964694d
d02037d4:	616c6220 	.word	0x616c6220
d02037d8:	72657473 	.word	0x72657473
d02037dc:	61747320 	.word	0x61747320
d02037e0:	64657472 	.word	0x64657472
d02037e4:	0000000a 	.word	0x0000000a

d02037e8 <psr84_gm_program_map>:
d02037e8:	02000000 07060303 29292809 262a2928     .........())()*&
d02037f8:	0c0c0a0a 11430f0a 18181d1f 171a1212     ......C.........
d0203808:	54525352 5d5a5755 5d222120 26482423     RSRTUWZ] !"]#$H&
d0203818:	4b4b2423 25454848 2c312f2b 4a343332     #$KKHHE%+/1,234J
d0203828:	3f3e3d3c 373b3a39 41423635 41444140     <=>?9:;756BA@ADA
d0203838:	494a4949 4c494a4c 4b4b5051 514f4e48     IIJILJILQPKKHNOQ
d0203848:	4d4f4e4d 4f4e4d51 261f2727 39204129     MNOMQMNO''.&)A 9
d0203858:	4c2a6109 634c6060 444d411a 5f634c09     .a*L``Lc.AMD.Lc_

d0203868 <_global_impure_ptr>:
d0203868:	d020394c                                L9 .

d020386c <__sf_fake_stderr>:
	...

d020388c <__sf_fake_stdin>:
	...

d02038ac <__sf_fake_stdout>:
	...
d02038cc:	2b302d23 6c680020 6665004c 47464567     #-0+ .hlL.efgEFG
d02038dc:	32313000 36353433 41393837 45444342     .0123456789ABCDE
d02038ec:	31300046 35343332 39383736 64636261     F.0123456789abcd
d02038fc:	                                         ef.

Disassembly of section .init:

d0203900 <_init>:
d0203900:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d0203902:	bf00      	nop

Disassembly of section .fini:

d0203904 <_fini>:
d0203904:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d0203906:	bf00      	nop

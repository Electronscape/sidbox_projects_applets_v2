
compiled/applet.elf:     file format elf32-littlearm


Disassembly of section .text:

d0040010 <applet_entry>:
d0040010:	b570      	push	{r4, r5, r6, lr}
d0040012:	4e09      	ldr	r6, [pc, #36]	; (d0040038 <applet_entry+0x28>)
d0040014:	460d      	mov	r5, r1
d0040016:	4604      	mov	r4, r0
d0040018:	2100      	movs	r1, #0
d004001a:	6833      	ldr	r3, [r6, #0]
d004001c:	6898      	ldr	r0, [r3, #8]
d004001e:	f004 fb8d 	bl	d004473c <setbuf>
d0040022:	6833      	ldr	r3, [r6, #0]
d0040024:	2100      	movs	r1, #0
d0040026:	68d8      	ldr	r0, [r3, #12]
d0040028:	f004 fb88 	bl	d004473c <setbuf>
d004002c:	4629      	mov	r1, r5
d004002e:	4620      	mov	r0, r4
d0040030:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
d0040034:	f001 bff4 	b.w	d0042020 <main>
d0040038:	d0046474 	.word	0xd0046474

d004003c <initMalloc>:
d004003c:	4902      	ldr	r1, [pc, #8]	; (d0040048 <initMalloc+0xc>)
d004003e:	4b03      	ldr	r3, [pc, #12]	; (d004004c <initMalloc+0x10>)
d0040040:	4a03      	ldr	r2, [pc, #12]	; (d0040050 <initMalloc+0x14>)
d0040042:	1a5b      	subs	r3, r3, r1
d0040044:	6013      	str	r3, [r2, #0]
d0040046:	4770      	bx	lr
d0040048:	d0049d00 	.word	0xd0049d00
d004004c:	d0600000 	.word	0xd0600000
d0040050:	d0047bc4 	.word	0xd0047bc4

d0040054 <_write_r>:
d0040054:	3901      	subs	r1, #1
d0040056:	2901      	cmp	r1, #1
d0040058:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d004005a:	d81f      	bhi.n	d004009c <_write_r+0x48>
d004005c:	b1e2      	cbz	r2, d0040098 <_write_r+0x44>
d004005e:	461c      	mov	r4, r3
d0040060:	b1d3      	cbz	r3, d0040098 <_write_r+0x44>
d0040062:	4d12      	ldr	r5, [pc, #72]	; (d00400ac <_write_r+0x58>)
d0040064:	682e      	ldr	r6, [r5, #0]
d0040066:	b9ae      	cbnz	r6, d0040094 <_write_r+0x40>
d0040068:	4f11      	ldr	r7, [pc, #68]	; (d00400b0 <_write_r+0x5c>)
d004006a:	2301      	movs	r3, #1
d004006c:	4611      	mov	r1, r2
d004006e:	4630      	mov	r0, r6
d0040070:	602b      	str	r3, [r5, #0]
d0040072:	4622      	mov	r2, r4
d0040074:	7a3b      	ldrb	r3, [r7, #8]
d0040076:	f897 c009 	ldrb.w	ip, [r7, #9]
d004007a:	ea43 230c 	orr.w	r3, r3, ip, lsl #8
d004007e:	f897 c00a 	ldrb.w	ip, [r7, #10]
d0040082:	7aff      	ldrb	r7, [r7, #11]
d0040084:	ea43 430c 	orr.w	r3, r3, ip, lsl #16
d0040088:	ea43 6307 	orr.w	r3, r3, r7, lsl #24
d004008c:	681b      	ldr	r3, [r3, #0]
d004008e:	685b      	ldr	r3, [r3, #4]
d0040090:	4798      	blx	r3
d0040092:	602e      	str	r6, [r5, #0]
d0040094:	4620      	mov	r0, r4
d0040096:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d0040098:	2000      	movs	r0, #0
d004009a:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d004009c:	f004 f9f8 	bl	d0044490 <__errno>
d00400a0:	2209      	movs	r2, #9
d00400a2:	4603      	mov	r3, r0
d00400a4:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d00400a8:	601a      	str	r2, [r3, #0]
d00400aa:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d00400ac:	d00464e4 	.word	0xd00464e4
d00400b0:	2001f000 	.word	0x2001f000

d00400b4 <_read>:
d00400b4:	b508      	push	{r3, lr}
d00400b6:	f004 f9eb 	bl	d0044490 <__errno>
d00400ba:	2258      	movs	r2, #88	; 0x58
d00400bc:	4603      	mov	r3, r0
d00400be:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d00400c2:	601a      	str	r2, [r3, #0]
d00400c4:	bd08      	pop	{r3, pc}
d00400c6:	bf00      	nop

d00400c8 <_close>:
d00400c8:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d00400cc:	4770      	bx	lr
d00400ce:	bf00      	nop

d00400d0 <_fstat>:
d00400d0:	f44f 5300 	mov.w	r3, #8192	; 0x2000
d00400d4:	2000      	movs	r0, #0
d00400d6:	604b      	str	r3, [r1, #4]
d00400d8:	4770      	bx	lr
d00400da:	bf00      	nop

d00400dc <_lseek>:
d00400dc:	2000      	movs	r0, #0
d00400de:	4770      	bx	lr

d00400e0 <_sbrk_r>:
d00400e0:	4b0c      	ldr	r3, [pc, #48]	; (d0040114 <_sbrk_r+0x34>)
d00400e2:	4a0d      	ldr	r2, [pc, #52]	; (d0040118 <_sbrk_r+0x38>)
d00400e4:	6818      	ldr	r0, [r3, #0]
d00400e6:	b510      	push	{r4, lr}
d00400e8:	b918      	cbnz	r0, d00400f2 <_sbrk_r+0x12>
d00400ea:	1dd0      	adds	r0, r2, #7
d00400ec:	f020 0007 	bic.w	r0, r0, #7
d00400f0:	6018      	str	r0, [r3, #0]
d00400f2:	4401      	add	r1, r0
d00400f4:	4c09      	ldr	r4, [pc, #36]	; (d004011c <_sbrk_r+0x3c>)
d00400f6:	42a1      	cmp	r1, r4
d00400f8:	d803      	bhi.n	d0040102 <_sbrk_r+0x22>
d00400fa:	4291      	cmp	r1, r2
d00400fc:	d301      	bcc.n	d0040102 <_sbrk_r+0x22>
d00400fe:	6019      	str	r1, [r3, #0]
d0040100:	bd10      	pop	{r4, pc}
d0040102:	f004 f9c5 	bl	d0044490 <__errno>
d0040106:	220c      	movs	r2, #12
d0040108:	4603      	mov	r3, r0
d004010a:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d004010e:	601a      	str	r2, [r3, #0]
d0040110:	bd10      	pop	{r4, pc}
d0040112:	bf00      	nop
d0040114:	d00464e0 	.word	0xd00464e0
d0040118:	d0049d00 	.word	0xd0049d00
d004011c:	d0600000 	.word	0xd0600000

d0040120 <_isatty>:
d0040120:	2001      	movs	r0, #1
d0040122:	4770      	bx	lr

d0040124 <draw_visualizer_front_base>:
d0040124:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
d0040128:	4ca6      	ldr	r4, [pc, #664]	; (d00403c4 <draw_visualizer_front_base+0x2a0>)
d004012a:	f04f 0900 	mov.w	r9, #0
d004012e:	f8df a2a4 	ldr.w	sl, [pc, #676]	; d00403d4 <draw_visualizer_front_base+0x2b0>
d0040132:	7b23      	ldrb	r3, [r4, #12]
d0040134:	46c8      	mov	r8, r9
d0040136:	7b62      	ldrb	r2, [r4, #13]
d0040138:	7ba1      	ldrb	r1, [r4, #14]
d004013a:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004013e:	7be2      	ldrb	r2, [r4, #15]
d0040140:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0040144:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0040148:	681b      	ldr	r3, [r3, #0]
d004014a:	699b      	ldr	r3, [r3, #24]
d004014c:	4798      	blx	r3
d004014e:	7b23      	ldrb	r3, [r4, #12]
d0040150:	7b62      	ldrb	r2, [r4, #13]
d0040152:	7ba1      	ldrb	r1, [r4, #14]
d0040154:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0040158:	7be2      	ldrb	r2, [r4, #15]
d004015a:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d004015e:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0040162:	685b      	ldr	r3, [r3, #4]
d0040164:	681b      	ldr	r3, [r3, #0]
d0040166:	4798      	blx	r3
d0040168:	7b23      	ldrb	r3, [r4, #12]
d004016a:	7b62      	ldrb	r2, [r4, #13]
d004016c:	2001      	movs	r0, #1
d004016e:	7ba1      	ldrb	r1, [r4, #14]
d0040170:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0040174:	7be2      	ldrb	r2, [r4, #15]
d0040176:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d004017a:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004017e:	685b      	ldr	r3, [r3, #4]
d0040180:	68db      	ldr	r3, [r3, #12]
d0040182:	4798      	blx	r3
d0040184:	7b25      	ldrb	r5, [r4, #12]
d0040186:	7b62      	ldrb	r2, [r4, #13]
d0040188:	4649      	mov	r1, r9
d004018a:	7ba0      	ldrb	r0, [r4, #14]
d004018c:	2318      	movs	r3, #24
d004018e:	ea45 2502 	orr.w	r5, r5, r2, lsl #8
d0040192:	7be2      	ldrb	r2, [r4, #15]
d0040194:	ea45 4500 	orr.w	r5, r5, r0, lsl #16
d0040198:	4648      	mov	r0, r9
d004019a:	ea45 6502 	orr.w	r5, r5, r2, lsl #24
d004019e:	f44f 72f0 	mov.w	r2, #480	; 0x1e0
d00401a2:	686d      	ldr	r5, [r5, #4]
d00401a4:	686d      	ldr	r5, [r5, #4]
d00401a6:	47a8      	blx	r5
d00401a8:	7b25      	ldrb	r5, [r4, #12]
d00401aa:	7b60      	ldrb	r0, [r4, #13]
d00401ac:	231c      	movs	r3, #28
d00401ae:	7ba1      	ldrb	r1, [r4, #14]
d00401b0:	f44f 72f0 	mov.w	r2, #480	; 0x1e0
d00401b4:	ea45 2500 	orr.w	r5, r5, r0, lsl #8
d00401b8:	7be0      	ldrb	r0, [r4, #15]
d00401ba:	ea45 4501 	orr.w	r5, r5, r1, lsl #16
d00401be:	f44f 7192 	mov.w	r1, #292	; 0x124
d00401c2:	ea45 6500 	orr.w	r5, r5, r0, lsl #24
d00401c6:	4648      	mov	r0, r9
d00401c8:	686d      	ldr	r5, [r5, #4]
d00401ca:	686d      	ldr	r5, [r5, #4]
d00401cc:	47a8      	blx	r5
d00401ce:	7b23      	ldrb	r3, [r4, #12]
d00401d0:	7b62      	ldrb	r2, [r4, #13]
d00401d2:	2004      	movs	r0, #4
d00401d4:	7ba1      	ldrb	r1, [r4, #14]
d00401d6:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d00401da:	7be2      	ldrb	r2, [r4, #15]
d00401dc:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d00401e0:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00401e4:	685b      	ldr	r3, [r3, #4]
d00401e6:	68db      	ldr	r3, [r3, #12]
d00401e8:	4798      	blx	r3
d00401ea:	7b23      	ldrb	r3, [r4, #12]
d00401ec:	7b65      	ldrb	r5, [r4, #13]
d00401ee:	2107      	movs	r1, #7
d00401f0:	7ba2      	ldrb	r2, [r4, #14]
d00401f2:	200a      	movs	r0, #10
d00401f4:	ea43 2305 	orr.w	r3, r3, r5, lsl #8
d00401f8:	7be5      	ldrb	r5, [r4, #15]
d00401fa:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d00401fe:	4a72      	ldr	r2, [pc, #456]	; (d00403c8 <draw_visualizer_front_base+0x2a4>)
d0040200:	ea43 6305 	orr.w	r3, r3, r5, lsl #24
d0040204:	685b      	ldr	r3, [r3, #4]
d0040206:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d0040208:	4798      	blx	r3
d004020a:	7b23      	ldrb	r3, [r4, #12]
d004020c:	7b62      	ldrb	r2, [r4, #13]
d004020e:	2005      	movs	r0, #5
d0040210:	7ba1      	ldrb	r1, [r4, #14]
d0040212:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0040216:	7be2      	ldrb	r2, [r4, #15]
d0040218:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d004021c:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0040220:	685b      	ldr	r3, [r3, #4]
d0040222:	68db      	ldr	r3, [r3, #12]
d0040224:	4798      	blx	r3
d0040226:	7b23      	ldrb	r3, [r4, #12]
d0040228:	7b65      	ldrb	r5, [r4, #13]
d004022a:	2107      	movs	r1, #7
d004022c:	7ba2      	ldrb	r2, [r4, #14]
d004022e:	f44f 7088 	mov.w	r0, #272	; 0x110
d0040232:	ea43 2305 	orr.w	r3, r3, r5, lsl #8
d0040236:	7be5      	ldrb	r5, [r4, #15]
d0040238:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d004023c:	4a63      	ldr	r2, [pc, #396]	; (d00403cc <draw_visualizer_front_base+0x2a8>)
d004023e:	ea43 6305 	orr.w	r3, r3, r5, lsl #24
d0040242:	685b      	ldr	r3, [r3, #4]
d0040244:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d0040246:	4798      	blx	r3
d0040248:	7b23      	ldrb	r3, [r4, #12]
d004024a:	7b62      	ldrb	r2, [r4, #13]
d004024c:	2008      	movs	r0, #8
d004024e:	7ba1      	ldrb	r1, [r4, #14]
d0040250:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0040254:	7be2      	ldrb	r2, [r4, #15]
d0040256:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d004025a:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004025e:	685b      	ldr	r3, [r3, #4]
d0040260:	68db      	ldr	r3, [r3, #12]
d0040262:	4798      	blx	r3
d0040264:	7b25      	ldrb	r5, [r4, #12]
d0040266:	7b60      	ldrb	r0, [r4, #13]
d0040268:	2302      	movs	r3, #2
d004026a:	7ba1      	ldrb	r1, [r4, #14]
d004026c:	f44f 72e8 	mov.w	r2, #464	; 0x1d0
d0040270:	ea45 2500 	orr.w	r5, r5, r0, lsl #8
d0040274:	7be0      	ldrb	r0, [r4, #15]
d0040276:	ea45 4501 	orr.w	r5, r5, r1, lsl #16
d004027a:	f44f 7191 	mov.w	r1, #290	; 0x122
d004027e:	ea45 6500 	orr.w	r5, r5, r0, lsl #24
d0040282:	2008      	movs	r0, #8
d0040284:	686d      	ldr	r5, [r5, #4]
d0040286:	686d      	ldr	r5, [r5, #4]
d0040288:	47a8      	blx	r5
d004028a:	7b23      	ldrb	r3, [r4, #12]
d004028c:	7b62      	ldrb	r2, [r4, #13]
d004028e:	2001      	movs	r0, #1
d0040290:	7ba1      	ldrb	r1, [r4, #14]
d0040292:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0040296:	7be2      	ldrb	r2, [r4, #15]
d0040298:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d004029c:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00402a0:	685b      	ldr	r3, [r3, #4]
d00402a2:	68db      	ldr	r3, [r3, #12]
d00402a4:	4798      	blx	r3
d00402a6:	7b23      	ldrb	r3, [r4, #12]
d00402a8:	7b65      	ldrb	r5, [r4, #13]
d00402aa:	2122      	movs	r1, #34	; 0x22
d00402ac:	7ba2      	ldrb	r2, [r4, #14]
d00402ae:	2008      	movs	r0, #8
d00402b0:	ea43 2305 	orr.w	r3, r3, r5, lsl #8
d00402b4:	7be5      	ldrb	r5, [r4, #15]
d00402b6:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d00402ba:	4a45      	ldr	r2, [pc, #276]	; (d00403d0 <draw_visualizer_front_base+0x2ac>)
d00402bc:	ea43 6305 	orr.w	r3, r3, r5, lsl #24
d00402c0:	685b      	ldr	r3, [r3, #4]
d00402c2:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d00402c4:	4798      	blx	r3
d00402c6:	7b23      	ldrb	r3, [r4, #12]
d00402c8:	7b65      	ldrb	r5, [r4, #13]
d00402ca:	2122      	movs	r1, #34	; 0x22
d00402cc:	7ba2      	ldrb	r2, [r4, #14]
d00402ce:	200c      	movs	r0, #12
d00402d0:	ea43 2305 	orr.w	r3, r3, r5, lsl #8
d00402d4:	7be5      	ldrb	r5, [r4, #15]
d00402d6:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d00402da:	4a3d      	ldr	r2, [pc, #244]	; (d00403d0 <draw_visualizer_front_base+0x2ac>)
d00402dc:	ea43 6305 	orr.w	r3, r3, r5, lsl #24
d00402e0:	685b      	ldr	r3, [r3, #4]
d00402e2:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d00402e4:	4798      	blx	r3
d00402e6:	7b23      	ldrb	r3, [r4, #12]
d00402e8:	7b65      	ldrb	r5, [r4, #13]
d00402ea:	2120      	movs	r1, #32
d00402ec:	7ba2      	ldrb	r2, [r4, #14]
d00402ee:	200a      	movs	r0, #10
d00402f0:	ea43 2305 	orr.w	r3, r3, r5, lsl #8
d00402f4:	7be5      	ldrb	r5, [r4, #15]
d00402f6:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d00402fa:	4a35      	ldr	r2, [pc, #212]	; (d00403d0 <draw_visualizer_front_base+0x2ac>)
d00402fc:	ea43 6305 	orr.w	r3, r3, r5, lsl #24
d0040300:	685b      	ldr	r3, [r3, #4]
d0040302:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d0040304:	4798      	blx	r3
d0040306:	7b23      	ldrb	r3, [r4, #12]
d0040308:	7b65      	ldrb	r5, [r4, #13]
d004030a:	2124      	movs	r1, #36	; 0x24
d004030c:	7ba2      	ldrb	r2, [r4, #14]
d004030e:	200a      	movs	r0, #10
d0040310:	ea43 2305 	orr.w	r3, r3, r5, lsl #8
d0040314:	7be5      	ldrb	r5, [r4, #15]
d0040316:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d004031a:	4a2d      	ldr	r2, [pc, #180]	; (d00403d0 <draw_visualizer_front_base+0x2ac>)
d004031c:	ea43 6305 	orr.w	r3, r3, r5, lsl #24
d0040320:	685b      	ldr	r3, [r3, #4]
d0040322:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d0040324:	4798      	blx	r3
d0040326:	7b23      	ldrb	r3, [r4, #12]
d0040328:	7b62      	ldrb	r2, [r4, #13]
d004032a:	2008      	movs	r0, #8
d004032c:	7ba1      	ldrb	r1, [r4, #14]
d004032e:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0040332:	7be2      	ldrb	r2, [r4, #15]
d0040334:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0040338:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004033c:	685b      	ldr	r3, [r3, #4]
d004033e:	68db      	ldr	r3, [r3, #12]
d0040340:	4798      	blx	r3
d0040342:	7b23      	ldrb	r3, [r4, #12]
d0040344:	7b65      	ldrb	r5, [r4, #13]
d0040346:	2122      	movs	r1, #34	; 0x22
d0040348:	7ba2      	ldrb	r2, [r4, #14]
d004034a:	200a      	movs	r0, #10
d004034c:	ea43 2305 	orr.w	r3, r3, r5, lsl #8
d0040350:	7be5      	ldrb	r5, [r4, #15]
d0040352:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d0040356:	4a1e      	ldr	r2, [pc, #120]	; (d00403d0 <draw_visualizer_front_base+0x2ac>)
d0040358:	ea43 6305 	orr.w	r3, r3, r5, lsl #24
d004035c:	685b      	ldr	r3, [r3, #4]
d004035e:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d0040360:	4798      	blx	r3
d0040362:	7b23      	ldrb	r3, [r4, #12]
d0040364:	7b62      	ldrb	r2, [r4, #13]
d0040366:	2006      	movs	r0, #6
d0040368:	7ba1      	ldrb	r1, [r4, #14]
d004036a:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004036e:	7be2      	ldrb	r2, [r4, #15]
d0040370:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0040374:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0040378:	685b      	ldr	r3, [r3, #4]
d004037a:	68db      	ldr	r3, [r3, #12]
d004037c:	4798      	blx	r3
d004037e:	7b25      	ldrb	r5, [r4, #12]
d0040380:	7b60      	ldrb	r0, [r4, #13]
d0040382:	2312      	movs	r3, #18
d0040384:	7ba1      	ldrb	r1, [r4, #14]
d0040386:	f44f 72e8 	mov.w	r2, #464	; 0x1d0
d004038a:	ea45 2500 	orr.w	r5, r5, r0, lsl #8
d004038e:	7be0      	ldrb	r0, [r4, #15]
d0040390:	ea45 4501 	orr.w	r5, r5, r1, lsl #16
d0040394:	f44f 7192 	mov.w	r1, #292	; 0x124
d0040398:	ea45 6500 	orr.w	r5, r5, r0, lsl #24
d004039c:	2008      	movs	r0, #8
d004039e:	686d      	ldr	r5, [r5, #4]
d00403a0:	686d      	ldr	r5, [r5, #4]
d00403a2:	47a8      	blx	r5
d00403a4:	7b23      	ldrb	r3, [r4, #12]
d00403a6:	7b62      	ldrb	r2, [r4, #13]
d00403a8:	2007      	movs	r0, #7
d00403aa:	7ba1      	ldrb	r1, [r4, #14]
d00403ac:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d00403b0:	7be2      	ldrb	r2, [r4, #15]
d00403b2:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d00403b6:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00403ba:	685b      	ldr	r3, [r3, #4]
d00403bc:	68db      	ldr	r3, [r3, #12]
d00403be:	4798      	blx	r3
d00403c0:	e00a      	b.n	d00403d8 <draw_visualizer_front_base+0x2b4>
d00403c2:	bf00      	nop
d00403c4:	2001f000 	.word	0x2001f000
d00403c8:	d0045a50 	.word	0xd0045a50
d00403cc:	d0045a64 	.word	0xd0045a64
d00403d0:	d004643c 	.word	0xd004643c
d00403d4:	aaaaaaab 	.word	0xaaaaaaab
d00403d8:	fa5f f588 	uxtb.w	r5, r8
d00403dc:	ea4f 10d9 	mov.w	r0, r9, lsr #7
d00403e0:	fbaa 2305 	umull	r2, r3, sl, r5
d00403e4:	3008      	adds	r0, #8
d00403e6:	08db      	lsrs	r3, r3, #3
d00403e8:	b200      	sxth	r0, r0
d00403ea:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d00403ee:	eba5 0583 	sub.w	r5, r5, r3, lsl #2
d00403f2:	b2ed      	uxtb	r5, r5
d00403f4:	1e6b      	subs	r3, r5, #1
d00403f6:	2b09      	cmp	r3, #9
d00403f8:	d84b      	bhi.n	d0040492 <draw_visualizer_front_base+0x36e>
d00403fa:	e8df f003 	tbb	[pc, r3]
d00403fe:	4a05      	.short	0x4a05
d0040400:	054a4a05 	.word	0x054a4a05
d0040404:	054a054a 	.word	0x054a054a
d0040408:	7b25      	ldrb	r5, [r4, #12]
d004040a:	230b      	movs	r3, #11
d004040c:	7b66      	ldrb	r6, [r4, #13]
d004040e:	2203      	movs	r2, #3
d0040410:	f44f 7192 	mov.w	r1, #292	; 0x124
d0040414:	ea45 2506 	orr.w	r5, r5, r6, lsl #8
d0040418:	7ba6      	ldrb	r6, [r4, #14]
d004041a:	ea45 4506 	orr.w	r5, r5, r6, lsl #16
d004041e:	7be6      	ldrb	r6, [r4, #15]
d0040420:	ea45 6506 	orr.w	r5, r5, r6, lsl #24
d0040424:	686d      	ldr	r5, [r5, #4]
d0040426:	686d      	ldr	r5, [r5, #4]
d0040428:	47a8      	blx	r5
d004042a:	f108 0801 	add.w	r8, r8, #1
d004042e:	f509 79e8 	add.w	r9, r9, #464	; 0x1d0
d0040432:	f1b8 0f80 	cmp.w	r8, #128	; 0x80
d0040436:	d1cf      	bne.n	d00403d8 <draw_visualizer_front_base+0x2b4>
d0040438:	270c      	movs	r7, #12
d004043a:	f04f 0820 	mov.w	r8, #32
d004043e:	7b25      	ldrb	r5, [r4, #12]
d0040440:	4640      	mov	r0, r8
d0040442:	7b61      	ldrb	r1, [r4, #13]
d0040444:	f108 0801 	add.w	r8, r8, #1
d0040448:	7ba2      	ldrb	r2, [r4, #14]
d004044a:	ea45 2101 	orr.w	r1, r5, r1, lsl #8
d004044e:	7be3      	ldrb	r3, [r4, #15]
d0040450:	fa5f f888 	uxtb.w	r8, r8
d0040454:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d0040458:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d004045c:	685b      	ldr	r3, [r3, #4]
d004045e:	68db      	ldr	r3, [r3, #12]
d0040460:	4798      	blx	r3
d0040462:	7b21      	ldrb	r1, [r4, #12]
d0040464:	7b60      	ldrb	r0, [r4, #13]
d0040466:	2305      	movs	r3, #5
d0040468:	7ba6      	ldrb	r6, [r4, #14]
d004046a:	2208      	movs	r2, #8
d004046c:	ea41 2000 	orr.w	r0, r1, r0, lsl #8
d0040470:	7be5      	ldrb	r5, [r4, #15]
d0040472:	f44f 719c 	mov.w	r1, #312	; 0x138
d0040476:	ea40 4606 	orr.w	r6, r0, r6, lsl #16
d004047a:	b238      	sxth	r0, r7
d004047c:	370c      	adds	r7, #12
d004047e:	ea46 6505 	orr.w	r5, r6, r5, lsl #24
d0040482:	b2bf      	uxth	r7, r7
d0040484:	686d      	ldr	r5, [r5, #4]
d0040486:	686d      	ldr	r5, [r5, #4]
d0040488:	47a8      	blx	r5
d004048a:	2fcc      	cmp	r7, #204	; 0xcc
d004048c:	d1d7      	bne.n	d004043e <draw_visualizer_front_base+0x31a>
d004048e:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
d0040492:	2312      	movs	r3, #18
d0040494:	2201      	movs	r2, #1
d0040496:	f44f 7192 	mov.w	r1, #292	; 0x124
d004049a:	2d00      	cmp	r5, #0
d004049c:	d1c5      	bne.n	d004042a <draw_visualizer_front_base+0x306>
d004049e:	f894 c00c 	ldrb.w	ip, [r4, #12]
d00404a2:	7b67      	ldrb	r7, [r4, #13]
d00404a4:	7ba6      	ldrb	r6, [r4, #14]
d00404a6:	ea4c 2707 	orr.w	r7, ip, r7, lsl #8
d00404aa:	7be5      	ldrb	r5, [r4, #15]
d00404ac:	ea47 4606 	orr.w	r6, r7, r6, lsl #16
d00404b0:	ea46 6505 	orr.w	r5, r6, r5, lsl #24
d00404b4:	686d      	ldr	r5, [r5, #4]
d00404b6:	686d      	ldr	r5, [r5, #4]
d00404b8:	47a8      	blx	r5
d00404ba:	e7b6      	b.n	d004042a <draw_visualizer_front_base+0x306>

d00404bc <midi_translator_send_direct>:
d00404bc:	4a08      	ldr	r2, [pc, #32]	; (d00404e0 <midi_translator_send_direct+0x24>)
d00404be:	b538      	push	{r3, r4, r5, lr}
d00404c0:	7d13      	ldrb	r3, [r2, #20]
d00404c2:	7d55      	ldrb	r5, [r2, #21]
d00404c4:	7d94      	ldrb	r4, [r2, #22]
d00404c6:	ea43 2305 	orr.w	r3, r3, r5, lsl #8
d00404ca:	7dd2      	ldrb	r2, [r2, #23]
d00404cc:	ea43 4304 	orr.w	r3, r3, r4, lsl #16
d00404d0:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00404d4:	681b      	ldr	r3, [r3, #0]
d00404d6:	695b      	ldr	r3, [r3, #20]
d00404d8:	4798      	blx	r3
d00404da:	2001      	movs	r0, #1
d00404dc:	bd38      	pop	{r3, r4, r5, pc}
d00404de:	bf00      	nop
d00404e0:	2001f000 	.word	0x2001f000

d00404e4 <tmr1test>:
d00404e4:	4a05      	ldr	r2, [pc, #20]	; (d00404fc <tmr1test+0x18>)
d00404e6:	8813      	ldrh	r3, [r2, #0]
d00404e8:	3301      	adds	r3, #1
d00404ea:	b29b      	uxth	r3, r3
d00404ec:	8013      	strh	r3, [r2, #0]
d00404ee:	8813      	ldrh	r3, [r2, #0]
d00404f0:	b29b      	uxth	r3, r3
d00404f2:	2b0a      	cmp	r3, #10
d00404f4:	d901      	bls.n	d00404fa <tmr1test+0x16>
d00404f6:	2300      	movs	r3, #0
d00404f8:	8013      	strh	r3, [r2, #0]
d00404fa:	4770      	bx	lr
d00404fc:	d0046928 	.word	0xd0046928

d0040500 <midi_send_channel_panic>:
d0040500:	2300      	movs	r3, #0
d0040502:	482e      	ldr	r0, [pc, #184]	; (d00405bc <midi_send_channel_panic+0xbc>)
d0040504:	492e      	ldr	r1, [pc, #184]	; (d00405c0 <midi_send_channel_panic+0xc0>)
d0040506:	4a2f      	ldr	r2, [pc, #188]	; (d00405c4 <midi_send_channel_panic+0xc4>)
d0040508:	e92d 43f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
d004050c:	b085      	sub	sp, #20
d004050e:	4698      	mov	r8, r3
d0040510:	4c2d      	ldr	r4, [pc, #180]	; (d00405c8 <midi_send_channel_panic+0xc8>)
d0040512:	4699      	mov	r9, r3
d0040514:	2778      	movs	r7, #120	; 0x78
d0040516:	8003      	strh	r3, [r0, #0]
d0040518:	800b      	strh	r3, [r1, #0]
d004051a:	8013      	strh	r3, [r2, #0]
d004051c:	f003 fa2e 	bl	d004397c <midi_translator_reset_state>
d0040520:	7d20      	ldrb	r0, [r4, #20]
d0040522:	f068 054f 	orn	r5, r8, #79	; 0x4f
d0040526:	7d61      	ldrb	r1, [r4, #21]
d0040528:	f04f 0c7b 	mov.w	ip, #123	; 0x7b
d004052c:	7da2      	ldrb	r2, [r4, #22]
d004052e:	b2ed      	uxtb	r5, r5
d0040530:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d0040534:	7de3      	ldrb	r3, [r4, #23]
d0040536:	2679      	movs	r6, #121	; 0x79
d0040538:	f88d c00d 	strb.w	ip, [sp, #13]
d004053c:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d0040540:	f88d 5004 	strb.w	r5, [sp, #4]
d0040544:	f88d 5008 	strb.w	r5, [sp, #8]
d0040548:	2103      	movs	r1, #3
d004054a:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d004054e:	f88d 500c 	strb.w	r5, [sp, #12]
d0040552:	f88d 6009 	strb.w	r6, [sp, #9]
d0040556:	a801      	add	r0, sp, #4
d0040558:	f88d 7005 	strb.w	r7, [sp, #5]
d004055c:	f108 0801 	add.w	r8, r8, #1
d0040560:	f88d 9006 	strb.w	r9, [sp, #6]
d0040564:	f88d 900a 	strb.w	r9, [sp, #10]
d0040568:	f88d 900e 	strb.w	r9, [sp, #14]
d004056c:	681b      	ldr	r3, [r3, #0]
d004056e:	695b      	ldr	r3, [r3, #20]
d0040570:	4798      	blx	r3
d0040572:	7d26      	ldrb	r6, [r4, #20]
d0040574:	7d65      	ldrb	r5, [r4, #21]
d0040576:	2103      	movs	r1, #3
d0040578:	7da2      	ldrb	r2, [r4, #22]
d004057a:	a802      	add	r0, sp, #8
d004057c:	ea46 2505 	orr.w	r5, r6, r5, lsl #8
d0040580:	7de3      	ldrb	r3, [r4, #23]
d0040582:	ea45 4202 	orr.w	r2, r5, r2, lsl #16
d0040586:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d004058a:	681b      	ldr	r3, [r3, #0]
d004058c:	695b      	ldr	r3, [r3, #20]
d004058e:	4798      	blx	r3
d0040590:	7d26      	ldrb	r6, [r4, #20]
d0040592:	7d65      	ldrb	r5, [r4, #21]
d0040594:	2103      	movs	r1, #3
d0040596:	7da2      	ldrb	r2, [r4, #22]
d0040598:	a803      	add	r0, sp, #12
d004059a:	ea46 2505 	orr.w	r5, r6, r5, lsl #8
d004059e:	7de3      	ldrb	r3, [r4, #23]
d00405a0:	ea45 4202 	orr.w	r2, r5, r2, lsl #16
d00405a4:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d00405a8:	681b      	ldr	r3, [r3, #0]
d00405aa:	695b      	ldr	r3, [r3, #20]
d00405ac:	4798      	blx	r3
d00405ae:	f1b8 0f10 	cmp.w	r8, #16
d00405b2:	d1b5      	bne.n	d0040520 <midi_send_channel_panic+0x20>
d00405b4:	b005      	add	sp, #20
d00405b6:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
d00405ba:	bf00      	nop
d00405bc:	d0046996 	.word	0xd0046996
d00405c0:	d0046d98 	.word	0xd0046d98
d00405c4:	d0046994 	.word	0xd0046994
d00405c8:	2001f000 	.word	0x2001f000

d00405cc <midi_wait_for_startup_bytes>:
d00405cc:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d00405ce:	4b1a      	ldr	r3, [pc, #104]	; (d0040638 <midi_wait_for_startup_bytes+0x6c>)
d00405d0:	f893 1100 	ldrb.w	r1, [r3, #256]	; 0x100
d00405d4:	b379      	cbz	r1, d0040636 <midi_wait_for_startup_bytes+0x6a>
d00405d6:	3901      	subs	r1, #1
d00405d8:	f04f 37ff 	mov.w	r7, #4294967295	; 0xffffffff
d00405dc:	2500      	movs	r5, #0
d00405de:	b2ca      	uxtb	r2, r1
d00405e0:	f103 0110 	add.w	r1, r3, #16
d00405e4:	eb01 1102 	add.w	r1, r1, r2, lsl #4
d00405e8:	7b5a      	ldrb	r2, [r3, #13]
d00405ea:	b12a      	cbz	r2, d00405f8 <midi_wait_for_startup_bytes+0x2c>
d00405ec:	689c      	ldr	r4, [r3, #8]
d00405ee:	b10d      	cbz	r5, d00405f4 <midi_wait_for_startup_bytes+0x28>
d00405f0:	42a7      	cmp	r7, r4
d00405f2:	d901      	bls.n	d00405f8 <midi_wait_for_startup_bytes+0x2c>
d00405f4:	4627      	mov	r7, r4
d00405f6:	4615      	mov	r5, r2
d00405f8:	3310      	adds	r3, #16
d00405fa:	428b      	cmp	r3, r1
d00405fc:	d1f4      	bne.n	d00405e8 <midi_wait_for_startup_bytes+0x1c>
d00405fe:	2d01      	cmp	r5, #1
d0040600:	d119      	bne.n	d0040636 <midi_wait_for_startup_bytes+0x6a>
d0040602:	1e3e      	subs	r6, r7, #0
d0040604:	bf18      	it	ne
d0040606:	2601      	movne	r6, #1
d0040608:	b9af      	cbnz	r7, d0040636 <midi_wait_for_startup_bytes+0x6a>
d004060a:	f003 fbdd 	bl	d0043dc8 <midi_translator_uses_soundfont>
d004060e:	2800      	cmp	r0, #0
d0040610:	4c0a      	ldr	r4, [pc, #40]	; (d004063c <midi_wait_for_startup_bytes+0x70>)
d0040612:	bf14      	ite	ne
d0040614:	2503      	movne	r5, #3
d0040616:	2507      	moveq	r5, #7
d0040618:	7f20      	ldrb	r0, [r4, #28]
d004061a:	3601      	adds	r6, #1
d004061c:	7f61      	ldrb	r1, [r4, #29]
d004061e:	7fa2      	ldrb	r2, [r4, #30]
d0040620:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d0040624:	7fe3      	ldrb	r3, [r4, #31]
d0040626:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d004062a:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d004062e:	699b      	ldr	r3, [r3, #24]
d0040630:	4798      	blx	r3
d0040632:	42ae      	cmp	r6, r5
d0040634:	d1f0      	bne.n	d0040618 <midi_wait_for_startup_bytes+0x4c>
d0040636:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d0040638:	d0047bc8 	.word	0xd0047bc8
d004063c:	2001f000 	.word	0x2001f000

d0040640 <app_shutdown.part.0>:
d0040640:	b570      	push	{r4, r5, r6, lr}
d0040642:	4c21      	ldr	r4, [pc, #132]	; (d00406c8 <app_shutdown.part.0+0x88>)
d0040644:	b082      	sub	sp, #8
d0040646:	f44f 73a0 	mov.w	r3, #320	; 0x140
d004064a:	f44f 72f0 	mov.w	r2, #480	; 0x1e0
d004064e:	7b25      	ldrb	r5, [r4, #12]
d0040650:	2602      	movs	r6, #2
d0040652:	7b60      	ldrb	r0, [r4, #13]
d0040654:	4619      	mov	r1, r3
d0040656:	ea45 2500 	orr.w	r5, r5, r0, lsl #8
d004065a:	7ba0      	ldrb	r0, [r4, #14]
d004065c:	ea45 4500 	orr.w	r5, r5, r0, lsl #16
d0040660:	7be0      	ldrb	r0, [r4, #15]
d0040662:	ea45 6500 	orr.w	r5, r5, r0, lsl #24
d0040666:	4610      	mov	r0, r2
d0040668:	682d      	ldr	r5, [r5, #0]
d004066a:	9600      	str	r6, [sp, #0]
d004066c:	696d      	ldr	r5, [r5, #20]
d004066e:	47a8      	blx	r5
d0040670:	7b23      	ldrb	r3, [r4, #12]
d0040672:	7b62      	ldrb	r2, [r4, #13]
d0040674:	2100      	movs	r1, #0
d0040676:	7ba5      	ldrb	r5, [r4, #14]
d0040678:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004067c:	7be2      	ldrb	r2, [r4, #15]
d004067e:	4608      	mov	r0, r1
d0040680:	ea43 4305 	orr.w	r3, r3, r5, lsl #16
d0040684:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0040688:	681b      	ldr	r3, [r3, #0]
d004068a:	6b1b      	ldr	r3, [r3, #48]	; 0x30
d004068c:	4798      	blx	r3
d004068e:	7923      	ldrb	r3, [r4, #4]
d0040690:	7962      	ldrb	r2, [r4, #5]
d0040692:	79a1      	ldrb	r1, [r4, #6]
d0040694:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0040698:	79e2      	ldrb	r2, [r4, #7]
d004069a:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d004069e:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00406a2:	685b      	ldr	r3, [r3, #4]
d00406a4:	4798      	blx	r3
d00406a6:	7823      	ldrb	r3, [r4, #0]
d00406a8:	7862      	ldrb	r2, [r4, #1]
d00406aa:	78a1      	ldrb	r1, [r4, #2]
d00406ac:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d00406b0:	78e2      	ldrb	r2, [r4, #3]
d00406b2:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d00406b6:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00406ba:	685b      	ldr	r3, [r3, #4]
d00406bc:	4798      	blx	r3
d00406be:	4b03      	ldr	r3, [pc, #12]	; (d00406cc <app_shutdown.part.0+0x8c>)
d00406c0:	2200      	movs	r2, #0
d00406c2:	701a      	strb	r2, [r3, #0]
d00406c4:	b002      	add	sp, #8
d00406c6:	bd70      	pop	{r4, r5, r6, pc}
d00406c8:	2001f000 	.word	0x2001f000
d00406cc:	d00464e8 	.word	0xd00464e8

d00406d0 <parse_translator_switch.part.0>:
d00406d0:	b570      	push	{r4, r5, r6, lr}
d00406d2:	2205      	movs	r2, #5
d00406d4:	460e      	mov	r6, r1
d00406d6:	4919      	ldr	r1, [pc, #100]	; (d004073c <parse_translator_switch.part.0+0x6c>)
d00406d8:	4604      	mov	r4, r0
d00406da:	f004 f92f 	bl	d004493c <strncmp>
d00406de:	b388      	cbz	r0, d0040744 <parse_translator_switch.part.0+0x74>
d00406e0:	2205      	movs	r2, #5
d00406e2:	4917      	ldr	r1, [pc, #92]	; (d0040740 <parse_translator_switch.part.0+0x70>)
d00406e4:	4620      	mov	r0, r4
d00406e6:	f004 f929 	bl	d004493c <strncmp>
d00406ea:	b358      	cbz	r0, d0040744 <parse_translator_switch.part.0+0x74>
d00406ec:	7823      	ldrb	r3, [r4, #0]
d00406ee:	2b2d      	cmp	r3, #45	; 0x2d
d00406f0:	d02c      	beq.n	d004074c <parse_translator_switch.part.0+0x7c>
d00406f2:	f003 03df 	and.w	r3, r3, #223	; 0xdf
d00406f6:	2b53      	cmp	r3, #83	; 0x53
d00406f8:	d12c      	bne.n	d0040754 <parse_translator_switch.part.0+0x84>
d00406fa:	7863      	ldrb	r3, [r4, #1]
d00406fc:	f003 03df 	and.w	r3, r3, #223	; 0xdf
d0040700:	2b46      	cmp	r3, #70	; 0x46
d0040702:	d127      	bne.n	d0040754 <parse_translator_switch.part.0+0x84>
d0040704:	3402      	adds	r4, #2
d0040706:	7825      	ldrb	r5, [r4, #0]
d0040708:	3d30      	subs	r5, #48	; 0x30
d004070a:	b2eb      	uxtb	r3, r5
d004070c:	2b09      	cmp	r3, #9
d004070e:	d812      	bhi.n	d0040736 <parse_translator_switch.part.0+0x66>
d0040710:	b2ad      	uxth	r5, r5
d0040712:	e002      	b.n	d004071a <parse_translator_switch.part.0+0x4a>
d0040714:	b29d      	uxth	r5, r3
d0040716:	2d0f      	cmp	r5, #15
d0040718:	d80d      	bhi.n	d0040736 <parse_translator_switch.part.0+0x66>
d004071a:	f814 1f01 	ldrb.w	r1, [r4, #1]!
d004071e:	eb05 0385 	add.w	r3, r5, r5, lsl #2
d0040722:	f1a1 0230 	sub.w	r2, r1, #48	; 0x30
d0040726:	eb02 0343 	add.w	r3, r2, r3, lsl #1
d004072a:	b2d2      	uxtb	r2, r2
d004072c:	2a09      	cmp	r2, #9
d004072e:	d9f1      	bls.n	d0040714 <parse_translator_switch.part.0+0x44>
d0040730:	2900      	cmp	r1, #0
d0040732:	f000 8228 	beq.w	d0040b86 <parse_translator_switch.part.0+0x4b6>
d0040736:	2000      	movs	r0, #0
d0040738:	bd70      	pop	{r4, r5, r6, pc}
d004073a:	bf00      	nop
d004073c:	d0045a80 	.word	0xd0045a80
d0040740:	d0045a88 	.word	0xd0045a88
d0040744:	7963      	ldrb	r3, [r4, #5]
d0040746:	3405      	adds	r4, #5
d0040748:	2b2d      	cmp	r3, #45	; 0x2d
d004074a:	d1d2      	bne.n	d00406f2 <parse_translator_switch.part.0+0x22>
d004074c:	7863      	ldrb	r3, [r4, #1]
d004074e:	2b2d      	cmp	r3, #45	; 0x2d
d0040750:	f000 8207 	beq.w	d0040b62 <parse_translator_switch.part.0+0x492>
d0040754:	49c3      	ldr	r1, [pc, #780]	; (d0040a64 <parse_translator_switch.part.0+0x394>)
d0040756:	4620      	mov	r0, r4
d0040758:	f004 f8de 	bl	d0044918 <strcmp>
d004075c:	2800      	cmp	r0, #0
d004075e:	f000 81fc 	beq.w	d0040b5a <parse_translator_switch.part.0+0x48a>
d0040762:	49c1      	ldr	r1, [pc, #772]	; (d0040a68 <parse_translator_switch.part.0+0x398>)
d0040764:	4620      	mov	r0, r4
d0040766:	f004 f8d7 	bl	d0044918 <strcmp>
d004076a:	2800      	cmp	r0, #0
d004076c:	f000 81f5 	beq.w	d0040b5a <parse_translator_switch.part.0+0x48a>
d0040770:	49be      	ldr	r1, [pc, #760]	; (d0040a6c <parse_translator_switch.part.0+0x39c>)
d0040772:	4620      	mov	r0, r4
d0040774:	f004 f8d0 	bl	d0044918 <strcmp>
d0040778:	2800      	cmp	r0, #0
d004077a:	f000 81ee 	beq.w	d0040b5a <parse_translator_switch.part.0+0x48a>
d004077e:	49bc      	ldr	r1, [pc, #752]	; (d0040a70 <parse_translator_switch.part.0+0x3a0>)
d0040780:	4620      	mov	r0, r4
d0040782:	f004 f8c9 	bl	d0044918 <strcmp>
d0040786:	2800      	cmp	r0, #0
d0040788:	f000 81e7 	beq.w	d0040b5a <parse_translator_switch.part.0+0x48a>
d004078c:	49b9      	ldr	r1, [pc, #740]	; (d0040a74 <parse_translator_switch.part.0+0x3a4>)
d004078e:	4620      	mov	r0, r4
d0040790:	f004 f8c2 	bl	d0044918 <strcmp>
d0040794:	2800      	cmp	r0, #0
d0040796:	f000 81f2 	beq.w	d0040b7e <parse_translator_switch.part.0+0x4ae>
d004079a:	49b7      	ldr	r1, [pc, #732]	; (d0040a78 <parse_translator_switch.part.0+0x3a8>)
d004079c:	4620      	mov	r0, r4
d004079e:	f004 f8bb 	bl	d0044918 <strcmp>
d00407a2:	2800      	cmp	r0, #0
d00407a4:	f000 81eb 	beq.w	d0040b7e <parse_translator_switch.part.0+0x4ae>
d00407a8:	49b4      	ldr	r1, [pc, #720]	; (d0040a7c <parse_translator_switch.part.0+0x3ac>)
d00407aa:	4620      	mov	r0, r4
d00407ac:	f004 f8b4 	bl	d0044918 <strcmp>
d00407b0:	2800      	cmp	r0, #0
d00407b2:	f000 81e4 	beq.w	d0040b7e <parse_translator_switch.part.0+0x4ae>
d00407b6:	49b2      	ldr	r1, [pc, #712]	; (d0040a80 <parse_translator_switch.part.0+0x3b0>)
d00407b8:	4620      	mov	r0, r4
d00407ba:	f004 f8ad 	bl	d0044918 <strcmp>
d00407be:	2800      	cmp	r0, #0
d00407c0:	f000 81dd 	beq.w	d0040b7e <parse_translator_switch.part.0+0x4ae>
d00407c4:	49af      	ldr	r1, [pc, #700]	; (d0040a84 <parse_translator_switch.part.0+0x3b4>)
d00407c6:	4620      	mov	r0, r4
d00407c8:	f004 f8a6 	bl	d0044918 <strcmp>
d00407cc:	2800      	cmp	r0, #0
d00407ce:	f000 81d6 	beq.w	d0040b7e <parse_translator_switch.part.0+0x4ae>
d00407d2:	49ad      	ldr	r1, [pc, #692]	; (d0040a88 <parse_translator_switch.part.0+0x3b8>)
d00407d4:	4620      	mov	r0, r4
d00407d6:	f004 f89f 	bl	d0044918 <strcmp>
d00407da:	2800      	cmp	r0, #0
d00407dc:	f000 81cf 	beq.w	d0040b7e <parse_translator_switch.part.0+0x4ae>
d00407e0:	49aa      	ldr	r1, [pc, #680]	; (d0040a8c <parse_translator_switch.part.0+0x3bc>)
d00407e2:	4620      	mov	r0, r4
d00407e4:	f004 f898 	bl	d0044918 <strcmp>
d00407e8:	2800      	cmp	r0, #0
d00407ea:	f000 81c8 	beq.w	d0040b7e <parse_translator_switch.part.0+0x4ae>
d00407ee:	49a8      	ldr	r1, [pc, #672]	; (d0040a90 <parse_translator_switch.part.0+0x3c0>)
d00407f0:	4620      	mov	r0, r4
d00407f2:	f004 f891 	bl	d0044918 <strcmp>
d00407f6:	2800      	cmp	r0, #0
d00407f8:	f000 81c1 	beq.w	d0040b7e <parse_translator_switch.part.0+0x4ae>
d00407fc:	49a5      	ldr	r1, [pc, #660]	; (d0040a94 <parse_translator_switch.part.0+0x3c4>)
d00407fe:	4620      	mov	r0, r4
d0040800:	f004 f88a 	bl	d0044918 <strcmp>
d0040804:	2800      	cmp	r0, #0
d0040806:	f000 81ba 	beq.w	d0040b7e <parse_translator_switch.part.0+0x4ae>
d004080a:	49a3      	ldr	r1, [pc, #652]	; (d0040a98 <parse_translator_switch.part.0+0x3c8>)
d004080c:	4620      	mov	r0, r4
d004080e:	f004 f883 	bl	d0044918 <strcmp>
d0040812:	2800      	cmp	r0, #0
d0040814:	f000 81b3 	beq.w	d0040b7e <parse_translator_switch.part.0+0x4ae>
d0040818:	49a0      	ldr	r1, [pc, #640]	; (d0040a9c <parse_translator_switch.part.0+0x3cc>)
d004081a:	4620      	mov	r0, r4
d004081c:	f004 f87c 	bl	d0044918 <strcmp>
d0040820:	2800      	cmp	r0, #0
d0040822:	f000 81b6 	beq.w	d0040b92 <parse_translator_switch.part.0+0x4c2>
d0040826:	499e      	ldr	r1, [pc, #632]	; (d0040aa0 <parse_translator_switch.part.0+0x3d0>)
d0040828:	4620      	mov	r0, r4
d004082a:	f004 f875 	bl	d0044918 <strcmp>
d004082e:	2800      	cmp	r0, #0
d0040830:	f000 81af 	beq.w	d0040b92 <parse_translator_switch.part.0+0x4c2>
d0040834:	499b      	ldr	r1, [pc, #620]	; (d0040aa4 <parse_translator_switch.part.0+0x3d4>)
d0040836:	4620      	mov	r0, r4
d0040838:	f004 f86e 	bl	d0044918 <strcmp>
d004083c:	2800      	cmp	r0, #0
d004083e:	f000 81a8 	beq.w	d0040b92 <parse_translator_switch.part.0+0x4c2>
d0040842:	4999      	ldr	r1, [pc, #612]	; (d0040aa8 <parse_translator_switch.part.0+0x3d8>)
d0040844:	4620      	mov	r0, r4
d0040846:	f004 f867 	bl	d0044918 <strcmp>
d004084a:	2800      	cmp	r0, #0
d004084c:	f000 81a1 	beq.w	d0040b92 <parse_translator_switch.part.0+0x4c2>
d0040850:	4996      	ldr	r1, [pc, #600]	; (d0040aac <parse_translator_switch.part.0+0x3dc>)
d0040852:	4620      	mov	r0, r4
d0040854:	f004 f860 	bl	d0044918 <strcmp>
d0040858:	2800      	cmp	r0, #0
d004085a:	f000 819a 	beq.w	d0040b92 <parse_translator_switch.part.0+0x4c2>
d004085e:	4994      	ldr	r1, [pc, #592]	; (d0040ab0 <parse_translator_switch.part.0+0x3e0>)
d0040860:	4620      	mov	r0, r4
d0040862:	f004 f859 	bl	d0044918 <strcmp>
d0040866:	2800      	cmp	r0, #0
d0040868:	f000 8193 	beq.w	d0040b92 <parse_translator_switch.part.0+0x4c2>
d004086c:	4991      	ldr	r1, [pc, #580]	; (d0040ab4 <parse_translator_switch.part.0+0x3e4>)
d004086e:	4620      	mov	r0, r4
d0040870:	f004 f852 	bl	d0044918 <strcmp>
d0040874:	2800      	cmp	r0, #0
d0040876:	f000 818c 	beq.w	d0040b92 <parse_translator_switch.part.0+0x4c2>
d004087a:	498f      	ldr	r1, [pc, #572]	; (d0040ab8 <parse_translator_switch.part.0+0x3e8>)
d004087c:	4620      	mov	r0, r4
d004087e:	f004 f84b 	bl	d0044918 <strcmp>
d0040882:	2800      	cmp	r0, #0
d0040884:	f000 8185 	beq.w	d0040b92 <parse_translator_switch.part.0+0x4c2>
d0040888:	498c      	ldr	r1, [pc, #560]	; (d0040abc <parse_translator_switch.part.0+0x3ec>)
d004088a:	4620      	mov	r0, r4
d004088c:	f004 f844 	bl	d0044918 <strcmp>
d0040890:	2800      	cmp	r0, #0
d0040892:	f000 817e 	beq.w	d0040b92 <parse_translator_switch.part.0+0x4c2>
d0040896:	498a      	ldr	r1, [pc, #552]	; (d0040ac0 <parse_translator_switch.part.0+0x3f0>)
d0040898:	4620      	mov	r0, r4
d004089a:	f004 f83d 	bl	d0044918 <strcmp>
d004089e:	2800      	cmp	r0, #0
d00408a0:	f000 8177 	beq.w	d0040b92 <parse_translator_switch.part.0+0x4c2>
d00408a4:	4987      	ldr	r1, [pc, #540]	; (d0040ac4 <parse_translator_switch.part.0+0x3f4>)
d00408a6:	4620      	mov	r0, r4
d00408a8:	f004 f836 	bl	d0044918 <strcmp>
d00408ac:	2800      	cmp	r0, #0
d00408ae:	f000 8170 	beq.w	d0040b92 <parse_translator_switch.part.0+0x4c2>
d00408b2:	4985      	ldr	r1, [pc, #532]	; (d0040ac8 <parse_translator_switch.part.0+0x3f8>)
d00408b4:	4620      	mov	r0, r4
d00408b6:	f004 f82f 	bl	d0044918 <strcmp>
d00408ba:	2800      	cmp	r0, #0
d00408bc:	f000 8169 	beq.w	d0040b92 <parse_translator_switch.part.0+0x4c2>
d00408c0:	4982      	ldr	r1, [pc, #520]	; (d0040acc <parse_translator_switch.part.0+0x3fc>)
d00408c2:	4620      	mov	r0, r4
d00408c4:	f004 f828 	bl	d0044918 <strcmp>
d00408c8:	2800      	cmp	r0, #0
d00408ca:	f000 8162 	beq.w	d0040b92 <parse_translator_switch.part.0+0x4c2>
d00408ce:	4980      	ldr	r1, [pc, #512]	; (d0040ad0 <parse_translator_switch.part.0+0x400>)
d00408d0:	4620      	mov	r0, r4
d00408d2:	f004 f821 	bl	d0044918 <strcmp>
d00408d6:	2800      	cmp	r0, #0
d00408d8:	f000 816e 	beq.w	d0040bb8 <parse_translator_switch.part.0+0x4e8>
d00408dc:	497d      	ldr	r1, [pc, #500]	; (d0040ad4 <parse_translator_switch.part.0+0x404>)
d00408de:	4620      	mov	r0, r4
d00408e0:	f004 f81a 	bl	d0044918 <strcmp>
d00408e4:	2800      	cmp	r0, #0
d00408e6:	f000 8167 	beq.w	d0040bb8 <parse_translator_switch.part.0+0x4e8>
d00408ea:	497b      	ldr	r1, [pc, #492]	; (d0040ad8 <parse_translator_switch.part.0+0x408>)
d00408ec:	4620      	mov	r0, r4
d00408ee:	f004 f813 	bl	d0044918 <strcmp>
d00408f2:	2800      	cmp	r0, #0
d00408f4:	f000 8160 	beq.w	d0040bb8 <parse_translator_switch.part.0+0x4e8>
d00408f8:	4978      	ldr	r1, [pc, #480]	; (d0040adc <parse_translator_switch.part.0+0x40c>)
d00408fa:	4620      	mov	r0, r4
d00408fc:	f004 f80c 	bl	d0044918 <strcmp>
d0040900:	2800      	cmp	r0, #0
d0040902:	f000 8159 	beq.w	d0040bb8 <parse_translator_switch.part.0+0x4e8>
d0040906:	4976      	ldr	r1, [pc, #472]	; (d0040ae0 <parse_translator_switch.part.0+0x410>)
d0040908:	4620      	mov	r0, r4
d004090a:	f004 f805 	bl	d0044918 <strcmp>
d004090e:	2800      	cmp	r0, #0
d0040910:	f000 814e 	beq.w	d0040bb0 <parse_translator_switch.part.0+0x4e0>
d0040914:	4973      	ldr	r1, [pc, #460]	; (d0040ae4 <parse_translator_switch.part.0+0x414>)
d0040916:	4620      	mov	r0, r4
d0040918:	f003 fffe 	bl	d0044918 <strcmp>
d004091c:	2800      	cmp	r0, #0
d004091e:	f000 8147 	beq.w	d0040bb0 <parse_translator_switch.part.0+0x4e0>
d0040922:	4971      	ldr	r1, [pc, #452]	; (d0040ae8 <parse_translator_switch.part.0+0x418>)
d0040924:	4620      	mov	r0, r4
d0040926:	f003 fff7 	bl	d0044918 <strcmp>
d004092a:	2800      	cmp	r0, #0
d004092c:	f000 8140 	beq.w	d0040bb0 <parse_translator_switch.part.0+0x4e0>
d0040930:	496e      	ldr	r1, [pc, #440]	; (d0040aec <parse_translator_switch.part.0+0x41c>)
d0040932:	4620      	mov	r0, r4
d0040934:	f003 fff0 	bl	d0044918 <strcmp>
d0040938:	2800      	cmp	r0, #0
d004093a:	f000 8139 	beq.w	d0040bb0 <parse_translator_switch.part.0+0x4e0>
d004093e:	496c      	ldr	r1, [pc, #432]	; (d0040af0 <parse_translator_switch.part.0+0x420>)
d0040940:	4620      	mov	r0, r4
d0040942:	f003 ffe9 	bl	d0044918 <strcmp>
d0040946:	2800      	cmp	r0, #0
d0040948:	f000 812e 	beq.w	d0040ba8 <parse_translator_switch.part.0+0x4d8>
d004094c:	4969      	ldr	r1, [pc, #420]	; (d0040af4 <parse_translator_switch.part.0+0x424>)
d004094e:	4620      	mov	r0, r4
d0040950:	f003 ffe2 	bl	d0044918 <strcmp>
d0040954:	2800      	cmp	r0, #0
d0040956:	f000 8127 	beq.w	d0040ba8 <parse_translator_switch.part.0+0x4d8>
d004095a:	4967      	ldr	r1, [pc, #412]	; (d0040af8 <parse_translator_switch.part.0+0x428>)
d004095c:	4620      	mov	r0, r4
d004095e:	f003 ffdb 	bl	d0044918 <strcmp>
d0040962:	2800      	cmp	r0, #0
d0040964:	f000 8120 	beq.w	d0040ba8 <parse_translator_switch.part.0+0x4d8>
d0040968:	4964      	ldr	r1, [pc, #400]	; (d0040afc <parse_translator_switch.part.0+0x42c>)
d004096a:	4620      	mov	r0, r4
d004096c:	f003 ffd4 	bl	d0044918 <strcmp>
d0040970:	2800      	cmp	r0, #0
d0040972:	f000 8119 	beq.w	d0040ba8 <parse_translator_switch.part.0+0x4d8>
d0040976:	4962      	ldr	r1, [pc, #392]	; (d0040b00 <parse_translator_switch.part.0+0x430>)
d0040978:	4620      	mov	r0, r4
d004097a:	f003 ffcd 	bl	d0044918 <strcmp>
d004097e:	2800      	cmp	r0, #0
d0040980:	f000 810e 	beq.w	d0040ba0 <parse_translator_switch.part.0+0x4d0>
d0040984:	495f      	ldr	r1, [pc, #380]	; (d0040b04 <parse_translator_switch.part.0+0x434>)
d0040986:	4620      	mov	r0, r4
d0040988:	f003 ffc6 	bl	d0044918 <strcmp>
d004098c:	2800      	cmp	r0, #0
d004098e:	f000 8107 	beq.w	d0040ba0 <parse_translator_switch.part.0+0x4d0>
d0040992:	495d      	ldr	r1, [pc, #372]	; (d0040b08 <parse_translator_switch.part.0+0x438>)
d0040994:	4620      	mov	r0, r4
d0040996:	f003 ffbf 	bl	d0044918 <strcmp>
d004099a:	2800      	cmp	r0, #0
d004099c:	f000 8100 	beq.w	d0040ba0 <parse_translator_switch.part.0+0x4d0>
d00409a0:	495a      	ldr	r1, [pc, #360]	; (d0040b0c <parse_translator_switch.part.0+0x43c>)
d00409a2:	4620      	mov	r0, r4
d00409a4:	f003 ffb8 	bl	d0044918 <strcmp>
d00409a8:	2800      	cmp	r0, #0
d00409aa:	f000 80f9 	beq.w	d0040ba0 <parse_translator_switch.part.0+0x4d0>
d00409ae:	4958      	ldr	r1, [pc, #352]	; (d0040b10 <parse_translator_switch.part.0+0x440>)
d00409b0:	4620      	mov	r0, r4
d00409b2:	f003 ffb1 	bl	d0044918 <strcmp>
d00409b6:	2800      	cmp	r0, #0
d00409b8:	f000 80f2 	beq.w	d0040ba0 <parse_translator_switch.part.0+0x4d0>
d00409bc:	4955      	ldr	r1, [pc, #340]	; (d0040b14 <parse_translator_switch.part.0+0x444>)
d00409be:	4620      	mov	r0, r4
d00409c0:	f003 ffaa 	bl	d0044918 <strcmp>
d00409c4:	2800      	cmp	r0, #0
d00409c6:	f000 80eb 	beq.w	d0040ba0 <parse_translator_switch.part.0+0x4d0>
d00409ca:	4953      	ldr	r1, [pc, #332]	; (d0040b18 <parse_translator_switch.part.0+0x448>)
d00409cc:	4620      	mov	r0, r4
d00409ce:	f003 ffa3 	bl	d0044918 <strcmp>
d00409d2:	2800      	cmp	r0, #0
d00409d4:	f000 80e4 	beq.w	d0040ba0 <parse_translator_switch.part.0+0x4d0>
d00409d8:	4950      	ldr	r1, [pc, #320]	; (d0040b1c <parse_translator_switch.part.0+0x44c>)
d00409da:	4620      	mov	r0, r4
d00409dc:	f003 ff9c 	bl	d0044918 <strcmp>
d00409e0:	2800      	cmp	r0, #0
d00409e2:	f000 80d9 	beq.w	d0040b98 <parse_translator_switch.part.0+0x4c8>
d00409e6:	494e      	ldr	r1, [pc, #312]	; (d0040b20 <parse_translator_switch.part.0+0x450>)
d00409e8:	4620      	mov	r0, r4
d00409ea:	f003 ff95 	bl	d0044918 <strcmp>
d00409ee:	2800      	cmp	r0, #0
d00409f0:	f000 80d2 	beq.w	d0040b98 <parse_translator_switch.part.0+0x4c8>
d00409f4:	494b      	ldr	r1, [pc, #300]	; (d0040b24 <parse_translator_switch.part.0+0x454>)
d00409f6:	4620      	mov	r0, r4
d00409f8:	f003 ff8e 	bl	d0044918 <strcmp>
d00409fc:	2800      	cmp	r0, #0
d00409fe:	f000 80cb 	beq.w	d0040b98 <parse_translator_switch.part.0+0x4c8>
d0040a02:	4949      	ldr	r1, [pc, #292]	; (d0040b28 <parse_translator_switch.part.0+0x458>)
d0040a04:	4620      	mov	r0, r4
d0040a06:	f003 ff87 	bl	d0044918 <strcmp>
d0040a0a:	2800      	cmp	r0, #0
d0040a0c:	f000 80c4 	beq.w	d0040b98 <parse_translator_switch.part.0+0x4c8>
d0040a10:	4946      	ldr	r1, [pc, #280]	; (d0040b2c <parse_translator_switch.part.0+0x45c>)
d0040a12:	4620      	mov	r0, r4
d0040a14:	f003 ff80 	bl	d0044918 <strcmp>
d0040a18:	2800      	cmp	r0, #0
d0040a1a:	f000 80bd 	beq.w	d0040b98 <parse_translator_switch.part.0+0x4c8>
d0040a1e:	4944      	ldr	r1, [pc, #272]	; (d0040b30 <parse_translator_switch.part.0+0x460>)
d0040a20:	4620      	mov	r0, r4
d0040a22:	f003 ff79 	bl	d0044918 <strcmp>
d0040a26:	2800      	cmp	r0, #0
d0040a28:	f000 80b6 	beq.w	d0040b98 <parse_translator_switch.part.0+0x4c8>
d0040a2c:	4941      	ldr	r1, [pc, #260]	; (d0040b34 <parse_translator_switch.part.0+0x464>)
d0040a2e:	4620      	mov	r0, r4
d0040a30:	f003 ff72 	bl	d0044918 <strcmp>
d0040a34:	2800      	cmp	r0, #0
d0040a36:	f000 80af 	beq.w	d0040b98 <parse_translator_switch.part.0+0x4c8>
d0040a3a:	493f      	ldr	r1, [pc, #252]	; (d0040b38 <parse_translator_switch.part.0+0x468>)
d0040a3c:	4620      	mov	r0, r4
d0040a3e:	f003 ff6b 	bl	d0044918 <strcmp>
d0040a42:	2800      	cmp	r0, #0
d0040a44:	f000 8085 	beq.w	d0040b52 <parse_translator_switch.part.0+0x482>
d0040a48:	493c      	ldr	r1, [pc, #240]	; (d0040b3c <parse_translator_switch.part.0+0x46c>)
d0040a4a:	4620      	mov	r0, r4
d0040a4c:	f003 ff64 	bl	d0044918 <strcmp>
d0040a50:	2800      	cmp	r0, #0
d0040a52:	d07e      	beq.n	d0040b52 <parse_translator_switch.part.0+0x482>
d0040a54:	493a      	ldr	r1, [pc, #232]	; (d0040b40 <parse_translator_switch.part.0+0x470>)
d0040a56:	4620      	mov	r0, r4
d0040a58:	f003 ff5e 	bl	d0044918 <strcmp>
d0040a5c:	2800      	cmp	r0, #0
d0040a5e:	d078      	beq.n	d0040b52 <parse_translator_switch.part.0+0x482>
d0040a60:	e070      	b.n	d0040b44 <parse_translator_switch.part.0+0x474>
d0040a62:	bf00      	nop
d0040a64:	d0045a90 	.word	0xd0045a90
d0040a68:	d0045a98 	.word	0xd0045a98
d0040a6c:	d0045aa4 	.word	0xd0045aa4
d0040a70:	d0045aa8 	.word	0xd0045aa8
d0040a74:	d0045aac 	.word	0xd0045aac
d0040a78:	d0045ab8 	.word	0xd0045ab8
d0040a7c:	d0045ac4 	.word	0xd0045ac4
d0040a80:	d0045ad4 	.word	0xd0045ad4
d0040a84:	d0045ae4 	.word	0xd0045ae4
d0040a88:	d0045b00 	.word	0xd0045b00
d0040a8c:	d0045b08 	.word	0xd0045b08
d0040a90:	d0045b10 	.word	0xd0045b10
d0040a94:	d0045b20 	.word	0xd0045b20
d0040a98:	d0045b30 	.word	0xd0045b30
d0040a9c:	d0045b48 	.word	0xd0045b48
d0040aa0:	d0045b50 	.word	0xd0045b50
d0040aa4:	d0045b58 	.word	0xd0045b58
d0040aa8:	d0045b64 	.word	0xd0045b64
d0040aac:	d0045b70 	.word	0xd0045b70
d0040ab0:	d0045b84 	.word	0xd0045b84
d0040ab4:	d0045b98 	.word	0xd0045b98
d0040ab8:	d0045ba0 	.word	0xd0045ba0
d0040abc:	d0045ba8 	.word	0xd0045ba8
d0040ac0:	d0045bb0 	.word	0xd0045bb0
d0040ac4:	d0045bb8 	.word	0xd0045bb8
d0040ac8:	d0045bc0 	.word	0xd0045bc0
d0040acc:	d0045bd0 	.word	0xd0045bd0
d0040ad0:	d0045be0 	.word	0xd0045be0
d0040ad4:	d0045be8 	.word	0xd0045be8
d0040ad8:	d0045bf0 	.word	0xd0045bf0
d0040adc:	d0045bf4 	.word	0xd0045bf4
d0040ae0:	d0045bf8 	.word	0xd0045bf8
d0040ae4:	d0045c00 	.word	0xd0045c00
d0040ae8:	d0045c08 	.word	0xd0045c08
d0040aec:	d0045c10 	.word	0xd0045c10
d0040af0:	d0045c18 	.word	0xd0045c18
d0040af4:	d0045c20 	.word	0xd0045c20
d0040af8:	d0045c28 	.word	0xd0045c28
d0040afc:	d0045c30 	.word	0xd0045c30
d0040b00:	d0045c38 	.word	0xd0045c38
d0040b04:	d0045c40 	.word	0xd0045c40
d0040b08:	d0045c48 	.word	0xd0045c48
d0040b0c:	d0045c50 	.word	0xd0045c50
d0040b10:	d0045c58 	.word	0xd0045c58
d0040b14:	d0045c60 	.word	0xd0045c60
d0040b18:	d0045c68 	.word	0xd0045c68
d0040b1c:	d0045c70 	.word	0xd0045c70
d0040b20:	d0045c78 	.word	0xd0045c78
d0040b24:	d0045c80 	.word	0xd0045c80
d0040b28:	d0045c88 	.word	0xd0045c88
d0040b2c:	d0045c90 	.word	0xd0045c90
d0040b30:	d0045c98 	.word	0xd0045c98
d0040b34:	d0045ca0 	.word	0xd0045ca0
d0040b38:	d0045ca8 	.word	0xd0045ca8
d0040b3c:	d0045cb0 	.word	0xd0045cb0
d0040b40:	d0045cb8 	.word	0xd0045cb8
d0040b44:	4620      	mov	r0, r4
d0040b46:	491e      	ldr	r1, [pc, #120]	; (d0040bc0 <parse_translator_switch.part.0+0x4f0>)
d0040b48:	f003 fee6 	bl	d0044918 <strcmp>
d0040b4c:	2800      	cmp	r0, #0
d0040b4e:	f47f adf2 	bne.w	d0040736 <parse_translator_switch.part.0+0x66>
d0040b52:	2318      	movs	r3, #24
d0040b54:	2001      	movs	r0, #1
d0040b56:	7033      	strb	r3, [r6, #0]
d0040b58:	bd70      	pop	{r4, r5, r6, pc}
d0040b5a:	2300      	movs	r3, #0
d0040b5c:	2001      	movs	r0, #1
d0040b5e:	7033      	strb	r3, [r6, #0]
d0040b60:	bd70      	pop	{r4, r5, r6, pc}
d0040b62:	78a3      	ldrb	r3, [r4, #2]
d0040b64:	f003 03df 	and.w	r3, r3, #223	; 0xdf
d0040b68:	2b53      	cmp	r3, #83	; 0x53
d0040b6a:	f47f adf3 	bne.w	d0040754 <parse_translator_switch.part.0+0x84>
d0040b6e:	78e3      	ldrb	r3, [r4, #3]
d0040b70:	f003 03df 	and.w	r3, r3, #223	; 0xdf
d0040b74:	2b46      	cmp	r3, #70	; 0x46
d0040b76:	f47f aded 	bne.w	d0040754 <parse_translator_switch.part.0+0x84>
d0040b7a:	3404      	adds	r4, #4
d0040b7c:	e5c3      	b.n	d0040706 <parse_translator_switch.part.0+0x36>
d0040b7e:	2302      	movs	r3, #2
d0040b80:	2001      	movs	r0, #1
d0040b82:	7033      	strb	r3, [r6, #0]
d0040b84:	bd70      	pop	{r4, r5, r6, pc}
d0040b86:	4631      	mov	r1, r6
d0040b88:	b2e8      	uxtb	r0, r5
d0040b8a:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
d0040b8e:	f002 bed1 	b.w	d0043934 <midi_translator_profile_for_soundfont_index>
d0040b92:	2001      	movs	r0, #1
d0040b94:	7030      	strb	r0, [r6, #0]
d0040b96:	bd70      	pop	{r4, r5, r6, pc}
d0040b98:	2307      	movs	r3, #7
d0040b9a:	2001      	movs	r0, #1
d0040b9c:	7033      	strb	r3, [r6, #0]
d0040b9e:	bd70      	pop	{r4, r5, r6, pc}
d0040ba0:	2306      	movs	r3, #6
d0040ba2:	2001      	movs	r0, #1
d0040ba4:	7033      	strb	r3, [r6, #0]
d0040ba6:	bd70      	pop	{r4, r5, r6, pc}
d0040ba8:	2305      	movs	r3, #5
d0040baa:	2001      	movs	r0, #1
d0040bac:	7033      	strb	r3, [r6, #0]
d0040bae:	bd70      	pop	{r4, r5, r6, pc}
d0040bb0:	2304      	movs	r3, #4
d0040bb2:	2001      	movs	r0, #1
d0040bb4:	7033      	strb	r3, [r6, #0]
d0040bb6:	bd70      	pop	{r4, r5, r6, pc}
d0040bb8:	2303      	movs	r3, #3
d0040bba:	2001      	movs	r0, #1
d0040bbc:	7033      	strb	r3, [r6, #0]
d0040bbe:	bd70      	pop	{r4, r5, r6, pc}
d0040bc0:	d0045cc0 	.word	0xd0045cc0

d0040bc4 <read_translator_config_path>:
d0040bc4:	b5f0      	push	{r4, r5, r6, r7, lr}
d0040bc6:	4c3e      	ldr	r4, [pc, #248]	; (d0040cc0 <read_translator_config_path+0xfc>)
d0040bc8:	460e      	mov	r6, r1
d0040bca:	4601      	mov	r1, r0
d0040bcc:	b08f      	sub	sp, #60	; 0x3c
d0040bce:	7925      	ldrb	r5, [r4, #4]
d0040bd0:	f04f 0e00 	mov.w	lr, #0
d0040bd4:	7963      	ldrb	r3, [r4, #5]
d0040bd6:	4617      	mov	r7, r2
d0040bd8:	f894 c006 	ldrb.w	ip, [r4, #6]
d0040bdc:	2201      	movs	r2, #1
d0040bde:	ea45 2303 	orr.w	r3, r5, r3, lsl #8
d0040be2:	79e0      	ldrb	r0, [r4, #7]
d0040be4:	f8cd e004 	str.w	lr, [sp, #4]
d0040be8:	ea43 430c 	orr.w	r3, r3, ip, lsl #16
d0040bec:	ea43 6300 	orr.w	r3, r3, r0, lsl #24
d0040bf0:	4610      	mov	r0, r2
d0040bf2:	681b      	ldr	r3, [r3, #0]
d0040bf4:	681b      	ldr	r3, [r3, #0]
d0040bf6:	4798      	blx	r3
d0040bf8:	7038      	strb	r0, [r7, #0]
d0040bfa:	2800      	cmp	r0, #0
d0040bfc:	d158      	bne.n	d0040cb0 <read_translator_config_path+0xec>
d0040bfe:	7923      	ldrb	r3, [r4, #4]
d0040c00:	2001      	movs	r0, #1
d0040c02:	7962      	ldrb	r2, [r4, #5]
d0040c04:	79a1      	ldrb	r1, [r4, #6]
d0040c06:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0040c0a:	79e2      	ldrb	r2, [r4, #7]
d0040c0c:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0040c10:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0040c14:	681b      	ldr	r3, [r3, #0]
d0040c16:	685b      	ldr	r3, [r3, #4]
d0040c18:	4798      	blx	r3
d0040c1a:	7927      	ldrb	r7, [r4, #4]
d0040c1c:	7965      	ldrb	r5, [r4, #5]
d0040c1e:	4602      	mov	r2, r0
d0040c20:	281f      	cmp	r0, #31
d0040c22:	79a0      	ldrb	r0, [r4, #6]
d0040c24:	ea47 2505 	orr.w	r5, r7, r5, lsl #8
d0040c28:	79e7      	ldrb	r7, [r4, #7]
d0040c2a:	bf28      	it	cs
d0040c2c:	221f      	movcs	r2, #31
d0040c2e:	ab01      	add	r3, sp, #4
d0040c30:	ea45 4500 	orr.w	r5, r5, r0, lsl #16
d0040c34:	a906      	add	r1, sp, #24
d0040c36:	2001      	movs	r0, #1
d0040c38:	ea45 6507 	orr.w	r5, r5, r7, lsl #24
d0040c3c:	682d      	ldr	r5, [r5, #0]
d0040c3e:	68ad      	ldr	r5, [r5, #8]
d0040c40:	47a8      	blx	r5
d0040c42:	7923      	ldrb	r3, [r4, #4]
d0040c44:	7962      	ldrb	r2, [r4, #5]
d0040c46:	4605      	mov	r5, r0
d0040c48:	79a1      	ldrb	r1, [r4, #6]
d0040c4a:	2001      	movs	r0, #1
d0040c4c:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0040c50:	79e2      	ldrb	r2, [r4, #7]
d0040c52:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0040c56:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0040c5a:	681b      	ldr	r3, [r3, #0]
d0040c5c:	68db      	ldr	r3, [r3, #12]
d0040c5e:	4798      	blx	r3
d0040c60:	bb35      	cbnz	r5, d0040cb0 <read_translator_config_path+0xec>
d0040c62:	9b01      	ldr	r3, [sp, #4]
d0040c64:	b323      	cbz	r3, d0040cb0 <read_translator_config_path+0xec>
d0040c66:	aa0e      	add	r2, sp, #56	; 0x38
d0040c68:	4629      	mov	r1, r5
d0040c6a:	4816      	ldr	r0, [pc, #88]	; (d0040cc4 <read_translator_config_path+0x100>)
d0040c6c:	4413      	add	r3, r2
d0040c6e:	f803 5c20 	strb.w	r5, [r3, #-32]
d0040c72:	ab0e      	add	r3, sp, #56	; 0x38
d0040c74:	1c6c      	adds	r4, r5, #1
d0040c76:	195f      	adds	r7, r3, r5
d0040c78:	fa53 f381 	uxtab	r3, r3, r1
d0040c7c:	f813 2c20 	ldrb.w	r2, [r3, #-32]
d0040c80:	f1a2 0309 	sub.w	r3, r2, #9
d0040c84:	b152      	cbz	r2, d0040c9c <read_translator_config_path+0xd8>
d0040c86:	2d0e      	cmp	r5, #14
d0040c88:	b2db      	uxtb	r3, r3
d0040c8a:	d807      	bhi.n	d0040c9c <read_translator_config_path+0xd8>
d0040c8c:	2b17      	cmp	r3, #23
d0040c8e:	fa20 fc03 	lsr.w	ip, r0, r3
d0040c92:	d810      	bhi.n	d0040cb6 <read_translator_config_path+0xf2>
d0040c94:	f01c 0f01 	tst.w	ip, #1
d0040c98:	d00d      	beq.n	d0040cb6 <read_translator_config_path+0xf2>
d0040c9a:	b17d      	cbz	r5, d0040cbc <read_translator_config_path+0xf8>
d0040c9c:	ab0e      	add	r3, sp, #56	; 0x38
d0040c9e:	4631      	mov	r1, r6
d0040ca0:	a802      	add	r0, sp, #8
d0040ca2:	441d      	add	r5, r3
d0040ca4:	2300      	movs	r3, #0
d0040ca6:	f805 3c30 	strb.w	r3, [r5, #-48]
d0040caa:	f7ff fd11 	bl	d00406d0 <parse_translator_switch.part.0>
d0040cae:	e000      	b.n	d0040cb2 <read_translator_config_path+0xee>
d0040cb0:	2000      	movs	r0, #0
d0040cb2:	b00f      	add	sp, #60	; 0x3c
d0040cb4:	bdf0      	pop	{r4, r5, r6, r7, pc}
d0040cb6:	b2e5      	uxtb	r5, r4
d0040cb8:	f807 2c30 	strb.w	r2, [r7, #-48]
d0040cbc:	3101      	adds	r1, #1
d0040cbe:	e7d8      	b.n	d0040c72 <read_translator_config_path+0xae>
d0040cc0:	2001f000 	.word	0x2001f000
d0040cc4:	00800013 	.word	0x00800013

d0040cc8 <find_arg.part.0>:
d0040cc8:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d0040cca:	1e06      	subs	r6, r0, #0
d0040ccc:	dd0c      	ble.n	d0040ce8 <find_arg.part.0+0x20>
d0040cce:	4617      	mov	r7, r2
d0040cd0:	1f0d      	subs	r5, r1, #4
d0040cd2:	2400      	movs	r4, #0
d0040cd4:	f855 0f04 	ldr.w	r0, [r5, #4]!
d0040cd8:	3401      	adds	r4, #1
d0040cda:	4639      	mov	r1, r7
d0040cdc:	b110      	cbz	r0, d0040ce4 <find_arg.part.0+0x1c>
d0040cde:	f003 fe1b 	bl	d0044918 <strcmp>
d0040ce2:	b118      	cbz	r0, d0040cec <find_arg.part.0+0x24>
d0040ce4:	42b4      	cmp	r4, r6
d0040ce6:	d1f5      	bne.n	d0040cd4 <find_arg.part.0+0xc>
d0040ce8:	2000      	movs	r0, #0
d0040cea:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d0040cec:	2001      	movs	r0, #1
d0040cee:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}

d0040cf0 <midi_wait_for_synth_ready.part.0>:
d0040cf0:	b538      	push	{r3, r4, r5, lr}
d0040cf2:	f44f 74fa 	mov.w	r4, #500	; 0x1f4
d0040cf6:	4d09      	ldr	r5, [pc, #36]	; (d0040d1c <midi_wait_for_synth_ready.part.0+0x2c>)
d0040cf8:	7f28      	ldrb	r0, [r5, #28]
d0040cfa:	3c01      	subs	r4, #1
d0040cfc:	7f69      	ldrb	r1, [r5, #29]
d0040cfe:	7faa      	ldrb	r2, [r5, #30]
d0040d00:	b2a4      	uxth	r4, r4
d0040d02:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d0040d06:	7feb      	ldrb	r3, [r5, #31]
d0040d08:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d0040d0c:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0040d10:	699b      	ldr	r3, [r3, #24]
d0040d12:	4798      	blx	r3
d0040d14:	2c00      	cmp	r4, #0
d0040d16:	d1ef      	bne.n	d0040cf8 <midi_wait_for_synth_ready.part.0+0x8>
d0040d18:	bd38      	pop	{r3, r4, r5, pc}
d0040d1a:	bf00      	nop
d0040d1c:	2001f000 	.word	0x2001f000

d0040d20 <write_translator_config.constprop.0>:
d0040d20:	e92d 43f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
d0040d24:	b083      	sub	sp, #12
d0040d26:	2300      	movs	r3, #0
d0040d28:	460d      	mov	r5, r1
d0040d2a:	4604      	mov	r4, r0
d0040d2c:	a901      	add	r1, sp, #4
d0040d2e:	f88d 3004 	strb.w	r3, [sp, #4]
d0040d32:	f002 fe09 	bl	d0043948 <midi_translator_profile_soundfont_index>
d0040d36:	2800      	cmp	r0, #0
d0040d38:	d156      	bne.n	d0040de8 <write_translator_config.constprop.0+0xc8>
d0040d3a:	1e60      	subs	r0, r4, #1
d0040d3c:	b2c0      	uxtb	r0, r0
d0040d3e:	2817      	cmp	r0, #23
d0040d40:	d824      	bhi.n	d0040d8c <write_translator_config.constprop.0+0x6c>
d0040d42:	4b2d      	ldr	r3, [pc, #180]	; (d0040df8 <write_translator_config.constprop.0+0xd8>)
d0040d44:	f853 7020 	ldr.w	r7, [r3, r0, lsl #2]
d0040d48:	4c2c      	ldr	r4, [pc, #176]	; (d0040dfc <write_translator_config.constprop.0+0xdc>)
d0040d4a:	4638      	mov	r0, r7
d0040d4c:	f003 fdee 	bl	d004492c <strlen>
d0040d50:	f04f 0800 	mov.w	r8, #0
d0040d54:	7923      	ldrb	r3, [r4, #4]
d0040d56:	220a      	movs	r2, #10
d0040d58:	f894 c005 	ldrb.w	ip, [r4, #5]
d0040d5c:	4606      	mov	r6, r0
d0040d5e:	79a1      	ldrb	r1, [r4, #6]
d0040d60:	2001      	movs	r0, #1
d0040d62:	ea43 230c 	orr.w	r3, r3, ip, lsl #8
d0040d66:	f894 c007 	ldrb.w	ip, [r4, #7]
d0040d6a:	f8cd 8004 	str.w	r8, [sp, #4]
d0040d6e:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0040d72:	4923      	ldr	r1, [pc, #140]	; (d0040e00 <write_translator_config.constprop.0+0xe0>)
d0040d74:	ea43 630c 	orr.w	r3, r3, ip, lsl #24
d0040d78:	681b      	ldr	r3, [r3, #0]
d0040d7a:	681b      	ldr	r3, [r3, #0]
d0040d7c:	4798      	blx	r3
d0040d7e:	4681      	mov	r9, r0
d0040d80:	7028      	strb	r0, [r5, #0]
d0040d82:	b128      	cbz	r0, d0040d90 <write_translator_config.constprop.0+0x70>
d0040d84:	4640      	mov	r0, r8
d0040d86:	b003      	add	sp, #12
d0040d88:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
d0040d8c:	4f1d      	ldr	r7, [pc, #116]	; (d0040e04 <write_translator_config.constprop.0+0xe4>)
d0040d8e:	e7db      	b.n	d0040d48 <write_translator_config.constprop.0+0x28>
d0040d90:	7920      	ldrb	r0, [r4, #4]
d0040d92:	4639      	mov	r1, r7
d0040d94:	f894 c005 	ldrb.w	ip, [r4, #5]
d0040d98:	ab01      	add	r3, sp, #4
d0040d9a:	f894 e006 	ldrb.w	lr, [r4, #6]
d0040d9e:	4632      	mov	r2, r6
d0040da0:	ea40 270c 	orr.w	r7, r0, ip, lsl #8
d0040da4:	f894 c007 	ldrb.w	ip, [r4, #7]
d0040da8:	2001      	movs	r0, #1
d0040daa:	ea47 470e 	orr.w	r7, r7, lr, lsl #16
d0040dae:	ea47 670c 	orr.w	r7, r7, ip, lsl #24
d0040db2:	683f      	ldr	r7, [r7, #0]
d0040db4:	693f      	ldr	r7, [r7, #16]
d0040db6:	47b8      	blx	r7
d0040db8:	7923      	ldrb	r3, [r4, #4]
d0040dba:	7962      	ldrb	r2, [r4, #5]
d0040dbc:	4607      	mov	r7, r0
d0040dbe:	79a1      	ldrb	r1, [r4, #6]
d0040dc0:	2001      	movs	r0, #1
d0040dc2:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0040dc6:	79e2      	ldrb	r2, [r4, #7]
d0040dc8:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0040dcc:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0040dd0:	681b      	ldr	r3, [r3, #0]
d0040dd2:	68db      	ldr	r3, [r3, #12]
d0040dd4:	4798      	blx	r3
d0040dd6:	702f      	strb	r7, [r5, #0]
d0040dd8:	b10f      	cbz	r7, d0040dde <write_translator_config.constprop.0+0xbe>
d0040dda:	4648      	mov	r0, r9
d0040ddc:	e7d3      	b.n	d0040d86 <write_translator_config.constprop.0+0x66>
d0040dde:	9801      	ldr	r0, [sp, #4]
d0040de0:	1b83      	subs	r3, r0, r6
d0040de2:	4258      	negs	r0, r3
d0040de4:	4158      	adcs	r0, r3
d0040de6:	e7ce      	b.n	d0040d86 <write_translator_config.constprop.0+0x66>
d0040de8:	f89d 2004 	ldrb.w	r2, [sp, #4]
d0040dec:	4906      	ldr	r1, [pc, #24]	; (d0040e08 <write_translator_config.constprop.0+0xe8>)
d0040dee:	4807      	ldr	r0, [pc, #28]	; (d0040e0c <write_translator_config.constprop.0+0xec>)
d0040df0:	4f06      	ldr	r7, [pc, #24]	; (d0040e0c <write_translator_config.constprop.0+0xec>)
d0040df2:	f003 fd71 	bl	d00448d8 <siprintf>
d0040df6:	e7a7      	b.n	d0040d48 <write_translator_config.constprop.0+0x28>
d0040df8:	d00460bc 	.word	0xd00460bc
d0040dfc:	2001f000 	.word	0x2001f000
d0040e00:	d0045cd8 	.word	0xd0045cd8
d0040e04:	d0045cc8 	.word	0xd0045cc8
d0040e08:	d0045cd0 	.word	0xd0045cd0
d0040e0c:	d0046da0 	.word	0xd0046da0

d0040e10 <find_translator_arg.constprop.0>:
d0040e10:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d0040e12:	1e06      	subs	r6, r0, #0
d0040e14:	dd0c      	ble.n	d0040e30 <find_translator_arg.constprop.0+0x20>
d0040e16:	4617      	mov	r7, r2
d0040e18:	1f0d      	subs	r5, r1, #4
d0040e1a:	2400      	movs	r4, #0
d0040e1c:	f855 0f04 	ldr.w	r0, [r5, #4]!
d0040e20:	3401      	adds	r4, #1
d0040e22:	4639      	mov	r1, r7
d0040e24:	b110      	cbz	r0, d0040e2c <find_translator_arg.constprop.0+0x1c>
d0040e26:	f7ff fc53 	bl	d00406d0 <parse_translator_switch.part.0>
d0040e2a:	b910      	cbnz	r0, d0040e32 <find_translator_arg.constprop.0+0x22>
d0040e2c:	42b4      	cmp	r4, r6
d0040e2e:	d1f5      	bne.n	d0040e1c <find_translator_arg.constprop.0+0xc>
d0040e30:	2000      	movs	r0, #0
d0040e32:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}

d0040e34 <visualizer_draw_grid_full>:
d0040e34:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0040e38:	2500      	movs	r5, #0
d0040e3a:	b083      	sub	sp, #12
d0040e3c:	4c65      	ldr	r4, [pc, #404]	; (d0040fd4 <visualizer_draw_grid_full+0x1a0>)
d0040e3e:	f64e 7640 	movw	r6, #61248	; 0xef40
d0040e42:	09e8      	lsrs	r0, r5, #7
d0040e44:	6823      	ldr	r3, [r4, #0]
d0040e46:	f44f 72a0 	mov.w	r2, #320	; 0x140
d0040e4a:	2103      	movs	r1, #3
d0040e4c:	3008      	adds	r0, #8
d0040e4e:	b287      	uxth	r7, r0
d0040e50:	b133      	cbz	r3, d0040e60 <visualizer_draw_grid_full+0x2c>
d0040e52:	6820      	ldr	r0, [r4, #0]
d0040e54:	8923      	ldrh	r3, [r4, #8]
d0040e56:	b29b      	uxth	r3, r3
d0040e58:	fb03 0007 	mla	r0, r3, r7, r0
d0040e5c:	f003 fb2e 	bl	d00444bc <memset>
d0040e60:	6823      	ldr	r3, [r4, #0]
d0040e62:	f44f 72a0 	mov.w	r2, #320	; 0x140
d0040e66:	2103      	movs	r1, #3
d0040e68:	b143      	cbz	r3, d0040e7c <visualizer_draw_grid_full+0x48>
d0040e6a:	6823      	ldr	r3, [r4, #0]
d0040e6c:	8920      	ldrh	r0, [r4, #8]
d0040e6e:	b280      	uxth	r0, r0
d0040e70:	fb00 3007 	mla	r0, r0, r7, r3
d0040e74:	f500 70a0 	add.w	r0, r0, #320	; 0x140
d0040e78:	f003 fb20 	bl	d00444bc <memset>
d0040e7c:	f505 55ae 	add.w	r5, r5, #5568	; 0x15c0
d0040e80:	42b5      	cmp	r5, r6
d0040e82:	d1de      	bne.n	d0040e42 <visualizer_draw_grid_full+0xe>
d0040e84:	f44f 75e8 	mov.w	r5, #464	; 0x1d0
d0040e88:	2701      	movs	r7, #1
d0040e8a:	4e53      	ldr	r6, [pc, #332]	; (d0040fd8 <visualizer_draw_grid_full+0x1a4>)
d0040e8c:	fba6 2307 	umull	r2, r3, r6, r7
d0040e90:	08db      	lsrs	r3, r3, #3
d0040e92:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d0040e96:	eba7 0383 	sub.w	r3, r7, r3, lsl #2
d0040e9a:	b2db      	uxtb	r3, r3
d0040e9c:	3b01      	subs	r3, #1
d0040e9e:	2b09      	cmp	r3, #9
d0040ea0:	d824      	bhi.n	d0040eec <visualizer_draw_grid_full+0xb8>
d0040ea2:	e8df f003 	tbb	[pc, r3]
d0040ea6:	2305      	.short	0x2305
d0040ea8:	05232305 	.word	0x05232305
d0040eac:	05230523 	.word	0x05230523
d0040eb0:	09e8      	lsrs	r0, r5, #7
d0040eb2:	6823      	ldr	r3, [r4, #0]
d0040eb4:	f44f 72a0 	mov.w	r2, #320	; 0x140
d0040eb8:	2102      	movs	r1, #2
d0040eba:	3008      	adds	r0, #8
d0040ebc:	fa1f f880 	uxth.w	r8, r0
d0040ec0:	b133      	cbz	r3, d0040ed0 <visualizer_draw_grid_full+0x9c>
d0040ec2:	6820      	ldr	r0, [r4, #0]
d0040ec4:	8923      	ldrh	r3, [r4, #8]
d0040ec6:	b29b      	uxth	r3, r3
d0040ec8:	fb03 0008 	mla	r0, r3, r8, r0
d0040ecc:	f003 faf6 	bl	d00444bc <memset>
d0040ed0:	6823      	ldr	r3, [r4, #0]
d0040ed2:	f44f 72a0 	mov.w	r2, #320	; 0x140
d0040ed6:	2102      	movs	r1, #2
d0040ed8:	b143      	cbz	r3, d0040eec <visualizer_draw_grid_full+0xb8>
d0040eda:	6823      	ldr	r3, [r4, #0]
d0040edc:	8920      	ldrh	r0, [r4, #8]
d0040ede:	b280      	uxth	r0, r0
d0040ee0:	fb00 3008 	mla	r0, r0, r8, r3
d0040ee4:	f500 70a0 	add.w	r0, r0, #320	; 0x140
d0040ee8:	f003 fae8 	bl	d00444bc <memset>
d0040eec:	3701      	adds	r7, #1
d0040eee:	f505 75e8 	add.w	r5, r5, #464	; 0x1d0
d0040ef2:	b2ff      	uxtb	r7, r7
d0040ef4:	2f80      	cmp	r7, #128	; 0x80
d0040ef6:	d1c9      	bne.n	d0040e8c <visualizer_draw_grid_full+0x58>
d0040ef8:	4b38      	ldr	r3, [pc, #224]	; (d0040fdc <visualizer_draw_grid_full+0x1a8>)
d0040efa:	2500      	movs	r5, #0
d0040efc:	4e38      	ldr	r6, [pc, #224]	; (d0040fe0 <visualizer_draw_grid_full+0x1ac>)
d0040efe:	2700      	movs	r7, #0
d0040f00:	681b      	ldr	r3, [r3, #0]
d0040f02:	f240 1001 	movw	r0, #257	; 0x101
d0040f06:	2100      	movs	r1, #0
d0040f08:	f44f 79a0 	mov.w	r9, #320	; 0x140
d0040f0c:	42ab      	cmp	r3, r5
d0040f0e:	bf14      	ite	ne
d0040f10:	4698      	movne	r8, r3
d0040f12:	f44f 5880 	moveq.w	r8, #4096	; 0x1000
d0040f16:	eb16 0608 	adds.w	r6, r6, r8
d0040f1a:	f147 0700 	adc.w	r7, r7, #0
d0040f1e:	ebb0 0208 	subs.w	r2, r0, r8
d0040f22:	f161 0300 	sbc.w	r3, r1, #0
d0040f26:	e9cd 2300 	strd	r2, r3, [sp]
d0040f2a:	4643      	mov	r3, r8
d0040f2c:	46c8      	mov	r8, r9
d0040f2e:	4699      	mov	r9, r3
d0040f30:	464a      	mov	r2, r9
d0040f32:	2300      	movs	r3, #0
d0040f34:	4630      	mov	r0, r6
d0040f36:	4639      	mov	r1, r7
d0040f38:	f003 f92e 	bl	d0044198 <__aeabi_uldivmod>
d0040f3c:	9b00      	ldr	r3, [sp, #0]
d0040f3e:	9a01      	ldr	r2, [sp, #4]
d0040f40:	4684      	mov	ip, r0
d0040f42:	eb13 0a06 	adds.w	sl, r3, r6
d0040f46:	460b      	mov	r3, r1
d0040f48:	fba9 0100 	umull	r0, r1, r9, r0
d0040f4c:	eb42 0b07 	adc.w	fp, r2, r7
d0040f50:	fb09 f303 	mul.w	r3, r9, r3
d0040f54:	2200      	movs	r2, #0
d0040f56:	fb0c 3302 	mla	r3, ip, r2, r3
d0040f5a:	4419      	add	r1, r3
d0040f5c:	4559      	cmp	r1, fp
d0040f5e:	bf08      	it	eq
d0040f60:	4550      	cmpeq	r0, sl
d0040f62:	d229      	bcs.n	d0040fb8 <visualizer_draw_grid_full+0x184>
d0040f64:	f00c 0c03 	and.w	ip, ip, #3
d0040f68:	6823      	ldr	r3, [r4, #0]
d0040f6a:	4594      	cmp	ip, r2
d0040f6c:	bf14      	ite	ne
d0040f6e:	2002      	movne	r0, #2
d0040f70:	2003      	moveq	r0, #3
d0040f72:	b17b      	cbz	r3, d0040f94 <visualizer_draw_grid_full+0x160>
d0040f74:	6823      	ldr	r3, [r4, #0]
d0040f76:	f44f 71e8 	mov.w	r1, #464	; 0x1d0
d0040f7a:	f8b4 c008 	ldrh.w	ip, [r4, #8]
d0040f7e:	fa1f fc8c 	uxth.w	ip, ip
d0040f82:	eb05 0ecc 	add.w	lr, r5, ip, lsl #3
d0040f86:	4473      	add	r3, lr
d0040f88:	3901      	subs	r1, #1
d0040f8a:	7018      	strb	r0, [r3, #0]
d0040f8c:	4463      	add	r3, ip
d0040f8e:	b289      	uxth	r1, r1
d0040f90:	2900      	cmp	r1, #0
d0040f92:	d1f9      	bne.n	d0040f88 <visualizer_draw_grid_full+0x154>
d0040f94:	6823      	ldr	r3, [r4, #0]
d0040f96:	b17b      	cbz	r3, d0040fb8 <visualizer_draw_grid_full+0x184>
d0040f98:	6823      	ldr	r3, [r4, #0]
d0040f9a:	f44f 71e8 	mov.w	r1, #464	; 0x1d0
d0040f9e:	f8b4 c008 	ldrh.w	ip, [r4, #8]
d0040fa2:	fa1f fc8c 	uxth.w	ip, ip
d0040fa6:	eb08 0ecc 	add.w	lr, r8, ip, lsl #3
d0040faa:	4473      	add	r3, lr
d0040fac:	3901      	subs	r1, #1
d0040fae:	7018      	strb	r0, [r3, #0]
d0040fb0:	4463      	add	r3, ip
d0040fb2:	b289      	uxth	r1, r1
d0040fb4:	2900      	cmp	r1, #0
d0040fb6:	d1f9      	bne.n	d0040fac <visualizer_draw_grid_full+0x178>
d0040fb8:	f5b6 7680 	subs.w	r6, r6, #256	; 0x100
d0040fbc:	f105 0501 	add.w	r5, r5, #1
d0040fc0:	f108 0801 	add.w	r8, r8, #1
d0040fc4:	f147 37ff 	adc.w	r7, r7, #4294967295	; 0xffffffff
d0040fc8:	f5b5 7fa0 	cmp.w	r5, #320	; 0x140
d0040fcc:	d1b0      	bne.n	d0040f30 <visualizer_draw_grid_full+0xfc>
d0040fce:	b003      	add	sp, #12
d0040fd0:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0040fd4:	d0046900 	.word	0xd0046900
d0040fd8:	aaaaaaab 	.word	0xaaaaaaab
d0040fdc:	d0046dac 	.word	0xd0046dac
d0040fe0:	00013eff 	.word	0x00013eff

d0040fe4 <visualizer_back_rect_logical.constprop.0>:
d0040fe4:	2900      	cmp	r1, #0
d0040fe6:	f000 8082 	beq.w	d00410ee <visualizer_back_rect_logical.constprop.0+0x10a>
d0040fea:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0040fee:	4605      	mov	r5, r0
d0040ff0:	b083      	sub	sp, #12
d0040ff2:	460f      	mov	r7, r1
d0040ff4:	4691      	mov	r9, r2
d0040ff6:	f8df 80f8 	ldr.w	r8, [pc, #248]	; d00410f0 <visualizer_back_rect_logical.constprop.0+0x10c>
d0040ffa:	f5c5 74a0 	rsb	r4, r5, #320	; 0x140
d0040ffe:	f8d8 3000 	ldr.w	r3, [r8]
d0041002:	b2a4      	uxth	r4, r4
d0041004:	42bc      	cmp	r4, r7
d0041006:	bf28      	it	cs
d0041008:	463c      	movcs	r4, r7
d004100a:	2b00      	cmp	r3, #0
d004100c:	d059      	beq.n	d00410c2 <visualizer_back_rect_logical.constprop.0+0xde>
d004100e:	2c00      	cmp	r4, #0
d0041010:	d061      	beq.n	d00410d6 <visualizer_back_rect_logical.constprop.0+0xf2>
d0041012:	f5b5 7f20 	cmp.w	r5, #640	; 0x280
d0041016:	d220      	bcs.n	d004105a <visualizer_back_rect_logical.constprop.0+0x76>
d0041018:	1963      	adds	r3, r4, r5
d004101a:	f5b3 7f20 	cmp.w	r3, #640	; 0x280
d004101e:	d962      	bls.n	d00410e6 <visualizer_back_rect_logical.constprop.0+0x102>
d0041020:	f5c5 7220 	rsb	r2, r5, #640	; 0x280
d0041024:	b292      	uxth	r2, r2
d0041026:	f8d8 1000 	ldr.w	r1, [r8]
d004102a:	3a01      	subs	r2, #1
d004102c:	f8b8 b008 	ldrh.w	fp, [r8, #8]
d0041030:	f44f 76e8 	mov.w	r6, #464	; 0x1d0
d0041034:	b292      	uxth	r2, r2
d0041036:	fa1f fb8b 	uxth.w	fp, fp
d004103a:	3201      	adds	r2, #1
d004103c:	eb05 03cb 	add.w	r3, r5, fp, lsl #3
d0041040:	eb01 0a03 	add.w	sl, r1, r3
d0041044:	3e01      	subs	r6, #1
d0041046:	4650      	mov	r0, sl
d0041048:	4649      	mov	r1, r9
d004104a:	9201      	str	r2, [sp, #4]
d004104c:	b2b6      	uxth	r6, r6
d004104e:	44da      	add	sl, fp
d0041050:	f003 fa34 	bl	d00444bc <memset>
d0041054:	9a01      	ldr	r2, [sp, #4]
d0041056:	2e00      	cmp	r6, #0
d0041058:	d1f4      	bne.n	d0041044 <visualizer_back_rect_logical.constprop.0+0x60>
d004105a:	f505 75a0 	add.w	r5, r5, #320	; 0x140
d004105e:	f8d8 3000 	ldr.w	r3, [r8]
d0041062:	b2ad      	uxth	r5, r5
d0041064:	b32b      	cbz	r3, d00410b2 <visualizer_back_rect_logical.constprop.0+0xce>
d0041066:	f5b5 7f20 	cmp.w	r5, #640	; 0x280
d004106a:	d222      	bcs.n	d00410b2 <visualizer_back_rect_logical.constprop.0+0xce>
d004106c:	1963      	adds	r3, r4, r5
d004106e:	f5b3 7f20 	cmp.w	r3, #640	; 0x280
d0041072:	d93a      	bls.n	d00410ea <visualizer_back_rect_logical.constprop.0+0x106>
d0041074:	f5c5 7b20 	rsb	fp, r5, #640	; 0x280
d0041078:	fa1f fb8b 	uxth.w	fp, fp
d004107c:	f8d8 3000 	ldr.w	r3, [r8]
d0041080:	f10b 3bff 	add.w	fp, fp, #4294967295	; 0xffffffff
d0041084:	f8b8 a008 	ldrh.w	sl, [r8, #8]
d0041088:	f44f 76e8 	mov.w	r6, #464	; 0x1d0
d004108c:	fa1f fb8b 	uxth.w	fp, fp
d0041090:	fa1f fa8a 	uxth.w	sl, sl
d0041094:	f10b 0b01 	add.w	fp, fp, #1
d0041098:	eb05 05ca 	add.w	r5, r5, sl, lsl #3
d004109c:	441d      	add	r5, r3
d004109e:	3e01      	subs	r6, #1
d00410a0:	4628      	mov	r0, r5
d00410a2:	465a      	mov	r2, fp
d00410a4:	4649      	mov	r1, r9
d00410a6:	b2b6      	uxth	r6, r6
d00410a8:	4455      	add	r5, sl
d00410aa:	f003 fa07 	bl	d00444bc <memset>
d00410ae:	2e00      	cmp	r6, #0
d00410b0:	d1f5      	bne.n	d004109e <visualizer_back_rect_logical.constprop.0+0xba>
d00410b2:	1b3f      	subs	r7, r7, r4
d00410b4:	2500      	movs	r5, #0
d00410b6:	b2bf      	uxth	r7, r7
d00410b8:	2f00      	cmp	r7, #0
d00410ba:	d19e      	bne.n	d0040ffa <visualizer_back_rect_logical.constprop.0+0x16>
d00410bc:	b003      	add	sp, #12
d00410be:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d00410c2:	f8d8 3000 	ldr.w	r3, [r8]
d00410c6:	2c00      	cmp	r4, #0
d00410c8:	d0f3      	beq.n	d00410b2 <visualizer_back_rect_logical.constprop.0+0xce>
d00410ca:	2b00      	cmp	r3, #0
d00410cc:	d0f1      	beq.n	d00410b2 <visualizer_back_rect_logical.constprop.0+0xce>
d00410ce:	f505 75a0 	add.w	r5, r5, #320	; 0x140
d00410d2:	b2ad      	uxth	r5, r5
d00410d4:	e7c7      	b.n	d0041066 <visualizer_back_rect_logical.constprop.0+0x82>
d00410d6:	1b3f      	subs	r7, r7, r4
d00410d8:	f8d8 3000 	ldr.w	r3, [r8]
d00410dc:	2500      	movs	r5, #0
d00410de:	b2bf      	uxth	r7, r7
d00410e0:	2f00      	cmp	r7, #0
d00410e2:	d18a      	bne.n	d0040ffa <visualizer_back_rect_logical.constprop.0+0x16>
d00410e4:	e7ea      	b.n	d00410bc <visualizer_back_rect_logical.constprop.0+0xd8>
d00410e6:	4622      	mov	r2, r4
d00410e8:	e79d      	b.n	d0041026 <visualizer_back_rect_logical.constprop.0+0x42>
d00410ea:	46a3      	mov	fp, r4
d00410ec:	e7c6      	b.n	d004107c <visualizer_back_rect_logical.constprop.0+0x98>
d00410ee:	4770      	bx	lr
d00410f0:	d0046900 	.word	0xd0046900

d00410f4 <midi_translator_send_queued>:
d00410f4:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d00410f8:	4605      	mov	r5, r0
d00410fa:	b085      	sub	sp, #20
d00410fc:	b36a      	cbz	r2, d004115a <midi_translator_send_queued+0x66>
d00410fe:	fab1 f381 	clz	r3, r1
d0041102:	f8df a1ec 	ldr.w	sl, [pc, #492]	; d00412f0 <midi_translator_send_queued+0x1fc>
d0041106:	4617      	mov	r7, r2
d0041108:	b28c      	uxth	r4, r1
d004110a:	095b      	lsrs	r3, r3, #5
d004110c:	f8ba c000 	ldrh.w	ip, [sl]
d0041110:	2800      	cmp	r0, #0
d0041112:	bf08      	it	eq
d0041114:	2301      	moveq	r3, #1
d0041116:	9301      	str	r3, [sp, #4]
d0041118:	2b00      	cmp	r3, #0
d004111a:	d14d      	bne.n	d00411b8 <midi_translator_send_queued+0xc4>
d004111c:	f5cc 6380 	rsb	r3, ip, #1024	; 0x400
d0041120:	b29b      	uxth	r3, r3
d0041122:	429c      	cmp	r4, r3
d0041124:	f200 80ae 	bhi.w	d0041284 <midi_translator_send_queued+0x190>
d0041128:	4b70      	ldr	r3, [pc, #448]	; (d00412ec <midi_translator_send_queued+0x1f8>)
d004112a:	1e45      	subs	r5, r0, #1
d004112c:	9a01      	ldr	r2, [sp, #4]
d004112e:	f8df 91c4 	ldr.w	r9, [pc, #452]	; d00412f4 <midi_translator_send_queued+0x200>
d0041132:	8819      	ldrh	r1, [r3, #0]
d0041134:	3201      	adds	r2, #1
d0041136:	f815 6f01 	ldrb.w	r6, [r5, #1]!
d004113a:	1c48      	adds	r0, r1, #1
d004113c:	b292      	uxth	r2, r2
d004113e:	f809 6001 	strb.w	r6, [r9, r1]
d0041142:	f3c0 0109 	ubfx	r1, r0, #0, #10
d0041146:	4294      	cmp	r4, r2
d0041148:	d8f4      	bhi.n	d0041134 <midi_translator_send_queued+0x40>
d004114a:	4464      	add	r4, ip
d004114c:	4638      	mov	r0, r7
d004114e:	8019      	strh	r1, [r3, #0]
d0041150:	f8aa 4000 	strh.w	r4, [sl]
d0041154:	b005      	add	sp, #20
d0041156:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d004115a:	b28c      	uxth	r4, r1
d004115c:	b340      	cbz	r0, d00411b0 <midi_translator_send_queued+0xbc>
d004115e:	fab4 f284 	clz	r2, r4
d0041162:	0952      	lsrs	r2, r2, #5
d0041164:	b324      	cbz	r4, d00411b0 <midi_translator_send_queued+0xbc>
d0041166:	f8df a188 	ldr.w	sl, [pc, #392]	; d00412f0 <midi_translator_send_queued+0x1fc>
d004116a:	f8ba 7000 	ldrh.w	r7, [sl]
d004116e:	f5c7 6380 	rsb	r3, r7, #1024	; 0x400
d0041172:	b29b      	uxth	r3, r3
d0041174:	429c      	cmp	r4, r3
d0041176:	d81b      	bhi.n	d00411b0 <midi_translator_send_queued+0xbc>
d0041178:	4b5c      	ldr	r3, [pc, #368]	; (d00412ec <midi_translator_send_queued+0x1f8>)
d004117a:	1e45      	subs	r5, r0, #1
d004117c:	f8df 9174 	ldr.w	r9, [pc, #372]	; d00412f4 <midi_translator_send_queued+0x200>
d0041180:	881e      	ldrh	r6, [r3, #0]
d0041182:	3201      	adds	r2, #1
d0041184:	f815 0f01 	ldrb.w	r0, [r5, #1]!
d0041188:	1c71      	adds	r1, r6, #1
d004118a:	b292      	uxth	r2, r2
d004118c:	f809 0006 	strb.w	r0, [r9, r6]
d0041190:	f3c1 0609 	ubfx	r6, r1, #0, #10
d0041194:	4294      	cmp	r4, r2
d0041196:	d8f4      	bhi.n	d0041182 <midi_translator_send_queued+0x8e>
d0041198:	443c      	add	r4, r7
d004119a:	2001      	movs	r0, #1
d004119c:	801e      	strh	r6, [r3, #0]
d004119e:	f8aa 4000 	strh.w	r4, [sl]
d00411a2:	b005      	add	sp, #20
d00411a4:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d00411a8:	b115      	cbz	r5, d00411b0 <midi_translator_send_queued+0xbc>
d00411aa:	2c00      	cmp	r4, #0
d00411ac:	f040 8096 	bne.w	d00412dc <midi_translator_send_queued+0x1e8>
d00411b0:	2000      	movs	r0, #0
d00411b2:	b005      	add	sp, #20
d00411b4:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d00411b8:	f1bc 0f00 	cmp.w	ip, #0
d00411bc:	d0f4      	beq.n	d00411a8 <midi_translator_send_queued+0xb4>
d00411be:	f8df b138 	ldr.w	fp, [pc, #312]	; d00412f8 <midi_translator_send_queued+0x204>
d00411c2:	263c      	movs	r6, #60	; 0x3c
d00411c4:	4b49      	ldr	r3, [pc, #292]	; (d00412ec <midi_translator_send_queued+0x1f8>)
d00411c6:	9402      	str	r4, [sp, #8]
d00411c8:	9503      	str	r5, [sp, #12]
d00411ca:	461c      	mov	r4, r3
d00411cc:	4655      	mov	r5, sl
d00411ce:	f8bb 0000 	ldrh.w	r0, [fp]
d00411d2:	f8df 9120 	ldr.w	r9, [pc, #288]	; d00412f4 <midi_translator_send_queued+0x200>
d00411d6:	46ba      	mov	sl, r7
d00411d8:	f8df 8120 	ldr.w	r8, [pc, #288]	; d00412fc <midi_translator_send_queued+0x208>
d00411dc:	e001      	b.n	d00411e2 <midi_translator_send_queued+0xee>
d00411de:	2e00      	cmp	r6, #0
d00411e0:	d058      	beq.n	d0041294 <midi_translator_send_queued+0x1a0>
d00411e2:	8822      	ldrh	r2, [r4, #0]
d00411e4:	f5c0 6180 	rsb	r1, r0, #1024	; 0x400
d00411e8:	4282      	cmp	r2, r0
d00411ea:	eba2 0200 	sub.w	r2, r2, r0
d00411ee:	b289      	uxth	r1, r1
d00411f0:	4448      	add	r0, r9
d00411f2:	bf88      	it	hi
d00411f4:	b291      	uxthhi	r1, r2
d00411f6:	f898 2014 	ldrb.w	r2, [r8, #20]
d00411fa:	f898 e015 	ldrb.w	lr, [r8, #21]
d00411fe:	42b1      	cmp	r1, r6
d0041200:	ea42 220e 	orr.w	r2, r2, lr, lsl #8
d0041204:	bf28      	it	cs
d0041206:	4631      	movcs	r1, r6
d0041208:	4561      	cmp	r1, ip
d004120a:	bf28      	it	cs
d004120c:	4661      	movcs	r1, ip
d004120e:	f898 c016 	ldrb.w	ip, [r8, #22]
d0041212:	f898 e017 	ldrb.w	lr, [r8, #23]
d0041216:	ea42 4c0c 	orr.w	ip, r2, ip, lsl #16
d004121a:	460f      	mov	r7, r1
d004121c:	ea4c 620e 	orr.w	r2, ip, lr, lsl #24
d0041220:	1bf6      	subs	r6, r6, r7
d0041222:	6812      	ldr	r2, [r2, #0]
d0041224:	b2b6      	uxth	r6, r6
d0041226:	6952      	ldr	r2, [r2, #20]
d0041228:	4790      	blx	r2
d004122a:	f8bb 0000 	ldrh.w	r0, [fp]
d004122e:	882a      	ldrh	r2, [r5, #0]
d0041230:	4438      	add	r0, r7
d0041232:	eba2 0c07 	sub.w	ip, r2, r7
d0041236:	f3c0 0009 	ubfx	r0, r0, #0, #10
d004123a:	fa1f fc8c 	uxth.w	ip, ip
d004123e:	f8ab 0000 	strh.w	r0, [fp]
d0041242:	f8a5 c000 	strh.w	ip, [r5]
d0041246:	f1bc 0f00 	cmp.w	ip, #0
d004124a:	d1c8      	bne.n	d00411de <midi_translator_send_queued+0xea>
d004124c:	9a01      	ldr	r2, [sp, #4]
d004124e:	4657      	mov	r7, sl
d0041250:	4623      	mov	r3, r4
d0041252:	46aa      	mov	sl, r5
d0041254:	9c02      	ldr	r4, [sp, #8]
d0041256:	9d03      	ldr	r5, [sp, #12]
d0041258:	2a00      	cmp	r2, #0
d004125a:	d1a5      	bne.n	d00411a8 <midi_translator_send_queued+0xb4>
d004125c:	4621      	mov	r1, r4
d004125e:	3d01      	subs	r5, #1
d0041260:	881e      	ldrh	r6, [r3, #0]
d0041262:	2200      	movs	r2, #0
d0041264:	3201      	adds	r2, #1
d0041266:	f815 cf01 	ldrb.w	ip, [r5, #1]!
d004126a:	1c70      	adds	r0, r6, #1
d004126c:	b292      	uxth	r2, r2
d004126e:	f809 c006 	strb.w	ip, [r9, r6]
d0041272:	f3c0 0609 	ubfx	r6, r0, #0, #10
d0041276:	4294      	cmp	r4, r2
d0041278:	d8f4      	bhi.n	d0041264 <midi_translator_send_queued+0x170>
d004127a:	4638      	mov	r0, r7
d004127c:	801e      	strh	r6, [r3, #0]
d004127e:	f8aa 1000 	strh.w	r1, [sl]
d0041282:	e796      	b.n	d00411b2 <midi_translator_send_queued+0xbe>
d0041284:	f1bc 0f00 	cmp.w	ip, #0
d0041288:	d199      	bne.n	d00411be <midi_translator_send_queued+0xca>
d004128a:	4621      	mov	r1, r4
d004128c:	4b17      	ldr	r3, [pc, #92]	; (d00412ec <midi_translator_send_queued+0x1f8>)
d004128e:	f8df 9064 	ldr.w	r9, [pc, #100]	; d00412f4 <midi_translator_send_queued+0x200>
d0041292:	e7e4      	b.n	d004125e <midi_translator_send_queued+0x16a>
d0041294:	9801      	ldr	r0, [sp, #4]
d0041296:	4639      	mov	r1, r7
d0041298:	4623      	mov	r3, r4
d004129a:	4657      	mov	r7, sl
d004129c:	9c02      	ldr	r4, [sp, #8]
d004129e:	46aa      	mov	sl, r5
d00412a0:	9d03      	ldr	r5, [sp, #12]
d00412a2:	2800      	cmp	r0, #0
d00412a4:	d180      	bne.n	d00411a8 <midi_translator_send_queued+0xb4>
d00412a6:	f501 6180 	add.w	r1, r1, #1024	; 0x400
d00412aa:	1a8a      	subs	r2, r1, r2
d00412ac:	b292      	uxth	r2, r2
d00412ae:	4294      	cmp	r4, r2
d00412b0:	d917      	bls.n	d00412e2 <midi_translator_send_queued+0x1ee>
d00412b2:	f898 3014 	ldrb.w	r3, [r8, #20]
d00412b6:	4621      	mov	r1, r4
d00412b8:	f898 2015 	ldrb.w	r2, [r8, #21]
d00412bc:	4628      	mov	r0, r5
d00412be:	f898 4016 	ldrb.w	r4, [r8, #22]
d00412c2:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d00412c6:	f898 2017 	ldrb.w	r2, [r8, #23]
d00412ca:	ea43 4304 	orr.w	r3, r3, r4, lsl #16
d00412ce:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00412d2:	681b      	ldr	r3, [r3, #0]
d00412d4:	695b      	ldr	r3, [r3, #20]
d00412d6:	4798      	blx	r3
d00412d8:	4638      	mov	r0, r7
d00412da:	e76a      	b.n	d00411b2 <midi_translator_send_queued+0xbe>
d00412dc:	f8df 801c 	ldr.w	r8, [pc, #28]	; d00412fc <midi_translator_send_queued+0x208>
d00412e0:	e7e7      	b.n	d00412b2 <midi_translator_send_queued+0x1be>
d00412e2:	eb04 010c 	add.w	r1, r4, ip
d00412e6:	b289      	uxth	r1, r1
d00412e8:	e7b9      	b.n	d004125e <midi_translator_send_queued+0x16a>
d00412ea:	bf00      	nop
d00412ec:	d0046996 	.word	0xd0046996
d00412f0:	d0046994 	.word	0xd0046994
d00412f4:	d0046998 	.word	0xd0046998
d00412f8:	d0046d98 	.word	0xd0046d98
d00412fc:	2001f000 	.word	0x2001f000

d0041300 <midi_player_update_us.part.0>:
d0041300:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0041304:	4682      	mov	sl, r0
d0041306:	f8d0 010c 	ldr.w	r0, [r0, #268]	; 0x10c
d004130a:	f04f 0900 	mov.w	r9, #0
d004130e:	b089      	sub	sp, #36	; 0x24
d0041310:	4408      	add	r0, r1
d0041312:	f89a 7100 	ldrb.w	r7, [sl, #256]	; 0x100
d0041316:	e9da 2346 	ldrd	r2, r3, [sl, #280]	; 0x118
d004131a:	f8ca 010c 	str.w	r0, [sl, #268]	; 0x10c
d004131e:	1852      	adds	r2, r2, r1
d0041320:	f143 0300 	adc.w	r3, r3, #0
d0041324:	e9ca 2346 	strd	r2, r3, [sl, #280]	; 0x118
d0041328:	4653      	mov	r3, sl
d004132a:	46ca      	mov	sl, r9
d004132c:	4699      	mov	r9, r3
d004132e:	2f00      	cmp	r7, #0
d0041330:	f000 8230 	beq.w	d0041794 <midi_player_update_us.part.0+0x494>
d0041334:	1e7a      	subs	r2, r7, #1
d0041336:	f109 0110 	add.w	r1, r9, #16
d004133a:	464b      	mov	r3, r9
d004133c:	f04f 35ff 	mov.w	r5, #4294967295	; 0xffffffff
d0041340:	b2d2      	uxtb	r2, r2
d0041342:	2400      	movs	r4, #0
d0041344:	eb01 1102 	add.w	r1, r1, r2, lsl #4
d0041348:	7b5a      	ldrb	r2, [r3, #13]
d004134a:	b12a      	cbz	r2, d0041358 <midi_player_update_us.part.0+0x58>
d004134c:	6898      	ldr	r0, [r3, #8]
d004134e:	b10c      	cbz	r4, d0041354 <midi_player_update_us.part.0+0x54>
d0041350:	42a8      	cmp	r0, r5
d0041352:	d201      	bcs.n	d0041358 <midi_player_update_us.part.0+0x58>
d0041354:	4605      	mov	r5, r0
d0041356:	4614      	mov	r4, r2
d0041358:	3310      	adds	r3, #16
d004135a:	4299      	cmp	r1, r3
d004135c:	d1f4      	bne.n	d0041348 <midi_player_update_us.part.0+0x48>
d004135e:	2c00      	cmp	r4, #0
d0041360:	f000 8218 	beq.w	d0041794 <midi_player_update_us.part.0+0x494>
d0041364:	f8d9 1108 	ldr.w	r1, [r9, #264]	; 0x108
d0041368:	2300      	movs	r3, #0
d004136a:	f8d9 0110 	ldr.w	r0, [r9, #272]	; 0x110
d004136e:	1a6e      	subs	r6, r5, r1
d0041370:	f8d9 4114 	ldr.w	r4, [r9, #276]	; 0x114
d0041374:	2100      	movs	r1, #0
d0041376:	f8b9 2104 	ldrh.w	r2, [r9, #260]	; 0x104
d004137a:	fbe4 0106 	umlal	r0, r1, r4, r6
d004137e:	f002 ff0b 	bl	d0044198 <__aeabi_uldivmod>
d0041382:	f8d9 310c 	ldr.w	r3, [r9, #268]	; 0x10c
d0041386:	4298      	cmp	r0, r3
d0041388:	f200 8209 	bhi.w	d004179e <midi_player_update_us.part.0+0x49e>
d004138c:	1a1b      	subs	r3, r3, r0
d004138e:	2000      	movs	r0, #0
d0041390:	f8c9 2110 	str.w	r2, [r9, #272]	; 0x110
d0041394:	4604      	mov	r4, r0
d0041396:	e9c9 5342 	strd	r5, r3, [r9, #264]	; 0x108
d004139a:	e003      	b.n	d00413a4 <midi_player_update_us.part.0+0xa4>
d004139c:	3401      	adds	r4, #1
d004139e:	b2e4      	uxtb	r4, r4
d00413a0:	42bc      	cmp	r4, r7
d00413a2:	d270      	bcs.n	d0041486 <midi_player_update_us.part.0+0x186>
d00413a4:	eb09 1204 	add.w	r2, r9, r4, lsl #4
d00413a8:	0126      	lsls	r6, r4, #4
d00413aa:	7b55      	ldrb	r5, [r2, #13]
d00413ac:	2d00      	cmp	r5, #0
d00413ae:	d0f5      	beq.n	d004139c <midi_player_update_us.part.0+0x9c>
d00413b0:	6891      	ldr	r1, [r2, #8]
d00413b2:	f8d9 3108 	ldr.w	r3, [r9, #264]	; 0x108
d00413b6:	4299      	cmp	r1, r3
d00413b8:	d1f0      	bne.n	d004139c <midi_player_update_us.part.0+0x9c>
d00413ba:	f859 1006 	ldr.w	r1, [r9, r6]
d00413be:	4637      	mov	r7, r6
d00413c0:	6853      	ldr	r3, [r2, #4]
d00413c2:	9203      	str	r2, [sp, #12]
d00413c4:	4299      	cmp	r1, r3
d00413c6:	d26e      	bcs.n	d00414a6 <midi_player_update_us.part.0+0x1a6>
d00413c8:	f991 0000 	ldrsb.w	r0, [r1]
d00413cc:	f891 b000 	ldrb.w	fp, [r1]
d00413d0:	2800      	cmp	r0, #0
d00413d2:	db6b      	blt.n	d00414ac <midi_player_update_us.part.0+0x1ac>
d00413d4:	f892 b00c 	ldrb.w	fp, [r2, #12]
d00413d8:	f1bb 0f00 	cmp.w	fp, #0
d00413dc:	f000 8121 	beq.w	d0041622 <midi_player_update_us.part.0+0x322>
d00413e0:	f1bb 0fff 	cmp.w	fp, #255	; 0xff
d00413e4:	f000 8120 	beq.w	d0041628 <midi_player_update_us.part.0+0x328>
d00413e8:	f1ab 02f0 	sub.w	r2, fp, #240	; 0xf0
d00413ec:	f1bb 0ff7 	cmp.w	fp, #247	; 0xf7
d00413f0:	fab2 f282 	clz	r2, r2
d00413f4:	ea4f 1252 	mov.w	r2, r2, lsr #5
d00413f8:	9204      	str	r2, [sp, #16]
d00413fa:	d001      	beq.n	d0041400 <midi_player_update_us.part.0+0x100>
d00413fc:	2a00      	cmp	r2, #0
d00413fe:	d05e      	beq.n	d00414be <midi_player_update_us.part.0+0x1be>
d0041400:	f859 1007 	ldr.w	r1, [r9, r7]
d0041404:	428b      	cmp	r3, r1
d0041406:	d92d      	bls.n	d0041464 <midi_player_update_us.part.0+0x164>
d0041408:	1c4a      	adds	r2, r1, #1
d004140a:	f849 2007 	str.w	r2, [r9, r7]
d004140e:	7808      	ldrb	r0, [r1, #0]
d0041410:	f000 087f 	and.w	r8, r0, #127	; 0x7f
d0041414:	0600      	lsls	r0, r0, #24
d0041416:	f140 81a0 	bpl.w	d004175a <midi_player_update_us.part.0+0x45a>
d004141a:	4293      	cmp	r3, r2
d004141c:	d922      	bls.n	d0041464 <midi_player_update_us.part.0+0x164>
d004141e:	1c8a      	adds	r2, r1, #2
d0041420:	f849 2007 	str.w	r2, [r9, r7]
d0041424:	7848      	ldrb	r0, [r1, #1]
d0041426:	f000 0c7f 	and.w	ip, r0, #127	; 0x7f
d004142a:	0600      	lsls	r0, r0, #24
d004142c:	ea4c 18c8 	orr.w	r8, ip, r8, lsl #7
d0041430:	f140 8193 	bpl.w	d004175a <midi_player_update_us.part.0+0x45a>
d0041434:	4293      	cmp	r3, r2
d0041436:	d915      	bls.n	d0041464 <midi_player_update_us.part.0+0x164>
d0041438:	1cca      	adds	r2, r1, #3
d004143a:	f849 2007 	str.w	r2, [r9, r7]
d004143e:	7888      	ldrb	r0, [r1, #2]
d0041440:	f000 0c7f 	and.w	ip, r0, #127	; 0x7f
d0041444:	0600      	lsls	r0, r0, #24
d0041446:	ea4c 18c8 	orr.w	r8, ip, r8, lsl #7
d004144a:	f140 8186 	bpl.w	d004175a <midi_player_update_us.part.0+0x45a>
d004144e:	4293      	cmp	r3, r2
d0041450:	d908      	bls.n	d0041464 <midi_player_update_us.part.0+0x164>
d0041452:	1d0a      	adds	r2, r1, #4
d0041454:	f849 2007 	str.w	r2, [r9, r7]
d0041458:	f991 0003 	ldrsb.w	r0, [r1, #3]
d004145c:	78c9      	ldrb	r1, [r1, #3]
d004145e:	2800      	cmp	r0, #0
d0041460:	f280 8179 	bge.w	d0041756 <midi_player_update_us.part.0+0x456>
d0041464:	444e      	add	r6, r9
d0041466:	2300      	movs	r3, #0
d0041468:	7373      	strb	r3, [r6, #13]
d004146a:	f10a 0a01 	add.w	sl, sl, #1
d004146e:	f5ba 5f80 	cmp.w	sl, #4096	; 0x1000
d0041472:	f080 8194 	bcs.w	d004179e <midi_player_update_us.part.0+0x49e>
d0041476:	3401      	adds	r4, #1
d0041478:	f899 7100 	ldrb.w	r7, [r9, #256]	; 0x100
d004147c:	b2e4      	uxtb	r4, r4
d004147e:	42bc      	cmp	r4, r7
d0041480:	d208      	bcs.n	d0041494 <midi_player_update_us.part.0+0x194>
d0041482:	4628      	mov	r0, r5
d0041484:	e78e      	b.n	d00413a4 <midi_player_update_us.part.0+0xa4>
d0041486:	f5ba 5f80 	cmp.w	sl, #4096	; 0x1000
d004148a:	f080 8188 	bcs.w	d004179e <midi_player_update_us.part.0+0x49e>
d004148e:	2800      	cmp	r0, #0
d0041490:	f000 8188 	beq.w	d00417a4 <midi_player_update_us.part.0+0x4a4>
d0041494:	2f00      	cmp	r7, #0
d0041496:	f000 817d 	beq.w	d0041794 <midi_player_update_us.part.0+0x494>
d004149a:	2000      	movs	r0, #0
d004149c:	4604      	mov	r4, r0
d004149e:	e781      	b.n	d00413a4 <midi_player_update_us.part.0+0xa4>
d00414a0:	428b      	cmp	r3, r1
d00414a2:	f200 80c1 	bhi.w	d0041628 <midi_player_update_us.part.0+0x328>
d00414a6:	2300      	movs	r3, #0
d00414a8:	7353      	strb	r3, [r2, #13]
d00414aa:	e7de      	b.n	d004146a <midi_player_update_us.part.0+0x16a>
d00414ac:	3101      	adds	r1, #1
d00414ae:	f1bb 0fef 	cmp.w	fp, #239	; 0xef
d00414b2:	f849 1006 	str.w	r1, [r9, r6]
d00414b6:	f200 8084 	bhi.w	d00415c2 <midi_player_update_us.part.0+0x2c2>
d00414ba:	f882 b00c 	strb.w	fp, [r2, #12]
d00414be:	f08b 0280 	eor.w	r2, fp, #128	; 0x80
d00414c2:	2a6f      	cmp	r2, #111	; 0x6f
d00414c4:	f200 808f 	bhi.w	d00415e6 <midi_player_update_us.part.0+0x2e6>
d00414c8:	f00b 02e0 	and.w	r2, fp, #224	; 0xe0
d00414cc:	2ac0      	cmp	r2, #192	; 0xc0
d00414ce:	f040 816e 	bne.w	d00417ae <midi_player_update_us.part.0+0x4ae>
d00414d2:	2101      	movs	r1, #1
d00414d4:	2002      	movs	r0, #2
d00414d6:	468e      	mov	lr, r1
d00414d8:	f859 2007 	ldr.w	r2, [r9, r7]
d00414dc:	1a9b      	subs	r3, r3, r2
d00414de:	428b      	cmp	r3, r1
d00414e0:	d3c0      	bcc.n	d0041464 <midi_player_update_us.part.0+0x164>
d00414e2:	1c53      	adds	r3, r2, #1
d00414e4:	f88d b01c 	strb.w	fp, [sp, #28]
d00414e8:	f1be 0f02 	cmp.w	lr, #2
d00414ec:	f849 3007 	str.w	r3, [r9, r7]
d00414f0:	f892 c000 	ldrb.w	ip, [r2]
d00414f4:	f88d c01d 	strb.w	ip, [sp, #29]
d00414f8:	d105      	bne.n	d0041506 <midi_player_update_us.part.0+0x206>
d00414fa:	1c93      	adds	r3, r2, #2
d00414fc:	f849 3007 	str.w	r3, [r9, r7]
d0041500:	7853      	ldrb	r3, [r2, #1]
d0041502:	f88d 301e 	strb.w	r3, [sp, #30]
d0041506:	2802      	cmp	r0, #2
d0041508:	f88d 001b 	strb.w	r0, [sp, #27]
d004150c:	d009      	beq.n	d0041522 <midi_player_update_us.part.0+0x222>
d004150e:	f00b 03f0 	and.w	r3, fp, #240	; 0xf0
d0041512:	f00b 0b0f 	and.w	fp, fp, #15
d0041516:	2b90      	cmp	r3, #144	; 0x90
d0041518:	f000 81dd 	beq.w	d00418d6 <midi_player_update_us.part.0+0x5d6>
d004151c:	2b80      	cmp	r3, #128	; 0x80
d004151e:	f000 8226 	beq.w	d004196e <midi_player_update_us.part.0+0x66e>
d0041522:	f10d 021b 	add.w	r2, sp, #27
d0041526:	f899 0101 	ldrb.w	r0, [r9, #257]	; 0x101
d004152a:	a907      	add	r1, sp, #28
d004152c:	f002 fa36 	bl	d004399c <midi_translator_translate_voice_packet>
d0041530:	2800      	cmp	r0, #0
d0041532:	f040 8166 	bne.w	d0041802 <midi_player_update_us.part.0+0x502>
d0041536:	eb09 0306 	add.w	r3, r9, r6
d004153a:	7b5b      	ldrb	r3, [r3, #13]
d004153c:	2b00      	cmp	r3, #0
d004153e:	d094      	beq.n	d004146a <midi_player_update_us.part.0+0x16a>
d0041540:	9b03      	ldr	r3, [sp, #12]
d0041542:	6859      	ldr	r1, [r3, #4]
d0041544:	f859 3007 	ldr.w	r3, [r9, r7]
d0041548:	428b      	cmp	r3, r1
d004154a:	d28b      	bcs.n	d0041464 <midi_player_update_us.part.0+0x164>
d004154c:	1c58      	adds	r0, r3, #1
d004154e:	f849 0007 	str.w	r0, [r9, r7]
d0041552:	f893 c000 	ldrb.w	ip, [r3]
d0041556:	f01c 0f80 	tst.w	ip, #128	; 0x80
d004155a:	f00c 027f 	and.w	r2, ip, #127	; 0x7f
d004155e:	d02b      	beq.n	d00415b8 <midi_player_update_us.part.0+0x2b8>
d0041560:	4281      	cmp	r1, r0
d0041562:	f67f af7f 	bls.w	d0041464 <midi_player_update_us.part.0+0x164>
d0041566:	1c98      	adds	r0, r3, #2
d0041568:	f849 0007 	str.w	r0, [r9, r7]
d004156c:	f893 c001 	ldrb.w	ip, [r3, #1]
d0041570:	f00c 0e7f 	and.w	lr, ip, #127	; 0x7f
d0041574:	f01c 0f80 	tst.w	ip, #128	; 0x80
d0041578:	ea4e 12c2 	orr.w	r2, lr, r2, lsl #7
d004157c:	d01c      	beq.n	d00415b8 <midi_player_update_us.part.0+0x2b8>
d004157e:	4281      	cmp	r1, r0
d0041580:	f67f af70 	bls.w	d0041464 <midi_player_update_us.part.0+0x164>
d0041584:	1cd8      	adds	r0, r3, #3
d0041586:	f849 0007 	str.w	r0, [r9, r7]
d004158a:	f893 c002 	ldrb.w	ip, [r3, #2]
d004158e:	f00c 0e7f 	and.w	lr, ip, #127	; 0x7f
d0041592:	f01c 0f80 	tst.w	ip, #128	; 0x80
d0041596:	ea4e 12c2 	orr.w	r2, lr, r2, lsl #7
d004159a:	d00d      	beq.n	d00415b8 <midi_player_update_us.part.0+0x2b8>
d004159c:	4281      	cmp	r1, r0
d004159e:	f67f af61 	bls.w	d0041464 <midi_player_update_us.part.0+0x164>
d00415a2:	1d19      	adds	r1, r3, #4
d00415a4:	f849 1007 	str.w	r1, [r9, r7]
d00415a8:	f993 1003 	ldrsb.w	r1, [r3, #3]
d00415ac:	78db      	ldrb	r3, [r3, #3]
d00415ae:	2900      	cmp	r1, #0
d00415b0:	f6ff af58 	blt.w	d0041464 <midi_player_update_us.part.0+0x164>
d00415b4:	ea43 12c2 	orr.w	r2, r3, r2, lsl #7
d00415b8:	444e      	add	r6, r9
d00415ba:	68b3      	ldr	r3, [r6, #8]
d00415bc:	4413      	add	r3, r2
d00415be:	60b3      	str	r3, [r6, #8]
d00415c0:	e753      	b.n	d004146a <midi_player_update_us.part.0+0x16a>
d00415c2:	f1bb 0fff 	cmp.w	fp, #255	; 0xff
d00415c6:	f43f af6b 	beq.w	d00414a0 <midi_player_update_us.part.0+0x1a0>
d00415ca:	f1ab 02f0 	sub.w	r2, fp, #240	; 0xf0
d00415ce:	f1bb 0ff7 	cmp.w	fp, #247	; 0xf7
d00415d2:	fab2 f282 	clz	r2, r2
d00415d6:	ea4f 1252 	mov.w	r2, r2, lsr #5
d00415da:	9204      	str	r2, [sp, #16]
d00415dc:	f43f af10 	beq.w	d0041400 <midi_player_update_us.part.0+0x100>
d00415e0:	2a00      	cmp	r2, #0
d00415e2:	f47f af0d 	bne.w	d0041400 <midi_player_update_us.part.0+0x100>
d00415e6:	f1bb 0ff2 	cmp.w	fp, #242	; 0xf2
d00415ea:	f000 80f3 	beq.w	d00417d4 <midi_player_update_us.part.0+0x4d4>
d00415ee:	f00b 02fd 	and.w	r2, fp, #253	; 0xfd
d00415f2:	2af1      	cmp	r2, #241	; 0xf1
d00415f4:	f000 80df 	beq.w	d00417b6 <midi_player_update_us.part.0+0x4b6>
d00415f8:	2101      	movs	r1, #1
d00415fa:	f88d b01c 	strb.w	fp, [sp, #28]
d00415fe:	4acb      	ldr	r2, [pc, #812]	; (d004192c <midi_player_update_us.part.0+0x62c>)
d0041600:	a807      	add	r0, sp, #28
d0041602:	7d13      	ldrb	r3, [r2, #20]
d0041604:	7d52      	ldrb	r2, [r2, #21]
d0041606:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004160a:	4ac8      	ldr	r2, [pc, #800]	; (d004192c <midi_player_update_us.part.0+0x62c>)
d004160c:	7d92      	ldrb	r2, [r2, #22]
d004160e:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d0041612:	4ac6      	ldr	r2, [pc, #792]	; (d004192c <midi_player_update_us.part.0+0x62c>)
d0041614:	7dd2      	ldrb	r2, [r2, #23]
d0041616:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004161a:	681b      	ldr	r3, [r3, #0]
d004161c:	695b      	ldr	r3, [r3, #20]
d004161e:	4798      	blx	r3
d0041620:	e789      	b.n	d0041536 <midi_player_update_us.part.0+0x236>
d0041622:	f882 b00d 	strb.w	fp, [r2, #13]
d0041626:	e720      	b.n	d004146a <midi_player_update_us.part.0+0x16a>
d0041628:	1c4a      	adds	r2, r1, #1
d004162a:	4293      	cmp	r3, r2
d004162c:	f849 2007 	str.w	r2, [r9, r7]
d0041630:	f891 e000 	ldrb.w	lr, [r1]
d0041634:	f67f af16 	bls.w	d0041464 <midi_player_update_us.part.0+0x164>
d0041638:	1c8a      	adds	r2, r1, #2
d004163a:	f849 2007 	str.w	r2, [r9, r7]
d004163e:	f891 c001 	ldrb.w	ip, [r1, #1]
d0041642:	f01c 0f80 	tst.w	ip, #128	; 0x80
d0041646:	f00c 007f 	and.w	r0, ip, #127	; 0x7f
d004164a:	d02c      	beq.n	d00416a6 <midi_player_update_us.part.0+0x3a6>
d004164c:	4293      	cmp	r3, r2
d004164e:	f67f af09 	bls.w	d0041464 <midi_player_update_us.part.0+0x164>
d0041652:	1cca      	adds	r2, r1, #3
d0041654:	f849 2007 	str.w	r2, [r9, r7]
d0041658:	f891 c002 	ldrb.w	ip, [r1, #2]
d004165c:	f00c 087f 	and.w	r8, ip, #127	; 0x7f
d0041660:	f01c 0f80 	tst.w	ip, #128	; 0x80
d0041664:	ea48 10c0 	orr.w	r0, r8, r0, lsl #7
d0041668:	d01d      	beq.n	d00416a6 <midi_player_update_us.part.0+0x3a6>
d004166a:	4293      	cmp	r3, r2
d004166c:	f67f aefa 	bls.w	d0041464 <midi_player_update_us.part.0+0x164>
d0041670:	1d0a      	adds	r2, r1, #4
d0041672:	f849 2007 	str.w	r2, [r9, r7]
d0041676:	f891 c003 	ldrb.w	ip, [r1, #3]
d004167a:	f00c 087f 	and.w	r8, ip, #127	; 0x7f
d004167e:	f01c 0f80 	tst.w	ip, #128	; 0x80
d0041682:	ea48 10c0 	orr.w	r0, r8, r0, lsl #7
d0041686:	d00e      	beq.n	d00416a6 <midi_player_update_us.part.0+0x3a6>
d0041688:	4293      	cmp	r3, r2
d004168a:	f67f aeeb 	bls.w	d0041464 <midi_player_update_us.part.0+0x164>
d004168e:	1d4a      	adds	r2, r1, #5
d0041690:	f849 2007 	str.w	r2, [r9, r7]
d0041694:	f991 c004 	ldrsb.w	ip, [r1, #4]
d0041698:	7909      	ldrb	r1, [r1, #4]
d004169a:	f1bc 0f00 	cmp.w	ip, #0
d004169e:	f6ff aee1 	blt.w	d0041464 <midi_player_update_us.part.0+0x164>
d00416a2:	ea41 10c0 	orr.w	r0, r1, r0, lsl #7
d00416a6:	1a9b      	subs	r3, r3, r2
d00416a8:	4283      	cmp	r3, r0
d00416aa:	f4ff aedb 	bcc.w	d0041464 <midi_player_update_us.part.0+0x164>
d00416ae:	f1be 0f51 	cmp.w	lr, #81	; 0x51
d00416b2:	f000 80c4 	beq.w	d004183e <midi_player_update_us.part.0+0x53e>
d00416b6:	f1be 0f2f 	cmp.w	lr, #47	; 0x2f
d00416ba:	d103      	bne.n	d00416c4 <midi_player_update_us.part.0+0x3c4>
d00416bc:	eb09 0306 	add.w	r3, r9, r6
d00416c0:	2100      	movs	r1, #0
d00416c2:	7359      	strb	r1, [r3, #13]
d00416c4:	4402      	add	r2, r0
d00416c6:	eb09 0306 	add.w	r3, r9, r6
d00416ca:	f849 2007 	str.w	r2, [r9, r7]
d00416ce:	7b5b      	ldrb	r3, [r3, #13]
d00416d0:	2b00      	cmp	r3, #0
d00416d2:	f43f aeca 	beq.w	d004146a <midi_player_update_us.part.0+0x16a>
d00416d6:	9b03      	ldr	r3, [sp, #12]
d00416d8:	6859      	ldr	r1, [r3, #4]
d00416da:	428a      	cmp	r2, r1
d00416dc:	f4bf aec2 	bcs.w	d0041464 <midi_player_update_us.part.0+0x164>
d00416e0:	1c50      	adds	r0, r2, #1
d00416e2:	f849 0007 	str.w	r0, [r9, r7]
d00416e6:	f892 c000 	ldrb.w	ip, [r2]
d00416ea:	f01c 0f80 	tst.w	ip, #128	; 0x80
d00416ee:	f00c 037f 	and.w	r3, ip, #127	; 0x7f
d00416f2:	d02b      	beq.n	d004174c <midi_player_update_us.part.0+0x44c>
d00416f4:	4281      	cmp	r1, r0
d00416f6:	f67f aeb5 	bls.w	d0041464 <midi_player_update_us.part.0+0x164>
d00416fa:	1c90      	adds	r0, r2, #2
d00416fc:	f849 0007 	str.w	r0, [r9, r7]
d0041700:	f892 c001 	ldrb.w	ip, [r2, #1]
d0041704:	f00c 0e7f 	and.w	lr, ip, #127	; 0x7f
d0041708:	f01c 0f80 	tst.w	ip, #128	; 0x80
d004170c:	ea4e 13c3 	orr.w	r3, lr, r3, lsl #7
d0041710:	d01c      	beq.n	d004174c <midi_player_update_us.part.0+0x44c>
d0041712:	4281      	cmp	r1, r0
d0041714:	f67f aea6 	bls.w	d0041464 <midi_player_update_us.part.0+0x164>
d0041718:	1cd0      	adds	r0, r2, #3
d004171a:	f849 0007 	str.w	r0, [r9, r7]
d004171e:	f892 c002 	ldrb.w	ip, [r2, #2]
d0041722:	f00c 0e7f 	and.w	lr, ip, #127	; 0x7f
d0041726:	f01c 0f80 	tst.w	ip, #128	; 0x80
d004172a:	ea4e 13c3 	orr.w	r3, lr, r3, lsl #7
d004172e:	d00d      	beq.n	d004174c <midi_player_update_us.part.0+0x44c>
d0041730:	4281      	cmp	r1, r0
d0041732:	f67f ae97 	bls.w	d0041464 <midi_player_update_us.part.0+0x164>
d0041736:	1d11      	adds	r1, r2, #4
d0041738:	f849 1007 	str.w	r1, [r9, r7]
d004173c:	f992 1003 	ldrsb.w	r1, [r2, #3]
d0041740:	78d2      	ldrb	r2, [r2, #3]
d0041742:	2900      	cmp	r1, #0
d0041744:	f6ff ae8e 	blt.w	d0041464 <midi_player_update_us.part.0+0x164>
d0041748:	ea42 13c3 	orr.w	r3, r2, r3, lsl #7
d004174c:	444e      	add	r6, r9
d004174e:	68b2      	ldr	r2, [r6, #8]
d0041750:	4413      	add	r3, r2
d0041752:	60b3      	str	r3, [r6, #8]
d0041754:	e689      	b.n	d004146a <midi_player_update_us.part.0+0x16a>
d0041756:	ea41 18c8 	orr.w	r8, r1, r8, lsl #7
d004175a:	1a9b      	subs	r3, r3, r2
d004175c:	4543      	cmp	r3, r8
d004175e:	f4ff ae81 	bcc.w	d0041464 <midi_player_update_us.part.0+0x164>
d0041762:	4643      	mov	r3, r8
d0041764:	4659      	mov	r1, fp
d0041766:	f899 0101 	ldrb.w	r0, [r9, #257]	; 0x101
d004176a:	f002 fb0d 	bl	d0043d88 <midi_translator_accepts_sysex>
d004176e:	2800      	cmp	r0, #0
d0041770:	d173      	bne.n	d004185a <midi_player_update_us.part.0+0x55a>
d0041772:	f859 3007 	ldr.w	r3, [r9, r7]
d0041776:	eb09 0206 	add.w	r2, r9, r6
d004177a:	4443      	add	r3, r8
d004177c:	f849 3007 	str.w	r3, [r9, r7]
d0041780:	7b52      	ldrb	r2, [r2, #13]
d0041782:	2a00      	cmp	r2, #0
d0041784:	f43f ae71 	beq.w	d004146a <midi_player_update_us.part.0+0x16a>
d0041788:	9a03      	ldr	r2, [sp, #12]
d004178a:	6851      	ldr	r1, [r2, #4]
d004178c:	428b      	cmp	r3, r1
d004178e:	f4ff aedd 	bcc.w	d004154c <midi_player_update_us.part.0+0x24c>
d0041792:	e667      	b.n	d0041464 <midi_player_update_us.part.0+0x164>
d0041794:	2300      	movs	r3, #0
d0041796:	f889 3120 	strb.w	r3, [r9, #288]	; 0x120
d004179a:	f7fe feb1 	bl	d0040500 <midi_send_channel_panic>
d004179e:	b009      	add	sp, #36	; 0x24
d00417a0:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d00417a4:	f5ba 5f80 	cmp.w	sl, #4096	; 0x1000
d00417a8:	f4ff adc1 	bcc.w	d004132e <midi_player_update_us.part.0+0x2e>
d00417ac:	e7f7      	b.n	d004179e <midi_player_update_us.part.0+0x49e>
d00417ae:	2102      	movs	r1, #2
d00417b0:	2003      	movs	r0, #3
d00417b2:	468e      	mov	lr, r1
d00417b4:	e690      	b.n	d00414d8 <midi_player_update_us.part.0+0x1d8>
d00417b6:	f859 2007 	ldr.w	r2, [r9, r7]
d00417ba:	4293      	cmp	r3, r2
d00417bc:	f43f ae52 	beq.w	d0041464 <midi_player_update_us.part.0+0x164>
d00417c0:	1c53      	adds	r3, r2, #1
d00417c2:	f88d b01c 	strb.w	fp, [sp, #28]
d00417c6:	2102      	movs	r1, #2
d00417c8:	f849 3007 	str.w	r3, [r9, r7]
d00417cc:	7813      	ldrb	r3, [r2, #0]
d00417ce:	f88d 301d 	strb.w	r3, [sp, #29]
d00417d2:	e714      	b.n	d00415fe <midi_player_update_us.part.0+0x2fe>
d00417d4:	f859 2007 	ldr.w	r2, [r9, r7]
d00417d8:	1a9b      	subs	r3, r3, r2
d00417da:	2b01      	cmp	r3, #1
d00417dc:	f67f ae42 	bls.w	d0041464 <midi_player_update_us.part.0+0x164>
d00417e0:	4613      	mov	r3, r2
d00417e2:	1c50      	adds	r0, r2, #1
d00417e4:	f88d b01c 	strb.w	fp, [sp, #28]
d00417e8:	2103      	movs	r1, #3
d00417ea:	f849 0007 	str.w	r0, [r9, r7]
d00417ee:	f813 0b02 	ldrb.w	r0, [r3], #2
d00417f2:	f88d 001d 	strb.w	r0, [sp, #29]
d00417f6:	f849 3007 	str.w	r3, [r9, r7]
d00417fa:	7853      	ldrb	r3, [r2, #1]
d00417fc:	f88d 301e 	strb.w	r3, [sp, #30]
d0041800:	e6fd      	b.n	d00415fe <midi_player_update_us.part.0+0x2fe>
d0041802:	f899 0101 	ldrb.w	r0, [r9, #257]	; 0x101
d0041806:	f89d 201b 	ldrb.w	r2, [sp, #27]
d004180a:	2818      	cmp	r0, #24
d004180c:	f000 80a8 	beq.w	d0041960 <midi_player_update_us.part.0+0x660>
d0041810:	4846      	ldr	r0, [pc, #280]	; (d004192c <midi_player_update_us.part.0+0x62c>)
d0041812:	f10d 0c1c 	add.w	ip, sp, #28
d0041816:	4611      	mov	r1, r2
d0041818:	f890 e014 	ldrb.w	lr, [r0, #20]
d004181c:	4603      	mov	r3, r0
d004181e:	7d42      	ldrb	r2, [r0, #21]
d0041820:	4660      	mov	r0, ip
d0041822:	f893 c016 	ldrb.w	ip, [r3, #22]
d0041826:	ea4e 2302 	orr.w	r3, lr, r2, lsl #8
d004182a:	4a40      	ldr	r2, [pc, #256]	; (d004192c <midi_player_update_us.part.0+0x62c>)
d004182c:	ea43 430c 	orr.w	r3, r3, ip, lsl #16
d0041830:	7dd2      	ldrb	r2, [r2, #23]
d0041832:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0041836:	681b      	ldr	r3, [r3, #0]
d0041838:	695b      	ldr	r3, [r3, #20]
d004183a:	4798      	blx	r3
d004183c:	e67b      	b.n	d0041536 <midi_player_update_us.part.0+0x236>
d004183e:	2803      	cmp	r0, #3
d0041840:	f47f af40 	bne.w	d00416c4 <midi_player_update_us.part.0+0x3c4>
d0041844:	7853      	ldrb	r3, [r2, #1]
d0041846:	f892 c000 	ldrb.w	ip, [r2]
d004184a:	021b      	lsls	r3, r3, #8
d004184c:	7891      	ldrb	r1, [r2, #2]
d004184e:	ea43 430c 	orr.w	r3, r3, ip, lsl #16
d0041852:	430b      	orrs	r3, r1
d0041854:	f8c9 3114 	str.w	r3, [r9, #276]	; 0x114
d0041858:	e734      	b.n	d00416c4 <midi_player_update_us.part.0+0x3c4>
d004185a:	f859 3007 	ldr.w	r3, [r9, r7]
d004185e:	f88d b01c 	strb.w	fp, [sp, #28]
d0041862:	469b      	mov	fp, r3
d0041864:	9b04      	ldr	r3, [sp, #16]
d0041866:	bb1b      	cbnz	r3, d00418b0 <midi_player_update_us.part.0+0x5b0>
d0041868:	f1b8 0f00 	cmp.w	r8, #0
d004186c:	d081      	beq.n	d0041772 <midi_player_update_us.part.0+0x472>
d004186e:	9405      	str	r4, [sp, #20]
d0041870:	465c      	mov	r4, fp
d0041872:	46c3      	mov	fp, r8
d0041874:	9504      	str	r5, [sp, #16]
d0041876:	4b2d      	ldr	r3, [pc, #180]	; (d004192c <midi_player_update_us.part.0+0x62c>)
d0041878:	465d      	mov	r5, fp
d004187a:	4620      	mov	r0, r4
d004187c:	f893 c014 	ldrb.w	ip, [r3, #20]
d0041880:	2d40      	cmp	r5, #64	; 0x40
d0041882:	7d5a      	ldrb	r2, [r3, #21]
d0041884:	7d99      	ldrb	r1, [r3, #22]
d0041886:	bf28      	it	cs
d0041888:	2540      	movcs	r5, #64	; 0x40
d004188a:	ea4c 2202 	orr.w	r2, ip, r2, lsl #8
d004188e:	f893 c017 	ldrb.w	ip, [r3, #23]
d0041892:	442c      	add	r4, r5
d0041894:	ea42 4201 	orr.w	r2, r2, r1, lsl #16
d0041898:	b2a9      	uxth	r1, r5
d004189a:	ea42 620c 	orr.w	r2, r2, ip, lsl #24
d004189e:	6812      	ldr	r2, [r2, #0]
d00418a0:	6952      	ldr	r2, [r2, #20]
d00418a2:	4790      	blx	r2
d00418a4:	ebbb 0b05 	subs.w	fp, fp, r5
d00418a8:	d1e5      	bne.n	d0041876 <midi_player_update_us.part.0+0x576>
d00418aa:	9d04      	ldr	r5, [sp, #16]
d00418ac:	9c05      	ldr	r4, [sp, #20]
d00418ae:	e760      	b.n	d0041772 <midi_player_update_us.part.0+0x472>
d00418b0:	4a1e      	ldr	r2, [pc, #120]	; (d004192c <midi_player_update_us.part.0+0x62c>)
d00418b2:	2101      	movs	r1, #1
d00418b4:	a807      	add	r0, sp, #28
d00418b6:	7d13      	ldrb	r3, [r2, #20]
d00418b8:	7d52      	ldrb	r2, [r2, #21]
d00418ba:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d00418be:	4a1b      	ldr	r2, [pc, #108]	; (d004192c <midi_player_update_us.part.0+0x62c>)
d00418c0:	7d92      	ldrb	r2, [r2, #22]
d00418c2:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d00418c6:	4a19      	ldr	r2, [pc, #100]	; (d004192c <midi_player_update_us.part.0+0x62c>)
d00418c8:	7dd2      	ldrb	r2, [r2, #23]
d00418ca:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00418ce:	681b      	ldr	r3, [r3, #0]
d00418d0:	695b      	ldr	r3, [r3, #20]
d00418d2:	4798      	blx	r3
d00418d4:	e7c8      	b.n	d0041868 <midi_player_update_us.part.0+0x568>
d00418d6:	f89d 801e 	ldrb.w	r8, [sp, #30]
d00418da:	4b15      	ldr	r3, [pc, #84]	; (d0041930 <midi_player_update_us.part.0+0x630>)
d00418dc:	f1b8 0f00 	cmp.w	r8, #0
d00418e0:	d034      	beq.n	d004194c <midi_player_update_us.part.0+0x64c>
d00418e2:	f04f 0e00 	mov.w	lr, #0
d00418e6:	461a      	mov	r2, r3
d00418e8:	e00b      	b.n	d0041902 <midi_player_update_us.part.0+0x602>
d00418ea:	6818      	ldr	r0, [r3, #0]
d00418ec:	f10e 0e01 	add.w	lr, lr, #1
d00418f0:	6811      	ldr	r1, [r2, #0]
d00418f2:	4288      	cmp	r0, r1
d00418f4:	bf38      	it	cc
d00418f6:	461a      	movcc	r2, r3
d00418f8:	f1be 0fc0 	cmp.w	lr, #192	; 0xc0
d00418fc:	f103 0310 	add.w	r3, r3, #16
d0041900:	d005      	beq.n	d004190e <midi_player_update_us.part.0+0x60e>
d0041902:	7b19      	ldrb	r1, [r3, #12]
d0041904:	2900      	cmp	r1, #0
d0041906:	d1f0      	bne.n	d00418ea <midi_player_update_us.part.0+0x5ea>
d0041908:	4b09      	ldr	r3, [pc, #36]	; (d0041930 <midi_player_update_us.part.0+0x630>)
d004190a:	eb03 120e 	add.w	r2, r3, lr, lsl #4
d004190e:	4b09      	ldr	r3, [pc, #36]	; (d0041934 <midi_player_update_us.part.0+0x634>)
d0041910:	f882 c008 	strb.w	ip, [r2, #8]
d0041914:	6819      	ldr	r1, [r3, #0]
d0041916:	2301      	movs	r3, #1
d0041918:	f882 b009 	strb.w	fp, [r2, #9]
d004191c:	f882 800a 	strb.w	r8, [r2, #10]
d0041920:	6011      	str	r1, [r2, #0]
d0041922:	6051      	str	r1, [r2, #4]
d0041924:	72d3      	strb	r3, [r2, #11]
d0041926:	7313      	strb	r3, [r2, #12]
d0041928:	e5fb      	b.n	d0041522 <midi_player_update_us.part.0+0x222>
d004192a:	bf00      	nop
d004192c:	2001f000 	.word	0x2001f000
d0041930:	d0046db0 	.word	0xd0046db0
d0041934:	d0046da8 	.word	0xd0046da8
d0041938:	7a5a      	ldrb	r2, [r3, #9]
d004193a:	455a      	cmp	r2, fp
d004193c:	d034      	beq.n	d00419a8 <midi_player_update_us.part.0+0x6a8>
d004193e:	f108 0801 	add.w	r8, r8, #1
d0041942:	3310      	adds	r3, #16
d0041944:	f1b8 0fc0 	cmp.w	r8, #192	; 0xc0
d0041948:	f43f adeb 	beq.w	d0041522 <midi_player_update_us.part.0+0x222>
d004194c:	7b1a      	ldrb	r2, [r3, #12]
d004194e:	2a00      	cmp	r2, #0
d0041950:	d0f5      	beq.n	d004193e <midi_player_update_us.part.0+0x63e>
d0041952:	7ada      	ldrb	r2, [r3, #11]
d0041954:	2a00      	cmp	r2, #0
d0041956:	d0f2      	beq.n	d004193e <midi_player_update_us.part.0+0x63e>
d0041958:	7a1a      	ldrb	r2, [r3, #8]
d004195a:	4562      	cmp	r2, ip
d004195c:	d1ef      	bne.n	d004193e <midi_player_update_us.part.0+0x63e>
d004195e:	e7eb      	b.n	d0041938 <midi_player_update_us.part.0+0x638>
d0041960:	2300      	movs	r3, #0
d0041962:	a907      	add	r1, sp, #28
d0041964:	9300      	str	r3, [sp, #0]
d0041966:	4b16      	ldr	r3, [pc, #88]	; (d00419c0 <midi_player_update_us.part.0+0x6c0>)
d0041968:	f002 f900 	bl	d0043b6c <midi_translator_send_voice_packet>
d004196c:	e5e3      	b.n	d0041536 <midi_player_update_us.part.0+0x236>
d004196e:	4b15      	ldr	r3, [pc, #84]	; (d00419c4 <midi_player_update_us.part.0+0x6c4>)
d0041970:	2200      	movs	r2, #0
d0041972:	e004      	b.n	d004197e <midi_player_update_us.part.0+0x67e>
d0041974:	3201      	adds	r2, #1
d0041976:	3310      	adds	r3, #16
d0041978:	2ac0      	cmp	r2, #192	; 0xc0
d004197a:	f43f add2 	beq.w	d0041522 <midi_player_update_us.part.0+0x222>
d004197e:	7b19      	ldrb	r1, [r3, #12]
d0041980:	2900      	cmp	r1, #0
d0041982:	d0f7      	beq.n	d0041974 <midi_player_update_us.part.0+0x674>
d0041984:	7ad9      	ldrb	r1, [r3, #11]
d0041986:	2900      	cmp	r1, #0
d0041988:	d0f4      	beq.n	d0041974 <midi_player_update_us.part.0+0x674>
d004198a:	7a19      	ldrb	r1, [r3, #8]
d004198c:	4561      	cmp	r1, ip
d004198e:	d1f1      	bne.n	d0041974 <midi_player_update_us.part.0+0x674>
d0041990:	7a59      	ldrb	r1, [r3, #9]
d0041992:	4559      	cmp	r1, fp
d0041994:	d1ee      	bne.n	d0041974 <midi_player_update_us.part.0+0x674>
d0041996:	4b0b      	ldr	r3, [pc, #44]	; (d00419c4 <midi_player_update_us.part.0+0x6c4>)
d0041998:	2100      	movs	r1, #0
d004199a:	eb03 1202 	add.w	r2, r3, r2, lsl #4
d004199e:	4b0a      	ldr	r3, [pc, #40]	; (d00419c8 <midi_player_update_us.part.0+0x6c8>)
d00419a0:	681b      	ldr	r3, [r3, #0]
d00419a2:	72d1      	strb	r1, [r2, #11]
d00419a4:	6053      	str	r3, [r2, #4]
d00419a6:	e5bc      	b.n	d0041522 <midi_player_update_us.part.0+0x222>
d00419a8:	4b06      	ldr	r3, [pc, #24]	; (d00419c4 <midi_player_update_us.part.0+0x6c4>)
d00419aa:	2200      	movs	r2, #0
d00419ac:	eb03 1808 	add.w	r8, r3, r8, lsl #4
d00419b0:	4b05      	ldr	r3, [pc, #20]	; (d00419c8 <midi_player_update_us.part.0+0x6c8>)
d00419b2:	681b      	ldr	r3, [r3, #0]
d00419b4:	f888 200b 	strb.w	r2, [r8, #11]
d00419b8:	f8c8 3004 	str.w	r3, [r8, #4]
d00419bc:	e5b1      	b.n	d0041522 <midi_player_update_us.part.0+0x222>
d00419be:	bf00      	nop
d00419c0:	d00410f5 	.word	0xd00410f5
d00419c4:	d0046db0 	.word	0xd0046db0
d00419c8:	d0046da8 	.word	0xd0046da8

d00419cc <vbl_counter>:
d00419cc:	482b      	ldr	r0, [pc, #172]	; (d0041a7c <vbl_counter+0xb0>)
d00419ce:	f890 3120 	ldrb.w	r3, [r0, #288]	; 0x120
d00419d2:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
d00419d6:	b11b      	cbz	r3, d00419e0 <vbl_counter+0x14>
d00419d8:	f644 6120 	movw	r1, #20000	; 0x4e20
d00419dc:	f7ff fc90 	bl	d0041300 <midi_player_update_us.part.0>
d00419e0:	f8df 90a8 	ldr.w	r9, [pc, #168]	; d0041a8c <vbl_counter+0xc0>
d00419e4:	f8b9 1000 	ldrh.w	r1, [r9]
d00419e8:	2900      	cmp	r1, #0
d00419ea:	d03c      	beq.n	d0041a66 <vbl_counter+0x9a>
d00419ec:	f8df a0a0 	ldr.w	sl, [pc, #160]	; d0041a90 <vbl_counter+0xc4>
d00419f0:	253c      	movs	r5, #60	; 0x3c
d00419f2:	f8df 80a0 	ldr.w	r8, [pc, #160]	; d0041a94 <vbl_counter+0xc8>
d00419f6:	f8ba 0000 	ldrh.w	r0, [sl]
d00419fa:	4e21      	ldr	r6, [pc, #132]	; (d0041a80 <vbl_counter+0xb4>)
d00419fc:	4f21      	ldr	r7, [pc, #132]	; (d0041a84 <vbl_counter+0xb8>)
d00419fe:	e000      	b.n	d0041a02 <vbl_counter+0x36>
d0041a00:	b38d      	cbz	r5, d0041a66 <vbl_counter+0x9a>
d0041a02:	f8b8 3000 	ldrh.w	r3, [r8]
d0041a06:	f5c0 6480 	rsb	r4, r0, #1024	; 0x400
d0041a0a:	f896 c014 	ldrb.w	ip, [r6, #20]
d0041a0e:	4283      	cmp	r3, r0
d0041a10:	eba3 0300 	sub.w	r3, r3, r0
d0041a14:	b2a4      	uxth	r4, r4
d0041a16:	f896 e015 	ldrb.w	lr, [r6, #21]
d0041a1a:	bf88      	it	hi
d0041a1c:	b29c      	uxthhi	r4, r3
d0041a1e:	7db2      	ldrb	r2, [r6, #22]
d0041a20:	ea4c 2c0e 	orr.w	ip, ip, lr, lsl #8
d0041a24:	7df3      	ldrb	r3, [r6, #23]
d0041a26:	42ac      	cmp	r4, r5
d0041a28:	4438      	add	r0, r7
d0041a2a:	ea4c 4202 	orr.w	r2, ip, r2, lsl #16
d0041a2e:	bf28      	it	cs
d0041a30:	462c      	movcs	r4, r5
d0041a32:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0041a36:	428c      	cmp	r4, r1
d0041a38:	681b      	ldr	r3, [r3, #0]
d0041a3a:	bf28      	it	cs
d0041a3c:	460c      	movcs	r4, r1
d0041a3e:	695b      	ldr	r3, [r3, #20]
d0041a40:	4621      	mov	r1, r4
d0041a42:	1b2d      	subs	r5, r5, r4
d0041a44:	4798      	blx	r3
d0041a46:	f8ba 0000 	ldrh.w	r0, [sl]
d0041a4a:	f8b9 1000 	ldrh.w	r1, [r9]
d0041a4e:	b2ad      	uxth	r5, r5
d0041a50:	4420      	add	r0, r4
d0041a52:	1b09      	subs	r1, r1, r4
d0041a54:	f3c0 0009 	ubfx	r0, r0, #0, #10
d0041a58:	b289      	uxth	r1, r1
d0041a5a:	f8aa 0000 	strh.w	r0, [sl]
d0041a5e:	f8a9 1000 	strh.w	r1, [r9]
d0041a62:	2900      	cmp	r1, #0
d0041a64:	d1cc      	bne.n	d0041a00 <vbl_counter+0x34>
d0041a66:	4b08      	ldr	r3, [pc, #32]	; (d0041a88 <vbl_counter+0xbc>)
d0041a68:	781a      	ldrb	r2, [r3, #0]
d0041a6a:	2a07      	cmp	r2, #7
d0041a6c:	d803      	bhi.n	d0041a76 <vbl_counter+0xaa>
d0041a6e:	781a      	ldrb	r2, [r3, #0]
d0041a70:	3201      	adds	r2, #1
d0041a72:	b2d2      	uxtb	r2, r2
d0041a74:	701a      	strb	r2, [r3, #0]
d0041a76:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
d0041a7a:	bf00      	nop
d0041a7c:	d0047bc8 	.word	0xd0047bc8
d0041a80:	2001f000 	.word	0x2001f000
d0041a84:	d0046998 	.word	0xd0046998
d0041a88:	d00479b4 	.word	0xd00479b4
d0041a8c:	d0046994 	.word	0xd0046994
d0041a90:	d0046d98 	.word	0xd0046d98
d0041a94:	d0046996 	.word	0xd0046996

d0041a98 <midi_send_gm_reset>:
d0041a98:	4a0d      	ldr	r2, [pc, #52]	; (d0041ad0 <midi_send_gm_reset+0x38>)
d0041a9a:	490e      	ldr	r1, [pc, #56]	; (d0041ad4 <midi_send_gm_reset+0x3c>)
d0041a9c:	7d13      	ldrb	r3, [r2, #20]
d0041a9e:	b510      	push	{r4, lr}
d0041aa0:	7d54      	ldrb	r4, [r2, #21]
d0041aa2:	b082      	sub	sp, #8
d0041aa4:	7d90      	ldrb	r0, [r2, #22]
d0041aa6:	ea43 2304 	orr.w	r3, r3, r4, lsl #8
d0041aaa:	7dd2      	ldrb	r2, [r2, #23]
d0041aac:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
d0041ab0:	c903      	ldmia	r1, {r0, r1}
d0041ab2:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0041ab6:	9000      	str	r0, [sp, #0]
d0041ab8:	4668      	mov	r0, sp
d0041aba:	f8ad 1004 	strh.w	r1, [sp, #4]
d0041abe:	2106      	movs	r1, #6
d0041ac0:	681b      	ldr	r3, [r3, #0]
d0041ac2:	695b      	ldr	r3, [r3, #20]
d0041ac4:	4798      	blx	r3
d0041ac6:	f7fe fd1b 	bl	d0040500 <midi_send_channel_panic>
d0041aca:	b002      	add	sp, #8
d0041acc:	bd10      	pop	{r4, pc}
d0041ace:	bf00      	nop
d0041ad0:	2001f000 	.word	0x2001f000
d0041ad4:	d0045cf8 	.word	0xd0045cf8

d0041ad8 <midi_player_get_duration_ms>:
d0041ad8:	290d      	cmp	r1, #13
d0041ada:	d902      	bls.n	d0041ae2 <midi_player_get_duration_ms+0xa>
d0041adc:	7803      	ldrb	r3, [r0, #0]
d0041ade:	2b4d      	cmp	r3, #77	; 0x4d
d0041ae0:	d001      	beq.n	d0041ae6 <midi_player_get_duration_ms+0xe>
d0041ae2:	2000      	movs	r0, #0
d0041ae4:	4770      	bx	lr
d0041ae6:	7843      	ldrb	r3, [r0, #1]
d0041ae8:	1c42      	adds	r2, r0, #1
d0041aea:	2b54      	cmp	r3, #84	; 0x54
d0041aec:	d1f9      	bne.n	d0041ae2 <midi_player_get_duration_ms+0xa>
d0041aee:	f812 3f01 	ldrb.w	r3, [r2, #1]!
d0041af2:	2b68      	cmp	r3, #104	; 0x68
d0041af4:	d1f5      	bne.n	d0041ae2 <midi_player_get_duration_ms+0xa>
d0041af6:	7853      	ldrb	r3, [r2, #1]
d0041af8:	2b64      	cmp	r3, #100	; 0x64
d0041afa:	d1f2      	bne.n	d0041ae2 <midi_player_get_duration_ms+0xa>
d0041afc:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0041b00:	7943      	ldrb	r3, [r0, #5]
d0041b02:	b083      	sub	sp, #12
d0041b04:	f890 9004 	ldrb.w	r9, [r0, #4]
d0041b08:	7982      	ldrb	r2, [r0, #6]
d0041b0a:	ea49 2903 	orr.w	r9, r9, r3, lsl #8
d0041b0e:	79c3      	ldrb	r3, [r0, #7]
d0041b10:	ea49 4902 	orr.w	r9, r9, r2, lsl #16
d0041b14:	ea49 6903 	orr.w	r9, r9, r3, lsl #24
d0041b18:	fa99 f989 	rev.w	r9, r9
d0041b1c:	f1b9 0f05 	cmp.w	r9, #5
d0041b20:	f240 8111 	bls.w	d0041d46 <midi_player_get_duration_ms+0x26e>
d0041b24:	f109 0208 	add.w	r2, r9, #8
d0041b28:	4291      	cmp	r1, r2
d0041b2a:	f0c0 810c 	bcc.w	d0041d46 <midi_player_get_duration_ms+0x26e>
d0041b2e:	7b04      	ldrb	r4, [r0, #12]
d0041b30:	7b43      	ldrb	r3, [r0, #13]
d0041b32:	ea43 2304 	orr.w	r3, r3, r4, lsl #8
d0041b36:	b21b      	sxth	r3, r3
d0041b38:	2b00      	cmp	r3, #0
d0041b3a:	9301      	str	r3, [sp, #4]
d0041b3c:	f340 8103 	ble.w	d0041d46 <midi_player_get_duration_ms+0x26e>
d0041b40:	f109 0910 	add.w	r9, r9, #16
d0041b44:	7a83      	ldrb	r3, [r0, #10]
d0041b46:	f890 a00b 	ldrb.w	sl, [r0, #11]
d0041b4a:	4549      	cmp	r1, r9
d0041b4c:	ea4a 2a03 	orr.w	sl, sl, r3, lsl #8
d0041b50:	f0c0 80f9 	bcc.w	d0041d46 <midi_player_get_duration_ms+0x26e>
d0041b54:	f1ba 0f00 	cmp.w	sl, #0
d0041b58:	f000 80f5 	beq.w	d0041d46 <midi_player_get_duration_ms+0x26e>
d0041b5c:	460b      	mov	r3, r1
d0041b5e:	f04f 0e00 	mov.w	lr, #0
d0041b62:	4651      	mov	r1, sl
d0041b64:	469a      	mov	sl, r3
d0041b66:	e009      	b.n	d0041b7c <midi_player_get_duration_ms+0xa4>
d0041b68:	eb07 0209 	add.w	r2, r7, r9
d0041b6c:	f102 0908 	add.w	r9, r2, #8
d0041b70:	2900      	cmp	r1, #0
d0041b72:	f000 80ec 	beq.w	d0041d4e <midi_player_get_duration_ms+0x276>
d0041b76:	45ca      	cmp	sl, r9
d0041b78:	f0c0 80e9 	bcc.w	d0041d4e <midi_player_get_duration_ms+0x276>
d0041b7c:	1883      	adds	r3, r0, r2
d0041b7e:	ebaa 0409 	sub.w	r4, sl, r9
d0041b82:	795d      	ldrb	r5, [r3, #5]
d0041b84:	791f      	ldrb	r7, [r3, #4]
d0041b86:	ea47 2705 	orr.w	r7, r7, r5, lsl #8
d0041b8a:	799d      	ldrb	r5, [r3, #6]
d0041b8c:	ea47 4705 	orr.w	r7, r7, r5, lsl #16
d0041b90:	79dd      	ldrb	r5, [r3, #7]
d0041b92:	ea47 6705 	orr.w	r7, r7, r5, lsl #24
d0041b96:	ba3f      	rev	r7, r7
d0041b98:	42a7      	cmp	r7, r4
d0041b9a:	f200 80d8 	bhi.w	d0041d4e <midi_player_get_duration_ms+0x276>
d0041b9e:	5c82      	ldrb	r2, [r0, r2]
d0041ba0:	2a4d      	cmp	r2, #77	; 0x4d
d0041ba2:	d1e1      	bne.n	d0041b68 <midi_player_get_duration_ms+0x90>
d0041ba4:	785a      	ldrb	r2, [r3, #1]
d0041ba6:	3301      	adds	r3, #1
d0041ba8:	2a54      	cmp	r2, #84	; 0x54
d0041baa:	d1dd      	bne.n	d0041b68 <midi_player_get_duration_ms+0x90>
d0041bac:	f813 2f01 	ldrb.w	r2, [r3, #1]!
d0041bb0:	2a72      	cmp	r2, #114	; 0x72
d0041bb2:	d1d9      	bne.n	d0041b68 <midi_player_get_duration_ms+0x90>
d0041bb4:	785b      	ldrb	r3, [r3, #1]
d0041bb6:	2b6b      	cmp	r3, #107	; 0x6b
d0041bb8:	d1d6      	bne.n	d0041b68 <midi_player_get_duration_ms+0x90>
d0041bba:	eb00 0209 	add.w	r2, r0, r9
d0041bbe:	19d4      	adds	r4, r2, r7
d0041bc0:	42a2      	cmp	r2, r4
d0041bc2:	d22d      	bcs.n	d0041c20 <midi_player_get_duration_ms+0x148>
d0041bc4:	f04f 0800 	mov.w	r8, #0
d0041bc8:	4646      	mov	r6, r8
d0041bca:	4613      	mov	r3, r2
d0041bcc:	f813 cb01 	ldrb.w	ip, [r3], #1
d0041bd0:	f01c 0f80 	tst.w	ip, #128	; 0x80
d0041bd4:	f00c 057f 	and.w	r5, ip, #127	; 0x7f
d0041bd8:	d028      	beq.n	d0041c2c <midi_player_get_duration_ms+0x154>
d0041bda:	429c      	cmp	r4, r3
d0041bdc:	d91d      	bls.n	d0041c1a <midi_player_get_duration_ms+0x142>
d0041bde:	f892 c001 	ldrb.w	ip, [r2, #1]
d0041be2:	1c93      	adds	r3, r2, #2
d0041be4:	f00c 0b7f 	and.w	fp, ip, #127	; 0x7f
d0041be8:	f01c 0f80 	tst.w	ip, #128	; 0x80
d0041bec:	ea4b 15c5 	orr.w	r5, fp, r5, lsl #7
d0041bf0:	d01c      	beq.n	d0041c2c <midi_player_get_duration_ms+0x154>
d0041bf2:	429c      	cmp	r4, r3
d0041bf4:	d911      	bls.n	d0041c1a <midi_player_get_duration_ms+0x142>
d0041bf6:	f892 c002 	ldrb.w	ip, [r2, #2]
d0041bfa:	1cd3      	adds	r3, r2, #3
d0041bfc:	f00c 0b7f 	and.w	fp, ip, #127	; 0x7f
d0041c00:	f01c 0f80 	tst.w	ip, #128	; 0x80
d0041c04:	ea4b 15c5 	orr.w	r5, fp, r5, lsl #7
d0041c08:	d010      	beq.n	d0041c2c <midi_player_get_duration_ms+0x154>
d0041c0a:	429c      	cmp	r4, r3
d0041c0c:	d905      	bls.n	d0041c1a <midi_player_get_duration_ms+0x142>
d0041c0e:	f992 3003 	ldrsb.w	r3, [r2, #3]
d0041c12:	f892 c003 	ldrb.w	ip, [r2, #3]
d0041c16:	2b00      	cmp	r3, #0
d0041c18:	da05      	bge.n	d0041c26 <midi_player_get_duration_ms+0x14e>
d0041c1a:	45b6      	cmp	lr, r6
d0041c1c:	bf38      	it	cc
d0041c1e:	46b6      	movcc	lr, r6
d0041c20:	3901      	subs	r1, #1
d0041c22:	b289      	uxth	r1, r1
d0041c24:	e7a0      	b.n	d0041b68 <midi_player_get_duration_ms+0x90>
d0041c26:	1d13      	adds	r3, r2, #4
d0041c28:	ea4c 15c5 	orr.w	r5, ip, r5, lsl #7
d0041c2c:	429c      	cmp	r4, r3
d0041c2e:	442e      	add	r6, r5
d0041c30:	d9f3      	bls.n	d0041c1a <midi_player_get_duration_ms+0x142>
d0041c32:	f993 5000 	ldrsb.w	r5, [r3]
d0041c36:	781a      	ldrb	r2, [r3, #0]
d0041c38:	2d00      	cmp	r5, #0
d0041c3a:	db0f      	blt.n	d0041c5c <midi_player_get_duration_ms+0x184>
d0041c3c:	f1b8 0fff 	cmp.w	r8, #255	; 0xff
d0041c40:	d018      	beq.n	d0041c74 <midi_player_get_duration_ms+0x19c>
d0041c42:	f008 02f0 	and.w	r2, r8, #240	; 0xf0
d0041c46:	2af0      	cmp	r2, #240	; 0xf0
d0041c48:	d04e      	beq.n	d0041ce8 <midi_player_get_duration_ms+0x210>
d0041c4a:	f008 02e0 	and.w	r2, r8, #224	; 0xe0
d0041c4e:	2ac0      	cmp	r2, #192	; 0xc0
d0041c50:	bf0c      	ite	eq
d0041c52:	1c5a      	addeq	r2, r3, #1
d0041c54:	1c9a      	addne	r2, r3, #2
d0041c56:	4294      	cmp	r4, r2
d0041c58:	d8b7      	bhi.n	d0041bca <midi_player_get_duration_ms+0xf2>
d0041c5a:	e7de      	b.n	d0041c1a <midi_player_get_duration_ms+0x142>
d0041c5c:	2aff      	cmp	r2, #255	; 0xff
d0041c5e:	f103 0301 	add.w	r3, r3, #1
d0041c62:	d005      	beq.n	d0041c70 <midi_player_get_duration_ms+0x198>
d0041c64:	f002 05f0 	and.w	r5, r2, #240	; 0xf0
d0041c68:	2df0      	cmp	r5, #240	; 0xf0
d0041c6a:	d03a      	beq.n	d0041ce2 <midi_player_get_duration_ms+0x20a>
d0041c6c:	4690      	mov	r8, r2
d0041c6e:	e7ec      	b.n	d0041c4a <midi_player_get_duration_ms+0x172>
d0041c70:	429c      	cmp	r4, r3
d0041c72:	d9d2      	bls.n	d0041c1a <midi_player_get_duration_ms+0x142>
d0041c74:	461a      	mov	r2, r3
d0041c76:	f812 8b01 	ldrb.w	r8, [r2], #1
d0041c7a:	4294      	cmp	r4, r2
d0041c7c:	d9cd      	bls.n	d0041c1a <midi_player_get_duration_ms+0x142>
d0041c7e:	f893 c001 	ldrb.w	ip, [r3, #1]
d0041c82:	1c9a      	adds	r2, r3, #2
d0041c84:	f01c 0f80 	tst.w	ip, #128	; 0x80
d0041c88:	f00c 057f 	and.w	r5, ip, #127	; 0x7f
d0041c8c:	d022      	beq.n	d0041cd4 <midi_player_get_duration_ms+0x1fc>
d0041c8e:	4294      	cmp	r4, r2
d0041c90:	d9c3      	bls.n	d0041c1a <midi_player_get_duration_ms+0x142>
d0041c92:	f893 c002 	ldrb.w	ip, [r3, #2]
d0041c96:	1cda      	adds	r2, r3, #3
d0041c98:	f00c 0b7f 	and.w	fp, ip, #127	; 0x7f
d0041c9c:	f01c 0f80 	tst.w	ip, #128	; 0x80
d0041ca0:	ea4b 15c5 	orr.w	r5, fp, r5, lsl #7
d0041ca4:	d016      	beq.n	d0041cd4 <midi_player_get_duration_ms+0x1fc>
d0041ca6:	4294      	cmp	r4, r2
d0041ca8:	d9b7      	bls.n	d0041c1a <midi_player_get_duration_ms+0x142>
d0041caa:	f893 c003 	ldrb.w	ip, [r3, #3]
d0041cae:	1d1a      	adds	r2, r3, #4
d0041cb0:	f00c 0b7f 	and.w	fp, ip, #127	; 0x7f
d0041cb4:	f01c 0f80 	tst.w	ip, #128	; 0x80
d0041cb8:	ea4b 15c5 	orr.w	r5, fp, r5, lsl #7
d0041cbc:	d00a      	beq.n	d0041cd4 <midi_player_get_duration_ms+0x1fc>
d0041cbe:	4294      	cmp	r4, r2
d0041cc0:	d9ab      	bls.n	d0041c1a <midi_player_get_duration_ms+0x142>
d0041cc2:	f993 2004 	ldrsb.w	r2, [r3, #4]
d0041cc6:	f893 c004 	ldrb.w	ip, [r3, #4]
d0041cca:	2a00      	cmp	r2, #0
d0041ccc:	dba5      	blt.n	d0041c1a <midi_player_get_duration_ms+0x142>
d0041cce:	1d5a      	adds	r2, r3, #5
d0041cd0:	ea4c 15c5 	orr.w	r5, ip, r5, lsl #7
d0041cd4:	f1b8 0f2f 	cmp.w	r8, #47	; 0x2f
d0041cd8:	d09f      	beq.n	d0041c1a <midi_player_get_duration_ms+0x142>
d0041cda:	442a      	add	r2, r5
d0041cdc:	f04f 08ff 	mov.w	r8, #255	; 0xff
d0041ce0:	e7b9      	b.n	d0041c56 <midi_player_get_duration_ms+0x17e>
d0041ce2:	429c      	cmp	r4, r3
d0041ce4:	d999      	bls.n	d0041c1a <midi_player_get_duration_ms+0x142>
d0041ce6:	4690      	mov	r8, r2
d0041ce8:	461a      	mov	r2, r3
d0041cea:	f812 cb01 	ldrb.w	ip, [r2], #1
d0041cee:	f01c 0f80 	tst.w	ip, #128	; 0x80
d0041cf2:	f00c 057f 	and.w	r5, ip, #127	; 0x7f
d0041cf6:	d024      	beq.n	d0041d42 <midi_player_get_duration_ms+0x26a>
d0041cf8:	4294      	cmp	r4, r2
d0041cfa:	d98e      	bls.n	d0041c1a <midi_player_get_duration_ms+0x142>
d0041cfc:	f893 c001 	ldrb.w	ip, [r3, #1]
d0041d00:	1c9a      	adds	r2, r3, #2
d0041d02:	f00c 0b7f 	and.w	fp, ip, #127	; 0x7f
d0041d06:	f01c 0f80 	tst.w	ip, #128	; 0x80
d0041d0a:	ea4b 15c5 	orr.w	r5, fp, r5, lsl #7
d0041d0e:	d018      	beq.n	d0041d42 <midi_player_get_duration_ms+0x26a>
d0041d10:	4294      	cmp	r4, r2
d0041d12:	d982      	bls.n	d0041c1a <midi_player_get_duration_ms+0x142>
d0041d14:	f893 c002 	ldrb.w	ip, [r3, #2]
d0041d18:	1cda      	adds	r2, r3, #3
d0041d1a:	f00c 0b7f 	and.w	fp, ip, #127	; 0x7f
d0041d1e:	f01c 0f80 	tst.w	ip, #128	; 0x80
d0041d22:	ea4b 15c5 	orr.w	r5, fp, r5, lsl #7
d0041d26:	d00c      	beq.n	d0041d42 <midi_player_get_duration_ms+0x26a>
d0041d28:	4294      	cmp	r4, r2
d0041d2a:	f67f af76 	bls.w	d0041c1a <midi_player_get_duration_ms+0x142>
d0041d2e:	f993 2003 	ldrsb.w	r2, [r3, #3]
d0041d32:	f893 c003 	ldrb.w	ip, [r3, #3]
d0041d36:	2a00      	cmp	r2, #0
d0041d38:	f6ff af6f 	blt.w	d0041c1a <midi_player_get_duration_ms+0x142>
d0041d3c:	1d1a      	adds	r2, r3, #4
d0041d3e:	ea4c 15c5 	orr.w	r5, ip, r5, lsl #7
d0041d42:	442a      	add	r2, r5
d0041d44:	e787      	b.n	d0041c56 <midi_player_get_duration_ms+0x17e>
d0041d46:	2000      	movs	r0, #0
d0041d48:	b003      	add	sp, #12
d0041d4a:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0041d4e:	f44f 70fa 	mov.w	r0, #500	; 0x1f4
d0041d52:	9b01      	ldr	r3, [sp, #4]
d0041d54:	fb00 f00e 	mul.w	r0, r0, lr
d0041d58:	fbb0 f0f3 	udiv	r0, r0, r3
d0041d5c:	b003      	add	sp, #12
d0041d5e:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0041d62:	bf00      	nop

d0041d64 <midi_player_init>:
d0041d64:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0041d68:	4616      	mov	r6, r2
d0041d6a:	b083      	sub	sp, #12
d0041d6c:	460c      	mov	r4, r1
d0041d6e:	f44f 7294 	mov.w	r2, #296	; 0x128
d0041d72:	2100      	movs	r1, #0
d0041d74:	4605      	mov	r5, r0
d0041d76:	f002 fba1 	bl	d00444bc <memset>
d0041d7a:	4b6f      	ldr	r3, [pc, #444]	; (d0041f38 <midi_player_init+0x1d4>)
d0041d7c:	2000      	movs	r0, #0
d0041d7e:	2e0d      	cmp	r6, #13
d0041d80:	f8c5 3114 	str.w	r3, [r5, #276]	; 0x114
d0041d84:	f885 0101 	strb.w	r0, [r5, #257]	; 0x101
d0041d88:	d902      	bls.n	d0041d90 <midi_player_init+0x2c>
d0041d8a:	7823      	ldrb	r3, [r4, #0]
d0041d8c:	2b4d      	cmp	r3, #77	; 0x4d
d0041d8e:	d002      	beq.n	d0041d96 <midi_player_init+0x32>
d0041d90:	b003      	add	sp, #12
d0041d92:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0041d96:	7863      	ldrb	r3, [r4, #1]
d0041d98:	1c62      	adds	r2, r4, #1
d0041d9a:	2b54      	cmp	r3, #84	; 0x54
d0041d9c:	d1f8      	bne.n	d0041d90 <midi_player_init+0x2c>
d0041d9e:	f812 3f01 	ldrb.w	r3, [r2, #1]!
d0041da2:	2b68      	cmp	r3, #104	; 0x68
d0041da4:	d1f4      	bne.n	d0041d90 <midi_player_init+0x2c>
d0041da6:	7853      	ldrb	r3, [r2, #1]
d0041da8:	2b64      	cmp	r3, #100	; 0x64
d0041daa:	d1f1      	bne.n	d0041d90 <midi_player_init+0x2c>
d0041dac:	7963      	ldrb	r3, [r4, #5]
d0041dae:	7922      	ldrb	r2, [r4, #4]
d0041db0:	79a1      	ldrb	r1, [r4, #6]
d0041db2:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
d0041db6:	79e3      	ldrb	r3, [r4, #7]
d0041db8:	ea42 4201 	orr.w	r2, r2, r1, lsl #16
d0041dbc:	ea42 6203 	orr.w	r2, r2, r3, lsl #24
d0041dc0:	ba12      	rev	r2, r2
d0041dc2:	2a05      	cmp	r2, #5
d0041dc4:	d9e4      	bls.n	d0041d90 <midi_player_init+0x2c>
d0041dc6:	f102 0708 	add.w	r7, r2, #8
d0041dca:	42be      	cmp	r6, r7
d0041dcc:	d3e0      	bcc.n	d0041d90 <midi_player_init+0x2c>
d0041dce:	7a21      	ldrb	r1, [r4, #8]
d0041dd0:	7a63      	ldrb	r3, [r4, #9]
d0041dd2:	ea43 2301 	orr.w	r3, r3, r1, lsl #8
d0041dd6:	f8a5 3102 	strh.w	r3, [r5, #258]	; 0x102
d0041dda:	7b21      	ldrb	r1, [r4, #12]
d0041ddc:	7b63      	ldrb	r3, [r4, #13]
d0041dde:	f894 c00a 	ldrb.w	ip, [r4, #10]
d0041de2:	ea43 2301 	orr.w	r3, r3, r1, lsl #8
d0041de6:	7ae1      	ldrb	r1, [r4, #11]
d0041de8:	b21b      	sxth	r3, r3
d0041dea:	4283      	cmp	r3, r0
d0041dec:	f8a5 3104 	strh.w	r3, [r5, #260]	; 0x104
d0041df0:	ddce      	ble.n	d0041d90 <midi_player_init+0x2c>
d0041df2:	3210      	adds	r2, #16
d0041df4:	4296      	cmp	r6, r2
d0041df6:	f0c0 8097 	bcc.w	d0041f28 <midi_player_init+0x1c4>
d0041dfa:	ea41 2a0c 	orr.w	sl, r1, ip, lsl #8
d0041dfe:	e008      	b.n	d0041e12 <midi_player_init+0xae>
d0041e00:	18d7      	adds	r7, r2, r3
d0041e02:	f107 0208 	add.w	r2, r7, #8
d0041e06:	4296      	cmp	r6, r2
d0041e08:	f0c0 808b 	bcc.w	d0041f22 <midi_player_init+0x1be>
d0041e0c:	280f      	cmp	r0, #15
d0041e0e:	f200 8090 	bhi.w	d0041f32 <midi_player_init+0x1ce>
d0041e12:	4582      	cmp	sl, r0
d0041e14:	f240 8085 	bls.w	d0041f22 <midi_player_init+0x1be>
d0041e18:	19e1      	adds	r1, r4, r7
d0041e1a:	eba6 0c02 	sub.w	ip, r6, r2
d0041e1e:	f891 e005 	ldrb.w	lr, [r1, #5]
d0041e22:	790b      	ldrb	r3, [r1, #4]
d0041e24:	ea43 230e 	orr.w	r3, r3, lr, lsl #8
d0041e28:	f891 e006 	ldrb.w	lr, [r1, #6]
d0041e2c:	ea43 430e 	orr.w	r3, r3, lr, lsl #16
d0041e30:	f891 e007 	ldrb.w	lr, [r1, #7]
d0041e34:	ea43 630e 	orr.w	r3, r3, lr, lsl #24
d0041e38:	ba1b      	rev	r3, r3
d0041e3a:	4563      	cmp	r3, ip
d0041e3c:	d871      	bhi.n	d0041f22 <midi_player_init+0x1be>
d0041e3e:	5de7      	ldrb	r7, [r4, r7]
d0041e40:	2f4d      	cmp	r7, #77	; 0x4d
d0041e42:	d1dd      	bne.n	d0041e00 <midi_player_init+0x9c>
d0041e44:	784f      	ldrb	r7, [r1, #1]
d0041e46:	3101      	adds	r1, #1
d0041e48:	2f54      	cmp	r7, #84	; 0x54
d0041e4a:	d1d9      	bne.n	d0041e00 <midi_player_init+0x9c>
d0041e4c:	f811 7f01 	ldrb.w	r7, [r1, #1]!
d0041e50:	2f72      	cmp	r7, #114	; 0x72
d0041e52:	d1d5      	bne.n	d0041e00 <midi_player_init+0x9c>
d0041e54:	7849      	ldrb	r1, [r1, #1]
d0041e56:	296b      	cmp	r1, #107	; 0x6b
d0041e58:	d1d2      	bne.n	d0041e00 <midi_player_init+0x9c>
d0041e5a:	0107      	lsls	r7, r0, #4
d0041e5c:	eb04 0802 	add.w	r8, r4, r2
d0041e60:	eb05 1b00 	add.w	fp, r5, r0, lsl #4
d0041e64:	2100      	movs	r1, #0
d0041e66:	f845 8007 	str.w	r8, [r5, r7]
d0041e6a:	eb08 0e03 	add.w	lr, r8, r3
d0041e6e:	f8cb 1008 	str.w	r1, [fp, #8]
d0041e72:	f44f 7180 	mov.w	r1, #256	; 0x100
d0041e76:	f8cb e004 	str.w	lr, [fp, #4]
d0041e7a:	4681      	mov	r9, r0
d0041e7c:	f8ab 100c 	strh.w	r1, [fp, #12]
d0041e80:	46f4      	mov	ip, lr
d0041e82:	59e9      	ldr	r1, [r5, r7]
d0041e84:	9701      	str	r7, [sp, #4]
d0041e86:	4571      	cmp	r1, lr
d0041e88:	d235      	bcs.n	d0041ef6 <midi_player_init+0x192>
d0041e8a:	f101 0801 	add.w	r8, r1, #1
d0041e8e:	f845 8007 	str.w	r8, [r5, r7]
d0041e92:	f891 e000 	ldrb.w	lr, [r1]
d0041e96:	f01e 0f80 	tst.w	lr, #128	; 0x80
d0041e9a:	f00e 007f 	and.w	r0, lr, #127	; 0x7f
d0041e9e:	d033      	beq.n	d0041f08 <midi_player_init+0x1a4>
d0041ea0:	45c4      	cmp	ip, r8
d0041ea2:	d926      	bls.n	d0041ef2 <midi_player_init+0x18e>
d0041ea4:	f101 0802 	add.w	r8, r1, #2
d0041ea8:	f845 8007 	str.w	r8, [r5, r7]
d0041eac:	f891 e001 	ldrb.w	lr, [r1, #1]
d0041eb0:	f00e 0b7f 	and.w	fp, lr, #127	; 0x7f
d0041eb4:	f01e 0f80 	tst.w	lr, #128	; 0x80
d0041eb8:	ea4b 10c0 	orr.w	r0, fp, r0, lsl #7
d0041ebc:	d024      	beq.n	d0041f08 <midi_player_init+0x1a4>
d0041ebe:	45c4      	cmp	ip, r8
d0041ec0:	d917      	bls.n	d0041ef2 <midi_player_init+0x18e>
d0041ec2:	f101 0803 	add.w	r8, r1, #3
d0041ec6:	f845 8007 	str.w	r8, [r5, r7]
d0041eca:	f891 e002 	ldrb.w	lr, [r1, #2]
d0041ece:	f00e 0b7f 	and.w	fp, lr, #127	; 0x7f
d0041ed2:	f01e 0f80 	tst.w	lr, #128	; 0x80
d0041ed6:	ea4b 10c0 	orr.w	r0, fp, r0, lsl #7
d0041eda:	d015      	beq.n	d0041f08 <midi_player_init+0x1a4>
d0041edc:	45c4      	cmp	ip, r8
d0041ede:	d908      	bls.n	d0041ef2 <midi_player_init+0x18e>
d0041ee0:	f101 0c04 	add.w	ip, r1, #4
d0041ee4:	f845 c007 	str.w	ip, [r5, r7]
d0041ee8:	f991 7003 	ldrsb.w	r7, [r1, #3]
d0041eec:	78c9      	ldrb	r1, [r1, #3]
d0041eee:	2f00      	cmp	r7, #0
d0041ef0:	da08      	bge.n	d0041f04 <midi_player_init+0x1a0>
d0041ef2:	f895 0100 	ldrb.w	r0, [r5, #256]	; 0x100
d0041ef6:	eb05 1909 	add.w	r9, r5, r9, lsl #4
d0041efa:	f04f 0100 	mov.w	r1, #0
d0041efe:	f889 100d 	strb.w	r1, [r9, #13]
d0041f02:	e77d      	b.n	d0041e00 <midi_player_init+0x9c>
d0041f04:	ea41 10c0 	orr.w	r0, r1, r0, lsl #7
d0041f08:	9901      	ldr	r1, [sp, #4]
d0041f0a:	4429      	add	r1, r5
d0041f0c:	460f      	mov	r7, r1
d0041f0e:	6889      	ldr	r1, [r1, #8]
d0041f10:	4408      	add	r0, r1
d0041f12:	60b8      	str	r0, [r7, #8]
d0041f14:	f895 0100 	ldrb.w	r0, [r5, #256]	; 0x100
d0041f18:	3001      	adds	r0, #1
d0041f1a:	b2c0      	uxtb	r0, r0
d0041f1c:	f885 0100 	strb.w	r0, [r5, #256]	; 0x100
d0041f20:	e76e      	b.n	d0041e00 <midi_player_init+0x9c>
d0041f22:	3800      	subs	r0, #0
d0041f24:	bf18      	it	ne
d0041f26:	2001      	movne	r0, #1
d0041f28:	f885 0120 	strb.w	r0, [r5, #288]	; 0x120
d0041f2c:	b003      	add	sp, #12
d0041f2e:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0041f32:	2001      	movs	r0, #1
d0041f34:	e7f8      	b.n	d0041f28 <midi_player_init+0x1c4>
d0041f36:	bf00      	nop
d0041f38:	0007a120 	.word	0x0007a120

d0041f3c <setup>:
d0041f3c:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
d0041f40:	4607      	mov	r7, r0
d0041f42:	b082      	sub	sp, #8
d0041f44:	4688      	mov	r8, r1
d0041f46:	4615      	mov	r5, r2
d0041f48:	2100      	movs	r1, #0
d0041f4a:	f44f 6240 	mov.w	r2, #3072	; 0xc00
d0041f4e:	482a      	ldr	r0, [pc, #168]	; (d0041ff8 <setup+0xbc>)
d0041f50:	f002 fab4 	bl	d00444bc <memset>
d0041f54:	4c29      	ldr	r4, [pc, #164]	; (d0041ffc <setup+0xc0>)
d0041f56:	2100      	movs	r1, #0
d0041f58:	4b29      	ldr	r3, [pc, #164]	; (d0042000 <setup+0xc4>)
d0041f5a:	f8df c0b8 	ldr.w	ip, [pc, #184]	; d0042014 <setup+0xd8>
d0041f5e:	f44f 5248 	mov.w	r2, #12800	; 0x3200
d0041f62:	7019      	strb	r1, [r3, #0]
d0041f64:	4608      	mov	r0, r1
d0041f66:	7b23      	ldrb	r3, [r4, #12]
d0041f68:	7b66      	ldrb	r6, [r4, #13]
d0041f6a:	f8cc 1000 	str.w	r1, [ip]
d0041f6e:	ea43 2306 	orr.w	r3, r3, r6, lsl #8
d0041f72:	7ba6      	ldrb	r6, [r4, #14]
d0041f74:	f8df c0a0 	ldr.w	ip, [pc, #160]	; d0042018 <setup+0xdc>
d0041f78:	ea43 4306 	orr.w	r3, r3, r6, lsl #16
d0041f7c:	7be6      	ldrb	r6, [r4, #15]
d0041f7e:	f8cc 1000 	str.w	r1, [ip]
d0041f82:	ea43 6306 	orr.w	r3, r3, r6, lsl #24
d0041f86:	f8df c094 	ldr.w	ip, [pc, #148]	; d004201c <setup+0xe0>
d0041f8a:	4e1e      	ldr	r6, [pc, #120]	; (d0042004 <setup+0xc8>)
d0041f8c:	681b      	ldr	r3, [r3, #0]
d0041f8e:	f8cc 2000 	str.w	r2, [ip]
d0041f92:	6b1b      	ldr	r3, [r3, #48]	; 0x30
d0041f94:	4798      	blx	r3
d0041f96:	4642      	mov	r2, r8
d0041f98:	4639      	mov	r1, r7
d0041f9a:	4630      	mov	r0, r6
d0041f9c:	f7ff fee2 	bl	d0041d64 <midi_player_init>
d0041fa0:	f886 5101 	strb.w	r5, [r6, #257]	; 0x101
d0041fa4:	b9a5      	cbnz	r5, d0041fd0 <setup+0x94>
d0041fa6:	7d23      	ldrb	r3, [r4, #20]
d0041fa8:	7d62      	ldrb	r2, [r4, #21]
d0041faa:	7da0      	ldrb	r0, [r4, #22]
d0041fac:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0041fb0:	7de1      	ldrb	r1, [r4, #23]
d0041fb2:	4a15      	ldr	r2, [pc, #84]	; (d0042008 <setup+0xcc>)
d0041fb4:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
d0041fb8:	ea43 6301 	orr.w	r3, r3, r1, lsl #24
d0041fbc:	e892 0003 	ldmia.w	r2, {r0, r1}
d0041fc0:	9000      	str	r0, [sp, #0]
d0041fc2:	4668      	mov	r0, sp
d0041fc4:	f8ad 1004 	strh.w	r1, [sp, #4]
d0041fc8:	2106      	movs	r1, #6
d0041fca:	681b      	ldr	r3, [r3, #0]
d0041fcc:	695b      	ldr	r3, [r3, #20]
d0041fce:	4798      	blx	r3
d0041fd0:	f7fe fa96 	bl	d0040500 <midi_send_channel_panic>
d0041fd4:	4c0d      	ldr	r4, [pc, #52]	; (d004200c <setup+0xd0>)
d0041fd6:	f896 0101 	ldrb.w	r0, [r6, #257]	; 0x101
d0041fda:	2200      	movs	r2, #0
d0041fdc:	490c      	ldr	r1, [pc, #48]	; (d0042010 <setup+0xd4>)
d0041fde:	2818      	cmp	r0, #24
d0041fe0:	bf18      	it	ne
d0041fe2:	4621      	movne	r1, r4
d0041fe4:	f001 fef6 	bl	d0043dd4 <midi_translator_send_setup_burst>
d0041fe8:	4621      	mov	r1, r4
d0041fea:	4628      	mov	r0, r5
d0041fec:	2200      	movs	r2, #0
d0041fee:	f002 f861 	bl	d00440b4 <midi_translator_send_post_load_burst>
d0041ff2:	b002      	add	sp, #8
d0041ff4:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
d0041ff8:	d0046db0 	.word	0xd0046db0
d0041ffc:	2001f000 	.word	0x2001f000
d0042000:	d00479b4 	.word	0xd00479b4
d0042004:	d0047bc8 	.word	0xd0047bc8
d0042008:	d0045cf8 	.word	0xd0045cf8
d004200c:	d00404bd 	.word	0xd00404bd
d0042010:	d00410f5 	.word	0xd00410f5
d0042014:	d0046da8 	.word	0xd0046da8
d0042018:	d00479b0 	.word	0xd00479b0
d004201c:	d0046dac 	.word	0xd0046dac

d0042020 <main>:
d0042020:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0042024:	4606      	mov	r6, r0
d0042026:	4688      	mov	r8, r1
d0042028:	ed2d 8b02 	vpush	{d8}
d004202c:	b0ad      	sub	sp, #180	; 0xb4
d004202e:	f7fe f805 	bl	d004003c <initMalloc>
d0042032:	2e00      	cmp	r6, #0
d0042034:	f340 82c8 	ble.w	d00425c8 <main+0x5a8>
d0042038:	f1a8 0304 	sub.w	r3, r8, #4
d004203c:	2500      	movs	r5, #0
d004203e:	461f      	mov	r7, r3
d0042040:	4699      	mov	r9, r3
d0042042:	e002      	b.n	d004204a <main+0x2a>
d0042044:	42ae      	cmp	r6, r5
d0042046:	f000 80ed 	beq.w	d0042224 <main+0x204>
d004204a:	f859 4f04 	ldr.w	r4, [r9, #4]!
d004204e:	3501      	adds	r5, #1
d0042050:	4620      	mov	r0, r4
d0042052:	2c00      	cmp	r4, #0
d0042054:	d0f6      	beq.n	d0042044 <main+0x24>
d0042056:	f002 fc69 	bl	d004492c <strlen>
d004205a:	1f03      	subs	r3, r0, #4
d004205c:	2803      	cmp	r0, #3
d004205e:	eb04 0203 	add.w	r2, r4, r3
d0042062:	d9ef      	bls.n	d0042044 <main+0x24>
d0042064:	5ce3      	ldrb	r3, [r4, r3]
d0042066:	2b2e      	cmp	r3, #46	; 0x2e
d0042068:	d1ec      	bne.n	d0042044 <main+0x24>
d004206a:	7853      	ldrb	r3, [r2, #1]
d004206c:	f003 03df 	and.w	r3, r3, #223	; 0xdf
d0042070:	2b4d      	cmp	r3, #77	; 0x4d
d0042072:	d1e7      	bne.n	d0042044 <main+0x24>
d0042074:	7893      	ldrb	r3, [r2, #2]
d0042076:	f003 03df 	and.w	r3, r3, #223	; 0xdf
d004207a:	2b49      	cmp	r3, #73	; 0x49
d004207c:	d1e2      	bne.n	d0042044 <main+0x24>
d004207e:	78d3      	ldrb	r3, [r2, #3]
d0042080:	f003 03df 	and.w	r3, r3, #223	; 0xdf
d0042084:	2b44      	cmp	r3, #68	; 0x44
d0042086:	d1dd      	bne.n	d0042044 <main+0x24>
d0042088:	2500      	movs	r5, #0
d004208a:	f10d 025f 	add.w	r2, sp, #95	; 0x5f
d004208e:	4641      	mov	r1, r8
d0042090:	4630      	mov	r0, r6
d0042092:	f88d 505f 	strb.w	r5, [sp, #95]	; 0x5f
d0042096:	f7fe febb 	bl	d0040e10 <find_translator_arg.constprop.0>
d004209a:	4603      	mov	r3, r0
d004209c:	4ab7      	ldr	r2, [pc, #732]	; (d004237c <main+0x35c>)
d004209e:	4641      	mov	r1, r8
d00420a0:	4630      	mov	r0, r6
d00420a2:	9304      	str	r3, [sp, #16]
d00420a4:	f7fe fe10 	bl	d0040cc8 <find_arg.part.0>
d00420a8:	f8df 931c 	ldr.w	r9, [pc, #796]	; d00423c8 <main+0x3a8>
d00420ac:	9402      	str	r4, [sp, #8]
d00420ae:	463c      	mov	r4, r7
d00420b0:	f8df b318 	ldr.w	fp, [pc, #792]	; d00423cc <main+0x3ac>
d00420b4:	f8df a318 	ldr.w	sl, [pc, #792]	; d00423d0 <main+0x3b0>
d00420b8:	9003      	str	r0, [sp, #12]
d00420ba:	f854 7f04 	ldr.w	r7, [r4, #4]!
d00420be:	3501      	adds	r5, #1
d00420c0:	4649      	mov	r1, r9
d00420c2:	4638      	mov	r0, r7
d00420c4:	b1c7      	cbz	r7, d00420f8 <main+0xd8>
d00420c6:	f002 fc27 	bl	d0044918 <strcmp>
d00420ca:	4603      	mov	r3, r0
d00420cc:	4659      	mov	r1, fp
d00420ce:	4638      	mov	r0, r7
d00420d0:	2b00      	cmp	r3, #0
d00420d2:	d068      	beq.n	d00421a6 <main+0x186>
d00420d4:	f002 fc20 	bl	d0044918 <strcmp>
d00420d8:	4603      	mov	r3, r0
d00420da:	4651      	mov	r1, sl
d00420dc:	4638      	mov	r0, r7
d00420de:	2b00      	cmp	r3, #0
d00420e0:	d061      	beq.n	d00421a6 <main+0x186>
d00420e2:	f002 fc19 	bl	d0044918 <strcmp>
d00420e6:	4603      	mov	r3, r0
d00420e8:	49a5      	ldr	r1, [pc, #660]	; (d0042380 <main+0x360>)
d00420ea:	4638      	mov	r0, r7
d00420ec:	2b00      	cmp	r3, #0
d00420ee:	d05a      	beq.n	d00421a6 <main+0x186>
d00420f0:	f002 fc12 	bl	d0044918 <strcmp>
d00420f4:	2800      	cmp	r0, #0
d00420f6:	d056      	beq.n	d00421a6 <main+0x186>
d00420f8:	42ae      	cmp	r6, r5
d00420fa:	d1de      	bne.n	d00420ba <main+0x9a>
d00420fc:	9c02      	ldr	r4, [sp, #8]
d00420fe:	2700      	movs	r7, #0
d0042100:	4aa0      	ldr	r2, [pc, #640]	; (d0042384 <main+0x364>)
d0042102:	4641      	mov	r1, r8
d0042104:	4630      	mov	r0, r6
d0042106:	f7fe fddf 	bl	d0040cc8 <find_arg.part.0>
d004210a:	4681      	mov	r9, r0
d004210c:	2800      	cmp	r0, #0
d004210e:	d154      	bne.n	d00421ba <main+0x19a>
d0042110:	4a9d      	ldr	r2, [pc, #628]	; (d0042388 <main+0x368>)
d0042112:	4641      	mov	r1, r8
d0042114:	4630      	mov	r0, r6
d0042116:	f7fe fdd7 	bl	d0040cc8 <find_arg.part.0>
d004211a:	fab4 f384 	clz	r3, r4
d004211e:	4605      	mov	r5, r0
d0042120:	095b      	lsrs	r3, r3, #5
d0042122:	ea13 0200 	ands.w	r2, r3, r0
d0042126:	9202      	str	r2, [sp, #8]
d0042128:	d10d      	bne.n	d0042146 <main+0x126>
d004212a:	f087 0901 	eor.w	r9, r7, #1
d004212e:	ea13 0909 	ands.w	r9, r3, r9
d0042132:	f000 8247 	beq.w	d00425c4 <main+0x5a4>
d0042136:	9b04      	ldr	r3, [sp, #16]
d0042138:	9a03      	ldr	r2, [sp, #12]
d004213a:	ea43 0902 	orr.w	r9, r3, r2
d004213e:	f019 09ff 	ands.w	r9, r9, #255	; 0xff
d0042142:	f000 8089 	beq.w	d0042258 <main+0x238>
d0042146:	f04f 0b00 	mov.w	fp, #0
d004214a:	4890      	ldr	r0, [pc, #576]	; (d004238c <main+0x36c>)
d004214c:	aa1c      	add	r2, sp, #112	; 0x70
d004214e:	a91a      	add	r1, sp, #104	; 0x68
d0042150:	f88d b068 	strb.w	fp, [sp, #104]	; 0x68
d0042154:	f88d b070 	strb.w	fp, [sp, #112]	; 0x70
d0042158:	f7fe fd34 	bl	d0040bc4 <read_translator_config_path>
d004215c:	4682      	mov	sl, r0
d004215e:	2800      	cmp	r0, #0
d0042160:	d162      	bne.n	d0042228 <main+0x208>
d0042162:	a91a      	add	r1, sp, #104	; 0x68
d0042164:	aa1c      	add	r2, sp, #112	; 0x70
d0042166:	488a      	ldr	r0, [pc, #552]	; (d0042390 <main+0x370>)
d0042168:	af1b      	add	r7, sp, #108	; 0x6c
d004216a:	f7fe fd2b 	bl	d0040bc4 <read_translator_config_path>
d004216e:	4603      	mov	r3, r0
d0042170:	4641      	mov	r1, r8
d0042172:	4630      	mov	r0, r6
d0042174:	2b00      	cmp	r3, #0
d0042176:	f040 80c0 	bne.w	d00422fa <main+0x2da>
d004217a:	463a      	mov	r2, r7
d004217c:	f89d 6070 	ldrb.w	r6, [sp, #112]	; 0x70
d0042180:	f88d 306c 	strb.w	r3, [sp, #108]	; 0x6c
d0042184:	f7fe fe44 	bl	d0040e10 <find_translator_arg.constprop.0>
d0042188:	2800      	cmp	r0, #0
d004218a:	f040 812c 	bne.w	d00423e6 <main+0x3c6>
d004218e:	a91c      	add	r1, sp, #112	; 0x70
d0042190:	f88d 0070 	strb.w	r0, [sp, #112]	; 0x70
d0042194:	f7fe fdc4 	bl	d0040d20 <write_translator_config.constprop.0>
d0042198:	2800      	cmp	r0, #0
d004219a:	f000 820c 	beq.w	d00425b6 <main+0x596>
d004219e:	2300      	movs	r3, #0
d00421a0:	ee08 3a10 	vmov	s16, r3
d00421a4:	e04e      	b.n	d0042244 <main+0x224>
d00421a6:	4a77      	ldr	r2, [pc, #476]	; (d0042384 <main+0x364>)
d00421a8:	4641      	mov	r1, r8
d00421aa:	4630      	mov	r0, r6
d00421ac:	9c02      	ldr	r4, [sp, #8]
d00421ae:	f7fe fd8b 	bl	d0040cc8 <find_arg.part.0>
d00421b2:	2701      	movs	r7, #1
d00421b4:	4681      	mov	r9, r0
d00421b6:	2800      	cmp	r0, #0
d00421b8:	d0aa      	beq.n	d0042110 <main+0xf0>
d00421ba:	4c76      	ldr	r4, [pc, #472]	; (d0042394 <main+0x374>)
d00421bc:	2000      	movs	r0, #0
d00421be:	7823      	ldrb	r3, [r4, #0]
d00421c0:	7862      	ldrb	r2, [r4, #1]
d00421c2:	78a1      	ldrb	r1, [r4, #2]
d00421c4:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d00421c8:	78e2      	ldrb	r2, [r4, #3]
d00421ca:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d00421ce:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00421d2:	6edb      	ldr	r3, [r3, #108]	; 0x6c
d00421d4:	681b      	ldr	r3, [r3, #0]
d00421d6:	4798      	blx	r3
d00421d8:	7823      	ldrb	r3, [r4, #0]
d00421da:	7862      	ldrb	r2, [r4, #1]
d00421dc:	2000      	movs	r0, #0
d00421de:	78a1      	ldrb	r1, [r4, #2]
d00421e0:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d00421e4:	78e2      	ldrb	r2, [r4, #3]
d00421e6:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d00421ea:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00421ee:	6edb      	ldr	r3, [r3, #108]	; 0x6c
d00421f0:	689b      	ldr	r3, [r3, #8]
d00421f2:	4798      	blx	r3
d00421f4:	f7fe f984 	bl	d0040500 <midi_send_channel_panic>
d00421f8:	4867      	ldr	r0, [pc, #412]	; (d0042398 <main+0x378>)
d00421fa:	f002 fa97 	bl	d004472c <puts>
d00421fe:	7823      	ldrb	r3, [r4, #0]
d0042200:	7862      	ldrb	r2, [r4, #1]
d0042202:	4866      	ldr	r0, [pc, #408]	; (d004239c <main+0x37c>)
d0042204:	78a1      	ldrb	r1, [r4, #2]
d0042206:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004220a:	78e2      	ldrb	r2, [r4, #3]
d004220c:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0042210:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0042214:	68db      	ldr	r3, [r3, #12]
d0042216:	4798      	blx	r3
d0042218:	2000      	movs	r0, #0
d004221a:	b02d      	add	sp, #180	; 0xb4
d004221c:	ecbd 8b02 	vpop	{d8}
d0042220:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0042224:	2400      	movs	r4, #0
d0042226:	e72f      	b.n	d0042088 <main+0x68>
d0042228:	af1b      	add	r7, sp, #108	; 0x6c
d004222a:	4641      	mov	r1, r8
d004222c:	4630      	mov	r0, r6
d004222e:	f88d b06c 	strb.w	fp, [sp, #108]	; 0x6c
d0042232:	463a      	mov	r2, r7
d0042234:	f7fe fdec 	bl	d0040e10 <find_translator_arg.constprop.0>
d0042238:	2800      	cmp	r0, #0
d004223a:	d165      	bne.n	d0042308 <main+0x2e8>
d004223c:	f89d 3068 	ldrb.w	r3, [sp, #104]	; 0x68
d0042240:	ee08 3a10 	vmov	s16, r3
d0042244:	9b03      	ldr	r3, [sp, #12]
d0042246:	2b00      	cmp	r3, #0
d0042248:	f040 80d0 	bne.w	d00423ec <main+0x3cc>
d004224c:	f1b9 0f00 	cmp.w	r9, #0
d0042250:	d015      	beq.n	d004227e <main+0x25e>
d0042252:	9b04      	ldr	r3, [sp, #16]
d0042254:	2b00      	cmp	r3, #0
d0042256:	d16b      	bne.n	d0042330 <main+0x310>
d0042258:	4851      	ldr	r0, [pc, #324]	; (d00423a0 <main+0x380>)
d004225a:	f002 fa67 	bl	d004472c <puts>
d004225e:	4a4d      	ldr	r2, [pc, #308]	; (d0042394 <main+0x374>)
d0042260:	4850      	ldr	r0, [pc, #320]	; (d00423a4 <main+0x384>)
d0042262:	7813      	ldrb	r3, [r2, #0]
d0042264:	7854      	ldrb	r4, [r2, #1]
d0042266:	7891      	ldrb	r1, [r2, #2]
d0042268:	ea43 2304 	orr.w	r3, r3, r4, lsl #8
d004226c:	78d2      	ldrb	r2, [r2, #3]
d004226e:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0042272:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0042276:	68db      	ldr	r3, [r3, #12]
d0042278:	4798      	blx	r3
d004227a:	2001      	movs	r0, #1
d004227c:	e7cd      	b.n	d004221a <main+0x1fa>
d004227e:	9b02      	ldr	r3, [sp, #8]
d0042280:	2b00      	cmp	r3, #0
d0042282:	f000 80a7 	beq.w	d00423d4 <main+0x3b4>
d0042286:	4a48      	ldr	r2, [pc, #288]	; (d00423a8 <main+0x388>)
d0042288:	2352      	movs	r3, #82	; 0x52
d004228a:	1c51      	adds	r1, r2, #1
d004228c:	e004      	b.n	d0042298 <main+0x278>
d004228e:	2b2f      	cmp	r3, #47	; 0x2f
d0042290:	d004      	beq.n	d004229c <main+0x27c>
d0042292:	f811 3b01 	ldrb.w	r3, [r1], #1
d0042296:	b133      	cbz	r3, d00422a6 <main+0x286>
d0042298:	2b5c      	cmp	r3, #92	; 0x5c
d004229a:	d1f8      	bne.n	d004228e <main+0x26e>
d004229c:	460a      	mov	r2, r1
d004229e:	f811 3b01 	ldrb.w	r3, [r1], #1
d00422a2:	2b00      	cmp	r3, #0
d00422a4:	d1f8      	bne.n	d0042298 <main+0x278>
d00422a6:	7810      	ldrb	r0, [r2, #0]
d00422a8:	2800      	cmp	r0, #0
d00422aa:	f001 82cf 	beq.w	d004384c <main+0x182c>
d00422ae:	493f      	ldr	r1, [pc, #252]	; (d00423ac <main+0x38c>)
d00422b0:	460e      	mov	r6, r1
d00422b2:	e001      	b.n	d00422b8 <main+0x298>
d00422b4:	2b37      	cmp	r3, #55	; 0x37
d00422b6:	d006      	beq.n	d00422c6 <main+0x2a6>
d00422b8:	f806 0b01 	strb.w	r0, [r6], #1
d00422bc:	3301      	adds	r3, #1
d00422be:	f812 0f01 	ldrb.w	r0, [r2, #1]!
d00422c2:	2800      	cmp	r0, #0
d00422c4:	d1f6      	bne.n	d00422b4 <main+0x294>
d00422c6:	2200      	movs	r2, #0
d00422c8:	54ca      	strb	r2, [r1, r3]
d00422ca:	9b02      	ldr	r3, [sp, #8]
d00422cc:	2b00      	cmp	r3, #0
d00422ce:	f000 813d 	beq.w	d004254c <main+0x52c>
d00422d2:	4937      	ldr	r1, [pc, #220]	; (d00423b0 <main+0x390>)
d00422d4:	290d      	cmp	r1, #13
d00422d6:	d908      	bls.n	d00422ea <main+0x2ca>
d00422d8:	f04f 4350 	mov.w	r3, #3489660928	; 0xd0000000
d00422dc:	7818      	ldrb	r0, [r3, #0]
d00422de:	284d      	cmp	r0, #77	; 0x4d
d00422e0:	d103      	bne.n	d00422ea <main+0x2ca>
d00422e2:	7858      	ldrb	r0, [r3, #1]
d00422e4:	2854      	cmp	r0, #84	; 0x54
d00422e6:	f000 86b1 	beq.w	d004304c <main+0x102c>
d00422ea:	f04f 4150 	mov.w	r1, #3489660928	; 0xd0000000
d00422ee:	4831      	ldr	r0, [pc, #196]	; (d00423b4 <main+0x394>)
d00422f0:	f002 f996 	bl	d0044620 <iprintf>
d00422f4:	4a27      	ldr	r2, [pc, #156]	; (d0042394 <main+0x374>)
d00422f6:	4830      	ldr	r0, [pc, #192]	; (d00423b8 <main+0x398>)
d00422f8:	e7b3      	b.n	d0042262 <main+0x242>
d00422fa:	463a      	mov	r2, r7
d00422fc:	f88d a06c 	strb.w	sl, [sp, #108]	; 0x6c
d0042300:	f7fe fd86 	bl	d0040e10 <find_translator_arg.constprop.0>
d0042304:	2800      	cmp	r0, #0
d0042306:	d099      	beq.n	d004223c <main+0x21c>
d0042308:	f89d 3068 	ldrb.w	r3, [sp, #104]	; 0x68
d004230c:	f89d 006c 	ldrb.w	r0, [sp, #108]	; 0x6c
d0042310:	4283      	cmp	r3, r0
d0042312:	d00a      	beq.n	d004232a <main+0x30a>
d0042314:	2300      	movs	r3, #0
d0042316:	a91c      	add	r1, sp, #112	; 0x70
d0042318:	f88d 3070 	strb.w	r3, [sp, #112]	; 0x70
d004231c:	f7fe fd00 	bl	d0040d20 <write_translator_config.constprop.0>
d0042320:	2800      	cmp	r0, #0
d0042322:	f000 8142 	beq.w	d00425aa <main+0x58a>
d0042326:	f89d 006c 	ldrb.w	r0, [sp, #108]	; 0x6c
d004232a:	ee08 0a10 	vmov	s16, r0
d004232e:	e789      	b.n	d0042244 <main+0x224>
d0042330:	ee18 3a10 	vmov	r3, s16
d0042334:	2b00      	cmp	r3, #0
d0042336:	f001 8285 	beq.w	d0043844 <main+0x1824>
d004233a:	f7fe f8e1 	bl	d0040500 <midi_send_channel_panic>
d004233e:	ee18 0a10 	vmov	r0, s16
d0042342:	9a03      	ldr	r2, [sp, #12]
d0042344:	491d      	ldr	r1, [pc, #116]	; (d00423bc <main+0x39c>)
d0042346:	f001 fd45 	bl	d0043dd4 <midi_translator_send_setup_burst>
d004234a:	ee18 0a10 	vmov	r0, s16
d004234e:	f001 fd3b 	bl	d0043dc8 <midi_translator_uses_soundfont>
d0042352:	2800      	cmp	r0, #0
d0042354:	f041 8267 	bne.w	d0043826 <main+0x1806>
d0042358:	ee18 0a10 	vmov	r0, s16
d004235c:	f001 fb00 	bl	d0043960 <midi_translator_profile_name>
d0042360:	4601      	mov	r1, r0
d0042362:	4817      	ldr	r0, [pc, #92]	; (d00423c0 <main+0x3a0>)
d0042364:	f002 f95c 	bl	d0044620 <iprintf>
d0042368:	4a0a      	ldr	r2, [pc, #40]	; (d0042394 <main+0x374>)
d004236a:	4816      	ldr	r0, [pc, #88]	; (d00423c4 <main+0x3a4>)
d004236c:	7813      	ldrb	r3, [r2, #0]
d004236e:	7854      	ldrb	r4, [r2, #1]
d0042370:	7891      	ldrb	r1, [r2, #2]
d0042372:	ea43 2304 	orr.w	r3, r3, r4, lsl #8
d0042376:	78d2      	ldrb	r2, [r2, #3]
d0042378:	e748      	b.n	d004220c <main+0x1ec>
d004237a:	bf00      	nop
d004237c:	d004604c 	.word	0xd004604c
d0042380:	d0045f88 	.word	0xd0045f88
d0042384:	d0045d24 	.word	0xd0045d24
d0042388:	d0045d68 	.word	0xd0045d68
d004238c:	d0045cd8 	.word	0xd0045cd8
d0042390:	d0045e40 	.word	0xd0045e40
d0042394:	2001f000 	.word	0x2001f000
d0042398:	d0045d30 	.word	0xd0045d30
d004239c:	d0045d4c 	.word	0xd0045d4c
d00423a0:	d0045d70 	.word	0xd0045d70
d00423a4:	d0045e00 	.word	0xd0045e00
d00423a8:	d0045d00 	.word	0xd0045d00
d00423ac:	d004643c 	.word	0xd004643c
d00423b0:	00040000 	.word	0x00040000
d00423b4:	d0045ef8 	.word	0xd0045ef8
d00423b8:	d0045f20 	.word	0xd0045f20
d00423bc:	d00404bd 	.word	0xd00404bd
d00423c0:	d0045ec4 	.word	0xd0045ec4
d00423c4:	d0045ee0 	.word	0xd0045ee0
d00423c8:	d0045d10 	.word	0xd0045d10
d00423cc:	d0045d18 	.word	0xd0045d18
d00423d0:	d0045d20 	.word	0xd0045d20
d00423d4:	2c00      	cmp	r4, #0
d00423d6:	f000 80b6 	beq.w	d0042546 <main+0x526>
d00423da:	7823      	ldrb	r3, [r4, #0]
d00423dc:	2b00      	cmp	r3, #0
d00423de:	f000 80b2 	beq.w	d0042546 <main+0x526>
d00423e2:	4622      	mov	r2, r4
d00423e4:	e751      	b.n	d004228a <main+0x26a>
d00423e6:	f89d 006c 	ldrb.w	r0, [sp, #108]	; 0x6c
d00423ea:	e793      	b.n	d0042314 <main+0x2f4>
d00423ec:	ee18 0a10 	vmov	r0, s16
d00423f0:	f001 fab6 	bl	d0043960 <midi_translator_profile_name>
d00423f4:	4601      	mov	r1, r0
d00423f6:	48a9      	ldr	r0, [pc, #676]	; (d004269c <main+0x67c>)
d00423f8:	f002 f912 	bl	d0044620 <iprintf>
d00423fc:	ee18 0a10 	vmov	r0, s16
d0042400:	f001 fce2 	bl	d0043dc8 <midi_translator_uses_soundfont>
d0042404:	2800      	cmp	r0, #0
d0042406:	ee18 3a10 	vmov	r3, s16
d004240a:	bf08      	it	eq
d004240c:	2303      	moveq	r3, #3
d004240e:	461c      	mov	r4, r3
d0042410:	ee08 3a10 	vmov	s16, r3
d0042414:	f7fe f874 	bl	d0040500 <midi_send_channel_panic>
d0042418:	2200      	movs	r2, #0
d004241a:	4620      	mov	r0, r4
d004241c:	49a0      	ldr	r1, [pc, #640]	; (d00426a0 <main+0x680>)
d004241e:	f001 fcd9 	bl	d0043dd4 <midi_translator_send_setup_burst>
d0042422:	4620      	mov	r0, r4
d0042424:	f001 fcd0 	bl	d0043dc8 <midi_translator_uses_soundfont>
d0042428:	b108      	cbz	r0, d004242e <main+0x40e>
d004242a:	f7fe fc61 	bl	d0040cf0 <midi_wait_for_synth_ready.part.0>
d004242e:	4d9d      	ldr	r5, [pc, #628]	; (d00426a4 <main+0x684>)
d0042430:	ee18 0a10 	vmov	r0, s16
d0042434:	2200      	movs	r2, #0
d0042436:	499a      	ldr	r1, [pc, #616]	; (d00426a0 <main+0x680>)
d0042438:	9506      	str	r5, [sp, #24]
d004243a:	f001 fe3b 	bl	d00440b4 <midi_translator_send_post_load_burst>
d004243e:	7d2b      	ldrb	r3, [r5, #20]
d0042440:	462e      	mov	r6, r5
d0042442:	7d6a      	ldrb	r2, [r5, #21]
d0042444:	24c0      	movs	r4, #192	; 0xc0
d0042446:	7da8      	ldrb	r0, [r5, #22]
d0042448:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004244c:	4996      	ldr	r1, [pc, #600]	; (d00426a8 <main+0x688>)
d004244e:	4a97      	ldr	r2, [pc, #604]	; (d00426ac <main+0x68c>)
d0042450:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
d0042454:	7de8      	ldrb	r0, [r5, #23]
d0042456:	6809      	ldr	r1, [r1, #0]
d0042458:	6812      	ldr	r2, [r2, #0]
d004245a:	ea43 6300 	orr.w	r3, r3, r0, lsl #24
d004245e:	4d94      	ldr	r5, [pc, #592]	; (d00426b0 <main+0x690>)
d0042460:	4894      	ldr	r0, [pc, #592]	; (d00426b4 <main+0x694>)
d0042462:	682d      	ldr	r5, [r5, #0]
d0042464:	6800      	ldr	r0, [r0, #0]
d0042466:	f8ad 2068 	strh.w	r2, [sp, #104]	; 0x68
d004246a:	0c12      	lsrs	r2, r2, #16
d004246c:	f8ad 1064 	strh.w	r1, [sp, #100]	; 0x64
d0042470:	0c09      	lsrs	r1, r1, #16
d0042472:	f88d 206a 	strb.w	r2, [sp, #106]	; 0x6a
d0042476:	0c02      	lsrs	r2, r0, #16
d0042478:	f88d 1066 	strb.w	r1, [sp, #102]	; 0x66
d004247c:	0c29      	lsrs	r1, r5, #16
d004247e:	f8ad 506c 	strh.w	r5, [sp, #108]	; 0x6c
d0042482:	f88d 106e 	strb.w	r1, [sp, #110]	; 0x6e
d0042486:	2102      	movs	r1, #2
d0042488:	f8ad 0070 	strh.w	r0, [sp, #112]	; 0x70
d004248c:	a818      	add	r0, sp, #96	; 0x60
d004248e:	f88d 2072 	strb.w	r2, [sp, #114]	; 0x72
d0042492:	f8ad 4060 	strh.w	r4, [sp, #96]	; 0x60
d0042496:	2432      	movs	r4, #50	; 0x32
d0042498:	681b      	ldr	r3, [r3, #0]
d004249a:	695b      	ldr	r3, [r3, #20]
d004249c:	4798      	blx	r3
d004249e:	7d33      	ldrb	r3, [r6, #20]
d00424a0:	7d72      	ldrb	r2, [r6, #21]
d00424a2:	2103      	movs	r1, #3
d00424a4:	a819      	add	r0, sp, #100	; 0x64
d00424a6:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d00424aa:	7db2      	ldrb	r2, [r6, #22]
d00424ac:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d00424b0:	7df2      	ldrb	r2, [r6, #23]
d00424b2:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00424b6:	681b      	ldr	r3, [r3, #0]
d00424b8:	695b      	ldr	r3, [r3, #20]
d00424ba:	4798      	blx	r3
d00424bc:	7d33      	ldrb	r3, [r6, #20]
d00424be:	7d72      	ldrb	r2, [r6, #21]
d00424c0:	a81a      	add	r0, sp, #104	; 0x68
d00424c2:	7db1      	ldrb	r1, [r6, #22]
d00424c4:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d00424c8:	7df2      	ldrb	r2, [r6, #23]
d00424ca:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d00424ce:	2103      	movs	r1, #3
d00424d0:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00424d4:	681b      	ldr	r3, [r3, #0]
d00424d6:	695b      	ldr	r3, [r3, #20]
d00424d8:	4798      	blx	r3
d00424da:	7d33      	ldrb	r3, [r6, #20]
d00424dc:	7d72      	ldrb	r2, [r6, #21]
d00424de:	4638      	mov	r0, r7
d00424e0:	7db5      	ldrb	r5, [r6, #22]
d00424e2:	2103      	movs	r1, #3
d00424e4:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d00424e8:	7df2      	ldrb	r2, [r6, #23]
d00424ea:	ea43 4305 	orr.w	r3, r3, r5, lsl #16
d00424ee:	4635      	mov	r5, r6
d00424f0:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00424f4:	681b      	ldr	r3, [r3, #0]
d00424f6:	695b      	ldr	r3, [r3, #20]
d00424f8:	4798      	blx	r3
d00424fa:	7f29      	ldrb	r1, [r5, #28]
d00424fc:	3c01      	subs	r4, #1
d00424fe:	7f6b      	ldrb	r3, [r5, #29]
d0042500:	7faa      	ldrb	r2, [r5, #30]
d0042502:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
d0042506:	7feb      	ldrb	r3, [r5, #31]
d0042508:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d004250c:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0042510:	699b      	ldr	r3, [r3, #24]
d0042512:	4798      	blx	r3
d0042514:	f014 04ff 	ands.w	r4, r4, #255	; 0xff
d0042518:	d1ef      	bne.n	d00424fa <main+0x4da>
d004251a:	9a06      	ldr	r2, [sp, #24]
d004251c:	2103      	movs	r1, #3
d004251e:	a81c      	add	r0, sp, #112	; 0x70
d0042520:	7d13      	ldrb	r3, [r2, #20]
d0042522:	4615      	mov	r5, r2
d0042524:	7d52      	ldrb	r2, [r2, #21]
d0042526:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004252a:	462a      	mov	r2, r5
d004252c:	7dad      	ldrb	r5, [r5, #22]
d004252e:	7dd2      	ldrb	r2, [r2, #23]
d0042530:	ea43 4305 	orr.w	r3, r3, r5, lsl #16
d0042534:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0042538:	681b      	ldr	r3, [r3, #0]
d004253a:	695b      	ldr	r3, [r3, #20]
d004253c:	4798      	blx	r3
d004253e:	f7fd ffdf 	bl	d0040500 <midi_send_channel_panic>
d0042542:	4620      	mov	r0, r4
d0042544:	e669      	b.n	d004221a <main+0x1fa>
d0042546:	4b5c      	ldr	r3, [pc, #368]	; (d00426b8 <main+0x698>)
d0042548:	2200      	movs	r2, #0
d004254a:	701a      	strb	r2, [r3, #0]
d004254c:	2000      	movs	r0, #0
d004254e:	901c      	str	r0, [sp, #112]	; 0x70
d0042550:	2c00      	cmp	r4, #0
d0042552:	f000 8567 	beq.w	d0043024 <main+0x1004>
d0042556:	4f53      	ldr	r7, [pc, #332]	; (d00426a4 <main+0x684>)
d0042558:	2201      	movs	r2, #1
d004255a:	4621      	mov	r1, r4
d004255c:	793b      	ldrb	r3, [r7, #4]
d004255e:	797e      	ldrb	r6, [r7, #5]
d0042560:	9706      	str	r7, [sp, #24]
d0042562:	ea43 2306 	orr.w	r3, r3, r6, lsl #8
d0042566:	79be      	ldrb	r6, [r7, #6]
d0042568:	ea43 4306 	orr.w	r3, r3, r6, lsl #16
d004256c:	79fe      	ldrb	r6, [r7, #7]
d004256e:	ea43 6306 	orr.w	r3, r3, r6, lsl #24
d0042572:	681b      	ldr	r3, [r3, #0]
d0042574:	681b      	ldr	r3, [r3, #0]
d0042576:	4798      	blx	r3
d0042578:	4606      	mov	r6, r0
d004257a:	2800      	cmp	r0, #0
d004257c:	d170      	bne.n	d0042660 <main+0x640>
d004257e:	793b      	ldrb	r3, [r7, #4]
d0042580:	797a      	ldrb	r2, [r7, #5]
d0042582:	79b9      	ldrb	r1, [r7, #6]
d0042584:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0042588:	79fa      	ldrb	r2, [r7, #7]
d004258a:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d004258e:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0042592:	681b      	ldr	r3, [r3, #0]
d0042594:	685b      	ldr	r3, [r3, #4]
d0042596:	4798      	blx	r3
d0042598:	280d      	cmp	r0, #13
d004259a:	4680      	mov	r8, r0
d004259c:	d827      	bhi.n	d00425ee <main+0x5ce>
d004259e:	793b      	ldrb	r3, [r7, #4]
d00425a0:	463d      	mov	r5, r7
d00425a2:	797a      	ldrb	r2, [r7, #5]
d00425a4:	4630      	mov	r0, r6
d00425a6:	79b9      	ldrb	r1, [r7, #6]
d00425a8:	e06d      	b.n	d0042686 <main+0x666>
d00425aa:	f89d 1070 	ldrb.w	r1, [sp, #112]	; 0x70
d00425ae:	4843      	ldr	r0, [pc, #268]	; (d00426bc <main+0x69c>)
d00425b0:	f002 f836 	bl	d0044620 <iprintf>
d00425b4:	e6b7      	b.n	d0042326 <main+0x306>
d00425b6:	4632      	mov	r2, r6
d00425b8:	f89d 1070 	ldrb.w	r1, [sp, #112]	; 0x70
d00425bc:	4840      	ldr	r0, [pc, #256]	; (d00426c0 <main+0x6a0>)
d00425be:	f002 f82f 	bl	d0044620 <iprintf>
d00425c2:	e5ec      	b.n	d004219e <main+0x17e>
d00425c4:	9702      	str	r7, [sp, #8]
d00425c6:	e5be      	b.n	d0042146 <main+0x126>
d00425c8:	2400      	movs	r4, #0
d00425ca:	f10d 025f 	add.w	r2, sp, #95	; 0x5f
d00425ce:	4641      	mov	r1, r8
d00425d0:	4630      	mov	r0, r6
d00425d2:	f88d 405f 	strb.w	r4, [sp, #95]	; 0x5f
d00425d6:	f7fe fc1b 	bl	d0040e10 <find_translator_arg.constprop.0>
d00425da:	4603      	mov	r3, r0
d00425dc:	4a39      	ldr	r2, [pc, #228]	; (d00426c4 <main+0x6a4>)
d00425de:	4641      	mov	r1, r8
d00425e0:	4630      	mov	r0, r6
d00425e2:	9304      	str	r3, [sp, #16]
d00425e4:	4627      	mov	r7, r4
d00425e6:	f7fe fb6f 	bl	d0040cc8 <find_arg.part.0>
d00425ea:	9003      	str	r0, [sp, #12]
d00425ec:	e588      	b.n	d0042100 <main+0xe0>
d00425ee:	f001 ff55 	bl	d004449c <malloc>
d00425f2:	9a06      	ldr	r2, [sp, #24]
d00425f4:	4681      	mov	r9, r0
d00425f6:	4611      	mov	r1, r2
d00425f8:	2800      	cmp	r0, #0
d00425fa:	d040      	beq.n	d004267e <main+0x65e>
d00425fc:	7917      	ldrb	r7, [r2, #4]
d00425fe:	4610      	mov	r0, r2
d0042600:	f892 c005 	ldrb.w	ip, [r2, #5]
d0042604:	ab1c      	add	r3, sp, #112	; 0x70
d0042606:	f891 e006 	ldrb.w	lr, [r1, #6]
d004260a:	4642      	mov	r2, r8
d004260c:	ea47 270c 	orr.w	r7, r7, ip, lsl #8
d0042610:	f890 c007 	ldrb.w	ip, [r0, #7]
d0042614:	4649      	mov	r1, r9
d0042616:	4630      	mov	r0, r6
d0042618:	ea47 470e 	orr.w	r7, r7, lr, lsl #16
d004261c:	ea47 670c 	orr.w	r7, r7, ip, lsl #24
d0042620:	683f      	ldr	r7, [r7, #0]
d0042622:	68bf      	ldr	r7, [r7, #8]
d0042624:	47b8      	blx	r7
d0042626:	9906      	ldr	r1, [sp, #24]
d0042628:	4603      	mov	r3, r0
d004262a:	4630      	mov	r0, r6
d004262c:	790a      	ldrb	r2, [r1, #4]
d004262e:	460f      	mov	r7, r1
d0042630:	7949      	ldrb	r1, [r1, #5]
d0042632:	461e      	mov	r6, r3
d0042634:	79bb      	ldrb	r3, [r7, #6]
d0042636:	ea42 2201 	orr.w	r2, r2, r1, lsl #8
d004263a:	79f9      	ldrb	r1, [r7, #7]
d004263c:	ea42 4303 	orr.w	r3, r2, r3, lsl #16
d0042640:	ea43 6301 	orr.w	r3, r3, r1, lsl #24
d0042644:	681b      	ldr	r3, [r3, #0]
d0042646:	68db      	ldr	r3, [r3, #12]
d0042648:	4798      	blx	r3
d004264a:	b936      	cbnz	r6, d004265a <main+0x63a>
d004264c:	9b1c      	ldr	r3, [sp, #112]	; 0x70
d004264e:	4598      	cmp	r8, r3
d0042650:	d103      	bne.n	d004265a <main+0x63a>
d0042652:	f899 3000 	ldrb.w	r3, [r9]
d0042656:	2b4d      	cmp	r3, #77	; 0x4d
d0042658:	d03a      	beq.n	d00426d0 <main+0x6b0>
d004265a:	4648      	mov	r0, r9
d004265c:	f001 ff26 	bl	d00444ac <free>
d0042660:	4621      	mov	r1, r4
d0042662:	4819      	ldr	r0, [pc, #100]	; (d00426c8 <main+0x6a8>)
d0042664:	f001 ffdc 	bl	d0044620 <iprintf>
d0042668:	9a06      	ldr	r2, [sp, #24]
d004266a:	7813      	ldrb	r3, [r2, #0]
d004266c:	4610      	mov	r0, r2
d004266e:	4611      	mov	r1, r2
d0042670:	7852      	ldrb	r2, [r2, #1]
d0042672:	7889      	ldrb	r1, [r1, #2]
d0042674:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0042678:	78c2      	ldrb	r2, [r0, #3]
d004267a:	4814      	ldr	r0, [pc, #80]	; (d00426cc <main+0x6ac>)
d004267c:	e5f7      	b.n	d004226e <main+0x24e>
d004267e:	7913      	ldrb	r3, [r2, #4]
d0042680:	4615      	mov	r5, r2
d0042682:	7952      	ldrb	r2, [r2, #5]
d0042684:	7989      	ldrb	r1, [r1, #6]
d0042686:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004268a:	79ea      	ldrb	r2, [r5, #7]
d004268c:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0042690:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0042694:	681b      	ldr	r3, [r3, #0]
d0042696:	68db      	ldr	r3, [r3, #12]
d0042698:	4798      	blx	r3
d004269a:	e7e1      	b.n	d0042660 <main+0x640>
d004269c:	d0045ea4 	.word	0xd0045ea4
d00426a0:	d00404bd 	.word	0xd00404bd
d00426a4:	2001f000 	.word	0x2001f000
d00426a8:	d004605c 	.word	0xd004605c
d00426ac:	d0046060 	.word	0xd0046060
d00426b0:	d0046064 	.word	0xd0046064
d00426b4:	d0046068 	.word	0xd0046068
d00426b8:	d004643c 	.word	0xd004643c
d00426bc:	d0045e5c 	.word	0xd0045e5c
d00426c0:	d0045e7c 	.word	0xd0045e7c
d00426c4:	d004604c 	.word	0xd004604c
d00426c8:	d0045f40 	.word	0xd0045f40
d00426cc:	d0045f5c 	.word	0xd0045f5c
d00426d0:	f899 3001 	ldrb.w	r3, [r9, #1]
d00426d4:	2b54      	cmp	r3, #84	; 0x54
d00426d6:	d1c0      	bne.n	d004265a <main+0x63a>
d00426d8:	f899 3002 	ldrb.w	r3, [r9, #2]
d00426dc:	2b68      	cmp	r3, #104	; 0x68
d00426de:	d1bc      	bne.n	d004265a <main+0x63a>
d00426e0:	f899 3003 	ldrb.w	r3, [r9, #3]
d00426e4:	2b64      	cmp	r3, #100	; 0x64
d00426e6:	d1b8      	bne.n	d004265a <main+0x63a>
d00426e8:	4bbf      	ldr	r3, [pc, #764]	; (d00429e8 <main+0x9c8>)
d00426ea:	6818      	ldr	r0, [r3, #0]
d00426ec:	9308      	str	r3, [sp, #32]
d00426ee:	4bbf      	ldr	r3, [pc, #764]	; (d00429ec <main+0x9cc>)
d00426f0:	9309      	str	r3, [sp, #36]	; 0x24
d00426f2:	b118      	cbz	r0, d00426fc <main+0x6dc>
d00426f4:	781b      	ldrb	r3, [r3, #0]
d00426f6:	2b00      	cmp	r3, #0
d00426f8:	f040 8574 	bne.w	d00431e4 <main+0x11c4>
d00426fc:	4abc      	ldr	r2, [pc, #752]	; (d00429f0 <main+0x9d0>)
d00426fe:	2301      	movs	r3, #1
d0042700:	9908      	ldr	r1, [sp, #32]
d0042702:	f8c2 8000 	str.w	r8, [r2]
d0042706:	920f      	str	r2, [sp, #60]	; 0x3c
d0042708:	9a09      	ldr	r2, [sp, #36]	; 0x24
d004270a:	f8c1 9000 	str.w	r9, [r1]
d004270e:	7013      	strb	r3, [r2, #0]
d0042710:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
d0042712:	ee18 2a10 	vmov	r2, s16
d0042716:	f44f 7700 	mov.w	r7, #512	; 0x200
d004271a:	6819      	ldr	r1, [r3, #0]
d004271c:	9b08      	ldr	r3, [sp, #32]
d004271e:	6818      	ldr	r0, [r3, #0]
d0042720:	f7ff fc0c 	bl	d0041f3c <setup>
d0042724:	4bb3      	ldr	r3, [pc, #716]	; (d00429f4 <main+0x9d4>)
d0042726:	f242 7010 	movw	r0, #10000	; 0x2710
d004272a:	2100      	movs	r1, #0
d004272c:	f8d3 6114 	ldr.w	r6, [r3, #276]	; 0x114
d0042730:	f644 6220 	movw	r2, #20000	; 0x4e20
d0042734:	4bb0      	ldr	r3, [pc, #704]	; (d00429f8 <main+0x9d8>)
d0042736:	2e00      	cmp	r6, #0
d0042738:	bf08      	it	eq
d004273a:	461e      	moveq	r6, r3
d004273c:	2300      	movs	r3, #0
d004273e:	fbe7 0106 	umlal	r0, r1, r7, r6
d0042742:	f001 fd29 	bl	d0044198 <__aeabi_uldivmod>
d0042746:	f5b0 3fa0 	cmp.w	r0, #81920	; 0x14000
d004274a:	4baa      	ldr	r3, [pc, #680]	; (d00429f4 <main+0x9d4>)
d004274c:	bf28      	it	cs
d004274e:	f44f 30a0 	movcs.w	r0, #81920	; 0x14000
d0042752:	f893 2120 	ldrb.w	r2, [r3, #288]	; 0x120
d0042756:	f5b0 6f80 	cmp.w	r0, #1024	; 0x400
d004275a:	4ba8      	ldr	r3, [pc, #672]	; (d00429fc <main+0x9dc>)
d004275c:	bf38      	it	cc
d004275e:	f44f 6080 	movcc.w	r0, #1024	; 0x400
d0042762:	6018      	str	r0, [r3, #0]
d0042764:	2a00      	cmp	r2, #0
d0042766:	f000 8430 	beq.w	d0042fca <main+0xfaa>
d004276a:	2d00      	cmp	r5, #0
d004276c:	f040 84ef 	bne.w	d004314e <main+0x112e>
d0042770:	9a06      	ldr	r2, [sp, #24]
d0042772:	4628      	mov	r0, r5
d0042774:	2601      	movs	r6, #1
d0042776:	f8df 929c 	ldr.w	r9, [pc, #668]	; d0042a14 <main+0x9f4>
d004277a:	4614      	mov	r4, r2
d004277c:	7813      	ldrb	r3, [r2, #0]
d004277e:	7852      	ldrb	r2, [r2, #1]
d0042780:	78a1      	ldrb	r1, [r4, #2]
d0042782:	4627      	mov	r7, r4
d0042784:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0042788:	78e2      	ldrb	r2, [r4, #3]
d004278a:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d004278e:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0042792:	681b      	ldr	r3, [r3, #0]
d0042794:	4798      	blx	r3
d0042796:	7923      	ldrb	r3, [r4, #4]
d0042798:	7962      	ldrb	r2, [r4, #5]
d004279a:	79a1      	ldrb	r1, [r4, #6]
d004279c:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d00427a0:	79e2      	ldrb	r2, [r4, #7]
d00427a2:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d00427a6:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00427aa:	689b      	ldr	r3, [r3, #8]
d00427ac:	4798      	blx	r3
d00427ae:	7b23      	ldrb	r3, [r4, #12]
d00427b0:	7b62      	ldrb	r2, [r4, #13]
d00427b2:	2190      	movs	r1, #144	; 0x90
d00427b4:	7ba4      	ldrb	r4, [r4, #14]
d00427b6:	20dc      	movs	r0, #220	; 0xdc
d00427b8:	ea43 2c02 	orr.w	ip, r3, r2, lsl #8
d00427bc:	4b90      	ldr	r3, [pc, #576]	; (d0042a00 <main+0x9e0>)
d00427be:	7bfa      	ldrb	r2, [r7, #15]
d00427c0:	701e      	strb	r6, [r3, #0]
d00427c2:	ea4c 4304 	orr.w	r3, ip, r4, lsl #16
d00427c6:	2406      	movs	r4, #6
d00427c8:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00427cc:	681b      	ldr	r3, [r3, #0]
d00427ce:	691b      	ldr	r3, [r3, #16]
d00427d0:	4798      	blx	r3
d00427d2:	7b39      	ldrb	r1, [r7, #12]
d00427d4:	7b7b      	ldrb	r3, [r7, #13]
d00427d6:	f44f 72f0 	mov.w	r2, #480	; 0x1e0
d00427da:	7bb8      	ldrb	r0, [r7, #14]
d00427dc:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
d00427e0:	7bfb      	ldrb	r3, [r7, #15]
d00427e2:	9706      	str	r7, [sp, #24]
d00427e4:	ea41 4100 	orr.w	r1, r1, r0, lsl #16
d00427e8:	4610      	mov	r0, r2
d00427ea:	ea41 6103 	orr.w	r1, r1, r3, lsl #24
d00427ee:	f44f 7320 	mov.w	r3, #640	; 0x280
d00427f2:	680f      	ldr	r7, [r1, #0]
d00427f4:	f44f 71a0 	mov.w	r1, #320	; 0x140
d00427f8:	9400      	str	r4, [sp, #0]
d00427fa:	697c      	ldr	r4, [r7, #20]
d00427fc:	47a0      	blx	r4
d00427fe:	9a06      	ldr	r2, [sp, #24]
d0042800:	4c80      	ldr	r4, [pc, #512]	; (d0042a04 <main+0x9e4>)
d0042802:	4617      	mov	r7, r2
d0042804:	7b13      	ldrb	r3, [r2, #12]
d0042806:	7b52      	ldrb	r2, [r2, #13]
d0042808:	7bb9      	ldrb	r1, [r7, #14]
d004280a:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004280e:	7bfa      	ldrb	r2, [r7, #15]
d0042810:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0042814:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0042818:	681b      	ldr	r3, [r3, #0]
d004281a:	6bdb      	ldr	r3, [r3, #60]	; 0x3c
d004281c:	4798      	blx	r3
d004281e:	7b3b      	ldrb	r3, [r7, #12]
d0042820:	7b7a      	ldrb	r2, [r7, #13]
d0042822:	7bb9      	ldrb	r1, [r7, #14]
d0042824:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0042828:	7bfa      	ldrb	r2, [r7, #15]
d004282a:	6020      	str	r0, [r4, #0]
d004282c:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0042830:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0042834:	681b      	ldr	r3, [r3, #0]
d0042836:	6c1b      	ldr	r3, [r3, #64]	; 0x40
d0042838:	4798      	blx	r3
d004283a:	4a73      	ldr	r2, [pc, #460]	; (d0042a08 <main+0x9e8>)
d004283c:	4603      	mov	r3, r0
d004283e:	f44f 2096 	mov.w	r0, #307200	; 0x4b000
d0042842:	6013      	str	r3, [r2, #0]
d0042844:	f001 fe2a 	bl	d004449c <malloc>
d0042848:	f8c9 0000 	str.w	r0, [r9]
d004284c:	f8d9 3000 	ldr.w	r3, [r9]
d0042850:	2b00      	cmp	r3, #0
d0042852:	f000 846e 	beq.w	d0043132 <main+0x1112>
d0042856:	4c6d      	ldr	r4, [pc, #436]	; (d0042a0c <main+0x9ec>)
d0042858:	f44f 7320 	mov.w	r3, #640	; 0x280
d004285c:	f44f 2696 	mov.w	r6, #307200	; 0x4b000
d0042860:	f44f 78f0 	mov.w	r8, #480	; 0x1e0
d0042864:	4629      	mov	r1, r5
d0042866:	4620      	mov	r0, r4
d0042868:	f44f 6280 	mov.w	r2, #1024	; 0x400
d004286c:	f8a9 8004 	strh.w	r8, [r9, #4]
d0042870:	f8a9 3006 	strh.w	r3, [r9, #6]
d0042874:	f8a9 3008 	strh.w	r3, [r9, #8]
d0042878:	f8c9 600c 	str.w	r6, [r9, #12]
d004287c:	f001 fe1e 	bl	d00444bc <memset>
d0042880:	9b06      	ldr	r3, [sp, #24]
d0042882:	4620      	mov	r0, r4
d0042884:	4d62      	ldr	r5, [pc, #392]	; (d0042a10 <main+0x9f0>)
d0042886:	7b19      	ldrb	r1, [r3, #12]
d0042888:	461a      	mov	r2, r3
d004288a:	7b5b      	ldrb	r3, [r3, #13]
d004288c:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
d0042890:	7b93      	ldrb	r3, [r2, #14]
d0042892:	ea41 4103 	orr.w	r1, r1, r3, lsl #16
d0042896:	7bd3      	ldrb	r3, [r2, #15]
d0042898:	ea41 6103 	orr.w	r1, r1, r3, lsl #24
d004289c:	a33a      	add	r3, pc, #232	; (adr r3, d0042988 <main+0x968>)
d004289e:	e9d3 2300 	ldrd	r2, r3, [r3]
d00428a2:	6809      	ldr	r1, [r1, #0]
d00428a4:	6225      	str	r5, [r4, #32]
d00428a6:	6cc9      	ldr	r1, [r1, #76]	; 0x4c
d00428a8:	4d56      	ldr	r5, [pc, #344]	; (d0042a04 <main+0x9e4>)
d00428aa:	e9c4 2300 	strd	r2, r3, [r4]
d00428ae:	a338      	add	r3, pc, #224	; (adr r3, d0042990 <main+0x970>)
d00428b0:	e9d3 2300 	ldrd	r2, r3, [r3]
d00428b4:	a738      	add	r7, pc, #224	; (adr r7, d0042998 <main+0x978>)
d00428b6:	e9d7 6700 	ldrd	r6, r7, [r7]
d00428ba:	e9c4 2304 	strd	r2, r3, [r4, #16]
d00428be:	a338      	add	r3, pc, #224	; (adr r3, d00429a0 <main+0x980>)
d00428c0:	e9d3 2300 	ldrd	r2, r3, [r3]
d00428c4:	e9c4 6702 	strd	r6, r7, [r4, #8]
d00428c8:	e9c4 2320 	strd	r2, r3, [r4, #128]	; 0x80
d00428cc:	a736      	add	r7, pc, #216	; (adr r7, d00429a8 <main+0x988>)
d00428ce:	e9d7 6700 	ldrd	r6, r7, [r7]
d00428d2:	a337      	add	r3, pc, #220	; (adr r3, d00429b0 <main+0x990>)
d00428d4:	e9d3 2300 	ldrd	r2, r3, [r3]
d00428d8:	e9c4 6706 	strd	r6, r7, [r4, #24]
d00428dc:	e9c4 2324 	strd	r2, r3, [r4, #144]	; 0x90
d00428e0:	a735      	add	r7, pc, #212	; (adr r7, d00429b8 <main+0x998>)
d00428e2:	e9d7 6700 	ldrd	r6, r7, [r7]
d00428e6:	a336      	add	r3, pc, #216	; (adr r3, d00429c0 <main+0x9a0>)
d00428e8:	e9d3 2300 	ldrd	r2, r3, [r3]
d00428ec:	e9c4 6722 	strd	r6, r7, [r4, #136]	; 0x88
d00428f0:	e9c4 2328 	strd	r2, r3, [r4, #160]	; 0xa0
d00428f4:	a734      	add	r7, pc, #208	; (adr r7, d00429c8 <main+0x9a8>)
d00428f6:	e9d7 6700 	ldrd	r6, r7, [r7]
d00428fa:	a335      	add	r3, pc, #212	; (adr r3, d00429d0 <main+0x9b0>)
d00428fc:	e9d3 2300 	ldrd	r2, r3, [r3]
d0042900:	e9c4 6726 	strd	r6, r7, [r4, #152]	; 0x98
d0042904:	e9c4 232c 	strd	r2, r3, [r4, #176]	; 0xb0
d0042908:	a733      	add	r7, pc, #204	; (adr r7, d00429d8 <main+0x9b8>)
d004290a:	e9d7 6700 	ldrd	r6, r7, [r7]
d004290e:	a334      	add	r3, pc, #208	; (adr r3, d00429e0 <main+0x9c0>)
d0042910:	e9d3 2300 	ldrd	r2, r3, [r3]
d0042914:	e9c4 672a 	strd	r6, r7, [r4, #168]	; 0xa8
d0042918:	e9c4 232e 	strd	r2, r3, [r4, #184]	; 0xb8
d004291c:	4788      	blx	r1
d004291e:	9906      	ldr	r1, [sp, #24]
d0042920:	4620      	mov	r0, r4
d0042922:	7b0b      	ldrb	r3, [r1, #12]
d0042924:	460c      	mov	r4, r1
d0042926:	7b4a      	ldrb	r2, [r1, #13]
d0042928:	7b89      	ldrb	r1, [r1, #14]
d004292a:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004292e:	7be2      	ldrb	r2, [r4, #15]
d0042930:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0042934:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0042938:	681b      	ldr	r3, [r3, #0]
d004293a:	6d1b      	ldr	r3, [r3, #80]	; 0x50
d004293c:	4798      	blx	r3
d004293e:	6828      	ldr	r0, [r5, #0]
d0042940:	f7fd fbf0 	bl	d0040124 <draw_visualizer_front_base>
d0042944:	4b30      	ldr	r3, [pc, #192]	; (d0042a08 <main+0x9e8>)
d0042946:	6818      	ldr	r0, [r3, #0]
d0042948:	f7fd fbec 	bl	d0040124 <draw_visualizer_front_base>
d004294c:	7b23      	ldrb	r3, [r4, #12]
d004294e:	7b62      	ldrb	r2, [r4, #13]
d0042950:	7ba1      	ldrb	r1, [r4, #14]
d0042952:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0042956:	7be2      	ldrb	r2, [r4, #15]
d0042958:	6828      	ldr	r0, [r5, #0]
d004295a:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d004295e:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0042962:	681b      	ldr	r3, [r3, #0]
d0042964:	69db      	ldr	r3, [r3, #28]
d0042966:	4798      	blx	r3
d0042968:	7b23      	ldrb	r3, [r4, #12]
d004296a:	7b62      	ldrb	r2, [r4, #13]
d004296c:	4648      	mov	r0, r9
d004296e:	7ba1      	ldrb	r1, [r4, #14]
d0042970:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0042974:	7be2      	ldrb	r2, [r4, #15]
d0042976:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d004297a:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004297e:	681b      	ldr	r3, [r3, #0]
d0042980:	e04a      	b.n	d0042a18 <main+0x9f8>
d0042982:	bf00      	nop
d0042984:	f3af 8000 	nop.w
d0042988:	00000000 	.word	0x00000000
d004298c:	ff03070c 	.word	0xff03070c
d0042990:	ffe2f1ec 	.word	0xffe2f1ec
d0042994:	ff697f84 	.word	0xff697f84
d0042998:	ff0f1922 	.word	0xff0f1922
d004299c:	ff202e3a 	.word	0xff202e3a
d00429a0:	ffff4c5c 	.word	0xffff4c5c
d00429a4:	ffff9a34 	.word	0xffff9a34
d00429a8:	ffdae1d6 	.word	0xffdae1d6
d00429ac:	ff080c12 	.word	0xff080c12
d00429b0:	ff34d2cc 	.word	0xff34d2cc
d00429b4:	ff4e9fff 	.word	0xff4e9fff
d00429b8:	ffffe049 	.word	0xffffe049
d00429bc:	ff5ce477 	.word	0xff5ce477
d00429c0:	ffff78aa 	.word	0xffff78aa
d00429c4:	ffbebebe 	.word	0xffbebebe
d00429c8:	ffa96cff 	.word	0xffa96cff
d00429cc:	ffec5eda 	.word	0xffec5eda
d00429d0:	ffdc7437 	.word	0xffdc7437
d00429d4:	ff845ed2 	.word	0xff845ed2
d00429d8:	ffa2d748 	.word	0xffa2d748
d00429dc:	ff3487b4 	.word	0xff3487b4
d00429e0:	ff58cdf5 	.word	0xff58cdf5
d00429e4:	fff5f5f5 	.word	0xfff5f5f5
d00429e8:	d0046984 	.word	0xd0046984
d00429ec:	d0046988 	.word	0xd0046988
d00429f0:	d004698c 	.word	0xd004698c
d00429f4:	d0047bc8 	.word	0xd0047bc8
d00429f8:	0007a120 	.word	0x0007a120
d00429fc:	d0046dac 	.word	0xd0046dac
d0042a00:	d00464e8 	.word	0xd00464e8
d0042a04:	d0046960 	.word	0xd0046960
d0042a08:	d0046980 	.word	0xd0046980
d0042a0c:	d0046500 	.word	0xd0046500
d0042a10:	ffffe876 	.word	0xffffe876
d0042a14:	d0046900 	.word	0xd0046900
d0042a18:	6a1b      	ldr	r3, [r3, #32]
d0042a1a:	4798      	blx	r3
d0042a1c:	f8d9 3000 	ldr.w	r3, [r9]
d0042a20:	b183      	cbz	r3, d0042a44 <main+0xa24>
d0042a22:	f8d9 6000 	ldr.w	r6, [r9]
d0042a26:	4644      	mov	r4, r8
d0042a28:	f8b9 5008 	ldrh.w	r5, [r9, #8]
d0042a2c:	b2ad      	uxth	r5, r5
d0042a2e:	3c01      	subs	r4, #1
d0042a30:	4630      	mov	r0, r6
d0042a32:	f44f 7220 	mov.w	r2, #640	; 0x280
d0042a36:	2101      	movs	r1, #1
d0042a38:	b2a4      	uxth	r4, r4
d0042a3a:	442e      	add	r6, r5
d0042a3c:	f001 fd3e 	bl	d00444bc <memset>
d0042a40:	2c00      	cmp	r4, #0
d0042a42:	d1f4      	bne.n	d0042a2e <main+0xa0e>
d0042a44:	f7fe f9f6 	bl	d0040e34 <visualizer_draw_grid_full>
d0042a48:	f44f 6240 	mov.w	r2, #3072	; 0xc00
d0042a4c:	2100      	movs	r1, #0
d0042a4e:	48b1      	ldr	r0, [pc, #708]	; (d0042d14 <main+0xcf4>)
d0042a50:	f001 fd34 	bl	d00444bc <memset>
d0042a54:	2100      	movs	r1, #0
d0042a56:	9806      	ldr	r0, [sp, #24]
d0042a58:	f44f 5248 	mov.w	r2, #12800	; 0x3200
d0042a5c:	4bae      	ldr	r3, [pc, #696]	; (d0042d18 <main+0xcf8>)
d0042a5e:	4604      	mov	r4, r0
d0042a60:	4dae      	ldr	r5, [pc, #696]	; (d0042d1c <main+0xcfc>)
d0042a62:	7019      	strb	r1, [r3, #0]
d0042a64:	7b03      	ldrb	r3, [r0, #12]
d0042a66:	7b40      	ldrb	r0, [r0, #13]
d0042a68:	6029      	str	r1, [r5, #0]
d0042a6a:	4625      	mov	r5, r4
d0042a6c:	ea43 2300 	orr.w	r3, r3, r0, lsl #8
d0042a70:	7ba4      	ldrb	r4, [r4, #14]
d0042a72:	48ab      	ldr	r0, [pc, #684]	; (d0042d20 <main+0xd00>)
d0042a74:	ea43 4304 	orr.w	r3, r3, r4, lsl #16
d0042a78:	7bec      	ldrb	r4, [r5, #15]
d0042a7a:	4eaa      	ldr	r6, [pc, #680]	; (d0042d24 <main+0xd04>)
d0042a7c:	f44f 7500 	mov.w	r5, #512	; 0x200
d0042a80:	ea43 6304 	orr.w	r3, r3, r4, lsl #24
d0042a84:	6001      	str	r1, [r0, #0]
d0042a86:	4608      	mov	r0, r1
d0042a88:	6032      	str	r2, [r6, #0]
d0042a8a:	681b      	ldr	r3, [r3, #0]
d0042a8c:	6b1b      	ldr	r3, [r3, #48]	; 0x30
d0042a8e:	4798      	blx	r3
d0042a90:	4ba5      	ldr	r3, [pc, #660]	; (d0042d28 <main+0xd08>)
d0042a92:	f242 7010 	movw	r0, #10000	; 0x2710
d0042a96:	2100      	movs	r1, #0
d0042a98:	f8d3 4114 	ldr.w	r4, [r3, #276]	; 0x114
d0042a9c:	f644 6220 	movw	r2, #20000	; 0x4e20
d0042aa0:	4ba2      	ldr	r3, [pc, #648]	; (d0042d2c <main+0xd0c>)
d0042aa2:	2c00      	cmp	r4, #0
d0042aa4:	bf08      	it	eq
d0042aa6:	461c      	moveq	r4, r3
d0042aa8:	2300      	movs	r3, #0
d0042aaa:	fbe5 0104 	umlal	r0, r1, r5, r4
d0042aae:	f001 fb73 	bl	d0044198 <__aeabi_uldivmod>
d0042ab2:	f5b0 3fa0 	cmp.w	r0, #81920	; 0x14000
d0042ab6:	f8d9 2000 	ldr.w	r2, [r9]
d0042aba:	bf28      	it	cs
d0042abc:	f44f 30a0 	movcs.w	r0, #81920	; 0x14000
d0042ac0:	f5b0 6f80 	cmp.w	r0, #1024	; 0x400
d0042ac4:	bf38      	it	cc
d0042ac6:	f44f 6080 	movcc.w	r0, #1024	; 0x400
d0042aca:	6030      	str	r0, [r6, #0]
d0042acc:	b18a      	cbz	r2, d0042af2 <main+0xad2>
d0042ace:	f8d9 6000 	ldr.w	r6, [r9]
d0042ad2:	f44f 74f0 	mov.w	r4, #480	; 0x1e0
d0042ad6:	f8b9 5008 	ldrh.w	r5, [r9, #8]
d0042ada:	b2ad      	uxth	r5, r5
d0042adc:	3c01      	subs	r4, #1
d0042ade:	4630      	mov	r0, r6
d0042ae0:	f44f 7220 	mov.w	r2, #640	; 0x280
d0042ae4:	2101      	movs	r1, #1
d0042ae6:	b2a4      	uxth	r4, r4
d0042ae8:	442e      	add	r6, r5
d0042aea:	f001 fce7 	bl	d00444bc <memset>
d0042aee:	2c00      	cmp	r4, #0
d0042af0:	d1f4      	bne.n	d0042adc <main+0xabc>
d0042af2:	f7fe f99f 	bl	d0040e34 <visualizer_draw_grid_full>
d0042af6:	ee18 0a10 	vmov	r0, s16
d0042afa:	f7fd fd67 	bl	d00405cc <midi_wait_for_startup_bytes>
d0042afe:	4b8a      	ldr	r3, [pc, #552]	; (d0042d28 <main+0xd08>)
d0042b00:	f893 3120 	ldrb.w	r3, [r3, #288]	; 0x120
d0042b04:	b11b      	cbz	r3, d0042b0e <main+0xaee>
d0042b06:	2100      	movs	r1, #0
d0042b08:	4887      	ldr	r0, [pc, #540]	; (d0042d28 <main+0xd08>)
d0042b0a:	f7fe fbf9 	bl	d0041300 <midi_player_update_us.part.0>
d0042b0e:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
d0042b10:	2700      	movs	r7, #0
d0042b12:	6819      	ldr	r1, [r3, #0]
d0042b14:	9b08      	ldr	r3, [sp, #32]
d0042b16:	970e      	str	r7, [sp, #56]	; 0x38
d0042b18:	6818      	ldr	r0, [r3, #0]
d0042b1a:	f7fe ffdd 	bl	d0041ad8 <midi_player_get_duration_ms>
d0042b1e:	9d06      	ldr	r5, [sp, #24]
d0042b20:	4606      	mov	r6, r0
d0042b22:	9010      	str	r0, [sp, #64]	; 0x40
d0042b24:	782b      	ldrb	r3, [r5, #0]
d0042b26:	786a      	ldrb	r2, [r5, #1]
d0042b28:	78a9      	ldrb	r1, [r5, #2]
d0042b2a:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0042b2e:	78ea      	ldrb	r2, [r5, #3]
d0042b30:	487f      	ldr	r0, [pc, #508]	; (d0042d30 <main+0xd10>)
d0042b32:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0042b36:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0042b3a:	68db      	ldr	r3, [r3, #12]
d0042b3c:	4798      	blx	r3
d0042b3e:	782b      	ldrb	r3, [r5, #0]
d0042b40:	786a      	ldrb	r2, [r5, #1]
d0042b42:	78a9      	ldrb	r1, [r5, #2]
d0042b44:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0042b48:	78ea      	ldrb	r2, [r5, #3]
d0042b4a:	487a      	ldr	r0, [pc, #488]	; (d0042d34 <main+0xd14>)
d0042b4c:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0042b50:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0042b54:	6edb      	ldr	r3, [r3, #108]	; 0x6c
d0042b56:	689b      	ldr	r3, [r3, #8]
d0042b58:	4798      	blx	r3
d0042b5a:	782b      	ldrb	r3, [r5, #0]
d0042b5c:	786a      	ldrb	r2, [r5, #1]
d0042b5e:	21ef      	movs	r1, #239	; 0xef
d0042b60:	78ac      	ldrb	r4, [r5, #2]
d0042b62:	f644 601f 	movw	r0, #19999	; 0x4e1f
d0042b66:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0042b6a:	78ea      	ldrb	r2, [r5, #3]
d0042b6c:	ea43 4304 	orr.w	r3, r3, r4, lsl #16
d0042b70:	462c      	mov	r4, r5
d0042b72:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0042b76:	6edb      	ldr	r3, [r3, #108]	; 0x6c
d0042b78:	685b      	ldr	r3, [r3, #4]
d0042b7a:	4798      	blx	r3
d0042b7c:	782b      	ldrb	r3, [r5, #0]
d0042b7e:	786a      	ldrb	r2, [r5, #1]
d0042b80:	200b      	movs	r0, #11
d0042b82:	78a9      	ldrb	r1, [r5, #2]
d0042b84:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0042b88:	78ea      	ldrb	r2, [r5, #3]
d0042b8a:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0042b8e:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0042b92:	6edb      	ldr	r3, [r3, #108]	; 0x6c
d0042b94:	681b      	ldr	r3, [r3, #0]
d0042b96:	4798      	blx	r3
d0042b98:	7b2b      	ldrb	r3, [r5, #12]
d0042b9a:	7b6a      	ldrb	r2, [r5, #13]
d0042b9c:	7ba9      	ldrb	r1, [r5, #14]
d0042b9e:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0042ba2:	7bea      	ldrb	r2, [r5, #15]
d0042ba4:	4864      	ldr	r0, [pc, #400]	; (d0042d38 <main+0xd18>)
d0042ba6:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0042baa:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0042bae:	681b      	ldr	r3, [r3, #0]
d0042bb0:	6a1b      	ldr	r3, [r3, #32]
d0042bb2:	4798      	blx	r3
d0042bb4:	7b2b      	ldrb	r3, [r5, #12]
d0042bb6:	7b6a      	ldrb	r2, [r5, #13]
d0042bb8:	7ba9      	ldrb	r1, [r5, #14]
d0042bba:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0042bbe:	7bea      	ldrb	r2, [r5, #15]
d0042bc0:	4d5e      	ldr	r5, [pc, #376]	; (d0042d3c <main+0xd1c>)
d0042bc2:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0042bc6:	6828      	ldr	r0, [r5, #0]
d0042bc8:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0042bcc:	681b      	ldr	r3, [r3, #0]
d0042bce:	69db      	ldr	r3, [r3, #28]
d0042bd0:	4798      	blx	r3
d0042bd2:	7b23      	ldrb	r3, [r4, #12]
d0042bd4:	7b62      	ldrb	r2, [r4, #13]
d0042bd6:	7ba1      	ldrb	r1, [r4, #14]
d0042bd8:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0042bdc:	7be2      	ldrb	r2, [r4, #15]
d0042bde:	4c58      	ldr	r4, [pc, #352]	; (d0042d40 <main+0xd20>)
d0042be0:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0042be4:	6820      	ldr	r0, [r4, #0]
d0042be6:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0042bea:	681b      	ldr	r3, [r3, #0]
d0042bec:	699b      	ldr	r3, [r3, #24]
d0042bee:	4798      	blx	r3
d0042bf0:	ee18 0a10 	vmov	r0, s16
d0042bf4:	f000 feb4 	bl	d0043960 <midi_translator_profile_name>
d0042bf8:	f44f 727a 	mov.w	r2, #1000	; 0x3e8
d0042bfc:	233c      	movs	r3, #60	; 0x3c
d0042bfe:	ee08 0a90 	vmov	s17, r0
d0042c02:	fbb6 f2f2 	udiv	r2, r6, r2
d0042c06:	fbb2 f1f3 	udiv	r1, r2, r3
d0042c0a:	fb03 2311 	mls	r3, r3, r1, r2
d0042c0e:	9211      	str	r2, [sp, #68]	; 0x44
d0042c10:	9112      	str	r1, [sp, #72]	; 0x48
d0042c12:	9313      	str	r3, [sp, #76]	; 0x4c
d0042c14:	4b44      	ldr	r3, [pc, #272]	; (d0042d28 <main+0xd08>)
d0042c16:	f893 3120 	ldrb.w	r3, [r3, #288]	; 0x120
d0042c1a:	2b00      	cmp	r3, #0
d0042c1c:	f000 8567 	beq.w	d00436ee <main+0x16ce>
d0042c20:	9a06      	ldr	r2, [sp, #24]
d0042c22:	7813      	ldrb	r3, [r2, #0]
d0042c24:	4610      	mov	r0, r2
d0042c26:	4611      	mov	r1, r2
d0042c28:	7852      	ldrb	r2, [r2, #1]
d0042c2a:	7889      	ldrb	r1, [r1, #2]
d0042c2c:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0042c30:	78c2      	ldrb	r2, [r0, #3]
d0042c32:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0042c36:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0042c3a:	6a1b      	ldr	r3, [r3, #32]
d0042c3c:	4798      	blx	r3
d0042c3e:	f000 0302 	and.w	r3, r0, #2
d0042c42:	9314      	str	r3, [sp, #80]	; 0x50
d0042c44:	b117      	cbz	r7, d0042c4c <main+0xc2c>
d0042c46:	2b00      	cmp	r3, #0
d0042c48:	f000 85a3 	beq.w	d0043792 <main+0x1772>
d0042c4c:	4936      	ldr	r1, [pc, #216]	; (d0042d28 <main+0xd08>)
d0042c4e:	f44f 727a 	mov.w	r2, #1000	; 0x3e8
d0042c52:	2300      	movs	r3, #0
d0042c54:	e9d1 0146 	ldrd	r0, r1, [r1, #280]	; 0x118
d0042c58:	f001 fa9e 	bl	d0044198 <__aeabi_uldivmod>
d0042c5c:	4a39      	ldr	r2, [pc, #228]	; (d0042d44 <main+0xd24>)
d0042c5e:	6010      	str	r0, [r2, #0]
d0042c60:	9a10      	ldr	r2, [sp, #64]	; 0x40
d0042c62:	2a00      	cmp	r2, #0
d0042c64:	f000 851c 	beq.w	d00436a0 <main+0x1680>
d0042c68:	2264      	movs	r2, #100	; 0x64
d0042c6a:	9910      	ldr	r1, [sp, #64]	; 0x40
d0042c6c:	fb02 f300 	mul.w	r3, r2, r0
d0042c70:	fbb3 f3f1 	udiv	r3, r3, r1
d0042c74:	4293      	cmp	r3, r2
d0042c76:	f200 8513 	bhi.w	d00436a0 <main+0x1680>
d0042c7a:	4a33      	ldr	r2, [pc, #204]	; (d0042d48 <main+0xd28>)
d0042c7c:	6013      	str	r3, [r2, #0]
d0042c7e:	f44f 737a 	mov.w	r3, #1000	; 0x3e8
d0042c82:	4d32      	ldr	r5, [pc, #200]	; (d0042d4c <main+0xd2c>)
d0042c84:	4932      	ldr	r1, [pc, #200]	; (d0042d50 <main+0xd30>)
d0042c86:	682a      	ldr	r2, [r5, #0]
d0042c88:	fbb0 f3f3 	udiv	r3, r0, r3
d0042c8c:	4293      	cmp	r3, r2
d0042c8e:	600b      	str	r3, [r1, #0]
d0042c90:	f000 850a 	beq.w	d00436a8 <main+0x1688>
d0042c94:	223c      	movs	r2, #60	; 0x3c
d0042c96:	492f      	ldr	r1, [pc, #188]	; (d0042d54 <main+0xd34>)
d0042c98:	602b      	str	r3, [r5, #0]
d0042c9a:	4d2f      	ldr	r5, [pc, #188]	; (d0042d58 <main+0xd38>)
d0042c9c:	4c2f      	ldr	r4, [pc, #188]	; (d0042d5c <main+0xd3c>)
d0042c9e:	fbb3 f0f2 	udiv	r0, r3, r2
d0042ca2:	fb02 3310 	mls	r3, r2, r0, r3
d0042ca6:	4a2e      	ldr	r2, [pc, #184]	; (d0042d60 <main+0xd40>)
d0042ca8:	6008      	str	r0, [r1, #0]
d0042caa:	9811      	ldr	r0, [sp, #68]	; 0x44
d0042cac:	6023      	str	r3, [r4, #0]
d0042cae:	6028      	str	r0, [r5, #0]
d0042cb0:	9812      	ldr	r0, [sp, #72]	; 0x48
d0042cb2:	4b2c      	ldr	r3, [pc, #176]	; (d0042d64 <main+0xd44>)
d0042cb4:	6010      	str	r0, [r2, #0]
d0042cb6:	9813      	ldr	r0, [sp, #76]	; 0x4c
d0042cb8:	6018      	str	r0, [r3, #0]
d0042cba:	681d      	ldr	r5, [r3, #0]
d0042cbc:	a81c      	add	r0, sp, #112	; 0x70
d0042cbe:	6813      	ldr	r3, [r2, #0]
d0042cc0:	e9cd 3500 	strd	r3, r5, [sp]
d0042cc4:	6823      	ldr	r3, [r4, #0]
d0042cc6:	f44f 7500 	mov.w	r5, #512	; 0x200
d0042cca:	680a      	ldr	r2, [r1, #0]
d0042ccc:	4926      	ldr	r1, [pc, #152]	; (d0042d68 <main+0xd48>)
d0042cce:	f001 fe03 	bl	d00448d8 <siprintf>
d0042cd2:	f7fe fe7b 	bl	d00419cc <vbl_counter>
d0042cd6:	4b14      	ldr	r3, [pc, #80]	; (d0042d28 <main+0xd08>)
d0042cd8:	f242 7010 	movw	r0, #10000	; 0x2710
d0042cdc:	2100      	movs	r1, #0
d0042cde:	f8d3 4114 	ldr.w	r4, [r3, #276]	; 0x114
d0042ce2:	f644 6220 	movw	r2, #20000	; 0x4e20
d0042ce6:	4b11      	ldr	r3, [pc, #68]	; (d0042d2c <main+0xd0c>)
d0042ce8:	2c00      	cmp	r4, #0
d0042cea:	bf08      	it	eq
d0042cec:	461c      	moveq	r4, r3
d0042cee:	2300      	movs	r3, #0
d0042cf0:	fbe5 0104 	umlal	r0, r1, r5, r4
d0042cf4:	f001 fa50 	bl	d0044198 <__aeabi_uldivmod>
d0042cf8:	f5b0 3fa0 	cmp.w	r0, #81920	; 0x14000
d0042cfc:	4b06      	ldr	r3, [pc, #24]	; (d0042d18 <main+0xcf8>)
d0042cfe:	bf28      	it	cs
d0042d00:	f44f 30a0 	movcs.w	r0, #81920	; 0x14000
d0042d04:	4907      	ldr	r1, [pc, #28]	; (d0042d24 <main+0xd04>)
d0042d06:	781a      	ldrb	r2, [r3, #0]
d0042d08:	f5b0 6f80 	cmp.w	r0, #1024	; 0x400
d0042d0c:	f002 06ff 	and.w	r6, r2, #255	; 0xff
d0042d10:	e02c      	b.n	d0042d6c <main+0xd4c>
d0042d12:	bf00      	nop
d0042d14:	d0046db0 	.word	0xd0046db0
d0042d18:	d00479b4 	.word	0xd00479b4
d0042d1c:	d0046da8 	.word	0xd0046da8
d0042d20:	d00479b0 	.word	0xd00479b0
d0042d24:	d0046dac 	.word	0xd0046dac
d0042d28:	d0047bc8 	.word	0xd0047bc8
d0042d2c:	0007a120 	.word	0x0007a120
d0042d30:	d0046020 	.word	0xd0046020
d0042d34:	d00404e5 	.word	0xd00404e5
d0042d38:	d0046900 	.word	0xd0046900
d0042d3c:	d0046960 	.word	0xd0046960
d0042d40:	d0046980 	.word	0xd0046980
d0042d44:	d0046948 	.word	0xd0046948
d0042d48:	d0046d9c 	.word	0xd0046d9c
d0042d4c:	d0046990 	.word	0xd0046990
d0042d50:	d0046934 	.word	0xd0046934
d0042d54:	d004692c 	.word	0xd004692c
d0042d58:	d0046944 	.word	0xd0046944
d0042d5c:	d0046930 	.word	0xd0046930
d0042d60:	d004693c 	.word	0xd004693c
d0042d64:	d0046940 	.word	0xd0046940
d0042d68:	d0046038 	.word	0xd0046038
d0042d6c:	bf38      	it	cc
d0042d6e:	f44f 6080 	movcc.w	r0, #1024	; 0x400
d0042d72:	6008      	str	r0, [r1, #0]
d0042d74:	b11a      	cbz	r2, d0042d7e <main+0xd5e>
d0042d76:	f04f 0200 	mov.w	r2, #0
d0042d7a:	2601      	movs	r6, #1
d0042d7c:	701a      	strb	r2, [r3, #0]
d0042d7e:	9906      	ldr	r1, [sp, #24]
d0042d80:	7b0b      	ldrb	r3, [r1, #12]
d0042d82:	4608      	mov	r0, r1
d0042d84:	7b4a      	ldrb	r2, [r1, #13]
d0042d86:	460c      	mov	r4, r1
d0042d88:	7b89      	ldrb	r1, [r1, #14]
d0042d8a:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0042d8e:	7bc2      	ldrb	r2, [r0, #15]
d0042d90:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0042d94:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0042d98:	681b      	ldr	r3, [r3, #0]
d0042d9a:	68db      	ldr	r3, [r3, #12]
d0042d9c:	4798      	blx	r3
d0042d9e:	4aa3      	ldr	r2, [pc, #652]	; (d004302c <main+0x100c>)
d0042da0:	7813      	ldrb	r3, [r2, #0]
d0042da2:	f1c3 0301 	rsb	r3, r3, #1
d0042da6:	b2db      	uxtb	r3, r3
d0042da8:	7013      	strb	r3, [r2, #0]
d0042daa:	2b00      	cmp	r3, #0
d0042dac:	f000 83e5 	beq.w	d004357a <main+0x155a>
d0042db0:	7b23      	ldrb	r3, [r4, #12]
d0042db2:	7b62      	ldrb	r2, [r4, #13]
d0042db4:	499e      	ldr	r1, [pc, #632]	; (d0043030 <main+0x1010>)
d0042db6:	7ba0      	ldrb	r0, [r4, #14]
d0042db8:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0042dbc:	6809      	ldr	r1, [r1, #0]
d0042dbe:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
d0042dc2:	7be2      	ldrb	r2, [r4, #15]
d0042dc4:	489b      	ldr	r0, [pc, #620]	; (d0043034 <main+0x1014>)
d0042dc6:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0042dca:	6800      	ldr	r0, [r0, #0]
d0042dcc:	2402      	movs	r4, #2
d0042dce:	681b      	ldr	r3, [r3, #0]
d0042dd0:	6a5b      	ldr	r3, [r3, #36]	; 0x24
d0042dd2:	4798      	blx	r3
d0042dd4:	9906      	ldr	r1, [sp, #24]
d0042dd6:	2000      	movs	r0, #0
d0042dd8:	7b0b      	ldrb	r3, [r1, #12]
d0042dda:	460d      	mov	r5, r1
d0042ddc:	7b4a      	ldrb	r2, [r1, #13]
d0042dde:	7b89      	ldrb	r1, [r1, #14]
d0042de0:	462f      	mov	r7, r5
d0042de2:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0042de6:	7bea      	ldrb	r2, [r5, #15]
d0042de8:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0042dec:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0042df0:	685b      	ldr	r3, [r3, #4]
d0042df2:	68db      	ldr	r3, [r3, #12]
d0042df4:	4798      	blx	r3
d0042df6:	7b28      	ldrb	r0, [r5, #12]
d0042df8:	7b69      	ldrb	r1, [r5, #13]
d0042dfa:	2320      	movs	r3, #32
d0042dfc:	7bad      	ldrb	r5, [r5, #14]
d0042dfe:	2260      	movs	r2, #96	; 0x60
d0042e00:	ea40 2001 	orr.w	r0, r0, r1, lsl #8
d0042e04:	9706      	str	r7, [sp, #24]
d0042e06:	7bff      	ldrb	r7, [r7, #15]
d0042e08:	2122      	movs	r1, #34	; 0x22
d0042e0a:	ea40 4505 	orr.w	r5, r0, r5, lsl #16
d0042e0e:	f44f 70bd 	mov.w	r0, #378	; 0x17a
d0042e12:	ea45 6507 	orr.w	r5, r5, r7, lsl #24
d0042e16:	686d      	ldr	r5, [r5, #4]
d0042e18:	686d      	ldr	r5, [r5, #4]
d0042e1a:	47a8      	blx	r5
d0042e1c:	9a06      	ldr	r2, [sp, #24]
d0042e1e:	2004      	movs	r0, #4
d0042e20:	4615      	mov	r5, r2
d0042e22:	7b13      	ldrb	r3, [r2, #12]
d0042e24:	4617      	mov	r7, r2
d0042e26:	7b52      	ldrb	r2, [r2, #13]
d0042e28:	7ba9      	ldrb	r1, [r5, #14]
d0042e2a:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0042e2e:	7bea      	ldrb	r2, [r5, #15]
d0042e30:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0042e34:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0042e38:	685b      	ldr	r3, [r3, #4]
d0042e3a:	68db      	ldr	r3, [r3, #12]
d0042e3c:	4798      	blx	r3
d0042e3e:	7b28      	ldrb	r0, [r5, #12]
d0042e40:	7b69      	ldrb	r1, [r5, #13]
d0042e42:	2301      	movs	r3, #1
d0042e44:	7bad      	ldrb	r5, [r5, #14]
d0042e46:	aa1c      	add	r2, sp, #112	; 0x70
d0042e48:	ea40 2001 	orr.w	r0, r0, r1, lsl #8
d0042e4c:	9706      	str	r7, [sp, #24]
d0042e4e:	7bff      	ldrb	r7, [r7, #15]
d0042e50:	2122      	movs	r1, #34	; 0x22
d0042e52:	ea40 4505 	orr.w	r5, r0, r5, lsl #16
d0042e56:	f44f 70c1 	mov.w	r0, #386	; 0x182
d0042e5a:	ea45 6507 	orr.w	r5, r5, r7, lsl #24
d0042e5e:	686d      	ldr	r5, [r5, #4]
d0042e60:	9400      	str	r4, [sp, #0]
d0042e62:	6b2d      	ldr	r5, [r5, #48]	; 0x30
d0042e64:	47a8      	blx	r5
d0042e66:	9a06      	ldr	r2, [sp, #24]
d0042e68:	2005      	movs	r0, #5
d0042e6a:	4615      	mov	r5, r2
d0042e6c:	7b13      	ldrb	r3, [r2, #12]
d0042e6e:	4617      	mov	r7, r2
d0042e70:	7b52      	ldrb	r2, [r2, #13]
d0042e72:	7ba9      	ldrb	r1, [r5, #14]
d0042e74:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0042e78:	7bea      	ldrb	r2, [r5, #15]
d0042e7a:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0042e7e:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0042e82:	685b      	ldr	r3, [r3, #4]
d0042e84:	68db      	ldr	r3, [r3, #12]
d0042e86:	4798      	blx	r3
d0042e88:	7b28      	ldrb	r0, [r5, #12]
d0042e8a:	7b69      	ldrb	r1, [r5, #13]
d0042e8c:	2301      	movs	r3, #1
d0042e8e:	7bad      	ldrb	r5, [r5, #14]
d0042e90:	ee18 2a90 	vmov	r2, s17
d0042e94:	ea40 2001 	orr.w	r0, r0, r1, lsl #8
d0042e98:	7bff      	ldrb	r7, [r7, #15]
d0042e9a:	2132      	movs	r1, #50	; 0x32
d0042e9c:	ea40 4505 	orr.w	r5, r0, r5, lsl #16
d0042ea0:	f44f 70c1 	mov.w	r0, #386	; 0x182
d0042ea4:	ea45 6507 	orr.w	r5, r5, r7, lsl #24
d0042ea8:	686d      	ldr	r5, [r5, #4]
d0042eaa:	9400      	str	r4, [sp, #0]
d0042eac:	6b2c      	ldr	r4, [r5, #48]	; 0x30
d0042eae:	47a0      	blx	r4
d0042eb0:	2e00      	cmp	r6, #0
d0042eb2:	f000 8337 	beq.w	d0043524 <main+0x1504>
d0042eb6:	9b0e      	ldr	r3, [sp, #56]	; 0x38
d0042eb8:	f503 7091 	add.w	r0, r3, #290	; 0x122
d0042ebc:	4b5e      	ldr	r3, [pc, #376]	; (d0043038 <main+0x1018>)
d0042ebe:	f5b0 7fa0 	cmp.w	r0, #320	; 0x140
d0042ec2:	681b      	ldr	r3, [r3, #0]
d0042ec4:	9005      	str	r0, [sp, #20]
d0042ec6:	9302      	str	r3, [sp, #8]
d0042ec8:	f2c0 8460 	blt.w	d004378c <main+0x176c>
d0042ecc:	f5a0 70a0 	sub.w	r0, r0, #320	; 0x140
d0042ed0:	f5b0 7fa0 	cmp.w	r0, #320	; 0x140
d0042ed4:	dafa      	bge.n	d0042ecc <main+0xeac>
d0042ed6:	b280      	uxth	r0, r0
d0042ed8:	2201      	movs	r2, #1
d0042eda:	2102      	movs	r1, #2
d0042edc:	f04f 0800 	mov.w	r8, #0
d0042ee0:	f7fe f880 	bl	d0040fe4 <visualizer_back_rect_logical.constprop.0>
d0042ee4:	9f05      	ldr	r7, [sp, #20]
d0042ee6:	ea4f 15d8 	mov.w	r5, r8, lsr #7
d0042eea:	f5b7 7fa0 	cmp.w	r7, #320	; 0x140
d0042eee:	46ba      	mov	sl, r7
d0042ef0:	f105 0508 	add.w	r5, r5, #8
d0042ef4:	b2ad      	uxth	r5, r5
d0042ef6:	db04      	blt.n	d0042f02 <main+0xee2>
d0042ef8:	f5aa 7aa0 	sub.w	sl, sl, #320	; 0x140
d0042efc:	f5ba 7fa0 	cmp.w	sl, #320	; 0x140
d0042f00:	dafa      	bge.n	d0042ef8 <main+0xed8>
d0042f02:	fa1f fa8a 	uxth.w	sl, sl
d0042f06:	2402      	movs	r4, #2
d0042f08:	f5ca 73a0 	rsb	r3, sl, #320	; 0x140
d0042f0c:	f8d9 2000 	ldr.w	r2, [r9]
d0042f10:	2103      	movs	r1, #3
d0042f12:	b29b      	uxth	r3, r3
d0042f14:	42a3      	cmp	r3, r4
d0042f16:	bf28      	it	cs
d0042f18:	4623      	movcs	r3, r4
d0042f1a:	469b      	mov	fp, r3
d0042f1c:	b16a      	cbz	r2, d0042f3a <main+0xf1a>
d0042f1e:	f8d9 0000 	ldr.w	r0, [r9]
d0042f22:	f10b 32ff 	add.w	r2, fp, #4294967295	; 0xffffffff
d0042f26:	f8b9 3008 	ldrh.w	r3, [r9, #8]
d0042f2a:	b292      	uxth	r2, r2
d0042f2c:	b29b      	uxth	r3, r3
d0042f2e:	3201      	adds	r2, #1
d0042f30:	fb03 a305 	mla	r3, r3, r5, sl
d0042f34:	4418      	add	r0, r3
d0042f36:	f001 fac1 	bl	d00444bc <memset>
d0042f3a:	f50a 7aa0 	add.w	sl, sl, #320	; 0x140
d0042f3e:	f8d9 3000 	ldr.w	r3, [r9]
d0042f42:	fa1f fa8a 	uxth.w	sl, sl
d0042f46:	b1bb      	cbz	r3, d0042f78 <main+0xf58>
d0042f48:	eb0b 020a 	add.w	r2, fp, sl
d0042f4c:	f5ca 7120 	rsb	r1, sl, #640	; 0x280
d0042f50:	465b      	mov	r3, fp
d0042f52:	f5b2 7f20 	cmp.w	r2, #640	; 0x280
d0042f56:	d900      	bls.n	d0042f5a <main+0xf3a>
d0042f58:	b28b      	uxth	r3, r1
d0042f5a:	f8d9 0000 	ldr.w	r0, [r9]
d0042f5e:	3b01      	subs	r3, #1
d0042f60:	f8b9 c008 	ldrh.w	ip, [r9, #8]
d0042f64:	2103      	movs	r1, #3
d0042f66:	b29a      	uxth	r2, r3
d0042f68:	fa1f fc8c 	uxth.w	ip, ip
d0042f6c:	3201      	adds	r2, #1
d0042f6e:	fb0c aa05 	mla	sl, ip, r5, sl
d0042f72:	4450      	add	r0, sl
d0042f74:	f001 faa2 	bl	d00444bc <memset>
d0042f78:	eba4 040b 	sub.w	r4, r4, fp
d0042f7c:	f04f 0a00 	mov.w	sl, #0
d0042f80:	b2a4      	uxth	r4, r4
d0042f82:	2c00      	cmp	r4, #0
d0042f84:	d1c0      	bne.n	d0042f08 <main+0xee8>
d0042f86:	f508 58ae 	add.w	r8, r8, #5568	; 0x15c0
d0042f8a:	f64e 7340 	movw	r3, #61248	; 0xef40
d0042f8e:	4598      	cmp	r8, r3
d0042f90:	d1a9      	bne.n	d0042ee6 <main+0xec6>
d0042f92:	f44f 78e8 	mov.w	r8, #464	; 0x1d0
d0042f96:	f1aa 3a55 	sub.w	sl, sl, #1431655765	; 0x55555555
d0042f9a:	fbaa 2306 	umull	r2, r3, sl, r6
d0042f9e:	08db      	lsrs	r3, r3, #3
d0042fa0:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d0042fa4:	eba6 0383 	sub.w	r3, r6, r3, lsl #2
d0042fa8:	b2db      	uxtb	r3, r3
d0042faa:	3b01      	subs	r3, #1
d0042fac:	2b09      	cmp	r3, #9
d0042fae:	f200 8169 	bhi.w	d0043284 <main+0x1264>
d0042fb2:	e8df f013 	tbh	[pc, r3, lsl #1]
d0042fb6:	011b      	.short	0x011b
d0042fb8:	011b0167 	.word	0x011b0167
d0042fbc:	01670167 	.word	0x01670167
d0042fc0:	0167011b 	.word	0x0167011b
d0042fc4:	0167011b 	.word	0x0167011b
d0042fc8:	011b      	.short	0x011b
d0042fca:	9b02      	ldr	r3, [sp, #8]
d0042fcc:	b313      	cbz	r3, d0043014 <main+0xff4>
d0042fce:	481b      	ldr	r0, [pc, #108]	; (d004303c <main+0x101c>)
d0042fd0:	f001 fbac 	bl	d004472c <puts>
d0042fd4:	9a06      	ldr	r2, [sp, #24]
d0042fd6:	7813      	ldrb	r3, [r2, #0]
d0042fd8:	4610      	mov	r0, r2
d0042fda:	4611      	mov	r1, r2
d0042fdc:	7852      	ldrb	r2, [r2, #1]
d0042fde:	7889      	ldrb	r1, [r1, #2]
d0042fe0:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0042fe4:	78c2      	ldrb	r2, [r0, #3]
d0042fe6:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0042fea:	4815      	ldr	r0, [pc, #84]	; (d0043040 <main+0x1020>)
d0042fec:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0042ff0:	68db      	ldr	r3, [r3, #12]
d0042ff2:	4798      	blx	r3
d0042ff4:	f7fd fa84 	bl	d0040500 <midi_send_channel_panic>
d0042ff8:	9b08      	ldr	r3, [sp, #32]
d0042ffa:	6818      	ldr	r0, [r3, #0]
d0042ffc:	b110      	cbz	r0, d0043004 <main+0xfe4>
d0042ffe:	9b09      	ldr	r3, [sp, #36]	; 0x24
d0043000:	781b      	ldrb	r3, [r3, #0]
d0043002:	b963      	cbnz	r3, d004301e <main+0xffe>
d0043004:	2300      	movs	r3, #0
d0043006:	9a08      	ldr	r2, [sp, #32]
d0043008:	2001      	movs	r0, #1
d004300a:	6013      	str	r3, [r2, #0]
d004300c:	9a09      	ldr	r2, [sp, #36]	; 0x24
d004300e:	7013      	strb	r3, [r2, #0]
d0043010:	f7ff b903 	b.w	d004221a <main+0x1fa>
d0043014:	4621      	mov	r1, r4
d0043016:	480b      	ldr	r0, [pc, #44]	; (d0043044 <main+0x1024>)
d0043018:	f001 fb02 	bl	d0044620 <iprintf>
d004301c:	e7da      	b.n	d0042fd4 <main+0xfb4>
d004301e:	f001 fa45 	bl	d00444ac <free>
d0043022:	e7ef      	b.n	d0043004 <main+0xfe4>
d0043024:	4b08      	ldr	r3, [pc, #32]	; (d0043048 <main+0x1028>)
d0043026:	9306      	str	r3, [sp, #24]
d0043028:	f7ff bb1a 	b.w	d0042660 <main+0x640>
d004302c:	d0046938 	.word	0xd0046938
d0043030:	d0046980 	.word	0xd0046980
d0043034:	d0046960 	.word	0xd0046960
d0043038:	d00479b0 	.word	0xd00479b0
d004303c:	d0045f74 	.word	0xd0045f74
d0043040:	d0045fa4 	.word	0xd0045fa4
d0043044:	d0045f8c 	.word	0xd0045f8c
d0043048:	2001f000 	.word	0x2001f000
d004304c:	7898      	ldrb	r0, [r3, #2]
d004304e:	2868      	cmp	r0, #104	; 0x68
d0043050:	f47f a94b 	bne.w	d00422ea <main+0x2ca>
d0043054:	78d8      	ldrb	r0, [r3, #3]
d0043056:	2864      	cmp	r0, #100	; 0x64
d0043058:	f47f a947 	bne.w	d00422ea <main+0x2ca>
d004305c:	4fbc      	ldr	r7, [pc, #752]	; (d0043350 <main+0x1330>)
d004305e:	6838      	ldr	r0, [r7, #0]
d0043060:	ba00      	rev	r0, r0
d0043062:	2805      	cmp	r0, #5
d0043064:	f67f a941 	bls.w	d00422ea <main+0x2ca>
d0043068:	f1a1 0608 	sub.w	r6, r1, #8
d004306c:	42b0      	cmp	r0, r6
d004306e:	f63f a93c 	bhi.w	d00422ea <main+0x2ca>
d0043072:	f893 c00a 	ldrb.w	ip, [r3, #10]
d0043076:	f100 0608 	add.w	r6, r0, #8
d004307a:	7adb      	ldrb	r3, [r3, #11]
d004307c:	46b8      	mov	r8, r7
d004307e:	f8df 930c 	ldr.w	r9, [pc, #780]	; d004338c <main+0x136c>
d0043082:	ea43 2e0c 	orr.w	lr, r3, ip, lsl #8
d0043086:	f8df a308 	ldr.w	sl, [pc, #776]	; d0043390 <main+0x1370>
d004308a:	f8df b308 	ldr.w	fp, [pc, #776]	; d0043394 <main+0x1374>
d004308e:	f106 0308 	add.w	r3, r6, #8
d0043092:	f106 4050 	add.w	r0, r6, #3489660928	; 0xd0000000
d0043096:	4299      	cmp	r1, r3
d0043098:	d32c      	bcc.n	d00430f4 <main+0x10d4>
d004309a:	4596      	cmp	lr, r2
d004309c:	d92a      	bls.n	d00430f4 <main+0x10d4>
d004309e:	f816 3009 	ldrb.w	r3, [r6, r9]
d00430a2:	f816 7008 	ldrb.w	r7, [r6, r8]
d00430a6:	041b      	lsls	r3, r3, #16
d00430a8:	f816 c00a 	ldrb.w	ip, [r6, sl]
d00430ac:	ea43 6307 	orr.w	r3, r3, r7, lsl #24
d00430b0:	f816 700b 	ldrb.w	r7, [r6, fp]
d00430b4:	ea43 030c 	orr.w	r3, r3, ip
d00430b8:	ea43 2307 	orr.w	r3, r3, r7, lsl #8
d00430bc:	3308      	adds	r3, #8
d00430be:	199b      	adds	r3, r3, r6
d00430c0:	f4bf a913 	bcs.w	d00422ea <main+0x2ca>
d00430c4:	4299      	cmp	r1, r3
d00430c6:	f4ff a910 	bcc.w	d00422ea <main+0x2ca>
d00430ca:	7800      	ldrb	r0, [r0, #0]
d00430cc:	284d      	cmp	r0, #77	; 0x4d
d00430ce:	d001      	beq.n	d00430d4 <main+0x10b4>
d00430d0:	461e      	mov	r6, r3
d00430d2:	e7dc      	b.n	d004308e <main+0x106e>
d00430d4:	489f      	ldr	r0, [pc, #636]	; (d0043354 <main+0x1334>)
d00430d6:	5c30      	ldrb	r0, [r6, r0]
d00430d8:	2854      	cmp	r0, #84	; 0x54
d00430da:	d1f9      	bne.n	d00430d0 <main+0x10b0>
d00430dc:	489e      	ldr	r0, [pc, #632]	; (d0043358 <main+0x1338>)
d00430de:	5c30      	ldrb	r0, [r6, r0]
d00430e0:	2872      	cmp	r0, #114	; 0x72
d00430e2:	d1f5      	bne.n	d00430d0 <main+0x10b0>
d00430e4:	489d      	ldr	r0, [pc, #628]	; (d004335c <main+0x133c>)
d00430e6:	5c30      	ldrb	r0, [r6, r0]
d00430e8:	286b      	cmp	r0, #107	; 0x6b
d00430ea:	d1f1      	bne.n	d00430d0 <main+0x10b0>
d00430ec:	3201      	adds	r2, #1
d00430ee:	461e      	mov	r6, r3
d00430f0:	b292      	uxth	r2, r2
d00430f2:	e7cc      	b.n	d004308e <main+0x106e>
d00430f4:	f1be 0f00 	cmp.w	lr, #0
d00430f8:	f43f a8f7 	beq.w	d00422ea <main+0x2ca>
d00430fc:	4596      	cmp	lr, r2
d00430fe:	f47f a8f4 	bne.w	d00422ea <main+0x2ca>
d0043102:	4b97      	ldr	r3, [pc, #604]	; (d0043360 <main+0x1340>)
d0043104:	6818      	ldr	r0, [r3, #0]
d0043106:	9308      	str	r3, [sp, #32]
d0043108:	4b96      	ldr	r3, [pc, #600]	; (d0043364 <main+0x1344>)
d004310a:	9309      	str	r3, [sp, #36]	; 0x24
d004310c:	b118      	cbz	r0, d0043116 <main+0x10f6>
d004310e:	781b      	ldrb	r3, [r3, #0]
d0043110:	2b00      	cmp	r3, #0
d0043112:	f040 839f 	bne.w	d0043854 <main+0x1834>
d0043116:	f04f 4250 	mov.w	r2, #3489660928	; 0xd0000000
d004311a:	9808      	ldr	r0, [sp, #32]
d004311c:	2300      	movs	r3, #0
d004311e:	4992      	ldr	r1, [pc, #584]	; (d0043368 <main+0x1348>)
d0043120:	6002      	str	r2, [r0, #0]
d0043122:	9a09      	ldr	r2, [sp, #36]	; 0x24
d0043124:	910f      	str	r1, [sp, #60]	; 0x3c
d0043126:	7013      	strb	r3, [r2, #0]
d0043128:	4b90      	ldr	r3, [pc, #576]	; (d004336c <main+0x134c>)
d004312a:	600e      	str	r6, [r1, #0]
d004312c:	9306      	str	r3, [sp, #24]
d004312e:	f7ff baef 	b.w	d0042710 <main+0x6f0>
d0043132:	488f      	ldr	r0, [pc, #572]	; (d0043370 <main+0x1350>)
d0043134:	f001 fafa 	bl	d004472c <puts>
d0043138:	f7fd f9e2 	bl	d0040500 <midi_send_channel_panic>
d004313c:	4b8d      	ldr	r3, [pc, #564]	; (d0043374 <main+0x1354>)
d004313e:	781b      	ldrb	r3, [r3, #0]
d0043140:	2b00      	cmp	r3, #0
d0043142:	f43f a89a 	beq.w	d004227a <main+0x25a>
d0043146:	f7fd fa7b 	bl	d0040640 <app_shutdown.part.0>
d004314a:	f7ff b896 	b.w	d004227a <main+0x25a>
d004314e:	ee18 0a10 	vmov	r0, s16
d0043152:	f7fd fa3b 	bl	d00405cc <midi_wait_for_startup_bytes>
d0043156:	4b88      	ldr	r3, [pc, #544]	; (d0043378 <main+0x1358>)
d0043158:	f893 3120 	ldrb.w	r3, [r3, #288]	; 0x120
d004315c:	b11b      	cbz	r3, d0043166 <main+0x1146>
d004315e:	4886      	ldr	r0, [pc, #536]	; (d0043378 <main+0x1358>)
d0043160:	2100      	movs	r1, #0
d0043162:	f7fe f8cd 	bl	d0041300 <midi_player_update_us.part.0>
d0043166:	9a06      	ldr	r2, [sp, #24]
d0043168:	4884      	ldr	r0, [pc, #528]	; (d004337c <main+0x135c>)
d004316a:	4614      	mov	r4, r2
d004316c:	7813      	ldrb	r3, [r2, #0]
d004316e:	7852      	ldrb	r2, [r2, #1]
d0043170:	78a1      	ldrb	r1, [r4, #2]
d0043172:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0043176:	78e2      	ldrb	r2, [r4, #3]
d0043178:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d004317c:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0043180:	6edb      	ldr	r3, [r3, #108]	; 0x6c
d0043182:	689b      	ldr	r3, [r3, #8]
d0043184:	4798      	blx	r3
d0043186:	7823      	ldrb	r3, [r4, #0]
d0043188:	7862      	ldrb	r2, [r4, #1]
d004318a:	21ef      	movs	r1, #239	; 0xef
d004318c:	78a0      	ldrb	r0, [r4, #2]
d004318e:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0043192:	78e2      	ldrb	r2, [r4, #3]
d0043194:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
d0043198:	f644 601f 	movw	r0, #19999	; 0x4e1f
d004319c:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00431a0:	6edb      	ldr	r3, [r3, #108]	; 0x6c
d00431a2:	685b      	ldr	r3, [r3, #4]
d00431a4:	4798      	blx	r3
d00431a6:	7823      	ldrb	r3, [r4, #0]
d00431a8:	7862      	ldrb	r2, [r4, #1]
d00431aa:	200b      	movs	r0, #11
d00431ac:	78a1      	ldrb	r1, [r4, #2]
d00431ae:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d00431b2:	78e2      	ldrb	r2, [r4, #3]
d00431b4:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d00431b8:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00431bc:	6edb      	ldr	r3, [r3, #108]	; 0x6c
d00431be:	681b      	ldr	r3, [r3, #0]
d00431c0:	4798      	blx	r3
d00431c2:	ee18 0a10 	vmov	r0, s16
d00431c6:	f000 fbcb 	bl	d0043960 <midi_translator_profile_name>
d00431ca:	4601      	mov	r1, r0
d00431cc:	486c      	ldr	r0, [pc, #432]	; (d0043380 <main+0x1360>)
d00431ce:	f001 fa27 	bl	d0044620 <iprintf>
d00431d2:	7823      	ldrb	r3, [r4, #0]
d00431d4:	7862      	ldrb	r2, [r4, #1]
d00431d6:	486b      	ldr	r0, [pc, #428]	; (d0043384 <main+0x1364>)
d00431d8:	78a1      	ldrb	r1, [r4, #2]
d00431da:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d00431de:	78e2      	ldrb	r2, [r4, #3]
d00431e0:	f7ff b814 	b.w	d004220c <main+0x1ec>
d00431e4:	f001 f962 	bl	d00444ac <free>
d00431e8:	f7ff ba88 	b.w	d00426fc <main+0x6dc>
d00431ec:	ea4f 17d8 	mov.w	r7, r8, lsr #7
d00431f0:	9d05      	ldr	r5, [sp, #20]
d00431f2:	3708      	adds	r7, #8
d00431f4:	f5b5 7fa0 	cmp.w	r5, #320	; 0x140
d00431f8:	b2bf      	uxth	r7, r7
d00431fa:	db04      	blt.n	d0043206 <main+0x11e6>
d00431fc:	f5a5 75a0 	sub.w	r5, r5, #320	; 0x140
d0043200:	f5b5 7fa0 	cmp.w	r5, #320	; 0x140
d0043204:	dafa      	bge.n	d00431fc <main+0x11dc>
d0043206:	b2ad      	uxth	r5, r5
d0043208:	2402      	movs	r4, #2
d004320a:	e000      	b.n	d004320e <main+0x11ee>
d004320c:	2500      	movs	r5, #0
d004320e:	f5c5 73a0 	rsb	r3, r5, #320	; 0x140
d0043212:	f8d9 2000 	ldr.w	r2, [r9]
d0043216:	b29b      	uxth	r3, r3
d0043218:	42a3      	cmp	r3, r4
d004321a:	bf28      	it	cs
d004321c:	4623      	movcs	r3, r4
d004321e:	469b      	mov	fp, r3
d0043220:	b16a      	cbz	r2, d004323e <main+0x121e>
d0043222:	f8d9 0000 	ldr.w	r0, [r9]
d0043226:	1e5a      	subs	r2, r3, #1
d0043228:	f8b9 3008 	ldrh.w	r3, [r9, #8]
d004322c:	2102      	movs	r1, #2
d004322e:	b292      	uxth	r2, r2
d0043230:	b29b      	uxth	r3, r3
d0043232:	3201      	adds	r2, #1
d0043234:	fb03 5307 	mla	r3, r3, r7, r5
d0043238:	4418      	add	r0, r3
d004323a:	f001 f93f 	bl	d00444bc <memset>
d004323e:	f8d9 3000 	ldr.w	r3, [r9]
d0043242:	b1d3      	cbz	r3, d004327a <main+0x125a>
d0043244:	f505 75a0 	add.w	r5, r5, #320	; 0x140
d0043248:	b2ad      	uxth	r5, r5
d004324a:	eb0b 0305 	add.w	r3, fp, r5
d004324e:	f5b3 7f20 	cmp.w	r3, #640	; 0x280
d0043252:	f240 8122 	bls.w	d004349a <main+0x147a>
d0043256:	f5c5 7320 	rsb	r3, r5, #640	; 0x280
d004325a:	b29b      	uxth	r3, r3
d004325c:	f8d9 0000 	ldr.w	r0, [r9]
d0043260:	3b01      	subs	r3, #1
d0043262:	f8b9 c008 	ldrh.w	ip, [r9, #8]
d0043266:	2102      	movs	r1, #2
d0043268:	b29a      	uxth	r2, r3
d004326a:	fa1f f38c 	uxth.w	r3, ip
d004326e:	3201      	adds	r2, #1
d0043270:	fb03 5507 	mla	r5, r3, r7, r5
d0043274:	4428      	add	r0, r5
d0043276:	f001 f921 	bl	d00444bc <memset>
d004327a:	eba4 040b 	sub.w	r4, r4, fp
d004327e:	b2a4      	uxth	r4, r4
d0043280:	2c00      	cmp	r4, #0
d0043282:	d1c3      	bne.n	d004320c <main+0x11ec>
d0043284:	3601      	adds	r6, #1
d0043286:	f508 78e8 	add.w	r8, r8, #464	; 0x1d0
d004328a:	b2f6      	uxtb	r6, r6
d004328c:	2e80      	cmp	r6, #128	; 0x80
d004328e:	f47f ae84 	bne.w	d0042f9a <main+0xf7a>
d0043292:	9b02      	ldr	r3, [sp, #8]
d0043294:	f8dd 8014 	ldr.w	r8, [sp, #20]
d0043298:	3302      	adds	r3, #2
d004329a:	f8df b0fc 	ldr.w	fp, [pc, #252]	; d0043398 <main+0x1378>
d004329e:	f8df a0fc 	ldr.w	sl, [pc, #252]	; d004339c <main+0x137c>
d00432a2:	9c06      	ldr	r4, [sp, #24]
d00432a4:	9303      	str	r3, [sp, #12]
d00432a6:	4b38      	ldr	r3, [pc, #224]	; (d0043388 <main+0x1368>)
d00432a8:	681e      	ldr	r6, [r3, #0]
d00432aa:	9b02      	ldr	r3, [sp, #8]
d00432ac:	2e00      	cmp	r6, #0
d00432ae:	ea4f 2503 	mov.w	r5, r3, lsl #8
d00432b2:	bf08      	it	eq
d00432b4:	f44f 5680 	moveq.w	r6, #4096	; 0x1000
d00432b8:	0e1f      	lsrs	r7, r3, #24
d00432ba:	f115 33ff 	adds.w	r3, r5, #4294967295	; 0xffffffff
d00432be:	4632      	mov	r2, r6
d00432c0:	930a      	str	r3, [sp, #40]	; 0x28
d00432c2:	f147 33ff 	adc.w	r3, r7, #4294967295	; 0xffffffff
d00432c6:	930b      	str	r3, [sp, #44]	; 0x2c
d00432c8:	2300      	movs	r3, #0
d00432ca:	e9dd 010a 	ldrd	r0, r1, [sp, #40]	; 0x28
d00432ce:	1980      	adds	r0, r0, r6
d00432d0:	f141 0100 	adc.w	r1, r1, #0
d00432d4:	f000 ff60 	bl	d0044198 <__aeabi_uldivmod>
d00432d8:	f515 7380 	adds.w	r3, r5, #256	; 0x100
d00432dc:	460a      	mov	r2, r1
d00432de:	930c      	str	r3, [sp, #48]	; 0x30
d00432e0:	f147 0100 	adc.w	r1, r7, #0
d00432e4:	4603      	mov	r3, r0
d00432e6:	910d      	str	r1, [sp, #52]	; 0x34
d00432e8:	fba3 0106 	umull	r0, r1, r3, r6
d00432ec:	fb06 1102 	mla	r1, r6, r2, r1
d00432f0:	e9dd 560c 	ldrd	r5, r6, [sp, #48]	; 0x30
d00432f4:	42b1      	cmp	r1, r6
d00432f6:	bf08      	it	eq
d00432f8:	42a8      	cmpeq	r0, r5
d00432fa:	d21a      	bcs.n	d0043332 <main+0x1312>
d00432fc:	f5b8 7fa0 	cmp.w	r8, #320	; 0x140
d0043300:	4645      	mov	r5, r8
d0043302:	f2c0 81d7 	blt.w	d00436b4 <main+0x1694>
d0043306:	4640      	mov	r0, r8
d0043308:	f5a0 70a0 	sub.w	r0, r0, #320	; 0x140
d004330c:	f5b0 7fa0 	cmp.w	r0, #320	; 0x140
d0043310:	dafa      	bge.n	d0043308 <main+0x12e8>
d0043312:	f003 0201 	and.w	r2, r3, #1
d0043316:	b280      	uxth	r0, r0
d0043318:	2101      	movs	r1, #1
d004331a:	9304      	str	r3, [sp, #16]
d004331c:	f1c2 0203 	rsb	r2, r2, #3
d0043320:	b2d2      	uxtb	r2, r2
d0043322:	f7fd fe5f 	bl	d0040fe4 <visualizer_back_rect_logical.constprop.0>
d0043326:	9b04      	ldr	r3, [sp, #16]
d0043328:	f003 0203 	and.w	r2, r3, #3
d004332c:	2a00      	cmp	r2, #0
d004332e:	f000 813d 	beq.w	d00435ac <main+0x158c>
d0043332:	9b02      	ldr	r3, [sp, #8]
d0043334:	f108 0801 	add.w	r8, r8, #1
d0043338:	9a03      	ldr	r2, [sp, #12]
d004333a:	3301      	adds	r3, #1
d004333c:	429a      	cmp	r2, r3
d004333e:	9302      	str	r3, [sp, #8]
d0043340:	d1b1      	bne.n	d00432a6 <main+0x1286>
d0043342:	f8df a05c 	ldr.w	sl, [pc, #92]	; d00433a0 <main+0x1380>
d0043346:	f8cd a00c 	str.w	sl, [sp, #12]
d004334a:	f8cd a054 	str.w	sl, [sp, #84]	; 0x54
d004334e:	e030      	b.n	d00433b2 <main+0x1392>
d0043350:	d0000004 	.word	0xd0000004
d0043354:	d0000001 	.word	0xd0000001
d0043358:	d0000002 	.word	0xd0000002
d004335c:	d0000003 	.word	0xd0000003
d0043360:	d0046984 	.word	0xd0046984
d0043364:	d0046988 	.word	0xd0046988
d0043368:	d004698c 	.word	0xd004698c
d004336c:	2001f000 	.word	0x2001f000
d0043370:	d0045ff4 	.word	0xd0045ff4
d0043374:	d00464e8 	.word	0xd00464e8
d0043378:	d0047bc8 	.word	0xd0047bc8
d004337c:	d00419cd 	.word	0xd00419cd
d0043380:	d0045fb8 	.word	0xd0045fb8
d0043384:	d0045fd8 	.word	0xd0045fd8
d0043388:	d0046dac 	.word	0xd0046dac
d004338c:	d0000005 	.word	0xd0000005
d0043390:	d0000007 	.word	0xd0000007
d0043394:	d0000006 	.word	0xd0000006
d0043398:	d0046058 	.word	0xd0046058
d004339c:	d0046920 	.word	0xd0046920
d00433a0:	d0046db0 	.word	0xd0046db0
d00433a4:	9b03      	ldr	r3, [sp, #12]
d00433a6:	4a7c      	ldr	r2, [pc, #496]	; (d0043598 <main+0x1578>)
d00433a8:	3310      	adds	r3, #16
d00433aa:	4293      	cmp	r3, r2
d00433ac:	9303      	str	r3, [sp, #12]
d00433ae:	f000 809b 	beq.w	d00434e8 <main+0x14c8>
d00433b2:	9b03      	ldr	r3, [sp, #12]
d00433b4:	7b1b      	ldrb	r3, [r3, #12]
d00433b6:	2b00      	cmp	r3, #0
d00433b8:	d0f4      	beq.n	d00433a4 <main+0x1384>
d00433ba:	9a03      	ldr	r2, [sp, #12]
d00433bc:	7ad3      	ldrb	r3, [r2, #11]
d00433be:	2b00      	cmp	r3, #0
d00433c0:	d0f0      	beq.n	d00433a4 <main+0x1384>
d00433c2:	7a13      	ldrb	r3, [r2, #8]
d00433c4:	f892 8009 	ldrb.w	r8, [r2, #9]
d00433c8:	f44f 72e8 	mov.w	r2, #464	; 0x1d0
d00433cc:	9c05      	ldr	r4, [sp, #20]
d00433ce:	fb02 f303 	mul.w	r3, r2, r3
d00433d2:	f108 0820 	add.w	r8, r8, #32
d00433d6:	f5b4 7fa0 	cmp.w	r4, #320	; 0x140
d00433da:	ea4f 13d3 	mov.w	r3, r3, lsr #7
d00433de:	fa5f f888 	uxtb.w	r8, r8
d00433e2:	f103 0208 	add.w	r2, r3, #8
d00433e6:	9204      	str	r2, [sp, #16]
d00433e8:	9207      	str	r2, [sp, #28]
d00433ea:	db04      	blt.n	d00433f6 <main+0x13d6>
d00433ec:	f5a4 74a0 	sub.w	r4, r4, #320	; 0x140
d00433f0:	f5b4 7fa0 	cmp.w	r4, #320	; 0x140
d00433f4:	dafa      	bge.n	d00433ec <main+0x13cc>
d00433f6:	9b04      	ldr	r3, [sp, #16]
d00433f8:	b2a4      	uxth	r4, r4
d00433fa:	2502      	movs	r5, #2
d00433fc:	f5b3 7fee 	cmp.w	r3, #476	; 0x1dc
d0043400:	f5c3 73f0 	rsb	r3, r3, #480	; 0x1e0
d0043404:	bf94      	ite	ls
d0043406:	2704      	movls	r7, #4
d0043408:	461f      	movhi	r7, r3
d004340a:	e00b      	b.n	d0043424 <main+0x1404>
d004340c:	9b04      	ldr	r3, [sp, #16]
d004340e:	f5b3 7ff0 	cmp.w	r3, #480	; 0x1e0
d0043412:	d344      	bcc.n	d004349e <main+0x147e>
d0043414:	f8d9 3000 	ldr.w	r3, [r9]
d0043418:	9b02      	ldr	r3, [sp, #8]
d004341a:	1aed      	subs	r5, r5, r3
d004341c:	b2ad      	uxth	r5, r5
d004341e:	2d00      	cmp	r5, #0
d0043420:	d0c0      	beq.n	d00433a4 <main+0x1384>
d0043422:	2400      	movs	r4, #0
d0043424:	f5c4 73a0 	rsb	r3, r4, #320	; 0x140
d0043428:	f8d9 2000 	ldr.w	r2, [r9]
d004342c:	b29b      	uxth	r3, r3
d004342e:	42ab      	cmp	r3, r5
d0043430:	bf28      	it	cs
d0043432:	462b      	movcs	r3, r5
d0043434:	9302      	str	r3, [sp, #8]
d0043436:	2a00      	cmp	r2, #0
d0043438:	d1e8      	bne.n	d004340c <main+0x13ec>
d004343a:	f8d9 3000 	ldr.w	r3, [r9]
d004343e:	2b00      	cmp	r3, #0
d0043440:	d0ea      	beq.n	d0043418 <main+0x13f8>
d0043442:	9b04      	ldr	r3, [sp, #16]
d0043444:	f5b3 7ff0 	cmp.w	r3, #480	; 0x1e0
d0043448:	d2e6      	bcs.n	d0043418 <main+0x13f8>
d004344a:	f504 72a0 	add.w	r2, r4, #320	; 0x140
d004344e:	9b02      	ldr	r3, [sp, #8]
d0043450:	b292      	uxth	r2, r2
d0043452:	4413      	add	r3, r2
d0043454:	f5b3 7f20 	cmp.w	r3, #640	; 0x280
d0043458:	d943      	bls.n	d00434e2 <main+0x14c2>
d004345a:	f5c2 7a20 	rsb	sl, r2, #640	; 0x280
d004345e:	fa1f fa8a 	uxth.w	sl, sl
d0043462:	f8d9 3000 	ldr.w	r3, [r9]
d0043466:	f10a 3aff 	add.w	sl, sl, #4294967295	; 0xffffffff
d004346a:	f8b9 6008 	ldrh.w	r6, [r9, #8]
d004346e:	2400      	movs	r4, #0
d0043470:	9904      	ldr	r1, [sp, #16]
d0043472:	fa1f fa8a 	uxth.w	sl, sl
d0043476:	b2b6      	uxth	r6, r6
d0043478:	f10a 0a01 	add.w	sl, sl, #1
d004347c:	fb06 2201 	mla	r2, r6, r1, r2
d0043480:	4413      	add	r3, r2
d0043482:	3401      	adds	r4, #1
d0043484:	4618      	mov	r0, r3
d0043486:	4652      	mov	r2, sl
d0043488:	4641      	mov	r1, r8
d004348a:	f001 f817 	bl	d00444bc <memset>
d004348e:	4603      	mov	r3, r0
d0043490:	b220      	sxth	r0, r4
d0043492:	4433      	add	r3, r6
d0043494:	42b8      	cmp	r0, r7
d0043496:	dbf4      	blt.n	d0043482 <main+0x1462>
d0043498:	e7be      	b.n	d0043418 <main+0x13f8>
d004349a:	465b      	mov	r3, fp
d004349c:	e6de      	b.n	d004325c <main+0x123c>
d004349e:	f8d9 3000 	ldr.w	r3, [r9]
d00434a2:	2600      	movs	r6, #0
d00434a4:	9a02      	ldr	r2, [sp, #8]
d00434a6:	f8b9 a008 	ldrh.w	sl, [r9, #8]
d00434aa:	f102 3bff 	add.w	fp, r2, #4294967295	; 0xffffffff
d00434ae:	9a07      	ldr	r2, [sp, #28]
d00434b0:	fa1f fa8a 	uxth.w	sl, sl
d00434b4:	fa1f fb8b 	uxth.w	fp, fp
d00434b8:	fb0a 4202 	mla	r2, sl, r2, r4
d00434bc:	f10b 0b01 	add.w	fp, fp, #1
d00434c0:	4413      	add	r3, r2
d00434c2:	3601      	adds	r6, #1
d00434c4:	4618      	mov	r0, r3
d00434c6:	465a      	mov	r2, fp
d00434c8:	4641      	mov	r1, r8
d00434ca:	f000 fff7 	bl	d00444bc <memset>
d00434ce:	4603      	mov	r3, r0
d00434d0:	b230      	sxth	r0, r6
d00434d2:	4453      	add	r3, sl
d00434d4:	42b8      	cmp	r0, r7
d00434d6:	dbf4      	blt.n	d00434c2 <main+0x14a2>
d00434d8:	f8d9 3000 	ldr.w	r3, [r9]
d00434dc:	2b00      	cmp	r3, #0
d00434de:	d1b4      	bne.n	d004344a <main+0x142a>
d00434e0:	e79a      	b.n	d0043418 <main+0x13f8>
d00434e2:	f8dd a008 	ldr.w	sl, [sp, #8]
d00434e6:	e7bc      	b.n	d0043462 <main+0x1442>
d00434e8:	4a2c      	ldr	r2, [pc, #176]	; (d004359c <main+0x157c>)
d00434ea:	482d      	ldr	r0, [pc, #180]	; (d00435a0 <main+0x1580>)
d00434ec:	6811      	ldr	r1, [r2, #0]
d00434ee:	6803      	ldr	r3, [r0, #0]
d00434f0:	3101      	adds	r1, #1
d00434f2:	f8dd a054 	ldr.w	sl, [sp, #84]	; 0x54
d00434f6:	3302      	adds	r3, #2
d00434f8:	6011      	str	r1, [r2, #0]
d00434fa:	6003      	str	r3, [r0, #0]
d00434fc:	f89a 300c 	ldrb.w	r3, [sl, #12]
d0043500:	b15b      	cbz	r3, d004351a <main+0x14fa>
d0043502:	f89a 200b 	ldrb.w	r2, [sl, #11]
d0043506:	b942      	cbnz	r2, d004351a <main+0x14fa>
d0043508:	f8da 3004 	ldr.w	r3, [sl, #4]
d004350c:	1acb      	subs	r3, r1, r3
d004350e:	005b      	lsls	r3, r3, #1
d0043510:	f5b3 7f8c 	cmp.w	r3, #280	; 0x118
d0043514:	bf88      	it	hi
d0043516:	f88a 200c 	strbhi.w	r2, [sl, #12]
d004351a:	f10a 0a10 	add.w	sl, sl, #16
d004351e:	4b1e      	ldr	r3, [pc, #120]	; (d0043598 <main+0x1578>)
d0043520:	459a      	cmp	sl, r3
d0043522:	d1eb      	bne.n	d00434fc <main+0x14dc>
d0043524:	9806      	ldr	r0, [sp, #24]
d0043526:	9d0e      	ldr	r5, [sp, #56]	; 0x38
d0043528:	7b03      	ldrb	r3, [r0, #12]
d004352a:	4604      	mov	r4, r0
d004352c:	7b42      	ldrb	r2, [r0, #13]
d004352e:	4629      	mov	r1, r5
d0043530:	7b80      	ldrb	r0, [r0, #14]
d0043532:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0043536:	7be2      	ldrb	r2, [r4, #15]
d0043538:	9f14      	ldr	r7, [sp, #80]	; 0x50
d004353a:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
d004353e:	2000      	movs	r0, #0
d0043540:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0043544:	681b      	ldr	r3, [r3, #0]
d0043546:	6b1b      	ldr	r3, [r3, #48]	; 0x30
d0043548:	4798      	blx	r3
d004354a:	7b23      	ldrb	r3, [r4, #12]
d004354c:	7b62      	ldrb	r2, [r4, #13]
d004354e:	4628      	mov	r0, r5
d0043550:	7ba1      	ldrb	r1, [r4, #14]
d0043552:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0043556:	3002      	adds	r0, #2
d0043558:	7be2      	ldrb	r2, [r4, #15]
d004355a:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d004355e:	b280      	uxth	r0, r0
d0043560:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0043564:	f5b0 7fa0 	cmp.w	r0, #320	; 0x140
d0043568:	681b      	ldr	r3, [r3, #0]
d004356a:	bf34      	ite	cc
d004356c:	4602      	movcc	r2, r0
d004356e:	2200      	movcs	r2, #0
d0043570:	681b      	ldr	r3, [r3, #0]
d0043572:	920e      	str	r2, [sp, #56]	; 0x38
d0043574:	4798      	blx	r3
d0043576:	f7ff bb4d 	b.w	d0042c14 <main+0xbf4>
d004357a:	9a06      	ldr	r2, [sp, #24]
d004357c:	4611      	mov	r1, r2
d004357e:	7b13      	ldrb	r3, [r2, #12]
d0043580:	7b52      	ldrb	r2, [r2, #13]
d0043582:	7b88      	ldrb	r0, [r1, #14]
d0043584:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0043588:	7bca      	ldrb	r2, [r1, #15]
d004358a:	4906      	ldr	r1, [pc, #24]	; (d00435a4 <main+0x1584>)
d004358c:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
d0043590:	4805      	ldr	r0, [pc, #20]	; (d00435a8 <main+0x1588>)
d0043592:	6809      	ldr	r1, [r1, #0]
d0043594:	e417      	b.n	d0042dc6 <main+0xda6>
d0043596:	bf00      	nop
d0043598:	d00479b0 	.word	0xd00479b0
d004359c:	d0046da8 	.word	0xd0046da8
d00435a0:	d00479b0 	.word	0xd00479b0
d00435a4:	d0046960 	.word	0xd0046960
d00435a8:	d0046980 	.word	0xd0046980
d00435ac:	089a      	lsrs	r2, r3, #2
d00435ae:	4659      	mov	r1, fp
d00435b0:	4650      	mov	r0, sl
d00435b2:	f001 f991 	bl	d00448d8 <siprintf>
d00435b6:	4640      	mov	r0, r8
d00435b8:	f5a0 70a0 	sub.w	r0, r0, #320	; 0x140
d00435bc:	f5b0 7fa0 	cmp.w	r0, #320	; 0x140
d00435c0:	dafa      	bge.n	d00435b8 <main+0x1598>
d00435c2:	b280      	uxth	r0, r0
d00435c4:	2203      	movs	r2, #3
d00435c6:	2105      	movs	r1, #5
d00435c8:	f7fd fd0c 	bl	d0040fe4 <visualizer_back_rect_logical.constprop.0>
d00435cc:	f5a5 75a0 	sub.w	r5, r5, #320	; 0x140
d00435d0:	f5b5 7fa0 	cmp.w	r5, #320	; 0x140
d00435d4:	dafa      	bge.n	d00435cc <main+0x15ac>
d00435d6:	7b23      	ldrb	r3, [r4, #12]
d00435d8:	7b62      	ldrb	r2, [r4, #13]
d00435da:	7ba1      	ldrb	r1, [r4, #14]
d00435dc:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d00435e0:	7be2      	ldrb	r2, [r4, #15]
d00435e2:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d00435e6:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00435ea:	681b      	ldr	r3, [r3, #0]
d00435ec:	6b5b      	ldr	r3, [r3, #52]	; 0x34
d00435ee:	4798      	blx	r3
d00435f0:	7b23      	ldrb	r3, [r4, #12]
d00435f2:	7b62      	ldrb	r2, [r4, #13]
d00435f4:	4607      	mov	r7, r0
d00435f6:	7ba1      	ldrb	r1, [r4, #14]
d00435f8:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d00435fc:	7be2      	ldrb	r2, [r4, #15]
d00435fe:	4897      	ldr	r0, [pc, #604]	; (d004385c <main+0x183c>)
d0043600:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0043604:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0043608:	681b      	ldr	r3, [r3, #0]
d004360a:	699b      	ldr	r3, [r3, #24]
d004360c:	4798      	blx	r3
d004360e:	7b23      	ldrb	r3, [r4, #12]
d0043610:	7b62      	ldrb	r2, [r4, #13]
d0043612:	2006      	movs	r0, #6
d0043614:	7ba1      	ldrb	r1, [r4, #14]
d0043616:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004361a:	7be2      	ldrb	r2, [r4, #15]
d004361c:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0043620:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0043624:	685b      	ldr	r3, [r3, #4]
d0043626:	68db      	ldr	r3, [r3, #12]
d0043628:	4798      	blx	r3
d004362a:	7b20      	ldrb	r0, [r4, #12]
d004362c:	7b61      	ldrb	r1, [r4, #13]
d004362e:	4652      	mov	r2, sl
d0043630:	7ba6      	ldrb	r6, [r4, #14]
d0043632:	2301      	movs	r3, #1
d0043634:	ea40 2001 	orr.w	r0, r0, r1, lsl #8
d0043638:	f894 c00f 	ldrb.w	ip, [r4, #15]
d004363c:	f1a5 010e 	sub.w	r1, r5, #14
d0043640:	ea40 4606 	orr.w	r6, r0, r6, lsl #16
d0043644:	2008      	movs	r0, #8
d0043646:	ea46 660c 	orr.w	r6, r6, ip, lsl #24
d004364a:	f8d6 c004 	ldr.w	ip, [r6, #4]
d004364e:	2602      	movs	r6, #2
d0043650:	9600      	str	r6, [sp, #0]
d0043652:	f8dc 6030 	ldr.w	r6, [ip, #48]	; 0x30
d0043656:	47b0      	blx	r6
d0043658:	7b20      	ldrb	r0, [r4, #12]
d004365a:	7b62      	ldrb	r2, [r4, #13]
d004365c:	f505 7199 	add.w	r1, r5, #306	; 0x132
d0043660:	7ba5      	ldrb	r5, [r4, #14]
d0043662:	2301      	movs	r3, #1
d0043664:	ea40 2002 	orr.w	r0, r0, r2, lsl #8
d0043668:	7be6      	ldrb	r6, [r4, #15]
d004366a:	4652      	mov	r2, sl
d004366c:	b289      	uxth	r1, r1
d004366e:	ea40 4505 	orr.w	r5, r0, r5, lsl #16
d0043672:	2008      	movs	r0, #8
d0043674:	ea45 6506 	orr.w	r5, r5, r6, lsl #24
d0043678:	2602      	movs	r6, #2
d004367a:	686d      	ldr	r5, [r5, #4]
d004367c:	9600      	str	r6, [sp, #0]
d004367e:	6b2d      	ldr	r5, [r5, #48]	; 0x30
d0043680:	47a8      	blx	r5
d0043682:	7b23      	ldrb	r3, [r4, #12]
d0043684:	7b62      	ldrb	r2, [r4, #13]
d0043686:	4638      	mov	r0, r7
d0043688:	7ba1      	ldrb	r1, [r4, #14]
d004368a:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004368e:	7be2      	ldrb	r2, [r4, #15]
d0043690:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0043694:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0043698:	681b      	ldr	r3, [r3, #0]
d004369a:	699b      	ldr	r3, [r3, #24]
d004369c:	4798      	blx	r3
d004369e:	e648      	b.n	d0043332 <main+0x1312>
d00436a0:	4b6f      	ldr	r3, [pc, #444]	; (d0043860 <main+0x1840>)
d00436a2:	601a      	str	r2, [r3, #0]
d00436a4:	f7ff baeb 	b.w	d0042c7e <main+0xc5e>
d00436a8:	496e      	ldr	r1, [pc, #440]	; (d0043864 <main+0x1844>)
d00436aa:	4c6f      	ldr	r4, [pc, #444]	; (d0043868 <main+0x1848>)
d00436ac:	4a6f      	ldr	r2, [pc, #444]	; (d004386c <main+0x184c>)
d00436ae:	4b70      	ldr	r3, [pc, #448]	; (d0043870 <main+0x1850>)
d00436b0:	f7ff bb03 	b.w	d0042cba <main+0xc9a>
d00436b4:	f003 0201 	and.w	r2, r3, #1
d00436b8:	fa1f f688 	uxth.w	r6, r8
d00436bc:	2101      	movs	r1, #1
d00436be:	9304      	str	r3, [sp, #16]
d00436c0:	f1c2 0203 	rsb	r2, r2, #3
d00436c4:	4630      	mov	r0, r6
d00436c6:	b2d2      	uxtb	r2, r2
d00436c8:	f7fd fc8c 	bl	d0040fe4 <visualizer_back_rect_logical.constprop.0>
d00436cc:	9b04      	ldr	r3, [sp, #16]
d00436ce:	f003 0203 	and.w	r2, r3, #3
d00436d2:	2a00      	cmp	r2, #0
d00436d4:	f47f ae2d 	bne.w	d0043332 <main+0x1312>
d00436d8:	089a      	lsrs	r2, r3, #2
d00436da:	4659      	mov	r1, fp
d00436dc:	4650      	mov	r0, sl
d00436de:	f001 f8fb 	bl	d00448d8 <siprintf>
d00436e2:	4630      	mov	r0, r6
d00436e4:	2203      	movs	r2, #3
d00436e6:	2105      	movs	r1, #5
d00436e8:	f7fd fc7c 	bl	d0040fe4 <visualizer_back_rect_logical.constprop.0>
d00436ec:	e773      	b.n	d00435d6 <main+0x15b6>
d00436ee:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
d00436f0:	ee18 2a10 	vmov	r2, s16
d00436f4:	f44f 7500 	mov.w	r5, #512	; 0x200
d00436f8:	6819      	ldr	r1, [r3, #0]
d00436fa:	9b08      	ldr	r3, [sp, #32]
d00436fc:	6818      	ldr	r0, [r3, #0]
d00436fe:	f7fe fc1d 	bl	d0041f3c <setup>
d0043702:	4b5c      	ldr	r3, [pc, #368]	; (d0043874 <main+0x1854>)
d0043704:	f242 7010 	movw	r0, #10000	; 0x2710
d0043708:	2100      	movs	r1, #0
d004370a:	f8d3 4114 	ldr.w	r4, [r3, #276]	; 0x114
d004370e:	f644 6220 	movw	r2, #20000	; 0x4e20
d0043712:	4b59      	ldr	r3, [pc, #356]	; (d0043878 <main+0x1858>)
d0043714:	2c00      	cmp	r4, #0
d0043716:	bf08      	it	eq
d0043718:	461c      	moveq	r4, r3
d004371a:	2300      	movs	r3, #0
d004371c:	fbe5 0104 	umlal	r0, r1, r5, r4
d0043720:	f000 fd3a 	bl	d0044198 <__aeabi_uldivmod>
d0043724:	f5b0 3fa0 	cmp.w	r0, #81920	; 0x14000
d0043728:	4b54      	ldr	r3, [pc, #336]	; (d004387c <main+0x185c>)
d004372a:	bf28      	it	cs
d004372c:	f44f 30a0 	movcs.w	r0, #81920	; 0x14000
d0043730:	f8d9 2000 	ldr.w	r2, [r9]
d0043734:	f5b0 6f80 	cmp.w	r0, #1024	; 0x400
d0043738:	bf38      	it	cc
d004373a:	f44f 6080 	movcc.w	r0, #1024	; 0x400
d004373e:	6018      	str	r0, [r3, #0]
d0043740:	b18a      	cbz	r2, d0043766 <main+0x1746>
d0043742:	f8d9 5000 	ldr.w	r5, [r9]
d0043746:	f44f 74f0 	mov.w	r4, #480	; 0x1e0
d004374a:	f8b9 6008 	ldrh.w	r6, [r9, #8]
d004374e:	b2b6      	uxth	r6, r6
d0043750:	3c01      	subs	r4, #1
d0043752:	4628      	mov	r0, r5
d0043754:	f44f 7220 	mov.w	r2, #640	; 0x280
d0043758:	2101      	movs	r1, #1
d004375a:	b2a4      	uxth	r4, r4
d004375c:	4435      	add	r5, r6
d004375e:	f000 fead 	bl	d00444bc <memset>
d0043762:	2c00      	cmp	r4, #0
d0043764:	d1f4      	bne.n	d0043750 <main+0x1730>
d0043766:	f7fd fb65 	bl	d0040e34 <visualizer_draw_grid_full>
d004376a:	ee18 0a10 	vmov	r0, s16
d004376e:	f7fc ff2d 	bl	d00405cc <midi_wait_for_startup_bytes>
d0043772:	4b40      	ldr	r3, [pc, #256]	; (d0043874 <main+0x1854>)
d0043774:	f893 3120 	ldrb.w	r3, [r3, #288]	; 0x120
d0043778:	2b00      	cmp	r3, #0
d004377a:	d04e      	beq.n	d004381a <main+0x17fa>
d004377c:	2300      	movs	r3, #0
d004377e:	483d      	ldr	r0, [pc, #244]	; (d0043874 <main+0x1854>)
d0043780:	4619      	mov	r1, r3
d0043782:	930e      	str	r3, [sp, #56]	; 0x38
d0043784:	f7fd fdbc 	bl	d0041300 <midi_player_update_us.part.0>
d0043788:	f7ff ba4a 	b.w	d0042c20 <main+0xc00>
d004378c:	9805      	ldr	r0, [sp, #20]
d004378e:	f7ff bba2 	b.w	d0042ed6 <main+0xeb6>
d0043792:	f7fc feb5 	bl	d0040500 <midi_send_channel_panic>
d0043796:	4b3a      	ldr	r3, [pc, #232]	; (d0043880 <main+0x1860>)
d0043798:	781b      	ldrb	r3, [r3, #0]
d004379a:	b10b      	cbz	r3, d00437a0 <main+0x1780>
d004379c:	f7fc ff50 	bl	d0040640 <app_shutdown.part.0>
d00437a0:	9a06      	ldr	r2, [sp, #24]
d00437a2:	2000      	movs	r0, #0
d00437a4:	4614      	mov	r4, r2
d00437a6:	7813      	ldrb	r3, [r2, #0]
d00437a8:	7852      	ldrb	r2, [r2, #1]
d00437aa:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d00437ae:	78a2      	ldrb	r2, [r4, #2]
d00437b0:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d00437b4:	78e2      	ldrb	r2, [r4, #3]
d00437b6:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00437ba:	6edb      	ldr	r3, [r3, #108]	; 0x6c
d00437bc:	681b      	ldr	r3, [r3, #0]
d00437be:	4798      	blx	r3
d00437c0:	7823      	ldrb	r3, [r4, #0]
d00437c2:	7862      	ldrb	r2, [r4, #1]
d00437c4:	2000      	movs	r0, #0
d00437c6:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d00437ca:	78a2      	ldrb	r2, [r4, #2]
d00437cc:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d00437d0:	78e2      	ldrb	r2, [r4, #3]
d00437d2:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00437d6:	6edb      	ldr	r3, [r3, #108]	; 0x6c
d00437d8:	689b      	ldr	r3, [r3, #8]
d00437da:	4798      	blx	r3
d00437dc:	f894 3020 	ldrb.w	r3, [r4, #32]
d00437e0:	f894 2021 	ldrb.w	r2, [r4, #33]	; 0x21
d00437e4:	2000      	movs	r0, #0
d00437e6:	f894 1022 	ldrb.w	r1, [r4, #34]	; 0x22
d00437ea:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d00437ee:	f894 2023 	ldrb.w	r2, [r4, #35]	; 0x23
d00437f2:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d00437f6:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00437fa:	681b      	ldr	r3, [r3, #0]
d00437fc:	4798      	blx	r3
d00437fe:	9b08      	ldr	r3, [sp, #32]
d0043800:	6818      	ldr	r0, [r3, #0]
d0043802:	b110      	cbz	r0, d004380a <main+0x17ea>
d0043804:	9b09      	ldr	r3, [sp, #36]	; 0x24
d0043806:	781b      	ldrb	r3, [r3, #0]
d0043808:	b953      	cbnz	r3, d0043820 <main+0x1800>
d004380a:	2300      	movs	r3, #0
d004380c:	9a08      	ldr	r2, [sp, #32]
d004380e:	6013      	str	r3, [r2, #0]
d0043810:	4618      	mov	r0, r3
d0043812:	9a09      	ldr	r2, [sp, #36]	; 0x24
d0043814:	7013      	strb	r3, [r2, #0]
d0043816:	f7fe bd00 	b.w	d004221a <main+0x1fa>
d004381a:	930e      	str	r3, [sp, #56]	; 0x38
d004381c:	f7ff ba00 	b.w	d0042c20 <main+0xc00>
d0043820:	f000 fe44 	bl	d00444ac <free>
d0043824:	e7f1      	b.n	d004380a <main+0x17ea>
d0043826:	ee18 0a10 	vmov	r0, s16
d004382a:	f000 facd 	bl	d0043dc8 <midi_translator_uses_soundfont>
d004382e:	b108      	cbz	r0, d0043834 <main+0x1814>
d0043830:	f7fd fa5e 	bl	d0040cf0 <midi_wait_for_synth_ready.part.0>
d0043834:	2200      	movs	r2, #0
d0043836:	4913      	ldr	r1, [pc, #76]	; (d0043884 <main+0x1864>)
d0043838:	ee18 0a10 	vmov	r0, s16
d004383c:	f000 fc3a 	bl	d00440b4 <midi_translator_send_post_load_burst>
d0043840:	f7fe bd8a 	b.w	d0042358 <main+0x338>
d0043844:	f7fe f928 	bl	d0041a98 <midi_send_gm_reset>
d0043848:	f7fe bd86 	b.w	d0042358 <main+0x338>
d004384c:	4603      	mov	r3, r0
d004384e:	490e      	ldr	r1, [pc, #56]	; (d0043888 <main+0x1868>)
d0043850:	f7fe bd39 	b.w	d00422c6 <main+0x2a6>
d0043854:	f000 fe2a 	bl	d00444ac <free>
d0043858:	e45d      	b.n	d0043116 <main+0x10f6>
d004385a:	bf00      	nop
d004385c:	d0046900 	.word	0xd0046900
d0043860:	d0046d9c 	.word	0xd0046d9c
d0043864:	d004692c 	.word	0xd004692c
d0043868:	d0046930 	.word	0xd0046930
d004386c:	d004693c 	.word	0xd004693c
d0043870:	d0046940 	.word	0xd0046940
d0043874:	d0047bc8 	.word	0xd0047bc8
d0043878:	0007a120 	.word	0x0007a120
d004387c:	d0046dac 	.word	0xd0046dac
d0043880:	d00464e8 	.word	0xd00464e8
d0043884:	d00404bd 	.word	0xd00404bd
d0043888:	d004643c 	.word	0xd004643c

d004388c <midi_limiter_steal_note>:
d004388c:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
d0043890:	2200      	movs	r2, #0
d0043892:	b082      	sub	sp, #8
d0043894:	f04f 34ff 	mov.w	r4, #4294967295	; 0xffffffff
d0043898:	4680      	mov	r8, r0
d004389a:	460b      	mov	r3, r1
d004389c:	4d24      	ldr	r5, [pc, #144]	; (d0043930 <midi_limiter_steal_note+0xa4>)
d004389e:	e003      	b.n	d00438a8 <midi_limiter_steal_note+0x1c>
d00438a0:	b214      	sxth	r4, r2
d00438a2:	3201      	adds	r2, #1
d00438a4:	2a40      	cmp	r2, #64	; 0x40
d00438a6:	d024      	beq.n	d00438f2 <midi_limiter_steal_note+0x66>
d00438a8:	eb05 00c2 	add.w	r0, r5, r2, lsl #3
d00438ac:	eb05 01c4 	add.w	r1, r5, r4, lsl #3
d00438b0:	79c6      	ldrb	r6, [r0, #7]
d00438b2:	2e00      	cmp	r6, #0
d00438b4:	d0f5      	beq.n	d00438a2 <midi_limiter_steal_note+0x16>
d00438b6:	1c66      	adds	r6, r4, #1
d00438b8:	d0f2      	beq.n	d00438a0 <midi_limiter_steal_note+0x14>
d00438ba:	790e      	ldrb	r6, [r1, #4]
d00438bc:	7907      	ldrb	r7, [r0, #4]
d00438be:	f1a6 0609 	sub.w	r6, r6, #9
d00438c2:	2f09      	cmp	r7, #9
d00438c4:	fab6 f686 	clz	r6, r6
d00438c8:	ea4f 1656 	mov.w	r6, r6, lsr #5
d00438cc:	d001      	beq.n	d00438d2 <midi_limiter_steal_note+0x46>
d00438ce:	2e00      	cmp	r6, #0
d00438d0:	d1e6      	bne.n	d00438a0 <midi_limiter_steal_note+0x14>
d00438d2:	f1a7 0709 	sub.w	r7, r7, #9
d00438d6:	fab7 f787 	clz	r7, r7
d00438da:	097f      	lsrs	r7, r7, #5
d00438dc:	42b7      	cmp	r7, r6
d00438de:	d1e0      	bne.n	d00438a2 <midi_limiter_steal_note+0x16>
d00438e0:	f855 0032 	ldr.w	r0, [r5, r2, lsl #3]
d00438e4:	f855 1034 	ldr.w	r1, [r5, r4, lsl #3]
d00438e8:	4288      	cmp	r0, r1
d00438ea:	d3d9      	bcc.n	d00438a0 <midi_limiter_steal_note+0x14>
d00438ec:	3201      	adds	r2, #1
d00438ee:	2a40      	cmp	r2, #64	; 0x40
d00438f0:	d1da      	bne.n	d00438a8 <midi_limiter_steal_note+0x1c>
d00438f2:	1c62      	adds	r2, r4, #1
d00438f4:	d017      	beq.n	d0043926 <midi_limiter_steal_note+0x9a>
d00438f6:	eb05 04c4 	add.w	r4, r5, r4, lsl #3
d00438fa:	2600      	movs	r6, #0
d00438fc:	2201      	movs	r2, #1
d00438fe:	2103      	movs	r1, #3
d0043900:	7925      	ldrb	r5, [r4, #4]
d0043902:	a801      	add	r0, sp, #4
d0043904:	7967      	ldrb	r7, [r4, #5]
d0043906:	f005 050f 	and.w	r5, r5, #15
d004390a:	f88d 6006 	strb.w	r6, [sp, #6]
d004390e:	f88d 7005 	strb.w	r7, [sp, #5]
d0043912:	f065 057f 	orn	r5, r5, #127	; 0x7f
d0043916:	f88d 5004 	strb.w	r5, [sp, #4]
d004391a:	47c0      	blx	r8
d004391c:	b118      	cbz	r0, d0043926 <midi_limiter_steal_note+0x9a>
d004391e:	71e6      	strb	r6, [r4, #7]
d0043920:	b002      	add	sp, #8
d0043922:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
d0043926:	2000      	movs	r0, #0
d0043928:	b002      	add	sp, #8
d004392a:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
d004392e:	bf00      	nop
d0043930:	d00479b8 	.word	0xd00479b8

d0043934 <midi_translator_profile_for_soundfont_index>:
d0043934:	b131      	cbz	r1, d0043944 <midi_translator_profile_for_soundfont_index+0x10>
d0043936:	280f      	cmp	r0, #15
d0043938:	d804      	bhi.n	d0043944 <midi_translator_profile_for_soundfont_index+0x10>
d004393a:	f100 0308 	add.w	r3, r0, #8
d004393e:	2001      	movs	r0, #1
d0043940:	700b      	strb	r3, [r1, #0]
d0043942:	4770      	bx	lr
d0043944:	2000      	movs	r0, #0
d0043946:	4770      	bx	lr

d0043948 <midi_translator_profile_soundfont_index>:
d0043948:	b139      	cbz	r1, d004395a <midi_translator_profile_soundfont_index+0x12>
d004394a:	f1a0 0308 	sub.w	r3, r0, #8
d004394e:	b2db      	uxtb	r3, r3
d0043950:	2b0f      	cmp	r3, #15
d0043952:	d802      	bhi.n	d004395a <midi_translator_profile_soundfont_index+0x12>
d0043954:	2001      	movs	r0, #1
d0043956:	700b      	strb	r3, [r1, #0]
d0043958:	4770      	bx	lr
d004395a:	2000      	movs	r0, #0
d004395c:	4770      	bx	lr
d004395e:	bf00      	nop

d0043960 <midi_translator_profile_name>:
d0043960:	3801      	subs	r0, #1
d0043962:	b2c0      	uxtb	r0, r0
d0043964:	2817      	cmp	r0, #23
d0043966:	d803      	bhi.n	d0043970 <midi_translator_profile_name+0x10>
d0043968:	4b02      	ldr	r3, [pc, #8]	; (d0043974 <midi_translator_profile_name+0x14>)
d004396a:	f853 0020 	ldr.w	r0, [r3, r0, lsl #2]
d004396e:	4770      	bx	lr
d0043970:	4801      	ldr	r0, [pc, #4]	; (d0043978 <midi_translator_profile_name+0x18>)
d0043972:	4770      	bx	lr
d0043974:	d0046194 	.word	0xd0046194
d0043978:	d0045aa8 	.word	0xd0045aa8

d004397c <midi_translator_reset_state>:
d004397c:	f44f 7200 	mov.w	r2, #512	; 0x200
d0043980:	2100      	movs	r1, #0
d0043982:	4804      	ldr	r0, [pc, #16]	; (d0043994 <midi_translator_reset_state+0x18>)
d0043984:	b508      	push	{r3, lr}
d0043986:	f000 fd99 	bl	d00444bc <memset>
d004398a:	4b03      	ldr	r3, [pc, #12]	; (d0043998 <midi_translator_reset_state+0x1c>)
d004398c:	2200      	movs	r2, #0
d004398e:	601a      	str	r2, [r3, #0]
d0043990:	bd08      	pop	{r3, pc}
d0043992:	bf00      	nop
d0043994:	d00479b8 	.word	0xd00479b8
d0043998:	d0047bb8 	.word	0xd0047bb8

d004399c <midi_translator_translate_voice_packet>:
d004399c:	b470      	push	{r4, r5, r6}
d004399e:	fab2 f482 	clz	r4, r2
d00439a2:	4603      	mov	r3, r0
d00439a4:	0964      	lsrs	r4, r4, #5
d00439a6:	2900      	cmp	r1, #0
d00439a8:	bf14      	ite	ne
d00439aa:	4620      	movne	r0, r4
d00439ac:	2001      	moveq	r0, #1
d00439ae:	b960      	cbnz	r0, d00439ca <midi_translator_translate_voice_packet+0x2e>
d00439b0:	7814      	ldrb	r4, [r2, #0]
d00439b2:	b154      	cbz	r4, d00439ca <midi_translator_translate_voice_packet+0x2e>
d00439b4:	2b02      	cmp	r3, #2
d00439b6:	d80b      	bhi.n	d00439d0 <midi_translator_translate_voice_packet+0x34>
d00439b8:	bb5b      	cbnz	r3, d0043a12 <midi_translator_translate_voice_packet+0x76>
d00439ba:	2001      	movs	r0, #1
d00439bc:	bc70      	pop	{r4, r5, r6}
d00439be:	4770      	bx	lr
d00439c0:	f044 0609 	orr.w	r6, r4, #9
d00439c4:	2cc0      	cmp	r4, #192	; 0xc0
d00439c6:	700e      	strb	r6, [r1, #0]
d00439c8:	d12f      	bne.n	d0043a2a <midi_translator_translate_voice_packet+0x8e>
d00439ca:	2000      	movs	r0, #0
d00439cc:	bc70      	pop	{r4, r5, r6}
d00439ce:	4770      	bx	lr
d00439d0:	2b18      	cmp	r3, #24
d00439d2:	d1f2      	bne.n	d00439ba <midi_translator_translate_voice_packet+0x1e>
d00439d4:	780b      	ldrb	r3, [r1, #0]
d00439d6:	f003 02f0 	and.w	r2, r3, #240	; 0xf0
d00439da:	f003 050f 	and.w	r5, r3, #15
d00439de:	2ac0      	cmp	r2, #192	; 0xc0
d00439e0:	d03d      	beq.n	d0043a5e <midi_translator_translate_voice_packet+0xc2>
d00439e2:	2ab0      	cmp	r2, #176	; 0xb0
d00439e4:	d045      	beq.n	d0043a72 <midi_translator_translate_voice_packet+0xd6>
d00439e6:	f003 00e0 	and.w	r0, r3, #224	; 0xe0
d00439ea:	2c02      	cmp	r4, #2
d00439ec:	f1a0 0080 	sub.w	r0, r0, #128	; 0x80
d00439f0:	fab0 f080 	clz	r0, r0
d00439f4:	ea4f 1050 	mov.w	r0, r0, lsr #5
d00439f8:	bf98      	it	ls
d00439fa:	2000      	movls	r0, #0
d00439fc:	2800      	cmp	r0, #0
d00439fe:	d17a      	bne.n	d0043af6 <midi_translator_translate_voice_packet+0x15a>
d0043a00:	2ad0      	cmp	r2, #208	; 0xd0
d0043a02:	bf18      	it	ne
d0043a04:	2aa0      	cmpne	r2, #160	; 0xa0
d0043a06:	bf0c      	ite	eq
d0043a08:	2201      	moveq	r2, #1
d0043a0a:	2200      	movne	r2, #0
d0043a0c:	f082 0001 	eor.w	r0, r2, #1
d0043a10:	e7dc      	b.n	d00439cc <midi_translator_translate_voice_packet+0x30>
d0043a12:	780b      	ldrb	r3, [r1, #0]
d0043a14:	f003 050f 	and.w	r5, r3, #15
d0043a18:	f003 04f0 	and.w	r4, r3, #240	; 0xf0
d0043a1c:	2d09      	cmp	r5, #9
d0043a1e:	d0cf      	beq.n	d00439c0 <midi_translator_translate_voice_packet+0x24>
d0043a20:	f023 0608 	bic.w	r6, r3, #8
d0043a24:	2cc0      	cmp	r4, #192	; 0xc0
d0043a26:	700e      	strb	r6, [r1, #0]
d0043a28:	d049      	beq.n	d0043abe <midi_translator_translate_voice_packet+0x122>
d0043a2a:	2cb0      	cmp	r4, #176	; 0xb0
d0043a2c:	d02f      	beq.n	d0043a8e <midi_translator_translate_voice_packet+0xf2>
d0043a2e:	f003 03e0 	and.w	r3, r3, #224	; 0xe0
d0043a32:	2b80      	cmp	r3, #128	; 0x80
d0043a34:	d10e      	bne.n	d0043a54 <midi_translator_translate_voice_packet+0xb8>
d0043a36:	7813      	ldrb	r3, [r2, #0]
d0043a38:	2b02      	cmp	r3, #2
d0043a3a:	d90b      	bls.n	d0043a54 <midi_translator_translate_voice_packet+0xb8>
d0043a3c:	784b      	ldrb	r3, [r1, #1]
d0043a3e:	2d09      	cmp	r5, #9
d0043a40:	f003 037f 	and.w	r3, r3, #127	; 0x7f
d0043a44:	704b      	strb	r3, [r1, #1]
d0043a46:	f000 8082 	beq.w	d0043b4e <midi_translator_translate_voice_packet+0x1b2>
d0043a4a:	2b0b      	cmp	r3, #11
d0043a4c:	d870      	bhi.n	d0043b30 <midi_translator_translate_voice_packet+0x194>
d0043a4e:	330c      	adds	r3, #12
d0043a50:	704b      	strb	r3, [r1, #1]
d0043a52:	e7b2      	b.n	d00439ba <midi_translator_translate_voice_packet+0x1e>
d0043a54:	f1b4 00a0 	subs.w	r0, r4, #160	; 0xa0
d0043a58:	bf18      	it	ne
d0043a5a:	2001      	movne	r0, #1
d0043a5c:	e7b6      	b.n	d00439cc <midi_translator_translate_voice_packet+0x30>
d0043a5e:	2d09      	cmp	r5, #9
d0043a60:	784b      	ldrb	r3, [r1, #1]
d0043a62:	d072      	beq.n	d0043b4a <midi_translator_translate_voice_packet+0x1ae>
d0043a64:	f003 037f 	and.w	r3, r3, #127	; 0x7f
d0043a68:	4a3d      	ldr	r2, [pc, #244]	; (d0043b60 <midi_translator_translate_voice_packet+0x1c4>)
d0043a6a:	5cd3      	ldrb	r3, [r2, r3]
d0043a6c:	2001      	movs	r0, #1
d0043a6e:	704b      	strb	r3, [r1, #1]
d0043a70:	e7ac      	b.n	d00439cc <midi_translator_translate_voice_packet+0x30>
d0043a72:	784b      	ldrb	r3, [r1, #1]
d0043a74:	2b0a      	cmp	r3, #10
d0043a76:	d0a8      	beq.n	d00439ca <midi_translator_translate_voice_packet+0x2e>
d0043a78:	2b5b      	cmp	r3, #91	; 0x5b
d0043a7a:	d09e      	beq.n	d00439ba <midi_translator_translate_voice_packet+0x1e>
d0043a7c:	d831      	bhi.n	d0043ae2 <midi_translator_translate_voice_packet+0x146>
d0043a7e:	2b07      	cmp	r3, #7
d0043a80:	d09b      	beq.n	d00439ba <midi_translator_translate_voice_packet+0x1e>
d0043a82:	2b40      	cmp	r3, #64	; 0x40
d0043a84:	d099      	beq.n	d00439ba <midi_translator_translate_voice_packet+0x1e>
d0043a86:	2b01      	cmp	r3, #1
d0043a88:	bf08      	it	eq
d0043a8a:	2001      	moveq	r0, #1
d0043a8c:	e79e      	b.n	d00439cc <midi_translator_translate_voice_packet+0x30>
d0043a8e:	784d      	ldrb	r5, [r1, #1]
d0043a90:	2d40      	cmp	r5, #64	; 0x40
d0043a92:	d092      	beq.n	d00439ba <midi_translator_translate_voice_packet+0x1e>
d0043a94:	d81b      	bhi.n	d0043ace <midi_translator_translate_voice_packet+0x132>
d0043a96:	1e6b      	subs	r3, r5, #1
d0043a98:	b2db      	uxtb	r3, r3
d0043a9a:	2b0a      	cmp	r3, #10
d0043a9c:	d896      	bhi.n	d00439cc <midi_translator_translate_voice_packet+0x30>
d0043a9e:	2201      	movs	r2, #1
d0043aa0:	f240 6441 	movw	r4, #1601	; 0x641
d0043aa4:	fa02 f303 	lsl.w	r3, r2, r3
d0043aa8:	4223      	tst	r3, r4
d0043aaa:	d08f      	beq.n	d00439cc <midi_translator_translate_voice_packet+0x30>
d0043aac:	2d0a      	cmp	r5, #10
d0043aae:	d184      	bne.n	d00439ba <midi_translator_translate_voice_packet+0x1e>
d0043ab0:	788b      	ldrb	r3, [r1, #2]
d0043ab2:	4610      	mov	r0, r2
d0043ab4:	43db      	mvns	r3, r3
d0043ab6:	f003 037f 	and.w	r3, r3, #127	; 0x7f
d0043aba:	708b      	strb	r3, [r1, #2]
d0043abc:	e786      	b.n	d00439cc <midi_translator_translate_voice_packet+0x30>
d0043abe:	784b      	ldrb	r3, [r1, #1]
d0043ac0:	2001      	movs	r0, #1
d0043ac2:	4a28      	ldr	r2, [pc, #160]	; (d0043b64 <midi_translator_translate_voice_packet+0x1c8>)
d0043ac4:	f003 037f 	and.w	r3, r3, #127	; 0x7f
d0043ac8:	5cd3      	ldrb	r3, [r2, r3]
d0043aca:	704b      	strb	r3, [r1, #1]
d0043acc:	e77e      	b.n	d00439cc <midi_translator_translate_voice_packet+0x30>
d0043ace:	2d79      	cmp	r5, #121	; 0x79
d0043ad0:	d803      	bhi.n	d0043ada <midi_translator_translate_voice_packet+0x13e>
d0043ad2:	2d77      	cmp	r5, #119	; 0x77
d0043ad4:	f67f af7a 	bls.w	d00439cc <midi_translator_translate_voice_packet+0x30>
d0043ad8:	e76f      	b.n	d00439ba <midi_translator_translate_voice_packet+0x1e>
d0043ada:	2d7b      	cmp	r5, #123	; 0x7b
d0043adc:	f47f af76 	bne.w	d00439cc <midi_translator_translate_voice_packet+0x30>
d0043ae0:	e76b      	b.n	d00439ba <midi_translator_translate_voice_packet+0x1e>
d0043ae2:	2b79      	cmp	r3, #121	; 0x79
d0043ae4:	d803      	bhi.n	d0043aee <midi_translator_translate_voice_packet+0x152>
d0043ae6:	2b78      	cmp	r3, #120	; 0x78
d0043ae8:	bf28      	it	cs
d0043aea:	2001      	movcs	r0, #1
d0043aec:	e76e      	b.n	d00439cc <midi_translator_translate_voice_packet+0x30>
d0043aee:	2b7b      	cmp	r3, #123	; 0x7b
d0043af0:	bf08      	it	eq
d0043af2:	2001      	moveq	r0, #1
d0043af4:	e76a      	b.n	d00439cc <midi_translator_translate_voice_packet+0x30>
d0043af6:	784b      	ldrb	r3, [r1, #1]
d0043af8:	2d09      	cmp	r5, #9
d0043afa:	f003 037f 	and.w	r3, r3, #127	; 0x7f
d0043afe:	d0e4      	beq.n	d0043aca <midi_translator_translate_voice_packet+0x12e>
d0043b00:	f103 020c 	add.w	r2, r3, #12
d0043b04:	2a23      	cmp	r2, #35	; 0x23
d0043b06:	d806      	bhi.n	d0043b16 <midi_translator_translate_voice_packet+0x17a>
d0043b08:	f103 0218 	add.w	r2, r3, #24
d0043b0c:	2a23      	cmp	r2, #35	; 0x23
d0043b0e:	d824      	bhi.n	d0043b5a <midi_translator_translate_voice_packet+0x1be>
d0043b10:	3324      	adds	r3, #36	; 0x24
d0043b12:	704b      	strb	r3, [r1, #1]
d0043b14:	e75a      	b.n	d00439cc <midi_translator_translate_voice_packet+0x30>
d0043b16:	2a67      	cmp	r2, #103	; 0x67
d0043b18:	d91f      	bls.n	d0043b5a <midi_translator_translate_voice_packet+0x1be>
d0043b1a:	2b67      	cmp	r3, #103	; 0x67
d0043b1c:	d9d5      	bls.n	d0043aca <midi_translator_translate_voice_packet+0x12e>
d0043b1e:	f1a3 020c 	sub.w	r2, r3, #12
d0043b22:	b2d2      	uxtb	r2, r2
d0043b24:	2a67      	cmp	r2, #103	; 0x67
d0043b26:	d918      	bls.n	d0043b5a <midi_translator_translate_voice_packet+0x1be>
d0043b28:	3b18      	subs	r3, #24
d0043b2a:	b2db      	uxtb	r3, r3
d0043b2c:	704b      	strb	r3, [r1, #1]
d0043b2e:	e74d      	b.n	d00439cc <midi_translator_translate_voice_packet+0x30>
d0043b30:	2b6c      	cmp	r3, #108	; 0x6c
d0043b32:	f67f af42 	bls.w	d00439ba <midi_translator_translate_voice_packet+0x1e>
d0043b36:	f1a3 020c 	sub.w	r2, r3, #12
d0043b3a:	b2d2      	uxtb	r2, r2
d0043b3c:	2a6c      	cmp	r2, #108	; 0x6c
d0043b3e:	d901      	bls.n	d0043b44 <midi_translator_translate_voice_packet+0x1a8>
d0043b40:	3b18      	subs	r3, #24
d0043b42:	b2da      	uxtb	r2, r3
d0043b44:	2001      	movs	r0, #1
d0043b46:	704a      	strb	r2, [r1, #1]
d0043b48:	e740      	b.n	d00439cc <midi_translator_translate_voice_packet+0x30>
d0043b4a:	2363      	movs	r3, #99	; 0x63
d0043b4c:	e78e      	b.n	d0043a6c <midi_translator_translate_voice_packet+0xd0>
d0043b4e:	4a06      	ldr	r2, [pc, #24]	; (d0043b68 <midi_translator_translate_voice_packet+0x1cc>)
d0043b50:	5cd3      	ldrb	r3, [r2, r3]
d0043b52:	2b00      	cmp	r3, #0
d0043b54:	f43f af39 	beq.w	d00439ca <midi_translator_translate_voice_packet+0x2e>
d0043b58:	e788      	b.n	d0043a6c <midi_translator_translate_voice_packet+0xd0>
d0043b5a:	4613      	mov	r3, r2
d0043b5c:	704b      	strb	r3, [r1, #1]
d0043b5e:	e735      	b.n	d00439cc <midi_translator_translate_voice_packet+0x30>
d0043b60:	d004631c 	.word	0xd004631c
d0043b64:	d004629c 	.word	0xd004629c
d0043b68:	d004621c 	.word	0xd004621c

d0043b6c <midi_translator_send_voice_packet>:
d0043b6c:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0043b70:	461d      	mov	r5, r3
d0043b72:	b083      	sub	sp, #12
d0043b74:	2d00      	cmp	r5, #0
d0043b76:	bf18      	it	ne
d0043b78:	2a00      	cmpne	r2, #0
d0043b7a:	9b0c      	ldr	r3, [sp, #48]	; 0x30
d0043b7c:	d055      	beq.n	d0043c2a <midi_translator_send_voice_packet+0xbe>
d0043b7e:	460c      	mov	r4, r1
d0043b80:	fab1 f181 	clz	r1, r1
d0043b84:	0949      	lsrs	r1, r1, #5
d0043b86:	2c00      	cmp	r4, #0
d0043b88:	d04f      	beq.n	d0043c2a <midi_translator_send_voice_packet+0xbe>
d0043b8a:	2818      	cmp	r0, #24
d0043b8c:	d157      	bne.n	d0043c3e <midi_translator_send_voice_packet+0xd2>
d0043b8e:	7826      	ldrb	r6, [r4, #0]
d0043b90:	2a02      	cmp	r2, #2
d0043b92:	f006 00f0 	and.w	r0, r6, #240	; 0xf0
d0043b96:	bf94      	ite	ls
d0043b98:	2700      	movls	r7, #0
d0043b9a:	2701      	movhi	r7, #1
d0043b9c:	f006 060f 	and.w	r6, r6, #15
d0043ba0:	2890      	cmp	r0, #144	; 0x90
d0043ba2:	d146      	bne.n	d0043c32 <midi_translator_send_voice_packet+0xc6>
d0043ba4:	2f00      	cmp	r7, #0
d0043ba6:	d044      	beq.n	d0043c32 <midi_translator_send_voice_packet+0xc6>
d0043ba8:	f894 a002 	ldrb.w	sl, [r4, #2]
d0043bac:	f1ba 0f00 	cmp.w	sl, #0
d0043bb0:	d16b      	bne.n	d0043c8a <midi_translator_send_voice_packet+0x11e>
d0043bb2:	4611      	mov	r1, r2
d0043bb4:	4620      	mov	r0, r4
d0043bb6:	2201      	movs	r2, #1
d0043bb8:	47a8      	blx	r5
d0043bba:	2800      	cmp	r0, #0
d0043bbc:	d035      	beq.n	d0043c2a <midi_translator_send_voice_packet+0xbe>
d0043bbe:	7864      	ldrb	r4, [r4, #1]
d0043bc0:	2200      	movs	r2, #0
d0043bc2:	f8df 81bc 	ldr.w	r8, [pc, #444]	; d0043d80 <midi_translator_send_voice_packet+0x214>
d0043bc6:	f004 047f 	and.w	r4, r4, #127	; 0x7f
d0043bca:	4643      	mov	r3, r8
d0043bcc:	e003      	b.n	d0043bd6 <midi_translator_send_voice_packet+0x6a>
d0043bce:	3201      	adds	r2, #1
d0043bd0:	3308      	adds	r3, #8
d0043bd2:	2a40      	cmp	r2, #64	; 0x40
d0043bd4:	d057      	beq.n	d0043c86 <midi_translator_send_voice_packet+0x11a>
d0043bd6:	79d8      	ldrb	r0, [r3, #7]
d0043bd8:	2800      	cmp	r0, #0
d0043bda:	d0f8      	beq.n	d0043bce <midi_translator_send_voice_packet+0x62>
d0043bdc:	7919      	ldrb	r1, [r3, #4]
d0043bde:	42b1      	cmp	r1, r6
d0043be0:	d1f5      	bne.n	d0043bce <midi_translator_send_voice_packet+0x62>
d0043be2:	7959      	ldrb	r1, [r3, #5]
d0043be4:	42a1      	cmp	r1, r4
d0043be6:	d1f2      	bne.n	d0043bce <midi_translator_send_voice_packet+0x62>
d0043be8:	eb08 02c2 	add.w	r2, r8, r2, lsl #3
d0043bec:	2300      	movs	r3, #0
d0043bee:	71d3      	strb	r3, [r2, #7]
d0043bf0:	e01c      	b.n	d0043c2c <midi_translator_send_voice_packet+0xc0>
d0043bf2:	f507 7b00 	add.w	fp, r7, #512	; 0x200
d0043bf6:	4638      	mov	r0, r7
d0043bf8:	2100      	movs	r1, #0
d0043bfa:	f890 e007 	ldrb.w	lr, [r0, #7]
d0043bfe:	f101 0c01 	add.w	ip, r1, #1
d0043c02:	3008      	adds	r0, #8
d0043c04:	f1be 0f00 	cmp.w	lr, #0
d0043c08:	d001      	beq.n	d0043c0e <midi_translator_send_voice_packet+0xa2>
d0043c0a:	fa5f f18c 	uxtb.w	r1, ip
d0043c0e:	4558      	cmp	r0, fp
d0043c10:	d1f3      	bne.n	d0043bfa <midi_translator_send_voice_packet+0x8e>
d0043c12:	2917      	cmp	r1, #23
d0043c14:	d97c      	bls.n	d0043d10 <midi_translator_send_voice_packet+0x1a4>
d0043c16:	4619      	mov	r1, r3
d0043c18:	4628      	mov	r0, r5
d0043c1a:	9201      	str	r2, [sp, #4]
d0043c1c:	9300      	str	r3, [sp, #0]
d0043c1e:	f7ff fe35 	bl	d004388c <midi_limiter_steal_note>
d0043c22:	9b00      	ldr	r3, [sp, #0]
d0043c24:	9a01      	ldr	r2, [sp, #4]
d0043c26:	2800      	cmp	r0, #0
d0043c28:	d1e5      	bne.n	d0043bf6 <midi_translator_send_voice_packet+0x8a>
d0043c2a:	2000      	movs	r0, #0
d0043c2c:	b003      	add	sp, #12
d0043c2e:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0043c32:	2880      	cmp	r0, #128	; 0x80
d0043c34:	d101      	bne.n	d0043c3a <midi_translator_send_voice_packet+0xce>
d0043c36:	2f00      	cmp	r7, #0
d0043c38:	d1bb      	bne.n	d0043bb2 <midi_translator_send_voice_packet+0x46>
d0043c3a:	28b0      	cmp	r0, #176	; 0xb0
d0043c3c:	d007      	beq.n	d0043c4e <midi_translator_send_voice_packet+0xe2>
d0043c3e:	4611      	mov	r1, r2
d0043c40:	4620      	mov	r0, r4
d0043c42:	2200      	movs	r2, #0
d0043c44:	46ac      	mov	ip, r5
d0043c46:	b003      	add	sp, #12
d0043c48:	e8bd 4ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0043c4c:	4760      	bx	ip
d0043c4e:	2f00      	cmp	r7, #0
d0043c50:	d0f5      	beq.n	d0043c3e <midi_translator_send_voice_packet+0xd2>
d0043c52:	7861      	ldrb	r1, [r4, #1]
d0043c54:	f1a1 0078 	sub.w	r0, r1, #120	; 0x78
d0043c58:	2801      	cmp	r0, #1
d0043c5a:	d901      	bls.n	d0043c60 <midi_translator_send_voice_packet+0xf4>
d0043c5c:	297b      	cmp	r1, #123	; 0x7b
d0043c5e:	d1ee      	bne.n	d0043c3e <midi_translator_send_voice_packet+0xd2>
d0043c60:	4611      	mov	r1, r2
d0043c62:	4620      	mov	r0, r4
d0043c64:	2201      	movs	r2, #1
d0043c66:	47a8      	blx	r5
d0043c68:	2800      	cmp	r0, #0
d0043c6a:	d0de      	beq.n	d0043c2a <midi_translator_send_voice_packet+0xbe>
d0043c6c:	4b44      	ldr	r3, [pc, #272]	; (d0043d80 <midi_translator_send_voice_packet+0x214>)
d0043c6e:	2000      	movs	r0, #0
d0043c70:	f503 7100 	add.w	r1, r3, #512	; 0x200
d0043c74:	79da      	ldrb	r2, [r3, #7]
d0043c76:	b11a      	cbz	r2, d0043c80 <midi_translator_send_voice_packet+0x114>
d0043c78:	791a      	ldrb	r2, [r3, #4]
d0043c7a:	42b2      	cmp	r2, r6
d0043c7c:	bf08      	it	eq
d0043c7e:	71d8      	strbeq	r0, [r3, #7]
d0043c80:	3308      	adds	r3, #8
d0043c82:	4299      	cmp	r1, r3
d0043c84:	d1f6      	bne.n	d0043c74 <midi_translator_send_voice_packet+0x108>
d0043c86:	2001      	movs	r0, #1
d0043c88:	e7d0      	b.n	d0043c2c <midi_translator_send_voice_packet+0xc0>
d0043c8a:	4f3d      	ldr	r7, [pc, #244]	; (d0043d80 <midi_translator_send_voice_packet+0x214>)
d0043c8c:	f894 9001 	ldrb.w	r9, [r4, #1]
d0043c90:	46b8      	mov	r8, r7
d0043c92:	4638      	mov	r0, r7
d0043c94:	f009 097f 	and.w	r9, r9, #127	; 0x7f
d0043c98:	e003      	b.n	d0043ca2 <midi_translator_send_voice_packet+0x136>
d0043c9a:	3101      	adds	r1, #1
d0043c9c:	3008      	adds	r0, #8
d0043c9e:	2940      	cmp	r1, #64	; 0x40
d0043ca0:	d0a7      	beq.n	d0043bf2 <midi_translator_send_voice_packet+0x86>
d0043ca2:	f890 c007 	ldrb.w	ip, [r0, #7]
d0043ca6:	f1bc 0f00 	cmp.w	ip, #0
d0043caa:	d0f6      	beq.n	d0043c9a <midi_translator_send_voice_packet+0x12e>
d0043cac:	f890 c004 	ldrb.w	ip, [r0, #4]
d0043cb0:	45b4      	cmp	ip, r6
d0043cb2:	d1f2      	bne.n	d0043c9a <midi_translator_send_voice_packet+0x12e>
d0043cb4:	f890 c005 	ldrb.w	ip, [r0, #5]
d0043cb8:	45cc      	cmp	ip, r9
d0043cba:	d1ee      	bne.n	d0043c9a <midi_translator_send_voice_packet+0x12e>
d0043cbc:	f8df c0c4 	ldr.w	ip, [pc, #196]	; d0043d84 <midi_translator_send_voice_packet+0x218>
d0043cc0:	eb08 0ec1 	add.w	lr, r8, r1, lsl #3
d0043cc4:	f8dc 0000 	ldr.w	r0, [ip]
d0043cc8:	f88e a006 	strb.w	sl, [lr, #6]
d0043ccc:	3001      	adds	r0, #1
d0043cce:	f8cc 0000 	str.w	r0, [ip]
d0043cd2:	f848 0031 	str.w	r0, [r8, r1, lsl #3]
d0043cd6:	4611      	mov	r1, r2
d0043cd8:	4620      	mov	r0, r4
d0043cda:	2200      	movs	r2, #0
d0043cdc:	47a8      	blx	r5
d0043cde:	2800      	cmp	r0, #0
d0043ce0:	d1d1      	bne.n	d0043c86 <midi_translator_send_voice_packet+0x11a>
d0043ce2:	7861      	ldrb	r1, [r4, #1]
d0043ce4:	4603      	mov	r3, r0
d0043ce6:	f001 017f 	and.w	r1, r1, #127	; 0x7f
d0043cea:	e003      	b.n	d0043cf4 <midi_translator_send_voice_packet+0x188>
d0043cec:	3301      	adds	r3, #1
d0043cee:	3708      	adds	r7, #8
d0043cf0:	2b40      	cmp	r3, #64	; 0x40
d0043cf2:	d09a      	beq.n	d0043c2a <midi_translator_send_voice_packet+0xbe>
d0043cf4:	79fa      	ldrb	r2, [r7, #7]
d0043cf6:	2a00      	cmp	r2, #0
d0043cf8:	d0f8      	beq.n	d0043cec <midi_translator_send_voice_packet+0x180>
d0043cfa:	793a      	ldrb	r2, [r7, #4]
d0043cfc:	42b2      	cmp	r2, r6
d0043cfe:	d1f5      	bne.n	d0043cec <midi_translator_send_voice_packet+0x180>
d0043d00:	797a      	ldrb	r2, [r7, #5]
d0043d02:	428a      	cmp	r2, r1
d0043d04:	d1f2      	bne.n	d0043cec <midi_translator_send_voice_packet+0x180>
d0043d06:	eb08 03c3 	add.w	r3, r8, r3, lsl #3
d0043d0a:	2200      	movs	r2, #0
d0043d0c:	71da      	strb	r2, [r3, #7]
d0043d0e:	e78d      	b.n	d0043c2c <midi_translator_send_voice_packet+0xc0>
d0043d10:	2100      	movs	r1, #0
d0043d12:	e002      	b.n	d0043d1a <midi_translator_send_voice_packet+0x1ae>
d0043d14:	3101      	adds	r1, #1
d0043d16:	2940      	cmp	r1, #64	; 0x40
d0043d18:	d01b      	beq.n	d0043d52 <midi_translator_send_voice_packet+0x1e6>
d0043d1a:	eb08 00c1 	add.w	r0, r8, r1, lsl #3
d0043d1e:	79c0      	ldrb	r0, [r0, #7]
d0043d20:	2800      	cmp	r0, #0
d0043d22:	d1f7      	bne.n	d0043d14 <midi_translator_send_voice_packet+0x1a8>
d0043d24:	f8df e05c 	ldr.w	lr, [pc, #92]	; d0043d84 <midi_translator_send_voice_packet+0x218>
d0043d28:	b209      	sxth	r1, r1
d0043d2a:	f04f 0b01 	mov.w	fp, #1
d0043d2e:	f8de 0000 	ldr.w	r0, [lr]
d0043d32:	eb08 0cc1 	add.w	ip, r8, r1, lsl #3
d0043d36:	4458      	add	r0, fp
d0043d38:	f88c 6004 	strb.w	r6, [ip, #4]
d0043d3c:	f88c 9005 	strb.w	r9, [ip, #5]
d0043d40:	f88c a006 	strb.w	sl, [ip, #6]
d0043d44:	f8ce 0000 	str.w	r0, [lr]
d0043d48:	f848 0031 	str.w	r0, [r8, r1, lsl #3]
d0043d4c:	f88c b007 	strb.w	fp, [ip, #7]
d0043d50:	e7c1      	b.n	d0043cd6 <midi_translator_send_voice_packet+0x16a>
d0043d52:	4619      	mov	r1, r3
d0043d54:	4628      	mov	r0, r5
d0043d56:	9201      	str	r2, [sp, #4]
d0043d58:	9300      	str	r3, [sp, #0]
d0043d5a:	f7ff fd97 	bl	d004388c <midi_limiter_steal_note>
d0043d5e:	9b00      	ldr	r3, [sp, #0]
d0043d60:	9a01      	ldr	r2, [sp, #4]
d0043d62:	2800      	cmp	r0, #0
d0043d64:	f43f af61 	beq.w	d0043c2a <midi_translator_send_voice_packet+0xbe>
d0043d68:	2100      	movs	r1, #0
d0043d6a:	e003      	b.n	d0043d74 <midi_translator_send_voice_packet+0x208>
d0043d6c:	3101      	adds	r1, #1
d0043d6e:	2940      	cmp	r1, #64	; 0x40
d0043d70:	f43f af5b 	beq.w	d0043c2a <midi_translator_send_voice_packet+0xbe>
d0043d74:	eb08 00c1 	add.w	r0, r8, r1, lsl #3
d0043d78:	79c0      	ldrb	r0, [r0, #7]
d0043d7a:	2800      	cmp	r0, #0
d0043d7c:	d1f6      	bne.n	d0043d6c <midi_translator_send_voice_packet+0x200>
d0043d7e:	e7d1      	b.n	d0043d24 <midi_translator_send_voice_packet+0x1b8>
d0043d80:	d00479b8 	.word	0xd00479b8
d0043d84:	d0047bb8 	.word	0xd0047bb8

d0043d88 <midi_translator_accepts_sysex>:
d0043d88:	b430      	push	{r4, r5}
d0043d8a:	1ec4      	subs	r4, r0, #3
d0043d8c:	2800      	cmp	r0, #0
d0043d8e:	bf18      	it	ne
d0043d90:	2c14      	cmpne	r4, #20
d0043d92:	bf94      	ite	ls
d0043d94:	2501      	movls	r5, #1
d0043d96:	2500      	movhi	r5, #0
d0043d98:	d912      	bls.n	d0043dc0 <midi_translator_accepts_sysex+0x38>
d0043d9a:	1e44      	subs	r4, r0, #1
d0043d9c:	2c01      	cmp	r4, #1
d0043d9e:	d80f      	bhi.n	d0043dc0 <midi_translator_accepts_sysex+0x38>
d0043da0:	fab2 f082 	clz	r0, r2
d0043da4:	0940      	lsrs	r0, r0, #5
d0043da6:	29f0      	cmp	r1, #240	; 0xf0
d0043da8:	bf0c      	ite	eq
d0043daa:	4601      	moveq	r1, r0
d0043dac:	f040 0101 	orrne.w	r1, r0, #1
d0043db0:	b931      	cbnz	r1, d0043dc0 <midi_translator_accepts_sysex+0x38>
d0043db2:	b12b      	cbz	r3, d0043dc0 <midi_translator_accepts_sysex+0x38>
d0043db4:	7814      	ldrb	r4, [r2, #0]
d0043db6:	f1a4 0541 	sub.w	r5, r4, #65	; 0x41
d0043dba:	fab5 f585 	clz	r5, r5
d0043dbe:	096d      	lsrs	r5, r5, #5
d0043dc0:	4628      	mov	r0, r5
d0043dc2:	bc30      	pop	{r4, r5}
d0043dc4:	4770      	bx	lr
d0043dc6:	bf00      	nop

d0043dc8 <midi_translator_uses_soundfont>:
d0043dc8:	3803      	subs	r0, #3
d0043dca:	2814      	cmp	r0, #20
d0043dcc:	bf8c      	ite	hi
d0043dce:	2000      	movhi	r0, #0
d0043dd0:	2001      	movls	r0, #1
d0043dd2:	4770      	bx	lr

d0043dd4 <midi_translator_send_setup_burst>:
d0043dd4:	2900      	cmp	r1, #0
d0043dd6:	f000 80db 	beq.w	d0043f90 <midi_translator_send_setup_burst+0x1bc>
d0043dda:	1e43      	subs	r3, r0, #1
d0043ddc:	2b01      	cmp	r3, #1
d0043dde:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0043de2:	4681      	mov	r9, r0
d0043de4:	460c      	mov	r4, r1
d0043de6:	4615      	mov	r5, r2
d0043de8:	ed2d 8b04 	vpush	{d8-d9}
d0043dec:	b089      	sub	sp, #36	; 0x24
d0043dee:	d947      	bls.n	d0043e80 <midi_translator_send_setup_burst+0xac>
d0043df0:	1ec3      	subs	r3, r0, #3
d0043df2:	2b04      	cmp	r3, #4
d0043df4:	d815      	bhi.n	d0043e22 <midi_translator_send_setup_burst+0x4e>
d0043df6:	f1a9 0904 	sub.w	r9, r9, #4
d0043dfa:	49a8      	ldr	r1, [pc, #672]	; (d004409c <midi_translator_send_setup_burst+0x2c8>)
d0043dfc:	f10d 0818 	add.w	r8, sp, #24
d0043e00:	26f7      	movs	r6, #247	; 0xf7
d0043e02:	fa5f f989 	uxtb.w	r9, r9
d0043e06:	4613      	mov	r3, r2
d0043e08:	9106      	str	r1, [sp, #24]
d0043e0a:	4640      	mov	r0, r8
d0043e0c:	2200      	movs	r2, #0
d0043e0e:	2105      	movs	r1, #5
d0043e10:	f88d 601c 	strb.w	r6, [sp, #28]
d0043e14:	47a0      	blx	r4
d0043e16:	f1b9 0f03 	cmp.w	r9, #3
d0043e1a:	f240 813b 	bls.w	d0044094 <midi_translator_send_setup_burst+0x2c0>
d0043e1e:	2604      	movs	r6, #4
d0043e20:	e010      	b.n	d0043e44 <midi_translator_send_setup_burst+0x70>
d0043e22:	f1a0 0608 	sub.w	r6, r0, #8
d0043e26:	b2f6      	uxtb	r6, r6
d0043e28:	2e0f      	cmp	r6, #15
d0043e2a:	d821      	bhi.n	d0043e70 <midi_translator_send_setup_burst+0x9c>
d0043e2c:	499b      	ldr	r1, [pc, #620]	; (d004409c <midi_translator_send_setup_burst+0x2c8>)
d0043e2e:	f10d 0818 	add.w	r8, sp, #24
d0043e32:	27f7      	movs	r7, #247	; 0xf7
d0043e34:	4613      	mov	r3, r2
d0043e36:	9106      	str	r1, [sp, #24]
d0043e38:	4640      	mov	r0, r8
d0043e3a:	2200      	movs	r2, #0
d0043e3c:	2105      	movs	r1, #5
d0043e3e:	f88d 701c 	strb.w	r7, [sp, #28]
d0043e42:	47a0      	blx	r4
d0043e44:	f647 52f0 	movw	r2, #32240	; 0x7df0
d0043e48:	2102      	movs	r1, #2
d0043e4a:	462b      	mov	r3, r5
d0043e4c:	25f7      	movs	r5, #247	; 0xf7
d0043e4e:	f8ad 2018 	strh.w	r2, [sp, #24]
d0043e52:	2200      	movs	r2, #0
d0043e54:	f88d 101a 	strb.w	r1, [sp, #26]
d0043e58:	2105      	movs	r1, #5
d0043e5a:	4640      	mov	r0, r8
d0043e5c:	f88d 601b 	strb.w	r6, [sp, #27]
d0043e60:	f88d 501c 	strb.w	r5, [sp, #28]
d0043e64:	47a0      	blx	r4
d0043e66:	b009      	add	sp, #36	; 0x24
d0043e68:	ecbd 8b04 	vpop	{d8-d9}
d0043e6c:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0043e70:	2818      	cmp	r0, #24
d0043e72:	f000 808e 	beq.w	d0043f92 <midi_translator_send_setup_burst+0x1be>
d0043e76:	b009      	add	sp, #36	; 0x24
d0043e78:	ecbd 8b04 	vpop	{d8-d9}
d0043e7c:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0043e80:	f04f 0b00 	mov.w	fp, #0
d0043e84:	f8df e228 	ldr.w	lr, [pc, #552]	; d00440b0 <midi_translator_send_setup_burst+0x2dc>
d0043e88:	f04f 0cf7 	mov.w	ip, #247	; 0xf7
d0043e8c:	4a84      	ldr	r2, [pc, #528]	; (d00440a0 <midi_translator_send_setup_burst+0x2cc>)
d0043e8e:	4b85      	ldr	r3, [pc, #532]	; (d00440a4 <midi_translator_send_setup_burst+0x2d0>)
d0043e90:	f10d 0818 	add.w	r8, sp, #24
d0043e94:	2105      	movs	r1, #5
d0043e96:	f8cd e018 	str.w	lr, [sp, #24]
d0043e9a:	2802      	cmp	r0, #2
d0043e9c:	bf0c      	ite	eq
d0043e9e:	4691      	moveq	r9, r2
d0043ea0:	4699      	movne	r9, r3
d0043ea2:	f88d c01c 	strb.w	ip, [sp, #28]
d0043ea6:	462b      	mov	r3, r5
d0043ea8:	465a      	mov	r2, fp
d0043eaa:	4640      	mov	r0, r8
d0043eac:	ae02      	add	r6, sp, #8
d0043eae:	47a0      	blx	r4
d0043eb0:	aa03      	add	r2, sp, #12
d0043eb2:	462b      	mov	r3, r5
d0043eb4:	4648      	mov	r0, r9
d0043eb6:	ee08 2a90 	vmov	s17, r2
d0043eba:	2113      	movs	r1, #19
d0043ebc:	465a      	mov	r2, fp
d0043ebe:	ee08 6a10 	vmov	s16, r6
d0043ec2:	47a0      	blx	r4
d0043ec4:	ab04      	add	r3, sp, #16
d0043ec6:	465f      	mov	r7, fp
d0043ec8:	f10d 0a04 	add.w	sl, sp, #4
d0043ecc:	ee09 3a10 	vmov	s18, r3
d0043ed0:	f10d 0914 	add.w	r9, sp, #20
d0043ed4:	465e      	mov	r6, fp
d0043ed6:	f066 0e4f 	orn	lr, r6, #79	; 0x4f
d0043eda:	f04f 0079 	mov.w	r0, #121	; 0x79
d0043ede:	f04f 0c40 	mov.w	ip, #64	; 0x40
d0043ee2:	2364      	movs	r3, #100	; 0x64
d0043ee4:	fa5f fe8e 	uxtb.w	lr, lr
d0043ee8:	220b      	movs	r2, #11
d0043eea:	217f      	movs	r1, #127	; 0x7f
d0043eec:	f88d 0005 	strb.w	r0, [sp, #5]
d0043ef0:	f88d e004 	strb.w	lr, [sp, #4]
d0043ef4:	200a      	movs	r0, #10
d0043ef6:	f88d e008 	strb.w	lr, [sp, #8]
d0043efa:	f04f 0b07 	mov.w	fp, #7
d0043efe:	f88d e00c 	strb.w	lr, [sp, #12]
d0043f02:	3601      	adds	r6, #1
d0043f04:	f88d e010 	strb.w	lr, [sp, #16]
d0043f08:	f88d e014 	strb.w	lr, [sp, #20]
d0043f0c:	f88d e018 	strb.w	lr, [sp, #24]
d0043f10:	f04f 0e7b 	mov.w	lr, #123	; 0x7b
d0043f14:	f88d c012 	strb.w	ip, [sp, #18]
d0043f18:	f88d c015 	strb.w	ip, [sp, #21]
d0043f1c:	f88d e019 	strb.w	lr, [sp, #25]
d0043f20:	f88d 300a 	strb.w	r3, [sp, #10]
d0043f24:	462b      	mov	r3, r5
d0043f26:	f88d 200d 	strb.w	r2, [sp, #13]
d0043f2a:	2200      	movs	r2, #0
d0043f2c:	f88d 100e 	strb.w	r1, [sp, #14]
d0043f30:	2103      	movs	r1, #3
d0043f32:	f88d 0011 	strb.w	r0, [sp, #17]
d0043f36:	4650      	mov	r0, sl
d0043f38:	f88d 7006 	strb.w	r7, [sp, #6]
d0043f3c:	f88d 7016 	strb.w	r7, [sp, #22]
d0043f40:	f88d 701a 	strb.w	r7, [sp, #26]
d0043f44:	f88d b009 	strb.w	fp, [sp, #9]
d0043f48:	47a0      	blx	r4
d0043f4a:	462b      	mov	r3, r5
d0043f4c:	2200      	movs	r2, #0
d0043f4e:	2103      	movs	r1, #3
d0043f50:	ee18 0a10 	vmov	r0, s16
d0043f54:	47a0      	blx	r4
d0043f56:	462b      	mov	r3, r5
d0043f58:	2200      	movs	r2, #0
d0043f5a:	2103      	movs	r1, #3
d0043f5c:	ee18 0a90 	vmov	r0, s17
d0043f60:	47a0      	blx	r4
d0043f62:	462b      	mov	r3, r5
d0043f64:	2200      	movs	r2, #0
d0043f66:	2103      	movs	r1, #3
d0043f68:	ee19 0a10 	vmov	r0, s18
d0043f6c:	47a0      	blx	r4
d0043f6e:	462b      	mov	r3, r5
d0043f70:	2200      	movs	r2, #0
d0043f72:	2103      	movs	r1, #3
d0043f74:	4648      	mov	r0, r9
d0043f76:	47a0      	blx	r4
d0043f78:	462b      	mov	r3, r5
d0043f7a:	2200      	movs	r2, #0
d0043f7c:	2103      	movs	r1, #3
d0043f7e:	4640      	mov	r0, r8
d0043f80:	47a0      	blx	r4
d0043f82:	2e10      	cmp	r6, #16
d0043f84:	d1a7      	bne.n	d0043ed6 <midi_translator_send_setup_burst+0x102>
d0043f86:	b009      	add	sp, #36	; 0x24
d0043f88:	ecbd 8b04 	vpop	{d8-d9}
d0043f8c:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0043f90:	4770      	bx	lr
d0043f92:	ab02      	add	r3, sp, #8
d0043f94:	2600      	movs	r6, #0
d0043f96:	f10d 0818 	add.w	r8, sp, #24
d0043f9a:	f10d 0a04 	add.w	sl, sp, #4
d0043f9e:	ee08 3a10 	vmov	s16, r3
d0043fa2:	ab03      	add	r3, sp, #12
d0043fa4:	4637      	mov	r7, r6
d0043fa6:	f10d 0914 	add.w	r9, sp, #20
d0043faa:	ee08 3a90 	vmov	s17, r3
d0043fae:	ab04      	add	r3, sp, #16
d0043fb0:	ee09 3a10 	vmov	s18, r3
d0043fb4:	f066 024f 	orn	r2, r6, #79	; 0x4f
d0043fb8:	f04f 0c79 	mov.w	ip, #121	; 0x79
d0043fbc:	f04f 0e7b 	mov.w	lr, #123	; 0x7b
d0043fc0:	2301      	movs	r3, #1
d0043fc2:	b2d2      	uxtb	r2, r2
d0043fc4:	216f      	movs	r1, #111	; 0x6f
d0043fc6:	200a      	movs	r0, #10
d0043fc8:	f88d c005 	strb.w	ip, [sp, #5]
d0043fcc:	f04f 0b07 	mov.w	fp, #7
d0043fd0:	f04f 0c40 	mov.w	ip, #64	; 0x40
d0043fd4:	f88d e019 	strb.w	lr, [sp, #25]
d0043fd8:	441e      	add	r6, r3
d0043fda:	f88d c012 	strb.w	ip, [sp, #18]
d0043fde:	f88d c015 	strb.w	ip, [sp, #21]
d0043fe2:	f88d 2004 	strb.w	r2, [sp, #4]
d0043fe6:	f88d 2008 	strb.w	r2, [sp, #8]
d0043fea:	f88d 200c 	strb.w	r2, [sp, #12]
d0043fee:	f88d 2010 	strb.w	r2, [sp, #16]
d0043ff2:	f88d 2014 	strb.w	r2, [sp, #20]
d0043ff6:	f88d 2018 	strb.w	r2, [sp, #24]
d0043ffa:	2200      	movs	r2, #0
d0043ffc:	f88d 3009 	strb.w	r3, [sp, #9]
d0044000:	462b      	mov	r3, r5
d0044002:	f88d 100e 	strb.w	r1, [sp, #14]
d0044006:	2103      	movs	r1, #3
d0044008:	f88d 0011 	strb.w	r0, [sp, #17]
d004400c:	4650      	mov	r0, sl
d004400e:	f88d 7006 	strb.w	r7, [sp, #6]
d0044012:	f88d 700a 	strb.w	r7, [sp, #10]
d0044016:	f88d 7016 	strb.w	r7, [sp, #22]
d004401a:	f88d 701a 	strb.w	r7, [sp, #26]
d004401e:	f88d b00d 	strb.w	fp, [sp, #13]
d0044022:	47a0      	blx	r4
d0044024:	462b      	mov	r3, r5
d0044026:	2200      	movs	r2, #0
d0044028:	2103      	movs	r1, #3
d004402a:	ee18 0a10 	vmov	r0, s16
d004402e:	47a0      	blx	r4
d0044030:	462b      	mov	r3, r5
d0044032:	2200      	movs	r2, #0
d0044034:	2103      	movs	r1, #3
d0044036:	ee18 0a90 	vmov	r0, s17
d004403a:	47a0      	blx	r4
d004403c:	462b      	mov	r3, r5
d004403e:	2200      	movs	r2, #0
d0044040:	2103      	movs	r1, #3
d0044042:	ee19 0a10 	vmov	r0, s18
d0044046:	47a0      	blx	r4
d0044048:	462b      	mov	r3, r5
d004404a:	2200      	movs	r2, #0
d004404c:	2103      	movs	r1, #3
d004404e:	4648      	mov	r0, r9
d0044050:	47a0      	blx	r4
d0044052:	462b      	mov	r3, r5
d0044054:	2200      	movs	r2, #0
d0044056:	2103      	movs	r1, #3
d0044058:	4640      	mov	r0, r8
d004405a:	47a0      	blx	r4
d004405c:	2e10      	cmp	r6, #16
d004405e:	d1a9      	bne.n	d0043fb4 <midi_translator_send_setup_burst+0x1e0>
d0044060:	4a11      	ldr	r2, [pc, #68]	; (d00440a8 <midi_translator_send_setup_burst+0x2d4>)
d0044062:	f246 31c9 	movw	r1, #25545	; 0x63c9
d0044066:	462b      	mov	r3, r5
d0044068:	4648      	mov	r0, r9
d004406a:	6816      	ldr	r6, [r2, #0]
d004406c:	2200      	movs	r2, #0
d004406e:	f8ad 1014 	strh.w	r1, [sp, #20]
d0044072:	2102      	movs	r1, #2
d0044074:	0c37      	lsrs	r7, r6, #16
d0044076:	f8a8 6000 	strh.w	r6, [r8]
d004407a:	f88d 701a 	strb.w	r7, [sp, #26]
d004407e:	47a0      	blx	r4
d0044080:	462b      	mov	r3, r5
d0044082:	2200      	movs	r2, #0
d0044084:	2103      	movs	r1, #3
d0044086:	4640      	mov	r0, r8
d0044088:	47a0      	blx	r4
d004408a:	b009      	add	sp, #36	; 0x24
d004408c:	ecbd 8b04 	vpop	{d8-d9}
d0044090:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0044094:	4b05      	ldr	r3, [pc, #20]	; (d00440ac <midi_translator_send_setup_burst+0x2d8>)
d0044096:	f813 6009 	ldrb.w	r6, [r3, r9]
d004409a:	e6d3      	b.n	d0043e44 <midi_translator_send_setup_burst+0x70>
d004409c:	01037df0 	.word	0x01037df0
d00440a0:	d0046208 	.word	0xd0046208
d00440a4:	d00461f4 	.word	0xd00461f4
d00440a8:	d004611c 	.word	0xd004611c
d00440ac:	d0046190 	.word	0xd0046190
d00440b0:	00037df0 	.word	0x00037df0

d00440b4 <midi_translator_send_post_load_burst>:
d00440b4:	2900      	cmp	r1, #0
d00440b6:	d06c      	beq.n	d0044192 <midi_translator_send_post_load_burst+0xde>
d00440b8:	3803      	subs	r0, #3
d00440ba:	2814      	cmp	r0, #20
d00440bc:	d868      	bhi.n	d0044190 <midi_translator_send_post_load_burst+0xdc>
d00440be:	4613      	mov	r3, r2
d00440c0:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
d00440c4:	460c      	mov	r4, r1
d00440c6:	4933      	ldr	r1, [pc, #204]	; (d0044194 <midi_translator_send_post_load_burst+0xe0>)
d00440c8:	2600      	movs	r6, #0
d00440ca:	b088      	sub	sp, #32
d00440cc:	f04f 0879 	mov.w	r8, #121	; 0x79
d00440d0:	4615      	mov	r5, r2
d00440d2:	4637      	mov	r7, r6
d00440d4:	4632      	mov	r2, r6
d00440d6:	c903      	ldmia	r1, {r0, r1}
d00440d8:	9006      	str	r0, [sp, #24]
d00440da:	a806      	add	r0, sp, #24
d00440dc:	f8ad 101c 	strh.w	r1, [sp, #28]
d00440e0:	2106      	movs	r1, #6
d00440e2:	47a0      	blx	r4
d00440e4:	f066 034f 	orn	r3, r6, #79	; 0x4f
d00440e8:	f04f 0c40 	mov.w	ip, #64	; 0x40
d00440ec:	f04f 0e7b 	mov.w	lr, #123	; 0x7b
d00440f0:	220b      	movs	r2, #11
d00440f2:	b2db      	uxtb	r3, r3
d00440f4:	217f      	movs	r1, #127	; 0x7f
d00440f6:	200a      	movs	r0, #10
d00440f8:	f04f 0a07 	mov.w	sl, #7
d00440fc:	f04f 0964 	mov.w	r9, #100	; 0x64
d0044100:	f88d c012 	strb.w	ip, [sp, #18]
d0044104:	f88d c015 	strb.w	ip, [sp, #21]
d0044108:	3601      	adds	r6, #1
d004410a:	f88d e019 	strb.w	lr, [sp, #25]
d004410e:	f88d 3004 	strb.w	r3, [sp, #4]
d0044112:	f88d 3008 	strb.w	r3, [sp, #8]
d0044116:	f88d 300c 	strb.w	r3, [sp, #12]
d004411a:	f88d 3010 	strb.w	r3, [sp, #16]
d004411e:	f88d 3014 	strb.w	r3, [sp, #20]
d0044122:	f88d 3018 	strb.w	r3, [sp, #24]
d0044126:	462b      	mov	r3, r5
d0044128:	f88d 200d 	strb.w	r2, [sp, #13]
d004412c:	2200      	movs	r2, #0
d004412e:	f88d 100e 	strb.w	r1, [sp, #14]
d0044132:	2103      	movs	r1, #3
d0044134:	f88d 0011 	strb.w	r0, [sp, #17]
d0044138:	a801      	add	r0, sp, #4
d004413a:	f88d 8005 	strb.w	r8, [sp, #5]
d004413e:	f88d 7006 	strb.w	r7, [sp, #6]
d0044142:	f88d 7016 	strb.w	r7, [sp, #22]
d0044146:	f88d 701a 	strb.w	r7, [sp, #26]
d004414a:	f88d a009 	strb.w	sl, [sp, #9]
d004414e:	f88d 900a 	strb.w	r9, [sp, #10]
d0044152:	47a0      	blx	r4
d0044154:	462b      	mov	r3, r5
d0044156:	2200      	movs	r2, #0
d0044158:	2103      	movs	r1, #3
d004415a:	a802      	add	r0, sp, #8
d004415c:	47a0      	blx	r4
d004415e:	462b      	mov	r3, r5
d0044160:	2200      	movs	r2, #0
d0044162:	2103      	movs	r1, #3
d0044164:	a803      	add	r0, sp, #12
d0044166:	47a0      	blx	r4
d0044168:	462b      	mov	r3, r5
d004416a:	2200      	movs	r2, #0
d004416c:	2103      	movs	r1, #3
d004416e:	a804      	add	r0, sp, #16
d0044170:	47a0      	blx	r4
d0044172:	462b      	mov	r3, r5
d0044174:	2200      	movs	r2, #0
d0044176:	2103      	movs	r1, #3
d0044178:	a805      	add	r0, sp, #20
d004417a:	47a0      	blx	r4
d004417c:	462b      	mov	r3, r5
d004417e:	2200      	movs	r2, #0
d0044180:	2103      	movs	r1, #3
d0044182:	a806      	add	r0, sp, #24
d0044184:	47a0      	blx	r4
d0044186:	2e10      	cmp	r6, #16
d0044188:	d1ac      	bne.n	d00440e4 <midi_translator_send_post_load_burst+0x30>
d004418a:	b008      	add	sp, #32
d004418c:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
d0044190:	4770      	bx	lr
d0044192:	4770      	bx	lr
d0044194:	d0045cf8 	.word	0xd0045cf8

d0044198 <__aeabi_uldivmod>:
d0044198:	b953      	cbnz	r3, d00441b0 <__aeabi_uldivmod+0x18>
d004419a:	b94a      	cbnz	r2, d00441b0 <__aeabi_uldivmod+0x18>
d004419c:	2900      	cmp	r1, #0
d004419e:	bf08      	it	eq
d00441a0:	2800      	cmpeq	r0, #0
d00441a2:	bf1c      	itt	ne
d00441a4:	f04f 31ff 	movne.w	r1, #4294967295	; 0xffffffff
d00441a8:	f04f 30ff 	movne.w	r0, #4294967295	; 0xffffffff
d00441ac:	f000 b96e 	b.w	d004448c <__aeabi_idiv0>
d00441b0:	f1ad 0c08 	sub.w	ip, sp, #8
d00441b4:	e96d ce04 	strd	ip, lr, [sp, #-16]!
d00441b8:	f000 f806 	bl	d00441c8 <__udivmoddi4>
d00441bc:	f8dd e004 	ldr.w	lr, [sp, #4]
d00441c0:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
d00441c4:	b004      	add	sp, #16
d00441c6:	4770      	bx	lr

d00441c8 <__udivmoddi4>:
d00441c8:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
d00441cc:	9d08      	ldr	r5, [sp, #32]
d00441ce:	4604      	mov	r4, r0
d00441d0:	468c      	mov	ip, r1
d00441d2:	2b00      	cmp	r3, #0
d00441d4:	f040 8083 	bne.w	d00442de <__udivmoddi4+0x116>
d00441d8:	428a      	cmp	r2, r1
d00441da:	4617      	mov	r7, r2
d00441dc:	d947      	bls.n	d004426e <__udivmoddi4+0xa6>
d00441de:	fab2 f282 	clz	r2, r2
d00441e2:	b142      	cbz	r2, d00441f6 <__udivmoddi4+0x2e>
d00441e4:	f1c2 0020 	rsb	r0, r2, #32
d00441e8:	fa24 f000 	lsr.w	r0, r4, r0
d00441ec:	4091      	lsls	r1, r2
d00441ee:	4097      	lsls	r7, r2
d00441f0:	ea40 0c01 	orr.w	ip, r0, r1
d00441f4:	4094      	lsls	r4, r2
d00441f6:	ea4f 4817 	mov.w	r8, r7, lsr #16
d00441fa:	0c23      	lsrs	r3, r4, #16
d00441fc:	fbbc f6f8 	udiv	r6, ip, r8
d0044200:	fa1f fe87 	uxth.w	lr, r7
d0044204:	fb08 c116 	mls	r1, r8, r6, ip
d0044208:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d004420c:	fb06 f10e 	mul.w	r1, r6, lr
d0044210:	4299      	cmp	r1, r3
d0044212:	d909      	bls.n	d0044228 <__udivmoddi4+0x60>
d0044214:	18fb      	adds	r3, r7, r3
d0044216:	f106 30ff 	add.w	r0, r6, #4294967295	; 0xffffffff
d004421a:	f080 8119 	bcs.w	d0044450 <__udivmoddi4+0x288>
d004421e:	4299      	cmp	r1, r3
d0044220:	f240 8116 	bls.w	d0044450 <__udivmoddi4+0x288>
d0044224:	3e02      	subs	r6, #2
d0044226:	443b      	add	r3, r7
d0044228:	1a5b      	subs	r3, r3, r1
d004422a:	b2a4      	uxth	r4, r4
d004422c:	fbb3 f0f8 	udiv	r0, r3, r8
d0044230:	fb08 3310 	mls	r3, r8, r0, r3
d0044234:	ea44 4403 	orr.w	r4, r4, r3, lsl #16
d0044238:	fb00 fe0e 	mul.w	lr, r0, lr
d004423c:	45a6      	cmp	lr, r4
d004423e:	d909      	bls.n	d0044254 <__udivmoddi4+0x8c>
d0044240:	193c      	adds	r4, r7, r4
d0044242:	f100 33ff 	add.w	r3, r0, #4294967295	; 0xffffffff
d0044246:	f080 8105 	bcs.w	d0044454 <__udivmoddi4+0x28c>
d004424a:	45a6      	cmp	lr, r4
d004424c:	f240 8102 	bls.w	d0044454 <__udivmoddi4+0x28c>
d0044250:	3802      	subs	r0, #2
d0044252:	443c      	add	r4, r7
d0044254:	ea40 4006 	orr.w	r0, r0, r6, lsl #16
d0044258:	eba4 040e 	sub.w	r4, r4, lr
d004425c:	2600      	movs	r6, #0
d004425e:	b11d      	cbz	r5, d0044268 <__udivmoddi4+0xa0>
d0044260:	40d4      	lsrs	r4, r2
d0044262:	2300      	movs	r3, #0
d0044264:	e9c5 4300 	strd	r4, r3, [r5]
d0044268:	4631      	mov	r1, r6
d004426a:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
d004426e:	b902      	cbnz	r2, d0044272 <__udivmoddi4+0xaa>
d0044270:	deff      	udf	#255	; 0xff
d0044272:	fab2 f282 	clz	r2, r2
d0044276:	2a00      	cmp	r2, #0
d0044278:	d150      	bne.n	d004431c <__udivmoddi4+0x154>
d004427a:	1bcb      	subs	r3, r1, r7
d004427c:	ea4f 4e17 	mov.w	lr, r7, lsr #16
d0044280:	fa1f f887 	uxth.w	r8, r7
d0044284:	2601      	movs	r6, #1
d0044286:	fbb3 fcfe 	udiv	ip, r3, lr
d004428a:	0c21      	lsrs	r1, r4, #16
d004428c:	fb0e 331c 	mls	r3, lr, ip, r3
d0044290:	ea41 4103 	orr.w	r1, r1, r3, lsl #16
d0044294:	fb08 f30c 	mul.w	r3, r8, ip
d0044298:	428b      	cmp	r3, r1
d004429a:	d907      	bls.n	d00442ac <__udivmoddi4+0xe4>
d004429c:	1879      	adds	r1, r7, r1
d004429e:	f10c 30ff 	add.w	r0, ip, #4294967295	; 0xffffffff
d00442a2:	d202      	bcs.n	d00442aa <__udivmoddi4+0xe2>
d00442a4:	428b      	cmp	r3, r1
d00442a6:	f200 80e9 	bhi.w	d004447c <__udivmoddi4+0x2b4>
d00442aa:	4684      	mov	ip, r0
d00442ac:	1ac9      	subs	r1, r1, r3
d00442ae:	b2a3      	uxth	r3, r4
d00442b0:	fbb1 f0fe 	udiv	r0, r1, lr
d00442b4:	fb0e 1110 	mls	r1, lr, r0, r1
d00442b8:	ea43 4401 	orr.w	r4, r3, r1, lsl #16
d00442bc:	fb08 f800 	mul.w	r8, r8, r0
d00442c0:	45a0      	cmp	r8, r4
d00442c2:	d907      	bls.n	d00442d4 <__udivmoddi4+0x10c>
d00442c4:	193c      	adds	r4, r7, r4
d00442c6:	f100 33ff 	add.w	r3, r0, #4294967295	; 0xffffffff
d00442ca:	d202      	bcs.n	d00442d2 <__udivmoddi4+0x10a>
d00442cc:	45a0      	cmp	r8, r4
d00442ce:	f200 80d9 	bhi.w	d0044484 <__udivmoddi4+0x2bc>
d00442d2:	4618      	mov	r0, r3
d00442d4:	eba4 0408 	sub.w	r4, r4, r8
d00442d8:	ea40 400c 	orr.w	r0, r0, ip, lsl #16
d00442dc:	e7bf      	b.n	d004425e <__udivmoddi4+0x96>
d00442de:	428b      	cmp	r3, r1
d00442e0:	d909      	bls.n	d00442f6 <__udivmoddi4+0x12e>
d00442e2:	2d00      	cmp	r5, #0
d00442e4:	f000 80b1 	beq.w	d004444a <__udivmoddi4+0x282>
d00442e8:	2600      	movs	r6, #0
d00442ea:	e9c5 0100 	strd	r0, r1, [r5]
d00442ee:	4630      	mov	r0, r6
d00442f0:	4631      	mov	r1, r6
d00442f2:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
d00442f6:	fab3 f683 	clz	r6, r3
d00442fa:	2e00      	cmp	r6, #0
d00442fc:	d14a      	bne.n	d0044394 <__udivmoddi4+0x1cc>
d00442fe:	428b      	cmp	r3, r1
d0044300:	d302      	bcc.n	d0044308 <__udivmoddi4+0x140>
d0044302:	4282      	cmp	r2, r0
d0044304:	f200 80b8 	bhi.w	d0044478 <__udivmoddi4+0x2b0>
d0044308:	1a84      	subs	r4, r0, r2
d004430a:	eb61 0103 	sbc.w	r1, r1, r3
d004430e:	2001      	movs	r0, #1
d0044310:	468c      	mov	ip, r1
d0044312:	2d00      	cmp	r5, #0
d0044314:	d0a8      	beq.n	d0044268 <__udivmoddi4+0xa0>
d0044316:	e9c5 4c00 	strd	r4, ip, [r5]
d004431a:	e7a5      	b.n	d0044268 <__udivmoddi4+0xa0>
d004431c:	f1c2 0320 	rsb	r3, r2, #32
d0044320:	fa20 f603 	lsr.w	r6, r0, r3
d0044324:	4097      	lsls	r7, r2
d0044326:	fa01 f002 	lsl.w	r0, r1, r2
d004432a:	ea4f 4e17 	mov.w	lr, r7, lsr #16
d004432e:	40d9      	lsrs	r1, r3
d0044330:	4330      	orrs	r0, r6
d0044332:	0c03      	lsrs	r3, r0, #16
d0044334:	fbb1 f6fe 	udiv	r6, r1, lr
d0044338:	fa1f f887 	uxth.w	r8, r7
d004433c:	fb0e 1116 	mls	r1, lr, r6, r1
d0044340:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0044344:	fb06 f108 	mul.w	r1, r6, r8
d0044348:	4299      	cmp	r1, r3
d004434a:	fa04 f402 	lsl.w	r4, r4, r2
d004434e:	d909      	bls.n	d0044364 <__udivmoddi4+0x19c>
d0044350:	18fb      	adds	r3, r7, r3
d0044352:	f106 3cff 	add.w	ip, r6, #4294967295	; 0xffffffff
d0044356:	f080 808d 	bcs.w	d0044474 <__udivmoddi4+0x2ac>
d004435a:	4299      	cmp	r1, r3
d004435c:	f240 808a 	bls.w	d0044474 <__udivmoddi4+0x2ac>
d0044360:	3e02      	subs	r6, #2
d0044362:	443b      	add	r3, r7
d0044364:	1a5b      	subs	r3, r3, r1
d0044366:	b281      	uxth	r1, r0
d0044368:	fbb3 f0fe 	udiv	r0, r3, lr
d004436c:	fb0e 3310 	mls	r3, lr, r0, r3
d0044370:	ea41 4103 	orr.w	r1, r1, r3, lsl #16
d0044374:	fb00 f308 	mul.w	r3, r0, r8
d0044378:	428b      	cmp	r3, r1
d004437a:	d907      	bls.n	d004438c <__udivmoddi4+0x1c4>
d004437c:	1879      	adds	r1, r7, r1
d004437e:	f100 3cff 	add.w	ip, r0, #4294967295	; 0xffffffff
d0044382:	d273      	bcs.n	d004446c <__udivmoddi4+0x2a4>
d0044384:	428b      	cmp	r3, r1
d0044386:	d971      	bls.n	d004446c <__udivmoddi4+0x2a4>
d0044388:	3802      	subs	r0, #2
d004438a:	4439      	add	r1, r7
d004438c:	1acb      	subs	r3, r1, r3
d004438e:	ea40 4606 	orr.w	r6, r0, r6, lsl #16
d0044392:	e778      	b.n	d0044286 <__udivmoddi4+0xbe>
d0044394:	f1c6 0c20 	rsb	ip, r6, #32
d0044398:	fa03 f406 	lsl.w	r4, r3, r6
d004439c:	fa22 f30c 	lsr.w	r3, r2, ip
d00443a0:	431c      	orrs	r4, r3
d00443a2:	fa20 f70c 	lsr.w	r7, r0, ip
d00443a6:	fa01 f306 	lsl.w	r3, r1, r6
d00443aa:	ea4f 4e14 	mov.w	lr, r4, lsr #16
d00443ae:	fa21 f10c 	lsr.w	r1, r1, ip
d00443b2:	431f      	orrs	r7, r3
d00443b4:	0c3b      	lsrs	r3, r7, #16
d00443b6:	fbb1 f9fe 	udiv	r9, r1, lr
d00443ba:	fa1f f884 	uxth.w	r8, r4
d00443be:	fb0e 1119 	mls	r1, lr, r9, r1
d00443c2:	ea43 4101 	orr.w	r1, r3, r1, lsl #16
d00443c6:	fb09 fa08 	mul.w	sl, r9, r8
d00443ca:	458a      	cmp	sl, r1
d00443cc:	fa02 f206 	lsl.w	r2, r2, r6
d00443d0:	fa00 f306 	lsl.w	r3, r0, r6
d00443d4:	d908      	bls.n	d00443e8 <__udivmoddi4+0x220>
d00443d6:	1861      	adds	r1, r4, r1
d00443d8:	f109 30ff 	add.w	r0, r9, #4294967295	; 0xffffffff
d00443dc:	d248      	bcs.n	d0044470 <__udivmoddi4+0x2a8>
d00443de:	458a      	cmp	sl, r1
d00443e0:	d946      	bls.n	d0044470 <__udivmoddi4+0x2a8>
d00443e2:	f1a9 0902 	sub.w	r9, r9, #2
d00443e6:	4421      	add	r1, r4
d00443e8:	eba1 010a 	sub.w	r1, r1, sl
d00443ec:	b2bf      	uxth	r7, r7
d00443ee:	fbb1 f0fe 	udiv	r0, r1, lr
d00443f2:	fb0e 1110 	mls	r1, lr, r0, r1
d00443f6:	ea47 4701 	orr.w	r7, r7, r1, lsl #16
d00443fa:	fb00 f808 	mul.w	r8, r0, r8
d00443fe:	45b8      	cmp	r8, r7
d0044400:	d907      	bls.n	d0044412 <__udivmoddi4+0x24a>
d0044402:	19e7      	adds	r7, r4, r7
d0044404:	f100 31ff 	add.w	r1, r0, #4294967295	; 0xffffffff
d0044408:	d22e      	bcs.n	d0044468 <__udivmoddi4+0x2a0>
d004440a:	45b8      	cmp	r8, r7
d004440c:	d92c      	bls.n	d0044468 <__udivmoddi4+0x2a0>
d004440e:	3802      	subs	r0, #2
d0044410:	4427      	add	r7, r4
d0044412:	ea40 4009 	orr.w	r0, r0, r9, lsl #16
d0044416:	eba7 0708 	sub.w	r7, r7, r8
d004441a:	fba0 8902 	umull	r8, r9, r0, r2
d004441e:	454f      	cmp	r7, r9
d0044420:	46c6      	mov	lr, r8
d0044422:	4649      	mov	r1, r9
d0044424:	d31a      	bcc.n	d004445c <__udivmoddi4+0x294>
d0044426:	d017      	beq.n	d0044458 <__udivmoddi4+0x290>
d0044428:	b15d      	cbz	r5, d0044442 <__udivmoddi4+0x27a>
d004442a:	ebb3 020e 	subs.w	r2, r3, lr
d004442e:	eb67 0701 	sbc.w	r7, r7, r1
d0044432:	fa07 fc0c 	lsl.w	ip, r7, ip
d0044436:	40f2      	lsrs	r2, r6
d0044438:	ea4c 0202 	orr.w	r2, ip, r2
d004443c:	40f7      	lsrs	r7, r6
d004443e:	e9c5 2700 	strd	r2, r7, [r5]
d0044442:	2600      	movs	r6, #0
d0044444:	4631      	mov	r1, r6
d0044446:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
d004444a:	462e      	mov	r6, r5
d004444c:	4628      	mov	r0, r5
d004444e:	e70b      	b.n	d0044268 <__udivmoddi4+0xa0>
d0044450:	4606      	mov	r6, r0
d0044452:	e6e9      	b.n	d0044228 <__udivmoddi4+0x60>
d0044454:	4618      	mov	r0, r3
d0044456:	e6fd      	b.n	d0044254 <__udivmoddi4+0x8c>
d0044458:	4543      	cmp	r3, r8
d004445a:	d2e5      	bcs.n	d0044428 <__udivmoddi4+0x260>
d004445c:	ebb8 0e02 	subs.w	lr, r8, r2
d0044460:	eb69 0104 	sbc.w	r1, r9, r4
d0044464:	3801      	subs	r0, #1
d0044466:	e7df      	b.n	d0044428 <__udivmoddi4+0x260>
d0044468:	4608      	mov	r0, r1
d004446a:	e7d2      	b.n	d0044412 <__udivmoddi4+0x24a>
d004446c:	4660      	mov	r0, ip
d004446e:	e78d      	b.n	d004438c <__udivmoddi4+0x1c4>
d0044470:	4681      	mov	r9, r0
d0044472:	e7b9      	b.n	d00443e8 <__udivmoddi4+0x220>
d0044474:	4666      	mov	r6, ip
d0044476:	e775      	b.n	d0044364 <__udivmoddi4+0x19c>
d0044478:	4630      	mov	r0, r6
d004447a:	e74a      	b.n	d0044312 <__udivmoddi4+0x14a>
d004447c:	f1ac 0c02 	sub.w	ip, ip, #2
d0044480:	4439      	add	r1, r7
d0044482:	e713      	b.n	d00442ac <__udivmoddi4+0xe4>
d0044484:	3802      	subs	r0, #2
d0044486:	443c      	add	r4, r7
d0044488:	e724      	b.n	d00442d4 <__udivmoddi4+0x10c>
d004448a:	bf00      	nop

d004448c <__aeabi_idiv0>:
d004448c:	4770      	bx	lr
d004448e:	bf00      	nop

d0044490 <__errno>:
d0044490:	4b01      	ldr	r3, [pc, #4]	; (d0044498 <__errno+0x8>)
d0044492:	6818      	ldr	r0, [r3, #0]
d0044494:	4770      	bx	lr
d0044496:	bf00      	nop
d0044498:	d0046474 	.word	0xd0046474

d004449c <malloc>:
d004449c:	4b02      	ldr	r3, [pc, #8]	; (d00444a8 <malloc+0xc>)
d004449e:	4601      	mov	r1, r0
d00444a0:	6818      	ldr	r0, [r3, #0]
d00444a2:	f000 b863 	b.w	d004456c <_malloc_r>
d00444a6:	bf00      	nop
d00444a8:	d0046474 	.word	0xd0046474

d00444ac <free>:
d00444ac:	4b02      	ldr	r3, [pc, #8]	; (d00444b8 <free+0xc>)
d00444ae:	4601      	mov	r1, r0
d00444b0:	6818      	ldr	r0, [r3, #0]
d00444b2:	f000 b80b 	b.w	d00444cc <_free_r>
d00444b6:	bf00      	nop
d00444b8:	d0046474 	.word	0xd0046474

d00444bc <memset>:
d00444bc:	4402      	add	r2, r0
d00444be:	4603      	mov	r3, r0
d00444c0:	4293      	cmp	r3, r2
d00444c2:	d100      	bne.n	d00444c6 <memset+0xa>
d00444c4:	4770      	bx	lr
d00444c6:	f803 1b01 	strb.w	r1, [r3], #1
d00444ca:	e7f9      	b.n	d00444c0 <memset+0x4>

d00444cc <_free_r>:
d00444cc:	b537      	push	{r0, r1, r2, r4, r5, lr}
d00444ce:	2900      	cmp	r1, #0
d00444d0:	d048      	beq.n	d0044564 <_free_r+0x98>
d00444d2:	f851 3c04 	ldr.w	r3, [r1, #-4]
d00444d6:	9001      	str	r0, [sp, #4]
d00444d8:	2b00      	cmp	r3, #0
d00444da:	f1a1 0404 	sub.w	r4, r1, #4
d00444de:	bfb8      	it	lt
d00444e0:	18e4      	addlt	r4, r4, r3
d00444e2:	f000 fd1b 	bl	d0044f1c <__malloc_lock>
d00444e6:	4a20      	ldr	r2, [pc, #128]	; (d0044568 <_free_r+0x9c>)
d00444e8:	9801      	ldr	r0, [sp, #4]
d00444ea:	6813      	ldr	r3, [r2, #0]
d00444ec:	4615      	mov	r5, r2
d00444ee:	b933      	cbnz	r3, d00444fe <_free_r+0x32>
d00444f0:	6063      	str	r3, [r4, #4]
d00444f2:	6014      	str	r4, [r2, #0]
d00444f4:	b003      	add	sp, #12
d00444f6:	e8bd 4030 	ldmia.w	sp!, {r4, r5, lr}
d00444fa:	f000 bd15 	b.w	d0044f28 <__malloc_unlock>
d00444fe:	42a3      	cmp	r3, r4
d0044500:	d90b      	bls.n	d004451a <_free_r+0x4e>
d0044502:	6821      	ldr	r1, [r4, #0]
d0044504:	1862      	adds	r2, r4, r1
d0044506:	4293      	cmp	r3, r2
d0044508:	bf04      	itt	eq
d004450a:	681a      	ldreq	r2, [r3, #0]
d004450c:	685b      	ldreq	r3, [r3, #4]
d004450e:	6063      	str	r3, [r4, #4]
d0044510:	bf04      	itt	eq
d0044512:	1852      	addeq	r2, r2, r1
d0044514:	6022      	streq	r2, [r4, #0]
d0044516:	602c      	str	r4, [r5, #0]
d0044518:	e7ec      	b.n	d00444f4 <_free_r+0x28>
d004451a:	461a      	mov	r2, r3
d004451c:	685b      	ldr	r3, [r3, #4]
d004451e:	b10b      	cbz	r3, d0044524 <_free_r+0x58>
d0044520:	42a3      	cmp	r3, r4
d0044522:	d9fa      	bls.n	d004451a <_free_r+0x4e>
d0044524:	6811      	ldr	r1, [r2, #0]
d0044526:	1855      	adds	r5, r2, r1
d0044528:	42a5      	cmp	r5, r4
d004452a:	d10b      	bne.n	d0044544 <_free_r+0x78>
d004452c:	6824      	ldr	r4, [r4, #0]
d004452e:	4421      	add	r1, r4
d0044530:	1854      	adds	r4, r2, r1
d0044532:	42a3      	cmp	r3, r4
d0044534:	6011      	str	r1, [r2, #0]
d0044536:	d1dd      	bne.n	d00444f4 <_free_r+0x28>
d0044538:	681c      	ldr	r4, [r3, #0]
d004453a:	685b      	ldr	r3, [r3, #4]
d004453c:	6053      	str	r3, [r2, #4]
d004453e:	4421      	add	r1, r4
d0044540:	6011      	str	r1, [r2, #0]
d0044542:	e7d7      	b.n	d00444f4 <_free_r+0x28>
d0044544:	d902      	bls.n	d004454c <_free_r+0x80>
d0044546:	230c      	movs	r3, #12
d0044548:	6003      	str	r3, [r0, #0]
d004454a:	e7d3      	b.n	d00444f4 <_free_r+0x28>
d004454c:	6825      	ldr	r5, [r4, #0]
d004454e:	1961      	adds	r1, r4, r5
d0044550:	428b      	cmp	r3, r1
d0044552:	bf04      	itt	eq
d0044554:	6819      	ldreq	r1, [r3, #0]
d0044556:	685b      	ldreq	r3, [r3, #4]
d0044558:	6063      	str	r3, [r4, #4]
d004455a:	bf04      	itt	eq
d004455c:	1949      	addeq	r1, r1, r5
d004455e:	6021      	streq	r1, [r4, #0]
d0044560:	6054      	str	r4, [r2, #4]
d0044562:	e7c7      	b.n	d00444f4 <_free_r+0x28>
d0044564:	b003      	add	sp, #12
d0044566:	bd30      	pop	{r4, r5, pc}
d0044568:	d0047bbc 	.word	0xd0047bbc

d004456c <_malloc_r>:
d004456c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d004456e:	1ccd      	adds	r5, r1, #3
d0044570:	f025 0503 	bic.w	r5, r5, #3
d0044574:	3508      	adds	r5, #8
d0044576:	2d0c      	cmp	r5, #12
d0044578:	bf38      	it	cc
d004457a:	250c      	movcc	r5, #12
d004457c:	2d00      	cmp	r5, #0
d004457e:	4606      	mov	r6, r0
d0044580:	db01      	blt.n	d0044586 <_malloc_r+0x1a>
d0044582:	42a9      	cmp	r1, r5
d0044584:	d903      	bls.n	d004458e <_malloc_r+0x22>
d0044586:	230c      	movs	r3, #12
d0044588:	6033      	str	r3, [r6, #0]
d004458a:	2000      	movs	r0, #0
d004458c:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d004458e:	f000 fcc5 	bl	d0044f1c <__malloc_lock>
d0044592:	4921      	ldr	r1, [pc, #132]	; (d0044618 <_malloc_r+0xac>)
d0044594:	680a      	ldr	r2, [r1, #0]
d0044596:	4614      	mov	r4, r2
d0044598:	b99c      	cbnz	r4, d00445c2 <_malloc_r+0x56>
d004459a:	4f20      	ldr	r7, [pc, #128]	; (d004461c <_malloc_r+0xb0>)
d004459c:	683b      	ldr	r3, [r7, #0]
d004459e:	b923      	cbnz	r3, d00445aa <_malloc_r+0x3e>
d00445a0:	4621      	mov	r1, r4
d00445a2:	4630      	mov	r0, r6
d00445a4:	f7fb fd9c 	bl	d00400e0 <_sbrk_r>
d00445a8:	6038      	str	r0, [r7, #0]
d00445aa:	4629      	mov	r1, r5
d00445ac:	4630      	mov	r0, r6
d00445ae:	f7fb fd97 	bl	d00400e0 <_sbrk_r>
d00445b2:	1c43      	adds	r3, r0, #1
d00445b4:	d123      	bne.n	d00445fe <_malloc_r+0x92>
d00445b6:	230c      	movs	r3, #12
d00445b8:	6033      	str	r3, [r6, #0]
d00445ba:	4630      	mov	r0, r6
d00445bc:	f000 fcb4 	bl	d0044f28 <__malloc_unlock>
d00445c0:	e7e3      	b.n	d004458a <_malloc_r+0x1e>
d00445c2:	6823      	ldr	r3, [r4, #0]
d00445c4:	1b5b      	subs	r3, r3, r5
d00445c6:	d417      	bmi.n	d00445f8 <_malloc_r+0x8c>
d00445c8:	2b0b      	cmp	r3, #11
d00445ca:	d903      	bls.n	d00445d4 <_malloc_r+0x68>
d00445cc:	6023      	str	r3, [r4, #0]
d00445ce:	441c      	add	r4, r3
d00445d0:	6025      	str	r5, [r4, #0]
d00445d2:	e004      	b.n	d00445de <_malloc_r+0x72>
d00445d4:	6863      	ldr	r3, [r4, #4]
d00445d6:	42a2      	cmp	r2, r4
d00445d8:	bf0c      	ite	eq
d00445da:	600b      	streq	r3, [r1, #0]
d00445dc:	6053      	strne	r3, [r2, #4]
d00445de:	4630      	mov	r0, r6
d00445e0:	f000 fca2 	bl	d0044f28 <__malloc_unlock>
d00445e4:	f104 000b 	add.w	r0, r4, #11
d00445e8:	1d23      	adds	r3, r4, #4
d00445ea:	f020 0007 	bic.w	r0, r0, #7
d00445ee:	1ac2      	subs	r2, r0, r3
d00445f0:	d0cc      	beq.n	d004458c <_malloc_r+0x20>
d00445f2:	1a1b      	subs	r3, r3, r0
d00445f4:	50a3      	str	r3, [r4, r2]
d00445f6:	e7c9      	b.n	d004458c <_malloc_r+0x20>
d00445f8:	4622      	mov	r2, r4
d00445fa:	6864      	ldr	r4, [r4, #4]
d00445fc:	e7cc      	b.n	d0044598 <_malloc_r+0x2c>
d00445fe:	1cc4      	adds	r4, r0, #3
d0044600:	f024 0403 	bic.w	r4, r4, #3
d0044604:	42a0      	cmp	r0, r4
d0044606:	d0e3      	beq.n	d00445d0 <_malloc_r+0x64>
d0044608:	1a21      	subs	r1, r4, r0
d004460a:	4630      	mov	r0, r6
d004460c:	f7fb fd68 	bl	d00400e0 <_sbrk_r>
d0044610:	3001      	adds	r0, #1
d0044612:	d1dd      	bne.n	d00445d0 <_malloc_r+0x64>
d0044614:	e7cf      	b.n	d00445b6 <_malloc_r+0x4a>
d0044616:	bf00      	nop
d0044618:	d0047bbc 	.word	0xd0047bbc
d004461c:	d0047bc0 	.word	0xd0047bc0

d0044620 <iprintf>:
d0044620:	b40f      	push	{r0, r1, r2, r3}
d0044622:	4b0a      	ldr	r3, [pc, #40]	; (d004464c <iprintf+0x2c>)
d0044624:	b513      	push	{r0, r1, r4, lr}
d0044626:	681c      	ldr	r4, [r3, #0]
d0044628:	b124      	cbz	r4, d0044634 <iprintf+0x14>
d004462a:	69a3      	ldr	r3, [r4, #24]
d004462c:	b913      	cbnz	r3, d0044634 <iprintf+0x14>
d004462e:	4620      	mov	r0, r4
d0044630:	f000 fb70 	bl	d0044d14 <__sinit>
d0044634:	ab05      	add	r3, sp, #20
d0044636:	9a04      	ldr	r2, [sp, #16]
d0044638:	68a1      	ldr	r1, [r4, #8]
d004463a:	9301      	str	r3, [sp, #4]
d004463c:	4620      	mov	r0, r4
d004463e:	f000 fdff 	bl	d0045240 <_vfiprintf_r>
d0044642:	b002      	add	sp, #8
d0044644:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
d0044648:	b004      	add	sp, #16
d004464a:	4770      	bx	lr
d004464c:	d0046474 	.word	0xd0046474

d0044650 <_puts_r>:
d0044650:	b570      	push	{r4, r5, r6, lr}
d0044652:	460e      	mov	r6, r1
d0044654:	4605      	mov	r5, r0
d0044656:	b118      	cbz	r0, d0044660 <_puts_r+0x10>
d0044658:	6983      	ldr	r3, [r0, #24]
d004465a:	b90b      	cbnz	r3, d0044660 <_puts_r+0x10>
d004465c:	f000 fb5a 	bl	d0044d14 <__sinit>
d0044660:	69ab      	ldr	r3, [r5, #24]
d0044662:	68ac      	ldr	r4, [r5, #8]
d0044664:	b913      	cbnz	r3, d004466c <_puts_r+0x1c>
d0044666:	4628      	mov	r0, r5
d0044668:	f000 fb54 	bl	d0044d14 <__sinit>
d004466c:	4b2c      	ldr	r3, [pc, #176]	; (d0044720 <_puts_r+0xd0>)
d004466e:	429c      	cmp	r4, r3
d0044670:	d120      	bne.n	d00446b4 <_puts_r+0x64>
d0044672:	686c      	ldr	r4, [r5, #4]
d0044674:	6e63      	ldr	r3, [r4, #100]	; 0x64
d0044676:	07db      	lsls	r3, r3, #31
d0044678:	d405      	bmi.n	d0044686 <_puts_r+0x36>
d004467a:	89a3      	ldrh	r3, [r4, #12]
d004467c:	0598      	lsls	r0, r3, #22
d004467e:	d402      	bmi.n	d0044686 <_puts_r+0x36>
d0044680:	6da0      	ldr	r0, [r4, #88]	; 0x58
d0044682:	f000 fbe5 	bl	d0044e50 <__retarget_lock_acquire_recursive>
d0044686:	89a3      	ldrh	r3, [r4, #12]
d0044688:	0719      	lsls	r1, r3, #28
d004468a:	d51d      	bpl.n	d00446c8 <_puts_r+0x78>
d004468c:	6923      	ldr	r3, [r4, #16]
d004468e:	b1db      	cbz	r3, d00446c8 <_puts_r+0x78>
d0044690:	3e01      	subs	r6, #1
d0044692:	68a3      	ldr	r3, [r4, #8]
d0044694:	f816 1f01 	ldrb.w	r1, [r6, #1]!
d0044698:	3b01      	subs	r3, #1
d004469a:	60a3      	str	r3, [r4, #8]
d004469c:	bb39      	cbnz	r1, d00446ee <_puts_r+0x9e>
d004469e:	2b00      	cmp	r3, #0
d00446a0:	da38      	bge.n	d0044714 <_puts_r+0xc4>
d00446a2:	4622      	mov	r2, r4
d00446a4:	210a      	movs	r1, #10
d00446a6:	4628      	mov	r0, r5
d00446a8:	f000 f95a 	bl	d0044960 <__swbuf_r>
d00446ac:	3001      	adds	r0, #1
d00446ae:	d011      	beq.n	d00446d4 <_puts_r+0x84>
d00446b0:	250a      	movs	r5, #10
d00446b2:	e011      	b.n	d00446d8 <_puts_r+0x88>
d00446b4:	4b1b      	ldr	r3, [pc, #108]	; (d0044724 <_puts_r+0xd4>)
d00446b6:	429c      	cmp	r4, r3
d00446b8:	d101      	bne.n	d00446be <_puts_r+0x6e>
d00446ba:	68ac      	ldr	r4, [r5, #8]
d00446bc:	e7da      	b.n	d0044674 <_puts_r+0x24>
d00446be:	4b1a      	ldr	r3, [pc, #104]	; (d0044728 <_puts_r+0xd8>)
d00446c0:	429c      	cmp	r4, r3
d00446c2:	bf08      	it	eq
d00446c4:	68ec      	ldreq	r4, [r5, #12]
d00446c6:	e7d5      	b.n	d0044674 <_puts_r+0x24>
d00446c8:	4621      	mov	r1, r4
d00446ca:	4628      	mov	r0, r5
d00446cc:	f000 f99a 	bl	d0044a04 <__swsetup_r>
d00446d0:	2800      	cmp	r0, #0
d00446d2:	d0dd      	beq.n	d0044690 <_puts_r+0x40>
d00446d4:	f04f 35ff 	mov.w	r5, #4294967295	; 0xffffffff
d00446d8:	6e63      	ldr	r3, [r4, #100]	; 0x64
d00446da:	07da      	lsls	r2, r3, #31
d00446dc:	d405      	bmi.n	d00446ea <_puts_r+0x9a>
d00446de:	89a3      	ldrh	r3, [r4, #12]
d00446e0:	059b      	lsls	r3, r3, #22
d00446e2:	d402      	bmi.n	d00446ea <_puts_r+0x9a>
d00446e4:	6da0      	ldr	r0, [r4, #88]	; 0x58
d00446e6:	f000 fbb4 	bl	d0044e52 <__retarget_lock_release_recursive>
d00446ea:	4628      	mov	r0, r5
d00446ec:	bd70      	pop	{r4, r5, r6, pc}
d00446ee:	2b00      	cmp	r3, #0
d00446f0:	da04      	bge.n	d00446fc <_puts_r+0xac>
d00446f2:	69a2      	ldr	r2, [r4, #24]
d00446f4:	429a      	cmp	r2, r3
d00446f6:	dc06      	bgt.n	d0044706 <_puts_r+0xb6>
d00446f8:	290a      	cmp	r1, #10
d00446fa:	d004      	beq.n	d0044706 <_puts_r+0xb6>
d00446fc:	6823      	ldr	r3, [r4, #0]
d00446fe:	1c5a      	adds	r2, r3, #1
d0044700:	6022      	str	r2, [r4, #0]
d0044702:	7019      	strb	r1, [r3, #0]
d0044704:	e7c5      	b.n	d0044692 <_puts_r+0x42>
d0044706:	4622      	mov	r2, r4
d0044708:	4628      	mov	r0, r5
d004470a:	f000 f929 	bl	d0044960 <__swbuf_r>
d004470e:	3001      	adds	r0, #1
d0044710:	d1bf      	bne.n	d0044692 <_puts_r+0x42>
d0044712:	e7df      	b.n	d00446d4 <_puts_r+0x84>
d0044714:	6823      	ldr	r3, [r4, #0]
d0044716:	250a      	movs	r5, #10
d0044718:	1c5a      	adds	r2, r3, #1
d004471a:	6022      	str	r2, [r4, #0]
d004471c:	701d      	strb	r5, [r3, #0]
d004471e:	e7db      	b.n	d00446d8 <_puts_r+0x88>
d0044720:	d00463c0 	.word	0xd00463c0
d0044724:	d00463e0 	.word	0xd00463e0
d0044728:	d00463a0 	.word	0xd00463a0

d004472c <puts>:
d004472c:	4b02      	ldr	r3, [pc, #8]	; (d0044738 <puts+0xc>)
d004472e:	4601      	mov	r1, r0
d0044730:	6818      	ldr	r0, [r3, #0]
d0044732:	f7ff bf8d 	b.w	d0044650 <_puts_r>
d0044736:	bf00      	nop
d0044738:	d0046474 	.word	0xd0046474

d004473c <setbuf>:
d004473c:	2900      	cmp	r1, #0
d004473e:	f44f 6380 	mov.w	r3, #1024	; 0x400
d0044742:	bf0c      	ite	eq
d0044744:	2202      	moveq	r2, #2
d0044746:	2200      	movne	r2, #0
d0044748:	f000 b800 	b.w	d004474c <setvbuf>

d004474c <setvbuf>:
d004474c:	e92d 43f7 	stmdb	sp!, {r0, r1, r2, r4, r5, r6, r7, r8, r9, lr}
d0044750:	461d      	mov	r5, r3
d0044752:	4b5d      	ldr	r3, [pc, #372]	; (d00448c8 <setvbuf+0x17c>)
d0044754:	681f      	ldr	r7, [r3, #0]
d0044756:	4604      	mov	r4, r0
d0044758:	460e      	mov	r6, r1
d004475a:	4690      	mov	r8, r2
d004475c:	b127      	cbz	r7, d0044768 <setvbuf+0x1c>
d004475e:	69bb      	ldr	r3, [r7, #24]
d0044760:	b913      	cbnz	r3, d0044768 <setvbuf+0x1c>
d0044762:	4638      	mov	r0, r7
d0044764:	f000 fad6 	bl	d0044d14 <__sinit>
d0044768:	4b58      	ldr	r3, [pc, #352]	; (d00448cc <setvbuf+0x180>)
d004476a:	429c      	cmp	r4, r3
d004476c:	d167      	bne.n	d004483e <setvbuf+0xf2>
d004476e:	687c      	ldr	r4, [r7, #4]
d0044770:	f1b8 0f02 	cmp.w	r8, #2
d0044774:	d006      	beq.n	d0044784 <setvbuf+0x38>
d0044776:	f1b8 0f01 	cmp.w	r8, #1
d004477a:	f200 809f 	bhi.w	d00448bc <setvbuf+0x170>
d004477e:	2d00      	cmp	r5, #0
d0044780:	f2c0 809c 	blt.w	d00448bc <setvbuf+0x170>
d0044784:	6e63      	ldr	r3, [r4, #100]	; 0x64
d0044786:	07db      	lsls	r3, r3, #31
d0044788:	d405      	bmi.n	d0044796 <setvbuf+0x4a>
d004478a:	89a3      	ldrh	r3, [r4, #12]
d004478c:	0598      	lsls	r0, r3, #22
d004478e:	d402      	bmi.n	d0044796 <setvbuf+0x4a>
d0044790:	6da0      	ldr	r0, [r4, #88]	; 0x58
d0044792:	f000 fb5d 	bl	d0044e50 <__retarget_lock_acquire_recursive>
d0044796:	4621      	mov	r1, r4
d0044798:	4638      	mov	r0, r7
d004479a:	f000 fa27 	bl	d0044bec <_fflush_r>
d004479e:	6b61      	ldr	r1, [r4, #52]	; 0x34
d00447a0:	b141      	cbz	r1, d00447b4 <setvbuf+0x68>
d00447a2:	f104 0344 	add.w	r3, r4, #68	; 0x44
d00447a6:	4299      	cmp	r1, r3
d00447a8:	d002      	beq.n	d00447b0 <setvbuf+0x64>
d00447aa:	4638      	mov	r0, r7
d00447ac:	f7ff fe8e 	bl	d00444cc <_free_r>
d00447b0:	2300      	movs	r3, #0
d00447b2:	6363      	str	r3, [r4, #52]	; 0x34
d00447b4:	2300      	movs	r3, #0
d00447b6:	61a3      	str	r3, [r4, #24]
d00447b8:	6063      	str	r3, [r4, #4]
d00447ba:	89a3      	ldrh	r3, [r4, #12]
d00447bc:	0619      	lsls	r1, r3, #24
d00447be:	d503      	bpl.n	d00447c8 <setvbuf+0x7c>
d00447c0:	6921      	ldr	r1, [r4, #16]
d00447c2:	4638      	mov	r0, r7
d00447c4:	f7ff fe82 	bl	d00444cc <_free_r>
d00447c8:	89a3      	ldrh	r3, [r4, #12]
d00447ca:	f423 634a 	bic.w	r3, r3, #3232	; 0xca0
d00447ce:	f023 0303 	bic.w	r3, r3, #3
d00447d2:	f1b8 0f02 	cmp.w	r8, #2
d00447d6:	81a3      	strh	r3, [r4, #12]
d00447d8:	d06c      	beq.n	d00448b4 <setvbuf+0x168>
d00447da:	ab01      	add	r3, sp, #4
d00447dc:	466a      	mov	r2, sp
d00447de:	4621      	mov	r1, r4
d00447e0:	4638      	mov	r0, r7
d00447e2:	f000 fb37 	bl	d0044e54 <__swhatbuf_r>
d00447e6:	89a3      	ldrh	r3, [r4, #12]
d00447e8:	4318      	orrs	r0, r3
d00447ea:	81a0      	strh	r0, [r4, #12]
d00447ec:	2d00      	cmp	r5, #0
d00447ee:	d130      	bne.n	d0044852 <setvbuf+0x106>
d00447f0:	9d00      	ldr	r5, [sp, #0]
d00447f2:	4628      	mov	r0, r5
d00447f4:	f7ff fe52 	bl	d004449c <malloc>
d00447f8:	4606      	mov	r6, r0
d00447fa:	2800      	cmp	r0, #0
d00447fc:	d155      	bne.n	d00448aa <setvbuf+0x15e>
d00447fe:	f8dd 9000 	ldr.w	r9, [sp]
d0044802:	45a9      	cmp	r9, r5
d0044804:	d14a      	bne.n	d004489c <setvbuf+0x150>
d0044806:	f04f 35ff 	mov.w	r5, #4294967295	; 0xffffffff
d004480a:	2200      	movs	r2, #0
d004480c:	60a2      	str	r2, [r4, #8]
d004480e:	f104 0247 	add.w	r2, r4, #71	; 0x47
d0044812:	6022      	str	r2, [r4, #0]
d0044814:	6122      	str	r2, [r4, #16]
d0044816:	2201      	movs	r2, #1
d0044818:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
d004481c:	6162      	str	r2, [r4, #20]
d004481e:	6e62      	ldr	r2, [r4, #100]	; 0x64
d0044820:	f043 0302 	orr.w	r3, r3, #2
d0044824:	07d2      	lsls	r2, r2, #31
d0044826:	81a3      	strh	r3, [r4, #12]
d0044828:	d405      	bmi.n	d0044836 <setvbuf+0xea>
d004482a:	f413 7f00 	tst.w	r3, #512	; 0x200
d004482e:	d102      	bne.n	d0044836 <setvbuf+0xea>
d0044830:	6da0      	ldr	r0, [r4, #88]	; 0x58
d0044832:	f000 fb0e 	bl	d0044e52 <__retarget_lock_release_recursive>
d0044836:	4628      	mov	r0, r5
d0044838:	b003      	add	sp, #12
d004483a:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
d004483e:	4b24      	ldr	r3, [pc, #144]	; (d00448d0 <setvbuf+0x184>)
d0044840:	429c      	cmp	r4, r3
d0044842:	d101      	bne.n	d0044848 <setvbuf+0xfc>
d0044844:	68bc      	ldr	r4, [r7, #8]
d0044846:	e793      	b.n	d0044770 <setvbuf+0x24>
d0044848:	4b22      	ldr	r3, [pc, #136]	; (d00448d4 <setvbuf+0x188>)
d004484a:	429c      	cmp	r4, r3
d004484c:	bf08      	it	eq
d004484e:	68fc      	ldreq	r4, [r7, #12]
d0044850:	e78e      	b.n	d0044770 <setvbuf+0x24>
d0044852:	2e00      	cmp	r6, #0
d0044854:	d0cd      	beq.n	d00447f2 <setvbuf+0xa6>
d0044856:	69bb      	ldr	r3, [r7, #24]
d0044858:	b913      	cbnz	r3, d0044860 <setvbuf+0x114>
d004485a:	4638      	mov	r0, r7
d004485c:	f000 fa5a 	bl	d0044d14 <__sinit>
d0044860:	f1b8 0f01 	cmp.w	r8, #1
d0044864:	bf08      	it	eq
d0044866:	89a3      	ldrheq	r3, [r4, #12]
d0044868:	6026      	str	r6, [r4, #0]
d004486a:	bf04      	itt	eq
d004486c:	f043 0301 	orreq.w	r3, r3, #1
d0044870:	81a3      	strheq	r3, [r4, #12]
d0044872:	89a2      	ldrh	r2, [r4, #12]
d0044874:	f012 0308 	ands.w	r3, r2, #8
d0044878:	e9c4 6504 	strd	r6, r5, [r4, #16]
d004487c:	d01c      	beq.n	d00448b8 <setvbuf+0x16c>
d004487e:	07d3      	lsls	r3, r2, #31
d0044880:	bf41      	itttt	mi
d0044882:	2300      	movmi	r3, #0
d0044884:	426d      	negmi	r5, r5
d0044886:	60a3      	strmi	r3, [r4, #8]
d0044888:	61a5      	strmi	r5, [r4, #24]
d004488a:	bf58      	it	pl
d004488c:	60a5      	strpl	r5, [r4, #8]
d004488e:	6e65      	ldr	r5, [r4, #100]	; 0x64
d0044890:	f015 0501 	ands.w	r5, r5, #1
d0044894:	d115      	bne.n	d00448c2 <setvbuf+0x176>
d0044896:	f412 7f00 	tst.w	r2, #512	; 0x200
d004489a:	e7c8      	b.n	d004482e <setvbuf+0xe2>
d004489c:	4648      	mov	r0, r9
d004489e:	f7ff fdfd 	bl	d004449c <malloc>
d00448a2:	4606      	mov	r6, r0
d00448a4:	2800      	cmp	r0, #0
d00448a6:	d0ae      	beq.n	d0044806 <setvbuf+0xba>
d00448a8:	464d      	mov	r5, r9
d00448aa:	89a3      	ldrh	r3, [r4, #12]
d00448ac:	f043 0380 	orr.w	r3, r3, #128	; 0x80
d00448b0:	81a3      	strh	r3, [r4, #12]
d00448b2:	e7d0      	b.n	d0044856 <setvbuf+0x10a>
d00448b4:	2500      	movs	r5, #0
d00448b6:	e7a8      	b.n	d004480a <setvbuf+0xbe>
d00448b8:	60a3      	str	r3, [r4, #8]
d00448ba:	e7e8      	b.n	d004488e <setvbuf+0x142>
d00448bc:	f04f 35ff 	mov.w	r5, #4294967295	; 0xffffffff
d00448c0:	e7b9      	b.n	d0044836 <setvbuf+0xea>
d00448c2:	2500      	movs	r5, #0
d00448c4:	e7b7      	b.n	d0044836 <setvbuf+0xea>
d00448c6:	bf00      	nop
d00448c8:	d0046474 	.word	0xd0046474
d00448cc:	d00463c0 	.word	0xd00463c0
d00448d0:	d00463e0 	.word	0xd00463e0
d00448d4:	d00463a0 	.word	0xd00463a0

d00448d8 <siprintf>:
d00448d8:	b40e      	push	{r1, r2, r3}
d00448da:	b500      	push	{lr}
d00448dc:	b09c      	sub	sp, #112	; 0x70
d00448de:	ab1d      	add	r3, sp, #116	; 0x74
d00448e0:	9002      	str	r0, [sp, #8]
d00448e2:	9006      	str	r0, [sp, #24]
d00448e4:	f06f 4100 	mvn.w	r1, #2147483648	; 0x80000000
d00448e8:	4809      	ldr	r0, [pc, #36]	; (d0044910 <siprintf+0x38>)
d00448ea:	9107      	str	r1, [sp, #28]
d00448ec:	9104      	str	r1, [sp, #16]
d00448ee:	4909      	ldr	r1, [pc, #36]	; (d0044914 <siprintf+0x3c>)
d00448f0:	f853 2b04 	ldr.w	r2, [r3], #4
d00448f4:	9105      	str	r1, [sp, #20]
d00448f6:	6800      	ldr	r0, [r0, #0]
d00448f8:	9301      	str	r3, [sp, #4]
d00448fa:	a902      	add	r1, sp, #8
d00448fc:	f000 fb76 	bl	d0044fec <_svfiprintf_r>
d0044900:	9b02      	ldr	r3, [sp, #8]
d0044902:	2200      	movs	r2, #0
d0044904:	701a      	strb	r2, [r3, #0]
d0044906:	b01c      	add	sp, #112	; 0x70
d0044908:	f85d eb04 	ldr.w	lr, [sp], #4
d004490c:	b003      	add	sp, #12
d004490e:	4770      	bx	lr
d0044910:	d0046474 	.word	0xd0046474
d0044914:	ffff0208 	.word	0xffff0208

d0044918 <strcmp>:
d0044918:	f810 2b01 	ldrb.w	r2, [r0], #1
d004491c:	f811 3b01 	ldrb.w	r3, [r1], #1
d0044920:	2a01      	cmp	r2, #1
d0044922:	bf28      	it	cs
d0044924:	429a      	cmpcs	r2, r3
d0044926:	d0f7      	beq.n	d0044918 <strcmp>
d0044928:	1ad0      	subs	r0, r2, r3
d004492a:	4770      	bx	lr

d004492c <strlen>:
d004492c:	4603      	mov	r3, r0
d004492e:	f813 2b01 	ldrb.w	r2, [r3], #1
d0044932:	2a00      	cmp	r2, #0
d0044934:	d1fb      	bne.n	d004492e <strlen+0x2>
d0044936:	1a18      	subs	r0, r3, r0
d0044938:	3801      	subs	r0, #1
d004493a:	4770      	bx	lr

d004493c <strncmp>:
d004493c:	b510      	push	{r4, lr}
d004493e:	b16a      	cbz	r2, d004495c <strncmp+0x20>
d0044940:	3901      	subs	r1, #1
d0044942:	1884      	adds	r4, r0, r2
d0044944:	f810 3b01 	ldrb.w	r3, [r0], #1
d0044948:	f811 2f01 	ldrb.w	r2, [r1, #1]!
d004494c:	4293      	cmp	r3, r2
d004494e:	d103      	bne.n	d0044958 <strncmp+0x1c>
d0044950:	42a0      	cmp	r0, r4
d0044952:	d001      	beq.n	d0044958 <strncmp+0x1c>
d0044954:	2b00      	cmp	r3, #0
d0044956:	d1f5      	bne.n	d0044944 <strncmp+0x8>
d0044958:	1a98      	subs	r0, r3, r2
d004495a:	bd10      	pop	{r4, pc}
d004495c:	4610      	mov	r0, r2
d004495e:	e7fc      	b.n	d004495a <strncmp+0x1e>

d0044960 <__swbuf_r>:
d0044960:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d0044962:	460e      	mov	r6, r1
d0044964:	4614      	mov	r4, r2
d0044966:	4605      	mov	r5, r0
d0044968:	b118      	cbz	r0, d0044972 <__swbuf_r+0x12>
d004496a:	6983      	ldr	r3, [r0, #24]
d004496c:	b90b      	cbnz	r3, d0044972 <__swbuf_r+0x12>
d004496e:	f000 f9d1 	bl	d0044d14 <__sinit>
d0044972:	4b21      	ldr	r3, [pc, #132]	; (d00449f8 <__swbuf_r+0x98>)
d0044974:	429c      	cmp	r4, r3
d0044976:	d12b      	bne.n	d00449d0 <__swbuf_r+0x70>
d0044978:	686c      	ldr	r4, [r5, #4]
d004497a:	69a3      	ldr	r3, [r4, #24]
d004497c:	60a3      	str	r3, [r4, #8]
d004497e:	89a3      	ldrh	r3, [r4, #12]
d0044980:	071a      	lsls	r2, r3, #28
d0044982:	d52f      	bpl.n	d00449e4 <__swbuf_r+0x84>
d0044984:	6923      	ldr	r3, [r4, #16]
d0044986:	b36b      	cbz	r3, d00449e4 <__swbuf_r+0x84>
d0044988:	6923      	ldr	r3, [r4, #16]
d004498a:	6820      	ldr	r0, [r4, #0]
d004498c:	1ac0      	subs	r0, r0, r3
d004498e:	6963      	ldr	r3, [r4, #20]
d0044990:	b2f6      	uxtb	r6, r6
d0044992:	4283      	cmp	r3, r0
d0044994:	4637      	mov	r7, r6
d0044996:	dc04      	bgt.n	d00449a2 <__swbuf_r+0x42>
d0044998:	4621      	mov	r1, r4
d004499a:	4628      	mov	r0, r5
d004499c:	f000 f926 	bl	d0044bec <_fflush_r>
d00449a0:	bb30      	cbnz	r0, d00449f0 <__swbuf_r+0x90>
d00449a2:	68a3      	ldr	r3, [r4, #8]
d00449a4:	3b01      	subs	r3, #1
d00449a6:	60a3      	str	r3, [r4, #8]
d00449a8:	6823      	ldr	r3, [r4, #0]
d00449aa:	1c5a      	adds	r2, r3, #1
d00449ac:	6022      	str	r2, [r4, #0]
d00449ae:	701e      	strb	r6, [r3, #0]
d00449b0:	6963      	ldr	r3, [r4, #20]
d00449b2:	3001      	adds	r0, #1
d00449b4:	4283      	cmp	r3, r0
d00449b6:	d004      	beq.n	d00449c2 <__swbuf_r+0x62>
d00449b8:	89a3      	ldrh	r3, [r4, #12]
d00449ba:	07db      	lsls	r3, r3, #31
d00449bc:	d506      	bpl.n	d00449cc <__swbuf_r+0x6c>
d00449be:	2e0a      	cmp	r6, #10
d00449c0:	d104      	bne.n	d00449cc <__swbuf_r+0x6c>
d00449c2:	4621      	mov	r1, r4
d00449c4:	4628      	mov	r0, r5
d00449c6:	f000 f911 	bl	d0044bec <_fflush_r>
d00449ca:	b988      	cbnz	r0, d00449f0 <__swbuf_r+0x90>
d00449cc:	4638      	mov	r0, r7
d00449ce:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d00449d0:	4b0a      	ldr	r3, [pc, #40]	; (d00449fc <__swbuf_r+0x9c>)
d00449d2:	429c      	cmp	r4, r3
d00449d4:	d101      	bne.n	d00449da <__swbuf_r+0x7a>
d00449d6:	68ac      	ldr	r4, [r5, #8]
d00449d8:	e7cf      	b.n	d004497a <__swbuf_r+0x1a>
d00449da:	4b09      	ldr	r3, [pc, #36]	; (d0044a00 <__swbuf_r+0xa0>)
d00449dc:	429c      	cmp	r4, r3
d00449de:	bf08      	it	eq
d00449e0:	68ec      	ldreq	r4, [r5, #12]
d00449e2:	e7ca      	b.n	d004497a <__swbuf_r+0x1a>
d00449e4:	4621      	mov	r1, r4
d00449e6:	4628      	mov	r0, r5
d00449e8:	f000 f80c 	bl	d0044a04 <__swsetup_r>
d00449ec:	2800      	cmp	r0, #0
d00449ee:	d0cb      	beq.n	d0044988 <__swbuf_r+0x28>
d00449f0:	f04f 37ff 	mov.w	r7, #4294967295	; 0xffffffff
d00449f4:	e7ea      	b.n	d00449cc <__swbuf_r+0x6c>
d00449f6:	bf00      	nop
d00449f8:	d00463c0 	.word	0xd00463c0
d00449fc:	d00463e0 	.word	0xd00463e0
d0044a00:	d00463a0 	.word	0xd00463a0

d0044a04 <__swsetup_r>:
d0044a04:	4b32      	ldr	r3, [pc, #200]	; (d0044ad0 <__swsetup_r+0xcc>)
d0044a06:	b570      	push	{r4, r5, r6, lr}
d0044a08:	681d      	ldr	r5, [r3, #0]
d0044a0a:	4606      	mov	r6, r0
d0044a0c:	460c      	mov	r4, r1
d0044a0e:	b125      	cbz	r5, d0044a1a <__swsetup_r+0x16>
d0044a10:	69ab      	ldr	r3, [r5, #24]
d0044a12:	b913      	cbnz	r3, d0044a1a <__swsetup_r+0x16>
d0044a14:	4628      	mov	r0, r5
d0044a16:	f000 f97d 	bl	d0044d14 <__sinit>
d0044a1a:	4b2e      	ldr	r3, [pc, #184]	; (d0044ad4 <__swsetup_r+0xd0>)
d0044a1c:	429c      	cmp	r4, r3
d0044a1e:	d10f      	bne.n	d0044a40 <__swsetup_r+0x3c>
d0044a20:	686c      	ldr	r4, [r5, #4]
d0044a22:	89a3      	ldrh	r3, [r4, #12]
d0044a24:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
d0044a28:	0719      	lsls	r1, r3, #28
d0044a2a:	d42c      	bmi.n	d0044a86 <__swsetup_r+0x82>
d0044a2c:	06dd      	lsls	r5, r3, #27
d0044a2e:	d411      	bmi.n	d0044a54 <__swsetup_r+0x50>
d0044a30:	2309      	movs	r3, #9
d0044a32:	6033      	str	r3, [r6, #0]
d0044a34:	f042 0340 	orr.w	r3, r2, #64	; 0x40
d0044a38:	81a3      	strh	r3, [r4, #12]
d0044a3a:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d0044a3e:	e03e      	b.n	d0044abe <__swsetup_r+0xba>
d0044a40:	4b25      	ldr	r3, [pc, #148]	; (d0044ad8 <__swsetup_r+0xd4>)
d0044a42:	429c      	cmp	r4, r3
d0044a44:	d101      	bne.n	d0044a4a <__swsetup_r+0x46>
d0044a46:	68ac      	ldr	r4, [r5, #8]
d0044a48:	e7eb      	b.n	d0044a22 <__swsetup_r+0x1e>
d0044a4a:	4b24      	ldr	r3, [pc, #144]	; (d0044adc <__swsetup_r+0xd8>)
d0044a4c:	429c      	cmp	r4, r3
d0044a4e:	bf08      	it	eq
d0044a50:	68ec      	ldreq	r4, [r5, #12]
d0044a52:	e7e6      	b.n	d0044a22 <__swsetup_r+0x1e>
d0044a54:	0758      	lsls	r0, r3, #29
d0044a56:	d512      	bpl.n	d0044a7e <__swsetup_r+0x7a>
d0044a58:	6b61      	ldr	r1, [r4, #52]	; 0x34
d0044a5a:	b141      	cbz	r1, d0044a6e <__swsetup_r+0x6a>
d0044a5c:	f104 0344 	add.w	r3, r4, #68	; 0x44
d0044a60:	4299      	cmp	r1, r3
d0044a62:	d002      	beq.n	d0044a6a <__swsetup_r+0x66>
d0044a64:	4630      	mov	r0, r6
d0044a66:	f7ff fd31 	bl	d00444cc <_free_r>
d0044a6a:	2300      	movs	r3, #0
d0044a6c:	6363      	str	r3, [r4, #52]	; 0x34
d0044a6e:	89a3      	ldrh	r3, [r4, #12]
d0044a70:	f023 0324 	bic.w	r3, r3, #36	; 0x24
d0044a74:	81a3      	strh	r3, [r4, #12]
d0044a76:	2300      	movs	r3, #0
d0044a78:	6063      	str	r3, [r4, #4]
d0044a7a:	6923      	ldr	r3, [r4, #16]
d0044a7c:	6023      	str	r3, [r4, #0]
d0044a7e:	89a3      	ldrh	r3, [r4, #12]
d0044a80:	f043 0308 	orr.w	r3, r3, #8
d0044a84:	81a3      	strh	r3, [r4, #12]
d0044a86:	6923      	ldr	r3, [r4, #16]
d0044a88:	b94b      	cbnz	r3, d0044a9e <__swsetup_r+0x9a>
d0044a8a:	89a3      	ldrh	r3, [r4, #12]
d0044a8c:	f403 7320 	and.w	r3, r3, #640	; 0x280
d0044a90:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
d0044a94:	d003      	beq.n	d0044a9e <__swsetup_r+0x9a>
d0044a96:	4621      	mov	r1, r4
d0044a98:	4630      	mov	r0, r6
d0044a9a:	f000 f9ff 	bl	d0044e9c <__smakebuf_r>
d0044a9e:	89a0      	ldrh	r0, [r4, #12]
d0044aa0:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
d0044aa4:	f010 0301 	ands.w	r3, r0, #1
d0044aa8:	d00a      	beq.n	d0044ac0 <__swsetup_r+0xbc>
d0044aaa:	2300      	movs	r3, #0
d0044aac:	60a3      	str	r3, [r4, #8]
d0044aae:	6963      	ldr	r3, [r4, #20]
d0044ab0:	425b      	negs	r3, r3
d0044ab2:	61a3      	str	r3, [r4, #24]
d0044ab4:	6923      	ldr	r3, [r4, #16]
d0044ab6:	b943      	cbnz	r3, d0044aca <__swsetup_r+0xc6>
d0044ab8:	f010 0080 	ands.w	r0, r0, #128	; 0x80
d0044abc:	d1ba      	bne.n	d0044a34 <__swsetup_r+0x30>
d0044abe:	bd70      	pop	{r4, r5, r6, pc}
d0044ac0:	0781      	lsls	r1, r0, #30
d0044ac2:	bf58      	it	pl
d0044ac4:	6963      	ldrpl	r3, [r4, #20]
d0044ac6:	60a3      	str	r3, [r4, #8]
d0044ac8:	e7f4      	b.n	d0044ab4 <__swsetup_r+0xb0>
d0044aca:	2000      	movs	r0, #0
d0044acc:	e7f7      	b.n	d0044abe <__swsetup_r+0xba>
d0044ace:	bf00      	nop
d0044ad0:	d0046474 	.word	0xd0046474
d0044ad4:	d00463c0 	.word	0xd00463c0
d0044ad8:	d00463e0 	.word	0xd00463e0
d0044adc:	d00463a0 	.word	0xd00463a0

d0044ae0 <__sflush_r>:
d0044ae0:	898a      	ldrh	r2, [r1, #12]
d0044ae2:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
d0044ae6:	4605      	mov	r5, r0
d0044ae8:	0710      	lsls	r0, r2, #28
d0044aea:	460c      	mov	r4, r1
d0044aec:	d458      	bmi.n	d0044ba0 <__sflush_r+0xc0>
d0044aee:	684b      	ldr	r3, [r1, #4]
d0044af0:	2b00      	cmp	r3, #0
d0044af2:	dc05      	bgt.n	d0044b00 <__sflush_r+0x20>
d0044af4:	6c0b      	ldr	r3, [r1, #64]	; 0x40
d0044af6:	2b00      	cmp	r3, #0
d0044af8:	dc02      	bgt.n	d0044b00 <__sflush_r+0x20>
d0044afa:	2000      	movs	r0, #0
d0044afc:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
d0044b00:	6ae6      	ldr	r6, [r4, #44]	; 0x2c
d0044b02:	2e00      	cmp	r6, #0
d0044b04:	d0f9      	beq.n	d0044afa <__sflush_r+0x1a>
d0044b06:	2300      	movs	r3, #0
d0044b08:	f412 5280 	ands.w	r2, r2, #4096	; 0x1000
d0044b0c:	682f      	ldr	r7, [r5, #0]
d0044b0e:	602b      	str	r3, [r5, #0]
d0044b10:	d032      	beq.n	d0044b78 <__sflush_r+0x98>
d0044b12:	6d60      	ldr	r0, [r4, #84]	; 0x54
d0044b14:	89a3      	ldrh	r3, [r4, #12]
d0044b16:	075a      	lsls	r2, r3, #29
d0044b18:	d505      	bpl.n	d0044b26 <__sflush_r+0x46>
d0044b1a:	6863      	ldr	r3, [r4, #4]
d0044b1c:	1ac0      	subs	r0, r0, r3
d0044b1e:	6b63      	ldr	r3, [r4, #52]	; 0x34
d0044b20:	b10b      	cbz	r3, d0044b26 <__sflush_r+0x46>
d0044b22:	6c23      	ldr	r3, [r4, #64]	; 0x40
d0044b24:	1ac0      	subs	r0, r0, r3
d0044b26:	2300      	movs	r3, #0
d0044b28:	4602      	mov	r2, r0
d0044b2a:	6ae6      	ldr	r6, [r4, #44]	; 0x2c
d0044b2c:	6a21      	ldr	r1, [r4, #32]
d0044b2e:	4628      	mov	r0, r5
d0044b30:	47b0      	blx	r6
d0044b32:	1c43      	adds	r3, r0, #1
d0044b34:	89a3      	ldrh	r3, [r4, #12]
d0044b36:	d106      	bne.n	d0044b46 <__sflush_r+0x66>
d0044b38:	6829      	ldr	r1, [r5, #0]
d0044b3a:	291d      	cmp	r1, #29
d0044b3c:	d82c      	bhi.n	d0044b98 <__sflush_r+0xb8>
d0044b3e:	4a2a      	ldr	r2, [pc, #168]	; (d0044be8 <__sflush_r+0x108>)
d0044b40:	40ca      	lsrs	r2, r1
d0044b42:	07d6      	lsls	r6, r2, #31
d0044b44:	d528      	bpl.n	d0044b98 <__sflush_r+0xb8>
d0044b46:	2200      	movs	r2, #0
d0044b48:	6062      	str	r2, [r4, #4]
d0044b4a:	04d9      	lsls	r1, r3, #19
d0044b4c:	6922      	ldr	r2, [r4, #16]
d0044b4e:	6022      	str	r2, [r4, #0]
d0044b50:	d504      	bpl.n	d0044b5c <__sflush_r+0x7c>
d0044b52:	1c42      	adds	r2, r0, #1
d0044b54:	d101      	bne.n	d0044b5a <__sflush_r+0x7a>
d0044b56:	682b      	ldr	r3, [r5, #0]
d0044b58:	b903      	cbnz	r3, d0044b5c <__sflush_r+0x7c>
d0044b5a:	6560      	str	r0, [r4, #84]	; 0x54
d0044b5c:	6b61      	ldr	r1, [r4, #52]	; 0x34
d0044b5e:	602f      	str	r7, [r5, #0]
d0044b60:	2900      	cmp	r1, #0
d0044b62:	d0ca      	beq.n	d0044afa <__sflush_r+0x1a>
d0044b64:	f104 0344 	add.w	r3, r4, #68	; 0x44
d0044b68:	4299      	cmp	r1, r3
d0044b6a:	d002      	beq.n	d0044b72 <__sflush_r+0x92>
d0044b6c:	4628      	mov	r0, r5
d0044b6e:	f7ff fcad 	bl	d00444cc <_free_r>
d0044b72:	2000      	movs	r0, #0
d0044b74:	6360      	str	r0, [r4, #52]	; 0x34
d0044b76:	e7c1      	b.n	d0044afc <__sflush_r+0x1c>
d0044b78:	6a21      	ldr	r1, [r4, #32]
d0044b7a:	2301      	movs	r3, #1
d0044b7c:	4628      	mov	r0, r5
d0044b7e:	47b0      	blx	r6
d0044b80:	1c41      	adds	r1, r0, #1
d0044b82:	d1c7      	bne.n	d0044b14 <__sflush_r+0x34>
d0044b84:	682b      	ldr	r3, [r5, #0]
d0044b86:	2b00      	cmp	r3, #0
d0044b88:	d0c4      	beq.n	d0044b14 <__sflush_r+0x34>
d0044b8a:	2b1d      	cmp	r3, #29
d0044b8c:	d001      	beq.n	d0044b92 <__sflush_r+0xb2>
d0044b8e:	2b16      	cmp	r3, #22
d0044b90:	d101      	bne.n	d0044b96 <__sflush_r+0xb6>
d0044b92:	602f      	str	r7, [r5, #0]
d0044b94:	e7b1      	b.n	d0044afa <__sflush_r+0x1a>
d0044b96:	89a3      	ldrh	r3, [r4, #12]
d0044b98:	f043 0340 	orr.w	r3, r3, #64	; 0x40
d0044b9c:	81a3      	strh	r3, [r4, #12]
d0044b9e:	e7ad      	b.n	d0044afc <__sflush_r+0x1c>
d0044ba0:	690f      	ldr	r7, [r1, #16]
d0044ba2:	2f00      	cmp	r7, #0
d0044ba4:	d0a9      	beq.n	d0044afa <__sflush_r+0x1a>
d0044ba6:	0793      	lsls	r3, r2, #30
d0044ba8:	680e      	ldr	r6, [r1, #0]
d0044baa:	bf08      	it	eq
d0044bac:	694b      	ldreq	r3, [r1, #20]
d0044bae:	600f      	str	r7, [r1, #0]
d0044bb0:	bf18      	it	ne
d0044bb2:	2300      	movne	r3, #0
d0044bb4:	eba6 0807 	sub.w	r8, r6, r7
d0044bb8:	608b      	str	r3, [r1, #8]
d0044bba:	f1b8 0f00 	cmp.w	r8, #0
d0044bbe:	dd9c      	ble.n	d0044afa <__sflush_r+0x1a>
d0044bc0:	6a21      	ldr	r1, [r4, #32]
d0044bc2:	6aa6      	ldr	r6, [r4, #40]	; 0x28
d0044bc4:	4643      	mov	r3, r8
d0044bc6:	463a      	mov	r2, r7
d0044bc8:	4628      	mov	r0, r5
d0044bca:	47b0      	blx	r6
d0044bcc:	2800      	cmp	r0, #0
d0044bce:	dc06      	bgt.n	d0044bde <__sflush_r+0xfe>
d0044bd0:	89a3      	ldrh	r3, [r4, #12]
d0044bd2:	f043 0340 	orr.w	r3, r3, #64	; 0x40
d0044bd6:	81a3      	strh	r3, [r4, #12]
d0044bd8:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d0044bdc:	e78e      	b.n	d0044afc <__sflush_r+0x1c>
d0044bde:	4407      	add	r7, r0
d0044be0:	eba8 0800 	sub.w	r8, r8, r0
d0044be4:	e7e9      	b.n	d0044bba <__sflush_r+0xda>
d0044be6:	bf00      	nop
d0044be8:	20400001 	.word	0x20400001

d0044bec <_fflush_r>:
d0044bec:	b538      	push	{r3, r4, r5, lr}
d0044bee:	690b      	ldr	r3, [r1, #16]
d0044bf0:	4605      	mov	r5, r0
d0044bf2:	460c      	mov	r4, r1
d0044bf4:	b913      	cbnz	r3, d0044bfc <_fflush_r+0x10>
d0044bf6:	2500      	movs	r5, #0
d0044bf8:	4628      	mov	r0, r5
d0044bfa:	bd38      	pop	{r3, r4, r5, pc}
d0044bfc:	b118      	cbz	r0, d0044c06 <_fflush_r+0x1a>
d0044bfe:	6983      	ldr	r3, [r0, #24]
d0044c00:	b90b      	cbnz	r3, d0044c06 <_fflush_r+0x1a>
d0044c02:	f000 f887 	bl	d0044d14 <__sinit>
d0044c06:	4b14      	ldr	r3, [pc, #80]	; (d0044c58 <_fflush_r+0x6c>)
d0044c08:	429c      	cmp	r4, r3
d0044c0a:	d11b      	bne.n	d0044c44 <_fflush_r+0x58>
d0044c0c:	686c      	ldr	r4, [r5, #4]
d0044c0e:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
d0044c12:	2b00      	cmp	r3, #0
d0044c14:	d0ef      	beq.n	d0044bf6 <_fflush_r+0xa>
d0044c16:	6e62      	ldr	r2, [r4, #100]	; 0x64
d0044c18:	07d0      	lsls	r0, r2, #31
d0044c1a:	d404      	bmi.n	d0044c26 <_fflush_r+0x3a>
d0044c1c:	0599      	lsls	r1, r3, #22
d0044c1e:	d402      	bmi.n	d0044c26 <_fflush_r+0x3a>
d0044c20:	6da0      	ldr	r0, [r4, #88]	; 0x58
d0044c22:	f000 f915 	bl	d0044e50 <__retarget_lock_acquire_recursive>
d0044c26:	4628      	mov	r0, r5
d0044c28:	4621      	mov	r1, r4
d0044c2a:	f7ff ff59 	bl	d0044ae0 <__sflush_r>
d0044c2e:	6e63      	ldr	r3, [r4, #100]	; 0x64
d0044c30:	07da      	lsls	r2, r3, #31
d0044c32:	4605      	mov	r5, r0
d0044c34:	d4e0      	bmi.n	d0044bf8 <_fflush_r+0xc>
d0044c36:	89a3      	ldrh	r3, [r4, #12]
d0044c38:	059b      	lsls	r3, r3, #22
d0044c3a:	d4dd      	bmi.n	d0044bf8 <_fflush_r+0xc>
d0044c3c:	6da0      	ldr	r0, [r4, #88]	; 0x58
d0044c3e:	f000 f908 	bl	d0044e52 <__retarget_lock_release_recursive>
d0044c42:	e7d9      	b.n	d0044bf8 <_fflush_r+0xc>
d0044c44:	4b05      	ldr	r3, [pc, #20]	; (d0044c5c <_fflush_r+0x70>)
d0044c46:	429c      	cmp	r4, r3
d0044c48:	d101      	bne.n	d0044c4e <_fflush_r+0x62>
d0044c4a:	68ac      	ldr	r4, [r5, #8]
d0044c4c:	e7df      	b.n	d0044c0e <_fflush_r+0x22>
d0044c4e:	4b04      	ldr	r3, [pc, #16]	; (d0044c60 <_fflush_r+0x74>)
d0044c50:	429c      	cmp	r4, r3
d0044c52:	bf08      	it	eq
d0044c54:	68ec      	ldreq	r4, [r5, #12]
d0044c56:	e7da      	b.n	d0044c0e <_fflush_r+0x22>
d0044c58:	d00463c0 	.word	0xd00463c0
d0044c5c:	d00463e0 	.word	0xd00463e0
d0044c60:	d00463a0 	.word	0xd00463a0

d0044c64 <std>:
d0044c64:	2300      	movs	r3, #0
d0044c66:	b510      	push	{r4, lr}
d0044c68:	4604      	mov	r4, r0
d0044c6a:	e9c0 3300 	strd	r3, r3, [r0]
d0044c6e:	e9c0 3304 	strd	r3, r3, [r0, #16]
d0044c72:	6083      	str	r3, [r0, #8]
d0044c74:	8181      	strh	r1, [r0, #12]
d0044c76:	6643      	str	r3, [r0, #100]	; 0x64
d0044c78:	81c2      	strh	r2, [r0, #14]
d0044c7a:	6183      	str	r3, [r0, #24]
d0044c7c:	4619      	mov	r1, r3
d0044c7e:	2208      	movs	r2, #8
d0044c80:	305c      	adds	r0, #92	; 0x5c
d0044c82:	f7ff fc1b 	bl	d00444bc <memset>
d0044c86:	4b05      	ldr	r3, [pc, #20]	; (d0044c9c <std+0x38>)
d0044c88:	6263      	str	r3, [r4, #36]	; 0x24
d0044c8a:	4b05      	ldr	r3, [pc, #20]	; (d0044ca0 <std+0x3c>)
d0044c8c:	62a3      	str	r3, [r4, #40]	; 0x28
d0044c8e:	4b05      	ldr	r3, [pc, #20]	; (d0044ca4 <std+0x40>)
d0044c90:	62e3      	str	r3, [r4, #44]	; 0x2c
d0044c92:	4b05      	ldr	r3, [pc, #20]	; (d0044ca8 <std+0x44>)
d0044c94:	6224      	str	r4, [r4, #32]
d0044c96:	6323      	str	r3, [r4, #48]	; 0x30
d0044c98:	bd10      	pop	{r4, pc}
d0044c9a:	bf00      	nop
d0044c9c:	d00457c9 	.word	0xd00457c9
d0044ca0:	d00457eb 	.word	0xd00457eb
d0044ca4:	d0045823 	.word	0xd0045823
d0044ca8:	d0045847 	.word	0xd0045847

d0044cac <_cleanup_r>:
d0044cac:	4901      	ldr	r1, [pc, #4]	; (d0044cb4 <_cleanup_r+0x8>)
d0044cae:	f000 b8af 	b.w	d0044e10 <_fwalk_reent>
d0044cb2:	bf00      	nop
d0044cb4:	d0044bed 	.word	0xd0044bed

d0044cb8 <__sfmoreglue>:
d0044cb8:	b570      	push	{r4, r5, r6, lr}
d0044cba:	1e4a      	subs	r2, r1, #1
d0044cbc:	2568      	movs	r5, #104	; 0x68
d0044cbe:	4355      	muls	r5, r2
d0044cc0:	460e      	mov	r6, r1
d0044cc2:	f105 0174 	add.w	r1, r5, #116	; 0x74
d0044cc6:	f7ff fc51 	bl	d004456c <_malloc_r>
d0044cca:	4604      	mov	r4, r0
d0044ccc:	b140      	cbz	r0, d0044ce0 <__sfmoreglue+0x28>
d0044cce:	2100      	movs	r1, #0
d0044cd0:	e9c0 1600 	strd	r1, r6, [r0]
d0044cd4:	300c      	adds	r0, #12
d0044cd6:	60a0      	str	r0, [r4, #8]
d0044cd8:	f105 0268 	add.w	r2, r5, #104	; 0x68
d0044cdc:	f7ff fbee 	bl	d00444bc <memset>
d0044ce0:	4620      	mov	r0, r4
d0044ce2:	bd70      	pop	{r4, r5, r6, pc}

d0044ce4 <__sfp_lock_acquire>:
d0044ce4:	4801      	ldr	r0, [pc, #4]	; (d0044cec <__sfp_lock_acquire+0x8>)
d0044ce6:	f000 b8b3 	b.w	d0044e50 <__retarget_lock_acquire_recursive>
d0044cea:	bf00      	nop
d0044cec:	d0047cf8 	.word	0xd0047cf8

d0044cf0 <__sfp_lock_release>:
d0044cf0:	4801      	ldr	r0, [pc, #4]	; (d0044cf8 <__sfp_lock_release+0x8>)
d0044cf2:	f000 b8ae 	b.w	d0044e52 <__retarget_lock_release_recursive>
d0044cf6:	bf00      	nop
d0044cf8:	d0047cf8 	.word	0xd0047cf8

d0044cfc <__sinit_lock_acquire>:
d0044cfc:	4801      	ldr	r0, [pc, #4]	; (d0044d04 <__sinit_lock_acquire+0x8>)
d0044cfe:	f000 b8a7 	b.w	d0044e50 <__retarget_lock_acquire_recursive>
d0044d02:	bf00      	nop
d0044d04:	d0047cf3 	.word	0xd0047cf3

d0044d08 <__sinit_lock_release>:
d0044d08:	4801      	ldr	r0, [pc, #4]	; (d0044d10 <__sinit_lock_release+0x8>)
d0044d0a:	f000 b8a2 	b.w	d0044e52 <__retarget_lock_release_recursive>
d0044d0e:	bf00      	nop
d0044d10:	d0047cf3 	.word	0xd0047cf3

d0044d14 <__sinit>:
d0044d14:	b510      	push	{r4, lr}
d0044d16:	4604      	mov	r4, r0
d0044d18:	f7ff fff0 	bl	d0044cfc <__sinit_lock_acquire>
d0044d1c:	69a3      	ldr	r3, [r4, #24]
d0044d1e:	b11b      	cbz	r3, d0044d28 <__sinit+0x14>
d0044d20:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
d0044d24:	f7ff bff0 	b.w	d0044d08 <__sinit_lock_release>
d0044d28:	e9c4 3312 	strd	r3, r3, [r4, #72]	; 0x48
d0044d2c:	6523      	str	r3, [r4, #80]	; 0x50
d0044d2e:	4b13      	ldr	r3, [pc, #76]	; (d0044d7c <__sinit+0x68>)
d0044d30:	4a13      	ldr	r2, [pc, #76]	; (d0044d80 <__sinit+0x6c>)
d0044d32:	681b      	ldr	r3, [r3, #0]
d0044d34:	62a2      	str	r2, [r4, #40]	; 0x28
d0044d36:	42a3      	cmp	r3, r4
d0044d38:	bf04      	itt	eq
d0044d3a:	2301      	moveq	r3, #1
d0044d3c:	61a3      	streq	r3, [r4, #24]
d0044d3e:	4620      	mov	r0, r4
d0044d40:	f000 f820 	bl	d0044d84 <__sfp>
d0044d44:	6060      	str	r0, [r4, #4]
d0044d46:	4620      	mov	r0, r4
d0044d48:	f000 f81c 	bl	d0044d84 <__sfp>
d0044d4c:	60a0      	str	r0, [r4, #8]
d0044d4e:	4620      	mov	r0, r4
d0044d50:	f000 f818 	bl	d0044d84 <__sfp>
d0044d54:	2200      	movs	r2, #0
d0044d56:	60e0      	str	r0, [r4, #12]
d0044d58:	2104      	movs	r1, #4
d0044d5a:	6860      	ldr	r0, [r4, #4]
d0044d5c:	f7ff ff82 	bl	d0044c64 <std>
d0044d60:	68a0      	ldr	r0, [r4, #8]
d0044d62:	2201      	movs	r2, #1
d0044d64:	2109      	movs	r1, #9
d0044d66:	f7ff ff7d 	bl	d0044c64 <std>
d0044d6a:	68e0      	ldr	r0, [r4, #12]
d0044d6c:	2202      	movs	r2, #2
d0044d6e:	2112      	movs	r1, #18
d0044d70:	f7ff ff78 	bl	d0044c64 <std>
d0044d74:	2301      	movs	r3, #1
d0044d76:	61a3      	str	r3, [r4, #24]
d0044d78:	e7d2      	b.n	d0044d20 <__sinit+0xc>
d0044d7a:	bf00      	nop
d0044d7c:	d004639c 	.word	0xd004639c
d0044d80:	d0044cad 	.word	0xd0044cad

d0044d84 <__sfp>:
d0044d84:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d0044d86:	4607      	mov	r7, r0
d0044d88:	f7ff ffac 	bl	d0044ce4 <__sfp_lock_acquire>
d0044d8c:	4b1e      	ldr	r3, [pc, #120]	; (d0044e08 <__sfp+0x84>)
d0044d8e:	681e      	ldr	r6, [r3, #0]
d0044d90:	69b3      	ldr	r3, [r6, #24]
d0044d92:	b913      	cbnz	r3, d0044d9a <__sfp+0x16>
d0044d94:	4630      	mov	r0, r6
d0044d96:	f7ff ffbd 	bl	d0044d14 <__sinit>
d0044d9a:	3648      	adds	r6, #72	; 0x48
d0044d9c:	e9d6 3401 	ldrd	r3, r4, [r6, #4]
d0044da0:	3b01      	subs	r3, #1
d0044da2:	d503      	bpl.n	d0044dac <__sfp+0x28>
d0044da4:	6833      	ldr	r3, [r6, #0]
d0044da6:	b30b      	cbz	r3, d0044dec <__sfp+0x68>
d0044da8:	6836      	ldr	r6, [r6, #0]
d0044daa:	e7f7      	b.n	d0044d9c <__sfp+0x18>
d0044dac:	f9b4 500c 	ldrsh.w	r5, [r4, #12]
d0044db0:	b9d5      	cbnz	r5, d0044de8 <__sfp+0x64>
d0044db2:	4b16      	ldr	r3, [pc, #88]	; (d0044e0c <__sfp+0x88>)
d0044db4:	60e3      	str	r3, [r4, #12]
d0044db6:	f104 0058 	add.w	r0, r4, #88	; 0x58
d0044dba:	6665      	str	r5, [r4, #100]	; 0x64
d0044dbc:	f000 f847 	bl	d0044e4e <__retarget_lock_init_recursive>
d0044dc0:	f7ff ff96 	bl	d0044cf0 <__sfp_lock_release>
d0044dc4:	e9c4 5501 	strd	r5, r5, [r4, #4]
d0044dc8:	e9c4 5504 	strd	r5, r5, [r4, #16]
d0044dcc:	6025      	str	r5, [r4, #0]
d0044dce:	61a5      	str	r5, [r4, #24]
d0044dd0:	2208      	movs	r2, #8
d0044dd2:	4629      	mov	r1, r5
d0044dd4:	f104 005c 	add.w	r0, r4, #92	; 0x5c
d0044dd8:	f7ff fb70 	bl	d00444bc <memset>
d0044ddc:	e9c4 550d 	strd	r5, r5, [r4, #52]	; 0x34
d0044de0:	e9c4 5512 	strd	r5, r5, [r4, #72]	; 0x48
d0044de4:	4620      	mov	r0, r4
d0044de6:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d0044de8:	3468      	adds	r4, #104	; 0x68
d0044dea:	e7d9      	b.n	d0044da0 <__sfp+0x1c>
d0044dec:	2104      	movs	r1, #4
d0044dee:	4638      	mov	r0, r7
d0044df0:	f7ff ff62 	bl	d0044cb8 <__sfmoreglue>
d0044df4:	4604      	mov	r4, r0
d0044df6:	6030      	str	r0, [r6, #0]
d0044df8:	2800      	cmp	r0, #0
d0044dfa:	d1d5      	bne.n	d0044da8 <__sfp+0x24>
d0044dfc:	f7ff ff78 	bl	d0044cf0 <__sfp_lock_release>
d0044e00:	230c      	movs	r3, #12
d0044e02:	603b      	str	r3, [r7, #0]
d0044e04:	e7ee      	b.n	d0044de4 <__sfp+0x60>
d0044e06:	bf00      	nop
d0044e08:	d004639c 	.word	0xd004639c
d0044e0c:	ffff0001 	.word	0xffff0001

d0044e10 <_fwalk_reent>:
d0044e10:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
d0044e14:	4606      	mov	r6, r0
d0044e16:	4688      	mov	r8, r1
d0044e18:	f100 0448 	add.w	r4, r0, #72	; 0x48
d0044e1c:	2700      	movs	r7, #0
d0044e1e:	e9d4 9501 	ldrd	r9, r5, [r4, #4]
d0044e22:	f1b9 0901 	subs.w	r9, r9, #1
d0044e26:	d505      	bpl.n	d0044e34 <_fwalk_reent+0x24>
d0044e28:	6824      	ldr	r4, [r4, #0]
d0044e2a:	2c00      	cmp	r4, #0
d0044e2c:	d1f7      	bne.n	d0044e1e <_fwalk_reent+0xe>
d0044e2e:	4638      	mov	r0, r7
d0044e30:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
d0044e34:	89ab      	ldrh	r3, [r5, #12]
d0044e36:	2b01      	cmp	r3, #1
d0044e38:	d907      	bls.n	d0044e4a <_fwalk_reent+0x3a>
d0044e3a:	f9b5 300e 	ldrsh.w	r3, [r5, #14]
d0044e3e:	3301      	adds	r3, #1
d0044e40:	d003      	beq.n	d0044e4a <_fwalk_reent+0x3a>
d0044e42:	4629      	mov	r1, r5
d0044e44:	4630      	mov	r0, r6
d0044e46:	47c0      	blx	r8
d0044e48:	4307      	orrs	r7, r0
d0044e4a:	3568      	adds	r5, #104	; 0x68
d0044e4c:	e7e9      	b.n	d0044e22 <_fwalk_reent+0x12>

d0044e4e <__retarget_lock_init_recursive>:
d0044e4e:	4770      	bx	lr

d0044e50 <__retarget_lock_acquire_recursive>:
d0044e50:	4770      	bx	lr

d0044e52 <__retarget_lock_release_recursive>:
d0044e52:	4770      	bx	lr

d0044e54 <__swhatbuf_r>:
d0044e54:	b570      	push	{r4, r5, r6, lr}
d0044e56:	460e      	mov	r6, r1
d0044e58:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d0044e5c:	2900      	cmp	r1, #0
d0044e5e:	b096      	sub	sp, #88	; 0x58
d0044e60:	4614      	mov	r4, r2
d0044e62:	461d      	mov	r5, r3
d0044e64:	da07      	bge.n	d0044e76 <__swhatbuf_r+0x22>
d0044e66:	2300      	movs	r3, #0
d0044e68:	602b      	str	r3, [r5, #0]
d0044e6a:	89b3      	ldrh	r3, [r6, #12]
d0044e6c:	061a      	lsls	r2, r3, #24
d0044e6e:	d410      	bmi.n	d0044e92 <__swhatbuf_r+0x3e>
d0044e70:	f44f 6380 	mov.w	r3, #1024	; 0x400
d0044e74:	e00e      	b.n	d0044e94 <__swhatbuf_r+0x40>
d0044e76:	466a      	mov	r2, sp
d0044e78:	f000 fcfa 	bl	d0045870 <_fstat_r>
d0044e7c:	2800      	cmp	r0, #0
d0044e7e:	dbf2      	blt.n	d0044e66 <__swhatbuf_r+0x12>
d0044e80:	9a01      	ldr	r2, [sp, #4]
d0044e82:	f402 4270 	and.w	r2, r2, #61440	; 0xf000
d0044e86:	f5a2 5300 	sub.w	r3, r2, #8192	; 0x2000
d0044e8a:	425a      	negs	r2, r3
d0044e8c:	415a      	adcs	r2, r3
d0044e8e:	602a      	str	r2, [r5, #0]
d0044e90:	e7ee      	b.n	d0044e70 <__swhatbuf_r+0x1c>
d0044e92:	2340      	movs	r3, #64	; 0x40
d0044e94:	2000      	movs	r0, #0
d0044e96:	6023      	str	r3, [r4, #0]
d0044e98:	b016      	add	sp, #88	; 0x58
d0044e9a:	bd70      	pop	{r4, r5, r6, pc}

d0044e9c <__smakebuf_r>:
d0044e9c:	898b      	ldrh	r3, [r1, #12]
d0044e9e:	b573      	push	{r0, r1, r4, r5, r6, lr}
d0044ea0:	079d      	lsls	r5, r3, #30
d0044ea2:	4606      	mov	r6, r0
d0044ea4:	460c      	mov	r4, r1
d0044ea6:	d507      	bpl.n	d0044eb8 <__smakebuf_r+0x1c>
d0044ea8:	f104 0347 	add.w	r3, r4, #71	; 0x47
d0044eac:	6023      	str	r3, [r4, #0]
d0044eae:	6123      	str	r3, [r4, #16]
d0044eb0:	2301      	movs	r3, #1
d0044eb2:	6163      	str	r3, [r4, #20]
d0044eb4:	b002      	add	sp, #8
d0044eb6:	bd70      	pop	{r4, r5, r6, pc}
d0044eb8:	ab01      	add	r3, sp, #4
d0044eba:	466a      	mov	r2, sp
d0044ebc:	f7ff ffca 	bl	d0044e54 <__swhatbuf_r>
d0044ec0:	9900      	ldr	r1, [sp, #0]
d0044ec2:	4605      	mov	r5, r0
d0044ec4:	4630      	mov	r0, r6
d0044ec6:	f7ff fb51 	bl	d004456c <_malloc_r>
d0044eca:	b948      	cbnz	r0, d0044ee0 <__smakebuf_r+0x44>
d0044ecc:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
d0044ed0:	059a      	lsls	r2, r3, #22
d0044ed2:	d4ef      	bmi.n	d0044eb4 <__smakebuf_r+0x18>
d0044ed4:	f023 0303 	bic.w	r3, r3, #3
d0044ed8:	f043 0302 	orr.w	r3, r3, #2
d0044edc:	81a3      	strh	r3, [r4, #12]
d0044ede:	e7e3      	b.n	d0044ea8 <__smakebuf_r+0xc>
d0044ee0:	4b0d      	ldr	r3, [pc, #52]	; (d0044f18 <__smakebuf_r+0x7c>)
d0044ee2:	62b3      	str	r3, [r6, #40]	; 0x28
d0044ee4:	89a3      	ldrh	r3, [r4, #12]
d0044ee6:	6020      	str	r0, [r4, #0]
d0044ee8:	f043 0380 	orr.w	r3, r3, #128	; 0x80
d0044eec:	81a3      	strh	r3, [r4, #12]
d0044eee:	9b00      	ldr	r3, [sp, #0]
d0044ef0:	6163      	str	r3, [r4, #20]
d0044ef2:	9b01      	ldr	r3, [sp, #4]
d0044ef4:	6120      	str	r0, [r4, #16]
d0044ef6:	b15b      	cbz	r3, d0044f10 <__smakebuf_r+0x74>
d0044ef8:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
d0044efc:	4630      	mov	r0, r6
d0044efe:	f000 fcc9 	bl	d0045894 <_isatty_r>
d0044f02:	b128      	cbz	r0, d0044f10 <__smakebuf_r+0x74>
d0044f04:	89a3      	ldrh	r3, [r4, #12]
d0044f06:	f023 0303 	bic.w	r3, r3, #3
d0044f0a:	f043 0301 	orr.w	r3, r3, #1
d0044f0e:	81a3      	strh	r3, [r4, #12]
d0044f10:	89a0      	ldrh	r0, [r4, #12]
d0044f12:	4305      	orrs	r5, r0
d0044f14:	81a5      	strh	r5, [r4, #12]
d0044f16:	e7cd      	b.n	d0044eb4 <__smakebuf_r+0x18>
d0044f18:	d0044cad 	.word	0xd0044cad

d0044f1c <__malloc_lock>:
d0044f1c:	4801      	ldr	r0, [pc, #4]	; (d0044f24 <__malloc_lock+0x8>)
d0044f1e:	f7ff bf97 	b.w	d0044e50 <__retarget_lock_acquire_recursive>
d0044f22:	bf00      	nop
d0044f24:	d0047cf4 	.word	0xd0047cf4

d0044f28 <__malloc_unlock>:
d0044f28:	4801      	ldr	r0, [pc, #4]	; (d0044f30 <__malloc_unlock+0x8>)
d0044f2a:	f7ff bf92 	b.w	d0044e52 <__retarget_lock_release_recursive>
d0044f2e:	bf00      	nop
d0044f30:	d0047cf4 	.word	0xd0047cf4

d0044f34 <__ssputs_r>:
d0044f34:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
d0044f38:	688e      	ldr	r6, [r1, #8]
d0044f3a:	429e      	cmp	r6, r3
d0044f3c:	4682      	mov	sl, r0
d0044f3e:	460c      	mov	r4, r1
d0044f40:	4690      	mov	r8, r2
d0044f42:	461f      	mov	r7, r3
d0044f44:	d838      	bhi.n	d0044fb8 <__ssputs_r+0x84>
d0044f46:	898a      	ldrh	r2, [r1, #12]
d0044f48:	f412 6f90 	tst.w	r2, #1152	; 0x480
d0044f4c:	d032      	beq.n	d0044fb4 <__ssputs_r+0x80>
d0044f4e:	6825      	ldr	r5, [r4, #0]
d0044f50:	6909      	ldr	r1, [r1, #16]
d0044f52:	eba5 0901 	sub.w	r9, r5, r1
d0044f56:	6965      	ldr	r5, [r4, #20]
d0044f58:	eb05 0545 	add.w	r5, r5, r5, lsl #1
d0044f5c:	eb05 75d5 	add.w	r5, r5, r5, lsr #31
d0044f60:	3301      	adds	r3, #1
d0044f62:	444b      	add	r3, r9
d0044f64:	106d      	asrs	r5, r5, #1
d0044f66:	429d      	cmp	r5, r3
d0044f68:	bf38      	it	cc
d0044f6a:	461d      	movcc	r5, r3
d0044f6c:	0553      	lsls	r3, r2, #21
d0044f6e:	d531      	bpl.n	d0044fd4 <__ssputs_r+0xa0>
d0044f70:	4629      	mov	r1, r5
d0044f72:	f7ff fafb 	bl	d004456c <_malloc_r>
d0044f76:	4606      	mov	r6, r0
d0044f78:	b950      	cbnz	r0, d0044f90 <__ssputs_r+0x5c>
d0044f7a:	230c      	movs	r3, #12
d0044f7c:	f8ca 3000 	str.w	r3, [sl]
d0044f80:	89a3      	ldrh	r3, [r4, #12]
d0044f82:	f043 0340 	orr.w	r3, r3, #64	; 0x40
d0044f86:	81a3      	strh	r3, [r4, #12]
d0044f88:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d0044f8c:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
d0044f90:	6921      	ldr	r1, [r4, #16]
d0044f92:	464a      	mov	r2, r9
d0044f94:	f000 fcf4 	bl	d0045980 <memcpy>
d0044f98:	89a3      	ldrh	r3, [r4, #12]
d0044f9a:	f423 6390 	bic.w	r3, r3, #1152	; 0x480
d0044f9e:	f043 0380 	orr.w	r3, r3, #128	; 0x80
d0044fa2:	81a3      	strh	r3, [r4, #12]
d0044fa4:	6126      	str	r6, [r4, #16]
d0044fa6:	6165      	str	r5, [r4, #20]
d0044fa8:	444e      	add	r6, r9
d0044faa:	eba5 0509 	sub.w	r5, r5, r9
d0044fae:	6026      	str	r6, [r4, #0]
d0044fb0:	60a5      	str	r5, [r4, #8]
d0044fb2:	463e      	mov	r6, r7
d0044fb4:	42be      	cmp	r6, r7
d0044fb6:	d900      	bls.n	d0044fba <__ssputs_r+0x86>
d0044fb8:	463e      	mov	r6, r7
d0044fba:	4632      	mov	r2, r6
d0044fbc:	6820      	ldr	r0, [r4, #0]
d0044fbe:	4641      	mov	r1, r8
d0044fc0:	f000 fcec 	bl	d004599c <memmove>
d0044fc4:	68a3      	ldr	r3, [r4, #8]
d0044fc6:	6822      	ldr	r2, [r4, #0]
d0044fc8:	1b9b      	subs	r3, r3, r6
d0044fca:	4432      	add	r2, r6
d0044fcc:	60a3      	str	r3, [r4, #8]
d0044fce:	6022      	str	r2, [r4, #0]
d0044fd0:	2000      	movs	r0, #0
d0044fd2:	e7db      	b.n	d0044f8c <__ssputs_r+0x58>
d0044fd4:	462a      	mov	r2, r5
d0044fd6:	f000 fcfb 	bl	d00459d0 <_realloc_r>
d0044fda:	4606      	mov	r6, r0
d0044fdc:	2800      	cmp	r0, #0
d0044fde:	d1e1      	bne.n	d0044fa4 <__ssputs_r+0x70>
d0044fe0:	6921      	ldr	r1, [r4, #16]
d0044fe2:	4650      	mov	r0, sl
d0044fe4:	f7ff fa72 	bl	d00444cc <_free_r>
d0044fe8:	e7c7      	b.n	d0044f7a <__ssputs_r+0x46>
	...

d0044fec <_svfiprintf_r>:
d0044fec:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0044ff0:	4698      	mov	r8, r3
d0044ff2:	898b      	ldrh	r3, [r1, #12]
d0044ff4:	061b      	lsls	r3, r3, #24
d0044ff6:	b09d      	sub	sp, #116	; 0x74
d0044ff8:	4607      	mov	r7, r0
d0044ffa:	460d      	mov	r5, r1
d0044ffc:	4614      	mov	r4, r2
d0044ffe:	d50e      	bpl.n	d004501e <_svfiprintf_r+0x32>
d0045000:	690b      	ldr	r3, [r1, #16]
d0045002:	b963      	cbnz	r3, d004501e <_svfiprintf_r+0x32>
d0045004:	2140      	movs	r1, #64	; 0x40
d0045006:	f7ff fab1 	bl	d004456c <_malloc_r>
d004500a:	6028      	str	r0, [r5, #0]
d004500c:	6128      	str	r0, [r5, #16]
d004500e:	b920      	cbnz	r0, d004501a <_svfiprintf_r+0x2e>
d0045010:	230c      	movs	r3, #12
d0045012:	603b      	str	r3, [r7, #0]
d0045014:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d0045018:	e0d1      	b.n	d00451be <_svfiprintf_r+0x1d2>
d004501a:	2340      	movs	r3, #64	; 0x40
d004501c:	616b      	str	r3, [r5, #20]
d004501e:	2300      	movs	r3, #0
d0045020:	9309      	str	r3, [sp, #36]	; 0x24
d0045022:	2320      	movs	r3, #32
d0045024:	f88d 3029 	strb.w	r3, [sp, #41]	; 0x29
d0045028:	f8cd 800c 	str.w	r8, [sp, #12]
d004502c:	2330      	movs	r3, #48	; 0x30
d004502e:	f8df 81a8 	ldr.w	r8, [pc, #424]	; d00451d8 <_svfiprintf_r+0x1ec>
d0045032:	f88d 302a 	strb.w	r3, [sp, #42]	; 0x2a
d0045036:	f04f 0901 	mov.w	r9, #1
d004503a:	4623      	mov	r3, r4
d004503c:	469a      	mov	sl, r3
d004503e:	f813 2b01 	ldrb.w	r2, [r3], #1
d0045042:	b10a      	cbz	r2, d0045048 <_svfiprintf_r+0x5c>
d0045044:	2a25      	cmp	r2, #37	; 0x25
d0045046:	d1f9      	bne.n	d004503c <_svfiprintf_r+0x50>
d0045048:	ebba 0b04 	subs.w	fp, sl, r4
d004504c:	d00b      	beq.n	d0045066 <_svfiprintf_r+0x7a>
d004504e:	465b      	mov	r3, fp
d0045050:	4622      	mov	r2, r4
d0045052:	4629      	mov	r1, r5
d0045054:	4638      	mov	r0, r7
d0045056:	f7ff ff6d 	bl	d0044f34 <__ssputs_r>
d004505a:	3001      	adds	r0, #1
d004505c:	f000 80aa 	beq.w	d00451b4 <_svfiprintf_r+0x1c8>
d0045060:	9a09      	ldr	r2, [sp, #36]	; 0x24
d0045062:	445a      	add	r2, fp
d0045064:	9209      	str	r2, [sp, #36]	; 0x24
d0045066:	f89a 3000 	ldrb.w	r3, [sl]
d004506a:	2b00      	cmp	r3, #0
d004506c:	f000 80a2 	beq.w	d00451b4 <_svfiprintf_r+0x1c8>
d0045070:	2300      	movs	r3, #0
d0045072:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
d0045076:	e9cd 2305 	strd	r2, r3, [sp, #20]
d004507a:	f10a 0a01 	add.w	sl, sl, #1
d004507e:	9304      	str	r3, [sp, #16]
d0045080:	9307      	str	r3, [sp, #28]
d0045082:	f88d 3053 	strb.w	r3, [sp, #83]	; 0x53
d0045086:	931a      	str	r3, [sp, #104]	; 0x68
d0045088:	4654      	mov	r4, sl
d004508a:	2205      	movs	r2, #5
d004508c:	f814 1b01 	ldrb.w	r1, [r4], #1
d0045090:	4851      	ldr	r0, [pc, #324]	; (d00451d8 <_svfiprintf_r+0x1ec>)
d0045092:	f000 fc25 	bl	d00458e0 <memchr>
d0045096:	9a04      	ldr	r2, [sp, #16]
d0045098:	b9d8      	cbnz	r0, d00450d2 <_svfiprintf_r+0xe6>
d004509a:	06d0      	lsls	r0, r2, #27
d004509c:	bf44      	itt	mi
d004509e:	2320      	movmi	r3, #32
d00450a0:	f88d 3053 	strbmi.w	r3, [sp, #83]	; 0x53
d00450a4:	0711      	lsls	r1, r2, #28
d00450a6:	bf44      	itt	mi
d00450a8:	232b      	movmi	r3, #43	; 0x2b
d00450aa:	f88d 3053 	strbmi.w	r3, [sp, #83]	; 0x53
d00450ae:	f89a 3000 	ldrb.w	r3, [sl]
d00450b2:	2b2a      	cmp	r3, #42	; 0x2a
d00450b4:	d015      	beq.n	d00450e2 <_svfiprintf_r+0xf6>
d00450b6:	9a07      	ldr	r2, [sp, #28]
d00450b8:	4654      	mov	r4, sl
d00450ba:	2000      	movs	r0, #0
d00450bc:	f04f 0c0a 	mov.w	ip, #10
d00450c0:	4621      	mov	r1, r4
d00450c2:	f811 3b01 	ldrb.w	r3, [r1], #1
d00450c6:	3b30      	subs	r3, #48	; 0x30
d00450c8:	2b09      	cmp	r3, #9
d00450ca:	d94e      	bls.n	d004516a <_svfiprintf_r+0x17e>
d00450cc:	b1b0      	cbz	r0, d00450fc <_svfiprintf_r+0x110>
d00450ce:	9207      	str	r2, [sp, #28]
d00450d0:	e014      	b.n	d00450fc <_svfiprintf_r+0x110>
d00450d2:	eba0 0308 	sub.w	r3, r0, r8
d00450d6:	fa09 f303 	lsl.w	r3, r9, r3
d00450da:	4313      	orrs	r3, r2
d00450dc:	9304      	str	r3, [sp, #16]
d00450de:	46a2      	mov	sl, r4
d00450e0:	e7d2      	b.n	d0045088 <_svfiprintf_r+0x9c>
d00450e2:	9b03      	ldr	r3, [sp, #12]
d00450e4:	1d19      	adds	r1, r3, #4
d00450e6:	681b      	ldr	r3, [r3, #0]
d00450e8:	9103      	str	r1, [sp, #12]
d00450ea:	2b00      	cmp	r3, #0
d00450ec:	bfbb      	ittet	lt
d00450ee:	425b      	neglt	r3, r3
d00450f0:	f042 0202 	orrlt.w	r2, r2, #2
d00450f4:	9307      	strge	r3, [sp, #28]
d00450f6:	9307      	strlt	r3, [sp, #28]
d00450f8:	bfb8      	it	lt
d00450fa:	9204      	strlt	r2, [sp, #16]
d00450fc:	7823      	ldrb	r3, [r4, #0]
d00450fe:	2b2e      	cmp	r3, #46	; 0x2e
d0045100:	d10c      	bne.n	d004511c <_svfiprintf_r+0x130>
d0045102:	7863      	ldrb	r3, [r4, #1]
d0045104:	2b2a      	cmp	r3, #42	; 0x2a
d0045106:	d135      	bne.n	d0045174 <_svfiprintf_r+0x188>
d0045108:	9b03      	ldr	r3, [sp, #12]
d004510a:	1d1a      	adds	r2, r3, #4
d004510c:	681b      	ldr	r3, [r3, #0]
d004510e:	9203      	str	r2, [sp, #12]
d0045110:	2b00      	cmp	r3, #0
d0045112:	bfb8      	it	lt
d0045114:	f04f 33ff 	movlt.w	r3, #4294967295	; 0xffffffff
d0045118:	3402      	adds	r4, #2
d004511a:	9305      	str	r3, [sp, #20]
d004511c:	f8df a0c8 	ldr.w	sl, [pc, #200]	; d00451e8 <_svfiprintf_r+0x1fc>
d0045120:	7821      	ldrb	r1, [r4, #0]
d0045122:	2203      	movs	r2, #3
d0045124:	4650      	mov	r0, sl
d0045126:	f000 fbdb 	bl	d00458e0 <memchr>
d004512a:	b140      	cbz	r0, d004513e <_svfiprintf_r+0x152>
d004512c:	2340      	movs	r3, #64	; 0x40
d004512e:	eba0 000a 	sub.w	r0, r0, sl
d0045132:	fa03 f000 	lsl.w	r0, r3, r0
d0045136:	9b04      	ldr	r3, [sp, #16]
d0045138:	4303      	orrs	r3, r0
d004513a:	3401      	adds	r4, #1
d004513c:	9304      	str	r3, [sp, #16]
d004513e:	f814 1b01 	ldrb.w	r1, [r4], #1
d0045142:	4826      	ldr	r0, [pc, #152]	; (d00451dc <_svfiprintf_r+0x1f0>)
d0045144:	f88d 1028 	strb.w	r1, [sp, #40]	; 0x28
d0045148:	2206      	movs	r2, #6
d004514a:	f000 fbc9 	bl	d00458e0 <memchr>
d004514e:	2800      	cmp	r0, #0
d0045150:	d038      	beq.n	d00451c4 <_svfiprintf_r+0x1d8>
d0045152:	4b23      	ldr	r3, [pc, #140]	; (d00451e0 <_svfiprintf_r+0x1f4>)
d0045154:	bb1b      	cbnz	r3, d004519e <_svfiprintf_r+0x1b2>
d0045156:	9b03      	ldr	r3, [sp, #12]
d0045158:	3307      	adds	r3, #7
d004515a:	f023 0307 	bic.w	r3, r3, #7
d004515e:	3308      	adds	r3, #8
d0045160:	9303      	str	r3, [sp, #12]
d0045162:	9b09      	ldr	r3, [sp, #36]	; 0x24
d0045164:	4433      	add	r3, r6
d0045166:	9309      	str	r3, [sp, #36]	; 0x24
d0045168:	e767      	b.n	d004503a <_svfiprintf_r+0x4e>
d004516a:	fb0c 3202 	mla	r2, ip, r2, r3
d004516e:	460c      	mov	r4, r1
d0045170:	2001      	movs	r0, #1
d0045172:	e7a5      	b.n	d00450c0 <_svfiprintf_r+0xd4>
d0045174:	2300      	movs	r3, #0
d0045176:	3401      	adds	r4, #1
d0045178:	9305      	str	r3, [sp, #20]
d004517a:	4619      	mov	r1, r3
d004517c:	f04f 0c0a 	mov.w	ip, #10
d0045180:	4620      	mov	r0, r4
d0045182:	f810 2b01 	ldrb.w	r2, [r0], #1
d0045186:	3a30      	subs	r2, #48	; 0x30
d0045188:	2a09      	cmp	r2, #9
d004518a:	d903      	bls.n	d0045194 <_svfiprintf_r+0x1a8>
d004518c:	2b00      	cmp	r3, #0
d004518e:	d0c5      	beq.n	d004511c <_svfiprintf_r+0x130>
d0045190:	9105      	str	r1, [sp, #20]
d0045192:	e7c3      	b.n	d004511c <_svfiprintf_r+0x130>
d0045194:	fb0c 2101 	mla	r1, ip, r1, r2
d0045198:	4604      	mov	r4, r0
d004519a:	2301      	movs	r3, #1
d004519c:	e7f0      	b.n	d0045180 <_svfiprintf_r+0x194>
d004519e:	ab03      	add	r3, sp, #12
d00451a0:	9300      	str	r3, [sp, #0]
d00451a2:	462a      	mov	r2, r5
d00451a4:	4b0f      	ldr	r3, [pc, #60]	; (d00451e4 <_svfiprintf_r+0x1f8>)
d00451a6:	a904      	add	r1, sp, #16
d00451a8:	4638      	mov	r0, r7
d00451aa:	f3af 8000 	nop.w
d00451ae:	1c42      	adds	r2, r0, #1
d00451b0:	4606      	mov	r6, r0
d00451b2:	d1d6      	bne.n	d0045162 <_svfiprintf_r+0x176>
d00451b4:	89ab      	ldrh	r3, [r5, #12]
d00451b6:	065b      	lsls	r3, r3, #25
d00451b8:	f53f af2c 	bmi.w	d0045014 <_svfiprintf_r+0x28>
d00451bc:	9809      	ldr	r0, [sp, #36]	; 0x24
d00451be:	b01d      	add	sp, #116	; 0x74
d00451c0:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d00451c4:	ab03      	add	r3, sp, #12
d00451c6:	9300      	str	r3, [sp, #0]
d00451c8:	462a      	mov	r2, r5
d00451ca:	4b06      	ldr	r3, [pc, #24]	; (d00451e4 <_svfiprintf_r+0x1f8>)
d00451cc:	a904      	add	r1, sp, #16
d00451ce:	4638      	mov	r0, r7
d00451d0:	f000 f9d4 	bl	d004557c <_printf_i>
d00451d4:	e7eb      	b.n	d00451ae <_svfiprintf_r+0x1c2>
d00451d6:	bf00      	nop
d00451d8:	d0046400 	.word	0xd0046400
d00451dc:	d004640a 	.word	0xd004640a
d00451e0:	00000000 	.word	0x00000000
d00451e4:	d0044f35 	.word	0xd0044f35
d00451e8:	d0046406 	.word	0xd0046406

d00451ec <__sfputc_r>:
d00451ec:	6893      	ldr	r3, [r2, #8]
d00451ee:	3b01      	subs	r3, #1
d00451f0:	2b00      	cmp	r3, #0
d00451f2:	b410      	push	{r4}
d00451f4:	6093      	str	r3, [r2, #8]
d00451f6:	da08      	bge.n	d004520a <__sfputc_r+0x1e>
d00451f8:	6994      	ldr	r4, [r2, #24]
d00451fa:	42a3      	cmp	r3, r4
d00451fc:	db01      	blt.n	d0045202 <__sfputc_r+0x16>
d00451fe:	290a      	cmp	r1, #10
d0045200:	d103      	bne.n	d004520a <__sfputc_r+0x1e>
d0045202:	f85d 4b04 	ldr.w	r4, [sp], #4
d0045206:	f7ff bbab 	b.w	d0044960 <__swbuf_r>
d004520a:	6813      	ldr	r3, [r2, #0]
d004520c:	1c58      	adds	r0, r3, #1
d004520e:	6010      	str	r0, [r2, #0]
d0045210:	7019      	strb	r1, [r3, #0]
d0045212:	4608      	mov	r0, r1
d0045214:	f85d 4b04 	ldr.w	r4, [sp], #4
d0045218:	4770      	bx	lr

d004521a <__sfputs_r>:
d004521a:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d004521c:	4606      	mov	r6, r0
d004521e:	460f      	mov	r7, r1
d0045220:	4614      	mov	r4, r2
d0045222:	18d5      	adds	r5, r2, r3
d0045224:	42ac      	cmp	r4, r5
d0045226:	d101      	bne.n	d004522c <__sfputs_r+0x12>
d0045228:	2000      	movs	r0, #0
d004522a:	e007      	b.n	d004523c <__sfputs_r+0x22>
d004522c:	f814 1b01 	ldrb.w	r1, [r4], #1
d0045230:	463a      	mov	r2, r7
d0045232:	4630      	mov	r0, r6
d0045234:	f7ff ffda 	bl	d00451ec <__sfputc_r>
d0045238:	1c43      	adds	r3, r0, #1
d004523a:	d1f3      	bne.n	d0045224 <__sfputs_r+0xa>
d004523c:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
	...

d0045240 <_vfiprintf_r>:
d0045240:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0045244:	460d      	mov	r5, r1
d0045246:	b09d      	sub	sp, #116	; 0x74
d0045248:	4614      	mov	r4, r2
d004524a:	4698      	mov	r8, r3
d004524c:	4606      	mov	r6, r0
d004524e:	b118      	cbz	r0, d0045258 <_vfiprintf_r+0x18>
d0045250:	6983      	ldr	r3, [r0, #24]
d0045252:	b90b      	cbnz	r3, d0045258 <_vfiprintf_r+0x18>
d0045254:	f7ff fd5e 	bl	d0044d14 <__sinit>
d0045258:	4b89      	ldr	r3, [pc, #548]	; (d0045480 <_vfiprintf_r+0x240>)
d004525a:	429d      	cmp	r5, r3
d004525c:	d11b      	bne.n	d0045296 <_vfiprintf_r+0x56>
d004525e:	6875      	ldr	r5, [r6, #4]
d0045260:	6e6b      	ldr	r3, [r5, #100]	; 0x64
d0045262:	07d9      	lsls	r1, r3, #31
d0045264:	d405      	bmi.n	d0045272 <_vfiprintf_r+0x32>
d0045266:	89ab      	ldrh	r3, [r5, #12]
d0045268:	059a      	lsls	r2, r3, #22
d004526a:	d402      	bmi.n	d0045272 <_vfiprintf_r+0x32>
d004526c:	6da8      	ldr	r0, [r5, #88]	; 0x58
d004526e:	f7ff fdef 	bl	d0044e50 <__retarget_lock_acquire_recursive>
d0045272:	89ab      	ldrh	r3, [r5, #12]
d0045274:	071b      	lsls	r3, r3, #28
d0045276:	d501      	bpl.n	d004527c <_vfiprintf_r+0x3c>
d0045278:	692b      	ldr	r3, [r5, #16]
d004527a:	b9eb      	cbnz	r3, d00452b8 <_vfiprintf_r+0x78>
d004527c:	4629      	mov	r1, r5
d004527e:	4630      	mov	r0, r6
d0045280:	f7ff fbc0 	bl	d0044a04 <__swsetup_r>
d0045284:	b1c0      	cbz	r0, d00452b8 <_vfiprintf_r+0x78>
d0045286:	6e6b      	ldr	r3, [r5, #100]	; 0x64
d0045288:	07dc      	lsls	r4, r3, #31
d004528a:	d50e      	bpl.n	d00452aa <_vfiprintf_r+0x6a>
d004528c:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d0045290:	b01d      	add	sp, #116	; 0x74
d0045292:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0045296:	4b7b      	ldr	r3, [pc, #492]	; (d0045484 <_vfiprintf_r+0x244>)
d0045298:	429d      	cmp	r5, r3
d004529a:	d101      	bne.n	d00452a0 <_vfiprintf_r+0x60>
d004529c:	68b5      	ldr	r5, [r6, #8]
d004529e:	e7df      	b.n	d0045260 <_vfiprintf_r+0x20>
d00452a0:	4b79      	ldr	r3, [pc, #484]	; (d0045488 <_vfiprintf_r+0x248>)
d00452a2:	429d      	cmp	r5, r3
d00452a4:	bf08      	it	eq
d00452a6:	68f5      	ldreq	r5, [r6, #12]
d00452a8:	e7da      	b.n	d0045260 <_vfiprintf_r+0x20>
d00452aa:	89ab      	ldrh	r3, [r5, #12]
d00452ac:	0598      	lsls	r0, r3, #22
d00452ae:	d4ed      	bmi.n	d004528c <_vfiprintf_r+0x4c>
d00452b0:	6da8      	ldr	r0, [r5, #88]	; 0x58
d00452b2:	f7ff fdce 	bl	d0044e52 <__retarget_lock_release_recursive>
d00452b6:	e7e9      	b.n	d004528c <_vfiprintf_r+0x4c>
d00452b8:	2300      	movs	r3, #0
d00452ba:	9309      	str	r3, [sp, #36]	; 0x24
d00452bc:	2320      	movs	r3, #32
d00452be:	f88d 3029 	strb.w	r3, [sp, #41]	; 0x29
d00452c2:	f8cd 800c 	str.w	r8, [sp, #12]
d00452c6:	2330      	movs	r3, #48	; 0x30
d00452c8:	f8df 81c0 	ldr.w	r8, [pc, #448]	; d004548c <_vfiprintf_r+0x24c>
d00452cc:	f88d 302a 	strb.w	r3, [sp, #42]	; 0x2a
d00452d0:	f04f 0901 	mov.w	r9, #1
d00452d4:	4623      	mov	r3, r4
d00452d6:	469a      	mov	sl, r3
d00452d8:	f813 2b01 	ldrb.w	r2, [r3], #1
d00452dc:	b10a      	cbz	r2, d00452e2 <_vfiprintf_r+0xa2>
d00452de:	2a25      	cmp	r2, #37	; 0x25
d00452e0:	d1f9      	bne.n	d00452d6 <_vfiprintf_r+0x96>
d00452e2:	ebba 0b04 	subs.w	fp, sl, r4
d00452e6:	d00b      	beq.n	d0045300 <_vfiprintf_r+0xc0>
d00452e8:	465b      	mov	r3, fp
d00452ea:	4622      	mov	r2, r4
d00452ec:	4629      	mov	r1, r5
d00452ee:	4630      	mov	r0, r6
d00452f0:	f7ff ff93 	bl	d004521a <__sfputs_r>
d00452f4:	3001      	adds	r0, #1
d00452f6:	f000 80aa 	beq.w	d004544e <_vfiprintf_r+0x20e>
d00452fa:	9a09      	ldr	r2, [sp, #36]	; 0x24
d00452fc:	445a      	add	r2, fp
d00452fe:	9209      	str	r2, [sp, #36]	; 0x24
d0045300:	f89a 3000 	ldrb.w	r3, [sl]
d0045304:	2b00      	cmp	r3, #0
d0045306:	f000 80a2 	beq.w	d004544e <_vfiprintf_r+0x20e>
d004530a:	2300      	movs	r3, #0
d004530c:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
d0045310:	e9cd 2305 	strd	r2, r3, [sp, #20]
d0045314:	f10a 0a01 	add.w	sl, sl, #1
d0045318:	9304      	str	r3, [sp, #16]
d004531a:	9307      	str	r3, [sp, #28]
d004531c:	f88d 3053 	strb.w	r3, [sp, #83]	; 0x53
d0045320:	931a      	str	r3, [sp, #104]	; 0x68
d0045322:	4654      	mov	r4, sl
d0045324:	2205      	movs	r2, #5
d0045326:	f814 1b01 	ldrb.w	r1, [r4], #1
d004532a:	4858      	ldr	r0, [pc, #352]	; (d004548c <_vfiprintf_r+0x24c>)
d004532c:	f000 fad8 	bl	d00458e0 <memchr>
d0045330:	9a04      	ldr	r2, [sp, #16]
d0045332:	b9d8      	cbnz	r0, d004536c <_vfiprintf_r+0x12c>
d0045334:	06d1      	lsls	r1, r2, #27
d0045336:	bf44      	itt	mi
d0045338:	2320      	movmi	r3, #32
d004533a:	f88d 3053 	strbmi.w	r3, [sp, #83]	; 0x53
d004533e:	0713      	lsls	r3, r2, #28
d0045340:	bf44      	itt	mi
d0045342:	232b      	movmi	r3, #43	; 0x2b
d0045344:	f88d 3053 	strbmi.w	r3, [sp, #83]	; 0x53
d0045348:	f89a 3000 	ldrb.w	r3, [sl]
d004534c:	2b2a      	cmp	r3, #42	; 0x2a
d004534e:	d015      	beq.n	d004537c <_vfiprintf_r+0x13c>
d0045350:	9a07      	ldr	r2, [sp, #28]
d0045352:	4654      	mov	r4, sl
d0045354:	2000      	movs	r0, #0
d0045356:	f04f 0c0a 	mov.w	ip, #10
d004535a:	4621      	mov	r1, r4
d004535c:	f811 3b01 	ldrb.w	r3, [r1], #1
d0045360:	3b30      	subs	r3, #48	; 0x30
d0045362:	2b09      	cmp	r3, #9
d0045364:	d94e      	bls.n	d0045404 <_vfiprintf_r+0x1c4>
d0045366:	b1b0      	cbz	r0, d0045396 <_vfiprintf_r+0x156>
d0045368:	9207      	str	r2, [sp, #28]
d004536a:	e014      	b.n	d0045396 <_vfiprintf_r+0x156>
d004536c:	eba0 0308 	sub.w	r3, r0, r8
d0045370:	fa09 f303 	lsl.w	r3, r9, r3
d0045374:	4313      	orrs	r3, r2
d0045376:	9304      	str	r3, [sp, #16]
d0045378:	46a2      	mov	sl, r4
d004537a:	e7d2      	b.n	d0045322 <_vfiprintf_r+0xe2>
d004537c:	9b03      	ldr	r3, [sp, #12]
d004537e:	1d19      	adds	r1, r3, #4
d0045380:	681b      	ldr	r3, [r3, #0]
d0045382:	9103      	str	r1, [sp, #12]
d0045384:	2b00      	cmp	r3, #0
d0045386:	bfbb      	ittet	lt
d0045388:	425b      	neglt	r3, r3
d004538a:	f042 0202 	orrlt.w	r2, r2, #2
d004538e:	9307      	strge	r3, [sp, #28]
d0045390:	9307      	strlt	r3, [sp, #28]
d0045392:	bfb8      	it	lt
d0045394:	9204      	strlt	r2, [sp, #16]
d0045396:	7823      	ldrb	r3, [r4, #0]
d0045398:	2b2e      	cmp	r3, #46	; 0x2e
d004539a:	d10c      	bne.n	d00453b6 <_vfiprintf_r+0x176>
d004539c:	7863      	ldrb	r3, [r4, #1]
d004539e:	2b2a      	cmp	r3, #42	; 0x2a
d00453a0:	d135      	bne.n	d004540e <_vfiprintf_r+0x1ce>
d00453a2:	9b03      	ldr	r3, [sp, #12]
d00453a4:	1d1a      	adds	r2, r3, #4
d00453a6:	681b      	ldr	r3, [r3, #0]
d00453a8:	9203      	str	r2, [sp, #12]
d00453aa:	2b00      	cmp	r3, #0
d00453ac:	bfb8      	it	lt
d00453ae:	f04f 33ff 	movlt.w	r3, #4294967295	; 0xffffffff
d00453b2:	3402      	adds	r4, #2
d00453b4:	9305      	str	r3, [sp, #20]
d00453b6:	f8df a0e4 	ldr.w	sl, [pc, #228]	; d004549c <_vfiprintf_r+0x25c>
d00453ba:	7821      	ldrb	r1, [r4, #0]
d00453bc:	2203      	movs	r2, #3
d00453be:	4650      	mov	r0, sl
d00453c0:	f000 fa8e 	bl	d00458e0 <memchr>
d00453c4:	b140      	cbz	r0, d00453d8 <_vfiprintf_r+0x198>
d00453c6:	2340      	movs	r3, #64	; 0x40
d00453c8:	eba0 000a 	sub.w	r0, r0, sl
d00453cc:	fa03 f000 	lsl.w	r0, r3, r0
d00453d0:	9b04      	ldr	r3, [sp, #16]
d00453d2:	4303      	orrs	r3, r0
d00453d4:	3401      	adds	r4, #1
d00453d6:	9304      	str	r3, [sp, #16]
d00453d8:	f814 1b01 	ldrb.w	r1, [r4], #1
d00453dc:	482c      	ldr	r0, [pc, #176]	; (d0045490 <_vfiprintf_r+0x250>)
d00453de:	f88d 1028 	strb.w	r1, [sp, #40]	; 0x28
d00453e2:	2206      	movs	r2, #6
d00453e4:	f000 fa7c 	bl	d00458e0 <memchr>
d00453e8:	2800      	cmp	r0, #0
d00453ea:	d03f      	beq.n	d004546c <_vfiprintf_r+0x22c>
d00453ec:	4b29      	ldr	r3, [pc, #164]	; (d0045494 <_vfiprintf_r+0x254>)
d00453ee:	bb1b      	cbnz	r3, d0045438 <_vfiprintf_r+0x1f8>
d00453f0:	9b03      	ldr	r3, [sp, #12]
d00453f2:	3307      	adds	r3, #7
d00453f4:	f023 0307 	bic.w	r3, r3, #7
d00453f8:	3308      	adds	r3, #8
d00453fa:	9303      	str	r3, [sp, #12]
d00453fc:	9b09      	ldr	r3, [sp, #36]	; 0x24
d00453fe:	443b      	add	r3, r7
d0045400:	9309      	str	r3, [sp, #36]	; 0x24
d0045402:	e767      	b.n	d00452d4 <_vfiprintf_r+0x94>
d0045404:	fb0c 3202 	mla	r2, ip, r2, r3
d0045408:	460c      	mov	r4, r1
d004540a:	2001      	movs	r0, #1
d004540c:	e7a5      	b.n	d004535a <_vfiprintf_r+0x11a>
d004540e:	2300      	movs	r3, #0
d0045410:	3401      	adds	r4, #1
d0045412:	9305      	str	r3, [sp, #20]
d0045414:	4619      	mov	r1, r3
d0045416:	f04f 0c0a 	mov.w	ip, #10
d004541a:	4620      	mov	r0, r4
d004541c:	f810 2b01 	ldrb.w	r2, [r0], #1
d0045420:	3a30      	subs	r2, #48	; 0x30
d0045422:	2a09      	cmp	r2, #9
d0045424:	d903      	bls.n	d004542e <_vfiprintf_r+0x1ee>
d0045426:	2b00      	cmp	r3, #0
d0045428:	d0c5      	beq.n	d00453b6 <_vfiprintf_r+0x176>
d004542a:	9105      	str	r1, [sp, #20]
d004542c:	e7c3      	b.n	d00453b6 <_vfiprintf_r+0x176>
d004542e:	fb0c 2101 	mla	r1, ip, r1, r2
d0045432:	4604      	mov	r4, r0
d0045434:	2301      	movs	r3, #1
d0045436:	e7f0      	b.n	d004541a <_vfiprintf_r+0x1da>
d0045438:	ab03      	add	r3, sp, #12
d004543a:	9300      	str	r3, [sp, #0]
d004543c:	462a      	mov	r2, r5
d004543e:	4b16      	ldr	r3, [pc, #88]	; (d0045498 <_vfiprintf_r+0x258>)
d0045440:	a904      	add	r1, sp, #16
d0045442:	4630      	mov	r0, r6
d0045444:	f3af 8000 	nop.w
d0045448:	4607      	mov	r7, r0
d004544a:	1c78      	adds	r0, r7, #1
d004544c:	d1d6      	bne.n	d00453fc <_vfiprintf_r+0x1bc>
d004544e:	6e6b      	ldr	r3, [r5, #100]	; 0x64
d0045450:	07d9      	lsls	r1, r3, #31
d0045452:	d405      	bmi.n	d0045460 <_vfiprintf_r+0x220>
d0045454:	89ab      	ldrh	r3, [r5, #12]
d0045456:	059a      	lsls	r2, r3, #22
d0045458:	d402      	bmi.n	d0045460 <_vfiprintf_r+0x220>
d004545a:	6da8      	ldr	r0, [r5, #88]	; 0x58
d004545c:	f7ff fcf9 	bl	d0044e52 <__retarget_lock_release_recursive>
d0045460:	89ab      	ldrh	r3, [r5, #12]
d0045462:	065b      	lsls	r3, r3, #25
d0045464:	f53f af12 	bmi.w	d004528c <_vfiprintf_r+0x4c>
d0045468:	9809      	ldr	r0, [sp, #36]	; 0x24
d004546a:	e711      	b.n	d0045290 <_vfiprintf_r+0x50>
d004546c:	ab03      	add	r3, sp, #12
d004546e:	9300      	str	r3, [sp, #0]
d0045470:	462a      	mov	r2, r5
d0045472:	4b09      	ldr	r3, [pc, #36]	; (d0045498 <_vfiprintf_r+0x258>)
d0045474:	a904      	add	r1, sp, #16
d0045476:	4630      	mov	r0, r6
d0045478:	f000 f880 	bl	d004557c <_printf_i>
d004547c:	e7e4      	b.n	d0045448 <_vfiprintf_r+0x208>
d004547e:	bf00      	nop
d0045480:	d00463c0 	.word	0xd00463c0
d0045484:	d00463e0 	.word	0xd00463e0
d0045488:	d00463a0 	.word	0xd00463a0
d004548c:	d0046400 	.word	0xd0046400
d0045490:	d004640a 	.word	0xd004640a
d0045494:	00000000 	.word	0x00000000
d0045498:	d004521b 	.word	0xd004521b
d004549c:	d0046406 	.word	0xd0046406

d00454a0 <_printf_common>:
d00454a0:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
d00454a4:	4616      	mov	r6, r2
d00454a6:	4699      	mov	r9, r3
d00454a8:	688a      	ldr	r2, [r1, #8]
d00454aa:	690b      	ldr	r3, [r1, #16]
d00454ac:	f8dd 8020 	ldr.w	r8, [sp, #32]
d00454b0:	4293      	cmp	r3, r2
d00454b2:	bfb8      	it	lt
d00454b4:	4613      	movlt	r3, r2
d00454b6:	6033      	str	r3, [r6, #0]
d00454b8:	f891 2043 	ldrb.w	r2, [r1, #67]	; 0x43
d00454bc:	4607      	mov	r7, r0
d00454be:	460c      	mov	r4, r1
d00454c0:	b10a      	cbz	r2, d00454c6 <_printf_common+0x26>
d00454c2:	3301      	adds	r3, #1
d00454c4:	6033      	str	r3, [r6, #0]
d00454c6:	6823      	ldr	r3, [r4, #0]
d00454c8:	0699      	lsls	r1, r3, #26
d00454ca:	bf42      	ittt	mi
d00454cc:	6833      	ldrmi	r3, [r6, #0]
d00454ce:	3302      	addmi	r3, #2
d00454d0:	6033      	strmi	r3, [r6, #0]
d00454d2:	6825      	ldr	r5, [r4, #0]
d00454d4:	f015 0506 	ands.w	r5, r5, #6
d00454d8:	d106      	bne.n	d00454e8 <_printf_common+0x48>
d00454da:	f104 0a19 	add.w	sl, r4, #25
d00454de:	68e3      	ldr	r3, [r4, #12]
d00454e0:	6832      	ldr	r2, [r6, #0]
d00454e2:	1a9b      	subs	r3, r3, r2
d00454e4:	42ab      	cmp	r3, r5
d00454e6:	dc26      	bgt.n	d0045536 <_printf_common+0x96>
d00454e8:	f894 2043 	ldrb.w	r2, [r4, #67]	; 0x43
d00454ec:	1e13      	subs	r3, r2, #0
d00454ee:	6822      	ldr	r2, [r4, #0]
d00454f0:	bf18      	it	ne
d00454f2:	2301      	movne	r3, #1
d00454f4:	0692      	lsls	r2, r2, #26
d00454f6:	d42b      	bmi.n	d0045550 <_printf_common+0xb0>
d00454f8:	f104 0243 	add.w	r2, r4, #67	; 0x43
d00454fc:	4649      	mov	r1, r9
d00454fe:	4638      	mov	r0, r7
d0045500:	47c0      	blx	r8
d0045502:	3001      	adds	r0, #1
d0045504:	d01e      	beq.n	d0045544 <_printf_common+0xa4>
d0045506:	6823      	ldr	r3, [r4, #0]
d0045508:	68e5      	ldr	r5, [r4, #12]
d004550a:	6832      	ldr	r2, [r6, #0]
d004550c:	f003 0306 	and.w	r3, r3, #6
d0045510:	2b04      	cmp	r3, #4
d0045512:	bf08      	it	eq
d0045514:	1aad      	subeq	r5, r5, r2
d0045516:	68a3      	ldr	r3, [r4, #8]
d0045518:	6922      	ldr	r2, [r4, #16]
d004551a:	bf0c      	ite	eq
d004551c:	ea25 75e5 	biceq.w	r5, r5, r5, asr #31
d0045520:	2500      	movne	r5, #0
d0045522:	4293      	cmp	r3, r2
d0045524:	bfc4      	itt	gt
d0045526:	1a9b      	subgt	r3, r3, r2
d0045528:	18ed      	addgt	r5, r5, r3
d004552a:	2600      	movs	r6, #0
d004552c:	341a      	adds	r4, #26
d004552e:	42b5      	cmp	r5, r6
d0045530:	d11a      	bne.n	d0045568 <_printf_common+0xc8>
d0045532:	2000      	movs	r0, #0
d0045534:	e008      	b.n	d0045548 <_printf_common+0xa8>
d0045536:	2301      	movs	r3, #1
d0045538:	4652      	mov	r2, sl
d004553a:	4649      	mov	r1, r9
d004553c:	4638      	mov	r0, r7
d004553e:	47c0      	blx	r8
d0045540:	3001      	adds	r0, #1
d0045542:	d103      	bne.n	d004554c <_printf_common+0xac>
d0045544:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d0045548:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
d004554c:	3501      	adds	r5, #1
d004554e:	e7c6      	b.n	d00454de <_printf_common+0x3e>
d0045550:	18e1      	adds	r1, r4, r3
d0045552:	1c5a      	adds	r2, r3, #1
d0045554:	2030      	movs	r0, #48	; 0x30
d0045556:	f881 0043 	strb.w	r0, [r1, #67]	; 0x43
d004555a:	4422      	add	r2, r4
d004555c:	f894 1045 	ldrb.w	r1, [r4, #69]	; 0x45
d0045560:	f882 1043 	strb.w	r1, [r2, #67]	; 0x43
d0045564:	3302      	adds	r3, #2
d0045566:	e7c7      	b.n	d00454f8 <_printf_common+0x58>
d0045568:	2301      	movs	r3, #1
d004556a:	4622      	mov	r2, r4
d004556c:	4649      	mov	r1, r9
d004556e:	4638      	mov	r0, r7
d0045570:	47c0      	blx	r8
d0045572:	3001      	adds	r0, #1
d0045574:	d0e6      	beq.n	d0045544 <_printf_common+0xa4>
d0045576:	3601      	adds	r6, #1
d0045578:	e7d9      	b.n	d004552e <_printf_common+0x8e>
	...

d004557c <_printf_i>:
d004557c:	e92d 47ff 	stmdb	sp!, {r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, lr}
d0045580:	460c      	mov	r4, r1
d0045582:	4691      	mov	r9, r2
d0045584:	7e27      	ldrb	r7, [r4, #24]
d0045586:	990c      	ldr	r1, [sp, #48]	; 0x30
d0045588:	2f78      	cmp	r7, #120	; 0x78
d004558a:	4680      	mov	r8, r0
d004558c:	469a      	mov	sl, r3
d004558e:	f104 0243 	add.w	r2, r4, #67	; 0x43
d0045592:	d807      	bhi.n	d00455a4 <_printf_i+0x28>
d0045594:	2f62      	cmp	r7, #98	; 0x62
d0045596:	d80a      	bhi.n	d00455ae <_printf_i+0x32>
d0045598:	2f00      	cmp	r7, #0
d004559a:	f000 80d8 	beq.w	d004574e <_printf_i+0x1d2>
d004559e:	2f58      	cmp	r7, #88	; 0x58
d00455a0:	f000 80a3 	beq.w	d00456ea <_printf_i+0x16e>
d00455a4:	f104 0642 	add.w	r6, r4, #66	; 0x42
d00455a8:	f884 7042 	strb.w	r7, [r4, #66]	; 0x42
d00455ac:	e03a      	b.n	d0045624 <_printf_i+0xa8>
d00455ae:	f1a7 0363 	sub.w	r3, r7, #99	; 0x63
d00455b2:	2b15      	cmp	r3, #21
d00455b4:	d8f6      	bhi.n	d00455a4 <_printf_i+0x28>
d00455b6:	a001      	add	r0, pc, #4	; (adr r0, d00455bc <_printf_i+0x40>)
d00455b8:	f850 f023 	ldr.w	pc, [r0, r3, lsl #2]
d00455bc:	d0045615 	.word	0xd0045615
d00455c0:	d0045629 	.word	0xd0045629
d00455c4:	d00455a5 	.word	0xd00455a5
d00455c8:	d00455a5 	.word	0xd00455a5
d00455cc:	d00455a5 	.word	0xd00455a5
d00455d0:	d00455a5 	.word	0xd00455a5
d00455d4:	d0045629 	.word	0xd0045629
d00455d8:	d00455a5 	.word	0xd00455a5
d00455dc:	d00455a5 	.word	0xd00455a5
d00455e0:	d00455a5 	.word	0xd00455a5
d00455e4:	d00455a5 	.word	0xd00455a5
d00455e8:	d0045735 	.word	0xd0045735
d00455ec:	d0045659 	.word	0xd0045659
d00455f0:	d0045717 	.word	0xd0045717
d00455f4:	d00455a5 	.word	0xd00455a5
d00455f8:	d00455a5 	.word	0xd00455a5
d00455fc:	d0045757 	.word	0xd0045757
d0045600:	d00455a5 	.word	0xd00455a5
d0045604:	d0045659 	.word	0xd0045659
d0045608:	d00455a5 	.word	0xd00455a5
d004560c:	d00455a5 	.word	0xd00455a5
d0045610:	d004571f 	.word	0xd004571f
d0045614:	680b      	ldr	r3, [r1, #0]
d0045616:	1d1a      	adds	r2, r3, #4
d0045618:	681b      	ldr	r3, [r3, #0]
d004561a:	600a      	str	r2, [r1, #0]
d004561c:	f104 0642 	add.w	r6, r4, #66	; 0x42
d0045620:	f884 3042 	strb.w	r3, [r4, #66]	; 0x42
d0045624:	2301      	movs	r3, #1
d0045626:	e0a3      	b.n	d0045770 <_printf_i+0x1f4>
d0045628:	6825      	ldr	r5, [r4, #0]
d004562a:	6808      	ldr	r0, [r1, #0]
d004562c:	062e      	lsls	r6, r5, #24
d004562e:	f100 0304 	add.w	r3, r0, #4
d0045632:	d50a      	bpl.n	d004564a <_printf_i+0xce>
d0045634:	6805      	ldr	r5, [r0, #0]
d0045636:	600b      	str	r3, [r1, #0]
d0045638:	2d00      	cmp	r5, #0
d004563a:	da03      	bge.n	d0045644 <_printf_i+0xc8>
d004563c:	232d      	movs	r3, #45	; 0x2d
d004563e:	426d      	negs	r5, r5
d0045640:	f884 3043 	strb.w	r3, [r4, #67]	; 0x43
d0045644:	485e      	ldr	r0, [pc, #376]	; (d00457c0 <_printf_i+0x244>)
d0045646:	230a      	movs	r3, #10
d0045648:	e019      	b.n	d004567e <_printf_i+0x102>
d004564a:	f015 0f40 	tst.w	r5, #64	; 0x40
d004564e:	6805      	ldr	r5, [r0, #0]
d0045650:	600b      	str	r3, [r1, #0]
d0045652:	bf18      	it	ne
d0045654:	b22d      	sxthne	r5, r5
d0045656:	e7ef      	b.n	d0045638 <_printf_i+0xbc>
d0045658:	680b      	ldr	r3, [r1, #0]
d004565a:	6825      	ldr	r5, [r4, #0]
d004565c:	1d18      	adds	r0, r3, #4
d004565e:	6008      	str	r0, [r1, #0]
d0045660:	0628      	lsls	r0, r5, #24
d0045662:	d501      	bpl.n	d0045668 <_printf_i+0xec>
d0045664:	681d      	ldr	r5, [r3, #0]
d0045666:	e002      	b.n	d004566e <_printf_i+0xf2>
d0045668:	0669      	lsls	r1, r5, #25
d004566a:	d5fb      	bpl.n	d0045664 <_printf_i+0xe8>
d004566c:	881d      	ldrh	r5, [r3, #0]
d004566e:	4854      	ldr	r0, [pc, #336]	; (d00457c0 <_printf_i+0x244>)
d0045670:	2f6f      	cmp	r7, #111	; 0x6f
d0045672:	bf0c      	ite	eq
d0045674:	2308      	moveq	r3, #8
d0045676:	230a      	movne	r3, #10
d0045678:	2100      	movs	r1, #0
d004567a:	f884 1043 	strb.w	r1, [r4, #67]	; 0x43
d004567e:	6866      	ldr	r6, [r4, #4]
d0045680:	60a6      	str	r6, [r4, #8]
d0045682:	2e00      	cmp	r6, #0
d0045684:	bfa2      	ittt	ge
d0045686:	6821      	ldrge	r1, [r4, #0]
d0045688:	f021 0104 	bicge.w	r1, r1, #4
d004568c:	6021      	strge	r1, [r4, #0]
d004568e:	b90d      	cbnz	r5, d0045694 <_printf_i+0x118>
d0045690:	2e00      	cmp	r6, #0
d0045692:	d04d      	beq.n	d0045730 <_printf_i+0x1b4>
d0045694:	4616      	mov	r6, r2
d0045696:	fbb5 f1f3 	udiv	r1, r5, r3
d004569a:	fb03 5711 	mls	r7, r3, r1, r5
d004569e:	5dc7      	ldrb	r7, [r0, r7]
d00456a0:	f806 7d01 	strb.w	r7, [r6, #-1]!
d00456a4:	462f      	mov	r7, r5
d00456a6:	42bb      	cmp	r3, r7
d00456a8:	460d      	mov	r5, r1
d00456aa:	d9f4      	bls.n	d0045696 <_printf_i+0x11a>
d00456ac:	2b08      	cmp	r3, #8
d00456ae:	d10b      	bne.n	d00456c8 <_printf_i+0x14c>
d00456b0:	6823      	ldr	r3, [r4, #0]
d00456b2:	07df      	lsls	r7, r3, #31
d00456b4:	d508      	bpl.n	d00456c8 <_printf_i+0x14c>
d00456b6:	6923      	ldr	r3, [r4, #16]
d00456b8:	6861      	ldr	r1, [r4, #4]
d00456ba:	4299      	cmp	r1, r3
d00456bc:	bfde      	ittt	le
d00456be:	2330      	movle	r3, #48	; 0x30
d00456c0:	f806 3c01 	strble.w	r3, [r6, #-1]
d00456c4:	f106 36ff 	addle.w	r6, r6, #4294967295	; 0xffffffff
d00456c8:	1b92      	subs	r2, r2, r6
d00456ca:	6122      	str	r2, [r4, #16]
d00456cc:	f8cd a000 	str.w	sl, [sp]
d00456d0:	464b      	mov	r3, r9
d00456d2:	aa03      	add	r2, sp, #12
d00456d4:	4621      	mov	r1, r4
d00456d6:	4640      	mov	r0, r8
d00456d8:	f7ff fee2 	bl	d00454a0 <_printf_common>
d00456dc:	3001      	adds	r0, #1
d00456de:	d14c      	bne.n	d004577a <_printf_i+0x1fe>
d00456e0:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d00456e4:	b004      	add	sp, #16
d00456e6:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
d00456ea:	4835      	ldr	r0, [pc, #212]	; (d00457c0 <_printf_i+0x244>)
d00456ec:	f884 7045 	strb.w	r7, [r4, #69]	; 0x45
d00456f0:	6823      	ldr	r3, [r4, #0]
d00456f2:	680e      	ldr	r6, [r1, #0]
d00456f4:	061f      	lsls	r7, r3, #24
d00456f6:	f856 5b04 	ldr.w	r5, [r6], #4
d00456fa:	600e      	str	r6, [r1, #0]
d00456fc:	d514      	bpl.n	d0045728 <_printf_i+0x1ac>
d00456fe:	07d9      	lsls	r1, r3, #31
d0045700:	bf44      	itt	mi
d0045702:	f043 0320 	orrmi.w	r3, r3, #32
d0045706:	6023      	strmi	r3, [r4, #0]
d0045708:	b91d      	cbnz	r5, d0045712 <_printf_i+0x196>
d004570a:	6823      	ldr	r3, [r4, #0]
d004570c:	f023 0320 	bic.w	r3, r3, #32
d0045710:	6023      	str	r3, [r4, #0]
d0045712:	2310      	movs	r3, #16
d0045714:	e7b0      	b.n	d0045678 <_printf_i+0xfc>
d0045716:	6823      	ldr	r3, [r4, #0]
d0045718:	f043 0320 	orr.w	r3, r3, #32
d004571c:	6023      	str	r3, [r4, #0]
d004571e:	2378      	movs	r3, #120	; 0x78
d0045720:	4828      	ldr	r0, [pc, #160]	; (d00457c4 <_printf_i+0x248>)
d0045722:	f884 3045 	strb.w	r3, [r4, #69]	; 0x45
d0045726:	e7e3      	b.n	d00456f0 <_printf_i+0x174>
d0045728:	065e      	lsls	r6, r3, #25
d004572a:	bf48      	it	mi
d004572c:	b2ad      	uxthmi	r5, r5
d004572e:	e7e6      	b.n	d00456fe <_printf_i+0x182>
d0045730:	4616      	mov	r6, r2
d0045732:	e7bb      	b.n	d00456ac <_printf_i+0x130>
d0045734:	680b      	ldr	r3, [r1, #0]
d0045736:	6826      	ldr	r6, [r4, #0]
d0045738:	6960      	ldr	r0, [r4, #20]
d004573a:	1d1d      	adds	r5, r3, #4
d004573c:	600d      	str	r5, [r1, #0]
d004573e:	0635      	lsls	r5, r6, #24
d0045740:	681b      	ldr	r3, [r3, #0]
d0045742:	d501      	bpl.n	d0045748 <_printf_i+0x1cc>
d0045744:	6018      	str	r0, [r3, #0]
d0045746:	e002      	b.n	d004574e <_printf_i+0x1d2>
d0045748:	0671      	lsls	r1, r6, #25
d004574a:	d5fb      	bpl.n	d0045744 <_printf_i+0x1c8>
d004574c:	8018      	strh	r0, [r3, #0]
d004574e:	2300      	movs	r3, #0
d0045750:	6123      	str	r3, [r4, #16]
d0045752:	4616      	mov	r6, r2
d0045754:	e7ba      	b.n	d00456cc <_printf_i+0x150>
d0045756:	680b      	ldr	r3, [r1, #0]
d0045758:	1d1a      	adds	r2, r3, #4
d004575a:	600a      	str	r2, [r1, #0]
d004575c:	681e      	ldr	r6, [r3, #0]
d004575e:	6862      	ldr	r2, [r4, #4]
d0045760:	2100      	movs	r1, #0
d0045762:	4630      	mov	r0, r6
d0045764:	f000 f8bc 	bl	d00458e0 <memchr>
d0045768:	b108      	cbz	r0, d004576e <_printf_i+0x1f2>
d004576a:	1b80      	subs	r0, r0, r6
d004576c:	6060      	str	r0, [r4, #4]
d004576e:	6863      	ldr	r3, [r4, #4]
d0045770:	6123      	str	r3, [r4, #16]
d0045772:	2300      	movs	r3, #0
d0045774:	f884 3043 	strb.w	r3, [r4, #67]	; 0x43
d0045778:	e7a8      	b.n	d00456cc <_printf_i+0x150>
d004577a:	6923      	ldr	r3, [r4, #16]
d004577c:	4632      	mov	r2, r6
d004577e:	4649      	mov	r1, r9
d0045780:	4640      	mov	r0, r8
d0045782:	47d0      	blx	sl
d0045784:	3001      	adds	r0, #1
d0045786:	d0ab      	beq.n	d00456e0 <_printf_i+0x164>
d0045788:	6823      	ldr	r3, [r4, #0]
d004578a:	079b      	lsls	r3, r3, #30
d004578c:	d413      	bmi.n	d00457b6 <_printf_i+0x23a>
d004578e:	68e0      	ldr	r0, [r4, #12]
d0045790:	9b03      	ldr	r3, [sp, #12]
d0045792:	4298      	cmp	r0, r3
d0045794:	bfb8      	it	lt
d0045796:	4618      	movlt	r0, r3
d0045798:	e7a4      	b.n	d00456e4 <_printf_i+0x168>
d004579a:	2301      	movs	r3, #1
d004579c:	4632      	mov	r2, r6
d004579e:	4649      	mov	r1, r9
d00457a0:	4640      	mov	r0, r8
d00457a2:	47d0      	blx	sl
d00457a4:	3001      	adds	r0, #1
d00457a6:	d09b      	beq.n	d00456e0 <_printf_i+0x164>
d00457a8:	3501      	adds	r5, #1
d00457aa:	68e3      	ldr	r3, [r4, #12]
d00457ac:	9903      	ldr	r1, [sp, #12]
d00457ae:	1a5b      	subs	r3, r3, r1
d00457b0:	42ab      	cmp	r3, r5
d00457b2:	dcf2      	bgt.n	d004579a <_printf_i+0x21e>
d00457b4:	e7eb      	b.n	d004578e <_printf_i+0x212>
d00457b6:	2500      	movs	r5, #0
d00457b8:	f104 0619 	add.w	r6, r4, #25
d00457bc:	e7f5      	b.n	d00457aa <_printf_i+0x22e>
d00457be:	bf00      	nop
d00457c0:	d0046411 	.word	0xd0046411
d00457c4:	d0046422 	.word	0xd0046422

d00457c8 <__sread>:
d00457c8:	b510      	push	{r4, lr}
d00457ca:	460c      	mov	r4, r1
d00457cc:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d00457d0:	f000 f924 	bl	d0045a1c <_read_r>
d00457d4:	2800      	cmp	r0, #0
d00457d6:	bfab      	itete	ge
d00457d8:	6d63      	ldrge	r3, [r4, #84]	; 0x54
d00457da:	89a3      	ldrhlt	r3, [r4, #12]
d00457dc:	181b      	addge	r3, r3, r0
d00457de:	f423 5380 	biclt.w	r3, r3, #4096	; 0x1000
d00457e2:	bfac      	ite	ge
d00457e4:	6563      	strge	r3, [r4, #84]	; 0x54
d00457e6:	81a3      	strhlt	r3, [r4, #12]
d00457e8:	bd10      	pop	{r4, pc}

d00457ea <__swrite>:
d00457ea:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
d00457ee:	461f      	mov	r7, r3
d00457f0:	898b      	ldrh	r3, [r1, #12]
d00457f2:	05db      	lsls	r3, r3, #23
d00457f4:	4605      	mov	r5, r0
d00457f6:	460c      	mov	r4, r1
d00457f8:	4616      	mov	r6, r2
d00457fa:	d505      	bpl.n	d0045808 <__swrite+0x1e>
d00457fc:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d0045800:	2302      	movs	r3, #2
d0045802:	2200      	movs	r2, #0
d0045804:	f000 f856 	bl	d00458b4 <_lseek_r>
d0045808:	89a3      	ldrh	r3, [r4, #12]
d004580a:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
d004580e:	f423 5380 	bic.w	r3, r3, #4096	; 0x1000
d0045812:	81a3      	strh	r3, [r4, #12]
d0045814:	4632      	mov	r2, r6
d0045816:	463b      	mov	r3, r7
d0045818:	4628      	mov	r0, r5
d004581a:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
d004581e:	f7fa bc19 	b.w	d0040054 <_write_r>

d0045822 <__sseek>:
d0045822:	b510      	push	{r4, lr}
d0045824:	460c      	mov	r4, r1
d0045826:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d004582a:	f000 f843 	bl	d00458b4 <_lseek_r>
d004582e:	1c43      	adds	r3, r0, #1
d0045830:	89a3      	ldrh	r3, [r4, #12]
d0045832:	bf15      	itete	ne
d0045834:	6560      	strne	r0, [r4, #84]	; 0x54
d0045836:	f423 5380 	biceq.w	r3, r3, #4096	; 0x1000
d004583a:	f443 5380 	orrne.w	r3, r3, #4096	; 0x1000
d004583e:	81a3      	strheq	r3, [r4, #12]
d0045840:	bf18      	it	ne
d0045842:	81a3      	strhne	r3, [r4, #12]
d0045844:	bd10      	pop	{r4, pc}

d0045846 <__sclose>:
d0045846:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d004584a:	f000 b801 	b.w	d0045850 <_close_r>
	...

d0045850 <_close_r>:
d0045850:	b538      	push	{r3, r4, r5, lr}
d0045852:	4d06      	ldr	r5, [pc, #24]	; (d004586c <_close_r+0x1c>)
d0045854:	2300      	movs	r3, #0
d0045856:	4604      	mov	r4, r0
d0045858:	4608      	mov	r0, r1
d004585a:	602b      	str	r3, [r5, #0]
d004585c:	f7fa fc34 	bl	d00400c8 <_close>
d0045860:	1c43      	adds	r3, r0, #1
d0045862:	d102      	bne.n	d004586a <_close_r+0x1a>
d0045864:	682b      	ldr	r3, [r5, #0]
d0045866:	b103      	cbz	r3, d004586a <_close_r+0x1a>
d0045868:	6023      	str	r3, [r4, #0]
d004586a:	bd38      	pop	{r3, r4, r5, pc}
d004586c:	d0047cfc 	.word	0xd0047cfc

d0045870 <_fstat_r>:
d0045870:	b538      	push	{r3, r4, r5, lr}
d0045872:	4d07      	ldr	r5, [pc, #28]	; (d0045890 <_fstat_r+0x20>)
d0045874:	2300      	movs	r3, #0
d0045876:	4604      	mov	r4, r0
d0045878:	4608      	mov	r0, r1
d004587a:	4611      	mov	r1, r2
d004587c:	602b      	str	r3, [r5, #0]
d004587e:	f7fa fc27 	bl	d00400d0 <_fstat>
d0045882:	1c43      	adds	r3, r0, #1
d0045884:	d102      	bne.n	d004588c <_fstat_r+0x1c>
d0045886:	682b      	ldr	r3, [r5, #0]
d0045888:	b103      	cbz	r3, d004588c <_fstat_r+0x1c>
d004588a:	6023      	str	r3, [r4, #0]
d004588c:	bd38      	pop	{r3, r4, r5, pc}
d004588e:	bf00      	nop
d0045890:	d0047cfc 	.word	0xd0047cfc

d0045894 <_isatty_r>:
d0045894:	b538      	push	{r3, r4, r5, lr}
d0045896:	4d06      	ldr	r5, [pc, #24]	; (d00458b0 <_isatty_r+0x1c>)
d0045898:	2300      	movs	r3, #0
d004589a:	4604      	mov	r4, r0
d004589c:	4608      	mov	r0, r1
d004589e:	602b      	str	r3, [r5, #0]
d00458a0:	f7fa fc3e 	bl	d0040120 <_isatty>
d00458a4:	1c43      	adds	r3, r0, #1
d00458a6:	d102      	bne.n	d00458ae <_isatty_r+0x1a>
d00458a8:	682b      	ldr	r3, [r5, #0]
d00458aa:	b103      	cbz	r3, d00458ae <_isatty_r+0x1a>
d00458ac:	6023      	str	r3, [r4, #0]
d00458ae:	bd38      	pop	{r3, r4, r5, pc}
d00458b0:	d0047cfc 	.word	0xd0047cfc

d00458b4 <_lseek_r>:
d00458b4:	b538      	push	{r3, r4, r5, lr}
d00458b6:	4d07      	ldr	r5, [pc, #28]	; (d00458d4 <_lseek_r+0x20>)
d00458b8:	4604      	mov	r4, r0
d00458ba:	4608      	mov	r0, r1
d00458bc:	4611      	mov	r1, r2
d00458be:	2200      	movs	r2, #0
d00458c0:	602a      	str	r2, [r5, #0]
d00458c2:	461a      	mov	r2, r3
d00458c4:	f7fa fc0a 	bl	d00400dc <_lseek>
d00458c8:	1c43      	adds	r3, r0, #1
d00458ca:	d102      	bne.n	d00458d2 <_lseek_r+0x1e>
d00458cc:	682b      	ldr	r3, [r5, #0]
d00458ce:	b103      	cbz	r3, d00458d2 <_lseek_r+0x1e>
d00458d0:	6023      	str	r3, [r4, #0]
d00458d2:	bd38      	pop	{r3, r4, r5, pc}
d00458d4:	d0047cfc 	.word	0xd0047cfc
	...

d00458e0 <memchr>:
d00458e0:	f001 01ff 	and.w	r1, r1, #255	; 0xff
d00458e4:	2a10      	cmp	r2, #16
d00458e6:	db2b      	blt.n	d0045940 <memchr+0x60>
d00458e8:	f010 0f07 	tst.w	r0, #7
d00458ec:	d008      	beq.n	d0045900 <memchr+0x20>
d00458ee:	f810 3b01 	ldrb.w	r3, [r0], #1
d00458f2:	3a01      	subs	r2, #1
d00458f4:	428b      	cmp	r3, r1
d00458f6:	d02d      	beq.n	d0045954 <memchr+0x74>
d00458f8:	f010 0f07 	tst.w	r0, #7
d00458fc:	b342      	cbz	r2, d0045950 <memchr+0x70>
d00458fe:	d1f6      	bne.n	d00458ee <memchr+0xe>
d0045900:	b4f0      	push	{r4, r5, r6, r7}
d0045902:	ea41 2101 	orr.w	r1, r1, r1, lsl #8
d0045906:	ea41 4101 	orr.w	r1, r1, r1, lsl #16
d004590a:	f022 0407 	bic.w	r4, r2, #7
d004590e:	f07f 0700 	mvns.w	r7, #0
d0045912:	2300      	movs	r3, #0
d0045914:	e8f0 5602 	ldrd	r5, r6, [r0], #8
d0045918:	3c08      	subs	r4, #8
d004591a:	ea85 0501 	eor.w	r5, r5, r1
d004591e:	ea86 0601 	eor.w	r6, r6, r1
d0045922:	fa85 f547 	uadd8	r5, r5, r7
d0045926:	faa3 f587 	sel	r5, r3, r7
d004592a:	fa86 f647 	uadd8	r6, r6, r7
d004592e:	faa5 f687 	sel	r6, r5, r7
d0045932:	b98e      	cbnz	r6, d0045958 <memchr+0x78>
d0045934:	d1ee      	bne.n	d0045914 <memchr+0x34>
d0045936:	bcf0      	pop	{r4, r5, r6, r7}
d0045938:	f001 01ff 	and.w	r1, r1, #255	; 0xff
d004593c:	f002 0207 	and.w	r2, r2, #7
d0045940:	b132      	cbz	r2, d0045950 <memchr+0x70>
d0045942:	f810 3b01 	ldrb.w	r3, [r0], #1
d0045946:	3a01      	subs	r2, #1
d0045948:	ea83 0301 	eor.w	r3, r3, r1
d004594c:	b113      	cbz	r3, d0045954 <memchr+0x74>
d004594e:	d1f8      	bne.n	d0045942 <memchr+0x62>
d0045950:	2000      	movs	r0, #0
d0045952:	4770      	bx	lr
d0045954:	3801      	subs	r0, #1
d0045956:	4770      	bx	lr
d0045958:	2d00      	cmp	r5, #0
d004595a:	bf06      	itte	eq
d004595c:	4635      	moveq	r5, r6
d004595e:	3803      	subeq	r0, #3
d0045960:	3807      	subne	r0, #7
d0045962:	f015 0f01 	tst.w	r5, #1
d0045966:	d107      	bne.n	d0045978 <memchr+0x98>
d0045968:	3001      	adds	r0, #1
d004596a:	f415 7f80 	tst.w	r5, #256	; 0x100
d004596e:	bf02      	ittt	eq
d0045970:	3001      	addeq	r0, #1
d0045972:	f415 3fc0 	tsteq.w	r5, #98304	; 0x18000
d0045976:	3001      	addeq	r0, #1
d0045978:	bcf0      	pop	{r4, r5, r6, r7}
d004597a:	3801      	subs	r0, #1
d004597c:	4770      	bx	lr
d004597e:	bf00      	nop

d0045980 <memcpy>:
d0045980:	440a      	add	r2, r1
d0045982:	4291      	cmp	r1, r2
d0045984:	f100 33ff 	add.w	r3, r0, #4294967295	; 0xffffffff
d0045988:	d100      	bne.n	d004598c <memcpy+0xc>
d004598a:	4770      	bx	lr
d004598c:	b510      	push	{r4, lr}
d004598e:	f811 4b01 	ldrb.w	r4, [r1], #1
d0045992:	f803 4f01 	strb.w	r4, [r3, #1]!
d0045996:	4291      	cmp	r1, r2
d0045998:	d1f9      	bne.n	d004598e <memcpy+0xe>
d004599a:	bd10      	pop	{r4, pc}

d004599c <memmove>:
d004599c:	4288      	cmp	r0, r1
d004599e:	b510      	push	{r4, lr}
d00459a0:	eb01 0402 	add.w	r4, r1, r2
d00459a4:	d902      	bls.n	d00459ac <memmove+0x10>
d00459a6:	4284      	cmp	r4, r0
d00459a8:	4623      	mov	r3, r4
d00459aa:	d807      	bhi.n	d00459bc <memmove+0x20>
d00459ac:	1e43      	subs	r3, r0, #1
d00459ae:	42a1      	cmp	r1, r4
d00459b0:	d008      	beq.n	d00459c4 <memmove+0x28>
d00459b2:	f811 2b01 	ldrb.w	r2, [r1], #1
d00459b6:	f803 2f01 	strb.w	r2, [r3, #1]!
d00459ba:	e7f8      	b.n	d00459ae <memmove+0x12>
d00459bc:	4402      	add	r2, r0
d00459be:	4601      	mov	r1, r0
d00459c0:	428a      	cmp	r2, r1
d00459c2:	d100      	bne.n	d00459c6 <memmove+0x2a>
d00459c4:	bd10      	pop	{r4, pc}
d00459c6:	f813 4d01 	ldrb.w	r4, [r3, #-1]!
d00459ca:	f802 4d01 	strb.w	r4, [r2, #-1]!
d00459ce:	e7f7      	b.n	d00459c0 <memmove+0x24>

d00459d0 <_realloc_r>:
d00459d0:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d00459d2:	4607      	mov	r7, r0
d00459d4:	4614      	mov	r4, r2
d00459d6:	460e      	mov	r6, r1
d00459d8:	b921      	cbnz	r1, d00459e4 <_realloc_r+0x14>
d00459da:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
d00459de:	4611      	mov	r1, r2
d00459e0:	f7fe bdc4 	b.w	d004456c <_malloc_r>
d00459e4:	b922      	cbnz	r2, d00459f0 <_realloc_r+0x20>
d00459e6:	f7fe fd71 	bl	d00444cc <_free_r>
d00459ea:	4625      	mov	r5, r4
d00459ec:	4628      	mov	r0, r5
d00459ee:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d00459f0:	f000 f826 	bl	d0045a40 <_malloc_usable_size_r>
d00459f4:	42a0      	cmp	r0, r4
d00459f6:	d20f      	bcs.n	d0045a18 <_realloc_r+0x48>
d00459f8:	4621      	mov	r1, r4
d00459fa:	4638      	mov	r0, r7
d00459fc:	f7fe fdb6 	bl	d004456c <_malloc_r>
d0045a00:	4605      	mov	r5, r0
d0045a02:	2800      	cmp	r0, #0
d0045a04:	d0f2      	beq.n	d00459ec <_realloc_r+0x1c>
d0045a06:	4631      	mov	r1, r6
d0045a08:	4622      	mov	r2, r4
d0045a0a:	f7ff ffb9 	bl	d0045980 <memcpy>
d0045a0e:	4631      	mov	r1, r6
d0045a10:	4638      	mov	r0, r7
d0045a12:	f7fe fd5b 	bl	d00444cc <_free_r>
d0045a16:	e7e9      	b.n	d00459ec <_realloc_r+0x1c>
d0045a18:	4635      	mov	r5, r6
d0045a1a:	e7e7      	b.n	d00459ec <_realloc_r+0x1c>

d0045a1c <_read_r>:
d0045a1c:	b538      	push	{r3, r4, r5, lr}
d0045a1e:	4d07      	ldr	r5, [pc, #28]	; (d0045a3c <_read_r+0x20>)
d0045a20:	4604      	mov	r4, r0
d0045a22:	4608      	mov	r0, r1
d0045a24:	4611      	mov	r1, r2
d0045a26:	2200      	movs	r2, #0
d0045a28:	602a      	str	r2, [r5, #0]
d0045a2a:	461a      	mov	r2, r3
d0045a2c:	f7fa fb42 	bl	d00400b4 <_read>
d0045a30:	1c43      	adds	r3, r0, #1
d0045a32:	d102      	bne.n	d0045a3a <_read_r+0x1e>
d0045a34:	682b      	ldr	r3, [r5, #0]
d0045a36:	b103      	cbz	r3, d0045a3a <_read_r+0x1e>
d0045a38:	6023      	str	r3, [r4, #0]
d0045a3a:	bd38      	pop	{r3, r4, r5, pc}
d0045a3c:	d0047cfc 	.word	0xd0047cfc

d0045a40 <_malloc_usable_size_r>:
d0045a40:	f851 3c04 	ldr.w	r3, [r1, #-4]
d0045a44:	1f18      	subs	r0, r3, #4
d0045a46:	2b00      	cmp	r3, #0
d0045a48:	bfbc      	itt	lt
d0045a4a:	580b      	ldrlt	r3, [r1, r0]
d0045a4c:	18c0      	addlt	r0, r0, r3
d0045a4e:	4770      	bx	lr
d0045a50:	6964694d 	.word	0x6964694d
d0045a54:	73616c42 	.word	0x73616c42
d0045a58:	20726574 	.word	0x20726574
d0045a5c:	372e3056 	.word	0x372e3056
d0045a60:	00000036 	.word	0x00000036
d0045a64:	68676972 	.word	0x68676972
d0045a68:	6c632074 	.word	0x6c632074
d0045a6c:	206b6369 	.word	0x206b6369
d0045a70:	656c6572 	.word	0x656c6572
d0045a74:	20657361 	.word	0x20657361
d0045a78:	74697865 	.word	0x74697865
d0045a7c:	00000073 	.word	0x00000073
d0045a80:	65646f6d 	.word	0x65646f6d
d0045a84:	0000003d 	.word	0x0000003d
d0045a88:	45444f4d 	.word	0x45444f4d
d0045a8c:	0000003d 	.word	0x0000003d
d0045a90:	61722d2d 	.word	0x61722d2d
d0045a94:	00000077 	.word	0x00000077
d0045a98:	6f6e2d2d 	.word	0x6f6e2d2d
d0045a9c:	7273702d 	.word	0x7273702d
d0045aa0:	00003438 	.word	0x00003438
d0045aa4:	00776172 	.word	0x00776172
d0045aa8:	00574152 	.word	0x00574152
d0045aac:	746d2d2d 	.word	0x746d2d2d
d0045ab0:	74733233 	.word	0x74733233
d0045ab4:	00000064 	.word	0x00000064
d0045ab8:	544d2d2d 	.word	0x544d2d2d
d0045abc:	54533233 	.word	0x54533233
d0045ac0:	00000044 	.word	0x00000044
d0045ac4:	746d2d2d 	.word	0x746d2d2d
d0045ac8:	732d3233 	.word	0x732d3233
d0045acc:	646e6174 	.word	0x646e6174
d0045ad0:	00647261 	.word	0x00647261
d0045ad4:	544d2d2d 	.word	0x544d2d2d
d0045ad8:	532d3233 	.word	0x532d3233
d0045adc:	444e4154 	.word	0x444e4154
d0045ae0:	00445241 	.word	0x00445241
d0045ae4:	746d2d2d 	.word	0x746d2d2d
d0045ae8:	732d3233 	.word	0x732d3233
d0045aec:	646e6174 	.word	0x646e6174
d0045af0:	2d647261 	.word	0x2d647261
d0045af4:	6e616863 	.word	0x6e616863
d0045af8:	736c656e 	.word	0x736c656e
d0045afc:	00000000 	.word	0x00000000
d0045b00:	3233746d 	.word	0x3233746d
d0045b04:	00647473 	.word	0x00647473
d0045b08:	3233544d 	.word	0x3233544d
d0045b0c:	00445453 	.word	0x00445453
d0045b10:	3233746d 	.word	0x3233746d
d0045b14:	6174732d 	.word	0x6174732d
d0045b18:	7261646e 	.word	0x7261646e
d0045b1c:	00000064 	.word	0x00000064
d0045b20:	3233544d 	.word	0x3233544d
d0045b24:	4154532d 	.word	0x4154532d
d0045b28:	5241444e 	.word	0x5241444e
d0045b2c:	00000044 	.word	0x00000044
d0045b30:	3233746d 	.word	0x3233746d
d0045b34:	6174732d 	.word	0x6174732d
d0045b38:	7261646e 	.word	0x7261646e
d0045b3c:	68632d64 	.word	0x68632d64
d0045b40:	656e6e61 	.word	0x656e6e61
d0045b44:	0000736c 	.word	0x0000736c
d0045b48:	746d2d2d 	.word	0x746d2d2d
d0045b4c:	00003233 	.word	0x00003233
d0045b50:	544d2d2d 	.word	0x544d2d2d
d0045b54:	00003233 	.word	0x00003233
d0045b58:	746d2d2d 	.word	0x746d2d2d
d0045b5c:	6c613233 	.word	0x6c613233
d0045b60:	00000074 	.word	0x00000074
d0045b64:	544d2d2d 	.word	0x544d2d2d
d0045b68:	4c413233 	.word	0x4c413233
d0045b6c:	00000054 	.word	0x00000054
d0045b70:	746d2d2d 	.word	0x746d2d2d
d0045b74:	612d3233 	.word	0x612d3233
d0045b78:	7265746c 	.word	0x7265746c
d0045b7c:	6574616e 	.word	0x6574616e
d0045b80:	00000000 	.word	0x00000000
d0045b84:	544d2d2d 	.word	0x544d2d2d
d0045b88:	412d3233 	.word	0x412d3233
d0045b8c:	5245544c 	.word	0x5245544c
d0045b90:	4554414e 	.word	0x4554414e
d0045b94:	00000000 	.word	0x00000000
d0045b98:	3233746d 	.word	0x3233746d
d0045b9c:	00000000 	.word	0x00000000
d0045ba0:	3233544d 	.word	0x3233544d
d0045ba4:	00000000 	.word	0x00000000
d0045ba8:	332d544d 	.word	0x332d544d
d0045bac:	00000032 	.word	0x00000032
d0045bb0:	3233746d 	.word	0x3233746d
d0045bb4:	00746c61 	.word	0x00746c61
d0045bb8:	3233544d 	.word	0x3233544d
d0045bbc:	00544c41 	.word	0x00544c41
d0045bc0:	3233746d 	.word	0x3233746d
d0045bc4:	746c612d 	.word	0x746c612d
d0045bc8:	616e7265 	.word	0x616e7265
d0045bcc:	00006574 	.word	0x00006574
d0045bd0:	3233544d 	.word	0x3233544d
d0045bd4:	544c412d 	.word	0x544c412d
d0045bd8:	414e5245 	.word	0x414e5245
d0045bdc:	00004554 	.word	0x00004554
d0045be0:	6d672d2d 	.word	0x6d672d2d
d0045be4:	00000000 	.word	0x00000000
d0045be8:	4d472d2d 	.word	0x4d472d2d
d0045bec:	00000000 	.word	0x00000000
d0045bf0:	00006d67 	.word	0x00006d67
d0045bf4:	00004d47 	.word	0x00004d47
d0045bf8:	77612d2d 	.word	0x77612d2d
d0045bfc:	00323365 	.word	0x00323365
d0045c00:	57412d2d 	.word	0x57412d2d
d0045c04:	00323345 	.word	0x00323345
d0045c08:	33657761 	.word	0x33657761
d0045c0c:	00000032 	.word	0x00000032
d0045c10:	33455741 	.word	0x33455741
d0045c14:	00000032 	.word	0x00000032
d0045c18:	77612d2d 	.word	0x77612d2d
d0045c1c:	00343665 	.word	0x00343665
d0045c20:	57412d2d 	.word	0x57412d2d
d0045c24:	00343645 	.word	0x00343645
d0045c28:	36657761 	.word	0x36657761
d0045c2c:	00000034 	.word	0x00000034
d0045c30:	36455741 	.word	0x36455741
d0045c34:	00000034 	.word	0x00000034
d0045c38:	63732d2d 	.word	0x63732d2d
d0045c3c:	00003535 	.word	0x00003535
d0045c40:	43532d2d 	.word	0x43532d2d
d0045c44:	00003535 	.word	0x00003535
d0045c48:	63732d2d 	.word	0x63732d2d
d0045c4c:	0035352d 	.word	0x0035352d
d0045c50:	43532d2d 	.word	0x43532d2d
d0045c54:	0035352d 	.word	0x0035352d
d0045c58:	35356373 	.word	0x35356373
d0045c5c:	00000000 	.word	0x00000000
d0045c60:	35354353 	.word	0x35354353
d0045c64:	00000000 	.word	0x00000000
d0045c68:	352d4353 	.word	0x352d4353
d0045c6c:	00000035 	.word	0x00000035
d0045c70:	706f2d2d 	.word	0x706f2d2d
d0045c74:	0000336c 	.word	0x0000336c
d0045c78:	504f2d2d 	.word	0x504f2d2d
d0045c7c:	0000334c 	.word	0x0000334c
d0045c80:	706f2d2d 	.word	0x706f2d2d
d0045c84:	00332d6c 	.word	0x00332d6c
d0045c88:	504f2d2d 	.word	0x504f2d2d
d0045c8c:	00332d4c 	.word	0x00332d4c
d0045c90:	336c706f 	.word	0x336c706f
d0045c94:	00000000 	.word	0x00000000
d0045c98:	334c504f 	.word	0x334c504f
d0045c9c:	00000000 	.word	0x00000000
d0045ca0:	2d4c504f 	.word	0x2d4c504f
d0045ca4:	00000033 	.word	0x00000033
d0045ca8:	73702d2d 	.word	0x73702d2d
d0045cac:	00343872 	.word	0x00343872
d0045cb0:	53502d2d 	.word	0x53502d2d
d0045cb4:	00343852 	.word	0x00343852
d0045cb8:	38727370 	.word	0x38727370
d0045cbc:	00000034 	.word	0x00000034
d0045cc0:	38525350 	.word	0x38525350
d0045cc4:	00000034 	.word	0x00000034
d0045cc8:	61722d2d 	.word	0x61722d2d
d0045ccc:	00000a77 	.word	0x00000a77
d0045cd0:	66732d2d 	.word	0x66732d2d
d0045cd4:	000a7525 	.word	0x000a7525
d0045cd8:	41434453 	.word	0x41434453
d0045cdc:	2f3a4452 	.word	0x2f3a4452
d0045ce0:	62646973 	.word	0x62646973
d0045ce4:	652f786f 	.word	0x652f786f
d0045ce8:	6d2f766e 	.word	0x6d2f766e
d0045cec:	70696469 	.word	0x70696469
d0045cf0:	2e79616c 	.word	0x2e79616c
d0045cf4:	00666e63 	.word	0x00666e63
d0045cf8:	097f7ef0 	.word	0x097f7ef0
d0045cfc:	0000f701 	.word	0x0000f701
d0045d00:	3a4d4152 	.word	0x3a4d4152
d0045d04:	30447830 	.word	0x30447830
d0045d08:	30303030 	.word	0x30303030
d0045d0c:	00003030 	.word	0x00003030
d0045d10:	61722d2d 	.word	0x61722d2d
d0045d14:	0000006d 	.word	0x0000006d
d0045d18:	41522d2d 	.word	0x41522d2d
d0045d1c:	0000004d 	.word	0x0000004d
d0045d20:	006d6172 	.word	0x006d6172
d0045d24:	736f2d2d 	.word	0x736f2d2d
d0045d28:	6f727369 	.word	0x6f727369
d0045d2c:	00006666 	.word	0x00006666
d0045d30:	6964694d 	.word	0x6964694d
d0045d34:	73616c42 	.word	0x73616c42
d0045d38:	20726574 	.word	0x20726574
d0045d3c:	4920534f 	.word	0x4920534f
d0045d40:	73205253 	.word	0x73205253
d0045d44:	70706f74 	.word	0x70706f74
d0045d48:	00006465 	.word	0x00006465
d0045d4c:	6964694d 	.word	0x6964694d
d0045d50:	73616c42 	.word	0x73616c42
d0045d54:	20726574 	.word	0x20726574
d0045d58:	4920534f 	.word	0x4920534f
d0045d5c:	73205253 	.word	0x73205253
d0045d60:	70706f74 	.word	0x70706f74
d0045d64:	000a6465 	.word	0x000a6465
d0045d68:	736f2d2d 	.word	0x736f2d2d
d0045d6c:	00727369 	.word	0x00727369
d0045d70:	6964696d 	.word	0x6964696d
d0045d74:	73616c62 	.word	0x73616c62
d0045d78:	2e726574 	.word	0x2e726574
d0045d7c:	20707061 	.word	0x20707061
d0045d80:	6c69663c 	.word	0x6c69663c
d0045d84:	696d2e65 	.word	0x696d2e65
d0045d88:	2d7c3e64 	.word	0x2d7c3e64
d0045d8c:	6d61722d 	.word	0x6d61722d
d0045d90:	2d2d5b20 	.word	0x2d2d5b20
d0045d94:	3233746d 	.word	0x3233746d
d0045d98:	6d2d2d7c 	.word	0x6d2d2d7c
d0045d9c:	73323374 	.word	0x73323374
d0045da0:	2d7c6474 	.word	0x2d7c6474
d0045da4:	7c6d672d 	.word	0x7c6d672d
d0045da8:	77612d2d 	.word	0x77612d2d
d0045dac:	7c323365 	.word	0x7c323365
d0045db0:	77612d2d 	.word	0x77612d2d
d0045db4:	7c343665 	.word	0x7c343665
d0045db8:	63732d2d 	.word	0x63732d2d
d0045dbc:	2d7c3535 	.word	0x2d7c3535
d0045dc0:	6c706f2d 	.word	0x6c706f2d
d0045dc4:	2d2d7c33 	.word	0x2d2d7c33
d0045dc8:	2e306673 	.word	0x2e306673
d0045dcc:	7c35312e 	.word	0x7c35312e
d0045dd0:	73702d2d 	.word	0x73702d2d
d0045dd4:	7c343872 	.word	0x7c343872
d0045dd8:	61722d2d 	.word	0x61722d2d
d0045ddc:	5b205d77 	.word	0x5b205d77
d0045de0:	66732d2d 	.word	0x66732d2d
d0045de4:	74736574 	.word	0x74736574
d0045de8:	2d5b205d 	.word	0x2d5b205d
d0045dec:	69736f2d 	.word	0x69736f2d
d0045df0:	2d7c7273 	.word	0x2d7c7273
d0045df4:	69736f2d 	.word	0x69736f2d
d0045df8:	666f7273 	.word	0x666f7273
d0045dfc:	00005d66 	.word	0x00005d66
d0045e00:	6964696d 	.word	0x6964696d
d0045e04:	73616c62 	.word	0x73616c62
d0045e08:	2e726574 	.word	0x2e726574
d0045e0c:	20707061 	.word	0x20707061
d0045e10:	6c69663c 	.word	0x6c69663c
d0045e14:	696d2e65 	.word	0x696d2e65
d0045e18:	2d7c3e64 	.word	0x2d7c3e64
d0045e1c:	6d61722d 	.word	0x6d61722d
d0045e20:	6f6d5b20 	.word	0x6f6d5b20
d0045e24:	205d6564 	.word	0x205d6564
d0045e28:	732d2d5b 	.word	0x732d2d5b
d0045e2c:	73657466 	.word	0x73657466
d0045e30:	5b205d74 	.word	0x5b205d74
d0045e34:	736f2d2d 	.word	0x736f2d2d
d0045e38:	5d727369 	.word	0x5d727369
d0045e3c:	0000000a 	.word	0x0000000a
d0045e40:	6469732f 	.word	0x6469732f
d0045e44:	2f786f62 	.word	0x2f786f62
d0045e48:	2f766e65 	.word	0x2f766e65
d0045e4c:	6964696d 	.word	0x6964696d
d0045e50:	79616c70 	.word	0x79616c70
d0045e54:	666e632e 	.word	0x666e632e
d0045e58:	00000000 	.word	0x00000000
d0045e5c:	6964696d 	.word	0x6964696d
d0045e60:	79616c70 	.word	0x79616c70
d0045e64:	666e632e 	.word	0x666e632e
d0045e68:	76617320 	.word	0x76617320
d0045e6c:	61662065 	.word	0x61662065
d0045e70:	64656c69 	.word	0x64656c69
d0045e74:	7525203a 	.word	0x7525203a
d0045e78:	0000000a 	.word	0x0000000a
d0045e7c:	6964696d 	.word	0x6964696d
d0045e80:	79616c70 	.word	0x79616c70
d0045e84:	666e632e 	.word	0x666e632e
d0045e88:	65726320 	.word	0x65726320
d0045e8c:	20657461 	.word	0x20657461
d0045e90:	6c696166 	.word	0x6c696166
d0045e94:	203a6465 	.word	0x203a6465
d0045e98:	72207525 	.word	0x72207525
d0045e9c:	3a646165 	.word	0x3a646165
d0045ea0:	000a7525 	.word	0x000a7525
d0045ea4:	6964694d 	.word	0x6964694d
d0045ea8:	73616c42 	.word	0x73616c42
d0045eac:	20726574 	.word	0x20726574
d0045eb0:	6e756f53 	.word	0x6e756f53
d0045eb4:	6e6f4664 	.word	0x6e6f4664
d0045eb8:	65742074 	.word	0x65742074
d0045ebc:	203a7473 	.word	0x203a7473
d0045ec0:	000a7325 	.word	0x000a7325
d0045ec4:	6964694d 	.word	0x6964694d
d0045ec8:	73616c42 	.word	0x73616c42
d0045ecc:	20726574 	.word	0x20726574
d0045ed0:	65646f6d 	.word	0x65646f6d
d0045ed4:	76617320 	.word	0x76617320
d0045ed8:	203a6465 	.word	0x203a6465
d0045edc:	000a7325 	.word	0x000a7325
d0045ee0:	6964694d 	.word	0x6964694d
d0045ee4:	73616c42 	.word	0x73616c42
d0045ee8:	20726574 	.word	0x20726574
d0045eec:	65646f6d 	.word	0x65646f6d
d0045ef0:	76617320 	.word	0x76617320
d0045ef4:	000a6465 	.word	0x000a6465
d0045ef8:	6c756f43 	.word	0x6c756f43
d0045efc:	6f6e2064 	.word	0x6f6e2064
d0045f00:	6f6c2074 	.word	0x6f6c2074
d0045f04:	4d206461 	.word	0x4d206461
d0045f08:	20494449 	.word	0x20494449
d0045f0c:	6d6f7266 	.word	0x6d6f7266
d0045f10:	4d415220 	.word	0x4d415220
d0045f14:	7830203a 	.word	0x7830203a
d0045f18:	58383025 	.word	0x58383025
d0045f1c:	0000000a 	.word	0x0000000a
d0045f20:	6c756f43 	.word	0x6c756f43
d0045f24:	6f6e2064 	.word	0x6f6e2064
d0045f28:	6f6c2074 	.word	0x6f6c2074
d0045f2c:	4d206461 	.word	0x4d206461
d0045f30:	20494449 	.word	0x20494449
d0045f34:	6d6f7266 	.word	0x6d6f7266
d0045f38:	4d415220 	.word	0x4d415220
d0045f3c:	0000000a 	.word	0x0000000a
d0045f40:	6c756f43 	.word	0x6c756f43
d0045f44:	6f6e2064 	.word	0x6f6e2064
d0045f48:	6f6c2074 	.word	0x6f6c2074
d0045f4c:	4d206461 	.word	0x4d206461
d0045f50:	3a494449 	.word	0x3a494449
d0045f54:	0a732520 	.word	0x0a732520
d0045f58:	00000000 	.word	0x00000000
d0045f5c:	6c756f43 	.word	0x6c756f43
d0045f60:	6f6e2064 	.word	0x6f6e2064
d0045f64:	6f6c2074 	.word	0x6f6c2074
d0045f68:	4d206461 	.word	0x4d206461
d0045f6c:	0a494449 	.word	0x0a494449
d0045f70:	00000000 	.word	0x00000000
d0045f74:	75736e55 	.word	0x75736e55
d0045f78:	726f7070 	.word	0x726f7070
d0045f7c:	20646574 	.word	0x20646574
d0045f80:	4944494d 	.word	0x4944494d
d0045f84:	206e6920 	.word	0x206e6920
d0045f88:	004d4152 	.word	0x004d4152
d0045f8c:	75736e55 	.word	0x75736e55
d0045f90:	726f7070 	.word	0x726f7070
d0045f94:	20646574 	.word	0x20646574
d0045f98:	4944494d 	.word	0x4944494d
d0045f9c:	7325203a 	.word	0x7325203a
d0045fa0:	0000000a 	.word	0x0000000a
d0045fa4:	75736e55 	.word	0x75736e55
d0045fa8:	726f7070 	.word	0x726f7070
d0045fac:	20646574 	.word	0x20646574
d0045fb0:	4944494d 	.word	0x4944494d
d0045fb4:	000a3a21 	.word	0x000a3a21
d0045fb8:	6964694d 	.word	0x6964694d
d0045fbc:	73616c42 	.word	0x73616c42
d0045fc0:	20726574 	.word	0x20726574
d0045fc4:	4920534f 	.word	0x4920534f
d0045fc8:	73205253 	.word	0x73205253
d0045fcc:	74726174 	.word	0x74726174
d0045fd0:	203a6465 	.word	0x203a6465
d0045fd4:	000a7325 	.word	0x000a7325
d0045fd8:	6964694d 	.word	0x6964694d
d0045fdc:	73616c42 	.word	0x73616c42
d0045fe0:	20726574 	.word	0x20726574
d0045fe4:	4920534f 	.word	0x4920534f
d0045fe8:	73205253 	.word	0x73205253
d0045fec:	74726174 	.word	0x74726174
d0045ff0:	000a6465 	.word	0x000a6465
d0045ff4:	6c756f43 	.word	0x6c756f43
d0045ff8:	6f6e2064 	.word	0x6f6e2064
d0045ffc:	6c612074 	.word	0x6c612074
d0046000:	61636f6c 	.word	0x61636f6c
d0046004:	76206574 	.word	0x76206574
d0046008:	61757369 	.word	0x61757369
d004600c:	657a696c 	.word	0x657a696c
d0046010:	61622072 	.word	0x61622072
d0046014:	72676b63 	.word	0x72676b63
d0046018:	646e756f 	.word	0x646e756f
d004601c:	00000000 	.word	0x00000000
d0046020:	6964694d 	.word	0x6964694d
d0046024:	616c6220 	.word	0x616c6220
d0046028:	72657473 	.word	0x72657473
d004602c:	61747320 	.word	0x61747320
d0046030:	64657472 	.word	0x64657472
d0046034:	0000000a 	.word	0x0000000a
d0046038:	75323025 	.word	0x75323025
d004603c:	3230253a 	.word	0x3230253a
d0046040:	30252f75 	.word	0x30252f75
d0046044:	253a7532 	.word	0x253a7532
d0046048:	00753230 	.word	0x00753230
d004604c:	66732d2d 	.word	0x66732d2d
d0046050:	74736574 	.word	0x74736574
d0046054:	00000000 	.word	0x00000000
d0046058:	00007525 	.word	0x00007525
d004605c:	007f07b0 	.word	0x007f07b0
d0046060:	007f0bb0 	.word	0x007f0bb0
d0046064:	007f3c90 	.word	0x007f3c90
d0046068:	00003c80 	.word	0x00003c80
d004606c:	746d2d2d 	.word	0x746d2d2d
d0046070:	000a3233 	.word	0x000a3233
d0046074:	746d2d2d 	.word	0x746d2d2d
d0046078:	74733233 	.word	0x74733233
d004607c:	00000a64 	.word	0x00000a64
d0046080:	6d672d2d 	.word	0x6d672d2d
d0046084:	0000000a 	.word	0x0000000a
d0046088:	77612d2d 	.word	0x77612d2d
d004608c:	0a323365 	.word	0x0a323365
d0046090:	00000000 	.word	0x00000000
d0046094:	77612d2d 	.word	0x77612d2d
d0046098:	0a343665 	.word	0x0a343665
d004609c:	00000000 	.word	0x00000000
d00460a0:	63732d2d 	.word	0x63732d2d
d00460a4:	000a3535 	.word	0x000a3535
d00460a8:	706f2d2d 	.word	0x706f2d2d
d00460ac:	000a336c 	.word	0x000a336c
d00460b0:	73702d2d 	.word	0x73702d2d
d00460b4:	0a343872 	.word	0x0a343872
d00460b8:	00000000 	.word	0x00000000

d00460bc <CSWTCH.400>:
d00460bc:	d004606c d0046074 d0046080 d0046088     l`..t`...`...`..
d00460cc:	d0046094 d00460a0 d00460a8 d0045cc8     .`...`...`...\..
d00460dc:	d0045cc8 d0045cc8 d0045cc8 d0045cc8     .\...\...\...\..
d00460ec:	d0045cc8 d0045cc8 d0045cc8 d0045cc8     .\...\...\...\..
d00460fc:	d0045cc8 d0045cc8 d0045cc8 d0045cc8     .\...\...\...\..
d004610c:	d0045cc8 d0045cc8 d0045cc8 d00460b0     .\...\...\...`..
d004611c:	00400ab9 332d544d 4c412032 00000054     ..@.MT-32 ALT...
d004612c:	332d544d 54532032 00000044 00304653     MT-32 STD...SF0.
d004613c:	00314653 00324653 00334653 00344653     SF1.SF2.SF3.SF4.
d004614c:	00354653 00364653 00374653 00384653     SF5.SF6.SF7.SF8.
d004615c:	00394653 30314653 00000000 31314653     SF9.SF10....SF11
d004616c:	00000000 32314653 00000000 33314653     ....SF12....SF13
d004617c:	00000000 34314653 00000000 35314653     ....SF14....SF15
d004618c:	00000000                                ....

d0046190 <CSWTCH.40>:
d0046190:	02030100                                ....

d0046194 <CSWTCH.42>:
d0046194:	d0046120 d004612c d0045bf4 d0045c10      a..,a...[...\..
d00461a4:	d0045c30 d0045c68 d0045ca0 d0046138     0\..h\...\..8a..
d00461b4:	d004613c d0046140 d0046144 d0046148     <a..@a..Da..Ha..
d00461c4:	d004614c d0046150 d0046154 d0046158     La..Pa..Ta..Xa..
d00461d4:	d004615c d0046160 d0046168 d0046170     \a..`a..ha..pa..
d00461e4:	d0046178 d0046180 d0046188 d0045cc0     xa...a...a...\..

d00461f4 <mt32_channel_setup_alt_sysex>:
d00461f4:	161041f0 0d001012 03020100 07060504     .A..............
d0046204:	00f73e09                                .>..

d0046208 <mt32_channel_setup_std_sysex>:
d0046208:	161041f0 0d001012 04030201 08070605     .A..............
d0046218:	00f73609                                .6..

d004621c <mt32_drum_note_map>:
	...
d004623c:	24242323 28272625 2c2a2a29 2f2e2e2c     ##$$%&'()**,,../
d004624c:	33323130 37363534 3b3a3938 3f3e3d3c     0123456789:;<=>?
d004625c:	43424140 47464544 2e2e2e48 3231302f     @ABCDEFGH.../012
d004626c:	36353433 3a393837 3b3b3b3b 3b3b3b3b     3456789:;;;;;;;;
d004627c:	3b3b3b3b 3b3b3b3b 3b3b3b3b 3b3b3b3b     ;;;;;;;;;;;;;;;;
d004628c:	3b3b3b3b 3b3b3b3b 3b3b3b3b 3b3b3b3b     ;;;;;;;;;;;;;;;;

d004629c <mt32_gm_program_map>:
d004629c:	03020100 07100504 612e6516 69666768     .........e.ahgfi
d00462ac:	0c0a0908 0f570f0c 3d3d3c3b 3c3e3e3e     ......W.;<==>>><
d00462bc:	46434240 1d1c4544 38363534 70393331     @BCFDE..4568139p
d00462cc:	32323130 7a272722 595e5a58 19185f5c     0122"''zXZ^Y\_..
d00462dc:	51504f4e 52565554 4d4c484a 4d6c6b6e     NOPQTUVRJHLMnklM
d00462ec:	2f2f2f2f 1c2f2718 22222620 25262330     ////.'/. &""0#&%
d00462fc:	25282429 7f2b2764 69693b3f 54344d63     )$(%d'+.?;iicM4T
d004630c:	73727364 77747175 7c7f6f78 7f7d7b7b     dsrsuqtwxo.|{{}.

d004631c <psr84_gm_program_map>:
d004631c:	02000000 07060303 29292809 262a2928     .........())()*&
d004632c:	0c0c0a0a 11430f0a 18181d1f 171a1212     ......C.........
d004633c:	54525352 5d5a5755 5d222120 26482423     RSRTUWZ] !"]#$H&
d004634c:	4b4b2423 25454848 2c312f2b 4a343332     #$KKHHE%+/1,234J
d004635c:	3f3e3d3c 373b3a39 41423635 41444140     <=>?9:;756BA@ADA
d004636c:	494a4949 4c494a4c 4b4b5051 514f4e48     IIJILJILQPKKHNOQ
d004637c:	4d4f4e4d 4f4e4d51 261f2727 39204129     MNOMQMNO''.&)A 9
d004638c:	4c2a6109 634c6060 67666564 7e7d7c7b     .a*L``Lcdefg{|}~

d004639c <_global_impure_ptr>:
d004639c:	d0046478                                xd..

d00463a0 <__sf_fake_stderr>:
	...

d00463c0 <__sf_fake_stdin>:
	...

d00463e0 <__sf_fake_stdout>:
	...
d0046400:	2b302d23 6c680020 6665004c 47464567     #-0+ .hlL.efgEFG
d0046410:	32313000 36353433 41393837 45444342     .0123456789ABCDE
d0046420:	31300046 35343332 39383736 64636261     F.0123456789abcd
d0046430:	                                         ef.

Disassembly of section .init:

d0046434 <_init>:
d0046434:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d0046436:	bf00      	nop

Disassembly of section .fini:

d0046438 <_fini>:
d0046438:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d004643a:	bf00      	nop

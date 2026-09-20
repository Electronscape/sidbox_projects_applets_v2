
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
d004001e:	f004 faed 	bl	d00445fc <setbuf>
d0040022:	6833      	ldr	r3, [r6, #0]
d0040024:	2100      	movs	r1, #0
d0040026:	68d8      	ldr	r0, [r3, #12]
d0040028:	f004 fae8 	bl	d00445fc <setbuf>
d004002c:	4629      	mov	r1, r5
d004002e:	4620      	mov	r0, r4
d0040030:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
d0040034:	f001 bfe0 	b.w	d0041ff8 <main>
d0040038:	d004628c 	.word	0xd004628c

d004003c <initMalloc>:
d004003c:	4902      	ldr	r1, [pc, #8]	; (d0040048 <initMalloc+0xc>)
d004003e:	4b03      	ldr	r3, [pc, #12]	; (d004004c <initMalloc+0x10>)
d0040040:	4a03      	ldr	r2, [pc, #12]	; (d0040050 <initMalloc+0x14>)
d0040042:	1a5b      	subs	r3, r3, r1
d0040044:	6013      	str	r3, [r2, #0]
d0040046:	4770      	bx	lr
d0040048:	d0049b20 	.word	0xd0049b20
d004004c:	d0600000 	.word	0xd0600000
d0040050:	d00479e4 	.word	0xd00479e4

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
d004009c:	f004 f958 	bl	d0044350 <__errno>
d00400a0:	2209      	movs	r2, #9
d00400a2:	4603      	mov	r3, r0
d00400a4:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d00400a8:	601a      	str	r2, [r3, #0]
d00400aa:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d00400ac:	d0046304 	.word	0xd0046304
d00400b0:	2001f000 	.word	0x2001f000

d00400b4 <_read>:
d00400b4:	b508      	push	{r3, lr}
d00400b6:	f004 f94b 	bl	d0044350 <__errno>
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
d0040102:	f004 f925 	bl	d0044350 <__errno>
d0040106:	220c      	movs	r2, #12
d0040108:	4603      	mov	r3, r0
d004010a:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d004010e:	601a      	str	r2, [r3, #0]
d0040110:	bd10      	pop	{r4, pc}
d0040112:	bf00      	nop
d0040114:	d0046300 	.word	0xd0046300
d0040118:	d0049b20 	.word	0xd0049b20
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
d00403c8:	d0045910 	.word	0xd0045910
d00403cc:	d0045924 	.word	0xd0045924
d00403d0:	d0046254 	.word	0xd0046254
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
d00404fc:	d0046748 	.word	0xd0046748

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
d004051c:	f003 f98e 	bl	d004383c <midi_translator_reset_state>
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
d00405bc:	d00467b6 	.word	0xd00467b6
d00405c0:	d0046bb8 	.word	0xd0046bb8
d00405c4:	d00467b4 	.word	0xd00467b4
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
d004060a:	f003 fb3d 	bl	d0043c88 <midi_translator_uses_soundfont>
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
d0040638:	d00479e8 	.word	0xd00479e8
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
d00406cc:	d0046308 	.word	0xd0046308

d00406d0 <parse_translator_switch.part.0>:
d00406d0:	b570      	push	{r4, r5, r6, lr}
d00406d2:	2205      	movs	r2, #5
d00406d4:	460e      	mov	r6, r1
d00406d6:	4919      	ldr	r1, [pc, #100]	; (d004073c <parse_translator_switch.part.0+0x6c>)
d00406d8:	4604      	mov	r4, r0
d00406da:	f004 f88f 	bl	d00447fc <strncmp>
d00406de:	b388      	cbz	r0, d0040744 <parse_translator_switch.part.0+0x74>
d00406e0:	2205      	movs	r2, #5
d00406e2:	4917      	ldr	r1, [pc, #92]	; (d0040740 <parse_translator_switch.part.0+0x70>)
d00406e4:	4620      	mov	r0, r4
d00406e6:	f004 f889 	bl	d00447fc <strncmp>
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
d004073c:	d0045940 	.word	0xd0045940
d0040740:	d0045948 	.word	0xd0045948
d0040744:	7963      	ldrb	r3, [r4, #5]
d0040746:	3405      	adds	r4, #5
d0040748:	2b2d      	cmp	r3, #45	; 0x2d
d004074a:	d1d2      	bne.n	d00406f2 <parse_translator_switch.part.0+0x22>
d004074c:	7863      	ldrb	r3, [r4, #1]
d004074e:	2b2d      	cmp	r3, #45	; 0x2d
d0040750:	f000 8207 	beq.w	d0040b62 <parse_translator_switch.part.0+0x492>
d0040754:	49c3      	ldr	r1, [pc, #780]	; (d0040a64 <parse_translator_switch.part.0+0x394>)
d0040756:	4620      	mov	r0, r4
d0040758:	f004 f83e 	bl	d00447d8 <strcmp>
d004075c:	2800      	cmp	r0, #0
d004075e:	f000 81fc 	beq.w	d0040b5a <parse_translator_switch.part.0+0x48a>
d0040762:	49c1      	ldr	r1, [pc, #772]	; (d0040a68 <parse_translator_switch.part.0+0x398>)
d0040764:	4620      	mov	r0, r4
d0040766:	f004 f837 	bl	d00447d8 <strcmp>
d004076a:	2800      	cmp	r0, #0
d004076c:	f000 81f5 	beq.w	d0040b5a <parse_translator_switch.part.0+0x48a>
d0040770:	49be      	ldr	r1, [pc, #760]	; (d0040a6c <parse_translator_switch.part.0+0x39c>)
d0040772:	4620      	mov	r0, r4
d0040774:	f004 f830 	bl	d00447d8 <strcmp>
d0040778:	2800      	cmp	r0, #0
d004077a:	f000 81ee 	beq.w	d0040b5a <parse_translator_switch.part.0+0x48a>
d004077e:	49bc      	ldr	r1, [pc, #752]	; (d0040a70 <parse_translator_switch.part.0+0x3a0>)
d0040780:	4620      	mov	r0, r4
d0040782:	f004 f829 	bl	d00447d8 <strcmp>
d0040786:	2800      	cmp	r0, #0
d0040788:	f000 81e7 	beq.w	d0040b5a <parse_translator_switch.part.0+0x48a>
d004078c:	49b9      	ldr	r1, [pc, #740]	; (d0040a74 <parse_translator_switch.part.0+0x3a4>)
d004078e:	4620      	mov	r0, r4
d0040790:	f004 f822 	bl	d00447d8 <strcmp>
d0040794:	2800      	cmp	r0, #0
d0040796:	f000 81f2 	beq.w	d0040b7e <parse_translator_switch.part.0+0x4ae>
d004079a:	49b7      	ldr	r1, [pc, #732]	; (d0040a78 <parse_translator_switch.part.0+0x3a8>)
d004079c:	4620      	mov	r0, r4
d004079e:	f004 f81b 	bl	d00447d8 <strcmp>
d00407a2:	2800      	cmp	r0, #0
d00407a4:	f000 81eb 	beq.w	d0040b7e <parse_translator_switch.part.0+0x4ae>
d00407a8:	49b4      	ldr	r1, [pc, #720]	; (d0040a7c <parse_translator_switch.part.0+0x3ac>)
d00407aa:	4620      	mov	r0, r4
d00407ac:	f004 f814 	bl	d00447d8 <strcmp>
d00407b0:	2800      	cmp	r0, #0
d00407b2:	f000 81e4 	beq.w	d0040b7e <parse_translator_switch.part.0+0x4ae>
d00407b6:	49b2      	ldr	r1, [pc, #712]	; (d0040a80 <parse_translator_switch.part.0+0x3b0>)
d00407b8:	4620      	mov	r0, r4
d00407ba:	f004 f80d 	bl	d00447d8 <strcmp>
d00407be:	2800      	cmp	r0, #0
d00407c0:	f000 81dd 	beq.w	d0040b7e <parse_translator_switch.part.0+0x4ae>
d00407c4:	49af      	ldr	r1, [pc, #700]	; (d0040a84 <parse_translator_switch.part.0+0x3b4>)
d00407c6:	4620      	mov	r0, r4
d00407c8:	f004 f806 	bl	d00447d8 <strcmp>
d00407cc:	2800      	cmp	r0, #0
d00407ce:	f000 81d6 	beq.w	d0040b7e <parse_translator_switch.part.0+0x4ae>
d00407d2:	49ad      	ldr	r1, [pc, #692]	; (d0040a88 <parse_translator_switch.part.0+0x3b8>)
d00407d4:	4620      	mov	r0, r4
d00407d6:	f003 ffff 	bl	d00447d8 <strcmp>
d00407da:	2800      	cmp	r0, #0
d00407dc:	f000 81cf 	beq.w	d0040b7e <parse_translator_switch.part.0+0x4ae>
d00407e0:	49aa      	ldr	r1, [pc, #680]	; (d0040a8c <parse_translator_switch.part.0+0x3bc>)
d00407e2:	4620      	mov	r0, r4
d00407e4:	f003 fff8 	bl	d00447d8 <strcmp>
d00407e8:	2800      	cmp	r0, #0
d00407ea:	f000 81c8 	beq.w	d0040b7e <parse_translator_switch.part.0+0x4ae>
d00407ee:	49a8      	ldr	r1, [pc, #672]	; (d0040a90 <parse_translator_switch.part.0+0x3c0>)
d00407f0:	4620      	mov	r0, r4
d00407f2:	f003 fff1 	bl	d00447d8 <strcmp>
d00407f6:	2800      	cmp	r0, #0
d00407f8:	f000 81c1 	beq.w	d0040b7e <parse_translator_switch.part.0+0x4ae>
d00407fc:	49a5      	ldr	r1, [pc, #660]	; (d0040a94 <parse_translator_switch.part.0+0x3c4>)
d00407fe:	4620      	mov	r0, r4
d0040800:	f003 ffea 	bl	d00447d8 <strcmp>
d0040804:	2800      	cmp	r0, #0
d0040806:	f000 81ba 	beq.w	d0040b7e <parse_translator_switch.part.0+0x4ae>
d004080a:	49a3      	ldr	r1, [pc, #652]	; (d0040a98 <parse_translator_switch.part.0+0x3c8>)
d004080c:	4620      	mov	r0, r4
d004080e:	f003 ffe3 	bl	d00447d8 <strcmp>
d0040812:	2800      	cmp	r0, #0
d0040814:	f000 81b3 	beq.w	d0040b7e <parse_translator_switch.part.0+0x4ae>
d0040818:	49a0      	ldr	r1, [pc, #640]	; (d0040a9c <parse_translator_switch.part.0+0x3cc>)
d004081a:	4620      	mov	r0, r4
d004081c:	f003 ffdc 	bl	d00447d8 <strcmp>
d0040820:	2800      	cmp	r0, #0
d0040822:	f000 81b6 	beq.w	d0040b92 <parse_translator_switch.part.0+0x4c2>
d0040826:	499e      	ldr	r1, [pc, #632]	; (d0040aa0 <parse_translator_switch.part.0+0x3d0>)
d0040828:	4620      	mov	r0, r4
d004082a:	f003 ffd5 	bl	d00447d8 <strcmp>
d004082e:	2800      	cmp	r0, #0
d0040830:	f000 81af 	beq.w	d0040b92 <parse_translator_switch.part.0+0x4c2>
d0040834:	499b      	ldr	r1, [pc, #620]	; (d0040aa4 <parse_translator_switch.part.0+0x3d4>)
d0040836:	4620      	mov	r0, r4
d0040838:	f003 ffce 	bl	d00447d8 <strcmp>
d004083c:	2800      	cmp	r0, #0
d004083e:	f000 81a8 	beq.w	d0040b92 <parse_translator_switch.part.0+0x4c2>
d0040842:	4999      	ldr	r1, [pc, #612]	; (d0040aa8 <parse_translator_switch.part.0+0x3d8>)
d0040844:	4620      	mov	r0, r4
d0040846:	f003 ffc7 	bl	d00447d8 <strcmp>
d004084a:	2800      	cmp	r0, #0
d004084c:	f000 81a1 	beq.w	d0040b92 <parse_translator_switch.part.0+0x4c2>
d0040850:	4996      	ldr	r1, [pc, #600]	; (d0040aac <parse_translator_switch.part.0+0x3dc>)
d0040852:	4620      	mov	r0, r4
d0040854:	f003 ffc0 	bl	d00447d8 <strcmp>
d0040858:	2800      	cmp	r0, #0
d004085a:	f000 819a 	beq.w	d0040b92 <parse_translator_switch.part.0+0x4c2>
d004085e:	4994      	ldr	r1, [pc, #592]	; (d0040ab0 <parse_translator_switch.part.0+0x3e0>)
d0040860:	4620      	mov	r0, r4
d0040862:	f003 ffb9 	bl	d00447d8 <strcmp>
d0040866:	2800      	cmp	r0, #0
d0040868:	f000 8193 	beq.w	d0040b92 <parse_translator_switch.part.0+0x4c2>
d004086c:	4991      	ldr	r1, [pc, #580]	; (d0040ab4 <parse_translator_switch.part.0+0x3e4>)
d004086e:	4620      	mov	r0, r4
d0040870:	f003 ffb2 	bl	d00447d8 <strcmp>
d0040874:	2800      	cmp	r0, #0
d0040876:	f000 818c 	beq.w	d0040b92 <parse_translator_switch.part.0+0x4c2>
d004087a:	498f      	ldr	r1, [pc, #572]	; (d0040ab8 <parse_translator_switch.part.0+0x3e8>)
d004087c:	4620      	mov	r0, r4
d004087e:	f003 ffab 	bl	d00447d8 <strcmp>
d0040882:	2800      	cmp	r0, #0
d0040884:	f000 8185 	beq.w	d0040b92 <parse_translator_switch.part.0+0x4c2>
d0040888:	498c      	ldr	r1, [pc, #560]	; (d0040abc <parse_translator_switch.part.0+0x3ec>)
d004088a:	4620      	mov	r0, r4
d004088c:	f003 ffa4 	bl	d00447d8 <strcmp>
d0040890:	2800      	cmp	r0, #0
d0040892:	f000 817e 	beq.w	d0040b92 <parse_translator_switch.part.0+0x4c2>
d0040896:	498a      	ldr	r1, [pc, #552]	; (d0040ac0 <parse_translator_switch.part.0+0x3f0>)
d0040898:	4620      	mov	r0, r4
d004089a:	f003 ff9d 	bl	d00447d8 <strcmp>
d004089e:	2800      	cmp	r0, #0
d00408a0:	f000 8177 	beq.w	d0040b92 <parse_translator_switch.part.0+0x4c2>
d00408a4:	4987      	ldr	r1, [pc, #540]	; (d0040ac4 <parse_translator_switch.part.0+0x3f4>)
d00408a6:	4620      	mov	r0, r4
d00408a8:	f003 ff96 	bl	d00447d8 <strcmp>
d00408ac:	2800      	cmp	r0, #0
d00408ae:	f000 8170 	beq.w	d0040b92 <parse_translator_switch.part.0+0x4c2>
d00408b2:	4985      	ldr	r1, [pc, #532]	; (d0040ac8 <parse_translator_switch.part.0+0x3f8>)
d00408b4:	4620      	mov	r0, r4
d00408b6:	f003 ff8f 	bl	d00447d8 <strcmp>
d00408ba:	2800      	cmp	r0, #0
d00408bc:	f000 8169 	beq.w	d0040b92 <parse_translator_switch.part.0+0x4c2>
d00408c0:	4982      	ldr	r1, [pc, #520]	; (d0040acc <parse_translator_switch.part.0+0x3fc>)
d00408c2:	4620      	mov	r0, r4
d00408c4:	f003 ff88 	bl	d00447d8 <strcmp>
d00408c8:	2800      	cmp	r0, #0
d00408ca:	f000 8162 	beq.w	d0040b92 <parse_translator_switch.part.0+0x4c2>
d00408ce:	4980      	ldr	r1, [pc, #512]	; (d0040ad0 <parse_translator_switch.part.0+0x400>)
d00408d0:	4620      	mov	r0, r4
d00408d2:	f003 ff81 	bl	d00447d8 <strcmp>
d00408d6:	2800      	cmp	r0, #0
d00408d8:	f000 816e 	beq.w	d0040bb8 <parse_translator_switch.part.0+0x4e8>
d00408dc:	497d      	ldr	r1, [pc, #500]	; (d0040ad4 <parse_translator_switch.part.0+0x404>)
d00408de:	4620      	mov	r0, r4
d00408e0:	f003 ff7a 	bl	d00447d8 <strcmp>
d00408e4:	2800      	cmp	r0, #0
d00408e6:	f000 8167 	beq.w	d0040bb8 <parse_translator_switch.part.0+0x4e8>
d00408ea:	497b      	ldr	r1, [pc, #492]	; (d0040ad8 <parse_translator_switch.part.0+0x408>)
d00408ec:	4620      	mov	r0, r4
d00408ee:	f003 ff73 	bl	d00447d8 <strcmp>
d00408f2:	2800      	cmp	r0, #0
d00408f4:	f000 8160 	beq.w	d0040bb8 <parse_translator_switch.part.0+0x4e8>
d00408f8:	4978      	ldr	r1, [pc, #480]	; (d0040adc <parse_translator_switch.part.0+0x40c>)
d00408fa:	4620      	mov	r0, r4
d00408fc:	f003 ff6c 	bl	d00447d8 <strcmp>
d0040900:	2800      	cmp	r0, #0
d0040902:	f000 8159 	beq.w	d0040bb8 <parse_translator_switch.part.0+0x4e8>
d0040906:	4976      	ldr	r1, [pc, #472]	; (d0040ae0 <parse_translator_switch.part.0+0x410>)
d0040908:	4620      	mov	r0, r4
d004090a:	f003 ff65 	bl	d00447d8 <strcmp>
d004090e:	2800      	cmp	r0, #0
d0040910:	f000 814e 	beq.w	d0040bb0 <parse_translator_switch.part.0+0x4e0>
d0040914:	4973      	ldr	r1, [pc, #460]	; (d0040ae4 <parse_translator_switch.part.0+0x414>)
d0040916:	4620      	mov	r0, r4
d0040918:	f003 ff5e 	bl	d00447d8 <strcmp>
d004091c:	2800      	cmp	r0, #0
d004091e:	f000 8147 	beq.w	d0040bb0 <parse_translator_switch.part.0+0x4e0>
d0040922:	4971      	ldr	r1, [pc, #452]	; (d0040ae8 <parse_translator_switch.part.0+0x418>)
d0040924:	4620      	mov	r0, r4
d0040926:	f003 ff57 	bl	d00447d8 <strcmp>
d004092a:	2800      	cmp	r0, #0
d004092c:	f000 8140 	beq.w	d0040bb0 <parse_translator_switch.part.0+0x4e0>
d0040930:	496e      	ldr	r1, [pc, #440]	; (d0040aec <parse_translator_switch.part.0+0x41c>)
d0040932:	4620      	mov	r0, r4
d0040934:	f003 ff50 	bl	d00447d8 <strcmp>
d0040938:	2800      	cmp	r0, #0
d004093a:	f000 8139 	beq.w	d0040bb0 <parse_translator_switch.part.0+0x4e0>
d004093e:	496c      	ldr	r1, [pc, #432]	; (d0040af0 <parse_translator_switch.part.0+0x420>)
d0040940:	4620      	mov	r0, r4
d0040942:	f003 ff49 	bl	d00447d8 <strcmp>
d0040946:	2800      	cmp	r0, #0
d0040948:	f000 812e 	beq.w	d0040ba8 <parse_translator_switch.part.0+0x4d8>
d004094c:	4969      	ldr	r1, [pc, #420]	; (d0040af4 <parse_translator_switch.part.0+0x424>)
d004094e:	4620      	mov	r0, r4
d0040950:	f003 ff42 	bl	d00447d8 <strcmp>
d0040954:	2800      	cmp	r0, #0
d0040956:	f000 8127 	beq.w	d0040ba8 <parse_translator_switch.part.0+0x4d8>
d004095a:	4967      	ldr	r1, [pc, #412]	; (d0040af8 <parse_translator_switch.part.0+0x428>)
d004095c:	4620      	mov	r0, r4
d004095e:	f003 ff3b 	bl	d00447d8 <strcmp>
d0040962:	2800      	cmp	r0, #0
d0040964:	f000 8120 	beq.w	d0040ba8 <parse_translator_switch.part.0+0x4d8>
d0040968:	4964      	ldr	r1, [pc, #400]	; (d0040afc <parse_translator_switch.part.0+0x42c>)
d004096a:	4620      	mov	r0, r4
d004096c:	f003 ff34 	bl	d00447d8 <strcmp>
d0040970:	2800      	cmp	r0, #0
d0040972:	f000 8119 	beq.w	d0040ba8 <parse_translator_switch.part.0+0x4d8>
d0040976:	4962      	ldr	r1, [pc, #392]	; (d0040b00 <parse_translator_switch.part.0+0x430>)
d0040978:	4620      	mov	r0, r4
d004097a:	f003 ff2d 	bl	d00447d8 <strcmp>
d004097e:	2800      	cmp	r0, #0
d0040980:	f000 810e 	beq.w	d0040ba0 <parse_translator_switch.part.0+0x4d0>
d0040984:	495f      	ldr	r1, [pc, #380]	; (d0040b04 <parse_translator_switch.part.0+0x434>)
d0040986:	4620      	mov	r0, r4
d0040988:	f003 ff26 	bl	d00447d8 <strcmp>
d004098c:	2800      	cmp	r0, #0
d004098e:	f000 8107 	beq.w	d0040ba0 <parse_translator_switch.part.0+0x4d0>
d0040992:	495d      	ldr	r1, [pc, #372]	; (d0040b08 <parse_translator_switch.part.0+0x438>)
d0040994:	4620      	mov	r0, r4
d0040996:	f003 ff1f 	bl	d00447d8 <strcmp>
d004099a:	2800      	cmp	r0, #0
d004099c:	f000 8100 	beq.w	d0040ba0 <parse_translator_switch.part.0+0x4d0>
d00409a0:	495a      	ldr	r1, [pc, #360]	; (d0040b0c <parse_translator_switch.part.0+0x43c>)
d00409a2:	4620      	mov	r0, r4
d00409a4:	f003 ff18 	bl	d00447d8 <strcmp>
d00409a8:	2800      	cmp	r0, #0
d00409aa:	f000 80f9 	beq.w	d0040ba0 <parse_translator_switch.part.0+0x4d0>
d00409ae:	4958      	ldr	r1, [pc, #352]	; (d0040b10 <parse_translator_switch.part.0+0x440>)
d00409b0:	4620      	mov	r0, r4
d00409b2:	f003 ff11 	bl	d00447d8 <strcmp>
d00409b6:	2800      	cmp	r0, #0
d00409b8:	f000 80f2 	beq.w	d0040ba0 <parse_translator_switch.part.0+0x4d0>
d00409bc:	4955      	ldr	r1, [pc, #340]	; (d0040b14 <parse_translator_switch.part.0+0x444>)
d00409be:	4620      	mov	r0, r4
d00409c0:	f003 ff0a 	bl	d00447d8 <strcmp>
d00409c4:	2800      	cmp	r0, #0
d00409c6:	f000 80eb 	beq.w	d0040ba0 <parse_translator_switch.part.0+0x4d0>
d00409ca:	4953      	ldr	r1, [pc, #332]	; (d0040b18 <parse_translator_switch.part.0+0x448>)
d00409cc:	4620      	mov	r0, r4
d00409ce:	f003 ff03 	bl	d00447d8 <strcmp>
d00409d2:	2800      	cmp	r0, #0
d00409d4:	f000 80e4 	beq.w	d0040ba0 <parse_translator_switch.part.0+0x4d0>
d00409d8:	4950      	ldr	r1, [pc, #320]	; (d0040b1c <parse_translator_switch.part.0+0x44c>)
d00409da:	4620      	mov	r0, r4
d00409dc:	f003 fefc 	bl	d00447d8 <strcmp>
d00409e0:	2800      	cmp	r0, #0
d00409e2:	f000 80d9 	beq.w	d0040b98 <parse_translator_switch.part.0+0x4c8>
d00409e6:	494e      	ldr	r1, [pc, #312]	; (d0040b20 <parse_translator_switch.part.0+0x450>)
d00409e8:	4620      	mov	r0, r4
d00409ea:	f003 fef5 	bl	d00447d8 <strcmp>
d00409ee:	2800      	cmp	r0, #0
d00409f0:	f000 80d2 	beq.w	d0040b98 <parse_translator_switch.part.0+0x4c8>
d00409f4:	494b      	ldr	r1, [pc, #300]	; (d0040b24 <parse_translator_switch.part.0+0x454>)
d00409f6:	4620      	mov	r0, r4
d00409f8:	f003 feee 	bl	d00447d8 <strcmp>
d00409fc:	2800      	cmp	r0, #0
d00409fe:	f000 80cb 	beq.w	d0040b98 <parse_translator_switch.part.0+0x4c8>
d0040a02:	4949      	ldr	r1, [pc, #292]	; (d0040b28 <parse_translator_switch.part.0+0x458>)
d0040a04:	4620      	mov	r0, r4
d0040a06:	f003 fee7 	bl	d00447d8 <strcmp>
d0040a0a:	2800      	cmp	r0, #0
d0040a0c:	f000 80c4 	beq.w	d0040b98 <parse_translator_switch.part.0+0x4c8>
d0040a10:	4946      	ldr	r1, [pc, #280]	; (d0040b2c <parse_translator_switch.part.0+0x45c>)
d0040a12:	4620      	mov	r0, r4
d0040a14:	f003 fee0 	bl	d00447d8 <strcmp>
d0040a18:	2800      	cmp	r0, #0
d0040a1a:	f000 80bd 	beq.w	d0040b98 <parse_translator_switch.part.0+0x4c8>
d0040a1e:	4944      	ldr	r1, [pc, #272]	; (d0040b30 <parse_translator_switch.part.0+0x460>)
d0040a20:	4620      	mov	r0, r4
d0040a22:	f003 fed9 	bl	d00447d8 <strcmp>
d0040a26:	2800      	cmp	r0, #0
d0040a28:	f000 80b6 	beq.w	d0040b98 <parse_translator_switch.part.0+0x4c8>
d0040a2c:	4941      	ldr	r1, [pc, #260]	; (d0040b34 <parse_translator_switch.part.0+0x464>)
d0040a2e:	4620      	mov	r0, r4
d0040a30:	f003 fed2 	bl	d00447d8 <strcmp>
d0040a34:	2800      	cmp	r0, #0
d0040a36:	f000 80af 	beq.w	d0040b98 <parse_translator_switch.part.0+0x4c8>
d0040a3a:	493f      	ldr	r1, [pc, #252]	; (d0040b38 <parse_translator_switch.part.0+0x468>)
d0040a3c:	4620      	mov	r0, r4
d0040a3e:	f003 fecb 	bl	d00447d8 <strcmp>
d0040a42:	2800      	cmp	r0, #0
d0040a44:	f000 8085 	beq.w	d0040b52 <parse_translator_switch.part.0+0x482>
d0040a48:	493c      	ldr	r1, [pc, #240]	; (d0040b3c <parse_translator_switch.part.0+0x46c>)
d0040a4a:	4620      	mov	r0, r4
d0040a4c:	f003 fec4 	bl	d00447d8 <strcmp>
d0040a50:	2800      	cmp	r0, #0
d0040a52:	d07e      	beq.n	d0040b52 <parse_translator_switch.part.0+0x482>
d0040a54:	493a      	ldr	r1, [pc, #232]	; (d0040b40 <parse_translator_switch.part.0+0x470>)
d0040a56:	4620      	mov	r0, r4
d0040a58:	f003 febe 	bl	d00447d8 <strcmp>
d0040a5c:	2800      	cmp	r0, #0
d0040a5e:	d078      	beq.n	d0040b52 <parse_translator_switch.part.0+0x482>
d0040a60:	e070      	b.n	d0040b44 <parse_translator_switch.part.0+0x474>
d0040a62:	bf00      	nop
d0040a64:	d0045950 	.word	0xd0045950
d0040a68:	d0045958 	.word	0xd0045958
d0040a6c:	d0045964 	.word	0xd0045964
d0040a70:	d0045968 	.word	0xd0045968
d0040a74:	d004596c 	.word	0xd004596c
d0040a78:	d0045978 	.word	0xd0045978
d0040a7c:	d0045984 	.word	0xd0045984
d0040a80:	d0045994 	.word	0xd0045994
d0040a84:	d00459a4 	.word	0xd00459a4
d0040a88:	d00459c0 	.word	0xd00459c0
d0040a8c:	d00459c8 	.word	0xd00459c8
d0040a90:	d00459d0 	.word	0xd00459d0
d0040a94:	d00459e0 	.word	0xd00459e0
d0040a98:	d00459f0 	.word	0xd00459f0
d0040a9c:	d0045a08 	.word	0xd0045a08
d0040aa0:	d0045a10 	.word	0xd0045a10
d0040aa4:	d0045a18 	.word	0xd0045a18
d0040aa8:	d0045a24 	.word	0xd0045a24
d0040aac:	d0045a30 	.word	0xd0045a30
d0040ab0:	d0045a44 	.word	0xd0045a44
d0040ab4:	d0045a58 	.word	0xd0045a58
d0040ab8:	d0045a60 	.word	0xd0045a60
d0040abc:	d0045a68 	.word	0xd0045a68
d0040ac0:	d0045a70 	.word	0xd0045a70
d0040ac4:	d0045a78 	.word	0xd0045a78
d0040ac8:	d0045a80 	.word	0xd0045a80
d0040acc:	d0045a90 	.word	0xd0045a90
d0040ad0:	d0045aa0 	.word	0xd0045aa0
d0040ad4:	d0045aa8 	.word	0xd0045aa8
d0040ad8:	d0045ab0 	.word	0xd0045ab0
d0040adc:	d0045ab4 	.word	0xd0045ab4
d0040ae0:	d0045ab8 	.word	0xd0045ab8
d0040ae4:	d0045ac0 	.word	0xd0045ac0
d0040ae8:	d0045ac8 	.word	0xd0045ac8
d0040aec:	d0045ad0 	.word	0xd0045ad0
d0040af0:	d0045ad8 	.word	0xd0045ad8
d0040af4:	d0045ae0 	.word	0xd0045ae0
d0040af8:	d0045ae8 	.word	0xd0045ae8
d0040afc:	d0045af0 	.word	0xd0045af0
d0040b00:	d0045af8 	.word	0xd0045af8
d0040b04:	d0045b00 	.word	0xd0045b00
d0040b08:	d0045b08 	.word	0xd0045b08
d0040b0c:	d0045b10 	.word	0xd0045b10
d0040b10:	d0045b18 	.word	0xd0045b18
d0040b14:	d0045b20 	.word	0xd0045b20
d0040b18:	d0045b28 	.word	0xd0045b28
d0040b1c:	d0045b30 	.word	0xd0045b30
d0040b20:	d0045b38 	.word	0xd0045b38
d0040b24:	d0045b40 	.word	0xd0045b40
d0040b28:	d0045b48 	.word	0xd0045b48
d0040b2c:	d0045b50 	.word	0xd0045b50
d0040b30:	d0045b58 	.word	0xd0045b58
d0040b34:	d0045b60 	.word	0xd0045b60
d0040b38:	d0045b68 	.word	0xd0045b68
d0040b3c:	d0045b70 	.word	0xd0045b70
d0040b40:	d0045b78 	.word	0xd0045b78
d0040b44:	4620      	mov	r0, r4
d0040b46:	491e      	ldr	r1, [pc, #120]	; (d0040bc0 <parse_translator_switch.part.0+0x4f0>)
d0040b48:	f003 fe46 	bl	d00447d8 <strcmp>
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
d0040b8e:	f002 be31 	b.w	d00437f4 <midi_translator_profile_for_soundfont_index>
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
d0040bc0:	d0045b80 	.word	0xd0045b80

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

d0040cc8 <midi_wait_for_synth_ready.part.0>:
d0040cc8:	b538      	push	{r3, r4, r5, lr}
d0040cca:	f44f 74fa 	mov.w	r4, #500	; 0x1f4
d0040cce:	4d09      	ldr	r5, [pc, #36]	; (d0040cf4 <midi_wait_for_synth_ready.part.0+0x2c>)
d0040cd0:	7f28      	ldrb	r0, [r5, #28]
d0040cd2:	3c01      	subs	r4, #1
d0040cd4:	7f69      	ldrb	r1, [r5, #29]
d0040cd6:	7faa      	ldrb	r2, [r5, #30]
d0040cd8:	b2a4      	uxth	r4, r4
d0040cda:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d0040cde:	7feb      	ldrb	r3, [r5, #31]
d0040ce0:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d0040ce4:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0040ce8:	699b      	ldr	r3, [r3, #24]
d0040cea:	4798      	blx	r3
d0040cec:	2c00      	cmp	r4, #0
d0040cee:	d1ef      	bne.n	d0040cd0 <midi_wait_for_synth_ready.part.0+0x8>
d0040cf0:	bd38      	pop	{r3, r4, r5, pc}
d0040cf2:	bf00      	nop
d0040cf4:	2001f000 	.word	0x2001f000

d0040cf8 <write_translator_config.constprop.0>:
d0040cf8:	e92d 43f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
d0040cfc:	b083      	sub	sp, #12
d0040cfe:	2300      	movs	r3, #0
d0040d00:	460d      	mov	r5, r1
d0040d02:	4604      	mov	r4, r0
d0040d04:	a901      	add	r1, sp, #4
d0040d06:	f88d 3004 	strb.w	r3, [sp, #4]
d0040d0a:	f002 fd7d 	bl	d0043808 <midi_translator_profile_soundfont_index>
d0040d0e:	2800      	cmp	r0, #0
d0040d10:	d156      	bne.n	d0040dc0 <write_translator_config.constprop.0+0xc8>
d0040d12:	1e60      	subs	r0, r4, #1
d0040d14:	b2c0      	uxtb	r0, r0
d0040d16:	2817      	cmp	r0, #23
d0040d18:	d824      	bhi.n	d0040d64 <write_translator_config.constprop.0+0x6c>
d0040d1a:	4b2d      	ldr	r3, [pc, #180]	; (d0040dd0 <write_translator_config.constprop.0+0xd8>)
d0040d1c:	f853 7020 	ldr.w	r7, [r3, r0, lsl #2]
d0040d20:	4c2c      	ldr	r4, [pc, #176]	; (d0040dd4 <write_translator_config.constprop.0+0xdc>)
d0040d22:	4638      	mov	r0, r7
d0040d24:	f003 fd62 	bl	d00447ec <strlen>
d0040d28:	f04f 0800 	mov.w	r8, #0
d0040d2c:	7923      	ldrb	r3, [r4, #4]
d0040d2e:	220a      	movs	r2, #10
d0040d30:	f894 c005 	ldrb.w	ip, [r4, #5]
d0040d34:	4606      	mov	r6, r0
d0040d36:	79a1      	ldrb	r1, [r4, #6]
d0040d38:	2001      	movs	r0, #1
d0040d3a:	ea43 230c 	orr.w	r3, r3, ip, lsl #8
d0040d3e:	f894 c007 	ldrb.w	ip, [r4, #7]
d0040d42:	f8cd 8004 	str.w	r8, [sp, #4]
d0040d46:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0040d4a:	4923      	ldr	r1, [pc, #140]	; (d0040dd8 <write_translator_config.constprop.0+0xe0>)
d0040d4c:	ea43 630c 	orr.w	r3, r3, ip, lsl #24
d0040d50:	681b      	ldr	r3, [r3, #0]
d0040d52:	681b      	ldr	r3, [r3, #0]
d0040d54:	4798      	blx	r3
d0040d56:	4681      	mov	r9, r0
d0040d58:	7028      	strb	r0, [r5, #0]
d0040d5a:	b128      	cbz	r0, d0040d68 <write_translator_config.constprop.0+0x70>
d0040d5c:	4640      	mov	r0, r8
d0040d5e:	b003      	add	sp, #12
d0040d60:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
d0040d64:	4f1d      	ldr	r7, [pc, #116]	; (d0040ddc <write_translator_config.constprop.0+0xe4>)
d0040d66:	e7db      	b.n	d0040d20 <write_translator_config.constprop.0+0x28>
d0040d68:	7920      	ldrb	r0, [r4, #4]
d0040d6a:	4639      	mov	r1, r7
d0040d6c:	f894 c005 	ldrb.w	ip, [r4, #5]
d0040d70:	ab01      	add	r3, sp, #4
d0040d72:	f894 e006 	ldrb.w	lr, [r4, #6]
d0040d76:	4632      	mov	r2, r6
d0040d78:	ea40 270c 	orr.w	r7, r0, ip, lsl #8
d0040d7c:	f894 c007 	ldrb.w	ip, [r4, #7]
d0040d80:	2001      	movs	r0, #1
d0040d82:	ea47 470e 	orr.w	r7, r7, lr, lsl #16
d0040d86:	ea47 670c 	orr.w	r7, r7, ip, lsl #24
d0040d8a:	683f      	ldr	r7, [r7, #0]
d0040d8c:	693f      	ldr	r7, [r7, #16]
d0040d8e:	47b8      	blx	r7
d0040d90:	7923      	ldrb	r3, [r4, #4]
d0040d92:	7962      	ldrb	r2, [r4, #5]
d0040d94:	4607      	mov	r7, r0
d0040d96:	79a1      	ldrb	r1, [r4, #6]
d0040d98:	2001      	movs	r0, #1
d0040d9a:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0040d9e:	79e2      	ldrb	r2, [r4, #7]
d0040da0:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0040da4:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0040da8:	681b      	ldr	r3, [r3, #0]
d0040daa:	68db      	ldr	r3, [r3, #12]
d0040dac:	4798      	blx	r3
d0040dae:	702f      	strb	r7, [r5, #0]
d0040db0:	b10f      	cbz	r7, d0040db6 <write_translator_config.constprop.0+0xbe>
d0040db2:	4648      	mov	r0, r9
d0040db4:	e7d3      	b.n	d0040d5e <write_translator_config.constprop.0+0x66>
d0040db6:	9801      	ldr	r0, [sp, #4]
d0040db8:	1b83      	subs	r3, r0, r6
d0040dba:	4258      	negs	r0, r3
d0040dbc:	4158      	adcs	r0, r3
d0040dbe:	e7ce      	b.n	d0040d5e <write_translator_config.constprop.0+0x66>
d0040dc0:	f89d 2004 	ldrb.w	r2, [sp, #4]
d0040dc4:	4906      	ldr	r1, [pc, #24]	; (d0040de0 <write_translator_config.constprop.0+0xe8>)
d0040dc6:	4807      	ldr	r0, [pc, #28]	; (d0040de4 <write_translator_config.constprop.0+0xec>)
d0040dc8:	4f06      	ldr	r7, [pc, #24]	; (d0040de4 <write_translator_config.constprop.0+0xec>)
d0040dca:	f003 fce5 	bl	d0044798 <siprintf>
d0040dce:	e7a7      	b.n	d0040d20 <write_translator_config.constprop.0+0x28>
d0040dd0:	d0045ed4 	.word	0xd0045ed4
d0040dd4:	2001f000 	.word	0x2001f000
d0040dd8:	d0045b98 	.word	0xd0045b98
d0040ddc:	d0045b88 	.word	0xd0045b88
d0040de0:	d0045b90 	.word	0xd0045b90
d0040de4:	d0046bc0 	.word	0xd0046bc0

d0040de8 <find_translator_arg.constprop.0>:
d0040de8:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d0040dea:	1e06      	subs	r6, r0, #0
d0040dec:	dd0c      	ble.n	d0040e08 <find_translator_arg.constprop.0+0x20>
d0040dee:	4617      	mov	r7, r2
d0040df0:	1f0d      	subs	r5, r1, #4
d0040df2:	2400      	movs	r4, #0
d0040df4:	f855 0f04 	ldr.w	r0, [r5, #4]!
d0040df8:	3401      	adds	r4, #1
d0040dfa:	4639      	mov	r1, r7
d0040dfc:	b110      	cbz	r0, d0040e04 <find_translator_arg.constprop.0+0x1c>
d0040dfe:	f7ff fc67 	bl	d00406d0 <parse_translator_switch.part.0>
d0040e02:	b910      	cbnz	r0, d0040e0a <find_translator_arg.constprop.0+0x22>
d0040e04:	42b4      	cmp	r4, r6
d0040e06:	d1f5      	bne.n	d0040df4 <find_translator_arg.constprop.0+0xc>
d0040e08:	2000      	movs	r0, #0
d0040e0a:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}

d0040e0c <visualizer_draw_grid_full>:
d0040e0c:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0040e10:	2500      	movs	r5, #0
d0040e12:	b083      	sub	sp, #12
d0040e14:	4c65      	ldr	r4, [pc, #404]	; (d0040fac <visualizer_draw_grid_full+0x1a0>)
d0040e16:	f64e 7640 	movw	r6, #61248	; 0xef40
d0040e1a:	09e8      	lsrs	r0, r5, #7
d0040e1c:	6823      	ldr	r3, [r4, #0]
d0040e1e:	f44f 72a0 	mov.w	r2, #320	; 0x140
d0040e22:	2103      	movs	r1, #3
d0040e24:	3008      	adds	r0, #8
d0040e26:	b287      	uxth	r7, r0
d0040e28:	b133      	cbz	r3, d0040e38 <visualizer_draw_grid_full+0x2c>
d0040e2a:	6820      	ldr	r0, [r4, #0]
d0040e2c:	8923      	ldrh	r3, [r4, #8]
d0040e2e:	b29b      	uxth	r3, r3
d0040e30:	fb03 0007 	mla	r0, r3, r7, r0
d0040e34:	f003 faa2 	bl	d004437c <memset>
d0040e38:	6823      	ldr	r3, [r4, #0]
d0040e3a:	f44f 72a0 	mov.w	r2, #320	; 0x140
d0040e3e:	2103      	movs	r1, #3
d0040e40:	b143      	cbz	r3, d0040e54 <visualizer_draw_grid_full+0x48>
d0040e42:	6823      	ldr	r3, [r4, #0]
d0040e44:	8920      	ldrh	r0, [r4, #8]
d0040e46:	b280      	uxth	r0, r0
d0040e48:	fb00 3007 	mla	r0, r0, r7, r3
d0040e4c:	f500 70a0 	add.w	r0, r0, #320	; 0x140
d0040e50:	f003 fa94 	bl	d004437c <memset>
d0040e54:	f505 55ae 	add.w	r5, r5, #5568	; 0x15c0
d0040e58:	42b5      	cmp	r5, r6
d0040e5a:	d1de      	bne.n	d0040e1a <visualizer_draw_grid_full+0xe>
d0040e5c:	f44f 75e8 	mov.w	r5, #464	; 0x1d0
d0040e60:	2701      	movs	r7, #1
d0040e62:	4e53      	ldr	r6, [pc, #332]	; (d0040fb0 <visualizer_draw_grid_full+0x1a4>)
d0040e64:	fba6 2307 	umull	r2, r3, r6, r7
d0040e68:	08db      	lsrs	r3, r3, #3
d0040e6a:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d0040e6e:	eba7 0383 	sub.w	r3, r7, r3, lsl #2
d0040e72:	b2db      	uxtb	r3, r3
d0040e74:	3b01      	subs	r3, #1
d0040e76:	2b09      	cmp	r3, #9
d0040e78:	d824      	bhi.n	d0040ec4 <visualizer_draw_grid_full+0xb8>
d0040e7a:	e8df f003 	tbb	[pc, r3]
d0040e7e:	2305      	.short	0x2305
d0040e80:	05232305 	.word	0x05232305
d0040e84:	05230523 	.word	0x05230523
d0040e88:	09e8      	lsrs	r0, r5, #7
d0040e8a:	6823      	ldr	r3, [r4, #0]
d0040e8c:	f44f 72a0 	mov.w	r2, #320	; 0x140
d0040e90:	2102      	movs	r1, #2
d0040e92:	3008      	adds	r0, #8
d0040e94:	fa1f f880 	uxth.w	r8, r0
d0040e98:	b133      	cbz	r3, d0040ea8 <visualizer_draw_grid_full+0x9c>
d0040e9a:	6820      	ldr	r0, [r4, #0]
d0040e9c:	8923      	ldrh	r3, [r4, #8]
d0040e9e:	b29b      	uxth	r3, r3
d0040ea0:	fb03 0008 	mla	r0, r3, r8, r0
d0040ea4:	f003 fa6a 	bl	d004437c <memset>
d0040ea8:	6823      	ldr	r3, [r4, #0]
d0040eaa:	f44f 72a0 	mov.w	r2, #320	; 0x140
d0040eae:	2102      	movs	r1, #2
d0040eb0:	b143      	cbz	r3, d0040ec4 <visualizer_draw_grid_full+0xb8>
d0040eb2:	6823      	ldr	r3, [r4, #0]
d0040eb4:	8920      	ldrh	r0, [r4, #8]
d0040eb6:	b280      	uxth	r0, r0
d0040eb8:	fb00 3008 	mla	r0, r0, r8, r3
d0040ebc:	f500 70a0 	add.w	r0, r0, #320	; 0x140
d0040ec0:	f003 fa5c 	bl	d004437c <memset>
d0040ec4:	3701      	adds	r7, #1
d0040ec6:	f505 75e8 	add.w	r5, r5, #464	; 0x1d0
d0040eca:	b2ff      	uxtb	r7, r7
d0040ecc:	2f80      	cmp	r7, #128	; 0x80
d0040ece:	d1c9      	bne.n	d0040e64 <visualizer_draw_grid_full+0x58>
d0040ed0:	4b38      	ldr	r3, [pc, #224]	; (d0040fb4 <visualizer_draw_grid_full+0x1a8>)
d0040ed2:	2500      	movs	r5, #0
d0040ed4:	4e38      	ldr	r6, [pc, #224]	; (d0040fb8 <visualizer_draw_grid_full+0x1ac>)
d0040ed6:	2700      	movs	r7, #0
d0040ed8:	681b      	ldr	r3, [r3, #0]
d0040eda:	f240 1001 	movw	r0, #257	; 0x101
d0040ede:	2100      	movs	r1, #0
d0040ee0:	f44f 79a0 	mov.w	r9, #320	; 0x140
d0040ee4:	42ab      	cmp	r3, r5
d0040ee6:	bf14      	ite	ne
d0040ee8:	4698      	movne	r8, r3
d0040eea:	f44f 5880 	moveq.w	r8, #4096	; 0x1000
d0040eee:	eb16 0608 	adds.w	r6, r6, r8
d0040ef2:	f147 0700 	adc.w	r7, r7, #0
d0040ef6:	ebb0 0208 	subs.w	r2, r0, r8
d0040efa:	f161 0300 	sbc.w	r3, r1, #0
d0040efe:	e9cd 2300 	strd	r2, r3, [sp]
d0040f02:	4643      	mov	r3, r8
d0040f04:	46c8      	mov	r8, r9
d0040f06:	4699      	mov	r9, r3
d0040f08:	464a      	mov	r2, r9
d0040f0a:	2300      	movs	r3, #0
d0040f0c:	4630      	mov	r0, r6
d0040f0e:	4639      	mov	r1, r7
d0040f10:	f003 f8a2 	bl	d0044058 <__aeabi_uldivmod>
d0040f14:	9b00      	ldr	r3, [sp, #0]
d0040f16:	9a01      	ldr	r2, [sp, #4]
d0040f18:	4684      	mov	ip, r0
d0040f1a:	eb13 0a06 	adds.w	sl, r3, r6
d0040f1e:	460b      	mov	r3, r1
d0040f20:	fba9 0100 	umull	r0, r1, r9, r0
d0040f24:	eb42 0b07 	adc.w	fp, r2, r7
d0040f28:	fb09 f303 	mul.w	r3, r9, r3
d0040f2c:	2200      	movs	r2, #0
d0040f2e:	fb0c 3302 	mla	r3, ip, r2, r3
d0040f32:	4419      	add	r1, r3
d0040f34:	4559      	cmp	r1, fp
d0040f36:	bf08      	it	eq
d0040f38:	4550      	cmpeq	r0, sl
d0040f3a:	d229      	bcs.n	d0040f90 <visualizer_draw_grid_full+0x184>
d0040f3c:	f00c 0c03 	and.w	ip, ip, #3
d0040f40:	6823      	ldr	r3, [r4, #0]
d0040f42:	4594      	cmp	ip, r2
d0040f44:	bf14      	ite	ne
d0040f46:	2002      	movne	r0, #2
d0040f48:	2003      	moveq	r0, #3
d0040f4a:	b17b      	cbz	r3, d0040f6c <visualizer_draw_grid_full+0x160>
d0040f4c:	6823      	ldr	r3, [r4, #0]
d0040f4e:	f44f 71e8 	mov.w	r1, #464	; 0x1d0
d0040f52:	f8b4 c008 	ldrh.w	ip, [r4, #8]
d0040f56:	fa1f fc8c 	uxth.w	ip, ip
d0040f5a:	eb05 0ecc 	add.w	lr, r5, ip, lsl #3
d0040f5e:	4473      	add	r3, lr
d0040f60:	3901      	subs	r1, #1
d0040f62:	7018      	strb	r0, [r3, #0]
d0040f64:	4463      	add	r3, ip
d0040f66:	b289      	uxth	r1, r1
d0040f68:	2900      	cmp	r1, #0
d0040f6a:	d1f9      	bne.n	d0040f60 <visualizer_draw_grid_full+0x154>
d0040f6c:	6823      	ldr	r3, [r4, #0]
d0040f6e:	b17b      	cbz	r3, d0040f90 <visualizer_draw_grid_full+0x184>
d0040f70:	6823      	ldr	r3, [r4, #0]
d0040f72:	f44f 71e8 	mov.w	r1, #464	; 0x1d0
d0040f76:	f8b4 c008 	ldrh.w	ip, [r4, #8]
d0040f7a:	fa1f fc8c 	uxth.w	ip, ip
d0040f7e:	eb08 0ecc 	add.w	lr, r8, ip, lsl #3
d0040f82:	4473      	add	r3, lr
d0040f84:	3901      	subs	r1, #1
d0040f86:	7018      	strb	r0, [r3, #0]
d0040f88:	4463      	add	r3, ip
d0040f8a:	b289      	uxth	r1, r1
d0040f8c:	2900      	cmp	r1, #0
d0040f8e:	d1f9      	bne.n	d0040f84 <visualizer_draw_grid_full+0x178>
d0040f90:	f5b6 7680 	subs.w	r6, r6, #256	; 0x100
d0040f94:	f105 0501 	add.w	r5, r5, #1
d0040f98:	f108 0801 	add.w	r8, r8, #1
d0040f9c:	f147 37ff 	adc.w	r7, r7, #4294967295	; 0xffffffff
d0040fa0:	f5b5 7fa0 	cmp.w	r5, #320	; 0x140
d0040fa4:	d1b0      	bne.n	d0040f08 <visualizer_draw_grid_full+0xfc>
d0040fa6:	b003      	add	sp, #12
d0040fa8:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0040fac:	d0046720 	.word	0xd0046720
d0040fb0:	aaaaaaab 	.word	0xaaaaaaab
d0040fb4:	d0046bcc 	.word	0xd0046bcc
d0040fb8:	00013eff 	.word	0x00013eff

d0040fbc <visualizer_back_rect_logical.constprop.0>:
d0040fbc:	2900      	cmp	r1, #0
d0040fbe:	f000 8082 	beq.w	d00410c6 <visualizer_back_rect_logical.constprop.0+0x10a>
d0040fc2:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0040fc6:	4605      	mov	r5, r0
d0040fc8:	b083      	sub	sp, #12
d0040fca:	460f      	mov	r7, r1
d0040fcc:	4691      	mov	r9, r2
d0040fce:	f8df 80f8 	ldr.w	r8, [pc, #248]	; d00410c8 <visualizer_back_rect_logical.constprop.0+0x10c>
d0040fd2:	f5c5 74a0 	rsb	r4, r5, #320	; 0x140
d0040fd6:	f8d8 3000 	ldr.w	r3, [r8]
d0040fda:	b2a4      	uxth	r4, r4
d0040fdc:	42bc      	cmp	r4, r7
d0040fde:	bf28      	it	cs
d0040fe0:	463c      	movcs	r4, r7
d0040fe2:	2b00      	cmp	r3, #0
d0040fe4:	d059      	beq.n	d004109a <visualizer_back_rect_logical.constprop.0+0xde>
d0040fe6:	2c00      	cmp	r4, #0
d0040fe8:	d061      	beq.n	d00410ae <visualizer_back_rect_logical.constprop.0+0xf2>
d0040fea:	f5b5 7f20 	cmp.w	r5, #640	; 0x280
d0040fee:	d220      	bcs.n	d0041032 <visualizer_back_rect_logical.constprop.0+0x76>
d0040ff0:	1963      	adds	r3, r4, r5
d0040ff2:	f5b3 7f20 	cmp.w	r3, #640	; 0x280
d0040ff6:	d962      	bls.n	d00410be <visualizer_back_rect_logical.constprop.0+0x102>
d0040ff8:	f5c5 7220 	rsb	r2, r5, #640	; 0x280
d0040ffc:	b292      	uxth	r2, r2
d0040ffe:	f8d8 1000 	ldr.w	r1, [r8]
d0041002:	3a01      	subs	r2, #1
d0041004:	f8b8 b008 	ldrh.w	fp, [r8, #8]
d0041008:	f44f 76e8 	mov.w	r6, #464	; 0x1d0
d004100c:	b292      	uxth	r2, r2
d004100e:	fa1f fb8b 	uxth.w	fp, fp
d0041012:	3201      	adds	r2, #1
d0041014:	eb05 03cb 	add.w	r3, r5, fp, lsl #3
d0041018:	eb01 0a03 	add.w	sl, r1, r3
d004101c:	3e01      	subs	r6, #1
d004101e:	4650      	mov	r0, sl
d0041020:	4649      	mov	r1, r9
d0041022:	9201      	str	r2, [sp, #4]
d0041024:	b2b6      	uxth	r6, r6
d0041026:	44da      	add	sl, fp
d0041028:	f003 f9a8 	bl	d004437c <memset>
d004102c:	9a01      	ldr	r2, [sp, #4]
d004102e:	2e00      	cmp	r6, #0
d0041030:	d1f4      	bne.n	d004101c <visualizer_back_rect_logical.constprop.0+0x60>
d0041032:	f505 75a0 	add.w	r5, r5, #320	; 0x140
d0041036:	f8d8 3000 	ldr.w	r3, [r8]
d004103a:	b2ad      	uxth	r5, r5
d004103c:	b32b      	cbz	r3, d004108a <visualizer_back_rect_logical.constprop.0+0xce>
d004103e:	f5b5 7f20 	cmp.w	r5, #640	; 0x280
d0041042:	d222      	bcs.n	d004108a <visualizer_back_rect_logical.constprop.0+0xce>
d0041044:	1963      	adds	r3, r4, r5
d0041046:	f5b3 7f20 	cmp.w	r3, #640	; 0x280
d004104a:	d93a      	bls.n	d00410c2 <visualizer_back_rect_logical.constprop.0+0x106>
d004104c:	f5c5 7b20 	rsb	fp, r5, #640	; 0x280
d0041050:	fa1f fb8b 	uxth.w	fp, fp
d0041054:	f8d8 3000 	ldr.w	r3, [r8]
d0041058:	f10b 3bff 	add.w	fp, fp, #4294967295	; 0xffffffff
d004105c:	f8b8 a008 	ldrh.w	sl, [r8, #8]
d0041060:	f44f 76e8 	mov.w	r6, #464	; 0x1d0
d0041064:	fa1f fb8b 	uxth.w	fp, fp
d0041068:	fa1f fa8a 	uxth.w	sl, sl
d004106c:	f10b 0b01 	add.w	fp, fp, #1
d0041070:	eb05 05ca 	add.w	r5, r5, sl, lsl #3
d0041074:	441d      	add	r5, r3
d0041076:	3e01      	subs	r6, #1
d0041078:	4628      	mov	r0, r5
d004107a:	465a      	mov	r2, fp
d004107c:	4649      	mov	r1, r9
d004107e:	b2b6      	uxth	r6, r6
d0041080:	4455      	add	r5, sl
d0041082:	f003 f97b 	bl	d004437c <memset>
d0041086:	2e00      	cmp	r6, #0
d0041088:	d1f5      	bne.n	d0041076 <visualizer_back_rect_logical.constprop.0+0xba>
d004108a:	1b3f      	subs	r7, r7, r4
d004108c:	2500      	movs	r5, #0
d004108e:	b2bf      	uxth	r7, r7
d0041090:	2f00      	cmp	r7, #0
d0041092:	d19e      	bne.n	d0040fd2 <visualizer_back_rect_logical.constprop.0+0x16>
d0041094:	b003      	add	sp, #12
d0041096:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d004109a:	f8d8 3000 	ldr.w	r3, [r8]
d004109e:	2c00      	cmp	r4, #0
d00410a0:	d0f3      	beq.n	d004108a <visualizer_back_rect_logical.constprop.0+0xce>
d00410a2:	2b00      	cmp	r3, #0
d00410a4:	d0f1      	beq.n	d004108a <visualizer_back_rect_logical.constprop.0+0xce>
d00410a6:	f505 75a0 	add.w	r5, r5, #320	; 0x140
d00410aa:	b2ad      	uxth	r5, r5
d00410ac:	e7c7      	b.n	d004103e <visualizer_back_rect_logical.constprop.0+0x82>
d00410ae:	1b3f      	subs	r7, r7, r4
d00410b0:	f8d8 3000 	ldr.w	r3, [r8]
d00410b4:	2500      	movs	r5, #0
d00410b6:	b2bf      	uxth	r7, r7
d00410b8:	2f00      	cmp	r7, #0
d00410ba:	d18a      	bne.n	d0040fd2 <visualizer_back_rect_logical.constprop.0+0x16>
d00410bc:	e7ea      	b.n	d0041094 <visualizer_back_rect_logical.constprop.0+0xd8>
d00410be:	4622      	mov	r2, r4
d00410c0:	e79d      	b.n	d0040ffe <visualizer_back_rect_logical.constprop.0+0x42>
d00410c2:	46a3      	mov	fp, r4
d00410c4:	e7c6      	b.n	d0041054 <visualizer_back_rect_logical.constprop.0+0x98>
d00410c6:	4770      	bx	lr
d00410c8:	d0046720 	.word	0xd0046720

d00410cc <midi_translator_send_queued>:
d00410cc:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d00410d0:	4605      	mov	r5, r0
d00410d2:	b085      	sub	sp, #20
d00410d4:	b36a      	cbz	r2, d0041132 <midi_translator_send_queued+0x66>
d00410d6:	fab1 f381 	clz	r3, r1
d00410da:	f8df a1ec 	ldr.w	sl, [pc, #492]	; d00412c8 <midi_translator_send_queued+0x1fc>
d00410de:	4617      	mov	r7, r2
d00410e0:	b28c      	uxth	r4, r1
d00410e2:	095b      	lsrs	r3, r3, #5
d00410e4:	f8ba c000 	ldrh.w	ip, [sl]
d00410e8:	2800      	cmp	r0, #0
d00410ea:	bf08      	it	eq
d00410ec:	2301      	moveq	r3, #1
d00410ee:	9301      	str	r3, [sp, #4]
d00410f0:	2b00      	cmp	r3, #0
d00410f2:	d14d      	bne.n	d0041190 <midi_translator_send_queued+0xc4>
d00410f4:	f5cc 6380 	rsb	r3, ip, #1024	; 0x400
d00410f8:	b29b      	uxth	r3, r3
d00410fa:	429c      	cmp	r4, r3
d00410fc:	f200 80ae 	bhi.w	d004125c <midi_translator_send_queued+0x190>
d0041100:	4b70      	ldr	r3, [pc, #448]	; (d00412c4 <midi_translator_send_queued+0x1f8>)
d0041102:	1e45      	subs	r5, r0, #1
d0041104:	9a01      	ldr	r2, [sp, #4]
d0041106:	f8df 91c4 	ldr.w	r9, [pc, #452]	; d00412cc <midi_translator_send_queued+0x200>
d004110a:	8819      	ldrh	r1, [r3, #0]
d004110c:	3201      	adds	r2, #1
d004110e:	f815 6f01 	ldrb.w	r6, [r5, #1]!
d0041112:	1c48      	adds	r0, r1, #1
d0041114:	b292      	uxth	r2, r2
d0041116:	f809 6001 	strb.w	r6, [r9, r1]
d004111a:	f3c0 0109 	ubfx	r1, r0, #0, #10
d004111e:	4294      	cmp	r4, r2
d0041120:	d8f4      	bhi.n	d004110c <midi_translator_send_queued+0x40>
d0041122:	4464      	add	r4, ip
d0041124:	4638      	mov	r0, r7
d0041126:	8019      	strh	r1, [r3, #0]
d0041128:	f8aa 4000 	strh.w	r4, [sl]
d004112c:	b005      	add	sp, #20
d004112e:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0041132:	b28c      	uxth	r4, r1
d0041134:	b340      	cbz	r0, d0041188 <midi_translator_send_queued+0xbc>
d0041136:	fab4 f284 	clz	r2, r4
d004113a:	0952      	lsrs	r2, r2, #5
d004113c:	b324      	cbz	r4, d0041188 <midi_translator_send_queued+0xbc>
d004113e:	f8df a188 	ldr.w	sl, [pc, #392]	; d00412c8 <midi_translator_send_queued+0x1fc>
d0041142:	f8ba 7000 	ldrh.w	r7, [sl]
d0041146:	f5c7 6380 	rsb	r3, r7, #1024	; 0x400
d004114a:	b29b      	uxth	r3, r3
d004114c:	429c      	cmp	r4, r3
d004114e:	d81b      	bhi.n	d0041188 <midi_translator_send_queued+0xbc>
d0041150:	4b5c      	ldr	r3, [pc, #368]	; (d00412c4 <midi_translator_send_queued+0x1f8>)
d0041152:	1e45      	subs	r5, r0, #1
d0041154:	f8df 9174 	ldr.w	r9, [pc, #372]	; d00412cc <midi_translator_send_queued+0x200>
d0041158:	881e      	ldrh	r6, [r3, #0]
d004115a:	3201      	adds	r2, #1
d004115c:	f815 0f01 	ldrb.w	r0, [r5, #1]!
d0041160:	1c71      	adds	r1, r6, #1
d0041162:	b292      	uxth	r2, r2
d0041164:	f809 0006 	strb.w	r0, [r9, r6]
d0041168:	f3c1 0609 	ubfx	r6, r1, #0, #10
d004116c:	4294      	cmp	r4, r2
d004116e:	d8f4      	bhi.n	d004115a <midi_translator_send_queued+0x8e>
d0041170:	443c      	add	r4, r7
d0041172:	2001      	movs	r0, #1
d0041174:	801e      	strh	r6, [r3, #0]
d0041176:	f8aa 4000 	strh.w	r4, [sl]
d004117a:	b005      	add	sp, #20
d004117c:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0041180:	b115      	cbz	r5, d0041188 <midi_translator_send_queued+0xbc>
d0041182:	2c00      	cmp	r4, #0
d0041184:	f040 8096 	bne.w	d00412b4 <midi_translator_send_queued+0x1e8>
d0041188:	2000      	movs	r0, #0
d004118a:	b005      	add	sp, #20
d004118c:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0041190:	f1bc 0f00 	cmp.w	ip, #0
d0041194:	d0f4      	beq.n	d0041180 <midi_translator_send_queued+0xb4>
d0041196:	f8df b138 	ldr.w	fp, [pc, #312]	; d00412d0 <midi_translator_send_queued+0x204>
d004119a:	263c      	movs	r6, #60	; 0x3c
d004119c:	4b49      	ldr	r3, [pc, #292]	; (d00412c4 <midi_translator_send_queued+0x1f8>)
d004119e:	9402      	str	r4, [sp, #8]
d00411a0:	9503      	str	r5, [sp, #12]
d00411a2:	461c      	mov	r4, r3
d00411a4:	4655      	mov	r5, sl
d00411a6:	f8bb 0000 	ldrh.w	r0, [fp]
d00411aa:	f8df 9120 	ldr.w	r9, [pc, #288]	; d00412cc <midi_translator_send_queued+0x200>
d00411ae:	46ba      	mov	sl, r7
d00411b0:	f8df 8120 	ldr.w	r8, [pc, #288]	; d00412d4 <midi_translator_send_queued+0x208>
d00411b4:	e001      	b.n	d00411ba <midi_translator_send_queued+0xee>
d00411b6:	2e00      	cmp	r6, #0
d00411b8:	d058      	beq.n	d004126c <midi_translator_send_queued+0x1a0>
d00411ba:	8822      	ldrh	r2, [r4, #0]
d00411bc:	f5c0 6180 	rsb	r1, r0, #1024	; 0x400
d00411c0:	4282      	cmp	r2, r0
d00411c2:	eba2 0200 	sub.w	r2, r2, r0
d00411c6:	b289      	uxth	r1, r1
d00411c8:	4448      	add	r0, r9
d00411ca:	bf88      	it	hi
d00411cc:	b291      	uxthhi	r1, r2
d00411ce:	f898 2014 	ldrb.w	r2, [r8, #20]
d00411d2:	f898 e015 	ldrb.w	lr, [r8, #21]
d00411d6:	42b1      	cmp	r1, r6
d00411d8:	ea42 220e 	orr.w	r2, r2, lr, lsl #8
d00411dc:	bf28      	it	cs
d00411de:	4631      	movcs	r1, r6
d00411e0:	4561      	cmp	r1, ip
d00411e2:	bf28      	it	cs
d00411e4:	4661      	movcs	r1, ip
d00411e6:	f898 c016 	ldrb.w	ip, [r8, #22]
d00411ea:	f898 e017 	ldrb.w	lr, [r8, #23]
d00411ee:	ea42 4c0c 	orr.w	ip, r2, ip, lsl #16
d00411f2:	460f      	mov	r7, r1
d00411f4:	ea4c 620e 	orr.w	r2, ip, lr, lsl #24
d00411f8:	1bf6      	subs	r6, r6, r7
d00411fa:	6812      	ldr	r2, [r2, #0]
d00411fc:	b2b6      	uxth	r6, r6
d00411fe:	6952      	ldr	r2, [r2, #20]
d0041200:	4790      	blx	r2
d0041202:	f8bb 0000 	ldrh.w	r0, [fp]
d0041206:	882a      	ldrh	r2, [r5, #0]
d0041208:	4438      	add	r0, r7
d004120a:	eba2 0c07 	sub.w	ip, r2, r7
d004120e:	f3c0 0009 	ubfx	r0, r0, #0, #10
d0041212:	fa1f fc8c 	uxth.w	ip, ip
d0041216:	f8ab 0000 	strh.w	r0, [fp]
d004121a:	f8a5 c000 	strh.w	ip, [r5]
d004121e:	f1bc 0f00 	cmp.w	ip, #0
d0041222:	d1c8      	bne.n	d00411b6 <midi_translator_send_queued+0xea>
d0041224:	9a01      	ldr	r2, [sp, #4]
d0041226:	4657      	mov	r7, sl
d0041228:	4623      	mov	r3, r4
d004122a:	46aa      	mov	sl, r5
d004122c:	9c02      	ldr	r4, [sp, #8]
d004122e:	9d03      	ldr	r5, [sp, #12]
d0041230:	2a00      	cmp	r2, #0
d0041232:	d1a5      	bne.n	d0041180 <midi_translator_send_queued+0xb4>
d0041234:	4621      	mov	r1, r4
d0041236:	3d01      	subs	r5, #1
d0041238:	881e      	ldrh	r6, [r3, #0]
d004123a:	2200      	movs	r2, #0
d004123c:	3201      	adds	r2, #1
d004123e:	f815 cf01 	ldrb.w	ip, [r5, #1]!
d0041242:	1c70      	adds	r0, r6, #1
d0041244:	b292      	uxth	r2, r2
d0041246:	f809 c006 	strb.w	ip, [r9, r6]
d004124a:	f3c0 0609 	ubfx	r6, r0, #0, #10
d004124e:	4294      	cmp	r4, r2
d0041250:	d8f4      	bhi.n	d004123c <midi_translator_send_queued+0x170>
d0041252:	4638      	mov	r0, r7
d0041254:	801e      	strh	r6, [r3, #0]
d0041256:	f8aa 1000 	strh.w	r1, [sl]
d004125a:	e796      	b.n	d004118a <midi_translator_send_queued+0xbe>
d004125c:	f1bc 0f00 	cmp.w	ip, #0
d0041260:	d199      	bne.n	d0041196 <midi_translator_send_queued+0xca>
d0041262:	4621      	mov	r1, r4
d0041264:	4b17      	ldr	r3, [pc, #92]	; (d00412c4 <midi_translator_send_queued+0x1f8>)
d0041266:	f8df 9064 	ldr.w	r9, [pc, #100]	; d00412cc <midi_translator_send_queued+0x200>
d004126a:	e7e4      	b.n	d0041236 <midi_translator_send_queued+0x16a>
d004126c:	9801      	ldr	r0, [sp, #4]
d004126e:	4639      	mov	r1, r7
d0041270:	4623      	mov	r3, r4
d0041272:	4657      	mov	r7, sl
d0041274:	9c02      	ldr	r4, [sp, #8]
d0041276:	46aa      	mov	sl, r5
d0041278:	9d03      	ldr	r5, [sp, #12]
d004127a:	2800      	cmp	r0, #0
d004127c:	d180      	bne.n	d0041180 <midi_translator_send_queued+0xb4>
d004127e:	f501 6180 	add.w	r1, r1, #1024	; 0x400
d0041282:	1a8a      	subs	r2, r1, r2
d0041284:	b292      	uxth	r2, r2
d0041286:	4294      	cmp	r4, r2
d0041288:	d917      	bls.n	d00412ba <midi_translator_send_queued+0x1ee>
d004128a:	f898 3014 	ldrb.w	r3, [r8, #20]
d004128e:	4621      	mov	r1, r4
d0041290:	f898 2015 	ldrb.w	r2, [r8, #21]
d0041294:	4628      	mov	r0, r5
d0041296:	f898 4016 	ldrb.w	r4, [r8, #22]
d004129a:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004129e:	f898 2017 	ldrb.w	r2, [r8, #23]
d00412a2:	ea43 4304 	orr.w	r3, r3, r4, lsl #16
d00412a6:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00412aa:	681b      	ldr	r3, [r3, #0]
d00412ac:	695b      	ldr	r3, [r3, #20]
d00412ae:	4798      	blx	r3
d00412b0:	4638      	mov	r0, r7
d00412b2:	e76a      	b.n	d004118a <midi_translator_send_queued+0xbe>
d00412b4:	f8df 801c 	ldr.w	r8, [pc, #28]	; d00412d4 <midi_translator_send_queued+0x208>
d00412b8:	e7e7      	b.n	d004128a <midi_translator_send_queued+0x1be>
d00412ba:	eb04 010c 	add.w	r1, r4, ip
d00412be:	b289      	uxth	r1, r1
d00412c0:	e7b9      	b.n	d0041236 <midi_translator_send_queued+0x16a>
d00412c2:	bf00      	nop
d00412c4:	d00467b6 	.word	0xd00467b6
d00412c8:	d00467b4 	.word	0xd00467b4
d00412cc:	d00467b8 	.word	0xd00467b8
d00412d0:	d0046bb8 	.word	0xd0046bb8
d00412d4:	2001f000 	.word	0x2001f000

d00412d8 <midi_player_update_us.part.0>:
d00412d8:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d00412dc:	4682      	mov	sl, r0
d00412de:	f8d0 010c 	ldr.w	r0, [r0, #268]	; 0x10c
d00412e2:	f04f 0900 	mov.w	r9, #0
d00412e6:	b089      	sub	sp, #36	; 0x24
d00412e8:	4408      	add	r0, r1
d00412ea:	f89a 7100 	ldrb.w	r7, [sl, #256]	; 0x100
d00412ee:	e9da 2346 	ldrd	r2, r3, [sl, #280]	; 0x118
d00412f2:	f8ca 010c 	str.w	r0, [sl, #268]	; 0x10c
d00412f6:	1852      	adds	r2, r2, r1
d00412f8:	f143 0300 	adc.w	r3, r3, #0
d00412fc:	e9ca 2346 	strd	r2, r3, [sl, #280]	; 0x118
d0041300:	4653      	mov	r3, sl
d0041302:	46ca      	mov	sl, r9
d0041304:	4699      	mov	r9, r3
d0041306:	2f00      	cmp	r7, #0
d0041308:	f000 8230 	beq.w	d004176c <midi_player_update_us.part.0+0x494>
d004130c:	1e7a      	subs	r2, r7, #1
d004130e:	f109 0110 	add.w	r1, r9, #16
d0041312:	464b      	mov	r3, r9
d0041314:	f04f 35ff 	mov.w	r5, #4294967295	; 0xffffffff
d0041318:	b2d2      	uxtb	r2, r2
d004131a:	2400      	movs	r4, #0
d004131c:	eb01 1102 	add.w	r1, r1, r2, lsl #4
d0041320:	7b5a      	ldrb	r2, [r3, #13]
d0041322:	b12a      	cbz	r2, d0041330 <midi_player_update_us.part.0+0x58>
d0041324:	6898      	ldr	r0, [r3, #8]
d0041326:	b10c      	cbz	r4, d004132c <midi_player_update_us.part.0+0x54>
d0041328:	42a8      	cmp	r0, r5
d004132a:	d201      	bcs.n	d0041330 <midi_player_update_us.part.0+0x58>
d004132c:	4605      	mov	r5, r0
d004132e:	4614      	mov	r4, r2
d0041330:	3310      	adds	r3, #16
d0041332:	4299      	cmp	r1, r3
d0041334:	d1f4      	bne.n	d0041320 <midi_player_update_us.part.0+0x48>
d0041336:	2c00      	cmp	r4, #0
d0041338:	f000 8218 	beq.w	d004176c <midi_player_update_us.part.0+0x494>
d004133c:	f8d9 1108 	ldr.w	r1, [r9, #264]	; 0x108
d0041340:	2300      	movs	r3, #0
d0041342:	f8d9 0110 	ldr.w	r0, [r9, #272]	; 0x110
d0041346:	1a6e      	subs	r6, r5, r1
d0041348:	f8d9 4114 	ldr.w	r4, [r9, #276]	; 0x114
d004134c:	2100      	movs	r1, #0
d004134e:	f8b9 2104 	ldrh.w	r2, [r9, #260]	; 0x104
d0041352:	fbe4 0106 	umlal	r0, r1, r4, r6
d0041356:	f002 fe7f 	bl	d0044058 <__aeabi_uldivmod>
d004135a:	f8d9 310c 	ldr.w	r3, [r9, #268]	; 0x10c
d004135e:	4298      	cmp	r0, r3
d0041360:	f200 8209 	bhi.w	d0041776 <midi_player_update_us.part.0+0x49e>
d0041364:	1a1b      	subs	r3, r3, r0
d0041366:	2000      	movs	r0, #0
d0041368:	f8c9 2110 	str.w	r2, [r9, #272]	; 0x110
d004136c:	4604      	mov	r4, r0
d004136e:	e9c9 5342 	strd	r5, r3, [r9, #264]	; 0x108
d0041372:	e003      	b.n	d004137c <midi_player_update_us.part.0+0xa4>
d0041374:	3401      	adds	r4, #1
d0041376:	b2e4      	uxtb	r4, r4
d0041378:	42bc      	cmp	r4, r7
d004137a:	d270      	bcs.n	d004145e <midi_player_update_us.part.0+0x186>
d004137c:	eb09 1204 	add.w	r2, r9, r4, lsl #4
d0041380:	0126      	lsls	r6, r4, #4
d0041382:	7b55      	ldrb	r5, [r2, #13]
d0041384:	2d00      	cmp	r5, #0
d0041386:	d0f5      	beq.n	d0041374 <midi_player_update_us.part.0+0x9c>
d0041388:	6891      	ldr	r1, [r2, #8]
d004138a:	f8d9 3108 	ldr.w	r3, [r9, #264]	; 0x108
d004138e:	4299      	cmp	r1, r3
d0041390:	d1f0      	bne.n	d0041374 <midi_player_update_us.part.0+0x9c>
d0041392:	f859 1006 	ldr.w	r1, [r9, r6]
d0041396:	4637      	mov	r7, r6
d0041398:	6853      	ldr	r3, [r2, #4]
d004139a:	9203      	str	r2, [sp, #12]
d004139c:	4299      	cmp	r1, r3
d004139e:	d26e      	bcs.n	d004147e <midi_player_update_us.part.0+0x1a6>
d00413a0:	f991 0000 	ldrsb.w	r0, [r1]
d00413a4:	f891 b000 	ldrb.w	fp, [r1]
d00413a8:	2800      	cmp	r0, #0
d00413aa:	db6b      	blt.n	d0041484 <midi_player_update_us.part.0+0x1ac>
d00413ac:	f892 b00c 	ldrb.w	fp, [r2, #12]
d00413b0:	f1bb 0f00 	cmp.w	fp, #0
d00413b4:	f000 8121 	beq.w	d00415fa <midi_player_update_us.part.0+0x322>
d00413b8:	f1bb 0fff 	cmp.w	fp, #255	; 0xff
d00413bc:	f000 8120 	beq.w	d0041600 <midi_player_update_us.part.0+0x328>
d00413c0:	f1ab 02f0 	sub.w	r2, fp, #240	; 0xf0
d00413c4:	f1bb 0ff7 	cmp.w	fp, #247	; 0xf7
d00413c8:	fab2 f282 	clz	r2, r2
d00413cc:	ea4f 1252 	mov.w	r2, r2, lsr #5
d00413d0:	9204      	str	r2, [sp, #16]
d00413d2:	d001      	beq.n	d00413d8 <midi_player_update_us.part.0+0x100>
d00413d4:	2a00      	cmp	r2, #0
d00413d6:	d05e      	beq.n	d0041496 <midi_player_update_us.part.0+0x1be>
d00413d8:	f859 1007 	ldr.w	r1, [r9, r7]
d00413dc:	428b      	cmp	r3, r1
d00413de:	d92d      	bls.n	d004143c <midi_player_update_us.part.0+0x164>
d00413e0:	1c4a      	adds	r2, r1, #1
d00413e2:	f849 2007 	str.w	r2, [r9, r7]
d00413e6:	7808      	ldrb	r0, [r1, #0]
d00413e8:	f000 087f 	and.w	r8, r0, #127	; 0x7f
d00413ec:	0600      	lsls	r0, r0, #24
d00413ee:	f140 81a0 	bpl.w	d0041732 <midi_player_update_us.part.0+0x45a>
d00413f2:	4293      	cmp	r3, r2
d00413f4:	d922      	bls.n	d004143c <midi_player_update_us.part.0+0x164>
d00413f6:	1c8a      	adds	r2, r1, #2
d00413f8:	f849 2007 	str.w	r2, [r9, r7]
d00413fc:	7848      	ldrb	r0, [r1, #1]
d00413fe:	f000 0c7f 	and.w	ip, r0, #127	; 0x7f
d0041402:	0600      	lsls	r0, r0, #24
d0041404:	ea4c 18c8 	orr.w	r8, ip, r8, lsl #7
d0041408:	f140 8193 	bpl.w	d0041732 <midi_player_update_us.part.0+0x45a>
d004140c:	4293      	cmp	r3, r2
d004140e:	d915      	bls.n	d004143c <midi_player_update_us.part.0+0x164>
d0041410:	1cca      	adds	r2, r1, #3
d0041412:	f849 2007 	str.w	r2, [r9, r7]
d0041416:	7888      	ldrb	r0, [r1, #2]
d0041418:	f000 0c7f 	and.w	ip, r0, #127	; 0x7f
d004141c:	0600      	lsls	r0, r0, #24
d004141e:	ea4c 18c8 	orr.w	r8, ip, r8, lsl #7
d0041422:	f140 8186 	bpl.w	d0041732 <midi_player_update_us.part.0+0x45a>
d0041426:	4293      	cmp	r3, r2
d0041428:	d908      	bls.n	d004143c <midi_player_update_us.part.0+0x164>
d004142a:	1d0a      	adds	r2, r1, #4
d004142c:	f849 2007 	str.w	r2, [r9, r7]
d0041430:	f991 0003 	ldrsb.w	r0, [r1, #3]
d0041434:	78c9      	ldrb	r1, [r1, #3]
d0041436:	2800      	cmp	r0, #0
d0041438:	f280 8179 	bge.w	d004172e <midi_player_update_us.part.0+0x456>
d004143c:	444e      	add	r6, r9
d004143e:	2300      	movs	r3, #0
d0041440:	7373      	strb	r3, [r6, #13]
d0041442:	f10a 0a01 	add.w	sl, sl, #1
d0041446:	f5ba 5f80 	cmp.w	sl, #4096	; 0x1000
d004144a:	f080 8194 	bcs.w	d0041776 <midi_player_update_us.part.0+0x49e>
d004144e:	3401      	adds	r4, #1
d0041450:	f899 7100 	ldrb.w	r7, [r9, #256]	; 0x100
d0041454:	b2e4      	uxtb	r4, r4
d0041456:	42bc      	cmp	r4, r7
d0041458:	d208      	bcs.n	d004146c <midi_player_update_us.part.0+0x194>
d004145a:	4628      	mov	r0, r5
d004145c:	e78e      	b.n	d004137c <midi_player_update_us.part.0+0xa4>
d004145e:	f5ba 5f80 	cmp.w	sl, #4096	; 0x1000
d0041462:	f080 8188 	bcs.w	d0041776 <midi_player_update_us.part.0+0x49e>
d0041466:	2800      	cmp	r0, #0
d0041468:	f000 8188 	beq.w	d004177c <midi_player_update_us.part.0+0x4a4>
d004146c:	2f00      	cmp	r7, #0
d004146e:	f000 817d 	beq.w	d004176c <midi_player_update_us.part.0+0x494>
d0041472:	2000      	movs	r0, #0
d0041474:	4604      	mov	r4, r0
d0041476:	e781      	b.n	d004137c <midi_player_update_us.part.0+0xa4>
d0041478:	428b      	cmp	r3, r1
d004147a:	f200 80c1 	bhi.w	d0041600 <midi_player_update_us.part.0+0x328>
d004147e:	2300      	movs	r3, #0
d0041480:	7353      	strb	r3, [r2, #13]
d0041482:	e7de      	b.n	d0041442 <midi_player_update_us.part.0+0x16a>
d0041484:	3101      	adds	r1, #1
d0041486:	f1bb 0fef 	cmp.w	fp, #239	; 0xef
d004148a:	f849 1006 	str.w	r1, [r9, r6]
d004148e:	f200 8084 	bhi.w	d004159a <midi_player_update_us.part.0+0x2c2>
d0041492:	f882 b00c 	strb.w	fp, [r2, #12]
d0041496:	f08b 0280 	eor.w	r2, fp, #128	; 0x80
d004149a:	2a6f      	cmp	r2, #111	; 0x6f
d004149c:	f200 808f 	bhi.w	d00415be <midi_player_update_us.part.0+0x2e6>
d00414a0:	f00b 02e0 	and.w	r2, fp, #224	; 0xe0
d00414a4:	2ac0      	cmp	r2, #192	; 0xc0
d00414a6:	f040 816e 	bne.w	d0041786 <midi_player_update_us.part.0+0x4ae>
d00414aa:	2101      	movs	r1, #1
d00414ac:	2002      	movs	r0, #2
d00414ae:	468e      	mov	lr, r1
d00414b0:	f859 2007 	ldr.w	r2, [r9, r7]
d00414b4:	1a9b      	subs	r3, r3, r2
d00414b6:	428b      	cmp	r3, r1
d00414b8:	d3c0      	bcc.n	d004143c <midi_player_update_us.part.0+0x164>
d00414ba:	1c53      	adds	r3, r2, #1
d00414bc:	f88d b01c 	strb.w	fp, [sp, #28]
d00414c0:	f1be 0f02 	cmp.w	lr, #2
d00414c4:	f849 3007 	str.w	r3, [r9, r7]
d00414c8:	f892 c000 	ldrb.w	ip, [r2]
d00414cc:	f88d c01d 	strb.w	ip, [sp, #29]
d00414d0:	d105      	bne.n	d00414de <midi_player_update_us.part.0+0x206>
d00414d2:	1c93      	adds	r3, r2, #2
d00414d4:	f849 3007 	str.w	r3, [r9, r7]
d00414d8:	7853      	ldrb	r3, [r2, #1]
d00414da:	f88d 301e 	strb.w	r3, [sp, #30]
d00414de:	2802      	cmp	r0, #2
d00414e0:	f88d 001b 	strb.w	r0, [sp, #27]
d00414e4:	d009      	beq.n	d00414fa <midi_player_update_us.part.0+0x222>
d00414e6:	f00b 03f0 	and.w	r3, fp, #240	; 0xf0
d00414ea:	f00b 0b0f 	and.w	fp, fp, #15
d00414ee:	2b90      	cmp	r3, #144	; 0x90
d00414f0:	f000 81dd 	beq.w	d00418ae <midi_player_update_us.part.0+0x5d6>
d00414f4:	2b80      	cmp	r3, #128	; 0x80
d00414f6:	f000 8226 	beq.w	d0041946 <midi_player_update_us.part.0+0x66e>
d00414fa:	f10d 021b 	add.w	r2, sp, #27
d00414fe:	f899 0101 	ldrb.w	r0, [r9, #257]	; 0x101
d0041502:	a907      	add	r1, sp, #28
d0041504:	f002 f9aa 	bl	d004385c <midi_translator_translate_voice_packet>
d0041508:	2800      	cmp	r0, #0
d004150a:	f040 8166 	bne.w	d00417da <midi_player_update_us.part.0+0x502>
d004150e:	eb09 0306 	add.w	r3, r9, r6
d0041512:	7b5b      	ldrb	r3, [r3, #13]
d0041514:	2b00      	cmp	r3, #0
d0041516:	d094      	beq.n	d0041442 <midi_player_update_us.part.0+0x16a>
d0041518:	9b03      	ldr	r3, [sp, #12]
d004151a:	6859      	ldr	r1, [r3, #4]
d004151c:	f859 3007 	ldr.w	r3, [r9, r7]
d0041520:	428b      	cmp	r3, r1
d0041522:	d28b      	bcs.n	d004143c <midi_player_update_us.part.0+0x164>
d0041524:	1c58      	adds	r0, r3, #1
d0041526:	f849 0007 	str.w	r0, [r9, r7]
d004152a:	f893 c000 	ldrb.w	ip, [r3]
d004152e:	f01c 0f80 	tst.w	ip, #128	; 0x80
d0041532:	f00c 027f 	and.w	r2, ip, #127	; 0x7f
d0041536:	d02b      	beq.n	d0041590 <midi_player_update_us.part.0+0x2b8>
d0041538:	4281      	cmp	r1, r0
d004153a:	f67f af7f 	bls.w	d004143c <midi_player_update_us.part.0+0x164>
d004153e:	1c98      	adds	r0, r3, #2
d0041540:	f849 0007 	str.w	r0, [r9, r7]
d0041544:	f893 c001 	ldrb.w	ip, [r3, #1]
d0041548:	f00c 0e7f 	and.w	lr, ip, #127	; 0x7f
d004154c:	f01c 0f80 	tst.w	ip, #128	; 0x80
d0041550:	ea4e 12c2 	orr.w	r2, lr, r2, lsl #7
d0041554:	d01c      	beq.n	d0041590 <midi_player_update_us.part.0+0x2b8>
d0041556:	4281      	cmp	r1, r0
d0041558:	f67f af70 	bls.w	d004143c <midi_player_update_us.part.0+0x164>
d004155c:	1cd8      	adds	r0, r3, #3
d004155e:	f849 0007 	str.w	r0, [r9, r7]
d0041562:	f893 c002 	ldrb.w	ip, [r3, #2]
d0041566:	f00c 0e7f 	and.w	lr, ip, #127	; 0x7f
d004156a:	f01c 0f80 	tst.w	ip, #128	; 0x80
d004156e:	ea4e 12c2 	orr.w	r2, lr, r2, lsl #7
d0041572:	d00d      	beq.n	d0041590 <midi_player_update_us.part.0+0x2b8>
d0041574:	4281      	cmp	r1, r0
d0041576:	f67f af61 	bls.w	d004143c <midi_player_update_us.part.0+0x164>
d004157a:	1d19      	adds	r1, r3, #4
d004157c:	f849 1007 	str.w	r1, [r9, r7]
d0041580:	f993 1003 	ldrsb.w	r1, [r3, #3]
d0041584:	78db      	ldrb	r3, [r3, #3]
d0041586:	2900      	cmp	r1, #0
d0041588:	f6ff af58 	blt.w	d004143c <midi_player_update_us.part.0+0x164>
d004158c:	ea43 12c2 	orr.w	r2, r3, r2, lsl #7
d0041590:	444e      	add	r6, r9
d0041592:	68b3      	ldr	r3, [r6, #8]
d0041594:	4413      	add	r3, r2
d0041596:	60b3      	str	r3, [r6, #8]
d0041598:	e753      	b.n	d0041442 <midi_player_update_us.part.0+0x16a>
d004159a:	f1bb 0fff 	cmp.w	fp, #255	; 0xff
d004159e:	f43f af6b 	beq.w	d0041478 <midi_player_update_us.part.0+0x1a0>
d00415a2:	f1ab 02f0 	sub.w	r2, fp, #240	; 0xf0
d00415a6:	f1bb 0ff7 	cmp.w	fp, #247	; 0xf7
d00415aa:	fab2 f282 	clz	r2, r2
d00415ae:	ea4f 1252 	mov.w	r2, r2, lsr #5
d00415b2:	9204      	str	r2, [sp, #16]
d00415b4:	f43f af10 	beq.w	d00413d8 <midi_player_update_us.part.0+0x100>
d00415b8:	2a00      	cmp	r2, #0
d00415ba:	f47f af0d 	bne.w	d00413d8 <midi_player_update_us.part.0+0x100>
d00415be:	f1bb 0ff2 	cmp.w	fp, #242	; 0xf2
d00415c2:	f000 80f3 	beq.w	d00417ac <midi_player_update_us.part.0+0x4d4>
d00415c6:	f00b 02fd 	and.w	r2, fp, #253	; 0xfd
d00415ca:	2af1      	cmp	r2, #241	; 0xf1
d00415cc:	f000 80df 	beq.w	d004178e <midi_player_update_us.part.0+0x4b6>
d00415d0:	2101      	movs	r1, #1
d00415d2:	f88d b01c 	strb.w	fp, [sp, #28]
d00415d6:	4acb      	ldr	r2, [pc, #812]	; (d0041904 <midi_player_update_us.part.0+0x62c>)
d00415d8:	a807      	add	r0, sp, #28
d00415da:	7d13      	ldrb	r3, [r2, #20]
d00415dc:	7d52      	ldrb	r2, [r2, #21]
d00415de:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d00415e2:	4ac8      	ldr	r2, [pc, #800]	; (d0041904 <midi_player_update_us.part.0+0x62c>)
d00415e4:	7d92      	ldrb	r2, [r2, #22]
d00415e6:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d00415ea:	4ac6      	ldr	r2, [pc, #792]	; (d0041904 <midi_player_update_us.part.0+0x62c>)
d00415ec:	7dd2      	ldrb	r2, [r2, #23]
d00415ee:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00415f2:	681b      	ldr	r3, [r3, #0]
d00415f4:	695b      	ldr	r3, [r3, #20]
d00415f6:	4798      	blx	r3
d00415f8:	e789      	b.n	d004150e <midi_player_update_us.part.0+0x236>
d00415fa:	f882 b00d 	strb.w	fp, [r2, #13]
d00415fe:	e720      	b.n	d0041442 <midi_player_update_us.part.0+0x16a>
d0041600:	1c4a      	adds	r2, r1, #1
d0041602:	4293      	cmp	r3, r2
d0041604:	f849 2007 	str.w	r2, [r9, r7]
d0041608:	f891 e000 	ldrb.w	lr, [r1]
d004160c:	f67f af16 	bls.w	d004143c <midi_player_update_us.part.0+0x164>
d0041610:	1c8a      	adds	r2, r1, #2
d0041612:	f849 2007 	str.w	r2, [r9, r7]
d0041616:	f891 c001 	ldrb.w	ip, [r1, #1]
d004161a:	f01c 0f80 	tst.w	ip, #128	; 0x80
d004161e:	f00c 007f 	and.w	r0, ip, #127	; 0x7f
d0041622:	d02c      	beq.n	d004167e <midi_player_update_us.part.0+0x3a6>
d0041624:	4293      	cmp	r3, r2
d0041626:	f67f af09 	bls.w	d004143c <midi_player_update_us.part.0+0x164>
d004162a:	1cca      	adds	r2, r1, #3
d004162c:	f849 2007 	str.w	r2, [r9, r7]
d0041630:	f891 c002 	ldrb.w	ip, [r1, #2]
d0041634:	f00c 087f 	and.w	r8, ip, #127	; 0x7f
d0041638:	f01c 0f80 	tst.w	ip, #128	; 0x80
d004163c:	ea48 10c0 	orr.w	r0, r8, r0, lsl #7
d0041640:	d01d      	beq.n	d004167e <midi_player_update_us.part.0+0x3a6>
d0041642:	4293      	cmp	r3, r2
d0041644:	f67f aefa 	bls.w	d004143c <midi_player_update_us.part.0+0x164>
d0041648:	1d0a      	adds	r2, r1, #4
d004164a:	f849 2007 	str.w	r2, [r9, r7]
d004164e:	f891 c003 	ldrb.w	ip, [r1, #3]
d0041652:	f00c 087f 	and.w	r8, ip, #127	; 0x7f
d0041656:	f01c 0f80 	tst.w	ip, #128	; 0x80
d004165a:	ea48 10c0 	orr.w	r0, r8, r0, lsl #7
d004165e:	d00e      	beq.n	d004167e <midi_player_update_us.part.0+0x3a6>
d0041660:	4293      	cmp	r3, r2
d0041662:	f67f aeeb 	bls.w	d004143c <midi_player_update_us.part.0+0x164>
d0041666:	1d4a      	adds	r2, r1, #5
d0041668:	f849 2007 	str.w	r2, [r9, r7]
d004166c:	f991 c004 	ldrsb.w	ip, [r1, #4]
d0041670:	7909      	ldrb	r1, [r1, #4]
d0041672:	f1bc 0f00 	cmp.w	ip, #0
d0041676:	f6ff aee1 	blt.w	d004143c <midi_player_update_us.part.0+0x164>
d004167a:	ea41 10c0 	orr.w	r0, r1, r0, lsl #7
d004167e:	1a9b      	subs	r3, r3, r2
d0041680:	4283      	cmp	r3, r0
d0041682:	f4ff aedb 	bcc.w	d004143c <midi_player_update_us.part.0+0x164>
d0041686:	f1be 0f51 	cmp.w	lr, #81	; 0x51
d004168a:	f000 80c4 	beq.w	d0041816 <midi_player_update_us.part.0+0x53e>
d004168e:	f1be 0f2f 	cmp.w	lr, #47	; 0x2f
d0041692:	d103      	bne.n	d004169c <midi_player_update_us.part.0+0x3c4>
d0041694:	eb09 0306 	add.w	r3, r9, r6
d0041698:	2100      	movs	r1, #0
d004169a:	7359      	strb	r1, [r3, #13]
d004169c:	4402      	add	r2, r0
d004169e:	eb09 0306 	add.w	r3, r9, r6
d00416a2:	f849 2007 	str.w	r2, [r9, r7]
d00416a6:	7b5b      	ldrb	r3, [r3, #13]
d00416a8:	2b00      	cmp	r3, #0
d00416aa:	f43f aeca 	beq.w	d0041442 <midi_player_update_us.part.0+0x16a>
d00416ae:	9b03      	ldr	r3, [sp, #12]
d00416b0:	6859      	ldr	r1, [r3, #4]
d00416b2:	428a      	cmp	r2, r1
d00416b4:	f4bf aec2 	bcs.w	d004143c <midi_player_update_us.part.0+0x164>
d00416b8:	1c50      	adds	r0, r2, #1
d00416ba:	f849 0007 	str.w	r0, [r9, r7]
d00416be:	f892 c000 	ldrb.w	ip, [r2]
d00416c2:	f01c 0f80 	tst.w	ip, #128	; 0x80
d00416c6:	f00c 037f 	and.w	r3, ip, #127	; 0x7f
d00416ca:	d02b      	beq.n	d0041724 <midi_player_update_us.part.0+0x44c>
d00416cc:	4281      	cmp	r1, r0
d00416ce:	f67f aeb5 	bls.w	d004143c <midi_player_update_us.part.0+0x164>
d00416d2:	1c90      	adds	r0, r2, #2
d00416d4:	f849 0007 	str.w	r0, [r9, r7]
d00416d8:	f892 c001 	ldrb.w	ip, [r2, #1]
d00416dc:	f00c 0e7f 	and.w	lr, ip, #127	; 0x7f
d00416e0:	f01c 0f80 	tst.w	ip, #128	; 0x80
d00416e4:	ea4e 13c3 	orr.w	r3, lr, r3, lsl #7
d00416e8:	d01c      	beq.n	d0041724 <midi_player_update_us.part.0+0x44c>
d00416ea:	4281      	cmp	r1, r0
d00416ec:	f67f aea6 	bls.w	d004143c <midi_player_update_us.part.0+0x164>
d00416f0:	1cd0      	adds	r0, r2, #3
d00416f2:	f849 0007 	str.w	r0, [r9, r7]
d00416f6:	f892 c002 	ldrb.w	ip, [r2, #2]
d00416fa:	f00c 0e7f 	and.w	lr, ip, #127	; 0x7f
d00416fe:	f01c 0f80 	tst.w	ip, #128	; 0x80
d0041702:	ea4e 13c3 	orr.w	r3, lr, r3, lsl #7
d0041706:	d00d      	beq.n	d0041724 <midi_player_update_us.part.0+0x44c>
d0041708:	4281      	cmp	r1, r0
d004170a:	f67f ae97 	bls.w	d004143c <midi_player_update_us.part.0+0x164>
d004170e:	1d11      	adds	r1, r2, #4
d0041710:	f849 1007 	str.w	r1, [r9, r7]
d0041714:	f992 1003 	ldrsb.w	r1, [r2, #3]
d0041718:	78d2      	ldrb	r2, [r2, #3]
d004171a:	2900      	cmp	r1, #0
d004171c:	f6ff ae8e 	blt.w	d004143c <midi_player_update_us.part.0+0x164>
d0041720:	ea42 13c3 	orr.w	r3, r2, r3, lsl #7
d0041724:	444e      	add	r6, r9
d0041726:	68b2      	ldr	r2, [r6, #8]
d0041728:	4413      	add	r3, r2
d004172a:	60b3      	str	r3, [r6, #8]
d004172c:	e689      	b.n	d0041442 <midi_player_update_us.part.0+0x16a>
d004172e:	ea41 18c8 	orr.w	r8, r1, r8, lsl #7
d0041732:	1a9b      	subs	r3, r3, r2
d0041734:	4543      	cmp	r3, r8
d0041736:	f4ff ae81 	bcc.w	d004143c <midi_player_update_us.part.0+0x164>
d004173a:	4643      	mov	r3, r8
d004173c:	4659      	mov	r1, fp
d004173e:	f899 0101 	ldrb.w	r0, [r9, #257]	; 0x101
d0041742:	f002 fa81 	bl	d0043c48 <midi_translator_accepts_sysex>
d0041746:	2800      	cmp	r0, #0
d0041748:	d173      	bne.n	d0041832 <midi_player_update_us.part.0+0x55a>
d004174a:	f859 3007 	ldr.w	r3, [r9, r7]
d004174e:	eb09 0206 	add.w	r2, r9, r6
d0041752:	4443      	add	r3, r8
d0041754:	f849 3007 	str.w	r3, [r9, r7]
d0041758:	7b52      	ldrb	r2, [r2, #13]
d004175a:	2a00      	cmp	r2, #0
d004175c:	f43f ae71 	beq.w	d0041442 <midi_player_update_us.part.0+0x16a>
d0041760:	9a03      	ldr	r2, [sp, #12]
d0041762:	6851      	ldr	r1, [r2, #4]
d0041764:	428b      	cmp	r3, r1
d0041766:	f4ff aedd 	bcc.w	d0041524 <midi_player_update_us.part.0+0x24c>
d004176a:	e667      	b.n	d004143c <midi_player_update_us.part.0+0x164>
d004176c:	2300      	movs	r3, #0
d004176e:	f889 3120 	strb.w	r3, [r9, #288]	; 0x120
d0041772:	f7fe fec5 	bl	d0040500 <midi_send_channel_panic>
d0041776:	b009      	add	sp, #36	; 0x24
d0041778:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d004177c:	f5ba 5f80 	cmp.w	sl, #4096	; 0x1000
d0041780:	f4ff adc1 	bcc.w	d0041306 <midi_player_update_us.part.0+0x2e>
d0041784:	e7f7      	b.n	d0041776 <midi_player_update_us.part.0+0x49e>
d0041786:	2102      	movs	r1, #2
d0041788:	2003      	movs	r0, #3
d004178a:	468e      	mov	lr, r1
d004178c:	e690      	b.n	d00414b0 <midi_player_update_us.part.0+0x1d8>
d004178e:	f859 2007 	ldr.w	r2, [r9, r7]
d0041792:	4293      	cmp	r3, r2
d0041794:	f43f ae52 	beq.w	d004143c <midi_player_update_us.part.0+0x164>
d0041798:	1c53      	adds	r3, r2, #1
d004179a:	f88d b01c 	strb.w	fp, [sp, #28]
d004179e:	2102      	movs	r1, #2
d00417a0:	f849 3007 	str.w	r3, [r9, r7]
d00417a4:	7813      	ldrb	r3, [r2, #0]
d00417a6:	f88d 301d 	strb.w	r3, [sp, #29]
d00417aa:	e714      	b.n	d00415d6 <midi_player_update_us.part.0+0x2fe>
d00417ac:	f859 2007 	ldr.w	r2, [r9, r7]
d00417b0:	1a9b      	subs	r3, r3, r2
d00417b2:	2b01      	cmp	r3, #1
d00417b4:	f67f ae42 	bls.w	d004143c <midi_player_update_us.part.0+0x164>
d00417b8:	4613      	mov	r3, r2
d00417ba:	1c50      	adds	r0, r2, #1
d00417bc:	f88d b01c 	strb.w	fp, [sp, #28]
d00417c0:	2103      	movs	r1, #3
d00417c2:	f849 0007 	str.w	r0, [r9, r7]
d00417c6:	f813 0b02 	ldrb.w	r0, [r3], #2
d00417ca:	f88d 001d 	strb.w	r0, [sp, #29]
d00417ce:	f849 3007 	str.w	r3, [r9, r7]
d00417d2:	7853      	ldrb	r3, [r2, #1]
d00417d4:	f88d 301e 	strb.w	r3, [sp, #30]
d00417d8:	e6fd      	b.n	d00415d6 <midi_player_update_us.part.0+0x2fe>
d00417da:	f899 0101 	ldrb.w	r0, [r9, #257]	; 0x101
d00417de:	f89d 201b 	ldrb.w	r2, [sp, #27]
d00417e2:	2818      	cmp	r0, #24
d00417e4:	f000 80a8 	beq.w	d0041938 <midi_player_update_us.part.0+0x660>
d00417e8:	4846      	ldr	r0, [pc, #280]	; (d0041904 <midi_player_update_us.part.0+0x62c>)
d00417ea:	f10d 0c1c 	add.w	ip, sp, #28
d00417ee:	4611      	mov	r1, r2
d00417f0:	f890 e014 	ldrb.w	lr, [r0, #20]
d00417f4:	4603      	mov	r3, r0
d00417f6:	7d42      	ldrb	r2, [r0, #21]
d00417f8:	4660      	mov	r0, ip
d00417fa:	f893 c016 	ldrb.w	ip, [r3, #22]
d00417fe:	ea4e 2302 	orr.w	r3, lr, r2, lsl #8
d0041802:	4a40      	ldr	r2, [pc, #256]	; (d0041904 <midi_player_update_us.part.0+0x62c>)
d0041804:	ea43 430c 	orr.w	r3, r3, ip, lsl #16
d0041808:	7dd2      	ldrb	r2, [r2, #23]
d004180a:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004180e:	681b      	ldr	r3, [r3, #0]
d0041810:	695b      	ldr	r3, [r3, #20]
d0041812:	4798      	blx	r3
d0041814:	e67b      	b.n	d004150e <midi_player_update_us.part.0+0x236>
d0041816:	2803      	cmp	r0, #3
d0041818:	f47f af40 	bne.w	d004169c <midi_player_update_us.part.0+0x3c4>
d004181c:	7853      	ldrb	r3, [r2, #1]
d004181e:	f892 c000 	ldrb.w	ip, [r2]
d0041822:	021b      	lsls	r3, r3, #8
d0041824:	7891      	ldrb	r1, [r2, #2]
d0041826:	ea43 430c 	orr.w	r3, r3, ip, lsl #16
d004182a:	430b      	orrs	r3, r1
d004182c:	f8c9 3114 	str.w	r3, [r9, #276]	; 0x114
d0041830:	e734      	b.n	d004169c <midi_player_update_us.part.0+0x3c4>
d0041832:	f859 3007 	ldr.w	r3, [r9, r7]
d0041836:	f88d b01c 	strb.w	fp, [sp, #28]
d004183a:	469b      	mov	fp, r3
d004183c:	9b04      	ldr	r3, [sp, #16]
d004183e:	bb1b      	cbnz	r3, d0041888 <midi_player_update_us.part.0+0x5b0>
d0041840:	f1b8 0f00 	cmp.w	r8, #0
d0041844:	d081      	beq.n	d004174a <midi_player_update_us.part.0+0x472>
d0041846:	9405      	str	r4, [sp, #20]
d0041848:	465c      	mov	r4, fp
d004184a:	46c3      	mov	fp, r8
d004184c:	9504      	str	r5, [sp, #16]
d004184e:	4b2d      	ldr	r3, [pc, #180]	; (d0041904 <midi_player_update_us.part.0+0x62c>)
d0041850:	465d      	mov	r5, fp
d0041852:	4620      	mov	r0, r4
d0041854:	f893 c014 	ldrb.w	ip, [r3, #20]
d0041858:	2d40      	cmp	r5, #64	; 0x40
d004185a:	7d5a      	ldrb	r2, [r3, #21]
d004185c:	7d99      	ldrb	r1, [r3, #22]
d004185e:	bf28      	it	cs
d0041860:	2540      	movcs	r5, #64	; 0x40
d0041862:	ea4c 2202 	orr.w	r2, ip, r2, lsl #8
d0041866:	f893 c017 	ldrb.w	ip, [r3, #23]
d004186a:	442c      	add	r4, r5
d004186c:	ea42 4201 	orr.w	r2, r2, r1, lsl #16
d0041870:	b2a9      	uxth	r1, r5
d0041872:	ea42 620c 	orr.w	r2, r2, ip, lsl #24
d0041876:	6812      	ldr	r2, [r2, #0]
d0041878:	6952      	ldr	r2, [r2, #20]
d004187a:	4790      	blx	r2
d004187c:	ebbb 0b05 	subs.w	fp, fp, r5
d0041880:	d1e5      	bne.n	d004184e <midi_player_update_us.part.0+0x576>
d0041882:	9d04      	ldr	r5, [sp, #16]
d0041884:	9c05      	ldr	r4, [sp, #20]
d0041886:	e760      	b.n	d004174a <midi_player_update_us.part.0+0x472>
d0041888:	4a1e      	ldr	r2, [pc, #120]	; (d0041904 <midi_player_update_us.part.0+0x62c>)
d004188a:	2101      	movs	r1, #1
d004188c:	a807      	add	r0, sp, #28
d004188e:	7d13      	ldrb	r3, [r2, #20]
d0041890:	7d52      	ldrb	r2, [r2, #21]
d0041892:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0041896:	4a1b      	ldr	r2, [pc, #108]	; (d0041904 <midi_player_update_us.part.0+0x62c>)
d0041898:	7d92      	ldrb	r2, [r2, #22]
d004189a:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d004189e:	4a19      	ldr	r2, [pc, #100]	; (d0041904 <midi_player_update_us.part.0+0x62c>)
d00418a0:	7dd2      	ldrb	r2, [r2, #23]
d00418a2:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00418a6:	681b      	ldr	r3, [r3, #0]
d00418a8:	695b      	ldr	r3, [r3, #20]
d00418aa:	4798      	blx	r3
d00418ac:	e7c8      	b.n	d0041840 <midi_player_update_us.part.0+0x568>
d00418ae:	f89d 801e 	ldrb.w	r8, [sp, #30]
d00418b2:	4b15      	ldr	r3, [pc, #84]	; (d0041908 <midi_player_update_us.part.0+0x630>)
d00418b4:	f1b8 0f00 	cmp.w	r8, #0
d00418b8:	d034      	beq.n	d0041924 <midi_player_update_us.part.0+0x64c>
d00418ba:	f04f 0e00 	mov.w	lr, #0
d00418be:	461a      	mov	r2, r3
d00418c0:	e00b      	b.n	d00418da <midi_player_update_us.part.0+0x602>
d00418c2:	6818      	ldr	r0, [r3, #0]
d00418c4:	f10e 0e01 	add.w	lr, lr, #1
d00418c8:	6811      	ldr	r1, [r2, #0]
d00418ca:	4288      	cmp	r0, r1
d00418cc:	bf38      	it	cc
d00418ce:	461a      	movcc	r2, r3
d00418d0:	f1be 0fc0 	cmp.w	lr, #192	; 0xc0
d00418d4:	f103 0310 	add.w	r3, r3, #16
d00418d8:	d005      	beq.n	d00418e6 <midi_player_update_us.part.0+0x60e>
d00418da:	7b19      	ldrb	r1, [r3, #12]
d00418dc:	2900      	cmp	r1, #0
d00418de:	d1f0      	bne.n	d00418c2 <midi_player_update_us.part.0+0x5ea>
d00418e0:	4b09      	ldr	r3, [pc, #36]	; (d0041908 <midi_player_update_us.part.0+0x630>)
d00418e2:	eb03 120e 	add.w	r2, r3, lr, lsl #4
d00418e6:	4b09      	ldr	r3, [pc, #36]	; (d004190c <midi_player_update_us.part.0+0x634>)
d00418e8:	f882 c008 	strb.w	ip, [r2, #8]
d00418ec:	6819      	ldr	r1, [r3, #0]
d00418ee:	2301      	movs	r3, #1
d00418f0:	f882 b009 	strb.w	fp, [r2, #9]
d00418f4:	f882 800a 	strb.w	r8, [r2, #10]
d00418f8:	6011      	str	r1, [r2, #0]
d00418fa:	6051      	str	r1, [r2, #4]
d00418fc:	72d3      	strb	r3, [r2, #11]
d00418fe:	7313      	strb	r3, [r2, #12]
d0041900:	e5fb      	b.n	d00414fa <midi_player_update_us.part.0+0x222>
d0041902:	bf00      	nop
d0041904:	2001f000 	.word	0x2001f000
d0041908:	d0046bd0 	.word	0xd0046bd0
d004190c:	d0046bc8 	.word	0xd0046bc8
d0041910:	7a5a      	ldrb	r2, [r3, #9]
d0041912:	455a      	cmp	r2, fp
d0041914:	d034      	beq.n	d0041980 <midi_player_update_us.part.0+0x6a8>
d0041916:	f108 0801 	add.w	r8, r8, #1
d004191a:	3310      	adds	r3, #16
d004191c:	f1b8 0fc0 	cmp.w	r8, #192	; 0xc0
d0041920:	f43f adeb 	beq.w	d00414fa <midi_player_update_us.part.0+0x222>
d0041924:	7b1a      	ldrb	r2, [r3, #12]
d0041926:	2a00      	cmp	r2, #0
d0041928:	d0f5      	beq.n	d0041916 <midi_player_update_us.part.0+0x63e>
d004192a:	7ada      	ldrb	r2, [r3, #11]
d004192c:	2a00      	cmp	r2, #0
d004192e:	d0f2      	beq.n	d0041916 <midi_player_update_us.part.0+0x63e>
d0041930:	7a1a      	ldrb	r2, [r3, #8]
d0041932:	4562      	cmp	r2, ip
d0041934:	d1ef      	bne.n	d0041916 <midi_player_update_us.part.0+0x63e>
d0041936:	e7eb      	b.n	d0041910 <midi_player_update_us.part.0+0x638>
d0041938:	2300      	movs	r3, #0
d004193a:	a907      	add	r1, sp, #28
d004193c:	9300      	str	r3, [sp, #0]
d004193e:	4b16      	ldr	r3, [pc, #88]	; (d0041998 <midi_player_update_us.part.0+0x6c0>)
d0041940:	f002 f874 	bl	d0043a2c <midi_translator_send_voice_packet>
d0041944:	e5e3      	b.n	d004150e <midi_player_update_us.part.0+0x236>
d0041946:	4b15      	ldr	r3, [pc, #84]	; (d004199c <midi_player_update_us.part.0+0x6c4>)
d0041948:	2200      	movs	r2, #0
d004194a:	e004      	b.n	d0041956 <midi_player_update_us.part.0+0x67e>
d004194c:	3201      	adds	r2, #1
d004194e:	3310      	adds	r3, #16
d0041950:	2ac0      	cmp	r2, #192	; 0xc0
d0041952:	f43f add2 	beq.w	d00414fa <midi_player_update_us.part.0+0x222>
d0041956:	7b19      	ldrb	r1, [r3, #12]
d0041958:	2900      	cmp	r1, #0
d004195a:	d0f7      	beq.n	d004194c <midi_player_update_us.part.0+0x674>
d004195c:	7ad9      	ldrb	r1, [r3, #11]
d004195e:	2900      	cmp	r1, #0
d0041960:	d0f4      	beq.n	d004194c <midi_player_update_us.part.0+0x674>
d0041962:	7a19      	ldrb	r1, [r3, #8]
d0041964:	4561      	cmp	r1, ip
d0041966:	d1f1      	bne.n	d004194c <midi_player_update_us.part.0+0x674>
d0041968:	7a59      	ldrb	r1, [r3, #9]
d004196a:	4559      	cmp	r1, fp
d004196c:	d1ee      	bne.n	d004194c <midi_player_update_us.part.0+0x674>
d004196e:	4b0b      	ldr	r3, [pc, #44]	; (d004199c <midi_player_update_us.part.0+0x6c4>)
d0041970:	2100      	movs	r1, #0
d0041972:	eb03 1202 	add.w	r2, r3, r2, lsl #4
d0041976:	4b0a      	ldr	r3, [pc, #40]	; (d00419a0 <midi_player_update_us.part.0+0x6c8>)
d0041978:	681b      	ldr	r3, [r3, #0]
d004197a:	72d1      	strb	r1, [r2, #11]
d004197c:	6053      	str	r3, [r2, #4]
d004197e:	e5bc      	b.n	d00414fa <midi_player_update_us.part.0+0x222>
d0041980:	4b06      	ldr	r3, [pc, #24]	; (d004199c <midi_player_update_us.part.0+0x6c4>)
d0041982:	2200      	movs	r2, #0
d0041984:	eb03 1808 	add.w	r8, r3, r8, lsl #4
d0041988:	4b05      	ldr	r3, [pc, #20]	; (d00419a0 <midi_player_update_us.part.0+0x6c8>)
d004198a:	681b      	ldr	r3, [r3, #0]
d004198c:	f888 200b 	strb.w	r2, [r8, #11]
d0041990:	f8c8 3004 	str.w	r3, [r8, #4]
d0041994:	e5b1      	b.n	d00414fa <midi_player_update_us.part.0+0x222>
d0041996:	bf00      	nop
d0041998:	d00410cd 	.word	0xd00410cd
d004199c:	d0046bd0 	.word	0xd0046bd0
d00419a0:	d0046bc8 	.word	0xd0046bc8

d00419a4 <midi_send_gm_reset>:
d00419a4:	4a0d      	ldr	r2, [pc, #52]	; (d00419dc <midi_send_gm_reset+0x38>)
d00419a6:	490e      	ldr	r1, [pc, #56]	; (d00419e0 <midi_send_gm_reset+0x3c>)
d00419a8:	7d13      	ldrb	r3, [r2, #20]
d00419aa:	b510      	push	{r4, lr}
d00419ac:	7d54      	ldrb	r4, [r2, #21]
d00419ae:	b082      	sub	sp, #8
d00419b0:	7d90      	ldrb	r0, [r2, #22]
d00419b2:	ea43 2304 	orr.w	r3, r3, r4, lsl #8
d00419b6:	7dd2      	ldrb	r2, [r2, #23]
d00419b8:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
d00419bc:	c903      	ldmia	r1, {r0, r1}
d00419be:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00419c2:	9000      	str	r0, [sp, #0]
d00419c4:	4668      	mov	r0, sp
d00419c6:	f8ad 1004 	strh.w	r1, [sp, #4]
d00419ca:	2106      	movs	r1, #6
d00419cc:	681b      	ldr	r3, [r3, #0]
d00419ce:	695b      	ldr	r3, [r3, #20]
d00419d0:	4798      	blx	r3
d00419d2:	f7fe fd95 	bl	d0040500 <midi_send_channel_panic>
d00419d6:	b002      	add	sp, #8
d00419d8:	bd10      	pop	{r4, pc}
d00419da:	bf00      	nop
d00419dc:	2001f000 	.word	0x2001f000
d00419e0:	d0045bb8 	.word	0xd0045bb8

d00419e4 <midi_player_get_duration_ms>:
d00419e4:	290d      	cmp	r1, #13
d00419e6:	d902      	bls.n	d00419ee <midi_player_get_duration_ms+0xa>
d00419e8:	7803      	ldrb	r3, [r0, #0]
d00419ea:	2b4d      	cmp	r3, #77	; 0x4d
d00419ec:	d001      	beq.n	d00419f2 <midi_player_get_duration_ms+0xe>
d00419ee:	2000      	movs	r0, #0
d00419f0:	4770      	bx	lr
d00419f2:	7843      	ldrb	r3, [r0, #1]
d00419f4:	1c42      	adds	r2, r0, #1
d00419f6:	2b54      	cmp	r3, #84	; 0x54
d00419f8:	d1f9      	bne.n	d00419ee <midi_player_get_duration_ms+0xa>
d00419fa:	f812 3f01 	ldrb.w	r3, [r2, #1]!
d00419fe:	2b68      	cmp	r3, #104	; 0x68
d0041a00:	d1f5      	bne.n	d00419ee <midi_player_get_duration_ms+0xa>
d0041a02:	7853      	ldrb	r3, [r2, #1]
d0041a04:	2b64      	cmp	r3, #100	; 0x64
d0041a06:	d1f2      	bne.n	d00419ee <midi_player_get_duration_ms+0xa>
d0041a08:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0041a0c:	7943      	ldrb	r3, [r0, #5]
d0041a0e:	b083      	sub	sp, #12
d0041a10:	f890 9004 	ldrb.w	r9, [r0, #4]
d0041a14:	7982      	ldrb	r2, [r0, #6]
d0041a16:	ea49 2903 	orr.w	r9, r9, r3, lsl #8
d0041a1a:	79c3      	ldrb	r3, [r0, #7]
d0041a1c:	ea49 4902 	orr.w	r9, r9, r2, lsl #16
d0041a20:	ea49 6903 	orr.w	r9, r9, r3, lsl #24
d0041a24:	fa99 f989 	rev.w	r9, r9
d0041a28:	f1b9 0f05 	cmp.w	r9, #5
d0041a2c:	f240 8111 	bls.w	d0041c52 <midi_player_get_duration_ms+0x26e>
d0041a30:	f109 0208 	add.w	r2, r9, #8
d0041a34:	4291      	cmp	r1, r2
d0041a36:	f0c0 810c 	bcc.w	d0041c52 <midi_player_get_duration_ms+0x26e>
d0041a3a:	7b04      	ldrb	r4, [r0, #12]
d0041a3c:	7b43      	ldrb	r3, [r0, #13]
d0041a3e:	ea43 2304 	orr.w	r3, r3, r4, lsl #8
d0041a42:	b21b      	sxth	r3, r3
d0041a44:	2b00      	cmp	r3, #0
d0041a46:	9301      	str	r3, [sp, #4]
d0041a48:	f340 8103 	ble.w	d0041c52 <midi_player_get_duration_ms+0x26e>
d0041a4c:	f109 0910 	add.w	r9, r9, #16
d0041a50:	7a83      	ldrb	r3, [r0, #10]
d0041a52:	f890 a00b 	ldrb.w	sl, [r0, #11]
d0041a56:	4549      	cmp	r1, r9
d0041a58:	ea4a 2a03 	orr.w	sl, sl, r3, lsl #8
d0041a5c:	f0c0 80f9 	bcc.w	d0041c52 <midi_player_get_duration_ms+0x26e>
d0041a60:	f1ba 0f00 	cmp.w	sl, #0
d0041a64:	f000 80f5 	beq.w	d0041c52 <midi_player_get_duration_ms+0x26e>
d0041a68:	460b      	mov	r3, r1
d0041a6a:	f04f 0e00 	mov.w	lr, #0
d0041a6e:	4651      	mov	r1, sl
d0041a70:	469a      	mov	sl, r3
d0041a72:	e009      	b.n	d0041a88 <midi_player_get_duration_ms+0xa4>
d0041a74:	eb07 0209 	add.w	r2, r7, r9
d0041a78:	f102 0908 	add.w	r9, r2, #8
d0041a7c:	2900      	cmp	r1, #0
d0041a7e:	f000 80ec 	beq.w	d0041c5a <midi_player_get_duration_ms+0x276>
d0041a82:	45ca      	cmp	sl, r9
d0041a84:	f0c0 80e9 	bcc.w	d0041c5a <midi_player_get_duration_ms+0x276>
d0041a88:	1883      	adds	r3, r0, r2
d0041a8a:	ebaa 0409 	sub.w	r4, sl, r9
d0041a8e:	795d      	ldrb	r5, [r3, #5]
d0041a90:	791f      	ldrb	r7, [r3, #4]
d0041a92:	ea47 2705 	orr.w	r7, r7, r5, lsl #8
d0041a96:	799d      	ldrb	r5, [r3, #6]
d0041a98:	ea47 4705 	orr.w	r7, r7, r5, lsl #16
d0041a9c:	79dd      	ldrb	r5, [r3, #7]
d0041a9e:	ea47 6705 	orr.w	r7, r7, r5, lsl #24
d0041aa2:	ba3f      	rev	r7, r7
d0041aa4:	42a7      	cmp	r7, r4
d0041aa6:	f200 80d8 	bhi.w	d0041c5a <midi_player_get_duration_ms+0x276>
d0041aaa:	5c82      	ldrb	r2, [r0, r2]
d0041aac:	2a4d      	cmp	r2, #77	; 0x4d
d0041aae:	d1e1      	bne.n	d0041a74 <midi_player_get_duration_ms+0x90>
d0041ab0:	785a      	ldrb	r2, [r3, #1]
d0041ab2:	3301      	adds	r3, #1
d0041ab4:	2a54      	cmp	r2, #84	; 0x54
d0041ab6:	d1dd      	bne.n	d0041a74 <midi_player_get_duration_ms+0x90>
d0041ab8:	f813 2f01 	ldrb.w	r2, [r3, #1]!
d0041abc:	2a72      	cmp	r2, #114	; 0x72
d0041abe:	d1d9      	bne.n	d0041a74 <midi_player_get_duration_ms+0x90>
d0041ac0:	785b      	ldrb	r3, [r3, #1]
d0041ac2:	2b6b      	cmp	r3, #107	; 0x6b
d0041ac4:	d1d6      	bne.n	d0041a74 <midi_player_get_duration_ms+0x90>
d0041ac6:	eb00 0209 	add.w	r2, r0, r9
d0041aca:	19d4      	adds	r4, r2, r7
d0041acc:	42a2      	cmp	r2, r4
d0041ace:	d22d      	bcs.n	d0041b2c <midi_player_get_duration_ms+0x148>
d0041ad0:	f04f 0800 	mov.w	r8, #0
d0041ad4:	4646      	mov	r6, r8
d0041ad6:	4613      	mov	r3, r2
d0041ad8:	f813 cb01 	ldrb.w	ip, [r3], #1
d0041adc:	f01c 0f80 	tst.w	ip, #128	; 0x80
d0041ae0:	f00c 057f 	and.w	r5, ip, #127	; 0x7f
d0041ae4:	d028      	beq.n	d0041b38 <midi_player_get_duration_ms+0x154>
d0041ae6:	429c      	cmp	r4, r3
d0041ae8:	d91d      	bls.n	d0041b26 <midi_player_get_duration_ms+0x142>
d0041aea:	f892 c001 	ldrb.w	ip, [r2, #1]
d0041aee:	1c93      	adds	r3, r2, #2
d0041af0:	f00c 0b7f 	and.w	fp, ip, #127	; 0x7f
d0041af4:	f01c 0f80 	tst.w	ip, #128	; 0x80
d0041af8:	ea4b 15c5 	orr.w	r5, fp, r5, lsl #7
d0041afc:	d01c      	beq.n	d0041b38 <midi_player_get_duration_ms+0x154>
d0041afe:	429c      	cmp	r4, r3
d0041b00:	d911      	bls.n	d0041b26 <midi_player_get_duration_ms+0x142>
d0041b02:	f892 c002 	ldrb.w	ip, [r2, #2]
d0041b06:	1cd3      	adds	r3, r2, #3
d0041b08:	f00c 0b7f 	and.w	fp, ip, #127	; 0x7f
d0041b0c:	f01c 0f80 	tst.w	ip, #128	; 0x80
d0041b10:	ea4b 15c5 	orr.w	r5, fp, r5, lsl #7
d0041b14:	d010      	beq.n	d0041b38 <midi_player_get_duration_ms+0x154>
d0041b16:	429c      	cmp	r4, r3
d0041b18:	d905      	bls.n	d0041b26 <midi_player_get_duration_ms+0x142>
d0041b1a:	f992 3003 	ldrsb.w	r3, [r2, #3]
d0041b1e:	f892 c003 	ldrb.w	ip, [r2, #3]
d0041b22:	2b00      	cmp	r3, #0
d0041b24:	da05      	bge.n	d0041b32 <midi_player_get_duration_ms+0x14e>
d0041b26:	45b6      	cmp	lr, r6
d0041b28:	bf38      	it	cc
d0041b2a:	46b6      	movcc	lr, r6
d0041b2c:	3901      	subs	r1, #1
d0041b2e:	b289      	uxth	r1, r1
d0041b30:	e7a0      	b.n	d0041a74 <midi_player_get_duration_ms+0x90>
d0041b32:	1d13      	adds	r3, r2, #4
d0041b34:	ea4c 15c5 	orr.w	r5, ip, r5, lsl #7
d0041b38:	429c      	cmp	r4, r3
d0041b3a:	442e      	add	r6, r5
d0041b3c:	d9f3      	bls.n	d0041b26 <midi_player_get_duration_ms+0x142>
d0041b3e:	f993 5000 	ldrsb.w	r5, [r3]
d0041b42:	781a      	ldrb	r2, [r3, #0]
d0041b44:	2d00      	cmp	r5, #0
d0041b46:	db0f      	blt.n	d0041b68 <midi_player_get_duration_ms+0x184>
d0041b48:	f1b8 0fff 	cmp.w	r8, #255	; 0xff
d0041b4c:	d018      	beq.n	d0041b80 <midi_player_get_duration_ms+0x19c>
d0041b4e:	f008 02f0 	and.w	r2, r8, #240	; 0xf0
d0041b52:	2af0      	cmp	r2, #240	; 0xf0
d0041b54:	d04e      	beq.n	d0041bf4 <midi_player_get_duration_ms+0x210>
d0041b56:	f008 02e0 	and.w	r2, r8, #224	; 0xe0
d0041b5a:	2ac0      	cmp	r2, #192	; 0xc0
d0041b5c:	bf0c      	ite	eq
d0041b5e:	1c5a      	addeq	r2, r3, #1
d0041b60:	1c9a      	addne	r2, r3, #2
d0041b62:	4294      	cmp	r4, r2
d0041b64:	d8b7      	bhi.n	d0041ad6 <midi_player_get_duration_ms+0xf2>
d0041b66:	e7de      	b.n	d0041b26 <midi_player_get_duration_ms+0x142>
d0041b68:	2aff      	cmp	r2, #255	; 0xff
d0041b6a:	f103 0301 	add.w	r3, r3, #1
d0041b6e:	d005      	beq.n	d0041b7c <midi_player_get_duration_ms+0x198>
d0041b70:	f002 05f0 	and.w	r5, r2, #240	; 0xf0
d0041b74:	2df0      	cmp	r5, #240	; 0xf0
d0041b76:	d03a      	beq.n	d0041bee <midi_player_get_duration_ms+0x20a>
d0041b78:	4690      	mov	r8, r2
d0041b7a:	e7ec      	b.n	d0041b56 <midi_player_get_duration_ms+0x172>
d0041b7c:	429c      	cmp	r4, r3
d0041b7e:	d9d2      	bls.n	d0041b26 <midi_player_get_duration_ms+0x142>
d0041b80:	461a      	mov	r2, r3
d0041b82:	f812 8b01 	ldrb.w	r8, [r2], #1
d0041b86:	4294      	cmp	r4, r2
d0041b88:	d9cd      	bls.n	d0041b26 <midi_player_get_duration_ms+0x142>
d0041b8a:	f893 c001 	ldrb.w	ip, [r3, #1]
d0041b8e:	1c9a      	adds	r2, r3, #2
d0041b90:	f01c 0f80 	tst.w	ip, #128	; 0x80
d0041b94:	f00c 057f 	and.w	r5, ip, #127	; 0x7f
d0041b98:	d022      	beq.n	d0041be0 <midi_player_get_duration_ms+0x1fc>
d0041b9a:	4294      	cmp	r4, r2
d0041b9c:	d9c3      	bls.n	d0041b26 <midi_player_get_duration_ms+0x142>
d0041b9e:	f893 c002 	ldrb.w	ip, [r3, #2]
d0041ba2:	1cda      	adds	r2, r3, #3
d0041ba4:	f00c 0b7f 	and.w	fp, ip, #127	; 0x7f
d0041ba8:	f01c 0f80 	tst.w	ip, #128	; 0x80
d0041bac:	ea4b 15c5 	orr.w	r5, fp, r5, lsl #7
d0041bb0:	d016      	beq.n	d0041be0 <midi_player_get_duration_ms+0x1fc>
d0041bb2:	4294      	cmp	r4, r2
d0041bb4:	d9b7      	bls.n	d0041b26 <midi_player_get_duration_ms+0x142>
d0041bb6:	f893 c003 	ldrb.w	ip, [r3, #3]
d0041bba:	1d1a      	adds	r2, r3, #4
d0041bbc:	f00c 0b7f 	and.w	fp, ip, #127	; 0x7f
d0041bc0:	f01c 0f80 	tst.w	ip, #128	; 0x80
d0041bc4:	ea4b 15c5 	orr.w	r5, fp, r5, lsl #7
d0041bc8:	d00a      	beq.n	d0041be0 <midi_player_get_duration_ms+0x1fc>
d0041bca:	4294      	cmp	r4, r2
d0041bcc:	d9ab      	bls.n	d0041b26 <midi_player_get_duration_ms+0x142>
d0041bce:	f993 2004 	ldrsb.w	r2, [r3, #4]
d0041bd2:	f893 c004 	ldrb.w	ip, [r3, #4]
d0041bd6:	2a00      	cmp	r2, #0
d0041bd8:	dba5      	blt.n	d0041b26 <midi_player_get_duration_ms+0x142>
d0041bda:	1d5a      	adds	r2, r3, #5
d0041bdc:	ea4c 15c5 	orr.w	r5, ip, r5, lsl #7
d0041be0:	f1b8 0f2f 	cmp.w	r8, #47	; 0x2f
d0041be4:	d09f      	beq.n	d0041b26 <midi_player_get_duration_ms+0x142>
d0041be6:	442a      	add	r2, r5
d0041be8:	f04f 08ff 	mov.w	r8, #255	; 0xff
d0041bec:	e7b9      	b.n	d0041b62 <midi_player_get_duration_ms+0x17e>
d0041bee:	429c      	cmp	r4, r3
d0041bf0:	d999      	bls.n	d0041b26 <midi_player_get_duration_ms+0x142>
d0041bf2:	4690      	mov	r8, r2
d0041bf4:	461a      	mov	r2, r3
d0041bf6:	f812 cb01 	ldrb.w	ip, [r2], #1
d0041bfa:	f01c 0f80 	tst.w	ip, #128	; 0x80
d0041bfe:	f00c 057f 	and.w	r5, ip, #127	; 0x7f
d0041c02:	d024      	beq.n	d0041c4e <midi_player_get_duration_ms+0x26a>
d0041c04:	4294      	cmp	r4, r2
d0041c06:	d98e      	bls.n	d0041b26 <midi_player_get_duration_ms+0x142>
d0041c08:	f893 c001 	ldrb.w	ip, [r3, #1]
d0041c0c:	1c9a      	adds	r2, r3, #2
d0041c0e:	f00c 0b7f 	and.w	fp, ip, #127	; 0x7f
d0041c12:	f01c 0f80 	tst.w	ip, #128	; 0x80
d0041c16:	ea4b 15c5 	orr.w	r5, fp, r5, lsl #7
d0041c1a:	d018      	beq.n	d0041c4e <midi_player_get_duration_ms+0x26a>
d0041c1c:	4294      	cmp	r4, r2
d0041c1e:	d982      	bls.n	d0041b26 <midi_player_get_duration_ms+0x142>
d0041c20:	f893 c002 	ldrb.w	ip, [r3, #2]
d0041c24:	1cda      	adds	r2, r3, #3
d0041c26:	f00c 0b7f 	and.w	fp, ip, #127	; 0x7f
d0041c2a:	f01c 0f80 	tst.w	ip, #128	; 0x80
d0041c2e:	ea4b 15c5 	orr.w	r5, fp, r5, lsl #7
d0041c32:	d00c      	beq.n	d0041c4e <midi_player_get_duration_ms+0x26a>
d0041c34:	4294      	cmp	r4, r2
d0041c36:	f67f af76 	bls.w	d0041b26 <midi_player_get_duration_ms+0x142>
d0041c3a:	f993 2003 	ldrsb.w	r2, [r3, #3]
d0041c3e:	f893 c003 	ldrb.w	ip, [r3, #3]
d0041c42:	2a00      	cmp	r2, #0
d0041c44:	f6ff af6f 	blt.w	d0041b26 <midi_player_get_duration_ms+0x142>
d0041c48:	1d1a      	adds	r2, r3, #4
d0041c4a:	ea4c 15c5 	orr.w	r5, ip, r5, lsl #7
d0041c4e:	442a      	add	r2, r5
d0041c50:	e787      	b.n	d0041b62 <midi_player_get_duration_ms+0x17e>
d0041c52:	2000      	movs	r0, #0
d0041c54:	b003      	add	sp, #12
d0041c56:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0041c5a:	f44f 70fa 	mov.w	r0, #500	; 0x1f4
d0041c5e:	9b01      	ldr	r3, [sp, #4]
d0041c60:	fb00 f00e 	mul.w	r0, r0, lr
d0041c64:	fbb0 f0f3 	udiv	r0, r0, r3
d0041c68:	b003      	add	sp, #12
d0041c6a:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0041c6e:	bf00      	nop

d0041c70 <midi_player_init>:
d0041c70:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0041c74:	4616      	mov	r6, r2
d0041c76:	b083      	sub	sp, #12
d0041c78:	460c      	mov	r4, r1
d0041c7a:	f44f 7294 	mov.w	r2, #296	; 0x128
d0041c7e:	2100      	movs	r1, #0
d0041c80:	4605      	mov	r5, r0
d0041c82:	f002 fb7b 	bl	d004437c <memset>
d0041c86:	4b6f      	ldr	r3, [pc, #444]	; (d0041e44 <midi_player_init+0x1d4>)
d0041c88:	2000      	movs	r0, #0
d0041c8a:	2e0d      	cmp	r6, #13
d0041c8c:	f8c5 3114 	str.w	r3, [r5, #276]	; 0x114
d0041c90:	f885 0101 	strb.w	r0, [r5, #257]	; 0x101
d0041c94:	d902      	bls.n	d0041c9c <midi_player_init+0x2c>
d0041c96:	7823      	ldrb	r3, [r4, #0]
d0041c98:	2b4d      	cmp	r3, #77	; 0x4d
d0041c9a:	d002      	beq.n	d0041ca2 <midi_player_init+0x32>
d0041c9c:	b003      	add	sp, #12
d0041c9e:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0041ca2:	7863      	ldrb	r3, [r4, #1]
d0041ca4:	1c62      	adds	r2, r4, #1
d0041ca6:	2b54      	cmp	r3, #84	; 0x54
d0041ca8:	d1f8      	bne.n	d0041c9c <midi_player_init+0x2c>
d0041caa:	f812 3f01 	ldrb.w	r3, [r2, #1]!
d0041cae:	2b68      	cmp	r3, #104	; 0x68
d0041cb0:	d1f4      	bne.n	d0041c9c <midi_player_init+0x2c>
d0041cb2:	7853      	ldrb	r3, [r2, #1]
d0041cb4:	2b64      	cmp	r3, #100	; 0x64
d0041cb6:	d1f1      	bne.n	d0041c9c <midi_player_init+0x2c>
d0041cb8:	7963      	ldrb	r3, [r4, #5]
d0041cba:	7922      	ldrb	r2, [r4, #4]
d0041cbc:	79a1      	ldrb	r1, [r4, #6]
d0041cbe:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
d0041cc2:	79e3      	ldrb	r3, [r4, #7]
d0041cc4:	ea42 4201 	orr.w	r2, r2, r1, lsl #16
d0041cc8:	ea42 6203 	orr.w	r2, r2, r3, lsl #24
d0041ccc:	ba12      	rev	r2, r2
d0041cce:	2a05      	cmp	r2, #5
d0041cd0:	d9e4      	bls.n	d0041c9c <midi_player_init+0x2c>
d0041cd2:	f102 0708 	add.w	r7, r2, #8
d0041cd6:	42be      	cmp	r6, r7
d0041cd8:	d3e0      	bcc.n	d0041c9c <midi_player_init+0x2c>
d0041cda:	7a21      	ldrb	r1, [r4, #8]
d0041cdc:	7a63      	ldrb	r3, [r4, #9]
d0041cde:	ea43 2301 	orr.w	r3, r3, r1, lsl #8
d0041ce2:	f8a5 3102 	strh.w	r3, [r5, #258]	; 0x102
d0041ce6:	7b21      	ldrb	r1, [r4, #12]
d0041ce8:	7b63      	ldrb	r3, [r4, #13]
d0041cea:	f894 c00a 	ldrb.w	ip, [r4, #10]
d0041cee:	ea43 2301 	orr.w	r3, r3, r1, lsl #8
d0041cf2:	7ae1      	ldrb	r1, [r4, #11]
d0041cf4:	b21b      	sxth	r3, r3
d0041cf6:	4283      	cmp	r3, r0
d0041cf8:	f8a5 3104 	strh.w	r3, [r5, #260]	; 0x104
d0041cfc:	ddce      	ble.n	d0041c9c <midi_player_init+0x2c>
d0041cfe:	3210      	adds	r2, #16
d0041d00:	4296      	cmp	r6, r2
d0041d02:	f0c0 8097 	bcc.w	d0041e34 <midi_player_init+0x1c4>
d0041d06:	ea41 2a0c 	orr.w	sl, r1, ip, lsl #8
d0041d0a:	e008      	b.n	d0041d1e <midi_player_init+0xae>
d0041d0c:	18d7      	adds	r7, r2, r3
d0041d0e:	f107 0208 	add.w	r2, r7, #8
d0041d12:	4296      	cmp	r6, r2
d0041d14:	f0c0 808b 	bcc.w	d0041e2e <midi_player_init+0x1be>
d0041d18:	280f      	cmp	r0, #15
d0041d1a:	f200 8090 	bhi.w	d0041e3e <midi_player_init+0x1ce>
d0041d1e:	4582      	cmp	sl, r0
d0041d20:	f240 8085 	bls.w	d0041e2e <midi_player_init+0x1be>
d0041d24:	19e1      	adds	r1, r4, r7
d0041d26:	eba6 0c02 	sub.w	ip, r6, r2
d0041d2a:	f891 e005 	ldrb.w	lr, [r1, #5]
d0041d2e:	790b      	ldrb	r3, [r1, #4]
d0041d30:	ea43 230e 	orr.w	r3, r3, lr, lsl #8
d0041d34:	f891 e006 	ldrb.w	lr, [r1, #6]
d0041d38:	ea43 430e 	orr.w	r3, r3, lr, lsl #16
d0041d3c:	f891 e007 	ldrb.w	lr, [r1, #7]
d0041d40:	ea43 630e 	orr.w	r3, r3, lr, lsl #24
d0041d44:	ba1b      	rev	r3, r3
d0041d46:	4563      	cmp	r3, ip
d0041d48:	d871      	bhi.n	d0041e2e <midi_player_init+0x1be>
d0041d4a:	5de7      	ldrb	r7, [r4, r7]
d0041d4c:	2f4d      	cmp	r7, #77	; 0x4d
d0041d4e:	d1dd      	bne.n	d0041d0c <midi_player_init+0x9c>
d0041d50:	784f      	ldrb	r7, [r1, #1]
d0041d52:	3101      	adds	r1, #1
d0041d54:	2f54      	cmp	r7, #84	; 0x54
d0041d56:	d1d9      	bne.n	d0041d0c <midi_player_init+0x9c>
d0041d58:	f811 7f01 	ldrb.w	r7, [r1, #1]!
d0041d5c:	2f72      	cmp	r7, #114	; 0x72
d0041d5e:	d1d5      	bne.n	d0041d0c <midi_player_init+0x9c>
d0041d60:	7849      	ldrb	r1, [r1, #1]
d0041d62:	296b      	cmp	r1, #107	; 0x6b
d0041d64:	d1d2      	bne.n	d0041d0c <midi_player_init+0x9c>
d0041d66:	0107      	lsls	r7, r0, #4
d0041d68:	eb04 0802 	add.w	r8, r4, r2
d0041d6c:	eb05 1b00 	add.w	fp, r5, r0, lsl #4
d0041d70:	2100      	movs	r1, #0
d0041d72:	f845 8007 	str.w	r8, [r5, r7]
d0041d76:	eb08 0e03 	add.w	lr, r8, r3
d0041d7a:	f8cb 1008 	str.w	r1, [fp, #8]
d0041d7e:	f44f 7180 	mov.w	r1, #256	; 0x100
d0041d82:	f8cb e004 	str.w	lr, [fp, #4]
d0041d86:	4681      	mov	r9, r0
d0041d88:	f8ab 100c 	strh.w	r1, [fp, #12]
d0041d8c:	46f4      	mov	ip, lr
d0041d8e:	59e9      	ldr	r1, [r5, r7]
d0041d90:	9701      	str	r7, [sp, #4]
d0041d92:	4571      	cmp	r1, lr
d0041d94:	d235      	bcs.n	d0041e02 <midi_player_init+0x192>
d0041d96:	f101 0801 	add.w	r8, r1, #1
d0041d9a:	f845 8007 	str.w	r8, [r5, r7]
d0041d9e:	f891 e000 	ldrb.w	lr, [r1]
d0041da2:	f01e 0f80 	tst.w	lr, #128	; 0x80
d0041da6:	f00e 007f 	and.w	r0, lr, #127	; 0x7f
d0041daa:	d033      	beq.n	d0041e14 <midi_player_init+0x1a4>
d0041dac:	45c4      	cmp	ip, r8
d0041dae:	d926      	bls.n	d0041dfe <midi_player_init+0x18e>
d0041db0:	f101 0802 	add.w	r8, r1, #2
d0041db4:	f845 8007 	str.w	r8, [r5, r7]
d0041db8:	f891 e001 	ldrb.w	lr, [r1, #1]
d0041dbc:	f00e 0b7f 	and.w	fp, lr, #127	; 0x7f
d0041dc0:	f01e 0f80 	tst.w	lr, #128	; 0x80
d0041dc4:	ea4b 10c0 	orr.w	r0, fp, r0, lsl #7
d0041dc8:	d024      	beq.n	d0041e14 <midi_player_init+0x1a4>
d0041dca:	45c4      	cmp	ip, r8
d0041dcc:	d917      	bls.n	d0041dfe <midi_player_init+0x18e>
d0041dce:	f101 0803 	add.w	r8, r1, #3
d0041dd2:	f845 8007 	str.w	r8, [r5, r7]
d0041dd6:	f891 e002 	ldrb.w	lr, [r1, #2]
d0041dda:	f00e 0b7f 	and.w	fp, lr, #127	; 0x7f
d0041dde:	f01e 0f80 	tst.w	lr, #128	; 0x80
d0041de2:	ea4b 10c0 	orr.w	r0, fp, r0, lsl #7
d0041de6:	d015      	beq.n	d0041e14 <midi_player_init+0x1a4>
d0041de8:	45c4      	cmp	ip, r8
d0041dea:	d908      	bls.n	d0041dfe <midi_player_init+0x18e>
d0041dec:	f101 0c04 	add.w	ip, r1, #4
d0041df0:	f845 c007 	str.w	ip, [r5, r7]
d0041df4:	f991 7003 	ldrsb.w	r7, [r1, #3]
d0041df8:	78c9      	ldrb	r1, [r1, #3]
d0041dfa:	2f00      	cmp	r7, #0
d0041dfc:	da08      	bge.n	d0041e10 <midi_player_init+0x1a0>
d0041dfe:	f895 0100 	ldrb.w	r0, [r5, #256]	; 0x100
d0041e02:	eb05 1909 	add.w	r9, r5, r9, lsl #4
d0041e06:	f04f 0100 	mov.w	r1, #0
d0041e0a:	f889 100d 	strb.w	r1, [r9, #13]
d0041e0e:	e77d      	b.n	d0041d0c <midi_player_init+0x9c>
d0041e10:	ea41 10c0 	orr.w	r0, r1, r0, lsl #7
d0041e14:	9901      	ldr	r1, [sp, #4]
d0041e16:	4429      	add	r1, r5
d0041e18:	460f      	mov	r7, r1
d0041e1a:	6889      	ldr	r1, [r1, #8]
d0041e1c:	4408      	add	r0, r1
d0041e1e:	60b8      	str	r0, [r7, #8]
d0041e20:	f895 0100 	ldrb.w	r0, [r5, #256]	; 0x100
d0041e24:	3001      	adds	r0, #1
d0041e26:	b2c0      	uxtb	r0, r0
d0041e28:	f885 0100 	strb.w	r0, [r5, #256]	; 0x100
d0041e2c:	e76e      	b.n	d0041d0c <midi_player_init+0x9c>
d0041e2e:	3800      	subs	r0, #0
d0041e30:	bf18      	it	ne
d0041e32:	2001      	movne	r0, #1
d0041e34:	f885 0120 	strb.w	r0, [r5, #288]	; 0x120
d0041e38:	b003      	add	sp, #12
d0041e3a:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0041e3e:	2001      	movs	r0, #1
d0041e40:	e7f8      	b.n	d0041e34 <midi_player_init+0x1c4>
d0041e42:	bf00      	nop
d0041e44:	0007a120 	.word	0x0007a120

d0041e48 <setup>:
d0041e48:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
d0041e4c:	4607      	mov	r7, r0
d0041e4e:	b082      	sub	sp, #8
d0041e50:	4688      	mov	r8, r1
d0041e52:	4615      	mov	r5, r2
d0041e54:	2100      	movs	r1, #0
d0041e56:	f44f 6240 	mov.w	r2, #3072	; 0xc00
d0041e5a:	482a      	ldr	r0, [pc, #168]	; (d0041f04 <setup+0xbc>)
d0041e5c:	f002 fa8e 	bl	d004437c <memset>
d0041e60:	4c29      	ldr	r4, [pc, #164]	; (d0041f08 <setup+0xc0>)
d0041e62:	2100      	movs	r1, #0
d0041e64:	4b29      	ldr	r3, [pc, #164]	; (d0041f0c <setup+0xc4>)
d0041e66:	f8df c0b8 	ldr.w	ip, [pc, #184]	; d0041f20 <setup+0xd8>
d0041e6a:	f44f 5248 	mov.w	r2, #12800	; 0x3200
d0041e6e:	7019      	strb	r1, [r3, #0]
d0041e70:	4608      	mov	r0, r1
d0041e72:	7b23      	ldrb	r3, [r4, #12]
d0041e74:	7b66      	ldrb	r6, [r4, #13]
d0041e76:	f8cc 1000 	str.w	r1, [ip]
d0041e7a:	ea43 2306 	orr.w	r3, r3, r6, lsl #8
d0041e7e:	7ba6      	ldrb	r6, [r4, #14]
d0041e80:	f8df c0a0 	ldr.w	ip, [pc, #160]	; d0041f24 <setup+0xdc>
d0041e84:	ea43 4306 	orr.w	r3, r3, r6, lsl #16
d0041e88:	7be6      	ldrb	r6, [r4, #15]
d0041e8a:	f8cc 1000 	str.w	r1, [ip]
d0041e8e:	ea43 6306 	orr.w	r3, r3, r6, lsl #24
d0041e92:	f8df c094 	ldr.w	ip, [pc, #148]	; d0041f28 <setup+0xe0>
d0041e96:	4e1e      	ldr	r6, [pc, #120]	; (d0041f10 <setup+0xc8>)
d0041e98:	681b      	ldr	r3, [r3, #0]
d0041e9a:	f8cc 2000 	str.w	r2, [ip]
d0041e9e:	6b1b      	ldr	r3, [r3, #48]	; 0x30
d0041ea0:	4798      	blx	r3
d0041ea2:	4642      	mov	r2, r8
d0041ea4:	4639      	mov	r1, r7
d0041ea6:	4630      	mov	r0, r6
d0041ea8:	f7ff fee2 	bl	d0041c70 <midi_player_init>
d0041eac:	f886 5101 	strb.w	r5, [r6, #257]	; 0x101
d0041eb0:	b9a5      	cbnz	r5, d0041edc <setup+0x94>
d0041eb2:	7d23      	ldrb	r3, [r4, #20]
d0041eb4:	7d62      	ldrb	r2, [r4, #21]
d0041eb6:	7da0      	ldrb	r0, [r4, #22]
d0041eb8:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0041ebc:	7de1      	ldrb	r1, [r4, #23]
d0041ebe:	4a15      	ldr	r2, [pc, #84]	; (d0041f14 <setup+0xcc>)
d0041ec0:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
d0041ec4:	ea43 6301 	orr.w	r3, r3, r1, lsl #24
d0041ec8:	e892 0003 	ldmia.w	r2, {r0, r1}
d0041ecc:	9000      	str	r0, [sp, #0]
d0041ece:	4668      	mov	r0, sp
d0041ed0:	f8ad 1004 	strh.w	r1, [sp, #4]
d0041ed4:	2106      	movs	r1, #6
d0041ed6:	681b      	ldr	r3, [r3, #0]
d0041ed8:	695b      	ldr	r3, [r3, #20]
d0041eda:	4798      	blx	r3
d0041edc:	f7fe fb10 	bl	d0040500 <midi_send_channel_panic>
d0041ee0:	4c0d      	ldr	r4, [pc, #52]	; (d0041f18 <setup+0xd0>)
d0041ee2:	f896 0101 	ldrb.w	r0, [r6, #257]	; 0x101
d0041ee6:	2200      	movs	r2, #0
d0041ee8:	490c      	ldr	r1, [pc, #48]	; (d0041f1c <setup+0xd4>)
d0041eea:	2818      	cmp	r0, #24
d0041eec:	bf18      	it	ne
d0041eee:	4621      	movne	r1, r4
d0041ef0:	f001 fed0 	bl	d0043c94 <midi_translator_send_setup_burst>
d0041ef4:	4621      	mov	r1, r4
d0041ef6:	4628      	mov	r0, r5
d0041ef8:	2200      	movs	r2, #0
d0041efa:	f002 f83b 	bl	d0043f74 <midi_translator_send_post_load_burst>
d0041efe:	b002      	add	sp, #8
d0041f00:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
d0041f04:	d0046bd0 	.word	0xd0046bd0
d0041f08:	2001f000 	.word	0x2001f000
d0041f0c:	d00477d4 	.word	0xd00477d4
d0041f10:	d00479e8 	.word	0xd00479e8
d0041f14:	d0045bb8 	.word	0xd0045bb8
d0041f18:	d00404bd 	.word	0xd00404bd
d0041f1c:	d00410cd 	.word	0xd00410cd
d0041f20:	d0046bc8 	.word	0xd0046bc8
d0041f24:	d00477d0 	.word	0xd00477d0
d0041f28:	d0046bcc 	.word	0xd0046bcc

d0041f2c <vbl_counter>:
d0041f2c:	482b      	ldr	r0, [pc, #172]	; (d0041fdc <vbl_counter+0xb0>)
d0041f2e:	f890 3120 	ldrb.w	r3, [r0, #288]	; 0x120
d0041f32:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
d0041f36:	b11b      	cbz	r3, d0041f40 <vbl_counter+0x14>
d0041f38:	f644 6120 	movw	r1, #20000	; 0x4e20
d0041f3c:	f7ff f9cc 	bl	d00412d8 <midi_player_update_us.part.0>
d0041f40:	f8df 90a8 	ldr.w	r9, [pc, #168]	; d0041fec <vbl_counter+0xc0>
d0041f44:	f8b9 1000 	ldrh.w	r1, [r9]
d0041f48:	2900      	cmp	r1, #0
d0041f4a:	d03c      	beq.n	d0041fc6 <vbl_counter+0x9a>
d0041f4c:	f8df a0a0 	ldr.w	sl, [pc, #160]	; d0041ff0 <vbl_counter+0xc4>
d0041f50:	253c      	movs	r5, #60	; 0x3c
d0041f52:	f8df 80a0 	ldr.w	r8, [pc, #160]	; d0041ff4 <vbl_counter+0xc8>
d0041f56:	f8ba 0000 	ldrh.w	r0, [sl]
d0041f5a:	4e21      	ldr	r6, [pc, #132]	; (d0041fe0 <vbl_counter+0xb4>)
d0041f5c:	4f21      	ldr	r7, [pc, #132]	; (d0041fe4 <vbl_counter+0xb8>)
d0041f5e:	e000      	b.n	d0041f62 <vbl_counter+0x36>
d0041f60:	b38d      	cbz	r5, d0041fc6 <vbl_counter+0x9a>
d0041f62:	f8b8 3000 	ldrh.w	r3, [r8]
d0041f66:	f5c0 6480 	rsb	r4, r0, #1024	; 0x400
d0041f6a:	f896 c014 	ldrb.w	ip, [r6, #20]
d0041f6e:	4283      	cmp	r3, r0
d0041f70:	eba3 0300 	sub.w	r3, r3, r0
d0041f74:	b2a4      	uxth	r4, r4
d0041f76:	f896 e015 	ldrb.w	lr, [r6, #21]
d0041f7a:	bf88      	it	hi
d0041f7c:	b29c      	uxthhi	r4, r3
d0041f7e:	7db2      	ldrb	r2, [r6, #22]
d0041f80:	ea4c 2c0e 	orr.w	ip, ip, lr, lsl #8
d0041f84:	7df3      	ldrb	r3, [r6, #23]
d0041f86:	42ac      	cmp	r4, r5
d0041f88:	4438      	add	r0, r7
d0041f8a:	ea4c 4202 	orr.w	r2, ip, r2, lsl #16
d0041f8e:	bf28      	it	cs
d0041f90:	462c      	movcs	r4, r5
d0041f92:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0041f96:	428c      	cmp	r4, r1
d0041f98:	681b      	ldr	r3, [r3, #0]
d0041f9a:	bf28      	it	cs
d0041f9c:	460c      	movcs	r4, r1
d0041f9e:	695b      	ldr	r3, [r3, #20]
d0041fa0:	4621      	mov	r1, r4
d0041fa2:	1b2d      	subs	r5, r5, r4
d0041fa4:	4798      	blx	r3
d0041fa6:	f8ba 0000 	ldrh.w	r0, [sl]
d0041faa:	f8b9 1000 	ldrh.w	r1, [r9]
d0041fae:	b2ad      	uxth	r5, r5
d0041fb0:	4420      	add	r0, r4
d0041fb2:	1b09      	subs	r1, r1, r4
d0041fb4:	f3c0 0009 	ubfx	r0, r0, #0, #10
d0041fb8:	b289      	uxth	r1, r1
d0041fba:	f8aa 0000 	strh.w	r0, [sl]
d0041fbe:	f8a9 1000 	strh.w	r1, [r9]
d0041fc2:	2900      	cmp	r1, #0
d0041fc4:	d1cc      	bne.n	d0041f60 <vbl_counter+0x34>
d0041fc6:	4b08      	ldr	r3, [pc, #32]	; (d0041fe8 <vbl_counter+0xbc>)
d0041fc8:	781a      	ldrb	r2, [r3, #0]
d0041fca:	2a07      	cmp	r2, #7
d0041fcc:	d803      	bhi.n	d0041fd6 <vbl_counter+0xaa>
d0041fce:	781a      	ldrb	r2, [r3, #0]
d0041fd0:	3201      	adds	r2, #1
d0041fd2:	b2d2      	uxtb	r2, r2
d0041fd4:	701a      	strb	r2, [r3, #0]
d0041fd6:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
d0041fda:	bf00      	nop
d0041fdc:	d00479e8 	.word	0xd00479e8
d0041fe0:	2001f000 	.word	0x2001f000
d0041fe4:	d00467b8 	.word	0xd00467b8
d0041fe8:	d00477d4 	.word	0xd00477d4
d0041fec:	d00467b4 	.word	0xd00467b4
d0041ff0:	d0046bb8 	.word	0xd0046bb8
d0041ff4:	d00467b6 	.word	0xd00467b6

d0041ff8 <main>:
d0041ff8:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0041ffc:	4605      	mov	r5, r0
d0041ffe:	4688      	mov	r8, r1
d0042000:	ed2d 8b02 	vpush	{d8}
d0042004:	b0ad      	sub	sp, #180	; 0xb4
d0042006:	f7fe f819 	bl	d004003c <initMalloc>
d004200a:	2d00      	cmp	r5, #0
d004200c:	f340 8296 	ble.w	d004253c <main+0x544>
d0042010:	f1a8 0304 	sub.w	r3, r8, #4
d0042014:	2600      	movs	r6, #0
d0042016:	461f      	mov	r7, r3
d0042018:	4699      	mov	r9, r3
d004201a:	e002      	b.n	d0042022 <main+0x2a>
d004201c:	42b5      	cmp	r5, r6
d004201e:	f000 80c3 	beq.w	d00421a8 <main+0x1b0>
d0042022:	f859 4f04 	ldr.w	r4, [r9, #4]!
d0042026:	3601      	adds	r6, #1
d0042028:	4620      	mov	r0, r4
d004202a:	2c00      	cmp	r4, #0
d004202c:	d0f6      	beq.n	d004201c <main+0x24>
d004202e:	f002 fbdd 	bl	d00447ec <strlen>
d0042032:	1f03      	subs	r3, r0, #4
d0042034:	2803      	cmp	r0, #3
d0042036:	eb04 0203 	add.w	r2, r4, r3
d004203a:	d9ef      	bls.n	d004201c <main+0x24>
d004203c:	5ce3      	ldrb	r3, [r4, r3]
d004203e:	2b2e      	cmp	r3, #46	; 0x2e
d0042040:	d1ec      	bne.n	d004201c <main+0x24>
d0042042:	7853      	ldrb	r3, [r2, #1]
d0042044:	f003 03df 	and.w	r3, r3, #223	; 0xdf
d0042048:	2b4d      	cmp	r3, #77	; 0x4d
d004204a:	d1e7      	bne.n	d004201c <main+0x24>
d004204c:	7893      	ldrb	r3, [r2, #2]
d004204e:	f003 03df 	and.w	r3, r3, #223	; 0xdf
d0042052:	2b49      	cmp	r3, #73	; 0x49
d0042054:	d1e2      	bne.n	d004201c <main+0x24>
d0042056:	78d3      	ldrb	r3, [r2, #3]
d0042058:	f003 03df 	and.w	r3, r3, #223	; 0xdf
d004205c:	2b44      	cmp	r3, #68	; 0x44
d004205e:	d1dd      	bne.n	d004201c <main+0x24>
d0042060:	2600      	movs	r6, #0
d0042062:	46b9      	mov	r9, r7
d0042064:	f8df a34c 	ldr.w	sl, [pc, #844]	; d00423b4 <main+0x3bc>
d0042068:	f10d 025f 	add.w	r2, sp, #95	; 0x5f
d004206c:	4641      	mov	r1, r8
d004206e:	4628      	mov	r0, r5
d0042070:	f88d 605f 	strb.w	r6, [sp, #95]	; 0x5f
d0042074:	f7fe feb8 	bl	d0040de8 <find_translator_arg.constprop.0>
d0042078:	9004      	str	r0, [sp, #16]
d004207a:	f859 0f04 	ldr.w	r0, [r9, #4]!
d004207e:	3601      	adds	r6, #1
d0042080:	4651      	mov	r1, sl
d0042082:	b120      	cbz	r0, d004208e <main+0x96>
d0042084:	f002 fba8 	bl	d00447d8 <strcmp>
d0042088:	2800      	cmp	r0, #0
d004208a:	f000 80d4 	beq.w	d0042236 <main+0x23e>
d004208e:	42b5      	cmp	r5, r6
d0042090:	d1f3      	bne.n	d004207a <main+0x82>
d0042092:	2300      	movs	r3, #0
d0042094:	9302      	str	r3, [sp, #8]
d0042096:	9403      	str	r4, [sp, #12]
d0042098:	2600      	movs	r6, #0
d004209a:	f8df 931c 	ldr.w	r9, [pc, #796]	; d00423b8 <main+0x3c0>
d004209e:	463c      	mov	r4, r7
d00420a0:	f8df b318 	ldr.w	fp, [pc, #792]	; d00423bc <main+0x3c4>
d00420a4:	f8df a318 	ldr.w	sl, [pc, #792]	; d00423c0 <main+0x3c8>
d00420a8:	f854 7f04 	ldr.w	r7, [r4, #4]!
d00420ac:	3601      	adds	r6, #1
d00420ae:	4649      	mov	r1, r9
d00420b0:	4638      	mov	r0, r7
d00420b2:	b1e7      	cbz	r7, d00420ee <main+0xf6>
d00420b4:	f002 fb90 	bl	d00447d8 <strcmp>
d00420b8:	4602      	mov	r2, r0
d00420ba:	4659      	mov	r1, fp
d00420bc:	4638      	mov	r0, r7
d00420be:	2a00      	cmp	r2, #0
d00420c0:	f000 80bc 	beq.w	d004223c <main+0x244>
d00420c4:	f002 fb88 	bl	d00447d8 <strcmp>
d00420c8:	4602      	mov	r2, r0
d00420ca:	4651      	mov	r1, sl
d00420cc:	4638      	mov	r0, r7
d00420ce:	2a00      	cmp	r2, #0
d00420d0:	f000 80b4 	beq.w	d004223c <main+0x244>
d00420d4:	f002 fb80 	bl	d00447d8 <strcmp>
d00420d8:	4603      	mov	r3, r0
d00420da:	49a8      	ldr	r1, [pc, #672]	; (d004237c <main+0x384>)
d00420dc:	4638      	mov	r0, r7
d00420de:	2b00      	cmp	r3, #0
d00420e0:	f000 8148 	beq.w	d0042374 <main+0x37c>
d00420e4:	f002 fb78 	bl	d00447d8 <strcmp>
d00420e8:	2800      	cmp	r0, #0
d00420ea:	f000 813f 	beq.w	d004236c <main+0x374>
d00420ee:	42b5      	cmp	r5, r6
d00420f0:	d1da      	bne.n	d00420a8 <main+0xb0>
d00420f2:	9c03      	ldr	r4, [sp, #12]
d00420f4:	2c00      	cmp	r4, #0
d00420f6:	f040 8242 	bne.w	d004257e <main+0x586>
d00420fa:	9b04      	ldr	r3, [sp, #16]
d00420fc:	9a02      	ldr	r2, [sp, #8]
d00420fe:	ea43 0902 	orr.w	r9, r3, r2
d0042102:	f019 09ff 	ands.w	r9, r9, #255	; 0xff
d0042106:	d038      	beq.n	d004217a <main+0x182>
d0042108:	2400      	movs	r4, #0
d004210a:	4626      	mov	r6, r4
d004210c:	f04f 0b00 	mov.w	fp, #0
d0042110:	489b      	ldr	r0, [pc, #620]	; (d0042380 <main+0x388>)
d0042112:	aa1c      	add	r2, sp, #112	; 0x70
d0042114:	a91a      	add	r1, sp, #104	; 0x68
d0042116:	f88d b068 	strb.w	fp, [sp, #104]	; 0x68
d004211a:	f88d b070 	strb.w	fp, [sp, #112]	; 0x70
d004211e:	f7fe fd51 	bl	d0040bc4 <read_translator_config_path>
d0042122:	4682      	mov	sl, r0
d0042124:	2800      	cmp	r0, #0
d0042126:	d141      	bne.n	d00421ac <main+0x1b4>
d0042128:	a91a      	add	r1, sp, #104	; 0x68
d004212a:	aa1c      	add	r2, sp, #112	; 0x70
d004212c:	4895      	ldr	r0, [pc, #596]	; (d0042384 <main+0x38c>)
d004212e:	af1b      	add	r7, sp, #108	; 0x6c
d0042130:	f7fe fd48 	bl	d0040bc4 <read_translator_config_path>
d0042134:	4603      	mov	r3, r0
d0042136:	4641      	mov	r1, r8
d0042138:	4628      	mov	r0, r5
d004213a:	2b00      	cmp	r3, #0
d004213c:	f040 80d2 	bne.w	d00422e4 <main+0x2ec>
d0042140:	463a      	mov	r2, r7
d0042142:	f89d 5070 	ldrb.w	r5, [sp, #112]	; 0x70
d0042146:	f88d 306c 	strb.w	r3, [sp, #108]	; 0x6c
d004214a:	f7fe fe4d 	bl	d0040de8 <find_translator_arg.constprop.0>
d004214e:	2800      	cmp	r0, #0
d0042150:	f040 80b8 	bne.w	d00422c4 <main+0x2cc>
d0042154:	a91c      	add	r1, sp, #112	; 0x70
d0042156:	f88d 0070 	strb.w	r0, [sp, #112]	; 0x70
d004215a:	f7fe fdcd 	bl	d0040cf8 <write_translator_config.constprop.0>
d004215e:	2800      	cmp	r0, #0
d0042160:	f000 8206 	beq.w	d0042570 <main+0x578>
d0042164:	9b02      	ldr	r3, [sp, #8]
d0042166:	2b00      	cmp	r3, #0
d0042168:	f040 812c 	bne.w	d00423c4 <main+0x3cc>
d004216c:	f1b9 0f00 	cmp.w	r9, #0
d0042170:	d068      	beq.n	d0042244 <main+0x24c>
d0042172:	9b04      	ldr	r3, [sp, #16]
d0042174:	2b00      	cmp	r3, #0
d0042176:	f040 81d5 	bne.w	d0042524 <main+0x52c>
d004217a:	4883      	ldr	r0, [pc, #524]	; (d0042388 <main+0x390>)
d004217c:	f002 fa36 	bl	d00445ec <puts>
d0042180:	4a82      	ldr	r2, [pc, #520]	; (d004238c <main+0x394>)
d0042182:	4883      	ldr	r0, [pc, #524]	; (d0042390 <main+0x398>)
d0042184:	7813      	ldrb	r3, [r2, #0]
d0042186:	7854      	ldrb	r4, [r2, #1]
d0042188:	7891      	ldrb	r1, [r2, #2]
d004218a:	ea43 2304 	orr.w	r3, r3, r4, lsl #8
d004218e:	78d2      	ldrb	r2, [r2, #3]
d0042190:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0042194:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0042198:	68db      	ldr	r3, [r3, #12]
d004219a:	4798      	blx	r3
d004219c:	2001      	movs	r0, #1
d004219e:	b02d      	add	sp, #180	; 0xb4
d00421a0:	ecbd 8b02 	vpop	{d8}
d00421a4:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d00421a8:	2400      	movs	r4, #0
d00421aa:	e759      	b.n	d0042060 <main+0x68>
d00421ac:	af1b      	add	r7, sp, #108	; 0x6c
d00421ae:	4641      	mov	r1, r8
d00421b0:	4628      	mov	r0, r5
d00421b2:	f88d b06c 	strb.w	fp, [sp, #108]	; 0x6c
d00421b6:	463a      	mov	r2, r7
d00421b8:	f7fe fe16 	bl	d0040de8 <find_translator_arg.constprop.0>
d00421bc:	2800      	cmp	r0, #0
d00421be:	f040 8099 	bne.w	d00422f4 <main+0x2fc>
d00421c2:	f89d 3068 	ldrb.w	r3, [sp, #104]	; 0x68
d00421c6:	ee08 3a10 	vmov	s16, r3
d00421ca:	9b02      	ldr	r3, [sp, #8]
d00421cc:	2b00      	cmp	r3, #0
d00421ce:	f040 80fc 	bne.w	d00423ca <main+0x3d2>
d00421d2:	f1b9 0f00 	cmp.w	r9, #0
d00421d6:	d037      	beq.n	d0042248 <main+0x250>
d00421d8:	9b04      	ldr	r3, [sp, #16]
d00421da:	2b00      	cmp	r3, #0
d00421dc:	d0cd      	beq.n	d004217a <main+0x182>
d00421de:	ee18 4a10 	vmov	r4, s16
d00421e2:	2c00      	cmp	r4, #0
d00421e4:	f000 819e 	beq.w	d0042524 <main+0x52c>
d00421e8:	f7fe f98a 	bl	d0040500 <midi_send_channel_panic>
d00421ec:	ee18 0a10 	vmov	r0, s16
d00421f0:	9a02      	ldr	r2, [sp, #8]
d00421f2:	4968      	ldr	r1, [pc, #416]	; (d0042394 <main+0x39c>)
d00421f4:	f001 fd4e 	bl	d0043c94 <midi_translator_send_setup_burst>
d00421f8:	ee18 0a10 	vmov	r0, s16
d00421fc:	f001 fd44 	bl	d0043c88 <midi_translator_uses_soundfont>
d0042200:	2800      	cmp	r0, #0
d0042202:	f040 81a7 	bne.w	d0042554 <main+0x55c>
d0042206:	ee18 0a10 	vmov	r0, s16
d004220a:	f001 fb09 	bl	d0043820 <midi_translator_profile_name>
d004220e:	4601      	mov	r1, r0
d0042210:	4861      	ldr	r0, [pc, #388]	; (d0042398 <main+0x3a0>)
d0042212:	f002 f965 	bl	d00444e0 <iprintf>
d0042216:	4a5d      	ldr	r2, [pc, #372]	; (d004238c <main+0x394>)
d0042218:	4860      	ldr	r0, [pc, #384]	; (d004239c <main+0x3a4>)
d004221a:	7813      	ldrb	r3, [r2, #0]
d004221c:	7854      	ldrb	r4, [r2, #1]
d004221e:	7891      	ldrb	r1, [r2, #2]
d0042220:	ea43 2304 	orr.w	r3, r3, r4, lsl #8
d0042224:	78d2      	ldrb	r2, [r2, #3]
d0042226:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d004222a:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004222e:	68db      	ldr	r3, [r3, #12]
d0042230:	4798      	blx	r3
d0042232:	2000      	movs	r0, #0
d0042234:	e7b3      	b.n	d004219e <main+0x1a6>
d0042236:	2301      	movs	r3, #1
d0042238:	9302      	str	r3, [sp, #8]
d004223a:	e72c      	b.n	d0042096 <main+0x9e>
d004223c:	9c03      	ldr	r4, [sp, #12]
d004223e:	4691      	mov	r9, r2
d0042240:	2601      	movs	r6, #1
d0042242:	e763      	b.n	d004210c <main+0x114>
d0042244:	ee08 9a10 	vmov	s16, r9
d0042248:	2e00      	cmp	r6, #0
d004224a:	d138      	bne.n	d00422be <main+0x2c6>
d004224c:	2c00      	cmp	r4, #0
d004224e:	d058      	beq.n	d0042302 <main+0x30a>
d0042250:	7823      	ldrb	r3, [r4, #0]
d0042252:	2b00      	cmp	r3, #0
d0042254:	d055      	beq.n	d0042302 <main+0x30a>
d0042256:	4622      	mov	r2, r4
d0042258:	1c51      	adds	r1, r2, #1
d004225a:	e004      	b.n	d0042266 <main+0x26e>
d004225c:	2b2f      	cmp	r3, #47	; 0x2f
d004225e:	d004      	beq.n	d004226a <main+0x272>
d0042260:	f811 3b01 	ldrb.w	r3, [r1], #1
d0042264:	b133      	cbz	r3, d0042274 <main+0x27c>
d0042266:	2b5c      	cmp	r3, #92	; 0x5c
d0042268:	d1f8      	bne.n	d004225c <main+0x264>
d004226a:	460a      	mov	r2, r1
d004226c:	f811 3b01 	ldrb.w	r3, [r1], #1
d0042270:	2b00      	cmp	r3, #0
d0042272:	d1f8      	bne.n	d0042266 <main+0x26e>
d0042274:	7811      	ldrb	r1, [r2, #0]
d0042276:	2900      	cmp	r1, #0
d0042278:	f001 824e 	beq.w	d0043718 <main+0x1720>
d004227c:	4848      	ldr	r0, [pc, #288]	; (d00423a0 <main+0x3a8>)
d004227e:	4605      	mov	r5, r0
d0042280:	e001      	b.n	d0042286 <main+0x28e>
d0042282:	2b37      	cmp	r3, #55	; 0x37
d0042284:	d006      	beq.n	d0042294 <main+0x29c>
d0042286:	f805 1b01 	strb.w	r1, [r5], #1
d004228a:	3301      	adds	r3, #1
d004228c:	f812 1f01 	ldrb.w	r1, [r2, #1]!
d0042290:	2900      	cmp	r1, #0
d0042292:	d1f6      	bne.n	d0042282 <main+0x28a>
d0042294:	2200      	movs	r2, #0
d0042296:	54c2      	strb	r2, [r0, r3]
d0042298:	b3b6      	cbz	r6, d0042308 <main+0x310>
d004229a:	4942      	ldr	r1, [pc, #264]	; (d00423a4 <main+0x3ac>)
d004229c:	290d      	cmp	r1, #13
d004229e:	d906      	bls.n	d00422ae <main+0x2b6>
d00422a0:	f04f 4c50 	mov.w	ip, #3489660928	; 0xd0000000
d00422a4:	f89c 3000 	ldrb.w	r3, [ip]
d00422a8:	2b4d      	cmp	r3, #77	; 0x4d
d00422aa:	f000 8693 	beq.w	d0042fd4 <main+0xfdc>
d00422ae:	f04f 4150 	mov.w	r1, #3489660928	; 0xd0000000
d00422b2:	483d      	ldr	r0, [pc, #244]	; (d00423a8 <main+0x3b0>)
d00422b4:	f002 f914 	bl	d00444e0 <iprintf>
d00422b8:	4a34      	ldr	r2, [pc, #208]	; (d004238c <main+0x394>)
d00422ba:	483c      	ldr	r0, [pc, #240]	; (d00423ac <main+0x3b4>)
d00422bc:	e762      	b.n	d0042184 <main+0x18c>
d00422be:	4a3c      	ldr	r2, [pc, #240]	; (d00423b0 <main+0x3b8>)
d00422c0:	2352      	movs	r3, #82	; 0x52
d00422c2:	e7c9      	b.n	d0042258 <main+0x260>
d00422c4:	f89d 006c 	ldrb.w	r0, [sp, #108]	; 0x6c
d00422c8:	2300      	movs	r3, #0
d00422ca:	a91c      	add	r1, sp, #112	; 0x70
d00422cc:	f88d 3070 	strb.w	r3, [sp, #112]	; 0x70
d00422d0:	f7fe fd12 	bl	d0040cf8 <write_translator_config.constprop.0>
d00422d4:	2800      	cmp	r0, #0
d00422d6:	f000 812b 	beq.w	d0042530 <main+0x538>
d00422da:	f89d 006c 	ldrb.w	r0, [sp, #108]	; 0x6c
d00422de:	ee08 0a10 	vmov	s16, r0
d00422e2:	e772      	b.n	d00421ca <main+0x1d2>
d00422e4:	463a      	mov	r2, r7
d00422e6:	f88d a06c 	strb.w	sl, [sp, #108]	; 0x6c
d00422ea:	f7fe fd7d 	bl	d0040de8 <find_translator_arg.constprop.0>
d00422ee:	2800      	cmp	r0, #0
d00422f0:	f43f af67 	beq.w	d00421c2 <main+0x1ca>
d00422f4:	f89d 3068 	ldrb.w	r3, [sp, #104]	; 0x68
d00422f8:	f89d 006c 	ldrb.w	r0, [sp, #108]	; 0x6c
d00422fc:	4283      	cmp	r3, r0
d00422fe:	d1e3      	bne.n	d00422c8 <main+0x2d0>
d0042300:	e7ed      	b.n	d00422de <main+0x2e6>
d0042302:	4b27      	ldr	r3, [pc, #156]	; (d00423a0 <main+0x3a8>)
d0042304:	2200      	movs	r2, #0
d0042306:	701a      	strb	r2, [r3, #0]
d0042308:	2000      	movs	r0, #0
d004230a:	901c      	str	r0, [sp, #112]	; 0x70
d004230c:	2c00      	cmp	r4, #0
d004230e:	f000 865d 	beq.w	d0042fcc <main+0xfd4>
d0042312:	4f1e      	ldr	r7, [pc, #120]	; (d004238c <main+0x394>)
d0042314:	2201      	movs	r2, #1
d0042316:	4621      	mov	r1, r4
d0042318:	793b      	ldrb	r3, [r7, #4]
d004231a:	797d      	ldrb	r5, [r7, #5]
d004231c:	9706      	str	r7, [sp, #24]
d004231e:	ea43 2305 	orr.w	r3, r3, r5, lsl #8
d0042322:	79bd      	ldrb	r5, [r7, #6]
d0042324:	ea43 4305 	orr.w	r3, r3, r5, lsl #16
d0042328:	79fd      	ldrb	r5, [r7, #7]
d004232a:	ea43 6305 	orr.w	r3, r3, r5, lsl #24
d004232e:	681b      	ldr	r3, [r3, #0]
d0042330:	681b      	ldr	r3, [r3, #0]
d0042332:	4798      	blx	r3
d0042334:	4607      	mov	r7, r0
d0042336:	2800      	cmp	r0, #0
d0042338:	f040 815d 	bne.w	d00425f6 <main+0x5fe>
d004233c:	9906      	ldr	r1, [sp, #24]
d004233e:	790b      	ldrb	r3, [r1, #4]
d0042340:	460d      	mov	r5, r1
d0042342:	794a      	ldrb	r2, [r1, #5]
d0042344:	7989      	ldrb	r1, [r1, #6]
d0042346:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004234a:	79ea      	ldrb	r2, [r5, #7]
d004234c:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0042350:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0042354:	681b      	ldr	r3, [r3, #0]
d0042356:	685b      	ldr	r3, [r3, #4]
d0042358:	4798      	blx	r3
d004235a:	280d      	cmp	r0, #13
d004235c:	4680      	mov	r8, r0
d004235e:	f200 8111 	bhi.w	d0042584 <main+0x58c>
d0042362:	792b      	ldrb	r3, [r5, #4]
d0042364:	4638      	mov	r0, r7
d0042366:	796a      	ldrb	r2, [r5, #5]
d0042368:	79a9      	ldrb	r1, [r5, #6]
d004236a:	e157      	b.n	d004261c <main+0x624>
d004236c:	9c03      	ldr	r4, [sp, #12]
d004236e:	4681      	mov	r9, r0
d0042370:	2601      	movs	r6, #1
d0042372:	e6cb      	b.n	d004210c <main+0x114>
d0042374:	9c03      	ldr	r4, [sp, #12]
d0042376:	4699      	mov	r9, r3
d0042378:	2601      	movs	r6, #1
d004237a:	e6c7      	b.n	d004210c <main+0x114>
d004237c:	d0045de8 	.word	0xd0045de8
d0042380:	d0045b98 	.word	0xd0045b98
d0042384:	d0045ca0 	.word	0xd0045ca0
d0042388:	d0045bf0 	.word	0xd0045bf0
d004238c:	2001f000 	.word	0x2001f000
d0042390:	d0045c6c 	.word	0xd0045c6c
d0042394:	d00404bd 	.word	0xd00404bd
d0042398:	d0045d24 	.word	0xd0045d24
d004239c:	d0045d40 	.word	0xd0045d40
d00423a0:	d0046254 	.word	0xd0046254
d00423a4:	00040000 	.word	0x00040000
d00423a8:	d0045d58 	.word	0xd0045d58
d00423ac:	d0045d80 	.word	0xd0045d80
d00423b0:	d0045bc0 	.word	0xd0045bc0
d00423b4:	d0045bd0 	.word	0xd0045bd0
d00423b8:	d0045bdc 	.word	0xd0045bdc
d00423bc:	d0045be4 	.word	0xd0045be4
d00423c0:	d0045bec 	.word	0xd0045bec
d00423c4:	2300      	movs	r3, #0
d00423c6:	ee08 3a10 	vmov	s16, r3
d00423ca:	ee18 0a10 	vmov	r0, s16
d00423ce:	f001 fa27 	bl	d0043820 <midi_translator_profile_name>
d00423d2:	4601      	mov	r1, r0
d00423d4:	4897      	ldr	r0, [pc, #604]	; (d0042634 <main+0x63c>)
d00423d6:	f002 f883 	bl	d00444e0 <iprintf>
d00423da:	ee18 0a10 	vmov	r0, s16
d00423de:	f001 fc53 	bl	d0043c88 <midi_translator_uses_soundfont>
d00423e2:	2800      	cmp	r0, #0
d00423e4:	ee18 3a10 	vmov	r3, s16
d00423e8:	bf08      	it	eq
d00423ea:	2303      	moveq	r3, #3
d00423ec:	461c      	mov	r4, r3
d00423ee:	ee08 3a10 	vmov	s16, r3
d00423f2:	f7fe f885 	bl	d0040500 <midi_send_channel_panic>
d00423f6:	2200      	movs	r2, #0
d00423f8:	4620      	mov	r0, r4
d00423fa:	498f      	ldr	r1, [pc, #572]	; (d0042638 <main+0x640>)
d00423fc:	f001 fc4a 	bl	d0043c94 <midi_translator_send_setup_burst>
d0042400:	4620      	mov	r0, r4
d0042402:	f001 fc41 	bl	d0043c88 <midi_translator_uses_soundfont>
d0042406:	b108      	cbz	r0, d004240c <main+0x414>
d0042408:	f7fe fc5e 	bl	d0040cc8 <midi_wait_for_synth_ready.part.0>
d004240c:	4d8b      	ldr	r5, [pc, #556]	; (d004263c <main+0x644>)
d004240e:	ee18 0a10 	vmov	r0, s16
d0042412:	2200      	movs	r2, #0
d0042414:	4988      	ldr	r1, [pc, #544]	; (d0042638 <main+0x640>)
d0042416:	9506      	str	r5, [sp, #24]
d0042418:	f001 fdac 	bl	d0043f74 <midi_translator_send_post_load_burst>
d004241c:	7d2b      	ldrb	r3, [r5, #20]
d004241e:	462e      	mov	r6, r5
d0042420:	7d6a      	ldrb	r2, [r5, #21]
d0042422:	24c0      	movs	r4, #192	; 0xc0
d0042424:	7da8      	ldrb	r0, [r5, #22]
d0042426:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004242a:	4985      	ldr	r1, [pc, #532]	; (d0042640 <main+0x648>)
d004242c:	4a85      	ldr	r2, [pc, #532]	; (d0042644 <main+0x64c>)
d004242e:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
d0042432:	7de8      	ldrb	r0, [r5, #23]
d0042434:	6809      	ldr	r1, [r1, #0]
d0042436:	6812      	ldr	r2, [r2, #0]
d0042438:	ea43 6300 	orr.w	r3, r3, r0, lsl #24
d004243c:	4d82      	ldr	r5, [pc, #520]	; (d0042648 <main+0x650>)
d004243e:	4883      	ldr	r0, [pc, #524]	; (d004264c <main+0x654>)
d0042440:	682d      	ldr	r5, [r5, #0]
d0042442:	6800      	ldr	r0, [r0, #0]
d0042444:	f8ad 2068 	strh.w	r2, [sp, #104]	; 0x68
d0042448:	0c12      	lsrs	r2, r2, #16
d004244a:	f8ad 1064 	strh.w	r1, [sp, #100]	; 0x64
d004244e:	0c09      	lsrs	r1, r1, #16
d0042450:	f88d 206a 	strb.w	r2, [sp, #106]	; 0x6a
d0042454:	0c02      	lsrs	r2, r0, #16
d0042456:	f88d 1066 	strb.w	r1, [sp, #102]	; 0x66
d004245a:	0c29      	lsrs	r1, r5, #16
d004245c:	f8ad 506c 	strh.w	r5, [sp, #108]	; 0x6c
d0042460:	f88d 106e 	strb.w	r1, [sp, #110]	; 0x6e
d0042464:	2102      	movs	r1, #2
d0042466:	f8ad 0070 	strh.w	r0, [sp, #112]	; 0x70
d004246a:	a818      	add	r0, sp, #96	; 0x60
d004246c:	f88d 2072 	strb.w	r2, [sp, #114]	; 0x72
d0042470:	f8ad 4060 	strh.w	r4, [sp, #96]	; 0x60
d0042474:	2432      	movs	r4, #50	; 0x32
d0042476:	681b      	ldr	r3, [r3, #0]
d0042478:	695b      	ldr	r3, [r3, #20]
d004247a:	4798      	blx	r3
d004247c:	7d33      	ldrb	r3, [r6, #20]
d004247e:	7d72      	ldrb	r2, [r6, #21]
d0042480:	2103      	movs	r1, #3
d0042482:	a819      	add	r0, sp, #100	; 0x64
d0042484:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0042488:	7db2      	ldrb	r2, [r6, #22]
d004248a:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d004248e:	7df2      	ldrb	r2, [r6, #23]
d0042490:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0042494:	681b      	ldr	r3, [r3, #0]
d0042496:	695b      	ldr	r3, [r3, #20]
d0042498:	4798      	blx	r3
d004249a:	7d33      	ldrb	r3, [r6, #20]
d004249c:	7d72      	ldrb	r2, [r6, #21]
d004249e:	a81a      	add	r0, sp, #104	; 0x68
d00424a0:	7db1      	ldrb	r1, [r6, #22]
d00424a2:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d00424a6:	7df2      	ldrb	r2, [r6, #23]
d00424a8:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d00424ac:	2103      	movs	r1, #3
d00424ae:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00424b2:	681b      	ldr	r3, [r3, #0]
d00424b4:	695b      	ldr	r3, [r3, #20]
d00424b6:	4798      	blx	r3
d00424b8:	7d33      	ldrb	r3, [r6, #20]
d00424ba:	7d72      	ldrb	r2, [r6, #21]
d00424bc:	4638      	mov	r0, r7
d00424be:	7db5      	ldrb	r5, [r6, #22]
d00424c0:	2103      	movs	r1, #3
d00424c2:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d00424c6:	7df2      	ldrb	r2, [r6, #23]
d00424c8:	ea43 4305 	orr.w	r3, r3, r5, lsl #16
d00424cc:	4635      	mov	r5, r6
d00424ce:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00424d2:	681b      	ldr	r3, [r3, #0]
d00424d4:	695b      	ldr	r3, [r3, #20]
d00424d6:	4798      	blx	r3
d00424d8:	7f2a      	ldrb	r2, [r5, #28]
d00424da:	3c01      	subs	r4, #1
d00424dc:	7f69      	ldrb	r1, [r5, #29]
d00424de:	7fab      	ldrb	r3, [r5, #30]
d00424e0:	ea42 2201 	orr.w	r2, r2, r1, lsl #8
d00424e4:	7fe9      	ldrb	r1, [r5, #31]
d00424e6:	ea42 4303 	orr.w	r3, r2, r3, lsl #16
d00424ea:	ea43 6301 	orr.w	r3, r3, r1, lsl #24
d00424ee:	699b      	ldr	r3, [r3, #24]
d00424f0:	4798      	blx	r3
d00424f2:	f014 04ff 	ands.w	r4, r4, #255	; 0xff
d00424f6:	d1ef      	bne.n	d00424d8 <main+0x4e0>
d00424f8:	9a06      	ldr	r2, [sp, #24]
d00424fa:	2103      	movs	r1, #3
d00424fc:	a81c      	add	r0, sp, #112	; 0x70
d00424fe:	7d13      	ldrb	r3, [r2, #20]
d0042500:	4615      	mov	r5, r2
d0042502:	7d52      	ldrb	r2, [r2, #21]
d0042504:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0042508:	462a      	mov	r2, r5
d004250a:	7dad      	ldrb	r5, [r5, #22]
d004250c:	7dd2      	ldrb	r2, [r2, #23]
d004250e:	ea43 4305 	orr.w	r3, r3, r5, lsl #16
d0042512:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0042516:	681b      	ldr	r3, [r3, #0]
d0042518:	695b      	ldr	r3, [r3, #20]
d004251a:	4798      	blx	r3
d004251c:	f7fd fff0 	bl	d0040500 <midi_send_channel_panic>
d0042520:	4620      	mov	r0, r4
d0042522:	e63c      	b.n	d004219e <main+0x1a6>
d0042524:	f7ff fa3e 	bl	d00419a4 <midi_send_gm_reset>
d0042528:	2300      	movs	r3, #0
d004252a:	ee08 3a10 	vmov	s16, r3
d004252e:	e66a      	b.n	d0042206 <main+0x20e>
d0042530:	f89d 1070 	ldrb.w	r1, [sp, #112]	; 0x70
d0042534:	4846      	ldr	r0, [pc, #280]	; (d0042650 <main+0x658>)
d0042536:	f001 ffd3 	bl	d00444e0 <iprintf>
d004253a:	e6ce      	b.n	d00422da <main+0x2e2>
d004253c:	2400      	movs	r4, #0
d004253e:	f10d 025f 	add.w	r2, sp, #95	; 0x5f
d0042542:	4641      	mov	r1, r8
d0042544:	4628      	mov	r0, r5
d0042546:	f88d 405f 	strb.w	r4, [sp, #95]	; 0x5f
d004254a:	f7fe fc4d 	bl	d0040de8 <find_translator_arg.constprop.0>
d004254e:	9402      	str	r4, [sp, #8]
d0042550:	9004      	str	r0, [sp, #16]
d0042552:	e5d2      	b.n	d00420fa <main+0x102>
d0042554:	ee18 0a10 	vmov	r0, s16
d0042558:	f001 fb96 	bl	d0043c88 <midi_translator_uses_soundfont>
d004255c:	b108      	cbz	r0, d0042562 <main+0x56a>
d004255e:	f7fe fbb3 	bl	d0040cc8 <midi_wait_for_synth_ready.part.0>
d0042562:	2200      	movs	r2, #0
d0042564:	4934      	ldr	r1, [pc, #208]	; (d0042638 <main+0x640>)
d0042566:	ee18 0a10 	vmov	r0, s16
d004256a:	f001 fd03 	bl	d0043f74 <midi_translator_send_post_load_burst>
d004256e:	e64a      	b.n	d0042206 <main+0x20e>
d0042570:	462a      	mov	r2, r5
d0042572:	f89d 1070 	ldrb.w	r1, [sp, #112]	; 0x70
d0042576:	4837      	ldr	r0, [pc, #220]	; (d0042654 <main+0x65c>)
d0042578:	f001 ffb2 	bl	d00444e0 <iprintf>
d004257c:	e5f2      	b.n	d0042164 <main+0x16c>
d004257e:	2600      	movs	r6, #0
d0042580:	46b1      	mov	r9, r6
d0042582:	e5c3      	b.n	d004210c <main+0x114>
d0042584:	f001 feea 	bl	d004435c <malloc>
d0042588:	9a06      	ldr	r2, [sp, #24]
d004258a:	4681      	mov	r9, r0
d004258c:	4611      	mov	r1, r2
d004258e:	2800      	cmp	r0, #0
d0042590:	d040      	beq.n	d0042614 <main+0x61c>
d0042592:	7915      	ldrb	r5, [r2, #4]
d0042594:	4610      	mov	r0, r2
d0042596:	f892 c005 	ldrb.w	ip, [r2, #5]
d004259a:	ab1c      	add	r3, sp, #112	; 0x70
d004259c:	f891 e006 	ldrb.w	lr, [r1, #6]
d00425a0:	4642      	mov	r2, r8
d00425a2:	ea45 250c 	orr.w	r5, r5, ip, lsl #8
d00425a6:	f890 c007 	ldrb.w	ip, [r0, #7]
d00425aa:	4649      	mov	r1, r9
d00425ac:	4638      	mov	r0, r7
d00425ae:	ea45 450e 	orr.w	r5, r5, lr, lsl #16
d00425b2:	ea45 6c0c 	orr.w	ip, r5, ip, lsl #24
d00425b6:	f8dc 5000 	ldr.w	r5, [ip]
d00425ba:	68ad      	ldr	r5, [r5, #8]
d00425bc:	47a8      	blx	r5
d00425be:	9b06      	ldr	r3, [sp, #24]
d00425c0:	4605      	mov	r5, r0
d00425c2:	4638      	mov	r0, r7
d00425c4:	7919      	ldrb	r1, [r3, #4]
d00425c6:	461f      	mov	r7, r3
d00425c8:	795a      	ldrb	r2, [r3, #5]
d00425ca:	799b      	ldrb	r3, [r3, #6]
d00425cc:	ea41 2202 	orr.w	r2, r1, r2, lsl #8
d00425d0:	79f9      	ldrb	r1, [r7, #7]
d00425d2:	ea42 4303 	orr.w	r3, r2, r3, lsl #16
d00425d6:	ea43 6301 	orr.w	r3, r3, r1, lsl #24
d00425da:	681b      	ldr	r3, [r3, #0]
d00425dc:	68db      	ldr	r3, [r3, #12]
d00425de:	4798      	blx	r3
d00425e0:	b935      	cbnz	r5, d00425f0 <main+0x5f8>
d00425e2:	9b1c      	ldr	r3, [sp, #112]	; 0x70
d00425e4:	4598      	cmp	r8, r3
d00425e6:	d103      	bne.n	d00425f0 <main+0x5f8>
d00425e8:	f899 3000 	ldrb.w	r3, [r9]
d00425ec:	2b4d      	cmp	r3, #77	; 0x4d
d00425ee:	d037      	beq.n	d0042660 <main+0x668>
d00425f0:	4648      	mov	r0, r9
d00425f2:	f001 febb 	bl	d004436c <free>
d00425f6:	4621      	mov	r1, r4
d00425f8:	4817      	ldr	r0, [pc, #92]	; (d0042658 <main+0x660>)
d00425fa:	f001 ff71 	bl	d00444e0 <iprintf>
d00425fe:	9a06      	ldr	r2, [sp, #24]
d0042600:	7813      	ldrb	r3, [r2, #0]
d0042602:	4610      	mov	r0, r2
d0042604:	4611      	mov	r1, r2
d0042606:	7852      	ldrb	r2, [r2, #1]
d0042608:	7889      	ldrb	r1, [r1, #2]
d004260a:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004260e:	78c2      	ldrb	r2, [r0, #3]
d0042610:	4812      	ldr	r0, [pc, #72]	; (d004265c <main+0x664>)
d0042612:	e5bd      	b.n	d0042190 <main+0x198>
d0042614:	7913      	ldrb	r3, [r2, #4]
d0042616:	4615      	mov	r5, r2
d0042618:	7952      	ldrb	r2, [r2, #5]
d004261a:	7989      	ldrb	r1, [r1, #6]
d004261c:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0042620:	79ea      	ldrb	r2, [r5, #7]
d0042622:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0042626:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004262a:	681b      	ldr	r3, [r3, #0]
d004262c:	68db      	ldr	r3, [r3, #12]
d004262e:	4798      	blx	r3
d0042630:	e7e1      	b.n	d00425f6 <main+0x5fe>
d0042632:	bf00      	nop
d0042634:	d0045d04 	.word	0xd0045d04
d0042638:	d00404bd 	.word	0xd00404bd
d004263c:	2001f000 	.word	0x2001f000
d0042640:	d0045e74 	.word	0xd0045e74
d0042644:	d0045e78 	.word	0xd0045e78
d0042648:	d0045e7c 	.word	0xd0045e7c
d004264c:	d0045e80 	.word	0xd0045e80
d0042650:	d0045cbc 	.word	0xd0045cbc
d0042654:	d0045cdc 	.word	0xd0045cdc
d0042658:	d0045da0 	.word	0xd0045da0
d004265c:	d0045dbc 	.word	0xd0045dbc
d0042660:	f899 3001 	ldrb.w	r3, [r9, #1]
d0042664:	2b54      	cmp	r3, #84	; 0x54
d0042666:	d1c3      	bne.n	d00425f0 <main+0x5f8>
d0042668:	f899 3002 	ldrb.w	r3, [r9, #2]
d004266c:	2b68      	cmp	r3, #104	; 0x68
d004266e:	d1bf      	bne.n	d00425f0 <main+0x5f8>
d0042670:	f899 3003 	ldrb.w	r3, [r9, #3]
d0042674:	2b64      	cmp	r3, #100	; 0x64
d0042676:	d1bb      	bne.n	d00425f0 <main+0x5f8>
d0042678:	4b33      	ldr	r3, [pc, #204]	; (d0042748 <main+0x750>)
d004267a:	6818      	ldr	r0, [r3, #0]
d004267c:	9308      	str	r3, [sp, #32]
d004267e:	4b33      	ldr	r3, [pc, #204]	; (d004274c <main+0x754>)
d0042680:	9309      	str	r3, [sp, #36]	; 0x24
d0042682:	b118      	cbz	r0, d004268c <main+0x694>
d0042684:	781b      	ldrb	r3, [r3, #0]
d0042686:	2b00      	cmp	r3, #0
d0042688:	f040 8520 	bne.w	d00430cc <main+0x10d4>
d004268c:	4a30      	ldr	r2, [pc, #192]	; (d0042750 <main+0x758>)
d004268e:	2301      	movs	r3, #1
d0042690:	9908      	ldr	r1, [sp, #32]
d0042692:	f8c2 8000 	str.w	r8, [r2]
d0042696:	920f      	str	r2, [sp, #60]	; 0x3c
d0042698:	9a09      	ldr	r2, [sp, #36]	; 0x24
d004269a:	f8c1 9000 	str.w	r9, [r1]
d004269e:	7013      	strb	r3, [r2, #0]
d00426a0:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
d00426a2:	ee18 2a10 	vmov	r2, s16
d00426a6:	f44f 7700 	mov.w	r7, #512	; 0x200
d00426aa:	6819      	ldr	r1, [r3, #0]
d00426ac:	9b08      	ldr	r3, [sp, #32]
d00426ae:	6818      	ldr	r0, [r3, #0]
d00426b0:	f7ff fbca 	bl	d0041e48 <setup>
d00426b4:	4b27      	ldr	r3, [pc, #156]	; (d0042754 <main+0x75c>)
d00426b6:	f242 7010 	movw	r0, #10000	; 0x2710
d00426ba:	2100      	movs	r1, #0
d00426bc:	f8d3 5114 	ldr.w	r5, [r3, #276]	; 0x114
d00426c0:	f644 6220 	movw	r2, #20000	; 0x4e20
d00426c4:	4b24      	ldr	r3, [pc, #144]	; (d0042758 <main+0x760>)
d00426c6:	2d00      	cmp	r5, #0
d00426c8:	bf08      	it	eq
d00426ca:	461d      	moveq	r5, r3
d00426cc:	2300      	movs	r3, #0
d00426ce:	fbe7 0105 	umlal	r0, r1, r7, r5
d00426d2:	f001 fcc1 	bl	d0044058 <__aeabi_uldivmod>
d00426d6:	f5b0 3fa0 	cmp.w	r0, #81920	; 0x14000
d00426da:	4b1e      	ldr	r3, [pc, #120]	; (d0042754 <main+0x75c>)
d00426dc:	bf28      	it	cs
d00426de:	f44f 30a0 	movcs.w	r0, #81920	; 0x14000
d00426e2:	f893 2120 	ldrb.w	r2, [r3, #288]	; 0x120
d00426e6:	f5b0 6f80 	cmp.w	r0, #1024	; 0x400
d00426ea:	4b1c      	ldr	r3, [pc, #112]	; (d004275c <main+0x764>)
d00426ec:	bf38      	it	cc
d00426ee:	f44f 6080 	movcc.w	r0, #1024	; 0x400
d00426f2:	6018      	str	r0, [r3, #0]
d00426f4:	2a00      	cmp	r2, #0
d00426f6:	d137      	bne.n	d0042768 <main+0x770>
d00426f8:	2e00      	cmp	r6, #0
d00426fa:	f000 84ef 	beq.w	d00430dc <main+0x10e4>
d00426fe:	4818      	ldr	r0, [pc, #96]	; (d0042760 <main+0x768>)
d0042700:	f001 ff74 	bl	d00445ec <puts>
d0042704:	9a06      	ldr	r2, [sp, #24]
d0042706:	7813      	ldrb	r3, [r2, #0]
d0042708:	4610      	mov	r0, r2
d004270a:	4611      	mov	r1, r2
d004270c:	7852      	ldrb	r2, [r2, #1]
d004270e:	7889      	ldrb	r1, [r1, #2]
d0042710:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0042714:	78c2      	ldrb	r2, [r0, #3]
d0042716:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d004271a:	4812      	ldr	r0, [pc, #72]	; (d0042764 <main+0x76c>)
d004271c:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0042720:	68db      	ldr	r3, [r3, #12]
d0042722:	4798      	blx	r3
d0042724:	f7fd feec 	bl	d0040500 <midi_send_channel_panic>
d0042728:	9b08      	ldr	r3, [sp, #32]
d004272a:	6818      	ldr	r0, [r3, #0]
d004272c:	b120      	cbz	r0, d0042738 <main+0x740>
d004272e:	9b09      	ldr	r3, [sp, #36]	; 0x24
d0042730:	781b      	ldrb	r3, [r3, #0]
d0042732:	2b00      	cmp	r3, #0
d0042734:	f040 84ce 	bne.w	d00430d4 <main+0x10dc>
d0042738:	2300      	movs	r3, #0
d004273a:	9a08      	ldr	r2, [sp, #32]
d004273c:	2001      	movs	r0, #1
d004273e:	6013      	str	r3, [r2, #0]
d0042740:	9a09      	ldr	r2, [sp, #36]	; 0x24
d0042742:	7013      	strb	r3, [r2, #0]
d0042744:	e52b      	b.n	d004219e <main+0x1a6>
d0042746:	bf00      	nop
d0042748:	d00467a4 	.word	0xd00467a4
d004274c:	d00467a8 	.word	0xd00467a8
d0042750:	d00467ac 	.word	0xd00467ac
d0042754:	d00479e8 	.word	0xd00479e8
d0042758:	0007a120 	.word	0x0007a120
d004275c:	d0046bcc 	.word	0xd0046bcc
d0042760:	d0045dd4 	.word	0xd0045dd4
d0042764:	d0045e04 	.word	0xd0045e04
d0042768:	9f06      	ldr	r7, [sp, #24]
d004276a:	2000      	movs	r0, #0
d004276c:	2501      	movs	r5, #1
d004276e:	f8df 9380 	ldr.w	r9, [pc, #896]	; d0042af0 <main+0xaf8>
d0042772:	783b      	ldrb	r3, [r7, #0]
d0042774:	463e      	mov	r6, r7
d0042776:	787a      	ldrb	r2, [r7, #1]
d0042778:	78b9      	ldrb	r1, [r7, #2]
d004277a:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004277e:	78fa      	ldrb	r2, [r7, #3]
d0042780:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0042784:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0042788:	681b      	ldr	r3, [r3, #0]
d004278a:	4798      	blx	r3
d004278c:	793b      	ldrb	r3, [r7, #4]
d004278e:	797a      	ldrb	r2, [r7, #5]
d0042790:	79b9      	ldrb	r1, [r7, #6]
d0042792:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0042796:	79fa      	ldrb	r2, [r7, #7]
d0042798:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d004279c:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00427a0:	689b      	ldr	r3, [r3, #8]
d00427a2:	4798      	blx	r3
d00427a4:	7b3b      	ldrb	r3, [r7, #12]
d00427a6:	7b7a      	ldrb	r2, [r7, #13]
d00427a8:	2190      	movs	r1, #144	; 0x90
d00427aa:	7bbc      	ldrb	r4, [r7, #14]
d00427ac:	20dc      	movs	r0, #220	; 0xdc
d00427ae:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d00427b2:	7bfa      	ldrb	r2, [r7, #15]
d00427b4:	4fc2      	ldr	r7, [pc, #776]	; (d0042ac0 <main+0xac8>)
d00427b6:	ea43 4304 	orr.w	r3, r3, r4, lsl #16
d00427ba:	2406      	movs	r4, #6
d00427bc:	703d      	strb	r5, [r7, #0]
d00427be:	4637      	mov	r7, r6
d00427c0:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00427c4:	681b      	ldr	r3, [r3, #0]
d00427c6:	691b      	ldr	r3, [r3, #16]
d00427c8:	4798      	blx	r3
d00427ca:	7b31      	ldrb	r1, [r6, #12]
d00427cc:	7b73      	ldrb	r3, [r6, #13]
d00427ce:	f44f 72f0 	mov.w	r2, #480	; 0x1e0
d00427d2:	7bb0      	ldrb	r0, [r6, #14]
d00427d4:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
d00427d8:	7bf3      	ldrb	r3, [r6, #15]
d00427da:	ea41 4100 	orr.w	r1, r1, r0, lsl #16
d00427de:	4610      	mov	r0, r2
d00427e0:	ea41 6103 	orr.w	r1, r1, r3, lsl #24
d00427e4:	f44f 7320 	mov.w	r3, #640	; 0x280
d00427e8:	680e      	ldr	r6, [r1, #0]
d00427ea:	f44f 71a0 	mov.w	r1, #320	; 0x140
d00427ee:	9400      	str	r4, [sp, #0]
d00427f0:	6974      	ldr	r4, [r6, #20]
d00427f2:	47a0      	blx	r4
d00427f4:	7b3b      	ldrb	r3, [r7, #12]
d00427f6:	7b7a      	ldrb	r2, [r7, #13]
d00427f8:	7bb9      	ldrb	r1, [r7, #14]
d00427fa:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d00427fe:	7bfa      	ldrb	r2, [r7, #15]
d0042800:	4cb0      	ldr	r4, [pc, #704]	; (d0042ac4 <main+0xacc>)
d0042802:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0042806:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004280a:	681b      	ldr	r3, [r3, #0]
d004280c:	6bdb      	ldr	r3, [r3, #60]	; 0x3c
d004280e:	4798      	blx	r3
d0042810:	7b3b      	ldrb	r3, [r7, #12]
d0042812:	7b7a      	ldrb	r2, [r7, #13]
d0042814:	7bb9      	ldrb	r1, [r7, #14]
d0042816:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004281a:	7bfa      	ldrb	r2, [r7, #15]
d004281c:	6020      	str	r0, [r4, #0]
d004281e:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0042822:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0042826:	681b      	ldr	r3, [r3, #0]
d0042828:	6c1b      	ldr	r3, [r3, #64]	; 0x40
d004282a:	4798      	blx	r3
d004282c:	4aa6      	ldr	r2, [pc, #664]	; (d0042ac8 <main+0xad0>)
d004282e:	4603      	mov	r3, r0
d0042830:	f44f 2096 	mov.w	r0, #307200	; 0x4b000
d0042834:	6013      	str	r3, [r2, #0]
d0042836:	f001 fd91 	bl	d004435c <malloc>
d004283a:	f8c9 0000 	str.w	r0, [r9]
d004283e:	f8d9 3000 	ldr.w	r3, [r9]
d0042842:	2b00      	cmp	r3, #0
d0042844:	f000 83b4 	beq.w	d0042fb0 <main+0xfb8>
d0042848:	4ca0      	ldr	r4, [pc, #640]	; (d0042acc <main+0xad4>)
d004284a:	f44f 7320 	mov.w	r3, #640	; 0x280
d004284e:	f44f 2696 	mov.w	r6, #307200	; 0x4b000
d0042852:	f44f 75f0 	mov.w	r5, #480	; 0x1e0
d0042856:	4620      	mov	r0, r4
d0042858:	f44f 6280 	mov.w	r2, #1024	; 0x400
d004285c:	2100      	movs	r1, #0
d004285e:	f8a9 5004 	strh.w	r5, [r9, #4]
d0042862:	f8a9 3006 	strh.w	r3, [r9, #6]
d0042866:	f8a9 3008 	strh.w	r3, [r9, #8]
d004286a:	f8c9 600c 	str.w	r6, [r9, #12]
d004286e:	f001 fd85 	bl	d004437c <memset>
d0042872:	9b06      	ldr	r3, [sp, #24]
d0042874:	4620      	mov	r0, r4
d0042876:	4e96      	ldr	r6, [pc, #600]	; (d0042ad0 <main+0xad8>)
d0042878:	7b19      	ldrb	r1, [r3, #12]
d004287a:	461a      	mov	r2, r3
d004287c:	7b5b      	ldrb	r3, [r3, #13]
d004287e:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
d0042882:	7b93      	ldrb	r3, [r2, #14]
d0042884:	ea41 4103 	orr.w	r1, r1, r3, lsl #16
d0042888:	7bd3      	ldrb	r3, [r2, #15]
d004288a:	ea41 6103 	orr.w	r1, r1, r3, lsl #24
d004288e:	a374      	add	r3, pc, #464	; (adr r3, d0042a60 <main+0xa68>)
d0042890:	e9d3 2300 	ldrd	r2, r3, [r3]
d0042894:	6809      	ldr	r1, [r1, #0]
d0042896:	6226      	str	r6, [r4, #32]
d0042898:	6cc9      	ldr	r1, [r1, #76]	; 0x4c
d004289a:	e9c4 2300 	strd	r2, r3, [r4]
d004289e:	a372      	add	r3, pc, #456	; (adr r3, d0042a68 <main+0xa70>)
d00428a0:	e9d3 2300 	ldrd	r2, r3, [r3]
d00428a4:	a772      	add	r7, pc, #456	; (adr r7, d0042a70 <main+0xa78>)
d00428a6:	e9d7 6700 	ldrd	r6, r7, [r7]
d00428aa:	e9c4 2304 	strd	r2, r3, [r4, #16]
d00428ae:	a372      	add	r3, pc, #456	; (adr r3, d0042a78 <main+0xa80>)
d00428b0:	e9d3 2300 	ldrd	r2, r3, [r3]
d00428b4:	e9c4 6702 	strd	r6, r7, [r4, #8]
d00428b8:	e9c4 2320 	strd	r2, r3, [r4, #128]	; 0x80
d00428bc:	a770      	add	r7, pc, #448	; (adr r7, d0042a80 <main+0xa88>)
d00428be:	e9d7 6700 	ldrd	r6, r7, [r7]
d00428c2:	a371      	add	r3, pc, #452	; (adr r3, d0042a88 <main+0xa90>)
d00428c4:	e9d3 2300 	ldrd	r2, r3, [r3]
d00428c8:	e9c4 6706 	strd	r6, r7, [r4, #24]
d00428cc:	e9c4 2324 	strd	r2, r3, [r4, #144]	; 0x90
d00428d0:	a76f      	add	r7, pc, #444	; (adr r7, d0042a90 <main+0xa98>)
d00428d2:	e9d7 6700 	ldrd	r6, r7, [r7]
d00428d6:	a370      	add	r3, pc, #448	; (adr r3, d0042a98 <main+0xaa0>)
d00428d8:	e9d3 2300 	ldrd	r2, r3, [r3]
d00428dc:	e9c4 6722 	strd	r6, r7, [r4, #136]	; 0x88
d00428e0:	e9c4 2328 	strd	r2, r3, [r4, #160]	; 0xa0
d00428e4:	a76e      	add	r7, pc, #440	; (adr r7, d0042aa0 <main+0xaa8>)
d00428e6:	e9d7 6700 	ldrd	r6, r7, [r7]
d00428ea:	a36f      	add	r3, pc, #444	; (adr r3, d0042aa8 <main+0xab0>)
d00428ec:	e9d3 2300 	ldrd	r2, r3, [r3]
d00428f0:	e9c4 6726 	strd	r6, r7, [r4, #152]	; 0x98
d00428f4:	e9c4 232c 	strd	r2, r3, [r4, #176]	; 0xb0
d00428f8:	a76d      	add	r7, pc, #436	; (adr r7, d0042ab0 <main+0xab8>)
d00428fa:	e9d7 6700 	ldrd	r6, r7, [r7]
d00428fe:	a36e      	add	r3, pc, #440	; (adr r3, d0042ab8 <main+0xac0>)
d0042900:	e9d3 2300 	ldrd	r2, r3, [r3]
d0042904:	e9c4 672a 	strd	r6, r7, [r4, #168]	; 0xa8
d0042908:	e9c4 232e 	strd	r2, r3, [r4, #184]	; 0xb8
d004290c:	4788      	blx	r1
d004290e:	9906      	ldr	r1, [sp, #24]
d0042910:	4620      	mov	r0, r4
d0042912:	4e6c      	ldr	r6, [pc, #432]	; (d0042ac4 <main+0xacc>)
d0042914:	7b0b      	ldrb	r3, [r1, #12]
d0042916:	460c      	mov	r4, r1
d0042918:	7b4a      	ldrb	r2, [r1, #13]
d004291a:	7b89      	ldrb	r1, [r1, #14]
d004291c:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0042920:	7be2      	ldrb	r2, [r4, #15]
d0042922:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0042926:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004292a:	681b      	ldr	r3, [r3, #0]
d004292c:	6d1b      	ldr	r3, [r3, #80]	; 0x50
d004292e:	4798      	blx	r3
d0042930:	6830      	ldr	r0, [r6, #0]
d0042932:	f7fd fbf7 	bl	d0040124 <draw_visualizer_front_base>
d0042936:	4b64      	ldr	r3, [pc, #400]	; (d0042ac8 <main+0xad0>)
d0042938:	6818      	ldr	r0, [r3, #0]
d004293a:	f7fd fbf3 	bl	d0040124 <draw_visualizer_front_base>
d004293e:	7b23      	ldrb	r3, [r4, #12]
d0042940:	7b62      	ldrb	r2, [r4, #13]
d0042942:	7ba1      	ldrb	r1, [r4, #14]
d0042944:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0042948:	7be2      	ldrb	r2, [r4, #15]
d004294a:	6830      	ldr	r0, [r6, #0]
d004294c:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0042950:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0042954:	681b      	ldr	r3, [r3, #0]
d0042956:	69db      	ldr	r3, [r3, #28]
d0042958:	4798      	blx	r3
d004295a:	7b23      	ldrb	r3, [r4, #12]
d004295c:	7b62      	ldrb	r2, [r4, #13]
d004295e:	4648      	mov	r0, r9
d0042960:	7ba1      	ldrb	r1, [r4, #14]
d0042962:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0042966:	7be2      	ldrb	r2, [r4, #15]
d0042968:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d004296c:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0042970:	681b      	ldr	r3, [r3, #0]
d0042972:	6a1b      	ldr	r3, [r3, #32]
d0042974:	4798      	blx	r3
d0042976:	f8d9 3000 	ldr.w	r3, [r9]
d004297a:	b183      	cbz	r3, d004299e <main+0x9a6>
d004297c:	f8d9 6000 	ldr.w	r6, [r9]
d0042980:	462c      	mov	r4, r5
d0042982:	f8b9 5008 	ldrh.w	r5, [r9, #8]
d0042986:	b2ad      	uxth	r5, r5
d0042988:	3c01      	subs	r4, #1
d004298a:	4630      	mov	r0, r6
d004298c:	f44f 7220 	mov.w	r2, #640	; 0x280
d0042990:	2101      	movs	r1, #1
d0042992:	b2a4      	uxth	r4, r4
d0042994:	442e      	add	r6, r5
d0042996:	f001 fcf1 	bl	d004437c <memset>
d004299a:	2c00      	cmp	r4, #0
d004299c:	d1f4      	bne.n	d0042988 <main+0x990>
d004299e:	f7fe fa35 	bl	d0040e0c <visualizer_draw_grid_full>
d00429a2:	f44f 6240 	mov.w	r2, #3072	; 0xc00
d00429a6:	2100      	movs	r1, #0
d00429a8:	484a      	ldr	r0, [pc, #296]	; (d0042ad4 <main+0xadc>)
d00429aa:	f001 fce7 	bl	d004437c <memset>
d00429ae:	2100      	movs	r1, #0
d00429b0:	9806      	ldr	r0, [sp, #24]
d00429b2:	f44f 5248 	mov.w	r2, #12800	; 0x3200
d00429b6:	4b48      	ldr	r3, [pc, #288]	; (d0042ad8 <main+0xae0>)
d00429b8:	4604      	mov	r4, r0
d00429ba:	4d48      	ldr	r5, [pc, #288]	; (d0042adc <main+0xae4>)
d00429bc:	7019      	strb	r1, [r3, #0]
d00429be:	7b03      	ldrb	r3, [r0, #12]
d00429c0:	7b40      	ldrb	r0, [r0, #13]
d00429c2:	6029      	str	r1, [r5, #0]
d00429c4:	4625      	mov	r5, r4
d00429c6:	ea43 2300 	orr.w	r3, r3, r0, lsl #8
d00429ca:	7ba4      	ldrb	r4, [r4, #14]
d00429cc:	4844      	ldr	r0, [pc, #272]	; (d0042ae0 <main+0xae8>)
d00429ce:	ea43 4304 	orr.w	r3, r3, r4, lsl #16
d00429d2:	7bec      	ldrb	r4, [r5, #15]
d00429d4:	4e43      	ldr	r6, [pc, #268]	; (d0042ae4 <main+0xaec>)
d00429d6:	f44f 7500 	mov.w	r5, #512	; 0x200
d00429da:	ea43 6304 	orr.w	r3, r3, r4, lsl #24
d00429de:	6001      	str	r1, [r0, #0]
d00429e0:	4608      	mov	r0, r1
d00429e2:	6032      	str	r2, [r6, #0]
d00429e4:	681b      	ldr	r3, [r3, #0]
d00429e6:	6b1b      	ldr	r3, [r3, #48]	; 0x30
d00429e8:	4798      	blx	r3
d00429ea:	4b3f      	ldr	r3, [pc, #252]	; (d0042ae8 <main+0xaf0>)
d00429ec:	f242 7010 	movw	r0, #10000	; 0x2710
d00429f0:	2100      	movs	r1, #0
d00429f2:	f8d3 4114 	ldr.w	r4, [r3, #276]	; 0x114
d00429f6:	f644 6220 	movw	r2, #20000	; 0x4e20
d00429fa:	4b3c      	ldr	r3, [pc, #240]	; (d0042aec <main+0xaf4>)
d00429fc:	2c00      	cmp	r4, #0
d00429fe:	bf08      	it	eq
d0042a00:	461c      	moveq	r4, r3
d0042a02:	2300      	movs	r3, #0
d0042a04:	fbe5 0104 	umlal	r0, r1, r5, r4
d0042a08:	f001 fb26 	bl	d0044058 <__aeabi_uldivmod>
d0042a0c:	f5b0 3fa0 	cmp.w	r0, #81920	; 0x14000
d0042a10:	f8d9 2000 	ldr.w	r2, [r9]
d0042a14:	bf28      	it	cs
d0042a16:	f44f 30a0 	movcs.w	r0, #81920	; 0x14000
d0042a1a:	f5b0 6f80 	cmp.w	r0, #1024	; 0x400
d0042a1e:	bf38      	it	cc
d0042a20:	f44f 6080 	movcc.w	r0, #1024	; 0x400
d0042a24:	6030      	str	r0, [r6, #0]
d0042a26:	b18a      	cbz	r2, d0042a4c <main+0xa54>
d0042a28:	f8d9 6000 	ldr.w	r6, [r9]
d0042a2c:	f44f 74f0 	mov.w	r4, #480	; 0x1e0
d0042a30:	f8b9 5008 	ldrh.w	r5, [r9, #8]
d0042a34:	b2ad      	uxth	r5, r5
d0042a36:	3c01      	subs	r4, #1
d0042a38:	4630      	mov	r0, r6
d0042a3a:	f44f 7220 	mov.w	r2, #640	; 0x280
d0042a3e:	2101      	movs	r1, #1
d0042a40:	b2a4      	uxth	r4, r4
d0042a42:	442e      	add	r6, r5
d0042a44:	f001 fc9a 	bl	d004437c <memset>
d0042a48:	2c00      	cmp	r4, #0
d0042a4a:	d1f4      	bne.n	d0042a36 <main+0xa3e>
d0042a4c:	f7fe f9de 	bl	d0040e0c <visualizer_draw_grid_full>
d0042a50:	ee18 0a10 	vmov	r0, s16
d0042a54:	f7fd fdba 	bl	d00405cc <midi_wait_for_startup_bytes>
d0042a58:	4b23      	ldr	r3, [pc, #140]	; (d0042ae8 <main+0xaf0>)
d0042a5a:	f893 3120 	ldrb.w	r3, [r3, #288]	; 0x120
d0042a5e:	e049      	b.n	d0042af4 <main+0xafc>
d0042a60:	00000000 	.word	0x00000000
d0042a64:	ff03070c 	.word	0xff03070c
d0042a68:	ffe2f1ec 	.word	0xffe2f1ec
d0042a6c:	ff697f84 	.word	0xff697f84
d0042a70:	ff0f1922 	.word	0xff0f1922
d0042a74:	ff202e3a 	.word	0xff202e3a
d0042a78:	ffff4c5c 	.word	0xffff4c5c
d0042a7c:	ffff9a34 	.word	0xffff9a34
d0042a80:	ffdae1d6 	.word	0xffdae1d6
d0042a84:	ff080c12 	.word	0xff080c12
d0042a88:	ff34d2cc 	.word	0xff34d2cc
d0042a8c:	ff4e9fff 	.word	0xff4e9fff
d0042a90:	ffffe049 	.word	0xffffe049
d0042a94:	ff5ce477 	.word	0xff5ce477
d0042a98:	ffff78aa 	.word	0xffff78aa
d0042a9c:	ffbebebe 	.word	0xffbebebe
d0042aa0:	ffa96cff 	.word	0xffa96cff
d0042aa4:	ffec5eda 	.word	0xffec5eda
d0042aa8:	ffdc7437 	.word	0xffdc7437
d0042aac:	ff845ed2 	.word	0xff845ed2
d0042ab0:	ffa2d748 	.word	0xffa2d748
d0042ab4:	ff3487b4 	.word	0xff3487b4
d0042ab8:	ff58cdf5 	.word	0xff58cdf5
d0042abc:	fff5f5f5 	.word	0xfff5f5f5
d0042ac0:	d0046308 	.word	0xd0046308
d0042ac4:	d0046780 	.word	0xd0046780
d0042ac8:	d00467a0 	.word	0xd00467a0
d0042acc:	d0046320 	.word	0xd0046320
d0042ad0:	ffffe876 	.word	0xffffe876
d0042ad4:	d0046bd0 	.word	0xd0046bd0
d0042ad8:	d00477d4 	.word	0xd00477d4
d0042adc:	d0046bc8 	.word	0xd0046bc8
d0042ae0:	d00477d0 	.word	0xd00477d0
d0042ae4:	d0046bcc 	.word	0xd0046bcc
d0042ae8:	d00479e8 	.word	0xd00479e8
d0042aec:	0007a120 	.word	0x0007a120
d0042af0:	d0046720 	.word	0xd0046720
d0042af4:	b11b      	cbz	r3, d0042afe <main+0xb06>
d0042af6:	2100      	movs	r1, #0
d0042af8:	4898      	ldr	r0, [pc, #608]	; (d0042d5c <main+0xd64>)
d0042afa:	f7fe fbed 	bl	d00412d8 <midi_player_update_us.part.0>
d0042afe:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
d0042b00:	2700      	movs	r7, #0
d0042b02:	6819      	ldr	r1, [r3, #0]
d0042b04:	9b08      	ldr	r3, [sp, #32]
d0042b06:	970e      	str	r7, [sp, #56]	; 0x38
d0042b08:	6818      	ldr	r0, [r3, #0]
d0042b0a:	f7fe ff6b 	bl	d00419e4 <midi_player_get_duration_ms>
d0042b0e:	9d06      	ldr	r5, [sp, #24]
d0042b10:	4606      	mov	r6, r0
d0042b12:	9010      	str	r0, [sp, #64]	; 0x40
d0042b14:	782b      	ldrb	r3, [r5, #0]
d0042b16:	786a      	ldrb	r2, [r5, #1]
d0042b18:	78a9      	ldrb	r1, [r5, #2]
d0042b1a:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0042b1e:	78ea      	ldrb	r2, [r5, #3]
d0042b20:	488f      	ldr	r0, [pc, #572]	; (d0042d60 <main+0xd68>)
d0042b22:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0042b26:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0042b2a:	68db      	ldr	r3, [r3, #12]
d0042b2c:	4798      	blx	r3
d0042b2e:	782b      	ldrb	r3, [r5, #0]
d0042b30:	786a      	ldrb	r2, [r5, #1]
d0042b32:	78a9      	ldrb	r1, [r5, #2]
d0042b34:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0042b38:	78ea      	ldrb	r2, [r5, #3]
d0042b3a:	488a      	ldr	r0, [pc, #552]	; (d0042d64 <main+0xd6c>)
d0042b3c:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0042b40:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0042b44:	6edb      	ldr	r3, [r3, #108]	; 0x6c
d0042b46:	689b      	ldr	r3, [r3, #8]
d0042b48:	4798      	blx	r3
d0042b4a:	782b      	ldrb	r3, [r5, #0]
d0042b4c:	786a      	ldrb	r2, [r5, #1]
d0042b4e:	21ef      	movs	r1, #239	; 0xef
d0042b50:	78ac      	ldrb	r4, [r5, #2]
d0042b52:	f644 601f 	movw	r0, #19999	; 0x4e1f
d0042b56:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0042b5a:	78ea      	ldrb	r2, [r5, #3]
d0042b5c:	ea43 4304 	orr.w	r3, r3, r4, lsl #16
d0042b60:	462c      	mov	r4, r5
d0042b62:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0042b66:	6edb      	ldr	r3, [r3, #108]	; 0x6c
d0042b68:	685b      	ldr	r3, [r3, #4]
d0042b6a:	4798      	blx	r3
d0042b6c:	782b      	ldrb	r3, [r5, #0]
d0042b6e:	786a      	ldrb	r2, [r5, #1]
d0042b70:	200b      	movs	r0, #11
d0042b72:	78a9      	ldrb	r1, [r5, #2]
d0042b74:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0042b78:	78ea      	ldrb	r2, [r5, #3]
d0042b7a:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0042b7e:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0042b82:	6edb      	ldr	r3, [r3, #108]	; 0x6c
d0042b84:	681b      	ldr	r3, [r3, #0]
d0042b86:	4798      	blx	r3
d0042b88:	7b2b      	ldrb	r3, [r5, #12]
d0042b8a:	7b6a      	ldrb	r2, [r5, #13]
d0042b8c:	7ba9      	ldrb	r1, [r5, #14]
d0042b8e:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0042b92:	7bea      	ldrb	r2, [r5, #15]
d0042b94:	4874      	ldr	r0, [pc, #464]	; (d0042d68 <main+0xd70>)
d0042b96:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0042b9a:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0042b9e:	681b      	ldr	r3, [r3, #0]
d0042ba0:	6a1b      	ldr	r3, [r3, #32]
d0042ba2:	4798      	blx	r3
d0042ba4:	7b2b      	ldrb	r3, [r5, #12]
d0042ba6:	7b6a      	ldrb	r2, [r5, #13]
d0042ba8:	7ba9      	ldrb	r1, [r5, #14]
d0042baa:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0042bae:	7bea      	ldrb	r2, [r5, #15]
d0042bb0:	4d6e      	ldr	r5, [pc, #440]	; (d0042d6c <main+0xd74>)
d0042bb2:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0042bb6:	6828      	ldr	r0, [r5, #0]
d0042bb8:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0042bbc:	681b      	ldr	r3, [r3, #0]
d0042bbe:	69db      	ldr	r3, [r3, #28]
d0042bc0:	4798      	blx	r3
d0042bc2:	7b23      	ldrb	r3, [r4, #12]
d0042bc4:	7b62      	ldrb	r2, [r4, #13]
d0042bc6:	7ba1      	ldrb	r1, [r4, #14]
d0042bc8:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0042bcc:	7be2      	ldrb	r2, [r4, #15]
d0042bce:	4c68      	ldr	r4, [pc, #416]	; (d0042d70 <main+0xd78>)
d0042bd0:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0042bd4:	6820      	ldr	r0, [r4, #0]
d0042bd6:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0042bda:	681b      	ldr	r3, [r3, #0]
d0042bdc:	699b      	ldr	r3, [r3, #24]
d0042bde:	4798      	blx	r3
d0042be0:	ee18 0a10 	vmov	r0, s16
d0042be4:	f000 fe1c 	bl	d0043820 <midi_translator_profile_name>
d0042be8:	f44f 727a 	mov.w	r2, #1000	; 0x3e8
d0042bec:	233c      	movs	r3, #60	; 0x3c
d0042bee:	ee08 0a90 	vmov	s17, r0
d0042bf2:	fbb6 f2f2 	udiv	r2, r6, r2
d0042bf6:	fbb2 f1f3 	udiv	r1, r2, r3
d0042bfa:	fb03 2311 	mls	r3, r3, r1, r2
d0042bfe:	9211      	str	r2, [sp, #68]	; 0x44
d0042c00:	9112      	str	r1, [sp, #72]	; 0x48
d0042c02:	9313      	str	r3, [sp, #76]	; 0x4c
d0042c04:	4b55      	ldr	r3, [pc, #340]	; (d0042d5c <main+0xd64>)
d0042c06:	f893 3120 	ldrb.w	r3, [r3, #288]	; 0x120
d0042c0a:	2b00      	cmp	r3, #0
d0042c0c:	f000 84e9 	beq.w	d00435e2 <main+0x15ea>
d0042c10:	9a06      	ldr	r2, [sp, #24]
d0042c12:	7813      	ldrb	r3, [r2, #0]
d0042c14:	4610      	mov	r0, r2
d0042c16:	4611      	mov	r1, r2
d0042c18:	7852      	ldrb	r2, [r2, #1]
d0042c1a:	7889      	ldrb	r1, [r1, #2]
d0042c1c:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0042c20:	78c2      	ldrb	r2, [r0, #3]
d0042c22:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0042c26:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0042c2a:	6a1b      	ldr	r3, [r3, #32]
d0042c2c:	4798      	blx	r3
d0042c2e:	f000 0302 	and.w	r3, r0, #2
d0042c32:	9314      	str	r3, [sp, #80]	; 0x50
d0042c34:	b117      	cbz	r7, d0042c3c <main+0xc44>
d0042c36:	2b00      	cmp	r3, #0
d0042c38:	f000 8524 	beq.w	d0043684 <main+0x168c>
d0042c3c:	4947      	ldr	r1, [pc, #284]	; (d0042d5c <main+0xd64>)
d0042c3e:	f44f 727a 	mov.w	r2, #1000	; 0x3e8
d0042c42:	2300      	movs	r3, #0
d0042c44:	e9d1 0146 	ldrd	r0, r1, [r1, #280]	; 0x118
d0042c48:	f001 fa06 	bl	d0044058 <__aeabi_uldivmod>
d0042c4c:	4a49      	ldr	r2, [pc, #292]	; (d0042d74 <main+0xd7c>)
d0042c4e:	6010      	str	r0, [r2, #0]
d0042c50:	9a10      	ldr	r2, [sp, #64]	; 0x40
d0042c52:	2a00      	cmp	r2, #0
d0042c54:	f000 849e 	beq.w	d0043594 <main+0x159c>
d0042c58:	2264      	movs	r2, #100	; 0x64
d0042c5a:	9910      	ldr	r1, [sp, #64]	; 0x40
d0042c5c:	fb02 f300 	mul.w	r3, r2, r0
d0042c60:	fbb3 f3f1 	udiv	r3, r3, r1
d0042c64:	4293      	cmp	r3, r2
d0042c66:	f200 8495 	bhi.w	d0043594 <main+0x159c>
d0042c6a:	4a43      	ldr	r2, [pc, #268]	; (d0042d78 <main+0xd80>)
d0042c6c:	6013      	str	r3, [r2, #0]
d0042c6e:	f44f 737a 	mov.w	r3, #1000	; 0x3e8
d0042c72:	4d42      	ldr	r5, [pc, #264]	; (d0042d7c <main+0xd84>)
d0042c74:	4942      	ldr	r1, [pc, #264]	; (d0042d80 <main+0xd88>)
d0042c76:	682a      	ldr	r2, [r5, #0]
d0042c78:	fbb0 f3f3 	udiv	r3, r0, r3
d0042c7c:	4293      	cmp	r3, r2
d0042c7e:	600b      	str	r3, [r1, #0]
d0042c80:	f000 848c 	beq.w	d004359c <main+0x15a4>
d0042c84:	223c      	movs	r2, #60	; 0x3c
d0042c86:	493f      	ldr	r1, [pc, #252]	; (d0042d84 <main+0xd8c>)
d0042c88:	602b      	str	r3, [r5, #0]
d0042c8a:	4d3f      	ldr	r5, [pc, #252]	; (d0042d88 <main+0xd90>)
d0042c8c:	4c3f      	ldr	r4, [pc, #252]	; (d0042d8c <main+0xd94>)
d0042c8e:	fbb3 f0f2 	udiv	r0, r3, r2
d0042c92:	fb02 3310 	mls	r3, r2, r0, r3
d0042c96:	4a3e      	ldr	r2, [pc, #248]	; (d0042d90 <main+0xd98>)
d0042c98:	6008      	str	r0, [r1, #0]
d0042c9a:	9811      	ldr	r0, [sp, #68]	; 0x44
d0042c9c:	6023      	str	r3, [r4, #0]
d0042c9e:	6028      	str	r0, [r5, #0]
d0042ca0:	9812      	ldr	r0, [sp, #72]	; 0x48
d0042ca2:	4b3c      	ldr	r3, [pc, #240]	; (d0042d94 <main+0xd9c>)
d0042ca4:	6010      	str	r0, [r2, #0]
d0042ca6:	9813      	ldr	r0, [sp, #76]	; 0x4c
d0042ca8:	6018      	str	r0, [r3, #0]
d0042caa:	681d      	ldr	r5, [r3, #0]
d0042cac:	a81c      	add	r0, sp, #112	; 0x70
d0042cae:	6813      	ldr	r3, [r2, #0]
d0042cb0:	e9cd 3500 	strd	r3, r5, [sp]
d0042cb4:	6823      	ldr	r3, [r4, #0]
d0042cb6:	f44f 7500 	mov.w	r5, #512	; 0x200
d0042cba:	680a      	ldr	r2, [r1, #0]
d0042cbc:	4936      	ldr	r1, [pc, #216]	; (d0042d98 <main+0xda0>)
d0042cbe:	f001 fd6b 	bl	d0044798 <siprintf>
d0042cc2:	f7ff f933 	bl	d0041f2c <vbl_counter>
d0042cc6:	4b25      	ldr	r3, [pc, #148]	; (d0042d5c <main+0xd64>)
d0042cc8:	f242 7010 	movw	r0, #10000	; 0x2710
d0042ccc:	2100      	movs	r1, #0
d0042cce:	f8d3 4114 	ldr.w	r4, [r3, #276]	; 0x114
d0042cd2:	f644 6220 	movw	r2, #20000	; 0x4e20
d0042cd6:	4b31      	ldr	r3, [pc, #196]	; (d0042d9c <main+0xda4>)
d0042cd8:	2c00      	cmp	r4, #0
d0042cda:	bf08      	it	eq
d0042cdc:	461c      	moveq	r4, r3
d0042cde:	2300      	movs	r3, #0
d0042ce0:	fbe5 0104 	umlal	r0, r1, r5, r4
d0042ce4:	f001 f9b8 	bl	d0044058 <__aeabi_uldivmod>
d0042ce8:	f5b0 3fa0 	cmp.w	r0, #81920	; 0x14000
d0042cec:	4b2c      	ldr	r3, [pc, #176]	; (d0042da0 <main+0xda8>)
d0042cee:	bf28      	it	cs
d0042cf0:	f44f 30a0 	movcs.w	r0, #81920	; 0x14000
d0042cf4:	492b      	ldr	r1, [pc, #172]	; (d0042da4 <main+0xdac>)
d0042cf6:	781a      	ldrb	r2, [r3, #0]
d0042cf8:	f5b0 6f80 	cmp.w	r0, #1024	; 0x400
d0042cfc:	f002 06ff 	and.w	r6, r2, #255	; 0xff
d0042d00:	bf38      	it	cc
d0042d02:	f44f 6080 	movcc.w	r0, #1024	; 0x400
d0042d06:	6008      	str	r0, [r1, #0]
d0042d08:	b11a      	cbz	r2, d0042d12 <main+0xd1a>
d0042d0a:	f04f 0200 	mov.w	r2, #0
d0042d0e:	2601      	movs	r6, #1
d0042d10:	701a      	strb	r2, [r3, #0]
d0042d12:	9906      	ldr	r1, [sp, #24]
d0042d14:	7b0b      	ldrb	r3, [r1, #12]
d0042d16:	4608      	mov	r0, r1
d0042d18:	7b4a      	ldrb	r2, [r1, #13]
d0042d1a:	460c      	mov	r4, r1
d0042d1c:	7b89      	ldrb	r1, [r1, #14]
d0042d1e:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0042d22:	7bc2      	ldrb	r2, [r0, #15]
d0042d24:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0042d28:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0042d2c:	681b      	ldr	r3, [r3, #0]
d0042d2e:	68db      	ldr	r3, [r3, #12]
d0042d30:	4798      	blx	r3
d0042d32:	4a1d      	ldr	r2, [pc, #116]	; (d0042da8 <main+0xdb0>)
d0042d34:	7813      	ldrb	r3, [r2, #0]
d0042d36:	f1c3 0301 	rsb	r3, r3, #1
d0042d3a:	b2db      	uxtb	r3, r3
d0042d3c:	7013      	strb	r3, [r2, #0]
d0042d3e:	2b00      	cmp	r3, #0
d0042d40:	f000 838d 	beq.w	d004345e <main+0x1466>
d0042d44:	7b23      	ldrb	r3, [r4, #12]
d0042d46:	7b62      	ldrb	r2, [r4, #13]
d0042d48:	4909      	ldr	r1, [pc, #36]	; (d0042d70 <main+0xd78>)
d0042d4a:	7ba0      	ldrb	r0, [r4, #14]
d0042d4c:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0042d50:	6809      	ldr	r1, [r1, #0]
d0042d52:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
d0042d56:	7be2      	ldrb	r2, [r4, #15]
d0042d58:	4804      	ldr	r0, [pc, #16]	; (d0042d6c <main+0xd74>)
d0042d5a:	e027      	b.n	d0042dac <main+0xdb4>
d0042d5c:	d00479e8 	.word	0xd00479e8
d0042d60:	d0045e44 	.word	0xd0045e44
d0042d64:	d00404e5 	.word	0xd00404e5
d0042d68:	d0046720 	.word	0xd0046720
d0042d6c:	d0046780 	.word	0xd0046780
d0042d70:	d00467a0 	.word	0xd00467a0
d0042d74:	d0046768 	.word	0xd0046768
d0042d78:	d0046bbc 	.word	0xd0046bbc
d0042d7c:	d00467b0 	.word	0xd00467b0
d0042d80:	d0046754 	.word	0xd0046754
d0042d84:	d004674c 	.word	0xd004674c
d0042d88:	d0046764 	.word	0xd0046764
d0042d8c:	d0046750 	.word	0xd0046750
d0042d90:	d004675c 	.word	0xd004675c
d0042d94:	d0046760 	.word	0xd0046760
d0042d98:	d0045e5c 	.word	0xd0045e5c
d0042d9c:	0007a120 	.word	0x0007a120
d0042da0:	d00477d4 	.word	0xd00477d4
d0042da4:	d0046bcc 	.word	0xd0046bcc
d0042da8:	d0046758 	.word	0xd0046758
d0042dac:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0042db0:	6800      	ldr	r0, [r0, #0]
d0042db2:	2402      	movs	r4, #2
d0042db4:	681b      	ldr	r3, [r3, #0]
d0042db6:	6a5b      	ldr	r3, [r3, #36]	; 0x24
d0042db8:	4798      	blx	r3
d0042dba:	9906      	ldr	r1, [sp, #24]
d0042dbc:	2000      	movs	r0, #0
d0042dbe:	7b0b      	ldrb	r3, [r1, #12]
d0042dc0:	460d      	mov	r5, r1
d0042dc2:	7b4a      	ldrb	r2, [r1, #13]
d0042dc4:	7b89      	ldrb	r1, [r1, #14]
d0042dc6:	462f      	mov	r7, r5
d0042dc8:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0042dcc:	7bea      	ldrb	r2, [r5, #15]
d0042dce:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0042dd2:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0042dd6:	685b      	ldr	r3, [r3, #4]
d0042dd8:	68db      	ldr	r3, [r3, #12]
d0042dda:	4798      	blx	r3
d0042ddc:	7b28      	ldrb	r0, [r5, #12]
d0042dde:	7b69      	ldrb	r1, [r5, #13]
d0042de0:	2320      	movs	r3, #32
d0042de2:	7bad      	ldrb	r5, [r5, #14]
d0042de4:	2260      	movs	r2, #96	; 0x60
d0042de6:	ea40 2001 	orr.w	r0, r0, r1, lsl #8
d0042dea:	9706      	str	r7, [sp, #24]
d0042dec:	7bff      	ldrb	r7, [r7, #15]
d0042dee:	2122      	movs	r1, #34	; 0x22
d0042df0:	ea40 4505 	orr.w	r5, r0, r5, lsl #16
d0042df4:	f44f 70bd 	mov.w	r0, #378	; 0x17a
d0042df8:	ea45 6507 	orr.w	r5, r5, r7, lsl #24
d0042dfc:	686d      	ldr	r5, [r5, #4]
d0042dfe:	686d      	ldr	r5, [r5, #4]
d0042e00:	47a8      	blx	r5
d0042e02:	9a06      	ldr	r2, [sp, #24]
d0042e04:	2004      	movs	r0, #4
d0042e06:	4615      	mov	r5, r2
d0042e08:	7b13      	ldrb	r3, [r2, #12]
d0042e0a:	4617      	mov	r7, r2
d0042e0c:	7b52      	ldrb	r2, [r2, #13]
d0042e0e:	7ba9      	ldrb	r1, [r5, #14]
d0042e10:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0042e14:	7bea      	ldrb	r2, [r5, #15]
d0042e16:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0042e1a:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0042e1e:	685b      	ldr	r3, [r3, #4]
d0042e20:	68db      	ldr	r3, [r3, #12]
d0042e22:	4798      	blx	r3
d0042e24:	7b28      	ldrb	r0, [r5, #12]
d0042e26:	7b69      	ldrb	r1, [r5, #13]
d0042e28:	2301      	movs	r3, #1
d0042e2a:	7bad      	ldrb	r5, [r5, #14]
d0042e2c:	aa1c      	add	r2, sp, #112	; 0x70
d0042e2e:	ea40 2001 	orr.w	r0, r0, r1, lsl #8
d0042e32:	9706      	str	r7, [sp, #24]
d0042e34:	7bff      	ldrb	r7, [r7, #15]
d0042e36:	2122      	movs	r1, #34	; 0x22
d0042e38:	ea40 4505 	orr.w	r5, r0, r5, lsl #16
d0042e3c:	f44f 70c1 	mov.w	r0, #386	; 0x182
d0042e40:	ea45 6507 	orr.w	r5, r5, r7, lsl #24
d0042e44:	686d      	ldr	r5, [r5, #4]
d0042e46:	9400      	str	r4, [sp, #0]
d0042e48:	6b2d      	ldr	r5, [r5, #48]	; 0x30
d0042e4a:	47a8      	blx	r5
d0042e4c:	9a06      	ldr	r2, [sp, #24]
d0042e4e:	2005      	movs	r0, #5
d0042e50:	4615      	mov	r5, r2
d0042e52:	7b13      	ldrb	r3, [r2, #12]
d0042e54:	4617      	mov	r7, r2
d0042e56:	7b52      	ldrb	r2, [r2, #13]
d0042e58:	7ba9      	ldrb	r1, [r5, #14]
d0042e5a:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0042e5e:	7bea      	ldrb	r2, [r5, #15]
d0042e60:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0042e64:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0042e68:	685b      	ldr	r3, [r3, #4]
d0042e6a:	68db      	ldr	r3, [r3, #12]
d0042e6c:	4798      	blx	r3
d0042e6e:	7b28      	ldrb	r0, [r5, #12]
d0042e70:	7b69      	ldrb	r1, [r5, #13]
d0042e72:	2301      	movs	r3, #1
d0042e74:	7bad      	ldrb	r5, [r5, #14]
d0042e76:	ee18 2a90 	vmov	r2, s17
d0042e7a:	ea40 2001 	orr.w	r0, r0, r1, lsl #8
d0042e7e:	7bff      	ldrb	r7, [r7, #15]
d0042e80:	2132      	movs	r1, #50	; 0x32
d0042e82:	ea40 4505 	orr.w	r5, r0, r5, lsl #16
d0042e86:	f44f 70c1 	mov.w	r0, #386	; 0x182
d0042e8a:	ea45 6507 	orr.w	r5, r5, r7, lsl #24
d0042e8e:	686d      	ldr	r5, [r5, #4]
d0042e90:	9400      	str	r4, [sp, #0]
d0042e92:	6b2c      	ldr	r4, [r5, #48]	; 0x30
d0042e94:	47a0      	blx	r4
d0042e96:	2e00      	cmp	r6, #0
d0042e98:	f000 82b6 	beq.w	d0043408 <main+0x1410>
d0042e9c:	9b0e      	ldr	r3, [sp, #56]	; 0x38
d0042e9e:	f503 7091 	add.w	r0, r3, #290	; 0x122
d0042ea2:	4b99      	ldr	r3, [pc, #612]	; (d0043108 <main+0x1110>)
d0042ea4:	f5b0 7fa0 	cmp.w	r0, #320	; 0x140
d0042ea8:	681b      	ldr	r3, [r3, #0]
d0042eaa:	9005      	str	r0, [sp, #20]
d0042eac:	9302      	str	r3, [sp, #8]
d0042eae:	f2c0 83e7 	blt.w	d0043680 <main+0x1688>
d0042eb2:	f5a0 70a0 	sub.w	r0, r0, #320	; 0x140
d0042eb6:	f5b0 7fa0 	cmp.w	r0, #320	; 0x140
d0042eba:	dafa      	bge.n	d0042eb2 <main+0xeba>
d0042ebc:	b280      	uxth	r0, r0
d0042ebe:	2201      	movs	r2, #1
d0042ec0:	2102      	movs	r1, #2
d0042ec2:	f04f 0800 	mov.w	r8, #0
d0042ec6:	f7fe f879 	bl	d0040fbc <visualizer_back_rect_logical.constprop.0>
d0042eca:	9f05      	ldr	r7, [sp, #20]
d0042ecc:	ea4f 15d8 	mov.w	r5, r8, lsr #7
d0042ed0:	f5b7 7fa0 	cmp.w	r7, #320	; 0x140
d0042ed4:	46ba      	mov	sl, r7
d0042ed6:	f105 0508 	add.w	r5, r5, #8
d0042eda:	b2ad      	uxth	r5, r5
d0042edc:	db04      	blt.n	d0042ee8 <main+0xef0>
d0042ede:	f5aa 7aa0 	sub.w	sl, sl, #320	; 0x140
d0042ee2:	f5ba 7fa0 	cmp.w	sl, #320	; 0x140
d0042ee6:	dafa      	bge.n	d0042ede <main+0xee6>
d0042ee8:	fa1f fa8a 	uxth.w	sl, sl
d0042eec:	2402      	movs	r4, #2
d0042eee:	f5ca 73a0 	rsb	r3, sl, #320	; 0x140
d0042ef2:	f8d9 2000 	ldr.w	r2, [r9]
d0042ef6:	2103      	movs	r1, #3
d0042ef8:	b29b      	uxth	r3, r3
d0042efa:	42a3      	cmp	r3, r4
d0042efc:	bf28      	it	cs
d0042efe:	4623      	movcs	r3, r4
d0042f00:	469b      	mov	fp, r3
d0042f02:	b16a      	cbz	r2, d0042f20 <main+0xf28>
d0042f04:	f8d9 0000 	ldr.w	r0, [r9]
d0042f08:	f10b 32ff 	add.w	r2, fp, #4294967295	; 0xffffffff
d0042f0c:	f8b9 3008 	ldrh.w	r3, [r9, #8]
d0042f10:	b292      	uxth	r2, r2
d0042f12:	b29b      	uxth	r3, r3
d0042f14:	3201      	adds	r2, #1
d0042f16:	fb03 a305 	mla	r3, r3, r5, sl
d0042f1a:	4418      	add	r0, r3
d0042f1c:	f001 fa2e 	bl	d004437c <memset>
d0042f20:	f50a 7aa0 	add.w	sl, sl, #320	; 0x140
d0042f24:	f8d9 3000 	ldr.w	r3, [r9]
d0042f28:	fa1f fa8a 	uxth.w	sl, sl
d0042f2c:	b1bb      	cbz	r3, d0042f5e <main+0xf66>
d0042f2e:	eb0b 020a 	add.w	r2, fp, sl
d0042f32:	f5ca 7120 	rsb	r1, sl, #640	; 0x280
d0042f36:	465b      	mov	r3, fp
d0042f38:	f5b2 7f20 	cmp.w	r2, #640	; 0x280
d0042f3c:	d900      	bls.n	d0042f40 <main+0xf48>
d0042f3e:	b28b      	uxth	r3, r1
d0042f40:	f8d9 0000 	ldr.w	r0, [r9]
d0042f44:	3b01      	subs	r3, #1
d0042f46:	f8b9 c008 	ldrh.w	ip, [r9, #8]
d0042f4a:	2103      	movs	r1, #3
d0042f4c:	b29a      	uxth	r2, r3
d0042f4e:	fa1f fc8c 	uxth.w	ip, ip
d0042f52:	3201      	adds	r2, #1
d0042f54:	fb0c aa05 	mla	sl, ip, r5, sl
d0042f58:	4450      	add	r0, sl
d0042f5a:	f001 fa0f 	bl	d004437c <memset>
d0042f5e:	eba4 040b 	sub.w	r4, r4, fp
d0042f62:	f04f 0a00 	mov.w	sl, #0
d0042f66:	b2a4      	uxth	r4, r4
d0042f68:	2c00      	cmp	r4, #0
d0042f6a:	d1c0      	bne.n	d0042eee <main+0xef6>
d0042f6c:	f508 58ae 	add.w	r8, r8, #5568	; 0x15c0
d0042f70:	f64e 7340 	movw	r3, #61248	; 0xef40
d0042f74:	4598      	cmp	r8, r3
d0042f76:	d1a9      	bne.n	d0042ecc <main+0xed4>
d0042f78:	f44f 78e8 	mov.w	r8, #464	; 0x1d0
d0042f7c:	f1aa 3a55 	sub.w	sl, sl, #1431655765	; 0x55555555
d0042f80:	fbaa 2306 	umull	r2, r3, sl, r6
d0042f84:	08db      	lsrs	r3, r3, #3
d0042f86:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d0042f8a:	eba6 0383 	sub.w	r3, r6, r3, lsl #2
d0042f8e:	b2db      	uxtb	r3, r3
d0042f90:	3b01      	subs	r3, #1
d0042f92:	2b09      	cmp	r3, #9
d0042f94:	f200 8112 	bhi.w	d00431bc <main+0x11c4>
d0042f98:	e8df f013 	tbh	[pc, r3, lsl #1]
d0042f9c:	011000a6 	.word	0x011000a6
d0042fa0:	011000a6 	.word	0x011000a6
d0042fa4:	00a60110 	.word	0x00a60110
d0042fa8:	00a60110 	.word	0x00a60110
d0042fac:	00a60110 	.word	0x00a60110
d0042fb0:	4856      	ldr	r0, [pc, #344]	; (d004310c <main+0x1114>)
d0042fb2:	f001 fb1b 	bl	d00445ec <puts>
d0042fb6:	f7fd faa3 	bl	d0040500 <midi_send_channel_panic>
d0042fba:	4b55      	ldr	r3, [pc, #340]	; (d0043110 <main+0x1118>)
d0042fbc:	781b      	ldrb	r3, [r3, #0]
d0042fbe:	2b00      	cmp	r3, #0
d0042fc0:	f43f a8ec 	beq.w	d004219c <main+0x1a4>
d0042fc4:	f7fd fb3c 	bl	d0040640 <app_shutdown.part.0>
d0042fc8:	f7ff b8e8 	b.w	d004219c <main+0x1a4>
d0042fcc:	4b51      	ldr	r3, [pc, #324]	; (d0043114 <main+0x111c>)
d0042fce:	9306      	str	r3, [sp, #24]
d0042fd0:	f7ff bb11 	b.w	d00425f6 <main+0x5fe>
d0042fd4:	f89c 3001 	ldrb.w	r3, [ip, #1]
d0042fd8:	2b54      	cmp	r3, #84	; 0x54
d0042fda:	f47f a968 	bne.w	d00422ae <main+0x2b6>
d0042fde:	f89c 3002 	ldrb.w	r3, [ip, #2]
d0042fe2:	2b68      	cmp	r3, #104	; 0x68
d0042fe4:	f47f a963 	bne.w	d00422ae <main+0x2b6>
d0042fe8:	f89c 3003 	ldrb.w	r3, [ip, #3]
d0042fec:	2b64      	cmp	r3, #100	; 0x64
d0042fee:	f47f a95e 	bne.w	d00422ae <main+0x2b6>
d0042ff2:	4f49      	ldr	r7, [pc, #292]	; (d0043118 <main+0x1120>)
d0042ff4:	683b      	ldr	r3, [r7, #0]
d0042ff6:	ba1b      	rev	r3, r3
d0042ff8:	2b05      	cmp	r3, #5
d0042ffa:	f67f a958 	bls.w	d00422ae <main+0x2b6>
d0042ffe:	f1a1 0008 	sub.w	r0, r1, #8
d0043002:	4283      	cmp	r3, r0
d0043004:	f63f a953 	bhi.w	d00422ae <main+0x2b6>
d0043008:	f89c 000a 	ldrb.w	r0, [ip, #10]
d004300c:	f103 0508 	add.w	r5, r3, #8
d0043010:	f89c e00b 	ldrb.w	lr, [ip, #11]
d0043014:	46b8      	mov	r8, r7
d0043016:	f8df 9120 	ldr.w	r9, [pc, #288]	; d0043138 <main+0x1140>
d004301a:	ea4e 2e00 	orr.w	lr, lr, r0, lsl #8
d004301e:	f8df a11c 	ldr.w	sl, [pc, #284]	; d004313c <main+0x1144>
d0043022:	f8df b11c 	ldr.w	fp, [pc, #284]	; d0043140 <main+0x1148>
d0043026:	f105 0308 	add.w	r3, r5, #8
d004302a:	f105 4050 	add.w	r0, r5, #3489660928	; 0xd0000000
d004302e:	4299      	cmp	r1, r3
d0043030:	d32c      	bcc.n	d004308c <main+0x1094>
d0043032:	4596      	cmp	lr, r2
d0043034:	d92a      	bls.n	d004308c <main+0x1094>
d0043036:	f815 3009 	ldrb.w	r3, [r5, r9]
d004303a:	f815 7008 	ldrb.w	r7, [r5, r8]
d004303e:	041b      	lsls	r3, r3, #16
d0043040:	f815 c00a 	ldrb.w	ip, [r5, sl]
d0043044:	ea43 6307 	orr.w	r3, r3, r7, lsl #24
d0043048:	f815 700b 	ldrb.w	r7, [r5, fp]
d004304c:	ea43 030c 	orr.w	r3, r3, ip
d0043050:	ea43 2307 	orr.w	r3, r3, r7, lsl #8
d0043054:	3308      	adds	r3, #8
d0043056:	195b      	adds	r3, r3, r5
d0043058:	f4bf a929 	bcs.w	d00422ae <main+0x2b6>
d004305c:	4299      	cmp	r1, r3
d004305e:	f4ff a926 	bcc.w	d00422ae <main+0x2b6>
d0043062:	7800      	ldrb	r0, [r0, #0]
d0043064:	284d      	cmp	r0, #77	; 0x4d
d0043066:	d001      	beq.n	d004306c <main+0x1074>
d0043068:	461d      	mov	r5, r3
d004306a:	e7dc      	b.n	d0043026 <main+0x102e>
d004306c:	482b      	ldr	r0, [pc, #172]	; (d004311c <main+0x1124>)
d004306e:	5c28      	ldrb	r0, [r5, r0]
d0043070:	2854      	cmp	r0, #84	; 0x54
d0043072:	d1f9      	bne.n	d0043068 <main+0x1070>
d0043074:	482a      	ldr	r0, [pc, #168]	; (d0043120 <main+0x1128>)
d0043076:	5c28      	ldrb	r0, [r5, r0]
d0043078:	2872      	cmp	r0, #114	; 0x72
d004307a:	d1f5      	bne.n	d0043068 <main+0x1070>
d004307c:	4829      	ldr	r0, [pc, #164]	; (d0043124 <main+0x112c>)
d004307e:	5c28      	ldrb	r0, [r5, r0]
d0043080:	286b      	cmp	r0, #107	; 0x6b
d0043082:	d1f1      	bne.n	d0043068 <main+0x1070>
d0043084:	3201      	adds	r2, #1
d0043086:	461d      	mov	r5, r3
d0043088:	b292      	uxth	r2, r2
d004308a:	e7cc      	b.n	d0043026 <main+0x102e>
d004308c:	f1be 0f00 	cmp.w	lr, #0
d0043090:	f43f a90d 	beq.w	d00422ae <main+0x2b6>
d0043094:	4596      	cmp	lr, r2
d0043096:	f47f a90a 	bne.w	d00422ae <main+0x2b6>
d004309a:	4b23      	ldr	r3, [pc, #140]	; (d0043128 <main+0x1130>)
d004309c:	6818      	ldr	r0, [r3, #0]
d004309e:	9308      	str	r3, [sp, #32]
d00430a0:	4b22      	ldr	r3, [pc, #136]	; (d004312c <main+0x1134>)
d00430a2:	9309      	str	r3, [sp, #36]	; 0x24
d00430a4:	b108      	cbz	r0, d00430aa <main+0x10b2>
d00430a6:	781b      	ldrb	r3, [r3, #0]
d00430a8:	b96b      	cbnz	r3, d00430c6 <main+0x10ce>
d00430aa:	f04f 4250 	mov.w	r2, #3489660928	; 0xd0000000
d00430ae:	9808      	ldr	r0, [sp, #32]
d00430b0:	2300      	movs	r3, #0
d00430b2:	491f      	ldr	r1, [pc, #124]	; (d0043130 <main+0x1138>)
d00430b4:	6002      	str	r2, [r0, #0]
d00430b6:	9a09      	ldr	r2, [sp, #36]	; 0x24
d00430b8:	910f      	str	r1, [sp, #60]	; 0x3c
d00430ba:	7013      	strb	r3, [r2, #0]
d00430bc:	4b15      	ldr	r3, [pc, #84]	; (d0043114 <main+0x111c>)
d00430be:	600d      	str	r5, [r1, #0]
d00430c0:	9306      	str	r3, [sp, #24]
d00430c2:	f7ff baed 	b.w	d00426a0 <main+0x6a8>
d00430c6:	f001 f951 	bl	d004436c <free>
d00430ca:	e7ee      	b.n	d00430aa <main+0x10b2>
d00430cc:	f001 f94e 	bl	d004436c <free>
d00430d0:	f7ff badc 	b.w	d004268c <main+0x694>
d00430d4:	f001 f94a 	bl	d004436c <free>
d00430d8:	f7ff bb2e 	b.w	d0042738 <main+0x740>
d00430dc:	4621      	mov	r1, r4
d00430de:	4815      	ldr	r0, [pc, #84]	; (d0043134 <main+0x113c>)
d00430e0:	f001 f9fe 	bl	d00444e0 <iprintf>
d00430e4:	f7ff bb0e 	b.w	d0042704 <main+0x70c>
d00430e8:	ea4f 17d8 	mov.w	r7, r8, lsr #7
d00430ec:	9d05      	ldr	r5, [sp, #20]
d00430ee:	3708      	adds	r7, #8
d00430f0:	f5b5 7fa0 	cmp.w	r5, #320	; 0x140
d00430f4:	b2bf      	uxth	r7, r7
d00430f6:	db04      	blt.n	d0043102 <main+0x110a>
d00430f8:	f5a5 75a0 	sub.w	r5, r5, #320	; 0x140
d00430fc:	f5b5 7fa0 	cmp.w	r5, #320	; 0x140
d0043100:	dafa      	bge.n	d00430f8 <main+0x1100>
d0043102:	b2ad      	uxth	r5, r5
d0043104:	2402      	movs	r4, #2
d0043106:	e01e      	b.n	d0043146 <main+0x114e>
d0043108:	d00477d0 	.word	0xd00477d0
d004310c:	d0045e18 	.word	0xd0045e18
d0043110:	d0046308 	.word	0xd0046308
d0043114:	2001f000 	.word	0x2001f000
d0043118:	d0000004 	.word	0xd0000004
d004311c:	d0000001 	.word	0xd0000001
d0043120:	d0000002 	.word	0xd0000002
d0043124:	d0000003 	.word	0xd0000003
d0043128:	d00467a4 	.word	0xd00467a4
d004312c:	d00467a8 	.word	0xd00467a8
d0043130:	d00467ac 	.word	0xd00467ac
d0043134:	d0045dec 	.word	0xd0045dec
d0043138:	d0000005 	.word	0xd0000005
d004313c:	d0000007 	.word	0xd0000007
d0043140:	d0000006 	.word	0xd0000006
d0043144:	2500      	movs	r5, #0
d0043146:	f5c5 73a0 	rsb	r3, r5, #320	; 0x140
d004314a:	f8d9 2000 	ldr.w	r2, [r9]
d004314e:	b29b      	uxth	r3, r3
d0043150:	42a3      	cmp	r3, r4
d0043152:	bf28      	it	cs
d0043154:	4623      	movcs	r3, r4
d0043156:	469b      	mov	fp, r3
d0043158:	b16a      	cbz	r2, d0043176 <main+0x117e>
d004315a:	f8d9 0000 	ldr.w	r0, [r9]
d004315e:	1e5a      	subs	r2, r3, #1
d0043160:	f8b9 3008 	ldrh.w	r3, [r9, #8]
d0043164:	2102      	movs	r1, #2
d0043166:	b292      	uxth	r2, r2
d0043168:	b29b      	uxth	r3, r3
d004316a:	3201      	adds	r2, #1
d004316c:	fb03 5307 	mla	r3, r3, r7, r5
d0043170:	4418      	add	r0, r3
d0043172:	f001 f903 	bl	d004437c <memset>
d0043176:	f8d9 3000 	ldr.w	r3, [r9]
d004317a:	b1d3      	cbz	r3, d00431b2 <main+0x11ba>
d004317c:	f505 75a0 	add.w	r5, r5, #320	; 0x140
d0043180:	b2ad      	uxth	r5, r5
d0043182:	eb0b 0305 	add.w	r3, fp, r5
d0043186:	f5b3 7f20 	cmp.w	r3, #640	; 0x280
d004318a:	f240 80f8 	bls.w	d004337e <main+0x1386>
d004318e:	f5c5 7320 	rsb	r3, r5, #640	; 0x280
d0043192:	b29b      	uxth	r3, r3
d0043194:	f8d9 0000 	ldr.w	r0, [r9]
d0043198:	3b01      	subs	r3, #1
d004319a:	f8b9 c008 	ldrh.w	ip, [r9, #8]
d004319e:	2102      	movs	r1, #2
d00431a0:	b29a      	uxth	r2, r3
d00431a2:	fa1f f38c 	uxth.w	r3, ip
d00431a6:	3201      	adds	r2, #1
d00431a8:	fb03 5507 	mla	r5, r3, r7, r5
d00431ac:	4428      	add	r0, r5
d00431ae:	f001 f8e5 	bl	d004437c <memset>
d00431b2:	eba4 040b 	sub.w	r4, r4, fp
d00431b6:	b2a4      	uxth	r4, r4
d00431b8:	2c00      	cmp	r4, #0
d00431ba:	d1c3      	bne.n	d0043144 <main+0x114c>
d00431bc:	3601      	adds	r6, #1
d00431be:	f508 78e8 	add.w	r8, r8, #464	; 0x1d0
d00431c2:	b2f6      	uxtb	r6, r6
d00431c4:	2e80      	cmp	r6, #128	; 0x80
d00431c6:	f47f aedb 	bne.w	d0042f80 <main+0xf88>
d00431ca:	9b02      	ldr	r3, [sp, #8]
d00431cc:	f8dd 8014 	ldr.w	r8, [sp, #20]
d00431d0:	3302      	adds	r3, #2
d00431d2:	f8df b2c0 	ldr.w	fp, [pc, #704]	; d0043494 <main+0x149c>
d00431d6:	f8df a2c0 	ldr.w	sl, [pc, #704]	; d0043498 <main+0x14a0>
d00431da:	9c06      	ldr	r4, [sp, #24]
d00431dc:	9303      	str	r3, [sp, #12]
d00431de:	4ba7      	ldr	r3, [pc, #668]	; (d004347c <main+0x1484>)
d00431e0:	681e      	ldr	r6, [r3, #0]
d00431e2:	9b02      	ldr	r3, [sp, #8]
d00431e4:	2e00      	cmp	r6, #0
d00431e6:	ea4f 2503 	mov.w	r5, r3, lsl #8
d00431ea:	bf08      	it	eq
d00431ec:	f44f 5680 	moveq.w	r6, #4096	; 0x1000
d00431f0:	0e1f      	lsrs	r7, r3, #24
d00431f2:	f115 33ff 	adds.w	r3, r5, #4294967295	; 0xffffffff
d00431f6:	4632      	mov	r2, r6
d00431f8:	930a      	str	r3, [sp, #40]	; 0x28
d00431fa:	f147 33ff 	adc.w	r3, r7, #4294967295	; 0xffffffff
d00431fe:	930b      	str	r3, [sp, #44]	; 0x2c
d0043200:	2300      	movs	r3, #0
d0043202:	e9dd 010a 	ldrd	r0, r1, [sp, #40]	; 0x28
d0043206:	1980      	adds	r0, r0, r6
d0043208:	f141 0100 	adc.w	r1, r1, #0
d004320c:	f000 ff24 	bl	d0044058 <__aeabi_uldivmod>
d0043210:	f515 7380 	adds.w	r3, r5, #256	; 0x100
d0043214:	460a      	mov	r2, r1
d0043216:	930c      	str	r3, [sp, #48]	; 0x30
d0043218:	f147 0100 	adc.w	r1, r7, #0
d004321c:	4603      	mov	r3, r0
d004321e:	910d      	str	r1, [sp, #52]	; 0x34
d0043220:	fba6 0103 	umull	r0, r1, r6, r3
d0043224:	fb06 1102 	mla	r1, r6, r2, r1
d0043228:	e9dd 560c 	ldrd	r5, r6, [sp, #48]	; 0x30
d004322c:	42b1      	cmp	r1, r6
d004322e:	bf08      	it	eq
d0043230:	42a8      	cmpeq	r0, r5
d0043232:	d21a      	bcs.n	d004326a <main+0x1272>
d0043234:	f5b8 7fa0 	cmp.w	r8, #320	; 0x140
d0043238:	4645      	mov	r5, r8
d004323a:	f2c0 81b5 	blt.w	d00435a8 <main+0x15b0>
d004323e:	4640      	mov	r0, r8
d0043240:	f5a0 70a0 	sub.w	r0, r0, #320	; 0x140
d0043244:	f5b0 7fa0 	cmp.w	r0, #320	; 0x140
d0043248:	dafa      	bge.n	d0043240 <main+0x1248>
d004324a:	f003 0201 	and.w	r2, r3, #1
d004324e:	b280      	uxth	r0, r0
d0043250:	2101      	movs	r1, #1
d0043252:	9304      	str	r3, [sp, #16]
d0043254:	f1c2 0203 	rsb	r2, r2, #3
d0043258:	b2d2      	uxtb	r2, r2
d004325a:	f7fd feaf 	bl	d0040fbc <visualizer_back_rect_logical.constprop.0>
d004325e:	9b04      	ldr	r3, [sp, #16]
d0043260:	f003 0203 	and.w	r2, r3, #3
d0043264:	2a00      	cmp	r2, #0
d0043266:	f000 811b 	beq.w	d00434a0 <main+0x14a8>
d004326a:	9b02      	ldr	r3, [sp, #8]
d004326c:	f108 0801 	add.w	r8, r8, #1
d0043270:	9a03      	ldr	r2, [sp, #12]
d0043272:	3301      	adds	r3, #1
d0043274:	429a      	cmp	r2, r3
d0043276:	9302      	str	r3, [sp, #8]
d0043278:	d1b1      	bne.n	d00431de <main+0x11e6>
d004327a:	f8df a220 	ldr.w	sl, [pc, #544]	; d004349c <main+0x14a4>
d004327e:	f8cd a00c 	str.w	sl, [sp, #12]
d0043282:	f8cd a054 	str.w	sl, [sp, #84]	; 0x54
d0043286:	e006      	b.n	d0043296 <main+0x129e>
d0043288:	9b03      	ldr	r3, [sp, #12]
d004328a:	4a7d      	ldr	r2, [pc, #500]	; (d0043480 <main+0x1488>)
d004328c:	3310      	adds	r3, #16
d004328e:	4293      	cmp	r3, r2
d0043290:	9303      	str	r3, [sp, #12]
d0043292:	f000 809b 	beq.w	d00433cc <main+0x13d4>
d0043296:	9b03      	ldr	r3, [sp, #12]
d0043298:	7b1b      	ldrb	r3, [r3, #12]
d004329a:	2b00      	cmp	r3, #0
d004329c:	d0f4      	beq.n	d0043288 <main+0x1290>
d004329e:	9a03      	ldr	r2, [sp, #12]
d00432a0:	7ad3      	ldrb	r3, [r2, #11]
d00432a2:	2b00      	cmp	r3, #0
d00432a4:	d0f0      	beq.n	d0043288 <main+0x1290>
d00432a6:	7a13      	ldrb	r3, [r2, #8]
d00432a8:	f892 8009 	ldrb.w	r8, [r2, #9]
d00432ac:	f44f 72e8 	mov.w	r2, #464	; 0x1d0
d00432b0:	9c05      	ldr	r4, [sp, #20]
d00432b2:	fb02 f303 	mul.w	r3, r2, r3
d00432b6:	f108 0820 	add.w	r8, r8, #32
d00432ba:	f5b4 7fa0 	cmp.w	r4, #320	; 0x140
d00432be:	ea4f 13d3 	mov.w	r3, r3, lsr #7
d00432c2:	fa5f f888 	uxtb.w	r8, r8
d00432c6:	f103 0208 	add.w	r2, r3, #8
d00432ca:	9204      	str	r2, [sp, #16]
d00432cc:	9207      	str	r2, [sp, #28]
d00432ce:	db04      	blt.n	d00432da <main+0x12e2>
d00432d0:	f5a4 74a0 	sub.w	r4, r4, #320	; 0x140
d00432d4:	f5b4 7fa0 	cmp.w	r4, #320	; 0x140
d00432d8:	dafa      	bge.n	d00432d0 <main+0x12d8>
d00432da:	9b04      	ldr	r3, [sp, #16]
d00432dc:	b2a4      	uxth	r4, r4
d00432de:	2502      	movs	r5, #2
d00432e0:	f5b3 7fee 	cmp.w	r3, #476	; 0x1dc
d00432e4:	f5c3 73f0 	rsb	r3, r3, #480	; 0x1e0
d00432e8:	bf94      	ite	ls
d00432ea:	2704      	movls	r7, #4
d00432ec:	461f      	movhi	r7, r3
d00432ee:	e00b      	b.n	d0043308 <main+0x1310>
d00432f0:	9b04      	ldr	r3, [sp, #16]
d00432f2:	f5b3 7ff0 	cmp.w	r3, #480	; 0x1e0
d00432f6:	d344      	bcc.n	d0043382 <main+0x138a>
d00432f8:	f8d9 3000 	ldr.w	r3, [r9]
d00432fc:	9b02      	ldr	r3, [sp, #8]
d00432fe:	1aed      	subs	r5, r5, r3
d0043300:	b2ad      	uxth	r5, r5
d0043302:	2d00      	cmp	r5, #0
d0043304:	d0c0      	beq.n	d0043288 <main+0x1290>
d0043306:	2400      	movs	r4, #0
d0043308:	f5c4 73a0 	rsb	r3, r4, #320	; 0x140
d004330c:	f8d9 2000 	ldr.w	r2, [r9]
d0043310:	b29b      	uxth	r3, r3
d0043312:	42ab      	cmp	r3, r5
d0043314:	bf28      	it	cs
d0043316:	462b      	movcs	r3, r5
d0043318:	9302      	str	r3, [sp, #8]
d004331a:	2a00      	cmp	r2, #0
d004331c:	d1e8      	bne.n	d00432f0 <main+0x12f8>
d004331e:	f8d9 3000 	ldr.w	r3, [r9]
d0043322:	2b00      	cmp	r3, #0
d0043324:	d0ea      	beq.n	d00432fc <main+0x1304>
d0043326:	9b04      	ldr	r3, [sp, #16]
d0043328:	f5b3 7ff0 	cmp.w	r3, #480	; 0x1e0
d004332c:	d2e6      	bcs.n	d00432fc <main+0x1304>
d004332e:	f504 72a0 	add.w	r2, r4, #320	; 0x140
d0043332:	9b02      	ldr	r3, [sp, #8]
d0043334:	b292      	uxth	r2, r2
d0043336:	4413      	add	r3, r2
d0043338:	f5b3 7f20 	cmp.w	r3, #640	; 0x280
d004333c:	d943      	bls.n	d00433c6 <main+0x13ce>
d004333e:	f5c2 7a20 	rsb	sl, r2, #640	; 0x280
d0043342:	fa1f fa8a 	uxth.w	sl, sl
d0043346:	f8d9 3000 	ldr.w	r3, [r9]
d004334a:	f10a 3aff 	add.w	sl, sl, #4294967295	; 0xffffffff
d004334e:	f8b9 6008 	ldrh.w	r6, [r9, #8]
d0043352:	2400      	movs	r4, #0
d0043354:	9904      	ldr	r1, [sp, #16]
d0043356:	fa1f fa8a 	uxth.w	sl, sl
d004335a:	b2b6      	uxth	r6, r6
d004335c:	f10a 0a01 	add.w	sl, sl, #1
d0043360:	fb06 2201 	mla	r2, r6, r1, r2
d0043364:	4413      	add	r3, r2
d0043366:	3401      	adds	r4, #1
d0043368:	4618      	mov	r0, r3
d004336a:	4652      	mov	r2, sl
d004336c:	4641      	mov	r1, r8
d004336e:	f001 f805 	bl	d004437c <memset>
d0043372:	4603      	mov	r3, r0
d0043374:	b220      	sxth	r0, r4
d0043376:	4433      	add	r3, r6
d0043378:	42b8      	cmp	r0, r7
d004337a:	dbf4      	blt.n	d0043366 <main+0x136e>
d004337c:	e7be      	b.n	d00432fc <main+0x1304>
d004337e:	465b      	mov	r3, fp
d0043380:	e708      	b.n	d0043194 <main+0x119c>
d0043382:	f8d9 3000 	ldr.w	r3, [r9]
d0043386:	2600      	movs	r6, #0
d0043388:	9a02      	ldr	r2, [sp, #8]
d004338a:	f8b9 a008 	ldrh.w	sl, [r9, #8]
d004338e:	f102 3bff 	add.w	fp, r2, #4294967295	; 0xffffffff
d0043392:	9a07      	ldr	r2, [sp, #28]
d0043394:	fa1f fa8a 	uxth.w	sl, sl
d0043398:	fa1f fb8b 	uxth.w	fp, fp
d004339c:	fb0a 4202 	mla	r2, sl, r2, r4
d00433a0:	f10b 0b01 	add.w	fp, fp, #1
d00433a4:	4413      	add	r3, r2
d00433a6:	3601      	adds	r6, #1
d00433a8:	4618      	mov	r0, r3
d00433aa:	465a      	mov	r2, fp
d00433ac:	4641      	mov	r1, r8
d00433ae:	f000 ffe5 	bl	d004437c <memset>
d00433b2:	4603      	mov	r3, r0
d00433b4:	b230      	sxth	r0, r6
d00433b6:	4453      	add	r3, sl
d00433b8:	42b8      	cmp	r0, r7
d00433ba:	dbf4      	blt.n	d00433a6 <main+0x13ae>
d00433bc:	f8d9 3000 	ldr.w	r3, [r9]
d00433c0:	2b00      	cmp	r3, #0
d00433c2:	d1b4      	bne.n	d004332e <main+0x1336>
d00433c4:	e79a      	b.n	d00432fc <main+0x1304>
d00433c6:	f8dd a008 	ldr.w	sl, [sp, #8]
d00433ca:	e7bc      	b.n	d0043346 <main+0x134e>
d00433cc:	4a2d      	ldr	r2, [pc, #180]	; (d0043484 <main+0x148c>)
d00433ce:	482e      	ldr	r0, [pc, #184]	; (d0043488 <main+0x1490>)
d00433d0:	6811      	ldr	r1, [r2, #0]
d00433d2:	6803      	ldr	r3, [r0, #0]
d00433d4:	3101      	adds	r1, #1
d00433d6:	f8dd a054 	ldr.w	sl, [sp, #84]	; 0x54
d00433da:	3302      	adds	r3, #2
d00433dc:	6011      	str	r1, [r2, #0]
d00433de:	6003      	str	r3, [r0, #0]
d00433e0:	f89a 300c 	ldrb.w	r3, [sl, #12]
d00433e4:	b15b      	cbz	r3, d00433fe <main+0x1406>
d00433e6:	f89a 200b 	ldrb.w	r2, [sl, #11]
d00433ea:	b942      	cbnz	r2, d00433fe <main+0x1406>
d00433ec:	f8da 3004 	ldr.w	r3, [sl, #4]
d00433f0:	1acb      	subs	r3, r1, r3
d00433f2:	005b      	lsls	r3, r3, #1
d00433f4:	f5b3 7f8c 	cmp.w	r3, #280	; 0x118
d00433f8:	bf88      	it	hi
d00433fa:	f88a 200c 	strbhi.w	r2, [sl, #12]
d00433fe:	f10a 0a10 	add.w	sl, sl, #16
d0043402:	4b1f      	ldr	r3, [pc, #124]	; (d0043480 <main+0x1488>)
d0043404:	459a      	cmp	sl, r3
d0043406:	d1eb      	bne.n	d00433e0 <main+0x13e8>
d0043408:	9806      	ldr	r0, [sp, #24]
d004340a:	9d0e      	ldr	r5, [sp, #56]	; 0x38
d004340c:	7b03      	ldrb	r3, [r0, #12]
d004340e:	4604      	mov	r4, r0
d0043410:	7b42      	ldrb	r2, [r0, #13]
d0043412:	4629      	mov	r1, r5
d0043414:	7b80      	ldrb	r0, [r0, #14]
d0043416:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004341a:	7be2      	ldrb	r2, [r4, #15]
d004341c:	9f14      	ldr	r7, [sp, #80]	; 0x50
d004341e:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
d0043422:	2000      	movs	r0, #0
d0043424:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0043428:	681b      	ldr	r3, [r3, #0]
d004342a:	6b1b      	ldr	r3, [r3, #48]	; 0x30
d004342c:	4798      	blx	r3
d004342e:	7b23      	ldrb	r3, [r4, #12]
d0043430:	7b62      	ldrb	r2, [r4, #13]
d0043432:	4628      	mov	r0, r5
d0043434:	7ba1      	ldrb	r1, [r4, #14]
d0043436:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004343a:	3002      	adds	r0, #2
d004343c:	7be2      	ldrb	r2, [r4, #15]
d004343e:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0043442:	b280      	uxth	r0, r0
d0043444:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0043448:	f5b0 7fa0 	cmp.w	r0, #320	; 0x140
d004344c:	681b      	ldr	r3, [r3, #0]
d004344e:	bf34      	ite	cc
d0043450:	4602      	movcc	r2, r0
d0043452:	2200      	movcs	r2, #0
d0043454:	681b      	ldr	r3, [r3, #0]
d0043456:	920e      	str	r2, [sp, #56]	; 0x38
d0043458:	4798      	blx	r3
d004345a:	f7ff bbd3 	b.w	d0042c04 <main+0xc0c>
d004345e:	9a06      	ldr	r2, [sp, #24]
d0043460:	4611      	mov	r1, r2
d0043462:	7b13      	ldrb	r3, [r2, #12]
d0043464:	7b52      	ldrb	r2, [r2, #13]
d0043466:	7b88      	ldrb	r0, [r1, #14]
d0043468:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004346c:	7bca      	ldrb	r2, [r1, #15]
d004346e:	4907      	ldr	r1, [pc, #28]	; (d004348c <main+0x1494>)
d0043470:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
d0043474:	4806      	ldr	r0, [pc, #24]	; (d0043490 <main+0x1498>)
d0043476:	6809      	ldr	r1, [r1, #0]
d0043478:	e498      	b.n	d0042dac <main+0xdb4>
d004347a:	bf00      	nop
d004347c:	d0046bcc 	.word	0xd0046bcc
d0043480:	d00477d0 	.word	0xd00477d0
d0043484:	d0046bc8 	.word	0xd0046bc8
d0043488:	d00477d0 	.word	0xd00477d0
d004348c:	d0046780 	.word	0xd0046780
d0043490:	d00467a0 	.word	0xd00467a0
d0043494:	d0045e70 	.word	0xd0045e70
d0043498:	d0046740 	.word	0xd0046740
d004349c:	d0046bd0 	.word	0xd0046bd0
d00434a0:	089a      	lsrs	r2, r3, #2
d00434a2:	4659      	mov	r1, fp
d00434a4:	4650      	mov	r0, sl
d00434a6:	f001 f977 	bl	d0044798 <siprintf>
d00434aa:	4640      	mov	r0, r8
d00434ac:	f5a0 70a0 	sub.w	r0, r0, #320	; 0x140
d00434b0:	f5b0 7fa0 	cmp.w	r0, #320	; 0x140
d00434b4:	dafa      	bge.n	d00434ac <main+0x14b4>
d00434b6:	b280      	uxth	r0, r0
d00434b8:	2203      	movs	r2, #3
d00434ba:	2105      	movs	r1, #5
d00434bc:	f7fd fd7e 	bl	d0040fbc <visualizer_back_rect_logical.constprop.0>
d00434c0:	f5a5 75a0 	sub.w	r5, r5, #320	; 0x140
d00434c4:	f5b5 7fa0 	cmp.w	r5, #320	; 0x140
d00434c8:	dafa      	bge.n	d00434c0 <main+0x14c8>
d00434ca:	7b23      	ldrb	r3, [r4, #12]
d00434cc:	7b62      	ldrb	r2, [r4, #13]
d00434ce:	7ba1      	ldrb	r1, [r4, #14]
d00434d0:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d00434d4:	7be2      	ldrb	r2, [r4, #15]
d00434d6:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d00434da:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00434de:	681b      	ldr	r3, [r3, #0]
d00434e0:	6b5b      	ldr	r3, [r3, #52]	; 0x34
d00434e2:	4798      	blx	r3
d00434e4:	7b23      	ldrb	r3, [r4, #12]
d00434e6:	7b62      	ldrb	r2, [r4, #13]
d00434e8:	4607      	mov	r7, r0
d00434ea:	7ba1      	ldrb	r1, [r4, #14]
d00434ec:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d00434f0:	7be2      	ldrb	r2, [r4, #15]
d00434f2:	488b      	ldr	r0, [pc, #556]	; (d0043720 <main+0x1728>)
d00434f4:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d00434f8:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00434fc:	681b      	ldr	r3, [r3, #0]
d00434fe:	699b      	ldr	r3, [r3, #24]
d0043500:	4798      	blx	r3
d0043502:	7b23      	ldrb	r3, [r4, #12]
d0043504:	7b62      	ldrb	r2, [r4, #13]
d0043506:	2006      	movs	r0, #6
d0043508:	7ba1      	ldrb	r1, [r4, #14]
d004350a:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004350e:	7be2      	ldrb	r2, [r4, #15]
d0043510:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0043514:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0043518:	685b      	ldr	r3, [r3, #4]
d004351a:	68db      	ldr	r3, [r3, #12]
d004351c:	4798      	blx	r3
d004351e:	7b20      	ldrb	r0, [r4, #12]
d0043520:	7b61      	ldrb	r1, [r4, #13]
d0043522:	4652      	mov	r2, sl
d0043524:	7ba6      	ldrb	r6, [r4, #14]
d0043526:	2301      	movs	r3, #1
d0043528:	ea40 2001 	orr.w	r0, r0, r1, lsl #8
d004352c:	f894 c00f 	ldrb.w	ip, [r4, #15]
d0043530:	f1a5 010e 	sub.w	r1, r5, #14
d0043534:	ea40 4606 	orr.w	r6, r0, r6, lsl #16
d0043538:	2008      	movs	r0, #8
d004353a:	ea46 660c 	orr.w	r6, r6, ip, lsl #24
d004353e:	f8d6 c004 	ldr.w	ip, [r6, #4]
d0043542:	2602      	movs	r6, #2
d0043544:	9600      	str	r6, [sp, #0]
d0043546:	f8dc 6030 	ldr.w	r6, [ip, #48]	; 0x30
d004354a:	47b0      	blx	r6
d004354c:	7b20      	ldrb	r0, [r4, #12]
d004354e:	7b62      	ldrb	r2, [r4, #13]
d0043550:	f505 7199 	add.w	r1, r5, #306	; 0x132
d0043554:	7ba5      	ldrb	r5, [r4, #14]
d0043556:	2301      	movs	r3, #1
d0043558:	ea40 2002 	orr.w	r0, r0, r2, lsl #8
d004355c:	7be6      	ldrb	r6, [r4, #15]
d004355e:	4652      	mov	r2, sl
d0043560:	b289      	uxth	r1, r1
d0043562:	ea40 4505 	orr.w	r5, r0, r5, lsl #16
d0043566:	2008      	movs	r0, #8
d0043568:	ea45 6506 	orr.w	r5, r5, r6, lsl #24
d004356c:	2602      	movs	r6, #2
d004356e:	686d      	ldr	r5, [r5, #4]
d0043570:	9600      	str	r6, [sp, #0]
d0043572:	6b2d      	ldr	r5, [r5, #48]	; 0x30
d0043574:	47a8      	blx	r5
d0043576:	7b23      	ldrb	r3, [r4, #12]
d0043578:	7b62      	ldrb	r2, [r4, #13]
d004357a:	4638      	mov	r0, r7
d004357c:	7ba1      	ldrb	r1, [r4, #14]
d004357e:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0043582:	7be2      	ldrb	r2, [r4, #15]
d0043584:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0043588:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004358c:	681b      	ldr	r3, [r3, #0]
d004358e:	699b      	ldr	r3, [r3, #24]
d0043590:	4798      	blx	r3
d0043592:	e66a      	b.n	d004326a <main+0x1272>
d0043594:	4b63      	ldr	r3, [pc, #396]	; (d0043724 <main+0x172c>)
d0043596:	601a      	str	r2, [r3, #0]
d0043598:	f7ff bb69 	b.w	d0042c6e <main+0xc76>
d004359c:	4962      	ldr	r1, [pc, #392]	; (d0043728 <main+0x1730>)
d004359e:	4c63      	ldr	r4, [pc, #396]	; (d004372c <main+0x1734>)
d00435a0:	4a63      	ldr	r2, [pc, #396]	; (d0043730 <main+0x1738>)
d00435a2:	4b64      	ldr	r3, [pc, #400]	; (d0043734 <main+0x173c>)
d00435a4:	f7ff bb81 	b.w	d0042caa <main+0xcb2>
d00435a8:	f003 0201 	and.w	r2, r3, #1
d00435ac:	fa1f f688 	uxth.w	r6, r8
d00435b0:	2101      	movs	r1, #1
d00435b2:	9304      	str	r3, [sp, #16]
d00435b4:	f1c2 0203 	rsb	r2, r2, #3
d00435b8:	4630      	mov	r0, r6
d00435ba:	b2d2      	uxtb	r2, r2
d00435bc:	f7fd fcfe 	bl	d0040fbc <visualizer_back_rect_logical.constprop.0>
d00435c0:	9b04      	ldr	r3, [sp, #16]
d00435c2:	f003 0203 	and.w	r2, r3, #3
d00435c6:	2a00      	cmp	r2, #0
d00435c8:	f47f ae4f 	bne.w	d004326a <main+0x1272>
d00435cc:	089a      	lsrs	r2, r3, #2
d00435ce:	4659      	mov	r1, fp
d00435d0:	4650      	mov	r0, sl
d00435d2:	f001 f8e1 	bl	d0044798 <siprintf>
d00435d6:	4630      	mov	r0, r6
d00435d8:	2203      	movs	r2, #3
d00435da:	2105      	movs	r1, #5
d00435dc:	f7fd fcee 	bl	d0040fbc <visualizer_back_rect_logical.constprop.0>
d00435e0:	e773      	b.n	d00434ca <main+0x14d2>
d00435e2:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
d00435e4:	ee18 2a10 	vmov	r2, s16
d00435e8:	f44f 7500 	mov.w	r5, #512	; 0x200
d00435ec:	6819      	ldr	r1, [r3, #0]
d00435ee:	9b08      	ldr	r3, [sp, #32]
d00435f0:	6818      	ldr	r0, [r3, #0]
d00435f2:	f7fe fc29 	bl	d0041e48 <setup>
d00435f6:	4b50      	ldr	r3, [pc, #320]	; (d0043738 <main+0x1740>)
d00435f8:	f242 7010 	movw	r0, #10000	; 0x2710
d00435fc:	2100      	movs	r1, #0
d00435fe:	f8d3 4114 	ldr.w	r4, [r3, #276]	; 0x114
d0043602:	f644 6220 	movw	r2, #20000	; 0x4e20
d0043606:	4b4d      	ldr	r3, [pc, #308]	; (d004373c <main+0x1744>)
d0043608:	2c00      	cmp	r4, #0
d004360a:	bf08      	it	eq
d004360c:	461c      	moveq	r4, r3
d004360e:	2300      	movs	r3, #0
d0043610:	fbe5 0104 	umlal	r0, r1, r5, r4
d0043614:	f000 fd20 	bl	d0044058 <__aeabi_uldivmod>
d0043618:	f5b0 3fa0 	cmp.w	r0, #81920	; 0x14000
d004361c:	4b48      	ldr	r3, [pc, #288]	; (d0043740 <main+0x1748>)
d004361e:	bf28      	it	cs
d0043620:	f44f 30a0 	movcs.w	r0, #81920	; 0x14000
d0043624:	f8d9 2000 	ldr.w	r2, [r9]
d0043628:	f5b0 6f80 	cmp.w	r0, #1024	; 0x400
d004362c:	bf38      	it	cc
d004362e:	f44f 6080 	movcc.w	r0, #1024	; 0x400
d0043632:	6018      	str	r0, [r3, #0]
d0043634:	b18a      	cbz	r2, d004365a <main+0x1662>
d0043636:	f8d9 5000 	ldr.w	r5, [r9]
d004363a:	f44f 74f0 	mov.w	r4, #480	; 0x1e0
d004363e:	f8b9 6008 	ldrh.w	r6, [r9, #8]
d0043642:	b2b6      	uxth	r6, r6
d0043644:	3c01      	subs	r4, #1
d0043646:	4628      	mov	r0, r5
d0043648:	f44f 7220 	mov.w	r2, #640	; 0x280
d004364c:	2101      	movs	r1, #1
d004364e:	b2a4      	uxth	r4, r4
d0043650:	4435      	add	r5, r6
d0043652:	f000 fe93 	bl	d004437c <memset>
d0043656:	2c00      	cmp	r4, #0
d0043658:	d1f4      	bne.n	d0043644 <main+0x164c>
d004365a:	f7fd fbd7 	bl	d0040e0c <visualizer_draw_grid_full>
d004365e:	ee18 0a10 	vmov	r0, s16
d0043662:	f7fc ffb3 	bl	d00405cc <midi_wait_for_startup_bytes>
d0043666:	4b34      	ldr	r3, [pc, #208]	; (d0043738 <main+0x1740>)
d0043668:	f893 3120 	ldrb.w	r3, [r3, #288]	; 0x120
d004366c:	2b00      	cmp	r3, #0
d004366e:	d04d      	beq.n	d004370c <main+0x1714>
d0043670:	2300      	movs	r3, #0
d0043672:	4831      	ldr	r0, [pc, #196]	; (d0043738 <main+0x1740>)
d0043674:	4619      	mov	r1, r3
d0043676:	930e      	str	r3, [sp, #56]	; 0x38
d0043678:	f7fd fe2e 	bl	d00412d8 <midi_player_update_us.part.0>
d004367c:	f7ff bac8 	b.w	d0042c10 <main+0xc18>
d0043680:	9805      	ldr	r0, [sp, #20]
d0043682:	e41b      	b.n	d0042ebc <main+0xec4>
d0043684:	f7fc ff3c 	bl	d0040500 <midi_send_channel_panic>
d0043688:	4b2e      	ldr	r3, [pc, #184]	; (d0043744 <main+0x174c>)
d004368a:	781b      	ldrb	r3, [r3, #0]
d004368c:	b10b      	cbz	r3, d0043692 <main+0x169a>
d004368e:	f7fc ffd7 	bl	d0040640 <app_shutdown.part.0>
d0043692:	9a06      	ldr	r2, [sp, #24]
d0043694:	2000      	movs	r0, #0
d0043696:	4614      	mov	r4, r2
d0043698:	7813      	ldrb	r3, [r2, #0]
d004369a:	7852      	ldrb	r2, [r2, #1]
d004369c:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d00436a0:	78a2      	ldrb	r2, [r4, #2]
d00436a2:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d00436a6:	78e2      	ldrb	r2, [r4, #3]
d00436a8:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00436ac:	6edb      	ldr	r3, [r3, #108]	; 0x6c
d00436ae:	681b      	ldr	r3, [r3, #0]
d00436b0:	4798      	blx	r3
d00436b2:	7823      	ldrb	r3, [r4, #0]
d00436b4:	7862      	ldrb	r2, [r4, #1]
d00436b6:	2000      	movs	r0, #0
d00436b8:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d00436bc:	78a2      	ldrb	r2, [r4, #2]
d00436be:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d00436c2:	78e2      	ldrb	r2, [r4, #3]
d00436c4:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00436c8:	6edb      	ldr	r3, [r3, #108]	; 0x6c
d00436ca:	689b      	ldr	r3, [r3, #8]
d00436cc:	4798      	blx	r3
d00436ce:	f894 3020 	ldrb.w	r3, [r4, #32]
d00436d2:	f894 2021 	ldrb.w	r2, [r4, #33]	; 0x21
d00436d6:	2000      	movs	r0, #0
d00436d8:	f894 1022 	ldrb.w	r1, [r4, #34]	; 0x22
d00436dc:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d00436e0:	f894 2023 	ldrb.w	r2, [r4, #35]	; 0x23
d00436e4:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d00436e8:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00436ec:	681b      	ldr	r3, [r3, #0]
d00436ee:	4798      	blx	r3
d00436f0:	9b08      	ldr	r3, [sp, #32]
d00436f2:	6818      	ldr	r0, [r3, #0]
d00436f4:	b110      	cbz	r0, d00436fc <main+0x1704>
d00436f6:	9b09      	ldr	r3, [sp, #36]	; 0x24
d00436f8:	781b      	ldrb	r3, [r3, #0]
d00436fa:	b953      	cbnz	r3, d0043712 <main+0x171a>
d00436fc:	2300      	movs	r3, #0
d00436fe:	9a08      	ldr	r2, [sp, #32]
d0043700:	6013      	str	r3, [r2, #0]
d0043702:	4618      	mov	r0, r3
d0043704:	9a09      	ldr	r2, [sp, #36]	; 0x24
d0043706:	7013      	strb	r3, [r2, #0]
d0043708:	f7fe bd49 	b.w	d004219e <main+0x1a6>
d004370c:	930e      	str	r3, [sp, #56]	; 0x38
d004370e:	f7ff ba7f 	b.w	d0042c10 <main+0xc18>
d0043712:	f000 fe2b 	bl	d004436c <free>
d0043716:	e7f1      	b.n	d00436fc <main+0x1704>
d0043718:	460b      	mov	r3, r1
d004371a:	480b      	ldr	r0, [pc, #44]	; (d0043748 <main+0x1750>)
d004371c:	f7fe bdba 	b.w	d0042294 <main+0x29c>
d0043720:	d0046720 	.word	0xd0046720
d0043724:	d0046bbc 	.word	0xd0046bbc
d0043728:	d004674c 	.word	0xd004674c
d004372c:	d0046750 	.word	0xd0046750
d0043730:	d004675c 	.word	0xd004675c
d0043734:	d0046760 	.word	0xd0046760
d0043738:	d00479e8 	.word	0xd00479e8
d004373c:	0007a120 	.word	0x0007a120
d0043740:	d0046bcc 	.word	0xd0046bcc
d0043744:	d0046308 	.word	0xd0046308
d0043748:	d0046254 	.word	0xd0046254

d004374c <midi_limiter_steal_note>:
d004374c:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
d0043750:	2200      	movs	r2, #0
d0043752:	b082      	sub	sp, #8
d0043754:	f04f 34ff 	mov.w	r4, #4294967295	; 0xffffffff
d0043758:	4680      	mov	r8, r0
d004375a:	460b      	mov	r3, r1
d004375c:	4d24      	ldr	r5, [pc, #144]	; (d00437f0 <midi_limiter_steal_note+0xa4>)
d004375e:	e003      	b.n	d0043768 <midi_limiter_steal_note+0x1c>
d0043760:	b214      	sxth	r4, r2
d0043762:	3201      	adds	r2, #1
d0043764:	2a40      	cmp	r2, #64	; 0x40
d0043766:	d024      	beq.n	d00437b2 <midi_limiter_steal_note+0x66>
d0043768:	eb05 00c2 	add.w	r0, r5, r2, lsl #3
d004376c:	eb05 01c4 	add.w	r1, r5, r4, lsl #3
d0043770:	79c6      	ldrb	r6, [r0, #7]
d0043772:	2e00      	cmp	r6, #0
d0043774:	d0f5      	beq.n	d0043762 <midi_limiter_steal_note+0x16>
d0043776:	1c66      	adds	r6, r4, #1
d0043778:	d0f2      	beq.n	d0043760 <midi_limiter_steal_note+0x14>
d004377a:	790e      	ldrb	r6, [r1, #4]
d004377c:	7907      	ldrb	r7, [r0, #4]
d004377e:	f1a6 0609 	sub.w	r6, r6, #9
d0043782:	2f09      	cmp	r7, #9
d0043784:	fab6 f686 	clz	r6, r6
d0043788:	ea4f 1656 	mov.w	r6, r6, lsr #5
d004378c:	d001      	beq.n	d0043792 <midi_limiter_steal_note+0x46>
d004378e:	2e00      	cmp	r6, #0
d0043790:	d1e6      	bne.n	d0043760 <midi_limiter_steal_note+0x14>
d0043792:	f1a7 0709 	sub.w	r7, r7, #9
d0043796:	fab7 f787 	clz	r7, r7
d004379a:	097f      	lsrs	r7, r7, #5
d004379c:	42b7      	cmp	r7, r6
d004379e:	d1e0      	bne.n	d0043762 <midi_limiter_steal_note+0x16>
d00437a0:	f855 0032 	ldr.w	r0, [r5, r2, lsl #3]
d00437a4:	f855 1034 	ldr.w	r1, [r5, r4, lsl #3]
d00437a8:	4288      	cmp	r0, r1
d00437aa:	d3d9      	bcc.n	d0043760 <midi_limiter_steal_note+0x14>
d00437ac:	3201      	adds	r2, #1
d00437ae:	2a40      	cmp	r2, #64	; 0x40
d00437b0:	d1da      	bne.n	d0043768 <midi_limiter_steal_note+0x1c>
d00437b2:	1c62      	adds	r2, r4, #1
d00437b4:	d017      	beq.n	d00437e6 <midi_limiter_steal_note+0x9a>
d00437b6:	eb05 04c4 	add.w	r4, r5, r4, lsl #3
d00437ba:	2600      	movs	r6, #0
d00437bc:	2201      	movs	r2, #1
d00437be:	2103      	movs	r1, #3
d00437c0:	7925      	ldrb	r5, [r4, #4]
d00437c2:	a801      	add	r0, sp, #4
d00437c4:	7967      	ldrb	r7, [r4, #5]
d00437c6:	f005 050f 	and.w	r5, r5, #15
d00437ca:	f88d 6006 	strb.w	r6, [sp, #6]
d00437ce:	f88d 7005 	strb.w	r7, [sp, #5]
d00437d2:	f065 057f 	orn	r5, r5, #127	; 0x7f
d00437d6:	f88d 5004 	strb.w	r5, [sp, #4]
d00437da:	47c0      	blx	r8
d00437dc:	b118      	cbz	r0, d00437e6 <midi_limiter_steal_note+0x9a>
d00437de:	71e6      	strb	r6, [r4, #7]
d00437e0:	b002      	add	sp, #8
d00437e2:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
d00437e6:	2000      	movs	r0, #0
d00437e8:	b002      	add	sp, #8
d00437ea:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
d00437ee:	bf00      	nop
d00437f0:	d00477d8 	.word	0xd00477d8

d00437f4 <midi_translator_profile_for_soundfont_index>:
d00437f4:	b131      	cbz	r1, d0043804 <midi_translator_profile_for_soundfont_index+0x10>
d00437f6:	280f      	cmp	r0, #15
d00437f8:	d804      	bhi.n	d0043804 <midi_translator_profile_for_soundfont_index+0x10>
d00437fa:	f100 0308 	add.w	r3, r0, #8
d00437fe:	2001      	movs	r0, #1
d0043800:	700b      	strb	r3, [r1, #0]
d0043802:	4770      	bx	lr
d0043804:	2000      	movs	r0, #0
d0043806:	4770      	bx	lr

d0043808 <midi_translator_profile_soundfont_index>:
d0043808:	b139      	cbz	r1, d004381a <midi_translator_profile_soundfont_index+0x12>
d004380a:	f1a0 0308 	sub.w	r3, r0, #8
d004380e:	b2db      	uxtb	r3, r3
d0043810:	2b0f      	cmp	r3, #15
d0043812:	d802      	bhi.n	d004381a <midi_translator_profile_soundfont_index+0x12>
d0043814:	2001      	movs	r0, #1
d0043816:	700b      	strb	r3, [r1, #0]
d0043818:	4770      	bx	lr
d004381a:	2000      	movs	r0, #0
d004381c:	4770      	bx	lr
d004381e:	bf00      	nop

d0043820 <midi_translator_profile_name>:
d0043820:	3801      	subs	r0, #1
d0043822:	b2c0      	uxtb	r0, r0
d0043824:	2817      	cmp	r0, #23
d0043826:	d803      	bhi.n	d0043830 <midi_translator_profile_name+0x10>
d0043828:	4b02      	ldr	r3, [pc, #8]	; (d0043834 <midi_translator_profile_name+0x14>)
d004382a:	f853 0020 	ldr.w	r0, [r3, r0, lsl #2]
d004382e:	4770      	bx	lr
d0043830:	4801      	ldr	r0, [pc, #4]	; (d0043838 <midi_translator_profile_name+0x18>)
d0043832:	4770      	bx	lr
d0043834:	d0045fac 	.word	0xd0045fac
d0043838:	d0045968 	.word	0xd0045968

d004383c <midi_translator_reset_state>:
d004383c:	f44f 7200 	mov.w	r2, #512	; 0x200
d0043840:	2100      	movs	r1, #0
d0043842:	4804      	ldr	r0, [pc, #16]	; (d0043854 <midi_translator_reset_state+0x18>)
d0043844:	b508      	push	{r3, lr}
d0043846:	f000 fd99 	bl	d004437c <memset>
d004384a:	4b03      	ldr	r3, [pc, #12]	; (d0043858 <midi_translator_reset_state+0x1c>)
d004384c:	2200      	movs	r2, #0
d004384e:	601a      	str	r2, [r3, #0]
d0043850:	bd08      	pop	{r3, pc}
d0043852:	bf00      	nop
d0043854:	d00477d8 	.word	0xd00477d8
d0043858:	d00479d8 	.word	0xd00479d8

d004385c <midi_translator_translate_voice_packet>:
d004385c:	b470      	push	{r4, r5, r6}
d004385e:	fab2 f482 	clz	r4, r2
d0043862:	4603      	mov	r3, r0
d0043864:	0964      	lsrs	r4, r4, #5
d0043866:	2900      	cmp	r1, #0
d0043868:	bf14      	ite	ne
d004386a:	4620      	movne	r0, r4
d004386c:	2001      	moveq	r0, #1
d004386e:	b960      	cbnz	r0, d004388a <midi_translator_translate_voice_packet+0x2e>
d0043870:	7814      	ldrb	r4, [r2, #0]
d0043872:	b154      	cbz	r4, d004388a <midi_translator_translate_voice_packet+0x2e>
d0043874:	2b02      	cmp	r3, #2
d0043876:	d80b      	bhi.n	d0043890 <midi_translator_translate_voice_packet+0x34>
d0043878:	bb5b      	cbnz	r3, d00438d2 <midi_translator_translate_voice_packet+0x76>
d004387a:	2001      	movs	r0, #1
d004387c:	bc70      	pop	{r4, r5, r6}
d004387e:	4770      	bx	lr
d0043880:	f044 0609 	orr.w	r6, r4, #9
d0043884:	2cc0      	cmp	r4, #192	; 0xc0
d0043886:	700e      	strb	r6, [r1, #0]
d0043888:	d12f      	bne.n	d00438ea <midi_translator_translate_voice_packet+0x8e>
d004388a:	2000      	movs	r0, #0
d004388c:	bc70      	pop	{r4, r5, r6}
d004388e:	4770      	bx	lr
d0043890:	2b18      	cmp	r3, #24
d0043892:	d1f2      	bne.n	d004387a <midi_translator_translate_voice_packet+0x1e>
d0043894:	780b      	ldrb	r3, [r1, #0]
d0043896:	f003 02f0 	and.w	r2, r3, #240	; 0xf0
d004389a:	f003 050f 	and.w	r5, r3, #15
d004389e:	2ac0      	cmp	r2, #192	; 0xc0
d00438a0:	d03d      	beq.n	d004391e <midi_translator_translate_voice_packet+0xc2>
d00438a2:	2ab0      	cmp	r2, #176	; 0xb0
d00438a4:	d045      	beq.n	d0043932 <midi_translator_translate_voice_packet+0xd6>
d00438a6:	f003 00e0 	and.w	r0, r3, #224	; 0xe0
d00438aa:	2c02      	cmp	r4, #2
d00438ac:	f1a0 0080 	sub.w	r0, r0, #128	; 0x80
d00438b0:	fab0 f080 	clz	r0, r0
d00438b4:	ea4f 1050 	mov.w	r0, r0, lsr #5
d00438b8:	bf98      	it	ls
d00438ba:	2000      	movls	r0, #0
d00438bc:	2800      	cmp	r0, #0
d00438be:	d17a      	bne.n	d00439b6 <midi_translator_translate_voice_packet+0x15a>
d00438c0:	2ad0      	cmp	r2, #208	; 0xd0
d00438c2:	bf18      	it	ne
d00438c4:	2aa0      	cmpne	r2, #160	; 0xa0
d00438c6:	bf0c      	ite	eq
d00438c8:	2201      	moveq	r2, #1
d00438ca:	2200      	movne	r2, #0
d00438cc:	f082 0001 	eor.w	r0, r2, #1
d00438d0:	e7dc      	b.n	d004388c <midi_translator_translate_voice_packet+0x30>
d00438d2:	780b      	ldrb	r3, [r1, #0]
d00438d4:	f003 050f 	and.w	r5, r3, #15
d00438d8:	f003 04f0 	and.w	r4, r3, #240	; 0xf0
d00438dc:	2d09      	cmp	r5, #9
d00438de:	d0cf      	beq.n	d0043880 <midi_translator_translate_voice_packet+0x24>
d00438e0:	f023 0608 	bic.w	r6, r3, #8
d00438e4:	2cc0      	cmp	r4, #192	; 0xc0
d00438e6:	700e      	strb	r6, [r1, #0]
d00438e8:	d049      	beq.n	d004397e <midi_translator_translate_voice_packet+0x122>
d00438ea:	2cb0      	cmp	r4, #176	; 0xb0
d00438ec:	d02f      	beq.n	d004394e <midi_translator_translate_voice_packet+0xf2>
d00438ee:	f003 03e0 	and.w	r3, r3, #224	; 0xe0
d00438f2:	2b80      	cmp	r3, #128	; 0x80
d00438f4:	d10e      	bne.n	d0043914 <midi_translator_translate_voice_packet+0xb8>
d00438f6:	7813      	ldrb	r3, [r2, #0]
d00438f8:	2b02      	cmp	r3, #2
d00438fa:	d90b      	bls.n	d0043914 <midi_translator_translate_voice_packet+0xb8>
d00438fc:	784b      	ldrb	r3, [r1, #1]
d00438fe:	2d09      	cmp	r5, #9
d0043900:	f003 037f 	and.w	r3, r3, #127	; 0x7f
d0043904:	704b      	strb	r3, [r1, #1]
d0043906:	f000 8082 	beq.w	d0043a0e <midi_translator_translate_voice_packet+0x1b2>
d004390a:	2b0b      	cmp	r3, #11
d004390c:	d870      	bhi.n	d00439f0 <midi_translator_translate_voice_packet+0x194>
d004390e:	330c      	adds	r3, #12
d0043910:	704b      	strb	r3, [r1, #1]
d0043912:	e7b2      	b.n	d004387a <midi_translator_translate_voice_packet+0x1e>
d0043914:	f1b4 00a0 	subs.w	r0, r4, #160	; 0xa0
d0043918:	bf18      	it	ne
d004391a:	2001      	movne	r0, #1
d004391c:	e7b6      	b.n	d004388c <midi_translator_translate_voice_packet+0x30>
d004391e:	2d09      	cmp	r5, #9
d0043920:	784b      	ldrb	r3, [r1, #1]
d0043922:	d072      	beq.n	d0043a0a <midi_translator_translate_voice_packet+0x1ae>
d0043924:	f003 037f 	and.w	r3, r3, #127	; 0x7f
d0043928:	4a3d      	ldr	r2, [pc, #244]	; (d0043a20 <midi_translator_translate_voice_packet+0x1c4>)
d004392a:	5cd3      	ldrb	r3, [r2, r3]
d004392c:	2001      	movs	r0, #1
d004392e:	704b      	strb	r3, [r1, #1]
d0043930:	e7ac      	b.n	d004388c <midi_translator_translate_voice_packet+0x30>
d0043932:	784b      	ldrb	r3, [r1, #1]
d0043934:	2b0a      	cmp	r3, #10
d0043936:	d0a8      	beq.n	d004388a <midi_translator_translate_voice_packet+0x2e>
d0043938:	2b5b      	cmp	r3, #91	; 0x5b
d004393a:	d09e      	beq.n	d004387a <midi_translator_translate_voice_packet+0x1e>
d004393c:	d831      	bhi.n	d00439a2 <midi_translator_translate_voice_packet+0x146>
d004393e:	2b07      	cmp	r3, #7
d0043940:	d09b      	beq.n	d004387a <midi_translator_translate_voice_packet+0x1e>
d0043942:	2b40      	cmp	r3, #64	; 0x40
d0043944:	d099      	beq.n	d004387a <midi_translator_translate_voice_packet+0x1e>
d0043946:	2b01      	cmp	r3, #1
d0043948:	bf08      	it	eq
d004394a:	2001      	moveq	r0, #1
d004394c:	e79e      	b.n	d004388c <midi_translator_translate_voice_packet+0x30>
d004394e:	784d      	ldrb	r5, [r1, #1]
d0043950:	2d40      	cmp	r5, #64	; 0x40
d0043952:	d092      	beq.n	d004387a <midi_translator_translate_voice_packet+0x1e>
d0043954:	d81b      	bhi.n	d004398e <midi_translator_translate_voice_packet+0x132>
d0043956:	1e6b      	subs	r3, r5, #1
d0043958:	b2db      	uxtb	r3, r3
d004395a:	2b0a      	cmp	r3, #10
d004395c:	d896      	bhi.n	d004388c <midi_translator_translate_voice_packet+0x30>
d004395e:	2201      	movs	r2, #1
d0043960:	f240 6441 	movw	r4, #1601	; 0x641
d0043964:	fa02 f303 	lsl.w	r3, r2, r3
d0043968:	4223      	tst	r3, r4
d004396a:	d08f      	beq.n	d004388c <midi_translator_translate_voice_packet+0x30>
d004396c:	2d0a      	cmp	r5, #10
d004396e:	d184      	bne.n	d004387a <midi_translator_translate_voice_packet+0x1e>
d0043970:	788b      	ldrb	r3, [r1, #2]
d0043972:	4610      	mov	r0, r2
d0043974:	43db      	mvns	r3, r3
d0043976:	f003 037f 	and.w	r3, r3, #127	; 0x7f
d004397a:	708b      	strb	r3, [r1, #2]
d004397c:	e786      	b.n	d004388c <midi_translator_translate_voice_packet+0x30>
d004397e:	784b      	ldrb	r3, [r1, #1]
d0043980:	2001      	movs	r0, #1
d0043982:	4a28      	ldr	r2, [pc, #160]	; (d0043a24 <midi_translator_translate_voice_packet+0x1c8>)
d0043984:	f003 037f 	and.w	r3, r3, #127	; 0x7f
d0043988:	5cd3      	ldrb	r3, [r2, r3]
d004398a:	704b      	strb	r3, [r1, #1]
d004398c:	e77e      	b.n	d004388c <midi_translator_translate_voice_packet+0x30>
d004398e:	2d79      	cmp	r5, #121	; 0x79
d0043990:	d803      	bhi.n	d004399a <midi_translator_translate_voice_packet+0x13e>
d0043992:	2d77      	cmp	r5, #119	; 0x77
d0043994:	f67f af7a 	bls.w	d004388c <midi_translator_translate_voice_packet+0x30>
d0043998:	e76f      	b.n	d004387a <midi_translator_translate_voice_packet+0x1e>
d004399a:	2d7b      	cmp	r5, #123	; 0x7b
d004399c:	f47f af76 	bne.w	d004388c <midi_translator_translate_voice_packet+0x30>
d00439a0:	e76b      	b.n	d004387a <midi_translator_translate_voice_packet+0x1e>
d00439a2:	2b79      	cmp	r3, #121	; 0x79
d00439a4:	d803      	bhi.n	d00439ae <midi_translator_translate_voice_packet+0x152>
d00439a6:	2b78      	cmp	r3, #120	; 0x78
d00439a8:	bf28      	it	cs
d00439aa:	2001      	movcs	r0, #1
d00439ac:	e76e      	b.n	d004388c <midi_translator_translate_voice_packet+0x30>
d00439ae:	2b7b      	cmp	r3, #123	; 0x7b
d00439b0:	bf08      	it	eq
d00439b2:	2001      	moveq	r0, #1
d00439b4:	e76a      	b.n	d004388c <midi_translator_translate_voice_packet+0x30>
d00439b6:	784b      	ldrb	r3, [r1, #1]
d00439b8:	2d09      	cmp	r5, #9
d00439ba:	f003 037f 	and.w	r3, r3, #127	; 0x7f
d00439be:	d0e4      	beq.n	d004398a <midi_translator_translate_voice_packet+0x12e>
d00439c0:	f103 020c 	add.w	r2, r3, #12
d00439c4:	2a23      	cmp	r2, #35	; 0x23
d00439c6:	d806      	bhi.n	d00439d6 <midi_translator_translate_voice_packet+0x17a>
d00439c8:	f103 0218 	add.w	r2, r3, #24
d00439cc:	2a23      	cmp	r2, #35	; 0x23
d00439ce:	d824      	bhi.n	d0043a1a <midi_translator_translate_voice_packet+0x1be>
d00439d0:	3324      	adds	r3, #36	; 0x24
d00439d2:	704b      	strb	r3, [r1, #1]
d00439d4:	e75a      	b.n	d004388c <midi_translator_translate_voice_packet+0x30>
d00439d6:	2a67      	cmp	r2, #103	; 0x67
d00439d8:	d91f      	bls.n	d0043a1a <midi_translator_translate_voice_packet+0x1be>
d00439da:	2b67      	cmp	r3, #103	; 0x67
d00439dc:	d9d5      	bls.n	d004398a <midi_translator_translate_voice_packet+0x12e>
d00439de:	f1a3 020c 	sub.w	r2, r3, #12
d00439e2:	b2d2      	uxtb	r2, r2
d00439e4:	2a67      	cmp	r2, #103	; 0x67
d00439e6:	d918      	bls.n	d0043a1a <midi_translator_translate_voice_packet+0x1be>
d00439e8:	3b18      	subs	r3, #24
d00439ea:	b2db      	uxtb	r3, r3
d00439ec:	704b      	strb	r3, [r1, #1]
d00439ee:	e74d      	b.n	d004388c <midi_translator_translate_voice_packet+0x30>
d00439f0:	2b6c      	cmp	r3, #108	; 0x6c
d00439f2:	f67f af42 	bls.w	d004387a <midi_translator_translate_voice_packet+0x1e>
d00439f6:	f1a3 020c 	sub.w	r2, r3, #12
d00439fa:	b2d2      	uxtb	r2, r2
d00439fc:	2a6c      	cmp	r2, #108	; 0x6c
d00439fe:	d901      	bls.n	d0043a04 <midi_translator_translate_voice_packet+0x1a8>
d0043a00:	3b18      	subs	r3, #24
d0043a02:	b2da      	uxtb	r2, r3
d0043a04:	2001      	movs	r0, #1
d0043a06:	704a      	strb	r2, [r1, #1]
d0043a08:	e740      	b.n	d004388c <midi_translator_translate_voice_packet+0x30>
d0043a0a:	2363      	movs	r3, #99	; 0x63
d0043a0c:	e78e      	b.n	d004392c <midi_translator_translate_voice_packet+0xd0>
d0043a0e:	4a06      	ldr	r2, [pc, #24]	; (d0043a28 <midi_translator_translate_voice_packet+0x1cc>)
d0043a10:	5cd3      	ldrb	r3, [r2, r3]
d0043a12:	2b00      	cmp	r3, #0
d0043a14:	f43f af39 	beq.w	d004388a <midi_translator_translate_voice_packet+0x2e>
d0043a18:	e788      	b.n	d004392c <midi_translator_translate_voice_packet+0xd0>
d0043a1a:	4613      	mov	r3, r2
d0043a1c:	704b      	strb	r3, [r1, #1]
d0043a1e:	e735      	b.n	d004388c <midi_translator_translate_voice_packet+0x30>
d0043a20:	d0046134 	.word	0xd0046134
d0043a24:	d00460b4 	.word	0xd00460b4
d0043a28:	d0046034 	.word	0xd0046034

d0043a2c <midi_translator_send_voice_packet>:
d0043a2c:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0043a30:	461d      	mov	r5, r3
d0043a32:	b083      	sub	sp, #12
d0043a34:	2d00      	cmp	r5, #0
d0043a36:	bf18      	it	ne
d0043a38:	2a00      	cmpne	r2, #0
d0043a3a:	9b0c      	ldr	r3, [sp, #48]	; 0x30
d0043a3c:	d055      	beq.n	d0043aea <midi_translator_send_voice_packet+0xbe>
d0043a3e:	460c      	mov	r4, r1
d0043a40:	fab1 f181 	clz	r1, r1
d0043a44:	0949      	lsrs	r1, r1, #5
d0043a46:	2c00      	cmp	r4, #0
d0043a48:	d04f      	beq.n	d0043aea <midi_translator_send_voice_packet+0xbe>
d0043a4a:	2818      	cmp	r0, #24
d0043a4c:	d157      	bne.n	d0043afe <midi_translator_send_voice_packet+0xd2>
d0043a4e:	7826      	ldrb	r6, [r4, #0]
d0043a50:	2a02      	cmp	r2, #2
d0043a52:	f006 00f0 	and.w	r0, r6, #240	; 0xf0
d0043a56:	bf94      	ite	ls
d0043a58:	2700      	movls	r7, #0
d0043a5a:	2701      	movhi	r7, #1
d0043a5c:	f006 060f 	and.w	r6, r6, #15
d0043a60:	2890      	cmp	r0, #144	; 0x90
d0043a62:	d146      	bne.n	d0043af2 <midi_translator_send_voice_packet+0xc6>
d0043a64:	2f00      	cmp	r7, #0
d0043a66:	d044      	beq.n	d0043af2 <midi_translator_send_voice_packet+0xc6>
d0043a68:	f894 a002 	ldrb.w	sl, [r4, #2]
d0043a6c:	f1ba 0f00 	cmp.w	sl, #0
d0043a70:	d16b      	bne.n	d0043b4a <midi_translator_send_voice_packet+0x11e>
d0043a72:	4611      	mov	r1, r2
d0043a74:	4620      	mov	r0, r4
d0043a76:	2201      	movs	r2, #1
d0043a78:	47a8      	blx	r5
d0043a7a:	2800      	cmp	r0, #0
d0043a7c:	d035      	beq.n	d0043aea <midi_translator_send_voice_packet+0xbe>
d0043a7e:	7864      	ldrb	r4, [r4, #1]
d0043a80:	2200      	movs	r2, #0
d0043a82:	f8df 81bc 	ldr.w	r8, [pc, #444]	; d0043c40 <midi_translator_send_voice_packet+0x214>
d0043a86:	f004 047f 	and.w	r4, r4, #127	; 0x7f
d0043a8a:	4643      	mov	r3, r8
d0043a8c:	e003      	b.n	d0043a96 <midi_translator_send_voice_packet+0x6a>
d0043a8e:	3201      	adds	r2, #1
d0043a90:	3308      	adds	r3, #8
d0043a92:	2a40      	cmp	r2, #64	; 0x40
d0043a94:	d057      	beq.n	d0043b46 <midi_translator_send_voice_packet+0x11a>
d0043a96:	79d8      	ldrb	r0, [r3, #7]
d0043a98:	2800      	cmp	r0, #0
d0043a9a:	d0f8      	beq.n	d0043a8e <midi_translator_send_voice_packet+0x62>
d0043a9c:	7919      	ldrb	r1, [r3, #4]
d0043a9e:	42b1      	cmp	r1, r6
d0043aa0:	d1f5      	bne.n	d0043a8e <midi_translator_send_voice_packet+0x62>
d0043aa2:	7959      	ldrb	r1, [r3, #5]
d0043aa4:	42a1      	cmp	r1, r4
d0043aa6:	d1f2      	bne.n	d0043a8e <midi_translator_send_voice_packet+0x62>
d0043aa8:	eb08 02c2 	add.w	r2, r8, r2, lsl #3
d0043aac:	2300      	movs	r3, #0
d0043aae:	71d3      	strb	r3, [r2, #7]
d0043ab0:	e01c      	b.n	d0043aec <midi_translator_send_voice_packet+0xc0>
d0043ab2:	f507 7b00 	add.w	fp, r7, #512	; 0x200
d0043ab6:	4638      	mov	r0, r7
d0043ab8:	2100      	movs	r1, #0
d0043aba:	f890 e007 	ldrb.w	lr, [r0, #7]
d0043abe:	f101 0c01 	add.w	ip, r1, #1
d0043ac2:	3008      	adds	r0, #8
d0043ac4:	f1be 0f00 	cmp.w	lr, #0
d0043ac8:	d001      	beq.n	d0043ace <midi_translator_send_voice_packet+0xa2>
d0043aca:	fa5f f18c 	uxtb.w	r1, ip
d0043ace:	4558      	cmp	r0, fp
d0043ad0:	d1f3      	bne.n	d0043aba <midi_translator_send_voice_packet+0x8e>
d0043ad2:	2917      	cmp	r1, #23
d0043ad4:	d97c      	bls.n	d0043bd0 <midi_translator_send_voice_packet+0x1a4>
d0043ad6:	4619      	mov	r1, r3
d0043ad8:	4628      	mov	r0, r5
d0043ada:	9201      	str	r2, [sp, #4]
d0043adc:	9300      	str	r3, [sp, #0]
d0043ade:	f7ff fe35 	bl	d004374c <midi_limiter_steal_note>
d0043ae2:	9b00      	ldr	r3, [sp, #0]
d0043ae4:	9a01      	ldr	r2, [sp, #4]
d0043ae6:	2800      	cmp	r0, #0
d0043ae8:	d1e5      	bne.n	d0043ab6 <midi_translator_send_voice_packet+0x8a>
d0043aea:	2000      	movs	r0, #0
d0043aec:	b003      	add	sp, #12
d0043aee:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0043af2:	2880      	cmp	r0, #128	; 0x80
d0043af4:	d101      	bne.n	d0043afa <midi_translator_send_voice_packet+0xce>
d0043af6:	2f00      	cmp	r7, #0
d0043af8:	d1bb      	bne.n	d0043a72 <midi_translator_send_voice_packet+0x46>
d0043afa:	28b0      	cmp	r0, #176	; 0xb0
d0043afc:	d007      	beq.n	d0043b0e <midi_translator_send_voice_packet+0xe2>
d0043afe:	4611      	mov	r1, r2
d0043b00:	4620      	mov	r0, r4
d0043b02:	2200      	movs	r2, #0
d0043b04:	46ac      	mov	ip, r5
d0043b06:	b003      	add	sp, #12
d0043b08:	e8bd 4ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0043b0c:	4760      	bx	ip
d0043b0e:	2f00      	cmp	r7, #0
d0043b10:	d0f5      	beq.n	d0043afe <midi_translator_send_voice_packet+0xd2>
d0043b12:	7861      	ldrb	r1, [r4, #1]
d0043b14:	f1a1 0078 	sub.w	r0, r1, #120	; 0x78
d0043b18:	2801      	cmp	r0, #1
d0043b1a:	d901      	bls.n	d0043b20 <midi_translator_send_voice_packet+0xf4>
d0043b1c:	297b      	cmp	r1, #123	; 0x7b
d0043b1e:	d1ee      	bne.n	d0043afe <midi_translator_send_voice_packet+0xd2>
d0043b20:	4611      	mov	r1, r2
d0043b22:	4620      	mov	r0, r4
d0043b24:	2201      	movs	r2, #1
d0043b26:	47a8      	blx	r5
d0043b28:	2800      	cmp	r0, #0
d0043b2a:	d0de      	beq.n	d0043aea <midi_translator_send_voice_packet+0xbe>
d0043b2c:	4b44      	ldr	r3, [pc, #272]	; (d0043c40 <midi_translator_send_voice_packet+0x214>)
d0043b2e:	2000      	movs	r0, #0
d0043b30:	f503 7100 	add.w	r1, r3, #512	; 0x200
d0043b34:	79da      	ldrb	r2, [r3, #7]
d0043b36:	b11a      	cbz	r2, d0043b40 <midi_translator_send_voice_packet+0x114>
d0043b38:	791a      	ldrb	r2, [r3, #4]
d0043b3a:	42b2      	cmp	r2, r6
d0043b3c:	bf08      	it	eq
d0043b3e:	71d8      	strbeq	r0, [r3, #7]
d0043b40:	3308      	adds	r3, #8
d0043b42:	4299      	cmp	r1, r3
d0043b44:	d1f6      	bne.n	d0043b34 <midi_translator_send_voice_packet+0x108>
d0043b46:	2001      	movs	r0, #1
d0043b48:	e7d0      	b.n	d0043aec <midi_translator_send_voice_packet+0xc0>
d0043b4a:	4f3d      	ldr	r7, [pc, #244]	; (d0043c40 <midi_translator_send_voice_packet+0x214>)
d0043b4c:	f894 9001 	ldrb.w	r9, [r4, #1]
d0043b50:	46b8      	mov	r8, r7
d0043b52:	4638      	mov	r0, r7
d0043b54:	f009 097f 	and.w	r9, r9, #127	; 0x7f
d0043b58:	e003      	b.n	d0043b62 <midi_translator_send_voice_packet+0x136>
d0043b5a:	3101      	adds	r1, #1
d0043b5c:	3008      	adds	r0, #8
d0043b5e:	2940      	cmp	r1, #64	; 0x40
d0043b60:	d0a7      	beq.n	d0043ab2 <midi_translator_send_voice_packet+0x86>
d0043b62:	f890 c007 	ldrb.w	ip, [r0, #7]
d0043b66:	f1bc 0f00 	cmp.w	ip, #0
d0043b6a:	d0f6      	beq.n	d0043b5a <midi_translator_send_voice_packet+0x12e>
d0043b6c:	f890 c004 	ldrb.w	ip, [r0, #4]
d0043b70:	45b4      	cmp	ip, r6
d0043b72:	d1f2      	bne.n	d0043b5a <midi_translator_send_voice_packet+0x12e>
d0043b74:	f890 c005 	ldrb.w	ip, [r0, #5]
d0043b78:	45cc      	cmp	ip, r9
d0043b7a:	d1ee      	bne.n	d0043b5a <midi_translator_send_voice_packet+0x12e>
d0043b7c:	f8df c0c4 	ldr.w	ip, [pc, #196]	; d0043c44 <midi_translator_send_voice_packet+0x218>
d0043b80:	eb08 0ec1 	add.w	lr, r8, r1, lsl #3
d0043b84:	f8dc 0000 	ldr.w	r0, [ip]
d0043b88:	f88e a006 	strb.w	sl, [lr, #6]
d0043b8c:	3001      	adds	r0, #1
d0043b8e:	f8cc 0000 	str.w	r0, [ip]
d0043b92:	f848 0031 	str.w	r0, [r8, r1, lsl #3]
d0043b96:	4611      	mov	r1, r2
d0043b98:	4620      	mov	r0, r4
d0043b9a:	2200      	movs	r2, #0
d0043b9c:	47a8      	blx	r5
d0043b9e:	2800      	cmp	r0, #0
d0043ba0:	d1d1      	bne.n	d0043b46 <midi_translator_send_voice_packet+0x11a>
d0043ba2:	7861      	ldrb	r1, [r4, #1]
d0043ba4:	4603      	mov	r3, r0
d0043ba6:	f001 017f 	and.w	r1, r1, #127	; 0x7f
d0043baa:	e003      	b.n	d0043bb4 <midi_translator_send_voice_packet+0x188>
d0043bac:	3301      	adds	r3, #1
d0043bae:	3708      	adds	r7, #8
d0043bb0:	2b40      	cmp	r3, #64	; 0x40
d0043bb2:	d09a      	beq.n	d0043aea <midi_translator_send_voice_packet+0xbe>
d0043bb4:	79fa      	ldrb	r2, [r7, #7]
d0043bb6:	2a00      	cmp	r2, #0
d0043bb8:	d0f8      	beq.n	d0043bac <midi_translator_send_voice_packet+0x180>
d0043bba:	793a      	ldrb	r2, [r7, #4]
d0043bbc:	42b2      	cmp	r2, r6
d0043bbe:	d1f5      	bne.n	d0043bac <midi_translator_send_voice_packet+0x180>
d0043bc0:	797a      	ldrb	r2, [r7, #5]
d0043bc2:	428a      	cmp	r2, r1
d0043bc4:	d1f2      	bne.n	d0043bac <midi_translator_send_voice_packet+0x180>
d0043bc6:	eb08 03c3 	add.w	r3, r8, r3, lsl #3
d0043bca:	2200      	movs	r2, #0
d0043bcc:	71da      	strb	r2, [r3, #7]
d0043bce:	e78d      	b.n	d0043aec <midi_translator_send_voice_packet+0xc0>
d0043bd0:	2100      	movs	r1, #0
d0043bd2:	e002      	b.n	d0043bda <midi_translator_send_voice_packet+0x1ae>
d0043bd4:	3101      	adds	r1, #1
d0043bd6:	2940      	cmp	r1, #64	; 0x40
d0043bd8:	d01b      	beq.n	d0043c12 <midi_translator_send_voice_packet+0x1e6>
d0043bda:	eb08 00c1 	add.w	r0, r8, r1, lsl #3
d0043bde:	79c0      	ldrb	r0, [r0, #7]
d0043be0:	2800      	cmp	r0, #0
d0043be2:	d1f7      	bne.n	d0043bd4 <midi_translator_send_voice_packet+0x1a8>
d0043be4:	f8df e05c 	ldr.w	lr, [pc, #92]	; d0043c44 <midi_translator_send_voice_packet+0x218>
d0043be8:	b209      	sxth	r1, r1
d0043bea:	f04f 0b01 	mov.w	fp, #1
d0043bee:	f8de 0000 	ldr.w	r0, [lr]
d0043bf2:	eb08 0cc1 	add.w	ip, r8, r1, lsl #3
d0043bf6:	4458      	add	r0, fp
d0043bf8:	f88c 6004 	strb.w	r6, [ip, #4]
d0043bfc:	f88c 9005 	strb.w	r9, [ip, #5]
d0043c00:	f88c a006 	strb.w	sl, [ip, #6]
d0043c04:	f8ce 0000 	str.w	r0, [lr]
d0043c08:	f848 0031 	str.w	r0, [r8, r1, lsl #3]
d0043c0c:	f88c b007 	strb.w	fp, [ip, #7]
d0043c10:	e7c1      	b.n	d0043b96 <midi_translator_send_voice_packet+0x16a>
d0043c12:	4619      	mov	r1, r3
d0043c14:	4628      	mov	r0, r5
d0043c16:	9201      	str	r2, [sp, #4]
d0043c18:	9300      	str	r3, [sp, #0]
d0043c1a:	f7ff fd97 	bl	d004374c <midi_limiter_steal_note>
d0043c1e:	9b00      	ldr	r3, [sp, #0]
d0043c20:	9a01      	ldr	r2, [sp, #4]
d0043c22:	2800      	cmp	r0, #0
d0043c24:	f43f af61 	beq.w	d0043aea <midi_translator_send_voice_packet+0xbe>
d0043c28:	2100      	movs	r1, #0
d0043c2a:	e003      	b.n	d0043c34 <midi_translator_send_voice_packet+0x208>
d0043c2c:	3101      	adds	r1, #1
d0043c2e:	2940      	cmp	r1, #64	; 0x40
d0043c30:	f43f af5b 	beq.w	d0043aea <midi_translator_send_voice_packet+0xbe>
d0043c34:	eb08 00c1 	add.w	r0, r8, r1, lsl #3
d0043c38:	79c0      	ldrb	r0, [r0, #7]
d0043c3a:	2800      	cmp	r0, #0
d0043c3c:	d1f6      	bne.n	d0043c2c <midi_translator_send_voice_packet+0x200>
d0043c3e:	e7d1      	b.n	d0043be4 <midi_translator_send_voice_packet+0x1b8>
d0043c40:	d00477d8 	.word	0xd00477d8
d0043c44:	d00479d8 	.word	0xd00479d8

d0043c48 <midi_translator_accepts_sysex>:
d0043c48:	b430      	push	{r4, r5}
d0043c4a:	1ec4      	subs	r4, r0, #3
d0043c4c:	2800      	cmp	r0, #0
d0043c4e:	bf18      	it	ne
d0043c50:	2c14      	cmpne	r4, #20
d0043c52:	bf94      	ite	ls
d0043c54:	2501      	movls	r5, #1
d0043c56:	2500      	movhi	r5, #0
d0043c58:	d912      	bls.n	d0043c80 <midi_translator_accepts_sysex+0x38>
d0043c5a:	1e44      	subs	r4, r0, #1
d0043c5c:	2c01      	cmp	r4, #1
d0043c5e:	d80f      	bhi.n	d0043c80 <midi_translator_accepts_sysex+0x38>
d0043c60:	fab2 f082 	clz	r0, r2
d0043c64:	0940      	lsrs	r0, r0, #5
d0043c66:	29f0      	cmp	r1, #240	; 0xf0
d0043c68:	bf0c      	ite	eq
d0043c6a:	4601      	moveq	r1, r0
d0043c6c:	f040 0101 	orrne.w	r1, r0, #1
d0043c70:	b931      	cbnz	r1, d0043c80 <midi_translator_accepts_sysex+0x38>
d0043c72:	b12b      	cbz	r3, d0043c80 <midi_translator_accepts_sysex+0x38>
d0043c74:	7814      	ldrb	r4, [r2, #0]
d0043c76:	f1a4 0541 	sub.w	r5, r4, #65	; 0x41
d0043c7a:	fab5 f585 	clz	r5, r5
d0043c7e:	096d      	lsrs	r5, r5, #5
d0043c80:	4628      	mov	r0, r5
d0043c82:	bc30      	pop	{r4, r5}
d0043c84:	4770      	bx	lr
d0043c86:	bf00      	nop

d0043c88 <midi_translator_uses_soundfont>:
d0043c88:	3803      	subs	r0, #3
d0043c8a:	2814      	cmp	r0, #20
d0043c8c:	bf8c      	ite	hi
d0043c8e:	2000      	movhi	r0, #0
d0043c90:	2001      	movls	r0, #1
d0043c92:	4770      	bx	lr

d0043c94 <midi_translator_send_setup_burst>:
d0043c94:	2900      	cmp	r1, #0
d0043c96:	f000 80db 	beq.w	d0043e50 <midi_translator_send_setup_burst+0x1bc>
d0043c9a:	1e43      	subs	r3, r0, #1
d0043c9c:	2b01      	cmp	r3, #1
d0043c9e:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0043ca2:	4681      	mov	r9, r0
d0043ca4:	460c      	mov	r4, r1
d0043ca6:	4615      	mov	r5, r2
d0043ca8:	ed2d 8b04 	vpush	{d8-d9}
d0043cac:	b089      	sub	sp, #36	; 0x24
d0043cae:	d947      	bls.n	d0043d40 <midi_translator_send_setup_burst+0xac>
d0043cb0:	1ec3      	subs	r3, r0, #3
d0043cb2:	2b04      	cmp	r3, #4
d0043cb4:	d815      	bhi.n	d0043ce2 <midi_translator_send_setup_burst+0x4e>
d0043cb6:	f1a9 0904 	sub.w	r9, r9, #4
d0043cba:	49a8      	ldr	r1, [pc, #672]	; (d0043f5c <midi_translator_send_setup_burst+0x2c8>)
d0043cbc:	f10d 0818 	add.w	r8, sp, #24
d0043cc0:	26f7      	movs	r6, #247	; 0xf7
d0043cc2:	fa5f f989 	uxtb.w	r9, r9
d0043cc6:	4613      	mov	r3, r2
d0043cc8:	9106      	str	r1, [sp, #24]
d0043cca:	4640      	mov	r0, r8
d0043ccc:	2200      	movs	r2, #0
d0043cce:	2105      	movs	r1, #5
d0043cd0:	f88d 601c 	strb.w	r6, [sp, #28]
d0043cd4:	47a0      	blx	r4
d0043cd6:	f1b9 0f03 	cmp.w	r9, #3
d0043cda:	f240 813b 	bls.w	d0043f54 <midi_translator_send_setup_burst+0x2c0>
d0043cde:	2604      	movs	r6, #4
d0043ce0:	e010      	b.n	d0043d04 <midi_translator_send_setup_burst+0x70>
d0043ce2:	f1a0 0608 	sub.w	r6, r0, #8
d0043ce6:	b2f6      	uxtb	r6, r6
d0043ce8:	2e0f      	cmp	r6, #15
d0043cea:	d821      	bhi.n	d0043d30 <midi_translator_send_setup_burst+0x9c>
d0043cec:	499b      	ldr	r1, [pc, #620]	; (d0043f5c <midi_translator_send_setup_burst+0x2c8>)
d0043cee:	f10d 0818 	add.w	r8, sp, #24
d0043cf2:	27f7      	movs	r7, #247	; 0xf7
d0043cf4:	4613      	mov	r3, r2
d0043cf6:	9106      	str	r1, [sp, #24]
d0043cf8:	4640      	mov	r0, r8
d0043cfa:	2200      	movs	r2, #0
d0043cfc:	2105      	movs	r1, #5
d0043cfe:	f88d 701c 	strb.w	r7, [sp, #28]
d0043d02:	47a0      	blx	r4
d0043d04:	f647 52f0 	movw	r2, #32240	; 0x7df0
d0043d08:	2102      	movs	r1, #2
d0043d0a:	462b      	mov	r3, r5
d0043d0c:	25f7      	movs	r5, #247	; 0xf7
d0043d0e:	f8ad 2018 	strh.w	r2, [sp, #24]
d0043d12:	2200      	movs	r2, #0
d0043d14:	f88d 101a 	strb.w	r1, [sp, #26]
d0043d18:	2105      	movs	r1, #5
d0043d1a:	4640      	mov	r0, r8
d0043d1c:	f88d 601b 	strb.w	r6, [sp, #27]
d0043d20:	f88d 501c 	strb.w	r5, [sp, #28]
d0043d24:	47a0      	blx	r4
d0043d26:	b009      	add	sp, #36	; 0x24
d0043d28:	ecbd 8b04 	vpop	{d8-d9}
d0043d2c:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0043d30:	2818      	cmp	r0, #24
d0043d32:	f000 808e 	beq.w	d0043e52 <midi_translator_send_setup_burst+0x1be>
d0043d36:	b009      	add	sp, #36	; 0x24
d0043d38:	ecbd 8b04 	vpop	{d8-d9}
d0043d3c:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0043d40:	f04f 0b00 	mov.w	fp, #0
d0043d44:	f8df e228 	ldr.w	lr, [pc, #552]	; d0043f70 <midi_translator_send_setup_burst+0x2dc>
d0043d48:	f04f 0cf7 	mov.w	ip, #247	; 0xf7
d0043d4c:	4a84      	ldr	r2, [pc, #528]	; (d0043f60 <midi_translator_send_setup_burst+0x2cc>)
d0043d4e:	4b85      	ldr	r3, [pc, #532]	; (d0043f64 <midi_translator_send_setup_burst+0x2d0>)
d0043d50:	f10d 0818 	add.w	r8, sp, #24
d0043d54:	2105      	movs	r1, #5
d0043d56:	f8cd e018 	str.w	lr, [sp, #24]
d0043d5a:	2802      	cmp	r0, #2
d0043d5c:	bf0c      	ite	eq
d0043d5e:	4691      	moveq	r9, r2
d0043d60:	4699      	movne	r9, r3
d0043d62:	f88d c01c 	strb.w	ip, [sp, #28]
d0043d66:	462b      	mov	r3, r5
d0043d68:	465a      	mov	r2, fp
d0043d6a:	4640      	mov	r0, r8
d0043d6c:	ae02      	add	r6, sp, #8
d0043d6e:	47a0      	blx	r4
d0043d70:	aa03      	add	r2, sp, #12
d0043d72:	462b      	mov	r3, r5
d0043d74:	4648      	mov	r0, r9
d0043d76:	ee08 2a90 	vmov	s17, r2
d0043d7a:	2113      	movs	r1, #19
d0043d7c:	465a      	mov	r2, fp
d0043d7e:	ee08 6a10 	vmov	s16, r6
d0043d82:	47a0      	blx	r4
d0043d84:	ab04      	add	r3, sp, #16
d0043d86:	465f      	mov	r7, fp
d0043d88:	f10d 0a04 	add.w	sl, sp, #4
d0043d8c:	ee09 3a10 	vmov	s18, r3
d0043d90:	f10d 0914 	add.w	r9, sp, #20
d0043d94:	465e      	mov	r6, fp
d0043d96:	f066 0e4f 	orn	lr, r6, #79	; 0x4f
d0043d9a:	f04f 0079 	mov.w	r0, #121	; 0x79
d0043d9e:	f04f 0c40 	mov.w	ip, #64	; 0x40
d0043da2:	2364      	movs	r3, #100	; 0x64
d0043da4:	fa5f fe8e 	uxtb.w	lr, lr
d0043da8:	220b      	movs	r2, #11
d0043daa:	217f      	movs	r1, #127	; 0x7f
d0043dac:	f88d 0005 	strb.w	r0, [sp, #5]
d0043db0:	f88d e004 	strb.w	lr, [sp, #4]
d0043db4:	200a      	movs	r0, #10
d0043db6:	f88d e008 	strb.w	lr, [sp, #8]
d0043dba:	f04f 0b07 	mov.w	fp, #7
d0043dbe:	f88d e00c 	strb.w	lr, [sp, #12]
d0043dc2:	3601      	adds	r6, #1
d0043dc4:	f88d e010 	strb.w	lr, [sp, #16]
d0043dc8:	f88d e014 	strb.w	lr, [sp, #20]
d0043dcc:	f88d e018 	strb.w	lr, [sp, #24]
d0043dd0:	f04f 0e7b 	mov.w	lr, #123	; 0x7b
d0043dd4:	f88d c012 	strb.w	ip, [sp, #18]
d0043dd8:	f88d c015 	strb.w	ip, [sp, #21]
d0043ddc:	f88d e019 	strb.w	lr, [sp, #25]
d0043de0:	f88d 300a 	strb.w	r3, [sp, #10]
d0043de4:	462b      	mov	r3, r5
d0043de6:	f88d 200d 	strb.w	r2, [sp, #13]
d0043dea:	2200      	movs	r2, #0
d0043dec:	f88d 100e 	strb.w	r1, [sp, #14]
d0043df0:	2103      	movs	r1, #3
d0043df2:	f88d 0011 	strb.w	r0, [sp, #17]
d0043df6:	4650      	mov	r0, sl
d0043df8:	f88d 7006 	strb.w	r7, [sp, #6]
d0043dfc:	f88d 7016 	strb.w	r7, [sp, #22]
d0043e00:	f88d 701a 	strb.w	r7, [sp, #26]
d0043e04:	f88d b009 	strb.w	fp, [sp, #9]
d0043e08:	47a0      	blx	r4
d0043e0a:	462b      	mov	r3, r5
d0043e0c:	2200      	movs	r2, #0
d0043e0e:	2103      	movs	r1, #3
d0043e10:	ee18 0a10 	vmov	r0, s16
d0043e14:	47a0      	blx	r4
d0043e16:	462b      	mov	r3, r5
d0043e18:	2200      	movs	r2, #0
d0043e1a:	2103      	movs	r1, #3
d0043e1c:	ee18 0a90 	vmov	r0, s17
d0043e20:	47a0      	blx	r4
d0043e22:	462b      	mov	r3, r5
d0043e24:	2200      	movs	r2, #0
d0043e26:	2103      	movs	r1, #3
d0043e28:	ee19 0a10 	vmov	r0, s18
d0043e2c:	47a0      	blx	r4
d0043e2e:	462b      	mov	r3, r5
d0043e30:	2200      	movs	r2, #0
d0043e32:	2103      	movs	r1, #3
d0043e34:	4648      	mov	r0, r9
d0043e36:	47a0      	blx	r4
d0043e38:	462b      	mov	r3, r5
d0043e3a:	2200      	movs	r2, #0
d0043e3c:	2103      	movs	r1, #3
d0043e3e:	4640      	mov	r0, r8
d0043e40:	47a0      	blx	r4
d0043e42:	2e10      	cmp	r6, #16
d0043e44:	d1a7      	bne.n	d0043d96 <midi_translator_send_setup_burst+0x102>
d0043e46:	b009      	add	sp, #36	; 0x24
d0043e48:	ecbd 8b04 	vpop	{d8-d9}
d0043e4c:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0043e50:	4770      	bx	lr
d0043e52:	ab02      	add	r3, sp, #8
d0043e54:	2600      	movs	r6, #0
d0043e56:	f10d 0818 	add.w	r8, sp, #24
d0043e5a:	f10d 0a04 	add.w	sl, sp, #4
d0043e5e:	ee08 3a10 	vmov	s16, r3
d0043e62:	ab03      	add	r3, sp, #12
d0043e64:	4637      	mov	r7, r6
d0043e66:	f10d 0914 	add.w	r9, sp, #20
d0043e6a:	ee08 3a90 	vmov	s17, r3
d0043e6e:	ab04      	add	r3, sp, #16
d0043e70:	ee09 3a10 	vmov	s18, r3
d0043e74:	f066 024f 	orn	r2, r6, #79	; 0x4f
d0043e78:	f04f 0c79 	mov.w	ip, #121	; 0x79
d0043e7c:	f04f 0e7b 	mov.w	lr, #123	; 0x7b
d0043e80:	2301      	movs	r3, #1
d0043e82:	b2d2      	uxtb	r2, r2
d0043e84:	216f      	movs	r1, #111	; 0x6f
d0043e86:	200a      	movs	r0, #10
d0043e88:	f88d c005 	strb.w	ip, [sp, #5]
d0043e8c:	f04f 0b07 	mov.w	fp, #7
d0043e90:	f04f 0c40 	mov.w	ip, #64	; 0x40
d0043e94:	f88d e019 	strb.w	lr, [sp, #25]
d0043e98:	441e      	add	r6, r3
d0043e9a:	f88d c012 	strb.w	ip, [sp, #18]
d0043e9e:	f88d c015 	strb.w	ip, [sp, #21]
d0043ea2:	f88d 2004 	strb.w	r2, [sp, #4]
d0043ea6:	f88d 2008 	strb.w	r2, [sp, #8]
d0043eaa:	f88d 200c 	strb.w	r2, [sp, #12]
d0043eae:	f88d 2010 	strb.w	r2, [sp, #16]
d0043eb2:	f88d 2014 	strb.w	r2, [sp, #20]
d0043eb6:	f88d 2018 	strb.w	r2, [sp, #24]
d0043eba:	2200      	movs	r2, #0
d0043ebc:	f88d 3009 	strb.w	r3, [sp, #9]
d0043ec0:	462b      	mov	r3, r5
d0043ec2:	f88d 100e 	strb.w	r1, [sp, #14]
d0043ec6:	2103      	movs	r1, #3
d0043ec8:	f88d 0011 	strb.w	r0, [sp, #17]
d0043ecc:	4650      	mov	r0, sl
d0043ece:	f88d 7006 	strb.w	r7, [sp, #6]
d0043ed2:	f88d 700a 	strb.w	r7, [sp, #10]
d0043ed6:	f88d 7016 	strb.w	r7, [sp, #22]
d0043eda:	f88d 701a 	strb.w	r7, [sp, #26]
d0043ede:	f88d b00d 	strb.w	fp, [sp, #13]
d0043ee2:	47a0      	blx	r4
d0043ee4:	462b      	mov	r3, r5
d0043ee6:	2200      	movs	r2, #0
d0043ee8:	2103      	movs	r1, #3
d0043eea:	ee18 0a10 	vmov	r0, s16
d0043eee:	47a0      	blx	r4
d0043ef0:	462b      	mov	r3, r5
d0043ef2:	2200      	movs	r2, #0
d0043ef4:	2103      	movs	r1, #3
d0043ef6:	ee18 0a90 	vmov	r0, s17
d0043efa:	47a0      	blx	r4
d0043efc:	462b      	mov	r3, r5
d0043efe:	2200      	movs	r2, #0
d0043f00:	2103      	movs	r1, #3
d0043f02:	ee19 0a10 	vmov	r0, s18
d0043f06:	47a0      	blx	r4
d0043f08:	462b      	mov	r3, r5
d0043f0a:	2200      	movs	r2, #0
d0043f0c:	2103      	movs	r1, #3
d0043f0e:	4648      	mov	r0, r9
d0043f10:	47a0      	blx	r4
d0043f12:	462b      	mov	r3, r5
d0043f14:	2200      	movs	r2, #0
d0043f16:	2103      	movs	r1, #3
d0043f18:	4640      	mov	r0, r8
d0043f1a:	47a0      	blx	r4
d0043f1c:	2e10      	cmp	r6, #16
d0043f1e:	d1a9      	bne.n	d0043e74 <midi_translator_send_setup_burst+0x1e0>
d0043f20:	4a11      	ldr	r2, [pc, #68]	; (d0043f68 <midi_translator_send_setup_burst+0x2d4>)
d0043f22:	f246 31c9 	movw	r1, #25545	; 0x63c9
d0043f26:	462b      	mov	r3, r5
d0043f28:	4648      	mov	r0, r9
d0043f2a:	6816      	ldr	r6, [r2, #0]
d0043f2c:	2200      	movs	r2, #0
d0043f2e:	f8ad 1014 	strh.w	r1, [sp, #20]
d0043f32:	2102      	movs	r1, #2
d0043f34:	0c37      	lsrs	r7, r6, #16
d0043f36:	f8a8 6000 	strh.w	r6, [r8]
d0043f3a:	f88d 701a 	strb.w	r7, [sp, #26]
d0043f3e:	47a0      	blx	r4
d0043f40:	462b      	mov	r3, r5
d0043f42:	2200      	movs	r2, #0
d0043f44:	2103      	movs	r1, #3
d0043f46:	4640      	mov	r0, r8
d0043f48:	47a0      	blx	r4
d0043f4a:	b009      	add	sp, #36	; 0x24
d0043f4c:	ecbd 8b04 	vpop	{d8-d9}
d0043f50:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0043f54:	4b05      	ldr	r3, [pc, #20]	; (d0043f6c <midi_translator_send_setup_burst+0x2d8>)
d0043f56:	f813 6009 	ldrb.w	r6, [r3, r9]
d0043f5a:	e6d3      	b.n	d0043d04 <midi_translator_send_setup_burst+0x70>
d0043f5c:	01037df0 	.word	0x01037df0
d0043f60:	d0046020 	.word	0xd0046020
d0043f64:	d004600c 	.word	0xd004600c
d0043f68:	d0045f34 	.word	0xd0045f34
d0043f6c:	d0045fa8 	.word	0xd0045fa8
d0043f70:	00037df0 	.word	0x00037df0

d0043f74 <midi_translator_send_post_load_burst>:
d0043f74:	2900      	cmp	r1, #0
d0043f76:	d06c      	beq.n	d0044052 <midi_translator_send_post_load_burst+0xde>
d0043f78:	3803      	subs	r0, #3
d0043f7a:	2814      	cmp	r0, #20
d0043f7c:	d868      	bhi.n	d0044050 <midi_translator_send_post_load_burst+0xdc>
d0043f7e:	4613      	mov	r3, r2
d0043f80:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
d0043f84:	460c      	mov	r4, r1
d0043f86:	4933      	ldr	r1, [pc, #204]	; (d0044054 <midi_translator_send_post_load_burst+0xe0>)
d0043f88:	2600      	movs	r6, #0
d0043f8a:	b088      	sub	sp, #32
d0043f8c:	f04f 0879 	mov.w	r8, #121	; 0x79
d0043f90:	4615      	mov	r5, r2
d0043f92:	4637      	mov	r7, r6
d0043f94:	4632      	mov	r2, r6
d0043f96:	c903      	ldmia	r1, {r0, r1}
d0043f98:	9006      	str	r0, [sp, #24]
d0043f9a:	a806      	add	r0, sp, #24
d0043f9c:	f8ad 101c 	strh.w	r1, [sp, #28]
d0043fa0:	2106      	movs	r1, #6
d0043fa2:	47a0      	blx	r4
d0043fa4:	f066 034f 	orn	r3, r6, #79	; 0x4f
d0043fa8:	f04f 0c40 	mov.w	ip, #64	; 0x40
d0043fac:	f04f 0e7b 	mov.w	lr, #123	; 0x7b
d0043fb0:	220b      	movs	r2, #11
d0043fb2:	b2db      	uxtb	r3, r3
d0043fb4:	217f      	movs	r1, #127	; 0x7f
d0043fb6:	200a      	movs	r0, #10
d0043fb8:	f04f 0a07 	mov.w	sl, #7
d0043fbc:	f04f 0964 	mov.w	r9, #100	; 0x64
d0043fc0:	f88d c012 	strb.w	ip, [sp, #18]
d0043fc4:	f88d c015 	strb.w	ip, [sp, #21]
d0043fc8:	3601      	adds	r6, #1
d0043fca:	f88d e019 	strb.w	lr, [sp, #25]
d0043fce:	f88d 3004 	strb.w	r3, [sp, #4]
d0043fd2:	f88d 3008 	strb.w	r3, [sp, #8]
d0043fd6:	f88d 300c 	strb.w	r3, [sp, #12]
d0043fda:	f88d 3010 	strb.w	r3, [sp, #16]
d0043fde:	f88d 3014 	strb.w	r3, [sp, #20]
d0043fe2:	f88d 3018 	strb.w	r3, [sp, #24]
d0043fe6:	462b      	mov	r3, r5
d0043fe8:	f88d 200d 	strb.w	r2, [sp, #13]
d0043fec:	2200      	movs	r2, #0
d0043fee:	f88d 100e 	strb.w	r1, [sp, #14]
d0043ff2:	2103      	movs	r1, #3
d0043ff4:	f88d 0011 	strb.w	r0, [sp, #17]
d0043ff8:	a801      	add	r0, sp, #4
d0043ffa:	f88d 8005 	strb.w	r8, [sp, #5]
d0043ffe:	f88d 7006 	strb.w	r7, [sp, #6]
d0044002:	f88d 7016 	strb.w	r7, [sp, #22]
d0044006:	f88d 701a 	strb.w	r7, [sp, #26]
d004400a:	f88d a009 	strb.w	sl, [sp, #9]
d004400e:	f88d 900a 	strb.w	r9, [sp, #10]
d0044012:	47a0      	blx	r4
d0044014:	462b      	mov	r3, r5
d0044016:	2200      	movs	r2, #0
d0044018:	2103      	movs	r1, #3
d004401a:	a802      	add	r0, sp, #8
d004401c:	47a0      	blx	r4
d004401e:	462b      	mov	r3, r5
d0044020:	2200      	movs	r2, #0
d0044022:	2103      	movs	r1, #3
d0044024:	a803      	add	r0, sp, #12
d0044026:	47a0      	blx	r4
d0044028:	462b      	mov	r3, r5
d004402a:	2200      	movs	r2, #0
d004402c:	2103      	movs	r1, #3
d004402e:	a804      	add	r0, sp, #16
d0044030:	47a0      	blx	r4
d0044032:	462b      	mov	r3, r5
d0044034:	2200      	movs	r2, #0
d0044036:	2103      	movs	r1, #3
d0044038:	a805      	add	r0, sp, #20
d004403a:	47a0      	blx	r4
d004403c:	462b      	mov	r3, r5
d004403e:	2200      	movs	r2, #0
d0044040:	2103      	movs	r1, #3
d0044042:	a806      	add	r0, sp, #24
d0044044:	47a0      	blx	r4
d0044046:	2e10      	cmp	r6, #16
d0044048:	d1ac      	bne.n	d0043fa4 <midi_translator_send_post_load_burst+0x30>
d004404a:	b008      	add	sp, #32
d004404c:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
d0044050:	4770      	bx	lr
d0044052:	4770      	bx	lr
d0044054:	d0045bb8 	.word	0xd0045bb8

d0044058 <__aeabi_uldivmod>:
d0044058:	b953      	cbnz	r3, d0044070 <__aeabi_uldivmod+0x18>
d004405a:	b94a      	cbnz	r2, d0044070 <__aeabi_uldivmod+0x18>
d004405c:	2900      	cmp	r1, #0
d004405e:	bf08      	it	eq
d0044060:	2800      	cmpeq	r0, #0
d0044062:	bf1c      	itt	ne
d0044064:	f04f 31ff 	movne.w	r1, #4294967295	; 0xffffffff
d0044068:	f04f 30ff 	movne.w	r0, #4294967295	; 0xffffffff
d004406c:	f000 b96e 	b.w	d004434c <__aeabi_idiv0>
d0044070:	f1ad 0c08 	sub.w	ip, sp, #8
d0044074:	e96d ce04 	strd	ip, lr, [sp, #-16]!
d0044078:	f000 f806 	bl	d0044088 <__udivmoddi4>
d004407c:	f8dd e004 	ldr.w	lr, [sp, #4]
d0044080:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
d0044084:	b004      	add	sp, #16
d0044086:	4770      	bx	lr

d0044088 <__udivmoddi4>:
d0044088:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
d004408c:	9d08      	ldr	r5, [sp, #32]
d004408e:	4604      	mov	r4, r0
d0044090:	468c      	mov	ip, r1
d0044092:	2b00      	cmp	r3, #0
d0044094:	f040 8083 	bne.w	d004419e <__udivmoddi4+0x116>
d0044098:	428a      	cmp	r2, r1
d004409a:	4617      	mov	r7, r2
d004409c:	d947      	bls.n	d004412e <__udivmoddi4+0xa6>
d004409e:	fab2 f282 	clz	r2, r2
d00440a2:	b142      	cbz	r2, d00440b6 <__udivmoddi4+0x2e>
d00440a4:	f1c2 0020 	rsb	r0, r2, #32
d00440a8:	fa24 f000 	lsr.w	r0, r4, r0
d00440ac:	4091      	lsls	r1, r2
d00440ae:	4097      	lsls	r7, r2
d00440b0:	ea40 0c01 	orr.w	ip, r0, r1
d00440b4:	4094      	lsls	r4, r2
d00440b6:	ea4f 4817 	mov.w	r8, r7, lsr #16
d00440ba:	0c23      	lsrs	r3, r4, #16
d00440bc:	fbbc f6f8 	udiv	r6, ip, r8
d00440c0:	fa1f fe87 	uxth.w	lr, r7
d00440c4:	fb08 c116 	mls	r1, r8, r6, ip
d00440c8:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d00440cc:	fb06 f10e 	mul.w	r1, r6, lr
d00440d0:	4299      	cmp	r1, r3
d00440d2:	d909      	bls.n	d00440e8 <__udivmoddi4+0x60>
d00440d4:	18fb      	adds	r3, r7, r3
d00440d6:	f106 30ff 	add.w	r0, r6, #4294967295	; 0xffffffff
d00440da:	f080 8119 	bcs.w	d0044310 <__udivmoddi4+0x288>
d00440de:	4299      	cmp	r1, r3
d00440e0:	f240 8116 	bls.w	d0044310 <__udivmoddi4+0x288>
d00440e4:	3e02      	subs	r6, #2
d00440e6:	443b      	add	r3, r7
d00440e8:	1a5b      	subs	r3, r3, r1
d00440ea:	b2a4      	uxth	r4, r4
d00440ec:	fbb3 f0f8 	udiv	r0, r3, r8
d00440f0:	fb08 3310 	mls	r3, r8, r0, r3
d00440f4:	ea44 4403 	orr.w	r4, r4, r3, lsl #16
d00440f8:	fb00 fe0e 	mul.w	lr, r0, lr
d00440fc:	45a6      	cmp	lr, r4
d00440fe:	d909      	bls.n	d0044114 <__udivmoddi4+0x8c>
d0044100:	193c      	adds	r4, r7, r4
d0044102:	f100 33ff 	add.w	r3, r0, #4294967295	; 0xffffffff
d0044106:	f080 8105 	bcs.w	d0044314 <__udivmoddi4+0x28c>
d004410a:	45a6      	cmp	lr, r4
d004410c:	f240 8102 	bls.w	d0044314 <__udivmoddi4+0x28c>
d0044110:	3802      	subs	r0, #2
d0044112:	443c      	add	r4, r7
d0044114:	ea40 4006 	orr.w	r0, r0, r6, lsl #16
d0044118:	eba4 040e 	sub.w	r4, r4, lr
d004411c:	2600      	movs	r6, #0
d004411e:	b11d      	cbz	r5, d0044128 <__udivmoddi4+0xa0>
d0044120:	40d4      	lsrs	r4, r2
d0044122:	2300      	movs	r3, #0
d0044124:	e9c5 4300 	strd	r4, r3, [r5]
d0044128:	4631      	mov	r1, r6
d004412a:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
d004412e:	b902      	cbnz	r2, d0044132 <__udivmoddi4+0xaa>
d0044130:	deff      	udf	#255	; 0xff
d0044132:	fab2 f282 	clz	r2, r2
d0044136:	2a00      	cmp	r2, #0
d0044138:	d150      	bne.n	d00441dc <__udivmoddi4+0x154>
d004413a:	1bcb      	subs	r3, r1, r7
d004413c:	ea4f 4e17 	mov.w	lr, r7, lsr #16
d0044140:	fa1f f887 	uxth.w	r8, r7
d0044144:	2601      	movs	r6, #1
d0044146:	fbb3 fcfe 	udiv	ip, r3, lr
d004414a:	0c21      	lsrs	r1, r4, #16
d004414c:	fb0e 331c 	mls	r3, lr, ip, r3
d0044150:	ea41 4103 	orr.w	r1, r1, r3, lsl #16
d0044154:	fb08 f30c 	mul.w	r3, r8, ip
d0044158:	428b      	cmp	r3, r1
d004415a:	d907      	bls.n	d004416c <__udivmoddi4+0xe4>
d004415c:	1879      	adds	r1, r7, r1
d004415e:	f10c 30ff 	add.w	r0, ip, #4294967295	; 0xffffffff
d0044162:	d202      	bcs.n	d004416a <__udivmoddi4+0xe2>
d0044164:	428b      	cmp	r3, r1
d0044166:	f200 80e9 	bhi.w	d004433c <__udivmoddi4+0x2b4>
d004416a:	4684      	mov	ip, r0
d004416c:	1ac9      	subs	r1, r1, r3
d004416e:	b2a3      	uxth	r3, r4
d0044170:	fbb1 f0fe 	udiv	r0, r1, lr
d0044174:	fb0e 1110 	mls	r1, lr, r0, r1
d0044178:	ea43 4401 	orr.w	r4, r3, r1, lsl #16
d004417c:	fb08 f800 	mul.w	r8, r8, r0
d0044180:	45a0      	cmp	r8, r4
d0044182:	d907      	bls.n	d0044194 <__udivmoddi4+0x10c>
d0044184:	193c      	adds	r4, r7, r4
d0044186:	f100 33ff 	add.w	r3, r0, #4294967295	; 0xffffffff
d004418a:	d202      	bcs.n	d0044192 <__udivmoddi4+0x10a>
d004418c:	45a0      	cmp	r8, r4
d004418e:	f200 80d9 	bhi.w	d0044344 <__udivmoddi4+0x2bc>
d0044192:	4618      	mov	r0, r3
d0044194:	eba4 0408 	sub.w	r4, r4, r8
d0044198:	ea40 400c 	orr.w	r0, r0, ip, lsl #16
d004419c:	e7bf      	b.n	d004411e <__udivmoddi4+0x96>
d004419e:	428b      	cmp	r3, r1
d00441a0:	d909      	bls.n	d00441b6 <__udivmoddi4+0x12e>
d00441a2:	2d00      	cmp	r5, #0
d00441a4:	f000 80b1 	beq.w	d004430a <__udivmoddi4+0x282>
d00441a8:	2600      	movs	r6, #0
d00441aa:	e9c5 0100 	strd	r0, r1, [r5]
d00441ae:	4630      	mov	r0, r6
d00441b0:	4631      	mov	r1, r6
d00441b2:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
d00441b6:	fab3 f683 	clz	r6, r3
d00441ba:	2e00      	cmp	r6, #0
d00441bc:	d14a      	bne.n	d0044254 <__udivmoddi4+0x1cc>
d00441be:	428b      	cmp	r3, r1
d00441c0:	d302      	bcc.n	d00441c8 <__udivmoddi4+0x140>
d00441c2:	4282      	cmp	r2, r0
d00441c4:	f200 80b8 	bhi.w	d0044338 <__udivmoddi4+0x2b0>
d00441c8:	1a84      	subs	r4, r0, r2
d00441ca:	eb61 0103 	sbc.w	r1, r1, r3
d00441ce:	2001      	movs	r0, #1
d00441d0:	468c      	mov	ip, r1
d00441d2:	2d00      	cmp	r5, #0
d00441d4:	d0a8      	beq.n	d0044128 <__udivmoddi4+0xa0>
d00441d6:	e9c5 4c00 	strd	r4, ip, [r5]
d00441da:	e7a5      	b.n	d0044128 <__udivmoddi4+0xa0>
d00441dc:	f1c2 0320 	rsb	r3, r2, #32
d00441e0:	fa20 f603 	lsr.w	r6, r0, r3
d00441e4:	4097      	lsls	r7, r2
d00441e6:	fa01 f002 	lsl.w	r0, r1, r2
d00441ea:	ea4f 4e17 	mov.w	lr, r7, lsr #16
d00441ee:	40d9      	lsrs	r1, r3
d00441f0:	4330      	orrs	r0, r6
d00441f2:	0c03      	lsrs	r3, r0, #16
d00441f4:	fbb1 f6fe 	udiv	r6, r1, lr
d00441f8:	fa1f f887 	uxth.w	r8, r7
d00441fc:	fb0e 1116 	mls	r1, lr, r6, r1
d0044200:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0044204:	fb06 f108 	mul.w	r1, r6, r8
d0044208:	4299      	cmp	r1, r3
d004420a:	fa04 f402 	lsl.w	r4, r4, r2
d004420e:	d909      	bls.n	d0044224 <__udivmoddi4+0x19c>
d0044210:	18fb      	adds	r3, r7, r3
d0044212:	f106 3cff 	add.w	ip, r6, #4294967295	; 0xffffffff
d0044216:	f080 808d 	bcs.w	d0044334 <__udivmoddi4+0x2ac>
d004421a:	4299      	cmp	r1, r3
d004421c:	f240 808a 	bls.w	d0044334 <__udivmoddi4+0x2ac>
d0044220:	3e02      	subs	r6, #2
d0044222:	443b      	add	r3, r7
d0044224:	1a5b      	subs	r3, r3, r1
d0044226:	b281      	uxth	r1, r0
d0044228:	fbb3 f0fe 	udiv	r0, r3, lr
d004422c:	fb0e 3310 	mls	r3, lr, r0, r3
d0044230:	ea41 4103 	orr.w	r1, r1, r3, lsl #16
d0044234:	fb00 f308 	mul.w	r3, r0, r8
d0044238:	428b      	cmp	r3, r1
d004423a:	d907      	bls.n	d004424c <__udivmoddi4+0x1c4>
d004423c:	1879      	adds	r1, r7, r1
d004423e:	f100 3cff 	add.w	ip, r0, #4294967295	; 0xffffffff
d0044242:	d273      	bcs.n	d004432c <__udivmoddi4+0x2a4>
d0044244:	428b      	cmp	r3, r1
d0044246:	d971      	bls.n	d004432c <__udivmoddi4+0x2a4>
d0044248:	3802      	subs	r0, #2
d004424a:	4439      	add	r1, r7
d004424c:	1acb      	subs	r3, r1, r3
d004424e:	ea40 4606 	orr.w	r6, r0, r6, lsl #16
d0044252:	e778      	b.n	d0044146 <__udivmoddi4+0xbe>
d0044254:	f1c6 0c20 	rsb	ip, r6, #32
d0044258:	fa03 f406 	lsl.w	r4, r3, r6
d004425c:	fa22 f30c 	lsr.w	r3, r2, ip
d0044260:	431c      	orrs	r4, r3
d0044262:	fa20 f70c 	lsr.w	r7, r0, ip
d0044266:	fa01 f306 	lsl.w	r3, r1, r6
d004426a:	ea4f 4e14 	mov.w	lr, r4, lsr #16
d004426e:	fa21 f10c 	lsr.w	r1, r1, ip
d0044272:	431f      	orrs	r7, r3
d0044274:	0c3b      	lsrs	r3, r7, #16
d0044276:	fbb1 f9fe 	udiv	r9, r1, lr
d004427a:	fa1f f884 	uxth.w	r8, r4
d004427e:	fb0e 1119 	mls	r1, lr, r9, r1
d0044282:	ea43 4101 	orr.w	r1, r3, r1, lsl #16
d0044286:	fb09 fa08 	mul.w	sl, r9, r8
d004428a:	458a      	cmp	sl, r1
d004428c:	fa02 f206 	lsl.w	r2, r2, r6
d0044290:	fa00 f306 	lsl.w	r3, r0, r6
d0044294:	d908      	bls.n	d00442a8 <__udivmoddi4+0x220>
d0044296:	1861      	adds	r1, r4, r1
d0044298:	f109 30ff 	add.w	r0, r9, #4294967295	; 0xffffffff
d004429c:	d248      	bcs.n	d0044330 <__udivmoddi4+0x2a8>
d004429e:	458a      	cmp	sl, r1
d00442a0:	d946      	bls.n	d0044330 <__udivmoddi4+0x2a8>
d00442a2:	f1a9 0902 	sub.w	r9, r9, #2
d00442a6:	4421      	add	r1, r4
d00442a8:	eba1 010a 	sub.w	r1, r1, sl
d00442ac:	b2bf      	uxth	r7, r7
d00442ae:	fbb1 f0fe 	udiv	r0, r1, lr
d00442b2:	fb0e 1110 	mls	r1, lr, r0, r1
d00442b6:	ea47 4701 	orr.w	r7, r7, r1, lsl #16
d00442ba:	fb00 f808 	mul.w	r8, r0, r8
d00442be:	45b8      	cmp	r8, r7
d00442c0:	d907      	bls.n	d00442d2 <__udivmoddi4+0x24a>
d00442c2:	19e7      	adds	r7, r4, r7
d00442c4:	f100 31ff 	add.w	r1, r0, #4294967295	; 0xffffffff
d00442c8:	d22e      	bcs.n	d0044328 <__udivmoddi4+0x2a0>
d00442ca:	45b8      	cmp	r8, r7
d00442cc:	d92c      	bls.n	d0044328 <__udivmoddi4+0x2a0>
d00442ce:	3802      	subs	r0, #2
d00442d0:	4427      	add	r7, r4
d00442d2:	ea40 4009 	orr.w	r0, r0, r9, lsl #16
d00442d6:	eba7 0708 	sub.w	r7, r7, r8
d00442da:	fba0 8902 	umull	r8, r9, r0, r2
d00442de:	454f      	cmp	r7, r9
d00442e0:	46c6      	mov	lr, r8
d00442e2:	4649      	mov	r1, r9
d00442e4:	d31a      	bcc.n	d004431c <__udivmoddi4+0x294>
d00442e6:	d017      	beq.n	d0044318 <__udivmoddi4+0x290>
d00442e8:	b15d      	cbz	r5, d0044302 <__udivmoddi4+0x27a>
d00442ea:	ebb3 020e 	subs.w	r2, r3, lr
d00442ee:	eb67 0701 	sbc.w	r7, r7, r1
d00442f2:	fa07 fc0c 	lsl.w	ip, r7, ip
d00442f6:	40f2      	lsrs	r2, r6
d00442f8:	ea4c 0202 	orr.w	r2, ip, r2
d00442fc:	40f7      	lsrs	r7, r6
d00442fe:	e9c5 2700 	strd	r2, r7, [r5]
d0044302:	2600      	movs	r6, #0
d0044304:	4631      	mov	r1, r6
d0044306:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
d004430a:	462e      	mov	r6, r5
d004430c:	4628      	mov	r0, r5
d004430e:	e70b      	b.n	d0044128 <__udivmoddi4+0xa0>
d0044310:	4606      	mov	r6, r0
d0044312:	e6e9      	b.n	d00440e8 <__udivmoddi4+0x60>
d0044314:	4618      	mov	r0, r3
d0044316:	e6fd      	b.n	d0044114 <__udivmoddi4+0x8c>
d0044318:	4543      	cmp	r3, r8
d004431a:	d2e5      	bcs.n	d00442e8 <__udivmoddi4+0x260>
d004431c:	ebb8 0e02 	subs.w	lr, r8, r2
d0044320:	eb69 0104 	sbc.w	r1, r9, r4
d0044324:	3801      	subs	r0, #1
d0044326:	e7df      	b.n	d00442e8 <__udivmoddi4+0x260>
d0044328:	4608      	mov	r0, r1
d004432a:	e7d2      	b.n	d00442d2 <__udivmoddi4+0x24a>
d004432c:	4660      	mov	r0, ip
d004432e:	e78d      	b.n	d004424c <__udivmoddi4+0x1c4>
d0044330:	4681      	mov	r9, r0
d0044332:	e7b9      	b.n	d00442a8 <__udivmoddi4+0x220>
d0044334:	4666      	mov	r6, ip
d0044336:	e775      	b.n	d0044224 <__udivmoddi4+0x19c>
d0044338:	4630      	mov	r0, r6
d004433a:	e74a      	b.n	d00441d2 <__udivmoddi4+0x14a>
d004433c:	f1ac 0c02 	sub.w	ip, ip, #2
d0044340:	4439      	add	r1, r7
d0044342:	e713      	b.n	d004416c <__udivmoddi4+0xe4>
d0044344:	3802      	subs	r0, #2
d0044346:	443c      	add	r4, r7
d0044348:	e724      	b.n	d0044194 <__udivmoddi4+0x10c>
d004434a:	bf00      	nop

d004434c <__aeabi_idiv0>:
d004434c:	4770      	bx	lr
d004434e:	bf00      	nop

d0044350 <__errno>:
d0044350:	4b01      	ldr	r3, [pc, #4]	; (d0044358 <__errno+0x8>)
d0044352:	6818      	ldr	r0, [r3, #0]
d0044354:	4770      	bx	lr
d0044356:	bf00      	nop
d0044358:	d004628c 	.word	0xd004628c

d004435c <malloc>:
d004435c:	4b02      	ldr	r3, [pc, #8]	; (d0044368 <malloc+0xc>)
d004435e:	4601      	mov	r1, r0
d0044360:	6818      	ldr	r0, [r3, #0]
d0044362:	f000 b863 	b.w	d004442c <_malloc_r>
d0044366:	bf00      	nop
d0044368:	d004628c 	.word	0xd004628c

d004436c <free>:
d004436c:	4b02      	ldr	r3, [pc, #8]	; (d0044378 <free+0xc>)
d004436e:	4601      	mov	r1, r0
d0044370:	6818      	ldr	r0, [r3, #0]
d0044372:	f000 b80b 	b.w	d004438c <_free_r>
d0044376:	bf00      	nop
d0044378:	d004628c 	.word	0xd004628c

d004437c <memset>:
d004437c:	4402      	add	r2, r0
d004437e:	4603      	mov	r3, r0
d0044380:	4293      	cmp	r3, r2
d0044382:	d100      	bne.n	d0044386 <memset+0xa>
d0044384:	4770      	bx	lr
d0044386:	f803 1b01 	strb.w	r1, [r3], #1
d004438a:	e7f9      	b.n	d0044380 <memset+0x4>

d004438c <_free_r>:
d004438c:	b537      	push	{r0, r1, r2, r4, r5, lr}
d004438e:	2900      	cmp	r1, #0
d0044390:	d048      	beq.n	d0044424 <_free_r+0x98>
d0044392:	f851 3c04 	ldr.w	r3, [r1, #-4]
d0044396:	9001      	str	r0, [sp, #4]
d0044398:	2b00      	cmp	r3, #0
d004439a:	f1a1 0404 	sub.w	r4, r1, #4
d004439e:	bfb8      	it	lt
d00443a0:	18e4      	addlt	r4, r4, r3
d00443a2:	f000 fd1b 	bl	d0044ddc <__malloc_lock>
d00443a6:	4a20      	ldr	r2, [pc, #128]	; (d0044428 <_free_r+0x9c>)
d00443a8:	9801      	ldr	r0, [sp, #4]
d00443aa:	6813      	ldr	r3, [r2, #0]
d00443ac:	4615      	mov	r5, r2
d00443ae:	b933      	cbnz	r3, d00443be <_free_r+0x32>
d00443b0:	6063      	str	r3, [r4, #4]
d00443b2:	6014      	str	r4, [r2, #0]
d00443b4:	b003      	add	sp, #12
d00443b6:	e8bd 4030 	ldmia.w	sp!, {r4, r5, lr}
d00443ba:	f000 bd15 	b.w	d0044de8 <__malloc_unlock>
d00443be:	42a3      	cmp	r3, r4
d00443c0:	d90b      	bls.n	d00443da <_free_r+0x4e>
d00443c2:	6821      	ldr	r1, [r4, #0]
d00443c4:	1862      	adds	r2, r4, r1
d00443c6:	4293      	cmp	r3, r2
d00443c8:	bf04      	itt	eq
d00443ca:	681a      	ldreq	r2, [r3, #0]
d00443cc:	685b      	ldreq	r3, [r3, #4]
d00443ce:	6063      	str	r3, [r4, #4]
d00443d0:	bf04      	itt	eq
d00443d2:	1852      	addeq	r2, r2, r1
d00443d4:	6022      	streq	r2, [r4, #0]
d00443d6:	602c      	str	r4, [r5, #0]
d00443d8:	e7ec      	b.n	d00443b4 <_free_r+0x28>
d00443da:	461a      	mov	r2, r3
d00443dc:	685b      	ldr	r3, [r3, #4]
d00443de:	b10b      	cbz	r3, d00443e4 <_free_r+0x58>
d00443e0:	42a3      	cmp	r3, r4
d00443e2:	d9fa      	bls.n	d00443da <_free_r+0x4e>
d00443e4:	6811      	ldr	r1, [r2, #0]
d00443e6:	1855      	adds	r5, r2, r1
d00443e8:	42a5      	cmp	r5, r4
d00443ea:	d10b      	bne.n	d0044404 <_free_r+0x78>
d00443ec:	6824      	ldr	r4, [r4, #0]
d00443ee:	4421      	add	r1, r4
d00443f0:	1854      	adds	r4, r2, r1
d00443f2:	42a3      	cmp	r3, r4
d00443f4:	6011      	str	r1, [r2, #0]
d00443f6:	d1dd      	bne.n	d00443b4 <_free_r+0x28>
d00443f8:	681c      	ldr	r4, [r3, #0]
d00443fa:	685b      	ldr	r3, [r3, #4]
d00443fc:	6053      	str	r3, [r2, #4]
d00443fe:	4421      	add	r1, r4
d0044400:	6011      	str	r1, [r2, #0]
d0044402:	e7d7      	b.n	d00443b4 <_free_r+0x28>
d0044404:	d902      	bls.n	d004440c <_free_r+0x80>
d0044406:	230c      	movs	r3, #12
d0044408:	6003      	str	r3, [r0, #0]
d004440a:	e7d3      	b.n	d00443b4 <_free_r+0x28>
d004440c:	6825      	ldr	r5, [r4, #0]
d004440e:	1961      	adds	r1, r4, r5
d0044410:	428b      	cmp	r3, r1
d0044412:	bf04      	itt	eq
d0044414:	6819      	ldreq	r1, [r3, #0]
d0044416:	685b      	ldreq	r3, [r3, #4]
d0044418:	6063      	str	r3, [r4, #4]
d004441a:	bf04      	itt	eq
d004441c:	1949      	addeq	r1, r1, r5
d004441e:	6021      	streq	r1, [r4, #0]
d0044420:	6054      	str	r4, [r2, #4]
d0044422:	e7c7      	b.n	d00443b4 <_free_r+0x28>
d0044424:	b003      	add	sp, #12
d0044426:	bd30      	pop	{r4, r5, pc}
d0044428:	d00479dc 	.word	0xd00479dc

d004442c <_malloc_r>:
d004442c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d004442e:	1ccd      	adds	r5, r1, #3
d0044430:	f025 0503 	bic.w	r5, r5, #3
d0044434:	3508      	adds	r5, #8
d0044436:	2d0c      	cmp	r5, #12
d0044438:	bf38      	it	cc
d004443a:	250c      	movcc	r5, #12
d004443c:	2d00      	cmp	r5, #0
d004443e:	4606      	mov	r6, r0
d0044440:	db01      	blt.n	d0044446 <_malloc_r+0x1a>
d0044442:	42a9      	cmp	r1, r5
d0044444:	d903      	bls.n	d004444e <_malloc_r+0x22>
d0044446:	230c      	movs	r3, #12
d0044448:	6033      	str	r3, [r6, #0]
d004444a:	2000      	movs	r0, #0
d004444c:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d004444e:	f000 fcc5 	bl	d0044ddc <__malloc_lock>
d0044452:	4921      	ldr	r1, [pc, #132]	; (d00444d8 <_malloc_r+0xac>)
d0044454:	680a      	ldr	r2, [r1, #0]
d0044456:	4614      	mov	r4, r2
d0044458:	b99c      	cbnz	r4, d0044482 <_malloc_r+0x56>
d004445a:	4f20      	ldr	r7, [pc, #128]	; (d00444dc <_malloc_r+0xb0>)
d004445c:	683b      	ldr	r3, [r7, #0]
d004445e:	b923      	cbnz	r3, d004446a <_malloc_r+0x3e>
d0044460:	4621      	mov	r1, r4
d0044462:	4630      	mov	r0, r6
d0044464:	f7fb fe3c 	bl	d00400e0 <_sbrk_r>
d0044468:	6038      	str	r0, [r7, #0]
d004446a:	4629      	mov	r1, r5
d004446c:	4630      	mov	r0, r6
d004446e:	f7fb fe37 	bl	d00400e0 <_sbrk_r>
d0044472:	1c43      	adds	r3, r0, #1
d0044474:	d123      	bne.n	d00444be <_malloc_r+0x92>
d0044476:	230c      	movs	r3, #12
d0044478:	6033      	str	r3, [r6, #0]
d004447a:	4630      	mov	r0, r6
d004447c:	f000 fcb4 	bl	d0044de8 <__malloc_unlock>
d0044480:	e7e3      	b.n	d004444a <_malloc_r+0x1e>
d0044482:	6823      	ldr	r3, [r4, #0]
d0044484:	1b5b      	subs	r3, r3, r5
d0044486:	d417      	bmi.n	d00444b8 <_malloc_r+0x8c>
d0044488:	2b0b      	cmp	r3, #11
d004448a:	d903      	bls.n	d0044494 <_malloc_r+0x68>
d004448c:	6023      	str	r3, [r4, #0]
d004448e:	441c      	add	r4, r3
d0044490:	6025      	str	r5, [r4, #0]
d0044492:	e004      	b.n	d004449e <_malloc_r+0x72>
d0044494:	6863      	ldr	r3, [r4, #4]
d0044496:	42a2      	cmp	r2, r4
d0044498:	bf0c      	ite	eq
d004449a:	600b      	streq	r3, [r1, #0]
d004449c:	6053      	strne	r3, [r2, #4]
d004449e:	4630      	mov	r0, r6
d00444a0:	f000 fca2 	bl	d0044de8 <__malloc_unlock>
d00444a4:	f104 000b 	add.w	r0, r4, #11
d00444a8:	1d23      	adds	r3, r4, #4
d00444aa:	f020 0007 	bic.w	r0, r0, #7
d00444ae:	1ac2      	subs	r2, r0, r3
d00444b0:	d0cc      	beq.n	d004444c <_malloc_r+0x20>
d00444b2:	1a1b      	subs	r3, r3, r0
d00444b4:	50a3      	str	r3, [r4, r2]
d00444b6:	e7c9      	b.n	d004444c <_malloc_r+0x20>
d00444b8:	4622      	mov	r2, r4
d00444ba:	6864      	ldr	r4, [r4, #4]
d00444bc:	e7cc      	b.n	d0044458 <_malloc_r+0x2c>
d00444be:	1cc4      	adds	r4, r0, #3
d00444c0:	f024 0403 	bic.w	r4, r4, #3
d00444c4:	42a0      	cmp	r0, r4
d00444c6:	d0e3      	beq.n	d0044490 <_malloc_r+0x64>
d00444c8:	1a21      	subs	r1, r4, r0
d00444ca:	4630      	mov	r0, r6
d00444cc:	f7fb fe08 	bl	d00400e0 <_sbrk_r>
d00444d0:	3001      	adds	r0, #1
d00444d2:	d1dd      	bne.n	d0044490 <_malloc_r+0x64>
d00444d4:	e7cf      	b.n	d0044476 <_malloc_r+0x4a>
d00444d6:	bf00      	nop
d00444d8:	d00479dc 	.word	0xd00479dc
d00444dc:	d00479e0 	.word	0xd00479e0

d00444e0 <iprintf>:
d00444e0:	b40f      	push	{r0, r1, r2, r3}
d00444e2:	4b0a      	ldr	r3, [pc, #40]	; (d004450c <iprintf+0x2c>)
d00444e4:	b513      	push	{r0, r1, r4, lr}
d00444e6:	681c      	ldr	r4, [r3, #0]
d00444e8:	b124      	cbz	r4, d00444f4 <iprintf+0x14>
d00444ea:	69a3      	ldr	r3, [r4, #24]
d00444ec:	b913      	cbnz	r3, d00444f4 <iprintf+0x14>
d00444ee:	4620      	mov	r0, r4
d00444f0:	f000 fb70 	bl	d0044bd4 <__sinit>
d00444f4:	ab05      	add	r3, sp, #20
d00444f6:	9a04      	ldr	r2, [sp, #16]
d00444f8:	68a1      	ldr	r1, [r4, #8]
d00444fa:	9301      	str	r3, [sp, #4]
d00444fc:	4620      	mov	r0, r4
d00444fe:	f000 fdff 	bl	d0045100 <_vfiprintf_r>
d0044502:	b002      	add	sp, #8
d0044504:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
d0044508:	b004      	add	sp, #16
d004450a:	4770      	bx	lr
d004450c:	d004628c 	.word	0xd004628c

d0044510 <_puts_r>:
d0044510:	b570      	push	{r4, r5, r6, lr}
d0044512:	460e      	mov	r6, r1
d0044514:	4605      	mov	r5, r0
d0044516:	b118      	cbz	r0, d0044520 <_puts_r+0x10>
d0044518:	6983      	ldr	r3, [r0, #24]
d004451a:	b90b      	cbnz	r3, d0044520 <_puts_r+0x10>
d004451c:	f000 fb5a 	bl	d0044bd4 <__sinit>
d0044520:	69ab      	ldr	r3, [r5, #24]
d0044522:	68ac      	ldr	r4, [r5, #8]
d0044524:	b913      	cbnz	r3, d004452c <_puts_r+0x1c>
d0044526:	4628      	mov	r0, r5
d0044528:	f000 fb54 	bl	d0044bd4 <__sinit>
d004452c:	4b2c      	ldr	r3, [pc, #176]	; (d00445e0 <_puts_r+0xd0>)
d004452e:	429c      	cmp	r4, r3
d0044530:	d120      	bne.n	d0044574 <_puts_r+0x64>
d0044532:	686c      	ldr	r4, [r5, #4]
d0044534:	6e63      	ldr	r3, [r4, #100]	; 0x64
d0044536:	07db      	lsls	r3, r3, #31
d0044538:	d405      	bmi.n	d0044546 <_puts_r+0x36>
d004453a:	89a3      	ldrh	r3, [r4, #12]
d004453c:	0598      	lsls	r0, r3, #22
d004453e:	d402      	bmi.n	d0044546 <_puts_r+0x36>
d0044540:	6da0      	ldr	r0, [r4, #88]	; 0x58
d0044542:	f000 fbe5 	bl	d0044d10 <__retarget_lock_acquire_recursive>
d0044546:	89a3      	ldrh	r3, [r4, #12]
d0044548:	0719      	lsls	r1, r3, #28
d004454a:	d51d      	bpl.n	d0044588 <_puts_r+0x78>
d004454c:	6923      	ldr	r3, [r4, #16]
d004454e:	b1db      	cbz	r3, d0044588 <_puts_r+0x78>
d0044550:	3e01      	subs	r6, #1
d0044552:	68a3      	ldr	r3, [r4, #8]
d0044554:	f816 1f01 	ldrb.w	r1, [r6, #1]!
d0044558:	3b01      	subs	r3, #1
d004455a:	60a3      	str	r3, [r4, #8]
d004455c:	bb39      	cbnz	r1, d00445ae <_puts_r+0x9e>
d004455e:	2b00      	cmp	r3, #0
d0044560:	da38      	bge.n	d00445d4 <_puts_r+0xc4>
d0044562:	4622      	mov	r2, r4
d0044564:	210a      	movs	r1, #10
d0044566:	4628      	mov	r0, r5
d0044568:	f000 f95a 	bl	d0044820 <__swbuf_r>
d004456c:	3001      	adds	r0, #1
d004456e:	d011      	beq.n	d0044594 <_puts_r+0x84>
d0044570:	250a      	movs	r5, #10
d0044572:	e011      	b.n	d0044598 <_puts_r+0x88>
d0044574:	4b1b      	ldr	r3, [pc, #108]	; (d00445e4 <_puts_r+0xd4>)
d0044576:	429c      	cmp	r4, r3
d0044578:	d101      	bne.n	d004457e <_puts_r+0x6e>
d004457a:	68ac      	ldr	r4, [r5, #8]
d004457c:	e7da      	b.n	d0044534 <_puts_r+0x24>
d004457e:	4b1a      	ldr	r3, [pc, #104]	; (d00445e8 <_puts_r+0xd8>)
d0044580:	429c      	cmp	r4, r3
d0044582:	bf08      	it	eq
d0044584:	68ec      	ldreq	r4, [r5, #12]
d0044586:	e7d5      	b.n	d0044534 <_puts_r+0x24>
d0044588:	4621      	mov	r1, r4
d004458a:	4628      	mov	r0, r5
d004458c:	f000 f99a 	bl	d00448c4 <__swsetup_r>
d0044590:	2800      	cmp	r0, #0
d0044592:	d0dd      	beq.n	d0044550 <_puts_r+0x40>
d0044594:	f04f 35ff 	mov.w	r5, #4294967295	; 0xffffffff
d0044598:	6e63      	ldr	r3, [r4, #100]	; 0x64
d004459a:	07da      	lsls	r2, r3, #31
d004459c:	d405      	bmi.n	d00445aa <_puts_r+0x9a>
d004459e:	89a3      	ldrh	r3, [r4, #12]
d00445a0:	059b      	lsls	r3, r3, #22
d00445a2:	d402      	bmi.n	d00445aa <_puts_r+0x9a>
d00445a4:	6da0      	ldr	r0, [r4, #88]	; 0x58
d00445a6:	f000 fbb4 	bl	d0044d12 <__retarget_lock_release_recursive>
d00445aa:	4628      	mov	r0, r5
d00445ac:	bd70      	pop	{r4, r5, r6, pc}
d00445ae:	2b00      	cmp	r3, #0
d00445b0:	da04      	bge.n	d00445bc <_puts_r+0xac>
d00445b2:	69a2      	ldr	r2, [r4, #24]
d00445b4:	429a      	cmp	r2, r3
d00445b6:	dc06      	bgt.n	d00445c6 <_puts_r+0xb6>
d00445b8:	290a      	cmp	r1, #10
d00445ba:	d004      	beq.n	d00445c6 <_puts_r+0xb6>
d00445bc:	6823      	ldr	r3, [r4, #0]
d00445be:	1c5a      	adds	r2, r3, #1
d00445c0:	6022      	str	r2, [r4, #0]
d00445c2:	7019      	strb	r1, [r3, #0]
d00445c4:	e7c5      	b.n	d0044552 <_puts_r+0x42>
d00445c6:	4622      	mov	r2, r4
d00445c8:	4628      	mov	r0, r5
d00445ca:	f000 f929 	bl	d0044820 <__swbuf_r>
d00445ce:	3001      	adds	r0, #1
d00445d0:	d1bf      	bne.n	d0044552 <_puts_r+0x42>
d00445d2:	e7df      	b.n	d0044594 <_puts_r+0x84>
d00445d4:	6823      	ldr	r3, [r4, #0]
d00445d6:	250a      	movs	r5, #10
d00445d8:	1c5a      	adds	r2, r3, #1
d00445da:	6022      	str	r2, [r4, #0]
d00445dc:	701d      	strb	r5, [r3, #0]
d00445de:	e7db      	b.n	d0044598 <_puts_r+0x88>
d00445e0:	d00461d8 	.word	0xd00461d8
d00445e4:	d00461f8 	.word	0xd00461f8
d00445e8:	d00461b8 	.word	0xd00461b8

d00445ec <puts>:
d00445ec:	4b02      	ldr	r3, [pc, #8]	; (d00445f8 <puts+0xc>)
d00445ee:	4601      	mov	r1, r0
d00445f0:	6818      	ldr	r0, [r3, #0]
d00445f2:	f7ff bf8d 	b.w	d0044510 <_puts_r>
d00445f6:	bf00      	nop
d00445f8:	d004628c 	.word	0xd004628c

d00445fc <setbuf>:
d00445fc:	2900      	cmp	r1, #0
d00445fe:	f44f 6380 	mov.w	r3, #1024	; 0x400
d0044602:	bf0c      	ite	eq
d0044604:	2202      	moveq	r2, #2
d0044606:	2200      	movne	r2, #0
d0044608:	f000 b800 	b.w	d004460c <setvbuf>

d004460c <setvbuf>:
d004460c:	e92d 43f7 	stmdb	sp!, {r0, r1, r2, r4, r5, r6, r7, r8, r9, lr}
d0044610:	461d      	mov	r5, r3
d0044612:	4b5d      	ldr	r3, [pc, #372]	; (d0044788 <setvbuf+0x17c>)
d0044614:	681f      	ldr	r7, [r3, #0]
d0044616:	4604      	mov	r4, r0
d0044618:	460e      	mov	r6, r1
d004461a:	4690      	mov	r8, r2
d004461c:	b127      	cbz	r7, d0044628 <setvbuf+0x1c>
d004461e:	69bb      	ldr	r3, [r7, #24]
d0044620:	b913      	cbnz	r3, d0044628 <setvbuf+0x1c>
d0044622:	4638      	mov	r0, r7
d0044624:	f000 fad6 	bl	d0044bd4 <__sinit>
d0044628:	4b58      	ldr	r3, [pc, #352]	; (d004478c <setvbuf+0x180>)
d004462a:	429c      	cmp	r4, r3
d004462c:	d167      	bne.n	d00446fe <setvbuf+0xf2>
d004462e:	687c      	ldr	r4, [r7, #4]
d0044630:	f1b8 0f02 	cmp.w	r8, #2
d0044634:	d006      	beq.n	d0044644 <setvbuf+0x38>
d0044636:	f1b8 0f01 	cmp.w	r8, #1
d004463a:	f200 809f 	bhi.w	d004477c <setvbuf+0x170>
d004463e:	2d00      	cmp	r5, #0
d0044640:	f2c0 809c 	blt.w	d004477c <setvbuf+0x170>
d0044644:	6e63      	ldr	r3, [r4, #100]	; 0x64
d0044646:	07db      	lsls	r3, r3, #31
d0044648:	d405      	bmi.n	d0044656 <setvbuf+0x4a>
d004464a:	89a3      	ldrh	r3, [r4, #12]
d004464c:	0598      	lsls	r0, r3, #22
d004464e:	d402      	bmi.n	d0044656 <setvbuf+0x4a>
d0044650:	6da0      	ldr	r0, [r4, #88]	; 0x58
d0044652:	f000 fb5d 	bl	d0044d10 <__retarget_lock_acquire_recursive>
d0044656:	4621      	mov	r1, r4
d0044658:	4638      	mov	r0, r7
d004465a:	f000 fa27 	bl	d0044aac <_fflush_r>
d004465e:	6b61      	ldr	r1, [r4, #52]	; 0x34
d0044660:	b141      	cbz	r1, d0044674 <setvbuf+0x68>
d0044662:	f104 0344 	add.w	r3, r4, #68	; 0x44
d0044666:	4299      	cmp	r1, r3
d0044668:	d002      	beq.n	d0044670 <setvbuf+0x64>
d004466a:	4638      	mov	r0, r7
d004466c:	f7ff fe8e 	bl	d004438c <_free_r>
d0044670:	2300      	movs	r3, #0
d0044672:	6363      	str	r3, [r4, #52]	; 0x34
d0044674:	2300      	movs	r3, #0
d0044676:	61a3      	str	r3, [r4, #24]
d0044678:	6063      	str	r3, [r4, #4]
d004467a:	89a3      	ldrh	r3, [r4, #12]
d004467c:	0619      	lsls	r1, r3, #24
d004467e:	d503      	bpl.n	d0044688 <setvbuf+0x7c>
d0044680:	6921      	ldr	r1, [r4, #16]
d0044682:	4638      	mov	r0, r7
d0044684:	f7ff fe82 	bl	d004438c <_free_r>
d0044688:	89a3      	ldrh	r3, [r4, #12]
d004468a:	f423 634a 	bic.w	r3, r3, #3232	; 0xca0
d004468e:	f023 0303 	bic.w	r3, r3, #3
d0044692:	f1b8 0f02 	cmp.w	r8, #2
d0044696:	81a3      	strh	r3, [r4, #12]
d0044698:	d06c      	beq.n	d0044774 <setvbuf+0x168>
d004469a:	ab01      	add	r3, sp, #4
d004469c:	466a      	mov	r2, sp
d004469e:	4621      	mov	r1, r4
d00446a0:	4638      	mov	r0, r7
d00446a2:	f000 fb37 	bl	d0044d14 <__swhatbuf_r>
d00446a6:	89a3      	ldrh	r3, [r4, #12]
d00446a8:	4318      	orrs	r0, r3
d00446aa:	81a0      	strh	r0, [r4, #12]
d00446ac:	2d00      	cmp	r5, #0
d00446ae:	d130      	bne.n	d0044712 <setvbuf+0x106>
d00446b0:	9d00      	ldr	r5, [sp, #0]
d00446b2:	4628      	mov	r0, r5
d00446b4:	f7ff fe52 	bl	d004435c <malloc>
d00446b8:	4606      	mov	r6, r0
d00446ba:	2800      	cmp	r0, #0
d00446bc:	d155      	bne.n	d004476a <setvbuf+0x15e>
d00446be:	f8dd 9000 	ldr.w	r9, [sp]
d00446c2:	45a9      	cmp	r9, r5
d00446c4:	d14a      	bne.n	d004475c <setvbuf+0x150>
d00446c6:	f04f 35ff 	mov.w	r5, #4294967295	; 0xffffffff
d00446ca:	2200      	movs	r2, #0
d00446cc:	60a2      	str	r2, [r4, #8]
d00446ce:	f104 0247 	add.w	r2, r4, #71	; 0x47
d00446d2:	6022      	str	r2, [r4, #0]
d00446d4:	6122      	str	r2, [r4, #16]
d00446d6:	2201      	movs	r2, #1
d00446d8:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
d00446dc:	6162      	str	r2, [r4, #20]
d00446de:	6e62      	ldr	r2, [r4, #100]	; 0x64
d00446e0:	f043 0302 	orr.w	r3, r3, #2
d00446e4:	07d2      	lsls	r2, r2, #31
d00446e6:	81a3      	strh	r3, [r4, #12]
d00446e8:	d405      	bmi.n	d00446f6 <setvbuf+0xea>
d00446ea:	f413 7f00 	tst.w	r3, #512	; 0x200
d00446ee:	d102      	bne.n	d00446f6 <setvbuf+0xea>
d00446f0:	6da0      	ldr	r0, [r4, #88]	; 0x58
d00446f2:	f000 fb0e 	bl	d0044d12 <__retarget_lock_release_recursive>
d00446f6:	4628      	mov	r0, r5
d00446f8:	b003      	add	sp, #12
d00446fa:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
d00446fe:	4b24      	ldr	r3, [pc, #144]	; (d0044790 <setvbuf+0x184>)
d0044700:	429c      	cmp	r4, r3
d0044702:	d101      	bne.n	d0044708 <setvbuf+0xfc>
d0044704:	68bc      	ldr	r4, [r7, #8]
d0044706:	e793      	b.n	d0044630 <setvbuf+0x24>
d0044708:	4b22      	ldr	r3, [pc, #136]	; (d0044794 <setvbuf+0x188>)
d004470a:	429c      	cmp	r4, r3
d004470c:	bf08      	it	eq
d004470e:	68fc      	ldreq	r4, [r7, #12]
d0044710:	e78e      	b.n	d0044630 <setvbuf+0x24>
d0044712:	2e00      	cmp	r6, #0
d0044714:	d0cd      	beq.n	d00446b2 <setvbuf+0xa6>
d0044716:	69bb      	ldr	r3, [r7, #24]
d0044718:	b913      	cbnz	r3, d0044720 <setvbuf+0x114>
d004471a:	4638      	mov	r0, r7
d004471c:	f000 fa5a 	bl	d0044bd4 <__sinit>
d0044720:	f1b8 0f01 	cmp.w	r8, #1
d0044724:	bf08      	it	eq
d0044726:	89a3      	ldrheq	r3, [r4, #12]
d0044728:	6026      	str	r6, [r4, #0]
d004472a:	bf04      	itt	eq
d004472c:	f043 0301 	orreq.w	r3, r3, #1
d0044730:	81a3      	strheq	r3, [r4, #12]
d0044732:	89a2      	ldrh	r2, [r4, #12]
d0044734:	f012 0308 	ands.w	r3, r2, #8
d0044738:	e9c4 6504 	strd	r6, r5, [r4, #16]
d004473c:	d01c      	beq.n	d0044778 <setvbuf+0x16c>
d004473e:	07d3      	lsls	r3, r2, #31
d0044740:	bf41      	itttt	mi
d0044742:	2300      	movmi	r3, #0
d0044744:	426d      	negmi	r5, r5
d0044746:	60a3      	strmi	r3, [r4, #8]
d0044748:	61a5      	strmi	r5, [r4, #24]
d004474a:	bf58      	it	pl
d004474c:	60a5      	strpl	r5, [r4, #8]
d004474e:	6e65      	ldr	r5, [r4, #100]	; 0x64
d0044750:	f015 0501 	ands.w	r5, r5, #1
d0044754:	d115      	bne.n	d0044782 <setvbuf+0x176>
d0044756:	f412 7f00 	tst.w	r2, #512	; 0x200
d004475a:	e7c8      	b.n	d00446ee <setvbuf+0xe2>
d004475c:	4648      	mov	r0, r9
d004475e:	f7ff fdfd 	bl	d004435c <malloc>
d0044762:	4606      	mov	r6, r0
d0044764:	2800      	cmp	r0, #0
d0044766:	d0ae      	beq.n	d00446c6 <setvbuf+0xba>
d0044768:	464d      	mov	r5, r9
d004476a:	89a3      	ldrh	r3, [r4, #12]
d004476c:	f043 0380 	orr.w	r3, r3, #128	; 0x80
d0044770:	81a3      	strh	r3, [r4, #12]
d0044772:	e7d0      	b.n	d0044716 <setvbuf+0x10a>
d0044774:	2500      	movs	r5, #0
d0044776:	e7a8      	b.n	d00446ca <setvbuf+0xbe>
d0044778:	60a3      	str	r3, [r4, #8]
d004477a:	e7e8      	b.n	d004474e <setvbuf+0x142>
d004477c:	f04f 35ff 	mov.w	r5, #4294967295	; 0xffffffff
d0044780:	e7b9      	b.n	d00446f6 <setvbuf+0xea>
d0044782:	2500      	movs	r5, #0
d0044784:	e7b7      	b.n	d00446f6 <setvbuf+0xea>
d0044786:	bf00      	nop
d0044788:	d004628c 	.word	0xd004628c
d004478c:	d00461d8 	.word	0xd00461d8
d0044790:	d00461f8 	.word	0xd00461f8
d0044794:	d00461b8 	.word	0xd00461b8

d0044798 <siprintf>:
d0044798:	b40e      	push	{r1, r2, r3}
d004479a:	b500      	push	{lr}
d004479c:	b09c      	sub	sp, #112	; 0x70
d004479e:	ab1d      	add	r3, sp, #116	; 0x74
d00447a0:	9002      	str	r0, [sp, #8]
d00447a2:	9006      	str	r0, [sp, #24]
d00447a4:	f06f 4100 	mvn.w	r1, #2147483648	; 0x80000000
d00447a8:	4809      	ldr	r0, [pc, #36]	; (d00447d0 <siprintf+0x38>)
d00447aa:	9107      	str	r1, [sp, #28]
d00447ac:	9104      	str	r1, [sp, #16]
d00447ae:	4909      	ldr	r1, [pc, #36]	; (d00447d4 <siprintf+0x3c>)
d00447b0:	f853 2b04 	ldr.w	r2, [r3], #4
d00447b4:	9105      	str	r1, [sp, #20]
d00447b6:	6800      	ldr	r0, [r0, #0]
d00447b8:	9301      	str	r3, [sp, #4]
d00447ba:	a902      	add	r1, sp, #8
d00447bc:	f000 fb76 	bl	d0044eac <_svfiprintf_r>
d00447c0:	9b02      	ldr	r3, [sp, #8]
d00447c2:	2200      	movs	r2, #0
d00447c4:	701a      	strb	r2, [r3, #0]
d00447c6:	b01c      	add	sp, #112	; 0x70
d00447c8:	f85d eb04 	ldr.w	lr, [sp], #4
d00447cc:	b003      	add	sp, #12
d00447ce:	4770      	bx	lr
d00447d0:	d004628c 	.word	0xd004628c
d00447d4:	ffff0208 	.word	0xffff0208

d00447d8 <strcmp>:
d00447d8:	f810 2b01 	ldrb.w	r2, [r0], #1
d00447dc:	f811 3b01 	ldrb.w	r3, [r1], #1
d00447e0:	2a01      	cmp	r2, #1
d00447e2:	bf28      	it	cs
d00447e4:	429a      	cmpcs	r2, r3
d00447e6:	d0f7      	beq.n	d00447d8 <strcmp>
d00447e8:	1ad0      	subs	r0, r2, r3
d00447ea:	4770      	bx	lr

d00447ec <strlen>:
d00447ec:	4603      	mov	r3, r0
d00447ee:	f813 2b01 	ldrb.w	r2, [r3], #1
d00447f2:	2a00      	cmp	r2, #0
d00447f4:	d1fb      	bne.n	d00447ee <strlen+0x2>
d00447f6:	1a18      	subs	r0, r3, r0
d00447f8:	3801      	subs	r0, #1
d00447fa:	4770      	bx	lr

d00447fc <strncmp>:
d00447fc:	b510      	push	{r4, lr}
d00447fe:	b16a      	cbz	r2, d004481c <strncmp+0x20>
d0044800:	3901      	subs	r1, #1
d0044802:	1884      	adds	r4, r0, r2
d0044804:	f810 3b01 	ldrb.w	r3, [r0], #1
d0044808:	f811 2f01 	ldrb.w	r2, [r1, #1]!
d004480c:	4293      	cmp	r3, r2
d004480e:	d103      	bne.n	d0044818 <strncmp+0x1c>
d0044810:	42a0      	cmp	r0, r4
d0044812:	d001      	beq.n	d0044818 <strncmp+0x1c>
d0044814:	2b00      	cmp	r3, #0
d0044816:	d1f5      	bne.n	d0044804 <strncmp+0x8>
d0044818:	1a98      	subs	r0, r3, r2
d004481a:	bd10      	pop	{r4, pc}
d004481c:	4610      	mov	r0, r2
d004481e:	e7fc      	b.n	d004481a <strncmp+0x1e>

d0044820 <__swbuf_r>:
d0044820:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d0044822:	460e      	mov	r6, r1
d0044824:	4614      	mov	r4, r2
d0044826:	4605      	mov	r5, r0
d0044828:	b118      	cbz	r0, d0044832 <__swbuf_r+0x12>
d004482a:	6983      	ldr	r3, [r0, #24]
d004482c:	b90b      	cbnz	r3, d0044832 <__swbuf_r+0x12>
d004482e:	f000 f9d1 	bl	d0044bd4 <__sinit>
d0044832:	4b21      	ldr	r3, [pc, #132]	; (d00448b8 <__swbuf_r+0x98>)
d0044834:	429c      	cmp	r4, r3
d0044836:	d12b      	bne.n	d0044890 <__swbuf_r+0x70>
d0044838:	686c      	ldr	r4, [r5, #4]
d004483a:	69a3      	ldr	r3, [r4, #24]
d004483c:	60a3      	str	r3, [r4, #8]
d004483e:	89a3      	ldrh	r3, [r4, #12]
d0044840:	071a      	lsls	r2, r3, #28
d0044842:	d52f      	bpl.n	d00448a4 <__swbuf_r+0x84>
d0044844:	6923      	ldr	r3, [r4, #16]
d0044846:	b36b      	cbz	r3, d00448a4 <__swbuf_r+0x84>
d0044848:	6923      	ldr	r3, [r4, #16]
d004484a:	6820      	ldr	r0, [r4, #0]
d004484c:	1ac0      	subs	r0, r0, r3
d004484e:	6963      	ldr	r3, [r4, #20]
d0044850:	b2f6      	uxtb	r6, r6
d0044852:	4283      	cmp	r3, r0
d0044854:	4637      	mov	r7, r6
d0044856:	dc04      	bgt.n	d0044862 <__swbuf_r+0x42>
d0044858:	4621      	mov	r1, r4
d004485a:	4628      	mov	r0, r5
d004485c:	f000 f926 	bl	d0044aac <_fflush_r>
d0044860:	bb30      	cbnz	r0, d00448b0 <__swbuf_r+0x90>
d0044862:	68a3      	ldr	r3, [r4, #8]
d0044864:	3b01      	subs	r3, #1
d0044866:	60a3      	str	r3, [r4, #8]
d0044868:	6823      	ldr	r3, [r4, #0]
d004486a:	1c5a      	adds	r2, r3, #1
d004486c:	6022      	str	r2, [r4, #0]
d004486e:	701e      	strb	r6, [r3, #0]
d0044870:	6963      	ldr	r3, [r4, #20]
d0044872:	3001      	adds	r0, #1
d0044874:	4283      	cmp	r3, r0
d0044876:	d004      	beq.n	d0044882 <__swbuf_r+0x62>
d0044878:	89a3      	ldrh	r3, [r4, #12]
d004487a:	07db      	lsls	r3, r3, #31
d004487c:	d506      	bpl.n	d004488c <__swbuf_r+0x6c>
d004487e:	2e0a      	cmp	r6, #10
d0044880:	d104      	bne.n	d004488c <__swbuf_r+0x6c>
d0044882:	4621      	mov	r1, r4
d0044884:	4628      	mov	r0, r5
d0044886:	f000 f911 	bl	d0044aac <_fflush_r>
d004488a:	b988      	cbnz	r0, d00448b0 <__swbuf_r+0x90>
d004488c:	4638      	mov	r0, r7
d004488e:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d0044890:	4b0a      	ldr	r3, [pc, #40]	; (d00448bc <__swbuf_r+0x9c>)
d0044892:	429c      	cmp	r4, r3
d0044894:	d101      	bne.n	d004489a <__swbuf_r+0x7a>
d0044896:	68ac      	ldr	r4, [r5, #8]
d0044898:	e7cf      	b.n	d004483a <__swbuf_r+0x1a>
d004489a:	4b09      	ldr	r3, [pc, #36]	; (d00448c0 <__swbuf_r+0xa0>)
d004489c:	429c      	cmp	r4, r3
d004489e:	bf08      	it	eq
d00448a0:	68ec      	ldreq	r4, [r5, #12]
d00448a2:	e7ca      	b.n	d004483a <__swbuf_r+0x1a>
d00448a4:	4621      	mov	r1, r4
d00448a6:	4628      	mov	r0, r5
d00448a8:	f000 f80c 	bl	d00448c4 <__swsetup_r>
d00448ac:	2800      	cmp	r0, #0
d00448ae:	d0cb      	beq.n	d0044848 <__swbuf_r+0x28>
d00448b0:	f04f 37ff 	mov.w	r7, #4294967295	; 0xffffffff
d00448b4:	e7ea      	b.n	d004488c <__swbuf_r+0x6c>
d00448b6:	bf00      	nop
d00448b8:	d00461d8 	.word	0xd00461d8
d00448bc:	d00461f8 	.word	0xd00461f8
d00448c0:	d00461b8 	.word	0xd00461b8

d00448c4 <__swsetup_r>:
d00448c4:	4b32      	ldr	r3, [pc, #200]	; (d0044990 <__swsetup_r+0xcc>)
d00448c6:	b570      	push	{r4, r5, r6, lr}
d00448c8:	681d      	ldr	r5, [r3, #0]
d00448ca:	4606      	mov	r6, r0
d00448cc:	460c      	mov	r4, r1
d00448ce:	b125      	cbz	r5, d00448da <__swsetup_r+0x16>
d00448d0:	69ab      	ldr	r3, [r5, #24]
d00448d2:	b913      	cbnz	r3, d00448da <__swsetup_r+0x16>
d00448d4:	4628      	mov	r0, r5
d00448d6:	f000 f97d 	bl	d0044bd4 <__sinit>
d00448da:	4b2e      	ldr	r3, [pc, #184]	; (d0044994 <__swsetup_r+0xd0>)
d00448dc:	429c      	cmp	r4, r3
d00448de:	d10f      	bne.n	d0044900 <__swsetup_r+0x3c>
d00448e0:	686c      	ldr	r4, [r5, #4]
d00448e2:	89a3      	ldrh	r3, [r4, #12]
d00448e4:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
d00448e8:	0719      	lsls	r1, r3, #28
d00448ea:	d42c      	bmi.n	d0044946 <__swsetup_r+0x82>
d00448ec:	06dd      	lsls	r5, r3, #27
d00448ee:	d411      	bmi.n	d0044914 <__swsetup_r+0x50>
d00448f0:	2309      	movs	r3, #9
d00448f2:	6033      	str	r3, [r6, #0]
d00448f4:	f042 0340 	orr.w	r3, r2, #64	; 0x40
d00448f8:	81a3      	strh	r3, [r4, #12]
d00448fa:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d00448fe:	e03e      	b.n	d004497e <__swsetup_r+0xba>
d0044900:	4b25      	ldr	r3, [pc, #148]	; (d0044998 <__swsetup_r+0xd4>)
d0044902:	429c      	cmp	r4, r3
d0044904:	d101      	bne.n	d004490a <__swsetup_r+0x46>
d0044906:	68ac      	ldr	r4, [r5, #8]
d0044908:	e7eb      	b.n	d00448e2 <__swsetup_r+0x1e>
d004490a:	4b24      	ldr	r3, [pc, #144]	; (d004499c <__swsetup_r+0xd8>)
d004490c:	429c      	cmp	r4, r3
d004490e:	bf08      	it	eq
d0044910:	68ec      	ldreq	r4, [r5, #12]
d0044912:	e7e6      	b.n	d00448e2 <__swsetup_r+0x1e>
d0044914:	0758      	lsls	r0, r3, #29
d0044916:	d512      	bpl.n	d004493e <__swsetup_r+0x7a>
d0044918:	6b61      	ldr	r1, [r4, #52]	; 0x34
d004491a:	b141      	cbz	r1, d004492e <__swsetup_r+0x6a>
d004491c:	f104 0344 	add.w	r3, r4, #68	; 0x44
d0044920:	4299      	cmp	r1, r3
d0044922:	d002      	beq.n	d004492a <__swsetup_r+0x66>
d0044924:	4630      	mov	r0, r6
d0044926:	f7ff fd31 	bl	d004438c <_free_r>
d004492a:	2300      	movs	r3, #0
d004492c:	6363      	str	r3, [r4, #52]	; 0x34
d004492e:	89a3      	ldrh	r3, [r4, #12]
d0044930:	f023 0324 	bic.w	r3, r3, #36	; 0x24
d0044934:	81a3      	strh	r3, [r4, #12]
d0044936:	2300      	movs	r3, #0
d0044938:	6063      	str	r3, [r4, #4]
d004493a:	6923      	ldr	r3, [r4, #16]
d004493c:	6023      	str	r3, [r4, #0]
d004493e:	89a3      	ldrh	r3, [r4, #12]
d0044940:	f043 0308 	orr.w	r3, r3, #8
d0044944:	81a3      	strh	r3, [r4, #12]
d0044946:	6923      	ldr	r3, [r4, #16]
d0044948:	b94b      	cbnz	r3, d004495e <__swsetup_r+0x9a>
d004494a:	89a3      	ldrh	r3, [r4, #12]
d004494c:	f403 7320 	and.w	r3, r3, #640	; 0x280
d0044950:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
d0044954:	d003      	beq.n	d004495e <__swsetup_r+0x9a>
d0044956:	4621      	mov	r1, r4
d0044958:	4630      	mov	r0, r6
d004495a:	f000 f9ff 	bl	d0044d5c <__smakebuf_r>
d004495e:	89a0      	ldrh	r0, [r4, #12]
d0044960:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
d0044964:	f010 0301 	ands.w	r3, r0, #1
d0044968:	d00a      	beq.n	d0044980 <__swsetup_r+0xbc>
d004496a:	2300      	movs	r3, #0
d004496c:	60a3      	str	r3, [r4, #8]
d004496e:	6963      	ldr	r3, [r4, #20]
d0044970:	425b      	negs	r3, r3
d0044972:	61a3      	str	r3, [r4, #24]
d0044974:	6923      	ldr	r3, [r4, #16]
d0044976:	b943      	cbnz	r3, d004498a <__swsetup_r+0xc6>
d0044978:	f010 0080 	ands.w	r0, r0, #128	; 0x80
d004497c:	d1ba      	bne.n	d00448f4 <__swsetup_r+0x30>
d004497e:	bd70      	pop	{r4, r5, r6, pc}
d0044980:	0781      	lsls	r1, r0, #30
d0044982:	bf58      	it	pl
d0044984:	6963      	ldrpl	r3, [r4, #20]
d0044986:	60a3      	str	r3, [r4, #8]
d0044988:	e7f4      	b.n	d0044974 <__swsetup_r+0xb0>
d004498a:	2000      	movs	r0, #0
d004498c:	e7f7      	b.n	d004497e <__swsetup_r+0xba>
d004498e:	bf00      	nop
d0044990:	d004628c 	.word	0xd004628c
d0044994:	d00461d8 	.word	0xd00461d8
d0044998:	d00461f8 	.word	0xd00461f8
d004499c:	d00461b8 	.word	0xd00461b8

d00449a0 <__sflush_r>:
d00449a0:	898a      	ldrh	r2, [r1, #12]
d00449a2:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
d00449a6:	4605      	mov	r5, r0
d00449a8:	0710      	lsls	r0, r2, #28
d00449aa:	460c      	mov	r4, r1
d00449ac:	d458      	bmi.n	d0044a60 <__sflush_r+0xc0>
d00449ae:	684b      	ldr	r3, [r1, #4]
d00449b0:	2b00      	cmp	r3, #0
d00449b2:	dc05      	bgt.n	d00449c0 <__sflush_r+0x20>
d00449b4:	6c0b      	ldr	r3, [r1, #64]	; 0x40
d00449b6:	2b00      	cmp	r3, #0
d00449b8:	dc02      	bgt.n	d00449c0 <__sflush_r+0x20>
d00449ba:	2000      	movs	r0, #0
d00449bc:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
d00449c0:	6ae6      	ldr	r6, [r4, #44]	; 0x2c
d00449c2:	2e00      	cmp	r6, #0
d00449c4:	d0f9      	beq.n	d00449ba <__sflush_r+0x1a>
d00449c6:	2300      	movs	r3, #0
d00449c8:	f412 5280 	ands.w	r2, r2, #4096	; 0x1000
d00449cc:	682f      	ldr	r7, [r5, #0]
d00449ce:	602b      	str	r3, [r5, #0]
d00449d0:	d032      	beq.n	d0044a38 <__sflush_r+0x98>
d00449d2:	6d60      	ldr	r0, [r4, #84]	; 0x54
d00449d4:	89a3      	ldrh	r3, [r4, #12]
d00449d6:	075a      	lsls	r2, r3, #29
d00449d8:	d505      	bpl.n	d00449e6 <__sflush_r+0x46>
d00449da:	6863      	ldr	r3, [r4, #4]
d00449dc:	1ac0      	subs	r0, r0, r3
d00449de:	6b63      	ldr	r3, [r4, #52]	; 0x34
d00449e0:	b10b      	cbz	r3, d00449e6 <__sflush_r+0x46>
d00449e2:	6c23      	ldr	r3, [r4, #64]	; 0x40
d00449e4:	1ac0      	subs	r0, r0, r3
d00449e6:	2300      	movs	r3, #0
d00449e8:	4602      	mov	r2, r0
d00449ea:	6ae6      	ldr	r6, [r4, #44]	; 0x2c
d00449ec:	6a21      	ldr	r1, [r4, #32]
d00449ee:	4628      	mov	r0, r5
d00449f0:	47b0      	blx	r6
d00449f2:	1c43      	adds	r3, r0, #1
d00449f4:	89a3      	ldrh	r3, [r4, #12]
d00449f6:	d106      	bne.n	d0044a06 <__sflush_r+0x66>
d00449f8:	6829      	ldr	r1, [r5, #0]
d00449fa:	291d      	cmp	r1, #29
d00449fc:	d82c      	bhi.n	d0044a58 <__sflush_r+0xb8>
d00449fe:	4a2a      	ldr	r2, [pc, #168]	; (d0044aa8 <__sflush_r+0x108>)
d0044a00:	40ca      	lsrs	r2, r1
d0044a02:	07d6      	lsls	r6, r2, #31
d0044a04:	d528      	bpl.n	d0044a58 <__sflush_r+0xb8>
d0044a06:	2200      	movs	r2, #0
d0044a08:	6062      	str	r2, [r4, #4]
d0044a0a:	04d9      	lsls	r1, r3, #19
d0044a0c:	6922      	ldr	r2, [r4, #16]
d0044a0e:	6022      	str	r2, [r4, #0]
d0044a10:	d504      	bpl.n	d0044a1c <__sflush_r+0x7c>
d0044a12:	1c42      	adds	r2, r0, #1
d0044a14:	d101      	bne.n	d0044a1a <__sflush_r+0x7a>
d0044a16:	682b      	ldr	r3, [r5, #0]
d0044a18:	b903      	cbnz	r3, d0044a1c <__sflush_r+0x7c>
d0044a1a:	6560      	str	r0, [r4, #84]	; 0x54
d0044a1c:	6b61      	ldr	r1, [r4, #52]	; 0x34
d0044a1e:	602f      	str	r7, [r5, #0]
d0044a20:	2900      	cmp	r1, #0
d0044a22:	d0ca      	beq.n	d00449ba <__sflush_r+0x1a>
d0044a24:	f104 0344 	add.w	r3, r4, #68	; 0x44
d0044a28:	4299      	cmp	r1, r3
d0044a2a:	d002      	beq.n	d0044a32 <__sflush_r+0x92>
d0044a2c:	4628      	mov	r0, r5
d0044a2e:	f7ff fcad 	bl	d004438c <_free_r>
d0044a32:	2000      	movs	r0, #0
d0044a34:	6360      	str	r0, [r4, #52]	; 0x34
d0044a36:	e7c1      	b.n	d00449bc <__sflush_r+0x1c>
d0044a38:	6a21      	ldr	r1, [r4, #32]
d0044a3a:	2301      	movs	r3, #1
d0044a3c:	4628      	mov	r0, r5
d0044a3e:	47b0      	blx	r6
d0044a40:	1c41      	adds	r1, r0, #1
d0044a42:	d1c7      	bne.n	d00449d4 <__sflush_r+0x34>
d0044a44:	682b      	ldr	r3, [r5, #0]
d0044a46:	2b00      	cmp	r3, #0
d0044a48:	d0c4      	beq.n	d00449d4 <__sflush_r+0x34>
d0044a4a:	2b1d      	cmp	r3, #29
d0044a4c:	d001      	beq.n	d0044a52 <__sflush_r+0xb2>
d0044a4e:	2b16      	cmp	r3, #22
d0044a50:	d101      	bne.n	d0044a56 <__sflush_r+0xb6>
d0044a52:	602f      	str	r7, [r5, #0]
d0044a54:	e7b1      	b.n	d00449ba <__sflush_r+0x1a>
d0044a56:	89a3      	ldrh	r3, [r4, #12]
d0044a58:	f043 0340 	orr.w	r3, r3, #64	; 0x40
d0044a5c:	81a3      	strh	r3, [r4, #12]
d0044a5e:	e7ad      	b.n	d00449bc <__sflush_r+0x1c>
d0044a60:	690f      	ldr	r7, [r1, #16]
d0044a62:	2f00      	cmp	r7, #0
d0044a64:	d0a9      	beq.n	d00449ba <__sflush_r+0x1a>
d0044a66:	0793      	lsls	r3, r2, #30
d0044a68:	680e      	ldr	r6, [r1, #0]
d0044a6a:	bf08      	it	eq
d0044a6c:	694b      	ldreq	r3, [r1, #20]
d0044a6e:	600f      	str	r7, [r1, #0]
d0044a70:	bf18      	it	ne
d0044a72:	2300      	movne	r3, #0
d0044a74:	eba6 0807 	sub.w	r8, r6, r7
d0044a78:	608b      	str	r3, [r1, #8]
d0044a7a:	f1b8 0f00 	cmp.w	r8, #0
d0044a7e:	dd9c      	ble.n	d00449ba <__sflush_r+0x1a>
d0044a80:	6a21      	ldr	r1, [r4, #32]
d0044a82:	6aa6      	ldr	r6, [r4, #40]	; 0x28
d0044a84:	4643      	mov	r3, r8
d0044a86:	463a      	mov	r2, r7
d0044a88:	4628      	mov	r0, r5
d0044a8a:	47b0      	blx	r6
d0044a8c:	2800      	cmp	r0, #0
d0044a8e:	dc06      	bgt.n	d0044a9e <__sflush_r+0xfe>
d0044a90:	89a3      	ldrh	r3, [r4, #12]
d0044a92:	f043 0340 	orr.w	r3, r3, #64	; 0x40
d0044a96:	81a3      	strh	r3, [r4, #12]
d0044a98:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d0044a9c:	e78e      	b.n	d00449bc <__sflush_r+0x1c>
d0044a9e:	4407      	add	r7, r0
d0044aa0:	eba8 0800 	sub.w	r8, r8, r0
d0044aa4:	e7e9      	b.n	d0044a7a <__sflush_r+0xda>
d0044aa6:	bf00      	nop
d0044aa8:	20400001 	.word	0x20400001

d0044aac <_fflush_r>:
d0044aac:	b538      	push	{r3, r4, r5, lr}
d0044aae:	690b      	ldr	r3, [r1, #16]
d0044ab0:	4605      	mov	r5, r0
d0044ab2:	460c      	mov	r4, r1
d0044ab4:	b913      	cbnz	r3, d0044abc <_fflush_r+0x10>
d0044ab6:	2500      	movs	r5, #0
d0044ab8:	4628      	mov	r0, r5
d0044aba:	bd38      	pop	{r3, r4, r5, pc}
d0044abc:	b118      	cbz	r0, d0044ac6 <_fflush_r+0x1a>
d0044abe:	6983      	ldr	r3, [r0, #24]
d0044ac0:	b90b      	cbnz	r3, d0044ac6 <_fflush_r+0x1a>
d0044ac2:	f000 f887 	bl	d0044bd4 <__sinit>
d0044ac6:	4b14      	ldr	r3, [pc, #80]	; (d0044b18 <_fflush_r+0x6c>)
d0044ac8:	429c      	cmp	r4, r3
d0044aca:	d11b      	bne.n	d0044b04 <_fflush_r+0x58>
d0044acc:	686c      	ldr	r4, [r5, #4]
d0044ace:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
d0044ad2:	2b00      	cmp	r3, #0
d0044ad4:	d0ef      	beq.n	d0044ab6 <_fflush_r+0xa>
d0044ad6:	6e62      	ldr	r2, [r4, #100]	; 0x64
d0044ad8:	07d0      	lsls	r0, r2, #31
d0044ada:	d404      	bmi.n	d0044ae6 <_fflush_r+0x3a>
d0044adc:	0599      	lsls	r1, r3, #22
d0044ade:	d402      	bmi.n	d0044ae6 <_fflush_r+0x3a>
d0044ae0:	6da0      	ldr	r0, [r4, #88]	; 0x58
d0044ae2:	f000 f915 	bl	d0044d10 <__retarget_lock_acquire_recursive>
d0044ae6:	4628      	mov	r0, r5
d0044ae8:	4621      	mov	r1, r4
d0044aea:	f7ff ff59 	bl	d00449a0 <__sflush_r>
d0044aee:	6e63      	ldr	r3, [r4, #100]	; 0x64
d0044af0:	07da      	lsls	r2, r3, #31
d0044af2:	4605      	mov	r5, r0
d0044af4:	d4e0      	bmi.n	d0044ab8 <_fflush_r+0xc>
d0044af6:	89a3      	ldrh	r3, [r4, #12]
d0044af8:	059b      	lsls	r3, r3, #22
d0044afa:	d4dd      	bmi.n	d0044ab8 <_fflush_r+0xc>
d0044afc:	6da0      	ldr	r0, [r4, #88]	; 0x58
d0044afe:	f000 f908 	bl	d0044d12 <__retarget_lock_release_recursive>
d0044b02:	e7d9      	b.n	d0044ab8 <_fflush_r+0xc>
d0044b04:	4b05      	ldr	r3, [pc, #20]	; (d0044b1c <_fflush_r+0x70>)
d0044b06:	429c      	cmp	r4, r3
d0044b08:	d101      	bne.n	d0044b0e <_fflush_r+0x62>
d0044b0a:	68ac      	ldr	r4, [r5, #8]
d0044b0c:	e7df      	b.n	d0044ace <_fflush_r+0x22>
d0044b0e:	4b04      	ldr	r3, [pc, #16]	; (d0044b20 <_fflush_r+0x74>)
d0044b10:	429c      	cmp	r4, r3
d0044b12:	bf08      	it	eq
d0044b14:	68ec      	ldreq	r4, [r5, #12]
d0044b16:	e7da      	b.n	d0044ace <_fflush_r+0x22>
d0044b18:	d00461d8 	.word	0xd00461d8
d0044b1c:	d00461f8 	.word	0xd00461f8
d0044b20:	d00461b8 	.word	0xd00461b8

d0044b24 <std>:
d0044b24:	2300      	movs	r3, #0
d0044b26:	b510      	push	{r4, lr}
d0044b28:	4604      	mov	r4, r0
d0044b2a:	e9c0 3300 	strd	r3, r3, [r0]
d0044b2e:	e9c0 3304 	strd	r3, r3, [r0, #16]
d0044b32:	6083      	str	r3, [r0, #8]
d0044b34:	8181      	strh	r1, [r0, #12]
d0044b36:	6643      	str	r3, [r0, #100]	; 0x64
d0044b38:	81c2      	strh	r2, [r0, #14]
d0044b3a:	6183      	str	r3, [r0, #24]
d0044b3c:	4619      	mov	r1, r3
d0044b3e:	2208      	movs	r2, #8
d0044b40:	305c      	adds	r0, #92	; 0x5c
d0044b42:	f7ff fc1b 	bl	d004437c <memset>
d0044b46:	4b05      	ldr	r3, [pc, #20]	; (d0044b5c <std+0x38>)
d0044b48:	6263      	str	r3, [r4, #36]	; 0x24
d0044b4a:	4b05      	ldr	r3, [pc, #20]	; (d0044b60 <std+0x3c>)
d0044b4c:	62a3      	str	r3, [r4, #40]	; 0x28
d0044b4e:	4b05      	ldr	r3, [pc, #20]	; (d0044b64 <std+0x40>)
d0044b50:	62e3      	str	r3, [r4, #44]	; 0x2c
d0044b52:	4b05      	ldr	r3, [pc, #20]	; (d0044b68 <std+0x44>)
d0044b54:	6224      	str	r4, [r4, #32]
d0044b56:	6323      	str	r3, [r4, #48]	; 0x30
d0044b58:	bd10      	pop	{r4, pc}
d0044b5a:	bf00      	nop
d0044b5c:	d0045689 	.word	0xd0045689
d0044b60:	d00456ab 	.word	0xd00456ab
d0044b64:	d00456e3 	.word	0xd00456e3
d0044b68:	d0045707 	.word	0xd0045707

d0044b6c <_cleanup_r>:
d0044b6c:	4901      	ldr	r1, [pc, #4]	; (d0044b74 <_cleanup_r+0x8>)
d0044b6e:	f000 b8af 	b.w	d0044cd0 <_fwalk_reent>
d0044b72:	bf00      	nop
d0044b74:	d0044aad 	.word	0xd0044aad

d0044b78 <__sfmoreglue>:
d0044b78:	b570      	push	{r4, r5, r6, lr}
d0044b7a:	1e4a      	subs	r2, r1, #1
d0044b7c:	2568      	movs	r5, #104	; 0x68
d0044b7e:	4355      	muls	r5, r2
d0044b80:	460e      	mov	r6, r1
d0044b82:	f105 0174 	add.w	r1, r5, #116	; 0x74
d0044b86:	f7ff fc51 	bl	d004442c <_malloc_r>
d0044b8a:	4604      	mov	r4, r0
d0044b8c:	b140      	cbz	r0, d0044ba0 <__sfmoreglue+0x28>
d0044b8e:	2100      	movs	r1, #0
d0044b90:	e9c0 1600 	strd	r1, r6, [r0]
d0044b94:	300c      	adds	r0, #12
d0044b96:	60a0      	str	r0, [r4, #8]
d0044b98:	f105 0268 	add.w	r2, r5, #104	; 0x68
d0044b9c:	f7ff fbee 	bl	d004437c <memset>
d0044ba0:	4620      	mov	r0, r4
d0044ba2:	bd70      	pop	{r4, r5, r6, pc}

d0044ba4 <__sfp_lock_acquire>:
d0044ba4:	4801      	ldr	r0, [pc, #4]	; (d0044bac <__sfp_lock_acquire+0x8>)
d0044ba6:	f000 b8b3 	b.w	d0044d10 <__retarget_lock_acquire_recursive>
d0044baa:	bf00      	nop
d0044bac:	d0047b18 	.word	0xd0047b18

d0044bb0 <__sfp_lock_release>:
d0044bb0:	4801      	ldr	r0, [pc, #4]	; (d0044bb8 <__sfp_lock_release+0x8>)
d0044bb2:	f000 b8ae 	b.w	d0044d12 <__retarget_lock_release_recursive>
d0044bb6:	bf00      	nop
d0044bb8:	d0047b18 	.word	0xd0047b18

d0044bbc <__sinit_lock_acquire>:
d0044bbc:	4801      	ldr	r0, [pc, #4]	; (d0044bc4 <__sinit_lock_acquire+0x8>)
d0044bbe:	f000 b8a7 	b.w	d0044d10 <__retarget_lock_acquire_recursive>
d0044bc2:	bf00      	nop
d0044bc4:	d0047b13 	.word	0xd0047b13

d0044bc8 <__sinit_lock_release>:
d0044bc8:	4801      	ldr	r0, [pc, #4]	; (d0044bd0 <__sinit_lock_release+0x8>)
d0044bca:	f000 b8a2 	b.w	d0044d12 <__retarget_lock_release_recursive>
d0044bce:	bf00      	nop
d0044bd0:	d0047b13 	.word	0xd0047b13

d0044bd4 <__sinit>:
d0044bd4:	b510      	push	{r4, lr}
d0044bd6:	4604      	mov	r4, r0
d0044bd8:	f7ff fff0 	bl	d0044bbc <__sinit_lock_acquire>
d0044bdc:	69a3      	ldr	r3, [r4, #24]
d0044bde:	b11b      	cbz	r3, d0044be8 <__sinit+0x14>
d0044be0:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
d0044be4:	f7ff bff0 	b.w	d0044bc8 <__sinit_lock_release>
d0044be8:	e9c4 3312 	strd	r3, r3, [r4, #72]	; 0x48
d0044bec:	6523      	str	r3, [r4, #80]	; 0x50
d0044bee:	4b13      	ldr	r3, [pc, #76]	; (d0044c3c <__sinit+0x68>)
d0044bf0:	4a13      	ldr	r2, [pc, #76]	; (d0044c40 <__sinit+0x6c>)
d0044bf2:	681b      	ldr	r3, [r3, #0]
d0044bf4:	62a2      	str	r2, [r4, #40]	; 0x28
d0044bf6:	42a3      	cmp	r3, r4
d0044bf8:	bf04      	itt	eq
d0044bfa:	2301      	moveq	r3, #1
d0044bfc:	61a3      	streq	r3, [r4, #24]
d0044bfe:	4620      	mov	r0, r4
d0044c00:	f000 f820 	bl	d0044c44 <__sfp>
d0044c04:	6060      	str	r0, [r4, #4]
d0044c06:	4620      	mov	r0, r4
d0044c08:	f000 f81c 	bl	d0044c44 <__sfp>
d0044c0c:	60a0      	str	r0, [r4, #8]
d0044c0e:	4620      	mov	r0, r4
d0044c10:	f000 f818 	bl	d0044c44 <__sfp>
d0044c14:	2200      	movs	r2, #0
d0044c16:	60e0      	str	r0, [r4, #12]
d0044c18:	2104      	movs	r1, #4
d0044c1a:	6860      	ldr	r0, [r4, #4]
d0044c1c:	f7ff ff82 	bl	d0044b24 <std>
d0044c20:	68a0      	ldr	r0, [r4, #8]
d0044c22:	2201      	movs	r2, #1
d0044c24:	2109      	movs	r1, #9
d0044c26:	f7ff ff7d 	bl	d0044b24 <std>
d0044c2a:	68e0      	ldr	r0, [r4, #12]
d0044c2c:	2202      	movs	r2, #2
d0044c2e:	2112      	movs	r1, #18
d0044c30:	f7ff ff78 	bl	d0044b24 <std>
d0044c34:	2301      	movs	r3, #1
d0044c36:	61a3      	str	r3, [r4, #24]
d0044c38:	e7d2      	b.n	d0044be0 <__sinit+0xc>
d0044c3a:	bf00      	nop
d0044c3c:	d00461b4 	.word	0xd00461b4
d0044c40:	d0044b6d 	.word	0xd0044b6d

d0044c44 <__sfp>:
d0044c44:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d0044c46:	4607      	mov	r7, r0
d0044c48:	f7ff ffac 	bl	d0044ba4 <__sfp_lock_acquire>
d0044c4c:	4b1e      	ldr	r3, [pc, #120]	; (d0044cc8 <__sfp+0x84>)
d0044c4e:	681e      	ldr	r6, [r3, #0]
d0044c50:	69b3      	ldr	r3, [r6, #24]
d0044c52:	b913      	cbnz	r3, d0044c5a <__sfp+0x16>
d0044c54:	4630      	mov	r0, r6
d0044c56:	f7ff ffbd 	bl	d0044bd4 <__sinit>
d0044c5a:	3648      	adds	r6, #72	; 0x48
d0044c5c:	e9d6 3401 	ldrd	r3, r4, [r6, #4]
d0044c60:	3b01      	subs	r3, #1
d0044c62:	d503      	bpl.n	d0044c6c <__sfp+0x28>
d0044c64:	6833      	ldr	r3, [r6, #0]
d0044c66:	b30b      	cbz	r3, d0044cac <__sfp+0x68>
d0044c68:	6836      	ldr	r6, [r6, #0]
d0044c6a:	e7f7      	b.n	d0044c5c <__sfp+0x18>
d0044c6c:	f9b4 500c 	ldrsh.w	r5, [r4, #12]
d0044c70:	b9d5      	cbnz	r5, d0044ca8 <__sfp+0x64>
d0044c72:	4b16      	ldr	r3, [pc, #88]	; (d0044ccc <__sfp+0x88>)
d0044c74:	60e3      	str	r3, [r4, #12]
d0044c76:	f104 0058 	add.w	r0, r4, #88	; 0x58
d0044c7a:	6665      	str	r5, [r4, #100]	; 0x64
d0044c7c:	f000 f847 	bl	d0044d0e <__retarget_lock_init_recursive>
d0044c80:	f7ff ff96 	bl	d0044bb0 <__sfp_lock_release>
d0044c84:	e9c4 5501 	strd	r5, r5, [r4, #4]
d0044c88:	e9c4 5504 	strd	r5, r5, [r4, #16]
d0044c8c:	6025      	str	r5, [r4, #0]
d0044c8e:	61a5      	str	r5, [r4, #24]
d0044c90:	2208      	movs	r2, #8
d0044c92:	4629      	mov	r1, r5
d0044c94:	f104 005c 	add.w	r0, r4, #92	; 0x5c
d0044c98:	f7ff fb70 	bl	d004437c <memset>
d0044c9c:	e9c4 550d 	strd	r5, r5, [r4, #52]	; 0x34
d0044ca0:	e9c4 5512 	strd	r5, r5, [r4, #72]	; 0x48
d0044ca4:	4620      	mov	r0, r4
d0044ca6:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d0044ca8:	3468      	adds	r4, #104	; 0x68
d0044caa:	e7d9      	b.n	d0044c60 <__sfp+0x1c>
d0044cac:	2104      	movs	r1, #4
d0044cae:	4638      	mov	r0, r7
d0044cb0:	f7ff ff62 	bl	d0044b78 <__sfmoreglue>
d0044cb4:	4604      	mov	r4, r0
d0044cb6:	6030      	str	r0, [r6, #0]
d0044cb8:	2800      	cmp	r0, #0
d0044cba:	d1d5      	bne.n	d0044c68 <__sfp+0x24>
d0044cbc:	f7ff ff78 	bl	d0044bb0 <__sfp_lock_release>
d0044cc0:	230c      	movs	r3, #12
d0044cc2:	603b      	str	r3, [r7, #0]
d0044cc4:	e7ee      	b.n	d0044ca4 <__sfp+0x60>
d0044cc6:	bf00      	nop
d0044cc8:	d00461b4 	.word	0xd00461b4
d0044ccc:	ffff0001 	.word	0xffff0001

d0044cd0 <_fwalk_reent>:
d0044cd0:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
d0044cd4:	4606      	mov	r6, r0
d0044cd6:	4688      	mov	r8, r1
d0044cd8:	f100 0448 	add.w	r4, r0, #72	; 0x48
d0044cdc:	2700      	movs	r7, #0
d0044cde:	e9d4 9501 	ldrd	r9, r5, [r4, #4]
d0044ce2:	f1b9 0901 	subs.w	r9, r9, #1
d0044ce6:	d505      	bpl.n	d0044cf4 <_fwalk_reent+0x24>
d0044ce8:	6824      	ldr	r4, [r4, #0]
d0044cea:	2c00      	cmp	r4, #0
d0044cec:	d1f7      	bne.n	d0044cde <_fwalk_reent+0xe>
d0044cee:	4638      	mov	r0, r7
d0044cf0:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
d0044cf4:	89ab      	ldrh	r3, [r5, #12]
d0044cf6:	2b01      	cmp	r3, #1
d0044cf8:	d907      	bls.n	d0044d0a <_fwalk_reent+0x3a>
d0044cfa:	f9b5 300e 	ldrsh.w	r3, [r5, #14]
d0044cfe:	3301      	adds	r3, #1
d0044d00:	d003      	beq.n	d0044d0a <_fwalk_reent+0x3a>
d0044d02:	4629      	mov	r1, r5
d0044d04:	4630      	mov	r0, r6
d0044d06:	47c0      	blx	r8
d0044d08:	4307      	orrs	r7, r0
d0044d0a:	3568      	adds	r5, #104	; 0x68
d0044d0c:	e7e9      	b.n	d0044ce2 <_fwalk_reent+0x12>

d0044d0e <__retarget_lock_init_recursive>:
d0044d0e:	4770      	bx	lr

d0044d10 <__retarget_lock_acquire_recursive>:
d0044d10:	4770      	bx	lr

d0044d12 <__retarget_lock_release_recursive>:
d0044d12:	4770      	bx	lr

d0044d14 <__swhatbuf_r>:
d0044d14:	b570      	push	{r4, r5, r6, lr}
d0044d16:	460e      	mov	r6, r1
d0044d18:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d0044d1c:	2900      	cmp	r1, #0
d0044d1e:	b096      	sub	sp, #88	; 0x58
d0044d20:	4614      	mov	r4, r2
d0044d22:	461d      	mov	r5, r3
d0044d24:	da07      	bge.n	d0044d36 <__swhatbuf_r+0x22>
d0044d26:	2300      	movs	r3, #0
d0044d28:	602b      	str	r3, [r5, #0]
d0044d2a:	89b3      	ldrh	r3, [r6, #12]
d0044d2c:	061a      	lsls	r2, r3, #24
d0044d2e:	d410      	bmi.n	d0044d52 <__swhatbuf_r+0x3e>
d0044d30:	f44f 6380 	mov.w	r3, #1024	; 0x400
d0044d34:	e00e      	b.n	d0044d54 <__swhatbuf_r+0x40>
d0044d36:	466a      	mov	r2, sp
d0044d38:	f000 fcfa 	bl	d0045730 <_fstat_r>
d0044d3c:	2800      	cmp	r0, #0
d0044d3e:	dbf2      	blt.n	d0044d26 <__swhatbuf_r+0x12>
d0044d40:	9a01      	ldr	r2, [sp, #4]
d0044d42:	f402 4270 	and.w	r2, r2, #61440	; 0xf000
d0044d46:	f5a2 5300 	sub.w	r3, r2, #8192	; 0x2000
d0044d4a:	425a      	negs	r2, r3
d0044d4c:	415a      	adcs	r2, r3
d0044d4e:	602a      	str	r2, [r5, #0]
d0044d50:	e7ee      	b.n	d0044d30 <__swhatbuf_r+0x1c>
d0044d52:	2340      	movs	r3, #64	; 0x40
d0044d54:	2000      	movs	r0, #0
d0044d56:	6023      	str	r3, [r4, #0]
d0044d58:	b016      	add	sp, #88	; 0x58
d0044d5a:	bd70      	pop	{r4, r5, r6, pc}

d0044d5c <__smakebuf_r>:
d0044d5c:	898b      	ldrh	r3, [r1, #12]
d0044d5e:	b573      	push	{r0, r1, r4, r5, r6, lr}
d0044d60:	079d      	lsls	r5, r3, #30
d0044d62:	4606      	mov	r6, r0
d0044d64:	460c      	mov	r4, r1
d0044d66:	d507      	bpl.n	d0044d78 <__smakebuf_r+0x1c>
d0044d68:	f104 0347 	add.w	r3, r4, #71	; 0x47
d0044d6c:	6023      	str	r3, [r4, #0]
d0044d6e:	6123      	str	r3, [r4, #16]
d0044d70:	2301      	movs	r3, #1
d0044d72:	6163      	str	r3, [r4, #20]
d0044d74:	b002      	add	sp, #8
d0044d76:	bd70      	pop	{r4, r5, r6, pc}
d0044d78:	ab01      	add	r3, sp, #4
d0044d7a:	466a      	mov	r2, sp
d0044d7c:	f7ff ffca 	bl	d0044d14 <__swhatbuf_r>
d0044d80:	9900      	ldr	r1, [sp, #0]
d0044d82:	4605      	mov	r5, r0
d0044d84:	4630      	mov	r0, r6
d0044d86:	f7ff fb51 	bl	d004442c <_malloc_r>
d0044d8a:	b948      	cbnz	r0, d0044da0 <__smakebuf_r+0x44>
d0044d8c:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
d0044d90:	059a      	lsls	r2, r3, #22
d0044d92:	d4ef      	bmi.n	d0044d74 <__smakebuf_r+0x18>
d0044d94:	f023 0303 	bic.w	r3, r3, #3
d0044d98:	f043 0302 	orr.w	r3, r3, #2
d0044d9c:	81a3      	strh	r3, [r4, #12]
d0044d9e:	e7e3      	b.n	d0044d68 <__smakebuf_r+0xc>
d0044da0:	4b0d      	ldr	r3, [pc, #52]	; (d0044dd8 <__smakebuf_r+0x7c>)
d0044da2:	62b3      	str	r3, [r6, #40]	; 0x28
d0044da4:	89a3      	ldrh	r3, [r4, #12]
d0044da6:	6020      	str	r0, [r4, #0]
d0044da8:	f043 0380 	orr.w	r3, r3, #128	; 0x80
d0044dac:	81a3      	strh	r3, [r4, #12]
d0044dae:	9b00      	ldr	r3, [sp, #0]
d0044db0:	6163      	str	r3, [r4, #20]
d0044db2:	9b01      	ldr	r3, [sp, #4]
d0044db4:	6120      	str	r0, [r4, #16]
d0044db6:	b15b      	cbz	r3, d0044dd0 <__smakebuf_r+0x74>
d0044db8:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
d0044dbc:	4630      	mov	r0, r6
d0044dbe:	f000 fcc9 	bl	d0045754 <_isatty_r>
d0044dc2:	b128      	cbz	r0, d0044dd0 <__smakebuf_r+0x74>
d0044dc4:	89a3      	ldrh	r3, [r4, #12]
d0044dc6:	f023 0303 	bic.w	r3, r3, #3
d0044dca:	f043 0301 	orr.w	r3, r3, #1
d0044dce:	81a3      	strh	r3, [r4, #12]
d0044dd0:	89a0      	ldrh	r0, [r4, #12]
d0044dd2:	4305      	orrs	r5, r0
d0044dd4:	81a5      	strh	r5, [r4, #12]
d0044dd6:	e7cd      	b.n	d0044d74 <__smakebuf_r+0x18>
d0044dd8:	d0044b6d 	.word	0xd0044b6d

d0044ddc <__malloc_lock>:
d0044ddc:	4801      	ldr	r0, [pc, #4]	; (d0044de4 <__malloc_lock+0x8>)
d0044dde:	f7ff bf97 	b.w	d0044d10 <__retarget_lock_acquire_recursive>
d0044de2:	bf00      	nop
d0044de4:	d0047b14 	.word	0xd0047b14

d0044de8 <__malloc_unlock>:
d0044de8:	4801      	ldr	r0, [pc, #4]	; (d0044df0 <__malloc_unlock+0x8>)
d0044dea:	f7ff bf92 	b.w	d0044d12 <__retarget_lock_release_recursive>
d0044dee:	bf00      	nop
d0044df0:	d0047b14 	.word	0xd0047b14

d0044df4 <__ssputs_r>:
d0044df4:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
d0044df8:	688e      	ldr	r6, [r1, #8]
d0044dfa:	429e      	cmp	r6, r3
d0044dfc:	4682      	mov	sl, r0
d0044dfe:	460c      	mov	r4, r1
d0044e00:	4690      	mov	r8, r2
d0044e02:	461f      	mov	r7, r3
d0044e04:	d838      	bhi.n	d0044e78 <__ssputs_r+0x84>
d0044e06:	898a      	ldrh	r2, [r1, #12]
d0044e08:	f412 6f90 	tst.w	r2, #1152	; 0x480
d0044e0c:	d032      	beq.n	d0044e74 <__ssputs_r+0x80>
d0044e0e:	6825      	ldr	r5, [r4, #0]
d0044e10:	6909      	ldr	r1, [r1, #16]
d0044e12:	eba5 0901 	sub.w	r9, r5, r1
d0044e16:	6965      	ldr	r5, [r4, #20]
d0044e18:	eb05 0545 	add.w	r5, r5, r5, lsl #1
d0044e1c:	eb05 75d5 	add.w	r5, r5, r5, lsr #31
d0044e20:	3301      	adds	r3, #1
d0044e22:	444b      	add	r3, r9
d0044e24:	106d      	asrs	r5, r5, #1
d0044e26:	429d      	cmp	r5, r3
d0044e28:	bf38      	it	cc
d0044e2a:	461d      	movcc	r5, r3
d0044e2c:	0553      	lsls	r3, r2, #21
d0044e2e:	d531      	bpl.n	d0044e94 <__ssputs_r+0xa0>
d0044e30:	4629      	mov	r1, r5
d0044e32:	f7ff fafb 	bl	d004442c <_malloc_r>
d0044e36:	4606      	mov	r6, r0
d0044e38:	b950      	cbnz	r0, d0044e50 <__ssputs_r+0x5c>
d0044e3a:	230c      	movs	r3, #12
d0044e3c:	f8ca 3000 	str.w	r3, [sl]
d0044e40:	89a3      	ldrh	r3, [r4, #12]
d0044e42:	f043 0340 	orr.w	r3, r3, #64	; 0x40
d0044e46:	81a3      	strh	r3, [r4, #12]
d0044e48:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d0044e4c:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
d0044e50:	6921      	ldr	r1, [r4, #16]
d0044e52:	464a      	mov	r2, r9
d0044e54:	f000 fcf4 	bl	d0045840 <memcpy>
d0044e58:	89a3      	ldrh	r3, [r4, #12]
d0044e5a:	f423 6390 	bic.w	r3, r3, #1152	; 0x480
d0044e5e:	f043 0380 	orr.w	r3, r3, #128	; 0x80
d0044e62:	81a3      	strh	r3, [r4, #12]
d0044e64:	6126      	str	r6, [r4, #16]
d0044e66:	6165      	str	r5, [r4, #20]
d0044e68:	444e      	add	r6, r9
d0044e6a:	eba5 0509 	sub.w	r5, r5, r9
d0044e6e:	6026      	str	r6, [r4, #0]
d0044e70:	60a5      	str	r5, [r4, #8]
d0044e72:	463e      	mov	r6, r7
d0044e74:	42be      	cmp	r6, r7
d0044e76:	d900      	bls.n	d0044e7a <__ssputs_r+0x86>
d0044e78:	463e      	mov	r6, r7
d0044e7a:	4632      	mov	r2, r6
d0044e7c:	6820      	ldr	r0, [r4, #0]
d0044e7e:	4641      	mov	r1, r8
d0044e80:	f000 fcec 	bl	d004585c <memmove>
d0044e84:	68a3      	ldr	r3, [r4, #8]
d0044e86:	6822      	ldr	r2, [r4, #0]
d0044e88:	1b9b      	subs	r3, r3, r6
d0044e8a:	4432      	add	r2, r6
d0044e8c:	60a3      	str	r3, [r4, #8]
d0044e8e:	6022      	str	r2, [r4, #0]
d0044e90:	2000      	movs	r0, #0
d0044e92:	e7db      	b.n	d0044e4c <__ssputs_r+0x58>
d0044e94:	462a      	mov	r2, r5
d0044e96:	f000 fcfb 	bl	d0045890 <_realloc_r>
d0044e9a:	4606      	mov	r6, r0
d0044e9c:	2800      	cmp	r0, #0
d0044e9e:	d1e1      	bne.n	d0044e64 <__ssputs_r+0x70>
d0044ea0:	6921      	ldr	r1, [r4, #16]
d0044ea2:	4650      	mov	r0, sl
d0044ea4:	f7ff fa72 	bl	d004438c <_free_r>
d0044ea8:	e7c7      	b.n	d0044e3a <__ssputs_r+0x46>
	...

d0044eac <_svfiprintf_r>:
d0044eac:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0044eb0:	4698      	mov	r8, r3
d0044eb2:	898b      	ldrh	r3, [r1, #12]
d0044eb4:	061b      	lsls	r3, r3, #24
d0044eb6:	b09d      	sub	sp, #116	; 0x74
d0044eb8:	4607      	mov	r7, r0
d0044eba:	460d      	mov	r5, r1
d0044ebc:	4614      	mov	r4, r2
d0044ebe:	d50e      	bpl.n	d0044ede <_svfiprintf_r+0x32>
d0044ec0:	690b      	ldr	r3, [r1, #16]
d0044ec2:	b963      	cbnz	r3, d0044ede <_svfiprintf_r+0x32>
d0044ec4:	2140      	movs	r1, #64	; 0x40
d0044ec6:	f7ff fab1 	bl	d004442c <_malloc_r>
d0044eca:	6028      	str	r0, [r5, #0]
d0044ecc:	6128      	str	r0, [r5, #16]
d0044ece:	b920      	cbnz	r0, d0044eda <_svfiprintf_r+0x2e>
d0044ed0:	230c      	movs	r3, #12
d0044ed2:	603b      	str	r3, [r7, #0]
d0044ed4:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d0044ed8:	e0d1      	b.n	d004507e <_svfiprintf_r+0x1d2>
d0044eda:	2340      	movs	r3, #64	; 0x40
d0044edc:	616b      	str	r3, [r5, #20]
d0044ede:	2300      	movs	r3, #0
d0044ee0:	9309      	str	r3, [sp, #36]	; 0x24
d0044ee2:	2320      	movs	r3, #32
d0044ee4:	f88d 3029 	strb.w	r3, [sp, #41]	; 0x29
d0044ee8:	f8cd 800c 	str.w	r8, [sp, #12]
d0044eec:	2330      	movs	r3, #48	; 0x30
d0044eee:	f8df 81a8 	ldr.w	r8, [pc, #424]	; d0045098 <_svfiprintf_r+0x1ec>
d0044ef2:	f88d 302a 	strb.w	r3, [sp, #42]	; 0x2a
d0044ef6:	f04f 0901 	mov.w	r9, #1
d0044efa:	4623      	mov	r3, r4
d0044efc:	469a      	mov	sl, r3
d0044efe:	f813 2b01 	ldrb.w	r2, [r3], #1
d0044f02:	b10a      	cbz	r2, d0044f08 <_svfiprintf_r+0x5c>
d0044f04:	2a25      	cmp	r2, #37	; 0x25
d0044f06:	d1f9      	bne.n	d0044efc <_svfiprintf_r+0x50>
d0044f08:	ebba 0b04 	subs.w	fp, sl, r4
d0044f0c:	d00b      	beq.n	d0044f26 <_svfiprintf_r+0x7a>
d0044f0e:	465b      	mov	r3, fp
d0044f10:	4622      	mov	r2, r4
d0044f12:	4629      	mov	r1, r5
d0044f14:	4638      	mov	r0, r7
d0044f16:	f7ff ff6d 	bl	d0044df4 <__ssputs_r>
d0044f1a:	3001      	adds	r0, #1
d0044f1c:	f000 80aa 	beq.w	d0045074 <_svfiprintf_r+0x1c8>
d0044f20:	9a09      	ldr	r2, [sp, #36]	; 0x24
d0044f22:	445a      	add	r2, fp
d0044f24:	9209      	str	r2, [sp, #36]	; 0x24
d0044f26:	f89a 3000 	ldrb.w	r3, [sl]
d0044f2a:	2b00      	cmp	r3, #0
d0044f2c:	f000 80a2 	beq.w	d0045074 <_svfiprintf_r+0x1c8>
d0044f30:	2300      	movs	r3, #0
d0044f32:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
d0044f36:	e9cd 2305 	strd	r2, r3, [sp, #20]
d0044f3a:	f10a 0a01 	add.w	sl, sl, #1
d0044f3e:	9304      	str	r3, [sp, #16]
d0044f40:	9307      	str	r3, [sp, #28]
d0044f42:	f88d 3053 	strb.w	r3, [sp, #83]	; 0x53
d0044f46:	931a      	str	r3, [sp, #104]	; 0x68
d0044f48:	4654      	mov	r4, sl
d0044f4a:	2205      	movs	r2, #5
d0044f4c:	f814 1b01 	ldrb.w	r1, [r4], #1
d0044f50:	4851      	ldr	r0, [pc, #324]	; (d0045098 <_svfiprintf_r+0x1ec>)
d0044f52:	f000 fc25 	bl	d00457a0 <memchr>
d0044f56:	9a04      	ldr	r2, [sp, #16]
d0044f58:	b9d8      	cbnz	r0, d0044f92 <_svfiprintf_r+0xe6>
d0044f5a:	06d0      	lsls	r0, r2, #27
d0044f5c:	bf44      	itt	mi
d0044f5e:	2320      	movmi	r3, #32
d0044f60:	f88d 3053 	strbmi.w	r3, [sp, #83]	; 0x53
d0044f64:	0711      	lsls	r1, r2, #28
d0044f66:	bf44      	itt	mi
d0044f68:	232b      	movmi	r3, #43	; 0x2b
d0044f6a:	f88d 3053 	strbmi.w	r3, [sp, #83]	; 0x53
d0044f6e:	f89a 3000 	ldrb.w	r3, [sl]
d0044f72:	2b2a      	cmp	r3, #42	; 0x2a
d0044f74:	d015      	beq.n	d0044fa2 <_svfiprintf_r+0xf6>
d0044f76:	9a07      	ldr	r2, [sp, #28]
d0044f78:	4654      	mov	r4, sl
d0044f7a:	2000      	movs	r0, #0
d0044f7c:	f04f 0c0a 	mov.w	ip, #10
d0044f80:	4621      	mov	r1, r4
d0044f82:	f811 3b01 	ldrb.w	r3, [r1], #1
d0044f86:	3b30      	subs	r3, #48	; 0x30
d0044f88:	2b09      	cmp	r3, #9
d0044f8a:	d94e      	bls.n	d004502a <_svfiprintf_r+0x17e>
d0044f8c:	b1b0      	cbz	r0, d0044fbc <_svfiprintf_r+0x110>
d0044f8e:	9207      	str	r2, [sp, #28]
d0044f90:	e014      	b.n	d0044fbc <_svfiprintf_r+0x110>
d0044f92:	eba0 0308 	sub.w	r3, r0, r8
d0044f96:	fa09 f303 	lsl.w	r3, r9, r3
d0044f9a:	4313      	orrs	r3, r2
d0044f9c:	9304      	str	r3, [sp, #16]
d0044f9e:	46a2      	mov	sl, r4
d0044fa0:	e7d2      	b.n	d0044f48 <_svfiprintf_r+0x9c>
d0044fa2:	9b03      	ldr	r3, [sp, #12]
d0044fa4:	1d19      	adds	r1, r3, #4
d0044fa6:	681b      	ldr	r3, [r3, #0]
d0044fa8:	9103      	str	r1, [sp, #12]
d0044faa:	2b00      	cmp	r3, #0
d0044fac:	bfbb      	ittet	lt
d0044fae:	425b      	neglt	r3, r3
d0044fb0:	f042 0202 	orrlt.w	r2, r2, #2
d0044fb4:	9307      	strge	r3, [sp, #28]
d0044fb6:	9307      	strlt	r3, [sp, #28]
d0044fb8:	bfb8      	it	lt
d0044fba:	9204      	strlt	r2, [sp, #16]
d0044fbc:	7823      	ldrb	r3, [r4, #0]
d0044fbe:	2b2e      	cmp	r3, #46	; 0x2e
d0044fc0:	d10c      	bne.n	d0044fdc <_svfiprintf_r+0x130>
d0044fc2:	7863      	ldrb	r3, [r4, #1]
d0044fc4:	2b2a      	cmp	r3, #42	; 0x2a
d0044fc6:	d135      	bne.n	d0045034 <_svfiprintf_r+0x188>
d0044fc8:	9b03      	ldr	r3, [sp, #12]
d0044fca:	1d1a      	adds	r2, r3, #4
d0044fcc:	681b      	ldr	r3, [r3, #0]
d0044fce:	9203      	str	r2, [sp, #12]
d0044fd0:	2b00      	cmp	r3, #0
d0044fd2:	bfb8      	it	lt
d0044fd4:	f04f 33ff 	movlt.w	r3, #4294967295	; 0xffffffff
d0044fd8:	3402      	adds	r4, #2
d0044fda:	9305      	str	r3, [sp, #20]
d0044fdc:	f8df a0c8 	ldr.w	sl, [pc, #200]	; d00450a8 <_svfiprintf_r+0x1fc>
d0044fe0:	7821      	ldrb	r1, [r4, #0]
d0044fe2:	2203      	movs	r2, #3
d0044fe4:	4650      	mov	r0, sl
d0044fe6:	f000 fbdb 	bl	d00457a0 <memchr>
d0044fea:	b140      	cbz	r0, d0044ffe <_svfiprintf_r+0x152>
d0044fec:	2340      	movs	r3, #64	; 0x40
d0044fee:	eba0 000a 	sub.w	r0, r0, sl
d0044ff2:	fa03 f000 	lsl.w	r0, r3, r0
d0044ff6:	9b04      	ldr	r3, [sp, #16]
d0044ff8:	4303      	orrs	r3, r0
d0044ffa:	3401      	adds	r4, #1
d0044ffc:	9304      	str	r3, [sp, #16]
d0044ffe:	f814 1b01 	ldrb.w	r1, [r4], #1
d0045002:	4826      	ldr	r0, [pc, #152]	; (d004509c <_svfiprintf_r+0x1f0>)
d0045004:	f88d 1028 	strb.w	r1, [sp, #40]	; 0x28
d0045008:	2206      	movs	r2, #6
d004500a:	f000 fbc9 	bl	d00457a0 <memchr>
d004500e:	2800      	cmp	r0, #0
d0045010:	d038      	beq.n	d0045084 <_svfiprintf_r+0x1d8>
d0045012:	4b23      	ldr	r3, [pc, #140]	; (d00450a0 <_svfiprintf_r+0x1f4>)
d0045014:	bb1b      	cbnz	r3, d004505e <_svfiprintf_r+0x1b2>
d0045016:	9b03      	ldr	r3, [sp, #12]
d0045018:	3307      	adds	r3, #7
d004501a:	f023 0307 	bic.w	r3, r3, #7
d004501e:	3308      	adds	r3, #8
d0045020:	9303      	str	r3, [sp, #12]
d0045022:	9b09      	ldr	r3, [sp, #36]	; 0x24
d0045024:	4433      	add	r3, r6
d0045026:	9309      	str	r3, [sp, #36]	; 0x24
d0045028:	e767      	b.n	d0044efa <_svfiprintf_r+0x4e>
d004502a:	fb0c 3202 	mla	r2, ip, r2, r3
d004502e:	460c      	mov	r4, r1
d0045030:	2001      	movs	r0, #1
d0045032:	e7a5      	b.n	d0044f80 <_svfiprintf_r+0xd4>
d0045034:	2300      	movs	r3, #0
d0045036:	3401      	adds	r4, #1
d0045038:	9305      	str	r3, [sp, #20]
d004503a:	4619      	mov	r1, r3
d004503c:	f04f 0c0a 	mov.w	ip, #10
d0045040:	4620      	mov	r0, r4
d0045042:	f810 2b01 	ldrb.w	r2, [r0], #1
d0045046:	3a30      	subs	r2, #48	; 0x30
d0045048:	2a09      	cmp	r2, #9
d004504a:	d903      	bls.n	d0045054 <_svfiprintf_r+0x1a8>
d004504c:	2b00      	cmp	r3, #0
d004504e:	d0c5      	beq.n	d0044fdc <_svfiprintf_r+0x130>
d0045050:	9105      	str	r1, [sp, #20]
d0045052:	e7c3      	b.n	d0044fdc <_svfiprintf_r+0x130>
d0045054:	fb0c 2101 	mla	r1, ip, r1, r2
d0045058:	4604      	mov	r4, r0
d004505a:	2301      	movs	r3, #1
d004505c:	e7f0      	b.n	d0045040 <_svfiprintf_r+0x194>
d004505e:	ab03      	add	r3, sp, #12
d0045060:	9300      	str	r3, [sp, #0]
d0045062:	462a      	mov	r2, r5
d0045064:	4b0f      	ldr	r3, [pc, #60]	; (d00450a4 <_svfiprintf_r+0x1f8>)
d0045066:	a904      	add	r1, sp, #16
d0045068:	4638      	mov	r0, r7
d004506a:	f3af 8000 	nop.w
d004506e:	1c42      	adds	r2, r0, #1
d0045070:	4606      	mov	r6, r0
d0045072:	d1d6      	bne.n	d0045022 <_svfiprintf_r+0x176>
d0045074:	89ab      	ldrh	r3, [r5, #12]
d0045076:	065b      	lsls	r3, r3, #25
d0045078:	f53f af2c 	bmi.w	d0044ed4 <_svfiprintf_r+0x28>
d004507c:	9809      	ldr	r0, [sp, #36]	; 0x24
d004507e:	b01d      	add	sp, #116	; 0x74
d0045080:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0045084:	ab03      	add	r3, sp, #12
d0045086:	9300      	str	r3, [sp, #0]
d0045088:	462a      	mov	r2, r5
d004508a:	4b06      	ldr	r3, [pc, #24]	; (d00450a4 <_svfiprintf_r+0x1f8>)
d004508c:	a904      	add	r1, sp, #16
d004508e:	4638      	mov	r0, r7
d0045090:	f000 f9d4 	bl	d004543c <_printf_i>
d0045094:	e7eb      	b.n	d004506e <_svfiprintf_r+0x1c2>
d0045096:	bf00      	nop
d0045098:	d0046218 	.word	0xd0046218
d004509c:	d0046222 	.word	0xd0046222
d00450a0:	00000000 	.word	0x00000000
d00450a4:	d0044df5 	.word	0xd0044df5
d00450a8:	d004621e 	.word	0xd004621e

d00450ac <__sfputc_r>:
d00450ac:	6893      	ldr	r3, [r2, #8]
d00450ae:	3b01      	subs	r3, #1
d00450b0:	2b00      	cmp	r3, #0
d00450b2:	b410      	push	{r4}
d00450b4:	6093      	str	r3, [r2, #8]
d00450b6:	da08      	bge.n	d00450ca <__sfputc_r+0x1e>
d00450b8:	6994      	ldr	r4, [r2, #24]
d00450ba:	42a3      	cmp	r3, r4
d00450bc:	db01      	blt.n	d00450c2 <__sfputc_r+0x16>
d00450be:	290a      	cmp	r1, #10
d00450c0:	d103      	bne.n	d00450ca <__sfputc_r+0x1e>
d00450c2:	f85d 4b04 	ldr.w	r4, [sp], #4
d00450c6:	f7ff bbab 	b.w	d0044820 <__swbuf_r>
d00450ca:	6813      	ldr	r3, [r2, #0]
d00450cc:	1c58      	adds	r0, r3, #1
d00450ce:	6010      	str	r0, [r2, #0]
d00450d0:	7019      	strb	r1, [r3, #0]
d00450d2:	4608      	mov	r0, r1
d00450d4:	f85d 4b04 	ldr.w	r4, [sp], #4
d00450d8:	4770      	bx	lr

d00450da <__sfputs_r>:
d00450da:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d00450dc:	4606      	mov	r6, r0
d00450de:	460f      	mov	r7, r1
d00450e0:	4614      	mov	r4, r2
d00450e2:	18d5      	adds	r5, r2, r3
d00450e4:	42ac      	cmp	r4, r5
d00450e6:	d101      	bne.n	d00450ec <__sfputs_r+0x12>
d00450e8:	2000      	movs	r0, #0
d00450ea:	e007      	b.n	d00450fc <__sfputs_r+0x22>
d00450ec:	f814 1b01 	ldrb.w	r1, [r4], #1
d00450f0:	463a      	mov	r2, r7
d00450f2:	4630      	mov	r0, r6
d00450f4:	f7ff ffda 	bl	d00450ac <__sfputc_r>
d00450f8:	1c43      	adds	r3, r0, #1
d00450fa:	d1f3      	bne.n	d00450e4 <__sfputs_r+0xa>
d00450fc:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
	...

d0045100 <_vfiprintf_r>:
d0045100:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0045104:	460d      	mov	r5, r1
d0045106:	b09d      	sub	sp, #116	; 0x74
d0045108:	4614      	mov	r4, r2
d004510a:	4698      	mov	r8, r3
d004510c:	4606      	mov	r6, r0
d004510e:	b118      	cbz	r0, d0045118 <_vfiprintf_r+0x18>
d0045110:	6983      	ldr	r3, [r0, #24]
d0045112:	b90b      	cbnz	r3, d0045118 <_vfiprintf_r+0x18>
d0045114:	f7ff fd5e 	bl	d0044bd4 <__sinit>
d0045118:	4b89      	ldr	r3, [pc, #548]	; (d0045340 <_vfiprintf_r+0x240>)
d004511a:	429d      	cmp	r5, r3
d004511c:	d11b      	bne.n	d0045156 <_vfiprintf_r+0x56>
d004511e:	6875      	ldr	r5, [r6, #4]
d0045120:	6e6b      	ldr	r3, [r5, #100]	; 0x64
d0045122:	07d9      	lsls	r1, r3, #31
d0045124:	d405      	bmi.n	d0045132 <_vfiprintf_r+0x32>
d0045126:	89ab      	ldrh	r3, [r5, #12]
d0045128:	059a      	lsls	r2, r3, #22
d004512a:	d402      	bmi.n	d0045132 <_vfiprintf_r+0x32>
d004512c:	6da8      	ldr	r0, [r5, #88]	; 0x58
d004512e:	f7ff fdef 	bl	d0044d10 <__retarget_lock_acquire_recursive>
d0045132:	89ab      	ldrh	r3, [r5, #12]
d0045134:	071b      	lsls	r3, r3, #28
d0045136:	d501      	bpl.n	d004513c <_vfiprintf_r+0x3c>
d0045138:	692b      	ldr	r3, [r5, #16]
d004513a:	b9eb      	cbnz	r3, d0045178 <_vfiprintf_r+0x78>
d004513c:	4629      	mov	r1, r5
d004513e:	4630      	mov	r0, r6
d0045140:	f7ff fbc0 	bl	d00448c4 <__swsetup_r>
d0045144:	b1c0      	cbz	r0, d0045178 <_vfiprintf_r+0x78>
d0045146:	6e6b      	ldr	r3, [r5, #100]	; 0x64
d0045148:	07dc      	lsls	r4, r3, #31
d004514a:	d50e      	bpl.n	d004516a <_vfiprintf_r+0x6a>
d004514c:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d0045150:	b01d      	add	sp, #116	; 0x74
d0045152:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0045156:	4b7b      	ldr	r3, [pc, #492]	; (d0045344 <_vfiprintf_r+0x244>)
d0045158:	429d      	cmp	r5, r3
d004515a:	d101      	bne.n	d0045160 <_vfiprintf_r+0x60>
d004515c:	68b5      	ldr	r5, [r6, #8]
d004515e:	e7df      	b.n	d0045120 <_vfiprintf_r+0x20>
d0045160:	4b79      	ldr	r3, [pc, #484]	; (d0045348 <_vfiprintf_r+0x248>)
d0045162:	429d      	cmp	r5, r3
d0045164:	bf08      	it	eq
d0045166:	68f5      	ldreq	r5, [r6, #12]
d0045168:	e7da      	b.n	d0045120 <_vfiprintf_r+0x20>
d004516a:	89ab      	ldrh	r3, [r5, #12]
d004516c:	0598      	lsls	r0, r3, #22
d004516e:	d4ed      	bmi.n	d004514c <_vfiprintf_r+0x4c>
d0045170:	6da8      	ldr	r0, [r5, #88]	; 0x58
d0045172:	f7ff fdce 	bl	d0044d12 <__retarget_lock_release_recursive>
d0045176:	e7e9      	b.n	d004514c <_vfiprintf_r+0x4c>
d0045178:	2300      	movs	r3, #0
d004517a:	9309      	str	r3, [sp, #36]	; 0x24
d004517c:	2320      	movs	r3, #32
d004517e:	f88d 3029 	strb.w	r3, [sp, #41]	; 0x29
d0045182:	f8cd 800c 	str.w	r8, [sp, #12]
d0045186:	2330      	movs	r3, #48	; 0x30
d0045188:	f8df 81c0 	ldr.w	r8, [pc, #448]	; d004534c <_vfiprintf_r+0x24c>
d004518c:	f88d 302a 	strb.w	r3, [sp, #42]	; 0x2a
d0045190:	f04f 0901 	mov.w	r9, #1
d0045194:	4623      	mov	r3, r4
d0045196:	469a      	mov	sl, r3
d0045198:	f813 2b01 	ldrb.w	r2, [r3], #1
d004519c:	b10a      	cbz	r2, d00451a2 <_vfiprintf_r+0xa2>
d004519e:	2a25      	cmp	r2, #37	; 0x25
d00451a0:	d1f9      	bne.n	d0045196 <_vfiprintf_r+0x96>
d00451a2:	ebba 0b04 	subs.w	fp, sl, r4
d00451a6:	d00b      	beq.n	d00451c0 <_vfiprintf_r+0xc0>
d00451a8:	465b      	mov	r3, fp
d00451aa:	4622      	mov	r2, r4
d00451ac:	4629      	mov	r1, r5
d00451ae:	4630      	mov	r0, r6
d00451b0:	f7ff ff93 	bl	d00450da <__sfputs_r>
d00451b4:	3001      	adds	r0, #1
d00451b6:	f000 80aa 	beq.w	d004530e <_vfiprintf_r+0x20e>
d00451ba:	9a09      	ldr	r2, [sp, #36]	; 0x24
d00451bc:	445a      	add	r2, fp
d00451be:	9209      	str	r2, [sp, #36]	; 0x24
d00451c0:	f89a 3000 	ldrb.w	r3, [sl]
d00451c4:	2b00      	cmp	r3, #0
d00451c6:	f000 80a2 	beq.w	d004530e <_vfiprintf_r+0x20e>
d00451ca:	2300      	movs	r3, #0
d00451cc:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
d00451d0:	e9cd 2305 	strd	r2, r3, [sp, #20]
d00451d4:	f10a 0a01 	add.w	sl, sl, #1
d00451d8:	9304      	str	r3, [sp, #16]
d00451da:	9307      	str	r3, [sp, #28]
d00451dc:	f88d 3053 	strb.w	r3, [sp, #83]	; 0x53
d00451e0:	931a      	str	r3, [sp, #104]	; 0x68
d00451e2:	4654      	mov	r4, sl
d00451e4:	2205      	movs	r2, #5
d00451e6:	f814 1b01 	ldrb.w	r1, [r4], #1
d00451ea:	4858      	ldr	r0, [pc, #352]	; (d004534c <_vfiprintf_r+0x24c>)
d00451ec:	f000 fad8 	bl	d00457a0 <memchr>
d00451f0:	9a04      	ldr	r2, [sp, #16]
d00451f2:	b9d8      	cbnz	r0, d004522c <_vfiprintf_r+0x12c>
d00451f4:	06d1      	lsls	r1, r2, #27
d00451f6:	bf44      	itt	mi
d00451f8:	2320      	movmi	r3, #32
d00451fa:	f88d 3053 	strbmi.w	r3, [sp, #83]	; 0x53
d00451fe:	0713      	lsls	r3, r2, #28
d0045200:	bf44      	itt	mi
d0045202:	232b      	movmi	r3, #43	; 0x2b
d0045204:	f88d 3053 	strbmi.w	r3, [sp, #83]	; 0x53
d0045208:	f89a 3000 	ldrb.w	r3, [sl]
d004520c:	2b2a      	cmp	r3, #42	; 0x2a
d004520e:	d015      	beq.n	d004523c <_vfiprintf_r+0x13c>
d0045210:	9a07      	ldr	r2, [sp, #28]
d0045212:	4654      	mov	r4, sl
d0045214:	2000      	movs	r0, #0
d0045216:	f04f 0c0a 	mov.w	ip, #10
d004521a:	4621      	mov	r1, r4
d004521c:	f811 3b01 	ldrb.w	r3, [r1], #1
d0045220:	3b30      	subs	r3, #48	; 0x30
d0045222:	2b09      	cmp	r3, #9
d0045224:	d94e      	bls.n	d00452c4 <_vfiprintf_r+0x1c4>
d0045226:	b1b0      	cbz	r0, d0045256 <_vfiprintf_r+0x156>
d0045228:	9207      	str	r2, [sp, #28]
d004522a:	e014      	b.n	d0045256 <_vfiprintf_r+0x156>
d004522c:	eba0 0308 	sub.w	r3, r0, r8
d0045230:	fa09 f303 	lsl.w	r3, r9, r3
d0045234:	4313      	orrs	r3, r2
d0045236:	9304      	str	r3, [sp, #16]
d0045238:	46a2      	mov	sl, r4
d004523a:	e7d2      	b.n	d00451e2 <_vfiprintf_r+0xe2>
d004523c:	9b03      	ldr	r3, [sp, #12]
d004523e:	1d19      	adds	r1, r3, #4
d0045240:	681b      	ldr	r3, [r3, #0]
d0045242:	9103      	str	r1, [sp, #12]
d0045244:	2b00      	cmp	r3, #0
d0045246:	bfbb      	ittet	lt
d0045248:	425b      	neglt	r3, r3
d004524a:	f042 0202 	orrlt.w	r2, r2, #2
d004524e:	9307      	strge	r3, [sp, #28]
d0045250:	9307      	strlt	r3, [sp, #28]
d0045252:	bfb8      	it	lt
d0045254:	9204      	strlt	r2, [sp, #16]
d0045256:	7823      	ldrb	r3, [r4, #0]
d0045258:	2b2e      	cmp	r3, #46	; 0x2e
d004525a:	d10c      	bne.n	d0045276 <_vfiprintf_r+0x176>
d004525c:	7863      	ldrb	r3, [r4, #1]
d004525e:	2b2a      	cmp	r3, #42	; 0x2a
d0045260:	d135      	bne.n	d00452ce <_vfiprintf_r+0x1ce>
d0045262:	9b03      	ldr	r3, [sp, #12]
d0045264:	1d1a      	adds	r2, r3, #4
d0045266:	681b      	ldr	r3, [r3, #0]
d0045268:	9203      	str	r2, [sp, #12]
d004526a:	2b00      	cmp	r3, #0
d004526c:	bfb8      	it	lt
d004526e:	f04f 33ff 	movlt.w	r3, #4294967295	; 0xffffffff
d0045272:	3402      	adds	r4, #2
d0045274:	9305      	str	r3, [sp, #20]
d0045276:	f8df a0e4 	ldr.w	sl, [pc, #228]	; d004535c <_vfiprintf_r+0x25c>
d004527a:	7821      	ldrb	r1, [r4, #0]
d004527c:	2203      	movs	r2, #3
d004527e:	4650      	mov	r0, sl
d0045280:	f000 fa8e 	bl	d00457a0 <memchr>
d0045284:	b140      	cbz	r0, d0045298 <_vfiprintf_r+0x198>
d0045286:	2340      	movs	r3, #64	; 0x40
d0045288:	eba0 000a 	sub.w	r0, r0, sl
d004528c:	fa03 f000 	lsl.w	r0, r3, r0
d0045290:	9b04      	ldr	r3, [sp, #16]
d0045292:	4303      	orrs	r3, r0
d0045294:	3401      	adds	r4, #1
d0045296:	9304      	str	r3, [sp, #16]
d0045298:	f814 1b01 	ldrb.w	r1, [r4], #1
d004529c:	482c      	ldr	r0, [pc, #176]	; (d0045350 <_vfiprintf_r+0x250>)
d004529e:	f88d 1028 	strb.w	r1, [sp, #40]	; 0x28
d00452a2:	2206      	movs	r2, #6
d00452a4:	f000 fa7c 	bl	d00457a0 <memchr>
d00452a8:	2800      	cmp	r0, #0
d00452aa:	d03f      	beq.n	d004532c <_vfiprintf_r+0x22c>
d00452ac:	4b29      	ldr	r3, [pc, #164]	; (d0045354 <_vfiprintf_r+0x254>)
d00452ae:	bb1b      	cbnz	r3, d00452f8 <_vfiprintf_r+0x1f8>
d00452b0:	9b03      	ldr	r3, [sp, #12]
d00452b2:	3307      	adds	r3, #7
d00452b4:	f023 0307 	bic.w	r3, r3, #7
d00452b8:	3308      	adds	r3, #8
d00452ba:	9303      	str	r3, [sp, #12]
d00452bc:	9b09      	ldr	r3, [sp, #36]	; 0x24
d00452be:	443b      	add	r3, r7
d00452c0:	9309      	str	r3, [sp, #36]	; 0x24
d00452c2:	e767      	b.n	d0045194 <_vfiprintf_r+0x94>
d00452c4:	fb0c 3202 	mla	r2, ip, r2, r3
d00452c8:	460c      	mov	r4, r1
d00452ca:	2001      	movs	r0, #1
d00452cc:	e7a5      	b.n	d004521a <_vfiprintf_r+0x11a>
d00452ce:	2300      	movs	r3, #0
d00452d0:	3401      	adds	r4, #1
d00452d2:	9305      	str	r3, [sp, #20]
d00452d4:	4619      	mov	r1, r3
d00452d6:	f04f 0c0a 	mov.w	ip, #10
d00452da:	4620      	mov	r0, r4
d00452dc:	f810 2b01 	ldrb.w	r2, [r0], #1
d00452e0:	3a30      	subs	r2, #48	; 0x30
d00452e2:	2a09      	cmp	r2, #9
d00452e4:	d903      	bls.n	d00452ee <_vfiprintf_r+0x1ee>
d00452e6:	2b00      	cmp	r3, #0
d00452e8:	d0c5      	beq.n	d0045276 <_vfiprintf_r+0x176>
d00452ea:	9105      	str	r1, [sp, #20]
d00452ec:	e7c3      	b.n	d0045276 <_vfiprintf_r+0x176>
d00452ee:	fb0c 2101 	mla	r1, ip, r1, r2
d00452f2:	4604      	mov	r4, r0
d00452f4:	2301      	movs	r3, #1
d00452f6:	e7f0      	b.n	d00452da <_vfiprintf_r+0x1da>
d00452f8:	ab03      	add	r3, sp, #12
d00452fa:	9300      	str	r3, [sp, #0]
d00452fc:	462a      	mov	r2, r5
d00452fe:	4b16      	ldr	r3, [pc, #88]	; (d0045358 <_vfiprintf_r+0x258>)
d0045300:	a904      	add	r1, sp, #16
d0045302:	4630      	mov	r0, r6
d0045304:	f3af 8000 	nop.w
d0045308:	4607      	mov	r7, r0
d004530a:	1c78      	adds	r0, r7, #1
d004530c:	d1d6      	bne.n	d00452bc <_vfiprintf_r+0x1bc>
d004530e:	6e6b      	ldr	r3, [r5, #100]	; 0x64
d0045310:	07d9      	lsls	r1, r3, #31
d0045312:	d405      	bmi.n	d0045320 <_vfiprintf_r+0x220>
d0045314:	89ab      	ldrh	r3, [r5, #12]
d0045316:	059a      	lsls	r2, r3, #22
d0045318:	d402      	bmi.n	d0045320 <_vfiprintf_r+0x220>
d004531a:	6da8      	ldr	r0, [r5, #88]	; 0x58
d004531c:	f7ff fcf9 	bl	d0044d12 <__retarget_lock_release_recursive>
d0045320:	89ab      	ldrh	r3, [r5, #12]
d0045322:	065b      	lsls	r3, r3, #25
d0045324:	f53f af12 	bmi.w	d004514c <_vfiprintf_r+0x4c>
d0045328:	9809      	ldr	r0, [sp, #36]	; 0x24
d004532a:	e711      	b.n	d0045150 <_vfiprintf_r+0x50>
d004532c:	ab03      	add	r3, sp, #12
d004532e:	9300      	str	r3, [sp, #0]
d0045330:	462a      	mov	r2, r5
d0045332:	4b09      	ldr	r3, [pc, #36]	; (d0045358 <_vfiprintf_r+0x258>)
d0045334:	a904      	add	r1, sp, #16
d0045336:	4630      	mov	r0, r6
d0045338:	f000 f880 	bl	d004543c <_printf_i>
d004533c:	e7e4      	b.n	d0045308 <_vfiprintf_r+0x208>
d004533e:	bf00      	nop
d0045340:	d00461d8 	.word	0xd00461d8
d0045344:	d00461f8 	.word	0xd00461f8
d0045348:	d00461b8 	.word	0xd00461b8
d004534c:	d0046218 	.word	0xd0046218
d0045350:	d0046222 	.word	0xd0046222
d0045354:	00000000 	.word	0x00000000
d0045358:	d00450db 	.word	0xd00450db
d004535c:	d004621e 	.word	0xd004621e

d0045360 <_printf_common>:
d0045360:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
d0045364:	4616      	mov	r6, r2
d0045366:	4699      	mov	r9, r3
d0045368:	688a      	ldr	r2, [r1, #8]
d004536a:	690b      	ldr	r3, [r1, #16]
d004536c:	f8dd 8020 	ldr.w	r8, [sp, #32]
d0045370:	4293      	cmp	r3, r2
d0045372:	bfb8      	it	lt
d0045374:	4613      	movlt	r3, r2
d0045376:	6033      	str	r3, [r6, #0]
d0045378:	f891 2043 	ldrb.w	r2, [r1, #67]	; 0x43
d004537c:	4607      	mov	r7, r0
d004537e:	460c      	mov	r4, r1
d0045380:	b10a      	cbz	r2, d0045386 <_printf_common+0x26>
d0045382:	3301      	adds	r3, #1
d0045384:	6033      	str	r3, [r6, #0]
d0045386:	6823      	ldr	r3, [r4, #0]
d0045388:	0699      	lsls	r1, r3, #26
d004538a:	bf42      	ittt	mi
d004538c:	6833      	ldrmi	r3, [r6, #0]
d004538e:	3302      	addmi	r3, #2
d0045390:	6033      	strmi	r3, [r6, #0]
d0045392:	6825      	ldr	r5, [r4, #0]
d0045394:	f015 0506 	ands.w	r5, r5, #6
d0045398:	d106      	bne.n	d00453a8 <_printf_common+0x48>
d004539a:	f104 0a19 	add.w	sl, r4, #25
d004539e:	68e3      	ldr	r3, [r4, #12]
d00453a0:	6832      	ldr	r2, [r6, #0]
d00453a2:	1a9b      	subs	r3, r3, r2
d00453a4:	42ab      	cmp	r3, r5
d00453a6:	dc26      	bgt.n	d00453f6 <_printf_common+0x96>
d00453a8:	f894 2043 	ldrb.w	r2, [r4, #67]	; 0x43
d00453ac:	1e13      	subs	r3, r2, #0
d00453ae:	6822      	ldr	r2, [r4, #0]
d00453b0:	bf18      	it	ne
d00453b2:	2301      	movne	r3, #1
d00453b4:	0692      	lsls	r2, r2, #26
d00453b6:	d42b      	bmi.n	d0045410 <_printf_common+0xb0>
d00453b8:	f104 0243 	add.w	r2, r4, #67	; 0x43
d00453bc:	4649      	mov	r1, r9
d00453be:	4638      	mov	r0, r7
d00453c0:	47c0      	blx	r8
d00453c2:	3001      	adds	r0, #1
d00453c4:	d01e      	beq.n	d0045404 <_printf_common+0xa4>
d00453c6:	6823      	ldr	r3, [r4, #0]
d00453c8:	68e5      	ldr	r5, [r4, #12]
d00453ca:	6832      	ldr	r2, [r6, #0]
d00453cc:	f003 0306 	and.w	r3, r3, #6
d00453d0:	2b04      	cmp	r3, #4
d00453d2:	bf08      	it	eq
d00453d4:	1aad      	subeq	r5, r5, r2
d00453d6:	68a3      	ldr	r3, [r4, #8]
d00453d8:	6922      	ldr	r2, [r4, #16]
d00453da:	bf0c      	ite	eq
d00453dc:	ea25 75e5 	biceq.w	r5, r5, r5, asr #31
d00453e0:	2500      	movne	r5, #0
d00453e2:	4293      	cmp	r3, r2
d00453e4:	bfc4      	itt	gt
d00453e6:	1a9b      	subgt	r3, r3, r2
d00453e8:	18ed      	addgt	r5, r5, r3
d00453ea:	2600      	movs	r6, #0
d00453ec:	341a      	adds	r4, #26
d00453ee:	42b5      	cmp	r5, r6
d00453f0:	d11a      	bne.n	d0045428 <_printf_common+0xc8>
d00453f2:	2000      	movs	r0, #0
d00453f4:	e008      	b.n	d0045408 <_printf_common+0xa8>
d00453f6:	2301      	movs	r3, #1
d00453f8:	4652      	mov	r2, sl
d00453fa:	4649      	mov	r1, r9
d00453fc:	4638      	mov	r0, r7
d00453fe:	47c0      	blx	r8
d0045400:	3001      	adds	r0, #1
d0045402:	d103      	bne.n	d004540c <_printf_common+0xac>
d0045404:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d0045408:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
d004540c:	3501      	adds	r5, #1
d004540e:	e7c6      	b.n	d004539e <_printf_common+0x3e>
d0045410:	18e1      	adds	r1, r4, r3
d0045412:	1c5a      	adds	r2, r3, #1
d0045414:	2030      	movs	r0, #48	; 0x30
d0045416:	f881 0043 	strb.w	r0, [r1, #67]	; 0x43
d004541a:	4422      	add	r2, r4
d004541c:	f894 1045 	ldrb.w	r1, [r4, #69]	; 0x45
d0045420:	f882 1043 	strb.w	r1, [r2, #67]	; 0x43
d0045424:	3302      	adds	r3, #2
d0045426:	e7c7      	b.n	d00453b8 <_printf_common+0x58>
d0045428:	2301      	movs	r3, #1
d004542a:	4622      	mov	r2, r4
d004542c:	4649      	mov	r1, r9
d004542e:	4638      	mov	r0, r7
d0045430:	47c0      	blx	r8
d0045432:	3001      	adds	r0, #1
d0045434:	d0e6      	beq.n	d0045404 <_printf_common+0xa4>
d0045436:	3601      	adds	r6, #1
d0045438:	e7d9      	b.n	d00453ee <_printf_common+0x8e>
	...

d004543c <_printf_i>:
d004543c:	e92d 47ff 	stmdb	sp!, {r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, lr}
d0045440:	460c      	mov	r4, r1
d0045442:	4691      	mov	r9, r2
d0045444:	7e27      	ldrb	r7, [r4, #24]
d0045446:	990c      	ldr	r1, [sp, #48]	; 0x30
d0045448:	2f78      	cmp	r7, #120	; 0x78
d004544a:	4680      	mov	r8, r0
d004544c:	469a      	mov	sl, r3
d004544e:	f104 0243 	add.w	r2, r4, #67	; 0x43
d0045452:	d807      	bhi.n	d0045464 <_printf_i+0x28>
d0045454:	2f62      	cmp	r7, #98	; 0x62
d0045456:	d80a      	bhi.n	d004546e <_printf_i+0x32>
d0045458:	2f00      	cmp	r7, #0
d004545a:	f000 80d8 	beq.w	d004560e <_printf_i+0x1d2>
d004545e:	2f58      	cmp	r7, #88	; 0x58
d0045460:	f000 80a3 	beq.w	d00455aa <_printf_i+0x16e>
d0045464:	f104 0642 	add.w	r6, r4, #66	; 0x42
d0045468:	f884 7042 	strb.w	r7, [r4, #66]	; 0x42
d004546c:	e03a      	b.n	d00454e4 <_printf_i+0xa8>
d004546e:	f1a7 0363 	sub.w	r3, r7, #99	; 0x63
d0045472:	2b15      	cmp	r3, #21
d0045474:	d8f6      	bhi.n	d0045464 <_printf_i+0x28>
d0045476:	a001      	add	r0, pc, #4	; (adr r0, d004547c <_printf_i+0x40>)
d0045478:	f850 f023 	ldr.w	pc, [r0, r3, lsl #2]
d004547c:	d00454d5 	.word	0xd00454d5
d0045480:	d00454e9 	.word	0xd00454e9
d0045484:	d0045465 	.word	0xd0045465
d0045488:	d0045465 	.word	0xd0045465
d004548c:	d0045465 	.word	0xd0045465
d0045490:	d0045465 	.word	0xd0045465
d0045494:	d00454e9 	.word	0xd00454e9
d0045498:	d0045465 	.word	0xd0045465
d004549c:	d0045465 	.word	0xd0045465
d00454a0:	d0045465 	.word	0xd0045465
d00454a4:	d0045465 	.word	0xd0045465
d00454a8:	d00455f5 	.word	0xd00455f5
d00454ac:	d0045519 	.word	0xd0045519
d00454b0:	d00455d7 	.word	0xd00455d7
d00454b4:	d0045465 	.word	0xd0045465
d00454b8:	d0045465 	.word	0xd0045465
d00454bc:	d0045617 	.word	0xd0045617
d00454c0:	d0045465 	.word	0xd0045465
d00454c4:	d0045519 	.word	0xd0045519
d00454c8:	d0045465 	.word	0xd0045465
d00454cc:	d0045465 	.word	0xd0045465
d00454d0:	d00455df 	.word	0xd00455df
d00454d4:	680b      	ldr	r3, [r1, #0]
d00454d6:	1d1a      	adds	r2, r3, #4
d00454d8:	681b      	ldr	r3, [r3, #0]
d00454da:	600a      	str	r2, [r1, #0]
d00454dc:	f104 0642 	add.w	r6, r4, #66	; 0x42
d00454e0:	f884 3042 	strb.w	r3, [r4, #66]	; 0x42
d00454e4:	2301      	movs	r3, #1
d00454e6:	e0a3      	b.n	d0045630 <_printf_i+0x1f4>
d00454e8:	6825      	ldr	r5, [r4, #0]
d00454ea:	6808      	ldr	r0, [r1, #0]
d00454ec:	062e      	lsls	r6, r5, #24
d00454ee:	f100 0304 	add.w	r3, r0, #4
d00454f2:	d50a      	bpl.n	d004550a <_printf_i+0xce>
d00454f4:	6805      	ldr	r5, [r0, #0]
d00454f6:	600b      	str	r3, [r1, #0]
d00454f8:	2d00      	cmp	r5, #0
d00454fa:	da03      	bge.n	d0045504 <_printf_i+0xc8>
d00454fc:	232d      	movs	r3, #45	; 0x2d
d00454fe:	426d      	negs	r5, r5
d0045500:	f884 3043 	strb.w	r3, [r4, #67]	; 0x43
d0045504:	485e      	ldr	r0, [pc, #376]	; (d0045680 <_printf_i+0x244>)
d0045506:	230a      	movs	r3, #10
d0045508:	e019      	b.n	d004553e <_printf_i+0x102>
d004550a:	f015 0f40 	tst.w	r5, #64	; 0x40
d004550e:	6805      	ldr	r5, [r0, #0]
d0045510:	600b      	str	r3, [r1, #0]
d0045512:	bf18      	it	ne
d0045514:	b22d      	sxthne	r5, r5
d0045516:	e7ef      	b.n	d00454f8 <_printf_i+0xbc>
d0045518:	680b      	ldr	r3, [r1, #0]
d004551a:	6825      	ldr	r5, [r4, #0]
d004551c:	1d18      	adds	r0, r3, #4
d004551e:	6008      	str	r0, [r1, #0]
d0045520:	0628      	lsls	r0, r5, #24
d0045522:	d501      	bpl.n	d0045528 <_printf_i+0xec>
d0045524:	681d      	ldr	r5, [r3, #0]
d0045526:	e002      	b.n	d004552e <_printf_i+0xf2>
d0045528:	0669      	lsls	r1, r5, #25
d004552a:	d5fb      	bpl.n	d0045524 <_printf_i+0xe8>
d004552c:	881d      	ldrh	r5, [r3, #0]
d004552e:	4854      	ldr	r0, [pc, #336]	; (d0045680 <_printf_i+0x244>)
d0045530:	2f6f      	cmp	r7, #111	; 0x6f
d0045532:	bf0c      	ite	eq
d0045534:	2308      	moveq	r3, #8
d0045536:	230a      	movne	r3, #10
d0045538:	2100      	movs	r1, #0
d004553a:	f884 1043 	strb.w	r1, [r4, #67]	; 0x43
d004553e:	6866      	ldr	r6, [r4, #4]
d0045540:	60a6      	str	r6, [r4, #8]
d0045542:	2e00      	cmp	r6, #0
d0045544:	bfa2      	ittt	ge
d0045546:	6821      	ldrge	r1, [r4, #0]
d0045548:	f021 0104 	bicge.w	r1, r1, #4
d004554c:	6021      	strge	r1, [r4, #0]
d004554e:	b90d      	cbnz	r5, d0045554 <_printf_i+0x118>
d0045550:	2e00      	cmp	r6, #0
d0045552:	d04d      	beq.n	d00455f0 <_printf_i+0x1b4>
d0045554:	4616      	mov	r6, r2
d0045556:	fbb5 f1f3 	udiv	r1, r5, r3
d004555a:	fb03 5711 	mls	r7, r3, r1, r5
d004555e:	5dc7      	ldrb	r7, [r0, r7]
d0045560:	f806 7d01 	strb.w	r7, [r6, #-1]!
d0045564:	462f      	mov	r7, r5
d0045566:	42bb      	cmp	r3, r7
d0045568:	460d      	mov	r5, r1
d004556a:	d9f4      	bls.n	d0045556 <_printf_i+0x11a>
d004556c:	2b08      	cmp	r3, #8
d004556e:	d10b      	bne.n	d0045588 <_printf_i+0x14c>
d0045570:	6823      	ldr	r3, [r4, #0]
d0045572:	07df      	lsls	r7, r3, #31
d0045574:	d508      	bpl.n	d0045588 <_printf_i+0x14c>
d0045576:	6923      	ldr	r3, [r4, #16]
d0045578:	6861      	ldr	r1, [r4, #4]
d004557a:	4299      	cmp	r1, r3
d004557c:	bfde      	ittt	le
d004557e:	2330      	movle	r3, #48	; 0x30
d0045580:	f806 3c01 	strble.w	r3, [r6, #-1]
d0045584:	f106 36ff 	addle.w	r6, r6, #4294967295	; 0xffffffff
d0045588:	1b92      	subs	r2, r2, r6
d004558a:	6122      	str	r2, [r4, #16]
d004558c:	f8cd a000 	str.w	sl, [sp]
d0045590:	464b      	mov	r3, r9
d0045592:	aa03      	add	r2, sp, #12
d0045594:	4621      	mov	r1, r4
d0045596:	4640      	mov	r0, r8
d0045598:	f7ff fee2 	bl	d0045360 <_printf_common>
d004559c:	3001      	adds	r0, #1
d004559e:	d14c      	bne.n	d004563a <_printf_i+0x1fe>
d00455a0:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d00455a4:	b004      	add	sp, #16
d00455a6:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
d00455aa:	4835      	ldr	r0, [pc, #212]	; (d0045680 <_printf_i+0x244>)
d00455ac:	f884 7045 	strb.w	r7, [r4, #69]	; 0x45
d00455b0:	6823      	ldr	r3, [r4, #0]
d00455b2:	680e      	ldr	r6, [r1, #0]
d00455b4:	061f      	lsls	r7, r3, #24
d00455b6:	f856 5b04 	ldr.w	r5, [r6], #4
d00455ba:	600e      	str	r6, [r1, #0]
d00455bc:	d514      	bpl.n	d00455e8 <_printf_i+0x1ac>
d00455be:	07d9      	lsls	r1, r3, #31
d00455c0:	bf44      	itt	mi
d00455c2:	f043 0320 	orrmi.w	r3, r3, #32
d00455c6:	6023      	strmi	r3, [r4, #0]
d00455c8:	b91d      	cbnz	r5, d00455d2 <_printf_i+0x196>
d00455ca:	6823      	ldr	r3, [r4, #0]
d00455cc:	f023 0320 	bic.w	r3, r3, #32
d00455d0:	6023      	str	r3, [r4, #0]
d00455d2:	2310      	movs	r3, #16
d00455d4:	e7b0      	b.n	d0045538 <_printf_i+0xfc>
d00455d6:	6823      	ldr	r3, [r4, #0]
d00455d8:	f043 0320 	orr.w	r3, r3, #32
d00455dc:	6023      	str	r3, [r4, #0]
d00455de:	2378      	movs	r3, #120	; 0x78
d00455e0:	4828      	ldr	r0, [pc, #160]	; (d0045684 <_printf_i+0x248>)
d00455e2:	f884 3045 	strb.w	r3, [r4, #69]	; 0x45
d00455e6:	e7e3      	b.n	d00455b0 <_printf_i+0x174>
d00455e8:	065e      	lsls	r6, r3, #25
d00455ea:	bf48      	it	mi
d00455ec:	b2ad      	uxthmi	r5, r5
d00455ee:	e7e6      	b.n	d00455be <_printf_i+0x182>
d00455f0:	4616      	mov	r6, r2
d00455f2:	e7bb      	b.n	d004556c <_printf_i+0x130>
d00455f4:	680b      	ldr	r3, [r1, #0]
d00455f6:	6826      	ldr	r6, [r4, #0]
d00455f8:	6960      	ldr	r0, [r4, #20]
d00455fa:	1d1d      	adds	r5, r3, #4
d00455fc:	600d      	str	r5, [r1, #0]
d00455fe:	0635      	lsls	r5, r6, #24
d0045600:	681b      	ldr	r3, [r3, #0]
d0045602:	d501      	bpl.n	d0045608 <_printf_i+0x1cc>
d0045604:	6018      	str	r0, [r3, #0]
d0045606:	e002      	b.n	d004560e <_printf_i+0x1d2>
d0045608:	0671      	lsls	r1, r6, #25
d004560a:	d5fb      	bpl.n	d0045604 <_printf_i+0x1c8>
d004560c:	8018      	strh	r0, [r3, #0]
d004560e:	2300      	movs	r3, #0
d0045610:	6123      	str	r3, [r4, #16]
d0045612:	4616      	mov	r6, r2
d0045614:	e7ba      	b.n	d004558c <_printf_i+0x150>
d0045616:	680b      	ldr	r3, [r1, #0]
d0045618:	1d1a      	adds	r2, r3, #4
d004561a:	600a      	str	r2, [r1, #0]
d004561c:	681e      	ldr	r6, [r3, #0]
d004561e:	6862      	ldr	r2, [r4, #4]
d0045620:	2100      	movs	r1, #0
d0045622:	4630      	mov	r0, r6
d0045624:	f000 f8bc 	bl	d00457a0 <memchr>
d0045628:	b108      	cbz	r0, d004562e <_printf_i+0x1f2>
d004562a:	1b80      	subs	r0, r0, r6
d004562c:	6060      	str	r0, [r4, #4]
d004562e:	6863      	ldr	r3, [r4, #4]
d0045630:	6123      	str	r3, [r4, #16]
d0045632:	2300      	movs	r3, #0
d0045634:	f884 3043 	strb.w	r3, [r4, #67]	; 0x43
d0045638:	e7a8      	b.n	d004558c <_printf_i+0x150>
d004563a:	6923      	ldr	r3, [r4, #16]
d004563c:	4632      	mov	r2, r6
d004563e:	4649      	mov	r1, r9
d0045640:	4640      	mov	r0, r8
d0045642:	47d0      	blx	sl
d0045644:	3001      	adds	r0, #1
d0045646:	d0ab      	beq.n	d00455a0 <_printf_i+0x164>
d0045648:	6823      	ldr	r3, [r4, #0]
d004564a:	079b      	lsls	r3, r3, #30
d004564c:	d413      	bmi.n	d0045676 <_printf_i+0x23a>
d004564e:	68e0      	ldr	r0, [r4, #12]
d0045650:	9b03      	ldr	r3, [sp, #12]
d0045652:	4298      	cmp	r0, r3
d0045654:	bfb8      	it	lt
d0045656:	4618      	movlt	r0, r3
d0045658:	e7a4      	b.n	d00455a4 <_printf_i+0x168>
d004565a:	2301      	movs	r3, #1
d004565c:	4632      	mov	r2, r6
d004565e:	4649      	mov	r1, r9
d0045660:	4640      	mov	r0, r8
d0045662:	47d0      	blx	sl
d0045664:	3001      	adds	r0, #1
d0045666:	d09b      	beq.n	d00455a0 <_printf_i+0x164>
d0045668:	3501      	adds	r5, #1
d004566a:	68e3      	ldr	r3, [r4, #12]
d004566c:	9903      	ldr	r1, [sp, #12]
d004566e:	1a5b      	subs	r3, r3, r1
d0045670:	42ab      	cmp	r3, r5
d0045672:	dcf2      	bgt.n	d004565a <_printf_i+0x21e>
d0045674:	e7eb      	b.n	d004564e <_printf_i+0x212>
d0045676:	2500      	movs	r5, #0
d0045678:	f104 0619 	add.w	r6, r4, #25
d004567c:	e7f5      	b.n	d004566a <_printf_i+0x22e>
d004567e:	bf00      	nop
d0045680:	d0046229 	.word	0xd0046229
d0045684:	d004623a 	.word	0xd004623a

d0045688 <__sread>:
d0045688:	b510      	push	{r4, lr}
d004568a:	460c      	mov	r4, r1
d004568c:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d0045690:	f000 f924 	bl	d00458dc <_read_r>
d0045694:	2800      	cmp	r0, #0
d0045696:	bfab      	itete	ge
d0045698:	6d63      	ldrge	r3, [r4, #84]	; 0x54
d004569a:	89a3      	ldrhlt	r3, [r4, #12]
d004569c:	181b      	addge	r3, r3, r0
d004569e:	f423 5380 	biclt.w	r3, r3, #4096	; 0x1000
d00456a2:	bfac      	ite	ge
d00456a4:	6563      	strge	r3, [r4, #84]	; 0x54
d00456a6:	81a3      	strhlt	r3, [r4, #12]
d00456a8:	bd10      	pop	{r4, pc}

d00456aa <__swrite>:
d00456aa:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
d00456ae:	461f      	mov	r7, r3
d00456b0:	898b      	ldrh	r3, [r1, #12]
d00456b2:	05db      	lsls	r3, r3, #23
d00456b4:	4605      	mov	r5, r0
d00456b6:	460c      	mov	r4, r1
d00456b8:	4616      	mov	r6, r2
d00456ba:	d505      	bpl.n	d00456c8 <__swrite+0x1e>
d00456bc:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d00456c0:	2302      	movs	r3, #2
d00456c2:	2200      	movs	r2, #0
d00456c4:	f000 f856 	bl	d0045774 <_lseek_r>
d00456c8:	89a3      	ldrh	r3, [r4, #12]
d00456ca:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
d00456ce:	f423 5380 	bic.w	r3, r3, #4096	; 0x1000
d00456d2:	81a3      	strh	r3, [r4, #12]
d00456d4:	4632      	mov	r2, r6
d00456d6:	463b      	mov	r3, r7
d00456d8:	4628      	mov	r0, r5
d00456da:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
d00456de:	f7fa bcb9 	b.w	d0040054 <_write_r>

d00456e2 <__sseek>:
d00456e2:	b510      	push	{r4, lr}
d00456e4:	460c      	mov	r4, r1
d00456e6:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d00456ea:	f000 f843 	bl	d0045774 <_lseek_r>
d00456ee:	1c43      	adds	r3, r0, #1
d00456f0:	89a3      	ldrh	r3, [r4, #12]
d00456f2:	bf15      	itete	ne
d00456f4:	6560      	strne	r0, [r4, #84]	; 0x54
d00456f6:	f423 5380 	biceq.w	r3, r3, #4096	; 0x1000
d00456fa:	f443 5380 	orrne.w	r3, r3, #4096	; 0x1000
d00456fe:	81a3      	strheq	r3, [r4, #12]
d0045700:	bf18      	it	ne
d0045702:	81a3      	strhne	r3, [r4, #12]
d0045704:	bd10      	pop	{r4, pc}

d0045706 <__sclose>:
d0045706:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d004570a:	f000 b801 	b.w	d0045710 <_close_r>
	...

d0045710 <_close_r>:
d0045710:	b538      	push	{r3, r4, r5, lr}
d0045712:	4d06      	ldr	r5, [pc, #24]	; (d004572c <_close_r+0x1c>)
d0045714:	2300      	movs	r3, #0
d0045716:	4604      	mov	r4, r0
d0045718:	4608      	mov	r0, r1
d004571a:	602b      	str	r3, [r5, #0]
d004571c:	f7fa fcd4 	bl	d00400c8 <_close>
d0045720:	1c43      	adds	r3, r0, #1
d0045722:	d102      	bne.n	d004572a <_close_r+0x1a>
d0045724:	682b      	ldr	r3, [r5, #0]
d0045726:	b103      	cbz	r3, d004572a <_close_r+0x1a>
d0045728:	6023      	str	r3, [r4, #0]
d004572a:	bd38      	pop	{r3, r4, r5, pc}
d004572c:	d0047b1c 	.word	0xd0047b1c

d0045730 <_fstat_r>:
d0045730:	b538      	push	{r3, r4, r5, lr}
d0045732:	4d07      	ldr	r5, [pc, #28]	; (d0045750 <_fstat_r+0x20>)
d0045734:	2300      	movs	r3, #0
d0045736:	4604      	mov	r4, r0
d0045738:	4608      	mov	r0, r1
d004573a:	4611      	mov	r1, r2
d004573c:	602b      	str	r3, [r5, #0]
d004573e:	f7fa fcc7 	bl	d00400d0 <_fstat>
d0045742:	1c43      	adds	r3, r0, #1
d0045744:	d102      	bne.n	d004574c <_fstat_r+0x1c>
d0045746:	682b      	ldr	r3, [r5, #0]
d0045748:	b103      	cbz	r3, d004574c <_fstat_r+0x1c>
d004574a:	6023      	str	r3, [r4, #0]
d004574c:	bd38      	pop	{r3, r4, r5, pc}
d004574e:	bf00      	nop
d0045750:	d0047b1c 	.word	0xd0047b1c

d0045754 <_isatty_r>:
d0045754:	b538      	push	{r3, r4, r5, lr}
d0045756:	4d06      	ldr	r5, [pc, #24]	; (d0045770 <_isatty_r+0x1c>)
d0045758:	2300      	movs	r3, #0
d004575a:	4604      	mov	r4, r0
d004575c:	4608      	mov	r0, r1
d004575e:	602b      	str	r3, [r5, #0]
d0045760:	f7fa fcde 	bl	d0040120 <_isatty>
d0045764:	1c43      	adds	r3, r0, #1
d0045766:	d102      	bne.n	d004576e <_isatty_r+0x1a>
d0045768:	682b      	ldr	r3, [r5, #0]
d004576a:	b103      	cbz	r3, d004576e <_isatty_r+0x1a>
d004576c:	6023      	str	r3, [r4, #0]
d004576e:	bd38      	pop	{r3, r4, r5, pc}
d0045770:	d0047b1c 	.word	0xd0047b1c

d0045774 <_lseek_r>:
d0045774:	b538      	push	{r3, r4, r5, lr}
d0045776:	4d07      	ldr	r5, [pc, #28]	; (d0045794 <_lseek_r+0x20>)
d0045778:	4604      	mov	r4, r0
d004577a:	4608      	mov	r0, r1
d004577c:	4611      	mov	r1, r2
d004577e:	2200      	movs	r2, #0
d0045780:	602a      	str	r2, [r5, #0]
d0045782:	461a      	mov	r2, r3
d0045784:	f7fa fcaa 	bl	d00400dc <_lseek>
d0045788:	1c43      	adds	r3, r0, #1
d004578a:	d102      	bne.n	d0045792 <_lseek_r+0x1e>
d004578c:	682b      	ldr	r3, [r5, #0]
d004578e:	b103      	cbz	r3, d0045792 <_lseek_r+0x1e>
d0045790:	6023      	str	r3, [r4, #0]
d0045792:	bd38      	pop	{r3, r4, r5, pc}
d0045794:	d0047b1c 	.word	0xd0047b1c
	...

d00457a0 <memchr>:
d00457a0:	f001 01ff 	and.w	r1, r1, #255	; 0xff
d00457a4:	2a10      	cmp	r2, #16
d00457a6:	db2b      	blt.n	d0045800 <memchr+0x60>
d00457a8:	f010 0f07 	tst.w	r0, #7
d00457ac:	d008      	beq.n	d00457c0 <memchr+0x20>
d00457ae:	f810 3b01 	ldrb.w	r3, [r0], #1
d00457b2:	3a01      	subs	r2, #1
d00457b4:	428b      	cmp	r3, r1
d00457b6:	d02d      	beq.n	d0045814 <memchr+0x74>
d00457b8:	f010 0f07 	tst.w	r0, #7
d00457bc:	b342      	cbz	r2, d0045810 <memchr+0x70>
d00457be:	d1f6      	bne.n	d00457ae <memchr+0xe>
d00457c0:	b4f0      	push	{r4, r5, r6, r7}
d00457c2:	ea41 2101 	orr.w	r1, r1, r1, lsl #8
d00457c6:	ea41 4101 	orr.w	r1, r1, r1, lsl #16
d00457ca:	f022 0407 	bic.w	r4, r2, #7
d00457ce:	f07f 0700 	mvns.w	r7, #0
d00457d2:	2300      	movs	r3, #0
d00457d4:	e8f0 5602 	ldrd	r5, r6, [r0], #8
d00457d8:	3c08      	subs	r4, #8
d00457da:	ea85 0501 	eor.w	r5, r5, r1
d00457de:	ea86 0601 	eor.w	r6, r6, r1
d00457e2:	fa85 f547 	uadd8	r5, r5, r7
d00457e6:	faa3 f587 	sel	r5, r3, r7
d00457ea:	fa86 f647 	uadd8	r6, r6, r7
d00457ee:	faa5 f687 	sel	r6, r5, r7
d00457f2:	b98e      	cbnz	r6, d0045818 <memchr+0x78>
d00457f4:	d1ee      	bne.n	d00457d4 <memchr+0x34>
d00457f6:	bcf0      	pop	{r4, r5, r6, r7}
d00457f8:	f001 01ff 	and.w	r1, r1, #255	; 0xff
d00457fc:	f002 0207 	and.w	r2, r2, #7
d0045800:	b132      	cbz	r2, d0045810 <memchr+0x70>
d0045802:	f810 3b01 	ldrb.w	r3, [r0], #1
d0045806:	3a01      	subs	r2, #1
d0045808:	ea83 0301 	eor.w	r3, r3, r1
d004580c:	b113      	cbz	r3, d0045814 <memchr+0x74>
d004580e:	d1f8      	bne.n	d0045802 <memchr+0x62>
d0045810:	2000      	movs	r0, #0
d0045812:	4770      	bx	lr
d0045814:	3801      	subs	r0, #1
d0045816:	4770      	bx	lr
d0045818:	2d00      	cmp	r5, #0
d004581a:	bf06      	itte	eq
d004581c:	4635      	moveq	r5, r6
d004581e:	3803      	subeq	r0, #3
d0045820:	3807      	subne	r0, #7
d0045822:	f015 0f01 	tst.w	r5, #1
d0045826:	d107      	bne.n	d0045838 <memchr+0x98>
d0045828:	3001      	adds	r0, #1
d004582a:	f415 7f80 	tst.w	r5, #256	; 0x100
d004582e:	bf02      	ittt	eq
d0045830:	3001      	addeq	r0, #1
d0045832:	f415 3fc0 	tsteq.w	r5, #98304	; 0x18000
d0045836:	3001      	addeq	r0, #1
d0045838:	bcf0      	pop	{r4, r5, r6, r7}
d004583a:	3801      	subs	r0, #1
d004583c:	4770      	bx	lr
d004583e:	bf00      	nop

d0045840 <memcpy>:
d0045840:	440a      	add	r2, r1
d0045842:	4291      	cmp	r1, r2
d0045844:	f100 33ff 	add.w	r3, r0, #4294967295	; 0xffffffff
d0045848:	d100      	bne.n	d004584c <memcpy+0xc>
d004584a:	4770      	bx	lr
d004584c:	b510      	push	{r4, lr}
d004584e:	f811 4b01 	ldrb.w	r4, [r1], #1
d0045852:	f803 4f01 	strb.w	r4, [r3, #1]!
d0045856:	4291      	cmp	r1, r2
d0045858:	d1f9      	bne.n	d004584e <memcpy+0xe>
d004585a:	bd10      	pop	{r4, pc}

d004585c <memmove>:
d004585c:	4288      	cmp	r0, r1
d004585e:	b510      	push	{r4, lr}
d0045860:	eb01 0402 	add.w	r4, r1, r2
d0045864:	d902      	bls.n	d004586c <memmove+0x10>
d0045866:	4284      	cmp	r4, r0
d0045868:	4623      	mov	r3, r4
d004586a:	d807      	bhi.n	d004587c <memmove+0x20>
d004586c:	1e43      	subs	r3, r0, #1
d004586e:	42a1      	cmp	r1, r4
d0045870:	d008      	beq.n	d0045884 <memmove+0x28>
d0045872:	f811 2b01 	ldrb.w	r2, [r1], #1
d0045876:	f803 2f01 	strb.w	r2, [r3, #1]!
d004587a:	e7f8      	b.n	d004586e <memmove+0x12>
d004587c:	4402      	add	r2, r0
d004587e:	4601      	mov	r1, r0
d0045880:	428a      	cmp	r2, r1
d0045882:	d100      	bne.n	d0045886 <memmove+0x2a>
d0045884:	bd10      	pop	{r4, pc}
d0045886:	f813 4d01 	ldrb.w	r4, [r3, #-1]!
d004588a:	f802 4d01 	strb.w	r4, [r2, #-1]!
d004588e:	e7f7      	b.n	d0045880 <memmove+0x24>

d0045890 <_realloc_r>:
d0045890:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d0045892:	4607      	mov	r7, r0
d0045894:	4614      	mov	r4, r2
d0045896:	460e      	mov	r6, r1
d0045898:	b921      	cbnz	r1, d00458a4 <_realloc_r+0x14>
d004589a:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
d004589e:	4611      	mov	r1, r2
d00458a0:	f7fe bdc4 	b.w	d004442c <_malloc_r>
d00458a4:	b922      	cbnz	r2, d00458b0 <_realloc_r+0x20>
d00458a6:	f7fe fd71 	bl	d004438c <_free_r>
d00458aa:	4625      	mov	r5, r4
d00458ac:	4628      	mov	r0, r5
d00458ae:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d00458b0:	f000 f826 	bl	d0045900 <_malloc_usable_size_r>
d00458b4:	42a0      	cmp	r0, r4
d00458b6:	d20f      	bcs.n	d00458d8 <_realloc_r+0x48>
d00458b8:	4621      	mov	r1, r4
d00458ba:	4638      	mov	r0, r7
d00458bc:	f7fe fdb6 	bl	d004442c <_malloc_r>
d00458c0:	4605      	mov	r5, r0
d00458c2:	2800      	cmp	r0, #0
d00458c4:	d0f2      	beq.n	d00458ac <_realloc_r+0x1c>
d00458c6:	4631      	mov	r1, r6
d00458c8:	4622      	mov	r2, r4
d00458ca:	f7ff ffb9 	bl	d0045840 <memcpy>
d00458ce:	4631      	mov	r1, r6
d00458d0:	4638      	mov	r0, r7
d00458d2:	f7fe fd5b 	bl	d004438c <_free_r>
d00458d6:	e7e9      	b.n	d00458ac <_realloc_r+0x1c>
d00458d8:	4635      	mov	r5, r6
d00458da:	e7e7      	b.n	d00458ac <_realloc_r+0x1c>

d00458dc <_read_r>:
d00458dc:	b538      	push	{r3, r4, r5, lr}
d00458de:	4d07      	ldr	r5, [pc, #28]	; (d00458fc <_read_r+0x20>)
d00458e0:	4604      	mov	r4, r0
d00458e2:	4608      	mov	r0, r1
d00458e4:	4611      	mov	r1, r2
d00458e6:	2200      	movs	r2, #0
d00458e8:	602a      	str	r2, [r5, #0]
d00458ea:	461a      	mov	r2, r3
d00458ec:	f7fa fbe2 	bl	d00400b4 <_read>
d00458f0:	1c43      	adds	r3, r0, #1
d00458f2:	d102      	bne.n	d00458fa <_read_r+0x1e>
d00458f4:	682b      	ldr	r3, [r5, #0]
d00458f6:	b103      	cbz	r3, d00458fa <_read_r+0x1e>
d00458f8:	6023      	str	r3, [r4, #0]
d00458fa:	bd38      	pop	{r3, r4, r5, pc}
d00458fc:	d0047b1c 	.word	0xd0047b1c

d0045900 <_malloc_usable_size_r>:
d0045900:	f851 3c04 	ldr.w	r3, [r1, #-4]
d0045904:	1f18      	subs	r0, r3, #4
d0045906:	2b00      	cmp	r3, #0
d0045908:	bfbc      	itt	lt
d004590a:	580b      	ldrlt	r3, [r1, r0]
d004590c:	18c0      	addlt	r0, r0, r3
d004590e:	4770      	bx	lr
d0045910:	6964694d 	.word	0x6964694d
d0045914:	73616c42 	.word	0x73616c42
d0045918:	20726574 	.word	0x20726574
d004591c:	352e3056 	.word	0x352e3056
d0045920:	00000039 	.word	0x00000039
d0045924:	68676972 	.word	0x68676972
d0045928:	6c632074 	.word	0x6c632074
d004592c:	206b6369 	.word	0x206b6369
d0045930:	656c6572 	.word	0x656c6572
d0045934:	20657361 	.word	0x20657361
d0045938:	74697865 	.word	0x74697865
d004593c:	00000073 	.word	0x00000073
d0045940:	65646f6d 	.word	0x65646f6d
d0045944:	0000003d 	.word	0x0000003d
d0045948:	45444f4d 	.word	0x45444f4d
d004594c:	0000003d 	.word	0x0000003d
d0045950:	61722d2d 	.word	0x61722d2d
d0045954:	00000077 	.word	0x00000077
d0045958:	6f6e2d2d 	.word	0x6f6e2d2d
d004595c:	7273702d 	.word	0x7273702d
d0045960:	00003438 	.word	0x00003438
d0045964:	00776172 	.word	0x00776172
d0045968:	00574152 	.word	0x00574152
d004596c:	746d2d2d 	.word	0x746d2d2d
d0045970:	74733233 	.word	0x74733233
d0045974:	00000064 	.word	0x00000064
d0045978:	544d2d2d 	.word	0x544d2d2d
d004597c:	54533233 	.word	0x54533233
d0045980:	00000044 	.word	0x00000044
d0045984:	746d2d2d 	.word	0x746d2d2d
d0045988:	732d3233 	.word	0x732d3233
d004598c:	646e6174 	.word	0x646e6174
d0045990:	00647261 	.word	0x00647261
d0045994:	544d2d2d 	.word	0x544d2d2d
d0045998:	532d3233 	.word	0x532d3233
d004599c:	444e4154 	.word	0x444e4154
d00459a0:	00445241 	.word	0x00445241
d00459a4:	746d2d2d 	.word	0x746d2d2d
d00459a8:	732d3233 	.word	0x732d3233
d00459ac:	646e6174 	.word	0x646e6174
d00459b0:	2d647261 	.word	0x2d647261
d00459b4:	6e616863 	.word	0x6e616863
d00459b8:	736c656e 	.word	0x736c656e
d00459bc:	00000000 	.word	0x00000000
d00459c0:	3233746d 	.word	0x3233746d
d00459c4:	00647473 	.word	0x00647473
d00459c8:	3233544d 	.word	0x3233544d
d00459cc:	00445453 	.word	0x00445453
d00459d0:	3233746d 	.word	0x3233746d
d00459d4:	6174732d 	.word	0x6174732d
d00459d8:	7261646e 	.word	0x7261646e
d00459dc:	00000064 	.word	0x00000064
d00459e0:	3233544d 	.word	0x3233544d
d00459e4:	4154532d 	.word	0x4154532d
d00459e8:	5241444e 	.word	0x5241444e
d00459ec:	00000044 	.word	0x00000044
d00459f0:	3233746d 	.word	0x3233746d
d00459f4:	6174732d 	.word	0x6174732d
d00459f8:	7261646e 	.word	0x7261646e
d00459fc:	68632d64 	.word	0x68632d64
d0045a00:	656e6e61 	.word	0x656e6e61
d0045a04:	0000736c 	.word	0x0000736c
d0045a08:	746d2d2d 	.word	0x746d2d2d
d0045a0c:	00003233 	.word	0x00003233
d0045a10:	544d2d2d 	.word	0x544d2d2d
d0045a14:	00003233 	.word	0x00003233
d0045a18:	746d2d2d 	.word	0x746d2d2d
d0045a1c:	6c613233 	.word	0x6c613233
d0045a20:	00000074 	.word	0x00000074
d0045a24:	544d2d2d 	.word	0x544d2d2d
d0045a28:	4c413233 	.word	0x4c413233
d0045a2c:	00000054 	.word	0x00000054
d0045a30:	746d2d2d 	.word	0x746d2d2d
d0045a34:	612d3233 	.word	0x612d3233
d0045a38:	7265746c 	.word	0x7265746c
d0045a3c:	6574616e 	.word	0x6574616e
d0045a40:	00000000 	.word	0x00000000
d0045a44:	544d2d2d 	.word	0x544d2d2d
d0045a48:	412d3233 	.word	0x412d3233
d0045a4c:	5245544c 	.word	0x5245544c
d0045a50:	4554414e 	.word	0x4554414e
d0045a54:	00000000 	.word	0x00000000
d0045a58:	3233746d 	.word	0x3233746d
d0045a5c:	00000000 	.word	0x00000000
d0045a60:	3233544d 	.word	0x3233544d
d0045a64:	00000000 	.word	0x00000000
d0045a68:	332d544d 	.word	0x332d544d
d0045a6c:	00000032 	.word	0x00000032
d0045a70:	3233746d 	.word	0x3233746d
d0045a74:	00746c61 	.word	0x00746c61
d0045a78:	3233544d 	.word	0x3233544d
d0045a7c:	00544c41 	.word	0x00544c41
d0045a80:	3233746d 	.word	0x3233746d
d0045a84:	746c612d 	.word	0x746c612d
d0045a88:	616e7265 	.word	0x616e7265
d0045a8c:	00006574 	.word	0x00006574
d0045a90:	3233544d 	.word	0x3233544d
d0045a94:	544c412d 	.word	0x544c412d
d0045a98:	414e5245 	.word	0x414e5245
d0045a9c:	00004554 	.word	0x00004554
d0045aa0:	6d672d2d 	.word	0x6d672d2d
d0045aa4:	00000000 	.word	0x00000000
d0045aa8:	4d472d2d 	.word	0x4d472d2d
d0045aac:	00000000 	.word	0x00000000
d0045ab0:	00006d67 	.word	0x00006d67
d0045ab4:	00004d47 	.word	0x00004d47
d0045ab8:	77612d2d 	.word	0x77612d2d
d0045abc:	00323365 	.word	0x00323365
d0045ac0:	57412d2d 	.word	0x57412d2d
d0045ac4:	00323345 	.word	0x00323345
d0045ac8:	33657761 	.word	0x33657761
d0045acc:	00000032 	.word	0x00000032
d0045ad0:	33455741 	.word	0x33455741
d0045ad4:	00000032 	.word	0x00000032
d0045ad8:	77612d2d 	.word	0x77612d2d
d0045adc:	00343665 	.word	0x00343665
d0045ae0:	57412d2d 	.word	0x57412d2d
d0045ae4:	00343645 	.word	0x00343645
d0045ae8:	36657761 	.word	0x36657761
d0045aec:	00000034 	.word	0x00000034
d0045af0:	36455741 	.word	0x36455741
d0045af4:	00000034 	.word	0x00000034
d0045af8:	63732d2d 	.word	0x63732d2d
d0045afc:	00003535 	.word	0x00003535
d0045b00:	43532d2d 	.word	0x43532d2d
d0045b04:	00003535 	.word	0x00003535
d0045b08:	63732d2d 	.word	0x63732d2d
d0045b0c:	0035352d 	.word	0x0035352d
d0045b10:	43532d2d 	.word	0x43532d2d
d0045b14:	0035352d 	.word	0x0035352d
d0045b18:	35356373 	.word	0x35356373
d0045b1c:	00000000 	.word	0x00000000
d0045b20:	35354353 	.word	0x35354353
d0045b24:	00000000 	.word	0x00000000
d0045b28:	352d4353 	.word	0x352d4353
d0045b2c:	00000035 	.word	0x00000035
d0045b30:	706f2d2d 	.word	0x706f2d2d
d0045b34:	0000336c 	.word	0x0000336c
d0045b38:	504f2d2d 	.word	0x504f2d2d
d0045b3c:	0000334c 	.word	0x0000334c
d0045b40:	706f2d2d 	.word	0x706f2d2d
d0045b44:	00332d6c 	.word	0x00332d6c
d0045b48:	504f2d2d 	.word	0x504f2d2d
d0045b4c:	00332d4c 	.word	0x00332d4c
d0045b50:	336c706f 	.word	0x336c706f
d0045b54:	00000000 	.word	0x00000000
d0045b58:	334c504f 	.word	0x334c504f
d0045b5c:	00000000 	.word	0x00000000
d0045b60:	2d4c504f 	.word	0x2d4c504f
d0045b64:	00000033 	.word	0x00000033
d0045b68:	73702d2d 	.word	0x73702d2d
d0045b6c:	00343872 	.word	0x00343872
d0045b70:	53502d2d 	.word	0x53502d2d
d0045b74:	00343852 	.word	0x00343852
d0045b78:	38727370 	.word	0x38727370
d0045b7c:	00000034 	.word	0x00000034
d0045b80:	38525350 	.word	0x38525350
d0045b84:	00000034 	.word	0x00000034
d0045b88:	61722d2d 	.word	0x61722d2d
d0045b8c:	00000a77 	.word	0x00000a77
d0045b90:	66732d2d 	.word	0x66732d2d
d0045b94:	000a7525 	.word	0x000a7525
d0045b98:	41434453 	.word	0x41434453
d0045b9c:	2f3a4452 	.word	0x2f3a4452
d0045ba0:	62646973 	.word	0x62646973
d0045ba4:	652f786f 	.word	0x652f786f
d0045ba8:	6d2f766e 	.word	0x6d2f766e
d0045bac:	70696469 	.word	0x70696469
d0045bb0:	2e79616c 	.word	0x2e79616c
d0045bb4:	00666e63 	.word	0x00666e63
d0045bb8:	097f7ef0 	.word	0x097f7ef0
d0045bbc:	0000f701 	.word	0x0000f701
d0045bc0:	3a4d4152 	.word	0x3a4d4152
d0045bc4:	30447830 	.word	0x30447830
d0045bc8:	30303030 	.word	0x30303030
d0045bcc:	00003030 	.word	0x00003030
d0045bd0:	66732d2d 	.word	0x66732d2d
d0045bd4:	74736574 	.word	0x74736574
d0045bd8:	00000000 	.word	0x00000000
d0045bdc:	61722d2d 	.word	0x61722d2d
d0045be0:	0000006d 	.word	0x0000006d
d0045be4:	41522d2d 	.word	0x41522d2d
d0045be8:	0000004d 	.word	0x0000004d
d0045bec:	006d6172 	.word	0x006d6172
d0045bf0:	6964696d 	.word	0x6964696d
d0045bf4:	73616c62 	.word	0x73616c62
d0045bf8:	2e726574 	.word	0x2e726574
d0045bfc:	20707061 	.word	0x20707061
d0045c00:	6c69663c 	.word	0x6c69663c
d0045c04:	696d2e65 	.word	0x696d2e65
d0045c08:	2d7c3e64 	.word	0x2d7c3e64
d0045c0c:	6d61722d 	.word	0x6d61722d
d0045c10:	2d2d5b20 	.word	0x2d2d5b20
d0045c14:	3233746d 	.word	0x3233746d
d0045c18:	6d2d2d7c 	.word	0x6d2d2d7c
d0045c1c:	73323374 	.word	0x73323374
d0045c20:	2d7c6474 	.word	0x2d7c6474
d0045c24:	7c6d672d 	.word	0x7c6d672d
d0045c28:	77612d2d 	.word	0x77612d2d
d0045c2c:	7c323365 	.word	0x7c323365
d0045c30:	77612d2d 	.word	0x77612d2d
d0045c34:	7c343665 	.word	0x7c343665
d0045c38:	63732d2d 	.word	0x63732d2d
d0045c3c:	2d7c3535 	.word	0x2d7c3535
d0045c40:	6c706f2d 	.word	0x6c706f2d
d0045c44:	2d2d7c33 	.word	0x2d2d7c33
d0045c48:	2e306673 	.word	0x2e306673
d0045c4c:	7c35312e 	.word	0x7c35312e
d0045c50:	73702d2d 	.word	0x73702d2d
d0045c54:	7c343872 	.word	0x7c343872
d0045c58:	61722d2d 	.word	0x61722d2d
d0045c5c:	5b205d77 	.word	0x5b205d77
d0045c60:	66732d2d 	.word	0x66732d2d
d0045c64:	74736574 	.word	0x74736574
d0045c68:	0000005d 	.word	0x0000005d
d0045c6c:	6964696d 	.word	0x6964696d
d0045c70:	73616c62 	.word	0x73616c62
d0045c74:	2e726574 	.word	0x2e726574
d0045c78:	20707061 	.word	0x20707061
d0045c7c:	6c69663c 	.word	0x6c69663c
d0045c80:	696d2e65 	.word	0x696d2e65
d0045c84:	2d7c3e64 	.word	0x2d7c3e64
d0045c88:	6d61722d 	.word	0x6d61722d
d0045c8c:	6f6d5b20 	.word	0x6f6d5b20
d0045c90:	205d6564 	.word	0x205d6564
d0045c94:	732d2d5b 	.word	0x732d2d5b
d0045c98:	73657466 	.word	0x73657466
d0045c9c:	000a5d74 	.word	0x000a5d74
d0045ca0:	6469732f 	.word	0x6469732f
d0045ca4:	2f786f62 	.word	0x2f786f62
d0045ca8:	2f766e65 	.word	0x2f766e65
d0045cac:	6964696d 	.word	0x6964696d
d0045cb0:	79616c70 	.word	0x79616c70
d0045cb4:	666e632e 	.word	0x666e632e
d0045cb8:	00000000 	.word	0x00000000
d0045cbc:	6964696d 	.word	0x6964696d
d0045cc0:	79616c70 	.word	0x79616c70
d0045cc4:	666e632e 	.word	0x666e632e
d0045cc8:	76617320 	.word	0x76617320
d0045ccc:	61662065 	.word	0x61662065
d0045cd0:	64656c69 	.word	0x64656c69
d0045cd4:	7525203a 	.word	0x7525203a
d0045cd8:	0000000a 	.word	0x0000000a
d0045cdc:	6964696d 	.word	0x6964696d
d0045ce0:	79616c70 	.word	0x79616c70
d0045ce4:	666e632e 	.word	0x666e632e
d0045ce8:	65726320 	.word	0x65726320
d0045cec:	20657461 	.word	0x20657461
d0045cf0:	6c696166 	.word	0x6c696166
d0045cf4:	203a6465 	.word	0x203a6465
d0045cf8:	72207525 	.word	0x72207525
d0045cfc:	3a646165 	.word	0x3a646165
d0045d00:	000a7525 	.word	0x000a7525
d0045d04:	6964694d 	.word	0x6964694d
d0045d08:	73616c42 	.word	0x73616c42
d0045d0c:	20726574 	.word	0x20726574
d0045d10:	6e756f53 	.word	0x6e756f53
d0045d14:	6e6f4664 	.word	0x6e6f4664
d0045d18:	65742074 	.word	0x65742074
d0045d1c:	203a7473 	.word	0x203a7473
d0045d20:	000a7325 	.word	0x000a7325
d0045d24:	6964694d 	.word	0x6964694d
d0045d28:	73616c42 	.word	0x73616c42
d0045d2c:	20726574 	.word	0x20726574
d0045d30:	65646f6d 	.word	0x65646f6d
d0045d34:	76617320 	.word	0x76617320
d0045d38:	203a6465 	.word	0x203a6465
d0045d3c:	000a7325 	.word	0x000a7325
d0045d40:	6964694d 	.word	0x6964694d
d0045d44:	73616c42 	.word	0x73616c42
d0045d48:	20726574 	.word	0x20726574
d0045d4c:	65646f6d 	.word	0x65646f6d
d0045d50:	76617320 	.word	0x76617320
d0045d54:	000a6465 	.word	0x000a6465
d0045d58:	6c756f43 	.word	0x6c756f43
d0045d5c:	6f6e2064 	.word	0x6f6e2064
d0045d60:	6f6c2074 	.word	0x6f6c2074
d0045d64:	4d206461 	.word	0x4d206461
d0045d68:	20494449 	.word	0x20494449
d0045d6c:	6d6f7266 	.word	0x6d6f7266
d0045d70:	4d415220 	.word	0x4d415220
d0045d74:	7830203a 	.word	0x7830203a
d0045d78:	58383025 	.word	0x58383025
d0045d7c:	0000000a 	.word	0x0000000a
d0045d80:	6c756f43 	.word	0x6c756f43
d0045d84:	6f6e2064 	.word	0x6f6e2064
d0045d88:	6f6c2074 	.word	0x6f6c2074
d0045d8c:	4d206461 	.word	0x4d206461
d0045d90:	20494449 	.word	0x20494449
d0045d94:	6d6f7266 	.word	0x6d6f7266
d0045d98:	4d415220 	.word	0x4d415220
d0045d9c:	0000000a 	.word	0x0000000a
d0045da0:	6c756f43 	.word	0x6c756f43
d0045da4:	6f6e2064 	.word	0x6f6e2064
d0045da8:	6f6c2074 	.word	0x6f6c2074
d0045dac:	4d206461 	.word	0x4d206461
d0045db0:	3a494449 	.word	0x3a494449
d0045db4:	0a732520 	.word	0x0a732520
d0045db8:	00000000 	.word	0x00000000
d0045dbc:	6c756f43 	.word	0x6c756f43
d0045dc0:	6f6e2064 	.word	0x6f6e2064
d0045dc4:	6f6c2074 	.word	0x6f6c2074
d0045dc8:	4d206461 	.word	0x4d206461
d0045dcc:	0a494449 	.word	0x0a494449
d0045dd0:	00000000 	.word	0x00000000
d0045dd4:	75736e55 	.word	0x75736e55
d0045dd8:	726f7070 	.word	0x726f7070
d0045ddc:	20646574 	.word	0x20646574
d0045de0:	4944494d 	.word	0x4944494d
d0045de4:	206e6920 	.word	0x206e6920
d0045de8:	004d4152 	.word	0x004d4152
d0045dec:	75736e55 	.word	0x75736e55
d0045df0:	726f7070 	.word	0x726f7070
d0045df4:	20646574 	.word	0x20646574
d0045df8:	4944494d 	.word	0x4944494d
d0045dfc:	7325203a 	.word	0x7325203a
d0045e00:	0000000a 	.word	0x0000000a
d0045e04:	75736e55 	.word	0x75736e55
d0045e08:	726f7070 	.word	0x726f7070
d0045e0c:	20646574 	.word	0x20646574
d0045e10:	4944494d 	.word	0x4944494d
d0045e14:	000a3a21 	.word	0x000a3a21
d0045e18:	6c756f43 	.word	0x6c756f43
d0045e1c:	6f6e2064 	.word	0x6f6e2064
d0045e20:	6c612074 	.word	0x6c612074
d0045e24:	61636f6c 	.word	0x61636f6c
d0045e28:	76206574 	.word	0x76206574
d0045e2c:	61757369 	.word	0x61757369
d0045e30:	657a696c 	.word	0x657a696c
d0045e34:	61622072 	.word	0x61622072
d0045e38:	72676b63 	.word	0x72676b63
d0045e3c:	646e756f 	.word	0x646e756f
d0045e40:	00000000 	.word	0x00000000
d0045e44:	6964694d 	.word	0x6964694d
d0045e48:	616c6220 	.word	0x616c6220
d0045e4c:	72657473 	.word	0x72657473
d0045e50:	61747320 	.word	0x61747320
d0045e54:	64657472 	.word	0x64657472
d0045e58:	0000000a 	.word	0x0000000a
d0045e5c:	75323025 	.word	0x75323025
d0045e60:	3230253a 	.word	0x3230253a
d0045e64:	30252f75 	.word	0x30252f75
d0045e68:	253a7532 	.word	0x253a7532
d0045e6c:	00753230 	.word	0x00753230
d0045e70:	00007525 	.word	0x00007525
d0045e74:	007f07b0 	.word	0x007f07b0
d0045e78:	007f0bb0 	.word	0x007f0bb0
d0045e7c:	007f3c90 	.word	0x007f3c90
d0045e80:	00003c80 	.word	0x00003c80
d0045e84:	746d2d2d 	.word	0x746d2d2d
d0045e88:	000a3233 	.word	0x000a3233
d0045e8c:	746d2d2d 	.word	0x746d2d2d
d0045e90:	74733233 	.word	0x74733233
d0045e94:	00000a64 	.word	0x00000a64
d0045e98:	6d672d2d 	.word	0x6d672d2d
d0045e9c:	0000000a 	.word	0x0000000a
d0045ea0:	77612d2d 	.word	0x77612d2d
d0045ea4:	0a323365 	.word	0x0a323365
d0045ea8:	00000000 	.word	0x00000000
d0045eac:	77612d2d 	.word	0x77612d2d
d0045eb0:	0a343665 	.word	0x0a343665
d0045eb4:	00000000 	.word	0x00000000
d0045eb8:	63732d2d 	.word	0x63732d2d
d0045ebc:	000a3535 	.word	0x000a3535
d0045ec0:	706f2d2d 	.word	0x706f2d2d
d0045ec4:	000a336c 	.word	0x000a336c
d0045ec8:	73702d2d 	.word	0x73702d2d
d0045ecc:	0a343872 	.word	0x0a343872
d0045ed0:	00000000 	.word	0x00000000

d0045ed4 <CSWTCH.393>:
d0045ed4:	d0045e84 d0045e8c d0045e98 d0045ea0     .^...^...^...^..
d0045ee4:	d0045eac d0045eb8 d0045ec0 d0045b88     .^...^...^...[..
d0045ef4:	d0045b88 d0045b88 d0045b88 d0045b88     .[...[...[...[..
d0045f04:	d0045b88 d0045b88 d0045b88 d0045b88     .[...[...[...[..
d0045f14:	d0045b88 d0045b88 d0045b88 d0045b88     .[...[...[...[..
d0045f24:	d0045b88 d0045b88 d0045b88 d0045ec8     .[...[...[...^..
d0045f34:	00400ab9 332d544d 4c412032 00000054     ..@.MT-32 ALT...
d0045f44:	332d544d 54532032 00000044 00304653     MT-32 STD...SF0.
d0045f54:	00314653 00324653 00334653 00344653     SF1.SF2.SF3.SF4.
d0045f64:	00354653 00364653 00374653 00384653     SF5.SF6.SF7.SF8.
d0045f74:	00394653 30314653 00000000 31314653     SF9.SF10....SF11
d0045f84:	00000000 32314653 00000000 33314653     ....SF12....SF13
d0045f94:	00000000 34314653 00000000 35314653     ....SF14....SF15
d0045fa4:	00000000                                ....

d0045fa8 <CSWTCH.40>:
d0045fa8:	02030100                                ....

d0045fac <CSWTCH.42>:
d0045fac:	d0045f38 d0045f44 d0045ab4 d0045ad0     8_..D_...Z...Z..
d0045fbc:	d0045af0 d0045b28 d0045b60 d0045f50     .Z..([..`[..P_..
d0045fcc:	d0045f54 d0045f58 d0045f5c d0045f60     T_..X_..\_..`_..
d0045fdc:	d0045f64 d0045f68 d0045f6c d0045f70     d_..h_..l_..p_..
d0045fec:	d0045f74 d0045f78 d0045f80 d0045f88     t_..x_..._..._..
d0045ffc:	d0045f90 d0045f98 d0045fa0 d0045b80     ._..._..._...[..

d004600c <mt32_channel_setup_alt_sysex>:
d004600c:	161041f0 0d001012 03020100 07060504     .A..............
d004601c:	00f73e09                                .>..

d0046020 <mt32_channel_setup_std_sysex>:
d0046020:	161041f0 0d001012 04030201 08070605     .A..............
d0046030:	00f73609                                .6..

d0046034 <mt32_drum_note_map>:
	...
d0046054:	24242323 28272625 2c2a2a29 2f2e2e2c     ##$$%&'()**,,../
d0046064:	33323130 37363534 3b3a3938 3f3e3d3c     0123456789:;<=>?
d0046074:	43424140 47464544 2e2e2e48 3231302f     @ABCDEFGH.../012
d0046084:	36353433 3a393837 3b3b3b3b 3b3b3b3b     3456789:;;;;;;;;
d0046094:	3b3b3b3b 3b3b3b3b 3b3b3b3b 3b3b3b3b     ;;;;;;;;;;;;;;;;
d00460a4:	3b3b3b3b 3b3b3b3b 3b3b3b3b 3b3b3b3b     ;;;;;;;;;;;;;;;;

d00460b4 <mt32_gm_program_map>:
d00460b4:	03020100 07100504 612e6516 69666768     .........e.ahgfi
d00460c4:	0c0a0908 0f570f0c 3d3d3c3b 3c3e3e3e     ......W.;<==>>><
d00460d4:	46434240 1d1c4544 38363534 70393331     @BCFDE..4568139p
d00460e4:	32323130 7a272722 595e5a58 19185f5c     0122"''zXZ^Y\_..
d00460f4:	51504f4e 52565554 4d4c484a 4d6c6b6e     NOPQTUVRJHLMnklM
d0046104:	2f2f2f2f 1c2f2718 22222620 25262330     ////.'/. &""0#&%
d0046114:	25282429 7f2b2764 69693b3f 54344d63     )$(%d'+.?;iicM4T
d0046124:	73727364 77747175 7c7f6f78 7f7d7b7b     dsrsuqtwxo.|{{}.

d0046134 <psr84_gm_program_map>:
d0046134:	02000000 07060303 29292809 262a2928     .........())()*&
d0046144:	0c0c0a0a 11430f0a 18181d1f 171a1212     ......C.........
d0046154:	54525352 5d5a5755 5d222120 26482423     RSRTUWZ] !"]#$H&
d0046164:	4b4b2423 25454848 2c312f2b 4a343332     #$KKHHE%+/1,234J
d0046174:	3f3e3d3c 373b3a39 41423635 41444140     <=>?9:;756BA@ADA
d0046184:	494a4949 4c494a4c 4b4b5051 514f4e48     IIJILJILQPKKHNOQ
d0046194:	4d4f4e4d 4f4e4d51 261f2727 39204129     MNOMQMNO''.&)A 9
d00461a4:	4c2a6109 634c6060 67666564 7e7d7c7b     .a*L``Lcdefg{|}~

d00461b4 <_global_impure_ptr>:
d00461b4:	d0046290                                .b..

d00461b8 <__sf_fake_stderr>:
	...

d00461d8 <__sf_fake_stdin>:
	...

d00461f8 <__sf_fake_stdout>:
	...
d0046218:	2b302d23 6c680020 6665004c 47464567     #-0+ .hlL.efgEFG
d0046228:	32313000 36353433 41393837 45444342     .0123456789ABCDE
d0046238:	31300046 35343332 39383736 64636261     F.0123456789abcd
d0046248:	                                         ef.

Disassembly of section .init:

d004624c <_init>:
d004624c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d004624e:	bf00      	nop

Disassembly of section .fini:

d0046250 <_fini>:
d0046250:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d0046252:	bf00      	nop

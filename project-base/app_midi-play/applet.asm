
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
d004001e:	f003 fa7f 	bl	d0043520 <setbuf>
d0040022:	6833      	ldr	r3, [r6, #0]
d0040024:	2100      	movs	r1, #0
d0040026:	68d8      	ldr	r0, [r3, #12]
d0040028:	f003 fa7a 	bl	d0043520 <setbuf>
d004002c:	4629      	mov	r1, r5
d004002e:	4620      	mov	r0, r4
d0040030:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
d0040034:	f001 bee0 	b.w	d0041df8 <main>
d0040038:	d0044a84 	.word	0xd0044a84

d004003c <initMalloc>:
d004003c:	4902      	ldr	r1, [pc, #8]	; (d0040048 <initMalloc+0xc>)
d004003e:	4b03      	ldr	r3, [pc, #12]	; (d004004c <initMalloc+0x10>)
d0040040:	4a03      	ldr	r2, [pc, #12]	; (d0040050 <initMalloc+0x14>)
d0040042:	1a5b      	subs	r3, r3, r1
d0040044:	6013      	str	r3, [r2, #0]
d0040046:	4770      	bx	lr
d0040048:	d0048318 	.word	0xd0048318
d004004c:	d0600000 	.word	0xd0600000
d0040050:	d00461d8 	.word	0xd00461d8

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
d004009c:	f003 f8ea 	bl	d0043274 <__errno>
d00400a0:	2209      	movs	r2, #9
d00400a2:	4603      	mov	r3, r0
d00400a4:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d00400a8:	601a      	str	r2, [r3, #0]
d00400aa:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d00400ac:	d0044b04 	.word	0xd0044b04
d00400b0:	2001f000 	.word	0x2001f000

d00400b4 <_read>:
d00400b4:	b508      	push	{r3, lr}
d00400b6:	f003 f8dd 	bl	d0043274 <__errno>
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
d0040102:	f003 f8b7 	bl	d0043274 <__errno>
d0040106:	220c      	movs	r2, #12
d0040108:	4603      	mov	r3, r0
d004010a:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d004010e:	601a      	str	r2, [r3, #0]
d0040110:	bd10      	pop	{r4, pc}
d0040112:	bf00      	nop
d0040114:	d0044b00 	.word	0xd0044b00
d0040118:	d0048318 	.word	0xd0048318
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
d00403c8:	d0044810 	.word	0xd0044810
d00403cc:	d0044824 	.word	0xd0044824
d00403d0:	d0044a4c 	.word	0xd0044a4c
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

d00404bc <draw_visualizer_prepare_front_buffers>:
d00404bc:	b510      	push	{r4, lr}
d00404be:	4c0c      	ldr	r4, [pc, #48]	; (d00404f0 <draw_visualizer_prepare_front_buffers+0x34>)
d00404c0:	6820      	ldr	r0, [r4, #0]
d00404c2:	f7ff fe2f 	bl	d0040124 <draw_visualizer_front_base>
d00404c6:	4b0b      	ldr	r3, [pc, #44]	; (d00404f4 <draw_visualizer_prepare_front_buffers+0x38>)
d00404c8:	6818      	ldr	r0, [r3, #0]
d00404ca:	f7ff fe2b 	bl	d0040124 <draw_visualizer_front_base>
d00404ce:	4a0a      	ldr	r2, [pc, #40]	; (d00404f8 <draw_visualizer_prepare_front_buffers+0x3c>)
d00404d0:	6820      	ldr	r0, [r4, #0]
d00404d2:	7b13      	ldrb	r3, [r2, #12]
d00404d4:	7b54      	ldrb	r4, [r2, #13]
d00404d6:	7b91      	ldrb	r1, [r2, #14]
d00404d8:	ea43 2304 	orr.w	r3, r3, r4, lsl #8
d00404dc:	7bd2      	ldrb	r2, [r2, #15]
d00404de:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d00404e2:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00404e6:	681b      	ldr	r3, [r3, #0]
d00404e8:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
d00404ec:	69db      	ldr	r3, [r3, #28]
d00404ee:	4718      	bx	r3
d00404f0:	d0044f80 	.word	0xd0044f80
d00404f4:	d0044fa0 	.word	0xd0044fa0
d00404f8:	2001f000 	.word	0x2001f000

d00404fc <tmr1test>:
d00404fc:	4a05      	ldr	r2, [pc, #20]	; (d0040514 <tmr1test+0x18>)
d00404fe:	8813      	ldrh	r3, [r2, #0]
d0040500:	3301      	adds	r3, #1
d0040502:	b29b      	uxth	r3, r3
d0040504:	8013      	strh	r3, [r2, #0]
d0040506:	8813      	ldrh	r3, [r2, #0]
d0040508:	b29b      	uxth	r3, r3
d004050a:	2b0a      	cmp	r3, #10
d004050c:	d901      	bls.n	d0040512 <tmr1test+0x16>
d004050e:	2300      	movs	r3, #0
d0040510:	8013      	strh	r3, [r2, #0]
d0040512:	4770      	bx	lr
d0040514:	d0044f48 	.word	0xd0044f48

d0040518 <midi_send_channel_panic>:
d0040518:	e92d 43f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
d004051c:	2500      	movs	r5, #0
d004051e:	4b2f      	ldr	r3, [pc, #188]	; (d00405dc <midi_send_channel_panic+0xc4>)
d0040520:	4c2f      	ldr	r4, [pc, #188]	; (d00405e0 <midi_send_channel_panic+0xc8>)
d0040522:	b085      	sub	sp, #20
d0040524:	4e2f      	ldr	r6, [pc, #188]	; (d00405e4 <midi_send_channel_panic+0xcc>)
d0040526:	f44f 7200 	mov.w	r2, #512	; 0x200
d004052a:	4629      	mov	r1, r5
d004052c:	482e      	ldr	r0, [pc, #184]	; (d00405e8 <midi_send_channel_panic+0xd0>)
d004052e:	8025      	strh	r5, [r4, #0]
d0040530:	462f      	mov	r7, r5
d0040532:	801d      	strh	r5, [r3, #0]
d0040534:	46a9      	mov	r9, r5
d0040536:	8035      	strh	r5, [r6, #0]
d0040538:	f04f 0878 	mov.w	r8, #120	; 0x78
d004053c:	f002 feb0 	bl	d00432a0 <memset>
d0040540:	4c2a      	ldr	r4, [pc, #168]	; (d00405ec <midi_send_channel_panic+0xd4>)
d0040542:	4b2b      	ldr	r3, [pc, #172]	; (d00405f0 <midi_send_channel_panic+0xd8>)
d0040544:	601d      	str	r5, [r3, #0]
d0040546:	7d20      	ldrb	r0, [r4, #20]
d0040548:	f067 054f 	orn	r5, r7, #79	; 0x4f
d004054c:	7d61      	ldrb	r1, [r4, #21]
d004054e:	f04f 0c7b 	mov.w	ip, #123	; 0x7b
d0040552:	7da2      	ldrb	r2, [r4, #22]
d0040554:	b2ed      	uxtb	r5, r5
d0040556:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d004055a:	7de3      	ldrb	r3, [r4, #23]
d004055c:	2679      	movs	r6, #121	; 0x79
d004055e:	f88d c00d 	strb.w	ip, [sp, #13]
d0040562:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d0040566:	f88d 5004 	strb.w	r5, [sp, #4]
d004056a:	f88d 5008 	strb.w	r5, [sp, #8]
d004056e:	2103      	movs	r1, #3
d0040570:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0040574:	f88d 500c 	strb.w	r5, [sp, #12]
d0040578:	f88d 6009 	strb.w	r6, [sp, #9]
d004057c:	a801      	add	r0, sp, #4
d004057e:	f88d 8005 	strb.w	r8, [sp, #5]
d0040582:	3701      	adds	r7, #1
d0040584:	f88d 9006 	strb.w	r9, [sp, #6]
d0040588:	f88d 900a 	strb.w	r9, [sp, #10]
d004058c:	f88d 900e 	strb.w	r9, [sp, #14]
d0040590:	681b      	ldr	r3, [r3, #0]
d0040592:	695b      	ldr	r3, [r3, #20]
d0040594:	4798      	blx	r3
d0040596:	7d26      	ldrb	r6, [r4, #20]
d0040598:	7d65      	ldrb	r5, [r4, #21]
d004059a:	2103      	movs	r1, #3
d004059c:	7da2      	ldrb	r2, [r4, #22]
d004059e:	a802      	add	r0, sp, #8
d00405a0:	ea46 2505 	orr.w	r5, r6, r5, lsl #8
d00405a4:	7de3      	ldrb	r3, [r4, #23]
d00405a6:	ea45 4202 	orr.w	r2, r5, r2, lsl #16
d00405aa:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d00405ae:	681b      	ldr	r3, [r3, #0]
d00405b0:	695b      	ldr	r3, [r3, #20]
d00405b2:	4798      	blx	r3
d00405b4:	7d26      	ldrb	r6, [r4, #20]
d00405b6:	7d65      	ldrb	r5, [r4, #21]
d00405b8:	2103      	movs	r1, #3
d00405ba:	7da2      	ldrb	r2, [r4, #22]
d00405bc:	a803      	add	r0, sp, #12
d00405be:	ea46 2505 	orr.w	r5, r6, r5, lsl #8
d00405c2:	7de3      	ldrb	r3, [r4, #23]
d00405c4:	ea45 4202 	orr.w	r2, r5, r2, lsl #16
d00405c8:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d00405cc:	681b      	ldr	r3, [r3, #0]
d00405ce:	695b      	ldr	r3, [r3, #20]
d00405d0:	4798      	blx	r3
d00405d2:	2f10      	cmp	r7, #16
d00405d4:	d1b7      	bne.n	d0040546 <midi_send_channel_panic+0x2e>
d00405d6:	b005      	add	sp, #20
d00405d8:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
d00405dc:	d00451b4 	.word	0xd00451b4
d00405e0:	d00455b8 	.word	0xd00455b8
d00405e4:	d00451b6 	.word	0xd00451b6
d00405e8:	d0044fb0 	.word	0xd0044fb0
d00405ec:	2001f000 	.word	0x2001f000
d00405f0:	d00451b0 	.word	0xd00451b0

d00405f4 <app_shutdown>:
d00405f4:	b570      	push	{r4, r5, r6, lr}
d00405f6:	4c21      	ldr	r4, [pc, #132]	; (d004067c <app_shutdown+0x88>)
d00405f8:	b082      	sub	sp, #8
d00405fa:	f7ff ff8d 	bl	d0040518 <midi_send_channel_panic>
d00405fe:	2602      	movs	r6, #2
d0040600:	7b25      	ldrb	r5, [r4, #12]
d0040602:	f44f 73a0 	mov.w	r3, #320	; 0x140
d0040606:	7b60      	ldrb	r0, [r4, #13]
d0040608:	f44f 72f0 	mov.w	r2, #480	; 0x1e0
d004060c:	4619      	mov	r1, r3
d004060e:	ea45 2500 	orr.w	r5, r5, r0, lsl #8
d0040612:	7ba0      	ldrb	r0, [r4, #14]
d0040614:	ea45 4500 	orr.w	r5, r5, r0, lsl #16
d0040618:	7be0      	ldrb	r0, [r4, #15]
d004061a:	ea45 6500 	orr.w	r5, r5, r0, lsl #24
d004061e:	4610      	mov	r0, r2
d0040620:	682d      	ldr	r5, [r5, #0]
d0040622:	9600      	str	r6, [sp, #0]
d0040624:	696d      	ldr	r5, [r5, #20]
d0040626:	47a8      	blx	r5
d0040628:	7b23      	ldrb	r3, [r4, #12]
d004062a:	7b62      	ldrb	r2, [r4, #13]
d004062c:	2100      	movs	r1, #0
d004062e:	7ba5      	ldrb	r5, [r4, #14]
d0040630:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0040634:	7be2      	ldrb	r2, [r4, #15]
d0040636:	4608      	mov	r0, r1
d0040638:	ea43 4305 	orr.w	r3, r3, r5, lsl #16
d004063c:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0040640:	681b      	ldr	r3, [r3, #0]
d0040642:	6b1b      	ldr	r3, [r3, #48]	; 0x30
d0040644:	4798      	blx	r3
d0040646:	7923      	ldrb	r3, [r4, #4]
d0040648:	7962      	ldrb	r2, [r4, #5]
d004064a:	79a1      	ldrb	r1, [r4, #6]
d004064c:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0040650:	79e2      	ldrb	r2, [r4, #7]
d0040652:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0040656:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004065a:	685b      	ldr	r3, [r3, #4]
d004065c:	4798      	blx	r3
d004065e:	7823      	ldrb	r3, [r4, #0]
d0040660:	7862      	ldrb	r2, [r4, #1]
d0040662:	78a1      	ldrb	r1, [r4, #2]
d0040664:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0040668:	78e2      	ldrb	r2, [r4, #3]
d004066a:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d004066e:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0040672:	685b      	ldr	r3, [r3, #4]
d0040674:	b002      	add	sp, #8
d0040676:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
d004067a:	4718      	bx	r3
d004067c:	2001f000 	.word	0x2001f000

d0040680 <visualizer_draw_grid_full>:
d0040680:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0040684:	2500      	movs	r5, #0
d0040686:	b083      	sub	sp, #12
d0040688:	4c65      	ldr	r4, [pc, #404]	; (d0040820 <visualizer_draw_grid_full+0x1a0>)
d004068a:	f64e 7640 	movw	r6, #61248	; 0xef40
d004068e:	09e8      	lsrs	r0, r5, #7
d0040690:	6823      	ldr	r3, [r4, #0]
d0040692:	f44f 72a0 	mov.w	r2, #320	; 0x140
d0040696:	2103      	movs	r1, #3
d0040698:	3008      	adds	r0, #8
d004069a:	b287      	uxth	r7, r0
d004069c:	b133      	cbz	r3, d00406ac <visualizer_draw_grid_full+0x2c>
d004069e:	6820      	ldr	r0, [r4, #0]
d00406a0:	8923      	ldrh	r3, [r4, #8]
d00406a2:	b29b      	uxth	r3, r3
d00406a4:	fb03 0007 	mla	r0, r3, r7, r0
d00406a8:	f002 fdfa 	bl	d00432a0 <memset>
d00406ac:	6823      	ldr	r3, [r4, #0]
d00406ae:	f44f 72a0 	mov.w	r2, #320	; 0x140
d00406b2:	2103      	movs	r1, #3
d00406b4:	b143      	cbz	r3, d00406c8 <visualizer_draw_grid_full+0x48>
d00406b6:	6823      	ldr	r3, [r4, #0]
d00406b8:	8920      	ldrh	r0, [r4, #8]
d00406ba:	b280      	uxth	r0, r0
d00406bc:	fb00 3007 	mla	r0, r0, r7, r3
d00406c0:	f500 70a0 	add.w	r0, r0, #320	; 0x140
d00406c4:	f002 fdec 	bl	d00432a0 <memset>
d00406c8:	f505 55ae 	add.w	r5, r5, #5568	; 0x15c0
d00406cc:	42b5      	cmp	r5, r6
d00406ce:	d1de      	bne.n	d004068e <visualizer_draw_grid_full+0xe>
d00406d0:	f44f 75e8 	mov.w	r5, #464	; 0x1d0
d00406d4:	2701      	movs	r7, #1
d00406d6:	4e53      	ldr	r6, [pc, #332]	; (d0040824 <visualizer_draw_grid_full+0x1a4>)
d00406d8:	fba6 2307 	umull	r2, r3, r6, r7
d00406dc:	08db      	lsrs	r3, r3, #3
d00406de:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d00406e2:	eba7 0383 	sub.w	r3, r7, r3, lsl #2
d00406e6:	b2db      	uxtb	r3, r3
d00406e8:	3b01      	subs	r3, #1
d00406ea:	2b09      	cmp	r3, #9
d00406ec:	d824      	bhi.n	d0040738 <visualizer_draw_grid_full+0xb8>
d00406ee:	e8df f003 	tbb	[pc, r3]
d00406f2:	2305      	.short	0x2305
d00406f4:	05232305 	.word	0x05232305
d00406f8:	05230523 	.word	0x05230523
d00406fc:	09e8      	lsrs	r0, r5, #7
d00406fe:	6823      	ldr	r3, [r4, #0]
d0040700:	f44f 72a0 	mov.w	r2, #320	; 0x140
d0040704:	2102      	movs	r1, #2
d0040706:	3008      	adds	r0, #8
d0040708:	fa1f f880 	uxth.w	r8, r0
d004070c:	b133      	cbz	r3, d004071c <visualizer_draw_grid_full+0x9c>
d004070e:	6820      	ldr	r0, [r4, #0]
d0040710:	8923      	ldrh	r3, [r4, #8]
d0040712:	b29b      	uxth	r3, r3
d0040714:	fb03 0008 	mla	r0, r3, r8, r0
d0040718:	f002 fdc2 	bl	d00432a0 <memset>
d004071c:	6823      	ldr	r3, [r4, #0]
d004071e:	f44f 72a0 	mov.w	r2, #320	; 0x140
d0040722:	2102      	movs	r1, #2
d0040724:	b143      	cbz	r3, d0040738 <visualizer_draw_grid_full+0xb8>
d0040726:	6823      	ldr	r3, [r4, #0]
d0040728:	8920      	ldrh	r0, [r4, #8]
d004072a:	b280      	uxth	r0, r0
d004072c:	fb00 3008 	mla	r0, r0, r8, r3
d0040730:	f500 70a0 	add.w	r0, r0, #320	; 0x140
d0040734:	f002 fdb4 	bl	d00432a0 <memset>
d0040738:	3701      	adds	r7, #1
d004073a:	f505 75e8 	add.w	r5, r5, #464	; 0x1d0
d004073e:	b2ff      	uxtb	r7, r7
d0040740:	2f80      	cmp	r7, #128	; 0x80
d0040742:	d1c9      	bne.n	d00406d8 <visualizer_draw_grid_full+0x58>
d0040744:	4b38      	ldr	r3, [pc, #224]	; (d0040828 <visualizer_draw_grid_full+0x1a8>)
d0040746:	2500      	movs	r5, #0
d0040748:	4e38      	ldr	r6, [pc, #224]	; (d004082c <visualizer_draw_grid_full+0x1ac>)
d004074a:	2700      	movs	r7, #0
d004074c:	681b      	ldr	r3, [r3, #0]
d004074e:	f240 1001 	movw	r0, #257	; 0x101
d0040752:	2100      	movs	r1, #0
d0040754:	f44f 79a0 	mov.w	r9, #320	; 0x140
d0040758:	42ab      	cmp	r3, r5
d004075a:	bf14      	ite	ne
d004075c:	4698      	movne	r8, r3
d004075e:	f44f 5880 	moveq.w	r8, #4096	; 0x1000
d0040762:	eb16 0608 	adds.w	r6, r6, r8
d0040766:	f147 0700 	adc.w	r7, r7, #0
d004076a:	ebb0 0208 	subs.w	r2, r0, r8
d004076e:	f161 0300 	sbc.w	r3, r1, #0
d0040772:	e9cd 2300 	strd	r2, r3, [sp]
d0040776:	4643      	mov	r3, r8
d0040778:	46c8      	mov	r8, r9
d004077a:	4699      	mov	r9, r3
d004077c:	464a      	mov	r2, r9
d004077e:	2300      	movs	r3, #0
d0040780:	4630      	mov	r0, r6
d0040782:	4639      	mov	r1, r7
d0040784:	f002 fbfa 	bl	d0042f7c <__aeabi_uldivmod>
d0040788:	9b00      	ldr	r3, [sp, #0]
d004078a:	9a01      	ldr	r2, [sp, #4]
d004078c:	4684      	mov	ip, r0
d004078e:	eb13 0a06 	adds.w	sl, r3, r6
d0040792:	460b      	mov	r3, r1
d0040794:	fba9 0100 	umull	r0, r1, r9, r0
d0040798:	eb42 0b07 	adc.w	fp, r2, r7
d004079c:	fb09 f303 	mul.w	r3, r9, r3
d00407a0:	2200      	movs	r2, #0
d00407a2:	fb0c 3302 	mla	r3, ip, r2, r3
d00407a6:	4419      	add	r1, r3
d00407a8:	4559      	cmp	r1, fp
d00407aa:	bf08      	it	eq
d00407ac:	4550      	cmpeq	r0, sl
d00407ae:	d229      	bcs.n	d0040804 <visualizer_draw_grid_full+0x184>
d00407b0:	f00c 0c03 	and.w	ip, ip, #3
d00407b4:	6823      	ldr	r3, [r4, #0]
d00407b6:	4594      	cmp	ip, r2
d00407b8:	bf14      	ite	ne
d00407ba:	2002      	movne	r0, #2
d00407bc:	2003      	moveq	r0, #3
d00407be:	b17b      	cbz	r3, d00407e0 <visualizer_draw_grid_full+0x160>
d00407c0:	6823      	ldr	r3, [r4, #0]
d00407c2:	f44f 71e8 	mov.w	r1, #464	; 0x1d0
d00407c6:	f8b4 c008 	ldrh.w	ip, [r4, #8]
d00407ca:	fa1f fc8c 	uxth.w	ip, ip
d00407ce:	eb05 0ecc 	add.w	lr, r5, ip, lsl #3
d00407d2:	4473      	add	r3, lr
d00407d4:	3901      	subs	r1, #1
d00407d6:	7018      	strb	r0, [r3, #0]
d00407d8:	4463      	add	r3, ip
d00407da:	b289      	uxth	r1, r1
d00407dc:	2900      	cmp	r1, #0
d00407de:	d1f9      	bne.n	d00407d4 <visualizer_draw_grid_full+0x154>
d00407e0:	6823      	ldr	r3, [r4, #0]
d00407e2:	b17b      	cbz	r3, d0040804 <visualizer_draw_grid_full+0x184>
d00407e4:	6823      	ldr	r3, [r4, #0]
d00407e6:	f44f 71e8 	mov.w	r1, #464	; 0x1d0
d00407ea:	f8b4 c008 	ldrh.w	ip, [r4, #8]
d00407ee:	fa1f fc8c 	uxth.w	ip, ip
d00407f2:	eb08 0ecc 	add.w	lr, r8, ip, lsl #3
d00407f6:	4473      	add	r3, lr
d00407f8:	3901      	subs	r1, #1
d00407fa:	7018      	strb	r0, [r3, #0]
d00407fc:	4463      	add	r3, ip
d00407fe:	b289      	uxth	r1, r1
d0040800:	2900      	cmp	r1, #0
d0040802:	d1f9      	bne.n	d00407f8 <visualizer_draw_grid_full+0x178>
d0040804:	f5b6 7680 	subs.w	r6, r6, #256	; 0x100
d0040808:	f105 0501 	add.w	r5, r5, #1
d004080c:	f108 0801 	add.w	r8, r8, #1
d0040810:	f147 37ff 	adc.w	r7, r7, #4294967295	; 0xffffffff
d0040814:	f5b5 7fa0 	cmp.w	r5, #320	; 0x140
d0040818:	d1b0      	bne.n	d004077c <visualizer_draw_grid_full+0xfc>
d004081a:	b003      	add	sp, #12
d004081c:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0040820:	d0044f20 	.word	0xd0044f20
d0040824:	aaaaaaab 	.word	0xaaaaaaab
d0040828:	d00455c4 	.word	0xd00455c4
d004082c:	00013eff 	.word	0x00013eff

d0040830 <visualizer_back_rect_logical.constprop.0>:
d0040830:	2900      	cmp	r1, #0
d0040832:	f000 8082 	beq.w	d004093a <visualizer_back_rect_logical.constprop.0+0x10a>
d0040836:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d004083a:	4605      	mov	r5, r0
d004083c:	b083      	sub	sp, #12
d004083e:	460f      	mov	r7, r1
d0040840:	4691      	mov	r9, r2
d0040842:	f8df 80f8 	ldr.w	r8, [pc, #248]	; d004093c <visualizer_back_rect_logical.constprop.0+0x10c>
d0040846:	f5c5 74a0 	rsb	r4, r5, #320	; 0x140
d004084a:	f8d8 3000 	ldr.w	r3, [r8]
d004084e:	b2a4      	uxth	r4, r4
d0040850:	42bc      	cmp	r4, r7
d0040852:	bf28      	it	cs
d0040854:	463c      	movcs	r4, r7
d0040856:	2b00      	cmp	r3, #0
d0040858:	d059      	beq.n	d004090e <visualizer_back_rect_logical.constprop.0+0xde>
d004085a:	2c00      	cmp	r4, #0
d004085c:	d061      	beq.n	d0040922 <visualizer_back_rect_logical.constprop.0+0xf2>
d004085e:	f5b5 7f20 	cmp.w	r5, #640	; 0x280
d0040862:	d220      	bcs.n	d00408a6 <visualizer_back_rect_logical.constprop.0+0x76>
d0040864:	1963      	adds	r3, r4, r5
d0040866:	f5b3 7f20 	cmp.w	r3, #640	; 0x280
d004086a:	d962      	bls.n	d0040932 <visualizer_back_rect_logical.constprop.0+0x102>
d004086c:	f5c5 7220 	rsb	r2, r5, #640	; 0x280
d0040870:	b292      	uxth	r2, r2
d0040872:	f8d8 1000 	ldr.w	r1, [r8]
d0040876:	3a01      	subs	r2, #1
d0040878:	f8b8 b008 	ldrh.w	fp, [r8, #8]
d004087c:	f44f 76e8 	mov.w	r6, #464	; 0x1d0
d0040880:	b292      	uxth	r2, r2
d0040882:	fa1f fb8b 	uxth.w	fp, fp
d0040886:	3201      	adds	r2, #1
d0040888:	eb05 03cb 	add.w	r3, r5, fp, lsl #3
d004088c:	eb01 0a03 	add.w	sl, r1, r3
d0040890:	3e01      	subs	r6, #1
d0040892:	4650      	mov	r0, sl
d0040894:	4649      	mov	r1, r9
d0040896:	9201      	str	r2, [sp, #4]
d0040898:	b2b6      	uxth	r6, r6
d004089a:	44da      	add	sl, fp
d004089c:	f002 fd00 	bl	d00432a0 <memset>
d00408a0:	9a01      	ldr	r2, [sp, #4]
d00408a2:	2e00      	cmp	r6, #0
d00408a4:	d1f4      	bne.n	d0040890 <visualizer_back_rect_logical.constprop.0+0x60>
d00408a6:	f505 75a0 	add.w	r5, r5, #320	; 0x140
d00408aa:	f8d8 3000 	ldr.w	r3, [r8]
d00408ae:	b2ad      	uxth	r5, r5
d00408b0:	b32b      	cbz	r3, d00408fe <visualizer_back_rect_logical.constprop.0+0xce>
d00408b2:	f5b5 7f20 	cmp.w	r5, #640	; 0x280
d00408b6:	d222      	bcs.n	d00408fe <visualizer_back_rect_logical.constprop.0+0xce>
d00408b8:	1963      	adds	r3, r4, r5
d00408ba:	f5b3 7f20 	cmp.w	r3, #640	; 0x280
d00408be:	d93a      	bls.n	d0040936 <visualizer_back_rect_logical.constprop.0+0x106>
d00408c0:	f5c5 7b20 	rsb	fp, r5, #640	; 0x280
d00408c4:	fa1f fb8b 	uxth.w	fp, fp
d00408c8:	f8d8 3000 	ldr.w	r3, [r8]
d00408cc:	f10b 3bff 	add.w	fp, fp, #4294967295	; 0xffffffff
d00408d0:	f8b8 a008 	ldrh.w	sl, [r8, #8]
d00408d4:	f44f 76e8 	mov.w	r6, #464	; 0x1d0
d00408d8:	fa1f fb8b 	uxth.w	fp, fp
d00408dc:	fa1f fa8a 	uxth.w	sl, sl
d00408e0:	f10b 0b01 	add.w	fp, fp, #1
d00408e4:	eb05 05ca 	add.w	r5, r5, sl, lsl #3
d00408e8:	441d      	add	r5, r3
d00408ea:	3e01      	subs	r6, #1
d00408ec:	4628      	mov	r0, r5
d00408ee:	465a      	mov	r2, fp
d00408f0:	4649      	mov	r1, r9
d00408f2:	b2b6      	uxth	r6, r6
d00408f4:	4455      	add	r5, sl
d00408f6:	f002 fcd3 	bl	d00432a0 <memset>
d00408fa:	2e00      	cmp	r6, #0
d00408fc:	d1f5      	bne.n	d00408ea <visualizer_back_rect_logical.constprop.0+0xba>
d00408fe:	1b3f      	subs	r7, r7, r4
d0040900:	2500      	movs	r5, #0
d0040902:	b2bf      	uxth	r7, r7
d0040904:	2f00      	cmp	r7, #0
d0040906:	d19e      	bne.n	d0040846 <visualizer_back_rect_logical.constprop.0+0x16>
d0040908:	b003      	add	sp, #12
d004090a:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d004090e:	f8d8 3000 	ldr.w	r3, [r8]
d0040912:	2c00      	cmp	r4, #0
d0040914:	d0f3      	beq.n	d00408fe <visualizer_back_rect_logical.constprop.0+0xce>
d0040916:	2b00      	cmp	r3, #0
d0040918:	d0f1      	beq.n	d00408fe <visualizer_back_rect_logical.constprop.0+0xce>
d004091a:	f505 75a0 	add.w	r5, r5, #320	; 0x140
d004091e:	b2ad      	uxth	r5, r5
d0040920:	e7c7      	b.n	d00408b2 <visualizer_back_rect_logical.constprop.0+0x82>
d0040922:	1b3f      	subs	r7, r7, r4
d0040924:	f8d8 3000 	ldr.w	r3, [r8]
d0040928:	2500      	movs	r5, #0
d004092a:	b2bf      	uxth	r7, r7
d004092c:	2f00      	cmp	r7, #0
d004092e:	d18a      	bne.n	d0040846 <visualizer_back_rect_logical.constprop.0+0x16>
d0040930:	e7ea      	b.n	d0040908 <visualizer_back_rect_logical.constprop.0+0xd8>
d0040932:	4622      	mov	r2, r4
d0040934:	e79d      	b.n	d0040872 <visualizer_back_rect_logical.constprop.0+0x42>
d0040936:	46a3      	mov	fp, r4
d0040938:	e7c6      	b.n	d00408c8 <visualizer_back_rect_logical.constprop.0+0x98>
d004093a:	4770      	bx	lr
d004093c:	d0044f20 	.word	0xd0044f20

d0040940 <midi_tx_enqueue_urgent_bytes>:
d0040940:	e92d 4ff8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0040944:	f8df 9144 	ldr.w	r9, [pc, #324]	; d0040a8c <midi_tx_enqueue_urgent_bytes+0x14c>
d0040948:	460e      	mov	r6, r1
d004094a:	4605      	mov	r5, r0
d004094c:	f8b9 c000 	ldrh.w	ip, [r9]
d0040950:	f5cc 6380 	rsb	r3, ip, #1024	; 0x400
d0040954:	b29b      	uxth	r3, r3
d0040956:	4299      	cmp	r1, r3
d0040958:	d817      	bhi.n	d004098a <midi_tx_enqueue_urgent_bytes+0x4a>
d004095a:	f8df b134 	ldr.w	fp, [pc, #308]	; d0040a90 <midi_tx_enqueue_urgent_bytes+0x150>
d004095e:	4408      	add	r0, r1
d0040960:	f8df a130 	ldr.w	sl, [pc, #304]	; d0040a94 <midi_tx_enqueue_urgent_bytes+0x154>
d0040964:	f8bb 3000 	ldrh.w	r3, [fp]
d0040968:	f815 1b01 	ldrb.w	r1, [r5], #1
d004096c:	1c5a      	adds	r2, r3, #1
d004096e:	42a8      	cmp	r0, r5
d0040970:	f80a 1003 	strb.w	r1, [sl, r3]
d0040974:	f3c2 0309 	ubfx	r3, r2, #0, #10
d0040978:	d1f6      	bne.n	d0040968 <midi_tx_enqueue_urgent_bytes+0x28>
d004097a:	4466      	add	r6, ip
d004097c:	2001      	movs	r0, #1
d004097e:	f8ab 3000 	strh.w	r3, [fp]
d0040982:	f8a9 6000 	strh.w	r6, [r9]
d0040986:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
d004098a:	f1bc 0f00 	cmp.w	ip, #0
d004098e:	d071      	beq.n	d0040a74 <midi_tx_enqueue_urgent_bytes+0x134>
d0040990:	4b3d      	ldr	r3, [pc, #244]	; (d0040a88 <midi_tx_enqueue_urgent_bytes+0x148>)
d0040992:	273c      	movs	r7, #60	; 0x3c
d0040994:	f8df b0f8 	ldr.w	fp, [pc, #248]	; d0040a90 <midi_tx_enqueue_urgent_bytes+0x150>
d0040998:	8818      	ldrh	r0, [r3, #0]
d004099a:	f8df a0f8 	ldr.w	sl, [pc, #248]	; d0040a94 <midi_tx_enqueue_urgent_bytes+0x154>
d004099e:	f8df 80f8 	ldr.w	r8, [pc, #248]	; d0040a98 <midi_tx_enqueue_urgent_bytes+0x158>
d00409a2:	e001      	b.n	d00409a8 <midi_tx_enqueue_urgent_bytes+0x68>
d00409a4:	2f00      	cmp	r7, #0
d00409a6:	d049      	beq.n	d0040a3c <midi_tx_enqueue_urgent_bytes+0xfc>
d00409a8:	f8bb 2000 	ldrh.w	r2, [fp]
d00409ac:	f5c0 6480 	rsb	r4, r0, #1024	; 0x400
d00409b0:	f898 e014 	ldrb.w	lr, [r8, #20]
d00409b4:	4282      	cmp	r2, r0
d00409b6:	eba2 0200 	sub.w	r2, r2, r0
d00409ba:	b2a4      	uxth	r4, r4
d00409bc:	4450      	add	r0, sl
d00409be:	bf88      	it	hi
d00409c0:	b294      	uxthhi	r4, r2
d00409c2:	f898 2015 	ldrb.w	r2, [r8, #21]
d00409c6:	f898 1016 	ldrb.w	r1, [r8, #22]
d00409ca:	42bc      	cmp	r4, r7
d00409cc:	ea4e 2e02 	orr.w	lr, lr, r2, lsl #8
d00409d0:	f898 2017 	ldrb.w	r2, [r8, #23]
d00409d4:	bf28      	it	cs
d00409d6:	463c      	movcs	r4, r7
d00409d8:	4564      	cmp	r4, ip
d00409da:	bf28      	it	cs
d00409dc:	4664      	movcs	r4, ip
d00409de:	ea4e 4c01 	orr.w	ip, lr, r1, lsl #16
d00409e2:	ea4c 6202 	orr.w	r2, ip, r2, lsl #24
d00409e6:	4621      	mov	r1, r4
d00409e8:	1b3f      	subs	r7, r7, r4
d00409ea:	6812      	ldr	r2, [r2, #0]
d00409ec:	b2bf      	uxth	r7, r7
d00409ee:	6952      	ldr	r2, [r2, #20]
d00409f0:	4790      	blx	r2
d00409f2:	4b25      	ldr	r3, [pc, #148]	; (d0040a88 <midi_tx_enqueue_urgent_bytes+0x148>)
d00409f4:	f8b9 2000 	ldrh.w	r2, [r9]
d00409f8:	8818      	ldrh	r0, [r3, #0]
d00409fa:	eba2 0c04 	sub.w	ip, r2, r4
d00409fe:	4420      	add	r0, r4
d0040a00:	fa1f fc8c 	uxth.w	ip, ip
d0040a04:	f3c0 0009 	ubfx	r0, r0, #0, #10
d0040a08:	f8a9 c000 	strh.w	ip, [r9]
d0040a0c:	8018      	strh	r0, [r3, #0]
d0040a0e:	f1bc 0f00 	cmp.w	ip, #0
d0040a12:	d1c7      	bne.n	d00409a4 <midi_tx_enqueue_urgent_bytes+0x64>
d0040a14:	4631      	mov	r1, r6
d0040a16:	f8bb 3000 	ldrh.w	r3, [fp]
d0040a1a:	442e      	add	r6, r5
d0040a1c:	f815 0b01 	ldrb.w	r0, [r5], #1
d0040a20:	1c5a      	adds	r2, r3, #1
d0040a22:	42ae      	cmp	r6, r5
d0040a24:	f80a 0003 	strb.w	r0, [sl, r3]
d0040a28:	f3c2 0309 	ubfx	r3, r2, #0, #10
d0040a2c:	d1f6      	bne.n	d0040a1c <midi_tx_enqueue_urgent_bytes+0xdc>
d0040a2e:	2001      	movs	r0, #1
d0040a30:	f8ab 3000 	strh.w	r3, [fp]
d0040a34:	f8a9 1000 	strh.w	r1, [r9]
d0040a38:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0040a3c:	f504 6480 	add.w	r4, r4, #1024	; 0x400
d0040a40:	1aa4      	subs	r4, r4, r2
d0040a42:	b2a4      	uxth	r4, r4
d0040a44:	42a6      	cmp	r6, r4
d0040a46:	d91a      	bls.n	d0040a7e <midi_tx_enqueue_urgent_bytes+0x13e>
d0040a48:	f898 3014 	ldrb.w	r3, [r8, #20]
d0040a4c:	4631      	mov	r1, r6
d0040a4e:	f898 2015 	ldrb.w	r2, [r8, #21]
d0040a52:	4628      	mov	r0, r5
d0040a54:	f898 4016 	ldrb.w	r4, [r8, #22]
d0040a58:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0040a5c:	f898 2017 	ldrb.w	r2, [r8, #23]
d0040a60:	ea43 4304 	orr.w	r3, r3, r4, lsl #16
d0040a64:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0040a68:	681b      	ldr	r3, [r3, #0]
d0040a6a:	695b      	ldr	r3, [r3, #20]
d0040a6c:	4798      	blx	r3
d0040a6e:	2001      	movs	r0, #1
d0040a70:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0040a74:	f8df b018 	ldr.w	fp, [pc, #24]	; d0040a90 <midi_tx_enqueue_urgent_bytes+0x150>
d0040a78:	f8df a018 	ldr.w	sl, [pc, #24]	; d0040a94 <midi_tx_enqueue_urgent_bytes+0x154>
d0040a7c:	e7ca      	b.n	d0040a14 <midi_tx_enqueue_urgent_bytes+0xd4>
d0040a7e:	eb06 010c 	add.w	r1, r6, ip
d0040a82:	b289      	uxth	r1, r1
d0040a84:	e7c7      	b.n	d0040a16 <midi_tx_enqueue_urgent_bytes+0xd6>
d0040a86:	bf00      	nop
d0040a88:	d00455b8 	.word	0xd00455b8
d0040a8c:	d00451b4 	.word	0xd00451b4
d0040a90:	d00451b6 	.word	0xd00451b6
d0040a94:	d00451b8 	.word	0xd00451b8
d0040a98:	2001f000 	.word	0x2001f000

d0040a9c <midi_limiter_steal_note>:
d0040a9c:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0040aa0:	2300      	movs	r3, #0
d0040aa2:	b085      	sub	sp, #20
d0040aa4:	f04f 35ff 	mov.w	r5, #4294967295	; 0xffffffff
d0040aa8:	4e74      	ldr	r6, [pc, #464]	; (d0040c7c <midi_limiter_steal_note+0x1e0>)
d0040aaa:	e003      	b.n	d0040ab4 <midi_limiter_steal_note+0x18>
d0040aac:	b21d      	sxth	r5, r3
d0040aae:	3301      	adds	r3, #1
d0040ab0:	2b40      	cmp	r3, #64	; 0x40
d0040ab2:	d024      	beq.n	d0040afe <midi_limiter_steal_note+0x62>
d0040ab4:	eb06 01c3 	add.w	r1, r6, r3, lsl #3
d0040ab8:	eb06 02c5 	add.w	r2, r6, r5, lsl #3
d0040abc:	79c8      	ldrb	r0, [r1, #7]
d0040abe:	2800      	cmp	r0, #0
d0040ac0:	d0f5      	beq.n	d0040aae <midi_limiter_steal_note+0x12>
d0040ac2:	1c68      	adds	r0, r5, #1
d0040ac4:	d0f2      	beq.n	d0040aac <midi_limiter_steal_note+0x10>
d0040ac6:	7912      	ldrb	r2, [r2, #4]
d0040ac8:	7909      	ldrb	r1, [r1, #4]
d0040aca:	f1a2 0209 	sub.w	r2, r2, #9
d0040ace:	2909      	cmp	r1, #9
d0040ad0:	fab2 f282 	clz	r2, r2
d0040ad4:	ea4f 1252 	mov.w	r2, r2, lsr #5
d0040ad8:	d001      	beq.n	d0040ade <midi_limiter_steal_note+0x42>
d0040ada:	2a00      	cmp	r2, #0
d0040adc:	d1e6      	bne.n	d0040aac <midi_limiter_steal_note+0x10>
d0040ade:	f1a1 0109 	sub.w	r1, r1, #9
d0040ae2:	fab1 f181 	clz	r1, r1
d0040ae6:	0949      	lsrs	r1, r1, #5
d0040ae8:	4291      	cmp	r1, r2
d0040aea:	d1e0      	bne.n	d0040aae <midi_limiter_steal_note+0x12>
d0040aec:	f856 1033 	ldr.w	r1, [r6, r3, lsl #3]
d0040af0:	f856 2035 	ldr.w	r2, [r6, r5, lsl #3]
d0040af4:	4291      	cmp	r1, r2
d0040af6:	d3d9      	bcc.n	d0040aac <midi_limiter_steal_note+0x10>
d0040af8:	3301      	adds	r3, #1
d0040afa:	2b40      	cmp	r3, #64	; 0x40
d0040afc:	d1da      	bne.n	d0040ab4 <midi_limiter_steal_note+0x18>
d0040afe:	1c6b      	adds	r3, r5, #1
d0040b00:	d038      	beq.n	d0040b74 <midi_limiter_steal_note+0xd8>
d0040b02:	f8df b188 	ldr.w	fp, [pc, #392]	; d0040c8c <midi_limiter_steal_note+0x1f0>
d0040b06:	eb06 02c5 	add.w	r2, r6, r5, lsl #3
d0040b0a:	00eb      	lsls	r3, r5, #3
d0040b0c:	2000      	movs	r0, #0
d0040b0e:	f8bb 1000 	ldrh.w	r1, [fp]
d0040b12:	7954      	ldrb	r4, [r2, #5]
d0040b14:	9301      	str	r3, [sp, #4]
d0040b16:	7913      	ldrb	r3, [r2, #4]
d0040b18:	f5c1 6280 	rsb	r2, r1, #1024	; 0x400
d0040b1c:	f88d 000e 	strb.w	r0, [sp, #14]
d0040b20:	f003 030f 	and.w	r3, r3, #15
d0040b24:	b292      	uxth	r2, r2
d0040b26:	f88d 400d 	strb.w	r4, [sp, #13]
d0040b2a:	f043 0380 	orr.w	r3, r3, #128	; 0x80
d0040b2e:	2a02      	cmp	r2, #2
d0040b30:	f88d 300c 	strb.w	r3, [sp, #12]
d0040b34:	d922      	bls.n	d0040b7c <midi_limiter_steal_note+0xe0>
d0040b36:	4f52      	ldr	r7, [pc, #328]	; (d0040c80 <midi_limiter_steal_note+0x1e4>)
d0040b38:	1cca      	adds	r2, r1, #3
d0040b3a:	4952      	ldr	r1, [pc, #328]	; (d0040c84 <midi_limiter_steal_note+0x1e8>)
d0040b3c:	f8b7 c000 	ldrh.w	ip, [r7]
d0040b40:	f8ab 2000 	strh.w	r2, [fp]
d0040b44:	f10c 0201 	add.w	r2, ip, #1
d0040b48:	f801 300c 	strb.w	r3, [r1, ip]
d0040b4c:	f3c2 0209 	ubfx	r2, r2, #0, #10
d0040b50:	1c53      	adds	r3, r2, #1
d0040b52:	548c      	strb	r4, [r1, r2]
d0040b54:	f3c3 0309 	ubfx	r3, r3, #0, #10
d0040b58:	1c5a      	adds	r2, r3, #1
d0040b5a:	54c8      	strb	r0, [r1, r3]
d0040b5c:	f3c2 0309 	ubfx	r3, r2, #0, #10
d0040b60:	803b      	strh	r3, [r7, #0]
d0040b62:	9b01      	ldr	r3, [sp, #4]
d0040b64:	2001      	movs	r0, #1
d0040b66:	4433      	add	r3, r6
d0040b68:	461d      	mov	r5, r3
d0040b6a:	2300      	movs	r3, #0
d0040b6c:	71eb      	strb	r3, [r5, #7]
d0040b6e:	b005      	add	sp, #20
d0040b70:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0040b74:	2000      	movs	r0, #0
d0040b76:	b005      	add	sp, #20
d0040b78:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0040b7c:	2900      	cmp	r1, #0
d0040b7e:	d074      	beq.n	d0040c6a <midi_limiter_steal_note+0x1ce>
d0040b80:	4d41      	ldr	r5, [pc, #260]	; (d0040c88 <midi_limiter_steal_note+0x1ec>)
d0040b82:	273c      	movs	r7, #60	; 0x3c
d0040b84:	f8df a0f8 	ldr.w	sl, [pc, #248]	; d0040c80 <midi_limiter_steal_note+0x1e4>
d0040b88:	8828      	ldrh	r0, [r5, #0]
d0040b8a:	f8df 90f8 	ldr.w	r9, [pc, #248]	; d0040c84 <midi_limiter_steal_note+0x1e8>
d0040b8e:	f8df 8100 	ldr.w	r8, [pc, #256]	; d0040c90 <midi_limiter_steal_note+0x1f4>
d0040b92:	e001      	b.n	d0040b98 <midi_limiter_steal_note+0xfc>
d0040b94:	2f00      	cmp	r7, #0
d0040b96:	d04e      	beq.n	d0040c36 <midi_limiter_steal_note+0x19a>
d0040b98:	f8ba 2000 	ldrh.w	r2, [sl]
d0040b9c:	f5c0 6480 	rsb	r4, r0, #1024	; 0x400
d0040ba0:	f898 e014 	ldrb.w	lr, [r8, #20]
d0040ba4:	4282      	cmp	r2, r0
d0040ba6:	eba2 0200 	sub.w	r2, r2, r0
d0040baa:	b2a4      	uxth	r4, r4
d0040bac:	4448      	add	r0, r9
d0040bae:	bf88      	it	hi
d0040bb0:	b294      	uxthhi	r4, r2
d0040bb2:	f898 2015 	ldrb.w	r2, [r8, #21]
d0040bb6:	42bc      	cmp	r4, r7
d0040bb8:	ea4e 2e02 	orr.w	lr, lr, r2, lsl #8
d0040bbc:	bf28      	it	cs
d0040bbe:	463c      	movcs	r4, r7
d0040bc0:	428c      	cmp	r4, r1
d0040bc2:	bf28      	it	cs
d0040bc4:	460c      	movcs	r4, r1
d0040bc6:	f898 1016 	ldrb.w	r1, [r8, #22]
d0040bca:	f898 2017 	ldrb.w	r2, [r8, #23]
d0040bce:	ea4e 4c01 	orr.w	ip, lr, r1, lsl #16
d0040bd2:	4621      	mov	r1, r4
d0040bd4:	1b3f      	subs	r7, r7, r4
d0040bd6:	ea4c 6202 	orr.w	r2, ip, r2, lsl #24
d0040bda:	b2bf      	uxth	r7, r7
d0040bdc:	6812      	ldr	r2, [r2, #0]
d0040bde:	6952      	ldr	r2, [r2, #20]
d0040be0:	4790      	blx	r2
d0040be2:	8828      	ldrh	r0, [r5, #0]
d0040be4:	f8bb 2000 	ldrh.w	r2, [fp]
d0040be8:	4420      	add	r0, r4
d0040bea:	1b11      	subs	r1, r2, r4
d0040bec:	f3c0 0009 	ubfx	r0, r0, #0, #10
d0040bf0:	b289      	uxth	r1, r1
d0040bf2:	8028      	strh	r0, [r5, #0]
d0040bf4:	f8ab 1000 	strh.w	r1, [fp]
d0040bf8:	2900      	cmp	r1, #0
d0040bfa:	d1cb      	bne.n	d0040b94 <midi_limiter_steal_note+0xf8>
d0040bfc:	2303      	movs	r3, #3
d0040bfe:	f8ba 1000 	ldrh.w	r1, [sl]
d0040c02:	f8ab 3000 	strh.w	r3, [fp]
d0040c06:	1c4a      	adds	r2, r1, #1
d0040c08:	f89d 300c 	ldrb.w	r3, [sp, #12]
d0040c0c:	f3c2 0209 	ubfx	r2, r2, #0, #10
d0040c10:	f809 3001 	strb.w	r3, [r9, r1]
d0040c14:	f89d 100d 	ldrb.w	r1, [sp, #13]
d0040c18:	1c53      	adds	r3, r2, #1
d0040c1a:	f809 1002 	strb.w	r1, [r9, r2]
d0040c1e:	f3c3 0309 	ubfx	r3, r3, #0, #10
d0040c22:	f89d 100e 	ldrb.w	r1, [sp, #14]
d0040c26:	1c5a      	adds	r2, r3, #1
d0040c28:	f809 1003 	strb.w	r1, [r9, r3]
d0040c2c:	f3c2 0309 	ubfx	r3, r2, #0, #10
d0040c30:	f8aa 3000 	strh.w	r3, [sl]
d0040c34:	e795      	b.n	d0040b62 <midi_limiter_steal_note+0xc6>
d0040c36:	f504 6380 	add.w	r3, r4, #1024	; 0x400
d0040c3a:	1a9b      	subs	r3, r3, r2
d0040c3c:	b29b      	uxth	r3, r3
d0040c3e:	2b02      	cmp	r3, #2
d0040c40:	d818      	bhi.n	d0040c74 <midi_limiter_steal_note+0x1d8>
d0040c42:	f898 3014 	ldrb.w	r3, [r8, #20]
d0040c46:	2103      	movs	r1, #3
d0040c48:	f898 2015 	ldrb.w	r2, [r8, #21]
d0040c4c:	a803      	add	r0, sp, #12
d0040c4e:	f898 4016 	ldrb.w	r4, [r8, #22]
d0040c52:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0040c56:	f898 2017 	ldrb.w	r2, [r8, #23]
d0040c5a:	ea43 4304 	orr.w	r3, r3, r4, lsl #16
d0040c5e:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0040c62:	681b      	ldr	r3, [r3, #0]
d0040c64:	695b      	ldr	r3, [r3, #20]
d0040c66:	4798      	blx	r3
d0040c68:	e77b      	b.n	d0040b62 <midi_limiter_steal_note+0xc6>
d0040c6a:	f8df a014 	ldr.w	sl, [pc, #20]	; d0040c80 <midi_limiter_steal_note+0x1e4>
d0040c6e:	f8df 9014 	ldr.w	r9, [pc, #20]	; d0040c84 <midi_limiter_steal_note+0x1e8>
d0040c72:	e7c3      	b.n	d0040bfc <midi_limiter_steal_note+0x160>
d0040c74:	1ccb      	adds	r3, r1, #3
d0040c76:	b29b      	uxth	r3, r3
d0040c78:	e7c1      	b.n	d0040bfe <midi_limiter_steal_note+0x162>
d0040c7a:	bf00      	nop
d0040c7c:	d0044fb0 	.word	0xd0044fb0
d0040c80:	d00451b6 	.word	0xd00451b6
d0040c84:	d00451b8 	.word	0xd00451b8
d0040c88:	d00455b8 	.word	0xd00455b8
d0040c8c:	d00451b4 	.word	0xd00451b4
d0040c90:	2001f000 	.word	0x2001f000

d0040c94 <midi_player_update_us.part.0>:
d0040c94:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0040c98:	4683      	mov	fp, r0
d0040c9a:	f8d0 010c 	ldr.w	r0, [r0, #268]	; 0x10c
d0040c9e:	f04f 0a00 	mov.w	sl, #0
d0040ca2:	b089      	sub	sp, #36	; 0x24
d0040ca4:	4408      	add	r0, r1
d0040ca6:	f89b 7100 	ldrb.w	r7, [fp, #256]	; 0x100
d0040caa:	e9db 2346 	ldrd	r2, r3, [fp, #280]	; 0x118
d0040cae:	f8cb 010c 	str.w	r0, [fp, #268]	; 0x10c
d0040cb2:	1852      	adds	r2, r2, r1
d0040cb4:	f143 0300 	adc.w	r3, r3, #0
d0040cb8:	e9cb 2346 	strd	r2, r3, [fp, #280]	; 0x118
d0040cbc:	465b      	mov	r3, fp
d0040cbe:	46d3      	mov	fp, sl
d0040cc0:	469a      	mov	sl, r3
d0040cc2:	2f00      	cmp	r7, #0
d0040cc4:	f000 8278 	beq.w	d00411b8 <midi_player_update_us.part.0+0x524>
d0040cc8:	1e7a      	subs	r2, r7, #1
d0040cca:	f10a 0110 	add.w	r1, sl, #16
d0040cce:	4653      	mov	r3, sl
d0040cd0:	f04f 35ff 	mov.w	r5, #4294967295	; 0xffffffff
d0040cd4:	b2d2      	uxtb	r2, r2
d0040cd6:	2400      	movs	r4, #0
d0040cd8:	eb01 1102 	add.w	r1, r1, r2, lsl #4
d0040cdc:	7b5a      	ldrb	r2, [r3, #13]
d0040cde:	b12a      	cbz	r2, d0040cec <midi_player_update_us.part.0+0x58>
d0040ce0:	6898      	ldr	r0, [r3, #8]
d0040ce2:	b10c      	cbz	r4, d0040ce8 <midi_player_update_us.part.0+0x54>
d0040ce4:	42a8      	cmp	r0, r5
d0040ce6:	d201      	bcs.n	d0040cec <midi_player_update_us.part.0+0x58>
d0040ce8:	4605      	mov	r5, r0
d0040cea:	4614      	mov	r4, r2
d0040cec:	3310      	adds	r3, #16
d0040cee:	4299      	cmp	r1, r3
d0040cf0:	d1f4      	bne.n	d0040cdc <midi_player_update_us.part.0+0x48>
d0040cf2:	2c00      	cmp	r4, #0
d0040cf4:	f000 8260 	beq.w	d00411b8 <midi_player_update_us.part.0+0x524>
d0040cf8:	f8da 1108 	ldr.w	r1, [sl, #264]	; 0x108
d0040cfc:	2300      	movs	r3, #0
d0040cfe:	f8da 0110 	ldr.w	r0, [sl, #272]	; 0x110
d0040d02:	1a6e      	subs	r6, r5, r1
d0040d04:	f8da 4114 	ldr.w	r4, [sl, #276]	; 0x114
d0040d08:	2100      	movs	r1, #0
d0040d0a:	f8ba 2104 	ldrh.w	r2, [sl, #260]	; 0x104
d0040d0e:	fbe4 0106 	umlal	r0, r1, r4, r6
d0040d12:	f002 f933 	bl	d0042f7c <__aeabi_uldivmod>
d0040d16:	f8da 310c 	ldr.w	r3, [sl, #268]	; 0x10c
d0040d1a:	4298      	cmp	r0, r3
d0040d1c:	f200 8251 	bhi.w	d00411c2 <midi_player_update_us.part.0+0x52e>
d0040d20:	1a1b      	subs	r3, r3, r0
d0040d22:	2000      	movs	r0, #0
d0040d24:	f8ca 2110 	str.w	r2, [sl, #272]	; 0x110
d0040d28:	4681      	mov	r9, r0
d0040d2a:	e9ca 5342 	strd	r5, r3, [sl, #264]	; 0x108
d0040d2e:	e005      	b.n	d0040d3c <midi_player_update_us.part.0+0xa8>
d0040d30:	f109 0901 	add.w	r9, r9, #1
d0040d34:	fa5f f989 	uxtb.w	r9, r9
d0040d38:	45b9      	cmp	r9, r7
d0040d3a:	d26e      	bcs.n	d0040e1a <midi_player_update_us.part.0+0x186>
d0040d3c:	eb0a 1109 	add.w	r1, sl, r9, lsl #4
d0040d40:	ea4f 1509 	mov.w	r5, r9, lsl #4
d0040d44:	7b4c      	ldrb	r4, [r1, #13]
d0040d46:	2c00      	cmp	r4, #0
d0040d48:	d0f2      	beq.n	d0040d30 <midi_player_update_us.part.0+0x9c>
d0040d4a:	688a      	ldr	r2, [r1, #8]
d0040d4c:	f8da 3108 	ldr.w	r3, [sl, #264]	; 0x108
d0040d50:	429a      	cmp	r2, r3
d0040d52:	d1ed      	bne.n	d0040d30 <midi_player_update_us.part.0+0x9c>
d0040d54:	f85a 0005 	ldr.w	r0, [sl, r5]
d0040d58:	46a8      	mov	r8, r5
d0040d5a:	684b      	ldr	r3, [r1, #4]
d0040d5c:	9100      	str	r1, [sp, #0]
d0040d5e:	4298      	cmp	r0, r3
d0040d60:	d26b      	bcs.n	d0040e3a <midi_player_update_us.part.0+0x1a6>
d0040d62:	f990 6000 	ldrsb.w	r6, [r0]
d0040d66:	7802      	ldrb	r2, [r0, #0]
d0040d68:	2e00      	cmp	r6, #0
d0040d6a:	db69      	blt.n	d0040e40 <midi_player_update_us.part.0+0x1ac>
d0040d6c:	7b0a      	ldrb	r2, [r1, #12]
d0040d6e:	2a00      	cmp	r2, #0
d0040d70:	f000 8150 	beq.w	d0041014 <midi_player_update_us.part.0+0x380>
d0040d74:	2aff      	cmp	r2, #255	; 0xff
d0040d76:	f000 814f 	beq.w	d0041018 <midi_player_update_us.part.0+0x384>
d0040d7a:	f1a2 0cf0 	sub.w	ip, r2, #240	; 0xf0
d0040d7e:	2af7      	cmp	r2, #247	; 0xf7
d0040d80:	fabc fc8c 	clz	ip, ip
d0040d84:	ea4f 1c5c 	mov.w	ip, ip, lsr #5
d0040d88:	d002      	beq.n	d0040d90 <midi_player_update_us.part.0+0xfc>
d0040d8a:	f1bc 0f00 	cmp.w	ip, #0
d0040d8e:	d05d      	beq.n	d0040e4c <midi_player_update_us.part.0+0x1b8>
d0040d90:	f85a 1008 	ldr.w	r1, [sl, r8]
d0040d94:	428b      	cmp	r3, r1
d0040d96:	d92d      	bls.n	d0040df4 <midi_player_update_us.part.0+0x160>
d0040d98:	1c4e      	adds	r6, r1, #1
d0040d9a:	f84a 6008 	str.w	r6, [sl, r8]
d0040d9e:	7808      	ldrb	r0, [r1, #0]
d0040da0:	f000 077f 	and.w	r7, r0, #127	; 0x7f
d0040da4:	0600      	lsls	r0, r0, #24
d0040da6:	f140 81c0 	bpl.w	d004112a <midi_player_update_us.part.0+0x496>
d0040daa:	42b3      	cmp	r3, r6
d0040dac:	d922      	bls.n	d0040df4 <midi_player_update_us.part.0+0x160>
d0040dae:	1c8e      	adds	r6, r1, #2
d0040db0:	f84a 6008 	str.w	r6, [sl, r8]
d0040db4:	7848      	ldrb	r0, [r1, #1]
d0040db6:	f000 0e7f 	and.w	lr, r0, #127	; 0x7f
d0040dba:	0600      	lsls	r0, r0, #24
d0040dbc:	ea4e 17c7 	orr.w	r7, lr, r7, lsl #7
d0040dc0:	f140 81b3 	bpl.w	d004112a <midi_player_update_us.part.0+0x496>
d0040dc4:	42b3      	cmp	r3, r6
d0040dc6:	d915      	bls.n	d0040df4 <midi_player_update_us.part.0+0x160>
d0040dc8:	1cce      	adds	r6, r1, #3
d0040dca:	f84a 6008 	str.w	r6, [sl, r8]
d0040dce:	7888      	ldrb	r0, [r1, #2]
d0040dd0:	f000 0e7f 	and.w	lr, r0, #127	; 0x7f
d0040dd4:	0600      	lsls	r0, r0, #24
d0040dd6:	ea4e 17c7 	orr.w	r7, lr, r7, lsl #7
d0040dda:	f140 81a6 	bpl.w	d004112a <midi_player_update_us.part.0+0x496>
d0040dde:	42b3      	cmp	r3, r6
d0040de0:	d908      	bls.n	d0040df4 <midi_player_update_us.part.0+0x160>
d0040de2:	1d0e      	adds	r6, r1, #4
d0040de4:	f84a 6008 	str.w	r6, [sl, r8]
d0040de8:	f991 0003 	ldrsb.w	r0, [r1, #3]
d0040dec:	78c9      	ldrb	r1, [r1, #3]
d0040dee:	2800      	cmp	r0, #0
d0040df0:	f280 8199 	bge.w	d0041126 <midi_player_update_us.part.0+0x492>
d0040df4:	4455      	add	r5, sl
d0040df6:	2300      	movs	r3, #0
d0040df8:	736b      	strb	r3, [r5, #13]
d0040dfa:	f10b 0b01 	add.w	fp, fp, #1
d0040dfe:	f5bb 5f80 	cmp.w	fp, #4096	; 0x1000
d0040e02:	f080 81de 	bcs.w	d00411c2 <midi_player_update_us.part.0+0x52e>
d0040e06:	f109 0901 	add.w	r9, r9, #1
d0040e0a:	f89a 7100 	ldrb.w	r7, [sl, #256]	; 0x100
d0040e0e:	fa5f f989 	uxtb.w	r9, r9
d0040e12:	45b9      	cmp	r9, r7
d0040e14:	d208      	bcs.n	d0040e28 <midi_player_update_us.part.0+0x194>
d0040e16:	4620      	mov	r0, r4
d0040e18:	e790      	b.n	d0040d3c <midi_player_update_us.part.0+0xa8>
d0040e1a:	f5bb 5f80 	cmp.w	fp, #4096	; 0x1000
d0040e1e:	f080 81d0 	bcs.w	d00411c2 <midi_player_update_us.part.0+0x52e>
d0040e22:	2800      	cmp	r0, #0
d0040e24:	f000 81d0 	beq.w	d00411c8 <midi_player_update_us.part.0+0x534>
d0040e28:	2f00      	cmp	r7, #0
d0040e2a:	f000 81c5 	beq.w	d00411b8 <midi_player_update_us.part.0+0x524>
d0040e2e:	2000      	movs	r0, #0
d0040e30:	4681      	mov	r9, r0
d0040e32:	e783      	b.n	d0040d3c <midi_player_update_us.part.0+0xa8>
d0040e34:	4283      	cmp	r3, r0
d0040e36:	f200 80ef 	bhi.w	d0041018 <midi_player_update_us.part.0+0x384>
d0040e3a:	2300      	movs	r3, #0
d0040e3c:	734b      	strb	r3, [r1, #13]
d0040e3e:	e7dc      	b.n	d0040dfa <midi_player_update_us.part.0+0x166>
d0040e40:	3001      	adds	r0, #1
d0040e42:	2aef      	cmp	r2, #239	; 0xef
d0040e44:	f84a 0005 	str.w	r0, [sl, r5]
d0040e48:	d878      	bhi.n	d0040f3c <midi_player_update_us.part.0+0x2a8>
d0040e4a:	730a      	strb	r2, [r1, #12]
d0040e4c:	f082 0180 	eor.w	r1, r2, #128	; 0x80
d0040e50:	296f      	cmp	r1, #111	; 0x6f
d0040e52:	f200 8083 	bhi.w	d0040f5c <midi_player_update_us.part.0+0x2c8>
d0040e56:	f002 0ee0 	and.w	lr, r2, #224	; 0xe0
d0040e5a:	f1be 0fc0 	cmp.w	lr, #192	; 0xc0
d0040e5e:	f040 81b8 	bne.w	d00411d2 <midi_player_update_us.part.0+0x53e>
d0040e62:	2001      	movs	r0, #1
d0040e64:	2102      	movs	r1, #2
d0040e66:	4607      	mov	r7, r0
d0040e68:	f85a 6008 	ldr.w	r6, [sl, r8]
d0040e6c:	1b9b      	subs	r3, r3, r6
d0040e6e:	4283      	cmp	r3, r0
d0040e70:	d3c0      	bcc.n	d0040df4 <midi_player_update_us.part.0+0x160>
d0040e72:	1c73      	adds	r3, r6, #1
d0040e74:	f88d 201c 	strb.w	r2, [sp, #28]
d0040e78:	2f02      	cmp	r7, #2
d0040e7a:	f84a 3008 	str.w	r3, [sl, r8]
d0040e7e:	7830      	ldrb	r0, [r6, #0]
d0040e80:	f88d 001d 	strb.w	r0, [sp, #29]
d0040e84:	d105      	bne.n	d0040e92 <midi_player_update_us.part.0+0x1fe>
d0040e86:	1cb3      	adds	r3, r6, #2
d0040e88:	f84a 3008 	str.w	r3, [sl, r8]
d0040e8c:	7873      	ldrb	r3, [r6, #1]
d0040e8e:	f88d 301e 	strb.w	r3, [sp, #30]
d0040e92:	f002 03f0 	and.w	r3, r2, #240	; 0xf0
d0040e96:	2902      	cmp	r1, #2
d0040e98:	9301      	str	r3, [sp, #4]
d0040e9a:	d009      	beq.n	d0040eb0 <midi_player_update_us.part.0+0x21c>
d0040e9c:	f002 060f 	and.w	r6, r2, #15
d0040ea0:	2b90      	cmp	r3, #144	; 0x90
d0040ea2:	9604      	str	r6, [sp, #16]
d0040ea4:	9603      	str	r6, [sp, #12]
d0040ea6:	f000 820a 	beq.w	d00412be <midi_player_update_us.part.0+0x62a>
d0040eaa:	2b80      	cmp	r3, #128	; 0x80
d0040eac:	f000 830a 	beq.w	d00414c4 <midi_player_update_us.part.0+0x830>
d0040eb0:	f89a 3101 	ldrb.w	r3, [sl, #257]	; 0x101
d0040eb4:	2b01      	cmp	r3, #1
d0040eb6:	d15c      	bne.n	d0040f72 <midi_player_update_us.part.0+0x2de>
d0040eb8:	f002 030f 	and.w	r3, r2, #15
d0040ebc:	9a01      	ldr	r2, [sp, #4]
d0040ebe:	2ac0      	cmp	r2, #192	; 0xc0
d0040ec0:	9302      	str	r3, [sp, #8]
d0040ec2:	f000 82b4 	beq.w	d004142e <midi_player_update_us.part.0+0x79a>
d0040ec6:	2ab0      	cmp	r2, #176	; 0xb0
d0040ec8:	4613      	mov	r3, r2
d0040eca:	f040 822e 	bne.w	d004132a <midi_player_update_us.part.0+0x696>
d0040ece:	280a      	cmp	r0, #10
d0040ed0:	d05e      	beq.n	d0040f90 <midi_player_update_us.part.0+0x2fc>
d0040ed2:	285b      	cmp	r0, #91	; 0x5b
d0040ed4:	d007      	beq.n	d0040ee6 <midi_player_update_us.part.0+0x252>
d0040ed6:	f200 82eb 	bhi.w	d00414b0 <midi_player_update_us.part.0+0x81c>
d0040eda:	2807      	cmp	r0, #7
d0040edc:	d003      	beq.n	d0040ee6 <midi_player_update_us.part.0+0x252>
d0040ede:	2840      	cmp	r0, #64	; 0x40
d0040ee0:	d001      	beq.n	d0040ee6 <midi_player_update_us.part.0+0x252>
d0040ee2:	2801      	cmp	r0, #1
d0040ee4:	d154      	bne.n	d0040f90 <midi_player_update_us.part.0+0x2fc>
d0040ee6:	2902      	cmp	r1, #2
d0040ee8:	bf94      	ite	ls
d0040eea:	2300      	movls	r3, #0
d0040eec:	2301      	movhi	r3, #1
d0040eee:	9a01      	ldr	r2, [sp, #4]
d0040ef0:	2a80      	cmp	r2, #128	; 0x80
d0040ef2:	f040 82a9 	bne.w	d0041448 <midi_player_update_us.part.0+0x7b4>
d0040ef6:	2b00      	cmp	r3, #0
d0040ef8:	f000 82a6 	beq.w	d0041448 <midi_player_update_us.part.0+0x7b4>
d0040efc:	a807      	add	r0, sp, #28
d0040efe:	f7ff fd1f 	bl	d0040940 <midi_tx_enqueue_urgent_bytes>
d0040f02:	2800      	cmp	r0, #0
d0040f04:	d044      	beq.n	d0040f90 <midi_player_update_us.part.0+0x2fc>
d0040f06:	f89d 101d 	ldrb.w	r1, [sp, #29]
d0040f0a:	2300      	movs	r3, #0
d0040f0c:	4ec6      	ldr	r6, [pc, #792]	; (d0041228 <midi_player_update_us.part.0+0x594>)
d0040f0e:	f001 017f 	and.w	r1, r1, #127	; 0x7f
d0040f12:	4632      	mov	r2, r6
d0040f14:	e003      	b.n	d0040f1e <midi_player_update_us.part.0+0x28a>
d0040f16:	3301      	adds	r3, #1
d0040f18:	3208      	adds	r2, #8
d0040f1a:	2b40      	cmp	r3, #64	; 0x40
d0040f1c:	d038      	beq.n	d0040f90 <midi_player_update_us.part.0+0x2fc>
d0040f1e:	79d0      	ldrb	r0, [r2, #7]
d0040f20:	2800      	cmp	r0, #0
d0040f22:	d0f8      	beq.n	d0040f16 <midi_player_update_us.part.0+0x282>
d0040f24:	7910      	ldrb	r0, [r2, #4]
d0040f26:	9f02      	ldr	r7, [sp, #8]
d0040f28:	42b8      	cmp	r0, r7
d0040f2a:	d1f4      	bne.n	d0040f16 <midi_player_update_us.part.0+0x282>
d0040f2c:	7950      	ldrb	r0, [r2, #5]
d0040f2e:	4288      	cmp	r0, r1
d0040f30:	d1f1      	bne.n	d0040f16 <midi_player_update_us.part.0+0x282>
d0040f32:	eb06 03c3 	add.w	r3, r6, r3, lsl #3
d0040f36:	2200      	movs	r2, #0
d0040f38:	71da      	strb	r2, [r3, #7]
d0040f3a:	e029      	b.n	d0040f90 <midi_player_update_us.part.0+0x2fc>
d0040f3c:	2aff      	cmp	r2, #255	; 0xff
d0040f3e:	f43f af79 	beq.w	d0040e34 <midi_player_update_us.part.0+0x1a0>
d0040f42:	f1a2 0cf0 	sub.w	ip, r2, #240	; 0xf0
d0040f46:	2af7      	cmp	r2, #247	; 0xf7
d0040f48:	fabc fc8c 	clz	ip, ip
d0040f4c:	ea4f 1c5c 	mov.w	ip, ip, lsr #5
d0040f50:	f43f af1e 	beq.w	d0040d90 <midi_player_update_us.part.0+0xfc>
d0040f54:	f1bc 0f00 	cmp.w	ip, #0
d0040f58:	f47f af1a 	bne.w	d0040d90 <midi_player_update_us.part.0+0xfc>
d0040f5c:	2af2      	cmp	r2, #242	; 0xf2
d0040f5e:	f000 814b 	beq.w	d00411f8 <midi_player_update_us.part.0+0x564>
d0040f62:	f002 01fd 	and.w	r1, r2, #253	; 0xfd
d0040f66:	29f1      	cmp	r1, #241	; 0xf1
d0040f68:	f000 8137 	beq.w	d00411da <midi_player_update_us.part.0+0x546>
d0040f6c:	2101      	movs	r1, #1
d0040f6e:	f88d 201c 	strb.w	r2, [sp, #28]
d0040f72:	4eae      	ldr	r6, [pc, #696]	; (d004122c <midi_player_update_us.part.0+0x598>)
d0040f74:	a807      	add	r0, sp, #28
d0040f76:	7d33      	ldrb	r3, [r6, #20]
d0040f78:	7d72      	ldrb	r2, [r6, #21]
d0040f7a:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0040f7e:	7db2      	ldrb	r2, [r6, #22]
d0040f80:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d0040f84:	7df2      	ldrb	r2, [r6, #23]
d0040f86:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0040f8a:	681b      	ldr	r3, [r3, #0]
d0040f8c:	695b      	ldr	r3, [r3, #20]
d0040f8e:	4798      	blx	r3
d0040f90:	eb0a 0305 	add.w	r3, sl, r5
d0040f94:	7b5b      	ldrb	r3, [r3, #13]
d0040f96:	2b00      	cmp	r3, #0
d0040f98:	f43f af2f 	beq.w	d0040dfa <midi_player_update_us.part.0+0x166>
d0040f9c:	9b00      	ldr	r3, [sp, #0]
d0040f9e:	6859      	ldr	r1, [r3, #4]
d0040fa0:	f85a 3008 	ldr.w	r3, [sl, r8]
d0040fa4:	428b      	cmp	r3, r1
d0040fa6:	f4bf af25 	bcs.w	d0040df4 <midi_player_update_us.part.0+0x160>
d0040faa:	1c58      	adds	r0, r3, #1
d0040fac:	f84a 0008 	str.w	r0, [sl, r8]
d0040fb0:	781e      	ldrb	r6, [r3, #0]
d0040fb2:	f006 027f 	and.w	r2, r6, #127	; 0x7f
d0040fb6:	0636      	lsls	r6, r6, #24
d0040fb8:	d527      	bpl.n	d004100a <midi_player_update_us.part.0+0x376>
d0040fba:	4281      	cmp	r1, r0
d0040fbc:	f67f af1a 	bls.w	d0040df4 <midi_player_update_us.part.0+0x160>
d0040fc0:	1c98      	adds	r0, r3, #2
d0040fc2:	f84a 0008 	str.w	r0, [sl, r8]
d0040fc6:	785e      	ldrb	r6, [r3, #1]
d0040fc8:	f006 077f 	and.w	r7, r6, #127	; 0x7f
d0040fcc:	ea47 12c2 	orr.w	r2, r7, r2, lsl #7
d0040fd0:	0637      	lsls	r7, r6, #24
d0040fd2:	d51a      	bpl.n	d004100a <midi_player_update_us.part.0+0x376>
d0040fd4:	4281      	cmp	r1, r0
d0040fd6:	f67f af0d 	bls.w	d0040df4 <midi_player_update_us.part.0+0x160>
d0040fda:	1cd8      	adds	r0, r3, #3
d0040fdc:	f84a 0008 	str.w	r0, [sl, r8]
d0040fe0:	789e      	ldrb	r6, [r3, #2]
d0040fe2:	f006 077f 	and.w	r7, r6, #127	; 0x7f
d0040fe6:	0636      	lsls	r6, r6, #24
d0040fe8:	ea47 12c2 	orr.w	r2, r7, r2, lsl #7
d0040fec:	d50d      	bpl.n	d004100a <midi_player_update_us.part.0+0x376>
d0040fee:	4281      	cmp	r1, r0
d0040ff0:	f67f af00 	bls.w	d0040df4 <midi_player_update_us.part.0+0x160>
d0040ff4:	1d19      	adds	r1, r3, #4
d0040ff6:	f84a 1008 	str.w	r1, [sl, r8]
d0040ffa:	f993 1003 	ldrsb.w	r1, [r3, #3]
d0040ffe:	78db      	ldrb	r3, [r3, #3]
d0041000:	2900      	cmp	r1, #0
d0041002:	f6ff aef7 	blt.w	d0040df4 <midi_player_update_us.part.0+0x160>
d0041006:	ea43 12c2 	orr.w	r2, r3, r2, lsl #7
d004100a:	4455      	add	r5, sl
d004100c:	68ab      	ldr	r3, [r5, #8]
d004100e:	4413      	add	r3, r2
d0041010:	60ab      	str	r3, [r5, #8]
d0041012:	e6f2      	b.n	d0040dfa <midi_player_update_us.part.0+0x166>
d0041014:	734a      	strb	r2, [r1, #13]
d0041016:	e6f0      	b.n	d0040dfa <midi_player_update_us.part.0+0x166>
d0041018:	1c42      	adds	r2, r0, #1
d004101a:	4293      	cmp	r3, r2
d004101c:	f84a 2008 	str.w	r2, [sl, r8]
d0041020:	7807      	ldrb	r7, [r0, #0]
d0041022:	f67f aee7 	bls.w	d0040df4 <midi_player_update_us.part.0+0x160>
d0041026:	1c82      	adds	r2, r0, #2
d0041028:	f84a 2008 	str.w	r2, [sl, r8]
d004102c:	7846      	ldrb	r6, [r0, #1]
d004102e:	f006 017f 	and.w	r1, r6, #127	; 0x7f
d0041032:	0636      	lsls	r6, r6, #24
d0041034:	d527      	bpl.n	d0041086 <midi_player_update_us.part.0+0x3f2>
d0041036:	4293      	cmp	r3, r2
d0041038:	f67f aedc 	bls.w	d0040df4 <midi_player_update_us.part.0+0x160>
d004103c:	1cc2      	adds	r2, r0, #3
d004103e:	f84a 2008 	str.w	r2, [sl, r8]
d0041042:	7886      	ldrb	r6, [r0, #2]
d0041044:	f006 0c7f 	and.w	ip, r6, #127	; 0x7f
d0041048:	0636      	lsls	r6, r6, #24
d004104a:	ea4c 11c1 	orr.w	r1, ip, r1, lsl #7
d004104e:	d51a      	bpl.n	d0041086 <midi_player_update_us.part.0+0x3f2>
d0041050:	4293      	cmp	r3, r2
d0041052:	f67f aecf 	bls.w	d0040df4 <midi_player_update_us.part.0+0x160>
d0041056:	1d02      	adds	r2, r0, #4
d0041058:	f84a 2008 	str.w	r2, [sl, r8]
d004105c:	78c6      	ldrb	r6, [r0, #3]
d004105e:	f006 0c7f 	and.w	ip, r6, #127	; 0x7f
d0041062:	0636      	lsls	r6, r6, #24
d0041064:	ea4c 11c1 	orr.w	r1, ip, r1, lsl #7
d0041068:	d50d      	bpl.n	d0041086 <midi_player_update_us.part.0+0x3f2>
d004106a:	4293      	cmp	r3, r2
d004106c:	f67f aec2 	bls.w	d0040df4 <midi_player_update_us.part.0+0x160>
d0041070:	1d42      	adds	r2, r0, #5
d0041072:	f84a 2008 	str.w	r2, [sl, r8]
d0041076:	f990 6004 	ldrsb.w	r6, [r0, #4]
d004107a:	7900      	ldrb	r0, [r0, #4]
d004107c:	2e00      	cmp	r6, #0
d004107e:	f6ff aeb9 	blt.w	d0040df4 <midi_player_update_us.part.0+0x160>
d0041082:	ea40 11c1 	orr.w	r1, r0, r1, lsl #7
d0041086:	1a9b      	subs	r3, r3, r2
d0041088:	428b      	cmp	r3, r1
d004108a:	f4ff aeb3 	bcc.w	d0040df4 <midi_player_update_us.part.0+0x160>
d004108e:	2f51      	cmp	r7, #81	; 0x51
d0041090:	f000 8108 	beq.w	d00412a4 <midi_player_update_us.part.0+0x610>
d0041094:	2f2f      	cmp	r7, #47	; 0x2f
d0041096:	d103      	bne.n	d00410a0 <midi_player_update_us.part.0+0x40c>
d0041098:	eb0a 0305 	add.w	r3, sl, r5
d004109c:	2000      	movs	r0, #0
d004109e:	7358      	strb	r0, [r3, #13]
d00410a0:	440a      	add	r2, r1
d00410a2:	eb0a 0305 	add.w	r3, sl, r5
d00410a6:	f84a 2008 	str.w	r2, [sl, r8]
d00410aa:	7b5b      	ldrb	r3, [r3, #13]
d00410ac:	2b00      	cmp	r3, #0
d00410ae:	f43f aea4 	beq.w	d0040dfa <midi_player_update_us.part.0+0x166>
d00410b2:	9b00      	ldr	r3, [sp, #0]
d00410b4:	6859      	ldr	r1, [r3, #4]
d00410b6:	428a      	cmp	r2, r1
d00410b8:	f4bf ae9c 	bcs.w	d0040df4 <midi_player_update_us.part.0+0x160>
d00410bc:	1c50      	adds	r0, r2, #1
d00410be:	f84a 0008 	str.w	r0, [sl, r8]
d00410c2:	7816      	ldrb	r6, [r2, #0]
d00410c4:	f006 037f 	and.w	r3, r6, #127	; 0x7f
d00410c8:	0636      	lsls	r6, r6, #24
d00410ca:	d527      	bpl.n	d004111c <midi_player_update_us.part.0+0x488>
d00410cc:	4281      	cmp	r1, r0
d00410ce:	f67f ae91 	bls.w	d0040df4 <midi_player_update_us.part.0+0x160>
d00410d2:	1c90      	adds	r0, r2, #2
d00410d4:	f84a 0008 	str.w	r0, [sl, r8]
d00410d8:	7856      	ldrb	r6, [r2, #1]
d00410da:	f006 077f 	and.w	r7, r6, #127	; 0x7f
d00410de:	ea47 13c3 	orr.w	r3, r7, r3, lsl #7
d00410e2:	0637      	lsls	r7, r6, #24
d00410e4:	d51a      	bpl.n	d004111c <midi_player_update_us.part.0+0x488>
d00410e6:	4281      	cmp	r1, r0
d00410e8:	f67f ae84 	bls.w	d0040df4 <midi_player_update_us.part.0+0x160>
d00410ec:	1cd0      	adds	r0, r2, #3
d00410ee:	f84a 0008 	str.w	r0, [sl, r8]
d00410f2:	7896      	ldrb	r6, [r2, #2]
d00410f4:	f006 077f 	and.w	r7, r6, #127	; 0x7f
d00410f8:	0636      	lsls	r6, r6, #24
d00410fa:	ea47 13c3 	orr.w	r3, r7, r3, lsl #7
d00410fe:	d50d      	bpl.n	d004111c <midi_player_update_us.part.0+0x488>
d0041100:	4281      	cmp	r1, r0
d0041102:	f67f ae77 	bls.w	d0040df4 <midi_player_update_us.part.0+0x160>
d0041106:	1d11      	adds	r1, r2, #4
d0041108:	f84a 1008 	str.w	r1, [sl, r8]
d004110c:	f992 1003 	ldrsb.w	r1, [r2, #3]
d0041110:	78d2      	ldrb	r2, [r2, #3]
d0041112:	2900      	cmp	r1, #0
d0041114:	f6ff ae6e 	blt.w	d0040df4 <midi_player_update_us.part.0+0x160>
d0041118:	ea42 13c3 	orr.w	r3, r2, r3, lsl #7
d004111c:	4455      	add	r5, sl
d004111e:	68aa      	ldr	r2, [r5, #8]
d0041120:	4413      	add	r3, r2
d0041122:	60ab      	str	r3, [r5, #8]
d0041124:	e669      	b.n	d0040dfa <midi_player_update_us.part.0+0x166>
d0041126:	ea41 17c7 	orr.w	r7, r1, r7, lsl #7
d004112a:	1b9b      	subs	r3, r3, r6
d004112c:	42bb      	cmp	r3, r7
d004112e:	f4ff ae61 	bcc.w	d0040df4 <midi_player_update_us.part.0+0x160>
d0041132:	f89a 3101 	ldrb.w	r3, [sl, #257]	; 0x101
d0041136:	2b00      	cmp	r3, #0
d0041138:	d07a      	beq.n	d0041230 <midi_player_update_us.part.0+0x59c>
d004113a:	f85a 2008 	ldr.w	r2, [sl, r8]
d004113e:	eb0a 0305 	add.w	r3, sl, r5
d0041142:	4417      	add	r7, r2
d0041144:	f84a 7008 	str.w	r7, [sl, r8]
d0041148:	7b5b      	ldrb	r3, [r3, #13]
d004114a:	2b00      	cmp	r3, #0
d004114c:	f43f ae55 	beq.w	d0040dfa <midi_player_update_us.part.0+0x166>
d0041150:	9b00      	ldr	r3, [sp, #0]
d0041152:	685a      	ldr	r2, [r3, #4]
d0041154:	4297      	cmp	r7, r2
d0041156:	f4bf ae4d 	bcs.w	d0040df4 <midi_player_update_us.part.0+0x160>
d004115a:	1c79      	adds	r1, r7, #1
d004115c:	f84a 1008 	str.w	r1, [sl, r8]
d0041160:	7838      	ldrb	r0, [r7, #0]
d0041162:	f000 037f 	and.w	r3, r0, #127	; 0x7f
d0041166:	0600      	lsls	r0, r0, #24
d0041168:	d5d8      	bpl.n	d004111c <midi_player_update_us.part.0+0x488>
d004116a:	428a      	cmp	r2, r1
d004116c:	f67f ae42 	bls.w	d0040df4 <midi_player_update_us.part.0+0x160>
d0041170:	1cb9      	adds	r1, r7, #2
d0041172:	f84a 1008 	str.w	r1, [sl, r8]
d0041176:	7878      	ldrb	r0, [r7, #1]
d0041178:	f000 067f 	and.w	r6, r0, #127	; 0x7f
d004117c:	ea46 13c3 	orr.w	r3, r6, r3, lsl #7
d0041180:	0606      	lsls	r6, r0, #24
d0041182:	d5cb      	bpl.n	d004111c <midi_player_update_us.part.0+0x488>
d0041184:	428a      	cmp	r2, r1
d0041186:	f67f ae35 	bls.w	d0040df4 <midi_player_update_us.part.0+0x160>
d004118a:	1cf9      	adds	r1, r7, #3
d004118c:	f84a 1008 	str.w	r1, [sl, r8]
d0041190:	78b8      	ldrb	r0, [r7, #2]
d0041192:	f000 067f 	and.w	r6, r0, #127	; 0x7f
d0041196:	0600      	lsls	r0, r0, #24
d0041198:	ea46 13c3 	orr.w	r3, r6, r3, lsl #7
d004119c:	d5be      	bpl.n	d004111c <midi_player_update_us.part.0+0x488>
d004119e:	428a      	cmp	r2, r1
d00411a0:	f67f ae28 	bls.w	d0040df4 <midi_player_update_us.part.0+0x160>
d00411a4:	1d3a      	adds	r2, r7, #4
d00411a6:	f84a 2008 	str.w	r2, [sl, r8]
d00411aa:	f997 1003 	ldrsb.w	r1, [r7, #3]
d00411ae:	78fa      	ldrb	r2, [r7, #3]
d00411b0:	2900      	cmp	r1, #0
d00411b2:	f6ff ae1f 	blt.w	d0040df4 <midi_player_update_us.part.0+0x160>
d00411b6:	e7af      	b.n	d0041118 <midi_player_update_us.part.0+0x484>
d00411b8:	2300      	movs	r3, #0
d00411ba:	f88a 3120 	strb.w	r3, [sl, #288]	; 0x120
d00411be:	f7ff f9ab 	bl	d0040518 <midi_send_channel_panic>
d00411c2:	b009      	add	sp, #36	; 0x24
d00411c4:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d00411c8:	f5bb 5f80 	cmp.w	fp, #4096	; 0x1000
d00411cc:	f4ff ad79 	bcc.w	d0040cc2 <midi_player_update_us.part.0+0x2e>
d00411d0:	e7f7      	b.n	d00411c2 <midi_player_update_us.part.0+0x52e>
d00411d2:	2002      	movs	r0, #2
d00411d4:	2103      	movs	r1, #3
d00411d6:	4607      	mov	r7, r0
d00411d8:	e646      	b.n	d0040e68 <midi_player_update_us.part.0+0x1d4>
d00411da:	f85a 0008 	ldr.w	r0, [sl, r8]
d00411de:	4283      	cmp	r3, r0
d00411e0:	f43f ae08 	beq.w	d0040df4 <midi_player_update_us.part.0+0x160>
d00411e4:	1c43      	adds	r3, r0, #1
d00411e6:	f88d 201c 	strb.w	r2, [sp, #28]
d00411ea:	2102      	movs	r1, #2
d00411ec:	f84a 3008 	str.w	r3, [sl, r8]
d00411f0:	7803      	ldrb	r3, [r0, #0]
d00411f2:	f88d 301d 	strb.w	r3, [sp, #29]
d00411f6:	e6bc      	b.n	d0040f72 <midi_player_update_us.part.0+0x2de>
d00411f8:	f85a 0008 	ldr.w	r0, [sl, r8]
d00411fc:	1a1b      	subs	r3, r3, r0
d00411fe:	2b01      	cmp	r3, #1
d0041200:	f67f adf8 	bls.w	d0040df4 <midi_player_update_us.part.0+0x160>
d0041204:	4603      	mov	r3, r0
d0041206:	1c46      	adds	r6, r0, #1
d0041208:	f88d 201c 	strb.w	r2, [sp, #28]
d004120c:	2103      	movs	r1, #3
d004120e:	f84a 6008 	str.w	r6, [sl, r8]
d0041212:	f813 2b02 	ldrb.w	r2, [r3], #2
d0041216:	f88d 201d 	strb.w	r2, [sp, #29]
d004121a:	f84a 3008 	str.w	r3, [sl, r8]
d004121e:	7843      	ldrb	r3, [r0, #1]
d0041220:	f88d 301e 	strb.w	r3, [sp, #30]
d0041224:	e6a5      	b.n	d0040f72 <midi_player_update_us.part.0+0x2de>
d0041226:	bf00      	nop
d0041228:	d0044fb0 	.word	0xd0044fb0
d004122c:	2001f000 	.word	0x2001f000
d0041230:	f88d 201c 	strb.w	r2, [sp, #28]
d0041234:	f1bc 0f00 	cmp.w	ip, #0
d0041238:	d121      	bne.n	d004127e <midi_player_update_us.part.0+0x5ea>
d004123a:	2f00      	cmp	r7, #0
d004123c:	f43f af7d 	beq.w	d004113a <midi_player_update_us.part.0+0x4a6>
d0041240:	9502      	str	r5, [sp, #8]
d0041242:	463d      	mov	r5, r7
d0041244:	9401      	str	r4, [sp, #4]
d0041246:	4bab      	ldr	r3, [pc, #684]	; (d00414f4 <midi_player_update_us.part.0+0x860>)
d0041248:	2d40      	cmp	r5, #64	; 0x40
d004124a:	462c      	mov	r4, r5
d004124c:	4630      	mov	r0, r6
d004124e:	7d19      	ldrb	r1, [r3, #20]
d0041250:	bf28      	it	cs
d0041252:	2440      	movcs	r4, #64	; 0x40
d0041254:	7d5a      	ldrb	r2, [r3, #21]
d0041256:	f893 e016 	ldrb.w	lr, [r3, #22]
d004125a:	4426      	add	r6, r4
d004125c:	ea41 2202 	orr.w	r2, r1, r2, lsl #8
d0041260:	f893 c017 	ldrb.w	ip, [r3, #23]
d0041264:	b2a1      	uxth	r1, r4
d0041266:	ea42 4e0e 	orr.w	lr, r2, lr, lsl #16
d004126a:	ea4e 620c 	orr.w	r2, lr, ip, lsl #24
d004126e:	6812      	ldr	r2, [r2, #0]
d0041270:	6952      	ldr	r2, [r2, #20]
d0041272:	4790      	blx	r2
d0041274:	1b2d      	subs	r5, r5, r4
d0041276:	d1e6      	bne.n	d0041246 <midi_player_update_us.part.0+0x5b2>
d0041278:	9c01      	ldr	r4, [sp, #4]
d004127a:	9d02      	ldr	r5, [sp, #8]
d004127c:	e75d      	b.n	d004113a <midi_player_update_us.part.0+0x4a6>
d004127e:	4a9d      	ldr	r2, [pc, #628]	; (d00414f4 <midi_player_update_us.part.0+0x860>)
d0041280:	2101      	movs	r1, #1
d0041282:	a807      	add	r0, sp, #28
d0041284:	7d13      	ldrb	r3, [r2, #20]
d0041286:	7d52      	ldrb	r2, [r2, #21]
d0041288:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004128c:	4a99      	ldr	r2, [pc, #612]	; (d00414f4 <midi_player_update_us.part.0+0x860>)
d004128e:	7d92      	ldrb	r2, [r2, #22]
d0041290:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d0041294:	4a97      	ldr	r2, [pc, #604]	; (d00414f4 <midi_player_update_us.part.0+0x860>)
d0041296:	7dd2      	ldrb	r2, [r2, #23]
d0041298:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004129c:	681b      	ldr	r3, [r3, #0]
d004129e:	695b      	ldr	r3, [r3, #20]
d00412a0:	4798      	blx	r3
d00412a2:	e7ca      	b.n	d004123a <midi_player_update_us.part.0+0x5a6>
d00412a4:	2903      	cmp	r1, #3
d00412a6:	f47f aefb 	bne.w	d00410a0 <midi_player_update_us.part.0+0x40c>
d00412aa:	7853      	ldrb	r3, [r2, #1]
d00412ac:	7816      	ldrb	r6, [r2, #0]
d00412ae:	021b      	lsls	r3, r3, #8
d00412b0:	7890      	ldrb	r0, [r2, #2]
d00412b2:	ea43 4306 	orr.w	r3, r3, r6, lsl #16
d00412b6:	4303      	orrs	r3, r0
d00412b8:	f8ca 3114 	str.w	r3, [sl, #276]	; 0x114
d00412bc:	e6f0      	b.n	d00410a0 <midi_player_update_us.part.0+0x40c>
d00412be:	f89d 201e 	ldrb.w	r2, [sp, #30]
d00412c2:	2a00      	cmp	r2, #0
d00412c4:	f000 8096 	beq.w	d00413f4 <midi_player_update_us.part.0+0x760>
d00412c8:	4e8b      	ldr	r6, [pc, #556]	; (d00414f8 <midi_player_update_us.part.0+0x864>)
d00412ca:	f04f 0c00 	mov.w	ip, #0
d00412ce:	9205      	str	r2, [sp, #20]
d00412d0:	4637      	mov	r7, r6
d00412d2:	9602      	str	r6, [sp, #8]
d00412d4:	e00c      	b.n	d00412f0 <midi_player_update_us.part.0+0x65c>
d00412d6:	6832      	ldr	r2, [r6, #0]
d00412d8:	f10c 0c01 	add.w	ip, ip, #1
d00412dc:	683b      	ldr	r3, [r7, #0]
d00412de:	429a      	cmp	r2, r3
d00412e0:	bf38      	it	cc
d00412e2:	4637      	movcc	r7, r6
d00412e4:	f1bc 0fc0 	cmp.w	ip, #192	; 0xc0
d00412e8:	f106 0610 	add.w	r6, r6, #16
d00412ec:	f000 8126 	beq.w	d004153c <midi_player_update_us.part.0+0x8a8>
d00412f0:	7b33      	ldrb	r3, [r6, #12]
d00412f2:	2b00      	cmp	r3, #0
d00412f4:	d1ef      	bne.n	d00412d6 <midi_player_update_us.part.0+0x642>
d00412f6:	9b02      	ldr	r3, [sp, #8]
d00412f8:	9a05      	ldr	r2, [sp, #20]
d00412fa:	eb03 170c 	add.w	r7, r3, ip, lsl #4
d00412fe:	4e7f      	ldr	r6, [pc, #508]	; (d00414fc <midi_player_update_us.part.0+0x868>)
d0041300:	f04f 0c01 	mov.w	ip, #1
d0041304:	9b03      	ldr	r3, [sp, #12]
d0041306:	6836      	ldr	r6, [r6, #0]
d0041308:	7238      	strb	r0, [r7, #8]
d004130a:	727b      	strb	r3, [r7, #9]
d004130c:	72ba      	strb	r2, [r7, #10]
d004130e:	603e      	str	r6, [r7, #0]
d0041310:	607e      	str	r6, [r7, #4]
d0041312:	f887 c00b 	strb.w	ip, [r7, #11]
d0041316:	f887 c00c 	strb.w	ip, [r7, #12]
d004131a:	f89a 3101 	ldrb.w	r3, [sl, #257]	; 0x101
d004131e:	2b01      	cmp	r3, #1
d0041320:	f47f ae27 	bne.w	d0040f72 <midi_player_update_us.part.0+0x2de>
d0041324:	f89d 3010 	ldrb.w	r3, [sp, #16]
d0041328:	9302      	str	r3, [sp, #8]
d004132a:	f1be 0f80 	cmp.w	lr, #128	; 0x80
d004132e:	d102      	bne.n	d0041336 <midi_player_update_us.part.0+0x6a2>
d0041330:	2903      	cmp	r1, #3
d0041332:	f000 80f1 	beq.w	d0041518 <midi_player_update_us.part.0+0x884>
d0041336:	9b01      	ldr	r3, [sp, #4]
d0041338:	2bd0      	cmp	r3, #208	; 0xd0
d004133a:	f43f ae29 	beq.w	d0040f90 <midi_player_update_us.part.0+0x2fc>
d004133e:	2ba0      	cmp	r3, #160	; 0xa0
d0041340:	f43f ae26 	beq.w	d0040f90 <midi_player_update_us.part.0+0x2fc>
d0041344:	2902      	cmp	r1, #2
d0041346:	9a01      	ldr	r2, [sp, #4]
d0041348:	bf94      	ite	ls
d004134a:	2300      	movls	r3, #0
d004134c:	2301      	movhi	r3, #1
d004134e:	2a90      	cmp	r2, #144	; 0x90
d0041350:	f47f adcd 	bne.w	d0040eee <midi_player_update_us.part.0+0x25a>
d0041354:	2b00      	cmp	r3, #0
d0041356:	f43f adca 	beq.w	d0040eee <midi_player_update_us.part.0+0x25a>
d004135a:	f89d 301e 	ldrb.w	r3, [sp, #30]
d004135e:	9301      	str	r3, [sp, #4]
d0041360:	2b00      	cmp	r3, #0
d0041362:	f43f adcb 	beq.w	d0040efc <midi_player_update_us.part.0+0x268>
d0041366:	f89d e01d 	ldrb.w	lr, [sp, #29]
d004136a:	2200      	movs	r2, #0
d004136c:	4f64      	ldr	r7, [pc, #400]	; (d0041500 <midi_player_update_us.part.0+0x86c>)
d004136e:	f00e 037f 	and.w	r3, lr, #127	; 0x7f
d0041372:	463e      	mov	r6, r7
d0041374:	9303      	str	r3, [sp, #12]
d0041376:	463b      	mov	r3, r7
d0041378:	e004      	b.n	d0041384 <midi_player_update_us.part.0+0x6f0>
d004137a:	3201      	adds	r2, #1
d004137c:	3308      	adds	r3, #8
d004137e:	2a40      	cmp	r2, #64	; 0x40
d0041380:	f000 80ea 	beq.w	d0041558 <midi_player_update_us.part.0+0x8c4>
d0041384:	79d9      	ldrb	r1, [r3, #7]
d0041386:	2900      	cmp	r1, #0
d0041388:	d0f7      	beq.n	d004137a <midi_player_update_us.part.0+0x6e6>
d004138a:	7919      	ldrb	r1, [r3, #4]
d004138c:	9802      	ldr	r0, [sp, #8]
d004138e:	4281      	cmp	r1, r0
d0041390:	d1f3      	bne.n	d004137a <midi_player_update_us.part.0+0x6e6>
d0041392:	7959      	ldrb	r1, [r3, #5]
d0041394:	9803      	ldr	r0, [sp, #12]
d0041396:	4281      	cmp	r1, r0
d0041398:	d1ef      	bne.n	d004137a <midi_player_update_us.part.0+0x6e6>
d004139a:	495a      	ldr	r1, [pc, #360]	; (d0041504 <midi_player_update_us.part.0+0x870>)
d004139c:	eb06 00c2 	add.w	r0, r6, r2, lsl #3
d00413a0:	680b      	ldr	r3, [r1, #0]
d00413a2:	9303      	str	r3, [sp, #12]
d00413a4:	9b01      	ldr	r3, [sp, #4]
d00413a6:	7183      	strb	r3, [r0, #6]
d00413a8:	9b03      	ldr	r3, [sp, #12]
d00413aa:	3301      	adds	r3, #1
d00413ac:	600b      	str	r3, [r1, #0]
d00413ae:	f846 3032 	str.w	r3, [r6, r2, lsl #3]
d00413b2:	4b55      	ldr	r3, [pc, #340]	; (d0041508 <midi_player_update_us.part.0+0x874>)
d00413b4:	881b      	ldrh	r3, [r3, #0]
d00413b6:	f5c3 6280 	rsb	r2, r3, #1024	; 0x400
d00413ba:	b292      	uxth	r2, r2
d00413bc:	2a02      	cmp	r2, #2
d00413be:	f240 80e7 	bls.w	d0041590 <midi_player_update_us.part.0+0x8fc>
d00413c2:	4f52      	ldr	r7, [pc, #328]	; (d004150c <midi_player_update_us.part.0+0x878>)
d00413c4:	3303      	adds	r3, #3
d00413c6:	4e50      	ldr	r6, [pc, #320]	; (d0041508 <midi_player_update_us.part.0+0x874>)
d00413c8:	8839      	ldrh	r1, [r7, #0]
d00413ca:	8033      	strh	r3, [r6, #0]
d00413cc:	1c4a      	adds	r2, r1, #1
d00413ce:	4e50      	ldr	r6, [pc, #320]	; (d0041510 <midi_player_update_us.part.0+0x87c>)
d00413d0:	f89d 001c 	ldrb.w	r0, [sp, #28]
d00413d4:	f3c2 0209 	ubfx	r2, r2, #0, #10
d00413d8:	5470      	strb	r0, [r6, r1]
d00413da:	1c53      	adds	r3, r2, #1
d00413dc:	f806 e002 	strb.w	lr, [r6, r2]
d00413e0:	f89d 101e 	ldrb.w	r1, [sp, #30]
d00413e4:	f3c3 0309 	ubfx	r3, r3, #0, #10
d00413e8:	1c5a      	adds	r2, r3, #1
d00413ea:	54f1      	strb	r1, [r6, r3]
d00413ec:	f3c2 0309 	ubfx	r3, r2, #0, #10
d00413f0:	803b      	strh	r3, [r7, #0]
d00413f2:	e5cd      	b.n	d0040f90 <midi_player_update_us.part.0+0x2fc>
d00413f4:	4b40      	ldr	r3, [pc, #256]	; (d00414f8 <midi_player_update_us.part.0+0x864>)
d00413f6:	4637      	mov	r7, r6
d00413f8:	9302      	str	r3, [sp, #8]
d00413fa:	e003      	b.n	d0041404 <midi_player_update_us.part.0+0x770>
d00413fc:	3201      	adds	r2, #1
d00413fe:	3310      	adds	r3, #16
d0041400:	2ac0      	cmp	r2, #192	; 0xc0
d0041402:	d08a      	beq.n	d004131a <midi_player_update_us.part.0+0x686>
d0041404:	7b1e      	ldrb	r6, [r3, #12]
d0041406:	2e00      	cmp	r6, #0
d0041408:	d0f8      	beq.n	d00413fc <midi_player_update_us.part.0+0x768>
d004140a:	7ade      	ldrb	r6, [r3, #11]
d004140c:	2e00      	cmp	r6, #0
d004140e:	d0f5      	beq.n	d00413fc <midi_player_update_us.part.0+0x768>
d0041410:	7a1e      	ldrb	r6, [r3, #8]
d0041412:	4286      	cmp	r6, r0
d0041414:	d1f2      	bne.n	d00413fc <midi_player_update_us.part.0+0x768>
d0041416:	7a5e      	ldrb	r6, [r3, #9]
d0041418:	42be      	cmp	r6, r7
d004141a:	d1ef      	bne.n	d00413fc <midi_player_update_us.part.0+0x768>
d004141c:	9e02      	ldr	r6, [sp, #8]
d004141e:	4b37      	ldr	r3, [pc, #220]	; (d00414fc <midi_player_update_us.part.0+0x868>)
d0041420:	eb06 1202 	add.w	r2, r6, r2, lsl #4
d0041424:	2600      	movs	r6, #0
d0041426:	681b      	ldr	r3, [r3, #0]
d0041428:	72d6      	strb	r6, [r2, #11]
d004142a:	6053      	str	r3, [r2, #4]
d004142c:	e775      	b.n	d004131a <midi_player_update_us.part.0+0x686>
d004142e:	2b09      	cmp	r3, #9
d0041430:	f000 80ed 	beq.w	d004160e <midi_player_update_us.part.0+0x97a>
d0041434:	f000 007f 	and.w	r0, r0, #127	; 0x7f
d0041438:	4b36      	ldr	r3, [pc, #216]	; (d0041514 <midi_player_update_us.part.0+0x880>)
d004143a:	5c1b      	ldrb	r3, [r3, r0]
d004143c:	2902      	cmp	r1, #2
d004143e:	f88d 301d 	strb.w	r3, [sp, #29]
d0041442:	bf94      	ite	ls
d0041444:	2300      	movls	r3, #0
d0041446:	2301      	movhi	r3, #1
d0041448:	9a01      	ldr	r2, [sp, #4]
d004144a:	2ab0      	cmp	r2, #176	; 0xb0
d004144c:	d110      	bne.n	d0041470 <midi_player_update_us.part.0+0x7dc>
d004144e:	b17b      	cbz	r3, d0041470 <midi_player_update_us.part.0+0x7dc>
d0041450:	f89d 301d 	ldrb.w	r3, [sp, #29]
d0041454:	2b78      	cmp	r3, #120	; 0x78
d0041456:	f000 80c4 	beq.w	d00415e2 <midi_player_update_us.part.0+0x94e>
d004145a:	f1a3 067b 	sub.w	r6, r3, #123	; 0x7b
d004145e:	fab6 f686 	clz	r6, r6
d0041462:	0976      	lsrs	r6, r6, #5
d0041464:	2e00      	cmp	r6, #0
d0041466:	f040 80bc 	bne.w	d00415e2 <midi_player_update_us.part.0+0x94e>
d004146a:	2b79      	cmp	r3, #121	; 0x79
d004146c:	f000 80a4 	beq.w	d00415b8 <midi_player_update_us.part.0+0x924>
d0041470:	4b25      	ldr	r3, [pc, #148]	; (d0041508 <midi_player_update_us.part.0+0x874>)
d0041472:	b28a      	uxth	r2, r1
d0041474:	8818      	ldrh	r0, [r3, #0]
d0041476:	f5c0 6380 	rsb	r3, r0, #1024	; 0x400
d004147a:	b29b      	uxth	r3, r3
d004147c:	4299      	cmp	r1, r3
d004147e:	f63f ad87 	bhi.w	d0040f90 <midi_player_update_us.part.0+0x2fc>
d0041482:	4b22      	ldr	r3, [pc, #136]	; (d004150c <midi_player_update_us.part.0+0x878>)
d0041484:	ae07      	add	r6, sp, #28
d0041486:	4686      	mov	lr, r0
d0041488:	8819      	ldrh	r1, [r3, #0]
d004148a:	2300      	movs	r3, #0
d004148c:	3301      	adds	r3, #1
d004148e:	f816 cb01 	ldrb.w	ip, [r6], #1
d0041492:	1c4f      	adds	r7, r1, #1
d0041494:	481e      	ldr	r0, [pc, #120]	; (d0041510 <midi_player_update_us.part.0+0x87c>)
d0041496:	b29b      	uxth	r3, r3
d0041498:	f800 c001 	strb.w	ip, [r0, r1]
d004149c:	f3c7 0109 	ubfx	r1, r7, #0, #10
d00414a0:	429a      	cmp	r2, r3
d00414a2:	d8f3      	bhi.n	d004148c <midi_player_update_us.part.0+0x7f8>
d00414a4:	4b19      	ldr	r3, [pc, #100]	; (d004150c <midi_player_update_us.part.0+0x878>)
d00414a6:	4472      	add	r2, lr
d00414a8:	8019      	strh	r1, [r3, #0]
d00414aa:	4b17      	ldr	r3, [pc, #92]	; (d0041508 <midi_player_update_us.part.0+0x874>)
d00414ac:	801a      	strh	r2, [r3, #0]
d00414ae:	e56f      	b.n	d0040f90 <midi_player_update_us.part.0+0x2fc>
d00414b0:	2879      	cmp	r0, #121	; 0x79
d00414b2:	d803      	bhi.n	d00414bc <midi_player_update_us.part.0+0x828>
d00414b4:	2877      	cmp	r0, #119	; 0x77
d00414b6:	f67f ad6b 	bls.w	d0040f90 <midi_player_update_us.part.0+0x2fc>
d00414ba:	e514      	b.n	d0040ee6 <midi_player_update_us.part.0+0x252>
d00414bc:	287b      	cmp	r0, #123	; 0x7b
d00414be:	f47f ad67 	bne.w	d0040f90 <midi_player_update_us.part.0+0x2fc>
d00414c2:	e510      	b.n	d0040ee6 <midi_player_update_us.part.0+0x252>
d00414c4:	4b0c      	ldr	r3, [pc, #48]	; (d00414f8 <midi_player_update_us.part.0+0x864>)
d00414c6:	4637      	mov	r7, r6
d00414c8:	2200      	movs	r2, #0
d00414ca:	9302      	str	r3, [sp, #8]
d00414cc:	e004      	b.n	d00414d8 <midi_player_update_us.part.0+0x844>
d00414ce:	3201      	adds	r2, #1
d00414d0:	3310      	adds	r3, #16
d00414d2:	2ac0      	cmp	r2, #192	; 0xc0
d00414d4:	f43f af21 	beq.w	d004131a <midi_player_update_us.part.0+0x686>
d00414d8:	7b1e      	ldrb	r6, [r3, #12]
d00414da:	2e00      	cmp	r6, #0
d00414dc:	d0f7      	beq.n	d00414ce <midi_player_update_us.part.0+0x83a>
d00414de:	7ade      	ldrb	r6, [r3, #11]
d00414e0:	2e00      	cmp	r6, #0
d00414e2:	d0f4      	beq.n	d00414ce <midi_player_update_us.part.0+0x83a>
d00414e4:	7a1e      	ldrb	r6, [r3, #8]
d00414e6:	4286      	cmp	r6, r0
d00414e8:	d1f1      	bne.n	d00414ce <midi_player_update_us.part.0+0x83a>
d00414ea:	7a5e      	ldrb	r6, [r3, #9]
d00414ec:	42be      	cmp	r6, r7
d00414ee:	d1ee      	bne.n	d00414ce <midi_player_update_us.part.0+0x83a>
d00414f0:	e794      	b.n	d004141c <midi_player_update_us.part.0+0x788>
d00414f2:	bf00      	nop
d00414f4:	2001f000 	.word	0x2001f000
d00414f8:	d00455c8 	.word	0xd00455c8
d00414fc:	d00455c0 	.word	0xd00455c0
d0041500:	d0044fb0 	.word	0xd0044fb0
d0041504:	d00451b0 	.word	0xd00451b0
d0041508:	d00451b4 	.word	0xd00451b4
d004150c:	d00451b6 	.word	0xd00451b6
d0041510:	d00451b8 	.word	0xd00451b8
d0041514:	d004492c 	.word	0xd004492c
d0041518:	9b02      	ldr	r3, [sp, #8]
d004151a:	f000 007f 	and.w	r0, r0, #127	; 0x7f
d004151e:	2b09      	cmp	r3, #9
d0041520:	d077      	beq.n	d0041612 <midi_player_update_us.part.0+0x97e>
d0041522:	f100 030c 	add.w	r3, r0, #12
d0041526:	2b23      	cmp	r3, #35	; 0x23
d0041528:	d80a      	bhi.n	d0041540 <midi_player_update_us.part.0+0x8ac>
d004152a:	f100 0318 	add.w	r3, r0, #24
d004152e:	2b23      	cmp	r3, #35	; 0x23
d0041530:	d801      	bhi.n	d0041536 <midi_player_update_us.part.0+0x8a2>
d0041532:	f100 0324 	add.w	r3, r0, #36	; 0x24
d0041536:	f88d 301d 	strb.w	r3, [sp, #29]
d004153a:	e703      	b.n	d0041344 <midi_player_update_us.part.0+0x6b0>
d004153c:	9a05      	ldr	r2, [sp, #20]
d004153e:	e6de      	b.n	d00412fe <midi_player_update_us.part.0+0x66a>
d0041540:	2b67      	cmp	r3, #103	; 0x67
d0041542:	d9f8      	bls.n	d0041536 <midi_player_update_us.part.0+0x8a2>
d0041544:	2867      	cmp	r0, #103	; 0x67
d0041546:	d964      	bls.n	d0041612 <midi_player_update_us.part.0+0x97e>
d0041548:	f1a0 030c 	sub.w	r3, r0, #12
d004154c:	b2db      	uxtb	r3, r3
d004154e:	2b67      	cmp	r3, #103	; 0x67
d0041550:	d9f1      	bls.n	d0041536 <midi_player_update_us.part.0+0x8a2>
d0041552:	3818      	subs	r0, #24
d0041554:	b2c3      	uxtb	r3, r0
d0041556:	e7ee      	b.n	d0041536 <midi_player_update_us.part.0+0x8a2>
d0041558:	f507 7300 	add.w	r3, r7, #512	; 0x200
d004155c:	4631      	mov	r1, r6
d004155e:	462e      	mov	r6, r5
d0041560:	4625      	mov	r5, r4
d0041562:	461c      	mov	r4, r3
d0041564:	463b      	mov	r3, r7
d0041566:	2000      	movs	r0, #0
d0041568:	79da      	ldrb	r2, [r3, #7]
d004156a:	f100 0c01 	add.w	ip, r0, #1
d004156e:	3308      	adds	r3, #8
d0041570:	b10a      	cbz	r2, d0041576 <midi_player_update_us.part.0+0x8e2>
d0041572:	fa5f f08c 	uxtb.w	r0, ip
d0041576:	429c      	cmp	r4, r3
d0041578:	d1f6      	bne.n	d0041568 <midi_player_update_us.part.0+0x8d4>
d004157a:	2817      	cmp	r0, #23
d004157c:	d94b      	bls.n	d0041616 <midi_player_update_us.part.0+0x982>
d004157e:	9104      	str	r1, [sp, #16]
d0041580:	f7ff fa8c 	bl	d0040a9c <midi_limiter_steal_note>
d0041584:	9904      	ldr	r1, [sp, #16]
d0041586:	2800      	cmp	r0, #0
d0041588:	d1ec      	bne.n	d0041564 <midi_player_update_us.part.0+0x8d0>
d004158a:	462c      	mov	r4, r5
d004158c:	4635      	mov	r5, r6
d004158e:	e4ff      	b.n	d0040f90 <midi_player_update_us.part.0+0x2fc>
d0041590:	f00e 0e7f 	and.w	lr, lr, #127	; 0x7f
d0041594:	2300      	movs	r3, #0
d0041596:	e004      	b.n	d00415a2 <midi_player_update_us.part.0+0x90e>
d0041598:	3301      	adds	r3, #1
d004159a:	3708      	adds	r7, #8
d004159c:	2b40      	cmp	r3, #64	; 0x40
d004159e:	f43f acf7 	beq.w	d0040f90 <midi_player_update_us.part.0+0x2fc>
d00415a2:	79fa      	ldrb	r2, [r7, #7]
d00415a4:	2a00      	cmp	r2, #0
d00415a6:	d0f7      	beq.n	d0041598 <midi_player_update_us.part.0+0x904>
d00415a8:	793a      	ldrb	r2, [r7, #4]
d00415aa:	9902      	ldr	r1, [sp, #8]
d00415ac:	428a      	cmp	r2, r1
d00415ae:	d1f3      	bne.n	d0041598 <midi_player_update_us.part.0+0x904>
d00415b0:	797a      	ldrb	r2, [r7, #5]
d00415b2:	4572      	cmp	r2, lr
d00415b4:	d1f0      	bne.n	d0041598 <midi_player_update_us.part.0+0x904>
d00415b6:	e4bc      	b.n	d0040f32 <midi_player_update_us.part.0+0x29e>
d00415b8:	2103      	movs	r1, #3
d00415ba:	a807      	add	r0, sp, #28
d00415bc:	f7ff f9c0 	bl	d0040940 <midi_tx_enqueue_urgent_bytes>
d00415c0:	2800      	cmp	r0, #0
d00415c2:	f43f ace5 	beq.w	d0040f90 <midi_player_update_us.part.0+0x2fc>
d00415c6:	4b2e      	ldr	r3, [pc, #184]	; (d0041680 <midi_player_update_us.part.0+0x9ec>)
d00415c8:	f503 7200 	add.w	r2, r3, #512	; 0x200
d00415cc:	79d9      	ldrb	r1, [r3, #7]
d00415ce:	b121      	cbz	r1, d00415da <midi_player_update_us.part.0+0x946>
d00415d0:	7919      	ldrb	r1, [r3, #4]
d00415d2:	9802      	ldr	r0, [sp, #8]
d00415d4:	4281      	cmp	r1, r0
d00415d6:	bf08      	it	eq
d00415d8:	71de      	strbeq	r6, [r3, #7]
d00415da:	3308      	adds	r3, #8
d00415dc:	4293      	cmp	r3, r2
d00415de:	d1f5      	bne.n	d00415cc <midi_player_update_us.part.0+0x938>
d00415e0:	e4d6      	b.n	d0040f90 <midi_player_update_us.part.0+0x2fc>
d00415e2:	2103      	movs	r1, #3
d00415e4:	a807      	add	r0, sp, #28
d00415e6:	f7ff f9ab 	bl	d0040940 <midi_tx_enqueue_urgent_bytes>
d00415ea:	2800      	cmp	r0, #0
d00415ec:	f43f acd0 	beq.w	d0040f90 <midi_player_update_us.part.0+0x2fc>
d00415f0:	4b23      	ldr	r3, [pc, #140]	; (d0041680 <midi_player_update_us.part.0+0x9ec>)
d00415f2:	2100      	movs	r1, #0
d00415f4:	f503 7200 	add.w	r2, r3, #512	; 0x200
d00415f8:	79d8      	ldrb	r0, [r3, #7]
d00415fa:	b120      	cbz	r0, d0041606 <midi_player_update_us.part.0+0x972>
d00415fc:	7918      	ldrb	r0, [r3, #4]
d00415fe:	9e02      	ldr	r6, [sp, #8]
d0041600:	42b0      	cmp	r0, r6
d0041602:	bf08      	it	eq
d0041604:	71d9      	strbeq	r1, [r3, #7]
d0041606:	3308      	adds	r3, #8
d0041608:	429a      	cmp	r2, r3
d004160a:	d1f5      	bne.n	d00415f8 <midi_player_update_us.part.0+0x964>
d004160c:	e4c0      	b.n	d0040f90 <midi_player_update_us.part.0+0x2fc>
d004160e:	2363      	movs	r3, #99	; 0x63
d0041610:	e714      	b.n	d004143c <midi_player_update_us.part.0+0x7a8>
d0041612:	4603      	mov	r3, r0
d0041614:	e78f      	b.n	d0041536 <midi_player_update_us.part.0+0x8a2>
d0041616:	462c      	mov	r4, r5
d0041618:	2200      	movs	r2, #0
d004161a:	4635      	mov	r5, r6
d004161c:	460e      	mov	r6, r1
d004161e:	e002      	b.n	d0041626 <midi_player_update_us.part.0+0x992>
d0041620:	3201      	adds	r2, #1
d0041622:	2a40      	cmp	r2, #64	; 0x40
d0041624:	d01b      	beq.n	d004165e <midi_player_update_us.part.0+0x9ca>
d0041626:	eb06 03c2 	add.w	r3, r6, r2, lsl #3
d004162a:	79db      	ldrb	r3, [r3, #7]
d004162c:	2b00      	cmp	r3, #0
d004162e:	d1f7      	bne.n	d0041620 <midi_player_update_us.part.0+0x98c>
d0041630:	b212      	sxth	r2, r2
d0041632:	4814      	ldr	r0, [pc, #80]	; (d0041684 <midi_player_update_us.part.0+0x9f0>)
d0041634:	f04f 0c01 	mov.w	ip, #1
d0041638:	f89d e01d 	ldrb.w	lr, [sp, #29]
d004163c:	eb06 01c2 	add.w	r1, r6, r2, lsl #3
d0041640:	6803      	ldr	r3, [r0, #0]
d0041642:	9802      	ldr	r0, [sp, #8]
d0041644:	4463      	add	r3, ip
d0041646:	f881 c007 	strb.w	ip, [r1, #7]
d004164a:	7108      	strb	r0, [r1, #4]
d004164c:	9803      	ldr	r0, [sp, #12]
d004164e:	f846 3032 	str.w	r3, [r6, r2, lsl #3]
d0041652:	7148      	strb	r0, [r1, #5]
d0041654:	9801      	ldr	r0, [sp, #4]
d0041656:	7188      	strb	r0, [r1, #6]
d0041658:	480a      	ldr	r0, [pc, #40]	; (d0041684 <midi_player_update_us.part.0+0x9f0>)
d004165a:	6003      	str	r3, [r0, #0]
d004165c:	e6a9      	b.n	d00413b2 <midi_player_update_us.part.0+0x71e>
d004165e:	f7ff fa1d 	bl	d0040a9c <midi_limiter_steal_note>
d0041662:	2800      	cmp	r0, #0
d0041664:	f43f ac94 	beq.w	d0040f90 <midi_player_update_us.part.0+0x2fc>
d0041668:	2200      	movs	r2, #0
d004166a:	e003      	b.n	d0041674 <midi_player_update_us.part.0+0x9e0>
d004166c:	3201      	adds	r2, #1
d004166e:	2a40      	cmp	r2, #64	; 0x40
d0041670:	f43f ac8e 	beq.w	d0040f90 <midi_player_update_us.part.0+0x2fc>
d0041674:	eb06 03c2 	add.w	r3, r6, r2, lsl #3
d0041678:	79db      	ldrb	r3, [r3, #7]
d004167a:	2b00      	cmp	r3, #0
d004167c:	d1f6      	bne.n	d004166c <midi_player_update_us.part.0+0x9d8>
d004167e:	e7d7      	b.n	d0041630 <midi_player_update_us.part.0+0x99c>
d0041680:	d0044fb0 	.word	0xd0044fb0
d0041684:	d00451b0 	.word	0xd00451b0

d0041688 <midi_player_get_duration_ms>:
d0041688:	290d      	cmp	r1, #13
d004168a:	d902      	bls.n	d0041692 <midi_player_get_duration_ms+0xa>
d004168c:	7803      	ldrb	r3, [r0, #0]
d004168e:	2b4d      	cmp	r3, #77	; 0x4d
d0041690:	d001      	beq.n	d0041696 <midi_player_get_duration_ms+0xe>
d0041692:	2000      	movs	r0, #0
d0041694:	4770      	bx	lr
d0041696:	7843      	ldrb	r3, [r0, #1]
d0041698:	1c42      	adds	r2, r0, #1
d004169a:	2b54      	cmp	r3, #84	; 0x54
d004169c:	d1f9      	bne.n	d0041692 <midi_player_get_duration_ms+0xa>
d004169e:	f812 3f01 	ldrb.w	r3, [r2, #1]!
d00416a2:	2b68      	cmp	r3, #104	; 0x68
d00416a4:	d1f5      	bne.n	d0041692 <midi_player_get_duration_ms+0xa>
d00416a6:	7853      	ldrb	r3, [r2, #1]
d00416a8:	2b64      	cmp	r3, #100	; 0x64
d00416aa:	d1f2      	bne.n	d0041692 <midi_player_get_duration_ms+0xa>
d00416ac:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d00416b0:	7943      	ldrb	r3, [r0, #5]
d00416b2:	b083      	sub	sp, #12
d00416b4:	f890 9004 	ldrb.w	r9, [r0, #4]
d00416b8:	7982      	ldrb	r2, [r0, #6]
d00416ba:	ea49 2903 	orr.w	r9, r9, r3, lsl #8
d00416be:	79c3      	ldrb	r3, [r0, #7]
d00416c0:	ea49 4902 	orr.w	r9, r9, r2, lsl #16
d00416c4:	ea49 6903 	orr.w	r9, r9, r3, lsl #24
d00416c8:	fa99 f989 	rev.w	r9, r9
d00416cc:	f1b9 0f05 	cmp.w	r9, #5
d00416d0:	f240 8111 	bls.w	d00418f6 <midi_player_get_duration_ms+0x26e>
d00416d4:	f109 0208 	add.w	r2, r9, #8
d00416d8:	4291      	cmp	r1, r2
d00416da:	f0c0 810c 	bcc.w	d00418f6 <midi_player_get_duration_ms+0x26e>
d00416de:	7b04      	ldrb	r4, [r0, #12]
d00416e0:	7b43      	ldrb	r3, [r0, #13]
d00416e2:	ea43 2304 	orr.w	r3, r3, r4, lsl #8
d00416e6:	b21b      	sxth	r3, r3
d00416e8:	2b00      	cmp	r3, #0
d00416ea:	9301      	str	r3, [sp, #4]
d00416ec:	f340 8103 	ble.w	d00418f6 <midi_player_get_duration_ms+0x26e>
d00416f0:	f109 0910 	add.w	r9, r9, #16
d00416f4:	7a83      	ldrb	r3, [r0, #10]
d00416f6:	f890 a00b 	ldrb.w	sl, [r0, #11]
d00416fa:	4549      	cmp	r1, r9
d00416fc:	ea4a 2a03 	orr.w	sl, sl, r3, lsl #8
d0041700:	f0c0 80f9 	bcc.w	d00418f6 <midi_player_get_duration_ms+0x26e>
d0041704:	f1ba 0f00 	cmp.w	sl, #0
d0041708:	f000 80f5 	beq.w	d00418f6 <midi_player_get_duration_ms+0x26e>
d004170c:	460b      	mov	r3, r1
d004170e:	f04f 0e00 	mov.w	lr, #0
d0041712:	4651      	mov	r1, sl
d0041714:	469a      	mov	sl, r3
d0041716:	e009      	b.n	d004172c <midi_player_get_duration_ms+0xa4>
d0041718:	eb07 0209 	add.w	r2, r7, r9
d004171c:	f102 0908 	add.w	r9, r2, #8
d0041720:	2900      	cmp	r1, #0
d0041722:	f000 80ec 	beq.w	d00418fe <midi_player_get_duration_ms+0x276>
d0041726:	45ca      	cmp	sl, r9
d0041728:	f0c0 80e9 	bcc.w	d00418fe <midi_player_get_duration_ms+0x276>
d004172c:	1883      	adds	r3, r0, r2
d004172e:	ebaa 0409 	sub.w	r4, sl, r9
d0041732:	795d      	ldrb	r5, [r3, #5]
d0041734:	791f      	ldrb	r7, [r3, #4]
d0041736:	ea47 2705 	orr.w	r7, r7, r5, lsl #8
d004173a:	799d      	ldrb	r5, [r3, #6]
d004173c:	ea47 4705 	orr.w	r7, r7, r5, lsl #16
d0041740:	79dd      	ldrb	r5, [r3, #7]
d0041742:	ea47 6705 	orr.w	r7, r7, r5, lsl #24
d0041746:	ba3f      	rev	r7, r7
d0041748:	42a7      	cmp	r7, r4
d004174a:	f200 80d8 	bhi.w	d00418fe <midi_player_get_duration_ms+0x276>
d004174e:	5c82      	ldrb	r2, [r0, r2]
d0041750:	2a4d      	cmp	r2, #77	; 0x4d
d0041752:	d1e1      	bne.n	d0041718 <midi_player_get_duration_ms+0x90>
d0041754:	785a      	ldrb	r2, [r3, #1]
d0041756:	3301      	adds	r3, #1
d0041758:	2a54      	cmp	r2, #84	; 0x54
d004175a:	d1dd      	bne.n	d0041718 <midi_player_get_duration_ms+0x90>
d004175c:	f813 2f01 	ldrb.w	r2, [r3, #1]!
d0041760:	2a72      	cmp	r2, #114	; 0x72
d0041762:	d1d9      	bne.n	d0041718 <midi_player_get_duration_ms+0x90>
d0041764:	785b      	ldrb	r3, [r3, #1]
d0041766:	2b6b      	cmp	r3, #107	; 0x6b
d0041768:	d1d6      	bne.n	d0041718 <midi_player_get_duration_ms+0x90>
d004176a:	eb00 0209 	add.w	r2, r0, r9
d004176e:	19d4      	adds	r4, r2, r7
d0041770:	42a2      	cmp	r2, r4
d0041772:	d22d      	bcs.n	d00417d0 <midi_player_get_duration_ms+0x148>
d0041774:	f04f 0800 	mov.w	r8, #0
d0041778:	4646      	mov	r6, r8
d004177a:	4613      	mov	r3, r2
d004177c:	f813 cb01 	ldrb.w	ip, [r3], #1
d0041780:	f01c 0f80 	tst.w	ip, #128	; 0x80
d0041784:	f00c 057f 	and.w	r5, ip, #127	; 0x7f
d0041788:	d028      	beq.n	d00417dc <midi_player_get_duration_ms+0x154>
d004178a:	429c      	cmp	r4, r3
d004178c:	d91d      	bls.n	d00417ca <midi_player_get_duration_ms+0x142>
d004178e:	f892 c001 	ldrb.w	ip, [r2, #1]
d0041792:	1c93      	adds	r3, r2, #2
d0041794:	f00c 0b7f 	and.w	fp, ip, #127	; 0x7f
d0041798:	f01c 0f80 	tst.w	ip, #128	; 0x80
d004179c:	ea4b 15c5 	orr.w	r5, fp, r5, lsl #7
d00417a0:	d01c      	beq.n	d00417dc <midi_player_get_duration_ms+0x154>
d00417a2:	429c      	cmp	r4, r3
d00417a4:	d911      	bls.n	d00417ca <midi_player_get_duration_ms+0x142>
d00417a6:	f892 c002 	ldrb.w	ip, [r2, #2]
d00417aa:	1cd3      	adds	r3, r2, #3
d00417ac:	f00c 0b7f 	and.w	fp, ip, #127	; 0x7f
d00417b0:	f01c 0f80 	tst.w	ip, #128	; 0x80
d00417b4:	ea4b 15c5 	orr.w	r5, fp, r5, lsl #7
d00417b8:	d010      	beq.n	d00417dc <midi_player_get_duration_ms+0x154>
d00417ba:	429c      	cmp	r4, r3
d00417bc:	d905      	bls.n	d00417ca <midi_player_get_duration_ms+0x142>
d00417be:	f992 3003 	ldrsb.w	r3, [r2, #3]
d00417c2:	f892 c003 	ldrb.w	ip, [r2, #3]
d00417c6:	2b00      	cmp	r3, #0
d00417c8:	da05      	bge.n	d00417d6 <midi_player_get_duration_ms+0x14e>
d00417ca:	45b6      	cmp	lr, r6
d00417cc:	bf38      	it	cc
d00417ce:	46b6      	movcc	lr, r6
d00417d0:	3901      	subs	r1, #1
d00417d2:	b289      	uxth	r1, r1
d00417d4:	e7a0      	b.n	d0041718 <midi_player_get_duration_ms+0x90>
d00417d6:	1d13      	adds	r3, r2, #4
d00417d8:	ea4c 15c5 	orr.w	r5, ip, r5, lsl #7
d00417dc:	429c      	cmp	r4, r3
d00417de:	442e      	add	r6, r5
d00417e0:	d9f3      	bls.n	d00417ca <midi_player_get_duration_ms+0x142>
d00417e2:	f993 5000 	ldrsb.w	r5, [r3]
d00417e6:	781a      	ldrb	r2, [r3, #0]
d00417e8:	2d00      	cmp	r5, #0
d00417ea:	db0f      	blt.n	d004180c <midi_player_get_duration_ms+0x184>
d00417ec:	f1b8 0fff 	cmp.w	r8, #255	; 0xff
d00417f0:	d018      	beq.n	d0041824 <midi_player_get_duration_ms+0x19c>
d00417f2:	f008 02f0 	and.w	r2, r8, #240	; 0xf0
d00417f6:	2af0      	cmp	r2, #240	; 0xf0
d00417f8:	d04e      	beq.n	d0041898 <midi_player_get_duration_ms+0x210>
d00417fa:	f008 02e0 	and.w	r2, r8, #224	; 0xe0
d00417fe:	2ac0      	cmp	r2, #192	; 0xc0
d0041800:	bf0c      	ite	eq
d0041802:	1c5a      	addeq	r2, r3, #1
d0041804:	1c9a      	addne	r2, r3, #2
d0041806:	4294      	cmp	r4, r2
d0041808:	d8b7      	bhi.n	d004177a <midi_player_get_duration_ms+0xf2>
d004180a:	e7de      	b.n	d00417ca <midi_player_get_duration_ms+0x142>
d004180c:	2aff      	cmp	r2, #255	; 0xff
d004180e:	f103 0301 	add.w	r3, r3, #1
d0041812:	d005      	beq.n	d0041820 <midi_player_get_duration_ms+0x198>
d0041814:	f002 05f0 	and.w	r5, r2, #240	; 0xf0
d0041818:	2df0      	cmp	r5, #240	; 0xf0
d004181a:	d03a      	beq.n	d0041892 <midi_player_get_duration_ms+0x20a>
d004181c:	4690      	mov	r8, r2
d004181e:	e7ec      	b.n	d00417fa <midi_player_get_duration_ms+0x172>
d0041820:	429c      	cmp	r4, r3
d0041822:	d9d2      	bls.n	d00417ca <midi_player_get_duration_ms+0x142>
d0041824:	461a      	mov	r2, r3
d0041826:	f812 8b01 	ldrb.w	r8, [r2], #1
d004182a:	4294      	cmp	r4, r2
d004182c:	d9cd      	bls.n	d00417ca <midi_player_get_duration_ms+0x142>
d004182e:	f893 c001 	ldrb.w	ip, [r3, #1]
d0041832:	1c9a      	adds	r2, r3, #2
d0041834:	f01c 0f80 	tst.w	ip, #128	; 0x80
d0041838:	f00c 057f 	and.w	r5, ip, #127	; 0x7f
d004183c:	d022      	beq.n	d0041884 <midi_player_get_duration_ms+0x1fc>
d004183e:	4294      	cmp	r4, r2
d0041840:	d9c3      	bls.n	d00417ca <midi_player_get_duration_ms+0x142>
d0041842:	f893 c002 	ldrb.w	ip, [r3, #2]
d0041846:	1cda      	adds	r2, r3, #3
d0041848:	f00c 0b7f 	and.w	fp, ip, #127	; 0x7f
d004184c:	f01c 0f80 	tst.w	ip, #128	; 0x80
d0041850:	ea4b 15c5 	orr.w	r5, fp, r5, lsl #7
d0041854:	d016      	beq.n	d0041884 <midi_player_get_duration_ms+0x1fc>
d0041856:	4294      	cmp	r4, r2
d0041858:	d9b7      	bls.n	d00417ca <midi_player_get_duration_ms+0x142>
d004185a:	f893 c003 	ldrb.w	ip, [r3, #3]
d004185e:	1d1a      	adds	r2, r3, #4
d0041860:	f00c 0b7f 	and.w	fp, ip, #127	; 0x7f
d0041864:	f01c 0f80 	tst.w	ip, #128	; 0x80
d0041868:	ea4b 15c5 	orr.w	r5, fp, r5, lsl #7
d004186c:	d00a      	beq.n	d0041884 <midi_player_get_duration_ms+0x1fc>
d004186e:	4294      	cmp	r4, r2
d0041870:	d9ab      	bls.n	d00417ca <midi_player_get_duration_ms+0x142>
d0041872:	f993 2004 	ldrsb.w	r2, [r3, #4]
d0041876:	f893 c004 	ldrb.w	ip, [r3, #4]
d004187a:	2a00      	cmp	r2, #0
d004187c:	dba5      	blt.n	d00417ca <midi_player_get_duration_ms+0x142>
d004187e:	1d5a      	adds	r2, r3, #5
d0041880:	ea4c 15c5 	orr.w	r5, ip, r5, lsl #7
d0041884:	f1b8 0f2f 	cmp.w	r8, #47	; 0x2f
d0041888:	d09f      	beq.n	d00417ca <midi_player_get_duration_ms+0x142>
d004188a:	442a      	add	r2, r5
d004188c:	f04f 08ff 	mov.w	r8, #255	; 0xff
d0041890:	e7b9      	b.n	d0041806 <midi_player_get_duration_ms+0x17e>
d0041892:	429c      	cmp	r4, r3
d0041894:	d999      	bls.n	d00417ca <midi_player_get_duration_ms+0x142>
d0041896:	4690      	mov	r8, r2
d0041898:	461a      	mov	r2, r3
d004189a:	f812 cb01 	ldrb.w	ip, [r2], #1
d004189e:	f01c 0f80 	tst.w	ip, #128	; 0x80
d00418a2:	f00c 057f 	and.w	r5, ip, #127	; 0x7f
d00418a6:	d024      	beq.n	d00418f2 <midi_player_get_duration_ms+0x26a>
d00418a8:	4294      	cmp	r4, r2
d00418aa:	d98e      	bls.n	d00417ca <midi_player_get_duration_ms+0x142>
d00418ac:	f893 c001 	ldrb.w	ip, [r3, #1]
d00418b0:	1c9a      	adds	r2, r3, #2
d00418b2:	f00c 0b7f 	and.w	fp, ip, #127	; 0x7f
d00418b6:	f01c 0f80 	tst.w	ip, #128	; 0x80
d00418ba:	ea4b 15c5 	orr.w	r5, fp, r5, lsl #7
d00418be:	d018      	beq.n	d00418f2 <midi_player_get_duration_ms+0x26a>
d00418c0:	4294      	cmp	r4, r2
d00418c2:	d982      	bls.n	d00417ca <midi_player_get_duration_ms+0x142>
d00418c4:	f893 c002 	ldrb.w	ip, [r3, #2]
d00418c8:	1cda      	adds	r2, r3, #3
d00418ca:	f00c 0b7f 	and.w	fp, ip, #127	; 0x7f
d00418ce:	f01c 0f80 	tst.w	ip, #128	; 0x80
d00418d2:	ea4b 15c5 	orr.w	r5, fp, r5, lsl #7
d00418d6:	d00c      	beq.n	d00418f2 <midi_player_get_duration_ms+0x26a>
d00418d8:	4294      	cmp	r4, r2
d00418da:	f67f af76 	bls.w	d00417ca <midi_player_get_duration_ms+0x142>
d00418de:	f993 2003 	ldrsb.w	r2, [r3, #3]
d00418e2:	f893 c003 	ldrb.w	ip, [r3, #3]
d00418e6:	2a00      	cmp	r2, #0
d00418e8:	f6ff af6f 	blt.w	d00417ca <midi_player_get_duration_ms+0x142>
d00418ec:	1d1a      	adds	r2, r3, #4
d00418ee:	ea4c 15c5 	orr.w	r5, ip, r5, lsl #7
d00418f2:	442a      	add	r2, r5
d00418f4:	e787      	b.n	d0041806 <midi_player_get_duration_ms+0x17e>
d00418f6:	2000      	movs	r0, #0
d00418f8:	b003      	add	sp, #12
d00418fa:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d00418fe:	f44f 70fa 	mov.w	r0, #500	; 0x1f4
d0041902:	9b01      	ldr	r3, [sp, #4]
d0041904:	fb00 f00e 	mul.w	r0, r0, lr
d0041908:	fbb0 f0f3 	udiv	r0, r0, r3
d004190c:	b003      	add	sp, #12
d004190e:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0041912:	bf00      	nop

d0041914 <midi_player_init>:
d0041914:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0041918:	4616      	mov	r6, r2
d004191a:	b083      	sub	sp, #12
d004191c:	f44f 7294 	mov.w	r2, #296	; 0x128
d0041920:	460c      	mov	r4, r1
d0041922:	2100      	movs	r1, #0
d0041924:	4605      	mov	r5, r0
d0041926:	f001 fcbb 	bl	d00432a0 <memset>
d004192a:	2201      	movs	r2, #1
d004192c:	4b6e      	ldr	r3, [pc, #440]	; (d0041ae8 <midi_player_init+0x1d4>)
d004192e:	2e0d      	cmp	r6, #13
d0041930:	f885 2101 	strb.w	r2, [r5, #257]	; 0x101
d0041934:	f8c5 3114 	str.w	r3, [r5, #276]	; 0x114
d0041938:	d902      	bls.n	d0041940 <midi_player_init+0x2c>
d004193a:	7823      	ldrb	r3, [r4, #0]
d004193c:	2b4d      	cmp	r3, #77	; 0x4d
d004193e:	d002      	beq.n	d0041946 <midi_player_init+0x32>
d0041940:	b003      	add	sp, #12
d0041942:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0041946:	7863      	ldrb	r3, [r4, #1]
d0041948:	18a2      	adds	r2, r4, r2
d004194a:	2b54      	cmp	r3, #84	; 0x54
d004194c:	d1f8      	bne.n	d0041940 <midi_player_init+0x2c>
d004194e:	f812 3f01 	ldrb.w	r3, [r2, #1]!
d0041952:	2b68      	cmp	r3, #104	; 0x68
d0041954:	d1f4      	bne.n	d0041940 <midi_player_init+0x2c>
d0041956:	7853      	ldrb	r3, [r2, #1]
d0041958:	2b64      	cmp	r3, #100	; 0x64
d004195a:	d1f1      	bne.n	d0041940 <midi_player_init+0x2c>
d004195c:	7963      	ldrb	r3, [r4, #5]
d004195e:	7922      	ldrb	r2, [r4, #4]
d0041960:	79a1      	ldrb	r1, [r4, #6]
d0041962:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
d0041966:	79e3      	ldrb	r3, [r4, #7]
d0041968:	ea42 4201 	orr.w	r2, r2, r1, lsl #16
d004196c:	ea42 6203 	orr.w	r2, r2, r3, lsl #24
d0041970:	ba12      	rev	r2, r2
d0041972:	2a05      	cmp	r2, #5
d0041974:	d9e4      	bls.n	d0041940 <midi_player_init+0x2c>
d0041976:	f102 0708 	add.w	r7, r2, #8
d004197a:	42be      	cmp	r6, r7
d004197c:	d3e0      	bcc.n	d0041940 <midi_player_init+0x2c>
d004197e:	7a21      	ldrb	r1, [r4, #8]
d0041980:	7a63      	ldrb	r3, [r4, #9]
d0041982:	ea43 2301 	orr.w	r3, r3, r1, lsl #8
d0041986:	f8a5 3102 	strh.w	r3, [r5, #258]	; 0x102
d004198a:	7b21      	ldrb	r1, [r4, #12]
d004198c:	7b63      	ldrb	r3, [r4, #13]
d004198e:	f894 c00a 	ldrb.w	ip, [r4, #10]
d0041992:	ea43 2301 	orr.w	r3, r3, r1, lsl #8
d0041996:	7ae1      	ldrb	r1, [r4, #11]
d0041998:	b21b      	sxth	r3, r3
d004199a:	2b00      	cmp	r3, #0
d004199c:	f8a5 3104 	strh.w	r3, [r5, #260]	; 0x104
d00419a0:	ddce      	ble.n	d0041940 <midi_player_init+0x2c>
d00419a2:	3210      	adds	r2, #16
d00419a4:	2000      	movs	r0, #0
d00419a6:	4296      	cmp	r6, r2
d00419a8:	f0c0 8097 	bcc.w	d0041ada <midi_player_init+0x1c6>
d00419ac:	ea41 2a0c 	orr.w	sl, r1, ip, lsl #8
d00419b0:	e008      	b.n	d00419c4 <midi_player_init+0xb0>
d00419b2:	18d7      	adds	r7, r2, r3
d00419b4:	f107 0208 	add.w	r2, r7, #8
d00419b8:	4296      	cmp	r6, r2
d00419ba:	f0c0 808b 	bcc.w	d0041ad4 <midi_player_init+0x1c0>
d00419be:	280f      	cmp	r0, #15
d00419c0:	f200 8090 	bhi.w	d0041ae4 <midi_player_init+0x1d0>
d00419c4:	4582      	cmp	sl, r0
d00419c6:	f240 8085 	bls.w	d0041ad4 <midi_player_init+0x1c0>
d00419ca:	19e1      	adds	r1, r4, r7
d00419cc:	eba6 0c02 	sub.w	ip, r6, r2
d00419d0:	f891 e005 	ldrb.w	lr, [r1, #5]
d00419d4:	790b      	ldrb	r3, [r1, #4]
d00419d6:	ea43 230e 	orr.w	r3, r3, lr, lsl #8
d00419da:	f891 e006 	ldrb.w	lr, [r1, #6]
d00419de:	ea43 430e 	orr.w	r3, r3, lr, lsl #16
d00419e2:	f891 e007 	ldrb.w	lr, [r1, #7]
d00419e6:	ea43 630e 	orr.w	r3, r3, lr, lsl #24
d00419ea:	ba1b      	rev	r3, r3
d00419ec:	4563      	cmp	r3, ip
d00419ee:	d871      	bhi.n	d0041ad4 <midi_player_init+0x1c0>
d00419f0:	5de7      	ldrb	r7, [r4, r7]
d00419f2:	2f4d      	cmp	r7, #77	; 0x4d
d00419f4:	d1dd      	bne.n	d00419b2 <midi_player_init+0x9e>
d00419f6:	784f      	ldrb	r7, [r1, #1]
d00419f8:	3101      	adds	r1, #1
d00419fa:	2f54      	cmp	r7, #84	; 0x54
d00419fc:	d1d9      	bne.n	d00419b2 <midi_player_init+0x9e>
d00419fe:	f811 7f01 	ldrb.w	r7, [r1, #1]!
d0041a02:	2f72      	cmp	r7, #114	; 0x72
d0041a04:	d1d5      	bne.n	d00419b2 <midi_player_init+0x9e>
d0041a06:	7849      	ldrb	r1, [r1, #1]
d0041a08:	296b      	cmp	r1, #107	; 0x6b
d0041a0a:	d1d2      	bne.n	d00419b2 <midi_player_init+0x9e>
d0041a0c:	0107      	lsls	r7, r0, #4
d0041a0e:	eb04 0802 	add.w	r8, r4, r2
d0041a12:	eb05 1b00 	add.w	fp, r5, r0, lsl #4
d0041a16:	2100      	movs	r1, #0
d0041a18:	f845 8007 	str.w	r8, [r5, r7]
d0041a1c:	eb08 0e03 	add.w	lr, r8, r3
d0041a20:	f8cb 1008 	str.w	r1, [fp, #8]
d0041a24:	f44f 7180 	mov.w	r1, #256	; 0x100
d0041a28:	f8cb e004 	str.w	lr, [fp, #4]
d0041a2c:	4681      	mov	r9, r0
d0041a2e:	f8ab 100c 	strh.w	r1, [fp, #12]
d0041a32:	46f4      	mov	ip, lr
d0041a34:	59e9      	ldr	r1, [r5, r7]
d0041a36:	9701      	str	r7, [sp, #4]
d0041a38:	4571      	cmp	r1, lr
d0041a3a:	d235      	bcs.n	d0041aa8 <midi_player_init+0x194>
d0041a3c:	f101 0801 	add.w	r8, r1, #1
d0041a40:	f845 8007 	str.w	r8, [r5, r7]
d0041a44:	f891 e000 	ldrb.w	lr, [r1]
d0041a48:	f01e 0f80 	tst.w	lr, #128	; 0x80
d0041a4c:	f00e 007f 	and.w	r0, lr, #127	; 0x7f
d0041a50:	d033      	beq.n	d0041aba <midi_player_init+0x1a6>
d0041a52:	45c4      	cmp	ip, r8
d0041a54:	d926      	bls.n	d0041aa4 <midi_player_init+0x190>
d0041a56:	f101 0802 	add.w	r8, r1, #2
d0041a5a:	f845 8007 	str.w	r8, [r5, r7]
d0041a5e:	f891 e001 	ldrb.w	lr, [r1, #1]
d0041a62:	f00e 0b7f 	and.w	fp, lr, #127	; 0x7f
d0041a66:	f01e 0f80 	tst.w	lr, #128	; 0x80
d0041a6a:	ea4b 10c0 	orr.w	r0, fp, r0, lsl #7
d0041a6e:	d024      	beq.n	d0041aba <midi_player_init+0x1a6>
d0041a70:	45c4      	cmp	ip, r8
d0041a72:	d917      	bls.n	d0041aa4 <midi_player_init+0x190>
d0041a74:	f101 0803 	add.w	r8, r1, #3
d0041a78:	f845 8007 	str.w	r8, [r5, r7]
d0041a7c:	f891 e002 	ldrb.w	lr, [r1, #2]
d0041a80:	f00e 0b7f 	and.w	fp, lr, #127	; 0x7f
d0041a84:	f01e 0f80 	tst.w	lr, #128	; 0x80
d0041a88:	ea4b 10c0 	orr.w	r0, fp, r0, lsl #7
d0041a8c:	d015      	beq.n	d0041aba <midi_player_init+0x1a6>
d0041a8e:	45c4      	cmp	ip, r8
d0041a90:	d908      	bls.n	d0041aa4 <midi_player_init+0x190>
d0041a92:	f101 0c04 	add.w	ip, r1, #4
d0041a96:	f845 c007 	str.w	ip, [r5, r7]
d0041a9a:	f991 7003 	ldrsb.w	r7, [r1, #3]
d0041a9e:	78c9      	ldrb	r1, [r1, #3]
d0041aa0:	2f00      	cmp	r7, #0
d0041aa2:	da08      	bge.n	d0041ab6 <midi_player_init+0x1a2>
d0041aa4:	f895 0100 	ldrb.w	r0, [r5, #256]	; 0x100
d0041aa8:	eb05 1909 	add.w	r9, r5, r9, lsl #4
d0041aac:	f04f 0100 	mov.w	r1, #0
d0041ab0:	f889 100d 	strb.w	r1, [r9, #13]
d0041ab4:	e77d      	b.n	d00419b2 <midi_player_init+0x9e>
d0041ab6:	ea41 10c0 	orr.w	r0, r1, r0, lsl #7
d0041aba:	9901      	ldr	r1, [sp, #4]
d0041abc:	4429      	add	r1, r5
d0041abe:	460f      	mov	r7, r1
d0041ac0:	6889      	ldr	r1, [r1, #8]
d0041ac2:	4408      	add	r0, r1
d0041ac4:	60b8      	str	r0, [r7, #8]
d0041ac6:	f895 0100 	ldrb.w	r0, [r5, #256]	; 0x100
d0041aca:	3001      	adds	r0, #1
d0041acc:	b2c0      	uxtb	r0, r0
d0041ace:	f885 0100 	strb.w	r0, [r5, #256]	; 0x100
d0041ad2:	e76e      	b.n	d00419b2 <midi_player_init+0x9e>
d0041ad4:	3800      	subs	r0, #0
d0041ad6:	bf18      	it	ne
d0041ad8:	2001      	movne	r0, #1
d0041ada:	f885 0120 	strb.w	r0, [r5, #288]	; 0x120
d0041ade:	b003      	add	sp, #12
d0041ae0:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0041ae4:	2001      	movs	r0, #1
d0041ae6:	e7f8      	b.n	d0041ada <midi_player_init+0x1c6>
d0041ae8:	0007a120 	.word	0x0007a120

d0041aec <setup>:
d0041aec:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0041af0:	4607      	mov	r7, r0
d0041af2:	b085      	sub	sp, #20
d0041af4:	4688      	mov	r8, r1
d0041af6:	4616      	mov	r6, r2
d0041af8:	2100      	movs	r1, #0
d0041afa:	f44f 6240 	mov.w	r2, #3072	; 0xc00
d0041afe:	48b2      	ldr	r0, [pc, #712]	; (d0041dc8 <setup+0x2dc>)
d0041b00:	f001 fbce 	bl	d00432a0 <memset>
d0041b04:	4cb1      	ldr	r4, [pc, #708]	; (d0041dcc <setup+0x2e0>)
d0041b06:	2100      	movs	r1, #0
d0041b08:	4bb1      	ldr	r3, [pc, #708]	; (d0041dd0 <setup+0x2e4>)
d0041b0a:	f8df c2e0 	ldr.w	ip, [pc, #736]	; d0041dec <setup+0x300>
d0041b0e:	f44f 5248 	mov.w	r2, #12800	; 0x3200
d0041b12:	7019      	strb	r1, [r3, #0]
d0041b14:	4608      	mov	r0, r1
d0041b16:	7b23      	ldrb	r3, [r4, #12]
d0041b18:	7b65      	ldrb	r5, [r4, #13]
d0041b1a:	f8cc 1000 	str.w	r1, [ip]
d0041b1e:	ea43 2305 	orr.w	r3, r3, r5, lsl #8
d0041b22:	7ba5      	ldrb	r5, [r4, #14]
d0041b24:	f8df c2c8 	ldr.w	ip, [pc, #712]	; d0041df0 <setup+0x304>
d0041b28:	ea43 4305 	orr.w	r3, r3, r5, lsl #16
d0041b2c:	7be5      	ldrb	r5, [r4, #15]
d0041b2e:	f8cc 1000 	str.w	r1, [ip]
d0041b32:	ea43 6305 	orr.w	r3, r3, r5, lsl #24
d0041b36:	f8df c2bc 	ldr.w	ip, [pc, #700]	; d0041df4 <setup+0x308>
d0041b3a:	4da6      	ldr	r5, [pc, #664]	; (d0041dd4 <setup+0x2e8>)
d0041b3c:	681b      	ldr	r3, [r3, #0]
d0041b3e:	f8cc 2000 	str.w	r2, [ip]
d0041b42:	6b1b      	ldr	r3, [r3, #48]	; 0x30
d0041b44:	4798      	blx	r3
d0041b46:	4642      	mov	r2, r8
d0041b48:	4639      	mov	r1, r7
d0041b4a:	4628      	mov	r0, r5
d0041b4c:	f7ff fee2 	bl	d0041914 <midi_player_init>
d0041b50:	f885 6101 	strb.w	r6, [r5, #257]	; 0x101
d0041b54:	b9a6      	cbnz	r6, d0041b80 <setup+0x94>
d0041b56:	7d23      	ldrb	r3, [r4, #20]
d0041b58:	7d62      	ldrb	r2, [r4, #21]
d0041b5a:	7da1      	ldrb	r1, [r4, #22]
d0041b5c:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0041b60:	7de4      	ldrb	r4, [r4, #23]
d0041b62:	4a9d      	ldr	r2, [pc, #628]	; (d0041dd8 <setup+0x2ec>)
d0041b64:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0041b68:	e892 0003 	ldmia.w	r2, {r0, r1}
d0041b6c:	ea43 6304 	orr.w	r3, r3, r4, lsl #24
d0041b70:	9002      	str	r0, [sp, #8]
d0041b72:	a802      	add	r0, sp, #8
d0041b74:	f8ad 100c 	strh.w	r1, [sp, #12]
d0041b78:	2106      	movs	r1, #6
d0041b7a:	681b      	ldr	r3, [r3, #0]
d0041b7c:	695b      	ldr	r3, [r3, #20]
d0041b7e:	4798      	blx	r3
d0041b80:	f7fe fcca 	bl	d0040518 <midi_send_channel_panic>
d0041b84:	f895 8101 	ldrb.w	r8, [r5, #257]	; 0x101
d0041b88:	f1b8 0f01 	cmp.w	r8, #1
d0041b8c:	d009      	beq.n	d0041ba2 <setup+0xb6>
d0041b8e:	f895 3120 	ldrb.w	r3, [r5, #288]	; 0x120
d0041b92:	b11b      	cbz	r3, d0041b9c <setup+0xb0>
d0041b94:	2100      	movs	r1, #0
d0041b96:	488f      	ldr	r0, [pc, #572]	; (d0041dd4 <setup+0x2e8>)
d0041b98:	f7ff f87c 	bl	d0040c94 <midi_player_update_us.part.0>
d0041b9c:	b005      	add	sp, #20
d0041b9e:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0041ba2:	4f8e      	ldr	r7, [pc, #568]	; (d0041ddc <setup+0x2f0>)
d0041ba4:	f04f 0c00 	mov.w	ip, #0
d0041ba8:	488d      	ldr	r0, [pc, #564]	; (d0041de0 <setup+0x2f4>)
d0041baa:	f04f 0940 	mov.w	r9, #64	; 0x40
d0041bae:	8839      	ldrh	r1, [r7, #0]
d0041bb0:	46e6      	mov	lr, ip
d0041bb2:	4a8c      	ldr	r2, [pc, #560]	; (d0041de4 <setup+0x2f8>)
d0041bb4:	f8cd 8004 	str.w	r8, [sp, #4]
d0041bb8:	f5c1 6380 	rsb	r3, r1, #1024	; 0x400
d0041bbc:	b29b      	uxth	r3, r3
d0041bbe:	2b02      	cmp	r3, #2
d0041bc0:	f240 80b7 	bls.w	d0041d32 <setup+0x246>
d0041bc4:	f8b0 a000 	ldrh.w	sl, [r0]
d0041bc8:	f04c 06b0 	orr.w	r6, ip, #176	; 0xb0
d0041bcc:	1ccc      	adds	r4, r1, #3
d0041bce:	f04f 0879 	mov.w	r8, #121	; 0x79
d0041bd2:	f10a 0301 	add.w	r3, sl, #1
d0041bd6:	f802 600a 	strb.w	r6, [r2, sl]
d0041bda:	b2a4      	uxth	r4, r4
d0041bdc:	f3c3 0a09 	ubfx	sl, r3, #0, #10
d0041be0:	f5c4 6380 	rsb	r3, r4, #1024	; 0x400
d0041be4:	803c      	strh	r4, [r7, #0]
d0041be6:	f10a 0b01 	add.w	fp, sl, #1
d0041bea:	f802 800a 	strb.w	r8, [r2, sl]
d0041bee:	b29b      	uxth	r3, r3
d0041bf0:	f3cb 0b09 	ubfx	fp, fp, #0, #10
d0041bf4:	2b02      	cmp	r3, #2
d0041bf6:	f10b 0a01 	add.w	sl, fp, #1
d0041bfa:	f802 e00b 	strb.w	lr, [r2, fp]
d0041bfe:	f3ca 0a09 	ubfx	sl, sl, #0, #10
d0041c02:	f8a0 a000 	strh.w	sl, [r0]
d0041c06:	f240 80dc 	bls.w	d0041dc2 <setup+0x2d6>
d0041c0a:	f10a 0301 	add.w	r3, sl, #1
d0041c0e:	1d8c      	adds	r4, r1, #6
d0041c10:	f802 600a 	strb.w	r6, [r2, sl]
d0041c14:	f3c3 0309 	ubfx	r3, r3, #0, #10
d0041c18:	fa1f f884 	uxth.w	r8, r4
d0041c1c:	9c01      	ldr	r4, [sp, #4]
d0041c1e:	f103 0b01 	add.w	fp, r3, #1
d0041c22:	f8a7 8000 	strh.w	r8, [r7]
d0041c26:	54d4      	strb	r4, [r2, r3]
d0041c28:	f5c8 6380 	rsb	r3, r8, #1024	; 0x400
d0041c2c:	f3cb 0b09 	ubfx	fp, fp, #0, #10
d0041c30:	b29b      	uxth	r3, r3
d0041c32:	f10b 0a01 	add.w	sl, fp, #1
d0041c36:	f802 e00b 	strb.w	lr, [r2, fp]
d0041c3a:	2b02      	cmp	r3, #2
d0041c3c:	f3ca 0a09 	ubfx	sl, sl, #0, #10
d0041c40:	f8a0 a000 	strh.w	sl, [r0]
d0041c44:	f240 80bb 	bls.w	d0041dbe <setup+0x2d2>
d0041c48:	f10a 0301 	add.w	r3, sl, #1
d0041c4c:	f101 0409 	add.w	r4, r1, #9
d0041c50:	f04f 0807 	mov.w	r8, #7
d0041c54:	f802 600a 	strb.w	r6, [r2, sl]
d0041c58:	f3c3 0309 	ubfx	r3, r3, #0, #10
d0041c5c:	b2a4      	uxth	r4, r4
d0041c5e:	f103 0b01 	add.w	fp, r3, #1
d0041c62:	f802 8003 	strb.w	r8, [r2, r3]
d0041c66:	f5c4 6380 	rsb	r3, r4, #1024	; 0x400
d0041c6a:	f04f 086f 	mov.w	r8, #111	; 0x6f
d0041c6e:	f3cb 0b09 	ubfx	fp, fp, #0, #10
d0041c72:	803c      	strh	r4, [r7, #0]
d0041c74:	b29b      	uxth	r3, r3
d0041c76:	f10b 0a01 	add.w	sl, fp, #1
d0041c7a:	f802 800b 	strb.w	r8, [r2, fp]
d0041c7e:	2b02      	cmp	r3, #2
d0041c80:	f3ca 0a09 	ubfx	sl, sl, #0, #10
d0041c84:	f8a0 a000 	strh.w	sl, [r0]
d0041c88:	f240 809b 	bls.w	d0041dc2 <setup+0x2d6>
d0041c8c:	f10a 0301 	add.w	r3, sl, #1
d0041c90:	f101 040c 	add.w	r4, r1, #12
d0041c94:	f04f 080a 	mov.w	r8, #10
d0041c98:	f802 600a 	strb.w	r6, [r2, sl]
d0041c9c:	f3c3 0309 	ubfx	r3, r3, #0, #10
d0041ca0:	b2a4      	uxth	r4, r4
d0041ca2:	f103 0b01 	add.w	fp, r3, #1
d0041ca6:	f802 8003 	strb.w	r8, [r2, r3]
d0041caa:	f5c4 6380 	rsb	r3, r4, #1024	; 0x400
d0041cae:	803c      	strh	r4, [r7, #0]
d0041cb0:	f3cb 0b09 	ubfx	fp, fp, #0, #10
d0041cb4:	b29b      	uxth	r3, r3
d0041cb6:	f10b 0a01 	add.w	sl, fp, #1
d0041cba:	f802 900b 	strb.w	r9, [r2, fp]
d0041cbe:	2b02      	cmp	r3, #2
d0041cc0:	f3ca 0a09 	ubfx	sl, sl, #0, #10
d0041cc4:	f8a0 a000 	strh.w	sl, [r0]
d0041cc8:	d97b      	bls.n	d0041dc2 <setup+0x2d6>
d0041cca:	f10a 0301 	add.w	r3, sl, #1
d0041cce:	f101 040f 	add.w	r4, r1, #15
d0041cd2:	f802 600a 	strb.w	r6, [r2, sl]
d0041cd6:	f3c3 0309 	ubfx	r3, r3, #0, #10
d0041cda:	b2a4      	uxth	r4, r4
d0041cdc:	f103 0b01 	add.w	fp, r3, #1
d0041ce0:	f802 9003 	strb.w	r9, [r2, r3]
d0041ce4:	f5c4 6380 	rsb	r3, r4, #1024	; 0x400
d0041ce8:	803c      	strh	r4, [r7, #0]
d0041cea:	f3cb 0b09 	ubfx	fp, fp, #0, #10
d0041cee:	b29b      	uxth	r3, r3
d0041cf0:	f10b 0a01 	add.w	sl, fp, #1
d0041cf4:	f802 e00b 	strb.w	lr, [r2, fp]
d0041cf8:	2b02      	cmp	r3, #2
d0041cfa:	f3ca 0a09 	ubfx	sl, sl, #0, #10
d0041cfe:	f8a0 a000 	strh.w	sl, [r0]
d0041d02:	d95e      	bls.n	d0041dc2 <setup+0x2d6>
d0041d04:	f10a 0301 	add.w	r3, sl, #1
d0041d08:	3112      	adds	r1, #18
d0041d0a:	f802 600a 	strb.w	r6, [r2, sl]
d0041d0e:	267b      	movs	r6, #123	; 0x7b
d0041d10:	f3c3 0309 	ubfx	r3, r3, #0, #10
d0041d14:	b289      	uxth	r1, r1
d0041d16:	1c5c      	adds	r4, r3, #1
d0041d18:	54d6      	strb	r6, [r2, r3]
d0041d1a:	f5c1 6380 	rsb	r3, r1, #1024	; 0x400
d0041d1e:	8039      	strh	r1, [r7, #0]
d0041d20:	f3c4 0409 	ubfx	r4, r4, #0, #10
d0041d24:	b29b      	uxth	r3, r3
d0041d26:	1c66      	adds	r6, r4, #1
d0041d28:	f802 e004 	strb.w	lr, [r2, r4]
d0041d2c:	f3c6 0409 	ubfx	r4, r6, #0, #10
d0041d30:	8004      	strh	r4, [r0, #0]
d0041d32:	f10c 0c01 	add.w	ip, ip, #1
d0041d36:	fa5f fc8c 	uxtb.w	ip, ip
d0041d3a:	f1bc 0f10 	cmp.w	ip, #16
d0041d3e:	f47f af3b 	bne.w	d0041bb8 <setup+0xcc>
d0041d42:	4a29      	ldr	r2, [pc, #164]	; (d0041de8 <setup+0x2fc>)
d0041d44:	2b01      	cmp	r3, #1
d0041d46:	6812      	ldr	r2, [r2, #0]
d0041d48:	ea4f 4012 	mov.w	r0, r2, lsr #16
d0041d4c:	f8ad 2008 	strh.w	r2, [sp, #8]
d0041d50:	f88d 000a 	strb.w	r0, [sp, #10]
d0041d54:	f67f af1b 	bls.w	d0041b8e <setup+0xa2>
d0041d58:	4821      	ldr	r0, [pc, #132]	; (d0041de0 <setup+0x2f4>)
d0041d5a:	1c8b      	adds	r3, r1, #2
d0041d5c:	4a21      	ldr	r2, [pc, #132]	; (d0041de4 <setup+0x2f8>)
d0041d5e:	f04f 0cc9 	mov.w	ip, #201	; 0xc9
d0041d62:	8806      	ldrh	r6, [r0, #0]
d0041d64:	b29b      	uxth	r3, r3
d0041d66:	1c74      	adds	r4, r6, #1
d0041d68:	803b      	strh	r3, [r7, #0]
d0041d6a:	f5c3 6380 	rsb	r3, r3, #1024	; 0x400
d0041d6e:	f802 c006 	strb.w	ip, [r2, r6]
d0041d72:	f3c4 0409 	ubfx	r4, r4, #0, #10
d0041d76:	2663      	movs	r6, #99	; 0x63
d0041d78:	b29b      	uxth	r3, r3
d0041d7a:	f104 0e01 	add.w	lr, r4, #1
d0041d7e:	5516      	strb	r6, [r2, r4]
d0041d80:	2b02      	cmp	r3, #2
d0041d82:	f3ce 0e09 	ubfx	lr, lr, #0, #10
d0041d86:	f8a0 e000 	strh.w	lr, [r0]
d0041d8a:	f67f af00 	bls.w	d0041b8e <setup+0xa2>
d0041d8e:	fa1f f48e 	uxth.w	r4, lr
d0041d92:	3105      	adds	r1, #5
d0041d94:	f89d 6008 	ldrb.w	r6, [sp, #8]
d0041d98:	1c63      	adds	r3, r4, #1
d0041d9a:	8039      	strh	r1, [r7, #0]
d0041d9c:	5516      	strb	r6, [r2, r4]
d0041d9e:	f3c3 0109 	ubfx	r1, r3, #0, #10
d0041da2:	f89d 6009 	ldrb.w	r6, [sp, #9]
d0041da6:	f89d 400a 	ldrb.w	r4, [sp, #10]
d0041daa:	1c4b      	adds	r3, r1, #1
d0041dac:	5456      	strb	r6, [r2, r1]
d0041dae:	f3c3 0309 	ubfx	r3, r3, #0, #10
d0041db2:	1c59      	adds	r1, r3, #1
d0041db4:	54d4      	strb	r4, [r2, r3]
d0041db6:	f3c1 0309 	ubfx	r3, r1, #0, #10
d0041dba:	8003      	strh	r3, [r0, #0]
d0041dbc:	e6e7      	b.n	d0041b8e <setup+0xa2>
d0041dbe:	4641      	mov	r1, r8
d0041dc0:	e7b7      	b.n	d0041d32 <setup+0x246>
d0041dc2:	4621      	mov	r1, r4
d0041dc4:	e7b5      	b.n	d0041d32 <setup+0x246>
d0041dc6:	bf00      	nop
d0041dc8:	d00455c8 	.word	0xd00455c8
d0041dcc:	2001f000 	.word	0x2001f000
d0041dd0:	d00461cc 	.word	0xd00461cc
d0041dd4:	d00461e0 	.word	0xd00461e0
d0041dd8:	d0044840 	.word	0xd0044840
d0041ddc:	d00451b4 	.word	0xd00451b4
d0041de0:	d00451b6 	.word	0xd00451b6
d0041de4:	d00451b8 	.word	0xd00451b8
d0041de8:	d0044848 	.word	0xd0044848
d0041dec:	d00455c0 	.word	0xd00455c0
d0041df0:	d00461c8 	.word	0xd00461c8
d0041df4:	d00455c4 	.word	0xd00455c4

d0041df8 <main>:
d0041df8:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0041dfc:	4cbe      	ldr	r4, [pc, #760]	; (d00420f8 <main+0x300>)
d0041dfe:	468a      	mov	sl, r1
d0041e00:	4680      	mov	r8, r0
d0041e02:	2000      	movs	r0, #0
d0041e04:	7823      	ldrb	r3, [r4, #0]
d0041e06:	4625      	mov	r5, r4
d0041e08:	7862      	ldrb	r2, [r4, #1]
d0041e0a:	78a1      	ldrb	r1, [r4, #2]
d0041e0c:	462e      	mov	r6, r5
d0041e0e:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0041e12:	78e2      	ldrb	r2, [r4, #3]
d0041e14:	f8df 9308 	ldr.w	r9, [pc, #776]	; d0042120 <main+0x328>
d0041e18:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0041e1c:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0041e20:	ed2d 8b02 	vpush	{d8}
d0041e24:	681b      	ldr	r3, [r3, #0]
d0041e26:	b0a5      	sub	sp, #148	; 0x94
d0041e28:	4798      	blx	r3
d0041e2a:	7923      	ldrb	r3, [r4, #4]
d0041e2c:	7962      	ldrb	r2, [r4, #5]
d0041e2e:	79a1      	ldrb	r1, [r4, #6]
d0041e30:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0041e34:	79e2      	ldrb	r2, [r4, #7]
d0041e36:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0041e3a:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0041e3e:	689b      	ldr	r3, [r3, #8]
d0041e40:	4798      	blx	r3
d0041e42:	f7fe f8fb 	bl	d004003c <initMalloc>
d0041e46:	7b23      	ldrb	r3, [r4, #12]
d0041e48:	7b62      	ldrb	r2, [r4, #13]
d0041e4a:	2190      	movs	r1, #144	; 0x90
d0041e4c:	7ba4      	ldrb	r4, [r4, #14]
d0041e4e:	20dc      	movs	r0, #220	; 0xdc
d0041e50:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0041e54:	7bea      	ldrb	r2, [r5, #15]
d0041e56:	ea43 4304 	orr.w	r3, r3, r4, lsl #16
d0041e5a:	2406      	movs	r4, #6
d0041e5c:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0041e60:	681b      	ldr	r3, [r3, #0]
d0041e62:	691b      	ldr	r3, [r3, #16]
d0041e64:	4798      	blx	r3
d0041e66:	7b29      	ldrb	r1, [r5, #12]
d0041e68:	7b6b      	ldrb	r3, [r5, #13]
d0041e6a:	f44f 72f0 	mov.w	r2, #480	; 0x1e0
d0041e6e:	7ba8      	ldrb	r0, [r5, #14]
d0041e70:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
d0041e74:	7beb      	ldrb	r3, [r5, #15]
d0041e76:	ea41 4100 	orr.w	r1, r1, r0, lsl #16
d0041e7a:	4610      	mov	r0, r2
d0041e7c:	ea41 6103 	orr.w	r1, r1, r3, lsl #24
d0041e80:	f44f 7320 	mov.w	r3, #640	; 0x280
d0041e84:	680d      	ldr	r5, [r1, #0]
d0041e86:	f44f 71a0 	mov.w	r1, #320	; 0x140
d0041e8a:	9400      	str	r4, [sp, #0]
d0041e8c:	696c      	ldr	r4, [r5, #20]
d0041e8e:	47a0      	blx	r4
d0041e90:	7b33      	ldrb	r3, [r6, #12]
d0041e92:	7b72      	ldrb	r2, [r6, #13]
d0041e94:	7bb1      	ldrb	r1, [r6, #14]
d0041e96:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0041e9a:	7bf2      	ldrb	r2, [r6, #15]
d0041e9c:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0041ea0:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0041ea4:	681b      	ldr	r3, [r3, #0]
d0041ea6:	6bdb      	ldr	r3, [r3, #60]	; 0x3c
d0041ea8:	4798      	blx	r3
d0041eaa:	7b33      	ldrb	r3, [r6, #12]
d0041eac:	4993      	ldr	r1, [pc, #588]	; (d00420fc <main+0x304>)
d0041eae:	7b72      	ldrb	r2, [r6, #13]
d0041eb0:	6008      	str	r0, [r1, #0]
d0041eb2:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0041eb6:	7bb1      	ldrb	r1, [r6, #14]
d0041eb8:	7bf2      	ldrb	r2, [r6, #15]
d0041eba:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0041ebe:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0041ec2:	681b      	ldr	r3, [r3, #0]
d0041ec4:	6c1b      	ldr	r3, [r3, #64]	; 0x40
d0041ec6:	4798      	blx	r3
d0041ec8:	4a8d      	ldr	r2, [pc, #564]	; (d0042100 <main+0x308>)
d0041eca:	4603      	mov	r3, r0
d0041ecc:	f44f 2096 	mov.w	r0, #307200	; 0x4b000
d0041ed0:	6013      	str	r3, [r2, #0]
d0041ed2:	f001 f9d5 	bl	d0043280 <malloc>
d0041ed6:	f8c9 0000 	str.w	r0, [r9]
d0041eda:	f8d9 3000 	ldr.w	r3, [r9]
d0041ede:	2b00      	cmp	r3, #0
d0041ee0:	f000 81da 	beq.w	d0042298 <main+0x4a0>
d0041ee4:	4c87      	ldr	r4, [pc, #540]	; (d0042104 <main+0x30c>)
d0041ee6:	f44f 7320 	mov.w	r3, #640	; 0x280
d0041eea:	f44f 2696 	mov.w	r6, #307200	; 0x4b000
d0041eee:	f44f 75f0 	mov.w	r5, #480	; 0x1e0
d0041ef2:	4620      	mov	r0, r4
d0041ef4:	f44f 6280 	mov.w	r2, #1024	; 0x400
d0041ef8:	2100      	movs	r1, #0
d0041efa:	f8a9 5004 	strh.w	r5, [r9, #4]
d0041efe:	f8a9 3006 	strh.w	r3, [r9, #6]
d0041f02:	f8a9 3008 	strh.w	r3, [r9, #8]
d0041f06:	f8c9 600c 	str.w	r6, [r9, #12]
d0041f0a:	f001 f9c9 	bl	d00432a0 <memset>
d0041f0e:	4a7a      	ldr	r2, [pc, #488]	; (d00420f8 <main+0x300>)
d0041f10:	4620      	mov	r0, r4
d0041f12:	4e7d      	ldr	r6, [pc, #500]	; (d0042108 <main+0x310>)
d0041f14:	7b11      	ldrb	r1, [r2, #12]
d0041f16:	7b53      	ldrb	r3, [r2, #13]
d0041f18:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
d0041f1c:	7b93      	ldrb	r3, [r2, #14]
d0041f1e:	ea41 4103 	orr.w	r1, r1, r3, lsl #16
d0041f22:	7bd3      	ldrb	r3, [r2, #15]
d0041f24:	ea41 6103 	orr.w	r1, r1, r3, lsl #24
d0041f28:	a35b      	add	r3, pc, #364	; (adr r3, d0042098 <main+0x2a0>)
d0041f2a:	e9d3 2300 	ldrd	r2, r3, [r3]
d0041f2e:	6809      	ldr	r1, [r1, #0]
d0041f30:	6226      	str	r6, [r4, #32]
d0041f32:	6cc9      	ldr	r1, [r1, #76]	; 0x4c
d0041f34:	e9c4 2300 	strd	r2, r3, [r4]
d0041f38:	a359      	add	r3, pc, #356	; (adr r3, d00420a0 <main+0x2a8>)
d0041f3a:	e9d3 2300 	ldrd	r2, r3, [r3]
d0041f3e:	a75a      	add	r7, pc, #360	; (adr r7, d00420a8 <main+0x2b0>)
d0041f40:	e9d7 6700 	ldrd	r6, r7, [r7]
d0041f44:	e9c4 2304 	strd	r2, r3, [r4, #16]
d0041f48:	a359      	add	r3, pc, #356	; (adr r3, d00420b0 <main+0x2b8>)
d0041f4a:	e9d3 2300 	ldrd	r2, r3, [r3]
d0041f4e:	e9c4 6702 	strd	r6, r7, [r4, #8]
d0041f52:	e9c4 2320 	strd	r2, r3, [r4, #128]	; 0x80
d0041f56:	a758      	add	r7, pc, #352	; (adr r7, d00420b8 <main+0x2c0>)
d0041f58:	e9d7 6700 	ldrd	r6, r7, [r7]
d0041f5c:	a358      	add	r3, pc, #352	; (adr r3, d00420c0 <main+0x2c8>)
d0041f5e:	e9d3 2300 	ldrd	r2, r3, [r3]
d0041f62:	e9c4 6706 	strd	r6, r7, [r4, #24]
d0041f66:	e9c4 2324 	strd	r2, r3, [r4, #144]	; 0x90
d0041f6a:	a757      	add	r7, pc, #348	; (adr r7, d00420c8 <main+0x2d0>)
d0041f6c:	e9d7 6700 	ldrd	r6, r7, [r7]
d0041f70:	a357      	add	r3, pc, #348	; (adr r3, d00420d0 <main+0x2d8>)
d0041f72:	e9d3 2300 	ldrd	r2, r3, [r3]
d0041f76:	e9c4 6722 	strd	r6, r7, [r4, #136]	; 0x88
d0041f7a:	e9c4 2328 	strd	r2, r3, [r4, #160]	; 0xa0
d0041f7e:	a756      	add	r7, pc, #344	; (adr r7, d00420d8 <main+0x2e0>)
d0041f80:	e9d7 6700 	ldrd	r6, r7, [r7]
d0041f84:	a356      	add	r3, pc, #344	; (adr r3, d00420e0 <main+0x2e8>)
d0041f86:	e9d3 2300 	ldrd	r2, r3, [r3]
d0041f8a:	e9c4 6726 	strd	r6, r7, [r4, #152]	; 0x98
d0041f8e:	e9c4 232c 	strd	r2, r3, [r4, #176]	; 0xb0
d0041f92:	a755      	add	r7, pc, #340	; (adr r7, d00420e8 <main+0x2f0>)
d0041f94:	e9d7 6700 	ldrd	r6, r7, [r7]
d0041f98:	a355      	add	r3, pc, #340	; (adr r3, d00420f0 <main+0x2f8>)
d0041f9a:	e9d3 2300 	ldrd	r2, r3, [r3]
d0041f9e:	e9c4 672a 	strd	r6, r7, [r4, #168]	; 0xa8
d0041fa2:	e9c4 232e 	strd	r2, r3, [r4, #184]	; 0xb8
d0041fa6:	4788      	blx	r1
d0041fa8:	4a53      	ldr	r2, [pc, #332]	; (d00420f8 <main+0x300>)
d0041faa:	4620      	mov	r0, r4
d0041fac:	7b13      	ldrb	r3, [r2, #12]
d0041fae:	4611      	mov	r1, r2
d0041fb0:	7b52      	ldrb	r2, [r2, #13]
d0041fb2:	460c      	mov	r4, r1
d0041fb4:	7b89      	ldrb	r1, [r1, #14]
d0041fb6:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0041fba:	7be2      	ldrb	r2, [r4, #15]
d0041fbc:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0041fc0:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0041fc4:	681b      	ldr	r3, [r3, #0]
d0041fc6:	6d1b      	ldr	r3, [r3, #80]	; 0x50
d0041fc8:	4798      	blx	r3
d0041fca:	f7fe fa77 	bl	d00404bc <draw_visualizer_prepare_front_buffers>
d0041fce:	7b23      	ldrb	r3, [r4, #12]
d0041fd0:	7b62      	ldrb	r2, [r4, #13]
d0041fd2:	4648      	mov	r0, r9
d0041fd4:	7ba1      	ldrb	r1, [r4, #14]
d0041fd6:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0041fda:	7be2      	ldrb	r2, [r4, #15]
d0041fdc:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0041fe0:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0041fe4:	681b      	ldr	r3, [r3, #0]
d0041fe6:	6a1b      	ldr	r3, [r3, #32]
d0041fe8:	4798      	blx	r3
d0041fea:	f8d9 3000 	ldr.w	r3, [r9]
d0041fee:	b183      	cbz	r3, d0042012 <main+0x21a>
d0041ff0:	f8d9 6000 	ldr.w	r6, [r9]
d0041ff4:	462c      	mov	r4, r5
d0041ff6:	f8b9 5008 	ldrh.w	r5, [r9, #8]
d0041ffa:	b2ad      	uxth	r5, r5
d0041ffc:	3c01      	subs	r4, #1
d0041ffe:	4630      	mov	r0, r6
d0042000:	f44f 7220 	mov.w	r2, #640	; 0x280
d0042004:	2101      	movs	r1, #1
d0042006:	b2a4      	uxth	r4, r4
d0042008:	442e      	add	r6, r5
d004200a:	f001 f949 	bl	d00432a0 <memset>
d004200e:	2c00      	cmp	r4, #0
d0042010:	d1f4      	bne.n	d0041ffc <main+0x204>
d0042012:	f7fe fb35 	bl	d0040680 <visualizer_draw_grid_full>
d0042016:	f44f 6240 	mov.w	r2, #3072	; 0xc00
d004201a:	2100      	movs	r1, #0
d004201c:	483b      	ldr	r0, [pc, #236]	; (d004210c <main+0x314>)
d004201e:	f001 f93f 	bl	d00432a0 <memset>
d0042022:	4d35      	ldr	r5, [pc, #212]	; (d00420f8 <main+0x300>)
d0042024:	2100      	movs	r1, #0
d0042026:	4b3a      	ldr	r3, [pc, #232]	; (d0042110 <main+0x318>)
d0042028:	4e3a      	ldr	r6, [pc, #232]	; (d0042114 <main+0x31c>)
d004202a:	f44f 5248 	mov.w	r2, #12800	; 0x3200
d004202e:	7019      	strb	r1, [r3, #0]
d0042030:	4608      	mov	r0, r1
d0042032:	7b2b      	ldrb	r3, [r5, #12]
d0042034:	7b6c      	ldrb	r4, [r5, #13]
d0042036:	6031      	str	r1, [r6, #0]
d0042038:	ea43 2304 	orr.w	r3, r3, r4, lsl #8
d004203c:	7bac      	ldrb	r4, [r5, #14]
d004203e:	4e36      	ldr	r6, [pc, #216]	; (d0042118 <main+0x320>)
d0042040:	ea43 4304 	orr.w	r3, r3, r4, lsl #16
d0042044:	7bec      	ldrb	r4, [r5, #15]
d0042046:	6031      	str	r1, [r6, #0]
d0042048:	ea43 6304 	orr.w	r3, r3, r4, lsl #24
d004204c:	4c33      	ldr	r4, [pc, #204]	; (d004211c <main+0x324>)
d004204e:	681b      	ldr	r3, [r3, #0]
d0042050:	6022      	str	r2, [r4, #0]
d0042052:	6b1b      	ldr	r3, [r3, #48]	; 0x30
d0042054:	4798      	blx	r3
d0042056:	f8d9 3000 	ldr.w	r3, [r9]
d004205a:	b18b      	cbz	r3, d0042080 <main+0x288>
d004205c:	f8d9 5000 	ldr.w	r5, [r9]
d0042060:	f44f 74f0 	mov.w	r4, #480	; 0x1e0
d0042064:	f8b9 6008 	ldrh.w	r6, [r9, #8]
d0042068:	b2b6      	uxth	r6, r6
d004206a:	3c01      	subs	r4, #1
d004206c:	4628      	mov	r0, r5
d004206e:	f44f 7220 	mov.w	r2, #640	; 0x280
d0042072:	2101      	movs	r1, #1
d0042074:	b2a4      	uxth	r4, r4
d0042076:	4435      	add	r5, r6
d0042078:	f001 f912 	bl	d00432a0 <memset>
d004207c:	2c00      	cmp	r4, #0
d004207e:	d1f4      	bne.n	d004206a <main+0x272>
d0042080:	f7fe fafe 	bl	d0040680 <visualizer_draw_grid_full>
d0042084:	f1b8 0f01 	cmp.w	r8, #1
d0042088:	f340 814b 	ble.w	d0042322 <main+0x52a>
d004208c:	4654      	mov	r4, sl
d004208e:	2601      	movs	r6, #1
d0042090:	4657      	mov	r7, sl
d0042092:	e049      	b.n	d0042128 <main+0x330>
d0042094:	f3af 8000 	nop.w
d0042098:	00000000 	.word	0x00000000
d004209c:	ff03070c 	.word	0xff03070c
d00420a0:	ffe2f1ec 	.word	0xffe2f1ec
d00420a4:	ff697f84 	.word	0xff697f84
d00420a8:	ff0f1922 	.word	0xff0f1922
d00420ac:	ff202e3a 	.word	0xff202e3a
d00420b0:	ffff4c5c 	.word	0xffff4c5c
d00420b4:	ffff9a34 	.word	0xffff9a34
d00420b8:	ffdae1d6 	.word	0xffdae1d6
d00420bc:	ff080c12 	.word	0xff080c12
d00420c0:	ff34d2cc 	.word	0xff34d2cc
d00420c4:	ff4e9fff 	.word	0xff4e9fff
d00420c8:	ffffe049 	.word	0xffffe049
d00420cc:	ff5ce477 	.word	0xff5ce477
d00420d0:	ffff78aa 	.word	0xffff78aa
d00420d4:	ffbebebe 	.word	0xffbebebe
d00420d8:	ffa96cff 	.word	0xffa96cff
d00420dc:	ffec5eda 	.word	0xffec5eda
d00420e0:	ffdc7437 	.word	0xffdc7437
d00420e4:	ff845ed2 	.word	0xff845ed2
d00420e8:	ffa2d748 	.word	0xffa2d748
d00420ec:	ff3487b4 	.word	0xff3487b4
d00420f0:	ff58cdf5 	.word	0xff58cdf5
d00420f4:	fff5f5f5 	.word	0xfff5f5f5
d00420f8:	2001f000 	.word	0x2001f000
d00420fc:	d0044f80 	.word	0xd0044f80
d0042100:	d0044fa0 	.word	0xd0044fa0
d0042104:	d0044b20 	.word	0xd0044b20
d0042108:	ffffe876 	.word	0xffffe876
d004210c:	d00455c8 	.word	0xd00455c8
d0042110:	d00461cc 	.word	0xd00461cc
d0042114:	d00455c0 	.word	0xd00455c0
d0042118:	d00461c8 	.word	0xd00461c8
d004211c:	d00455c4 	.word	0xd00455c4
d0042120:	d0044f20 	.word	0xd0044f20
d0042124:	45b0      	cmp	r8, r6
d0042126:	d01f      	beq.n	d0042168 <main+0x370>
d0042128:	f857 5f04 	ldr.w	r5, [r7, #4]!
d004212c:	3601      	adds	r6, #1
d004212e:	4628      	mov	r0, r5
d0042130:	2d00      	cmp	r5, #0
d0042132:	d0f7      	beq.n	d0042124 <main+0x32c>
d0042134:	f001 faec 	bl	d0043710 <strlen>
d0042138:	1f02      	subs	r2, r0, #4
d004213a:	2803      	cmp	r0, #3
d004213c:	eb05 0302 	add.w	r3, r5, r2
d0042140:	d9f0      	bls.n	d0042124 <main+0x32c>
d0042142:	5caa      	ldrb	r2, [r5, r2]
d0042144:	2a2e      	cmp	r2, #46	; 0x2e
d0042146:	d1ed      	bne.n	d0042124 <main+0x32c>
d0042148:	785a      	ldrb	r2, [r3, #1]
d004214a:	f002 02df 	and.w	r2, r2, #223	; 0xdf
d004214e:	2a4d      	cmp	r2, #77	; 0x4d
d0042150:	d1e8      	bne.n	d0042124 <main+0x32c>
d0042152:	789a      	ldrb	r2, [r3, #2]
d0042154:	f002 02df 	and.w	r2, r2, #223	; 0xdf
d0042158:	2a49      	cmp	r2, #73	; 0x49
d004215a:	d1e3      	bne.n	d0042124 <main+0x32c>
d004215c:	78db      	ldrb	r3, [r3, #3]
d004215e:	f003 03df 	and.w	r3, r3, #223	; 0xdf
d0042162:	2b44      	cmp	r3, #68	; 0x44
d0042164:	d001      	beq.n	d004216a <main+0x372>
d0042166:	e7dd      	b.n	d0042124 <main+0x32c>
d0042168:	2500      	movs	r5, #0
d004216a:	2601      	movs	r6, #1
d004216c:	f8df a210 	ldr.w	sl, [pc, #528]	; d0042380 <main+0x588>
d0042170:	f8df b210 	ldr.w	fp, [pc, #528]	; d0042384 <main+0x58c>
d0042174:	e011      	b.n	d004219a <main+0x3a2>
d0042176:	f001 fac1 	bl	d00436fc <strcmp>
d004217a:	4603      	mov	r3, r0
d004217c:	4651      	mov	r1, sl
d004217e:	4638      	mov	r0, r7
d0042180:	b1bb      	cbz	r3, d00421b2 <main+0x3ba>
d0042182:	f001 fabb 	bl	d00436fc <strcmp>
d0042186:	4603      	mov	r3, r0
d0042188:	4659      	mov	r1, fp
d004218a:	4638      	mov	r0, r7
d004218c:	b18b      	cbz	r3, d00421b2 <main+0x3ba>
d004218e:	f001 fab5 	bl	d00436fc <strcmp>
d0042192:	2800      	cmp	r0, #0
d0042194:	d077      	beq.n	d0042286 <main+0x48e>
d0042196:	45b0      	cmp	r8, r6
d0042198:	d075      	beq.n	d0042286 <main+0x48e>
d004219a:	f854 7f04 	ldr.w	r7, [r4, #4]!
d004219e:	3601      	adds	r6, #1
d00421a0:	4970      	ldr	r1, [pc, #448]	; (d0042364 <main+0x56c>)
d00421a2:	4638      	mov	r0, r7
d00421a4:	f001 faaa 	bl	d00436fc <strcmp>
d00421a8:	4603      	mov	r3, r0
d00421aa:	496f      	ldr	r1, [pc, #444]	; (d0042368 <main+0x570>)
d00421ac:	4638      	mov	r0, r7
d00421ae:	2b00      	cmp	r3, #0
d00421b0:	d1e1      	bne.n	d0042176 <main+0x37e>
d00421b2:	930c      	str	r3, [sp, #48]	; 0x30
d00421b4:	2d00      	cmp	r5, #0
d00421b6:	d068      	beq.n	d004228a <main+0x492>
d00421b8:	782b      	ldrb	r3, [r5, #0]
d00421ba:	2b00      	cmp	r3, #0
d00421bc:	f000 80af 	beq.w	d004231e <main+0x526>
d00421c0:	1c69      	adds	r1, r5, #1
d00421c2:	462a      	mov	r2, r5
d00421c4:	e004      	b.n	d00421d0 <main+0x3d8>
d00421c6:	2b5c      	cmp	r3, #92	; 0x5c
d00421c8:	d004      	beq.n	d00421d4 <main+0x3dc>
d00421ca:	f811 3b01 	ldrb.w	r3, [r1], #1
d00421ce:	b133      	cbz	r3, d00421de <main+0x3e6>
d00421d0:	2b2f      	cmp	r3, #47	; 0x2f
d00421d2:	d1f8      	bne.n	d00421c6 <main+0x3ce>
d00421d4:	460a      	mov	r2, r1
d00421d6:	f811 3b01 	ldrb.w	r3, [r1], #1
d00421da:	2b00      	cmp	r3, #0
d00421dc:	d1f8      	bne.n	d00421d0 <main+0x3d8>
d00421de:	7810      	ldrb	r0, [r2, #0]
d00421e0:	2800      	cmp	r0, #0
d00421e2:	f000 809b 	beq.w	d004231c <main+0x524>
d00421e6:	4961      	ldr	r1, [pc, #388]	; (d004236c <main+0x574>)
d00421e8:	460c      	mov	r4, r1
d00421ea:	e001      	b.n	d00421f0 <main+0x3f8>
d00421ec:	2b37      	cmp	r3, #55	; 0x37
d00421ee:	d006      	beq.n	d00421fe <main+0x406>
d00421f0:	f804 0b01 	strb.w	r0, [r4], #1
d00421f4:	3301      	adds	r3, #1
d00421f6:	f812 0f01 	ldrb.w	r0, [r2, #1]!
d00421fa:	2800      	cmp	r0, #0
d00421fc:	d1f6      	bne.n	d00421ec <main+0x3f4>
d00421fe:	4f5c      	ldr	r7, [pc, #368]	; (d0042370 <main+0x578>)
d0042200:	2600      	movs	r6, #0
d0042202:	54ce      	strb	r6, [r1, r3]
d0042204:	f7fe f95a 	bl	d00404bc <draw_visualizer_prepare_front_buffers>
d0042208:	793b      	ldrb	r3, [r7, #4]
d004220a:	4630      	mov	r0, r6
d004220c:	797c      	ldrb	r4, [r7, #5]
d004220e:	2201      	movs	r2, #1
d0042210:	9614      	str	r6, [sp, #80]	; 0x50
d0042212:	4629      	mov	r1, r5
d0042214:	ea43 2304 	orr.w	r3, r3, r4, lsl #8
d0042218:	79bc      	ldrb	r4, [r7, #6]
d004221a:	463e      	mov	r6, r7
d004221c:	ea43 4304 	orr.w	r3, r3, r4, lsl #16
d0042220:	79fc      	ldrb	r4, [r7, #7]
d0042222:	ea43 6304 	orr.w	r3, r3, r4, lsl #24
d0042226:	681b      	ldr	r3, [r3, #0]
d0042228:	681b      	ldr	r3, [r3, #0]
d004222a:	4798      	blx	r3
d004222c:	4607      	mov	r7, r0
d004222e:	b9f0      	cbnz	r0, d004226e <main+0x476>
d0042230:	7933      	ldrb	r3, [r6, #4]
d0042232:	4634      	mov	r4, r6
d0042234:	7972      	ldrb	r2, [r6, #5]
d0042236:	79b1      	ldrb	r1, [r6, #6]
d0042238:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004223c:	79f2      	ldrb	r2, [r6, #7]
d004223e:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0042242:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0042246:	681b      	ldr	r3, [r3, #0]
d0042248:	685b      	ldr	r3, [r3, #4]
d004224a:	4798      	blx	r3
d004224c:	280d      	cmp	r0, #13
d004224e:	4606      	mov	r6, r0
d0042250:	d829      	bhi.n	d00422a6 <main+0x4ae>
d0042252:	7923      	ldrb	r3, [r4, #4]
d0042254:	4638      	mov	r0, r7
d0042256:	7962      	ldrb	r2, [r4, #5]
d0042258:	79a1      	ldrb	r1, [r4, #6]
d004225a:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004225e:	79e2      	ldrb	r2, [r4, #7]
d0042260:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0042264:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0042268:	681b      	ldr	r3, [r3, #0]
d004226a:	68db      	ldr	r3, [r3, #12]
d004226c:	4798      	blx	r3
d004226e:	4629      	mov	r1, r5
d0042270:	4840      	ldr	r0, [pc, #256]	; (d0042374 <main+0x57c>)
d0042272:	f001 f8c7 	bl	d0043404 <iprintf>
d0042276:	f7fe f9bd 	bl	d00405f4 <app_shutdown>
d004227a:	2001      	movs	r0, #1
d004227c:	b025      	add	sp, #148	; 0x94
d004227e:	ecbd 8b02 	vpop	{d8}
d0042282:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0042286:	2301      	movs	r3, #1
d0042288:	e793      	b.n	d00421b2 <main+0x3ba>
d004228a:	483b      	ldr	r0, [pc, #236]	; (d0042378 <main+0x580>)
d004228c:	f001 f940 	bl	d0043510 <puts>
d0042290:	f7fe f9b0 	bl	d00405f4 <app_shutdown>
d0042294:	2001      	movs	r0, #1
d0042296:	e7f1      	b.n	d004227c <main+0x484>
d0042298:	4838      	ldr	r0, [pc, #224]	; (d004237c <main+0x584>)
d004229a:	f001 f939 	bl	d0043510 <puts>
d004229e:	f7fe f9a9 	bl	d00405f4 <app_shutdown>
d00422a2:	2001      	movs	r0, #1
d00422a4:	e7ea      	b.n	d004227c <main+0x484>
d00422a6:	f000 ffeb 	bl	d0043280 <malloc>
d00422aa:	4604      	mov	r4, r0
d00422ac:	2800      	cmp	r0, #0
d00422ae:	f000 85fd 	beq.w	d0042eac <main+0x10b4>
d00422b2:	4b2f      	ldr	r3, [pc, #188]	; (d0042370 <main+0x578>)
d00422b4:	4632      	mov	r2, r6
d00422b6:	7918      	ldrb	r0, [r3, #4]
d00422b8:	7959      	ldrb	r1, [r3, #5]
d00422ba:	f893 c006 	ldrb.w	ip, [r3, #6]
d00422be:	ab14      	add	r3, sp, #80	; 0x50
d00422c0:	ea40 2001 	orr.w	r0, r0, r1, lsl #8
d00422c4:	492a      	ldr	r1, [pc, #168]	; (d0042370 <main+0x578>)
d00422c6:	ea40 4c0c 	orr.w	ip, r0, ip, lsl #16
d00422ca:	f891 e007 	ldrb.w	lr, [r1, #7]
d00422ce:	4638      	mov	r0, r7
d00422d0:	4621      	mov	r1, r4
d00422d2:	ea4c 6c0e 	orr.w	ip, ip, lr, lsl #24
d00422d6:	f8dc c000 	ldr.w	ip, [ip]
d00422da:	f8dc 8008 	ldr.w	r8, [ip, #8]
d00422de:	47c0      	blx	r8
d00422e0:	4a23      	ldr	r2, [pc, #140]	; (d0042370 <main+0x578>)
d00422e2:	4680      	mov	r8, r0
d00422e4:	4638      	mov	r0, r7
d00422e6:	7913      	ldrb	r3, [r2, #4]
d00422e8:	4617      	mov	r7, r2
d00422ea:	7952      	ldrb	r2, [r2, #5]
d00422ec:	79b9      	ldrb	r1, [r7, #6]
d00422ee:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d00422f2:	79fa      	ldrb	r2, [r7, #7]
d00422f4:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d00422f8:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00422fc:	681b      	ldr	r3, [r3, #0]
d00422fe:	68db      	ldr	r3, [r3, #12]
d0042300:	4798      	blx	r3
d0042302:	f1b8 0f00 	cmp.w	r8, #0
d0042306:	d105      	bne.n	d0042314 <main+0x51c>
d0042308:	9b14      	ldr	r3, [sp, #80]	; 0x50
d004230a:	429e      	cmp	r6, r3
d004230c:	d102      	bne.n	d0042314 <main+0x51c>
d004230e:	7823      	ldrb	r3, [r4, #0]
d0042310:	2b4d      	cmp	r3, #77	; 0x4d
d0042312:	d039      	beq.n	d0042388 <main+0x590>
d0042314:	4620      	mov	r0, r4
d0042316:	f000 ffbb 	bl	d0043290 <free>
d004231a:	e7a8      	b.n	d004226e <main+0x476>
d004231c:	4603      	mov	r3, r0
d004231e:	4913      	ldr	r1, [pc, #76]	; (d004236c <main+0x574>)
d0042320:	e76d      	b.n	d00421fe <main+0x406>
d0042322:	d1b2      	bne.n	d004228a <main+0x492>
d0042324:	f8da 5000 	ldr.w	r5, [sl]
d0042328:	2d00      	cmp	r5, #0
d004232a:	d0ae      	beq.n	d004228a <main+0x492>
d004232c:	4628      	mov	r0, r5
d004232e:	f001 f9ef 	bl	d0043710 <strlen>
d0042332:	2803      	cmp	r0, #3
d0042334:	d9a9      	bls.n	d004228a <main+0x492>
d0042336:	1f03      	subs	r3, r0, #4
d0042338:	5cea      	ldrb	r2, [r5, r3]
d004233a:	442b      	add	r3, r5
d004233c:	2a2e      	cmp	r2, #46	; 0x2e
d004233e:	d1a4      	bne.n	d004228a <main+0x492>
d0042340:	785a      	ldrb	r2, [r3, #1]
d0042342:	f002 02df 	and.w	r2, r2, #223	; 0xdf
d0042346:	2a4d      	cmp	r2, #77	; 0x4d
d0042348:	d19f      	bne.n	d004228a <main+0x492>
d004234a:	789a      	ldrb	r2, [r3, #2]
d004234c:	f002 02df 	and.w	r2, r2, #223	; 0xdf
d0042350:	2a49      	cmp	r2, #73	; 0x49
d0042352:	d19a      	bne.n	d004228a <main+0x492>
d0042354:	78db      	ldrb	r3, [r3, #3]
d0042356:	f003 03df 	and.w	r3, r3, #223	; 0xdf
d004235a:	2b44      	cmp	r3, #68	; 0x44
d004235c:	d195      	bne.n	d004228a <main+0x492>
d004235e:	f8cd 8030 	str.w	r8, [sp, #48]	; 0x30
d0042362:	e729      	b.n	d00421b8 <main+0x3c0>
d0042364:	d0044878 	.word	0xd0044878
d0042368:	d0044880 	.word	0xd0044880
d004236c:	d0044a4c 	.word	0xd0044a4c
d0042370:	2001f000 	.word	0x2001f000
d0042374:	d00448c8 	.word	0xd00448c8
d0042378:	d004489c 	.word	0xd004489c
d004237c:	d004484c 	.word	0xd004484c
d0042380:	d0044888 	.word	0xd0044888
d0042384:	d0044894 	.word	0xd0044894
d0042388:	7863      	ldrb	r3, [r4, #1]
d004238a:	2b54      	cmp	r3, #84	; 0x54
d004238c:	d1c2      	bne.n	d0042314 <main+0x51c>
d004238e:	78a3      	ldrb	r3, [r4, #2]
d0042390:	2b68      	cmp	r3, #104	; 0x68
d0042392:	d1bf      	bne.n	d0042314 <main+0x51c>
d0042394:	78e3      	ldrb	r3, [r4, #3]
d0042396:	2b64      	cmp	r3, #100	; 0x64
d0042398:	d1bc      	bne.n	d0042314 <main+0x51c>
d004239a:	4b9f      	ldr	r3, [pc, #636]	; (d0042618 <main+0x820>)
d004239c:	6818      	ldr	r0, [r3, #0]
d004239e:	b108      	cbz	r0, d00423a4 <main+0x5ac>
d00423a0:	f000 ff76 	bl	d0043290 <free>
d00423a4:	4b9c      	ldr	r3, [pc, #624]	; (d0042618 <main+0x820>)
d00423a6:	4620      	mov	r0, r4
d00423a8:	4631      	mov	r1, r6
d00423aa:	9a0c      	ldr	r2, [sp, #48]	; 0x30
d00423ac:	601c      	str	r4, [r3, #0]
d00423ae:	4b9b      	ldr	r3, [pc, #620]	; (d004261c <main+0x824>)
d00423b0:	601e      	str	r6, [r3, #0]
d00423b2:	f7ff fb9b 	bl	d0041aec <setup>
d00423b6:	4b9a      	ldr	r3, [pc, #616]	; (d0042620 <main+0x828>)
d00423b8:	f44f 7600 	mov.w	r6, #512	; 0x200
d00423bc:	f242 7010 	movw	r0, #10000	; 0x2710
d00423c0:	2100      	movs	r1, #0
d00423c2:	f8d3 4114 	ldr.w	r4, [r3, #276]	; 0x114
d00423c6:	f644 6220 	movw	r2, #20000	; 0x4e20
d00423ca:	4b96      	ldr	r3, [pc, #600]	; (d0042624 <main+0x82c>)
d00423cc:	2c00      	cmp	r4, #0
d00423ce:	bf08      	it	eq
d00423d0:	461c      	moveq	r4, r3
d00423d2:	2300      	movs	r3, #0
d00423d4:	fbe6 0104 	umlal	r0, r1, r6, r4
d00423d8:	f000 fdd0 	bl	d0042f7c <__aeabi_uldivmod>
d00423dc:	f5b0 3fa0 	cmp.w	r0, #81920	; 0x14000
d00423e0:	4b91      	ldr	r3, [pc, #580]	; (d0042628 <main+0x830>)
d00423e2:	bf28      	it	cs
d00423e4:	f44f 30a0 	movcs.w	r0, #81920	; 0x14000
d00423e8:	f8d9 2000 	ldr.w	r2, [r9]
d00423ec:	f5b0 6f80 	cmp.w	r0, #1024	; 0x400
d00423f0:	bf38      	it	cc
d00423f2:	f44f 6080 	movcc.w	r0, #1024	; 0x400
d00423f6:	6018      	str	r0, [r3, #0]
d00423f8:	b18a      	cbz	r2, d004241e <main+0x626>
d00423fa:	f8d9 7000 	ldr.w	r7, [r9]
d00423fe:	f44f 74f0 	mov.w	r4, #480	; 0x1e0
d0042402:	f8b9 6008 	ldrh.w	r6, [r9, #8]
d0042406:	b2b6      	uxth	r6, r6
d0042408:	3c01      	subs	r4, #1
d004240a:	4638      	mov	r0, r7
d004240c:	f44f 7220 	mov.w	r2, #640	; 0x280
d0042410:	2101      	movs	r1, #1
d0042412:	b2a4      	uxth	r4, r4
d0042414:	4437      	add	r7, r6
d0042416:	f000 ff43 	bl	d00432a0 <memset>
d004241a:	2c00      	cmp	r4, #0
d004241c:	d1f4      	bne.n	d0042408 <main+0x610>
d004241e:	f7fe f92f 	bl	d0040680 <visualizer_draw_grid_full>
d0042422:	4b7f      	ldr	r3, [pc, #508]	; (d0042620 <main+0x828>)
d0042424:	f893 3120 	ldrb.w	r3, [r3, #288]	; 0x120
d0042428:	2b00      	cmp	r3, #0
d004242a:	f000 8536 	beq.w	d0042e9a <main+0x10a2>
d004242e:	4b7b      	ldr	r3, [pc, #492]	; (d004261c <main+0x824>)
d0042430:	4647      	mov	r7, r8
d0042432:	4c7e      	ldr	r4, [pc, #504]	; (d004262c <main+0x834>)
d0042434:	6819      	ldr	r1, [r3, #0]
d0042436:	2300      	movs	r3, #0
d0042438:	4d7d      	ldr	r5, [pc, #500]	; (d0042630 <main+0x838>)
d004243a:	930d      	str	r3, [sp, #52]	; 0x34
d004243c:	4b76      	ldr	r3, [pc, #472]	; (d0042618 <main+0x820>)
d004243e:	6818      	ldr	r0, [r3, #0]
d0042440:	f7ff f922 	bl	d0041688 <midi_player_get_duration_ms>
d0042444:	7823      	ldrb	r3, [r4, #0]
d0042446:	7862      	ldrb	r2, [r4, #1]
d0042448:	4606      	mov	r6, r0
d004244a:	78a1      	ldrb	r1, [r4, #2]
d004244c:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0042450:	78e2      	ldrb	r2, [r4, #3]
d0042452:	900e      	str	r0, [sp, #56]	; 0x38
d0042454:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0042458:	4876      	ldr	r0, [pc, #472]	; (d0042634 <main+0x83c>)
d004245a:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004245e:	68db      	ldr	r3, [r3, #12]
d0042460:	4798      	blx	r3
d0042462:	7823      	ldrb	r3, [r4, #0]
d0042464:	7862      	ldrb	r2, [r4, #1]
d0042466:	78a1      	ldrb	r1, [r4, #2]
d0042468:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004246c:	78e2      	ldrb	r2, [r4, #3]
d004246e:	4872      	ldr	r0, [pc, #456]	; (d0042638 <main+0x840>)
d0042470:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0042474:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0042478:	6edb      	ldr	r3, [r3, #108]	; 0x6c
d004247a:	689b      	ldr	r3, [r3, #8]
d004247c:	4798      	blx	r3
d004247e:	7823      	ldrb	r3, [r4, #0]
d0042480:	7862      	ldrb	r2, [r4, #1]
d0042482:	21ef      	movs	r1, #239	; 0xef
d0042484:	78a0      	ldrb	r0, [r4, #2]
d0042486:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004248a:	78e2      	ldrb	r2, [r4, #3]
d004248c:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
d0042490:	f644 601f 	movw	r0, #19999	; 0x4e1f
d0042494:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0042498:	6edb      	ldr	r3, [r3, #108]	; 0x6c
d004249a:	685b      	ldr	r3, [r3, #4]
d004249c:	4798      	blx	r3
d004249e:	7823      	ldrb	r3, [r4, #0]
d00424a0:	7862      	ldrb	r2, [r4, #1]
d00424a2:	200b      	movs	r0, #11
d00424a4:	78a1      	ldrb	r1, [r4, #2]
d00424a6:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d00424aa:	78e2      	ldrb	r2, [r4, #3]
d00424ac:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d00424b0:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00424b4:	6edb      	ldr	r3, [r3, #108]	; 0x6c
d00424b6:	681b      	ldr	r3, [r3, #0]
d00424b8:	4798      	blx	r3
d00424ba:	7b23      	ldrb	r3, [r4, #12]
d00424bc:	7b62      	ldrb	r2, [r4, #13]
d00424be:	7ba1      	ldrb	r1, [r4, #14]
d00424c0:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d00424c4:	7be2      	ldrb	r2, [r4, #15]
d00424c6:	485d      	ldr	r0, [pc, #372]	; (d004263c <main+0x844>)
d00424c8:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d00424cc:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00424d0:	681b      	ldr	r3, [r3, #0]
d00424d2:	6a1b      	ldr	r3, [r3, #32]
d00424d4:	4798      	blx	r3
d00424d6:	7b23      	ldrb	r3, [r4, #12]
d00424d8:	7b62      	ldrb	r2, [r4, #13]
d00424da:	7ba1      	ldrb	r1, [r4, #14]
d00424dc:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d00424e0:	7be2      	ldrb	r2, [r4, #15]
d00424e2:	6828      	ldr	r0, [r5, #0]
d00424e4:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d00424e8:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00424ec:	681b      	ldr	r3, [r3, #0]
d00424ee:	69db      	ldr	r3, [r3, #28]
d00424f0:	4798      	blx	r3
d00424f2:	7b23      	ldrb	r3, [r4, #12]
d00424f4:	7b62      	ldrb	r2, [r4, #13]
d00424f6:	7ba1      	ldrb	r1, [r4, #14]
d00424f8:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d00424fc:	7be2      	ldrb	r2, [r4, #15]
d00424fe:	4c50      	ldr	r4, [pc, #320]	; (d0042640 <main+0x848>)
d0042500:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0042504:	6820      	ldr	r0, [r4, #0]
d0042506:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004250a:	681b      	ldr	r3, [r3, #0]
d004250c:	699b      	ldr	r3, [r3, #24]
d004250e:	4798      	blx	r3
d0042510:	f44f 727a 	mov.w	r2, #1000	; 0x3e8
d0042514:	233c      	movs	r3, #60	; 0x3c
d0042516:	fbb6 f2f2 	udiv	r2, r6, r2
d004251a:	fbb2 f1f3 	udiv	r1, r2, r3
d004251e:	fb03 2311 	mls	r3, r3, r1, r2
d0042522:	920f      	str	r2, [sp, #60]	; 0x3c
d0042524:	9311      	str	r3, [sp, #68]	; 0x44
d0042526:	4b3e      	ldr	r3, [pc, #248]	; (d0042620 <main+0x828>)
d0042528:	9110      	str	r1, [sp, #64]	; 0x40
d004252a:	f893 3120 	ldrb.w	r3, [r3, #288]	; 0x120
d004252e:	2b00      	cmp	r3, #0
d0042530:	f000 83b4 	beq.w	d0042c9c <main+0xea4>
d0042534:	483d      	ldr	r0, [pc, #244]	; (d004262c <main+0x834>)
d0042536:	7803      	ldrb	r3, [r0, #0]
d0042538:	7842      	ldrb	r2, [r0, #1]
d004253a:	7881      	ldrb	r1, [r0, #2]
d004253c:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0042540:	78c2      	ldrb	r2, [r0, #3]
d0042542:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0042546:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004254a:	6a1b      	ldr	r3, [r3, #32]
d004254c:	4798      	blx	r3
d004254e:	f000 0302 	and.w	r3, r0, #2
d0042552:	9312      	str	r3, [sp, #72]	; 0x48
d0042554:	b117      	cbz	r7, d004255c <main+0x764>
d0042556:	2b00      	cmp	r3, #0
d0042558:	f000 84d0 	beq.w	d0042efc <main+0x1104>
d004255c:	4930      	ldr	r1, [pc, #192]	; (d0042620 <main+0x828>)
d004255e:	f44f 727a 	mov.w	r2, #1000	; 0x3e8
d0042562:	2300      	movs	r3, #0
d0042564:	e9d1 0146 	ldrd	r0, r1, [r1, #280]	; 0x118
d0042568:	f000 fd08 	bl	d0042f7c <__aeabi_uldivmod>
d004256c:	4b35      	ldr	r3, [pc, #212]	; (d0042644 <main+0x84c>)
d004256e:	9a0e      	ldr	r2, [sp, #56]	; 0x38
d0042570:	6018      	str	r0, [r3, #0]
d0042572:	2a00      	cmp	r2, #0
d0042574:	f000 846a 	beq.w	d0042e4c <main+0x1054>
d0042578:	4611      	mov	r1, r2
d004257a:	2264      	movs	r2, #100	; 0x64
d004257c:	fb02 f300 	mul.w	r3, r2, r0
d0042580:	fbb3 f3f1 	udiv	r3, r3, r1
d0042584:	4293      	cmp	r3, r2
d0042586:	f200 8461 	bhi.w	d0042e4c <main+0x1054>
d004258a:	4a2f      	ldr	r2, [pc, #188]	; (d0042648 <main+0x850>)
d004258c:	6013      	str	r3, [r2, #0]
d004258e:	4b2f      	ldr	r3, [pc, #188]	; (d004264c <main+0x854>)
d0042590:	492f      	ldr	r1, [pc, #188]	; (d0042650 <main+0x858>)
d0042592:	fba3 2300 	umull	r2, r3, r3, r0
d0042596:	482f      	ldr	r0, [pc, #188]	; (d0042654 <main+0x85c>)
d0042598:	680a      	ldr	r2, [r1, #0]
d004259a:	099b      	lsrs	r3, r3, #6
d004259c:	4293      	cmp	r3, r2
d004259e:	6003      	str	r3, [r0, #0]
d00425a0:	f000 8458 	beq.w	d0042e54 <main+0x105c>
d00425a4:	4a2c      	ldr	r2, [pc, #176]	; (d0042658 <main+0x860>)
d00425a6:	600b      	str	r3, [r1, #0]
d00425a8:	fba2 1203 	umull	r1, r2, r2, r3
d00425ac:	492b      	ldr	r1, [pc, #172]	; (d004265c <main+0x864>)
d00425ae:	f8dd e044 	ldr.w	lr, [sp, #68]	; 0x44
d00425b2:	0952      	lsrs	r2, r2, #5
d00425b4:	f8dd c040 	ldr.w	ip, [sp, #64]	; 0x40
d00425b8:	4e29      	ldr	r6, [pc, #164]	; (d0042660 <main+0x868>)
d00425ba:	4674      	mov	r4, lr
d00425bc:	600a      	str	r2, [r1, #0]
d00425be:	ebc2 1102 	rsb	r1, r2, r2, lsl #4
d00425c2:	9f0f      	ldr	r7, [sp, #60]	; 0x3c
d00425c4:	4660      	mov	r0, ip
d00425c6:	eba3 0381 	sub.w	r3, r3, r1, lsl #2
d00425ca:	4d26      	ldr	r5, [pc, #152]	; (d0042664 <main+0x86c>)
d00425cc:	6037      	str	r7, [r6, #0]
d00425ce:	4926      	ldr	r1, [pc, #152]	; (d0042668 <main+0x870>)
d00425d0:	4e26      	ldr	r6, [pc, #152]	; (d004266c <main+0x874>)
d00425d2:	602b      	str	r3, [r5, #0]
d00425d4:	f8c6 c000 	str.w	ip, [r6]
d00425d8:	f8c1 e000 	str.w	lr, [r1]
d00425dc:	4924      	ldr	r1, [pc, #144]	; (d0042670 <main+0x878>)
d00425de:	e9cd 0400 	strd	r0, r4, [sp]
d00425e2:	a814      	add	r0, sp, #80	; 0x50
d00425e4:	f001 f86a 	bl	d00436bc <siprintf>
d00425e8:	4b0d      	ldr	r3, [pc, #52]	; (d0042620 <main+0x828>)
d00425ea:	f893 3120 	ldrb.w	r3, [r3, #288]	; 0x120
d00425ee:	b123      	cbz	r3, d00425fa <main+0x802>
d00425f0:	f644 6120 	movw	r1, #20000	; 0x4e20
d00425f4:	480a      	ldr	r0, [pc, #40]	; (d0042620 <main+0x828>)
d00425f6:	f7fe fb4d 	bl	d0040c94 <midi_player_update_us.part.0>
d00425fa:	f8df a080 	ldr.w	sl, [pc, #128]	; d004267c <main+0x884>
d00425fe:	f8ba 3000 	ldrh.w	r3, [sl]
d0042602:	2b00      	cmp	r3, #0
d0042604:	d072      	beq.n	d00426ec <main+0x8f4>
d0042606:	f8df 8078 	ldr.w	r8, [pc, #120]	; d0042680 <main+0x888>
d004260a:	253c      	movs	r5, #60	; 0x3c
d004260c:	4f19      	ldr	r7, [pc, #100]	; (d0042674 <main+0x87c>)
d004260e:	461c      	mov	r4, r3
d0042610:	f8b8 0000 	ldrh.w	r0, [r8]
d0042614:	4e18      	ldr	r6, [pc, #96]	; (d0042678 <main+0x880>)
d0042616:	e037      	b.n	d0042688 <main+0x890>
d0042618:	d0044fa4 	.word	0xd0044fa4
d004261c:	d0044fa8 	.word	0xd0044fa8
d0042620:	d00461e0 	.word	0xd00461e0
d0042624:	0007a120 	.word	0x0007a120
d0042628:	d00455c4 	.word	0xd00455c4
d004262c:	2001f000 	.word	0x2001f000
d0042630:	d0044f80 	.word	0xd0044f80
d0042634:	d00448fc 	.word	0xd00448fc
d0042638:	d00404fd 	.word	0xd00404fd
d004263c:	d0044f20 	.word	0xd0044f20
d0042640:	d0044fa0 	.word	0xd0044fa0
d0042644:	d0044f68 	.word	0xd0044f68
d0042648:	d00455bc 	.word	0xd00455bc
d004264c:	10624dd3 	.word	0x10624dd3
d0042650:	d0044fac 	.word	0xd0044fac
d0042654:	d0044f54 	.word	0xd0044f54
d0042658:	88888889 	.word	0x88888889
d004265c:	d0044f4c 	.word	0xd0044f4c
d0042660:	d0044f64 	.word	0xd0044f64
d0042664:	d0044f50 	.word	0xd0044f50
d0042668:	d0044f60 	.word	0xd0044f60
d004266c:	d0044f5c 	.word	0xd0044f5c
d0042670:	d0044914 	.word	0xd0044914
d0042674:	d00451b6 	.word	0xd00451b6
d0042678:	d00451b8 	.word	0xd00451b8
d004267c:	d00451b4 	.word	0xd00451b4
d0042680:	d00455b8 	.word	0xd00455b8
d0042684:	2d00      	cmp	r5, #0
d0042686:	d031      	beq.n	d00426ec <main+0x8f4>
d0042688:	883b      	ldrh	r3, [r7, #0]
d004268a:	f5c0 6180 	rsb	r1, r0, #1024	; 0x400
d004268e:	4283      	cmp	r3, r0
d0042690:	eba3 0300 	sub.w	r3, r3, r0
d0042694:	b289      	uxth	r1, r1
d0042696:	4430      	add	r0, r6
d0042698:	bf88      	it	hi
d004269a:	b299      	uxthhi	r1, r3
d004269c:	4bad      	ldr	r3, [pc, #692]	; (d0042954 <main+0xb5c>)
d004269e:	42a9      	cmp	r1, r5
d00426a0:	7d1a      	ldrb	r2, [r3, #20]
d00426a2:	f893 c015 	ldrb.w	ip, [r3, #21]
d00426a6:	bf28      	it	cs
d00426a8:	4629      	movcs	r1, r5
d00426aa:	428c      	cmp	r4, r1
d00426ac:	bf28      	it	cs
d00426ae:	460c      	movcs	r4, r1
d00426b0:	7d99      	ldrb	r1, [r3, #22]
d00426b2:	ea42 230c 	orr.w	r3, r2, ip, lsl #8
d00426b6:	4aa7      	ldr	r2, [pc, #668]	; (d0042954 <main+0xb5c>)
d00426b8:	1b2d      	subs	r5, r5, r4
d00426ba:	7dd2      	ldrb	r2, [r2, #23]
d00426bc:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d00426c0:	4621      	mov	r1, r4
d00426c2:	b2ad      	uxth	r5, r5
d00426c4:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00426c8:	681b      	ldr	r3, [r3, #0]
d00426ca:	695b      	ldr	r3, [r3, #20]
d00426cc:	4798      	blx	r3
d00426ce:	f8b8 0000 	ldrh.w	r0, [r8]
d00426d2:	f8ba 3000 	ldrh.w	r3, [sl]
d00426d6:	4420      	add	r0, r4
d00426d8:	1b1c      	subs	r4, r3, r4
d00426da:	f3c0 0009 	ubfx	r0, r0, #0, #10
d00426de:	b2a4      	uxth	r4, r4
d00426e0:	f8a8 0000 	strh.w	r0, [r8]
d00426e4:	f8aa 4000 	strh.w	r4, [sl]
d00426e8:	2c00      	cmp	r4, #0
d00426ea:	d1cb      	bne.n	d0042684 <main+0x88c>
d00426ec:	4b9a      	ldr	r3, [pc, #616]	; (d0042958 <main+0xb60>)
d00426ee:	781b      	ldrb	r3, [r3, #0]
d00426f0:	2b07      	cmp	r3, #7
d00426f2:	d804      	bhi.n	d00426fe <main+0x906>
d00426f4:	4a98      	ldr	r2, [pc, #608]	; (d0042958 <main+0xb60>)
d00426f6:	7813      	ldrb	r3, [r2, #0]
d00426f8:	3301      	adds	r3, #1
d00426fa:	b2db      	uxtb	r3, r3
d00426fc:	7013      	strb	r3, [r2, #0]
d00426fe:	4b97      	ldr	r3, [pc, #604]	; (d004295c <main+0xb64>)
d0042700:	f8d3 1114 	ldr.w	r1, [r3, #276]	; 0x114
d0042704:	2900      	cmp	r1, #0
d0042706:	f000 839e 	beq.w	d0042e46 <main+0x104e>
d004270a:	f44f 7000 	mov.w	r0, #512	; 0x200
d004270e:	f242 7410 	movw	r4, #10000	; 0x2710
d0042712:	2500      	movs	r5, #0
d0042714:	f644 6220 	movw	r2, #20000	; 0x4e20
d0042718:	2300      	movs	r3, #0
d004271a:	fbe0 4501 	umlal	r4, r5, r0, r1
d004271e:	4620      	mov	r0, r4
d0042720:	4629      	mov	r1, r5
d0042722:	f000 fc2b 	bl	d0042f7c <__aeabi_uldivmod>
d0042726:	f5b0 3fa0 	cmp.w	r0, #81920	; 0x14000
d004272a:	bf28      	it	cs
d004272c:	f44f 30a0 	movcs.w	r0, #81920	; 0x14000
d0042730:	f5b0 6f80 	cmp.w	r0, #1024	; 0x400
d0042734:	bf38      	it	cc
d0042736:	f44f 6080 	movcc.w	r0, #1024	; 0x400
d004273a:	4a87      	ldr	r2, [pc, #540]	; (d0042958 <main+0xb60>)
d004273c:	4988      	ldr	r1, [pc, #544]	; (d0042960 <main+0xb68>)
d004273e:	7813      	ldrb	r3, [r2, #0]
d0042740:	6008      	str	r0, [r1, #0]
d0042742:	f003 06ff 	and.w	r6, r3, #255	; 0xff
d0042746:	b113      	cbz	r3, d004274e <main+0x956>
d0042748:	2300      	movs	r3, #0
d004274a:	2601      	movs	r6, #1
d004274c:	7013      	strb	r3, [r2, #0]
d004274e:	4c81      	ldr	r4, [pc, #516]	; (d0042954 <main+0xb5c>)
d0042750:	7b23      	ldrb	r3, [r4, #12]
d0042752:	7b62      	ldrb	r2, [r4, #13]
d0042754:	7ba1      	ldrb	r1, [r4, #14]
d0042756:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004275a:	7be2      	ldrb	r2, [r4, #15]
d004275c:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0042760:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0042764:	681b      	ldr	r3, [r3, #0]
d0042766:	68db      	ldr	r3, [r3, #12]
d0042768:	4798      	blx	r3
d004276a:	4a7e      	ldr	r2, [pc, #504]	; (d0042964 <main+0xb6c>)
d004276c:	7813      	ldrb	r3, [r2, #0]
d004276e:	f1c3 0301 	rsb	r3, r3, #1
d0042772:	b2db      	uxtb	r3, r3
d0042774:	7013      	strb	r3, [r2, #0]
d0042776:	2b00      	cmp	r3, #0
d0042778:	f000 8358 	beq.w	d0042e2c <main+0x1034>
d004277c:	7b23      	ldrb	r3, [r4, #12]
d004277e:	7b62      	ldrb	r2, [r4, #13]
d0042780:	4979      	ldr	r1, [pc, #484]	; (d0042968 <main+0xb70>)
d0042782:	7ba0      	ldrb	r0, [r4, #14]
d0042784:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0042788:	6809      	ldr	r1, [r1, #0]
d004278a:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
d004278e:	7be2      	ldrb	r2, [r4, #15]
d0042790:	4876      	ldr	r0, [pc, #472]	; (d004296c <main+0xb74>)
d0042792:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0042796:	4c6f      	ldr	r4, [pc, #444]	; (d0042954 <main+0xb5c>)
d0042798:	6800      	ldr	r0, [r0, #0]
d004279a:	681b      	ldr	r3, [r3, #0]
d004279c:	4627      	mov	r7, r4
d004279e:	6a5b      	ldr	r3, [r3, #36]	; 0x24
d00427a0:	4798      	blx	r3
d00427a2:	7b23      	ldrb	r3, [r4, #12]
d00427a4:	7b62      	ldrb	r2, [r4, #13]
d00427a6:	2000      	movs	r0, #0
d00427a8:	7ba1      	ldrb	r1, [r4, #14]
d00427aa:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d00427ae:	7be2      	ldrb	r2, [r4, #15]
d00427b0:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d00427b4:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00427b8:	685b      	ldr	r3, [r3, #4]
d00427ba:	68db      	ldr	r3, [r3, #12]
d00427bc:	4798      	blx	r3
d00427be:	7b20      	ldrb	r0, [r4, #12]
d00427c0:	7b61      	ldrb	r1, [r4, #13]
d00427c2:	2310      	movs	r3, #16
d00427c4:	7ba4      	ldrb	r4, [r4, #14]
d00427c6:	2260      	movs	r2, #96	; 0x60
d00427c8:	ea40 2001 	orr.w	r0, r0, r1, lsl #8
d00427cc:	7bfd      	ldrb	r5, [r7, #15]
d00427ce:	2122      	movs	r1, #34	; 0x22
d00427d0:	ea40 4404 	orr.w	r4, r0, r4, lsl #16
d00427d4:	f44f 70bd 	mov.w	r0, #378	; 0x17a
d00427d8:	ea44 6405 	orr.w	r4, r4, r5, lsl #24
d00427dc:	6864      	ldr	r4, [r4, #4]
d00427de:	6864      	ldr	r4, [r4, #4]
d00427e0:	47a0      	blx	r4
d00427e2:	7b3b      	ldrb	r3, [r7, #12]
d00427e4:	7b7a      	ldrb	r2, [r7, #13]
d00427e6:	2004      	movs	r0, #4
d00427e8:	7bb9      	ldrb	r1, [r7, #14]
d00427ea:	2402      	movs	r4, #2
d00427ec:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d00427f0:	7bfa      	ldrb	r2, [r7, #15]
d00427f2:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d00427f6:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00427fa:	685b      	ldr	r3, [r3, #4]
d00427fc:	68db      	ldr	r3, [r3, #12]
d00427fe:	4798      	blx	r3
d0042800:	7b39      	ldrb	r1, [r7, #12]
d0042802:	7b7a      	ldrb	r2, [r7, #13]
d0042804:	2301      	movs	r3, #1
d0042806:	7bbd      	ldrb	r5, [r7, #14]
d0042808:	ea41 2102 	orr.w	r1, r1, r2, lsl #8
d004280c:	7bf8      	ldrb	r0, [r7, #15]
d004280e:	aa14      	add	r2, sp, #80	; 0x50
d0042810:	ea41 4505 	orr.w	r5, r1, r5, lsl #16
d0042814:	2122      	movs	r1, #34	; 0x22
d0042816:	ea45 6500 	orr.w	r5, r5, r0, lsl #24
d004281a:	f44f 70c1 	mov.w	r0, #386	; 0x182
d004281e:	686d      	ldr	r5, [r5, #4]
d0042820:	9400      	str	r4, [sp, #0]
d0042822:	6b2c      	ldr	r4, [r5, #48]	; 0x30
d0042824:	47a0      	blx	r4
d0042826:	2e00      	cmp	r6, #0
d0042828:	f000 820a 	beq.w	d0042c40 <main+0xe48>
d004282c:	9b0d      	ldr	r3, [sp, #52]	; 0x34
d004282e:	f503 7091 	add.w	r0, r3, #290	; 0x122
d0042832:	4b4f      	ldr	r3, [pc, #316]	; (d0042970 <main+0xb78>)
d0042834:	f5b0 7fa0 	cmp.w	r0, #320	; 0x140
d0042838:	681b      	ldr	r3, [r3, #0]
d004283a:	9006      	str	r0, [sp, #24]
d004283c:	9303      	str	r3, [sp, #12]
d004283e:	f2c0 832a 	blt.w	d0042e96 <main+0x109e>
d0042842:	f5a0 70a0 	sub.w	r0, r0, #320	; 0x140
d0042846:	f5b0 7fa0 	cmp.w	r0, #320	; 0x140
d004284a:	dafa      	bge.n	d0042842 <main+0xa4a>
d004284c:	b280      	uxth	r0, r0
d004284e:	2201      	movs	r2, #1
d0042850:	2102      	movs	r1, #2
d0042852:	f04f 0800 	mov.w	r8, #0
d0042856:	f7fd ffeb 	bl	d0040830 <visualizer_back_rect_logical.constprop.0>
d004285a:	9f06      	ldr	r7, [sp, #24]
d004285c:	ea4f 15d8 	mov.w	r5, r8, lsr #7
d0042860:	f5b7 7fa0 	cmp.w	r7, #320	; 0x140
d0042864:	46ba      	mov	sl, r7
d0042866:	f105 0508 	add.w	r5, r5, #8
d004286a:	b2ad      	uxth	r5, r5
d004286c:	db04      	blt.n	d0042878 <main+0xa80>
d004286e:	f5aa 7aa0 	sub.w	sl, sl, #320	; 0x140
d0042872:	f5ba 7fa0 	cmp.w	sl, #320	; 0x140
d0042876:	dafa      	bge.n	d004286e <main+0xa76>
d0042878:	fa1f fa8a 	uxth.w	sl, sl
d004287c:	2402      	movs	r4, #2
d004287e:	f5ca 73a0 	rsb	r3, sl, #320	; 0x140
d0042882:	f8d9 2000 	ldr.w	r2, [r9]
d0042886:	2103      	movs	r1, #3
d0042888:	b29b      	uxth	r3, r3
d004288a:	42a3      	cmp	r3, r4
d004288c:	bf28      	it	cs
d004288e:	4623      	movcs	r3, r4
d0042890:	469b      	mov	fp, r3
d0042892:	b16a      	cbz	r2, d00428b0 <main+0xab8>
d0042894:	f8d9 0000 	ldr.w	r0, [r9]
d0042898:	f10b 32ff 	add.w	r2, fp, #4294967295	; 0xffffffff
d004289c:	f8b9 3008 	ldrh.w	r3, [r9, #8]
d00428a0:	b292      	uxth	r2, r2
d00428a2:	b29b      	uxth	r3, r3
d00428a4:	3201      	adds	r2, #1
d00428a6:	fb03 a305 	mla	r3, r3, r5, sl
d00428aa:	4418      	add	r0, r3
d00428ac:	f000 fcf8 	bl	d00432a0 <memset>
d00428b0:	f50a 7aa0 	add.w	sl, sl, #320	; 0x140
d00428b4:	f8d9 3000 	ldr.w	r3, [r9]
d00428b8:	fa1f fa8a 	uxth.w	sl, sl
d00428bc:	b1bb      	cbz	r3, d00428ee <main+0xaf6>
d00428be:	eb0b 020a 	add.w	r2, fp, sl
d00428c2:	f5ca 7120 	rsb	r1, sl, #640	; 0x280
d00428c6:	465b      	mov	r3, fp
d00428c8:	f5b2 7f20 	cmp.w	r2, #640	; 0x280
d00428cc:	d900      	bls.n	d00428d0 <main+0xad8>
d00428ce:	b28b      	uxth	r3, r1
d00428d0:	f8d9 0000 	ldr.w	r0, [r9]
d00428d4:	3b01      	subs	r3, #1
d00428d6:	f8b9 c008 	ldrh.w	ip, [r9, #8]
d00428da:	2103      	movs	r1, #3
d00428dc:	b29a      	uxth	r2, r3
d00428de:	fa1f fc8c 	uxth.w	ip, ip
d00428e2:	3201      	adds	r2, #1
d00428e4:	fb0c aa05 	mla	sl, ip, r5, sl
d00428e8:	4450      	add	r0, sl
d00428ea:	f000 fcd9 	bl	d00432a0 <memset>
d00428ee:	eba4 040b 	sub.w	r4, r4, fp
d00428f2:	f04f 0a00 	mov.w	sl, #0
d00428f6:	b2a4      	uxth	r4, r4
d00428f8:	2c00      	cmp	r4, #0
d00428fa:	d1c0      	bne.n	d004287e <main+0xa86>
d00428fc:	f508 58ae 	add.w	r8, r8, #5568	; 0x15c0
d0042900:	f64e 7340 	movw	r3, #61248	; 0xef40
d0042904:	4598      	cmp	r8, r3
d0042906:	d1a9      	bne.n	d004285c <main+0xa64>
d0042908:	f44f 78e8 	mov.w	r8, #464	; 0x1d0
d004290c:	f1aa 3a55 	sub.w	sl, sl, #1431655765	; 0x55555555
d0042910:	fbaa 2306 	umull	r2, r3, sl, r6
d0042914:	08db      	lsrs	r3, r3, #3
d0042916:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d004291a:	eba6 0383 	sub.w	r3, r6, r3, lsl #2
d004291e:	b2db      	uxtb	r3, r3
d0042920:	3b01      	subs	r3, #1
d0042922:	2b09      	cmp	r3, #9
d0042924:	d862      	bhi.n	d00429ec <main+0xbf4>
d0042926:	e8df f003 	tbb	[pc, r3]
d004292a:	6105      	.short	0x6105
d004292c:	05616105 	.word	0x05616105
d0042930:	05610561 	.word	0x05610561
d0042934:	ea4f 17d8 	mov.w	r7, r8, lsr #7
d0042938:	9d06      	ldr	r5, [sp, #24]
d004293a:	3708      	adds	r7, #8
d004293c:	f5b5 7fa0 	cmp.w	r5, #320	; 0x140
d0042940:	b2bf      	uxth	r7, r7
d0042942:	db04      	blt.n	d004294e <main+0xb56>
d0042944:	f5a5 75a0 	sub.w	r5, r5, #320	; 0x140
d0042948:	f5b5 7fa0 	cmp.w	r5, #320	; 0x140
d004294c:	dafa      	bge.n	d0042944 <main+0xb4c>
d004294e:	b2ad      	uxth	r5, r5
d0042950:	2402      	movs	r4, #2
d0042952:	e010      	b.n	d0042976 <main+0xb7e>
d0042954:	2001f000 	.word	0x2001f000
d0042958:	d00461cc 	.word	0xd00461cc
d004295c:	d00461e0 	.word	0xd00461e0
d0042960:	d00455c4 	.word	0xd00455c4
d0042964:	d0044f58 	.word	0xd0044f58
d0042968:	d0044fa0 	.word	0xd0044fa0
d004296c:	d0044f80 	.word	0xd0044f80
d0042970:	d00461c8 	.word	0xd00461c8
d0042974:	2500      	movs	r5, #0
d0042976:	f5c5 73a0 	rsb	r3, r5, #320	; 0x140
d004297a:	f8d9 2000 	ldr.w	r2, [r9]
d004297e:	b29b      	uxth	r3, r3
d0042980:	42a3      	cmp	r3, r4
d0042982:	bf28      	it	cs
d0042984:	4623      	movcs	r3, r4
d0042986:	469b      	mov	fp, r3
d0042988:	b16a      	cbz	r2, d00429a6 <main+0xbae>
d004298a:	f8d9 0000 	ldr.w	r0, [r9]
d004298e:	1e5a      	subs	r2, r3, #1
d0042990:	f8b9 3008 	ldrh.w	r3, [r9, #8]
d0042994:	2102      	movs	r1, #2
d0042996:	b292      	uxth	r2, r2
d0042998:	b29b      	uxth	r3, r3
d004299a:	3201      	adds	r2, #1
d004299c:	fb03 5307 	mla	r3, r3, r7, r5
d00429a0:	4418      	add	r0, r3
d00429a2:	f000 fc7d 	bl	d00432a0 <memset>
d00429a6:	f8d9 3000 	ldr.w	r3, [r9]
d00429aa:	b1d3      	cbz	r3, d00429e2 <main+0xbea>
d00429ac:	f505 75a0 	add.w	r5, r5, #320	; 0x140
d00429b0:	b2ad      	uxth	r5, r5
d00429b2:	eb0b 0305 	add.w	r3, fp, r5
d00429b6:	f5b3 7f20 	cmp.w	r3, #640	; 0x280
d00429ba:	f240 80f1 	bls.w	d0042ba0 <main+0xda8>
d00429be:	f5c5 7320 	rsb	r3, r5, #640	; 0x280
d00429c2:	b29b      	uxth	r3, r3
d00429c4:	f8d9 0000 	ldr.w	r0, [r9]
d00429c8:	3b01      	subs	r3, #1
d00429ca:	f8b9 c008 	ldrh.w	ip, [r9, #8]
d00429ce:	2102      	movs	r1, #2
d00429d0:	b29a      	uxth	r2, r3
d00429d2:	fa1f f38c 	uxth.w	r3, ip
d00429d6:	3201      	adds	r2, #1
d00429d8:	fb03 5507 	mla	r5, r3, r7, r5
d00429dc:	4428      	add	r0, r5
d00429de:	f000 fc5f 	bl	d00432a0 <memset>
d00429e2:	eba4 040b 	sub.w	r4, r4, fp
d00429e6:	b2a4      	uxth	r4, r4
d00429e8:	2c00      	cmp	r4, #0
d00429ea:	d1c3      	bne.n	d0042974 <main+0xb7c>
d00429ec:	3601      	adds	r6, #1
d00429ee:	f508 78e8 	add.w	r8, r8, #464	; 0x1d0
d00429f2:	b2f6      	uxtb	r6, r6
d00429f4:	2e80      	cmp	r6, #128	; 0x80
d00429f6:	d18b      	bne.n	d0042910 <main+0xb18>
d00429f8:	9d03      	ldr	r5, [sp, #12]
d00429fa:	9c06      	ldr	r4, [sp, #24]
d00429fc:	1cab      	adds	r3, r5, #2
d00429fe:	f8df a1f8 	ldr.w	sl, [pc, #504]	; d0042bf8 <main+0xe00>
d0042a02:	f8df b1f8 	ldr.w	fp, [pc, #504]	; d0042bfc <main+0xe04>
d0042a06:	9303      	str	r3, [sp, #12]
d0042a08:	4b79      	ldr	r3, [pc, #484]	; (d0042bf0 <main+0xdf8>)
d0042a0a:	022e      	lsls	r6, r5, #8
d0042a0c:	ea4f 6815 	mov.w	r8, r5, lsr #24
d0042a10:	681f      	ldr	r7, [r3, #0]
d0042a12:	2f00      	cmp	r7, #0
d0042a14:	bf08      	it	eq
d0042a16:	f44f 5780 	moveq.w	r7, #4096	; 0x1000
d0042a1a:	f116 33ff 	adds.w	r3, r6, #4294967295	; 0xffffffff
d0042a1e:	9308      	str	r3, [sp, #32]
d0042a20:	f148 33ff 	adc.w	r3, r8, #4294967295	; 0xffffffff
d0042a24:	463a      	mov	r2, r7
d0042a26:	9309      	str	r3, [sp, #36]	; 0x24
d0042a28:	2300      	movs	r3, #0
d0042a2a:	e9dd 0108 	ldrd	r0, r1, [sp, #32]
d0042a2e:	19c0      	adds	r0, r0, r7
d0042a30:	f141 0100 	adc.w	r1, r1, #0
d0042a34:	f000 faa2 	bl	d0042f7c <__aeabi_uldivmod>
d0042a38:	f516 7380 	adds.w	r3, r6, #256	; 0x100
d0042a3c:	460a      	mov	r2, r1
d0042a3e:	930a      	str	r3, [sp, #40]	; 0x28
d0042a40:	f148 0100 	adc.w	r1, r8, #0
d0042a44:	4603      	mov	r3, r0
d0042a46:	910b      	str	r1, [sp, #44]	; 0x2c
d0042a48:	fba3 0107 	umull	r0, r1, r3, r7
d0042a4c:	fb07 1102 	mla	r1, r7, r2, r1
d0042a50:	e9dd 670a 	ldrd	r6, r7, [sp, #40]	; 0x28
d0042a54:	42b9      	cmp	r1, r7
d0042a56:	bf08      	it	eq
d0042a58:	42b0      	cmpeq	r0, r6
d0042a5a:	d21a      	bcs.n	d0042a92 <main+0xc9a>
d0042a5c:	f003 0201 	and.w	r2, r3, #1
d0042a60:	f5b4 7fa0 	cmp.w	r4, #320	; 0x140
d0042a64:	4626      	mov	r6, r4
d0042a66:	f1c2 0203 	rsb	r2, r2, #3
d0042a6a:	b2d2      	uxtb	r2, r2
d0042a6c:	f2c0 81fc 	blt.w	d0042e68 <main+0x1070>
d0042a70:	4620      	mov	r0, r4
d0042a72:	f5a0 70a0 	sub.w	r0, r0, #320	; 0x140
d0042a76:	f5b0 7fa0 	cmp.w	r0, #320	; 0x140
d0042a7a:	dafa      	bge.n	d0042a72 <main+0xc7a>
d0042a7c:	b280      	uxth	r0, r0
d0042a7e:	2101      	movs	r1, #1
d0042a80:	9304      	str	r3, [sp, #16]
d0042a82:	f7fd fed5 	bl	d0040830 <visualizer_back_rect_logical.constprop.0>
d0042a86:	9b04      	ldr	r3, [sp, #16]
d0042a88:	f003 0203 	and.w	r2, r3, #3
d0042a8c:	2a00      	cmp	r2, #0
d0042a8e:	f000 8147 	beq.w	d0042d20 <main+0xf28>
d0042a92:	3501      	adds	r5, #1
d0042a94:	9b03      	ldr	r3, [sp, #12]
d0042a96:	3401      	adds	r4, #1
d0042a98:	429d      	cmp	r5, r3
d0042a9a:	d1b5      	bne.n	d0042a08 <main+0xc10>
d0042a9c:	f8df a160 	ldr.w	sl, [pc, #352]	; d0042c00 <main+0xe08>
d0042aa0:	f8cd a010 	str.w	sl, [sp, #16]
d0042aa4:	f8cd a04c 	str.w	sl, [sp, #76]	; 0x4c
d0042aa8:	e006      	b.n	d0042ab8 <main+0xcc0>
d0042aaa:	9b04      	ldr	r3, [sp, #16]
d0042aac:	4a51      	ldr	r2, [pc, #324]	; (d0042bf4 <main+0xdfc>)
d0042aae:	3310      	adds	r3, #16
d0042ab0:	4293      	cmp	r3, r2
d0042ab2:	9304      	str	r3, [sp, #16]
d0042ab4:	f000 80a6 	beq.w	d0042c04 <main+0xe0c>
d0042ab8:	9b04      	ldr	r3, [sp, #16]
d0042aba:	7b1b      	ldrb	r3, [r3, #12]
d0042abc:	2b00      	cmp	r3, #0
d0042abe:	d0f4      	beq.n	d0042aaa <main+0xcb2>
d0042ac0:	9a04      	ldr	r2, [sp, #16]
d0042ac2:	7ad3      	ldrb	r3, [r2, #11]
d0042ac4:	2b00      	cmp	r3, #0
d0042ac6:	d0f0      	beq.n	d0042aaa <main+0xcb2>
d0042ac8:	7a13      	ldrb	r3, [r2, #8]
d0042aca:	f892 8009 	ldrb.w	r8, [r2, #9]
d0042ace:	f44f 72e8 	mov.w	r2, #464	; 0x1d0
d0042ad2:	9c06      	ldr	r4, [sp, #24]
d0042ad4:	fb02 f303 	mul.w	r3, r2, r3
d0042ad8:	f108 0820 	add.w	r8, r8, #32
d0042adc:	f5b4 7fa0 	cmp.w	r4, #320	; 0x140
d0042ae0:	ea4f 13d3 	mov.w	r3, r3, lsr #7
d0042ae4:	fa5f f888 	uxtb.w	r8, r8
d0042ae8:	f103 0208 	add.w	r2, r3, #8
d0042aec:	9205      	str	r2, [sp, #20]
d0042aee:	9207      	str	r2, [sp, #28]
d0042af0:	db04      	blt.n	d0042afc <main+0xd04>
d0042af2:	f5a4 74a0 	sub.w	r4, r4, #320	; 0x140
d0042af6:	f5b4 7fa0 	cmp.w	r4, #320	; 0x140
d0042afa:	dafa      	bge.n	d0042af2 <main+0xcfa>
d0042afc:	9b05      	ldr	r3, [sp, #20]
d0042afe:	b2a4      	uxth	r4, r4
d0042b00:	2502      	movs	r5, #2
d0042b02:	f5b3 7fee 	cmp.w	r3, #476	; 0x1dc
d0042b06:	f5c3 73f0 	rsb	r3, r3, #480	; 0x1e0
d0042b0a:	bf94      	ite	ls
d0042b0c:	2704      	movls	r7, #4
d0042b0e:	461f      	movhi	r7, r3
d0042b10:	e00b      	b.n	d0042b2a <main+0xd32>
d0042b12:	9b05      	ldr	r3, [sp, #20]
d0042b14:	f5b3 7ff0 	cmp.w	r3, #480	; 0x1e0
d0042b18:	d344      	bcc.n	d0042ba4 <main+0xdac>
d0042b1a:	f8d9 3000 	ldr.w	r3, [r9]
d0042b1e:	9b03      	ldr	r3, [sp, #12]
d0042b20:	1aed      	subs	r5, r5, r3
d0042b22:	b2ad      	uxth	r5, r5
d0042b24:	2d00      	cmp	r5, #0
d0042b26:	d0c0      	beq.n	d0042aaa <main+0xcb2>
d0042b28:	2400      	movs	r4, #0
d0042b2a:	f5c4 73a0 	rsb	r3, r4, #320	; 0x140
d0042b2e:	f8d9 2000 	ldr.w	r2, [r9]
d0042b32:	b29b      	uxth	r3, r3
d0042b34:	42ab      	cmp	r3, r5
d0042b36:	bf28      	it	cs
d0042b38:	462b      	movcs	r3, r5
d0042b3a:	9303      	str	r3, [sp, #12]
d0042b3c:	2a00      	cmp	r2, #0
d0042b3e:	d1e8      	bne.n	d0042b12 <main+0xd1a>
d0042b40:	f8d9 3000 	ldr.w	r3, [r9]
d0042b44:	2b00      	cmp	r3, #0
d0042b46:	d0ea      	beq.n	d0042b1e <main+0xd26>
d0042b48:	9b05      	ldr	r3, [sp, #20]
d0042b4a:	f5b3 7ff0 	cmp.w	r3, #480	; 0x1e0
d0042b4e:	d2e6      	bcs.n	d0042b1e <main+0xd26>
d0042b50:	f504 72a0 	add.w	r2, r4, #320	; 0x140
d0042b54:	9b03      	ldr	r3, [sp, #12]
d0042b56:	b292      	uxth	r2, r2
d0042b58:	4413      	add	r3, r2
d0042b5a:	f5b3 7f20 	cmp.w	r3, #640	; 0x280
d0042b5e:	d943      	bls.n	d0042be8 <main+0xdf0>
d0042b60:	f5c2 7a20 	rsb	sl, r2, #640	; 0x280
d0042b64:	fa1f fa8a 	uxth.w	sl, sl
d0042b68:	f8d9 3000 	ldr.w	r3, [r9]
d0042b6c:	f10a 3aff 	add.w	sl, sl, #4294967295	; 0xffffffff
d0042b70:	f8b9 6008 	ldrh.w	r6, [r9, #8]
d0042b74:	2400      	movs	r4, #0
d0042b76:	9905      	ldr	r1, [sp, #20]
d0042b78:	fa1f fa8a 	uxth.w	sl, sl
d0042b7c:	b2b6      	uxth	r6, r6
d0042b7e:	f10a 0a01 	add.w	sl, sl, #1
d0042b82:	fb06 2201 	mla	r2, r6, r1, r2
d0042b86:	4413      	add	r3, r2
d0042b88:	3401      	adds	r4, #1
d0042b8a:	4618      	mov	r0, r3
d0042b8c:	4652      	mov	r2, sl
d0042b8e:	4641      	mov	r1, r8
d0042b90:	f000 fb86 	bl	d00432a0 <memset>
d0042b94:	4603      	mov	r3, r0
d0042b96:	b220      	sxth	r0, r4
d0042b98:	4433      	add	r3, r6
d0042b9a:	42b8      	cmp	r0, r7
d0042b9c:	dbf4      	blt.n	d0042b88 <main+0xd90>
d0042b9e:	e7be      	b.n	d0042b1e <main+0xd26>
d0042ba0:	465b      	mov	r3, fp
d0042ba2:	e70f      	b.n	d00429c4 <main+0xbcc>
d0042ba4:	f8d9 3000 	ldr.w	r3, [r9]
d0042ba8:	2600      	movs	r6, #0
d0042baa:	9a03      	ldr	r2, [sp, #12]
d0042bac:	f8b9 a008 	ldrh.w	sl, [r9, #8]
d0042bb0:	f102 3bff 	add.w	fp, r2, #4294967295	; 0xffffffff
d0042bb4:	9a07      	ldr	r2, [sp, #28]
d0042bb6:	fa1f fa8a 	uxth.w	sl, sl
d0042bba:	fa1f fb8b 	uxth.w	fp, fp
d0042bbe:	fb0a 4202 	mla	r2, sl, r2, r4
d0042bc2:	f10b 0b01 	add.w	fp, fp, #1
d0042bc6:	4413      	add	r3, r2
d0042bc8:	3601      	adds	r6, #1
d0042bca:	4618      	mov	r0, r3
d0042bcc:	465a      	mov	r2, fp
d0042bce:	4641      	mov	r1, r8
d0042bd0:	f000 fb66 	bl	d00432a0 <memset>
d0042bd4:	4603      	mov	r3, r0
d0042bd6:	b230      	sxth	r0, r6
d0042bd8:	4453      	add	r3, sl
d0042bda:	4287      	cmp	r7, r0
d0042bdc:	dcf4      	bgt.n	d0042bc8 <main+0xdd0>
d0042bde:	f8d9 3000 	ldr.w	r3, [r9]
d0042be2:	2b00      	cmp	r3, #0
d0042be4:	d1b4      	bne.n	d0042b50 <main+0xd58>
d0042be6:	e79a      	b.n	d0042b1e <main+0xd26>
d0042be8:	f8dd a00c 	ldr.w	sl, [sp, #12]
d0042bec:	e7bc      	b.n	d0042b68 <main+0xd70>
d0042bee:	bf00      	nop
d0042bf0:	d00455c4 	.word	0xd00455c4
d0042bf4:	d00461c8 	.word	0xd00461c8
d0042bf8:	d0044f40 	.word	0xd0044f40
d0042bfc:	d0044928 	.word	0xd0044928
d0042c00:	d00455c8 	.word	0xd00455c8
d0042c04:	4aab      	ldr	r2, [pc, #684]	; (d0042eb4 <main+0x10bc>)
d0042c06:	48ac      	ldr	r0, [pc, #688]	; (d0042eb8 <main+0x10c0>)
d0042c08:	6811      	ldr	r1, [r2, #0]
d0042c0a:	6803      	ldr	r3, [r0, #0]
d0042c0c:	3101      	adds	r1, #1
d0042c0e:	f8dd a04c 	ldr.w	sl, [sp, #76]	; 0x4c
d0042c12:	3302      	adds	r3, #2
d0042c14:	6011      	str	r1, [r2, #0]
d0042c16:	6003      	str	r3, [r0, #0]
d0042c18:	f89a 300c 	ldrb.w	r3, [sl, #12]
d0042c1c:	b15b      	cbz	r3, d0042c36 <main+0xe3e>
d0042c1e:	f89a 200b 	ldrb.w	r2, [sl, #11]
d0042c22:	b942      	cbnz	r2, d0042c36 <main+0xe3e>
d0042c24:	f8da 3004 	ldr.w	r3, [sl, #4]
d0042c28:	1acb      	subs	r3, r1, r3
d0042c2a:	005b      	lsls	r3, r3, #1
d0042c2c:	f5b3 7f8c 	cmp.w	r3, #280	; 0x118
d0042c30:	bf88      	it	hi
d0042c32:	f88a 200c 	strbhi.w	r2, [sl, #12]
d0042c36:	f10a 0a10 	add.w	sl, sl, #16
d0042c3a:	4ba0      	ldr	r3, [pc, #640]	; (d0042ebc <main+0x10c4>)
d0042c3c:	459a      	cmp	sl, r3
d0042c3e:	d1eb      	bne.n	d0042c18 <main+0xe20>
d0042c40:	4c9f      	ldr	r4, [pc, #636]	; (d0042ec0 <main+0x10c8>)
d0042c42:	9d0d      	ldr	r5, [sp, #52]	; 0x34
d0042c44:	7b23      	ldrb	r3, [r4, #12]
d0042c46:	7b62      	ldrb	r2, [r4, #13]
d0042c48:	4629      	mov	r1, r5
d0042c4a:	7ba0      	ldrb	r0, [r4, #14]
d0042c4c:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0042c50:	7be2      	ldrb	r2, [r4, #15]
d0042c52:	9f12      	ldr	r7, [sp, #72]	; 0x48
d0042c54:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
d0042c58:	2000      	movs	r0, #0
d0042c5a:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0042c5e:	681b      	ldr	r3, [r3, #0]
d0042c60:	6b1b      	ldr	r3, [r3, #48]	; 0x30
d0042c62:	4798      	blx	r3
d0042c64:	7b23      	ldrb	r3, [r4, #12]
d0042c66:	7b62      	ldrb	r2, [r4, #13]
d0042c68:	4628      	mov	r0, r5
d0042c6a:	7ba1      	ldrb	r1, [r4, #14]
d0042c6c:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0042c70:	3002      	adds	r0, #2
d0042c72:	7be2      	ldrb	r2, [r4, #15]
d0042c74:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0042c78:	b280      	uxth	r0, r0
d0042c7a:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0042c7e:	f5b0 7fa0 	cmp.w	r0, #320	; 0x140
d0042c82:	681b      	ldr	r3, [r3, #0]
d0042c84:	bf34      	ite	cc
d0042c86:	4602      	movcc	r2, r0
d0042c88:	2200      	movcs	r2, #0
d0042c8a:	681b      	ldr	r3, [r3, #0]
d0042c8c:	920d      	str	r2, [sp, #52]	; 0x34
d0042c8e:	4798      	blx	r3
d0042c90:	4b8c      	ldr	r3, [pc, #560]	; (d0042ec4 <main+0x10cc>)
d0042c92:	f893 3120 	ldrb.w	r3, [r3, #288]	; 0x120
d0042c96:	2b00      	cmp	r3, #0
d0042c98:	f47f ac4c 	bne.w	d0042534 <main+0x73c>
d0042c9c:	4b8a      	ldr	r3, [pc, #552]	; (d0042ec8 <main+0x10d0>)
d0042c9e:	2500      	movs	r5, #0
d0042ca0:	9a0c      	ldr	r2, [sp, #48]	; 0x30
d0042ca2:	6819      	ldr	r1, [r3, #0]
d0042ca4:	4b89      	ldr	r3, [pc, #548]	; (d0042ecc <main+0x10d4>)
d0042ca6:	4c8a      	ldr	r4, [pc, #552]	; (d0042ed0 <main+0x10d8>)
d0042ca8:	6818      	ldr	r0, [r3, #0]
d0042caa:	f7fe ff1f 	bl	d0041aec <setup>
d0042cae:	4b85      	ldr	r3, [pc, #532]	; (d0042ec4 <main+0x10cc>)
d0042cb0:	f44f 7000 	mov.w	r0, #512	; 0x200
d0042cb4:	f644 6220 	movw	r2, #20000	; 0x4e20
d0042cb8:	f8d3 1114 	ldr.w	r1, [r3, #276]	; 0x114
d0042cbc:	2300      	movs	r3, #0
d0042cbe:	2900      	cmp	r1, #0
d0042cc0:	bf08      	it	eq
d0042cc2:	4621      	moveq	r1, r4
d0042cc4:	f242 7410 	movw	r4, #10000	; 0x2710
d0042cc8:	fbe0 4501 	umlal	r4, r5, r0, r1
d0042ccc:	4620      	mov	r0, r4
d0042cce:	4629      	mov	r1, r5
d0042cd0:	f000 f954 	bl	d0042f7c <__aeabi_uldivmod>
d0042cd4:	f5b0 3fa0 	cmp.w	r0, #81920	; 0x14000
d0042cd8:	4b7e      	ldr	r3, [pc, #504]	; (d0042ed4 <main+0x10dc>)
d0042cda:	bf28      	it	cs
d0042cdc:	f44f 30a0 	movcs.w	r0, #81920	; 0x14000
d0042ce0:	f8d9 2000 	ldr.w	r2, [r9]
d0042ce4:	f5b0 6f80 	cmp.w	r0, #1024	; 0x400
d0042ce8:	bf38      	it	cc
d0042cea:	f44f 6080 	movcc.w	r0, #1024	; 0x400
d0042cee:	6018      	str	r0, [r3, #0]
d0042cf0:	b18a      	cbz	r2, d0042d16 <main+0xf1e>
d0042cf2:	f8d9 6000 	ldr.w	r6, [r9]
d0042cf6:	f44f 74f0 	mov.w	r4, #480	; 0x1e0
d0042cfa:	f8b9 5008 	ldrh.w	r5, [r9, #8]
d0042cfe:	b2ad      	uxth	r5, r5
d0042d00:	3c01      	subs	r4, #1
d0042d02:	4630      	mov	r0, r6
d0042d04:	f44f 7220 	mov.w	r2, #640	; 0x280
d0042d08:	2101      	movs	r1, #1
d0042d0a:	b2a4      	uxth	r4, r4
d0042d0c:	442e      	add	r6, r5
d0042d0e:	f000 fac7 	bl	d00432a0 <memset>
d0042d12:	2c00      	cmp	r4, #0
d0042d14:	d1f4      	bne.n	d0042d00 <main+0xf08>
d0042d16:	f7fd fcb3 	bl	d0040680 <visualizer_draw_grid_full>
d0042d1a:	2300      	movs	r3, #0
d0042d1c:	930d      	str	r3, [sp, #52]	; 0x34
d0042d1e:	e409      	b.n	d0042534 <main+0x73c>
d0042d20:	089a      	lsrs	r2, r3, #2
d0042d22:	4659      	mov	r1, fp
d0042d24:	4650      	mov	r0, sl
d0042d26:	f000 fcc9 	bl	d00436bc <siprintf>
d0042d2a:	4620      	mov	r0, r4
d0042d2c:	f5a0 70a0 	sub.w	r0, r0, #320	; 0x140
d0042d30:	f5b0 7fa0 	cmp.w	r0, #320	; 0x140
d0042d34:	dafa      	bge.n	d0042d2c <main+0xf34>
d0042d36:	b280      	uxth	r0, r0
d0042d38:	2203      	movs	r2, #3
d0042d3a:	2105      	movs	r1, #5
d0042d3c:	f7fd fd78 	bl	d0040830 <visualizer_back_rect_logical.constprop.0>
d0042d40:	f5a6 76a0 	sub.w	r6, r6, #320	; 0x140
d0042d44:	f5b6 7fa0 	cmp.w	r6, #320	; 0x140
d0042d48:	dafa      	bge.n	d0042d40 <main+0xf48>
d0042d4a:	485d      	ldr	r0, [pc, #372]	; (d0042ec0 <main+0x10c8>)
d0042d4c:	f04f 0802 	mov.w	r8, #2
d0042d50:	7b03      	ldrb	r3, [r0, #12]
d0042d52:	7b42      	ldrb	r2, [r0, #13]
d0042d54:	7b81      	ldrb	r1, [r0, #14]
d0042d56:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0042d5a:	7bc2      	ldrb	r2, [r0, #15]
d0042d5c:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0042d60:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0042d64:	681b      	ldr	r3, [r3, #0]
d0042d66:	6b5b      	ldr	r3, [r3, #52]	; 0x34
d0042d68:	4798      	blx	r3
d0042d6a:	4955      	ldr	r1, [pc, #340]	; (d0042ec0 <main+0x10c8>)
d0042d6c:	4607      	mov	r7, r0
d0042d6e:	485a      	ldr	r0, [pc, #360]	; (d0042ed8 <main+0x10e0>)
d0042d70:	7b0b      	ldrb	r3, [r1, #12]
d0042d72:	7b4a      	ldrb	r2, [r1, #13]
d0042d74:	ee08 7a10 	vmov	s16, r7
d0042d78:	460f      	mov	r7, r1
d0042d7a:	7b89      	ldrb	r1, [r1, #14]
d0042d7c:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0042d80:	7bfa      	ldrb	r2, [r7, #15]
d0042d82:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0042d86:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0042d8a:	681b      	ldr	r3, [r3, #0]
d0042d8c:	699b      	ldr	r3, [r3, #24]
d0042d8e:	4798      	blx	r3
d0042d90:	7b3b      	ldrb	r3, [r7, #12]
d0042d92:	7b7a      	ldrb	r2, [r7, #13]
d0042d94:	2006      	movs	r0, #6
d0042d96:	7bb9      	ldrb	r1, [r7, #14]
d0042d98:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0042d9c:	7bfa      	ldrb	r2, [r7, #15]
d0042d9e:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0042da2:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0042da6:	685b      	ldr	r3, [r3, #4]
d0042da8:	68db      	ldr	r3, [r3, #12]
d0042daa:	4798      	blx	r3
d0042dac:	7b38      	ldrb	r0, [r7, #12]
d0042dae:	7b79      	ldrb	r1, [r7, #13]
d0042db0:	4652      	mov	r2, sl
d0042db2:	f897 c00e 	ldrb.w	ip, [r7, #14]
d0042db6:	2301      	movs	r3, #1
d0042db8:	ea40 2001 	orr.w	r0, r0, r1, lsl #8
d0042dbc:	f897 e00f 	ldrb.w	lr, [r7, #15]
d0042dc0:	f1a6 010e 	sub.w	r1, r6, #14
d0042dc4:	ea40 4c0c 	orr.w	ip, r0, ip, lsl #16
d0042dc8:	2008      	movs	r0, #8
d0042dca:	ea4c 6c0e 	orr.w	ip, ip, lr, lsl #24
d0042dce:	f8dc c004 	ldr.w	ip, [ip, #4]
d0042dd2:	f8cd 8000 	str.w	r8, [sp]
d0042dd6:	f8dc 7030 	ldr.w	r7, [ip, #48]	; 0x30
d0042dda:	47b8      	blx	r7
d0042ddc:	4b38      	ldr	r3, [pc, #224]	; (d0042ec0 <main+0x10c8>)
d0042dde:	f506 7199 	add.w	r1, r6, #306	; 0x132
d0042de2:	7b18      	ldrb	r0, [r3, #12]
d0042de4:	461f      	mov	r7, r3
d0042de6:	7b5a      	ldrb	r2, [r3, #13]
d0042de8:	b289      	uxth	r1, r1
d0042dea:	7b9e      	ldrb	r6, [r3, #14]
d0042dec:	2301      	movs	r3, #1
d0042dee:	ea40 2002 	orr.w	r0, r0, r2, lsl #8
d0042df2:	f897 c00f 	ldrb.w	ip, [r7, #15]
d0042df6:	4652      	mov	r2, sl
d0042df8:	ea40 4606 	orr.w	r6, r0, r6, lsl #16
d0042dfc:	2008      	movs	r0, #8
d0042dfe:	ea46 660c 	orr.w	r6, r6, ip, lsl #24
d0042e02:	6876      	ldr	r6, [r6, #4]
d0042e04:	f8cd 8000 	str.w	r8, [sp]
d0042e08:	6b36      	ldr	r6, [r6, #48]	; 0x30
d0042e0a:	47b0      	blx	r6
d0042e0c:	7b3b      	ldrb	r3, [r7, #12]
d0042e0e:	7b7a      	ldrb	r2, [r7, #13]
d0042e10:	ee18 0a10 	vmov	r0, s16
d0042e14:	7bb9      	ldrb	r1, [r7, #14]
d0042e16:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0042e1a:	7bfa      	ldrb	r2, [r7, #15]
d0042e1c:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0042e20:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0042e24:	681b      	ldr	r3, [r3, #0]
d0042e26:	699b      	ldr	r3, [r3, #24]
d0042e28:	4798      	blx	r3
d0042e2a:	e632      	b.n	d0042a92 <main+0xc9a>
d0042e2c:	4924      	ldr	r1, [pc, #144]	; (d0042ec0 <main+0x10c8>)
d0042e2e:	7b0b      	ldrb	r3, [r1, #12]
d0042e30:	7b4a      	ldrb	r2, [r1, #13]
d0042e32:	7b88      	ldrb	r0, [r1, #14]
d0042e34:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0042e38:	7bca      	ldrb	r2, [r1, #15]
d0042e3a:	4928      	ldr	r1, [pc, #160]	; (d0042edc <main+0x10e4>)
d0042e3c:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
d0042e40:	4827      	ldr	r0, [pc, #156]	; (d0042ee0 <main+0x10e8>)
d0042e42:	6809      	ldr	r1, [r1, #0]
d0042e44:	e4a5      	b.n	d0042792 <main+0x99a>
d0042e46:	f44f 5048 	mov.w	r0, #12800	; 0x3200
d0042e4a:	e476      	b.n	d004273a <main+0x942>
d0042e4c:	4b25      	ldr	r3, [pc, #148]	; (d0042ee4 <main+0x10ec>)
d0042e4e:	601a      	str	r2, [r3, #0]
d0042e50:	f7ff bb9d 	b.w	d004258e <main+0x796>
d0042e54:	4a24      	ldr	r2, [pc, #144]	; (d0042ee8 <main+0x10f0>)
d0042e56:	4b25      	ldr	r3, [pc, #148]	; (d0042eec <main+0x10f4>)
d0042e58:	4825      	ldr	r0, [pc, #148]	; (d0042ef0 <main+0x10f8>)
d0042e5a:	4926      	ldr	r1, [pc, #152]	; (d0042ef4 <main+0x10fc>)
d0042e5c:	6812      	ldr	r2, [r2, #0]
d0042e5e:	681b      	ldr	r3, [r3, #0]
d0042e60:	6800      	ldr	r0, [r0, #0]
d0042e62:	680c      	ldr	r4, [r1, #0]
d0042e64:	f7ff bbba 	b.w	d00425dc <main+0x7e4>
d0042e68:	b2a7      	uxth	r7, r4
d0042e6a:	2101      	movs	r1, #1
d0042e6c:	9304      	str	r3, [sp, #16]
d0042e6e:	4638      	mov	r0, r7
d0042e70:	f7fd fcde 	bl	d0040830 <visualizer_back_rect_logical.constprop.0>
d0042e74:	9b04      	ldr	r3, [sp, #16]
d0042e76:	f003 0203 	and.w	r2, r3, #3
d0042e7a:	2a00      	cmp	r2, #0
d0042e7c:	f47f ae09 	bne.w	d0042a92 <main+0xc9a>
d0042e80:	089a      	lsrs	r2, r3, #2
d0042e82:	4659      	mov	r1, fp
d0042e84:	4650      	mov	r0, sl
d0042e86:	f000 fc19 	bl	d00436bc <siprintf>
d0042e8a:	4638      	mov	r0, r7
d0042e8c:	2203      	movs	r2, #3
d0042e8e:	2105      	movs	r1, #5
d0042e90:	f7fd fcce 	bl	d0040830 <visualizer_back_rect_logical.constprop.0>
d0042e94:	e759      	b.n	d0042d4a <main+0xf52>
d0042e96:	9806      	ldr	r0, [sp, #24]
d0042e98:	e4d8      	b.n	d004284c <main+0xa54>
d0042e9a:	4629      	mov	r1, r5
d0042e9c:	4816      	ldr	r0, [pc, #88]	; (d0042ef8 <main+0x1100>)
d0042e9e:	f000 fab1 	bl	d0043404 <iprintf>
d0042ea2:	f7fd fba7 	bl	d00405f4 <app_shutdown>
d0042ea6:	2001      	movs	r0, #1
d0042ea8:	f7ff b9e8 	b.w	d004227c <main+0x484>
d0042eac:	4c04      	ldr	r4, [pc, #16]	; (d0042ec0 <main+0x10c8>)
d0042eae:	7923      	ldrb	r3, [r4, #4]
d0042eb0:	f7ff b9d1 	b.w	d0042256 <main+0x45e>
d0042eb4:	d00455c0 	.word	0xd00455c0
d0042eb8:	d00461c8 	.word	0xd00461c8
d0042ebc:	d00461c8 	.word	0xd00461c8
d0042ec0:	2001f000 	.word	0x2001f000
d0042ec4:	d00461e0 	.word	0xd00461e0
d0042ec8:	d0044fa8 	.word	0xd0044fa8
d0042ecc:	d0044fa4 	.word	0xd0044fa4
d0042ed0:	0007a120 	.word	0x0007a120
d0042ed4:	d00455c4 	.word	0xd00455c4
d0042ed8:	d0044f20 	.word	0xd0044f20
d0042edc:	d0044f80 	.word	0xd0044f80
d0042ee0:	d0044fa0 	.word	0xd0044fa0
d0042ee4:	d00455bc 	.word	0xd00455bc
d0042ee8:	d0044f4c 	.word	0xd0044f4c
d0042eec:	d0044f50 	.word	0xd0044f50
d0042ef0:	d0044f5c 	.word	0xd0044f5c
d0042ef4:	d0044f60 	.word	0xd0044f60
d0042ef8:	d00448e4 	.word	0xd00448e4
d0042efc:	4c1d      	ldr	r4, [pc, #116]	; (d0042f74 <main+0x117c>)
d0042efe:	f7fd fb79 	bl	d00405f4 <app_shutdown>
d0042f02:	2000      	movs	r0, #0
d0042f04:	7823      	ldrb	r3, [r4, #0]
d0042f06:	7862      	ldrb	r2, [r4, #1]
d0042f08:	78a1      	ldrb	r1, [r4, #2]
d0042f0a:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0042f0e:	78e2      	ldrb	r2, [r4, #3]
d0042f10:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0042f14:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0042f18:	6edb      	ldr	r3, [r3, #108]	; 0x6c
d0042f1a:	681b      	ldr	r3, [r3, #0]
d0042f1c:	4798      	blx	r3
d0042f1e:	7823      	ldrb	r3, [r4, #0]
d0042f20:	7862      	ldrb	r2, [r4, #1]
d0042f22:	2000      	movs	r0, #0
d0042f24:	78a1      	ldrb	r1, [r4, #2]
d0042f26:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0042f2a:	78e2      	ldrb	r2, [r4, #3]
d0042f2c:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0042f30:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0042f34:	6edb      	ldr	r3, [r3, #108]	; 0x6c
d0042f36:	689b      	ldr	r3, [r3, #8]
d0042f38:	4798      	blx	r3
d0042f3a:	f894 3020 	ldrb.w	r3, [r4, #32]
d0042f3e:	f894 2021 	ldrb.w	r2, [r4, #33]	; 0x21
d0042f42:	2000      	movs	r0, #0
d0042f44:	f894 1022 	ldrb.w	r1, [r4, #34]	; 0x22
d0042f48:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0042f4c:	f894 2023 	ldrb.w	r2, [r4, #35]	; 0x23
d0042f50:	4c09      	ldr	r4, [pc, #36]	; (d0042f78 <main+0x1180>)
d0042f52:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0042f56:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0042f5a:	681b      	ldr	r3, [r3, #0]
d0042f5c:	4798      	blx	r3
d0042f5e:	6820      	ldr	r0, [r4, #0]
d0042f60:	2800      	cmp	r0, #0
d0042f62:	f43f a98b 	beq.w	d004227c <main+0x484>
d0042f66:	f000 f993 	bl	d0043290 <free>
d0042f6a:	2000      	movs	r0, #0
d0042f6c:	6020      	str	r0, [r4, #0]
d0042f6e:	f7ff b985 	b.w	d004227c <main+0x484>
d0042f72:	bf00      	nop
d0042f74:	2001f000 	.word	0x2001f000
d0042f78:	d0044fa4 	.word	0xd0044fa4

d0042f7c <__aeabi_uldivmod>:
d0042f7c:	b953      	cbnz	r3, d0042f94 <__aeabi_uldivmod+0x18>
d0042f7e:	b94a      	cbnz	r2, d0042f94 <__aeabi_uldivmod+0x18>
d0042f80:	2900      	cmp	r1, #0
d0042f82:	bf08      	it	eq
d0042f84:	2800      	cmpeq	r0, #0
d0042f86:	bf1c      	itt	ne
d0042f88:	f04f 31ff 	movne.w	r1, #4294967295	; 0xffffffff
d0042f8c:	f04f 30ff 	movne.w	r0, #4294967295	; 0xffffffff
d0042f90:	f000 b96e 	b.w	d0043270 <__aeabi_idiv0>
d0042f94:	f1ad 0c08 	sub.w	ip, sp, #8
d0042f98:	e96d ce04 	strd	ip, lr, [sp, #-16]!
d0042f9c:	f000 f806 	bl	d0042fac <__udivmoddi4>
d0042fa0:	f8dd e004 	ldr.w	lr, [sp, #4]
d0042fa4:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
d0042fa8:	b004      	add	sp, #16
d0042faa:	4770      	bx	lr

d0042fac <__udivmoddi4>:
d0042fac:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
d0042fb0:	9d08      	ldr	r5, [sp, #32]
d0042fb2:	4604      	mov	r4, r0
d0042fb4:	468c      	mov	ip, r1
d0042fb6:	2b00      	cmp	r3, #0
d0042fb8:	f040 8083 	bne.w	d00430c2 <__udivmoddi4+0x116>
d0042fbc:	428a      	cmp	r2, r1
d0042fbe:	4617      	mov	r7, r2
d0042fc0:	d947      	bls.n	d0043052 <__udivmoddi4+0xa6>
d0042fc2:	fab2 f282 	clz	r2, r2
d0042fc6:	b142      	cbz	r2, d0042fda <__udivmoddi4+0x2e>
d0042fc8:	f1c2 0020 	rsb	r0, r2, #32
d0042fcc:	fa24 f000 	lsr.w	r0, r4, r0
d0042fd0:	4091      	lsls	r1, r2
d0042fd2:	4097      	lsls	r7, r2
d0042fd4:	ea40 0c01 	orr.w	ip, r0, r1
d0042fd8:	4094      	lsls	r4, r2
d0042fda:	ea4f 4817 	mov.w	r8, r7, lsr #16
d0042fde:	0c23      	lsrs	r3, r4, #16
d0042fe0:	fbbc f6f8 	udiv	r6, ip, r8
d0042fe4:	fa1f fe87 	uxth.w	lr, r7
d0042fe8:	fb08 c116 	mls	r1, r8, r6, ip
d0042fec:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0042ff0:	fb06 f10e 	mul.w	r1, r6, lr
d0042ff4:	4299      	cmp	r1, r3
d0042ff6:	d909      	bls.n	d004300c <__udivmoddi4+0x60>
d0042ff8:	18fb      	adds	r3, r7, r3
d0042ffa:	f106 30ff 	add.w	r0, r6, #4294967295	; 0xffffffff
d0042ffe:	f080 8119 	bcs.w	d0043234 <__udivmoddi4+0x288>
d0043002:	4299      	cmp	r1, r3
d0043004:	f240 8116 	bls.w	d0043234 <__udivmoddi4+0x288>
d0043008:	3e02      	subs	r6, #2
d004300a:	443b      	add	r3, r7
d004300c:	1a5b      	subs	r3, r3, r1
d004300e:	b2a4      	uxth	r4, r4
d0043010:	fbb3 f0f8 	udiv	r0, r3, r8
d0043014:	fb08 3310 	mls	r3, r8, r0, r3
d0043018:	ea44 4403 	orr.w	r4, r4, r3, lsl #16
d004301c:	fb00 fe0e 	mul.w	lr, r0, lr
d0043020:	45a6      	cmp	lr, r4
d0043022:	d909      	bls.n	d0043038 <__udivmoddi4+0x8c>
d0043024:	193c      	adds	r4, r7, r4
d0043026:	f100 33ff 	add.w	r3, r0, #4294967295	; 0xffffffff
d004302a:	f080 8105 	bcs.w	d0043238 <__udivmoddi4+0x28c>
d004302e:	45a6      	cmp	lr, r4
d0043030:	f240 8102 	bls.w	d0043238 <__udivmoddi4+0x28c>
d0043034:	3802      	subs	r0, #2
d0043036:	443c      	add	r4, r7
d0043038:	ea40 4006 	orr.w	r0, r0, r6, lsl #16
d004303c:	eba4 040e 	sub.w	r4, r4, lr
d0043040:	2600      	movs	r6, #0
d0043042:	b11d      	cbz	r5, d004304c <__udivmoddi4+0xa0>
d0043044:	40d4      	lsrs	r4, r2
d0043046:	2300      	movs	r3, #0
d0043048:	e9c5 4300 	strd	r4, r3, [r5]
d004304c:	4631      	mov	r1, r6
d004304e:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
d0043052:	b902      	cbnz	r2, d0043056 <__udivmoddi4+0xaa>
d0043054:	deff      	udf	#255	; 0xff
d0043056:	fab2 f282 	clz	r2, r2
d004305a:	2a00      	cmp	r2, #0
d004305c:	d150      	bne.n	d0043100 <__udivmoddi4+0x154>
d004305e:	1bcb      	subs	r3, r1, r7
d0043060:	ea4f 4e17 	mov.w	lr, r7, lsr #16
d0043064:	fa1f f887 	uxth.w	r8, r7
d0043068:	2601      	movs	r6, #1
d004306a:	fbb3 fcfe 	udiv	ip, r3, lr
d004306e:	0c21      	lsrs	r1, r4, #16
d0043070:	fb0e 331c 	mls	r3, lr, ip, r3
d0043074:	ea41 4103 	orr.w	r1, r1, r3, lsl #16
d0043078:	fb08 f30c 	mul.w	r3, r8, ip
d004307c:	428b      	cmp	r3, r1
d004307e:	d907      	bls.n	d0043090 <__udivmoddi4+0xe4>
d0043080:	1879      	adds	r1, r7, r1
d0043082:	f10c 30ff 	add.w	r0, ip, #4294967295	; 0xffffffff
d0043086:	d202      	bcs.n	d004308e <__udivmoddi4+0xe2>
d0043088:	428b      	cmp	r3, r1
d004308a:	f200 80e9 	bhi.w	d0043260 <__udivmoddi4+0x2b4>
d004308e:	4684      	mov	ip, r0
d0043090:	1ac9      	subs	r1, r1, r3
d0043092:	b2a3      	uxth	r3, r4
d0043094:	fbb1 f0fe 	udiv	r0, r1, lr
d0043098:	fb0e 1110 	mls	r1, lr, r0, r1
d004309c:	ea43 4401 	orr.w	r4, r3, r1, lsl #16
d00430a0:	fb08 f800 	mul.w	r8, r8, r0
d00430a4:	45a0      	cmp	r8, r4
d00430a6:	d907      	bls.n	d00430b8 <__udivmoddi4+0x10c>
d00430a8:	193c      	adds	r4, r7, r4
d00430aa:	f100 33ff 	add.w	r3, r0, #4294967295	; 0xffffffff
d00430ae:	d202      	bcs.n	d00430b6 <__udivmoddi4+0x10a>
d00430b0:	45a0      	cmp	r8, r4
d00430b2:	f200 80d9 	bhi.w	d0043268 <__udivmoddi4+0x2bc>
d00430b6:	4618      	mov	r0, r3
d00430b8:	eba4 0408 	sub.w	r4, r4, r8
d00430bc:	ea40 400c 	orr.w	r0, r0, ip, lsl #16
d00430c0:	e7bf      	b.n	d0043042 <__udivmoddi4+0x96>
d00430c2:	428b      	cmp	r3, r1
d00430c4:	d909      	bls.n	d00430da <__udivmoddi4+0x12e>
d00430c6:	2d00      	cmp	r5, #0
d00430c8:	f000 80b1 	beq.w	d004322e <__udivmoddi4+0x282>
d00430cc:	2600      	movs	r6, #0
d00430ce:	e9c5 0100 	strd	r0, r1, [r5]
d00430d2:	4630      	mov	r0, r6
d00430d4:	4631      	mov	r1, r6
d00430d6:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
d00430da:	fab3 f683 	clz	r6, r3
d00430de:	2e00      	cmp	r6, #0
d00430e0:	d14a      	bne.n	d0043178 <__udivmoddi4+0x1cc>
d00430e2:	428b      	cmp	r3, r1
d00430e4:	d302      	bcc.n	d00430ec <__udivmoddi4+0x140>
d00430e6:	4282      	cmp	r2, r0
d00430e8:	f200 80b8 	bhi.w	d004325c <__udivmoddi4+0x2b0>
d00430ec:	1a84      	subs	r4, r0, r2
d00430ee:	eb61 0103 	sbc.w	r1, r1, r3
d00430f2:	2001      	movs	r0, #1
d00430f4:	468c      	mov	ip, r1
d00430f6:	2d00      	cmp	r5, #0
d00430f8:	d0a8      	beq.n	d004304c <__udivmoddi4+0xa0>
d00430fa:	e9c5 4c00 	strd	r4, ip, [r5]
d00430fe:	e7a5      	b.n	d004304c <__udivmoddi4+0xa0>
d0043100:	f1c2 0320 	rsb	r3, r2, #32
d0043104:	fa20 f603 	lsr.w	r6, r0, r3
d0043108:	4097      	lsls	r7, r2
d004310a:	fa01 f002 	lsl.w	r0, r1, r2
d004310e:	ea4f 4e17 	mov.w	lr, r7, lsr #16
d0043112:	40d9      	lsrs	r1, r3
d0043114:	4330      	orrs	r0, r6
d0043116:	0c03      	lsrs	r3, r0, #16
d0043118:	fbb1 f6fe 	udiv	r6, r1, lr
d004311c:	fa1f f887 	uxth.w	r8, r7
d0043120:	fb0e 1116 	mls	r1, lr, r6, r1
d0043124:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0043128:	fb06 f108 	mul.w	r1, r6, r8
d004312c:	4299      	cmp	r1, r3
d004312e:	fa04 f402 	lsl.w	r4, r4, r2
d0043132:	d909      	bls.n	d0043148 <__udivmoddi4+0x19c>
d0043134:	18fb      	adds	r3, r7, r3
d0043136:	f106 3cff 	add.w	ip, r6, #4294967295	; 0xffffffff
d004313a:	f080 808d 	bcs.w	d0043258 <__udivmoddi4+0x2ac>
d004313e:	4299      	cmp	r1, r3
d0043140:	f240 808a 	bls.w	d0043258 <__udivmoddi4+0x2ac>
d0043144:	3e02      	subs	r6, #2
d0043146:	443b      	add	r3, r7
d0043148:	1a5b      	subs	r3, r3, r1
d004314a:	b281      	uxth	r1, r0
d004314c:	fbb3 f0fe 	udiv	r0, r3, lr
d0043150:	fb0e 3310 	mls	r3, lr, r0, r3
d0043154:	ea41 4103 	orr.w	r1, r1, r3, lsl #16
d0043158:	fb00 f308 	mul.w	r3, r0, r8
d004315c:	428b      	cmp	r3, r1
d004315e:	d907      	bls.n	d0043170 <__udivmoddi4+0x1c4>
d0043160:	1879      	adds	r1, r7, r1
d0043162:	f100 3cff 	add.w	ip, r0, #4294967295	; 0xffffffff
d0043166:	d273      	bcs.n	d0043250 <__udivmoddi4+0x2a4>
d0043168:	428b      	cmp	r3, r1
d004316a:	d971      	bls.n	d0043250 <__udivmoddi4+0x2a4>
d004316c:	3802      	subs	r0, #2
d004316e:	4439      	add	r1, r7
d0043170:	1acb      	subs	r3, r1, r3
d0043172:	ea40 4606 	orr.w	r6, r0, r6, lsl #16
d0043176:	e778      	b.n	d004306a <__udivmoddi4+0xbe>
d0043178:	f1c6 0c20 	rsb	ip, r6, #32
d004317c:	fa03 f406 	lsl.w	r4, r3, r6
d0043180:	fa22 f30c 	lsr.w	r3, r2, ip
d0043184:	431c      	orrs	r4, r3
d0043186:	fa20 f70c 	lsr.w	r7, r0, ip
d004318a:	fa01 f306 	lsl.w	r3, r1, r6
d004318e:	ea4f 4e14 	mov.w	lr, r4, lsr #16
d0043192:	fa21 f10c 	lsr.w	r1, r1, ip
d0043196:	431f      	orrs	r7, r3
d0043198:	0c3b      	lsrs	r3, r7, #16
d004319a:	fbb1 f9fe 	udiv	r9, r1, lr
d004319e:	fa1f f884 	uxth.w	r8, r4
d00431a2:	fb0e 1119 	mls	r1, lr, r9, r1
d00431a6:	ea43 4101 	orr.w	r1, r3, r1, lsl #16
d00431aa:	fb09 fa08 	mul.w	sl, r9, r8
d00431ae:	458a      	cmp	sl, r1
d00431b0:	fa02 f206 	lsl.w	r2, r2, r6
d00431b4:	fa00 f306 	lsl.w	r3, r0, r6
d00431b8:	d908      	bls.n	d00431cc <__udivmoddi4+0x220>
d00431ba:	1861      	adds	r1, r4, r1
d00431bc:	f109 30ff 	add.w	r0, r9, #4294967295	; 0xffffffff
d00431c0:	d248      	bcs.n	d0043254 <__udivmoddi4+0x2a8>
d00431c2:	458a      	cmp	sl, r1
d00431c4:	d946      	bls.n	d0043254 <__udivmoddi4+0x2a8>
d00431c6:	f1a9 0902 	sub.w	r9, r9, #2
d00431ca:	4421      	add	r1, r4
d00431cc:	eba1 010a 	sub.w	r1, r1, sl
d00431d0:	b2bf      	uxth	r7, r7
d00431d2:	fbb1 f0fe 	udiv	r0, r1, lr
d00431d6:	fb0e 1110 	mls	r1, lr, r0, r1
d00431da:	ea47 4701 	orr.w	r7, r7, r1, lsl #16
d00431de:	fb00 f808 	mul.w	r8, r0, r8
d00431e2:	45b8      	cmp	r8, r7
d00431e4:	d907      	bls.n	d00431f6 <__udivmoddi4+0x24a>
d00431e6:	19e7      	adds	r7, r4, r7
d00431e8:	f100 31ff 	add.w	r1, r0, #4294967295	; 0xffffffff
d00431ec:	d22e      	bcs.n	d004324c <__udivmoddi4+0x2a0>
d00431ee:	45b8      	cmp	r8, r7
d00431f0:	d92c      	bls.n	d004324c <__udivmoddi4+0x2a0>
d00431f2:	3802      	subs	r0, #2
d00431f4:	4427      	add	r7, r4
d00431f6:	ea40 4009 	orr.w	r0, r0, r9, lsl #16
d00431fa:	eba7 0708 	sub.w	r7, r7, r8
d00431fe:	fba0 8902 	umull	r8, r9, r0, r2
d0043202:	454f      	cmp	r7, r9
d0043204:	46c6      	mov	lr, r8
d0043206:	4649      	mov	r1, r9
d0043208:	d31a      	bcc.n	d0043240 <__udivmoddi4+0x294>
d004320a:	d017      	beq.n	d004323c <__udivmoddi4+0x290>
d004320c:	b15d      	cbz	r5, d0043226 <__udivmoddi4+0x27a>
d004320e:	ebb3 020e 	subs.w	r2, r3, lr
d0043212:	eb67 0701 	sbc.w	r7, r7, r1
d0043216:	fa07 fc0c 	lsl.w	ip, r7, ip
d004321a:	40f2      	lsrs	r2, r6
d004321c:	ea4c 0202 	orr.w	r2, ip, r2
d0043220:	40f7      	lsrs	r7, r6
d0043222:	e9c5 2700 	strd	r2, r7, [r5]
d0043226:	2600      	movs	r6, #0
d0043228:	4631      	mov	r1, r6
d004322a:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
d004322e:	462e      	mov	r6, r5
d0043230:	4628      	mov	r0, r5
d0043232:	e70b      	b.n	d004304c <__udivmoddi4+0xa0>
d0043234:	4606      	mov	r6, r0
d0043236:	e6e9      	b.n	d004300c <__udivmoddi4+0x60>
d0043238:	4618      	mov	r0, r3
d004323a:	e6fd      	b.n	d0043038 <__udivmoddi4+0x8c>
d004323c:	4543      	cmp	r3, r8
d004323e:	d2e5      	bcs.n	d004320c <__udivmoddi4+0x260>
d0043240:	ebb8 0e02 	subs.w	lr, r8, r2
d0043244:	eb69 0104 	sbc.w	r1, r9, r4
d0043248:	3801      	subs	r0, #1
d004324a:	e7df      	b.n	d004320c <__udivmoddi4+0x260>
d004324c:	4608      	mov	r0, r1
d004324e:	e7d2      	b.n	d00431f6 <__udivmoddi4+0x24a>
d0043250:	4660      	mov	r0, ip
d0043252:	e78d      	b.n	d0043170 <__udivmoddi4+0x1c4>
d0043254:	4681      	mov	r9, r0
d0043256:	e7b9      	b.n	d00431cc <__udivmoddi4+0x220>
d0043258:	4666      	mov	r6, ip
d004325a:	e775      	b.n	d0043148 <__udivmoddi4+0x19c>
d004325c:	4630      	mov	r0, r6
d004325e:	e74a      	b.n	d00430f6 <__udivmoddi4+0x14a>
d0043260:	f1ac 0c02 	sub.w	ip, ip, #2
d0043264:	4439      	add	r1, r7
d0043266:	e713      	b.n	d0043090 <__udivmoddi4+0xe4>
d0043268:	3802      	subs	r0, #2
d004326a:	443c      	add	r4, r7
d004326c:	e724      	b.n	d00430b8 <__udivmoddi4+0x10c>
d004326e:	bf00      	nop

d0043270 <__aeabi_idiv0>:
d0043270:	4770      	bx	lr
d0043272:	bf00      	nop

d0043274 <__errno>:
d0043274:	4b01      	ldr	r3, [pc, #4]	; (d004327c <__errno+0x8>)
d0043276:	6818      	ldr	r0, [r3, #0]
d0043278:	4770      	bx	lr
d004327a:	bf00      	nop
d004327c:	d0044a84 	.word	0xd0044a84

d0043280 <malloc>:
d0043280:	4b02      	ldr	r3, [pc, #8]	; (d004328c <malloc+0xc>)
d0043282:	4601      	mov	r1, r0
d0043284:	6818      	ldr	r0, [r3, #0]
d0043286:	f000 b863 	b.w	d0043350 <_malloc_r>
d004328a:	bf00      	nop
d004328c:	d0044a84 	.word	0xd0044a84

d0043290 <free>:
d0043290:	4b02      	ldr	r3, [pc, #8]	; (d004329c <free+0xc>)
d0043292:	4601      	mov	r1, r0
d0043294:	6818      	ldr	r0, [r3, #0]
d0043296:	f000 b80b 	b.w	d00432b0 <_free_r>
d004329a:	bf00      	nop
d004329c:	d0044a84 	.word	0xd0044a84

d00432a0 <memset>:
d00432a0:	4402      	add	r2, r0
d00432a2:	4603      	mov	r3, r0
d00432a4:	4293      	cmp	r3, r2
d00432a6:	d100      	bne.n	d00432aa <memset+0xa>
d00432a8:	4770      	bx	lr
d00432aa:	f803 1b01 	strb.w	r1, [r3], #1
d00432ae:	e7f9      	b.n	d00432a4 <memset+0x4>

d00432b0 <_free_r>:
d00432b0:	b537      	push	{r0, r1, r2, r4, r5, lr}
d00432b2:	2900      	cmp	r1, #0
d00432b4:	d048      	beq.n	d0043348 <_free_r+0x98>
d00432b6:	f851 3c04 	ldr.w	r3, [r1, #-4]
d00432ba:	9001      	str	r0, [sp, #4]
d00432bc:	2b00      	cmp	r3, #0
d00432be:	f1a1 0404 	sub.w	r4, r1, #4
d00432c2:	bfb8      	it	lt
d00432c4:	18e4      	addlt	r4, r4, r3
d00432c6:	f000 fd09 	bl	d0043cdc <__malloc_lock>
d00432ca:	4a20      	ldr	r2, [pc, #128]	; (d004334c <_free_r+0x9c>)
d00432cc:	9801      	ldr	r0, [sp, #4]
d00432ce:	6813      	ldr	r3, [r2, #0]
d00432d0:	4615      	mov	r5, r2
d00432d2:	b933      	cbnz	r3, d00432e2 <_free_r+0x32>
d00432d4:	6063      	str	r3, [r4, #4]
d00432d6:	6014      	str	r4, [r2, #0]
d00432d8:	b003      	add	sp, #12
d00432da:	e8bd 4030 	ldmia.w	sp!, {r4, r5, lr}
d00432de:	f000 bd03 	b.w	d0043ce8 <__malloc_unlock>
d00432e2:	42a3      	cmp	r3, r4
d00432e4:	d90b      	bls.n	d00432fe <_free_r+0x4e>
d00432e6:	6821      	ldr	r1, [r4, #0]
d00432e8:	1862      	adds	r2, r4, r1
d00432ea:	4293      	cmp	r3, r2
d00432ec:	bf04      	itt	eq
d00432ee:	681a      	ldreq	r2, [r3, #0]
d00432f0:	685b      	ldreq	r3, [r3, #4]
d00432f2:	6063      	str	r3, [r4, #4]
d00432f4:	bf04      	itt	eq
d00432f6:	1852      	addeq	r2, r2, r1
d00432f8:	6022      	streq	r2, [r4, #0]
d00432fa:	602c      	str	r4, [r5, #0]
d00432fc:	e7ec      	b.n	d00432d8 <_free_r+0x28>
d00432fe:	461a      	mov	r2, r3
d0043300:	685b      	ldr	r3, [r3, #4]
d0043302:	b10b      	cbz	r3, d0043308 <_free_r+0x58>
d0043304:	42a3      	cmp	r3, r4
d0043306:	d9fa      	bls.n	d00432fe <_free_r+0x4e>
d0043308:	6811      	ldr	r1, [r2, #0]
d004330a:	1855      	adds	r5, r2, r1
d004330c:	42a5      	cmp	r5, r4
d004330e:	d10b      	bne.n	d0043328 <_free_r+0x78>
d0043310:	6824      	ldr	r4, [r4, #0]
d0043312:	4421      	add	r1, r4
d0043314:	1854      	adds	r4, r2, r1
d0043316:	42a3      	cmp	r3, r4
d0043318:	6011      	str	r1, [r2, #0]
d004331a:	d1dd      	bne.n	d00432d8 <_free_r+0x28>
d004331c:	681c      	ldr	r4, [r3, #0]
d004331e:	685b      	ldr	r3, [r3, #4]
d0043320:	6053      	str	r3, [r2, #4]
d0043322:	4421      	add	r1, r4
d0043324:	6011      	str	r1, [r2, #0]
d0043326:	e7d7      	b.n	d00432d8 <_free_r+0x28>
d0043328:	d902      	bls.n	d0043330 <_free_r+0x80>
d004332a:	230c      	movs	r3, #12
d004332c:	6003      	str	r3, [r0, #0]
d004332e:	e7d3      	b.n	d00432d8 <_free_r+0x28>
d0043330:	6825      	ldr	r5, [r4, #0]
d0043332:	1961      	adds	r1, r4, r5
d0043334:	428b      	cmp	r3, r1
d0043336:	bf04      	itt	eq
d0043338:	6819      	ldreq	r1, [r3, #0]
d004333a:	685b      	ldreq	r3, [r3, #4]
d004333c:	6063      	str	r3, [r4, #4]
d004333e:	bf04      	itt	eq
d0043340:	1949      	addeq	r1, r1, r5
d0043342:	6021      	streq	r1, [r4, #0]
d0043344:	6054      	str	r4, [r2, #4]
d0043346:	e7c7      	b.n	d00432d8 <_free_r+0x28>
d0043348:	b003      	add	sp, #12
d004334a:	bd30      	pop	{r4, r5, pc}
d004334c:	d00461d0 	.word	0xd00461d0

d0043350 <_malloc_r>:
d0043350:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d0043352:	1ccd      	adds	r5, r1, #3
d0043354:	f025 0503 	bic.w	r5, r5, #3
d0043358:	3508      	adds	r5, #8
d004335a:	2d0c      	cmp	r5, #12
d004335c:	bf38      	it	cc
d004335e:	250c      	movcc	r5, #12
d0043360:	2d00      	cmp	r5, #0
d0043362:	4606      	mov	r6, r0
d0043364:	db01      	blt.n	d004336a <_malloc_r+0x1a>
d0043366:	42a9      	cmp	r1, r5
d0043368:	d903      	bls.n	d0043372 <_malloc_r+0x22>
d004336a:	230c      	movs	r3, #12
d004336c:	6033      	str	r3, [r6, #0]
d004336e:	2000      	movs	r0, #0
d0043370:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d0043372:	f000 fcb3 	bl	d0043cdc <__malloc_lock>
d0043376:	4921      	ldr	r1, [pc, #132]	; (d00433fc <_malloc_r+0xac>)
d0043378:	680a      	ldr	r2, [r1, #0]
d004337a:	4614      	mov	r4, r2
d004337c:	b99c      	cbnz	r4, d00433a6 <_malloc_r+0x56>
d004337e:	4f20      	ldr	r7, [pc, #128]	; (d0043400 <_malloc_r+0xb0>)
d0043380:	683b      	ldr	r3, [r7, #0]
d0043382:	b923      	cbnz	r3, d004338e <_malloc_r+0x3e>
d0043384:	4621      	mov	r1, r4
d0043386:	4630      	mov	r0, r6
d0043388:	f7fc feaa 	bl	d00400e0 <_sbrk_r>
d004338c:	6038      	str	r0, [r7, #0]
d004338e:	4629      	mov	r1, r5
d0043390:	4630      	mov	r0, r6
d0043392:	f7fc fea5 	bl	d00400e0 <_sbrk_r>
d0043396:	1c43      	adds	r3, r0, #1
d0043398:	d123      	bne.n	d00433e2 <_malloc_r+0x92>
d004339a:	230c      	movs	r3, #12
d004339c:	6033      	str	r3, [r6, #0]
d004339e:	4630      	mov	r0, r6
d00433a0:	f000 fca2 	bl	d0043ce8 <__malloc_unlock>
d00433a4:	e7e3      	b.n	d004336e <_malloc_r+0x1e>
d00433a6:	6823      	ldr	r3, [r4, #0]
d00433a8:	1b5b      	subs	r3, r3, r5
d00433aa:	d417      	bmi.n	d00433dc <_malloc_r+0x8c>
d00433ac:	2b0b      	cmp	r3, #11
d00433ae:	d903      	bls.n	d00433b8 <_malloc_r+0x68>
d00433b0:	6023      	str	r3, [r4, #0]
d00433b2:	441c      	add	r4, r3
d00433b4:	6025      	str	r5, [r4, #0]
d00433b6:	e004      	b.n	d00433c2 <_malloc_r+0x72>
d00433b8:	6863      	ldr	r3, [r4, #4]
d00433ba:	42a2      	cmp	r2, r4
d00433bc:	bf0c      	ite	eq
d00433be:	600b      	streq	r3, [r1, #0]
d00433c0:	6053      	strne	r3, [r2, #4]
d00433c2:	4630      	mov	r0, r6
d00433c4:	f000 fc90 	bl	d0043ce8 <__malloc_unlock>
d00433c8:	f104 000b 	add.w	r0, r4, #11
d00433cc:	1d23      	adds	r3, r4, #4
d00433ce:	f020 0007 	bic.w	r0, r0, #7
d00433d2:	1ac2      	subs	r2, r0, r3
d00433d4:	d0cc      	beq.n	d0043370 <_malloc_r+0x20>
d00433d6:	1a1b      	subs	r3, r3, r0
d00433d8:	50a3      	str	r3, [r4, r2]
d00433da:	e7c9      	b.n	d0043370 <_malloc_r+0x20>
d00433dc:	4622      	mov	r2, r4
d00433de:	6864      	ldr	r4, [r4, #4]
d00433e0:	e7cc      	b.n	d004337c <_malloc_r+0x2c>
d00433e2:	1cc4      	adds	r4, r0, #3
d00433e4:	f024 0403 	bic.w	r4, r4, #3
d00433e8:	42a0      	cmp	r0, r4
d00433ea:	d0e3      	beq.n	d00433b4 <_malloc_r+0x64>
d00433ec:	1a21      	subs	r1, r4, r0
d00433ee:	4630      	mov	r0, r6
d00433f0:	f7fc fe76 	bl	d00400e0 <_sbrk_r>
d00433f4:	3001      	adds	r0, #1
d00433f6:	d1dd      	bne.n	d00433b4 <_malloc_r+0x64>
d00433f8:	e7cf      	b.n	d004339a <_malloc_r+0x4a>
d00433fa:	bf00      	nop
d00433fc:	d00461d0 	.word	0xd00461d0
d0043400:	d00461d4 	.word	0xd00461d4

d0043404 <iprintf>:
d0043404:	b40f      	push	{r0, r1, r2, r3}
d0043406:	4b0a      	ldr	r3, [pc, #40]	; (d0043430 <iprintf+0x2c>)
d0043408:	b513      	push	{r0, r1, r4, lr}
d004340a:	681c      	ldr	r4, [r3, #0]
d004340c:	b124      	cbz	r4, d0043418 <iprintf+0x14>
d004340e:	69a3      	ldr	r3, [r4, #24]
d0043410:	b913      	cbnz	r3, d0043418 <iprintf+0x14>
d0043412:	4620      	mov	r0, r4
d0043414:	f000 fb5e 	bl	d0043ad4 <__sinit>
d0043418:	ab05      	add	r3, sp, #20
d004341a:	9a04      	ldr	r2, [sp, #16]
d004341c:	68a1      	ldr	r1, [r4, #8]
d004341e:	9301      	str	r3, [sp, #4]
d0043420:	4620      	mov	r0, r4
d0043422:	f000 fded 	bl	d0044000 <_vfiprintf_r>
d0043426:	b002      	add	sp, #8
d0043428:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
d004342c:	b004      	add	sp, #16
d004342e:	4770      	bx	lr
d0043430:	d0044a84 	.word	0xd0044a84

d0043434 <_puts_r>:
d0043434:	b570      	push	{r4, r5, r6, lr}
d0043436:	460e      	mov	r6, r1
d0043438:	4605      	mov	r5, r0
d004343a:	b118      	cbz	r0, d0043444 <_puts_r+0x10>
d004343c:	6983      	ldr	r3, [r0, #24]
d004343e:	b90b      	cbnz	r3, d0043444 <_puts_r+0x10>
d0043440:	f000 fb48 	bl	d0043ad4 <__sinit>
d0043444:	69ab      	ldr	r3, [r5, #24]
d0043446:	68ac      	ldr	r4, [r5, #8]
d0043448:	b913      	cbnz	r3, d0043450 <_puts_r+0x1c>
d004344a:	4628      	mov	r0, r5
d004344c:	f000 fb42 	bl	d0043ad4 <__sinit>
d0043450:	4b2c      	ldr	r3, [pc, #176]	; (d0043504 <_puts_r+0xd0>)
d0043452:	429c      	cmp	r4, r3
d0043454:	d120      	bne.n	d0043498 <_puts_r+0x64>
d0043456:	686c      	ldr	r4, [r5, #4]
d0043458:	6e63      	ldr	r3, [r4, #100]	; 0x64
d004345a:	07db      	lsls	r3, r3, #31
d004345c:	d405      	bmi.n	d004346a <_puts_r+0x36>
d004345e:	89a3      	ldrh	r3, [r4, #12]
d0043460:	0598      	lsls	r0, r3, #22
d0043462:	d402      	bmi.n	d004346a <_puts_r+0x36>
d0043464:	6da0      	ldr	r0, [r4, #88]	; 0x58
d0043466:	f000 fbd3 	bl	d0043c10 <__retarget_lock_acquire_recursive>
d004346a:	89a3      	ldrh	r3, [r4, #12]
d004346c:	0719      	lsls	r1, r3, #28
d004346e:	d51d      	bpl.n	d00434ac <_puts_r+0x78>
d0043470:	6923      	ldr	r3, [r4, #16]
d0043472:	b1db      	cbz	r3, d00434ac <_puts_r+0x78>
d0043474:	3e01      	subs	r6, #1
d0043476:	68a3      	ldr	r3, [r4, #8]
d0043478:	f816 1f01 	ldrb.w	r1, [r6, #1]!
d004347c:	3b01      	subs	r3, #1
d004347e:	60a3      	str	r3, [r4, #8]
d0043480:	bb39      	cbnz	r1, d00434d2 <_puts_r+0x9e>
d0043482:	2b00      	cmp	r3, #0
d0043484:	da38      	bge.n	d00434f8 <_puts_r+0xc4>
d0043486:	4622      	mov	r2, r4
d0043488:	210a      	movs	r1, #10
d004348a:	4628      	mov	r0, r5
d004348c:	f000 f948 	bl	d0043720 <__swbuf_r>
d0043490:	3001      	adds	r0, #1
d0043492:	d011      	beq.n	d00434b8 <_puts_r+0x84>
d0043494:	250a      	movs	r5, #10
d0043496:	e011      	b.n	d00434bc <_puts_r+0x88>
d0043498:	4b1b      	ldr	r3, [pc, #108]	; (d0043508 <_puts_r+0xd4>)
d004349a:	429c      	cmp	r4, r3
d004349c:	d101      	bne.n	d00434a2 <_puts_r+0x6e>
d004349e:	68ac      	ldr	r4, [r5, #8]
d00434a0:	e7da      	b.n	d0043458 <_puts_r+0x24>
d00434a2:	4b1a      	ldr	r3, [pc, #104]	; (d004350c <_puts_r+0xd8>)
d00434a4:	429c      	cmp	r4, r3
d00434a6:	bf08      	it	eq
d00434a8:	68ec      	ldreq	r4, [r5, #12]
d00434aa:	e7d5      	b.n	d0043458 <_puts_r+0x24>
d00434ac:	4621      	mov	r1, r4
d00434ae:	4628      	mov	r0, r5
d00434b0:	f000 f988 	bl	d00437c4 <__swsetup_r>
d00434b4:	2800      	cmp	r0, #0
d00434b6:	d0dd      	beq.n	d0043474 <_puts_r+0x40>
d00434b8:	f04f 35ff 	mov.w	r5, #4294967295	; 0xffffffff
d00434bc:	6e63      	ldr	r3, [r4, #100]	; 0x64
d00434be:	07da      	lsls	r2, r3, #31
d00434c0:	d405      	bmi.n	d00434ce <_puts_r+0x9a>
d00434c2:	89a3      	ldrh	r3, [r4, #12]
d00434c4:	059b      	lsls	r3, r3, #22
d00434c6:	d402      	bmi.n	d00434ce <_puts_r+0x9a>
d00434c8:	6da0      	ldr	r0, [r4, #88]	; 0x58
d00434ca:	f000 fba2 	bl	d0043c12 <__retarget_lock_release_recursive>
d00434ce:	4628      	mov	r0, r5
d00434d0:	bd70      	pop	{r4, r5, r6, pc}
d00434d2:	2b00      	cmp	r3, #0
d00434d4:	da04      	bge.n	d00434e0 <_puts_r+0xac>
d00434d6:	69a2      	ldr	r2, [r4, #24]
d00434d8:	429a      	cmp	r2, r3
d00434da:	dc06      	bgt.n	d00434ea <_puts_r+0xb6>
d00434dc:	290a      	cmp	r1, #10
d00434de:	d004      	beq.n	d00434ea <_puts_r+0xb6>
d00434e0:	6823      	ldr	r3, [r4, #0]
d00434e2:	1c5a      	adds	r2, r3, #1
d00434e4:	6022      	str	r2, [r4, #0]
d00434e6:	7019      	strb	r1, [r3, #0]
d00434e8:	e7c5      	b.n	d0043476 <_puts_r+0x42>
d00434ea:	4622      	mov	r2, r4
d00434ec:	4628      	mov	r0, r5
d00434ee:	f000 f917 	bl	d0043720 <__swbuf_r>
d00434f2:	3001      	adds	r0, #1
d00434f4:	d1bf      	bne.n	d0043476 <_puts_r+0x42>
d00434f6:	e7df      	b.n	d00434b8 <_puts_r+0x84>
d00434f8:	6823      	ldr	r3, [r4, #0]
d00434fa:	250a      	movs	r5, #10
d00434fc:	1c5a      	adds	r2, r3, #1
d00434fe:	6022      	str	r2, [r4, #0]
d0043500:	701d      	strb	r5, [r3, #0]
d0043502:	e7db      	b.n	d00434bc <_puts_r+0x88>
d0043504:	d00449d0 	.word	0xd00449d0
d0043508:	d00449f0 	.word	0xd00449f0
d004350c:	d00449b0 	.word	0xd00449b0

d0043510 <puts>:
d0043510:	4b02      	ldr	r3, [pc, #8]	; (d004351c <puts+0xc>)
d0043512:	4601      	mov	r1, r0
d0043514:	6818      	ldr	r0, [r3, #0]
d0043516:	f7ff bf8d 	b.w	d0043434 <_puts_r>
d004351a:	bf00      	nop
d004351c:	d0044a84 	.word	0xd0044a84

d0043520 <setbuf>:
d0043520:	2900      	cmp	r1, #0
d0043522:	f44f 6380 	mov.w	r3, #1024	; 0x400
d0043526:	bf0c      	ite	eq
d0043528:	2202      	moveq	r2, #2
d004352a:	2200      	movne	r2, #0
d004352c:	f000 b800 	b.w	d0043530 <setvbuf>

d0043530 <setvbuf>:
d0043530:	e92d 43f7 	stmdb	sp!, {r0, r1, r2, r4, r5, r6, r7, r8, r9, lr}
d0043534:	461d      	mov	r5, r3
d0043536:	4b5d      	ldr	r3, [pc, #372]	; (d00436ac <setvbuf+0x17c>)
d0043538:	681f      	ldr	r7, [r3, #0]
d004353a:	4604      	mov	r4, r0
d004353c:	460e      	mov	r6, r1
d004353e:	4690      	mov	r8, r2
d0043540:	b127      	cbz	r7, d004354c <setvbuf+0x1c>
d0043542:	69bb      	ldr	r3, [r7, #24]
d0043544:	b913      	cbnz	r3, d004354c <setvbuf+0x1c>
d0043546:	4638      	mov	r0, r7
d0043548:	f000 fac4 	bl	d0043ad4 <__sinit>
d004354c:	4b58      	ldr	r3, [pc, #352]	; (d00436b0 <setvbuf+0x180>)
d004354e:	429c      	cmp	r4, r3
d0043550:	d167      	bne.n	d0043622 <setvbuf+0xf2>
d0043552:	687c      	ldr	r4, [r7, #4]
d0043554:	f1b8 0f02 	cmp.w	r8, #2
d0043558:	d006      	beq.n	d0043568 <setvbuf+0x38>
d004355a:	f1b8 0f01 	cmp.w	r8, #1
d004355e:	f200 809f 	bhi.w	d00436a0 <setvbuf+0x170>
d0043562:	2d00      	cmp	r5, #0
d0043564:	f2c0 809c 	blt.w	d00436a0 <setvbuf+0x170>
d0043568:	6e63      	ldr	r3, [r4, #100]	; 0x64
d004356a:	07db      	lsls	r3, r3, #31
d004356c:	d405      	bmi.n	d004357a <setvbuf+0x4a>
d004356e:	89a3      	ldrh	r3, [r4, #12]
d0043570:	0598      	lsls	r0, r3, #22
d0043572:	d402      	bmi.n	d004357a <setvbuf+0x4a>
d0043574:	6da0      	ldr	r0, [r4, #88]	; 0x58
d0043576:	f000 fb4b 	bl	d0043c10 <__retarget_lock_acquire_recursive>
d004357a:	4621      	mov	r1, r4
d004357c:	4638      	mov	r0, r7
d004357e:	f000 fa15 	bl	d00439ac <_fflush_r>
d0043582:	6b61      	ldr	r1, [r4, #52]	; 0x34
d0043584:	b141      	cbz	r1, d0043598 <setvbuf+0x68>
d0043586:	f104 0344 	add.w	r3, r4, #68	; 0x44
d004358a:	4299      	cmp	r1, r3
d004358c:	d002      	beq.n	d0043594 <setvbuf+0x64>
d004358e:	4638      	mov	r0, r7
d0043590:	f7ff fe8e 	bl	d00432b0 <_free_r>
d0043594:	2300      	movs	r3, #0
d0043596:	6363      	str	r3, [r4, #52]	; 0x34
d0043598:	2300      	movs	r3, #0
d004359a:	61a3      	str	r3, [r4, #24]
d004359c:	6063      	str	r3, [r4, #4]
d004359e:	89a3      	ldrh	r3, [r4, #12]
d00435a0:	0619      	lsls	r1, r3, #24
d00435a2:	d503      	bpl.n	d00435ac <setvbuf+0x7c>
d00435a4:	6921      	ldr	r1, [r4, #16]
d00435a6:	4638      	mov	r0, r7
d00435a8:	f7ff fe82 	bl	d00432b0 <_free_r>
d00435ac:	89a3      	ldrh	r3, [r4, #12]
d00435ae:	f423 634a 	bic.w	r3, r3, #3232	; 0xca0
d00435b2:	f023 0303 	bic.w	r3, r3, #3
d00435b6:	f1b8 0f02 	cmp.w	r8, #2
d00435ba:	81a3      	strh	r3, [r4, #12]
d00435bc:	d06c      	beq.n	d0043698 <setvbuf+0x168>
d00435be:	ab01      	add	r3, sp, #4
d00435c0:	466a      	mov	r2, sp
d00435c2:	4621      	mov	r1, r4
d00435c4:	4638      	mov	r0, r7
d00435c6:	f000 fb25 	bl	d0043c14 <__swhatbuf_r>
d00435ca:	89a3      	ldrh	r3, [r4, #12]
d00435cc:	4318      	orrs	r0, r3
d00435ce:	81a0      	strh	r0, [r4, #12]
d00435d0:	2d00      	cmp	r5, #0
d00435d2:	d130      	bne.n	d0043636 <setvbuf+0x106>
d00435d4:	9d00      	ldr	r5, [sp, #0]
d00435d6:	4628      	mov	r0, r5
d00435d8:	f7ff fe52 	bl	d0043280 <malloc>
d00435dc:	4606      	mov	r6, r0
d00435de:	2800      	cmp	r0, #0
d00435e0:	d155      	bne.n	d004368e <setvbuf+0x15e>
d00435e2:	f8dd 9000 	ldr.w	r9, [sp]
d00435e6:	45a9      	cmp	r9, r5
d00435e8:	d14a      	bne.n	d0043680 <setvbuf+0x150>
d00435ea:	f04f 35ff 	mov.w	r5, #4294967295	; 0xffffffff
d00435ee:	2200      	movs	r2, #0
d00435f0:	60a2      	str	r2, [r4, #8]
d00435f2:	f104 0247 	add.w	r2, r4, #71	; 0x47
d00435f6:	6022      	str	r2, [r4, #0]
d00435f8:	6122      	str	r2, [r4, #16]
d00435fa:	2201      	movs	r2, #1
d00435fc:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
d0043600:	6162      	str	r2, [r4, #20]
d0043602:	6e62      	ldr	r2, [r4, #100]	; 0x64
d0043604:	f043 0302 	orr.w	r3, r3, #2
d0043608:	07d2      	lsls	r2, r2, #31
d004360a:	81a3      	strh	r3, [r4, #12]
d004360c:	d405      	bmi.n	d004361a <setvbuf+0xea>
d004360e:	f413 7f00 	tst.w	r3, #512	; 0x200
d0043612:	d102      	bne.n	d004361a <setvbuf+0xea>
d0043614:	6da0      	ldr	r0, [r4, #88]	; 0x58
d0043616:	f000 fafc 	bl	d0043c12 <__retarget_lock_release_recursive>
d004361a:	4628      	mov	r0, r5
d004361c:	b003      	add	sp, #12
d004361e:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
d0043622:	4b24      	ldr	r3, [pc, #144]	; (d00436b4 <setvbuf+0x184>)
d0043624:	429c      	cmp	r4, r3
d0043626:	d101      	bne.n	d004362c <setvbuf+0xfc>
d0043628:	68bc      	ldr	r4, [r7, #8]
d004362a:	e793      	b.n	d0043554 <setvbuf+0x24>
d004362c:	4b22      	ldr	r3, [pc, #136]	; (d00436b8 <setvbuf+0x188>)
d004362e:	429c      	cmp	r4, r3
d0043630:	bf08      	it	eq
d0043632:	68fc      	ldreq	r4, [r7, #12]
d0043634:	e78e      	b.n	d0043554 <setvbuf+0x24>
d0043636:	2e00      	cmp	r6, #0
d0043638:	d0cd      	beq.n	d00435d6 <setvbuf+0xa6>
d004363a:	69bb      	ldr	r3, [r7, #24]
d004363c:	b913      	cbnz	r3, d0043644 <setvbuf+0x114>
d004363e:	4638      	mov	r0, r7
d0043640:	f000 fa48 	bl	d0043ad4 <__sinit>
d0043644:	f1b8 0f01 	cmp.w	r8, #1
d0043648:	bf08      	it	eq
d004364a:	89a3      	ldrheq	r3, [r4, #12]
d004364c:	6026      	str	r6, [r4, #0]
d004364e:	bf04      	itt	eq
d0043650:	f043 0301 	orreq.w	r3, r3, #1
d0043654:	81a3      	strheq	r3, [r4, #12]
d0043656:	89a2      	ldrh	r2, [r4, #12]
d0043658:	f012 0308 	ands.w	r3, r2, #8
d004365c:	e9c4 6504 	strd	r6, r5, [r4, #16]
d0043660:	d01c      	beq.n	d004369c <setvbuf+0x16c>
d0043662:	07d3      	lsls	r3, r2, #31
d0043664:	bf41      	itttt	mi
d0043666:	2300      	movmi	r3, #0
d0043668:	426d      	negmi	r5, r5
d004366a:	60a3      	strmi	r3, [r4, #8]
d004366c:	61a5      	strmi	r5, [r4, #24]
d004366e:	bf58      	it	pl
d0043670:	60a5      	strpl	r5, [r4, #8]
d0043672:	6e65      	ldr	r5, [r4, #100]	; 0x64
d0043674:	f015 0501 	ands.w	r5, r5, #1
d0043678:	d115      	bne.n	d00436a6 <setvbuf+0x176>
d004367a:	f412 7f00 	tst.w	r2, #512	; 0x200
d004367e:	e7c8      	b.n	d0043612 <setvbuf+0xe2>
d0043680:	4648      	mov	r0, r9
d0043682:	f7ff fdfd 	bl	d0043280 <malloc>
d0043686:	4606      	mov	r6, r0
d0043688:	2800      	cmp	r0, #0
d004368a:	d0ae      	beq.n	d00435ea <setvbuf+0xba>
d004368c:	464d      	mov	r5, r9
d004368e:	89a3      	ldrh	r3, [r4, #12]
d0043690:	f043 0380 	orr.w	r3, r3, #128	; 0x80
d0043694:	81a3      	strh	r3, [r4, #12]
d0043696:	e7d0      	b.n	d004363a <setvbuf+0x10a>
d0043698:	2500      	movs	r5, #0
d004369a:	e7a8      	b.n	d00435ee <setvbuf+0xbe>
d004369c:	60a3      	str	r3, [r4, #8]
d004369e:	e7e8      	b.n	d0043672 <setvbuf+0x142>
d00436a0:	f04f 35ff 	mov.w	r5, #4294967295	; 0xffffffff
d00436a4:	e7b9      	b.n	d004361a <setvbuf+0xea>
d00436a6:	2500      	movs	r5, #0
d00436a8:	e7b7      	b.n	d004361a <setvbuf+0xea>
d00436aa:	bf00      	nop
d00436ac:	d0044a84 	.word	0xd0044a84
d00436b0:	d00449d0 	.word	0xd00449d0
d00436b4:	d00449f0 	.word	0xd00449f0
d00436b8:	d00449b0 	.word	0xd00449b0

d00436bc <siprintf>:
d00436bc:	b40e      	push	{r1, r2, r3}
d00436be:	b500      	push	{lr}
d00436c0:	b09c      	sub	sp, #112	; 0x70
d00436c2:	ab1d      	add	r3, sp, #116	; 0x74
d00436c4:	9002      	str	r0, [sp, #8]
d00436c6:	9006      	str	r0, [sp, #24]
d00436c8:	f06f 4100 	mvn.w	r1, #2147483648	; 0x80000000
d00436cc:	4809      	ldr	r0, [pc, #36]	; (d00436f4 <siprintf+0x38>)
d00436ce:	9107      	str	r1, [sp, #28]
d00436d0:	9104      	str	r1, [sp, #16]
d00436d2:	4909      	ldr	r1, [pc, #36]	; (d00436f8 <siprintf+0x3c>)
d00436d4:	f853 2b04 	ldr.w	r2, [r3], #4
d00436d8:	9105      	str	r1, [sp, #20]
d00436da:	6800      	ldr	r0, [r0, #0]
d00436dc:	9301      	str	r3, [sp, #4]
d00436de:	a902      	add	r1, sp, #8
d00436e0:	f000 fb64 	bl	d0043dac <_svfiprintf_r>
d00436e4:	9b02      	ldr	r3, [sp, #8]
d00436e6:	2200      	movs	r2, #0
d00436e8:	701a      	strb	r2, [r3, #0]
d00436ea:	b01c      	add	sp, #112	; 0x70
d00436ec:	f85d eb04 	ldr.w	lr, [sp], #4
d00436f0:	b003      	add	sp, #12
d00436f2:	4770      	bx	lr
d00436f4:	d0044a84 	.word	0xd0044a84
d00436f8:	ffff0208 	.word	0xffff0208

d00436fc <strcmp>:
d00436fc:	f810 2b01 	ldrb.w	r2, [r0], #1
d0043700:	f811 3b01 	ldrb.w	r3, [r1], #1
d0043704:	2a01      	cmp	r2, #1
d0043706:	bf28      	it	cs
d0043708:	429a      	cmpcs	r2, r3
d004370a:	d0f7      	beq.n	d00436fc <strcmp>
d004370c:	1ad0      	subs	r0, r2, r3
d004370e:	4770      	bx	lr

d0043710 <strlen>:
d0043710:	4603      	mov	r3, r0
d0043712:	f813 2b01 	ldrb.w	r2, [r3], #1
d0043716:	2a00      	cmp	r2, #0
d0043718:	d1fb      	bne.n	d0043712 <strlen+0x2>
d004371a:	1a18      	subs	r0, r3, r0
d004371c:	3801      	subs	r0, #1
d004371e:	4770      	bx	lr

d0043720 <__swbuf_r>:
d0043720:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d0043722:	460e      	mov	r6, r1
d0043724:	4614      	mov	r4, r2
d0043726:	4605      	mov	r5, r0
d0043728:	b118      	cbz	r0, d0043732 <__swbuf_r+0x12>
d004372a:	6983      	ldr	r3, [r0, #24]
d004372c:	b90b      	cbnz	r3, d0043732 <__swbuf_r+0x12>
d004372e:	f000 f9d1 	bl	d0043ad4 <__sinit>
d0043732:	4b21      	ldr	r3, [pc, #132]	; (d00437b8 <__swbuf_r+0x98>)
d0043734:	429c      	cmp	r4, r3
d0043736:	d12b      	bne.n	d0043790 <__swbuf_r+0x70>
d0043738:	686c      	ldr	r4, [r5, #4]
d004373a:	69a3      	ldr	r3, [r4, #24]
d004373c:	60a3      	str	r3, [r4, #8]
d004373e:	89a3      	ldrh	r3, [r4, #12]
d0043740:	071a      	lsls	r2, r3, #28
d0043742:	d52f      	bpl.n	d00437a4 <__swbuf_r+0x84>
d0043744:	6923      	ldr	r3, [r4, #16]
d0043746:	b36b      	cbz	r3, d00437a4 <__swbuf_r+0x84>
d0043748:	6923      	ldr	r3, [r4, #16]
d004374a:	6820      	ldr	r0, [r4, #0]
d004374c:	1ac0      	subs	r0, r0, r3
d004374e:	6963      	ldr	r3, [r4, #20]
d0043750:	b2f6      	uxtb	r6, r6
d0043752:	4283      	cmp	r3, r0
d0043754:	4637      	mov	r7, r6
d0043756:	dc04      	bgt.n	d0043762 <__swbuf_r+0x42>
d0043758:	4621      	mov	r1, r4
d004375a:	4628      	mov	r0, r5
d004375c:	f000 f926 	bl	d00439ac <_fflush_r>
d0043760:	bb30      	cbnz	r0, d00437b0 <__swbuf_r+0x90>
d0043762:	68a3      	ldr	r3, [r4, #8]
d0043764:	3b01      	subs	r3, #1
d0043766:	60a3      	str	r3, [r4, #8]
d0043768:	6823      	ldr	r3, [r4, #0]
d004376a:	1c5a      	adds	r2, r3, #1
d004376c:	6022      	str	r2, [r4, #0]
d004376e:	701e      	strb	r6, [r3, #0]
d0043770:	6963      	ldr	r3, [r4, #20]
d0043772:	3001      	adds	r0, #1
d0043774:	4283      	cmp	r3, r0
d0043776:	d004      	beq.n	d0043782 <__swbuf_r+0x62>
d0043778:	89a3      	ldrh	r3, [r4, #12]
d004377a:	07db      	lsls	r3, r3, #31
d004377c:	d506      	bpl.n	d004378c <__swbuf_r+0x6c>
d004377e:	2e0a      	cmp	r6, #10
d0043780:	d104      	bne.n	d004378c <__swbuf_r+0x6c>
d0043782:	4621      	mov	r1, r4
d0043784:	4628      	mov	r0, r5
d0043786:	f000 f911 	bl	d00439ac <_fflush_r>
d004378a:	b988      	cbnz	r0, d00437b0 <__swbuf_r+0x90>
d004378c:	4638      	mov	r0, r7
d004378e:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d0043790:	4b0a      	ldr	r3, [pc, #40]	; (d00437bc <__swbuf_r+0x9c>)
d0043792:	429c      	cmp	r4, r3
d0043794:	d101      	bne.n	d004379a <__swbuf_r+0x7a>
d0043796:	68ac      	ldr	r4, [r5, #8]
d0043798:	e7cf      	b.n	d004373a <__swbuf_r+0x1a>
d004379a:	4b09      	ldr	r3, [pc, #36]	; (d00437c0 <__swbuf_r+0xa0>)
d004379c:	429c      	cmp	r4, r3
d004379e:	bf08      	it	eq
d00437a0:	68ec      	ldreq	r4, [r5, #12]
d00437a2:	e7ca      	b.n	d004373a <__swbuf_r+0x1a>
d00437a4:	4621      	mov	r1, r4
d00437a6:	4628      	mov	r0, r5
d00437a8:	f000 f80c 	bl	d00437c4 <__swsetup_r>
d00437ac:	2800      	cmp	r0, #0
d00437ae:	d0cb      	beq.n	d0043748 <__swbuf_r+0x28>
d00437b0:	f04f 37ff 	mov.w	r7, #4294967295	; 0xffffffff
d00437b4:	e7ea      	b.n	d004378c <__swbuf_r+0x6c>
d00437b6:	bf00      	nop
d00437b8:	d00449d0 	.word	0xd00449d0
d00437bc:	d00449f0 	.word	0xd00449f0
d00437c0:	d00449b0 	.word	0xd00449b0

d00437c4 <__swsetup_r>:
d00437c4:	4b32      	ldr	r3, [pc, #200]	; (d0043890 <__swsetup_r+0xcc>)
d00437c6:	b570      	push	{r4, r5, r6, lr}
d00437c8:	681d      	ldr	r5, [r3, #0]
d00437ca:	4606      	mov	r6, r0
d00437cc:	460c      	mov	r4, r1
d00437ce:	b125      	cbz	r5, d00437da <__swsetup_r+0x16>
d00437d0:	69ab      	ldr	r3, [r5, #24]
d00437d2:	b913      	cbnz	r3, d00437da <__swsetup_r+0x16>
d00437d4:	4628      	mov	r0, r5
d00437d6:	f000 f97d 	bl	d0043ad4 <__sinit>
d00437da:	4b2e      	ldr	r3, [pc, #184]	; (d0043894 <__swsetup_r+0xd0>)
d00437dc:	429c      	cmp	r4, r3
d00437de:	d10f      	bne.n	d0043800 <__swsetup_r+0x3c>
d00437e0:	686c      	ldr	r4, [r5, #4]
d00437e2:	89a3      	ldrh	r3, [r4, #12]
d00437e4:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
d00437e8:	0719      	lsls	r1, r3, #28
d00437ea:	d42c      	bmi.n	d0043846 <__swsetup_r+0x82>
d00437ec:	06dd      	lsls	r5, r3, #27
d00437ee:	d411      	bmi.n	d0043814 <__swsetup_r+0x50>
d00437f0:	2309      	movs	r3, #9
d00437f2:	6033      	str	r3, [r6, #0]
d00437f4:	f042 0340 	orr.w	r3, r2, #64	; 0x40
d00437f8:	81a3      	strh	r3, [r4, #12]
d00437fa:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d00437fe:	e03e      	b.n	d004387e <__swsetup_r+0xba>
d0043800:	4b25      	ldr	r3, [pc, #148]	; (d0043898 <__swsetup_r+0xd4>)
d0043802:	429c      	cmp	r4, r3
d0043804:	d101      	bne.n	d004380a <__swsetup_r+0x46>
d0043806:	68ac      	ldr	r4, [r5, #8]
d0043808:	e7eb      	b.n	d00437e2 <__swsetup_r+0x1e>
d004380a:	4b24      	ldr	r3, [pc, #144]	; (d004389c <__swsetup_r+0xd8>)
d004380c:	429c      	cmp	r4, r3
d004380e:	bf08      	it	eq
d0043810:	68ec      	ldreq	r4, [r5, #12]
d0043812:	e7e6      	b.n	d00437e2 <__swsetup_r+0x1e>
d0043814:	0758      	lsls	r0, r3, #29
d0043816:	d512      	bpl.n	d004383e <__swsetup_r+0x7a>
d0043818:	6b61      	ldr	r1, [r4, #52]	; 0x34
d004381a:	b141      	cbz	r1, d004382e <__swsetup_r+0x6a>
d004381c:	f104 0344 	add.w	r3, r4, #68	; 0x44
d0043820:	4299      	cmp	r1, r3
d0043822:	d002      	beq.n	d004382a <__swsetup_r+0x66>
d0043824:	4630      	mov	r0, r6
d0043826:	f7ff fd43 	bl	d00432b0 <_free_r>
d004382a:	2300      	movs	r3, #0
d004382c:	6363      	str	r3, [r4, #52]	; 0x34
d004382e:	89a3      	ldrh	r3, [r4, #12]
d0043830:	f023 0324 	bic.w	r3, r3, #36	; 0x24
d0043834:	81a3      	strh	r3, [r4, #12]
d0043836:	2300      	movs	r3, #0
d0043838:	6063      	str	r3, [r4, #4]
d004383a:	6923      	ldr	r3, [r4, #16]
d004383c:	6023      	str	r3, [r4, #0]
d004383e:	89a3      	ldrh	r3, [r4, #12]
d0043840:	f043 0308 	orr.w	r3, r3, #8
d0043844:	81a3      	strh	r3, [r4, #12]
d0043846:	6923      	ldr	r3, [r4, #16]
d0043848:	b94b      	cbnz	r3, d004385e <__swsetup_r+0x9a>
d004384a:	89a3      	ldrh	r3, [r4, #12]
d004384c:	f403 7320 	and.w	r3, r3, #640	; 0x280
d0043850:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
d0043854:	d003      	beq.n	d004385e <__swsetup_r+0x9a>
d0043856:	4621      	mov	r1, r4
d0043858:	4630      	mov	r0, r6
d004385a:	f000 f9ff 	bl	d0043c5c <__smakebuf_r>
d004385e:	89a0      	ldrh	r0, [r4, #12]
d0043860:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
d0043864:	f010 0301 	ands.w	r3, r0, #1
d0043868:	d00a      	beq.n	d0043880 <__swsetup_r+0xbc>
d004386a:	2300      	movs	r3, #0
d004386c:	60a3      	str	r3, [r4, #8]
d004386e:	6963      	ldr	r3, [r4, #20]
d0043870:	425b      	negs	r3, r3
d0043872:	61a3      	str	r3, [r4, #24]
d0043874:	6923      	ldr	r3, [r4, #16]
d0043876:	b943      	cbnz	r3, d004388a <__swsetup_r+0xc6>
d0043878:	f010 0080 	ands.w	r0, r0, #128	; 0x80
d004387c:	d1ba      	bne.n	d00437f4 <__swsetup_r+0x30>
d004387e:	bd70      	pop	{r4, r5, r6, pc}
d0043880:	0781      	lsls	r1, r0, #30
d0043882:	bf58      	it	pl
d0043884:	6963      	ldrpl	r3, [r4, #20]
d0043886:	60a3      	str	r3, [r4, #8]
d0043888:	e7f4      	b.n	d0043874 <__swsetup_r+0xb0>
d004388a:	2000      	movs	r0, #0
d004388c:	e7f7      	b.n	d004387e <__swsetup_r+0xba>
d004388e:	bf00      	nop
d0043890:	d0044a84 	.word	0xd0044a84
d0043894:	d00449d0 	.word	0xd00449d0
d0043898:	d00449f0 	.word	0xd00449f0
d004389c:	d00449b0 	.word	0xd00449b0

d00438a0 <__sflush_r>:
d00438a0:	898a      	ldrh	r2, [r1, #12]
d00438a2:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
d00438a6:	4605      	mov	r5, r0
d00438a8:	0710      	lsls	r0, r2, #28
d00438aa:	460c      	mov	r4, r1
d00438ac:	d458      	bmi.n	d0043960 <__sflush_r+0xc0>
d00438ae:	684b      	ldr	r3, [r1, #4]
d00438b0:	2b00      	cmp	r3, #0
d00438b2:	dc05      	bgt.n	d00438c0 <__sflush_r+0x20>
d00438b4:	6c0b      	ldr	r3, [r1, #64]	; 0x40
d00438b6:	2b00      	cmp	r3, #0
d00438b8:	dc02      	bgt.n	d00438c0 <__sflush_r+0x20>
d00438ba:	2000      	movs	r0, #0
d00438bc:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
d00438c0:	6ae6      	ldr	r6, [r4, #44]	; 0x2c
d00438c2:	2e00      	cmp	r6, #0
d00438c4:	d0f9      	beq.n	d00438ba <__sflush_r+0x1a>
d00438c6:	2300      	movs	r3, #0
d00438c8:	f412 5280 	ands.w	r2, r2, #4096	; 0x1000
d00438cc:	682f      	ldr	r7, [r5, #0]
d00438ce:	602b      	str	r3, [r5, #0]
d00438d0:	d032      	beq.n	d0043938 <__sflush_r+0x98>
d00438d2:	6d60      	ldr	r0, [r4, #84]	; 0x54
d00438d4:	89a3      	ldrh	r3, [r4, #12]
d00438d6:	075a      	lsls	r2, r3, #29
d00438d8:	d505      	bpl.n	d00438e6 <__sflush_r+0x46>
d00438da:	6863      	ldr	r3, [r4, #4]
d00438dc:	1ac0      	subs	r0, r0, r3
d00438de:	6b63      	ldr	r3, [r4, #52]	; 0x34
d00438e0:	b10b      	cbz	r3, d00438e6 <__sflush_r+0x46>
d00438e2:	6c23      	ldr	r3, [r4, #64]	; 0x40
d00438e4:	1ac0      	subs	r0, r0, r3
d00438e6:	2300      	movs	r3, #0
d00438e8:	4602      	mov	r2, r0
d00438ea:	6ae6      	ldr	r6, [r4, #44]	; 0x2c
d00438ec:	6a21      	ldr	r1, [r4, #32]
d00438ee:	4628      	mov	r0, r5
d00438f0:	47b0      	blx	r6
d00438f2:	1c43      	adds	r3, r0, #1
d00438f4:	89a3      	ldrh	r3, [r4, #12]
d00438f6:	d106      	bne.n	d0043906 <__sflush_r+0x66>
d00438f8:	6829      	ldr	r1, [r5, #0]
d00438fa:	291d      	cmp	r1, #29
d00438fc:	d82c      	bhi.n	d0043958 <__sflush_r+0xb8>
d00438fe:	4a2a      	ldr	r2, [pc, #168]	; (d00439a8 <__sflush_r+0x108>)
d0043900:	40ca      	lsrs	r2, r1
d0043902:	07d6      	lsls	r6, r2, #31
d0043904:	d528      	bpl.n	d0043958 <__sflush_r+0xb8>
d0043906:	2200      	movs	r2, #0
d0043908:	6062      	str	r2, [r4, #4]
d004390a:	04d9      	lsls	r1, r3, #19
d004390c:	6922      	ldr	r2, [r4, #16]
d004390e:	6022      	str	r2, [r4, #0]
d0043910:	d504      	bpl.n	d004391c <__sflush_r+0x7c>
d0043912:	1c42      	adds	r2, r0, #1
d0043914:	d101      	bne.n	d004391a <__sflush_r+0x7a>
d0043916:	682b      	ldr	r3, [r5, #0]
d0043918:	b903      	cbnz	r3, d004391c <__sflush_r+0x7c>
d004391a:	6560      	str	r0, [r4, #84]	; 0x54
d004391c:	6b61      	ldr	r1, [r4, #52]	; 0x34
d004391e:	602f      	str	r7, [r5, #0]
d0043920:	2900      	cmp	r1, #0
d0043922:	d0ca      	beq.n	d00438ba <__sflush_r+0x1a>
d0043924:	f104 0344 	add.w	r3, r4, #68	; 0x44
d0043928:	4299      	cmp	r1, r3
d004392a:	d002      	beq.n	d0043932 <__sflush_r+0x92>
d004392c:	4628      	mov	r0, r5
d004392e:	f7ff fcbf 	bl	d00432b0 <_free_r>
d0043932:	2000      	movs	r0, #0
d0043934:	6360      	str	r0, [r4, #52]	; 0x34
d0043936:	e7c1      	b.n	d00438bc <__sflush_r+0x1c>
d0043938:	6a21      	ldr	r1, [r4, #32]
d004393a:	2301      	movs	r3, #1
d004393c:	4628      	mov	r0, r5
d004393e:	47b0      	blx	r6
d0043940:	1c41      	adds	r1, r0, #1
d0043942:	d1c7      	bne.n	d00438d4 <__sflush_r+0x34>
d0043944:	682b      	ldr	r3, [r5, #0]
d0043946:	2b00      	cmp	r3, #0
d0043948:	d0c4      	beq.n	d00438d4 <__sflush_r+0x34>
d004394a:	2b1d      	cmp	r3, #29
d004394c:	d001      	beq.n	d0043952 <__sflush_r+0xb2>
d004394e:	2b16      	cmp	r3, #22
d0043950:	d101      	bne.n	d0043956 <__sflush_r+0xb6>
d0043952:	602f      	str	r7, [r5, #0]
d0043954:	e7b1      	b.n	d00438ba <__sflush_r+0x1a>
d0043956:	89a3      	ldrh	r3, [r4, #12]
d0043958:	f043 0340 	orr.w	r3, r3, #64	; 0x40
d004395c:	81a3      	strh	r3, [r4, #12]
d004395e:	e7ad      	b.n	d00438bc <__sflush_r+0x1c>
d0043960:	690f      	ldr	r7, [r1, #16]
d0043962:	2f00      	cmp	r7, #0
d0043964:	d0a9      	beq.n	d00438ba <__sflush_r+0x1a>
d0043966:	0793      	lsls	r3, r2, #30
d0043968:	680e      	ldr	r6, [r1, #0]
d004396a:	bf08      	it	eq
d004396c:	694b      	ldreq	r3, [r1, #20]
d004396e:	600f      	str	r7, [r1, #0]
d0043970:	bf18      	it	ne
d0043972:	2300      	movne	r3, #0
d0043974:	eba6 0807 	sub.w	r8, r6, r7
d0043978:	608b      	str	r3, [r1, #8]
d004397a:	f1b8 0f00 	cmp.w	r8, #0
d004397e:	dd9c      	ble.n	d00438ba <__sflush_r+0x1a>
d0043980:	6a21      	ldr	r1, [r4, #32]
d0043982:	6aa6      	ldr	r6, [r4, #40]	; 0x28
d0043984:	4643      	mov	r3, r8
d0043986:	463a      	mov	r2, r7
d0043988:	4628      	mov	r0, r5
d004398a:	47b0      	blx	r6
d004398c:	2800      	cmp	r0, #0
d004398e:	dc06      	bgt.n	d004399e <__sflush_r+0xfe>
d0043990:	89a3      	ldrh	r3, [r4, #12]
d0043992:	f043 0340 	orr.w	r3, r3, #64	; 0x40
d0043996:	81a3      	strh	r3, [r4, #12]
d0043998:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d004399c:	e78e      	b.n	d00438bc <__sflush_r+0x1c>
d004399e:	4407      	add	r7, r0
d00439a0:	eba8 0800 	sub.w	r8, r8, r0
d00439a4:	e7e9      	b.n	d004397a <__sflush_r+0xda>
d00439a6:	bf00      	nop
d00439a8:	20400001 	.word	0x20400001

d00439ac <_fflush_r>:
d00439ac:	b538      	push	{r3, r4, r5, lr}
d00439ae:	690b      	ldr	r3, [r1, #16]
d00439b0:	4605      	mov	r5, r0
d00439b2:	460c      	mov	r4, r1
d00439b4:	b913      	cbnz	r3, d00439bc <_fflush_r+0x10>
d00439b6:	2500      	movs	r5, #0
d00439b8:	4628      	mov	r0, r5
d00439ba:	bd38      	pop	{r3, r4, r5, pc}
d00439bc:	b118      	cbz	r0, d00439c6 <_fflush_r+0x1a>
d00439be:	6983      	ldr	r3, [r0, #24]
d00439c0:	b90b      	cbnz	r3, d00439c6 <_fflush_r+0x1a>
d00439c2:	f000 f887 	bl	d0043ad4 <__sinit>
d00439c6:	4b14      	ldr	r3, [pc, #80]	; (d0043a18 <_fflush_r+0x6c>)
d00439c8:	429c      	cmp	r4, r3
d00439ca:	d11b      	bne.n	d0043a04 <_fflush_r+0x58>
d00439cc:	686c      	ldr	r4, [r5, #4]
d00439ce:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
d00439d2:	2b00      	cmp	r3, #0
d00439d4:	d0ef      	beq.n	d00439b6 <_fflush_r+0xa>
d00439d6:	6e62      	ldr	r2, [r4, #100]	; 0x64
d00439d8:	07d0      	lsls	r0, r2, #31
d00439da:	d404      	bmi.n	d00439e6 <_fflush_r+0x3a>
d00439dc:	0599      	lsls	r1, r3, #22
d00439de:	d402      	bmi.n	d00439e6 <_fflush_r+0x3a>
d00439e0:	6da0      	ldr	r0, [r4, #88]	; 0x58
d00439e2:	f000 f915 	bl	d0043c10 <__retarget_lock_acquire_recursive>
d00439e6:	4628      	mov	r0, r5
d00439e8:	4621      	mov	r1, r4
d00439ea:	f7ff ff59 	bl	d00438a0 <__sflush_r>
d00439ee:	6e63      	ldr	r3, [r4, #100]	; 0x64
d00439f0:	07da      	lsls	r2, r3, #31
d00439f2:	4605      	mov	r5, r0
d00439f4:	d4e0      	bmi.n	d00439b8 <_fflush_r+0xc>
d00439f6:	89a3      	ldrh	r3, [r4, #12]
d00439f8:	059b      	lsls	r3, r3, #22
d00439fa:	d4dd      	bmi.n	d00439b8 <_fflush_r+0xc>
d00439fc:	6da0      	ldr	r0, [r4, #88]	; 0x58
d00439fe:	f000 f908 	bl	d0043c12 <__retarget_lock_release_recursive>
d0043a02:	e7d9      	b.n	d00439b8 <_fflush_r+0xc>
d0043a04:	4b05      	ldr	r3, [pc, #20]	; (d0043a1c <_fflush_r+0x70>)
d0043a06:	429c      	cmp	r4, r3
d0043a08:	d101      	bne.n	d0043a0e <_fflush_r+0x62>
d0043a0a:	68ac      	ldr	r4, [r5, #8]
d0043a0c:	e7df      	b.n	d00439ce <_fflush_r+0x22>
d0043a0e:	4b04      	ldr	r3, [pc, #16]	; (d0043a20 <_fflush_r+0x74>)
d0043a10:	429c      	cmp	r4, r3
d0043a12:	bf08      	it	eq
d0043a14:	68ec      	ldreq	r4, [r5, #12]
d0043a16:	e7da      	b.n	d00439ce <_fflush_r+0x22>
d0043a18:	d00449d0 	.word	0xd00449d0
d0043a1c:	d00449f0 	.word	0xd00449f0
d0043a20:	d00449b0 	.word	0xd00449b0

d0043a24 <std>:
d0043a24:	2300      	movs	r3, #0
d0043a26:	b510      	push	{r4, lr}
d0043a28:	4604      	mov	r4, r0
d0043a2a:	e9c0 3300 	strd	r3, r3, [r0]
d0043a2e:	e9c0 3304 	strd	r3, r3, [r0, #16]
d0043a32:	6083      	str	r3, [r0, #8]
d0043a34:	8181      	strh	r1, [r0, #12]
d0043a36:	6643      	str	r3, [r0, #100]	; 0x64
d0043a38:	81c2      	strh	r2, [r0, #14]
d0043a3a:	6183      	str	r3, [r0, #24]
d0043a3c:	4619      	mov	r1, r3
d0043a3e:	2208      	movs	r2, #8
d0043a40:	305c      	adds	r0, #92	; 0x5c
d0043a42:	f7ff fc2d 	bl	d00432a0 <memset>
d0043a46:	4b05      	ldr	r3, [pc, #20]	; (d0043a5c <std+0x38>)
d0043a48:	6263      	str	r3, [r4, #36]	; 0x24
d0043a4a:	4b05      	ldr	r3, [pc, #20]	; (d0043a60 <std+0x3c>)
d0043a4c:	62a3      	str	r3, [r4, #40]	; 0x28
d0043a4e:	4b05      	ldr	r3, [pc, #20]	; (d0043a64 <std+0x40>)
d0043a50:	62e3      	str	r3, [r4, #44]	; 0x2c
d0043a52:	4b05      	ldr	r3, [pc, #20]	; (d0043a68 <std+0x44>)
d0043a54:	6224      	str	r4, [r4, #32]
d0043a56:	6323      	str	r3, [r4, #48]	; 0x30
d0043a58:	bd10      	pop	{r4, pc}
d0043a5a:	bf00      	nop
d0043a5c:	d0044589 	.word	0xd0044589
d0043a60:	d00445ab 	.word	0xd00445ab
d0043a64:	d00445e3 	.word	0xd00445e3
d0043a68:	d0044607 	.word	0xd0044607

d0043a6c <_cleanup_r>:
d0043a6c:	4901      	ldr	r1, [pc, #4]	; (d0043a74 <_cleanup_r+0x8>)
d0043a6e:	f000 b8af 	b.w	d0043bd0 <_fwalk_reent>
d0043a72:	bf00      	nop
d0043a74:	d00439ad 	.word	0xd00439ad

d0043a78 <__sfmoreglue>:
d0043a78:	b570      	push	{r4, r5, r6, lr}
d0043a7a:	1e4a      	subs	r2, r1, #1
d0043a7c:	2568      	movs	r5, #104	; 0x68
d0043a7e:	4355      	muls	r5, r2
d0043a80:	460e      	mov	r6, r1
d0043a82:	f105 0174 	add.w	r1, r5, #116	; 0x74
d0043a86:	f7ff fc63 	bl	d0043350 <_malloc_r>
d0043a8a:	4604      	mov	r4, r0
d0043a8c:	b140      	cbz	r0, d0043aa0 <__sfmoreglue+0x28>
d0043a8e:	2100      	movs	r1, #0
d0043a90:	e9c0 1600 	strd	r1, r6, [r0]
d0043a94:	300c      	adds	r0, #12
d0043a96:	60a0      	str	r0, [r4, #8]
d0043a98:	f105 0268 	add.w	r2, r5, #104	; 0x68
d0043a9c:	f7ff fc00 	bl	d00432a0 <memset>
d0043aa0:	4620      	mov	r0, r4
d0043aa2:	bd70      	pop	{r4, r5, r6, pc}

d0043aa4 <__sfp_lock_acquire>:
d0043aa4:	4801      	ldr	r0, [pc, #4]	; (d0043aac <__sfp_lock_acquire+0x8>)
d0043aa6:	f000 b8b3 	b.w	d0043c10 <__retarget_lock_acquire_recursive>
d0043aaa:	bf00      	nop
d0043aac:	d0046310 	.word	0xd0046310

d0043ab0 <__sfp_lock_release>:
d0043ab0:	4801      	ldr	r0, [pc, #4]	; (d0043ab8 <__sfp_lock_release+0x8>)
d0043ab2:	f000 b8ae 	b.w	d0043c12 <__retarget_lock_release_recursive>
d0043ab6:	bf00      	nop
d0043ab8:	d0046310 	.word	0xd0046310

d0043abc <__sinit_lock_acquire>:
d0043abc:	4801      	ldr	r0, [pc, #4]	; (d0043ac4 <__sinit_lock_acquire+0x8>)
d0043abe:	f000 b8a7 	b.w	d0043c10 <__retarget_lock_acquire_recursive>
d0043ac2:	bf00      	nop
d0043ac4:	d004630b 	.word	0xd004630b

d0043ac8 <__sinit_lock_release>:
d0043ac8:	4801      	ldr	r0, [pc, #4]	; (d0043ad0 <__sinit_lock_release+0x8>)
d0043aca:	f000 b8a2 	b.w	d0043c12 <__retarget_lock_release_recursive>
d0043ace:	bf00      	nop
d0043ad0:	d004630b 	.word	0xd004630b

d0043ad4 <__sinit>:
d0043ad4:	b510      	push	{r4, lr}
d0043ad6:	4604      	mov	r4, r0
d0043ad8:	f7ff fff0 	bl	d0043abc <__sinit_lock_acquire>
d0043adc:	69a3      	ldr	r3, [r4, #24]
d0043ade:	b11b      	cbz	r3, d0043ae8 <__sinit+0x14>
d0043ae0:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
d0043ae4:	f7ff bff0 	b.w	d0043ac8 <__sinit_lock_release>
d0043ae8:	e9c4 3312 	strd	r3, r3, [r4, #72]	; 0x48
d0043aec:	6523      	str	r3, [r4, #80]	; 0x50
d0043aee:	4b13      	ldr	r3, [pc, #76]	; (d0043b3c <__sinit+0x68>)
d0043af0:	4a13      	ldr	r2, [pc, #76]	; (d0043b40 <__sinit+0x6c>)
d0043af2:	681b      	ldr	r3, [r3, #0]
d0043af4:	62a2      	str	r2, [r4, #40]	; 0x28
d0043af6:	42a3      	cmp	r3, r4
d0043af8:	bf04      	itt	eq
d0043afa:	2301      	moveq	r3, #1
d0043afc:	61a3      	streq	r3, [r4, #24]
d0043afe:	4620      	mov	r0, r4
d0043b00:	f000 f820 	bl	d0043b44 <__sfp>
d0043b04:	6060      	str	r0, [r4, #4]
d0043b06:	4620      	mov	r0, r4
d0043b08:	f000 f81c 	bl	d0043b44 <__sfp>
d0043b0c:	60a0      	str	r0, [r4, #8]
d0043b0e:	4620      	mov	r0, r4
d0043b10:	f000 f818 	bl	d0043b44 <__sfp>
d0043b14:	2200      	movs	r2, #0
d0043b16:	60e0      	str	r0, [r4, #12]
d0043b18:	2104      	movs	r1, #4
d0043b1a:	6860      	ldr	r0, [r4, #4]
d0043b1c:	f7ff ff82 	bl	d0043a24 <std>
d0043b20:	68a0      	ldr	r0, [r4, #8]
d0043b22:	2201      	movs	r2, #1
d0043b24:	2109      	movs	r1, #9
d0043b26:	f7ff ff7d 	bl	d0043a24 <std>
d0043b2a:	68e0      	ldr	r0, [r4, #12]
d0043b2c:	2202      	movs	r2, #2
d0043b2e:	2112      	movs	r1, #18
d0043b30:	f7ff ff78 	bl	d0043a24 <std>
d0043b34:	2301      	movs	r3, #1
d0043b36:	61a3      	str	r3, [r4, #24]
d0043b38:	e7d2      	b.n	d0043ae0 <__sinit+0xc>
d0043b3a:	bf00      	nop
d0043b3c:	d00449ac 	.word	0xd00449ac
d0043b40:	d0043a6d 	.word	0xd0043a6d

d0043b44 <__sfp>:
d0043b44:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d0043b46:	4607      	mov	r7, r0
d0043b48:	f7ff ffac 	bl	d0043aa4 <__sfp_lock_acquire>
d0043b4c:	4b1e      	ldr	r3, [pc, #120]	; (d0043bc8 <__sfp+0x84>)
d0043b4e:	681e      	ldr	r6, [r3, #0]
d0043b50:	69b3      	ldr	r3, [r6, #24]
d0043b52:	b913      	cbnz	r3, d0043b5a <__sfp+0x16>
d0043b54:	4630      	mov	r0, r6
d0043b56:	f7ff ffbd 	bl	d0043ad4 <__sinit>
d0043b5a:	3648      	adds	r6, #72	; 0x48
d0043b5c:	e9d6 3401 	ldrd	r3, r4, [r6, #4]
d0043b60:	3b01      	subs	r3, #1
d0043b62:	d503      	bpl.n	d0043b6c <__sfp+0x28>
d0043b64:	6833      	ldr	r3, [r6, #0]
d0043b66:	b30b      	cbz	r3, d0043bac <__sfp+0x68>
d0043b68:	6836      	ldr	r6, [r6, #0]
d0043b6a:	e7f7      	b.n	d0043b5c <__sfp+0x18>
d0043b6c:	f9b4 500c 	ldrsh.w	r5, [r4, #12]
d0043b70:	b9d5      	cbnz	r5, d0043ba8 <__sfp+0x64>
d0043b72:	4b16      	ldr	r3, [pc, #88]	; (d0043bcc <__sfp+0x88>)
d0043b74:	60e3      	str	r3, [r4, #12]
d0043b76:	f104 0058 	add.w	r0, r4, #88	; 0x58
d0043b7a:	6665      	str	r5, [r4, #100]	; 0x64
d0043b7c:	f000 f847 	bl	d0043c0e <__retarget_lock_init_recursive>
d0043b80:	f7ff ff96 	bl	d0043ab0 <__sfp_lock_release>
d0043b84:	e9c4 5501 	strd	r5, r5, [r4, #4]
d0043b88:	e9c4 5504 	strd	r5, r5, [r4, #16]
d0043b8c:	6025      	str	r5, [r4, #0]
d0043b8e:	61a5      	str	r5, [r4, #24]
d0043b90:	2208      	movs	r2, #8
d0043b92:	4629      	mov	r1, r5
d0043b94:	f104 005c 	add.w	r0, r4, #92	; 0x5c
d0043b98:	f7ff fb82 	bl	d00432a0 <memset>
d0043b9c:	e9c4 550d 	strd	r5, r5, [r4, #52]	; 0x34
d0043ba0:	e9c4 5512 	strd	r5, r5, [r4, #72]	; 0x48
d0043ba4:	4620      	mov	r0, r4
d0043ba6:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d0043ba8:	3468      	adds	r4, #104	; 0x68
d0043baa:	e7d9      	b.n	d0043b60 <__sfp+0x1c>
d0043bac:	2104      	movs	r1, #4
d0043bae:	4638      	mov	r0, r7
d0043bb0:	f7ff ff62 	bl	d0043a78 <__sfmoreglue>
d0043bb4:	4604      	mov	r4, r0
d0043bb6:	6030      	str	r0, [r6, #0]
d0043bb8:	2800      	cmp	r0, #0
d0043bba:	d1d5      	bne.n	d0043b68 <__sfp+0x24>
d0043bbc:	f7ff ff78 	bl	d0043ab0 <__sfp_lock_release>
d0043bc0:	230c      	movs	r3, #12
d0043bc2:	603b      	str	r3, [r7, #0]
d0043bc4:	e7ee      	b.n	d0043ba4 <__sfp+0x60>
d0043bc6:	bf00      	nop
d0043bc8:	d00449ac 	.word	0xd00449ac
d0043bcc:	ffff0001 	.word	0xffff0001

d0043bd0 <_fwalk_reent>:
d0043bd0:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
d0043bd4:	4606      	mov	r6, r0
d0043bd6:	4688      	mov	r8, r1
d0043bd8:	f100 0448 	add.w	r4, r0, #72	; 0x48
d0043bdc:	2700      	movs	r7, #0
d0043bde:	e9d4 9501 	ldrd	r9, r5, [r4, #4]
d0043be2:	f1b9 0901 	subs.w	r9, r9, #1
d0043be6:	d505      	bpl.n	d0043bf4 <_fwalk_reent+0x24>
d0043be8:	6824      	ldr	r4, [r4, #0]
d0043bea:	2c00      	cmp	r4, #0
d0043bec:	d1f7      	bne.n	d0043bde <_fwalk_reent+0xe>
d0043bee:	4638      	mov	r0, r7
d0043bf0:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
d0043bf4:	89ab      	ldrh	r3, [r5, #12]
d0043bf6:	2b01      	cmp	r3, #1
d0043bf8:	d907      	bls.n	d0043c0a <_fwalk_reent+0x3a>
d0043bfa:	f9b5 300e 	ldrsh.w	r3, [r5, #14]
d0043bfe:	3301      	adds	r3, #1
d0043c00:	d003      	beq.n	d0043c0a <_fwalk_reent+0x3a>
d0043c02:	4629      	mov	r1, r5
d0043c04:	4630      	mov	r0, r6
d0043c06:	47c0      	blx	r8
d0043c08:	4307      	orrs	r7, r0
d0043c0a:	3568      	adds	r5, #104	; 0x68
d0043c0c:	e7e9      	b.n	d0043be2 <_fwalk_reent+0x12>

d0043c0e <__retarget_lock_init_recursive>:
d0043c0e:	4770      	bx	lr

d0043c10 <__retarget_lock_acquire_recursive>:
d0043c10:	4770      	bx	lr

d0043c12 <__retarget_lock_release_recursive>:
d0043c12:	4770      	bx	lr

d0043c14 <__swhatbuf_r>:
d0043c14:	b570      	push	{r4, r5, r6, lr}
d0043c16:	460e      	mov	r6, r1
d0043c18:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d0043c1c:	2900      	cmp	r1, #0
d0043c1e:	b096      	sub	sp, #88	; 0x58
d0043c20:	4614      	mov	r4, r2
d0043c22:	461d      	mov	r5, r3
d0043c24:	da07      	bge.n	d0043c36 <__swhatbuf_r+0x22>
d0043c26:	2300      	movs	r3, #0
d0043c28:	602b      	str	r3, [r5, #0]
d0043c2a:	89b3      	ldrh	r3, [r6, #12]
d0043c2c:	061a      	lsls	r2, r3, #24
d0043c2e:	d410      	bmi.n	d0043c52 <__swhatbuf_r+0x3e>
d0043c30:	f44f 6380 	mov.w	r3, #1024	; 0x400
d0043c34:	e00e      	b.n	d0043c54 <__swhatbuf_r+0x40>
d0043c36:	466a      	mov	r2, sp
d0043c38:	f000 fcfa 	bl	d0044630 <_fstat_r>
d0043c3c:	2800      	cmp	r0, #0
d0043c3e:	dbf2      	blt.n	d0043c26 <__swhatbuf_r+0x12>
d0043c40:	9a01      	ldr	r2, [sp, #4]
d0043c42:	f402 4270 	and.w	r2, r2, #61440	; 0xf000
d0043c46:	f5a2 5300 	sub.w	r3, r2, #8192	; 0x2000
d0043c4a:	425a      	negs	r2, r3
d0043c4c:	415a      	adcs	r2, r3
d0043c4e:	602a      	str	r2, [r5, #0]
d0043c50:	e7ee      	b.n	d0043c30 <__swhatbuf_r+0x1c>
d0043c52:	2340      	movs	r3, #64	; 0x40
d0043c54:	2000      	movs	r0, #0
d0043c56:	6023      	str	r3, [r4, #0]
d0043c58:	b016      	add	sp, #88	; 0x58
d0043c5a:	bd70      	pop	{r4, r5, r6, pc}

d0043c5c <__smakebuf_r>:
d0043c5c:	898b      	ldrh	r3, [r1, #12]
d0043c5e:	b573      	push	{r0, r1, r4, r5, r6, lr}
d0043c60:	079d      	lsls	r5, r3, #30
d0043c62:	4606      	mov	r6, r0
d0043c64:	460c      	mov	r4, r1
d0043c66:	d507      	bpl.n	d0043c78 <__smakebuf_r+0x1c>
d0043c68:	f104 0347 	add.w	r3, r4, #71	; 0x47
d0043c6c:	6023      	str	r3, [r4, #0]
d0043c6e:	6123      	str	r3, [r4, #16]
d0043c70:	2301      	movs	r3, #1
d0043c72:	6163      	str	r3, [r4, #20]
d0043c74:	b002      	add	sp, #8
d0043c76:	bd70      	pop	{r4, r5, r6, pc}
d0043c78:	ab01      	add	r3, sp, #4
d0043c7a:	466a      	mov	r2, sp
d0043c7c:	f7ff ffca 	bl	d0043c14 <__swhatbuf_r>
d0043c80:	9900      	ldr	r1, [sp, #0]
d0043c82:	4605      	mov	r5, r0
d0043c84:	4630      	mov	r0, r6
d0043c86:	f7ff fb63 	bl	d0043350 <_malloc_r>
d0043c8a:	b948      	cbnz	r0, d0043ca0 <__smakebuf_r+0x44>
d0043c8c:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
d0043c90:	059a      	lsls	r2, r3, #22
d0043c92:	d4ef      	bmi.n	d0043c74 <__smakebuf_r+0x18>
d0043c94:	f023 0303 	bic.w	r3, r3, #3
d0043c98:	f043 0302 	orr.w	r3, r3, #2
d0043c9c:	81a3      	strh	r3, [r4, #12]
d0043c9e:	e7e3      	b.n	d0043c68 <__smakebuf_r+0xc>
d0043ca0:	4b0d      	ldr	r3, [pc, #52]	; (d0043cd8 <__smakebuf_r+0x7c>)
d0043ca2:	62b3      	str	r3, [r6, #40]	; 0x28
d0043ca4:	89a3      	ldrh	r3, [r4, #12]
d0043ca6:	6020      	str	r0, [r4, #0]
d0043ca8:	f043 0380 	orr.w	r3, r3, #128	; 0x80
d0043cac:	81a3      	strh	r3, [r4, #12]
d0043cae:	9b00      	ldr	r3, [sp, #0]
d0043cb0:	6163      	str	r3, [r4, #20]
d0043cb2:	9b01      	ldr	r3, [sp, #4]
d0043cb4:	6120      	str	r0, [r4, #16]
d0043cb6:	b15b      	cbz	r3, d0043cd0 <__smakebuf_r+0x74>
d0043cb8:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
d0043cbc:	4630      	mov	r0, r6
d0043cbe:	f000 fcc9 	bl	d0044654 <_isatty_r>
d0043cc2:	b128      	cbz	r0, d0043cd0 <__smakebuf_r+0x74>
d0043cc4:	89a3      	ldrh	r3, [r4, #12]
d0043cc6:	f023 0303 	bic.w	r3, r3, #3
d0043cca:	f043 0301 	orr.w	r3, r3, #1
d0043cce:	81a3      	strh	r3, [r4, #12]
d0043cd0:	89a0      	ldrh	r0, [r4, #12]
d0043cd2:	4305      	orrs	r5, r0
d0043cd4:	81a5      	strh	r5, [r4, #12]
d0043cd6:	e7cd      	b.n	d0043c74 <__smakebuf_r+0x18>
d0043cd8:	d0043a6d 	.word	0xd0043a6d

d0043cdc <__malloc_lock>:
d0043cdc:	4801      	ldr	r0, [pc, #4]	; (d0043ce4 <__malloc_lock+0x8>)
d0043cde:	f7ff bf97 	b.w	d0043c10 <__retarget_lock_acquire_recursive>
d0043ce2:	bf00      	nop
d0043ce4:	d004630c 	.word	0xd004630c

d0043ce8 <__malloc_unlock>:
d0043ce8:	4801      	ldr	r0, [pc, #4]	; (d0043cf0 <__malloc_unlock+0x8>)
d0043cea:	f7ff bf92 	b.w	d0043c12 <__retarget_lock_release_recursive>
d0043cee:	bf00      	nop
d0043cf0:	d004630c 	.word	0xd004630c

d0043cf4 <__ssputs_r>:
d0043cf4:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
d0043cf8:	688e      	ldr	r6, [r1, #8]
d0043cfa:	429e      	cmp	r6, r3
d0043cfc:	4682      	mov	sl, r0
d0043cfe:	460c      	mov	r4, r1
d0043d00:	4690      	mov	r8, r2
d0043d02:	461f      	mov	r7, r3
d0043d04:	d838      	bhi.n	d0043d78 <__ssputs_r+0x84>
d0043d06:	898a      	ldrh	r2, [r1, #12]
d0043d08:	f412 6f90 	tst.w	r2, #1152	; 0x480
d0043d0c:	d032      	beq.n	d0043d74 <__ssputs_r+0x80>
d0043d0e:	6825      	ldr	r5, [r4, #0]
d0043d10:	6909      	ldr	r1, [r1, #16]
d0043d12:	eba5 0901 	sub.w	r9, r5, r1
d0043d16:	6965      	ldr	r5, [r4, #20]
d0043d18:	eb05 0545 	add.w	r5, r5, r5, lsl #1
d0043d1c:	eb05 75d5 	add.w	r5, r5, r5, lsr #31
d0043d20:	3301      	adds	r3, #1
d0043d22:	444b      	add	r3, r9
d0043d24:	106d      	asrs	r5, r5, #1
d0043d26:	429d      	cmp	r5, r3
d0043d28:	bf38      	it	cc
d0043d2a:	461d      	movcc	r5, r3
d0043d2c:	0553      	lsls	r3, r2, #21
d0043d2e:	d531      	bpl.n	d0043d94 <__ssputs_r+0xa0>
d0043d30:	4629      	mov	r1, r5
d0043d32:	f7ff fb0d 	bl	d0043350 <_malloc_r>
d0043d36:	4606      	mov	r6, r0
d0043d38:	b950      	cbnz	r0, d0043d50 <__ssputs_r+0x5c>
d0043d3a:	230c      	movs	r3, #12
d0043d3c:	f8ca 3000 	str.w	r3, [sl]
d0043d40:	89a3      	ldrh	r3, [r4, #12]
d0043d42:	f043 0340 	orr.w	r3, r3, #64	; 0x40
d0043d46:	81a3      	strh	r3, [r4, #12]
d0043d48:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d0043d4c:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
d0043d50:	6921      	ldr	r1, [r4, #16]
d0043d52:	464a      	mov	r2, r9
d0043d54:	f000 fcf4 	bl	d0044740 <memcpy>
d0043d58:	89a3      	ldrh	r3, [r4, #12]
d0043d5a:	f423 6390 	bic.w	r3, r3, #1152	; 0x480
d0043d5e:	f043 0380 	orr.w	r3, r3, #128	; 0x80
d0043d62:	81a3      	strh	r3, [r4, #12]
d0043d64:	6126      	str	r6, [r4, #16]
d0043d66:	6165      	str	r5, [r4, #20]
d0043d68:	444e      	add	r6, r9
d0043d6a:	eba5 0509 	sub.w	r5, r5, r9
d0043d6e:	6026      	str	r6, [r4, #0]
d0043d70:	60a5      	str	r5, [r4, #8]
d0043d72:	463e      	mov	r6, r7
d0043d74:	42be      	cmp	r6, r7
d0043d76:	d900      	bls.n	d0043d7a <__ssputs_r+0x86>
d0043d78:	463e      	mov	r6, r7
d0043d7a:	4632      	mov	r2, r6
d0043d7c:	6820      	ldr	r0, [r4, #0]
d0043d7e:	4641      	mov	r1, r8
d0043d80:	f000 fcec 	bl	d004475c <memmove>
d0043d84:	68a3      	ldr	r3, [r4, #8]
d0043d86:	6822      	ldr	r2, [r4, #0]
d0043d88:	1b9b      	subs	r3, r3, r6
d0043d8a:	4432      	add	r2, r6
d0043d8c:	60a3      	str	r3, [r4, #8]
d0043d8e:	6022      	str	r2, [r4, #0]
d0043d90:	2000      	movs	r0, #0
d0043d92:	e7db      	b.n	d0043d4c <__ssputs_r+0x58>
d0043d94:	462a      	mov	r2, r5
d0043d96:	f000 fcfb 	bl	d0044790 <_realloc_r>
d0043d9a:	4606      	mov	r6, r0
d0043d9c:	2800      	cmp	r0, #0
d0043d9e:	d1e1      	bne.n	d0043d64 <__ssputs_r+0x70>
d0043da0:	6921      	ldr	r1, [r4, #16]
d0043da2:	4650      	mov	r0, sl
d0043da4:	f7ff fa84 	bl	d00432b0 <_free_r>
d0043da8:	e7c7      	b.n	d0043d3a <__ssputs_r+0x46>
	...

d0043dac <_svfiprintf_r>:
d0043dac:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0043db0:	4698      	mov	r8, r3
d0043db2:	898b      	ldrh	r3, [r1, #12]
d0043db4:	061b      	lsls	r3, r3, #24
d0043db6:	b09d      	sub	sp, #116	; 0x74
d0043db8:	4607      	mov	r7, r0
d0043dba:	460d      	mov	r5, r1
d0043dbc:	4614      	mov	r4, r2
d0043dbe:	d50e      	bpl.n	d0043dde <_svfiprintf_r+0x32>
d0043dc0:	690b      	ldr	r3, [r1, #16]
d0043dc2:	b963      	cbnz	r3, d0043dde <_svfiprintf_r+0x32>
d0043dc4:	2140      	movs	r1, #64	; 0x40
d0043dc6:	f7ff fac3 	bl	d0043350 <_malloc_r>
d0043dca:	6028      	str	r0, [r5, #0]
d0043dcc:	6128      	str	r0, [r5, #16]
d0043dce:	b920      	cbnz	r0, d0043dda <_svfiprintf_r+0x2e>
d0043dd0:	230c      	movs	r3, #12
d0043dd2:	603b      	str	r3, [r7, #0]
d0043dd4:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d0043dd8:	e0d1      	b.n	d0043f7e <_svfiprintf_r+0x1d2>
d0043dda:	2340      	movs	r3, #64	; 0x40
d0043ddc:	616b      	str	r3, [r5, #20]
d0043dde:	2300      	movs	r3, #0
d0043de0:	9309      	str	r3, [sp, #36]	; 0x24
d0043de2:	2320      	movs	r3, #32
d0043de4:	f88d 3029 	strb.w	r3, [sp, #41]	; 0x29
d0043de8:	f8cd 800c 	str.w	r8, [sp, #12]
d0043dec:	2330      	movs	r3, #48	; 0x30
d0043dee:	f8df 81a8 	ldr.w	r8, [pc, #424]	; d0043f98 <_svfiprintf_r+0x1ec>
d0043df2:	f88d 302a 	strb.w	r3, [sp, #42]	; 0x2a
d0043df6:	f04f 0901 	mov.w	r9, #1
d0043dfa:	4623      	mov	r3, r4
d0043dfc:	469a      	mov	sl, r3
d0043dfe:	f813 2b01 	ldrb.w	r2, [r3], #1
d0043e02:	b10a      	cbz	r2, d0043e08 <_svfiprintf_r+0x5c>
d0043e04:	2a25      	cmp	r2, #37	; 0x25
d0043e06:	d1f9      	bne.n	d0043dfc <_svfiprintf_r+0x50>
d0043e08:	ebba 0b04 	subs.w	fp, sl, r4
d0043e0c:	d00b      	beq.n	d0043e26 <_svfiprintf_r+0x7a>
d0043e0e:	465b      	mov	r3, fp
d0043e10:	4622      	mov	r2, r4
d0043e12:	4629      	mov	r1, r5
d0043e14:	4638      	mov	r0, r7
d0043e16:	f7ff ff6d 	bl	d0043cf4 <__ssputs_r>
d0043e1a:	3001      	adds	r0, #1
d0043e1c:	f000 80aa 	beq.w	d0043f74 <_svfiprintf_r+0x1c8>
d0043e20:	9a09      	ldr	r2, [sp, #36]	; 0x24
d0043e22:	445a      	add	r2, fp
d0043e24:	9209      	str	r2, [sp, #36]	; 0x24
d0043e26:	f89a 3000 	ldrb.w	r3, [sl]
d0043e2a:	2b00      	cmp	r3, #0
d0043e2c:	f000 80a2 	beq.w	d0043f74 <_svfiprintf_r+0x1c8>
d0043e30:	2300      	movs	r3, #0
d0043e32:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
d0043e36:	e9cd 2305 	strd	r2, r3, [sp, #20]
d0043e3a:	f10a 0a01 	add.w	sl, sl, #1
d0043e3e:	9304      	str	r3, [sp, #16]
d0043e40:	9307      	str	r3, [sp, #28]
d0043e42:	f88d 3053 	strb.w	r3, [sp, #83]	; 0x53
d0043e46:	931a      	str	r3, [sp, #104]	; 0x68
d0043e48:	4654      	mov	r4, sl
d0043e4a:	2205      	movs	r2, #5
d0043e4c:	f814 1b01 	ldrb.w	r1, [r4], #1
d0043e50:	4851      	ldr	r0, [pc, #324]	; (d0043f98 <_svfiprintf_r+0x1ec>)
d0043e52:	f000 fc25 	bl	d00446a0 <memchr>
d0043e56:	9a04      	ldr	r2, [sp, #16]
d0043e58:	b9d8      	cbnz	r0, d0043e92 <_svfiprintf_r+0xe6>
d0043e5a:	06d0      	lsls	r0, r2, #27
d0043e5c:	bf44      	itt	mi
d0043e5e:	2320      	movmi	r3, #32
d0043e60:	f88d 3053 	strbmi.w	r3, [sp, #83]	; 0x53
d0043e64:	0711      	lsls	r1, r2, #28
d0043e66:	bf44      	itt	mi
d0043e68:	232b      	movmi	r3, #43	; 0x2b
d0043e6a:	f88d 3053 	strbmi.w	r3, [sp, #83]	; 0x53
d0043e6e:	f89a 3000 	ldrb.w	r3, [sl]
d0043e72:	2b2a      	cmp	r3, #42	; 0x2a
d0043e74:	d015      	beq.n	d0043ea2 <_svfiprintf_r+0xf6>
d0043e76:	9a07      	ldr	r2, [sp, #28]
d0043e78:	4654      	mov	r4, sl
d0043e7a:	2000      	movs	r0, #0
d0043e7c:	f04f 0c0a 	mov.w	ip, #10
d0043e80:	4621      	mov	r1, r4
d0043e82:	f811 3b01 	ldrb.w	r3, [r1], #1
d0043e86:	3b30      	subs	r3, #48	; 0x30
d0043e88:	2b09      	cmp	r3, #9
d0043e8a:	d94e      	bls.n	d0043f2a <_svfiprintf_r+0x17e>
d0043e8c:	b1b0      	cbz	r0, d0043ebc <_svfiprintf_r+0x110>
d0043e8e:	9207      	str	r2, [sp, #28]
d0043e90:	e014      	b.n	d0043ebc <_svfiprintf_r+0x110>
d0043e92:	eba0 0308 	sub.w	r3, r0, r8
d0043e96:	fa09 f303 	lsl.w	r3, r9, r3
d0043e9a:	4313      	orrs	r3, r2
d0043e9c:	9304      	str	r3, [sp, #16]
d0043e9e:	46a2      	mov	sl, r4
d0043ea0:	e7d2      	b.n	d0043e48 <_svfiprintf_r+0x9c>
d0043ea2:	9b03      	ldr	r3, [sp, #12]
d0043ea4:	1d19      	adds	r1, r3, #4
d0043ea6:	681b      	ldr	r3, [r3, #0]
d0043ea8:	9103      	str	r1, [sp, #12]
d0043eaa:	2b00      	cmp	r3, #0
d0043eac:	bfbb      	ittet	lt
d0043eae:	425b      	neglt	r3, r3
d0043eb0:	f042 0202 	orrlt.w	r2, r2, #2
d0043eb4:	9307      	strge	r3, [sp, #28]
d0043eb6:	9307      	strlt	r3, [sp, #28]
d0043eb8:	bfb8      	it	lt
d0043eba:	9204      	strlt	r2, [sp, #16]
d0043ebc:	7823      	ldrb	r3, [r4, #0]
d0043ebe:	2b2e      	cmp	r3, #46	; 0x2e
d0043ec0:	d10c      	bne.n	d0043edc <_svfiprintf_r+0x130>
d0043ec2:	7863      	ldrb	r3, [r4, #1]
d0043ec4:	2b2a      	cmp	r3, #42	; 0x2a
d0043ec6:	d135      	bne.n	d0043f34 <_svfiprintf_r+0x188>
d0043ec8:	9b03      	ldr	r3, [sp, #12]
d0043eca:	1d1a      	adds	r2, r3, #4
d0043ecc:	681b      	ldr	r3, [r3, #0]
d0043ece:	9203      	str	r2, [sp, #12]
d0043ed0:	2b00      	cmp	r3, #0
d0043ed2:	bfb8      	it	lt
d0043ed4:	f04f 33ff 	movlt.w	r3, #4294967295	; 0xffffffff
d0043ed8:	3402      	adds	r4, #2
d0043eda:	9305      	str	r3, [sp, #20]
d0043edc:	f8df a0c8 	ldr.w	sl, [pc, #200]	; d0043fa8 <_svfiprintf_r+0x1fc>
d0043ee0:	7821      	ldrb	r1, [r4, #0]
d0043ee2:	2203      	movs	r2, #3
d0043ee4:	4650      	mov	r0, sl
d0043ee6:	f000 fbdb 	bl	d00446a0 <memchr>
d0043eea:	b140      	cbz	r0, d0043efe <_svfiprintf_r+0x152>
d0043eec:	2340      	movs	r3, #64	; 0x40
d0043eee:	eba0 000a 	sub.w	r0, r0, sl
d0043ef2:	fa03 f000 	lsl.w	r0, r3, r0
d0043ef6:	9b04      	ldr	r3, [sp, #16]
d0043ef8:	4303      	orrs	r3, r0
d0043efa:	3401      	adds	r4, #1
d0043efc:	9304      	str	r3, [sp, #16]
d0043efe:	f814 1b01 	ldrb.w	r1, [r4], #1
d0043f02:	4826      	ldr	r0, [pc, #152]	; (d0043f9c <_svfiprintf_r+0x1f0>)
d0043f04:	f88d 1028 	strb.w	r1, [sp, #40]	; 0x28
d0043f08:	2206      	movs	r2, #6
d0043f0a:	f000 fbc9 	bl	d00446a0 <memchr>
d0043f0e:	2800      	cmp	r0, #0
d0043f10:	d038      	beq.n	d0043f84 <_svfiprintf_r+0x1d8>
d0043f12:	4b23      	ldr	r3, [pc, #140]	; (d0043fa0 <_svfiprintf_r+0x1f4>)
d0043f14:	bb1b      	cbnz	r3, d0043f5e <_svfiprintf_r+0x1b2>
d0043f16:	9b03      	ldr	r3, [sp, #12]
d0043f18:	3307      	adds	r3, #7
d0043f1a:	f023 0307 	bic.w	r3, r3, #7
d0043f1e:	3308      	adds	r3, #8
d0043f20:	9303      	str	r3, [sp, #12]
d0043f22:	9b09      	ldr	r3, [sp, #36]	; 0x24
d0043f24:	4433      	add	r3, r6
d0043f26:	9309      	str	r3, [sp, #36]	; 0x24
d0043f28:	e767      	b.n	d0043dfa <_svfiprintf_r+0x4e>
d0043f2a:	fb0c 3202 	mla	r2, ip, r2, r3
d0043f2e:	460c      	mov	r4, r1
d0043f30:	2001      	movs	r0, #1
d0043f32:	e7a5      	b.n	d0043e80 <_svfiprintf_r+0xd4>
d0043f34:	2300      	movs	r3, #0
d0043f36:	3401      	adds	r4, #1
d0043f38:	9305      	str	r3, [sp, #20]
d0043f3a:	4619      	mov	r1, r3
d0043f3c:	f04f 0c0a 	mov.w	ip, #10
d0043f40:	4620      	mov	r0, r4
d0043f42:	f810 2b01 	ldrb.w	r2, [r0], #1
d0043f46:	3a30      	subs	r2, #48	; 0x30
d0043f48:	2a09      	cmp	r2, #9
d0043f4a:	d903      	bls.n	d0043f54 <_svfiprintf_r+0x1a8>
d0043f4c:	2b00      	cmp	r3, #0
d0043f4e:	d0c5      	beq.n	d0043edc <_svfiprintf_r+0x130>
d0043f50:	9105      	str	r1, [sp, #20]
d0043f52:	e7c3      	b.n	d0043edc <_svfiprintf_r+0x130>
d0043f54:	fb0c 2101 	mla	r1, ip, r1, r2
d0043f58:	4604      	mov	r4, r0
d0043f5a:	2301      	movs	r3, #1
d0043f5c:	e7f0      	b.n	d0043f40 <_svfiprintf_r+0x194>
d0043f5e:	ab03      	add	r3, sp, #12
d0043f60:	9300      	str	r3, [sp, #0]
d0043f62:	462a      	mov	r2, r5
d0043f64:	4b0f      	ldr	r3, [pc, #60]	; (d0043fa4 <_svfiprintf_r+0x1f8>)
d0043f66:	a904      	add	r1, sp, #16
d0043f68:	4638      	mov	r0, r7
d0043f6a:	f3af 8000 	nop.w
d0043f6e:	1c42      	adds	r2, r0, #1
d0043f70:	4606      	mov	r6, r0
d0043f72:	d1d6      	bne.n	d0043f22 <_svfiprintf_r+0x176>
d0043f74:	89ab      	ldrh	r3, [r5, #12]
d0043f76:	065b      	lsls	r3, r3, #25
d0043f78:	f53f af2c 	bmi.w	d0043dd4 <_svfiprintf_r+0x28>
d0043f7c:	9809      	ldr	r0, [sp, #36]	; 0x24
d0043f7e:	b01d      	add	sp, #116	; 0x74
d0043f80:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0043f84:	ab03      	add	r3, sp, #12
d0043f86:	9300      	str	r3, [sp, #0]
d0043f88:	462a      	mov	r2, r5
d0043f8a:	4b06      	ldr	r3, [pc, #24]	; (d0043fa4 <_svfiprintf_r+0x1f8>)
d0043f8c:	a904      	add	r1, sp, #16
d0043f8e:	4638      	mov	r0, r7
d0043f90:	f000 f9d4 	bl	d004433c <_printf_i>
d0043f94:	e7eb      	b.n	d0043f6e <_svfiprintf_r+0x1c2>
d0043f96:	bf00      	nop
d0043f98:	d0044a10 	.word	0xd0044a10
d0043f9c:	d0044a1a 	.word	0xd0044a1a
d0043fa0:	00000000 	.word	0x00000000
d0043fa4:	d0043cf5 	.word	0xd0043cf5
d0043fa8:	d0044a16 	.word	0xd0044a16

d0043fac <__sfputc_r>:
d0043fac:	6893      	ldr	r3, [r2, #8]
d0043fae:	3b01      	subs	r3, #1
d0043fb0:	2b00      	cmp	r3, #0
d0043fb2:	b410      	push	{r4}
d0043fb4:	6093      	str	r3, [r2, #8]
d0043fb6:	da08      	bge.n	d0043fca <__sfputc_r+0x1e>
d0043fb8:	6994      	ldr	r4, [r2, #24]
d0043fba:	42a3      	cmp	r3, r4
d0043fbc:	db01      	blt.n	d0043fc2 <__sfputc_r+0x16>
d0043fbe:	290a      	cmp	r1, #10
d0043fc0:	d103      	bne.n	d0043fca <__sfputc_r+0x1e>
d0043fc2:	f85d 4b04 	ldr.w	r4, [sp], #4
d0043fc6:	f7ff bbab 	b.w	d0043720 <__swbuf_r>
d0043fca:	6813      	ldr	r3, [r2, #0]
d0043fcc:	1c58      	adds	r0, r3, #1
d0043fce:	6010      	str	r0, [r2, #0]
d0043fd0:	7019      	strb	r1, [r3, #0]
d0043fd2:	4608      	mov	r0, r1
d0043fd4:	f85d 4b04 	ldr.w	r4, [sp], #4
d0043fd8:	4770      	bx	lr

d0043fda <__sfputs_r>:
d0043fda:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d0043fdc:	4606      	mov	r6, r0
d0043fde:	460f      	mov	r7, r1
d0043fe0:	4614      	mov	r4, r2
d0043fe2:	18d5      	adds	r5, r2, r3
d0043fe4:	42ac      	cmp	r4, r5
d0043fe6:	d101      	bne.n	d0043fec <__sfputs_r+0x12>
d0043fe8:	2000      	movs	r0, #0
d0043fea:	e007      	b.n	d0043ffc <__sfputs_r+0x22>
d0043fec:	f814 1b01 	ldrb.w	r1, [r4], #1
d0043ff0:	463a      	mov	r2, r7
d0043ff2:	4630      	mov	r0, r6
d0043ff4:	f7ff ffda 	bl	d0043fac <__sfputc_r>
d0043ff8:	1c43      	adds	r3, r0, #1
d0043ffa:	d1f3      	bne.n	d0043fe4 <__sfputs_r+0xa>
d0043ffc:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
	...

d0044000 <_vfiprintf_r>:
d0044000:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0044004:	460d      	mov	r5, r1
d0044006:	b09d      	sub	sp, #116	; 0x74
d0044008:	4614      	mov	r4, r2
d004400a:	4698      	mov	r8, r3
d004400c:	4606      	mov	r6, r0
d004400e:	b118      	cbz	r0, d0044018 <_vfiprintf_r+0x18>
d0044010:	6983      	ldr	r3, [r0, #24]
d0044012:	b90b      	cbnz	r3, d0044018 <_vfiprintf_r+0x18>
d0044014:	f7ff fd5e 	bl	d0043ad4 <__sinit>
d0044018:	4b89      	ldr	r3, [pc, #548]	; (d0044240 <_vfiprintf_r+0x240>)
d004401a:	429d      	cmp	r5, r3
d004401c:	d11b      	bne.n	d0044056 <_vfiprintf_r+0x56>
d004401e:	6875      	ldr	r5, [r6, #4]
d0044020:	6e6b      	ldr	r3, [r5, #100]	; 0x64
d0044022:	07d9      	lsls	r1, r3, #31
d0044024:	d405      	bmi.n	d0044032 <_vfiprintf_r+0x32>
d0044026:	89ab      	ldrh	r3, [r5, #12]
d0044028:	059a      	lsls	r2, r3, #22
d004402a:	d402      	bmi.n	d0044032 <_vfiprintf_r+0x32>
d004402c:	6da8      	ldr	r0, [r5, #88]	; 0x58
d004402e:	f7ff fdef 	bl	d0043c10 <__retarget_lock_acquire_recursive>
d0044032:	89ab      	ldrh	r3, [r5, #12]
d0044034:	071b      	lsls	r3, r3, #28
d0044036:	d501      	bpl.n	d004403c <_vfiprintf_r+0x3c>
d0044038:	692b      	ldr	r3, [r5, #16]
d004403a:	b9eb      	cbnz	r3, d0044078 <_vfiprintf_r+0x78>
d004403c:	4629      	mov	r1, r5
d004403e:	4630      	mov	r0, r6
d0044040:	f7ff fbc0 	bl	d00437c4 <__swsetup_r>
d0044044:	b1c0      	cbz	r0, d0044078 <_vfiprintf_r+0x78>
d0044046:	6e6b      	ldr	r3, [r5, #100]	; 0x64
d0044048:	07dc      	lsls	r4, r3, #31
d004404a:	d50e      	bpl.n	d004406a <_vfiprintf_r+0x6a>
d004404c:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d0044050:	b01d      	add	sp, #116	; 0x74
d0044052:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0044056:	4b7b      	ldr	r3, [pc, #492]	; (d0044244 <_vfiprintf_r+0x244>)
d0044058:	429d      	cmp	r5, r3
d004405a:	d101      	bne.n	d0044060 <_vfiprintf_r+0x60>
d004405c:	68b5      	ldr	r5, [r6, #8]
d004405e:	e7df      	b.n	d0044020 <_vfiprintf_r+0x20>
d0044060:	4b79      	ldr	r3, [pc, #484]	; (d0044248 <_vfiprintf_r+0x248>)
d0044062:	429d      	cmp	r5, r3
d0044064:	bf08      	it	eq
d0044066:	68f5      	ldreq	r5, [r6, #12]
d0044068:	e7da      	b.n	d0044020 <_vfiprintf_r+0x20>
d004406a:	89ab      	ldrh	r3, [r5, #12]
d004406c:	0598      	lsls	r0, r3, #22
d004406e:	d4ed      	bmi.n	d004404c <_vfiprintf_r+0x4c>
d0044070:	6da8      	ldr	r0, [r5, #88]	; 0x58
d0044072:	f7ff fdce 	bl	d0043c12 <__retarget_lock_release_recursive>
d0044076:	e7e9      	b.n	d004404c <_vfiprintf_r+0x4c>
d0044078:	2300      	movs	r3, #0
d004407a:	9309      	str	r3, [sp, #36]	; 0x24
d004407c:	2320      	movs	r3, #32
d004407e:	f88d 3029 	strb.w	r3, [sp, #41]	; 0x29
d0044082:	f8cd 800c 	str.w	r8, [sp, #12]
d0044086:	2330      	movs	r3, #48	; 0x30
d0044088:	f8df 81c0 	ldr.w	r8, [pc, #448]	; d004424c <_vfiprintf_r+0x24c>
d004408c:	f88d 302a 	strb.w	r3, [sp, #42]	; 0x2a
d0044090:	f04f 0901 	mov.w	r9, #1
d0044094:	4623      	mov	r3, r4
d0044096:	469a      	mov	sl, r3
d0044098:	f813 2b01 	ldrb.w	r2, [r3], #1
d004409c:	b10a      	cbz	r2, d00440a2 <_vfiprintf_r+0xa2>
d004409e:	2a25      	cmp	r2, #37	; 0x25
d00440a0:	d1f9      	bne.n	d0044096 <_vfiprintf_r+0x96>
d00440a2:	ebba 0b04 	subs.w	fp, sl, r4
d00440a6:	d00b      	beq.n	d00440c0 <_vfiprintf_r+0xc0>
d00440a8:	465b      	mov	r3, fp
d00440aa:	4622      	mov	r2, r4
d00440ac:	4629      	mov	r1, r5
d00440ae:	4630      	mov	r0, r6
d00440b0:	f7ff ff93 	bl	d0043fda <__sfputs_r>
d00440b4:	3001      	adds	r0, #1
d00440b6:	f000 80aa 	beq.w	d004420e <_vfiprintf_r+0x20e>
d00440ba:	9a09      	ldr	r2, [sp, #36]	; 0x24
d00440bc:	445a      	add	r2, fp
d00440be:	9209      	str	r2, [sp, #36]	; 0x24
d00440c0:	f89a 3000 	ldrb.w	r3, [sl]
d00440c4:	2b00      	cmp	r3, #0
d00440c6:	f000 80a2 	beq.w	d004420e <_vfiprintf_r+0x20e>
d00440ca:	2300      	movs	r3, #0
d00440cc:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
d00440d0:	e9cd 2305 	strd	r2, r3, [sp, #20]
d00440d4:	f10a 0a01 	add.w	sl, sl, #1
d00440d8:	9304      	str	r3, [sp, #16]
d00440da:	9307      	str	r3, [sp, #28]
d00440dc:	f88d 3053 	strb.w	r3, [sp, #83]	; 0x53
d00440e0:	931a      	str	r3, [sp, #104]	; 0x68
d00440e2:	4654      	mov	r4, sl
d00440e4:	2205      	movs	r2, #5
d00440e6:	f814 1b01 	ldrb.w	r1, [r4], #1
d00440ea:	4858      	ldr	r0, [pc, #352]	; (d004424c <_vfiprintf_r+0x24c>)
d00440ec:	f000 fad8 	bl	d00446a0 <memchr>
d00440f0:	9a04      	ldr	r2, [sp, #16]
d00440f2:	b9d8      	cbnz	r0, d004412c <_vfiprintf_r+0x12c>
d00440f4:	06d1      	lsls	r1, r2, #27
d00440f6:	bf44      	itt	mi
d00440f8:	2320      	movmi	r3, #32
d00440fa:	f88d 3053 	strbmi.w	r3, [sp, #83]	; 0x53
d00440fe:	0713      	lsls	r3, r2, #28
d0044100:	bf44      	itt	mi
d0044102:	232b      	movmi	r3, #43	; 0x2b
d0044104:	f88d 3053 	strbmi.w	r3, [sp, #83]	; 0x53
d0044108:	f89a 3000 	ldrb.w	r3, [sl]
d004410c:	2b2a      	cmp	r3, #42	; 0x2a
d004410e:	d015      	beq.n	d004413c <_vfiprintf_r+0x13c>
d0044110:	9a07      	ldr	r2, [sp, #28]
d0044112:	4654      	mov	r4, sl
d0044114:	2000      	movs	r0, #0
d0044116:	f04f 0c0a 	mov.w	ip, #10
d004411a:	4621      	mov	r1, r4
d004411c:	f811 3b01 	ldrb.w	r3, [r1], #1
d0044120:	3b30      	subs	r3, #48	; 0x30
d0044122:	2b09      	cmp	r3, #9
d0044124:	d94e      	bls.n	d00441c4 <_vfiprintf_r+0x1c4>
d0044126:	b1b0      	cbz	r0, d0044156 <_vfiprintf_r+0x156>
d0044128:	9207      	str	r2, [sp, #28]
d004412a:	e014      	b.n	d0044156 <_vfiprintf_r+0x156>
d004412c:	eba0 0308 	sub.w	r3, r0, r8
d0044130:	fa09 f303 	lsl.w	r3, r9, r3
d0044134:	4313      	orrs	r3, r2
d0044136:	9304      	str	r3, [sp, #16]
d0044138:	46a2      	mov	sl, r4
d004413a:	e7d2      	b.n	d00440e2 <_vfiprintf_r+0xe2>
d004413c:	9b03      	ldr	r3, [sp, #12]
d004413e:	1d19      	adds	r1, r3, #4
d0044140:	681b      	ldr	r3, [r3, #0]
d0044142:	9103      	str	r1, [sp, #12]
d0044144:	2b00      	cmp	r3, #0
d0044146:	bfbb      	ittet	lt
d0044148:	425b      	neglt	r3, r3
d004414a:	f042 0202 	orrlt.w	r2, r2, #2
d004414e:	9307      	strge	r3, [sp, #28]
d0044150:	9307      	strlt	r3, [sp, #28]
d0044152:	bfb8      	it	lt
d0044154:	9204      	strlt	r2, [sp, #16]
d0044156:	7823      	ldrb	r3, [r4, #0]
d0044158:	2b2e      	cmp	r3, #46	; 0x2e
d004415a:	d10c      	bne.n	d0044176 <_vfiprintf_r+0x176>
d004415c:	7863      	ldrb	r3, [r4, #1]
d004415e:	2b2a      	cmp	r3, #42	; 0x2a
d0044160:	d135      	bne.n	d00441ce <_vfiprintf_r+0x1ce>
d0044162:	9b03      	ldr	r3, [sp, #12]
d0044164:	1d1a      	adds	r2, r3, #4
d0044166:	681b      	ldr	r3, [r3, #0]
d0044168:	9203      	str	r2, [sp, #12]
d004416a:	2b00      	cmp	r3, #0
d004416c:	bfb8      	it	lt
d004416e:	f04f 33ff 	movlt.w	r3, #4294967295	; 0xffffffff
d0044172:	3402      	adds	r4, #2
d0044174:	9305      	str	r3, [sp, #20]
d0044176:	f8df a0e4 	ldr.w	sl, [pc, #228]	; d004425c <_vfiprintf_r+0x25c>
d004417a:	7821      	ldrb	r1, [r4, #0]
d004417c:	2203      	movs	r2, #3
d004417e:	4650      	mov	r0, sl
d0044180:	f000 fa8e 	bl	d00446a0 <memchr>
d0044184:	b140      	cbz	r0, d0044198 <_vfiprintf_r+0x198>
d0044186:	2340      	movs	r3, #64	; 0x40
d0044188:	eba0 000a 	sub.w	r0, r0, sl
d004418c:	fa03 f000 	lsl.w	r0, r3, r0
d0044190:	9b04      	ldr	r3, [sp, #16]
d0044192:	4303      	orrs	r3, r0
d0044194:	3401      	adds	r4, #1
d0044196:	9304      	str	r3, [sp, #16]
d0044198:	f814 1b01 	ldrb.w	r1, [r4], #1
d004419c:	482c      	ldr	r0, [pc, #176]	; (d0044250 <_vfiprintf_r+0x250>)
d004419e:	f88d 1028 	strb.w	r1, [sp, #40]	; 0x28
d00441a2:	2206      	movs	r2, #6
d00441a4:	f000 fa7c 	bl	d00446a0 <memchr>
d00441a8:	2800      	cmp	r0, #0
d00441aa:	d03f      	beq.n	d004422c <_vfiprintf_r+0x22c>
d00441ac:	4b29      	ldr	r3, [pc, #164]	; (d0044254 <_vfiprintf_r+0x254>)
d00441ae:	bb1b      	cbnz	r3, d00441f8 <_vfiprintf_r+0x1f8>
d00441b0:	9b03      	ldr	r3, [sp, #12]
d00441b2:	3307      	adds	r3, #7
d00441b4:	f023 0307 	bic.w	r3, r3, #7
d00441b8:	3308      	adds	r3, #8
d00441ba:	9303      	str	r3, [sp, #12]
d00441bc:	9b09      	ldr	r3, [sp, #36]	; 0x24
d00441be:	443b      	add	r3, r7
d00441c0:	9309      	str	r3, [sp, #36]	; 0x24
d00441c2:	e767      	b.n	d0044094 <_vfiprintf_r+0x94>
d00441c4:	fb0c 3202 	mla	r2, ip, r2, r3
d00441c8:	460c      	mov	r4, r1
d00441ca:	2001      	movs	r0, #1
d00441cc:	e7a5      	b.n	d004411a <_vfiprintf_r+0x11a>
d00441ce:	2300      	movs	r3, #0
d00441d0:	3401      	adds	r4, #1
d00441d2:	9305      	str	r3, [sp, #20]
d00441d4:	4619      	mov	r1, r3
d00441d6:	f04f 0c0a 	mov.w	ip, #10
d00441da:	4620      	mov	r0, r4
d00441dc:	f810 2b01 	ldrb.w	r2, [r0], #1
d00441e0:	3a30      	subs	r2, #48	; 0x30
d00441e2:	2a09      	cmp	r2, #9
d00441e4:	d903      	bls.n	d00441ee <_vfiprintf_r+0x1ee>
d00441e6:	2b00      	cmp	r3, #0
d00441e8:	d0c5      	beq.n	d0044176 <_vfiprintf_r+0x176>
d00441ea:	9105      	str	r1, [sp, #20]
d00441ec:	e7c3      	b.n	d0044176 <_vfiprintf_r+0x176>
d00441ee:	fb0c 2101 	mla	r1, ip, r1, r2
d00441f2:	4604      	mov	r4, r0
d00441f4:	2301      	movs	r3, #1
d00441f6:	e7f0      	b.n	d00441da <_vfiprintf_r+0x1da>
d00441f8:	ab03      	add	r3, sp, #12
d00441fa:	9300      	str	r3, [sp, #0]
d00441fc:	462a      	mov	r2, r5
d00441fe:	4b16      	ldr	r3, [pc, #88]	; (d0044258 <_vfiprintf_r+0x258>)
d0044200:	a904      	add	r1, sp, #16
d0044202:	4630      	mov	r0, r6
d0044204:	f3af 8000 	nop.w
d0044208:	4607      	mov	r7, r0
d004420a:	1c78      	adds	r0, r7, #1
d004420c:	d1d6      	bne.n	d00441bc <_vfiprintf_r+0x1bc>
d004420e:	6e6b      	ldr	r3, [r5, #100]	; 0x64
d0044210:	07d9      	lsls	r1, r3, #31
d0044212:	d405      	bmi.n	d0044220 <_vfiprintf_r+0x220>
d0044214:	89ab      	ldrh	r3, [r5, #12]
d0044216:	059a      	lsls	r2, r3, #22
d0044218:	d402      	bmi.n	d0044220 <_vfiprintf_r+0x220>
d004421a:	6da8      	ldr	r0, [r5, #88]	; 0x58
d004421c:	f7ff fcf9 	bl	d0043c12 <__retarget_lock_release_recursive>
d0044220:	89ab      	ldrh	r3, [r5, #12]
d0044222:	065b      	lsls	r3, r3, #25
d0044224:	f53f af12 	bmi.w	d004404c <_vfiprintf_r+0x4c>
d0044228:	9809      	ldr	r0, [sp, #36]	; 0x24
d004422a:	e711      	b.n	d0044050 <_vfiprintf_r+0x50>
d004422c:	ab03      	add	r3, sp, #12
d004422e:	9300      	str	r3, [sp, #0]
d0044230:	462a      	mov	r2, r5
d0044232:	4b09      	ldr	r3, [pc, #36]	; (d0044258 <_vfiprintf_r+0x258>)
d0044234:	a904      	add	r1, sp, #16
d0044236:	4630      	mov	r0, r6
d0044238:	f000 f880 	bl	d004433c <_printf_i>
d004423c:	e7e4      	b.n	d0044208 <_vfiprintf_r+0x208>
d004423e:	bf00      	nop
d0044240:	d00449d0 	.word	0xd00449d0
d0044244:	d00449f0 	.word	0xd00449f0
d0044248:	d00449b0 	.word	0xd00449b0
d004424c:	d0044a10 	.word	0xd0044a10
d0044250:	d0044a1a 	.word	0xd0044a1a
d0044254:	00000000 	.word	0x00000000
d0044258:	d0043fdb 	.word	0xd0043fdb
d004425c:	d0044a16 	.word	0xd0044a16

d0044260 <_printf_common>:
d0044260:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
d0044264:	4616      	mov	r6, r2
d0044266:	4699      	mov	r9, r3
d0044268:	688a      	ldr	r2, [r1, #8]
d004426a:	690b      	ldr	r3, [r1, #16]
d004426c:	f8dd 8020 	ldr.w	r8, [sp, #32]
d0044270:	4293      	cmp	r3, r2
d0044272:	bfb8      	it	lt
d0044274:	4613      	movlt	r3, r2
d0044276:	6033      	str	r3, [r6, #0]
d0044278:	f891 2043 	ldrb.w	r2, [r1, #67]	; 0x43
d004427c:	4607      	mov	r7, r0
d004427e:	460c      	mov	r4, r1
d0044280:	b10a      	cbz	r2, d0044286 <_printf_common+0x26>
d0044282:	3301      	adds	r3, #1
d0044284:	6033      	str	r3, [r6, #0]
d0044286:	6823      	ldr	r3, [r4, #0]
d0044288:	0699      	lsls	r1, r3, #26
d004428a:	bf42      	ittt	mi
d004428c:	6833      	ldrmi	r3, [r6, #0]
d004428e:	3302      	addmi	r3, #2
d0044290:	6033      	strmi	r3, [r6, #0]
d0044292:	6825      	ldr	r5, [r4, #0]
d0044294:	f015 0506 	ands.w	r5, r5, #6
d0044298:	d106      	bne.n	d00442a8 <_printf_common+0x48>
d004429a:	f104 0a19 	add.w	sl, r4, #25
d004429e:	68e3      	ldr	r3, [r4, #12]
d00442a0:	6832      	ldr	r2, [r6, #0]
d00442a2:	1a9b      	subs	r3, r3, r2
d00442a4:	42ab      	cmp	r3, r5
d00442a6:	dc26      	bgt.n	d00442f6 <_printf_common+0x96>
d00442a8:	f894 2043 	ldrb.w	r2, [r4, #67]	; 0x43
d00442ac:	1e13      	subs	r3, r2, #0
d00442ae:	6822      	ldr	r2, [r4, #0]
d00442b0:	bf18      	it	ne
d00442b2:	2301      	movne	r3, #1
d00442b4:	0692      	lsls	r2, r2, #26
d00442b6:	d42b      	bmi.n	d0044310 <_printf_common+0xb0>
d00442b8:	f104 0243 	add.w	r2, r4, #67	; 0x43
d00442bc:	4649      	mov	r1, r9
d00442be:	4638      	mov	r0, r7
d00442c0:	47c0      	blx	r8
d00442c2:	3001      	adds	r0, #1
d00442c4:	d01e      	beq.n	d0044304 <_printf_common+0xa4>
d00442c6:	6823      	ldr	r3, [r4, #0]
d00442c8:	68e5      	ldr	r5, [r4, #12]
d00442ca:	6832      	ldr	r2, [r6, #0]
d00442cc:	f003 0306 	and.w	r3, r3, #6
d00442d0:	2b04      	cmp	r3, #4
d00442d2:	bf08      	it	eq
d00442d4:	1aad      	subeq	r5, r5, r2
d00442d6:	68a3      	ldr	r3, [r4, #8]
d00442d8:	6922      	ldr	r2, [r4, #16]
d00442da:	bf0c      	ite	eq
d00442dc:	ea25 75e5 	biceq.w	r5, r5, r5, asr #31
d00442e0:	2500      	movne	r5, #0
d00442e2:	4293      	cmp	r3, r2
d00442e4:	bfc4      	itt	gt
d00442e6:	1a9b      	subgt	r3, r3, r2
d00442e8:	18ed      	addgt	r5, r5, r3
d00442ea:	2600      	movs	r6, #0
d00442ec:	341a      	adds	r4, #26
d00442ee:	42b5      	cmp	r5, r6
d00442f0:	d11a      	bne.n	d0044328 <_printf_common+0xc8>
d00442f2:	2000      	movs	r0, #0
d00442f4:	e008      	b.n	d0044308 <_printf_common+0xa8>
d00442f6:	2301      	movs	r3, #1
d00442f8:	4652      	mov	r2, sl
d00442fa:	4649      	mov	r1, r9
d00442fc:	4638      	mov	r0, r7
d00442fe:	47c0      	blx	r8
d0044300:	3001      	adds	r0, #1
d0044302:	d103      	bne.n	d004430c <_printf_common+0xac>
d0044304:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d0044308:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
d004430c:	3501      	adds	r5, #1
d004430e:	e7c6      	b.n	d004429e <_printf_common+0x3e>
d0044310:	18e1      	adds	r1, r4, r3
d0044312:	1c5a      	adds	r2, r3, #1
d0044314:	2030      	movs	r0, #48	; 0x30
d0044316:	f881 0043 	strb.w	r0, [r1, #67]	; 0x43
d004431a:	4422      	add	r2, r4
d004431c:	f894 1045 	ldrb.w	r1, [r4, #69]	; 0x45
d0044320:	f882 1043 	strb.w	r1, [r2, #67]	; 0x43
d0044324:	3302      	adds	r3, #2
d0044326:	e7c7      	b.n	d00442b8 <_printf_common+0x58>
d0044328:	2301      	movs	r3, #1
d004432a:	4622      	mov	r2, r4
d004432c:	4649      	mov	r1, r9
d004432e:	4638      	mov	r0, r7
d0044330:	47c0      	blx	r8
d0044332:	3001      	adds	r0, #1
d0044334:	d0e6      	beq.n	d0044304 <_printf_common+0xa4>
d0044336:	3601      	adds	r6, #1
d0044338:	e7d9      	b.n	d00442ee <_printf_common+0x8e>
	...

d004433c <_printf_i>:
d004433c:	e92d 47ff 	stmdb	sp!, {r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, lr}
d0044340:	460c      	mov	r4, r1
d0044342:	4691      	mov	r9, r2
d0044344:	7e27      	ldrb	r7, [r4, #24]
d0044346:	990c      	ldr	r1, [sp, #48]	; 0x30
d0044348:	2f78      	cmp	r7, #120	; 0x78
d004434a:	4680      	mov	r8, r0
d004434c:	469a      	mov	sl, r3
d004434e:	f104 0243 	add.w	r2, r4, #67	; 0x43
d0044352:	d807      	bhi.n	d0044364 <_printf_i+0x28>
d0044354:	2f62      	cmp	r7, #98	; 0x62
d0044356:	d80a      	bhi.n	d004436e <_printf_i+0x32>
d0044358:	2f00      	cmp	r7, #0
d004435a:	f000 80d8 	beq.w	d004450e <_printf_i+0x1d2>
d004435e:	2f58      	cmp	r7, #88	; 0x58
d0044360:	f000 80a3 	beq.w	d00444aa <_printf_i+0x16e>
d0044364:	f104 0642 	add.w	r6, r4, #66	; 0x42
d0044368:	f884 7042 	strb.w	r7, [r4, #66]	; 0x42
d004436c:	e03a      	b.n	d00443e4 <_printf_i+0xa8>
d004436e:	f1a7 0363 	sub.w	r3, r7, #99	; 0x63
d0044372:	2b15      	cmp	r3, #21
d0044374:	d8f6      	bhi.n	d0044364 <_printf_i+0x28>
d0044376:	a001      	add	r0, pc, #4	; (adr r0, d004437c <_printf_i+0x40>)
d0044378:	f850 f023 	ldr.w	pc, [r0, r3, lsl #2]
d004437c:	d00443d5 	.word	0xd00443d5
d0044380:	d00443e9 	.word	0xd00443e9
d0044384:	d0044365 	.word	0xd0044365
d0044388:	d0044365 	.word	0xd0044365
d004438c:	d0044365 	.word	0xd0044365
d0044390:	d0044365 	.word	0xd0044365
d0044394:	d00443e9 	.word	0xd00443e9
d0044398:	d0044365 	.word	0xd0044365
d004439c:	d0044365 	.word	0xd0044365
d00443a0:	d0044365 	.word	0xd0044365
d00443a4:	d0044365 	.word	0xd0044365
d00443a8:	d00444f5 	.word	0xd00444f5
d00443ac:	d0044419 	.word	0xd0044419
d00443b0:	d00444d7 	.word	0xd00444d7
d00443b4:	d0044365 	.word	0xd0044365
d00443b8:	d0044365 	.word	0xd0044365
d00443bc:	d0044517 	.word	0xd0044517
d00443c0:	d0044365 	.word	0xd0044365
d00443c4:	d0044419 	.word	0xd0044419
d00443c8:	d0044365 	.word	0xd0044365
d00443cc:	d0044365 	.word	0xd0044365
d00443d0:	d00444df 	.word	0xd00444df
d00443d4:	680b      	ldr	r3, [r1, #0]
d00443d6:	1d1a      	adds	r2, r3, #4
d00443d8:	681b      	ldr	r3, [r3, #0]
d00443da:	600a      	str	r2, [r1, #0]
d00443dc:	f104 0642 	add.w	r6, r4, #66	; 0x42
d00443e0:	f884 3042 	strb.w	r3, [r4, #66]	; 0x42
d00443e4:	2301      	movs	r3, #1
d00443e6:	e0a3      	b.n	d0044530 <_printf_i+0x1f4>
d00443e8:	6825      	ldr	r5, [r4, #0]
d00443ea:	6808      	ldr	r0, [r1, #0]
d00443ec:	062e      	lsls	r6, r5, #24
d00443ee:	f100 0304 	add.w	r3, r0, #4
d00443f2:	d50a      	bpl.n	d004440a <_printf_i+0xce>
d00443f4:	6805      	ldr	r5, [r0, #0]
d00443f6:	600b      	str	r3, [r1, #0]
d00443f8:	2d00      	cmp	r5, #0
d00443fa:	da03      	bge.n	d0044404 <_printf_i+0xc8>
d00443fc:	232d      	movs	r3, #45	; 0x2d
d00443fe:	426d      	negs	r5, r5
d0044400:	f884 3043 	strb.w	r3, [r4, #67]	; 0x43
d0044404:	485e      	ldr	r0, [pc, #376]	; (d0044580 <_printf_i+0x244>)
d0044406:	230a      	movs	r3, #10
d0044408:	e019      	b.n	d004443e <_printf_i+0x102>
d004440a:	f015 0f40 	tst.w	r5, #64	; 0x40
d004440e:	6805      	ldr	r5, [r0, #0]
d0044410:	600b      	str	r3, [r1, #0]
d0044412:	bf18      	it	ne
d0044414:	b22d      	sxthne	r5, r5
d0044416:	e7ef      	b.n	d00443f8 <_printf_i+0xbc>
d0044418:	680b      	ldr	r3, [r1, #0]
d004441a:	6825      	ldr	r5, [r4, #0]
d004441c:	1d18      	adds	r0, r3, #4
d004441e:	6008      	str	r0, [r1, #0]
d0044420:	0628      	lsls	r0, r5, #24
d0044422:	d501      	bpl.n	d0044428 <_printf_i+0xec>
d0044424:	681d      	ldr	r5, [r3, #0]
d0044426:	e002      	b.n	d004442e <_printf_i+0xf2>
d0044428:	0669      	lsls	r1, r5, #25
d004442a:	d5fb      	bpl.n	d0044424 <_printf_i+0xe8>
d004442c:	881d      	ldrh	r5, [r3, #0]
d004442e:	4854      	ldr	r0, [pc, #336]	; (d0044580 <_printf_i+0x244>)
d0044430:	2f6f      	cmp	r7, #111	; 0x6f
d0044432:	bf0c      	ite	eq
d0044434:	2308      	moveq	r3, #8
d0044436:	230a      	movne	r3, #10
d0044438:	2100      	movs	r1, #0
d004443a:	f884 1043 	strb.w	r1, [r4, #67]	; 0x43
d004443e:	6866      	ldr	r6, [r4, #4]
d0044440:	60a6      	str	r6, [r4, #8]
d0044442:	2e00      	cmp	r6, #0
d0044444:	bfa2      	ittt	ge
d0044446:	6821      	ldrge	r1, [r4, #0]
d0044448:	f021 0104 	bicge.w	r1, r1, #4
d004444c:	6021      	strge	r1, [r4, #0]
d004444e:	b90d      	cbnz	r5, d0044454 <_printf_i+0x118>
d0044450:	2e00      	cmp	r6, #0
d0044452:	d04d      	beq.n	d00444f0 <_printf_i+0x1b4>
d0044454:	4616      	mov	r6, r2
d0044456:	fbb5 f1f3 	udiv	r1, r5, r3
d004445a:	fb03 5711 	mls	r7, r3, r1, r5
d004445e:	5dc7      	ldrb	r7, [r0, r7]
d0044460:	f806 7d01 	strb.w	r7, [r6, #-1]!
d0044464:	462f      	mov	r7, r5
d0044466:	42bb      	cmp	r3, r7
d0044468:	460d      	mov	r5, r1
d004446a:	d9f4      	bls.n	d0044456 <_printf_i+0x11a>
d004446c:	2b08      	cmp	r3, #8
d004446e:	d10b      	bne.n	d0044488 <_printf_i+0x14c>
d0044470:	6823      	ldr	r3, [r4, #0]
d0044472:	07df      	lsls	r7, r3, #31
d0044474:	d508      	bpl.n	d0044488 <_printf_i+0x14c>
d0044476:	6923      	ldr	r3, [r4, #16]
d0044478:	6861      	ldr	r1, [r4, #4]
d004447a:	4299      	cmp	r1, r3
d004447c:	bfde      	ittt	le
d004447e:	2330      	movle	r3, #48	; 0x30
d0044480:	f806 3c01 	strble.w	r3, [r6, #-1]
d0044484:	f106 36ff 	addle.w	r6, r6, #4294967295	; 0xffffffff
d0044488:	1b92      	subs	r2, r2, r6
d004448a:	6122      	str	r2, [r4, #16]
d004448c:	f8cd a000 	str.w	sl, [sp]
d0044490:	464b      	mov	r3, r9
d0044492:	aa03      	add	r2, sp, #12
d0044494:	4621      	mov	r1, r4
d0044496:	4640      	mov	r0, r8
d0044498:	f7ff fee2 	bl	d0044260 <_printf_common>
d004449c:	3001      	adds	r0, #1
d004449e:	d14c      	bne.n	d004453a <_printf_i+0x1fe>
d00444a0:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d00444a4:	b004      	add	sp, #16
d00444a6:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
d00444aa:	4835      	ldr	r0, [pc, #212]	; (d0044580 <_printf_i+0x244>)
d00444ac:	f884 7045 	strb.w	r7, [r4, #69]	; 0x45
d00444b0:	6823      	ldr	r3, [r4, #0]
d00444b2:	680e      	ldr	r6, [r1, #0]
d00444b4:	061f      	lsls	r7, r3, #24
d00444b6:	f856 5b04 	ldr.w	r5, [r6], #4
d00444ba:	600e      	str	r6, [r1, #0]
d00444bc:	d514      	bpl.n	d00444e8 <_printf_i+0x1ac>
d00444be:	07d9      	lsls	r1, r3, #31
d00444c0:	bf44      	itt	mi
d00444c2:	f043 0320 	orrmi.w	r3, r3, #32
d00444c6:	6023      	strmi	r3, [r4, #0]
d00444c8:	b91d      	cbnz	r5, d00444d2 <_printf_i+0x196>
d00444ca:	6823      	ldr	r3, [r4, #0]
d00444cc:	f023 0320 	bic.w	r3, r3, #32
d00444d0:	6023      	str	r3, [r4, #0]
d00444d2:	2310      	movs	r3, #16
d00444d4:	e7b0      	b.n	d0044438 <_printf_i+0xfc>
d00444d6:	6823      	ldr	r3, [r4, #0]
d00444d8:	f043 0320 	orr.w	r3, r3, #32
d00444dc:	6023      	str	r3, [r4, #0]
d00444de:	2378      	movs	r3, #120	; 0x78
d00444e0:	4828      	ldr	r0, [pc, #160]	; (d0044584 <_printf_i+0x248>)
d00444e2:	f884 3045 	strb.w	r3, [r4, #69]	; 0x45
d00444e6:	e7e3      	b.n	d00444b0 <_printf_i+0x174>
d00444e8:	065e      	lsls	r6, r3, #25
d00444ea:	bf48      	it	mi
d00444ec:	b2ad      	uxthmi	r5, r5
d00444ee:	e7e6      	b.n	d00444be <_printf_i+0x182>
d00444f0:	4616      	mov	r6, r2
d00444f2:	e7bb      	b.n	d004446c <_printf_i+0x130>
d00444f4:	680b      	ldr	r3, [r1, #0]
d00444f6:	6826      	ldr	r6, [r4, #0]
d00444f8:	6960      	ldr	r0, [r4, #20]
d00444fa:	1d1d      	adds	r5, r3, #4
d00444fc:	600d      	str	r5, [r1, #0]
d00444fe:	0635      	lsls	r5, r6, #24
d0044500:	681b      	ldr	r3, [r3, #0]
d0044502:	d501      	bpl.n	d0044508 <_printf_i+0x1cc>
d0044504:	6018      	str	r0, [r3, #0]
d0044506:	e002      	b.n	d004450e <_printf_i+0x1d2>
d0044508:	0671      	lsls	r1, r6, #25
d004450a:	d5fb      	bpl.n	d0044504 <_printf_i+0x1c8>
d004450c:	8018      	strh	r0, [r3, #0]
d004450e:	2300      	movs	r3, #0
d0044510:	6123      	str	r3, [r4, #16]
d0044512:	4616      	mov	r6, r2
d0044514:	e7ba      	b.n	d004448c <_printf_i+0x150>
d0044516:	680b      	ldr	r3, [r1, #0]
d0044518:	1d1a      	adds	r2, r3, #4
d004451a:	600a      	str	r2, [r1, #0]
d004451c:	681e      	ldr	r6, [r3, #0]
d004451e:	6862      	ldr	r2, [r4, #4]
d0044520:	2100      	movs	r1, #0
d0044522:	4630      	mov	r0, r6
d0044524:	f000 f8bc 	bl	d00446a0 <memchr>
d0044528:	b108      	cbz	r0, d004452e <_printf_i+0x1f2>
d004452a:	1b80      	subs	r0, r0, r6
d004452c:	6060      	str	r0, [r4, #4]
d004452e:	6863      	ldr	r3, [r4, #4]
d0044530:	6123      	str	r3, [r4, #16]
d0044532:	2300      	movs	r3, #0
d0044534:	f884 3043 	strb.w	r3, [r4, #67]	; 0x43
d0044538:	e7a8      	b.n	d004448c <_printf_i+0x150>
d004453a:	6923      	ldr	r3, [r4, #16]
d004453c:	4632      	mov	r2, r6
d004453e:	4649      	mov	r1, r9
d0044540:	4640      	mov	r0, r8
d0044542:	47d0      	blx	sl
d0044544:	3001      	adds	r0, #1
d0044546:	d0ab      	beq.n	d00444a0 <_printf_i+0x164>
d0044548:	6823      	ldr	r3, [r4, #0]
d004454a:	079b      	lsls	r3, r3, #30
d004454c:	d413      	bmi.n	d0044576 <_printf_i+0x23a>
d004454e:	68e0      	ldr	r0, [r4, #12]
d0044550:	9b03      	ldr	r3, [sp, #12]
d0044552:	4298      	cmp	r0, r3
d0044554:	bfb8      	it	lt
d0044556:	4618      	movlt	r0, r3
d0044558:	e7a4      	b.n	d00444a4 <_printf_i+0x168>
d004455a:	2301      	movs	r3, #1
d004455c:	4632      	mov	r2, r6
d004455e:	4649      	mov	r1, r9
d0044560:	4640      	mov	r0, r8
d0044562:	47d0      	blx	sl
d0044564:	3001      	adds	r0, #1
d0044566:	d09b      	beq.n	d00444a0 <_printf_i+0x164>
d0044568:	3501      	adds	r5, #1
d004456a:	68e3      	ldr	r3, [r4, #12]
d004456c:	9903      	ldr	r1, [sp, #12]
d004456e:	1a5b      	subs	r3, r3, r1
d0044570:	42ab      	cmp	r3, r5
d0044572:	dcf2      	bgt.n	d004455a <_printf_i+0x21e>
d0044574:	e7eb      	b.n	d004454e <_printf_i+0x212>
d0044576:	2500      	movs	r5, #0
d0044578:	f104 0619 	add.w	r6, r4, #25
d004457c:	e7f5      	b.n	d004456a <_printf_i+0x22e>
d004457e:	bf00      	nop
d0044580:	d0044a21 	.word	0xd0044a21
d0044584:	d0044a32 	.word	0xd0044a32

d0044588 <__sread>:
d0044588:	b510      	push	{r4, lr}
d004458a:	460c      	mov	r4, r1
d004458c:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d0044590:	f000 f924 	bl	d00447dc <_read_r>
d0044594:	2800      	cmp	r0, #0
d0044596:	bfab      	itete	ge
d0044598:	6d63      	ldrge	r3, [r4, #84]	; 0x54
d004459a:	89a3      	ldrhlt	r3, [r4, #12]
d004459c:	181b      	addge	r3, r3, r0
d004459e:	f423 5380 	biclt.w	r3, r3, #4096	; 0x1000
d00445a2:	bfac      	ite	ge
d00445a4:	6563      	strge	r3, [r4, #84]	; 0x54
d00445a6:	81a3      	strhlt	r3, [r4, #12]
d00445a8:	bd10      	pop	{r4, pc}

d00445aa <__swrite>:
d00445aa:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
d00445ae:	461f      	mov	r7, r3
d00445b0:	898b      	ldrh	r3, [r1, #12]
d00445b2:	05db      	lsls	r3, r3, #23
d00445b4:	4605      	mov	r5, r0
d00445b6:	460c      	mov	r4, r1
d00445b8:	4616      	mov	r6, r2
d00445ba:	d505      	bpl.n	d00445c8 <__swrite+0x1e>
d00445bc:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d00445c0:	2302      	movs	r3, #2
d00445c2:	2200      	movs	r2, #0
d00445c4:	f000 f856 	bl	d0044674 <_lseek_r>
d00445c8:	89a3      	ldrh	r3, [r4, #12]
d00445ca:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
d00445ce:	f423 5380 	bic.w	r3, r3, #4096	; 0x1000
d00445d2:	81a3      	strh	r3, [r4, #12]
d00445d4:	4632      	mov	r2, r6
d00445d6:	463b      	mov	r3, r7
d00445d8:	4628      	mov	r0, r5
d00445da:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
d00445de:	f7fb bd39 	b.w	d0040054 <_write_r>

d00445e2 <__sseek>:
d00445e2:	b510      	push	{r4, lr}
d00445e4:	460c      	mov	r4, r1
d00445e6:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d00445ea:	f000 f843 	bl	d0044674 <_lseek_r>
d00445ee:	1c43      	adds	r3, r0, #1
d00445f0:	89a3      	ldrh	r3, [r4, #12]
d00445f2:	bf15      	itete	ne
d00445f4:	6560      	strne	r0, [r4, #84]	; 0x54
d00445f6:	f423 5380 	biceq.w	r3, r3, #4096	; 0x1000
d00445fa:	f443 5380 	orrne.w	r3, r3, #4096	; 0x1000
d00445fe:	81a3      	strheq	r3, [r4, #12]
d0044600:	bf18      	it	ne
d0044602:	81a3      	strhne	r3, [r4, #12]
d0044604:	bd10      	pop	{r4, pc}

d0044606 <__sclose>:
d0044606:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d004460a:	f000 b801 	b.w	d0044610 <_close_r>
	...

d0044610 <_close_r>:
d0044610:	b538      	push	{r3, r4, r5, lr}
d0044612:	4d06      	ldr	r5, [pc, #24]	; (d004462c <_close_r+0x1c>)
d0044614:	2300      	movs	r3, #0
d0044616:	4604      	mov	r4, r0
d0044618:	4608      	mov	r0, r1
d004461a:	602b      	str	r3, [r5, #0]
d004461c:	f7fb fd54 	bl	d00400c8 <_close>
d0044620:	1c43      	adds	r3, r0, #1
d0044622:	d102      	bne.n	d004462a <_close_r+0x1a>
d0044624:	682b      	ldr	r3, [r5, #0]
d0044626:	b103      	cbz	r3, d004462a <_close_r+0x1a>
d0044628:	6023      	str	r3, [r4, #0]
d004462a:	bd38      	pop	{r3, r4, r5, pc}
d004462c:	d0046314 	.word	0xd0046314

d0044630 <_fstat_r>:
d0044630:	b538      	push	{r3, r4, r5, lr}
d0044632:	4d07      	ldr	r5, [pc, #28]	; (d0044650 <_fstat_r+0x20>)
d0044634:	2300      	movs	r3, #0
d0044636:	4604      	mov	r4, r0
d0044638:	4608      	mov	r0, r1
d004463a:	4611      	mov	r1, r2
d004463c:	602b      	str	r3, [r5, #0]
d004463e:	f7fb fd47 	bl	d00400d0 <_fstat>
d0044642:	1c43      	adds	r3, r0, #1
d0044644:	d102      	bne.n	d004464c <_fstat_r+0x1c>
d0044646:	682b      	ldr	r3, [r5, #0]
d0044648:	b103      	cbz	r3, d004464c <_fstat_r+0x1c>
d004464a:	6023      	str	r3, [r4, #0]
d004464c:	bd38      	pop	{r3, r4, r5, pc}
d004464e:	bf00      	nop
d0044650:	d0046314 	.word	0xd0046314

d0044654 <_isatty_r>:
d0044654:	b538      	push	{r3, r4, r5, lr}
d0044656:	4d06      	ldr	r5, [pc, #24]	; (d0044670 <_isatty_r+0x1c>)
d0044658:	2300      	movs	r3, #0
d004465a:	4604      	mov	r4, r0
d004465c:	4608      	mov	r0, r1
d004465e:	602b      	str	r3, [r5, #0]
d0044660:	f7fb fd5e 	bl	d0040120 <_isatty>
d0044664:	1c43      	adds	r3, r0, #1
d0044666:	d102      	bne.n	d004466e <_isatty_r+0x1a>
d0044668:	682b      	ldr	r3, [r5, #0]
d004466a:	b103      	cbz	r3, d004466e <_isatty_r+0x1a>
d004466c:	6023      	str	r3, [r4, #0]
d004466e:	bd38      	pop	{r3, r4, r5, pc}
d0044670:	d0046314 	.word	0xd0046314

d0044674 <_lseek_r>:
d0044674:	b538      	push	{r3, r4, r5, lr}
d0044676:	4d07      	ldr	r5, [pc, #28]	; (d0044694 <_lseek_r+0x20>)
d0044678:	4604      	mov	r4, r0
d004467a:	4608      	mov	r0, r1
d004467c:	4611      	mov	r1, r2
d004467e:	2200      	movs	r2, #0
d0044680:	602a      	str	r2, [r5, #0]
d0044682:	461a      	mov	r2, r3
d0044684:	f7fb fd2a 	bl	d00400dc <_lseek>
d0044688:	1c43      	adds	r3, r0, #1
d004468a:	d102      	bne.n	d0044692 <_lseek_r+0x1e>
d004468c:	682b      	ldr	r3, [r5, #0]
d004468e:	b103      	cbz	r3, d0044692 <_lseek_r+0x1e>
d0044690:	6023      	str	r3, [r4, #0]
d0044692:	bd38      	pop	{r3, r4, r5, pc}
d0044694:	d0046314 	.word	0xd0046314
	...

d00446a0 <memchr>:
d00446a0:	f001 01ff 	and.w	r1, r1, #255	; 0xff
d00446a4:	2a10      	cmp	r2, #16
d00446a6:	db2b      	blt.n	d0044700 <memchr+0x60>
d00446a8:	f010 0f07 	tst.w	r0, #7
d00446ac:	d008      	beq.n	d00446c0 <memchr+0x20>
d00446ae:	f810 3b01 	ldrb.w	r3, [r0], #1
d00446b2:	3a01      	subs	r2, #1
d00446b4:	428b      	cmp	r3, r1
d00446b6:	d02d      	beq.n	d0044714 <memchr+0x74>
d00446b8:	f010 0f07 	tst.w	r0, #7
d00446bc:	b342      	cbz	r2, d0044710 <memchr+0x70>
d00446be:	d1f6      	bne.n	d00446ae <memchr+0xe>
d00446c0:	b4f0      	push	{r4, r5, r6, r7}
d00446c2:	ea41 2101 	orr.w	r1, r1, r1, lsl #8
d00446c6:	ea41 4101 	orr.w	r1, r1, r1, lsl #16
d00446ca:	f022 0407 	bic.w	r4, r2, #7
d00446ce:	f07f 0700 	mvns.w	r7, #0
d00446d2:	2300      	movs	r3, #0
d00446d4:	e8f0 5602 	ldrd	r5, r6, [r0], #8
d00446d8:	3c08      	subs	r4, #8
d00446da:	ea85 0501 	eor.w	r5, r5, r1
d00446de:	ea86 0601 	eor.w	r6, r6, r1
d00446e2:	fa85 f547 	uadd8	r5, r5, r7
d00446e6:	faa3 f587 	sel	r5, r3, r7
d00446ea:	fa86 f647 	uadd8	r6, r6, r7
d00446ee:	faa5 f687 	sel	r6, r5, r7
d00446f2:	b98e      	cbnz	r6, d0044718 <memchr+0x78>
d00446f4:	d1ee      	bne.n	d00446d4 <memchr+0x34>
d00446f6:	bcf0      	pop	{r4, r5, r6, r7}
d00446f8:	f001 01ff 	and.w	r1, r1, #255	; 0xff
d00446fc:	f002 0207 	and.w	r2, r2, #7
d0044700:	b132      	cbz	r2, d0044710 <memchr+0x70>
d0044702:	f810 3b01 	ldrb.w	r3, [r0], #1
d0044706:	3a01      	subs	r2, #1
d0044708:	ea83 0301 	eor.w	r3, r3, r1
d004470c:	b113      	cbz	r3, d0044714 <memchr+0x74>
d004470e:	d1f8      	bne.n	d0044702 <memchr+0x62>
d0044710:	2000      	movs	r0, #0
d0044712:	4770      	bx	lr
d0044714:	3801      	subs	r0, #1
d0044716:	4770      	bx	lr
d0044718:	2d00      	cmp	r5, #0
d004471a:	bf06      	itte	eq
d004471c:	4635      	moveq	r5, r6
d004471e:	3803      	subeq	r0, #3
d0044720:	3807      	subne	r0, #7
d0044722:	f015 0f01 	tst.w	r5, #1
d0044726:	d107      	bne.n	d0044738 <memchr+0x98>
d0044728:	3001      	adds	r0, #1
d004472a:	f415 7f80 	tst.w	r5, #256	; 0x100
d004472e:	bf02      	ittt	eq
d0044730:	3001      	addeq	r0, #1
d0044732:	f415 3fc0 	tsteq.w	r5, #98304	; 0x18000
d0044736:	3001      	addeq	r0, #1
d0044738:	bcf0      	pop	{r4, r5, r6, r7}
d004473a:	3801      	subs	r0, #1
d004473c:	4770      	bx	lr
d004473e:	bf00      	nop

d0044740 <memcpy>:
d0044740:	440a      	add	r2, r1
d0044742:	4291      	cmp	r1, r2
d0044744:	f100 33ff 	add.w	r3, r0, #4294967295	; 0xffffffff
d0044748:	d100      	bne.n	d004474c <memcpy+0xc>
d004474a:	4770      	bx	lr
d004474c:	b510      	push	{r4, lr}
d004474e:	f811 4b01 	ldrb.w	r4, [r1], #1
d0044752:	f803 4f01 	strb.w	r4, [r3, #1]!
d0044756:	4291      	cmp	r1, r2
d0044758:	d1f9      	bne.n	d004474e <memcpy+0xe>
d004475a:	bd10      	pop	{r4, pc}

d004475c <memmove>:
d004475c:	4288      	cmp	r0, r1
d004475e:	b510      	push	{r4, lr}
d0044760:	eb01 0402 	add.w	r4, r1, r2
d0044764:	d902      	bls.n	d004476c <memmove+0x10>
d0044766:	4284      	cmp	r4, r0
d0044768:	4623      	mov	r3, r4
d004476a:	d807      	bhi.n	d004477c <memmove+0x20>
d004476c:	1e43      	subs	r3, r0, #1
d004476e:	42a1      	cmp	r1, r4
d0044770:	d008      	beq.n	d0044784 <memmove+0x28>
d0044772:	f811 2b01 	ldrb.w	r2, [r1], #1
d0044776:	f803 2f01 	strb.w	r2, [r3, #1]!
d004477a:	e7f8      	b.n	d004476e <memmove+0x12>
d004477c:	4402      	add	r2, r0
d004477e:	4601      	mov	r1, r0
d0044780:	428a      	cmp	r2, r1
d0044782:	d100      	bne.n	d0044786 <memmove+0x2a>
d0044784:	bd10      	pop	{r4, pc}
d0044786:	f813 4d01 	ldrb.w	r4, [r3, #-1]!
d004478a:	f802 4d01 	strb.w	r4, [r2, #-1]!
d004478e:	e7f7      	b.n	d0044780 <memmove+0x24>

d0044790 <_realloc_r>:
d0044790:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d0044792:	4607      	mov	r7, r0
d0044794:	4614      	mov	r4, r2
d0044796:	460e      	mov	r6, r1
d0044798:	b921      	cbnz	r1, d00447a4 <_realloc_r+0x14>
d004479a:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
d004479e:	4611      	mov	r1, r2
d00447a0:	f7fe bdd6 	b.w	d0043350 <_malloc_r>
d00447a4:	b922      	cbnz	r2, d00447b0 <_realloc_r+0x20>
d00447a6:	f7fe fd83 	bl	d00432b0 <_free_r>
d00447aa:	4625      	mov	r5, r4
d00447ac:	4628      	mov	r0, r5
d00447ae:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d00447b0:	f000 f826 	bl	d0044800 <_malloc_usable_size_r>
d00447b4:	42a0      	cmp	r0, r4
d00447b6:	d20f      	bcs.n	d00447d8 <_realloc_r+0x48>
d00447b8:	4621      	mov	r1, r4
d00447ba:	4638      	mov	r0, r7
d00447bc:	f7fe fdc8 	bl	d0043350 <_malloc_r>
d00447c0:	4605      	mov	r5, r0
d00447c2:	2800      	cmp	r0, #0
d00447c4:	d0f2      	beq.n	d00447ac <_realloc_r+0x1c>
d00447c6:	4631      	mov	r1, r6
d00447c8:	4622      	mov	r2, r4
d00447ca:	f7ff ffb9 	bl	d0044740 <memcpy>
d00447ce:	4631      	mov	r1, r6
d00447d0:	4638      	mov	r0, r7
d00447d2:	f7fe fd6d 	bl	d00432b0 <_free_r>
d00447d6:	e7e9      	b.n	d00447ac <_realloc_r+0x1c>
d00447d8:	4635      	mov	r5, r6
d00447da:	e7e7      	b.n	d00447ac <_realloc_r+0x1c>

d00447dc <_read_r>:
d00447dc:	b538      	push	{r3, r4, r5, lr}
d00447de:	4d07      	ldr	r5, [pc, #28]	; (d00447fc <_read_r+0x20>)
d00447e0:	4604      	mov	r4, r0
d00447e2:	4608      	mov	r0, r1
d00447e4:	4611      	mov	r1, r2
d00447e6:	2200      	movs	r2, #0
d00447e8:	602a      	str	r2, [r5, #0]
d00447ea:	461a      	mov	r2, r3
d00447ec:	f7fb fc62 	bl	d00400b4 <_read>
d00447f0:	1c43      	adds	r3, r0, #1
d00447f2:	d102      	bne.n	d00447fa <_read_r+0x1e>
d00447f4:	682b      	ldr	r3, [r5, #0]
d00447f6:	b103      	cbz	r3, d00447fa <_read_r+0x1e>
d00447f8:	6023      	str	r3, [r4, #0]
d00447fa:	bd38      	pop	{r3, r4, r5, pc}
d00447fc:	d0046314 	.word	0xd0046314

d0044800 <_malloc_usable_size_r>:
d0044800:	f851 3c04 	ldr.w	r3, [r1, #-4]
d0044804:	1f18      	subs	r0, r3, #4
d0044806:	2b00      	cmp	r3, #0
d0044808:	bfbc      	itt	lt
d004480a:	580b      	ldrlt	r3, [r1, r0]
d004480c:	18c0      	addlt	r0, r0, r3
d004480e:	4770      	bx	lr
d0044810:	6964694d 	.word	0x6964694d
d0044814:	73616c42 	.word	0x73616c42
d0044818:	20726574 	.word	0x20726574
d004481c:	352e3056 	.word	0x352e3056
d0044820:	00000039 	.word	0x00000039
d0044824:	68676972 	.word	0x68676972
d0044828:	6c632074 	.word	0x6c632074
d004482c:	206b6369 	.word	0x206b6369
d0044830:	656c6572 	.word	0x656c6572
d0044834:	20657361 	.word	0x20657361
d0044838:	74697865 	.word	0x74697865
d004483c:	00000073 	.word	0x00000073
d0044840:	097f7ef0 	.word	0x097f7ef0
d0044844:	0000f701 	.word	0x0000f701
d0044848:	00400ab9 	.word	0x00400ab9
d004484c:	6c756f43 	.word	0x6c756f43
d0044850:	6f6e2064 	.word	0x6f6e2064
d0044854:	6c612074 	.word	0x6c612074
d0044858:	61636f6c 	.word	0x61636f6c
d004485c:	76206574 	.word	0x76206574
d0044860:	61757369 	.word	0x61757369
d0044864:	657a696c 	.word	0x657a696c
d0044868:	61622072 	.word	0x61622072
d004486c:	72676b63 	.word	0x72676b63
d0044870:	646e756f 	.word	0x646e756f
d0044874:	00000000 	.word	0x00000000
d0044878:	61722d2d 	.word	0x61722d2d
d004487c:	00000077 	.word	0x00000077
d0044880:	6d672d2d 	.word	0x6d672d2d
d0044884:	00000000 	.word	0x00000000
d0044888:	6f6e2d2d 	.word	0x6f6e2d2d
d004488c:	7273702d 	.word	0x7273702d
d0044890:	00003438 	.word	0x00003438
d0044894:	73702d2d 	.word	0x73702d2d
d0044898:	00343872 	.word	0x00343872
d004489c:	6964696d 	.word	0x6964696d
d00448a0:	73616c62 	.word	0x73616c62
d00448a4:	2e726574 	.word	0x2e726574
d00448a8:	20707061 	.word	0x20707061
d00448ac:	6c69663c 	.word	0x6c69663c
d00448b0:	696d2e65 	.word	0x696d2e65
d00448b4:	5b203e64 	.word	0x5b203e64
d00448b8:	73702d2d 	.word	0x73702d2d
d00448bc:	7c343872 	.word	0x7c343872
d00448c0:	61722d2d 	.word	0x61722d2d
d00448c4:	00005d77 	.word	0x00005d77
d00448c8:	6c756f43 	.word	0x6c756f43
d00448cc:	6f6e2064 	.word	0x6f6e2064
d00448d0:	6f6c2074 	.word	0x6f6c2074
d00448d4:	4d206461 	.word	0x4d206461
d00448d8:	3a494449 	.word	0x3a494449
d00448dc:	0a732520 	.word	0x0a732520
d00448e0:	00000000 	.word	0x00000000
d00448e4:	75736e55 	.word	0x75736e55
d00448e8:	726f7070 	.word	0x726f7070
d00448ec:	20646574 	.word	0x20646574
d00448f0:	4944494d 	.word	0x4944494d
d00448f4:	7325203a 	.word	0x7325203a
d00448f8:	0000000a 	.word	0x0000000a
d00448fc:	6964694d 	.word	0x6964694d
d0044900:	616c6220 	.word	0x616c6220
d0044904:	72657473 	.word	0x72657473
d0044908:	61747320 	.word	0x61747320
d004490c:	64657472 	.word	0x64657472
d0044910:	0000000a 	.word	0x0000000a
d0044914:	75323025 	.word	0x75323025
d0044918:	3230253a 	.word	0x3230253a
d004491c:	30252f75 	.word	0x30252f75
d0044920:	253a7532 	.word	0x253a7532
d0044924:	00753230 	.word	0x00753230
d0044928:	00007525 	.word	0x00007525

d004492c <psr84_gm_program_map>:
d004492c:	02000000 07060303 29292809 262a2928     .........())()*&
d004493c:	0c0c0a0a 11430f0a 18181d1f 171a1212     ......C.........
d004494c:	54525352 5d5a5755 5d222120 26482423     RSRTUWZ] !"]#$H&
d004495c:	4b4b2423 25454848 2c312f2b 4a343332     #$KKHHE%+/1,234J
d004496c:	3f3e3d3c 373b3a39 41423635 41444140     <=>?9:;756BA@ADA
d004497c:	494a4949 4c494a4c 4b4b5051 514f4e48     IIJILJILQPKKHNOQ
d004498c:	4d4f4e4d 4f4e4d51 261f2727 39204129     MNOMQMNO''.&)A 9
d004499c:	4c2a6109 634c6060 444d411a 5f634c09     .a*L``Lc.AMD.Lc_

d00449ac <_global_impure_ptr>:
d00449ac:	d0044a88                                .J..

d00449b0 <__sf_fake_stderr>:
	...

d00449d0 <__sf_fake_stdin>:
	...

d00449f0 <__sf_fake_stdout>:
	...
d0044a10:	2b302d23 6c680020 6665004c 47464567     #-0+ .hlL.efgEFG
d0044a20:	32313000 36353433 41393837 45444342     .0123456789ABCDE
d0044a30:	31300046 35343332 39383736 64636261     F.0123456789abcd
d0044a40:	                                         ef.

Disassembly of section .init:

d0044a44 <_init>:
d0044a44:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d0044a46:	bf00      	nop

Disassembly of section .fini:

d0044a48 <_fini>:
d0044a48:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d0044a4a:	bf00      	nop

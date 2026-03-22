
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
d004001e:	f007 fd39 	bl	d0047a94 <setbuf>
d0040022:	6833      	ldr	r3, [r6, #0]
d0040024:	2100      	movs	r1, #0
d0040026:	68d8      	ldr	r0, [r3, #12]
d0040028:	f007 fd34 	bl	d0047a94 <setbuf>
d004002c:	4629      	mov	r1, r5
d004002e:	4620      	mov	r0, r4
d0040030:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
d0040034:	f000 bb36 	b.w	d00406a4 <main>
d0040038:	d0048fe4 	.word	0xd0048fe4

d004003c <initMalloc>:
d004003c:	4902      	ldr	r1, [pc, #8]	; (d0040048 <initMalloc+0xc>)
d004003e:	4b03      	ldr	r3, [pc, #12]	; (d004004c <initMalloc+0x10>)
d0040040:	4a03      	ldr	r2, [pc, #12]	; (d0040050 <initMalloc+0x14>)
d0040042:	1a5b      	subs	r3, r3, r1
d0040044:	6013      	str	r3, [r2, #0]
d0040046:	4770      	bx	lr
d0040048:	d01367d0 	.word	0xd01367d0
d004004c:	d0600000 	.word	0xd0600000
d0040050:	d012e708 	.word	0xd012e708

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
d004009c:	f007 f9e6 	bl	d004746c <__errno>
d00400a0:	2209      	movs	r2, #9
d00400a2:	4603      	mov	r3, r0
d00400a4:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d00400a8:	601a      	str	r2, [r3, #0]
d00400aa:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d00400ac:	d0049064 	.word	0xd0049064
d00400b0:	2001f000 	.word	0x2001f000

d00400b4 <_read>:
d00400b4:	b508      	push	{r3, lr}
d00400b6:	f007 f9d9 	bl	d004746c <__errno>
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
d0040102:	f007 f9b3 	bl	d004746c <__errno>
d0040106:	220c      	movs	r2, #12
d0040108:	4603      	mov	r3, r0
d004010a:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d004010e:	601a      	str	r2, [r3, #0]
d0040110:	bd10      	pop	{r4, pc}
d0040112:	bf00      	nop
d0040114:	d0049060 	.word	0xd0049060
d0040118:	d01367d0 	.word	0xd01367d0
d004011c:	d0600000 	.word	0xd0600000

d0040120 <LoadSFX>:
d0040120:	b5f0      	push	{r4, r5, r6, r7, lr}
d0040122:	4c40      	ldr	r4, [pc, #256]	; (d0040224 <LoadSFX+0x104>)
d0040124:	460f      	mov	r7, r1
d0040126:	4601      	mov	r1, r0
d0040128:	b08f      	sub	sp, #60	; 0x3c
d004012a:	7925      	ldrb	r5, [r4, #4]
d004012c:	2201      	movs	r2, #1
d004012e:	7963      	ldrb	r3, [r4, #5]
d0040130:	79a0      	ldrb	r0, [r4, #6]
d0040132:	ea45 2303 	orr.w	r3, r5, r3, lsl #8
d0040136:	79e5      	ldrb	r5, [r4, #7]
d0040138:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
d004013c:	2000      	movs	r0, #0
d004013e:	ea43 6305 	orr.w	r3, r3, r5, lsl #24
d0040142:	681b      	ldr	r3, [r3, #0]
d0040144:	681b      	ldr	r3, [r3, #0]
d0040146:	4798      	blx	r3
d0040148:	bb00      	cbnz	r0, d004018c <LoadSFX+0x6c>
d004014a:	7921      	ldrb	r1, [r4, #4]
d004014c:	ab02      	add	r3, sp, #8
d004014e:	7962      	ldrb	r2, [r4, #5]
d0040150:	79a6      	ldrb	r6, [r4, #6]
d0040152:	ea41 2202 	orr.w	r2, r1, r2, lsl #8
d0040156:	79e5      	ldrb	r5, [r4, #7]
d0040158:	a903      	add	r1, sp, #12
d004015a:	ea42 4606 	orr.w	r6, r2, r6, lsl #16
d004015e:	222c      	movs	r2, #44	; 0x2c
d0040160:	ea46 6505 	orr.w	r5, r6, r5, lsl #24
d0040164:	682d      	ldr	r5, [r5, #0]
d0040166:	68ad      	ldr	r5, [r5, #8]
d0040168:	47a8      	blx	r5
d004016a:	a803      	add	r0, sp, #12
d004016c:	2204      	movs	r2, #4
d004016e:	492e      	ldr	r1, [pc, #184]	; (d0040228 <LoadSFX+0x108>)
d0040170:	f007 fbc2 	bl	d00478f8 <memcmp>
d0040174:	b950      	cbnz	r0, d004018c <LoadSFX+0x6c>
d0040176:	2204      	movs	r2, #4
d0040178:	492c      	ldr	r1, [pc, #176]	; (d004022c <LoadSFX+0x10c>)
d004017a:	a805      	add	r0, sp, #20
d004017c:	f007 fbbc 	bl	d00478f8 <memcmp>
d0040180:	4605      	mov	r5, r0
d0040182:	b918      	cbnz	r0, d004018c <LoadSFX+0x6c>
d0040184:	f8bd 3020 	ldrh.w	r3, [sp, #32]
d0040188:	2b01      	cmp	r3, #1
d004018a:	d010      	beq.n	d00401ae <LoadSFX+0x8e>
d004018c:	7923      	ldrb	r3, [r4, #4]
d004018e:	2000      	movs	r0, #0
d0040190:	7962      	ldrb	r2, [r4, #5]
d0040192:	79a1      	ldrb	r1, [r4, #6]
d0040194:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0040198:	79e2      	ldrb	r2, [r4, #7]
d004019a:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d004019e:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00401a2:	681b      	ldr	r3, [r3, #0]
d00401a4:	68db      	ldr	r3, [r3, #12]
d00401a6:	4798      	blx	r3
d00401a8:	2000      	movs	r0, #0
d00401aa:	b00f      	add	sp, #60	; 0x3c
d00401ac:	bdf0      	pop	{r4, r5, r6, r7, pc}
d00401ae:	9a0d      	ldr	r2, [sp, #52]	; 0x34
d00401b0:	4610      	mov	r0, r2
d00401b2:	9201      	str	r2, [sp, #4]
d00401b4:	f007 fb90 	bl	d00478d8 <malloc>
d00401b8:	9a01      	ldr	r2, [sp, #4]
d00401ba:	4601      	mov	r1, r0
d00401bc:	6038      	str	r0, [r7, #0]
d00401be:	b1f8      	cbz	r0, d0040200 <LoadSFX+0xe0>
d00401c0:	7920      	ldrb	r0, [r4, #4]
d00401c2:	ab02      	add	r3, sp, #8
d00401c4:	7966      	ldrb	r6, [r4, #5]
d00401c6:	f894 c006 	ldrb.w	ip, [r4, #6]
d00401ca:	ea40 2606 	orr.w	r6, r0, r6, lsl #8
d00401ce:	79e7      	ldrb	r7, [r4, #7]
d00401d0:	4628      	mov	r0, r5
d00401d2:	ea46 460c 	orr.w	r6, r6, ip, lsl #16
d00401d6:	ea46 6607 	orr.w	r6, r6, r7, lsl #24
d00401da:	6836      	ldr	r6, [r6, #0]
d00401dc:	68b6      	ldr	r6, [r6, #8]
d00401de:	47b0      	blx	r6
d00401e0:	7923      	ldrb	r3, [r4, #4]
d00401e2:	7962      	ldrb	r2, [r4, #5]
d00401e4:	4628      	mov	r0, r5
d00401e6:	79a1      	ldrb	r1, [r4, #6]
d00401e8:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d00401ec:	79e2      	ldrb	r2, [r4, #7]
d00401ee:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d00401f2:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00401f6:	681b      	ldr	r3, [r3, #0]
d00401f8:	68db      	ldr	r3, [r3, #12]
d00401fa:	4798      	blx	r3
d00401fc:	980d      	ldr	r0, [sp, #52]	; 0x34
d00401fe:	e7d4      	b.n	d00401aa <LoadSFX+0x8a>
d0040200:	7923      	ldrb	r3, [r4, #4]
d0040202:	7962      	ldrb	r2, [r4, #5]
d0040204:	79a5      	ldrb	r5, [r4, #6]
d0040206:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004020a:	79e2      	ldrb	r2, [r4, #7]
d004020c:	9001      	str	r0, [sp, #4]
d004020e:	ea43 4305 	orr.w	r3, r3, r5, lsl #16
d0040212:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0040216:	681b      	ldr	r3, [r3, #0]
d0040218:	68db      	ldr	r3, [r3, #12]
d004021a:	4798      	blx	r3
d004021c:	9901      	ldr	r1, [sp, #4]
d004021e:	4608      	mov	r0, r1
d0040220:	e7c3      	b.n	d00401aa <LoadSFX+0x8a>
d0040222:	bf00      	nop
d0040224:	2001f000 	.word	0x2001f000
d0040228:	d0048678 	.word	0xd0048678
d004022c:	d0048680 	.word	0xd0048680

d0040230 <initSystem>:
d0040230:	b570      	push	{r4, r5, r6, lr}
d0040232:	4c48      	ldr	r4, [pc, #288]	; (d0040354 <initSystem+0x124>)
d0040234:	b082      	sub	sp, #8
d0040236:	f44f 2080 	mov.w	r0, #262144	; 0x40000
d004023a:	2600      	movs	r6, #0
d004023c:	7823      	ldrb	r3, [r4, #0]
d004023e:	7862      	ldrb	r2, [r4, #1]
d0040240:	78a1      	ldrb	r1, [r4, #2]
d0040242:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0040246:	78e2      	ldrb	r2, [r4, #3]
d0040248:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d004024c:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0040250:	681b      	ldr	r3, [r3, #0]
d0040252:	4798      	blx	r3
d0040254:	f7ff fef2 	bl	d004003c <initMalloc>
d0040258:	7b23      	ldrb	r3, [r4, #12]
d004025a:	7b62      	ldrb	r2, [r4, #13]
d004025c:	2130      	movs	r1, #48	; 0x30
d004025e:	7ba5      	ldrb	r5, [r4, #14]
d0040260:	20dc      	movs	r0, #220	; 0xdc
d0040262:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0040266:	7be2      	ldrb	r2, [r4, #15]
d0040268:	ea43 4305 	orr.w	r3, r3, r5, lsl #16
d004026c:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0040270:	681b      	ldr	r3, [r3, #0]
d0040272:	691b      	ldr	r3, [r3, #16]
d0040274:	4798      	blx	r3
d0040276:	7b23      	ldrb	r3, [r4, #12]
d0040278:	7b62      	ldrb	r2, [r4, #13]
d004027a:	2000      	movs	r0, #0
d004027c:	7ba1      	ldrb	r1, [r4, #14]
d004027e:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0040282:	7be2      	ldrb	r2, [r4, #15]
d0040284:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0040288:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004028c:	681b      	ldr	r3, [r3, #0]
d004028e:	689b      	ldr	r3, [r3, #8]
d0040290:	4798      	blx	r3
d0040292:	7b25      	ldrb	r5, [r4, #12]
d0040294:	7b62      	ldrb	r2, [r4, #13]
d0040296:	f44f 73a0 	mov.w	r3, #320	; 0x140
d004029a:	7ba1      	ldrb	r1, [r4, #14]
d004029c:	ea45 2502 	orr.w	r5, r5, r2, lsl #8
d00402a0:	7be0      	ldrb	r0, [r4, #15]
d00402a2:	f44f 72f0 	mov.w	r2, #480	; 0x1e0
d00402a6:	ea45 4501 	orr.w	r5, r5, r1, lsl #16
d00402aa:	4619      	mov	r1, r3
d00402ac:	ea45 6500 	orr.w	r5, r5, r0, lsl #24
d00402b0:	4610      	mov	r0, r2
d00402b2:	682d      	ldr	r5, [r5, #0]
d00402b4:	9600      	str	r6, [sp, #0]
d00402b6:	696d      	ldr	r5, [r5, #20]
d00402b8:	47a8      	blx	r5
d00402ba:	7c23      	ldrb	r3, [r4, #16]
d00402bc:	7c62      	ldrb	r2, [r4, #17]
d00402be:	f44f 7000 	mov.w	r0, #512	; 0x200
d00402c2:	7ca1      	ldrb	r1, [r4, #18]
d00402c4:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d00402c8:	7ce2      	ldrb	r2, [r4, #19]
d00402ca:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d00402ce:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00402d2:	681b      	ldr	r3, [r3, #0]
d00402d4:	681b      	ldr	r3, [r3, #0]
d00402d6:	4798      	blx	r3
d00402d8:	7c22      	ldrb	r2, [r4, #16]
d00402da:	7c63      	ldrb	r3, [r4, #17]
d00402dc:	2101      	movs	r1, #1
d00402de:	7ca5      	ldrb	r5, [r4, #18]
d00402e0:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
d00402e4:	7ce0      	ldrb	r0, [r4, #19]
d00402e6:	7b23      	ldrb	r3, [r4, #12]
d00402e8:	ea42 4205 	orr.w	r2, r2, r5, lsl #16
d00402ec:	7b66      	ldrb	r6, [r4, #13]
d00402ee:	7ba5      	ldrb	r5, [r4, #14]
d00402f0:	ea42 6200 	orr.w	r2, r2, r0, lsl #24
d00402f4:	7be0      	ldrb	r0, [r4, #15]
d00402f6:	ea43 2306 	orr.w	r3, r3, r6, lsl #8
d00402fa:	6812      	ldr	r2, [r2, #0]
d00402fc:	ea43 4305 	orr.w	r3, r3, r5, lsl #16
d0040300:	6852      	ldr	r2, [r2, #4]
d0040302:	ea43 6300 	orr.w	r3, r3, r0, lsl #24
d0040306:	7011      	strb	r1, [r2, #0]
d0040308:	681b      	ldr	r3, [r3, #0]
d004030a:	6b5b      	ldr	r3, [r3, #52]	; 0x34
d004030c:	4798      	blx	r3
d004030e:	7b23      	ldrb	r3, [r4, #12]
d0040310:	7b62      	ldrb	r2, [r4, #13]
d0040312:	7ba5      	ldrb	r5, [r4, #14]
d0040314:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0040318:	7be2      	ldrb	r2, [r4, #15]
d004031a:	490f      	ldr	r1, [pc, #60]	; (d0040358 <initSystem+0x128>)
d004031c:	ea43 4305 	orr.w	r3, r3, r5, lsl #16
d0040320:	6008      	str	r0, [r1, #0]
d0040322:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0040326:	681b      	ldr	r3, [r3, #0]
d0040328:	6b9b      	ldr	r3, [r3, #56]	; 0x38
d004032a:	4798      	blx	r3
d004032c:	7b23      	ldrb	r3, [r4, #12]
d004032e:	7b62      	ldrb	r2, [r4, #13]
d0040330:	4605      	mov	r5, r0
d0040332:	7ba6      	ldrb	r6, [r4, #14]
d0040334:	2064      	movs	r0, #100	; 0x64
d0040336:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004033a:	7be2      	ldrb	r2, [r4, #15]
d004033c:	4907      	ldr	r1, [pc, #28]	; (d004035c <initSystem+0x12c>)
d004033e:	ea43 4306 	orr.w	r3, r3, r6, lsl #16
d0040342:	600d      	str	r5, [r1, #0]
d0040344:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0040348:	681b      	ldr	r3, [r3, #0]
d004034a:	689b      	ldr	r3, [r3, #8]
d004034c:	b002      	add	sp, #8
d004034e:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
d0040352:	4718      	bx	r3
d0040354:	2001f000 	.word	0x2001f000
d0040358:	d012e7a0 	.word	0xd012e7a0
d004035c:	d012e780 	.word	0xd012e780

d0040360 <weatherLightning>:
d0040360:	eeb5 0ac0 	vcmpe.f32	s0, #0.0
d0040364:	e92d 4ff8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0040368:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004036c:	4605      	mov	r5, r0
d004036e:	d930      	bls.n	d00403d2 <weatherLightning+0x72>
d0040370:	eddf 7ab6 	vldr	s15, [pc, #728]	; d004064c <weatherLightning+0x2ec>
d0040374:	fe80 0a67 	vminnm.f32	s0, s0, s15
d0040378:	4eb5      	ldr	r6, [pc, #724]	; (d0040650 <weatherLightning+0x2f0>)
d004037a:	4fb6      	ldr	r7, [pc, #728]	; (d0040654 <weatherLightning+0x2f4>)
d004037c:	6833      	ldr	r3, [r6, #0]
d004037e:	683a      	ldr	r2, [r7, #0]
d0040380:	ea83 3343 	eor.w	r3, r3, r3, lsl #13
d0040384:	2a01      	cmp	r2, #1
d0040386:	ea83 4353 	eor.w	r3, r3, r3, lsr #17
d004038a:	ea83 1343 	eor.w	r3, r3, r3, lsl #5
d004038e:	6033      	str	r3, [r6, #0]
d0040390:	d022      	beq.n	d00403d8 <weatherLightning+0x78>
d0040392:	2a02      	cmp	r2, #2
d0040394:	f000 8087 	beq.w	d00404a6 <weatherLightning+0x146>
d0040398:	4caf      	ldr	r4, [pc, #700]	; (d0040658 <weatherLightning+0x2f8>)
d004039a:	2100      	movs	r1, #0
d004039c:	b2e8      	uxtb	r0, r5
d004039e:	edd4 7a00 	vldr	s15, [r4]
d00403a2:	ee37 0ac0 	vsub.f32	s0, s15, s0
d00403a6:	ed84 0a00 	vstr	s0, [r4]
d00403aa:	f004 ffe5 	bl	d0045378 <lightEnable>
d00403ae:	4628      	mov	r0, r5
d00403b0:	ed9f 0aaa 	vldr	s0, [pc, #680]	; d004065c <weatherLightning+0x2fc>
d00403b4:	f005 f876 	bl	d00454a4 <lightSetIntensity>
d00403b8:	edd4 7a00 	vldr	s15, [r4]
d00403bc:	eef5 7ac0 	vcmpe.f32	s15, #0.0
d00403c0:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00403c4:	f240 80d6 	bls.w	d0040574 <weatherLightning+0x214>
d00403c8:	f04f 0800 	mov.w	r8, #0
d00403cc:	4640      	mov	r0, r8
d00403ce:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
d00403d2:	ed9f 0aa3 	vldr	s0, [pc, #652]	; d0040660 <weatherLightning+0x300>
d00403d6:	e7cf      	b.n	d0040378 <weatherLightning+0x18>
d00403d8:	4aa2      	ldr	r2, [pc, #648]	; (d0040664 <weatherLightning+0x304>)
d00403da:	eef2 6a04 	vmov.f32	s13, #36	; 0x41200000  10.0
d00403de:	f8df a2b4 	ldr.w	sl, [pc, #692]	; d0040694 <weatherLightning+0x334>
d00403e2:	ed92 7a00 	vldr	s14, [r2]
d00403e6:	2200      	movs	r2, #0
d00403e8:	edda 7a00 	vldr	s15, [sl]
d00403ec:	ee66 6ac7 	vnmul.f32	s13, s13, s14
d00403f0:	f8df 9284 	ldr.w	r9, [pc, #644]	; d0040678 <weatherLightning+0x318>
d00403f4:	ed99 7a00 	vldr	s14, [r9]
d00403f8:	eee6 7a80 	vfma.f32	s15, s13, s0
d00403fc:	ee37 0a40 	vsub.f32	s0, s14, s0
d0040400:	ed89 0a00 	vstr	s0, [r9]
d0040404:	eef5 7ac0 	vcmpe.f32	s15, #0.0
d0040408:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004040c:	f100 80ad 	bmi.w	d004056a <weatherLightning+0x20a>
d0040410:	bfcc      	ite	gt
d0040412:	f04f 0801 	movgt.w	r8, #1
d0040416:	f04f 0800 	movle.w	r8, #0
d004041a:	edca 7a00 	vstr	s15, [sl]
d004041e:	ea83 3343 	eor.w	r3, r3, r3, lsl #13
d0040422:	2101      	movs	r1, #1
d0040424:	fa5f fb85 	uxtb.w	fp, r5
d0040428:	ea83 4453 	eor.w	r4, r3, r3, lsr #17
d004042c:	4658      	mov	r0, fp
d004042e:	ea84 1444 	eor.w	r4, r4, r4, lsl #5
d0040432:	6034      	str	r4, [r6, #0]
d0040434:	b2e4      	uxtb	r4, r4
d0040436:	f004 ff9f 	bl	d0045378 <lightEnable>
d004043a:	ed9f 7a8b 	vldr	s14, [pc, #556]	; d0040668 <weatherLightning+0x308>
d004043e:	ee07 4a90 	vmov	s15, r4
d0040442:	ed9a 0a00 	vldr	s0, [sl]
d0040446:	4628      	mov	r0, r5
d0040448:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d004044c:	eea7 0a87 	vfma.f32	s0, s15, s14
d0040450:	f005 f828 	bl	d00454a4 <lightSetIntensity>
d0040454:	edd9 7a00 	vldr	s15, [r9]
d0040458:	eef5 7ac0 	vcmpe.f32	s15, #0.0
d004045c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0040460:	d8b4      	bhi.n	d00403cc <weatherLightning+0x6c>
d0040462:	4a82      	ldr	r2, [pc, #520]	; (d004066c <weatherLightning+0x30c>)
d0040464:	6813      	ldr	r3, [r2, #0]
d0040466:	3b01      	subs	r3, #1
d0040468:	2b00      	cmp	r3, #0
d004046a:	6013      	str	r3, [r2, #0]
d004046c:	6833      	ldr	r3, [r6, #0]
d004046e:	f340 80ca 	ble.w	d0040606 <weatherLightning+0x2a6>
d0040472:	ea83 3343 	eor.w	r3, r3, r3, lsl #13
d0040476:	2202      	movs	r2, #2
d0040478:	eddf 6a7d 	vldr	s13, [pc, #500]	; d0040670 <weatherLightning+0x310>
d004047c:	4640      	mov	r0, r8
d004047e:	ea83 4353 	eor.w	r3, r3, r3, lsr #17
d0040482:	603a      	str	r2, [r7, #0]
d0040484:	eddf 7a7b 	vldr	s15, [pc, #492]	; d0040674 <weatherLightning+0x314>
d0040488:	ea83 1343 	eor.w	r3, r3, r3, lsl #5
d004048c:	f3c3 0209 	ubfx	r2, r3, #0, #10
d0040490:	6033      	str	r3, [r6, #0]
d0040492:	ee07 2a10 	vmov	s14, r2
d0040496:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
d004049a:	eee7 7a26 	vfma.f32	s15, s14, s13
d004049e:	edc9 7a00 	vstr	s15, [r9]
d00404a2:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
d00404a6:	4c74      	ldr	r4, [pc, #464]	; (d0040678 <weatherLightning+0x318>)
d00404a8:	2100      	movs	r1, #0
d00404aa:	b2e8      	uxtb	r0, r5
d00404ac:	edd4 7a00 	vldr	s15, [r4]
d00404b0:	ee37 0ac0 	vsub.f32	s0, s15, s0
d00404b4:	ed84 0a00 	vstr	s0, [r4]
d00404b8:	f004 ff5e 	bl	d0045378 <lightEnable>
d00404bc:	4628      	mov	r0, r5
d00404be:	ed9f 0a67 	vldr	s0, [pc, #412]	; d004065c <weatherLightning+0x2fc>
d00404c2:	f004 ffef 	bl	d00454a4 <lightSetIntensity>
d00404c6:	edd4 7a00 	vldr	s15, [r4]
d00404ca:	eef5 7ac0 	vcmpe.f32	s15, #0.0
d00404ce:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00404d2:	f63f af79 	bhi.w	d00403c8 <weatherLightning+0x68>
d00404d6:	6833      	ldr	r3, [r6, #0]
d00404d8:	2201      	movs	r2, #1
d00404da:	eddf 4a68 	vldr	s9, [pc, #416]	; d004067c <weatherLightning+0x31c>
d00404de:	f04f 0800 	mov.w	r8, #0
d00404e2:	ea83 3343 	eor.w	r3, r3, r3, lsl #13
d00404e6:	603a      	str	r2, [r7, #0]
d00404e8:	ed9f 7a65 	vldr	s14, [pc, #404]	; d0040680 <weatherLightning+0x320>
d00404ec:	ea83 4353 	eor.w	r3, r3, r3, lsr #17
d00404f0:	ed9f 5a64 	vldr	s10, [pc, #400]	; d0040684 <weatherLightning+0x324>
d00404f4:	ed9f 6a64 	vldr	s12, [pc, #400]	; d0040688 <weatherLightning+0x328>
d00404f8:	ea83 1343 	eor.w	r3, r3, r3, lsl #5
d00404fc:	eddf 5a63 	vldr	s11, [pc, #396]	; d004068c <weatherLightning+0x32c>
d0040500:	eddf 6a63 	vldr	s13, [pc, #396]	; d0040690 <weatherLightning+0x330>
d0040504:	ea83 3243 	eor.w	r2, r3, r3, lsl #13
d0040508:	f3c3 0309 	ubfx	r3, r3, #0, #10
d004050c:	4855      	ldr	r0, [pc, #340]	; (d0040664 <weatherLightning+0x304>)
d004050e:	ea82 4252 	eor.w	r2, r2, r2, lsr #17
d0040512:	ee07 3a90 	vmov	s15, r3
d0040516:	495f      	ldr	r1, [pc, #380]	; (d0040694 <weatherLightning+0x334>)
d0040518:	ea82 1342 	eor.w	r3, r2, r2, lsl #5
d004051c:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0040520:	ea83 3243 	eor.w	r2, r3, r3, lsl #13
d0040524:	b2db      	uxtb	r3, r3
d0040526:	eea7 7aa4 	vfma.f32	s14, s15, s9
d004052a:	ea82 4252 	eor.w	r2, r2, r2, lsr #17
d004052e:	ee07 3a90 	vmov	s15, r3
d0040532:	ea82 1342 	eor.w	r3, r2, r2, lsl #5
d0040536:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d004053a:	f3c3 0209 	ubfx	r2, r3, #0, #10
d004053e:	6033      	str	r3, [r6, #0]
d0040540:	eea7 6a85 	vfma.f32	s12, s15, s10
d0040544:	eef0 7a46 	vmov.f32	s15, s12
d0040548:	ee06 2a10 	vmov	s12, r2
d004054c:	eeb8 6ac6 	vcvt.f32.s32	s12, s12
d0040550:	ee67 7a27 	vmul.f32	s15, s14, s15
d0040554:	eee6 6a25 	vfma.f32	s13, s12, s11
d0040558:	edc0 7a00 	vstr	s15, [r0]
d004055c:	4640      	mov	r0, r8
d004055e:	edc1 7a00 	vstr	s15, [r1]
d0040562:	edc4 6a00 	vstr	s13, [r4]
d0040566:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
d004056a:	f04f 0800 	mov.w	r8, #0
d004056e:	f8ca 2000 	str.w	r2, [sl]
d0040572:	e754      	b.n	d004041e <weatherLightning+0xbe>
d0040574:	6833      	ldr	r3, [r6, #0]
d0040576:	2201      	movs	r2, #1
d0040578:	4947      	ldr	r1, [pc, #284]	; (d0040698 <weatherLightning+0x338>)
d004057a:	f04f 0800 	mov.w	r8, #0
d004057e:	ea83 3343 	eor.w	r3, r3, r3, lsl #13
d0040582:	603a      	str	r2, [r7, #0]
d0040584:	eddf 5a3d 	vldr	s11, [pc, #244]	; d004067c <weatherLightning+0x31c>
d0040588:	ea83 4353 	eor.w	r3, r3, r3, lsr #17
d004058c:	ed9f 7a3c 	vldr	s14, [pc, #240]	; d0040680 <weatherLightning+0x320>
d0040590:	ed9f 6a3e 	vldr	s12, [pc, #248]	; d004068c <weatherLightning+0x32c>
d0040594:	ea83 1343 	eor.w	r3, r3, r3, lsl #5
d0040598:	eddf 6a3d 	vldr	s13, [pc, #244]	; d0040690 <weatherLightning+0x330>
d004059c:	4c31      	ldr	r4, [pc, #196]	; (d0040664 <weatherLightning+0x304>)
d004059e:	ea83 3243 	eor.w	r2, r3, r3, lsl #13
d00405a2:	fba1 0103 	umull	r0, r1, r1, r3
d00405a6:	ea82 4252 	eor.w	r2, r2, r2, lsr #17
d00405aa:	f021 0003 	bic.w	r0, r1, #3
d00405ae:	ea82 1242 	eor.w	r2, r2, r2, lsl #5
d00405b2:	eb00 0091 	add.w	r0, r0, r1, lsr #2
d00405b6:	ea82 3142 	eor.w	r1, r2, r2, lsl #13
d00405ba:	f3c2 0209 	ubfx	r2, r2, #0, #10
d00405be:	1a1b      	subs	r3, r3, r0
d00405c0:	482d      	ldr	r0, [pc, #180]	; (d0040678 <weatherLightning+0x318>)
d00405c2:	ee07 2a90 	vmov	s15, r2
d00405c6:	ea81 4151 	eor.w	r1, r1, r1, lsr #17
d00405ca:	3302      	adds	r3, #2
d00405cc:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d00405d0:	ea81 1241 	eor.w	r2, r1, r1, lsl #5
d00405d4:	492f      	ldr	r1, [pc, #188]	; (d0040694 <weatherLightning+0x334>)
d00405d6:	f3c2 0509 	ubfx	r5, r2, #0, #10
d00405da:	6032      	str	r2, [r6, #0]
d00405dc:	eea7 7aa5 	vfma.f32	s14, s15, s11
d00405e0:	4a22      	ldr	r2, [pc, #136]	; (d004066c <weatherLightning+0x30c>)
d00405e2:	6013      	str	r3, [r2, #0]
d00405e4:	eef0 7a47 	vmov.f32	s15, s14
d00405e8:	ee07 5a10 	vmov	s14, r5
d00405ec:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
d00405f0:	edc4 7a00 	vstr	s15, [r4]
d00405f4:	edc1 7a00 	vstr	s15, [r1]
d00405f8:	eee7 6a06 	vfma.f32	s13, s14, s12
d00405fc:	edc0 6a00 	vstr	s13, [r0]
d0040600:	4640      	mov	r0, r8
d0040602:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0040606:	ea83 3343 	eor.w	r3, r3, r3, lsl #13
d004060a:	eddf 6a24 	vldr	s13, [pc, #144]	; d004069c <weatherLightning+0x33c>
d004060e:	eddf 7a24 	vldr	s15, [pc, #144]	; d00406a0 <weatherLightning+0x340>
d0040612:	4658      	mov	r0, fp
d0040614:	ea83 4353 	eor.w	r3, r3, r3, lsr #17
d0040618:	4a0f      	ldr	r2, [pc, #60]	; (d0040658 <weatherLightning+0x2f8>)
d004061a:	2100      	movs	r1, #0
d004061c:	ea83 1343 	eor.w	r3, r3, r3, lsl #5
d0040620:	f3c3 040a 	ubfx	r4, r3, #0, #11
d0040624:	6033      	str	r3, [r6, #0]
d0040626:	ee07 4a10 	vmov	s14, r4
d004062a:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
d004062e:	eee7 7a26 	vfma.f32	s15, s14, s13
d0040632:	edc2 7a00 	vstr	s15, [r2]
d0040636:	f004 fe9f 	bl	d0045378 <lightEnable>
d004063a:	4628      	mov	r0, r5
d004063c:	ed9f 0a07 	vldr	s0, [pc, #28]	; d004065c <weatherLightning+0x2fc>
d0040640:	f004 ff30 	bl	d00454a4 <lightSetIntensity>
d0040644:	2300      	movs	r3, #0
d0040646:	603b      	str	r3, [r7, #0]
d0040648:	e6c0      	b.n	d00403cc <weatherLightning+0x6c>
d004064a:	bf00      	nop
d004064c:	3dcccccd 	.word	0x3dcccccd
d0040650:	d0048fe0 	.word	0xd0048fe0
d0040654:	d0049080 	.word	0xd0049080
d0040658:	d0048fd8 	.word	0xd0048fd8
d004065c:	00000000 	.word	0x00000000
d0040660:	3c83126f 	.word	0x3c83126f
d0040664:	d0049074 	.word	0xd0049074
d0040668:	3ab3e71b 	.word	0x3ab3e71b
d004066c:	d0049078 	.word	0xd0049078
d0040670:	38cd000c 	.word	0x38cd000c
d0040674:	3ca3d70a 	.word	0x3ca3d70a
d0040678:	d0049084 	.word	0xd0049084
d004067c:	3ad9d00e 	.word	0x3ad9d00e
d0040680:	3e99999a 	.word	0x3e99999a
d0040684:	3b33e71b 	.word	0x3b33e71b
d0040688:	3f266666 	.word	0x3f266666
d004068c:	3776000e 	.word	0x3776000e
d0040690:	3ccccccd 	.word	0x3ccccccd
d0040694:	d004906c 	.word	0xd004906c
d0040698:	cccccccd 	.word	0xcccccccd
d004069c:	3aace269 	.word	0x3aace269
d00406a0:	3f4ccccd 	.word	0x3f4ccccd

d00406a4 <main>:
d00406a4:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d00406a8:	ed2d 8b0e 	vpush	{d8-d14}
d00406ac:	f5ad 7d71 	sub.w	sp, sp, #964	; 0x3c4
d00406b0:	f8df 836c 	ldr.w	r8, [pc, #876]	; d0040a20 <main+0x37c>
d00406b4:	f8df b36c 	ldr.w	fp, [pc, #876]	; d0040a24 <main+0x380>
d00406b8:	f20d 137f 	addw	r3, sp, #383	; 0x17f
d00406bc:	ad22      	add	r5, sp, #136	; 0x88
d00406be:	ae43      	add	r6, sp, #268	; 0x10c
d00406c0:	4cc7      	ldr	r4, [pc, #796]	; (d00409e0 <main+0x33c>)
d00406c2:	f023 091f 	bic.w	r9, r3, #31
d00406c6:	f7ff fdb3 	bl	d0040230 <initSystem>
d00406ca:	f003 fca9 	bl	d0044020 <worldClear>
d00406ce:	eddf 9ac5 	vldr	s19, [pc, #788]	; d00409e4 <main+0x340>
d00406d2:	f004 fe4b 	bl	d004536c <lightsClear>
d00406d6:	f109 07c0 	add.w	r7, r9, #192	; 0xc0
d00406da:	f003 f9a5 	bl	d0043a28 <sb3dParticlesClear>
d00406de:	f509 73f0 	add.w	r3, r9, #480	; 0x1e0
d00406e2:	f509 7ab0 	add.w	sl, r9, #352	; 0x160
d00406e6:	ee0a 7a10 	vmov	s20, r7
d00406ea:	9307      	str	r3, [sp, #28]
d00406ec:	f004 feea 	bl	d00454c4 <setDefaultRenderMode>
d00406f0:	4638      	mov	r0, r7
d00406f2:	ed9f 9abd 	vldr	s18, [pc, #756]	; d00409e8 <main+0x344>
d00406f6:	f003 fcf1 	bl	d00440dc <cameraCreate>
d00406fa:	f509 72d0 	add.w	r2, r9, #416	; 0x1a0
d00406fe:	4638      	mov	r0, r7
d0040700:	eddf 0aba 	vldr	s1, [pc, #744]	; d00409ec <main+0x348>
d0040704:	ed9f 0aba 	vldr	s0, [pc, #744]	; d00409f0 <main+0x34c>
d0040708:	9208      	str	r2, [sp, #32]
d004070a:	f003 feb1 	bl	d0044470 <cameraSetRange>
d004070e:	ed9f 1ab9 	vldr	s2, [pc, #740]	; d00409f4 <main+0x350>
d0040712:	f509 7190 	add.w	r1, r9, #288	; 0x120
d0040716:	eddf 0ac4 	vldr	s1, [pc, #784]	; d0040a28 <main+0x384>
d004071a:	eeb0 0a41 	vmov.f32	s0, s2
d004071e:	9109      	str	r1, [sp, #36]	; 0x24
d0040720:	f003 f8da 	bl	d00438d8 <vec3>
d0040724:	9503      	str	r5, [sp, #12]
d0040726:	2500      	movs	r5, #0
d0040728:	4638      	mov	r0, r7
d004072a:	ed8d 0a28 	vstr	s0, [sp, #160]	; 0xa0
d004072e:	edcd 0a29 	vstr	s1, [sp, #164]	; 0xa4
d0040732:	ed8d 1a2a 	vstr	s2, [sp, #168]	; 0xa8
d0040736:	f8cd 9010 	str.w	r9, [sp, #16]
d004073a:	9506      	str	r5, [sp, #24]
d004073c:	f003 fcd8 	bl	d00440f0 <cameraSetPosition>
d0040740:	4638      	mov	r0, r7
d0040742:	eddf 8aad 	vldr	s17, [pc, #692]	; d00409f8 <main+0x354>
d0040746:	f003 fc73 	bl	d0044030 <cameraNormalize>
d004074a:	a848      	add	r0, sp, #288	; 0x120
d004074c:	f04f 4c7f 	mov.w	ip, #4278190080	; 0xff000000
d0040750:	464f      	mov	r7, r9
d0040752:	4605      	mov	r5, r0
d0040754:	e8b8 000f 	ldmia.w	r8!, {r0, r1, r2, r3}
d0040758:	c50f      	stmia	r5!, {r0, r1, r2, r3}
d004075a:	e8b8 000f 	ldmia.w	r8!, {r0, r1, r2, r3}
d004075e:	c50f      	stmia	r5!, {r0, r1, r2, r3}
d0040760:	e8b8 000f 	ldmia.w	r8!, {r0, r1, r2, r3}
d0040764:	c50f      	stmia	r5!, {r0, r1, r2, r3}
d0040766:	e898 000f 	ldmia.w	r8, {r0, r1, r2, r3}
d004076a:	e885 000f 	stmia.w	r5, {r0, r1, r2, r3}
d004076e:	f108 0510 	add.w	r5, r8, #16
d0040772:	f8cb c000 	str.w	ip, [fp]
d0040776:	9600      	str	r6, [sp, #0]
d0040778:	f8cb c040 	str.w	ip, [fp, #64]	; 0x40
d004077c:	cd0f      	ldmia	r5!, {r0, r1, r2, r3}
d004077e:	682d      	ldr	r5, [r5, #0]
d0040780:	c60f      	stmia	r6!, {r0, r1, r2, r3}
d0040782:	4663      	mov	r3, ip
d0040784:	4658      	mov	r0, fp
d0040786:	6035      	str	r5, [r6, #0]
d0040788:	a948      	add	r1, sp, #288	; 0x120
d004078a:	2210      	movs	r2, #16
d004078c:	2664      	movs	r6, #100	; 0x64
d004078e:	f004 fb99 	bl	d0044ec4 <buildLightingCLUT>
d0040792:	7b23      	ldrb	r3, [r4, #12]
d0040794:	7b62      	ldrb	r2, [r4, #13]
d0040796:	4658      	mov	r0, fp
d0040798:	7ba1      	ldrb	r1, [r4, #14]
d004079a:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004079e:	7be2      	ldrb	r2, [r4, #15]
d00407a0:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d00407a4:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00407a8:	681b      	ldr	r3, [r3, #0]
d00407aa:	6cdb      	ldr	r3, [r3, #76]	; 0x4c
d00407ac:	4798      	blx	r3
d00407ae:	7c23      	ldrb	r3, [r4, #16]
d00407b0:	7c62      	ldrb	r2, [r4, #17]
d00407b2:	2100      	movs	r1, #0
d00407b4:	7ca5      	ldrb	r5, [r4, #18]
d00407b6:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d00407ba:	7ce2      	ldrb	r2, [r4, #19]
d00407bc:	488f      	ldr	r0, [pc, #572]	; (d00409fc <main+0x358>)
d00407be:	ea43 4305 	orr.w	r3, r3, r5, lsl #16
d00407c2:	ad1f      	add	r5, sp, #124	; 0x7c
d00407c4:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00407c8:	685b      	ldr	r3, [r3, #4]
d00407ca:	681b      	ldr	r3, [r3, #0]
d00407cc:	4798      	blx	r3
d00407ce:	ed9f 1a89 	vldr	s2, [pc, #548]	; d00409f4 <main+0x350>
d00407d2:	eef0 0a41 	vmov.f32	s1, s2
d00407d6:	eeb0 0a41 	vmov.f32	s0, s2
d00407da:	f003 f87d 	bl	d00438d8 <vec3>
d00407de:	eddf 1a84 	vldr	s3, [pc, #528]	; d00409f0 <main+0x34c>
d00407e2:	2001      	movs	r0, #1
d00407e4:	edcd 0a2c 	vstr	s1, [sp, #176]	; 0xb0
d00407e8:	ed8d 0a2b 	vstr	s0, [sp, #172]	; 0xac
d00407ec:	ed8d 1a2d 	vstr	s2, [sp, #180]	; 0xb4
d00407f0:	f004 fdd0 	bl	d0045394 <addPointLight>
d00407f4:	f108 0324 	add.w	r3, r8, #36	; 0x24
d00407f8:	9005      	str	r0, [sp, #20]
d00407fa:	eef7 1a00 	vmov.f32	s3, #112	; 0x3f800000  1.0
d00407fe:	e893 0007 	ldmia.w	r3, {r0, r1, r2}
d0040802:	e885 0007 	stmia.w	r5, {r0, r1, r2}
d0040806:	2001      	movs	r0, #1
d0040808:	edd5 0a01 	vldr	s1, [r5, #4]
d004080c:	ed95 1a02 	vldr	s2, [r5, #8]
d0040810:	ed95 0a00 	vldr	s0, [r5]
d0040814:	f004 fdfa 	bl	d004540c <addDirectionalLight>
d0040818:	eeb7 0a00 	vmov.f32	s0, #112	; 0x3f800000  1.0
d004081c:	b2c3      	uxtb	r3, r0
d004081e:	ee0e 3a10 	vmov	s28, r3
d0040822:	4618      	mov	r0, r3
d0040824:	f004 fe3e 	bl	d00454a4 <lightSetIntensity>
d0040828:	2100      	movs	r1, #0
d004082a:	ee1e 0a10 	vmov	r0, s28
d004082e:	f004 fda3 	bl	d0045378 <lightEnable>
d0040832:	f509 7110 	add.w	r1, r9, #576	; 0x240
d0040836:	4872      	ldr	r0, [pc, #456]	; (d0040a00 <main+0x35c>)
d0040838:	f7ff fc72 	bl	d0040120 <LoadSFX>
d004083c:	7c21      	ldrb	r1, [r4, #16]
d004083e:	7c65      	ldrb	r5, [r4, #17]
d0040840:	4602      	mov	r2, r0
d0040842:	f894 c012 	ldrb.w	ip, [r4, #18]
d0040846:	2300      	movs	r3, #0
d0040848:	ea41 2505 	orr.w	r5, r1, r5, lsl #8
d004084c:	7ce0      	ldrb	r0, [r4, #19]
d004084e:	f8d9 1240 	ldr.w	r1, [r9, #576]	; 0x240
d0040852:	ea45 450c 	orr.w	r5, r5, ip, lsl #16
d0040856:	ea45 6500 	orr.w	r5, r5, r0, lsl #24
d004085a:	4618      	mov	r0, r3
d004085c:	68ad      	ldr	r5, [r5, #8]
d004085e:	68ed      	ldr	r5, [r5, #12]
d0040860:	47a8      	blx	r5
d0040862:	7c23      	ldrb	r3, [r4, #16]
d0040864:	7c62      	ldrb	r2, [r4, #17]
d0040866:	f644 6184 	movw	r1, #20100	; 0x4e84
d004086a:	7ca5      	ldrb	r5, [r4, #18]
d004086c:	2000      	movs	r0, #0
d004086e:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0040872:	7ce2      	ldrb	r2, [r4, #19]
d0040874:	ea43 4305 	orr.w	r3, r3, r5, lsl #16
d0040878:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004087c:	689b      	ldr	r3, [r3, #8]
d004087e:	691b      	ldr	r3, [r3, #16]
d0040880:	4798      	blx	r3
d0040882:	7c23      	ldrb	r3, [r4, #16]
d0040884:	7c62      	ldrb	r2, [r4, #17]
d0040886:	f44f 71dc 	mov.w	r1, #440	; 0x1b8
d004088a:	7ca5      	ldrb	r5, [r4, #18]
d004088c:	2000      	movs	r0, #0
d004088e:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0040892:	7ce2      	ldrb	r2, [r4, #19]
d0040894:	ea43 4305 	orr.w	r3, r3, r5, lsl #16
d0040898:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004089c:	689b      	ldr	r3, [r3, #8]
d004089e:	695b      	ldr	r3, [r3, #20]
d00408a0:	4798      	blx	r3
d00408a2:	7c23      	ldrb	r3, [r4, #16]
d00408a4:	7c62      	ldrb	r2, [r4, #17]
d00408a6:	f06f 013f 	mvn.w	r1, #63	; 0x3f
d00408aa:	7ca5      	ldrb	r5, [r4, #18]
d00408ac:	2000      	movs	r0, #0
d00408ae:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d00408b2:	7ce2      	ldrb	r2, [r4, #19]
d00408b4:	ea43 4305 	orr.w	r3, r3, r5, lsl #16
d00408b8:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00408bc:	689b      	ldr	r3, [r3, #8]
d00408be:	699b      	ldr	r3, [r3, #24]
d00408c0:	4798      	blx	r3
d00408c2:	7c23      	ldrb	r3, [r4, #16]
d00408c4:	7c62      	ldrb	r2, [r4, #17]
d00408c6:	2100      	movs	r1, #0
d00408c8:	7ca5      	ldrb	r5, [r4, #18]
d00408ca:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d00408ce:	7ce2      	ldrb	r2, [r4, #19]
d00408d0:	4608      	mov	r0, r1
d00408d2:	ea43 4305 	orr.w	r3, r3, r5, lsl #16
d00408d6:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00408da:	689b      	ldr	r3, [r3, #8]
d00408dc:	6a1b      	ldr	r3, [r3, #32]
d00408de:	4798      	blx	r3
d00408e0:	f509 7108 	add.w	r1, r9, #544	; 0x220
d00408e4:	4847      	ldr	r0, [pc, #284]	; (d0040a04 <main+0x360>)
d00408e6:	f7ff fc1b 	bl	d0040120 <LoadSFX>
d00408ea:	7c21      	ldrb	r1, [r4, #16]
d00408ec:	7c65      	ldrb	r5, [r4, #17]
d00408ee:	4602      	mov	r2, r0
d00408f0:	f894 c012 	ldrb.w	ip, [r4, #18]
d00408f4:	2300      	movs	r3, #0
d00408f6:	ea41 2505 	orr.w	r5, r1, r5, lsl #8
d00408fa:	7ce0      	ldrb	r0, [r4, #19]
d00408fc:	f8d9 1220 	ldr.w	r1, [r9, #544]	; 0x220
d0040900:	ea45 450c 	orr.w	r5, r5, ip, lsl #16
d0040904:	ea45 6500 	orr.w	r5, r5, r0, lsl #24
d0040908:	2001      	movs	r0, #1
d004090a:	68ad      	ldr	r5, [r5, #8]
d004090c:	68ed      	ldr	r5, [r5, #12]
d004090e:	47a8      	blx	r5
d0040910:	7c23      	ldrb	r3, [r4, #16]
d0040912:	7c62      	ldrb	r2, [r4, #17]
d0040914:	f244 21cc 	movw	r1, #17100	; 0x42cc
d0040918:	7ca0      	ldrb	r0, [r4, #18]
d004091a:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004091e:	7ce2      	ldrb	r2, [r4, #19]
d0040920:	4d39      	ldr	r5, [pc, #228]	; (d0040a08 <main+0x364>)
d0040922:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
d0040926:	2001      	movs	r0, #1
d0040928:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004092c:	689b      	ldr	r3, [r3, #8]
d004092e:	691b      	ldr	r3, [r3, #16]
d0040930:	4798      	blx	r3
d0040932:	7c23      	ldrb	r3, [r4, #16]
d0040934:	7c62      	ldrb	r2, [r4, #17]
d0040936:	f44f 71dc 	mov.w	r1, #440	; 0x1b8
d004093a:	2001      	movs	r0, #1
d004093c:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0040940:	7ca2      	ldrb	r2, [r4, #18]
d0040942:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d0040946:	7ce2      	ldrb	r2, [r4, #19]
d0040948:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004094c:	689b      	ldr	r3, [r3, #8]
d004094e:	695b      	ldr	r3, [r3, #20]
d0040950:	4798      	blx	r3
d0040952:	7c23      	ldrb	r3, [r4, #16]
d0040954:	7c62      	ldrb	r2, [r4, #17]
d0040956:	2140      	movs	r1, #64	; 0x40
d0040958:	2001      	movs	r0, #1
d004095a:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004095e:	7ca2      	ldrb	r2, [r4, #18]
d0040960:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d0040964:	7ce2      	ldrb	r2, [r4, #19]
d0040966:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004096a:	689b      	ldr	r3, [r3, #8]
d004096c:	699b      	ldr	r3, [r3, #24]
d004096e:	4798      	blx	r3
d0040970:	7c23      	ldrb	r3, [r4, #16]
d0040972:	7c62      	ldrb	r2, [r4, #17]
d0040974:	2100      	movs	r1, #0
d0040976:	2001      	movs	r0, #1
d0040978:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004097c:	7ca2      	ldrb	r2, [r4, #18]
d004097e:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d0040982:	7ce2      	ldrb	r2, [r4, #19]
d0040984:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0040988:	689b      	ldr	r3, [r3, #8]
d004098a:	6a1b      	ldr	r3, [r3, #32]
d004098c:	4798      	blx	r3
d004098e:	2313      	movs	r3, #19
d0040990:	2012      	movs	r0, #18
d0040992:	2215      	movs	r2, #21
d0040994:	702b      	strb	r3, [r5, #0]
d0040996:	2317      	movs	r3, #23
d0040998:	4d1c      	ldr	r5, [pc, #112]	; (d0040a0c <main+0x368>)
d004099a:	ed9d 8a07 	vldr	s16, [sp, #28]
d004099e:	7028      	strb	r0, [r5, #0]
d00409a0:	481b      	ldr	r0, [pc, #108]	; (d0040a10 <main+0x36c>)
d00409a2:	ee18 1a10 	vmov	r1, s16
d00409a6:	ed9f 0a1b 	vldr	s0, [pc, #108]	; d0040a14 <main+0x370>
d00409aa:	7002      	strb	r2, [r0, #0]
d00409ac:	4a1a      	ldr	r2, [pc, #104]	; (d0040a18 <main+0x374>)
d00409ae:	481b      	ldr	r0, [pc, #108]	; (d0040a1c <main+0x378>)
d00409b0:	7013      	strb	r3, [r2, #0]
d00409b2:	f006 fb9b 	bl	d00470ec <loadMeshSB3D>
d00409b6:	ed9f 1a0f 	vldr	s2, [pc, #60]	; d00409f4 <main+0x350>
d00409ba:	eef0 0a41 	vmov.f32	s1, s2
d00409be:	eeb0 0a41 	vmov.f32	s0, s2
d00409c2:	f002 ff89 	bl	d00438d8 <vec3>
d00409c6:	ee18 0a10 	vmov	r0, s16
d00409ca:	edcd 0a2f 	vstr	s1, [sp, #188]	; 0xbc
d00409ce:	ed8d 1a30 	vstr	s2, [sp, #192]	; 0xc0
d00409d2:	ed8d 0a2e 	vstr	s0, [sp, #184]	; 0xb8
d00409d6:	f004 f84d 	bl	d0044a74 <entityWorldSpawn>
d00409da:	f8dd 8020 	ldr.w	r8, [sp, #32]
d00409de:	e025      	b.n	d0040a2c <main+0x388>
d00409e0:	2001f000 	.word	0x2001f000
d00409e4:	42280000 	.word	0x42280000
d00409e8:	c3750000 	.word	0xc3750000
d00409ec:	459c4000 	.word	0x459c4000
d00409f0:	3c23d70a 	.word	0x3c23d70a
d00409f4:	00000000 	.word	0x00000000
d00409f8:	42b40000 	.word	0x42b40000
d00409fc:	d0048688 	.word	0xd0048688
d0040a00:	d0048694 	.word	0xd0048694
d0040a04:	d00486a4 	.word	0xd00486a4
d0040a08:	d012e761 	.word	0xd012e761
d0040a0c:	d012e720 	.word	0xd012e720
d0040a10:	d012e762 	.word	0xd012e762
d0040a14:	43480000 	.word	0x43480000
d0040a18:	d012e760 	.word	0xd012e760
d0040a1c:	d00486b4 	.word	0xd00486b4
d0040a20:	d00486e0 	.word	0xd00486e0
d0040a24:	d0048bd8 	.word	0xd0048bd8
d0040a28:	42480000 	.word	0x42480000
d0040a2c:	ed1f 0a02 	vldr	s0, [pc, #-8]	; d0040a28 <main+0x384>
d0040a30:	4641      	mov	r1, r8
d0040a32:	4891      	ldr	r0, [pc, #580]	; (d0040c78 <main+0x5d4>)
d0040a34:	f006 fb5a 	bl	d00470ec <loadMeshSB3D>
d0040a38:	ed9f 1a90 	vldr	s2, [pc, #576]	; d0040c7c <main+0x5d8>
d0040a3c:	eddf 0a90 	vldr	s1, [pc, #576]	; d0040c80 <main+0x5dc>
d0040a40:	ed9f 0a90 	vldr	s0, [pc, #576]	; d0040c84 <main+0x5e0>
d0040a44:	f002 ff48 	bl	d00438d8 <vec3>
d0040a48:	4640      	mov	r0, r8
d0040a4a:	edcd 0a32 	vstr	s1, [sp, #200]	; 0xc8
d0040a4e:	ed8d 1a33 	vstr	s2, [sp, #204]	; 0xcc
d0040a52:	ed8d 0a31 	vstr	s0, [sp, #196]	; 0xc4
d0040a56:	f004 f80d 	bl	d0044a74 <entityWorldSpawn>
d0040a5a:	eeb2 0a04 	vmov.f32	s0, #36	; 0x41200000  10.0
d0040a5e:	4651      	mov	r1, sl
d0040a60:	4680      	mov	r8, r0
d0040a62:	4889      	ldr	r0, [pc, #548]	; (d0040c88 <main+0x5e4>)
d0040a64:	f006 fb42 	bl	d00470ec <loadMeshSB3D>
d0040a68:	f8dd b024 	ldr.w	fp, [sp, #36]	; 0x24
d0040a6c:	4651      	mov	r1, sl
d0040a6e:	4658      	mov	r0, fp
d0040a70:	f004 f998 	bl	d0044da4 <copyMesh>
d0040a74:	ed9f 1a85 	vldr	s2, [pc, #532]	; d0040c8c <main+0x5e8>
d0040a78:	eddf 0a85 	vldr	s1, [pc, #532]	; d0040c90 <main+0x5ec>
d0040a7c:	ed9f 0a85 	vldr	s0, [pc, #532]	; d0040c94 <main+0x5f0>
d0040a80:	f002 ff2a 	bl	d00438d8 <vec3>
d0040a84:	4658      	mov	r0, fp
d0040a86:	ed8d 0a34 	vstr	s0, [sp, #208]	; 0xd0
d0040a8a:	edcd 0a35 	vstr	s1, [sp, #212]	; 0xd4
d0040a8e:	ed8d 1a36 	vstr	s2, [sp, #216]	; 0xd8
d0040a92:	f003 ffef 	bl	d0044a74 <entityWorldSpawn>
d0040a96:	ed9f 1a7a 	vldr	s2, [pc, #488]	; d0040c80 <main+0x5dc>
d0040a9a:	4683      	mov	fp, r0
d0040a9c:	eef0 0a41 	vmov.f32	s1, s2
d0040aa0:	eeb0 0a41 	vmov.f32	s0, s2
d0040aa4:	eeb0 8a41 	vmov.f32	s16, s2
d0040aa8:	f002 ff16 	bl	d00438d8 <vec3>
d0040aac:	eef7 1a00 	vmov.f32	s3, #112	; 0x3f800000  1.0
d0040ab0:	2001      	movs	r0, #1
d0040ab2:	ed8d 0a37 	vstr	s0, [sp, #220]	; 0xdc
d0040ab6:	edcd 0a38 	vstr	s1, [sp, #224]	; 0xe0
d0040aba:	ed8d 1a39 	vstr	s2, [sp, #228]	; 0xe4
d0040abe:	f004 fc69 	bl	d0045394 <addPointLight>
d0040ac2:	b2c3      	uxtb	r3, r0
d0040ac4:	ed9f 1a74 	vldr	s2, [pc, #464]	; d0040c98 <main+0x5f4>
d0040ac8:	eddf 0a74 	vldr	s1, [pc, #464]	; d0040c9c <main+0x5f8>
d0040acc:	ed9f 0a74 	vldr	s0, [pc, #464]	; d0040ca0 <main+0x5fc>
d0040ad0:	4618      	mov	r0, r3
d0040ad2:	ee0d 3a90 	vmov	s27, r3
d0040ad6:	f004 fc2b 	bl	d0045330 <lightSetRanges>
d0040ada:	f8dd 9018 	ldr.w	r9, [sp, #24]
d0040ade:	eb07 1589 	add.w	r5, r7, r9, lsl #6
d0040ae2:	f109 0901 	add.w	r9, r9, #1
d0040ae6:	4651      	mov	r1, sl
d0040ae8:	a80a      	add	r0, sp, #40	; 0x28
d0040aea:	f004 f95b 	bl	d0044da4 <copyMesh>
d0040aee:	fb06 f309 	mul.w	r3, r6, r9
d0040af2:	f10d 0c28 	add.w	ip, sp, #40	; 0x28
d0040af6:	eef0 0a69 	vmov.f32	s1, s19
d0040afa:	ee01 3a10 	vmov	s2, r3
d0040afe:	eeb0 0a49 	vmov.f32	s0, s18
d0040b02:	e8bc 000f 	ldmia.w	ip!, {r0, r1, r2, r3}
d0040b06:	c50f      	stmia	r5!, {r0, r1, r2, r3}
d0040b08:	e8bc 000f 	ldmia.w	ip!, {r0, r1, r2, r3}
d0040b0c:	c50f      	stmia	r5!, {r0, r1, r2, r3}
d0040b0e:	e8bc 000f 	ldmia.w	ip!, {r0, r1, r2, r3}
d0040b12:	c50f      	stmia	r5!, {r0, r1, r2, r3}
d0040b14:	e89c 000f 	ldmia.w	ip, {r0, r1, r2, r3}
d0040b18:	eeb8 1ac1 	vcvt.f32.s32	s2, s2
d0040b1c:	e885 000f 	stmia.w	r5, {r0, r1, r2, r3}
d0040b20:	f002 feda 	bl	d00438d8 <vec3>
d0040b24:	9b04      	ldr	r3, [sp, #16]
d0040b26:	edcd 0a3b 	vstr	s1, [sp, #236]	; 0xec
d0040b2a:	4618      	mov	r0, r3
d0040b2c:	3340      	adds	r3, #64	; 0x40
d0040b2e:	ed8d 1a3c 	vstr	s2, [sp, #240]	; 0xf0
d0040b32:	ed8d 0a3a 	vstr	s0, [sp, #232]	; 0xe8
d0040b36:	9304      	str	r3, [sp, #16]
d0040b38:	f003 ff9c 	bl	d0044a74 <entityWorldSpawn>
d0040b3c:	9b03      	ldr	r3, [sp, #12]
d0040b3e:	4605      	mov	r5, r0
d0040b40:	eeb0 0a68 	vmov.f32	s0, s17
d0040b44:	f843 0b04 	str.w	r0, [r3], #4
d0040b48:	9303      	str	r3, [sp, #12]
d0040b4a:	f002 fec9 	bl	d00438e0 <degrees>
d0040b4e:	eeb0 1a48 	vmov.f32	s2, s16
d0040b52:	4628      	mov	r0, r5
d0040b54:	2101      	movs	r1, #1
d0040b56:	eddf 0a4a 	vldr	s1, [pc, #296]	; d0040c80 <main+0x5dc>
d0040b5a:	f004 f911 	bl	d0044d80 <entityRotation>
d0040b5e:	f1b9 0f03 	cmp.w	r9, #3
d0040b62:	d1bc      	bne.n	d0040ade <main+0x43a>
d0040b64:	9823      	ldr	r0, [sp, #140]	; 0x8c
d0040b66:	46b9      	mov	r9, r7
d0040b68:	ed9f 1a4e 	vldr	s2, [pc, #312]	; d0040ca4 <main+0x600>
d0040b6c:	ee1a 7a10 	vmov	r7, s20
d0040b70:	eddf 0a4d 	vldr	s1, [pc, #308]	; d0040ca8 <main+0x604>
d0040b74:	ed9f 0a4d 	vldr	s0, [pc, #308]	; d0040cac <main+0x608>
d0040b78:	9003      	str	r0, [sp, #12]
d0040b7a:	f89d a014 	ldrb.w	sl, [sp, #20]
d0040b7e:	f002 feab 	bl	d00438d8 <vec3>
d0040b82:	9803      	ldr	r0, [sp, #12]
d0040b84:	ed8d 0a3d 	vstr	s0, [sp, #244]	; 0xf4
d0040b88:	edcd 0a3e 	vstr	s1, [sp, #248]	; 0xf8
d0040b8c:	ed8d 1a3f 	vstr	s2, [sp, #252]	; 0xfc
d0040b90:	f003 ffb6 	bl	d0044b00 <entitySetPosition>
d0040b94:	2000      	movs	r0, #0
d0040b96:	4d46      	ldr	r5, [pc, #280]	; (d0040cb0 <main+0x60c>)
d0040b98:	f004 fca2 	bl	d00454e0 <enableFlatMode>
d0040b9c:	7b23      	ldrb	r3, [r4, #12]
d0040b9e:	7b62      	ldrb	r2, [r4, #13]
d0040ba0:	7ba1      	ldrb	r1, [r4, #14]
d0040ba2:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0040ba6:	7be2      	ldrb	r2, [r4, #15]
d0040ba8:	6828      	ldr	r0, [r5, #0]
d0040baa:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0040bae:	eddf aa41 	vldr	s21, [pc, #260]	; d0040cb4 <main+0x610>
d0040bb2:	eddf ca41 	vldr	s25, [pc, #260]	; d0040cb8 <main+0x614>
d0040bb6:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0040bba:	ed9f ca40 	vldr	s24, [pc, #256]	; d0040cbc <main+0x618>
d0040bbe:	eddf ba40 	vldr	s23, [pc, #256]	; d0040cc0 <main+0x61c>
d0040bc2:	681b      	ldr	r3, [r3, #0]
d0040bc4:	ed9f ba3f 	vldr	s22, [pc, #252]	; d0040cc4 <main+0x620>
d0040bc8:	69db      	ldr	r3, [r3, #28]
d0040bca:	4798      	blx	r3
d0040bcc:	7b23      	ldrb	r3, [r4, #12]
d0040bce:	7b62      	ldrb	r2, [r4, #13]
d0040bd0:	7ba1      	ldrb	r1, [r4, #14]
d0040bd2:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0040bd6:	7be2      	ldrb	r2, [r4, #15]
d0040bd8:	6828      	ldr	r0, [r5, #0]
d0040bda:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0040bde:	eddf 8a28 	vldr	s17, [pc, #160]	; d0040c80 <main+0x5dc>
d0040be2:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0040be6:	681b      	ldr	r3, [r3, #0]
d0040be8:	699b      	ldr	r3, [r3, #24]
d0040bea:	4798      	blx	r3
d0040bec:	7b23      	ldrb	r3, [r4, #12]
d0040bee:	7b62      	ldrb	r2, [r4, #13]
d0040bf0:	2001      	movs	r0, #1
d0040bf2:	7ba1      	ldrb	r1, [r4, #14]
d0040bf4:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0040bf8:	7be2      	ldrb	r2, [r4, #15]
d0040bfa:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0040bfe:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0040c02:	685b      	ldr	r3, [r3, #4]
d0040c04:	68db      	ldr	r3, [r3, #12]
d0040c06:	4798      	blx	r3
d0040c08:	7b23      	ldrb	r3, [r4, #12]
d0040c0a:	7b62      	ldrb	r2, [r4, #13]
d0040c0c:	211e      	movs	r1, #30
d0040c0e:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0040c12:	7ba2      	ldrb	r2, [r4, #14]
d0040c14:	4608      	mov	r0, r1
d0040c16:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d0040c1a:	7be2      	ldrb	r2, [r4, #15]
d0040c1c:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0040c20:	685b      	ldr	r3, [r3, #4]
d0040c22:	689b      	ldr	r3, [r3, #8]
d0040c24:	4798      	blx	r3
d0040c26:	7823      	ldrb	r3, [r4, #0]
d0040c28:	7862      	ldrb	r2, [r4, #1]
d0040c2a:	a91c      	add	r1, sp, #112	; 0x70
d0040c2c:	a81b      	add	r0, sp, #108	; 0x6c
d0040c2e:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0040c32:	78a2      	ldrb	r2, [r4, #2]
d0040c34:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d0040c38:	78e2      	ldrb	r2, [r4, #3]
d0040c3a:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0040c3e:	691b      	ldr	r3, [r3, #16]
d0040c40:	4798      	blx	r3
d0040c42:	7823      	ldrb	r3, [r4, #0]
d0040c44:	7862      	ldrb	r2, [r4, #1]
d0040c46:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0040c4a:	78a2      	ldrb	r2, [r4, #2]
d0040c4c:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d0040c50:	78e2      	ldrb	r2, [r4, #3]
d0040c52:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0040c56:	69db      	ldr	r3, [r3, #28]
d0040c58:	4798      	blx	r3
d0040c5a:	7823      	ldrb	r3, [r4, #0]
d0040c5c:	7862      	ldrb	r2, [r4, #1]
d0040c5e:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0040c62:	78a2      	ldrb	r2, [r4, #2]
d0040c64:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d0040c68:	78e2      	ldrb	r2, [r4, #3]
d0040c6a:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0040c6e:	689b      	ldr	r3, [r3, #8]
d0040c70:	4798      	blx	r3
d0040c72:	4605      	mov	r5, r0
d0040c74:	e06e      	b.n	d0040d54 <main+0x6b0>
d0040c76:	bf00      	nop
d0040c78:	d00486c4 	.word	0xd00486c4
d0040c7c:	c2c80000 	.word	0xc2c80000
d0040c80:	00000000 	.word	0x00000000
d0040c84:	44f3c000 	.word	0x44f3c000
d0040c88:	d00486d4 	.word	0xd00486d4
d0040c8c:	c3480000 	.word	0xc3480000
d0040c90:	42480000 	.word	0x42480000
d0040c94:	c3070000 	.word	0xc3070000
d0040c98:	44048000 	.word	0x44048000
d0040c9c:	43a00000 	.word	0x43a00000
d0040ca0:	42c80000 	.word	0x42c80000
d0040ca4:	43480000 	.word	0x43480000
d0040ca8:	42a40000 	.word	0x42a40000
d0040cac:	c3750000 	.word	0xc3750000
d0040cb0:	d012e7a0 	.word	0xd012e7a0
d0040cb4:	4d7bc521 	.word	0x4d7bc521
d0040cb8:	42f20000 	.word	0x42f20000
d0040cbc:	42b6ee15 	.word	0x42b6ee15
d0040cc0:	4215999a 	.word	0x4215999a
d0040cc4:	bc872b02 	.word	0xbc872b02
d0040cc8:	9b04      	ldr	r3, [sp, #16]
d0040cca:	eeb0 0a68 	vmov.f32	s0, s17
d0040cce:	f8dd 9014 	ldr.w	r9, [sp, #20]
d0040cd2:	ee18 7a10 	vmov	r7, s16
d0040cd6:	2b00      	cmp	r3, #0
d0040cd8:	f000 81d8 	beq.w	d004108c <main+0x9e8>
d0040cdc:	49b9      	ldr	r1, [pc, #740]	; (d0040fc4 <main+0x920>)
d0040cde:	2305      	movs	r3, #5
d0040ce0:	2215      	movs	r2, #21
d0040ce2:	ee18 0a10 	vmov	r0, s16
d0040ce6:	7809      	ldrb	r1, [r1, #0]
d0040ce8:	f005 fa6e 	bl	d00461c8 <drawFakeHorizon>
d0040cec:	49b6      	ldr	r1, [pc, #728]	; (d0040fc8 <main+0x924>)
d0040cee:	780b      	ldrb	r3, [r1, #0]
d0040cf0:	2b00      	cmp	r3, #0
d0040cf2:	f040 81c7 	bne.w	d0041084 <main+0x9e0>
d0040cf6:	48b5      	ldr	r0, [pc, #724]	; (d0040fcc <main+0x928>)
d0040cf8:	2205      	movs	r2, #5
d0040cfa:	7803      	ldrb	r3, [r0, #0]
d0040cfc:	700a      	strb	r2, [r1, #0]
d0040cfe:	f1c3 0301 	rsb	r3, r3, #1
d0040d02:	49b3      	ldr	r1, [pc, #716]	; (d0040fd0 <main+0x92c>)
d0040d04:	b2db      	uxtb	r3, r3
d0040d06:	5cca      	ldrb	r2, [r1, r3]
d0040d08:	7003      	strb	r3, [r0, #0]
d0040d0a:	b922      	cbnz	r2, d0040d16 <main+0x672>
d0040d0c:	2278      	movs	r2, #120	; 0x78
d0040d0e:	54ce      	strb	r6, [r1, r3]
d0040d10:	49b0      	ldr	r1, [pc, #704]	; (d0040fd4 <main+0x930>)
d0040d12:	f841 2023 	str.w	r2, [r1, r3, lsl #2]
d0040d16:	49b0      	ldr	r1, [pc, #704]	; (d0040fd8 <main+0x934>)
d0040d18:	236e      	movs	r3, #110	; 0x6e
d0040d1a:	2280      	movs	r2, #128	; 0x80
d0040d1c:	eeb0 0a68 	vmov.f32	s0, s17
d0040d20:	7809      	ldrb	r1, [r1, #0]
d0040d22:	4638      	mov	r0, r7
d0040d24:	9d03      	ldr	r5, [sp, #12]
d0040d26:	f005 f941 	bl	d0045fac <drawFakeHorizonDots>
d0040d2a:	4638      	mov	r0, r7
d0040d2c:	4eab      	ldr	r6, [pc, #684]	; (d0040fdc <main+0x938>)
d0040d2e:	f006 f8cd 	bl	d0046ecc <Render3D>
d0040d32:	7b20      	ldrb	r0, [r4, #12]
d0040d34:	7b61      	ldrb	r1, [r4, #13]
d0040d36:	7ba2      	ldrb	r2, [r4, #14]
d0040d38:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d0040d3c:	7be3      	ldrb	r3, [r4, #15]
d0040d3e:	7830      	ldrb	r0, [r6, #0]
d0040d40:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d0040d44:	f1c0 0101 	rsb	r1, r0, #1
d0040d48:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0040d4c:	7031      	strb	r1, [r6, #0]
d0040d4e:	681b      	ldr	r3, [r3, #0]
d0040d50:	681b      	ldr	r3, [r3, #0]
d0040d52:	4798      	blx	r3
d0040d54:	7820      	ldrb	r0, [r4, #0]
d0040d56:	7861      	ldrb	r1, [r4, #1]
d0040d58:	78a2      	ldrb	r2, [r4, #2]
d0040d5a:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d0040d5e:	78e3      	ldrb	r3, [r4, #3]
d0040d60:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d0040d64:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0040d68:	689b      	ldr	r3, [r3, #8]
d0040d6a:	4798      	blx	r3
d0040d6c:	1b43      	subs	r3, r0, r5
d0040d6e:	9003      	str	r0, [sp, #12]
d0040d70:	ee08 3a10 	vmov	s16, r3
d0040d74:	eeb8 8a48 	vcvt.f32.u32	s16, s16
d0040d78:	eeb4 8aea 	vcmpe.f32	s16, s21
d0040d7c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0040d80:	f300 8175 	bgt.w	d004106e <main+0x9ca>
d0040d84:	eddf 7a96 	vldr	s15, [pc, #600]	; d0040fe0 <main+0x93c>
d0040d88:	eeb2 9a04 	vmov.f32	s18, #36	; 0x41200000  10.0
d0040d8c:	ed9f da95 	vldr	s26, [pc, #596]	; d0040fe4 <main+0x940>
d0040d90:	ee28 8a27 	vmul.f32	s16, s16, s15
d0040d94:	eddf 9a94 	vldr	s19, [pc, #592]	; d0040fe8 <main+0x944>
d0040d98:	eddf 7a94 	vldr	s15, [pc, #592]	; d0040fec <main+0x948>
d0040d9c:	ed9f aa94 	vldr	s20, [pc, #592]	; d0040ff0 <main+0x94c>
d0040da0:	ee28 9a09 	vmul.f32	s18, s16, s18
d0040da4:	ee68 9a29 	vmul.f32	s19, s16, s19
d0040da8:	ee28 aa0a 	vmul.f32	s20, s16, s20
d0040dac:	ee29 da0d 	vmul.f32	s26, s18, s26
d0040db0:	ee29 9a27 	vmul.f32	s18, s18, s15
d0040db4:	7820      	ldrb	r0, [r4, #0]
d0040db6:	7861      	ldrb	r1, [r4, #1]
d0040db8:	78a2      	ldrb	r2, [r4, #2]
d0040dba:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d0040dbe:	78e3      	ldrb	r3, [r4, #3]
d0040dc0:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d0040dc4:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0040dc8:	6a1b      	ldr	r3, [r3, #32]
d0040dca:	4798      	blx	r3
d0040dcc:	7826      	ldrb	r6, [r4, #0]
d0040dce:	7863      	ldrb	r3, [r4, #1]
d0040dd0:	a91e      	add	r1, sp, #120	; 0x78
d0040dd2:	78a2      	ldrb	r2, [r4, #2]
d0040dd4:	4605      	mov	r5, r0
d0040dd6:	ea46 2603 	orr.w	r6, r6, r3, lsl #8
d0040dda:	78e3      	ldrb	r3, [r4, #3]
d0040ddc:	a81d      	add	r0, sp, #116	; 0x74
d0040dde:	ea46 4202 	orr.w	r2, r6, r2, lsl #16
d0040de2:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0040de6:	699b      	ldr	r3, [r3, #24]
d0040de8:	4798      	blx	r3
d0040dea:	9a1d      	ldr	r2, [sp, #116]	; 0x74
d0040dec:	9b1e      	ldr	r3, [sp, #120]	; 0x78
d0040dee:	eef0 0a68 	vmov.f32	s1, s17
d0040df2:	4252      	negs	r2, r2
d0040df4:	ed9f 1a7f 	vldr	s2, [pc, #508]	; d0040ff4 <main+0x950>
d0040df8:	425b      	negs	r3, r3
d0040dfa:	ed9f 0a7f 	vldr	s0, [pc, #508]	; d0040ff8 <main+0x954>
d0040dfe:	ee07 2a90 	vmov	s15, r2
d0040e02:	2100      	movs	r1, #0
d0040e04:	4638      	mov	r0, r7
d0040e06:	eeb8 7ae7 	vcvt.f32.s32	s14, s15
d0040e0a:	ee07 3a90 	vmov	s15, r3
d0040e0e:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0040e12:	ee27 1a01 	vmul.f32	s2, s14, s2
d0040e16:	ee27 0a80 	vmul.f32	s0, s15, s0
d0040e1a:	f003 f979 	bl	d0044110 <cameraTurn>
d0040e1e:	eef0 7a04 	vmov.f32	s15, #4	; 0x40200000  2.5
d0040e22:	edd9 0a37 	vldr	s1, [r9, #220]	; 0xdc
d0040e26:	ee60 0aa7 	vmul.f32	s1, s1, s15
d0040e2a:	ee60 0a88 	vmul.f32	s1, s1, s16
d0040e2e:	eef5 0a40 	vcmp.f32	s1, #0.0
d0040e32:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0040e36:	f040 8146 	bne.w	d00410c6 <main+0xa22>
d0040e3a:	eeb0 1a68 	vmov.f32	s2, s17
d0040e3e:	eddf 0a6f 	vldr	s1, [pc, #444]	; d0040ffc <main+0x958>
d0040e42:	eeb0 0a4d 	vmov.f32	s0, s26
d0040e46:	4640      	mov	r0, r8
d0040e48:	f003 fec8 	bl	d0044bdc <entityTurnLocal>
d0040e4c:	eeb0 0a49 	vmov.f32	s0, s18
d0040e50:	4640      	mov	r0, r8
d0040e52:	f003 fe91 	bl	d0044b78 <entityMoveForward>
d0040e56:	eeb0 0a69 	vmov.f32	s0, s19
d0040e5a:	4658      	mov	r0, fp
d0040e5c:	f003 fe8c 	bl	d0044b78 <entityMoveForward>
d0040e60:	4658      	mov	r0, fp
d0040e62:	f003 fe69 	bl	d0044b38 <entityGetPosition>
d0040e66:	eddf 7a66 	vldr	s15, [pc, #408]	; d0041000 <main+0x95c>
d0040e6a:	ed8d 0a25 	vstr	s0, [sp, #148]	; 0x94
d0040e6e:	eeb4 1ae7 	vcmpe.f32	s2, s15
d0040e72:	edcd 0a26 	vstr	s1, [sp, #152]	; 0x98
d0040e76:	ed8d 1a27 	vstr	s2, [sp, #156]	; 0x9c
d0040e7a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0040e7e:	f300 8110 	bgt.w	d00410a2 <main+0x9fe>
d0040e82:	ed9d 0a25 	vldr	s0, [sp, #148]	; 0x94
d0040e86:	ee1d 0a90 	vmov	r0, s27
d0040e8a:	eddd 0a26 	vldr	s1, [sp, #152]	; 0x98
d0040e8e:	ed9d 1a27 	vldr	s2, [sp, #156]	; 0x9c
d0040e92:	f004 faeb 	bl	d004546c <lightSetPosition>
d0040e96:	edd9 0a31 	vldr	s1, [r9, #196]	; 0xc4
d0040e9a:	ed99 1a32 	vldr	s2, [r9, #200]	; 0xc8
d0040e9e:	4650      	mov	r0, sl
d0040ea0:	ed99 0a30 	vldr	s0, [r9, #192]	; 0xc0
d0040ea4:	f004 fae2 	bl	d004546c <lightSetPosition>
d0040ea8:	eeb0 0a00 	vmov.f32	s0, #0	; 0x40000000  2.0
d0040eac:	4650      	mov	r0, sl
d0040eae:	f004 faf9 	bl	d00454a4 <lightSetIntensity>
d0040eb2:	ed9f 1a54 	vldr	s2, [pc, #336]	; d0041004 <main+0x960>
d0040eb6:	eddf 0a54 	vldr	s1, [pc, #336]	; d0041008 <main+0x964>
d0040eba:	4650      	mov	r0, sl
d0040ebc:	ed9f 0a53 	vldr	s0, [pc, #332]	; d004100c <main+0x968>
d0040ec0:	f004 fa36 	bl	d0045330 <lightSetRanges>
d0040ec4:	eeb0 0a48 	vmov.f32	s0, s16
d0040ec8:	ee1e 0a10 	vmov	r0, s28
d0040ecc:	f7ff fa48 	bl	d0040360 <weatherLightning>
d0040ed0:	7823      	ldrb	r3, [r4, #0]
d0040ed2:	7861      	ldrb	r1, [r4, #1]
d0040ed4:	78a2      	ldrb	r2, [r4, #2]
d0040ed6:	ea43 2101 	orr.w	r1, r3, r1, lsl #8
d0040eda:	78e3      	ldrb	r3, [r4, #3]
d0040edc:	9004      	str	r0, [sp, #16]
d0040ede:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d0040ee2:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0040ee6:	69db      	ldr	r3, [r3, #28]
d0040ee8:	4798      	blx	r3
d0040eea:	07ea      	lsls	r2, r5, #31
d0040eec:	f100 8100 	bmi.w	d00410f0 <main+0xa4c>
d0040ef0:	07ab      	lsls	r3, r5, #30
d0040ef2:	f100 80f3 	bmi.w	d00410dc <main+0xa38>
d0040ef6:	7b20      	ldrb	r0, [r4, #12]
d0040ef8:	7b61      	ldrb	r1, [r4, #13]
d0040efa:	7ba2      	ldrb	r2, [r4, #14]
d0040efc:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d0040f00:	7be3      	ldrb	r3, [r4, #15]
d0040f02:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d0040f06:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0040f0a:	681b      	ldr	r3, [r3, #0]
d0040f0c:	68db      	ldr	r3, [r3, #12]
d0040f0e:	4798      	blx	r3
d0040f10:	4a3f      	ldr	r2, [pc, #252]	; (d0041010 <main+0x96c>)
d0040f12:	7813      	ldrb	r3, [r2, #0]
d0040f14:	f1c3 0301 	rsb	r3, r3, #1
d0040f18:	b2db      	uxtb	r3, r3
d0040f1a:	7013      	strb	r3, [r2, #0]
d0040f1c:	7813      	ldrb	r3, [r2, #0]
d0040f1e:	7b21      	ldrb	r1, [r4, #12]
d0040f20:	7b60      	ldrb	r0, [r4, #13]
d0040f22:	7ba2      	ldrb	r2, [r4, #14]
d0040f24:	ea41 2000 	orr.w	r0, r1, r0, lsl #8
d0040f28:	2b00      	cmp	r3, #0
d0040f2a:	f000 8099 	beq.w	d0041060 <main+0x9bc>
d0040f2e:	4d39      	ldr	r5, [pc, #228]	; (d0041014 <main+0x970>)
d0040f30:	ea40 4202 	orr.w	r2, r0, r2, lsl #16
d0040f34:	7be3      	ldrb	r3, [r4, #15]
d0040f36:	6829      	ldr	r1, [r5, #0]
d0040f38:	4837      	ldr	r0, [pc, #220]	; (d0041018 <main+0x974>)
d0040f3a:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0040f3e:	6800      	ldr	r0, [r0, #0]
d0040f40:	2600      	movs	r6, #0
d0040f42:	ee08 7a10 	vmov	s16, r7
d0040f46:	681b      	ldr	r3, [r3, #0]
d0040f48:	6a5b      	ldr	r3, [r3, #36]	; 0x24
d0040f4a:	4798      	blx	r3
d0040f4c:	682b      	ldr	r3, [r5, #0]
d0040f4e:	4d21      	ldr	r5, [pc, #132]	; (d0040fd4 <main+0x930>)
d0040f50:	6818      	ldr	r0, [r3, #0]
d0040f52:	f000 f8f5 	bl	d0041140 <set3DRenderBuffer>
d0040f56:	4b1e      	ldr	r3, [pc, #120]	; (d0040fd0 <main+0x92c>)
d0040f58:	f8cd 9014 	str.w	r9, [sp, #20]
d0040f5c:	4699      	mov	r9, r3
d0040f5e:	f819 2b01 	ldrb.w	r2, [r9], #1
d0040f62:	b342      	cbz	r2, d0040fb6 <main+0x912>
d0040f64:	682f      	ldr	r7, [r5, #0]
d0040f66:	4630      	mov	r0, r6
d0040f68:	1e7b      	subs	r3, r7, #1
d0040f6a:	2f00      	cmp	r7, #0
d0040f6c:	d056      	beq.n	d004101c <main+0x978>
d0040f6e:	602b      	str	r3, [r5, #0]
d0040f70:	9306      	str	r3, [sp, #24]
d0040f72:	bb03      	cbnz	r3, d0040fb6 <main+0x912>
d0040f74:	7c22      	ldrb	r2, [r4, #16]
d0040f76:	f894 c011 	ldrb.w	ip, [r4, #17]
d0040f7a:	7ca1      	ldrb	r1, [r4, #18]
d0040f7c:	ea42 2c0c 	orr.w	ip, r2, ip, lsl #8
d0040f80:	7ce2      	ldrb	r2, [r4, #19]
d0040f82:	ea4c 4101 	orr.w	r1, ip, r1, lsl #16
d0040f86:	ea41 6202 	orr.w	r2, r1, r2, lsl #24
d0040f8a:	6892      	ldr	r2, [r2, #8]
d0040f8c:	6892      	ldr	r2, [r2, #8]
d0040f8e:	4790      	blx	r2
d0040f90:	f894 e010 	ldrb.w	lr, [r4, #16]
d0040f94:	f894 c011 	ldrb.w	ip, [r4, #17]
d0040f98:	4630      	mov	r0, r6
d0040f9a:	7ca1      	ldrb	r1, [r4, #18]
d0040f9c:	ea4e 2c0c 	orr.w	ip, lr, ip, lsl #8
d0040fa0:	7ce2      	ldrb	r2, [r4, #19]
d0040fa2:	ea4c 4101 	orr.w	r1, ip, r1, lsl #16
d0040fa6:	ea41 6202 	orr.w	r2, r1, r2, lsl #24
d0040faa:	6892      	ldr	r2, [r2, #8]
d0040fac:	6852      	ldr	r2, [r2, #4]
d0040fae:	4790      	blx	r2
d0040fb0:	9b06      	ldr	r3, [sp, #24]
d0040fb2:	f809 3c01 	strb.w	r3, [r9, #-1]
d0040fb6:	3504      	adds	r5, #4
d0040fb8:	2e00      	cmp	r6, #0
d0040fba:	f47f ae85 	bne.w	d0040cc8 <main+0x624>
d0040fbe:	2601      	movs	r6, #1
d0040fc0:	e7cd      	b.n	d0040f5e <main+0x8ba>
d0040fc2:	bf00      	nop
d0040fc4:	d012e761 	.word	0xd012e761
d0040fc8:	d0048fdc 	.word	0xd0048fdc
d0040fcc:	d0049068 	.word	0xd0049068
d0040fd0:	d0049088 	.word	0xd0049088
d0040fd4:	d004908c 	.word	0xd004908c
d0040fd8:	d012e760 	.word	0xd012e760
d0040fdc:	d0049070 	.word	0xd0049070
d0040fe0:	310f2a63 	.word	0x310f2a63
d0040fe4:	bb449ba6 	.word	0xbb449ba6
d0040fe8:	43264ccd 	.word	0x43264ccd
d0040fec:	40d9999a 	.word	0x40d9999a
d0040ff0:	435c0000 	.word	0x435c0000
d0040ff4:	3ba3d70a 	.word	0x3ba3d70a
d0040ff8:	3c088889 	.word	0x3c088889
d0040ffc:	00000000 	.word	0x00000000
d0041000:	451c4000 	.word	0x451c4000
d0041004:	44048000 	.word	0x44048000
d0041008:	43a00000 	.word	0x43a00000
d004100c:	42c80000 	.word	0x42c80000
d0041010:	d004907c 	.word	0xd004907c
d0041014:	d012e780 	.word	0xd012e780
d0041018:	d012e7a0 	.word	0xd012e7a0
d004101c:	f894 e010 	ldrb.w	lr, [r4, #16]
d0041020:	f894 c011 	ldrb.w	ip, [r4, #17]
d0041024:	7ca1      	ldrb	r1, [r4, #18]
d0041026:	ea4e 2c0c 	orr.w	ip, lr, ip, lsl #8
d004102a:	7ce2      	ldrb	r2, [r4, #19]
d004102c:	ea4c 4101 	orr.w	r1, ip, r1, lsl #16
d0041030:	ea41 6202 	orr.w	r2, r1, r2, lsl #24
d0041034:	6892      	ldr	r2, [r2, #8]
d0041036:	6892      	ldr	r2, [r2, #8]
d0041038:	4790      	blx	r2
d004103a:	f894 e010 	ldrb.w	lr, [r4, #16]
d004103e:	f894 c011 	ldrb.w	ip, [r4, #17]
d0041042:	4630      	mov	r0, r6
d0041044:	7ca1      	ldrb	r1, [r4, #18]
d0041046:	ea4e 2c0c 	orr.w	ip, lr, ip, lsl #8
d004104a:	7ce2      	ldrb	r2, [r4, #19]
d004104c:	ea4c 4101 	orr.w	r1, ip, r1, lsl #16
d0041050:	ea41 6202 	orr.w	r2, r1, r2, lsl #24
d0041054:	6892      	ldr	r2, [r2, #8]
d0041056:	6852      	ldr	r2, [r2, #4]
d0041058:	4790      	blx	r2
d004105a:	f809 7c01 	strb.w	r7, [r9, #-1]
d004105e:	e7aa      	b.n	d0040fb6 <main+0x912>
d0041060:	4d28      	ldr	r5, [pc, #160]	; (d0041104 <main+0xa60>)
d0041062:	ea40 4202 	orr.w	r2, r0, r2, lsl #16
d0041066:	7be3      	ldrb	r3, [r4, #15]
d0041068:	6829      	ldr	r1, [r5, #0]
d004106a:	4827      	ldr	r0, [pc, #156]	; (d0041108 <main+0xa64>)
d004106c:	e765      	b.n	d0040f3a <main+0x896>
d004106e:	eeb0 aa6c 	vmov.f32	s20, s25
d0041072:	ed9f 8a26 	vldr	s16, [pc, #152]	; d004110c <main+0xa68>
d0041076:	eef0 9a4c 	vmov.f32	s19, s24
d004107a:	eeb0 9a6b 	vmov.f32	s18, s23
d004107e:	eeb0 da4b 	vmov.f32	s26, s22
d0041082:	e697      	b.n	d0040db4 <main+0x710>
d0041084:	3b01      	subs	r3, #1
d0041086:	4a22      	ldr	r2, [pc, #136]	; (d0041110 <main+0xa6c>)
d0041088:	7013      	strb	r3, [r2, #0]
d004108a:	e644      	b.n	d0040d16 <main+0x672>
d004108c:	4b21      	ldr	r3, [pc, #132]	; (d0041114 <main+0xa70>)
d004108e:	ee18 0a10 	vmov	r0, s16
d0041092:	4a21      	ldr	r2, [pc, #132]	; (d0041118 <main+0xa74>)
d0041094:	4921      	ldr	r1, [pc, #132]	; (d004111c <main+0xa78>)
d0041096:	781b      	ldrb	r3, [r3, #0]
d0041098:	7812      	ldrb	r2, [r2, #0]
d004109a:	7809      	ldrb	r1, [r1, #0]
d004109c:	f005 f894 	bl	d00461c8 <drawFakeHorizon>
d00410a0:	e639      	b.n	d0040d16 <main+0x672>
d00410a2:	ed9f 1a1f 	vldr	s2, [pc, #124]	; d0041120 <main+0xa7c>
d00410a6:	eddf 0a1f 	vldr	s1, [pc, #124]	; d0041124 <main+0xa80>
d00410aa:	ed9f 0a1f 	vldr	s0, [pc, #124]	; d0041128 <main+0xa84>
d00410ae:	f002 fc13 	bl	d00438d8 <vec3>
d00410b2:	4658      	mov	r0, fp
d00410b4:	ed8d 0a40 	vstr	s0, [sp, #256]	; 0x100
d00410b8:	edcd 0a41 	vstr	s1, [sp, #260]	; 0x104
d00410bc:	ed8d 1a42 	vstr	s2, [sp, #264]	; 0x108
d00410c0:	f003 fd1e 	bl	d0044b00 <entitySetPosition>
d00410c4:	e6dd      	b.n	d0040e82 <main+0x7de>
d00410c6:	eef1 0a60 	vneg.f32	s1, s1
d00410ca:	2101      	movs	r1, #1
d00410cc:	eeb0 1a68 	vmov.f32	s2, s17
d00410d0:	ed9f 0a16 	vldr	s0, [pc, #88]	; d004112c <main+0xa88>
d00410d4:	4638      	mov	r0, r7
d00410d6:	f003 f81b 	bl	d0044110 <cameraTurn>
d00410da:	e6ae      	b.n	d0040e3a <main+0x796>
d00410dc:	eeb1 1a4a 	vneg.f32	s2, s20
d00410e0:	ed9f 0a12 	vldr	s0, [pc, #72]	; d004112c <main+0xa88>
d00410e4:	eef0 0a68 	vmov.f32	s1, s17
d00410e8:	4638      	mov	r0, r7
d00410ea:	f003 f9df 	bl	d00444ac <cameraMove>
d00410ee:	e702      	b.n	d0040ef6 <main+0x852>
d00410f0:	eeb0 1a4a 	vmov.f32	s2, s20
d00410f4:	ed9f 0a0d 	vldr	s0, [pc, #52]	; d004112c <main+0xa88>
d00410f8:	eef0 0a68 	vmov.f32	s1, s17
d00410fc:	4638      	mov	r0, r7
d00410fe:	f003 f9d5 	bl	d00444ac <cameraMove>
d0041102:	e6f5      	b.n	d0040ef0 <main+0x84c>
d0041104:	d012e7a0 	.word	0xd012e7a0
d0041108:	d012e780 	.word	0xd012e780
d004110c:	3f0ccccd 	.word	0x3f0ccccd
d0041110:	d0048fdc 	.word	0xd0048fdc
d0041114:	d012e762 	.word	0xd012e762
d0041118:	d012e720 	.word	0xd012e720
d004111c:	d012e761 	.word	0xd012e761
d0041120:	c3c80000 	.word	0xc3c80000
d0041124:	42480000 	.word	0x42480000
d0041128:	c3070000 	.word	0xc3070000
d004112c:	00000000 	.word	0x00000000

d0041130 <resetDepthBuffer>:
d0041130:	f44f 2296 	mov.w	r2, #307200	; 0x4b000
d0041134:	21ff      	movs	r1, #255	; 0xff
d0041136:	4801      	ldr	r0, [pc, #4]	; (d004113c <resetDepthBuffer+0xc>)
d0041138:	f006 bbfa 	b.w	d0047930 <memset>
d004113c:	d00490a0 	.word	0xd00490a0

d0041140 <set3DRenderBuffer>:
d0041140:	4b01      	ldr	r3, [pc, #4]	; (d0041148 <set3DRenderBuffer+0x8>)
d0041142:	6018      	str	r0, [r3, #0]
d0041144:	4770      	bx	lr
d0041146:	bf00      	nop
d0041148:	d012e7a4 	.word	0xd012e7a4

d004114c <putPixel>:
d004114c:	f5b0 7ff0 	cmp.w	r0, #480	; 0x1e0
d0041150:	d209      	bcs.n	d0041166 <putPixel+0x1a>
d0041152:	f5b1 7fa0 	cmp.w	r1, #320	; 0x140
d0041156:	d206      	bcs.n	d0041166 <putPixel+0x1a>
d0041158:	4b03      	ldr	r3, [pc, #12]	; (d0041168 <putPixel+0x1c>)
d004115a:	eb00 0080 	add.w	r0, r0, r0, lsl #2
d004115e:	681b      	ldr	r3, [r3, #0]
d0041160:	eb03 1080 	add.w	r0, r3, r0, lsl #6
d0041164:	5442      	strb	r2, [r0, r1]
d0041166:	4770      	bx	lr
d0041168:	d012e7a4 	.word	0xd012e7a4

d004116c <drawLine>:
d004116c:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0041170:	b085      	sub	sp, #20
d0041172:	eba2 0c00 	sub.w	ip, r2, r0
d0041176:	eba3 0901 	sub.w	r9, r3, r1
d004117a:	f240 1edf 	movw	lr, #479	; 0x1df
d004117e:	f89d 4038 	ldrb.w	r4, [sp, #56]	; 0x38
d0041182:	f240 1a3f 	movw	sl, #319	; 0x13f
d0041186:	f8df b07c 	ldr.w	fp, [pc, #124]	; d0041204 <drawLine+0x98>
d004118a:	9401      	str	r4, [sp, #4]
d004118c:	4282      	cmp	r2, r0
d004118e:	bfcc      	ite	gt
d0041190:	2401      	movgt	r4, #1
d0041192:	f04f 34ff 	movle.w	r4, #4294967295	; 0xffffffff
d0041196:	9402      	str	r4, [sp, #8]
d0041198:	428b      	cmp	r3, r1
d004119a:	bfcc      	ite	gt
d004119c:	2401      	movgt	r4, #1
d004119e:	f04f 34ff 	movle.w	r4, #4294967295	; 0xffffffff
d00411a2:	f1bc 0f00 	cmp.w	ip, #0
d00411a6:	9403      	str	r4, [sp, #12]
d00411a8:	bfb8      	it	lt
d00411aa:	f1cc 0c00 	rsblt	ip, ip, #0
d00411ae:	f1b9 0f00 	cmp.w	r9, #0
d00411b2:	bfb8      	it	lt
d00411b4:	f1c9 0900 	rsblt	r9, r9, #0
d00411b8:	ebac 0409 	sub.w	r4, ip, r9
d00411bc:	f1c9 0800 	rsb	r8, r9, #0
d00411c0:	4570      	cmp	r0, lr
d00411c2:	eb00 0780 	add.w	r7, r0, r0, lsl #2
d00411c6:	ea4f 0644 	mov.w	r6, r4, lsl #1
d00411ca:	d807      	bhi.n	d00411dc <drawLine+0x70>
d00411cc:	4551      	cmp	r1, sl
d00411ce:	d805      	bhi.n	d00411dc <drawLine+0x70>
d00411d0:	f8db 5000 	ldr.w	r5, [fp]
d00411d4:	eb05 1587 	add.w	r5, r5, r7, lsl #6
d00411d8:	9f01      	ldr	r7, [sp, #4]
d00411da:	546f      	strb	r7, [r5, r1]
d00411dc:	4290      	cmp	r0, r2
d00411de:	d101      	bne.n	d00411e4 <drawLine+0x78>
d00411e0:	4299      	cmp	r1, r3
d00411e2:	d00c      	beq.n	d00411fe <drawLine+0x92>
d00411e4:	ebb8 0f44 	cmp.w	r8, r4, lsl #1
d00411e8:	dc05      	bgt.n	d00411f6 <drawLine+0x8a>
d00411ea:	9d02      	ldr	r5, [sp, #8]
d00411ec:	45b4      	cmp	ip, r6
d00411ee:	eba4 0409 	sub.w	r4, r4, r9
d00411f2:	4428      	add	r0, r5
d00411f4:	dbe4      	blt.n	d00411c0 <drawLine+0x54>
d00411f6:	9d03      	ldr	r5, [sp, #12]
d00411f8:	4464      	add	r4, ip
d00411fa:	4429      	add	r1, r5
d00411fc:	e7e0      	b.n	d00411c0 <drawLine+0x54>
d00411fe:	b005      	add	sp, #20
d0041200:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0041204:	d012e7a4 	.word	0xd012e7a4

d0041208 <shadeColor>:
d0041208:	2900      	cmp	r1, #0
d004120a:	db09      	blt.n	d0041220 <shadeColor+0x18>
d004120c:	2904      	cmp	r1, #4
d004120e:	dc09      	bgt.n	d0041224 <shadeColor+0x1c>
d0041210:	0109      	lsls	r1, r1, #4
d0041212:	b2c9      	uxtb	r1, r1
d0041214:	f000 000f 	and.w	r0, r0, #15
d0041218:	3020      	adds	r0, #32
d004121a:	4408      	add	r0, r1
d004121c:	b2c0      	uxtb	r0, r0
d004121e:	4770      	bx	lr
d0041220:	2100      	movs	r1, #0
d0041222:	e7f7      	b.n	d0041214 <shadeColor+0xc>
d0041224:	2010      	movs	r0, #16
d0041226:	4770      	bx	lr

d0041228 <fillTriangleFlat>:
d0041228:	eddf 7ad1 	vldr	s15, [pc, #836]	; d0041570 <fillTriangleFlat+0x348>
d004122c:	eef4 0ae7 	vcmpe.f32	s1, s15
d0041230:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0041234:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0041238:	eeb4 1ae7 	vcmpe.f32	s2, s15
d004123c:	ed2d 8b10 	vpush	{d8-d15}
d0041240:	b089      	sub	sp, #36	; 0x24
d0041242:	9304      	str	r3, [sp, #16]
d0041244:	bf94      	ite	ls
d0041246:	2301      	movls	r3, #1
d0041248:	2300      	movhi	r3, #0
d004124a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004124e:	9001      	str	r0, [sp, #4]
d0041250:	9102      	str	r1, [sp, #8]
d0041252:	bf98      	it	ls
d0041254:	f043 0301 	orrls.w	r3, r3, #1
d0041258:	9203      	str	r2, [sp, #12]
d004125a:	f8bd 4090 	ldrh.w	r4, [sp, #144]	; 0x90
d004125e:	f8bd 0094 	ldrh.w	r0, [sp, #148]	; 0x94
d0041262:	f8bd 1098 	ldrh.w	r1, [sp, #152]	; 0x98
d0041266:	f89d 209c 	ldrb.w	r2, [sp, #156]	; 0x9c
d004126a:	2b00      	cmp	r3, #0
d004126c:	f040 8154 	bne.w	d0041518 <fillTriangleFlat+0x2f0>
d0041270:	eeb4 0ae7 	vcmpe.f32	s0, s15
d0041274:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0041278:	bf94      	ite	ls
d004127a:	2701      	movls	r7, #1
d004127c:	2700      	movhi	r7, #0
d004127e:	f240 814b 	bls.w	d0041518 <fillTriangleFlat+0x2f0>
d0041282:	eef7 7a00 	vmov.f32	s15, #112	; 0x3f800000  1.0
d0041286:	ee07 4a10 	vmov	s14, r4
d004128a:	eef6 6a00 	vmov.f32	s13, #96	; 0x3f000000  0.5
d004128e:	eeb8 7a47 	vcvt.f32.u32	s14, s14
d0041292:	ee87 8a80 	vdiv.f32	s16, s15, s0
d0041296:	ee87 2a81 	vdiv.f32	s4, s15, s2
d004129a:	ee87 0aa0 	vdiv.f32	s0, s15, s1
d004129e:	ee07 0a90 	vmov	s15, r0
d00412a2:	ee71 1aa6 	vadd.f32	s3, s3, s13
d00412a6:	eef8 5a67 	vcvt.f32.u32	s11, s15
d00412aa:	ee07 1a90 	vmov	s15, r1
d00412ae:	ee27 7a08 	vmul.f32	s14, s14, s16
d00412b2:	eeb8 3a67 	vcvt.f32.u32	s6, s15
d00412b6:	eefd 7ae1 	vcvt.s32.f32	s15, s3
d00412ba:	ee23 3a02 	vmul.f32	s6, s6, s4
d00412be:	ee17 3a90 	vmov	r3, s15
d00412c2:	2b00      	cmp	r3, #0
d00412c4:	ee65 5a80 	vmul.f32	s11, s11, s0
d00412c8:	f2c0 812d 	blt.w	d0041526 <fillTriangleFlat+0x2fe>
d00412cc:	2b04      	cmp	r3, #4
d00412ce:	f340 8128 	ble.w	d0041522 <fillTriangleFlat+0x2fa>
d00412d2:	2710      	movs	r7, #16
d00412d4:	eddd 7a02 	vldr	s15, [sp, #8]
d00412d8:	eddd 6a23 	vldr	s13, [sp, #140]	; 0x8c
d00412dc:	eeb8 5ae7 	vcvt.f32.s32	s10, s15
d00412e0:	eddd 7a04 	vldr	s15, [sp, #16]
d00412e4:	eef8 6ae6 	vcvt.f32.s32	s13, s13
d00412e8:	eef8 3ae7 	vcvt.f32.s32	s7, s15
d00412ec:	eddd 7a01 	vldr	s15, [sp, #4]
d00412f0:	eeb8 6ae7 	vcvt.f32.s32	s12, s15
d00412f4:	eddd 7a03 	vldr	s15, [sp, #12]
d00412f8:	eeb4 5ae3 	vcmpe.f32	s10, s7
d00412fc:	eef8 4ae7 	vcvt.f32.s32	s9, s15
d0041300:	eddd 7a22 	vldr	s15, [sp, #136]	; 0x88
d0041304:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0041308:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d004130c:	f300 8111 	bgt.w	d0041532 <fillTriangleFlat+0x30a>
d0041310:	eeb4 5ae6 	vcmpe.f32	s10, s13
d0041314:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0041318:	f300 81ee 	bgt.w	d00416f8 <fillTriangleFlat+0x4d0>
d004131c:	eef4 3ae6 	vcmpe.f32	s7, s13
d0041320:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0041324:	dd17      	ble.n	d0041356 <fillTriangleFlat+0x12e>
d0041326:	eeb0 1a65 	vmov.f32	s2, s11
d004132a:	eef0 1a40 	vmov.f32	s3, s0
d004132e:	eef0 2a63 	vmov.f32	s5, s7
d0041332:	eeb0 4a64 	vmov.f32	s8, s9
d0041336:	eef0 5a43 	vmov.f32	s11, s6
d004133a:	eeb0 0a42 	vmov.f32	s0, s4
d004133e:	eef0 3a66 	vmov.f32	s7, s13
d0041342:	eef0 4a67 	vmov.f32	s9, s15
d0041346:	eeb0 3a41 	vmov.f32	s6, s2
d004134a:	eeb0 2a61 	vmov.f32	s4, s3
d004134e:	eef0 6a62 	vmov.f32	s13, s5
d0041352:	eef0 7a44 	vmov.f32	s15, s8
d0041356:	eeb6 4a00 	vmov.f32	s8, #96	; 0x3f000000  0.5
d004135a:	ee75 2a04 	vadd.f32	s5, s10, s8
d004135e:	ee36 4a84 	vadd.f32	s8, s13, s8
d0041362:	eefd 2ae2 	vcvt.s32.f32	s5, s5
d0041366:	eebd 4ac4 	vcvt.s32.f32	s8, s8
d004136a:	ee12 3a90 	vmov	r3, s5
d004136e:	ee14 2a10 	vmov	r2, s8
d0041372:	4293      	cmp	r3, r2
d0041374:	f000 80d0 	beq.w	d0041518 <fillTriangleFlat+0x2f0>
d0041378:	ee76 2ac5 	vsub.f32	s5, s13, s10
d004137c:	ed9f 9a7c 	vldr	s18, [pc, #496]	; d0041570 <fillTriangleFlat+0x348>
d0041380:	eef4 2ac9 	vcmpe.f32	s5, s18
d0041384:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0041388:	f240 80c6 	bls.w	d0041518 <fillTriangleFlat+0x2f0>
d004138c:	eef7 1a00 	vmov.f32	s3, #112	; 0x3f800000  1.0
d0041390:	ee37 1ac6 	vsub.f32	s2, s15, s12
d0041394:	ee72 0a48 	vsub.f32	s1, s4, s16
d0041398:	ee81 4aa2 	vdiv.f32	s8, s3, s5
d004139c:	ee73 2ac5 	vsub.f32	s5, s7, s10
d00413a0:	ee73 8a47 	vsub.f32	s17, s6, s14
d00413a4:	eef4 2ac9 	vcmpe.f32	s5, s18
d00413a8:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00413ac:	ee21 1a04 	vmul.f32	s2, s2, s8
d00413b0:	ee60 0a84 	vmul.f32	s1, s1, s8
d00413b4:	ee68 8a84 	vmul.f32	s17, s17, s8
d00413b8:	f300 80e2 	bgt.w	d0041580 <fillTriangleFlat+0x358>
d00413bc:	ee36 4ae3 	vsub.f32	s8, s13, s7
d00413c0:	eeb4 4ac9 	vcmpe.f32	s8, s18
d00413c4:	ed8d 4a01 	vstr	s8, [sp, #4]
d00413c8:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00413cc:	f340 80a4 	ble.w	d0041518 <fillTriangleFlat+0x2f0>
d00413d0:	eec1 9a84 	vdiv.f32	s19, s3, s8
d00413d4:	eef4 2ac9 	vcmpe.f32	s5, s18
d00413d8:	ee77 7ae4 	vsub.f32	s15, s15, s9
d00413dc:	ee32 4a40 	vsub.f32	s8, s4, s0
d00413e0:	ee33 3a65 	vsub.f32	s6, s6, s11
d00413e4:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00413e8:	ee67 eaa9 	vmul.f32	s29, s15, s19
d00413ec:	ee64 fa29 	vmul.f32	s31, s8, s19
d00413f0:	ee23 fa29 	vmul.f32	s30, s6, s19
d00413f4:	f300 8315 	bgt.w	d0041a22 <fillTriangleFlat+0x7fa>
d00413f8:	eefd 7ae3 	vcvt.s32.f32	s15, s7
d00413fc:	edcd 7a02 	vstr	s15, [sp, #8]
d0041400:	eefd 7ae6 	vcvt.s32.f32	s15, s13
d0041404:	f240 133f 	movw	r3, #319	; 0x13f
d0041408:	9a02      	ldr	r2, [sp, #8]
d004140a:	ee17 ea90 	vmov	lr, s15
d004140e:	ea22 7be2 	bic.w	fp, r2, r2, asr #31
d0041412:	f10e 3eff 	add.w	lr, lr, #4294967295	; 0xffffffff
d0041416:	459e      	cmp	lr, r3
d0041418:	bfa8      	it	ge
d004141a:	469e      	movge	lr, r3
d004141c:	45f3      	cmp	fp, lr
d004141e:	dc7b      	bgt.n	d0041518 <fillTriangleFlat+0x2f0>
d0041420:	ee07 ba90 	vmov	s15, fp
d0041424:	eef6 6a00 	vmov.f32	s13, #96	; 0x3f000000  0.5
d0041428:	f10e 0e01 	add.w	lr, lr, #1
d004142c:	ed9f 9a50 	vldr	s18, [pc, #320]	; d0041570 <fillTriangleFlat+0x348>
d0041430:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0041434:	eddf 1a4f 	vldr	s3, [pc, #316]	; d0041574 <fillTriangleFlat+0x34c>
d0041438:	ed9f 2a4f 	vldr	s4, [pc, #316]	; d0041578 <fillTriangleFlat+0x350>
d004143c:	eddf 9a4f 	vldr	s19, [pc, #316]	; d004157c <fillTriangleFlat+0x354>
d0041440:	ee77 7aa6 	vadd.f32	s15, s15, s13
d0041444:	ee37 5ac5 	vsub.f32	s10, s15, s10
d0041448:	ee77 3ae3 	vsub.f32	s7, s15, s7
d004144c:	eea1 6a05 	vfma.f32	s12, s2, s10
d0041450:	eea0 8a85 	vfma.f32	s16, s1, s10
d0041454:	eea8 7a85 	vfma.f32	s14, s17, s10
d0041458:	eee3 4aae 	vfma.f32	s9, s7, s29
d004145c:	eea3 0aaf 	vfma.f32	s0, s7, s31
d0041460:	eeef 5a23 	vfma.f32	s11, s30, s7
d0041464:	e032      	b.n	d00414cc <fillTriangleFlat+0x2a4>
d0041466:	eef0 3a47 	vmov.f32	s7, s14
d004146a:	eef0 2a48 	vmov.f32	s5, s16
d004146e:	eef0 6a46 	vmov.f32	s13, s12
d0041472:	eeb0 3a65 	vmov.f32	s6, s11
d0041476:	eeb0 5a40 	vmov.f32	s10, s0
d004147a:	eeb0 4a64 	vmov.f32	s8, s9
d004147e:	fefa 7a66 	vrintp.f32	s15, s13
d0041482:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d0041486:	f240 13df 	movw	r3, #479	; 0x1df
d004148a:	ee17 6a90 	vmov	r6, s15
d004148e:	fefa 7a44 	vrintp.f32	s15, s8
d0041492:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d0041496:	3e01      	subs	r6, #1
d0041498:	ee17 4a90 	vmov	r4, s15
d004149c:	429e      	cmp	r6, r3
d004149e:	ea24 74e4 	bic.w	r4, r4, r4, asr #31
d00414a2:	bfa8      	it	ge
d00414a4:	461e      	movge	r6, r3
d00414a6:	42a6      	cmp	r6, r4
d00414a8:	f280 8158 	bge.w	d004175c <fillTriangleFlat+0x534>
d00414ac:	f10b 0b01 	add.w	fp, fp, #1
d00414b0:	ee36 6a01 	vadd.f32	s12, s12, s2
d00414b4:	ee38 8a20 	vadd.f32	s16, s16, s1
d00414b8:	45f3      	cmp	fp, lr
d00414ba:	ee37 7a28 	vadd.f32	s14, s14, s17
d00414be:	ee74 4aae 	vadd.f32	s9, s9, s29
d00414c2:	ee30 0a2f 	vadd.f32	s0, s0, s31
d00414c6:	ee75 5a8f 	vadd.f32	s11, s11, s30
d00414ca:	d025      	beq.n	d0041518 <fillTriangleFlat+0x2f0>
d00414cc:	eeb4 6ae4 	vcmpe.f32	s12, s9
d00414d0:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00414d4:	dcc7      	bgt.n	d0041466 <fillTriangleFlat+0x23e>
d00414d6:	eef0 3a65 	vmov.f32	s7, s11
d00414da:	eef0 2a40 	vmov.f32	s5, s0
d00414de:	eef0 6a64 	vmov.f32	s13, s9
d00414e2:	eeb0 3a47 	vmov.f32	s6, s14
d00414e6:	eeb0 5a48 	vmov.f32	s10, s16
d00414ea:	eeb0 4a46 	vmov.f32	s8, s12
d00414ee:	e7c6      	b.n	d004147e <fillTriangleFlat+0x256>
d00414f0:	eddd 6a03 	vldr	s13, [sp, #12]
d00414f4:	eddd 4a04 	vldr	s9, [sp, #16]
d00414f8:	ed9d 7a05 	vldr	s14, [sp, #20]
d00414fc:	ed9d 8a06 	vldr	s16, [sp, #24]
d0041500:	ed9d 5a07 	vldr	s10, [sp, #28]
d0041504:	eddf 7a1a 	vldr	s15, [pc, #104]	; d0041570 <fillTriangleFlat+0x348>
d0041508:	ed9d 4a01 	vldr	s8, [sp, #4]
d004150c:	eeb4 4ae7 	vcmpe.f32	s8, s15
d0041510:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0041514:	f73f af74 	bgt.w	d0041400 <fillTriangleFlat+0x1d8>
d0041518:	b009      	add	sp, #36	; 0x24
d004151a:	ecbd 8b10 	vpop	{d8-d15}
d004151e:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0041522:	011b      	lsls	r3, r3, #4
d0041524:	b2df      	uxtb	r7, r3
d0041526:	f002 020f 	and.w	r2, r2, #15
d004152a:	3220      	adds	r2, #32
d004152c:	4417      	add	r7, r2
d004152e:	b2ff      	uxtb	r7, r7
d0041530:	e6d0      	b.n	d00412d4 <fillTriangleFlat+0xac>
d0041532:	eef4 3ae6 	vcmpe.f32	s7, s13
d0041536:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004153a:	f340 80f6 	ble.w	d004172a <fillTriangleFlat+0x502>
d004153e:	eeb0 1a43 	vmov.f32	s2, s6
d0041542:	eef0 1a42 	vmov.f32	s3, s4
d0041546:	eef0 2a66 	vmov.f32	s5, s13
d004154a:	eeb0 4a67 	vmov.f32	s8, s15
d004154e:	eeb0 3a47 	vmov.f32	s6, s14
d0041552:	eeb0 2a48 	vmov.f32	s4, s16
d0041556:	eef0 6a45 	vmov.f32	s13, s10
d004155a:	eef0 7a46 	vmov.f32	s15, s12
d004155e:	eeb0 7a41 	vmov.f32	s14, s2
d0041562:	eeb0 8a61 	vmov.f32	s16, s3
d0041566:	eeb0 5a62 	vmov.f32	s10, s5
d004156a:	eeb0 6a44 	vmov.f32	s12, s8
d004156e:	e6f2      	b.n	d0041356 <fillTriangleFlat+0x12e>
d0041570:	38d1b717 	.word	0x38d1b717
d0041574:	33d6bf95 	.word	0x33d6bf95
d0041578:	00000000 	.word	0x00000000
d004157c:	477fff00 	.word	0x477fff00
d0041580:	ee81 4aa2 	vdiv.f32	s8, s3, s5
d0041584:	ee76 aae3 	vsub.f32	s21, s13, s7
d0041588:	ee34 aac6 	vsub.f32	s20, s9, s12
d004158c:	ee70 9a48 	vsub.f32	s19, s0, s16
d0041590:	ee75 2ac7 	vsub.f32	s5, s11, s14
d0041594:	edcd aa01 	vstr	s21, [sp, #4]
d0041598:	eef4 aac9 	vcmpe.f32	s21, s18
d004159c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00415a0:	ee2a aa04 	vmul.f32	s20, s20, s8
d00415a4:	ee69 9a84 	vmul.f32	s19, s19, s8
d00415a8:	ee22 4a84 	vmul.f32	s8, s5, s8
d00415ac:	eeb0 ba4a 	vmov.f32	s22, s20
d00415b0:	eef0 da44 	vmov.f32	s27, s8
d00415b4:	f340 822e 	ble.w	d0041a14 <fillTriangleFlat+0x7ec>
d00415b8:	eec1 2aaa 	vdiv.f32	s5, s3, s21
d00415bc:	ee77 7ae4 	vsub.f32	s15, s15, s9
d00415c0:	ee32 4a40 	vsub.f32	s8, s4, s0
d00415c4:	ee33 3a65 	vsub.f32	s6, s6, s11
d00415c8:	ee67 eaa2 	vmul.f32	s29, s15, s5
d00415cc:	ee64 fa22 	vmul.f32	s31, s8, s5
d00415d0:	ee23 fa22 	vmul.f32	s30, s6, s5
d00415d4:	eefd 7ae3 	vcvt.s32.f32	s15, s7
d00415d8:	f240 133f 	movw	r3, #319	; 0x13f
d00415dc:	ee17 2a90 	vmov	r2, s15
d00415e0:	edcd 7a02 	vstr	s15, [sp, #8]
d00415e4:	eefd 7ac5 	vcvt.s32.f32	s15, s10
d00415e8:	f102 3bff 	add.w	fp, r2, #4294967295	; 0xffffffff
d00415ec:	ee17 aa90 	vmov	sl, s15
d00415f0:	459b      	cmp	fp, r3
d00415f2:	ea2a 7aea 	bic.w	sl, sl, sl, asr #31
d00415f6:	bfa8      	it	ge
d00415f8:	469b      	movge	fp, r3
d00415fa:	45d3      	cmp	fp, sl
d00415fc:	db82      	blt.n	d0041504 <fillTriangleFlat+0x2dc>
d00415fe:	eef6 7a00 	vmov.f32	s15, #96	; 0x3f000000  0.5
d0041602:	f10b 0b01 	add.w	fp, fp, #1
d0041606:	eeb0 aa46 	vmov.f32	s20, s12
d004160a:	ed1f da26 	vldr	s26, [pc, #-152]	; d0041574 <fillTriangleFlat+0x34c>
d004160e:	eef0 aa46 	vmov.f32	s21, s12
d0041612:	ed1f 3a27 	vldr	s6, [pc, #-156]	; d0041578 <fillTriangleFlat+0x350>
d0041616:	ee37 4ac5 	vsub.f32	s8, s15, s10
d004161a:	ee07 aa90 	vmov	s15, sl
d004161e:	eef0 ca48 	vmov.f32	s25, s16
d0041622:	ed1f 2a2a 	vldr	s4, [pc, #-168]	; d004157c <fillTriangleFlat+0x354>
d0041626:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d004162a:	edcd 6a03 	vstr	s13, [sp, #12]
d004162e:	eeb0 ca47 	vmov.f32	s24, s14
d0041632:	edcd 4a04 	vstr	s9, [sp, #16]
d0041636:	eeb0 9a4b 	vmov.f32	s18, s22
d004163a:	ed8d 7a05 	vstr	s14, [sp, #20]
d004163e:	ee77 7a84 	vadd.f32	s15, s15, s8
d0041642:	ed8d 8a06 	vstr	s16, [sp, #24]
d0041646:	eef0 ba48 	vmov.f32	s23, s16
d004164a:	ed8d 5a07 	vstr	s10, [sp, #28]
d004164e:	eea7 aa8b 	vfma.f32	s20, s15, s22
d0041652:	eeb0 ba47 	vmov.f32	s22, s14
d0041656:	eee1 aa27 	vfma.f32	s21, s2, s15
d004165a:	eee0 caa7 	vfma.f32	s25, s1, s15
d004165e:	eea8 caa7 	vfma.f32	s24, s17, s15
d0041662:	eee7 baa9 	vfma.f32	s23, s15, s19
d0041666:	eea7 baad 	vfma.f32	s22, s15, s27
d004166a:	e033      	b.n	d00416d4 <fillTriangleFlat+0x4ac>
d004166c:	eeb0 4a4c 	vmov.f32	s8, s24
d0041670:	eef0 4a6c 	vmov.f32	s9, s25
d0041674:	eef0 7a6a 	vmov.f32	s15, s21
d0041678:	eeb0 5a4b 	vmov.f32	s10, s22
d004167c:	eeb0 7a6b 	vmov.f32	s14, s23
d0041680:	eef0 6a4a 	vmov.f32	s13, s20
d0041684:	fefa 2a67 	vrintp.f32	s5, s15
d0041688:	eefd 2ae2 	vcvt.s32.f32	s5, s5
d004168c:	f240 13df 	movw	r3, #479	; 0x1df
d0041690:	ee12 6a90 	vmov	r6, s5
d0041694:	fefa 2a66 	vrintp.f32	s5, s13
d0041698:	eefd 2ae2 	vcvt.s32.f32	s5, s5
d004169c:	3e01      	subs	r6, #1
d004169e:	ee12 4a90 	vmov	r4, s5
d00416a2:	429e      	cmp	r6, r3
d00416a4:	ea24 74e4 	bic.w	r4, r4, r4, asr #31
d00416a8:	bfa8      	it	ge
d00416aa:	461e      	movge	r6, r3
d00416ac:	42a6      	cmp	r6, r4
d00416ae:	f280 80fd 	bge.w	d00418ac <fillTriangleFlat+0x684>
d00416b2:	f10a 0a01 	add.w	sl, sl, #1
d00416b6:	ee7a aa81 	vadd.f32	s21, s21, s2
d00416ba:	ee7c caa0 	vadd.f32	s25, s25, s1
d00416be:	45da      	cmp	sl, fp
d00416c0:	ee3c ca28 	vadd.f32	s24, s24, s17
d00416c4:	ee3a aa09 	vadd.f32	s20, s20, s18
d00416c8:	ee7b baa9 	vadd.f32	s23, s23, s19
d00416cc:	ee3b ba2d 	vadd.f32	s22, s22, s27
d00416d0:	f43f af0e 	beq.w	d00414f0 <fillTriangleFlat+0x2c8>
d00416d4:	eef4 aaca 	vcmpe.f32	s21, s20
d00416d8:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00416dc:	dcc6      	bgt.n	d004166c <fillTriangleFlat+0x444>
d00416de:	eeb0 4a4b 	vmov.f32	s8, s22
d00416e2:	eef0 4a6b 	vmov.f32	s9, s23
d00416e6:	eef0 7a4a 	vmov.f32	s15, s20
d00416ea:	eeb0 5a4c 	vmov.f32	s10, s24
d00416ee:	eeb0 7a6c 	vmov.f32	s14, s25
d00416f2:	eef0 6a6a 	vmov.f32	s13, s21
d00416f6:	e7c5      	b.n	d0041684 <fillTriangleFlat+0x45c>
d00416f8:	eeb0 1a47 	vmov.f32	s2, s14
d00416fc:	eef0 1a48 	vmov.f32	s3, s16
d0041700:	eef0 2a45 	vmov.f32	s5, s10
d0041704:	eeb0 4a46 	vmov.f32	s8, s12
d0041708:	eeb0 7a43 	vmov.f32	s14, s6
d004170c:	eeb0 8a42 	vmov.f32	s16, s4
d0041710:	eeb0 5a66 	vmov.f32	s10, s13
d0041714:	eeb0 6a67 	vmov.f32	s12, s15
d0041718:	eeb0 3a41 	vmov.f32	s6, s2
d004171c:	eeb0 2a61 	vmov.f32	s4, s3
d0041720:	eef0 6a62 	vmov.f32	s13, s5
d0041724:	eef0 7a44 	vmov.f32	s15, s8
d0041728:	e5f8      	b.n	d004131c <fillTriangleFlat+0xf4>
d004172a:	eeb0 1a47 	vmov.f32	s2, s14
d004172e:	eef0 1a48 	vmov.f32	s3, s16
d0041732:	eef0 2a45 	vmov.f32	s5, s10
d0041736:	eeb0 4a46 	vmov.f32	s8, s12
d004173a:	eeb0 7a65 	vmov.f32	s14, s11
d004173e:	eeb0 8a40 	vmov.f32	s16, s0
d0041742:	eeb0 5a63 	vmov.f32	s10, s7
d0041746:	eeb0 6a64 	vmov.f32	s12, s9
d004174a:	eef0 5a41 	vmov.f32	s11, s2
d004174e:	eeb0 0a61 	vmov.f32	s0, s3
d0041752:	eef0 3a62 	vmov.f32	s7, s5
d0041756:	eef0 4a44 	vmov.f32	s9, s8
d004175a:	e5df      	b.n	d004131c <fillTriangleFlat+0xf4>
d004175c:	ee76 6ac4 	vsub.f32	s13, s13, s8
d0041760:	eef4 6ac9 	vcmpe.f32	s13, s18
d0041764:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0041768:	f340 814f 	ble.w	d0041a0a <fillTriangleFlat+0x7e2>
d004176c:	eef7 7a00 	vmov.f32	s15, #112	; 0x3f800000  1.0
d0041770:	ee72 2ac5 	vsub.f32	s5, s5, s10
d0041774:	ee73 3ac3 	vsub.f32	s7, s7, s6
d0041778:	ee87 aaa6 	vdiv.f32	s20, s15, s13
d004177c:	eef6 7a00 	vmov.f32	s15, #96	; 0x3f000000  0.5
d0041780:	ee37 4ac4 	vsub.f32	s8, s15, s8
d0041784:	ee07 4a90 	vmov	s15, r4
d0041788:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d004178c:	ee77 7a84 	vadd.f32	s15, s15, s8
d0041790:	ee62 2a8a 	vmul.f32	s5, s5, s20
d0041794:	ee23 aa8a 	vmul.f32	s20, s7, s20
d0041798:	eea7 5aa2 	vfma.f32	s10, s15, s5
d004179c:	eea7 3a8a 	vfma.f32	s6, s15, s20
d00417a0:	ebcb 180b 	rsb	r8, fp, fp, lsl #4
d00417a4:	4ba3      	ldr	r3, [pc, #652]	; (d0041a34 <fillTriangleFlat+0x80c>)
d00417a6:	eb04 0c84 	add.w	ip, r4, r4, lsl #2
d00417aa:	4aa3      	ldr	r2, [pc, #652]	; (d0041a38 <fillTriangleFlat+0x810>)
d00417ac:	681b      	ldr	r3, [r3, #0]
d00417ae:	eb04 1848 	add.w	r8, r4, r8, lsl #5
d00417b2:	eb0b 1c8c 	add.w	ip, fp, ip, lsl #6
d00417b6:	eef6 3a00 	vmov.f32	s7, #96	; 0x3f000000  0.5
d00417ba:	eb02 0848 	add.w	r8, r2, r8, lsl #1
d00417be:	449c      	add	ip, r3
d00417c0:	e011      	b.n	d00417e6 <fillTriangleFlat+0x5be>
d00417c2:	ee07 1a90 	vmov	s15, r1
d00417c6:	eb01 0381 	add.w	r3, r1, r1, lsl #2
d00417ca:	eb08 0841 	add.w	r8, r8, r1, lsl #1
d00417ce:	440c      	add	r4, r1
d00417d0:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d00417d4:	eb0c 1c83 	add.w	ip, ip, r3, lsl #6
d00417d8:	eea7 5aa2 	vfma.f32	s10, s15, s5
d00417dc:	eea7 3a8a 	vfma.f32	s6, s15, s20
d00417e0:	42a6      	cmp	r6, r4
d00417e2:	f6ff ae63 	blt.w	d00414ac <fillTriangleFlat+0x284>
d00417e6:	eba6 0904 	sub.w	r9, r6, r4
d00417ea:	eeb4 5ae1 	vcmpe.f32	s10, s3
d00417ee:	f109 0101 	add.w	r1, r9, #1
d00417f2:	2930      	cmp	r1, #48	; 0x30
d00417f4:	bfa8      	it	ge
d00417f6:	2130      	movge	r1, #48	; 0x30
d00417f8:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00417fc:	d9e1      	bls.n	d00417c2 <fillTriangleFlat+0x59a>
d00417fe:	f1b9 0f00 	cmp.w	r9, #0
d0041802:	eec3 6a05 	vdiv.f32	s13, s6, s10
d0041806:	dd4d      	ble.n	d00418a4 <fillTriangleFlat+0x67c>
d0041808:	1e4b      	subs	r3, r1, #1
d004180a:	ee07 3a90 	vmov	s15, r3
d004180e:	eeb0 4a45 	vmov.f32	s8, s10
d0041812:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0041816:	eea7 4aa2 	vfma.f32	s8, s15, s5
d004181a:	eeb4 4ae1 	vcmpe.f32	s8, s3
d004181e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0041822:	dd40      	ble.n	d00418a6 <fillTriangleFlat+0x67e>
d0041824:	eeb0 ba43 	vmov.f32	s22, s6
d0041828:	eea7 ba8a 	vfma.f32	s22, s15, s20
d004182c:	eecb aa04 	vdiv.f32	s21, s22, s8
d0041830:	ee7a aae6 	vsub.f32	s21, s21, s13
d0041834:	ee8a 4aa7 	vdiv.f32	s8, s21, s15
d0041838:	f1a8 0002 	sub.w	r0, r8, #2
d004183c:	2300      	movs	r3, #0
d004183e:	fec6 7a82 	vmaxnm.f32	s15, s13, s4
d0041842:	fec7 7ae9 	vminnm.f32	s15, s15, s19
d0041846:	eb03 0283 	add.w	r2, r3, r3, lsl #2
d004184a:	f830 5f02 	ldrh.w	r5, [r0, #2]!
d004184e:	3301      	adds	r3, #1
d0041850:	ee77 7aa3 	vadd.f32	s15, s15, s7
d0041854:	ea4f 1a82 	mov.w	sl, r2, lsl #6
d0041858:	ee76 6a84 	vadd.f32	s13, s13, s8
d004185c:	eefc 7ae7 	vcvt.u32.f32	s15, s15
d0041860:	ee17 2a90 	vmov	r2, s15
d0041864:	b292      	uxth	r2, r2
d0041866:	4295      	cmp	r5, r2
d0041868:	d902      	bls.n	d0041870 <fillTriangleFlat+0x648>
d004186a:	8002      	strh	r2, [r0, #0]
d004186c:	f80c 700a 	strb.w	r7, [ip, sl]
d0041870:	4299      	cmp	r1, r3
d0041872:	dce4      	bgt.n	d004183e <fillTriangleFlat+0x616>
d0041874:	f1b9 0f00 	cmp.w	r9, #0
d0041878:	eb01 0381 	add.w	r3, r1, r1, lsl #2
d004187c:	ea4f 0241 	mov.w	r2, r1, lsl #1
d0041880:	ea4f 1383 	mov.w	r3, r3, lsl #6
d0041884:	bfbc      	itt	lt
d0041886:	2202      	movlt	r2, #2
d0041888:	f44f 73a0 	movlt.w	r3, #320	; 0x140
d004188c:	4490      	add	r8, r2
d004188e:	449c      	add	ip, r3
d0041890:	ee07 1a90 	vmov	s15, r1
d0041894:	440c      	add	r4, r1
d0041896:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d004189a:	eea7 5aa2 	vfma.f32	s10, s15, s5
d004189e:	eea7 3a8a 	vfma.f32	s6, s15, s20
d00418a2:	e79d      	b.n	d00417e0 <fillTriangleFlat+0x5b8>
d00418a4:	d1f4      	bne.n	d0041890 <fillTriangleFlat+0x668>
d00418a6:	eeb0 4a42 	vmov.f32	s8, s4
d00418aa:	e7c5      	b.n	d0041838 <fillTriangleFlat+0x610>
d00418ac:	ee77 7ae6 	vsub.f32	s15, s15, s13
d00418b0:	eddf 2a62 	vldr	s5, [pc, #392]	; d0041a3c <fillTriangleFlat+0x814>
d00418b4:	eef4 7ae2 	vcmpe.f32	s15, s5
d00418b8:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00418bc:	f340 80a0 	ble.w	d0041a00 <fillTriangleFlat+0x7d8>
d00418c0:	eef7 1a00 	vmov.f32	s3, #112	; 0x3f800000  1.0
d00418c4:	ee74 4ac7 	vsub.f32	s9, s9, s14
d00418c8:	ee34 4a45 	vsub.f32	s8, s8, s10
d00418cc:	eec1 2aa7 	vdiv.f32	s5, s3, s15
d00418d0:	eef6 7a00 	vmov.f32	s15, #96	; 0x3f000000  0.5
d00418d4:	ee77 6ae6 	vsub.f32	s13, s15, s13
d00418d8:	ee07 4a90 	vmov	s15, r4
d00418dc:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d00418e0:	ee77 7aa6 	vadd.f32	s15, s15, s13
d00418e4:	ee64 4aa2 	vmul.f32	s9, s9, s5
d00418e8:	ee24 4a22 	vmul.f32	s8, s8, s5
d00418ec:	eea7 7aa4 	vfma.f32	s14, s15, s9
d00418f0:	eea7 5a84 	vfma.f32	s10, s15, s8
d00418f4:	ebca 1e0a 	rsb	lr, sl, sl, lsl #4
d00418f8:	4b4e      	ldr	r3, [pc, #312]	; (d0041a34 <fillTriangleFlat+0x80c>)
d00418fa:	eb04 0c84 	add.w	ip, r4, r4, lsl #2
d00418fe:	4a4e      	ldr	r2, [pc, #312]	; (d0041a38 <fillTriangleFlat+0x810>)
d0041900:	681b      	ldr	r3, [r3, #0]
d0041902:	eb04 1e4e 	add.w	lr, r4, lr, lsl #5
d0041906:	eb0a 1c8c 	add.w	ip, sl, ip, lsl #6
d004190a:	eef6 6a00 	vmov.f32	s13, #96	; 0x3f000000  0.5
d004190e:	eb02 0e4e 	add.w	lr, r2, lr, lsl #1
d0041912:	449c      	add	ip, r3
d0041914:	e011      	b.n	d004193a <fillTriangleFlat+0x712>
d0041916:	ee07 1a90 	vmov	s15, r1
d004191a:	eb01 0381 	add.w	r3, r1, r1, lsl #2
d004191e:	eb0e 0e41 	add.w	lr, lr, r1, lsl #1
d0041922:	440c      	add	r4, r1
d0041924:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0041928:	eb0c 1c83 	add.w	ip, ip, r3, lsl #6
d004192c:	eea7 7aa4 	vfma.f32	s14, s15, s9
d0041930:	eea7 5a84 	vfma.f32	s10, s15, s8
d0041934:	42b4      	cmp	r4, r6
d0041936:	f73f aebc 	bgt.w	d00416b2 <fillTriangleFlat+0x48a>
d004193a:	eba6 0804 	sub.w	r8, r6, r4
d004193e:	eeb4 7acd 	vcmpe.f32	s14, s26
d0041942:	f108 0101 	add.w	r1, r8, #1
d0041946:	2930      	cmp	r1, #48	; 0x30
d0041948:	bfa8      	it	ge
d004194a:	2130      	movge	r1, #48	; 0x30
d004194c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0041950:	d9e1      	bls.n	d0041916 <fillTriangleFlat+0x6ee>
d0041952:	f1b8 0f00 	cmp.w	r8, #0
d0041956:	eec5 2a07 	vdiv.f32	s5, s10, s14
d004195a:	dd4d      	ble.n	d00419f8 <fillTriangleFlat+0x7d0>
d004195c:	1e4b      	subs	r3, r1, #1
d004195e:	ee07 3a90 	vmov	s15, r3
d0041962:	eef0 1a47 	vmov.f32	s3, s14
d0041966:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d004196a:	eee7 1aa4 	vfma.f32	s3, s15, s9
d004196e:	eef4 1acd 	vcmpe.f32	s3, s26
d0041972:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0041976:	dd40      	ble.n	d00419fa <fillTriangleFlat+0x7d2>
d0041978:	eeb0 ea45 	vmov.f32	s28, s10
d004197c:	eea7 ea84 	vfma.f32	s28, s15, s8
d0041980:	ee8e 8a21 	vdiv.f32	s16, s28, s3
d0041984:	ee38 8a62 	vsub.f32	s16, s16, s5
d0041988:	eec8 1a27 	vdiv.f32	s3, s16, s15
d004198c:	f1ae 0002 	sub.w	r0, lr, #2
d0041990:	2200      	movs	r2, #0
d0041992:	fec2 7a83 	vmaxnm.f32	s15, s5, s6
d0041996:	fec7 7ac2 	vminnm.f32	s15, s15, s4
d004199a:	eb02 0382 	add.w	r3, r2, r2, lsl #2
d004199e:	f830 5f02 	ldrh.w	r5, [r0, #2]!
d00419a2:	3201      	adds	r2, #1
d00419a4:	ee77 7aa6 	vadd.f32	s15, s15, s13
d00419a8:	ea4f 1983 	mov.w	r9, r3, lsl #6
d00419ac:	ee72 2aa1 	vadd.f32	s5, s5, s3
d00419b0:	eefc 7ae7 	vcvt.u32.f32	s15, s15
d00419b4:	ee17 3a90 	vmov	r3, s15
d00419b8:	b29b      	uxth	r3, r3
d00419ba:	429d      	cmp	r5, r3
d00419bc:	d902      	bls.n	d00419c4 <fillTriangleFlat+0x79c>
d00419be:	8003      	strh	r3, [r0, #0]
d00419c0:	f80c 7009 	strb.w	r7, [ip, r9]
d00419c4:	428a      	cmp	r2, r1
d00419c6:	dbe4      	blt.n	d0041992 <fillTriangleFlat+0x76a>
d00419c8:	f1b8 0f00 	cmp.w	r8, #0
d00419cc:	eb01 0381 	add.w	r3, r1, r1, lsl #2
d00419d0:	ea4f 0241 	mov.w	r2, r1, lsl #1
d00419d4:	ea4f 1383 	mov.w	r3, r3, lsl #6
d00419d8:	bfbc      	itt	lt
d00419da:	2202      	movlt	r2, #2
d00419dc:	f44f 73a0 	movlt.w	r3, #320	; 0x140
d00419e0:	4496      	add	lr, r2
d00419e2:	449c      	add	ip, r3
d00419e4:	ee07 1a90 	vmov	s15, r1
d00419e8:	440c      	add	r4, r1
d00419ea:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d00419ee:	eea7 7aa4 	vfma.f32	s14, s15, s9
d00419f2:	eea7 5a84 	vfma.f32	s10, s15, s8
d00419f6:	e79d      	b.n	d0041934 <fillTriangleFlat+0x70c>
d00419f8:	d1f4      	bne.n	d00419e4 <fillTriangleFlat+0x7bc>
d00419fa:	eef0 1a43 	vmov.f32	s3, s6
d00419fe:	e7c5      	b.n	d004198c <fillTriangleFlat+0x764>
d0041a00:	eeb0 4a43 	vmov.f32	s8, s6
d0041a04:	eef0 4a43 	vmov.f32	s9, s6
d0041a08:	e774      	b.n	d00418f4 <fillTriangleFlat+0x6cc>
d0041a0a:	eeb0 aa42 	vmov.f32	s20, s4
d0041a0e:	eef0 2a42 	vmov.f32	s5, s4
d0041a12:	e6c5      	b.n	d00417a0 <fillTriangleFlat+0x578>
d0041a14:	ed9f fa0a 	vldr	s30, [pc, #40]	; d0041a40 <fillTriangleFlat+0x818>
d0041a18:	eef0 fa4f 	vmov.f32	s31, s30
d0041a1c:	eef0 ea4f 	vmov.f32	s29, s30
d0041a20:	e5d8      	b.n	d00415d4 <fillTriangleFlat+0x3ac>
d0041a22:	eddf 7a07 	vldr	s15, [pc, #28]	; d0041a40 <fillTriangleFlat+0x818>
d0041a26:	eef0 da67 	vmov.f32	s27, s15
d0041a2a:	eef0 9a67 	vmov.f32	s19, s15
d0041a2e:	eeb0 ba67 	vmov.f32	s22, s15
d0041a32:	e5cf      	b.n	d00415d4 <fillTriangleFlat+0x3ac>
d0041a34:	d012e7a4 	.word	0xd012e7a4
d0041a38:	d00490a0 	.word	0xd00490a0
d0041a3c:	38d1b717 	.word	0x38d1b717
d0041a40:	00000000 	.word	0x00000000

d0041a44 <fillTriangleDitherBayer>:
d0041a44:	eddf 7ae7 	vldr	s15, [pc, #924]	; d0041de4 <fillTriangleDitherBayer+0x3a0>
d0041a48:	eef4 0ae7 	vcmpe.f32	s1, s15
d0041a4c:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0041a50:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0041a54:	eeb4 1ae7 	vcmpe.f32	s2, s15
d0041a58:	ed2d 8b10 	vpush	{d8-d15}
d0041a5c:	b08f      	sub	sp, #60	; 0x3c
d0041a5e:	9202      	str	r2, [sp, #8]
d0041a60:	bf94      	ite	ls
d0041a62:	2201      	movls	r2, #1
d0041a64:	2200      	movhi	r2, #0
d0041a66:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0041a6a:	9303      	str	r3, [sp, #12]
d0041a6c:	f8bd 40a8 	ldrh.w	r4, [sp, #168]	; 0xa8
d0041a70:	bf98      	it	ls
d0041a72:	f042 0201 	orrls.w	r2, r2, #1
d0041a76:	f89d 30b4 	ldrb.w	r3, [sp, #180]	; 0xb4
d0041a7a:	e9cd 0100 	strd	r0, r1, [sp]
d0041a7e:	f8bd 00ac 	ldrh.w	r0, [sp, #172]	; 0xac
d0041a82:	f8bd 10b0 	ldrh.w	r1, [sp, #176]	; 0xb0
d0041a86:	2a00      	cmp	r2, #0
d0041a88:	f040 8187 	bne.w	d0041d9a <fillTriangleDitherBayer+0x356>
d0041a8c:	eeb4 0a67 	vcmp.f32	s0, s15
d0041a90:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0041a94:	f240 8181 	bls.w	d0041d9a <fillTriangleDitherBayer+0x356>
d0041a98:	eef7 6a00 	vmov.f32	s13, #112	; 0x3f800000  1.0
d0041a9c:	eddf 7ad3 	vldr	s15, [pc, #844]	; d0041dec <fillTriangleDitherBayer+0x3a8>
d0041aa0:	eeb1 6a04 	vmov.f32	s12, #20	; 0x40a00000  5.0
d0041aa4:	ee07 4a10 	vmov	s14, r4
d0041aa8:	fec1 7aa7 	vmaxnm.f32	s15, s3, s15
d0041aac:	ee86 3a81 	vdiv.f32	s6, s13, s2
d0041ab0:	fec7 7ac6 	vminnm.f32	s15, s15, s12
d0041ab4:	eec6 1a80 	vdiv.f32	s3, s13, s0
d0041ab8:	ee86 0aa0 	vdiv.f32	s0, s13, s1
d0041abc:	eefd 6ae7 	vcvt.s32.f32	s13, s15
d0041ac0:	eeb8 7a47 	vcvt.f32.u32	s14, s14
d0041ac4:	ee16 2a90 	vmov	r2, s13
d0041ac8:	ee06 0a90 	vmov	s13, r0
d0041acc:	eef8 5a66 	vcvt.f32.u32	s11, s13
d0041ad0:	ee06 1a90 	vmov	s13, r1
d0041ad4:	1c51      	adds	r1, r2, #1
d0041ad6:	ee27 7a21 	vmul.f32	s14, s14, s3
d0041ada:	eef8 6a66 	vcvt.f32.u32	s13, s13
d0041ade:	2905      	cmp	r1, #5
d0041ae0:	bfa8      	it	ge
d0041ae2:	2105      	movge	r1, #5
d0041ae4:	2a04      	cmp	r2, #4
d0041ae6:	ee65 5a80 	vmul.f32	s11, s11, s0
d0041aea:	ee26 2a83 	vmul.f32	s4, s13, s6
d0041aee:	f300 8457 	bgt.w	d00423a0 <fillTriangleDitherBayer+0x95c>
d0041af2:	f003 030f 	and.w	r3, r3, #15
d0041af6:	2a03      	cmp	r2, #3
d0041af8:	f103 0320 	add.w	r3, r3, #32
d0041afc:	eb03 1002 	add.w	r0, r3, r2, lsl #4
d0041b00:	fa5f fa80 	uxtb.w	sl, r0
d0041b04:	f300 844e 	bgt.w	d00423a4 <fillTriangleDitherBayer+0x960>
d0041b08:	eb03 1301 	add.w	r3, r3, r1, lsl #4
d0041b0c:	b2db      	uxtb	r3, r3
d0041b0e:	9304      	str	r3, [sp, #16]
d0041b10:	eddd 6a01 	vldr	s13, [sp, #4]
d0041b14:	eeb8 5ae6 	vcvt.f32.s32	s10, s13
d0041b18:	eddd 6a03 	vldr	s13, [sp, #12]
d0041b1c:	eef8 3ae6 	vcvt.f32.s32	s7, s13
d0041b20:	eddd 6a00 	vldr	s13, [sp]
d0041b24:	eeb8 6ae6 	vcvt.f32.s32	s12, s13
d0041b28:	eddd 6a02 	vldr	s13, [sp, #8]
d0041b2c:	eeb4 5ae3 	vcmpe.f32	s10, s7
d0041b30:	eef8 4ae6 	vcvt.f32.s32	s9, s13
d0041b34:	eddd 6a28 	vldr	s13, [sp, #160]	; 0xa0
d0041b38:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0041b3c:	eeb8 1ae6 	vcvt.f32.s32	s2, s13
d0041b40:	eddd 6a29 	vldr	s13, [sp, #164]	; 0xa4
d0041b44:	eef8 6ae6 	vcvt.f32.s32	s13, s13
d0041b48:	f300 812c 	bgt.w	d0041da4 <fillTriangleDitherBayer+0x360>
d0041b4c:	eeb4 5ae6 	vcmpe.f32	s10, s13
d0041b50:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0041b54:	f300 8231 	bgt.w	d0041fba <fillTriangleDitherBayer+0x576>
d0041b58:	eef4 3ae6 	vcmpe.f32	s7, s13
d0041b5c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0041b60:	dd17      	ble.n	d0041b92 <fillTriangleDitherBayer+0x14e>
d0041b62:	eeb0 8a65 	vmov.f32	s16, s11
d0041b66:	eef0 0a40 	vmov.f32	s1, s0
d0041b6a:	eef0 2a63 	vmov.f32	s5, s7
d0041b6e:	eeb0 4a64 	vmov.f32	s8, s9
d0041b72:	eef0 5a42 	vmov.f32	s11, s4
d0041b76:	eeb0 0a43 	vmov.f32	s0, s6
d0041b7a:	eef0 3a66 	vmov.f32	s7, s13
d0041b7e:	eef0 4a41 	vmov.f32	s9, s2
d0041b82:	eeb0 2a48 	vmov.f32	s4, s16
d0041b86:	eeb0 3a60 	vmov.f32	s6, s1
d0041b8a:	eef0 6a62 	vmov.f32	s13, s5
d0041b8e:	eeb0 1a44 	vmov.f32	s2, s8
d0041b92:	eeb6 4a00 	vmov.f32	s8, #96	; 0x3f000000  0.5
d0041b96:	ee75 2a04 	vadd.f32	s5, s10, s8
d0041b9a:	ee36 4a84 	vadd.f32	s8, s13, s8
d0041b9e:	eefd 2ae2 	vcvt.s32.f32	s5, s5
d0041ba2:	eebd 4ac4 	vcvt.s32.f32	s8, s8
d0041ba6:	ee12 3a90 	vmov	r3, s5
d0041baa:	ee14 1a10 	vmov	r1, s8
d0041bae:	428b      	cmp	r3, r1
d0041bb0:	f000 80f3 	beq.w	d0041d9a <fillTriangleDitherBayer+0x356>
d0041bb4:	ee76 8ac5 	vsub.f32	s17, s13, s10
d0041bb8:	eddf 2a8a 	vldr	s5, [pc, #552]	; d0041de4 <fillTriangleDitherBayer+0x3a0>
d0041bbc:	eef4 8ae2 	vcmpe.f32	s17, s5
d0041bc0:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0041bc4:	f240 80e9 	bls.w	d0041d9a <fillTriangleDitherBayer+0x356>
d0041bc8:	eef7 9a00 	vmov.f32	s19, #112	; 0x3f800000  1.0
d0041bcc:	ee33 9ac5 	vsub.f32	s18, s7, s10
d0041bd0:	ee71 0a46 	vsub.f32	s1, s2, s12
d0041bd4:	ee89 4aa8 	vdiv.f32	s8, s19, s17
d0041bd8:	eeb4 9ae2 	vcmpe.f32	s18, s5
d0041bdc:	ee33 8a61 	vsub.f32	s16, s6, s3
d0041be0:	ee72 8a47 	vsub.f32	s17, s4, s14
d0041be4:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0041be8:	ee60 0a84 	vmul.f32	s1, s1, s8
d0041bec:	ee28 8a04 	vmul.f32	s16, s16, s8
d0041bf0:	ee68 8a84 	vmul.f32	s17, s17, s8
d0041bf4:	f300 80fe 	bgt.w	d0041df4 <fillTriangleDitherBayer+0x3b0>
d0041bf8:	ee04 2a10 	vmov	s8, r2
d0041bfc:	ee76 fae3 	vsub.f32	s31, s13, s7
d0041c00:	eeb8 4ac4 	vcvt.f32.s32	s8, s8
d0041c04:	eef4 fae2 	vcmpe.f32	s31, s5
d0041c08:	ee77 7ac4 	vsub.f32	s15, s15, s8
d0041c0c:	eeb0 4a67 	vmov.f32	s8, s15
d0041c10:	eebe 4ace 	vcvt.s32.f32	s8, s8, #4
d0041c14:	ee14 3a10 	vmov	r3, s8
d0041c18:	f383 0204 	usat	r2, #4, r3
d0041c1c:	9201      	str	r2, [sp, #4]
d0041c1e:	9a04      	ldr	r2, [sp, #16]
d0041c20:	4592      	cmp	sl, r2
d0041c22:	bf18      	it	ne
d0041c24:	2b00      	cmpne	r3, #0
d0041c26:	bfd4      	ite	le
d0041c28:	2301      	movle	r3, #1
d0041c2a:	2300      	movgt	r3, #0
d0041c2c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0041c30:	9300      	str	r3, [sp, #0]
d0041c32:	f340 80b2 	ble.w	d0041d9a <fillTriangleDitherBayer+0x356>
d0041c36:	ed9f ea6d 	vldr	s28, [pc, #436]	; d0041dec <fillTriangleDitherBayer+0x3a8>
d0041c3a:	eef0 9a4e 	vmov.f32	s19, s28
d0041c3e:	eeb0 ba4e 	vmov.f32	s22, s28
d0041c42:	eef7 2a00 	vmov.f32	s5, #112	; 0x3f800000  1.0
d0041c46:	ed9f 4a67 	vldr	s8, [pc, #412]	; d0041de4 <fillTriangleDitherBayer+0x3a0>
d0041c4a:	ee31 1a64 	vsub.f32	s2, s2, s9
d0041c4e:	ee33 3a40 	vsub.f32	s6, s6, s0
d0041c52:	eec2 7aaf 	vdiv.f32	s15, s5, s31
d0041c56:	eeb4 9ac4 	vcmpe.f32	s18, s8
d0041c5a:	ee32 2a65 	vsub.f32	s4, s4, s11
d0041c5e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0041c62:	ee61 2a27 	vmul.f32	s5, s2, s15
d0041c66:	ee23 3a27 	vmul.f32	s6, s6, s15
d0041c6a:	ee22 fa27 	vmul.f32	s30, s4, s15
d0041c6e:	edcd 2a09 	vstr	s5, [sp, #36]	; 0x24
d0041c72:	ed8d 3a08 	vstr	s6, [sp, #32]
d0041c76:	f300 80f4 	bgt.w	d0041e62 <fillTriangleDitherBayer+0x41e>
d0041c7a:	eefd 7ae3 	vcvt.s32.f32	s15, s7
d0041c7e:	edcd 7a06 	vstr	s15, [sp, #24]
d0041c82:	eefd 7ae6 	vcvt.s32.f32	s15, s13
d0041c86:	f240 123f 	movw	r2, #319	; 0x13f
d0041c8a:	9906      	ldr	r1, [sp, #24]
d0041c8c:	ee17 3a90 	vmov	r3, s15
d0041c90:	ea21 7be1 	bic.w	fp, r1, r1, asr #31
d0041c94:	3b01      	subs	r3, #1
d0041c96:	4293      	cmp	r3, r2
d0041c98:	bfa8      	it	ge
d0041c9a:	4613      	movge	r3, r2
d0041c9c:	459b      	cmp	fp, r3
d0041c9e:	dc7c      	bgt.n	d0041d9a <fillTriangleDitherBayer+0x356>
d0041ca0:	ee07 ba90 	vmov	s15, fp
d0041ca4:	eef6 6a00 	vmov.f32	s13, #96	; 0x3f000000  0.5
d0041ca8:	3301      	adds	r3, #1
d0041caa:	eddd aa09 	vldr	s21, [sp, #36]	; 0x24
d0041cae:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0041cb2:	ed9d aa08 	vldr	s20, [sp, #32]
d0041cb6:	ed9f 1a4b 	vldr	s2, [pc, #300]	; d0041de4 <fillTriangleDitherBayer+0x3a0>
d0041cba:	ed9f 2a4b 	vldr	s4, [pc, #300]	; d0041de8 <fillTriangleDitherBayer+0x3a4>
d0041cbe:	ee77 7aa6 	vadd.f32	s15, s15, s13
d0041cc2:	ed9f 3a4a 	vldr	s6, [pc, #296]	; d0041dec <fillTriangleDitherBayer+0x3a8>
d0041cc6:	9302      	str	r3, [sp, #8]
d0041cc8:	ee37 5ac5 	vsub.f32	s10, s15, s10
d0041ccc:	ee77 7ae3 	vsub.f32	s15, s15, s7
d0041cd0:	eddf 3a47 	vldr	s7, [pc, #284]	; d0041df0 <fillTriangleDitherBayer+0x3ac>
d0041cd4:	eea0 6a85 	vfma.f32	s12, s1, s10
d0041cd8:	eee8 1a05 	vfma.f32	s3, s16, s10
d0041cdc:	eea8 7a85 	vfma.f32	s14, s17, s10
d0041ce0:	eeea 4aa7 	vfma.f32	s9, s21, s15
d0041ce4:	eeaa 0a27 	vfma.f32	s0, s20, s15
d0041ce8:	eeef 5a27 	vfma.f32	s11, s30, s15
d0041cec:	e033      	b.n	d0041d56 <fillTriangleDitherBayer+0x312>
d0041cee:	eef0 2a47 	vmov.f32	s5, s14
d0041cf2:	eef0 9a61 	vmov.f32	s19, s3
d0041cf6:	eef0 6a46 	vmov.f32	s13, s12
d0041cfa:	eeb0 9a65 	vmov.f32	s18, s11
d0041cfe:	eeb0 5a40 	vmov.f32	s10, s0
d0041d02:	eeb0 4a64 	vmov.f32	s8, s9
d0041d06:	fefa 7a66 	vrintp.f32	s15, s13
d0041d0a:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d0041d0e:	f240 13df 	movw	r3, #479	; 0x1df
d0041d12:	ee17 6a90 	vmov	r6, s15
d0041d16:	fefa 7a44 	vrintp.f32	s15, s8
d0041d1a:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d0041d1e:	3e01      	subs	r6, #1
d0041d20:	ee17 0a90 	vmov	r0, s15
d0041d24:	429e      	cmp	r6, r3
d0041d26:	ea20 70e0 	bic.w	r0, r0, r0, asr #31
d0041d2a:	bfa8      	it	ge
d0041d2c:	461e      	movge	r6, r3
d0041d2e:	4286      	cmp	r6, r0
d0041d30:	f280 815c 	bge.w	d0041fec <fillTriangleDitherBayer+0x5a8>
d0041d34:	f10b 0b01 	add.w	fp, fp, #1
d0041d38:	9b02      	ldr	r3, [sp, #8]
d0041d3a:	ee36 6a20 	vadd.f32	s12, s12, s1
d0041d3e:	459b      	cmp	fp, r3
d0041d40:	ee71 1a88 	vadd.f32	s3, s3, s16
d0041d44:	ee37 7a28 	vadd.f32	s14, s14, s17
d0041d48:	ee74 4aaa 	vadd.f32	s9, s9, s21
d0041d4c:	ee30 0a0a 	vadd.f32	s0, s0, s20
d0041d50:	ee75 5a8f 	vadd.f32	s11, s11, s30
d0041d54:	d021      	beq.n	d0041d9a <fillTriangleDitherBayer+0x356>
d0041d56:	eeb4 6ae4 	vcmpe.f32	s12, s9
d0041d5a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0041d5e:	dcc6      	bgt.n	d0041cee <fillTriangleDitherBayer+0x2aa>
d0041d60:	eef0 2a65 	vmov.f32	s5, s11
d0041d64:	eef0 9a40 	vmov.f32	s19, s0
d0041d68:	eef0 6a64 	vmov.f32	s13, s9
d0041d6c:	eeb0 9a47 	vmov.f32	s18, s14
d0041d70:	eeb0 5a61 	vmov.f32	s10, s3
d0041d74:	eeb0 4a46 	vmov.f32	s8, s12
d0041d78:	e7c5      	b.n	d0041d06 <fillTriangleDitherBayer+0x2c2>
d0041d7a:	eddd 6a0a 	vldr	s13, [sp, #40]	; 0x28
d0041d7e:	ed9d 5a0b 	vldr	s10, [sp, #44]	; 0x2c
d0041d82:	ed9d 6a0c 	vldr	s12, [sp, #48]	; 0x30
d0041d86:	ed9d fa0d 	vldr	s30, [sp, #52]	; 0x34
d0041d8a:	eddf 7a16 	vldr	s15, [pc, #88]	; d0041de4 <fillTriangleDitherBayer+0x3a0>
d0041d8e:	eef4 fae7 	vcmpe.f32	s31, s15
d0041d92:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0041d96:	f73f af74 	bgt.w	d0041c82 <fillTriangleDitherBayer+0x23e>
d0041d9a:	b00f      	add	sp, #60	; 0x3c
d0041d9c:	ecbd 8b10 	vpop	{d8-d15}
d0041da0:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0041da4:	eef4 3ae6 	vcmpe.f32	s7, s13
d0041da8:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0041dac:	f340 80ec 	ble.w	d0041f88 <fillTriangleDitherBayer+0x544>
d0041db0:	eeb0 8a42 	vmov.f32	s16, s4
d0041db4:	eef0 0a43 	vmov.f32	s1, s6
d0041db8:	eef0 2a66 	vmov.f32	s5, s13
d0041dbc:	eeb0 4a41 	vmov.f32	s8, s2
d0041dc0:	eeb0 2a47 	vmov.f32	s4, s14
d0041dc4:	eeb0 3a61 	vmov.f32	s6, s3
d0041dc8:	eef0 6a45 	vmov.f32	s13, s10
d0041dcc:	eeb0 1a46 	vmov.f32	s2, s12
d0041dd0:	eeb0 7a48 	vmov.f32	s14, s16
d0041dd4:	eef0 1a60 	vmov.f32	s3, s1
d0041dd8:	eeb0 5a62 	vmov.f32	s10, s5
d0041ddc:	eeb0 6a44 	vmov.f32	s12, s8
d0041de0:	e6d7      	b.n	d0041b92 <fillTriangleDitherBayer+0x14e>
d0041de2:	bf00      	nop
d0041de4:	38d1b717 	.word	0x38d1b717
d0041de8:	33d6bf95 	.word	0x33d6bf95
d0041dec:	00000000 	.word	0x00000000
d0041df0:	477fff00 	.word	0x477fff00
d0041df4:	ee04 2a10 	vmov	s8, r2
d0041df8:	ee89 aa89 	vdiv.f32	s20, s19, s18
d0041dfc:	eeb8 4ac4 	vcvt.f32.s32	s8, s8
d0041e00:	ee74 aac6 	vsub.f32	s21, s9, s12
d0041e04:	ee76 fae3 	vsub.f32	s31, s13, s7
d0041e08:	ee77 7ac4 	vsub.f32	s15, s15, s8
d0041e0c:	ee70 9a61 	vsub.f32	s19, s0, s3
d0041e10:	eef4 fae2 	vcmpe.f32	s31, s5
d0041e14:	eeb0 4a67 	vmov.f32	s8, s15
d0041e18:	ee35 eac7 	vsub.f32	s28, s11, s14
d0041e1c:	eebe 4ace 	vcvt.s32.f32	s8, s8, #4
d0041e20:	ee6a 7a8a 	vmul.f32	s15, s21, s20
d0041e24:	ee14 3a10 	vmov	r3, s8
d0041e28:	ee2e ea0a 	vmul.f32	s28, s28, s20
d0041e2c:	f383 0204 	usat	r2, #4, r3
d0041e30:	eeb0 ba67 	vmov.f32	s22, s15
d0041e34:	ee69 7a8a 	vmul.f32	s15, s19, s20
d0041e38:	9201      	str	r2, [sp, #4]
d0041e3a:	9a04      	ldr	r2, [sp, #16]
d0041e3c:	eef0 9a67 	vmov.f32	s19, s15
d0041e40:	4592      	cmp	sl, r2
d0041e42:	bf18      	it	ne
d0041e44:	2b00      	cmpne	r3, #0
d0041e46:	bfd4      	ite	le
d0041e48:	2301      	movle	r3, #1
d0041e4a:	2300      	movgt	r3, #0
d0041e4c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0041e50:	9300      	str	r3, [sp, #0]
d0041e52:	f73f aef6 	bgt.w	d0041c42 <fillTriangleDitherBayer+0x1fe>
d0041e56:	ed1f fa1b 	vldr	s30, [pc, #-108]	; d0041dec <fillTriangleDitherBayer+0x3a8>
d0041e5a:	ed8d fa08 	vstr	s30, [sp, #32]
d0041e5e:	ed8d fa09 	vstr	s30, [sp, #36]	; 0x24
d0041e62:	eefd 7ae3 	vcvt.s32.f32	s15, s7
d0041e66:	f240 123f 	movw	r2, #319	; 0x13f
d0041e6a:	ee17 3a90 	vmov	r3, s15
d0041e6e:	edcd 7a06 	vstr	s15, [sp, #24]
d0041e72:	eefd 7ac5 	vcvt.s32.f32	s15, s10
d0041e76:	3b01      	subs	r3, #1
d0041e78:	ee17 ba90 	vmov	fp, s15
d0041e7c:	4293      	cmp	r3, r2
d0041e7e:	ea2b 7beb 	bic.w	fp, fp, fp, asr #31
d0041e82:	bfa8      	it	ge
d0041e84:	4613      	movge	r3, r2
d0041e86:	455b      	cmp	r3, fp
d0041e88:	f6ff af7f 	blt.w	d0041d8a <fillTriangleDitherBayer+0x346>
d0041e8c:	eef6 7a00 	vmov.f32	s15, #96	; 0x3f000000  0.5
d0041e90:	3301      	adds	r3, #1
d0041e92:	eeb0 aa46 	vmov.f32	s20, s12
d0041e96:	ed1f da2c 	vldr	s26, [pc, #-176]	; d0041de8 <fillTriangleDitherBayer+0x3a4>
d0041e9a:	eef0 aa46 	vmov.f32	s21, s12
d0041e9e:	ed1f 3a2d 	vldr	s6, [pc, #-180]	; d0041dec <fillTriangleDitherBayer+0x3a8>
d0041ea2:	ee37 4ac5 	vsub.f32	s8, s15, s10
d0041ea6:	ee07 ba90 	vmov	s15, fp
d0041eaa:	eef0 ca61 	vmov.f32	s25, s3
d0041eae:	ed1f 2a30 	vldr	s4, [pc, #-192]	; d0041df0 <fillTriangleDitherBayer+0x3ac>
d0041eb2:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0041eb6:	9302      	str	r3, [sp, #8]
d0041eb8:	eeb0 ca47 	vmov.f32	s24, s14
d0041ebc:	edcd 6a0a 	vstr	s13, [sp, #40]	; 0x28
d0041ec0:	eef0 da4b 	vmov.f32	s27, s22
d0041ec4:	ed8d 5a0b 	vstr	s10, [sp, #44]	; 0x2c
d0041ec8:	ee77 7a84 	vadd.f32	s15, s15, s8
d0041ecc:	ed8d 6a0c 	vstr	s12, [sp, #48]	; 0x30
d0041ed0:	eef0 ba61 	vmov.f32	s23, s3
d0041ed4:	ed8d fa0d 	vstr	s30, [sp, #52]	; 0x34
d0041ed8:	eef0 ea69 	vmov.f32	s29, s19
d0041edc:	eea7 aa8b 	vfma.f32	s20, s15, s22
d0041ee0:	eeb0 ba47 	vmov.f32	s22, s14
d0041ee4:	eee0 aaa7 	vfma.f32	s21, s1, s15
d0041ee8:	eee8 ca27 	vfma.f32	s25, s16, s15
d0041eec:	eea8 caa7 	vfma.f32	s24, s17, s15
d0041ef0:	eee7 baa9 	vfma.f32	s23, s15, s19
d0041ef4:	eea7 ba8e 	vfma.f32	s22, s15, s28
d0041ef8:	e034      	b.n	d0041f64 <fillTriangleDitherBayer+0x520>
d0041efa:	eef0 2a4c 	vmov.f32	s5, s24
d0041efe:	eeb0 4a6c 	vmov.f32	s8, s25
d0041f02:	eef0 7a6a 	vmov.f32	s15, s21
d0041f06:	eeb0 5a4b 	vmov.f32	s10, s22
d0041f0a:	eef0 6a6b 	vmov.f32	s13, s23
d0041f0e:	eeb0 6a4a 	vmov.f32	s12, s20
d0041f12:	feba 1a67 	vrintp.f32	s2, s15
d0041f16:	eebd 1ac1 	vcvt.s32.f32	s2, s2
d0041f1a:	feba 9a46 	vrintp.f32	s18, s12
d0041f1e:	f240 13df 	movw	r3, #479	; 0x1df
d0041f22:	ee11 6a10 	vmov	r6, s2
d0041f26:	eebd 1ac9 	vcvt.s32.f32	s2, s18
d0041f2a:	3e01      	subs	r6, #1
d0041f2c:	ee11 0a10 	vmov	r0, s2
d0041f30:	429e      	cmp	r6, r3
d0041f32:	ea20 70e0 	bic.w	r0, r0, r0, asr #31
d0041f36:	bfa8      	it	ge
d0041f38:	461e      	movge	r6, r3
d0041f3a:	4286      	cmp	r6, r0
d0041f3c:	f280 813e 	bge.w	d00421bc <fillTriangleDitherBayer+0x778>
d0041f40:	f10b 0b01 	add.w	fp, fp, #1
d0041f44:	9b02      	ldr	r3, [sp, #8]
d0041f46:	ee7a aaa0 	vadd.f32	s21, s21, s1
d0041f4a:	459b      	cmp	fp, r3
d0041f4c:	ee7c ca88 	vadd.f32	s25, s25, s16
d0041f50:	ee3c ca28 	vadd.f32	s24, s24, s17
d0041f54:	ee3a aa2d 	vadd.f32	s20, s20, s27
d0041f58:	ee7b baae 	vadd.f32	s23, s23, s29
d0041f5c:	ee3b ba0e 	vadd.f32	s22, s22, s28
d0041f60:	f43f af0b 	beq.w	d0041d7a <fillTriangleDitherBayer+0x336>
d0041f64:	eef4 aaca 	vcmpe.f32	s21, s20
d0041f68:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0041f6c:	dcc5      	bgt.n	d0041efa <fillTriangleDitherBayer+0x4b6>
d0041f6e:	eef0 2a4b 	vmov.f32	s5, s22
d0041f72:	eeb0 4a6b 	vmov.f32	s8, s23
d0041f76:	eef0 7a4a 	vmov.f32	s15, s20
d0041f7a:	eeb0 5a4c 	vmov.f32	s10, s24
d0041f7e:	eef0 6a6c 	vmov.f32	s13, s25
d0041f82:	eeb0 6a6a 	vmov.f32	s12, s21
d0041f86:	e7c4      	b.n	d0041f12 <fillTriangleDitherBayer+0x4ce>
d0041f88:	eeb0 8a47 	vmov.f32	s16, s14
d0041f8c:	eef0 0a61 	vmov.f32	s1, s3
d0041f90:	eef0 2a45 	vmov.f32	s5, s10
d0041f94:	eeb0 4a46 	vmov.f32	s8, s12
d0041f98:	eeb0 7a65 	vmov.f32	s14, s11
d0041f9c:	eef0 1a40 	vmov.f32	s3, s0
d0041fa0:	eeb0 5a63 	vmov.f32	s10, s7
d0041fa4:	eeb0 6a64 	vmov.f32	s12, s9
d0041fa8:	eef0 5a48 	vmov.f32	s11, s16
d0041fac:	eeb0 0a60 	vmov.f32	s0, s1
d0041fb0:	eef0 3a62 	vmov.f32	s7, s5
d0041fb4:	eef0 4a44 	vmov.f32	s9, s8
d0041fb8:	e5ce      	b.n	d0041b58 <fillTriangleDitherBayer+0x114>
d0041fba:	eeb0 8a47 	vmov.f32	s16, s14
d0041fbe:	eef0 0a61 	vmov.f32	s1, s3
d0041fc2:	eef0 2a45 	vmov.f32	s5, s10
d0041fc6:	eeb0 4a46 	vmov.f32	s8, s12
d0041fca:	eeb0 7a42 	vmov.f32	s14, s4
d0041fce:	eef0 1a43 	vmov.f32	s3, s6
d0041fd2:	eeb0 5a66 	vmov.f32	s10, s13
d0041fd6:	eeb0 6a41 	vmov.f32	s12, s2
d0041fda:	eeb0 2a48 	vmov.f32	s4, s16
d0041fde:	eeb0 3a60 	vmov.f32	s6, s1
d0041fe2:	eef0 6a62 	vmov.f32	s13, s5
d0041fe6:	eeb0 1a44 	vmov.f32	s2, s8
d0041fea:	e5b5      	b.n	d0041b58 <fillTriangleDitherBayer+0x114>
d0041fec:	ee76 6ac4 	vsub.f32	s13, s13, s8
d0041ff0:	eef4 6ac1 	vcmpe.f32	s13, s2
d0041ff4:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0041ff8:	f340 81d8 	ble.w	d00423ac <fillTriangleDitherBayer+0x968>
d0041ffc:	eef7 7a00 	vmov.f32	s15, #112	; 0x3f800000  1.0
d0042000:	ee79 9ac5 	vsub.f32	s19, s19, s10
d0042004:	ee72 2ac9 	vsub.f32	s5, s5, s18
d0042008:	ee87 baa6 	vdiv.f32	s22, s15, s13
d004200c:	eef6 7a00 	vmov.f32	s15, #96	; 0x3f000000  0.5
d0042010:	ee37 4ac4 	vsub.f32	s8, s15, s8
d0042014:	ee07 0a90 	vmov	s15, r0
d0042018:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d004201c:	ee77 7a84 	vadd.f32	s15, s15, s8
d0042020:	ee69 9a8b 	vmul.f32	s19, s19, s22
d0042024:	ee22 ba8b 	vmul.f32	s22, s5, s22
d0042028:	eea7 5aa9 	vfma.f32	s10, s15, s19
d004202c:	eea7 9a8b 	vfma.f32	s18, s15, s22
d0042030:	ebcb 190b 	rsb	r9, fp, fp, lsl #4
d0042034:	49d6      	ldr	r1, [pc, #856]	; (d0042390 <fillTriangleDitherBayer+0x94c>)
d0042036:	eb00 0380 	add.w	r3, r0, r0, lsl #2
d004203a:	4cd6      	ldr	r4, [pc, #856]	; (d0042394 <fillTriangleDitherBayer+0x950>)
d004203c:	eb00 1249 	add.w	r2, r0, r9, lsl #5
d0042040:	6809      	ldr	r1, [r1, #0]
d0042042:	eb0b 1383 	add.w	r3, fp, r3, lsl #6
d0042046:	f8cd b018 	str.w	fp, [sp, #24]
d004204a:	eb04 0942 	add.w	r9, r4, r2, lsl #1
d004204e:	f00b 0203 	and.w	r2, fp, #3
d0042052:	eb01 0c03 	add.w	ip, r1, r3
d0042056:	eef6 2a00 	vmov.f32	s5, #96	; 0x3f000000  0.5
d004205a:	4613      	mov	r3, r2
d004205c:	4ace      	ldr	r2, [pc, #824]	; (d0042398 <fillTriangleDitherBayer+0x954>)
d004205e:	eb02 0383 	add.w	r3, r2, r3, lsl #2
d0042062:	469b      	mov	fp, r3
d0042064:	e010      	b.n	d0042088 <fillTriangleDitherBayer+0x644>
d0042066:	ee07 3a90 	vmov	s15, r3
d004206a:	4418      	add	r0, r3
d004206c:	eb03 0283 	add.w	r2, r3, r3, lsl #2
d0042070:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0042074:	42b0      	cmp	r0, r6
d0042076:	eb09 0943 	add.w	r9, r9, r3, lsl #1
d004207a:	eb0c 1c82 	add.w	ip, ip, r2, lsl #6
d004207e:	eea7 5aa9 	vfma.f32	s10, s15, s19
d0042082:	eea7 9a8b 	vfma.f32	s18, s15, s22
d0042086:	dc72      	bgt.n	d004216e <fillTriangleDitherBayer+0x72a>
d0042088:	eba6 0800 	sub.w	r8, r6, r0
d004208c:	eeb4 5ac2 	vcmpe.f32	s10, s4
d0042090:	f108 0301 	add.w	r3, r8, #1
d0042094:	2b30      	cmp	r3, #48	; 0x30
d0042096:	bfa8      	it	ge
d0042098:	2330      	movge	r3, #48	; 0x30
d004209a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004209e:	d9e2      	bls.n	d0042066 <fillTriangleDitherBayer+0x622>
d00420a0:	f1b8 0f00 	cmp.w	r8, #0
d00420a4:	eec9 6a05 	vdiv.f32	s13, s18, s10
d00420a8:	dd64      	ble.n	d0042174 <fillTriangleDitherBayer+0x730>
d00420aa:	1e5a      	subs	r2, r3, #1
d00420ac:	ee07 2a90 	vmov	s15, r2
d00420b0:	eeb0 4a45 	vmov.f32	s8, s10
d00420b4:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d00420b8:	eea7 4aa9 	vfma.f32	s8, s15, s19
d00420bc:	eeb4 4ac2 	vcmpe.f32	s8, s4
d00420c0:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00420c4:	dd57      	ble.n	d0042176 <fillTriangleDitherBayer+0x732>
d00420c6:	eeb0 ca49 	vmov.f32	s24, s18
d00420ca:	9a00      	ldr	r2, [sp, #0]
d00420cc:	eea7 ca8b 	vfma.f32	s24, s15, s22
d00420d0:	eecc ba04 	vdiv.f32	s23, s24, s8
d00420d4:	ee7b bae6 	vsub.f32	s23, s23, s13
d00420d8:	ee8b 4aa7 	vdiv.f32	s8, s23, s15
d00420dc:	2a00      	cmp	r2, #0
d00420de:	d14f      	bne.n	d0042180 <fillTriangleDitherBayer+0x73c>
d00420e0:	f8cd 800c 	str.w	r8, [sp, #12]
d00420e4:	f1a9 0702 	sub.w	r7, r9, #2
d00420e8:	9605      	str	r6, [sp, #20]
d00420ea:	f8dd 8004 	ldr.w	r8, [sp, #4]
d00420ee:	9e04      	ldr	r6, [sp, #16]
d00420f0:	fec6 7a83 	vmaxnm.f32	s15, s13, s6
d00420f4:	fec7 7ae3 	vminnm.f32	s15, s15, s7
d00420f8:	ee77 7aa2 	vadd.f32	s15, s15, s5
d00420fc:	f837 ef02 	ldrh.w	lr, [r7, #2]!
d0042100:	1885      	adds	r5, r0, r2
d0042102:	eb02 0482 	add.w	r4, r2, r2, lsl #2
d0042106:	ee76 6a84 	vadd.f32	s13, s13, s8
d004210a:	3201      	adds	r2, #1
d004210c:	eefc 7ae7 	vcvt.u32.f32	s15, s15
d0042110:	f005 0503 	and.w	r5, r5, #3
d0042114:	01a4      	lsls	r4, r4, #6
d0042116:	ee17 1a90 	vmov	r1, s15
d004211a:	b289      	uxth	r1, r1
d004211c:	458e      	cmp	lr, r1
d004211e:	d908      	bls.n	d0042132 <fillTriangleDitherBayer+0x6ee>
d0042120:	f81b 5005 	ldrb.w	r5, [fp, r5]
d0042124:	8039      	strh	r1, [r7, #0]
d0042126:	45a8      	cmp	r8, r5
d0042128:	bfd4      	ite	le
d004212a:	4655      	movle	r5, sl
d004212c:	4635      	movgt	r5, r6
d004212e:	f80c 5004 	strb.w	r5, [ip, r4]
d0042132:	4293      	cmp	r3, r2
d0042134:	dcdc      	bgt.n	d00420f0 <fillTriangleDitherBayer+0x6ac>
d0042136:	f8dd 800c 	ldr.w	r8, [sp, #12]
d004213a:	9e05      	ldr	r6, [sp, #20]
d004213c:	f1b8 0f00 	cmp.w	r8, #0
d0042140:	eb03 0283 	add.w	r2, r3, r3, lsl #2
d0042144:	ea4f 0143 	mov.w	r1, r3, lsl #1
d0042148:	ea4f 1282 	mov.w	r2, r2, lsl #6
d004214c:	bfbc      	itt	lt
d004214e:	2102      	movlt	r1, #2
d0042150:	f44f 72a0 	movlt.w	r2, #320	; 0x140
d0042154:	4489      	add	r9, r1
d0042156:	4494      	add	ip, r2
d0042158:	ee07 3a90 	vmov	s15, r3
d004215c:	4418      	add	r0, r3
d004215e:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0042162:	42b0      	cmp	r0, r6
d0042164:	eea7 5aa9 	vfma.f32	s10, s15, s19
d0042168:	eea7 9a8b 	vfma.f32	s18, s15, s22
d004216c:	dd8c      	ble.n	d0042088 <fillTriangleDitherBayer+0x644>
d004216e:	f8dd b018 	ldr.w	fp, [sp, #24]
d0042172:	e5df      	b.n	d0041d34 <fillTriangleDitherBayer+0x2f0>
d0042174:	d1f0      	bne.n	d0042158 <fillTriangleDitherBayer+0x714>
d0042176:	9a00      	ldr	r2, [sp, #0]
d0042178:	eeb0 4a43 	vmov.f32	s8, s6
d004217c:	2a00      	cmp	r2, #0
d004217e:	d0af      	beq.n	d00420e0 <fillTriangleDitherBayer+0x69c>
d0042180:	f1a9 0502 	sub.w	r5, r9, #2
d0042184:	2200      	movs	r2, #0
d0042186:	fec6 7a83 	vmaxnm.f32	s15, s13, s6
d004218a:	fec7 7ae3 	vminnm.f32	s15, s15, s7
d004218e:	ee77 7aa2 	vadd.f32	s15, s15, s5
d0042192:	eb02 0182 	add.w	r1, r2, r2, lsl #2
d0042196:	f835 7f02 	ldrh.w	r7, [r5, #2]!
d004219a:	ee76 6a84 	vadd.f32	s13, s13, s8
d004219e:	018c      	lsls	r4, r1, #6
d00421a0:	3201      	adds	r2, #1
d00421a2:	eefc 7ae7 	vcvt.u32.f32	s15, s15
d00421a6:	ee17 1a90 	vmov	r1, s15
d00421aa:	b289      	uxth	r1, r1
d00421ac:	428f      	cmp	r7, r1
d00421ae:	d902      	bls.n	d00421b6 <fillTriangleDitherBayer+0x772>
d00421b0:	8029      	strh	r1, [r5, #0]
d00421b2:	f80c a004 	strb.w	sl, [ip, r4]
d00421b6:	4293      	cmp	r3, r2
d00421b8:	dce5      	bgt.n	d0042186 <fillTriangleDitherBayer+0x742>
d00421ba:	e7bf      	b.n	d004213c <fillTriangleDitherBayer+0x6f8>
d00421bc:	ee77 7ac6 	vsub.f32	s15, s15, s12
d00421c0:	ed9f 1a76 	vldr	s2, [pc, #472]	; d004239c <fillTriangleDitherBayer+0x958>
d00421c4:	eef4 7ac1 	vcmpe.f32	s15, s2
d00421c8:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00421cc:	f340 80f3 	ble.w	d00423b6 <fillTriangleDitherBayer+0x972>
d00421d0:	eeb7 9a00 	vmov.f32	s18, #112	; 0x3f800000  1.0
d00421d4:	ee34 4a66 	vsub.f32	s8, s8, s13
d00421d8:	ee72 2ac5 	vsub.f32	s5, s5, s10
d00421dc:	ee89 1a27 	vdiv.f32	s2, s18, s15
d00421e0:	eef6 7a00 	vmov.f32	s15, #96	; 0x3f000000  0.5
d00421e4:	ee37 6ac6 	vsub.f32	s12, s15, s12
d00421e8:	ee07 0a90 	vmov	s15, r0
d00421ec:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d00421f0:	ee77 7a86 	vadd.f32	s15, s15, s12
d00421f4:	ee24 4a01 	vmul.f32	s8, s8, s2
d00421f8:	ee62 2a81 	vmul.f32	s5, s5, s2
d00421fc:	eee7 6a84 	vfma.f32	s13, s15, s8
d0042200:	eea7 5aa2 	vfma.f32	s10, s15, s5
d0042204:	ebcb 190b 	rsb	r9, fp, fp, lsl #4
d0042208:	4961      	ldr	r1, [pc, #388]	; (d0042390 <fillTriangleDitherBayer+0x94c>)
d004220a:	eb00 0380 	add.w	r3, r0, r0, lsl #2
d004220e:	4c61      	ldr	r4, [pc, #388]	; (d0042394 <fillTriangleDitherBayer+0x950>)
d0042210:	eb00 1249 	add.w	r2, r0, r9, lsl #5
d0042214:	6809      	ldr	r1, [r1, #0]
d0042216:	eb0b 1383 	add.w	r3, fp, r3, lsl #6
d004221a:	f8cd b01c 	str.w	fp, [sp, #28]
d004221e:	eb04 0942 	add.w	r9, r4, r2, lsl #1
d0042222:	f00b 0203 	and.w	r2, fp, #3
d0042226:	eb01 0c03 	add.w	ip, r1, r3
d004222a:	eeb6 6a00 	vmov.f32	s12, #96	; 0x3f000000  0.5
d004222e:	4613      	mov	r3, r2
d0042230:	4a59      	ldr	r2, [pc, #356]	; (d0042398 <fillTriangleDitherBayer+0x954>)
d0042232:	eb02 0383 	add.w	r3, r2, r3, lsl #2
d0042236:	469b      	mov	fp, r3
d0042238:	e010      	b.n	d004225c <fillTriangleDitherBayer+0x818>
d004223a:	ee07 2a90 	vmov	s15, r2
d004223e:	4410      	add	r0, r2
d0042240:	eb02 0382 	add.w	r3, r2, r2, lsl #2
d0042244:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0042248:	42b0      	cmp	r0, r6
d004224a:	eb09 0942 	add.w	r9, r9, r2, lsl #1
d004224e:	eb0c 1c83 	add.w	ip, ip, r3, lsl #6
d0042252:	eee7 6a84 	vfma.f32	s13, s15, s8
d0042256:	eea7 5aa2 	vfma.f32	s10, s15, s5
d004225a:	dc72      	bgt.n	d0042342 <fillTriangleDitherBayer+0x8fe>
d004225c:	eba6 0800 	sub.w	r8, r6, r0
d0042260:	eef4 6acd 	vcmpe.f32	s13, s26
d0042264:	f108 0201 	add.w	r2, r8, #1
d0042268:	2a30      	cmp	r2, #48	; 0x30
d004226a:	bfa8      	it	ge
d004226c:	2230      	movge	r2, #48	; 0x30
d004226e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0042272:	d9e2      	bls.n	d004223a <fillTriangleDitherBayer+0x7f6>
d0042274:	f1b8 0f00 	cmp.w	r8, #0
d0042278:	ee85 1a26 	vdiv.f32	s2, s10, s13
d004227c:	dd64      	ble.n	d0042348 <fillTriangleDitherBayer+0x904>
d004227e:	1e53      	subs	r3, r2, #1
d0042280:	ee07 3a90 	vmov	s15, r3
d0042284:	eeb0 9a66 	vmov.f32	s18, s13
d0042288:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d004228c:	eea7 9a84 	vfma.f32	s18, s15, s8
d0042290:	eeb4 9acd 	vcmpe.f32	s18, s26
d0042294:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0042298:	dd57      	ble.n	d004234a <fillTriangleDitherBayer+0x906>
d004229a:	eeb0 fa45 	vmov.f32	s30, s10
d004229e:	9900      	ldr	r1, [sp, #0]
d00422a0:	eea7 faa2 	vfma.f32	s30, s15, s5
d00422a4:	eecf 9a09 	vdiv.f32	s19, s30, s18
d00422a8:	ee79 9ac1 	vsub.f32	s19, s19, s2
d00422ac:	ee89 9aa7 	vdiv.f32	s18, s19, s15
d00422b0:	2900      	cmp	r1, #0
d00422b2:	d14f      	bne.n	d0042354 <fillTriangleDitherBayer+0x910>
d00422b4:	9603      	str	r6, [sp, #12]
d00422b6:	f1a9 0702 	sub.w	r7, r9, #2
d00422ba:	f8cd 8014 	str.w	r8, [sp, #20]
d00422be:	9e04      	ldr	r6, [sp, #16]
d00422c0:	f8dd 8004 	ldr.w	r8, [sp, #4]
d00422c4:	fec1 7a03 	vmaxnm.f32	s15, s2, s6
d00422c8:	fec7 7ac2 	vminnm.f32	s15, s15, s4
d00422cc:	ee77 7a86 	vadd.f32	s15, s15, s12
d00422d0:	f837 ef02 	ldrh.w	lr, [r7, #2]!
d00422d4:	1845      	adds	r5, r0, r1
d00422d6:	eb01 0481 	add.w	r4, r1, r1, lsl #2
d00422da:	ee31 1a09 	vadd.f32	s2, s2, s18
d00422de:	3101      	adds	r1, #1
d00422e0:	eefc 7ae7 	vcvt.u32.f32	s15, s15
d00422e4:	f005 0503 	and.w	r5, r5, #3
d00422e8:	01a4      	lsls	r4, r4, #6
d00422ea:	ee17 3a90 	vmov	r3, s15
d00422ee:	b29b      	uxth	r3, r3
d00422f0:	459e      	cmp	lr, r3
d00422f2:	d908      	bls.n	d0042306 <fillTriangleDitherBayer+0x8c2>
d00422f4:	f81b 5005 	ldrb.w	r5, [fp, r5]
d00422f8:	803b      	strh	r3, [r7, #0]
d00422fa:	45a8      	cmp	r8, r5
d00422fc:	bfcc      	ite	gt
d00422fe:	4635      	movgt	r5, r6
d0042300:	4655      	movle	r5, sl
d0042302:	f80c 5004 	strb.w	r5, [ip, r4]
d0042306:	428a      	cmp	r2, r1
d0042308:	dcdc      	bgt.n	d00422c4 <fillTriangleDitherBayer+0x880>
d004230a:	9e03      	ldr	r6, [sp, #12]
d004230c:	f8dd 8014 	ldr.w	r8, [sp, #20]
d0042310:	f1b8 0f00 	cmp.w	r8, #0
d0042314:	eb02 0382 	add.w	r3, r2, r2, lsl #2
d0042318:	ea4f 0142 	mov.w	r1, r2, lsl #1
d004231c:	ea4f 1383 	mov.w	r3, r3, lsl #6
d0042320:	bfbc      	itt	lt
d0042322:	2102      	movlt	r1, #2
d0042324:	f44f 73a0 	movlt.w	r3, #320	; 0x140
d0042328:	4489      	add	r9, r1
d004232a:	449c      	add	ip, r3
d004232c:	ee07 2a90 	vmov	s15, r2
d0042330:	4410      	add	r0, r2
d0042332:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0042336:	42b0      	cmp	r0, r6
d0042338:	eee7 6a84 	vfma.f32	s13, s15, s8
d004233c:	eea7 5aa2 	vfma.f32	s10, s15, s5
d0042340:	dd8c      	ble.n	d004225c <fillTriangleDitherBayer+0x818>
d0042342:	f8dd b01c 	ldr.w	fp, [sp, #28]
d0042346:	e5fb      	b.n	d0041f40 <fillTriangleDitherBayer+0x4fc>
d0042348:	d1f0      	bne.n	d004232c <fillTriangleDitherBayer+0x8e8>
d004234a:	9900      	ldr	r1, [sp, #0]
d004234c:	eeb0 9a43 	vmov.f32	s18, s6
d0042350:	2900      	cmp	r1, #0
d0042352:	d0af      	beq.n	d00422b4 <fillTriangleDitherBayer+0x870>
d0042354:	f1a9 0502 	sub.w	r5, r9, #2
d0042358:	2100      	movs	r1, #0
d004235a:	fec1 7a03 	vmaxnm.f32	s15, s2, s6
d004235e:	fec7 7ac2 	vminnm.f32	s15, s15, s4
d0042362:	ee77 7a86 	vadd.f32	s15, s15, s12
d0042366:	eb01 0381 	add.w	r3, r1, r1, lsl #2
d004236a:	f835 7f02 	ldrh.w	r7, [r5, #2]!
d004236e:	ee31 1a09 	vadd.f32	s2, s2, s18
d0042372:	019c      	lsls	r4, r3, #6
d0042374:	3101      	adds	r1, #1
d0042376:	eefc 7ae7 	vcvt.u32.f32	s15, s15
d004237a:	ee17 3a90 	vmov	r3, s15
d004237e:	b29b      	uxth	r3, r3
d0042380:	429f      	cmp	r7, r3
d0042382:	d902      	bls.n	d004238a <fillTriangleDitherBayer+0x946>
d0042384:	802b      	strh	r3, [r5, #0]
d0042386:	f80c a004 	strb.w	sl, [ip, r4]
d004238a:	428a      	cmp	r2, r1
d004238c:	dce5      	bgt.n	d004235a <fillTriangleDitherBayer+0x916>
d004238e:	e7bf      	b.n	d0042310 <fillTriangleDitherBayer+0x8cc>
d0042390:	d012e7a4 	.word	0xd012e7a4
d0042394:	d00490a0 	.word	0xd00490a0
d0042398:	d0048740 	.word	0xd0048740
d004239c:	38d1b717 	.word	0x38d1b717
d00423a0:	f04f 0a10 	mov.w	sl, #16
d00423a4:	2310      	movs	r3, #16
d00423a6:	9304      	str	r3, [sp, #16]
d00423a8:	f7ff bbb2 	b.w	d0041b10 <fillTriangleDitherBayer+0xcc>
d00423ac:	eeb0 ba43 	vmov.f32	s22, s6
d00423b0:	eef0 9a43 	vmov.f32	s19, s6
d00423b4:	e63c      	b.n	d0042030 <fillTriangleDitherBayer+0x5ec>
d00423b6:	eef0 2a43 	vmov.f32	s5, s6
d00423ba:	eeb0 4a43 	vmov.f32	s8, s6
d00423be:	e721      	b.n	d0042204 <fillTriangleDitherBayer+0x7c0>

d00423c0 <fillTriangleDitherBayerT>:
d00423c0:	eddf 7aea 	vldr	s15, [pc, #936]	; d004276c <fillTriangleDitherBayerT+0x3ac>
d00423c4:	eef4 0ae7 	vcmpe.f32	s1, s15
d00423c8:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d00423cc:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00423d0:	eeb4 1ae7 	vcmpe.f32	s2, s15
d00423d4:	ed2d 8b10 	vpush	{d8-d15}
d00423d8:	b08f      	sub	sp, #60	; 0x3c
d00423da:	9203      	str	r2, [sp, #12]
d00423dc:	bf94      	ite	ls
d00423de:	2201      	movls	r2, #1
d00423e0:	2200      	movhi	r2, #0
d00423e2:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00423e6:	9001      	str	r0, [sp, #4]
d00423e8:	9102      	str	r1, [sp, #8]
d00423ea:	bf98      	it	ls
d00423ec:	f042 0201 	orrls.w	r2, r2, #1
d00423f0:	9304      	str	r3, [sp, #16]
d00423f2:	f8bd 40a8 	ldrh.w	r4, [sp, #168]	; 0xa8
d00423f6:	f8bd 00ac 	ldrh.w	r0, [sp, #172]	; 0xac
d00423fa:	f8bd 10b0 	ldrh.w	r1, [sp, #176]	; 0xb0
d00423fe:	f89d 30b4 	ldrb.w	r3, [sp, #180]	; 0xb4
d0042402:	f89d c0b8 	ldrb.w	ip, [sp, #184]	; 0xb8
d0042406:	2a00      	cmp	r2, #0
d0042408:	f040 818c 	bne.w	d0042724 <fillTriangleDitherBayerT+0x364>
d004240c:	eeb4 0a67 	vcmp.f32	s0, s15
d0042410:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0042414:	f240 8186 	bls.w	d0042724 <fillTriangleDitherBayerT+0x364>
d0042418:	eef7 6a00 	vmov.f32	s13, #112	; 0x3f800000  1.0
d004241c:	eddf 7ad4 	vldr	s15, [pc, #848]	; d0042770 <fillTriangleDitherBayerT+0x3b0>
d0042420:	eeb1 6a04 	vmov.f32	s12, #20	; 0x40a00000  5.0
d0042424:	ee07 4a10 	vmov	s14, r4
d0042428:	fec1 7aa7 	vmaxnm.f32	s15, s3, s15
d004242c:	ee86 9a81 	vdiv.f32	s18, s13, s2
d0042430:	fec7 7ac6 	vminnm.f32	s15, s15, s12
d0042434:	eec6 1a80 	vdiv.f32	s3, s13, s0
d0042438:	ee86 0aa0 	vdiv.f32	s0, s13, s1
d004243c:	eefd 6ae7 	vcvt.s32.f32	s13, s15
d0042440:	eeb8 7a47 	vcvt.f32.u32	s14, s14
d0042444:	ee16 2a90 	vmov	r2, s13
d0042448:	ee06 0a90 	vmov	s13, r0
d004244c:	eef8 5a66 	vcvt.f32.u32	s11, s13
d0042450:	ee06 1a90 	vmov	s13, r1
d0042454:	1c51      	adds	r1, r2, #1
d0042456:	ee27 7a21 	vmul.f32	s14, s14, s3
d004245a:	eeb8 5a66 	vcvt.f32.u32	s10, s13
d004245e:	2905      	cmp	r1, #5
d0042460:	bfa8      	it	ge
d0042462:	2105      	movge	r1, #5
d0042464:	2a04      	cmp	r2, #4
d0042466:	ee65 5a80 	vmul.f32	s11, s11, s0
d004246a:	ee25 5a09 	vmul.f32	s10, s10, s18
d004246e:	f300 8410 	bgt.w	d0042c92 <fillTriangleDitherBayerT+0x8d2>
d0042472:	f003 030f 	and.w	r3, r3, #15
d0042476:	2a03      	cmp	r2, #3
d0042478:	f103 0320 	add.w	r3, r3, #32
d004247c:	eb03 1002 	add.w	r0, r3, r2, lsl #4
d0042480:	b2c0      	uxtb	r0, r0
d0042482:	9005      	str	r0, [sp, #20]
d0042484:	f300 8407 	bgt.w	d0042c96 <fillTriangleDitherBayerT+0x8d6>
d0042488:	eb03 1301 	add.w	r3, r3, r1, lsl #4
d004248c:	b2db      	uxtb	r3, r3
d004248e:	9306      	str	r3, [sp, #24]
d0042490:	eddd 6a02 	vldr	s13, [sp, #8]
d0042494:	eef8 4ae6 	vcvt.f32.s32	s9, s13
d0042498:	eddd 6a04 	vldr	s13, [sp, #16]
d004249c:	eeb8 3ae6 	vcvt.f32.s32	s6, s13
d00424a0:	eddd 6a01 	vldr	s13, [sp, #4]
d00424a4:	eeb8 6ae6 	vcvt.f32.s32	s12, s13
d00424a8:	eddd 6a03 	vldr	s13, [sp, #12]
d00424ac:	eef4 4ac3 	vcmpe.f32	s9, s6
d00424b0:	eeb8 4ae6 	vcvt.f32.s32	s8, s13
d00424b4:	eddd 6a28 	vldr	s13, [sp, #160]	; 0xa0
d00424b8:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00424bc:	eef8 2ae6 	vcvt.f32.s32	s5, s13
d00424c0:	eddd 6a29 	vldr	s13, [sp, #164]	; 0xa4
d00424c4:	eef8 6ae6 	vcvt.f32.s32	s13, s13
d00424c8:	f300 8131 	bgt.w	d004272e <fillTriangleDitherBayerT+0x36e>
d00424cc:	eef4 4ae6 	vcmpe.f32	s9, s13
d00424d0:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00424d4:	f300 8238 	bgt.w	d0042948 <fillTriangleDitherBayerT+0x588>
d00424d8:	eef4 6ac3 	vcmpe.f32	s13, s6
d00424dc:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00424e0:	d517      	bpl.n	d0042512 <fillTriangleDitherBayerT+0x152>
d00424e2:	eef0 0a65 	vmov.f32	s1, s11
d00424e6:	eeb0 1a40 	vmov.f32	s2, s0
d00424ea:	eeb0 2a43 	vmov.f32	s4, s6
d00424ee:	eef0 3a44 	vmov.f32	s7, s8
d00424f2:	eef0 5a45 	vmov.f32	s11, s10
d00424f6:	eeb0 0a49 	vmov.f32	s0, s18
d00424fa:	eeb0 3a66 	vmov.f32	s6, s13
d00424fe:	eeb0 4a62 	vmov.f32	s8, s5
d0042502:	eeb0 5a60 	vmov.f32	s10, s1
d0042506:	eeb0 9a41 	vmov.f32	s18, s2
d004250a:	eef0 6a42 	vmov.f32	s13, s4
d004250e:	eef0 2a63 	vmov.f32	s5, s7
d0042512:	eef6 3a00 	vmov.f32	s7, #96	; 0x3f000000  0.5
d0042516:	ee34 2aa3 	vadd.f32	s4, s9, s7
d004251a:	ee76 3aa3 	vadd.f32	s7, s13, s7
d004251e:	eebd 2ac2 	vcvt.s32.f32	s4, s4
d0042522:	eefd 3ae3 	vcvt.s32.f32	s7, s7
d0042526:	ee12 3a10 	vmov	r3, s4
d004252a:	ee13 1a90 	vmov	r1, s7
d004252e:	428b      	cmp	r3, r1
d0042530:	f000 80f8 	beq.w	d0042724 <fillTriangleDitherBayerT+0x364>
d0042534:	ee36 1ae4 	vsub.f32	s2, s13, s9
d0042538:	ed9f 2a8c 	vldr	s4, [pc, #560]	; d004276c <fillTriangleDitherBayerT+0x3ac>
d004253c:	eeb4 1ac2 	vcmpe.f32	s2, s4
d0042540:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0042544:	f240 80ee 	bls.w	d0042724 <fillTriangleDitherBayerT+0x364>
d0042548:	eef7 9a00 	vmov.f32	s19, #112	; 0x3f800000  1.0
d004254c:	ee72 0ac6 	vsub.f32	s1, s5, s12
d0042550:	ee39 8a61 	vsub.f32	s16, s18, s3
d0042554:	eec9 3a81 	vdiv.f32	s7, s19, s2
d0042558:	ee33 1a64 	vsub.f32	s2, s6, s9
d004255c:	ee75 8a47 	vsub.f32	s17, s10, s14
d0042560:	eeb4 1ac2 	vcmpe.f32	s2, s4
d0042564:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0042568:	ee60 0aa3 	vmul.f32	s1, s1, s7
d004256c:	ee28 8a23 	vmul.f32	s16, s16, s7
d0042570:	ee68 8aa3 	vmul.f32	s17, s17, s7
d0042574:	f300 8100 	bgt.w	d0042778 <fillTriangleDitherBayerT+0x3b8>
d0042578:	ee03 2a90 	vmov	s7, r2
d004257c:	ee76 fac3 	vsub.f32	s31, s13, s6
d0042580:	9905      	ldr	r1, [sp, #20]
d0042582:	eb0c 1c0c 	add.w	ip, ip, ip, lsl #4
d0042586:	eef8 3ae3 	vcvt.f32.s32	s7, s7
d004258a:	eef4 fac2 	vcmpe.f32	s31, s4
d004258e:	ea4f 2c2c 	mov.w	ip, ip, asr #8
d0042592:	ee77 7ae3 	vsub.f32	s15, s15, s7
d0042596:	eef0 3a67 	vmov.f32	s7, s15
d004259a:	eefe 3ace 	vcvt.s32.f32	s7, s7, #4
d004259e:	ee13 3a90 	vmov	r3, s7
d00425a2:	f383 0204 	usat	r2, #4, r3
d00425a6:	9201      	str	r2, [sp, #4]
d00425a8:	9a06      	ldr	r2, [sp, #24]
d00425aa:	428a      	cmp	r2, r1
d00425ac:	bf18      	it	ne
d00425ae:	2b00      	cmpne	r3, #0
d00425b0:	bfd4      	ite	le
d00425b2:	2301      	movle	r3, #1
d00425b4:	2300      	movgt	r3, #0
d00425b6:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00425ba:	9304      	str	r3, [sp, #16]
d00425bc:	f340 80b2 	ble.w	d0042724 <fillTriangleDitherBayerT+0x364>
d00425c0:	ed9f ea6b 	vldr	s28, [pc, #428]	; d0042770 <fillTriangleDitherBayerT+0x3b0>
d00425c4:	eef0 9a4e 	vmov.f32	s19, s28
d00425c8:	eeb0 ba4e 	vmov.f32	s22, s28
d00425cc:	eeb7 2a00 	vmov.f32	s4, #112	; 0x3f800000  1.0
d00425d0:	eddf 3a66 	vldr	s7, [pc, #408]	; d004276c <fillTriangleDitherBayerT+0x3ac>
d00425d4:	ee72 2ac4 	vsub.f32	s5, s5, s8
d00425d8:	ee39 9a40 	vsub.f32	s18, s18, s0
d00425dc:	eec2 7a2f 	vdiv.f32	s15, s4, s31
d00425e0:	eeb4 1ae3 	vcmpe.f32	s2, s7
d00425e4:	ee35 5a65 	vsub.f32	s10, s10, s11
d00425e8:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00425ec:	ee62 2aa7 	vmul.f32	s5, s5, s15
d00425f0:	ee25 5a27 	vmul.f32	s10, s10, s15
d00425f4:	edcd 2a0a 	vstr	s5, [sp, #40]	; 0x28
d00425f8:	ee69 2a27 	vmul.f32	s5, s18, s15
d00425fc:	edcd 2a09 	vstr	s5, [sp, #36]	; 0x24
d0042600:	f300 80f6 	bgt.w	d00427f0 <fillTriangleDitherBayerT+0x430>
d0042604:	eefd 7ac3 	vcvt.s32.f32	s15, s6
d0042608:	edcd 7a07 	vstr	s15, [sp, #28]
d004260c:	eefd 7ae6 	vcvt.s32.f32	s15, s13
d0042610:	f240 123f 	movw	r2, #319	; 0x13f
d0042614:	9907      	ldr	r1, [sp, #28]
d0042616:	ee17 3a90 	vmov	r3, s15
d004261a:	ea21 7ae1 	bic.w	sl, r1, r1, asr #31
d004261e:	3b01      	subs	r3, #1
d0042620:	4293      	cmp	r3, r2
d0042622:	bfa8      	it	ge
d0042624:	4613      	movge	r3, r2
d0042626:	459a      	cmp	sl, r3
d0042628:	dc7c      	bgt.n	d0042724 <fillTriangleDitherBayerT+0x364>
d004262a:	ee07 aa90 	vmov	s15, sl
d004262e:	eef6 6a00 	vmov.f32	s13, #96	; 0x3f000000  0.5
d0042632:	3301      	adds	r3, #1
d0042634:	eddd ba0a 	vldr	s23, [sp, #40]	; 0x28
d0042638:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d004263c:	ed9d ba09 	vldr	s22, [sp, #36]	; 0x24
d0042640:	9303      	str	r3, [sp, #12]
d0042642:	9b04      	ldr	r3, [sp, #16]
d0042644:	ee77 7aa6 	vadd.f32	s15, s15, s13
d0042648:	eddf 9a48 	vldr	s19, [pc, #288]	; d004276c <fillTriangleDitherBayerT+0x3ac>
d004264c:	f083 0301 	eor.w	r3, r3, #1
d0042650:	ed9f 1a47 	vldr	s2, [pc, #284]	; d0042770 <fillTriangleDitherBayerT+0x3b0>
d0042654:	ed9f 9a47 	vldr	s18, [pc, #284]	; d0042774 <fillTriangleDitherBayerT+0x3b4>
d0042658:	ee77 4ae4 	vsub.f32	s9, s15, s9
d004265c:	9302      	str	r3, [sp, #8]
d004265e:	ee37 3ac3 	vsub.f32	s6, s15, s6
d0042662:	eea0 6aa4 	vfma.f32	s12, s1, s9
d0042666:	eee8 1a24 	vfma.f32	s3, s16, s9
d004266a:	eea8 7aa4 	vfma.f32	s14, s17, s9
d004266e:	eeab 4a83 	vfma.f32	s8, s23, s6
d0042672:	eeab 0a03 	vfma.f32	s0, s22, s6
d0042676:	eee5 5a03 	vfma.f32	s11, s10, s6
d004267a:	e033      	b.n	d00426e4 <fillTriangleDitherBayerT+0x324>
d004267c:	eeb0 3a47 	vmov.f32	s6, s14
d0042680:	eeb0 2a61 	vmov.f32	s4, s3
d0042684:	eef0 6a46 	vmov.f32	s13, s12
d0042688:	eef0 2a65 	vmov.f32	s5, s11
d004268c:	eef0 4a40 	vmov.f32	s9, s0
d0042690:	eef0 3a44 	vmov.f32	s7, s8
d0042694:	fefa 7a66 	vrintp.f32	s15, s13
d0042698:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d004269c:	f240 13df 	movw	r3, #479	; 0x1df
d00426a0:	ee17 7a90 	vmov	r7, s15
d00426a4:	fefa 7a63 	vrintp.f32	s15, s7
d00426a8:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d00426ac:	3f01      	subs	r7, #1
d00426ae:	ee17 4a90 	vmov	r4, s15
d00426b2:	429f      	cmp	r7, r3
d00426b4:	ea24 74e4 	bic.w	r4, r4, r4, asr #31
d00426b8:	bfa8      	it	ge
d00426ba:	461f      	movge	r7, r3
d00426bc:	42a7      	cmp	r7, r4
d00426be:	f280 815c 	bge.w	d004297a <fillTriangleDitherBayerT+0x5ba>
d00426c2:	f10a 0a01 	add.w	sl, sl, #1
d00426c6:	9b03      	ldr	r3, [sp, #12]
d00426c8:	ee36 6a20 	vadd.f32	s12, s12, s1
d00426cc:	459a      	cmp	sl, r3
d00426ce:	ee71 1a88 	vadd.f32	s3, s3, s16
d00426d2:	ee37 7a28 	vadd.f32	s14, s14, s17
d00426d6:	ee34 4a2b 	vadd.f32	s8, s8, s23
d00426da:	ee30 0a0b 	vadd.f32	s0, s0, s22
d00426de:	ee75 5a85 	vadd.f32	s11, s11, s10
d00426e2:	d01f      	beq.n	d0042724 <fillTriangleDitherBayerT+0x364>
d00426e4:	eeb4 6ac4 	vcmpe.f32	s12, s8
d00426e8:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00426ec:	dcc6      	bgt.n	d004267c <fillTriangleDitherBayerT+0x2bc>
d00426ee:	eeb0 3a65 	vmov.f32	s6, s11
d00426f2:	eeb0 2a40 	vmov.f32	s4, s0
d00426f6:	eef0 6a44 	vmov.f32	s13, s8
d00426fa:	eef0 2a47 	vmov.f32	s5, s14
d00426fe:	eef0 4a61 	vmov.f32	s9, s3
d0042702:	eef0 3a46 	vmov.f32	s7, s12
d0042706:	e7c5      	b.n	d0042694 <fillTriangleDitherBayerT+0x2d4>
d0042708:	eddd 6a0b 	vldr	s13, [sp, #44]	; 0x2c
d004270c:	eddd 4a0c 	vldr	s9, [sp, #48]	; 0x30
d0042710:	ed9d 6a0d 	vldr	s12, [sp, #52]	; 0x34
d0042714:	eddf 7a15 	vldr	s15, [pc, #84]	; d004276c <fillTriangleDitherBayerT+0x3ac>
d0042718:	eef4 fae7 	vcmpe.f32	s31, s15
d004271c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0042720:	f73f af74 	bgt.w	d004260c <fillTriangleDitherBayerT+0x24c>
d0042724:	b00f      	add	sp, #60	; 0x3c
d0042726:	ecbd 8b10 	vpop	{d8-d15}
d004272a:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d004272e:	eeb4 3ae6 	vcmpe.f32	s6, s13
d0042732:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0042736:	f340 80ee 	ble.w	d0042916 <fillTriangleDitherBayerT+0x556>
d004273a:	eef0 0a45 	vmov.f32	s1, s10
d004273e:	eeb0 1a49 	vmov.f32	s2, s18
d0042742:	eeb0 2a66 	vmov.f32	s4, s13
d0042746:	eef0 3a62 	vmov.f32	s7, s5
d004274a:	eeb0 5a47 	vmov.f32	s10, s14
d004274e:	eeb0 9a61 	vmov.f32	s18, s3
d0042752:	eef0 6a64 	vmov.f32	s13, s9
d0042756:	eef0 2a46 	vmov.f32	s5, s12
d004275a:	eeb0 7a60 	vmov.f32	s14, s1
d004275e:	eef0 1a41 	vmov.f32	s3, s2
d0042762:	eef0 4a42 	vmov.f32	s9, s4
d0042766:	eeb0 6a63 	vmov.f32	s12, s7
d004276a:	e6d2      	b.n	d0042512 <fillTriangleDitherBayerT+0x152>
d004276c:	38d1b717 	.word	0x38d1b717
d0042770:	00000000 	.word	0x00000000
d0042774:	477fff00 	.word	0x477fff00
d0042778:	ee03 2a90 	vmov	s7, r2
d004277c:	ee89 aa81 	vdiv.f32	s20, s19, s2
d0042780:	9905      	ldr	r1, [sp, #20]
d0042782:	eb0c 1c0c 	add.w	ip, ip, ip, lsl #4
d0042786:	ea4f 2c2c 	mov.w	ip, ip, asr #8
d004278a:	eef8 3ae3 	vcvt.f32.s32	s7, s7
d004278e:	ee74 aa46 	vsub.f32	s21, s8, s12
d0042792:	ee76 fac3 	vsub.f32	s31, s13, s6
d0042796:	ee77 7ae3 	vsub.f32	s15, s15, s7
d004279a:	ee70 9a61 	vsub.f32	s19, s0, s3
d004279e:	eef4 fac2 	vcmpe.f32	s31, s4
d00427a2:	eef0 3a67 	vmov.f32	s7, s15
d00427a6:	ee35 eac7 	vsub.f32	s28, s11, s14
d00427aa:	eefe 3ace 	vcvt.s32.f32	s7, s7, #4
d00427ae:	ee6a 7a8a 	vmul.f32	s15, s21, s20
d00427b2:	ee13 3a90 	vmov	r3, s7
d00427b6:	ee2e ea0a 	vmul.f32	s28, s28, s20
d00427ba:	f383 0204 	usat	r2, #4, r3
d00427be:	eeb0 ba67 	vmov.f32	s22, s15
d00427c2:	ee69 7a8a 	vmul.f32	s15, s19, s20
d00427c6:	9201      	str	r2, [sp, #4]
d00427c8:	9a06      	ldr	r2, [sp, #24]
d00427ca:	eef0 9a67 	vmov.f32	s19, s15
d00427ce:	428a      	cmp	r2, r1
d00427d0:	bf18      	it	ne
d00427d2:	2b00      	cmpne	r3, #0
d00427d4:	bfd4      	ite	le
d00427d6:	2301      	movle	r3, #1
d00427d8:	2300      	movgt	r3, #0
d00427da:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00427de:	9304      	str	r3, [sp, #16]
d00427e0:	f73f aef4 	bgt.w	d00425cc <fillTriangleDitherBayerT+0x20c>
d00427e4:	ed1f 5a1e 	vldr	s10, [pc, #-120]	; d0042770 <fillTriangleDitherBayerT+0x3b0>
d00427e8:	ed8d 5a09 	vstr	s10, [sp, #36]	; 0x24
d00427ec:	ed8d 5a0a 	vstr	s10, [sp, #40]	; 0x28
d00427f0:	eefd 7ac3 	vcvt.s32.f32	s15, s6
d00427f4:	f240 123f 	movw	r2, #319	; 0x13f
d00427f8:	ee17 3a90 	vmov	r3, s15
d00427fc:	edcd 7a07 	vstr	s15, [sp, #28]
d0042800:	eefd 7ae4 	vcvt.s32.f32	s15, s9
d0042804:	3b01      	subs	r3, #1
d0042806:	ee17 aa90 	vmov	sl, s15
d004280a:	4293      	cmp	r3, r2
d004280c:	ea2a 7aea 	bic.w	sl, sl, sl, asr #31
d0042810:	bfa8      	it	ge
d0042812:	4613      	movge	r3, r2
d0042814:	4553      	cmp	r3, sl
d0042816:	f6ff af7d 	blt.w	d0042714 <fillTriangleDitherBayerT+0x354>
d004281a:	eef6 7a00 	vmov.f32	s15, #96	; 0x3f000000  0.5
d004281e:	3301      	adds	r3, #1
d0042820:	eeb0 aa46 	vmov.f32	s20, s12
d0042824:	ed5f 2a2e 	vldr	s5, [pc, #-184]	; d0042770 <fillTriangleDitherBayerT+0x3b0>
d0042828:	9303      	str	r3, [sp, #12]
d004282a:	eef0 aa46 	vmov.f32	s21, s12
d004282e:	ee77 3ae4 	vsub.f32	s7, s15, s9
d0042832:	ee07 aa90 	vmov	s15, sl
d0042836:	9b04      	ldr	r3, [sp, #16]
d0042838:	eef0 ca61 	vmov.f32	s25, s3
d004283c:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0042840:	ed1f 2a34 	vldr	s4, [pc, #-208]	; d0042774 <fillTriangleDitherBayerT+0x3b4>
d0042844:	eeb0 ca47 	vmov.f32	s24, s14
d0042848:	f083 0301 	eor.w	r3, r3, #1
d004284c:	eef0 da4b 	vmov.f32	s27, s22
d0042850:	edcd 6a0b 	vstr	s13, [sp, #44]	; 0x2c
d0042854:	ee77 7aa3 	vadd.f32	s15, s15, s7
d0042858:	9302      	str	r3, [sp, #8]
d004285a:	eef0 ba61 	vmov.f32	s23, s3
d004285e:	edcd 4a0c 	vstr	s9, [sp, #48]	; 0x30
d0042862:	eef0 ea69 	vmov.f32	s29, s19
d0042866:	ed8d 6a0d 	vstr	s12, [sp, #52]	; 0x34
d004286a:	eea7 aa8b 	vfma.f32	s20, s15, s22
d004286e:	eeb0 ba47 	vmov.f32	s22, s14
d0042872:	eee0 aaa7 	vfma.f32	s21, s1, s15
d0042876:	eee8 ca27 	vfma.f32	s25, s16, s15
d004287a:	eea8 caa7 	vfma.f32	s24, s17, s15
d004287e:	eee7 baa9 	vfma.f32	s23, s15, s19
d0042882:	eea7 ba8e 	vfma.f32	s22, s15, s28
d0042886:	e034      	b.n	d00428f2 <fillTriangleDitherBayerT+0x532>
d0042888:	eef0 3a4c 	vmov.f32	s7, s24
d004288c:	eef0 4a6c 	vmov.f32	s9, s25
d0042890:	eef0 7a6a 	vmov.f32	s15, s21
d0042894:	eeb0 6a4b 	vmov.f32	s12, s22
d0042898:	eef0 6a6b 	vmov.f32	s13, s23
d004289c:	eeb0 1a4a 	vmov.f32	s2, s20
d00428a0:	feba 9a67 	vrintp.f32	s18, s15
d00428a4:	eebd 9ac9 	vcvt.s32.f32	s18, s18
d00428a8:	fefa 9a41 	vrintp.f32	s19, s2
d00428ac:	f240 13df 	movw	r3, #479	; 0x1df
d00428b0:	ee19 7a10 	vmov	r7, s18
d00428b4:	eebd 9ae9 	vcvt.s32.f32	s18, s19
d00428b8:	3f01      	subs	r7, #1
d00428ba:	ee19 4a10 	vmov	r4, s18
d00428be:	429f      	cmp	r7, r3
d00428c0:	ea24 74e4 	bic.w	r4, r4, r4, asr #31
d00428c4:	bfa8      	it	ge
d00428c6:	461f      	movge	r7, r3
d00428c8:	42a7      	cmp	r7, r4
d00428ca:	f280 811b 	bge.w	d0042b04 <fillTriangleDitherBayerT+0x744>
d00428ce:	f10a 0a01 	add.w	sl, sl, #1
d00428d2:	9b03      	ldr	r3, [sp, #12]
d00428d4:	ee7a aaa0 	vadd.f32	s21, s21, s1
d00428d8:	459a      	cmp	sl, r3
d00428da:	ee7c ca88 	vadd.f32	s25, s25, s16
d00428de:	ee3c ca28 	vadd.f32	s24, s24, s17
d00428e2:	ee3a aa2d 	vadd.f32	s20, s20, s27
d00428e6:	ee7b baae 	vadd.f32	s23, s23, s29
d00428ea:	ee3b ba0e 	vadd.f32	s22, s22, s28
d00428ee:	f43f af0b 	beq.w	d0042708 <fillTriangleDitherBayerT+0x348>
d00428f2:	eef4 aaca 	vcmpe.f32	s21, s20
d00428f6:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00428fa:	dcc5      	bgt.n	d0042888 <fillTriangleDitherBayerT+0x4c8>
d00428fc:	eef0 3a4b 	vmov.f32	s7, s22
d0042900:	eef0 4a6b 	vmov.f32	s9, s23
d0042904:	eef0 7a4a 	vmov.f32	s15, s20
d0042908:	eeb0 6a4c 	vmov.f32	s12, s24
d004290c:	eef0 6a6c 	vmov.f32	s13, s25
d0042910:	eeb0 1a6a 	vmov.f32	s2, s21
d0042914:	e7c4      	b.n	d00428a0 <fillTriangleDitherBayerT+0x4e0>
d0042916:	eef0 0a47 	vmov.f32	s1, s14
d004291a:	eeb0 1a61 	vmov.f32	s2, s3
d004291e:	eeb0 2a64 	vmov.f32	s4, s9
d0042922:	eef0 3a46 	vmov.f32	s7, s12
d0042926:	eeb0 7a65 	vmov.f32	s14, s11
d004292a:	eef0 1a40 	vmov.f32	s3, s0
d004292e:	eef0 4a43 	vmov.f32	s9, s6
d0042932:	eeb0 6a44 	vmov.f32	s12, s8
d0042936:	eef0 5a60 	vmov.f32	s11, s1
d004293a:	eeb0 0a41 	vmov.f32	s0, s2
d004293e:	eeb0 3a42 	vmov.f32	s6, s4
d0042942:	eeb0 4a63 	vmov.f32	s8, s7
d0042946:	e5c7      	b.n	d00424d8 <fillTriangleDitherBayerT+0x118>
d0042948:	eef0 0a47 	vmov.f32	s1, s14
d004294c:	eeb0 1a61 	vmov.f32	s2, s3
d0042950:	eeb0 2a64 	vmov.f32	s4, s9
d0042954:	eef0 3a46 	vmov.f32	s7, s12
d0042958:	eeb0 7a45 	vmov.f32	s14, s10
d004295c:	eef0 1a49 	vmov.f32	s3, s18
d0042960:	eef0 4a66 	vmov.f32	s9, s13
d0042964:	eeb0 6a62 	vmov.f32	s12, s5
d0042968:	eeb0 5a60 	vmov.f32	s10, s1
d004296c:	eeb0 9a41 	vmov.f32	s18, s2
d0042970:	eef0 6a42 	vmov.f32	s13, s4
d0042974:	eef0 2a63 	vmov.f32	s5, s7
d0042978:	e5ae      	b.n	d00424d8 <fillTriangleDitherBayerT+0x118>
d004297a:	ee76 6ae3 	vsub.f32	s13, s13, s7
d004297e:	eef4 6ae9 	vcmpe.f32	s13, s19
d0042982:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0042986:	f340 818a 	ble.w	d0042c9e <fillTriangleDitherBayerT+0x8de>
d004298a:	eef7 7a00 	vmov.f32	s15, #112	; 0x3f800000  1.0
d004298e:	ee32 2a64 	vsub.f32	s4, s4, s9
d0042992:	ee33 3a62 	vsub.f32	s6, s6, s5
d0042996:	ee87 aaa6 	vdiv.f32	s20, s15, s13
d004299a:	eef6 7a00 	vmov.f32	s15, #96	; 0x3f000000  0.5
d004299e:	ee77 3ae3 	vsub.f32	s7, s15, s7
d00429a2:	ee07 4a90 	vmov	s15, r4
d00429a6:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d00429aa:	ee77 7aa3 	vadd.f32	s15, s15, s7
d00429ae:	ee22 2a0a 	vmul.f32	s4, s4, s20
d00429b2:	ee23 aa0a 	vmul.f32	s20, s6, s20
d00429b6:	eee7 4a82 	vfma.f32	s9, s15, s4
d00429ba:	eee7 2a8a 	vfma.f32	s5, s15, s20
d00429be:	ebca 190a 	rsb	r9, sl, sl, lsl #4
d00429c2:	4bbc      	ldr	r3, [pc, #752]	; (d0042cb4 <fillTriangleDitherBayerT+0x8f4>)
d00429c4:	eb04 0e84 	add.w	lr, r4, r4, lsl #2
d00429c8:	48bb      	ldr	r0, [pc, #748]	; (d0042cb8 <fillTriangleDitherBayerT+0x8f8>)
d00429ca:	eb04 1249 	add.w	r2, r4, r9, lsl #5
d00429ce:	6819      	ldr	r1, [r3, #0]
d00429d0:	f00a 0b03 	and.w	fp, sl, #3
d00429d4:	eb0a 138e 	add.w	r3, sl, lr, lsl #6
d00429d8:	eb00 0942 	add.w	r9, r0, r2, lsl #1
d00429dc:	4ab7      	ldr	r2, [pc, #732]	; (d0042cbc <fillTriangleDitherBayerT+0x8fc>)
d00429de:	f8cd a010 	str.w	sl, [sp, #16]
d00429e2:	eb01 0e03 	add.w	lr, r1, r3
d00429e6:	eddf aab6 	vldr	s21, [pc, #728]	; d0042cc0 <fillTriangleDitherBayerT+0x900>
d00429ea:	eb02 0b8b 	add.w	fp, r2, fp, lsl #2
d00429ee:	f8dd a018 	ldr.w	sl, [sp, #24]
d00429f2:	e010      	b.n	d0042a16 <fillTriangleDitherBayerT+0x656>
d00429f4:	ee07 0a90 	vmov	s15, r0
d00429f8:	4404      	add	r4, r0
d00429fa:	eb00 0380 	add.w	r3, r0, r0, lsl #2
d00429fe:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0042a02:	42bc      	cmp	r4, r7
d0042a04:	eb09 0940 	add.w	r9, r9, r0, lsl #1
d0042a08:	eb0e 1e83 	add.w	lr, lr, r3, lsl #6
d0042a0c:	eee7 4a82 	vfma.f32	s9, s15, s4
d0042a10:	eee7 2a8a 	vfma.f32	s5, s15, s20
d0042a14:	dc6d      	bgt.n	d0042af2 <fillTriangleDitherBayerT+0x732>
d0042a16:	eba7 0804 	sub.w	r8, r7, r4
d0042a1a:	eef4 4aea 	vcmpe.f32	s9, s21
d0042a1e:	f108 0001 	add.w	r0, r8, #1
d0042a22:	2830      	cmp	r0, #48	; 0x30
d0042a24:	bfa8      	it	ge
d0042a26:	2030      	movge	r0, #48	; 0x30
d0042a28:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0042a2c:	d9e2      	bls.n	d00429f4 <fillTriangleDitherBayerT+0x634>
d0042a2e:	f1b8 0f00 	cmp.w	r8, #0
d0042a32:	eec2 6aa4 	vdiv.f32	s13, s5, s9
d0042a36:	dd5f      	ble.n	d0042af8 <fillTriangleDitherBayerT+0x738>
d0042a38:	1e43      	subs	r3, r0, #1
d0042a3a:	ee07 3a90 	vmov	s15, r3
d0042a3e:	eef0 3a64 	vmov.f32	s7, s9
d0042a42:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0042a46:	eee7 3a82 	vfma.f32	s7, s15, s4
d0042a4a:	eef4 3aea 	vcmpe.f32	s7, s21
d0042a4e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0042a52:	dd52      	ble.n	d0042afa <fillTriangleDitherBayerT+0x73a>
d0042a54:	eeb0 ca62 	vmov.f32	s24, s5
d0042a58:	eea7 ca8a 	vfma.f32	s24, s15, s20
d0042a5c:	ee8c 3a23 	vdiv.f32	s6, s24, s7
d0042a60:	ee33 3a66 	vsub.f32	s6, s6, s13
d0042a64:	eec3 3a27 	vdiv.f32	s7, s6, s15
d0042a68:	f1a9 0502 	sub.w	r5, r9, #2
d0042a6c:	2200      	movs	r2, #0
d0042a6e:	eeb6 3a00 	vmov.f32	s6, #96	; 0x3f000000  0.5
d0042a72:	fec6 7a81 	vmaxnm.f32	s15, s13, s2
d0042a76:	fec7 7ac9 	vminnm.f32	s15, s15, s18
d0042a7a:	ee77 7a83 	vadd.f32	s15, s15, s6
d0042a7e:	f835 6f02 	ldrh.w	r6, [r5, #2]!
d0042a82:	18a3      	adds	r3, r4, r2
d0042a84:	eefc 7ae7 	vcvt.u32.f32	s15, s15
d0042a88:	f003 0303 	and.w	r3, r3, #3
d0042a8c:	ee17 1a90 	vmov	r1, s15
d0042a90:	b289      	uxth	r1, r1
d0042a92:	428e      	cmp	r6, r1
d0042a94:	d90f      	bls.n	d0042ab6 <fillTriangleDitherBayerT+0x6f6>
d0042a96:	f81b 3003 	ldrb.w	r3, [fp, r3]
d0042a9a:	4563      	cmp	r3, ip
d0042a9c:	db0b      	blt.n	d0042ab6 <fillTriangleDitherBayerT+0x6f6>
d0042a9e:	8029      	strh	r1, [r5, #0]
d0042aa0:	4656      	mov	r6, sl
d0042aa2:	9902      	ldr	r1, [sp, #8]
d0042aa4:	b361      	cbz	r1, d0042b00 <fillTriangleDitherBayerT+0x740>
d0042aa6:	9901      	ldr	r1, [sp, #4]
d0042aa8:	428b      	cmp	r3, r1
d0042aaa:	da29      	bge.n	d0042b00 <fillTriangleDitherBayerT+0x740>
d0042aac:	eb02 0382 	add.w	r3, r2, r2, lsl #2
d0042ab0:	019b      	lsls	r3, r3, #6
d0042ab2:	f80e 6003 	strb.w	r6, [lr, r3]
d0042ab6:	3201      	adds	r2, #1
d0042ab8:	ee76 6aa3 	vadd.f32	s13, s13, s7
d0042abc:	4290      	cmp	r0, r2
d0042abe:	dcd8      	bgt.n	d0042a72 <fillTriangleDitherBayerT+0x6b2>
d0042ac0:	f1b8 0f00 	cmp.w	r8, #0
d0042ac4:	eb00 0380 	add.w	r3, r0, r0, lsl #2
d0042ac8:	ea4f 0240 	mov.w	r2, r0, lsl #1
d0042acc:	ea4f 1383 	mov.w	r3, r3, lsl #6
d0042ad0:	bfbc      	itt	lt
d0042ad2:	2202      	movlt	r2, #2
d0042ad4:	f44f 73a0 	movlt.w	r3, #320	; 0x140
d0042ad8:	4491      	add	r9, r2
d0042ada:	449e      	add	lr, r3
d0042adc:	ee07 0a90 	vmov	s15, r0
d0042ae0:	4404      	add	r4, r0
d0042ae2:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0042ae6:	42bc      	cmp	r4, r7
d0042ae8:	eee7 4a82 	vfma.f32	s9, s15, s4
d0042aec:	eee7 2a8a 	vfma.f32	s5, s15, s20
d0042af0:	dd91      	ble.n	d0042a16 <fillTriangleDitherBayerT+0x656>
d0042af2:	f8dd a010 	ldr.w	sl, [sp, #16]
d0042af6:	e5e4      	b.n	d00426c2 <fillTriangleDitherBayerT+0x302>
d0042af8:	d1f0      	bne.n	d0042adc <fillTriangleDitherBayerT+0x71c>
d0042afa:	eef0 3a41 	vmov.f32	s7, s2
d0042afe:	e7b3      	b.n	d0042a68 <fillTriangleDitherBayerT+0x6a8>
d0042b00:	9e05      	ldr	r6, [sp, #20]
d0042b02:	e7d3      	b.n	d0042aac <fillTriangleDitherBayerT+0x6ec>
d0042b04:	ee77 7ac1 	vsub.f32	s15, s15, s2
d0042b08:	ed9f 9a6e 	vldr	s18, [pc, #440]	; d0042cc4 <fillTriangleDitherBayerT+0x904>
d0042b0c:	eef4 7ac9 	vcmpe.f32	s15, s18
d0042b10:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0042b14:	f340 80c8 	ble.w	d0042ca8 <fillTriangleDitherBayerT+0x8e8>
d0042b18:	eef7 9a00 	vmov.f32	s19, #112	; 0x3f800000  1.0
d0042b1c:	ee74 4ae6 	vsub.f32	s9, s9, s13
d0042b20:	ee73 3ac6 	vsub.f32	s7, s7, s12
d0042b24:	ee89 9aa7 	vdiv.f32	s18, s19, s15
d0042b28:	eef6 7a00 	vmov.f32	s15, #96	; 0x3f000000  0.5
d0042b2c:	ee37 1ac1 	vsub.f32	s2, s15, s2
d0042b30:	ee07 4a90 	vmov	s15, r4
d0042b34:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0042b38:	ee77 7a81 	vadd.f32	s15, s15, s2
d0042b3c:	ee64 4a89 	vmul.f32	s9, s9, s18
d0042b40:	ee63 3a89 	vmul.f32	s7, s7, s18
d0042b44:	eee7 6aa4 	vfma.f32	s13, s15, s9
d0042b48:	eea7 6aa3 	vfma.f32	s12, s15, s7
d0042b4c:	ebca 190a 	rsb	r9, sl, sl, lsl #4
d0042b50:	4b58      	ldr	r3, [pc, #352]	; (d0042cb4 <fillTriangleDitherBayerT+0x8f4>)
d0042b52:	eb04 0e84 	add.w	lr, r4, r4, lsl #2
d0042b56:	4858      	ldr	r0, [pc, #352]	; (d0042cb8 <fillTriangleDitherBayerT+0x8f8>)
d0042b58:	eb04 1249 	add.w	r2, r4, r9, lsl #5
d0042b5c:	6819      	ldr	r1, [r3, #0]
d0042b5e:	f00a 0b03 	and.w	fp, sl, #3
d0042b62:	eb0a 138e 	add.w	r3, sl, lr, lsl #6
d0042b66:	eb00 0942 	add.w	r9, r0, r2, lsl #1
d0042b6a:	4a54      	ldr	r2, [pc, #336]	; (d0042cbc <fillTriangleDitherBayerT+0x8fc>)
d0042b6c:	f8cd a020 	str.w	sl, [sp, #32]
d0042b70:	eb01 0e03 	add.w	lr, r1, r3
d0042b74:	ed9f 1a52 	vldr	s2, [pc, #328]	; d0042cc0 <fillTriangleDitherBayerT+0x900>
d0042b78:	eb02 0b8b 	add.w	fp, r2, fp, lsl #2
d0042b7c:	f8dd a018 	ldr.w	sl, [sp, #24]
d0042b80:	e010      	b.n	d0042ba4 <fillTriangleDitherBayerT+0x7e4>
d0042b82:	ee07 0a90 	vmov	s15, r0
d0042b86:	4404      	add	r4, r0
d0042b88:	eb00 0380 	add.w	r3, r0, r0, lsl #2
d0042b8c:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0042b90:	42bc      	cmp	r4, r7
d0042b92:	eb09 0940 	add.w	r9, r9, r0, lsl #1
d0042b96:	eb0e 1e83 	add.w	lr, lr, r3, lsl #6
d0042b9a:	eee7 6aa4 	vfma.f32	s13, s15, s9
d0042b9e:	eea7 6aa3 	vfma.f32	s12, s15, s7
d0042ba2:	dc6d      	bgt.n	d0042c80 <fillTriangleDitherBayerT+0x8c0>
d0042ba4:	eba7 0804 	sub.w	r8, r7, r4
d0042ba8:	eef4 6ac1 	vcmpe.f32	s13, s2
d0042bac:	f108 0001 	add.w	r0, r8, #1
d0042bb0:	2830      	cmp	r0, #48	; 0x30
d0042bb2:	bfa8      	it	ge
d0042bb4:	2030      	movge	r0, #48	; 0x30
d0042bb6:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0042bba:	d9e2      	bls.n	d0042b82 <fillTriangleDitherBayerT+0x7c2>
d0042bbc:	f1b8 0f00 	cmp.w	r8, #0
d0042bc0:	ee86 9a26 	vdiv.f32	s18, s12, s13
d0042bc4:	dd5f      	ble.n	d0042c86 <fillTriangleDitherBayerT+0x8c6>
d0042bc6:	1e43      	subs	r3, r0, #1
d0042bc8:	ee07 3a90 	vmov	s15, r3
d0042bcc:	eef0 9a66 	vmov.f32	s19, s13
d0042bd0:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0042bd4:	eee7 9aa4 	vfma.f32	s19, s15, s9
d0042bd8:	eef4 9ac1 	vcmpe.f32	s19, s2
d0042bdc:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0042be0:	dd52      	ble.n	d0042c88 <fillTriangleDitherBayerT+0x8c8>
d0042be2:	eeb0 fa46 	vmov.f32	s30, s12
d0042be6:	eea7 faa3 	vfma.f32	s30, s15, s7
d0042bea:	ee8f da29 	vdiv.f32	s26, s30, s19
d0042bee:	ee3d da49 	vsub.f32	s26, s26, s18
d0042bf2:	eecd 9a27 	vdiv.f32	s19, s26, s15
d0042bf6:	f1a9 0502 	sub.w	r5, r9, #2
d0042bfa:	2100      	movs	r1, #0
d0042bfc:	eeb6 da00 	vmov.f32	s26, #96	; 0x3f000000  0.5
d0042c00:	fec9 7a22 	vmaxnm.f32	s15, s18, s5
d0042c04:	fec7 7ac2 	vminnm.f32	s15, s15, s4
d0042c08:	ee77 7a8d 	vadd.f32	s15, s15, s26
d0042c0c:	f835 6f02 	ldrh.w	r6, [r5, #2]!
d0042c10:	1862      	adds	r2, r4, r1
d0042c12:	eefc 7ae7 	vcvt.u32.f32	s15, s15
d0042c16:	f002 0203 	and.w	r2, r2, #3
d0042c1a:	ee17 3a90 	vmov	r3, s15
d0042c1e:	b29b      	uxth	r3, r3
d0042c20:	429e      	cmp	r6, r3
d0042c22:	d90f      	bls.n	d0042c44 <fillTriangleDitherBayerT+0x884>
d0042c24:	f81b 2002 	ldrb.w	r2, [fp, r2]
d0042c28:	4562      	cmp	r2, ip
d0042c2a:	db0b      	blt.n	d0042c44 <fillTriangleDitherBayerT+0x884>
d0042c2c:	802b      	strh	r3, [r5, #0]
d0042c2e:	4656      	mov	r6, sl
d0042c30:	9b02      	ldr	r3, [sp, #8]
d0042c32:	b363      	cbz	r3, d0042c8e <fillTriangleDitherBayerT+0x8ce>
d0042c34:	9b01      	ldr	r3, [sp, #4]
d0042c36:	429a      	cmp	r2, r3
d0042c38:	da29      	bge.n	d0042c8e <fillTriangleDitherBayerT+0x8ce>
d0042c3a:	eb01 0381 	add.w	r3, r1, r1, lsl #2
d0042c3e:	019b      	lsls	r3, r3, #6
d0042c40:	f80e 6003 	strb.w	r6, [lr, r3]
d0042c44:	3101      	adds	r1, #1
d0042c46:	ee39 9a29 	vadd.f32	s18, s18, s19
d0042c4a:	4288      	cmp	r0, r1
d0042c4c:	dcd8      	bgt.n	d0042c00 <fillTriangleDitherBayerT+0x840>
d0042c4e:	f1b8 0f00 	cmp.w	r8, #0
d0042c52:	eb00 0380 	add.w	r3, r0, r0, lsl #2
d0042c56:	ea4f 0240 	mov.w	r2, r0, lsl #1
d0042c5a:	ea4f 1383 	mov.w	r3, r3, lsl #6
d0042c5e:	bfbc      	itt	lt
d0042c60:	2202      	movlt	r2, #2
d0042c62:	f44f 73a0 	movlt.w	r3, #320	; 0x140
d0042c66:	4491      	add	r9, r2
d0042c68:	449e      	add	lr, r3
d0042c6a:	ee07 0a90 	vmov	s15, r0
d0042c6e:	4404      	add	r4, r0
d0042c70:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0042c74:	42bc      	cmp	r4, r7
d0042c76:	eee7 6aa4 	vfma.f32	s13, s15, s9
d0042c7a:	eea7 6aa3 	vfma.f32	s12, s15, s7
d0042c7e:	dd91      	ble.n	d0042ba4 <fillTriangleDitherBayerT+0x7e4>
d0042c80:	f8dd a020 	ldr.w	sl, [sp, #32]
d0042c84:	e623      	b.n	d00428ce <fillTriangleDitherBayerT+0x50e>
d0042c86:	d1f0      	bne.n	d0042c6a <fillTriangleDitherBayerT+0x8aa>
d0042c88:	eef0 9a62 	vmov.f32	s19, s5
d0042c8c:	e7b3      	b.n	d0042bf6 <fillTriangleDitherBayerT+0x836>
d0042c8e:	9e05      	ldr	r6, [sp, #20]
d0042c90:	e7d3      	b.n	d0042c3a <fillTriangleDitherBayerT+0x87a>
d0042c92:	2310      	movs	r3, #16
d0042c94:	9305      	str	r3, [sp, #20]
d0042c96:	2310      	movs	r3, #16
d0042c98:	9306      	str	r3, [sp, #24]
d0042c9a:	f7ff bbf9 	b.w	d0042490 <fillTriangleDitherBayerT+0xd0>
d0042c9e:	eeb0 aa41 	vmov.f32	s20, s2
d0042ca2:	eeb0 2a41 	vmov.f32	s4, s2
d0042ca6:	e68a      	b.n	d00429be <fillTriangleDitherBayerT+0x5fe>
d0042ca8:	eef0 3a62 	vmov.f32	s7, s5
d0042cac:	eef0 4a62 	vmov.f32	s9, s5
d0042cb0:	e74c      	b.n	d0042b4c <fillTriangleDitherBayerT+0x78c>
d0042cb2:	bf00      	nop
d0042cb4:	d012e7a4 	.word	0xd012e7a4
d0042cb8:	d00490a0 	.word	0xd00490a0
d0042cbc:	d0048740 	.word	0xd0048740
d0042cc0:	33d6bf95 	.word	0x33d6bf95
d0042cc4:	38d1b717 	.word	0x38d1b717

d0042cc8 <fillTriangleDitherBayer2Mode>:
d0042cc8:	eddf 7aca 	vldr	s15, [pc, #808]	; d0042ff4 <fillTriangleDitherBayer2Mode+0x32c>
d0042ccc:	eef4 0ae7 	vcmpe.f32	s1, s15
d0042cd0:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0042cd4:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0042cd8:	eeb4 1ae7 	vcmpe.f32	s2, s15
d0042cdc:	ed2d 8b10 	vpush	{d8-d15}
d0042ce0:	b08d      	sub	sp, #52	; 0x34
d0042ce2:	9303      	str	r3, [sp, #12]
d0042ce4:	bf94      	ite	ls
d0042ce6:	2301      	movls	r3, #1
d0042ce8:	2300      	movhi	r3, #0
d0042cea:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0042cee:	9202      	str	r2, [sp, #8]
d0042cf0:	f89d b0ac 	ldrb.w	fp, [sp, #172]	; 0xac
d0042cf4:	bf98      	it	ls
d0042cf6:	f043 0301 	orrls.w	r3, r3, #1
d0042cfa:	f8bd 20a8 	ldrh.w	r2, [sp, #168]	; 0xa8
d0042cfe:	e9cd 0100 	strd	r0, r1, [sp]
d0042d02:	f8bd 00a0 	ldrh.w	r0, [sp, #160]	; 0xa0
d0042d06:	f8bd 10a4 	ldrh.w	r1, [sp, #164]	; 0xa4
d0042d0a:	2b00      	cmp	r3, #0
d0042d0c:	f040 814d 	bne.w	d0042faa <fillTriangleDitherBayer2Mode+0x2e2>
d0042d10:	eeb4 0a67 	vcmp.f32	s0, s15
d0042d14:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0042d18:	f240 8147 	bls.w	d0042faa <fillTriangleDitherBayer2Mode+0x2e2>
d0042d1c:	eef7 7a00 	vmov.f32	s15, #112	; 0x3f800000  1.0
d0042d20:	ee06 1a90 	vmov	s13, r1
d0042d24:	ee07 0a10 	vmov	s14, r0
d0042d28:	eef8 5a66 	vcvt.f32.u32	s11, s13
d0042d2c:	ee87 3a80 	vdiv.f32	s6, s15, s0
d0042d30:	ee87 2a81 	vdiv.f32	s4, s15, s2
d0042d34:	ee87 0aa0 	vdiv.f32	s0, s15, s1
d0042d38:	ee07 2a90 	vmov	s15, r2
d0042d3c:	eeb8 4a67 	vcvt.f32.u32	s8, s15
d0042d40:	eddd 7a01 	vldr	s15, [sp, #4]
d0042d44:	eeb8 7a47 	vcvt.f32.u32	s14, s14
d0042d48:	eeb8 5ae7 	vcvt.f32.s32	s10, s15
d0042d4c:	eddd 7a03 	vldr	s15, [sp, #12]
d0042d50:	eef8 3ae7 	vcvt.f32.s32	s7, s15
d0042d54:	eddd 7a00 	vldr	s15, [sp]
d0042d58:	ee27 7a03 	vmul.f32	s14, s14, s6
d0042d5c:	eeb8 6ae7 	vcvt.f32.s32	s12, s15
d0042d60:	eddd 7a02 	vldr	s15, [sp, #8]
d0042d64:	eeb4 5ae3 	vcmpe.f32	s10, s7
d0042d68:	eef8 4ae7 	vcvt.f32.s32	s9, s15
d0042d6c:	eddd 7a26 	vldr	s15, [sp, #152]	; 0x98
d0042d70:	ee24 4a02 	vmul.f32	s8, s8, s4
d0042d74:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0042d78:	eef8 2ae7 	vcvt.f32.s32	s5, s15
d0042d7c:	eddd 7a27 	vldr	s15, [sp, #156]	; 0x9c
d0042d80:	ee65 5a80 	vmul.f32	s11, s11, s0
d0042d84:	eef8 6ae7 	vcvt.f32.s32	s13, s15
d0042d88:	f300 8114 	bgt.w	d0042fb4 <fillTriangleDitherBayer2Mode+0x2ec>
d0042d8c:	eeb4 5ae6 	vcmpe.f32	s10, s13
d0042d90:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0042d94:	f300 8201 	bgt.w	d004319a <fillTriangleDitherBayer2Mode+0x4d2>
d0042d98:	eef4 3ae6 	vcmpe.f32	s7, s13
d0042d9c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0042da0:	f300 8219 	bgt.w	d00431d6 <fillTriangleDitherBayer2Mode+0x50e>
d0042da4:	eef6 7a00 	vmov.f32	s15, #96	; 0x3f000000  0.5
d0042da8:	ee35 1a27 	vadd.f32	s2, s10, s15
d0042dac:	ee76 7aa7 	vadd.f32	s15, s13, s15
d0042db0:	eebd 1ac1 	vcvt.s32.f32	s2, s2
d0042db4:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d0042db8:	ee11 3a10 	vmov	r3, s2
d0042dbc:	ee17 2a90 	vmov	r2, s15
d0042dc0:	4293      	cmp	r3, r2
d0042dc2:	f000 80f2 	beq.w	d0042faa <fillTriangleDitherBayer2Mode+0x2e2>
d0042dc6:	ee76 8ac5 	vsub.f32	s17, s13, s10
d0042dca:	ed9f 1a8a 	vldr	s2, [pc, #552]	; d0042ff4 <fillTriangleDitherBayer2Mode+0x32c>
d0042dce:	eef4 8ac1 	vcmpe.f32	s17, s2
d0042dd2:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0042dd6:	f240 80e8 	bls.w	d0042faa <fillTriangleDitherBayer2Mode+0x2e2>
d0042dda:	eef7 9a00 	vmov.f32	s19, #112	; 0x3f800000  1.0
d0042dde:	ee33 9ac5 	vsub.f32	s18, s7, s10
d0042de2:	ee72 0ac6 	vsub.f32	s1, s5, s12
d0042de6:	eec9 7aa8 	vdiv.f32	s15, s19, s17
d0042dea:	eeb4 9ac1 	vcmpe.f32	s18, s2
d0042dee:	ee32 8a43 	vsub.f32	s16, s4, s6
d0042df2:	ee74 8a47 	vsub.f32	s17, s8, s14
d0042df6:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0042dfa:	ee60 0aa7 	vmul.f32	s1, s1, s15
d0042dfe:	ee28 8a27 	vmul.f32	s16, s16, s15
d0042e02:	ee68 8aa7 	vmul.f32	s17, s17, s15
d0042e06:	f300 80ff 	bgt.w	d0043008 <fillTriangleDitherBayer2Mode+0x340>
d0042e0a:	eef1 7a04 	vmov.f32	s15, #20	; 0x40a00000  5.0
d0042e0e:	ed9f ba7c 	vldr	s22, [pc, #496]	; d0043000 <fillTriangleDitherBayer2Mode+0x338>
d0042e12:	eddf 9a79 	vldr	s19, [pc, #484]	; d0042ff8 <fillTriangleDitherBayer2Mode+0x330>
d0042e16:	ee76 fae3 	vsub.f32	s31, s13, s7
d0042e1a:	fec1 1a8b 	vmaxnm.f32	s3, s3, s22
d0042e1e:	fec1 7ae7 	vminnm.f32	s15, s3, s15
d0042e22:	ee67 7aa9 	vmul.f32	s15, s15, s19
d0042e26:	eef4 fac1 	vcmpe.f32	s31, s2
d0042e2a:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d0042e2e:	ee17 3a90 	vmov	r3, s15
d0042e32:	edcd 7a00 	vstr	s15, [sp]
d0042e36:	2b10      	cmp	r3, #16
d0042e38:	bfa8      	it	ge
d0042e3a:	2310      	movge	r3, #16
d0042e3c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0042e40:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
d0042e44:	9302      	str	r3, [sp, #8]
d0042e46:	f340 80b0 	ble.w	d0042faa <fillTriangleDitherBayer2Mode+0x2e2>
d0042e4a:	eef0 ea4b 	vmov.f32	s29, s22
d0042e4e:	eef0 ba4b 	vmov.f32	s23, s22
d0042e52:	eeb7 1a00 	vmov.f32	s2, #112	; 0x3f800000  1.0
d0042e56:	eddf 1a67 	vldr	s3, [pc, #412]	; d0042ff4 <fillTriangleDitherBayer2Mode+0x32c>
d0042e5a:	ee72 2ae4 	vsub.f32	s5, s5, s9
d0042e5e:	ee32 2a40 	vsub.f32	s4, s4, s0
d0042e62:	eec1 7a2f 	vdiv.f32	s15, s2, s31
d0042e66:	eeb4 9ae1 	vcmpe.f32	s18, s3
d0042e6a:	ee34 4a65 	vsub.f32	s8, s8, s11
d0042e6e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0042e72:	ee62 2aa7 	vmul.f32	s5, s5, s15
d0042e76:	ee24 fa27 	vmul.f32	s30, s8, s15
d0042e7a:	edcd 2a06 	vstr	s5, [sp, #24]
d0042e7e:	ee62 2a27 	vmul.f32	s5, s4, s15
d0042e82:	edcd 2a05 	vstr	s5, [sp, #20]
d0042e86:	f300 80f7 	bgt.w	d0043078 <fillTriangleDitherBayer2Mode+0x3b0>
d0042e8a:	eefd 7ae3 	vcvt.s32.f32	s15, s7
d0042e8e:	edcd 7a03 	vstr	s15, [sp, #12]
d0042e92:	eefd 7ae6 	vcvt.s32.f32	s15, s13
d0042e96:	f240 123f 	movw	r2, #319	; 0x13f
d0042e9a:	9903      	ldr	r1, [sp, #12]
d0042e9c:	ee17 3a90 	vmov	r3, s15
d0042ea0:	ea21 78e1 	bic.w	r8, r1, r1, asr #31
d0042ea4:	3b01      	subs	r3, #1
d0042ea6:	4293      	cmp	r3, r2
d0042ea8:	bfa8      	it	ge
d0042eaa:	4613      	movge	r3, r2
d0042eac:	4543      	cmp	r3, r8
d0042eae:	db7c      	blt.n	d0042faa <fillTriangleDitherBayer2Mode+0x2e2>
d0042eb0:	ee07 8a90 	vmov	s15, r8
d0042eb4:	eef6 6a00 	vmov.f32	s13, #96	; 0x3f000000  0.5
d0042eb8:	3301      	adds	r3, #1
d0042eba:	ed9d ba06 	vldr	s22, [sp, #24]
d0042ebe:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0042ec2:	eddd aa05 	vldr	s21, [sp, #20]
d0042ec6:	ed9f 9a4b 	vldr	s18, [pc, #300]	; d0042ff4 <fillTriangleDitherBayer2Mode+0x32c>
d0042eca:	ed9f 1a4c 	vldr	s2, [pc, #304]	; d0042ffc <fillTriangleDitherBayer2Mode+0x334>
d0042ece:	ee77 7aa6 	vadd.f32	s15, s15, s13
d0042ed2:	ed9f 4a4b 	vldr	s8, [pc, #300]	; d0043000 <fillTriangleDitherBayer2Mode+0x338>
d0042ed6:	eddf 1a4b 	vldr	s3, [pc, #300]	; d0043004 <fillTriangleDitherBayer2Mode+0x33c>
d0042eda:	9301      	str	r3, [sp, #4]
d0042edc:	ee37 5ac5 	vsub.f32	s10, s15, s10
d0042ee0:	ee77 3ae3 	vsub.f32	s7, s15, s7
d0042ee4:	eea0 6a85 	vfma.f32	s12, s1, s10
d0042ee8:	eea8 3a05 	vfma.f32	s6, s16, s10
d0042eec:	eea8 7a85 	vfma.f32	s14, s17, s10
d0042ef0:	eeeb 4a23 	vfma.f32	s9, s22, s7
d0042ef4:	eeaa 0aa3 	vfma.f32	s0, s21, s7
d0042ef8:	eeef 5a23 	vfma.f32	s11, s30, s7
d0042efc:	e033      	b.n	d0042f66 <fillTriangleDitherBayer2Mode+0x29e>
d0042efe:	eeb0 2a47 	vmov.f32	s4, s14
d0042f02:	eef0 9a43 	vmov.f32	s19, s6
d0042f06:	eef0 6a46 	vmov.f32	s13, s12
d0042f0a:	eef0 3a65 	vmov.f32	s7, s11
d0042f0e:	eeb0 5a40 	vmov.f32	s10, s0
d0042f12:	eef0 2a64 	vmov.f32	s5, s9
d0042f16:	fefa 7a66 	vrintp.f32	s15, s13
d0042f1a:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d0042f1e:	f240 13df 	movw	r3, #479	; 0x1df
d0042f22:	ee17 4a90 	vmov	r4, s15
d0042f26:	fefa 7a62 	vrintp.f32	s15, s5
d0042f2a:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d0042f2e:	3c01      	subs	r4, #1
d0042f30:	ee17 1a90 	vmov	r1, s15
d0042f34:	429c      	cmp	r4, r3
d0042f36:	ea21 71e1 	bic.w	r1, r1, r1, asr #31
d0042f3a:	bfa8      	it	ge
d0042f3c:	461c      	movge	r4, r3
d0042f3e:	42a1      	cmp	r1, r4
d0042f40:	f340 817b 	ble.w	d004323a <fillTriangleDitherBayer2Mode+0x572>
d0042f44:	f108 0801 	add.w	r8, r8, #1
d0042f48:	9b01      	ldr	r3, [sp, #4]
d0042f4a:	ee36 6a20 	vadd.f32	s12, s12, s1
d0042f4e:	4598      	cmp	r8, r3
d0042f50:	ee33 3a08 	vadd.f32	s6, s6, s16
d0042f54:	ee37 7a28 	vadd.f32	s14, s14, s17
d0042f58:	ee74 4a8b 	vadd.f32	s9, s9, s22
d0042f5c:	ee30 0a2a 	vadd.f32	s0, s0, s21
d0042f60:	ee75 5a8f 	vadd.f32	s11, s11, s30
d0042f64:	d021      	beq.n	d0042faa <fillTriangleDitherBayer2Mode+0x2e2>
d0042f66:	eeb4 6ae4 	vcmpe.f32	s12, s9
d0042f6a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0042f6e:	dcc6      	bgt.n	d0042efe <fillTriangleDitherBayer2Mode+0x236>
d0042f70:	eeb0 2a65 	vmov.f32	s4, s11
d0042f74:	eef0 9a40 	vmov.f32	s19, s0
d0042f78:	eef0 6a64 	vmov.f32	s13, s9
d0042f7c:	eef0 3a47 	vmov.f32	s7, s14
d0042f80:	eeb0 5a43 	vmov.f32	s10, s6
d0042f84:	eef0 2a46 	vmov.f32	s5, s12
d0042f88:	e7c5      	b.n	d0042f16 <fillTriangleDitherBayer2Mode+0x24e>
d0042f8a:	eddd 6a08 	vldr	s13, [sp, #32]
d0042f8e:	ed9d 6a09 	vldr	s12, [sp, #36]	; 0x24
d0042f92:	ed9d fa0a 	vldr	s30, [sp, #40]	; 0x28
d0042f96:	ed9d 0a0b 	vldr	s0, [sp, #44]	; 0x2c
d0042f9a:	eddf 7a16 	vldr	s15, [pc, #88]	; d0042ff4 <fillTriangleDitherBayer2Mode+0x32c>
d0042f9e:	eef4 fae7 	vcmpe.f32	s31, s15
d0042fa2:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0042fa6:	f73f af74 	bgt.w	d0042e92 <fillTriangleDitherBayer2Mode+0x1ca>
d0042faa:	b00d      	add	sp, #52	; 0x34
d0042fac:	ecbd 8b10 	vpop	{d8-d15}
d0042fb0:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0042fb4:	eef4 3ae6 	vcmpe.f32	s7, s13
d0042fb8:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0042fbc:	f340 8124 	ble.w	d0043208 <fillTriangleDitherBayer2Mode+0x540>
d0042fc0:	eeb0 8a44 	vmov.f32	s16, s8
d0042fc4:	eef0 0a42 	vmov.f32	s1, s4
d0042fc8:	eeb0 1a66 	vmov.f32	s2, s13
d0042fcc:	eef0 7a62 	vmov.f32	s15, s5
d0042fd0:	eeb0 4a47 	vmov.f32	s8, s14
d0042fd4:	eeb0 2a43 	vmov.f32	s4, s6
d0042fd8:	eef0 6a45 	vmov.f32	s13, s10
d0042fdc:	eef0 2a46 	vmov.f32	s5, s12
d0042fe0:	eeb0 7a48 	vmov.f32	s14, s16
d0042fe4:	eeb0 3a60 	vmov.f32	s6, s1
d0042fe8:	eeb0 5a41 	vmov.f32	s10, s2
d0042fec:	eeb0 6a67 	vmov.f32	s12, s15
d0042ff0:	e6d8      	b.n	d0042da4 <fillTriangleDitherBayer2Mode+0xdc>
d0042ff2:	bf00      	nop
d0042ff4:	38d1b717 	.word	0x38d1b717
d0042ff8:	404ccccd 	.word	0x404ccccd
d0042ffc:	33d6bf95 	.word	0x33d6bf95
d0043000:	00000000 	.word	0x00000000
d0043004:	477fff00 	.word	0x477fff00
d0043008:	ee89 aa89 	vdiv.f32	s20, s19, s18
d004300c:	ed1f ba06 	vldr	s22, [pc, #-24]	; d0042ff8 <fillTriangleDitherBayer2Mode+0x330>
d0043010:	ed5f 9a05 	vldr	s19, [pc, #-20]	; d0043000 <fillTriangleDitherBayer2Mode+0x338>
d0043014:	fec1 1aa9 	vmaxnm.f32	s3, s3, s19
d0043018:	eef1 7a04 	vmov.f32	s15, #20	; 0x40a00000  5.0
d004301c:	ee74 aac6 	vsub.f32	s21, s9, s12
d0043020:	ee76 fae3 	vsub.f32	s31, s13, s7
d0043024:	fec1 7ae7 	vminnm.f32	s15, s3, s15
d0043028:	ee67 7a8b 	vmul.f32	s15, s15, s22
d004302c:	ee70 1a43 	vsub.f32	s3, s0, s6
d0043030:	eef4 fac1 	vcmpe.f32	s31, s2
d0043034:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d0043038:	ee35 bac7 	vsub.f32	s22, s11, s14
d004303c:	ee17 3a90 	vmov	r3, s15
d0043040:	edcd 7a00 	vstr	s15, [sp]
d0043044:	2b10      	cmp	r3, #16
d0043046:	ee6a 7a8a 	vmul.f32	s15, s21, s20
d004304a:	ee2b ba0a 	vmul.f32	s22, s22, s20
d004304e:	bfa8      	it	ge
d0043050:	2310      	movge	r3, #16
d0043052:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0043056:	eef0 ba67 	vmov.f32	s23, s15
d004305a:	ee61 7a8a 	vmul.f32	s15, s3, s20
d004305e:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
d0043062:	9302      	str	r3, [sp, #8]
d0043064:	eef0 ea67 	vmov.f32	s29, s15
d0043068:	f73f aef3 	bgt.w	d0042e52 <fillTriangleDitherBayer2Mode+0x18a>
d004306c:	eeb0 fa69 	vmov.f32	s30, s19
d0043070:	edcd 9a05 	vstr	s19, [sp, #20]
d0043074:	edcd 9a06 	vstr	s19, [sp, #24]
d0043078:	eefd 7ae3 	vcvt.s32.f32	s15, s7
d004307c:	f240 123f 	movw	r2, #319	; 0x13f
d0043080:	ee17 3a90 	vmov	r3, s15
d0043084:	edcd 7a03 	vstr	s15, [sp, #12]
d0043088:	eefd 7ac5 	vcvt.s32.f32	s15, s10
d004308c:	3b01      	subs	r3, #1
d004308e:	ee17 8a90 	vmov	r8, s15
d0043092:	4293      	cmp	r3, r2
d0043094:	ea28 78e8 	bic.w	r8, r8, r8, asr #31
d0043098:	bfa8      	it	ge
d004309a:	4613      	movge	r3, r2
d004309c:	4543      	cmp	r3, r8
d004309e:	f6ff af7c 	blt.w	d0042f9a <fillTriangleDitherBayer2Mode+0x2d2>
d00430a2:	eef6 7a00 	vmov.f32	s15, #96	; 0x3f000000  0.5
d00430a6:	3301      	adds	r3, #1
d00430a8:	eeb0 aa46 	vmov.f32	s20, s12
d00430ac:	ed5f da2d 	vldr	s27, [pc, #-180]	; d0042ffc <fillTriangleDitherBayer2Mode+0x334>
d00430b0:	eef0 aa46 	vmov.f32	s21, s12
d00430b4:	ed5f 2a2e 	vldr	s5, [pc, #-184]	; d0043000 <fillTriangleDitherBayer2Mode+0x338>
d00430b8:	ee37 4ac5 	vsub.f32	s8, s15, s10
d00430bc:	ee07 8a90 	vmov	s15, r8
d00430c0:	eeb0 da43 	vmov.f32	s26, s6
d00430c4:	ed1f 1a31 	vldr	s2, [pc, #-196]	; d0043004 <fillTriangleDitherBayer2Mode+0x33c>
d00430c8:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d00430cc:	9301      	str	r3, [sp, #4]
d00430ce:	eef0 ca47 	vmov.f32	s25, s14
d00430d2:	edcd 6a08 	vstr	s13, [sp, #32]
d00430d6:	eeb0 ea6b 	vmov.f32	s28, s23
d00430da:	ed8d 6a09 	vstr	s12, [sp, #36]	; 0x24
d00430de:	ee77 7a84 	vadd.f32	s15, s15, s8
d00430e2:	ed8d fa0a 	vstr	s30, [sp, #40]	; 0x28
d00430e6:	eeb0 ca43 	vmov.f32	s24, s6
d00430ea:	ed8d 0a0b 	vstr	s0, [sp, #44]	; 0x2c
d00430ee:	eea7 aaab 	vfma.f32	s20, s15, s23
d00430f2:	eef0 ba47 	vmov.f32	s23, s14
d00430f6:	eee0 aaa7 	vfma.f32	s21, s1, s15
d00430fa:	eea8 da27 	vfma.f32	s26, s16, s15
d00430fe:	eee8 caa7 	vfma.f32	s25, s17, s15
d0043102:	eea7 caae 	vfma.f32	s24, s15, s29
d0043106:	eee7 ba8b 	vfma.f32	s23, s15, s22
d004310a:	e034      	b.n	d0043176 <fillTriangleDitherBayer2Mode+0x4ae>
d004310c:	eef0 1a6c 	vmov.f32	s3, s25
d0043110:	eeb0 2a4d 	vmov.f32	s4, s26
d0043114:	eef0 7a6a 	vmov.f32	s15, s21
d0043118:	eeb0 6a6b 	vmov.f32	s12, s23
d004311c:	eef0 6a4c 	vmov.f32	s13, s24
d0043120:	eeb0 4a4a 	vmov.f32	s8, s20
d0043124:	feba 0a67 	vrintp.f32	s0, s15
d0043128:	eebd 0ac0 	vcvt.s32.f32	s0, s0
d004312c:	feba 9a44 	vrintp.f32	s18, s8
d0043130:	f240 13df 	movw	r3, #479	; 0x1df
d0043134:	ee10 4a10 	vmov	r4, s0
d0043138:	eebd 0ac9 	vcvt.s32.f32	s0, s18
d004313c:	3c01      	subs	r4, #1
d004313e:	ee10 1a10 	vmov	r1, s0
d0043142:	429c      	cmp	r4, r3
d0043144:	ea21 71e1 	bic.w	r1, r1, r1, asr #31
d0043148:	bfa8      	it	ge
d004314a:	461c      	movge	r4, r3
d004314c:	428c      	cmp	r4, r1
d004314e:	f280 8159 	bge.w	d0043404 <fillTriangleDitherBayer2Mode+0x73c>
d0043152:	f108 0801 	add.w	r8, r8, #1
d0043156:	9b01      	ldr	r3, [sp, #4]
d0043158:	ee7a aaa0 	vadd.f32	s21, s21, s1
d004315c:	4598      	cmp	r8, r3
d004315e:	ee3d da08 	vadd.f32	s26, s26, s16
d0043162:	ee7c caa8 	vadd.f32	s25, s25, s17
d0043166:	ee3a aa0e 	vadd.f32	s20, s20, s28
d004316a:	ee3c ca2e 	vadd.f32	s24, s24, s29
d004316e:	ee7b ba8b 	vadd.f32	s23, s23, s22
d0043172:	f43f af0a 	beq.w	d0042f8a <fillTriangleDitherBayer2Mode+0x2c2>
d0043176:	eef4 aaca 	vcmpe.f32	s21, s20
d004317a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004317e:	dcc5      	bgt.n	d004310c <fillTriangleDitherBayer2Mode+0x444>
d0043180:	eef0 1a6b 	vmov.f32	s3, s23
d0043184:	eeb0 2a4c 	vmov.f32	s4, s24
d0043188:	eef0 7a4a 	vmov.f32	s15, s20
d004318c:	eeb0 6a6c 	vmov.f32	s12, s25
d0043190:	eef0 6a4d 	vmov.f32	s13, s26
d0043194:	eeb0 4a6a 	vmov.f32	s8, s21
d0043198:	e7c4      	b.n	d0043124 <fillTriangleDitherBayer2Mode+0x45c>
d004319a:	eeb0 1a45 	vmov.f32	s2, s10
d004319e:	eeb0 5a66 	vmov.f32	s10, s13
d00431a2:	eeb0 8a47 	vmov.f32	s16, s14
d00431a6:	eef0 6a41 	vmov.f32	s13, s2
d00431aa:	eef0 0a43 	vmov.f32	s1, s6
d00431ae:	eef0 7a46 	vmov.f32	s15, s12
d00431b2:	eef4 3ae6 	vcmpe.f32	s7, s13
d00431b6:	eeb0 7a44 	vmov.f32	s14, s8
d00431ba:	eeb0 3a42 	vmov.f32	s6, s4
d00431be:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00431c2:	eeb0 6a62 	vmov.f32	s12, s5
d00431c6:	eeb0 4a48 	vmov.f32	s8, s16
d00431ca:	eeb0 2a60 	vmov.f32	s4, s1
d00431ce:	eef0 2a67 	vmov.f32	s5, s15
d00431d2:	f77f ade7 	ble.w	d0042da4 <fillTriangleDitherBayer2Mode+0xdc>
d00431d6:	eeb0 8a65 	vmov.f32	s16, s11
d00431da:	eef0 0a40 	vmov.f32	s1, s0
d00431de:	eeb0 1a63 	vmov.f32	s2, s7
d00431e2:	eef0 7a64 	vmov.f32	s15, s9
d00431e6:	eef0 5a44 	vmov.f32	s11, s8
d00431ea:	eeb0 0a42 	vmov.f32	s0, s4
d00431ee:	eef0 3a66 	vmov.f32	s7, s13
d00431f2:	eef0 4a62 	vmov.f32	s9, s5
d00431f6:	eeb0 4a48 	vmov.f32	s8, s16
d00431fa:	eeb0 2a60 	vmov.f32	s4, s1
d00431fe:	eef0 6a41 	vmov.f32	s13, s2
d0043202:	eef0 2a67 	vmov.f32	s5, s15
d0043206:	e5cd      	b.n	d0042da4 <fillTriangleDitherBayer2Mode+0xdc>
d0043208:	eeb0 8a47 	vmov.f32	s16, s14
d004320c:	eef0 0a43 	vmov.f32	s1, s6
d0043210:	eeb0 1a45 	vmov.f32	s2, s10
d0043214:	eef0 7a46 	vmov.f32	s15, s12
d0043218:	eeb0 7a65 	vmov.f32	s14, s11
d004321c:	eeb0 3a40 	vmov.f32	s6, s0
d0043220:	eeb0 5a63 	vmov.f32	s10, s7
d0043224:	eeb0 6a64 	vmov.f32	s12, s9
d0043228:	eef0 5a48 	vmov.f32	s11, s16
d004322c:	eeb0 0a60 	vmov.f32	s0, s1
d0043230:	eef0 3a41 	vmov.f32	s7, s2
d0043234:	eef0 4a67 	vmov.f32	s9, s15
d0043238:	e5ae      	b.n	d0042d98 <fillTriangleDitherBayer2Mode+0xd0>
d004323a:	ee76 6ae2 	vsub.f32	s13, s13, s5
d004323e:	eef4 6ac9 	vcmpe.f32	s13, s18
d0043242:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0043246:	f340 8207 	ble.w	d0043658 <fillTriangleDitherBayer2Mode+0x990>
d004324a:	eef7 7a00 	vmov.f32	s15, #112	; 0x3f800000  1.0
d004324e:	ee79 9ac5 	vsub.f32	s19, s19, s10
d0043252:	ee32 2a63 	vsub.f32	s4, s4, s7
d0043256:	ee87 aaa6 	vdiv.f32	s20, s15, s13
d004325a:	eef6 7a00 	vmov.f32	s15, #96	; 0x3f000000  0.5
d004325e:	ee77 2ae2 	vsub.f32	s5, s15, s5
d0043262:	ee07 1a90 	vmov	s15, r1
d0043266:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d004326a:	ee77 7aa2 	vadd.f32	s15, s15, s5
d004326e:	ee69 9a8a 	vmul.f32	s19, s19, s20
d0043272:	ee22 aa0a 	vmul.f32	s20, s4, s20
d0043276:	eea7 5aa9 	vfma.f32	s10, s15, s19
d004327a:	eee7 3a8a 	vfma.f32	s7, s15, s20
d004327e:	ebc8 1208 	rsb	r2, r8, r8, lsl #4
d0043282:	4dd3      	ldr	r5, [pc, #844]	; (d00435d0 <fillTriangleDitherBayer2Mode+0x908>)
d0043284:	eb01 0381 	add.w	r3, r1, r1, lsl #2
d0043288:	48d2      	ldr	r0, [pc, #840]	; (d00435d4 <fillTriangleDitherBayer2Mode+0x90c>)
d004328a:	eb01 1242 	add.w	r2, r1, r2, lsl #5
d004328e:	682f      	ldr	r7, [r5, #0]
d0043290:	eb08 1383 	add.w	r3, r8, r3, lsl #6
d0043294:	f008 0503 	and.w	r5, r8, #3
d0043298:	eb00 0942 	add.w	r9, r0, r2, lsl #1
d004329c:	4ace      	ldr	r2, [pc, #824]	; (d00435d8 <fillTriangleDitherBayer2Mode+0x910>)
d004329e:	441f      	add	r7, r3
d00432a0:	f8cd 800c 	str.w	r8, [sp, #12]
d00432a4:	eb02 0385 	add.w	r3, r2, r5, lsl #2
d00432a8:	eeb6 2a00 	vmov.f32	s4, #96	; 0x3f000000  0.5
d00432ac:	4698      	mov	r8, r3
d00432ae:	e010      	b.n	d00432d2 <fillTriangleDitherBayer2Mode+0x60a>
d00432b0:	ee07 3a90 	vmov	s15, r3
d00432b4:	4419      	add	r1, r3
d00432b6:	eb03 0283 	add.w	r2, r3, r3, lsl #2
d00432ba:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d00432be:	428c      	cmp	r4, r1
d00432c0:	eb09 0943 	add.w	r9, r9, r3, lsl #1
d00432c4:	eb07 1782 	add.w	r7, r7, r2, lsl #6
d00432c8:	eea7 5aa9 	vfma.f32	s10, s15, s19
d00432cc:	eee7 3a8a 	vfma.f32	s7, s15, s20
d00432d0:	db62      	blt.n	d0043398 <fillTriangleDitherBayer2Mode+0x6d0>
d00432d2:	eba4 0c01 	sub.w	ip, r4, r1
d00432d6:	eeb4 5ac1 	vcmpe.f32	s10, s2
d00432da:	f10c 0301 	add.w	r3, ip, #1
d00432de:	2b30      	cmp	r3, #48	; 0x30
d00432e0:	bfa8      	it	ge
d00432e2:	2330      	movge	r3, #48	; 0x30
d00432e4:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00432e8:	d9e2      	bls.n	d00432b0 <fillTriangleDitherBayer2Mode+0x5e8>
d00432ea:	f1bc 0f00 	cmp.w	ip, #0
d00432ee:	eec3 7a85 	vdiv.f32	s15, s7, s10
d00432f2:	dd54      	ble.n	d004339e <fillTriangleDitherBayer2Mode+0x6d6>
d00432f4:	1e5a      	subs	r2, r3, #1
d00432f6:	ee06 2a90 	vmov	s13, r2
d00432fa:	eef0 2a45 	vmov.f32	s5, s10
d00432fe:	eef8 6ae6 	vcvt.f32.s32	s13, s13
d0043302:	eee6 2aa9 	vfma.f32	s5, s13, s19
d0043306:	eef4 2ac1 	vcmpe.f32	s5, s2
d004330a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004330e:	dd47      	ble.n	d00433a0 <fillTriangleDitherBayer2Mode+0x6d8>
d0043310:	eeb0 ca63 	vmov.f32	s24, s7
d0043314:	9a00      	ldr	r2, [sp, #0]
d0043316:	2a0f      	cmp	r2, #15
d0043318:	eea6 ca8a 	vfma.f32	s24, s13, s20
d004331c:	eecc ba22 	vdiv.f32	s23, s24, s5
d0043320:	ee7b bae7 	vsub.f32	s23, s23, s15
d0043324:	eecb 2aa6 	vdiv.f32	s5, s23, s13
d0043328:	dd3f      	ble.n	d00433aa <fillTriangleDitherBayer2Mode+0x6e2>
d004332a:	f1a9 0602 	sub.w	r6, r9, #2
d004332e:	2200      	movs	r2, #0
d0043330:	fec7 6a84 	vmaxnm.f32	s13, s15, s8
d0043334:	fec6 6ae1 	vminnm.f32	s13, s13, s3
d0043338:	eb02 0082 	add.w	r0, r2, r2, lsl #2
d004333c:	f836 ef02 	ldrh.w	lr, [r6, #2]!
d0043340:	3201      	adds	r2, #1
d0043342:	ee76 6a82 	vadd.f32	s13, s13, s4
d0043346:	0185      	lsls	r5, r0, #6
d0043348:	ee77 7aa2 	vadd.f32	s15, s15, s5
d004334c:	eefc 6ae6 	vcvt.u32.f32	s13, s13
d0043350:	ee16 0a90 	vmov	r0, s13
d0043354:	b280      	uxth	r0, r0
d0043356:	4586      	cmp	lr, r0
d0043358:	d903      	bls.n	d0043362 <fillTriangleDitherBayer2Mode+0x69a>
d004335a:	8030      	strh	r0, [r6, #0]
d004335c:	f04f 0010 	mov.w	r0, #16
d0043360:	5578      	strb	r0, [r7, r5]
d0043362:	4293      	cmp	r3, r2
d0043364:	dce4      	bgt.n	d0043330 <fillTriangleDitherBayer2Mode+0x668>
d0043366:	f1bc 0f00 	cmp.w	ip, #0
d004336a:	eb03 0283 	add.w	r2, r3, r3, lsl #2
d004336e:	ea4f 0043 	mov.w	r0, r3, lsl #1
d0043372:	ea4f 1282 	mov.w	r2, r2, lsl #6
d0043376:	bfbc      	itt	lt
d0043378:	2002      	movlt	r0, #2
d004337a:	f44f 72a0 	movlt.w	r2, #320	; 0x140
d004337e:	4481      	add	r9, r0
d0043380:	4417      	add	r7, r2
d0043382:	ee07 3a90 	vmov	s15, r3
d0043386:	4419      	add	r1, r3
d0043388:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d004338c:	428c      	cmp	r4, r1
d004338e:	eea7 5aa9 	vfma.f32	s10, s15, s19
d0043392:	eee7 3a8a 	vfma.f32	s7, s15, s20
d0043396:	da9c      	bge.n	d00432d2 <fillTriangleDitherBayer2Mode+0x60a>
d0043398:	f8dd 800c 	ldr.w	r8, [sp, #12]
d004339c:	e5d2      	b.n	d0042f44 <fillTriangleDitherBayer2Mode+0x27c>
d004339e:	d1f0      	bne.n	d0043382 <fillTriangleDitherBayer2Mode+0x6ba>
d00433a0:	9a00      	ldr	r2, [sp, #0]
d00433a2:	eef0 2a44 	vmov.f32	s5, s8
d00433a6:	2a0f      	cmp	r2, #15
d00433a8:	dcbf      	bgt.n	d004332a <fillTriangleDitherBayer2Mode+0x662>
d00433aa:	2a00      	cmp	r2, #0
d00433ac:	f340 8136 	ble.w	d004361c <fillTriangleDitherBayer2Mode+0x954>
d00433b0:	9404      	str	r4, [sp, #16]
d00433b2:	f1a9 0e02 	sub.w	lr, r9, #2
d00433b6:	2200      	movs	r2, #0
d00433b8:	9c02      	ldr	r4, [sp, #8]
d00433ba:	fec7 6a84 	vmaxnm.f32	s13, s15, s8
d00433be:	fec6 6ae1 	vminnm.f32	s13, s13, s3
d00433c2:	ee76 6a82 	vadd.f32	s13, s13, s4
d00433c6:	f83e af02 	ldrh.w	sl, [lr, #2]!
d00433ca:	188e      	adds	r6, r1, r2
d00433cc:	eb02 0582 	add.w	r5, r2, r2, lsl #2
d00433d0:	ee77 7aa2 	vadd.f32	s15, s15, s5
d00433d4:	3201      	adds	r2, #1
d00433d6:	eefc 6ae6 	vcvt.u32.f32	s13, s13
d00433da:	f006 0603 	and.w	r6, r6, #3
d00433de:	01ad      	lsls	r5, r5, #6
d00433e0:	ee16 0a90 	vmov	r0, s13
d00433e4:	b280      	uxth	r0, r0
d00433e6:	4582      	cmp	sl, r0
d00433e8:	d908      	bls.n	d00433fc <fillTriangleDitherBayer2Mode+0x734>
d00433ea:	f818 6006 	ldrb.w	r6, [r8, r6]
d00433ee:	f8ae 0000 	strh.w	r0, [lr]
d00433f2:	42a6      	cmp	r6, r4
d00433f4:	bfac      	ite	ge
d00433f6:	4658      	movge	r0, fp
d00433f8:	2010      	movlt	r0, #16
d00433fa:	5578      	strb	r0, [r7, r5]
d00433fc:	4293      	cmp	r3, r2
d00433fe:	dcdc      	bgt.n	d00433ba <fillTriangleDitherBayer2Mode+0x6f2>
d0043400:	9c04      	ldr	r4, [sp, #16]
d0043402:	e7b0      	b.n	d0043366 <fillTriangleDitherBayer2Mode+0x69e>
d0043404:	ee77 7ac4 	vsub.f32	s15, s15, s8
d0043408:	ed9f 0a74 	vldr	s0, [pc, #464]	; d00435dc <fillTriangleDitherBayer2Mode+0x914>
d004340c:	eef4 7ac0 	vcmpe.f32	s15, s0
d0043410:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0043414:	f340 8125 	ble.w	d0043662 <fillTriangleDitherBayer2Mode+0x99a>
d0043418:	eeb7 9a00 	vmov.f32	s18, #112	; 0x3f800000  1.0
d004341c:	ee32 2a66 	vsub.f32	s4, s4, s13
d0043420:	ee71 1ac6 	vsub.f32	s3, s3, s12
d0043424:	ee89 0a27 	vdiv.f32	s0, s18, s15
d0043428:	eef6 7a00 	vmov.f32	s15, #96	; 0x3f000000  0.5
d004342c:	ee37 4ac4 	vsub.f32	s8, s15, s8
d0043430:	ee07 1a90 	vmov	s15, r1
d0043434:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0043438:	ee77 7a84 	vadd.f32	s15, s15, s8
d004343c:	ee22 2a00 	vmul.f32	s4, s4, s0
d0043440:	ee61 1a80 	vmul.f32	s3, s3, s0
d0043444:	eee7 6a82 	vfma.f32	s13, s15, s4
d0043448:	eea7 6aa1 	vfma.f32	s12, s15, s3
d004344c:	ebc8 1208 	rsb	r2, r8, r8, lsl #4
d0043450:	4d5f      	ldr	r5, [pc, #380]	; (d00435d0 <fillTriangleDitherBayer2Mode+0x908>)
d0043452:	eb01 0381 	add.w	r3, r1, r1, lsl #2
d0043456:	485f      	ldr	r0, [pc, #380]	; (d00435d4 <fillTriangleDitherBayer2Mode+0x90c>)
d0043458:	eb01 1242 	add.w	r2, r1, r2, lsl #5
d004345c:	682f      	ldr	r7, [r5, #0]
d004345e:	eb08 1383 	add.w	r3, r8, r3, lsl #6
d0043462:	f008 0503 	and.w	r5, r8, #3
d0043466:	eb00 0942 	add.w	r9, r0, r2, lsl #1
d004346a:	4a5b      	ldr	r2, [pc, #364]	; (d00435d8 <fillTriangleDitherBayer2Mode+0x910>)
d004346c:	441f      	add	r7, r3
d004346e:	f8cd 8010 	str.w	r8, [sp, #16]
d0043472:	eb02 0385 	add.w	r3, r2, r5, lsl #2
d0043476:	eeb6 4a00 	vmov.f32	s8, #96	; 0x3f000000  0.5
d004347a:	4698      	mov	r8, r3
d004347c:	e010      	b.n	d00434a0 <fillTriangleDitherBayer2Mode+0x7d8>
d004347e:	ee07 2a90 	vmov	s15, r2
d0043482:	4411      	add	r1, r2
d0043484:	eb02 0382 	add.w	r3, r2, r2, lsl #2
d0043488:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d004348c:	428c      	cmp	r4, r1
d004348e:	eb09 0942 	add.w	r9, r9, r2, lsl #1
d0043492:	eb07 1783 	add.w	r7, r7, r3, lsl #6
d0043496:	eee7 6a82 	vfma.f32	s13, s15, s4
d004349a:	eea7 6aa1 	vfma.f32	s12, s15, s3
d004349e:	db62      	blt.n	d0043566 <fillTriangleDitherBayer2Mode+0x89e>
d00434a0:	eba4 0c01 	sub.w	ip, r4, r1
d00434a4:	eef4 6aed 	vcmpe.f32	s13, s27
d00434a8:	f10c 0201 	add.w	r2, ip, #1
d00434ac:	2a30      	cmp	r2, #48	; 0x30
d00434ae:	bfa8      	it	ge
d00434b0:	2230      	movge	r2, #48	; 0x30
d00434b2:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00434b6:	d9e2      	bls.n	d004347e <fillTriangleDitherBayer2Mode+0x7b6>
d00434b8:	f1bc 0f00 	cmp.w	ip, #0
d00434bc:	eec6 7a26 	vdiv.f32	s15, s12, s13
d00434c0:	dd54      	ble.n	d004356c <fillTriangleDitherBayer2Mode+0x8a4>
d00434c2:	1e53      	subs	r3, r2, #1
d00434c4:	ee00 3a10 	vmov	s0, r3
d00434c8:	eeb0 9a66 	vmov.f32	s18, s13
d00434cc:	eeb8 0ac0 	vcvt.f32.s32	s0, s0
d00434d0:	eea0 9a02 	vfma.f32	s18, s0, s4
d00434d4:	eeb4 9aed 	vcmpe.f32	s18, s27
d00434d8:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00434dc:	dd47      	ble.n	d004356e <fillTriangleDitherBayer2Mode+0x8a6>
d00434de:	eeb0 fa46 	vmov.f32	s30, s12
d00434e2:	9b00      	ldr	r3, [sp, #0]
d00434e4:	2b0f      	cmp	r3, #15
d00434e6:	eea0 fa21 	vfma.f32	s30, s0, s3
d00434ea:	eecf 9a09 	vdiv.f32	s19, s30, s18
d00434ee:	ee79 9ae7 	vsub.f32	s19, s19, s15
d00434f2:	ee89 9a80 	vdiv.f32	s18, s19, s0
d00434f6:	dd3f      	ble.n	d0043578 <fillTriangleDitherBayer2Mode+0x8b0>
d00434f8:	f1a9 0602 	sub.w	r6, r9, #2
d00434fc:	2000      	movs	r0, #0
d00434fe:	fe87 0aa2 	vmaxnm.f32	s0, s15, s5
d0043502:	fe80 0a41 	vminnm.f32	s0, s0, s2
d0043506:	eb00 0380 	add.w	r3, r0, r0, lsl #2
d004350a:	f836 ef02 	ldrh.w	lr, [r6, #2]!
d004350e:	3001      	adds	r0, #1
d0043510:	ee30 0a04 	vadd.f32	s0, s0, s8
d0043514:	019d      	lsls	r5, r3, #6
d0043516:	ee77 7a89 	vadd.f32	s15, s15, s18
d004351a:	eebc 0ac0 	vcvt.u32.f32	s0, s0
d004351e:	ee10 3a10 	vmov	r3, s0
d0043522:	b29b      	uxth	r3, r3
d0043524:	459e      	cmp	lr, r3
d0043526:	d903      	bls.n	d0043530 <fillTriangleDitherBayer2Mode+0x868>
d0043528:	8033      	strh	r3, [r6, #0]
d004352a:	f04f 0310 	mov.w	r3, #16
d004352e:	557b      	strb	r3, [r7, r5]
d0043530:	4282      	cmp	r2, r0
d0043532:	dce4      	bgt.n	d00434fe <fillTriangleDitherBayer2Mode+0x836>
d0043534:	f1bc 0f00 	cmp.w	ip, #0
d0043538:	eb02 0382 	add.w	r3, r2, r2, lsl #2
d004353c:	ea4f 0042 	mov.w	r0, r2, lsl #1
d0043540:	ea4f 1383 	mov.w	r3, r3, lsl #6
d0043544:	bfbc      	itt	lt
d0043546:	2002      	movlt	r0, #2
d0043548:	f44f 73a0 	movlt.w	r3, #320	; 0x140
d004354c:	4481      	add	r9, r0
d004354e:	441f      	add	r7, r3
d0043550:	ee07 2a90 	vmov	s15, r2
d0043554:	4411      	add	r1, r2
d0043556:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d004355a:	428c      	cmp	r4, r1
d004355c:	eee7 6a82 	vfma.f32	s13, s15, s4
d0043560:	eea7 6aa1 	vfma.f32	s12, s15, s3
d0043564:	da9c      	bge.n	d00434a0 <fillTriangleDitherBayer2Mode+0x7d8>
d0043566:	f8dd 8010 	ldr.w	r8, [sp, #16]
d004356a:	e5f2      	b.n	d0043152 <fillTriangleDitherBayer2Mode+0x48a>
d004356c:	d1f0      	bne.n	d0043550 <fillTriangleDitherBayer2Mode+0x888>
d004356e:	9b00      	ldr	r3, [sp, #0]
d0043570:	eeb0 9a62 	vmov.f32	s18, s5
d0043574:	2b0f      	cmp	r3, #15
d0043576:	dcbf      	bgt.n	d00434f8 <fillTriangleDitherBayer2Mode+0x830>
d0043578:	2b00      	cmp	r3, #0
d004357a:	dd31      	ble.n	d00435e0 <fillTriangleDitherBayer2Mode+0x918>
d004357c:	9407      	str	r4, [sp, #28]
d004357e:	f1a9 0e02 	sub.w	lr, r9, #2
d0043582:	2000      	movs	r0, #0
d0043584:	9c02      	ldr	r4, [sp, #8]
d0043586:	fe87 0aa2 	vmaxnm.f32	s0, s15, s5
d004358a:	fe80 0a41 	vminnm.f32	s0, s0, s2
d004358e:	ee30 0a04 	vadd.f32	s0, s0, s8
d0043592:	f83e af02 	ldrh.w	sl, [lr, #2]!
d0043596:	180e      	adds	r6, r1, r0
d0043598:	eb00 0580 	add.w	r5, r0, r0, lsl #2
d004359c:	ee77 7a89 	vadd.f32	s15, s15, s18
d00435a0:	3001      	adds	r0, #1
d00435a2:	eebc 0ac0 	vcvt.u32.f32	s0, s0
d00435a6:	f006 0603 	and.w	r6, r6, #3
d00435aa:	01ad      	lsls	r5, r5, #6
d00435ac:	ee10 3a10 	vmov	r3, s0
d00435b0:	b29b      	uxth	r3, r3
d00435b2:	459a      	cmp	sl, r3
d00435b4:	d908      	bls.n	d00435c8 <fillTriangleDitherBayer2Mode+0x900>
d00435b6:	f818 6006 	ldrb.w	r6, [r8, r6]
d00435ba:	f8ae 3000 	strh.w	r3, [lr]
d00435be:	42a6      	cmp	r6, r4
d00435c0:	bfac      	ite	ge
d00435c2:	465b      	movge	r3, fp
d00435c4:	2310      	movlt	r3, #16
d00435c6:	557b      	strb	r3, [r7, r5]
d00435c8:	4282      	cmp	r2, r0
d00435ca:	dcdc      	bgt.n	d0043586 <fillTriangleDitherBayer2Mode+0x8be>
d00435cc:	9c07      	ldr	r4, [sp, #28]
d00435ce:	e7b1      	b.n	d0043534 <fillTriangleDitherBayer2Mode+0x86c>
d00435d0:	d012e7a4 	.word	0xd012e7a4
d00435d4:	d00490a0 	.word	0xd00490a0
d00435d8:	d0048740 	.word	0xd0048740
d00435dc:	38d1b717 	.word	0x38d1b717
d00435e0:	f1a9 0602 	sub.w	r6, r9, #2
d00435e4:	2000      	movs	r0, #0
d00435e6:	fe87 0aa2 	vmaxnm.f32	s0, s15, s5
d00435ea:	fe80 0a41 	vminnm.f32	s0, s0, s2
d00435ee:	ee30 0a04 	vadd.f32	s0, s0, s8
d00435f2:	eb00 0380 	add.w	r3, r0, r0, lsl #2
d00435f6:	f836 ef02 	ldrh.w	lr, [r6, #2]!
d00435fa:	ee77 7a89 	vadd.f32	s15, s15, s18
d00435fe:	019d      	lsls	r5, r3, #6
d0043600:	3001      	adds	r0, #1
d0043602:	eebc 0ac0 	vcvt.u32.f32	s0, s0
d0043606:	ee10 3a10 	vmov	r3, s0
d004360a:	b29b      	uxth	r3, r3
d004360c:	459e      	cmp	lr, r3
d004360e:	d902      	bls.n	d0043616 <fillTriangleDitherBayer2Mode+0x94e>
d0043610:	8033      	strh	r3, [r6, #0]
d0043612:	f807 b005 	strb.w	fp, [r7, r5]
d0043616:	4282      	cmp	r2, r0
d0043618:	dce5      	bgt.n	d00435e6 <fillTriangleDitherBayer2Mode+0x91e>
d004361a:	e78b      	b.n	d0043534 <fillTriangleDitherBayer2Mode+0x86c>
d004361c:	f1a9 0602 	sub.w	r6, r9, #2
d0043620:	2200      	movs	r2, #0
d0043622:	fec7 6a84 	vmaxnm.f32	s13, s15, s8
d0043626:	fec6 6ae1 	vminnm.f32	s13, s13, s3
d004362a:	ee76 6a82 	vadd.f32	s13, s13, s4
d004362e:	eb02 0082 	add.w	r0, r2, r2, lsl #2
d0043632:	f836 ef02 	ldrh.w	lr, [r6, #2]!
d0043636:	ee77 7aa2 	vadd.f32	s15, s15, s5
d004363a:	0185      	lsls	r5, r0, #6
d004363c:	3201      	adds	r2, #1
d004363e:	eefc 6ae6 	vcvt.u32.f32	s13, s13
d0043642:	ee16 0a90 	vmov	r0, s13
d0043646:	b280      	uxth	r0, r0
d0043648:	4586      	cmp	lr, r0
d004364a:	d902      	bls.n	d0043652 <fillTriangleDitherBayer2Mode+0x98a>
d004364c:	8030      	strh	r0, [r6, #0]
d004364e:	f807 b005 	strb.w	fp, [r7, r5]
d0043652:	4293      	cmp	r3, r2
d0043654:	dce5      	bgt.n	d0043622 <fillTriangleDitherBayer2Mode+0x95a>
d0043656:	e686      	b.n	d0043366 <fillTriangleDitherBayer2Mode+0x69e>
d0043658:	eeb0 aa44 	vmov.f32	s20, s8
d004365c:	eef0 9a44 	vmov.f32	s19, s8
d0043660:	e60d      	b.n	d004327e <fillTriangleDitherBayer2Mode+0x5b6>
d0043662:	eef0 1a62 	vmov.f32	s3, s5
d0043666:	eeb0 2a62 	vmov.f32	s4, s5
d004366a:	e6ef      	b.n	d004344c <fillTriangleDitherBayer2Mode+0x784>

d004366c <vec3Add>:
d004366c:	ee30 0a21 	vadd.f32	s0, s0, s3
d0043670:	b08e      	sub	sp, #56	; 0x38
d0043672:	ee70 0a82 	vadd.f32	s1, s1, s4
d0043676:	ee31 1a22 	vadd.f32	s2, s2, s5
d004367a:	b00e      	add	sp, #56	; 0x38
d004367c:	4770      	bx	lr
d004367e:	bf00      	nop

d0043680 <vec3Scale>:
d0043680:	ee20 0a21 	vmul.f32	s0, s0, s3
d0043684:	b08c      	sub	sp, #48	; 0x30
d0043686:	ee61 0aa0 	vmul.f32	s1, s3, s1
d004368a:	ee21 1a81 	vmul.f32	s2, s3, s2
d004368e:	b00c      	add	sp, #48	; 0x30
d0043690:	4770      	bx	lr
d0043692:	bf00      	nop

d0043694 <vec3Dot>:
d0043694:	ee20 2a82 	vmul.f32	s4, s1, s4
d0043698:	b086      	sub	sp, #24
d004369a:	eea0 2a21 	vfma.f32	s4, s0, s3
d004369e:	eea1 2a22 	vfma.f32	s4, s2, s5
d00436a2:	eeb0 0a42 	vmov.f32	s0, s4
d00436a6:	b006      	add	sp, #24
d00436a8:	4770      	bx	lr
d00436aa:	bf00      	nop

d00436ac <vec3Cross>:
d00436ac:	eeb0 7a60 	vmov.f32	s14, s1
d00436b0:	b08e      	sub	sp, #56	; 0x38
d00436b2:	eef0 7a40 	vmov.f32	s15, s0
d00436b6:	ee62 0ac0 	vnmul.f32	s1, s5, s0
d00436ba:	ee61 6ac7 	vnmul.f32	s13, s3, s14
d00436be:	ee22 0a41 	vnmul.f32	s0, s4, s2
d00436c2:	eee1 0a21 	vfma.f32	s1, s2, s3
d00436c6:	eee7 6a82 	vfma.f32	s13, s15, s4
d00436ca:	eea7 0a22 	vfma.f32	s0, s14, s5
d00436ce:	eeb0 1a66 	vmov.f32	s2, s13
d00436d2:	b00e      	add	sp, #56	; 0x38
d00436d4:	4770      	bx	lr
d00436d6:	bf00      	nop

d00436d8 <vec3Normalize>:
d00436d8:	ee60 7aa0 	vmul.f32	s15, s1, s1
d00436dc:	ed9f 7a22 	vldr	s14, [pc, #136]	; d0043768 <vec3Normalize+0x90>
d00436e0:	b08c      	sub	sp, #48	; 0x30
d00436e2:	eee0 7a00 	vfma.f32	s15, s0, s0
d00436e6:	eee1 7a01 	vfma.f32	s15, s2, s2
d00436ea:	eef4 7ac7 	vcmpe.f32	s15, s14
d00436ee:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00436f2:	d934      	bls.n	d004375e <vec3Normalize+0x86>
d00436f4:	ed9f 7a1d 	vldr	s14, [pc, #116]	; d004376c <vec3Normalize+0x94>
d00436f8:	eef4 7a47 	vcmp.f32	s15, s14
d00436fc:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0043700:	dd06      	ble.n	d0043710 <vec3Normalize+0x38>
d0043702:	ed9f 7a1b 	vldr	s14, [pc, #108]	; d0043770 <vec3Normalize+0x98>
d0043706:	eef4 7a47 	vcmp.f32	s15, s14
d004370a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004370e:	d418      	bmi.n	d0043742 <vec3Normalize+0x6a>
d0043710:	ee17 2a90 	vmov	r2, s15
d0043714:	eeb6 6a00 	vmov.f32	s12, #96	; 0x3f000000  0.5
d0043718:	4b16      	ldr	r3, [pc, #88]	; (d0043774 <vec3Normalize+0x9c>)
d004371a:	eeb7 7a08 	vmov.f32	s14, #120	; 0x3fc00000  1.5
d004371e:	eba3 0352 	sub.w	r3, r3, r2, lsr #1
d0043722:	ee67 7a86 	vmul.f32	s15, s15, s12
d0043726:	ee06 3a90 	vmov	s13, r3
d004372a:	ee67 7aa6 	vmul.f32	s15, s15, s13
d004372e:	eea6 7ae7 	vfms.f32	s14, s13, s15
d0043732:	ee67 7a26 	vmul.f32	s15, s14, s13
d0043736:	ee27 0a80 	vmul.f32	s0, s15, s0
d004373a:	ee67 0aa0 	vmul.f32	s1, s15, s1
d004373e:	ee27 1a81 	vmul.f32	s2, s15, s2
d0043742:	ed8d 0a09 	vstr	s0, [sp, #36]	; 0x24
d0043746:	edcd 0a0a 	vstr	s1, [sp, #40]	; 0x28
d004374a:	ed8d 1a0b 	vstr	s2, [sp, #44]	; 0x2c
d004374e:	ed9d 0a09 	vldr	s0, [sp, #36]	; 0x24
d0043752:	eddd 0a0a 	vldr	s1, [sp, #40]	; 0x28
d0043756:	ed9d 1a0b 	vldr	s2, [sp, #44]	; 0x2c
d004375a:	b00c      	add	sp, #48	; 0x30
d004375c:	4770      	bx	lr
d004375e:	2300      	movs	r3, #0
d0043760:	9309      	str	r3, [sp, #36]	; 0x24
d0043762:	930a      	str	r3, [sp, #40]	; 0x28
d0043764:	930b      	str	r3, [sp, #44]	; 0x2c
d0043766:	e7f2      	b.n	d004374e <vec3Normalize+0x76>
d0043768:	358637bd 	.word	0x358637bd
d004376c:	3f7fbe77 	.word	0x3f7fbe77
d0043770:	3f8020c5 	.word	0x3f8020c5
d0043774:	5f3759df 	.word	0x5f3759df

d0043778 <rotateAroundAxis>:
d0043778:	ee62 7a02 	vmul.f32	s15, s4, s4
d004377c:	ed9f 7a51 	vldr	s14, [pc, #324]	; d00438c4 <rotateAroundAxis+0x14c>
d0043780:	b500      	push	{lr}
d0043782:	eee1 7aa1 	vfma.f32	s15, s3, s3
d0043786:	ed2d 8b0c 	vpush	{d8-d13}
d004378a:	eef0 ca40 	vmov.f32	s25, s0
d004378e:	b08f      	sub	sp, #60	; 0x3c
d0043790:	eeb0 ca60 	vmov.f32	s24, s1
d0043794:	eef0 ba41 	vmov.f32	s23, s2
d0043798:	eee2 7aa2 	vfma.f32	s15, s5, s5
d004379c:	eeb0 da43 	vmov.f32	s26, s6
d00437a0:	eef4 7ac7 	vcmpe.f32	s15, s14
d00437a4:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00437a8:	d97c      	bls.n	d00438a4 <rotateAroundAxis+0x12c>
d00437aa:	ed9f 7a47 	vldr	s14, [pc, #284]	; d00438c8 <rotateAroundAxis+0x150>
d00437ae:	eef4 7a47 	vcmp.f32	s15, s14
d00437b2:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00437b6:	dd55      	ble.n	d0043864 <rotateAroundAxis+0xec>
d00437b8:	ed9f 7a44 	vldr	s14, [pc, #272]	; d00438cc <rotateAroundAxis+0x154>
d00437bc:	eef4 7a47 	vcmp.f32	s15, s14
d00437c0:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00437c4:	d54e      	bpl.n	d0043864 <rotateAroundAxis+0xec>
d00437c6:	eef0 da42 	vmov.f32	s27, s4
d00437ca:	eeb0 9a61 	vmov.f32	s18, s3
d00437ce:	eeb0 8a62 	vmov.f32	s16, s5
d00437d2:	ee60 8a82 	vmul.f32	s17, s1, s4
d00437d6:	ee62 5ae0 	vnmul.f32	s11, s5, s1
d00437da:	ee21 6ac1 	vnmul.f32	s12, s3, s2
d00437de:	eeec 8a89 	vfma.f32	s17, s25, s18
d00437e2:	ee6d 7aec 	vnmul.f32	s15, s27, s25
d00437e6:	eeeb 5aad 	vfma.f32	s11, s23, s27
d00437ea:	eeac 6a88 	vfma.f32	s12, s25, s16
d00437ee:	eeec 7a09 	vfma.f32	s15, s24, s18
d00437f2:	eeeb 8a88 	vfma.f32	s17, s23, s16
d00437f6:	eeb0 ba65 	vmov.f32	s22, s11
d00437fa:	eeb0 aa46 	vmov.f32	s20, s12
d00437fe:	eef0 aa67 	vmov.f32	s21, s15
d0043802:	eeb0 0a4d 	vmov.f32	s0, s26
d0043806:	f004 faf7 	bl	d0047df8 <cosf>
d004380a:	eef0 9a40 	vmov.f32	s19, s0
d004380e:	eeb0 0a4d 	vmov.f32	s0, s26
d0043812:	f004 fcd5 	bl	d00481c0 <sinf>
d0043816:	ee60 5a0b 	vmul.f32	s11, s0, s22
d004381a:	ee20 6a0a 	vmul.f32	s12, s0, s20
d004381e:	ee60 7a2a 	vmul.f32	s15, s0, s21
d0043822:	eee9 5aac 	vfma.f32	s11, s19, s25
d0043826:	eea9 6a8c 	vfma.f32	s12, s19, s24
d004382a:	eee9 7aab 	vfma.f32	s15, s19, s23
d004382e:	eef7 6a00 	vmov.f32	s13, #112	; 0x3f800000  1.0
d0043832:	ee29 9a28 	vmul.f32	s18, s18, s17
d0043836:	ee2d 7aa8 	vmul.f32	s14, s27, s17
d004383a:	ee76 9ae9 	vsub.f32	s19, s13, s19
d004383e:	ee28 8a28 	vmul.f32	s16, s16, s17
d0043842:	eeb0 0a65 	vmov.f32	s0, s11
d0043846:	eef0 0a46 	vmov.f32	s1, s12
d004384a:	eeb0 1a67 	vmov.f32	s2, s15
d004384e:	eea9 0a89 	vfma.f32	s0, s19, s18
d0043852:	eee9 0a87 	vfma.f32	s1, s19, s14
d0043856:	eea9 1a88 	vfma.f32	s2, s19, s16
d004385a:	b00f      	add	sp, #60	; 0x3c
d004385c:	ecbd 8b0c 	vpop	{d8-d13}
d0043860:	f85d fb04 	ldr.w	pc, [sp], #4
d0043864:	ee17 2a90 	vmov	r2, s15
d0043868:	eef6 6a00 	vmov.f32	s13, #96	; 0x3f000000  0.5
d004386c:	4b18      	ldr	r3, [pc, #96]	; (d00438d0 <rotateAroundAxis+0x158>)
d004386e:	eeb7 8a08 	vmov.f32	s16, #120	; 0x3fc00000  1.5
d0043872:	eba3 0352 	sub.w	r3, r3, r2, lsr #1
d0043876:	ee67 7aa6 	vmul.f32	s15, s15, s13
d004387a:	ee07 3a10 	vmov	s14, r3
d004387e:	ee67 7a87 	vmul.f32	s15, s15, s14
d0043882:	eea7 8a67 	vfms.f32	s16, s14, s15
d0043886:	ee27 8a08 	vmul.f32	s16, s14, s16
d004388a:	ee62 da08 	vmul.f32	s27, s4, s16
d004388e:	ee21 9a88 	vmul.f32	s18, s3, s16
d0043892:	ee22 8a88 	vmul.f32	s16, s5, s16
d0043896:	ee6c 8a2d 	vmul.f32	s17, s24, s27
d004389a:	ee29 6a6b 	vnmul.f32	s12, s18, s23
d004389e:	ee68 5a4c 	vnmul.f32	s11, s16, s24
d00438a2:	e79c      	b.n	d00437de <rotateAroundAxis+0x66>
d00438a4:	eddf 8a0b 	vldr	s17, [pc, #44]	; d00438d4 <rotateAroundAxis+0x15c>
d00438a8:	eef0 aa68 	vmov.f32	s21, s17
d00438ac:	eeb0 aa68 	vmov.f32	s20, s17
d00438b0:	eeb0 ba68 	vmov.f32	s22, s17
d00438b4:	eeb0 8a68 	vmov.f32	s16, s17
d00438b8:	eef0 da68 	vmov.f32	s27, s17
d00438bc:	eeb0 9a68 	vmov.f32	s18, s17
d00438c0:	e79f      	b.n	d0043802 <rotateAroundAxis+0x8a>
d00438c2:	bf00      	nop
d00438c4:	358637bd 	.word	0x358637bd
d00438c8:	3f7fbe77 	.word	0x3f7fbe77
d00438cc:	3f8020c5 	.word	0x3f8020c5
d00438d0:	5f3759df 	.word	0x5f3759df
d00438d4:	00000000 	.word	0x00000000

d00438d8 <vec3>:
d00438d8:	b088      	sub	sp, #32
d00438da:	b008      	add	sp, #32
d00438dc:	4770      	bx	lr
d00438de:	bf00      	nop

d00438e0 <degrees>:
d00438e0:	eddf 7a02 	vldr	s15, [pc, #8]	; d00438ec <degrees+0xc>
d00438e4:	ee20 0a27 	vmul.f32	s0, s0, s15
d00438e8:	4770      	bx	lr
d00438ea:	bf00      	nop
d00438ec:	3c8efa35 	.word	0x3c8efa35

d00438f0 <powf>:
d00438f0:	eeb7 7a00 	vmov.f32	s14, #112	; 0x3f800000  1.0
d00438f4:	eeb4 0a47 	vcmp.f32	s0, s14
d00438f8:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00438fc:	d04e      	beq.n	d004399c <powf+0xac>
d00438fe:	eef5 0a40 	vcmp.f32	s1, #0.0
d0043902:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0043906:	d049      	beq.n	d004399c <powf+0xac>
d0043908:	eef4 0a47 	vcmp.f32	s1, s14
d004390c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0043910:	d054      	beq.n	d00439bc <powf+0xcc>
d0043912:	eeb5 0a40 	vcmp.f32	s0, #0.0
d0043916:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004391a:	d044      	beq.n	d00439a6 <powf+0xb6>
d004391c:	eefd 7ae0 	vcvt.s32.f32	s15, s1
d0043920:	eef8 6ae7 	vcvt.f32.s32	s13, s15
d0043924:	eef4 6a60 	vcmp.f32	s13, s1
d0043928:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004392c:	d04e      	beq.n	d00439cc <powf+0xdc>
d004392e:	eeb5 0ac0 	vcmpe.f32	s0, #0.0
d0043932:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0043936:	d459      	bmi.n	d00439ec <powf+0xfc>
d0043938:	eef6 7a00 	vmov.f32	s15, #96	; 0x3f000000  0.5
d004393c:	eef4 0a67 	vcmp.f32	s1, s15
d0043940:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0043944:	d03f      	beq.n	d00439c6 <powf+0xd6>
d0043946:	eefe 7a00 	vmov.f32	s15, #224	; 0xbf000000 -0.5
d004394a:	eef4 0a67 	vcmp.f32	s1, s15
d004394e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0043952:	d052      	beq.n	d00439fa <powf+0x10a>
d0043954:	eef0 7a00 	vmov.f32	s15, #0	; 0x40000000  2.0
d0043958:	eef4 0a67 	vcmp.f32	s1, s15
d004395c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0043960:	d052      	beq.n	d0043a08 <powf+0x118>
d0043962:	eef0 7a08 	vmov.f32	s15, #8	; 0x40400000  3.0
d0043966:	eef4 0a67 	vcmp.f32	s1, s15
d004396a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004396e:	d04e      	beq.n	d0043a0e <powf+0x11e>
d0043970:	eef1 7a00 	vmov.f32	s15, #16	; 0x40800000  4.0
d0043974:	eef4 0a67 	vcmp.f32	s1, s15
d0043978:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004397c:	d042      	beq.n	d0043a04 <powf+0x114>
d004397e:	b500      	push	{lr}
d0043980:	b083      	sub	sp, #12
d0043982:	edcd 0a01 	vstr	s1, [sp, #4]
d0043986:	f004 fb89 	bl	d004809c <logf>
d004398a:	eddd 0a01 	vldr	s1, [sp, #4]
d004398e:	ee20 0a20 	vmul.f32	s0, s0, s1
d0043992:	b003      	add	sp, #12
d0043994:	f85d eb04 	ldr.w	lr, [sp], #4
d0043998:	f004 bb0a 	b.w	d0047fb0 <expf>
d004399c:	eef7 7a00 	vmov.f32	s15, #112	; 0x3f800000  1.0
d00439a0:	eeb0 0a67 	vmov.f32	s0, s15
d00439a4:	4770      	bx	lr
d00439a6:	eef5 0ac0 	vcmpe.f32	s1, #0.0
d00439aa:	eddf 7a1d 	vldr	s15, [pc, #116]	; d0043a20 <powf+0x130>
d00439ae:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00439b2:	fe70 7a27 	vselgt.f32	s15, s0, s15
d00439b6:	eeb0 0a67 	vmov.f32	s0, s15
d00439ba:	4770      	bx	lr
d00439bc:	eef0 7a40 	vmov.f32	s15, s0
d00439c0:	eeb0 0a67 	vmov.f32	s0, s15
d00439c4:	4770      	bx	lr
d00439c6:	eef1 7ac0 	vsqrt.f32	s15, s0
d00439ca:	e7e9      	b.n	d00439a0 <powf+0xb0>
d00439cc:	ee17 3a90 	vmov	r3, s15
d00439d0:	2b00      	cmp	r3, #0
d00439d2:	db0e      	blt.n	d00439f2 <powf+0x102>
d00439d4:	d020      	beq.n	d0043a18 <powf+0x128>
d00439d6:	eef7 7a00 	vmov.f32	s15, #112	; 0x3f800000  1.0
d00439da:	07da      	lsls	r2, r3, #31
d00439dc:	bf48      	it	mi
d00439de:	ee67 7a80 	vmulmi.f32	s15, s15, s0
d00439e2:	085b      	lsrs	r3, r3, #1
d00439e4:	ee20 0a00 	vmul.f32	s0, s0, s0
d00439e8:	d1f7      	bne.n	d00439da <powf+0xea>
d00439ea:	e7d9      	b.n	d00439a0 <powf+0xb0>
d00439ec:	eddf 7a0d 	vldr	s15, [pc, #52]	; d0043a24 <powf+0x134>
d00439f0:	e7d6      	b.n	d00439a0 <powf+0xb0>
d00439f2:	ee87 0a00 	vdiv.f32	s0, s14, s0
d00439f6:	425b      	negs	r3, r3
d00439f8:	e7ed      	b.n	d00439d6 <powf+0xe6>
d00439fa:	eef1 6ac0 	vsqrt.f32	s13, s0
d00439fe:	eec7 7a26 	vdiv.f32	s15, s14, s13
d0043a02:	e7cd      	b.n	d00439a0 <powf+0xb0>
d0043a04:	ee20 0a00 	vmul.f32	s0, s0, s0
d0043a08:	ee60 7a00 	vmul.f32	s15, s0, s0
d0043a0c:	e7c8      	b.n	d00439a0 <powf+0xb0>
d0043a0e:	ee60 7a00 	vmul.f32	s15, s0, s0
d0043a12:	ee67 7a80 	vmul.f32	s15, s15, s0
d0043a16:	e7c3      	b.n	d00439a0 <powf+0xb0>
d0043a18:	eef0 7a47 	vmov.f32	s15, s14
d0043a1c:	e7c0      	b.n	d00439a0 <powf+0xb0>
d0043a1e:	bf00      	nop
d0043a20:	7f800000 	.word	0x7f800000
d0043a24:	7fc00000 	.word	0x7fc00000

d0043a28 <sb3dParticlesClear>:
d0043a28:	4b0f      	ldr	r3, [pc, #60]	; (d0043a68 <sb3dParticlesClear+0x40>)
d0043a2a:	f04f 507e 	mov.w	r0, #1065353216	; 0x3f800000
d0043a2e:	2100      	movs	r1, #0
d0043a30:	2200      	movs	r2, #0
d0043a32:	b430      	push	{r4, r5}
d0043a34:	f503 5500 	add.w	r5, r3, #8192	; 0x2000
d0043a38:	2421      	movs	r4, #33	; 0x21
d0043a3a:	7699      	strb	r1, [r3, #26]
d0043a3c:	3320      	adds	r3, #32
d0043a3e:	f843 2c20 	str.w	r2, [r3, #-32]
d0043a42:	f843 2c1c 	str.w	r2, [r3, #-28]
d0043a46:	f843 2c18 	str.w	r2, [r3, #-24]
d0043a4a:	f843 0c14 	str.w	r0, [r3, #-20]
d0043a4e:	f843 2c10 	str.w	r2, [r3, #-16]
d0043a52:	f843 0c0c 	str.w	r0, [r3, #-12]
d0043a56:	f803 4c08 	strb.w	r4, [r3, #-8]
d0043a5a:	f803 1c07 	strb.w	r1, [r3, #-7]
d0043a5e:	42ab      	cmp	r3, r5
d0043a60:	d1eb      	bne.n	d0043a3a <sb3dParticlesClear+0x12>
d0043a62:	bc30      	pop	{r4, r5}
d0043a64:	4770      	bx	lr
d0043a66:	bf00      	nop
d0043a68:	d00940a0 	.word	0xd00940a0

d0043a6c <sb3dParticlesRender>:
d0043a6c:	2800      	cmp	r0, #0
d0043a6e:	f000 82d5 	beq.w	d004401c <sb3dParticlesRender+0x5b0>
d0043a72:	edd0 7a02 	vldr	s15, [r0, #8]
d0043a76:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0043a7a:	ed2d 8b10 	vpush	{d8-d15}
d0043a7e:	b0c7      	sub	sp, #284	; 0x11c
d0043a80:	4605      	mov	r5, r0
d0043a82:	ed90 ea00 	vldr	s28, [r0]
d0043a86:	edcd 7a15 	vstr	s15, [sp, #84]	; 0x54
d0043a8a:	edd0 da01 	vldr	s27, [r0, #4]
d0043a8e:	edd0 ca06 	vldr	s25, [r0, #24]
d0043a92:	ed90 ca07 	vldr	s24, [r0, #28]
d0043a96:	edd0 ba08 	vldr	s23, [r0, #32]
d0043a9a:	ed90 9a09 	vldr	s18, [r0, #36]	; 0x24
d0043a9e:	edd0 8a0a 	vldr	s17, [r0, #40]	; 0x28
d0043aa2:	ed90 8a0b 	vldr	s16, [r0, #44]	; 0x2c
d0043aa6:	edd0 aa0c 	vldr	s21, [r0, #48]	; 0x30
d0043aaa:	ed90 aa0d 	vldr	s20, [r0, #52]	; 0x34
d0043aae:	edd0 9a0e 	vldr	s19, [r0, #56]	; 0x38
d0043ab2:	ed90 ba10 	vldr	s22, [r0, #64]	; 0x40
d0043ab6:	f001 fc4f 	bl	d0045358 <lightsGet>
d0043aba:	4cae      	ldr	r4, [pc, #696]	; (d0043d74 <sb3dParticlesRender+0x308>)
d0043abc:	4682      	mov	sl, r0
d0043abe:	f001 fc4f 	bl	d0045360 <lightsGetCount>
d0043ac2:	4681      	mov	r9, r0
d0043ac4:	f504 5700 	add.w	r7, r4, #8192	; 0x2000
d0043ac8:	eb0a 1880 	add.w	r8, sl, r0, lsl #6
d0043acc:	e115      	b.n	d0043cfa <sb3dParticlesRender+0x28e>
d0043ace:	eeb1 7a04 	vmov.f32	s14, #20	; 0x40a00000  5.0
d0043ad2:	edd4 ea04 	vldr	s29, [r4, #16]
d0043ad6:	ed9f 5aac 	vldr	s10, [pc, #688]	; d0043d88 <sb3dParticlesRender+0x31c>
d0043ada:	fece ea85 	vmaxnm.f32	s29, s29, s10
d0043ade:	fece eac7 	vminnm.f32	s29, s29, s14
d0043ae2:	eeb6 7a00 	vmov.f32	s14, #96	; 0x3f000000  0.5
d0043ae6:	f105 0610 	add.w	r6, r5, #16
d0043aea:	eeb0 4a46 	vmov.f32	s8, s12
d0043aee:	2250      	movs	r2, #80	; 0x50
d0043af0:	eef0 4a66 	vmov.f32	s9, s13
d0043af4:	4631      	mov	r1, r6
d0043af6:	ee67 7a87 	vmul.f32	s15, s15, s14
d0043afa:	4668      	mov	r0, sp
d0043afc:	eeb0 5a65 	vmov.f32	s10, s11
d0043b00:	eeb0 7a65 	vmov.f32	s14, s11
d0043b04:	eeac 6aa7 	vfma.f32	s12, s25, s15
d0043b08:	eeac 4ae7 	vfms.f32	s8, s25, s15
d0043b0c:	eeec 4a67 	vfms.f32	s9, s24, s15
d0043b10:	eeec 6a27 	vfma.f32	s13, s24, s15
d0043b14:	eeab 5ae7 	vfms.f32	s10, s23, s15
d0043b18:	eeab 7aa7 	vfma.f32	s14, s23, s15
d0043b1c:	eef0 3a46 	vmov.f32	s7, s12
d0043b20:	eea9 6a67 	vfms.f32	s12, s18, s15
d0043b24:	eeb0 da44 	vmov.f32	s26, s8
d0043b28:	eef0 fa64 	vmov.f32	s31, s9
d0043b2c:	eef0 5a66 	vmov.f32	s11, s13
d0043b30:	eeb0 fa45 	vmov.f32	s30, s10
d0043b34:	eea9 da27 	vfma.f32	s26, s18, s15
d0043b38:	ed8d 6a1c 	vstr	s12, [sp, #112]	; 0x70
d0043b3c:	eeb0 6a47 	vmov.f32	s12, s14
d0043b40:	eee8 faa7 	vfma.f32	s31, s17, s15
d0043b44:	eea8 fa27 	vfma.f32	s30, s16, s15
d0043b48:	eea9 4a67 	vfms.f32	s8, s18, s15
d0043b4c:	eee9 3a27 	vfma.f32	s7, s18, s15
d0043b50:	eee8 4ae7 	vfms.f32	s9, s17, s15
d0043b54:	ed8d da16 	vstr	s26, [sp, #88]	; 0x58
d0043b58:	eee8 5aa7 	vfma.f32	s11, s17, s15
d0043b5c:	eee8 6ae7 	vfms.f32	s13, s17, s15
d0043b60:	edcd fa17 	vstr	s31, [sp, #92]	; 0x5c
d0043b64:	eea8 5a67 	vfms.f32	s10, s16, s15
d0043b68:	ed8d fa18 	vstr	s30, [sp, #96]	; 0x60
d0043b6c:	eea8 6a27 	vfma.f32	s12, s16, s15
d0043b70:	ed8d 4a1f 	vstr	s8, [sp, #124]	; 0x7c
d0043b74:	eea8 7a67 	vfms.f32	s14, s16, s15
d0043b78:	edcd 3a19 	vstr	s7, [sp, #100]	; 0x64
d0043b7c:	edcd 4a20 	vstr	s9, [sp, #128]	; 0x80
d0043b80:	edcd 5a1a 	vstr	s11, [sp, #104]	; 0x68
d0043b84:	edcd 6a1d 	vstr	s13, [sp, #116]	; 0x74
d0043b88:	ed8d 5a21 	vstr	s10, [sp, #132]	; 0x84
d0043b8c:	ed8d 6a1b 	vstr	s12, [sp, #108]	; 0x6c
d0043b90:	ed8d 7a1e 	vstr	s14, [sp, #120]	; 0x78
d0043b94:	f003 febe 	bl	d0047914 <memcpy>
d0043b98:	eeb0 0a4d 	vmov.f32	s0, s26
d0043b9c:	eef0 0a6f 	vmov.f32	s1, s31
d0043ba0:	eeb0 1a4f 	vmov.f32	s2, s30
d0043ba4:	e895 000f 	ldmia.w	r5, {r0, r1, r2, r3}
d0043ba8:	f000 fbfc 	bl	d00443a4 <worldToCamera>
d0043bac:	ed9d da19 	vldr	s26, [sp, #100]	; 0x64
d0043bb0:	eddd fa1a 	vldr	s31, [sp, #104]	; 0x68
d0043bb4:	4631      	mov	r1, r6
d0043bb6:	ed9d fa1b 	vldr	s30, [sp, #108]	; 0x6c
d0043bba:	2250      	movs	r2, #80	; 0x50
d0043bbc:	4668      	mov	r0, sp
d0043bbe:	ed8d 0a22 	vstr	s0, [sp, #136]	; 0x88
d0043bc2:	edcd 0a23 	vstr	s1, [sp, #140]	; 0x8c
d0043bc6:	ed8d 1a24 	vstr	s2, [sp, #144]	; 0x90
d0043bca:	f003 fea3 	bl	d0047914 <memcpy>
d0043bce:	eeb0 0a4d 	vmov.f32	s0, s26
d0043bd2:	eef0 0a6f 	vmov.f32	s1, s31
d0043bd6:	eeb0 1a4f 	vmov.f32	s2, s30
d0043bda:	e895 000f 	ldmia.w	r5, {r0, r1, r2, r3}
d0043bde:	f000 fbe1 	bl	d00443a4 <worldToCamera>
d0043be2:	ed9d da1c 	vldr	s26, [sp, #112]	; 0x70
d0043be6:	eddd fa1d 	vldr	s31, [sp, #116]	; 0x74
d0043bea:	4631      	mov	r1, r6
d0043bec:	ed9d fa1e 	vldr	s30, [sp, #120]	; 0x78
d0043bf0:	2250      	movs	r2, #80	; 0x50
d0043bf2:	4668      	mov	r0, sp
d0043bf4:	ed8d 0a25 	vstr	s0, [sp, #148]	; 0x94
d0043bf8:	edcd 0a26 	vstr	s1, [sp, #152]	; 0x98
d0043bfc:	ed8d 1a27 	vstr	s2, [sp, #156]	; 0x9c
d0043c00:	f003 fe88 	bl	d0047914 <memcpy>
d0043c04:	eeb0 0a4d 	vmov.f32	s0, s26
d0043c08:	eef0 0a6f 	vmov.f32	s1, s31
d0043c0c:	eeb0 1a4f 	vmov.f32	s2, s30
d0043c10:	e895 000f 	ldmia.w	r5, {r0, r1, r2, r3}
d0043c14:	f000 fbc6 	bl	d00443a4 <worldToCamera>
d0043c18:	ed9d da1f 	vldr	s26, [sp, #124]	; 0x7c
d0043c1c:	eddd fa20 	vldr	s31, [sp, #128]	; 0x80
d0043c20:	4631      	mov	r1, r6
d0043c22:	ed9d fa21 	vldr	s30, [sp, #132]	; 0x84
d0043c26:	2250      	movs	r2, #80	; 0x50
d0043c28:	4668      	mov	r0, sp
d0043c2a:	ed8d 0a28 	vstr	s0, [sp, #160]	; 0xa0
d0043c2e:	edcd 0a29 	vstr	s1, [sp, #164]	; 0xa4
d0043c32:	ed8d 1a2a 	vstr	s2, [sp, #168]	; 0xa8
d0043c36:	f003 fe6d 	bl	d0047914 <memcpy>
d0043c3a:	eeb0 0a4d 	vmov.f32	s0, s26
d0043c3e:	eef0 0a6f 	vmov.f32	s1, s31
d0043c42:	eeb0 1a4f 	vmov.f32	s2, s30
d0043c46:	e895 000f 	ldmia.w	r5, {r0, r1, r2, r3}
d0043c4a:	f000 fbab 	bl	d00443a4 <worldToCamera>
d0043c4e:	eddd 7a24 	vldr	s15, [sp, #144]	; 0x90
d0043c52:	ed8d 0a2b 	vstr	s0, [sp, #172]	; 0xac
d0043c56:	eef4 7acb 	vcmpe.f32	s15, s22
d0043c5a:	edcd 0a2c 	vstr	s1, [sp, #176]	; 0xb0
d0043c5e:	ed8d 1a2d 	vstr	s2, [sp, #180]	; 0xb4
d0043c62:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0043c66:	d812      	bhi.n	d0043c8e <sb3dParticlesRender+0x222>
d0043c68:	eddd 7a27 	vldr	s15, [sp, #156]	; 0x9c
d0043c6c:	eef4 7acb 	vcmpe.f32	s15, s22
d0043c70:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0043c74:	d80b      	bhi.n	d0043c8e <sb3dParticlesRender+0x222>
d0043c76:	eddd 7a2a 	vldr	s15, [sp, #168]	; 0xa8
d0043c7a:	eef4 7acb 	vcmpe.f32	s15, s22
d0043c7e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0043c82:	d804      	bhi.n	d0043c8e <sb3dParticlesRender+0x222>
d0043c84:	eeb4 1acb 	vcmpe.f32	s2, s22
d0043c88:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0043c8c:	d931      	bls.n	d0043cf2 <sb3dParticlesRender+0x286>
d0043c8e:	4629      	mov	r1, r5
d0043c90:	ed9d 3a28 	vldr	s6, [sp, #160]	; 0xa0
d0043c94:	eddd 3a29 	vldr	s7, [sp, #164]	; 0xa4
d0043c98:	a82e      	add	r0, sp, #184	; 0xb8
d0043c9a:	ed9d 4a2a 	vldr	s8, [sp, #168]	; 0xa8
d0043c9e:	eddd 1a25 	vldr	s3, [sp, #148]	; 0x94
d0043ca2:	ed9d 2a26 	vldr	s4, [sp, #152]	; 0x98
d0043ca6:	eddd 2a27 	vldr	s5, [sp, #156]	; 0x9c
d0043caa:	ed9d 0a22 	vldr	s0, [sp, #136]	; 0x88
d0043cae:	eddd 0a23 	vldr	s1, [sp, #140]	; 0x8c
d0043cb2:	ed9d 1a24 	vldr	s2, [sp, #144]	; 0x90
d0043cb6:	f001 fc19 	bl	d00454ec <clipTriangleToFrustum>
d0043cba:	2802      	cmp	r0, #2
d0043cbc:	f300 8155 	bgt.w	d0043f6a <sb3dParticlesRender+0x4fe>
d0043cc0:	a82e      	add	r0, sp, #184	; 0xb8
d0043cc2:	4629      	mov	r1, r5
d0043cc4:	ed9d 3a2b 	vldr	s6, [sp, #172]	; 0xac
d0043cc8:	eddd 3a2c 	vldr	s7, [sp, #176]	; 0xb0
d0043ccc:	ed9d 4a2d 	vldr	s8, [sp, #180]	; 0xb4
d0043cd0:	eddd 1a28 	vldr	s3, [sp, #160]	; 0xa0
d0043cd4:	ed9d 2a29 	vldr	s4, [sp, #164]	; 0xa4
d0043cd8:	eddd 2a2a 	vldr	s5, [sp, #168]	; 0xa8
d0043cdc:	ed9d 0a22 	vldr	s0, [sp, #136]	; 0x88
d0043ce0:	eddd 0a23 	vldr	s1, [sp, #140]	; 0x8c
d0043ce4:	ed9d 1a24 	vldr	s2, [sp, #144]	; 0x90
d0043ce8:	f001 fc00 	bl	d00454ec <clipTriangleToFrustum>
d0043cec:	2802      	cmp	r0, #2
d0043cee:	f300 8105 	bgt.w	d0043efc <sb3dParticlesRender+0x490>
d0043cf2:	3420      	adds	r4, #32
d0043cf4:	42a7      	cmp	r7, r4
d0043cf6:	f000 8133 	beq.w	d0043f60 <sb3dParticlesRender+0x4f4>
d0043cfa:	7ea3      	ldrb	r3, [r4, #26]
d0043cfc:	2b00      	cmp	r3, #0
d0043cfe:	d0f8      	beq.n	d0043cf2 <sb3dParticlesRender+0x286>
d0043d00:	edd4 7a03 	vldr	s15, [r4, #12]
d0043d04:	eef5 7ac0 	vcmpe.f32	s15, #0.0
d0043d08:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0043d0c:	d9f1      	bls.n	d0043cf2 <sb3dParticlesRender+0x286>
d0043d0e:	edd4 6a01 	vldr	s13, [r4, #4]
d0043d12:	eeb1 5a67 	vneg.f32	s10, s15
d0043d16:	ed94 6a00 	vldr	s12, [r4]
d0043d1a:	ee36 7aed 	vsub.f32	s14, s13, s27
d0043d1e:	edd4 5a02 	vldr	s11, [r4, #8]
d0043d22:	ee36 4a4e 	vsub.f32	s8, s12, s28
d0043d26:	eddd 4a15 	vldr	s9, [sp, #84]	; 0x54
d0043d2a:	ee27 7a0a 	vmul.f32	s14, s14, s20
d0043d2e:	ee75 4ae4 	vsub.f32	s9, s11, s9
d0043d32:	eeaa 7a84 	vfma.f32	s14, s21, s8
d0043d36:	eea9 7aa4 	vfma.f32	s14, s19, s9
d0043d3a:	eeb4 5ac7 	vcmpe.f32	s10, s14
d0043d3e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0043d42:	dad6      	bge.n	d0043cf2 <sb3dParticlesRender+0x286>
d0043d44:	ed94 7a05 	vldr	s14, [r4, #20]
d0043d48:	ed9f 5a0b 	vldr	s10, [pc, #44]	; d0043d78 <sb3dParticlesRender+0x30c>
d0043d4c:	eeb4 7ac5 	vcmpe.f32	s14, s10
d0043d50:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0043d54:	f67f aebb 	bls.w	d0043ace <sb3dParticlesRender+0x62>
d0043d58:	f1b9 0f00 	cmp.w	r9, #0
d0043d5c:	f340 809e 	ble.w	d0043e9c <sb3dParticlesRender+0x430>
d0043d60:	eeb7 4a00 	vmov.f32	s8, #112	; 0x3f800000  1.0
d0043d64:	4653      	mov	r3, sl
d0043d66:	eeb5 3a00 	vmov.f32	s6, #80	; 0x3e800000  0.250
d0043d6a:	ed9f 0a05 	vldr	s0, [pc, #20]	; d0043d80 <sb3dParticlesRender+0x314>
d0043d6e:	eef6 3a08 	vmov.f32	s7, #104	; 0x3f400000  0.750
d0043d72:	e07e      	b.n	d0043e72 <sb3dParticlesRender+0x406>
d0043d74:	d00940a0 	.word	0xd00940a0
d0043d78:	38d1b717 	.word	0x38d1b717
d0043d7c:	358637bd 	.word	0x358637bd
d0043d80:	3dcccccd 	.word	0x3dcccccd
d0043d84:	3b808081 	.word	0x3b808081
d0043d88:	00000000 	.word	0x00000000
d0043d8c:	edd3 7a02 	vldr	s15, [r3, #8]
d0043d90:	edd3 4a01 	vldr	s9, [r3, #4]
d0043d94:	ee77 7ae6 	vsub.f32	s15, s15, s13
d0043d98:	ed93 7a03 	vldr	s14, [r3, #12]
d0043d9c:	ee74 4ac6 	vsub.f32	s9, s9, s12
d0043da0:	ed93 2a0a 	vldr	s4, [r3, #40]	; 0x28
d0043da4:	ee37 7a65 	vsub.f32	s14, s14, s11
d0043da8:	ee27 5aa7 	vmul.f32	s10, s15, s15
d0043dac:	ee62 2a02 	vmul.f32	s5, s4, s4
d0043db0:	eea4 5aa4 	vfma.f32	s10, s9, s9
d0043db4:	eea7 5a07 	vfma.f32	s10, s14, s14
d0043db8:	eeb4 5a62 	vcmp.f32	s10, s5
d0043dbc:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0043dc0:	d554      	bpl.n	d0043e6c <sb3dParticlesRender+0x400>
d0043dc2:	ed5f 2a12 	vldr	s5, [pc, #-72]	; d0043d7c <sb3dParticlesRender+0x310>
d0043dc6:	eeb4 5a62 	vcmp.f32	s10, s5
d0043dca:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0043dce:	dd4d      	ble.n	d0043e6c <sb3dParticlesRender+0x400>
d0043dd0:	eef1 0ac5 	vsqrt.f32	s1, s10
d0043dd4:	edd3 1a08 	vldr	s3, [r3, #32]
d0043dd8:	ee21 1aa1 	vmul.f32	s2, s3, s3
d0043ddc:	eeb4 5ac1 	vcmpe.f32	s10, s2
d0043de0:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0043de4:	eec4 2a20 	vdiv.f32	s5, s8, s1
d0043de8:	ee64 4aa2 	vmul.f32	s9, s9, s5
d0043dec:	ee67 7aa2 	vmul.f32	s15, s15, s5
d0043df0:	ee27 7a22 	vmul.f32	s14, s14, s5
d0043df4:	f240 80e8 	bls.w	d0043fc8 <sb3dParticlesRender+0x55c>
d0043df8:	ed93 1a09 	vldr	s2, [r3, #36]	; 0x24
d0043dfc:	eef4 1ac1 	vcmpe.f32	s3, s2
d0043e00:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0043e04:	da32      	bge.n	d0043e6c <sb3dParticlesRender+0x400>
d0043e06:	eeb4 2ac1 	vcmpe.f32	s4, s2
d0043e0a:	ee25 5a22 	vmul.f32	s10, s10, s5
d0043e0e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0043e12:	eeb4 1ac5 	vcmpe.f32	s2, s10
d0043e16:	f200 80da 	bhi.w	d0043fce <sb3dParticlesRender+0x562>
d0043e1a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0043e1e:	d925      	bls.n	d0043e6c <sb3dParticlesRender+0x400>
d0043e20:	ee75 2a61 	vsub.f32	s5, s10, s3
d0043e24:	ee31 2a61 	vsub.f32	s4, s2, s3
d0043e28:	ee82 5a82 	vdiv.f32	s10, s5, s4
d0043e2c:	ed5f 2a2a 	vldr	s5, [pc, #-168]	; d0043d88 <sb3dParticlesRender+0x31c>
d0043e30:	fe85 5a22 	vmaxnm.f32	s10, s10, s5
d0043e34:	fe85 5a44 	vminnm.f32	s10, s10, s8
d0043e38:	ee34 5a45 	vsub.f32	s10, s8, s10
d0043e3c:	eeb5 5ac0 	vcmpe.f32	s10, #0.0
d0043e40:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0043e44:	d912      	bls.n	d0043e6c <sb3dParticlesRender+0x400>
d0043e46:	ee67 7a8a 	vmul.f32	s15, s15, s20
d0043e4a:	eee4 7aaa 	vfma.f32	s15, s9, s21
d0043e4e:	eee7 7a29 	vfma.f32	s15, s14, s19
d0043e52:	eef5 7ac0 	vcmpe.f32	s15, #0.0
d0043e56:	eeb1 7a67 	vneg.f32	s14, s15
d0043e5a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0043e5e:	da05      	bge.n	d0043e6c <sb3dParticlesRender+0x400>
d0043e60:	edd3 7a07 	vldr	s15, [r3, #28]
d0043e64:	ee25 5a27 	vmul.f32	s10, s10, s15
d0043e68:	eea5 0a07 	vfma.f32	s0, s10, s14
d0043e6c:	3340      	adds	r3, #64	; 0x40
d0043e6e:	4598      	cmp	r8, r3
d0043e70:	d016      	beq.n	d0043ea0 <sb3dParticlesRender+0x434>
d0043e72:	6ada      	ldr	r2, [r3, #44]	; 0x2c
d0043e74:	2a00      	cmp	r2, #0
d0043e76:	d0f9      	beq.n	d0043e6c <sb3dParticlesRender+0x400>
d0043e78:	781a      	ldrb	r2, [r3, #0]
d0043e7a:	2a00      	cmp	r2, #0
d0043e7c:	d086      	beq.n	d0043d8c <sb3dParticlesRender+0x320>
d0043e7e:	edd3 4a04 	vldr	s9, [r3, #16]
d0043e82:	eeb7 5a00 	vmov.f32	s10, #112	; 0x3f800000  1.0
d0043e86:	edd3 7a05 	vldr	s15, [r3, #20]
d0043e8a:	ed93 7a06 	vldr	s14, [r3, #24]
d0043e8e:	eef1 4a64 	vneg.f32	s9, s9
d0043e92:	eef1 7a67 	vneg.f32	s15, s15
d0043e96:	eeb1 7a47 	vneg.f32	s14, s14
d0043e9a:	e7d4      	b.n	d0043e46 <sb3dParticlesRender+0x3da>
d0043e9c:	ed1f 0a48 	vldr	s0, [pc, #-288]	; d0043d80 <sb3dParticlesRender+0x314>
d0043ea0:	7e63      	ldrb	r3, [r4, #25]
d0043ea2:	eeb7 fa00 	vmov.f32	s30, #112	; 0x3f800000  1.0
d0043ea6:	ed1f 7a49 	vldr	s14, [pc, #-292]	; d0043d84 <sb3dParticlesRender+0x318>
d0043eaa:	ee07 3a90 	vmov	s15, r3
d0043eae:	ed1f da4a 	vldr	s26, [pc, #-296]	; d0043d88 <sb3dParticlesRender+0x31c>
d0043eb2:	eef8 7a67 	vcvt.f32.u32	s15, s15
d0043eb6:	ee67 7a87 	vmul.f32	s15, s15, s14
d0043eba:	fec7 7a8d 	vmaxnm.f32	s15, s15, s26
d0043ebe:	fe87 0a80 	vmaxnm.f32	s0, s15, s0
d0043ec2:	fe80 0a4f 	vminnm.f32	s0, s0, s30
d0043ec6:	f001 fa1b 	bl	d0045300 <brightnessToShadeF>
d0043eca:	edd4 ea05 	vldr	s29, [r4, #20]
d0043ece:	ed94 5a04 	vldr	s10, [r4, #16]
d0043ed2:	eeb1 7a04 	vmov.f32	s14, #20	; 0x40a00000  5.0
d0043ed6:	ee3f fa6e 	vsub.f32	s30, s30, s29
d0043eda:	edd4 7a03 	vldr	s15, [r4, #12]
d0043ede:	ee60 ea2e 	vmul.f32	s29, s0, s29
d0043ee2:	ed94 6a00 	vldr	s12, [r4]
d0043ee6:	edd4 6a01 	vldr	s13, [r4, #4]
d0043eea:	edd4 5a02 	vldr	s11, [r4, #8]
d0043eee:	eee5 ea0f 	vfma.f32	s29, s10, s30
d0043ef2:	fece ea8d 	vmaxnm.f32	s29, s29, s26
d0043ef6:	fece eac7 	vminnm.f32	s29, s29, s14
d0043efa:	e5f2      	b.n	d0043ae2 <sb3dParticlesRender+0x76>
d0043efc:	f100 3bff 	add.w	fp, r0, #4294967295	; 0xffffffff
d0043f00:	2601      	movs	r6, #1
d0043f02:	4631      	mov	r1, r6
d0043f04:	3601      	adds	r6, #1
d0043f06:	aa46      	add	r2, sp, #280	; 0x118
d0043f08:	eef0 4a6e 	vmov.f32	s9, s29
d0043f0c:	eb01 0141 	add.w	r1, r1, r1, lsl #1
d0043f10:	2380      	movs	r3, #128	; 0x80
d0043f12:	eb06 0046 	add.w	r0, r6, r6, lsl #1
d0043f16:	ed9d 0a2e 	vldr	s0, [sp, #184]	; 0xb8
d0043f1a:	eb02 0181 	add.w	r1, r2, r1, lsl #2
d0043f1e:	eddd 0a2f 	vldr	s1, [sp, #188]	; 0xbc
d0043f22:	eb02 0080 	add.w	r0, r2, r0, lsl #2
d0043f26:	ed9d 1a30 	vldr	s2, [sp, #192]	; 0xc0
d0043f2a:	f1a1 0c60 	sub.w	ip, r1, #96	; 0x60
d0043f2e:	ed51 1a18 	vldr	s3, [r1, #-96]	; 0xffffffa0
d0043f32:	ed10 3a18 	vldr	s6, [r0, #-96]	; 0xffffffa0
d0043f36:	f1a0 0160 	sub.w	r1, r0, #96	; 0x60
d0043f3a:	7e62      	ldrb	r2, [r4, #25]
d0043f3c:	4628      	mov	r0, r5
d0043f3e:	edd1 3a01 	vldr	s7, [r1, #4]
d0043f42:	ed91 4a02 	vldr	s8, [r1, #8]
d0043f46:	ed9c 2a01 	vldr	s4, [ip, #4]
d0043f4a:	7e21      	ldrb	r1, [r4, #24]
d0043f4c:	eddc 2a02 	vldr	s5, [ip, #8]
d0043f50:	f001 ff28 	bl	d0045da4 <submitClippedTri>
d0043f54:	455e      	cmp	r6, fp
d0043f56:	d1d4      	bne.n	d0043f02 <sb3dParticlesRender+0x496>
d0043f58:	3420      	adds	r4, #32
d0043f5a:	42a7      	cmp	r7, r4
d0043f5c:	f47f aecd 	bne.w	d0043cfa <sb3dParticlesRender+0x28e>
d0043f60:	b047      	add	sp, #284	; 0x11c
d0043f62:	ecbd 8b10 	vpop	{d8-d15}
d0043f66:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0043f6a:	f100 3bff 	add.w	fp, r0, #4294967295	; 0xffffffff
d0043f6e:	2601      	movs	r6, #1
d0043f70:	4631      	mov	r1, r6
d0043f72:	3601      	adds	r6, #1
d0043f74:	aa46      	add	r2, sp, #280	; 0x118
d0043f76:	eef0 4a6e 	vmov.f32	s9, s29
d0043f7a:	eb01 0141 	add.w	r1, r1, r1, lsl #1
d0043f7e:	2380      	movs	r3, #128	; 0x80
d0043f80:	eb06 0046 	add.w	r0, r6, r6, lsl #1
d0043f84:	ed9d 0a2e 	vldr	s0, [sp, #184]	; 0xb8
d0043f88:	eb02 0181 	add.w	r1, r2, r1, lsl #2
d0043f8c:	eddd 0a2f 	vldr	s1, [sp, #188]	; 0xbc
d0043f90:	eb02 0080 	add.w	r0, r2, r0, lsl #2
d0043f94:	ed9d 1a30 	vldr	s2, [sp, #192]	; 0xc0
d0043f98:	f1a1 0c60 	sub.w	ip, r1, #96	; 0x60
d0043f9c:	ed51 1a18 	vldr	s3, [r1, #-96]	; 0xffffffa0
d0043fa0:	ed10 3a18 	vldr	s6, [r0, #-96]	; 0xffffffa0
d0043fa4:	f1a0 0160 	sub.w	r1, r0, #96	; 0x60
d0043fa8:	7e62      	ldrb	r2, [r4, #25]
d0043faa:	4628      	mov	r0, r5
d0043fac:	edd1 3a01 	vldr	s7, [r1, #4]
d0043fb0:	ed91 4a02 	vldr	s8, [r1, #8]
d0043fb4:	ed9c 2a01 	vldr	s4, [ip, #4]
d0043fb8:	7e21      	ldrb	r1, [r4, #24]
d0043fba:	eddc 2a02 	vldr	s5, [ip, #8]
d0043fbe:	f001 fef1 	bl	d0045da4 <submitClippedTri>
d0043fc2:	455e      	cmp	r6, fp
d0043fc4:	d1d4      	bne.n	d0043f70 <sb3dParticlesRender+0x504>
d0043fc6:	e67b      	b.n	d0043cc0 <sb3dParticlesRender+0x254>
d0043fc8:	eeb7 5a00 	vmov.f32	s10, #112	; 0x3f800000  1.0
d0043fcc:	e73b      	b.n	d0043e46 <sb3dParticlesRender+0x3da>
d0043fce:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0043fd2:	db12      	blt.n	d0043ffa <sb3dParticlesRender+0x58e>
d0043fd4:	ee35 5a61 	vsub.f32	s10, s10, s3
d0043fd8:	ee31 2a61 	vsub.f32	s4, s2, s3
d0043fdc:	eec5 2a02 	vdiv.f32	s5, s10, s4
d0043fe0:	ed1f 5a97 	vldr	s10, [pc, #-604]	; d0043d88 <sb3dParticlesRender+0x31c>
d0043fe4:	fe82 5a85 	vmaxnm.f32	s10, s5, s10
d0043fe8:	eef0 2a44 	vmov.f32	s5, s8
d0043fec:	fe85 5a44 	vminnm.f32	s10, s10, s8
d0043ff0:	eee5 2a63 	vfms.f32	s5, s10, s7
d0043ff4:	eeb0 5a62 	vmov.f32	s10, s5
d0043ff8:	e720      	b.n	d0043e3c <sb3dParticlesRender+0x3d0>
d0043ffa:	ee75 2a41 	vsub.f32	s5, s10, s2
d0043ffe:	ee32 2a41 	vsub.f32	s4, s4, s2
d0044002:	ee82 5a82 	vdiv.f32	s10, s5, s4
d0044006:	ed5f 2aa0 	vldr	s5, [pc, #-640]	; d0043d88 <sb3dParticlesRender+0x31c>
d004400a:	fe85 5a22 	vmaxnm.f32	s10, s10, s5
d004400e:	fe85 5a44 	vminnm.f32	s10, s10, s8
d0044012:	ee34 5a45 	vsub.f32	s10, s8, s10
d0044016:	ee25 5a03 	vmul.f32	s10, s10, s6
d004401a:	e70f      	b.n	d0043e3c <sb3dParticlesRender+0x3d0>
d004401c:	4770      	bx	lr
d004401e:	bf00      	nop

d0044020 <worldClear>:
d0044020:	f44f 42c0 	mov.w	r2, #24576	; 0x6000
d0044024:	2100      	movs	r1, #0
d0044026:	4801      	ldr	r0, [pc, #4]	; (d004402c <worldClear+0xc>)
d0044028:	f003 bc82 	b.w	d0047930 <memset>
d004402c:	d012e7c0 	.word	0xd012e7c0

d0044030 <cameraNormalize>:
d0044030:	edd0 0a0d 	vldr	s1, [r0, #52]	; 0x34
d0044034:	ed90 1a0e 	vldr	s2, [r0, #56]	; 0x38
d0044038:	ed90 0a0c 	vldr	s0, [r0, #48]	; 0x30
d004403c:	b510      	push	{r4, lr}
d004403e:	4604      	mov	r4, r0
d0044040:	f7ff fb4a 	bl	d00436d8 <vec3Normalize>
d0044044:	eeb0 7a60 	vmov.f32	s14, s1
d0044048:	eef0 7a41 	vmov.f32	s15, s2
d004404c:	ed84 0a0c 	vstr	s0, [r4, #48]	; 0x30
d0044050:	ed94 0a06 	vldr	s0, [r4, #24]
d0044054:	ed84 7a0d 	vstr	s14, [r4, #52]	; 0x34
d0044058:	edc4 7a0e 	vstr	s15, [r4, #56]	; 0x38
d004405c:	edd4 0a07 	vldr	s1, [r4, #28]
d0044060:	ed94 1a08 	vldr	s2, [r4, #32]
d0044064:	f7ff fb38 	bl	d00436d8 <vec3Normalize>
d0044068:	eef0 1a40 	vmov.f32	s3, s0
d004406c:	eeb0 2a60 	vmov.f32	s4, s1
d0044070:	ed94 0a0c 	vldr	s0, [r4, #48]	; 0x30
d0044074:	eef0 2a41 	vmov.f32	s5, s2
d0044078:	edc4 0a07 	vstr	s1, [r4, #28]
d004407c:	ed84 1a08 	vstr	s2, [r4, #32]
d0044080:	edd4 0a0d 	vldr	s1, [r4, #52]	; 0x34
d0044084:	ed94 1a0e 	vldr	s2, [r4, #56]	; 0x38
d0044088:	edc4 1a06 	vstr	s3, [r4, #24]
d004408c:	f7ff fb0e 	bl	d00436ac <vec3Cross>
d0044090:	ed84 0a09 	vstr	s0, [r4, #36]	; 0x24
d0044094:	edc4 0a0a 	vstr	s1, [r4, #40]	; 0x28
d0044098:	ed84 1a0b 	vstr	s2, [r4, #44]	; 0x2c
d004409c:	f7ff fb1c 	bl	d00436d8 <vec3Normalize>
d00440a0:	edd4 1a0c 	vldr	s3, [r4, #48]	; 0x30
d00440a4:	ed94 2a0d 	vldr	s4, [r4, #52]	; 0x34
d00440a8:	edd4 2a0e 	vldr	s5, [r4, #56]	; 0x38
d00440ac:	ed84 0a09 	vstr	s0, [r4, #36]	; 0x24
d00440b0:	edc4 0a0a 	vstr	s1, [r4, #40]	; 0x28
d00440b4:	ed84 1a0b 	vstr	s2, [r4, #44]	; 0x2c
d00440b8:	f7ff faf8 	bl	d00436ac <vec3Cross>
d00440bc:	ed84 0a06 	vstr	s0, [r4, #24]
d00440c0:	edc4 0a07 	vstr	s1, [r4, #28]
d00440c4:	ed84 1a08 	vstr	s2, [r4, #32]
d00440c8:	f7ff fb06 	bl	d00436d8 <vec3Normalize>
d00440cc:	ed84 0a06 	vstr	s0, [r4, #24]
d00440d0:	edc4 0a07 	vstr	s1, [r4, #28]
d00440d4:	ed84 1a08 	vstr	s2, [r4, #32]
d00440d8:	bd10      	pop	{r4, pc}
d00440da:	bf00      	nop

d00440dc <cameraCreate>:
d00440dc:	b510      	push	{r4, lr}
d00440de:	4604      	mov	r4, r0
d00440e0:	2260      	movs	r2, #96	; 0x60
d00440e2:	4902      	ldr	r1, [pc, #8]	; (d00440ec <cameraCreate+0x10>)
d00440e4:	f003 fc16 	bl	d0047914 <memcpy>
d00440e8:	4620      	mov	r0, r4
d00440ea:	bd10      	pop	{r4, pc}
d00440ec:	d0048760 	.word	0xd0048760

d00440f0 <cameraSetPosition>:
d00440f0:	b084      	sub	sp, #16
d00440f2:	ed8d 0a01 	vstr	s0, [sp, #4]
d00440f6:	edcd 0a02 	vstr	s1, [sp, #8]
d00440fa:	ed8d 1a03 	vstr	s2, [sp, #12]
d00440fe:	b128      	cbz	r0, d004410c <cameraSetPosition+0x1c>
d0044100:	aa04      	add	r2, sp, #16
d0044102:	4603      	mov	r3, r0
d0044104:	e912 0007 	ldmdb	r2, {r0, r1, r2}
d0044108:	e883 0007 	stmia.w	r3, {r0, r1, r2}
d004410c:	b004      	add	sp, #16
d004410e:	4770      	bx	lr

d0044110 <cameraTurn>:
d0044110:	2800      	cmp	r0, #0
d0044112:	f000 8144 	beq.w	d004439e <cameraTurn+0x28e>
d0044116:	b570      	push	{r4, r5, r6, lr}
d0044118:	4604      	mov	r4, r0
d004411a:	ed2d 8b04 	vpush	{d8-d9}
d004411e:	eef0 8a40 	vmov.f32	s17, s0
d0044122:	b08a      	sub	sp, #40	; 0x28
d0044124:	eeb0 9a60 	vmov.f32	s18, s1
d0044128:	eeb0 8a41 	vmov.f32	s16, s2
d004412c:	bb69      	cbnz	r1, d004418a <cameraTurn+0x7a>
d004412e:	f100 0318 	add.w	r3, r0, #24
d0044132:	ae01      	add	r6, sp, #4
d0044134:	f100 0524 	add.w	r5, r0, #36	; 0x24
d0044138:	eeb5 9a40 	vcmp.f32	s18, #0.0
d004413c:	e893 0007 	ldmia.w	r3, {r0, r1, r2}
d0044140:	f104 0330 	add.w	r3, r4, #48	; 0x30
d0044144:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0044148:	e886 0007 	stmia.w	r6, {r0, r1, r2}
d004414c:	e895 0007 	ldmia.w	r5, {r0, r1, r2}
d0044150:	ae04      	add	r6, sp, #16
d0044152:	e886 0007 	stmia.w	r6, {r0, r1, r2}
d0044156:	e893 0007 	ldmia.w	r3, {r0, r1, r2}
d004415a:	ab0a      	add	r3, sp, #40	; 0x28
d004415c:	e903 0007 	stmdb	r3, {r0, r1, r2}
d0044160:	d14a      	bne.n	d00441f8 <cameraTurn+0xe8>
d0044162:	eef5 8a40 	vcmp.f32	s17, #0.0
d0044166:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004416a:	f040 808d 	bne.w	d0044288 <cameraTurn+0x178>
d004416e:	eeb5 8a40 	vcmp.f32	s16, #0.0
d0044172:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0044176:	f040 80cf 	bne.w	d0044318 <cameraTurn+0x208>
d004417a:	4620      	mov	r0, r4
d004417c:	b00a      	add	sp, #40	; 0x28
d004417e:	ecbd 8b04 	vpop	{d8-d9}
d0044182:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
d0044186:	f7ff bf53 	b.w	d0044030 <cameraNormalize>
d004418a:	ed9f 1a85 	vldr	s2, [pc, #532]	; d00443a0 <cameraTurn+0x290>
d004418e:	eeb7 0a00 	vmov.f32	s0, #112	; 0x3f800000  1.0
d0044192:	eef0 0a41 	vmov.f32	s1, s2
d0044196:	f7ff fb9f 	bl	d00438d8 <vec3>
d004419a:	eef0 7a41 	vmov.f32	s15, s2
d004419e:	ed9f 1a80 	vldr	s2, [pc, #512]	; d00443a0 <cameraTurn+0x290>
d00441a2:	eeb0 7a60 	vmov.f32	s14, s1
d00441a6:	ed8d 0a01 	vstr	s0, [sp, #4]
d00441aa:	eef7 0a00 	vmov.f32	s1, #112	; 0x3f800000  1.0
d00441ae:	edcd 7a03 	vstr	s15, [sp, #12]
d00441b2:	eeb0 0a41 	vmov.f32	s0, s2
d00441b6:	ed8d 7a02 	vstr	s14, [sp, #8]
d00441ba:	f7ff fb8d 	bl	d00438d8 <vec3>
d00441be:	eeb0 7a60 	vmov.f32	s14, s1
d00441c2:	eddf 0a77 	vldr	s1, [pc, #476]	; d00443a0 <cameraTurn+0x290>
d00441c6:	eef0 7a41 	vmov.f32	s15, s2
d00441ca:	ed8d 0a04 	vstr	s0, [sp, #16]
d00441ce:	eeb7 1a00 	vmov.f32	s2, #112	; 0x3f800000  1.0
d00441d2:	eeb0 0a60 	vmov.f32	s0, s1
d00441d6:	ed8d 7a05 	vstr	s14, [sp, #20]
d00441da:	edcd 7a06 	vstr	s15, [sp, #24]
d00441de:	f7ff fb7b 	bl	d00438d8 <vec3>
d00441e2:	eeb5 9a40 	vcmp.f32	s18, #0.0
d00441e6:	edcd 0a08 	vstr	s1, [sp, #32]
d00441ea:	ed8d 0a07 	vstr	s0, [sp, #28]
d00441ee:	ed8d 1a09 	vstr	s2, [sp, #36]	; 0x24
d00441f2:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00441f6:	d0b4      	beq.n	d0044162 <cameraTurn+0x52>
d00441f8:	ed94 0a0c 	vldr	s0, [r4, #48]	; 0x30
d00441fc:	eeb0 3a49 	vmov.f32	s6, s18
d0044200:	edd4 0a0d 	vldr	s1, [r4, #52]	; 0x34
d0044204:	ed94 1a0e 	vldr	s2, [r4, #56]	; 0x38
d0044208:	eddd 1a04 	vldr	s3, [sp, #16]
d004420c:	ed9d 2a05 	vldr	s4, [sp, #20]
d0044210:	eddd 2a06 	vldr	s5, [sp, #24]
d0044214:	f7ff fab0 	bl	d0043778 <rotateAroundAxis>
d0044218:	ed84 0a0c 	vstr	s0, [r4, #48]	; 0x30
d004421c:	edc4 0a0d 	vstr	s1, [r4, #52]	; 0x34
d0044220:	eeb0 3a49 	vmov.f32	s6, s18
d0044224:	ed94 0a06 	vldr	s0, [r4, #24]
d0044228:	edd4 0a07 	vldr	s1, [r4, #28]
d004422c:	ed84 1a0e 	vstr	s2, [r4, #56]	; 0x38
d0044230:	ed94 1a08 	vldr	s2, [r4, #32]
d0044234:	eddd 1a04 	vldr	s3, [sp, #16]
d0044238:	ed9d 2a05 	vldr	s4, [sp, #20]
d004423c:	eddd 2a06 	vldr	s5, [sp, #24]
d0044240:	f7ff fa9a 	bl	d0043778 <rotateAroundAxis>
d0044244:	eeb0 3a49 	vmov.f32	s6, s18
d0044248:	ed84 0a06 	vstr	s0, [r4, #24]
d004424c:	edc4 0a07 	vstr	s1, [r4, #28]
d0044250:	ed94 0a09 	vldr	s0, [r4, #36]	; 0x24
d0044254:	edd4 0a0a 	vldr	s1, [r4, #40]	; 0x28
d0044258:	ed84 1a08 	vstr	s2, [r4, #32]
d004425c:	eddd 1a04 	vldr	s3, [sp, #16]
d0044260:	ed94 1a0b 	vldr	s2, [r4, #44]	; 0x2c
d0044264:	ed9d 2a05 	vldr	s4, [sp, #20]
d0044268:	eddd 2a06 	vldr	s5, [sp, #24]
d004426c:	f7ff fa84 	bl	d0043778 <rotateAroundAxis>
d0044270:	eef5 8a40 	vcmp.f32	s17, #0.0
d0044274:	ed84 0a09 	vstr	s0, [r4, #36]	; 0x24
d0044278:	edc4 0a0a 	vstr	s1, [r4, #40]	; 0x28
d004427c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0044280:	ed84 1a0b 	vstr	s2, [r4, #44]	; 0x2c
d0044284:	f43f af73 	beq.w	d004416e <cameraTurn+0x5e>
d0044288:	ed94 0a0c 	vldr	s0, [r4, #48]	; 0x30
d004428c:	eeb0 3a68 	vmov.f32	s6, s17
d0044290:	edd4 0a0d 	vldr	s1, [r4, #52]	; 0x34
d0044294:	ed94 1a0e 	vldr	s2, [r4, #56]	; 0x38
d0044298:	eddd 1a01 	vldr	s3, [sp, #4]
d004429c:	ed9d 2a02 	vldr	s4, [sp, #8]
d00442a0:	eddd 2a03 	vldr	s5, [sp, #12]
d00442a4:	f7ff fa68 	bl	d0043778 <rotateAroundAxis>
d00442a8:	ed84 0a0c 	vstr	s0, [r4, #48]	; 0x30
d00442ac:	edc4 0a0d 	vstr	s1, [r4, #52]	; 0x34
d00442b0:	eeb0 3a68 	vmov.f32	s6, s17
d00442b4:	ed94 0a06 	vldr	s0, [r4, #24]
d00442b8:	edd4 0a07 	vldr	s1, [r4, #28]
d00442bc:	ed84 1a0e 	vstr	s2, [r4, #56]	; 0x38
d00442c0:	ed94 1a08 	vldr	s2, [r4, #32]
d00442c4:	eddd 1a01 	vldr	s3, [sp, #4]
d00442c8:	ed9d 2a02 	vldr	s4, [sp, #8]
d00442cc:	eddd 2a03 	vldr	s5, [sp, #12]
d00442d0:	f7ff fa52 	bl	d0043778 <rotateAroundAxis>
d00442d4:	eeb0 3a68 	vmov.f32	s6, s17
d00442d8:	ed84 0a06 	vstr	s0, [r4, #24]
d00442dc:	edc4 0a07 	vstr	s1, [r4, #28]
d00442e0:	ed94 0a09 	vldr	s0, [r4, #36]	; 0x24
d00442e4:	edd4 0a0a 	vldr	s1, [r4, #40]	; 0x28
d00442e8:	ed84 1a08 	vstr	s2, [r4, #32]
d00442ec:	eddd 1a01 	vldr	s3, [sp, #4]
d00442f0:	ed94 1a0b 	vldr	s2, [r4, #44]	; 0x2c
d00442f4:	ed9d 2a02 	vldr	s4, [sp, #8]
d00442f8:	eddd 2a03 	vldr	s5, [sp, #12]
d00442fc:	f7ff fa3c 	bl	d0043778 <rotateAroundAxis>
d0044300:	eeb5 8a40 	vcmp.f32	s16, #0.0
d0044304:	ed84 0a09 	vstr	s0, [r4, #36]	; 0x24
d0044308:	edc4 0a0a 	vstr	s1, [r4, #40]	; 0x28
d004430c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0044310:	ed84 1a0b 	vstr	s2, [r4, #44]	; 0x2c
d0044314:	f43f af31 	beq.w	d004417a <cameraTurn+0x6a>
d0044318:	ed94 0a0c 	vldr	s0, [r4, #48]	; 0x30
d004431c:	eeb0 3a48 	vmov.f32	s6, s16
d0044320:	edd4 0a0d 	vldr	s1, [r4, #52]	; 0x34
d0044324:	ed94 1a0e 	vldr	s2, [r4, #56]	; 0x38
d0044328:	eddd 1a07 	vldr	s3, [sp, #28]
d004432c:	ed9d 2a08 	vldr	s4, [sp, #32]
d0044330:	eddd 2a09 	vldr	s5, [sp, #36]	; 0x24
d0044334:	f7ff fa20 	bl	d0043778 <rotateAroundAxis>
d0044338:	ed84 0a0c 	vstr	s0, [r4, #48]	; 0x30
d004433c:	edc4 0a0d 	vstr	s1, [r4, #52]	; 0x34
d0044340:	eeb0 3a48 	vmov.f32	s6, s16
d0044344:	ed94 0a06 	vldr	s0, [r4, #24]
d0044348:	edd4 0a07 	vldr	s1, [r4, #28]
d004434c:	ed84 1a0e 	vstr	s2, [r4, #56]	; 0x38
d0044350:	ed94 1a08 	vldr	s2, [r4, #32]
d0044354:	eddd 1a07 	vldr	s3, [sp, #28]
d0044358:	ed9d 2a08 	vldr	s4, [sp, #32]
d004435c:	eddd 2a09 	vldr	s5, [sp, #36]	; 0x24
d0044360:	f7ff fa0a 	bl	d0043778 <rotateAroundAxis>
d0044364:	ed84 0a06 	vstr	s0, [r4, #24]
d0044368:	edc4 0a07 	vstr	s1, [r4, #28]
d004436c:	eeb0 3a48 	vmov.f32	s6, s16
d0044370:	ed94 0a09 	vldr	s0, [r4, #36]	; 0x24
d0044374:	edd4 0a0a 	vldr	s1, [r4, #40]	; 0x28
d0044378:	ed84 1a08 	vstr	s2, [r4, #32]
d004437c:	ed94 1a0b 	vldr	s2, [r4, #44]	; 0x2c
d0044380:	eddd 1a07 	vldr	s3, [sp, #28]
d0044384:	ed9d 2a08 	vldr	s4, [sp, #32]
d0044388:	eddd 2a09 	vldr	s5, [sp, #36]	; 0x24
d004438c:	f7ff f9f4 	bl	d0043778 <rotateAroundAxis>
d0044390:	ed84 0a09 	vstr	s0, [r4, #36]	; 0x24
d0044394:	edc4 0a0a 	vstr	s1, [r4, #40]	; 0x28
d0044398:	ed84 1a0b 	vstr	s2, [r4, #44]	; 0x2c
d004439c:	e6ed      	b.n	d004417a <cameraTurn+0x6a>
d004439e:	4770      	bx	lr
d00443a0:	00000000 	.word	0x00000000

d00443a4 <worldToCamera>:
d00443a4:	b084      	sub	sp, #16
d00443a6:	b510      	push	{r4, lr}
d00443a8:	ed2d 8b02 	vpush	{d8}
d00443ac:	b0ac      	sub	sp, #176	; 0xb0
d00443ae:	f10d 042f 	add.w	r4, sp, #47	; 0x2f
d00443b2:	f10d 0cc0 	add.w	ip, sp, #192	; 0xc0
d00443b6:	ed8d 0a23 	vstr	s0, [sp, #140]	; 0x8c
d00443ba:	f024 041f 	bic.w	r4, r4, #31
d00443be:	edcd 0a24 	vstr	s1, [sp, #144]	; 0x90
d00443c2:	ed8d 1a25 	vstr	s2, [sp, #148]	; 0x94
d00443c6:	e88c 000f 	stmia.w	ip, {r0, r1, r2, r3}
d00443ca:	2260      	movs	r2, #96	; 0x60
d00443cc:	4661      	mov	r1, ip
d00443ce:	4620      	mov	r0, r4
d00443d0:	f003 faa0 	bl	d0047914 <memcpy>
d00443d4:	edd4 7a00 	vldr	s15, [r4]
d00443d8:	ed9d 0a23 	vldr	s0, [sp, #140]	; 0x8c
d00443dc:	ed94 7a01 	vldr	s14, [r4, #4]
d00443e0:	ee30 0a67 	vsub.f32	s0, s0, s15
d00443e4:	eddd 0a24 	vldr	s1, [sp, #144]	; 0x90
d00443e8:	edd4 7a02 	vldr	s15, [r4, #8]
d00443ec:	ed9d 1a25 	vldr	s2, [sp, #148]	; 0x94
d00443f0:	ee70 0ac7 	vsub.f32	s1, s1, s14
d00443f4:	edd4 1a06 	vldr	s3, [r4, #24]
d00443f8:	ee31 1a67 	vsub.f32	s2, s2, s15
d00443fc:	ed94 2a07 	vldr	s4, [r4, #28]
d0044400:	edd4 2a08 	vldr	s5, [r4, #32]
d0044404:	edcd 0a27 	vstr	s1, [sp, #156]	; 0x9c
d0044408:	ed8d 1a28 	vstr	s2, [sp, #160]	; 0xa0
d004440c:	ed8d 0a26 	vstr	s0, [sp, #152]	; 0x98
d0044410:	f7ff f940 	bl	d0043694 <vec3Dot>
d0044414:	edd4 1a09 	vldr	s3, [r4, #36]	; 0x24
d0044418:	eef0 8a40 	vmov.f32	s17, s0
d004441c:	ed94 2a0a 	vldr	s4, [r4, #40]	; 0x28
d0044420:	edd4 2a0b 	vldr	s5, [r4, #44]	; 0x2c
d0044424:	eddd 0a27 	vldr	s1, [sp, #156]	; 0x9c
d0044428:	ed9d 1a28 	vldr	s2, [sp, #160]	; 0xa0
d004442c:	ed9d 0a26 	vldr	s0, [sp, #152]	; 0x98
d0044430:	f7ff f930 	bl	d0043694 <vec3Dot>
d0044434:	eeb0 8a40 	vmov.f32	s16, s0
d0044438:	eddd 0a27 	vldr	s1, [sp, #156]	; 0x9c
d004443c:	ed9d 1a28 	vldr	s2, [sp, #160]	; 0xa0
d0044440:	edd4 1a0c 	vldr	s3, [r4, #48]	; 0x30
d0044444:	ed9d 0a26 	vldr	s0, [sp, #152]	; 0x98
d0044448:	ed94 2a0d 	vldr	s4, [r4, #52]	; 0x34
d004444c:	edd4 2a0e 	vldr	s5, [r4, #56]	; 0x38
d0044450:	f7ff f920 	bl	d0043694 <vec3Dot>
d0044454:	eef0 0a48 	vmov.f32	s1, s16
d0044458:	eeb0 1a40 	vmov.f32	s2, s0
d004445c:	eeb0 0a68 	vmov.f32	s0, s17
d0044460:	b02c      	add	sp, #176	; 0xb0
d0044462:	ecbd 8b02 	vpop	{d8}
d0044466:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
d004446a:	b004      	add	sp, #16
d004446c:	4770      	bx	lr
d004446e:	bf00      	nop

d0044470 <cameraSetRange>:
d0044470:	b1a0      	cbz	r0, d004449c <cameraSetRange+0x2c>
d0044472:	eddf 7a0d 	vldr	s15, [pc, #52]	; d00444a8 <cameraSetRange+0x38>
d0044476:	fe80 0a27 	vmaxnm.f32	s0, s0, s15
d004447a:	eeb4 0ae0 	vcmpe.f32	s0, s1
d004447e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0044482:	da0c      	bge.n	d004449e <cameraSetRange+0x2e>
d0044484:	ee30 7ac0 	vsub.f32	s14, s1, s0
d0044488:	eef7 6a00 	vmov.f32	s13, #112	; 0x3f800000  1.0
d004448c:	eec6 7a87 	vdiv.f32	s15, s13, s14
d0044490:	ed80 0a10 	vstr	s0, [r0, #64]	; 0x40
d0044494:	edc0 0a11 	vstr	s1, [r0, #68]	; 0x44
d0044498:	edc0 7a0f 	vstr	s15, [r0, #60]	; 0x3c
d004449c:	4770      	bx	lr
d004449e:	eef7 7a00 	vmov.f32	s15, #112	; 0x3f800000  1.0
d00444a2:	ee70 0a27 	vadd.f32	s1, s0, s15
d00444a6:	e7f3      	b.n	d0044490 <cameraSetRange+0x20>
d00444a8:	3a83126f 	.word	0x3a83126f

d00444ac <cameraMove>:
d00444ac:	b3a8      	cbz	r0, d004451a <cameraMove+0x6e>
d00444ae:	edd0 6a0b 	vldr	s13, [r0, #44]	; 0x2c
d00444b2:	ed90 7a09 	vldr	s14, [r0, #36]	; 0x24
d00444b6:	edd0 7a0a 	vldr	s15, [r0, #40]	; 0x28
d00444ba:	ee20 7a87 	vmul.f32	s14, s1, s14
d00444be:	edd0 5a06 	vldr	s11, [r0, #24]
d00444c2:	ee60 7aa7 	vmul.f32	s15, s1, s15
d00444c6:	ed90 6a08 	vldr	s12, [r0, #32]
d00444ca:	ee60 0aa6 	vmul.f32	s1, s1, s13
d00444ce:	edd0 6a07 	vldr	s13, [r0, #28]
d00444d2:	eea5 7a80 	vfma.f32	s14, s11, s0
d00444d6:	edd0 4a01 	vldr	s9, [r0, #4]
d00444da:	eee6 7a80 	vfma.f32	s15, s13, s0
d00444de:	ed90 5a02 	vldr	s10, [r0, #8]
d00444e2:	eee6 0a00 	vfma.f32	s1, s12, s0
d00444e6:	edd0 6a00 	vldr	s13, [r0]
d00444ea:	edd0 5a0c 	vldr	s11, [r0, #48]	; 0x30
d00444ee:	ed90 6a0d 	vldr	s12, [r0, #52]	; 0x34
d00444f2:	ee37 7a26 	vadd.f32	s14, s14, s13
d00444f6:	edd0 6a0e 	vldr	s13, [r0, #56]	; 0x38
d00444fa:	ee77 7aa4 	vadd.f32	s15, s15, s9
d00444fe:	ee70 0a85 	vadd.f32	s1, s1, s10
d0044502:	eea5 7a81 	vfma.f32	s14, s11, s2
d0044506:	eee6 7a01 	vfma.f32	s15, s12, s2
d004450a:	eee6 0a81 	vfma.f32	s1, s13, s2
d004450e:	ed80 7a00 	vstr	s14, [r0]
d0044512:	edc0 7a01 	vstr	s15, [r0, #4]
d0044516:	edc0 0a02 	vstr	s1, [r0, #8]
d004451a:	4770      	bx	lr

d004451c <normalizeEntity.part.0>:
d004451c:	edd0 0a05 	vldr	s1, [r0, #20]
d0044520:	ed90 1a06 	vldr	s2, [r0, #24]
d0044524:	ed90 0a04 	vldr	s0, [r0, #16]
d0044528:	b510      	push	{r4, lr}
d004452a:	4604      	mov	r4, r0
d004452c:	f7ff f8d4 	bl	d00436d8 <vec3Normalize>
d0044530:	eeb0 7a60 	vmov.f32	s14, s1
d0044534:	eef0 7a41 	vmov.f32	s15, s2
d0044538:	ed84 0a04 	vstr	s0, [r4, #16]
d004453c:	ed94 0a07 	vldr	s0, [r4, #28]
d0044540:	ed84 7a05 	vstr	s14, [r4, #20]
d0044544:	edc4 7a06 	vstr	s15, [r4, #24]
d0044548:	edd4 0a08 	vldr	s1, [r4, #32]
d004454c:	ed94 1a09 	vldr	s2, [r4, #36]	; 0x24
d0044550:	f7ff f8c2 	bl	d00436d8 <vec3Normalize>
d0044554:	eef0 1a40 	vmov.f32	s3, s0
d0044558:	eeb0 2a60 	vmov.f32	s4, s1
d004455c:	ed94 0a04 	vldr	s0, [r4, #16]
d0044560:	eef0 2a41 	vmov.f32	s5, s2
d0044564:	edc4 0a08 	vstr	s1, [r4, #32]
d0044568:	ed84 1a09 	vstr	s2, [r4, #36]	; 0x24
d004456c:	edd4 0a05 	vldr	s1, [r4, #20]
d0044570:	ed94 1a06 	vldr	s2, [r4, #24]
d0044574:	edc4 1a07 	vstr	s3, [r4, #28]
d0044578:	f7ff f898 	bl	d00436ac <vec3Cross>
d004457c:	ed84 0a0a 	vstr	s0, [r4, #40]	; 0x28
d0044580:	edc4 0a0b 	vstr	s1, [r4, #44]	; 0x2c
d0044584:	ed84 1a0c 	vstr	s2, [r4, #48]	; 0x30
d0044588:	f7ff f8a6 	bl	d00436d8 <vec3Normalize>
d004458c:	edd4 1a04 	vldr	s3, [r4, #16]
d0044590:	ed94 2a05 	vldr	s4, [r4, #20]
d0044594:	edd4 2a06 	vldr	s5, [r4, #24]
d0044598:	ed84 0a0a 	vstr	s0, [r4, #40]	; 0x28
d004459c:	edc4 0a0b 	vstr	s1, [r4, #44]	; 0x2c
d00445a0:	ed84 1a0c 	vstr	s2, [r4, #48]	; 0x30
d00445a4:	f7ff f882 	bl	d00436ac <vec3Cross>
d00445a8:	ed84 0a07 	vstr	s0, [r4, #28]
d00445ac:	edc4 0a08 	vstr	s1, [r4, #32]
d00445b0:	ed84 1a09 	vstr	s2, [r4, #36]	; 0x24
d00445b4:	f7ff f890 	bl	d00436d8 <vec3Normalize>
d00445b8:	ed84 0a07 	vstr	s0, [r4, #28]
d00445bc:	edc4 0a08 	vstr	s1, [r4, #32]
d00445c0:	ed84 1a09 	vstr	s2, [r4, #36]	; 0x24
d00445c4:	bd10      	pop	{r4, pc}
d00445c6:	bf00      	nop

d00445c8 <entityRotation.part.0>:
d00445c8:	b5f0      	push	{r4, r5, r6, r7, lr}
d00445ca:	4eb7      	ldr	r6, [pc, #732]	; (d00448a8 <entityRotation.part.0+0x2e0>)
d00445cc:	eb00 0440 	add.w	r4, r0, r0, lsl #1
d00445d0:	ed2d 8b04 	vpush	{d8-d9}
d00445d4:	eb06 1444 	add.w	r4, r6, r4, lsl #5
d00445d8:	eeb0 9a40 	vmov.f32	s18, s0
d00445dc:	eef0 8a60 	vmov.f32	s17, s1
d00445e0:	b08b      	sub	sp, #44	; 0x2c
d00445e2:	eeb0 8a41 	vmov.f32	s16, s2
d00445e6:	2900      	cmp	r1, #0
d00445e8:	d040      	beq.n	d004466c <entityRotation.part.0+0xa4>
d00445ea:	eddf 1ab0 	vldr	s3, [pc, #704]	; d00448ac <entityRotation.part.0+0x2e4>
d00445ee:	eeb7 2a00 	vmov.f32	s4, #112	; 0x3f800000  1.0
d00445f2:	eeb4 0a61 	vcmp.f32	s0, s3
d00445f6:	edc4 1a08 	vstr	s3, [r4, #32]
d00445fa:	ed84 2a07 	vstr	s4, [r4, #28]
d00445fe:	ed84 2a0b 	vstr	s4, [r4, #44]	; 0x2c
d0044602:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0044606:	ed84 2a06 	vstr	s4, [r4, #24]
d004460a:	ed8d 2a02 	vstr	s4, [sp, #8]
d004460e:	ed8d 2a04 	vstr	s4, [sp, #16]
d0044612:	ed8d 2a09 	vstr	s4, [sp, #36]	; 0x24
d0044616:	edc4 1a09 	vstr	s3, [r4, #36]	; 0x24
d004461a:	edc4 1a0a 	vstr	s3, [r4, #40]	; 0x28
d004461e:	edc4 1a0c 	vstr	s3, [r4, #48]	; 0x30
d0044622:	edc4 1a04 	vstr	s3, [r4, #16]
d0044626:	edc4 1a05 	vstr	s3, [r4, #20]
d004462a:	edcd 1a01 	vstr	s3, [sp, #4]
d004462e:	edcd 1a03 	vstr	s3, [sp, #12]
d0044632:	edcd 1a05 	vstr	s3, [sp, #20]
d0044636:	edcd 1a06 	vstr	s3, [sp, #24]
d004463a:	edcd 1a07 	vstr	s3, [sp, #28]
d004463e:	edcd 1a08 	vstr	s3, [sp, #32]
d0044642:	d17e      	bne.n	d0044742 <entityRotation.part.0+0x17a>
d0044644:	eef5 8a40 	vcmp.f32	s17, #0.0
d0044648:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004464c:	f040 80c9 	bne.w	d00447e2 <entityRotation.part.0+0x21a>
d0044650:	eeb5 8a40 	vcmp.f32	s16, #0.0
d0044654:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0044658:	f040 8117 	bne.w	d004488a <entityRotation.part.0+0x2c2>
d004465c:	4620      	mov	r0, r4
d004465e:	b00b      	add	sp, #44	; 0x2c
d0044660:	ecbd 8b04 	vpop	{d8-d9}
d0044664:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
d0044668:	f7ff bf58 	b.w	d004451c <normalizeEntity.part.0>
d004466c:	eeb5 0a40 	vcmp.f32	s0, #0.0
d0044670:	4605      	mov	r5, r0
d0044672:	0047      	lsls	r7, r0, #1
d0044674:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0044678:	f040 811a 	bne.w	d00448b0 <entityRotation.part.0+0x2e8>
d004467c:	eef5 8a40 	vcmp.f32	s17, #0.0
d0044680:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0044684:	f040 8170 	bne.w	d0044968 <entityRotation.part.0+0x3a0>
d0044688:	eeb5 8a40 	vcmp.f32	s16, #0.0
d004468c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0044690:	d0e4      	beq.n	d004465c <entityRotation.part.0+0x94>
d0044692:	443d      	add	r5, r7
d0044694:	ab0a      	add	r3, sp, #40	; 0x28
d0044696:	eeb0 3a48 	vmov.f32	s6, s16
d004469a:	ed94 0a04 	vldr	s0, [r4, #16]
d004469e:	eb06 1545 	add.w	r5, r6, r5, lsl #5
d00446a2:	edd4 0a05 	vldr	s1, [r4, #20]
d00446a6:	ed94 1a06 	vldr	s2, [r4, #24]
d00446aa:	3510      	adds	r5, #16
d00446ac:	e895 0007 	ldmia.w	r5, {r0, r1, r2}
d00446b0:	e903 0007 	stmdb	r3, {r0, r1, r2}
d00446b4:	eddd 1a07 	vldr	s3, [sp, #28]
d00446b8:	ed9d 2a08 	vldr	s4, [sp, #32]
d00446bc:	eddd 2a09 	vldr	s5, [sp, #36]	; 0x24
d00446c0:	f7ff f85a 	bl	d0043778 <rotateAroundAxis>
d00446c4:	eef0 6a40 	vmov.f32	s13, s0
d00446c8:	eeb0 7a60 	vmov.f32	s14, s1
d00446cc:	ed94 0a07 	vldr	s0, [r4, #28]
d00446d0:	eef0 7a41 	vmov.f32	s15, s2
d00446d4:	edd4 0a08 	vldr	s1, [r4, #32]
d00446d8:	ed94 1a09 	vldr	s2, [r4, #36]	; 0x24
d00446dc:	eeb0 3a48 	vmov.f32	s6, s16
d00446e0:	eddd 1a07 	vldr	s3, [sp, #28]
d00446e4:	ed9d 2a08 	vldr	s4, [sp, #32]
d00446e8:	eddd 2a09 	vldr	s5, [sp, #36]	; 0x24
d00446ec:	edc4 6a04 	vstr	s13, [r4, #16]
d00446f0:	ed84 7a05 	vstr	s14, [r4, #20]
d00446f4:	edc4 7a06 	vstr	s15, [r4, #24]
d00446f8:	f7ff f83e 	bl	d0043778 <rotateAroundAxis>
d00446fc:	eef0 6a40 	vmov.f32	s13, s0
d0044700:	eeb0 7a60 	vmov.f32	s14, s1
d0044704:	ed94 0a0a 	vldr	s0, [r4, #40]	; 0x28
d0044708:	eef0 7a41 	vmov.f32	s15, s2
d004470c:	edd4 0a0b 	vldr	s1, [r4, #44]	; 0x2c
d0044710:	ed94 1a0c 	vldr	s2, [r4, #48]	; 0x30
d0044714:	eeb0 3a48 	vmov.f32	s6, s16
d0044718:	eddd 1a07 	vldr	s3, [sp, #28]
d004471c:	ed9d 2a08 	vldr	s4, [sp, #32]
d0044720:	eddd 2a09 	vldr	s5, [sp, #36]	; 0x24
d0044724:	edc4 6a07 	vstr	s13, [r4, #28]
d0044728:	ed84 7a08 	vstr	s14, [r4, #32]
d004472c:	edc4 7a09 	vstr	s15, [r4, #36]	; 0x24
d0044730:	f7ff f822 	bl	d0043778 <rotateAroundAxis>
d0044734:	ed84 0a0a 	vstr	s0, [r4, #40]	; 0x28
d0044738:	edc4 0a0b 	vstr	s1, [r4, #44]	; 0x2c
d004473c:	ed84 1a0c 	vstr	s2, [r4, #48]	; 0x30
d0044740:	e78c      	b.n	d004465c <entityRotation.part.0+0x94>
d0044742:	eeb0 1a42 	vmov.f32	s2, s4
d0044746:	eef0 0a61 	vmov.f32	s1, s3
d004474a:	eeb0 3a40 	vmov.f32	s6, s0
d004474e:	eeb0 0a61 	vmov.f32	s0, s3
d0044752:	eef0 2a61 	vmov.f32	s5, s3
d0044756:	f7ff f80f 	bl	d0043778 <rotateAroundAxis>
d004475a:	eeb0 7a60 	vmov.f32	s14, s1
d004475e:	eef0 6a40 	vmov.f32	s13, s0
d0044762:	edd4 0a08 	vldr	s1, [r4, #32]
d0044766:	eef0 7a41 	vmov.f32	s15, s2
d004476a:	ed94 0a07 	vldr	s0, [r4, #28]
d004476e:	ed94 1a09 	vldr	s2, [r4, #36]	; 0x24
d0044772:	eeb0 3a49 	vmov.f32	s6, s18
d0044776:	eddd 1a01 	vldr	s3, [sp, #4]
d004477a:	ed9d 2a02 	vldr	s4, [sp, #8]
d004477e:	eddd 2a03 	vldr	s5, [sp, #12]
d0044782:	edc4 6a04 	vstr	s13, [r4, #16]
d0044786:	ed84 7a05 	vstr	s14, [r4, #20]
d004478a:	edc4 7a06 	vstr	s15, [r4, #24]
d004478e:	f7fe fff3 	bl	d0043778 <rotateAroundAxis>
d0044792:	eef0 6a40 	vmov.f32	s13, s0
d0044796:	eeb0 7a60 	vmov.f32	s14, s1
d004479a:	ed94 0a0a 	vldr	s0, [r4, #40]	; 0x28
d004479e:	eef0 7a41 	vmov.f32	s15, s2
d00447a2:	edd4 0a0b 	vldr	s1, [r4, #44]	; 0x2c
d00447a6:	ed94 1a0c 	vldr	s2, [r4, #48]	; 0x30
d00447aa:	eeb0 3a49 	vmov.f32	s6, s18
d00447ae:	eddd 1a01 	vldr	s3, [sp, #4]
d00447b2:	ed9d 2a02 	vldr	s4, [sp, #8]
d00447b6:	eddd 2a03 	vldr	s5, [sp, #12]
d00447ba:	edc4 6a07 	vstr	s13, [r4, #28]
d00447be:	ed84 7a08 	vstr	s14, [r4, #32]
d00447c2:	edc4 7a09 	vstr	s15, [r4, #36]	; 0x24
d00447c6:	f7fe ffd7 	bl	d0043778 <rotateAroundAxis>
d00447ca:	eef5 8a40 	vcmp.f32	s17, #0.0
d00447ce:	ed84 0a0a 	vstr	s0, [r4, #40]	; 0x28
d00447d2:	edc4 0a0b 	vstr	s1, [r4, #44]	; 0x2c
d00447d6:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00447da:	ed84 1a0c 	vstr	s2, [r4, #48]	; 0x30
d00447de:	f43f af37 	beq.w	d0044650 <entityRotation.part.0+0x88>
d00447e2:	ed94 0a04 	vldr	s0, [r4, #16]
d00447e6:	eeb0 3a68 	vmov.f32	s6, s17
d00447ea:	edd4 0a05 	vldr	s1, [r4, #20]
d00447ee:	ed94 1a06 	vldr	s2, [r4, #24]
d00447f2:	eddd 1a04 	vldr	s3, [sp, #16]
d00447f6:	ed9d 2a05 	vldr	s4, [sp, #20]
d00447fa:	eddd 2a06 	vldr	s5, [sp, #24]
d00447fe:	f7fe ffbb 	bl	d0043778 <rotateAroundAxis>
d0044802:	eef0 6a40 	vmov.f32	s13, s0
d0044806:	eeb0 7a60 	vmov.f32	s14, s1
d004480a:	ed94 0a07 	vldr	s0, [r4, #28]
d004480e:	eef0 7a41 	vmov.f32	s15, s2
d0044812:	edd4 0a08 	vldr	s1, [r4, #32]
d0044816:	ed94 1a09 	vldr	s2, [r4, #36]	; 0x24
d004481a:	eeb0 3a68 	vmov.f32	s6, s17
d004481e:	eddd 1a04 	vldr	s3, [sp, #16]
d0044822:	ed9d 2a05 	vldr	s4, [sp, #20]
d0044826:	eddd 2a06 	vldr	s5, [sp, #24]
d004482a:	edc4 6a04 	vstr	s13, [r4, #16]
d004482e:	ed84 7a05 	vstr	s14, [r4, #20]
d0044832:	edc4 7a06 	vstr	s15, [r4, #24]
d0044836:	f7fe ff9f 	bl	d0043778 <rotateAroundAxis>
d004483a:	eef0 6a40 	vmov.f32	s13, s0
d004483e:	eeb0 7a60 	vmov.f32	s14, s1
d0044842:	ed94 0a0a 	vldr	s0, [r4, #40]	; 0x28
d0044846:	eef0 7a41 	vmov.f32	s15, s2
d004484a:	edd4 0a0b 	vldr	s1, [r4, #44]	; 0x2c
d004484e:	ed94 1a0c 	vldr	s2, [r4, #48]	; 0x30
d0044852:	eeb0 3a68 	vmov.f32	s6, s17
d0044856:	eddd 1a04 	vldr	s3, [sp, #16]
d004485a:	ed9d 2a05 	vldr	s4, [sp, #20]
d004485e:	eddd 2a06 	vldr	s5, [sp, #24]
d0044862:	edc4 6a07 	vstr	s13, [r4, #28]
d0044866:	ed84 7a08 	vstr	s14, [r4, #32]
d004486a:	edc4 7a09 	vstr	s15, [r4, #36]	; 0x24
d004486e:	f7fe ff83 	bl	d0043778 <rotateAroundAxis>
d0044872:	eeb5 8a40 	vcmp.f32	s16, #0.0
d0044876:	ed84 0a0a 	vstr	s0, [r4, #40]	; 0x28
d004487a:	edc4 0a0b 	vstr	s1, [r4, #44]	; 0x2c
d004487e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0044882:	ed84 1a0c 	vstr	s2, [r4, #48]	; 0x30
d0044886:	f43f aee9 	beq.w	d004465c <entityRotation.part.0+0x94>
d004488a:	eeb0 3a48 	vmov.f32	s6, s16
d004488e:	eddd 1a07 	vldr	s3, [sp, #28]
d0044892:	ed9d 2a08 	vldr	s4, [sp, #32]
d0044896:	eddd 2a09 	vldr	s5, [sp, #36]	; 0x24
d004489a:	ed94 0a04 	vldr	s0, [r4, #16]
d004489e:	edd4 0a05 	vldr	s1, [r4, #20]
d00448a2:	ed94 1a06 	vldr	s2, [r4, #24]
d00448a6:	e70b      	b.n	d00446c0 <entityRotation.part.0+0xf8>
d00448a8:	d012e7c0 	.word	0xd012e7c0
d00448ac:	00000000 	.word	0x00000000
d00448b0:	f104 0328 	add.w	r3, r4, #40	; 0x28
d00448b4:	f10d 0c04 	add.w	ip, sp, #4
d00448b8:	eeb0 3a40 	vmov.f32	s6, s0
d00448bc:	edd4 0a05 	vldr	s1, [r4, #20]
d00448c0:	ed94 0a04 	vldr	s0, [r4, #16]
d00448c4:	ed94 1a06 	vldr	s2, [r4, #24]
d00448c8:	e893 0007 	ldmia.w	r3, {r0, r1, r2}
d00448cc:	e88c 0007 	stmia.w	ip, {r0, r1, r2}
d00448d0:	eddd 1a01 	vldr	s3, [sp, #4]
d00448d4:	ed9d 2a02 	vldr	s4, [sp, #8]
d00448d8:	eddd 2a03 	vldr	s5, [sp, #12]
d00448dc:	f7fe ff4c 	bl	d0043778 <rotateAroundAxis>
d00448e0:	eef0 6a40 	vmov.f32	s13, s0
d00448e4:	eeb0 7a60 	vmov.f32	s14, s1
d00448e8:	ed94 0a07 	vldr	s0, [r4, #28]
d00448ec:	eef0 7a41 	vmov.f32	s15, s2
d00448f0:	edd4 0a08 	vldr	s1, [r4, #32]
d00448f4:	ed94 1a09 	vldr	s2, [r4, #36]	; 0x24
d00448f8:	eeb0 3a49 	vmov.f32	s6, s18
d00448fc:	eddd 1a01 	vldr	s3, [sp, #4]
d0044900:	ed9d 2a02 	vldr	s4, [sp, #8]
d0044904:	eddd 2a03 	vldr	s5, [sp, #12]
d0044908:	edc4 6a04 	vstr	s13, [r4, #16]
d004490c:	ed84 7a05 	vstr	s14, [r4, #20]
d0044910:	edc4 7a06 	vstr	s15, [r4, #24]
d0044914:	f7fe ff30 	bl	d0043778 <rotateAroundAxis>
d0044918:	eef0 6a40 	vmov.f32	s13, s0
d004491c:	eeb0 7a60 	vmov.f32	s14, s1
d0044920:	ed94 0a0a 	vldr	s0, [r4, #40]	; 0x28
d0044924:	eef0 7a41 	vmov.f32	s15, s2
d0044928:	edd4 0a0b 	vldr	s1, [r4, #44]	; 0x2c
d004492c:	ed94 1a0c 	vldr	s2, [r4, #48]	; 0x30
d0044930:	eeb0 3a49 	vmov.f32	s6, s18
d0044934:	eddd 1a01 	vldr	s3, [sp, #4]
d0044938:	ed9d 2a02 	vldr	s4, [sp, #8]
d004493c:	eddd 2a03 	vldr	s5, [sp, #12]
d0044940:	edc4 6a07 	vstr	s13, [r4, #28]
d0044944:	ed84 7a08 	vstr	s14, [r4, #32]
d0044948:	edc4 7a09 	vstr	s15, [r4, #36]	; 0x24
d004494c:	f7fe ff14 	bl	d0043778 <rotateAroundAxis>
d0044950:	eef5 8a40 	vcmp.f32	s17, #0.0
d0044954:	ed84 0a0a 	vstr	s0, [r4, #40]	; 0x28
d0044958:	edc4 0a0b 	vstr	s1, [r4, #44]	; 0x2c
d004495c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0044960:	ed84 1a0c 	vstr	s2, [r4, #48]	; 0x30
d0044964:	f43f ae90 	beq.w	d0044688 <entityRotation.part.0+0xc0>
d0044968:	197b      	adds	r3, r7, r5
d004496a:	f10d 0c10 	add.w	ip, sp, #16
d004496e:	ed94 0a04 	vldr	s0, [r4, #16]
d0044972:	eeb0 3a68 	vmov.f32	s6, s17
d0044976:	eb06 1343 	add.w	r3, r6, r3, lsl #5
d004497a:	edd4 0a05 	vldr	s1, [r4, #20]
d004497e:	ed94 1a06 	vldr	s2, [r4, #24]
d0044982:	331c      	adds	r3, #28
d0044984:	e893 0007 	ldmia.w	r3, {r0, r1, r2}
d0044988:	e88c 0007 	stmia.w	ip, {r0, r1, r2}
d004498c:	eddd 1a04 	vldr	s3, [sp, #16]
d0044990:	ed9d 2a05 	vldr	s4, [sp, #20]
d0044994:	eddd 2a06 	vldr	s5, [sp, #24]
d0044998:	f7fe feee 	bl	d0043778 <rotateAroundAxis>
d004499c:	eef0 6a40 	vmov.f32	s13, s0
d00449a0:	eeb0 7a60 	vmov.f32	s14, s1
d00449a4:	ed94 0a07 	vldr	s0, [r4, #28]
d00449a8:	eef0 7a41 	vmov.f32	s15, s2
d00449ac:	edd4 0a08 	vldr	s1, [r4, #32]
d00449b0:	ed94 1a09 	vldr	s2, [r4, #36]	; 0x24
d00449b4:	eeb0 3a68 	vmov.f32	s6, s17
d00449b8:	eddd 1a04 	vldr	s3, [sp, #16]
d00449bc:	ed9d 2a05 	vldr	s4, [sp, #20]
d00449c0:	eddd 2a06 	vldr	s5, [sp, #24]
d00449c4:	edc4 6a04 	vstr	s13, [r4, #16]
d00449c8:	ed84 7a05 	vstr	s14, [r4, #20]
d00449cc:	edc4 7a06 	vstr	s15, [r4, #24]
d00449d0:	f7fe fed2 	bl	d0043778 <rotateAroundAxis>
d00449d4:	eef0 6a40 	vmov.f32	s13, s0
d00449d8:	eeb0 7a60 	vmov.f32	s14, s1
d00449dc:	ed94 0a0a 	vldr	s0, [r4, #40]	; 0x28
d00449e0:	eef0 7a41 	vmov.f32	s15, s2
d00449e4:	edd4 0a0b 	vldr	s1, [r4, #44]	; 0x2c
d00449e8:	ed94 1a0c 	vldr	s2, [r4, #48]	; 0x30
d00449ec:	eeb0 3a68 	vmov.f32	s6, s17
d00449f0:	eddd 1a04 	vldr	s3, [sp, #16]
d00449f4:	ed9d 2a05 	vldr	s4, [sp, #20]
d00449f8:	eddd 2a06 	vldr	s5, [sp, #24]
d00449fc:	edc4 6a07 	vstr	s13, [r4, #28]
d0044a00:	ed84 7a08 	vstr	s14, [r4, #32]
d0044a04:	edc4 7a09 	vstr	s15, [r4, #36]	; 0x24
d0044a08:	f7fe feb6 	bl	d0043778 <rotateAroundAxis>
d0044a0c:	eeb5 8a40 	vcmp.f32	s16, #0.0
d0044a10:	ed84 0a0a 	vstr	s0, [r4, #40]	; 0x28
d0044a14:	edc4 0a0b 	vstr	s1, [r4, #44]	; 0x2c
d0044a18:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0044a1c:	ed84 1a0c 	vstr	s2, [r4, #48]	; 0x30
d0044a20:	f43f ae1c 	beq.w	d004465c <entityRotation.part.0+0x94>
d0044a24:	e635      	b.n	d0044692 <entityRotation.part.0+0xca>
d0044a26:	bf00      	nop

d0044a28 <meshComputeBoundsRadius>:
d0044a28:	b1f0      	cbz	r0, d0044a68 <meshComputeBoundsRadius+0x40>
d0044a2a:	6803      	ldr	r3, [r0, #0]
d0044a2c:	b1e3      	cbz	r3, d0044a68 <meshComputeBoundsRadius+0x40>
d0044a2e:	6842      	ldr	r2, [r0, #4]
d0044a30:	2a00      	cmp	r2, #0
d0044a32:	dd19      	ble.n	d0044a68 <meshComputeBoundsRadius+0x40>
d0044a34:	eb02 0242 	add.w	r2, r2, r2, lsl #1
d0044a38:	ed9f 6a0d 	vldr	s12, [pc, #52]	; d0044a70 <meshComputeBoundsRadius+0x48>
d0044a3c:	eb03 0282 	add.w	r2, r3, r2, lsl #2
d0044a40:	edd3 7a01 	vldr	s15, [r3, #4]
d0044a44:	330c      	adds	r3, #12
d0044a46:	ed53 6a03 	vldr	s13, [r3, #-12]
d0044a4a:	ee67 7aa7 	vmul.f32	s15, s15, s15
d0044a4e:	ed13 7a01 	vldr	s14, [r3, #-4]
d0044a52:	429a      	cmp	r2, r3
d0044a54:	eee6 7aa6 	vfma.f32	s15, s13, s13
d0044a58:	eee7 7a07 	vfma.f32	s15, s14, s14
d0044a5c:	fe86 6a27 	vmaxnm.f32	s12, s12, s15
d0044a60:	d1ee      	bne.n	d0044a40 <meshComputeBoundsRadius+0x18>
d0044a62:	eeb1 0ac6 	vsqrt.f32	s0, s12
d0044a66:	4770      	bx	lr
d0044a68:	ed9f 0a01 	vldr	s0, [pc, #4]	; d0044a70 <meshComputeBoundsRadius+0x48>
d0044a6c:	4770      	bx	lr
d0044a6e:	bf00      	nop
d0044a70:	00000000 	.word	0x00000000

d0044a74 <entityWorldSpawn>:
d0044a74:	b4f0      	push	{r4, r5, r6, r7}
d0044a76:	4d20      	ldr	r5, [pc, #128]	; (d0044af8 <entityWorldSpawn+0x84>)
d0044a78:	b084      	sub	sp, #16
d0044a7a:	2300      	movs	r3, #0
d0044a7c:	462a      	mov	r2, r5
d0044a7e:	ed8d 0a01 	vstr	s0, [sp, #4]
d0044a82:	edcd 0a02 	vstr	s1, [sp, #8]
d0044a86:	ed8d 1a03 	vstr	s2, [sp, #12]
d0044a8a:	e003      	b.n	d0044a94 <entityWorldSpawn+0x20>
d0044a8c:	3301      	adds	r3, #1
d0044a8e:	f5b3 7f80 	cmp.w	r3, #256	; 0x100
d0044a92:	d02b      	beq.n	d0044aec <entityWorldSpawn+0x78>
d0044a94:	f892 4034 	ldrb.w	r4, [r2, #52]	; 0x34
d0044a98:	3260      	adds	r2, #96	; 0x60
d0044a9a:	2c00      	cmp	r4, #0
d0044a9c:	d1f6      	bne.n	d0044a8c <entityWorldSpawn+0x18>
d0044a9e:	eb03 0243 	add.w	r2, r3, r3, lsl #1
d0044aa2:	4f16      	ldr	r7, [pc, #88]	; (d0044afc <entityWorldSpawn+0x88>)
d0044aa4:	f04f 517e 	mov.w	r1, #1065353216	; 0x3f800000
d0044aa8:	2600      	movs	r6, #0
d0044aaa:	eb05 1542 	add.w	r5, r5, r2, lsl #5
d0044aae:	f240 1c01 	movw	ip, #257	; 0x101
d0044ab2:	eb07 1742 	add.w	r7, r7, r2, lsl #5
d0044ab6:	aa04      	add	r2, sp, #16
d0044ab8:	60e8      	str	r0, [r5, #12]
d0044aba:	61e9      	str	r1, [r5, #28]
d0044abc:	62e9      	str	r1, [r5, #44]	; 0x2c
d0044abe:	61a9      	str	r1, [r5, #24]
d0044ac0:	622e      	str	r6, [r5, #32]
d0044ac2:	626e      	str	r6, [r5, #36]	; 0x24
d0044ac4:	62ae      	str	r6, [r5, #40]	; 0x28
d0044ac6:	632e      	str	r6, [r5, #48]	; 0x30
d0044ac8:	612e      	str	r6, [r5, #16]
d0044aca:	616e      	str	r6, [r5, #20]
d0044acc:	e912 0007 	ldmdb	r2, {r0, r1, r2}
d0044ad0:	e885 0007 	stmia.w	r5, {r0, r1, r2}
d0044ad4:	4618      	mov	r0, r3
d0044ad6:	f8a7 c014 	strh.w	ip, [r7, #20]
d0044ada:	f885 4036 	strb.w	r4, [r5, #54]	; 0x36
d0044ade:	63ee      	str	r6, [r5, #60]	; 0x3c
d0044ae0:	642e      	str	r6, [r5, #64]	; 0x40
d0044ae2:	646e      	str	r6, [r5, #68]	; 0x44
d0044ae4:	63ae      	str	r6, [r5, #56]	; 0x38
d0044ae6:	b004      	add	sp, #16
d0044ae8:	bcf0      	pop	{r4, r5, r6, r7}
d0044aea:	4770      	bx	lr
d0044aec:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
d0044af0:	4618      	mov	r0, r3
d0044af2:	b004      	add	sp, #16
d0044af4:	bcf0      	pop	{r4, r5, r6, r7}
d0044af6:	4770      	bx	lr
d0044af8:	d012e7c0 	.word	0xd012e7c0
d0044afc:	d012e7e0 	.word	0xd012e7e0

d0044b00 <entitySetPosition>:
d0044b00:	b084      	sub	sp, #16
d0044b02:	28ff      	cmp	r0, #255	; 0xff
d0044b04:	ed8d 0a01 	vstr	s0, [sp, #4]
d0044b08:	edcd 0a02 	vstr	s1, [sp, #8]
d0044b0c:	ed8d 1a03 	vstr	s2, [sp, #12]
d0044b10:	d80e      	bhi.n	d0044b30 <entitySetPosition+0x30>
d0044b12:	eb00 0040 	add.w	r0, r0, r0, lsl #1
d0044b16:	4b07      	ldr	r3, [pc, #28]	; (d0044b34 <entitySetPosition+0x34>)
d0044b18:	eb03 1340 	add.w	r3, r3, r0, lsl #5
d0044b1c:	f893 2034 	ldrb.w	r2, [r3, #52]	; 0x34
d0044b20:	b132      	cbz	r2, d0044b30 <entitySetPosition+0x30>
d0044b22:	68da      	ldr	r2, [r3, #12]
d0044b24:	b122      	cbz	r2, d0044b30 <entitySetPosition+0x30>
d0044b26:	aa04      	add	r2, sp, #16
d0044b28:	e912 0007 	ldmdb	r2, {r0, r1, r2}
d0044b2c:	e883 0007 	stmia.w	r3, {r0, r1, r2}
d0044b30:	b004      	add	sp, #16
d0044b32:	4770      	bx	lr
d0044b34:	d012e7c0 	.word	0xd012e7c0

d0044b38 <entityGetPosition>:
d0044b38:	28ff      	cmp	r0, #255	; 0xff
d0044b3a:	b088      	sub	sp, #32
d0044b3c:	d80e      	bhi.n	d0044b5c <entityGetPosition+0x24>
d0044b3e:	4b0d      	ldr	r3, [pc, #52]	; (d0044b74 <entityGetPosition+0x3c>)
d0044b40:	eb00 0040 	add.w	r0, r0, r0, lsl #1
d0044b44:	eb03 1040 	add.w	r0, r3, r0, lsl #5
d0044b48:	f890 3034 	ldrb.w	r3, [r0, #52]	; 0x34
d0044b4c:	b133      	cbz	r3, d0044b5c <entityGetPosition+0x24>
d0044b4e:	68c3      	ldr	r3, [r0, #12]
d0044b50:	b123      	cbz	r3, d0044b5c <entityGetPosition+0x24>
d0044b52:	ab08      	add	r3, sp, #32
d0044b54:	c807      	ldmia	r0, {r0, r1, r2}
d0044b56:	e903 0007 	stmdb	r3, {r0, r1, r2}
d0044b5a:	e003      	b.n	d0044b64 <entityGetPosition+0x2c>
d0044b5c:	2300      	movs	r3, #0
d0044b5e:	9305      	str	r3, [sp, #20]
d0044b60:	9306      	str	r3, [sp, #24]
d0044b62:	9307      	str	r3, [sp, #28]
d0044b64:	ed9d 0a05 	vldr	s0, [sp, #20]
d0044b68:	eddd 0a06 	vldr	s1, [sp, #24]
d0044b6c:	ed9d 1a07 	vldr	s2, [sp, #28]
d0044b70:	b008      	add	sp, #32
d0044b72:	4770      	bx	lr
d0044b74:	d012e7c0 	.word	0xd012e7c0

d0044b78 <entityMoveForward>:
d0044b78:	28ff      	cmp	r0, #255	; 0xff
d0044b7a:	d82b      	bhi.n	d0044bd4 <entityMoveForward+0x5c>
d0044b7c:	eb00 0040 	add.w	r0, r0, r0, lsl #1
d0044b80:	b510      	push	{r4, lr}
d0044b82:	4c15      	ldr	r4, [pc, #84]	; (d0044bd8 <entityMoveForward+0x60>)
d0044b84:	b084      	sub	sp, #16
d0044b86:	eb04 1440 	add.w	r4, r4, r0, lsl #5
d0044b8a:	f894 3034 	ldrb.w	r3, [r4, #52]	; 0x34
d0044b8e:	b1fb      	cbz	r3, d0044bd0 <entityMoveForward+0x58>
d0044b90:	68e3      	ldr	r3, [r4, #12]
d0044b92:	b1eb      	cbz	r3, d0044bd0 <entityMoveForward+0x58>
d0044b94:	eef0 1a40 	vmov.f32	s3, s0
d0044b98:	edd4 0a05 	vldr	s1, [r4, #20]
d0044b9c:	ed94 0a04 	vldr	s0, [r4, #16]
d0044ba0:	ed94 1a06 	vldr	s2, [r4, #24]
d0044ba4:	f7fe fd6c 	bl	d0043680 <vec3Scale>
d0044ba8:	eef0 1a40 	vmov.f32	s3, s0
d0044bac:	eeb0 2a60 	vmov.f32	s4, s1
d0044bb0:	ed94 0a00 	vldr	s0, [r4]
d0044bb4:	eef0 2a41 	vmov.f32	s5, s2
d0044bb8:	edd4 0a01 	vldr	s1, [r4, #4]
d0044bbc:	ed94 1a02 	vldr	s2, [r4, #8]
d0044bc0:	f7fe fd54 	bl	d004366c <vec3Add>
d0044bc4:	ed84 0a00 	vstr	s0, [r4]
d0044bc8:	edc4 0a01 	vstr	s1, [r4, #4]
d0044bcc:	ed84 1a02 	vstr	s2, [r4, #8]
d0044bd0:	b004      	add	sp, #16
d0044bd2:	bd10      	pop	{r4, pc}
d0044bd4:	4770      	bx	lr
d0044bd6:	bf00      	nop
d0044bd8:	d012e7c0 	.word	0xd012e7c0

d0044bdc <entityTurnLocal>:
d0044bdc:	28ff      	cmp	r0, #255	; 0xff
d0044bde:	d82c      	bhi.n	d0044c3a <entityTurnLocal+0x5e>
d0044be0:	eb00 0040 	add.w	r0, r0, r0, lsl #1
d0044be4:	b510      	push	{r4, lr}
d0044be6:	4c65      	ldr	r4, [pc, #404]	; (d0044d7c <entityTurnLocal+0x1a0>)
d0044be8:	eb04 1440 	add.w	r4, r4, r0, lsl #5
d0044bec:	ed2d 8b04 	vpush	{d8-d9}
d0044bf0:	f894 3034 	ldrb.w	r3, [r4, #52]	; 0x34
d0044bf4:	b1f3      	cbz	r3, d0044c34 <entityTurnLocal+0x58>
d0044bf6:	68e3      	ldr	r3, [r4, #12]
d0044bf8:	b1e3      	cbz	r3, d0044c34 <entityTurnLocal+0x58>
d0044bfa:	eeb5 0a40 	vcmp.f32	s0, #0.0
d0044bfe:	eeb0 9a40 	vmov.f32	s18, s0
d0044c02:	eef0 8a60 	vmov.f32	s17, s1
d0044c06:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0044c0a:	eeb0 8a41 	vmov.f32	s16, s2
d0044c0e:	f040 8081 	bne.w	d0044d14 <entityTurnLocal+0x138>
d0044c12:	eef5 8a40 	vcmp.f32	s17, #0.0
d0044c16:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0044c1a:	d148      	bne.n	d0044cae <entityTurnLocal+0xd2>
d0044c1c:	eeb5 8a40 	vcmp.f32	s16, #0.0
d0044c20:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0044c24:	d10a      	bne.n	d0044c3c <entityTurnLocal+0x60>
d0044c26:	4620      	mov	r0, r4
d0044c28:	ecbd 8b04 	vpop	{d8-d9}
d0044c2c:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
d0044c30:	f7ff bc74 	b.w	d004451c <normalizeEntity.part.0>
d0044c34:	ecbd 8b04 	vpop	{d8-d9}
d0044c38:	bd10      	pop	{r4, pc}
d0044c3a:	4770      	bx	lr
d0044c3c:	ed94 0a07 	vldr	s0, [r4, #28]
d0044c40:	eeb0 3a48 	vmov.f32	s6, s16
d0044c44:	edd4 0a08 	vldr	s1, [r4, #32]
d0044c48:	ed94 1a09 	vldr	s2, [r4, #36]	; 0x24
d0044c4c:	edd4 1a04 	vldr	s3, [r4, #16]
d0044c50:	ed94 2a05 	vldr	s4, [r4, #20]
d0044c54:	edd4 2a06 	vldr	s5, [r4, #24]
d0044c58:	f7fe fd8e 	bl	d0043778 <rotateAroundAxis>
d0044c5c:	eef0 6a40 	vmov.f32	s13, s0
d0044c60:	eeb0 7a60 	vmov.f32	s14, s1
d0044c64:	ed94 0a0a 	vldr	s0, [r4, #40]	; 0x28
d0044c68:	eef0 7a41 	vmov.f32	s15, s2
d0044c6c:	edd4 0a0b 	vldr	s1, [r4, #44]	; 0x2c
d0044c70:	ed94 1a0c 	vldr	s2, [r4, #48]	; 0x30
d0044c74:	eeb0 3a48 	vmov.f32	s6, s16
d0044c78:	edd4 1a04 	vldr	s3, [r4, #16]
d0044c7c:	ed94 2a05 	vldr	s4, [r4, #20]
d0044c80:	edd4 2a06 	vldr	s5, [r4, #24]
d0044c84:	edc4 6a07 	vstr	s13, [r4, #28]
d0044c88:	ed84 7a08 	vstr	s14, [r4, #32]
d0044c8c:	edc4 7a09 	vstr	s15, [r4, #36]	; 0x24
d0044c90:	f7fe fd72 	bl	d0043778 <rotateAroundAxis>
d0044c94:	4620      	mov	r0, r4
d0044c96:	ed84 0a0a 	vstr	s0, [r4, #40]	; 0x28
d0044c9a:	edc4 0a0b 	vstr	s1, [r4, #44]	; 0x2c
d0044c9e:	ed84 1a0c 	vstr	s2, [r4, #48]	; 0x30
d0044ca2:	ecbd 8b04 	vpop	{d8-d9}
d0044ca6:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
d0044caa:	f7ff bc37 	b.w	d004451c <normalizeEntity.part.0>
d0044cae:	ed94 0a04 	vldr	s0, [r4, #16]
d0044cb2:	eeb0 3a68 	vmov.f32	s6, s17
d0044cb6:	edd4 0a05 	vldr	s1, [r4, #20]
d0044cba:	ed94 1a06 	vldr	s2, [r4, #24]
d0044cbe:	edd4 1a07 	vldr	s3, [r4, #28]
d0044cc2:	ed94 2a08 	vldr	s4, [r4, #32]
d0044cc6:	edd4 2a09 	vldr	s5, [r4, #36]	; 0x24
d0044cca:	f7fe fd55 	bl	d0043778 <rotateAroundAxis>
d0044cce:	eef0 6a40 	vmov.f32	s13, s0
d0044cd2:	eeb0 7a60 	vmov.f32	s14, s1
d0044cd6:	ed94 0a0a 	vldr	s0, [r4, #40]	; 0x28
d0044cda:	eef0 7a41 	vmov.f32	s15, s2
d0044cde:	edd4 0a0b 	vldr	s1, [r4, #44]	; 0x2c
d0044ce2:	ed94 1a0c 	vldr	s2, [r4, #48]	; 0x30
d0044ce6:	eeb0 3a68 	vmov.f32	s6, s17
d0044cea:	edd4 1a07 	vldr	s3, [r4, #28]
d0044cee:	ed94 2a08 	vldr	s4, [r4, #32]
d0044cf2:	edd4 2a09 	vldr	s5, [r4, #36]	; 0x24
d0044cf6:	edc4 6a04 	vstr	s13, [r4, #16]
d0044cfa:	ed84 7a05 	vstr	s14, [r4, #20]
d0044cfe:	edc4 7a06 	vstr	s15, [r4, #24]
d0044d02:	f7fe fd39 	bl	d0043778 <rotateAroundAxis>
d0044d06:	ed84 0a0a 	vstr	s0, [r4, #40]	; 0x28
d0044d0a:	edc4 0a0b 	vstr	s1, [r4, #44]	; 0x2c
d0044d0e:	ed84 1a0c 	vstr	s2, [r4, #48]	; 0x30
d0044d12:	e783      	b.n	d0044c1c <entityTurnLocal+0x40>
d0044d14:	eeb0 3a40 	vmov.f32	s6, s0
d0044d18:	edd4 0a05 	vldr	s1, [r4, #20]
d0044d1c:	ed94 0a04 	vldr	s0, [r4, #16]
d0044d20:	ed94 1a06 	vldr	s2, [r4, #24]
d0044d24:	edd4 1a0a 	vldr	s3, [r4, #40]	; 0x28
d0044d28:	ed94 2a0b 	vldr	s4, [r4, #44]	; 0x2c
d0044d2c:	edd4 2a0c 	vldr	s5, [r4, #48]	; 0x30
d0044d30:	f7fe fd22 	bl	d0043778 <rotateAroundAxis>
d0044d34:	eef0 6a40 	vmov.f32	s13, s0
d0044d38:	eeb0 7a60 	vmov.f32	s14, s1
d0044d3c:	ed94 0a07 	vldr	s0, [r4, #28]
d0044d40:	eef0 7a41 	vmov.f32	s15, s2
d0044d44:	edd4 0a08 	vldr	s1, [r4, #32]
d0044d48:	ed94 1a09 	vldr	s2, [r4, #36]	; 0x24
d0044d4c:	eeb0 3a49 	vmov.f32	s6, s18
d0044d50:	edd4 1a0a 	vldr	s3, [r4, #40]	; 0x28
d0044d54:	ed94 2a0b 	vldr	s4, [r4, #44]	; 0x2c
d0044d58:	edd4 2a0c 	vldr	s5, [r4, #48]	; 0x30
d0044d5c:	edc4 6a04 	vstr	s13, [r4, #16]
d0044d60:	ed84 7a05 	vstr	s14, [r4, #20]
d0044d64:	edc4 7a06 	vstr	s15, [r4, #24]
d0044d68:	f7fe fd06 	bl	d0043778 <rotateAroundAxis>
d0044d6c:	ed84 0a07 	vstr	s0, [r4, #28]
d0044d70:	edc4 0a08 	vstr	s1, [r4, #32]
d0044d74:	ed84 1a09 	vstr	s2, [r4, #36]	; 0x24
d0044d78:	e74b      	b.n	d0044c12 <entityTurnLocal+0x36>
d0044d7a:	bf00      	nop
d0044d7c:	d012e7c0 	.word	0xd012e7c0

d0044d80 <entityRotation>:
d0044d80:	28ff      	cmp	r0, #255	; 0xff
d0044d82:	d80b      	bhi.n	d0044d9c <entityRotation+0x1c>
d0044d84:	4a06      	ldr	r2, [pc, #24]	; (d0044da0 <entityRotation+0x20>)
d0044d86:	eb00 0340 	add.w	r3, r0, r0, lsl #1
d0044d8a:	eb02 1343 	add.w	r3, r2, r3, lsl #5
d0044d8e:	f893 2034 	ldrb.w	r2, [r3, #52]	; 0x34
d0044d92:	b11a      	cbz	r2, d0044d9c <entityRotation+0x1c>
d0044d94:	68db      	ldr	r3, [r3, #12]
d0044d96:	b10b      	cbz	r3, d0044d9c <entityRotation+0x1c>
d0044d98:	f7ff bc16 	b.w	d00445c8 <entityRotation.part.0>
d0044d9c:	4770      	bx	lr
d0044d9e:	bf00      	nop
d0044da0:	d012e7c0 	.word	0xd012e7c0

d0044da4 <copyMesh>:
d0044da4:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0044da8:	460f      	mov	r7, r1
d0044daa:	b083      	sub	sp, #12
d0044dac:	2240      	movs	r2, #64	; 0x40
d0044dae:	2100      	movs	r1, #0
d0044db0:	4606      	mov	r6, r0
d0044db2:	f002 fdbd 	bl	d0047930 <memset>
d0044db6:	2f00      	cmp	r7, #0
d0044db8:	d077      	beq.n	d0044eaa <copyMesh+0x106>
d0044dba:	687b      	ldr	r3, [r7, #4]
d0044dbc:	697a      	ldr	r2, [r7, #20]
d0044dbe:	2b00      	cmp	r3, #0
d0044dc0:	f8d7 800c 	ldr.w	r8, [r7, #12]
d0044dc4:	9301      	str	r3, [sp, #4]
d0044dc6:	9200      	str	r2, [sp, #0]
d0044dc8:	dc59      	bgt.n	d0044e7e <copyMesh+0xda>
d0044dca:	f1b8 0f00 	cmp.w	r8, #0
d0044dce:	f04f 0900 	mov.w	r9, #0
d0044dd2:	dc5d      	bgt.n	d0044e90 <copyMesh+0xec>
d0044dd4:	9b00      	ldr	r3, [sp, #0]
d0044dd6:	f04f 0a00 	mov.w	sl, #0
d0044dda:	2b00      	cmp	r3, #0
d0044ddc:	dc60      	bgt.n	d0044ea0 <copyMesh+0xfc>
d0044dde:	f04f 0c00 	mov.w	ip, #0
d0044de2:	9b01      	ldr	r3, [sp, #4]
d0044de4:	2b00      	cmp	r3, #0
d0044de6:	dd0f      	ble.n	d0044e08 <copyMesh+0x64>
d0044de8:	eb03 0543 	add.w	r5, r3, r3, lsl #1
d0044dec:	f8d7 e000 	ldr.w	lr, [r7]
d0044df0:	2300      	movs	r3, #0
d0044df2:	00ad      	lsls	r5, r5, #2
d0044df4:	eb0e 0203 	add.w	r2, lr, r3
d0044df8:	eb09 0403 	add.w	r4, r9, r3
d0044dfc:	330c      	adds	r3, #12
d0044dfe:	ca07      	ldmia	r2, {r0, r1, r2}
d0044e00:	429d      	cmp	r5, r3
d0044e02:	e884 0007 	stmia.w	r4, {r0, r1, r2}
d0044e06:	d1f5      	bne.n	d0044df4 <copyMesh+0x50>
d0044e08:	f1b8 0f00 	cmp.w	r8, #0
d0044e0c:	dd0b      	ble.n	d0044e26 <copyMesh+0x82>
d0044e0e:	68bc      	ldr	r4, [r7, #8]
d0044e10:	2300      	movs	r3, #0
d0044e12:	eb04 01c3 	add.w	r1, r4, r3, lsl #3
d0044e16:	eb0a 02c3 	add.w	r2, sl, r3, lsl #3
d0044e1a:	3301      	adds	r3, #1
d0044e1c:	c903      	ldmia	r1, {r0, r1}
d0044e1e:	4598      	cmp	r8, r3
d0044e20:	e882 0003 	stmia.w	r2, {r0, r1}
d0044e24:	d1f5      	bne.n	d0044e12 <copyMesh+0x6e>
d0044e26:	9b00      	ldr	r3, [sp, #0]
d0044e28:	2b00      	cmp	r3, #0
d0044e2a:	dd0e      	ble.n	d0044e4a <copyMesh+0xa6>
d0044e2c:	f8d7 b010 	ldr.w	fp, [r7, #16]
d0044e30:	ea4f 1e03 	mov.w	lr, r3, lsl #4
d0044e34:	2400      	movs	r4, #0
d0044e36:	eb0b 0304 	add.w	r3, fp, r4
d0044e3a:	eb0c 0504 	add.w	r5, ip, r4
d0044e3e:	3410      	adds	r4, #16
d0044e40:	cb0f      	ldmia	r3, {r0, r1, r2, r3}
d0044e42:	4574      	cmp	r4, lr
d0044e44:	e885 000f 	stmia.w	r5, {r0, r1, r2, r3}
d0044e48:	d1f5      	bne.n	d0044e36 <copyMesh+0x92>
d0044e4a:	9a01      	ldr	r2, [sp, #4]
d0044e4c:	f107 0520 	add.w	r5, r7, #32
d0044e50:	69bb      	ldr	r3, [r7, #24]
d0044e52:	f106 0420 	add.w	r4, r6, #32
d0044e56:	6072      	str	r2, [r6, #4]
d0044e58:	9a00      	ldr	r2, [sp, #0]
d0044e5a:	61b3      	str	r3, [r6, #24]
d0044e5c:	6172      	str	r2, [r6, #20]
d0044e5e:	f8c6 9000 	str.w	r9, [r6]
d0044e62:	f8c6 c010 	str.w	ip, [r6, #16]
d0044e66:	cd0f      	ldmia	r5!, {r0, r1, r2, r3}
d0044e68:	c40f      	stmia	r4!, {r0, r1, r2, r3}
d0044e6a:	e895 000f 	ldmia.w	r5, {r0, r1, r2, r3}
d0044e6e:	e884 000f 	stmia.w	r4, {r0, r1, r2, r3}
d0044e72:	4630      	mov	r0, r6
d0044e74:	e9c6 a802 	strd	sl, r8, [r6, #8]
d0044e78:	b003      	add	sp, #12
d0044e7a:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0044e7e:	eb03 0043 	add.w	r0, r3, r3, lsl #1
d0044e82:	0080      	lsls	r0, r0, #2
d0044e84:	f002 fd28 	bl	d00478d8 <malloc>
d0044e88:	f1b8 0f00 	cmp.w	r8, #0
d0044e8c:	4681      	mov	r9, r0
d0044e8e:	dda1      	ble.n	d0044dd4 <copyMesh+0x30>
d0044e90:	ea4f 00c8 	mov.w	r0, r8, lsl #3
d0044e94:	f002 fd20 	bl	d00478d8 <malloc>
d0044e98:	9b00      	ldr	r3, [sp, #0]
d0044e9a:	4682      	mov	sl, r0
d0044e9c:	2b00      	cmp	r3, #0
d0044e9e:	dd9e      	ble.n	d0044dde <copyMesh+0x3a>
d0044ea0:	0118      	lsls	r0, r3, #4
d0044ea2:	f002 fd19 	bl	d00478d8 <malloc>
d0044ea6:	4684      	mov	ip, r0
d0044ea8:	e79b      	b.n	d0044de2 <copyMesh+0x3e>
d0044eaa:	2300      	movs	r3, #0
d0044eac:	4630      	mov	r0, r6
d0044eae:	e9c6 7700 	strd	r7, r7, [r6]
d0044eb2:	e9c6 7702 	strd	r7, r7, [r6, #8]
d0044eb6:	e9c6 7704 	strd	r7, r7, [r6, #16]
d0044eba:	61b3      	str	r3, [r6, #24]
d0044ebc:	b003      	add	sp, #12
d0044ebe:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0044ec2:	bf00      	nop

d0044ec4 <buildLightingCLUT>:
d0044ec4:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0044ec8:	f1b2 0900 	subs.w	r9, r2, #0
d0044ecc:	b085      	sub	sp, #20
d0044ece:	9c0e      	ldr	r4, [sp, #56]	; 0x38
d0044ed0:	f340 8212 	ble.w	d00452f8 <buildLightingCLUT+0x434>
d0044ed4:	eef7 7a00 	vmov.f32	s15, #112	; 0x3f800000  1.0
d0044ed8:	4f24      	ldr	r7, [pc, #144]	; (d0044f6c <buildLightingCLUT+0xa8>)
d0044eda:	eb09 0c49 	add.w	ip, r9, r9, lsl #1
d0044ede:	edd4 4a00 	vldr	s9, [r4]
d0044ee2:	ed94 5a01 	vldr	s10, [r4, #4]
d0044ee6:	eb09 0807 	add.w	r8, r9, r7
d0044eea:	edd4 5a02 	vldr	s11, [r4, #8]
d0044eee:	eb07 0e49 	add.w	lr, r7, r9, lsl #1
d0044ef2:	ed94 6a03 	vldr	s12, [r4, #12]
d0044ef6:	44bc      	add	ip, r7
d0044ef8:	edd4 6a04 	vldr	s13, [r4, #16]
d0044efc:	eb07 0789 	add.w	r7, r7, r9, lsl #2
d0044f00:	3904      	subs	r1, #4
d0044f02:	ee77 4ae4 	vsub.f32	s9, s15, s9
d0044f06:	ee37 5ac5 	vsub.f32	s10, s15, s10
d0044f0a:	ed9f 7a19 	vldr	s14, [pc, #100]	; d0044f70 <buildLightingCLUT+0xac>
d0044f0e:	ee77 5ae5 	vsub.f32	s11, s15, s11
d0044f12:	f100 067c 	add.w	r6, r0, #124	; 0x7c
d0044f16:	ee37 6ac6 	vsub.f32	s12, s15, s12
d0044f1a:	eb00 0888 	add.w	r8, r0, r8, lsl #2
d0044f1e:	ee77 6ae6 	vsub.f32	s13, s15, s13
d0044f22:	eb00 0e8e 	add.w	lr, r0, lr, lsl #2
d0044f26:	eb00 0c8c 	add.w	ip, r0, ip, lsl #2
d0044f2a:	f3c3 4507 	ubfx	r5, r3, #16, #8
d0044f2e:	eb00 0787 	add.w	r7, r0, r7, lsl #2
d0044f32:	f3c3 2007 	ubfx	r0, r3, #8, #8
d0044f36:	eb01 0989 	add.w	r9, r1, r9, lsl #2
d0044f3a:	fec4 4a87 	vmaxnm.f32	s9, s9, s14
d0044f3e:	0e1c      	lsrs	r4, r3, #24
d0044f40:	fe85 5a07 	vmaxnm.f32	s10, s10, s14
d0044f44:	b2da      	uxtb	r2, r3
d0044f46:	fec5 5a87 	vmaxnm.f32	s11, s11, s14
d0044f4a:	fe86 6a07 	vmaxnm.f32	s12, s12, s14
d0044f4e:	fec6 6a87 	vmaxnm.f32	s13, s13, s14
d0044f52:	fec4 4ae7 	vminnm.f32	s9, s9, s15
d0044f56:	fe85 5a67 	vminnm.f32	s10, s10, s15
d0044f5a:	fec5 5ae7 	vminnm.f32	s11, s11, s15
d0044f5e:	fe86 6a67 	vminnm.f32	s12, s12, s15
d0044f62:	fec6 6ae7 	vminnm.f32	s13, s13, s15
d0044f66:	9601      	str	r6, [sp, #4]
d0044f68:	e004      	b.n	d0044f74 <buildLightingCLUT+0xb0>
d0044f6a:	bf00      	nop
d0044f6c:	4000001f 	.word	0x4000001f
d0044f70:	00000000 	.word	0x00000000
d0044f74:	f851 3f04 	ldr.w	r3, [r1, #4]!
d0044f78:	f3c3 4b07 	ubfx	fp, r3, #16, #8
d0044f7c:	0e1e      	lsrs	r6, r3, #24
d0044f7e:	fa5f fa83 	uxtb.w	sl, r3
d0044f82:	4549      	cmp	r1, r9
d0044f84:	ee07 6a10 	vmov	s14, r6
d0044f88:	eba5 060b 	sub.w	r6, r5, fp
d0044f8c:	ee04 ba10 	vmov	s8, fp
d0044f90:	ee07 6a90 	vmov	s15, r6
d0044f94:	eba4 6613 	sub.w	r6, r4, r3, lsr #24
d0044f98:	eef8 3ac4 	vcvt.f32.s32	s7, s8
d0044f9c:	f3c3 2307 	ubfx	r3, r3, #8, #8
d0044fa0:	ee02 6a10 	vmov	s4, r6
d0044fa4:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0044fa8:	eba2 060a 	sub.w	r6, r2, sl
d0044fac:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
d0044fb0:	eeb8 2ac2 	vcvt.f32.s32	s4, s4
d0044fb4:	ee04 aa10 	vmov	s8, sl
d0044fb8:	ee02 6a90 	vmov	s5, r6
d0044fbc:	eba0 0603 	sub.w	r6, r0, r3
d0044fc0:	eee4 3aa7 	vfma.f32	s7, s9, s15
d0044fc4:	ee07 3a90 	vmov	s15, r3
d0044fc8:	eea4 7a82 	vfma.f32	s14, s9, s4
d0044fcc:	ee03 6a10 	vmov	s6, r6
d0044fd0:	eef8 2ae2 	vcvt.f32.s32	s5, s5
d0044fd4:	9e01      	ldr	r6, [sp, #4]
d0044fd6:	eeb8 4ac4 	vcvt.f32.s32	s8, s8
d0044fda:	eeb8 3ac3 	vcvt.f32.s32	s6, s6
d0044fde:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0044fe2:	eea4 4aa2 	vfma.f32	s8, s9, s5
d0044fe6:	eefc 3ae3 	vcvt.u32.f32	s7, s7
d0044fea:	eee4 7a83 	vfma.f32	s15, s9, s6
d0044fee:	eebc 7ac7 	vcvt.u32.f32	s14, s14
d0044ff2:	edcd 3a02 	vstr	s7, [sp, #8]
d0044ff6:	f89d a008 	ldrb.w	sl, [sp, #8]
d0044ffa:	ee17 3a10 	vmov	r3, s14
d0044ffe:	eebc 7ac4 	vcvt.u32.f32	s14, s8
d0045002:	ea4f 4a0a 	mov.w	sl, sl, lsl #16
d0045006:	eefc 7ae7 	vcvt.u32.f32	s15, s15
d004500a:	ed8d 7a02 	vstr	s14, [sp, #8]
d004500e:	ea4a 6303 	orr.w	r3, sl, r3, lsl #24
d0045012:	f89d b008 	ldrb.w	fp, [sp, #8]
d0045016:	edcd 7a03 	vstr	s15, [sp, #12]
d004501a:	ea43 030b 	orr.w	r3, r3, fp
d004501e:	f89d a00c 	ldrb.w	sl, [sp, #12]
d0045022:	ea43 230a 	orr.w	r3, r3, sl, lsl #8
d0045026:	f846 3f04 	str.w	r3, [r6, #4]!
d004502a:	680b      	ldr	r3, [r1, #0]
d004502c:	9601      	str	r6, [sp, #4]
d004502e:	f3c3 4b07 	ubfx	fp, r3, #16, #8
d0045032:	ea4f 6613 	mov.w	r6, r3, lsr #24
d0045036:	fa5f fa83 	uxtb.w	sl, r3
d004503a:	ee07 6a10 	vmov	s14, r6
d004503e:	eba5 060b 	sub.w	r6, r5, fp
d0045042:	ee04 ba10 	vmov	s8, fp
d0045046:	ee07 6a90 	vmov	s15, r6
d004504a:	eba4 6613 	sub.w	r6, r4, r3, lsr #24
d004504e:	eef8 3ac4 	vcvt.f32.s32	s7, s8
d0045052:	f3c3 2307 	ubfx	r3, r3, #8, #8
d0045056:	ee02 6a10 	vmov	s4, r6
d004505a:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d004505e:	eba2 060a 	sub.w	r6, r2, sl
d0045062:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
d0045066:	eeb8 2ac2 	vcvt.f32.s32	s4, s4
d004506a:	ee04 aa10 	vmov	s8, sl
d004506e:	ee02 6a90 	vmov	s5, r6
d0045072:	eba0 0603 	sub.w	r6, r0, r3
d0045076:	eee5 3a27 	vfma.f32	s7, s10, s15
d004507a:	ee07 3a90 	vmov	s15, r3
d004507e:	eea5 7a02 	vfma.f32	s14, s10, s4
d0045082:	ee03 6a10 	vmov	s6, r6
d0045086:	eef8 2ae2 	vcvt.f32.s32	s5, s5
d004508a:	eeb8 4ac4 	vcvt.f32.s32	s8, s8
d004508e:	eeb8 3ac3 	vcvt.f32.s32	s6, s6
d0045092:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0045096:	eea5 4a22 	vfma.f32	s8, s10, s5
d004509a:	eefc 3ae3 	vcvt.u32.f32	s7, s7
d004509e:	eee5 7a03 	vfma.f32	s15, s10, s6
d00450a2:	eebc 7ac7 	vcvt.u32.f32	s14, s14
d00450a6:	edcd 3a02 	vstr	s7, [sp, #8]
d00450aa:	f89d a008 	ldrb.w	sl, [sp, #8]
d00450ae:	ee17 3a10 	vmov	r3, s14
d00450b2:	eebc 7ac4 	vcvt.u32.f32	s14, s8
d00450b6:	ea4f 4a0a 	mov.w	sl, sl, lsl #16
d00450ba:	eefc 7ae7 	vcvt.u32.f32	s15, s15
d00450be:	ed8d 7a02 	vstr	s14, [sp, #8]
d00450c2:	ea4a 6303 	orr.w	r3, sl, r3, lsl #24
d00450c6:	f89d b008 	ldrb.w	fp, [sp, #8]
d00450ca:	edcd 7a03 	vstr	s15, [sp, #12]
d00450ce:	ea43 030b 	orr.w	r3, r3, fp
d00450d2:	f89d a00c 	ldrb.w	sl, [sp, #12]
d00450d6:	ea43 230a 	orr.w	r3, r3, sl, lsl #8
d00450da:	f848 3f04 	str.w	r3, [r8, #4]!
d00450de:	680b      	ldr	r3, [r1, #0]
d00450e0:	f3c3 4b07 	ubfx	fp, r3, #16, #8
d00450e4:	ea4f 6613 	mov.w	r6, r3, lsr #24
d00450e8:	fa5f fa83 	uxtb.w	sl, r3
d00450ec:	ee07 6a10 	vmov	s14, r6
d00450f0:	eba5 060b 	sub.w	r6, r5, fp
d00450f4:	ee04 ba10 	vmov	s8, fp
d00450f8:	ee07 6a90 	vmov	s15, r6
d00450fc:	eba4 6613 	sub.w	r6, r4, r3, lsr #24
d0045100:	eef8 3ac4 	vcvt.f32.s32	s7, s8
d0045104:	f3c3 2307 	ubfx	r3, r3, #8, #8
d0045108:	ee02 6a10 	vmov	s4, r6
d004510c:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0045110:	eba2 060a 	sub.w	r6, r2, sl
d0045114:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
d0045118:	eeb8 2ac2 	vcvt.f32.s32	s4, s4
d004511c:	ee04 aa10 	vmov	s8, sl
d0045120:	ee02 6a90 	vmov	s5, r6
d0045124:	eba0 0603 	sub.w	r6, r0, r3
d0045128:	eee5 3aa7 	vfma.f32	s7, s11, s15
d004512c:	ee07 3a90 	vmov	s15, r3
d0045130:	eea5 7a82 	vfma.f32	s14, s11, s4
d0045134:	ee03 6a10 	vmov	s6, r6
d0045138:	eef8 2ae2 	vcvt.f32.s32	s5, s5
d004513c:	eeb8 4ac4 	vcvt.f32.s32	s8, s8
d0045140:	eeb8 3ac3 	vcvt.f32.s32	s6, s6
d0045144:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0045148:	eea5 4aa2 	vfma.f32	s8, s11, s5
d004514c:	eefc 3ae3 	vcvt.u32.f32	s7, s7
d0045150:	eee5 7a83 	vfma.f32	s15, s11, s6
d0045154:	eebc 7ac7 	vcvt.u32.f32	s14, s14
d0045158:	edcd 3a02 	vstr	s7, [sp, #8]
d004515c:	f89d a008 	ldrb.w	sl, [sp, #8]
d0045160:	ee17 3a10 	vmov	r3, s14
d0045164:	eebc 7ac4 	vcvt.u32.f32	s14, s8
d0045168:	ea4f 4a0a 	mov.w	sl, sl, lsl #16
d004516c:	eefc 7ae7 	vcvt.u32.f32	s15, s15
d0045170:	ed8d 7a02 	vstr	s14, [sp, #8]
d0045174:	ea4a 6303 	orr.w	r3, sl, r3, lsl #24
d0045178:	f89d b008 	ldrb.w	fp, [sp, #8]
d004517c:	edcd 7a03 	vstr	s15, [sp, #12]
d0045180:	ea43 030b 	orr.w	r3, r3, fp
d0045184:	f89d a00c 	ldrb.w	sl, [sp, #12]
d0045188:	ea43 230a 	orr.w	r3, r3, sl, lsl #8
d004518c:	f84e 3f04 	str.w	r3, [lr, #4]!
d0045190:	680b      	ldr	r3, [r1, #0]
d0045192:	f3c3 4b07 	ubfx	fp, r3, #16, #8
d0045196:	ea4f 6613 	mov.w	r6, r3, lsr #24
d004519a:	fa5f fa83 	uxtb.w	sl, r3
d004519e:	ee07 6a10 	vmov	s14, r6
d00451a2:	eba5 060b 	sub.w	r6, r5, fp
d00451a6:	ee04 ba10 	vmov	s8, fp
d00451aa:	ee07 6a90 	vmov	s15, r6
d00451ae:	eba4 6613 	sub.w	r6, r4, r3, lsr #24
d00451b2:	eef8 3ac4 	vcvt.f32.s32	s7, s8
d00451b6:	f3c3 2307 	ubfx	r3, r3, #8, #8
d00451ba:	ee02 6a10 	vmov	s4, r6
d00451be:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d00451c2:	eba2 060a 	sub.w	r6, r2, sl
d00451c6:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
d00451ca:	eeb8 2ac2 	vcvt.f32.s32	s4, s4
d00451ce:	ee04 aa10 	vmov	s8, sl
d00451d2:	ee02 6a90 	vmov	s5, r6
d00451d6:	eba0 0603 	sub.w	r6, r0, r3
d00451da:	eee6 3a27 	vfma.f32	s7, s12, s15
d00451de:	ee07 3a90 	vmov	s15, r3
d00451e2:	eea6 7a02 	vfma.f32	s14, s12, s4
d00451e6:	ee03 6a10 	vmov	s6, r6
d00451ea:	eef8 2ae2 	vcvt.f32.s32	s5, s5
d00451ee:	eeb8 4ac4 	vcvt.f32.s32	s8, s8
d00451f2:	eeb8 3ac3 	vcvt.f32.s32	s6, s6
d00451f6:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d00451fa:	eea6 4a22 	vfma.f32	s8, s12, s5
d00451fe:	eefc 3ae3 	vcvt.u32.f32	s7, s7
d0045202:	eee6 7a03 	vfma.f32	s15, s12, s6
d0045206:	eebc 7ac7 	vcvt.u32.f32	s14, s14
d004520a:	edcd 3a02 	vstr	s7, [sp, #8]
d004520e:	f89d a008 	ldrb.w	sl, [sp, #8]
d0045212:	ee17 3a10 	vmov	r3, s14
d0045216:	eebc 7ac4 	vcvt.u32.f32	s14, s8
d004521a:	ea4f 4a0a 	mov.w	sl, sl, lsl #16
d004521e:	eefc 7ae7 	vcvt.u32.f32	s15, s15
d0045222:	ed8d 7a02 	vstr	s14, [sp, #8]
d0045226:	ea4a 6303 	orr.w	r3, sl, r3, lsl #24
d004522a:	f89d b008 	ldrb.w	fp, [sp, #8]
d004522e:	edcd 7a03 	vstr	s15, [sp, #12]
d0045232:	ea43 030b 	orr.w	r3, r3, fp
d0045236:	f89d a00c 	ldrb.w	sl, [sp, #12]
d004523a:	ea43 230a 	orr.w	r3, r3, sl, lsl #8
d004523e:	f84c 3f04 	str.w	r3, [ip, #4]!
d0045242:	680b      	ldr	r3, [r1, #0]
d0045244:	f3c3 4b07 	ubfx	fp, r3, #16, #8
d0045248:	ea4f 6613 	mov.w	r6, r3, lsr #24
d004524c:	fa5f fa83 	uxtb.w	sl, r3
d0045250:	ee07 6a10 	vmov	s14, r6
d0045254:	eba5 060b 	sub.w	r6, r5, fp
d0045258:	ee04 ba10 	vmov	s8, fp
d004525c:	ee07 6a90 	vmov	s15, r6
d0045260:	eba4 6613 	sub.w	r6, r4, r3, lsr #24
d0045264:	eef8 3ac4 	vcvt.f32.s32	s7, s8
d0045268:	f3c3 2307 	ubfx	r3, r3, #8, #8
d004526c:	ee02 6a10 	vmov	s4, r6
d0045270:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0045274:	eba2 060a 	sub.w	r6, r2, sl
d0045278:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
d004527c:	eeb8 2ac2 	vcvt.f32.s32	s4, s4
d0045280:	ee04 aa10 	vmov	s8, sl
d0045284:	ee02 6a90 	vmov	s5, r6
d0045288:	eba0 0603 	sub.w	r6, r0, r3
d004528c:	eee6 3aa7 	vfma.f32	s7, s13, s15
d0045290:	ee07 3a90 	vmov	s15, r3
d0045294:	eea6 7a82 	vfma.f32	s14, s13, s4
d0045298:	ee03 6a10 	vmov	s6, r6
d004529c:	eeb8 4ac4 	vcvt.f32.s32	s8, s8
d00452a0:	eef8 2ae2 	vcvt.f32.s32	s5, s5
d00452a4:	eeb8 3ac3 	vcvt.f32.s32	s6, s6
d00452a8:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d00452ac:	eea6 4aa2 	vfma.f32	s8, s13, s5
d00452b0:	eefc 3ae3 	vcvt.u32.f32	s7, s7
d00452b4:	eee6 7a83 	vfma.f32	s15, s13, s6
d00452b8:	eebc 7ac7 	vcvt.u32.f32	s14, s14
d00452bc:	edcd 3a02 	vstr	s7, [sp, #8]
d00452c0:	f89d a008 	ldrb.w	sl, [sp, #8]
d00452c4:	ee17 3a10 	vmov	r3, s14
d00452c8:	eebc 7ac4 	vcvt.u32.f32	s14, s8
d00452cc:	ea4f 4a0a 	mov.w	sl, sl, lsl #16
d00452d0:	eefc 7ae7 	vcvt.u32.f32	s15, s15
d00452d4:	ea4a 6303 	orr.w	r3, sl, r3, lsl #24
d00452d8:	ed8d 7a02 	vstr	s14, [sp, #8]
d00452dc:	f89d b008 	ldrb.w	fp, [sp, #8]
d00452e0:	edcd 7a03 	vstr	s15, [sp, #12]
d00452e4:	ea43 030b 	orr.w	r3, r3, fp
d00452e8:	f89d a00c 	ldrb.w	sl, [sp, #12]
d00452ec:	ea43 230a 	orr.w	r3, r3, sl, lsl #8
d00452f0:	f847 3f04 	str.w	r3, [r7, #4]!
d00452f4:	f47f ae3e 	bne.w	d0044f74 <buildLightingCLUT+0xb0>
d00452f8:	b005      	add	sp, #20
d00452fa:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d00452fe:	bf00      	nop

d0045300 <brightnessToShadeF>:
d0045300:	eeb7 7a00 	vmov.f32	s14, #112	; 0x3f800000  1.0
d0045304:	eddf 7a09 	vldr	s15, [pc, #36]	; d004532c <brightnessToShadeF+0x2c>
d0045308:	eeb6 6a00 	vmov.f32	s12, #96	; 0x3f000000  0.5
d004530c:	eef7 6a08 	vmov.f32	s13, #120	; 0x3fc00000  1.5
d0045310:	fe80 0a27 	vmaxnm.f32	s0, s0, s15
d0045314:	fec0 7a47 	vminnm.f32	s15, s0, s14
d0045318:	eeb1 0a04 	vmov.f32	s0, #20	; 0x40a00000  5.0
d004531c:	eee7 6ac6 	vfms.f32	s13, s15, s12
d0045320:	eea6 7ae7 	vfms.f32	s14, s13, s15
d0045324:	ee27 0a00 	vmul.f32	s0, s14, s0
d0045328:	4770      	bx	lr
d004532a:	bf00      	nop
d004532c:	00000000 	.word	0x00000000

d0045330 <lightSetRanges>:
d0045330:	2800      	cmp	r0, #0
d0045332:	db0c      	blt.n	d004534e <lightSetRanges+0x1e>
d0045334:	4b06      	ldr	r3, [pc, #24]	; (d0045350 <lightSetRanges+0x20>)
d0045336:	681b      	ldr	r3, [r3, #0]
d0045338:	4283      	cmp	r3, r0
d004533a:	dd08      	ble.n	d004534e <lightSetRanges+0x1e>
d004533c:	4b05      	ldr	r3, [pc, #20]	; (d0045354 <lightSetRanges+0x24>)
d004533e:	eb03 1080 	add.w	r0, r3, r0, lsl #6
d0045342:	ed80 0a08 	vstr	s0, [r0, #32]
d0045346:	edc0 0a09 	vstr	s1, [r0, #36]	; 0x24
d004534a:	ed80 1a0a 	vstr	s2, [r0, #40]	; 0x28
d004534e:	4770      	bx	lr
d0045350:	d00960a0 	.word	0xd00960a0
d0045354:	d00960c0 	.word	0xd00960c0

d0045358 <lightsGet>:
d0045358:	4800      	ldr	r0, [pc, #0]	; (d004535c <lightsGet+0x4>)
d004535a:	4770      	bx	lr
d004535c:	d00960c0 	.word	0xd00960c0

d0045360 <lightsGetCount>:
d0045360:	4b01      	ldr	r3, [pc, #4]	; (d0045368 <lightsGetCount+0x8>)
d0045362:	6818      	ldr	r0, [r3, #0]
d0045364:	4770      	bx	lr
d0045366:	bf00      	nop
d0045368:	d00960a0 	.word	0xd00960a0

d004536c <lightsClear>:
d004536c:	4b01      	ldr	r3, [pc, #4]	; (d0045374 <lightsClear+0x8>)
d004536e:	2200      	movs	r2, #0
d0045370:	601a      	str	r2, [r3, #0]
d0045372:	4770      	bx	lr
d0045374:	d00960a0 	.word	0xd00960a0

d0045378 <lightEnable>:
d0045378:	4b04      	ldr	r3, [pc, #16]	; (d004538c <lightEnable+0x14>)
d004537a:	681b      	ldr	r3, [r3, #0]
d004537c:	4298      	cmp	r0, r3
d004537e:	da03      	bge.n	d0045388 <lightEnable+0x10>
d0045380:	4b03      	ldr	r3, [pc, #12]	; (d0045390 <lightEnable+0x18>)
d0045382:	eb03 1080 	add.w	r0, r3, r0, lsl #6
d0045386:	62c1      	str	r1, [r0, #44]	; 0x2c
d0045388:	4770      	bx	lr
d004538a:	bf00      	nop
d004538c:	d00960a0 	.word	0xd00960a0
d0045390:	d00960c0 	.word	0xd00960c0

d0045394 <addPointLight>:
d0045394:	4918      	ldr	r1, [pc, #96]	; (d00453f8 <addPointLight+0x64>)
d0045396:	b5f0      	push	{r4, r5, r6, r7, lr}
d0045398:	680c      	ldr	r4, [r1, #0]
d004539a:	b085      	sub	sp, #20
d004539c:	2c07      	cmp	r4, #7
d004539e:	ed8d 0a01 	vstr	s0, [sp, #4]
d00453a2:	edcd 0a02 	vstr	s1, [sp, #8]
d00453a6:	ed8d 1a03 	vstr	s2, [sp, #12]
d00453aa:	dc21      	bgt.n	d00453f0 <addPointLight+0x5c>
d00453ac:	4d13      	ldr	r5, [pc, #76]	; (d00453fc <addPointLight+0x68>)
d00453ae:	01a2      	lsls	r2, r4, #6
d00453b0:	2600      	movs	r6, #0
d00453b2:	f8df e050 	ldr.w	lr, [pc, #80]	; d0045404 <addPointLight+0x70>
d00453b6:	eb05 1384 	add.w	r3, r5, r4, lsl #6
d00453ba:	f8df c04c 	ldr.w	ip, [pc, #76]	; d0045408 <addPointLight+0x74>
d00453be:	54ae      	strb	r6, [r5, r2]
d00453c0:	2200      	movs	r2, #0
d00453c2:	4f0f      	ldr	r7, [pc, #60]	; (d0045400 <addPointLight+0x6c>)
d00453c4:	1d1d      	adds	r5, r3, #4
d00453c6:	62d8      	str	r0, [r3, #44]	; 0x2c
d00453c8:	1c66      	adds	r6, r4, #1
d00453ca:	611a      	str	r2, [r3, #16]
d00453cc:	615a      	str	r2, [r3, #20]
d00453ce:	619a      	str	r2, [r3, #24]
d00453d0:	edc3 1a07 	vstr	s3, [r3, #28]
d00453d4:	f8c3 e020 	str.w	lr, [r3, #32]
d00453d8:	f8c3 c024 	str.w	ip, [r3, #36]	; 0x24
d00453dc:	629f      	str	r7, [r3, #40]	; 0x28
d00453de:	ab04      	add	r3, sp, #16
d00453e0:	600e      	str	r6, [r1, #0]
d00453e2:	e913 0007 	ldmdb	r3, {r0, r1, r2}
d00453e6:	e885 0007 	stmia.w	r5, {r0, r1, r2}
d00453ea:	4620      	mov	r0, r4
d00453ec:	b005      	add	sp, #20
d00453ee:	bdf0      	pop	{r4, r5, r6, r7, pc}
d00453f0:	f04f 34ff 	mov.w	r4, #4294967295	; 0xffffffff
d00453f4:	e7f9      	b.n	d00453ea <addPointLight+0x56>
d00453f6:	bf00      	nop
d00453f8:	d00960a0 	.word	0xd00960a0
d00453fc:	d00960c0 	.word	0xd00960c0
d0045400:	44020000 	.word	0x44020000
d0045404:	42c80000 	.word	0x42c80000
d0045408:	43660000 	.word	0x43660000

d004540c <addDirectionalLight>:
d004540c:	b5f0      	push	{r4, r5, r6, r7, lr}
d004540e:	4f15      	ldr	r7, [pc, #84]	; (d0045464 <addDirectionalLight+0x58>)
d0045410:	683d      	ldr	r5, [r7, #0]
d0045412:	2d07      	cmp	r5, #7
d0045414:	ed2d 8b02 	vpush	{d8}
d0045418:	b085      	sub	sp, #20
d004541a:	dc1f      	bgt.n	d004545c <addDirectionalLight+0x50>
d004541c:	4912      	ldr	r1, [pc, #72]	; (d0045468 <addDirectionalLight+0x5c>)
d004541e:	2300      	movs	r3, #0
d0045420:	4606      	mov	r6, r0
d0045422:	01aa      	lsls	r2, r5, #6
d0045424:	eb01 1485 	add.w	r4, r1, r5, lsl #6
d0045428:	2001      	movs	r0, #1
d004542a:	eeb0 8a61 	vmov.f32	s16, s3
d004542e:	6063      	str	r3, [r4, #4]
d0045430:	60a3      	str	r3, [r4, #8]
d0045432:	60e3      	str	r3, [r4, #12]
d0045434:	5488      	strb	r0, [r1, r2]
d0045436:	f7fe f94f 	bl	d00436d8 <vec3Normalize>
d004543a:	683b      	ldr	r3, [r7, #0]
d004543c:	ed84 8a07 	vstr	s16, [r4, #28]
d0045440:	3301      	adds	r3, #1
d0045442:	62e6      	str	r6, [r4, #44]	; 0x2c
d0045444:	ed84 0a04 	vstr	s0, [r4, #16]
d0045448:	edc4 0a05 	vstr	s1, [r4, #20]
d004544c:	ed84 1a06 	vstr	s2, [r4, #24]
d0045450:	603b      	str	r3, [r7, #0]
d0045452:	4628      	mov	r0, r5
d0045454:	b005      	add	sp, #20
d0045456:	ecbd 8b02 	vpop	{d8}
d004545a:	bdf0      	pop	{r4, r5, r6, r7, pc}
d004545c:	f04f 35ff 	mov.w	r5, #4294967295	; 0xffffffff
d0045460:	e7f7      	b.n	d0045452 <addDirectionalLight+0x46>
d0045462:	bf00      	nop
d0045464:	d00960a0 	.word	0xd00960a0
d0045468:	d00960c0 	.word	0xd00960c0

d004546c <lightSetPosition>:
d004546c:	b084      	sub	sp, #16
d004546e:	2800      	cmp	r0, #0
d0045470:	ed8d 0a01 	vstr	s0, [sp, #4]
d0045474:	edcd 0a02 	vstr	s1, [sp, #8]
d0045478:	ed8d 1a03 	vstr	s2, [sp, #12]
d004547c:	db0c      	blt.n	d0045498 <lightSetPosition+0x2c>
d004547e:	4b07      	ldr	r3, [pc, #28]	; (d004549c <lightSetPosition+0x30>)
d0045480:	681b      	ldr	r3, [r3, #0]
d0045482:	4283      	cmp	r3, r0
d0045484:	dd08      	ble.n	d0045498 <lightSetPosition+0x2c>
d0045486:	4b06      	ldr	r3, [pc, #24]	; (d00454a0 <lightSetPosition+0x34>)
d0045488:	aa04      	add	r2, sp, #16
d004548a:	eb03 1380 	add.w	r3, r3, r0, lsl #6
d004548e:	e912 0007 	ldmdb	r2, {r0, r1, r2}
d0045492:	3304      	adds	r3, #4
d0045494:	e883 0007 	stmia.w	r3, {r0, r1, r2}
d0045498:	b004      	add	sp, #16
d004549a:	4770      	bx	lr
d004549c:	d00960a0 	.word	0xd00960a0
d00454a0:	d00960c0 	.word	0xd00960c0

d00454a4 <lightSetIntensity>:
d00454a4:	2800      	cmp	r0, #0
d00454a6:	db08      	blt.n	d00454ba <lightSetIntensity+0x16>
d00454a8:	4b04      	ldr	r3, [pc, #16]	; (d00454bc <lightSetIntensity+0x18>)
d00454aa:	681b      	ldr	r3, [r3, #0]
d00454ac:	4283      	cmp	r3, r0
d00454ae:	dd04      	ble.n	d00454ba <lightSetIntensity+0x16>
d00454b0:	4b03      	ldr	r3, [pc, #12]	; (d00454c0 <lightSetIntensity+0x1c>)
d00454b2:	eb03 1080 	add.w	r0, r3, r0, lsl #6
d00454b6:	ed80 0a07 	vstr	s0, [r0, #28]
d00454ba:	4770      	bx	lr
d00454bc:	d00960a0 	.word	0xd00960a0
d00454c0:	d00960c0 	.word	0xd00960c0

d00454c4 <setDefaultRenderMode>:
d00454c4:	2300      	movs	r3, #0
d00454c6:	4803      	ldr	r0, [pc, #12]	; (d00454d4 <setDefaultRenderMode+0x10>)
d00454c8:	4903      	ldr	r1, [pc, #12]	; (d00454d8 <setDefaultRenderMode+0x14>)
d00454ca:	4a04      	ldr	r2, [pc, #16]	; (d00454dc <setDefaultRenderMode+0x18>)
d00454cc:	6003      	str	r3, [r0, #0]
d00454ce:	600b      	str	r3, [r1, #0]
d00454d0:	6013      	str	r3, [r2, #0]
d00454d2:	4770      	bx	lr
d00454d4:	d00a22c0 	.word	0xd00a22c0
d00454d8:	d01222e0 	.word	0xd01222e0
d00454dc:	d01222e4 	.word	0xd01222e4

d00454e0 <enableFlatMode>:
d00454e0:	4b01      	ldr	r3, [pc, #4]	; (d00454e8 <enableFlatMode+0x8>)
d00454e2:	6018      	str	r0, [r3, #0]
d00454e4:	4770      	bx	lr
d00454e6:	bf00      	nop
d00454e8:	d00a22c0 	.word	0xd00a22c0

d00454ec <clipTriangleToFrustum>:
d00454ec:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
d00454f0:	ed2d 8b02 	vpush	{d8}
d00454f4:	b0ba      	sub	sp, #232	; 0xe8
d00454f6:	ed91 7a10 	vldr	s14, [r1, #64]	; 0x40
d00454fa:	4605      	mov	r5, r0
d00454fc:	aa07      	add	r2, sp, #28
d00454fe:	ab04      	add	r3, sp, #16
d0045500:	ed8d 0a07 	vstr	s0, [sp, #28]
d0045504:	ac0a      	add	r4, sp, #40	; 0x28
d0045506:	edcd 0a08 	vstr	s1, [sp, #32]
d004550a:	af0d      	add	r7, sp, #52	; 0x34
d004550c:	ed8d 1a09 	vstr	s2, [sp, #36]	; 0x24
d0045510:	ae01      	add	r6, sp, #4
d0045512:	edcd 1a04 	vstr	s3, [sp, #16]
d0045516:	ed8d 2a05 	vstr	s4, [sp, #20]
d004551a:	edcd 2a06 	vstr	s5, [sp, #24]
d004551e:	ed8d 4a03 	vstr	s8, [sp, #12]
d0045522:	ed8d 3a01 	vstr	s6, [sp, #4]
d0045526:	edcd 3a02 	vstr	s7, [sp, #8]
d004552a:	ca07      	ldmia	r2, {r0, r1, r2}
d004552c:	e884 0007 	stmia.w	r4, {r0, r1, r2}
d0045530:	e893 0007 	ldmia.w	r3, {r0, r1, r2}
d0045534:	ab10      	add	r3, sp, #64	; 0x40
d0045536:	ed9d 6a0a 	vldr	s12, [sp, #40]	; 0x28
d004553a:	e887 0007 	stmia.w	r7, {r0, r1, r2}
d004553e:	e896 0007 	ldmia.w	r6, {r0, r1, r2}
d0045542:	e883 0007 	stmia.w	r3, {r0, r1, r2}
d0045546:	ed9d 4a12 	vldr	s8, [sp, #72]	; 0x48
d004554a:	eddd 5a10 	vldr	s11, [sp, #64]	; 0x40
d004554e:	ee34 5a47 	vsub.f32	s10, s8, s14
d0045552:	eddd 7a0c 	vldr	s15, [sp, #48]	; 0x30
d0045556:	eddd 1a11 	vldr	s3, [sp, #68]	; 0x44
d004555a:	ee77 4ac7 	vsub.f32	s9, s15, s14
d004555e:	eddd 6a0b 	vldr	s13, [sp, #44]	; 0x2c
d0045562:	eeb5 5ac0 	vcmpe.f32	s10, #0.0
d0045566:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004556a:	eef5 4ac0 	vcmpe.f32	s9, #0.0
d004556e:	bfac      	ite	ge
d0045570:	2101      	movge	r1, #1
d0045572:	2100      	movlt	r1, #0
d0045574:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0045578:	bfac      	ite	ge
d004557a:	2001      	movge	r0, #1
d004557c:	2000      	movlt	r0, #0
d004557e:	2900      	cmp	r1, #0
d0045580:	f000 825d 	beq.w	d0045a3e <clipTriangleToFrustum+0x552>
d0045584:	2800      	cmp	r0, #0
d0045586:	f000 825a 	beq.w	d0045a3e <clipTriangleToFrustum+0x552>
d004558a:	2301      	movs	r3, #1
d004558c:	ed8d 6a22 	vstr	s12, [sp, #136]	; 0x88
d0045590:	edcd 6a23 	vstr	s13, [sp, #140]	; 0x8c
d0045594:	edcd 7a24 	vstr	s15, [sp, #144]	; 0x90
d0045598:	eddd 3a0f 	vldr	s7, [sp, #60]	; 0x3c
d004559c:	f000 0201 	and.w	r2, r0, #1
d00455a0:	ed9d 2a0d 	vldr	s4, [sp, #52]	; 0x34
d00455a4:	ee33 3ac7 	vsub.f32	s6, s7, s14
d00455a8:	eddd 2a0e 	vldr	s5, [sp, #56]	; 0x38
d00455ac:	eeb5 3ac0 	vcmpe.f32	s6, #0.0
d00455b0:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00455b4:	bfb6      	itet	lt
d00455b6:	2200      	movlt	r2, #0
d00455b8:	2601      	movge	r6, #1
d00455ba:	2600      	movlt	r6, #0
d00455bc:	2a00      	cmp	r2, #0
d00455be:	f000 8277 	beq.w	d0045ab0 <clipTriangleToFrustum+0x5c4>
d00455c2:	eb03 0043 	add.w	r0, r3, r3, lsl #1
d00455c6:	ae22      	add	r6, sp, #136	; 0x88
d00455c8:	3301      	adds	r3, #1
d00455ca:	eb06 0080 	add.w	r0, r6, r0, lsl #2
d00455ce:	ed80 2a00 	vstr	s4, [r0]
d00455d2:	edc0 2a01 	vstr	s5, [r0, #4]
d00455d6:	edc0 3a02 	vstr	s7, [r0, #8]
d00455da:	2a00      	cmp	r2, #0
d00455dc:	f000 828e 	beq.w	d0045afc <clipTriangleToFrustum+0x610>
d00455e0:	2900      	cmp	r1, #0
d00455e2:	f000 828b 	beq.w	d0045afc <clipTriangleToFrustum+0x610>
d00455e6:	eb03 0243 	add.w	r2, r3, r3, lsl #1
d00455ea:	a922      	add	r1, sp, #136	; 0x88
d00455ec:	3301      	adds	r3, #1
d00455ee:	eb01 0282 	add.w	r2, r1, r2, lsl #2
d00455f2:	edc2 5a00 	vstr	s11, [r2]
d00455f6:	edc2 1a01 	vstr	s3, [r2, #4]
d00455fa:	ed82 4a02 	vstr	s8, [r2, #8]
d00455fe:	2b02      	cmp	r3, #2
d0045600:	f340 8216 	ble.w	d0045a30 <clipTriangleToFrustum+0x544>
d0045604:	eb03 0643 	add.w	r6, r3, r3, lsl #1
d0045608:	a822      	add	r0, sp, #136	; 0x88
d004560a:	2300      	movs	r3, #0
d004560c:	00b6      	lsls	r6, r6, #2
d004560e:	4601      	mov	r1, r0
d0045610:	4607      	mov	r7, r0
d0045612:	f1a6 020c 	sub.w	r2, r6, #12
d0045616:	4406      	add	r6, r0
d0045618:	4402      	add	r2, r0
d004561a:	ed92 7a00 	vldr	s14, [r2]
d004561e:	edd2 7a02 	vldr	s15, [r2, #8]
d0045622:	ed92 6a01 	vldr	s12, [r2, #4]
d0045626:	ee77 6a27 	vadd.f32	s13, s14, s15
d004562a:	e009      	b.n	d0045640 <clipTriangleToFrustum+0x154>
d004562c:	3301      	adds	r3, #1
d004562e:	ed82 7a00 	vstr	s14, [r2]
d0045632:	ed82 6a01 	vstr	s12, [r2, #4]
d0045636:	edc2 7a02 	vstr	s15, [r2, #8]
d004563a:	310c      	adds	r1, #12
d004563c:	428e      	cmp	r6, r1
d004563e:	d04e      	beq.n	d00456de <clipTriangleToFrustum+0x1f2>
d0045640:	eeb0 4a47 	vmov.f32	s8, s14
d0045644:	ed91 7a00 	vldr	s14, [r1]
d0045648:	eeb0 5a67 	vmov.f32	s10, s15
d004564c:	edd1 7a02 	vldr	s15, [r1, #8]
d0045650:	eef5 6ac0 	vcmpe.f32	s13, #0.0
d0045654:	eb03 0243 	add.w	r2, r3, r3, lsl #1
d0045658:	eef0 5a66 	vmov.f32	s11, s13
d004565c:	ee77 6a27 	vadd.f32	s13, s14, s15
d0045660:	eb04 0282 	add.w	r2, r4, r2, lsl #2
d0045664:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0045668:	eef0 4a46 	vmov.f32	s9, s12
d004566c:	ed91 6a01 	vldr	s12, [r1, #4]
d0045670:	eef5 6ac0 	vcmpe.f32	s13, #0.0
d0045674:	bfac      	ite	ge
d0045676:	2701      	movge	r7, #1
d0045678:	2700      	movlt	r7, #0
d004567a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004567e:	bfac      	ite	ge
d0045680:	f04f 0c01 	movge.w	ip, #1
d0045684:	f04f 0c00 	movlt.w	ip, #0
d0045688:	b117      	cbz	r7, d0045690 <clipTriangleToFrustum+0x1a4>
d004568a:	f1bc 0f00 	cmp.w	ip, #0
d004568e:	d1cd      	bne.n	d004562c <clipTriangleToFrustum+0x140>
d0045690:	eef5 6a40 	vcmp.f32	s13, #0.0
d0045694:	eb03 0243 	add.w	r2, r3, r3, lsl #1
d0045698:	ee75 1ae6 	vsub.f32	s3, s11, s13
d004569c:	ee37 2a44 	vsub.f32	s4, s14, s8
d00456a0:	eb04 0282 	add.w	r2, r4, r2, lsl #2
d00456a4:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00456a8:	ee76 2a64 	vsub.f32	s5, s12, s9
d00456ac:	ee37 3ac5 	vsub.f32	s6, s15, s10
d00456b0:	f140 818f 	bpl.w	d00459d2 <clipTriangleToFrustum+0x4e6>
d00456b4:	2f00      	cmp	r7, #0
d00456b6:	f000 818c 	beq.w	d00459d2 <clipTriangleToFrustum+0x4e6>
d00456ba:	eec5 3aa1 	vdiv.f32	s7, s11, s3
d00456be:	310c      	adds	r1, #12
d00456c0:	3301      	adds	r3, #1
d00456c2:	428e      	cmp	r6, r1
d00456c4:	eea2 4a23 	vfma.f32	s8, s4, s7
d00456c8:	eee2 4aa3 	vfma.f32	s9, s5, s7
d00456cc:	eea3 5a23 	vfma.f32	s10, s6, s7
d00456d0:	ed82 4a00 	vstr	s8, [r2]
d00456d4:	edc2 4a01 	vstr	s9, [r2, #4]
d00456d8:	ed82 5a02 	vstr	s10, [r2, #8]
d00456dc:	d1b0      	bne.n	d0045640 <clipTriangleToFrustum+0x154>
d00456de:	2b02      	cmp	r3, #2
d00456e0:	f340 81a6 	ble.w	d0045a30 <clipTriangleToFrustum+0x544>
d00456e4:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d00456e8:	4626      	mov	r6, r4
d00456ea:	4627      	mov	r7, r4
d00456ec:	2200      	movs	r2, #0
d00456ee:	009b      	lsls	r3, r3, #2
d00456f0:	f1a3 010c 	sub.w	r1, r3, #12
d00456f4:	4423      	add	r3, r4
d00456f6:	4421      	add	r1, r4
d00456f8:	edd1 7a00 	vldr	s15, [r1]
d00456fc:	ed91 7a02 	vldr	s14, [r1, #8]
d0045700:	ed91 6a01 	vldr	s12, [r1, #4]
d0045704:	ee77 6a67 	vsub.f32	s13, s14, s15
d0045708:	e009      	b.n	d004571e <clipTriangleToFrustum+0x232>
d004570a:	3201      	adds	r2, #1
d004570c:	edc1 7a00 	vstr	s15, [r1]
d0045710:	ed81 6a01 	vstr	s12, [r1, #4]
d0045714:	ed81 7a02 	vstr	s14, [r1, #8]
d0045718:	370c      	adds	r7, #12
d004571a:	42bb      	cmp	r3, r7
d004571c:	d059      	beq.n	d00457d2 <clipTriangleToFrustum+0x2e6>
d004571e:	eeb0 4a67 	vmov.f32	s8, s15
d0045722:	edd7 7a00 	vldr	s15, [r7]
d0045726:	eeb0 5a47 	vmov.f32	s10, s14
d004572a:	ed97 7a02 	vldr	s14, [r7, #8]
d004572e:	eef5 6ac0 	vcmpe.f32	s13, #0.0
d0045732:	f10d 0c88 	add.w	ip, sp, #136	; 0x88
d0045736:	eef0 5a66 	vmov.f32	s11, s13
d004573a:	eb02 0142 	add.w	r1, r2, r2, lsl #1
d004573e:	ee77 6a67 	vsub.f32	s13, s14, s15
d0045742:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0045746:	eb0c 0181 	add.w	r1, ip, r1, lsl #2
d004574a:	eef0 4a46 	vmov.f32	s9, s12
d004574e:	ed97 6a01 	vldr	s12, [r7, #4]
d0045752:	eef5 6ac0 	vcmpe.f32	s13, #0.0
d0045756:	bfac      	ite	ge
d0045758:	f04f 0c01 	movge.w	ip, #1
d004575c:	f04f 0c00 	movlt.w	ip, #0
d0045760:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0045764:	bfac      	ite	ge
d0045766:	f04f 0e01 	movge.w	lr, #1
d004576a:	f04f 0e00 	movlt.w	lr, #0
d004576e:	f1bc 0f00 	cmp.w	ip, #0
d0045772:	d002      	beq.n	d004577a <clipTriangleToFrustum+0x28e>
d0045774:	f1be 0f00 	cmp.w	lr, #0
d0045778:	d1c7      	bne.n	d004570a <clipTriangleToFrustum+0x21e>
d004577a:	eef5 6a40 	vcmp.f32	s13, #0.0
d004577e:	eb02 0142 	add.w	r1, r2, r2, lsl #1
d0045782:	ee77 3aa5 	vadd.f32	s7, s15, s11
d0045786:	f10d 0888 	add.w	r8, sp, #136	; 0x88
d004578a:	ee77 1ac4 	vsub.f32	s3, s15, s8
d004578e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0045792:	eb08 0181 	add.w	r1, r8, r1, lsl #2
d0045796:	ee36 2a64 	vsub.f32	s4, s12, s9
d004579a:	ee73 3ac7 	vsub.f32	s7, s7, s14
d004579e:	ee77 2a45 	vsub.f32	s5, s14, s10
d00457a2:	f140 8268 	bpl.w	d0045c76 <clipTriangleToFrustum+0x78a>
d00457a6:	f1bc 0f00 	cmp.w	ip, #0
d00457aa:	f000 8264 	beq.w	d0045c76 <clipTriangleToFrustum+0x78a>
d00457ae:	ee85 3aa3 	vdiv.f32	s6, s11, s7
d00457b2:	370c      	adds	r7, #12
d00457b4:	3201      	adds	r2, #1
d00457b6:	42bb      	cmp	r3, r7
d00457b8:	eea1 4a83 	vfma.f32	s8, s3, s6
d00457bc:	eee2 4a03 	vfma.f32	s9, s4, s6
d00457c0:	eea2 5a83 	vfma.f32	s10, s5, s6
d00457c4:	ed81 4a00 	vstr	s8, [r1]
d00457c8:	edc1 4a01 	vstr	s9, [r1, #4]
d00457cc:	ed81 5a02 	vstr	s10, [r1, #8]
d00457d0:	d1a5      	bne.n	d004571e <clipTriangleToFrustum+0x232>
d00457d2:	2a02      	cmp	r2, #2
d00457d4:	f340 812c 	ble.w	d0045a30 <clipTriangleToFrustum+0x544>
d00457d8:	eb02 0342 	add.w	r3, r2, r2, lsl #1
d00457dc:	af22      	add	r7, sp, #136	; 0x88
d00457de:	eddf 6add 	vldr	s13, [pc, #884]	; d0045b54 <clipTriangleToFrustum+0x668>
d00457e2:	2200      	movs	r2, #0
d00457e4:	009b      	lsls	r3, r3, #2
d00457e6:	eef0 2a66 	vmov.f32	s5, s13
d00457ea:	f1a3 010c 	sub.w	r1, r3, #12
d00457ee:	443b      	add	r3, r7
d00457f0:	4439      	add	r1, r7
d00457f2:	edd1 7a01 	vldr	s15, [r1, #4]
d00457f6:	ed91 7a02 	vldr	s14, [r1, #8]
d00457fa:	eef0 5a67 	vmov.f32	s11, s15
d00457fe:	ed91 6a00 	vldr	s12, [r1]
d0045802:	eed7 5a26 	vfnms.f32	s11, s14, s13
d0045806:	eef0 6a65 	vmov.f32	s13, s11
d004580a:	e00c      	b.n	d0045826 <clipTriangleToFrustum+0x33a>
d004580c:	f1bc 0f00 	cmp.w	ip, #0
d0045810:	d031      	beq.n	d0045876 <clipTriangleToFrustum+0x38a>
d0045812:	3201      	adds	r2, #1
d0045814:	ed81 6a00 	vstr	s12, [r1]
d0045818:	edc1 7a01 	vstr	s15, [r1, #4]
d004581c:	ed81 7a02 	vstr	s14, [r1, #8]
d0045820:	300c      	adds	r0, #12
d0045822:	4298      	cmp	r0, r3
d0045824:	d050      	beq.n	d00458c8 <clipTriangleToFrustum+0x3dc>
d0045826:	eeb0 5a47 	vmov.f32	s10, s14
d004582a:	ed90 7a02 	vldr	s14, [r0, #8]
d004582e:	eef0 4a67 	vmov.f32	s9, s15
d0045832:	edd0 7a01 	vldr	s15, [r0, #4]
d0045836:	ee67 3a22 	vmul.f32	s7, s14, s5
d004583a:	eb02 0142 	add.w	r1, r2, r2, lsl #1
d004583e:	eef5 6ac0 	vcmpe.f32	s13, #0.0
d0045842:	eef0 5a66 	vmov.f32	s11, s13
d0045846:	eb04 0181 	add.w	r1, r4, r1, lsl #2
d004584a:	ee73 6ae7 	vsub.f32	s13, s7, s15
d004584e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0045852:	eeb0 4a46 	vmov.f32	s8, s12
d0045856:	ed90 6a00 	vldr	s12, [r0]
d004585a:	eef5 6ac0 	vcmpe.f32	s13, #0.0
d004585e:	bfac      	ite	ge
d0045860:	2701      	movge	r7, #1
d0045862:	2700      	movlt	r7, #0
d0045864:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0045868:	bfac      	ite	ge
d004586a:	f04f 0c01 	movge.w	ip, #1
d004586e:	f04f 0c00 	movlt.w	ip, #0
d0045872:	2f00      	cmp	r7, #0
d0045874:	d1ca      	bne.n	d004580c <clipTriangleToFrustum+0x320>
d0045876:	eef5 6a40 	vcmp.f32	s13, #0.0
d004587a:	eb02 0142 	add.w	r1, r2, r2, lsl #1
d004587e:	ee37 3aa5 	vadd.f32	s6, s15, s11
d0045882:	ee36 1a44 	vsub.f32	s2, s12, s8
d0045886:	eb04 0181 	add.w	r1, r4, r1, lsl #2
d004588a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004588e:	ee77 1ae4 	vsub.f32	s3, s15, s9
d0045892:	ee33 3a63 	vsub.f32	s6, s6, s7
d0045896:	ee37 2a45 	vsub.f32	s4, s14, s10
d004589a:	f140 821f 	bpl.w	d0045cdc <clipTriangleToFrustum+0x7f0>
d004589e:	2f00      	cmp	r7, #0
d00458a0:	f000 821c 	beq.w	d0045cdc <clipTriangleToFrustum+0x7f0>
d00458a4:	eec5 3a83 	vdiv.f32	s7, s11, s6
d00458a8:	300c      	adds	r0, #12
d00458aa:	3201      	adds	r2, #1
d00458ac:	4298      	cmp	r0, r3
d00458ae:	eea1 4a23 	vfma.f32	s8, s2, s7
d00458b2:	eee1 4aa3 	vfma.f32	s9, s3, s7
d00458b6:	eea2 5a23 	vfma.f32	s10, s4, s7
d00458ba:	ed81 4a00 	vstr	s8, [r1]
d00458be:	edc1 4a01 	vstr	s9, [r1, #4]
d00458c2:	ed81 5a02 	vstr	s10, [r1, #8]
d00458c6:	d1ae      	bne.n	d0045826 <clipTriangleToFrustum+0x33a>
d00458c8:	2a02      	cmp	r2, #2
d00458ca:	f340 80b1 	ble.w	d0045a30 <clipTriangleToFrustum+0x544>
d00458ce:	eb02 0342 	add.w	r3, r2, r2, lsl #1
d00458d2:	eddf 6aa0 	vldr	s13, [pc, #640]	; d0045b54 <clipTriangleToFrustum+0x668>
d00458d6:	2700      	movs	r7, #0
d00458d8:	009b      	lsls	r3, r3, #2
d00458da:	eef0 3a66 	vmov.f32	s7, s13
d00458de:	f1a3 020c 	sub.w	r2, r3, #12
d00458e2:	4423      	add	r3, r4
d00458e4:	4414      	add	r4, r2
d00458e6:	edd4 7a01 	vldr	s15, [r4, #4]
d00458ea:	ed94 7a02 	vldr	s14, [r4, #8]
d00458ee:	eef0 5a67 	vmov.f32	s11, s15
d00458f2:	ed94 6a00 	vldr	s12, [r4]
d00458f6:	eee7 5a26 	vfma.f32	s11, s14, s13
d00458fa:	eef0 6a65 	vmov.f32	s13, s11
d00458fe:	e00a      	b.n	d0045916 <clipTriangleToFrustum+0x42a>
d0045900:	b380      	cbz	r0, d0045964 <clipTriangleToFrustum+0x478>
d0045902:	3701      	adds	r7, #1
d0045904:	ed82 6a00 	vstr	s12, [r2]
d0045908:	edc2 7a01 	vstr	s15, [r2, #4]
d004590c:	ed82 7a02 	vstr	s14, [r2, #8]
d0045910:	360c      	adds	r6, #12
d0045912:	429e      	cmp	r6, r3
d0045914:	d04e      	beq.n	d00459b4 <clipTriangleToFrustum+0x4c8>
d0045916:	eef0 4a67 	vmov.f32	s9, s15
d004591a:	edd6 7a01 	vldr	s15, [r6, #4]
d004591e:	eef5 6ac0 	vcmpe.f32	s13, #0.0
d0045922:	a922      	add	r1, sp, #136	; 0x88
d0045924:	eef0 5a66 	vmov.f32	s11, s13
d0045928:	eb07 0247 	add.w	r2, r7, r7, lsl #1
d004592c:	eef0 6a67 	vmov.f32	s13, s15
d0045930:	eeb0 5a47 	vmov.f32	s10, s14
d0045934:	ed96 7a02 	vldr	s14, [r6, #8]
d0045938:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004593c:	eb01 0282 	add.w	r2, r1, r2, lsl #2
d0045940:	eee7 6a23 	vfma.f32	s13, s14, s7
d0045944:	eeb0 4a46 	vmov.f32	s8, s12
d0045948:	ed96 6a00 	vldr	s12, [r6]
d004594c:	bfac      	ite	ge
d004594e:	2101      	movge	r1, #1
d0045950:	2100      	movlt	r1, #0
d0045952:	eef5 6ac0 	vcmpe.f32	s13, #0.0
d0045956:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004595a:	bfac      	ite	ge
d004595c:	2001      	movge	r0, #1
d004595e:	2000      	movlt	r0, #0
d0045960:	2900      	cmp	r1, #0
d0045962:	d1cd      	bne.n	d0045900 <clipTriangleToFrustum+0x414>
d0045964:	eef5 6a40 	vcmp.f32	s13, #0.0
d0045968:	eb07 0247 	add.w	r2, r7, r7, lsl #1
d004596c:	ac22      	add	r4, sp, #136	; 0x88
d004596e:	ee35 1ae6 	vsub.f32	s2, s11, s13
d0045972:	ee76 1a44 	vsub.f32	s3, s12, s8
d0045976:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004597a:	eb04 0282 	add.w	r2, r4, r2, lsl #2
d004597e:	ee37 2ae4 	vsub.f32	s4, s15, s9
d0045982:	ee77 2a45 	vsub.f32	s5, s14, s10
d0045986:	f140 81de 	bpl.w	d0045d46 <clipTriangleToFrustum+0x85a>
d004598a:	2900      	cmp	r1, #0
d004598c:	f000 81db 	beq.w	d0045d46 <clipTriangleToFrustum+0x85a>
d0045990:	ee85 3a81 	vdiv.f32	s6, s11, s2
d0045994:	360c      	adds	r6, #12
d0045996:	3701      	adds	r7, #1
d0045998:	429e      	cmp	r6, r3
d004599a:	eea1 4a83 	vfma.f32	s8, s3, s6
d004599e:	eee2 4a03 	vfma.f32	s9, s4, s6
d00459a2:	eea2 5a83 	vfma.f32	s10, s5, s6
d00459a6:	ed82 4a00 	vstr	s8, [r2]
d00459aa:	edc2 4a01 	vstr	s9, [r2, #4]
d00459ae:	ed82 5a02 	vstr	s10, [r2, #8]
d00459b2:	d1b0      	bne.n	d0045916 <clipTriangleToFrustum+0x42a>
d00459b4:	2f02      	cmp	r7, #2
d00459b6:	dd3b      	ble.n	d0045a30 <clipTriangleToFrustum+0x544>
d00459b8:	eb07 0247 	add.w	r2, r7, r7, lsl #1
d00459bc:	a922      	add	r1, sp, #136	; 0x88
d00459be:	4628      	mov	r0, r5
d00459c0:	0092      	lsls	r2, r2, #2
d00459c2:	f001 ffa7 	bl	d0047914 <memcpy>
d00459c6:	4638      	mov	r0, r7
d00459c8:	b03a      	add	sp, #232	; 0xe8
d00459ca:	ecbd 8b02 	vpop	{d8}
d00459ce:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
d00459d2:	eef5 5a40 	vcmp.f32	s11, #0.0
d00459d6:	eb03 0243 	add.w	r2, r3, r3, lsl #1
d00459da:	ee75 1ae6 	vsub.f32	s3, s11, s13
d00459de:	eb04 0782 	add.w	r7, r4, r2, lsl #2
d00459e2:	ee37 2a44 	vsub.f32	s4, s14, s8
d00459e6:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00459ea:	463a      	mov	r2, r7
d00459ec:	ee76 2a64 	vsub.f32	s5, s12, s9
d00459f0:	ee37 3ac5 	vsub.f32	s6, s15, s10
d00459f4:	f107 070c 	add.w	r7, r7, #12
d00459f8:	f57f ae1f 	bpl.w	d004563a <clipTriangleToFrustum+0x14e>
d00459fc:	f1bc 0f00 	cmp.w	ip, #0
d0045a00:	f43f ae1b 	beq.w	d004563a <clipTriangleToFrustum+0x14e>
d0045a04:	eec5 3aa1 	vdiv.f32	s7, s11, s3
d0045a08:	3302      	adds	r3, #2
d0045a0a:	eea2 4a23 	vfma.f32	s8, s4, s7
d0045a0e:	eee2 4aa3 	vfma.f32	s9, s5, s7
d0045a12:	eea3 5a23 	vfma.f32	s10, s6, s7
d0045a16:	ed82 4a00 	vstr	s8, [r2]
d0045a1a:	edc2 4a01 	vstr	s9, [r2, #4]
d0045a1e:	ed82 5a02 	vstr	s10, [r2, #8]
d0045a22:	ed87 7a00 	vstr	s14, [r7]
d0045a26:	ed87 6a01 	vstr	s12, [r7, #4]
d0045a2a:	edc7 7a02 	vstr	s15, [r7, #8]
d0045a2e:	e604      	b.n	d004563a <clipTriangleToFrustum+0x14e>
d0045a30:	2700      	movs	r7, #0
d0045a32:	4638      	mov	r0, r7
d0045a34:	b03a      	add	sp, #232	; 0xe8
d0045a36:	ecbd 8b02 	vpop	{d8}
d0045a3a:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
d0045a3e:	eef5 4a40 	vcmp.f32	s9, #0.0
d0045a42:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0045a46:	f140 80b7 	bpl.w	d0045bb8 <clipTriangleToFrustum+0x6cc>
d0045a4a:	2900      	cmp	r1, #0
d0045a4c:	f000 80b4 	beq.w	d0045bb8 <clipTriangleToFrustum+0x6cc>
d0045a50:	ee74 0a67 	vsub.f32	s1, s8, s15
d0045a54:	eddd 3a0f 	vldr	s7, [sp, #60]	; 0x3c
d0045a58:	ee36 8a65 	vsub.f32	s16, s12, s11
d0045a5c:	2301      	movs	r3, #1
d0045a5e:	eef0 8a65 	vmov.f32	s17, s11
d0045a62:	ed9d 2a0d 	vldr	s4, [sp, #52]	; 0x34
d0045a66:	ee85 1a20 	vdiv.f32	s2, s10, s1
d0045a6a:	eddd 2a0e 	vldr	s5, [sp, #56]	; 0x38
d0045a6e:	ee36 0ae1 	vsub.f32	s0, s13, s3
d0045a72:	ee33 3ac7 	vsub.f32	s6, s7, s14
d0045a76:	ee77 0ac4 	vsub.f32	s1, s15, s8
d0045a7a:	eeb5 3ac0 	vcmpe.f32	s6, #0.0
d0045a7e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0045a82:	bfac      	ite	ge
d0045a84:	461e      	movge	r6, r3
d0045a86:	2600      	movlt	r6, #0
d0045a88:	eee1 8a08 	vfma.f32	s17, s2, s16
d0045a8c:	eeb0 8a68 	vmov.f32	s16, s17
d0045a90:	eef0 8a61 	vmov.f32	s17, s3
d0045a94:	ed8d 8a22 	vstr	s16, [sp, #136]	; 0x88
d0045a98:	eee1 8a00 	vfma.f32	s17, s2, s0
d0045a9c:	eeb0 0a68 	vmov.f32	s0, s17
d0045aa0:	eef0 8a44 	vmov.f32	s17, s8
d0045aa4:	ed8d 0a23 	vstr	s0, [sp, #140]	; 0x8c
d0045aa8:	eee0 8a81 	vfma.f32	s17, s1, s2
d0045aac:	edcd 8a24 	vstr	s17, [sp, #144]	; 0x90
d0045ab0:	eeb5 3a40 	vcmp.f32	s6, #0.0
d0045ab4:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0045ab8:	f140 80af 	bpl.w	d0045c1a <clipTriangleToFrustum+0x72e>
d0045abc:	2800      	cmp	r0, #0
d0045abe:	f000 80ac 	beq.w	d0045c1a <clipTriangleToFrustum+0x72e>
d0045ac2:	ee37 8ae3 	vsub.f32	s16, s15, s7
d0045ac6:	eb03 0043 	add.w	r0, r3, r3, lsl #1
d0045aca:	ee32 0a46 	vsub.f32	s0, s4, s12
d0045ace:	4632      	mov	r2, r6
d0045ad0:	ee72 0ae6 	vsub.f32	s1, s5, s13
d0045ad4:	ae22      	add	r6, sp, #136	; 0x88
d0045ad6:	ee84 1a88 	vdiv.f32	s2, s9, s16
d0045ada:	3301      	adds	r3, #1
d0045adc:	eb06 0080 	add.w	r0, r6, r0, lsl #2
d0045ae0:	ee73 4ae7 	vsub.f32	s9, s7, s15
d0045ae4:	eea0 6a01 	vfma.f32	s12, s0, s2
d0045ae8:	eee0 6a81 	vfma.f32	s13, s1, s2
d0045aec:	eee4 7a81 	vfma.f32	s15, s9, s2
d0045af0:	ed80 6a00 	vstr	s12, [r0]
d0045af4:	edc0 6a01 	vstr	s13, [r0, #4]
d0045af8:	edc0 7a02 	vstr	s15, [r0, #8]
d0045afc:	eeb5 5a40 	vcmp.f32	s10, #0.0
d0045b00:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0045b04:	d528      	bpl.n	d0045b58 <clipTriangleToFrustum+0x66c>
d0045b06:	b33a      	cbz	r2, d0045b58 <clipTriangleToFrustum+0x66c>
d0045b08:	ee37 5a44 	vsub.f32	s10, s14, s8
d0045b0c:	eb03 0243 	add.w	r2, r3, r3, lsl #1
d0045b10:	ee75 5ac2 	vsub.f32	s11, s11, s4
d0045b14:	a922      	add	r1, sp, #136	; 0x88
d0045b16:	ee71 1ae2 	vsub.f32	s3, s3, s5
d0045b1a:	3301      	adds	r3, #1
d0045b1c:	ee35 5a03 	vadd.f32	s10, s10, s6
d0045b20:	eb01 0282 	add.w	r2, r1, r2, lsl #2
d0045b24:	ee34 4a63 	vsub.f32	s8, s8, s7
d0045b28:	eef0 6a42 	vmov.f32	s13, s4
d0045b2c:	ee83 6a05 	vdiv.f32	s12, s6, s10
d0045b30:	eeb0 7a62 	vmov.f32	s14, s5
d0045b34:	eef0 7a63 	vmov.f32	s15, s7
d0045b38:	eee5 6a86 	vfma.f32	s13, s11, s12
d0045b3c:	eea1 7a86 	vfma.f32	s14, s3, s12
d0045b40:	eee4 7a06 	vfma.f32	s15, s8, s12
d0045b44:	edc2 6a00 	vstr	s13, [r2]
d0045b48:	ed82 7a01 	vstr	s14, [r2, #4]
d0045b4c:	edc2 7a02 	vstr	s15, [r2, #8]
d0045b50:	e555      	b.n	d00455fe <clipTriangleToFrustum+0x112>
d0045b52:	bf00      	nop
d0045b54:	3f2aaaab 	.word	0x3f2aaaab
d0045b58:	eeb5 3a40 	vcmp.f32	s6, #0.0
d0045b5c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0045b60:	f57f ad4d 	bpl.w	d00455fe <clipTriangleToFrustum+0x112>
d0045b64:	2900      	cmp	r1, #0
d0045b66:	f43f ad4a 	beq.w	d00455fe <clipTriangleToFrustum+0x112>
d0045b6a:	ee77 7a44 	vsub.f32	s15, s14, s8
d0045b6e:	eb03 0243 	add.w	r2, r3, r3, lsl #1
d0045b72:	ee75 6ac2 	vsub.f32	s13, s11, s4
d0045b76:	a922      	add	r1, sp, #136	; 0x88
d0045b78:	ee31 7ae2 	vsub.f32	s14, s3, s5
d0045b7c:	3302      	adds	r3, #2
d0045b7e:	ee77 7a83 	vadd.f32	s15, s15, s6
d0045b82:	eb01 0182 	add.w	r1, r1, r2, lsl #2
d0045b86:	ee34 5a63 	vsub.f32	s10, s8, s7
d0045b8a:	edc1 5a03 	vstr	s11, [r1, #12]
d0045b8e:	ee83 6a27 	vdiv.f32	s12, s6, s15
d0045b92:	edc1 1a04 	vstr	s3, [r1, #16]
d0045b96:	ed81 4a05 	vstr	s8, [r1, #20]
d0045b9a:	eef0 7a63 	vmov.f32	s15, s7
d0045b9e:	eea6 2a86 	vfma.f32	s4, s13, s12
d0045ba2:	eee7 2a06 	vfma.f32	s5, s14, s12
d0045ba6:	eee5 7a06 	vfma.f32	s15, s10, s12
d0045baa:	ed81 2a00 	vstr	s4, [r1]
d0045bae:	edc1 2a01 	vstr	s5, [r1, #4]
d0045bb2:	edc1 7a02 	vstr	s15, [r1, #8]
d0045bb6:	e522      	b.n	d00455fe <clipTriangleToFrustum+0x112>
d0045bb8:	eeb5 5a40 	vcmp.f32	s10, #0.0
d0045bbc:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0045bc0:	f140 80bf 	bpl.w	d0045d42 <clipTriangleToFrustum+0x856>
d0045bc4:	2800      	cmp	r0, #0
d0045bc6:	f000 80bc 	beq.w	d0045d42 <clipTriangleToFrustum+0x856>
d0045bca:	ee74 3a67 	vsub.f32	s7, s8, s15
d0045bce:	2302      	movs	r3, #2
d0045bd0:	ee36 2a65 	vsub.f32	s4, s12, s11
d0045bd4:	ed8d 6a25 	vstr	s12, [sp, #148]	; 0x94
d0045bd8:	eeb0 1a65 	vmov.f32	s2, s11
d0045bdc:	edcd 6a26 	vstr	s13, [sp, #152]	; 0x98
d0045be0:	ee85 3a23 	vdiv.f32	s6, s10, s7
d0045be4:	edcd 7a27 	vstr	s15, [sp, #156]	; 0x9c
d0045be8:	ee76 2ae1 	vsub.f32	s5, s13, s3
d0045bec:	ee77 3ac4 	vsub.f32	s7, s15, s8
d0045bf0:	eea3 1a02 	vfma.f32	s2, s6, s4
d0045bf4:	eeb0 2a41 	vmov.f32	s4, s2
d0045bf8:	eeb0 1a61 	vmov.f32	s2, s3
d0045bfc:	ed8d 2a22 	vstr	s4, [sp, #136]	; 0x88
d0045c00:	eea3 1a22 	vfma.f32	s2, s6, s5
d0045c04:	eef0 2a41 	vmov.f32	s5, s2
d0045c08:	eeb0 1a44 	vmov.f32	s2, s8
d0045c0c:	edcd 2a23 	vstr	s5, [sp, #140]	; 0x8c
d0045c10:	eea3 1a23 	vfma.f32	s2, s6, s7
d0045c14:	ed8d 1a24 	vstr	s2, [sp, #144]	; 0x90
d0045c18:	e4be      	b.n	d0045598 <clipTriangleToFrustum+0xac>
d0045c1a:	eef5 4ac0 	vcmpe.f32	s9, #0.0
d0045c1e:	f006 0201 	and.w	r2, r6, #1
d0045c22:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0045c26:	bf58      	it	pl
d0045c28:	2200      	movpl	r2, #0
d0045c2a:	2a00      	cmp	r2, #0
d0045c2c:	f000 8087 	beq.w	d0045d3e <clipTriangleToFrustum+0x852>
d0045c30:	ee37 8ae3 	vsub.f32	s16, s15, s7
d0045c34:	eb03 0043 	add.w	r0, r3, r3, lsl #1
d0045c38:	ee32 0a46 	vsub.f32	s0, s4, s12
d0045c3c:	ae22      	add	r6, sp, #136	; 0x88
d0045c3e:	ee72 0ae6 	vsub.f32	s1, s5, s13
d0045c42:	3302      	adds	r3, #2
d0045c44:	ee84 1a88 	vdiv.f32	s2, s9, s16
d0045c48:	eb06 0680 	add.w	r6, r6, r0, lsl #2
d0045c4c:	ed86 2a03 	vstr	s4, [r6, #12]
d0045c50:	edc6 2a04 	vstr	s5, [r6, #16]
d0045c54:	edc6 3a05 	vstr	s7, [r6, #20]
d0045c58:	ee73 4ae7 	vsub.f32	s9, s7, s15
d0045c5c:	eea0 6a01 	vfma.f32	s12, s0, s2
d0045c60:	eee0 6a81 	vfma.f32	s13, s1, s2
d0045c64:	eee4 7a81 	vfma.f32	s15, s9, s2
d0045c68:	ed86 6a00 	vstr	s12, [r6]
d0045c6c:	edc6 6a01 	vstr	s13, [r6, #4]
d0045c70:	edc6 7a02 	vstr	s15, [r6, #8]
d0045c74:	e4b1      	b.n	d00455da <clipTriangleToFrustum+0xee>
d0045c76:	eef5 5a40 	vcmp.f32	s11, #0.0
d0045c7a:	eb02 0142 	add.w	r1, r2, r2, lsl #1
d0045c7e:	f10d 0c88 	add.w	ip, sp, #136	; 0x88
d0045c82:	ee77 3aa5 	vadd.f32	s7, s15, s11
d0045c86:	ee77 1ac4 	vsub.f32	s3, s15, s8
d0045c8a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0045c8e:	eb0c 0c81 	add.w	ip, ip, r1, lsl #2
d0045c92:	ee36 2a64 	vsub.f32	s4, s12, s9
d0045c96:	4661      	mov	r1, ip
d0045c98:	ee73 3ac7 	vsub.f32	s7, s7, s14
d0045c9c:	ee77 2a45 	vsub.f32	s5, s14, s10
d0045ca0:	f10c 0c0c 	add.w	ip, ip, #12
d0045ca4:	f57f ad38 	bpl.w	d0045718 <clipTriangleToFrustum+0x22c>
d0045ca8:	f1be 0f00 	cmp.w	lr, #0
d0045cac:	f43f ad34 	beq.w	d0045718 <clipTriangleToFrustum+0x22c>
d0045cb0:	ee85 3aa3 	vdiv.f32	s6, s11, s7
d0045cb4:	3202      	adds	r2, #2
d0045cb6:	eea1 4a83 	vfma.f32	s8, s3, s6
d0045cba:	eee2 4a03 	vfma.f32	s9, s4, s6
d0045cbe:	eea2 5a83 	vfma.f32	s10, s5, s6
d0045cc2:	ed81 4a00 	vstr	s8, [r1]
d0045cc6:	edc1 4a01 	vstr	s9, [r1, #4]
d0045cca:	ed81 5a02 	vstr	s10, [r1, #8]
d0045cce:	edcc 7a00 	vstr	s15, [ip]
d0045cd2:	ed8c 6a01 	vstr	s12, [ip, #4]
d0045cd6:	ed8c 7a02 	vstr	s14, [ip, #8]
d0045cda:	e51d      	b.n	d0045718 <clipTriangleToFrustum+0x22c>
d0045cdc:	eef5 5a40 	vcmp.f32	s11, #0.0
d0045ce0:	eb02 0142 	add.w	r1, r2, r2, lsl #1
d0045ce4:	ee37 3aa5 	vadd.f32	s6, s15, s11
d0045ce8:	eb04 0781 	add.w	r7, r4, r1, lsl #2
d0045cec:	ee36 1a44 	vsub.f32	s2, s12, s8
d0045cf0:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0045cf4:	4639      	mov	r1, r7
d0045cf6:	ee77 1ae4 	vsub.f32	s3, s15, s9
d0045cfa:	ee73 3a63 	vsub.f32	s7, s6, s7
d0045cfe:	f107 070c 	add.w	r7, r7, #12
d0045d02:	ee37 2a45 	vsub.f32	s4, s14, s10
d0045d06:	f57f ad8b 	bpl.w	d0045820 <clipTriangleToFrustum+0x334>
d0045d0a:	f1bc 0f00 	cmp.w	ip, #0
d0045d0e:	f43f ad87 	beq.w	d0045820 <clipTriangleToFrustum+0x334>
d0045d12:	ee85 3aa3 	vdiv.f32	s6, s11, s7
d0045d16:	3202      	adds	r2, #2
d0045d18:	eea1 4a03 	vfma.f32	s8, s2, s6
d0045d1c:	eee1 4a83 	vfma.f32	s9, s3, s6
d0045d20:	eea2 5a03 	vfma.f32	s10, s4, s6
d0045d24:	ed81 4a00 	vstr	s8, [r1]
d0045d28:	edc1 4a01 	vstr	s9, [r1, #4]
d0045d2c:	ed81 5a02 	vstr	s10, [r1, #8]
d0045d30:	ed87 6a00 	vstr	s12, [r7]
d0045d34:	edc7 7a01 	vstr	s15, [r7, #4]
d0045d38:	ed87 7a02 	vstr	s14, [r7, #8]
d0045d3c:	e570      	b.n	d0045820 <clipTriangleToFrustum+0x334>
d0045d3e:	4632      	mov	r2, r6
d0045d40:	e44b      	b.n	d00455da <clipTriangleToFrustum+0xee>
d0045d42:	2300      	movs	r3, #0
d0045d44:	e428      	b.n	d0045598 <clipTriangleToFrustum+0xac>
d0045d46:	eef5 5a40 	vcmp.f32	s11, #0.0
d0045d4a:	eb07 0247 	add.w	r2, r7, r7, lsl #1
d0045d4e:	a922      	add	r1, sp, #136	; 0x88
d0045d50:	ee35 1ae6 	vsub.f32	s2, s11, s13
d0045d54:	ee76 1a44 	vsub.f32	s3, s12, s8
d0045d58:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0045d5c:	eb01 0182 	add.w	r1, r1, r2, lsl #2
d0045d60:	ee37 2ae4 	vsub.f32	s4, s15, s9
d0045d64:	460a      	mov	r2, r1
d0045d66:	ee77 2a45 	vsub.f32	s5, s14, s10
d0045d6a:	f101 010c 	add.w	r1, r1, #12
d0045d6e:	f57f adcf 	bpl.w	d0045910 <clipTriangleToFrustum+0x424>
d0045d72:	2800      	cmp	r0, #0
d0045d74:	f43f adcc 	beq.w	d0045910 <clipTriangleToFrustum+0x424>
d0045d78:	ee85 3a81 	vdiv.f32	s6, s11, s2
d0045d7c:	3702      	adds	r7, #2
d0045d7e:	eea1 4a83 	vfma.f32	s8, s3, s6
d0045d82:	eee2 4a03 	vfma.f32	s9, s4, s6
d0045d86:	eea2 5a83 	vfma.f32	s10, s5, s6
d0045d8a:	ed82 4a00 	vstr	s8, [r2]
d0045d8e:	edc2 4a01 	vstr	s9, [r2, #4]
d0045d92:	ed82 5a02 	vstr	s10, [r2, #8]
d0045d96:	ed81 6a00 	vstr	s12, [r1]
d0045d9a:	edc1 7a01 	vstr	s15, [r1, #4]
d0045d9e:	ed81 7a02 	vstr	s14, [r1, #8]
d0045da2:	e5b5      	b.n	d0045910 <clipTriangleToFrustum+0x424>

d0045da4 <submitClippedTri>:
d0045da4:	edd0 7a10 	vldr	s15, [r0, #64]	; 0x40
d0045da8:	eef4 7ac1 	vcmpe.f32	s15, s2
d0045dac:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0045db0:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0045db4:	eef4 2ae7 	vcmpe.f32	s5, s15
d0045db8:	bfac      	ite	ge
d0045dba:	2401      	movge	r4, #1
d0045dbc:	2400      	movlt	r4, #0
d0045dbe:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0045dc2:	ed2d 8b04 	vpush	{d8-d9}
d0045dc6:	bf98      	it	ls
d0045dc8:	f044 0401 	orrls.w	r4, r4, #1
d0045dcc:	b08b      	sub	sp, #44	; 0x2c
d0045dce:	b924      	cbnz	r4, d0045dda <submitClippedTri+0x36>
d0045dd0:	eef4 7ac4 	vcmpe.f32	s15, s8
d0045dd4:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0045dd8:	db04      	blt.n	d0045de4 <submitClippedTri+0x40>
d0045dda:	b00b      	add	sp, #44	; 0x2c
d0045ddc:	ecbd 8b04 	vpop	{d8-d9}
d0045de0:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0045de4:	eef7 6a00 	vmov.f32	s13, #112	; 0x3f800000  1.0
d0045de8:	ed9f 6a69 	vldr	s12, [pc, #420]	; d0045f90 <submitClippedTri+0x1ec>
d0045dec:	eddf 7a69 	vldr	s15, [pc, #420]	; d0045f94 <submitClippedTri+0x1f0>
d0045df0:	eeb6 7a00 	vmov.f32	s14, #96	; 0x3f000000  0.5
d0045df4:	ee60 0a86 	vmul.f32	s1, s1, s12
d0045df8:	ed9f 5a67 	vldr	s10, [pc, #412]	; d0045f98 <submitClippedTri+0x1f4>
d0045dfc:	eec6 8a81 	vdiv.f32	s17, s13, s2
d0045e00:	eec6 5aa2 	vdiv.f32	s11, s13, s5
d0045e04:	eeb0 9a66 	vmov.f32	s18, s13
d0045e08:	ee86 8a84 	vdiv.f32	s16, s13, s8
d0045e0c:	eea0 9a28 	vfma.f32	s18, s0, s17
d0045e10:	eeb0 0a67 	vmov.f32	s0, s15
d0045e14:	ee63 3a86 	vmul.f32	s7, s7, s12
d0045e18:	ee22 2a06 	vmul.f32	s4, s4, s12
d0045e1c:	eea8 0aa0 	vfma.f32	s0, s17, s1
d0045e20:	eeb0 6a67 	vmov.f32	s12, s15
d0045e24:	eef0 0a66 	vmov.f32	s1, s13
d0045e28:	eea5 6a82 	vfma.f32	s12, s11, s4
d0045e2c:	eee1 0aa5 	vfma.f32	s1, s3, s11
d0045e30:	eefd 5ac0 	vcvt.s32.f32	s11, s0
d0045e34:	eef0 1a47 	vmov.f32	s3, s14
d0045e38:	eee8 7a23 	vfma.f32	s15, s16, s7
d0045e3c:	ee15 6a90 	vmov	r6, s11
d0045e40:	eef0 5a66 	vmov.f32	s11, s13
d0045e44:	eee9 1a05 	vfma.f32	s3, s18, s10
d0045e48:	eebd 6ac6 	vcvt.s32.f32	s12, s12
d0045e4c:	eee3 5a08 	vfma.f32	s11, s6, s16
d0045e50:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d0045e54:	ee16 4a10 	vmov	r4, s12
d0045e58:	eefd 3ae1 	vcvt.s32.f32	s7, s3
d0045e5c:	1ba4      	subs	r4, r4, r6
d0045e5e:	ee17 5a90 	vmov	r5, s15
d0045e62:	eeb0 3a65 	vmov.f32	s6, s11
d0045e66:	eef0 5a47 	vmov.f32	s11, s14
d0045e6a:	ee13 7a90 	vmov	r7, s7
d0045e6e:	eea3 7a05 	vfma.f32	s14, s6, s10
d0045e72:	eee0 5a85 	vfma.f32	s11, s1, s10
d0045e76:	eebd 7ac7 	vcvt.s32.f32	s14, s14
d0045e7a:	eefd 5ae5 	vcvt.s32.f32	s11, s11
d0045e7e:	ee15 ca90 	vmov	ip, s11
d0045e82:	ebac 0e07 	sub.w	lr, ip, r7
d0045e86:	eba5 0c06 	sub.w	ip, r5, r6
d0045e8a:	fb0c fc0e 	mul.w	ip, ip, lr
d0045e8e:	ee17 ea10 	vmov	lr, s14
d0045e92:	ebae 0e07 	sub.w	lr, lr, r7
d0045e96:	fb0e c414 	mls	r4, lr, r4, ip
d0045e9a:	2c00      	cmp	r4, #0
d0045e9c:	dd9d      	ble.n	d0045dda <submitClippedTri+0x36>
d0045e9e:	f8df e104 	ldr.w	lr, [pc, #260]	; d0045fa4 <submitClippedTri+0x200>
d0045ea2:	f8de 4000 	ldr.w	r4, [lr]
d0045ea6:	f5b4 5f00 	cmp.w	r4, #8192	; 0x2000
d0045eaa:	da96      	bge.n	d0045dda <submitClippedTri+0x36>
d0045eac:	f8df c0f8 	ldr.w	ip, [pc, #248]	; d0045fa8 <submitClippedTri+0x204>
d0045eb0:	ea4f 1884 	mov.w	r8, r4, lsl #6
d0045eb4:	f104 0b01 	add.w	fp, r4, #1
d0045eb8:	ed9f 5a38 	vldr	s10, [pc, #224]	; d0045f9c <submitClippedTri+0x1f8>
d0045ebc:	eb0c 1484 	add.w	r4, ip, r4, lsl #6
d0045ec0:	f108 0a08 	add.w	sl, r8, #8
d0045ec4:	f848 700c 	str.w	r7, [r8, ip]
d0045ec8:	f108 0910 	add.w	r9, r8, #16
d0045ecc:	6066      	str	r6, [r4, #4]
d0045ece:	ee15 7a90 	vmov	r7, s11
d0045ed2:	eb0a 060c 	add.w	r6, sl, ip
d0045ed6:	f8ce b000 	str.w	fp, [lr]
d0045eda:	f84a 700c 	str.w	r7, [sl, ip]
d0045ede:	eb09 070c 	add.w	r7, r9, ip
d0045ee2:	ed86 6a01 	vstr	s12, [r6, #4]
d0045ee6:	ee17 6a10 	vmov	r6, s14
d0045eea:	ed9f 6a2d 	vldr	s12, [pc, #180]	; d0045fa0 <submitClippedTri+0x1fc>
d0045eee:	f849 600c 	str.w	r6, [r9, ip]
d0045ef2:	edc7 7a01 	vstr	s15, [r7, #4]
d0045ef6:	f884 3036 	strb.w	r3, [r4, #54]	; 0x36
d0045efa:	f884 1034 	strb.w	r1, [r4, #52]	; 0x34
d0045efe:	f884 2035 	strb.w	r2, [r4, #53]	; 0x35
d0045f02:	edc4 4a07 	vstr	s9, [r4, #28]
d0045f06:	ed90 7a10 	vldr	s14, [r0, #64]	; 0x40
d0045f0a:	edd0 7a0f 	vldr	s15, [r0, #60]	; 0x3c
d0045f0e:	ee31 7a47 	vsub.f32	s14, s2, s14
d0045f12:	ee27 7a27 	vmul.f32	s14, s14, s15
d0045f16:	fe87 7a05 	vmaxnm.f32	s14, s14, s10
d0045f1a:	fe87 7a66 	vminnm.f32	s14, s14, s13
d0045f1e:	ee27 7a06 	vmul.f32	s14, s14, s12
d0045f22:	eebc 7ac7 	vcvt.u32.f32	s14, s14
d0045f26:	ee17 3a10 	vmov	r3, s14
d0045f2a:	8423      	strh	r3, [r4, #32]
d0045f2c:	ed90 7a10 	vldr	s14, [r0, #64]	; 0x40
d0045f30:	edd0 7a0f 	vldr	s15, [r0, #60]	; 0x3c
d0045f34:	ee32 7ac7 	vsub.f32	s14, s5, s14
d0045f38:	ee27 7a27 	vmul.f32	s14, s14, s15
d0045f3c:	fe87 7a05 	vmaxnm.f32	s14, s14, s10
d0045f40:	fe87 7a66 	vminnm.f32	s14, s14, s13
d0045f44:	ee27 7a06 	vmul.f32	s14, s14, s12
d0045f48:	eebc 7ac7 	vcvt.u32.f32	s14, s14
d0045f4c:	ee17 3a10 	vmov	r3, s14
d0045f50:	8463      	strh	r3, [r4, #34]	; 0x22
d0045f52:	edd0 7a10 	vldr	s15, [r0, #64]	; 0x40
d0045f56:	ed90 7a0f 	vldr	s14, [r0, #60]	; 0x3c
d0045f5a:	ee74 7a67 	vsub.f32	s15, s8, s15
d0045f5e:	ed84 1a0a 	vstr	s2, [r4, #40]	; 0x28
d0045f62:	edc4 2a0b 	vstr	s5, [r4, #44]	; 0x2c
d0045f66:	ed84 4a0c 	vstr	s8, [r4, #48]	; 0x30
d0045f6a:	ee67 7a87 	vmul.f32	s15, s15, s14
d0045f6e:	fec7 7a85 	vmaxnm.f32	s15, s15, s10
d0045f72:	fec7 6ae6 	vminnm.f32	s13, s15, s13
d0045f76:	ee66 6a86 	vmul.f32	s13, s13, s12
d0045f7a:	eefc 6ae6 	vcvt.u32.f32	s13, s13
d0045f7e:	ee16 3a90 	vmov	r3, s13
d0045f82:	84a3      	strh	r3, [r4, #36]	; 0x24
d0045f84:	b00b      	add	sp, #44	; 0x2c
d0045f86:	ecbd 8b04 	vpop	{d8-d9}
d0045f8a:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0045f8e:	bf00      	nop
d0045f90:	c3700000 	.word	0xc3700000
d0045f94:	43208000 	.word	0x43208000
d0045f98:	43700000 	.word	0x43700000
d0045f9c:	00000000 	.word	0x00000000
d0045fa0:	477fff00 	.word	0x477fff00
d0045fa4:	d00a22c4 	.word	0xd00a22c4
d0045fa8:	d00a22e0 	.word	0xd00a22e0

d0045fac <drawFakeHorizonDots>:
d0045fac:	2800      	cmp	r0, #0
d0045fae:	f000 80f2 	beq.w	d0046196 <drawFakeHorizonDots+0x1ea>
d0045fb2:	2a02      	cmp	r2, #2
d0045fb4:	edd0 7a02 	vldr	s15, [r0, #8]
d0045fb8:	ed90 6a01 	vldr	s12, [r0, #4]
d0045fbc:	bfb8      	it	lt
d0045fbe:	2202      	movlt	r2, #2
d0045fc0:	eddf 5a75 	vldr	s11, [pc, #468]	; d0046198 <drawFakeHorizonDots+0x1ec>
d0045fc4:	edd0 6a0d 	vldr	s13, [r0, #52]	; 0x34
d0045fc8:	ee07 2a10 	vmov	s14, r2
d0045fcc:	edd0 4a10 	vldr	s9, [r0, #64]	; 0x40
d0045fd0:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0045fd4:	ed2d 8b10 	vpush	{d8-d15}
d0045fd8:	eef8 9ac7 	vcvt.f32.s32	s19, s14
d0045fdc:	ed90 aa00 	vldr	s20, [r0]
d0045fe0:	b085      	sub	sp, #20
d0045fe2:	4617      	mov	r7, r2
d0045fe4:	468b      	mov	fp, r1
d0045fe6:	496d      	ldr	r1, [pc, #436]	; (d004619c <drawFakeHorizonDots+0x1f0>)
d0045fe8:	ee8a 7a29 	vdiv.f32	s14, s20, s19
d0045fec:	edcd 7a01 	vstr	s15, [sp, #4]
d0045ff0:	4e6b      	ldr	r6, [pc, #428]	; (d00461a0 <drawFakeHorizonDots+0x1f4>)
d0045ff2:	4698      	mov	r8, r3
d0045ff4:	ed90 ca07 	vldr	s24, [r0, #28]
d0045ff8:	edd0 ba0a 	vldr	s23, [r0, #40]	; 0x28
d0045ffc:	4c69      	ldr	r4, [pc, #420]	; (d00461a4 <drawFakeHorizonDots+0x1f8>)
d0045ffe:	eec7 7aa9 	vdiv.f32	s15, s15, s19
d0046002:	edd0 fa06 	vldr	s31, [r0, #24]
d0046006:	ed90 fa08 	vldr	s30, [r0, #32]
d004600a:	edd0 ea09 	vldr	s29, [r0, #36]	; 0x24
d004600e:	ed90 ea0b 	vldr	s28, [r0, #44]	; 0x2c
d0046012:	edd0 da0c 	vldr	s27, [r0, #48]	; 0x30
d0046016:	ee30 ba46 	vsub.f32	s22, s0, s12
d004601a:	ed90 da0e 	vldr	s26, [r0, #56]	; 0x38
d004601e:	ee69 9aa5 	vmul.f32	s19, s19, s11
d0046022:	ed9f 8a61 	vldr	s16, [pc, #388]	; d00461a8 <drawFakeHorizonDots+0x1fc>
d0046026:	4b61      	ldr	r3, [pc, #388]	; (d00461ac <drawFakeHorizonDots+0x200>)
d0046028:	ee2b ca0c 	vmul.f32	s24, s22, s24
d004602c:	eddf ca60 	vldr	s25, [pc, #384]	; d00461b0 <drawFakeHorizonDots+0x204>
d0046030:	ee6b ba2b 	vmul.f32	s23, s22, s23
d0046034:	eddf 8a5f 	vldr	s17, [pc, #380]	; d00461b4 <drawFakeHorizonDots+0x208>
d0046038:	ee29 8a88 	vmul.f32	s16, s19, s16
d004603c:	f8df 9184 	ldr.w	r9, [pc, #388]	; d00461c4 <drawFakeHorizonDots+0x218>
d0046040:	febb 7a47 	vrintm.f32	s14, s14
d0046044:	eebd 7ac7 	vcvt.s32.f32	s14, s14
d0046048:	ee2b ba26 	vmul.f32	s22, s22, s13
d004604c:	ee17 2a10 	vmov	r2, s14
d0046050:	fefb 7a67 	vrintm.f32	s15, s15
d0046054:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d0046058:	fb01 f002 	mul.w	r0, r1, r2
d004605c:	f1a2 0112 	sub.w	r1, r2, #18
d0046060:	ee17 2a90 	vmov	r2, s15
d0046064:	4404      	add	r4, r0
d0046066:	fb07 f101 	mul.w	r1, r7, r1
d004606a:	f1a2 0a12 	sub.w	sl, r2, #18
d004606e:	fb06 0202 	mla	r2, r6, r2, r0
d0046072:	9103      	str	r1, [sp, #12]
d0046074:	fb06 460a 	mla	r6, r6, sl, r4
d0046078:	18d3      	adds	r3, r2, r3
d004607a:	fb0a fa07 	mul.w	sl, sl, r7
d004607e:	9302      	str	r3, [sp, #8]
d0046080:	eddd 7a01 	vldr	s15, [sp, #4]
d0046084:	4c4c      	ldr	r4, [pc, #304]	; (d00461b8 <drawFakeHorizonDots+0x20c>)
d0046086:	ee37 9aa9 	vadd.f32	s18, s15, s19
d004608a:	ee07 aa90 	vmov	s15, sl
d004608e:	1934      	adds	r4, r6, r4
d0046090:	9d03      	ldr	r5, [sp, #12]
d0046092:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0046096:	eddf aa49 	vldr	s21, [pc, #292]	; d00461bc <drawFakeHorizonDots+0x210>
d004609a:	ee37 9ac9 	vsub.f32	s18, s15, s18
d004609e:	ea84 3354 	eor.w	r3, r4, r4, lsr #13
d00460a2:	ee07 5a90 	vmov	s15, r5
d00460a6:	f104 54b2 	add.w	r4, r4, #373293056	; 0x16400000
d00460aa:	eef0 3a49 	vmov.f32	s7, s18
d00460ae:	fb09 f303 	mul.w	r3, r9, r3
d00460b2:	eeb8 7ae7 	vcvt.f32.s32	s14, s15
d00460b6:	ee7a 7a29 	vadd.f32	s15, s20, s19
d00460ba:	f504 14b3 	add.w	r4, r4, #1466368	; 0x166000
d00460be:	ea83 4313 	eor.w	r3, r3, r3, lsr #16
d00460c2:	eeb7 5a00 	vmov.f32	s10, #112	; 0x3f800000  1.0
d00460c6:	eddf 5a3e 	vldr	s11, [pc, #248]	; d00461c0 <drawFakeHorizonDots+0x214>
d00460ca:	443d      	add	r5, r7
d00460cc:	f3c3 4207 	ubfx	r2, r3, #16, #8
d00460d0:	ee77 7a67 	vsub.f32	s15, s14, s15
d00460d4:	f204 74b1 	addw	r4, r4, #1969	; 0x7b1
d00460d8:	ee07 2a10 	vmov	s14, r2
d00460dc:	f3c3 2207 	ubfx	r2, r3, #8, #8
d00460e0:	b2db      	uxtb	r3, r3
d00460e2:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
d00460e6:	ee06 2a90 	vmov	s13, r2
d00460ea:	4543      	cmp	r3, r8
d00460ec:	eef8 6ae6 	vcvt.f32.s32	s13, s13
d00460f0:	eee7 3a08 	vfma.f32	s7, s14, s16
d00460f4:	d83d      	bhi.n	d0046172 <drawFakeHorizonDots+0x1c6>
d00460f6:	eee6 7a88 	vfma.f32	s15, s13, s16
d00460fa:	ee2d 6a23 	vmul.f32	s12, s26, s7
d00460fe:	ee2e 7aa7 	vmul.f32	s14, s29, s15
d0046102:	eead 6aa7 	vfma.f32	s12, s27, s15
d0046106:	ee6f 6aa7 	vmul.f32	s13, s31, s15
d004610a:	eef0 7a47 	vmov.f32	s15, s14
d004610e:	eeef 6a23 	vfma.f32	s13, s30, s7
d0046112:	eeee 7a23 	vfma.f32	s15, s28, s7
d0046116:	ee3b 6a06 	vadd.f32	s12, s22, s12
d004611a:	eef4 4ac6 	vcmpe.f32	s9, s12
d004611e:	ee3c 7a26 	vadd.f32	s14, s24, s13
d0046122:	ee7b 7aa7 	vadd.f32	s15, s23, s15
d0046126:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004612a:	ee27 7a2c 	vmul.f32	s14, s14, s25
d004612e:	ee67 7aaa 	vmul.f32	s15, s15, s21
d0046132:	da1e      	bge.n	d0046172 <drawFakeHorizonDots+0x1c6>
d0046134:	eec5 6a06 	vdiv.f32	s13, s10, s12
d0046138:	eeb0 6a68 	vmov.f32	s12, s17
d004613c:	eea7 6a26 	vfma.f32	s12, s14, s13
d0046140:	eee7 5aa6 	vfma.f32	s11, s15, s13
d0046144:	eefd 7ac6 	vcvt.s32.f32	s15, s12
d0046148:	eefd 5ae5 	vcvt.s32.f32	s11, s11
d004614c:	ee17 0a90 	vmov	r0, s15
d0046150:	f5b0 7ff0 	cmp.w	r0, #480	; 0x1e0
d0046154:	d20d      	bcs.n	d0046172 <drawFakeHorizonDots+0x1c6>
d0046156:	ee15 3a90 	vmov	r3, s11
d004615a:	465a      	mov	r2, fp
d004615c:	ee15 1a90 	vmov	r1, s11
d0046160:	f5b3 7fa0 	cmp.w	r3, #320	; 0x140
d0046164:	d205      	bcs.n	d0046172 <drawFakeHorizonDots+0x1c6>
d0046166:	edcd 4a00 	vstr	s9, [sp]
d004616a:	f7fa ffef 	bl	d004114c <putPixel>
d004616e:	eddd 4a00 	vldr	s9, [sp]
d0046172:	42b4      	cmp	r4, r6
d0046174:	d193      	bne.n	d004609e <drawFakeHorizonDots+0xf2>
d0046176:	f106 561f 	add.w	r6, r6, #666894336	; 0x27c00000
d004617a:	9b02      	ldr	r3, [sp, #8]
d004617c:	44ba      	add	sl, r7
d004617e:	f506 16a7 	add.w	r6, r6, #1368064	; 0x14e000
d0046182:	f606 362f 	addw	r6, r6, #2863	; 0xb2f
d0046186:	42b3      	cmp	r3, r6
d0046188:	f47f af7a 	bne.w	d0046080 <drawFakeHorizonDots+0xd4>
d004618c:	b005      	add	sp, #20
d004618e:	ecbd 8b10 	vpop	{d8-d15}
d0046192:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0046196:	4770      	bx	lr
d0046198:	3eb33333 	.word	0x3eb33333
d004619c:	165667b1 	.word	0x165667b1
d00461a0:	27d4eb2f 	.word	0x27d4eb2f
d00461a4:	a869b223 	.word	0xa869b223
d00461a8:	3c008081 	.word	0x3c008081
d00461ac:	9d3726a0 	.word	0x9d3726a0
d00461b0:	43700000 	.word	0x43700000
d00461b4:	43708000 	.word	0x43708000
d00461b8:	c583036b 	.word	0xc583036b
d00461bc:	c3700000 	.word	0xc3700000
d00461c0:	43208000 	.word	0x43208000
d00461c4:	4bf19f61 	.word	0x4bf19f61

d00461c8 <drawFakeHorizon>:
d00461c8:	2800      	cmp	r0, #0
d00461ca:	f000 813c 	beq.w	d0046446 <drawFakeHorizon+0x27e>
d00461ce:	ed9f 7aa2 	vldr	s14, [pc, #648]	; d0046458 <drawFakeHorizon+0x290>
d00461d2:	eddf 6aa2 	vldr	s13, [pc, #648]	; d004645c <drawFakeHorizon+0x294>
d00461d6:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d00461da:	ed2d 8b0c 	vpush	{d8-d13}
d00461de:	ed90 da0a 	vldr	s26, [r0, #40]	; 0x28
d00461e2:	eeb0 ca47 	vmov.f32	s24, s14
d00461e6:	ed9f 9a9e 	vldr	s18, [pc, #632]	; d0046460 <drawFakeHorizon+0x298>
d00461ea:	b083      	sub	sp, #12
d00461ec:	edd0 ba0d 	vldr	s23, [r0, #52]	; 0x34
d00461f0:	eeb0 bacd 	vabs.f32	s22, s26
d00461f4:	ee6d 7a09 	vmul.f32	s15, s26, s18
d00461f8:	eddf 9a9a 	vldr	s19, [pc, #616]	; d0046464 <drawFakeHorizon+0x29c>
d00461fc:	eef0 aa6b 	vmov.f32	s21, s23
d0046200:	edd0 da07 	vldr	s27, [r0, #28]
d0046204:	eeb0 aa6b 	vmov.f32	s20, s23
d0046208:	edd0 8a01 	vldr	s17, [r0, #4]
d004620c:	eec9 ca8d 	vdiv.f32	s25, s19, s26
d0046210:	460f      	mov	r7, r1
d0046212:	4690      	mov	r8, r2
d0046214:	4699      	mov	r9, r3
d0046216:	2400      	movs	r4, #0
d0046218:	4e93      	ldr	r6, [pc, #588]	; (d0046468 <drawFakeHorizon+0x2a0>)
d004621a:	ed9f 8a94 	vldr	s16, [pc, #592]	; d004646c <drawFakeHorizon+0x2a4>
d004621e:	eee7 aa87 	vfma.f32	s21, s15, s14
d0046222:	eea7 aaa6 	vfma.f32	s20, s15, s13
d0046226:	ee2d 9a89 	vmul.f32	s18, s27, s18
d004622a:	ee70 8a68 	vsub.f32	s17, s0, s17
d004622e:	e056      	b.n	d00462de <drawFakeHorizon+0x116>
d0046230:	ee88 6aa6 	vdiv.f32	s12, s17, s13
d0046234:	eef0 6ac7 	vabs.f32	s13, s14
d0046238:	eeb5 6ac0 	vcmpe.f32	s12, #0.0
d004623c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0046240:	eef4 6ac8 	vcmpe.f32	s13, s16
d0046244:	bfcc      	ite	gt
d0046246:	2201      	movgt	r2, #1
d0046248:	2200      	movle	r2, #0
d004624a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004624e:	da61      	bge.n	d0046314 <drawFakeHorizon+0x14c>
d0046250:	eeb5 6ac0 	vcmpe.f32	s12, #0.0
d0046254:	eb04 0584 	add.w	r5, r4, r4, lsl #2
d0046258:	6833      	ldr	r3, [r6, #0]
d004625a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004625e:	eb03 1585 	add.w	r5, r3, r5, lsl #6
d0046262:	f240 80a8 	bls.w	d00463b6 <drawFakeHorizon+0x1ee>
d0046266:	eeb4 bac8 	vcmpe.f32	s22, s16
d004626a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004626e:	f100 809a 	bmi.w	d00463a6 <drawFakeHorizon+0x1de>
d0046272:	ee7b 7aa7 	vadd.f32	s15, s23, s15
d0046276:	eeb0 7a4c 	vmov.f32	s14, s24
d004627a:	eeac 7aa7 	vfma.f32	s14, s25, s15
d004627e:	fefc 7ac7 	vcvta.s32.f32	s15, s14
d0046282:	ee17 ba90 	vmov	fp, s15
d0046286:	f1bb 0f00 	cmp.w	fp, #0
d004628a:	f2c0 80aa 	blt.w	d00463e2 <drawFakeHorizon+0x21a>
d004628e:	2201      	movs	r2, #1
d0046290:	f5bb 7fa0 	cmp.w	fp, #320	; 0x140
d0046294:	46da      	mov	sl, fp
d0046296:	bfa8      	it	ge
d0046298:	f44f 7aa0 	movge.w	sl, #320	; 0x140
d004629c:	2a00      	cmp	r2, #0
d004629e:	f000 8091 	beq.w	d00463c4 <drawFakeHorizon+0x1fc>
d00462a2:	f1bb 0f00 	cmp.w	fp, #0
d00462a6:	d009      	beq.n	d00462bc <drawFakeHorizon+0xf4>
d00462a8:	f1ba 0f00 	cmp.w	sl, #0
d00462ac:	4628      	mov	r0, r5
d00462ae:	4641      	mov	r1, r8
d00462b0:	bfcc      	ite	gt
d00462b2:	4652      	movgt	r2, sl
d00462b4:	2201      	movle	r2, #1
d00462b6:	4415      	add	r5, r2
d00462b8:	f001 fb3a 	bl	d0047930 <memset>
d00462bc:	f5ba 7fa0 	cmp.w	sl, #320	; 0x140
d00462c0:	d009      	beq.n	d00462d6 <drawFakeHorizon+0x10e>
d00462c2:	f5ba 7fa0 	cmp.w	sl, #320	; 0x140
d00462c6:	f5ca 72a0 	rsb	r2, sl, #320	; 0x140
d00462ca:	4628      	mov	r0, r5
d00462cc:	4639      	mov	r1, r7
d00462ce:	bfa8      	it	ge
d00462d0:	2201      	movge	r2, #1
d00462d2:	f001 fb2d 	bl	d0047930 <memset>
d00462d6:	3401      	adds	r4, #1
d00462d8:	f5b4 7ff0 	cmp.w	r4, #480	; 0x1e0
d00462dc:	d04e      	beq.n	d004637c <drawFakeHorizon+0x1b4>
d00462de:	ee07 4a90 	vmov	s15, r4
d00462e2:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d00462e6:	ee77 7ae9 	vsub.f32	s15, s15, s19
d00462ea:	ee67 7a89 	vmul.f32	s15, s15, s18
d00462ee:	ee77 6aaa 	vadd.f32	s13, s15, s21
d00462f2:	ee3a 7a27 	vadd.f32	s14, s20, s15
d00462f6:	eeb0 6ae6 	vabs.f32	s12, s13
d00462fa:	eeb4 6ac8 	vcmpe.f32	s12, s16
d00462fe:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0046302:	da95      	bge.n	d0046230 <drawFakeHorizon+0x68>
d0046304:	eef0 6ac7 	vabs.f32	s13, s14
d0046308:	eef4 6ac8 	vcmpe.f32	s13, s16
d004630c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0046310:	db4c      	blt.n	d00463ac <drawFakeHorizon+0x1e4>
d0046312:	2200      	movs	r2, #0
d0046314:	eec8 6a87 	vdiv.f32	s13, s17, s14
d0046318:	6833      	ldr	r3, [r6, #0]
d004631a:	eb04 0584 	add.w	r5, r4, r4, lsl #2
d004631e:	eb03 1585 	add.w	r5, r3, r5, lsl #6
d0046322:	eef5 6ac0 	vcmpe.f32	s13, #0.0
d0046326:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004632a:	bfcc      	ite	gt
d004632c:	2301      	movgt	r3, #1
d004632e:	2300      	movle	r3, #0
d0046330:	4293      	cmp	r3, r2
d0046332:	f000 8089 	beq.w	d0046448 <drawFakeHorizon+0x280>
d0046336:	eeb4 bac8 	vcmpe.f32	s22, s16
d004633a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004633e:	d429      	bmi.n	d0046394 <drawFakeHorizon+0x1cc>
d0046340:	ee7b 7aa7 	vadd.f32	s15, s23, s15
d0046344:	eeb0 7a4c 	vmov.f32	s14, s24
d0046348:	eeac 7aa7 	vfma.f32	s14, s25, s15
d004634c:	fefc 7ac7 	vcvta.s32.f32	s15, s14
d0046350:	ee17 ba90 	vmov	fp, s15
d0046354:	f1bb 0f00 	cmp.w	fp, #0
d0046358:	da9a      	bge.n	d0046290 <drawFakeHorizon+0xc8>
d004635a:	2a00      	cmp	r2, #0
d004635c:	d141      	bne.n	d00463e2 <drawFakeHorizon+0x21a>
d004635e:	f5b2 7fa0 	cmp.w	r2, #320	; 0x140
d0046362:	f104 0401 	add.w	r4, r4, #1
d0046366:	f5c2 72a0 	rsb	r2, r2, #320	; 0x140
d004636a:	4628      	mov	r0, r5
d004636c:	bfa8      	it	ge
d004636e:	2201      	movge	r2, #1
d0046370:	4641      	mov	r1, r8
d0046372:	f001 fadd 	bl	d0047930 <memset>
d0046376:	f5b4 7ff0 	cmp.w	r4, #480	; 0x1e0
d004637a:	d1b0      	bne.n	d00462de <drawFakeHorizon+0x116>
d004637c:	eddf 7a3b 	vldr	s15, [pc, #236]	; d004646c <drawFakeHorizon+0x2a4>
d0046380:	eeb4 bae7 	vcmpe.f32	s22, s15
d0046384:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0046388:	da31      	bge.n	d00463ee <drawFakeHorizon+0x226>
d004638a:	b003      	add	sp, #12
d004638c:	ecbd 8b0c 	vpop	{d8-d13}
d0046390:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0046394:	b93a      	cbnz	r2, d00463a6 <drawFakeHorizon+0x1de>
d0046396:	22a0      	movs	r2, #160	; 0xa0
d0046398:	4628      	mov	r0, r5
d004639a:	4639      	mov	r1, r7
d004639c:	4415      	add	r5, r2
d004639e:	f001 fac7 	bl	d0047930 <memset>
d00463a2:	22a0      	movs	r2, #160	; 0xa0
d00463a4:	e7db      	b.n	d004635e <drawFakeHorizon+0x196>
d00463a6:	f04f 0aa0 	mov.w	sl, #160	; 0xa0
d00463aa:	e77d      	b.n	d00462a8 <drawFakeHorizon+0xe0>
d00463ac:	eb04 0584 	add.w	r5, r4, r4, lsl #2
d00463b0:	6832      	ldr	r2, [r6, #0]
d00463b2:	eb02 1585 	add.w	r5, r2, r5, lsl #6
d00463b6:	4639      	mov	r1, r7
d00463b8:	4628      	mov	r0, r5
d00463ba:	f44f 72a0 	mov.w	r2, #320	; 0x140
d00463be:	f001 fab7 	bl	d0047930 <memset>
d00463c2:	e788      	b.n	d00462d6 <drawFakeHorizon+0x10e>
d00463c4:	f1bb 0f00 	cmp.w	fp, #0
d00463c8:	d00e      	beq.n	d00463e8 <drawFakeHorizon+0x220>
d00463ca:	4628      	mov	r0, r5
d00463cc:	4652      	mov	r2, sl
d00463ce:	4639      	mov	r1, r7
d00463d0:	4455      	add	r5, sl
d00463d2:	f001 faad 	bl	d0047930 <memset>
d00463d6:	f5bb 7fa0 	cmp.w	fp, #320	; 0x140
d00463da:	f6bf af7c 	bge.w	d00462d6 <drawFakeHorizon+0x10e>
d00463de:	4652      	mov	r2, sl
d00463e0:	e7bd      	b.n	d004635e <drawFakeHorizon+0x196>
d00463e2:	f04f 0a00 	mov.w	sl, #0
d00463e6:	e76c      	b.n	d00462c2 <drawFakeHorizon+0xfa>
d00463e8:	46da      	mov	sl, fp
d00463ea:	4652      	mov	r2, sl
d00463ec:	e7b7      	b.n	d004635e <drawFakeHorizon+0x196>
d00463ee:	ed9f 7a1d 	vldr	s14, [pc, #116]	; d0046464 <drawFakeHorizon+0x29c>
d00463f2:	f240 12df 	movw	r2, #479	; 0x1df
d00463f6:	eddf 7a1e 	vldr	s15, [pc, #120]	; d0046470 <drawFakeHorizon+0x2a8>
d00463fa:	2000      	movs	r0, #0
d00463fc:	ee6b ba87 	vmul.f32	s23, s23, s14
d0046400:	ed9f 7a1c 	vldr	s14, [pc, #112]	; d0046474 <drawFakeHorizon+0x2ac>
d0046404:	eddf 6a14 	vldr	s13, [pc, #80]	; d0046458 <drawFakeHorizon+0x290>
d0046408:	f8cd 9000 	str.w	r9, [sp]
d004640c:	eeb0 6a6b 	vmov.f32	s12, s23
d0046410:	eeed ba87 	vfma.f32	s23, s27, s14
d0046414:	eead 6aa7 	vfma.f32	s12, s27, s15
d0046418:	eecb 7a8d 	vdiv.f32	s15, s23, s26
d004641c:	ee86 7a0d 	vdiv.f32	s14, s12, s26
d0046420:	ee77 7aa6 	vadd.f32	s15, s15, s13
d0046424:	fefc 7ae7 	vcvta.s32.f32	s15, s15
d0046428:	ee37 7a26 	vadd.f32	s14, s14, s13
d004642c:	ee17 3a90 	vmov	r3, s15
d0046430:	febc 7ac7 	vcvta.s32.f32	s14, s14
d0046434:	ee17 1a10 	vmov	r1, s14
d0046438:	f7fa fe98 	bl	d004116c <drawLine>
d004643c:	b003      	add	sp, #12
d004643e:	ecbd 8b0c 	vpop	{d8-d13}
d0046442:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0046446:	4770      	bx	lr
d0046448:	eef5 6ac0 	vcmpe.f32	s13, #0.0
d004644c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0046450:	ddb1      	ble.n	d00463b6 <drawFakeHorizon+0x1ee>
d0046452:	4641      	mov	r1, r8
d0046454:	e7b0      	b.n	d00463b8 <drawFakeHorizon+0x1f0>
d0046456:	bf00      	nop
d0046458:	43200000 	.word	0x43200000
d004645c:	c31f0000 	.word	0xc31f0000
d0046460:	3b888889 	.word	0x3b888889
d0046464:	43700000 	.word	0x43700000
d0046468:	d012e7a4 	.word	0xd012e7a4
d004646c:	38d1b717 	.word	0x38d1b717
d0046470:	c3700000 	.word	0xc3700000
d0046474:	436f0000 	.word	0x436f0000

d0046478 <submitEntitySolid>:
d0046478:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d004647c:	ed2d 8b10 	vpush	{d8-d15}
d0046480:	b0b3      	sub	sp, #204	; 0xcc
d0046482:	f10d 036f 	add.w	r3, sp, #111	; 0x6f
d0046486:	9104      	str	r1, [sp, #16]
d0046488:	f023 031f 	bic.w	r3, r3, #31
d004648c:	9305      	str	r3, [sp, #20]
d004648e:	2800      	cmp	r0, #0
d0046490:	f000 828f 	beq.w	d00469b2 <submitEntitySolid+0x53a>
d0046494:	f8d0 800c 	ldr.w	r8, [r0, #12]
d0046498:	4604      	mov	r4, r0
d004649a:	f1b8 0f00 	cmp.w	r8, #0
d004649e:	f000 8288 	beq.w	d00469b2 <submitEntitySolid+0x53a>
d00464a2:	f8d8 3000 	ldr.w	r3, [r8]
d00464a6:	2b00      	cmp	r3, #0
d00464a8:	f000 8283 	beq.w	d00469b2 <submitEntitySolid+0x53a>
d00464ac:	f8d8 3010 	ldr.w	r3, [r8, #16]
d00464b0:	2b00      	cmp	r3, #0
d00464b2:	f000 827e 	beq.w	d00469b2 <submitEntitySolid+0x53a>
d00464b6:	f8d8 3004 	ldr.w	r3, [r8, #4]
d00464ba:	3b01      	subs	r3, #1
d00464bc:	f5b3 5f80 	cmp.w	r3, #4096	; 0x1000
d00464c0:	f080 8277 	bcs.w	d00469b2 <submitEntitySolid+0x53a>
d00464c4:	f8d8 3014 	ldr.w	r3, [r8, #20]
d00464c8:	2b00      	cmp	r3, #0
d00464ca:	f340 8272 	ble.w	d00469b2 <submitEntitySolid+0x53a>
d00464ce:	460f      	mov	r7, r1
d00464d0:	edd1 aa11 	vldr	s21, [r1, #68]	; 0x44
d00464d4:	ed91 fa10 	vldr	s30, [r1, #64]	; 0x40
d00464d8:	f7fe ff3e 	bl	d0045358 <lightsGet>
d00464dc:	900b      	str	r0, [sp, #44]	; 0x2c
d00464de:	f7fe ff3f 	bl	d0045360 <lightsGetCount>
d00464e2:	edd8 fa09 	vldr	s31, [r8, #36]	; 0x24
d00464e6:	edd8 7a0a 	vldr	s15, [r8, #40]	; 0x28
d00464ea:	eef5 fac0 	vcmpe.f32	s31, #0.0
d00464ee:	ed98 7a08 	vldr	s14, [r8, #32]
d00464f2:	f8d8 3004 	ldr.w	r3, [r8, #4]
d00464f6:	ed8d 7a01 	vstr	s14, [sp, #4]
d00464fa:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00464fe:	ed98 7a0c 	vldr	s14, [r8, #48]	; 0x30
d0046502:	eef5 7ac0 	vcmpe.f32	s15, #0.0
d0046506:	ed94 6a00 	vldr	s12, [r4]
d004650a:	ed8d 7a09 	vstr	s14, [sp, #36]	; 0x24
d004650e:	bfcc      	ite	gt
d0046510:	2501      	movgt	r5, #1
d0046512:	2500      	movle	r5, #0
d0046514:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0046518:	ed98 7a0b 	vldr	s14, [r8, #44]	; 0x2c
d004651c:	edd4 5a01 	vldr	s11, [r4, #4]
d0046520:	ed94 5a02 	vldr	s10, [r4, #8]
d0046524:	bfcc      	ite	gt
d0046526:	2601      	movgt	r6, #1
d0046528:	2600      	movle	r6, #0
d004652a:	2b00      	cmp	r3, #0
d004652c:	edd4 4a07 	vldr	s9, [r4, #28]
d0046530:	ed94 4a08 	vldr	s8, [r4, #32]
d0046534:	edd4 3a09 	vldr	s7, [r4, #36]	; 0x24
d0046538:	ed94 3a0a 	vldr	s6, [r4, #40]	; 0x28
d004653c:	edd4 2a0b 	vldr	s5, [r4, #44]	; 0x2c
d0046540:	ed94 2a0c 	vldr	s4, [r4, #48]	; 0x30
d0046544:	edd4 1a04 	vldr	s3, [r4, #16]
d0046548:	ed94 1a05 	vldr	s2, [r4, #20]
d004654c:	edd4 0a06 	vldr	s1, [r4, #24]
d0046550:	edd7 ca00 	vldr	s25, [r7]
d0046554:	ed97 da01 	vldr	s26, [r7, #4]
d0046558:	edd7 da02 	vldr	s27, [r7, #8]
d004655c:	ed97 0a06 	vldr	s0, [r7, #24]
d0046560:	ed97 8a07 	vldr	s16, [r7, #28]
d0046564:	edd7 8a08 	vldr	s17, [r7, #32]
d0046568:	ed97 9a09 	vldr	s18, [r7, #36]	; 0x24
d004656c:	edd7 9a0a 	vldr	s19, [r7, #40]	; 0x28
d0046570:	ed97 aa0b 	vldr	s20, [r7, #44]	; 0x2c
d0046574:	edcd 7a0a 	vstr	s15, [sp, #40]	; 0x28
d0046578:	9008      	str	r0, [sp, #32]
d004657a:	ed8d 7a07 	vstr	s14, [sp, #28]
d004657e:	ed97 ba0c 	vldr	s22, [r7, #48]	; 0x30
d0046582:	edd7 ba0d 	vldr	s23, [r7, #52]	; 0x34
d0046586:	ed97 ca0e 	vldr	s24, [r7, #56]	; 0x38
d004658a:	dd51      	ble.n	d0046630 <submitEntitySolid+0x1b8>
d004658c:	eb03 0043 	add.w	r0, r3, r3, lsl #1
d0046590:	f8d8 3000 	ldr.w	r3, [r8]
d0046594:	49df      	ldr	r1, [pc, #892]	; (d0046914 <submitEntitySolid+0x49c>)
d0046596:	eb03 0080 	add.w	r0, r3, r0, lsl #2
d004659a:	4adf      	ldr	r2, [pc, #892]	; (d0046918 <submitEntitySolid+0x4a0>)
d004659c:	edd3 7a01 	vldr	s15, [r3, #4]
d00465a0:	330c      	adds	r3, #12
d00465a2:	ed53 ea03 	vldr	s29, [r3, #-12]
d00465a6:	310c      	adds	r1, #12
d00465a8:	ee27 7aa2 	vmul.f32	s14, s15, s5
d00465ac:	ed53 6a01 	vldr	s13, [r3, #-4]
d00465b0:	ee27 ea83 	vmul.f32	s28, s15, s6
d00465b4:	4298      	cmp	r0, r3
d00465b6:	ee67 7a82 	vmul.f32	s15, s15, s4
d00465ba:	f102 020c 	add.w	r2, r2, #12
d00465be:	eeae 7a84 	vfma.f32	s14, s29, s8
d00465c2:	eeae eaa4 	vfma.f32	s28, s29, s9
d00465c6:	eeee 7aa3 	vfma.f32	s15, s29, s7
d00465ca:	ee35 7a87 	vadd.f32	s14, s11, s14
d00465ce:	ee36 ea0e 	vadd.f32	s28, s12, s28
d00465d2:	ee75 7a27 	vadd.f32	s15, s10, s15
d00465d6:	eea6 7a81 	vfma.f32	s14, s13, s2
d00465da:	eea6 eaa1 	vfma.f32	s28, s13, s3
d00465de:	eee6 7aa0 	vfma.f32	s15, s13, s1
d00465e2:	eef0 ea47 	vmov.f32	s29, s14
d00465e6:	ee37 7a4d 	vsub.f32	s14, s14, s26
d00465ea:	ed01 ea03 	vstr	s28, [r1, #-12]
d00465ee:	ee7e 6a6c 	vsub.f32	s13, s28, s25
d00465f2:	ed41 7a01 	vstr	s15, [r1, #-4]
d00465f6:	ee37 eaed 	vsub.f32	s28, s15, s27
d00465fa:	ed41 ea02 	vstr	s29, [r1, #-8]
d00465fe:	ee69 7a87 	vmul.f32	s15, s19, s14
d0046602:	ee68 ea07 	vmul.f32	s29, s16, s14
d0046606:	ee2b 7a87 	vmul.f32	s14, s23, s14
d004660a:	eee9 7a26 	vfma.f32	s15, s18, s13
d004660e:	eee0 ea26 	vfma.f32	s29, s0, s13
d0046612:	eeab 7a26 	vfma.f32	s14, s22, s13
d0046616:	eeea 7a0e 	vfma.f32	s15, s20, s28
d004661a:	eee8 ea8e 	vfma.f32	s29, s17, s28
d004661e:	eeac 7a0e 	vfma.f32	s14, s24, s28
d0046622:	ed42 7a02 	vstr	s15, [r2, #-8]
d0046626:	ed42 ea03 	vstr	s29, [r2, #-12]
d004662a:	ed02 7a01 	vstr	s14, [r2, #-4]
d004662e:	d1b5      	bne.n	d004659c <submitEntitySolid+0x124>
d0046630:	f8d8 3014 	ldr.w	r3, [r8, #20]
d0046634:	2b00      	cmp	r3, #0
d0046636:	9302      	str	r3, [sp, #8]
d0046638:	f340 81bb 	ble.w	d00469b2 <submitEntitySolid+0x53a>
d004663c:	4335      	orrs	r5, r6
d004663e:	f04f 0b00 	mov.w	fp, #0
d0046642:	9a08      	ldr	r2, [sp, #32]
d0046644:	462b      	mov	r3, r5
d0046646:	edcd ca0c 	vstr	s25, [sp, #48]	; 0x30
d004664a:	ed8d da0d 	vstr	s26, [sp, #52]	; 0x34
d004664e:	455a      	cmp	r2, fp
d0046650:	bfd4      	ite	le
d0046652:	2300      	movle	r3, #0
d0046654:	f003 0301 	andgt.w	r3, r3, #1
d0046658:	ed9d da09 	vldr	s26, [sp, #36]	; 0x24
d004665c:	eddf eaaf 	vldr	s29, [pc, #700]	; d004691c <submitEntitySolid+0x4a4>
d0046660:	edcd da09 	vstr	s27, [sp, #36]	; 0x24
d0046664:	eddd ca01 	vldr	s25, [sp, #4]
d0046668:	eddd da0a 	vldr	s27, [sp, #40]	; 0x28
d004666c:	9306      	str	r3, [sp, #24]
d004666e:	f8cd 800c 	str.w	r8, [sp, #12]
d0046672:	9a03      	ldr	r2, [sp, #12]
d0046674:	ea4f 130b 	mov.w	r3, fp, lsl #4
d0046678:	4ea7      	ldr	r6, [pc, #668]	; (d0046918 <submitEntitySolid+0x4a0>)
d004667a:	6914      	ldr	r4, [r2, #16]
d004667c:	58e0      	ldr	r0, [r4, r3]
d004667e:	eb04 140b 	add.w	r4, r4, fp, lsl #4
d0046682:	4633      	mov	r3, r6
d0046684:	eb00 0540 	add.w	r5, r0, r0, lsl #1
d0046688:	6862      	ldr	r2, [r4, #4]
d004668a:	68a7      	ldr	r7, [r4, #8]
d004668c:	0041      	lsls	r1, r0, #1
d004668e:	eb06 0585 	add.w	r5, r6, r5, lsl #2
d0046692:	9701      	str	r7, [sp, #4]
d0046694:	eb02 0642 	add.w	r6, r2, r2, lsl #1
d0046698:	edd5 4a02 	vldr	s9, [r5, #8]
d004669c:	eb07 0747 	add.w	r7, r7, r7, lsl #1
d00466a0:	eb03 0686 	add.w	r6, r3, r6, lsl #2
d00466a4:	eef4 4aea 	vcmpe.f32	s9, s21
d00466a8:	eb03 0787 	add.w	r7, r3, r7, lsl #2
d00466ac:	9b01      	ldr	r3, [sp, #4]
d00466ae:	ea4f 0842 	mov.w	r8, r2, lsl #1
d00466b2:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00466b6:	ea4f 0a43 	mov.w	sl, r3, lsl #1
d00466ba:	dd0e      	ble.n	d00466da <submitEntitySolid+0x262>
d00466bc:	edd6 7a02 	vldr	s15, [r6, #8]
d00466c0:	eef4 7aea 	vcmpe.f32	s15, s21
d00466c4:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00466c8:	dd07      	ble.n	d00466da <submitEntitySolid+0x262>
d00466ca:	edd7 7a02 	vldr	s15, [r7, #8]
d00466ce:	eef4 7aea 	vcmpe.f32	s15, s21
d00466d2:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00466d6:	f300 8166 	bgt.w	d00469a6 <submitEntitySolid+0x52e>
d00466da:	ed95 5a00 	vldr	s10, [r5]
d00466de:	edd5 2a02 	vldr	s5, [r5, #8]
d00466e2:	ed96 4a00 	vldr	s8, [r6]
d00466e6:	ed97 6a02 	vldr	s12, [r7, #8]
d00466ea:	ee34 1a45 	vsub.f32	s2, s8, s10
d00466ee:	edd5 7a01 	vldr	s15, [r5, #4]
d00466f2:	ee36 6a62 	vsub.f32	s12, s12, s5
d00466f6:	ed96 3a02 	vldr	s6, [r6, #8]
d00466fa:	edd7 6a01 	vldr	s13, [r7, #4]
d00466fe:	edd7 3a00 	vldr	s7, [r7]
d0046702:	ee33 3a62 	vsub.f32	s6, s6, s5
d0046706:	ee76 6ae7 	vsub.f32	s13, s13, s15
d004670a:	edd6 5a01 	vldr	s11, [r6, #4]
d004670e:	ee33 7ac5 	vsub.f32	s14, s7, s10
d0046712:	ee66 1a41 	vnmul.f32	s3, s12, s2
d0046716:	ee75 5ae7 	vsub.f32	s11, s11, s15
d004671a:	ee26 2ac3 	vnmul.f32	s4, s13, s6
d004671e:	eee3 1a07 	vfma.f32	s3, s6, s14
d0046722:	ee27 7a65 	vnmul.f32	s14, s14, s11
d0046726:	eea5 2a86 	vfma.f32	s4, s11, s12
d004672a:	eea1 7a26 	vfma.f32	s14, s2, s13
d004672e:	ee67 7aa1 	vmul.f32	s15, s15, s3
d0046732:	eee5 7a02 	vfma.f32	s15, s10, s4
d0046736:	eee2 7a87 	vfma.f32	s15, s5, s14
d004673a:	eef5 7ac0 	vcmpe.f32	s15, #0.0
d004673e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0046742:	f280 8130 	bge.w	d00469a6 <submitEntitySolid+0x52e>
d0046746:	180b      	adds	r3, r1, r0
d0046748:	9901      	ldr	r1, [sp, #4]
d004674a:	f8df e1c8 	ldr.w	lr, [pc, #456]	; d0046914 <submitEntitySolid+0x49c>
d004674e:	eb08 0c02 	add.w	ip, r8, r2
d0046752:	eb0a 0901 	add.w	r9, sl, r1
d0046756:	eb0e 0383 	add.w	r3, lr, r3, lsl #2
d004675a:	eb0e 0c8c 	add.w	ip, lr, ip, lsl #2
d004675e:	eb0e 0989 	add.w	r9, lr, r9, lsl #2
d0046762:	ed93 6a00 	vldr	s12, [r3]
d0046766:	ed93 7a02 	vldr	s14, [r3, #8]
d004676a:	eddc 2a00 	vldr	s5, [ip]
d004676e:	ed99 2a02 	vldr	s4, [r9, #8]
d0046772:	ee72 0ac6 	vsub.f32	s1, s5, s12
d0046776:	edd3 6a01 	vldr	s13, [r3, #4]
d004677a:	ee32 0a47 	vsub.f32	s0, s4, s14
d004677e:	eddc 5a02 	vldr	s11, [ip, #8]
d0046782:	edd9 1a01 	vldr	s3, [r9, #4]
d0046786:	ed99 1a00 	vldr	s2, [r9]
d004678a:	ee35 aac7 	vsub.f32	s20, s11, s14
d004678e:	ee71 7ae6 	vsub.f32	s15, s3, s13
d0046792:	ed9c 3a01 	vldr	s6, [ip, #4]
d0046796:	ee31 8a46 	vsub.f32	s16, s2, s12
d004679a:	ee60 8a60 	vnmul.f32	s17, s0, s1
d004679e:	ee73 9a66 	vsub.f32	s19, s6, s13
d00467a2:	ee27 9aca 	vnmul.f32	s18, s15, s20
d00467a6:	eeea 8a08 	vfma.f32	s17, s20, s16
d00467aa:	ee28 8a69 	vnmul.f32	s16, s16, s19
d00467ae:	eea9 9a80 	vfma.f32	s18, s19, s0
d00467b2:	eea0 8aa7 	vfma.f32	s16, s1, s15
d00467b6:	ee68 7aa8 	vmul.f32	s15, s17, s17
d00467ba:	eee9 7a09 	vfma.f32	s15, s18, s18
d00467be:	eee8 7a08 	vfma.f32	s15, s16, s16
d00467c2:	eef4 7aee 	vcmpe.f32	s15, s29
d00467c6:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00467ca:	f240 80ec 	bls.w	d00469a6 <submitEntitySolid+0x52e>
d00467ce:	eddf 0a57 	vldr	s1, [pc, #348]	; d004692c <submitEntitySolid+0x4b4>
d00467d2:	eef4 7ae0 	vcmpe.f32	s15, s1
d00467d6:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00467da:	f100 80ef 	bmi.w	d00469bc <submitEntitySolid+0x544>
d00467de:	eddf 0a54 	vldr	s1, [pc, #336]	; d0046930 <submitEntitySolid+0x4b8>
d00467e2:	eef4 7a60 	vcmp.f32	s15, s1
d00467e6:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00467ea:	f300 80e7 	bgt.w	d00469bc <submitEntitySolid+0x544>
d00467ee:	7b63      	ldrb	r3, [r4, #13]
d00467f0:	eef4 4acf 	vcmpe.f32	s9, s30
d00467f4:	eddf 7a4a 	vldr	s15, [pc, #296]	; d0046920 <submitEntitySolid+0x4a8>
d00467f8:	ee7c 9a8d 	vadd.f32	s19, s25, s26
d00467fc:	ee0a 3a10 	vmov	s20, r3
d0046800:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0046804:	eeb8 aa4a 	vcvt.f32.u32	s20, s20
d0046808:	ee2a aa27 	vmul.f32	s20, s20, s15
d004680c:	f2c0 8094 	blt.w	d0046938 <submitEntitySolid+0x4c0>
d0046810:	4490      	add	r8, r2
d0046812:	4b41      	ldr	r3, [pc, #260]	; (d0046918 <submitEntitySolid+0x4a0>)
d0046814:	eb03 0888 	add.w	r8, r3, r8, lsl #2
d0046818:	edd8 7a02 	vldr	s15, [r8, #8]
d004681c:	eef4 7acf 	vcmpe.f32	s15, s30
d0046820:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0046824:	f2c0 8088 	blt.w	d0046938 <submitEntitySolid+0x4c0>
d0046828:	9901      	ldr	r1, [sp, #4]
d004682a:	448a      	add	sl, r1
d004682c:	4619      	mov	r1, r3
d004682e:	eb03 0a8a 	add.w	sl, r3, sl, lsl #2
d0046832:	edda 0a02 	vldr	s1, [sl, #8]
d0046836:	eef4 0acf 	vcmpe.f32	s1, s30
d004683a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004683e:	db7b      	blt.n	d0046938 <submitEntitySolid+0x4c0>
d0046840:	eeb1 0a64 	vneg.f32	s0, s9
d0046844:	eeb4 0a45 	vcmp.f32	s0, s10
d0046848:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004684c:	d874      	bhi.n	d0046938 <submitEntitySolid+0x4c0>
d004684e:	eef4 4a45 	vcmp.f32	s9, s10
d0046852:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0046856:	db6f      	blt.n	d0046938 <submitEntitySolid+0x4c0>
d0046858:	eeb1 5a67 	vneg.f32	s10, s15
d004685c:	eeb4 5a44 	vcmp.f32	s10, s8
d0046860:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0046864:	d868      	bhi.n	d0046938 <submitEntitySolid+0x4c0>
d0046866:	eef4 7a44 	vcmp.f32	s15, s8
d004686a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004686e:	db63      	blt.n	d0046938 <submitEntitySolid+0x4c0>
d0046870:	eeb1 5a60 	vneg.f32	s10, s1
d0046874:	eeb4 5a63 	vcmp.f32	s10, s7
d0046878:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004687c:	d85c      	bhi.n	d0046938 <submitEntitySolid+0x4c0>
d004687e:	eef4 0a63 	vcmp.f32	s1, s7
d0046882:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0046886:	db57      	blt.n	d0046938 <submitEntitySolid+0x4c0>
d0046888:	ed9f 5a26 	vldr	s10, [pc, #152]	; d0046924 <submitEntitySolid+0x4ac>
d004688c:	230c      	movs	r3, #12
d004688e:	ee64 4a85 	vmul.f32	s9, s9, s10
d0046892:	fb03 1000 	mla	r0, r3, r0, r1
d0046896:	ed90 5a01 	vldr	s10, [r0, #4]
d004689a:	eeb1 4a64 	vneg.f32	s8, s9
d004689e:	eeb4 5a44 	vcmp.f32	s10, s8
d00468a2:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00468a6:	db47      	blt.n	d0046938 <submitEntitySolid+0x4c0>
d00468a8:	eeb4 5a64 	vcmp.f32	s10, s9
d00468ac:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00468b0:	d842      	bhi.n	d0046938 <submitEntitySolid+0x4c0>
d00468b2:	ed9f 5a1c 	vldr	s10, [pc, #112]	; d0046924 <submitEntitySolid+0x4ac>
d00468b6:	fb03 1202 	mla	r2, r3, r2, r1
d00468ba:	ee67 7a85 	vmul.f32	s15, s15, s10
d00468be:	edd2 4a01 	vldr	s9, [r2, #4]
d00468c2:	eeb1 4a67 	vneg.f32	s8, s15
d00468c6:	eef4 4a44 	vcmp.f32	s9, s8
d00468ca:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00468ce:	db33      	blt.n	d0046938 <submitEntitySolid+0x4c0>
d00468d0:	eef4 4a67 	vcmp.f32	s9, s15
d00468d4:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00468d8:	d82e      	bhi.n	d0046938 <submitEntitySolid+0x4c0>
d00468da:	ee60 0a85 	vmul.f32	s1, s1, s10
d00468de:	9a01      	ldr	r2, [sp, #4]
d00468e0:	fb03 1102 	mla	r1, r3, r2, r1
d00468e4:	eeb1 5a60 	vneg.f32	s10, s1
d00468e8:	edd1 7a01 	vldr	s15, [r1, #4]
d00468ec:	eef4 7ac5 	vcmpe.f32	s15, s10
d00468f0:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00468f4:	eef4 7ae0 	vcmpe.f32	s15, s1
d00468f8:	bfac      	ite	ge
d00468fa:	f04f 0901 	movge.w	r9, #1
d00468fe:	f04f 0900 	movlt.w	r9, #0
d0046902:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0046906:	f009 0901 	and.w	r9, r9, #1
d004690a:	bf88      	it	hi
d004690c:	f04f 0900 	movhi.w	r9, #0
d0046910:	e014      	b.n	d004693c <submitEntitySolid+0x4c4>
d0046912:	bf00      	nop
d0046914:	d0122300 	.word	0xd0122300
d0046918:	d00962c0 	.word	0xd00962c0
d004691c:	358637bd 	.word	0x358637bd
d0046920:	3b808081 	.word	0x3b808081
d0046924:	3f2aaaab 	.word	0x3f2aaaab
d0046928:	3eaaaaab 	.word	0x3eaaaaab
d004692c:	3f7fbe77 	.word	0x3f7fbe77
d0046930:	3f8020c5 	.word	0x3f8020c5
d0046934:	00000000 	.word	0x00000000
d0046938:	f04f 0900 	mov.w	r9, #0
d004693c:	9b06      	ldr	r3, [sp, #24]
d004693e:	2b00      	cmp	r3, #0
d0046940:	f040 8092 	bne.w	d0046a68 <submitEntitySolid+0x5f0>
d0046944:	eeb7 0a00 	vmov.f32	s0, #112	; 0x3f800000  1.0
d0046948:	fec9 9a8a 	vmaxnm.f32	s19, s19, s20
d004694c:	fe89 0ac0 	vminnm.f32	s0, s19, s0
d0046950:	f7fe fcd6 	bl	d0045300 <brightnessToShadeF>
d0046954:	f894 800c 	ldrb.w	r8, [r4, #12]
d0046958:	7ba3      	ldrb	r3, [r4, #14]
d004695a:	eeb0 8a40 	vmov.f32	s16, s0
d004695e:	f008 080f 	and.w	r8, r8, #15
d0046962:	b10b      	cbz	r3, d0046968 <submitEntitySolid+0x4f0>
d0046964:	f048 0810 	orr.w	r8, r8, #16
d0046968:	f1b9 0f00 	cmp.w	r9, #0
d004696c:	d033      	beq.n	d00469d6 <submitEntitySolid+0x55e>
d004696e:	eef0 4a48 	vmov.f32	s9, s16
d0046972:	7b62      	ldrb	r2, [r4, #13]
d0046974:	4641      	mov	r1, r8
d0046976:	9804      	ldr	r0, [sp, #16]
d0046978:	ed97 3a00 	vldr	s6, [r7]
d004697c:	edd7 3a01 	vldr	s7, [r7, #4]
d0046980:	ed97 4a02 	vldr	s8, [r7, #8]
d0046984:	edd6 1a00 	vldr	s3, [r6]
d0046988:	ed96 2a01 	vldr	s4, [r6, #4]
d004698c:	edd6 2a02 	vldr	s5, [r6, #8]
d0046990:	ed95 0a00 	vldr	s0, [r5]
d0046994:	edd5 0a01 	vldr	s1, [r5, #4]
d0046998:	ed95 1a02 	vldr	s2, [r5, #8]
d004699c:	f7ff fa02 	bl	d0045da4 <submitClippedTri>
d00469a0:	9b03      	ldr	r3, [sp, #12]
d00469a2:	695b      	ldr	r3, [r3, #20]
d00469a4:	9302      	str	r3, [sp, #8]
d00469a6:	f10b 0b01 	add.w	fp, fp, #1
d00469aa:	9b02      	ldr	r3, [sp, #8]
d00469ac:	459b      	cmp	fp, r3
d00469ae:	f6ff ae60 	blt.w	d0046672 <submitEntitySolid+0x1fa>
d00469b2:	b033      	add	sp, #204	; 0xcc
d00469b4:	ecbd 8b10 	vpop	{d8-d15}
d00469b8:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d00469bc:	eef1 0ae7 	vsqrt.f32	s1, s15
d00469c0:	eeb7 0a00 	vmov.f32	s0, #112	; 0x3f800000  1.0
d00469c4:	eec0 7a20 	vdiv.f32	s15, s0, s1
d00469c8:	ee29 9a27 	vmul.f32	s18, s18, s15
d00469cc:	ee68 8aa7 	vmul.f32	s17, s17, s15
d00469d0:	ee28 8a27 	vmul.f32	s16, s16, s15
d00469d4:	e70b      	b.n	d00467ee <submitEntitySolid+0x376>
d00469d6:	f8dd a010 	ldr.w	sl, [sp, #16]
d00469da:	f8dd 9014 	ldr.w	r9, [sp, #20]
d00469de:	4651      	mov	r1, sl
d00469e0:	ed97 3a00 	vldr	s6, [r7]
d00469e4:	4648      	mov	r0, r9
d00469e6:	edd7 3a01 	vldr	s7, [r7, #4]
d00469ea:	ed97 4a02 	vldr	s8, [r7, #8]
d00469ee:	edd6 1a00 	vldr	s3, [r6]
d00469f2:	ed96 2a01 	vldr	s4, [r6, #4]
d00469f6:	edd6 2a02 	vldr	s5, [r6, #8]
d00469fa:	ed95 0a00 	vldr	s0, [r5]
d00469fe:	edd5 0a01 	vldr	s1, [r5, #4]
d0046a02:	ed95 1a02 	vldr	s2, [r5, #8]
d0046a06:	f7fe fd71 	bl	d00454ec <clipTriangleToFrustum>
d0046a0a:	2802      	cmp	r0, #2
d0046a0c:	dc03      	bgt.n	d0046a16 <submitEntitySolid+0x59e>
d0046a0e:	9b03      	ldr	r3, [sp, #12]
d0046a10:	695b      	ldr	r3, [r3, #20]
d0046a12:	9302      	str	r3, [sp, #8]
d0046a14:	e7c7      	b.n	d00469a6 <submitEntitySolid+0x52e>
d0046a16:	eef0 4a48 	vmov.f32	s9, s16
d0046a1a:	1e46      	subs	r6, r0, #1
d0046a1c:	2501      	movs	r5, #1
d0046a1e:	4641      	mov	r1, r8
d0046a20:	4650      	mov	r0, sl
d0046a22:	462f      	mov	r7, r5
d0046a24:	3501      	adds	r5, #1
d0046a26:	7ba3      	ldrb	r3, [r4, #14]
d0046a28:	eb07 0747 	add.w	r7, r7, r7, lsl #1
d0046a2c:	7b62      	ldrb	r2, [r4, #13]
d0046a2e:	eb05 0c45 	add.w	ip, r5, r5, lsl #1
d0046a32:	ed99 0a00 	vldr	s0, [r9]
d0046a36:	eb09 0787 	add.w	r7, r9, r7, lsl #2
d0046a3a:	edd9 0a01 	vldr	s1, [r9, #4]
d0046a3e:	eb09 0c8c 	add.w	ip, r9, ip, lsl #2
d0046a42:	ed99 1a02 	vldr	s2, [r9, #8]
d0046a46:	edd7 1a00 	vldr	s3, [r7]
d0046a4a:	ed97 2a01 	vldr	s4, [r7, #4]
d0046a4e:	edd7 2a02 	vldr	s5, [r7, #8]
d0046a52:	ed9c 3a00 	vldr	s6, [ip]
d0046a56:	eddc 3a01 	vldr	s7, [ip, #4]
d0046a5a:	ed9c 4a02 	vldr	s8, [ip, #8]
d0046a5e:	f7ff f9a1 	bl	d0045da4 <submitClippedTri>
d0046a62:	42b5      	cmp	r5, r6
d0046a64:	d1dd      	bne.n	d0046a22 <submitEntitySolid+0x5aa>
d0046a66:	e7d2      	b.n	d0046a0e <submitEntitySolid+0x596>
d0046a68:	ee32 ba86 	vadd.f32	s22, s5, s12
d0046a6c:	ed1f ca52 	vldr	s24, [pc, #-328]	; d0046928 <submitEntitySolid+0x4b0>
d0046a70:	ee73 ba26 	vadd.f32	s23, s6, s13
d0046a74:	ee35 7a87 	vadd.f32	s14, s11, s14
d0046a78:	eef5 dac0 	vcmpe.f32	s27, #0.0
d0046a7c:	ee3b ba01 	vadd.f32	s22, s22, s2
d0046a80:	ee7b baa1 	vadd.f32	s23, s23, s3
d0046a84:	ee37 2a02 	vadd.f32	s4, s14, s4
d0046a88:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0046a8c:	ee2b ba0c 	vmul.f32	s22, s22, s24
d0046a90:	ee6b ba8c 	vmul.f32	s23, s23, s24
d0046a94:	ee22 ca0c 	vmul.f32	s24, s4, s24
d0046a98:	f340 80f3 	ble.w	d0046c82 <submitEntitySolid+0x80a>
d0046a9c:	eddd 7a0d 	vldr	s15, [sp, #52]	; 0x34
d0046aa0:	ee37 3aeb 	vsub.f32	s6, s15, s23
d0046aa4:	eddd 7a0c 	vldr	s15, [sp, #48]	; 0x30
d0046aa8:	ee77 3acb 	vsub.f32	s7, s15, s22
d0046aac:	eddd 7a09 	vldr	s15, [sp, #36]	; 0x24
d0046ab0:	ee37 5acc 	vsub.f32	s10, s15, s24
d0046ab4:	ee63 7a03 	vmul.f32	s15, s6, s6
d0046ab8:	eee3 7aa3 	vfma.f32	s15, s7, s7
d0046abc:	eee5 7a05 	vfma.f32	s15, s10, s10
d0046ac0:	eef4 7aee 	vcmpe.f32	s15, s29
d0046ac4:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0046ac8:	f340 80db 	ble.w	d0046c82 <submitEntitySolid+0x80a>
d0046acc:	ed1f 7a69 	vldr	s14, [pc, #-420]	; d004692c <submitEntitySolid+0x4b4>
d0046ad0:	eef4 7ac7 	vcmpe.f32	s15, s14
d0046ad4:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0046ad8:	f100 816e 	bmi.w	d0046db8 <submitEntitySolid+0x940>
d0046adc:	ed1f 7a6c 	vldr	s14, [pc, #-432]	; d0046930 <submitEntitySolid+0x4b8>
d0046ae0:	eef4 7a47 	vcmp.f32	s15, s14
d0046ae4:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0046ae8:	f300 8166 	bgt.w	d0046db8 <submitEntitySolid+0x940>
d0046aec:	ee38 2aa8 	vadd.f32	s4, s17, s17
d0046af0:	465a      	mov	r2, fp
d0046af2:	ee78 2a08 	vadd.f32	s5, s16, s16
d0046af6:	46bb      	mov	fp, r7
d0046af8:	eef0 6a6c 	vmov.f32	s13, s25
d0046afc:	4637      	mov	r7, r6
d0046afe:	eef0 7a42 	vmov.f32	s15, s4
d0046b02:	462e      	mov	r6, r5
d0046b04:	eeb0 7a62 	vmov.f32	s14, s5
d0046b08:	4625      	mov	r5, r4
d0046b0a:	eef0 ca45 	vmov.f32	s25, s10
d0046b0e:	f8dd 802c 	ldr.w	r8, [sp, #44]	; 0x2c
d0046b12:	eeb0 5a6a 	vmov.f32	s10, s21
d0046b16:	f04f 0a00 	mov.w	sl, #0
d0046b1a:	eef0 aa43 	vmov.f32	s21, s6
d0046b1e:	9c08      	ldr	r4, [sp, #32]
d0046b20:	eef0 2a4d 	vmov.f32	s5, s26
d0046b24:	eeb0 2a4a 	vmov.f32	s4, s20
d0046b28:	ee79 1a09 	vadd.f32	s3, s18, s18
d0046b2c:	eeb0 aa63 	vmov.f32	s20, s7
d0046b30:	eeb7 ea00 	vmov.f32	s28, #112	; 0x3f800000  1.0
d0046b34:	eef0 3a4f 	vmov.f32	s7, s30
d0046b38:	eeb2 1a00 	vmov.f32	s2, #32	; 0x41000000  8.0
d0046b3c:	eeb0 fa67 	vmov.f32	s30, s15
d0046b40:	eeb0 da47 	vmov.f32	s26, s14
d0046b44:	eeb0 3a66 	vmov.f32	s6, s13
d0046b48:	e083      	b.n	d0046c52 <submitEntitySolid+0x7da>
d0046b4a:	edd8 7a02 	vldr	s15, [r8, #8]
d0046b4e:	edd8 6a01 	vldr	s13, [r8, #4]
d0046b52:	ee77 7aeb 	vsub.f32	s15, s15, s23
d0046b56:	ed98 7a03 	vldr	s14, [r8, #12]
d0046b5a:	ee76 6acb 	vsub.f32	s13, s13, s22
d0046b5e:	edd8 5a0a 	vldr	s11, [r8, #40]	; 0x28
d0046b62:	ee37 7a4c 	vsub.f32	s14, s14, s24
d0046b66:	ee27 6aa7 	vmul.f32	s12, s15, s15
d0046b6a:	ee65 4aa5 	vmul.f32	s9, s11, s11
d0046b6e:	eea6 6aa6 	vfma.f32	s12, s13, s13
d0046b72:	eea7 6a07 	vfma.f32	s12, s14, s14
d0046b76:	eeb4 6a6e 	vcmp.f32	s12, s29
d0046b7a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0046b7e:	dd62      	ble.n	d0046c46 <submitEntitySolid+0x7ce>
d0046b80:	eef4 4a46 	vcmp.f32	s9, s12
d0046b84:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0046b88:	dd5d      	ble.n	d0046c46 <submitEntitySolid+0x7ce>
d0046b8a:	eeb1 0ac6 	vsqrt.f32	s0, s12
d0046b8e:	ed98 4a08 	vldr	s8, [r8, #32]
d0046b92:	ee64 0a04 	vmul.f32	s1, s8, s8
d0046b96:	eef4 0ac6 	vcmpe.f32	s1, s12
d0046b9a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0046b9e:	eece 4a00 	vdiv.f32	s9, s28, s0
d0046ba2:	ee66 6aa4 	vmul.f32	s13, s13, s9
d0046ba6:	ee67 7aa4 	vmul.f32	s15, s15, s9
d0046baa:	ee27 7a24 	vmul.f32	s14, s14, s9
d0046bae:	f140 80af 	bpl.w	d0046d10 <submitEntitySolid+0x898>
d0046bb2:	edd8 0a09 	vldr	s1, [r8, #36]	; 0x24
d0046bb6:	eeb4 4ae0 	vcmpe.f32	s8, s1
d0046bba:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0046bbe:	da42      	bge.n	d0046c46 <submitEntitySolid+0x7ce>
d0046bc0:	eef4 5ae0 	vcmpe.f32	s11, s1
d0046bc4:	ee26 6a24 	vmul.f32	s12, s12, s9
d0046bc8:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0046bcc:	eef4 0ac6 	vcmpe.f32	s1, s12
d0046bd0:	f200 80da 	bhi.w	d0046d88 <submitEntitySolid+0x910>
d0046bd4:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0046bd8:	d935      	bls.n	d0046c46 <submitEntitySolid+0x7ce>
d0046bda:	ee36 6a44 	vsub.f32	s12, s12, s8
d0046bde:	ee30 4ac4 	vsub.f32	s8, s1, s8
d0046be2:	eec6 5a04 	vdiv.f32	s11, s12, s8
d0046be6:	ed1f 6aad 	vldr	s12, [pc, #-692]	; d0046934 <submitEntitySolid+0x4bc>
d0046bea:	fe85 6a86 	vmaxnm.f32	s12, s11, s12
d0046bee:	fe86 6a4e 	vminnm.f32	s12, s12, s28
d0046bf2:	ee3e 6a46 	vsub.f32	s12, s28, s12
d0046bf6:	eeb5 6ac0 	vcmpe.f32	s12, #0.0
d0046bfa:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0046bfe:	d922      	bls.n	d0046c46 <submitEntitySolid+0x7ce>
d0046c00:	ee68 5aa7 	vmul.f32	s11, s17, s15
d0046c04:	eee9 5a26 	vfma.f32	s11, s18, s13
d0046c08:	eee8 5a07 	vfma.f32	s11, s16, s14
d0046c0c:	eef5 5ac0 	vcmpe.f32	s11, #0.0
d0046c10:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0046c14:	d917      	bls.n	d0046c46 <submitEntitySolid+0x7ce>
d0046c16:	eef5 fac0 	vcmpe.f32	s31, #0.0
d0046c1a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0046c1e:	dd37      	ble.n	d0046c90 <submitEntitySolid+0x818>
d0046c20:	edd8 4a07 	vldr	s9, [r8, #28]
d0046c24:	eef5 dac0 	vcmpe.f32	s27, #0.0
d0046c28:	ee6f 4aa4 	vmul.f32	s9, s31, s9
d0046c2c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0046c30:	ee64 4a86 	vmul.f32	s9, s9, s12
d0046c34:	eee5 9aa4 	vfma.f32	s19, s11, s9
d0046c38:	dc2a      	bgt.n	d0046c90 <submitEntitySolid+0x818>
d0046c3a:	eef4 9ace 	vcmpe.f32	s19, s28
d0046c3e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0046c42:	f280 808f 	bge.w	d0046d64 <submitEntitySolid+0x8ec>
d0046c46:	f10a 0a01 	add.w	sl, sl, #1
d0046c4a:	f108 0840 	add.w	r8, r8, #64	; 0x40
d0046c4e:	4554      	cmp	r4, sl
d0046c50:	dd4e      	ble.n	d0046cf0 <submitEntitySolid+0x878>
d0046c52:	f8d8 302c 	ldr.w	r3, [r8, #44]	; 0x2c
d0046c56:	2b00      	cmp	r3, #0
d0046c58:	d0f5      	beq.n	d0046c46 <submitEntitySolid+0x7ce>
d0046c5a:	f898 3000 	ldrb.w	r3, [r8]
d0046c5e:	2b00      	cmp	r3, #0
d0046c60:	f43f af73 	beq.w	d0046b4a <submitEntitySolid+0x6d2>
d0046c64:	edd8 6a04 	vldr	s13, [r8, #16]
d0046c68:	eeb7 6a00 	vmov.f32	s12, #112	; 0x3f800000  1.0
d0046c6c:	edd8 7a05 	vldr	s15, [r8, #20]
d0046c70:	ed98 7a06 	vldr	s14, [r8, #24]
d0046c74:	eef1 6a66 	vneg.f32	s13, s13
d0046c78:	eef1 7a67 	vneg.f32	s15, s15
d0046c7c:	eeb1 7a47 	vneg.f32	s14, s14
d0046c80:	e7be      	b.n	d0046c00 <submitEntitySolid+0x788>
d0046c82:	ed1f 5ad4 	vldr	s10, [pc, #-848]	; d0046934 <submitEntitySolid+0x4bc>
d0046c86:	eeb0 3a45 	vmov.f32	s6, s10
d0046c8a:	eef0 3a45 	vmov.f32	s7, s10
d0046c8e:	e72d      	b.n	d0046aec <submitEntitySolid+0x674>
d0046c90:	eed5 7a8f 	vfnms.f32	s15, s11, s30
d0046c94:	eed5 6aa1 	vfnms.f32	s13, s11, s3
d0046c98:	ee95 7a8d 	vfnms.f32	s14, s11, s26
d0046c9c:	ee2a 0aa7 	vmul.f32	s0, s21, s15
d0046ca0:	eeaa 0a26 	vfma.f32	s0, s20, s13
d0046ca4:	eeac 0a87 	vfma.f32	s0, s25, s14
d0046ca8:	eeb5 0ac0 	vcmpe.f32	s0, #0.0
d0046cac:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0046cb0:	ddc3      	ble.n	d0046c3a <submitEntitySolid+0x7c2>
d0046cb2:	eddd 7a07 	vldr	s15, [sp, #28]
d0046cb6:	eef4 7a41 	vcmp.f32	s15, s2
d0046cba:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0046cbe:	d008      	beq.n	d0046cd2 <submitEntitySolid+0x85a>
d0046cc0:	eeb3 7a00 	vmov.f32	s14, #48	; 0x41800000  16.0
d0046cc4:	eef4 7a47 	vcmp.f32	s15, s14
d0046cc8:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0046ccc:	d123      	bne.n	d0046d16 <submitEntitySolid+0x89e>
d0046cce:	ee20 0a00 	vmul.f32	s0, s0, s0
d0046cd2:	ee20 0a00 	vmul.f32	s0, s0, s0
d0046cd6:	ee20 0a00 	vmul.f32	s0, s0, s0
d0046cda:	ee20 0a00 	vmul.f32	s0, s0, s0
d0046cde:	edd8 7a07 	vldr	s15, [r8, #28]
d0046ce2:	ee6d 7aa7 	vmul.f32	s15, s27, s15
d0046ce6:	ee27 6a86 	vmul.f32	s12, s15, s12
d0046cea:	eee0 9a06 	vfma.f32	s19, s0, s12
d0046cee:	e7a4      	b.n	d0046c3a <submitEntitySolid+0x7c2>
d0046cf0:	462c      	mov	r4, r5
d0046cf2:	eef0 aa45 	vmov.f32	s21, s10
d0046cf6:	4635      	mov	r5, r6
d0046cf8:	eeb0 fa63 	vmov.f32	s30, s7
d0046cfc:	463e      	mov	r6, r7
d0046cfe:	eef0 ca43 	vmov.f32	s25, s6
d0046d02:	465f      	mov	r7, fp
d0046d04:	eeb0 da62 	vmov.f32	s26, s5
d0046d08:	eeb0 aa42 	vmov.f32	s20, s4
d0046d0c:	4693      	mov	fp, r2
d0046d0e:	e619      	b.n	d0046944 <submitEntitySolid+0x4cc>
d0046d10:	eeb7 6a00 	vmov.f32	s12, #112	; 0x3f800000  1.0
d0046d14:	e774      	b.n	d0046c00 <submitEntitySolid+0x788>
d0046d16:	eef0 0a67 	vmov.f32	s1, s15
d0046d1a:	edcd 1a13 	vstr	s3, [sp, #76]	; 0x4c
d0046d1e:	9212      	str	r2, [sp, #72]	; 0x48
d0046d20:	ed8d 2a11 	vstr	s4, [sp, #68]	; 0x44
d0046d24:	edcd 2a10 	vstr	s5, [sp, #64]	; 0x40
d0046d28:	ed8d 3a0f 	vstr	s6, [sp, #60]	; 0x3c
d0046d2c:	edcd 3a0e 	vstr	s7, [sp, #56]	; 0x38
d0046d30:	ed8d 5a0a 	vstr	s10, [sp, #40]	; 0x28
d0046d34:	ed8d 1a02 	vstr	s2, [sp, #8]
d0046d38:	ed8d 6a01 	vstr	s12, [sp, #4]
d0046d3c:	f7fc fdd8 	bl	d00438f0 <powf>
d0046d40:	eddd 1a13 	vldr	s3, [sp, #76]	; 0x4c
d0046d44:	9a12      	ldr	r2, [sp, #72]	; 0x48
d0046d46:	ed9d 2a11 	vldr	s4, [sp, #68]	; 0x44
d0046d4a:	eddd 2a10 	vldr	s5, [sp, #64]	; 0x40
d0046d4e:	ed9d 3a0f 	vldr	s6, [sp, #60]	; 0x3c
d0046d52:	eddd 3a0e 	vldr	s7, [sp, #56]	; 0x38
d0046d56:	ed9d 5a0a 	vldr	s10, [sp, #40]	; 0x28
d0046d5a:	ed9d 1a02 	vldr	s2, [sp, #8]
d0046d5e:	ed9d 6a01 	vldr	s12, [sp, #4]
d0046d62:	e7bc      	b.n	d0046cde <submitEntitySolid+0x866>
d0046d64:	462c      	mov	r4, r5
d0046d66:	eef0 aa45 	vmov.f32	s21, s10
d0046d6a:	4635      	mov	r5, r6
d0046d6c:	eeb0 fa63 	vmov.f32	s30, s7
d0046d70:	463e      	mov	r6, r7
d0046d72:	eef0 ca43 	vmov.f32	s25, s6
d0046d76:	465f      	mov	r7, fp
d0046d78:	eeb0 da62 	vmov.f32	s26, s5
d0046d7c:	eeb0 aa42 	vmov.f32	s20, s4
d0046d80:	4693      	mov	fp, r2
d0046d82:	eef7 9a00 	vmov.f32	s19, #112	; 0x3f800000  1.0
d0046d86:	e5dd      	b.n	d0046944 <submitEntitySolid+0x4cc>
d0046d88:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0046d8c:	db21      	blt.n	d0046dd2 <submitEntitySolid+0x95a>
d0046d8e:	ee36 6a44 	vsub.f32	s12, s12, s8
d0046d92:	ee30 4ac4 	vsub.f32	s8, s1, s8
d0046d96:	eef6 4a08 	vmov.f32	s9, #104	; 0x3f400000  0.750
d0046d9a:	eec6 5a04 	vdiv.f32	s11, s12, s8
d0046d9e:	ed9f 6a16 	vldr	s12, [pc, #88]	; d0046df8 <submitEntitySolid+0x980>
d0046da2:	fe85 6a86 	vmaxnm.f32	s12, s11, s12
d0046da6:	eef0 5a4e 	vmov.f32	s11, s28
d0046daa:	fe86 6a4e 	vminnm.f32	s12, s12, s28
d0046dae:	eee6 5a64 	vfms.f32	s11, s12, s9
d0046db2:	eeb0 6a65 	vmov.f32	s12, s11
d0046db6:	e71e      	b.n	d0046bf6 <submitEntitySolid+0x77e>
d0046db8:	eeb1 7ae7 	vsqrt.f32	s14, s15
d0046dbc:	eef7 6a00 	vmov.f32	s13, #112	; 0x3f800000  1.0
d0046dc0:	eec6 7a87 	vdiv.f32	s15, s13, s14
d0046dc4:	ee63 3aa7 	vmul.f32	s7, s7, s15
d0046dc8:	ee23 3a27 	vmul.f32	s6, s6, s15
d0046dcc:	ee25 5a27 	vmul.f32	s10, s10, s15
d0046dd0:	e68c      	b.n	d0046aec <submitEntitySolid+0x674>
d0046dd2:	ee36 6a60 	vsub.f32	s12, s12, s1
d0046dd6:	ee75 5ae0 	vsub.f32	s11, s11, s1
d0046dda:	eec6 4a25 	vdiv.f32	s9, s12, s11
d0046dde:	ed9f 6a06 	vldr	s12, [pc, #24]	; d0046df8 <submitEntitySolid+0x980>
d0046de2:	eef5 5a00 	vmov.f32	s11, #80	; 0x3e800000  0.250
d0046de6:	fe84 6a86 	vmaxnm.f32	s12, s9, s12
d0046dea:	fe86 6a4e 	vminnm.f32	s12, s12, s28
d0046dee:	ee3e 6a46 	vsub.f32	s12, s28, s12
d0046df2:	ee26 6a25 	vmul.f32	s12, s12, s11
d0046df6:	e6fe      	b.n	d0046bf6 <submitEntitySolid+0x77e>
d0046df8:	00000000 	.word	0x00000000

d0046dfc <submitWorldEntities>:
d0046dfc:	e92d 43f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
d0046e00:	4c30      	ldr	r4, [pc, #192]	; (d0046ec4 <submitWorldEntities+0xc8>)
d0046e02:	b09d      	sub	sp, #116	; 0x74
d0046e04:	f04f 0800 	mov.w	r8, #0
d0046e08:	f8df 90bc 	ldr.w	r9, [pc, #188]	; d0046ec8 <submitWorldEntities+0xcc>
d0046e0c:	4605      	mov	r5, r0
d0046e0e:	f504 46c0 	add.w	r6, r4, #24576	; 0x6000
d0046e12:	f100 0710 	add.w	r7, r0, #16
d0046e16:	f894 3034 	ldrb.w	r3, [r4, #52]	; 0x34
d0046e1a:	2b00      	cmp	r3, #0
d0046e1c:	d03f      	beq.n	d0046e9e <submitWorldEntities+0xa2>
d0046e1e:	68e3      	ldr	r3, [r4, #12]
d0046e20:	2250      	movs	r2, #80	; 0x50
d0046e22:	4639      	mov	r1, r7
d0046e24:	4668      	mov	r0, sp
d0046e26:	b3d3      	cbz	r3, d0046e9e <submitWorldEntities+0xa2>
d0046e28:	f894 3035 	ldrb.w	r3, [r4, #53]	; 0x35
d0046e2c:	07db      	lsls	r3, r3, #31
d0046e2e:	d536      	bpl.n	d0046e9e <submitWorldEntities+0xa2>
d0046e30:	ed94 0a00 	vldr	s0, [r4]
d0046e34:	edd4 0a01 	vldr	s1, [r4, #4]
d0046e38:	ed94 1a02 	vldr	s2, [r4, #8]
d0046e3c:	ed8d 0a17 	vstr	s0, [sp, #92]	; 0x5c
d0046e40:	edcd 0a16 	vstr	s1, [sp, #88]	; 0x58
d0046e44:	ed8d 1a15 	vstr	s2, [sp, #84]	; 0x54
d0046e48:	f000 fd64 	bl	d0047914 <memcpy>
d0046e4c:	ed9d 1a15 	vldr	s2, [sp, #84]	; 0x54
d0046e50:	ed9d 0a17 	vldr	s0, [sp, #92]	; 0x5c
d0046e54:	eddd 0a16 	vldr	s1, [sp, #88]	; 0x58
d0046e58:	e895 000f 	ldmia.w	r5, {r0, r1, r2, r3}
d0046e5c:	f7fd faa2 	bl	d00443a4 <worldToCamera>
d0046e60:	68e3      	ldr	r3, [r4, #12]
d0046e62:	ed95 7a11 	vldr	s14, [r5, #68]	; 0x44
d0046e66:	edd3 7a06 	vldr	s15, [r3, #24]
d0046e6a:	ed8d 0a19 	vstr	s0, [sp, #100]	; 0x64
d0046e6e:	ee71 6a67 	vsub.f32	s13, s2, s15
d0046e72:	edcd 0a1a 	vstr	s1, [sp, #104]	; 0x68
d0046e76:	ee71 7a27 	vadd.f32	s15, s2, s15
d0046e7a:	ed8d 1a1b 	vstr	s2, [sp, #108]	; 0x6c
d0046e7e:	eef4 6ac7 	vcmpe.f32	s13, s14
d0046e82:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0046e86:	dc0a      	bgt.n	d0046e9e <submitWorldEntities+0xa2>
d0046e88:	ed95 7a10 	vldr	s14, [r5, #64]	; 0x40
d0046e8c:	eef4 7ac7 	vcmpe.f32	s15, s14
d0046e90:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0046e94:	d403      	bmi.n	d0046e9e <submitWorldEntities+0xa2>
d0046e96:	f849 4028 	str.w	r4, [r9, r8, lsl #2]
d0046e9a:	f108 0801 	add.w	r8, r8, #1
d0046e9e:	3460      	adds	r4, #96	; 0x60
d0046ea0:	42b4      	cmp	r4, r6
d0046ea2:	d1b8      	bne.n	d0046e16 <submitWorldEntities+0x1a>
d0046ea4:	f1b8 0f00 	cmp.w	r8, #0
d0046ea8:	d009      	beq.n	d0046ebe <submitWorldEntities+0xc2>
d0046eaa:	4c07      	ldr	r4, [pc, #28]	; (d0046ec8 <submitWorldEntities+0xcc>)
d0046eac:	eb04 0888 	add.w	r8, r4, r8, lsl #2
d0046eb0:	f854 0b04 	ldr.w	r0, [r4], #4
d0046eb4:	4629      	mov	r1, r5
d0046eb6:	f7ff fadf 	bl	d0046478 <submitEntitySolid>
d0046eba:	45a0      	cmp	r8, r4
d0046ebc:	d1f8      	bne.n	d0046eb0 <submitWorldEntities+0xb4>
d0046ebe:	b01d      	add	sp, #116	; 0x74
d0046ec0:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
d0046ec4:	d012e7c0 	.word	0xd012e7c0
d0046ec8:	d012e300 	.word	0xd012e300

d0046ecc <Render3D>:
d0046ecc:	b5f0      	push	{r4, r5, r6, r7, lr}
d0046ece:	4604      	mov	r4, r0
d0046ed0:	4e80      	ldr	r6, [pc, #512]	; (d00470d4 <Render3D+0x208>)
d0046ed2:	2700      	movs	r7, #0
d0046ed4:	ed2d 8b02 	vpush	{d8}
d0046ed8:	b089      	sub	sp, #36	; 0x24
d0046eda:	6037      	str	r7, [r6, #0]
d0046edc:	f7ff ff8e 	bl	d0046dfc <submitWorldEntities>
d0046ee0:	4620      	mov	r0, r4
d0046ee2:	f7fc fdc3 	bl	d0043a6c <sb3dParticlesRender>
d0046ee6:	4b7c      	ldr	r3, [pc, #496]	; (d00470d8 <Render3D+0x20c>)
d0046ee8:	681d      	ldr	r5, [r3, #0]
d0046eea:	2d00      	cmp	r5, #0
d0046eec:	d04d      	beq.n	d0046f8a <Render3D+0xbe>
d0046eee:	6833      	ldr	r3, [r6, #0]
d0046ef0:	42bb      	cmp	r3, r7
d0046ef2:	dd46      	ble.n	d0046f82 <Render3D+0xb6>
d0046ef4:	eeb6 8a00 	vmov.f32	s16, #96	; 0x3f000000  0.5
d0046ef8:	4c78      	ldr	r4, [pc, #480]	; (d00470dc <Render3D+0x210>)
d0046efa:	eddf 8a79 	vldr	s17, [pc, #484]	; d00470e0 <Render3D+0x214>
d0046efe:	edd4 7a07 	vldr	s15, [r4, #28]
d0046f02:	3701      	adds	r7, #1
d0046f04:	f894 3035 	ldrb.w	r3, [r4, #53]	; 0x35
d0046f08:	ee77 7a88 	vadd.f32	s15, s15, s16
d0046f0c:	ee07 3a10 	vmov	s14, r3
d0046f10:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d0046f14:	eeb8 7a47 	vcvt.f32.u32	s14, s14
d0046f18:	ee17 1a90 	vmov	r1, s15
d0046f1c:	eef0 7a48 	vmov.f32	s15, s16
d0046f20:	2904      	cmp	r1, #4
d0046f22:	eee7 7a28 	vfma.f32	s15, s14, s17
d0046f26:	bfa8      	it	ge
d0046f28:	2104      	movge	r1, #4
d0046f2a:	ea21 71e1 	bic.w	r1, r1, r1, asr #31
d0046f2e:	b153      	cbz	r3, d0046f46 <Render3D+0x7a>
d0046f30:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d0046f34:	ee17 3a90 	vmov	r3, s15
d0046f38:	f1c3 0305 	rsb	r3, r3, #5
d0046f3c:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
d0046f40:	4299      	cmp	r1, r3
d0046f42:	bfa8      	it	ge
d0046f44:	4619      	movge	r1, r3
d0046f46:	f894 0034 	ldrb.w	r0, [r4, #52]	; 0x34
d0046f4a:	f7fa f95d 	bl	d0041208 <shadeColor>
d0046f4e:	4605      	mov	r5, r0
d0046f50:	68e3      	ldr	r3, [r4, #12]
d0046f52:	68a2      	ldr	r2, [r4, #8]
d0046f54:	6861      	ldr	r1, [r4, #4]
d0046f56:	9000      	str	r0, [sp, #0]
d0046f58:	6820      	ldr	r0, [r4, #0]
d0046f5a:	f7fa f907 	bl	d004116c <drawLine>
d0046f5e:	9500      	str	r5, [sp, #0]
d0046f60:	e9d4 2304 	ldrd	r2, r3, [r4, #16]
d0046f64:	e9d4 0102 	ldrd	r0, r1, [r4, #8]
d0046f68:	f7fa f900 	bl	d004116c <drawLine>
d0046f6c:	9500      	str	r5, [sp, #0]
d0046f6e:	e9d4 2300 	ldrd	r2, r3, [r4]
d0046f72:	e9d4 0104 	ldrd	r0, r1, [r4, #16]
d0046f76:	f7fa f8f9 	bl	d004116c <drawLine>
d0046f7a:	6833      	ldr	r3, [r6, #0]
d0046f7c:	3440      	adds	r4, #64	; 0x40
d0046f7e:	42bb      	cmp	r3, r7
d0046f80:	dcbd      	bgt.n	d0046efe <Render3D+0x32>
d0046f82:	b009      	add	sp, #36	; 0x24
d0046f84:	ecbd 8b02 	vpop	{d8}
d0046f88:	bdf0      	pop	{r4, r5, r6, r7, pc}
d0046f8a:	f7fa f8d1 	bl	d0041130 <resetDepthBuffer>
d0046f8e:	4b55      	ldr	r3, [pc, #340]	; (d00470e4 <Render3D+0x218>)
d0046f90:	681f      	ldr	r7, [r3, #0]
d0046f92:	b33f      	cbz	r7, d0046fe4 <Render3D+0x118>
d0046f94:	6833      	ldr	r3, [r6, #0]
d0046f96:	2b00      	cmp	r3, #0
d0046f98:	ddf3      	ble.n	d0046f82 <Render3D+0xb6>
d0046f9a:	4c50      	ldr	r4, [pc, #320]	; (d00470dc <Render3D+0x210>)
d0046f9c:	f894 3034 	ldrb.w	r3, [r4, #52]	; 0x34
d0046fa0:	3501      	adds	r5, #1
d0046fa2:	8c60      	ldrh	r0, [r4, #34]	; 0x22
d0046fa4:	8c21      	ldrh	r1, [r4, #32]
d0046fa6:	6962      	ldr	r2, [r4, #20]
d0046fa8:	8ca7      	ldrh	r7, [r4, #36]	; 0x24
d0046faa:	9305      	str	r3, [sp, #20]
d0046fac:	9704      	str	r7, [sp, #16]
d0046fae:	9003      	str	r0, [sp, #12]
d0046fb0:	9102      	str	r1, [sp, #8]
d0046fb2:	9201      	str	r2, [sp, #4]
d0046fb4:	6923      	ldr	r3, [r4, #16]
d0046fb6:	9300      	str	r3, [sp, #0]
d0046fb8:	edd4 1a07 	vldr	s3, [r4, #28]
d0046fbc:	ed94 1a0c 	vldr	s2, [r4, #48]	; 0x30
d0046fc0:	edd4 0a0b 	vldr	s1, [r4, #44]	; 0x2c
d0046fc4:	ed94 0a0a 	vldr	s0, [r4, #40]	; 0x28
d0046fc8:	e9d4 2302 	ldrd	r2, r3, [r4, #8]
d0046fcc:	e9d4 0100 	ldrd	r0, r1, [r4]
d0046fd0:	f7fa f92a 	bl	d0041228 <fillTriangleFlat>
d0046fd4:	6833      	ldr	r3, [r6, #0]
d0046fd6:	3440      	adds	r4, #64	; 0x40
d0046fd8:	42ab      	cmp	r3, r5
d0046fda:	dcdf      	bgt.n	d0046f9c <Render3D+0xd0>
d0046fdc:	b009      	add	sp, #36	; 0x24
d0046fde:	ecbd 8b02 	vpop	{d8}
d0046fe2:	bdf0      	pop	{r4, r5, r6, r7, pc}
d0046fe4:	4b40      	ldr	r3, [pc, #256]	; (d00470e8 <Render3D+0x21c>)
d0046fe6:	681d      	ldr	r5, [r3, #0]
d0046fe8:	6833      	ldr	r3, [r6, #0]
d0046fea:	2d00      	cmp	r5, #0
d0046fec:	d14a      	bne.n	d0047084 <Render3D+0x1b8>
d0046fee:	2b00      	cmp	r3, #0
d0046ff0:	ddc7      	ble.n	d0046f82 <Render3D+0xb6>
d0046ff2:	4c3a      	ldr	r4, [pc, #232]	; (d00470dc <Render3D+0x210>)
d0046ff4:	f894 3034 	ldrb.w	r3, [r4, #52]	; 0x34
d0046ff8:	06da      	lsls	r2, r3, #27
d0046ffa:	d524      	bpl.n	d0047046 <Render3D+0x17a>
d0046ffc:	f894 2036 	ldrb.w	r2, [r4, #54]	; 0x36
d0047000:	3501      	adds	r5, #1
d0047002:	8c60      	ldrh	r0, [r4, #34]	; 0x22
d0047004:	8c21      	ldrh	r1, [r4, #32]
d0047006:	8ca7      	ldrh	r7, [r4, #36]	; 0x24
d0047008:	9305      	str	r3, [sp, #20]
d004700a:	9206      	str	r2, [sp, #24]
d004700c:	6923      	ldr	r3, [r4, #16]
d004700e:	9704      	str	r7, [sp, #16]
d0047010:	9003      	str	r0, [sp, #12]
d0047012:	9102      	str	r1, [sp, #8]
d0047014:	6962      	ldr	r2, [r4, #20]
d0047016:	9300      	str	r3, [sp, #0]
d0047018:	9201      	str	r2, [sp, #4]
d004701a:	edd4 1a07 	vldr	s3, [r4, #28]
d004701e:	ed94 1a0c 	vldr	s2, [r4, #48]	; 0x30
d0047022:	edd4 0a0b 	vldr	s1, [r4, #44]	; 0x2c
d0047026:	ed94 0a0a 	vldr	s0, [r4, #40]	; 0x28
d004702a:	e9d4 2302 	ldrd	r2, r3, [r4, #8]
d004702e:	e9d4 0100 	ldrd	r0, r1, [r4]
d0047032:	f7fb f9c5 	bl	d00423c0 <fillTriangleDitherBayerT>
d0047036:	6833      	ldr	r3, [r6, #0]
d0047038:	3440      	adds	r4, #64	; 0x40
d004703a:	429d      	cmp	r5, r3
d004703c:	daa1      	bge.n	d0046f82 <Render3D+0xb6>
d004703e:	f894 3034 	ldrb.w	r3, [r4, #52]	; 0x34
d0047042:	06da      	lsls	r2, r3, #27
d0047044:	d4da      	bmi.n	d0046ffc <Render3D+0x130>
d0047046:	8c60      	ldrh	r0, [r4, #34]	; 0x22
d0047048:	3501      	adds	r5, #1
d004704a:	8c21      	ldrh	r1, [r4, #32]
d004704c:	6962      	ldr	r2, [r4, #20]
d004704e:	8ca7      	ldrh	r7, [r4, #36]	; 0x24
d0047050:	9305      	str	r3, [sp, #20]
d0047052:	6923      	ldr	r3, [r4, #16]
d0047054:	9704      	str	r7, [sp, #16]
d0047056:	9003      	str	r0, [sp, #12]
d0047058:	9102      	str	r1, [sp, #8]
d004705a:	9201      	str	r2, [sp, #4]
d004705c:	9300      	str	r3, [sp, #0]
d004705e:	edd4 1a07 	vldr	s3, [r4, #28]
d0047062:	ed94 1a0c 	vldr	s2, [r4, #48]	; 0x30
d0047066:	edd4 0a0b 	vldr	s1, [r4, #44]	; 0x2c
d004706a:	ed94 0a0a 	vldr	s0, [r4, #40]	; 0x28
d004706e:	e9d4 2302 	ldrd	r2, r3, [r4, #8]
d0047072:	e9d4 0100 	ldrd	r0, r1, [r4]
d0047076:	f7fa fce5 	bl	d0041a44 <fillTriangleDitherBayer>
d004707a:	6833      	ldr	r3, [r6, #0]
d004707c:	3440      	adds	r4, #64	; 0x40
d004707e:	42ab      	cmp	r3, r5
d0047080:	dcb8      	bgt.n	d0046ff4 <Render3D+0x128>
d0047082:	e77e      	b.n	d0046f82 <Render3D+0xb6>
d0047084:	2b00      	cmp	r3, #0
d0047086:	f77f af7c 	ble.w	d0046f82 <Render3D+0xb6>
d004708a:	4c14      	ldr	r4, [pc, #80]	; (d00470dc <Render3D+0x210>)
d004708c:	f894 3034 	ldrb.w	r3, [r4, #52]	; 0x34
d0047090:	3701      	adds	r7, #1
d0047092:	8c60      	ldrh	r0, [r4, #34]	; 0x22
d0047094:	8c21      	ldrh	r1, [r4, #32]
d0047096:	6962      	ldr	r2, [r4, #20]
d0047098:	8ca5      	ldrh	r5, [r4, #36]	; 0x24
d004709a:	9305      	str	r3, [sp, #20]
d004709c:	6923      	ldr	r3, [r4, #16]
d004709e:	9504      	str	r5, [sp, #16]
d00470a0:	9003      	str	r0, [sp, #12]
d00470a2:	9102      	str	r1, [sp, #8]
d00470a4:	9201      	str	r2, [sp, #4]
d00470a6:	9300      	str	r3, [sp, #0]
d00470a8:	edd4 1a07 	vldr	s3, [r4, #28]
d00470ac:	ed94 1a0c 	vldr	s2, [r4, #48]	; 0x30
d00470b0:	edd4 0a0b 	vldr	s1, [r4, #44]	; 0x2c
d00470b4:	ed94 0a0a 	vldr	s0, [r4, #40]	; 0x28
d00470b8:	e9d4 2302 	ldrd	r2, r3, [r4, #8]
d00470bc:	e9d4 0100 	ldrd	r0, r1, [r4]
d00470c0:	f7fb fe02 	bl	d0042cc8 <fillTriangleDitherBayer2Mode>
d00470c4:	6833      	ldr	r3, [r6, #0]
d00470c6:	3440      	adds	r4, #64	; 0x40
d00470c8:	42bb      	cmp	r3, r7
d00470ca:	dcdf      	bgt.n	d004708c <Render3D+0x1c0>
d00470cc:	b009      	add	sp, #36	; 0x24
d00470ce:	ecbd 8b02 	vpop	{d8}
d00470d2:	bdf0      	pop	{r4, r5, r6, r7, pc}
d00470d4:	d00a22c4 	.word	0xd00a22c4
d00470d8:	d01222e4 	.word	0xd01222e4
d00470dc:	d00a22e0 	.word	0xd00a22e0
d00470e0:	3ca0a0a1 	.word	0x3ca0a0a1
d00470e4:	d00a22c0 	.word	0xd00a22c0
d00470e8:	d01222e0 	.word	0xd01222e0

d00470ec <loadMeshSB3D>:
d00470ec:	2800      	cmp	r0, #0
d00470ee:	d07c      	beq.n	d00471ea <loadMeshSB3D+0xfe>
d00470f0:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
d00470f4:	460d      	mov	r5, r1
d00470f6:	4601      	mov	r1, r0
d00470f8:	fab5 f085 	clz	r0, r5
d00470fc:	ed2d 8b02 	vpush	{d8}
d0047100:	0940      	lsrs	r0, r0, #5
d0047102:	b08c      	sub	sp, #48	; 0x30
d0047104:	2d00      	cmp	r5, #0
d0047106:	d06a      	beq.n	d00471de <loadMeshSB3D+0xf2>
d0047108:	4c6e      	ldr	r4, [pc, #440]	; (d00472c4 <loadMeshSB3D+0x1d8>)
d004710a:	2201      	movs	r2, #1
d004710c:	eeb0 8a40 	vmov.f32	s16, s0
d0047110:	7923      	ldrb	r3, [r4, #4]
d0047112:	7966      	ldrb	r6, [r4, #5]
d0047114:	ea43 2306 	orr.w	r3, r3, r6, lsl #8
d0047118:	79a6      	ldrb	r6, [r4, #6]
d004711a:	ea43 4306 	orr.w	r3, r3, r6, lsl #16
d004711e:	79e6      	ldrb	r6, [r4, #7]
d0047120:	ea43 6306 	orr.w	r3, r3, r6, lsl #24
d0047124:	681b      	ldr	r3, [r3, #0]
d0047126:	681b      	ldr	r3, [r3, #0]
d0047128:	4798      	blx	r3
d004712a:	2800      	cmp	r0, #0
d004712c:	d157      	bne.n	d00471de <loadMeshSB3D+0xf2>
d004712e:	f894 c004 	ldrb.w	ip, [r4, #4]
d0047132:	2204      	movs	r2, #4
d0047134:	7961      	ldrb	r1, [r4, #5]
d0047136:	ab02      	add	r3, sp, #8
d0047138:	79a7      	ldrb	r7, [r4, #6]
d004713a:	ea4c 2101 	orr.w	r1, ip, r1, lsl #8
d004713e:	79e6      	ldrb	r6, [r4, #7]
d0047140:	ea41 4707 	orr.w	r7, r1, r7, lsl #16
d0047144:	a903      	add	r1, sp, #12
d0047146:	ea47 6606 	orr.w	r6, r7, r6, lsl #24
d004714a:	6836      	ldr	r6, [r6, #0]
d004714c:	68b6      	ldr	r6, [r6, #8]
d004714e:	47b0      	blx	r6
d0047150:	2800      	cmp	r0, #0
d0047152:	d141      	bne.n	d00471d8 <loadMeshSB3D+0xec>
d0047154:	4b5c      	ldr	r3, [pc, #368]	; (d00472c8 <loadMeshSB3D+0x1dc>)
d0047156:	9a03      	ldr	r2, [sp, #12]
d0047158:	429a      	cmp	r2, r3
d004715a:	d13d      	bne.n	d00471d8 <loadMeshSB3D+0xec>
d004715c:	f894 c004 	ldrb.w	ip, [r4, #4]
d0047160:	ab02      	add	r3, sp, #8
d0047162:	7961      	ldrb	r1, [r4, #5]
d0047164:	2204      	movs	r2, #4
d0047166:	79a7      	ldrb	r7, [r4, #6]
d0047168:	ea4c 2101 	orr.w	r1, ip, r1, lsl #8
d004716c:	79e6      	ldrb	r6, [r4, #7]
d004716e:	ea41 4707 	orr.w	r7, r1, r7, lsl #16
d0047172:	a904      	add	r1, sp, #16
d0047174:	ea47 6606 	orr.w	r6, r7, r6, lsl #24
d0047178:	6836      	ldr	r6, [r6, #0]
d004717a:	68b6      	ldr	r6, [r6, #8]
d004717c:	47b0      	blx	r6
d004717e:	bb58      	cbnz	r0, d00471d8 <loadMeshSB3D+0xec>
d0047180:	9b04      	ldr	r3, [sp, #16]
d0047182:	3b02      	subs	r3, #2
d0047184:	2b01      	cmp	r3, #1
d0047186:	d827      	bhi.n	d00471d8 <loadMeshSB3D+0xec>
d0047188:	f894 c004 	ldrb.w	ip, [r4, #4]
d004718c:	ab02      	add	r3, sp, #8
d004718e:	7961      	ldrb	r1, [r4, #5]
d0047190:	2204      	movs	r2, #4
d0047192:	79a7      	ldrb	r7, [r4, #6]
d0047194:	ea4c 2101 	orr.w	r1, ip, r1, lsl #8
d0047198:	79e6      	ldrb	r6, [r4, #7]
d004719a:	ea41 4707 	orr.w	r7, r1, r7, lsl #16
d004719e:	a905      	add	r1, sp, #20
d00471a0:	ea47 6606 	orr.w	r6, r7, r6, lsl #24
d00471a4:	6836      	ldr	r6, [r6, #0]
d00471a6:	68b6      	ldr	r6, [r6, #8]
d00471a8:	47b0      	blx	r6
d00471aa:	b9a8      	cbnz	r0, d00471d8 <loadMeshSB3D+0xec>
d00471ac:	f894 c004 	ldrb.w	ip, [r4, #4]
d00471b0:	ab02      	add	r3, sp, #8
d00471b2:	7961      	ldrb	r1, [r4, #5]
d00471b4:	2204      	movs	r2, #4
d00471b6:	79a7      	ldrb	r7, [r4, #6]
d00471b8:	ea4c 2101 	orr.w	r1, ip, r1, lsl #8
d00471bc:	79e6      	ldrb	r6, [r4, #7]
d00471be:	ea41 4707 	orr.w	r7, r1, r7, lsl #16
d00471c2:	a906      	add	r1, sp, #24
d00471c4:	ea47 6606 	orr.w	r6, r7, r6, lsl #24
d00471c8:	6836      	ldr	r6, [r6, #0]
d00471ca:	68b6      	ldr	r6, [r6, #8]
d00471cc:	47b0      	blx	r6
d00471ce:	b918      	cbnz	r0, d00471d8 <loadMeshSB3D+0xec>
d00471d0:	9b05      	ldr	r3, [sp, #20]
d00471d2:	b10b      	cbz	r3, d00471d8 <loadMeshSB3D+0xec>
d00471d4:	9e06      	ldr	r6, [sp, #24]
d00471d6:	b956      	cbnz	r6, d00471ee <loadMeshSB3D+0x102>
d00471d8:	2000      	movs	r0, #0
d00471da:	f000 f9b9 	bl	d0047550 <fclose>
d00471de:	2000      	movs	r0, #0
d00471e0:	b00c      	add	sp, #48	; 0x30
d00471e2:	ecbd 8b02 	vpop	{d8}
d00471e6:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
d00471ea:	2000      	movs	r0, #0
d00471ec:	4770      	bx	lr
d00471ee:	eb03 0043 	add.w	r0, r3, r3, lsl #1
d00471f2:	2700      	movs	r7, #0
d00471f4:	606b      	str	r3, [r5, #4]
d00471f6:	616e      	str	r6, [r5, #20]
d00471f8:	0080      	lsls	r0, r0, #2
d00471fa:	60ef      	str	r7, [r5, #12]
d00471fc:	f000 fb6c 	bl	d00478d8 <malloc>
d0047200:	4603      	mov	r3, r0
d0047202:	0130      	lsls	r0, r6, #4
d0047204:	461e      	mov	r6, r3
d0047206:	602b      	str	r3, [r5, #0]
d0047208:	f000 fb66 	bl	d00478d8 <malloc>
d004720c:	60af      	str	r7, [r5, #8]
d004720e:	6128      	str	r0, [r5, #16]
d0047210:	2e00      	cmp	r6, #0
d0047212:	f000 8119 	beq.w	d0047448 <loadMeshSB3D+0x35c>
d0047216:	2800      	cmp	r0, #0
d0047218:	f000 8109 	beq.w	d004742e <loadMeshSB3D+0x342>
d004721c:	46b8      	mov	r8, r7
d004721e:	e017      	b.n	d0047250 <loadMeshSB3D+0x164>
d0047220:	eddd 6a09 	vldr	s13, [sp, #36]	; 0x24
d0047224:	ed9d 7a0a 	vldr	s14, [sp, #40]	; 0x28
d0047228:	eddd 7a0b 	vldr	s15, [sp, #44]	; 0x2c
d004722c:	ee66 6a88 	vmul.f32	s13, s13, s16
d0047230:	682b      	ldr	r3, [r5, #0]
d0047232:	ee27 7a08 	vmul.f32	s14, s14, s16
d0047236:	9905      	ldr	r1, [sp, #20]
d0047238:	ee67 7a88 	vmul.f32	s15, s15, s16
d004723c:	eb03 0382 	add.w	r3, r3, r2, lsl #2
d0047240:	4541      	cmp	r1, r8
d0047242:	edc3 6a00 	vstr	s13, [r3]
d0047246:	ed83 7a01 	vstr	s14, [r3, #4]
d004724a:	edc3 7a02 	vstr	s15, [r3, #8]
d004724e:	d931      	bls.n	d00472b4 <loadMeshSB3D+0x1c8>
d0047250:	f894 c004 	ldrb.w	ip, [r4, #4]
d0047254:	220c      	movs	r2, #12
d0047256:	7960      	ldrb	r0, [r4, #5]
d0047258:	ab02      	add	r3, sp, #8
d004725a:	79a7      	ldrb	r7, [r4, #6]
d004725c:	a909      	add	r1, sp, #36	; 0x24
d004725e:	ea4c 2000 	orr.w	r0, ip, r0, lsl #8
d0047262:	79e6      	ldrb	r6, [r4, #7]
d0047264:	ea40 4707 	orr.w	r7, r0, r7, lsl #16
d0047268:	2000      	movs	r0, #0
d004726a:	ea47 6606 	orr.w	r6, r7, r6, lsl #24
d004726e:	6836      	ldr	r6, [r6, #0]
d0047270:	68b6      	ldr	r6, [r6, #8]
d0047272:	47b0      	blx	r6
d0047274:	eb08 0248 	add.w	r2, r8, r8, lsl #1
d0047278:	f108 0801 	add.w	r8, r8, #1
d004727c:	2800      	cmp	r0, #0
d004727e:	d0cf      	beq.n	d0047220 <loadMeshSB3D+0x134>
d0047280:	6828      	ldr	r0, [r5, #0]
d0047282:	b108      	cbz	r0, d0047288 <loadMeshSB3D+0x19c>
d0047284:	f000 fb30 	bl	d00478e8 <free>
d0047288:	6928      	ldr	r0, [r5, #16]
d004728a:	b108      	cbz	r0, d0047290 <loadMeshSB3D+0x1a4>
d004728c:	f000 fb2c 	bl	d00478e8 <free>
d0047290:	68a8      	ldr	r0, [r5, #8]
d0047292:	b108      	cbz	r0, d0047298 <loadMeshSB3D+0x1ac>
d0047294:	f000 fb28 	bl	d00478e8 <free>
d0047298:	2400      	movs	r4, #0
d004729a:	2300      	movs	r3, #0
d004729c:	4620      	mov	r0, r4
d004729e:	602c      	str	r4, [r5, #0]
d00472a0:	612c      	str	r4, [r5, #16]
d00472a2:	60ac      	str	r4, [r5, #8]
d00472a4:	606c      	str	r4, [r5, #4]
d00472a6:	616c      	str	r4, [r5, #20]
d00472a8:	60ec      	str	r4, [r5, #12]
d00472aa:	61ab      	str	r3, [r5, #24]
d00472ac:	f000 f950 	bl	d0047550 <fclose>
d00472b0:	4620      	mov	r0, r4
d00472b2:	e795      	b.n	d00471e0 <loadMeshSB3D+0xf4>
d00472b4:	9b06      	ldr	r3, [sp, #24]
d00472b6:	2b00      	cmp	r3, #0
d00472b8:	f000 80ac 	beq.w	d0047414 <loadMeshSB3D+0x328>
d00472bc:	4606      	mov	r6, r0
d00472be:	4680      	mov	r8, r0
d00472c0:	e090      	b.n	d00473e4 <loadMeshSB3D+0x2f8>
d00472c2:	bf00      	nop
d00472c4:	2001f000 	.word	0x2001f000
d00472c8:	44334253 	.word	0x44334253
d00472cc:	7921      	ldrb	r1, [r4, #4]
d00472ce:	ab02      	add	r3, sp, #8
d00472d0:	7967      	ldrb	r7, [r4, #5]
d00472d2:	2204      	movs	r2, #4
d00472d4:	f894 c006 	ldrb.w	ip, [r4, #6]
d00472d8:	ea41 2107 	orr.w	r1, r1, r7, lsl #8
d00472dc:	79e7      	ldrb	r7, [r4, #7]
d00472de:	ea41 4c0c 	orr.w	ip, r1, ip, lsl #16
d00472e2:	a908      	add	r1, sp, #32
d00472e4:	ea4c 6707 	orr.w	r7, ip, r7, lsl #24
d00472e8:	683f      	ldr	r7, [r7, #0]
d00472ea:	68bf      	ldr	r7, [r7, #8]
d00472ec:	47b8      	blx	r7
d00472ee:	2800      	cmp	r0, #0
d00472f0:	d1c6      	bne.n	d0047280 <loadMeshSB3D+0x194>
d00472f2:	7921      	ldrb	r1, [r4, #4]
d00472f4:	ab02      	add	r3, sp, #8
d00472f6:	7967      	ldrb	r7, [r4, #5]
d00472f8:	2204      	movs	r2, #4
d00472fa:	f894 c006 	ldrb.w	ip, [r4, #6]
d00472fe:	ea41 2107 	orr.w	r1, r1, r7, lsl #8
d0047302:	79e7      	ldrb	r7, [r4, #7]
d0047304:	ea41 4c0c 	orr.w	ip, r1, ip, lsl #16
d0047308:	a909      	add	r1, sp, #36	; 0x24
d004730a:	ea4c 6707 	orr.w	r7, ip, r7, lsl #24
d004730e:	683f      	ldr	r7, [r7, #0]
d0047310:	68bf      	ldr	r7, [r7, #8]
d0047312:	47b8      	blx	r7
d0047314:	2800      	cmp	r0, #0
d0047316:	d1b3      	bne.n	d0047280 <loadMeshSB3D+0x194>
d0047318:	7921      	ldrb	r1, [r4, #4]
d004731a:	ab02      	add	r3, sp, #8
d004731c:	7967      	ldrb	r7, [r4, #5]
d004731e:	2201      	movs	r2, #1
d0047320:	f894 c006 	ldrb.w	ip, [r4, #6]
d0047324:	ea41 2107 	orr.w	r1, r1, r7, lsl #8
d0047328:	79e7      	ldrb	r7, [r4, #7]
d004732a:	ea41 4c0c 	orr.w	ip, r1, ip, lsl #16
d004732e:	f10d 0105 	add.w	r1, sp, #5
d0047332:	ea4c 6707 	orr.w	r7, ip, r7, lsl #24
d0047336:	683f      	ldr	r7, [r7, #0]
d0047338:	68bf      	ldr	r7, [r7, #8]
d004733a:	47b8      	blx	r7
d004733c:	2800      	cmp	r0, #0
d004733e:	d19f      	bne.n	d0047280 <loadMeshSB3D+0x194>
d0047340:	7921      	ldrb	r1, [r4, #4]
d0047342:	ab02      	add	r3, sp, #8
d0047344:	7967      	ldrb	r7, [r4, #5]
d0047346:	2201      	movs	r2, #1
d0047348:	f894 c006 	ldrb.w	ip, [r4, #6]
d004734c:	ea41 2107 	orr.w	r1, r1, r7, lsl #8
d0047350:	79e7      	ldrb	r7, [r4, #7]
d0047352:	ea41 4c0c 	orr.w	ip, r1, ip, lsl #16
d0047356:	f10d 0106 	add.w	r1, sp, #6
d004735a:	ea4c 6707 	orr.w	r7, ip, r7, lsl #24
d004735e:	683f      	ldr	r7, [r7, #0]
d0047360:	68bf      	ldr	r7, [r7, #8]
d0047362:	47b8      	blx	r7
d0047364:	2800      	cmp	r0, #0
d0047366:	d18b      	bne.n	d0047280 <loadMeshSB3D+0x194>
d0047368:	9b04      	ldr	r3, [sp, #16]
d004736a:	2b02      	cmp	r3, #2
d004736c:	d914      	bls.n	d0047398 <loadMeshSB3D+0x2ac>
d004736e:	7921      	ldrb	r1, [r4, #4]
d0047370:	ab02      	add	r3, sp, #8
d0047372:	7967      	ldrb	r7, [r4, #5]
d0047374:	2201      	movs	r2, #1
d0047376:	f894 c006 	ldrb.w	ip, [r4, #6]
d004737a:	ea41 2107 	orr.w	r1, r1, r7, lsl #8
d004737e:	79e7      	ldrb	r7, [r4, #7]
d0047380:	ea41 4c0c 	orr.w	ip, r1, ip, lsl #16
d0047384:	f10d 0107 	add.w	r1, sp, #7
d0047388:	ea4c 6707 	orr.w	r7, ip, r7, lsl #24
d004738c:	683f      	ldr	r7, [r7, #0]
d004738e:	68bf      	ldr	r7, [r7, #8]
d0047390:	47b8      	blx	r7
d0047392:	2800      	cmp	r0, #0
d0047394:	f47f af74 	bne.w	d0047280 <loadMeshSB3D+0x194>
d0047398:	9a07      	ldr	r2, [sp, #28]
d004739a:	9b05      	ldr	r3, [sp, #20]
d004739c:	429a      	cmp	r2, r3
d004739e:	f4bf af6f 	bcs.w	d0047280 <loadMeshSB3D+0x194>
d00473a2:	9908      	ldr	r1, [sp, #32]
d00473a4:	428b      	cmp	r3, r1
d00473a6:	f67f af6b 	bls.w	d0047280 <loadMeshSB3D+0x194>
d00473aa:	9809      	ldr	r0, [sp, #36]	; 0x24
d00473ac:	4283      	cmp	r3, r0
d00473ae:	f67f af67 	bls.w	d0047280 <loadMeshSB3D+0x194>
d00473b2:	692b      	ldr	r3, [r5, #16]
d00473b4:	ea4f 1c06 	mov.w	ip, r6, lsl #4
d00473b8:	9f06      	ldr	r7, [sp, #24]
d00473ba:	f843 200c 	str.w	r2, [r3, ip]
d00473be:	eb03 1306 	add.w	r3, r3, r6, lsl #4
d00473c2:	f89d 2005 	ldrb.w	r2, [sp, #5]
d00473c6:	3601      	adds	r6, #1
d00473c8:	f89d c006 	ldrb.w	ip, [sp, #6]
d00473cc:	f002 020f 	and.w	r2, r2, #15
d00473d0:	6059      	str	r1, [r3, #4]
d00473d2:	42b7      	cmp	r7, r6
d00473d4:	f89d 1007 	ldrb.w	r1, [sp, #7]
d00473d8:	6098      	str	r0, [r3, #8]
d00473da:	731a      	strb	r2, [r3, #12]
d00473dc:	f883 c00d 	strb.w	ip, [r3, #13]
d00473e0:	7399      	strb	r1, [r3, #14]
d00473e2:	d917      	bls.n	d0047414 <loadMeshSB3D+0x328>
d00473e4:	7920      	ldrb	r0, [r4, #4]
d00473e6:	ab02      	add	r3, sp, #8
d00473e8:	7967      	ldrb	r7, [r4, #5]
d00473ea:	2204      	movs	r2, #4
d00473ec:	f894 c006 	ldrb.w	ip, [r4, #6]
d00473f0:	a907      	add	r1, sp, #28
d00473f2:	ea40 2007 	orr.w	r0, r0, r7, lsl #8
d00473f6:	79e7      	ldrb	r7, [r4, #7]
d00473f8:	f88d 8007 	strb.w	r8, [sp, #7]
d00473fc:	ea40 4c0c 	orr.w	ip, r0, ip, lsl #16
d0047400:	2000      	movs	r0, #0
d0047402:	ea4c 6707 	orr.w	r7, ip, r7, lsl #24
d0047406:	683f      	ldr	r7, [r7, #0]
d0047408:	68bf      	ldr	r7, [r7, #8]
d004740a:	47b8      	blx	r7
d004740c:	2800      	cmp	r0, #0
d004740e:	f43f af5d 	beq.w	d00472cc <loadMeshSB3D+0x1e0>
d0047412:	e735      	b.n	d0047280 <loadMeshSB3D+0x194>
d0047414:	2000      	movs	r0, #0
d0047416:	f000 f89b 	bl	d0047550 <fclose>
d004741a:	4628      	mov	r0, r5
d004741c:	f7fd fb04 	bl	d0044a28 <meshComputeBoundsRadius>
d0047420:	4628      	mov	r0, r5
d0047422:	ed85 0a06 	vstr	s0, [r5, #24]
d0047426:	f000 f815 	bl	d0047454 <meshSetDefaultMaterial>
d004742a:	2001      	movs	r0, #1
d004742c:	e6d8      	b.n	d00471e0 <loadMeshSB3D+0xf4>
d004742e:	4630      	mov	r0, r6
d0047430:	f000 fa5a 	bl	d00478e8 <free>
d0047434:	2400      	movs	r4, #0
d0047436:	4620      	mov	r0, r4
d0047438:	602c      	str	r4, [r5, #0]
d004743a:	612c      	str	r4, [r5, #16]
d004743c:	606c      	str	r4, [r5, #4]
d004743e:	616c      	str	r4, [r5, #20]
d0047440:	f000 f886 	bl	d0047550 <fclose>
d0047444:	4620      	mov	r0, r4
d0047446:	e6cb      	b.n	d00471e0 <loadMeshSB3D+0xf4>
d0047448:	2800      	cmp	r0, #0
d004744a:	d0f3      	beq.n	d0047434 <loadMeshSB3D+0x348>
d004744c:	f000 fa4c 	bl	d00478e8 <free>
d0047450:	e7f0      	b.n	d0047434 <loadMeshSB3D+0x348>
d0047452:	bf00      	nop

d0047454 <meshSetDefaultMaterial>:
d0047454:	b148      	cbz	r0, d004746a <meshSetDefaultMaterial+0x16>
d0047456:	2300      	movs	r3, #0
d0047458:	f04f 517e 	mov.w	r1, #1065353216	; 0x3f800000
d004745c:	f04f 4282 	mov.w	r2, #1090519040	; 0x41000000
d0047460:	6203      	str	r3, [r0, #32]
d0047462:	6241      	str	r1, [r0, #36]	; 0x24
d0047464:	62c2      	str	r2, [r0, #44]	; 0x2c
d0047466:	6303      	str	r3, [r0, #48]	; 0x30
d0047468:	6283      	str	r3, [r0, #40]	; 0x28
d004746a:	4770      	bx	lr

d004746c <__errno>:
d004746c:	4b01      	ldr	r3, [pc, #4]	; (d0047474 <__errno+0x8>)
d004746e:	6818      	ldr	r0, [r3, #0]
d0047470:	4770      	bx	lr
d0047472:	bf00      	nop
d0047474:	d0048fe4 	.word	0xd0048fe4

d0047478 <_fclose_r>:
d0047478:	b570      	push	{r4, r5, r6, lr}
d004747a:	4605      	mov	r5, r0
d004747c:	460c      	mov	r4, r1
d004747e:	b911      	cbnz	r1, d0047486 <_fclose_r+0xe>
d0047480:	2600      	movs	r6, #0
d0047482:	4630      	mov	r0, r6
d0047484:	bd70      	pop	{r4, r5, r6, pc}
d0047486:	b118      	cbz	r0, d0047490 <_fclose_r+0x18>
d0047488:	6983      	ldr	r3, [r0, #24]
d004748a:	b90b      	cbnz	r3, d0047490 <_fclose_r+0x18>
d004748c:	f000 f982 	bl	d0047794 <__sinit>
d0047490:	4b2c      	ldr	r3, [pc, #176]	; (d0047544 <_fclose_r+0xcc>)
d0047492:	429c      	cmp	r4, r3
d0047494:	d114      	bne.n	d00474c0 <_fclose_r+0x48>
d0047496:	686c      	ldr	r4, [r5, #4]
d0047498:	6e63      	ldr	r3, [r4, #100]	; 0x64
d004749a:	07d8      	lsls	r0, r3, #31
d004749c:	d405      	bmi.n	d00474aa <_fclose_r+0x32>
d004749e:	89a3      	ldrh	r3, [r4, #12]
d00474a0:	0599      	lsls	r1, r3, #22
d00474a2:	d402      	bmi.n	d00474aa <_fclose_r+0x32>
d00474a4:	6da0      	ldr	r0, [r4, #88]	; 0x58
d00474a6:	f000 fa14 	bl	d00478d2 <__retarget_lock_acquire_recursive>
d00474aa:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
d00474ae:	b98b      	cbnz	r3, d00474d4 <_fclose_r+0x5c>
d00474b0:	6e66      	ldr	r6, [r4, #100]	; 0x64
d00474b2:	f016 0601 	ands.w	r6, r6, #1
d00474b6:	d1e3      	bne.n	d0047480 <_fclose_r+0x8>
d00474b8:	6da0      	ldr	r0, [r4, #88]	; 0x58
d00474ba:	f000 fa0b 	bl	d00478d4 <__retarget_lock_release_recursive>
d00474be:	e7e0      	b.n	d0047482 <_fclose_r+0xa>
d00474c0:	4b21      	ldr	r3, [pc, #132]	; (d0047548 <_fclose_r+0xd0>)
d00474c2:	429c      	cmp	r4, r3
d00474c4:	d101      	bne.n	d00474ca <_fclose_r+0x52>
d00474c6:	68ac      	ldr	r4, [r5, #8]
d00474c8:	e7e6      	b.n	d0047498 <_fclose_r+0x20>
d00474ca:	4b20      	ldr	r3, [pc, #128]	; (d004754c <_fclose_r+0xd4>)
d00474cc:	429c      	cmp	r4, r3
d00474ce:	bf08      	it	eq
d00474d0:	68ec      	ldreq	r4, [r5, #12]
d00474d2:	e7e1      	b.n	d0047498 <_fclose_r+0x20>
d00474d4:	4621      	mov	r1, r4
d00474d6:	4628      	mov	r0, r5
d00474d8:	f000 f842 	bl	d0047560 <__sflush_r>
d00474dc:	6b23      	ldr	r3, [r4, #48]	; 0x30
d00474de:	4606      	mov	r6, r0
d00474e0:	b133      	cbz	r3, d00474f0 <_fclose_r+0x78>
d00474e2:	6a21      	ldr	r1, [r4, #32]
d00474e4:	4628      	mov	r0, r5
d00474e6:	4798      	blx	r3
d00474e8:	2800      	cmp	r0, #0
d00474ea:	bfb8      	it	lt
d00474ec:	f04f 36ff 	movlt.w	r6, #4294967295	; 0xffffffff
d00474f0:	89a3      	ldrh	r3, [r4, #12]
d00474f2:	061a      	lsls	r2, r3, #24
d00474f4:	d503      	bpl.n	d00474fe <_fclose_r+0x86>
d00474f6:	6921      	ldr	r1, [r4, #16]
d00474f8:	4628      	mov	r0, r5
d00474fa:	f000 fa21 	bl	d0047940 <_free_r>
d00474fe:	6b61      	ldr	r1, [r4, #52]	; 0x34
d0047500:	b141      	cbz	r1, d0047514 <_fclose_r+0x9c>
d0047502:	f104 0344 	add.w	r3, r4, #68	; 0x44
d0047506:	4299      	cmp	r1, r3
d0047508:	d002      	beq.n	d0047510 <_fclose_r+0x98>
d004750a:	4628      	mov	r0, r5
d004750c:	f000 fa18 	bl	d0047940 <_free_r>
d0047510:	2300      	movs	r3, #0
d0047512:	6363      	str	r3, [r4, #52]	; 0x34
d0047514:	6ca1      	ldr	r1, [r4, #72]	; 0x48
d0047516:	b121      	cbz	r1, d0047522 <_fclose_r+0xaa>
d0047518:	4628      	mov	r0, r5
d004751a:	f000 fa11 	bl	d0047940 <_free_r>
d004751e:	2300      	movs	r3, #0
d0047520:	64a3      	str	r3, [r4, #72]	; 0x48
d0047522:	f000 f91f 	bl	d0047764 <__sfp_lock_acquire>
d0047526:	2300      	movs	r3, #0
d0047528:	81a3      	strh	r3, [r4, #12]
d004752a:	6e63      	ldr	r3, [r4, #100]	; 0x64
d004752c:	07db      	lsls	r3, r3, #31
d004752e:	d402      	bmi.n	d0047536 <_fclose_r+0xbe>
d0047530:	6da0      	ldr	r0, [r4, #88]	; 0x58
d0047532:	f000 f9cf 	bl	d00478d4 <__retarget_lock_release_recursive>
d0047536:	6da0      	ldr	r0, [r4, #88]	; 0x58
d0047538:	f000 f9ca 	bl	d00478d0 <__retarget_lock_close_recursive>
d004753c:	f000 f918 	bl	d0047770 <__sfp_lock_release>
d0047540:	e79f      	b.n	d0047482 <_fclose_r+0xa>
d0047542:	bf00      	nop
d0047544:	d00487e0 	.word	0xd00487e0
d0047548:	d0048800 	.word	0xd0048800
d004754c:	d00487c0 	.word	0xd00487c0

d0047550 <fclose>:
d0047550:	4b02      	ldr	r3, [pc, #8]	; (d004755c <fclose+0xc>)
d0047552:	4601      	mov	r1, r0
d0047554:	6818      	ldr	r0, [r3, #0]
d0047556:	f7ff bf8f 	b.w	d0047478 <_fclose_r>
d004755a:	bf00      	nop
d004755c:	d0048fe4 	.word	0xd0048fe4

d0047560 <__sflush_r>:
d0047560:	898a      	ldrh	r2, [r1, #12]
d0047562:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
d0047566:	4605      	mov	r5, r0
d0047568:	0710      	lsls	r0, r2, #28
d004756a:	460c      	mov	r4, r1
d004756c:	d458      	bmi.n	d0047620 <__sflush_r+0xc0>
d004756e:	684b      	ldr	r3, [r1, #4]
d0047570:	2b00      	cmp	r3, #0
d0047572:	dc05      	bgt.n	d0047580 <__sflush_r+0x20>
d0047574:	6c0b      	ldr	r3, [r1, #64]	; 0x40
d0047576:	2b00      	cmp	r3, #0
d0047578:	dc02      	bgt.n	d0047580 <__sflush_r+0x20>
d004757a:	2000      	movs	r0, #0
d004757c:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
d0047580:	6ae6      	ldr	r6, [r4, #44]	; 0x2c
d0047582:	2e00      	cmp	r6, #0
d0047584:	d0f9      	beq.n	d004757a <__sflush_r+0x1a>
d0047586:	2300      	movs	r3, #0
d0047588:	f412 5280 	ands.w	r2, r2, #4096	; 0x1000
d004758c:	682f      	ldr	r7, [r5, #0]
d004758e:	602b      	str	r3, [r5, #0]
d0047590:	d032      	beq.n	d00475f8 <__sflush_r+0x98>
d0047592:	6d60      	ldr	r0, [r4, #84]	; 0x54
d0047594:	89a3      	ldrh	r3, [r4, #12]
d0047596:	075a      	lsls	r2, r3, #29
d0047598:	d505      	bpl.n	d00475a6 <__sflush_r+0x46>
d004759a:	6863      	ldr	r3, [r4, #4]
d004759c:	1ac0      	subs	r0, r0, r3
d004759e:	6b63      	ldr	r3, [r4, #52]	; 0x34
d00475a0:	b10b      	cbz	r3, d00475a6 <__sflush_r+0x46>
d00475a2:	6c23      	ldr	r3, [r4, #64]	; 0x40
d00475a4:	1ac0      	subs	r0, r0, r3
d00475a6:	2300      	movs	r3, #0
d00475a8:	4602      	mov	r2, r0
d00475aa:	6ae6      	ldr	r6, [r4, #44]	; 0x2c
d00475ac:	6a21      	ldr	r1, [r4, #32]
d00475ae:	4628      	mov	r0, r5
d00475b0:	47b0      	blx	r6
d00475b2:	1c43      	adds	r3, r0, #1
d00475b4:	89a3      	ldrh	r3, [r4, #12]
d00475b6:	d106      	bne.n	d00475c6 <__sflush_r+0x66>
d00475b8:	6829      	ldr	r1, [r5, #0]
d00475ba:	291d      	cmp	r1, #29
d00475bc:	d82c      	bhi.n	d0047618 <__sflush_r+0xb8>
d00475be:	4a2a      	ldr	r2, [pc, #168]	; (d0047668 <__sflush_r+0x108>)
d00475c0:	40ca      	lsrs	r2, r1
d00475c2:	07d6      	lsls	r6, r2, #31
d00475c4:	d528      	bpl.n	d0047618 <__sflush_r+0xb8>
d00475c6:	2200      	movs	r2, #0
d00475c8:	6062      	str	r2, [r4, #4]
d00475ca:	04d9      	lsls	r1, r3, #19
d00475cc:	6922      	ldr	r2, [r4, #16]
d00475ce:	6022      	str	r2, [r4, #0]
d00475d0:	d504      	bpl.n	d00475dc <__sflush_r+0x7c>
d00475d2:	1c42      	adds	r2, r0, #1
d00475d4:	d101      	bne.n	d00475da <__sflush_r+0x7a>
d00475d6:	682b      	ldr	r3, [r5, #0]
d00475d8:	b903      	cbnz	r3, d00475dc <__sflush_r+0x7c>
d00475da:	6560      	str	r0, [r4, #84]	; 0x54
d00475dc:	6b61      	ldr	r1, [r4, #52]	; 0x34
d00475de:	602f      	str	r7, [r5, #0]
d00475e0:	2900      	cmp	r1, #0
d00475e2:	d0ca      	beq.n	d004757a <__sflush_r+0x1a>
d00475e4:	f104 0344 	add.w	r3, r4, #68	; 0x44
d00475e8:	4299      	cmp	r1, r3
d00475ea:	d002      	beq.n	d00475f2 <__sflush_r+0x92>
d00475ec:	4628      	mov	r0, r5
d00475ee:	f000 f9a7 	bl	d0047940 <_free_r>
d00475f2:	2000      	movs	r0, #0
d00475f4:	6360      	str	r0, [r4, #52]	; 0x34
d00475f6:	e7c1      	b.n	d004757c <__sflush_r+0x1c>
d00475f8:	6a21      	ldr	r1, [r4, #32]
d00475fa:	2301      	movs	r3, #1
d00475fc:	4628      	mov	r0, r5
d00475fe:	47b0      	blx	r6
d0047600:	1c41      	adds	r1, r0, #1
d0047602:	d1c7      	bne.n	d0047594 <__sflush_r+0x34>
d0047604:	682b      	ldr	r3, [r5, #0]
d0047606:	2b00      	cmp	r3, #0
d0047608:	d0c4      	beq.n	d0047594 <__sflush_r+0x34>
d004760a:	2b1d      	cmp	r3, #29
d004760c:	d001      	beq.n	d0047612 <__sflush_r+0xb2>
d004760e:	2b16      	cmp	r3, #22
d0047610:	d101      	bne.n	d0047616 <__sflush_r+0xb6>
d0047612:	602f      	str	r7, [r5, #0]
d0047614:	e7b1      	b.n	d004757a <__sflush_r+0x1a>
d0047616:	89a3      	ldrh	r3, [r4, #12]
d0047618:	f043 0340 	orr.w	r3, r3, #64	; 0x40
d004761c:	81a3      	strh	r3, [r4, #12]
d004761e:	e7ad      	b.n	d004757c <__sflush_r+0x1c>
d0047620:	690f      	ldr	r7, [r1, #16]
d0047622:	2f00      	cmp	r7, #0
d0047624:	d0a9      	beq.n	d004757a <__sflush_r+0x1a>
d0047626:	0793      	lsls	r3, r2, #30
d0047628:	680e      	ldr	r6, [r1, #0]
d004762a:	bf08      	it	eq
d004762c:	694b      	ldreq	r3, [r1, #20]
d004762e:	600f      	str	r7, [r1, #0]
d0047630:	bf18      	it	ne
d0047632:	2300      	movne	r3, #0
d0047634:	eba6 0807 	sub.w	r8, r6, r7
d0047638:	608b      	str	r3, [r1, #8]
d004763a:	f1b8 0f00 	cmp.w	r8, #0
d004763e:	dd9c      	ble.n	d004757a <__sflush_r+0x1a>
d0047640:	6a21      	ldr	r1, [r4, #32]
d0047642:	6aa6      	ldr	r6, [r4, #40]	; 0x28
d0047644:	4643      	mov	r3, r8
d0047646:	463a      	mov	r2, r7
d0047648:	4628      	mov	r0, r5
d004764a:	47b0      	blx	r6
d004764c:	2800      	cmp	r0, #0
d004764e:	dc06      	bgt.n	d004765e <__sflush_r+0xfe>
d0047650:	89a3      	ldrh	r3, [r4, #12]
d0047652:	f043 0340 	orr.w	r3, r3, #64	; 0x40
d0047656:	81a3      	strh	r3, [r4, #12]
d0047658:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d004765c:	e78e      	b.n	d004757c <__sflush_r+0x1c>
d004765e:	4407      	add	r7, r0
d0047660:	eba8 0800 	sub.w	r8, r8, r0
d0047664:	e7e9      	b.n	d004763a <__sflush_r+0xda>
d0047666:	bf00      	nop
d0047668:	20400001 	.word	0x20400001

d004766c <_fflush_r>:
d004766c:	b538      	push	{r3, r4, r5, lr}
d004766e:	690b      	ldr	r3, [r1, #16]
d0047670:	4605      	mov	r5, r0
d0047672:	460c      	mov	r4, r1
d0047674:	b913      	cbnz	r3, d004767c <_fflush_r+0x10>
d0047676:	2500      	movs	r5, #0
d0047678:	4628      	mov	r0, r5
d004767a:	bd38      	pop	{r3, r4, r5, pc}
d004767c:	b118      	cbz	r0, d0047686 <_fflush_r+0x1a>
d004767e:	6983      	ldr	r3, [r0, #24]
d0047680:	b90b      	cbnz	r3, d0047686 <_fflush_r+0x1a>
d0047682:	f000 f887 	bl	d0047794 <__sinit>
d0047686:	4b14      	ldr	r3, [pc, #80]	; (d00476d8 <_fflush_r+0x6c>)
d0047688:	429c      	cmp	r4, r3
d004768a:	d11b      	bne.n	d00476c4 <_fflush_r+0x58>
d004768c:	686c      	ldr	r4, [r5, #4]
d004768e:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
d0047692:	2b00      	cmp	r3, #0
d0047694:	d0ef      	beq.n	d0047676 <_fflush_r+0xa>
d0047696:	6e62      	ldr	r2, [r4, #100]	; 0x64
d0047698:	07d0      	lsls	r0, r2, #31
d004769a:	d404      	bmi.n	d00476a6 <_fflush_r+0x3a>
d004769c:	0599      	lsls	r1, r3, #22
d004769e:	d402      	bmi.n	d00476a6 <_fflush_r+0x3a>
d00476a0:	6da0      	ldr	r0, [r4, #88]	; 0x58
d00476a2:	f000 f916 	bl	d00478d2 <__retarget_lock_acquire_recursive>
d00476a6:	4628      	mov	r0, r5
d00476a8:	4621      	mov	r1, r4
d00476aa:	f7ff ff59 	bl	d0047560 <__sflush_r>
d00476ae:	6e63      	ldr	r3, [r4, #100]	; 0x64
d00476b0:	07da      	lsls	r2, r3, #31
d00476b2:	4605      	mov	r5, r0
d00476b4:	d4e0      	bmi.n	d0047678 <_fflush_r+0xc>
d00476b6:	89a3      	ldrh	r3, [r4, #12]
d00476b8:	059b      	lsls	r3, r3, #22
d00476ba:	d4dd      	bmi.n	d0047678 <_fflush_r+0xc>
d00476bc:	6da0      	ldr	r0, [r4, #88]	; 0x58
d00476be:	f000 f909 	bl	d00478d4 <__retarget_lock_release_recursive>
d00476c2:	e7d9      	b.n	d0047678 <_fflush_r+0xc>
d00476c4:	4b05      	ldr	r3, [pc, #20]	; (d00476dc <_fflush_r+0x70>)
d00476c6:	429c      	cmp	r4, r3
d00476c8:	d101      	bne.n	d00476ce <_fflush_r+0x62>
d00476ca:	68ac      	ldr	r4, [r5, #8]
d00476cc:	e7df      	b.n	d004768e <_fflush_r+0x22>
d00476ce:	4b04      	ldr	r3, [pc, #16]	; (d00476e0 <_fflush_r+0x74>)
d00476d0:	429c      	cmp	r4, r3
d00476d2:	bf08      	it	eq
d00476d4:	68ec      	ldreq	r4, [r5, #12]
d00476d6:	e7da      	b.n	d004768e <_fflush_r+0x22>
d00476d8:	d00487e0 	.word	0xd00487e0
d00476dc:	d0048800 	.word	0xd0048800
d00476e0:	d00487c0 	.word	0xd00487c0

d00476e4 <std>:
d00476e4:	2300      	movs	r3, #0
d00476e6:	b510      	push	{r4, lr}
d00476e8:	4604      	mov	r4, r0
d00476ea:	e9c0 3300 	strd	r3, r3, [r0]
d00476ee:	e9c0 3304 	strd	r3, r3, [r0, #16]
d00476f2:	6083      	str	r3, [r0, #8]
d00476f4:	8181      	strh	r1, [r0, #12]
d00476f6:	6643      	str	r3, [r0, #100]	; 0x64
d00476f8:	81c2      	strh	r2, [r0, #14]
d00476fa:	6183      	str	r3, [r0, #24]
d00476fc:	4619      	mov	r1, r3
d00476fe:	2208      	movs	r2, #8
d0047700:	305c      	adds	r0, #92	; 0x5c
d0047702:	f000 f915 	bl	d0047930 <memset>
d0047706:	4b05      	ldr	r3, [pc, #20]	; (d004771c <std+0x38>)
d0047708:	6263      	str	r3, [r4, #36]	; 0x24
d004770a:	4b05      	ldr	r3, [pc, #20]	; (d0047720 <std+0x3c>)
d004770c:	62a3      	str	r3, [r4, #40]	; 0x28
d004770e:	4b05      	ldr	r3, [pc, #20]	; (d0047724 <std+0x40>)
d0047710:	62e3      	str	r3, [r4, #44]	; 0x2c
d0047712:	4b05      	ldr	r3, [pc, #20]	; (d0047728 <std+0x44>)
d0047714:	6224      	str	r4, [r4, #32]
d0047716:	6323      	str	r3, [r4, #48]	; 0x30
d0047718:	bd10      	pop	{r4, pc}
d004771a:	bf00      	nop
d004771c:	d0047c31 	.word	0xd0047c31
d0047720:	d0047c53 	.word	0xd0047c53
d0047724:	d0047c8b 	.word	0xd0047c8b
d0047728:	d0047caf 	.word	0xd0047caf

d004772c <_cleanup_r>:
d004772c:	4901      	ldr	r1, [pc, #4]	; (d0047734 <_cleanup_r+0x8>)
d004772e:	f000 b8af 	b.w	d0047890 <_fwalk_reent>
d0047732:	bf00      	nop
d0047734:	d004766d 	.word	0xd004766d

d0047738 <__sfmoreglue>:
d0047738:	b570      	push	{r4, r5, r6, lr}
d004773a:	1e4a      	subs	r2, r1, #1
d004773c:	2568      	movs	r5, #104	; 0x68
d004773e:	4355      	muls	r5, r2
d0047740:	460e      	mov	r6, r1
d0047742:	f105 0174 	add.w	r1, r5, #116	; 0x74
d0047746:	f000 f94b 	bl	d00479e0 <_malloc_r>
d004774a:	4604      	mov	r4, r0
d004774c:	b140      	cbz	r0, d0047760 <__sfmoreglue+0x28>
d004774e:	2100      	movs	r1, #0
d0047750:	e9c0 1600 	strd	r1, r6, [r0]
d0047754:	300c      	adds	r0, #12
d0047756:	60a0      	str	r0, [r4, #8]
d0047758:	f105 0268 	add.w	r2, r5, #104	; 0x68
d004775c:	f000 f8e8 	bl	d0047930 <memset>
d0047760:	4620      	mov	r0, r4
d0047762:	bd70      	pop	{r4, r5, r6, pc}

d0047764 <__sfp_lock_acquire>:
d0047764:	4801      	ldr	r0, [pc, #4]	; (d004776c <__sfp_lock_acquire+0x8>)
d0047766:	f000 b8b4 	b.w	d00478d2 <__retarget_lock_acquire_recursive>
d004776a:	bf00      	nop
d004776c:	d01347c8 	.word	0xd01347c8

d0047770 <__sfp_lock_release>:
d0047770:	4801      	ldr	r0, [pc, #4]	; (d0047778 <__sfp_lock_release+0x8>)
d0047772:	f000 b8af 	b.w	d00478d4 <__retarget_lock_release_recursive>
d0047776:	bf00      	nop
d0047778:	d01347c8 	.word	0xd01347c8

d004777c <__sinit_lock_acquire>:
d004777c:	4801      	ldr	r0, [pc, #4]	; (d0047784 <__sinit_lock_acquire+0x8>)
d004777e:	f000 b8a8 	b.w	d00478d2 <__retarget_lock_acquire_recursive>
d0047782:	bf00      	nop
d0047784:	d01347c3 	.word	0xd01347c3

d0047788 <__sinit_lock_release>:
d0047788:	4801      	ldr	r0, [pc, #4]	; (d0047790 <__sinit_lock_release+0x8>)
d004778a:	f000 b8a3 	b.w	d00478d4 <__retarget_lock_release_recursive>
d004778e:	bf00      	nop
d0047790:	d01347c3 	.word	0xd01347c3

d0047794 <__sinit>:
d0047794:	b510      	push	{r4, lr}
d0047796:	4604      	mov	r4, r0
d0047798:	f7ff fff0 	bl	d004777c <__sinit_lock_acquire>
d004779c:	69a3      	ldr	r3, [r4, #24]
d004779e:	b11b      	cbz	r3, d00477a8 <__sinit+0x14>
d00477a0:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
d00477a4:	f7ff bff0 	b.w	d0047788 <__sinit_lock_release>
d00477a8:	e9c4 3312 	strd	r3, r3, [r4, #72]	; 0x48
d00477ac:	6523      	str	r3, [r4, #80]	; 0x50
d00477ae:	4b13      	ldr	r3, [pc, #76]	; (d00477fc <__sinit+0x68>)
d00477b0:	4a13      	ldr	r2, [pc, #76]	; (d0047800 <__sinit+0x6c>)
d00477b2:	681b      	ldr	r3, [r3, #0]
d00477b4:	62a2      	str	r2, [r4, #40]	; 0x28
d00477b6:	42a3      	cmp	r3, r4
d00477b8:	bf04      	itt	eq
d00477ba:	2301      	moveq	r3, #1
d00477bc:	61a3      	streq	r3, [r4, #24]
d00477be:	4620      	mov	r0, r4
d00477c0:	f000 f820 	bl	d0047804 <__sfp>
d00477c4:	6060      	str	r0, [r4, #4]
d00477c6:	4620      	mov	r0, r4
d00477c8:	f000 f81c 	bl	d0047804 <__sfp>
d00477cc:	60a0      	str	r0, [r4, #8]
d00477ce:	4620      	mov	r0, r4
d00477d0:	f000 f818 	bl	d0047804 <__sfp>
d00477d4:	2200      	movs	r2, #0
d00477d6:	60e0      	str	r0, [r4, #12]
d00477d8:	2104      	movs	r1, #4
d00477da:	6860      	ldr	r0, [r4, #4]
d00477dc:	f7ff ff82 	bl	d00476e4 <std>
d00477e0:	68a0      	ldr	r0, [r4, #8]
d00477e2:	2201      	movs	r2, #1
d00477e4:	2109      	movs	r1, #9
d00477e6:	f7ff ff7d 	bl	d00476e4 <std>
d00477ea:	68e0      	ldr	r0, [r4, #12]
d00477ec:	2202      	movs	r2, #2
d00477ee:	2112      	movs	r1, #18
d00477f0:	f7ff ff78 	bl	d00476e4 <std>
d00477f4:	2301      	movs	r3, #1
d00477f6:	61a3      	str	r3, [r4, #24]
d00477f8:	e7d2      	b.n	d00477a0 <__sinit+0xc>
d00477fa:	bf00      	nop
d00477fc:	d0048820 	.word	0xd0048820
d0047800:	d004772d 	.word	0xd004772d

d0047804 <__sfp>:
d0047804:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d0047806:	4607      	mov	r7, r0
d0047808:	f7ff ffac 	bl	d0047764 <__sfp_lock_acquire>
d004780c:	4b1e      	ldr	r3, [pc, #120]	; (d0047888 <__sfp+0x84>)
d004780e:	681e      	ldr	r6, [r3, #0]
d0047810:	69b3      	ldr	r3, [r6, #24]
d0047812:	b913      	cbnz	r3, d004781a <__sfp+0x16>
d0047814:	4630      	mov	r0, r6
d0047816:	f7ff ffbd 	bl	d0047794 <__sinit>
d004781a:	3648      	adds	r6, #72	; 0x48
d004781c:	e9d6 3401 	ldrd	r3, r4, [r6, #4]
d0047820:	3b01      	subs	r3, #1
d0047822:	d503      	bpl.n	d004782c <__sfp+0x28>
d0047824:	6833      	ldr	r3, [r6, #0]
d0047826:	b30b      	cbz	r3, d004786c <__sfp+0x68>
d0047828:	6836      	ldr	r6, [r6, #0]
d004782a:	e7f7      	b.n	d004781c <__sfp+0x18>
d004782c:	f9b4 500c 	ldrsh.w	r5, [r4, #12]
d0047830:	b9d5      	cbnz	r5, d0047868 <__sfp+0x64>
d0047832:	4b16      	ldr	r3, [pc, #88]	; (d004788c <__sfp+0x88>)
d0047834:	60e3      	str	r3, [r4, #12]
d0047836:	f104 0058 	add.w	r0, r4, #88	; 0x58
d004783a:	6665      	str	r5, [r4, #100]	; 0x64
d004783c:	f000 f847 	bl	d00478ce <__retarget_lock_init_recursive>
d0047840:	f7ff ff96 	bl	d0047770 <__sfp_lock_release>
d0047844:	e9c4 5501 	strd	r5, r5, [r4, #4]
d0047848:	e9c4 5504 	strd	r5, r5, [r4, #16]
d004784c:	6025      	str	r5, [r4, #0]
d004784e:	61a5      	str	r5, [r4, #24]
d0047850:	2208      	movs	r2, #8
d0047852:	4629      	mov	r1, r5
d0047854:	f104 005c 	add.w	r0, r4, #92	; 0x5c
d0047858:	f000 f86a 	bl	d0047930 <memset>
d004785c:	e9c4 550d 	strd	r5, r5, [r4, #52]	; 0x34
d0047860:	e9c4 5512 	strd	r5, r5, [r4, #72]	; 0x48
d0047864:	4620      	mov	r0, r4
d0047866:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d0047868:	3468      	adds	r4, #104	; 0x68
d004786a:	e7d9      	b.n	d0047820 <__sfp+0x1c>
d004786c:	2104      	movs	r1, #4
d004786e:	4638      	mov	r0, r7
d0047870:	f7ff ff62 	bl	d0047738 <__sfmoreglue>
d0047874:	4604      	mov	r4, r0
d0047876:	6030      	str	r0, [r6, #0]
d0047878:	2800      	cmp	r0, #0
d004787a:	d1d5      	bne.n	d0047828 <__sfp+0x24>
d004787c:	f7ff ff78 	bl	d0047770 <__sfp_lock_release>
d0047880:	230c      	movs	r3, #12
d0047882:	603b      	str	r3, [r7, #0]
d0047884:	e7ee      	b.n	d0047864 <__sfp+0x60>
d0047886:	bf00      	nop
d0047888:	d0048820 	.word	0xd0048820
d004788c:	ffff0001 	.word	0xffff0001

d0047890 <_fwalk_reent>:
d0047890:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
d0047894:	4606      	mov	r6, r0
d0047896:	4688      	mov	r8, r1
d0047898:	f100 0448 	add.w	r4, r0, #72	; 0x48
d004789c:	2700      	movs	r7, #0
d004789e:	e9d4 9501 	ldrd	r9, r5, [r4, #4]
d00478a2:	f1b9 0901 	subs.w	r9, r9, #1
d00478a6:	d505      	bpl.n	d00478b4 <_fwalk_reent+0x24>
d00478a8:	6824      	ldr	r4, [r4, #0]
d00478aa:	2c00      	cmp	r4, #0
d00478ac:	d1f7      	bne.n	d004789e <_fwalk_reent+0xe>
d00478ae:	4638      	mov	r0, r7
d00478b0:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
d00478b4:	89ab      	ldrh	r3, [r5, #12]
d00478b6:	2b01      	cmp	r3, #1
d00478b8:	d907      	bls.n	d00478ca <_fwalk_reent+0x3a>
d00478ba:	f9b5 300e 	ldrsh.w	r3, [r5, #14]
d00478be:	3301      	adds	r3, #1
d00478c0:	d003      	beq.n	d00478ca <_fwalk_reent+0x3a>
d00478c2:	4629      	mov	r1, r5
d00478c4:	4630      	mov	r0, r6
d00478c6:	47c0      	blx	r8
d00478c8:	4307      	orrs	r7, r0
d00478ca:	3568      	adds	r5, #104	; 0x68
d00478cc:	e7e9      	b.n	d00478a2 <_fwalk_reent+0x12>

d00478ce <__retarget_lock_init_recursive>:
d00478ce:	4770      	bx	lr

d00478d0 <__retarget_lock_close_recursive>:
d00478d0:	4770      	bx	lr

d00478d2 <__retarget_lock_acquire_recursive>:
d00478d2:	4770      	bx	lr

d00478d4 <__retarget_lock_release_recursive>:
d00478d4:	4770      	bx	lr
	...

d00478d8 <malloc>:
d00478d8:	4b02      	ldr	r3, [pc, #8]	; (d00478e4 <malloc+0xc>)
d00478da:	4601      	mov	r1, r0
d00478dc:	6818      	ldr	r0, [r3, #0]
d00478de:	f000 b87f 	b.w	d00479e0 <_malloc_r>
d00478e2:	bf00      	nop
d00478e4:	d0048fe4 	.word	0xd0048fe4

d00478e8 <free>:
d00478e8:	4b02      	ldr	r3, [pc, #8]	; (d00478f4 <free+0xc>)
d00478ea:	4601      	mov	r1, r0
d00478ec:	6818      	ldr	r0, [r3, #0]
d00478ee:	f000 b827 	b.w	d0047940 <_free_r>
d00478f2:	bf00      	nop
d00478f4:	d0048fe4 	.word	0xd0048fe4

d00478f8 <memcmp>:
d00478f8:	b530      	push	{r4, r5, lr}
d00478fa:	3901      	subs	r1, #1
d00478fc:	2400      	movs	r4, #0
d00478fe:	42a2      	cmp	r2, r4
d0047900:	d101      	bne.n	d0047906 <memcmp+0xe>
d0047902:	2000      	movs	r0, #0
d0047904:	e005      	b.n	d0047912 <memcmp+0x1a>
d0047906:	5d03      	ldrb	r3, [r0, r4]
d0047908:	3401      	adds	r4, #1
d004790a:	5d0d      	ldrb	r5, [r1, r4]
d004790c:	42ab      	cmp	r3, r5
d004790e:	d0f6      	beq.n	d00478fe <memcmp+0x6>
d0047910:	1b58      	subs	r0, r3, r5
d0047912:	bd30      	pop	{r4, r5, pc}

d0047914 <memcpy>:
d0047914:	440a      	add	r2, r1
d0047916:	4291      	cmp	r1, r2
d0047918:	f100 33ff 	add.w	r3, r0, #4294967295	; 0xffffffff
d004791c:	d100      	bne.n	d0047920 <memcpy+0xc>
d004791e:	4770      	bx	lr
d0047920:	b510      	push	{r4, lr}
d0047922:	f811 4b01 	ldrb.w	r4, [r1], #1
d0047926:	f803 4f01 	strb.w	r4, [r3, #1]!
d004792a:	4291      	cmp	r1, r2
d004792c:	d1f9      	bne.n	d0047922 <memcpy+0xe>
d004792e:	bd10      	pop	{r4, pc}

d0047930 <memset>:
d0047930:	4402      	add	r2, r0
d0047932:	4603      	mov	r3, r0
d0047934:	4293      	cmp	r3, r2
d0047936:	d100      	bne.n	d004793a <memset+0xa>
d0047938:	4770      	bx	lr
d004793a:	f803 1b01 	strb.w	r1, [r3], #1
d004793e:	e7f9      	b.n	d0047934 <memset+0x4>

d0047940 <_free_r>:
d0047940:	b537      	push	{r0, r1, r2, r4, r5, lr}
d0047942:	2900      	cmp	r1, #0
d0047944:	d048      	beq.n	d00479d8 <_free_r+0x98>
d0047946:	f851 3c04 	ldr.w	r3, [r1, #-4]
d004794a:	9001      	str	r0, [sp, #4]
d004794c:	2b00      	cmp	r3, #0
d004794e:	f1a1 0404 	sub.w	r4, r1, #4
d0047952:	bfb8      	it	lt
d0047954:	18e4      	addlt	r4, r4, r3
d0047956:	f000 f9f5 	bl	d0047d44 <__malloc_lock>
d004795a:	4a20      	ldr	r2, [pc, #128]	; (d00479dc <_free_r+0x9c>)
d004795c:	9801      	ldr	r0, [sp, #4]
d004795e:	6813      	ldr	r3, [r2, #0]
d0047960:	4615      	mov	r5, r2
d0047962:	b933      	cbnz	r3, d0047972 <_free_r+0x32>
d0047964:	6063      	str	r3, [r4, #4]
d0047966:	6014      	str	r4, [r2, #0]
d0047968:	b003      	add	sp, #12
d004796a:	e8bd 4030 	ldmia.w	sp!, {r4, r5, lr}
d004796e:	f000 b9ef 	b.w	d0047d50 <__malloc_unlock>
d0047972:	42a3      	cmp	r3, r4
d0047974:	d90b      	bls.n	d004798e <_free_r+0x4e>
d0047976:	6821      	ldr	r1, [r4, #0]
d0047978:	1862      	adds	r2, r4, r1
d004797a:	4293      	cmp	r3, r2
d004797c:	bf04      	itt	eq
d004797e:	681a      	ldreq	r2, [r3, #0]
d0047980:	685b      	ldreq	r3, [r3, #4]
d0047982:	6063      	str	r3, [r4, #4]
d0047984:	bf04      	itt	eq
d0047986:	1852      	addeq	r2, r2, r1
d0047988:	6022      	streq	r2, [r4, #0]
d004798a:	602c      	str	r4, [r5, #0]
d004798c:	e7ec      	b.n	d0047968 <_free_r+0x28>
d004798e:	461a      	mov	r2, r3
d0047990:	685b      	ldr	r3, [r3, #4]
d0047992:	b10b      	cbz	r3, d0047998 <_free_r+0x58>
d0047994:	42a3      	cmp	r3, r4
d0047996:	d9fa      	bls.n	d004798e <_free_r+0x4e>
d0047998:	6811      	ldr	r1, [r2, #0]
d004799a:	1855      	adds	r5, r2, r1
d004799c:	42a5      	cmp	r5, r4
d004799e:	d10b      	bne.n	d00479b8 <_free_r+0x78>
d00479a0:	6824      	ldr	r4, [r4, #0]
d00479a2:	4421      	add	r1, r4
d00479a4:	1854      	adds	r4, r2, r1
d00479a6:	42a3      	cmp	r3, r4
d00479a8:	6011      	str	r1, [r2, #0]
d00479aa:	d1dd      	bne.n	d0047968 <_free_r+0x28>
d00479ac:	681c      	ldr	r4, [r3, #0]
d00479ae:	685b      	ldr	r3, [r3, #4]
d00479b0:	6053      	str	r3, [r2, #4]
d00479b2:	4421      	add	r1, r4
d00479b4:	6011      	str	r1, [r2, #0]
d00479b6:	e7d7      	b.n	d0047968 <_free_r+0x28>
d00479b8:	d902      	bls.n	d00479c0 <_free_r+0x80>
d00479ba:	230c      	movs	r3, #12
d00479bc:	6003      	str	r3, [r0, #0]
d00479be:	e7d3      	b.n	d0047968 <_free_r+0x28>
d00479c0:	6825      	ldr	r5, [r4, #0]
d00479c2:	1961      	adds	r1, r4, r5
d00479c4:	428b      	cmp	r3, r1
d00479c6:	bf04      	itt	eq
d00479c8:	6819      	ldreq	r1, [r3, #0]
d00479ca:	685b      	ldreq	r3, [r3, #4]
d00479cc:	6063      	str	r3, [r4, #4]
d00479ce:	bf04      	itt	eq
d00479d0:	1949      	addeq	r1, r1, r5
d00479d2:	6021      	streq	r1, [r4, #0]
d00479d4:	6054      	str	r4, [r2, #4]
d00479d6:	e7c7      	b.n	d0047968 <_free_r+0x28>
d00479d8:	b003      	add	sp, #12
d00479da:	bd30      	pop	{r4, r5, pc}
d00479dc:	d012e700 	.word	0xd012e700

d00479e0 <_malloc_r>:
d00479e0:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d00479e2:	1ccd      	adds	r5, r1, #3
d00479e4:	f025 0503 	bic.w	r5, r5, #3
d00479e8:	3508      	adds	r5, #8
d00479ea:	2d0c      	cmp	r5, #12
d00479ec:	bf38      	it	cc
d00479ee:	250c      	movcc	r5, #12
d00479f0:	2d00      	cmp	r5, #0
d00479f2:	4606      	mov	r6, r0
d00479f4:	db01      	blt.n	d00479fa <_malloc_r+0x1a>
d00479f6:	42a9      	cmp	r1, r5
d00479f8:	d903      	bls.n	d0047a02 <_malloc_r+0x22>
d00479fa:	230c      	movs	r3, #12
d00479fc:	6033      	str	r3, [r6, #0]
d00479fe:	2000      	movs	r0, #0
d0047a00:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d0047a02:	f000 f99f 	bl	d0047d44 <__malloc_lock>
d0047a06:	4921      	ldr	r1, [pc, #132]	; (d0047a8c <_malloc_r+0xac>)
d0047a08:	680a      	ldr	r2, [r1, #0]
d0047a0a:	4614      	mov	r4, r2
d0047a0c:	b99c      	cbnz	r4, d0047a36 <_malloc_r+0x56>
d0047a0e:	4f20      	ldr	r7, [pc, #128]	; (d0047a90 <_malloc_r+0xb0>)
d0047a10:	683b      	ldr	r3, [r7, #0]
d0047a12:	b923      	cbnz	r3, d0047a1e <_malloc_r+0x3e>
d0047a14:	4621      	mov	r1, r4
d0047a16:	4630      	mov	r0, r6
d0047a18:	f7f8 fb62 	bl	d00400e0 <_sbrk_r>
d0047a1c:	6038      	str	r0, [r7, #0]
d0047a1e:	4629      	mov	r1, r5
d0047a20:	4630      	mov	r0, r6
d0047a22:	f7f8 fb5d 	bl	d00400e0 <_sbrk_r>
d0047a26:	1c43      	adds	r3, r0, #1
d0047a28:	d123      	bne.n	d0047a72 <_malloc_r+0x92>
d0047a2a:	230c      	movs	r3, #12
d0047a2c:	6033      	str	r3, [r6, #0]
d0047a2e:	4630      	mov	r0, r6
d0047a30:	f000 f98e 	bl	d0047d50 <__malloc_unlock>
d0047a34:	e7e3      	b.n	d00479fe <_malloc_r+0x1e>
d0047a36:	6823      	ldr	r3, [r4, #0]
d0047a38:	1b5b      	subs	r3, r3, r5
d0047a3a:	d417      	bmi.n	d0047a6c <_malloc_r+0x8c>
d0047a3c:	2b0b      	cmp	r3, #11
d0047a3e:	d903      	bls.n	d0047a48 <_malloc_r+0x68>
d0047a40:	6023      	str	r3, [r4, #0]
d0047a42:	441c      	add	r4, r3
d0047a44:	6025      	str	r5, [r4, #0]
d0047a46:	e004      	b.n	d0047a52 <_malloc_r+0x72>
d0047a48:	6863      	ldr	r3, [r4, #4]
d0047a4a:	42a2      	cmp	r2, r4
d0047a4c:	bf0c      	ite	eq
d0047a4e:	600b      	streq	r3, [r1, #0]
d0047a50:	6053      	strne	r3, [r2, #4]
d0047a52:	4630      	mov	r0, r6
d0047a54:	f000 f97c 	bl	d0047d50 <__malloc_unlock>
d0047a58:	f104 000b 	add.w	r0, r4, #11
d0047a5c:	1d23      	adds	r3, r4, #4
d0047a5e:	f020 0007 	bic.w	r0, r0, #7
d0047a62:	1ac2      	subs	r2, r0, r3
d0047a64:	d0cc      	beq.n	d0047a00 <_malloc_r+0x20>
d0047a66:	1a1b      	subs	r3, r3, r0
d0047a68:	50a3      	str	r3, [r4, r2]
d0047a6a:	e7c9      	b.n	d0047a00 <_malloc_r+0x20>
d0047a6c:	4622      	mov	r2, r4
d0047a6e:	6864      	ldr	r4, [r4, #4]
d0047a70:	e7cc      	b.n	d0047a0c <_malloc_r+0x2c>
d0047a72:	1cc4      	adds	r4, r0, #3
d0047a74:	f024 0403 	bic.w	r4, r4, #3
d0047a78:	42a0      	cmp	r0, r4
d0047a7a:	d0e3      	beq.n	d0047a44 <_malloc_r+0x64>
d0047a7c:	1a21      	subs	r1, r4, r0
d0047a7e:	4630      	mov	r0, r6
d0047a80:	f7f8 fb2e 	bl	d00400e0 <_sbrk_r>
d0047a84:	3001      	adds	r0, #1
d0047a86:	d1dd      	bne.n	d0047a44 <_malloc_r+0x64>
d0047a88:	e7cf      	b.n	d0047a2a <_malloc_r+0x4a>
d0047a8a:	bf00      	nop
d0047a8c:	d012e700 	.word	0xd012e700
d0047a90:	d012e704 	.word	0xd012e704

d0047a94 <setbuf>:
d0047a94:	2900      	cmp	r1, #0
d0047a96:	f44f 6380 	mov.w	r3, #1024	; 0x400
d0047a9a:	bf0c      	ite	eq
d0047a9c:	2202      	moveq	r2, #2
d0047a9e:	2200      	movne	r2, #0
d0047aa0:	f000 b800 	b.w	d0047aa4 <setvbuf>

d0047aa4 <setvbuf>:
d0047aa4:	e92d 43f7 	stmdb	sp!, {r0, r1, r2, r4, r5, r6, r7, r8, r9, lr}
d0047aa8:	461d      	mov	r5, r3
d0047aaa:	4b5d      	ldr	r3, [pc, #372]	; (d0047c20 <setvbuf+0x17c>)
d0047aac:	681f      	ldr	r7, [r3, #0]
d0047aae:	4604      	mov	r4, r0
d0047ab0:	460e      	mov	r6, r1
d0047ab2:	4690      	mov	r8, r2
d0047ab4:	b127      	cbz	r7, d0047ac0 <setvbuf+0x1c>
d0047ab6:	69bb      	ldr	r3, [r7, #24]
d0047ab8:	b913      	cbnz	r3, d0047ac0 <setvbuf+0x1c>
d0047aba:	4638      	mov	r0, r7
d0047abc:	f7ff fe6a 	bl	d0047794 <__sinit>
d0047ac0:	4b58      	ldr	r3, [pc, #352]	; (d0047c24 <setvbuf+0x180>)
d0047ac2:	429c      	cmp	r4, r3
d0047ac4:	d167      	bne.n	d0047b96 <setvbuf+0xf2>
d0047ac6:	687c      	ldr	r4, [r7, #4]
d0047ac8:	f1b8 0f02 	cmp.w	r8, #2
d0047acc:	d006      	beq.n	d0047adc <setvbuf+0x38>
d0047ace:	f1b8 0f01 	cmp.w	r8, #1
d0047ad2:	f200 809f 	bhi.w	d0047c14 <setvbuf+0x170>
d0047ad6:	2d00      	cmp	r5, #0
d0047ad8:	f2c0 809c 	blt.w	d0047c14 <setvbuf+0x170>
d0047adc:	6e63      	ldr	r3, [r4, #100]	; 0x64
d0047ade:	07db      	lsls	r3, r3, #31
d0047ae0:	d405      	bmi.n	d0047aee <setvbuf+0x4a>
d0047ae2:	89a3      	ldrh	r3, [r4, #12]
d0047ae4:	0598      	lsls	r0, r3, #22
d0047ae6:	d402      	bmi.n	d0047aee <setvbuf+0x4a>
d0047ae8:	6da0      	ldr	r0, [r4, #88]	; 0x58
d0047aea:	f7ff fef2 	bl	d00478d2 <__retarget_lock_acquire_recursive>
d0047aee:	4621      	mov	r1, r4
d0047af0:	4638      	mov	r0, r7
d0047af2:	f7ff fdbb 	bl	d004766c <_fflush_r>
d0047af6:	6b61      	ldr	r1, [r4, #52]	; 0x34
d0047af8:	b141      	cbz	r1, d0047b0c <setvbuf+0x68>
d0047afa:	f104 0344 	add.w	r3, r4, #68	; 0x44
d0047afe:	4299      	cmp	r1, r3
d0047b00:	d002      	beq.n	d0047b08 <setvbuf+0x64>
d0047b02:	4638      	mov	r0, r7
d0047b04:	f7ff ff1c 	bl	d0047940 <_free_r>
d0047b08:	2300      	movs	r3, #0
d0047b0a:	6363      	str	r3, [r4, #52]	; 0x34
d0047b0c:	2300      	movs	r3, #0
d0047b0e:	61a3      	str	r3, [r4, #24]
d0047b10:	6063      	str	r3, [r4, #4]
d0047b12:	89a3      	ldrh	r3, [r4, #12]
d0047b14:	0619      	lsls	r1, r3, #24
d0047b16:	d503      	bpl.n	d0047b20 <setvbuf+0x7c>
d0047b18:	6921      	ldr	r1, [r4, #16]
d0047b1a:	4638      	mov	r0, r7
d0047b1c:	f7ff ff10 	bl	d0047940 <_free_r>
d0047b20:	89a3      	ldrh	r3, [r4, #12]
d0047b22:	f423 634a 	bic.w	r3, r3, #3232	; 0xca0
d0047b26:	f023 0303 	bic.w	r3, r3, #3
d0047b2a:	f1b8 0f02 	cmp.w	r8, #2
d0047b2e:	81a3      	strh	r3, [r4, #12]
d0047b30:	d06c      	beq.n	d0047c0c <setvbuf+0x168>
d0047b32:	ab01      	add	r3, sp, #4
d0047b34:	466a      	mov	r2, sp
d0047b36:	4621      	mov	r1, r4
d0047b38:	4638      	mov	r0, r7
d0047b3a:	f000 f8df 	bl	d0047cfc <__swhatbuf_r>
d0047b3e:	89a3      	ldrh	r3, [r4, #12]
d0047b40:	4318      	orrs	r0, r3
d0047b42:	81a0      	strh	r0, [r4, #12]
d0047b44:	2d00      	cmp	r5, #0
d0047b46:	d130      	bne.n	d0047baa <setvbuf+0x106>
d0047b48:	9d00      	ldr	r5, [sp, #0]
d0047b4a:	4628      	mov	r0, r5
d0047b4c:	f7ff fec4 	bl	d00478d8 <malloc>
d0047b50:	4606      	mov	r6, r0
d0047b52:	2800      	cmp	r0, #0
d0047b54:	d155      	bne.n	d0047c02 <setvbuf+0x15e>
d0047b56:	f8dd 9000 	ldr.w	r9, [sp]
d0047b5a:	45a9      	cmp	r9, r5
d0047b5c:	d14a      	bne.n	d0047bf4 <setvbuf+0x150>
d0047b5e:	f04f 35ff 	mov.w	r5, #4294967295	; 0xffffffff
d0047b62:	2200      	movs	r2, #0
d0047b64:	60a2      	str	r2, [r4, #8]
d0047b66:	f104 0247 	add.w	r2, r4, #71	; 0x47
d0047b6a:	6022      	str	r2, [r4, #0]
d0047b6c:	6122      	str	r2, [r4, #16]
d0047b6e:	2201      	movs	r2, #1
d0047b70:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
d0047b74:	6162      	str	r2, [r4, #20]
d0047b76:	6e62      	ldr	r2, [r4, #100]	; 0x64
d0047b78:	f043 0302 	orr.w	r3, r3, #2
d0047b7c:	07d2      	lsls	r2, r2, #31
d0047b7e:	81a3      	strh	r3, [r4, #12]
d0047b80:	d405      	bmi.n	d0047b8e <setvbuf+0xea>
d0047b82:	f413 7f00 	tst.w	r3, #512	; 0x200
d0047b86:	d102      	bne.n	d0047b8e <setvbuf+0xea>
d0047b88:	6da0      	ldr	r0, [r4, #88]	; 0x58
d0047b8a:	f7ff fea3 	bl	d00478d4 <__retarget_lock_release_recursive>
d0047b8e:	4628      	mov	r0, r5
d0047b90:	b003      	add	sp, #12
d0047b92:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
d0047b96:	4b24      	ldr	r3, [pc, #144]	; (d0047c28 <setvbuf+0x184>)
d0047b98:	429c      	cmp	r4, r3
d0047b9a:	d101      	bne.n	d0047ba0 <setvbuf+0xfc>
d0047b9c:	68bc      	ldr	r4, [r7, #8]
d0047b9e:	e793      	b.n	d0047ac8 <setvbuf+0x24>
d0047ba0:	4b22      	ldr	r3, [pc, #136]	; (d0047c2c <setvbuf+0x188>)
d0047ba2:	429c      	cmp	r4, r3
d0047ba4:	bf08      	it	eq
d0047ba6:	68fc      	ldreq	r4, [r7, #12]
d0047ba8:	e78e      	b.n	d0047ac8 <setvbuf+0x24>
d0047baa:	2e00      	cmp	r6, #0
d0047bac:	d0cd      	beq.n	d0047b4a <setvbuf+0xa6>
d0047bae:	69bb      	ldr	r3, [r7, #24]
d0047bb0:	b913      	cbnz	r3, d0047bb8 <setvbuf+0x114>
d0047bb2:	4638      	mov	r0, r7
d0047bb4:	f7ff fdee 	bl	d0047794 <__sinit>
d0047bb8:	f1b8 0f01 	cmp.w	r8, #1
d0047bbc:	bf08      	it	eq
d0047bbe:	89a3      	ldrheq	r3, [r4, #12]
d0047bc0:	6026      	str	r6, [r4, #0]
d0047bc2:	bf04      	itt	eq
d0047bc4:	f043 0301 	orreq.w	r3, r3, #1
d0047bc8:	81a3      	strheq	r3, [r4, #12]
d0047bca:	89a2      	ldrh	r2, [r4, #12]
d0047bcc:	f012 0308 	ands.w	r3, r2, #8
d0047bd0:	e9c4 6504 	strd	r6, r5, [r4, #16]
d0047bd4:	d01c      	beq.n	d0047c10 <setvbuf+0x16c>
d0047bd6:	07d3      	lsls	r3, r2, #31
d0047bd8:	bf41      	itttt	mi
d0047bda:	2300      	movmi	r3, #0
d0047bdc:	426d      	negmi	r5, r5
d0047bde:	60a3      	strmi	r3, [r4, #8]
d0047be0:	61a5      	strmi	r5, [r4, #24]
d0047be2:	bf58      	it	pl
d0047be4:	60a5      	strpl	r5, [r4, #8]
d0047be6:	6e65      	ldr	r5, [r4, #100]	; 0x64
d0047be8:	f015 0501 	ands.w	r5, r5, #1
d0047bec:	d115      	bne.n	d0047c1a <setvbuf+0x176>
d0047bee:	f412 7f00 	tst.w	r2, #512	; 0x200
d0047bf2:	e7c8      	b.n	d0047b86 <setvbuf+0xe2>
d0047bf4:	4648      	mov	r0, r9
d0047bf6:	f7ff fe6f 	bl	d00478d8 <malloc>
d0047bfa:	4606      	mov	r6, r0
d0047bfc:	2800      	cmp	r0, #0
d0047bfe:	d0ae      	beq.n	d0047b5e <setvbuf+0xba>
d0047c00:	464d      	mov	r5, r9
d0047c02:	89a3      	ldrh	r3, [r4, #12]
d0047c04:	f043 0380 	orr.w	r3, r3, #128	; 0x80
d0047c08:	81a3      	strh	r3, [r4, #12]
d0047c0a:	e7d0      	b.n	d0047bae <setvbuf+0x10a>
d0047c0c:	2500      	movs	r5, #0
d0047c0e:	e7a8      	b.n	d0047b62 <setvbuf+0xbe>
d0047c10:	60a3      	str	r3, [r4, #8]
d0047c12:	e7e8      	b.n	d0047be6 <setvbuf+0x142>
d0047c14:	f04f 35ff 	mov.w	r5, #4294967295	; 0xffffffff
d0047c18:	e7b9      	b.n	d0047b8e <setvbuf+0xea>
d0047c1a:	2500      	movs	r5, #0
d0047c1c:	e7b7      	b.n	d0047b8e <setvbuf+0xea>
d0047c1e:	bf00      	nop
d0047c20:	d0048fe4 	.word	0xd0048fe4
d0047c24:	d00487e0 	.word	0xd00487e0
d0047c28:	d0048800 	.word	0xd0048800
d0047c2c:	d00487c0 	.word	0xd00487c0

d0047c30 <__sread>:
d0047c30:	b510      	push	{r4, lr}
d0047c32:	460c      	mov	r4, r1
d0047c34:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d0047c38:	f000 f890 	bl	d0047d5c <_read_r>
d0047c3c:	2800      	cmp	r0, #0
d0047c3e:	bfab      	itete	ge
d0047c40:	6d63      	ldrge	r3, [r4, #84]	; 0x54
d0047c42:	89a3      	ldrhlt	r3, [r4, #12]
d0047c44:	181b      	addge	r3, r3, r0
d0047c46:	f423 5380 	biclt.w	r3, r3, #4096	; 0x1000
d0047c4a:	bfac      	ite	ge
d0047c4c:	6563      	strge	r3, [r4, #84]	; 0x54
d0047c4e:	81a3      	strhlt	r3, [r4, #12]
d0047c50:	bd10      	pop	{r4, pc}

d0047c52 <__swrite>:
d0047c52:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
d0047c56:	461f      	mov	r7, r3
d0047c58:	898b      	ldrh	r3, [r1, #12]
d0047c5a:	05db      	lsls	r3, r3, #23
d0047c5c:	4605      	mov	r5, r0
d0047c5e:	460c      	mov	r4, r1
d0047c60:	4616      	mov	r6, r2
d0047c62:	d505      	bpl.n	d0047c70 <__swrite+0x1e>
d0047c64:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d0047c68:	2302      	movs	r3, #2
d0047c6a:	2200      	movs	r2, #0
d0047c6c:	f000 f834 	bl	d0047cd8 <_lseek_r>
d0047c70:	89a3      	ldrh	r3, [r4, #12]
d0047c72:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
d0047c76:	f423 5380 	bic.w	r3, r3, #4096	; 0x1000
d0047c7a:	81a3      	strh	r3, [r4, #12]
d0047c7c:	4632      	mov	r2, r6
d0047c7e:	463b      	mov	r3, r7
d0047c80:	4628      	mov	r0, r5
d0047c82:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
d0047c86:	f7f8 b9e5 	b.w	d0040054 <_write_r>

d0047c8a <__sseek>:
d0047c8a:	b510      	push	{r4, lr}
d0047c8c:	460c      	mov	r4, r1
d0047c8e:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d0047c92:	f000 f821 	bl	d0047cd8 <_lseek_r>
d0047c96:	1c43      	adds	r3, r0, #1
d0047c98:	89a3      	ldrh	r3, [r4, #12]
d0047c9a:	bf15      	itete	ne
d0047c9c:	6560      	strne	r0, [r4, #84]	; 0x54
d0047c9e:	f423 5380 	biceq.w	r3, r3, #4096	; 0x1000
d0047ca2:	f443 5380 	orrne.w	r3, r3, #4096	; 0x1000
d0047ca6:	81a3      	strheq	r3, [r4, #12]
d0047ca8:	bf18      	it	ne
d0047caa:	81a3      	strhne	r3, [r4, #12]
d0047cac:	bd10      	pop	{r4, pc}

d0047cae <__sclose>:
d0047cae:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d0047cb2:	f000 b801 	b.w	d0047cb8 <_close_r>
	...

d0047cb8 <_close_r>:
d0047cb8:	b538      	push	{r3, r4, r5, lr}
d0047cba:	4d06      	ldr	r5, [pc, #24]	; (d0047cd4 <_close_r+0x1c>)
d0047cbc:	2300      	movs	r3, #0
d0047cbe:	4604      	mov	r4, r0
d0047cc0:	4608      	mov	r0, r1
d0047cc2:	602b      	str	r3, [r5, #0]
d0047cc4:	f7f8 fa00 	bl	d00400c8 <_close>
d0047cc8:	1c43      	adds	r3, r0, #1
d0047cca:	d102      	bne.n	d0047cd2 <_close_r+0x1a>
d0047ccc:	682b      	ldr	r3, [r5, #0]
d0047cce:	b103      	cbz	r3, d0047cd2 <_close_r+0x1a>
d0047cd0:	6023      	str	r3, [r4, #0]
d0047cd2:	bd38      	pop	{r3, r4, r5, pc}
d0047cd4:	d01347cc 	.word	0xd01347cc

d0047cd8 <_lseek_r>:
d0047cd8:	b538      	push	{r3, r4, r5, lr}
d0047cda:	4d07      	ldr	r5, [pc, #28]	; (d0047cf8 <_lseek_r+0x20>)
d0047cdc:	4604      	mov	r4, r0
d0047cde:	4608      	mov	r0, r1
d0047ce0:	4611      	mov	r1, r2
d0047ce2:	2200      	movs	r2, #0
d0047ce4:	602a      	str	r2, [r5, #0]
d0047ce6:	461a      	mov	r2, r3
d0047ce8:	f7f8 f9f8 	bl	d00400dc <_lseek>
d0047cec:	1c43      	adds	r3, r0, #1
d0047cee:	d102      	bne.n	d0047cf6 <_lseek_r+0x1e>
d0047cf0:	682b      	ldr	r3, [r5, #0]
d0047cf2:	b103      	cbz	r3, d0047cf6 <_lseek_r+0x1e>
d0047cf4:	6023      	str	r3, [r4, #0]
d0047cf6:	bd38      	pop	{r3, r4, r5, pc}
d0047cf8:	d01347cc 	.word	0xd01347cc

d0047cfc <__swhatbuf_r>:
d0047cfc:	b570      	push	{r4, r5, r6, lr}
d0047cfe:	460e      	mov	r6, r1
d0047d00:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d0047d04:	2900      	cmp	r1, #0
d0047d06:	b096      	sub	sp, #88	; 0x58
d0047d08:	4614      	mov	r4, r2
d0047d0a:	461d      	mov	r5, r3
d0047d0c:	da07      	bge.n	d0047d1e <__swhatbuf_r+0x22>
d0047d0e:	2300      	movs	r3, #0
d0047d10:	602b      	str	r3, [r5, #0]
d0047d12:	89b3      	ldrh	r3, [r6, #12]
d0047d14:	061a      	lsls	r2, r3, #24
d0047d16:	d410      	bmi.n	d0047d3a <__swhatbuf_r+0x3e>
d0047d18:	f44f 6380 	mov.w	r3, #1024	; 0x400
d0047d1c:	e00e      	b.n	d0047d3c <__swhatbuf_r+0x40>
d0047d1e:	466a      	mov	r2, sp
d0047d20:	f000 f82e 	bl	d0047d80 <_fstat_r>
d0047d24:	2800      	cmp	r0, #0
d0047d26:	dbf2      	blt.n	d0047d0e <__swhatbuf_r+0x12>
d0047d28:	9a01      	ldr	r2, [sp, #4]
d0047d2a:	f402 4270 	and.w	r2, r2, #61440	; 0xf000
d0047d2e:	f5a2 5300 	sub.w	r3, r2, #8192	; 0x2000
d0047d32:	425a      	negs	r2, r3
d0047d34:	415a      	adcs	r2, r3
d0047d36:	602a      	str	r2, [r5, #0]
d0047d38:	e7ee      	b.n	d0047d18 <__swhatbuf_r+0x1c>
d0047d3a:	2340      	movs	r3, #64	; 0x40
d0047d3c:	2000      	movs	r0, #0
d0047d3e:	6023      	str	r3, [r4, #0]
d0047d40:	b016      	add	sp, #88	; 0x58
d0047d42:	bd70      	pop	{r4, r5, r6, pc}

d0047d44 <__malloc_lock>:
d0047d44:	4801      	ldr	r0, [pc, #4]	; (d0047d4c <__malloc_lock+0x8>)
d0047d46:	f7ff bdc4 	b.w	d00478d2 <__retarget_lock_acquire_recursive>
d0047d4a:	bf00      	nop
d0047d4c:	d01347c4 	.word	0xd01347c4

d0047d50 <__malloc_unlock>:
d0047d50:	4801      	ldr	r0, [pc, #4]	; (d0047d58 <__malloc_unlock+0x8>)
d0047d52:	f7ff bdbf 	b.w	d00478d4 <__retarget_lock_release_recursive>
d0047d56:	bf00      	nop
d0047d58:	d01347c4 	.word	0xd01347c4

d0047d5c <_read_r>:
d0047d5c:	b538      	push	{r3, r4, r5, lr}
d0047d5e:	4d07      	ldr	r5, [pc, #28]	; (d0047d7c <_read_r+0x20>)
d0047d60:	4604      	mov	r4, r0
d0047d62:	4608      	mov	r0, r1
d0047d64:	4611      	mov	r1, r2
d0047d66:	2200      	movs	r2, #0
d0047d68:	602a      	str	r2, [r5, #0]
d0047d6a:	461a      	mov	r2, r3
d0047d6c:	f7f8 f9a2 	bl	d00400b4 <_read>
d0047d70:	1c43      	adds	r3, r0, #1
d0047d72:	d102      	bne.n	d0047d7a <_read_r+0x1e>
d0047d74:	682b      	ldr	r3, [r5, #0]
d0047d76:	b103      	cbz	r3, d0047d7a <_read_r+0x1e>
d0047d78:	6023      	str	r3, [r4, #0]
d0047d7a:	bd38      	pop	{r3, r4, r5, pc}
d0047d7c:	d01347cc 	.word	0xd01347cc

d0047d80 <_fstat_r>:
d0047d80:	b538      	push	{r3, r4, r5, lr}
d0047d82:	4d07      	ldr	r5, [pc, #28]	; (d0047da0 <_fstat_r+0x20>)
d0047d84:	2300      	movs	r3, #0
d0047d86:	4604      	mov	r4, r0
d0047d88:	4608      	mov	r0, r1
d0047d8a:	4611      	mov	r1, r2
d0047d8c:	602b      	str	r3, [r5, #0]
d0047d8e:	f7f8 f99f 	bl	d00400d0 <_fstat>
d0047d92:	1c43      	adds	r3, r0, #1
d0047d94:	d102      	bne.n	d0047d9c <_fstat_r+0x1c>
d0047d96:	682b      	ldr	r3, [r5, #0]
d0047d98:	b103      	cbz	r3, d0047d9c <_fstat_r+0x1c>
d0047d9a:	6023      	str	r3, [r4, #0]
d0047d9c:	bd38      	pop	{r3, r4, r5, pc}
d0047d9e:	bf00      	nop
d0047da0:	d01347cc 	.word	0xd01347cc

d0047da4 <sinf_poly>:
d0047da4:	07cb      	lsls	r3, r1, #31
d0047da6:	d412      	bmi.n	d0047dce <sinf_poly+0x2a>
d0047da8:	ee21 6b00 	vmul.f64	d6, d1, d0
d0047dac:	ed90 5b1a 	vldr	d5, [r0, #104]	; 0x68
d0047db0:	ed90 7b18 	vldr	d7, [r0, #96]	; 0x60
d0047db4:	eea5 7b01 	vfma.f64	d7, d5, d1
d0047db8:	ed90 5b16 	vldr	d5, [r0, #88]	; 0x58
d0047dbc:	ee21 1b06 	vmul.f64	d1, d1, d6
d0047dc0:	eea5 0b06 	vfma.f64	d0, d5, d6
d0047dc4:	eea7 0b01 	vfma.f64	d0, d7, d1
d0047dc8:	eeb7 0bc0 	vcvt.f32.f64	s0, d0
d0047dcc:	4770      	bx	lr
d0047dce:	ed90 5b14 	vldr	d5, [r0, #80]	; 0x50
d0047dd2:	ee21 6b01 	vmul.f64	d6, d1, d1
d0047dd6:	ed90 7b12 	vldr	d7, [r0, #72]	; 0x48
d0047dda:	ed90 0b0c 	vldr	d0, [r0, #48]	; 0x30
d0047dde:	eea1 7b05 	vfma.f64	d7, d1, d5
d0047de2:	ed90 5b0e 	vldr	d5, [r0, #56]	; 0x38
d0047de6:	eea1 0b05 	vfma.f64	d0, d1, d5
d0047dea:	ed90 5b10 	vldr	d5, [r0, #64]	; 0x40
d0047dee:	ee21 1b06 	vmul.f64	d1, d1, d6
d0047df2:	eea6 0b05 	vfma.f64	d0, d6, d5
d0047df6:	e7e5      	b.n	d0047dc4 <sinf_poly+0x20>

d0047df8 <cosf>:
d0047df8:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d0047dfa:	ee10 4a10 	vmov	r4, s0
d0047dfe:	f3c4 530a 	ubfx	r3, r4, #20, #11
d0047e02:	f5b3 7f7d 	cmp.w	r3, #1012	; 0x3f4
d0047e06:	eeb7 6ac0 	vcvt.f64.f32	d6, s0
d0047e0a:	d20c      	bcs.n	d0047e26 <cosf+0x2e>
d0047e0c:	ee26 1b06 	vmul.f64	d1, d6, d6
d0047e10:	f5b3 7f66 	cmp.w	r3, #920	; 0x398
d0047e14:	d378      	bcc.n	d0047f08 <cosf+0x110>
d0047e16:	eeb0 0b46 	vmov.f64	d0, d6
d0047e1a:	483f      	ldr	r0, [pc, #252]	; (d0047f18 <cosf+0x120>)
d0047e1c:	2101      	movs	r1, #1
d0047e1e:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
d0047e22:	f7ff bfbf 	b.w	d0047da4 <sinf_poly>
d0047e26:	f240 422e 	movw	r2, #1070	; 0x42e
d0047e2a:	4293      	cmp	r3, r2
d0047e2c:	d826      	bhi.n	d0047e7c <cosf+0x84>
d0047e2e:	4b3a      	ldr	r3, [pc, #232]	; (d0047f18 <cosf+0x120>)
d0047e30:	ed93 7b08 	vldr	d7, [r3, #32]
d0047e34:	ee26 7b07 	vmul.f64	d7, d6, d7
d0047e38:	eefd 7bc7 	vcvt.s32.f64	s15, d7
d0047e3c:	f103 0070 	add.w	r0, r3, #112	; 0x70
d0047e40:	ee17 1a90 	vmov	r1, s15
d0047e44:	f501 0100 	add.w	r1, r1, #8388608	; 0x800000
d0047e48:	1609      	asrs	r1, r1, #24
d0047e4a:	ee07 1a90 	vmov	s15, r1
d0047e4e:	f001 0203 	and.w	r2, r1, #3
d0047e52:	eb03 02c2 	add.w	r2, r3, r2, lsl #3
d0047e56:	eeb8 5be7 	vcvt.f64.s32	d5, s15
d0047e5a:	ed92 0b00 	vldr	d0, [r2]
d0047e5e:	ed93 7b0a 	vldr	d7, [r3, #40]	; 0x28
d0047e62:	f011 0f02 	tst.w	r1, #2
d0047e66:	eea5 6b47 	vfms.f64	d6, d5, d7
d0047e6a:	f081 0101 	eor.w	r1, r1, #1
d0047e6e:	bf08      	it	eq
d0047e70:	4618      	moveq	r0, r3
d0047e72:	ee26 1b06 	vmul.f64	d1, d6, d6
d0047e76:	ee20 0b06 	vmul.f64	d0, d0, d6
d0047e7a:	e7d0      	b.n	d0047e1e <cosf+0x26>
d0047e7c:	f5b3 6fff 	cmp.w	r3, #2040	; 0x7f8
d0047e80:	d23e      	bcs.n	d0047f00 <cosf+0x108>
d0047e82:	4b26      	ldr	r3, [pc, #152]	; (d0047f1c <cosf+0x124>)
d0047e84:	f3c4 6283 	ubfx	r2, r4, #26, #4
d0047e88:	eb03 0082 	add.w	r0, r3, r2, lsl #2
d0047e8c:	f3c4 0116 	ubfx	r1, r4, #0, #23
d0047e90:	f3c4 55c2 	ubfx	r5, r4, #23, #3
d0047e94:	6a06      	ldr	r6, [r0, #32]
d0047e96:	6900      	ldr	r0, [r0, #16]
d0047e98:	f441 0100 	orr.w	r1, r1, #8388608	; 0x800000
d0047e9c:	40a9      	lsls	r1, r5
d0047e9e:	f853 5022 	ldr.w	r5, [r3, r2, lsl #2]
d0047ea2:	fba1 6706 	umull	r6, r7, r1, r6
d0047ea6:	fb05 f301 	mul.w	r3, r5, r1
d0047eaa:	463a      	mov	r2, r7
d0047eac:	fbe0 2301 	umlal	r2, r3, r0, r1
d0047eb0:	1c11      	adds	r1, r2, #0
d0047eb2:	f143 5600 	adc.w	r6, r3, #536870912	; 0x20000000
d0047eb6:	2000      	movs	r0, #0
d0047eb8:	1a10      	subs	r0, r2, r0
d0047eba:	f006 4140 	and.w	r1, r6, #3221225472	; 0xc0000000
d0047ebe:	eb63 0101 	sbc.w	r1, r3, r1
d0047ec2:	f000 fbab 	bl	d004861c <__aeabi_l2d>
d0047ec6:	0fb5      	lsrs	r5, r6, #30
d0047ec8:	4b13      	ldr	r3, [pc, #76]	; (d0047f18 <cosf+0x120>)
d0047eca:	eb05 74d4 	add.w	r4, r5, r4, lsr #31
d0047ece:	ed9f 0b10 	vldr	d0, [pc, #64]	; d0047f10 <cosf+0x118>
d0047ed2:	ec41 0b17 	vmov	d7, r0, r1
d0047ed6:	f004 0203 	and.w	r2, r4, #3
d0047eda:	eb03 02c2 	add.w	r2, r3, r2, lsl #3
d0047ede:	ee27 0b00 	vmul.f64	d0, d7, d0
d0047ee2:	ed92 7b00 	vldr	d7, [r2]
d0047ee6:	ee20 1b00 	vmul.f64	d1, d0, d0
d0047eea:	f014 0f02 	tst.w	r4, #2
d0047eee:	f103 0070 	add.w	r0, r3, #112	; 0x70
d0047ef2:	f085 0101 	eor.w	r1, r5, #1
d0047ef6:	bf08      	it	eq
d0047ef8:	4618      	moveq	r0, r3
d0047efa:	ee27 0b00 	vmul.f64	d0, d7, d0
d0047efe:	e78e      	b.n	d0047e1e <cosf+0x26>
d0047f00:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
d0047f04:	f000 b844 	b.w	d0047f90 <__math_invalidf>
d0047f08:	eeb7 0a00 	vmov.f32	s0, #112	; 0x3f800000  1.0
d0047f0c:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d0047f0e:	bf00      	nop
d0047f10:	54442d18 	.word	0x54442d18
d0047f14:	3c1921fb 	.word	0x3c1921fb
d0047f18:	d0048af0 	.word	0xd0048af0
d0047f1c:	d0048a90 	.word	0xd0048a90

d0047f20 <with_errnof>:
d0047f20:	b513      	push	{r0, r1, r4, lr}
d0047f22:	4604      	mov	r4, r0
d0047f24:	ed8d 0a01 	vstr	s0, [sp, #4]
d0047f28:	f7ff faa0 	bl	d004746c <__errno>
d0047f2c:	ed9d 0a01 	vldr	s0, [sp, #4]
d0047f30:	6004      	str	r4, [r0, #0]
d0047f32:	b002      	add	sp, #8
d0047f34:	bd10      	pop	{r4, pc}

d0047f36 <xflowf>:
d0047f36:	b130      	cbz	r0, d0047f46 <xflowf+0x10>
d0047f38:	eef1 7a40 	vneg.f32	s15, s0
d0047f3c:	ee27 0a80 	vmul.f32	s0, s15, s0
d0047f40:	2022      	movs	r0, #34	; 0x22
d0047f42:	f7ff bfed 	b.w	d0047f20 <with_errnof>
d0047f46:	eef0 7a40 	vmov.f32	s15, s0
d0047f4a:	e7f7      	b.n	d0047f3c <xflowf+0x6>

d0047f4c <__math_uflowf>:
d0047f4c:	ed9f 0a01 	vldr	s0, [pc, #4]	; d0047f54 <__math_uflowf+0x8>
d0047f50:	f7ff bff1 	b.w	d0047f36 <xflowf>
d0047f54:	10000000 	.word	0x10000000

d0047f58 <__math_may_uflowf>:
d0047f58:	ed9f 0a01 	vldr	s0, [pc, #4]	; d0047f60 <__math_may_uflowf+0x8>
d0047f5c:	f7ff bfeb 	b.w	d0047f36 <xflowf>
d0047f60:	1a200000 	.word	0x1a200000

d0047f64 <__math_oflowf>:
d0047f64:	ed9f 0a01 	vldr	s0, [pc, #4]	; d0047f6c <__math_oflowf+0x8>
d0047f68:	f7ff bfe5 	b.w	d0047f36 <xflowf>
d0047f6c:	70000000 	.word	0x70000000

d0047f70 <__math_divzerof>:
d0047f70:	eeb7 0a00 	vmov.f32	s0, #112	; 0x3f800000  1.0
d0047f74:	eeff 7a00 	vmov.f32	s15, #240	; 0xbf800000 -1.0
d0047f78:	2800      	cmp	r0, #0
d0047f7a:	fe40 7a27 	vseleq.f32	s15, s0, s15
d0047f7e:	ed9f 0a03 	vldr	s0, [pc, #12]	; d0047f8c <__math_divzerof+0x1c>
d0047f82:	2022      	movs	r0, #34	; 0x22
d0047f84:	ee87 0a80 	vdiv.f32	s0, s15, s0
d0047f88:	f7ff bfca 	b.w	d0047f20 <with_errnof>
d0047f8c:	00000000 	.word	0x00000000

d0047f90 <__math_invalidf>:
d0047f90:	eef0 7a40 	vmov.f32	s15, s0
d0047f94:	ee30 7a40 	vsub.f32	s14, s0, s0
d0047f98:	eef4 7a67 	vcmp.f32	s15, s15
d0047f9c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0047fa0:	ee87 0a07 	vdiv.f32	s0, s14, s14
d0047fa4:	d602      	bvs.n	d0047fac <__math_invalidf+0x1c>
d0047fa6:	2021      	movs	r0, #33	; 0x21
d0047fa8:	f7ff bfba 	b.w	d0047f20 <with_errnof>
d0047fac:	4770      	bx	lr
	...

d0047fb0 <expf>:
d0047fb0:	ee10 2a10 	vmov	r2, s0
d0047fb4:	b470      	push	{r4, r5, r6}
d0047fb6:	f3c2 530a 	ubfx	r3, r2, #20, #11
d0047fba:	f240 442a 	movw	r4, #1066	; 0x42a
d0047fbe:	42a3      	cmp	r3, r4
d0047fc0:	eeb7 6ac0 	vcvt.f64.f32	d6, s0
d0047fc4:	d92a      	bls.n	d004801c <expf+0x6c>
d0047fc6:	f512 0f00 	cmn.w	r2, #8388608	; 0x800000
d0047fca:	d059      	beq.n	d0048080 <expf+0xd0>
d0047fcc:	f5b3 6fff 	cmp.w	r3, #2040	; 0x7f8
d0047fd0:	d303      	bcc.n	d0047fda <expf+0x2a>
d0047fd2:	ee30 0a00 	vadd.f32	s0, s0, s0
d0047fd6:	bc70      	pop	{r4, r5, r6}
d0047fd8:	4770      	bx	lr
d0047fda:	eddf 7a2b 	vldr	s15, [pc, #172]	; d0048088 <expf+0xd8>
d0047fde:	eeb4 0ae7 	vcmpe.f32	s0, s15
d0047fe2:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0047fe6:	dd03      	ble.n	d0047ff0 <expf+0x40>
d0047fe8:	bc70      	pop	{r4, r5, r6}
d0047fea:	2000      	movs	r0, #0
d0047fec:	f7ff bfba 	b.w	d0047f64 <__math_oflowf>
d0047ff0:	eddf 7a26 	vldr	s15, [pc, #152]	; d004808c <expf+0xdc>
d0047ff4:	eeb4 0ae7 	vcmpe.f32	s0, s15
d0047ff8:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0047ffc:	d503      	bpl.n	d0048006 <expf+0x56>
d0047ffe:	bc70      	pop	{r4, r5, r6}
d0048000:	2000      	movs	r0, #0
d0048002:	f7ff bfa3 	b.w	d0047f4c <__math_uflowf>
d0048006:	eddf 7a22 	vldr	s15, [pc, #136]	; d0048090 <expf+0xe0>
d004800a:	eeb4 0ae7 	vcmpe.f32	s0, s15
d004800e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0048012:	d503      	bpl.n	d004801c <expf+0x6c>
d0048014:	bc70      	pop	{r4, r5, r6}
d0048016:	2000      	movs	r0, #0
d0048018:	f7ff bf9e 	b.w	d0047f58 <__math_may_uflowf>
d004801c:	4b1d      	ldr	r3, [pc, #116]	; (d0048094 <expf+0xe4>)
d004801e:	eeb7 0b00 	vmov.f64	d0, #112	; 0x3f800000  1.0
d0048022:	ed93 5b4a 	vldr	d5, [r3, #296]	; 0x128
d0048026:	ed93 4b48 	vldr	d4, [r3, #288]	; 0x120
d004802a:	eeb0 7b44 	vmov.f64	d7, d4
d004802e:	eea5 7b06 	vfma.f64	d7, d5, d6
d0048032:	ee17 5a10 	vmov	r5, s14
d0048036:	ee37 7b44 	vsub.f64	d7, d7, d4
d004803a:	f005 021f 	and.w	r2, r5, #31
d004803e:	eb03 02c2 	add.w	r2, r3, r2, lsl #3
d0048042:	e9d2 4600 	ldrd	r4, r6, [r2]
d0048046:	ee95 7b06 	vfnms.f64	d7, d5, d6
d004804a:	ed93 4b50 	vldr	d4, [r3, #320]	; 0x140
d004804e:	ed93 5b4c 	vldr	d5, [r3, #304]	; 0x130
d0048052:	eea4 0b07 	vfma.f64	d0, d4, d7
d0048056:	ed93 6b4e 	vldr	d6, [r3, #312]	; 0x138
d004805a:	2300      	movs	r3, #0
d004805c:	1918      	adds	r0, r3, r4
d004805e:	ea4f 32c5 	mov.w	r2, r5, lsl #15
d0048062:	eb42 0106 	adc.w	r1, r2, r6
d0048066:	eea5 6b07 	vfma.f64	d6, d5, d7
d004806a:	ee27 5b07 	vmul.f64	d5, d7, d7
d004806e:	ec41 0b17 	vmov	d7, r0, r1
d0048072:	eea6 0b05 	vfma.f64	d0, d6, d5
d0048076:	ee20 0b07 	vmul.f64	d0, d0, d7
d004807a:	eeb7 0bc0 	vcvt.f32.f64	s0, d0
d004807e:	e7aa      	b.n	d0047fd6 <expf+0x26>
d0048080:	ed9f 0a05 	vldr	s0, [pc, #20]	; d0048098 <expf+0xe8>
d0048084:	e7a7      	b.n	d0047fd6 <expf+0x26>
d0048086:	bf00      	nop
d0048088:	42b17217 	.word	0x42b17217
d004808c:	c2cff1b4 	.word	0xc2cff1b4
d0048090:	c2ce8ecf 	.word	0xc2ce8ecf
d0048094:	d0048828 	.word	0xd0048828
d0048098:	00000000 	.word	0x00000000

d004809c <logf>:
d004809c:	ee10 3a10 	vmov	r3, s0
d00480a0:	f1b3 5f7e 	cmp.w	r3, #1065353216	; 0x3f800000
d00480a4:	b410      	push	{r4}
d00480a6:	d055      	beq.n	d0048154 <logf+0xb8>
d00480a8:	f5a3 0200 	sub.w	r2, r3, #8388608	; 0x800000
d00480ac:	f1b2 4ffe 	cmp.w	r2, #2130706432	; 0x7f000000
d00480b0:	d31a      	bcc.n	d00480e8 <logf+0x4c>
d00480b2:	005a      	lsls	r2, r3, #1
d00480b4:	d104      	bne.n	d00480c0 <logf+0x24>
d00480b6:	f85d 4b04 	ldr.w	r4, [sp], #4
d00480ba:	2001      	movs	r0, #1
d00480bc:	f7ff bf58 	b.w	d0047f70 <__math_divzerof>
d00480c0:	f1b3 4fff 	cmp.w	r3, #2139095040	; 0x7f800000
d00480c4:	d043      	beq.n	d004814e <logf+0xb2>
d00480c6:	2b00      	cmp	r3, #0
d00480c8:	db02      	blt.n	d00480d0 <logf+0x34>
d00480ca:	f1b2 4f7f 	cmp.w	r2, #4278190080	; 0xff000000
d00480ce:	d303      	bcc.n	d00480d8 <logf+0x3c>
d00480d0:	f85d 4b04 	ldr.w	r4, [sp], #4
d00480d4:	f7ff bf5c 	b.w	d0047f90 <__math_invalidf>
d00480d8:	eddf 7a20 	vldr	s15, [pc, #128]	; d004815c <logf+0xc0>
d00480dc:	ee20 0a27 	vmul.f32	s0, s0, s15
d00480e0:	ee10 3a10 	vmov	r3, s0
d00480e4:	f1a3 6338 	sub.w	r3, r3, #192937984	; 0xb800000
d00480e8:	f103 4240 	add.w	r2, r3, #3221225472	; 0xc0000000
d00480ec:	491c      	ldr	r1, [pc, #112]	; (d0048160 <logf+0xc4>)
d00480ee:	eebf 0b00 	vmov.f64	d0, #240	; 0xbf800000 -1.0
d00480f2:	f502 024d 	add.w	r2, r2, #13434880	; 0xcd0000
d00480f6:	f3c2 40c3 	ubfx	r0, r2, #19, #4
d00480fa:	0dd4      	lsrs	r4, r2, #23
d00480fc:	eb01 1000 	add.w	r0, r1, r0, lsl #4
d0048100:	05e4      	lsls	r4, r4, #23
d0048102:	ed90 6b00 	vldr	d6, [r0]
d0048106:	1b1b      	subs	r3, r3, r4
d0048108:	ee07 3a90 	vmov	s15, r3
d004810c:	ed91 5b40 	vldr	d5, [r1, #256]	; 0x100
d0048110:	eeb7 7ae7 	vcvt.f64.f32	d7, s15
d0048114:	15d2      	asrs	r2, r2, #23
d0048116:	eea6 0b07 	vfma.f64	d0, d6, d7
d004811a:	ed90 6b02 	vldr	d6, [r0, #8]
d004811e:	ee07 2a90 	vmov	s15, r2
d0048122:	ed91 4b44 	vldr	d4, [r1, #272]	; 0x110
d0048126:	eeb8 7be7 	vcvt.f64.s32	d7, s15
d004812a:	eea7 6b05 	vfma.f64	d6, d7, d5
d004812e:	ed91 7b46 	vldr	d7, [r1, #280]	; 0x118
d0048132:	ee20 5b00 	vmul.f64	d5, d0, d0
d0048136:	eea4 7b00 	vfma.f64	d7, d4, d0
d004813a:	ed91 4b42 	vldr	d4, [r1, #264]	; 0x108
d004813e:	ee30 0b06 	vadd.f64	d0, d0, d6
d0048142:	eea4 7b05 	vfma.f64	d7, d4, d5
d0048146:	eea5 0b07 	vfma.f64	d0, d5, d7
d004814a:	eeb7 0bc0 	vcvt.f32.f64	s0, d0
d004814e:	f85d 4b04 	ldr.w	r4, [sp], #4
d0048152:	4770      	bx	lr
d0048154:	ed9f 0a03 	vldr	s0, [pc, #12]	; d0048164 <logf+0xc8>
d0048158:	e7f9      	b.n	d004814e <logf+0xb2>
d004815a:	bf00      	nop
d004815c:	4b000000 	.word	0x4b000000
d0048160:	d0048970 	.word	0xd0048970
d0048164:	00000000 	.word	0x00000000

d0048168 <sinf_poly>:
d0048168:	07cb      	lsls	r3, r1, #31
d004816a:	d412      	bmi.n	d0048192 <sinf_poly+0x2a>
d004816c:	ee21 6b00 	vmul.f64	d6, d1, d0
d0048170:	ed90 5b1a 	vldr	d5, [r0, #104]	; 0x68
d0048174:	ed90 7b18 	vldr	d7, [r0, #96]	; 0x60
d0048178:	eea5 7b01 	vfma.f64	d7, d5, d1
d004817c:	ed90 5b16 	vldr	d5, [r0, #88]	; 0x58
d0048180:	ee21 1b06 	vmul.f64	d1, d1, d6
d0048184:	eea5 0b06 	vfma.f64	d0, d5, d6
d0048188:	eea7 0b01 	vfma.f64	d0, d7, d1
d004818c:	eeb7 0bc0 	vcvt.f32.f64	s0, d0
d0048190:	4770      	bx	lr
d0048192:	ed90 5b14 	vldr	d5, [r0, #80]	; 0x50
d0048196:	ee21 6b01 	vmul.f64	d6, d1, d1
d004819a:	ed90 7b12 	vldr	d7, [r0, #72]	; 0x48
d004819e:	ed90 0b0c 	vldr	d0, [r0, #48]	; 0x30
d00481a2:	eea1 7b05 	vfma.f64	d7, d1, d5
d00481a6:	ed90 5b0e 	vldr	d5, [r0, #56]	; 0x38
d00481aa:	eea1 0b05 	vfma.f64	d0, d1, d5
d00481ae:	ed90 5b10 	vldr	d5, [r0, #64]	; 0x40
d00481b2:	ee21 1b06 	vmul.f64	d1, d1, d6
d00481b6:	eea6 0b05 	vfma.f64	d0, d6, d5
d00481ba:	e7e5      	b.n	d0048188 <sinf_poly+0x20>
d00481bc:	0000      	movs	r0, r0
	...

d00481c0 <sinf>:
d00481c0:	b5f7      	push	{r0, r1, r2, r4, r5, r6, r7, lr}
d00481c2:	ee10 4a10 	vmov	r4, s0
d00481c6:	f3c4 530a 	ubfx	r3, r4, #20, #11
d00481ca:	f5b3 7f7d 	cmp.w	r3, #1012	; 0x3f4
d00481ce:	eeb7 6ac0 	vcvt.f64.f32	d6, s0
d00481d2:	eef0 7a40 	vmov.f32	s15, s0
d00481d6:	ea4f 5214 	mov.w	r2, r4, lsr #20
d00481da:	d218      	bcs.n	d004820e <sinf+0x4e>
d00481dc:	ee26 1b06 	vmul.f64	d1, d6, d6
d00481e0:	f5b3 7f66 	cmp.w	r3, #920	; 0x398
d00481e4:	d20a      	bcs.n	d00481fc <sinf+0x3c>
d00481e6:	f412 6fff 	tst.w	r2, #2040	; 0x7f8
d00481ea:	d103      	bne.n	d00481f4 <sinf+0x34>
d00481ec:	eeb7 1bc1 	vcvt.f32.f64	s2, d1
d00481f0:	ed8d 1a01 	vstr	s2, [sp, #4]
d00481f4:	eeb0 0a67 	vmov.f32	s0, s15
d00481f8:	b003      	add	sp, #12
d00481fa:	bdf0      	pop	{r4, r5, r6, r7, pc}
d00481fc:	483e      	ldr	r0, [pc, #248]	; (d00482f8 <sinf+0x138>)
d00481fe:	eeb0 0b46 	vmov.f64	d0, d6
d0048202:	2100      	movs	r1, #0
d0048204:	b003      	add	sp, #12
d0048206:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
d004820a:	f7ff bfad 	b.w	d0048168 <sinf_poly>
d004820e:	f240 422e 	movw	r2, #1070	; 0x42e
d0048212:	4293      	cmp	r3, r2
d0048214:	d824      	bhi.n	d0048260 <sinf+0xa0>
d0048216:	4b38      	ldr	r3, [pc, #224]	; (d00482f8 <sinf+0x138>)
d0048218:	ed93 7b08 	vldr	d7, [r3, #32]
d004821c:	ee26 7b07 	vmul.f64	d7, d6, d7
d0048220:	eefd 7bc7 	vcvt.s32.f64	s15, d7
d0048224:	f103 0070 	add.w	r0, r3, #112	; 0x70
d0048228:	ee17 1a90 	vmov	r1, s15
d004822c:	f501 0100 	add.w	r1, r1, #8388608	; 0x800000
d0048230:	1609      	asrs	r1, r1, #24
d0048232:	ee07 1a90 	vmov	s15, r1
d0048236:	f001 0203 	and.w	r2, r1, #3
d004823a:	eb03 02c2 	add.w	r2, r3, r2, lsl #3
d004823e:	eeb8 5be7 	vcvt.f64.s32	d5, s15
d0048242:	ed92 0b00 	vldr	d0, [r2]
d0048246:	ed93 7b0a 	vldr	d7, [r3, #40]	; 0x28
d004824a:	f011 0f02 	tst.w	r1, #2
d004824e:	eea5 6b47 	vfms.f64	d6, d5, d7
d0048252:	bf08      	it	eq
d0048254:	4618      	moveq	r0, r3
d0048256:	ee26 1b06 	vmul.f64	d1, d6, d6
d004825a:	ee20 0b06 	vmul.f64	d0, d0, d6
d004825e:	e7d1      	b.n	d0048204 <sinf+0x44>
d0048260:	f5b3 6fff 	cmp.w	r3, #2040	; 0x7f8
d0048264:	d23d      	bcs.n	d00482e2 <sinf+0x122>
d0048266:	4b25      	ldr	r3, [pc, #148]	; (d00482fc <sinf+0x13c>)
d0048268:	f3c4 6283 	ubfx	r2, r4, #26, #4
d004826c:	eb03 0082 	add.w	r0, r3, r2, lsl #2
d0048270:	f3c4 0116 	ubfx	r1, r4, #0, #23
d0048274:	6a06      	ldr	r6, [r0, #32]
d0048276:	6900      	ldr	r0, [r0, #16]
d0048278:	f3c4 55c2 	ubfx	r5, r4, #23, #3
d004827c:	f441 0100 	orr.w	r1, r1, #8388608	; 0x800000
d0048280:	40a9      	lsls	r1, r5
d0048282:	f853 5022 	ldr.w	r5, [r3, r2, lsl #2]
d0048286:	fba1 6706 	umull	r6, r7, r1, r6
d004828a:	fb05 f301 	mul.w	r3, r5, r1
d004828e:	463a      	mov	r2, r7
d0048290:	fbe0 2301 	umlal	r2, r3, r0, r1
d0048294:	1c11      	adds	r1, r2, #0
d0048296:	f143 5600 	adc.w	r6, r3, #536870912	; 0x20000000
d004829a:	2000      	movs	r0, #0
d004829c:	1a10      	subs	r0, r2, r0
d004829e:	f006 4140 	and.w	r1, r6, #3221225472	; 0xc0000000
d00482a2:	eb63 0101 	sbc.w	r1, r3, r1
d00482a6:	f000 f9b9 	bl	d004861c <__aeabi_l2d>
d00482aa:	0fb5      	lsrs	r5, r6, #30
d00482ac:	4a12      	ldr	r2, [pc, #72]	; (d00482f8 <sinf+0x138>)
d00482ae:	eb05 73d4 	add.w	r3, r5, r4, lsr #31
d00482b2:	ed9f 0b0f 	vldr	d0, [pc, #60]	; d00482f0 <sinf+0x130>
d00482b6:	ec41 0b17 	vmov	d7, r0, r1
d00482ba:	f003 0103 	and.w	r1, r3, #3
d00482be:	eb02 01c1 	add.w	r1, r2, r1, lsl #3
d00482c2:	ee27 0b00 	vmul.f64	d0, d7, d0
d00482c6:	ed91 7b00 	vldr	d7, [r1]
d00482ca:	ee20 1b00 	vmul.f64	d1, d0, d0
d00482ce:	f013 0f02 	tst.w	r3, #2
d00482d2:	f102 0070 	add.w	r0, r2, #112	; 0x70
d00482d6:	4629      	mov	r1, r5
d00482d8:	bf08      	it	eq
d00482da:	4610      	moveq	r0, r2
d00482dc:	ee27 0b00 	vmul.f64	d0, d7, d0
d00482e0:	e790      	b.n	d0048204 <sinf+0x44>
d00482e2:	b003      	add	sp, #12
d00482e4:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
d00482e8:	f7ff be52 	b.w	d0047f90 <__math_invalidf>
d00482ec:	f3af 8000 	nop.w
d00482f0:	54442d18 	.word	0x54442d18
d00482f4:	3c1921fb 	.word	0x3c1921fb
d00482f8:	d0048af0 	.word	0xd0048af0
d00482fc:	d0048a90 	.word	0xd0048a90

d0048300 <__aeabi_drsub>:
d0048300:	f081 4100 	eor.w	r1, r1, #2147483648	; 0x80000000
d0048304:	e002      	b.n	d004830c <__adddf3>
d0048306:	bf00      	nop

d0048308 <__aeabi_dsub>:
d0048308:	f083 4300 	eor.w	r3, r3, #2147483648	; 0x80000000

d004830c <__adddf3>:
d004830c:	b530      	push	{r4, r5, lr}
d004830e:	ea4f 0441 	mov.w	r4, r1, lsl #1
d0048312:	ea4f 0543 	mov.w	r5, r3, lsl #1
d0048316:	ea94 0f05 	teq	r4, r5
d004831a:	bf08      	it	eq
d004831c:	ea90 0f02 	teqeq	r0, r2
d0048320:	bf1f      	itttt	ne
d0048322:	ea54 0c00 	orrsne.w	ip, r4, r0
d0048326:	ea55 0c02 	orrsne.w	ip, r5, r2
d004832a:	ea7f 5c64 	mvnsne.w	ip, r4, asr #21
d004832e:	ea7f 5c65 	mvnsne.w	ip, r5, asr #21
d0048332:	f000 80e2 	beq.w	d00484fa <__adddf3+0x1ee>
d0048336:	ea4f 5454 	mov.w	r4, r4, lsr #21
d004833a:	ebd4 5555 	rsbs	r5, r4, r5, lsr #21
d004833e:	bfb8      	it	lt
d0048340:	426d      	neglt	r5, r5
d0048342:	dd0c      	ble.n	d004835e <__adddf3+0x52>
d0048344:	442c      	add	r4, r5
d0048346:	ea80 0202 	eor.w	r2, r0, r2
d004834a:	ea81 0303 	eor.w	r3, r1, r3
d004834e:	ea82 0000 	eor.w	r0, r2, r0
d0048352:	ea83 0101 	eor.w	r1, r3, r1
d0048356:	ea80 0202 	eor.w	r2, r0, r2
d004835a:	ea81 0303 	eor.w	r3, r1, r3
d004835e:	2d36      	cmp	r5, #54	; 0x36
d0048360:	bf88      	it	hi
d0048362:	bd30      	pophi	{r4, r5, pc}
d0048364:	f011 4f00 	tst.w	r1, #2147483648	; 0x80000000
d0048368:	ea4f 3101 	mov.w	r1, r1, lsl #12
d004836c:	f44f 1c80 	mov.w	ip, #1048576	; 0x100000
d0048370:	ea4c 3111 	orr.w	r1, ip, r1, lsr #12
d0048374:	d002      	beq.n	d004837c <__adddf3+0x70>
d0048376:	4240      	negs	r0, r0
d0048378:	eb61 0141 	sbc.w	r1, r1, r1, lsl #1
d004837c:	f013 4f00 	tst.w	r3, #2147483648	; 0x80000000
d0048380:	ea4f 3303 	mov.w	r3, r3, lsl #12
d0048384:	ea4c 3313 	orr.w	r3, ip, r3, lsr #12
d0048388:	d002      	beq.n	d0048390 <__adddf3+0x84>
d004838a:	4252      	negs	r2, r2
d004838c:	eb63 0343 	sbc.w	r3, r3, r3, lsl #1
d0048390:	ea94 0f05 	teq	r4, r5
d0048394:	f000 80a7 	beq.w	d00484e6 <__adddf3+0x1da>
d0048398:	f1a4 0401 	sub.w	r4, r4, #1
d004839c:	f1d5 0e20 	rsbs	lr, r5, #32
d00483a0:	db0d      	blt.n	d00483be <__adddf3+0xb2>
d00483a2:	fa02 fc0e 	lsl.w	ip, r2, lr
d00483a6:	fa22 f205 	lsr.w	r2, r2, r5
d00483aa:	1880      	adds	r0, r0, r2
d00483ac:	f141 0100 	adc.w	r1, r1, #0
d00483b0:	fa03 f20e 	lsl.w	r2, r3, lr
d00483b4:	1880      	adds	r0, r0, r2
d00483b6:	fa43 f305 	asr.w	r3, r3, r5
d00483ba:	4159      	adcs	r1, r3
d00483bc:	e00e      	b.n	d00483dc <__adddf3+0xd0>
d00483be:	f1a5 0520 	sub.w	r5, r5, #32
d00483c2:	f10e 0e20 	add.w	lr, lr, #32
d00483c6:	2a01      	cmp	r2, #1
d00483c8:	fa03 fc0e 	lsl.w	ip, r3, lr
d00483cc:	bf28      	it	cs
d00483ce:	f04c 0c02 	orrcs.w	ip, ip, #2
d00483d2:	fa43 f305 	asr.w	r3, r3, r5
d00483d6:	18c0      	adds	r0, r0, r3
d00483d8:	eb51 71e3 	adcs.w	r1, r1, r3, asr #31
d00483dc:	f001 4500 	and.w	r5, r1, #2147483648	; 0x80000000
d00483e0:	d507      	bpl.n	d00483f2 <__adddf3+0xe6>
d00483e2:	f04f 0e00 	mov.w	lr, #0
d00483e6:	f1dc 0c00 	rsbs	ip, ip, #0
d00483ea:	eb7e 0000 	sbcs.w	r0, lr, r0
d00483ee:	eb6e 0101 	sbc.w	r1, lr, r1
d00483f2:	f5b1 1f80 	cmp.w	r1, #1048576	; 0x100000
d00483f6:	d31b      	bcc.n	d0048430 <__adddf3+0x124>
d00483f8:	f5b1 1f00 	cmp.w	r1, #2097152	; 0x200000
d00483fc:	d30c      	bcc.n	d0048418 <__adddf3+0x10c>
d00483fe:	0849      	lsrs	r1, r1, #1
d0048400:	ea5f 0030 	movs.w	r0, r0, rrx
d0048404:	ea4f 0c3c 	mov.w	ip, ip, rrx
d0048408:	f104 0401 	add.w	r4, r4, #1
d004840c:	ea4f 5244 	mov.w	r2, r4, lsl #21
d0048410:	f512 0f80 	cmn.w	r2, #4194304	; 0x400000
d0048414:	f080 809a 	bcs.w	d004854c <__adddf3+0x240>
d0048418:	f1bc 4f00 	cmp.w	ip, #2147483648	; 0x80000000
d004841c:	bf08      	it	eq
d004841e:	ea5f 0c50 	movseq.w	ip, r0, lsr #1
d0048422:	f150 0000 	adcs.w	r0, r0, #0
d0048426:	eb41 5104 	adc.w	r1, r1, r4, lsl #20
d004842a:	ea41 0105 	orr.w	r1, r1, r5
d004842e:	bd30      	pop	{r4, r5, pc}
d0048430:	ea5f 0c4c 	movs.w	ip, ip, lsl #1
d0048434:	4140      	adcs	r0, r0
d0048436:	eb41 0101 	adc.w	r1, r1, r1
d004843a:	3c01      	subs	r4, #1
d004843c:	bf28      	it	cs
d004843e:	f5b1 1f80 	cmpcs.w	r1, #1048576	; 0x100000
d0048442:	d2e9      	bcs.n	d0048418 <__adddf3+0x10c>
d0048444:	f091 0f00 	teq	r1, #0
d0048448:	bf04      	itt	eq
d004844a:	4601      	moveq	r1, r0
d004844c:	2000      	moveq	r0, #0
d004844e:	fab1 f381 	clz	r3, r1
d0048452:	bf08      	it	eq
d0048454:	3320      	addeq	r3, #32
d0048456:	f1a3 030b 	sub.w	r3, r3, #11
d004845a:	f1b3 0220 	subs.w	r2, r3, #32
d004845e:	da0c      	bge.n	d004847a <__adddf3+0x16e>
d0048460:	320c      	adds	r2, #12
d0048462:	dd08      	ble.n	d0048476 <__adddf3+0x16a>
d0048464:	f102 0c14 	add.w	ip, r2, #20
d0048468:	f1c2 020c 	rsb	r2, r2, #12
d004846c:	fa01 f00c 	lsl.w	r0, r1, ip
d0048470:	fa21 f102 	lsr.w	r1, r1, r2
d0048474:	e00c      	b.n	d0048490 <__adddf3+0x184>
d0048476:	f102 0214 	add.w	r2, r2, #20
d004847a:	bfd8      	it	le
d004847c:	f1c2 0c20 	rsble	ip, r2, #32
d0048480:	fa01 f102 	lsl.w	r1, r1, r2
d0048484:	fa20 fc0c 	lsr.w	ip, r0, ip
d0048488:	bfdc      	itt	le
d004848a:	ea41 010c 	orrle.w	r1, r1, ip
d004848e:	4090      	lslle	r0, r2
d0048490:	1ae4      	subs	r4, r4, r3
d0048492:	bfa2      	ittt	ge
d0048494:	eb01 5104 	addge.w	r1, r1, r4, lsl #20
d0048498:	4329      	orrge	r1, r5
d004849a:	bd30      	popge	{r4, r5, pc}
d004849c:	ea6f 0404 	mvn.w	r4, r4
d00484a0:	3c1f      	subs	r4, #31
d00484a2:	da1c      	bge.n	d00484de <__adddf3+0x1d2>
d00484a4:	340c      	adds	r4, #12
d00484a6:	dc0e      	bgt.n	d00484c6 <__adddf3+0x1ba>
d00484a8:	f104 0414 	add.w	r4, r4, #20
d00484ac:	f1c4 0220 	rsb	r2, r4, #32
d00484b0:	fa20 f004 	lsr.w	r0, r0, r4
d00484b4:	fa01 f302 	lsl.w	r3, r1, r2
d00484b8:	ea40 0003 	orr.w	r0, r0, r3
d00484bc:	fa21 f304 	lsr.w	r3, r1, r4
d00484c0:	ea45 0103 	orr.w	r1, r5, r3
d00484c4:	bd30      	pop	{r4, r5, pc}
d00484c6:	f1c4 040c 	rsb	r4, r4, #12
d00484ca:	f1c4 0220 	rsb	r2, r4, #32
d00484ce:	fa20 f002 	lsr.w	r0, r0, r2
d00484d2:	fa01 f304 	lsl.w	r3, r1, r4
d00484d6:	ea40 0003 	orr.w	r0, r0, r3
d00484da:	4629      	mov	r1, r5
d00484dc:	bd30      	pop	{r4, r5, pc}
d00484de:	fa21 f004 	lsr.w	r0, r1, r4
d00484e2:	4629      	mov	r1, r5
d00484e4:	bd30      	pop	{r4, r5, pc}
d00484e6:	f094 0f00 	teq	r4, #0
d00484ea:	f483 1380 	eor.w	r3, r3, #1048576	; 0x100000
d00484ee:	bf06      	itte	eq
d00484f0:	f481 1180 	eoreq.w	r1, r1, #1048576	; 0x100000
d00484f4:	3401      	addeq	r4, #1
d00484f6:	3d01      	subne	r5, #1
d00484f8:	e74e      	b.n	d0048398 <__adddf3+0x8c>
d00484fa:	ea7f 5c64 	mvns.w	ip, r4, asr #21
d00484fe:	bf18      	it	ne
d0048500:	ea7f 5c65 	mvnsne.w	ip, r5, asr #21
d0048504:	d029      	beq.n	d004855a <__adddf3+0x24e>
d0048506:	ea94 0f05 	teq	r4, r5
d004850a:	bf08      	it	eq
d004850c:	ea90 0f02 	teqeq	r0, r2
d0048510:	d005      	beq.n	d004851e <__adddf3+0x212>
d0048512:	ea54 0c00 	orrs.w	ip, r4, r0
d0048516:	bf04      	itt	eq
d0048518:	4619      	moveq	r1, r3
d004851a:	4610      	moveq	r0, r2
d004851c:	bd30      	pop	{r4, r5, pc}
d004851e:	ea91 0f03 	teq	r1, r3
d0048522:	bf1e      	ittt	ne
d0048524:	2100      	movne	r1, #0
d0048526:	2000      	movne	r0, #0
d0048528:	bd30      	popne	{r4, r5, pc}
d004852a:	ea5f 5c54 	movs.w	ip, r4, lsr #21
d004852e:	d105      	bne.n	d004853c <__adddf3+0x230>
d0048530:	0040      	lsls	r0, r0, #1
d0048532:	4149      	adcs	r1, r1
d0048534:	bf28      	it	cs
d0048536:	f041 4100 	orrcs.w	r1, r1, #2147483648	; 0x80000000
d004853a:	bd30      	pop	{r4, r5, pc}
d004853c:	f514 0480 	adds.w	r4, r4, #4194304	; 0x400000
d0048540:	bf3c      	itt	cc
d0048542:	f501 1180 	addcc.w	r1, r1, #1048576	; 0x100000
d0048546:	bd30      	popcc	{r4, r5, pc}
d0048548:	f001 4500 	and.w	r5, r1, #2147483648	; 0x80000000
d004854c:	f045 41fe 	orr.w	r1, r5, #2130706432	; 0x7f000000
d0048550:	f441 0170 	orr.w	r1, r1, #15728640	; 0xf00000
d0048554:	f04f 0000 	mov.w	r0, #0
d0048558:	bd30      	pop	{r4, r5, pc}
d004855a:	ea7f 5c64 	mvns.w	ip, r4, asr #21
d004855e:	bf1a      	itte	ne
d0048560:	4619      	movne	r1, r3
d0048562:	4610      	movne	r0, r2
d0048564:	ea7f 5c65 	mvnseq.w	ip, r5, asr #21
d0048568:	bf1c      	itt	ne
d004856a:	460b      	movne	r3, r1
d004856c:	4602      	movne	r2, r0
d004856e:	ea50 3401 	orrs.w	r4, r0, r1, lsl #12
d0048572:	bf06      	itte	eq
d0048574:	ea52 3503 	orrseq.w	r5, r2, r3, lsl #12
d0048578:	ea91 0f03 	teqeq	r1, r3
d004857c:	f441 2100 	orrne.w	r1, r1, #524288	; 0x80000
d0048580:	bd30      	pop	{r4, r5, pc}
d0048582:	bf00      	nop

d0048584 <__aeabi_ui2d>:
d0048584:	f090 0f00 	teq	r0, #0
d0048588:	bf04      	itt	eq
d004858a:	2100      	moveq	r1, #0
d004858c:	4770      	bxeq	lr
d004858e:	b530      	push	{r4, r5, lr}
d0048590:	f44f 6480 	mov.w	r4, #1024	; 0x400
d0048594:	f104 0432 	add.w	r4, r4, #50	; 0x32
d0048598:	f04f 0500 	mov.w	r5, #0
d004859c:	f04f 0100 	mov.w	r1, #0
d00485a0:	e750      	b.n	d0048444 <__adddf3+0x138>
d00485a2:	bf00      	nop

d00485a4 <__aeabi_i2d>:
d00485a4:	f090 0f00 	teq	r0, #0
d00485a8:	bf04      	itt	eq
d00485aa:	2100      	moveq	r1, #0
d00485ac:	4770      	bxeq	lr
d00485ae:	b530      	push	{r4, r5, lr}
d00485b0:	f44f 6480 	mov.w	r4, #1024	; 0x400
d00485b4:	f104 0432 	add.w	r4, r4, #50	; 0x32
d00485b8:	f010 4500 	ands.w	r5, r0, #2147483648	; 0x80000000
d00485bc:	bf48      	it	mi
d00485be:	4240      	negmi	r0, r0
d00485c0:	f04f 0100 	mov.w	r1, #0
d00485c4:	e73e      	b.n	d0048444 <__adddf3+0x138>
d00485c6:	bf00      	nop

d00485c8 <__aeabi_f2d>:
d00485c8:	0042      	lsls	r2, r0, #1
d00485ca:	ea4f 01e2 	mov.w	r1, r2, asr #3
d00485ce:	ea4f 0131 	mov.w	r1, r1, rrx
d00485d2:	ea4f 7002 	mov.w	r0, r2, lsl #28
d00485d6:	bf1f      	itttt	ne
d00485d8:	f012 437f 	andsne.w	r3, r2, #4278190080	; 0xff000000
d00485dc:	f093 4f7f 	teqne	r3, #4278190080	; 0xff000000
d00485e0:	f081 5160 	eorne.w	r1, r1, #939524096	; 0x38000000
d00485e4:	4770      	bxne	lr
d00485e6:	f032 427f 	bics.w	r2, r2, #4278190080	; 0xff000000
d00485ea:	bf08      	it	eq
d00485ec:	4770      	bxeq	lr
d00485ee:	f093 4f7f 	teq	r3, #4278190080	; 0xff000000
d00485f2:	bf04      	itt	eq
d00485f4:	f441 2100 	orreq.w	r1, r1, #524288	; 0x80000
d00485f8:	4770      	bxeq	lr
d00485fa:	b530      	push	{r4, r5, lr}
d00485fc:	f44f 7460 	mov.w	r4, #896	; 0x380
d0048600:	f001 4500 	and.w	r5, r1, #2147483648	; 0x80000000
d0048604:	f021 4100 	bic.w	r1, r1, #2147483648	; 0x80000000
d0048608:	e71c      	b.n	d0048444 <__adddf3+0x138>
d004860a:	bf00      	nop

d004860c <__aeabi_ul2d>:
d004860c:	ea50 0201 	orrs.w	r2, r0, r1
d0048610:	bf08      	it	eq
d0048612:	4770      	bxeq	lr
d0048614:	b530      	push	{r4, r5, lr}
d0048616:	f04f 0500 	mov.w	r5, #0
d004861a:	e00a      	b.n	d0048632 <__aeabi_l2d+0x16>

d004861c <__aeabi_l2d>:
d004861c:	ea50 0201 	orrs.w	r2, r0, r1
d0048620:	bf08      	it	eq
d0048622:	4770      	bxeq	lr
d0048624:	b530      	push	{r4, r5, lr}
d0048626:	f011 4500 	ands.w	r5, r1, #2147483648	; 0x80000000
d004862a:	d502      	bpl.n	d0048632 <__aeabi_l2d+0x16>
d004862c:	4240      	negs	r0, r0
d004862e:	eb61 0141 	sbc.w	r1, r1, r1, lsl #1
d0048632:	f44f 6480 	mov.w	r4, #1024	; 0x400
d0048636:	f104 0432 	add.w	r4, r4, #50	; 0x32
d004863a:	ea5f 5c91 	movs.w	ip, r1, lsr #22
d004863e:	f43f aed8 	beq.w	d00483f2 <__adddf3+0xe6>
d0048642:	f04f 0203 	mov.w	r2, #3
d0048646:	ea5f 0cdc 	movs.w	ip, ip, lsr #3
d004864a:	bf18      	it	ne
d004864c:	3203      	addne	r2, #3
d004864e:	ea5f 0cdc 	movs.w	ip, ip, lsr #3
d0048652:	bf18      	it	ne
d0048654:	3203      	addne	r2, #3
d0048656:	eb02 02dc 	add.w	r2, r2, ip, lsr #3
d004865a:	f1c2 0320 	rsb	r3, r2, #32
d004865e:	fa00 fc03 	lsl.w	ip, r0, r3
d0048662:	fa20 f002 	lsr.w	r0, r0, r2
d0048666:	fa01 fe03 	lsl.w	lr, r1, r3
d004866a:	ea40 000e 	orr.w	r0, r0, lr
d004866e:	fa21 f102 	lsr.w	r1, r1, r2
d0048672:	4414      	add	r4, r2
d0048674:	e6bd      	b.n	d00483f2 <__adddf3+0xe6>
d0048676:	bf00      	nop
d0048678:	46464952 	.word	0x46464952
d004867c:	00000000 	.word	0x00000000
d0048680:	45564157 	.word	0x45564157
d0048684:	00000000 	.word	0x00000000
d0048688:	6973756d 	.word	0x6973756d
d004868c:	6d2e3263 	.word	0x6d2e3263
d0048690:	0000646f 	.word	0x0000646f
d0048694:	6e756874 	.word	0x6e756874
d0048698:	31726564 	.word	0x31726564
d004869c:	7661772e 	.word	0x7661772e
d00486a0:	00000000 	.word	0x00000000
d00486a4:	6e756874 	.word	0x6e756874
d00486a8:	32726564 	.word	0x32726564
d00486ac:	7661772e 	.word	0x7661772e
d00486b0:	00000000 	.word	0x00000000
d00486b4:	616c7369 	.word	0x616c7369
d00486b8:	2e78646e 	.word	0x2e78646e
d00486bc:	64336273 	.word	0x64336273
d00486c0:	00000000 	.word	0x00000000
d00486c4:	72726163 	.word	0x72726163
d00486c8:	2e726569 	.word	0x2e726569
d00486cc:	64336273 	.word	0x64336273
d00486d0:	00000000 	.word	0x00000000
d00486d4:	70696873 	.word	0x70696873
d00486d8:	732e3176 	.word	0x732e3176
d00486dc:	00643362 	.word	0x00643362
d00486e0:	ff5516e3 	.word	0xff5516e3
d00486e4:	ffffffff 	.word	0xffffffff
d00486e8:	ffff0000 	.word	0xffff0000
d00486ec:	ff00ff00 	.word	0xff00ff00
d00486f0:	ff0000ff 	.word	0xff0000ff
d00486f4:	ffffff00 	.word	0xffffff00
d00486f8:	ffff00ff 	.word	0xffff00ff
d00486fc:	ff00ffff 	.word	0xff00ffff
d0048700:	ff808080 	.word	0xff808080
d0048704:	ffff8000 	.word	0xffff8000
d0048708:	ff8000ff 	.word	0xff8000ff
d004870c:	ff0080ff 	.word	0xff0080ff
d0048710:	ff80ff00 	.word	0xff80ff00
d0048714:	ffff0080 	.word	0xffff0080
d0048718:	ff00ff80 	.word	0xff00ff80
d004871c:	ffc0c0c0 	.word	0xffc0c0c0
d0048720:	3f800000 	.word	0x3f800000
d0048724:	3f400000 	.word	0x3f400000
d0048728:	3f0ccccd 	.word	0x3f0ccccd
d004872c:	3eb33333 	.word	0x3eb33333
d0048730:	3e4ccccd 	.word	0x3e4ccccd
d0048734:	bf800000 	.word	0xbf800000
d0048738:	bf000000 	.word	0xbf000000
d004873c:	3e99999a 	.word	0x3e99999a

d0048740 <bayer4x4>:
d0048740:	0a020800 060e040c 09010b03 050d070f     ................
	...
d0048778:	3f800000 00000000 00000000 00000000     ...?............
d0048788:	3f800000 00000000 00000000 00000000     ...?............
d0048798:	3f800000 3a8312c5 3c23d70a 447a0000     ...?...:..#<..zD
	...

d00487c0 <__sf_fake_stderr>:
	...

d00487e0 <__sf_fake_stdin>:
	...

d0048800 <__sf_fake_stdout>:
	...

d0048820 <_global_impure_ptr>:
d0048820:	d0048fe8 00000000                       ........

d0048828 <__exp2f_data>:
d0048828:	00000000 3ff00000 d3158574 3fefd9b0     .......?t......?
d0048838:	6cf9890f 3fefb558 d0125b51 3fef9301     ...lX..?Q[.....?
d0048848:	3c7d517b 3fef72b8 3168b9aa 3fef5487     {Q}<.r.?..h1.T.?
d0048858:	6e756238 3fef387a f51fdee1 3fef1e9d     8bunz8.?.......?
d0048868:	0a31b715 3fef06fe 373aa9cb 3feef1a7     ..1....?..:7...?
d0048878:	4c123422 3feedea6 6061892d 3feece08     "4.L...?-.a`...?
d0048888:	d5362a27 3feebfda 569d4f82 3feeb42b     '*6....?.O.V+..?
d0048898:	dd485429 3feeab07 b03a5585 3feea47e     )TH....?.U:.~..?
d00488a8:	667f3bcd 3feea09e e8ec5f74 3fee9f75     .;.f...?t_..u..?
d00488b8:	73eb0187 3feea114 994cce13 3feea589     ...s...?..L....?
d00488c8:	422aa0db 3feeace5 b0cdc5e5 3feeb737     ..*B...?....7..?
d00488d8:	82a3f090 3feec491 b23e255d 3feed503     .......?]%>....?
d00488e8:	995ad3ad 3feee89f f2fb5e47 3feeff76     ..Z....?G^..v..?
d00488f8:	dd85529c 3fef199b dcef9069 3fef3720     .R.....?i... 7.?
d0048908:	dcfba487 3fef5818 337b9b5f 3fef7c97     .....X.?_.{3.|.?
d0048918:	a2a490da 3fefa4af 5b6e4540 3fefd076     .......?@En[v..?
d0048928:	00000000 42e80000 4b912394 3fac6af8     .......B.#.K.j.?
d0048938:	50fac4f3 3fcebfce ff0c52d6 3fe62e42     ...P...?.R..B..?
d0048948:	00000000 43380000 652b82fe 40471547     ......8C..+eG.G@
d0048958:	4b912394 3ebc6af8 50fac4f3 3f2ebfce     .#.K.j.>...P...?
d0048968:	ff0c52d6 3f962e42                       .R..B..?

d0048970 <__logf_data>:
d0048970:	79f8f3be 3ff661ec 808caade bfd57bf7     ...y.a.?.....{..
d0048980:	4aaf883d 3ff571ed a7c06ddb bfd2bef0     =..J.q.?.m......
d0048990:	f0f010b0 3ff49539 7f513a67 bfd01eae     ....9..?g:Q.....
d00489a0:	b0b80385 3ff3c995 a68224e9 bfcb31d8     .......?.$...1..
d00489b0:	0c8864a5 3ff30d19 0ac07758 bfc6574f     .d.....?Xw..OW..
d00489c0:	7b0b8ea0 3ff25e22 c79c8100 bfc1aa2b     ...{"^.?....+...
d00489d0:	4a1a343f 3ff1bb4a ce8c0e5e bfba4e76     ?4.JJ..?^...vN..
d00489e0:	f08ae5ba 3ff12358 5a611ccc bfb1973c     ....X#.?..aZ<...
d00489f0:	419900a7 3ff0953f 38e10c1e bfa252f4     ...A?..?...8.R..
d0048a00:	00000000 3ff00000 00000000 00000000     .......?........
d0048a10:	fd9a47ac 3fee608c 5df25984 3faaa5aa     .G...`.?.Y.]...?
d0048a20:	1f026aa0 3feca4b3 aa362eb4 3fbc5e53     .j.....?..6.S^.?
d0048a30:	576afce6 3feb2036 7720db08 3fc526e5     ..jW6 .?.. w.&.?
d0048a40:	63a1aa2d 3fe9c2d1 0d224770 3fcbc286     -..c...?pG"....?
d0048a50:	037841ed 3fe886e6 c8a07ee1 3fd1058b     .Ax....?.~.....?
d0048a60:	f5534862 3fe767dc 57b6ee09 3fd40430     bHS..g.?...W0..?
d0048a70:	fefa39ef 3fe62e42 48b88334 bfd00ea3     .9..B..?4..H....
d0048a80:	0be00b6a 3fd5575b f20a4123 bfdffffe     j...[W.?#A......

d0048a90 <__inv_pio4>:
d0048a90:	000000a2 0000a2f9 00a2f983 a2f9836e     ............n...
d0048aa0:	f9836e4e 836e4e44 6e4e4415 4e441529     Nn..DNn..DNn).DN
d0048ab0:	441529fc 1529fc27 29fc2757 fc2757d1     .).D'.).W'.).W'.
d0048ac0:	2757d1f5 57d1f534 d1f534dd f534ddc0     ..W'4..W.4....4.
d0048ad0:	34ddc0db ddc0db62 c0db6295 db629599     ...4b....b....b.
d0048ae0:	6295993c 95993c43 993c4390 3c439041     <..bC<...C<.A.C<

d0048af0 <__sincosf_table>:
d0048af0:	00000000 3ff00000 00000000 bff00000     .......?........
d0048b00:	00000000 bff00000 00000000 3ff00000     ...............?
d0048b10:	6dc9c883 41645f30 54442d18 3ff921fb     ...m0_dA.-DT.!.?
d0048b20:	00000000 3ff00000 fd0c621c bfdfffff     .......?.b......
d0048b30:	e1068f19 3fa55553 e89a359d bf56c087     ....SU.?.5....V.
d0048b40:	027bf8c3 3ef99343 5995a603 bfc55554     ..{.C..>...YTU..
d0048b50:	05230bc4 3f811076 3774cf24 bf2994eb     ..#.v..?$.t7..).
d0048b60:	00000000 3ff00000 00000000 bff00000     .......?........
d0048b70:	00000000 bff00000 00000000 3ff00000     ...............?
d0048b80:	6dc9c883 41645f30 54442d18 3ff921fb     ...m0_dA.-DT.!.?
d0048b90:	00000000 bff00000 fd0c621c 3fdfffff     .........b.....?
d0048ba0:	e1068f19 bfa55553 e89a359d 3f56c087     ....SU...5....V?
d0048bb0:	027bf8c3 bef99343 5995a603 bfc55554     ..{.C......YTU..
d0048bc0:	05230bc4 3f811076 3774cf24 bf2994eb     ..#.v..?$.t7..).

Disassembly of section .init:

d0048bd0 <_init>:
d0048bd0:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d0048bd2:	bf00      	nop

Disassembly of section .fini:

d0048bd4 <_fini>:
d0048bd4:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d0048bd6:	bf00      	nop

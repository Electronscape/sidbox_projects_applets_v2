
compiled/applet.elf:     file format elf32-littlearm


Disassembly of section .text:

d0001010 <applet_entry>:
d0001010:	b570      	push	{r4, r5, r6, lr}
d0001012:	4e09      	ldr	r6, [pc, #36]	; (d0001038 <applet_entry+0x28>)
d0001014:	460d      	mov	r5, r1
d0001016:	4604      	mov	r4, r0
d0001018:	2100      	movs	r1, #0
d000101a:	6833      	ldr	r3, [r6, #0]
d000101c:	6898      	ldr	r0, [r3, #8]
d000101e:	f00b ff2b 	bl	d000ce78 <setbuf>
d0001022:	6833      	ldr	r3, [r6, #0]
d0001024:	2100      	movs	r1, #0
d0001026:	68d8      	ldr	r0, [r3, #12]
d0001028:	f00b ff26 	bl	d000ce78 <setbuf>
d000102c:	4629      	mov	r1, r5
d000102e:	4620      	mov	r0, r4
d0001030:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
d0001034:	f009 b894 	b.w	d000a160 <main>
d0001038:	d000e8a4 	.word	0xd000e8a4

d000103c <gfx_createBitmap>:
d000103c:	b510      	push	{r4, lr}
d000103e:	4604      	mov	r4, r0
d0001040:	fb01 f002 	mul.w	r0, r1, r2
d0001044:	b292      	uxth	r2, r2
d0001046:	80a1      	strh	r1, [r4, #4]
d0001048:	60e0      	str	r0, [r4, #12]
d000104a:	80e2      	strh	r2, [r4, #6]
d000104c:	8122      	strh	r2, [r4, #8]
d000104e:	f00b fb1f 	bl	d000c690 <malloc>
d0001052:	6020      	str	r0, [r4, #0]
d0001054:	bd10      	pop	{r4, pc}
d0001056:	bf00      	nop

d0001058 <initMalloc>:
d0001058:	4902      	ldr	r1, [pc, #8]	; (d0001064 <initMalloc+0xc>)
d000105a:	4b03      	ldr	r3, [pc, #12]	; (d0001068 <initMalloc+0x10>)
d000105c:	4a03      	ldr	r2, [pc, #12]	; (d000106c <initMalloc+0x14>)
d000105e:	1a5b      	subs	r3, r3, r1
d0001060:	6013      	str	r3, [r2, #0]
d0001062:	4770      	bx	lr
d0001064:	d0011bb8 	.word	0xd0011bb8
d0001068:	d0600000 	.word	0xd0600000
d000106c:	d000fb24 	.word	0xd000fb24

d0001070 <_write_r>:
d0001070:	3901      	subs	r1, #1
d0001072:	2901      	cmp	r1, #1
d0001074:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d0001076:	d81f      	bhi.n	d00010b8 <_write_r+0x48>
d0001078:	b1e2      	cbz	r2, d00010b4 <_write_r+0x44>
d000107a:	461c      	mov	r4, r3
d000107c:	b1d3      	cbz	r3, d00010b4 <_write_r+0x44>
d000107e:	4d12      	ldr	r5, [pc, #72]	; (d00010c8 <_write_r+0x58>)
d0001080:	682e      	ldr	r6, [r5, #0]
d0001082:	b9ae      	cbnz	r6, d00010b0 <_write_r+0x40>
d0001084:	4f11      	ldr	r7, [pc, #68]	; (d00010cc <_write_r+0x5c>)
d0001086:	2301      	movs	r3, #1
d0001088:	4611      	mov	r1, r2
d000108a:	4630      	mov	r0, r6
d000108c:	602b      	str	r3, [r5, #0]
d000108e:	4622      	mov	r2, r4
d0001090:	7a3b      	ldrb	r3, [r7, #8]
d0001092:	f897 c009 	ldrb.w	ip, [r7, #9]
d0001096:	ea43 230c 	orr.w	r3, r3, ip, lsl #8
d000109a:	f897 c00a 	ldrb.w	ip, [r7, #10]
d000109e:	7aff      	ldrb	r7, [r7, #11]
d00010a0:	ea43 430c 	orr.w	r3, r3, ip, lsl #16
d00010a4:	ea43 6307 	orr.w	r3, r3, r7, lsl #24
d00010a8:	681b      	ldr	r3, [r3, #0]
d00010aa:	685b      	ldr	r3, [r3, #4]
d00010ac:	4798      	blx	r3
d00010ae:	602e      	str	r6, [r5, #0]
d00010b0:	4620      	mov	r0, r4
d00010b2:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d00010b4:	2000      	movs	r0, #0
d00010b6:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d00010b8:	f00b fad2 	bl	d000c660 <__errno>
d00010bc:	2209      	movs	r2, #9
d00010be:	4603      	mov	r3, r0
d00010c0:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d00010c4:	601a      	str	r2, [r3, #0]
d00010c6:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d00010c8:	d000e924 	.word	0xd000e924
d00010cc:	2001f000 	.word	0x2001f000

d00010d0 <_read>:
d00010d0:	b508      	push	{r3, lr}
d00010d2:	f00b fac5 	bl	d000c660 <__errno>
d00010d6:	2258      	movs	r2, #88	; 0x58
d00010d8:	4603      	mov	r3, r0
d00010da:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d00010de:	601a      	str	r2, [r3, #0]
d00010e0:	bd08      	pop	{r3, pc}
d00010e2:	bf00      	nop

d00010e4 <_close>:
d00010e4:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d00010e8:	4770      	bx	lr
d00010ea:	bf00      	nop

d00010ec <_fstat>:
d00010ec:	f44f 5300 	mov.w	r3, #8192	; 0x2000
d00010f0:	2000      	movs	r0, #0
d00010f2:	604b      	str	r3, [r1, #4]
d00010f4:	4770      	bx	lr
d00010f6:	bf00      	nop

d00010f8 <_lseek>:
d00010f8:	2000      	movs	r0, #0
d00010fa:	4770      	bx	lr

d00010fc <_sbrk_r>:
d00010fc:	4b0c      	ldr	r3, [pc, #48]	; (d0001130 <_sbrk_r+0x34>)
d00010fe:	4a0d      	ldr	r2, [pc, #52]	; (d0001134 <_sbrk_r+0x38>)
d0001100:	6818      	ldr	r0, [r3, #0]
d0001102:	b510      	push	{r4, lr}
d0001104:	b918      	cbnz	r0, d000110e <_sbrk_r+0x12>
d0001106:	1dd0      	adds	r0, r2, #7
d0001108:	f020 0007 	bic.w	r0, r0, #7
d000110c:	6018      	str	r0, [r3, #0]
d000110e:	4401      	add	r1, r0
d0001110:	4c09      	ldr	r4, [pc, #36]	; (d0001138 <_sbrk_r+0x3c>)
d0001112:	42a1      	cmp	r1, r4
d0001114:	d803      	bhi.n	d000111e <_sbrk_r+0x22>
d0001116:	4291      	cmp	r1, r2
d0001118:	d301      	bcc.n	d000111e <_sbrk_r+0x22>
d000111a:	6019      	str	r1, [r3, #0]
d000111c:	bd10      	pop	{r4, pc}
d000111e:	f00b fa9f 	bl	d000c660 <__errno>
d0001122:	220c      	movs	r2, #12
d0001124:	4603      	mov	r3, r0
d0001126:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d000112a:	601a      	str	r2, [r3, #0]
d000112c:	bd10      	pop	{r4, pc}
d000112e:	bf00      	nop
d0001130:	d000e920 	.word	0xd000e920
d0001134:	d0011bb8 	.word	0xd0011bb8
d0001138:	d0600000 	.word	0xd0600000

d000113c <_isatty>:
d000113c:	2001      	movs	r0, #1
d000113e:	4770      	bx	lr

d0001140 <_exit>:
d0001140:	e7fe      	b.n	d0001140 <_exit>
d0001142:	bf00      	nop

d0001144 <_getpid>:
d0001144:	2001      	movs	r0, #1
d0001146:	4770      	bx	lr

d0001148 <_kill>:
d0001148:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d000114c:	4770      	bx	lr
d000114e:	bf00      	nop

d0001150 <stbi__idct_block>:
d0001150:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0001154:	f102 0310 	add.w	r3, r2, #16
d0001158:	b0c7      	sub	sp, #284	; 0x11c
d000115a:	4690      	mov	r8, r2
d000115c:	f10d 0e18 	add.w	lr, sp, #24
d0001160:	9005      	str	r0, [sp, #20]
d0001162:	9104      	str	r1, [sp, #16]
d0001164:	9303      	str	r3, [sp, #12]
d0001166:	e09c      	b.n	d00012a2 <stbi__idct_block+0x152>
d0001168:	2f00      	cmp	r7, #0
d000116a:	f040 80a6 	bne.w	d00012ba <stbi__idct_block+0x16a>
d000116e:	f1b9 0f00 	cmp.w	r9, #0
d0001172:	f040 80a2 	bne.w	d00012ba <stbi__idct_block+0x16a>
d0001176:	f9b8 3050 	ldrsh.w	r3, [r8, #80]	; 0x50
d000117a:	9301      	str	r3, [sp, #4]
d000117c:	f1bb 0f00 	cmp.w	fp, #0
d0001180:	f000 81dc 	beq.w	d000153c <stbi__idct_block+0x3ec>
d0001184:	464f      	mov	r7, r9
d0001186:	f9b8 3060 	ldrsh.w	r3, [r8, #96]	; 0x60
d000118a:	4619      	mov	r1, r3
d000118c:	f9b8 3070 	ldrsh.w	r3, [r8, #112]	; 0x70
d0001190:	461d      	mov	r5, r3
d0001192:	9302      	str	r3, [sp, #8]
d0001194:	187c      	adds	r4, r7, r1
d0001196:	eb05 0c09 	add.w	ip, r5, r9
d000119a:	e9dd 2300 	ldrd	r2, r3, [sp]
d000119e:	1898      	adds	r0, r3, r2
d00011a0:	460a      	mov	r2, r1
d00011a2:	f640 01a9 	movw	r1, #2217	; 0x8a9
d00011a6:	461e      	mov	r6, r3
d00011a8:	eb0c 0300 	add.w	r3, ip, r0
d00011ac:	fb01 f404 	mul.w	r4, r1, r4
d00011b0:	9900      	ldr	r1, [sp, #0]
d00011b2:	444e      	add	r6, r9
d00011b4:	440d      	add	r5, r1
d00011b6:	f241 21d0 	movw	r1, #4816	; 0x12d0
d00011ba:	fb01 fa03 	mul.w	sl, r1, r3
d00011be:	49db      	ldr	r1, [pc, #876]	; (d000152c <stbi__idct_block+0x3dc>)
d00011c0:	f9b8 3000 	ldrsh.w	r3, [r8]
d00011c4:	fb01 fc0c 	mul.w	ip, r1, ip
d00011c8:	49d9      	ldr	r1, [pc, #868]	; (d0001530 <stbi__idct_block+0x3e0>)
d00011ca:	fb01 f000 	mul.w	r0, r1, r0
d00011ce:	f46f 5124 	mvn.w	r1, #10496	; 0x2900
d00011d2:	fb01 a606 	mla	r6, r1, r6, sl
d00011d6:	f640 413f 	movw	r1, #3135	; 0xc3f
d00011da:	fb17 4701 	smlabb	r7, r7, r1, r4
d00011de:	49d5      	ldr	r1, [pc, #852]	; (d0001534 <stbi__idct_block+0x3e4>)
d00011e0:	fb01 a505 	mla	r5, r1, r5, sl
d00011e4:	f24e 2171 	movw	r1, #57969	; 0xe271
d00011e8:	fb12 4401 	smlabb	r4, r2, r1, r4
d00011ec:	eb05 0a00 	add.w	sl, r5, r0
d00011f0:	eb03 010b 	add.w	r1, r3, fp
d00011f4:	4430      	add	r0, r6
d00011f6:	eba3 030b 	sub.w	r3, r3, fp
d00011fa:	4466      	add	r6, ip
d00011fc:	4465      	add	r5, ip
d00011fe:	f641 0b05 	movw	fp, #6149	; 0x1805
d0001202:	f243 1c2a 	movw	ip, #12586	; 0x312a
d0001206:	9a00      	ldr	r2, [sp, #0]
d0001208:	fb19 660c 	smlabb	r6, r9, ip, r6
d000120c:	eb07 3901 	add.w	r9, r7, r1, lsl #12
d0001210:	fb12 a20b 	smlabb	r2, r2, fp, sl
d0001214:	eb04 3c03 	add.w	ip, r4, r3, lsl #12
d0001218:	f242 0bda 	movw	fp, #8410	; 0x20da
d000121c:	f240 4ac7 	movw	sl, #1223	; 0x4c7
d0001220:	ebc7 3101 	rsb	r1, r7, r1, lsl #12
d0001224:	9f01      	ldr	r7, [sp, #4]
d0001226:	ebc4 3303 	rsb	r3, r4, r3, lsl #12
d000122a:	9c02      	ldr	r4, [sp, #8]
d000122c:	fb17 000b 	smlabb	r0, r7, fp, r0
d0001230:	f509 7900 	add.w	r9, r9, #512	; 0x200
d0001234:	fb14 550a 	smlabb	r5, r4, sl, r5
d0001238:	f503 7300 	add.w	r3, r3, #512	; 0x200
d000123c:	f501 7100 	add.w	r1, r1, #512	; 0x200
d0001240:	f50c 7c00 	add.w	ip, ip, #512	; 0x200
d0001244:	eb02 0409 	add.w	r4, r2, r9
d0001248:	eb00 0b03 	add.w	fp, r0, r3
d000124c:	eb06 0a0c 	add.w	sl, r6, ip
d0001250:	186f      	adds	r7, r5, r1
d0001252:	1a18      	subs	r0, r3, r0
d0001254:	1b49      	subs	r1, r1, r5
d0001256:	eba9 0202 	sub.w	r2, r9, r2
d000125a:	ebac 0c06 	sub.w	ip, ip, r6
d000125e:	12a4      	asrs	r4, r4, #10
d0001260:	1292      	asrs	r2, r2, #10
d0001262:	ea4f 25aa 	mov.w	r5, sl, asr #10
d0001266:	f8ce 4000 	str.w	r4, [lr]
d000126a:	ea4f 26ac 	mov.w	r6, ip, asr #10
d000126e:	f8ce 20e0 	str.w	r2, [lr, #224]	; 0xe0
d0001272:	ea4f 23ab 	mov.w	r3, fp, asr #10
d0001276:	f8ce 5020 	str.w	r5, [lr, #32]
d000127a:	1280      	asrs	r0, r0, #10
d000127c:	f8ce 60c0 	str.w	r6, [lr, #192]	; 0xc0
d0001280:	12bf      	asrs	r7, r7, #10
d0001282:	f8ce 3040 	str.w	r3, [lr, #64]	; 0x40
d0001286:	1289      	asrs	r1, r1, #10
d0001288:	f8ce 00a0 	str.w	r0, [lr, #160]	; 0xa0
d000128c:	f8ce 7060 	str.w	r7, [lr, #96]	; 0x60
d0001290:	f8ce 1080 	str.w	r1, [lr, #128]	; 0x80
d0001294:	f108 0802 	add.w	r8, r8, #2
d0001298:	9b03      	ldr	r3, [sp, #12]
d000129a:	f10e 0e04 	add.w	lr, lr, #4
d000129e:	4543      	cmp	r3, r8
d00012a0:	d00f      	beq.n	d00012c2 <stbi__idct_block+0x172>
d00012a2:	f9b8 3010 	ldrsh.w	r3, [r8, #16]
d00012a6:	f9b8 7020 	ldrsh.w	r7, [r8, #32]
d00012aa:	f9b8 9030 	ldrsh.w	r9, [r8, #48]	; 0x30
d00012ae:	f9b8 b040 	ldrsh.w	fp, [r8, #64]	; 0x40
d00012b2:	9300      	str	r3, [sp, #0]
d00012b4:	2b00      	cmp	r3, #0
d00012b6:	f43f af57 	beq.w	d0001168 <stbi__idct_block+0x18>
d00012ba:	f9b8 3050 	ldrsh.w	r3, [r8, #80]	; 0x50
d00012be:	9301      	str	r3, [sp, #4]
d00012c0:	e761      	b.n	d0001186 <stbi__idct_block+0x36>
d00012c2:	f10d 0c38 	add.w	ip, sp, #56	; 0x38
d00012c6:	9905      	ldr	r1, [sp, #20]
d00012c8:	e064      	b.n	d0001394 <stbi__idct_block+0x244>
d00012ca:	ebab 0b04 	sub.w	fp, fp, r4
d00012ce:	2800      	cmp	r0, #0
d00012d0:	bfac      	ite	ge
d00012d2:	20ff      	movge	r0, #255	; 0xff
d00012d4:	2000      	movlt	r0, #0
d00012d6:	f1bb 7f00 	cmp.w	fp, #33554432	; 0x2000000
d00012da:	ea4f 446b 	mov.w	r4, fp, asr #17
d00012de:	7008      	strb	r0, [r1, #0]
d00012e0:	f0c0 80de 	bcc.w	d00014a0 <stbi__idct_block+0x350>
d00012e4:	eb0a 0007 	add.w	r0, sl, r7
d00012e8:	2c00      	cmp	r4, #0
d00012ea:	bfac      	ite	ge
d00012ec:	24ff      	movge	r4, #255	; 0xff
d00012ee:	2400      	movlt	r4, #0
d00012f0:	f1b0 7f00 	cmp.w	r0, #33554432	; 0x2000000
d00012f4:	71cc      	strb	r4, [r1, #7]
d00012f6:	ea4f 4460 	mov.w	r4, r0, asr #17
d00012fa:	f0c0 80db 	bcc.w	d00014b4 <stbi__idct_block+0x364>
d00012fe:	ebaa 0707 	sub.w	r7, sl, r7
d0001302:	2c00      	cmp	r4, #0
d0001304:	bfac      	ite	ge
d0001306:	20ff      	movge	r0, #255	; 0xff
d0001308:	2000      	movlt	r0, #0
d000130a:	f1b7 7f00 	cmp.w	r7, #33554432	; 0x2000000
d000130e:	ea4f 4467 	mov.w	r4, r7, asr #17
d0001312:	7048      	strb	r0, [r1, #1]
d0001314:	f0c0 80d8 	bcc.w	d00014c8 <stbi__idct_block+0x378>
d0001318:	eb03 0008 	add.w	r0, r3, r8
d000131c:	2c00      	cmp	r4, #0
d000131e:	bfac      	ite	ge
d0001320:	24ff      	movge	r4, #255	; 0xff
d0001322:	2400      	movlt	r4, #0
d0001324:	f1b0 7f00 	cmp.w	r0, #33554432	; 0x2000000
d0001328:	718c      	strb	r4, [r1, #6]
d000132a:	ea4f 4460 	mov.w	r4, r0, asr #17
d000132e:	f0c0 80d5 	bcc.w	d00014dc <stbi__idct_block+0x38c>
d0001332:	eba3 0808 	sub.w	r8, r3, r8
d0001336:	2c00      	cmp	r4, #0
d0001338:	bfac      	ite	ge
d000133a:	20ff      	movge	r0, #255	; 0xff
d000133c:	2000      	movlt	r0, #0
d000133e:	f1b8 7f00 	cmp.w	r8, #33554432	; 0x2000000
d0001342:	7088      	strb	r0, [r1, #2]
d0001344:	ea4f 4068 	mov.w	r0, r8, asr #17
d0001348:	f0c0 80d2 	bcc.w	d00014f0 <stbi__idct_block+0x3a0>
d000134c:	18b3      	adds	r3, r6, r2
d000134e:	2800      	cmp	r0, #0
d0001350:	bfac      	ite	ge
d0001352:	20ff      	movge	r0, #255	; 0xff
d0001354:	2000      	movlt	r0, #0
d0001356:	f1b3 7f00 	cmp.w	r3, #33554432	; 0x2000000
d000135a:	7148      	strb	r0, [r1, #5]
d000135c:	ea4f 4063 	mov.w	r0, r3, asr #17
d0001360:	f0c0 80cf 	bcc.w	d0001502 <stbi__idct_block+0x3b2>
d0001364:	1ab2      	subs	r2, r6, r2
d0001366:	2800      	cmp	r0, #0
d0001368:	bfac      	ite	ge
d000136a:	23ff      	movge	r3, #255	; 0xff
d000136c:	2300      	movlt	r3, #0
d000136e:	f1b2 7f00 	cmp.w	r2, #33554432	; 0x2000000
d0001372:	70cb      	strb	r3, [r1, #3]
d0001374:	ea4f 4362 	mov.w	r3, r2, asr #17
d0001378:	f0c0 80cc 	bcc.w	d0001514 <stbi__idct_block+0x3c4>
d000137c:	43db      	mvns	r3, r3
d000137e:	f10c 0c20 	add.w	ip, ip, #32
d0001382:	0fdb      	lsrs	r3, r3, #31
d0001384:	425b      	negs	r3, r3
d0001386:	710b      	strb	r3, [r1, #4]
d0001388:	9b04      	ldr	r3, [sp, #16]
d000138a:	4419      	add	r1, r3
d000138c:	ab4e      	add	r3, sp, #312	; 0x138
d000138e:	4563      	cmp	r3, ip
d0001390:	f000 80c9 	beq.w	d0001526 <stbi__idct_block+0x3d6>
d0001394:	f85c 3c1c 	ldr.w	r3, [ip, #-28]
d0001398:	f46f 5824 	mvn.w	r8, #10496	; 0x2900
d000139c:	f85c 0c0c 	ldr.w	r0, [ip, #-12]
d00013a0:	f641 0a05 	movw	sl, #6149	; 0x1805
d00013a4:	9300      	str	r3, [sp, #0]
d00013a6:	f243 192a 	movw	r9, #12586	; 0x312a
d00013aa:	f85c 3c14 	ldr.w	r3, [ip, #-20]
d00013ae:	f85c 2c04 	ldr.w	r2, [ip, #-4]
d00013b2:	4d5f      	ldr	r5, [pc, #380]	; (d0001530 <stbi__idct_block+0x3e0>)
d00013b4:	189a      	adds	r2, r3, r2
d00013b6:	4403      	add	r3, r0
d00013b8:	f85c 4c08 	ldr.w	r4, [ip, #-8]
d00013bc:	9301      	str	r3, [sp, #4]
d00013be:	9b00      	ldr	r3, [sp, #0]
d00013c0:	f85c 6c18 	ldr.w	r6, [ip, #-24]
d00013c4:	4418      	add	r0, r3
d00013c6:	19a7      	adds	r7, r4, r6
d00013c8:	eb00 0b02 	add.w	fp, r0, r2
d00013cc:	fb05 f000 	mul.w	r0, r5, r0
d00013d0:	f241 25d0 	movw	r5, #4816	; 0x12d0
d00013d4:	fb05 fb0b 	mul.w	fp, r5, fp
d00013d8:	f640 05a9 	movw	r5, #2217	; 0x8a9
d00013dc:	fb05 f707 	mul.w	r7, r5, r7
d00013e0:	f85c 5c04 	ldr.w	r5, [ip, #-4]
d00013e4:	eb03 0e05 	add.w	lr, r3, r5
d00013e8:	4d50      	ldr	r5, [pc, #320]	; (d000152c <stbi__idct_block+0x3dc>)
d00013ea:	9b01      	ldr	r3, [sp, #4]
d00013ec:	fb05 f202 	mul.w	r2, r5, r2
d00013f0:	4d50      	ldr	r5, [pc, #320]	; (d0001534 <stbi__idct_block+0x3e4>)
d00013f2:	fb08 b803 	mla	r8, r8, r3, fp
d00013f6:	f85c 3c10 	ldr.w	r3, [ip, #-16]
d00013fa:	fb05 be0e 	mla	lr, r5, lr, fp
d00013fe:	f640 453f 	movw	r5, #3135	; 0xc3f
d0001402:	eb00 0b0e 	add.w	fp, r0, lr
d0001406:	4440      	add	r0, r8
d0001408:	fb05 7606 	mla	r6, r5, r6, r7
d000140c:	4d4a      	ldr	r5, [pc, #296]	; (d0001538 <stbi__idct_block+0x3e8>)
d000140e:	9001      	str	r0, [sp, #4]
d0001410:	9800      	ldr	r0, [sp, #0]
d0001412:	fb05 7504 	mla	r5, r5, r4, r7
d0001416:	eb02 0708 	add.w	r7, r2, r8
d000141a:	4472      	add	r2, lr
d000141c:	fb0a b400 	mla	r4, sl, r0, fp
d0001420:	f85c 0c20 	ldr.w	r0, [ip, #-32]
d0001424:	eb03 0800 	add.w	r8, r3, r0
d0001428:	1ac3      	subs	r3, r0, r3
d000142a:	f85c 0c14 	ldr.w	r0, [ip, #-20]
d000142e:	eb06 3b08 	add.w	fp, r6, r8, lsl #12
d0001432:	eb05 3a03 	add.w	sl, r5, r3, lsl #12
d0001436:	fb09 7700 	mla	r7, r9, r0, r7
d000143a:	f10b 7b80 	add.w	fp, fp, #16777216	; 0x1000000
d000143e:	ebc6 3608 	rsb	r6, r6, r8, lsl #12
d0001442:	ebc5 3303 	rsb	r3, r5, r3, lsl #12
d0001446:	f85c 0c04 	ldr.w	r0, [ip, #-4]
d000144a:	f50b 3b80 	add.w	fp, fp, #65536	; 0x10000
d000144e:	f240 45c7 	movw	r5, #1223	; 0x4c7
d0001452:	f242 08da 	movw	r8, #8410	; 0x20da
d0001456:	f106 7680 	add.w	r6, r6, #16777216	; 0x1000000
d000145a:	eb0b 0e04 	add.w	lr, fp, r4
d000145e:	fb05 2200 	mla	r2, r5, r0, r2
d0001462:	f10a 7a80 	add.w	sl, sl, #16777216	; 0x1000000
d0001466:	f85c 0c0c 	ldr.w	r0, [ip, #-12]
d000146a:	9d01      	ldr	r5, [sp, #4]
d000146c:	f103 7380 	add.w	r3, r3, #16777216	; 0x1000000
d0001470:	f1be 7f00 	cmp.w	lr, #33554432	; 0x2000000
d0001474:	f506 3680 	add.w	r6, r6, #65536	; 0x10000
d0001478:	fb08 5800 	mla	r8, r8, r0, r5
d000147c:	f50a 3a80 	add.w	sl, sl, #65536	; 0x10000
d0001480:	ea4f 406e 	mov.w	r0, lr, asr #17
d0001484:	f503 3380 	add.w	r3, r3, #65536	; 0x10000
d0001488:	f4bf af1f 	bcs.w	d00012ca <stbi__idct_block+0x17a>
d000148c:	ebab 0b04 	sub.w	fp, fp, r4
d0001490:	b2c0      	uxtb	r0, r0
d0001492:	f1bb 7f00 	cmp.w	fp, #33554432	; 0x2000000
d0001496:	ea4f 446b 	mov.w	r4, fp, asr #17
d000149a:	7008      	strb	r0, [r1, #0]
d000149c:	f4bf af22 	bcs.w	d00012e4 <stbi__idct_block+0x194>
d00014a0:	eb0a 0007 	add.w	r0, sl, r7
d00014a4:	b2e4      	uxtb	r4, r4
d00014a6:	f1b0 7f00 	cmp.w	r0, #33554432	; 0x2000000
d00014aa:	71cc      	strb	r4, [r1, #7]
d00014ac:	ea4f 4460 	mov.w	r4, r0, asr #17
d00014b0:	f4bf af25 	bcs.w	d00012fe <stbi__idct_block+0x1ae>
d00014b4:	ebaa 0707 	sub.w	r7, sl, r7
d00014b8:	b2e0      	uxtb	r0, r4
d00014ba:	f1b7 7f00 	cmp.w	r7, #33554432	; 0x2000000
d00014be:	ea4f 4467 	mov.w	r4, r7, asr #17
d00014c2:	7048      	strb	r0, [r1, #1]
d00014c4:	f4bf af28 	bcs.w	d0001318 <stbi__idct_block+0x1c8>
d00014c8:	eb03 0008 	add.w	r0, r3, r8
d00014cc:	b2e4      	uxtb	r4, r4
d00014ce:	f1b0 7f00 	cmp.w	r0, #33554432	; 0x2000000
d00014d2:	718c      	strb	r4, [r1, #6]
d00014d4:	ea4f 4460 	mov.w	r4, r0, asr #17
d00014d8:	f4bf af2b 	bcs.w	d0001332 <stbi__idct_block+0x1e2>
d00014dc:	eba3 0808 	sub.w	r8, r3, r8
d00014e0:	b2e0      	uxtb	r0, r4
d00014e2:	f1b8 7f00 	cmp.w	r8, #33554432	; 0x2000000
d00014e6:	7088      	strb	r0, [r1, #2]
d00014e8:	ea4f 4068 	mov.w	r0, r8, asr #17
d00014ec:	f4bf af2e 	bcs.w	d000134c <stbi__idct_block+0x1fc>
d00014f0:	18b3      	adds	r3, r6, r2
d00014f2:	b2c0      	uxtb	r0, r0
d00014f4:	f1b3 7f00 	cmp.w	r3, #33554432	; 0x2000000
d00014f8:	7148      	strb	r0, [r1, #5]
d00014fa:	ea4f 4063 	mov.w	r0, r3, asr #17
d00014fe:	f4bf af31 	bcs.w	d0001364 <stbi__idct_block+0x214>
d0001502:	1ab2      	subs	r2, r6, r2
d0001504:	b2c3      	uxtb	r3, r0
d0001506:	f1b2 7f00 	cmp.w	r2, #33554432	; 0x2000000
d000150a:	70cb      	strb	r3, [r1, #3]
d000150c:	ea4f 4362 	mov.w	r3, r2, asr #17
d0001510:	f4bf af34 	bcs.w	d000137c <stbi__idct_block+0x22c>
d0001514:	710b      	strb	r3, [r1, #4]
d0001516:	f10c 0c20 	add.w	ip, ip, #32
d000151a:	9b04      	ldr	r3, [sp, #16]
d000151c:	4419      	add	r1, r3
d000151e:	ab4e      	add	r3, sp, #312	; 0x138
d0001520:	4563      	cmp	r3, ip
d0001522:	f47f af37 	bne.w	d0001394 <stbi__idct_block+0x244>
d0001526:	b047      	add	sp, #284	; 0x11c
d0001528:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d000152c:	ffffe09e 	.word	0xffffe09e
d0001530:	fffff9c3 	.word	0xfffff9c3
d0001534:	fffff19b 	.word	0xfffff19b
d0001538:	ffffe271 	.word	0xffffe271
d000153c:	b9db      	cbnz	r3, d0001576 <stbi__idct_block+0x426>
d000153e:	f9b8 3060 	ldrsh.w	r3, [r8, #96]	; 0x60
d0001542:	4619      	mov	r1, r3
d0001544:	bb0b      	cbnz	r3, d000158a <stbi__idct_block+0x43a>
d0001546:	f9b8 3070 	ldrsh.w	r3, [r8, #112]	; 0x70
d000154a:	9302      	str	r3, [sp, #8]
d000154c:	bb2b      	cbnz	r3, d000159a <stbi__idct_block+0x44a>
d000154e:	f9b8 3000 	ldrsh.w	r3, [r8]
d0001552:	009b      	lsls	r3, r3, #2
d0001554:	f8ce 30e0 	str.w	r3, [lr, #224]	; 0xe0
d0001558:	f8ce 30c0 	str.w	r3, [lr, #192]	; 0xc0
d000155c:	f8ce 30a0 	str.w	r3, [lr, #160]	; 0xa0
d0001560:	f8ce 3080 	str.w	r3, [lr, #128]	; 0x80
d0001564:	f8ce 3060 	str.w	r3, [lr, #96]	; 0x60
d0001568:	f8ce 3040 	str.w	r3, [lr, #64]	; 0x40
d000156c:	f8ce 3020 	str.w	r3, [lr, #32]
d0001570:	f8ce 3000 	str.w	r3, [lr]
d0001574:	e68e      	b.n	d0001294 <stbi__idct_block+0x144>
d0001576:	f9b8 3060 	ldrsh.w	r3, [r8, #96]	; 0x60
d000157a:	46d9      	mov	r9, fp
d000157c:	465f      	mov	r7, fp
d000157e:	4619      	mov	r1, r3
d0001580:	f9b8 3070 	ldrsh.w	r3, [r8, #112]	; 0x70
d0001584:	461d      	mov	r5, r3
d0001586:	9302      	str	r3, [sp, #8]
d0001588:	e604      	b.n	d0001194 <stbi__idct_block+0x44>
d000158a:	f9b8 3070 	ldrsh.w	r3, [r8, #112]	; 0x70
d000158e:	9f01      	ldr	r7, [sp, #4]
d0001590:	461d      	mov	r5, r3
d0001592:	9302      	str	r3, [sp, #8]
d0001594:	46bb      	mov	fp, r7
d0001596:	46b9      	mov	r9, r7
d0001598:	e5fc      	b.n	d0001194 <stbi__idct_block+0x44>
d000159a:	460f      	mov	r7, r1
d000159c:	468b      	mov	fp, r1
d000159e:	4689      	mov	r9, r1
d00015a0:	9d02      	ldr	r5, [sp, #8]
d00015a2:	9101      	str	r1, [sp, #4]
d00015a4:	e5f6      	b.n	d0001194 <stbi__idct_block+0x44>
d00015a6:	bf00      	nop

d00015a8 <resample_row_1>:
d00015a8:	4608      	mov	r0, r1
d00015aa:	4770      	bx	lr

d00015ac <stbi__resample_row_v_2>:
d00015ac:	2b00      	cmp	r3, #0
d00015ae:	dd15      	ble.n	d00015dc <stbi__resample_row_v_2+0x30>
d00015b0:	3901      	subs	r1, #1
d00015b2:	3a01      	subs	r2, #1
d00015b4:	b4f0      	push	{r4, r5, r6, r7}
d00015b6:	1e44      	subs	r4, r0, #1
d00015b8:	2703      	movs	r7, #3
d00015ba:	18ce      	adds	r6, r1, r3
d00015bc:	f811 3f01 	ldrb.w	r3, [r1, #1]!
d00015c0:	f812 5f01 	ldrb.w	r5, [r2, #1]!
d00015c4:	428e      	cmp	r6, r1
d00015c6:	fb17 5303 	smlabb	r3, r7, r3, r5
d00015ca:	f103 0302 	add.w	r3, r3, #2
d00015ce:	ea4f 03a3 	mov.w	r3, r3, asr #2
d00015d2:	f804 3f01 	strb.w	r3, [r4, #1]!
d00015d6:	d1f1      	bne.n	d00015bc <stbi__resample_row_v_2+0x10>
d00015d8:	bcf0      	pop	{r4, r5, r6, r7}
d00015da:	4770      	bx	lr
d00015dc:	4770      	bx	lr
d00015de:	bf00      	nop

d00015e0 <stbi__resample_row_hv_2>:
d00015e0:	2b01      	cmp	r3, #1
d00015e2:	d034      	beq.n	d000164e <stbi__resample_row_hv_2+0x6e>
d00015e4:	f04f 0c03 	mov.w	ip, #3
d00015e8:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
d00015ec:	7814      	ldrb	r4, [r2, #0]
d00015ee:	780e      	ldrb	r6, [r1, #0]
d00015f0:	fb1c 4606 	smlabb	r6, ip, r6, r4
d00015f4:	f106 0402 	add.w	r4, r6, #2
d00015f8:	f3c4 0487 	ubfx	r4, r4, #2, #8
d00015fc:	7004      	strb	r4, [r0, #0]
d00015fe:	dd20      	ble.n	d0001642 <stbi__resample_row_hv_2+0x62>
d0001600:	f101 3eff 	add.w	lr, r1, #4294967295	; 0xffffffff
d0001604:	4607      	mov	r7, r0
d0001606:	449e      	add	lr, r3
d0001608:	f811 4f01 	ldrb.w	r4, [r1, #1]!
d000160c:	46b0      	mov	r8, r6
d000160e:	f812 6f01 	ldrb.w	r6, [r2, #1]!
d0001612:	eb08 0548 	add.w	r5, r8, r8, lsl #1
d0001616:	458e      	cmp	lr, r1
d0001618:	fb1c 6604 	smlabb	r6, ip, r4, r6
d000161c:	eb06 0446 	add.w	r4, r6, r6, lsl #1
d0001620:	4435      	add	r5, r6
d0001622:	4444      	add	r4, r8
d0001624:	f105 0508 	add.w	r5, r5, #8
d0001628:	f104 0408 	add.w	r4, r4, #8
d000162c:	ea4f 1525 	mov.w	r5, r5, asr #4
d0001630:	ea4f 1424 	mov.w	r4, r4, asr #4
d0001634:	707d      	strb	r5, [r7, #1]
d0001636:	f807 4f02 	strb.w	r4, [r7, #2]!
d000163a:	d1e5      	bne.n	d0001608 <stbi__resample_row_hv_2+0x28>
d000163c:	3602      	adds	r6, #2
d000163e:	f3c6 0487 	ubfx	r4, r6, #2, #8
d0001642:	eb00 0343 	add.w	r3, r0, r3, lsl #1
d0001646:	f803 4c01 	strb.w	r4, [r3, #-1]
d000164a:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
d000164e:	7809      	ldrb	r1, [r1, #0]
d0001650:	2303      	movs	r3, #3
d0001652:	7812      	ldrb	r2, [r2, #0]
d0001654:	fb13 2301 	smlabb	r3, r3, r1, r2
d0001658:	3302      	adds	r3, #2
d000165a:	f3c3 0387 	ubfx	r3, r3, #2, #8
d000165e:	7043      	strb	r3, [r0, #1]
d0001660:	7003      	strb	r3, [r0, #0]
d0001662:	4770      	bx	lr

d0001664 <stbi__resample_row_generic>:
d0001664:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0001668:	2b00      	cmp	r3, #0
d000166a:	b089      	sub	sp, #36	; 0x24
d000166c:	9f12      	ldr	r7, [sp, #72]	; 0x48
d000166e:	9007      	str	r0, [sp, #28]
d0001670:	dd5a      	ble.n	d0001728 <stbi__resample_row_generic+0xc4>
d0001672:	2f00      	cmp	r7, #0
d0001674:	dd58      	ble.n	d0001728 <stbi__resample_row_generic+0xc4>
d0001676:	4602      	mov	r2, r0
d0001678:	f027 0903 	bic.w	r9, r7, #3
d000167c:	eb01 0803 	add.w	r8, r1, r3
d0001680:	eb00 0a07 	add.w	sl, r0, r7
d0001684:	4613      	mov	r3, r2
d0001686:	f109 0001 	add.w	r0, r9, #1
d000168a:	f109 0402 	add.w	r4, r9, #2
d000168e:	f107 3bff 	add.w	fp, r7, #4294967295	; 0xffffffff
d0001692:	444b      	add	r3, r9
d0001694:	9002      	str	r0, [sp, #8]
d0001696:	9404      	str	r4, [sp, #16]
d0001698:	9303      	str	r3, [sp, #12]
d000169a:	1813      	adds	r3, r2, r0
d000169c:	4610      	mov	r0, r2
d000169e:	f8cd 9004 	str.w	r9, [sp, #4]
d00016a2:	9305      	str	r3, [sp, #20]
d00016a4:	1913      	adds	r3, r2, r4
d00016a6:	4654      	mov	r4, sl
d00016a8:	9306      	str	r3, [sp, #24]
d00016aa:	ea40 0301 	orr.w	r3, r0, r1
d00016ae:	460d      	mov	r5, r1
d00016b0:	3101      	adds	r1, #1
d00016b2:	eba4 0e0a 	sub.w	lr, r4, sl
d00016b6:	f013 0f03 	tst.w	r3, #3
d00016ba:	4603      	mov	r3, r0
d00016bc:	bf0c      	ite	eq
d00016be:	2601      	moveq	r6, #1
d00016c0:	2600      	movne	r6, #0
d00016c2:	4288      	cmp	r0, r1
d00016c4:	bf38      	it	cc
d00016c6:	42a5      	cmpcc	r5, r4
d00016c8:	bf2c      	ite	cs
d00016ca:	2201      	movcs	r2, #1
d00016cc:	2200      	movcc	r2, #0
d00016ce:	4216      	tst	r6, r2
d00016d0:	d02e      	beq.n	d0001730 <stbi__resample_row_generic+0xcc>
d00016d2:	f1bb 0f08 	cmp.w	fp, #8
d00016d6:	d92b      	bls.n	d0001730 <stbi__resample_row_generic+0xcc>
d00016d8:	f895 c000 	ldrb.w	ip, [r5]
d00016dc:	2200      	movs	r2, #0
d00016de:	9e01      	ldr	r6, [sp, #4]
d00016e0:	f36c 0207 	bfi	r2, ip, #0, #8
d00016e4:	1986      	adds	r6, r0, r6
d00016e6:	f36c 220f 	bfi	r2, ip, #8, #8
d00016ea:	f36c 4217 	bfi	r2, ip, #16, #8
d00016ee:	f36c 621f 	bfi	r2, ip, #24, #8
d00016f2:	f843 2b04 	str.w	r2, [r3], #4
d00016f6:	429e      	cmp	r6, r3
d00016f8:	d1fb      	bne.n	d00016f2 <stbi__resample_row_generic+0x8e>
d00016fa:	45b9      	cmp	r9, r7
d00016fc:	d010      	beq.n	d0001720 <stbi__resample_row_generic+0xbc>
d00016fe:	9a03      	ldr	r2, [sp, #12]
d0001700:	782b      	ldrb	r3, [r5, #0]
d0001702:	f802 300e 	strb.w	r3, [r2, lr]
d0001706:	9a02      	ldr	r2, [sp, #8]
d0001708:	4297      	cmp	r7, r2
d000170a:	dd09      	ble.n	d0001720 <stbi__resample_row_generic+0xbc>
d000170c:	9a05      	ldr	r2, [sp, #20]
d000170e:	f802 300e 	strb.w	r3, [r2, lr]
d0001712:	9b04      	ldr	r3, [sp, #16]
d0001714:	429f      	cmp	r7, r3
d0001716:	dd03      	ble.n	d0001720 <stbi__resample_row_generic+0xbc>
d0001718:	782b      	ldrb	r3, [r5, #0]
d000171a:	9a06      	ldr	r2, [sp, #24]
d000171c:	f802 300e 	strb.w	r3, [r2, lr]
d0001720:	4541      	cmp	r1, r8
d0001722:	4438      	add	r0, r7
d0001724:	443c      	add	r4, r7
d0001726:	d1c0      	bne.n	d00016aa <stbi__resample_row_generic+0x46>
d0001728:	9807      	ldr	r0, [sp, #28]
d000172a:	b009      	add	sp, #36	; 0x24
d000172c:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0001730:	4603      	mov	r3, r0
d0001732:	782a      	ldrb	r2, [r5, #0]
d0001734:	f803 2b01 	strb.w	r2, [r3], #1
d0001738:	42a3      	cmp	r3, r4
d000173a:	d1fa      	bne.n	d0001732 <stbi__resample_row_generic+0xce>
d000173c:	e7f0      	b.n	d0001720 <stbi__resample_row_generic+0xbc>
d000173e:	bf00      	nop

d0001740 <stbi__YCbCr_to_RGB_row>:
d0001740:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0001744:	b083      	sub	sp, #12
d0001746:	9c0c      	ldr	r4, [sp, #48]	; 0x30
d0001748:	2c00      	cmp	r4, #0
d000174a:	dd4b      	ble.n	d00017e4 <stbi__YCbCr_to_RGB_row+0xa4>
d000174c:	1e4d      	subs	r5, r1, #1
d000174e:	1e56      	subs	r6, r2, #1
d0001750:	1e5f      	subs	r7, r3, #1
d0001752:	f8df b0a0 	ldr.w	fp, [pc, #160]	; d00017f4 <stbi__YCbCr_to_RGB_row+0xb4>
d0001756:	eb05 0e04 	add.w	lr, r5, r4
d000175a:	f8df a09c 	ldr.w	sl, [pc, #156]	; d00017f8 <stbi__YCbCr_to_RGB_row+0xb8>
d000175e:	f8df 909c 	ldr.w	r9, [pc, #156]	; d00017fc <stbi__YCbCr_to_RGB_row+0xbc>
d0001762:	f04f 08ff 	mov.w	r8, #255	; 0xff
d0001766:	9601      	str	r6, [sp, #4]
d0001768:	9a01      	ldr	r2, [sp, #4]
d000176a:	f815 3f01 	ldrb.w	r3, [r5, #1]!
d000176e:	f812 4f01 	ldrb.w	r4, [r2, #1]!
d0001772:	051b      	lsls	r3, r3, #20
d0001774:	f817 1f01 	ldrb.w	r1, [r7, #1]!
d0001778:	3c80      	subs	r4, #128	; 0x80
d000177a:	4e1c      	ldr	r6, [pc, #112]	; (d00017ec <stbi__YCbCr_to_RGB_row+0xac>)
d000177c:	f503 2300 	add.w	r3, r3, #524288	; 0x80000
d0001780:	3980      	subs	r1, #128	; 0x80
d0001782:	9201      	str	r2, [sp, #4]
d0001784:	fb0a f204 	mul.w	r2, sl, r4
d0001788:	fb06 3c01 	mla	ip, r6, r1, r3
d000178c:	4e18      	ldr	r6, [pc, #96]	; (d00017f0 <stbi__YCbCr_to_RGB_row+0xb0>)
d000178e:	fb0b 3101 	mla	r1, fp, r1, r3
d0001792:	ea02 0209 	and.w	r2, r2, r9
d0001796:	fb06 3304 	mla	r3, r6, r4, r3
d000179a:	4462      	add	r2, ip
d000179c:	150c      	asrs	r4, r1, #20
d000179e:	f1b1 5f80 	cmp.w	r1, #268435456	; 0x10000000
d00017a2:	ea4f 5323 	mov.w	r3, r3, asr #20
d00017a6:	ea4f 5222 	mov.w	r2, r2, asr #20
d00017aa:	b2e1      	uxtb	r1, r4
d00017ac:	d303      	bcc.n	d00017b6 <stbi__YCbCr_to_RGB_row+0x76>
d00017ae:	2c00      	cmp	r4, #0
d00017b0:	bfac      	ite	ge
d00017b2:	21ff      	movge	r1, #255	; 0xff
d00017b4:	2100      	movlt	r1, #0
d00017b6:	2aff      	cmp	r2, #255	; 0xff
d00017b8:	b2d4      	uxtb	r4, r2
d00017ba:	d903      	bls.n	d00017c4 <stbi__YCbCr_to_RGB_row+0x84>
d00017bc:	2a00      	cmp	r2, #0
d00017be:	bfac      	ite	ge
d00017c0:	24ff      	movge	r4, #255	; 0xff
d00017c2:	2400      	movlt	r4, #0
d00017c4:	2bff      	cmp	r3, #255	; 0xff
d00017c6:	b2da      	uxtb	r2, r3
d00017c8:	d903      	bls.n	d00017d2 <stbi__YCbCr_to_RGB_row+0x92>
d00017ca:	2b00      	cmp	r3, #0
d00017cc:	bfac      	ite	ge
d00017ce:	22ff      	movge	r2, #255	; 0xff
d00017d0:	2200      	movlt	r2, #0
d00017d2:	9b0d      	ldr	r3, [sp, #52]	; 0x34
d00017d4:	45ae      	cmp	lr, r5
d00017d6:	f880 8003 	strb.w	r8, [r0, #3]
d00017da:	7001      	strb	r1, [r0, #0]
d00017dc:	7044      	strb	r4, [r0, #1]
d00017de:	7082      	strb	r2, [r0, #2]
d00017e0:	4418      	add	r0, r3
d00017e2:	d1c1      	bne.n	d0001768 <stbi__YCbCr_to_RGB_row+0x28>
d00017e4:	b003      	add	sp, #12
d00017e6:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d00017ea:	bf00      	nop
d00017ec:	fff49300 	.word	0xfff49300
d00017f0:	001c5a00 	.word	0x001c5a00
d00017f4:	00166f00 	.word	0x00166f00
d00017f8:	fffa7e00 	.word	0xfffa7e00
d00017fc:	ffff0000 	.word	0xffff0000

d0001800 <stbi__vertical_flip>:
d0001800:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0001804:	fb03 f901 	mul.w	r9, r3, r1
d0001808:	1053      	asrs	r3, r2, #1
d000180a:	f6ad 0d0c 	subw	sp, sp, #2060	; 0x80c
d000180e:	2b00      	cmp	r3, #0
d0001810:	9301      	str	r3, [sp, #4]
d0001812:	dd2d      	ble.n	d0001870 <stbi__vertical_flip+0x70>
d0001814:	f1b9 0f00 	cmp.w	r9, #0
d0001818:	d02a      	beq.n	d0001870 <stbi__vertical_flip+0x70>
d000181a:	3a01      	subs	r2, #1
d000181c:	4680      	mov	r8, r0
d000181e:	f04f 0a00 	mov.w	sl, #0
d0001822:	fb09 0702 	mla	r7, r9, r2, r0
d0001826:	4646      	mov	r6, r8
d0001828:	463d      	mov	r5, r7
d000182a:	46cb      	mov	fp, r9
d000182c:	f5bb 6f00 	cmp.w	fp, #2048	; 0x800
d0001830:	465c      	mov	r4, fp
d0001832:	4631      	mov	r1, r6
d0001834:	a802      	add	r0, sp, #8
d0001836:	bf28      	it	cs
d0001838:	f44f 6400 	movcs.w	r4, #2048	; 0x800
d000183c:	4622      	mov	r2, r4
d000183e:	f00a ff45 	bl	d000c6cc <memcpy>
d0001842:	4629      	mov	r1, r5
d0001844:	4622      	mov	r2, r4
d0001846:	4630      	mov	r0, r6
d0001848:	f00a ff40 	bl	d000c6cc <memcpy>
d000184c:	4628      	mov	r0, r5
d000184e:	4622      	mov	r2, r4
d0001850:	a902      	add	r1, sp, #8
d0001852:	f00a ff3b 	bl	d000c6cc <memcpy>
d0001856:	ebbb 0b04 	subs.w	fp, fp, r4
d000185a:	4426      	add	r6, r4
d000185c:	4425      	add	r5, r4
d000185e:	d1e5      	bne.n	d000182c <stbi__vertical_flip+0x2c>
d0001860:	f10a 0a01 	add.w	sl, sl, #1
d0001864:	9b01      	ldr	r3, [sp, #4]
d0001866:	44c8      	add	r8, r9
d0001868:	eba7 0709 	sub.w	r7, r7, r9
d000186c:	459a      	cmp	sl, r3
d000186e:	d1da      	bne.n	d0001826 <stbi__vertical_flip+0x26>
d0001870:	f60d 0d0c 	addw	sp, sp, #2060	; 0x80c
d0001874:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}

d0001878 <stbi__resample_row_h_2>:
d0001878:	2b01      	cmp	r3, #1
d000187a:	d039      	beq.n	d00018f0 <stbi__resample_row_h_2+0x78>
d000187c:	780a      	ldrb	r2, [r1, #0]
d000187e:	2b02      	cmp	r3, #2
d0001880:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
d0001884:	7002      	strb	r2, [r0, #0]
d0001886:	f04f 0703 	mov.w	r7, #3
d000188a:	784c      	ldrb	r4, [r1, #1]
d000188c:	fb17 4202 	smlabb	r2, r7, r2, r4
d0001890:	f102 0202 	add.w	r2, r2, #2
d0001894:	ea4f 02a2 	mov.w	r2, r2, asr #2
d0001898:	7042      	strb	r2, [r0, #1]
d000189a:	dd2d      	ble.n	d00018f8 <stbi__resample_row_h_2+0x80>
d000189c:	f1a3 0c02 	sub.w	ip, r3, #2
d00018a0:	460d      	mov	r5, r1
d00018a2:	4606      	mov	r6, r0
d00018a4:	f04f 0e02 	mov.w	lr, #2
d00018a8:	448c      	add	ip, r1
d00018aa:	462c      	mov	r4, r5
d00018ac:	f815 2f01 	ldrb.w	r2, [r5, #1]!
d00018b0:	3602      	adds	r6, #2
d00018b2:	7824      	ldrb	r4, [r4, #0]
d00018b4:	fb17 e802 	smlabb	r8, r7, r2, lr
d00018b8:	45ac      	cmp	ip, r5
d00018ba:	4444      	add	r4, r8
d00018bc:	ea4f 04a4 	mov.w	r4, r4, asr #2
d00018c0:	7034      	strb	r4, [r6, #0]
d00018c2:	786a      	ldrb	r2, [r5, #1]
d00018c4:	4442      	add	r2, r8
d00018c6:	ea4f 02a2 	mov.w	r2, r2, asr #2
d00018ca:	7072      	strb	r2, [r6, #1]
d00018cc:	d1ed      	bne.n	d00018aa <stbi__resample_row_h_2+0x32>
d00018ce:	1e5c      	subs	r4, r3, #1
d00018d0:	0065      	lsls	r5, r4, #1
d00018d2:	1c6f      	adds	r7, r5, #1
d00018d4:	440b      	add	r3, r1
d00018d6:	5d0e      	ldrb	r6, [r1, r4]
d00018d8:	2203      	movs	r2, #3
d00018da:	f813 3c02 	ldrb.w	r3, [r3, #-2]
d00018de:	fb12 6303 	smlabb	r3, r2, r3, r6
d00018e2:	3302      	adds	r3, #2
d00018e4:	109b      	asrs	r3, r3, #2
d00018e6:	5543      	strb	r3, [r0, r5]
d00018e8:	5d0b      	ldrb	r3, [r1, r4]
d00018ea:	55c3      	strb	r3, [r0, r7]
d00018ec:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
d00018f0:	780b      	ldrb	r3, [r1, #0]
d00018f2:	7043      	strb	r3, [r0, #1]
d00018f4:	7003      	strb	r3, [r0, #0]
d00018f6:	4770      	bx	lr
d00018f8:	2502      	movs	r5, #2
d00018fa:	1e5c      	subs	r4, r3, #1
d00018fc:	e7ea      	b.n	d00018d4 <stbi__resample_row_h_2+0x5c>
d00018fe:	bf00      	nop

d0001900 <stbi__build_huffman>:
d0001900:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
d0001904:	3904      	subs	r1, #4
d0001906:	f04f 0e01 	mov.w	lr, #1
d000190a:	2500      	movs	r5, #0
d000190c:	4606      	mov	r6, r0
d000190e:	f851 3f04 	ldr.w	r3, [r1, #4]!
d0001912:	2b00      	cmp	r3, #0
d0001914:	dd17      	ble.n	d0001946 <stbi__build_huffman+0x46>
d0001916:	fa5f f08e 	uxtb.w	r0, lr
d000191a:	1973      	adds	r3, r6, r5
d000191c:	2dff      	cmp	r5, #255	; 0xff
d000191e:	f883 0500 	strb.w	r0, [r3, #1280]	; 0x500
d0001922:	dc4c      	bgt.n	d00019be <stbi__build_huffman+0xbe>
d0001924:	f205 5201 	addw	r2, r5, #1281	; 0x501
d0001928:	f5c5 7c80 	rsb	ip, r5, #256	; 0x100
d000192c:	1c6f      	adds	r7, r5, #1
d000192e:	2300      	movs	r3, #0
d0001930:	4432      	add	r2, r6
d0001932:	e003      	b.n	d000193c <stbi__build_huffman+0x3c>
d0001934:	4563      	cmp	r3, ip
d0001936:	f802 0b01 	strb.w	r0, [r2], #1
d000193a:	d040      	beq.n	d00019be <stbi__build_huffman+0xbe>
d000193c:	18fd      	adds	r5, r7, r3
d000193e:	680c      	ldr	r4, [r1, #0]
d0001940:	3301      	adds	r3, #1
d0001942:	429c      	cmp	r4, r3
d0001944:	dcf6      	bgt.n	d0001934 <stbi__build_huffman+0x34>
d0001946:	f10e 0e01 	add.w	lr, lr, #1
d000194a:	f1be 0f11 	cmp.w	lr, #17
d000194e:	d1de      	bne.n	d000190e <stbi__build_huffman+0xe>
d0001950:	2100      	movs	r1, #0
d0001952:	4435      	add	r5, r6
d0001954:	f206 674c 	addw	r7, r6, #1612	; 0x64c
d0001958:	2201      	movs	r2, #1
d000195a:	460b      	mov	r3, r1
d000195c:	460c      	mov	r4, r1
d000195e:	f885 1500 	strb.w	r1, [r5, #1280]	; 0x500
d0001962:	e00a      	b.n	d000197a <stbi__build_huffman+0x7a>
d0001964:	f1c2 0110 	rsb	r1, r2, #16
d0001968:	3201      	adds	r2, #1
d000196a:	fa03 f101 	lsl.w	r1, r3, r1
d000196e:	2a11      	cmp	r2, #17
d0001970:	ea4f 0343 	mov.w	r3, r3, lsl #1
d0001974:	f847 1c48 	str.w	r1, [r7, #-72]
d0001978:	d027      	beq.n	d00019ca <stbi__build_huffman+0xca>
d000197a:	1ae0      	subs	r0, r4, r3
d000197c:	1931      	adds	r1, r6, r4
d000197e:	f847 0f04 	str.w	r0, [r7, #4]!
d0001982:	f891 1500 	ldrb.w	r1, [r1, #1280]	; 0x500
d0001986:	4291      	cmp	r1, r2
d0001988:	d1ec      	bne.n	d0001964 <stbi__build_huffman+0x64>
d000198a:	f504 7580 	add.w	r5, r4, #256	; 0x100
d000198e:	f204 5101 	addw	r1, r4, #1281	; 0x501
d0001992:	eb06 0545 	add.w	r5, r6, r5, lsl #1
d0001996:	4431      	add	r1, r6
d0001998:	469e      	mov	lr, r3
d000199a:	3301      	adds	r3, #1
d000199c:	f103 3cff 	add.w	ip, r3, #4294967295	; 0xffffffff
d00019a0:	18c4      	adds	r4, r0, r3
d00019a2:	f825 cb02 	strh.w	ip, [r5], #2
d00019a6:	f811 cb01 	ldrb.w	ip, [r1], #1
d00019aa:	4594      	cmp	ip, r2
d00019ac:	d0f4      	beq.n	d0001998 <stbi__build_huffman+0x98>
d00019ae:	fa3e f102 	lsrs.w	r1, lr, r2
d00019b2:	d0d7      	beq.n	d0001964 <stbi__build_huffman+0x64>
d00019b4:	4b1a      	ldr	r3, [pc, #104]	; (d0001a20 <stbi__build_huffman+0x120>)
d00019b6:	2000      	movs	r0, #0
d00019b8:	4a1a      	ldr	r2, [pc, #104]	; (d0001a24 <stbi__build_huffman+0x124>)
d00019ba:	601a      	str	r2, [r3, #0]
d00019bc:	e003      	b.n	d00019c6 <stbi__build_huffman+0xc6>
d00019be:	4b18      	ldr	r3, [pc, #96]	; (d0001a20 <stbi__build_huffman+0x120>)
d00019c0:	2000      	movs	r0, #0
d00019c2:	4a19      	ldr	r2, [pc, #100]	; (d0001a28 <stbi__build_huffman+0x128>)
d00019c4:	601a      	str	r2, [r3, #0]
d00019c6:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
d00019ca:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
d00019ce:	f44f 7200 	mov.w	r2, #512	; 0x200
d00019d2:	21ff      	movs	r1, #255	; 0xff
d00019d4:	4630      	mov	r0, r6
d00019d6:	f8c6 3648 	str.w	r3, [r6, #1608]	; 0x648
d00019da:	f00a fe85 	bl	d000c6e8 <memset>
d00019de:	b1e4      	cbz	r4, d0001a1a <stbi__build_huffman+0x11a>
d00019e0:	f506 69a0 	add.w	r9, r6, #1280	; 0x500
d00019e4:	4f11      	ldr	r7, [pc, #68]	; (d0001a2c <stbi__build_huffman+0x12c>)
d00019e6:	f04f 0801 	mov.w	r8, #1
d00019ea:	444c      	add	r4, r9
d00019ec:	464d      	mov	r5, r9
d00019ee:	1bbf      	subs	r7, r7, r6
d00019f0:	e002      	b.n	d00019f8 <stbi__build_huffman+0xf8>
d00019f2:	3501      	adds	r5, #1
d00019f4:	42ac      	cmp	r4, r5
d00019f6:	d010      	beq.n	d0001a1a <stbi__build_huffman+0x11a>
d00019f8:	782b      	ldrb	r3, [r5, #0]
d00019fa:	2b09      	cmp	r3, #9
d00019fc:	dcf9      	bgt.n	d00019f2 <stbi__build_huffman+0xf2>
d00019fe:	f1c3 0309 	rsb	r3, r3, #9
d0001a02:	f837 0015 	ldrh.w	r0, [r7, r5, lsl #1]
d0001a06:	eba5 0109 	sub.w	r1, r5, r9
d0001a0a:	4098      	lsls	r0, r3
d0001a0c:	fa08 f203 	lsl.w	r2, r8, r3
d0001a10:	b2c9      	uxtb	r1, r1
d0001a12:	4430      	add	r0, r6
d0001a14:	f00a fe68 	bl	d000c6e8 <memset>
d0001a18:	e7eb      	b.n	d00019f2 <stbi__build_huffman+0xf2>
d0001a1a:	2001      	movs	r0, #1
d0001a1c:	e7d3      	b.n	d00019c6 <stbi__build_huffman+0xc6>
d0001a1e:	bf00      	nop
d0001a20:	d000e928 	.word	0xd000e928
d0001a24:	d000dc84 	.word	0xd000dc84
d0001a28:	d000dc74 	.word	0xd000dc74
d0001a2c:	fffff800 	.word	0xfffff800

d0001a30 <stbi__free_jpeg_components.constprop.0>:
d0001a30:	2900      	cmp	r1, #0
d0001a32:	dd1f      	ble.n	d0001a74 <stbi__free_jpeg_components.constprop.0+0x44>
d0001a34:	eb01 01c1 	add.w	r1, r1, r1, lsl #3
d0001a38:	f244 63c8 	movw	r3, #18120	; 0x46c8
d0001a3c:	b570      	push	{r4, r5, r6, lr}
d0001a3e:	eb00 05c1 	add.w	r5, r0, r1, lsl #3
d0001a42:	2600      	movs	r6, #0
d0001a44:	18c4      	adds	r4, r0, r3
d0001a46:	441d      	add	r5, r3
d0001a48:	6860      	ldr	r0, [r4, #4]
d0001a4a:	b118      	cbz	r0, d0001a54 <stbi__free_jpeg_components.constprop.0+0x24>
d0001a4c:	f00a fe28 	bl	d000c6a0 <free>
d0001a50:	6066      	str	r6, [r4, #4]
d0001a52:	6026      	str	r6, [r4, #0]
d0001a54:	68a0      	ldr	r0, [r4, #8]
d0001a56:	b118      	cbz	r0, d0001a60 <stbi__free_jpeg_components.constprop.0+0x30>
d0001a58:	f00a fe22 	bl	d000c6a0 <free>
d0001a5c:	60a6      	str	r6, [r4, #8]
d0001a5e:	6126      	str	r6, [r4, #16]
d0001a60:	68e0      	ldr	r0, [r4, #12]
d0001a62:	b110      	cbz	r0, d0001a6a <stbi__free_jpeg_components.constprop.0+0x3a>
d0001a64:	f00a fe1c 	bl	d000c6a0 <free>
d0001a68:	60e6      	str	r6, [r4, #12]
d0001a6a:	3448      	adds	r4, #72	; 0x48
d0001a6c:	42ac      	cmp	r4, r5
d0001a6e:	d1eb      	bne.n	d0001a48 <stbi__free_jpeg_components.constprop.0+0x18>
d0001a70:	2000      	movs	r0, #0
d0001a72:	bd70      	pop	{r4, r5, r6, pc}
d0001a74:	2000      	movs	r0, #0
d0001a76:	4770      	bx	lr

d0001a78 <stbi__get16be>:
d0001a78:	b570      	push	{r4, r5, r6, lr}
d0001a7a:	f8d0 30ac 	ldr.w	r3, [r0, #172]	; 0xac
d0001a7e:	4604      	mov	r4, r0
d0001a80:	f8d0 60b0 	ldr.w	r6, [r0, #176]	; 0xb0
d0001a84:	42b3      	cmp	r3, r6
d0001a86:	d303      	bcc.n	d0001a90 <stbi__get16be+0x18>
d0001a88:	6a05      	ldr	r5, [r0, #32]
d0001a8a:	bb85      	cbnz	r5, d0001aee <stbi__get16be+0x76>
d0001a8c:	4628      	mov	r0, r5
d0001a8e:	bd70      	pop	{r4, r5, r6, pc}
d0001a90:	1c5a      	adds	r2, r3, #1
d0001a92:	f8c0 20ac 	str.w	r2, [r0, #172]	; 0xac
d0001a96:	781d      	ldrb	r5, [r3, #0]
d0001a98:	022d      	lsls	r5, r5, #8
d0001a9a:	42b2      	cmp	r2, r6
d0001a9c:	d206      	bcs.n	d0001aac <stbi__get16be+0x34>
d0001a9e:	1c53      	adds	r3, r2, #1
d0001aa0:	f8c4 30ac 	str.w	r3, [r4, #172]	; 0xac
d0001aa4:	7813      	ldrb	r3, [r2, #0]
d0001aa6:	441d      	add	r5, r3
d0001aa8:	4628      	mov	r0, r5
d0001aaa:	bd70      	pop	{r4, r5, r6, pc}
d0001aac:	6a23      	ldr	r3, [r4, #32]
d0001aae:	2b00      	cmp	r3, #0
d0001ab0:	d0ec      	beq.n	d0001a8c <stbi__get16be+0x14>
d0001ab2:	f104 0628 	add.w	r6, r4, #40	; 0x28
d0001ab6:	6923      	ldr	r3, [r4, #16]
d0001ab8:	6a62      	ldr	r2, [r4, #36]	; 0x24
d0001aba:	4631      	mov	r1, r6
d0001abc:	69e0      	ldr	r0, [r4, #28]
d0001abe:	4798      	blx	r3
d0001ac0:	f8d4 20ac 	ldr.w	r2, [r4, #172]	; 0xac
d0001ac4:	f8d4 10b4 	ldr.w	r1, [r4, #180]	; 0xb4
d0001ac8:	f8d4 30a8 	ldr.w	r3, [r4, #168]	; 0xa8
d0001acc:	1a52      	subs	r2, r2, r1
d0001ace:	4413      	add	r3, r2
d0001ad0:	f8c4 30a8 	str.w	r3, [r4, #168]	; 0xa8
d0001ad4:	bb48      	cbnz	r0, d0001b2a <stbi__get16be+0xb2>
d0001ad6:	f104 0629 	add.w	r6, r4, #41	; 0x29
d0001ada:	6220      	str	r0, [r4, #32]
d0001adc:	f884 0028 	strb.w	r0, [r4, #40]	; 0x28
d0001ae0:	4633      	mov	r3, r6
d0001ae2:	4628      	mov	r0, r5
d0001ae4:	f8c4 60b0 	str.w	r6, [r4, #176]	; 0xb0
d0001ae8:	f8c4 30ac 	str.w	r3, [r4, #172]	; 0xac
d0001aec:	bd70      	pop	{r4, r5, r6, pc}
d0001aee:	f100 0628 	add.w	r6, r0, #40	; 0x28
d0001af2:	6903      	ldr	r3, [r0, #16]
d0001af4:	6a42      	ldr	r2, [r0, #36]	; 0x24
d0001af6:	4631      	mov	r1, r6
d0001af8:	69c0      	ldr	r0, [r0, #28]
d0001afa:	4798      	blx	r3
d0001afc:	f8d4 20ac 	ldr.w	r2, [r4, #172]	; 0xac
d0001b00:	f8d4 10b4 	ldr.w	r1, [r4, #180]	; 0xb4
d0001b04:	4605      	mov	r5, r0
d0001b06:	f8d4 30a8 	ldr.w	r3, [r4, #168]	; 0xa8
d0001b0a:	1a52      	subs	r2, r2, r1
d0001b0c:	4413      	add	r3, r2
d0001b0e:	f8c4 30a8 	str.w	r3, [r4, #168]	; 0xa8
d0001b12:	b988      	cbnz	r0, d0001b38 <stbi__get16be+0xc0>
d0001b14:	f104 0629 	add.w	r6, r4, #41	; 0x29
d0001b18:	6220      	str	r0, [r4, #32]
d0001b1a:	f884 0028 	strb.w	r0, [r4, #40]	; 0x28
d0001b1e:	4632      	mov	r2, r6
d0001b20:	f8c4 60b0 	str.w	r6, [r4, #176]	; 0xb0
d0001b24:	f8c4 20ac 	str.w	r2, [r4, #172]	; 0xac
d0001b28:	e7b7      	b.n	d0001a9a <stbi__get16be+0x22>
d0001b2a:	f894 2028 	ldrb.w	r2, [r4, #40]	; 0x28
d0001b2e:	4406      	add	r6, r0
d0001b30:	f104 0329 	add.w	r3, r4, #41	; 0x29
d0001b34:	4415      	add	r5, r2
d0001b36:	e7d4      	b.n	d0001ae2 <stbi__get16be+0x6a>
d0001b38:	f894 3028 	ldrb.w	r3, [r4, #40]	; 0x28
d0001b3c:	4406      	add	r6, r0
d0001b3e:	f104 0229 	add.w	r2, r4, #41	; 0x29
d0001b42:	021d      	lsls	r5, r3, #8
d0001b44:	e7ec      	b.n	d0001b20 <stbi__get16be+0xa8>
d0001b46:	bf00      	nop

d0001b48 <stbi__get_marker.isra.0>:
d0001b48:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
d0001b4c:	780c      	ldrb	r4, [r1, #0]
d0001b4e:	2cff      	cmp	r4, #255	; 0xff
d0001b50:	d004      	beq.n	d0001b5c <stbi__get_marker.isra.0+0x14>
d0001b52:	23ff      	movs	r3, #255	; 0xff
d0001b54:	700b      	strb	r3, [r1, #0]
d0001b56:	4620      	mov	r0, r4
d0001b58:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
d0001b5c:	6805      	ldr	r5, [r0, #0]
d0001b5e:	4606      	mov	r6, r0
d0001b60:	f8d5 30ac 	ldr.w	r3, [r5, #172]	; 0xac
d0001b64:	f8d5 20b0 	ldr.w	r2, [r5, #176]	; 0xb0
d0001b68:	4293      	cmp	r3, r2
d0001b6a:	d31f      	bcc.n	d0001bac <stbi__get_marker.isra.0+0x64>
d0001b6c:	6a2b      	ldr	r3, [r5, #32]
d0001b6e:	2b00      	cmp	r3, #0
d0001b70:	d0f1      	beq.n	d0001b56 <stbi__get_marker.isra.0+0xe>
d0001b72:	f105 0828 	add.w	r8, r5, #40	; 0x28
d0001b76:	692b      	ldr	r3, [r5, #16]
d0001b78:	6a6a      	ldr	r2, [r5, #36]	; 0x24
d0001b7a:	4641      	mov	r1, r8
d0001b7c:	69e8      	ldr	r0, [r5, #28]
d0001b7e:	4798      	blx	r3
d0001b80:	f8d5 20ac 	ldr.w	r2, [r5, #172]	; 0xac
d0001b84:	f8d5 70b4 	ldr.w	r7, [r5, #180]	; 0xb4
d0001b88:	f8d5 30a8 	ldr.w	r3, [r5, #168]	; 0xa8
d0001b8c:	1bd2      	subs	r2, r2, r7
d0001b8e:	4413      	add	r3, r2
d0001b90:	f8c5 30a8 	str.w	r3, [r5, #168]	; 0xa8
d0001b94:	2800      	cmp	r0, #0
d0001b96:	d147      	bne.n	d0001c28 <stbi__get_marker.isra.0+0xe0>
d0001b98:	f105 0329 	add.w	r3, r5, #41	; 0x29
d0001b9c:	6228      	str	r0, [r5, #32]
d0001b9e:	f885 0028 	strb.w	r0, [r5, #40]	; 0x28
d0001ba2:	f8c5 30b0 	str.w	r3, [r5, #176]	; 0xb0
d0001ba6:	f8c5 30ac 	str.w	r3, [r5, #172]	; 0xac
d0001baa:	e7d4      	b.n	d0001b56 <stbi__get_marker.isra.0+0xe>
d0001bac:	1c5a      	adds	r2, r3, #1
d0001bae:	f8c5 20ac 	str.w	r2, [r5, #172]	; 0xac
d0001bb2:	781b      	ldrb	r3, [r3, #0]
d0001bb4:	2bff      	cmp	r3, #255	; 0xff
d0001bb6:	d1ce      	bne.n	d0001b56 <stbi__get_marker.isra.0+0xe>
d0001bb8:	6835      	ldr	r5, [r6, #0]
d0001bba:	f8d5 30ac 	ldr.w	r3, [r5, #172]	; 0xac
d0001bbe:	f8d5 20b0 	ldr.w	r2, [r5, #176]	; 0xb0
d0001bc2:	4293      	cmp	r3, r2
d0001bc4:	d322      	bcc.n	d0001c0c <stbi__get_marker.isra.0+0xc4>
d0001bc6:	6a2c      	ldr	r4, [r5, #32]
d0001bc8:	2c00      	cmp	r4, #0
d0001bca:	d0c4      	beq.n	d0001b56 <stbi__get_marker.isra.0+0xe>
d0001bcc:	f105 0428 	add.w	r4, r5, #40	; 0x28
d0001bd0:	692b      	ldr	r3, [r5, #16]
d0001bd2:	6a6a      	ldr	r2, [r5, #36]	; 0x24
d0001bd4:	f105 0729 	add.w	r7, r5, #41	; 0x29
d0001bd8:	4621      	mov	r1, r4
d0001bda:	69e8      	ldr	r0, [r5, #28]
d0001bdc:	4798      	blx	r3
d0001bde:	f8d5 30ac 	ldr.w	r3, [r5, #172]	; 0xac
d0001be2:	f8d5 20b4 	ldr.w	r2, [r5, #180]	; 0xb4
d0001be6:	1821      	adds	r1, r4, r0
d0001be8:	1a9a      	subs	r2, r3, r2
d0001bea:	f8d5 30a8 	ldr.w	r3, [r5, #168]	; 0xa8
d0001bee:	4413      	add	r3, r2
d0001bf0:	f8c5 30a8 	str.w	r3, [r5, #168]	; 0xa8
d0001bf4:	b988      	cbnz	r0, d0001c1a <stbi__get_marker.isra.0+0xd2>
d0001bf6:	4604      	mov	r4, r0
d0001bf8:	6228      	str	r0, [r5, #32]
d0001bfa:	f885 0028 	strb.w	r0, [r5, #40]	; 0x28
d0001bfe:	f8c5 70b0 	str.w	r7, [r5, #176]	; 0xb0
d0001c02:	4620      	mov	r0, r4
d0001c04:	f8c5 70ac 	str.w	r7, [r5, #172]	; 0xac
d0001c08:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
d0001c0c:	1c5a      	adds	r2, r3, #1
d0001c0e:	f8c5 20ac 	str.w	r2, [r5, #172]	; 0xac
d0001c12:	781c      	ldrb	r4, [r3, #0]
d0001c14:	2cff      	cmp	r4, #255	; 0xff
d0001c16:	d0cf      	beq.n	d0001bb8 <stbi__get_marker.isra.0+0x70>
d0001c18:	e79d      	b.n	d0001b56 <stbi__get_marker.isra.0+0xe>
d0001c1a:	f895 4028 	ldrb.w	r4, [r5, #40]	; 0x28
d0001c1e:	f8c5 10b0 	str.w	r1, [r5, #176]	; 0xb0
d0001c22:	f8c5 70ac 	str.w	r7, [r5, #172]	; 0xac
d0001c26:	e7f5      	b.n	d0001c14 <stbi__get_marker.isra.0+0xcc>
d0001c28:	4440      	add	r0, r8
d0001c2a:	f105 0229 	add.w	r2, r5, #41	; 0x29
d0001c2e:	f895 3028 	ldrb.w	r3, [r5, #40]	; 0x28
d0001c32:	f8c5 00b0 	str.w	r0, [r5, #176]	; 0xb0
d0001c36:	f8c5 20ac 	str.w	r2, [r5, #172]	; 0xac
d0001c3a:	e7bb      	b.n	d0001bb4 <stbi__get_marker.isra.0+0x6c>

d0001c3c <stbi__grow_buffer_unsafe>:
d0001c3c:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
d0001c40:	f244 77c8 	movw	r7, #18376	; 0x47c8
d0001c44:	f244 76c0 	movw	r6, #18368	; 0x47c0
d0001c48:	4605      	mov	r5, r0
d0001c4a:	4407      	add	r7, r0
d0001c4c:	4406      	add	r6, r0
d0001c4e:	e00f      	b.n	d0001c70 <stbi__grow_buffer_unsafe+0x34>
d0001c50:	2400      	movs	r4, #0
d0001c52:	6833      	ldr	r3, [r6, #0]
d0001c54:	f244 71bc 	movw	r1, #18364	; 0x47bc
d0001c58:	f1c3 0018 	rsb	r0, r3, #24
d0001c5c:	586a      	ldr	r2, [r5, r1]
d0001c5e:	3308      	adds	r3, #8
d0001c60:	4084      	lsls	r4, r0
d0001c62:	2b18      	cmp	r3, #24
d0001c64:	ea44 0402 	orr.w	r4, r4, r2
d0001c68:	506c      	str	r4, [r5, r1]
d0001c6a:	6033      	str	r3, [r6, #0]
d0001c6c:	f300 80a3 	bgt.w	d0001db6 <stbi__grow_buffer_unsafe+0x17a>
d0001c70:	683b      	ldr	r3, [r7, #0]
d0001c72:	2b00      	cmp	r3, #0
d0001c74:	d1ec      	bne.n	d0001c50 <stbi__grow_buffer_unsafe+0x14>
d0001c76:	f8d5 8000 	ldr.w	r8, [r5]
d0001c7a:	f8d8 30ac 	ldr.w	r3, [r8, #172]	; 0xac
d0001c7e:	f8d8 20b0 	ldr.w	r2, [r8, #176]	; 0xb0
d0001c82:	4293      	cmp	r3, r2
d0001c84:	d325      	bcc.n	d0001cd2 <stbi__grow_buffer_unsafe+0x96>
d0001c86:	f8d8 4020 	ldr.w	r4, [r8, #32]
d0001c8a:	2c00      	cmp	r4, #0
d0001c8c:	d0e1      	beq.n	d0001c52 <stbi__grow_buffer_unsafe+0x16>
d0001c8e:	f108 0928 	add.w	r9, r8, #40	; 0x28
d0001c92:	f8d8 3010 	ldr.w	r3, [r8, #16]
d0001c96:	f8d8 2024 	ldr.w	r2, [r8, #36]	; 0x24
d0001c9a:	4649      	mov	r1, r9
d0001c9c:	f8d8 001c 	ldr.w	r0, [r8, #28]
d0001ca0:	4798      	blx	r3
d0001ca2:	f8d8 20ac 	ldr.w	r2, [r8, #172]	; 0xac
d0001ca6:	f8d8 10b4 	ldr.w	r1, [r8, #180]	; 0xb4
d0001caa:	f8d8 30a8 	ldr.w	r3, [r8, #168]	; 0xa8
d0001cae:	1a52      	subs	r2, r2, r1
d0001cb0:	4413      	add	r3, r2
d0001cb2:	f8c8 30a8 	str.w	r3, [r8, #168]	; 0xa8
d0001cb6:	2800      	cmp	r0, #0
d0001cb8:	d17f      	bne.n	d0001dba <stbi__grow_buffer_unsafe+0x17e>
d0001cba:	f108 0329 	add.w	r3, r8, #41	; 0x29
d0001cbe:	4604      	mov	r4, r0
d0001cc0:	f8c8 0020 	str.w	r0, [r8, #32]
d0001cc4:	f888 0028 	strb.w	r0, [r8, #40]	; 0x28
d0001cc8:	f8c8 30b0 	str.w	r3, [r8, #176]	; 0xb0
d0001ccc:	f8c8 30ac 	str.w	r3, [r8, #172]	; 0xac
d0001cd0:	e7bf      	b.n	d0001c52 <stbi__grow_buffer_unsafe+0x16>
d0001cd2:	1c5a      	adds	r2, r3, #1
d0001cd4:	f8c8 20ac 	str.w	r2, [r8, #172]	; 0xac
d0001cd8:	781c      	ldrb	r4, [r3, #0]
d0001cda:	2cff      	cmp	r4, #255	; 0xff
d0001cdc:	d1b9      	bne.n	d0001c52 <stbi__grow_buffer_unsafe+0x16>
d0001cde:	f8d5 8000 	ldr.w	r8, [r5]
d0001ce2:	f8d8 30ac 	ldr.w	r3, [r8, #172]	; 0xac
d0001ce6:	f8d8 20b0 	ldr.w	r2, [r8, #176]	; 0xb0
d0001cea:	4293      	cmp	r3, r2
d0001cec:	d324      	bcc.n	d0001d38 <stbi__grow_buffer_unsafe+0xfc>
d0001cee:	f8d8 3020 	ldr.w	r3, [r8, #32]
d0001cf2:	2b00      	cmp	r3, #0
d0001cf4:	d0ad      	beq.n	d0001c52 <stbi__grow_buffer_unsafe+0x16>
d0001cf6:	f108 0928 	add.w	r9, r8, #40	; 0x28
d0001cfa:	f8d8 3010 	ldr.w	r3, [r8, #16]
d0001cfe:	f8d8 2024 	ldr.w	r2, [r8, #36]	; 0x24
d0001d02:	4649      	mov	r1, r9
d0001d04:	f8d8 001c 	ldr.w	r0, [r8, #28]
d0001d08:	4798      	blx	r3
d0001d0a:	f8d8 20ac 	ldr.w	r2, [r8, #172]	; 0xac
d0001d0e:	f8d8 10b4 	ldr.w	r1, [r8, #180]	; 0xb4
d0001d12:	f8d8 30a8 	ldr.w	r3, [r8, #168]	; 0xa8
d0001d16:	1a52      	subs	r2, r2, r1
d0001d18:	4413      	add	r3, r2
d0001d1a:	f8c8 30a8 	str.w	r3, [r8, #168]	; 0xa8
d0001d1e:	2800      	cmp	r0, #0
d0001d20:	d15c      	bne.n	d0001ddc <stbi__grow_buffer_unsafe+0x1a0>
d0001d22:	f108 0329 	add.w	r3, r8, #41	; 0x29
d0001d26:	f8c8 0020 	str.w	r0, [r8, #32]
d0001d2a:	f888 0028 	strb.w	r0, [r8, #40]	; 0x28
d0001d2e:	f8c8 30b0 	str.w	r3, [r8, #176]	; 0xb0
d0001d32:	f8c8 30ac 	str.w	r3, [r8, #172]	; 0xac
d0001d36:	e78c      	b.n	d0001c52 <stbi__grow_buffer_unsafe+0x16>
d0001d38:	1c5a      	adds	r2, r3, #1
d0001d3a:	f8c8 20ac 	str.w	r2, [r8, #172]	; 0xac
d0001d3e:	781b      	ldrb	r3, [r3, #0]
d0001d40:	2bff      	cmp	r3, #255	; 0xff
d0001d42:	d12e      	bne.n	d0001da2 <stbi__grow_buffer_unsafe+0x166>
d0001d44:	f8d5 8000 	ldr.w	r8, [r5]
d0001d48:	f8d8 30ac 	ldr.w	r3, [r8, #172]	; 0xac
d0001d4c:	f8d8 20b0 	ldr.w	r2, [r8, #176]	; 0xb0
d0001d50:	4293      	cmp	r3, r2
d0001d52:	d3f1      	bcc.n	d0001d38 <stbi__grow_buffer_unsafe+0xfc>
d0001d54:	f8d8 3020 	ldr.w	r3, [r8, #32]
d0001d58:	2b00      	cmp	r3, #0
d0001d5a:	f43f af7a 	beq.w	d0001c52 <stbi__grow_buffer_unsafe+0x16>
d0001d5e:	f108 0928 	add.w	r9, r8, #40	; 0x28
d0001d62:	f8d8 3010 	ldr.w	r3, [r8, #16]
d0001d66:	f8d8 2024 	ldr.w	r2, [r8, #36]	; 0x24
d0001d6a:	4649      	mov	r1, r9
d0001d6c:	f8d8 001c 	ldr.w	r0, [r8, #28]
d0001d70:	4798      	blx	r3
d0001d72:	f8d8 20b4 	ldr.w	r2, [r8, #180]	; 0xb4
d0001d76:	f8d8 30ac 	ldr.w	r3, [r8, #172]	; 0xac
d0001d7a:	f108 0c29 	add.w	ip, r8, #41	; 0x29
d0001d7e:	f8d8 10a8 	ldr.w	r1, [r8, #168]	; 0xa8
d0001d82:	1a9b      	subs	r3, r3, r2
d0001d84:	eb09 0200 	add.w	r2, r9, r0
d0001d88:	4419      	add	r1, r3
d0001d8a:	f8c8 10a8 	str.w	r1, [r8, #168]	; 0xa8
d0001d8e:	b9f0      	cbnz	r0, d0001dce <stbi__grow_buffer_unsafe+0x192>
d0001d90:	f8c8 0020 	str.w	r0, [r8, #32]
d0001d94:	f888 0028 	strb.w	r0, [r8, #40]	; 0x28
d0001d98:	f8c8 c0b0 	str.w	ip, [r8, #176]	; 0xb0
d0001d9c:	f8c8 c0ac 	str.w	ip, [r8, #172]	; 0xac
d0001da0:	e757      	b.n	d0001c52 <stbi__grow_buffer_unsafe+0x16>
d0001da2:	2b00      	cmp	r3, #0
d0001da4:	f43f af55 	beq.w	d0001c52 <stbi__grow_buffer_unsafe+0x16>
d0001da8:	f244 70c4 	movw	r0, #18372	; 0x47c4
d0001dac:	f244 72c8 	movw	r2, #18376	; 0x47c8
d0001db0:	2101      	movs	r1, #1
d0001db2:	542b      	strb	r3, [r5, r0]
d0001db4:	50a9      	str	r1, [r5, r2]
d0001db6:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
d0001dba:	4448      	add	r0, r9
d0001dbc:	f108 0329 	add.w	r3, r8, #41	; 0x29
d0001dc0:	f898 4028 	ldrb.w	r4, [r8, #40]	; 0x28
d0001dc4:	f8c8 00b0 	str.w	r0, [r8, #176]	; 0xb0
d0001dc8:	f8c8 30ac 	str.w	r3, [r8, #172]	; 0xac
d0001dcc:	e785      	b.n	d0001cda <stbi__grow_buffer_unsafe+0x9e>
d0001dce:	f898 3028 	ldrb.w	r3, [r8, #40]	; 0x28
d0001dd2:	f8c8 20b0 	str.w	r2, [r8, #176]	; 0xb0
d0001dd6:	f8c8 c0ac 	str.w	ip, [r8, #172]	; 0xac
d0001dda:	e7b1      	b.n	d0001d40 <stbi__grow_buffer_unsafe+0x104>
d0001ddc:	4448      	add	r0, r9
d0001dde:	f108 0229 	add.w	r2, r8, #41	; 0x29
d0001de2:	f898 3028 	ldrb.w	r3, [r8, #40]	; 0x28
d0001de6:	f8c8 00b0 	str.w	r0, [r8, #176]	; 0xb0
d0001dea:	f8c8 20ac 	str.w	r2, [r8, #172]	; 0xac
d0001dee:	e7a7      	b.n	d0001d40 <stbi__grow_buffer_unsafe+0x104>

d0001df0 <stbi__jpeg_huff_decode>:
d0001df0:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d0001df2:	f244 76c0 	movw	r6, #18368	; 0x47c0
d0001df6:	4604      	mov	r4, r0
d0001df8:	460d      	mov	r5, r1
d0001dfa:	5982      	ldr	r2, [r0, r6]
d0001dfc:	2a0f      	cmp	r2, #15
d0001dfe:	dd39      	ble.n	d0001e74 <stbi__jpeg_huff_decode+0x84>
d0001e00:	f244 76bc 	movw	r6, #18364	; 0x47bc
d0001e04:	59a3      	ldr	r3, [r4, r6]
d0001e06:	0dd9      	lsrs	r1, r3, #23
d0001e08:	5c69      	ldrb	r1, [r5, r1]
d0001e0a:	29ff      	cmp	r1, #255	; 0xff
d0001e0c:	d00d      	beq.n	d0001e2a <stbi__jpeg_huff_decode+0x3a>
d0001e0e:	4429      	add	r1, r5
d0001e10:	f891 0500 	ldrb.w	r0, [r1, #1280]	; 0x500
d0001e14:	4290      	cmp	r0, r2
d0001e16:	dc68      	bgt.n	d0001eea <stbi__jpeg_huff_decode+0xfa>
d0001e18:	4083      	lsls	r3, r0
d0001e1a:	1a12      	subs	r2, r2, r0
d0001e1c:	f244 70c0 	movw	r0, #18368	; 0x47c0
d0001e20:	51a3      	str	r3, [r4, r6]
d0001e22:	5022      	str	r2, [r4, r0]
d0001e24:	f891 0400 	ldrb.w	r0, [r1, #1024]	; 0x400
d0001e28:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d0001e2a:	f8d5 062c 	ldr.w	r0, [r5, #1580]	; 0x62c
d0001e2e:	0c19      	lsrs	r1, r3, #16
d0001e30:	ebb0 4f13 	cmp.w	r0, r3, lsr #16
d0001e34:	d84f      	bhi.n	d0001ed6 <stbi__jpeg_huff_decode+0xe6>
d0001e36:	f8d5 0630 	ldr.w	r0, [r5, #1584]	; 0x630
d0001e3a:	4281      	cmp	r1, r0
d0001e3c:	d34d      	bcc.n	d0001eda <stbi__jpeg_huff_decode+0xea>
d0001e3e:	f8d5 0634 	ldr.w	r0, [r5, #1588]	; 0x634
d0001e42:	4281      	cmp	r1, r0
d0001e44:	d34b      	bcc.n	d0001ede <stbi__jpeg_huff_decode+0xee>
d0001e46:	f8d5 0638 	ldr.w	r0, [r5, #1592]	; 0x638
d0001e4a:	4281      	cmp	r1, r0
d0001e4c:	d316      	bcc.n	d0001e7c <stbi__jpeg_huff_decode+0x8c>
d0001e4e:	f8d5 063c 	ldr.w	r0, [r5, #1596]	; 0x63c
d0001e52:	4281      	cmp	r1, r0
d0001e54:	d345      	bcc.n	d0001ee2 <stbi__jpeg_huff_decode+0xf2>
d0001e56:	f8d5 0640 	ldr.w	r0, [r5, #1600]	; 0x640
d0001e5a:	4281      	cmp	r1, r0
d0001e5c:	d343      	bcc.n	d0001ee6 <stbi__jpeg_huff_decode+0xf6>
d0001e5e:	f8d5 0644 	ldr.w	r0, [r5, #1604]	; 0x644
d0001e62:	4281      	cmp	r1, r0
d0001e64:	d344      	bcc.n	d0001ef0 <stbi__jpeg_huff_decode+0x100>
d0001e66:	3a10      	subs	r2, #16
d0001e68:	f244 73c0 	movw	r3, #18368	; 0x47c0
d0001e6c:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d0001e70:	50e2      	str	r2, [r4, r3]
d0001e72:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d0001e74:	f7ff fee2 	bl	d0001c3c <stbi__grow_buffer_unsafe>
d0001e78:	59a2      	ldr	r2, [r4, r6]
d0001e7a:	e7c1      	b.n	d0001e00 <stbi__jpeg_huff_decode+0x10>
d0001e7c:	200d      	movs	r0, #13
d0001e7e:	4290      	cmp	r0, r2
d0001e80:	dc33      	bgt.n	d0001eea <stbi__jpeg_huff_decode+0xfa>
d0001e82:	f1c0 0120 	rsb	r1, r0, #32
d0001e86:	4e1f      	ldr	r6, [pc, #124]	; (d0001f04 <stbi__jpeg_huff_decode+0x114>)
d0001e88:	eb05 0c80 	add.w	ip, r5, r0, lsl #2
d0001e8c:	fa23 f101 	lsr.w	r1, r3, r1
d0001e90:	f856 7020 	ldr.w	r7, [r6, r0, lsl #2]
d0001e94:	f8dc c64c 	ldr.w	ip, [ip, #1612]	; 0x64c
d0001e98:	4039      	ands	r1, r7
d0001e9a:	4461      	add	r1, ip
d0001e9c:	29ff      	cmp	r1, #255	; 0xff
d0001e9e:	d824      	bhi.n	d0001eea <stbi__jpeg_huff_decode+0xfa>
d0001ea0:	186f      	adds	r7, r5, r1
d0001ea2:	f501 7180 	add.w	r1, r1, #256	; 0x100
d0001ea6:	f897 c500 	ldrb.w	ip, [r7, #1280]	; 0x500
d0001eaa:	f835 5011 	ldrh.w	r5, [r5, r1, lsl #1]
d0001eae:	f1cc 0120 	rsb	r1, ip, #32
d0001eb2:	f856 602c 	ldr.w	r6, [r6, ip, lsl #2]
d0001eb6:	fa23 f101 	lsr.w	r1, r3, r1
d0001eba:	4031      	ands	r1, r6
d0001ebc:	42a9      	cmp	r1, r5
d0001ebe:	d119      	bne.n	d0001ef4 <stbi__jpeg_huff_decode+0x104>
d0001ec0:	1a12      	subs	r2, r2, r0
d0001ec2:	4083      	lsls	r3, r0
d0001ec4:	f244 71bc 	movw	r1, #18364	; 0x47bc
d0001ec8:	f244 70c0 	movw	r0, #18368	; 0x47c0
d0001ecc:	5022      	str	r2, [r4, r0]
d0001ece:	5063      	str	r3, [r4, r1]
d0001ed0:	f897 0400 	ldrb.w	r0, [r7, #1024]	; 0x400
d0001ed4:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d0001ed6:	200a      	movs	r0, #10
d0001ed8:	e7d1      	b.n	d0001e7e <stbi__jpeg_huff_decode+0x8e>
d0001eda:	200b      	movs	r0, #11
d0001edc:	e7cf      	b.n	d0001e7e <stbi__jpeg_huff_decode+0x8e>
d0001ede:	200c      	movs	r0, #12
d0001ee0:	e7cd      	b.n	d0001e7e <stbi__jpeg_huff_decode+0x8e>
d0001ee2:	200e      	movs	r0, #14
d0001ee4:	e7cb      	b.n	d0001e7e <stbi__jpeg_huff_decode+0x8e>
d0001ee6:	200f      	movs	r0, #15
d0001ee8:	e7c9      	b.n	d0001e7e <stbi__jpeg_huff_decode+0x8e>
d0001eea:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d0001eee:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d0001ef0:	2010      	movs	r0, #16
d0001ef2:	e7c4      	b.n	d0001e7e <stbi__jpeg_huff_decode+0x8e>
d0001ef4:	4b04      	ldr	r3, [pc, #16]	; (d0001f08 <stbi__jpeg_huff_decode+0x118>)
d0001ef6:	f640 015c 	movw	r1, #2140	; 0x85c
d0001efa:	4a04      	ldr	r2, [pc, #16]	; (d0001f0c <stbi__jpeg_huff_decode+0x11c>)
d0001efc:	4804      	ldr	r0, [pc, #16]	; (d0001f10 <stbi__jpeg_huff_decode+0x120>)
d0001efe:	f00a fb89 	bl	d000c614 <__assert_func>
d0001f02:	bf00      	nop
d0001f04:	d000ded4 	.word	0xd000ded4
d0001f08:	d000dc98 	.word	0xd000dc98
d0001f0c:	d000deb8 	.word	0xd000deb8
d0001f10:	d000dcec 	.word	0xd000dcec

d0001f14 <stbi__jpeg_decode_block>:
d0001f14:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0001f18:	f244 74c0 	movw	r4, #18368	; 0x47c0
d0001f1c:	460f      	mov	r7, r1
d0001f1e:	4611      	mov	r1, r2
d0001f20:	4606      	mov	r6, r0
d0001f22:	5902      	ldr	r2, [r0, r4]
d0001f24:	4698      	mov	r8, r3
d0001f26:	ed2d 8b02 	vpush	{d8}
d0001f2a:	2a0f      	cmp	r2, #15
d0001f2c:	b083      	sub	sp, #12
d0001f2e:	9c0f      	ldr	r4, [sp, #60]	; 0x3c
d0001f30:	f340 80bf 	ble.w	d00020b2 <stbi__jpeg_decode_block+0x19e>
d0001f34:	4630      	mov	r0, r6
d0001f36:	f7ff ff5b 	bl	d0001df0 <stbi__jpeg_huff_decode>
d0001f3a:	280f      	cmp	r0, #15
d0001f3c:	4605      	mov	r5, r0
d0001f3e:	d908      	bls.n	d0001f52 <stbi__jpeg_decode_block+0x3e>
d0001f40:	4b9b      	ldr	r3, [pc, #620]	; (d00021b0 <stbi__jpeg_decode_block+0x29c>)
d0001f42:	2000      	movs	r0, #0
d0001f44:	4a9b      	ldr	r2, [pc, #620]	; (d00021b4 <stbi__jpeg_decode_block+0x2a0>)
d0001f46:	601a      	str	r2, [r3, #0]
d0001f48:	b003      	add	sp, #12
d0001f4a:	ecbd 8b02 	vpop	{d8}
d0001f4e:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0001f52:	2280      	movs	r2, #128	; 0x80
d0001f54:	2100      	movs	r1, #0
d0001f56:	4638      	mov	r0, r7
d0001f58:	f00a fbc6 	bl	d000c6e8 <memset>
d0001f5c:	2d00      	cmp	r5, #0
d0001f5e:	f040 80b9 	bne.w	d00020d4 <stbi__jpeg_decode_block+0x1c0>
d0001f62:	eb04 04c4 	add.w	r4, r4, r4, lsl #3
d0001f66:	f244 63b4 	movw	r3, #18100	; 0x46b4
d0001f6a:	eb06 04c4 	add.w	r4, r6, r4, lsl #3
d0001f6e:	58e2      	ldr	r2, [r4, r3]
d0001f70:	9b10      	ldr	r3, [sp, #64]	; 0x40
d0001f72:	2a00      	cmp	r2, #0
d0001f74:	881b      	ldrh	r3, [r3, #0]
d0001f76:	f280 80a1 	bge.w	d00020bc <stbi__jpeg_decode_block+0x1a8>
d0001f7a:	b17b      	cbz	r3, d0001f9c <stbi__jpeg_decode_block+0x88>
d0001f7c:	488e      	ldr	r0, [pc, #568]	; (d00021b8 <stbi__jpeg_decode_block+0x2a4>)
d0001f7e:	fb90 f0f3 	sdiv	r0, r0, r3
d0001f82:	4282      	cmp	r2, r0
d0001f84:	bfb4      	ite	lt
d0001f86:	2000      	movlt	r0, #0
d0001f88:	2001      	movge	r0, #1
d0001f8a:	b938      	cbnz	r0, d0001f9c <stbi__jpeg_decode_block+0x88>
d0001f8c:	4b88      	ldr	r3, [pc, #544]	; (d00021b0 <stbi__jpeg_decode_block+0x29c>)
d0001f8e:	4a8b      	ldr	r2, [pc, #556]	; (d00021bc <stbi__jpeg_decode_block+0x2a8>)
d0001f90:	601a      	str	r2, [r3, #0]
d0001f92:	b003      	add	sp, #12
d0001f94:	ecbd 8b02 	vpop	{d8}
d0001f98:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0001f9c:	f244 7ac0 	movw	sl, #18368	; 0x47c0
d0001fa0:	f244 7bbc 	movw	fp, #18364	; 0x47bc
d0001fa4:	fb12 f303 	smulbb	r3, r2, r3
d0001fa8:	ee08 8a10 	vmov	s16, r8
d0001fac:	44b2      	add	sl, r6
d0001fae:	44b3      	add	fp, r6
d0001fb0:	803b      	strh	r3, [r7, #0]
d0001fb2:	2401      	movs	r4, #1
d0001fb4:	4653      	mov	r3, sl
d0001fb6:	f8df 9214 	ldr.w	r9, [pc, #532]	; d00021cc <stbi__jpeg_decode_block+0x2b8>
d0001fba:	46da      	mov	sl, fp
d0001fbc:	f8dd 8038 	ldr.w	r8, [sp, #56]	; 0x38
d0001fc0:	469b      	mov	fp, r3
d0001fc2:	e021      	b.n	d0002008 <stbi__jpeg_decode_block+0xf4>
d0001fc4:	f8da 3000 	ldr.w	r3, [sl]
d0001fc8:	0dd9      	lsrs	r1, r3, #23
d0001fca:	f938 5011 	ldrsh.w	r5, [r8, r1, lsl #1]
d0001fce:	b34d      	cbz	r5, d0002024 <stbi__jpeg_decode_block+0x110>
d0001fd0:	f005 000f 	and.w	r0, r5, #15
d0001fd4:	f8db 1000 	ldr.w	r1, [fp]
d0001fd8:	f3c5 1c03 	ubfx	ip, r5, #4, #4
d0001fdc:	4281      	cmp	r1, r0
d0001fde:	4464      	add	r4, ip
d0001fe0:	dbae      	blt.n	d0001f40 <stbi__jpeg_decode_block+0x2c>
d0001fe2:	f819 c004 	ldrb.w	ip, [r9, r4]
d0001fe6:	4083      	lsls	r3, r0
d0001fe8:	9a10      	ldr	r2, [sp, #64]	; 0x40
d0001fea:	1a09      	subs	r1, r1, r0
d0001fec:	122d      	asrs	r5, r5, #8
d0001fee:	3401      	adds	r4, #1
d0001ff0:	f832 001c 	ldrh.w	r0, [r2, ip, lsl #1]
d0001ff4:	f8ca 3000 	str.w	r3, [sl]
d0001ff8:	fb10 f505 	smulbb	r5, r0, r5
d0001ffc:	f8cb 1000 	str.w	r1, [fp]
d0002000:	f827 501c 	strh.w	r5, [r7, ip, lsl #1]
d0002004:	2c3f      	cmp	r4, #63	; 0x3f
d0002006:	dc1c      	bgt.n	d0002042 <stbi__jpeg_decode_block+0x12e>
d0002008:	f8db 3000 	ldr.w	r3, [fp]
d000200c:	2b0f      	cmp	r3, #15
d000200e:	dcd9      	bgt.n	d0001fc4 <stbi__jpeg_decode_block+0xb0>
d0002010:	4630      	mov	r0, r6
d0002012:	f7ff fe13 	bl	d0001c3c <stbi__grow_buffer_unsafe>
d0002016:	f8da 3000 	ldr.w	r3, [sl]
d000201a:	0dd9      	lsrs	r1, r3, #23
d000201c:	f938 5011 	ldrsh.w	r5, [r8, r1, lsl #1]
d0002020:	2d00      	cmp	r5, #0
d0002022:	d1d5      	bne.n	d0001fd0 <stbi__jpeg_decode_block+0xbc>
d0002024:	ee18 1a10 	vmov	r1, s16
d0002028:	4630      	mov	r0, r6
d000202a:	f7ff fee1 	bl	d0001df0 <stbi__jpeg_huff_decode>
d000202e:	2800      	cmp	r0, #0
d0002030:	db86      	blt.n	d0001f40 <stbi__jpeg_decode_block+0x2c>
d0002032:	f010 010f 	ands.w	r1, r0, #15
d0002036:	d10a      	bne.n	d000204e <stbi__jpeg_decode_block+0x13a>
d0002038:	28f0      	cmp	r0, #240	; 0xf0
d000203a:	d102      	bne.n	d0002042 <stbi__jpeg_decode_block+0x12e>
d000203c:	3410      	adds	r4, #16
d000203e:	2c3f      	cmp	r4, #63	; 0x3f
d0002040:	dde2      	ble.n	d0002008 <stbi__jpeg_decode_block+0xf4>
d0002042:	2001      	movs	r0, #1
d0002044:	b003      	add	sp, #12
d0002046:	ecbd 8b02 	vpop	{d8}
d000204a:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d000204e:	f8db 3000 	ldr.w	r3, [fp]
d0002052:	eb04 1020 	add.w	r0, r4, r0, asr #4
d0002056:	4299      	cmp	r1, r3
d0002058:	f100 0401 	add.w	r4, r0, #1
d000205c:	f819 2000 	ldrb.w	r2, [r9, r0]
d0002060:	dc79      	bgt.n	d0002156 <stbi__jpeg_decode_block+0x242>
d0002062:	f8da c000 	ldr.w	ip, [sl]
d0002066:	eba3 0e01 	sub.w	lr, r3, r1
d000206a:	4d55      	ldr	r5, [pc, #340]	; (d00021c0 <stbi__jpeg_decode_block+0x2ac>)
d000206c:	f1c1 0020 	rsb	r0, r1, #32
d0002070:	ea4f 73dc 	mov.w	r3, ip, lsr #31
d0002074:	f855 5021 	ldr.w	r5, [r5, r1, lsl #2]
d0002078:	fa6c f000 	ror.w	r0, ip, r0
d000207c:	9300      	str	r3, [sp, #0]
d000207e:	4b51      	ldr	r3, [pc, #324]	; (d00021c4 <stbi__jpeg_decode_block+0x2b0>)
d0002080:	ea00 0c05 	and.w	ip, r0, r5
d0002084:	ea20 0005 	bic.w	r0, r0, r5
d0002088:	f853 1021 	ldr.w	r1, [r3, r1, lsl #2]
d000208c:	9b00      	ldr	r3, [sp, #0]
d000208e:	f8ca 0000 	str.w	r0, [sl]
d0002092:	3b01      	subs	r3, #1
d0002094:	f8cb e000 	str.w	lr, [fp]
d0002098:	ea03 0501 	and.w	r5, r3, r1
d000209c:	4465      	add	r5, ip
d000209e:	b2ad      	uxth	r5, r5
d00020a0:	b213      	sxth	r3, r2
d00020a2:	9a10      	ldr	r2, [sp, #64]	; 0x40
d00020a4:	f832 c013 	ldrh.w	ip, [r2, r3, lsl #1]
d00020a8:	fb1c f505 	smulbb	r5, ip, r5
d00020ac:	f827 5013 	strh.w	r5, [r7, r3, lsl #1]
d00020b0:	e7a8      	b.n	d0002004 <stbi__jpeg_decode_block+0xf0>
d00020b2:	9100      	str	r1, [sp, #0]
d00020b4:	f7ff fdc2 	bl	d0001c3c <stbi__grow_buffer_unsafe>
d00020b8:	9900      	ldr	r1, [sp, #0]
d00020ba:	e73b      	b.n	d0001f34 <stbi__jpeg_decode_block+0x20>
d00020bc:	2b00      	cmp	r3, #0
d00020be:	f43f af6d 	beq.w	d0001f9c <stbi__jpeg_decode_block+0x88>
d00020c2:	f647 70ff 	movw	r0, #32767	; 0x7fff
d00020c6:	fbb0 f0f3 	udiv	r0, r0, r3
d00020ca:	4290      	cmp	r0, r2
d00020cc:	bfb4      	ite	lt
d00020ce:	2000      	movlt	r0, #0
d00020d0:	2001      	movge	r0, #1
d00020d2:	e75a      	b.n	d0001f8a <stbi__jpeg_decode_block+0x76>
d00020d4:	f244 79c0 	movw	r9, #18368	; 0x47c0
d00020d8:	f856 2009 	ldr.w	r2, [r6, r9]
d00020dc:	4295      	cmp	r5, r2
d00020de:	dc46      	bgt.n	d000216e <stbi__jpeg_decode_block+0x25a>
d00020e0:	f244 70bc 	movw	r0, #18364	; 0x47bc
d00020e4:	f1c5 0120 	rsb	r1, r5, #32
d00020e8:	f8df c0d4 	ldr.w	ip, [pc, #212]	; d00021c0 <stbi__jpeg_decode_block+0x2ac>
d00020ec:	1b52      	subs	r2, r2, r5
d00020ee:	5833      	ldr	r3, [r6, r0]
d00020f0:	eb04 0ac4 	add.w	sl, r4, r4, lsl #3
d00020f4:	f8df 90cc 	ldr.w	r9, [pc, #204]	; d00021c4 <stbi__jpeg_decode_block+0x2b0>
d00020f8:	f244 7ec0 	movw	lr, #18368	; 0x47c0
d00020fc:	fa63 f101 	ror.w	r1, r3, r1
d0002100:	0fdb      	lsrs	r3, r3, #31
d0002102:	f85c c025 	ldr.w	ip, [ip, r5, lsl #2]
d0002106:	eb06 0aca 	add.w	sl, r6, sl, lsl #3
d000210a:	f859 5025 	ldr.w	r5, [r9, r5, lsl #2]
d000210e:	3b01      	subs	r3, #1
d0002110:	f846 200e 	str.w	r2, [r6, lr]
d0002114:	ea21 020c 	bic.w	r2, r1, ip
d0002118:	402b      	ands	r3, r5
d000211a:	ea01 010c 	and.w	r1, r1, ip
d000211e:	f244 65b4 	movw	r5, #18100	; 0x46b4
d0002122:	5032      	str	r2, [r6, r0]
d0002124:	440b      	add	r3, r1
d0002126:	00e1      	lsls	r1, r4, #3
d0002128:	f85a 2005 	ldr.w	r2, [sl, r5]
d000212c:	43dd      	mvns	r5, r3
d000212e:	43d0      	mvns	r0, r2
d0002130:	0fed      	lsrs	r5, r5, #31
d0002132:	0fc0      	lsrs	r0, r0, #31
d0002134:	4285      	cmp	r5, r0
d0002136:	d123      	bne.n	d0002180 <stbi__jpeg_decode_block+0x26c>
d0002138:	2a00      	cmp	r2, #0
d000213a:	da30      	bge.n	d000219e <stbi__jpeg_decode_block+0x28a>
d000213c:	2b00      	cmp	r3, #0
d000213e:	da2e      	bge.n	d000219e <stbi__jpeg_decode_block+0x28a>
d0002140:	f1c3 4000 	rsb	r0, r3, #2147483648	; 0x80000000
d0002144:	4282      	cmp	r2, r0
d0002146:	bfb4      	ite	lt
d0002148:	2000      	movlt	r0, #0
d000214a:	2001      	movge	r0, #1
d000214c:	b9c0      	cbnz	r0, d0002180 <stbi__jpeg_decode_block+0x26c>
d000214e:	4b18      	ldr	r3, [pc, #96]	; (d00021b0 <stbi__jpeg_decode_block+0x29c>)
d0002150:	4a1d      	ldr	r2, [pc, #116]	; (d00021c8 <stbi__jpeg_decode_block+0x2b4>)
d0002152:	601a      	str	r2, [r3, #0]
d0002154:	e6f8      	b.n	d0001f48 <stbi__jpeg_decode_block+0x34>
d0002156:	4630      	mov	r0, r6
d0002158:	9101      	str	r1, [sp, #4]
d000215a:	9200      	str	r2, [sp, #0]
d000215c:	f7ff fd6e 	bl	d0001c3c <stbi__grow_buffer_unsafe>
d0002160:	f8db 3000 	ldr.w	r3, [fp]
d0002164:	9901      	ldr	r1, [sp, #4]
d0002166:	9a00      	ldr	r2, [sp, #0]
d0002168:	4299      	cmp	r1, r3
d000216a:	dc99      	bgt.n	d00020a0 <stbi__jpeg_decode_block+0x18c>
d000216c:	e779      	b.n	d0002062 <stbi__jpeg_decode_block+0x14e>
d000216e:	4630      	mov	r0, r6
d0002170:	f7ff fd64 	bl	d0001c3c <stbi__grow_buffer_unsafe>
d0002174:	f856 2009 	ldr.w	r2, [r6, r9]
d0002178:	4295      	cmp	r5, r2
d000217a:	f73f aef2 	bgt.w	d0001f62 <stbi__jpeg_decode_block+0x4e>
d000217e:	e7af      	b.n	d00020e0 <stbi__jpeg_decode_block+0x1cc>
d0002180:	441a      	add	r2, r3
d0002182:	4421      	add	r1, r4
d0002184:	9b10      	ldr	r3, [sp, #64]	; 0x40
d0002186:	f244 60b4 	movw	r0, #18100	; 0x46b4
d000218a:	eb06 01c1 	add.w	r1, r6, r1, lsl #3
d000218e:	881b      	ldrh	r3, [r3, #0]
d0002190:	500a      	str	r2, [r1, r0]
d0002192:	2b00      	cmp	r3, #0
d0002194:	f43f af02 	beq.w	d0001f9c <stbi__jpeg_decode_block+0x88>
d0002198:	2a00      	cmp	r2, #0
d000219a:	da92      	bge.n	d00020c2 <stbi__jpeg_decode_block+0x1ae>
d000219c:	e6ee      	b.n	d0001f7c <stbi__jpeg_decode_block+0x68>
d000219e:	f06f 4000 	mvn.w	r0, #2147483648	; 0x80000000
d00021a2:	1ac0      	subs	r0, r0, r3
d00021a4:	4282      	cmp	r2, r0
d00021a6:	bfcc      	ite	gt
d00021a8:	2000      	movgt	r0, #0
d00021aa:	2001      	movle	r0, #1
d00021ac:	e7ce      	b.n	d000214c <stbi__jpeg_decode_block+0x238>
d00021ae:	bf00      	nop
d00021b0:	d000e928 	.word	0xd000e928
d00021b4:	d000dd00 	.word	0xd000dd00
d00021b8:	ffff8000 	.word	0xffff8000
d00021bc:	d000dd20 	.word	0xd000dd20
d00021c0:	d000ded4 	.word	0xd000ded4
d00021c4:	d000df18 	.word	0xd000df18
d00021c8:	d000dd14 	.word	0xd000dd14
d00021cc:	d000df58 	.word	0xd000df58

d00021d0 <stbi__jpeg_decode_block_prog_dc>:
d00021d0:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
d00021d4:	f244 75d4 	movw	r5, #18388	; 0x47d4
d00021d8:	5945      	ldr	r5, [r0, r5]
d00021da:	2d00      	cmp	r5, #0
d00021dc:	d149      	bne.n	d0002272 <stbi__jpeg_decode_block_prog_dc+0xa2>
d00021de:	461e      	mov	r6, r3
d00021e0:	f244 73c0 	movw	r3, #18368	; 0x47c0
d00021e4:	4604      	mov	r4, r0
d00021e6:	460f      	mov	r7, r1
d00021e8:	58c3      	ldr	r3, [r0, r3]
d00021ea:	4690      	mov	r8, r2
d00021ec:	2b0f      	cmp	r3, #15
d00021ee:	dd62      	ble.n	d00022b6 <stbi__jpeg_decode_block_prog_dc+0xe6>
d00021f0:	f244 73d8 	movw	r3, #18392	; 0x47d8
d00021f4:	58e5      	ldr	r5, [r4, r3]
d00021f6:	2d00      	cmp	r5, #0
d00021f8:	d141      	bne.n	d000227e <stbi__jpeg_decode_block_prog_dc+0xae>
d00021fa:	2280      	movs	r2, #128	; 0x80
d00021fc:	4629      	mov	r1, r5
d00021fe:	4638      	mov	r0, r7
d0002200:	f00a fa72 	bl	d000c6e8 <memset>
d0002204:	4641      	mov	r1, r8
d0002206:	4620      	mov	r0, r4
d0002208:	f7ff fdf2 	bl	d0001df0 <stbi__jpeg_huff_decode>
d000220c:	280f      	cmp	r0, #15
d000220e:	4680      	mov	r8, r0
d0002210:	d82f      	bhi.n	d0002272 <stbi__jpeg_decode_block_prog_dc+0xa2>
d0002212:	2800      	cmp	r0, #0
d0002214:	d157      	bne.n	d00022c6 <stbi__jpeg_decode_block_prog_dc+0xf6>
d0002216:	eb06 02c6 	add.w	r2, r6, r6, lsl #3
d000221a:	f244 61b4 	movw	r1, #18100	; 0x46b4
d000221e:	00f3      	lsls	r3, r6, #3
d0002220:	eb04 02c2 	add.w	r2, r4, r2, lsl #3
d0002224:	5852      	ldr	r2, [r2, r1]
d0002226:	2a00      	cmp	r2, #0
d0002228:	f280 8098 	bge.w	d000235c <stbi__jpeg_decode_block_prog_dc+0x18c>
d000222c:	f244 70dc 	movw	r0, #18396	; 0x47dc
d0002230:	2501      	movs	r5, #1
d0002232:	4433      	add	r3, r6
d0002234:	f244 61b4 	movw	r1, #18100	; 0x46b4
d0002238:	5820      	ldr	r0, [r4, r0]
d000223a:	eb04 04c3 	add.w	r4, r4, r3, lsl #3
d000223e:	fa05 f300 	lsl.w	r3, r5, r0
d0002242:	5062      	str	r2, [r4, r1]
d0002244:	1959      	adds	r1, r3, r5
d0002246:	42a9      	cmp	r1, r5
d0002248:	d90d      	bls.n	d0002266 <stbi__jpeg_decode_block_prog_dc+0x96>
d000224a:	43d9      	mvns	r1, r3
d000224c:	0fc9      	lsrs	r1, r1, #31
d000224e:	ebb1 7fd2 	cmp.w	r1, r2, lsr #31
d0002252:	f000 8085 	beq.w	d0002360 <stbi__jpeg_decode_block_prog_dc+0x190>
d0002256:	f647 71ff 	movw	r1, #32767	; 0x7fff
d000225a:	4101      	asrs	r1, r0
d000225c:	4291      	cmp	r1, r2
d000225e:	bfb4      	ite	lt
d0002260:	2100      	movlt	r1, #0
d0002262:	2101      	movge	r1, #1
d0002264:	b129      	cbz	r1, d0002272 <stbi__jpeg_decode_block_prog_dc+0xa2>
d0002266:	fb12 f303 	smulbb	r3, r2, r3
d000226a:	2001      	movs	r0, #1
d000226c:	803b      	strh	r3, [r7, #0]
d000226e:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
d0002272:	4b4b      	ldr	r3, [pc, #300]	; (d00023a0 <stbi__jpeg_decode_block_prog_dc+0x1d0>)
d0002274:	2000      	movs	r0, #0
d0002276:	4a4b      	ldr	r2, [pc, #300]	; (d00023a4 <stbi__jpeg_decode_block_prog_dc+0x1d4>)
d0002278:	601a      	str	r2, [r3, #0]
d000227a:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
d000227e:	f244 75c0 	movw	r5, #18368	; 0x47c0
d0002282:	5963      	ldr	r3, [r4, r5]
d0002284:	2b00      	cmp	r3, #0
d0002286:	dd60      	ble.n	d000234a <stbi__jpeg_decode_block_prog_dc+0x17a>
d0002288:	f244 71bc 	movw	r1, #18364	; 0x47bc
d000228c:	3b01      	subs	r3, #1
d000228e:	f244 70c0 	movw	r0, #18368	; 0x47c0
d0002292:	5862      	ldr	r2, [r4, r1]
d0002294:	5023      	str	r3, [r4, r0]
d0002296:	2a00      	cmp	r2, #0
d0002298:	ea4f 0342 	mov.w	r3, r2, lsl #1
d000229c:	5063      	str	r3, [r4, r1]
d000229e:	da5a      	bge.n	d0002356 <stbi__jpeg_decode_block_prog_dc+0x186>
d00022a0:	f244 71dc 	movw	r1, #18396	; 0x47dc
d00022a4:	2301      	movs	r3, #1
d00022a6:	883a      	ldrh	r2, [r7, #0]
d00022a8:	5861      	ldr	r1, [r4, r1]
d00022aa:	4618      	mov	r0, r3
d00022ac:	408b      	lsls	r3, r1
d00022ae:	4413      	add	r3, r2
d00022b0:	803b      	strh	r3, [r7, #0]
d00022b2:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
d00022b6:	f7ff fcc1 	bl	d0001c3c <stbi__grow_buffer_unsafe>
d00022ba:	f244 73d8 	movw	r3, #18392	; 0x47d8
d00022be:	58e5      	ldr	r5, [r4, r3]
d00022c0:	2d00      	cmp	r5, #0
d00022c2:	d1dc      	bne.n	d000227e <stbi__jpeg_decode_block_prog_dc+0xae>
d00022c4:	e799      	b.n	d00021fa <stbi__jpeg_decode_block_prog_dc+0x2a>
d00022c6:	f244 79c0 	movw	r9, #18368	; 0x47c0
d00022ca:	f854 1009 	ldr.w	r1, [r4, r9]
d00022ce:	4288      	cmp	r0, r1
d00022d0:	dc50      	bgt.n	d0002374 <stbi__jpeg_decode_block_prog_dc+0x1a4>
d00022d2:	f244 7cbc 	movw	ip, #18364	; 0x47bc
d00022d6:	f1c8 0e20 	rsb	lr, r8, #32
d00022da:	4d33      	ldr	r5, [pc, #204]	; (d00023a8 <stbi__jpeg_decode_block_prog_dc+0x1d8>)
d00022dc:	eba1 0108 	sub.w	r1, r1, r8
d00022e0:	f854 200c 	ldr.w	r2, [r4, ip]
d00022e4:	eb06 00c6 	add.w	r0, r6, r6, lsl #3
d00022e8:	f855 5028 	ldr.w	r5, [r5, r8, lsl #2]
d00022ec:	f244 79c0 	movw	r9, #18368	; 0x47c0
d00022f0:	fa62 f30e 	ror.w	r3, r2, lr
d00022f4:	0fd2      	lsrs	r2, r2, #31
d00022f6:	f8df e0bc 	ldr.w	lr, [pc, #188]	; d00023b4 <stbi__jpeg_decode_block_prog_dc+0x1e4>
d00022fa:	eb04 00c0 	add.w	r0, r4, r0, lsl #3
d00022fe:	3a01      	subs	r2, #1
d0002300:	f844 1009 	str.w	r1, [r4, r9]
d0002304:	f85e e028 	ldr.w	lr, [lr, r8, lsl #2]
d0002308:	ea23 0105 	bic.w	r1, r3, r5
d000230c:	402b      	ands	r3, r5
d000230e:	ea02 050e 	and.w	r5, r2, lr
d0002312:	f244 62b4 	movw	r2, #18100	; 0x46b4
d0002316:	f844 100c 	str.w	r1, [r4, ip]
d000231a:	441d      	add	r5, r3
d000231c:	5882      	ldr	r2, [r0, r2]
d000231e:	00f3      	lsls	r3, r6, #3
d0002320:	43e9      	mvns	r1, r5
d0002322:	43d0      	mvns	r0, r2
d0002324:	0fc9      	lsrs	r1, r1, #31
d0002326:	0fc0      	lsrs	r0, r0, #31
d0002328:	4288      	cmp	r0, r1
d000232a:	d117      	bne.n	d000235c <stbi__jpeg_decode_block_prog_dc+0x18c>
d000232c:	2a00      	cmp	r2, #0
d000232e:	da2f      	bge.n	d0002390 <stbi__jpeg_decode_block_prog_dc+0x1c0>
d0002330:	2d00      	cmp	r5, #0
d0002332:	da2d      	bge.n	d0002390 <stbi__jpeg_decode_block_prog_dc+0x1c0>
d0002334:	f1c5 4000 	rsb	r0, r5, #2147483648	; 0x80000000
d0002338:	4282      	cmp	r2, r0
d000233a:	bfb4      	ite	lt
d000233c:	2000      	movlt	r0, #0
d000233e:	2001      	movge	r0, #1
d0002340:	b960      	cbnz	r0, d000235c <stbi__jpeg_decode_block_prog_dc+0x18c>
d0002342:	4b17      	ldr	r3, [pc, #92]	; (d00023a0 <stbi__jpeg_decode_block_prog_dc+0x1d0>)
d0002344:	4a19      	ldr	r2, [pc, #100]	; (d00023ac <stbi__jpeg_decode_block_prog_dc+0x1dc>)
d0002346:	601a      	str	r2, [r3, #0]
d0002348:	e797      	b.n	d000227a <stbi__jpeg_decode_block_prog_dc+0xaa>
d000234a:	4620      	mov	r0, r4
d000234c:	f7ff fc76 	bl	d0001c3c <stbi__grow_buffer_unsafe>
d0002350:	5963      	ldr	r3, [r4, r5]
d0002352:	2b00      	cmp	r3, #0
d0002354:	dc98      	bgt.n	d0002288 <stbi__jpeg_decode_block_prog_dc+0xb8>
d0002356:	2001      	movs	r0, #1
d0002358:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
d000235c:	442a      	add	r2, r5
d000235e:	e765      	b.n	d000222c <stbi__jpeg_decode_block_prog_dc+0x5c>
d0002360:	4913      	ldr	r1, [pc, #76]	; (d00023b0 <stbi__jpeg_decode_block_prog_dc+0x1e0>)
d0002362:	2b00      	cmp	r3, #0
d0002364:	fb91 f1f3 	sdiv	r1, r1, r3
d0002368:	db0d      	blt.n	d0002386 <stbi__jpeg_decode_block_prog_dc+0x1b6>
d000236a:	4291      	cmp	r1, r2
d000236c:	bfcc      	ite	gt
d000236e:	2100      	movgt	r1, #0
d0002370:	2101      	movle	r1, #1
d0002372:	e777      	b.n	d0002264 <stbi__jpeg_decode_block_prog_dc+0x94>
d0002374:	4620      	mov	r0, r4
d0002376:	f7ff fc61 	bl	d0001c3c <stbi__grow_buffer_unsafe>
d000237a:	f854 1009 	ldr.w	r1, [r4, r9]
d000237e:	4588      	cmp	r8, r1
d0002380:	f73f af49 	bgt.w	d0002216 <stbi__jpeg_decode_block_prog_dc+0x46>
d0002384:	e7a5      	b.n	d00022d2 <stbi__jpeg_decode_block_prog_dc+0x102>
d0002386:	4291      	cmp	r1, r2
d0002388:	bfb4      	ite	lt
d000238a:	2100      	movlt	r1, #0
d000238c:	2101      	movge	r1, #1
d000238e:	e769      	b.n	d0002264 <stbi__jpeg_decode_block_prog_dc+0x94>
d0002390:	f06f 4000 	mvn.w	r0, #2147483648	; 0x80000000
d0002394:	1b40      	subs	r0, r0, r5
d0002396:	4282      	cmp	r2, r0
d0002398:	bfcc      	ite	gt
d000239a:	2000      	movgt	r0, #0
d000239c:	2001      	movle	r0, #1
d000239e:	e7cf      	b.n	d0002340 <stbi__jpeg_decode_block_prog_dc+0x170>
d00023a0:	d000e928 	.word	0xd000e928
d00023a4:	d000dd20 	.word	0xd000dd20
d00023a8:	d000ded4 	.word	0xd000ded4
d00023ac:	d000dd14 	.word	0xd000dd14
d00023b0:	ffff8000 	.word	0xffff8000
d00023b4:	d000df18 	.word	0xd000df18

d00023b8 <stbi__process_marker>:
d00023b8:	29dd      	cmp	r1, #221	; 0xdd
d00023ba:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d00023be:	4681      	mov	r9, r0
d00023c0:	b095      	sub	sp, #84	; 0x54
d00023c2:	f000 81a2 	beq.w	d000270a <stbi__process_marker+0x352>
d00023c6:	460c      	mov	r4, r1
d00023c8:	f300 80dc 	bgt.w	d0002584 <stbi__process_marker+0x1cc>
d00023cc:	29c4      	cmp	r1, #196	; 0xc4
d00023ce:	f000 8125 	beq.w	d000261c <stbi__process_marker+0x264>
d00023d2:	29db      	cmp	r1, #219	; 0xdb
d00023d4:	f040 81b4 	bne.w	d0002740 <stbi__process_marker+0x388>
d00023d8:	6800      	ldr	r0, [r0, #0]
d00023da:	f7ff fb4d 	bl	d0001a78 <stbi__get16be>
d00023de:	1e83      	subs	r3, r0, #2
d00023e0:	2b00      	cmp	r3, #0
d00023e2:	9301      	str	r3, [sp, #4]
d00023e4:	f340 80c7 	ble.w	d0002576 <stbi__process_marker+0x1be>
d00023e8:	f8d9 4000 	ldr.w	r4, [r9]
d00023ec:	f8d4 30ac 	ldr.w	r3, [r4, #172]	; 0xac
d00023f0:	f8d4 20b0 	ldr.w	r2, [r4, #176]	; 0xb0
d00023f4:	4293      	cmp	r3, r2
d00023f6:	f0c0 80dc 	bcc.w	d00025b2 <stbi__process_marker+0x1fa>
d00023fa:	6a26      	ldr	r6, [r4, #32]
d00023fc:	2e00      	cmp	r6, #0
d00023fe:	f040 80ed 	bne.w	d00025dc <stbi__process_marker+0x224>
d0002402:	4637      	mov	r7, r6
d0002404:	4dc7      	ldr	r5, [pc, #796]	; (d0002724 <stbi__process_marker+0x36c>)
d0002406:	01bf      	lsls	r7, r7, #6
d0002408:	f105 0840 	add.w	r8, r5, #64	; 0x40
d000240c:	b1e6      	cbz	r6, d0002448 <stbi__process_marker+0x90>
d000240e:	4293      	cmp	r3, r2
d0002410:	d321      	bcc.n	d0002456 <stbi__process_marker+0x9e>
d0002412:	f8d4 b020 	ldr.w	fp, [r4, #32]
d0002416:	f1bb 0f00 	cmp.w	fp, #0
d000241a:	d131      	bne.n	d0002480 <stbi__process_marker+0xc8>
d000241c:	fa1f fb8b 	uxth.w	fp, fp
d0002420:	f815 3f01 	ldrb.w	r3, [r5, #1]!
d0002424:	443b      	add	r3, r7
d0002426:	45a8      	cmp	r8, r5
d0002428:	f503 53d2 	add.w	r3, r3, #6720	; 0x1a40
d000242c:	eb09 0343 	add.w	r3, r9, r3, lsl #1
d0002430:	f8a3 b004 	strh.w	fp, [r3, #4]
d0002434:	f000 8098 	beq.w	d0002568 <stbi__process_marker+0x1b0>
d0002438:	f8d9 4000 	ldr.w	r4, [r9]
d000243c:	f8d4 30ac 	ldr.w	r3, [r4, #172]	; 0xac
d0002440:	f8d4 20b0 	ldr.w	r2, [r4, #176]	; 0xb0
d0002444:	2e00      	cmp	r6, #0
d0002446:	d1e2      	bne.n	d000240e <stbi__process_marker+0x56>
d0002448:	4293      	cmp	r3, r2
d000244a:	d313      	bcc.n	d0002474 <stbi__process_marker+0xbc>
d000244c:	6a23      	ldr	r3, [r4, #32]
d000244e:	2b00      	cmp	r3, #0
d0002450:	d15c      	bne.n	d000250c <stbi__process_marker+0x154>
d0002452:	46b3      	mov	fp, r6
d0002454:	e7e4      	b.n	d0002420 <stbi__process_marker+0x68>
d0002456:	1c59      	adds	r1, r3, #1
d0002458:	f8c4 10ac 	str.w	r1, [r4, #172]	; 0xac
d000245c:	4291      	cmp	r1, r2
d000245e:	f893 b000 	ldrb.w	fp, [r3]
d0002462:	ea4f 2b0b 	mov.w	fp, fp, lsl #8
d0002466:	d22e      	bcs.n	d00024c6 <stbi__process_marker+0x10e>
d0002468:	1c4b      	adds	r3, r1, #1
d000246a:	f8c4 30ac 	str.w	r3, [r4, #172]	; 0xac
d000246e:	780b      	ldrb	r3, [r1, #0]
d0002470:	449b      	add	fp, r3
d0002472:	e7d3      	b.n	d000241c <stbi__process_marker+0x64>
d0002474:	1c5a      	adds	r2, r3, #1
d0002476:	f8c4 20ac 	str.w	r2, [r4, #172]	; 0xac
d000247a:	f893 b000 	ldrb.w	fp, [r3]
d000247e:	e7cf      	b.n	d0002420 <stbi__process_marker+0x68>
d0002480:	f104 0a28 	add.w	sl, r4, #40	; 0x28
d0002484:	6923      	ldr	r3, [r4, #16]
d0002486:	6a62      	ldr	r2, [r4, #36]	; 0x24
d0002488:	4651      	mov	r1, sl
d000248a:	69e0      	ldr	r0, [r4, #28]
d000248c:	4798      	blx	r3
d000248e:	f8d4 20ac 	ldr.w	r2, [r4, #172]	; 0xac
d0002492:	f8d4 10b4 	ldr.w	r1, [r4, #180]	; 0xb4
d0002496:	f8d4 30a8 	ldr.w	r3, [r4, #168]	; 0xa8
d000249a:	1a52      	subs	r2, r2, r1
d000249c:	4413      	add	r3, r2
d000249e:	f8c4 30a8 	str.w	r3, [r4, #168]	; 0xa8
d00024a2:	2800      	cmp	r0, #0
d00024a4:	d150      	bne.n	d0002548 <stbi__process_marker+0x190>
d00024a6:	f104 0229 	add.w	r2, r4, #41	; 0x29
d00024aa:	6220      	str	r0, [r4, #32]
d00024ac:	f884 0028 	strb.w	r0, [r4, #40]	; 0x28
d00024b0:	4611      	mov	r1, r2
d00024b2:	f894 b028 	ldrb.w	fp, [r4, #40]	; 0x28
d00024b6:	4291      	cmp	r1, r2
d00024b8:	f8c4 20b0 	str.w	r2, [r4, #176]	; 0xb0
d00024bc:	ea4f 2b0b 	mov.w	fp, fp, lsl #8
d00024c0:	f8c4 10ac 	str.w	r1, [r4, #172]	; 0xac
d00024c4:	d3d0      	bcc.n	d0002468 <stbi__process_marker+0xb0>
d00024c6:	6a23      	ldr	r3, [r4, #32]
d00024c8:	2b00      	cmp	r3, #0
d00024ca:	d0a7      	beq.n	d000241c <stbi__process_marker+0x64>
d00024cc:	f104 0a28 	add.w	sl, r4, #40	; 0x28
d00024d0:	6923      	ldr	r3, [r4, #16]
d00024d2:	6a62      	ldr	r2, [r4, #36]	; 0x24
d00024d4:	4651      	mov	r1, sl
d00024d6:	69e0      	ldr	r0, [r4, #28]
d00024d8:	4798      	blx	r3
d00024da:	f8d4 20ac 	ldr.w	r2, [r4, #172]	; 0xac
d00024de:	f8d4 10b4 	ldr.w	r1, [r4, #180]	; 0xb4
d00024e2:	f8d4 30a8 	ldr.w	r3, [r4, #168]	; 0xa8
d00024e6:	1a52      	subs	r2, r2, r1
d00024e8:	4413      	add	r3, r2
d00024ea:	f8c4 30a8 	str.w	r3, [r4, #168]	; 0xa8
d00024ee:	bbb0      	cbnz	r0, d000255e <stbi__process_marker+0x1a6>
d00024f0:	f104 0129 	add.w	r1, r4, #41	; 0x29
d00024f4:	6220      	str	r0, [r4, #32]
d00024f6:	f884 0028 	strb.w	r0, [r4, #40]	; 0x28
d00024fa:	460a      	mov	r2, r1
d00024fc:	f894 3028 	ldrb.w	r3, [r4, #40]	; 0x28
d0002500:	f8c4 10b0 	str.w	r1, [r4, #176]	; 0xb0
d0002504:	449b      	add	fp, r3
d0002506:	f8c4 20ac 	str.w	r2, [r4, #172]	; 0xac
d000250a:	e787      	b.n	d000241c <stbi__process_marker+0x64>
d000250c:	f104 0a28 	add.w	sl, r4, #40	; 0x28
d0002510:	6923      	ldr	r3, [r4, #16]
d0002512:	6a62      	ldr	r2, [r4, #36]	; 0x24
d0002514:	4651      	mov	r1, sl
d0002516:	69e0      	ldr	r0, [r4, #28]
d0002518:	4798      	blx	r3
d000251a:	f8d4 20ac 	ldr.w	r2, [r4, #172]	; 0xac
d000251e:	f8d4 10b4 	ldr.w	r1, [r4, #180]	; 0xb4
d0002522:	f8d4 30a8 	ldr.w	r3, [r4, #168]	; 0xa8
d0002526:	1a52      	subs	r2, r2, r1
d0002528:	4413      	add	r3, r2
d000252a:	f8c4 30a8 	str.w	r3, [r4, #168]	; 0xa8
d000252e:	b980      	cbnz	r0, d0002552 <stbi__process_marker+0x19a>
d0002530:	f104 0029 	add.w	r0, r4, #41	; 0x29
d0002534:	46b3      	mov	fp, r6
d0002536:	6226      	str	r6, [r4, #32]
d0002538:	4603      	mov	r3, r0
d000253a:	f884 6028 	strb.w	r6, [r4, #40]	; 0x28
d000253e:	f8c4 00b0 	str.w	r0, [r4, #176]	; 0xb0
d0002542:	f8c4 30ac 	str.w	r3, [r4, #172]	; 0xac
d0002546:	e76b      	b.n	d0002420 <stbi__process_marker+0x68>
d0002548:	eb0a 0200 	add.w	r2, sl, r0
d000254c:	f104 0129 	add.w	r1, r4, #41	; 0x29
d0002550:	e7af      	b.n	d00024b2 <stbi__process_marker+0xfa>
d0002552:	4450      	add	r0, sl
d0002554:	f104 0329 	add.w	r3, r4, #41	; 0x29
d0002558:	f894 b028 	ldrb.w	fp, [r4, #40]	; 0x28
d000255c:	e7ef      	b.n	d000253e <stbi__process_marker+0x186>
d000255e:	eb0a 0100 	add.w	r1, sl, r0
d0002562:	f104 0229 	add.w	r2, r4, #41	; 0x29
d0002566:	e7c9      	b.n	d00024fc <stbi__process_marker+0x144>
d0002568:	9b01      	ldr	r3, [sp, #4]
d000256a:	b1ae      	cbz	r6, d0002598 <stbi__process_marker+0x1e0>
d000256c:	3b81      	subs	r3, #129	; 0x81
d000256e:	2b00      	cmp	r3, #0
d0002570:	9301      	str	r3, [sp, #4]
d0002572:	f73f af39 	bgt.w	d00023e8 <stbi__process_marker+0x30>
d0002576:	9b01      	ldr	r3, [sp, #4]
d0002578:	fab3 f083 	clz	r0, r3
d000257c:	0940      	lsrs	r0, r0, #5
d000257e:	b015      	add	sp, #84	; 0x54
d0002580:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0002584:	29ff      	cmp	r1, #255	; 0xff
d0002586:	f040 80d5 	bne.w	d0002734 <stbi__process_marker+0x37c>
d000258a:	4b67      	ldr	r3, [pc, #412]	; (d0002728 <stbi__process_marker+0x370>)
d000258c:	2000      	movs	r0, #0
d000258e:	4a67      	ldr	r2, [pc, #412]	; (d000272c <stbi__process_marker+0x374>)
d0002590:	601a      	str	r2, [r3, #0]
d0002592:	b015      	add	sp, #84	; 0x54
d0002594:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0002598:	3b41      	subs	r3, #65	; 0x41
d000259a:	2b00      	cmp	r3, #0
d000259c:	9301      	str	r3, [sp, #4]
d000259e:	ddea      	ble.n	d0002576 <stbi__process_marker+0x1be>
d00025a0:	f8d9 4000 	ldr.w	r4, [r9]
d00025a4:	f8d4 30ac 	ldr.w	r3, [r4, #172]	; 0xac
d00025a8:	f8d4 20b0 	ldr.w	r2, [r4, #176]	; 0xb0
d00025ac:	4293      	cmp	r3, r2
d00025ae:	f4bf af24 	bcs.w	d00023fa <stbi__process_marker+0x42>
d00025b2:	1c5a      	adds	r2, r3, #1
d00025b4:	f8c4 20ac 	str.w	r2, [r4, #172]	; 0xac
d00025b8:	781b      	ldrb	r3, [r3, #0]
d00025ba:	111e      	asrs	r6, r3, #4
d00025bc:	f003 070f 	and.w	r7, r3, #15
d00025c0:	2e01      	cmp	r6, #1
d00025c2:	f300 81f6 	bgt.w	d00029b2 <stbi__process_marker+0x5fa>
d00025c6:	f013 0f0c 	tst.w	r3, #12
d00025ca:	f040 81f7 	bne.w	d00029bc <stbi__process_marker+0x604>
d00025ce:	f8d9 4000 	ldr.w	r4, [r9]
d00025d2:	f8d4 30ac 	ldr.w	r3, [r4, #172]	; 0xac
d00025d6:	f8d4 20b0 	ldr.w	r2, [r4, #176]	; 0xb0
d00025da:	e713      	b.n	d0002404 <stbi__process_marker+0x4c>
d00025dc:	f104 0528 	add.w	r5, r4, #40	; 0x28
d00025e0:	6923      	ldr	r3, [r4, #16]
d00025e2:	6a62      	ldr	r2, [r4, #36]	; 0x24
d00025e4:	4629      	mov	r1, r5
d00025e6:	69e0      	ldr	r0, [r4, #28]
d00025e8:	4798      	blx	r3
d00025ea:	f8d4 20ac 	ldr.w	r2, [r4, #172]	; 0xac
d00025ee:	f8d4 10b4 	ldr.w	r1, [r4, #180]	; 0xb4
d00025f2:	4606      	mov	r6, r0
d00025f4:	f8d4 30a8 	ldr.w	r3, [r4, #168]	; 0xa8
d00025f8:	1a52      	subs	r2, r2, r1
d00025fa:	4413      	add	r3, r2
d00025fc:	f8c4 30a8 	str.w	r3, [r4, #168]	; 0xa8
d0002600:	2800      	cmp	r0, #0
d0002602:	f040 80a4 	bne.w	d000274e <stbi__process_marker+0x396>
d0002606:	f104 0329 	add.w	r3, r4, #41	; 0x29
d000260a:	4607      	mov	r7, r0
d000260c:	6220      	str	r0, [r4, #32]
d000260e:	f884 0028 	strb.w	r0, [r4, #40]	; 0x28
d0002612:	f8c4 30b0 	str.w	r3, [r4, #176]	; 0xb0
d0002616:	f8c4 30ac 	str.w	r3, [r4, #172]	; 0xac
d000261a:	e7d8      	b.n	d00025ce <stbi__process_marker+0x216>
d000261c:	6800      	ldr	r0, [r0, #0]
d000261e:	f7ff fa2b 	bl	d0001a78 <stbi__get16be>
d0002622:	f1a0 0b02 	sub.w	fp, r0, #2
d0002626:	f1bb 0f00 	cmp.w	fp, #0
d000262a:	f340 814b 	ble.w	d00028c4 <stbi__process_marker+0x50c>
d000262e:	f04f 0a00 	mov.w	sl, #0
d0002632:	f8d9 4000 	ldr.w	r4, [r9]
d0002636:	f8d4 30ac 	ldr.w	r3, [r4, #172]	; 0xac
d000263a:	f8d4 20b0 	ldr.w	r2, [r4, #176]	; 0xb0
d000263e:	4293      	cmp	r3, r2
d0002640:	f0c0 815e 	bcc.w	d0002900 <stbi__process_marker+0x548>
d0002644:	6a21      	ldr	r1, [r4, #32]
d0002646:	9101      	str	r1, [sp, #4]
d0002648:	2900      	cmp	r1, #0
d000264a:	f040 8173 	bne.w	d0002934 <stbi__process_marker+0x57c>
d000264e:	4688      	mov	r8, r1
d0002650:	9102      	str	r1, [sp, #8]
d0002652:	ad03      	add	r5, sp, #12
d0002654:	2600      	movs	r6, #0
d0002656:	e00e      	b.n	d0002676 <stbi__process_marker+0x2be>
d0002658:	6a20      	ldr	r0, [r4, #32]
d000265a:	2800      	cmp	r0, #0
d000265c:	f040 80a0 	bne.w	d00027a0 <stbi__process_marker+0x3e8>
d0002660:	ab13      	add	r3, sp, #76	; 0x4c
d0002662:	f845 0f04 	str.w	r0, [r5, #4]!
d0002666:	42ab      	cmp	r3, r5
d0002668:	d011      	beq.n	d000268e <stbi__process_marker+0x2d6>
d000266a:	f8d9 4000 	ldr.w	r4, [r9]
d000266e:	f8d4 30ac 	ldr.w	r3, [r4, #172]	; 0xac
d0002672:	f8d4 20b0 	ldr.w	r2, [r4, #176]	; 0xb0
d0002676:	429a      	cmp	r2, r3
d0002678:	d9ee      	bls.n	d0002658 <stbi__process_marker+0x2a0>
d000267a:	1c5a      	adds	r2, r3, #1
d000267c:	f8c4 20ac 	str.w	r2, [r4, #172]	; 0xac
d0002680:	7818      	ldrb	r0, [r3, #0]
d0002682:	ab13      	add	r3, sp, #76	; 0x4c
d0002684:	f845 0f04 	str.w	r0, [r5, #4]!
d0002688:	42ab      	cmp	r3, r5
d000268a:	4406      	add	r6, r0
d000268c:	d1ed      	bne.n	d000266a <stbi__process_marker+0x2b2>
d000268e:	f5b6 7f80 	cmp.w	r6, #256	; 0x100
d0002692:	f300 816e 	bgt.w	d0002972 <stbi__process_marker+0x5ba>
d0002696:	f1ab 0311 	sub.w	r3, fp, #17
d000269a:	f44f 64d2 	mov.w	r4, #1680	; 0x690
d000269e:	9303      	str	r3, [sp, #12]
d00026a0:	9b01      	ldr	r3, [sp, #4]
d00026a2:	2b00      	cmp	r3, #0
d00026a4:	f040 8116 	bne.w	d00028d4 <stbi__process_marker+0x51c>
d00026a8:	f109 0004 	add.w	r0, r9, #4
d00026ac:	fb04 fb08 	mul.w	fp, r4, r8
d00026b0:	a904      	add	r1, sp, #16
d00026b2:	4458      	add	r0, fp
d00026b4:	f7ff f924 	bl	d0001900 <stbi__build_huffman>
d00026b8:	2800      	cmp	r0, #0
d00026ba:	f000 815d 	beq.w	d0002978 <stbi__process_marker+0x5c0>
d00026be:	9b02      	ldr	r3, [sp, #8]
d00026c0:	fb04 9403 	mla	r4, r4, r3, r9
d00026c4:	f204 4804 	addw	r8, r4, #1028	; 0x404
d00026c8:	2e00      	cmp	r6, #0
d00026ca:	f000 80f4 	beq.w	d00028b6 <stbi__process_marker+0x4fe>
d00026ce:	f108 35ff 	add.w	r5, r8, #4294967295	; 0xffffffff
d00026d2:	e00d      	b.n	d00026f0 <stbi__process_marker+0x338>
d00026d4:	6a23      	ldr	r3, [r4, #32]
d00026d6:	461a      	mov	r2, r3
d00026d8:	2b00      	cmp	r3, #0
d00026da:	f040 8083 	bne.w	d00027e4 <stbi__process_marker+0x42c>
d00026de:	1cab      	adds	r3, r5, #2
d00026e0:	1c69      	adds	r1, r5, #1
d00026e2:	706a      	strb	r2, [r5, #1]
d00026e4:	eba3 0308 	sub.w	r3, r3, r8
d00026e8:	460d      	mov	r5, r1
d00026ea:	429e      	cmp	r6, r3
d00026ec:	f340 8099 	ble.w	d0002822 <stbi__process_marker+0x46a>
d00026f0:	f8d9 4000 	ldr.w	r4, [r9]
d00026f4:	f8d4 30ac 	ldr.w	r3, [r4, #172]	; 0xac
d00026f8:	f8d4 20b0 	ldr.w	r2, [r4, #176]	; 0xb0
d00026fc:	4293      	cmp	r3, r2
d00026fe:	d2e9      	bcs.n	d00026d4 <stbi__process_marker+0x31c>
d0002700:	1c5a      	adds	r2, r3, #1
d0002702:	f8c4 20ac 	str.w	r2, [r4, #172]	; 0xac
d0002706:	781a      	ldrb	r2, [r3, #0]
d0002708:	e7e9      	b.n	d00026de <stbi__process_marker+0x326>
d000270a:	6800      	ldr	r0, [r0, #0]
d000270c:	f7ff f9b4 	bl	d0001a78 <stbi__get16be>
d0002710:	2804      	cmp	r0, #4
d0002712:	d029      	beq.n	d0002768 <stbi__process_marker+0x3b0>
d0002714:	4b04      	ldr	r3, [pc, #16]	; (d0002728 <stbi__process_marker+0x370>)
d0002716:	2000      	movs	r0, #0
d0002718:	4a05      	ldr	r2, [pc, #20]	; (d0002730 <stbi__process_marker+0x378>)
d000271a:	601a      	str	r2, [r3, #0]
d000271c:	b015      	add	sp, #84	; 0x54
d000271e:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0002722:	bf00      	nop
d0002724:	d000df57 	.word	0xd000df57
d0002728:	d000e928 	.word	0xd000e928
d000272c:	d000dd38 	.word	0xd000dd38
d0002730:	d000dd48 	.word	0xd000dd48
d0002734:	f1a1 03e0 	sub.w	r3, r1, #224	; 0xe0
d0002738:	2b0f      	cmp	r3, #15
d000273a:	d920      	bls.n	d000277e <stbi__process_marker+0x3c6>
d000273c:	29fe      	cmp	r1, #254	; 0xfe
d000273e:	d01e      	beq.n	d000277e <stbi__process_marker+0x3c6>
d0002740:	4ba1      	ldr	r3, [pc, #644]	; (d00029c8 <stbi__process_marker+0x610>)
d0002742:	2000      	movs	r0, #0
d0002744:	4aa1      	ldr	r2, [pc, #644]	; (d00029cc <stbi__process_marker+0x614>)
d0002746:	601a      	str	r2, [r3, #0]
d0002748:	b015      	add	sp, #84	; 0x54
d000274a:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d000274e:	f894 3028 	ldrb.w	r3, [r4, #40]	; 0x28
d0002752:	4405      	add	r5, r0
d0002754:	f104 0229 	add.w	r2, r4, #41	; 0x29
d0002758:	111e      	asrs	r6, r3, #4
d000275a:	f003 070f 	and.w	r7, r3, #15
d000275e:	f8c4 50b0 	str.w	r5, [r4, #176]	; 0xb0
d0002762:	f8c4 20ac 	str.w	r2, [r4, #172]	; 0xac
d0002766:	e72b      	b.n	d00025c0 <stbi__process_marker+0x208>
d0002768:	f8d9 0000 	ldr.w	r0, [r9]
d000276c:	f7ff f984 	bl	d0001a78 <stbi__get16be>
d0002770:	f644 0304 	movw	r3, #18436	; 0x4804
d0002774:	4602      	mov	r2, r0
d0002776:	2001      	movs	r0, #1
d0002778:	f849 2003 	str.w	r2, [r9, r3]
d000277c:	e6ff      	b.n	d000257e <stbi__process_marker+0x1c6>
d000277e:	f8d9 0000 	ldr.w	r0, [r9]
d0002782:	f7ff f979 	bl	d0001a78 <stbi__get16be>
d0002786:	2801      	cmp	r0, #1
d0002788:	4606      	mov	r6, r0
d000278a:	f300 812b 	bgt.w	d00029e4 <stbi__process_marker+0x62c>
d000278e:	2cfe      	cmp	r4, #254	; 0xfe
d0002790:	4b8d      	ldr	r3, [pc, #564]	; (d00029c8 <stbi__process_marker+0x610>)
d0002792:	f04f 0000 	mov.w	r0, #0
d0002796:	bf0c      	ite	eq
d0002798:	4a8d      	ldreq	r2, [pc, #564]	; (d00029d0 <stbi__process_marker+0x618>)
d000279a:	4a8e      	ldrne	r2, [pc, #568]	; (d00029d4 <stbi__process_marker+0x61c>)
d000279c:	601a      	str	r2, [r3, #0]
d000279e:	e6ee      	b.n	d000257e <stbi__process_marker+0x1c6>
d00027a0:	f104 0728 	add.w	r7, r4, #40	; 0x28
d00027a4:	6923      	ldr	r3, [r4, #16]
d00027a6:	6a62      	ldr	r2, [r4, #36]	; 0x24
d00027a8:	4639      	mov	r1, r7
d00027aa:	69e0      	ldr	r0, [r4, #28]
d00027ac:	4798      	blx	r3
d00027ae:	f8d4 30ac 	ldr.w	r3, [r4, #172]	; 0xac
d00027b2:	f8d4 20b4 	ldr.w	r2, [r4, #180]	; 0xb4
d00027b6:	f104 0129 	add.w	r1, r4, #41	; 0x29
d00027ba:	1a9a      	subs	r2, r3, r2
d00027bc:	f8d4 30a8 	ldr.w	r3, [r4, #168]	; 0xa8
d00027c0:	468c      	mov	ip, r1
d00027c2:	4413      	add	r3, r2
d00027c4:	f8c4 30a8 	str.w	r3, [r4, #168]	; 0xa8
d00027c8:	b938      	cbnz	r0, d00027da <stbi__process_marker+0x422>
d00027ca:	6220      	str	r0, [r4, #32]
d00027cc:	f884 0028 	strb.w	r0, [r4, #40]	; 0x28
d00027d0:	f8c4 10b0 	str.w	r1, [r4, #176]	; 0xb0
d00027d4:	f8c4 c0ac 	str.w	ip, [r4, #172]	; 0xac
d00027d8:	e742      	b.n	d0002660 <stbi__process_marker+0x2a8>
d00027da:	1839      	adds	r1, r7, r0
d00027dc:	f894 0028 	ldrb.w	r0, [r4, #40]	; 0x28
d00027e0:	4406      	add	r6, r0
d00027e2:	e7f5      	b.n	d00027d0 <stbi__process_marker+0x418>
d00027e4:	f104 0728 	add.w	r7, r4, #40	; 0x28
d00027e8:	6923      	ldr	r3, [r4, #16]
d00027ea:	6a62      	ldr	r2, [r4, #36]	; 0x24
d00027ec:	4639      	mov	r1, r7
d00027ee:	69e0      	ldr	r0, [r4, #28]
d00027f0:	4798      	blx	r3
d00027f2:	f8d4 30ac 	ldr.w	r3, [r4, #172]	; 0xac
d00027f6:	f8d4 20b4 	ldr.w	r2, [r4, #180]	; 0xb4
d00027fa:	f104 0129 	add.w	r1, r4, #41	; 0x29
d00027fe:	1a9a      	subs	r2, r3, r2
d0002800:	f8d4 30a8 	ldr.w	r3, [r4, #168]	; 0xa8
d0002804:	468c      	mov	ip, r1
d0002806:	4413      	add	r3, r2
d0002808:	f8c4 30a8 	str.w	r3, [r4, #168]	; 0xa8
d000280c:	2800      	cmp	r0, #0
d000280e:	d15d      	bne.n	d00028cc <stbi__process_marker+0x514>
d0002810:	4602      	mov	r2, r0
d0002812:	6220      	str	r0, [r4, #32]
d0002814:	f884 0028 	strb.w	r0, [r4, #40]	; 0x28
d0002818:	f8c4 c0ac 	str.w	ip, [r4, #172]	; 0xac
d000281c:	f8c4 10b0 	str.w	r1, [r4, #176]	; 0xb0
d0002820:	e75d      	b.n	d00026de <stbi__process_marker+0x326>
d0002822:	9b01      	ldr	r3, [sp, #4]
d0002824:	2b00      	cmp	r3, #0
d0002826:	d046      	beq.n	d00028b6 <stbi__process_marker+0x4fe>
d0002828:	f641 2744 	movw	r7, #6724	; 0x1a44
d000282c:	444f      	add	r7, r9
d000282e:	445f      	add	r7, fp
d0002830:	9b02      	ldr	r3, [sp, #8]
d0002832:	f243 6582 	movw	r5, #13954	; 0x3682
d0002836:	f207 1bff 	addw	fp, r7, #511	; 0x1ff
d000283a:	f1c7 0801 	rsb	r8, r7, #1
d000283e:	eb09 2283 	add.w	r2, r9, r3, lsl #10
d0002842:	1e7b      	subs	r3, r7, #1
d0002844:	9601      	str	r6, [sp, #4]
d0002846:	4415      	add	r5, r2
d0002848:	eb08 0203 	add.w	r2, r8, r3
d000284c:	f813 1f01 	ldrb.w	r1, [r3, #1]!
d0002850:	f825 af02 	strh.w	sl, [r5, #2]!
d0002854:	29ff      	cmp	r1, #255	; 0xff
d0002856:	eb07 0401 	add.w	r4, r7, r1
d000285a:	d029      	beq.n	d00028b0 <stbi__process_marker+0x4f8>
d000285c:	f894 1400 	ldrb.w	r1, [r4, #1024]	; 0x400
d0002860:	f011 000f 	ands.w	r0, r1, #15
d0002864:	d024      	beq.n	d00028b0 <stbi__process_marker+0x4f8>
d0002866:	f894 4500 	ldrb.w	r4, [r4, #1280]	; 0x500
d000286a:	f1c0 0c09 	rsb	ip, r0, #9
d000286e:	f100 3eff 	add.w	lr, r0, #4294967295	; 0xffffffff
d0002872:	2601      	movs	r6, #1
d0002874:	40a2      	lsls	r2, r4
d0002876:	4404      	add	r4, r0
d0002878:	fa06 fe0e 	lsl.w	lr, r6, lr
d000287c:	f3c2 0208 	ubfx	r2, r2, #0, #9
d0002880:	2c09      	cmp	r4, #9
d0002882:	fa42 f20c 	asr.w	r2, r2, ip
d0002886:	dc13      	bgt.n	d00028b0 <stbi__process_marker+0x4f8>
d0002888:	f04f 36ff 	mov.w	r6, #4294967295	; 0xffffffff
d000288c:	4572      	cmp	r2, lr
d000288e:	ea4f 1121 	mov.w	r1, r1, asr #4
d0002892:	fa06 f000 	lsl.w	r0, r6, r0
d0002896:	f100 0001 	add.w	r0, r0, #1
d000289a:	bfb8      	it	lt
d000289c:	1812      	addlt	r2, r2, r0
d000289e:	f102 0080 	add.w	r0, r2, #128	; 0x80
d00028a2:	eb01 1202 	add.w	r2, r1, r2, lsl #4
d00028a6:	28ff      	cmp	r0, #255	; 0xff
d00028a8:	eb04 1402 	add.w	r4, r4, r2, lsl #4
d00028ac:	bf98      	it	ls
d00028ae:	802c      	strhls	r4, [r5, #0]
d00028b0:	455b      	cmp	r3, fp
d00028b2:	d1c9      	bne.n	d0002848 <stbi__process_marker+0x490>
d00028b4:	9e01      	ldr	r6, [sp, #4]
d00028b6:	9b03      	ldr	r3, [sp, #12]
d00028b8:	eba3 0b06 	sub.w	fp, r3, r6
d00028bc:	f1bb 0f00 	cmp.w	fp, #0
d00028c0:	f73f aeb7 	bgt.w	d0002632 <stbi__process_marker+0x27a>
d00028c4:	fabb f08b 	clz	r0, fp
d00028c8:	0940      	lsrs	r0, r0, #5
d00028ca:	e658      	b.n	d000257e <stbi__process_marker+0x1c6>
d00028cc:	1839      	adds	r1, r7, r0
d00028ce:	f894 2028 	ldrb.w	r2, [r4, #40]	; 0x28
d00028d2:	e7a1      	b.n	d0002818 <stbi__process_marker+0x460>
d00028d4:	f641 2744 	movw	r7, #6724	; 0x1a44
d00028d8:	fb04 fb08 	mul.w	fp, r4, r8
d00028dc:	a904      	add	r1, sp, #16
d00028de:	444f      	add	r7, r9
d00028e0:	445f      	add	r7, fp
d00028e2:	4638      	mov	r0, r7
d00028e4:	f7ff f80c 	bl	d0001900 <stbi__build_huffman>
d00028e8:	2800      	cmp	r0, #0
d00028ea:	d045      	beq.n	d0002978 <stbi__process_marker+0x5c0>
d00028ec:	9b02      	ldr	r3, [sp, #8]
d00028ee:	f641 6844 	movw	r8, #7748	; 0x1e44
d00028f2:	fb04 9403 	mla	r4, r4, r3, r9
d00028f6:	44a0      	add	r8, r4
d00028f8:	2e00      	cmp	r6, #0
d00028fa:	f47f aee8 	bne.w	d00026ce <stbi__process_marker+0x316>
d00028fe:	e797      	b.n	d0002830 <stbi__process_marker+0x478>
d0002900:	1c5a      	adds	r2, r3, #1
d0002902:	f8c4 20ac 	str.w	r2, [r4, #172]	; 0xac
d0002906:	781b      	ldrb	r3, [r3, #0]
d0002908:	f003 020c 	and.w	r2, r3, #12
d000290c:	f003 080f 	and.w	r8, r3, #15
d0002910:	1119      	asrs	r1, r3, #4
d0002912:	2b1f      	cmp	r3, #31
d0002914:	bf98      	it	ls
d0002916:	2a00      	cmpls	r2, #0
d0002918:	f8cd 8008 	str.w	r8, [sp, #8]
d000291c:	9101      	str	r1, [sp, #4]
d000291e:	bf14      	ite	ne
d0002920:	2301      	movne	r3, #1
d0002922:	2300      	moveq	r3, #0
d0002924:	bb2b      	cbnz	r3, d0002972 <stbi__process_marker+0x5ba>
d0002926:	f8d9 4000 	ldr.w	r4, [r9]
d000292a:	f8d4 30ac 	ldr.w	r3, [r4, #172]	; 0xac
d000292e:	f8d4 20b0 	ldr.w	r2, [r4, #176]	; 0xb0
d0002932:	e68e      	b.n	d0002652 <stbi__process_marker+0x29a>
d0002934:	f104 0528 	add.w	r5, r4, #40	; 0x28
d0002938:	6923      	ldr	r3, [r4, #16]
d000293a:	6a62      	ldr	r2, [r4, #36]	; 0x24
d000293c:	4629      	mov	r1, r5
d000293e:	69e0      	ldr	r0, [r4, #28]
d0002940:	4798      	blx	r3
d0002942:	f8d4 20ac 	ldr.w	r2, [r4, #172]	; 0xac
d0002946:	f8d4 10b4 	ldr.w	r1, [r4, #180]	; 0xb4
d000294a:	f8d4 30a8 	ldr.w	r3, [r4, #168]	; 0xa8
d000294e:	1a52      	subs	r2, r2, r1
d0002950:	9001      	str	r0, [sp, #4]
d0002952:	4413      	add	r3, r2
d0002954:	f8c4 30a8 	str.w	r3, [r4, #168]	; 0xa8
d0002958:	b990      	cbnz	r0, d0002980 <stbi__process_marker+0x5c8>
d000295a:	f104 0329 	add.w	r3, r4, #41	; 0x29
d000295e:	4680      	mov	r8, r0
d0002960:	6220      	str	r0, [r4, #32]
d0002962:	f884 0028 	strb.w	r0, [r4, #40]	; 0x28
d0002966:	9002      	str	r0, [sp, #8]
d0002968:	f8c4 30b0 	str.w	r3, [r4, #176]	; 0xb0
d000296c:	f8c4 30ac 	str.w	r3, [r4, #172]	; 0xac
d0002970:	e7d9      	b.n	d0002926 <stbi__process_marker+0x56e>
d0002972:	4b15      	ldr	r3, [pc, #84]	; (d00029c8 <stbi__process_marker+0x610>)
d0002974:	4a18      	ldr	r2, [pc, #96]	; (d00029d8 <stbi__process_marker+0x620>)
d0002976:	601a      	str	r2, [r3, #0]
d0002978:	2000      	movs	r0, #0
d000297a:	b015      	add	sp, #84	; 0x54
d000297c:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0002980:	f894 2028 	ldrb.w	r2, [r4, #40]	; 0x28
d0002984:	4405      	add	r5, r0
d0002986:	f104 0129 	add.w	r1, r4, #41	; 0x29
d000298a:	f002 080f 	and.w	r8, r2, #15
d000298e:	1113      	asrs	r3, r2, #4
d0002990:	f8c4 50b0 	str.w	r5, [r4, #176]	; 0xb0
d0002994:	f1b8 0f03 	cmp.w	r8, #3
d0002998:	9301      	str	r3, [sp, #4]
d000299a:	f8cd 8008 	str.w	r8, [sp, #8]
d000299e:	bfd4      	ite	le
d00029a0:	2300      	movle	r3, #0
d00029a2:	2301      	movgt	r3, #1
d00029a4:	f8c4 10ac 	str.w	r1, [r4, #172]	; 0xac
d00029a8:	2a1f      	cmp	r2, #31
d00029aa:	bf88      	it	hi
d00029ac:	f043 0301 	orrhi.w	r3, r3, #1
d00029b0:	e7b8      	b.n	d0002924 <stbi__process_marker+0x56c>
d00029b2:	4b05      	ldr	r3, [pc, #20]	; (d00029c8 <stbi__process_marker+0x610>)
d00029b4:	2000      	movs	r0, #0
d00029b6:	4a09      	ldr	r2, [pc, #36]	; (d00029dc <stbi__process_marker+0x624>)
d00029b8:	601a      	str	r2, [r3, #0]
d00029ba:	e5e0      	b.n	d000257e <stbi__process_marker+0x1c6>
d00029bc:	4b02      	ldr	r3, [pc, #8]	; (d00029c8 <stbi__process_marker+0x610>)
d00029be:	2000      	movs	r0, #0
d00029c0:	4a07      	ldr	r2, [pc, #28]	; (d00029e0 <stbi__process_marker+0x628>)
d00029c2:	601a      	str	r2, [r3, #0]
d00029c4:	e5db      	b.n	d000257e <stbi__process_marker+0x1c6>
d00029c6:	bf00      	nop
d00029c8:	d000e928 	.word	0xd000e928
d00029cc:	d000dd9c 	.word	0xd000dd9c
d00029d0:	d000dd84 	.word	0xd000dd84
d00029d4:	d000dd90 	.word	0xd000dd90
d00029d8:	d000dd74 	.word	0xd000dd74
d00029dc:	d000dd54 	.word	0xd000dd54
d00029e0:	d000dd64 	.word	0xd000dd64
d00029e4:	2ce0      	cmp	r4, #224	; 0xe0
d00029e6:	f1a0 0302 	sub.w	r3, r0, #2
d00029ea:	d158      	bne.n	d0002a9e <stbi__process_marker+0x6e6>
d00029ec:	2b04      	cmp	r3, #4
d00029ee:	dd56      	ble.n	d0002a9e <stbi__process_marker+0x6e6>
d00029f0:	f8d9 4000 	ldr.w	r4, [r9]
d00029f4:	f8d4 30ac 	ldr.w	r3, [r4, #172]	; 0xac
d00029f8:	f8d4 20b0 	ldr.w	r2, [r4, #176]	; 0xb0
d00029fc:	429a      	cmp	r2, r3
d00029fe:	f200 80f0 	bhi.w	d0002be2 <stbi__process_marker+0x82a>
d0002a02:	6a25      	ldr	r5, [r4, #32]
d0002a04:	2d00      	cmp	r5, #0
d0002a06:	f040 80c8 	bne.w	d0002b9a <stbi__process_marker+0x7e2>
d0002a0a:	f8d4 30ac 	ldr.w	r3, [r4, #172]	; 0xac
d0002a0e:	f8d4 20b0 	ldr.w	r2, [r4, #176]	; 0xb0
d0002a12:	429a      	cmp	r2, r3
d0002a14:	f200 81b5 	bhi.w	d0002d82 <stbi__process_marker+0x9ca>
d0002a18:	f8d4 8020 	ldr.w	r8, [r4, #32]
d0002a1c:	f1b8 0f00 	cmp.w	r8, #0
d0002a20:	f040 818b 	bne.w	d0002d3a <stbi__process_marker+0x982>
d0002a24:	f8d4 30ac 	ldr.w	r3, [r4, #172]	; 0xac
d0002a28:	f8d4 20b0 	ldr.w	r2, [r4, #176]	; 0xb0
d0002a2c:	429a      	cmp	r2, r3
d0002a2e:	f200 8173 	bhi.w	d0002d18 <stbi__process_marker+0x960>
d0002a32:	6a27      	ldr	r7, [r4, #32]
d0002a34:	2f00      	cmp	r7, #0
d0002a36:	f040 814c 	bne.w	d0002cd2 <stbi__process_marker+0x91a>
d0002a3a:	f8d4 30ac 	ldr.w	r3, [r4, #172]	; 0xac
d0002a3e:	f8d4 20b0 	ldr.w	r2, [r4, #176]	; 0xb0
d0002a42:	429a      	cmp	r2, r3
d0002a44:	f200 8134 	bhi.w	d0002cb0 <stbi__process_marker+0x8f8>
d0002a48:	6a25      	ldr	r5, [r4, #32]
d0002a4a:	2d00      	cmp	r5, #0
d0002a4c:	f040 810d 	bne.w	d0002c6a <stbi__process_marker+0x8b2>
d0002a50:	f8d4 30ac 	ldr.w	r3, [r4, #172]	; 0xac
d0002a54:	f8d4 20b0 	ldr.w	r2, [r4, #176]	; 0xb0
d0002a58:	4293      	cmp	r3, r2
d0002a5a:	f0c0 80f1 	bcc.w	d0002c40 <stbi__process_marker+0x888>
d0002a5e:	6a23      	ldr	r3, [r4, #32]
d0002a60:	2b00      	cmp	r3, #0
d0002a62:	f040 80cf 	bne.w	d0002c04 <stbi__process_marker+0x84c>
d0002a66:	1ff3      	subs	r3, r6, #7
d0002a68:	b125      	cbz	r5, d0002a74 <stbi__process_marker+0x6bc>
d0002a6a:	f244 72e4 	movw	r2, #18404	; 0x47e4
d0002a6e:	2101      	movs	r1, #1
d0002a70:	f849 1002 	str.w	r1, [r9, r2]
d0002a74:	2b00      	cmp	r3, #0
d0002a76:	f000 8089 	beq.w	d0002b8c <stbi__process_marker+0x7d4>
d0002a7a:	f2c0 8193 	blt.w	d0002da4 <stbi__process_marker+0x9ec>
d0002a7e:	6922      	ldr	r2, [r4, #16]
d0002a80:	2a00      	cmp	r2, #0
d0002a82:	f000 823d 	beq.w	d0002f00 <stbi__process_marker+0xb48>
d0002a86:	f8d4 00b0 	ldr.w	r0, [r4, #176]	; 0xb0
d0002a8a:	f8d4 20ac 	ldr.w	r2, [r4, #172]	; 0xac
d0002a8e:	1a81      	subs	r1, r0, r2
d0002a90:	4299      	cmp	r1, r3
d0002a92:	db75      	blt.n	d0002b80 <stbi__process_marker+0x7c8>
d0002a94:	4413      	add	r3, r2
d0002a96:	2001      	movs	r0, #1
d0002a98:	f8c4 30ac 	str.w	r3, [r4, #172]	; 0xac
d0002a9c:	e56f      	b.n	d000257e <stbi__process_marker+0x1c6>
d0002a9e:	2cee      	cmp	r4, #238	; 0xee
d0002aa0:	d176      	bne.n	d0002b90 <stbi__process_marker+0x7d8>
d0002aa2:	2b0b      	cmp	r3, #11
d0002aa4:	dd74      	ble.n	d0002b90 <stbi__process_marker+0x7d8>
d0002aa6:	f8d9 4000 	ldr.w	r4, [r9]
d0002aaa:	f8d4 30ac 	ldr.w	r3, [r4, #172]	; 0xac
d0002aae:	f8d4 20b0 	ldr.w	r2, [r4, #176]	; 0xb0
d0002ab2:	4293      	cmp	r3, r2
d0002ab4:	f0c0 817d 	bcc.w	d0002db2 <stbi__process_marker+0x9fa>
d0002ab8:	6a25      	ldr	r5, [r4, #32]
d0002aba:	2d00      	cmp	r5, #0
d0002abc:	f040 818c 	bne.w	d0002dd8 <stbi__process_marker+0xa20>
d0002ac0:	f8d4 30ac 	ldr.w	r3, [r4, #172]	; 0xac
d0002ac4:	f8d4 20b0 	ldr.w	r2, [r4, #176]	; 0xb0
d0002ac8:	4293      	cmp	r3, r2
d0002aca:	f0c0 817c 	bcc.w	d0002dc6 <stbi__process_marker+0xa0e>
d0002ace:	6a27      	ldr	r7, [r4, #32]
d0002ad0:	2f00      	cmp	r7, #0
d0002ad2:	f040 81b3 	bne.w	d0002e3c <stbi__process_marker+0xa84>
d0002ad6:	f8d4 30ac 	ldr.w	r3, [r4, #172]	; 0xac
d0002ada:	f8d4 20b0 	ldr.w	r2, [r4, #176]	; 0xb0
d0002ade:	4293      	cmp	r3, r2
d0002ae0:	f0c0 81a3 	bcc.w	d0002e2a <stbi__process_marker+0xa72>
d0002ae4:	6a25      	ldr	r5, [r4, #32]
d0002ae6:	2d00      	cmp	r5, #0
d0002ae8:	f040 81c7 	bne.w	d0002e7a <stbi__process_marker+0xac2>
d0002aec:	f8d4 30ac 	ldr.w	r3, [r4, #172]	; 0xac
d0002af0:	f8d4 20b0 	ldr.w	r2, [r4, #176]	; 0xb0
d0002af4:	4293      	cmp	r3, r2
d0002af6:	f0c0 818f 	bcc.w	d0002e18 <stbi__process_marker+0xa60>
d0002afa:	6a27      	ldr	r7, [r4, #32]
d0002afc:	2f00      	cmp	r7, #0
d0002afe:	f040 828d 	bne.w	d000301c <stbi__process_marker+0xc64>
d0002b02:	f8d4 30ac 	ldr.w	r3, [r4, #172]	; 0xac
d0002b06:	f8d4 20b0 	ldr.w	r2, [r4, #176]	; 0xb0
d0002b0a:	4293      	cmp	r3, r2
d0002b0c:	f0c0 827d 	bcc.w	d000300a <stbi__process_marker+0xc52>
d0002b10:	6a25      	ldr	r5, [r4, #32]
d0002b12:	2d00      	cmp	r5, #0
d0002b14:	f040 82a1 	bne.w	d000305a <stbi__process_marker+0xca2>
d0002b18:	f8d4 30ac 	ldr.w	r3, [r4, #172]	; 0xac
d0002b1c:	f8d4 20b0 	ldr.w	r2, [r4, #176]	; 0xb0
d0002b20:	4293      	cmp	r3, r2
d0002b22:	f0c0 826d 	bcc.w	d0003000 <stbi__process_marker+0xc48>
d0002b26:	6a23      	ldr	r3, [r4, #32]
d0002b28:	2b00      	cmp	r3, #0
d0002b2a:	f040 81ec 	bne.w	d0002f06 <stbi__process_marker+0xb4e>
d0002b2e:	2d00      	cmp	r5, #0
d0002b30:	f000 8236 	beq.w	d0002fa0 <stbi__process_marker+0xbe8>
d0002b34:	f8d4 30ac 	ldr.w	r3, [r4, #172]	; 0xac
d0002b38:	f8d4 20b0 	ldr.w	r2, [r4, #176]	; 0xb0
d0002b3c:	4293      	cmp	r3, r2
d0002b3e:	f0c0 823b 	bcc.w	d0002fb8 <stbi__process_marker+0xc00>
d0002b42:	6a23      	ldr	r3, [r4, #32]
d0002b44:	2b00      	cmp	r3, #0
d0002b46:	f040 823b 	bne.w	d0002fc0 <stbi__process_marker+0xc08>
d0002b4a:	4620      	mov	r0, r4
d0002b4c:	f7fe ff94 	bl	d0001a78 <stbi__get16be>
d0002b50:	f8d9 0000 	ldr.w	r0, [r9]
d0002b54:	f7fe ff90 	bl	d0001a78 <stbi__get16be>
d0002b58:	f8d9 4000 	ldr.w	r4, [r9]
d0002b5c:	f8d4 30ac 	ldr.w	r3, [r4, #172]	; 0xac
d0002b60:	f8d4 20b0 	ldr.w	r2, [r4, #176]	; 0xb0
d0002b64:	4293      	cmp	r3, r2
d0002b66:	f0c0 8222 	bcc.w	d0002fae <stbi__process_marker+0xbf6>
d0002b6a:	6a22      	ldr	r2, [r4, #32]
d0002b6c:	2a00      	cmp	r2, #0
d0002b6e:	f040 81e8 	bne.w	d0002f42 <stbi__process_marker+0xb8a>
d0002b72:	f244 71e8 	movw	r1, #18408	; 0x47e8
d0002b76:	f1a6 030e 	sub.w	r3, r6, #14
d0002b7a:	f849 2001 	str.w	r2, [r9, r1]
d0002b7e:	e779      	b.n	d0002a74 <stbi__process_marker+0x6bc>
d0002b80:	1a59      	subs	r1, r3, r1
d0002b82:	f8c4 00ac 	str.w	r0, [r4, #172]	; 0xac
d0002b86:	6963      	ldr	r3, [r4, #20]
d0002b88:	69e0      	ldr	r0, [r4, #28]
d0002b8a:	4798      	blx	r3
d0002b8c:	2001      	movs	r0, #1
d0002b8e:	e4f6      	b.n	d000257e <stbi__process_marker+0x1c6>
d0002b90:	2b00      	cmp	r3, #0
d0002b92:	d0fb      	beq.n	d0002b8c <stbi__process_marker+0x7d4>
d0002b94:	f8d9 4000 	ldr.w	r4, [r9]
d0002b98:	e771      	b.n	d0002a7e <stbi__process_marker+0x6c6>
d0002b9a:	f104 0728 	add.w	r7, r4, #40	; 0x28
d0002b9e:	6923      	ldr	r3, [r4, #16]
d0002ba0:	6a62      	ldr	r2, [r4, #36]	; 0x24
d0002ba2:	4639      	mov	r1, r7
d0002ba4:	69e0      	ldr	r0, [r4, #28]
d0002ba6:	4798      	blx	r3
d0002ba8:	f8d4 20ac 	ldr.w	r2, [r4, #172]	; 0xac
d0002bac:	f8d4 10b4 	ldr.w	r1, [r4, #180]	; 0xb4
d0002bb0:	4605      	mov	r5, r0
d0002bb2:	f8d4 30a8 	ldr.w	r3, [r4, #168]	; 0xa8
d0002bb6:	1a52      	subs	r2, r2, r1
d0002bb8:	4413      	add	r3, r2
d0002bba:	f8c4 30a8 	str.w	r3, [r4, #168]	; 0xa8
d0002bbe:	b1a8      	cbz	r0, d0002bec <stbi__process_marker+0x834>
d0002bc0:	f104 0329 	add.w	r3, r4, #41	; 0x29
d0002bc4:	4407      	add	r7, r0
d0002bc6:	f894 5028 	ldrb.w	r5, [r4, #40]	; 0x28
d0002bca:	f8c4 70b0 	str.w	r7, [r4, #176]	; 0xb0
d0002bce:	f8c4 30ac 	str.w	r3, [r4, #172]	; 0xac
d0002bd2:	f8d9 4000 	ldr.w	r4, [r9]
d0002bd6:	f1a5 054a 	sub.w	r5, r5, #74	; 0x4a
d0002bda:	fab5 f585 	clz	r5, r5
d0002bde:	096d      	lsrs	r5, r5, #5
d0002be0:	e713      	b.n	d0002a0a <stbi__process_marker+0x652>
d0002be2:	1c5a      	adds	r2, r3, #1
d0002be4:	f8c4 20ac 	str.w	r2, [r4, #172]	; 0xac
d0002be8:	781d      	ldrb	r5, [r3, #0]
d0002bea:	e7f4      	b.n	d0002bd6 <stbi__process_marker+0x81e>
d0002bec:	f104 0329 	add.w	r3, r4, #41	; 0x29
d0002bf0:	6220      	str	r0, [r4, #32]
d0002bf2:	f884 0028 	strb.w	r0, [r4, #40]	; 0x28
d0002bf6:	f8c4 30b0 	str.w	r3, [r4, #176]	; 0xb0
d0002bfa:	f8c4 30ac 	str.w	r3, [r4, #172]	; 0xac
d0002bfe:	f8d9 4000 	ldr.w	r4, [r9]
d0002c02:	e702      	b.n	d0002a0a <stbi__process_marker+0x652>
d0002c04:	f104 0828 	add.w	r8, r4, #40	; 0x28
d0002c08:	6923      	ldr	r3, [r4, #16]
d0002c0a:	6a62      	ldr	r2, [r4, #36]	; 0x24
d0002c0c:	4641      	mov	r1, r8
d0002c0e:	69e0      	ldr	r0, [r4, #28]
d0002c10:	4798      	blx	r3
d0002c12:	f8d4 20ac 	ldr.w	r2, [r4, #172]	; 0xac
d0002c16:	f8d4 70b4 	ldr.w	r7, [r4, #180]	; 0xb4
d0002c1a:	f8d4 30a8 	ldr.w	r3, [r4, #168]	; 0xa8
d0002c1e:	1bd2      	subs	r2, r2, r7
d0002c20:	4413      	add	r3, r2
d0002c22:	f8c4 30a8 	str.w	r3, [r4, #168]	; 0xa8
d0002c26:	b9a0      	cbnz	r0, d0002c52 <stbi__process_marker+0x89a>
d0002c28:	f104 0329 	add.w	r3, r4, #41	; 0x29
d0002c2c:	6220      	str	r0, [r4, #32]
d0002c2e:	f884 0028 	strb.w	r0, [r4, #40]	; 0x28
d0002c32:	f8c4 30b0 	str.w	r3, [r4, #176]	; 0xb0
d0002c36:	f8c4 30ac 	str.w	r3, [r4, #172]	; 0xac
d0002c3a:	f8d9 4000 	ldr.w	r4, [r9]
d0002c3e:	e712      	b.n	d0002a66 <stbi__process_marker+0x6ae>
d0002c40:	1c5a      	adds	r2, r3, #1
d0002c42:	f8c4 20ac 	str.w	r2, [r4, #172]	; 0xac
d0002c46:	781b      	ldrb	r3, [r3, #0]
d0002c48:	2b00      	cmp	r3, #0
d0002c4a:	f43f af0c 	beq.w	d0002a66 <stbi__process_marker+0x6ae>
d0002c4e:	1ff3      	subs	r3, r6, #7
d0002c50:	e710      	b.n	d0002a74 <stbi__process_marker+0x6bc>
d0002c52:	f104 0229 	add.w	r2, r4, #41	; 0x29
d0002c56:	4440      	add	r0, r8
d0002c58:	f894 3028 	ldrb.w	r3, [r4, #40]	; 0x28
d0002c5c:	f8c4 00b0 	str.w	r0, [r4, #176]	; 0xb0
d0002c60:	f8c4 20ac 	str.w	r2, [r4, #172]	; 0xac
d0002c64:	f8d9 4000 	ldr.w	r4, [r9]
d0002c68:	e7ee      	b.n	d0002c48 <stbi__process_marker+0x890>
d0002c6a:	f104 0828 	add.w	r8, r4, #40	; 0x28
d0002c6e:	6923      	ldr	r3, [r4, #16]
d0002c70:	6a62      	ldr	r2, [r4, #36]	; 0x24
d0002c72:	4641      	mov	r1, r8
d0002c74:	69e0      	ldr	r0, [r4, #28]
d0002c76:	4798      	blx	r3
d0002c78:	f8d4 20ac 	ldr.w	r2, [r4, #172]	; 0xac
d0002c7c:	f8d4 10b4 	ldr.w	r1, [r4, #180]	; 0xb4
d0002c80:	4605      	mov	r5, r0
d0002c82:	f8d4 30a8 	ldr.w	r3, [r4, #168]	; 0xa8
d0002c86:	1a52      	subs	r2, r2, r1
d0002c88:	4413      	add	r3, r2
d0002c8a:	f8c4 30a8 	str.w	r3, [r4, #168]	; 0xa8
d0002c8e:	b1a0      	cbz	r0, d0002cba <stbi__process_marker+0x902>
d0002c90:	f104 0229 	add.w	r2, r4, #41	; 0x29
d0002c94:	4445      	add	r5, r8
d0002c96:	f894 3028 	ldrb.w	r3, [r4, #40]	; 0x28
d0002c9a:	f8c4 50b0 	str.w	r5, [r4, #176]	; 0xb0
d0002c9e:	f8c4 20ac 	str.w	r2, [r4, #172]	; 0xac
d0002ca2:	f8d9 4000 	ldr.w	r4, [r9]
d0002ca6:	2b46      	cmp	r3, #70	; 0x46
d0002ca8:	bf0c      	ite	eq
d0002caa:	463d      	moveq	r5, r7
d0002cac:	2500      	movne	r5, #0
d0002cae:	e6cf      	b.n	d0002a50 <stbi__process_marker+0x698>
d0002cb0:	1c5a      	adds	r2, r3, #1
d0002cb2:	f8c4 20ac 	str.w	r2, [r4, #172]	; 0xac
d0002cb6:	781b      	ldrb	r3, [r3, #0]
d0002cb8:	e7f5      	b.n	d0002ca6 <stbi__process_marker+0x8ee>
d0002cba:	f104 0329 	add.w	r3, r4, #41	; 0x29
d0002cbe:	6220      	str	r0, [r4, #32]
d0002cc0:	f884 0028 	strb.w	r0, [r4, #40]	; 0x28
d0002cc4:	f8c4 30b0 	str.w	r3, [r4, #176]	; 0xb0
d0002cc8:	f8c4 30ac 	str.w	r3, [r4, #172]	; 0xac
d0002ccc:	f8d9 4000 	ldr.w	r4, [r9]
d0002cd0:	e6be      	b.n	d0002a50 <stbi__process_marker+0x698>
d0002cd2:	f104 0528 	add.w	r5, r4, #40	; 0x28
d0002cd6:	6923      	ldr	r3, [r4, #16]
d0002cd8:	6a62      	ldr	r2, [r4, #36]	; 0x24
d0002cda:	4629      	mov	r1, r5
d0002cdc:	69e0      	ldr	r0, [r4, #28]
d0002cde:	4798      	blx	r3
d0002ce0:	f8d4 20ac 	ldr.w	r2, [r4, #172]	; 0xac
d0002ce4:	f8d4 10b4 	ldr.w	r1, [r4, #180]	; 0xb4
d0002ce8:	4607      	mov	r7, r0
d0002cea:	f8d4 30a8 	ldr.w	r3, [r4, #168]	; 0xa8
d0002cee:	1a52      	subs	r2, r2, r1
d0002cf0:	4413      	add	r3, r2
d0002cf2:	f8c4 30a8 	str.w	r3, [r4, #168]	; 0xa8
d0002cf6:	b1a0      	cbz	r0, d0002d22 <stbi__process_marker+0x96a>
d0002cf8:	f104 0229 	add.w	r2, r4, #41	; 0x29
d0002cfc:	442f      	add	r7, r5
d0002cfe:	f894 3028 	ldrb.w	r3, [r4, #40]	; 0x28
d0002d02:	f8c4 70b0 	str.w	r7, [r4, #176]	; 0xb0
d0002d06:	f8c4 20ac 	str.w	r2, [r4, #172]	; 0xac
d0002d0a:	f8d9 4000 	ldr.w	r4, [r9]
d0002d0e:	2b49      	cmp	r3, #73	; 0x49
d0002d10:	bf0c      	ite	eq
d0002d12:	4647      	moveq	r7, r8
d0002d14:	2700      	movne	r7, #0
d0002d16:	e690      	b.n	d0002a3a <stbi__process_marker+0x682>
d0002d18:	1c5a      	adds	r2, r3, #1
d0002d1a:	f8c4 20ac 	str.w	r2, [r4, #172]	; 0xac
d0002d1e:	781b      	ldrb	r3, [r3, #0]
d0002d20:	e7f5      	b.n	d0002d0e <stbi__process_marker+0x956>
d0002d22:	f104 0329 	add.w	r3, r4, #41	; 0x29
d0002d26:	6220      	str	r0, [r4, #32]
d0002d28:	f884 0028 	strb.w	r0, [r4, #40]	; 0x28
d0002d2c:	f8c4 30b0 	str.w	r3, [r4, #176]	; 0xb0
d0002d30:	f8c4 30ac 	str.w	r3, [r4, #172]	; 0xac
d0002d34:	f8d9 4000 	ldr.w	r4, [r9]
d0002d38:	e67f      	b.n	d0002a3a <stbi__process_marker+0x682>
d0002d3a:	f104 0728 	add.w	r7, r4, #40	; 0x28
d0002d3e:	6923      	ldr	r3, [r4, #16]
d0002d40:	6a62      	ldr	r2, [r4, #36]	; 0x24
d0002d42:	4639      	mov	r1, r7
d0002d44:	69e0      	ldr	r0, [r4, #28]
d0002d46:	4798      	blx	r3
d0002d48:	f8d4 20ac 	ldr.w	r2, [r4, #172]	; 0xac
d0002d4c:	f8d4 10b4 	ldr.w	r1, [r4, #180]	; 0xb4
d0002d50:	4680      	mov	r8, r0
d0002d52:	f8d4 30a8 	ldr.w	r3, [r4, #168]	; 0xa8
d0002d56:	1a52      	subs	r2, r2, r1
d0002d58:	4413      	add	r3, r2
d0002d5a:	f8c4 30a8 	str.w	r3, [r4, #168]	; 0xa8
d0002d5e:	b1a8      	cbz	r0, d0002d8c <stbi__process_marker+0x9d4>
d0002d60:	f104 0129 	add.w	r1, r4, #41	; 0x29
d0002d64:	183b      	adds	r3, r7, r0
d0002d66:	f894 2028 	ldrb.w	r2, [r4, #40]	; 0x28
d0002d6a:	f8c4 30b0 	str.w	r3, [r4, #176]	; 0xb0
d0002d6e:	f8c4 10ac 	str.w	r1, [r4, #172]	; 0xac
d0002d72:	f8d9 4000 	ldr.w	r4, [r9]
d0002d76:	2a46      	cmp	r2, #70	; 0x46
d0002d78:	bf0c      	ite	eq
d0002d7a:	46a8      	moveq	r8, r5
d0002d7c:	f04f 0800 	movne.w	r8, #0
d0002d80:	e650      	b.n	d0002a24 <stbi__process_marker+0x66c>
d0002d82:	1c5a      	adds	r2, r3, #1
d0002d84:	f8c4 20ac 	str.w	r2, [r4, #172]	; 0xac
d0002d88:	781a      	ldrb	r2, [r3, #0]
d0002d8a:	e7f4      	b.n	d0002d76 <stbi__process_marker+0x9be>
d0002d8c:	f104 0329 	add.w	r3, r4, #41	; 0x29
d0002d90:	6220      	str	r0, [r4, #32]
d0002d92:	f884 0028 	strb.w	r0, [r4, #40]	; 0x28
d0002d96:	f8c4 30b0 	str.w	r3, [r4, #176]	; 0xb0
d0002d9a:	f8c4 30ac 	str.w	r3, [r4, #172]	; 0xac
d0002d9e:	f8d9 4000 	ldr.w	r4, [r9]
d0002da2:	e63f      	b.n	d0002a24 <stbi__process_marker+0x66c>
d0002da4:	f8d4 30b0 	ldr.w	r3, [r4, #176]	; 0xb0
d0002da8:	2001      	movs	r0, #1
d0002daa:	f8c4 30ac 	str.w	r3, [r4, #172]	; 0xac
d0002dae:	f7ff bbe6 	b.w	d000257e <stbi__process_marker+0x1c6>
d0002db2:	1c5a      	adds	r2, r3, #1
d0002db4:	f8c4 20ac 	str.w	r2, [r4, #172]	; 0xac
d0002db8:	781d      	ldrb	r5, [r3, #0]
d0002dba:	f1a5 0541 	sub.w	r5, r5, #65	; 0x41
d0002dbe:	fab5 f585 	clz	r5, r5
d0002dc2:	096d      	lsrs	r5, r5, #5
d0002dc4:	e67c      	b.n	d0002ac0 <stbi__process_marker+0x708>
d0002dc6:	1c5a      	adds	r2, r3, #1
d0002dc8:	f8c4 20ac 	str.w	r2, [r4, #172]	; 0xac
d0002dcc:	781b      	ldrb	r3, [r3, #0]
d0002dce:	2b64      	cmp	r3, #100	; 0x64
d0002dd0:	bf0c      	ite	eq
d0002dd2:	462f      	moveq	r7, r5
d0002dd4:	2700      	movne	r7, #0
d0002dd6:	e67e      	b.n	d0002ad6 <stbi__process_marker+0x71e>
d0002dd8:	f104 0728 	add.w	r7, r4, #40	; 0x28
d0002ddc:	6923      	ldr	r3, [r4, #16]
d0002dde:	6a62      	ldr	r2, [r4, #36]	; 0x24
d0002de0:	4639      	mov	r1, r7
d0002de2:	69e0      	ldr	r0, [r4, #28]
d0002de4:	4798      	blx	r3
d0002de6:	f8d4 20ac 	ldr.w	r2, [r4, #172]	; 0xac
d0002dea:	f8d4 10b4 	ldr.w	r1, [r4, #180]	; 0xb4
d0002dee:	4605      	mov	r5, r0
d0002df0:	f8d4 30a8 	ldr.w	r3, [r4, #168]	; 0xa8
d0002df4:	1a52      	subs	r2, r2, r1
d0002df6:	4413      	add	r3, r2
d0002df8:	f8c4 30a8 	str.w	r3, [r4, #168]	; 0xa8
d0002dfc:	2800      	cmp	r0, #0
d0002dfe:	d05b      	beq.n	d0002eb8 <stbi__process_marker+0xb00>
d0002e00:	f104 0329 	add.w	r3, r4, #41	; 0x29
d0002e04:	4407      	add	r7, r0
d0002e06:	f894 5028 	ldrb.w	r5, [r4, #40]	; 0x28
d0002e0a:	f8c4 70b0 	str.w	r7, [r4, #176]	; 0xb0
d0002e0e:	f8c4 30ac 	str.w	r3, [r4, #172]	; 0xac
d0002e12:	f8d9 4000 	ldr.w	r4, [r9]
d0002e16:	e7d0      	b.n	d0002dba <stbi__process_marker+0xa02>
d0002e18:	1c5a      	adds	r2, r3, #1
d0002e1a:	f8c4 20ac 	str.w	r2, [r4, #172]	; 0xac
d0002e1e:	781b      	ldrb	r3, [r3, #0]
d0002e20:	2b62      	cmp	r3, #98	; 0x62
d0002e22:	bf0c      	ite	eq
d0002e24:	462f      	moveq	r7, r5
d0002e26:	2700      	movne	r7, #0
d0002e28:	e66b      	b.n	d0002b02 <stbi__process_marker+0x74a>
d0002e2a:	1c5a      	adds	r2, r3, #1
d0002e2c:	f8c4 20ac 	str.w	r2, [r4, #172]	; 0xac
d0002e30:	781b      	ldrb	r3, [r3, #0]
d0002e32:	2b6f      	cmp	r3, #111	; 0x6f
d0002e34:	bf0c      	ite	eq
d0002e36:	463d      	moveq	r5, r7
d0002e38:	2500      	movne	r5, #0
d0002e3a:	e657      	b.n	d0002aec <stbi__process_marker+0x734>
d0002e3c:	f104 0828 	add.w	r8, r4, #40	; 0x28
d0002e40:	6923      	ldr	r3, [r4, #16]
d0002e42:	6a62      	ldr	r2, [r4, #36]	; 0x24
d0002e44:	4641      	mov	r1, r8
d0002e46:	69e0      	ldr	r0, [r4, #28]
d0002e48:	4798      	blx	r3
d0002e4a:	f8d4 20ac 	ldr.w	r2, [r4, #172]	; 0xac
d0002e4e:	f8d4 10b4 	ldr.w	r1, [r4, #180]	; 0xb4
d0002e52:	4607      	mov	r7, r0
d0002e54:	f8d4 30a8 	ldr.w	r3, [r4, #168]	; 0xa8
d0002e58:	1a52      	subs	r2, r2, r1
d0002e5a:	4413      	add	r3, r2
d0002e5c:	f8c4 30a8 	str.w	r3, [r4, #168]	; 0xa8
d0002e60:	b3b0      	cbz	r0, d0002ed0 <stbi__process_marker+0xb18>
d0002e62:	f104 0229 	add.w	r2, r4, #41	; 0x29
d0002e66:	4447      	add	r7, r8
d0002e68:	f894 3028 	ldrb.w	r3, [r4, #40]	; 0x28
d0002e6c:	f8c4 70b0 	str.w	r7, [r4, #176]	; 0xb0
d0002e70:	f8c4 20ac 	str.w	r2, [r4, #172]	; 0xac
d0002e74:	f8d9 4000 	ldr.w	r4, [r9]
d0002e78:	e7a9      	b.n	d0002dce <stbi__process_marker+0xa16>
d0002e7a:	f104 0828 	add.w	r8, r4, #40	; 0x28
d0002e7e:	6923      	ldr	r3, [r4, #16]
d0002e80:	6a62      	ldr	r2, [r4, #36]	; 0x24
d0002e82:	4641      	mov	r1, r8
d0002e84:	69e0      	ldr	r0, [r4, #28]
d0002e86:	4798      	blx	r3
d0002e88:	f8d4 20ac 	ldr.w	r2, [r4, #172]	; 0xac
d0002e8c:	f8d4 10b4 	ldr.w	r1, [r4, #180]	; 0xb4
d0002e90:	4605      	mov	r5, r0
d0002e92:	f8d4 30a8 	ldr.w	r3, [r4, #168]	; 0xa8
d0002e96:	1a52      	subs	r2, r2, r1
d0002e98:	4413      	add	r3, r2
d0002e9a:	f8c4 30a8 	str.w	r3, [r4, #168]	; 0xa8
d0002e9e:	b318      	cbz	r0, d0002ee8 <stbi__process_marker+0xb30>
d0002ea0:	f104 0229 	add.w	r2, r4, #41	; 0x29
d0002ea4:	4445      	add	r5, r8
d0002ea6:	f894 3028 	ldrb.w	r3, [r4, #40]	; 0x28
d0002eaa:	f8c4 50b0 	str.w	r5, [r4, #176]	; 0xb0
d0002eae:	f8c4 20ac 	str.w	r2, [r4, #172]	; 0xac
d0002eb2:	f8d9 4000 	ldr.w	r4, [r9]
d0002eb6:	e7bc      	b.n	d0002e32 <stbi__process_marker+0xa7a>
d0002eb8:	f104 0329 	add.w	r3, r4, #41	; 0x29
d0002ebc:	6220      	str	r0, [r4, #32]
d0002ebe:	f884 0028 	strb.w	r0, [r4, #40]	; 0x28
d0002ec2:	f8c4 30b0 	str.w	r3, [r4, #176]	; 0xb0
d0002ec6:	f8c4 30ac 	str.w	r3, [r4, #172]	; 0xac
d0002eca:	f8d9 4000 	ldr.w	r4, [r9]
d0002ece:	e5f7      	b.n	d0002ac0 <stbi__process_marker+0x708>
d0002ed0:	f104 0329 	add.w	r3, r4, #41	; 0x29
d0002ed4:	6220      	str	r0, [r4, #32]
d0002ed6:	f884 0028 	strb.w	r0, [r4, #40]	; 0x28
d0002eda:	f8c4 30b0 	str.w	r3, [r4, #176]	; 0xb0
d0002ede:	f8c4 30ac 	str.w	r3, [r4, #172]	; 0xac
d0002ee2:	f8d9 4000 	ldr.w	r4, [r9]
d0002ee6:	e5f6      	b.n	d0002ad6 <stbi__process_marker+0x71e>
d0002ee8:	f104 0329 	add.w	r3, r4, #41	; 0x29
d0002eec:	6220      	str	r0, [r4, #32]
d0002eee:	f884 0028 	strb.w	r0, [r4, #40]	; 0x28
d0002ef2:	f8c4 30b0 	str.w	r3, [r4, #176]	; 0xb0
d0002ef6:	f8c4 30ac 	str.w	r3, [r4, #172]	; 0xac
d0002efa:	f8d9 4000 	ldr.w	r4, [r9]
d0002efe:	e5f5      	b.n	d0002aec <stbi__process_marker+0x734>
d0002f00:	f8d4 20ac 	ldr.w	r2, [r4, #172]	; 0xac
d0002f04:	e5c6      	b.n	d0002a94 <stbi__process_marker+0x6dc>
d0002f06:	f104 0828 	add.w	r8, r4, #40	; 0x28
d0002f0a:	6923      	ldr	r3, [r4, #16]
d0002f0c:	6a62      	ldr	r2, [r4, #36]	; 0x24
d0002f0e:	4641      	mov	r1, r8
d0002f10:	69e0      	ldr	r0, [r4, #28]
d0002f12:	4798      	blx	r3
d0002f14:	f8d4 20ac 	ldr.w	r2, [r4, #172]	; 0xac
d0002f18:	f8d4 70b4 	ldr.w	r7, [r4, #180]	; 0xb4
d0002f1c:	f8d4 30a8 	ldr.w	r3, [r4, #168]	; 0xa8
d0002f20:	1bd2      	subs	r2, r2, r7
d0002f22:	4413      	add	r3, r2
d0002f24:	f8c4 30a8 	str.w	r3, [r4, #168]	; 0xa8
d0002f28:	bb60      	cbnz	r0, d0002f84 <stbi__process_marker+0xbcc>
d0002f2a:	f104 0329 	add.w	r3, r4, #41	; 0x29
d0002f2e:	6220      	str	r0, [r4, #32]
d0002f30:	f884 0028 	strb.w	r0, [r4, #40]	; 0x28
d0002f34:	f8c4 30b0 	str.w	r3, [r4, #176]	; 0xb0
d0002f38:	f8c4 30ac 	str.w	r3, [r4, #172]	; 0xac
d0002f3c:	f8d9 4000 	ldr.w	r4, [r9]
d0002f40:	e5f5      	b.n	d0002b2e <stbi__process_marker+0x776>
d0002f42:	f104 0528 	add.w	r5, r4, #40	; 0x28
d0002f46:	6923      	ldr	r3, [r4, #16]
d0002f48:	6a62      	ldr	r2, [r4, #36]	; 0x24
d0002f4a:	4629      	mov	r1, r5
d0002f4c:	69e0      	ldr	r0, [r4, #28]
d0002f4e:	4798      	blx	r3
d0002f50:	f8d4 30ac 	ldr.w	r3, [r4, #172]	; 0xac
d0002f54:	f8d4 20b4 	ldr.w	r2, [r4, #180]	; 0xb4
d0002f58:	f8d4 10a8 	ldr.w	r1, [r4, #168]	; 0xa8
d0002f5c:	1a9b      	subs	r3, r3, r2
d0002f5e:	4419      	add	r1, r3
d0002f60:	f8c4 10a8 	str.w	r1, [r4, #168]	; 0xa8
d0002f64:	b9f8      	cbnz	r0, d0002fa6 <stbi__process_marker+0xbee>
d0002f66:	f104 0329 	add.w	r3, r4, #41	; 0x29
d0002f6a:	6220      	str	r0, [r4, #32]
d0002f6c:	f884 0028 	strb.w	r0, [r4, #40]	; 0x28
d0002f70:	4618      	mov	r0, r3
d0002f72:	f894 2028 	ldrb.w	r2, [r4, #40]	; 0x28
d0002f76:	f8c4 00b0 	str.w	r0, [r4, #176]	; 0xb0
d0002f7a:	f8c4 30ac 	str.w	r3, [r4, #172]	; 0xac
d0002f7e:	f8d9 4000 	ldr.w	r4, [r9]
d0002f82:	e5f6      	b.n	d0002b72 <stbi__process_marker+0x7ba>
d0002f84:	f104 0229 	add.w	r2, r4, #41	; 0x29
d0002f88:	4440      	add	r0, r8
d0002f8a:	f894 3028 	ldrb.w	r3, [r4, #40]	; 0x28
d0002f8e:	f8c4 00b0 	str.w	r0, [r4, #176]	; 0xb0
d0002f92:	f8c4 20ac 	str.w	r2, [r4, #172]	; 0xac
d0002f96:	f8d9 4000 	ldr.w	r4, [r9]
d0002f9a:	2b00      	cmp	r3, #0
d0002f9c:	f43f adc7 	beq.w	d0002b2e <stbi__process_marker+0x776>
d0002fa0:	f1a6 0308 	sub.w	r3, r6, #8
d0002fa4:	e566      	b.n	d0002a74 <stbi__process_marker+0x6bc>
d0002fa6:	4428      	add	r0, r5
d0002fa8:	f104 0329 	add.w	r3, r4, #41	; 0x29
d0002fac:	e7e1      	b.n	d0002f72 <stbi__process_marker+0xbba>
d0002fae:	1c5a      	adds	r2, r3, #1
d0002fb0:	f8c4 20ac 	str.w	r2, [r4, #172]	; 0xac
d0002fb4:	781a      	ldrb	r2, [r3, #0]
d0002fb6:	e5dc      	b.n	d0002b72 <stbi__process_marker+0x7ba>
d0002fb8:	3301      	adds	r3, #1
d0002fba:	f8c4 30ac 	str.w	r3, [r4, #172]	; 0xac
d0002fbe:	e5c4      	b.n	d0002b4a <stbi__process_marker+0x792>
d0002fc0:	f104 0528 	add.w	r5, r4, #40	; 0x28
d0002fc4:	6923      	ldr	r3, [r4, #16]
d0002fc6:	6a62      	ldr	r2, [r4, #36]	; 0x24
d0002fc8:	4629      	mov	r1, r5
d0002fca:	69e0      	ldr	r0, [r4, #28]
d0002fcc:	4798      	blx	r3
d0002fce:	f8d4 30ac 	ldr.w	r3, [r4, #172]	; 0xac
d0002fd2:	f8d4 20b4 	ldr.w	r2, [r4, #180]	; 0xb4
d0002fd6:	f8d4 10a8 	ldr.w	r1, [r4, #168]	; 0xa8
d0002fda:	1a9b      	subs	r3, r3, r2
d0002fdc:	4419      	add	r1, r3
d0002fde:	f8c4 10a8 	str.w	r1, [r4, #168]	; 0xa8
d0002fe2:	2800      	cmp	r0, #0
d0002fe4:	d158      	bne.n	d0003098 <stbi__process_marker+0xce0>
d0002fe6:	f104 0329 	add.w	r3, r4, #41	; 0x29
d0002fea:	6220      	str	r0, [r4, #32]
d0002fec:	f884 0028 	strb.w	r0, [r4, #40]	; 0x28
d0002ff0:	4618      	mov	r0, r3
d0002ff2:	f8c4 00b0 	str.w	r0, [r4, #176]	; 0xb0
d0002ff6:	f8c4 30ac 	str.w	r3, [r4, #172]	; 0xac
d0002ffa:	f8d9 4000 	ldr.w	r4, [r9]
d0002ffe:	e5a4      	b.n	d0002b4a <stbi__process_marker+0x792>
d0003000:	1c5a      	adds	r2, r3, #1
d0003002:	f8c4 20ac 	str.w	r2, [r4, #172]	; 0xac
d0003006:	781b      	ldrb	r3, [r3, #0]
d0003008:	e7c7      	b.n	d0002f9a <stbi__process_marker+0xbe2>
d000300a:	1c5a      	adds	r2, r3, #1
d000300c:	f8c4 20ac 	str.w	r2, [r4, #172]	; 0xac
d0003010:	781b      	ldrb	r3, [r3, #0]
d0003012:	2b65      	cmp	r3, #101	; 0x65
d0003014:	bf0c      	ite	eq
d0003016:	463d      	moveq	r5, r7
d0003018:	2500      	movne	r5, #0
d000301a:	e57d      	b.n	d0002b18 <stbi__process_marker+0x760>
d000301c:	f104 0828 	add.w	r8, r4, #40	; 0x28
d0003020:	6923      	ldr	r3, [r4, #16]
d0003022:	6a62      	ldr	r2, [r4, #36]	; 0x24
d0003024:	4641      	mov	r1, r8
d0003026:	69e0      	ldr	r0, [r4, #28]
d0003028:	4798      	blx	r3
d000302a:	f8d4 20ac 	ldr.w	r2, [r4, #172]	; 0xac
d000302e:	f8d4 10b4 	ldr.w	r1, [r4, #180]	; 0xb4
d0003032:	4607      	mov	r7, r0
d0003034:	f8d4 30a8 	ldr.w	r3, [r4, #168]	; 0xa8
d0003038:	1a52      	subs	r2, r2, r1
d000303a:	4413      	add	r3, r2
d000303c:	f8c4 30a8 	str.w	r3, [r4, #168]	; 0xa8
d0003040:	b370      	cbz	r0, d00030a0 <stbi__process_marker+0xce8>
d0003042:	f104 0229 	add.w	r2, r4, #41	; 0x29
d0003046:	4447      	add	r7, r8
d0003048:	f894 3028 	ldrb.w	r3, [r4, #40]	; 0x28
d000304c:	f8c4 70b0 	str.w	r7, [r4, #176]	; 0xb0
d0003050:	f8c4 20ac 	str.w	r2, [r4, #172]	; 0xac
d0003054:	f8d9 4000 	ldr.w	r4, [r9]
d0003058:	e6e2      	b.n	d0002e20 <stbi__process_marker+0xa68>
d000305a:	f104 0828 	add.w	r8, r4, #40	; 0x28
d000305e:	6923      	ldr	r3, [r4, #16]
d0003060:	6a62      	ldr	r2, [r4, #36]	; 0x24
d0003062:	4641      	mov	r1, r8
d0003064:	69e0      	ldr	r0, [r4, #28]
d0003066:	4798      	blx	r3
d0003068:	f8d4 20ac 	ldr.w	r2, [r4, #172]	; 0xac
d000306c:	f8d4 10b4 	ldr.w	r1, [r4, #180]	; 0xb4
d0003070:	4605      	mov	r5, r0
d0003072:	f8d4 30a8 	ldr.w	r3, [r4, #168]	; 0xa8
d0003076:	1a52      	subs	r2, r2, r1
d0003078:	4413      	add	r3, r2
d000307a:	f8c4 30a8 	str.w	r3, [r4, #168]	; 0xa8
d000307e:	b1d8      	cbz	r0, d00030b8 <stbi__process_marker+0xd00>
d0003080:	f104 0229 	add.w	r2, r4, #41	; 0x29
d0003084:	4445      	add	r5, r8
d0003086:	f894 3028 	ldrb.w	r3, [r4, #40]	; 0x28
d000308a:	f8c4 50b0 	str.w	r5, [r4, #176]	; 0xb0
d000308e:	f8c4 20ac 	str.w	r2, [r4, #172]	; 0xac
d0003092:	f8d9 4000 	ldr.w	r4, [r9]
d0003096:	e7bc      	b.n	d0003012 <stbi__process_marker+0xc5a>
d0003098:	4428      	add	r0, r5
d000309a:	f104 0329 	add.w	r3, r4, #41	; 0x29
d000309e:	e7a8      	b.n	d0002ff2 <stbi__process_marker+0xc3a>
d00030a0:	f104 0329 	add.w	r3, r4, #41	; 0x29
d00030a4:	6220      	str	r0, [r4, #32]
d00030a6:	f884 0028 	strb.w	r0, [r4, #40]	; 0x28
d00030aa:	f8c4 30b0 	str.w	r3, [r4, #176]	; 0xb0
d00030ae:	f8c4 30ac 	str.w	r3, [r4, #172]	; 0xac
d00030b2:	f8d9 4000 	ldr.w	r4, [r9]
d00030b6:	e524      	b.n	d0002b02 <stbi__process_marker+0x74a>
d00030b8:	f104 0329 	add.w	r3, r4, #41	; 0x29
d00030bc:	6220      	str	r0, [r4, #32]
d00030be:	f884 0028 	strb.w	r0, [r4, #40]	; 0x28
d00030c2:	f8c4 30b0 	str.w	r3, [r4, #176]	; 0xb0
d00030c6:	f8c4 30ac 	str.w	r3, [r4, #172]	; 0xac
d00030ca:	f8d9 4000 	ldr.w	r4, [r9]
d00030ce:	e523      	b.n	d0002b18 <stbi__process_marker+0x760>

d00030d0 <stbi__decode_jpeg_header>:
d00030d0:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d00030d4:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
d00030d8:	4604      	mov	r4, r0
d00030da:	f244 76c4 	movw	r6, #18372	; 0x47c4
d00030de:	f244 72e4 	movw	r2, #18404	; 0x47e4
d00030e2:	2000      	movs	r0, #0
d00030e4:	460d      	mov	r5, r1
d00030e6:	55a3      	strb	r3, [r4, r6]
d00030e8:	f244 71e8 	movw	r1, #18408	; 0x47e8
d00030ec:	6826      	ldr	r6, [r4, #0]
d00030ee:	b087      	sub	sp, #28
d00030f0:	50a0      	str	r0, [r4, r2]
d00030f2:	f8d6 20ac 	ldr.w	r2, [r6, #172]	; 0xac
d00030f6:	5063      	str	r3, [r4, r1]
d00030f8:	f8d6 30b0 	ldr.w	r3, [r6, #176]	; 0xb0
d00030fc:	429a      	cmp	r2, r3
d00030fe:	d30a      	bcc.n	d0003116 <stbi__decode_jpeg_header+0x46>
d0003100:	6a33      	ldr	r3, [r6, #32]
d0003102:	2b00      	cmp	r3, #0
d0003104:	f040 8105 	bne.w	d0003312 <stbi__decode_jpeg_header+0x242>
d0003108:	4bb1      	ldr	r3, [pc, #708]	; (d00033d0 <stbi__decode_jpeg_header+0x300>)
d000310a:	2000      	movs	r0, #0
d000310c:	4ab1      	ldr	r2, [pc, #708]	; (d00033d4 <stbi__decode_jpeg_header+0x304>)
d000310e:	601a      	str	r2, [r3, #0]
d0003110:	b007      	add	sp, #28
d0003112:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0003116:	1c53      	adds	r3, r2, #1
d0003118:	f8c6 30ac 	str.w	r3, [r6, #172]	; 0xac
d000311c:	7813      	ldrb	r3, [r2, #0]
d000311e:	2bff      	cmp	r3, #255	; 0xff
d0003120:	d1f2      	bne.n	d0003108 <stbi__decode_jpeg_header+0x38>
d0003122:	6826      	ldr	r6, [r4, #0]
d0003124:	f8d6 30ac 	ldr.w	r3, [r6, #172]	; 0xac
d0003128:	f8d6 20b0 	ldr.w	r2, [r6, #176]	; 0xb0
d000312c:	4293      	cmp	r3, r2
d000312e:	d321      	bcc.n	d0003174 <stbi__decode_jpeg_header+0xa4>
d0003130:	6a33      	ldr	r3, [r6, #32]
d0003132:	2b00      	cmp	r3, #0
d0003134:	d0e8      	beq.n	d0003108 <stbi__decode_jpeg_header+0x38>
d0003136:	f106 0728 	add.w	r7, r6, #40	; 0x28
d000313a:	6933      	ldr	r3, [r6, #16]
d000313c:	6a72      	ldr	r2, [r6, #36]	; 0x24
d000313e:	4639      	mov	r1, r7
d0003140:	69f0      	ldr	r0, [r6, #28]
d0003142:	4798      	blx	r3
d0003144:	f8d6 30ac 	ldr.w	r3, [r6, #172]	; 0xac
d0003148:	f8d6 20b4 	ldr.w	r2, [r6, #180]	; 0xb4
d000314c:	f106 0129 	add.w	r1, r6, #41	; 0x29
d0003150:	4407      	add	r7, r0
d0003152:	1a9a      	subs	r2, r3, r2
d0003154:	f8d6 30a8 	ldr.w	r3, [r6, #168]	; 0xa8
d0003158:	4413      	add	r3, r2
d000315a:	f8c6 30a8 	str.w	r3, [r6, #168]	; 0xa8
d000315e:	2800      	cmp	r0, #0
d0003160:	f040 80d0 	bne.w	d0003304 <stbi__decode_jpeg_header+0x234>
d0003164:	6230      	str	r0, [r6, #32]
d0003166:	f886 0028 	strb.w	r0, [r6, #40]	; 0x28
d000316a:	f8c6 10b0 	str.w	r1, [r6, #176]	; 0xb0
d000316e:	f8c6 10ac 	str.w	r1, [r6, #172]	; 0xac
d0003172:	e7c9      	b.n	d0003108 <stbi__decode_jpeg_header+0x38>
d0003174:	1c5a      	adds	r2, r3, #1
d0003176:	f8c6 20ac 	str.w	r2, [r6, #172]	; 0xac
d000317a:	781b      	ldrb	r3, [r3, #0]
d000317c:	2bff      	cmp	r3, #255	; 0xff
d000317e:	d0d0      	beq.n	d0003122 <stbi__decode_jpeg_header+0x52>
d0003180:	2bd8      	cmp	r3, #216	; 0xd8
d0003182:	d1c1      	bne.n	d0003108 <stbi__decode_jpeg_header+0x38>
d0003184:	2d01      	cmp	r5, #1
d0003186:	d07a      	beq.n	d000327e <stbi__decode_jpeg_header+0x1ae>
d0003188:	f244 77c4 	movw	r7, #18372	; 0x47c4
d000318c:	4620      	mov	r0, r4
d000318e:	4427      	add	r7, r4
d0003190:	4639      	mov	r1, r7
d0003192:	f7fe fcd9 	bl	d0001b48 <stbi__get_marker.isra.0>
d0003196:	f1a0 03c0 	sub.w	r3, r0, #192	; 0xc0
d000319a:	2b02      	cmp	r3, #2
d000319c:	d927      	bls.n	d00031ee <stbi__decode_jpeg_header+0x11e>
d000319e:	f04f 08ff 	mov.w	r8, #255	; 0xff
d00031a2:	4601      	mov	r1, r0
d00031a4:	4620      	mov	r0, r4
d00031a6:	f7ff f907 	bl	d00023b8 <stbi__process_marker>
d00031aa:	2800      	cmp	r0, #0
d00031ac:	d0b0      	beq.n	d0003110 <stbi__decode_jpeg_header+0x40>
d00031ae:	4639      	mov	r1, r7
d00031b0:	4620      	mov	r0, r4
d00031b2:	f7fe fcc9 	bl	d0001b48 <stbi__get_marker.isra.0>
d00031b6:	28ff      	cmp	r0, #255	; 0xff
d00031b8:	f040 8092 	bne.w	d00032e0 <stbi__decode_jpeg_header+0x210>
d00031bc:	6826      	ldr	r6, [r4, #0]
d00031be:	6933      	ldr	r3, [r6, #16]
d00031c0:	b133      	cbz	r3, d00031d0 <stbi__decode_jpeg_header+0x100>
d00031c2:	69b3      	ldr	r3, [r6, #24]
d00031c4:	69f0      	ldr	r0, [r6, #28]
d00031c6:	4798      	blx	r3
d00031c8:	b140      	cbz	r0, d00031dc <stbi__decode_jpeg_header+0x10c>
d00031ca:	6a33      	ldr	r3, [r6, #32]
d00031cc:	2b00      	cmp	r3, #0
d00031ce:	d04f      	beq.n	d0003270 <stbi__decode_jpeg_header+0x1a0>
d00031d0:	f8d6 20ac 	ldr.w	r2, [r6, #172]	; 0xac
d00031d4:	f8d6 30b0 	ldr.w	r3, [r6, #176]	; 0xb0
d00031d8:	429a      	cmp	r2, r3
d00031da:	d249      	bcs.n	d0003270 <stbi__decode_jpeg_header+0x1a0>
d00031dc:	7838      	ldrb	r0, [r7, #0]
d00031de:	28ff      	cmp	r0, #255	; 0xff
d00031e0:	d01e      	beq.n	d0003220 <stbi__decode_jpeg_header+0x150>
d00031e2:	f1a0 03c0 	sub.w	r3, r0, #192	; 0xc0
d00031e6:	f887 8000 	strb.w	r8, [r7]
d00031ea:	2b02      	cmp	r3, #2
d00031ec:	d8d9      	bhi.n	d00031a2 <stbi__decode_jpeg_header+0xd2>
d00031ee:	f1a0 00c2 	sub.w	r0, r0, #194	; 0xc2
d00031f2:	6826      	ldr	r6, [r4, #0]
d00031f4:	f244 73cc 	movw	r3, #18380	; 0x47cc
d00031f8:	fab0 f080 	clz	r0, r0
d00031fc:	f8d6 20ac 	ldr.w	r2, [r6, #172]	; 0xac
d0003200:	0940      	lsrs	r0, r0, #5
d0003202:	50e0      	str	r0, [r4, r3]
d0003204:	f8d6 30b0 	ldr.w	r3, [r6, #176]	; 0xb0
d0003208:	429a      	cmp	r2, r3
d000320a:	f0c0 80b3 	bcc.w	d0003374 <stbi__decode_jpeg_header+0x2a4>
d000320e:	6a33      	ldr	r3, [r6, #32]
d0003210:	2b00      	cmp	r3, #0
d0003212:	f040 810c 	bne.w	d000342e <stbi__decode_jpeg_header+0x35e>
d0003216:	4b6e      	ldr	r3, [pc, #440]	; (d00033d0 <stbi__decode_jpeg_header+0x300>)
d0003218:	2000      	movs	r0, #0
d000321a:	4a6f      	ldr	r2, [pc, #444]	; (d00033d8 <stbi__decode_jpeg_header+0x308>)
d000321c:	601a      	str	r2, [r3, #0]
d000321e:	e777      	b.n	d0003110 <stbi__decode_jpeg_header+0x40>
d0003220:	6826      	ldr	r6, [r4, #0]
d0003222:	f8d6 30ac 	ldr.w	r3, [r6, #172]	; 0xac
d0003226:	f8d6 20b0 	ldr.w	r2, [r6, #176]	; 0xb0
d000322a:	4293      	cmp	r3, r2
d000322c:	d32b      	bcc.n	d0003286 <stbi__decode_jpeg_header+0x1b6>
d000322e:	6a33      	ldr	r3, [r6, #32]
d0003230:	2b00      	cmp	r3, #0
d0003232:	d0c4      	beq.n	d00031be <stbi__decode_jpeg_header+0xee>
d0003234:	f106 0928 	add.w	r9, r6, #40	; 0x28
d0003238:	6933      	ldr	r3, [r6, #16]
d000323a:	6a72      	ldr	r2, [r6, #36]	; 0x24
d000323c:	4649      	mov	r1, r9
d000323e:	69f0      	ldr	r0, [r6, #28]
d0003240:	4798      	blx	r3
d0003242:	f8d6 20ac 	ldr.w	r2, [r6, #172]	; 0xac
d0003246:	f8d6 10b4 	ldr.w	r1, [r6, #180]	; 0xb4
d000324a:	f8d6 30a8 	ldr.w	r3, [r6, #168]	; 0xa8
d000324e:	1a52      	subs	r2, r2, r1
d0003250:	4413      	add	r3, r2
d0003252:	f8c6 30a8 	str.w	r3, [r6, #168]	; 0xa8
d0003256:	2800      	cmp	r0, #0
d0003258:	d177      	bne.n	d000334a <stbi__decode_jpeg_header+0x27a>
d000325a:	f106 0329 	add.w	r3, r6, #41	; 0x29
d000325e:	6230      	str	r0, [r6, #32]
d0003260:	f886 0028 	strb.w	r0, [r6, #40]	; 0x28
d0003264:	f8c6 30b0 	str.w	r3, [r6, #176]	; 0xb0
d0003268:	f8c6 30ac 	str.w	r3, [r6, #172]	; 0xac
d000326c:	6826      	ldr	r6, [r4, #0]
d000326e:	e7a6      	b.n	d00031be <stbi__decode_jpeg_header+0xee>
d0003270:	4b57      	ldr	r3, [pc, #348]	; (d00033d0 <stbi__decode_jpeg_header+0x300>)
d0003272:	2000      	movs	r0, #0
d0003274:	4a59      	ldr	r2, [pc, #356]	; (d00033dc <stbi__decode_jpeg_header+0x30c>)
d0003276:	601a      	str	r2, [r3, #0]
d0003278:	b007      	add	sp, #28
d000327a:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d000327e:	2001      	movs	r0, #1
d0003280:	b007      	add	sp, #28
d0003282:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0003286:	1c5a      	adds	r2, r3, #1
d0003288:	f8c6 20ac 	str.w	r2, [r6, #172]	; 0xac
d000328c:	781b      	ldrb	r3, [r3, #0]
d000328e:	2bff      	cmp	r3, #255	; 0xff
d0003290:	d195      	bne.n	d00031be <stbi__decode_jpeg_header+0xee>
d0003292:	f8d6 30ac 	ldr.w	r3, [r6, #172]	; 0xac
d0003296:	f8d6 20b0 	ldr.w	r2, [r6, #176]	; 0xb0
d000329a:	4293      	cmp	r3, r2
d000329c:	d323      	bcc.n	d00032e6 <stbi__decode_jpeg_header+0x216>
d000329e:	6a30      	ldr	r0, [r6, #32]
d00032a0:	2800      	cmp	r0, #0
d00032a2:	f43f af7e 	beq.w	d00031a2 <stbi__decode_jpeg_header+0xd2>
d00032a6:	f106 0928 	add.w	r9, r6, #40	; 0x28
d00032aa:	6933      	ldr	r3, [r6, #16]
d00032ac:	6a72      	ldr	r2, [r6, #36]	; 0x24
d00032ae:	4649      	mov	r1, r9
d00032b0:	69f0      	ldr	r0, [r6, #28]
d00032b2:	4798      	blx	r3
d00032b4:	f8d6 30ac 	ldr.w	r3, [r6, #172]	; 0xac
d00032b8:	f8d6 20b4 	ldr.w	r2, [r6, #180]	; 0xb4
d00032bc:	f106 0c29 	add.w	ip, r6, #41	; 0x29
d00032c0:	eb09 0100 	add.w	r1, r9, r0
d00032c4:	1a9a      	subs	r2, r3, r2
d00032c6:	f8d6 30a8 	ldr.w	r3, [r6, #168]	; 0xa8
d00032ca:	4413      	add	r3, r2
d00032cc:	f8c6 30a8 	str.w	r3, [r6, #168]	; 0xa8
d00032d0:	b988      	cbnz	r0, d00032f6 <stbi__decode_jpeg_header+0x226>
d00032d2:	6230      	str	r0, [r6, #32]
d00032d4:	f886 0028 	strb.w	r0, [r6, #40]	; 0x28
d00032d8:	f8c6 c0b0 	str.w	ip, [r6, #176]	; 0xb0
d00032dc:	f8c6 c0ac 	str.w	ip, [r6, #172]	; 0xac
d00032e0:	f1a0 03c0 	sub.w	r3, r0, #192	; 0xc0
d00032e4:	e781      	b.n	d00031ea <stbi__decode_jpeg_header+0x11a>
d00032e6:	1c5a      	adds	r2, r3, #1
d00032e8:	f8c6 20ac 	str.w	r2, [r6, #172]	; 0xac
d00032ec:	7818      	ldrb	r0, [r3, #0]
d00032ee:	28ff      	cmp	r0, #255	; 0xff
d00032f0:	d1f6      	bne.n	d00032e0 <stbi__decode_jpeg_header+0x210>
d00032f2:	6826      	ldr	r6, [r4, #0]
d00032f4:	e7cd      	b.n	d0003292 <stbi__decode_jpeg_header+0x1c2>
d00032f6:	f896 0028 	ldrb.w	r0, [r6, #40]	; 0x28
d00032fa:	f8c6 10b0 	str.w	r1, [r6, #176]	; 0xb0
d00032fe:	f8c6 c0ac 	str.w	ip, [r6, #172]	; 0xac
d0003302:	e7f4      	b.n	d00032ee <stbi__decode_jpeg_header+0x21e>
d0003304:	f896 3028 	ldrb.w	r3, [r6, #40]	; 0x28
d0003308:	f8c6 70b0 	str.w	r7, [r6, #176]	; 0xb0
d000330c:	f8c6 10ac 	str.w	r1, [r6, #172]	; 0xac
d0003310:	e734      	b.n	d000317c <stbi__decode_jpeg_header+0xac>
d0003312:	f106 0828 	add.w	r8, r6, #40	; 0x28
d0003316:	6933      	ldr	r3, [r6, #16]
d0003318:	6a72      	ldr	r2, [r6, #36]	; 0x24
d000331a:	4641      	mov	r1, r8
d000331c:	69f0      	ldr	r0, [r6, #28]
d000331e:	4798      	blx	r3
d0003320:	f8d6 20ac 	ldr.w	r2, [r6, #172]	; 0xac
d0003324:	f8d6 70b4 	ldr.w	r7, [r6, #180]	; 0xb4
d0003328:	f8d6 30a8 	ldr.w	r3, [r6, #168]	; 0xa8
d000332c:	1bd2      	subs	r2, r2, r7
d000332e:	4413      	add	r3, r2
d0003330:	f8c6 30a8 	str.w	r3, [r6, #168]	; 0xa8
d0003334:	b9a0      	cbnz	r0, d0003360 <stbi__decode_jpeg_header+0x290>
d0003336:	f106 0329 	add.w	r3, r6, #41	; 0x29
d000333a:	6230      	str	r0, [r6, #32]
d000333c:	f886 0028 	strb.w	r0, [r6, #40]	; 0x28
d0003340:	f8c6 30b0 	str.w	r3, [r6, #176]	; 0xb0
d0003344:	f8c6 30ac 	str.w	r3, [r6, #172]	; 0xac
d0003348:	e6de      	b.n	d0003108 <stbi__decode_jpeg_header+0x38>
d000334a:	f106 0229 	add.w	r2, r6, #41	; 0x29
d000334e:	4448      	add	r0, r9
d0003350:	f896 3028 	ldrb.w	r3, [r6, #40]	; 0x28
d0003354:	f8c6 00b0 	str.w	r0, [r6, #176]	; 0xb0
d0003358:	f8c6 20ac 	str.w	r2, [r6, #172]	; 0xac
d000335c:	6826      	ldr	r6, [r4, #0]
d000335e:	e796      	b.n	d000328e <stbi__decode_jpeg_header+0x1be>
d0003360:	4440      	add	r0, r8
d0003362:	f106 0229 	add.w	r2, r6, #41	; 0x29
d0003366:	f896 3028 	ldrb.w	r3, [r6, #40]	; 0x28
d000336a:	f8c6 00b0 	str.w	r0, [r6, #176]	; 0xb0
d000336e:	f8c6 20ac 	str.w	r2, [r6, #172]	; 0xac
d0003372:	e6d4      	b.n	d000311e <stbi__decode_jpeg_header+0x4e>
d0003374:	1c51      	adds	r1, r2, #1
d0003376:	f8c6 10ac 	str.w	r1, [r6, #172]	; 0xac
d000337a:	7817      	ldrb	r7, [r2, #0]
d000337c:	4299      	cmp	r1, r3
d000337e:	ea4f 2707 	mov.w	r7, r7, lsl #8
d0003382:	d219      	bcs.n	d00033b8 <stbi__decode_jpeg_header+0x2e8>
d0003384:	1c4a      	adds	r2, r1, #1
d0003386:	f8c6 20ac 	str.w	r2, [r6, #172]	; 0xac
d000338a:	7809      	ldrb	r1, [r1, #0]
d000338c:	440f      	add	r7, r1
d000338e:	2f0a      	cmp	r7, #10
d0003390:	f77f af41 	ble.w	d0003216 <stbi__decode_jpeg_header+0x146>
d0003394:	429a      	cmp	r2, r3
d0003396:	d227      	bcs.n	d00033e8 <stbi__decode_jpeg_header+0x318>
d0003398:	1c53      	adds	r3, r2, #1
d000339a:	f8c6 30ac 	str.w	r3, [r6, #172]	; 0xac
d000339e:	7813      	ldrb	r3, [r2, #0]
d00033a0:	2b08      	cmp	r3, #8
d00033a2:	d10f      	bne.n	d00033c4 <stbi__decode_jpeg_header+0x2f4>
d00033a4:	4630      	mov	r0, r6
d00033a6:	f7fe fb67 	bl	d0001a78 <stbi__get16be>
d00033aa:	6070      	str	r0, [r6, #4]
d00033ac:	2800      	cmp	r0, #0
d00033ae:	d17e      	bne.n	d00034ae <stbi__decode_jpeg_header+0x3de>
d00033b0:	4b07      	ldr	r3, [pc, #28]	; (d00033d0 <stbi__decode_jpeg_header+0x300>)
d00033b2:	4a0b      	ldr	r2, [pc, #44]	; (d00033e0 <stbi__decode_jpeg_header+0x310>)
d00033b4:	601a      	str	r2, [r3, #0]
d00033b6:	e6ab      	b.n	d0003110 <stbi__decode_jpeg_header+0x40>
d00033b8:	6a33      	ldr	r3, [r6, #32]
d00033ba:	2b00      	cmp	r3, #0
d00033bc:	d158      	bne.n	d0003470 <stbi__decode_jpeg_header+0x3a0>
d00033be:	2f0a      	cmp	r7, #10
d00033c0:	f77f af29 	ble.w	d0003216 <stbi__decode_jpeg_header+0x146>
d00033c4:	4b02      	ldr	r3, [pc, #8]	; (d00033d0 <stbi__decode_jpeg_header+0x300>)
d00033c6:	2000      	movs	r0, #0
d00033c8:	4a06      	ldr	r2, [pc, #24]	; (d00033e4 <stbi__decode_jpeg_header+0x314>)
d00033ca:	601a      	str	r2, [r3, #0]
d00033cc:	e6a0      	b.n	d0003110 <stbi__decode_jpeg_header+0x40>
d00033ce:	bf00      	nop
d00033d0:	d000e928 	.word	0xd000e928
d00033d4:	d000ddac 	.word	0xd000ddac
d00033d8:	d000ddbc 	.word	0xd000ddbc
d00033dc:	d000ddb4 	.word	0xd000ddb4
d00033e0:	d000ddd4 	.word	0xd000ddd4
d00033e4:	d000ddc8 	.word	0xd000ddc8
d00033e8:	6a33      	ldr	r3, [r6, #32]
d00033ea:	2b00      	cmp	r3, #0
d00033ec:	d0ea      	beq.n	d00033c4 <stbi__decode_jpeg_header+0x2f4>
d00033ee:	f106 0828 	add.w	r8, r6, #40	; 0x28
d00033f2:	6933      	ldr	r3, [r6, #16]
d00033f4:	6a72      	ldr	r2, [r6, #36]	; 0x24
d00033f6:	4641      	mov	r1, r8
d00033f8:	69f0      	ldr	r0, [r6, #28]
d00033fa:	4798      	blx	r3
d00033fc:	f8d6 20ac 	ldr.w	r2, [r6, #172]	; 0xac
d0003400:	f8d6 10b4 	ldr.w	r1, [r6, #180]	; 0xb4
d0003404:	f8d6 30a8 	ldr.w	r3, [r6, #168]	; 0xa8
d0003408:	1a52      	subs	r2, r2, r1
d000340a:	4413      	add	r3, r2
d000340c:	f8c6 30a8 	str.w	r3, [r6, #168]	; 0xa8
d0003410:	2800      	cmp	r0, #0
d0003412:	d16f      	bne.n	d00034f4 <stbi__decode_jpeg_header+0x424>
d0003414:	f106 0229 	add.w	r2, r6, #41	; 0x29
d0003418:	6230      	str	r0, [r6, #32]
d000341a:	f886 0028 	strb.w	r0, [r6, #40]	; 0x28
d000341e:	4610      	mov	r0, r2
d0003420:	f896 3028 	ldrb.w	r3, [r6, #40]	; 0x28
d0003424:	f8c6 00b0 	str.w	r0, [r6, #176]	; 0xb0
d0003428:	f8c6 20ac 	str.w	r2, [r6, #172]	; 0xac
d000342c:	e7b8      	b.n	d00033a0 <stbi__decode_jpeg_header+0x2d0>
d000342e:	f106 0728 	add.w	r7, r6, #40	; 0x28
d0003432:	6933      	ldr	r3, [r6, #16]
d0003434:	6a72      	ldr	r2, [r6, #36]	; 0x24
d0003436:	4639      	mov	r1, r7
d0003438:	69f0      	ldr	r0, [r6, #28]
d000343a:	4798      	blx	r3
d000343c:	f8d6 30ac 	ldr.w	r3, [r6, #172]	; 0xac
d0003440:	f8d6 20b4 	ldr.w	r2, [r6, #180]	; 0xb4
d0003444:	f8d6 10a8 	ldr.w	r1, [r6, #168]	; 0xa8
d0003448:	1a9b      	subs	r3, r3, r2
d000344a:	4419      	add	r1, r3
d000344c:	f8c6 10a8 	str.w	r1, [r6, #168]	; 0xa8
d0003450:	2800      	cmp	r0, #0
d0003452:	d146      	bne.n	d00034e2 <stbi__decode_jpeg_header+0x412>
d0003454:	f106 0229 	add.w	r2, r6, #41	; 0x29
d0003458:	6230      	str	r0, [r6, #32]
d000345a:	f886 0028 	strb.w	r0, [r6, #40]	; 0x28
d000345e:	4613      	mov	r3, r2
d0003460:	4611      	mov	r1, r2
d0003462:	f896 7028 	ldrb.w	r7, [r6, #40]	; 0x28
d0003466:	f8c6 30b0 	str.w	r3, [r6, #176]	; 0xb0
d000346a:	f8c6 20ac 	str.w	r2, [r6, #172]	; 0xac
d000346e:	e785      	b.n	d000337c <stbi__decode_jpeg_header+0x2ac>
d0003470:	f106 0828 	add.w	r8, r6, #40	; 0x28
d0003474:	6a72      	ldr	r2, [r6, #36]	; 0x24
d0003476:	6933      	ldr	r3, [r6, #16]
d0003478:	4641      	mov	r1, r8
d000347a:	69f0      	ldr	r0, [r6, #28]
d000347c:	4798      	blx	r3
d000347e:	f8d6 20ac 	ldr.w	r2, [r6, #172]	; 0xac
d0003482:	f8d6 10b4 	ldr.w	r1, [r6, #180]	; 0xb4
d0003486:	f8d6 30a8 	ldr.w	r3, [r6, #168]	; 0xa8
d000348a:	1a52      	subs	r2, r2, r1
d000348c:	4413      	add	r3, r2
d000348e:	f8c6 30a8 	str.w	r3, [r6, #168]	; 0xa8
d0003492:	bb50      	cbnz	r0, d00034ea <stbi__decode_jpeg_header+0x41a>
d0003494:	f106 0329 	add.w	r3, r6, #41	; 0x29
d0003498:	6230      	str	r0, [r6, #32]
d000349a:	f886 0028 	strb.w	r0, [r6, #40]	; 0x28
d000349e:	461a      	mov	r2, r3
d00034a0:	f896 1028 	ldrb.w	r1, [r6, #40]	; 0x28
d00034a4:	f8c6 30b0 	str.w	r3, [r6, #176]	; 0xb0
d00034a8:	f8c6 20ac 	str.w	r2, [r6, #172]	; 0xac
d00034ac:	e76e      	b.n	d000338c <stbi__decode_jpeg_header+0x2bc>
d00034ae:	4630      	mov	r0, r6
d00034b0:	f7fe fae2 	bl	d0001a78 <stbi__get16be>
d00034b4:	6030      	str	r0, [r6, #0]
d00034b6:	b330      	cbz	r0, d0003506 <stbi__decode_jpeg_header+0x436>
d00034b8:	6873      	ldr	r3, [r6, #4]
d00034ba:	f1b3 7f80 	cmp.w	r3, #16777216	; 0x1000000
d00034be:	d81d      	bhi.n	d00034fc <stbi__decode_jpeg_header+0x42c>
d00034c0:	f1b0 7f80 	cmp.w	r0, #16777216	; 0x1000000
d00034c4:	d81a      	bhi.n	d00034fc <stbi__decode_jpeg_header+0x42c>
d00034c6:	f8d6 30ac 	ldr.w	r3, [r6, #172]	; 0xac
d00034ca:	f8d6 20b0 	ldr.w	r2, [r6, #176]	; 0xb0
d00034ce:	4293      	cmp	r3, r2
d00034d0:	f0c0 8113 	bcc.w	d00036fa <stbi__decode_jpeg_header+0x62a>
d00034d4:	6a33      	ldr	r3, [r6, #32]
d00034d6:	b9d3      	cbnz	r3, d000350e <stbi__decode_jpeg_header+0x43e>
d00034d8:	4bab      	ldr	r3, [pc, #684]	; (d0003788 <stbi__decode_jpeg_header+0x6b8>)
d00034da:	2000      	movs	r0, #0
d00034dc:	4aab      	ldr	r2, [pc, #684]	; (d000378c <stbi__decode_jpeg_header+0x6bc>)
d00034de:	601a      	str	r2, [r3, #0]
d00034e0:	e616      	b.n	d0003110 <stbi__decode_jpeg_header+0x40>
d00034e2:	183b      	adds	r3, r7, r0
d00034e4:	f106 0229 	add.w	r2, r6, #41	; 0x29
d00034e8:	e7ba      	b.n	d0003460 <stbi__decode_jpeg_header+0x390>
d00034ea:	eb08 0300 	add.w	r3, r8, r0
d00034ee:	f106 0229 	add.w	r2, r6, #41	; 0x29
d00034f2:	e7d5      	b.n	d00034a0 <stbi__decode_jpeg_header+0x3d0>
d00034f4:	4440      	add	r0, r8
d00034f6:	f106 0229 	add.w	r2, r6, #41	; 0x29
d00034fa:	e791      	b.n	d0003420 <stbi__decode_jpeg_header+0x350>
d00034fc:	4ba2      	ldr	r3, [pc, #648]	; (d0003788 <stbi__decode_jpeg_header+0x6b8>)
d00034fe:	2000      	movs	r0, #0
d0003500:	4aa3      	ldr	r2, [pc, #652]	; (d0003790 <stbi__decode_jpeg_header+0x6c0>)
d0003502:	601a      	str	r2, [r3, #0]
d0003504:	e604      	b.n	d0003110 <stbi__decode_jpeg_header+0x40>
d0003506:	4ba0      	ldr	r3, [pc, #640]	; (d0003788 <stbi__decode_jpeg_header+0x6b8>)
d0003508:	4aa2      	ldr	r2, [pc, #648]	; (d0003794 <stbi__decode_jpeg_header+0x6c4>)
d000350a:	601a      	str	r2, [r3, #0]
d000350c:	e600      	b.n	d0003110 <stbi__decode_jpeg_header+0x40>
d000350e:	f106 0828 	add.w	r8, r6, #40	; 0x28
d0003512:	6933      	ldr	r3, [r6, #16]
d0003514:	6a72      	ldr	r2, [r6, #36]	; 0x24
d0003516:	4641      	mov	r1, r8
d0003518:	69f0      	ldr	r0, [r6, #28]
d000351a:	4798      	blx	r3
d000351c:	f8d6 20ac 	ldr.w	r2, [r6, #172]	; 0xac
d0003520:	f8d6 10b4 	ldr.w	r1, [r6, #180]	; 0xb4
d0003524:	f8d6 30a8 	ldr.w	r3, [r6, #168]	; 0xa8
d0003528:	1a52      	subs	r2, r2, r1
d000352a:	4413      	add	r3, r2
d000352c:	f8c6 30a8 	str.w	r3, [r6, #168]	; 0xa8
d0003530:	2800      	cmp	r0, #0
d0003532:	f040 80de 	bne.w	d00036f2 <stbi__decode_jpeg_header+0x622>
d0003536:	f106 0229 	add.w	r2, r6, #41	; 0x29
d000353a:	6230      	str	r0, [r6, #32]
d000353c:	f886 0028 	strb.w	r0, [r6, #40]	; 0x28
d0003540:	4610      	mov	r0, r2
d0003542:	f896 3028 	ldrb.w	r3, [r6, #40]	; 0x28
d0003546:	f8c6 00b0 	str.w	r0, [r6, #176]	; 0xb0
d000354a:	f8c6 20ac 	str.w	r2, [r6, #172]	; 0xac
d000354e:	1eda      	subs	r2, r3, #3
d0003550:	2a01      	cmp	r2, #1
d0003552:	d901      	bls.n	d0003558 <stbi__decode_jpeg_header+0x488>
d0003554:	2b01      	cmp	r3, #1
d0003556:	d1bf      	bne.n	d00034d8 <stbi__decode_jpeg_header+0x408>
d0003558:	f244 62c8 	movw	r2, #18120	; 0x46c8
d000355c:	2100      	movs	r1, #0
d000355e:	60b3      	str	r3, [r6, #8]
d0003560:	4422      	add	r2, r4
d0003562:	4608      	mov	r0, r1
d0003564:	e003      	b.n	d000356e <stbi__decode_jpeg_header+0x49e>
d0003566:	f842 0c48 	str.w	r0, [r2, #-72]
d000356a:	f842 0c3c 	str.w	r0, [r2, #-60]
d000356e:	428b      	cmp	r3, r1
d0003570:	f102 0248 	add.w	r2, r2, #72	; 0x48
d0003574:	f101 0101 	add.w	r1, r1, #1
d0003578:	dcf5      	bgt.n	d0003566 <stbi__decode_jpeg_header+0x496>
d000357a:	2203      	movs	r2, #3
d000357c:	2108      	movs	r1, #8
d000357e:	fb12 1303 	smlabb	r3, r2, r3, r1
d0003582:	42bb      	cmp	r3, r7
d0003584:	f47f ae47 	bne.w	d0003216 <stbi__decode_jpeg_header+0x146>
d0003588:	f244 73ec 	movw	r3, #18412	; 0x47ec
d000358c:	f106 0929 	add.w	r9, r6, #41	; 0x29
d0003590:	2700      	movs	r7, #0
d0003592:	f244 689c 	movw	r8, #18076	; 0x469c
d0003596:	f8df a20c 	ldr.w	sl, [pc, #524]	; d00037a4 <stbi__decode_jpeg_header+0x6d4>
d000359a:	50e7      	str	r7, [r4, r3]
d000359c:	464b      	mov	r3, r9
d000359e:	44a0      	add	r8, r4
d00035a0:	46a9      	mov	r9, r5
d00035a2:	461d      	mov	r5, r3
d00035a4:	68b3      	ldr	r3, [r6, #8]
d00035a6:	429f      	cmp	r7, r3
d00035a8:	f280 80ac 	bge.w	d0003704 <stbi__decode_jpeg_header+0x634>
d00035ac:	f8d6 20ac 	ldr.w	r2, [r6, #172]	; 0xac
d00035b0:	f8d6 30b0 	ldr.w	r3, [r6, #176]	; 0xb0
d00035b4:	429a      	cmp	r2, r3
d00035b6:	d318      	bcc.n	d00035ea <stbi__decode_jpeg_header+0x51a>
d00035b8:	6a30      	ldr	r0, [r6, #32]
d00035ba:	2800      	cmp	r0, #0
d00035bc:	d158      	bne.n	d0003670 <stbi__decode_jpeg_header+0x5a0>
d00035be:	f8c8 0000 	str.w	r0, [r8]
d00035c2:	68b1      	ldr	r1, [r6, #8]
d00035c4:	2903      	cmp	r1, #3
d00035c6:	d037      	beq.n	d0003638 <stbi__decode_jpeg_header+0x568>
d00035c8:	429a      	cmp	r2, r3
d00035ca:	d314      	bcc.n	d00035f6 <stbi__decode_jpeg_header+0x526>
d00035cc:	6a33      	ldr	r3, [r6, #32]
d00035ce:	2b00      	cmp	r3, #0
d00035d0:	f040 8176 	bne.w	d00038c0 <stbi__decode_jpeg_header+0x7f0>
d00035d4:	2148      	movs	r1, #72	; 0x48
d00035d6:	f244 62a0 	movw	r2, #18080	; 0x46a0
d00035da:	fb01 4407 	mla	r4, r1, r7, r4
d00035de:	50a3      	str	r3, [r4, r2]
d00035e0:	4b69      	ldr	r3, [pc, #420]	; (d0003788 <stbi__decode_jpeg_header+0x6b8>)
d00035e2:	2000      	movs	r0, #0
d00035e4:	4a6c      	ldr	r2, [pc, #432]	; (d0003798 <stbi__decode_jpeg_header+0x6c8>)
d00035e6:	601a      	str	r2, [r3, #0]
d00035e8:	e592      	b.n	d0003110 <stbi__decode_jpeg_header+0x40>
d00035ea:	1c51      	adds	r1, r2, #1
d00035ec:	f8c6 10ac 	str.w	r1, [r6, #172]	; 0xac
d00035f0:	7810      	ldrb	r0, [r2, #0]
d00035f2:	460a      	mov	r2, r1
d00035f4:	e7e3      	b.n	d00035be <stbi__decode_jpeg_header+0x4ee>
d00035f6:	1c53      	adds	r3, r2, #1
d00035f8:	f8c6 30ac 	str.w	r3, [r6, #172]	; 0xac
d00035fc:	7813      	ldrb	r3, [r2, #0]
d00035fe:	111a      	asrs	r2, r3, #4
d0003600:	f8c8 2004 	str.w	r2, [r8, #4]
d0003604:	2a00      	cmp	r2, #0
d0003606:	d0eb      	beq.n	d00035e0 <stbi__decode_jpeg_header+0x510>
d0003608:	2a04      	cmp	r2, #4
d000360a:	dce9      	bgt.n	d00035e0 <stbi__decode_jpeg_header+0x510>
d000360c:	f003 030f 	and.w	r3, r3, #15
d0003610:	1e5a      	subs	r2, r3, #1
d0003612:	f8c8 3008 	str.w	r3, [r8, #8]
d0003616:	2a03      	cmp	r2, #3
d0003618:	d825      	bhi.n	d0003666 <stbi__decode_jpeg_header+0x596>
d000361a:	f8d6 30ac 	ldr.w	r3, [r6, #172]	; 0xac
d000361e:	f8d6 20b0 	ldr.w	r2, [r6, #176]	; 0xb0
d0003622:	4293      	cmp	r3, r2
d0003624:	d312      	bcc.n	d000364c <stbi__decode_jpeg_header+0x57c>
d0003626:	6a33      	ldr	r3, [r6, #32]
d0003628:	2b00      	cmp	r3, #0
d000362a:	d13f      	bne.n	d00036ac <stbi__decode_jpeg_header+0x5dc>
d000362c:	f8c8 300c 	str.w	r3, [r8, #12]
d0003630:	3701      	adds	r7, #1
d0003632:	f108 0848 	add.w	r8, r8, #72	; 0x48
d0003636:	e7b5      	b.n	d00035a4 <stbi__decode_jpeg_header+0x4d4>
d0003638:	f817 100a 	ldrb.w	r1, [r7, sl]
d000363c:	4288      	cmp	r0, r1
d000363e:	d1c3      	bne.n	d00035c8 <stbi__decode_jpeg_header+0x4f8>
d0003640:	f244 70ec 	movw	r0, #18412	; 0x47ec
d0003644:	5821      	ldr	r1, [r4, r0]
d0003646:	3101      	adds	r1, #1
d0003648:	5021      	str	r1, [r4, r0]
d000364a:	e7bd      	b.n	d00035c8 <stbi__decode_jpeg_header+0x4f8>
d000364c:	1c5a      	adds	r2, r3, #1
d000364e:	f8c6 20ac 	str.w	r2, [r6, #172]	; 0xac
d0003652:	781a      	ldrb	r2, [r3, #0]
d0003654:	2a03      	cmp	r2, #3
d0003656:	f8c8 200c 	str.w	r2, [r8, #12]
d000365a:	dde9      	ble.n	d0003630 <stbi__decode_jpeg_header+0x560>
d000365c:	4b4a      	ldr	r3, [pc, #296]	; (d0003788 <stbi__decode_jpeg_header+0x6b8>)
d000365e:	2000      	movs	r0, #0
d0003660:	4a4e      	ldr	r2, [pc, #312]	; (d000379c <stbi__decode_jpeg_header+0x6cc>)
d0003662:	601a      	str	r2, [r3, #0]
d0003664:	e554      	b.n	d0003110 <stbi__decode_jpeg_header+0x40>
d0003666:	4b48      	ldr	r3, [pc, #288]	; (d0003788 <stbi__decode_jpeg_header+0x6b8>)
d0003668:	2000      	movs	r0, #0
d000366a:	4a4d      	ldr	r2, [pc, #308]	; (d00037a0 <stbi__decode_jpeg_header+0x6d0>)
d000366c:	601a      	str	r2, [r3, #0]
d000366e:	e54f      	b.n	d0003110 <stbi__decode_jpeg_header+0x40>
d0003670:	f106 0b28 	add.w	fp, r6, #40	; 0x28
d0003674:	6933      	ldr	r3, [r6, #16]
d0003676:	6a72      	ldr	r2, [r6, #36]	; 0x24
d0003678:	4659      	mov	r1, fp
d000367a:	69f0      	ldr	r0, [r6, #28]
d000367c:	4798      	blx	r3
d000367e:	f8d6 20ac 	ldr.w	r2, [r6, #172]	; 0xac
d0003682:	f8d6 10b4 	ldr.w	r1, [r6, #180]	; 0xb4
d0003686:	f8d6 30a8 	ldr.w	r3, [r6, #168]	; 0xa8
d000368a:	1a52      	subs	r2, r2, r1
d000368c:	4413      	add	r3, r2
d000368e:	f8c6 30a8 	str.w	r3, [r6, #168]	; 0xa8
d0003692:	bb40      	cbnz	r0, d00036e6 <stbi__decode_jpeg_header+0x616>
d0003694:	462b      	mov	r3, r5
d0003696:	6230      	str	r0, [r6, #32]
d0003698:	f886 0028 	strb.w	r0, [r6, #40]	; 0x28
d000369c:	462a      	mov	r2, r5
d000369e:	f896 0028 	ldrb.w	r0, [r6, #40]	; 0x28
d00036a2:	f8c6 30b0 	str.w	r3, [r6, #176]	; 0xb0
d00036a6:	f8c6 50ac 	str.w	r5, [r6, #172]	; 0xac
d00036aa:	e788      	b.n	d00035be <stbi__decode_jpeg_header+0x4ee>
d00036ac:	f106 0b28 	add.w	fp, r6, #40	; 0x28
d00036b0:	6933      	ldr	r3, [r6, #16]
d00036b2:	6a72      	ldr	r2, [r6, #36]	; 0x24
d00036b4:	4659      	mov	r1, fp
d00036b6:	69f0      	ldr	r0, [r6, #28]
d00036b8:	4798      	blx	r3
d00036ba:	f8d6 20ac 	ldr.w	r2, [r6, #172]	; 0xac
d00036be:	f8d6 10b4 	ldr.w	r1, [r6, #180]	; 0xb4
d00036c2:	f8d6 30a8 	ldr.w	r3, [r6, #168]	; 0xa8
d00036c6:	1a52      	subs	r2, r2, r1
d00036c8:	4413      	add	r3, r2
d00036ca:	f8c6 30a8 	str.w	r3, [r6, #168]	; 0xa8
d00036ce:	b968      	cbnz	r0, d00036ec <stbi__decode_jpeg_header+0x61c>
d00036d0:	462b      	mov	r3, r5
d00036d2:	6230      	str	r0, [r6, #32]
d00036d4:	f886 0028 	strb.w	r0, [r6, #40]	; 0x28
d00036d8:	f896 2028 	ldrb.w	r2, [r6, #40]	; 0x28
d00036dc:	f8c6 30b0 	str.w	r3, [r6, #176]	; 0xb0
d00036e0:	f8c6 50ac 	str.w	r5, [r6, #172]	; 0xac
d00036e4:	e7b6      	b.n	d0003654 <stbi__decode_jpeg_header+0x584>
d00036e6:	eb0b 0300 	add.w	r3, fp, r0
d00036ea:	e7d7      	b.n	d000369c <stbi__decode_jpeg_header+0x5cc>
d00036ec:	eb0b 0300 	add.w	r3, fp, r0
d00036f0:	e7f2      	b.n	d00036d8 <stbi__decode_jpeg_header+0x608>
d00036f2:	4440      	add	r0, r8
d00036f4:	f106 0229 	add.w	r2, r6, #41	; 0x29
d00036f8:	e723      	b.n	d0003542 <stbi__decode_jpeg_header+0x472>
d00036fa:	1c5a      	adds	r2, r3, #1
d00036fc:	f8c6 20ac 	str.w	r2, [r6, #172]	; 0xac
d0003700:	781b      	ldrb	r3, [r3, #0]
d0003702:	e724      	b.n	d000354e <stbi__decode_jpeg_header+0x47e>
d0003704:	464d      	mov	r5, r9
d0003706:	469b      	mov	fp, r3
d0003708:	2d00      	cmp	r5, #0
d000370a:	f47f adb8 	bne.w	d000327e <stbi__decode_jpeg_header+0x1ae>
d000370e:	f8d6 a000 	ldr.w	sl, [r6]
d0003712:	6871      	ldr	r1, [r6, #4]
d0003714:	f1ba 0f00 	cmp.w	sl, #0
d0003718:	f6ff aef0 	blt.w	d00034fc <stbi__decode_jpeg_header+0x42c>
d000371c:	2900      	cmp	r1, #0
d000371e:	f6ff aeed 	blt.w	d00034fc <stbi__decode_jpeg_header+0x42c>
d0003722:	b131      	cbz	r1, d0003732 <stbi__decode_jpeg_header+0x662>
d0003724:	f06f 4300 	mvn.w	r3, #2147483648	; 0x80000000
d0003728:	fb93 f3f1 	sdiv	r3, r3, r1
d000372c:	459a      	cmp	sl, r3
d000372e:	f73f aee5 	bgt.w	d00034fc <stbi__decode_jpeg_header+0x42c>
d0003732:	f1bb 0f00 	cmp.w	fp, #0
d0003736:	f6ff aee1 	blt.w	d00034fc <stbi__decode_jpeg_header+0x42c>
d000373a:	f000 80de 	beq.w	d00038fa <stbi__decode_jpeg_header+0x82a>
d000373e:	f06f 4300 	mvn.w	r3, #2147483648	; 0x80000000
d0003742:	fb01 f20a 	mul.w	r2, r1, sl
d0003746:	fb93 f3fb 	sdiv	r3, r3, fp
d000374a:	429a      	cmp	r2, r3
d000374c:	f73f aed6 	bgt.w	d00034fc <stbi__decode_jpeg_header+0x42c>
d0003750:	f244 66a0 	movw	r6, #18080	; 0x46a0
d0003754:	f04f 0801 	mov.w	r8, #1
d0003758:	2700      	movs	r7, #0
d000375a:	4426      	add	r6, r4
d000375c:	46c1      	mov	r9, r8
d000375e:	4630      	mov	r0, r6
d0003760:	e009      	b.n	d0003776 <stbi__decode_jpeg_header+0x6a6>
d0003762:	f850 2c48 	ldr.w	r2, [r0, #-72]
d0003766:	f850 3c44 	ldr.w	r3, [r0, #-68]
d000376a:	4591      	cmp	r9, r2
d000376c:	bfb8      	it	lt
d000376e:	4691      	movlt	r9, r2
d0003770:	4598      	cmp	r8, r3
d0003772:	bfb8      	it	lt
d0003774:	4698      	movlt	r8, r3
d0003776:	45bb      	cmp	fp, r7
d0003778:	f100 0048 	add.w	r0, r0, #72	; 0x48
d000377c:	f107 0701 	add.w	r7, r7, #1
d0003780:	d1ef      	bne.n	d0003762 <stbi__decode_jpeg_header+0x692>
d0003782:	2200      	movs	r2, #0
d0003784:	4633      	mov	r3, r6
d0003786:	e021      	b.n	d00037cc <stbi__decode_jpeg_header+0x6fc>
d0003788:	d000e928 	.word	0xd000e928
d000378c:	d000ddfc 	.word	0xd000ddfc
d0003790:	d000ddf0 	.word	0xd000ddf0
d0003794:	d000dde8 	.word	0xd000dde8
d0003798:	d000de10 	.word	0xd000de10
d000379c:	d000de20 	.word	0xd000de20
d00037a0:	d000de18 	.word	0xd000de18
d00037a4:	d000ded0 	.word	0xd000ded0
d00037a8:	681f      	ldr	r7, [r3, #0]
d00037aa:	3348      	adds	r3, #72	; 0x48
d00037ac:	fb99 f0f7 	sdiv	r0, r9, r7
d00037b0:	fb07 9010 	mls	r0, r7, r0, r9
d00037b4:	2800      	cmp	r0, #0
d00037b6:	f47f af13 	bne.w	d00035e0 <stbi__decode_jpeg_header+0x510>
d00037ba:	f8dc 7004 	ldr.w	r7, [ip, #4]
d00037be:	fb98 f0f7 	sdiv	r0, r8, r7
d00037c2:	fb07 8010 	mls	r0, r7, r0, r8
d00037c6:	2800      	cmp	r0, #0
d00037c8:	f47f af4d 	bne.w	d0003666 <stbi__decode_jpeg_header+0x596>
d00037cc:	4593      	cmp	fp, r2
d00037ce:	469c      	mov	ip, r3
d00037d0:	f102 0201 	add.w	r2, r2, #1
d00037d4:	d1e8      	bne.n	d00037a8 <stbi__decode_jpeg_header+0x6d8>
d00037d6:	ea4f 03c8 	mov.w	r3, r8, lsl #3
d00037da:	1e4a      	subs	r2, r1, #1
d00037dc:	ea4f 00c9 	mov.w	r0, r9, lsl #3
d00037e0:	f10a 3cff 	add.w	ip, sl, #4294967295	; 0xffffffff
d00037e4:	441a      	add	r2, r3
d00037e6:	f244 6794 	movw	r7, #18068	; 0x4694
d00037ea:	4484      	add	ip, r0
d00037ec:	9105      	str	r1, [sp, #20]
d00037ee:	51e0      	str	r0, [r4, r7]
d00037f0:	f244 678c 	movw	r7, #18060	; 0x468c
d00037f4:	9401      	str	r4, [sp, #4]
d00037f6:	fbb2 f2f3 	udiv	r2, r2, r3
d00037fa:	fbbc f0f0 	udiv	r0, ip, r0
d00037fe:	9202      	str	r2, [sp, #8]
d0003800:	f244 6298 	movw	r2, #18072	; 0x4698
d0003804:	51e0      	str	r0, [r4, r7]
d0003806:	f244 6790 	movw	r7, #18064	; 0x4690
d000380a:	50a3      	str	r3, [r4, r2]
d000380c:	f244 6388 	movw	r3, #18056	; 0x4688
d0003810:	9a02      	ldr	r2, [sp, #8]
d0003812:	9003      	str	r0, [sp, #12]
d0003814:	f244 6084 	movw	r0, #18052	; 0x4684
d0003818:	51e2      	str	r2, [r4, r7]
d000381a:	f244 72cc 	movw	r2, #18380	; 0x47cc
d000381e:	f844 9000 	str.w	r9, [r4, r0]
d0003822:	f844 8003 	str.w	r8, [r4, r3]
d0003826:	18a3      	adds	r3, r4, r2
d0003828:	9304      	str	r3, [sp, #16]
d000382a:	462b      	mov	r3, r5
d000382c:	4645      	mov	r5, r8
d000382e:	46c8      	mov	r8, r9
d0003830:	4699      	mov	r9, r3
d0003832:	45cb      	cmp	fp, r9
d0003834:	f43f ad23 	beq.w	d000327e <stbi__decode_jpeg_header+0x1ae>
d0003838:	6834      	ldr	r4, [r6, #0]
d000383a:	f108 30ff 	add.w	r0, r8, #4294967295	; 0xffffffff
d000383e:	6877      	ldr	r7, [r6, #4]
d0003840:	1e6b      	subs	r3, r5, #1
d0003842:	fb0a 0004 	mla	r0, sl, r4, r0
d0003846:	9a05      	ldr	r2, [sp, #20]
d0003848:	fbb0 f0f8 	udiv	r0, r0, r8
d000384c:	fb02 3307 	mla	r3, r2, r7, r3
d0003850:	9a03      	ldr	r2, [sp, #12]
d0003852:	61b0      	str	r0, [r6, #24]
d0003854:	2000      	movs	r0, #0
d0003856:	fb04 f402 	mul.w	r4, r4, r2
d000385a:	9a02      	ldr	r2, [sp, #8]
d000385c:	63b0      	str	r0, [r6, #56]	; 0x38
d000385e:	00e4      	lsls	r4, r4, #3
d0003860:	fb07 f702 	mul.w	r7, r7, r2
d0003864:	6330      	str	r0, [r6, #48]	; 0x30
d0003866:	00ff      	lsls	r7, r7, #3
d0003868:	4284      	cmp	r4, r0
d000386a:	6234      	str	r4, [r6, #32]
d000386c:	6277      	str	r7, [r6, #36]	; 0x24
d000386e:	6370      	str	r0, [r6, #52]	; 0x34
d0003870:	fbb3 f3f5 	udiv	r3, r3, r5
d0003874:	61f3      	str	r3, [r6, #28]
d0003876:	db5d      	blt.n	d0003934 <stbi__decode_jpeg_header+0x864>
d0003878:	ea5f 7cd7 	movs.w	ip, r7, lsr #31
d000387c:	d15a      	bne.n	d0003934 <stbi__decode_jpeg_header+0x864>
d000387e:	2f00      	cmp	r7, #0
d0003880:	d045      	beq.n	d000390e <stbi__decode_jpeg_header+0x83e>
d0003882:	f06f 4300 	mvn.w	r3, #2147483648	; 0x80000000
d0003886:	fb93 f3f7 	sdiv	r3, r3, r7
d000388a:	429c      	cmp	r4, r3
d000388c:	dc04      	bgt.n	d0003898 <stbi__decode_jpeg_header+0x7c8>
d000388e:	fb07 f004 	mul.w	r0, r7, r4
d0003892:	4b44      	ldr	r3, [pc, #272]	; (d00039a4 <stbi__decode_jpeg_header+0x8d4>)
d0003894:	4298      	cmp	r0, r3
d0003896:	dd3b      	ble.n	d0003910 <stbi__decode_jpeg_header+0x840>
d0003898:	9c01      	ldr	r4, [sp, #4]
d000389a:	2348      	movs	r3, #72	; 0x48
d000389c:	f244 62cc 	movw	r2, #18124	; 0x46cc
d00038a0:	464d      	mov	r5, r9
d00038a2:	fb03 4309 	mla	r3, r3, r9, r4
d00038a6:	f843 c002 	str.w	ip, [r3, r2]
d00038aa:	4b3f      	ldr	r3, [pc, #252]	; (d00039a8 <stbi__decode_jpeg_header+0x8d8>)
d00038ac:	1c69      	adds	r1, r5, #1
d00038ae:	4a3f      	ldr	r2, [pc, #252]	; (d00039ac <stbi__decode_jpeg_header+0x8dc>)
d00038b0:	4620      	mov	r0, r4
d00038b2:	601a      	str	r2, [r3, #0]
d00038b4:	f7fe f8bc 	bl	d0001a30 <stbi__free_jpeg_components.constprop.0>
d00038b8:	3800      	subs	r0, #0
d00038ba:	bf18      	it	ne
d00038bc:	2001      	movne	r0, #1
d00038be:	e427      	b.n	d0003110 <stbi__decode_jpeg_header+0x40>
d00038c0:	f106 0b28 	add.w	fp, r6, #40	; 0x28
d00038c4:	6933      	ldr	r3, [r6, #16]
d00038c6:	6a72      	ldr	r2, [r6, #36]	; 0x24
d00038c8:	4659      	mov	r1, fp
d00038ca:	69f0      	ldr	r0, [r6, #28]
d00038cc:	4798      	blx	r3
d00038ce:	f8d6 20ac 	ldr.w	r2, [r6, #172]	; 0xac
d00038d2:	f8d6 10b4 	ldr.w	r1, [r6, #180]	; 0xb4
d00038d6:	f8d6 30a8 	ldr.w	r3, [r6, #168]	; 0xa8
d00038da:	1a52      	subs	r2, r2, r1
d00038dc:	4413      	add	r3, r2
d00038de:	f8c6 30a8 	str.w	r3, [r6, #168]	; 0xa8
d00038e2:	b988      	cbnz	r0, d0003908 <stbi__decode_jpeg_header+0x838>
d00038e4:	462a      	mov	r2, r5
d00038e6:	6230      	str	r0, [r6, #32]
d00038e8:	f886 0028 	strb.w	r0, [r6, #40]	; 0x28
d00038ec:	f896 3028 	ldrb.w	r3, [r6, #40]	; 0x28
d00038f0:	f8c6 20b0 	str.w	r2, [r6, #176]	; 0xb0
d00038f4:	f8c6 50ac 	str.w	r5, [r6, #172]	; 0xac
d00038f8:	e681      	b.n	d00035fe <stbi__decode_jpeg_header+0x52e>
d00038fa:	f04f 0801 	mov.w	r8, #1
d00038fe:	f244 66a0 	movw	r6, #18080	; 0x46a0
d0003902:	46c1      	mov	r9, r8
d0003904:	4426      	add	r6, r4
d0003906:	e73c      	b.n	d0003782 <stbi__decode_jpeg_header+0x6b2>
d0003908:	eb0b 0200 	add.w	r2, fp, r0
d000390c:	e7ee      	b.n	d00038ec <stbi__decode_jpeg_header+0x81c>
d000390e:	4638      	mov	r0, r7
d0003910:	300f      	adds	r0, #15
d0003912:	f008 febd 	bl	d000c690 <malloc>
d0003916:	62f0      	str	r0, [r6, #44]	; 0x2c
d0003918:	2800      	cmp	r0, #0
d000391a:	d040      	beq.n	d000399e <stbi__decode_jpeg_header+0x8ce>
d000391c:	f100 030f 	add.w	r3, r0, #15
d0003920:	9a04      	ldr	r2, [sp, #16]
d0003922:	f023 030f 	bic.w	r3, r3, #15
d0003926:	6810      	ldr	r0, [r2, #0]
d0003928:	62b3      	str	r3, [r6, #40]	; 0x28
d000392a:	b968      	cbnz	r0, d0003948 <stbi__decode_jpeg_header+0x878>
d000392c:	f109 0901 	add.w	r9, r9, #1
d0003930:	3648      	adds	r6, #72	; 0x48
d0003932:	e77e      	b.n	d0003832 <stbi__decode_jpeg_header+0x762>
d0003934:	9c01      	ldr	r4, [sp, #4]
d0003936:	2348      	movs	r3, #72	; 0x48
d0003938:	f244 62cc 	movw	r2, #18124	; 0x46cc
d000393c:	2100      	movs	r1, #0
d000393e:	fb03 4309 	mla	r3, r3, r9, r4
d0003942:	464d      	mov	r5, r9
d0003944:	5099      	str	r1, [r3, r2]
d0003946:	e7b0      	b.n	d00038aa <stbi__decode_jpeg_header+0x7da>
d0003948:	10e0      	asrs	r0, r4, #3
d000394a:	10fb      	asrs	r3, r7, #3
d000394c:	63f0      	str	r0, [r6, #60]	; 0x3c
d000394e:	6433      	str	r3, [r6, #64]	; 0x40
d0003950:	b1cf      	cbz	r7, d0003986 <stbi__decode_jpeg_header+0x8b6>
d0003952:	f06f 4300 	mvn.w	r3, #2147483648	; 0x80000000
d0003956:	fb93 f3f7 	sdiv	r3, r3, r7
d000395a:	429c      	cmp	r4, r3
d000395c:	dc04      	bgt.n	d0003968 <stbi__decode_jpeg_header+0x898>
d000395e:	fb07 f304 	mul.w	r3, r7, r4
d0003962:	f1b3 4f80 	cmp.w	r3, #1073741824	; 0x40000000
d0003966:	db09      	blt.n	d000397c <stbi__decode_jpeg_header+0x8ac>
d0003968:	9c01      	ldr	r4, [sp, #4]
d000396a:	2348      	movs	r3, #72	; 0x48
d000396c:	f244 62d0 	movw	r2, #18128	; 0x46d0
d0003970:	2100      	movs	r1, #0
d0003972:	fb03 4309 	mla	r3, r3, r9, r4
d0003976:	464d      	mov	r5, r9
d0003978:	5099      	str	r1, [r3, r2]
d000397a:	e796      	b.n	d00038aa <stbi__decode_jpeg_header+0x7da>
d000397c:	4a09      	ldr	r2, [pc, #36]	; (d00039a4 <stbi__decode_jpeg_header+0x8d4>)
d000397e:	005f      	lsls	r7, r3, #1
d0003980:	ebb2 0f43 	cmp.w	r2, r3, lsl #1
d0003984:	dbf0      	blt.n	d0003968 <stbi__decode_jpeg_header+0x898>
d0003986:	f107 000f 	add.w	r0, r7, #15
d000398a:	f008 fe81 	bl	d000c690 <malloc>
d000398e:	6330      	str	r0, [r6, #48]	; 0x30
d0003990:	b128      	cbz	r0, d000399e <stbi__decode_jpeg_header+0x8ce>
d0003992:	f100 030f 	add.w	r3, r0, #15
d0003996:	f023 030f 	bic.w	r3, r3, #15
d000399a:	63b3      	str	r3, [r6, #56]	; 0x38
d000399c:	e7c6      	b.n	d000392c <stbi__decode_jpeg_header+0x85c>
d000399e:	9c01      	ldr	r4, [sp, #4]
d00039a0:	464d      	mov	r5, r9
d00039a2:	e782      	b.n	d00038aa <stbi__decode_jpeg_header+0x7da>
d00039a4:	7ffffff0 	.word	0x7ffffff0
d00039a8:	d000e928 	.word	0xd000e928
d00039ac:	d000de28 	.word	0xd000de28

d00039b0 <load_jpeg_image.constprop.0>:
d00039b0:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d00039b4:	ed2d 8b02 	vpush	{d8}
d00039b8:	b0c5      	sub	sp, #276	; 0x114
d00039ba:	2400      	movs	r4, #0
d00039bc:	931d      	str	r3, [sp, #116]	; 0x74
d00039be:	9b50      	ldr	r3, [sp, #320]	; 0x140
d00039c0:	911b      	str	r1, [sp, #108]	; 0x6c
d00039c2:	2b04      	cmp	r3, #4
d00039c4:	6801      	ldr	r1, [r0, #0]
d00039c6:	921c      	str	r2, [sp, #112]	; 0x70
d00039c8:	608c      	str	r4, [r1, #8]
d00039ca:	f200 82e4 	bhi.w	d0003f96 <load_jpeg_image.constprop.0+0x5e6>
d00039ce:	f244 63cc 	movw	r3, #18124	; 0x46cc
d00039d2:	f244 65d0 	movw	r5, #18128	; 0x46d0
d00039d6:	f244 7114 	movw	r1, #18196	; 0x4714
d00039da:	f244 7218 	movw	r2, #18200	; 0x4718
d00039de:	50c4      	str	r4, [r0, r3]
d00039e0:	f244 735c 	movw	r3, #18268	; 0x475c
d00039e4:	5144      	str	r4, [r0, r5]
d00039e6:	f244 7560 	movw	r5, #18272	; 0x4760
d00039ea:	5044      	str	r4, [r0, r1]
d00039ec:	f244 71a4 	movw	r1, #18340	; 0x47a4
d00039f0:	5084      	str	r4, [r0, r2]
d00039f2:	f244 72a8 	movw	r2, #18344	; 0x47a8
d00039f6:	50c4      	str	r4, [r0, r3]
d00039f8:	f644 0304 	movw	r3, #18436	; 0x4804
d00039fc:	5144      	str	r4, [r0, r5]
d00039fe:	4682      	mov	sl, r0
d0003a00:	5044      	str	r4, [r0, r1]
d0003a02:	4621      	mov	r1, r4
d0003a04:	5084      	str	r4, [r0, r2]
d0003a06:	50c4      	str	r4, [r0, r3]
d0003a08:	f7ff fb62 	bl	d00030d0 <stbi__decode_jpeg_header>
d0003a0c:	bb50      	cbnz	r0, d0003a64 <load_jpeg_image.constprop.0+0xb4>
d0003a0e:	f8da 3000 	ldr.w	r3, [sl]
d0003a12:	f8d3 c008 	ldr.w	ip, [r3, #8]
d0003a16:	f1bc 0f00 	cmp.w	ip, #0
d0003a1a:	dd1b      	ble.n	d0003a54 <load_jpeg_image.constprop.0+0xa4>
d0003a1c:	f244 64c8 	movw	r4, #18120	; 0x46c8
d0003a20:	eb0c 0ccc 	add.w	ip, ip, ip, lsl #3
d0003a24:	2500      	movs	r5, #0
d0003a26:	4454      	add	r4, sl
d0003a28:	eb04 06cc 	add.w	r6, r4, ip, lsl #3
d0003a2c:	6860      	ldr	r0, [r4, #4]
d0003a2e:	b118      	cbz	r0, d0003a38 <load_jpeg_image.constprop.0+0x88>
d0003a30:	f008 fe36 	bl	d000c6a0 <free>
d0003a34:	6065      	str	r5, [r4, #4]
d0003a36:	6025      	str	r5, [r4, #0]
d0003a38:	68a0      	ldr	r0, [r4, #8]
d0003a3a:	b118      	cbz	r0, d0003a44 <load_jpeg_image.constprop.0+0x94>
d0003a3c:	f008 fe30 	bl	d000c6a0 <free>
d0003a40:	60a5      	str	r5, [r4, #8]
d0003a42:	6125      	str	r5, [r4, #16]
d0003a44:	68e0      	ldr	r0, [r4, #12]
d0003a46:	b110      	cbz	r0, d0003a4e <load_jpeg_image.constprop.0+0x9e>
d0003a48:	f008 fe2a 	bl	d000c6a0 <free>
d0003a4c:	60e5      	str	r5, [r4, #12]
d0003a4e:	3448      	adds	r4, #72	; 0x48
d0003a50:	42b4      	cmp	r4, r6
d0003a52:	d1eb      	bne.n	d0003a2c <load_jpeg_image.constprop.0+0x7c>
d0003a54:	2300      	movs	r3, #0
d0003a56:	9308      	str	r3, [sp, #32]
d0003a58:	9808      	ldr	r0, [sp, #32]
d0003a5a:	b045      	add	sp, #276	; 0x114
d0003a5c:	ecbd 8b02 	vpop	{d8}
d0003a60:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0003a64:	f244 73c4 	movw	r3, #18372	; 0x47c4
d0003a68:	4650      	mov	r0, sl
d0003a6a:	4453      	add	r3, sl
d0003a6c:	4619      	mov	r1, r3
d0003a6e:	9305      	str	r3, [sp, #20]
d0003a70:	f7fe f86a 	bl	d0001b48 <stbi__get_marker.isra.0>
d0003a74:	4601      	mov	r1, r0
d0003a76:	e025      	b.n	d0003ac4 <load_jpeg_image.constprop.0+0x114>
d0003a78:	f8da 5000 	ldr.w	r5, [sl]
d0003a7c:	f8d5 20ac 	ldr.w	r2, [r5, #172]	; 0xac
d0003a80:	f8d5 60b0 	ldr.w	r6, [r5, #176]	; 0xb0
d0003a84:	42b2      	cmp	r2, r6
d0003a86:	f0c0 810e 	bcc.w	d0003ca6 <load_jpeg_image.constprop.0+0x2f6>
d0003a8a:	6a2c      	ldr	r4, [r5, #32]
d0003a8c:	2c00      	cmp	r4, #0
d0003a8e:	f040 82af 	bne.w	d0003ff0 <load_jpeg_image.constprop.0+0x640>
d0003a92:	f8d5 20ac 	ldr.w	r2, [r5, #172]	; 0xac
d0003a96:	f8d5 30b0 	ldr.w	r3, [r5, #176]	; 0xb0
d0003a9a:	429a      	cmp	r2, r3
d0003a9c:	f0c0 80f2 	bcc.w	d0003c84 <load_jpeg_image.constprop.0+0x2d4>
d0003aa0:	6a2e      	ldr	r6, [r5, #32]
d0003aa2:	2e00      	cmp	r6, #0
d0003aa4:	f040 82c4 	bne.w	d0004030 <load_jpeg_image.constprop.0+0x680>
d0003aa8:	2c04      	cmp	r4, #4
d0003aaa:	f041 834b 	bne.w	d0005144 <load_jpeg_image.constprop.0+0x1794>
d0003aae:	686b      	ldr	r3, [r5, #4]
d0003ab0:	429e      	cmp	r6, r3
d0003ab2:	f041 834e 	bne.w	d0005152 <load_jpeg_image.constprop.0+0x17a2>
d0003ab6:	9a05      	ldr	r2, [sp, #20]
d0003ab8:	7811      	ldrb	r1, [r2, #0]
d0003aba:	29ff      	cmp	r1, #255	; 0xff
d0003abc:	f000 8103 	beq.w	d0003cc6 <load_jpeg_image.constprop.0+0x316>
d0003ac0:	23ff      	movs	r3, #255	; 0xff
d0003ac2:	7013      	strb	r3, [r2, #0]
d0003ac4:	29d9      	cmp	r1, #217	; 0xd9
d0003ac6:	f000 8617 	beq.w	d00046f8 <load_jpeg_image.constprop.0+0xd48>
d0003aca:	29da      	cmp	r1, #218	; 0xda
d0003acc:	f000 80b8 	beq.w	d0003c40 <load_jpeg_image.constprop.0+0x290>
d0003ad0:	29dc      	cmp	r1, #220	; 0xdc
d0003ad2:	d0d1      	beq.n	d0003a78 <load_jpeg_image.constprop.0+0xc8>
d0003ad4:	4650      	mov	r0, sl
d0003ad6:	f7fe fc6f 	bl	d00023b8 <stbi__process_marker>
d0003ada:	b1b0      	cbz	r0, d0003b0a <load_jpeg_image.constprop.0+0x15a>
d0003adc:	9a05      	ldr	r2, [sp, #20]
d0003ade:	7811      	ldrb	r1, [r2, #0]
d0003ae0:	29ff      	cmp	r1, #255	; 0xff
d0003ae2:	d1ed      	bne.n	d0003ac0 <load_jpeg_image.constprop.0+0x110>
d0003ae4:	f8da 4000 	ldr.w	r4, [sl]
d0003ae8:	f8d4 30ac 	ldr.w	r3, [r4, #172]	; 0xac
d0003aec:	f8d4 20b0 	ldr.w	r2, [r4, #176]	; 0xb0
d0003af0:	4293      	cmp	r3, r2
d0003af2:	f0c0 81b5 	bcc.w	d0003e60 <load_jpeg_image.constprop.0+0x4b0>
d0003af6:	6a23      	ldr	r3, [r4, #32]
d0003af8:	2b00      	cmp	r3, #0
d0003afa:	f040 85dc 	bne.w	d00046b6 <load_jpeg_image.constprop.0+0xd06>
d0003afe:	21ff      	movs	r1, #255	; 0xff
d0003b00:	4650      	mov	r0, sl
d0003b02:	f7fe fc59 	bl	d00023b8 <stbi__process_marker>
d0003b06:	2800      	cmp	r0, #0
d0003b08:	d1e8      	bne.n	d0003adc <load_jpeg_image.constprop.0+0x12c>
d0003b0a:	f8da 4000 	ldr.w	r4, [sl]
d0003b0e:	68a3      	ldr	r3, [r4, #8]
d0003b10:	9304      	str	r3, [sp, #16]
d0003b12:	9b50      	ldr	r3, [sp, #320]	; 0x140
d0003b14:	b92b      	cbnz	r3, d0003b22 <load_jpeg_image.constprop.0+0x172>
d0003b16:	9b04      	ldr	r3, [sp, #16]
d0003b18:	2b02      	cmp	r3, #2
d0003b1a:	f340 85c8 	ble.w	d00046ae <load_jpeg_image.constprop.0+0xcfe>
d0003b1e:	2303      	movs	r3, #3
d0003b20:	9350      	str	r3, [sp, #320]	; 0x140
d0003b22:	9b04      	ldr	r3, [sp, #16]
d0003b24:	2b03      	cmp	r3, #3
d0003b26:	f000 852d 	beq.w	d0004584 <load_jpeg_image.constprop.0+0xbd4>
d0003b2a:	9b04      	ldr	r3, [sp, #16]
d0003b2c:	2b00      	cmp	r3, #0
d0003b2e:	dd91      	ble.n	d0003a54 <load_jpeg_image.constprop.0+0xa4>
d0003b30:	9306      	str	r3, [sp, #24]
d0003b32:	2300      	movs	r3, #0
d0003b34:	930a      	str	r3, [sp, #40]	; 0x28
d0003b36:	f244 6b84 	movw	fp, #18052	; 0x4684
d0003b3a:	2300      	movs	r3, #0
d0003b3c:	6825      	ldr	r5, [r4, #0]
d0003b3e:	f244 69a0 	movw	r9, #18080	; 0x46a0
d0003b42:	44d3      	add	fp, sl
d0003b44:	9405      	str	r4, [sp, #20]
d0003b46:	f105 0803 	add.w	r8, r5, #3
d0003b4a:	44d1      	add	r9, sl
d0003b4c:	465c      	mov	r4, fp
d0003b4e:	ae24      	add	r6, sp, #144	; 0x90
d0003b50:	469b      	mov	fp, r3
d0003b52:	9f06      	ldr	r7, [sp, #24]
d0003b54:	e9cd 3320 	strd	r3, r3, [sp, #128]	; 0x80
d0003b58:	e9cd 3322 	strd	r3, r3, [sp, #136]	; 0x88
d0003b5c:	e00b      	b.n	d0003b76 <load_jpeg_image.constprop.0+0x1c6>
d0003b5e:	2b02      	cmp	r3, #2
d0003b60:	f000 8317 	beq.w	d0004192 <load_jpeg_image.constprop.0+0x7e2>
d0003b64:	4bb9      	ldr	r3, [pc, #740]	; (d0003e4c <load_jpeg_image.constprop.0+0x49c>)
d0003b66:	6033      	str	r3, [r6, #0]
d0003b68:	f10b 0b01 	add.w	fp, fp, #1
d0003b6c:	f109 0948 	add.w	r9, r9, #72	; 0x48
d0003b70:	3620      	adds	r6, #32
d0003b72:	45bb      	cmp	fp, r7
d0003b74:	d037      	beq.n	d0003be6 <load_jpeg_image.constprop.0+0x236>
d0003b76:	4640      	mov	r0, r8
d0003b78:	f008 fd8a 	bl	d000c690 <malloc>
d0003b7c:	f8c9 0034 	str.w	r0, [r9, #52]	; 0x34
d0003b80:	2800      	cmp	r0, #0
d0003b82:	f001 8367 	beq.w	d0005254 <load_jpeg_image.constprop.0+0x18a4>
d0003b86:	6821      	ldr	r1, [r4, #0]
d0003b88:	f244 6c88 	movw	ip, #18056	; 0x4688
d0003b8c:	f8d9 3000 	ldr.w	r3, [r9]
d0003b90:	1e68      	subs	r0, r5, #1
d0003b92:	f85a 200c 	ldr.w	r2, [sl, ip]
d0003b96:	fb91 f3f3 	sdiv	r3, r1, r3
d0003b9a:	f8d9 1004 	ldr.w	r1, [r9, #4]
d0003b9e:	4418      	add	r0, r3
d0003ba0:	2b01      	cmp	r3, #1
d0003ba2:	60f3      	str	r3, [r6, #12]
d0003ba4:	fb92 f2f1 	sdiv	r2, r2, r1
d0003ba8:	fbb0 f0f3 	udiv	r0, r0, r3
d0003bac:	ea4f 0c62 	mov.w	ip, r2, asr #1
d0003bb0:	f04f 0100 	mov.w	r1, #0
d0003bb4:	6170      	str	r0, [r6, #20]
d0003bb6:	f8d9 0028 	ldr.w	r0, [r9, #40]	; 0x28
d0003bba:	6132      	str	r2, [r6, #16]
d0003bbc:	f8c6 c018 	str.w	ip, [r6, #24]
d0003bc0:	61f1      	str	r1, [r6, #28]
d0003bc2:	60b0      	str	r0, [r6, #8]
d0003bc4:	6070      	str	r0, [r6, #4]
d0003bc6:	d1ca      	bne.n	d0003b5e <load_jpeg_image.constprop.0+0x1ae>
d0003bc8:	2a01      	cmp	r2, #1
d0003bca:	f000 82ed 	beq.w	d00041a8 <load_jpeg_image.constprop.0+0x7f8>
d0003bce:	2a02      	cmp	r2, #2
d0003bd0:	d1c8      	bne.n	d0003b64 <load_jpeg_image.constprop.0+0x1b4>
d0003bd2:	f10b 0b01 	add.w	fp, fp, #1
d0003bd6:	4b9e      	ldr	r3, [pc, #632]	; (d0003e50 <load_jpeg_image.constprop.0+0x4a0>)
d0003bd8:	f109 0948 	add.w	r9, r9, #72	; 0x48
d0003bdc:	3620      	adds	r6, #32
d0003bde:	45bb      	cmp	fp, r7
d0003be0:	f846 3c20 	str.w	r3, [r6, #-32]
d0003be4:	d1c7      	bne.n	d0003b76 <load_jpeg_image.constprop.0+0x1c6>
d0003be6:	2d00      	cmp	r5, #0
d0003be8:	9c05      	ldr	r4, [sp, #20]
d0003bea:	db1a      	blt.n	d0003c22 <load_jpeg_image.constprop.0+0x272>
d0003bec:	d006      	beq.n	d0003bfc <load_jpeg_image.constprop.0+0x24c>
d0003bee:	f06f 4300 	mvn.w	r3, #2147483648	; 0x80000000
d0003bf2:	9a50      	ldr	r2, [sp, #320]	; 0x140
d0003bf4:	fb93 f3f5 	sdiv	r3, r3, r5
d0003bf8:	4293      	cmp	r3, r2
d0003bfa:	db12      	blt.n	d0003c22 <load_jpeg_image.constprop.0+0x272>
d0003bfc:	6866      	ldr	r6, [r4, #4]
d0003bfe:	2e00      	cmp	r6, #0
d0003c00:	db0f      	blt.n	d0003c22 <load_jpeg_image.constprop.0+0x272>
d0003c02:	9b50      	ldr	r3, [sp, #320]	; 0x140
d0003c04:	fb03 f005 	mul.w	r0, r3, r5
d0003c08:	f000 86ea 	beq.w	d00049e0 <load_jpeg_image.constprop.0+0x1030>
d0003c0c:	f06f 4300 	mvn.w	r3, #2147483648	; 0x80000000
d0003c10:	fb93 f2f6 	sdiv	r2, r3, r6
d0003c14:	4290      	cmp	r0, r2
d0003c16:	dc04      	bgt.n	d0003c22 <load_jpeg_image.constprop.0+0x272>
d0003c18:	fb00 f006 	mul.w	r0, r0, r6
d0003c1c:	4298      	cmp	r0, r3
d0003c1e:	f040 82d3 	bne.w	d00041c8 <load_jpeg_image.constprop.0+0x818>
d0003c22:	9904      	ldr	r1, [sp, #16]
d0003c24:	4650      	mov	r0, sl
d0003c26:	f7fd ff03 	bl	d0001a30 <stbi__free_jpeg_components.constprop.0>
d0003c2a:	2100      	movs	r1, #0
d0003c2c:	4b89      	ldr	r3, [pc, #548]	; (d0003e54 <load_jpeg_image.constprop.0+0x4a4>)
d0003c2e:	9108      	str	r1, [sp, #32]
d0003c30:	4a89      	ldr	r2, [pc, #548]	; (d0003e58 <load_jpeg_image.constprop.0+0x4a8>)
d0003c32:	9808      	ldr	r0, [sp, #32]
d0003c34:	601a      	str	r2, [r3, #0]
d0003c36:	b045      	add	sp, #276	; 0x114
d0003c38:	ecbd 8b02 	vpop	{d8}
d0003c3c:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0003c40:	f8da 5000 	ldr.w	r5, [sl]
d0003c44:	f8d5 20ac 	ldr.w	r2, [r5, #172]	; 0xac
d0003c48:	f8d5 30b0 	ldr.w	r3, [r5, #176]	; 0xb0
d0003c4c:	429a      	cmp	r2, r3
d0003c4e:	f0c0 80ec 	bcc.w	d0003e2a <load_jpeg_image.constprop.0+0x47a>
d0003c52:	6a2c      	ldr	r4, [r5, #32]
d0003c54:	2c00      	cmp	r4, #0
d0003c56:	f040 84de 	bne.w	d0004616 <load_jpeg_image.constprop.0+0xc66>
d0003c5a:	f8d5 30ac 	ldr.w	r3, [r5, #172]	; 0xac
d0003c5e:	462e      	mov	r6, r5
d0003c60:	f8d5 20b0 	ldr.w	r2, [r5, #176]	; 0xb0
d0003c64:	4293      	cmp	r3, r2
d0003c66:	d357      	bcc.n	d0003d18 <load_jpeg_image.constprop.0+0x368>
d0003c68:	6a2b      	ldr	r3, [r5, #32]
d0003c6a:	2b00      	cmp	r3, #0
d0003c6c:	f040 84ac 	bne.w	d00045c8 <load_jpeg_image.constprop.0+0xc18>
d0003c70:	f244 72f0 	movw	r2, #18416	; 0x47f0
d0003c74:	f8d5 c008 	ldr.w	ip, [r5, #8]
d0003c78:	f84a 3002 	str.w	r3, [sl, r2]
d0003c7c:	4b75      	ldr	r3, [pc, #468]	; (d0003e54 <load_jpeg_image.constprop.0+0x4a4>)
d0003c7e:	4a77      	ldr	r2, [pc, #476]	; (d0003e5c <load_jpeg_image.constprop.0+0x4ac>)
d0003c80:	601a      	str	r2, [r3, #0]
d0003c82:	e6c8      	b.n	d0003a16 <load_jpeg_image.constprop.0+0x66>
d0003c84:	1c51      	adds	r1, r2, #1
d0003c86:	f8c5 10ac 	str.w	r1, [r5, #172]	; 0xac
d0003c8a:	4299      	cmp	r1, r3
d0003c8c:	7816      	ldrb	r6, [r2, #0]
d0003c8e:	ea4f 2606 	mov.w	r6, r6, lsl #8
d0003c92:	f080 81f0 	bcs.w	d0004076 <load_jpeg_image.constprop.0+0x6c6>
d0003c96:	1c4b      	adds	r3, r1, #1
d0003c98:	f8c5 30ac 	str.w	r3, [r5, #172]	; 0xac
d0003c9c:	780b      	ldrb	r3, [r1, #0]
d0003c9e:	f8da 5000 	ldr.w	r5, [sl]
d0003ca2:	441e      	add	r6, r3
d0003ca4:	e700      	b.n	d0003aa8 <load_jpeg_image.constprop.0+0xf8>
d0003ca6:	1c51      	adds	r1, r2, #1
d0003ca8:	f8c5 10ac 	str.w	r1, [r5, #172]	; 0xac
d0003cac:	7814      	ldrb	r4, [r2, #0]
d0003cae:	0224      	lsls	r4, r4, #8
d0003cb0:	42b1      	cmp	r1, r6
d0003cb2:	f080 817a 	bcs.w	d0003faa <load_jpeg_image.constprop.0+0x5fa>
d0003cb6:	1c4b      	adds	r3, r1, #1
d0003cb8:	f8c5 30ac 	str.w	r3, [r5, #172]	; 0xac
d0003cbc:	780b      	ldrb	r3, [r1, #0]
d0003cbe:	f8da 5000 	ldr.w	r5, [sl]
d0003cc2:	441c      	add	r4, r3
d0003cc4:	e6e5      	b.n	d0003a92 <load_jpeg_image.constprop.0+0xe2>
d0003cc6:	f8d5 30ac 	ldr.w	r3, [r5, #172]	; 0xac
d0003cca:	f8d5 20b0 	ldr.w	r2, [r5, #176]	; 0xb0
d0003cce:	4293      	cmp	r3, r2
d0003cd0:	f0c0 81f4 	bcc.w	d00040bc <load_jpeg_image.constprop.0+0x70c>
d0003cd4:	6a2b      	ldr	r3, [r5, #32]
d0003cd6:	2b00      	cmp	r3, #0
d0003cd8:	f43f af11 	beq.w	d0003afe <load_jpeg_image.constprop.0+0x14e>
d0003cdc:	f105 0628 	add.w	r6, r5, #40	; 0x28
d0003ce0:	692b      	ldr	r3, [r5, #16]
d0003ce2:	6a6a      	ldr	r2, [r5, #36]	; 0x24
d0003ce4:	4631      	mov	r1, r6
d0003ce6:	69e8      	ldr	r0, [r5, #28]
d0003ce8:	4798      	blx	r3
d0003cea:	f8d5 20ac 	ldr.w	r2, [r5, #172]	; 0xac
d0003cee:	f8d5 40b4 	ldr.w	r4, [r5, #180]	; 0xb4
d0003cf2:	f8d5 30a8 	ldr.w	r3, [r5, #168]	; 0xa8
d0003cf6:	1b12      	subs	r2, r2, r4
d0003cf8:	4413      	add	r3, r2
d0003cfa:	f8c5 30a8 	str.w	r3, [r5, #168]	; 0xa8
d0003cfe:	2800      	cmp	r0, #0
d0003d00:	f040 8677 	bne.w	d00049f2 <load_jpeg_image.constprop.0+0x1042>
d0003d04:	f105 0329 	add.w	r3, r5, #41	; 0x29
d0003d08:	6228      	str	r0, [r5, #32]
d0003d0a:	f885 0028 	strb.w	r0, [r5, #40]	; 0x28
d0003d0e:	f8c5 30b0 	str.w	r3, [r5, #176]	; 0xb0
d0003d12:	f8c5 30ac 	str.w	r3, [r5, #172]	; 0xac
d0003d16:	e6f2      	b.n	d0003afe <load_jpeg_image.constprop.0+0x14e>
d0003d18:	1c5a      	adds	r2, r3, #1
d0003d1a:	f8c5 20ac 	str.w	r2, [r5, #172]	; 0xac
d0003d1e:	781b      	ldrb	r3, [r3, #0]
d0003d20:	1e5a      	subs	r2, r3, #1
d0003d22:	f244 71f0 	movw	r1, #18416	; 0x47f0
d0003d26:	2a03      	cmp	r2, #3
d0003d28:	f84a 3001 	str.w	r3, [sl, r1]
d0003d2c:	4451      	add	r1, sl
d0003d2e:	910d      	str	r1, [sp, #52]	; 0x34
d0003d30:	f200 846d 	bhi.w	d000460e <load_jpeg_image.constprop.0+0xc5e>
d0003d34:	f8d6 c008 	ldr.w	ip, [r6, #8]
d0003d38:	459c      	cmp	ip, r3
d0003d3a:	db9f      	blt.n	d0003c7c <load_jpeg_image.constprop.0+0x2cc>
d0003d3c:	1cda      	adds	r2, r3, #3
d0003d3e:	ebb4 0f42 	cmp.w	r4, r2, lsl #1
d0003d42:	f040 8124 	bne.w	d0003f8e <load_jpeg_image.constprop.0+0x5de>
d0003d46:	2b00      	cmp	r3, #0
d0003d48:	f000 85e2 	beq.w	d0004910 <load_jpeg_image.constprop.0+0xf60>
d0003d4c:	f244 75f4 	movw	r5, #18420	; 0x47f4
d0003d50:	2400      	movs	r4, #0
d0003d52:	4689      	mov	r9, r1
d0003d54:	f244 679c 	movw	r7, #18076	; 0x469c
d0003d58:	4455      	add	r5, sl
d0003d5a:	46a0      	mov	r8, r4
d0003d5c:	e04e      	b.n	d0003dfc <load_jpeg_image.constprop.0+0x44c>
d0003d5e:	6a34      	ldr	r4, [r6, #32]
d0003d60:	2c00      	cmp	r4, #0
d0003d62:	f040 80c4 	bne.w	d0003eee <load_jpeg_image.constprop.0+0x53e>
d0003d66:	4620      	mov	r0, r4
d0003d68:	4622      	mov	r2, r4
d0003d6a:	68b1      	ldr	r1, [r6, #8]
d0003d6c:	2900      	cmp	r1, #0
d0003d6e:	dd5a      	ble.n	d0003e26 <load_jpeg_image.constprop.0+0x476>
d0003d70:	f85a 3007 	ldr.w	r3, [sl, r7]
d0003d74:	429c      	cmp	r4, r3
d0003d76:	f000 84bc 	beq.w	d00046f2 <load_jpeg_image.constprop.0+0xd42>
d0003d7a:	2901      	cmp	r1, #1
d0003d7c:	f000 8105 	beq.w	d0003f8a <load_jpeg_image.constprop.0+0x5da>
d0003d80:	f244 63e4 	movw	r3, #18148	; 0x46e4
d0003d84:	f85a 3003 	ldr.w	r3, [sl, r3]
d0003d88:	429c      	cmp	r4, r3
d0003d8a:	f000 850d 	beq.w	d00047a8 <load_jpeg_image.constprop.0+0xdf8>
d0003d8e:	2902      	cmp	r1, #2
d0003d90:	f000 80fb 	beq.w	d0003f8a <load_jpeg_image.constprop.0+0x5da>
d0003d94:	f244 732c 	movw	r3, #18220	; 0x472c
d0003d98:	f85a 3003 	ldr.w	r3, [sl, r3]
d0003d9c:	42a3      	cmp	r3, r4
d0003d9e:	f000 8511 	beq.w	d00047c4 <load_jpeg_image.constprop.0+0xe14>
d0003da2:	2903      	cmp	r1, #3
d0003da4:	f000 80f1 	beq.w	d0003f8a <load_jpeg_image.constprop.0+0x5da>
d0003da8:	f244 7374 	movw	r3, #18292	; 0x4774
d0003dac:	f85a 3003 	ldr.w	r3, [sl, r3]
d0003db0:	42a3      	cmp	r3, r4
d0003db2:	f000 8594 	beq.w	d00048de <load_jpeg_image.constprop.0+0xf2e>
d0003db6:	2404      	movs	r4, #4
d0003db8:	42a1      	cmp	r1, r4
d0003dba:	f000 8602 	beq.w	d00049c2 <load_jpeg_image.constprop.0+0x1012>
d0003dbe:	1100      	asrs	r0, r0, #4
d0003dc0:	f244 6cac 	movw	ip, #18092	; 0x46ac
d0003dc4:	eb04 03c4 	add.w	r3, r4, r4, lsl #3
d0003dc8:	2803      	cmp	r0, #3
d0003dca:	eb0a 03c3 	add.w	r3, sl, r3, lsl #3
d0003dce:	f843 000c 	str.w	r0, [r3, ip]
d0003dd2:	f300 85f9 	bgt.w	d00049c8 <load_jpeg_image.constprop.0+0x1018>
d0003dd6:	f244 60b0 	movw	r0, #18096	; 0x46b0
d0003dda:	f002 0c0f 	and.w	ip, r2, #15
d0003dde:	f012 0f0c 	tst.w	r2, #12
d0003de2:	f843 c000 	str.w	ip, [r3, r0]
d0003de6:	f040 85f5 	bne.w	d00049d4 <load_jpeg_image.constprop.0+0x1024>
d0003dea:	f108 0801 	add.w	r8, r8, #1
d0003dee:	f845 4b04 	str.w	r4, [r5], #4
d0003df2:	f8d9 3000 	ldr.w	r3, [r9]
d0003df6:	4598      	cmp	r8, r3
d0003df8:	f280 858a 	bge.w	d0004910 <load_jpeg_image.constprop.0+0xf60>
d0003dfc:	f8d6 30ac 	ldr.w	r3, [r6, #172]	; 0xac
d0003e00:	f8d6 20b0 	ldr.w	r2, [r6, #176]	; 0xb0
d0003e04:	4293      	cmp	r3, r2
d0003e06:	d2aa      	bcs.n	d0003d5e <load_jpeg_image.constprop.0+0x3ae>
d0003e08:	1c59      	adds	r1, r3, #1
d0003e0a:	4291      	cmp	r1, r2
d0003e0c:	f8c6 10ac 	str.w	r1, [r6, #172]	; 0xac
d0003e10:	781c      	ldrb	r4, [r3, #0]
d0003e12:	f080 8094 	bcs.w	d0003f3e <load_jpeg_image.constprop.0+0x58e>
d0003e16:	1c4b      	adds	r3, r1, #1
d0003e18:	f8c6 30ac 	str.w	r3, [r6, #172]	; 0xac
d0003e1c:	780a      	ldrb	r2, [r1, #0]
d0003e1e:	68b1      	ldr	r1, [r6, #8]
d0003e20:	4610      	mov	r0, r2
d0003e22:	2900      	cmp	r1, #0
d0003e24:	dca4      	bgt.n	d0003d70 <load_jpeg_image.constprop.0+0x3c0>
d0003e26:	2400      	movs	r4, #0
d0003e28:	e7c6      	b.n	d0003db8 <load_jpeg_image.constprop.0+0x408>
d0003e2a:	1c51      	adds	r1, r2, #1
d0003e2c:	f8c5 10ac 	str.w	r1, [r5, #172]	; 0xac
d0003e30:	4299      	cmp	r1, r3
d0003e32:	7814      	ldrb	r4, [r2, #0]
d0003e34:	ea4f 2404 	mov.w	r4, r4, lsl #8
d0003e38:	f080 8412 	bcs.w	d0004660 <load_jpeg_image.constprop.0+0xcb0>
d0003e3c:	1c4b      	adds	r3, r1, #1
d0003e3e:	f8c5 30ac 	str.w	r3, [r5, #172]	; 0xac
d0003e42:	780b      	ldrb	r3, [r1, #0]
d0003e44:	f8da 5000 	ldr.w	r5, [sl]
d0003e48:	441c      	add	r4, r3
d0003e4a:	e706      	b.n	d0003c5a <load_jpeg_image.constprop.0+0x2aa>
d0003e4c:	d0001665 	.word	0xd0001665
d0003e50:	d00015ad 	.word	0xd00015ad
d0003e54:	d000e928 	.word	0xd000e928
d0003e58:	d000de28 	.word	0xd000de28
d0003e5c:	d000de44 	.word	0xd000de44
d0003e60:	1c5a      	adds	r2, r3, #1
d0003e62:	f8c4 20ac 	str.w	r2, [r4, #172]	; 0xac
d0003e66:	781b      	ldrb	r3, [r3, #0]
d0003e68:	2bff      	cmp	r3, #255	; 0xff
d0003e6a:	f47f ae48 	bne.w	d0003afe <load_jpeg_image.constprop.0+0x14e>
d0003e6e:	f8da 4000 	ldr.w	r4, [sl]
d0003e72:	f8d4 30ac 	ldr.w	r3, [r4, #172]	; 0xac
d0003e76:	f8d4 20b0 	ldr.w	r2, [r4, #176]	; 0xb0
d0003e7a:	4293      	cmp	r3, r2
d0003e7c:	d329      	bcc.n	d0003ed2 <load_jpeg_image.constprop.0+0x522>
d0003e7e:	6a21      	ldr	r1, [r4, #32]
d0003e80:	2900      	cmp	r1, #0
d0003e82:	f43f ae27 	beq.w	d0003ad4 <load_jpeg_image.constprop.0+0x124>
d0003e86:	f104 0528 	add.w	r5, r4, #40	; 0x28
d0003e8a:	6923      	ldr	r3, [r4, #16]
d0003e8c:	6a62      	ldr	r2, [r4, #36]	; 0x24
d0003e8e:	f104 0629 	add.w	r6, r4, #41	; 0x29
d0003e92:	4629      	mov	r1, r5
d0003e94:	69e0      	ldr	r0, [r4, #28]
d0003e96:	4798      	blx	r3
d0003e98:	f8d4 30ac 	ldr.w	r3, [r4, #172]	; 0xac
d0003e9c:	f8d4 20b4 	ldr.w	r2, [r4, #180]	; 0xb4
d0003ea0:	4405      	add	r5, r0
d0003ea2:	1a9a      	subs	r2, r3, r2
d0003ea4:	f8d4 30a8 	ldr.w	r3, [r4, #168]	; 0xa8
d0003ea8:	4413      	add	r3, r2
d0003eaa:	f8c4 30a8 	str.w	r3, [r4, #168]	; 0xa8
d0003eae:	b1a8      	cbz	r0, d0003edc <load_jpeg_image.constprop.0+0x52c>
d0003eb0:	f894 1028 	ldrb.w	r1, [r4, #40]	; 0x28
d0003eb4:	f8c4 50b0 	str.w	r5, [r4, #176]	; 0xb0
d0003eb8:	f8c4 60ac 	str.w	r6, [r4, #172]	; 0xac
d0003ebc:	29ff      	cmp	r1, #255	; 0xff
d0003ebe:	f47f ae01 	bne.w	d0003ac4 <load_jpeg_image.constprop.0+0x114>
d0003ec2:	f8da 4000 	ldr.w	r4, [sl]
d0003ec6:	f8d4 30ac 	ldr.w	r3, [r4, #172]	; 0xac
d0003eca:	f8d4 20b0 	ldr.w	r2, [r4, #176]	; 0xb0
d0003ece:	4293      	cmp	r3, r2
d0003ed0:	d2d5      	bcs.n	d0003e7e <load_jpeg_image.constprop.0+0x4ce>
d0003ed2:	1c5a      	adds	r2, r3, #1
d0003ed4:	f8c4 20ac 	str.w	r2, [r4, #172]	; 0xac
d0003ed8:	7819      	ldrb	r1, [r3, #0]
d0003eda:	e7ef      	b.n	d0003ebc <load_jpeg_image.constprop.0+0x50c>
d0003edc:	4601      	mov	r1, r0
d0003ede:	6220      	str	r0, [r4, #32]
d0003ee0:	f884 0028 	strb.w	r0, [r4, #40]	; 0x28
d0003ee4:	f8c4 60b0 	str.w	r6, [r4, #176]	; 0xb0
d0003ee8:	f8c4 60ac 	str.w	r6, [r4, #172]	; 0xac
d0003eec:	e5ea      	b.n	d0003ac4 <load_jpeg_image.constprop.0+0x114>
d0003eee:	f106 0b28 	add.w	fp, r6, #40	; 0x28
d0003ef2:	6933      	ldr	r3, [r6, #16]
d0003ef4:	6a72      	ldr	r2, [r6, #36]	; 0x24
d0003ef6:	4659      	mov	r1, fp
d0003ef8:	69f0      	ldr	r0, [r6, #28]
d0003efa:	4798      	blx	r3
d0003efc:	f8d6 20ac 	ldr.w	r2, [r6, #172]	; 0xac
d0003f00:	f8d6 10b4 	ldr.w	r1, [r6, #180]	; 0xb4
d0003f04:	4604      	mov	r4, r0
d0003f06:	f8d6 30a8 	ldr.w	r3, [r6, #168]	; 0xa8
d0003f0a:	1a52      	subs	r2, r2, r1
d0003f0c:	4413      	add	r3, r2
d0003f0e:	f8c6 30a8 	str.w	r3, [r6, #168]	; 0xa8
d0003f12:	2800      	cmp	r0, #0
d0003f14:	f000 811a 	beq.w	d000414c <load_jpeg_image.constprop.0+0x79c>
d0003f18:	eb0b 0300 	add.w	r3, fp, r0
d0003f1c:	f106 0229 	add.w	r2, r6, #41	; 0x29
d0003f20:	f896 4028 	ldrb.w	r4, [r6, #40]	; 0x28
d0003f24:	f8c6 20ac 	str.w	r2, [r6, #172]	; 0xac
d0003f28:	f8c6 30b0 	str.w	r3, [r6, #176]	; 0xb0
d0003f2c:	f8da 6000 	ldr.w	r6, [sl]
d0003f30:	f8d6 10ac 	ldr.w	r1, [r6, #172]	; 0xac
d0003f34:	f8d6 20b0 	ldr.w	r2, [r6, #176]	; 0xb0
d0003f38:	4291      	cmp	r1, r2
d0003f3a:	f4ff af6c 	bcc.w	d0003e16 <load_jpeg_image.constprop.0+0x466>
d0003f3e:	6a30      	ldr	r0, [r6, #32]
d0003f40:	2800      	cmp	r0, #0
d0003f42:	f001 8574 	beq.w	d0005a2e <load_jpeg_image.constprop.0+0x207e>
d0003f46:	f106 0b28 	add.w	fp, r6, #40	; 0x28
d0003f4a:	6933      	ldr	r3, [r6, #16]
d0003f4c:	6a72      	ldr	r2, [r6, #36]	; 0x24
d0003f4e:	4659      	mov	r1, fp
d0003f50:	69f0      	ldr	r0, [r6, #28]
d0003f52:	4798      	blx	r3
d0003f54:	f8d6 20ac 	ldr.w	r2, [r6, #172]	; 0xac
d0003f58:	f8d6 10b4 	ldr.w	r1, [r6, #180]	; 0xb4
d0003f5c:	f8d6 30a8 	ldr.w	r3, [r6, #168]	; 0xa8
d0003f60:	1a52      	subs	r2, r2, r1
d0003f62:	4413      	add	r3, r2
d0003f64:	f8c6 30a8 	str.w	r3, [r6, #168]	; 0xa8
d0003f68:	2800      	cmp	r0, #0
d0003f6a:	f000 80e7 	beq.w	d000413c <load_jpeg_image.constprop.0+0x78c>
d0003f6e:	f896 2028 	ldrb.w	r2, [r6, #40]	; 0x28
d0003f72:	eb0b 0300 	add.w	r3, fp, r0
d0003f76:	f106 0129 	add.w	r1, r6, #41	; 0x29
d0003f7a:	4610      	mov	r0, r2
d0003f7c:	f8c6 30b0 	str.w	r3, [r6, #176]	; 0xb0
d0003f80:	f8c6 10ac 	str.w	r1, [r6, #172]	; 0xac
d0003f84:	f8da 6000 	ldr.w	r6, [sl]
d0003f88:	e6ef      	b.n	d0003d6a <load_jpeg_image.constprop.0+0x3ba>
d0003f8a:	460c      	mov	r4, r1
d0003f8c:	e714      	b.n	d0003db8 <load_jpeg_image.constprop.0+0x408>
d0003f8e:	4b89      	ldr	r3, [pc, #548]	; (d00041b4 <load_jpeg_image.constprop.0+0x804>)
d0003f90:	4a89      	ldr	r2, [pc, #548]	; (d00041b8 <load_jpeg_image.constprop.0+0x808>)
d0003f92:	601a      	str	r2, [r3, #0]
d0003f94:	e53f      	b.n	d0003a16 <load_jpeg_image.constprop.0+0x66>
d0003f96:	4b87      	ldr	r3, [pc, #540]	; (d00041b4 <load_jpeg_image.constprop.0+0x804>)
d0003f98:	4a88      	ldr	r2, [pc, #544]	; (d00041bc <load_jpeg_image.constprop.0+0x80c>)
d0003f9a:	9408      	str	r4, [sp, #32]
d0003f9c:	601a      	str	r2, [r3, #0]
d0003f9e:	9808      	ldr	r0, [sp, #32]
d0003fa0:	b045      	add	sp, #276	; 0x114
d0003fa2:	ecbd 8b02 	vpop	{d8}
d0003fa6:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0003faa:	6a2b      	ldr	r3, [r5, #32]
d0003fac:	b1eb      	cbz	r3, d0003fea <load_jpeg_image.constprop.0+0x63a>
d0003fae:	f105 0728 	add.w	r7, r5, #40	; 0x28
d0003fb2:	692b      	ldr	r3, [r5, #16]
d0003fb4:	6a6a      	ldr	r2, [r5, #36]	; 0x24
d0003fb6:	4639      	mov	r1, r7
d0003fb8:	69e8      	ldr	r0, [r5, #28]
d0003fba:	4798      	blx	r3
d0003fbc:	f8d5 20ac 	ldr.w	r2, [r5, #172]	; 0xac
d0003fc0:	f8d5 60b4 	ldr.w	r6, [r5, #180]	; 0xb4
d0003fc4:	f8d5 30a8 	ldr.w	r3, [r5, #168]	; 0xa8
d0003fc8:	1b92      	subs	r2, r2, r6
d0003fca:	4413      	add	r3, r2
d0003fcc:	f8c5 30a8 	str.w	r3, [r5, #168]	; 0xa8
d0003fd0:	2800      	cmp	r0, #0
d0003fd2:	f000 80d7 	beq.w	d0004184 <load_jpeg_image.constprop.0+0x7d4>
d0003fd6:	f895 2028 	ldrb.w	r2, [r5, #40]	; 0x28
d0003fda:	4407      	add	r7, r0
d0003fdc:	f105 0329 	add.w	r3, r5, #41	; 0x29
d0003fe0:	4414      	add	r4, r2
d0003fe2:	f8c5 70b0 	str.w	r7, [r5, #176]	; 0xb0
d0003fe6:	f8c5 30ac 	str.w	r3, [r5, #172]	; 0xac
d0003fea:	f8da 5000 	ldr.w	r5, [sl]
d0003fee:	e550      	b.n	d0003a92 <load_jpeg_image.constprop.0+0xe2>
d0003ff0:	f105 0628 	add.w	r6, r5, #40	; 0x28
d0003ff4:	692b      	ldr	r3, [r5, #16]
d0003ff6:	6a6a      	ldr	r2, [r5, #36]	; 0x24
d0003ff8:	4631      	mov	r1, r6
d0003ffa:	69e8      	ldr	r0, [r5, #28]
d0003ffc:	4798      	blx	r3
d0003ffe:	f8d5 30ac 	ldr.w	r3, [r5, #172]	; 0xac
d0004002:	f8d5 10b4 	ldr.w	r1, [r5, #180]	; 0xb4
d0004006:	4604      	mov	r4, r0
d0004008:	f8d5 20a8 	ldr.w	r2, [r5, #168]	; 0xa8
d000400c:	1a5b      	subs	r3, r3, r1
d000400e:	4413      	add	r3, r2
d0004010:	f8c5 30a8 	str.w	r3, [r5, #168]	; 0xa8
d0004014:	2800      	cmp	r0, #0
d0004016:	f000 80ae 	beq.w	d0004176 <load_jpeg_image.constprop.0+0x7c6>
d000401a:	f895 2028 	ldrb.w	r2, [r5, #40]	; 0x28
d000401e:	4406      	add	r6, r0
d0004020:	f105 0129 	add.w	r1, r5, #41	; 0x29
d0004024:	0214      	lsls	r4, r2, #8
d0004026:	f8c5 60b0 	str.w	r6, [r5, #176]	; 0xb0
d000402a:	f8c5 10ac 	str.w	r1, [r5, #172]	; 0xac
d000402e:	e63f      	b.n	d0003cb0 <load_jpeg_image.constprop.0+0x300>
d0004030:	f105 0828 	add.w	r8, r5, #40	; 0x28
d0004034:	692e      	ldr	r6, [r5, #16]
d0004036:	6a6a      	ldr	r2, [r5, #36]	; 0x24
d0004038:	4641      	mov	r1, r8
d000403a:	69e8      	ldr	r0, [r5, #28]
d000403c:	47b0      	blx	r6
d000403e:	f8d5 70ac 	ldr.w	r7, [r5, #172]	; 0xac
d0004042:	f8d5 30b4 	ldr.w	r3, [r5, #180]	; 0xb4
d0004046:	4606      	mov	r6, r0
d0004048:	f8d5 20a8 	ldr.w	r2, [r5, #168]	; 0xa8
d000404c:	1aff      	subs	r7, r7, r3
d000404e:	443a      	add	r2, r7
d0004050:	f8c5 20a8 	str.w	r2, [r5, #168]	; 0xa8
d0004054:	2800      	cmp	r0, #0
d0004056:	f000 8087 	beq.w	d0004168 <load_jpeg_image.constprop.0+0x7b8>
d000405a:	f895 2028 	ldrb.w	r2, [r5, #40]	; 0x28
d000405e:	eb08 0300 	add.w	r3, r8, r0
d0004062:	f105 0129 	add.w	r1, r5, #41	; 0x29
d0004066:	0216      	lsls	r6, r2, #8
d0004068:	4299      	cmp	r1, r3
d000406a:	f8c5 30b0 	str.w	r3, [r5, #176]	; 0xb0
d000406e:	f8c5 10ac 	str.w	r1, [r5, #172]	; 0xac
d0004072:	f4ff ae10 	bcc.w	d0003c96 <load_jpeg_image.constprop.0+0x2e6>
d0004076:	6a2b      	ldr	r3, [r5, #32]
d0004078:	b1eb      	cbz	r3, d00040b6 <load_jpeg_image.constprop.0+0x706>
d000407a:	f105 0828 	add.w	r8, r5, #40	; 0x28
d000407e:	692b      	ldr	r3, [r5, #16]
d0004080:	6a6a      	ldr	r2, [r5, #36]	; 0x24
d0004082:	4641      	mov	r1, r8
d0004084:	69e8      	ldr	r0, [r5, #28]
d0004086:	4798      	blx	r3
d0004088:	f8d5 20ac 	ldr.w	r2, [r5, #172]	; 0xac
d000408c:	f8d5 70b4 	ldr.w	r7, [r5, #180]	; 0xb4
d0004090:	f8d5 30a8 	ldr.w	r3, [r5, #168]	; 0xa8
d0004094:	1bd2      	subs	r2, r2, r7
d0004096:	4413      	add	r3, r2
d0004098:	f8c5 30a8 	str.w	r3, [r5, #168]	; 0xa8
d000409c:	2800      	cmp	r0, #0
d000409e:	d05c      	beq.n	d000415a <load_jpeg_image.constprop.0+0x7aa>
d00040a0:	f895 1028 	ldrb.w	r1, [r5, #40]	; 0x28
d00040a4:	eb08 0300 	add.w	r3, r8, r0
d00040a8:	f105 0229 	add.w	r2, r5, #41	; 0x29
d00040ac:	440e      	add	r6, r1
d00040ae:	f8c5 30b0 	str.w	r3, [r5, #176]	; 0xb0
d00040b2:	f8c5 20ac 	str.w	r2, [r5, #172]	; 0xac
d00040b6:	f8da 5000 	ldr.w	r5, [sl]
d00040ba:	e4f5      	b.n	d0003aa8 <load_jpeg_image.constprop.0+0xf8>
d00040bc:	1c5a      	adds	r2, r3, #1
d00040be:	f8c5 20ac 	str.w	r2, [r5, #172]	; 0xac
d00040c2:	781b      	ldrb	r3, [r3, #0]
d00040c4:	2bff      	cmp	r3, #255	; 0xff
d00040c6:	f47f ad1a 	bne.w	d0003afe <load_jpeg_image.constprop.0+0x14e>
d00040ca:	f8da 4000 	ldr.w	r4, [sl]
d00040ce:	f8d4 30ac 	ldr.w	r3, [r4, #172]	; 0xac
d00040d2:	f8d4 20b0 	ldr.w	r2, [r4, #176]	; 0xb0
d00040d6:	4293      	cmp	r3, r2
d00040d8:	d32b      	bcc.n	d0004132 <load_jpeg_image.constprop.0+0x782>
d00040da:	6a21      	ldr	r1, [r4, #32]
d00040dc:	2900      	cmp	r1, #0
d00040de:	f43f acf9 	beq.w	d0003ad4 <load_jpeg_image.constprop.0+0x124>
d00040e2:	f104 0528 	add.w	r5, r4, #40	; 0x28
d00040e6:	6923      	ldr	r3, [r4, #16]
d00040e8:	6a62      	ldr	r2, [r4, #36]	; 0x24
d00040ea:	f104 0629 	add.w	r6, r4, #41	; 0x29
d00040ee:	4629      	mov	r1, r5
d00040f0:	69e0      	ldr	r0, [r4, #28]
d00040f2:	4798      	blx	r3
d00040f4:	f8d4 30ac 	ldr.w	r3, [r4, #172]	; 0xac
d00040f8:	f8d4 20b4 	ldr.w	r2, [r4, #180]	; 0xb4
d00040fc:	4405      	add	r5, r0
d00040fe:	1a9a      	subs	r2, r3, r2
d0004100:	f8d4 30a8 	ldr.w	r3, [r4, #168]	; 0xa8
d0004104:	4413      	add	r3, r2
d0004106:	f8c4 30a8 	str.w	r3, [r4, #168]	; 0xa8
d000410a:	2800      	cmp	r0, #0
d000410c:	f43f aee6 	beq.w	d0003edc <load_jpeg_image.constprop.0+0x52c>
d0004110:	f894 1028 	ldrb.w	r1, [r4, #40]	; 0x28
d0004114:	f8c4 50b0 	str.w	r5, [r4, #176]	; 0xb0
d0004118:	f8c4 60ac 	str.w	r6, [r4, #172]	; 0xac
d000411c:	29ff      	cmp	r1, #255	; 0xff
d000411e:	f47f acd1 	bne.w	d0003ac4 <load_jpeg_image.constprop.0+0x114>
d0004122:	f8da 4000 	ldr.w	r4, [sl]
d0004126:	f8d4 30ac 	ldr.w	r3, [r4, #172]	; 0xac
d000412a:	f8d4 20b0 	ldr.w	r2, [r4, #176]	; 0xb0
d000412e:	4293      	cmp	r3, r2
d0004130:	d2d3      	bcs.n	d00040da <load_jpeg_image.constprop.0+0x72a>
d0004132:	1c5a      	adds	r2, r3, #1
d0004134:	f8c4 20ac 	str.w	r2, [r4, #172]	; 0xac
d0004138:	7819      	ldrb	r1, [r3, #0]
d000413a:	e7ef      	b.n	d000411c <load_jpeg_image.constprop.0+0x76c>
d000413c:	f106 0329 	add.w	r3, r6, #41	; 0x29
d0004140:	4602      	mov	r2, r0
d0004142:	6230      	str	r0, [r6, #32]
d0004144:	4619      	mov	r1, r3
d0004146:	f886 0028 	strb.w	r0, [r6, #40]	; 0x28
d000414a:	e717      	b.n	d0003f7c <load_jpeg_image.constprop.0+0x5cc>
d000414c:	f106 0329 	add.w	r3, r6, #41	; 0x29
d0004150:	6230      	str	r0, [r6, #32]
d0004152:	f886 0028 	strb.w	r0, [r6, #40]	; 0x28
d0004156:	461a      	mov	r2, r3
d0004158:	e6e4      	b.n	d0003f24 <load_jpeg_image.constprop.0+0x574>
d000415a:	f105 0329 	add.w	r3, r5, #41	; 0x29
d000415e:	6228      	str	r0, [r5, #32]
d0004160:	f885 0028 	strb.w	r0, [r5, #40]	; 0x28
d0004164:	461a      	mov	r2, r3
d0004166:	e7a2      	b.n	d00040ae <load_jpeg_image.constprop.0+0x6fe>
d0004168:	f105 0329 	add.w	r3, r5, #41	; 0x29
d000416c:	6228      	str	r0, [r5, #32]
d000416e:	f885 0028 	strb.w	r0, [r5, #40]	; 0x28
d0004172:	4619      	mov	r1, r3
d0004174:	e778      	b.n	d0004068 <load_jpeg_image.constprop.0+0x6b8>
d0004176:	f105 0629 	add.w	r6, r5, #41	; 0x29
d000417a:	6228      	str	r0, [r5, #32]
d000417c:	f885 0028 	strb.w	r0, [r5, #40]	; 0x28
d0004180:	4631      	mov	r1, r6
d0004182:	e750      	b.n	d0004026 <load_jpeg_image.constprop.0+0x676>
d0004184:	f105 0729 	add.w	r7, r5, #41	; 0x29
d0004188:	6228      	str	r0, [r5, #32]
d000418a:	f885 0028 	strb.w	r0, [r5, #40]	; 0x28
d000418e:	463b      	mov	r3, r7
d0004190:	e727      	b.n	d0003fe2 <load_jpeg_image.constprop.0+0x632>
d0004192:	2a01      	cmp	r2, #1
d0004194:	d00b      	beq.n	d00041ae <load_jpeg_image.constprop.0+0x7fe>
d0004196:	2a02      	cmp	r2, #2
d0004198:	f47f ace4 	bne.w	d0003b64 <load_jpeg_image.constprop.0+0x1b4>
d000419c:	f644 0314 	movw	r3, #18452	; 0x4814
d00041a0:	f85a 3003 	ldr.w	r3, [sl, r3]
d00041a4:	6033      	str	r3, [r6, #0]
d00041a6:	e4df      	b.n	d0003b68 <load_jpeg_image.constprop.0+0x1b8>
d00041a8:	4b05      	ldr	r3, [pc, #20]	; (d00041c0 <load_jpeg_image.constprop.0+0x810>)
d00041aa:	6033      	str	r3, [r6, #0]
d00041ac:	e4dc      	b.n	d0003b68 <load_jpeg_image.constprop.0+0x1b8>
d00041ae:	4b05      	ldr	r3, [pc, #20]	; (d00041c4 <load_jpeg_image.constprop.0+0x814>)
d00041b0:	6033      	str	r3, [r6, #0]
d00041b2:	e4d9      	b.n	d0003b68 <load_jpeg_image.constprop.0+0x1b8>
d00041b4:	d000e928 	.word	0xd000e928
d00041b8:	d000de5c 	.word	0xd000de5c
d00041bc:	d000de34 	.word	0xd000de34
d00041c0:	d00015a9 	.word	0xd00015a9
d00041c4:	d0001879 	.word	0xd0001879
d00041c8:	3001      	adds	r0, #1
d00041ca:	f008 fa61 	bl	d000c690 <malloc>
d00041ce:	9008      	str	r0, [sp, #32]
d00041d0:	2800      	cmp	r0, #0
d00041d2:	f43f ad26 	beq.w	d0003c22 <load_jpeg_image.constprop.0+0x272>
d00041d6:	2300      	movs	r3, #0
d00041d8:	f244 62bc 	movw	r2, #18108	; 0x46bc
d00041dc:	9906      	ldr	r1, [sp, #24]
d00041de:	a824      	add	r0, sp, #144	; 0x90
d00041e0:	9305      	str	r3, [sp, #20]
d00041e2:	9306      	str	r3, [sp, #24]
d00041e4:	eb0a 0302 	add.w	r3, sl, r2
d00041e8:	eb00 1141 	add.w	r1, r0, r1, lsl #5
d00041ec:	f8cd a01c 	str.w	sl, [sp, #28]
d00041f0:	9309      	str	r3, [sp, #36]	; 0x24
d00041f2:	9b05      	ldr	r3, [sp, #20]
d00041f4:	9104      	str	r1, [sp, #16]
d00041f6:	9a08      	ldr	r2, [sp, #32]
d00041f8:	f10d 0a80 	add.w	sl, sp, #128	; 0x80
d00041fc:	9f09      	ldr	r7, [sp, #36]	; 0x24
d00041fe:	ac24      	add	r4, sp, #144	; 0x90
d0004200:	fb05 2503 	mla	r5, r5, r3, r2
d0004204:	46ab      	mov	fp, r5
d0004206:	69a6      	ldr	r6, [r4, #24]
d0004208:	f8d4 8010 	ldr.w	r8, [r4, #16]
d000420c:	6861      	ldr	r1, [r4, #4]
d000420e:	ebb6 0f68 	cmp.w	r6, r8, asr #1
d0004212:	68a5      	ldr	r5, [r4, #8]
d0004214:	68e3      	ldr	r3, [r4, #12]
d0004216:	f106 0601 	add.w	r6, r6, #1
d000421a:	460a      	mov	r2, r1
d000421c:	f8d4 9000 	ldr.w	r9, [r4]
d0004220:	69b8      	ldr	r0, [r7, #24]
d0004222:	bfac      	ite	ge
d0004224:	4629      	movge	r1, r5
d0004226:	462a      	movlt	r2, r5
d0004228:	9300      	str	r3, [sp, #0]
d000422a:	6963      	ldr	r3, [r4, #20]
d000422c:	47c8      	blx	r9
d000422e:	45b0      	cmp	r8, r6
d0004230:	f84a 0b04 	str.w	r0, [sl], #4
d0004234:	dd38      	ble.n	d00042a8 <load_jpeg_image.constprop.0+0x8f8>
d0004236:	61a6      	str	r6, [r4, #24]
d0004238:	3420      	adds	r4, #32
d000423a:	9b04      	ldr	r3, [sp, #16]
d000423c:	3748      	adds	r7, #72	; 0x48
d000423e:	429c      	cmp	r4, r3
d0004240:	d1e1      	bne.n	d0004206 <load_jpeg_image.constprop.0+0x856>
d0004242:	9b50      	ldr	r3, [sp, #320]	; 0x140
d0004244:	465d      	mov	r5, fp
d0004246:	2b02      	cmp	r3, #2
d0004248:	dd3b      	ble.n	d00042c2 <load_jpeg_image.constprop.0+0x912>
d000424a:	9b07      	ldr	r3, [sp, #28]
d000424c:	9920      	ldr	r1, [sp, #128]	; 0x80
d000424e:	681c      	ldr	r4, [r3, #0]
d0004250:	68a3      	ldr	r3, [r4, #8]
d0004252:	2b03      	cmp	r3, #3
d0004254:	f000 8086 	beq.w	d0004364 <load_jpeg_image.constprop.0+0x9b4>
d0004258:	2b04      	cmp	r3, #4
d000425a:	f040 80a5 	bne.w	d00043a8 <load_jpeg_image.constprop.0+0x9f8>
d000425e:	f244 73e8 	movw	r3, #18408	; 0x47e8
d0004262:	9a07      	ldr	r2, [sp, #28]
d0004264:	58d3      	ldr	r3, [r2, r3]
d0004266:	2b00      	cmp	r3, #0
d0004268:	f000 8152 	beq.w	d0004510 <load_jpeg_image.constprop.0+0xb60>
d000426c:	2b02      	cmp	r3, #2
d000426e:	f000 82f4 	beq.w	d000485a <load_jpeg_image.constprop.0+0xeaa>
d0004272:	9b50      	ldr	r3, [sp, #320]	; 0x140
d0004274:	f644 0210 	movw	r2, #18448	; 0x4810
d0004278:	4628      	mov	r0, r5
d000427a:	9d07      	ldr	r5, [sp, #28]
d000427c:	9301      	str	r3, [sp, #4]
d000427e:	6823      	ldr	r3, [r4, #0]
d0004280:	58ac      	ldr	r4, [r5, r2]
d0004282:	9300      	str	r3, [sp, #0]
d0004284:	9a21      	ldr	r2, [sp, #132]	; 0x84
d0004286:	9b22      	ldr	r3, [sp, #136]	; 0x88
d0004288:	47a0      	blx	r4
d000428a:	682c      	ldr	r4, [r5, #0]
d000428c:	9b06      	ldr	r3, [sp, #24]
d000428e:	9a05      	ldr	r2, [sp, #20]
d0004290:	3301      	adds	r3, #1
d0004292:	6866      	ldr	r6, [r4, #4]
d0004294:	9950      	ldr	r1, [sp, #320]	; 0x140
d0004296:	42b3      	cmp	r3, r6
d0004298:	9306      	str	r3, [sp, #24]
d000429a:	440a      	add	r2, r1
d000429c:	9205      	str	r2, [sp, #20]
d000429e:	f080 8099 	bcs.w	d00043d4 <load_jpeg_image.constprop.0+0xa24>
d00042a2:	6825      	ldr	r5, [r4, #0]
d00042a4:	4613      	mov	r3, r2
d00042a6:	e7a6      	b.n	d00041f6 <load_jpeg_image.constprop.0+0x846>
d00042a8:	69e3      	ldr	r3, [r4, #28]
d00042aa:	2100      	movs	r1, #0
d00042ac:	683a      	ldr	r2, [r7, #0]
d00042ae:	3301      	adds	r3, #1
d00042b0:	61a1      	str	r1, [r4, #24]
d00042b2:	6065      	str	r5, [r4, #4]
d00042b4:	4293      	cmp	r3, r2
d00042b6:	61e3      	str	r3, [r4, #28]
d00042b8:	dabe      	bge.n	d0004238 <load_jpeg_image.constprop.0+0x888>
d00042ba:	687b      	ldr	r3, [r7, #4]
d00042bc:	441d      	add	r5, r3
d00042be:	60a5      	str	r5, [r4, #8]
d00042c0:	e7ba      	b.n	d0004238 <load_jpeg_image.constprop.0+0x888>
d00042c2:	9b0a      	ldr	r3, [sp, #40]	; 0x28
d00042c4:	b383      	cbz	r3, d0004328 <load_jpeg_image.constprop.0+0x978>
d00042c6:	9b50      	ldr	r3, [sp, #320]	; 0x140
d00042c8:	2b01      	cmp	r3, #1
d00042ca:	9b07      	ldr	r3, [sp, #28]
d00042cc:	681c      	ldr	r4, [r3, #0]
d00042ce:	6823      	ldr	r3, [r4, #0]
d00042d0:	f000 80e7 	beq.w	d00044a2 <load_jpeg_image.constprop.0+0xaf2>
d00042d4:	2b00      	cmp	r3, #0
d00042d6:	d0d9      	beq.n	d000428c <load_jpeg_image.constprop.0+0x8dc>
d00042d8:	9b20      	ldr	r3, [sp, #128]	; 0x80
d00042da:	2100      	movs	r1, #0
d00042dc:	9e21      	ldr	r6, [sp, #132]	; 0x84
d00042de:	1c6f      	adds	r7, r5, #1
d00042e0:	9822      	ldr	r0, [sp, #136]	; 0x88
d00042e2:	f103 3cff 	add.w	ip, r3, #4294967295	; 0xffffffff
d00042e6:	3e01      	subs	r6, #1
d00042e8:	f04f 0e4d 	mov.w	lr, #77	; 0x4d
d00042ec:	3801      	subs	r0, #1
d00042ee:	f04f 081d 	mov.w	r8, #29
d00042f2:	f816 3f01 	ldrb.w	r3, [r6, #1]!
d00042f6:	f81c 2f01 	ldrb.w	r2, [ip, #1]!
d00042fa:	eb03 0383 	add.w	r3, r3, r3, lsl #2
d00042fe:	f810 9f01 	ldrb.w	r9, [r0, #1]!
d0004302:	ebc3 1303 	rsb	r3, r3, r3, lsl #4
d0004306:	005b      	lsls	r3, r3, #1
d0004308:	fb1e 3302 	smlabb	r3, lr, r2, r3
d000430c:	fb18 3309 	smlabb	r3, r8, r9, r3
d0004310:	121b      	asrs	r3, r3, #8
d0004312:	f805 3011 	strb.w	r3, [r5, r1, lsl #1]
d0004316:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
d000431a:	f807 3011 	strb.w	r3, [r7, r1, lsl #1]
d000431e:	3101      	adds	r1, #1
d0004320:	6823      	ldr	r3, [r4, #0]
d0004322:	4299      	cmp	r1, r3
d0004324:	d3e5      	bcc.n	d00042f2 <load_jpeg_image.constprop.0+0x942>
d0004326:	e7b1      	b.n	d000428c <load_jpeg_image.constprop.0+0x8dc>
d0004328:	9b07      	ldr	r3, [sp, #28]
d000432a:	681c      	ldr	r4, [r3, #0]
d000432c:	68a3      	ldr	r3, [r4, #8]
d000432e:	2b04      	cmp	r3, #4
d0004330:	f000 808b 	beq.w	d000444a <load_jpeg_image.constprop.0+0xa9a>
d0004334:	9b50      	ldr	r3, [sp, #320]	; 0x140
d0004336:	9920      	ldr	r1, [sp, #128]	; 0x80
d0004338:	2b01      	cmp	r3, #1
d000433a:	6823      	ldr	r3, [r4, #0]
d000433c:	f000 80d8 	beq.w	d00044f0 <load_jpeg_image.constprop.0+0xb40>
d0004340:	2b00      	cmp	r3, #0
d0004342:	d0a3      	beq.n	d000428c <load_jpeg_image.constprop.0+0x8dc>
d0004344:	3901      	subs	r1, #1
d0004346:	2300      	movs	r3, #0
d0004348:	1c6f      	adds	r7, r5, #1
d000434a:	f811 2f01 	ldrb.w	r2, [r1, #1]!
d000434e:	f805 2013 	strb.w	r2, [r5, r3, lsl #1]
d0004352:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
d0004356:	f807 2013 	strb.w	r2, [r7, r3, lsl #1]
d000435a:	3301      	adds	r3, #1
d000435c:	6822      	ldr	r2, [r4, #0]
d000435e:	4293      	cmp	r3, r2
d0004360:	d3f3      	bcc.n	d000434a <load_jpeg_image.constprop.0+0x99a>
d0004362:	e793      	b.n	d000428c <load_jpeg_image.constprop.0+0x8dc>
d0004364:	9b0a      	ldr	r3, [sp, #40]	; 0x28
d0004366:	2b00      	cmp	r3, #0
d0004368:	d083      	beq.n	d0004272 <load_jpeg_image.constprop.0+0x8c2>
d000436a:	6823      	ldr	r3, [r4, #0]
d000436c:	2b00      	cmp	r3, #0
d000436e:	d08d      	beq.n	d000428c <load_jpeg_image.constprop.0+0x8dc>
d0004370:	9a21      	ldr	r2, [sp, #132]	; 0x84
d0004372:	1e4e      	subs	r6, r1, #1
d0004374:	9b22      	ldr	r3, [sp, #136]	; 0x88
d0004376:	3a01      	subs	r2, #1
d0004378:	f8dd c140 	ldr.w	ip, [sp, #320]	; 0x140
d000437c:	1e5f      	subs	r7, r3, #1
d000437e:	4633      	mov	r3, r6
d0004380:	f816 0f01 	ldrb.w	r0, [r6, #1]!
d0004384:	f04f 3eff 	mov.w	lr, #4294967295	; 0xffffffff
d0004388:	7028      	strb	r0, [r5, #0]
d000438a:	3302      	adds	r3, #2
d000438c:	f812 0f01 	ldrb.w	r0, [r2, #1]!
d0004390:	1a5b      	subs	r3, r3, r1
d0004392:	7068      	strb	r0, [r5, #1]
d0004394:	f817 0f01 	ldrb.w	r0, [r7, #1]!
d0004398:	f885 e003 	strb.w	lr, [r5, #3]
d000439c:	70a8      	strb	r0, [r5, #2]
d000439e:	4465      	add	r5, ip
d00043a0:	6820      	ldr	r0, [r4, #0]
d00043a2:	4298      	cmp	r0, r3
d00043a4:	d8eb      	bhi.n	d000437e <load_jpeg_image.constprop.0+0x9ce>
d00043a6:	e771      	b.n	d000428c <load_jpeg_image.constprop.0+0x8dc>
d00043a8:	6823      	ldr	r3, [r4, #0]
d00043aa:	2b00      	cmp	r3, #0
d00043ac:	f43f af6e 	beq.w	d000428c <load_jpeg_image.constprop.0+0x8dc>
d00043b0:	1e48      	subs	r0, r1, #1
d00043b2:	9e50      	ldr	r6, [sp, #320]	; 0x140
d00043b4:	4603      	mov	r3, r0
d00043b6:	f04f 37ff 	mov.w	r7, #4294967295	; 0xffffffff
d00043ba:	f810 2f01 	ldrb.w	r2, [r0, #1]!
d00043be:	3302      	adds	r3, #2
d00043c0:	70ef      	strb	r7, [r5, #3]
d00043c2:	70aa      	strb	r2, [r5, #2]
d00043c4:	706a      	strb	r2, [r5, #1]
d00043c6:	1a5b      	subs	r3, r3, r1
d00043c8:	702a      	strb	r2, [r5, #0]
d00043ca:	4435      	add	r5, r6
d00043cc:	6822      	ldr	r2, [r4, #0]
d00043ce:	429a      	cmp	r2, r3
d00043d0:	d8f0      	bhi.n	d00043b4 <load_jpeg_image.constprop.0+0xa04>
d00043d2:	e75b      	b.n	d000428c <load_jpeg_image.constprop.0+0x8dc>
d00043d4:	68a3      	ldr	r3, [r4, #8]
d00043d6:	f8dd a01c 	ldr.w	sl, [sp, #28]
d00043da:	9304      	str	r3, [sp, #16]
d00043dc:	9b04      	ldr	r3, [sp, #16]
d00043de:	2b00      	cmp	r3, #0
d00043e0:	dd1e      	ble.n	d0004420 <load_jpeg_image.constprop.0+0xa70>
d00043e2:	f244 64c8 	movw	r4, #18120	; 0x46c8
d00043e6:	eb03 06c3 	add.w	r6, r3, r3, lsl #3
d00043ea:	2500      	movs	r5, #0
d00043ec:	4454      	add	r4, sl
d00043ee:	eb04 06c6 	add.w	r6, r4, r6, lsl #3
d00043f2:	6860      	ldr	r0, [r4, #4]
d00043f4:	b118      	cbz	r0, d00043fe <load_jpeg_image.constprop.0+0xa4e>
d00043f6:	f008 f953 	bl	d000c6a0 <free>
d00043fa:	6065      	str	r5, [r4, #4]
d00043fc:	6025      	str	r5, [r4, #0]
d00043fe:	68a0      	ldr	r0, [r4, #8]
d0004400:	b118      	cbz	r0, d000440a <load_jpeg_image.constprop.0+0xa5a>
d0004402:	f008 f94d 	bl	d000c6a0 <free>
d0004406:	60a5      	str	r5, [r4, #8]
d0004408:	6125      	str	r5, [r4, #16]
d000440a:	68e0      	ldr	r0, [r4, #12]
d000440c:	b110      	cbz	r0, d0004414 <load_jpeg_image.constprop.0+0xa64>
d000440e:	f008 f947 	bl	d000c6a0 <free>
d0004412:	60e5      	str	r5, [r4, #12]
d0004414:	3448      	adds	r4, #72	; 0x48
d0004416:	42b4      	cmp	r4, r6
d0004418:	d1eb      	bne.n	d00043f2 <load_jpeg_image.constprop.0+0xa42>
d000441a:	f8da 4000 	ldr.w	r4, [sl]
d000441e:	6866      	ldr	r6, [r4, #4]
d0004420:	6823      	ldr	r3, [r4, #0]
d0004422:	9a1b      	ldr	r2, [sp, #108]	; 0x6c
d0004424:	6013      	str	r3, [r2, #0]
d0004426:	9b1c      	ldr	r3, [sp, #112]	; 0x70
d0004428:	9a1d      	ldr	r2, [sp, #116]	; 0x74
d000442a:	601e      	str	r6, [r3, #0]
d000442c:	2a00      	cmp	r2, #0
d000442e:	f43f adb6 	beq.w	d0003f9e <load_jpeg_image.constprop.0+0x5ee>
d0004432:	68a3      	ldr	r3, [r4, #8]
d0004434:	9808      	ldr	r0, [sp, #32]
d0004436:	2b02      	cmp	r3, #2
d0004438:	bfcc      	ite	gt
d000443a:	2303      	movgt	r3, #3
d000443c:	2301      	movle	r3, #1
d000443e:	6013      	str	r3, [r2, #0]
d0004440:	b045      	add	sp, #276	; 0x114
d0004442:	ecbd 8b02 	vpop	{d8}
d0004446:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d000444a:	f244 73e8 	movw	r3, #18408	; 0x47e8
d000444e:	9a07      	ldr	r2, [sp, #28]
d0004450:	58d3      	ldr	r3, [r2, r3]
d0004452:	2b00      	cmp	r3, #0
d0004454:	f000 81b9 	beq.w	d00047ca <load_jpeg_image.constprop.0+0xe1a>
d0004458:	2b02      	cmp	r3, #2
d000445a:	f47f af6b 	bne.w	d0004334 <load_jpeg_image.constprop.0+0x984>
d000445e:	6823      	ldr	r3, [r4, #0]
d0004460:	2b00      	cmp	r3, #0
d0004462:	f43f af13 	beq.w	d000428c <load_jpeg_image.constprop.0+0x8dc>
d0004466:	9e20      	ldr	r6, [sp, #128]	; 0x80
d0004468:	9823      	ldr	r0, [sp, #140]	; 0x8c
d000446a:	1e71      	subs	r1, r6, #1
d000446c:	9f50      	ldr	r7, [sp, #320]	; 0x140
d000446e:	3801      	subs	r0, #1
d0004470:	460a      	mov	r2, r1
d0004472:	f811 3f01 	ldrb.w	r3, [r1, #1]!
d0004476:	f810 cf01 	ldrb.w	ip, [r0, #1]!
d000447a:	f04f 3eff 	mov.w	lr, #4294967295	; 0xffffffff
d000447e:	43db      	mvns	r3, r3
d0004480:	3202      	adds	r2, #2
d0004482:	f885 e001 	strb.w	lr, [r5, #1]
d0004486:	b2db      	uxtb	r3, r3
d0004488:	1b92      	subs	r2, r2, r6
d000448a:	fb13 f30c 	smulbb	r3, r3, ip
d000448e:	3380      	adds	r3, #128	; 0x80
d0004490:	eb03 2313 	add.w	r3, r3, r3, lsr #8
d0004494:	0a1b      	lsrs	r3, r3, #8
d0004496:	702b      	strb	r3, [r5, #0]
d0004498:	443d      	add	r5, r7
d000449a:	6823      	ldr	r3, [r4, #0]
d000449c:	4293      	cmp	r3, r2
d000449e:	d8e7      	bhi.n	d0004470 <load_jpeg_image.constprop.0+0xac0>
d00044a0:	e6f4      	b.n	d000428c <load_jpeg_image.constprop.0+0x8dc>
d00044a2:	2b00      	cmp	r3, #0
d00044a4:	f43f aef2 	beq.w	d000428c <load_jpeg_image.constprop.0+0x8dc>
d00044a8:	9e20      	ldr	r6, [sp, #128]	; 0x80
d00044aa:	f04f 0c4d 	mov.w	ip, #77	; 0x4d
d00044ae:	9a21      	ldr	r2, [sp, #132]	; 0x84
d00044b0:	271d      	movs	r7, #29
d00044b2:	9b22      	ldr	r3, [sp, #136]	; 0x88
d00044b4:	1e70      	subs	r0, r6, #1
d00044b6:	f102 3eff 	add.w	lr, r2, #4294967295	; 0xffffffff
d00044ba:	f103 38ff 	add.w	r8, r3, #4294967295	; 0xffffffff
d00044be:	f81e 3f01 	ldrb.w	r3, [lr, #1]!
d00044c2:	4602      	mov	r2, r0
d00044c4:	f810 1f01 	ldrb.w	r1, [r0, #1]!
d00044c8:	eb03 0383 	add.w	r3, r3, r3, lsl #2
d00044cc:	f818 9f01 	ldrb.w	r9, [r8, #1]!
d00044d0:	3202      	adds	r2, #2
d00044d2:	ebc3 1303 	rsb	r3, r3, r3, lsl #4
d00044d6:	1b92      	subs	r2, r2, r6
d00044d8:	005b      	lsls	r3, r3, #1
d00044da:	fb1c 3301 	smlabb	r3, ip, r1, r3
d00044de:	fb17 3309 	smlabb	r3, r7, r9, r3
d00044e2:	121b      	asrs	r3, r3, #8
d00044e4:	f805 3b01 	strb.w	r3, [r5], #1
d00044e8:	6823      	ldr	r3, [r4, #0]
d00044ea:	4293      	cmp	r3, r2
d00044ec:	d8e7      	bhi.n	d00044be <load_jpeg_image.constprop.0+0xb0e>
d00044ee:	e6cd      	b.n	d000428c <load_jpeg_image.constprop.0+0x8dc>
d00044f0:	2b00      	cmp	r3, #0
d00044f2:	f43f aecb 	beq.w	d000428c <load_jpeg_image.constprop.0+0x8dc>
d00044f6:	3d01      	subs	r5, #1
d00044f8:	1e48      	subs	r0, r1, #1
d00044fa:	4603      	mov	r3, r0
d00044fc:	f810 2f01 	ldrb.w	r2, [r0, #1]!
d0004500:	3302      	adds	r3, #2
d0004502:	f805 2f01 	strb.w	r2, [r5, #1]!
d0004506:	6822      	ldr	r2, [r4, #0]
d0004508:	1a5b      	subs	r3, r3, r1
d000450a:	429a      	cmp	r2, r3
d000450c:	d8f5      	bhi.n	d00044fa <load_jpeg_image.constprop.0+0xb4a>
d000450e:	e6bd      	b.n	d000428c <load_jpeg_image.constprop.0+0x8dc>
d0004510:	6823      	ldr	r3, [r4, #0]
d0004512:	2b00      	cmp	r3, #0
d0004514:	f43f aeba 	beq.w	d000428c <load_jpeg_image.constprop.0+0x8dc>
d0004518:	9f23      	ldr	r7, [sp, #140]	; 0x8c
d000451a:	1e4a      	subs	r2, r1, #1
d000451c:	9b22      	ldr	r3, [sp, #136]	; 0x88
d000451e:	9921      	ldr	r1, [sp, #132]	; 0x84
d0004520:	1e7e      	subs	r6, r7, #1
d0004522:	f103 3eff 	add.w	lr, r3, #4294967295	; 0xffffffff
d0004526:	9850      	ldr	r0, [sp, #320]	; 0x140
d0004528:	f101 3cff 	add.w	ip, r1, #4294967295	; 0xffffffff
d000452c:	f812 3f01 	ldrb.w	r3, [r2, #1]!
d0004530:	4631      	mov	r1, r6
d0004532:	f816 9f01 	ldrb.w	r9, [r6, #1]!
d0004536:	3102      	adds	r1, #2
d0004538:	fb13 f309 	smulbb	r3, r3, r9
d000453c:	1bc9      	subs	r1, r1, r7
d000453e:	3380      	adds	r3, #128	; 0x80
d0004540:	eb03 2313 	add.w	r3, r3, r3, lsr #8
d0004544:	0a1b      	lsrs	r3, r3, #8
d0004546:	702b      	strb	r3, [r5, #0]
d0004548:	f81c 8f01 	ldrb.w	r8, [ip, #1]!
d000454c:	fb18 f809 	smulbb	r8, r8, r9
d0004550:	f108 0880 	add.w	r8, r8, #128	; 0x80
d0004554:	eb08 2818 	add.w	r8, r8, r8, lsr #8
d0004558:	ea4f 2818 	mov.w	r8, r8, lsr #8
d000455c:	f885 8001 	strb.w	r8, [r5, #1]
d0004560:	f04f 38ff 	mov.w	r8, #4294967295	; 0xffffffff
d0004564:	f81e 3f01 	ldrb.w	r3, [lr, #1]!
d0004568:	f885 8003 	strb.w	r8, [r5, #3]
d000456c:	fb13 f309 	smulbb	r3, r3, r9
d0004570:	3380      	adds	r3, #128	; 0x80
d0004572:	eb03 2313 	add.w	r3, r3, r3, lsr #8
d0004576:	0a1b      	lsrs	r3, r3, #8
d0004578:	70ab      	strb	r3, [r5, #2]
d000457a:	4405      	add	r5, r0
d000457c:	6823      	ldr	r3, [r4, #0]
d000457e:	428b      	cmp	r3, r1
d0004580:	d8d4      	bhi.n	d000452c <load_jpeg_image.constprop.0+0xb7c>
d0004582:	e683      	b.n	d000428c <load_jpeg_image.constprop.0+0x8dc>
d0004584:	f244 73ec 	movw	r3, #18412	; 0x47ec
d0004588:	f85a 3003 	ldr.w	r3, [sl, r3]
d000458c:	2b03      	cmp	r3, #3
d000458e:	9306      	str	r3, [sp, #24]
d0004590:	d00b      	beq.n	d00045aa <load_jpeg_image.constprop.0+0xbfa>
d0004592:	f244 73e8 	movw	r3, #18408	; 0x47e8
d0004596:	f85a 3003 	ldr.w	r3, [sl, r3]
d000459a:	b953      	cbnz	r3, d00045b2 <load_jpeg_image.constprop.0+0xc02>
d000459c:	f244 73e4 	movw	r3, #18404	; 0x47e4
d00045a0:	f85a 3003 	ldr.w	r3, [sl, r3]
d00045a4:	b92b      	cbnz	r3, d00045b2 <load_jpeg_image.constprop.0+0xc02>
d00045a6:	9b04      	ldr	r3, [sp, #16]
d00045a8:	9306      	str	r3, [sp, #24]
d00045aa:	2301      	movs	r3, #1
d00045ac:	930a      	str	r3, [sp, #40]	; 0x28
d00045ae:	f7ff bac2 	b.w	d0003b36 <load_jpeg_image.constprop.0+0x186>
d00045b2:	9b50      	ldr	r3, [sp, #320]	; 0x140
d00045b4:	2b02      	cmp	r3, #2
d00045b6:	f04f 0300 	mov.w	r3, #0
d00045ba:	930a      	str	r3, [sp, #40]	; 0x28
d00045bc:	bfcc      	ite	gt
d00045be:	2303      	movgt	r3, #3
d00045c0:	2301      	movle	r3, #1
d00045c2:	9306      	str	r3, [sp, #24]
d00045c4:	f7ff bab7 	b.w	d0003b36 <load_jpeg_image.constprop.0+0x186>
d00045c8:	f105 0728 	add.w	r7, r5, #40	; 0x28
d00045cc:	692b      	ldr	r3, [r5, #16]
d00045ce:	6a6a      	ldr	r2, [r5, #36]	; 0x24
d00045d0:	69e8      	ldr	r0, [r5, #28]
d00045d2:	4639      	mov	r1, r7
d00045d4:	4798      	blx	r3
d00045d6:	f8d5 20ac 	ldr.w	r2, [r5, #172]	; 0xac
d00045da:	f8d5 50b4 	ldr.w	r5, [r5, #180]	; 0xb4
d00045de:	f8d6 30a8 	ldr.w	r3, [r6, #168]	; 0xa8
d00045e2:	1b52      	subs	r2, r2, r5
d00045e4:	4413      	add	r3, r2
d00045e6:	f8c6 30a8 	str.w	r3, [r6, #168]	; 0xa8
d00045ea:	2800      	cmp	r0, #0
d00045ec:	f040 817a 	bne.w	d00048e4 <load_jpeg_image.constprop.0+0xf34>
d00045f0:	f106 0329 	add.w	r3, r6, #41	; 0x29
d00045f4:	f244 72f0 	movw	r2, #18416	; 0x47f0
d00045f8:	6230      	str	r0, [r6, #32]
d00045fa:	f886 0028 	strb.w	r0, [r6, #40]	; 0x28
d00045fe:	f8c6 30b0 	str.w	r3, [r6, #176]	; 0xb0
d0004602:	f8c6 30ac 	str.w	r3, [r6, #172]	; 0xac
d0004606:	f8da 6000 	ldr.w	r6, [sl]
d000460a:	f84a 0002 	str.w	r0, [sl, r2]
d000460e:	f8d6 c008 	ldr.w	ip, [r6, #8]
d0004612:	f7ff bb33 	b.w	d0003c7c <load_jpeg_image.constprop.0+0x2cc>
d0004616:	f105 0428 	add.w	r4, r5, #40	; 0x28
d000461a:	692b      	ldr	r3, [r5, #16]
d000461c:	6a6a      	ldr	r2, [r5, #36]	; 0x24
d000461e:	4621      	mov	r1, r4
d0004620:	69e8      	ldr	r0, [r5, #28]
d0004622:	4798      	blx	r3
d0004624:	f8d5 30ac 	ldr.w	r3, [r5, #172]	; 0xac
d0004628:	f8d5 20b4 	ldr.w	r2, [r5, #180]	; 0xb4
d000462c:	f8d5 10a8 	ldr.w	r1, [r5, #168]	; 0xa8
d0004630:	1a9b      	subs	r3, r3, r2
d0004632:	4419      	add	r1, r3
d0004634:	f8c5 10a8 	str.w	r1, [r5, #168]	; 0xa8
d0004638:	2800      	cmp	r0, #0
d000463a:	f040 8165 	bne.w	d0004908 <load_jpeg_image.constprop.0+0xf58>
d000463e:	f105 0329 	add.w	r3, r5, #41	; 0x29
d0004642:	6228      	str	r0, [r5, #32]
d0004644:	f885 0028 	strb.w	r0, [r5, #40]	; 0x28
d0004648:	4619      	mov	r1, r3
d000464a:	f895 4028 	ldrb.w	r4, [r5, #40]	; 0x28
d000464e:	4299      	cmp	r1, r3
d0004650:	f8c5 30b0 	str.w	r3, [r5, #176]	; 0xb0
d0004654:	ea4f 2404 	mov.w	r4, r4, lsl #8
d0004658:	f8c5 10ac 	str.w	r1, [r5, #172]	; 0xac
d000465c:	f4ff abee 	bcc.w	d0003e3c <load_jpeg_image.constprop.0+0x48c>
d0004660:	6a2b      	ldr	r3, [r5, #32]
d0004662:	b303      	cbz	r3, d00046a6 <load_jpeg_image.constprop.0+0xcf6>
d0004664:	f105 0728 	add.w	r7, r5, #40	; 0x28
d0004668:	692b      	ldr	r3, [r5, #16]
d000466a:	6a6a      	ldr	r2, [r5, #36]	; 0x24
d000466c:	4639      	mov	r1, r7
d000466e:	69e8      	ldr	r0, [r5, #28]
d0004670:	4798      	blx	r3
d0004672:	f8d5 20ac 	ldr.w	r2, [r5, #172]	; 0xac
d0004676:	f8d5 60b4 	ldr.w	r6, [r5, #180]	; 0xb4
d000467a:	f8d5 30a8 	ldr.w	r3, [r5, #168]	; 0xa8
d000467e:	1b92      	subs	r2, r2, r6
d0004680:	4413      	add	r3, r2
d0004682:	f8c5 30a8 	str.w	r3, [r5, #168]	; 0xa8
d0004686:	2800      	cmp	r0, #0
d0004688:	f040 813a 	bne.w	d0004900 <load_jpeg_image.constprop.0+0xf50>
d000468c:	f105 0729 	add.w	r7, r5, #41	; 0x29
d0004690:	6228      	str	r0, [r5, #32]
d0004692:	f885 0028 	strb.w	r0, [r5, #40]	; 0x28
d0004696:	463a      	mov	r2, r7
d0004698:	f895 3028 	ldrb.w	r3, [r5, #40]	; 0x28
d000469c:	f8c5 70b0 	str.w	r7, [r5, #176]	; 0xb0
d00046a0:	441c      	add	r4, r3
d00046a2:	f8c5 20ac 	str.w	r2, [r5, #172]	; 0xac
d00046a6:	f8da 5000 	ldr.w	r5, [sl]
d00046aa:	f7ff bad6 	b.w	d0003c5a <load_jpeg_image.constprop.0+0x2aa>
d00046ae:	2301      	movs	r3, #1
d00046b0:	9350      	str	r3, [sp, #320]	; 0x140
d00046b2:	f7ff ba3a 	b.w	d0003b2a <load_jpeg_image.constprop.0+0x17a>
d00046b6:	f104 0528 	add.w	r5, r4, #40	; 0x28
d00046ba:	6923      	ldr	r3, [r4, #16]
d00046bc:	6a62      	ldr	r2, [r4, #36]	; 0x24
d00046be:	4629      	mov	r1, r5
d00046c0:	69e0      	ldr	r0, [r4, #28]
d00046c2:	4798      	blx	r3
d00046c4:	f8d4 20ac 	ldr.w	r2, [r4, #172]	; 0xac
d00046c8:	f8d4 10b4 	ldr.w	r1, [r4, #180]	; 0xb4
d00046cc:	f8d4 30a8 	ldr.w	r3, [r4, #168]	; 0xa8
d00046d0:	1a52      	subs	r2, r2, r1
d00046d2:	4413      	add	r3, r2
d00046d4:	f8c4 30a8 	str.w	r3, [r4, #168]	; 0xa8
d00046d8:	2800      	cmp	r0, #0
d00046da:	d068      	beq.n	d00047ae <load_jpeg_image.constprop.0+0xdfe>
d00046dc:	4428      	add	r0, r5
d00046de:	f104 0229 	add.w	r2, r4, #41	; 0x29
d00046e2:	f894 3028 	ldrb.w	r3, [r4, #40]	; 0x28
d00046e6:	f8c4 00b0 	str.w	r0, [r4, #176]	; 0xb0
d00046ea:	f8c4 20ac 	str.w	r2, [r4, #172]	; 0xac
d00046ee:	f7ff bbbb 	b.w	d0003e68 <load_jpeg_image.constprop.0+0x4b8>
d00046f2:	2400      	movs	r4, #0
d00046f4:	f7ff bb63 	b.w	d0003dbe <load_jpeg_image.constprop.0+0x40e>
d00046f8:	f244 73cc 	movw	r3, #18380	; 0x47cc
d00046fc:	f85a 3003 	ldr.w	r3, [sl, r3]
d0004700:	2b00      	cmp	r3, #0
d0004702:	f43f aa02 	beq.w	d0003b0a <load_jpeg_image.constprop.0+0x15a>
d0004706:	f8da 5000 	ldr.w	r5, [sl]
d000470a:	68a9      	ldr	r1, [r5, #8]
d000470c:	462c      	mov	r4, r5
d000470e:	2900      	cmp	r1, #0
d0004710:	9104      	str	r1, [sp, #16]
d0004712:	f77f a9fe 	ble.w	d0003b12 <load_jpeg_image.constprop.0+0x162>
d0004716:	f244 66a8 	movw	r6, #18088	; 0x46a8
d000471a:	f644 090c 	movw	r9, #18444	; 0x480c
d000471e:	f04f 0b00 	mov.w	fp, #0
d0004722:	4456      	add	r6, sl
d0004724:	44d1      	add	r9, sl
d0004726:	6972      	ldr	r2, [r6, #20]
d0004728:	6933      	ldr	r3, [r6, #16]
d000472a:	3207      	adds	r2, #7
d000472c:	3307      	adds	r3, #7
d000472e:	ea4f 08e2 	mov.w	r8, r2, asr #3
d0004732:	10df      	asrs	r7, r3, #3
d0004734:	f1b8 0f00 	cmp.w	r8, #0
d0004738:	dd2e      	ble.n	d0004798 <load_jpeg_image.constprop.0+0xde8>
d000473a:	2f00      	cmp	r7, #0
d000473c:	dd2a      	ble.n	d0004794 <load_jpeg_image.constprop.0+0xde4>
d000473e:	2500      	movs	r5, #0
d0004740:	2400      	movs	r4, #0
d0004742:	6b73      	ldr	r3, [r6, #52]	; 0x34
d0004744:	f243 4082 	movw	r0, #13442	; 0x3482
d0004748:	6b32      	ldr	r2, [r6, #48]	; 0x30
d000474a:	fb03 4105 	mla	r1, r3, r5, r4
d000474e:	6833      	ldr	r3, [r6, #0]
d0004750:	eb02 12c1 	add.w	r2, r2, r1, lsl #7
d0004754:	eb0a 11c3 	add.w	r1, sl, r3, lsl #7
d0004758:	f102 0c7e 	add.w	ip, r2, #126	; 0x7e
d000475c:	1e93      	subs	r3, r2, #2
d000475e:	4408      	add	r0, r1
d0004760:	f833 1f02 	ldrh.w	r1, [r3, #2]!
d0004764:	f830 ef02 	ldrh.w	lr, [r0, #2]!
d0004768:	4563      	cmp	r3, ip
d000476a:	fb11 f10e 	smulbb	r1, r1, lr
d000476e:	8019      	strh	r1, [r3, #0]
d0004770:	d1f6      	bne.n	d0004760 <load_jpeg_image.constprop.0+0xdb0>
d0004772:	69b1      	ldr	r1, [r6, #24]
d0004774:	6a30      	ldr	r0, [r6, #32]
d0004776:	fb05 4c01 	mla	ip, r5, r1, r4
d000477a:	3401      	adds	r4, #1
d000477c:	f8d9 3000 	ldr.w	r3, [r9]
d0004780:	eb00 00cc 	add.w	r0, r0, ip, lsl #3
d0004784:	4798      	blx	r3
d0004786:	42a7      	cmp	r7, r4
d0004788:	d1db      	bne.n	d0004742 <load_jpeg_image.constprop.0+0xd92>
d000478a:	3501      	adds	r5, #1
d000478c:	45a8      	cmp	r8, r5
d000478e:	d1d7      	bne.n	d0004740 <load_jpeg_image.constprop.0+0xd90>
d0004790:	f8da 5000 	ldr.w	r5, [sl]
d0004794:	462c      	mov	r4, r5
d0004796:	68a9      	ldr	r1, [r5, #8]
d0004798:	f10b 0b01 	add.w	fp, fp, #1
d000479c:	3648      	adds	r6, #72	; 0x48
d000479e:	458b      	cmp	fp, r1
d00047a0:	dbc1      	blt.n	d0004726 <load_jpeg_image.constprop.0+0xd76>
d00047a2:	9104      	str	r1, [sp, #16]
d00047a4:	f7ff b9b5 	b.w	d0003b12 <load_jpeg_image.constprop.0+0x162>
d00047a8:	2401      	movs	r4, #1
d00047aa:	f7ff bb08 	b.w	d0003dbe <load_jpeg_image.constprop.0+0x40e>
d00047ae:	f104 0329 	add.w	r3, r4, #41	; 0x29
d00047b2:	6220      	str	r0, [r4, #32]
d00047b4:	f884 0028 	strb.w	r0, [r4, #40]	; 0x28
d00047b8:	f8c4 30b0 	str.w	r3, [r4, #176]	; 0xb0
d00047bc:	f8c4 30ac 	str.w	r3, [r4, #172]	; 0xac
d00047c0:	f7ff b99d 	b.w	d0003afe <load_jpeg_image.constprop.0+0x14e>
d00047c4:	2402      	movs	r4, #2
d00047c6:	f7ff bafa 	b.w	d0003dbe <load_jpeg_image.constprop.0+0x40e>
d00047ca:	6823      	ldr	r3, [r4, #0]
d00047cc:	2b00      	cmp	r3, #0
d00047ce:	f43f ad5d 	beq.w	d000428c <load_jpeg_image.constprop.0+0x8dc>
d00047d2:	f8dd 908c 	ldr.w	r9, [sp, #140]	; 0x8c
d00047d6:	f04f 0b96 	mov.w	fp, #150	; 0x96
d00047da:	9a20      	ldr	r2, [sp, #128]	; 0x80
d00047dc:	9b21      	ldr	r3, [sp, #132]	; 0x84
d00047de:	f109 30ff 	add.w	r0, r9, #4294967295	; 0xffffffff
d00047e2:	9922      	ldr	r1, [sp, #136]	; 0x88
d00047e4:	3a01      	subs	r2, #1
d00047e6:	1e5e      	subs	r6, r3, #1
d00047e8:	f101 38ff 	add.w	r8, r1, #4294967295	; 0xffffffff
d00047ec:	f816 cf01 	ldrb.w	ip, [r6, #1]!
d00047f0:	4601      	mov	r1, r0
d00047f2:	f818 7f01 	ldrb.w	r7, [r8, #1]!
d00047f6:	f04f 3aff 	mov.w	sl, #4294967295	; 0xffffffff
d00047fa:	f810 3f01 	ldrb.w	r3, [r0, #1]!
d00047fe:	3102      	adds	r1, #2
d0004800:	f812 ef01 	ldrb.w	lr, [r2, #1]!
d0004804:	fb1c fc03 	smulbb	ip, ip, r3
d0004808:	f885 a001 	strb.w	sl, [r5, #1]
d000480c:	fb17 f703 	smulbb	r7, r7, r3
d0004810:	f04f 0a4d 	mov.w	sl, #77	; 0x4d
d0004814:	fb1e f303 	smulbb	r3, lr, r3
d0004818:	f10c 0c80 	add.w	ip, ip, #128	; 0x80
d000481c:	3780      	adds	r7, #128	; 0x80
d000481e:	eba1 0109 	sub.w	r1, r1, r9
d0004822:	eb0c 2c1c 	add.w	ip, ip, ip, lsr #8
d0004826:	3380      	adds	r3, #128	; 0x80
d0004828:	eb07 2717 	add.w	r7, r7, r7, lsr #8
d000482c:	ea4f 2c1c 	mov.w	ip, ip, lsr #8
d0004830:	0a3f      	lsrs	r7, r7, #8
d0004832:	eb03 2313 	add.w	r3, r3, r3, lsr #8
d0004836:	fb0b fc0c 	mul.w	ip, fp, ip
d000483a:	ebc7 0ec7 	rsb	lr, r7, r7, lsl #3
d000483e:	0a1b      	lsrs	r3, r3, #8
d0004840:	eb07 078e 	add.w	r7, r7, lr, lsl #2
d0004844:	fb0a c303 	mla	r3, sl, r3, ip
d0004848:	443b      	add	r3, r7
d000484a:	121b      	asrs	r3, r3, #8
d000484c:	702b      	strb	r3, [r5, #0]
d000484e:	9b50      	ldr	r3, [sp, #320]	; 0x140
d0004850:	441d      	add	r5, r3
d0004852:	6823      	ldr	r3, [r4, #0]
d0004854:	428b      	cmp	r3, r1
d0004856:	d8c9      	bhi.n	d00047ec <load_jpeg_image.constprop.0+0xe3c>
d0004858:	e518      	b.n	d000428c <load_jpeg_image.constprop.0+0x8dc>
d000485a:	9b50      	ldr	r3, [sp, #320]	; 0x140
d000485c:	4616      	mov	r6, r2
d000485e:	f644 0210 	movw	r2, #18448	; 0x4810
d0004862:	4658      	mov	r0, fp
d0004864:	9301      	str	r3, [sp, #4]
d0004866:	6823      	ldr	r3, [r4, #0]
d0004868:	58b4      	ldr	r4, [r6, r2]
d000486a:	9300      	str	r3, [sp, #0]
d000486c:	9a21      	ldr	r2, [sp, #132]	; 0x84
d000486e:	9b22      	ldr	r3, [sp, #136]	; 0x88
d0004870:	47a0      	blx	r4
d0004872:	6834      	ldr	r4, [r6, #0]
d0004874:	6823      	ldr	r3, [r4, #0]
d0004876:	2b00      	cmp	r3, #0
d0004878:	f43f ad08 	beq.w	d000428c <load_jpeg_image.constprop.0+0x8dc>
d000487c:	9f23      	ldr	r7, [sp, #140]	; 0x8c
d000487e:	9950      	ldr	r1, [sp, #320]	; 0x140
d0004880:	1e7e      	subs	r6, r7, #1
d0004882:	f895 c000 	ldrb.w	ip, [r5]
d0004886:	4630      	mov	r0, r6
d0004888:	786a      	ldrb	r2, [r5, #1]
d000488a:	78ab      	ldrb	r3, [r5, #2]
d000488c:	ea6f 0c0c 	mvn.w	ip, ip
d0004890:	43d2      	mvns	r2, r2
d0004892:	f816 ef01 	ldrb.w	lr, [r6, #1]!
d0004896:	43db      	mvns	r3, r3
d0004898:	fa5f fc8c 	uxtb.w	ip, ip
d000489c:	b2d2      	uxtb	r2, r2
d000489e:	3002      	adds	r0, #2
d00048a0:	fb1c fc0e 	smulbb	ip, ip, lr
d00048a4:	b2db      	uxtb	r3, r3
d00048a6:	fb12 f20e 	smulbb	r2, r2, lr
d00048aa:	1bc0      	subs	r0, r0, r7
d00048ac:	fb13 f30e 	smulbb	r3, r3, lr
d00048b0:	f10c 0c80 	add.w	ip, ip, #128	; 0x80
d00048b4:	3280      	adds	r2, #128	; 0x80
d00048b6:	3380      	adds	r3, #128	; 0x80
d00048b8:	eb0c 2c1c 	add.w	ip, ip, ip, lsr #8
d00048bc:	eb02 2212 	add.w	r2, r2, r2, lsr #8
d00048c0:	eb03 2313 	add.w	r3, r3, r3, lsr #8
d00048c4:	ea4f 2c1c 	mov.w	ip, ip, lsr #8
d00048c8:	0a1b      	lsrs	r3, r3, #8
d00048ca:	0a12      	lsrs	r2, r2, #8
d00048cc:	f885 c000 	strb.w	ip, [r5]
d00048d0:	70ab      	strb	r3, [r5, #2]
d00048d2:	706a      	strb	r2, [r5, #1]
d00048d4:	440d      	add	r5, r1
d00048d6:	6823      	ldr	r3, [r4, #0]
d00048d8:	4283      	cmp	r3, r0
d00048da:	d8d2      	bhi.n	d0004882 <load_jpeg_image.constprop.0+0xed2>
d00048dc:	e4d6      	b.n	d000428c <load_jpeg_image.constprop.0+0x8dc>
d00048de:	2403      	movs	r4, #3
d00048e0:	f7ff ba6d 	b.w	d0003dbe <load_jpeg_image.constprop.0+0x40e>
d00048e4:	f106 0229 	add.w	r2, r6, #41	; 0x29
d00048e8:	f896 3028 	ldrb.w	r3, [r6, #40]	; 0x28
d00048ec:	4438      	add	r0, r7
d00048ee:	f8c6 20ac 	str.w	r2, [r6, #172]	; 0xac
d00048f2:	1e5a      	subs	r2, r3, #1
d00048f4:	f8c6 00b0 	str.w	r0, [r6, #176]	; 0xb0
d00048f8:	f8da 6000 	ldr.w	r6, [sl]
d00048fc:	f7ff ba11 	b.w	d0003d22 <load_jpeg_image.constprop.0+0x372>
d0004900:	4407      	add	r7, r0
d0004902:	f105 0229 	add.w	r2, r5, #41	; 0x29
d0004906:	e6c7      	b.n	d0004698 <load_jpeg_image.constprop.0+0xce8>
d0004908:	1823      	adds	r3, r4, r0
d000490a:	f105 0129 	add.w	r1, r5, #41	; 0x29
d000490e:	e69c      	b.n	d000464a <load_jpeg_image.constprop.0+0xc9a>
d0004910:	f8d6 20ac 	ldr.w	r2, [r6, #172]	; 0xac
d0004914:	f8d6 30b0 	ldr.w	r3, [r6, #176]	; 0xb0
d0004918:	429a      	cmp	r2, r3
d000491a:	f0c0 8421 	bcc.w	d0005160 <load_jpeg_image.constprop.0+0x17b0>
d000491e:	6a33      	ldr	r3, [r6, #32]
d0004920:	2b00      	cmp	r3, #0
d0004922:	d171      	bne.n	d0004a08 <load_jpeg_image.constprop.0+0x1058>
d0004924:	f244 72d0 	movw	r2, #18384	; 0x47d0
d0004928:	f84a 3002 	str.w	r3, [sl, r2]
d000492c:	eb0a 0302 	add.w	r3, sl, r2
d0004930:	9310      	str	r3, [sp, #64]	; 0x40
d0004932:	6a33      	ldr	r3, [r6, #32]
d0004934:	2b00      	cmp	r3, #0
d0004936:	f040 8468 	bne.w	d000520a <load_jpeg_image.constprop.0+0x185a>
d000493a:	f244 72d4 	movw	r2, #18388	; 0x47d4
d000493e:	f84a 3002 	str.w	r3, [sl, r2]
d0004942:	eb0a 0302 	add.w	r3, sl, r2
d0004946:	9307      	str	r3, [sp, #28]
d0004948:	6a30      	ldr	r0, [r6, #32]
d000494a:	2800      	cmp	r0, #0
d000494c:	f040 843b 	bne.w	d00051c6 <load_jpeg_image.constprop.0+0x1816>
d0004950:	4605      	mov	r5, r0
d0004952:	4603      	mov	r3, r0
d0004954:	f244 71d8 	movw	r1, #18392	; 0x47d8
d0004958:	f244 72dc 	movw	r2, #18396	; 0x47dc
d000495c:	f244 74cc 	movw	r4, #18380	; 0x47cc
d0004960:	eb0a 0601 	add.w	r6, sl, r1
d0004964:	f85a 4004 	ldr.w	r4, [sl, r4]
d0004968:	f84a 0001 	str.w	r0, [sl, r1]
d000496c:	eb0a 0102 	add.w	r1, sl, r2
d0004970:	f84a 5002 	str.w	r5, [sl, r2]
d0004974:	9618      	str	r6, [sp, #96]	; 0x60
d0004976:	9a10      	ldr	r2, [sp, #64]	; 0x40
d0004978:	911a      	str	r1, [sp, #104]	; 0x68
d000497a:	2c00      	cmp	r4, #0
d000497c:	f000 8087 	beq.w	d0004a8e <load_jpeg_image.constprop.0+0x10de>
d0004980:	6811      	ldr	r1, [r2, #0]
d0004982:	293f      	cmp	r1, #63	; 0x3f
d0004984:	dc14      	bgt.n	d00049b0 <load_jpeg_image.constprop.0+0x1000>
d0004986:	9a07      	ldr	r2, [sp, #28]
d0004988:	6812      	ldr	r2, [r2, #0]
d000498a:	4291      	cmp	r1, r2
d000498c:	bfd8      	it	le
d000498e:	2a3f      	cmple	r2, #63	; 0x3f
d0004990:	bfcc      	ite	gt
d0004992:	2201      	movgt	r2, #1
d0004994:	2200      	movle	r2, #0
d0004996:	280d      	cmp	r0, #13
d0004998:	bfd4      	ite	le
d000499a:	4610      	movle	r0, r2
d000499c:	f042 0001 	orrgt.w	r0, r2, #1
d00049a0:	b930      	cbnz	r0, d00049b0 <load_jpeg_image.constprop.0+0x1000>
d00049a2:	2b0d      	cmp	r3, #13
d00049a4:	bf94      	ite	ls
d00049a6:	2300      	movls	r3, #0
d00049a8:	2301      	movhi	r3, #1
d00049aa:	2b00      	cmp	r3, #0
d00049ac:	f000 847c 	beq.w	d00052a8 <load_jpeg_image.constprop.0+0x18f8>
d00049b0:	4ab1      	ldr	r2, [pc, #708]	; (d0004c78 <load_jpeg_image.constprop.0+0x12c8>)
d00049b2:	49b2      	ldr	r1, [pc, #712]	; (d0004c7c <load_jpeg_image.constprop.0+0x12cc>)
d00049b4:	f8da 3000 	ldr.w	r3, [sl]
d00049b8:	6011      	str	r1, [r2, #0]
d00049ba:	f8d3 c008 	ldr.w	ip, [r3, #8]
d00049be:	f7ff b82a 	b.w	d0003a16 <load_jpeg_image.constprop.0+0x66>
d00049c2:	46a4      	mov	ip, r4
d00049c4:	f7ff b827 	b.w	d0003a16 <load_jpeg_image.constprop.0+0x66>
d00049c8:	4bab      	ldr	r3, [pc, #684]	; (d0004c78 <load_jpeg_image.constprop.0+0x12c8>)
d00049ca:	468c      	mov	ip, r1
d00049cc:	4aac      	ldr	r2, [pc, #688]	; (d0004c80 <load_jpeg_image.constprop.0+0x12d0>)
d00049ce:	601a      	str	r2, [r3, #0]
d00049d0:	f7ff b821 	b.w	d0003a16 <load_jpeg_image.constprop.0+0x66>
d00049d4:	4ba8      	ldr	r3, [pc, #672]	; (d0004c78 <load_jpeg_image.constprop.0+0x12c8>)
d00049d6:	468c      	mov	ip, r1
d00049d8:	4aaa      	ldr	r2, [pc, #680]	; (d0004c84 <load_jpeg_image.constprop.0+0x12d4>)
d00049da:	601a      	str	r2, [r3, #0]
d00049dc:	f7ff b81b 	b.w	d0003a16 <load_jpeg_image.constprop.0+0x66>
d00049e0:	2001      	movs	r0, #1
d00049e2:	f007 fe55 	bl	d000c690 <malloc>
d00049e6:	9008      	str	r0, [sp, #32]
d00049e8:	2800      	cmp	r0, #0
d00049ea:	f47f acf7 	bne.w	d00043dc <load_jpeg_image.constprop.0+0xa2c>
d00049ee:	f7ff b918 	b.w	d0003c22 <load_jpeg_image.constprop.0+0x272>
d00049f2:	4430      	add	r0, r6
d00049f4:	f105 0229 	add.w	r2, r5, #41	; 0x29
d00049f8:	f895 3028 	ldrb.w	r3, [r5, #40]	; 0x28
d00049fc:	f8c5 00b0 	str.w	r0, [r5, #176]	; 0xb0
d0004a00:	f8c5 20ac 	str.w	r2, [r5, #172]	; 0xac
d0004a04:	f7ff bb5e 	b.w	d00040c4 <load_jpeg_image.constprop.0+0x714>
d0004a08:	f106 0528 	add.w	r5, r6, #40	; 0x28
d0004a0c:	6933      	ldr	r3, [r6, #16]
d0004a0e:	6a72      	ldr	r2, [r6, #36]	; 0x24
d0004a10:	4629      	mov	r1, r5
d0004a12:	69f0      	ldr	r0, [r6, #28]
d0004a14:	4798      	blx	r3
d0004a16:	f8d6 20ac 	ldr.w	r2, [r6, #172]	; 0xac
d0004a1a:	f8d6 40b4 	ldr.w	r4, [r6, #180]	; 0xb4
d0004a1e:	f8d6 30a8 	ldr.w	r3, [r6, #168]	; 0xa8
d0004a22:	1b12      	subs	r2, r2, r4
d0004a24:	4413      	add	r3, r2
d0004a26:	f8c6 30a8 	str.w	r3, [r6, #168]	; 0xa8
d0004a2a:	2800      	cmp	r0, #0
d0004a2c:	f040 87c7 	bne.w	d00059be <load_jpeg_image.constprop.0+0x200e>
d0004a30:	f106 0529 	add.w	r5, r6, #41	; 0x29
d0004a34:	6230      	str	r0, [r6, #32]
d0004a36:	f886 0028 	strb.w	r0, [r6, #40]	; 0x28
d0004a3a:	462b      	mov	r3, r5
d0004a3c:	f8c6 30ac 	str.w	r3, [r6, #172]	; 0xac
d0004a40:	f8c6 50b0 	str.w	r5, [r6, #176]	; 0xb0
d0004a44:	f8da 6000 	ldr.w	r6, [sl]
d0004a48:	f8d6 10ac 	ldr.w	r1, [r6, #172]	; 0xac
d0004a4c:	f8d6 30b0 	ldr.w	r3, [r6, #176]	; 0xb0
d0004a50:	f244 72d0 	movw	r2, #18384	; 0x47d0
d0004a54:	4299      	cmp	r1, r3
d0004a56:	f84a 0002 	str.w	r0, [sl, r2]
d0004a5a:	4452      	add	r2, sl
d0004a5c:	9210      	str	r2, [sp, #64]	; 0x40
d0004a5e:	f4bf af68 	bcs.w	d0004932 <load_jpeg_image.constprop.0+0xf82>
d0004a62:	1c4a      	adds	r2, r1, #1
d0004a64:	f8c6 20ac 	str.w	r2, [r6, #172]	; 0xac
d0004a68:	7808      	ldrb	r0, [r1, #0]
d0004a6a:	f244 71d4 	movw	r1, #18388	; 0x47d4
d0004a6e:	429a      	cmp	r2, r3
d0004a70:	f84a 0001 	str.w	r0, [sl, r1]
d0004a74:	4451      	add	r1, sl
d0004a76:	9107      	str	r1, [sp, #28]
d0004a78:	f4bf af66 	bcs.w	d0004948 <load_jpeg_image.constprop.0+0xf98>
d0004a7c:	1c53      	adds	r3, r2, #1
d0004a7e:	f8c6 30ac 	str.w	r3, [r6, #172]	; 0xac
d0004a82:	7810      	ldrb	r0, [r2, #0]
d0004a84:	f000 030f 	and.w	r3, r0, #15
d0004a88:	1100      	asrs	r0, r0, #4
d0004a8a:	461d      	mov	r5, r3
d0004a8c:	e762      	b.n	d0004954 <load_jpeg_image.constprop.0+0xfa4>
d0004a8e:	6812      	ldr	r2, [r2, #0]
d0004a90:	9208      	str	r2, [sp, #32]
d0004a92:	2a00      	cmp	r2, #0
d0004a94:	d18c      	bne.n	d00049b0 <load_jpeg_image.constprop.0+0x1000>
d0004a96:	2800      	cmp	r0, #0
d0004a98:	d18a      	bne.n	d00049b0 <load_jpeg_image.constprop.0+0x1000>
d0004a9a:	2b00      	cmp	r3, #0
d0004a9c:	d188      	bne.n	d00049b0 <load_jpeg_image.constprop.0+0x1000>
d0004a9e:	233f      	movs	r3, #63	; 0x3f
d0004aa0:	9c07      	ldr	r4, [sp, #28]
d0004aa2:	f244 77c0 	movw	r7, #18368	; 0x47c0
d0004aa6:	f244 76bc 	movw	r6, #18364	; 0x47bc
d0004aaa:	6023      	str	r3, [r4, #0]
d0004aac:	f244 75c8 	movw	r5, #18376	; 0x47c8
d0004ab0:	9c08      	ldr	r4, [sp, #32]
d0004ab2:	f244 7e8c 	movw	lr, #18316	; 0x478c
d0004ab6:	f244 7044 	movw	r0, #18244	; 0x4744
d0004aba:	f244 61fc 	movw	r1, #18172	; 0x46fc
d0004abe:	f84a 4007 	str.w	r4, [sl, r7]
d0004ac2:	eb0a 0907 	add.w	r9, sl, r7
d0004ac6:	4627      	mov	r7, r4
d0004ac8:	f84a 4006 	str.w	r4, [sl, r6]
d0004acc:	f84a 4005 	str.w	r4, [sl, r5]
d0004ad0:	f244 62b4 	movw	r2, #18100	; 0x46b4
d0004ad4:	f84a 400e 	str.w	r4, [sl, lr]
d0004ad8:	f644 0304 	movw	r3, #18436	; 0x4804
d0004adc:	f84a 7000 	str.w	r7, [sl, r0]
d0004ae0:	eb0a 0405 	add.w	r4, sl, r5
d0004ae4:	f84a 7001 	str.w	r7, [sl, r1]
d0004ae8:	4451      	add	r1, sl
d0004aea:	f04f 0cff 	mov.w	ip, #255	; 0xff
d0004aee:	f84a 7002 	str.w	r7, [sl, r2]
d0004af2:	9113      	str	r1, [sp, #76]	; 0x4c
d0004af4:	4450      	add	r0, sl
d0004af6:	9905      	ldr	r1, [sp, #20]
d0004af8:	4452      	add	r2, sl
d0004afa:	9416      	str	r4, [sp, #88]	; 0x58
d0004afc:	eb0a 040e 	add.w	r4, sl, lr
d0004b00:	f881 c000 	strb.w	ip, [r1]
d0004b04:	eb0a 0b06 	add.w	fp, sl, r6
d0004b08:	f85a 1003 	ldr.w	r1, [sl, r3]
d0004b0c:	4453      	add	r3, sl
d0004b0e:	9415      	str	r4, [sp, #84]	; 0x54
d0004b10:	9014      	str	r0, [sp, #80]	; 0x50
d0004b12:	9212      	str	r2, [sp, #72]	; 0x48
d0004b14:	9317      	str	r3, [sp, #92]	; 0x5c
d0004b16:	2900      	cmp	r1, #0
d0004b18:	f000 83c1 	beq.w	d000529e <load_jpeg_image.constprop.0+0x18ee>
d0004b1c:	f644 0208 	movw	r2, #18440	; 0x4808
d0004b20:	f84a 1002 	str.w	r1, [sl, r2]
d0004b24:	4452      	add	r2, sl
d0004b26:	f244 73e0 	movw	r3, #18400	; 0x47e0
d0004b2a:	920c      	str	r2, [sp, #48]	; 0x30
d0004b2c:	9a08      	ldr	r2, [sp, #32]
d0004b2e:	f84a 2003 	str.w	r2, [sl, r3]
d0004b32:	4453      	add	r3, sl
d0004b34:	9309      	str	r3, [sp, #36]	; 0x24
d0004b36:	f244 73f0 	movw	r3, #18416	; 0x47f0
d0004b3a:	f85a 3003 	ldr.w	r3, [sl, r3]
d0004b3e:	2b01      	cmp	r3, #1
d0004b40:	f000 8230 	beq.w	d0004fa4 <load_jpeg_image.constprop.0+0x15f4>
d0004b44:	f244 6390 	movw	r3, #18064	; 0x4690
d0004b48:	f85a 2003 	ldr.w	r2, [sl, r3]
d0004b4c:	4453      	add	r3, sl
d0004b4e:	2a00      	cmp	r2, #0
d0004b50:	9310      	str	r3, [sp, #64]	; 0x40
d0004b52:	f340 80ce 	ble.w	d0004cf2 <load_jpeg_image.constprop.0+0x1342>
d0004b56:	f244 638c 	movw	r3, #18060	; 0x468c
d0004b5a:	2000      	movs	r0, #0
d0004b5c:	f641 2144 	movw	r1, #6724	; 0x1a44
d0004b60:	f8cd b064 	str.w	fp, [sp, #100]	; 0x64
d0004b64:	900a      	str	r0, [sp, #40]	; 0x28
d0004b66:	46d3      	mov	fp, sl
d0004b68:	eb0a 0003 	add.w	r0, sl, r3
d0004b6c:	4451      	add	r1, sl
d0004b6e:	f85a 3003 	ldr.w	r3, [sl, r3]
d0004b72:	900f      	str	r0, [sp, #60]	; 0x3c
d0004b74:	910b      	str	r1, [sp, #44]	; 0x2c
d0004b76:	f8cd 9060 	str.w	r9, [sp, #96]	; 0x60
d0004b7a:	2b00      	cmp	r3, #0
d0004b7c:	f340 80a3 	ble.w	d0004cc6 <load_jpeg_image.constprop.0+0x1316>
d0004b80:	2300      	movs	r3, #0
d0004b82:	9308      	str	r3, [sp, #32]
d0004b84:	9b0d      	ldr	r3, [sp, #52]	; 0x34
d0004b86:	681a      	ldr	r2, [r3, #0]
d0004b88:	2a00      	cmp	r2, #0
d0004b8a:	f340 808b 	ble.w	d0004ca4 <load_jpeg_image.constprop.0+0x12f4>
d0004b8e:	f244 73f4 	movw	r3, #18420	; 0x47f4
d0004b92:	2100      	movs	r1, #0
d0004b94:	445b      	add	r3, fp
d0004b96:	9111      	str	r1, [sp, #68]	; 0x44
d0004b98:	930e      	str	r3, [sp, #56]	; 0x38
d0004b9a:	990e      	ldr	r1, [sp, #56]	; 0x38
d0004b9c:	f851 3b04 	ldr.w	r3, [r1], #4
d0004ba0:	9307      	str	r3, [sp, #28]
d0004ba2:	eb03 03c3 	add.w	r3, r3, r3, lsl #3
d0004ba6:	910e      	str	r1, [sp, #56]	; 0x38
d0004ba8:	f244 61a4 	movw	r1, #18084	; 0x46a4
d0004bac:	eb0b 03c3 	add.w	r3, fp, r3, lsl #3
d0004bb0:	585d      	ldr	r5, [r3, r1]
d0004bb2:	2d00      	cmp	r5, #0
d0004bb4:	dd70      	ble.n	d0004c98 <load_jpeg_image.constprop.0+0x12e8>
d0004bb6:	f244 62a0 	movw	r2, #18080	; 0x46a0
d0004bba:	2100      	movs	r1, #0
d0004bbc:	461e      	mov	r6, r3
d0004bbe:	589c      	ldr	r4, [r3, r2]
d0004bc0:	9104      	str	r1, [sp, #16]
d0004bc2:	2c00      	cmp	r4, #0
d0004bc4:	dd61      	ble.n	d0004c8a <load_jpeg_image.constprop.0+0x12da>
d0004bc6:	f244 6ab0 	movw	sl, #18096	; 0x46b0
d0004bca:	f244 69ac 	movw	r9, #18092	; 0x46ac
d0004bce:	f10b 0304 	add.w	r3, fp, #4
d0004bd2:	2700      	movs	r7, #0
d0004bd4:	44b2      	add	sl, r6
d0004bd6:	44b1      	add	r9, r6
d0004bd8:	f10d 0890 	add.w	r8, sp, #144	; 0x90
d0004bdc:	46ae      	mov	lr, r5
d0004bde:	9306      	str	r3, [sp, #24]
d0004be0:	e013      	b.n	d0004c0a <load_jpeg_image.constprop.0+0x125a>
d0004be2:	5871      	ldr	r1, [r6, r1]
d0004be4:	f856 000c 	ldr.w	r0, [r6, ip]
d0004be8:	fb01 f505 	mul.w	r5, r1, r5
d0004bec:	f85b 3003 	ldr.w	r3, [fp, r3]
d0004bf0:	eb04 04c5 	add.w	r4, r4, r5, lsl #3
d0004bf4:	4420      	add	r0, r4
d0004bf6:	4798      	blx	r3
d0004bf8:	f244 63a0 	movw	r3, #18080	; 0x46a0
d0004bfc:	58f4      	ldr	r4, [r6, r3]
d0004bfe:	f244 63a4 	movw	r3, #18084	; 0x46a4
d0004c02:	42bc      	cmp	r4, r7
d0004c04:	dd40      	ble.n	d0004c88 <load_jpeg_image.constprop.0+0x12d8>
d0004c06:	f856 e003 	ldr.w	lr, [r6, r3]
d0004c0a:	f244 62a8 	movw	r2, #18088	; 0x46a8
d0004c0e:	f8da 3000 	ldr.w	r3, [sl]
d0004c12:	9d08      	ldr	r5, [sp, #32]
d0004c14:	f243 4184 	movw	r1, #13444	; 0x3484
d0004c18:	58b2      	ldr	r2, [r6, r2]
d0004c1a:	eb0b 2c83 	add.w	ip, fp, r3, lsl #10
d0004c1e:	fb05 7404 	mla	r4, r5, r4, r7
d0004c22:	f243 6084 	movw	r0, #13956	; 0x3684
d0004c26:	9d07      	ldr	r5, [sp, #28]
d0004c28:	eb0b 12c2 	add.w	r2, fp, r2, lsl #7
d0004c2c:	4460      	add	r0, ip
d0004c2e:	f8d9 c000 	ldr.w	ip, [r9]
d0004c32:	4411      	add	r1, r2
d0004c34:	9501      	str	r5, [sp, #4]
d0004c36:	f44f 62d2 	mov.w	r2, #1680	; 0x690
d0004c3a:	9d0b      	ldr	r5, [sp, #44]	; 0x2c
d0004c3c:	9102      	str	r1, [sp, #8]
d0004c3e:	4641      	mov	r1, r8
d0004c40:	fb02 5303 	mla	r3, r2, r3, r5
d0004c44:	9d06      	ldr	r5, [sp, #24]
d0004c46:	9000      	str	r0, [sp, #0]
d0004c48:	4658      	mov	r0, fp
d0004c4a:	fb02 520c 	mla	r2, r2, ip, r5
d0004c4e:	9d0a      	ldr	r5, [sp, #40]	; 0x28
d0004c50:	00e4      	lsls	r4, r4, #3
d0004c52:	3701      	adds	r7, #1
d0004c54:	46ac      	mov	ip, r5
d0004c56:	9d04      	ldr	r5, [sp, #16]
d0004c58:	fb0e 550c 	mla	r5, lr, ip, r5
d0004c5c:	f7fd f95a 	bl	d0001f14 <stbi__jpeg_decode_block>
d0004c60:	f244 61c0 	movw	r1, #18112	; 0x46c0
d0004c64:	f244 6cc8 	movw	ip, #18120	; 0x46c8
d0004c68:	f644 030c 	movw	r3, #18444	; 0x480c
d0004c6c:	4642      	mov	r2, r8
d0004c6e:	2800      	cmp	r0, #0
d0004c70:	d1b7      	bne.n	d0004be2 <load_jpeg_image.constprop.0+0x1232>
d0004c72:	46da      	mov	sl, fp
d0004c74:	f7fe becb 	b.w	d0003a0e <load_jpeg_image.constprop.0+0x5e>
d0004c78:	d000e928 	.word	0xd000e928
d0004c7c:	d000de80 	.word	0xd000de80
d0004c80:	d000de68 	.word	0xd000de68
d0004c84:	d000de74 	.word	0xd000de74
d0004c88:	58f5      	ldr	r5, [r6, r3]
d0004c8a:	9b04      	ldr	r3, [sp, #16]
d0004c8c:	3301      	adds	r3, #1
d0004c8e:	42ab      	cmp	r3, r5
d0004c90:	9304      	str	r3, [sp, #16]
d0004c92:	db96      	blt.n	d0004bc2 <load_jpeg_image.constprop.0+0x1212>
d0004c94:	9b0d      	ldr	r3, [sp, #52]	; 0x34
d0004c96:	681a      	ldr	r2, [r3, #0]
d0004c98:	9b11      	ldr	r3, [sp, #68]	; 0x44
d0004c9a:	3301      	adds	r3, #1
d0004c9c:	4293      	cmp	r3, r2
d0004c9e:	9311      	str	r3, [sp, #68]	; 0x44
d0004ca0:	f6ff af7b 	blt.w	d0004b9a <load_jpeg_image.constprop.0+0x11ea>
d0004ca4:	9a0c      	ldr	r2, [sp, #48]	; 0x30
d0004ca6:	6813      	ldr	r3, [r2, #0]
d0004ca8:	3b01      	subs	r3, #1
d0004caa:	2b00      	cmp	r3, #0
d0004cac:	6013      	str	r3, [r2, #0]
d0004cae:	f340 8262 	ble.w	d0005176 <load_jpeg_image.constprop.0+0x17c6>
d0004cb2:	9a08      	ldr	r2, [sp, #32]
d0004cb4:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
d0004cb6:	3201      	adds	r2, #1
d0004cb8:	681b      	ldr	r3, [r3, #0]
d0004cba:	9208      	str	r2, [sp, #32]
d0004cbc:	429a      	cmp	r2, r3
d0004cbe:	f6ff af61 	blt.w	d0004b84 <load_jpeg_image.constprop.0+0x11d4>
d0004cc2:	9a10      	ldr	r2, [sp, #64]	; 0x40
d0004cc4:	6812      	ldr	r2, [r2, #0]
d0004cc6:	990a      	ldr	r1, [sp, #40]	; 0x28
d0004cc8:	3101      	adds	r1, #1
d0004cca:	4291      	cmp	r1, r2
d0004ccc:	910a      	str	r1, [sp, #40]	; 0x28
d0004cce:	f6ff af54 	blt.w	d0004b7a <load_jpeg_image.constprop.0+0x11ca>
d0004cd2:	46da      	mov	sl, fp
d0004cd4:	9b05      	ldr	r3, [sp, #20]
d0004cd6:	781b      	ldrb	r3, [r3, #0]
d0004cd8:	2bff      	cmp	r3, #255	; 0xff
d0004cda:	d00a      	beq.n	d0004cf2 <load_jpeg_image.constprop.0+0x1342>
d0004cdc:	f1a3 02d0 	sub.w	r2, r3, #208	; 0xd0
d0004ce0:	21ff      	movs	r1, #255	; 0xff
d0004ce2:	9805      	ldr	r0, [sp, #20]
d0004ce4:	2a07      	cmp	r2, #7
d0004ce6:	7001      	strb	r1, [r0, #0]
d0004ce8:	f240 80d7 	bls.w	d0004e9a <load_jpeg_image.constprop.0+0x14ea>
d0004cec:	4619      	mov	r1, r3
d0004cee:	f7fe bee9 	b.w	d0003ac4 <load_jpeg_image.constprop.0+0x114>
d0004cf2:	f8da 4000 	ldr.w	r4, [sl]
d0004cf6:	6923      	ldr	r3, [r4, #16]
d0004cf8:	b133      	cbz	r3, d0004d08 <load_jpeg_image.constprop.0+0x1358>
d0004cfa:	69a3      	ldr	r3, [r4, #24]
d0004cfc:	69e0      	ldr	r0, [r4, #28]
d0004cfe:	4798      	blx	r3
d0004d00:	b140      	cbz	r0, d0004d14 <load_jpeg_image.constprop.0+0x1364>
d0004d02:	6a23      	ldr	r3, [r4, #32]
d0004d04:	2b00      	cmp	r3, #0
d0004d06:	d07a      	beq.n	d0004dfe <load_jpeg_image.constprop.0+0x144e>
d0004d08:	f8d4 20ac 	ldr.w	r2, [r4, #172]	; 0xac
d0004d0c:	f8d4 30b0 	ldr.w	r3, [r4, #176]	; 0xb0
d0004d10:	429a      	cmp	r2, r3
d0004d12:	d274      	bcs.n	d0004dfe <load_jpeg_image.constprop.0+0x144e>
d0004d14:	f8da 4000 	ldr.w	r4, [sl]
d0004d18:	f8d4 30ac 	ldr.w	r3, [r4, #172]	; 0xac
d0004d1c:	f8d4 20b0 	ldr.w	r2, [r4, #176]	; 0xb0
d0004d20:	4293      	cmp	r3, r2
d0004d22:	f0c0 81f9 	bcc.w	d0005118 <load_jpeg_image.constprop.0+0x1768>
d0004d26:	6a23      	ldr	r3, [r4, #32]
d0004d28:	2b00      	cmp	r3, #0
d0004d2a:	d0e4      	beq.n	d0004cf6 <load_jpeg_image.constprop.0+0x1346>
d0004d2c:	f104 0528 	add.w	r5, r4, #40	; 0x28
d0004d30:	6923      	ldr	r3, [r4, #16]
d0004d32:	6a62      	ldr	r2, [r4, #36]	; 0x24
d0004d34:	4629      	mov	r1, r5
d0004d36:	69e0      	ldr	r0, [r4, #28]
d0004d38:	4798      	blx	r3
d0004d3a:	f8d4 20ac 	ldr.w	r2, [r4, #172]	; 0xac
d0004d3e:	f8d4 10b4 	ldr.w	r1, [r4, #180]	; 0xb4
d0004d42:	f8d4 30a8 	ldr.w	r3, [r4, #168]	; 0xa8
d0004d46:	1a52      	subs	r2, r2, r1
d0004d48:	4413      	add	r3, r2
d0004d4a:	f8c4 30a8 	str.w	r3, [r4, #168]	; 0xa8
d0004d4e:	2800      	cmp	r0, #0
d0004d50:	f040 820b 	bne.w	d000516a <load_jpeg_image.constprop.0+0x17ba>
d0004d54:	f104 0529 	add.w	r5, r4, #41	; 0x29
d0004d58:	4603      	mov	r3, r0
d0004d5a:	6220      	str	r0, [r4, #32]
d0004d5c:	4629      	mov	r1, r5
d0004d5e:	f884 0028 	strb.w	r0, [r4, #40]	; 0x28
d0004d62:	f8c4 50b0 	str.w	r5, [r4, #176]	; 0xb0
d0004d66:	f8c4 10ac 	str.w	r1, [r4, #172]	; 0xac
d0004d6a:	f8da 4000 	ldr.w	r4, [sl]
d0004d6e:	2bff      	cmp	r3, #255	; 0xff
d0004d70:	d1c1      	bne.n	d0004cf6 <load_jpeg_image.constprop.0+0x1346>
d0004d72:	6923      	ldr	r3, [r4, #16]
d0004d74:	b133      	cbz	r3, d0004d84 <load_jpeg_image.constprop.0+0x13d4>
d0004d76:	69a3      	ldr	r3, [r4, #24]
d0004d78:	69e0      	ldr	r0, [r4, #28]
d0004d7a:	4798      	blx	r3
d0004d7c:	b140      	cbz	r0, d0004d90 <load_jpeg_image.constprop.0+0x13e0>
d0004d7e:	6a23      	ldr	r3, [r4, #32]
d0004d80:	2b00      	cmp	r3, #0
d0004d82:	d03c      	beq.n	d0004dfe <load_jpeg_image.constprop.0+0x144e>
d0004d84:	f8d4 20ac 	ldr.w	r2, [r4, #172]	; 0xac
d0004d88:	f8d4 30b0 	ldr.w	r3, [r4, #176]	; 0xb0
d0004d8c:	429a      	cmp	r2, r3
d0004d8e:	d236      	bcs.n	d0004dfe <load_jpeg_image.constprop.0+0x144e>
d0004d90:	f8da 4000 	ldr.w	r4, [sl]
d0004d94:	f8d4 30ac 	ldr.w	r3, [r4, #172]	; 0xac
d0004d98:	f8d4 20b0 	ldr.w	r2, [r4, #176]	; 0xb0
d0004d9c:	4293      	cmp	r3, r2
d0004d9e:	d322      	bcc.n	d0004de6 <load_jpeg_image.constprop.0+0x1436>
d0004da0:	6a23      	ldr	r3, [r4, #32]
d0004da2:	2b00      	cmp	r3, #0
d0004da4:	d0a7      	beq.n	d0004cf6 <load_jpeg_image.constprop.0+0x1346>
d0004da6:	f104 0528 	add.w	r5, r4, #40	; 0x28
d0004daa:	6923      	ldr	r3, [r4, #16]
d0004dac:	6a62      	ldr	r2, [r4, #36]	; 0x24
d0004dae:	4629      	mov	r1, r5
d0004db0:	69e0      	ldr	r0, [r4, #28]
d0004db2:	4798      	blx	r3
d0004db4:	f8d4 20ac 	ldr.w	r2, [r4, #172]	; 0xac
d0004db8:	f8d4 10b4 	ldr.w	r1, [r4, #180]	; 0xb4
d0004dbc:	f8d4 30a8 	ldr.w	r3, [r4, #168]	; 0xa8
d0004dc0:	1a52      	subs	r2, r2, r1
d0004dc2:	4413      	add	r3, r2
d0004dc4:	f8c4 30a8 	str.w	r3, [r4, #168]	; 0xa8
d0004dc8:	2800      	cmp	r0, #0
d0004dca:	f040 81aa 	bne.w	d0005122 <load_jpeg_image.constprop.0+0x1772>
d0004dce:	f104 0329 	add.w	r3, r4, #41	; 0x29
d0004dd2:	6220      	str	r0, [r4, #32]
d0004dd4:	f884 0028 	strb.w	r0, [r4, #40]	; 0x28
d0004dd8:	f8c4 30b0 	str.w	r3, [r4, #176]	; 0xb0
d0004ddc:	f8c4 30ac 	str.w	r3, [r4, #172]	; 0xac
d0004de0:	f8da 4000 	ldr.w	r4, [sl]
d0004de4:	e787      	b.n	d0004cf6 <load_jpeg_image.constprop.0+0x1346>
d0004de6:	1c5a      	adds	r2, r3, #1
d0004de8:	f8c4 20ac 	str.w	r2, [r4, #172]	; 0xac
d0004dec:	781b      	ldrb	r3, [r3, #0]
d0004dee:	1e5a      	subs	r2, r3, #1
d0004df0:	b2d2      	uxtb	r2, r2
d0004df2:	2afd      	cmp	r2, #253	; 0xfd
d0004df4:	f240 818a 	bls.w	d000510c <load_jpeg_image.constprop.0+0x175c>
d0004df8:	f8da 4000 	ldr.w	r4, [sl]
d0004dfc:	e7b7      	b.n	d0004d6e <load_jpeg_image.constprop.0+0x13be>
d0004dfe:	23ff      	movs	r3, #255	; 0xff
d0004e00:	9a05      	ldr	r2, [sp, #20]
d0004e02:	7013      	strb	r3, [r2, #0]
d0004e04:	f8da 4000 	ldr.w	r4, [sl]
d0004e08:	f8d4 30ac 	ldr.w	r3, [r4, #172]	; 0xac
d0004e0c:	f8d4 20b0 	ldr.w	r2, [r4, #176]	; 0xb0
d0004e10:	4293      	cmp	r3, r2
d0004e12:	f0c0 8176 	bcc.w	d0005102 <load_jpeg_image.constprop.0+0x1752>
d0004e16:	6a23      	ldr	r3, [r4, #32]
d0004e18:	2b00      	cmp	r3, #0
d0004e1a:	f43e ae70 	beq.w	d0003afe <load_jpeg_image.constprop.0+0x14e>
d0004e1e:	f104 0628 	add.w	r6, r4, #40	; 0x28
d0004e22:	6923      	ldr	r3, [r4, #16]
d0004e24:	6a62      	ldr	r2, [r4, #36]	; 0x24
d0004e26:	4631      	mov	r1, r6
d0004e28:	69e0      	ldr	r0, [r4, #28]
d0004e2a:	4798      	blx	r3
d0004e2c:	f8d4 20ac 	ldr.w	r2, [r4, #172]	; 0xac
d0004e30:	f8d4 50b4 	ldr.w	r5, [r4, #180]	; 0xb4
d0004e34:	f8d4 30a8 	ldr.w	r3, [r4, #168]	; 0xa8
d0004e38:	1b52      	subs	r2, r2, r5
d0004e3a:	4413      	add	r3, r2
d0004e3c:	f8c4 30a8 	str.w	r3, [r4, #168]	; 0xa8
d0004e40:	2800      	cmp	r0, #0
d0004e42:	f43f acb4 	beq.w	d00047ae <load_jpeg_image.constprop.0+0xdfe>
d0004e46:	4430      	add	r0, r6
d0004e48:	f104 0229 	add.w	r2, r4, #41	; 0x29
d0004e4c:	f894 3028 	ldrb.w	r3, [r4, #40]	; 0x28
d0004e50:	f8c4 00b0 	str.w	r0, [r4, #176]	; 0xb0
d0004e54:	f8c4 20ac 	str.w	r2, [r4, #172]	; 0xac
d0004e58:	2bff      	cmp	r3, #255	; 0xff
d0004e5a:	f47e ae50 	bne.w	d0003afe <load_jpeg_image.constprop.0+0x14e>
d0004e5e:	f8da 4000 	ldr.w	r4, [sl]
d0004e62:	f8d4 30ac 	ldr.w	r3, [r4, #172]	; 0xac
d0004e66:	f8d4 20b0 	ldr.w	r2, [r4, #176]	; 0xb0
d0004e6a:	4293      	cmp	r3, r2
d0004e6c:	d305      	bcc.n	d0004e7a <load_jpeg_image.constprop.0+0x14ca>
d0004e6e:	6a23      	ldr	r3, [r4, #32]
d0004e70:	2b00      	cmp	r3, #0
d0004e72:	d178      	bne.n	d0004f66 <load_jpeg_image.constprop.0+0x15b6>
d0004e74:	2100      	movs	r1, #0
d0004e76:	f7fe be2d 	b.w	d0003ad4 <load_jpeg_image.constprop.0+0x124>
d0004e7a:	1c5a      	adds	r2, r3, #1
d0004e7c:	f8c4 20ac 	str.w	r2, [r4, #172]	; 0xac
d0004e80:	7819      	ldrb	r1, [r3, #0]
d0004e82:	29ff      	cmp	r1, #255	; 0xff
d0004e84:	d0eb      	beq.n	d0004e5e <load_jpeg_image.constprop.0+0x14ae>
d0004e86:	f1a1 03d0 	sub.w	r3, r1, #208	; 0xd0
d0004e8a:	2b07      	cmp	r3, #7
d0004e8c:	f63e ae1a 	bhi.w	d0003ac4 <load_jpeg_image.constprop.0+0x114>
d0004e90:	9a05      	ldr	r2, [sp, #20]
d0004e92:	7811      	ldrb	r1, [r2, #0]
d0004e94:	29ff      	cmp	r1, #255	; 0xff
d0004e96:	f47e ae13 	bne.w	d0003ac0 <load_jpeg_image.constprop.0+0x110>
d0004e9a:	f8da 4000 	ldr.w	r4, [sl]
d0004e9e:	f8d4 30ac 	ldr.w	r3, [r4, #172]	; 0xac
d0004ea2:	f8d4 20b0 	ldr.w	r2, [r4, #176]	; 0xb0
d0004ea6:	4293      	cmp	r3, r2
d0004ea8:	f0c0 8147 	bcc.w	d000513a <load_jpeg_image.constprop.0+0x178a>
d0004eac:	6a23      	ldr	r3, [r4, #32]
d0004eae:	2b00      	cmp	r3, #0
d0004eb0:	f43e ae25 	beq.w	d0003afe <load_jpeg_image.constprop.0+0x14e>
d0004eb4:	f104 0528 	add.w	r5, r4, #40	; 0x28
d0004eb8:	6923      	ldr	r3, [r4, #16]
d0004eba:	6a62      	ldr	r2, [r4, #36]	; 0x24
d0004ebc:	4629      	mov	r1, r5
d0004ebe:	69e0      	ldr	r0, [r4, #28]
d0004ec0:	4798      	blx	r3
d0004ec2:	f8d4 30ac 	ldr.w	r3, [r4, #172]	; 0xac
d0004ec6:	f8d4 20b4 	ldr.w	r2, [r4, #180]	; 0xb4
d0004eca:	f8d4 10a8 	ldr.w	r1, [r4, #168]	; 0xa8
d0004ece:	1a9b      	subs	r3, r3, r2
d0004ed0:	4419      	add	r1, r3
d0004ed2:	f8c4 10a8 	str.w	r1, [r4, #168]	; 0xa8
d0004ed6:	2800      	cmp	r0, #0
d0004ed8:	f43f ac69 	beq.w	d00047ae <load_jpeg_image.constprop.0+0xdfe>
d0004edc:	4428      	add	r0, r5
d0004ede:	f104 0229 	add.w	r2, r4, #41	; 0x29
d0004ee2:	f894 3028 	ldrb.w	r3, [r4, #40]	; 0x28
d0004ee6:	f8c4 00b0 	str.w	r0, [r4, #176]	; 0xb0
d0004eea:	f8c4 20ac 	str.w	r2, [r4, #172]	; 0xac
d0004eee:	2bff      	cmp	r3, #255	; 0xff
d0004ef0:	f47e ae05 	bne.w	d0003afe <load_jpeg_image.constprop.0+0x14e>
d0004ef4:	f8da 4000 	ldr.w	r4, [sl]
d0004ef8:	f8d4 30ac 	ldr.w	r3, [r4, #172]	; 0xac
d0004efc:	f8d4 20b0 	ldr.w	r2, [r4, #176]	; 0xb0
d0004f00:	4293      	cmp	r3, r2
d0004f02:	d32b      	bcc.n	d0004f5c <load_jpeg_image.constprop.0+0x15ac>
d0004f04:	6a21      	ldr	r1, [r4, #32]
d0004f06:	2900      	cmp	r1, #0
d0004f08:	f43e ade4 	beq.w	d0003ad4 <load_jpeg_image.constprop.0+0x124>
d0004f0c:	f104 0528 	add.w	r5, r4, #40	; 0x28
d0004f10:	6923      	ldr	r3, [r4, #16]
d0004f12:	6a62      	ldr	r2, [r4, #36]	; 0x24
d0004f14:	f104 0629 	add.w	r6, r4, #41	; 0x29
d0004f18:	4629      	mov	r1, r5
d0004f1a:	69e0      	ldr	r0, [r4, #28]
d0004f1c:	4798      	blx	r3
d0004f1e:	f8d4 30ac 	ldr.w	r3, [r4, #172]	; 0xac
d0004f22:	f8d4 20b4 	ldr.w	r2, [r4, #180]	; 0xb4
d0004f26:	4405      	add	r5, r0
d0004f28:	1a9a      	subs	r2, r3, r2
d0004f2a:	f8d4 30a8 	ldr.w	r3, [r4, #168]	; 0xa8
d0004f2e:	4413      	add	r3, r2
d0004f30:	f8c4 30a8 	str.w	r3, [r4, #168]	; 0xa8
d0004f34:	2800      	cmp	r0, #0
d0004f36:	f43e afd1 	beq.w	d0003edc <load_jpeg_image.constprop.0+0x52c>
d0004f3a:	f894 1028 	ldrb.w	r1, [r4, #40]	; 0x28
d0004f3e:	f8c4 50b0 	str.w	r5, [r4, #176]	; 0xb0
d0004f42:	f8c4 60ac 	str.w	r6, [r4, #172]	; 0xac
d0004f46:	29ff      	cmp	r1, #255	; 0xff
d0004f48:	f47e adbc 	bne.w	d0003ac4 <load_jpeg_image.constprop.0+0x114>
d0004f4c:	f8da 4000 	ldr.w	r4, [sl]
d0004f50:	f8d4 30ac 	ldr.w	r3, [r4, #172]	; 0xac
d0004f54:	f8d4 20b0 	ldr.w	r2, [r4, #176]	; 0xb0
d0004f58:	4293      	cmp	r3, r2
d0004f5a:	d2d3      	bcs.n	d0004f04 <load_jpeg_image.constprop.0+0x1554>
d0004f5c:	1c5a      	adds	r2, r3, #1
d0004f5e:	f8c4 20ac 	str.w	r2, [r4, #172]	; 0xac
d0004f62:	7819      	ldrb	r1, [r3, #0]
d0004f64:	e7ef      	b.n	d0004f46 <load_jpeg_image.constprop.0+0x1596>
d0004f66:	f104 0528 	add.w	r5, r4, #40	; 0x28
d0004f6a:	6923      	ldr	r3, [r4, #16]
d0004f6c:	6a62      	ldr	r2, [r4, #36]	; 0x24
d0004f6e:	f104 0629 	add.w	r6, r4, #41	; 0x29
d0004f72:	4629      	mov	r1, r5
d0004f74:	69e0      	ldr	r0, [r4, #28]
d0004f76:	4798      	blx	r3
d0004f78:	f8d4 30ac 	ldr.w	r3, [r4, #172]	; 0xac
d0004f7c:	f8d4 20b4 	ldr.w	r2, [r4, #180]	; 0xb4
d0004f80:	4405      	add	r5, r0
d0004f82:	1a9a      	subs	r2, r3, r2
d0004f84:	f8d4 30a8 	ldr.w	r3, [r4, #168]	; 0xa8
d0004f88:	4413      	add	r3, r2
d0004f8a:	f8c4 30a8 	str.w	r3, [r4, #168]	; 0xa8
d0004f8e:	2800      	cmp	r0, #0
d0004f90:	f040 80b0 	bne.w	d00050f4 <load_jpeg_image.constprop.0+0x1744>
d0004f94:	6220      	str	r0, [r4, #32]
d0004f96:	f884 0028 	strb.w	r0, [r4, #40]	; 0x28
d0004f9a:	f8c4 60b0 	str.w	r6, [r4, #176]	; 0xb0
d0004f9e:	f8c4 60ac 	str.w	r6, [r4, #172]	; 0xac
d0004fa2:	e767      	b.n	d0004e74 <load_jpeg_image.constprop.0+0x14c4>
d0004fa4:	f244 71f4 	movw	r1, #18420	; 0x47f4
d0004fa8:	f244 62bc 	movw	r2, #18108	; 0x46bc
d0004fac:	f244 63b8 	movw	r3, #18104	; 0x46b8
d0004fb0:	f85a 1001 	ldr.w	r1, [sl, r1]
d0004fb4:	eb01 05c1 	add.w	r5, r1, r1, lsl #3
d0004fb8:	9106      	str	r1, [sp, #24]
d0004fba:	eb0a 05c5 	add.w	r5, sl, r5, lsl #3
d0004fbe:	58aa      	ldr	r2, [r5, r2]
d0004fc0:	58eb      	ldr	r3, [r5, r3]
d0004fc2:	3207      	adds	r2, #7
d0004fc4:	3307      	adds	r3, #7
d0004fc6:	10d2      	asrs	r2, r2, #3
d0004fc8:	10db      	asrs	r3, r3, #3
d0004fca:	2a00      	cmp	r2, #0
d0004fcc:	920e      	str	r2, [sp, #56]	; 0x38
d0004fce:	930d      	str	r3, [sp, #52]	; 0x34
d0004fd0:	f77f ae8f 	ble.w	d0004cf2 <load_jpeg_image.constprop.0+0x1342>
d0004fd4:	00db      	lsls	r3, r3, #3
d0004fd6:	9e0c      	ldr	r6, [sp, #48]	; 0x30
d0004fd8:	f8cd b02c 	str.w	fp, [sp, #44]	; 0x2c
d0004fdc:	9307      	str	r3, [sp, #28]
d0004fde:	f8cd 9028 	str.w	r9, [sp, #40]	; 0x28
d0004fe2:	9b0d      	ldr	r3, [sp, #52]	; 0x34
d0004fe4:	2b00      	cmp	r3, #0
d0004fe6:	dd79      	ble.n	d00050dc <load_jpeg_image.constprop.0+0x172c>
d0004fe8:	f641 2b44 	movw	fp, #6724	; 0x1a44
d0004fec:	f244 69b0 	movw	r9, #18096	; 0x46b0
d0004ff0:	f244 68ac 	movw	r8, #18092	; 0x46ac
d0004ff4:	f10a 0304 	add.w	r3, sl, #4
d0004ff8:	af24      	add	r7, sp, #144	; 0x90
d0004ffa:	44d3      	add	fp, sl
d0004ffc:	44a9      	add	r9, r5
d0004ffe:	44a8      	add	r8, r5
d0005000:	2400      	movs	r4, #0
d0005002:	ee08 7a10 	vmov	s16, r7
d0005006:	9304      	str	r3, [sp, #16]
d0005008:	e002      	b.n	d0005010 <load_jpeg_image.constprop.0+0x1660>
d000500a:	9b07      	ldr	r3, [sp, #28]
d000500c:	429c      	cmp	r4, r3
d000500e:	d065      	beq.n	d00050dc <load_jpeg_image.constprop.0+0x172c>
d0005010:	f244 62a8 	movw	r2, #18088	; 0x46a8
d0005014:	f8d9 3000 	ldr.w	r3, [r9]
d0005018:	9f06      	ldr	r7, [sp, #24]
d000501a:	f243 4184 	movw	r1, #13444	; 0x3484
d000501e:	58aa      	ldr	r2, [r5, r2]
d0005020:	eb0a 2c83 	add.w	ip, sl, r3, lsl #10
d0005024:	f243 6084 	movw	r0, #13956	; 0x3684
d0005028:	eb0a 12c2 	add.w	r2, sl, r2, lsl #7
d000502c:	4460      	add	r0, ip
d000502e:	f8d8 c000 	ldr.w	ip, [r8]
d0005032:	4411      	add	r1, r2
d0005034:	9701      	str	r7, [sp, #4]
d0005036:	f44f 62d2 	mov.w	r2, #1680	; 0x690
d000503a:	9f04      	ldr	r7, [sp, #16]
d000503c:	9102      	str	r1, [sp, #8]
d000503e:	ee18 1a10 	vmov	r1, s16
d0005042:	fb02 b303 	mla	r3, r2, r3, fp
d0005046:	9000      	str	r0, [sp, #0]
d0005048:	4650      	mov	r0, sl
d000504a:	fb02 720c 	mla	r2, r2, ip, r7
d000504e:	f7fc ff61 	bl	d0001f14 <stbi__jpeg_decode_block>
d0005052:	f244 61c0 	movw	r1, #18112	; 0x46c0
d0005056:	f244 6cc8 	movw	ip, #18120	; 0x46c8
d000505a:	f644 030c 	movw	r3, #18444	; 0x480c
d000505e:	ee18 2a10 	vmov	r2, s16
d0005062:	2800      	cmp	r0, #0
d0005064:	f43e acd3 	beq.w	d0003a0e <load_jpeg_image.constprop.0+0x5e>
d0005068:	5869      	ldr	r1, [r5, r1]
d000506a:	9f08      	ldr	r7, [sp, #32]
d000506c:	f855 000c 	ldr.w	r0, [r5, ip]
d0005070:	fb07 fc01 	mul.w	ip, r7, r1
d0005074:	f85a 3003 	ldr.w	r3, [sl, r3]
d0005078:	eb04 0ccc 	add.w	ip, r4, ip, lsl #3
d000507c:	3408      	adds	r4, #8
d000507e:	4460      	add	r0, ip
d0005080:	4798      	blx	r3
d0005082:	6833      	ldr	r3, [r6, #0]
d0005084:	3b01      	subs	r3, #1
d0005086:	2b00      	cmp	r3, #0
d0005088:	6033      	str	r3, [r6, #0]
d000508a:	dcbe      	bgt.n	d000500a <load_jpeg_image.constprop.0+0x165a>
d000508c:	9b0a      	ldr	r3, [sp, #40]	; 0x28
d000508e:	681b      	ldr	r3, [r3, #0]
d0005090:	2b17      	cmp	r3, #23
d0005092:	dd2b      	ble.n	d00050ec <load_jpeg_image.constprop.0+0x173c>
d0005094:	9805      	ldr	r0, [sp, #20]
d0005096:	2300      	movs	r3, #0
d0005098:	21ff      	movs	r1, #255	; 0xff
d000509a:	7802      	ldrb	r2, [r0, #0]
d000509c:	3230      	adds	r2, #48	; 0x30
d000509e:	b2d2      	uxtb	r2, r2
d00050a0:	2a07      	cmp	r2, #7
d00050a2:	f63f ae17 	bhi.w	d0004cd4 <load_jpeg_image.constprop.0+0x1324>
d00050a6:	9a0a      	ldr	r2, [sp, #40]	; 0x28
d00050a8:	6013      	str	r3, [r2, #0]
d00050aa:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
d00050ac:	6013      	str	r3, [r2, #0]
d00050ae:	9a16      	ldr	r2, [sp, #88]	; 0x58
d00050b0:	6013      	str	r3, [r2, #0]
d00050b2:	9a15      	ldr	r2, [sp, #84]	; 0x54
d00050b4:	6013      	str	r3, [r2, #0]
d00050b6:	9a14      	ldr	r2, [sp, #80]	; 0x50
d00050b8:	6013      	str	r3, [r2, #0]
d00050ba:	9a13      	ldr	r2, [sp, #76]	; 0x4c
d00050bc:	6013      	str	r3, [r2, #0]
d00050be:	9a12      	ldr	r2, [sp, #72]	; 0x48
d00050c0:	6013      	str	r3, [r2, #0]
d00050c2:	9a17      	ldr	r2, [sp, #92]	; 0x5c
d00050c4:	7001      	strb	r1, [r0, #0]
d00050c6:	6812      	ldr	r2, [r2, #0]
d00050c8:	429a      	cmp	r2, r3
d00050ca:	bf08      	it	eq
d00050cc:	f06f 4200 	mvneq.w	r2, #2147483648	; 0x80000000
d00050d0:	6032      	str	r2, [r6, #0]
d00050d2:	9a09      	ldr	r2, [sp, #36]	; 0x24
d00050d4:	6013      	str	r3, [r2, #0]
d00050d6:	9b07      	ldr	r3, [sp, #28]
d00050d8:	429c      	cmp	r4, r3
d00050da:	d199      	bne.n	d0005010 <load_jpeg_image.constprop.0+0x1660>
d00050dc:	9b08      	ldr	r3, [sp, #32]
d00050de:	9a0e      	ldr	r2, [sp, #56]	; 0x38
d00050e0:	3301      	adds	r3, #1
d00050e2:	429a      	cmp	r2, r3
d00050e4:	9308      	str	r3, [sp, #32]
d00050e6:	f47f af7c 	bne.w	d0004fe2 <load_jpeg_image.constprop.0+0x1632>
d00050ea:	e5f3      	b.n	d0004cd4 <load_jpeg_image.constprop.0+0x1324>
d00050ec:	4650      	mov	r0, sl
d00050ee:	f7fc fda5 	bl	d0001c3c <stbi__grow_buffer_unsafe>
d00050f2:	e7cf      	b.n	d0005094 <load_jpeg_image.constprop.0+0x16e4>
d00050f4:	f894 1028 	ldrb.w	r1, [r4, #40]	; 0x28
d00050f8:	f8c4 50b0 	str.w	r5, [r4, #176]	; 0xb0
d00050fc:	f8c4 60ac 	str.w	r6, [r4, #172]	; 0xac
d0005100:	e6bf      	b.n	d0004e82 <load_jpeg_image.constprop.0+0x14d2>
d0005102:	1c5a      	adds	r2, r3, #1
d0005104:	f8c4 20ac 	str.w	r2, [r4, #172]	; 0xac
d0005108:	781b      	ldrb	r3, [r3, #0]
d000510a:	e6a5      	b.n	d0004e58 <load_jpeg_image.constprop.0+0x14a8>
d000510c:	9a05      	ldr	r2, [sp, #20]
d000510e:	2bff      	cmp	r3, #255	; 0xff
d0005110:	7013      	strb	r3, [r2, #0]
d0005112:	f43f ae77 	beq.w	d0004e04 <load_jpeg_image.constprop.0+0x1454>
d0005116:	e5e1      	b.n	d0004cdc <load_jpeg_image.constprop.0+0x132c>
d0005118:	1c5a      	adds	r2, r3, #1
d000511a:	f8c4 20ac 	str.w	r2, [r4, #172]	; 0xac
d000511e:	781b      	ldrb	r3, [r3, #0]
d0005120:	e625      	b.n	d0004d6e <load_jpeg_image.constprop.0+0x13be>
d0005122:	f894 3028 	ldrb.w	r3, [r4, #40]	; 0x28
d0005126:	4428      	add	r0, r5
d0005128:	f104 0129 	add.w	r1, r4, #41	; 0x29
d000512c:	1e5a      	subs	r2, r3, #1
d000512e:	f8c4 00b0 	str.w	r0, [r4, #176]	; 0xb0
d0005132:	f8c4 10ac 	str.w	r1, [r4, #172]	; 0xac
d0005136:	b2d2      	uxtb	r2, r2
d0005138:	e65b      	b.n	d0004df2 <load_jpeg_image.constprop.0+0x1442>
d000513a:	1c5a      	adds	r2, r3, #1
d000513c:	f8c4 20ac 	str.w	r2, [r4, #172]	; 0xac
d0005140:	781b      	ldrb	r3, [r3, #0]
d0005142:	e6d4      	b.n	d0004eee <load_jpeg_image.constprop.0+0x153e>
d0005144:	4bb3      	ldr	r3, [pc, #716]	; (d0005414 <load_jpeg_image.constprop.0+0x1a64>)
d0005146:	4ab4      	ldr	r2, [pc, #720]	; (d0005418 <load_jpeg_image.constprop.0+0x1a68>)
d0005148:	f8d5 c008 	ldr.w	ip, [r5, #8]
d000514c:	601a      	str	r2, [r3, #0]
d000514e:	f7fe bc62 	b.w	d0003a16 <load_jpeg_image.constprop.0+0x66>
d0005152:	4bb0      	ldr	r3, [pc, #704]	; (d0005414 <load_jpeg_image.constprop.0+0x1a64>)
d0005154:	4ab1      	ldr	r2, [pc, #708]	; (d000541c <load_jpeg_image.constprop.0+0x1a6c>)
d0005156:	f8d5 c008 	ldr.w	ip, [r5, #8]
d000515a:	601a      	str	r2, [r3, #0]
d000515c:	f7fe bc5b 	b.w	d0003a16 <load_jpeg_image.constprop.0+0x66>
d0005160:	1c51      	adds	r1, r2, #1
d0005162:	f8c6 10ac 	str.w	r1, [r6, #172]	; 0xac
d0005166:	7810      	ldrb	r0, [r2, #0]
d0005168:	e472      	b.n	d0004a50 <load_jpeg_image.constprop.0+0x10a0>
d000516a:	4405      	add	r5, r0
d000516c:	f894 3028 	ldrb.w	r3, [r4, #40]	; 0x28
d0005170:	f104 0129 	add.w	r1, r4, #41	; 0x29
d0005174:	e5f5      	b.n	d0004d62 <load_jpeg_image.constprop.0+0x13b2>
d0005176:	9b18      	ldr	r3, [sp, #96]	; 0x60
d0005178:	681b      	ldr	r3, [r3, #0]
d000517a:	2b17      	cmp	r3, #23
d000517c:	f340 8426 	ble.w	d00059cc <load_jpeg_image.constprop.0+0x201c>
d0005180:	9905      	ldr	r1, [sp, #20]
d0005182:	780b      	ldrb	r3, [r1, #0]
d0005184:	3330      	adds	r3, #48	; 0x30
d0005186:	b2db      	uxtb	r3, r3
d0005188:	2b07      	cmp	r3, #7
d000518a:	f63f ada2 	bhi.w	d0004cd2 <load_jpeg_image.constprop.0+0x1322>
d000518e:	2300      	movs	r3, #0
d0005190:	9818      	ldr	r0, [sp, #96]	; 0x60
d0005192:	22ff      	movs	r2, #255	; 0xff
d0005194:	6003      	str	r3, [r0, #0]
d0005196:	9819      	ldr	r0, [sp, #100]	; 0x64
d0005198:	6003      	str	r3, [r0, #0]
d000519a:	9816      	ldr	r0, [sp, #88]	; 0x58
d000519c:	6003      	str	r3, [r0, #0]
d000519e:	9815      	ldr	r0, [sp, #84]	; 0x54
d00051a0:	6003      	str	r3, [r0, #0]
d00051a2:	9814      	ldr	r0, [sp, #80]	; 0x50
d00051a4:	6003      	str	r3, [r0, #0]
d00051a6:	9813      	ldr	r0, [sp, #76]	; 0x4c
d00051a8:	6003      	str	r3, [r0, #0]
d00051aa:	9812      	ldr	r0, [sp, #72]	; 0x48
d00051ac:	6003      	str	r3, [r0, #0]
d00051ae:	700a      	strb	r2, [r1, #0]
d00051b0:	9a17      	ldr	r2, [sp, #92]	; 0x5c
d00051b2:	990c      	ldr	r1, [sp, #48]	; 0x30
d00051b4:	6812      	ldr	r2, [r2, #0]
d00051b6:	429a      	cmp	r2, r3
d00051b8:	bf08      	it	eq
d00051ba:	f06f 4200 	mvneq.w	r2, #2147483648	; 0x80000000
d00051be:	600a      	str	r2, [r1, #0]
d00051c0:	9a09      	ldr	r2, [sp, #36]	; 0x24
d00051c2:	6013      	str	r3, [r2, #0]
d00051c4:	e575      	b.n	d0004cb2 <load_jpeg_image.constprop.0+0x1302>
d00051c6:	f106 0428 	add.w	r4, r6, #40	; 0x28
d00051ca:	6933      	ldr	r3, [r6, #16]
d00051cc:	6a72      	ldr	r2, [r6, #36]	; 0x24
d00051ce:	4621      	mov	r1, r4
d00051d0:	69f0      	ldr	r0, [r6, #28]
d00051d2:	4798      	blx	r3
d00051d4:	f8d6 20ac 	ldr.w	r2, [r6, #172]	; 0xac
d00051d8:	f8d6 10b4 	ldr.w	r1, [r6, #180]	; 0xb4
d00051dc:	f8d6 30a8 	ldr.w	r3, [r6, #168]	; 0xa8
d00051e0:	1a52      	subs	r2, r2, r1
d00051e2:	4413      	add	r3, r2
d00051e4:	f8c6 30a8 	str.w	r3, [r6, #168]	; 0xa8
d00051e8:	2800      	cmp	r0, #0
d00051ea:	f040 83f4 	bne.w	d00059d6 <load_jpeg_image.constprop.0+0x2026>
d00051ee:	f106 0429 	add.w	r4, r6, #41	; 0x29
d00051f2:	4605      	mov	r5, r0
d00051f4:	4603      	mov	r3, r0
d00051f6:	6230      	str	r0, [r6, #32]
d00051f8:	4622      	mov	r2, r4
d00051fa:	f886 0028 	strb.w	r0, [r6, #40]	; 0x28
d00051fe:	f8c6 40b0 	str.w	r4, [r6, #176]	; 0xb0
d0005202:	f8c6 20ac 	str.w	r2, [r6, #172]	; 0xac
d0005206:	f7ff bba5 	b.w	d0004954 <load_jpeg_image.constprop.0+0xfa4>
d000520a:	f106 0428 	add.w	r4, r6, #40	; 0x28
d000520e:	6933      	ldr	r3, [r6, #16]
d0005210:	6a72      	ldr	r2, [r6, #36]	; 0x24
d0005212:	4621      	mov	r1, r4
d0005214:	69f0      	ldr	r0, [r6, #28]
d0005216:	4798      	blx	r3
d0005218:	f8d6 20ac 	ldr.w	r2, [r6, #172]	; 0xac
d000521c:	f8d6 10b4 	ldr.w	r1, [r6, #180]	; 0xb4
d0005220:	f8d6 30a8 	ldr.w	r3, [r6, #168]	; 0xa8
d0005224:	1a52      	subs	r2, r2, r1
d0005226:	4413      	add	r3, r2
d0005228:	f8c6 30a8 	str.w	r3, [r6, #168]	; 0xa8
d000522c:	2800      	cmp	r0, #0
d000522e:	f040 83e0 	bne.w	d00059f2 <load_jpeg_image.constprop.0+0x2042>
d0005232:	f106 0429 	add.w	r4, r6, #41	; 0x29
d0005236:	6230      	str	r0, [r6, #32]
d0005238:	f886 0028 	strb.w	r0, [r6, #40]	; 0x28
d000523c:	4623      	mov	r3, r4
d000523e:	f8c6 30ac 	str.w	r3, [r6, #172]	; 0xac
d0005242:	f8c6 40b0 	str.w	r4, [r6, #176]	; 0xb0
d0005246:	f8da 6000 	ldr.w	r6, [sl]
d000524a:	f8d6 20ac 	ldr.w	r2, [r6, #172]	; 0xac
d000524e:	f8d6 30b0 	ldr.w	r3, [r6, #176]	; 0xb0
d0005252:	e40a      	b.n	d0004a6a <load_jpeg_image.constprop.0+0x10ba>
d0005254:	9b04      	ldr	r3, [sp, #16]
d0005256:	9008      	str	r0, [sp, #32]
d0005258:	2b00      	cmp	r3, #0
d000525a:	dd1b      	ble.n	d0005294 <load_jpeg_image.constprop.0+0x18e4>
d000525c:	f244 64c8 	movw	r4, #18120	; 0x46c8
d0005260:	eb03 06c3 	add.w	r6, r3, r3, lsl #3
d0005264:	4605      	mov	r5, r0
d0005266:	4454      	add	r4, sl
d0005268:	eb04 06c6 	add.w	r6, r4, r6, lsl #3
d000526c:	6860      	ldr	r0, [r4, #4]
d000526e:	b118      	cbz	r0, d0005278 <load_jpeg_image.constprop.0+0x18c8>
d0005270:	f007 fa16 	bl	d000c6a0 <free>
d0005274:	6065      	str	r5, [r4, #4]
d0005276:	6025      	str	r5, [r4, #0]
d0005278:	68a0      	ldr	r0, [r4, #8]
d000527a:	b118      	cbz	r0, d0005284 <load_jpeg_image.constprop.0+0x18d4>
d000527c:	f007 fa10 	bl	d000c6a0 <free>
d0005280:	60a5      	str	r5, [r4, #8]
d0005282:	6125      	str	r5, [r4, #16]
d0005284:	68e0      	ldr	r0, [r4, #12]
d0005286:	b110      	cbz	r0, d000528e <load_jpeg_image.constprop.0+0x18de>
d0005288:	f007 fa0a 	bl	d000c6a0 <free>
d000528c:	60e5      	str	r5, [r4, #12]
d000528e:	3448      	adds	r4, #72	; 0x48
d0005290:	42b4      	cmp	r4, r6
d0005292:	d1eb      	bne.n	d000526c <load_jpeg_image.constprop.0+0x18bc>
d0005294:	4b5f      	ldr	r3, [pc, #380]	; (d0005414 <load_jpeg_image.constprop.0+0x1a64>)
d0005296:	4a62      	ldr	r2, [pc, #392]	; (d0005420 <load_jpeg_image.constprop.0+0x1a70>)
d0005298:	601a      	str	r2, [r3, #0]
d000529a:	f7fe be80 	b.w	d0003f9e <load_jpeg_image.constprop.0+0x5ee>
d000529e:	f644 0208 	movw	r2, #18440	; 0x4808
d00052a2:	f06f 4100 	mvn.w	r1, #2147483648	; 0x80000000
d00052a6:	e43b      	b.n	d0004b20 <load_jpeg_image.constprop.0+0x1170>
d00052a8:	f244 75c0 	movw	r5, #18368	; 0x47c0
d00052ac:	f244 74bc 	movw	r4, #18364	; 0x47bc
d00052b0:	f244 70c8 	movw	r0, #18376	; 0x47c8
d00052b4:	f244 718c 	movw	r1, #18316	; 0x478c
d00052b8:	f244 7244 	movw	r2, #18244	; 0x4744
d00052bc:	f84a 3005 	str.w	r3, [sl, r5]
d00052c0:	f244 66fc 	movw	r6, #18172	; 0x46fc
d00052c4:	f84a 3004 	str.w	r3, [sl, r4]
d00052c8:	f84a 3000 	str.w	r3, [sl, r0]
d00052cc:	f244 67b4 	movw	r7, #18100	; 0x46b4
d00052d0:	f84a 3001 	str.w	r3, [sl, r1]
d00052d4:	f04f 0eff 	mov.w	lr, #255	; 0xff
d00052d8:	f84a 3002 	str.w	r3, [sl, r2]
d00052dc:	4452      	add	r2, sl
d00052de:	f644 0c04 	movw	ip, #18436	; 0x4804
d00052e2:	4451      	add	r1, sl
d00052e4:	9214      	str	r2, [sp, #80]	; 0x50
d00052e6:	eb0a 0206 	add.w	r2, sl, r6
d00052ea:	f84a 3006 	str.w	r3, [sl, r6]
d00052ee:	4450      	add	r0, sl
d00052f0:	9213      	str	r2, [sp, #76]	; 0x4c
d00052f2:	eb0a 0905 	add.w	r9, sl, r5
d00052f6:	9a05      	ldr	r2, [sp, #20]
d00052f8:	eb0a 0b04 	add.w	fp, sl, r4
d00052fc:	f84a 3007 	str.w	r3, [sl, r7]
d0005300:	f882 e000 	strb.w	lr, [r2]
d0005304:	eb0a 0207 	add.w	r2, sl, r7
d0005308:	9115      	str	r1, [sp, #84]	; 0x54
d000530a:	eb0a 010c 	add.w	r1, sl, ip
d000530e:	9212      	str	r2, [sp, #72]	; 0x48
d0005310:	f85a 200c 	ldr.w	r2, [sl, ip]
d0005314:	9016      	str	r0, [sp, #88]	; 0x58
d0005316:	9117      	str	r1, [sp, #92]	; 0x5c
d0005318:	2a00      	cmp	r2, #0
d000531a:	f040 8370 	bne.w	d00059fe <load_jpeg_image.constprop.0+0x204e>
d000531e:	f644 0108 	movw	r1, #18440	; 0x4808
d0005322:	f244 73e0 	movw	r3, #18400	; 0x47e0
d0005326:	f06f 4000 	mvn.w	r0, #2147483648	; 0x80000000
d000532a:	f84a 0001 	str.w	r0, [sl, r1]
d000532e:	4451      	add	r1, sl
d0005330:	f84a 2003 	str.w	r2, [sl, r3]
d0005334:	4453      	add	r3, sl
d0005336:	910c      	str	r1, [sp, #48]	; 0x30
d0005338:	9309      	str	r3, [sp, #36]	; 0x24
d000533a:	f244 73f0 	movw	r3, #18416	; 0x47f0
d000533e:	f85a 3003 	ldr.w	r3, [sl, r3]
d0005342:	2b01      	cmp	r3, #1
d0005344:	f000 808d 	beq.w	d0005462 <load_jpeg_image.constprop.0+0x1ab2>
d0005348:	f244 6390 	movw	r3, #18064	; 0x4690
d000534c:	f85a 2003 	ldr.w	r2, [sl, r3]
d0005350:	4453      	add	r3, sl
d0005352:	2a00      	cmp	r2, #0
d0005354:	9310      	str	r3, [sp, #64]	; 0x40
d0005356:	f77f accc 	ble.w	d0004cf2 <load_jpeg_image.constprop.0+0x1342>
d000535a:	f244 638c 	movw	r3, #18060	; 0x468c
d000535e:	2100      	movs	r1, #0
d0005360:	f8cd b02c 	str.w	fp, [sp, #44]	; 0x2c
d0005364:	9106      	str	r1, [sp, #24]
d0005366:	eb0a 0103 	add.w	r1, sl, r3
d000536a:	f85a 3003 	ldr.w	r3, [sl, r3]
d000536e:	910f      	str	r1, [sp, #60]	; 0x3c
d0005370:	f8cd 9028 	str.w	r9, [sp, #40]	; 0x28
d0005374:	2b00      	cmp	r3, #0
d0005376:	dd6e      	ble.n	d0005456 <load_jpeg_image.constprop.0+0x1aa6>
d0005378:	f04f 0b00 	mov.w	fp, #0
d000537c:	9b0d      	ldr	r3, [sp, #52]	; 0x34
d000537e:	681a      	ldr	r2, [r3, #0]
d0005380:	2a00      	cmp	r2, #0
d0005382:	dd59      	ble.n	d0005438 <load_jpeg_image.constprop.0+0x1a88>
d0005384:	f244 73f4 	movw	r3, #18420	; 0x47f4
d0005388:	f244 69a4 	movw	r9, #18084	; 0x46a4
d000538c:	4453      	add	r3, sl
d000538e:	9307      	str	r3, [sp, #28]
d0005390:	2300      	movs	r3, #0
d0005392:	9308      	str	r3, [sp, #32]
d0005394:	9907      	ldr	r1, [sp, #28]
d0005396:	f851 3b04 	ldr.w	r3, [r1], #4
d000539a:	eb03 05c3 	add.w	r5, r3, r3, lsl #3
d000539e:	9107      	str	r1, [sp, #28]
d00053a0:	eb0a 05c5 	add.w	r5, sl, r5, lsl #3
d00053a4:	f855 1009 	ldr.w	r1, [r5, r9]
d00053a8:	2900      	cmp	r1, #0
d00053aa:	dd40      	ble.n	d000542e <load_jpeg_image.constprop.0+0x1a7e>
d00053ac:	f244 62a0 	movw	r2, #18080	; 0x46a0
d00053b0:	2700      	movs	r7, #0
d00053b2:	58aa      	ldr	r2, [r5, r2]
d00053b4:	2a00      	cmp	r2, #0
d00053b6:	dd35      	ble.n	d0005424 <load_jpeg_image.constprop.0+0x1a74>
d00053b8:	f244 66d8 	movw	r6, #18136	; 0x46d8
d00053bc:	f244 68ac 	movw	r8, #18092	; 0x46ac
d00053c0:	2400      	movs	r4, #0
d00053c2:	44a8      	add	r8, r5
d00053c4:	442e      	add	r6, r5
d00053c6:	e006      	b.n	d00053d6 <load_jpeg_image.constprop.0+0x1a26>
d00053c8:	f244 62a0 	movw	r2, #18080	; 0x46a0
d00053cc:	f855 1009 	ldr.w	r1, [r5, r9]
d00053d0:	58aa      	ldr	r2, [r5, r2]
d00053d2:	42a2      	cmp	r2, r4
d00053d4:	dd26      	ble.n	d0005424 <load_jpeg_image.constprop.0+0x1a74>
d00053d6:	9806      	ldr	r0, [sp, #24]
d00053d8:	f244 6cdc 	movw	ip, #18140	; 0x46dc
d00053dc:	fb02 420b 	mla	r2, r2, fp, r4
d00053e0:	3401      	adds	r4, #1
d00053e2:	fb01 7100 	mla	r1, r1, r0, r7
d00053e6:	f855 000c 	ldr.w	r0, [r5, ip]
d00053ea:	f44f 6cd2 	mov.w	ip, #1680	; 0x690
d00053ee:	9304      	str	r3, [sp, #16]
d00053f0:	fb00 2101 	mla	r1, r0, r1, r2
d00053f4:	f8d8 2000 	ldr.w	r2, [r8]
d00053f8:	6830      	ldr	r0, [r6, #0]
d00053fa:	fb0c a202 	mla	r2, ip, r2, sl
d00053fe:	eb00 11c1 	add.w	r1, r0, r1, lsl #7
d0005402:	4650      	mov	r0, sl
d0005404:	3204      	adds	r2, #4
d0005406:	f7fc fee3 	bl	d00021d0 <stbi__jpeg_decode_block_prog_dc>
d000540a:	9b04      	ldr	r3, [sp, #16]
d000540c:	2800      	cmp	r0, #0
d000540e:	d1db      	bne.n	d00053c8 <load_jpeg_image.constprop.0+0x1a18>
d0005410:	f7fe bafd 	b.w	d0003a0e <load_jpeg_image.constprop.0+0x5e>
d0005414:	d000e928 	.word	0xd000e928
d0005418:	d000de88 	.word	0xd000de88
d000541c:	d000de94 	.word	0xd000de94
d0005420:	d000de28 	.word	0xd000de28
d0005424:	3701      	adds	r7, #1
d0005426:	428f      	cmp	r7, r1
d0005428:	dbc4      	blt.n	d00053b4 <load_jpeg_image.constprop.0+0x1a04>
d000542a:	9b0d      	ldr	r3, [sp, #52]	; 0x34
d000542c:	681a      	ldr	r2, [r3, #0]
d000542e:	9b08      	ldr	r3, [sp, #32]
d0005430:	3301      	adds	r3, #1
d0005432:	4293      	cmp	r3, r2
d0005434:	9308      	str	r3, [sp, #32]
d0005436:	dbad      	blt.n	d0005394 <load_jpeg_image.constprop.0+0x19e4>
d0005438:	9a0c      	ldr	r2, [sp, #48]	; 0x30
d000543a:	6813      	ldr	r3, [r2, #0]
d000543c:	3b01      	subs	r3, #1
d000543e:	2b00      	cmp	r3, #0
d0005440:	6013      	str	r3, [r2, #0]
d0005442:	f340 8288 	ble.w	d0005956 <load_jpeg_image.constprop.0+0x1fa6>
d0005446:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
d0005448:	f10b 0b01 	add.w	fp, fp, #1
d000544c:	681b      	ldr	r3, [r3, #0]
d000544e:	459b      	cmp	fp, r3
d0005450:	db94      	blt.n	d000537c <load_jpeg_image.constprop.0+0x19cc>
d0005452:	9a10      	ldr	r2, [sp, #64]	; 0x40
d0005454:	6812      	ldr	r2, [r2, #0]
d0005456:	9906      	ldr	r1, [sp, #24]
d0005458:	3101      	adds	r1, #1
d000545a:	4291      	cmp	r1, r2
d000545c:	9106      	str	r1, [sp, #24]
d000545e:	db89      	blt.n	d0005374 <load_jpeg_image.constprop.0+0x19c4>
d0005460:	e438      	b.n	d0004cd4 <load_jpeg_image.constprop.0+0x1324>
d0005462:	f244 73f4 	movw	r3, #18420	; 0x47f4
d0005466:	f244 62bc 	movw	r2, #18108	; 0x46bc
d000546a:	f244 61b8 	movw	r1, #18104	; 0x46b8
d000546e:	f85a 0003 	ldr.w	r0, [sl, r3]
d0005472:	eb00 03c0 	add.w	r3, r0, r0, lsl #3
d0005476:	ee08 0a90 	vmov	s17, r0
d000547a:	00c0      	lsls	r0, r0, #3
d000547c:	eb0a 03c3 	add.w	r3, sl, r3, lsl #3
d0005480:	901e      	str	r0, [sp, #120]	; 0x78
d0005482:	589a      	ldr	r2, [r3, r2]
d0005484:	585b      	ldr	r3, [r3, r1]
d0005486:	3207      	adds	r2, #7
d0005488:	3307      	adds	r3, #7
d000548a:	10d2      	asrs	r2, r2, #3
d000548c:	10db      	asrs	r3, r3, #3
d000548e:	2a00      	cmp	r2, #0
d0005490:	921f      	str	r2, [sp, #124]	; 0x7c
d0005492:	930b      	str	r3, [sp, #44]	; 0x2c
d0005494:	f77f ac2d 	ble.w	d0004cf2 <load_jpeg_image.constprop.0+0x1342>
d0005498:	2300      	movs	r3, #0
d000549a:	46c8      	mov	r8, r9
d000549c:	46d9      	mov	r9, fp
d000549e:	930a      	str	r3, [sp, #40]	; 0x28
d00054a0:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
d00054a2:	2b00      	cmp	r3, #0
d00054a4:	f340 8222 	ble.w	d00058ec <load_jpeg_image.constprop.0+0x1f3c>
d00054a8:	ee18 2a90 	vmov	r2, s17
d00054ac:	9b1e      	ldr	r3, [sp, #120]	; 0x78
d00054ae:	f244 61dc 	movw	r1, #18140	; 0x46dc
d00054b2:	2000      	movs	r0, #0
d00054b4:	4413      	add	r3, r2
d00054b6:	f244 62d8 	movw	r2, #18136	; 0x46d8
d00054ba:	9004      	str	r0, [sp, #16]
d00054bc:	eb0a 03c3 	add.w	r3, sl, r3, lsl #3
d00054c0:	189a      	adds	r2, r3, r2
d00054c2:	930f      	str	r3, [sp, #60]	; 0x3c
d00054c4:	440b      	add	r3, r1
d00054c6:	920d      	str	r2, [sp, #52]	; 0x34
d00054c8:	930e      	str	r3, [sp, #56]	; 0x38
d00054ca:	e01e      	b.n	d000550a <load_jpeg_image.constprop.0+0x1b5a>
d00054cc:	980f      	ldr	r0, [sp, #60]	; 0x3c
d00054ce:	f244 62ac 	movw	r2, #18092	; 0x46ac
d00054d2:	f44f 64d2 	mov.w	r4, #1680	; 0x690
d00054d6:	4629      	mov	r1, r5
d00054d8:	5882      	ldr	r2, [r0, r2]
d00054da:	ee18 3a90 	vmov	r3, s17
d00054de:	4650      	mov	r0, sl
d00054e0:	fb04 a202 	mla	r2, r4, r2, sl
d00054e4:	3204      	adds	r2, #4
d00054e6:	f7fc fe73 	bl	d00021d0 <stbi__jpeg_decode_block_prog_dc>
d00054ea:	2800      	cmp	r0, #0
d00054ec:	f43e aa8f 	beq.w	d0003a0e <load_jpeg_image.constprop.0+0x5e>
d00054f0:	9a0c      	ldr	r2, [sp, #48]	; 0x30
d00054f2:	6813      	ldr	r3, [r2, #0]
d00054f4:	3b01      	subs	r3, #1
d00054f6:	2b00      	cmp	r3, #0
d00054f8:	6013      	str	r3, [r2, #0]
d00054fa:	dd77      	ble.n	d00055ec <load_jpeg_image.constprop.0+0x1c3c>
d00054fc:	9b04      	ldr	r3, [sp, #16]
d00054fe:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
d0005500:	3301      	adds	r3, #1
d0005502:	429a      	cmp	r2, r3
d0005504:	9304      	str	r3, [sp, #16]
d0005506:	f000 81f1 	beq.w	d00058ec <load_jpeg_image.constprop.0+0x1f3c>
d000550a:	9a0d      	ldr	r2, [sp, #52]	; 0x34
d000550c:	9b0e      	ldr	r3, [sp, #56]	; 0x38
d000550e:	6815      	ldr	r5, [r2, #0]
d0005510:	681b      	ldr	r3, [r3, #0]
d0005512:	9a0a      	ldr	r2, [sp, #40]	; 0x28
d0005514:	9904      	ldr	r1, [sp, #16]
d0005516:	fb03 1302 	mla	r3, r3, r2, r1
d000551a:	9a10      	ldr	r2, [sp, #64]	; 0x40
d000551c:	6814      	ldr	r4, [r2, #0]
d000551e:	eb05 15c3 	add.w	r5, r5, r3, lsl #7
d0005522:	2c00      	cmp	r4, #0
d0005524:	d0d2      	beq.n	d00054cc <load_jpeg_image.constprop.0+0x1b1c>
d0005526:	f244 62b0 	movw	r2, #18096	; 0x46b0
d000552a:	9e0f      	ldr	r6, [sp, #60]	; 0x3c
d000552c:	f44f 61d2 	mov.w	r1, #1680	; 0x690
d0005530:	f641 2044 	movw	r0, #6724	; 0x1a44
d0005534:	58b2      	ldr	r2, [r6, r2]
d0005536:	9b18      	ldr	r3, [sp, #96]	; 0x60
d0005538:	fb01 a102 	mla	r1, r1, r2, sl
d000553c:	681b      	ldr	r3, [r3, #0]
d000553e:	4401      	add	r1, r0
d0005540:	ee08 1a10 	vmov	s16, r1
d0005544:	2b00      	cmp	r3, #0
d0005546:	f040 80a8 	bne.w	d000569a <load_jpeg_image.constprop.0+0x1cea>
d000554a:	9b09      	ldr	r3, [sp, #36]	; 0x24
d000554c:	681b      	ldr	r3, [r3, #0]
d000554e:	2b00      	cmp	r3, #0
d0005550:	f040 81c8 	bne.w	d00058e4 <load_jpeg_image.constprop.0+0x1f34>
d0005554:	9b1a      	ldr	r3, [sp, #104]	; 0x68
d0005556:	2101      	movs	r1, #1
d0005558:	f243 6784 	movw	r7, #13956	; 0x3684
d000555c:	f8dd b01c 	ldr.w	fp, [sp, #28]
d0005560:	681b      	ldr	r3, [r3, #0]
d0005562:	eb07 2782 	add.w	r7, r7, r2, lsl #10
d0005566:	fa01 f303 	lsl.w	r3, r1, r3
d000556a:	b29b      	uxth	r3, r3
d000556c:	9306      	str	r3, [sp, #24]
d000556e:	e023      	b.n	d00055b8 <load_jpeg_image.constprop.0+0x1c08>
d0005570:	f8d9 2000 	ldr.w	r2, [r9]
d0005574:	0dd3      	lsrs	r3, r2, #23
d0005576:	eb0a 0343 	add.w	r3, sl, r3, lsl #1
d000557a:	5fde      	ldrsh	r6, [r3, r7]
d000557c:	b326      	cbz	r6, d00055c8 <load_jpeg_image.constprop.0+0x1c18>
d000557e:	f006 030f 	and.w	r3, r6, #15
d0005582:	f8d8 1000 	ldr.w	r1, [r8]
d0005586:	f3c6 1003 	ubfx	r0, r6, #4, #4
d000558a:	428b      	cmp	r3, r1
d000558c:	4404      	add	r4, r0
d000558e:	f300 8121 	bgt.w	d00057d4 <load_jpeg_image.constprop.0+0x1e24>
d0005592:	409a      	lsls	r2, r3
d0005594:	1acb      	subs	r3, r1, r3
d0005596:	49c2      	ldr	r1, [pc, #776]	; (d00058a0 <load_jpeg_image.constprop.0+0x1ef0>)
d0005598:	1236      	asrs	r6, r6, #8
d000559a:	f8c9 2000 	str.w	r2, [r9]
d000559e:	5d08      	ldrb	r0, [r1, r4]
d00055a0:	3401      	adds	r4, #1
d00055a2:	9906      	ldr	r1, [sp, #24]
d00055a4:	f8c8 3000 	str.w	r3, [r8]
d00055a8:	fb16 f601 	smulbb	r6, r6, r1
d00055ac:	f825 6010 	strh.w	r6, [r5, r0, lsl #1]
d00055b0:	f8db 3000 	ldr.w	r3, [fp]
d00055b4:	42a3      	cmp	r3, r4
d00055b6:	db9b      	blt.n	d00054f0 <load_jpeg_image.constprop.0+0x1b40>
d00055b8:	f8d8 3000 	ldr.w	r3, [r8]
d00055bc:	2b0f      	cmp	r3, #15
d00055be:	dcd7      	bgt.n	d0005570 <load_jpeg_image.constprop.0+0x1bc0>
d00055c0:	4650      	mov	r0, sl
d00055c2:	f7fc fb3b 	bl	d0001c3c <stbi__grow_buffer_unsafe>
d00055c6:	e7d3      	b.n	d0005570 <load_jpeg_image.constprop.0+0x1bc0>
d00055c8:	ee18 1a10 	vmov	r1, s16
d00055cc:	4650      	mov	r0, sl
d00055ce:	f7fc fc0f 	bl	d0001df0 <stbi__jpeg_huff_decode>
d00055d2:	2800      	cmp	r0, #0
d00055d4:	f2c0 80fe 	blt.w	d00057d4 <load_jpeg_image.constprop.0+0x1e24>
d00055d8:	f010 010f 	ands.w	r1, r0, #15
d00055dc:	ea4f 1320 	mov.w	r3, r0, asr #4
d00055e0:	d12d      	bne.n	d000563e <load_jpeg_image.constprop.0+0x1c8e>
d00055e2:	2b0e      	cmp	r3, #14
d00055e4:	f340 8197 	ble.w	d0005916 <load_jpeg_image.constprop.0+0x1f66>
d00055e8:	3410      	adds	r4, #16
d00055ea:	e7e1      	b.n	d00055b0 <load_jpeg_image.constprop.0+0x1c00>
d00055ec:	f8d8 3000 	ldr.w	r3, [r8]
d00055f0:	2b17      	cmp	r3, #23
d00055f2:	f340 80ea 	ble.w	d00057ca <load_jpeg_image.constprop.0+0x1e1a>
d00055f6:	9905      	ldr	r1, [sp, #20]
d00055f8:	780b      	ldrb	r3, [r1, #0]
d00055fa:	f103 0230 	add.w	r2, r3, #48	; 0x30
d00055fe:	b2d2      	uxtb	r2, r2
d0005600:	2a07      	cmp	r2, #7
d0005602:	f63f ab69 	bhi.w	d0004cd8 <load_jpeg_image.constprop.0+0x1328>
d0005606:	2300      	movs	r3, #0
d0005608:	9816      	ldr	r0, [sp, #88]	; 0x58
d000560a:	22ff      	movs	r2, #255	; 0xff
d000560c:	f8c8 3000 	str.w	r3, [r8]
d0005610:	f8c9 3000 	str.w	r3, [r9]
d0005614:	6003      	str	r3, [r0, #0]
d0005616:	9815      	ldr	r0, [sp, #84]	; 0x54
d0005618:	6003      	str	r3, [r0, #0]
d000561a:	9814      	ldr	r0, [sp, #80]	; 0x50
d000561c:	6003      	str	r3, [r0, #0]
d000561e:	9813      	ldr	r0, [sp, #76]	; 0x4c
d0005620:	6003      	str	r3, [r0, #0]
d0005622:	9812      	ldr	r0, [sp, #72]	; 0x48
d0005624:	6003      	str	r3, [r0, #0]
d0005626:	700a      	strb	r2, [r1, #0]
d0005628:	9a17      	ldr	r2, [sp, #92]	; 0x5c
d000562a:	990c      	ldr	r1, [sp, #48]	; 0x30
d000562c:	6812      	ldr	r2, [r2, #0]
d000562e:	429a      	cmp	r2, r3
d0005630:	bf08      	it	eq
d0005632:	f06f 4200 	mvneq.w	r2, #2147483648	; 0x80000000
d0005636:	600a      	str	r2, [r1, #0]
d0005638:	9a09      	ldr	r2, [sp, #36]	; 0x24
d000563a:	6013      	str	r3, [r2, #0]
d000563c:	e75e      	b.n	d00054fc <load_jpeg_image.constprop.0+0x1b4c>
d000563e:	f8d8 0000 	ldr.w	r0, [r8]
d0005642:	4423      	add	r3, r4
d0005644:	4a96      	ldr	r2, [pc, #600]	; (d00058a0 <load_jpeg_image.constprop.0+0x1ef0>)
d0005646:	4281      	cmp	r1, r0
d0005648:	f103 0401 	add.w	r4, r3, #1
d000564c:	5cd2      	ldrb	r2, [r2, r3]
d000564e:	f300 8131 	bgt.w	d00058b4 <load_jpeg_image.constprop.0+0x1f04>
d0005652:	f8d9 e000 	ldr.w	lr, [r9]
d0005656:	f1c1 0620 	rsb	r6, r1, #32
d000565a:	4b92      	ldr	r3, [pc, #584]	; (d00058a4 <load_jpeg_image.constprop.0+0x1ef4>)
d000565c:	1a40      	subs	r0, r0, r1
d000565e:	fa6e f606 	ror.w	r6, lr, r6
d0005662:	f853 c021 	ldr.w	ip, [r3, r1, lsl #2]
d0005666:	ea4f 73de 	mov.w	r3, lr, lsr #31
d000566a:	9308      	str	r3, [sp, #32]
d000566c:	ea06 0e0c 	and.w	lr, r6, ip
d0005670:	4b8d      	ldr	r3, [pc, #564]	; (d00058a8 <load_jpeg_image.constprop.0+0x1ef8>)
d0005672:	ea26 060c 	bic.w	r6, r6, ip
d0005676:	f853 1021 	ldr.w	r1, [r3, r1, lsl #2]
d000567a:	9b08      	ldr	r3, [sp, #32]
d000567c:	f8c9 6000 	str.w	r6, [r9]
d0005680:	3b01      	subs	r3, #1
d0005682:	f8c8 0000 	str.w	r0, [r8]
d0005686:	400b      	ands	r3, r1
d0005688:	eb03 060e 	add.w	r6, r3, lr
d000568c:	9b06      	ldr	r3, [sp, #24]
d000568e:	fb16 f603 	smulbb	r6, r6, r3
d0005692:	b236      	sxth	r6, r6
d0005694:	f825 6012 	strh.w	r6, [r5, r2, lsl #1]
d0005698:	e78a      	b.n	d00055b0 <load_jpeg_image.constprop.0+0x1c00>
d000569a:	9b1a      	ldr	r3, [sp, #104]	; 0x68
d000569c:	2101      	movs	r1, #1
d000569e:	681a      	ldr	r2, [r3, #0]
d00056a0:	9b09      	ldr	r3, [sp, #36]	; 0x24
d00056a2:	fa01 f202 	lsl.w	r2, r1, r2
d00056a6:	681b      	ldr	r3, [r3, #0]
d00056a8:	9211      	str	r2, [sp, #68]	; 0x44
d00056aa:	b212      	sxth	r2, r2
d00056ac:	9206      	str	r2, [sp, #24]
d00056ae:	2b00      	cmp	r3, #0
d00056b0:	f040 8099 	bne.w	d00057e6 <load_jpeg_image.constprop.0+0x1e36>
d00056b4:	4253      	negs	r3, r2
d00056b6:	46d3      	mov	fp, sl
d00056b8:	46ca      	mov	sl, r9
d00056ba:	46c1      	mov	r9, r8
d00056bc:	46a8      	mov	r8, r5
d00056be:	9319      	str	r3, [sp, #100]	; 0x64
d00056c0:	ee18 1a10 	vmov	r1, s16
d00056c4:	4658      	mov	r0, fp
d00056c6:	f7fc fb93 	bl	d0001df0 <stbi__jpeg_huff_decode>
d00056ca:	2800      	cmp	r0, #0
d00056cc:	f2c0 8081 	blt.w	d00057d2 <load_jpeg_image.constprop.0+0x1e22>
d00056d0:	f010 010f 	ands.w	r1, r0, #15
d00056d4:	ea4f 1620 	mov.w	r6, r0, asr #4
d00056d8:	d15c      	bne.n	d0005794 <load_jpeg_image.constprop.0+0x1de4>
d00056da:	2e0e      	cmp	r6, #14
d00056dc:	dc09      	bgt.n	d00056f2 <load_jpeg_image.constprop.0+0x1d42>
d00056de:	2001      	movs	r0, #1
d00056e0:	9b09      	ldr	r3, [sp, #36]	; 0x24
d00056e2:	40b0      	lsls	r0, r6
d00056e4:	3801      	subs	r0, #1
d00056e6:	6018      	str	r0, [r3, #0]
d00056e8:	2e00      	cmp	r6, #0
d00056ea:	f040 80bd 	bne.w	d0005868 <load_jpeg_image.constprop.0+0x1eb8>
d00056ee:	4631      	mov	r1, r6
d00056f0:	2640      	movs	r6, #64	; 0x40
d00056f2:	9b07      	ldr	r3, [sp, #28]
d00056f4:	6818      	ldr	r0, [r3, #0]
d00056f6:	4284      	cmp	r4, r0
d00056f8:	dc3d      	bgt.n	d0005776 <load_jpeg_image.constprop.0+0x1dc6>
d00056fa:	4b69      	ldr	r3, [pc, #420]	; (d00058a0 <load_jpeg_image.constprop.0+0x1ef0>)
d00056fc:	1e65      	subs	r5, r4, #1
d00056fe:	9108      	str	r1, [sp, #32]
d0005700:	441d      	add	r5, r3
d0005702:	464b      	mov	r3, r9
d0005704:	46d1      	mov	r9, sl
d0005706:	46aa      	mov	sl, r5
d0005708:	465d      	mov	r5, fp
d000570a:	469b      	mov	fp, r3
d000570c:	e003      	b.n	d0005716 <load_jpeg_image.constprop.0+0x1d66>
d000570e:	b356      	cbz	r6, d0005766 <load_jpeg_image.constprop.0+0x1db6>
d0005710:	3e01      	subs	r6, #1
d0005712:	4284      	cmp	r4, r0
d0005714:	dc24      	bgt.n	d0005760 <load_jpeg_image.constprop.0+0x1db0>
d0005716:	f81a 7f01 	ldrb.w	r7, [sl, #1]!
d000571a:	3401      	adds	r4, #1
d000571c:	f938 3017 	ldrsh.w	r3, [r8, r7, lsl #1]
d0005720:	eb08 0c47 	add.w	ip, r8, r7, lsl #1
d0005724:	2b00      	cmp	r3, #0
d0005726:	d0f2      	beq.n	d000570e <load_jpeg_image.constprop.0+0x1d5e>
d0005728:	f8db 3000 	ldr.w	r3, [fp]
d000572c:	2b00      	cmp	r3, #0
d000572e:	dd26      	ble.n	d000577e <load_jpeg_image.constprop.0+0x1dce>
d0005730:	f8d9 2000 	ldr.w	r2, [r9]
d0005734:	3b01      	subs	r3, #1
d0005736:	0051      	lsls	r1, r2, #1
d0005738:	2a00      	cmp	r2, #0
d000573a:	f8c9 1000 	str.w	r1, [r9]
d000573e:	f8cb 3000 	str.w	r3, [fp]
d0005742:	dae6      	bge.n	d0005712 <load_jpeg_image.constprop.0+0x1d62>
d0005744:	f938 3017 	ldrsh.w	r3, [r8, r7, lsl #1]
d0005748:	9a06      	ldr	r2, [sp, #24]
d000574a:	421a      	tst	r2, r3
d000574c:	d1e1      	bne.n	d0005712 <load_jpeg_image.constprop.0+0x1d62>
d000574e:	2b00      	cmp	r3, #0
d0005750:	9a11      	ldr	r2, [sp, #68]	; 0x44
d0005752:	bfcc      	ite	gt
d0005754:	189b      	addgt	r3, r3, r2
d0005756:	1a9b      	suble	r3, r3, r2
d0005758:	4284      	cmp	r4, r0
d000575a:	f828 3017 	strh.w	r3, [r8, r7, lsl #1]
d000575e:	ddda      	ble.n	d0005716 <load_jpeg_image.constprop.0+0x1d66>
d0005760:	46aa      	mov	sl, r5
d0005762:	46d8      	mov	r8, fp
d0005764:	e6c4      	b.n	d00054f0 <load_jpeg_image.constprop.0+0x1b40>
d0005766:	9908      	ldr	r1, [sp, #32]
d0005768:	4284      	cmp	r4, r0
d000576a:	46ca      	mov	sl, r9
d000576c:	46d9      	mov	r9, fp
d000576e:	f8ac 1000 	strh.w	r1, [ip]
d0005772:	46ab      	mov	fp, r5
d0005774:	dda4      	ble.n	d00056c0 <load_jpeg_image.constprop.0+0x1d10>
d0005776:	46c8      	mov	r8, r9
d0005778:	46d1      	mov	r9, sl
d000577a:	46da      	mov	sl, fp
d000577c:	e6b8      	b.n	d00054f0 <load_jpeg_image.constprop.0+0x1b40>
d000577e:	4628      	mov	r0, r5
d0005780:	f7fc fa5c 	bl	d0001c3c <stbi__grow_buffer_unsafe>
d0005784:	f8db 3000 	ldr.w	r3, [fp]
d0005788:	2b00      	cmp	r3, #0
d000578a:	f300 814d 	bgt.w	d0005a28 <load_jpeg_image.constprop.0+0x2078>
d000578e:	9b07      	ldr	r3, [sp, #28]
d0005790:	6818      	ldr	r0, [r3, #0]
d0005792:	e7be      	b.n	d0005712 <load_jpeg_image.constprop.0+0x1d62>
d0005794:	2901      	cmp	r1, #1
d0005796:	d11c      	bne.n	d00057d2 <load_jpeg_image.constprop.0+0x1e22>
d0005798:	f8d9 3000 	ldr.w	r3, [r9]
d000579c:	2b00      	cmp	r3, #0
d000579e:	dd0b      	ble.n	d00057b8 <load_jpeg_image.constprop.0+0x1e08>
d00057a0:	f8da 1000 	ldr.w	r1, [sl]
d00057a4:	3b01      	subs	r3, #1
d00057a6:	0048      	lsls	r0, r1, #1
d00057a8:	2900      	cmp	r1, #0
d00057aa:	f8ca 0000 	str.w	r0, [sl]
d00057ae:	f8c9 3000 	str.w	r3, [r9]
d00057b2:	da08      	bge.n	d00057c6 <load_jpeg_image.constprop.0+0x1e16>
d00057b4:	9906      	ldr	r1, [sp, #24]
d00057b6:	e79c      	b.n	d00056f2 <load_jpeg_image.constprop.0+0x1d42>
d00057b8:	4658      	mov	r0, fp
d00057ba:	f7fc fa3f 	bl	d0001c3c <stbi__grow_buffer_unsafe>
d00057be:	f8d9 3000 	ldr.w	r3, [r9]
d00057c2:	2b00      	cmp	r3, #0
d00057c4:	dcec      	bgt.n	d00057a0 <load_jpeg_image.constprop.0+0x1df0>
d00057c6:	9919      	ldr	r1, [sp, #100]	; 0x64
d00057c8:	e793      	b.n	d00056f2 <load_jpeg_image.constprop.0+0x1d42>
d00057ca:	4650      	mov	r0, sl
d00057cc:	f7fc fa36 	bl	d0001c3c <stbi__grow_buffer_unsafe>
d00057d0:	e711      	b.n	d00055f6 <load_jpeg_image.constprop.0+0x1c46>
d00057d2:	46da      	mov	sl, fp
d00057d4:	4a35      	ldr	r2, [pc, #212]	; (d00058ac <load_jpeg_image.constprop.0+0x1efc>)
d00057d6:	4936      	ldr	r1, [pc, #216]	; (d00058b0 <load_jpeg_image.constprop.0+0x1f00>)
d00057d8:	f8da 3000 	ldr.w	r3, [sl]
d00057dc:	6011      	str	r1, [r2, #0]
d00057de:	f8d3 c008 	ldr.w	ip, [r3, #8]
d00057e2:	f7fe b918 	b.w	d0003a16 <load_jpeg_image.constprop.0+0x66>
d00057e6:	9a07      	ldr	r2, [sp, #28]
d00057e8:	3b01      	subs	r3, #1
d00057ea:	9909      	ldr	r1, [sp, #36]	; 0x24
d00057ec:	6812      	ldr	r2, [r2, #0]
d00057ee:	600b      	str	r3, [r1, #0]
d00057f0:	4294      	cmp	r4, r2
d00057f2:	f73f ae7d 	bgt.w	d00054f0 <load_jpeg_image.constprop.0+0x1b40>
d00057f6:	4b2a      	ldr	r3, [pc, #168]	; (d00058a0 <load_jpeg_image.constprop.0+0x1ef0>)
d00057f8:	3c01      	subs	r4, #1
d00057fa:	441c      	add	r4, r3
d00057fc:	4643      	mov	r3, r8
d00057fe:	46d0      	mov	r8, sl
d0005800:	46ca      	mov	sl, r9
d0005802:	4699      	mov	r9, r3
d0005804:	e004      	b.n	d0005810 <load_jpeg_image.constprop.0+0x1e60>
d0005806:	3602      	adds	r6, #2
d0005808:	4b25      	ldr	r3, [pc, #148]	; (d00058a0 <load_jpeg_image.constprop.0+0x1ef0>)
d000580a:	1af6      	subs	r6, r6, r3
d000580c:	4296      	cmp	r6, r2
d000580e:	dc26      	bgt.n	d000585e <load_jpeg_image.constprop.0+0x1eae>
d0005810:	4626      	mov	r6, r4
d0005812:	f814 7f01 	ldrb.w	r7, [r4, #1]!
d0005816:	f935 3017 	ldrsh.w	r3, [r5, r7, lsl #1]
d000581a:	2b00      	cmp	r3, #0
d000581c:	d0f3      	beq.n	d0005806 <load_jpeg_image.constprop.0+0x1e56>
d000581e:	f8d9 3000 	ldr.w	r3, [r9]
d0005822:	2b00      	cmp	r3, #0
d0005824:	dd53      	ble.n	d00058ce <load_jpeg_image.constprop.0+0x1f1e>
d0005826:	f8da 1000 	ldr.w	r1, [sl]
d000582a:	3b01      	subs	r3, #1
d000582c:	0048      	lsls	r0, r1, #1
d000582e:	2900      	cmp	r1, #0
d0005830:	f8ca 0000 	str.w	r0, [sl]
d0005834:	f8c9 3000 	str.w	r3, [r9]
d0005838:	dae5      	bge.n	d0005806 <load_jpeg_image.constprop.0+0x1e56>
d000583a:	f935 3017 	ldrsh.w	r3, [r5, r7, lsl #1]
d000583e:	9906      	ldr	r1, [sp, #24]
d0005840:	4219      	tst	r1, r3
d0005842:	d1e0      	bne.n	d0005806 <load_jpeg_image.constprop.0+0x1e56>
d0005844:	2b00      	cmp	r3, #0
d0005846:	9911      	ldr	r1, [sp, #68]	; 0x44
d0005848:	f106 0602 	add.w	r6, r6, #2
d000584c:	bfcc      	ite	gt
d000584e:	185b      	addgt	r3, r3, r1
d0005850:	1a5b      	suble	r3, r3, r1
d0005852:	f825 3017 	strh.w	r3, [r5, r7, lsl #1]
d0005856:	4b12      	ldr	r3, [pc, #72]	; (d00058a0 <load_jpeg_image.constprop.0+0x1ef0>)
d0005858:	1af6      	subs	r6, r6, r3
d000585a:	4296      	cmp	r6, r2
d000585c:	ddd8      	ble.n	d0005810 <load_jpeg_image.constprop.0+0x1e60>
d000585e:	464b      	mov	r3, r9
d0005860:	46d1      	mov	r9, sl
d0005862:	46c2      	mov	sl, r8
d0005864:	4698      	mov	r8, r3
d0005866:	e643      	b.n	d00054f0 <load_jpeg_image.constprop.0+0x1b40>
d0005868:	f8d9 5000 	ldr.w	r5, [r9]
d000586c:	42ae      	cmp	r6, r5
d000586e:	dc46      	bgt.n	d00058fe <load_jpeg_image.constprop.0+0x1f4e>
d0005870:	f8da 3000 	ldr.w	r3, [sl]
d0005874:	f1c6 0c20 	rsb	ip, r6, #32
d0005878:	4a0a      	ldr	r2, [pc, #40]	; (d00058a4 <load_jpeg_image.constprop.0+0x1ef4>)
d000587a:	1bad      	subs	r5, r5, r6
d000587c:	fa63 f30c 	ror.w	r3, r3, ip
d0005880:	f852 7026 	ldr.w	r7, [r2, r6, lsl #2]
d0005884:	ea03 0607 	and.w	r6, r3, r7
d0005888:	ea23 0307 	bic.w	r3, r3, r7
d000588c:	4430      	add	r0, r6
d000588e:	f8ca 3000 	str.w	r3, [sl]
d0005892:	f8c9 5000 	str.w	r5, [r9]
d0005896:	9b09      	ldr	r3, [sp, #36]	; 0x24
d0005898:	2640      	movs	r6, #64	; 0x40
d000589a:	6018      	str	r0, [r3, #0]
d000589c:	e729      	b.n	d00056f2 <load_jpeg_image.constprop.0+0x1d42>
d000589e:	bf00      	nop
d00058a0:	d000df58 	.word	0xd000df58
d00058a4:	d000ded4 	.word	0xd000ded4
d00058a8:	d000df18 	.word	0xd000df18
d00058ac:	d000e928 	.word	0xd000e928
d00058b0:	d000dd00 	.word	0xd000dd00
d00058b4:	4650      	mov	r0, sl
d00058b6:	9211      	str	r2, [sp, #68]	; 0x44
d00058b8:	9108      	str	r1, [sp, #32]
d00058ba:	f7fc f9bf 	bl	d0001c3c <stbi__grow_buffer_unsafe>
d00058be:	f8d8 0000 	ldr.w	r0, [r8]
d00058c2:	9908      	ldr	r1, [sp, #32]
d00058c4:	9a11      	ldr	r2, [sp, #68]	; 0x44
d00058c6:	4281      	cmp	r1, r0
d00058c8:	f73f aee4 	bgt.w	d0005694 <load_jpeg_image.constprop.0+0x1ce4>
d00058cc:	e6c1      	b.n	d0005652 <load_jpeg_image.constprop.0+0x1ca2>
d00058ce:	4640      	mov	r0, r8
d00058d0:	f7fc f9b4 	bl	d0001c3c <stbi__grow_buffer_unsafe>
d00058d4:	f8d9 3000 	ldr.w	r3, [r9]
d00058d8:	2b00      	cmp	r3, #0
d00058da:	f300 80a2 	bgt.w	d0005a22 <load_jpeg_image.constprop.0+0x2072>
d00058de:	9b07      	ldr	r3, [sp, #28]
d00058e0:	681a      	ldr	r2, [r3, #0]
d00058e2:	e790      	b.n	d0005806 <load_jpeg_image.constprop.0+0x1e56>
d00058e4:	3b01      	subs	r3, #1
d00058e6:	9a09      	ldr	r2, [sp, #36]	; 0x24
d00058e8:	6013      	str	r3, [r2, #0]
d00058ea:	e601      	b.n	d00054f0 <load_jpeg_image.constprop.0+0x1b40>
d00058ec:	9b0a      	ldr	r3, [sp, #40]	; 0x28
d00058ee:	9a1f      	ldr	r2, [sp, #124]	; 0x7c
d00058f0:	3301      	adds	r3, #1
d00058f2:	429a      	cmp	r2, r3
d00058f4:	930a      	str	r3, [sp, #40]	; 0x28
d00058f6:	f47f add3 	bne.w	d00054a0 <load_jpeg_image.constprop.0+0x1af0>
d00058fa:	f7ff b9eb 	b.w	d0004cd4 <load_jpeg_image.constprop.0+0x1324>
d00058fe:	4658      	mov	r0, fp
d0005900:	9108      	str	r1, [sp, #32]
d0005902:	f7fc f99b 	bl	d0001c3c <stbi__grow_buffer_unsafe>
d0005906:	f8d9 5000 	ldr.w	r5, [r9]
d000590a:	9b09      	ldr	r3, [sp, #36]	; 0x24
d000590c:	42ae      	cmp	r6, r5
d000590e:	9908      	ldr	r1, [sp, #32]
d0005910:	6818      	ldr	r0, [r3, #0]
d0005912:	dcc0      	bgt.n	d0005896 <load_jpeg_image.constprop.0+0x1ee6>
d0005914:	e7ac      	b.n	d0005870 <load_jpeg_image.constprop.0+0x1ec0>
d0005916:	2201      	movs	r2, #1
d0005918:	9909      	ldr	r1, [sp, #36]	; 0x24
d000591a:	409a      	lsls	r2, r3
d000591c:	600a      	str	r2, [r1, #0]
d000591e:	b91b      	cbnz	r3, d0005928 <load_jpeg_image.constprop.0+0x1f78>
d0005920:	3a01      	subs	r2, #1
d0005922:	9b09      	ldr	r3, [sp, #36]	; 0x24
d0005924:	601a      	str	r2, [r3, #0]
d0005926:	e5e3      	b.n	d00054f0 <load_jpeg_image.constprop.0+0x1b40>
d0005928:	f8d8 5000 	ldr.w	r5, [r8]
d000592c:	42ab      	cmp	r3, r5
d000592e:	dc3a      	bgt.n	d00059a6 <load_jpeg_image.constprop.0+0x1ff6>
d0005930:	f8d9 1000 	ldr.w	r1, [r9]
d0005934:	f1c3 0420 	rsb	r4, r3, #32
d0005938:	483e      	ldr	r0, [pc, #248]	; (d0005a34 <load_jpeg_image.constprop.0+0x2084>)
d000593a:	41e1      	rors	r1, r4
d000593c:	f850 0023 	ldr.w	r0, [r0, r3, lsl #2]
d0005940:	1aeb      	subs	r3, r5, r3
d0005942:	ea01 0400 	and.w	r4, r1, r0
d0005946:	ea21 0100 	bic.w	r1, r1, r0
d000594a:	4422      	add	r2, r4
d000594c:	f8c9 1000 	str.w	r1, [r9]
d0005950:	f8c8 3000 	str.w	r3, [r8]
d0005954:	e7e4      	b.n	d0005920 <load_jpeg_image.constprop.0+0x1f70>
d0005956:	9b0a      	ldr	r3, [sp, #40]	; 0x28
d0005958:	681b      	ldr	r3, [r3, #0]
d000595a:	2b17      	cmp	r3, #23
d000595c:	dd45      	ble.n	d00059ea <load_jpeg_image.constprop.0+0x203a>
d000595e:	9905      	ldr	r1, [sp, #20]
d0005960:	780b      	ldrb	r3, [r1, #0]
d0005962:	f103 0230 	add.w	r2, r3, #48	; 0x30
d0005966:	b2d2      	uxtb	r2, r2
d0005968:	2a07      	cmp	r2, #7
d000596a:	f63f a9b5 	bhi.w	d0004cd8 <load_jpeg_image.constprop.0+0x1328>
d000596e:	2300      	movs	r3, #0
d0005970:	980a      	ldr	r0, [sp, #40]	; 0x28
d0005972:	22ff      	movs	r2, #255	; 0xff
d0005974:	6003      	str	r3, [r0, #0]
d0005976:	980b      	ldr	r0, [sp, #44]	; 0x2c
d0005978:	6003      	str	r3, [r0, #0]
d000597a:	9816      	ldr	r0, [sp, #88]	; 0x58
d000597c:	6003      	str	r3, [r0, #0]
d000597e:	9815      	ldr	r0, [sp, #84]	; 0x54
d0005980:	6003      	str	r3, [r0, #0]
d0005982:	9814      	ldr	r0, [sp, #80]	; 0x50
d0005984:	6003      	str	r3, [r0, #0]
d0005986:	9813      	ldr	r0, [sp, #76]	; 0x4c
d0005988:	6003      	str	r3, [r0, #0]
d000598a:	9812      	ldr	r0, [sp, #72]	; 0x48
d000598c:	6003      	str	r3, [r0, #0]
d000598e:	700a      	strb	r2, [r1, #0]
d0005990:	9a17      	ldr	r2, [sp, #92]	; 0x5c
d0005992:	990c      	ldr	r1, [sp, #48]	; 0x30
d0005994:	6812      	ldr	r2, [r2, #0]
d0005996:	429a      	cmp	r2, r3
d0005998:	bf08      	it	eq
d000599a:	f06f 4200 	mvneq.w	r2, #2147483648	; 0x80000000
d000599e:	600a      	str	r2, [r1, #0]
d00059a0:	9a09      	ldr	r2, [sp, #36]	; 0x24
d00059a2:	6013      	str	r3, [r2, #0]
d00059a4:	e54f      	b.n	d0005446 <load_jpeg_image.constprop.0+0x1a96>
d00059a6:	4650      	mov	r0, sl
d00059a8:	9306      	str	r3, [sp, #24]
d00059aa:	f7fc f947 	bl	d0001c3c <stbi__grow_buffer_unsafe>
d00059ae:	f8d8 5000 	ldr.w	r5, [r8]
d00059b2:	9b06      	ldr	r3, [sp, #24]
d00059b4:	42ab      	cmp	r3, r5
d00059b6:	dd31      	ble.n	d0005a1c <load_jpeg_image.constprop.0+0x206c>
d00059b8:	9b09      	ldr	r3, [sp, #36]	; 0x24
d00059ba:	681a      	ldr	r2, [r3, #0]
d00059bc:	e7b0      	b.n	d0005920 <load_jpeg_image.constprop.0+0x1f70>
d00059be:	4405      	add	r5, r0
d00059c0:	f106 0329 	add.w	r3, r6, #41	; 0x29
d00059c4:	f896 0028 	ldrb.w	r0, [r6, #40]	; 0x28
d00059c8:	f7ff b838 	b.w	d0004a3c <load_jpeg_image.constprop.0+0x108c>
d00059cc:	4658      	mov	r0, fp
d00059ce:	f7fc f935 	bl	d0001c3c <stbi__grow_buffer_unsafe>
d00059d2:	f7ff bbd5 	b.w	d0005180 <load_jpeg_image.constprop.0+0x17d0>
d00059d6:	f896 1028 	ldrb.w	r1, [r6, #40]	; 0x28
d00059da:	4404      	add	r4, r0
d00059dc:	f106 0229 	add.w	r2, r6, #41	; 0x29
d00059e0:	f001 030f 	and.w	r3, r1, #15
d00059e4:	1108      	asrs	r0, r1, #4
d00059e6:	461d      	mov	r5, r3
d00059e8:	e409      	b.n	d00051fe <load_jpeg_image.constprop.0+0x184e>
d00059ea:	4650      	mov	r0, sl
d00059ec:	f7fc f926 	bl	d0001c3c <stbi__grow_buffer_unsafe>
d00059f0:	e7b5      	b.n	d000595e <load_jpeg_image.constprop.0+0x1fae>
d00059f2:	4404      	add	r4, r0
d00059f4:	f106 0329 	add.w	r3, r6, #41	; 0x29
d00059f8:	f896 0028 	ldrb.w	r0, [r6, #40]	; 0x28
d00059fc:	e41f      	b.n	d000523e <load_jpeg_image.constprop.0+0x188e>
d00059fe:	f644 0008 	movw	r0, #18440	; 0x4808
d0005a02:	f244 71e0 	movw	r1, #18400	; 0x47e0
d0005a06:	f84a 2000 	str.w	r2, [sl, r0]
d0005a0a:	eb0a 0200 	add.w	r2, sl, r0
d0005a0e:	f84a 3001 	str.w	r3, [sl, r1]
d0005a12:	eb0a 0301 	add.w	r3, sl, r1
d0005a16:	920c      	str	r2, [sp, #48]	; 0x30
d0005a18:	9309      	str	r3, [sp, #36]	; 0x24
d0005a1a:	e48e      	b.n	d000533a <load_jpeg_image.constprop.0+0x198a>
d0005a1c:	9a09      	ldr	r2, [sp, #36]	; 0x24
d0005a1e:	6812      	ldr	r2, [r2, #0]
d0005a20:	e786      	b.n	d0005930 <load_jpeg_image.constprop.0+0x1f80>
d0005a22:	9a07      	ldr	r2, [sp, #28]
d0005a24:	6812      	ldr	r2, [r2, #0]
d0005a26:	e6fe      	b.n	d0005826 <load_jpeg_image.constprop.0+0x1e76>
d0005a28:	9a07      	ldr	r2, [sp, #28]
d0005a2a:	6810      	ldr	r0, [r2, #0]
d0005a2c:	e680      	b.n	d0005730 <load_jpeg_image.constprop.0+0x1d80>
d0005a2e:	4602      	mov	r2, r0
d0005a30:	f7fe b99b 	b.w	d0003d6a <load_jpeg_image.constprop.0+0x3ba>
d0005a34:	d000ded4 	.word	0xd000ded4

d0005a38 <stbi__load_and_postprocess_8bit>:
d0005a38:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0005a3c:	4604      	mov	r4, r0
d0005a3e:	b087      	sub	sp, #28
d0005a40:	460e      	mov	r6, r1
d0005a42:	f644 0018 	movw	r0, #18456	; 0x4818
d0005a46:	2101      	movs	r1, #1
d0005a48:	4617      	mov	r7, r2
d0005a4a:	469b      	mov	fp, r3
d0005a4c:	f006 fe00 	bl	d000c650 <calloc>
d0005a50:	b3a0      	cbz	r0, d0005abc <stbi__load_and_postprocess_8bit+0x84>
d0005a52:	4605      	mov	r5, r0
d0005a54:	f8df a1dc 	ldr.w	sl, [pc, #476]	; d0005c34 <stbi__load_and_postprocess_8bit+0x1fc>
d0005a58:	f644 000c 	movw	r0, #18444	; 0x480c
d0005a5c:	f644 0210 	movw	r2, #18448	; 0x4810
d0005a60:	602c      	str	r4, [r5, #0]
d0005a62:	f644 0314 	movw	r3, #18452	; 0x4814
d0005a66:	f845 a000 	str.w	sl, [r5, r0]
d0005a6a:	f244 71e4 	movw	r1, #18404	; 0x47e4
d0005a6e:	f8df 91c8 	ldr.w	r9, [pc, #456]	; d0005c38 <stbi__load_and_postprocess_8bit+0x200>
d0005a72:	2000      	movs	r0, #0
d0005a74:	f8df 81c4 	ldr.w	r8, [pc, #452]	; d0005c3c <stbi__load_and_postprocess_8bit+0x204>
d0005a78:	f845 9002 	str.w	r9, [r5, r2]
d0005a7c:	f244 72e8 	movw	r2, #18408	; 0x47e8
d0005a80:	f845 8003 	str.w	r8, [r5, r3]
d0005a84:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
d0005a88:	5068      	str	r0, [r5, r1]
d0005a8a:	f244 71c4 	movw	r1, #18372	; 0x47c4
d0005a8e:	50ab      	str	r3, [r5, r2]
d0005a90:	f8d4 20ac 	ldr.w	r2, [r4, #172]	; 0xac
d0005a94:	546b      	strb	r3, [r5, r1]
d0005a96:	f8d4 10b0 	ldr.w	r1, [r4, #176]	; 0xb0
d0005a9a:	428a      	cmp	r2, r1
d0005a9c:	d316      	bcc.n	d0005acc <stbi__load_and_postprocess_8bit+0x94>
d0005a9e:	6a23      	ldr	r3, [r4, #32]
d0005aa0:	2b00      	cmp	r3, #0
d0005aa2:	f040 809c 	bne.w	d0005bde <stbi__load_and_postprocess_8bit+0x1a6>
d0005aa6:	f8d4 20b8 	ldr.w	r2, [r4, #184]	; 0xb8
d0005aaa:	4628      	mov	r0, r5
d0005aac:	f8d4 30b4 	ldr.w	r3, [r4, #180]	; 0xb4
d0005ab0:	f8c4 20b0 	str.w	r2, [r4, #176]	; 0xb0
d0005ab4:	f8c4 30ac 	str.w	r3, [r4, #172]	; 0xac
d0005ab8:	f006 fdf2 	bl	d000c6a0 <free>
d0005abc:	4b59      	ldr	r3, [pc, #356]	; (d0005c24 <stbi__load_and_postprocess_8bit+0x1ec>)
d0005abe:	2500      	movs	r5, #0
d0005ac0:	4a59      	ldr	r2, [pc, #356]	; (d0005c28 <stbi__load_and_postprocess_8bit+0x1f0>)
d0005ac2:	601a      	str	r2, [r3, #0]
d0005ac4:	4628      	mov	r0, r5
d0005ac6:	b007      	add	sp, #28
d0005ac8:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0005acc:	1c53      	adds	r3, r2, #1
d0005ace:	f8c4 30ac 	str.w	r3, [r4, #172]	; 0xac
d0005ad2:	7812      	ldrb	r2, [r2, #0]
d0005ad4:	2aff      	cmp	r2, #255	; 0xff
d0005ad6:	d1e6      	bne.n	d0005aa6 <stbi__load_and_postprocess_8bit+0x6e>
d0005ad8:	f104 0229 	add.w	r2, r4, #41	; 0x29
d0005adc:	f104 0028 	add.w	r0, r4, #40	; 0x28
d0005ae0:	9603      	str	r6, [sp, #12]
d0005ae2:	9205      	str	r2, [sp, #20]
d0005ae4:	4606      	mov	r6, r0
d0005ae6:	9704      	str	r7, [sp, #16]
d0005ae8:	460a      	mov	r2, r1
d0005aea:	9f05      	ldr	r7, [sp, #20]
d0005aec:	4293      	cmp	r3, r2
d0005aee:	d365      	bcc.n	d0005bbc <stbi__load_and_postprocess_8bit+0x184>
d0005af0:	6a23      	ldr	r3, [r4, #32]
d0005af2:	2b00      	cmp	r3, #0
d0005af4:	d0d7      	beq.n	d0005aa6 <stbi__load_and_postprocess_8bit+0x6e>
d0005af6:	6923      	ldr	r3, [r4, #16]
d0005af8:	4631      	mov	r1, r6
d0005afa:	6a62      	ldr	r2, [r4, #36]	; 0x24
d0005afc:	69e0      	ldr	r0, [r4, #28]
d0005afe:	4798      	blx	r3
d0005b00:	f8d4 20ac 	ldr.w	r2, [r4, #172]	; 0xac
d0005b04:	f8d4 10b4 	ldr.w	r1, [r4, #180]	; 0xb4
d0005b08:	463b      	mov	r3, r7
d0005b0a:	eba2 0c01 	sub.w	ip, r2, r1
d0005b0e:	f8d4 10a8 	ldr.w	r1, [r4, #168]	; 0xa8
d0005b12:	1832      	adds	r2, r6, r0
d0005b14:	4461      	add	r1, ip
d0005b16:	f8c4 10a8 	str.w	r1, [r4, #168]	; 0xa8
d0005b1a:	2800      	cmp	r0, #0
d0005b1c:	d055      	beq.n	d0005bca <stbi__load_and_postprocess_8bit+0x192>
d0005b1e:	f894 c028 	ldrb.w	ip, [r4, #40]	; 0x28
d0005b22:	f8c4 20b0 	str.w	r2, [r4, #176]	; 0xb0
d0005b26:	f8c4 70ac 	str.w	r7, [r4, #172]	; 0xac
d0005b2a:	f1bc 0fff 	cmp.w	ip, #255	; 0xff
d0005b2e:	d0dd      	beq.n	d0005aec <stbi__load_and_postprocess_8bit+0xb4>
d0005b30:	4662      	mov	r2, ip
d0005b32:	9e03      	ldr	r6, [sp, #12]
d0005b34:	9f04      	ldr	r7, [sp, #16]
d0005b36:	2ad8      	cmp	r2, #216	; 0xd8
d0005b38:	d1b5      	bne.n	d0005aa6 <stbi__load_and_postprocess_8bit+0x6e>
d0005b3a:	f8d4 20b8 	ldr.w	r2, [r4, #184]	; 0xb8
d0005b3e:	4628      	mov	r0, r5
d0005b40:	f8d4 30b4 	ldr.w	r3, [r4, #180]	; 0xb4
d0005b44:	f8c4 20b0 	str.w	r2, [r4, #176]	; 0xb0
d0005b48:	f8c4 30ac 	str.w	r3, [r4, #172]	; 0xac
d0005b4c:	f006 fda8 	bl	d000c6a0 <free>
d0005b50:	2101      	movs	r1, #1
d0005b52:	f644 0018 	movw	r0, #18456	; 0x4818
d0005b56:	f006 fd7b 	bl	d000c650 <calloc>
d0005b5a:	4605      	mov	r5, r0
d0005b5c:	2800      	cmp	r0, #0
d0005b5e:	d05c      	beq.n	d0005c1a <stbi__load_and_postprocess_8bit+0x1e2>
d0005b60:	6004      	str	r4, [r0, #0]
d0005b62:	f644 030c 	movw	r3, #18444	; 0x480c
d0005b66:	f644 0210 	movw	r2, #18448	; 0x4810
d0005b6a:	f644 0114 	movw	r1, #18452	; 0x4814
d0005b6e:	9c10      	ldr	r4, [sp, #64]	; 0x40
d0005b70:	f840 a003 	str.w	sl, [r0, r3]
d0005b74:	465b      	mov	r3, fp
d0005b76:	f840 9002 	str.w	r9, [r0, r2]
d0005b7a:	463a      	mov	r2, r7
d0005b7c:	f840 8001 	str.w	r8, [r0, r1]
d0005b80:	4631      	mov	r1, r6
d0005b82:	9400      	str	r4, [sp, #0]
d0005b84:	f7fd ff14 	bl	d00039b0 <load_jpeg_image.constprop.0>
d0005b88:	4603      	mov	r3, r0
d0005b8a:	4628      	mov	r0, r5
d0005b8c:	461d      	mov	r5, r3
d0005b8e:	f006 fd87 	bl	d000c6a0 <free>
d0005b92:	2d00      	cmp	r5, #0
d0005b94:	d096      	beq.n	d0005ac4 <stbi__load_and_postprocess_8bit+0x8c>
d0005b96:	4b25      	ldr	r3, [pc, #148]	; (d0005c2c <stbi__load_and_postprocess_8bit+0x1f4>)
d0005b98:	681b      	ldr	r3, [r3, #0]
d0005b9a:	2b00      	cmp	r3, #0
d0005b9c:	d092      	beq.n	d0005ac4 <stbi__load_and_postprocess_8bit+0x8c>
d0005b9e:	9b10      	ldr	r3, [sp, #64]	; 0x40
d0005ba0:	b913      	cbnz	r3, d0005ba8 <stbi__load_and_postprocess_8bit+0x170>
d0005ba2:	f8db 3000 	ldr.w	r3, [fp]
d0005ba6:	9310      	str	r3, [sp, #64]	; 0x40
d0005ba8:	4628      	mov	r0, r5
d0005baa:	9b10      	ldr	r3, [sp, #64]	; 0x40
d0005bac:	683a      	ldr	r2, [r7, #0]
d0005bae:	6831      	ldr	r1, [r6, #0]
d0005bb0:	f7fb fe26 	bl	d0001800 <stbi__vertical_flip>
d0005bb4:	4628      	mov	r0, r5
d0005bb6:	b007      	add	sp, #28
d0005bb8:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0005bbc:	1c58      	adds	r0, r3, #1
d0005bbe:	f8c4 00ac 	str.w	r0, [r4, #172]	; 0xac
d0005bc2:	f893 c000 	ldrb.w	ip, [r3]
d0005bc6:	4603      	mov	r3, r0
d0005bc8:	e7af      	b.n	d0005b2a <stbi__load_and_postprocess_8bit+0xf2>
d0005bca:	f104 0329 	add.w	r3, r4, #41	; 0x29
d0005bce:	6220      	str	r0, [r4, #32]
d0005bd0:	f884 0028 	strb.w	r0, [r4, #40]	; 0x28
d0005bd4:	f8c4 30b0 	str.w	r3, [r4, #176]	; 0xb0
d0005bd8:	f8c4 30ac 	str.w	r3, [r4, #172]	; 0xac
d0005bdc:	e763      	b.n	d0005aa6 <stbi__load_and_postprocess_8bit+0x6e>
d0005bde:	f104 0128 	add.w	r1, r4, #40	; 0x28
d0005be2:	6923      	ldr	r3, [r4, #16]
d0005be4:	6a62      	ldr	r2, [r4, #36]	; 0x24
d0005be6:	69e0      	ldr	r0, [r4, #28]
d0005be8:	9103      	str	r1, [sp, #12]
d0005bea:	4798      	blx	r3
d0005bec:	f8d4 10b4 	ldr.w	r1, [r4, #180]	; 0xb4
d0005bf0:	f8d4 20ac 	ldr.w	r2, [r4, #172]	; 0xac
d0005bf4:	f8d4 30a8 	ldr.w	r3, [r4, #168]	; 0xa8
d0005bf8:	1a52      	subs	r2, r2, r1
d0005bfa:	9903      	ldr	r1, [sp, #12]
d0005bfc:	4413      	add	r3, r2
d0005bfe:	f8c4 30a8 	str.w	r3, [r4, #168]	; 0xa8
d0005c02:	2800      	cmp	r0, #0
d0005c04:	d0e1      	beq.n	d0005bca <stbi__load_and_postprocess_8bit+0x192>
d0005c06:	4401      	add	r1, r0
d0005c08:	f104 0329 	add.w	r3, r4, #41	; 0x29
d0005c0c:	f894 2028 	ldrb.w	r2, [r4, #40]	; 0x28
d0005c10:	f8c4 10b0 	str.w	r1, [r4, #176]	; 0xb0
d0005c14:	f8c4 30ac 	str.w	r3, [r4, #172]	; 0xac
d0005c18:	e75c      	b.n	d0005ad4 <stbi__load_and_postprocess_8bit+0x9c>
d0005c1a:	4b02      	ldr	r3, [pc, #8]	; (d0005c24 <stbi__load_and_postprocess_8bit+0x1ec>)
d0005c1c:	4a04      	ldr	r2, [pc, #16]	; (d0005c30 <stbi__load_and_postprocess_8bit+0x1f8>)
d0005c1e:	601a      	str	r2, [r3, #0]
d0005c20:	e750      	b.n	d0005ac4 <stbi__load_and_postprocess_8bit+0x8c>
d0005c22:	bf00      	nop
d0005c24:	d000e928 	.word	0xd000e928
d0005c28:	d000dea4 	.word	0xd000dea4
d0005c2c:	d000e92c 	.word	0xd000e92c
d0005c30:	d000de28 	.word	0xd000de28
d0005c34:	d0001151 	.word	0xd0001151
d0005c38:	d0001741 	.word	0xd0001741
d0005c3c:	d00015e1 	.word	0xd00015e1

d0005c40 <stbi_failure_reason>:
d0005c40:	4b01      	ldr	r3, [pc, #4]	; (d0005c48 <stbi_failure_reason+0x8>)
d0005c42:	6818      	ldr	r0, [r3, #0]
d0005c44:	4770      	bx	lr
d0005c46:	bf00      	nop
d0005c48:	d000e928 	.word	0xd000e928

d0005c4c <stbi_image_free>:
d0005c4c:	f006 bd28 	b.w	d000c6a0 <free>

d0005c50 <stbi_load_from_memory>:
d0005c50:	b570      	push	{r4, r5, r6, lr}
d0005c52:	b0b2      	sub	sp, #200	; 0xc8
d0005c54:	4604      	mov	r4, r0
d0005c56:	460d      	mov	r5, r1
d0005c58:	2600      	movs	r6, #0
d0005c5a:	9837      	ldr	r0, [sp, #220]	; 0xdc
d0005c5c:	4611      	mov	r1, r2
d0005c5e:	4425      	add	r5, r4
d0005c60:	461a      	mov	r2, r3
d0005c62:	9b36      	ldr	r3, [sp, #216]	; 0xd8
d0005c64:	9000      	str	r0, [sp, #0]
d0005c66:	a803      	add	r0, sp, #12
d0005c68:	9430      	str	r4, [sp, #192]	; 0xc0
d0005c6a:	942e      	str	r4, [sp, #184]	; 0xb8
d0005c6c:	9531      	str	r5, [sp, #196]	; 0xc4
d0005c6e:	952f      	str	r5, [sp, #188]	; 0xbc
d0005c70:	9607      	str	r6, [sp, #28]
d0005c72:	960b      	str	r6, [sp, #44]	; 0x2c
d0005c74:	962d      	str	r6, [sp, #180]	; 0xb4
d0005c76:	f7ff fedf 	bl	d0005a38 <stbi__load_and_postprocess_8bit>
d0005c7a:	b032      	add	sp, #200	; 0xc8
d0005c7c:	bd70      	pop	{r4, r5, r6, pc}
d0005c7e:	bf00      	nop

d0005c80 <stbi_load_from_callbacks>:
d0005c80:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
d0005c84:	4616      	mov	r6, r2
d0005c86:	b0b2      	sub	sp, #200	; 0xc8
d0005c88:	2200      	movs	r2, #0
d0005c8a:	460d      	mov	r5, r1
d0005c8c:	ac0c      	add	r4, sp, #48	; 0x30
d0005c8e:	af06      	add	r7, sp, #24
d0005c90:	9109      	str	r1, [sp, #36]	; 0x24
d0005c92:	f04f 0a01 	mov.w	sl, #1
d0005c96:	922c      	str	r2, [sp, #176]	; 0xb0
d0005c98:	f04f 0b80 	mov.w	fp, #128	; 0x80
d0005c9c:	4698      	mov	r8, r3
d0005c9e:	942f      	str	r4, [sp, #188]	; 0xbc
d0005ca0:	942d      	str	r4, [sp, #180]	; 0xb4
d0005ca2:	c807      	ldmia	r0, {r0, r1, r2}
d0005ca4:	e9cd ab0a 	strd	sl, fp, [sp, #40]	; 0x28
d0005ca8:	e887 0007 	stmia.w	r7, {r0, r1, r2}
d0005cac:	4628      	mov	r0, r5
d0005cae:	4621      	mov	r1, r4
d0005cb0:	2280      	movs	r2, #128	; 0x80
d0005cb2:	9b06      	ldr	r3, [sp, #24]
d0005cb4:	9d3b      	ldr	r5, [sp, #236]	; 0xec
d0005cb6:	4798      	blx	r3
d0005cb8:	992d      	ldr	r1, [sp, #180]	; 0xb4
d0005cba:	9f2f      	ldr	r7, [sp, #188]	; 0xbc
d0005cbc:	9a2c      	ldr	r2, [sp, #176]	; 0xb0
d0005cbe:	1bc9      	subs	r1, r1, r7
d0005cc0:	440a      	add	r2, r1
d0005cc2:	922c      	str	r2, [sp, #176]	; 0xb0
d0005cc4:	b988      	cbnz	r0, d0005cea <stbi_load_from_callbacks+0x6a>
d0005cc6:	f10d 0731 	add.w	r7, sp, #49	; 0x31
d0005cca:	900a      	str	r0, [sp, #40]	; 0x28
d0005ccc:	f88d 0030 	strb.w	r0, [sp, #48]	; 0x30
d0005cd0:	4642      	mov	r2, r8
d0005cd2:	4631      	mov	r1, r6
d0005cd4:	9b3a      	ldr	r3, [sp, #232]	; 0xe8
d0005cd6:	a802      	add	r0, sp, #8
d0005cd8:	9500      	str	r5, [sp, #0]
d0005cda:	972e      	str	r7, [sp, #184]	; 0xb8
d0005cdc:	942d      	str	r4, [sp, #180]	; 0xb4
d0005cde:	9730      	str	r7, [sp, #192]	; 0xc0
d0005ce0:	f7ff feaa 	bl	d0005a38 <stbi__load_and_postprocess_8bit>
d0005ce4:	b032      	add	sp, #200	; 0xc8
d0005ce6:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
d0005cea:	1827      	adds	r7, r4, r0
d0005cec:	e7f0      	b.n	d0005cd0 <stbi_load_from_callbacks+0x50>
d0005cee:	bf00      	nop

d0005cf0 <upsampleCb>:
d0005cf0:	4b73      	ldr	r3, [pc, #460]	; (d0005ec0 <upsampleCb+0x1d0>)
d0005cf2:	4a74      	ldr	r2, [pc, #464]	; (d0005ec4 <upsampleCb+0x1d4>)
d0005cf4:	eb03 0040 	add.w	r0, r3, r0, lsl #1
d0005cf8:	eb02 0c01 	add.w	ip, r2, r1
d0005cfc:	e92d 43f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
d0005d00:	4f71      	ldr	r7, [pc, #452]	; (d0005ec8 <upsampleCb+0x1d8>)
d0005d02:	f100 0608 	add.w	r6, r0, #8
d0005d06:	f100 0e48 	add.w	lr, r0, #72	; 0x48
d0005d0a:	440f      	add	r7, r1
d0005d0c:	f1a6 0508 	sub.w	r5, r6, #8
d0005d10:	f10c 0402 	add.w	r4, ip, #2
d0005d14:	1cb8      	adds	r0, r7, #2
d0005d16:	f935 3b02 	ldrsh.w	r3, [r5], #2
d0005d1a:	f814 8c02 	ldrb.w	r8, [r4, #-2]
d0005d1e:	b2d9      	uxtb	r1, r3
d0005d20:	eb01 0281 	add.w	r2, r1, r1, lsl #2
d0005d24:	460b      	mov	r3, r1
d0005d26:	eb01 0242 	add.w	r2, r1, r2, lsl #1
d0005d2a:	0952      	lsrs	r2, r2, #5
d0005d2c:	3a2c      	subs	r2, #44	; 0x2c
d0005d2e:	b292      	uxth	r2, r2
d0005d30:	eba8 0802 	sub.w	r8, r8, r2
d0005d34:	fa1f f888 	uxth.w	r8, r8
d0005d38:	f1b8 0fff 	cmp.w	r8, #255	; 0xff
d0005d3c:	d909      	bls.n	d0005d52 <upsampleCb+0x62>
d0005d3e:	fa0f f988 	sxth.w	r9, r8
d0005d42:	f1b9 0f00 	cmp.w	r9, #0
d0005d46:	f2c0 8093 	blt.w	d0005e70 <upsampleCb+0x180>
d0005d4a:	f1b9 0fff 	cmp.w	r9, #255	; 0xff
d0005d4e:	f300 80b1 	bgt.w	d0005eb4 <upsampleCb+0x1c4>
d0005d52:	fa5f f988 	uxtb.w	r9, r8
d0005d56:	f814 8c01 	ldrb.w	r8, [r4, #-1]
d0005d5a:	f804 9c02 	strb.w	r9, [r4, #-2]
d0005d5e:	eba8 0802 	sub.w	r8, r8, r2
d0005d62:	fa1f f888 	uxth.w	r8, r8
d0005d66:	f1b8 0fff 	cmp.w	r8, #255	; 0xff
d0005d6a:	d908      	bls.n	d0005d7e <upsampleCb+0x8e>
d0005d6c:	fa0f f988 	sxth.w	r9, r8
d0005d70:	f1b9 0f00 	cmp.w	r9, #0
d0005d74:	db7f      	blt.n	d0005e76 <upsampleCb+0x186>
d0005d76:	f1b9 0fff 	cmp.w	r9, #255	; 0xff
d0005d7a:	f300 809e 	bgt.w	d0005eba <upsampleCb+0x1ca>
d0005d7e:	fa5f f988 	uxtb.w	r9, r8
d0005d82:	f894 8006 	ldrb.w	r8, [r4, #6]
d0005d86:	f804 9c01 	strb.w	r9, [r4, #-1]
d0005d8a:	eba8 0802 	sub.w	r8, r8, r2
d0005d8e:	fa1f f888 	uxth.w	r8, r8
d0005d92:	f1b8 0fff 	cmp.w	r8, #255	; 0xff
d0005d96:	d907      	bls.n	d0005da8 <upsampleCb+0xb8>
d0005d98:	fa0f f988 	sxth.w	r9, r8
d0005d9c:	f1b9 0f00 	cmp.w	r9, #0
d0005da0:	db6c      	blt.n	d0005e7c <upsampleCb+0x18c>
d0005da2:	f1b9 0fff 	cmp.w	r9, #255	; 0xff
d0005da6:	dc7f      	bgt.n	d0005ea8 <upsampleCb+0x1b8>
d0005da8:	fa5f f988 	uxtb.w	r9, r8
d0005dac:	f894 8007 	ldrb.w	r8, [r4, #7]
d0005db0:	f884 9006 	strb.w	r9, [r4, #6]
d0005db4:	eba8 0202 	sub.w	r2, r8, r2
d0005db8:	b292      	uxth	r2, r2
d0005dba:	2aff      	cmp	r2, #255	; 0xff
d0005dbc:	d907      	bls.n	d0005dce <upsampleCb+0xde>
d0005dbe:	fa0f f882 	sxth.w	r8, r2
d0005dc2:	f1b8 0f00 	cmp.w	r8, #0
d0005dc6:	db5c      	blt.n	d0005e82 <upsampleCb+0x192>
d0005dc8:	f1b8 0fff 	cmp.w	r8, #255	; 0xff
d0005dcc:	dc6f      	bgt.n	d0005eae <upsampleCb+0x1be>
d0005dce:	fa5f f882 	uxtb.w	r8, r2
d0005dd2:	eb01 0141 	add.w	r1, r1, r1, lsl #1
d0005dd6:	3be3      	subs	r3, #227	; 0xe3
d0005dd8:	f810 2c02 	ldrb.w	r2, [r0, #-2]
d0005ddc:	eb01 1141 	add.w	r1, r1, r1, lsl #5
d0005de0:	f884 8007 	strb.w	r8, [r4, #7]
d0005de4:	eb03 11d1 	add.w	r1, r3, r1, lsr #7
d0005de8:	b28b      	uxth	r3, r1
d0005dea:	441a      	add	r2, r3
d0005dec:	b292      	uxth	r2, r2
d0005dee:	2aff      	cmp	r2, #255	; 0xff
d0005df0:	d904      	bls.n	d0005dfc <upsampleCb+0x10c>
d0005df2:	b211      	sxth	r1, r2
d0005df4:	2900      	cmp	r1, #0
d0005df6:	db47      	blt.n	d0005e88 <upsampleCb+0x198>
d0005df8:	29ff      	cmp	r1, #255	; 0xff
d0005dfa:	dc51      	bgt.n	d0005ea0 <upsampleCb+0x1b0>
d0005dfc:	b2d1      	uxtb	r1, r2
d0005dfe:	f810 2c01 	ldrb.w	r2, [r0, #-1]
d0005e02:	f800 1c02 	strb.w	r1, [r0, #-2]
d0005e06:	441a      	add	r2, r3
d0005e08:	b292      	uxth	r2, r2
d0005e0a:	2aff      	cmp	r2, #255	; 0xff
d0005e0c:	d904      	bls.n	d0005e18 <upsampleCb+0x128>
d0005e0e:	b211      	sxth	r1, r2
d0005e10:	2900      	cmp	r1, #0
d0005e12:	db3b      	blt.n	d0005e8c <upsampleCb+0x19c>
d0005e14:	29ff      	cmp	r1, #255	; 0xff
d0005e16:	dc45      	bgt.n	d0005ea4 <upsampleCb+0x1b4>
d0005e18:	b2d1      	uxtb	r1, r2
d0005e1a:	7982      	ldrb	r2, [r0, #6]
d0005e1c:	f800 1c01 	strb.w	r1, [r0, #-1]
d0005e20:	441a      	add	r2, r3
d0005e22:	b292      	uxth	r2, r2
d0005e24:	2aff      	cmp	r2, #255	; 0xff
d0005e26:	d904      	bls.n	d0005e32 <upsampleCb+0x142>
d0005e28:	b211      	sxth	r1, r2
d0005e2a:	2900      	cmp	r1, #0
d0005e2c:	db30      	blt.n	d0005e90 <upsampleCb+0x1a0>
d0005e2e:	29ff      	cmp	r1, #255	; 0xff
d0005e30:	dc32      	bgt.n	d0005e98 <upsampleCb+0x1a8>
d0005e32:	b2d2      	uxtb	r2, r2
d0005e34:	79c1      	ldrb	r1, [r0, #7]
d0005e36:	7182      	strb	r2, [r0, #6]
d0005e38:	440b      	add	r3, r1
d0005e3a:	b29b      	uxth	r3, r3
d0005e3c:	2bff      	cmp	r3, #255	; 0xff
d0005e3e:	d904      	bls.n	d0005e4a <upsampleCb+0x15a>
d0005e40:	b21a      	sxth	r2, r3
d0005e42:	2a00      	cmp	r2, #0
d0005e44:	db26      	blt.n	d0005e94 <upsampleCb+0x1a4>
d0005e46:	2aff      	cmp	r2, #255	; 0xff
d0005e48:	dc28      	bgt.n	d0005e9c <upsampleCb+0x1ac>
d0005e4a:	b2db      	uxtb	r3, r3
d0005e4c:	42b5      	cmp	r5, r6
d0005e4e:	71c3      	strb	r3, [r0, #7]
d0005e50:	f104 0402 	add.w	r4, r4, #2
d0005e54:	f100 0002 	add.w	r0, r0, #2
d0005e58:	f47f af5d 	bne.w	d0005d16 <upsampleCb+0x26>
d0005e5c:	f105 0610 	add.w	r6, r5, #16
d0005e60:	f10c 0c10 	add.w	ip, ip, #16
d0005e64:	3710      	adds	r7, #16
d0005e66:	4576      	cmp	r6, lr
d0005e68:	f47f af50 	bne.w	d0005d0c <upsampleCb+0x1c>
d0005e6c:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
d0005e70:	f04f 0900 	mov.w	r9, #0
d0005e74:	e76f      	b.n	d0005d56 <upsampleCb+0x66>
d0005e76:	f04f 0900 	mov.w	r9, #0
d0005e7a:	e782      	b.n	d0005d82 <upsampleCb+0x92>
d0005e7c:	f04f 0900 	mov.w	r9, #0
d0005e80:	e794      	b.n	d0005dac <upsampleCb+0xbc>
d0005e82:	f04f 0800 	mov.w	r8, #0
d0005e86:	e7a4      	b.n	d0005dd2 <upsampleCb+0xe2>
d0005e88:	2100      	movs	r1, #0
d0005e8a:	e7b8      	b.n	d0005dfe <upsampleCb+0x10e>
d0005e8c:	2100      	movs	r1, #0
d0005e8e:	e7c4      	b.n	d0005e1a <upsampleCb+0x12a>
d0005e90:	2200      	movs	r2, #0
d0005e92:	e7cf      	b.n	d0005e34 <upsampleCb+0x144>
d0005e94:	2300      	movs	r3, #0
d0005e96:	e7d9      	b.n	d0005e4c <upsampleCb+0x15c>
d0005e98:	22ff      	movs	r2, #255	; 0xff
d0005e9a:	e7cb      	b.n	d0005e34 <upsampleCb+0x144>
d0005e9c:	23ff      	movs	r3, #255	; 0xff
d0005e9e:	e7d5      	b.n	d0005e4c <upsampleCb+0x15c>
d0005ea0:	21ff      	movs	r1, #255	; 0xff
d0005ea2:	e7ac      	b.n	d0005dfe <upsampleCb+0x10e>
d0005ea4:	21ff      	movs	r1, #255	; 0xff
d0005ea6:	e7b8      	b.n	d0005e1a <upsampleCb+0x12a>
d0005ea8:	f04f 09ff 	mov.w	r9, #255	; 0xff
d0005eac:	e77e      	b.n	d0005dac <upsampleCb+0xbc>
d0005eae:	f04f 08ff 	mov.w	r8, #255	; 0xff
d0005eb2:	e78e      	b.n	d0005dd2 <upsampleCb+0xe2>
d0005eb4:	f04f 09ff 	mov.w	r9, #255	; 0xff
d0005eb8:	e74d      	b.n	d0005d56 <upsampleCb+0x66>
d0005eba:	f04f 09ff 	mov.w	r9, #255	; 0xff
d0005ebe:	e760      	b.n	d0005d82 <upsampleCb+0x92>
d0005ec0:	d000e934 	.word	0xd000e934
d0005ec4:	d000ef44 	.word	0xd000ef44
d0005ec8:	d000ee44 	.word	0xd000ee44

d0005ecc <upsampleCbH>:
d0005ecc:	4b4d      	ldr	r3, [pc, #308]	; (d0006004 <upsampleCbH+0x138>)
d0005ece:	e92d 43f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
d0005ed2:	eb03 0040 	add.w	r0, r3, r0, lsl #1
d0005ed6:	4e4c      	ldr	r6, [pc, #304]	; (d0006008 <upsampleCbH+0x13c>)
d0005ed8:	4d4c      	ldr	r5, [pc, #304]	; (d000600c <upsampleCbH+0x140>)
d0005eda:	440e      	add	r6, r1
d0005edc:	f100 0408 	add.w	r4, r0, #8
d0005ee0:	440d      	add	r5, r1
d0005ee2:	f100 0788 	add.w	r7, r0, #136	; 0x88
d0005ee6:	f1a4 0008 	sub.w	r0, r4, #8
d0005eea:	1cb1      	adds	r1, r6, #2
d0005eec:	1caa      	adds	r2, r5, #2
d0005eee:	f930 3b02 	ldrsh.w	r3, [r0], #2
d0005ef2:	f811 8c02 	ldrb.w	r8, [r1, #-2]
d0005ef6:	fa5f fc83 	uxtb.w	ip, r3
d0005efa:	eb0c 0e8c 	add.w	lr, ip, ip, lsl #2
d0005efe:	4663      	mov	r3, ip
d0005f00:	eb0c 0e4e 	add.w	lr, ip, lr, lsl #1
d0005f04:	ea4f 1e5e 	mov.w	lr, lr, lsr #5
d0005f08:	f1ae 0e2c 	sub.w	lr, lr, #44	; 0x2c
d0005f0c:	fa1f fe8e 	uxth.w	lr, lr
d0005f10:	eba8 080e 	sub.w	r8, r8, lr
d0005f14:	fa1f f888 	uxth.w	r8, r8
d0005f18:	f1b8 0fff 	cmp.w	r8, #255	; 0xff
d0005f1c:	d907      	bls.n	d0005f2e <upsampleCbH+0x62>
d0005f1e:	fa0f f988 	sxth.w	r9, r8
d0005f22:	f1b9 0f00 	cmp.w	r9, #0
d0005f26:	db57      	blt.n	d0005fd8 <upsampleCbH+0x10c>
d0005f28:	f1b9 0fff 	cmp.w	r9, #255	; 0xff
d0005f2c:	dc64      	bgt.n	d0005ff8 <upsampleCbH+0x12c>
d0005f2e:	fa5f f988 	uxtb.w	r9, r8
d0005f32:	f811 8c01 	ldrb.w	r8, [r1, #-1]
d0005f36:	f801 9c02 	strb.w	r9, [r1, #-2]
d0005f3a:	eba8 0e0e 	sub.w	lr, r8, lr
d0005f3e:	fa1f fe8e 	uxth.w	lr, lr
d0005f42:	f1be 0fff 	cmp.w	lr, #255	; 0xff
d0005f46:	d907      	bls.n	d0005f58 <upsampleCbH+0x8c>
d0005f48:	fa0f f88e 	sxth.w	r8, lr
d0005f4c:	f1b8 0f00 	cmp.w	r8, #0
d0005f50:	db45      	blt.n	d0005fde <upsampleCbH+0x112>
d0005f52:	f1b8 0fff 	cmp.w	r8, #255	; 0xff
d0005f56:	dc52      	bgt.n	d0005ffe <upsampleCbH+0x132>
d0005f58:	fa5f fe8e 	uxtb.w	lr, lr
d0005f5c:	eb0c 0c4c 	add.w	ip, ip, ip, lsl #1
d0005f60:	3be3      	subs	r3, #227	; 0xe3
d0005f62:	f812 8c02 	ldrb.w	r8, [r2, #-2]
d0005f66:	eb0c 1c4c 	add.w	ip, ip, ip, lsl #5
d0005f6a:	f801 ec01 	strb.w	lr, [r1, #-1]
d0005f6e:	eb03 13dc 	add.w	r3, r3, ip, lsr #7
d0005f72:	b29b      	uxth	r3, r3
d0005f74:	eb03 0c08 	add.w	ip, r3, r8
d0005f78:	fa1f fc8c 	uxth.w	ip, ip
d0005f7c:	f1bc 0fff 	cmp.w	ip, #255	; 0xff
d0005f80:	d907      	bls.n	d0005f92 <upsampleCbH+0xc6>
d0005f82:	fa0f fe8c 	sxth.w	lr, ip
d0005f86:	f1be 0f00 	cmp.w	lr, #0
d0005f8a:	db2b      	blt.n	d0005fe4 <upsampleCbH+0x118>
d0005f8c:	f1be 0fff 	cmp.w	lr, #255	; 0xff
d0005f90:	dc2d      	bgt.n	d0005fee <upsampleCbH+0x122>
d0005f92:	fa5f fc8c 	uxtb.w	ip, ip
d0005f96:	f812 ec01 	ldrb.w	lr, [r2, #-1]
d0005f9a:	f802 cc02 	strb.w	ip, [r2, #-2]
d0005f9e:	4473      	add	r3, lr
d0005fa0:	b29b      	uxth	r3, r3
d0005fa2:	2bff      	cmp	r3, #255	; 0xff
d0005fa4:	d907      	bls.n	d0005fb6 <upsampleCbH+0xea>
d0005fa6:	fa0f fc83 	sxth.w	ip, r3
d0005faa:	f1bc 0f00 	cmp.w	ip, #0
d0005fae:	db1c      	blt.n	d0005fea <upsampleCbH+0x11e>
d0005fb0:	f1bc 0fff 	cmp.w	ip, #255	; 0xff
d0005fb4:	dc1e      	bgt.n	d0005ff4 <upsampleCbH+0x128>
d0005fb6:	b2db      	uxtb	r3, r3
d0005fb8:	42a0      	cmp	r0, r4
d0005fba:	f802 3c01 	strb.w	r3, [r2, #-1]
d0005fbe:	f101 0102 	add.w	r1, r1, #2
d0005fc2:	f102 0202 	add.w	r2, r2, #2
d0005fc6:	d192      	bne.n	d0005eee <upsampleCbH+0x22>
d0005fc8:	f100 0410 	add.w	r4, r0, #16
d0005fcc:	3608      	adds	r6, #8
d0005fce:	3508      	adds	r5, #8
d0005fd0:	42a7      	cmp	r7, r4
d0005fd2:	d188      	bne.n	d0005ee6 <upsampleCbH+0x1a>
d0005fd4:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
d0005fd8:	f04f 0900 	mov.w	r9, #0
d0005fdc:	e7a9      	b.n	d0005f32 <upsampleCbH+0x66>
d0005fde:	f04f 0e00 	mov.w	lr, #0
d0005fe2:	e7bb      	b.n	d0005f5c <upsampleCbH+0x90>
d0005fe4:	f04f 0c00 	mov.w	ip, #0
d0005fe8:	e7d5      	b.n	d0005f96 <upsampleCbH+0xca>
d0005fea:	2300      	movs	r3, #0
d0005fec:	e7e4      	b.n	d0005fb8 <upsampleCbH+0xec>
d0005fee:	f04f 0cff 	mov.w	ip, #255	; 0xff
d0005ff2:	e7d0      	b.n	d0005f96 <upsampleCbH+0xca>
d0005ff4:	23ff      	movs	r3, #255	; 0xff
d0005ff6:	e7df      	b.n	d0005fb8 <upsampleCbH+0xec>
d0005ff8:	f04f 09ff 	mov.w	r9, #255	; 0xff
d0005ffc:	e799      	b.n	d0005f32 <upsampleCbH+0x66>
d0005ffe:	f04f 0eff 	mov.w	lr, #255	; 0xff
d0006002:	e7ab      	b.n	d0005f5c <upsampleCbH+0x90>
d0006004:	d000e934 	.word	0xd000e934
d0006008:	d000ef44 	.word	0xd000ef44
d000600c:	d000ee44 	.word	0xd000ee44

d0006010 <upsampleCbV>:
d0006010:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0006014:	4b50      	ldr	r3, [pc, #320]	; (d0006158 <upsampleCbV+0x148>)
d0006016:	4f51      	ldr	r7, [pc, #324]	; (d000615c <upsampleCbV+0x14c>)
d0006018:	eb03 0040 	add.w	r0, r3, r0, lsl #1
d000601c:	4b50      	ldr	r3, [pc, #320]	; (d0006160 <upsampleCbV+0x150>)
d000601e:	440f      	add	r7, r1
d0006020:	f100 0610 	add.w	r6, r0, #16
d0006024:	eb03 0c01 	add.w	ip, r3, r1
d0006028:	f107 0e40 	add.w	lr, r7, #64	; 0x40
d000602c:	f1a6 0210 	sub.w	r2, r6, #16
d0006030:	1e7d      	subs	r5, r7, #1
d0006032:	f10c 34ff 	add.w	r4, ip, #4294967295	; 0xffffffff
d0006036:	1df8      	adds	r0, r7, #7
d0006038:	f10c 0107 	add.w	r1, ip, #7
d000603c:	e04c      	b.n	d00060d8 <upsampleCbV+0xc8>
d000603e:	f1bb 0fff 	cmp.w	fp, #255	; 0xff
d0006042:	f300 8081 	bgt.w	d0006148 <upsampleCbV+0x138>
d0006046:	fa5f fa8a 	uxtb.w	sl, sl
d000604a:	f885 a000 	strb.w	sl, [r5]
d000604e:	f890 a001 	ldrb.w	sl, [r0, #1]
d0006052:	ebaa 0909 	sub.w	r9, sl, r9
d0006056:	fa1f f989 	uxth.w	r9, r9
d000605a:	f1b9 0fff 	cmp.w	r9, #255	; 0xff
d000605e:	d907      	bls.n	d0006070 <upsampleCbV+0x60>
d0006060:	fa0f fa89 	sxth.w	sl, r9
d0006064:	f1ba 0f00 	cmp.w	sl, #0
d0006068:	db68      	blt.n	d000613c <upsampleCbV+0x12c>
d000606a:	f1ba 0fff 	cmp.w	sl, #255	; 0xff
d000606e:	dc68      	bgt.n	d0006142 <upsampleCbV+0x132>
d0006070:	fa5f f989 	uxtb.w	r9, r9
d0006074:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d0006078:	f1a8 0ae3 	sub.w	sl, r8, #227	; 0xe3
d000607c:	f894 8001 	ldrb.w	r8, [r4, #1]
d0006080:	eb03 1343 	add.w	r3, r3, r3, lsl #5
d0006084:	f800 9f01 	strb.w	r9, [r0, #1]!
d0006088:	eb0a 13d3 	add.w	r3, sl, r3, lsr #7
d000608c:	b29b      	uxth	r3, r3
d000608e:	4498      	add	r8, r3
d0006090:	fa1f f888 	uxth.w	r8, r8
d0006094:	f1b8 0fff 	cmp.w	r8, #255	; 0xff
d0006098:	d907      	bls.n	d00060aa <upsampleCbV+0x9a>
d000609a:	fa0f f988 	sxth.w	r9, r8
d000609e:	f1b9 0f00 	cmp.w	r9, #0
d00060a2:	db39      	blt.n	d0006118 <upsampleCbV+0x108>
d00060a4:	f1b9 0fff 	cmp.w	r9, #255	; 0xff
d00060a8:	dc51      	bgt.n	d000614e <upsampleCbV+0x13e>
d00060aa:	fa5f f888 	uxtb.w	r8, r8
d00060ae:	f804 8f01 	strb.w	r8, [r4, #1]!
d00060b2:	f891 8001 	ldrb.w	r8, [r1, #1]
d00060b6:	4443      	add	r3, r8
d00060b8:	b29b      	uxth	r3, r3
d00060ba:	2bff      	cmp	r3, #255	; 0xff
d00060bc:	d907      	bls.n	d00060ce <upsampleCbV+0xbe>
d00060be:	fa0f f883 	sxth.w	r8, r3
d00060c2:	f1b8 0f00 	cmp.w	r8, #0
d00060c6:	db2a      	blt.n	d000611e <upsampleCbV+0x10e>
d00060c8:	f1b8 0fff 	cmp.w	r8, #255	; 0xff
d00060cc:	dc42      	bgt.n	d0006154 <upsampleCbV+0x144>
d00060ce:	b2db      	uxtb	r3, r3
d00060d0:	42b2      	cmp	r2, r6
d00060d2:	f801 3f01 	strb.w	r3, [r1, #1]!
d00060d6:	d027      	beq.n	d0006128 <upsampleCbV+0x118>
d00060d8:	f932 8b02 	ldrsh.w	r8, [r2], #2
d00060dc:	f815 af01 	ldrb.w	sl, [r5, #1]!
d00060e0:	fa5f f388 	uxtb.w	r3, r8
d00060e4:	eb03 0983 	add.w	r9, r3, r3, lsl #2
d00060e8:	4698      	mov	r8, r3
d00060ea:	eb03 0949 	add.w	r9, r3, r9, lsl #1
d00060ee:	ea4f 1959 	mov.w	r9, r9, lsr #5
d00060f2:	f1a9 092c 	sub.w	r9, r9, #44	; 0x2c
d00060f6:	fa1f f989 	uxth.w	r9, r9
d00060fa:	ebaa 0a09 	sub.w	sl, sl, r9
d00060fe:	fa1f fa8a 	uxth.w	sl, sl
d0006102:	f1ba 0fff 	cmp.w	sl, #255	; 0xff
d0006106:	d99e      	bls.n	d0006046 <upsampleCbV+0x36>
d0006108:	fa0f fb8a 	sxth.w	fp, sl
d000610c:	f1bb 0f00 	cmp.w	fp, #0
d0006110:	da95      	bge.n	d000603e <upsampleCbV+0x2e>
d0006112:	f04f 0a00 	mov.w	sl, #0
d0006116:	e798      	b.n	d000604a <upsampleCbV+0x3a>
d0006118:	f04f 0800 	mov.w	r8, #0
d000611c:	e7c7      	b.n	d00060ae <upsampleCbV+0x9e>
d000611e:	2300      	movs	r3, #0
d0006120:	42b2      	cmp	r2, r6
d0006122:	f801 3f01 	strb.w	r3, [r1, #1]!
d0006126:	d1d7      	bne.n	d00060d8 <upsampleCbV+0xc8>
d0006128:	3710      	adds	r7, #16
d000612a:	f10c 0c10 	add.w	ip, ip, #16
d000612e:	f102 0610 	add.w	r6, r2, #16
d0006132:	45be      	cmp	lr, r7
d0006134:	f47f af7a 	bne.w	d000602c <upsampleCbV+0x1c>
d0006138:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d000613c:	f04f 0900 	mov.w	r9, #0
d0006140:	e798      	b.n	d0006074 <upsampleCbV+0x64>
d0006142:	f04f 09ff 	mov.w	r9, #255	; 0xff
d0006146:	e795      	b.n	d0006074 <upsampleCbV+0x64>
d0006148:	f04f 0aff 	mov.w	sl, #255	; 0xff
d000614c:	e77d      	b.n	d000604a <upsampleCbV+0x3a>
d000614e:	f04f 08ff 	mov.w	r8, #255	; 0xff
d0006152:	e7ac      	b.n	d00060ae <upsampleCbV+0x9e>
d0006154:	23ff      	movs	r3, #255	; 0xff
d0006156:	e7bb      	b.n	d00060d0 <upsampleCbV+0xc0>
d0006158:	d000e934 	.word	0xd000e934
d000615c:	d000ef44 	.word	0xd000ef44
d0006160:	d000ee44 	.word	0xd000ee44

d0006164 <upsampleCr>:
d0006164:	4b75      	ldr	r3, [pc, #468]	; (d000633c <upsampleCr+0x1d8>)
d0006166:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
d000616a:	eb03 0040 	add.w	r0, r3, r0, lsl #1
d000616e:	4f74      	ldr	r7, [pc, #464]	; (d0006340 <upsampleCr+0x1dc>)
d0006170:	4e74      	ldr	r6, [pc, #464]	; (d0006344 <upsampleCr+0x1e0>)
d0006172:	440f      	add	r7, r1
d0006174:	f100 0508 	add.w	r5, r0, #8
d0006178:	440e      	add	r6, r1
d000617a:	f100 0c48 	add.w	ip, r0, #72	; 0x48
d000617e:	f1a5 0408 	sub.w	r4, r5, #8
d0006182:	1cb8      	adds	r0, r7, #2
d0006184:	1cb1      	adds	r1, r6, #2
d0006186:	f934 3b02 	ldrsh.w	r3, [r4], #2
d000618a:	f810 2c02 	ldrb.w	r2, [r0, #-2]
d000618e:	fa5f fe83 	uxtb.w	lr, r3
d0006192:	eb0e 084e 	add.w	r8, lr, lr, lsl #1
d0006196:	f1ae 03b3 	sub.w	r3, lr, #179	; 0xb3
d000619a:	eb08 1808 	add.w	r8, r8, r8, lsl #4
d000619e:	eb0e 0848 	add.w	r8, lr, r8, lsl #1
d00061a2:	eb03 2318 	add.w	r3, r3, r8, lsr #8
d00061a6:	b29b      	uxth	r3, r3
d00061a8:	441a      	add	r2, r3
d00061aa:	b292      	uxth	r2, r2
d00061ac:	2aff      	cmp	r2, #255	; 0xff
d00061ae:	d909      	bls.n	d00061c4 <upsampleCr+0x60>
d00061b0:	fa0f f882 	sxth.w	r8, r2
d00061b4:	f1b8 0f00 	cmp.w	r8, #0
d00061b8:	f2c0 8095 	blt.w	d00062e6 <upsampleCr+0x182>
d00061bc:	f1b8 0fff 	cmp.w	r8, #255	; 0xff
d00061c0:	f300 80b5 	bgt.w	d000632e <upsampleCr+0x1ca>
d00061c4:	fa5f f882 	uxtb.w	r8, r2
d00061c8:	f810 2c01 	ldrb.w	r2, [r0, #-1]
d00061cc:	f800 8c02 	strb.w	r8, [r0, #-2]
d00061d0:	441a      	add	r2, r3
d00061d2:	b292      	uxth	r2, r2
d00061d4:	2aff      	cmp	r2, #255	; 0xff
d00061d6:	d909      	bls.n	d00061ec <upsampleCr+0x88>
d00061d8:	fa0f f882 	sxth.w	r8, r2
d00061dc:	f1b8 0f00 	cmp.w	r8, #0
d00061e0:	f2c0 8084 	blt.w	d00062ec <upsampleCr+0x188>
d00061e4:	f1b8 0fff 	cmp.w	r8, #255	; 0xff
d00061e8:	f300 80a4 	bgt.w	d0006334 <upsampleCr+0x1d0>
d00061ec:	fa5f f882 	uxtb.w	r8, r2
d00061f0:	7982      	ldrb	r2, [r0, #6]
d00061f2:	f800 8c01 	strb.w	r8, [r0, #-1]
d00061f6:	441a      	add	r2, r3
d00061f8:	b292      	uxth	r2, r2
d00061fa:	2aff      	cmp	r2, #255	; 0xff
d00061fc:	d908      	bls.n	d0006210 <upsampleCr+0xac>
d00061fe:	fa0f f882 	sxth.w	r8, r2
d0006202:	f1b8 0f00 	cmp.w	r8, #0
d0006206:	db74      	blt.n	d00062f2 <upsampleCr+0x18e>
d0006208:	f1b8 0fff 	cmp.w	r8, #255	; 0xff
d000620c:	f300 808b 	bgt.w	d0006326 <upsampleCr+0x1c2>
d0006210:	b2d2      	uxtb	r2, r2
d0006212:	f890 8007 	ldrb.w	r8, [r0, #7]
d0006216:	7182      	strb	r2, [r0, #6]
d0006218:	eb03 0208 	add.w	r2, r3, r8
d000621c:	b292      	uxth	r2, r2
d000621e:	2aff      	cmp	r2, #255	; 0xff
d0006220:	d904      	bls.n	d000622c <upsampleCr+0xc8>
d0006222:	b213      	sxth	r3, r2
d0006224:	2b00      	cmp	r3, #0
d0006226:	db66      	blt.n	d00062f6 <upsampleCr+0x192>
d0006228:	2bff      	cmp	r3, #255	; 0xff
d000622a:	dc7e      	bgt.n	d000632a <upsampleCr+0x1c6>
d000622c:	b2d2      	uxtb	r2, r2
d000622e:	ebce 130e 	rsb	r3, lr, lr, lsl #4
d0006232:	f811 8c02 	ldrb.w	r8, [r1, #-2]
d0006236:	71c2      	strb	r2, [r0, #7]
d0006238:	eb0e 0383 	add.w	r3, lr, r3, lsl #2
d000623c:	ebc3 0383 	rsb	r3, r3, r3, lsl #2
d0006240:	0a1b      	lsrs	r3, r3, #8
d0006242:	3b5b      	subs	r3, #91	; 0x5b
d0006244:	b29b      	uxth	r3, r3
d0006246:	eba8 0803 	sub.w	r8, r8, r3
d000624a:	fa1f f888 	uxth.w	r8, r8
d000624e:	f1b8 0fff 	cmp.w	r8, #255	; 0xff
d0006252:	d905      	bls.n	d0006260 <upsampleCr+0xfc>
d0006254:	fa0f f288 	sxth.w	r2, r8
d0006258:	2a00      	cmp	r2, #0
d000625a:	db4e      	blt.n	d00062fa <upsampleCr+0x196>
d000625c:	2aff      	cmp	r2, #255	; 0xff
d000625e:	dc5c      	bgt.n	d000631a <upsampleCr+0x1b6>
d0006260:	fa5f f888 	uxtb.w	r8, r8
d0006264:	f811 2c01 	ldrb.w	r2, [r1, #-1]
d0006268:	f801 8c02 	strb.w	r8, [r1, #-2]
d000626c:	1ad2      	subs	r2, r2, r3
d000626e:	b292      	uxth	r2, r2
d0006270:	2aff      	cmp	r2, #255	; 0xff
d0006272:	d907      	bls.n	d0006284 <upsampleCr+0x120>
d0006274:	fa0f fe82 	sxth.w	lr, r2
d0006278:	f1be 0f00 	cmp.w	lr, #0
d000627c:	db40      	blt.n	d0006300 <upsampleCr+0x19c>
d000627e:	f1be 0fff 	cmp.w	lr, #255	; 0xff
d0006282:	dc4d      	bgt.n	d0006320 <upsampleCr+0x1bc>
d0006284:	fa5f fe82 	uxtb.w	lr, r2
d0006288:	798a      	ldrb	r2, [r1, #6]
d000628a:	f801 ec01 	strb.w	lr, [r1, #-1]
d000628e:	1ad2      	subs	r2, r2, r3
d0006290:	b292      	uxth	r2, r2
d0006292:	2aff      	cmp	r2, #255	; 0xff
d0006294:	d907      	bls.n	d00062a6 <upsampleCr+0x142>
d0006296:	fa0f fe82 	sxth.w	lr, r2
d000629a:	f1be 0f00 	cmp.w	lr, #0
d000629e:	db32      	blt.n	d0006306 <upsampleCr+0x1a2>
d00062a0:	f1be 0fff 	cmp.w	lr, #255	; 0xff
d00062a4:	dc34      	bgt.n	d0006310 <upsampleCr+0x1ac>
d00062a6:	fa5f fe82 	uxtb.w	lr, r2
d00062aa:	79ca      	ldrb	r2, [r1, #7]
d00062ac:	f881 e006 	strb.w	lr, [r1, #6]
d00062b0:	1ad3      	subs	r3, r2, r3
d00062b2:	b29b      	uxth	r3, r3
d00062b4:	2bff      	cmp	r3, #255	; 0xff
d00062b6:	d904      	bls.n	d00062c2 <upsampleCr+0x15e>
d00062b8:	b21a      	sxth	r2, r3
d00062ba:	2a00      	cmp	r2, #0
d00062bc:	db26      	blt.n	d000630c <upsampleCr+0x1a8>
d00062be:	2aff      	cmp	r2, #255	; 0xff
d00062c0:	dc29      	bgt.n	d0006316 <upsampleCr+0x1b2>
d00062c2:	b2db      	uxtb	r3, r3
d00062c4:	42ac      	cmp	r4, r5
d00062c6:	71cb      	strb	r3, [r1, #7]
d00062c8:	f100 0002 	add.w	r0, r0, #2
d00062cc:	f101 0102 	add.w	r1, r1, #2
d00062d0:	f47f af59 	bne.w	d0006186 <upsampleCr+0x22>
d00062d4:	f104 0510 	add.w	r5, r4, #16
d00062d8:	3710      	adds	r7, #16
d00062da:	3610      	adds	r6, #16
d00062dc:	4565      	cmp	r5, ip
d00062de:	f47f af4e 	bne.w	d000617e <upsampleCr+0x1a>
d00062e2:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
d00062e6:	f04f 0800 	mov.w	r8, #0
d00062ea:	e76d      	b.n	d00061c8 <upsampleCr+0x64>
d00062ec:	f04f 0800 	mov.w	r8, #0
d00062f0:	e77e      	b.n	d00061f0 <upsampleCr+0x8c>
d00062f2:	2200      	movs	r2, #0
d00062f4:	e78d      	b.n	d0006212 <upsampleCr+0xae>
d00062f6:	2200      	movs	r2, #0
d00062f8:	e799      	b.n	d000622e <upsampleCr+0xca>
d00062fa:	f04f 0800 	mov.w	r8, #0
d00062fe:	e7b1      	b.n	d0006264 <upsampleCr+0x100>
d0006300:	f04f 0e00 	mov.w	lr, #0
d0006304:	e7c0      	b.n	d0006288 <upsampleCr+0x124>
d0006306:	f04f 0e00 	mov.w	lr, #0
d000630a:	e7ce      	b.n	d00062aa <upsampleCr+0x146>
d000630c:	2300      	movs	r3, #0
d000630e:	e7d9      	b.n	d00062c4 <upsampleCr+0x160>
d0006310:	f04f 0eff 	mov.w	lr, #255	; 0xff
d0006314:	e7c9      	b.n	d00062aa <upsampleCr+0x146>
d0006316:	23ff      	movs	r3, #255	; 0xff
d0006318:	e7d4      	b.n	d00062c4 <upsampleCr+0x160>
d000631a:	f04f 08ff 	mov.w	r8, #255	; 0xff
d000631e:	e7a1      	b.n	d0006264 <upsampleCr+0x100>
d0006320:	f04f 0eff 	mov.w	lr, #255	; 0xff
d0006324:	e7b0      	b.n	d0006288 <upsampleCr+0x124>
d0006326:	22ff      	movs	r2, #255	; 0xff
d0006328:	e773      	b.n	d0006212 <upsampleCr+0xae>
d000632a:	22ff      	movs	r2, #255	; 0xff
d000632c:	e77f      	b.n	d000622e <upsampleCr+0xca>
d000632e:	f04f 08ff 	mov.w	r8, #255	; 0xff
d0006332:	e749      	b.n	d00061c8 <upsampleCr+0x64>
d0006334:	f04f 08ff 	mov.w	r8, #255	; 0xff
d0006338:	e75a      	b.n	d00061f0 <upsampleCr+0x8c>
d000633a:	bf00      	nop
d000633c:	d000e934 	.word	0xd000e934
d0006340:	d000f044 	.word	0xd000f044
d0006344:	d000ef44 	.word	0xd000ef44

d0006348 <upsampleCrH>:
d0006348:	4b47      	ldr	r3, [pc, #284]	; (d0006468 <upsampleCrH+0x120>)
d000634a:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
d000634e:	eb03 0040 	add.w	r0, r3, r0, lsl #1
d0006352:	4f46      	ldr	r7, [pc, #280]	; (d000646c <upsampleCrH+0x124>)
d0006354:	4e46      	ldr	r6, [pc, #280]	; (d0006470 <upsampleCrH+0x128>)
d0006356:	440f      	add	r7, r1
d0006358:	f100 0508 	add.w	r5, r0, #8
d000635c:	440e      	add	r6, r1
d000635e:	f100 0c88 	add.w	ip, r0, #136	; 0x88
d0006362:	f1a5 0408 	sub.w	r4, r5, #8
d0006366:	1cb8      	adds	r0, r7, #2
d0006368:	1cb1      	adds	r1, r6, #2
d000636a:	f934 2b02 	ldrsh.w	r2, [r4], #2
d000636e:	f810 ec02 	ldrb.w	lr, [r0, #-2]
d0006372:	b2d3      	uxtb	r3, r2
d0006374:	eb03 0843 	add.w	r8, r3, r3, lsl #1
d0006378:	f1a3 02b3 	sub.w	r2, r3, #179	; 0xb3
d000637c:	eb08 1808 	add.w	r8, r8, r8, lsl #4
d0006380:	eb03 0848 	add.w	r8, r3, r8, lsl #1
d0006384:	eb02 2218 	add.w	r2, r2, r8, lsr #8
d0006388:	b292      	uxth	r2, r2
d000638a:	4496      	add	lr, r2
d000638c:	fa1f fe8e 	uxth.w	lr, lr
d0006390:	f1be 0fff 	cmp.w	lr, #255	; 0xff
d0006394:	d907      	bls.n	d00063a6 <upsampleCrH+0x5e>
d0006396:	fa0f f88e 	sxth.w	r8, lr
d000639a:	f1b8 0f00 	cmp.w	r8, #0
d000639e:	db4f      	blt.n	d0006440 <upsampleCrH+0xf8>
d00063a0:	f1b8 0fff 	cmp.w	r8, #255	; 0xff
d00063a4:	dc5b      	bgt.n	d000645e <upsampleCrH+0x116>
d00063a6:	fa5f fe8e 	uxtb.w	lr, lr
d00063aa:	f810 8c01 	ldrb.w	r8, [r0, #-1]
d00063ae:	f800 ec02 	strb.w	lr, [r0, #-2]
d00063b2:	4442      	add	r2, r8
d00063b4:	b292      	uxth	r2, r2
d00063b6:	2aff      	cmp	r2, #255	; 0xff
d00063b8:	d907      	bls.n	d00063ca <upsampleCrH+0x82>
d00063ba:	fa0f fe82 	sxth.w	lr, r2
d00063be:	f1be 0f00 	cmp.w	lr, #0
d00063c2:	db40      	blt.n	d0006446 <upsampleCrH+0xfe>
d00063c4:	f1be 0fff 	cmp.w	lr, #255	; 0xff
d00063c8:	dc4c      	bgt.n	d0006464 <upsampleCrH+0x11c>
d00063ca:	b2d2      	uxtb	r2, r2
d00063cc:	ebc3 1803 	rsb	r8, r3, r3, lsl #4
d00063d0:	f811 ec02 	ldrb.w	lr, [r1, #-2]
d00063d4:	f800 2c01 	strb.w	r2, [r0, #-1]
d00063d8:	eb03 0388 	add.w	r3, r3, r8, lsl #2
d00063dc:	ebc3 0383 	rsb	r3, r3, r3, lsl #2
d00063e0:	0a1b      	lsrs	r3, r3, #8
d00063e2:	3b5b      	subs	r3, #91	; 0x5b
d00063e4:	b29b      	uxth	r3, r3
d00063e6:	ebae 0e03 	sub.w	lr, lr, r3
d00063ea:	fa1f fe8e 	uxth.w	lr, lr
d00063ee:	f1be 0fff 	cmp.w	lr, #255	; 0xff
d00063f2:	d905      	bls.n	d0006400 <upsampleCrH+0xb8>
d00063f4:	fa0f f28e 	sxth.w	r2, lr
d00063f8:	2a00      	cmp	r2, #0
d00063fa:	db26      	blt.n	d000644a <upsampleCrH+0x102>
d00063fc:	2aff      	cmp	r2, #255	; 0xff
d00063fe:	dc29      	bgt.n	d0006454 <upsampleCrH+0x10c>
d0006400:	fa5f fe8e 	uxtb.w	lr, lr
d0006404:	f811 2c01 	ldrb.w	r2, [r1, #-1]
d0006408:	f801 ec02 	strb.w	lr, [r1, #-2]
d000640c:	1ad3      	subs	r3, r2, r3
d000640e:	b29b      	uxth	r3, r3
d0006410:	2bff      	cmp	r3, #255	; 0xff
d0006412:	d904      	bls.n	d000641e <upsampleCrH+0xd6>
d0006414:	b21a      	sxth	r2, r3
d0006416:	2a00      	cmp	r2, #0
d0006418:	db1a      	blt.n	d0006450 <upsampleCrH+0x108>
d000641a:	2aff      	cmp	r2, #255	; 0xff
d000641c:	dc1d      	bgt.n	d000645a <upsampleCrH+0x112>
d000641e:	b2db      	uxtb	r3, r3
d0006420:	42ac      	cmp	r4, r5
d0006422:	f801 3c01 	strb.w	r3, [r1, #-1]
d0006426:	f100 0002 	add.w	r0, r0, #2
d000642a:	f101 0102 	add.w	r1, r1, #2
d000642e:	d19c      	bne.n	d000636a <upsampleCrH+0x22>
d0006430:	f104 0510 	add.w	r5, r4, #16
d0006434:	3708      	adds	r7, #8
d0006436:	3608      	adds	r6, #8
d0006438:	45ac      	cmp	ip, r5
d000643a:	d192      	bne.n	d0006362 <upsampleCrH+0x1a>
d000643c:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
d0006440:	f04f 0e00 	mov.w	lr, #0
d0006444:	e7b1      	b.n	d00063aa <upsampleCrH+0x62>
d0006446:	2200      	movs	r2, #0
d0006448:	e7c0      	b.n	d00063cc <upsampleCrH+0x84>
d000644a:	f04f 0e00 	mov.w	lr, #0
d000644e:	e7d9      	b.n	d0006404 <upsampleCrH+0xbc>
d0006450:	2300      	movs	r3, #0
d0006452:	e7e5      	b.n	d0006420 <upsampleCrH+0xd8>
d0006454:	f04f 0eff 	mov.w	lr, #255	; 0xff
d0006458:	e7d4      	b.n	d0006404 <upsampleCrH+0xbc>
d000645a:	23ff      	movs	r3, #255	; 0xff
d000645c:	e7e0      	b.n	d0006420 <upsampleCrH+0xd8>
d000645e:	f04f 0eff 	mov.w	lr, #255	; 0xff
d0006462:	e7a2      	b.n	d00063aa <upsampleCrH+0x62>
d0006464:	22ff      	movs	r2, #255	; 0xff
d0006466:	e7b1      	b.n	d00063cc <upsampleCrH+0x84>
d0006468:	d000e934 	.word	0xd000e934
d000646c:	d000f044 	.word	0xd000f044
d0006470:	d000ef44 	.word	0xd000ef44

d0006474 <upsampleCrV>:
d0006474:	4b4c      	ldr	r3, [pc, #304]	; (d00065a8 <upsampleCrV+0x134>)
d0006476:	4a4d      	ldr	r2, [pc, #308]	; (d00065ac <upsampleCrV+0x138>)
d0006478:	eb03 0040 	add.w	r0, r3, r0, lsl #1
d000647c:	4b4c      	ldr	r3, [pc, #304]	; (d00065b0 <upsampleCrV+0x13c>)
d000647e:	eb02 0c01 	add.w	ip, r2, r1
d0006482:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
d0006486:	f100 0710 	add.w	r7, r0, #16
d000648a:	eb03 0e01 	add.w	lr, r3, r1
d000648e:	f10c 0840 	add.w	r8, ip, #64	; 0x40
d0006492:	f1a7 0110 	sub.w	r1, r7, #16
d0006496:	f10c 36ff 	add.w	r6, ip, #4294967295	; 0xffffffff
d000649a:	f10e 35ff 	add.w	r5, lr, #4294967295	; 0xffffffff
d000649e:	f10c 0407 	add.w	r4, ip, #7
d00064a2:	f10e 0007 	add.w	r0, lr, #7
d00064a6:	e042      	b.n	d000652e <upsampleCrV+0xba>
d00064a8:	f1ba 0fff 	cmp.w	sl, #255	; 0xff
d00064ac:	dc73      	bgt.n	d0006596 <upsampleCrV+0x122>
d00064ae:	fa5f f989 	uxtb.w	r9, r9
d00064b2:	f886 9000 	strb.w	r9, [r6]
d00064b6:	f894 9001 	ldrb.w	r9, [r4, #1]
d00064ba:	444a      	add	r2, r9
d00064bc:	b292      	uxth	r2, r2
d00064be:	2aff      	cmp	r2, #255	; 0xff
d00064c0:	d907      	bls.n	d00064d2 <upsampleCrV+0x5e>
d00064c2:	fa0f f982 	sxth.w	r9, r2
d00064c6:	f1b9 0f00 	cmp.w	r9, #0
d00064ca:	db60      	blt.n	d000658e <upsampleCrV+0x11a>
d00064cc:	f1b9 0fff 	cmp.w	r9, #255	; 0xff
d00064d0:	dc5f      	bgt.n	d0006592 <upsampleCrV+0x11e>
d00064d2:	b2d2      	uxtb	r2, r2
d00064d4:	ebc3 1a03 	rsb	sl, r3, r3, lsl #4
d00064d8:	f895 9001 	ldrb.w	r9, [r5, #1]
d00064dc:	f804 2f01 	strb.w	r2, [r4, #1]!
d00064e0:	eb03 038a 	add.w	r3, r3, sl, lsl #2
d00064e4:	ebc3 0383 	rsb	r3, r3, r3, lsl #2
d00064e8:	0a1b      	lsrs	r3, r3, #8
d00064ea:	3b5b      	subs	r3, #91	; 0x5b
d00064ec:	b29b      	uxth	r3, r3
d00064ee:	eba9 0903 	sub.w	r9, r9, r3
d00064f2:	fa1f f989 	uxth.w	r9, r9
d00064f6:	f1b9 0fff 	cmp.w	r9, #255	; 0xff
d00064fa:	d905      	bls.n	d0006508 <upsampleCrV+0x94>
d00064fc:	fa0f f289 	sxth.w	r2, r9
d0006500:	2a00      	cmp	r2, #0
d0006502:	db32      	blt.n	d000656a <upsampleCrV+0xf6>
d0006504:	2aff      	cmp	r2, #255	; 0xff
d0006506:	dc49      	bgt.n	d000659c <upsampleCrV+0x128>
d0006508:	fa5f f989 	uxtb.w	r9, r9
d000650c:	f805 9f01 	strb.w	r9, [r5, #1]!
d0006510:	7842      	ldrb	r2, [r0, #1]
d0006512:	1ad3      	subs	r3, r2, r3
d0006514:	b29b      	uxth	r3, r3
d0006516:	2bff      	cmp	r3, #255	; 0xff
d0006518:	d904      	bls.n	d0006524 <upsampleCrV+0xb0>
d000651a:	b21a      	sxth	r2, r3
d000651c:	2a00      	cmp	r2, #0
d000651e:	db27      	blt.n	d0006570 <upsampleCrV+0xfc>
d0006520:	2aff      	cmp	r2, #255	; 0xff
d0006522:	dc3e      	bgt.n	d00065a2 <upsampleCrV+0x12e>
d0006524:	b2db      	uxtb	r3, r3
d0006526:	42b9      	cmp	r1, r7
d0006528:	f800 3f01 	strb.w	r3, [r0, #1]!
d000652c:	d025      	beq.n	d000657a <upsampleCrV+0x106>
d000652e:	f931 2b02 	ldrsh.w	r2, [r1], #2
d0006532:	f816 9f01 	ldrb.w	r9, [r6, #1]!
d0006536:	b2d3      	uxtb	r3, r2
d0006538:	eb03 0a43 	add.w	sl, r3, r3, lsl #1
d000653c:	f1a3 02b3 	sub.w	r2, r3, #179	; 0xb3
d0006540:	eb0a 1a0a 	add.w	sl, sl, sl, lsl #4
d0006544:	eb03 0a4a 	add.w	sl, r3, sl, lsl #1
d0006548:	eb02 221a 	add.w	r2, r2, sl, lsr #8
d000654c:	b292      	uxth	r2, r2
d000654e:	4491      	add	r9, r2
d0006550:	fa1f f989 	uxth.w	r9, r9
d0006554:	f1b9 0fff 	cmp.w	r9, #255	; 0xff
d0006558:	d9a9      	bls.n	d00064ae <upsampleCrV+0x3a>
d000655a:	fa0f fa89 	sxth.w	sl, r9
d000655e:	f1ba 0f00 	cmp.w	sl, #0
d0006562:	daa1      	bge.n	d00064a8 <upsampleCrV+0x34>
d0006564:	f04f 0900 	mov.w	r9, #0
d0006568:	e7a3      	b.n	d00064b2 <upsampleCrV+0x3e>
d000656a:	f04f 0900 	mov.w	r9, #0
d000656e:	e7cd      	b.n	d000650c <upsampleCrV+0x98>
d0006570:	2300      	movs	r3, #0
d0006572:	42b9      	cmp	r1, r7
d0006574:	f800 3f01 	strb.w	r3, [r0, #1]!
d0006578:	d1d9      	bne.n	d000652e <upsampleCrV+0xba>
d000657a:	f10c 0c10 	add.w	ip, ip, #16
d000657e:	f10e 0e10 	add.w	lr, lr, #16
d0006582:	f101 0710 	add.w	r7, r1, #16
d0006586:	45c4      	cmp	ip, r8
d0006588:	d183      	bne.n	d0006492 <upsampleCrV+0x1e>
d000658a:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
d000658e:	2200      	movs	r2, #0
d0006590:	e7a0      	b.n	d00064d4 <upsampleCrV+0x60>
d0006592:	22ff      	movs	r2, #255	; 0xff
d0006594:	e79e      	b.n	d00064d4 <upsampleCrV+0x60>
d0006596:	f04f 09ff 	mov.w	r9, #255	; 0xff
d000659a:	e78a      	b.n	d00064b2 <upsampleCrV+0x3e>
d000659c:	f04f 09ff 	mov.w	r9, #255	; 0xff
d00065a0:	e7b4      	b.n	d000650c <upsampleCrV+0x98>
d00065a2:	23ff      	movs	r3, #255	; 0xff
d00065a4:	e7bf      	b.n	d0006526 <upsampleCrV+0xb2>
d00065a6:	bf00      	nop
d00065a8:	d000e934 	.word	0xd000e934
d00065ac:	d000f044 	.word	0xd000f044
d00065b0:	d000ef44 	.word	0xd000ef44

d00065b4 <getChar>:
d00065b4:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d00065b6:	4c14      	ldr	r4, [pc, #80]	; (d0006608 <getChar+0x54>)
d00065b8:	7823      	ldrb	r3, [r4, #0]
d00065ba:	b143      	cbz	r3, d00065ce <getChar+0x1a>
d00065bc:	4d13      	ldr	r5, [pc, #76]	; (d000660c <getChar+0x58>)
d00065be:	782a      	ldrb	r2, [r5, #0]
d00065c0:	3b01      	subs	r3, #1
d00065c2:	4813      	ldr	r0, [pc, #76]	; (d0006610 <getChar+0x5c>)
d00065c4:	1c51      	adds	r1, r2, #1
d00065c6:	7023      	strb	r3, [r4, #0]
d00065c8:	5c80      	ldrb	r0, [r0, r2]
d00065ca:	7029      	strb	r1, [r5, #0]
d00065cc:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d00065ce:	4e11      	ldr	r6, [pc, #68]	; (d0006614 <getChar+0x60>)
d00065d0:	2704      	movs	r7, #4
d00065d2:	4811      	ldr	r0, [pc, #68]	; (d0006618 <getChar+0x64>)
d00065d4:	4622      	mov	r2, r4
d00065d6:	4d0d      	ldr	r5, [pc, #52]	; (d000660c <getChar+0x58>)
d00065d8:	21fc      	movs	r1, #252	; 0xfc
d00065da:	7023      	strb	r3, [r4, #0]
d00065dc:	6833      	ldr	r3, [r6, #0]
d00065de:	6806      	ldr	r6, [r0, #0]
d00065e0:	480e      	ldr	r0, [pc, #56]	; (d000661c <getChar+0x68>)
d00065e2:	702f      	strb	r7, [r5, #0]
d00065e4:	47b0      	blx	r6
d00065e6:	b108      	cbz	r0, d00065ec <getChar+0x38>
d00065e8:	4b0d      	ldr	r3, [pc, #52]	; (d0006620 <getChar+0x6c>)
d00065ea:	7018      	strb	r0, [r3, #0]
d00065ec:	7823      	ldrb	r3, [r4, #0]
d00065ee:	2b00      	cmp	r3, #0
d00065f0:	d1e5      	bne.n	d00065be <getChar+0xa>
d00065f2:	4a0c      	ldr	r2, [pc, #48]	; (d0006624 <getChar+0x70>)
d00065f4:	7813      	ldrb	r3, [r2, #0]
d00065f6:	43db      	mvns	r3, r3
d00065f8:	b2db      	uxtb	r3, r3
d00065fa:	2b00      	cmp	r3, #0
d00065fc:	7013      	strb	r3, [r2, #0]
d00065fe:	bf14      	ite	ne
d0006600:	20ff      	movne	r0, #255	; 0xff
d0006602:	20d9      	moveq	r0, #217	; 0xd9
d0006604:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d0006606:	bf00      	nop
d0006608:	d000ee38 	.word	0xd000ee38
d000660c:	d000ee39 	.word	0xd000ee39
d0006610:	d000ed38 	.word	0xd000ed38
d0006614:	d000f264 	.word	0xd000f264
d0006618:	d000f268 	.word	0xd000f268
d000661c:	d000ed3c 	.word	0xd000ed3c
d0006620:	d000e933 	.word	0xd000e933
d0006624:	d000f25f 	.word	0xd000f25f

d0006628 <getBits.constprop.1>:
d0006628:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
d000662c:	f8df 8088 	ldr.w	r8, [pc, #136]	; d00066b8 <getBits.constprop.1+0x90>
d0006630:	4c1f      	ldr	r4, [pc, #124]	; (d00066b0 <getBits.constprop.1+0x88>)
d0006632:	f898 3000 	ldrb.w	r3, [r8]
d0006636:	8827      	ldrh	r7, [r4, #0]
d0006638:	2b07      	cmp	r3, #7
d000663a:	d907      	bls.n	d000664c <getBits.constprop.1+0x24>
d000663c:	3b08      	subs	r3, #8
d000663e:	023a      	lsls	r2, r7, #8
d0006640:	0a38      	lsrs	r0, r7, #8
d0006642:	f888 3000 	strb.w	r3, [r8]
d0006646:	8022      	strh	r2, [r4, #0]
d0006648:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
d000664c:	fa07 f303 	lsl.w	r3, r7, r3
d0006650:	4606      	mov	r6, r0
d0006652:	8023      	strh	r3, [r4, #0]
d0006654:	f7ff ffae 	bl	d00065b4 <getChar>
d0006658:	28ff      	cmp	r0, #255	; 0xff
d000665a:	4605      	mov	r5, r0
d000665c:	d101      	bne.n	d0006662 <getBits.constprop.1+0x3a>
d000665e:	07f3      	lsls	r3, r6, #31
d0006660:	d40b      	bmi.n	d000667a <getBits.constprop.1+0x52>
d0006662:	8820      	ldrh	r0, [r4, #0]
d0006664:	f898 3000 	ldrb.w	r3, [r8]
d0006668:	4305      	orrs	r5, r0
d000666a:	0a38      	lsrs	r0, r7, #8
d000666c:	f1c3 0308 	rsb	r3, r3, #8
d0006670:	b2ad      	uxth	r5, r5
d0006672:	409d      	lsls	r5, r3
d0006674:	8025      	strh	r5, [r4, #0]
d0006676:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
d000667a:	f7ff ff9b 	bl	d00065b4 <getChar>
d000667e:	2800      	cmp	r0, #0
d0006680:	d0ef      	beq.n	d0006662 <getBits.constprop.1+0x3a>
d0006682:	f8df c038 	ldr.w	ip, [pc, #56]	; d00066bc <getBits.constprop.1+0x94>
d0006686:	f04f 0eff 	mov.w	lr, #255	; 0xff
d000668a:	4e0a      	ldr	r6, [pc, #40]	; (d00066b4 <getBits.constprop.1+0x8c>)
d000668c:	f89c 3000 	ldrb.w	r3, [ip]
d0006690:	7831      	ldrb	r1, [r6, #0]
d0006692:	1e9a      	subs	r2, r3, #2
d0006694:	3b01      	subs	r3, #1
d0006696:	3102      	adds	r1, #2
d0006698:	b2d2      	uxtb	r2, r2
d000669a:	b2db      	uxtb	r3, r3
d000669c:	7031      	strb	r1, [r6, #0]
d000669e:	f88c 2000 	strb.w	r2, [ip]
d00066a2:	f8df c01c 	ldr.w	ip, [pc, #28]	; d00066c0 <getBits.constprop.1+0x98>
d00066a6:	f80c 0003 	strb.w	r0, [ip, r3]
d00066aa:	f80c e002 	strb.w	lr, [ip, r2]
d00066ae:	e7d8      	b.n	d0006662 <getBits.constprop.1+0x3a>
d00066b0:	d000e930 	.word	0xd000e930
d00066b4:	d000ee38 	.word	0xd000ee38
d00066b8:	d000e932 	.word	0xd000e932
d00066bc:	d000ee39 	.word	0xd000ee39
d00066c0:	d000ed38 	.word	0xd000ed38

d00066c4 <getBits.constprop.0>:
d00066c4:	b570      	push	{r4, r5, r6, lr}
d00066c6:	4c17      	ldr	r4, [pc, #92]	; (d0006724 <getBits.constprop.0+0x60>)
d00066c8:	4d17      	ldr	r5, [pc, #92]	; (d0006728 <getBits.constprop.0+0x64>)
d00066ca:	8826      	ldrh	r6, [r4, #0]
d00066cc:	782b      	ldrb	r3, [r5, #0]
d00066ce:	fa06 f303 	lsl.w	r3, r6, r3
d00066d2:	f026 06ff 	bic.w	r6, r6, #255	; 0xff
d00066d6:	8023      	strh	r3, [r4, #0]
d00066d8:	f7ff ff6c 	bl	d00065b4 <getChar>
d00066dc:	8823      	ldrh	r3, [r4, #0]
d00066de:	782a      	ldrb	r2, [r5, #0]
d00066e0:	4303      	orrs	r3, r0
d00066e2:	f1c2 0008 	rsb	r0, r2, #8
d00066e6:	2a07      	cmp	r2, #7
d00066e8:	b29b      	uxth	r3, r3
d00066ea:	fa03 f300 	lsl.w	r3, r3, r0
d00066ee:	f3c3 2107 	ubfx	r1, r3, #8, #8
d00066f2:	ea46 0601 	orr.w	r6, r6, r1
d00066f6:	d905      	bls.n	d0006704 <getBits.constprop.0+0x40>
d00066f8:	3a08      	subs	r2, #8
d00066fa:	021b      	lsls	r3, r3, #8
d00066fc:	4630      	mov	r0, r6
d00066fe:	702a      	strb	r2, [r5, #0]
d0006700:	8023      	strh	r3, [r4, #0]
d0006702:	bd70      	pop	{r4, r5, r6, pc}
d0006704:	b29b      	uxth	r3, r3
d0006706:	4093      	lsls	r3, r2
d0006708:	8023      	strh	r3, [r4, #0]
d000670a:	f7ff ff53 	bl	d00065b4 <getChar>
d000670e:	8822      	ldrh	r2, [r4, #0]
d0006710:	782b      	ldrb	r3, [r5, #0]
d0006712:	4310      	orrs	r0, r2
d0006714:	f1c3 0308 	rsb	r3, r3, #8
d0006718:	b280      	uxth	r0, r0
d000671a:	4098      	lsls	r0, r3
d000671c:	8020      	strh	r0, [r4, #0]
d000671e:	4630      	mov	r0, r6
d0006720:	bd70      	pop	{r4, r5, r6, pc}
d0006722:	bf00      	nop
d0006724:	d000e930 	.word	0xd000e930
d0006728:	d000e932 	.word	0xd000e932

d000672c <processMarkers>:
d000672c:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0006730:	f8df 91f0 	ldr.w	r9, [pc, #496]	; d0006924 <processMarkers+0x1f8>
d0006734:	b089      	sub	sp, #36	; 0x24
d0006736:	f8df b1f0 	ldr.w	fp, [pc, #496]	; d0006928 <processMarkers+0x1fc>
d000673a:	f8df a1f0 	ldr.w	sl, [pc, #496]	; d000692c <processMarkers+0x200>
d000673e:	9003      	str	r0, [sp, #12]
d0006740:	f8b9 0000 	ldrh.w	r0, [r9]
d0006744:	f89b 2000 	ldrb.w	r2, [fp]
d0006748:	2a07      	cmp	r2, #7
d000674a:	d96b      	bls.n	d0006824 <processMarkers+0xf8>
d000674c:	1203      	asrs	r3, r0, #8
d000674e:	3a08      	subs	r2, #8
d0006750:	0201      	lsls	r1, r0, #8
d0006752:	b2d2      	uxtb	r2, r2
d0006754:	2bff      	cmp	r3, #255	; 0xff
d0006756:	b288      	uxth	r0, r1
d0006758:	f88b 2000 	strb.w	r2, [fp]
d000675c:	d1f4      	bne.n	d0006748 <processMarkers+0x1c>
d000675e:	2a07      	cmp	r2, #7
d0006760:	f1a2 0408 	sub.w	r4, r2, #8
d0006764:	ea4f 2100 	mov.w	r1, r0, lsl #8
d0006768:	ea4f 2320 	mov.w	r3, r0, asr #8
d000676c:	d93f      	bls.n	d00067ee <processMarkers+0xc2>
d000676e:	b2e2      	uxtb	r2, r4
d0006770:	2bff      	cmp	r3, #255	; 0xff
d0006772:	b288      	uxth	r0, r1
d0006774:	f88b 2000 	strb.w	r2, [fp]
d0006778:	f8a9 0000 	strh.w	r0, [r9]
d000677c:	d0ef      	beq.n	d000675e <processMarkers+0x32>
d000677e:	b2d9      	uxtb	r1, r3
d0006780:	2b00      	cmp	r3, #0
d0006782:	d0e1      	beq.n	d0006748 <processMarkers+0x1c>
d0006784:	2901      	cmp	r1, #1
d0006786:	d02e      	beq.n	d00067e6 <processMarkers+0xba>
d0006788:	f101 0340 	add.w	r3, r1, #64	; 0x40
d000678c:	b2db      	uxtb	r3, r3
d000678e:	2b1d      	cmp	r3, #29
d0006790:	f200 822d 	bhi.w	d0006bee <processMarkers+0x4c2>
d0006794:	f1a1 03c0 	sub.w	r3, r1, #192	; 0xc0
d0006798:	2b1d      	cmp	r3, #29
d000679a:	f200 8228 	bhi.w	d0006bee <processMarkers+0x4c2>
d000679e:	e8df f013 	tbh	[pc, r3, lsl #1]
d00067a2:	0220      	.short	0x0220
d00067a4:	02200220 	.word	0x02200220
d00067a8:	00c70220 	.word	0x00c70220
d00067ac:	02200220 	.word	0x02200220
d00067b0:	00220220 	.word	0x00220220
d00067b4:	02200220 	.word	0x02200220
d00067b8:	001e0220 	.word	0x001e0220
d00067bc:	02200220 	.word	0x02200220
d00067c0:	00220220 	.word	0x00220220
d00067c4:	00220022 	.word	0x00220022
d00067c8:	00220022 	.word	0x00220022
d00067cc:	00220022 	.word	0x00220022
d00067d0:	02200022 	.word	0x02200022
d00067d4:	02200220 	.word	0x02200220
d00067d8:	02260062 	.word	0x02260062
d00067dc:	0058      	.short	0x0058
d00067de:	2011      	movs	r0, #17
d00067e0:	b009      	add	sp, #36	; 0x24
d00067e2:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d00067e6:	2012      	movs	r0, #18
d00067e8:	b009      	add	sp, #36	; 0x24
d00067ea:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d00067ee:	fa00 f202 	lsl.w	r2, r0, r2
d00067f2:	4604      	mov	r4, r0
d00067f4:	f8a9 2000 	strh.w	r2, [r9]
d00067f8:	f7ff fedc 	bl	d00065b4 <getChar>
d00067fc:	f8b9 1000 	ldrh.w	r1, [r9]
d0006800:	1223      	asrs	r3, r4, #8
d0006802:	f89b 2000 	ldrb.w	r2, [fp]
d0006806:	4308      	orrs	r0, r1
d0006808:	2bff      	cmp	r3, #255	; 0xff
d000680a:	f1c2 0108 	rsb	r1, r2, #8
d000680e:	b280      	uxth	r0, r0
d0006810:	fa00 f001 	lsl.w	r0, r0, r1
d0006814:	b280      	uxth	r0, r0
d0006816:	f8a9 0000 	strh.w	r0, [r9]
d000681a:	d0a0      	beq.n	d000675e <processMarkers+0x32>
d000681c:	b2d9      	uxtb	r1, r3
d000681e:	2b00      	cmp	r3, #0
d0006820:	d092      	beq.n	d0006748 <processMarkers+0x1c>
d0006822:	e7af      	b.n	d0006784 <processMarkers+0x58>
d0006824:	fa00 f202 	lsl.w	r2, r0, r2
d0006828:	4604      	mov	r4, r0
d000682a:	f8a9 2000 	strh.w	r2, [r9]
d000682e:	f7ff fec1 	bl	d00065b4 <getChar>
d0006832:	f8b9 3000 	ldrh.w	r3, [r9]
d0006836:	1224      	asrs	r4, r4, #8
d0006838:	f89b 2000 	ldrb.w	r2, [fp]
d000683c:	4318      	orrs	r0, r3
d000683e:	2cff      	cmp	r4, #255	; 0xff
d0006840:	f1c2 0308 	rsb	r3, r2, #8
d0006844:	b280      	uxth	r0, r0
d0006846:	fa00 f003 	lsl.w	r0, r0, r3
d000684a:	b280      	uxth	r0, r0
d000684c:	f47f af7c 	bne.w	d0006748 <processMarkers+0x1c>
d0006850:	e785      	b.n	d000675e <processMarkers+0x32>
d0006852:	f7ff ff37 	bl	d00066c4 <getBits.constprop.0>
d0006856:	2804      	cmp	r0, #4
d0006858:	f47f af72 	bne.w	d0006740 <processMarkers+0x14>
d000685c:	f7ff ff32 	bl	d00066c4 <getBits.constprop.0>
d0006860:	4b2c      	ldr	r3, [pc, #176]	; (d0006914 <processMarkers+0x1e8>)
d0006862:	8018      	strh	r0, [r3, #0]
d0006864:	e76c      	b.n	d0006740 <processMarkers+0x14>
d0006866:	f7ff ff2d 	bl	d00066c4 <getBits.constprop.0>
d000686a:	2801      	cmp	r0, #1
d000686c:	f67f af68 	bls.w	d0006740 <processMarkers+0x14>
d0006870:	3802      	subs	r0, #2
d0006872:	b284      	uxth	r4, r0
d0006874:	2c00      	cmp	r4, #0
d0006876:	f43f af63 	beq.w	d0006740 <processMarkers+0x14>
d000687a:	2000      	movs	r0, #0
d000687c:	f7ff fed4 	bl	d0006628 <getBits.constprop.1>
d0006880:	f010 0f0e 	tst.w	r0, #14
d0006884:	f3c0 1603 	ubfx	r6, r0, #4, #4
d0006888:	f000 030f 	and.w	r3, r0, #15
d000688c:	f47f af58 	bne.w	d0006740 <processMarkers+0x14>
d0006890:	2b00      	cmp	r3, #0
d0006892:	f000 81df 	beq.w	d0006c54 <processMarkers+0x528>
d0006896:	f89a 3000 	ldrb.w	r3, [sl]
d000689a:	f043 0302 	orr.w	r3, r3, #2
d000689e:	f88a 3000 	strb.w	r3, [sl]
d00068a2:	2e00      	cmp	r6, #0
d00068a4:	f040 82f3 	bne.w	d0006e8e <processMarkers+0x762>
d00068a8:	4d1b      	ldr	r5, [pc, #108]	; (d0006918 <processMarkers+0x1ec>)
d00068aa:	f105 0780 	add.w	r7, r5, #128	; 0x80
d00068ae:	f89b 3000 	ldrb.w	r3, [fp]
d00068b2:	f8b9 8000 	ldrh.w	r8, [r9]
d00068b6:	2b07      	cmp	r3, #7
d00068b8:	f1a3 0008 	sub.w	r0, r3, #8
d00068bc:	ea4f 2108 	mov.w	r1, r8, lsl #8
d00068c0:	ea4f 2228 	mov.w	r2, r8, asr #8
d00068c4:	f240 81a5 	bls.w	d0006c12 <processMarkers+0x4e6>
d00068c8:	f825 2f02 	strh.w	r2, [r5, #2]!
d00068cc:	42bd      	cmp	r5, r7
d00068ce:	f88b 0000 	strb.w	r0, [fp]
d00068d2:	f8a9 1000 	strh.w	r1, [r9]
d00068d6:	d1ea      	bne.n	d00068ae <processMarkers+0x182>
d00068d8:	4b10      	ldr	r3, [pc, #64]	; (d000691c <processMarkers+0x1f0>)
d00068da:	4911      	ldr	r1, [pc, #68]	; (d0006920 <processMarkers+0x1f4>)
d00068dc:	3b02      	subs	r3, #2
d00068de:	2504      	movs	r5, #4
d00068e0:	f101 0040 	add.w	r0, r1, #64	; 0x40
d00068e4:	f811 7b01 	ldrb.w	r7, [r1], #1
d00068e8:	f833 2f02 	ldrh.w	r2, [r3, #2]!
d00068ec:	4288      	cmp	r0, r1
d00068ee:	fb12 5207 	smlabb	r2, r2, r7, r5
d00068f2:	ea4f 02e2 	mov.w	r2, r2, asr #3
d00068f6:	801a      	strh	r2, [r3, #0]
d00068f8:	d1f4      	bne.n	d00068e4 <processMarkers+0x1b8>
d00068fa:	2e00      	cmp	r6, #0
d00068fc:	bf0c      	ite	eq
d00068fe:	2341      	moveq	r3, #65	; 0x41
d0006900:	2381      	movne	r3, #129	; 0x81
d0006902:	42a3      	cmp	r3, r4
d0006904:	f63f af1c 	bhi.w	d0006740 <processMarkers+0x14>
d0006908:	1ae4      	subs	r4, r4, r3
d000690a:	b2a4      	uxth	r4, r4
d000690c:	2c00      	cmp	r4, #0
d000690e:	d1b4      	bne.n	d000687a <processMarkers+0x14e>
d0006910:	e716      	b.n	d0006740 <processMarkers+0x14>
d0006912:	bf00      	nop
d0006914:	d000f25a 	.word	0xd000f25a
d0006918:	d000f1d6 	.word	0xd000f1d6
d000691c:	d000f1d8 	.word	0xd000f1d8
d0006920:	d000e048 	.word	0xd000e048
d0006924:	d000e930 	.word	0xd000e930
d0006928:	d000e932 	.word	0xd000e932
d000692c:	d000f261 	.word	0xd000f261
d0006930:	f7ff fec8 	bl	d00066c4 <getBits.constprop.0>
d0006934:	2801      	cmp	r0, #1
d0006936:	f67f af03 	bls.w	d0006740 <processMarkers+0x14>
d000693a:	3802      	subs	r0, #2
d000693c:	b286      	uxth	r6, r0
d000693e:	2e00      	cmp	r6, #0
d0006940:	f43f aefe 	beq.w	d0006740 <processMarkers+0x14>
d0006944:	f8df 8308 	ldr.w	r8, [pc, #776]	; d0006c50 <processMarkers+0x524>
d0006948:	4637      	mov	r7, r6
d000694a:	2000      	movs	r0, #0
d000694c:	f7ff fe6c 	bl	d0006628 <getBits.constprop.1>
d0006950:	f010 060e 	ands.w	r6, r0, #14
d0006954:	b2c5      	uxtb	r5, r0
d0006956:	f47f aef3 	bne.w	d0006740 <processMarkers+0x14>
d000695a:	f005 03f0 	and.w	r3, r5, #240	; 0xf0
d000695e:	2b10      	cmp	r3, #16
d0006960:	f63f aeee 	bhi.w	d0006740 <processMarkers+0x14>
d0006964:	08ed      	lsrs	r5, r5, #3
d0006966:	f000 0001 	and.w	r0, r0, #1
d000696a:	2401      	movs	r4, #1
d000696c:	f10d 030f 	add.w	r3, sp, #15
d0006970:	f005 0502 	and.w	r5, r5, #2
d0006974:	f898 c000 	ldrb.w	ip, [r8]
d0006978:	9300      	str	r3, [sp, #0]
d000697a:	ea45 0200 	orr.w	r2, r5, r0
d000697e:	4bb2      	ldr	r3, [pc, #712]	; (d0006c48 <processMarkers+0x51c>)
d0006980:	4635      	mov	r5, r6
d0006982:	fa04 fe02 	lsl.w	lr, r4, r2
d0006986:	4cb1      	ldr	r4, [pc, #708]	; (d0006c4c <processMarkers+0x520>)
d0006988:	f853 3022 	ldr.w	r3, [r3, r2, lsl #2]
d000698c:	f854 4022 	ldr.w	r4, [r4, r2, lsl #2]
d0006990:	ea4e 0c0c 	orr.w	ip, lr, ip
d0006994:	9301      	str	r3, [sp, #4]
d0006996:	9402      	str	r4, [sp, #8]
d0006998:	9c00      	ldr	r4, [sp, #0]
d000699a:	9700      	str	r7, [sp, #0]
d000699c:	4617      	mov	r7, r2
d000699e:	f888 c000 	strb.w	ip, [r8]
d00069a2:	2000      	movs	r0, #0
d00069a4:	f7ff fe40 	bl	d0006628 <getBits.constprop.1>
d00069a8:	f10d 011f 	add.w	r1, sp, #31
d00069ac:	fa55 f580 	uxtab	r5, r5, r0
d00069b0:	f804 0f01 	strb.w	r0, [r4, #1]!
d00069b4:	428c      	cmp	r4, r1
d00069b6:	b2ad      	uxth	r5, r5
d00069b8:	d1f3      	bne.n	d00069a2 <processMarkers+0x276>
d00069ba:	463a      	mov	r2, r7
d00069bc:	9c02      	ldr	r4, [sp, #8]
d00069be:	9f00      	ldr	r7, [sp, #0]
d00069c0:	2a02      	cmp	r2, #2
d00069c2:	bfb4      	ite	lt
d00069c4:	230c      	movlt	r3, #12
d00069c6:	23ff      	movge	r3, #255	; 0xff
d00069c8:	429d      	cmp	r5, r3
d00069ca:	f63f aeb9 	bhi.w	d0006740 <processMarkers+0x14>
d00069ce:	b14d      	cbz	r5, d00069e4 <processMarkers+0x2b8>
d00069d0:	2000      	movs	r0, #0
d00069d2:	f7ff fe29 	bl	d0006628 <getBits.constprop.1>
d00069d6:	1c73      	adds	r3, r6, #1
d00069d8:	9a01      	ldr	r2, [sp, #4]
d00069da:	5590      	strb	r0, [r2, r6]
d00069dc:	b2da      	uxtb	r2, r3
d00069de:	4295      	cmp	r5, r2
d00069e0:	4616      	mov	r6, r2
d00069e2:	d8f5      	bhi.n	d00069d0 <processMarkers+0x2a4>
d00069e4:	3511      	adds	r5, #17
d00069e6:	b2ad      	uxth	r5, r5
d00069e8:	42bd      	cmp	r5, r7
d00069ea:	f63f aea9 	bhi.w	d0006740 <processMarkers+0x14>
d00069ee:	1b7d      	subs	r5, r7, r5
d00069f0:	f89d 2010 	ldrb.w	r2, [sp, #16]
d00069f4:	b2af      	uxth	r7, r5
d00069f6:	2a00      	cmp	r2, #0
d00069f8:	f000 8207 	beq.w	d0006e0a <processMarkers+0x6de>
d00069fc:	2300      	movs	r3, #0
d00069fe:	1e51      	subs	r1, r2, #1
d0006a00:	8023      	strh	r3, [r4, #0]
d0006a02:	f884 3040 	strb.w	r3, [r4, #64]	; 0x40
d0006a06:	0053      	lsls	r3, r2, #1
d0006a08:	8421      	strh	r1, [r4, #32]
d0006a0a:	f89d 1011 	ldrb.w	r1, [sp, #17]
d0006a0e:	2900      	cmp	r1, #0
d0006a10:	f000 81f4 	beq.w	d0006dfc <processMarkers+0x6d0>
d0006a14:	1858      	adds	r0, r3, r1
d0006a16:	8063      	strh	r3, [r4, #2]
d0006a18:	4411      	add	r1, r2
d0006a1a:	f884 2041 	strb.w	r2, [r4, #65]	; 0x41
d0006a1e:	b283      	uxth	r3, r0
d0006a20:	b2ca      	uxtb	r2, r1
d0006a22:	1e59      	subs	r1, r3, #1
d0006a24:	8461      	strh	r1, [r4, #34]	; 0x22
d0006a26:	005b      	lsls	r3, r3, #1
d0006a28:	f89d 1012 	ldrb.w	r1, [sp, #18]
d0006a2c:	b29b      	uxth	r3, r3
d0006a2e:	2900      	cmp	r1, #0
d0006a30:	f000 81dd 	beq.w	d0006dee <processMarkers+0x6c2>
d0006a34:	1858      	adds	r0, r3, r1
d0006a36:	80a3      	strh	r3, [r4, #4]
d0006a38:	4411      	add	r1, r2
d0006a3a:	f884 2042 	strb.w	r2, [r4, #66]	; 0x42
d0006a3e:	b283      	uxth	r3, r0
d0006a40:	b2ca      	uxtb	r2, r1
d0006a42:	1e59      	subs	r1, r3, #1
d0006a44:	84a1      	strh	r1, [r4, #36]	; 0x24
d0006a46:	005b      	lsls	r3, r3, #1
d0006a48:	f89d 1013 	ldrb.w	r1, [sp, #19]
d0006a4c:	b29b      	uxth	r3, r3
d0006a4e:	2900      	cmp	r1, #0
d0006a50:	f000 815e 	beq.w	d0006d10 <processMarkers+0x5e4>
d0006a54:	1858      	adds	r0, r3, r1
d0006a56:	80e3      	strh	r3, [r4, #6]
d0006a58:	4411      	add	r1, r2
d0006a5a:	f884 2043 	strb.w	r2, [r4, #67]	; 0x43
d0006a5e:	b283      	uxth	r3, r0
d0006a60:	b2ca      	uxtb	r2, r1
d0006a62:	1e59      	subs	r1, r3, #1
d0006a64:	005b      	lsls	r3, r3, #1
d0006a66:	84e1      	strh	r1, [r4, #38]	; 0x26
d0006a68:	b29b      	uxth	r3, r3
d0006a6a:	f89d 1014 	ldrb.w	r1, [sp, #20]
d0006a6e:	2900      	cmp	r1, #0
d0006a70:	f000 815b 	beq.w	d0006d2a <processMarkers+0x5fe>
d0006a74:	1858      	adds	r0, r3, r1
d0006a76:	8123      	strh	r3, [r4, #8]
d0006a78:	4411      	add	r1, r2
d0006a7a:	f884 2044 	strb.w	r2, [r4, #68]	; 0x44
d0006a7e:	b283      	uxth	r3, r0
d0006a80:	b2ca      	uxtb	r2, r1
d0006a82:	1e59      	subs	r1, r3, #1
d0006a84:	005b      	lsls	r3, r3, #1
d0006a86:	8521      	strh	r1, [r4, #40]	; 0x28
d0006a88:	b29b      	uxth	r3, r3
d0006a8a:	f89d 1015 	ldrb.w	r1, [sp, #21]
d0006a8e:	2900      	cmp	r1, #0
d0006a90:	f000 8158 	beq.w	d0006d44 <processMarkers+0x618>
d0006a94:	1858      	adds	r0, r3, r1
d0006a96:	8163      	strh	r3, [r4, #10]
d0006a98:	4411      	add	r1, r2
d0006a9a:	f884 2045 	strb.w	r2, [r4, #69]	; 0x45
d0006a9e:	b283      	uxth	r3, r0
d0006aa0:	b2ca      	uxtb	r2, r1
d0006aa2:	1e59      	subs	r1, r3, #1
d0006aa4:	005b      	lsls	r3, r3, #1
d0006aa6:	8561      	strh	r1, [r4, #42]	; 0x2a
d0006aa8:	b29b      	uxth	r3, r3
d0006aaa:	f89d 1016 	ldrb.w	r1, [sp, #22]
d0006aae:	2900      	cmp	r1, #0
d0006ab0:	f000 8155 	beq.w	d0006d5e <processMarkers+0x632>
d0006ab4:	1858      	adds	r0, r3, r1
d0006ab6:	81a3      	strh	r3, [r4, #12]
d0006ab8:	4411      	add	r1, r2
d0006aba:	f884 2046 	strb.w	r2, [r4, #70]	; 0x46
d0006abe:	b283      	uxth	r3, r0
d0006ac0:	b2ca      	uxtb	r2, r1
d0006ac2:	1e59      	subs	r1, r3, #1
d0006ac4:	005b      	lsls	r3, r3, #1
d0006ac6:	85a1      	strh	r1, [r4, #44]	; 0x2c
d0006ac8:	b29b      	uxth	r3, r3
d0006aca:	f89d 1017 	ldrb.w	r1, [sp, #23]
d0006ace:	2900      	cmp	r1, #0
d0006ad0:	f000 8152 	beq.w	d0006d78 <processMarkers+0x64c>
d0006ad4:	1858      	adds	r0, r3, r1
d0006ad6:	81e3      	strh	r3, [r4, #14]
d0006ad8:	4411      	add	r1, r2
d0006ada:	f884 2047 	strb.w	r2, [r4, #71]	; 0x47
d0006ade:	b283      	uxth	r3, r0
d0006ae0:	b2ca      	uxtb	r2, r1
d0006ae2:	1e59      	subs	r1, r3, #1
d0006ae4:	005b      	lsls	r3, r3, #1
d0006ae6:	85e1      	strh	r1, [r4, #46]	; 0x2e
d0006ae8:	b29b      	uxth	r3, r3
d0006aea:	f89d 1018 	ldrb.w	r1, [sp, #24]
d0006aee:	2900      	cmp	r1, #0
d0006af0:	f000 814f 	beq.w	d0006d92 <processMarkers+0x666>
d0006af4:	1858      	adds	r0, r3, r1
d0006af6:	8223      	strh	r3, [r4, #16]
d0006af8:	4411      	add	r1, r2
d0006afa:	f884 2048 	strb.w	r2, [r4, #72]	; 0x48
d0006afe:	b283      	uxth	r3, r0
d0006b00:	b2ca      	uxtb	r2, r1
d0006b02:	1e59      	subs	r1, r3, #1
d0006b04:	005b      	lsls	r3, r3, #1
d0006b06:	8621      	strh	r1, [r4, #48]	; 0x30
d0006b08:	b29b      	uxth	r3, r3
d0006b0a:	f89d 1019 	ldrb.w	r1, [sp, #25]
d0006b0e:	2900      	cmp	r1, #0
d0006b10:	f000 814c 	beq.w	d0006dac <processMarkers+0x680>
d0006b14:	1858      	adds	r0, r3, r1
d0006b16:	8263      	strh	r3, [r4, #18]
d0006b18:	4411      	add	r1, r2
d0006b1a:	f884 2049 	strb.w	r2, [r4, #73]	; 0x49
d0006b1e:	b283      	uxth	r3, r0
d0006b20:	b2ca      	uxtb	r2, r1
d0006b22:	1e59      	subs	r1, r3, #1
d0006b24:	005b      	lsls	r3, r3, #1
d0006b26:	8661      	strh	r1, [r4, #50]	; 0x32
d0006b28:	b29b      	uxth	r3, r3
d0006b2a:	f89d 101a 	ldrb.w	r1, [sp, #26]
d0006b2e:	2900      	cmp	r1, #0
d0006b30:	f000 8149 	beq.w	d0006dc6 <processMarkers+0x69a>
d0006b34:	1858      	adds	r0, r3, r1
d0006b36:	82a3      	strh	r3, [r4, #20]
d0006b38:	4411      	add	r1, r2
d0006b3a:	f884 204a 	strb.w	r2, [r4, #74]	; 0x4a
d0006b3e:	b283      	uxth	r3, r0
d0006b40:	b2ca      	uxtb	r2, r1
d0006b42:	1e59      	subs	r1, r3, #1
d0006b44:	005b      	lsls	r3, r3, #1
d0006b46:	86a1      	strh	r1, [r4, #52]	; 0x34
d0006b48:	b29b      	uxth	r3, r3
d0006b4a:	f89d 101b 	ldrb.w	r1, [sp, #27]
d0006b4e:	2900      	cmp	r1, #0
d0006b50:	f000 8146 	beq.w	d0006de0 <processMarkers+0x6b4>
d0006b54:	1858      	adds	r0, r3, r1
d0006b56:	82e3      	strh	r3, [r4, #22]
d0006b58:	4411      	add	r1, r2
d0006b5a:	f884 204b 	strb.w	r2, [r4, #75]	; 0x4b
d0006b5e:	b283      	uxth	r3, r0
d0006b60:	b2ca      	uxtb	r2, r1
d0006b62:	1e59      	subs	r1, r3, #1
d0006b64:	86e1      	strh	r1, [r4, #54]	; 0x36
d0006b66:	005b      	lsls	r3, r3, #1
d0006b68:	f89d 101c 	ldrb.w	r1, [sp, #28]
d0006b6c:	b29b      	uxth	r3, r3
d0006b6e:	2900      	cmp	r1, #0
d0006b70:	f000 80c7 	beq.w	d0006d02 <processMarkers+0x5d6>
d0006b74:	1858      	adds	r0, r3, r1
d0006b76:	8323      	strh	r3, [r4, #24]
d0006b78:	4411      	add	r1, r2
d0006b7a:	f884 204c 	strb.w	r2, [r4, #76]	; 0x4c
d0006b7e:	b283      	uxth	r3, r0
d0006b80:	b2ca      	uxtb	r2, r1
d0006b82:	1e59      	subs	r1, r3, #1
d0006b84:	8721      	strh	r1, [r4, #56]	; 0x38
d0006b86:	005b      	lsls	r3, r3, #1
d0006b88:	f89d 101d 	ldrb.w	r1, [sp, #29]
d0006b8c:	b29b      	uxth	r3, r3
d0006b8e:	2900      	cmp	r1, #0
d0006b90:	f000 80b0 	beq.w	d0006cf4 <processMarkers+0x5c8>
d0006b94:	1858      	adds	r0, r3, r1
d0006b96:	8363      	strh	r3, [r4, #26]
d0006b98:	4411      	add	r1, r2
d0006b9a:	f884 204d 	strb.w	r2, [r4, #77]	; 0x4d
d0006b9e:	b283      	uxth	r3, r0
d0006ba0:	b2ca      	uxtb	r2, r1
d0006ba2:	1e59      	subs	r1, r3, #1
d0006ba4:	8761      	strh	r1, [r4, #58]	; 0x3a
d0006ba6:	005b      	lsls	r3, r3, #1
d0006ba8:	f89d 101e 	ldrb.w	r1, [sp, #30]
d0006bac:	b29b      	uxth	r3, r3
d0006bae:	2900      	cmp	r1, #0
d0006bb0:	f000 8099 	beq.w	d0006ce6 <processMarkers+0x5ba>
d0006bb4:	1858      	adds	r0, r3, r1
d0006bb6:	83a3      	strh	r3, [r4, #28]
d0006bb8:	4411      	add	r1, r2
d0006bba:	f884 204e 	strb.w	r2, [r4, #78]	; 0x4e
d0006bbe:	b283      	uxth	r3, r0
d0006bc0:	b2ca      	uxtb	r2, r1
d0006bc2:	1e59      	subs	r1, r3, #1
d0006bc4:	87a1      	strh	r1, [r4, #60]	; 0x3c
d0006bc6:	f89d 101f 	ldrb.w	r1, [sp, #31]
d0006bca:	2900      	cmp	r1, #0
d0006bcc:	d17f      	bne.n	d0006cce <processMarkers+0x5a2>
d0006bce:	f64f 73ff 	movw	r3, #65535	; 0xffff
d0006bd2:	83e1      	strh	r1, [r4, #30]
d0006bd4:	f884 104f 	strb.w	r1, [r4, #79]	; 0x4f
d0006bd8:	87e3      	strh	r3, [r4, #62]	; 0x3e
d0006bda:	2f00      	cmp	r7, #0
d0006bdc:	f47f aeb5 	bne.w	d000694a <processMarkers+0x21e>
d0006be0:	e5ae      	b.n	d0006740 <processMarkers+0x14>
d0006be2:	9b03      	ldr	r3, [sp, #12]
d0006be4:	2000      	movs	r0, #0
d0006be6:	7019      	strb	r1, [r3, #0]
d0006be8:	b009      	add	sp, #36	; 0x24
d0006bea:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0006bee:	f7ff fd69 	bl	d00066c4 <getBits.constprop.0>
d0006bf2:	2801      	cmp	r0, #1
d0006bf4:	f67f ada4 	bls.w	d0006740 <processMarkers+0x14>
d0006bf8:	3802      	subs	r0, #2
d0006bfa:	b284      	uxth	r4, r0
d0006bfc:	2c00      	cmp	r4, #0
d0006bfe:	f43f ad9f 	beq.w	d0006740 <processMarkers+0x14>
d0006c02:	3c01      	subs	r4, #1
d0006c04:	2000      	movs	r0, #0
d0006c06:	f7ff fd0f 	bl	d0006628 <getBits.constprop.1>
d0006c0a:	b2a4      	uxth	r4, r4
d0006c0c:	2c00      	cmp	r4, #0
d0006c0e:	d1f8      	bne.n	d0006c02 <processMarkers+0x4d6>
d0006c10:	e596      	b.n	d0006740 <processMarkers+0x14>
d0006c12:	fa08 f303 	lsl.w	r3, r8, r3
d0006c16:	ea4f 2828 	mov.w	r8, r8, asr #8
d0006c1a:	f8a9 3000 	strh.w	r3, [r9]
d0006c1e:	f7ff fcc9 	bl	d00065b4 <getChar>
d0006c22:	f8b9 3000 	ldrh.w	r3, [r9]
d0006c26:	f825 8f02 	strh.w	r8, [r5, #2]!
d0006c2a:	42af      	cmp	r7, r5
d0006c2c:	ea40 0003 	orr.w	r0, r0, r3
d0006c30:	f89b 3000 	ldrb.w	r3, [fp]
d0006c34:	b280      	uxth	r0, r0
d0006c36:	f1c3 0308 	rsb	r3, r3, #8
d0006c3a:	fa00 f003 	lsl.w	r0, r0, r3
d0006c3e:	f8a9 0000 	strh.w	r0, [r9]
d0006c42:	f47f ae34 	bne.w	d00068ae <processMarkers+0x182>
d0006c46:	e647      	b.n	d00068d8 <processMarkers+0x1ac>
d0006c48:	d000dff8 	.word	0xd000dff8
d0006c4c:	d000dfe8 	.word	0xd000dfe8
d0006c50:	d000f260 	.word	0xd000f260
d0006c54:	f89a 3000 	ldrb.w	r3, [sl]
d0006c58:	f043 0301 	orr.w	r3, r3, #1
d0006c5c:	f88a 3000 	strb.w	r3, [sl]
d0006c60:	2e00      	cmp	r6, #0
d0006c62:	f040 80da 	bne.w	d0006e1a <processMarkers+0x6ee>
d0006c66:	4da6      	ldr	r5, [pc, #664]	; (d0006f00 <processMarkers+0x7d4>)
d0006c68:	f105 0780 	add.w	r7, r5, #128	; 0x80
d0006c6c:	f89b 3000 	ldrb.w	r3, [fp]
d0006c70:	f8b9 8000 	ldrh.w	r8, [r9]
d0006c74:	2b07      	cmp	r3, #7
d0006c76:	f1a3 0008 	sub.w	r0, r3, #8
d0006c7a:	ea4f 2108 	mov.w	r1, r8, lsl #8
d0006c7e:	ea4f 2228 	mov.w	r2, r8, asr #8
d0006c82:	d909      	bls.n	d0006c98 <processMarkers+0x56c>
d0006c84:	f825 2f02 	strh.w	r2, [r5, #2]!
d0006c88:	42bd      	cmp	r5, r7
d0006c8a:	f88b 0000 	strb.w	r0, [fp]
d0006c8e:	f8a9 1000 	strh.w	r1, [r9]
d0006c92:	d1eb      	bne.n	d0006c6c <processMarkers+0x540>
d0006c94:	4b9b      	ldr	r3, [pc, #620]	; (d0006f04 <processMarkers+0x7d8>)
d0006c96:	e620      	b.n	d00068da <processMarkers+0x1ae>
d0006c98:	fa08 f303 	lsl.w	r3, r8, r3
d0006c9c:	ea4f 2828 	mov.w	r8, r8, asr #8
d0006ca0:	f8a9 3000 	strh.w	r3, [r9]
d0006ca4:	f7ff fc86 	bl	d00065b4 <getChar>
d0006ca8:	f8b9 3000 	ldrh.w	r3, [r9]
d0006cac:	f825 8f02 	strh.w	r8, [r5, #2]!
d0006cb0:	42bd      	cmp	r5, r7
d0006cb2:	ea40 0003 	orr.w	r0, r0, r3
d0006cb6:	f89b 3000 	ldrb.w	r3, [fp]
d0006cba:	b280      	uxth	r0, r0
d0006cbc:	f1c3 0308 	rsb	r3, r3, #8
d0006cc0:	fa00 f003 	lsl.w	r0, r0, r3
d0006cc4:	f8a9 0000 	strh.w	r0, [r9]
d0006cc8:	d1d0      	bne.n	d0006c6c <processMarkers+0x540>
d0006cca:	4b8e      	ldr	r3, [pc, #568]	; (d0006f04 <processMarkers+0x7d8>)
d0006ccc:	e605      	b.n	d00068da <processMarkers+0x1ae>
d0006cce:	005b      	lsls	r3, r3, #1
d0006cd0:	3901      	subs	r1, #1
d0006cd2:	f884 204f 	strb.w	r2, [r4, #79]	; 0x4f
d0006cd6:	b29b      	uxth	r3, r3
d0006cd8:	4419      	add	r1, r3
d0006cda:	83e3      	strh	r3, [r4, #30]
d0006cdc:	87e1      	strh	r1, [r4, #62]	; 0x3e
d0006cde:	2f00      	cmp	r7, #0
d0006ce0:	f47f ae33 	bne.w	d000694a <processMarkers+0x21e>
d0006ce4:	e52c      	b.n	d0006740 <processMarkers+0x14>
d0006ce6:	f64f 70ff 	movw	r0, #65535	; 0xffff
d0006cea:	83a1      	strh	r1, [r4, #28]
d0006cec:	f884 104e 	strb.w	r1, [r4, #78]	; 0x4e
d0006cf0:	87a0      	strh	r0, [r4, #60]	; 0x3c
d0006cf2:	e768      	b.n	d0006bc6 <processMarkers+0x49a>
d0006cf4:	f64f 70ff 	movw	r0, #65535	; 0xffff
d0006cf8:	8361      	strh	r1, [r4, #26]
d0006cfa:	f884 104d 	strb.w	r1, [r4, #77]	; 0x4d
d0006cfe:	8760      	strh	r0, [r4, #58]	; 0x3a
d0006d00:	e751      	b.n	d0006ba6 <processMarkers+0x47a>
d0006d02:	f64f 70ff 	movw	r0, #65535	; 0xffff
d0006d06:	8321      	strh	r1, [r4, #24]
d0006d08:	f884 104c 	strb.w	r1, [r4, #76]	; 0x4c
d0006d0c:	8720      	strh	r0, [r4, #56]	; 0x38
d0006d0e:	e73a      	b.n	d0006b86 <processMarkers+0x45a>
d0006d10:	f64f 70ff 	movw	r0, #65535	; 0xffff
d0006d14:	005b      	lsls	r3, r3, #1
d0006d16:	80e1      	strh	r1, [r4, #6]
d0006d18:	f884 1043 	strb.w	r1, [r4, #67]	; 0x43
d0006d1c:	b29b      	uxth	r3, r3
d0006d1e:	f89d 1014 	ldrb.w	r1, [sp, #20]
d0006d22:	84e0      	strh	r0, [r4, #38]	; 0x26
d0006d24:	2900      	cmp	r1, #0
d0006d26:	f47f aea5 	bne.w	d0006a74 <processMarkers+0x348>
d0006d2a:	f64f 70ff 	movw	r0, #65535	; 0xffff
d0006d2e:	005b      	lsls	r3, r3, #1
d0006d30:	8121      	strh	r1, [r4, #8]
d0006d32:	f884 1044 	strb.w	r1, [r4, #68]	; 0x44
d0006d36:	b29b      	uxth	r3, r3
d0006d38:	f89d 1015 	ldrb.w	r1, [sp, #21]
d0006d3c:	8520      	strh	r0, [r4, #40]	; 0x28
d0006d3e:	2900      	cmp	r1, #0
d0006d40:	f47f aea8 	bne.w	d0006a94 <processMarkers+0x368>
d0006d44:	f64f 70ff 	movw	r0, #65535	; 0xffff
d0006d48:	005b      	lsls	r3, r3, #1
d0006d4a:	8161      	strh	r1, [r4, #10]
d0006d4c:	f884 1045 	strb.w	r1, [r4, #69]	; 0x45
d0006d50:	b29b      	uxth	r3, r3
d0006d52:	f89d 1016 	ldrb.w	r1, [sp, #22]
d0006d56:	8560      	strh	r0, [r4, #42]	; 0x2a
d0006d58:	2900      	cmp	r1, #0
d0006d5a:	f47f aeab 	bne.w	d0006ab4 <processMarkers+0x388>
d0006d5e:	f64f 70ff 	movw	r0, #65535	; 0xffff
d0006d62:	005b      	lsls	r3, r3, #1
d0006d64:	81a1      	strh	r1, [r4, #12]
d0006d66:	f884 1046 	strb.w	r1, [r4, #70]	; 0x46
d0006d6a:	b29b      	uxth	r3, r3
d0006d6c:	f89d 1017 	ldrb.w	r1, [sp, #23]
d0006d70:	85a0      	strh	r0, [r4, #44]	; 0x2c
d0006d72:	2900      	cmp	r1, #0
d0006d74:	f47f aeae 	bne.w	d0006ad4 <processMarkers+0x3a8>
d0006d78:	f64f 70ff 	movw	r0, #65535	; 0xffff
d0006d7c:	005b      	lsls	r3, r3, #1
d0006d7e:	81e1      	strh	r1, [r4, #14]
d0006d80:	f884 1047 	strb.w	r1, [r4, #71]	; 0x47
d0006d84:	b29b      	uxth	r3, r3
d0006d86:	f89d 1018 	ldrb.w	r1, [sp, #24]
d0006d8a:	85e0      	strh	r0, [r4, #46]	; 0x2e
d0006d8c:	2900      	cmp	r1, #0
d0006d8e:	f47f aeb1 	bne.w	d0006af4 <processMarkers+0x3c8>
d0006d92:	f64f 70ff 	movw	r0, #65535	; 0xffff
d0006d96:	005b      	lsls	r3, r3, #1
d0006d98:	8221      	strh	r1, [r4, #16]
d0006d9a:	f884 1048 	strb.w	r1, [r4, #72]	; 0x48
d0006d9e:	b29b      	uxth	r3, r3
d0006da0:	f89d 1019 	ldrb.w	r1, [sp, #25]
d0006da4:	8620      	strh	r0, [r4, #48]	; 0x30
d0006da6:	2900      	cmp	r1, #0
d0006da8:	f47f aeb4 	bne.w	d0006b14 <processMarkers+0x3e8>
d0006dac:	f64f 70ff 	movw	r0, #65535	; 0xffff
d0006db0:	005b      	lsls	r3, r3, #1
d0006db2:	8261      	strh	r1, [r4, #18]
d0006db4:	f884 1049 	strb.w	r1, [r4, #73]	; 0x49
d0006db8:	b29b      	uxth	r3, r3
d0006dba:	f89d 101a 	ldrb.w	r1, [sp, #26]
d0006dbe:	8660      	strh	r0, [r4, #50]	; 0x32
d0006dc0:	2900      	cmp	r1, #0
d0006dc2:	f47f aeb7 	bne.w	d0006b34 <processMarkers+0x408>
d0006dc6:	f64f 70ff 	movw	r0, #65535	; 0xffff
d0006dca:	005b      	lsls	r3, r3, #1
d0006dcc:	82a1      	strh	r1, [r4, #20]
d0006dce:	f884 104a 	strb.w	r1, [r4, #74]	; 0x4a
d0006dd2:	b29b      	uxth	r3, r3
d0006dd4:	f89d 101b 	ldrb.w	r1, [sp, #27]
d0006dd8:	86a0      	strh	r0, [r4, #52]	; 0x34
d0006dda:	2900      	cmp	r1, #0
d0006ddc:	f47f aeba 	bne.w	d0006b54 <processMarkers+0x428>
d0006de0:	f64f 70ff 	movw	r0, #65535	; 0xffff
d0006de4:	82e1      	strh	r1, [r4, #22]
d0006de6:	f884 104b 	strb.w	r1, [r4, #75]	; 0x4b
d0006dea:	86e0      	strh	r0, [r4, #54]	; 0x36
d0006dec:	e6bb      	b.n	d0006b66 <processMarkers+0x43a>
d0006dee:	f64f 70ff 	movw	r0, #65535	; 0xffff
d0006df2:	80a1      	strh	r1, [r4, #4]
d0006df4:	f884 1042 	strb.w	r1, [r4, #66]	; 0x42
d0006df8:	84a0      	strh	r0, [r4, #36]	; 0x24
d0006dfa:	e624      	b.n	d0006a46 <processMarkers+0x31a>
d0006dfc:	f64f 70ff 	movw	r0, #65535	; 0xffff
d0006e00:	8061      	strh	r1, [r4, #2]
d0006e02:	f884 1041 	strb.w	r1, [r4, #65]	; 0x41
d0006e06:	8460      	strh	r0, [r4, #34]	; 0x22
d0006e08:	e60d      	b.n	d0006a26 <processMarkers+0x2fa>
d0006e0a:	f64f 71ff 	movw	r1, #65535	; 0xffff
d0006e0e:	4613      	mov	r3, r2
d0006e10:	8022      	strh	r2, [r4, #0]
d0006e12:	f884 2040 	strb.w	r2, [r4, #64]	; 0x40
d0006e16:	8421      	strh	r1, [r4, #32]
d0006e18:	e5f7      	b.n	d0006a0a <processMarkers+0x2de>
d0006e1a:	f8df 80e4 	ldr.w	r8, [pc, #228]	; d0006f00 <processMarkers+0x7d4>
d0006e1e:	f108 0780 	add.w	r7, r8, #128	; 0x80
d0006e22:	f89b 3000 	ldrb.w	r3, [fp]
d0006e26:	2000      	movs	r0, #0
d0006e28:	f8b9 5000 	ldrh.w	r5, [r9]
d0006e2c:	2b07      	cmp	r3, #7
d0006e2e:	f1a3 0108 	sub.w	r1, r3, #8
d0006e32:	ea4f 2205 	mov.w	r2, r5, lsl #8
d0006e36:	d90d      	bls.n	d0006e54 <processMarkers+0x728>
d0006e38:	f405 457f 	and.w	r5, r5, #65280	; 0xff00
d0006e3c:	f88b 1000 	strb.w	r1, [fp]
d0006e40:	f8a9 2000 	strh.w	r2, [r9]
d0006e44:	f7ff fbf0 	bl	d0006628 <getBits.constprop.1>
d0006e48:	4428      	add	r0, r5
d0006e4a:	f828 0f02 	strh.w	r0, [r8, #2]!
d0006e4e:	45b8      	cmp	r8, r7
d0006e50:	d1e7      	bne.n	d0006e22 <processMarkers+0x6f6>
d0006e52:	e71f      	b.n	d0006c94 <processMarkers+0x568>
d0006e54:	fa05 f303 	lsl.w	r3, r5, r3
d0006e58:	f405 457f 	and.w	r5, r5, #65280	; 0xff00
d0006e5c:	f8a9 3000 	strh.w	r3, [r9]
d0006e60:	f7ff fba8 	bl	d00065b4 <getChar>
d0006e64:	f8b9 3000 	ldrh.w	r3, [r9]
d0006e68:	f89b 2000 	ldrb.w	r2, [fp]
d0006e6c:	4303      	orrs	r3, r0
d0006e6e:	2000      	movs	r0, #0
d0006e70:	f1c2 0208 	rsb	r2, r2, #8
d0006e74:	b29b      	uxth	r3, r3
d0006e76:	4093      	lsls	r3, r2
d0006e78:	f8a9 3000 	strh.w	r3, [r9]
d0006e7c:	f7ff fbd4 	bl	d0006628 <getBits.constprop.1>
d0006e80:	4405      	add	r5, r0
d0006e82:	f828 5f02 	strh.w	r5, [r8, #2]!
d0006e86:	4547      	cmp	r7, r8
d0006e88:	d1cb      	bne.n	d0006e22 <processMarkers+0x6f6>
d0006e8a:	4b1e      	ldr	r3, [pc, #120]	; (d0006f04 <processMarkers+0x7d8>)
d0006e8c:	e525      	b.n	d00068da <processMarkers+0x1ae>
d0006e8e:	f8df 8078 	ldr.w	r8, [pc, #120]	; d0006f08 <processMarkers+0x7dc>
d0006e92:	f108 0780 	add.w	r7, r8, #128	; 0x80
d0006e96:	f89b 3000 	ldrb.w	r3, [fp]
d0006e9a:	2000      	movs	r0, #0
d0006e9c:	f8b9 5000 	ldrh.w	r5, [r9]
d0006ea0:	2b07      	cmp	r3, #7
d0006ea2:	f1a3 0108 	sub.w	r1, r3, #8
d0006ea6:	ea4f 2205 	mov.w	r2, r5, lsl #8
d0006eaa:	d90d      	bls.n	d0006ec8 <processMarkers+0x79c>
d0006eac:	f405 457f 	and.w	r5, r5, #65280	; 0xff00
d0006eb0:	f88b 1000 	strb.w	r1, [fp]
d0006eb4:	f8a9 2000 	strh.w	r2, [r9]
d0006eb8:	f7ff fbb6 	bl	d0006628 <getBits.constprop.1>
d0006ebc:	4405      	add	r5, r0
d0006ebe:	f828 5f02 	strh.w	r5, [r8, #2]!
d0006ec2:	45b8      	cmp	r8, r7
d0006ec4:	d1e7      	bne.n	d0006e96 <processMarkers+0x76a>
d0006ec6:	e507      	b.n	d00068d8 <processMarkers+0x1ac>
d0006ec8:	fa05 f303 	lsl.w	r3, r5, r3
d0006ecc:	f405 457f 	and.w	r5, r5, #65280	; 0xff00
d0006ed0:	f8a9 3000 	strh.w	r3, [r9]
d0006ed4:	f7ff fb6e 	bl	d00065b4 <getChar>
d0006ed8:	f8b9 3000 	ldrh.w	r3, [r9]
d0006edc:	f89b 2000 	ldrb.w	r2, [fp]
d0006ee0:	4303      	orrs	r3, r0
d0006ee2:	2000      	movs	r0, #0
d0006ee4:	f1c2 0208 	rsb	r2, r2, #8
d0006ee8:	b29b      	uxth	r3, r3
d0006eea:	4093      	lsls	r3, r2
d0006eec:	f8a9 3000 	strh.w	r3, [r9]
d0006ef0:	f7ff fb9a 	bl	d0006628 <getBits.constprop.1>
d0006ef4:	4428      	add	r0, r5
d0006ef6:	f828 0f02 	strh.w	r0, [r8, #2]!
d0006efa:	4547      	cmp	r7, r8
d0006efc:	d1cb      	bne.n	d0006e96 <processMarkers+0x76a>
d0006efe:	e4eb      	b.n	d00068d8 <processMarkers+0x1ac>
d0006f00:	d000f156 	.word	0xd000f156
d0006f04:	d000f158 	.word	0xd000f158
d0006f08:	d000f1d6 	.word	0xd000f1d6

d0006f0c <getBits.constprop.2>:
d0006f0c:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
d0006f10:	2808      	cmp	r0, #8
d0006f12:	4f46      	ldr	r7, [pc, #280]	; (d000702c <getBits.constprop.2+0x120>)
d0006f14:	4605      	mov	r5, r0
d0006f16:	f8df 811c 	ldr.w	r8, [pc, #284]	; d0007034 <getBits.constprop.2+0x128>
d0006f1a:	883e      	ldrh	r6, [r7, #0]
d0006f1c:	d813      	bhi.n	d0006f46 <getBits.constprop.2+0x3a>
d0006f1e:	4681      	mov	r9, r0
d0006f20:	f898 2000 	ldrb.w	r2, [r8]
d0006f24:	4633      	mov	r3, r6
d0006f26:	4591      	cmp	r9, r2
d0006f28:	d82d      	bhi.n	d0006f86 <getBits.constprop.2+0x7a>
d0006f2a:	f1c5 0510 	rsb	r5, r5, #16
d0006f2e:	eba2 0209 	sub.w	r2, r2, r9
d0006f32:	fa03 f309 	lsl.w	r3, r3, r9
d0006f36:	fa46 f505 	asr.w	r5, r6, r5
d0006f3a:	f888 2000 	strb.w	r2, [r8]
d0006f3e:	803b      	strh	r3, [r7, #0]
d0006f40:	b2a8      	uxth	r0, r5
d0006f42:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
d0006f46:	f1a0 0308 	sub.w	r3, r0, #8
d0006f4a:	f898 2000 	ldrb.w	r2, [r8]
d0006f4e:	fa5f f983 	uxtb.w	r9, r3
d0006f52:	fa06 f302 	lsl.w	r3, r6, r2
d0006f56:	803b      	strh	r3, [r7, #0]
d0006f58:	f7ff fb2c 	bl	d00065b4 <getChar>
d0006f5c:	28ff      	cmp	r0, #255	; 0xff
d0006f5e:	4604      	mov	r4, r0
d0006f60:	d02f      	beq.n	d0006fc2 <getBits.constprop.2+0xb6>
d0006f62:	883b      	ldrh	r3, [r7, #0]
d0006f64:	f026 06ff 	bic.w	r6, r6, #255	; 0xff
d0006f68:	f898 2000 	ldrb.w	r2, [r8]
d0006f6c:	431c      	orrs	r4, r3
d0006f6e:	f1c2 0308 	rsb	r3, r2, #8
d0006f72:	4591      	cmp	r9, r2
d0006f74:	b2a4      	uxth	r4, r4
d0006f76:	fa04 f403 	lsl.w	r4, r4, r3
d0006f7a:	f3c4 2107 	ubfx	r1, r4, #8, #8
d0006f7e:	b2a3      	uxth	r3, r4
d0006f80:	ea46 0601 	orr.w	r6, r6, r1
d0006f84:	d9d1      	bls.n	d0006f2a <getBits.constprop.2+0x1e>
d0006f86:	fa03 f202 	lsl.w	r2, r3, r2
d0006f8a:	803a      	strh	r2, [r7, #0]
d0006f8c:	f7ff fb12 	bl	d00065b4 <getChar>
d0006f90:	28ff      	cmp	r0, #255	; 0xff
d0006f92:	4604      	mov	r4, r0
d0006f94:	d02f      	beq.n	d0006ff6 <getBits.constprop.2+0xea>
d0006f96:	8839      	ldrh	r1, [r7, #0]
d0006f98:	f1c5 0510 	rsb	r5, r5, #16
d0006f9c:	f898 3000 	ldrb.w	r3, [r8]
d0006fa0:	ea44 0201 	orr.w	r2, r4, r1
d0006fa4:	fa46 f505 	asr.w	r5, r6, r5
d0006fa8:	eba9 0103 	sub.w	r1, r9, r3
d0006fac:	3308      	adds	r3, #8
d0006fae:	b292      	uxth	r2, r2
d0006fb0:	eba3 0309 	sub.w	r3, r3, r9
d0006fb4:	b2a8      	uxth	r0, r5
d0006fb6:	408a      	lsls	r2, r1
d0006fb8:	f888 3000 	strb.w	r3, [r8]
d0006fbc:	803a      	strh	r2, [r7, #0]
d0006fbe:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
d0006fc2:	f7ff faf7 	bl	d00065b4 <getChar>
d0006fc6:	2800      	cmp	r0, #0
d0006fc8:	d0cb      	beq.n	d0006f62 <getBits.constprop.2+0x56>
d0006fca:	f8df c06c 	ldr.w	ip, [pc, #108]	; d0007038 <getBits.constprop.2+0x12c>
d0006fce:	4918      	ldr	r1, [pc, #96]	; (d0007030 <getBits.constprop.2+0x124>)
d0006fd0:	f89c e000 	ldrb.w	lr, [ip]
d0006fd4:	780b      	ldrb	r3, [r1, #0]
d0006fd6:	f10e 0e02 	add.w	lr, lr, #2
d0006fda:	1e9a      	subs	r2, r3, #2
d0006fdc:	3b01      	subs	r3, #1
d0006fde:	f88c e000 	strb.w	lr, [ip]
d0006fe2:	b2d2      	uxtb	r2, r2
d0006fe4:	f8df c054 	ldr.w	ip, [pc, #84]	; d000703c <getBits.constprop.2+0x130>
d0006fe8:	b2db      	uxtb	r3, r3
d0006fea:	700a      	strb	r2, [r1, #0]
d0006fec:	f80c 0003 	strb.w	r0, [ip, r3]
d0006ff0:	f80c 4002 	strb.w	r4, [ip, r2]
d0006ff4:	e7b5      	b.n	d0006f62 <getBits.constprop.2+0x56>
d0006ff6:	f7ff fadd 	bl	d00065b4 <getChar>
d0006ffa:	2800      	cmp	r0, #0
d0006ffc:	d0cb      	beq.n	d0006f96 <getBits.constprop.2+0x8a>
d0006ffe:	f8df c038 	ldr.w	ip, [pc, #56]	; d0007038 <getBits.constprop.2+0x12c>
d0007002:	490b      	ldr	r1, [pc, #44]	; (d0007030 <getBits.constprop.2+0x124>)
d0007004:	f89c e000 	ldrb.w	lr, [ip]
d0007008:	780b      	ldrb	r3, [r1, #0]
d000700a:	f10e 0e02 	add.w	lr, lr, #2
d000700e:	1e9a      	subs	r2, r3, #2
d0007010:	3b01      	subs	r3, #1
d0007012:	f88c e000 	strb.w	lr, [ip]
d0007016:	b2d2      	uxtb	r2, r2
d0007018:	f8df c020 	ldr.w	ip, [pc, #32]	; d000703c <getBits.constprop.2+0x130>
d000701c:	b2db      	uxtb	r3, r3
d000701e:	700a      	strb	r2, [r1, #0]
d0007020:	f80c 0003 	strb.w	r0, [ip, r3]
d0007024:	f80c 4002 	strb.w	r4, [ip, r2]
d0007028:	e7b5      	b.n	d0006f96 <getBits.constprop.2+0x8a>
d000702a:	bf00      	nop
d000702c:	d000e930 	.word	0xd000e930
d0007030:	d000ee39 	.word	0xd000ee39
d0007034:	d000e932 	.word	0xd000e932
d0007038:	d000ee38 	.word	0xd000ee38
d000703c:	d000ed38 	.word	0xd000ed38

d0007040 <getBits>:
d0007040:	e92d 4ff8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0007044:	2808      	cmp	r0, #8
d0007046:	4f4a      	ldr	r7, [pc, #296]	; (d0007170 <getBits+0x130>)
d0007048:	4604      	mov	r4, r0
d000704a:	460e      	mov	r6, r1
d000704c:	f8b7 a000 	ldrh.w	sl, [r7]
d0007050:	f8df 812c 	ldr.w	r8, [pc, #300]	; d0007180 <getBits+0x140>
d0007054:	d813      	bhi.n	d000707e <getBits+0x3e>
d0007056:	4681      	mov	r9, r0
d0007058:	f898 2000 	ldrb.w	r2, [r8]
d000705c:	4653      	mov	r3, sl
d000705e:	4591      	cmp	r9, r2
d0007060:	d82f      	bhi.n	d00070c2 <getBits+0x82>
d0007062:	f1c4 0410 	rsb	r4, r4, #16
d0007066:	eba2 0209 	sub.w	r2, r2, r9
d000706a:	fa03 f309 	lsl.w	r3, r3, r9
d000706e:	fa4a f404 	asr.w	r4, sl, r4
d0007072:	f888 2000 	strb.w	r2, [r8]
d0007076:	803b      	strh	r3, [r7, #0]
d0007078:	b2a0      	uxth	r0, r4
d000707a:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
d000707e:	f1a0 0308 	sub.w	r3, r0, #8
d0007082:	f898 2000 	ldrb.w	r2, [r8]
d0007086:	fa5f f983 	uxtb.w	r9, r3
d000708a:	fa0a f302 	lsl.w	r3, sl, r2
d000708e:	803b      	strh	r3, [r7, #0]
d0007090:	f7ff fa90 	bl	d00065b4 <getChar>
d0007094:	28ff      	cmp	r0, #255	; 0xff
d0007096:	4605      	mov	r5, r0
d0007098:	d101      	bne.n	d000709e <getBits+0x5e>
d000709a:	07f2      	lsls	r2, r6, #31
d000709c:	d449      	bmi.n	d0007132 <getBits+0xf2>
d000709e:	883b      	ldrh	r3, [r7, #0]
d00070a0:	f02a 0aff 	bic.w	sl, sl, #255	; 0xff
d00070a4:	f898 2000 	ldrb.w	r2, [r8]
d00070a8:	431d      	orrs	r5, r3
d00070aa:	f1c2 0308 	rsb	r3, r2, #8
d00070ae:	4591      	cmp	r9, r2
d00070b0:	b2ad      	uxth	r5, r5
d00070b2:	fa05 f503 	lsl.w	r5, r5, r3
d00070b6:	f3c5 2107 	ubfx	r1, r5, #8, #8
d00070ba:	b2ab      	uxth	r3, r5
d00070bc:	ea4a 0a01 	orr.w	sl, sl, r1
d00070c0:	d9cf      	bls.n	d0007062 <getBits+0x22>
d00070c2:	fa03 f202 	lsl.w	r2, r3, r2
d00070c6:	803a      	strh	r2, [r7, #0]
d00070c8:	f7ff fa74 	bl	d00065b4 <getChar>
d00070cc:	28ff      	cmp	r0, #255	; 0xff
d00070ce:	4605      	mov	r5, r0
d00070d0:	d101      	bne.n	d00070d6 <getBits+0x96>
d00070d2:	07f3      	lsls	r3, r6, #31
d00070d4:	d414      	bmi.n	d0007100 <getBits+0xc0>
d00070d6:	8838      	ldrh	r0, [r7, #0]
d00070d8:	f1c4 0410 	rsb	r4, r4, #16
d00070dc:	f898 3000 	ldrb.w	r3, [r8]
d00070e0:	4305      	orrs	r5, r0
d00070e2:	fa4a f404 	asr.w	r4, sl, r4
d00070e6:	eba9 0203 	sub.w	r2, r9, r3
d00070ea:	3308      	adds	r3, #8
d00070ec:	b2ad      	uxth	r5, r5
d00070ee:	eba3 0309 	sub.w	r3, r3, r9
d00070f2:	b2a0      	uxth	r0, r4
d00070f4:	4095      	lsls	r5, r2
d00070f6:	f888 3000 	strb.w	r3, [r8]
d00070fa:	803d      	strh	r5, [r7, #0]
d00070fc:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0007100:	f7ff fa58 	bl	d00065b4 <getChar>
d0007104:	2800      	cmp	r0, #0
d0007106:	d0e6      	beq.n	d00070d6 <getBits+0x96>
d0007108:	4e1a      	ldr	r6, [pc, #104]	; (d0007174 <getBits+0x134>)
d000710a:	f04f 0cff 	mov.w	ip, #255	; 0xff
d000710e:	491a      	ldr	r1, [pc, #104]	; (d0007178 <getBits+0x138>)
d0007110:	7833      	ldrb	r3, [r6, #0]
d0007112:	f891 e000 	ldrb.w	lr, [r1]
d0007116:	1e9a      	subs	r2, r3, #2
d0007118:	3b01      	subs	r3, #1
d000711a:	f10e 0e02 	add.w	lr, lr, #2
d000711e:	b2d2      	uxtb	r2, r2
d0007120:	b2db      	uxtb	r3, r3
d0007122:	f881 e000 	strb.w	lr, [r1]
d0007126:	7032      	strb	r2, [r6, #0]
d0007128:	4e14      	ldr	r6, [pc, #80]	; (d000717c <getBits+0x13c>)
d000712a:	54f0      	strb	r0, [r6, r3]
d000712c:	f806 c002 	strb.w	ip, [r6, r2]
d0007130:	e7d1      	b.n	d00070d6 <getBits+0x96>
d0007132:	f7ff fa3f 	bl	d00065b4 <getChar>
d0007136:	2800      	cmp	r0, #0
d0007138:	d0b1      	beq.n	d000709e <getBits+0x5e>
d000713a:	f8df e038 	ldr.w	lr, [pc, #56]	; d0007174 <getBits+0x134>
d000713e:	f04f 0bff 	mov.w	fp, #255	; 0xff
d0007142:	f8df c034 	ldr.w	ip, [pc, #52]	; d0007178 <getBits+0x138>
d0007146:	f89e 3000 	ldrb.w	r3, [lr]
d000714a:	f89c 1000 	ldrb.w	r1, [ip]
d000714e:	1e9a      	subs	r2, r3, #2
d0007150:	3b01      	subs	r3, #1
d0007152:	3102      	adds	r1, #2
d0007154:	b2d2      	uxtb	r2, r2
d0007156:	b2db      	uxtb	r3, r3
d0007158:	f88c 1000 	strb.w	r1, [ip]
d000715c:	f88e 2000 	strb.w	r2, [lr]
d0007160:	f8df e018 	ldr.w	lr, [pc, #24]	; d000717c <getBits+0x13c>
d0007164:	f80e 0003 	strb.w	r0, [lr, r3]
d0007168:	f80e b002 	strb.w	fp, [lr, r2]
d000716c:	e797      	b.n	d000709e <getBits+0x5e>
d000716e:	bf00      	nop
d0007170:	d000e930 	.word	0xd000e930
d0007174:	d000ee39 	.word	0xd000ee39
d0007178:	d000ee38 	.word	0xd000ee38
d000717c:	d000ed38 	.word	0xd000ed38
d0007180:	d000e932 	.word	0xd000e932

d0007184 <pjpeg_decode_mcu>:
d0007184:	4b9b      	ldr	r3, [pc, #620]	; (d00073f4 <pjpeg_decode_mcu+0x270>)
d0007186:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d000718a:	b08f      	sub	sp, #60	; 0x3c
d000718c:	781b      	ldrb	r3, [r3, #0]
d000718e:	9303      	str	r3, [sp, #12]
d0007190:	2b00      	cmp	r3, #0
d0007192:	f040 80b0 	bne.w	d00072f6 <pjpeg_decode_mcu+0x172>
d0007196:	4b98      	ldr	r3, [pc, #608]	; (d00073f8 <pjpeg_decode_mcu+0x274>)
d0007198:	4a98      	ldr	r2, [pc, #608]	; (d00073fc <pjpeg_decode_mcu+0x278>)
d000719a:	881b      	ldrh	r3, [r3, #0]
d000719c:	8812      	ldrh	r2, [r2, #0]
d000719e:	431a      	orrs	r2, r3
d00071a0:	f000 80c9 	beq.w	d0007336 <pjpeg_decode_mcu+0x1b2>
d00071a4:	4e96      	ldr	r6, [pc, #600]	; (d0007400 <pjpeg_decode_mcu+0x27c>)
d00071a6:	8832      	ldrh	r2, [r6, #0]
d00071a8:	2a00      	cmp	r2, #0
d00071aa:	f040 80a8 	bne.w	d00072fe <pjpeg_decode_mcu+0x17a>
d00071ae:	4a95      	ldr	r2, [pc, #596]	; (d0007404 <pjpeg_decode_mcu+0x280>)
d00071b0:	920c      	str	r2, [sp, #48]	; 0x30
d00071b2:	7812      	ldrb	r2, [r2, #0]
d00071b4:	2a00      	cmp	r2, #0
d00071b6:	f000 8090 	beq.w	d00072da <pjpeg_decode_mcu+0x156>
d00071ba:	4a93      	ldr	r2, [pc, #588]	; (d0007408 <pjpeg_decode_mcu+0x284>)
d00071bc:	2300      	movs	r3, #0
d00071be:	f8df b2a8 	ldr.w	fp, [pc, #680]	; d0007468 <pjpeg_decode_mcu+0x2e4>
d00071c2:	920d      	str	r2, [sp, #52]	; 0x34
d00071c4:	4a91      	ldr	r2, [pc, #580]	; (d000740c <pjpeg_decode_mcu+0x288>)
d00071c6:	9305      	str	r3, [sp, #20]
d00071c8:	9202      	str	r2, [sp, #8]
d00071ca:	9301      	str	r3, [sp, #4]
d00071cc:	4b90      	ldr	r3, [pc, #576]	; (d0007410 <pjpeg_decode_mcu+0x28c>)
d00071ce:	9a01      	ldr	r2, [sp, #4]
d00071d0:	4990      	ldr	r1, [pc, #576]	; (d0007414 <pjpeg_decode_mcu+0x290>)
d00071d2:	5c9c      	ldrb	r4, [r3, r2]
d00071d4:	4b90      	ldr	r3, [pc, #576]	; (d0007418 <pjpeg_decode_mcu+0x294>)
d00071d6:	4a91      	ldr	r2, [pc, #580]	; (d000741c <pjpeg_decode_mcu+0x298>)
d00071d8:	5d18      	ldrb	r0, [r3, r4]
d00071da:	4b91      	ldr	r3, [pc, #580]	; (d0007420 <pjpeg_decode_mcu+0x29c>)
d00071dc:	2800      	cmp	r0, #0
d00071de:	bf08      	it	eq
d00071e0:	4611      	moveq	r1, r2
d00071e2:	4e90      	ldr	r6, [pc, #576]	; (d0007424 <pjpeg_decode_mcu+0x2a0>)
d00071e4:	5d1b      	ldrb	r3, [r3, r4]
d00071e6:	4f90      	ldr	r7, [pc, #576]	; (d0007428 <pjpeg_decode_mcu+0x2a4>)
d00071e8:	2b00      	cmp	r3, #0
d00071ea:	4b90      	ldr	r3, [pc, #576]	; (d000742c <pjpeg_decode_mcu+0x2a8>)
d00071ec:	9104      	str	r1, [sp, #16]
d00071ee:	bf18      	it	ne
d00071f0:	461e      	movne	r6, r3
d00071f2:	4b8f      	ldr	r3, [pc, #572]	; (d0007430 <pjpeg_decode_mcu+0x2ac>)
d00071f4:	498f      	ldr	r1, [pc, #572]	; (d0007434 <pjpeg_decode_mcu+0x2b0>)
d00071f6:	bf08      	it	eq
d00071f8:	4639      	moveq	r1, r7
d00071fa:	881a      	ldrh	r2, [r3, #0]
d00071fc:	9b02      	ldr	r3, [sp, #8]
d00071fe:	ea4f 38d2 	mov.w	r8, r2, lsr #15
d0007202:	9106      	str	r1, [sp, #24]
d0007204:	781b      	ldrb	r3, [r3, #0]
d0007206:	2b00      	cmp	r3, #0
d0007208:	f000 87a0 	beq.w	d000814c <pjpeg_decode_mcu+0xfc8>
d000720c:	3b01      	subs	r3, #1
d000720e:	9902      	ldr	r1, [sp, #8]
d0007210:	0052      	lsls	r2, r2, #1
d0007212:	2700      	movs	r7, #0
d0007214:	b2db      	uxtb	r3, r3
d0007216:	9607      	str	r6, [sp, #28]
d0007218:	b292      	uxth	r2, r2
d000721a:	f8df 9248 	ldr.w	r9, [pc, #584]	; d0007464 <pjpeg_decode_mcu+0x2e0>
d000721e:	700b      	strb	r3, [r1, #0]
d0007220:	fa1f fc88 	uxth.w	ip, r8
d0007224:	4982      	ldr	r1, [pc, #520]	; (d0007430 <pjpeg_decode_mcu+0x2ac>)
d0007226:	f106 081e 	add.w	r8, r6, #30
d000722a:	463e      	mov	r6, r7
d000722c:	800a      	strh	r2, [r1, #0]
d000722e:	e00c      	b.n	d000724a <pjpeg_decode_mcu+0xc6>
d0007230:	0052      	lsls	r2, r2, #1
d0007232:	497f      	ldr	r1, [pc, #508]	; (d0007430 <pjpeg_decode_mcu+0x2ac>)
d0007234:	3b01      	subs	r3, #1
d0007236:	2e10      	cmp	r6, #16
d0007238:	b292      	uxth	r2, r2
d000723a:	ea45 0c0a 	orr.w	ip, r5, sl
d000723e:	b2db      	uxtb	r3, r3
d0007240:	800a      	strh	r2, [r1, #0]
d0007242:	9902      	ldr	r1, [sp, #8]
d0007244:	700b      	strb	r3, [r1, #0]
d0007246:	f000 8095 	beq.w	d0007374 <pjpeg_decode_mcu+0x1f0>
d000724a:	f838 0f02 	ldrh.w	r0, [r8, #2]!
d000724e:	ea4f 054c 	mov.w	r5, ip, lsl #1
d0007252:	f64f 77ff 	movw	r7, #65535	; 0xffff
d0007256:	ea4f 3ad2 	mov.w	sl, r2, lsr #15
d000725a:	4560      	cmp	r0, ip
d000725c:	b2ad      	uxth	r5, r5
d000725e:	d302      	bcc.n	d0007266 <pjpeg_decode_mcu+0xe2>
d0007260:	42b8      	cmp	r0, r7
d0007262:	f040 866e 	bne.w	d0007f42 <pjpeg_decode_mcu+0xdbe>
d0007266:	3601      	adds	r6, #1
d0007268:	2b00      	cmp	r3, #0
d000726a:	d1e1      	bne.n	d0007230 <pjpeg_decode_mcu+0xac>
d000726c:	f7ff f9a2 	bl	d00065b4 <getChar>
d0007270:	28ff      	cmp	r0, #255	; 0xff
d0007272:	4607      	mov	r7, r0
d0007274:	d065      	beq.n	d0007342 <pjpeg_decode_mcu+0x1be>
d0007276:	4b6e      	ldr	r3, [pc, #440]	; (d0007430 <pjpeg_decode_mcu+0x2ac>)
d0007278:	881a      	ldrh	r2, [r3, #0]
d000727a:	9b02      	ldr	r3, [sp, #8]
d000727c:	433a      	orrs	r2, r7
d000727e:	781b      	ldrb	r3, [r3, #0]
d0007280:	b292      	uxth	r2, r2
d0007282:	3308      	adds	r3, #8
d0007284:	b2db      	uxtb	r3, r3
d0007286:	e7d3      	b.n	d0007230 <pjpeg_decode_mcu+0xac>
d0007288:	4a6b      	ldr	r2, [pc, #428]	; (d0007438 <pjpeg_decode_mcu+0x2b4>)
d000728a:	8813      	ldrh	r3, [r2, #0]
d000728c:	f103 01d0 	add.w	r1, r3, #208	; 0xd0
d0007290:	4288      	cmp	r0, r1
d0007292:	d14b      	bne.n	d000732c <pjpeg_decode_mcu+0x1a8>
d0007294:	3301      	adds	r3, #1
d0007296:	8830      	ldrh	r0, [r6, #0]
d0007298:	2100      	movs	r1, #0
d000729a:	4d5b      	ldr	r5, [pc, #364]	; (d0007408 <pjpeg_decode_mcu+0x284>)
d000729c:	f003 0307 	and.w	r3, r3, #7
d00072a0:	4e5a      	ldr	r6, [pc, #360]	; (d000740c <pjpeg_decode_mcu+0x288>)
d00072a2:	8020      	strh	r0, [r4, #0]
d00072a4:	2001      	movs	r0, #1
d00072a6:	8013      	strh	r3, [r2, #0]
d00072a8:	2308      	movs	r3, #8
d00072aa:	6029      	str	r1, [r5, #0]
d00072ac:	7033      	strb	r3, [r6, #0]
d00072ae:	80a9      	strh	r1, [r5, #4]
d00072b0:	f7ff f9ba 	bl	d0006628 <getBits.constprop.1>
d00072b4:	2001      	movs	r0, #1
d00072b6:	f7ff f9b7 	bl	d0006628 <getBits.constprop.1>
d00072ba:	8823      	ldrh	r3, [r4, #0]
d00072bc:	4a51      	ldr	r2, [pc, #324]	; (d0007404 <pjpeg_decode_mcu+0x280>)
d00072be:	3b01      	subs	r3, #1
d00072c0:	8023      	strh	r3, [r4, #0]
d00072c2:	7813      	ldrb	r3, [r2, #0]
d00072c4:	920c      	str	r2, [sp, #48]	; 0x30
d00072c6:	2b00      	cmp	r3, #0
d00072c8:	f47f af77 	bne.w	d00071ba <pjpeg_decode_mcu+0x36>
d00072cc:	4b49      	ldr	r3, [pc, #292]	; (d00073f4 <pjpeg_decode_mcu+0x270>)
d00072ce:	781b      	ldrb	r3, [r3, #0]
d00072d0:	2b00      	cmp	r3, #0
d00072d2:	f040 87b5 	bne.w	d0008240 <pjpeg_decode_mcu+0x10bc>
d00072d6:	4b48      	ldr	r3, [pc, #288]	; (d00073f8 <pjpeg_decode_mcu+0x274>)
d00072d8:	881b      	ldrh	r3, [r3, #0]
d00072da:	3b01      	subs	r3, #1
d00072dc:	4a46      	ldr	r2, [pc, #280]	; (d00073f8 <pjpeg_decode_mcu+0x274>)
d00072de:	b29b      	uxth	r3, r3
d00072e0:	8013      	strh	r3, [r2, #0]
d00072e2:	b943      	cbnz	r3, d00072f6 <pjpeg_decode_mcu+0x172>
d00072e4:	4945      	ldr	r1, [pc, #276]	; (d00073fc <pjpeg_decode_mcu+0x278>)
d00072e6:	880b      	ldrh	r3, [r1, #0]
d00072e8:	3b01      	subs	r3, #1
d00072ea:	b29b      	uxth	r3, r3
d00072ec:	800b      	strh	r3, [r1, #0]
d00072ee:	b113      	cbz	r3, d00072f6 <pjpeg_decode_mcu+0x172>
d00072f0:	4b52      	ldr	r3, [pc, #328]	; (d000743c <pjpeg_decode_mcu+0x2b8>)
d00072f2:	881b      	ldrh	r3, [r3, #0]
d00072f4:	8013      	strh	r3, [r2, #0]
d00072f6:	9803      	ldr	r0, [sp, #12]
d00072f8:	b00f      	add	sp, #60	; 0x3c
d00072fa:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d00072fe:	4c50      	ldr	r4, [pc, #320]	; (d0007440 <pjpeg_decode_mcu+0x2bc>)
d0007300:	8823      	ldrh	r3, [r4, #0]
d0007302:	2b00      	cmp	r3, #0
d0007304:	d1da      	bne.n	d00072bc <pjpeg_decode_mcu+0x138>
d0007306:	f44f 65c0 	mov.w	r5, #1536	; 0x600
d000730a:	e001      	b.n	d0007310 <pjpeg_decode_mcu+0x18c>
d000730c:	b29d      	uxth	r5, r3
d000730e:	b16d      	cbz	r5, d000732c <pjpeg_decode_mcu+0x1a8>
d0007310:	f7ff f950 	bl	d00065b4 <getChar>
d0007314:	28ff      	cmp	r0, #255	; 0xff
d0007316:	f105 33ff 	add.w	r3, r5, #4294967295	; 0xffffffff
d000731a:	d1f7      	bne.n	d000730c <pjpeg_decode_mcu+0x188>
d000731c:	3d01      	subs	r5, #1
d000731e:	f7ff f949 	bl	d00065b4 <getChar>
d0007322:	28ff      	cmp	r0, #255	; 0xff
d0007324:	b2ad      	uxth	r5, r5
d0007326:	d1af      	bne.n	d0007288 <pjpeg_decode_mcu+0x104>
d0007328:	2d00      	cmp	r5, #0
d000732a:	d1f7      	bne.n	d000731c <pjpeg_decode_mcu+0x198>
d000732c:	231d      	movs	r3, #29
d000732e:	461a      	mov	r2, r3
d0007330:	9303      	str	r3, [sp, #12]
d0007332:	f000 bf1d 	b.w	d0008170 <pjpeg_decode_mcu+0xfec>
d0007336:	2301      	movs	r3, #1
d0007338:	9303      	str	r3, [sp, #12]
d000733a:	9803      	ldr	r0, [sp, #12]
d000733c:	b00f      	add	sp, #60	; 0x3c
d000733e:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0007342:	f7ff f937 	bl	d00065b4 <getChar>
d0007346:	2800      	cmp	r0, #0
d0007348:	d095      	beq.n	d0007276 <pjpeg_decode_mcu+0xf2>
d000734a:	4a3e      	ldr	r2, [pc, #248]	; (d0007444 <pjpeg_decode_mcu+0x2c0>)
d000734c:	493e      	ldr	r1, [pc, #248]	; (d0007448 <pjpeg_decode_mcu+0x2c4>)
d000734e:	f892 c000 	ldrb.w	ip, [r2]
d0007352:	780b      	ldrb	r3, [r1, #0]
d0007354:	4611      	mov	r1, r2
d0007356:	f10c 0c02 	add.w	ip, ip, #2
d000735a:	1e5a      	subs	r2, r3, #1
d000735c:	3b02      	subs	r3, #2
d000735e:	f881 c000 	strb.w	ip, [r1]
d0007362:	b2db      	uxtb	r3, r3
d0007364:	4938      	ldr	r1, [pc, #224]	; (d0007448 <pjpeg_decode_mcu+0x2c4>)
d0007366:	b2d2      	uxtb	r2, r2
d0007368:	700b      	strb	r3, [r1, #0]
d000736a:	f809 0002 	strb.w	r0, [r9, r2]
d000736e:	f809 7003 	strb.w	r7, [r9, r3]
d0007372:	e780      	b.n	d0007276 <pjpeg_decode_mcu+0xf2>
d0007374:	2000      	movs	r0, #0
d0007376:	9f0d      	ldr	r7, [sp, #52]	; 0x34
d0007378:	9904      	ldr	r1, [sp, #16]
d000737a:	f837 5014 	ldrh.w	r5, [r7, r4, lsl #1]
d000737e:	8809      	ldrh	r1, [r1, #0]
d0007380:	4428      	add	r0, r5
d0007382:	4d32      	ldr	r5, [pc, #200]	; (d000744c <pjpeg_decode_mcu+0x2c8>)
d0007384:	4e32      	ldr	r6, [pc, #200]	; (d0007450 <pjpeg_decode_mcu+0x2cc>)
d0007386:	b280      	uxth	r0, r0
d0007388:	782d      	ldrb	r5, [r5, #0]
d000738a:	5d36      	ldrb	r6, [r6, r4]
d000738c:	fb11 f100 	smulbb	r1, r1, r0
d0007390:	f827 0014 	strh.w	r0, [r7, r4, lsl #1]
d0007394:	f8ab 1000 	strh.w	r1, [fp]
d0007398:	2d00      	cmp	r5, #0
d000739a:	f000 81e7 	beq.w	d000776c <pjpeg_decode_mcu+0x5e8>
d000739e:	2e00      	cmp	r6, #0
d00073a0:	482c      	ldr	r0, [pc, #176]	; (d0007454 <pjpeg_decode_mcu+0x2d0>)
d00073a2:	492d      	ldr	r1, [pc, #180]	; (d0007458 <pjpeg_decode_mcu+0x2d4>)
d00073a4:	f04f 0401 	mov.w	r4, #1
d00073a8:	bf08      	it	eq
d00073aa:	4607      	moveq	r7, r0
d00073ac:	482b      	ldr	r0, [pc, #172]	; (d000745c <pjpeg_decode_mcu+0x2d8>)
d00073ae:	bf18      	it	ne
d00073b0:	460f      	movne	r7, r1
d00073b2:	492b      	ldr	r1, [pc, #172]	; (d0007460 <pjpeg_decode_mcu+0x2dc>)
d00073b4:	bf08      	it	eq
d00073b6:	4601      	moveq	r1, r0
d00073b8:	4e2a      	ldr	r6, [pc, #168]	; (d0007464 <pjpeg_decode_mcu+0x2e0>)
d00073ba:	f8dd 8008 	ldr.w	r8, [sp, #8]
d00073be:	9107      	str	r1, [sp, #28]
d00073c0:	f107 011e 	add.w	r1, r7, #30
d00073c4:	9108      	str	r1, [sp, #32]
d00073c6:	ea4f 3ad2 	mov.w	sl, r2, lsr #15
d00073ca:	2b00      	cmp	r3, #0
d00073cc:	d07a      	beq.n	d00074c4 <pjpeg_decode_mcu+0x340>
d00073ce:	0050      	lsls	r0, r2, #1
d00073d0:	3b01      	subs	r3, #1
d00073d2:	fa1f fc8a 	uxth.w	ip, sl
d00073d6:	4a16      	ldr	r2, [pc, #88]	; (d0007430 <pjpeg_decode_mcu+0x2ac>)
d00073d8:	f04f 0a00 	mov.w	sl, #0
d00073dc:	b2db      	uxtb	r3, r3
d00073de:	b280      	uxth	r0, r0
d00073e0:	9406      	str	r4, [sp, #24]
d00073e2:	f8dd 9020 	ldr.w	r9, [sp, #32]
d00073e6:	4654      	mov	r4, sl
d00073e8:	f888 3000 	strb.w	r3, [r8]
d00073ec:	46ba      	mov	sl, r7
d00073ee:	8010      	strh	r0, [r2, #0]
d00073f0:	4647      	mov	r7, r8
d00073f2:	e047      	b.n	d0007484 <pjpeg_decode_mcu+0x300>
d00073f4:	d000e933 	.word	0xd000e933
d00073f8:	d000f154 	.word	0xd000f154
d00073fc:	d000f156 	.word	0xd000f156
d0007400:	d000f25a 	.word	0xd000f25a
d0007404:	d000f14a 	.word	0xd000f14a
d0007408:	d000ee3c 	.word	0xd000ee3c
d000740c:	d000e932 	.word	0xd000e932
d0007410:	d000f144 	.word	0xd000f144
d0007414:	d000f1d8 	.word	0xd000f1d8
d0007418:	d000e9c8 	.word	0xd000e9c8
d000741c:	d000f158 	.word	0xd000f158
d0007420:	d000e9b8 	.word	0xd000e9b8
d0007424:	d000e9d4 	.word	0xd000e9d4
d0007428:	d000eb14 	.word	0xd000eb14
d000742c:	d000ea24 	.word	0xd000ea24
d0007430:	d000e930 	.word	0xd000e930
d0007434:	d000eb24 	.word	0xd000eb24
d0007438:	d000f152 	.word	0xd000f152
d000743c:	d000f14e 	.word	0xd000f14e
d0007440:	d000f25c 	.word	0xd000f25c
d0007444:	d000ee38 	.word	0xd000ee38
d0007448:	d000ee39 	.word	0xd000ee39
d000744c:	d000f258 	.word	0xd000f258
d0007450:	d000e9b4 	.word	0xd000e9b4
d0007454:	d000ea74 	.word	0xd000ea74
d0007458:	d000eac4 	.word	0xd000eac4
d000745c:	d000eb34 	.word	0xd000eb34
d0007460:	d000ec34 	.word	0xd000ec34
d0007464:	d000ed38 	.word	0xd000ed38
d0007468:	d000e934 	.word	0xd000e934
d000746c:	9a04      	ldr	r2, [sp, #16]
d000746e:	0040      	lsls	r0, r0, #1
d0007470:	3b01      	subs	r3, #1
d0007472:	2c10      	cmp	r4, #16
d0007474:	ea45 0c02 	orr.w	ip, r5, r2
d0007478:	b280      	uxth	r0, r0
d000747a:	b2db      	uxtb	r3, r3
d000747c:	4ab5      	ldr	r2, [pc, #724]	; (d0007754 <pjpeg_decode_mcu+0x5d0>)
d000747e:	703b      	strb	r3, [r7, #0]
d0007480:	8010      	strh	r0, [r2, #0]
d0007482:	d02f      	beq.n	d00074e4 <pjpeg_decode_mcu+0x360>
d0007484:	f839 ef02 	ldrh.w	lr, [r9, #2]!
d0007488:	ea4f 054c 	mov.w	r5, ip, lsl #1
d000748c:	0bc2      	lsrs	r2, r0, #15
d000748e:	f64f 78ff 	movw	r8, #65535	; 0xffff
d0007492:	45e6      	cmp	lr, ip
d0007494:	b2ad      	uxth	r5, r5
d0007496:	9204      	str	r2, [sp, #16]
d0007498:	d302      	bcc.n	d00074a0 <pjpeg_decode_mcu+0x31c>
d000749a:	45c6      	cmp	lr, r8
d000749c:	f040 8128 	bne.w	d00076f0 <pjpeg_decode_mcu+0x56c>
d00074a0:	3401      	adds	r4, #1
d00074a2:	2b00      	cmp	r3, #0
d00074a4:	d1e2      	bne.n	d000746c <pjpeg_decode_mcu+0x2e8>
d00074a6:	f7ff f885 	bl	d00065b4 <getChar>
d00074aa:	28ff      	cmp	r0, #255	; 0xff
d00074ac:	4680      	mov	r8, r0
d00074ae:	f000 80ef 	beq.w	d0007690 <pjpeg_decode_mcu+0x50c>
d00074b2:	4ba8      	ldr	r3, [pc, #672]	; (d0007754 <pjpeg_decode_mcu+0x5d0>)
d00074b4:	8818      	ldrh	r0, [r3, #0]
d00074b6:	783b      	ldrb	r3, [r7, #0]
d00074b8:	ea48 0000 	orr.w	r0, r8, r0
d00074bc:	3308      	adds	r3, #8
d00074be:	b280      	uxth	r0, r0
d00074c0:	b2db      	uxtb	r3, r3
d00074c2:	e7d3      	b.n	d000746c <pjpeg_decode_mcu+0x2e8>
d00074c4:	f7ff f876 	bl	d00065b4 <getChar>
d00074c8:	28ff      	cmp	r0, #255	; 0xff
d00074ca:	4681      	mov	r9, r0
d00074cc:	f000 80fa 	beq.w	d00076c4 <pjpeg_decode_mcu+0x540>
d00074d0:	4ba0      	ldr	r3, [pc, #640]	; (d0007754 <pjpeg_decode_mcu+0x5d0>)
d00074d2:	881a      	ldrh	r2, [r3, #0]
d00074d4:	f898 3000 	ldrb.w	r3, [r8]
d00074d8:	ea49 0202 	orr.w	r2, r9, r2
d00074dc:	3308      	adds	r3, #8
d00074de:	b292      	uxth	r2, r2
d00074e0:	b2db      	uxtb	r3, r3
d00074e2:	e774      	b.n	d00073ce <pjpeg_decode_mcu+0x24a>
d00074e4:	f9bb 3000 	ldrsh.w	r3, [fp]
d00074e8:	4a9b      	ldr	r2, [pc, #620]	; (d0007758 <pjpeg_decode_mcu+0x5d4>)
d00074ea:	3340      	adds	r3, #64	; 0x40
d00074ec:	7812      	ldrb	r2, [r2, #0]
d00074ee:	11db      	asrs	r3, r3, #7
d00074f0:	3380      	adds	r3, #128	; 0x80
d00074f2:	b29b      	uxth	r3, r3
d00074f4:	2bff      	cmp	r3, #255	; 0xff
d00074f6:	bf84      	itt	hi
d00074f8:	43db      	mvnhi	r3, r3
d00074fa:	f343 33c0 	sbfxhi	r3, r3, #15, #1
d00074fe:	b2db      	uxtb	r3, r3
d0007500:	2a04      	cmp	r2, #4
d0007502:	f200 80ba 	bhi.w	d000767a <pjpeg_decode_mcu+0x4f6>
d0007506:	e8df f012 	tbh	[pc, r2, lsl #1]
d000750a:	064f      	.short	0x064f
d000750c:	001b063d 	.word	0x001b063d
d0007510:	00050011 	.word	0x00050011
d0007514:	9a01      	ldr	r2, [sp, #4]
d0007516:	2a05      	cmp	r2, #5
d0007518:	f200 80af 	bhi.w	d000767a <pjpeg_decode_mcu+0x4f6>
d000751c:	e8df f012 	tbh	[pc, r2, lsl #1]
d0007520:	0695063c 	.word	0x0695063c
d0007524:	086306a0 	.word	0x086306a0
d0007528:	001a0874 	.word	0x001a0874
d000752c:	9a01      	ldr	r2, [sp, #4]
d000752e:	2a03      	cmp	r2, #3
d0007530:	f200 80a3 	bhi.w	d000767a <pjpeg_decode_mcu+0x4f6>
d0007534:	e8df f012 	tbh	[pc, r2, lsl #1]
d0007538:	06940630 	.word	0x06940630
d000753c:	078c073a 	.word	0x078c073a
d0007540:	9a01      	ldr	r2, [sp, #4]
d0007542:	2a03      	cmp	r2, #3
d0007544:	f200 8099 	bhi.w	d000767a <pjpeg_decode_mcu+0x4f6>
d0007548:	e8df f012 	tbh	[pc, r2, lsl #1]
d000754c:	067f0626 	.word	0x067f0626
d0007550:	06bd07d7 	.word	0x06bd07d7
d0007554:	eb03 0043 	add.w	r0, r3, r3, lsl #1
d0007558:	f1a3 04b3 	sub.w	r4, r3, #179	; 0xb3
d000755c:	b21a      	sxth	r2, r3
d000755e:	497f      	ldr	r1, [pc, #508]	; (d000775c <pjpeg_decode_mcu+0x5d8>)
d0007560:	eb00 1000 	add.w	r0, r0, r0, lsl #4
d0007564:	eb03 0340 	add.w	r3, r3, r0, lsl #1
d0007568:	7808      	ldrb	r0, [r1, #0]
d000756a:	eb04 2313 	add.w	r3, r4, r3, lsr #8
d000756e:	b29b      	uxth	r3, r3
d0007570:	4418      	add	r0, r3
d0007572:	b280      	uxth	r0, r0
d0007574:	28ff      	cmp	r0, #255	; 0xff
d0007576:	d906      	bls.n	d0007586 <pjpeg_decode_mcu+0x402>
d0007578:	b204      	sxth	r4, r0
d000757a:	2c00      	cmp	r4, #0
d000757c:	f2c1 8211 	blt.w	d00089a2 <pjpeg_decode_mcu+0x181e>
d0007580:	2cff      	cmp	r4, #255	; 0xff
d0007582:	f301 825e 	bgt.w	d0008a42 <pjpeg_decode_mcu+0x18be>
d0007586:	b2c4      	uxtb	r4, r0
d0007588:	f891 0040 	ldrb.w	r0, [r1, #64]	; 0x40
d000758c:	700c      	strb	r4, [r1, #0]
d000758e:	4418      	add	r0, r3
d0007590:	b280      	uxth	r0, r0
d0007592:	28ff      	cmp	r0, #255	; 0xff
d0007594:	d906      	bls.n	d00075a4 <pjpeg_decode_mcu+0x420>
d0007596:	b204      	sxth	r4, r0
d0007598:	2c00      	cmp	r4, #0
d000759a:	f2c1 8205 	blt.w	d00089a8 <pjpeg_decode_mcu+0x1824>
d000759e:	2cff      	cmp	r4, #255	; 0xff
d00075a0:	f301 8247 	bgt.w	d0008a32 <pjpeg_decode_mcu+0x18ae>
d00075a4:	b2c4      	uxtb	r4, r0
d00075a6:	f891 0080 	ldrb.w	r0, [r1, #128]	; 0x80
d00075aa:	f881 4040 	strb.w	r4, [r1, #64]	; 0x40
d00075ae:	4418      	add	r0, r3
d00075b0:	b280      	uxth	r0, r0
d00075b2:	28ff      	cmp	r0, #255	; 0xff
d00075b4:	d906      	bls.n	d00075c4 <pjpeg_decode_mcu+0x440>
d00075b6:	b204      	sxth	r4, r0
d00075b8:	2c00      	cmp	r4, #0
d00075ba:	f2c1 81f8 	blt.w	d00089ae <pjpeg_decode_mcu+0x182a>
d00075be:	2cff      	cmp	r4, #255	; 0xff
d00075c0:	f301 823a 	bgt.w	d0008a38 <pjpeg_decode_mcu+0x18b4>
d00075c4:	b2c0      	uxtb	r0, r0
d00075c6:	f891 40c0 	ldrb.w	r4, [r1, #192]	; 0xc0
d00075ca:	f881 0080 	strb.w	r0, [r1, #128]	; 0x80
d00075ce:	4423      	add	r3, r4
d00075d0:	b29b      	uxth	r3, r3
d00075d2:	2bff      	cmp	r3, #255	; 0xff
d00075d4:	d906      	bls.n	d00075e4 <pjpeg_decode_mcu+0x460>
d00075d6:	b218      	sxth	r0, r3
d00075d8:	2800      	cmp	r0, #0
d00075da:	f2c1 81eb 	blt.w	d00089b4 <pjpeg_decode_mcu+0x1830>
d00075de:	28ff      	cmp	r0, #255	; 0xff
d00075e0:	f301 8221 	bgt.w	d0008a26 <pjpeg_decode_mcu+0x18a2>
d00075e4:	b2db      	uxtb	r3, r3
d00075e6:	ebc2 1402 	rsb	r4, r2, r2, lsl #4
d00075ea:	f881 30c0 	strb.w	r3, [r1, #192]	; 0xc0
d00075ee:	485c      	ldr	r0, [pc, #368]	; (d0007760 <pjpeg_decode_mcu+0x5dc>)
d00075f0:	eb02 0284 	add.w	r2, r2, r4, lsl #2
d00075f4:	7801      	ldrb	r1, [r0, #0]
d00075f6:	ebc2 0282 	rsb	r2, r2, r2, lsl #2
d00075fa:	0a13      	lsrs	r3, r2, #8
d00075fc:	3b5b      	subs	r3, #91	; 0x5b
d00075fe:	b29b      	uxth	r3, r3
d0007600:	1aca      	subs	r2, r1, r3
d0007602:	b292      	uxth	r2, r2
d0007604:	2aff      	cmp	r2, #255	; 0xff
d0007606:	d906      	bls.n	d0007616 <pjpeg_decode_mcu+0x492>
d0007608:	b211      	sxth	r1, r2
d000760a:	2900      	cmp	r1, #0
d000760c:	f2c1 81d5 	blt.w	d00089ba <pjpeg_decode_mcu+0x1836>
d0007610:	29ff      	cmp	r1, #255	; 0xff
d0007612:	f301 820b 	bgt.w	d0008a2c <pjpeg_decode_mcu+0x18a8>
d0007616:	b2d1      	uxtb	r1, r2
d0007618:	f890 2040 	ldrb.w	r2, [r0, #64]	; 0x40
d000761c:	7001      	strb	r1, [r0, #0]
d000761e:	1ad2      	subs	r2, r2, r3
d0007620:	b292      	uxth	r2, r2
d0007622:	2aff      	cmp	r2, #255	; 0xff
d0007624:	d906      	bls.n	d0007634 <pjpeg_decode_mcu+0x4b0>
d0007626:	b211      	sxth	r1, r2
d0007628:	2900      	cmp	r1, #0
d000762a:	f2c1 81a6 	blt.w	d000897a <pjpeg_decode_mcu+0x17f6>
d000762e:	29ff      	cmp	r1, #255	; 0xff
d0007630:	f301 81ee 	bgt.w	d0008a10 <pjpeg_decode_mcu+0x188c>
d0007634:	b2d1      	uxtb	r1, r2
d0007636:	f890 2080 	ldrb.w	r2, [r0, #128]	; 0x80
d000763a:	f880 1040 	strb.w	r1, [r0, #64]	; 0x40
d000763e:	1ad2      	subs	r2, r2, r3
d0007640:	b292      	uxth	r2, r2
d0007642:	2aff      	cmp	r2, #255	; 0xff
d0007644:	d906      	bls.n	d0007654 <pjpeg_decode_mcu+0x4d0>
d0007646:	b211      	sxth	r1, r2
d0007648:	2900      	cmp	r1, #0
d000764a:	f2c1 8199 	blt.w	d0008980 <pjpeg_decode_mcu+0x17fc>
d000764e:	29ff      	cmp	r1, #255	; 0xff
d0007650:	f301 81e1 	bgt.w	d0008a16 <pjpeg_decode_mcu+0x1892>
d0007654:	b2d1      	uxtb	r1, r2
d0007656:	f890 20c0 	ldrb.w	r2, [r0, #192]	; 0xc0
d000765a:	f880 1080 	strb.w	r1, [r0, #128]	; 0x80
d000765e:	1ad3      	subs	r3, r2, r3
d0007660:	b29b      	uxth	r3, r3
d0007662:	2bff      	cmp	r3, #255	; 0xff
d0007664:	d906      	bls.n	d0007674 <pjpeg_decode_mcu+0x4f0>
d0007666:	b21a      	sxth	r2, r3
d0007668:	2a00      	cmp	r2, #0
d000766a:	f2c1 8183 	blt.w	d0008974 <pjpeg_decode_mcu+0x17f0>
d000766e:	2aff      	cmp	r2, #255	; 0xff
d0007670:	f301 81d6 	bgt.w	d0008a20 <pjpeg_decode_mcu+0x189c>
d0007674:	b2db      	uxtb	r3, r3
d0007676:	f880 30c0 	strb.w	r3, [r0, #192]	; 0xc0
d000767a:	9a05      	ldr	r2, [sp, #20]
d000767c:	9b0c      	ldr	r3, [sp, #48]	; 0x30
d000767e:	3201      	adds	r2, #1
d0007680:	781b      	ldrb	r3, [r3, #0]
d0007682:	9205      	str	r2, [sp, #20]
d0007684:	b2d2      	uxtb	r2, r2
d0007686:	4293      	cmp	r3, r2
d0007688:	9201      	str	r2, [sp, #4]
d000768a:	f63f ad9f 	bhi.w	d00071cc <pjpeg_decode_mcu+0x48>
d000768e:	e61d      	b.n	d00072cc <pjpeg_decode_mcu+0x148>
d0007690:	f7fe ff90 	bl	d00065b4 <getChar>
d0007694:	2800      	cmp	r0, #0
d0007696:	f43f af0c 	beq.w	d00074b2 <pjpeg_decode_mcu+0x32e>
d000769a:	4a32      	ldr	r2, [pc, #200]	; (d0007764 <pjpeg_decode_mcu+0x5e0>)
d000769c:	4932      	ldr	r1, [pc, #200]	; (d0007768 <pjpeg_decode_mcu+0x5e4>)
d000769e:	7813      	ldrb	r3, [r2, #0]
d00076a0:	f891 e000 	ldrb.w	lr, [r1]
d00076a4:	f103 3cff 	add.w	ip, r3, #4294967295	; 0xffffffff
d00076a8:	3b02      	subs	r3, #2
d00076aa:	f10e 0e02 	add.w	lr, lr, #2
d00076ae:	b2db      	uxtb	r3, r3
d00076b0:	fa5f fc8c 	uxtb.w	ip, ip
d00076b4:	f881 e000 	strb.w	lr, [r1]
d00076b8:	7013      	strb	r3, [r2, #0]
d00076ba:	f806 000c 	strb.w	r0, [r6, ip]
d00076be:	f806 8003 	strb.w	r8, [r6, r3]
d00076c2:	e6f6      	b.n	d00074b2 <pjpeg_decode_mcu+0x32e>
d00076c4:	f7fe ff76 	bl	d00065b4 <getChar>
d00076c8:	2800      	cmp	r0, #0
d00076ca:	f43f af01 	beq.w	d00074d0 <pjpeg_decode_mcu+0x34c>
d00076ce:	4b25      	ldr	r3, [pc, #148]	; (d0007764 <pjpeg_decode_mcu+0x5e0>)
d00076d0:	4925      	ldr	r1, [pc, #148]	; (d0007768 <pjpeg_decode_mcu+0x5e4>)
d00076d2:	781b      	ldrb	r3, [r3, #0]
d00076d4:	460d      	mov	r5, r1
d00076d6:	7809      	ldrb	r1, [r1, #0]
d00076d8:	1e5a      	subs	r2, r3, #1
d00076da:	3b02      	subs	r3, #2
d00076dc:	3102      	adds	r1, #2
d00076de:	b2d2      	uxtb	r2, r2
d00076e0:	b2db      	uxtb	r3, r3
d00076e2:	7029      	strb	r1, [r5, #0]
d00076e4:	54b0      	strb	r0, [r6, r2]
d00076e6:	4a1f      	ldr	r2, [pc, #124]	; (d0007764 <pjpeg_decode_mcu+0x5e0>)
d00076e8:	f806 9003 	strb.w	r9, [r6, r3]
d00076ec:	7013      	strb	r3, [r2, #0]
d00076ee:	e6ef      	b.n	d00074d0 <pjpeg_decode_mcu+0x34c>
d00076f0:	46b8      	mov	r8, r7
d00076f2:	4657      	mov	r7, sl
d00076f4:	46a2      	mov	sl, r4
d00076f6:	9c06      	ldr	r4, [sp, #24]
d00076f8:	eb07 030a 	add.w	r3, r7, sl
d00076fc:	f817 201a 	ldrb.w	r2, [r7, sl, lsl #1]
d0007700:	f893 3040 	ldrb.w	r3, [r3, #64]	; 0x40
d0007704:	449c      	add	ip, r3
d0007706:	9b07      	ldr	r3, [sp, #28]
d0007708:	ebac 0c02 	sub.w	ip, ip, r2
d000770c:	f00c 0cff 	and.w	ip, ip, #255	; 0xff
d0007710:	f813 500c 	ldrb.w	r5, [r3, ip]
d0007714:	f015 000f 	ands.w	r0, r5, #15
d0007718:	d012      	beq.n	d0007740 <pjpeg_decode_mcu+0x5bc>
d000771a:	f7ff fbf7 	bl	d0006f0c <getBits.constprop.2>
d000771e:	092d      	lsrs	r5, r5, #4
d0007720:	d004      	beq.n	d000772c <pjpeg_decode_mcu+0x5a8>
d0007722:	442c      	add	r4, r5
d0007724:	2c3f      	cmp	r4, #63	; 0x3f
d0007726:	f300 8520 	bgt.w	d000816a <pjpeg_decode_mcu+0xfe6>
d000772a:	b2e4      	uxtb	r4, r4
d000772c:	3401      	adds	r4, #1
d000772e:	b2e4      	uxtb	r4, r4
d0007730:	2c3f      	cmp	r4, #63	; 0x3f
d0007732:	f63f aed7 	bhi.w	d00074e4 <pjpeg_decode_mcu+0x360>
d0007736:	4b07      	ldr	r3, [pc, #28]	; (d0007754 <pjpeg_decode_mcu+0x5d0>)
d0007738:	881a      	ldrh	r2, [r3, #0]
d000773a:	f898 3000 	ldrb.w	r3, [r8]
d000773e:	e642      	b.n	d00073c6 <pjpeg_decode_mcu+0x242>
d0007740:	092d      	lsrs	r5, r5, #4
d0007742:	2d0f      	cmp	r5, #15
d0007744:	f47f aece 	bne.w	d00074e4 <pjpeg_decode_mcu+0x360>
d0007748:	2c30      	cmp	r4, #48	; 0x30
d000774a:	f200 850e 	bhi.w	d000816a <pjpeg_decode_mcu+0xfe6>
d000774e:	340f      	adds	r4, #15
d0007750:	e7eb      	b.n	d000772a <pjpeg_decode_mcu+0x5a6>
d0007752:	bf00      	nop
d0007754:	d000e930 	.word	0xd000e930
d0007758:	d000f25e 	.word	0xd000f25e
d000775c:	d000f044 	.word	0xd000f044
d0007760:	d000ef44 	.word	0xd000ef44
d0007764:	d000ee39 	.word	0xd000ee39
d0007768:	d000ee38 	.word	0xd000ee38
d000776c:	2e00      	cmp	r6, #0
d000776e:	4896      	ldr	r0, [pc, #600]	; (d00079c8 <pjpeg_decode_mcu+0x844>)
d0007770:	4996      	ldr	r1, [pc, #600]	; (d00079cc <pjpeg_decode_mcu+0x848>)
d0007772:	f04f 0401 	mov.w	r4, #1
d0007776:	bf08      	it	eq
d0007778:	4606      	moveq	r6, r0
d000777a:	4895      	ldr	r0, [pc, #596]	; (d00079d0 <pjpeg_decode_mcu+0x84c>)
d000777c:	bf18      	it	ne
d000777e:	460e      	movne	r6, r1
d0007780:	4994      	ldr	r1, [pc, #592]	; (d00079d4 <pjpeg_decode_mcu+0x850>)
d0007782:	bf08      	it	eq
d0007784:	4601      	moveq	r1, r0
d0007786:	4d94      	ldr	r5, [pc, #592]	; (d00079d8 <pjpeg_decode_mcu+0x854>)
d0007788:	f8dd 8008 	ldr.w	r8, [sp, #8]
d000778c:	9108      	str	r1, [sp, #32]
d000778e:	f106 011e 	add.w	r1, r6, #30
d0007792:	9109      	str	r1, [sp, #36]	; 0x24
d0007794:	ea4f 3ad2 	mov.w	sl, r2, lsr #15
d0007798:	2b00      	cmp	r3, #0
d000779a:	d03f      	beq.n	d000781c <pjpeg_decode_mcu+0x698>
d000779c:	0050      	lsls	r0, r2, #1
d000779e:	3b01      	subs	r3, #1
d00077a0:	fa1f fc8a 	uxth.w	ip, sl
d00077a4:	4a8d      	ldr	r2, [pc, #564]	; (d00079dc <pjpeg_decode_mcu+0x858>)
d00077a6:	f04f 0a00 	mov.w	sl, #0
d00077aa:	b2db      	uxtb	r3, r3
d00077ac:	b280      	uxth	r0, r0
d00077ae:	9607      	str	r6, [sp, #28]
d00077b0:	f8dd 9024 	ldr.w	r9, [sp, #36]	; 0x24
d00077b4:	4656      	mov	r6, sl
d00077b6:	f888 3000 	strb.w	r3, [r8]
d00077ba:	46c2      	mov	sl, r8
d00077bc:	8010      	strh	r0, [r2, #0]
d00077be:	e00c      	b.n	d00077da <pjpeg_decode_mcu+0x656>
d00077c0:	9a06      	ldr	r2, [sp, #24]
d00077c2:	0040      	lsls	r0, r0, #1
d00077c4:	3b01      	subs	r3, #1
d00077c6:	2e10      	cmp	r6, #16
d00077c8:	ea47 0c02 	orr.w	ip, r7, r2
d00077cc:	b280      	uxth	r0, r0
d00077ce:	b2db      	uxtb	r3, r3
d00077d0:	4a82      	ldr	r2, [pc, #520]	; (d00079dc <pjpeg_decode_mcu+0x858>)
d00077d2:	f88a 3000 	strb.w	r3, [sl]
d00077d6:	8010      	strh	r0, [r2, #0]
d00077d8:	d030      	beq.n	d000783c <pjpeg_decode_mcu+0x6b8>
d00077da:	f839 ef02 	ldrh.w	lr, [r9, #2]!
d00077de:	ea4f 074c 	mov.w	r7, ip, lsl #1
d00077e2:	0bc2      	lsrs	r2, r0, #15
d00077e4:	f64f 78ff 	movw	r8, #65535	; 0xffff
d00077e8:	45e6      	cmp	lr, ip
d00077ea:	b2bf      	uxth	r7, r7
d00077ec:	9206      	str	r2, [sp, #24]
d00077ee:	d302      	bcc.n	d00077f6 <pjpeg_decode_mcu+0x672>
d00077f0:	45c6      	cmp	lr, r8
d00077f2:	f040 8259 	bne.w	d0007ca8 <pjpeg_decode_mcu+0xb24>
d00077f6:	3601      	adds	r6, #1
d00077f8:	2b00      	cmp	r3, #0
d00077fa:	d1e1      	bne.n	d00077c0 <pjpeg_decode_mcu+0x63c>
d00077fc:	f7fe feda 	bl	d00065b4 <getChar>
d0007800:	28ff      	cmp	r0, #255	; 0xff
d0007802:	4680      	mov	r8, r0
d0007804:	f000 8220 	beq.w	d0007c48 <pjpeg_decode_mcu+0xac4>
d0007808:	4b74      	ldr	r3, [pc, #464]	; (d00079dc <pjpeg_decode_mcu+0x858>)
d000780a:	8818      	ldrh	r0, [r3, #0]
d000780c:	f89a 3000 	ldrb.w	r3, [sl]
d0007810:	ea48 0000 	orr.w	r0, r8, r0
d0007814:	3308      	adds	r3, #8
d0007816:	b280      	uxth	r0, r0
d0007818:	b2db      	uxtb	r3, r3
d000781a:	e7d1      	b.n	d00077c0 <pjpeg_decode_mcu+0x63c>
d000781c:	f7fe feca 	bl	d00065b4 <getChar>
d0007820:	28ff      	cmp	r0, #255	; 0xff
d0007822:	4681      	mov	r9, r0
d0007824:	f000 822a 	beq.w	d0007c7c <pjpeg_decode_mcu+0xaf8>
d0007828:	4b6c      	ldr	r3, [pc, #432]	; (d00079dc <pjpeg_decode_mcu+0x858>)
d000782a:	881a      	ldrh	r2, [r3, #0]
d000782c:	f898 3000 	ldrb.w	r3, [r8]
d0007830:	ea49 0202 	orr.w	r2, r9, r2
d0007834:	3308      	adds	r3, #8
d0007836:	b292      	uxth	r2, r2
d0007838:	b2db      	uxtb	r3, r3
d000783a:	e7af      	b.n	d000779c <pjpeg_decode_mcu+0x618>
d000783c:	2c3f      	cmp	r4, #63	; 0x3f
d000783e:	d80e      	bhi.n	d000785e <pjpeg_decode_mcu+0x6da>
d0007840:	4b67      	ldr	r3, [pc, #412]	; (d00079e0 <pjpeg_decode_mcu+0x85c>)
d0007842:	f1c4 023f 	rsb	r2, r4, #63	; 0x3f
d0007846:	1c59      	adds	r1, r3, #1
d0007848:	4423      	add	r3, r4
d000784a:	440c      	add	r4, r1
d000784c:	2100      	movs	r1, #0
d000784e:	fa54 f482 	uxtab	r4, r4, r2
d0007852:	f913 2b01 	ldrsb.w	r2, [r3], #1
d0007856:	429c      	cmp	r4, r3
d0007858:	f82b 1012 	strh.w	r1, [fp, r2, lsl #1]
d000785c:	d1f9      	bne.n	d0007852 <pjpeg_decode_mcu+0x6ce>
d000785e:	f04f 0980 	mov.w	r9, #128	; 0x80
d0007862:	4b60      	ldr	r3, [pc, #384]	; (d00079e4 <pjpeg_decode_mcu+0x860>)
d0007864:	e014      	b.n	d0007890 <pjpeg_decode_mcu+0x70c>
d0007866:	f933 2c10 	ldrsh.w	r2, [r3, #-16]
d000786a:	3310      	adds	r3, #16
d000786c:	f823 2c1e 	strh.w	r2, [r3, #-30]
d0007870:	f823 2c1c 	strh.w	r2, [r3, #-28]
d0007874:	f823 2c1a 	strh.w	r2, [r3, #-26]
d0007878:	f823 2c18 	strh.w	r2, [r3, #-24]
d000787c:	f823 2c16 	strh.w	r2, [r3, #-22]
d0007880:	f823 2c14 	strh.w	r2, [r3, #-20]
d0007884:	f823 2c12 	strh.w	r2, [r3, #-18]
d0007888:	4a57      	ldr	r2, [pc, #348]	; (d00079e8 <pjpeg_decode_mcu+0x864>)
d000788a:	4293      	cmp	r3, r2
d000788c:	f000 8096 	beq.w	d00079bc <pjpeg_decode_mcu+0x838>
d0007890:	f933 ec0e 	ldrsh.w	lr, [r3, #-14]
d0007894:	f933 4c0c 	ldrsh.w	r4, [r3, #-12]
d0007898:	fa1f f28e 	uxth.w	r2, lr
d000789c:	f933 1c0a 	ldrsh.w	r1, [r3, #-10]
d00078a0:	b2a7      	uxth	r7, r4
d00078a2:	ea44 040e 	orr.w	r4, r4, lr
d00078a6:	f933 ec06 	ldrsh.w	lr, [r3, #-6]
d00078aa:	fa1f fc81 	uxth.w	ip, r1
d00078ae:	f933 5c08 	ldrsh.w	r5, [r3, #-8]
d00078b2:	430c      	orrs	r4, r1
d00078b4:	fa1f f88e 	uxth.w	r8, lr
d00078b8:	f933 0c04 	ldrsh.w	r0, [r3, #-4]
d00078bc:	432c      	orrs	r4, r5
d00078be:	b2a9      	uxth	r1, r5
d00078c0:	eba8 050c 	sub.w	r5, r8, ip
d00078c4:	b286      	uxth	r6, r0
d00078c6:	ea4e 0e04 	orr.w	lr, lr, r4
d00078ca:	f933 ac02 	ldrsh.w	sl, [r3, #-2]
d00078ce:	b2ad      	uxth	r5, r5
d00078d0:	44c4      	add	ip, r8
d00078d2:	ea40 0e0e 	orr.w	lr, r0, lr
d00078d6:	eb06 0807 	add.w	r8, r6, r7
d00078da:	1aac      	subs	r4, r5, r2
d00078dc:	1bbf      	subs	r7, r7, r6
d00078de:	f44f 70b5 	mov.w	r0, #362	; 0x16a
d00078e2:	fa1f f68a 	uxth.w	r6, sl
d00078e6:	fa1f fc8c 	uxth.w	ip, ip
d00078ea:	fb17 9700 	smlabb	r7, r7, r0, r9
d00078ee:	18b0      	adds	r0, r6, r2
d00078f0:	1b92      	subs	r2, r2, r6
d00078f2:	4426      	add	r6, r4
d00078f4:	ea5a 040e 	orrs.w	r4, sl, lr
d00078f8:	f240 1415 	movw	r4, #277	; 0x115
d00078fc:	b280      	uxth	r0, r0
d00078fe:	f3c7 270f 	ubfx	r7, r7, #8, #16
d0007902:	fb12 9204 	smlabb	r2, r2, r4, r9
d0007906:	fa1f f888 	uxth.w	r8, r8
d000790a:	eb00 0e0c 	add.w	lr, r0, ip
d000790e:	eba0 000c 	sub.w	r0, r0, ip
d0007912:	f3c2 220f 	ubfx	r2, r2, #8, #16
d0007916:	d0a6      	beq.n	d0007866 <pjpeg_decode_mcu+0x6e2>
d0007918:	24c4      	movs	r4, #196	; 0xc4
d000791a:	fa1f fe8e 	uxth.w	lr, lr
d000791e:	f833 cc10 	ldrh.w	ip, [r3, #-16]
d0007922:	3310      	adds	r3, #16
d0007924:	fb16 9604 	smlabb	r6, r6, r4, r9
d0007928:	ebae 0a02 	sub.w	sl, lr, r2
d000792c:	f44f 74b5 	mov.w	r4, #362	; 0x16a
d0007930:	eba2 020e 	sub.w	r2, r2, lr
d0007934:	f3c6 260f 	ubfx	r6, r6, #8, #16
d0007938:	fb10 9004 	smlabb	r0, r0, r4, r9
d000793c:	ebac 0401 	sub.w	r4, ip, r1
d0007940:	44b2      	add	sl, r6
d0007942:	4461      	add	r1, ip
d0007944:	b2a4      	uxth	r4, r4
d0007946:	f240 2c9d 	movw	ip, #669	; 0x29d
d000794a:	fa1f fa8a 	uxth.w	sl, sl
d000794e:	fb15 950c 	smlabb	r5, r5, ip, r9
d0007952:	eba4 0c08 	sub.w	ip, r4, r8
d0007956:	eb0a 2020 	add.w	r0, sl, r0, asr #8
d000795a:	4444      	add	r4, r8
d000795c:	b289      	uxth	r1, r1
d000795e:	44bc      	add	ip, r7
d0007960:	b280      	uxth	r0, r0
d0007962:	1be4      	subs	r4, r4, r7
d0007964:	eba6 2525 	sub.w	r5, r6, r5, asr #8
d0007968:	eba1 0708 	sub.w	r7, r1, r8
d000796c:	fa1f fc8c 	uxth.w	ip, ip
d0007970:	4488      	add	r8, r1
d0007972:	4405      	add	r5, r0
d0007974:	b2a4      	uxth	r4, r4
d0007976:	4462      	add	r2, ip
d0007978:	b2bf      	uxth	r7, r7
d000797a:	b2ad      	uxth	r5, r5
d000797c:	1821      	adds	r1, r4, r0
d000797e:	fa1f f888 	uxth.w	r8, r8
d0007982:	1b92      	subs	r2, r2, r6
d0007984:	1a20      	subs	r0, r4, r0
d0007986:	1b7e      	subs	r6, r7, r5
d0007988:	eb08 040e 	add.w	r4, r8, lr
d000798c:	44d4      	add	ip, sl
d000798e:	443d      	add	r5, r7
d0007990:	eba8 080e 	sub.w	r8, r8, lr
d0007994:	f823 2c1e 	strh.w	r2, [r3, #-30]
d0007998:	4a13      	ldr	r2, [pc, #76]	; (d00079e8 <pjpeg_decode_mcu+0x864>)
d000799a:	f823 cc14 	strh.w	ip, [r3, #-20]
d000799e:	f823 6c1a 	strh.w	r6, [r3, #-26]
d00079a2:	f823 5c18 	strh.w	r5, [r3, #-24]
d00079a6:	f823 1c1c 	strh.w	r1, [r3, #-28]
d00079aa:	f823 0c16 	strh.w	r0, [r3, #-22]
d00079ae:	f823 4c20 	strh.w	r4, [r3, #-32]
d00079b2:	f823 8c12 	strh.w	r8, [r3, #-18]
d00079b6:	4293      	cmp	r3, r2
d00079b8:	f47f af6a 	bne.w	d0007890 <pjpeg_decode_mcu+0x70c>
d00079bc:	f1a2 0990 	sub.w	r9, r2, #144	; 0x90
d00079c0:	f04f 0a80 	mov.w	sl, #128	; 0x80
d00079c4:	e035      	b.n	d0007a32 <pjpeg_decode_mcu+0x8ae>
d00079c6:	bf00      	nop
d00079c8:	d000ea74 	.word	0xd000ea74
d00079cc:	d000eac4 	.word	0xd000eac4
d00079d0:	d000eb34 	.word	0xd000eb34
d00079d4:	d000ec34 	.word	0xd000ec34
d00079d8:	d000ed38 	.word	0xd000ed38
d00079dc:	d000e930 	.word	0xd000e930
d00079e0:	d000e008 	.word	0xd000e008
d00079e4:	d000e944 	.word	0xd000e944
d00079e8:	d000e9c4 	.word	0xd000e9c4
d00079ec:	f9b9 3000 	ldrsh.w	r3, [r9]
d00079f0:	f109 0902 	add.w	r9, r9, #2
d00079f4:	3340      	adds	r3, #64	; 0x40
d00079f6:	11db      	asrs	r3, r3, #7
d00079f8:	3380      	adds	r3, #128	; 0x80
d00079fa:	b29b      	uxth	r3, r3
d00079fc:	2bff      	cmp	r3, #255	; 0xff
d00079fe:	bf84      	itt	hi
d0007a00:	43db      	mvnhi	r3, r3
d0007a02:	f343 33c0 	sbfxhi	r3, r3, #15, #1
d0007a06:	b2db      	uxtb	r3, r3
d0007a08:	b21b      	sxth	r3, r3
d0007a0a:	f829 3c02 	strh.w	r3, [r9, #-2]
d0007a0e:	f8a9 300e 	strh.w	r3, [r9, #14]
d0007a12:	f8a9 301e 	strh.w	r3, [r9, #30]
d0007a16:	f8a9 302e 	strh.w	r3, [r9, #46]	; 0x2e
d0007a1a:	f8a9 303e 	strh.w	r3, [r9, #62]	; 0x3e
d0007a1e:	f8a9 304e 	strh.w	r3, [r9, #78]	; 0x4e
d0007a22:	f8a9 305e 	strh.w	r3, [r9, #94]	; 0x5e
d0007a26:	f8a9 306e 	strh.w	r3, [r9, #110]	; 0x6e
d0007a2a:	4bbc      	ldr	r3, [pc, #752]	; (d0007d1c <pjpeg_decode_mcu+0xb98>)
d0007a2c:	4599      	cmp	r9, r3
d0007a2e:	f000 80ff 	beq.w	d0007c30 <pjpeg_decode_mcu+0xaac>
d0007a32:	f9b9 1010 	ldrsh.w	r1, [r9, #16]
d0007a36:	f9b9 c020 	ldrsh.w	ip, [r9, #32]
d0007a3a:	f9b9 3030 	ldrsh.w	r3, [r9, #48]	; 0x30
d0007a3e:	ea4c 0001 	orr.w	r0, ip, r1
d0007a42:	f9b9 4040 	ldrsh.w	r4, [r9, #64]	; 0x40
d0007a46:	f9b9 5050 	ldrsh.w	r5, [r9, #80]	; 0x50
d0007a4a:	4318      	orrs	r0, r3
d0007a4c:	f9b9 2060 	ldrsh.w	r2, [r9, #96]	; 0x60
d0007a50:	f9b9 7070 	ldrsh.w	r7, [r9, #112]	; 0x70
d0007a54:	4320      	orrs	r0, r4
d0007a56:	4328      	orrs	r0, r5
d0007a58:	4310      	orrs	r0, r2
d0007a5a:	4338      	orrs	r0, r7
d0007a5c:	d0c6      	beq.n	d00079ec <pjpeg_decode_mcu+0x868>
d0007a5e:	b2a8      	uxth	r0, r5
d0007a60:	f8b9 8000 	ldrh.w	r8, [r9]
d0007a64:	b2bd      	uxth	r5, r7
d0007a66:	f109 0902 	add.w	r9, r9, #2
d0007a6a:	b289      	uxth	r1, r1
d0007a6c:	b29b      	uxth	r3, r3
d0007a6e:	9508      	str	r5, [sp, #32]
d0007a70:	fa1f fc8c 	uxth.w	ip, ip
d0007a74:	1b4e      	subs	r6, r1, r5
d0007a76:	eb03 0e00 	add.w	lr, r3, r0
d0007a7a:	b2a4      	uxth	r4, r4
d0007a7c:	1ac3      	subs	r3, r0, r3
d0007a7e:	b292      	uxth	r2, r2
d0007a80:	1868      	adds	r0, r5, r1
d0007a82:	eb04 0708 	add.w	r7, r4, r8
d0007a86:	fa1f fe8e 	uxth.w	lr, lr
d0007a8a:	eb02 050c 	add.w	r5, r2, ip
d0007a8e:	b280      	uxth	r0, r0
d0007a90:	ebac 0202 	sub.w	r2, ip, r2
d0007a94:	b29b      	uxth	r3, r3
d0007a96:	eba8 0404 	sub.w	r4, r8, r4
d0007a9a:	b2ad      	uxth	r5, r5
d0007a9c:	eb00 080e 	add.w	r8, r0, lr
d0007aa0:	b2bf      	uxth	r7, r7
d0007aa2:	eba0 000e 	sub.w	r0, r0, lr
d0007aa6:	1a59      	subs	r1, r3, r1
d0007aa8:	f44f 7cb5 	mov.w	ip, #362	; 0x16a
d0007aac:	fa1f f888 	uxth.w	r8, r8
d0007ab0:	eb05 0e07 	add.w	lr, r5, r7
d0007ab4:	9707      	str	r7, [sp, #28]
d0007ab6:	f240 1715 	movw	r7, #277	; 0x115
d0007aba:	9109      	str	r1, [sp, #36]	; 0x24
d0007abc:	fb10 a10c 	smlabb	r1, r0, ip, sl
d0007ac0:	fb16 a607 	smlabb	r6, r6, r7, sl
d0007ac4:	920b      	str	r2, [sp, #44]	; 0x2c
d0007ac6:	fa0f f788 	sxth.w	r7, r8
d0007aca:	910a      	str	r1, [sp, #40]	; 0x28
d0007acc:	fa0f f28e 	sxth.w	r2, lr
d0007ad0:	9908      	ldr	r1, [sp, #32]
d0007ad2:	9809      	ldr	r0, [sp, #36]	; 0x24
d0007ad4:	f3c6 260f 	ubfx	r6, r6, #8, #16
d0007ad8:	eb07 0c02 	add.w	ip, r7, r2
d0007adc:	9206      	str	r2, [sp, #24]
d0007ade:	4408      	add	r0, r1
d0007ae0:	9a0a      	ldr	r2, [sp, #40]	; 0x28
d0007ae2:	9704      	str	r7, [sp, #16]
d0007ae4:	b2a4      	uxth	r4, r4
d0007ae6:	4601      	mov	r1, r0
d0007ae8:	ebc6 2022 	rsb	r0, r6, r2, asr #8
d0007aec:	22c4      	movs	r2, #196	; 0xc4
d0007aee:	9f0b      	ldr	r7, [sp, #44]	; 0x2c
d0007af0:	eba4 0e05 	sub.w	lr, r4, r5
d0007af4:	eba6 0608 	sub.w	r6, r6, r8
d0007af8:	fb11 a102 	smlabb	r1, r1, r2, sl
d0007afc:	f44f 72b5 	mov.w	r2, #362	; 0x16a
d0007b00:	442c      	add	r4, r5
d0007b02:	f10c 0c40 	add.w	ip, ip, #64	; 0x40
d0007b06:	fb17 a202 	smlabb	r2, r7, r2, sl
d0007b0a:	f3c1 210f 	ubfx	r1, r1, #8, #16
d0007b0e:	ea4f 1cec 	mov.w	ip, ip, asr #7
d0007b12:	4440      	add	r0, r8
d0007b14:	f3c2 220f 	ubfx	r2, r2, #8, #16
d0007b18:	1a76      	subs	r6, r6, r1
d0007b1a:	f10c 0c80 	add.w	ip, ip, #128	; 0x80
d0007b1e:	f240 289d 	movw	r8, #669	; 0x29d
d0007b22:	4496      	add	lr, r2
d0007b24:	b236      	sxth	r6, r6
d0007b26:	1aa4      	subs	r4, r4, r2
d0007b28:	fa1f fc8c 	uxth.w	ip, ip
d0007b2c:	fa0f fe8e 	sxth.w	lr, lr
d0007b30:	4408      	add	r0, r1
d0007b32:	f1bc 0fff 	cmp.w	ip, #255	; 0xff
d0007b36:	b224      	sxth	r4, r4
d0007b38:	eb06 020e 	add.w	r2, r6, lr
d0007b3c:	9f07      	ldr	r7, [sp, #28]
d0007b3e:	fb13 a308 	smlabb	r3, r3, r8, sl
d0007b42:	bf88      	it	hi
d0007b44:	ea6f 0c0c 	mvnhi.w	ip, ip
d0007b48:	f102 0240 	add.w	r2, r2, #64	; 0x40
d0007b4c:	eba7 0505 	sub.w	r5, r7, r5
d0007b50:	bf88      	it	hi
d0007b52:	f34c 3cc0 	sbfxhi	ip, ip, #15, #1
d0007b56:	eba1 2323 	sub.w	r3, r1, r3, asr #8
d0007b5a:	11d2      	asrs	r2, r2, #7
d0007b5c:	fa13 f380 	uxtah	r3, r3, r0
d0007b60:	b200      	sxth	r0, r0
d0007b62:	3280      	adds	r2, #128	; 0x80
d0007b64:	b22d      	sxth	r5, r5
d0007b66:	b21b      	sxth	r3, r3
d0007b68:	b292      	uxth	r2, r2
d0007b6a:	fa5f fc8c 	uxtb.w	ip, ip
d0007b6e:	2aff      	cmp	r2, #255	; 0xff
d0007b70:	f829 cc02 	strh.w	ip, [r9, #-2]
d0007b74:	bf84      	itt	hi
d0007b76:	43d2      	mvnhi	r2, r2
d0007b78:	f342 32c0 	sbfxhi	r2, r2, #15, #1
d0007b7c:	b2d1      	uxtb	r1, r2
d0007b7e:	1902      	adds	r2, r0, r4
d0007b80:	3240      	adds	r2, #64	; 0x40
d0007b82:	f8a9 100e 	strh.w	r1, [r9, #14]
d0007b86:	11d2      	asrs	r2, r2, #7
d0007b88:	3280      	adds	r2, #128	; 0x80
d0007b8a:	b292      	uxth	r2, r2
d0007b8c:	2aff      	cmp	r2, #255	; 0xff
d0007b8e:	bf84      	itt	hi
d0007b90:	43d2      	mvnhi	r2, r2
d0007b92:	f342 32c0 	sbfxhi	r2, r2, #15, #1
d0007b96:	b2d1      	uxtb	r1, r2
d0007b98:	1aea      	subs	r2, r5, r3
d0007b9a:	442b      	add	r3, r5
d0007b9c:	3240      	adds	r2, #64	; 0x40
d0007b9e:	f8a9 101e 	strh.w	r1, [r9, #30]
d0007ba2:	3340      	adds	r3, #64	; 0x40
d0007ba4:	9904      	ldr	r1, [sp, #16]
d0007ba6:	11d2      	asrs	r2, r2, #7
d0007ba8:	11db      	asrs	r3, r3, #7
d0007baa:	3280      	adds	r2, #128	; 0x80
d0007bac:	3380      	adds	r3, #128	; 0x80
d0007bae:	b292      	uxth	r2, r2
d0007bb0:	b29b      	uxth	r3, r3
d0007bb2:	2aff      	cmp	r2, #255	; 0xff
d0007bb4:	bf84      	itt	hi
d0007bb6:	43d2      	mvnhi	r2, r2
d0007bb8:	f342 32c0 	sbfxhi	r2, r2, #15, #1
d0007bbc:	2bff      	cmp	r3, #255	; 0xff
d0007bbe:	b2d2      	uxtb	r2, r2
d0007bc0:	bf88      	it	hi
d0007bc2:	43db      	mvnhi	r3, r3
d0007bc4:	f8a9 202e 	strh.w	r2, [r9, #46]	; 0x2e
d0007bc8:	bf88      	it	hi
d0007bca:	f343 33c0 	sbfxhi	r3, r3, #15, #1
d0007bce:	1a22      	subs	r2, r4, r0
d0007bd0:	b2db      	uxtb	r3, r3
d0007bd2:	3240      	adds	r2, #64	; 0x40
d0007bd4:	f8a9 303e 	strh.w	r3, [r9, #62]	; 0x3e
d0007bd8:	ebae 0306 	sub.w	r3, lr, r6
d0007bdc:	11d2      	asrs	r2, r2, #7
d0007bde:	3340      	adds	r3, #64	; 0x40
d0007be0:	3280      	adds	r2, #128	; 0x80
d0007be2:	11db      	asrs	r3, r3, #7
d0007be4:	b292      	uxth	r2, r2
d0007be6:	3380      	adds	r3, #128	; 0x80
d0007be8:	2aff      	cmp	r2, #255	; 0xff
d0007bea:	b29b      	uxth	r3, r3
d0007bec:	bf84      	itt	hi
d0007bee:	43d2      	mvnhi	r2, r2
d0007bf0:	f342 32c0 	sbfxhi	r2, r2, #15, #1
d0007bf4:	2bff      	cmp	r3, #255	; 0xff
d0007bf6:	bf88      	it	hi
d0007bf8:	43db      	mvnhi	r3, r3
d0007bfa:	b2d2      	uxtb	r2, r2
d0007bfc:	bf88      	it	hi
d0007bfe:	f343 33c0 	sbfxhi	r3, r3, #15, #1
d0007c02:	f8a9 204e 	strh.w	r2, [r9, #78]	; 0x4e
d0007c06:	b2da      	uxtb	r2, r3
d0007c08:	9b06      	ldr	r3, [sp, #24]
d0007c0a:	1a5b      	subs	r3, r3, r1
d0007c0c:	f8a9 205e 	strh.w	r2, [r9, #94]	; 0x5e
d0007c10:	3340      	adds	r3, #64	; 0x40
d0007c12:	11db      	asrs	r3, r3, #7
d0007c14:	3380      	adds	r3, #128	; 0x80
d0007c16:	b29b      	uxth	r3, r3
d0007c18:	2bff      	cmp	r3, #255	; 0xff
d0007c1a:	bf84      	itt	hi
d0007c1c:	43db      	mvnhi	r3, r3
d0007c1e:	f343 33c0 	sbfxhi	r3, r3, #15, #1
d0007c22:	b2db      	uxtb	r3, r3
d0007c24:	f8a9 306e 	strh.w	r3, [r9, #110]	; 0x6e
d0007c28:	4b3c      	ldr	r3, [pc, #240]	; (d0007d1c <pjpeg_decode_mcu+0xb98>)
d0007c2a:	4599      	cmp	r9, r3
d0007c2c:	f47f af01 	bne.w	d0007a32 <pjpeg_decode_mcu+0x8ae>
d0007c30:	4b3b      	ldr	r3, [pc, #236]	; (d0007d20 <pjpeg_decode_mcu+0xb9c>)
d0007c32:	781b      	ldrb	r3, [r3, #0]
d0007c34:	2b04      	cmp	r3, #4
d0007c36:	f63f ad20 	bhi.w	d000767a <pjpeg_decode_mcu+0x4f6>
d0007c3a:	e8df f013 	tbh	[pc, r3, lsl #1]
d0007c3e:	02b9      	.short	0x02b9
d0007c40:	025702cc 	.word	0x025702cc
d0007c44:	01ac0204 	.word	0x01ac0204
d0007c48:	f7fe fcb4 	bl	d00065b4 <getChar>
d0007c4c:	2800      	cmp	r0, #0
d0007c4e:	f43f addb 	beq.w	d0007808 <pjpeg_decode_mcu+0x684>
d0007c52:	4a34      	ldr	r2, [pc, #208]	; (d0007d24 <pjpeg_decode_mcu+0xba0>)
d0007c54:	4934      	ldr	r1, [pc, #208]	; (d0007d28 <pjpeg_decode_mcu+0xba4>)
d0007c56:	7813      	ldrb	r3, [r2, #0]
d0007c58:	f891 e000 	ldrb.w	lr, [r1]
d0007c5c:	f103 3cff 	add.w	ip, r3, #4294967295	; 0xffffffff
d0007c60:	3b02      	subs	r3, #2
d0007c62:	f10e 0e02 	add.w	lr, lr, #2
d0007c66:	b2db      	uxtb	r3, r3
d0007c68:	fa5f fc8c 	uxtb.w	ip, ip
d0007c6c:	f881 e000 	strb.w	lr, [r1]
d0007c70:	7013      	strb	r3, [r2, #0]
d0007c72:	f805 000c 	strb.w	r0, [r5, ip]
d0007c76:	f805 8003 	strb.w	r8, [r5, r3]
d0007c7a:	e5c5      	b.n	d0007808 <pjpeg_decode_mcu+0x684>
d0007c7c:	f7fe fc9a 	bl	d00065b4 <getChar>
d0007c80:	2800      	cmp	r0, #0
d0007c82:	f43f add1 	beq.w	d0007828 <pjpeg_decode_mcu+0x6a4>
d0007c86:	4b27      	ldr	r3, [pc, #156]	; (d0007d24 <pjpeg_decode_mcu+0xba0>)
d0007c88:	4927      	ldr	r1, [pc, #156]	; (d0007d28 <pjpeg_decode_mcu+0xba4>)
d0007c8a:	781b      	ldrb	r3, [r3, #0]
d0007c8c:	460f      	mov	r7, r1
d0007c8e:	7809      	ldrb	r1, [r1, #0]
d0007c90:	1e5a      	subs	r2, r3, #1
d0007c92:	3b02      	subs	r3, #2
d0007c94:	3102      	adds	r1, #2
d0007c96:	b2d2      	uxtb	r2, r2
d0007c98:	b2db      	uxtb	r3, r3
d0007c9a:	7039      	strb	r1, [r7, #0]
d0007c9c:	54a8      	strb	r0, [r5, r2]
d0007c9e:	4a21      	ldr	r2, [pc, #132]	; (d0007d24 <pjpeg_decode_mcu+0xba0>)
d0007ca0:	f805 9003 	strb.w	r9, [r5, r3]
d0007ca4:	7013      	strb	r3, [r2, #0]
d0007ca6:	e5bf      	b.n	d0007828 <pjpeg_decode_mcu+0x6a4>
d0007ca8:	46d0      	mov	r8, sl
d0007caa:	46b2      	mov	sl, r6
d0007cac:	9e07      	ldr	r6, [sp, #28]
d0007cae:	eb06 030a 	add.w	r3, r6, sl
d0007cb2:	f816 201a 	ldrb.w	r2, [r6, sl, lsl #1]
d0007cb6:	f893 3040 	ldrb.w	r3, [r3, #64]	; 0x40
d0007cba:	449c      	add	ip, r3
d0007cbc:	9b08      	ldr	r3, [sp, #32]
d0007cbe:	ebac 0c02 	sub.w	ip, ip, r2
d0007cc2:	f00c 0cff 	and.w	ip, ip, #255	; 0xff
d0007cc6:	f813 900c 	ldrb.w	r9, [r3, ip]
d0007cca:	f019 070f 	ands.w	r7, r9, #15
d0007cce:	f000 80cc 	beq.w	d0007e6a <pjpeg_decode_mcu+0xce6>
d0007cd2:	4638      	mov	r0, r7
d0007cd4:	f7ff f91a 	bl	d0006f0c <getBits.constprop.2>
d0007cd8:	ea5f 1119 	movs.w	r1, r9, lsr #4
d0007cdc:	d12e      	bne.n	d0007d3c <pjpeg_decode_mcu+0xbb8>
d0007cde:	4b13      	ldr	r3, [pc, #76]	; (d0007d2c <pjpeg_decode_mcu+0xba8>)
d0007ce0:	3f01      	subs	r7, #1
d0007ce2:	4a13      	ldr	r2, [pc, #76]	; (d0007d30 <pjpeg_decode_mcu+0xbac>)
d0007ce4:	b2ff      	uxtb	r7, r7
d0007ce6:	f832 2017 	ldrh.w	r2, [r2, r7, lsl #1]
d0007cea:	4282      	cmp	r2, r0
d0007cec:	d904      	bls.n	d0007cf8 <pjpeg_decode_mcu+0xb74>
d0007cee:	4a11      	ldr	r2, [pc, #68]	; (d0007d34 <pjpeg_decode_mcu+0xbb0>)
d0007cf0:	f832 2017 	ldrh.w	r2, [r2, r7, lsl #1]
d0007cf4:	4410      	add	r0, r2
d0007cf6:	b280      	uxth	r0, r0
d0007cf8:	9a04      	ldr	r2, [sp, #16]
d0007cfa:	571b      	ldrsb	r3, [r3, r4]
d0007cfc:	f832 2014 	ldrh.w	r2, [r2, r4, lsl #1]
d0007d00:	fb12 f000 	smulbb	r0, r2, r0
d0007d04:	f82b 0013 	strh.w	r0, [fp, r3, lsl #1]
d0007d08:	3401      	adds	r4, #1
d0007d0a:	b2e4      	uxtb	r4, r4
d0007d0c:	2c3f      	cmp	r4, #63	; 0x3f
d0007d0e:	f63f ada6 	bhi.w	d000785e <pjpeg_decode_mcu+0x6da>
d0007d12:	4b09      	ldr	r3, [pc, #36]	; (d0007d38 <pjpeg_decode_mcu+0xbb4>)
d0007d14:	881a      	ldrh	r2, [r3, #0]
d0007d16:	f898 3000 	ldrb.w	r3, [r8]
d0007d1a:	e53b      	b.n	d0007794 <pjpeg_decode_mcu+0x610>
d0007d1c:	d000e944 	.word	0xd000e944
d0007d20:	d000f25e 	.word	0xd000f25e
d0007d24:	d000ee39 	.word	0xd000ee39
d0007d28:	d000ee38 	.word	0xd000ee38
d0007d2c:	d000e008 	.word	0xd000e008
d0007d30:	d000dfa8 	.word	0xd000dfa8
d0007d34:	d000dfc8 	.word	0xd000dfc8
d0007d38:	d000e930 	.word	0xd000e930
d0007d3c:	eb01 0904 	add.w	r9, r1, r4
d0007d40:	f1b9 0f3f 	cmp.w	r9, #63	; 0x3f
d0007d44:	f300 8211 	bgt.w	d000816a <pjpeg_decode_mcu+0xfe6>
d0007d48:	4bc4      	ldr	r3, [pc, #784]	; (d000805c <pjpeg_decode_mcu+0xed8>)
d0007d4a:	f04f 0c00 	mov.w	ip, #0
d0007d4e:	f104 0e01 	add.w	lr, r4, #1
d0007d52:	2901      	cmp	r1, #1
d0007d54:	f913 a004 	ldrsb.w	sl, [r3, r4]
d0007d58:	b28a      	uxth	r2, r1
d0007d5a:	fa5f fe8e 	uxtb.w	lr, lr
d0007d5e:	f82b c01a 	strh.w	ip, [fp, sl, lsl #1]
d0007d62:	d07f      	beq.n	d0007e64 <pjpeg_decode_mcu+0xce0>
d0007d64:	f913 e00e 	ldrsb.w	lr, [r3, lr]
d0007d68:	1ca1      	adds	r1, r4, #2
d0007d6a:	2a02      	cmp	r2, #2
d0007d6c:	b2c9      	uxtb	r1, r1
d0007d6e:	f82b c01e 	strh.w	ip, [fp, lr, lsl #1]
d0007d72:	d077      	beq.n	d0007e64 <pjpeg_decode_mcu+0xce0>
d0007d74:	f913 e001 	ldrsb.w	lr, [r3, r1]
d0007d78:	2a03      	cmp	r2, #3
d0007d7a:	f104 0103 	add.w	r1, r4, #3
d0007d7e:	f82b c01e 	strh.w	ip, [fp, lr, lsl #1]
d0007d82:	b2c9      	uxtb	r1, r1
d0007d84:	d06e      	beq.n	d0007e64 <pjpeg_decode_mcu+0xce0>
d0007d86:	f913 e001 	ldrsb.w	lr, [r3, r1]
d0007d8a:	2a04      	cmp	r2, #4
d0007d8c:	f104 0104 	add.w	r1, r4, #4
d0007d90:	f82b c01e 	strh.w	ip, [fp, lr, lsl #1]
d0007d94:	b2c9      	uxtb	r1, r1
d0007d96:	d065      	beq.n	d0007e64 <pjpeg_decode_mcu+0xce0>
d0007d98:	f913 e001 	ldrsb.w	lr, [r3, r1]
d0007d9c:	2a05      	cmp	r2, #5
d0007d9e:	f104 0105 	add.w	r1, r4, #5
d0007da2:	f82b c01e 	strh.w	ip, [fp, lr, lsl #1]
d0007da6:	b2c9      	uxtb	r1, r1
d0007da8:	d05c      	beq.n	d0007e64 <pjpeg_decode_mcu+0xce0>
d0007daa:	f913 e001 	ldrsb.w	lr, [r3, r1]
d0007dae:	2a06      	cmp	r2, #6
d0007db0:	4661      	mov	r1, ip
d0007db2:	f104 0c06 	add.w	ip, r4, #6
d0007db6:	f82b 101e 	strh.w	r1, [fp, lr, lsl #1]
d0007dba:	fa5f fc8c 	uxtb.w	ip, ip
d0007dbe:	d051      	beq.n	d0007e64 <pjpeg_decode_mcu+0xce0>
d0007dc0:	f913 e00c 	ldrsb.w	lr, [r3, ip]
d0007dc4:	2a07      	cmp	r2, #7
d0007dc6:	f104 0c07 	add.w	ip, r4, #7
d0007dca:	f82b 101e 	strh.w	r1, [fp, lr, lsl #1]
d0007dce:	fa5f fc8c 	uxtb.w	ip, ip
d0007dd2:	d047      	beq.n	d0007e64 <pjpeg_decode_mcu+0xce0>
d0007dd4:	f913 e00c 	ldrsb.w	lr, [r3, ip]
d0007dd8:	2a08      	cmp	r2, #8
d0007dda:	f104 0c08 	add.w	ip, r4, #8
d0007dde:	f82b 101e 	strh.w	r1, [fp, lr, lsl #1]
d0007de2:	fa5f fc8c 	uxtb.w	ip, ip
d0007de6:	d03d      	beq.n	d0007e64 <pjpeg_decode_mcu+0xce0>
d0007de8:	f913 e00c 	ldrsb.w	lr, [r3, ip]
d0007dec:	2a09      	cmp	r2, #9
d0007dee:	f104 0c09 	add.w	ip, r4, #9
d0007df2:	f82b 101e 	strh.w	r1, [fp, lr, lsl #1]
d0007df6:	fa5f fc8c 	uxtb.w	ip, ip
d0007dfa:	d033      	beq.n	d0007e64 <pjpeg_decode_mcu+0xce0>
d0007dfc:	f913 e00c 	ldrsb.w	lr, [r3, ip]
d0007e00:	2a0a      	cmp	r2, #10
d0007e02:	f104 0c0a 	add.w	ip, r4, #10
d0007e06:	f82b 101e 	strh.w	r1, [fp, lr, lsl #1]
d0007e0a:	fa5f fc8c 	uxtb.w	ip, ip
d0007e0e:	d029      	beq.n	d0007e64 <pjpeg_decode_mcu+0xce0>
d0007e10:	f913 e00c 	ldrsb.w	lr, [r3, ip]
d0007e14:	2a0b      	cmp	r2, #11
d0007e16:	f104 0c0b 	add.w	ip, r4, #11
d0007e1a:	f82b 101e 	strh.w	r1, [fp, lr, lsl #1]
d0007e1e:	fa5f fc8c 	uxtb.w	ip, ip
d0007e22:	d01f      	beq.n	d0007e64 <pjpeg_decode_mcu+0xce0>
d0007e24:	f913 e00c 	ldrsb.w	lr, [r3, ip]
d0007e28:	2a0c      	cmp	r2, #12
d0007e2a:	f104 0c0c 	add.w	ip, r4, #12
d0007e2e:	f82b 101e 	strh.w	r1, [fp, lr, lsl #1]
d0007e32:	fa5f fc8c 	uxtb.w	ip, ip
d0007e36:	d015      	beq.n	d0007e64 <pjpeg_decode_mcu+0xce0>
d0007e38:	3a0d      	subs	r2, #13
d0007e3a:	f913 e00c 	ldrsb.w	lr, [r3, ip]
d0007e3e:	f104 0c0d 	add.w	ip, r4, #13
d0007e42:	b292      	uxth	r2, r2
d0007e44:	f82b 101e 	strh.w	r1, [fp, lr, lsl #1]
d0007e48:	fa5f fc8c 	uxtb.w	ip, ip
d0007e4c:	b152      	cbz	r2, d0007e64 <pjpeg_decode_mcu+0xce0>
d0007e4e:	340e      	adds	r4, #14
d0007e50:	f913 c00c 	ldrsb.w	ip, [r3, ip]
d0007e54:	2a01      	cmp	r2, #1
d0007e56:	b2e4      	uxtb	r4, r4
d0007e58:	f82b 101c 	strh.w	r1, [fp, ip, lsl #1]
d0007e5c:	d002      	beq.n	d0007e64 <pjpeg_decode_mcu+0xce0>
d0007e5e:	571a      	ldrsb	r2, [r3, r4]
d0007e60:	f82b 1012 	strh.w	r1, [fp, r2, lsl #1]
d0007e64:	fa5f f489 	uxtb.w	r4, r9
d0007e68:	e73a      	b.n	d0007ce0 <pjpeg_decode_mcu+0xb5c>
d0007e6a:	ea4f 1119 	mov.w	r1, r9, lsr #4
d0007e6e:	290f      	cmp	r1, #15
d0007e70:	f47f ace4 	bne.w	d000783c <pjpeg_decode_mcu+0x6b8>
d0007e74:	2c30      	cmp	r4, #48	; 0x30
d0007e76:	f200 8178 	bhi.w	d000816a <pjpeg_decode_mcu+0xfe6>
d0007e7a:	4b78      	ldr	r3, [pc, #480]	; (d000805c <pjpeg_decode_mcu+0xed8>)
d0007e7c:	f104 0e01 	add.w	lr, r4, #1
d0007e80:	f104 0c02 	add.w	ip, r4, #2
d0007e84:	1ce1      	adds	r1, r4, #3
d0007e86:	571a      	ldrsb	r2, [r3, r4]
d0007e88:	fa5f fe8e 	uxtb.w	lr, lr
d0007e8c:	fa5f fc8c 	uxtb.w	ip, ip
d0007e90:	1d20      	adds	r0, r4, #4
d0007e92:	b2c9      	uxtb	r1, r1
d0007e94:	f82b 7012 	strh.w	r7, [fp, r2, lsl #1]
d0007e98:	f913 900e 	ldrsb.w	r9, [r3, lr]
d0007e9c:	1da2      	adds	r2, r4, #6
d0007e9e:	f913 e00c 	ldrsb.w	lr, [r3, ip]
d0007ea2:	b2c0      	uxtb	r0, r0
d0007ea4:	f913 c001 	ldrsb.w	ip, [r3, r1]
d0007ea8:	1d61      	adds	r1, r4, #5
d0007eaa:	b2d2      	uxtb	r2, r2
d0007eac:	f82b 7019 	strh.w	r7, [fp, r9, lsl #1]
d0007eb0:	b2c9      	uxtb	r1, r1
d0007eb2:	f82b 701e 	strh.w	r7, [fp, lr, lsl #1]
d0007eb6:	f913 e002 	ldrsb.w	lr, [r3, r2]
d0007eba:	f104 0208 	add.w	r2, r4, #8
d0007ebe:	f913 9001 	ldrsb.w	r9, [r3, r1]
d0007ec2:	1de1      	adds	r1, r4, #7
d0007ec4:	5618      	ldrsb	r0, [r3, r0]
d0007ec6:	b2d2      	uxtb	r2, r2
d0007ec8:	b2c9      	uxtb	r1, r1
d0007eca:	f82b 701c 	strh.w	r7, [fp, ip, lsl #1]
d0007ece:	f82b 7010 	strh.w	r7, [fp, r0, lsl #1]
d0007ed2:	f913 c001 	ldrsb.w	ip, [r3, r1]
d0007ed6:	f104 0109 	add.w	r1, r4, #9
d0007eda:	5698      	ldrsb	r0, [r3, r2]
d0007edc:	f104 020a 	add.w	r2, r4, #10
d0007ee0:	b2c9      	uxtb	r1, r1
d0007ee2:	f82b 7019 	strh.w	r7, [fp, r9, lsl #1]
d0007ee6:	b2d2      	uxtb	r2, r2
d0007ee8:	f82b 701e 	strh.w	r7, [fp, lr, lsl #1]
d0007eec:	f913 9001 	ldrsb.w	r9, [r3, r1]
d0007ef0:	f104 010b 	add.w	r1, r4, #11
d0007ef4:	f913 e002 	ldrsb.w	lr, [r3, r2]
d0007ef8:	f104 020c 	add.w	r2, r4, #12
d0007efc:	b2c9      	uxtb	r1, r1
d0007efe:	f82b 701c 	strh.w	r7, [fp, ip, lsl #1]
d0007f02:	b2d2      	uxtb	r2, r2
d0007f04:	f82b 7010 	strh.w	r7, [fp, r0, lsl #1]
d0007f08:	f913 c001 	ldrsb.w	ip, [r3, r1]
d0007f0c:	f104 010d 	add.w	r1, r4, #13
d0007f10:	5698      	ldrsb	r0, [r3, r2]
d0007f12:	f104 020e 	add.w	r2, r4, #14
d0007f16:	340f      	adds	r4, #15
d0007f18:	b2c9      	uxtb	r1, r1
d0007f1a:	b2d2      	uxtb	r2, r2
d0007f1c:	f82b 7019 	strh.w	r7, [fp, r9, lsl #1]
d0007f20:	b2e4      	uxtb	r4, r4
d0007f22:	5659      	ldrsb	r1, [r3, r1]
d0007f24:	569a      	ldrsb	r2, [r3, r2]
d0007f26:	571b      	ldrsb	r3, [r3, r4]
d0007f28:	f82b 701e 	strh.w	r7, [fp, lr, lsl #1]
d0007f2c:	f82b 701c 	strh.w	r7, [fp, ip, lsl #1]
d0007f30:	f82b 7010 	strh.w	r7, [fp, r0, lsl #1]
d0007f34:	f82b 7011 	strh.w	r7, [fp, r1, lsl #1]
d0007f38:	f82b 7012 	strh.w	r7, [fp, r2, lsl #1]
d0007f3c:	f82b 7013 	strh.w	r7, [fp, r3, lsl #1]
d0007f40:	e6e2      	b.n	d0007d08 <pjpeg_decode_mcu+0xb84>
d0007f42:	4637      	mov	r7, r6
d0007f44:	9e07      	ldr	r6, [sp, #28]
d0007f46:	19f5      	adds	r5, r6, r7
d0007f48:	f816 0017 	ldrb.w	r0, [r6, r7, lsl #1]
d0007f4c:	f895 1040 	ldrb.w	r1, [r5, #64]	; 0x40
d0007f50:	448c      	add	ip, r1
d0007f52:	9906      	ldr	r1, [sp, #24]
d0007f54:	ebac 0c00 	sub.w	ip, ip, r0
d0007f58:	f00c 0cff 	and.w	ip, ip, #255	; 0xff
d0007f5c:	f811 500c 	ldrb.w	r5, [r1, ip]
d0007f60:	f015 000f 	ands.w	r0, r5, #15
d0007f64:	d005      	beq.n	d0007f72 <pjpeg_decode_mcu+0xdee>
d0007f66:	f7fe ffd1 	bl	d0006f0c <getBits.constprop.2>
d0007f6a:	4b3d      	ldr	r3, [pc, #244]	; (d0008060 <pjpeg_decode_mcu+0xedc>)
d0007f6c:	881a      	ldrh	r2, [r3, #0]
d0007f6e:	9b02      	ldr	r3, [sp, #8]
d0007f70:	781b      	ldrb	r3, [r3, #0]
d0007f72:	3d01      	subs	r5, #1
d0007f74:	b2ed      	uxtb	r5, r5
d0007f76:	2d0e      	cmp	r5, #14
d0007f78:	f63f a9fd 	bhi.w	d0007376 <pjpeg_decode_mcu+0x1f2>
d0007f7c:	4939      	ldr	r1, [pc, #228]	; (d0008064 <pjpeg_decode_mcu+0xee0>)
d0007f7e:	f831 1015 	ldrh.w	r1, [r1, r5, lsl #1]
d0007f82:	4281      	cmp	r1, r0
d0007f84:	f67f a9f7 	bls.w	d0007376 <pjpeg_decode_mcu+0x1f2>
d0007f88:	4937      	ldr	r1, [pc, #220]	; (d0008068 <pjpeg_decode_mcu+0xee4>)
d0007f8a:	f831 1015 	ldrh.w	r1, [r1, r5, lsl #1]
d0007f8e:	4408      	add	r0, r1
d0007f90:	b280      	uxth	r0, r0
d0007f92:	f7ff b9f0 	b.w	d0007376 <pjpeg_decode_mcu+0x1f2>
d0007f96:	9b01      	ldr	r3, [sp, #4]
d0007f98:	2b05      	cmp	r3, #5
d0007f9a:	f63f ab6e 	bhi.w	d000767a <pjpeg_decode_mcu+0x4f6>
d0007f9e:	e8df f013 	tbh	[pc, r3, lsl #1]
d0007fa2:	003f      	.short	0x003f
d0007fa4:	0019002c 	.word	0x0019002c
d0007fa8:	03100006 	.word	0x03100006
d0007fac:	02fe      	.short	0x02fe
d0007fae:	492f      	ldr	r1, [pc, #188]	; (d000806c <pjpeg_decode_mcu+0xee8>)
d0007fb0:	4d2f      	ldr	r5, [pc, #188]	; (d0008070 <pjpeg_decode_mcu+0xeec>)
d0007fb2:	f101 0380 	add.w	r3, r1, #128	; 0x80
d0007fb6:	4c2f      	ldr	r4, [pc, #188]	; (d0008074 <pjpeg_decode_mcu+0xef0>)
d0007fb8:	482f      	ldr	r0, [pc, #188]	; (d0008078 <pjpeg_decode_mcu+0xef4>)
d0007fba:	f831 2b02 	ldrh.w	r2, [r1], #2
d0007fbe:	b2d2      	uxtb	r2, r2
d0007fc0:	4299      	cmp	r1, r3
d0007fc2:	f800 2b01 	strb.w	r2, [r0], #1
d0007fc6:	f804 2b01 	strb.w	r2, [r4], #1
d0007fca:	f805 2b01 	strb.w	r2, [r5], #1
d0007fce:	d1f4      	bne.n	d0007fba <pjpeg_decode_mcu+0xe36>
d0007fd0:	f7ff bb53 	b.w	d000767a <pjpeg_decode_mcu+0x4f6>
d0007fd4:	4925      	ldr	r1, [pc, #148]	; (d000806c <pjpeg_decode_mcu+0xee8>)
d0007fd6:	4d29      	ldr	r5, [pc, #164]	; (d000807c <pjpeg_decode_mcu+0xef8>)
d0007fd8:	f101 0380 	add.w	r3, r1, #128	; 0x80
d0007fdc:	4c28      	ldr	r4, [pc, #160]	; (d0008080 <pjpeg_decode_mcu+0xefc>)
d0007fde:	4829      	ldr	r0, [pc, #164]	; (d0008084 <pjpeg_decode_mcu+0xf00>)
d0007fe0:	f831 2b02 	ldrh.w	r2, [r1], #2
d0007fe4:	b2d2      	uxtb	r2, r2
d0007fe6:	4299      	cmp	r1, r3
d0007fe8:	f800 2b01 	strb.w	r2, [r0], #1
d0007fec:	f804 2b01 	strb.w	r2, [r4], #1
d0007ff0:	f805 2b01 	strb.w	r2, [r5], #1
d0007ff4:	d1f4      	bne.n	d0007fe0 <pjpeg_decode_mcu+0xe5c>
d0007ff6:	f7ff bb40 	b.w	d000767a <pjpeg_decode_mcu+0x4f6>
d0007ffa:	491c      	ldr	r1, [pc, #112]	; (d000806c <pjpeg_decode_mcu+0xee8>)
d0007ffc:	4d22      	ldr	r5, [pc, #136]	; (d0008088 <pjpeg_decode_mcu+0xf04>)
d0007ffe:	f101 0380 	add.w	r3, r1, #128	; 0x80
d0008002:	4c22      	ldr	r4, [pc, #136]	; (d000808c <pjpeg_decode_mcu+0xf08>)
d0008004:	4822      	ldr	r0, [pc, #136]	; (d0008090 <pjpeg_decode_mcu+0xf0c>)
d0008006:	f831 2b02 	ldrh.w	r2, [r1], #2
d000800a:	b2d2      	uxtb	r2, r2
d000800c:	4299      	cmp	r1, r3
d000800e:	f800 2b01 	strb.w	r2, [r0], #1
d0008012:	f804 2b01 	strb.w	r2, [r4], #1
d0008016:	f805 2b01 	strb.w	r2, [r5], #1
d000801a:	d1f4      	bne.n	d0008006 <pjpeg_decode_mcu+0xe82>
d000801c:	f7ff bb2d 	b.w	d000767a <pjpeg_decode_mcu+0x4f6>
d0008020:	4912      	ldr	r1, [pc, #72]	; (d000806c <pjpeg_decode_mcu+0xee8>)
d0008022:	4d1c      	ldr	r5, [pc, #112]	; (d0008094 <pjpeg_decode_mcu+0xf10>)
d0008024:	f101 0380 	add.w	r3, r1, #128	; 0x80
d0008028:	4c1b      	ldr	r4, [pc, #108]	; (d0008098 <pjpeg_decode_mcu+0xf14>)
d000802a:	481c      	ldr	r0, [pc, #112]	; (d000809c <pjpeg_decode_mcu+0xf18>)
d000802c:	f831 2b02 	ldrh.w	r2, [r1], #2
d0008030:	b2d2      	uxtb	r2, r2
d0008032:	4299      	cmp	r1, r3
d0008034:	f800 2b01 	strb.w	r2, [r0], #1
d0008038:	f804 2b01 	strb.w	r2, [r4], #1
d000803c:	f805 2b01 	strb.w	r2, [r5], #1
d0008040:	d1f4      	bne.n	d000802c <pjpeg_decode_mcu+0xea8>
d0008042:	f7ff bb1a 	b.w	d000767a <pjpeg_decode_mcu+0x4f6>
d0008046:	9b01      	ldr	r3, [sp, #4]
d0008048:	2b03      	cmp	r3, #3
d000804a:	f63f ab16 	bhi.w	d000767a <pjpeg_decode_mcu+0x4f6>
d000804e:	e8df f013 	tbh	[pc, r3, lsl #1]
d0008052:	003a      	.short	0x003a
d0008054:	01300027 	.word	0x01300027
d0008058:	011c      	.short	0x011c
d000805a:	bf00      	nop
d000805c:	d000e008 	.word	0xd000e008
d0008060:	d000e930 	.word	0xd000e930
d0008064:	d000dfa8 	.word	0xd000dfa8
d0008068:	d000dfc8 	.word	0xd000dfc8
d000806c:	d000e934 	.word	0xd000e934
d0008070:	d000ef04 	.word	0xd000ef04
d0008074:	d000f004 	.word	0xd000f004
d0008078:	d000f104 	.word	0xd000f104
d000807c:	d000eec4 	.word	0xd000eec4
d0008080:	d000efc4 	.word	0xd000efc4
d0008084:	d000f0c4 	.word	0xd000f0c4
d0008088:	d000ee84 	.word	0xd000ee84
d000808c:	d000ef84 	.word	0xd000ef84
d0008090:	d000f084 	.word	0xd000f084
d0008094:	d000ee44 	.word	0xd000ee44
d0008098:	d000ef44 	.word	0xd000ef44
d000809c:	d000f044 	.word	0xd000f044
d00080a0:	49b3      	ldr	r1, [pc, #716]	; (d0008370 <pjpeg_decode_mcu+0x11ec>)
d00080a2:	4db4      	ldr	r5, [pc, #720]	; (d0008374 <pjpeg_decode_mcu+0x11f0>)
d00080a4:	f101 0380 	add.w	r3, r1, #128	; 0x80
d00080a8:	4cb3      	ldr	r4, [pc, #716]	; (d0008378 <pjpeg_decode_mcu+0x11f4>)
d00080aa:	48b4      	ldr	r0, [pc, #720]	; (d000837c <pjpeg_decode_mcu+0x11f8>)
d00080ac:	f831 2b02 	ldrh.w	r2, [r1], #2
d00080b0:	b2d2      	uxtb	r2, r2
d00080b2:	4299      	cmp	r1, r3
d00080b4:	f800 2b01 	strb.w	r2, [r0], #1
d00080b8:	f804 2b01 	strb.w	r2, [r4], #1
d00080bc:	f805 2b01 	strb.w	r2, [r5], #1
d00080c0:	d1f4      	bne.n	d00080ac <pjpeg_decode_mcu+0xf28>
d00080c2:	f7ff bada 	b.w	d000767a <pjpeg_decode_mcu+0x4f6>
d00080c6:	49aa      	ldr	r1, [pc, #680]	; (d0008370 <pjpeg_decode_mcu+0x11ec>)
d00080c8:	4dad      	ldr	r5, [pc, #692]	; (d0008380 <pjpeg_decode_mcu+0x11fc>)
d00080ca:	f101 0380 	add.w	r3, r1, #128	; 0x80
d00080ce:	4cad      	ldr	r4, [pc, #692]	; (d0008384 <pjpeg_decode_mcu+0x1200>)
d00080d0:	48ad      	ldr	r0, [pc, #692]	; (d0008388 <pjpeg_decode_mcu+0x1204>)
d00080d2:	f831 2b02 	ldrh.w	r2, [r1], #2
d00080d6:	b2d2      	uxtb	r2, r2
d00080d8:	4299      	cmp	r1, r3
d00080da:	f800 2b01 	strb.w	r2, [r0], #1
d00080de:	f804 2b01 	strb.w	r2, [r4], #1
d00080e2:	f805 2b01 	strb.w	r2, [r5], #1
d00080e6:	d1f4      	bne.n	d00080d2 <pjpeg_decode_mcu+0xf4e>
d00080e8:	f7ff bac7 	b.w	d000767a <pjpeg_decode_mcu+0x4f6>
d00080ec:	9b01      	ldr	r3, [sp, #4]
d00080ee:	2b03      	cmp	r3, #3
d00080f0:	f63f aac3 	bhi.w	d000767a <pjpeg_decode_mcu+0x4f6>
d00080f4:	e8df f013 	tbh	[pc, r3, lsl #1]
d00080f8:	00040017 	.word	0x00040017
d00080fc:	00bf00d3 	.word	0x00bf00d3
d0008100:	499b      	ldr	r1, [pc, #620]	; (d0008370 <pjpeg_decode_mcu+0x11ec>)
d0008102:	4da2      	ldr	r5, [pc, #648]	; (d000838c <pjpeg_decode_mcu+0x1208>)
d0008104:	f101 0380 	add.w	r3, r1, #128	; 0x80
d0008108:	4ca1      	ldr	r4, [pc, #644]	; (d0008390 <pjpeg_decode_mcu+0x120c>)
d000810a:	48a2      	ldr	r0, [pc, #648]	; (d0008394 <pjpeg_decode_mcu+0x1210>)
d000810c:	f831 2b02 	ldrh.w	r2, [r1], #2
d0008110:	b2d2      	uxtb	r2, r2
d0008112:	4299      	cmp	r1, r3
d0008114:	f800 2b01 	strb.w	r2, [r0], #1
d0008118:	f804 2b01 	strb.w	r2, [r4], #1
d000811c:	f805 2b01 	strb.w	r2, [r5], #1
d0008120:	d1f4      	bne.n	d000810c <pjpeg_decode_mcu+0xf88>
d0008122:	f7ff baaa 	b.w	d000767a <pjpeg_decode_mcu+0x4f6>
d0008126:	4992      	ldr	r1, [pc, #584]	; (d0008370 <pjpeg_decode_mcu+0x11ec>)
d0008128:	4d95      	ldr	r5, [pc, #596]	; (d0008380 <pjpeg_decode_mcu+0x11fc>)
d000812a:	f101 0380 	add.w	r3, r1, #128	; 0x80
d000812e:	4c95      	ldr	r4, [pc, #596]	; (d0008384 <pjpeg_decode_mcu+0x1200>)
d0008130:	4895      	ldr	r0, [pc, #596]	; (d0008388 <pjpeg_decode_mcu+0x1204>)
d0008132:	f831 2b02 	ldrh.w	r2, [r1], #2
d0008136:	b2d2      	uxtb	r2, r2
d0008138:	4299      	cmp	r1, r3
d000813a:	f800 2b01 	strb.w	r2, [r0], #1
d000813e:	f804 2b01 	strb.w	r2, [r4], #1
d0008142:	f805 2b01 	strb.w	r2, [r5], #1
d0008146:	d1f4      	bne.n	d0008132 <pjpeg_decode_mcu+0xfae>
d0008148:	f7ff ba97 	b.w	d000767a <pjpeg_decode_mcu+0x4f6>
d000814c:	f7fe fa32 	bl	d00065b4 <getChar>
d0008150:	28ff      	cmp	r0, #255	; 0xff
d0008152:	4605      	mov	r5, r0
d0008154:	d05c      	beq.n	d0008210 <pjpeg_decode_mcu+0x108c>
d0008156:	4b90      	ldr	r3, [pc, #576]	; (d0008398 <pjpeg_decode_mcu+0x1214>)
d0008158:	881a      	ldrh	r2, [r3, #0]
d000815a:	9b02      	ldr	r3, [sp, #8]
d000815c:	432a      	orrs	r2, r5
d000815e:	781b      	ldrb	r3, [r3, #0]
d0008160:	b292      	uxth	r2, r2
d0008162:	3308      	adds	r3, #8
d0008164:	b2db      	uxtb	r3, r3
d0008166:	f7ff b851 	b.w	d000720c <pjpeg_decode_mcu+0x88>
d000816a:	231c      	movs	r3, #28
d000816c:	461a      	mov	r2, r3
d000816e:	9303      	str	r3, [sp, #12]
d0008170:	4b8a      	ldr	r3, [pc, #552]	; (d000839c <pjpeg_decode_mcu+0x1218>)
d0008172:	781b      	ldrb	r3, [r3, #0]
d0008174:	2b00      	cmp	r3, #0
d0008176:	bf18      	it	ne
d0008178:	461a      	movne	r2, r3
d000817a:	9203      	str	r2, [sp, #12]
d000817c:	9803      	ldr	r0, [sp, #12]
d000817e:	b00f      	add	sp, #60	; 0x3c
d0008180:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0008184:	9a01      	ldr	r2, [sp, #4]
d0008186:	2a01      	cmp	r2, #1
d0008188:	f000 8381 	beq.w	d000888e <pjpeg_decode_mcu+0x170a>
d000818c:	2a02      	cmp	r2, #2
d000818e:	f000 834f 	beq.w	d0008830 <pjpeg_decode_mcu+0x16ac>
d0008192:	2a00      	cmp	r2, #0
d0008194:	f47f aa71 	bne.w	d000767a <pjpeg_decode_mcu+0x4f6>
d0008198:	4a7b      	ldr	r2, [pc, #492]	; (d0008388 <pjpeg_decode_mcu+0x1204>)
d000819a:	497a      	ldr	r1, [pc, #488]	; (d0008384 <pjpeg_decode_mcu+0x1200>)
d000819c:	7013      	strb	r3, [r2, #0]
d000819e:	4a78      	ldr	r2, [pc, #480]	; (d0008380 <pjpeg_decode_mcu+0x11fc>)
d00081a0:	700b      	strb	r3, [r1, #0]
d00081a2:	7013      	strb	r3, [r2, #0]
d00081a4:	f7ff ba69 	b.w	d000767a <pjpeg_decode_mcu+0x4f6>
d00081a8:	4a77      	ldr	r2, [pc, #476]	; (d0008388 <pjpeg_decode_mcu+0x1204>)
d00081aa:	7013      	strb	r3, [r2, #0]
d00081ac:	f7ff ba65 	b.w	d000767a <pjpeg_decode_mcu+0x4f6>
d00081b0:	496f      	ldr	r1, [pc, #444]	; (d0008370 <pjpeg_decode_mcu+0x11ec>)
d00081b2:	4d73      	ldr	r5, [pc, #460]	; (d0008380 <pjpeg_decode_mcu+0x11fc>)
d00081b4:	f101 0380 	add.w	r3, r1, #128	; 0x80
d00081b8:	4c72      	ldr	r4, [pc, #456]	; (d0008384 <pjpeg_decode_mcu+0x1200>)
d00081ba:	4873      	ldr	r0, [pc, #460]	; (d0008388 <pjpeg_decode_mcu+0x1204>)
d00081bc:	f831 2b02 	ldrh.w	r2, [r1], #2
d00081c0:	b2d2      	uxtb	r2, r2
d00081c2:	4299      	cmp	r1, r3
d00081c4:	f800 2b01 	strb.w	r2, [r0], #1
d00081c8:	f804 2b01 	strb.w	r2, [r4], #1
d00081cc:	f805 2b01 	strb.w	r2, [r5], #1
d00081d0:	d1f4      	bne.n	d00081bc <pjpeg_decode_mcu+0x1038>
d00081d2:	f7ff ba52 	b.w	d000767a <pjpeg_decode_mcu+0x4f6>
d00081d6:	9b01      	ldr	r3, [sp, #4]
d00081d8:	2b01      	cmp	r3, #1
d00081da:	f000 82eb 	beq.w	d00087b4 <pjpeg_decode_mcu+0x1630>
d00081de:	2b02      	cmp	r3, #2
d00081e0:	f000 82a5 	beq.w	d000872e <pjpeg_decode_mcu+0x15aa>
d00081e4:	2b00      	cmp	r3, #0
d00081e6:	f47f aa48 	bne.w	d000767a <pjpeg_decode_mcu+0x4f6>
d00081ea:	4961      	ldr	r1, [pc, #388]	; (d0008370 <pjpeg_decode_mcu+0x11ec>)
d00081ec:	4d64      	ldr	r5, [pc, #400]	; (d0008380 <pjpeg_decode_mcu+0x11fc>)
d00081ee:	f101 0380 	add.w	r3, r1, #128	; 0x80
d00081f2:	4c64      	ldr	r4, [pc, #400]	; (d0008384 <pjpeg_decode_mcu+0x1200>)
d00081f4:	4864      	ldr	r0, [pc, #400]	; (d0008388 <pjpeg_decode_mcu+0x1204>)
d00081f6:	f831 2b02 	ldrh.w	r2, [r1], #2
d00081fa:	b2d2      	uxtb	r2, r2
d00081fc:	4299      	cmp	r1, r3
d00081fe:	f800 2b01 	strb.w	r2, [r0], #1
d0008202:	f804 2b01 	strb.w	r2, [r4], #1
d0008206:	f805 2b01 	strb.w	r2, [r5], #1
d000820a:	d1f4      	bne.n	d00081f6 <pjpeg_decode_mcu+0x1072>
d000820c:	f7ff ba35 	b.w	d000767a <pjpeg_decode_mcu+0x4f6>
d0008210:	f7fe f9d0 	bl	d00065b4 <getChar>
d0008214:	2800      	cmp	r0, #0
d0008216:	d09e      	beq.n	d0008156 <pjpeg_decode_mcu+0xfd2>
d0008218:	4b61      	ldr	r3, [pc, #388]	; (d00083a0 <pjpeg_decode_mcu+0x121c>)
d000821a:	4962      	ldr	r1, [pc, #392]	; (d00083a4 <pjpeg_decode_mcu+0x1220>)
d000821c:	781b      	ldrb	r3, [r3, #0]
d000821e:	460f      	mov	r7, r1
d0008220:	f8df c184 	ldr.w	ip, [pc, #388]	; d00083a8 <pjpeg_decode_mcu+0x1224>
d0008224:	1e5a      	subs	r2, r3, #1
d0008226:	7809      	ldrb	r1, [r1, #0]
d0008228:	3b02      	subs	r3, #2
d000822a:	b2d2      	uxtb	r2, r2
d000822c:	3102      	adds	r1, #2
d000822e:	b2db      	uxtb	r3, r3
d0008230:	f80c 0002 	strb.w	r0, [ip, r2]
d0008234:	4a5a      	ldr	r2, [pc, #360]	; (d00083a0 <pjpeg_decode_mcu+0x121c>)
d0008236:	7039      	strb	r1, [r7, #0]
d0008238:	7013      	strb	r3, [r2, #0]
d000823a:	f80c 5003 	strb.w	r5, [ip, r3]
d000823e:	e78a      	b.n	d0008156 <pjpeg_decode_mcu+0xfd2>
d0008240:	9303      	str	r3, [sp, #12]
d0008242:	9803      	ldr	r0, [sp, #12]
d0008244:	b00f      	add	sp, #60	; 0x3c
d0008246:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d000824a:	4a4f      	ldr	r2, [pc, #316]	; (d0008388 <pjpeg_decode_mcu+0x1204>)
d000824c:	494d      	ldr	r1, [pc, #308]	; (d0008384 <pjpeg_decode_mcu+0x1200>)
d000824e:	f882 3040 	strb.w	r3, [r2, #64]	; 0x40
d0008252:	4a4b      	ldr	r2, [pc, #300]	; (d0008380 <pjpeg_decode_mcu+0x11fc>)
d0008254:	f881 3040 	strb.w	r3, [r1, #64]	; 0x40
d0008258:	f882 3040 	strb.w	r3, [r2, #64]	; 0x40
d000825c:	f7ff ba0d 	b.w	d000767a <pjpeg_decode_mcu+0x4f6>
d0008260:	4a49      	ldr	r2, [pc, #292]	; (d0008388 <pjpeg_decode_mcu+0x1204>)
d0008262:	4948      	ldr	r1, [pc, #288]	; (d0008384 <pjpeg_decode_mcu+0x1200>)
d0008264:	f882 3080 	strb.w	r3, [r2, #128]	; 0x80
d0008268:	4a45      	ldr	r2, [pc, #276]	; (d0008380 <pjpeg_decode_mcu+0x11fc>)
d000826a:	f881 3080 	strb.w	r3, [r1, #128]	; 0x80
d000826e:	f882 3080 	strb.w	r3, [r2, #128]	; 0x80
d0008272:	f7ff ba02 	b.w	d000767a <pjpeg_decode_mcu+0x4f6>
d0008276:	2100      	movs	r1, #0
d0008278:	4608      	mov	r0, r1
d000827a:	f7fe f865 	bl	d0006348 <upsampleCrH>
d000827e:	2140      	movs	r1, #64	; 0x40
d0008280:	2004      	movs	r0, #4
d0008282:	f7fe f861 	bl	d0006348 <upsampleCrH>
d0008286:	f7ff b9f8 	b.w	d000767a <pjpeg_decode_mcu+0x4f6>
d000828a:	2100      	movs	r1, #0
d000828c:	4608      	mov	r0, r1
d000828e:	f7fe f8f1 	bl	d0006474 <upsampleCrV>
d0008292:	2180      	movs	r1, #128	; 0x80
d0008294:	2020      	movs	r0, #32
d0008296:	f7fe f8ed 	bl	d0006474 <upsampleCrV>
d000829a:	f7ff b9ee 	b.w	d000767a <pjpeg_decode_mcu+0x4f6>
d000829e:	2100      	movs	r1, #0
d00082a0:	4608      	mov	r0, r1
d00082a2:	f7fd fe13 	bl	d0005ecc <upsampleCbH>
d00082a6:	2140      	movs	r1, #64	; 0x40
d00082a8:	2004      	movs	r0, #4
d00082aa:	f7fd fe0f 	bl	d0005ecc <upsampleCbH>
d00082ae:	f7ff b9e4 	b.w	d000767a <pjpeg_decode_mcu+0x4f6>
d00082b2:	2100      	movs	r1, #0
d00082b4:	4608      	mov	r0, r1
d00082b6:	f7fd feab 	bl	d0006010 <upsampleCbV>
d00082ba:	2180      	movs	r1, #128	; 0x80
d00082bc:	2020      	movs	r0, #32
d00082be:	f7fd fea7 	bl	d0006010 <upsampleCbV>
d00082c2:	f7ff b9da 	b.w	d000767a <pjpeg_decode_mcu+0x4f6>
d00082c6:	eb03 0443 	add.w	r4, r3, r3, lsl #1
d00082ca:	f1a3 00b3 	sub.w	r0, r3, #179	; 0xb3
d00082ce:	b21a      	sxth	r2, r3
d00082d0:	492d      	ldr	r1, [pc, #180]	; (d0008388 <pjpeg_decode_mcu+0x1204>)
d00082d2:	eb04 1404 	add.w	r4, r4, r4, lsl #4
d00082d6:	eb03 0344 	add.w	r3, r3, r4, lsl #1
d00082da:	780c      	ldrb	r4, [r1, #0]
d00082dc:	eb00 2313 	add.w	r3, r0, r3, lsr #8
d00082e0:	b29b      	uxth	r3, r3
d00082e2:	1918      	adds	r0, r3, r4
d00082e4:	b280      	uxth	r0, r0
d00082e6:	28ff      	cmp	r0, #255	; 0xff
d00082e8:	d906      	bls.n	d00082f8 <pjpeg_decode_mcu+0x1174>
d00082ea:	b204      	sxth	r4, r0
d00082ec:	2c00      	cmp	r4, #0
d00082ee:	f2c0 830a 	blt.w	d0008906 <pjpeg_decode_mcu+0x1782>
d00082f2:	2cff      	cmp	r4, #255	; 0xff
d00082f4:	f300 8364 	bgt.w	d00089c0 <pjpeg_decode_mcu+0x183c>
d00082f8:	b2c0      	uxtb	r0, r0
d00082fa:	f891 4040 	ldrb.w	r4, [r1, #64]	; 0x40
d00082fe:	7008      	strb	r0, [r1, #0]
d0008300:	4423      	add	r3, r4
d0008302:	b29b      	uxth	r3, r3
d0008304:	2bff      	cmp	r3, #255	; 0xff
d0008306:	d906      	bls.n	d0008316 <pjpeg_decode_mcu+0x1192>
d0008308:	b218      	sxth	r0, r3
d000830a:	2800      	cmp	r0, #0
d000830c:	f2c0 8310 	blt.w	d0008930 <pjpeg_decode_mcu+0x17ac>
d0008310:	28ff      	cmp	r0, #255	; 0xff
d0008312:	f300 835d 	bgt.w	d00089d0 <pjpeg_decode_mcu+0x184c>
d0008316:	b2db      	uxtb	r3, r3
d0008318:	ebc2 1402 	rsb	r4, r2, r2, lsl #4
d000831c:	f881 3040 	strb.w	r3, [r1, #64]	; 0x40
d0008320:	4818      	ldr	r0, [pc, #96]	; (d0008384 <pjpeg_decode_mcu+0x1200>)
d0008322:	eb02 0284 	add.w	r2, r2, r4, lsl #2
d0008326:	7801      	ldrb	r1, [r0, #0]
d0008328:	ebc2 0282 	rsb	r2, r2, r2, lsl #2
d000832c:	0a13      	lsrs	r3, r2, #8
d000832e:	3b5b      	subs	r3, #91	; 0x5b
d0008330:	b29b      	uxth	r3, r3
d0008332:	1aca      	subs	r2, r1, r3
d0008334:	b292      	uxth	r2, r2
d0008336:	2aff      	cmp	r2, #255	; 0xff
d0008338:	d906      	bls.n	d0008348 <pjpeg_decode_mcu+0x11c4>
d000833a:	b211      	sxth	r1, r2
d000833c:	2900      	cmp	r1, #0
d000833e:	f2c0 82f9 	blt.w	d0008934 <pjpeg_decode_mcu+0x17b0>
d0008342:	29ff      	cmp	r1, #255	; 0xff
d0008344:	f300 8346 	bgt.w	d00089d4 <pjpeg_decode_mcu+0x1850>
d0008348:	b2d1      	uxtb	r1, r2
d000834a:	f890 2040 	ldrb.w	r2, [r0, #64]	; 0x40
d000834e:	7001      	strb	r1, [r0, #0]
d0008350:	1ad3      	subs	r3, r2, r3
d0008352:	b29b      	uxth	r3, r3
d0008354:	2bff      	cmp	r3, #255	; 0xff
d0008356:	d906      	bls.n	d0008366 <pjpeg_decode_mcu+0x11e2>
d0008358:	b21a      	sxth	r2, r3
d000835a:	2a00      	cmp	r2, #0
d000835c:	f2c0 82fa 	blt.w	d0008954 <pjpeg_decode_mcu+0x17d0>
d0008360:	2aff      	cmp	r2, #255	; 0xff
d0008362:	f300 8347 	bgt.w	d00089f4 <pjpeg_decode_mcu+0x1870>
d0008366:	b2db      	uxtb	r3, r3
d0008368:	f880 3040 	strb.w	r3, [r0, #64]	; 0x40
d000836c:	f7ff b985 	b.w	d000767a <pjpeg_decode_mcu+0x4f6>
d0008370:	d000e934 	.word	0xd000e934
d0008374:	d000eec4 	.word	0xd000eec4
d0008378:	d000efc4 	.word	0xd000efc4
d000837c:	d000f0c4 	.word	0xd000f0c4
d0008380:	d000ee44 	.word	0xd000ee44
d0008384:	d000ef44 	.word	0xd000ef44
d0008388:	d000f044 	.word	0xd000f044
d000838c:	d000ee84 	.word	0xd000ee84
d0008390:	d000ef84 	.word	0xd000ef84
d0008394:	d000f084 	.word	0xd000f084
d0008398:	d000e930 	.word	0xd000e930
d000839c:	d000e933 	.word	0xd000e933
d00083a0:	d000ee39 	.word	0xd000ee39
d00083a4:	d000ee38 	.word	0xd000ee38
d00083a8:	d000ed38 	.word	0xd000ed38
d00083ac:	eb03 0183 	add.w	r1, r3, r3, lsl #2
d00083b0:	4892      	ldr	r0, [pc, #584]	; (d00085fc <pjpeg_decode_mcu+0x1478>)
d00083b2:	b21a      	sxth	r2, r3
d00083b4:	eb03 0141 	add.w	r1, r3, r1, lsl #1
d00083b8:	7804      	ldrb	r4, [r0, #0]
d00083ba:	f3c1 1157 	ubfx	r1, r1, #5, #24
d00083be:	392c      	subs	r1, #44	; 0x2c
d00083c0:	b289      	uxth	r1, r1
d00083c2:	1a64      	subs	r4, r4, r1
d00083c4:	b2a4      	uxth	r4, r4
d00083c6:	2cff      	cmp	r4, #255	; 0xff
d00083c8:	d906      	bls.n	d00083d8 <pjpeg_decode_mcu+0x1254>
d00083ca:	b225      	sxth	r5, r4
d00083cc:	2d00      	cmp	r5, #0
d00083ce:	f2c0 82b3 	blt.w	d0008938 <pjpeg_decode_mcu+0x17b4>
d00083d2:	2dff      	cmp	r5, #255	; 0xff
d00083d4:	f300 8308 	bgt.w	d00089e8 <pjpeg_decode_mcu+0x1864>
d00083d8:	b2e5      	uxtb	r5, r4
d00083da:	f890 4080 	ldrb.w	r4, [r0, #128]	; 0x80
d00083de:	7005      	strb	r5, [r0, #0]
d00083e0:	1a61      	subs	r1, r4, r1
d00083e2:	b289      	uxth	r1, r1
d00083e4:	29ff      	cmp	r1, #255	; 0xff
d00083e6:	d906      	bls.n	d00083f6 <pjpeg_decode_mcu+0x1272>
d00083e8:	b20c      	sxth	r4, r1
d00083ea:	2c00      	cmp	r4, #0
d00083ec:	f2c0 82a6 	blt.w	d000893c <pjpeg_decode_mcu+0x17b8>
d00083f0:	2cff      	cmp	r4, #255	; 0xff
d00083f2:	f300 82fb 	bgt.w	d00089ec <pjpeg_decode_mcu+0x1868>
d00083f6:	b2c9      	uxtb	r1, r1
d00083f8:	eb02 0242 	add.w	r2, r2, r2, lsl #1
d00083fc:	3be3      	subs	r3, #227	; 0xe3
d00083fe:	f880 1080 	strb.w	r1, [r0, #128]	; 0x80
d0008402:	eb02 1242 	add.w	r2, r2, r2, lsl #5
d0008406:	497e      	ldr	r1, [pc, #504]	; (d0008600 <pjpeg_decode_mcu+0x147c>)
d0008408:	f3c2 12d7 	ubfx	r2, r2, #7, #24
d000840c:	7808      	ldrb	r0, [r1, #0]
d000840e:	4413      	add	r3, r2
d0008410:	b29b      	uxth	r3, r3
d0008412:	181a      	adds	r2, r3, r0
d0008414:	b292      	uxth	r2, r2
d0008416:	2aff      	cmp	r2, #255	; 0xff
d0008418:	d906      	bls.n	d0008428 <pjpeg_decode_mcu+0x12a4>
d000841a:	b210      	sxth	r0, r2
d000841c:	2800      	cmp	r0, #0
d000841e:	f2c0 828f 	blt.w	d0008940 <pjpeg_decode_mcu+0x17bc>
d0008422:	28ff      	cmp	r0, #255	; 0xff
d0008424:	f300 82dc 	bgt.w	d00089e0 <pjpeg_decode_mcu+0x185c>
d0008428:	b2d2      	uxtb	r2, r2
d000842a:	f891 0080 	ldrb.w	r0, [r1, #128]	; 0x80
d000842e:	700a      	strb	r2, [r1, #0]
d0008430:	4403      	add	r3, r0
d0008432:	b29b      	uxth	r3, r3
d0008434:	2bff      	cmp	r3, #255	; 0xff
d0008436:	d906      	bls.n	d0008446 <pjpeg_decode_mcu+0x12c2>
d0008438:	b21a      	sxth	r2, r3
d000843a:	2a00      	cmp	r2, #0
d000843c:	f2c0 8282 	blt.w	d0008944 <pjpeg_decode_mcu+0x17c0>
d0008440:	2aff      	cmp	r2, #255	; 0xff
d0008442:	f300 82cf 	bgt.w	d00089e4 <pjpeg_decode_mcu+0x1860>
d0008446:	b2db      	uxtb	r3, r3
d0008448:	f881 3080 	strb.w	r3, [r1, #128]	; 0x80
d000844c:	f7ff b915 	b.w	d000767a <pjpeg_decode_mcu+0x4f6>
d0008450:	eb03 0443 	add.w	r4, r3, r3, lsl #1
d0008454:	f1a3 00b3 	sub.w	r0, r3, #179	; 0xb3
d0008458:	b21a      	sxth	r2, r3
d000845a:	496a      	ldr	r1, [pc, #424]	; (d0008604 <pjpeg_decode_mcu+0x1480>)
d000845c:	eb04 1404 	add.w	r4, r4, r4, lsl #4
d0008460:	eb03 0344 	add.w	r3, r3, r4, lsl #1
d0008464:	780c      	ldrb	r4, [r1, #0]
d0008466:	eb00 2313 	add.w	r3, r0, r3, lsr #8
d000846a:	b29b      	uxth	r3, r3
d000846c:	1918      	adds	r0, r3, r4
d000846e:	b280      	uxth	r0, r0
d0008470:	28ff      	cmp	r0, #255	; 0xff
d0008472:	d906      	bls.n	d0008482 <pjpeg_decode_mcu+0x12fe>
d0008474:	b204      	sxth	r4, r0
d0008476:	2c00      	cmp	r4, #0
d0008478:	f2c0 8266 	blt.w	d0008948 <pjpeg_decode_mcu+0x17c4>
d000847c:	2cff      	cmp	r4, #255	; 0xff
d000847e:	f300 82bb 	bgt.w	d00089f8 <pjpeg_decode_mcu+0x1874>
d0008482:	b2c0      	uxtb	r0, r0
d0008484:	f891 4080 	ldrb.w	r4, [r1, #128]	; 0x80
d0008488:	7008      	strb	r0, [r1, #0]
d000848a:	4423      	add	r3, r4
d000848c:	b29b      	uxth	r3, r3
d000848e:	2bff      	cmp	r3, #255	; 0xff
d0008490:	d906      	bls.n	d00084a0 <pjpeg_decode_mcu+0x131c>
d0008492:	b218      	sxth	r0, r3
d0008494:	2800      	cmp	r0, #0
d0008496:	f2c0 8259 	blt.w	d000894c <pjpeg_decode_mcu+0x17c8>
d000849a:	28ff      	cmp	r0, #255	; 0xff
d000849c:	f300 82ae 	bgt.w	d00089fc <pjpeg_decode_mcu+0x1878>
d00084a0:	b2db      	uxtb	r3, r3
d00084a2:	ebc2 1402 	rsb	r4, r2, r2, lsl #4
d00084a6:	f881 3080 	strb.w	r3, [r1, #128]	; 0x80
d00084aa:	4854      	ldr	r0, [pc, #336]	; (d00085fc <pjpeg_decode_mcu+0x1478>)
d00084ac:	eb02 0284 	add.w	r2, r2, r4, lsl #2
d00084b0:	7801      	ldrb	r1, [r0, #0]
d00084b2:	ebc2 0282 	rsb	r2, r2, r2, lsl #2
d00084b6:	0a13      	lsrs	r3, r2, #8
d00084b8:	3b5b      	subs	r3, #91	; 0x5b
d00084ba:	b29b      	uxth	r3, r3
d00084bc:	1aca      	subs	r2, r1, r3
d00084be:	b292      	uxth	r2, r2
d00084c0:	2aff      	cmp	r2, #255	; 0xff
d00084c2:	d906      	bls.n	d00084d2 <pjpeg_decode_mcu+0x134e>
d00084c4:	b211      	sxth	r1, r2
d00084c6:	2900      	cmp	r1, #0
d00084c8:	f2c0 8219 	blt.w	d00088fe <pjpeg_decode_mcu+0x177a>
d00084cc:	29ff      	cmp	r1, #255	; 0xff
d00084ce:	f300 827b 	bgt.w	d00089c8 <pjpeg_decode_mcu+0x1844>
d00084d2:	b2d1      	uxtb	r1, r2
d00084d4:	f890 2080 	ldrb.w	r2, [r0, #128]	; 0x80
d00084d8:	7001      	strb	r1, [r0, #0]
d00084da:	1ad3      	subs	r3, r2, r3
d00084dc:	b29b      	uxth	r3, r3
d00084de:	2bff      	cmp	r3, #255	; 0xff
d00084e0:	d906      	bls.n	d00084f0 <pjpeg_decode_mcu+0x136c>
d00084e2:	b21a      	sxth	r2, r3
d00084e4:	2a00      	cmp	r2, #0
d00084e6:	f2c0 820c 	blt.w	d0008902 <pjpeg_decode_mcu+0x177e>
d00084ea:	2aff      	cmp	r2, #255	; 0xff
d00084ec:	f300 826e 	bgt.w	d00089cc <pjpeg_decode_mcu+0x1848>
d00084f0:	b2db      	uxtb	r3, r3
d00084f2:	f880 3080 	strb.w	r3, [r0, #128]	; 0x80
d00084f6:	f7ff b8c0 	b.w	d000767a <pjpeg_decode_mcu+0x4f6>
d00084fa:	eb03 0183 	add.w	r1, r3, r3, lsl #2
d00084fe:	483f      	ldr	r0, [pc, #252]	; (d00085fc <pjpeg_decode_mcu+0x1478>)
d0008500:	b21a      	sxth	r2, r3
d0008502:	eb03 0141 	add.w	r1, r3, r1, lsl #1
d0008506:	7804      	ldrb	r4, [r0, #0]
d0008508:	f3c1 1157 	ubfx	r1, r1, #5, #24
d000850c:	392c      	subs	r1, #44	; 0x2c
d000850e:	b289      	uxth	r1, r1
d0008510:	1a64      	subs	r4, r4, r1
d0008512:	b2a4      	uxth	r4, r4
d0008514:	2cff      	cmp	r4, #255	; 0xff
d0008516:	d906      	bls.n	d0008526 <pjpeg_decode_mcu+0x13a2>
d0008518:	b225      	sxth	r5, r4
d000851a:	2d00      	cmp	r5, #0
d000851c:	f2c0 81f5 	blt.w	d000890a <pjpeg_decode_mcu+0x1786>
d0008520:	2dff      	cmp	r5, #255	; 0xff
d0008522:	f300 824f 	bgt.w	d00089c4 <pjpeg_decode_mcu+0x1840>
d0008526:	b2e5      	uxtb	r5, r4
d0008528:	f890 4040 	ldrb.w	r4, [r0, #64]	; 0x40
d000852c:	7005      	strb	r5, [r0, #0]
d000852e:	1a61      	subs	r1, r4, r1
d0008530:	b289      	uxth	r1, r1
d0008532:	29ff      	cmp	r1, #255	; 0xff
d0008534:	d906      	bls.n	d0008544 <pjpeg_decode_mcu+0x13c0>
d0008536:	b20c      	sxth	r4, r1
d0008538:	2c00      	cmp	r4, #0
d000853a:	f2c0 81f5 	blt.w	d0008928 <pjpeg_decode_mcu+0x17a4>
d000853e:	2cff      	cmp	r4, #255	; 0xff
d0008540:	f300 824a 	bgt.w	d00089d8 <pjpeg_decode_mcu+0x1854>
d0008544:	b2c9      	uxtb	r1, r1
d0008546:	eb02 0242 	add.w	r2, r2, r2, lsl #1
d000854a:	3be3      	subs	r3, #227	; 0xe3
d000854c:	f880 1040 	strb.w	r1, [r0, #64]	; 0x40
d0008550:	eb02 1242 	add.w	r2, r2, r2, lsl #5
d0008554:	492a      	ldr	r1, [pc, #168]	; (d0008600 <pjpeg_decode_mcu+0x147c>)
d0008556:	f3c2 12d7 	ubfx	r2, r2, #7, #24
d000855a:	7808      	ldrb	r0, [r1, #0]
d000855c:	4413      	add	r3, r2
d000855e:	b29b      	uxth	r3, r3
d0008560:	181a      	adds	r2, r3, r0
d0008562:	b292      	uxth	r2, r2
d0008564:	2aff      	cmp	r2, #255	; 0xff
d0008566:	d906      	bls.n	d0008576 <pjpeg_decode_mcu+0x13f2>
d0008568:	b210      	sxth	r0, r2
d000856a:	2800      	cmp	r0, #0
d000856c:	f2c0 81de 	blt.w	d000892c <pjpeg_decode_mcu+0x17a8>
d0008570:	28ff      	cmp	r0, #255	; 0xff
d0008572:	f300 8233 	bgt.w	d00089dc <pjpeg_decode_mcu+0x1858>
d0008576:	b2d2      	uxtb	r2, r2
d0008578:	f891 0040 	ldrb.w	r0, [r1, #64]	; 0x40
d000857c:	700a      	strb	r2, [r1, #0]
d000857e:	4403      	add	r3, r0
d0008580:	b29b      	uxth	r3, r3
d0008582:	2bff      	cmp	r3, #255	; 0xff
d0008584:	d906      	bls.n	d0008594 <pjpeg_decode_mcu+0x1410>
d0008586:	b21a      	sxth	r2, r3
d0008588:	2a00      	cmp	r2, #0
d000858a:	f2c0 81e1 	blt.w	d0008950 <pjpeg_decode_mcu+0x17cc>
d000858e:	2aff      	cmp	r2, #255	; 0xff
d0008590:	f300 822e 	bgt.w	d00089f0 <pjpeg_decode_mcu+0x186c>
d0008594:	b2db      	uxtb	r3, r3
d0008596:	f881 3040 	strb.w	r3, [r1, #64]	; 0x40
d000859a:	f7ff b86e 	b.w	d000767a <pjpeg_decode_mcu+0x4f6>
d000859e:	2100      	movs	r1, #0
d00085a0:	4608      	mov	r0, r1
d00085a2:	f7fd fddf 	bl	d0006164 <upsampleCr>
d00085a6:	2140      	movs	r1, #64	; 0x40
d00085a8:	2004      	movs	r0, #4
d00085aa:	f7fd fddb 	bl	d0006164 <upsampleCr>
d00085ae:	2180      	movs	r1, #128	; 0x80
d00085b0:	2020      	movs	r0, #32
d00085b2:	f7fd fdd7 	bl	d0006164 <upsampleCr>
d00085b6:	21c0      	movs	r1, #192	; 0xc0
d00085b8:	2024      	movs	r0, #36	; 0x24
d00085ba:	f7fd fdd3 	bl	d0006164 <upsampleCr>
d00085be:	f7ff b85c 	b.w	d000767a <pjpeg_decode_mcu+0x4f6>
d00085c2:	2100      	movs	r1, #0
d00085c4:	4608      	mov	r0, r1
d00085c6:	f7fd fb93 	bl	d0005cf0 <upsampleCb>
d00085ca:	2140      	movs	r1, #64	; 0x40
d00085cc:	2004      	movs	r0, #4
d00085ce:	f7fd fb8f 	bl	d0005cf0 <upsampleCb>
d00085d2:	2180      	movs	r1, #128	; 0x80
d00085d4:	2020      	movs	r0, #32
d00085d6:	f7fd fb8b 	bl	d0005cf0 <upsampleCb>
d00085da:	21c0      	movs	r1, #192	; 0xc0
d00085dc:	2024      	movs	r0, #36	; 0x24
d00085de:	f7fd fb87 	bl	d0005cf0 <upsampleCb>
d00085e2:	f7ff b84a 	b.w	d000767a <pjpeg_decode_mcu+0x4f6>
d00085e6:	4a07      	ldr	r2, [pc, #28]	; (d0008604 <pjpeg_decode_mcu+0x1480>)
d00085e8:	4904      	ldr	r1, [pc, #16]	; (d00085fc <pjpeg_decode_mcu+0x1478>)
d00085ea:	f882 30c0 	strb.w	r3, [r2, #192]	; 0xc0
d00085ee:	4a04      	ldr	r2, [pc, #16]	; (d0008600 <pjpeg_decode_mcu+0x147c>)
d00085f0:	f881 30c0 	strb.w	r3, [r1, #192]	; 0xc0
d00085f4:	f882 30c0 	strb.w	r3, [r2, #192]	; 0xc0
d00085f8:	f7ff b83f 	b.w	d000767a <pjpeg_decode_mcu+0x4f6>
d00085fc:	d000ef44 	.word	0xd000ef44
d0008600:	d000ee44 	.word	0xd000ee44
d0008604:	d000f044 	.word	0xd000f044
d0008608:	eb03 0183 	add.w	r1, r3, r3, lsl #2
d000860c:	48c0      	ldr	r0, [pc, #768]	; (d0008910 <pjpeg_decode_mcu+0x178c>)
d000860e:	b21a      	sxth	r2, r3
d0008610:	eb03 0141 	add.w	r1, r3, r1, lsl #1
d0008614:	7804      	ldrb	r4, [r0, #0]
d0008616:	f3c1 1157 	ubfx	r1, r1, #5, #24
d000861a:	392c      	subs	r1, #44	; 0x2c
d000861c:	b289      	uxth	r1, r1
d000861e:	1a64      	subs	r4, r4, r1
d0008620:	b2a4      	uxth	r4, r4
d0008622:	2cff      	cmp	r4, #255	; 0xff
d0008624:	d906      	bls.n	d0008634 <pjpeg_decode_mcu+0x14b0>
d0008626:	b225      	sxth	r5, r4
d0008628:	2d00      	cmp	r5, #0
d000862a:	f2c0 81a1 	blt.w	d0008970 <pjpeg_decode_mcu+0x17ec>
d000862e:	2dff      	cmp	r5, #255	; 0xff
d0008630:	f300 81f4 	bgt.w	d0008a1c <pjpeg_decode_mcu+0x1898>
d0008634:	b2e5      	uxtb	r5, r4
d0008636:	f890 4040 	ldrb.w	r4, [r0, #64]	; 0x40
d000863a:	7005      	strb	r5, [r0, #0]
d000863c:	1a64      	subs	r4, r4, r1
d000863e:	b2a4      	uxth	r4, r4
d0008640:	2cff      	cmp	r4, #255	; 0xff
d0008642:	d906      	bls.n	d0008652 <pjpeg_decode_mcu+0x14ce>
d0008644:	b225      	sxth	r5, r4
d0008646:	2d00      	cmp	r5, #0
d0008648:	f2c0 819d 	blt.w	d0008986 <pjpeg_decode_mcu+0x1802>
d000864c:	2dff      	cmp	r5, #255	; 0xff
d000864e:	f300 81db 	bgt.w	d0008a08 <pjpeg_decode_mcu+0x1884>
d0008652:	b2e5      	uxtb	r5, r4
d0008654:	f890 4080 	ldrb.w	r4, [r0, #128]	; 0x80
d0008658:	f880 5040 	strb.w	r5, [r0, #64]	; 0x40
d000865c:	1a64      	subs	r4, r4, r1
d000865e:	b2a4      	uxth	r4, r4
d0008660:	2cff      	cmp	r4, #255	; 0xff
d0008662:	d906      	bls.n	d0008672 <pjpeg_decode_mcu+0x14ee>
d0008664:	b225      	sxth	r5, r4
d0008666:	2d00      	cmp	r5, #0
d0008668:	f2c0 818f 	blt.w	d000898a <pjpeg_decode_mcu+0x1806>
d000866c:	2dff      	cmp	r5, #255	; 0xff
d000866e:	f300 81cd 	bgt.w	d0008a0c <pjpeg_decode_mcu+0x1888>
d0008672:	b2e5      	uxtb	r5, r4
d0008674:	f890 40c0 	ldrb.w	r4, [r0, #192]	; 0xc0
d0008678:	f880 5080 	strb.w	r5, [r0, #128]	; 0x80
d000867c:	1a61      	subs	r1, r4, r1
d000867e:	b289      	uxth	r1, r1
d0008680:	29ff      	cmp	r1, #255	; 0xff
d0008682:	d906      	bls.n	d0008692 <pjpeg_decode_mcu+0x150e>
d0008684:	b20c      	sxth	r4, r1
d0008686:	2c00      	cmp	r4, #0
d0008688:	f2c0 8181 	blt.w	d000898e <pjpeg_decode_mcu+0x180a>
d000868c:	2cff      	cmp	r4, #255	; 0xff
d000868e:	f300 81b7 	bgt.w	d0008a00 <pjpeg_decode_mcu+0x187c>
d0008692:	b2c9      	uxtb	r1, r1
d0008694:	eb02 0242 	add.w	r2, r2, r2, lsl #1
d0008698:	f1a3 04e3 	sub.w	r4, r3, #227	; 0xe3
d000869c:	f880 10c0 	strb.w	r1, [r0, #192]	; 0xc0
d00086a0:	eb02 1242 	add.w	r2, r2, r2, lsl #5
d00086a4:	499b      	ldr	r1, [pc, #620]	; (d0008914 <pjpeg_decode_mcu+0x1790>)
d00086a6:	f3c2 13d7 	ubfx	r3, r2, #7, #24
d00086aa:	780a      	ldrb	r2, [r1, #0]
d00086ac:	4423      	add	r3, r4
d00086ae:	b29b      	uxth	r3, r3
d00086b0:	441a      	add	r2, r3
d00086b2:	b292      	uxth	r2, r2
d00086b4:	2aff      	cmp	r2, #255	; 0xff
d00086b6:	d906      	bls.n	d00086c6 <pjpeg_decode_mcu+0x1542>
d00086b8:	b210      	sxth	r0, r2
d00086ba:	2800      	cmp	r0, #0
d00086bc:	f2c0 8169 	blt.w	d0008992 <pjpeg_decode_mcu+0x180e>
d00086c0:	28ff      	cmp	r0, #255	; 0xff
d00086c2:	f300 819f 	bgt.w	d0008a04 <pjpeg_decode_mcu+0x1880>
d00086c6:	b2d0      	uxtb	r0, r2
d00086c8:	f891 2040 	ldrb.w	r2, [r1, #64]	; 0x40
d00086cc:	7008      	strb	r0, [r1, #0]
d00086ce:	441a      	add	r2, r3
d00086d0:	b292      	uxth	r2, r2
d00086d2:	2aff      	cmp	r2, #255	; 0xff
d00086d4:	d906      	bls.n	d00086e4 <pjpeg_decode_mcu+0x1560>
d00086d6:	b210      	sxth	r0, r2
d00086d8:	2800      	cmp	r0, #0
d00086da:	f2c0 815c 	blt.w	d0008996 <pjpeg_decode_mcu+0x1812>
d00086de:	28ff      	cmp	r0, #255	; 0xff
d00086e0:	f300 81b2 	bgt.w	d0008a48 <pjpeg_decode_mcu+0x18c4>
d00086e4:	b2d0      	uxtb	r0, r2
d00086e6:	f891 2080 	ldrb.w	r2, [r1, #128]	; 0x80
d00086ea:	f881 0040 	strb.w	r0, [r1, #64]	; 0x40
d00086ee:	441a      	add	r2, r3
d00086f0:	b292      	uxth	r2, r2
d00086f2:	2aff      	cmp	r2, #255	; 0xff
d00086f4:	d906      	bls.n	d0008704 <pjpeg_decode_mcu+0x1580>
d00086f6:	b210      	sxth	r0, r2
d00086f8:	2800      	cmp	r0, #0
d00086fa:	f2c0 814e 	blt.w	d000899a <pjpeg_decode_mcu+0x1816>
d00086fe:	28ff      	cmp	r0, #255	; 0xff
d0008700:	f300 81a4 	bgt.w	d0008a4c <pjpeg_decode_mcu+0x18c8>
d0008704:	b2d2      	uxtb	r2, r2
d0008706:	f891 00c0 	ldrb.w	r0, [r1, #192]	; 0xc0
d000870a:	f881 2080 	strb.w	r2, [r1, #128]	; 0x80
d000870e:	4403      	add	r3, r0
d0008710:	b29b      	uxth	r3, r3
d0008712:	2bff      	cmp	r3, #255	; 0xff
d0008714:	d906      	bls.n	d0008724 <pjpeg_decode_mcu+0x15a0>
d0008716:	b21a      	sxth	r2, r3
d0008718:	2a00      	cmp	r2, #0
d000871a:	f2c0 8140 	blt.w	d000899e <pjpeg_decode_mcu+0x181a>
d000871e:	2aff      	cmp	r2, #255	; 0xff
d0008720:	f300 818d 	bgt.w	d0008a3e <pjpeg_decode_mcu+0x18ba>
d0008724:	b2db      	uxtb	r3, r3
d0008726:	f881 30c0 	strb.w	r3, [r1, #192]	; 0xc0
d000872a:	f7fe bfa6 	b.w	d000767a <pjpeg_decode_mcu+0x4f6>
d000872e:	497a      	ldr	r1, [pc, #488]	; (d0008918 <pjpeg_decode_mcu+0x1794>)
d0008730:	487a      	ldr	r0, [pc, #488]	; (d000891c <pjpeg_decode_mcu+0x1798>)
d0008732:	f101 0540 	add.w	r5, r1, #64	; 0x40
d0008736:	4c7a      	ldr	r4, [pc, #488]	; (d0008920 <pjpeg_decode_mcu+0x179c>)
d0008738:	e01d      	b.n	d0008776 <pjpeg_decode_mcu+0x15f2>
d000873a:	2eff      	cmp	r6, #255	; 0xff
d000873c:	dc38      	bgt.n	d00087b0 <pjpeg_decode_mcu+0x162c>
d000873e:	b2d2      	uxtb	r2, r2
d0008740:	ebc3 1603 	rsb	r6, r3, r3, lsl #4
d0008744:	f801 2c01 	strb.w	r2, [r1, #-1]
d0008748:	7842      	ldrb	r2, [r0, #1]
d000874a:	eb03 0386 	add.w	r3, r3, r6, lsl #2
d000874e:	ebc3 0383 	rsb	r3, r3, r3, lsl #2
d0008752:	0a1b      	lsrs	r3, r3, #8
d0008754:	f1c3 035b 	rsb	r3, r3, #91	; 0x5b
d0008758:	4413      	add	r3, r2
d000875a:	b29b      	uxth	r3, r3
d000875c:	2bff      	cmp	r3, #255	; 0xff
d000875e:	d904      	bls.n	d000876a <pjpeg_decode_mcu+0x15e6>
d0008760:	b21a      	sxth	r2, r3
d0008762:	2a00      	cmp	r2, #0
d0008764:	db20      	blt.n	d00087a8 <pjpeg_decode_mcu+0x1624>
d0008766:	2aff      	cmp	r2, #255	; 0xff
d0008768:	dc20      	bgt.n	d00087ac <pjpeg_decode_mcu+0x1628>
d000876a:	b2db      	uxtb	r3, r3
d000876c:	42a9      	cmp	r1, r5
d000876e:	f800 3f01 	strb.w	r3, [r0, #1]!
d0008772:	f43e af82 	beq.w	d000767a <pjpeg_decode_mcu+0x4f6>
d0008776:	f934 3b02 	ldrsh.w	r3, [r4], #2
d000877a:	f811 7b01 	ldrb.w	r7, [r1], #1
d000877e:	b2db      	uxtb	r3, r3
d0008780:	eb03 0643 	add.w	r6, r3, r3, lsl #1
d0008784:	f1a3 02b3 	sub.w	r2, r3, #179	; 0xb3
d0008788:	eb06 1606 	add.w	r6, r6, r6, lsl #4
d000878c:	eb03 0646 	add.w	r6, r3, r6, lsl #1
d0008790:	b21b      	sxth	r3, r3
d0008792:	eb02 2216 	add.w	r2, r2, r6, lsr #8
d0008796:	443a      	add	r2, r7
d0008798:	b292      	uxth	r2, r2
d000879a:	2aff      	cmp	r2, #255	; 0xff
d000879c:	d9cf      	bls.n	d000873e <pjpeg_decode_mcu+0x15ba>
d000879e:	b216      	sxth	r6, r2
d00087a0:	2e00      	cmp	r6, #0
d00087a2:	daca      	bge.n	d000873a <pjpeg_decode_mcu+0x15b6>
d00087a4:	2200      	movs	r2, #0
d00087a6:	e7cb      	b.n	d0008740 <pjpeg_decode_mcu+0x15bc>
d00087a8:	2300      	movs	r3, #0
d00087aa:	e7df      	b.n	d000876c <pjpeg_decode_mcu+0x15e8>
d00087ac:	23ff      	movs	r3, #255	; 0xff
d00087ae:	e7dd      	b.n	d000876c <pjpeg_decode_mcu+0x15e8>
d00087b0:	22ff      	movs	r2, #255	; 0xff
d00087b2:	e7c5      	b.n	d0008740 <pjpeg_decode_mcu+0x15bc>
d00087b4:	4856      	ldr	r0, [pc, #344]	; (d0008910 <pjpeg_decode_mcu+0x178c>)
d00087b6:	4c5b      	ldr	r4, [pc, #364]	; (d0008924 <pjpeg_decode_mcu+0x17a0>)
d00087b8:	f100 0640 	add.w	r6, r0, #64	; 0x40
d00087bc:	4d58      	ldr	r5, [pc, #352]	; (d0008920 <pjpeg_decode_mcu+0x179c>)
d00087be:	e01b      	b.n	d00087f8 <pjpeg_decode_mcu+0x1674>
d00087c0:	2fff      	cmp	r7, #255	; 0xff
d00087c2:	dc31      	bgt.n	d0008828 <pjpeg_decode_mcu+0x16a4>
d00087c4:	b2db      	uxtb	r3, r3
d00087c6:	eb02 0242 	add.w	r2, r2, r2, lsl #1
d00087ca:	39e3      	subs	r1, #227	; 0xe3
d00087cc:	f800 3c01 	strb.w	r3, [r0, #-1]
d00087d0:	eb02 1242 	add.w	r2, r2, r2, lsl #5
d00087d4:	7863      	ldrb	r3, [r4, #1]
d00087d6:	eb01 12d2 	add.w	r2, r1, r2, lsr #7
d00087da:	441a      	add	r2, r3
d00087dc:	b292      	uxth	r2, r2
d00087de:	2aff      	cmp	r2, #255	; 0xff
d00087e0:	d904      	bls.n	d00087ec <pjpeg_decode_mcu+0x1668>
d00087e2:	b213      	sxth	r3, r2
d00087e4:	2b00      	cmp	r3, #0
d00087e6:	db1d      	blt.n	d0008824 <pjpeg_decode_mcu+0x16a0>
d00087e8:	2bff      	cmp	r3, #255	; 0xff
d00087ea:	dc1f      	bgt.n	d000882c <pjpeg_decode_mcu+0x16a8>
d00087ec:	b2d2      	uxtb	r2, r2
d00087ee:	42b0      	cmp	r0, r6
d00087f0:	f804 2f01 	strb.w	r2, [r4, #1]!
d00087f4:	f43e af41 	beq.w	d000767a <pjpeg_decode_mcu+0x4f6>
d00087f8:	f935 1b02 	ldrsh.w	r1, [r5], #2
d00087fc:	f810 7b01 	ldrb.w	r7, [r0], #1
d0008800:	b2ca      	uxtb	r2, r1
d0008802:	eb02 0382 	add.w	r3, r2, r2, lsl #2
d0008806:	4611      	mov	r1, r2
d0008808:	eb02 0343 	add.w	r3, r2, r3, lsl #1
d000880c:	095b      	lsrs	r3, r3, #5
d000880e:	f1c3 032c 	rsb	r3, r3, #44	; 0x2c
d0008812:	443b      	add	r3, r7
d0008814:	b29b      	uxth	r3, r3
d0008816:	2bff      	cmp	r3, #255	; 0xff
d0008818:	d9d4      	bls.n	d00087c4 <pjpeg_decode_mcu+0x1640>
d000881a:	b21f      	sxth	r7, r3
d000881c:	2f00      	cmp	r7, #0
d000881e:	dacf      	bge.n	d00087c0 <pjpeg_decode_mcu+0x163c>
d0008820:	2300      	movs	r3, #0
d0008822:	e7d0      	b.n	d00087c6 <pjpeg_decode_mcu+0x1642>
d0008824:	2200      	movs	r2, #0
d0008826:	e7e2      	b.n	d00087ee <pjpeg_decode_mcu+0x166a>
d0008828:	23ff      	movs	r3, #255	; 0xff
d000882a:	e7cc      	b.n	d00087c6 <pjpeg_decode_mcu+0x1642>
d000882c:	22ff      	movs	r2, #255	; 0xff
d000882e:	e7de      	b.n	d00087ee <pjpeg_decode_mcu+0x166a>
d0008830:	4939      	ldr	r1, [pc, #228]	; (d0008918 <pjpeg_decode_mcu+0x1794>)
d0008832:	eb03 0443 	add.w	r4, r3, r3, lsl #1
d0008836:	b21a      	sxth	r2, r3
d0008838:	7808      	ldrb	r0, [r1, #0]
d000883a:	eb04 1404 	add.w	r4, r4, r4, lsl #4
d000883e:	38b3      	subs	r0, #179	; 0xb3
d0008840:	eb03 0444 	add.w	r4, r3, r4, lsl #1
d0008844:	4403      	add	r3, r0
d0008846:	eb03 2314 	add.w	r3, r3, r4, lsr #8
d000884a:	b29b      	uxth	r3, r3
d000884c:	2bff      	cmp	r3, #255	; 0xff
d000884e:	d905      	bls.n	d000885c <pjpeg_decode_mcu+0x16d8>
d0008850:	b218      	sxth	r0, r3
d0008852:	2800      	cmp	r0, #0
d0008854:	db47      	blt.n	d00088e6 <pjpeg_decode_mcu+0x1762>
d0008856:	28ff      	cmp	r0, #255	; 0xff
d0008858:	f300 8084 	bgt.w	d0008964 <pjpeg_decode_mcu+0x17e0>
d000885c:	b2db      	uxtb	r3, r3
d000885e:	482c      	ldr	r0, [pc, #176]	; (d0008910 <pjpeg_decode_mcu+0x178c>)
d0008860:	ebc2 1402 	rsb	r4, r2, r2, lsl #4
d0008864:	700b      	strb	r3, [r1, #0]
d0008866:	eb02 0284 	add.w	r2, r2, r4, lsl #2
d000886a:	7803      	ldrb	r3, [r0, #0]
d000886c:	ebc2 0282 	rsb	r2, r2, r2, lsl #2
d0008870:	335b      	adds	r3, #91	; 0x5b
d0008872:	eba3 2312 	sub.w	r3, r3, r2, lsr #8
d0008876:	b29b      	uxth	r3, r3
d0008878:	2bff      	cmp	r3, #255	; 0xff
d000887a:	d904      	bls.n	d0008886 <pjpeg_decode_mcu+0x1702>
d000887c:	b21a      	sxth	r2, r3
d000887e:	2a00      	cmp	r2, #0
d0008880:	db33      	blt.n	d00088ea <pjpeg_decode_mcu+0x1766>
d0008882:	2aff      	cmp	r2, #255	; 0xff
d0008884:	dc70      	bgt.n	d0008968 <pjpeg_decode_mcu+0x17e4>
d0008886:	b2db      	uxtb	r3, r3
d0008888:	7003      	strb	r3, [r0, #0]
d000888a:	f7fe bef6 	b.w	d000767a <pjpeg_decode_mcu+0x4f6>
d000888e:	4820      	ldr	r0, [pc, #128]	; (d0008910 <pjpeg_decode_mcu+0x178c>)
d0008890:	eb03 0483 	add.w	r4, r3, r3, lsl #2
d0008894:	b21a      	sxth	r2, r3
d0008896:	7801      	ldrb	r1, [r0, #0]
d0008898:	eb03 0444 	add.w	r4, r3, r4, lsl #1
d000889c:	312c      	adds	r1, #44	; 0x2c
d000889e:	f3c4 1457 	ubfx	r4, r4, #5, #24
d00088a2:	1b09      	subs	r1, r1, r4
d00088a4:	b289      	uxth	r1, r1
d00088a6:	29ff      	cmp	r1, #255	; 0xff
d00088a8:	d904      	bls.n	d00088b4 <pjpeg_decode_mcu+0x1730>
d00088aa:	b20c      	sxth	r4, r1
d00088ac:	2c00      	cmp	r4, #0
d00088ae:	db20      	blt.n	d00088f2 <pjpeg_decode_mcu+0x176e>
d00088b0:	2cff      	cmp	r4, #255	; 0xff
d00088b2:	dc51      	bgt.n	d0008958 <pjpeg_decode_mcu+0x17d4>
d00088b4:	b2cc      	uxtb	r4, r1
d00088b6:	4917      	ldr	r1, [pc, #92]	; (d0008914 <pjpeg_decode_mcu+0x1790>)
d00088b8:	eb02 0242 	add.w	r2, r2, r2, lsl #1
d00088bc:	7004      	strb	r4, [r0, #0]
d00088be:	7808      	ldrb	r0, [r1, #0]
d00088c0:	eb02 1242 	add.w	r2, r2, r2, lsl #5
d00088c4:	38e3      	subs	r0, #227	; 0xe3
d00088c6:	f3c2 12d7 	ubfx	r2, r2, #7, #24
d00088ca:	4403      	add	r3, r0
d00088cc:	4413      	add	r3, r2
d00088ce:	b29b      	uxth	r3, r3
d00088d0:	2bff      	cmp	r3, #255	; 0xff
d00088d2:	d904      	bls.n	d00088de <pjpeg_decode_mcu+0x175a>
d00088d4:	b21a      	sxth	r2, r3
d00088d6:	2a00      	cmp	r2, #0
d00088d8:	db0d      	blt.n	d00088f6 <pjpeg_decode_mcu+0x1772>
d00088da:	2aff      	cmp	r2, #255	; 0xff
d00088dc:	dc3e      	bgt.n	d000895c <pjpeg_decode_mcu+0x17d8>
d00088de:	b2db      	uxtb	r3, r3
d00088e0:	700b      	strb	r3, [r1, #0]
d00088e2:	f7fe beca 	b.w	d000767a <pjpeg_decode_mcu+0x4f6>
d00088e6:	2300      	movs	r3, #0
d00088e8:	e7b9      	b.n	d000885e <pjpeg_decode_mcu+0x16da>
d00088ea:	2300      	movs	r3, #0
d00088ec:	7003      	strb	r3, [r0, #0]
d00088ee:	f7fe bec4 	b.w	d000767a <pjpeg_decode_mcu+0x4f6>
d00088f2:	2400      	movs	r4, #0
d00088f4:	e7df      	b.n	d00088b6 <pjpeg_decode_mcu+0x1732>
d00088f6:	2300      	movs	r3, #0
d00088f8:	700b      	strb	r3, [r1, #0]
d00088fa:	f7fe bebe 	b.w	d000767a <pjpeg_decode_mcu+0x4f6>
d00088fe:	2100      	movs	r1, #0
d0008900:	e5e8      	b.n	d00084d4 <pjpeg_decode_mcu+0x1350>
d0008902:	2300      	movs	r3, #0
d0008904:	e5f5      	b.n	d00084f2 <pjpeg_decode_mcu+0x136e>
d0008906:	2000      	movs	r0, #0
d0008908:	e4f7      	b.n	d00082fa <pjpeg_decode_mcu+0x1176>
d000890a:	2500      	movs	r5, #0
d000890c:	e60c      	b.n	d0008528 <pjpeg_decode_mcu+0x13a4>
d000890e:	bf00      	nop
d0008910:	d000ef44 	.word	0xd000ef44
d0008914:	d000ee44 	.word	0xd000ee44
d0008918:	d000f044 	.word	0xd000f044
d000891c:	d000ef43 	.word	0xd000ef43
d0008920:	d000e934 	.word	0xd000e934
d0008924:	d000ee43 	.word	0xd000ee43
d0008928:	2100      	movs	r1, #0
d000892a:	e60c      	b.n	d0008546 <pjpeg_decode_mcu+0x13c2>
d000892c:	2200      	movs	r2, #0
d000892e:	e623      	b.n	d0008578 <pjpeg_decode_mcu+0x13f4>
d0008930:	2300      	movs	r3, #0
d0008932:	e4f1      	b.n	d0008318 <pjpeg_decode_mcu+0x1194>
d0008934:	2100      	movs	r1, #0
d0008936:	e508      	b.n	d000834a <pjpeg_decode_mcu+0x11c6>
d0008938:	2500      	movs	r5, #0
d000893a:	e54e      	b.n	d00083da <pjpeg_decode_mcu+0x1256>
d000893c:	2100      	movs	r1, #0
d000893e:	e55b      	b.n	d00083f8 <pjpeg_decode_mcu+0x1274>
d0008940:	2200      	movs	r2, #0
d0008942:	e572      	b.n	d000842a <pjpeg_decode_mcu+0x12a6>
d0008944:	2300      	movs	r3, #0
d0008946:	e57f      	b.n	d0008448 <pjpeg_decode_mcu+0x12c4>
d0008948:	2000      	movs	r0, #0
d000894a:	e59b      	b.n	d0008484 <pjpeg_decode_mcu+0x1300>
d000894c:	2300      	movs	r3, #0
d000894e:	e5a8      	b.n	d00084a2 <pjpeg_decode_mcu+0x131e>
d0008950:	2300      	movs	r3, #0
d0008952:	e620      	b.n	d0008596 <pjpeg_decode_mcu+0x1412>
d0008954:	2300      	movs	r3, #0
d0008956:	e507      	b.n	d0008368 <pjpeg_decode_mcu+0x11e4>
d0008958:	24ff      	movs	r4, #255	; 0xff
d000895a:	e7ac      	b.n	d00088b6 <pjpeg_decode_mcu+0x1732>
d000895c:	23ff      	movs	r3, #255	; 0xff
d000895e:	700b      	strb	r3, [r1, #0]
d0008960:	f7fe be8b 	b.w	d000767a <pjpeg_decode_mcu+0x4f6>
d0008964:	23ff      	movs	r3, #255	; 0xff
d0008966:	e77a      	b.n	d000885e <pjpeg_decode_mcu+0x16da>
d0008968:	23ff      	movs	r3, #255	; 0xff
d000896a:	7003      	strb	r3, [r0, #0]
d000896c:	f7fe be85 	b.w	d000767a <pjpeg_decode_mcu+0x4f6>
d0008970:	2500      	movs	r5, #0
d0008972:	e660      	b.n	d0008636 <pjpeg_decode_mcu+0x14b2>
d0008974:	2300      	movs	r3, #0
d0008976:	f7fe be7e 	b.w	d0007676 <pjpeg_decode_mcu+0x4f2>
d000897a:	2100      	movs	r1, #0
d000897c:	f7fe be5b 	b.w	d0007636 <pjpeg_decode_mcu+0x4b2>
d0008980:	2100      	movs	r1, #0
d0008982:	f7fe be68 	b.w	d0007656 <pjpeg_decode_mcu+0x4d2>
d0008986:	2500      	movs	r5, #0
d0008988:	e664      	b.n	d0008654 <pjpeg_decode_mcu+0x14d0>
d000898a:	2500      	movs	r5, #0
d000898c:	e672      	b.n	d0008674 <pjpeg_decode_mcu+0x14f0>
d000898e:	2100      	movs	r1, #0
d0008990:	e680      	b.n	d0008694 <pjpeg_decode_mcu+0x1510>
d0008992:	2000      	movs	r0, #0
d0008994:	e698      	b.n	d00086c8 <pjpeg_decode_mcu+0x1544>
d0008996:	2000      	movs	r0, #0
d0008998:	e6a5      	b.n	d00086e6 <pjpeg_decode_mcu+0x1562>
d000899a:	2200      	movs	r2, #0
d000899c:	e6b3      	b.n	d0008706 <pjpeg_decode_mcu+0x1582>
d000899e:	2300      	movs	r3, #0
d00089a0:	e6c1      	b.n	d0008726 <pjpeg_decode_mcu+0x15a2>
d00089a2:	2400      	movs	r4, #0
d00089a4:	f7fe bdf0 	b.w	d0007588 <pjpeg_decode_mcu+0x404>
d00089a8:	2400      	movs	r4, #0
d00089aa:	f7fe bdfc 	b.w	d00075a6 <pjpeg_decode_mcu+0x422>
d00089ae:	2000      	movs	r0, #0
d00089b0:	f7fe be09 	b.w	d00075c6 <pjpeg_decode_mcu+0x442>
d00089b4:	2300      	movs	r3, #0
d00089b6:	f7fe be16 	b.w	d00075e6 <pjpeg_decode_mcu+0x462>
d00089ba:	2100      	movs	r1, #0
d00089bc:	f7fe be2c 	b.w	d0007618 <pjpeg_decode_mcu+0x494>
d00089c0:	20ff      	movs	r0, #255	; 0xff
d00089c2:	e49a      	b.n	d00082fa <pjpeg_decode_mcu+0x1176>
d00089c4:	25ff      	movs	r5, #255	; 0xff
d00089c6:	e5af      	b.n	d0008528 <pjpeg_decode_mcu+0x13a4>
d00089c8:	21ff      	movs	r1, #255	; 0xff
d00089ca:	e583      	b.n	d00084d4 <pjpeg_decode_mcu+0x1350>
d00089cc:	23ff      	movs	r3, #255	; 0xff
d00089ce:	e590      	b.n	d00084f2 <pjpeg_decode_mcu+0x136e>
d00089d0:	23ff      	movs	r3, #255	; 0xff
d00089d2:	e4a1      	b.n	d0008318 <pjpeg_decode_mcu+0x1194>
d00089d4:	21ff      	movs	r1, #255	; 0xff
d00089d6:	e4b8      	b.n	d000834a <pjpeg_decode_mcu+0x11c6>
d00089d8:	21ff      	movs	r1, #255	; 0xff
d00089da:	e5b4      	b.n	d0008546 <pjpeg_decode_mcu+0x13c2>
d00089dc:	22ff      	movs	r2, #255	; 0xff
d00089de:	e5cb      	b.n	d0008578 <pjpeg_decode_mcu+0x13f4>
d00089e0:	22ff      	movs	r2, #255	; 0xff
d00089e2:	e522      	b.n	d000842a <pjpeg_decode_mcu+0x12a6>
d00089e4:	23ff      	movs	r3, #255	; 0xff
d00089e6:	e52f      	b.n	d0008448 <pjpeg_decode_mcu+0x12c4>
d00089e8:	25ff      	movs	r5, #255	; 0xff
d00089ea:	e4f6      	b.n	d00083da <pjpeg_decode_mcu+0x1256>
d00089ec:	21ff      	movs	r1, #255	; 0xff
d00089ee:	e503      	b.n	d00083f8 <pjpeg_decode_mcu+0x1274>
d00089f0:	23ff      	movs	r3, #255	; 0xff
d00089f2:	e5d0      	b.n	d0008596 <pjpeg_decode_mcu+0x1412>
d00089f4:	23ff      	movs	r3, #255	; 0xff
d00089f6:	e4b7      	b.n	d0008368 <pjpeg_decode_mcu+0x11e4>
d00089f8:	20ff      	movs	r0, #255	; 0xff
d00089fa:	e543      	b.n	d0008484 <pjpeg_decode_mcu+0x1300>
d00089fc:	23ff      	movs	r3, #255	; 0xff
d00089fe:	e550      	b.n	d00084a2 <pjpeg_decode_mcu+0x131e>
d0008a00:	21ff      	movs	r1, #255	; 0xff
d0008a02:	e647      	b.n	d0008694 <pjpeg_decode_mcu+0x1510>
d0008a04:	20ff      	movs	r0, #255	; 0xff
d0008a06:	e65f      	b.n	d00086c8 <pjpeg_decode_mcu+0x1544>
d0008a08:	25ff      	movs	r5, #255	; 0xff
d0008a0a:	e623      	b.n	d0008654 <pjpeg_decode_mcu+0x14d0>
d0008a0c:	25ff      	movs	r5, #255	; 0xff
d0008a0e:	e631      	b.n	d0008674 <pjpeg_decode_mcu+0x14f0>
d0008a10:	21ff      	movs	r1, #255	; 0xff
d0008a12:	f7fe be10 	b.w	d0007636 <pjpeg_decode_mcu+0x4b2>
d0008a16:	21ff      	movs	r1, #255	; 0xff
d0008a18:	f7fe be1d 	b.w	d0007656 <pjpeg_decode_mcu+0x4d2>
d0008a1c:	25ff      	movs	r5, #255	; 0xff
d0008a1e:	e60a      	b.n	d0008636 <pjpeg_decode_mcu+0x14b2>
d0008a20:	23ff      	movs	r3, #255	; 0xff
d0008a22:	f7fe be28 	b.w	d0007676 <pjpeg_decode_mcu+0x4f2>
d0008a26:	23ff      	movs	r3, #255	; 0xff
d0008a28:	f7fe bddd 	b.w	d00075e6 <pjpeg_decode_mcu+0x462>
d0008a2c:	21ff      	movs	r1, #255	; 0xff
d0008a2e:	f7fe bdf3 	b.w	d0007618 <pjpeg_decode_mcu+0x494>
d0008a32:	24ff      	movs	r4, #255	; 0xff
d0008a34:	f7fe bdb7 	b.w	d00075a6 <pjpeg_decode_mcu+0x422>
d0008a38:	20ff      	movs	r0, #255	; 0xff
d0008a3a:	f7fe bdc4 	b.w	d00075c6 <pjpeg_decode_mcu+0x442>
d0008a3e:	23ff      	movs	r3, #255	; 0xff
d0008a40:	e671      	b.n	d0008726 <pjpeg_decode_mcu+0x15a2>
d0008a42:	24ff      	movs	r4, #255	; 0xff
d0008a44:	f7fe bda0 	b.w	d0007588 <pjpeg_decode_mcu+0x404>
d0008a48:	20ff      	movs	r0, #255	; 0xff
d0008a4a:	e64c      	b.n	d00086e6 <pjpeg_decode_mcu+0x1562>
d0008a4c:	22ff      	movs	r2, #255	; 0xff
d0008a4e:	e65a      	b.n	d0008706 <pjpeg_decode_mcu+0x1582>

d0008a50 <pjpeg_decode_init>:
d0008a50:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0008a54:	4e9c      	ldr	r6, [pc, #624]	; (d0008cc8 <pjpeg_decode_init+0x278>)
d0008a56:	2400      	movs	r4, #0
d0008a58:	f8df b2a0 	ldr.w	fp, [pc, #672]	; d0008cfc <pjpeg_decode_init+0x2ac>
d0008a5c:	4605      	mov	r5, r0
d0008a5e:	7033      	strb	r3, [r6, #0]
d0008a60:	f04f 0c08 	mov.w	ip, #8
d0008a64:	4b99      	ldr	r3, [pc, #612]	; (d0008ccc <pjpeg_decode_init+0x27c>)
d0008a66:	b087      	sub	sp, #28
d0008a68:	f8cb 2000 	str.w	r2, [fp]
d0008a6c:	4620      	mov	r0, r4
d0008a6e:	801c      	strh	r4, [r3, #0]
d0008a70:	4b97      	ldr	r3, [pc, #604]	; (d0008cd0 <pjpeg_decode_init+0x280>)
d0008a72:	f8df e28c 	ldr.w	lr, [pc, #652]	; d0008d00 <pjpeg_decode_init+0x2b0>
d0008a76:	801c      	strh	r4, [r3, #0]
d0008a78:	4b96      	ldr	r3, [pc, #600]	; (d0008cd4 <pjpeg_decode_init+0x284>)
d0008a7a:	4f97      	ldr	r7, [pc, #604]	; (d0008cd8 <pjpeg_decode_init+0x288>)
d0008a7c:	801c      	strh	r4, [r3, #0]
d0008a7e:	4b97      	ldr	r3, [pc, #604]	; (d0008cdc <pjpeg_decode_init+0x28c>)
d0008a80:	f8df 9280 	ldr.w	r9, [pc, #640]	; d0008d04 <pjpeg_decode_init+0x2b4>
d0008a84:	701c      	strb	r4, [r3, #0]
d0008a86:	4b96      	ldr	r3, [pc, #600]	; (d0008ce0 <pjpeg_decode_init+0x290>)
d0008a88:	f8df a27c 	ldr.w	sl, [pc, #636]	; d0008d08 <pjpeg_decode_init+0x2b8>
d0008a8c:	701c      	strb	r4, [r3, #0]
d0008a8e:	4b95      	ldr	r3, [pc, #596]	; (d0008ce4 <pjpeg_decode_init+0x294>)
d0008a90:	f8df 8278 	ldr.w	r8, [pc, #632]	; d0008d0c <pjpeg_decode_init+0x2bc>
d0008a94:	701c      	strb	r4, [r3, #0]
d0008a96:	f8df b278 	ldr.w	fp, [pc, #632]	; d0008d10 <pjpeg_decode_init+0x2c0>
d0008a9a:	4b93      	ldr	r3, [pc, #588]	; (d0008ce8 <pjpeg_decode_init+0x298>)
d0008a9c:	4e93      	ldr	r6, [pc, #588]	; (d0008cec <pjpeg_decode_init+0x29c>)
d0008a9e:	602c      	str	r4, [r5, #0]
d0008aa0:	606c      	str	r4, [r5, #4]
d0008aa2:	60ac      	str	r4, [r5, #8]
d0008aa4:	60ec      	str	r4, [r5, #12]
d0008aa6:	612c      	str	r4, [r5, #16]
d0008aa8:	752c      	strb	r4, [r5, #20]
d0008aaa:	61ac      	str	r4, [r5, #24]
d0008aac:	61ec      	str	r4, [r5, #28]
d0008aae:	622c      	str	r4, [r5, #32]
d0008ab0:	626c      	str	r4, [r5, #36]	; 0x24
d0008ab2:	62ac      	str	r4, [r5, #40]	; 0x28
d0008ab4:	f88e 4000 	strb.w	r4, [lr]
d0008ab8:	701c      	strb	r4, [r3, #0]
d0008aba:	f8c9 1000 	str.w	r1, [r9]
d0008abe:	703c      	strb	r4, [r7, #0]
d0008ac0:	f88a 4000 	strb.w	r4, [sl]
d0008ac4:	f888 4000 	strb.w	r4, [r8]
d0008ac8:	f8ab 4000 	strh.w	r4, [fp]
d0008acc:	f886 c000 	strb.w	ip, [r6]
d0008ad0:	f7fd fdaa 	bl	d0006628 <getBits.constprop.1>
d0008ad4:	4620      	mov	r0, r4
d0008ad6:	f7fd fda7 	bl	d0006628 <getBits.constprop.1>
d0008ada:	783c      	ldrb	r4, [r7, #0]
d0008adc:	b11c      	cbz	r4, d0008ae6 <pjpeg_decode_init+0x96>
d0008ade:	4620      	mov	r0, r4
d0008ae0:	b007      	add	sp, #28
d0008ae2:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0008ae6:	4620      	mov	r0, r4
d0008ae8:	f7fd fd9e 	bl	d0006628 <getBits.constprop.1>
d0008aec:	4603      	mov	r3, r0
d0008aee:	4620      	mov	r0, r4
d0008af0:	461c      	mov	r4, r3
d0008af2:	f7fd fd99 	bl	d0006628 <getBits.constprop.1>
d0008af6:	fa5f f980 	uxtb.w	r9, r0
d0008afa:	b2e4      	uxtb	r4, r4
d0008afc:	2cff      	cmp	r4, #255	; 0xff
d0008afe:	d112      	bne.n	d0008b26 <pjpeg_decode_init+0xd6>
d0008b00:	f1b9 0fd8 	cmp.w	r9, #216	; 0xd8
d0008b04:	d10f      	bne.n	d0008b26 <pjpeg_decode_init+0xd6>
d0008b06:	f10d 0017 	add.w	r0, sp, #23
d0008b0a:	f7fd fe0f 	bl	d000672c <processMarkers>
d0008b0e:	4604      	mov	r4, r0
d0008b10:	bb58      	cbnz	r0, d0008b6a <pjpeg_decode_init+0x11a>
d0008b12:	f89d 3017 	ldrb.w	r3, [sp, #23]
d0008b16:	2bc2      	cmp	r3, #194	; 0xc2
d0008b18:	d04e      	beq.n	d0008bb8 <pjpeg_decode_init+0x168>
d0008b1a:	2bc9      	cmp	r3, #201	; 0xc9
d0008b1c:	d059      	beq.n	d0008bd2 <pjpeg_decode_init+0x182>
d0008b1e:	2bc0      	cmp	r3, #192	; 0xc0
d0008b20:	d04c      	beq.n	d0008bbc <pjpeg_decode_init+0x16c>
d0008b22:	2414      	movs	r4, #20
d0008b24:	e021      	b.n	d0008b6a <pjpeg_decode_init+0x11a>
d0008b26:	f640 72ff 	movw	r2, #4095	; 0xfff
d0008b2a:	9500      	str	r5, [sp, #0]
d0008b2c:	f8bb 3000 	ldrh.w	r3, [fp]
d0008b30:	464d      	mov	r5, r9
d0008b32:	4691      	mov	r9, r2
d0008b34:	7831      	ldrb	r1, [r6, #0]
d0008b36:	ea4f 2c03 	mov.w	ip, r3, lsl #8
d0008b3a:	461c      	mov	r4, r3
d0008b3c:	2907      	cmp	r1, #7
d0008b3e:	f1a1 0008 	sub.w	r0, r1, #8
d0008b42:	d922      	bls.n	d0008b8a <pjpeg_decode_init+0x13a>
d0008b44:	fa1f f38c 	uxth.w	r3, ip
d0008b48:	7030      	strb	r0, [r6, #0]
d0008b4a:	f8ab 3000 	strh.w	r3, [fp]
d0008b4e:	f109 39ff 	add.w	r9, r9, #4294967295	; 0xffffffff
d0008b52:	1221      	asrs	r1, r4, #8
d0008b54:	2dff      	cmp	r5, #255	; 0xff
d0008b56:	f3c4 2407 	ubfx	r4, r4, #8, #8
d0008b5a:	fa1f f989 	uxth.w	r9, r9
d0008b5e:	4625      	mov	r5, r4
d0008b60:	d00b      	beq.n	d0008b7a <pjpeg_decode_init+0x12a>
d0008b62:	f1b9 0f00 	cmp.w	r9, #0
d0008b66:	d1e5      	bne.n	d0008b34 <pjpeg_decode_init+0xe4>
d0008b68:	2413      	movs	r4, #19
d0008b6a:	783b      	ldrb	r3, [r7, #0]
d0008b6c:	2b00      	cmp	r3, #0
d0008b6e:	bf18      	it	ne
d0008b70:	461c      	movne	r4, r3
d0008b72:	4620      	mov	r0, r4
d0008b74:	b007      	add	sp, #28
d0008b76:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0008b7a:	29d8      	cmp	r1, #216	; 0xd8
d0008b7c:	d017      	beq.n	d0008bae <pjpeg_decode_init+0x15e>
d0008b7e:	29d9      	cmp	r1, #217	; 0xd9
d0008b80:	d0f2      	beq.n	d0008b68 <pjpeg_decode_init+0x118>
d0008b82:	f1b9 0f00 	cmp.w	r9, #0
d0008b86:	d1d5      	bne.n	d0008b34 <pjpeg_decode_init+0xe4>
d0008b88:	e7ee      	b.n	d0008b68 <pjpeg_decode_init+0x118>
d0008b8a:	fa03 f101 	lsl.w	r1, r3, r1
d0008b8e:	f8ab 1000 	strh.w	r1, [fp]
d0008b92:	f7fd fd0f 	bl	d00065b4 <getChar>
d0008b96:	f8bb 1000 	ldrh.w	r1, [fp]
d0008b9a:	7833      	ldrb	r3, [r6, #0]
d0008b9c:	4308      	orrs	r0, r1
d0008b9e:	f1c3 0108 	rsb	r1, r3, #8
d0008ba2:	b283      	uxth	r3, r0
d0008ba4:	408b      	lsls	r3, r1
d0008ba6:	b29b      	uxth	r3, r3
d0008ba8:	f8ab 3000 	strh.w	r3, [fp]
d0008bac:	e7cf      	b.n	d0008b4e <pjpeg_decode_init+0xfe>
d0008bae:	0a1b      	lsrs	r3, r3, #8
d0008bb0:	9d00      	ldr	r5, [sp, #0]
d0008bb2:	2bff      	cmp	r3, #255	; 0xff
d0008bb4:	d0a7      	beq.n	d0008b06 <pjpeg_decode_init+0xb6>
d0008bb6:	e7d7      	b.n	d0008b68 <pjpeg_decode_init+0x118>
d0008bb8:	2425      	movs	r4, #37	; 0x25
d0008bba:	e7d6      	b.n	d0008b6a <pjpeg_decode_init+0x11a>
d0008bbc:	f7fd fd82 	bl	d00066c4 <getBits.constprop.0>
d0008bc0:	4603      	mov	r3, r0
d0008bc2:	4620      	mov	r0, r4
d0008bc4:	4699      	mov	r9, r3
d0008bc6:	f7fd fd2f 	bl	d0006628 <getBits.constprop.1>
d0008bca:	2808      	cmp	r0, #8
d0008bcc:	d003      	beq.n	d0008bd6 <pjpeg_decode_init+0x186>
d0008bce:	2407      	movs	r4, #7
d0008bd0:	e7cb      	b.n	d0008b6a <pjpeg_decode_init+0x11a>
d0008bd2:	2411      	movs	r4, #17
d0008bd4:	e7c9      	b.n	d0008b6a <pjpeg_decode_init+0x11a>
d0008bd6:	9000      	str	r0, [sp, #0]
d0008bd8:	f7fd fd74 	bl	d00066c4 <getBits.constprop.0>
d0008bdc:	1e42      	subs	r2, r0, #1
d0008bde:	4b3c      	ldr	r3, [pc, #240]	; (d0008cd0 <pjpeg_decode_init+0x280>)
d0008be0:	f5b2 4f80 	cmp.w	r2, #16384	; 0x4000
d0008be4:	8018      	strh	r0, [r3, #0]
d0008be6:	9b00      	ldr	r3, [sp, #0]
d0008be8:	f080 8118 	bcs.w	d0008e1c <pjpeg_decode_init+0x3cc>
d0008bec:	f7fd fd6a 	bl	d00066c4 <getBits.constprop.0>
d0008bf0:	1e42      	subs	r2, r0, #1
d0008bf2:	4b36      	ldr	r3, [pc, #216]	; (d0008ccc <pjpeg_decode_init+0x27c>)
d0008bf4:	f5b2 4f80 	cmp.w	r2, #16384	; 0x4000
d0008bf8:	8018      	strh	r0, [r3, #0]
d0008bfa:	9b00      	ldr	r3, [sp, #0]
d0008bfc:	f080 8110 	bcs.w	d0008e20 <pjpeg_decode_init+0x3d0>
d0008c00:	4620      	mov	r0, r4
d0008c02:	9300      	str	r3, [sp, #0]
d0008c04:	f7fd fd10 	bl	d0006628 <getBits.constprop.1>
d0008c08:	9b00      	ldr	r3, [sp, #0]
d0008c0a:	b2c0      	uxtb	r0, r0
d0008c0c:	2803      	cmp	r0, #3
d0008c0e:	f88a 0000 	strb.w	r0, [sl]
d0008c12:	f200 826c 	bhi.w	d00090ee <pjpeg_decode_init+0x69e>
d0008c16:	2103      	movs	r1, #3
d0008c18:	fb11 3300 	smlabb	r3, r1, r0, r3
d0008c1c:	4599      	cmp	r9, r3
d0008c1e:	f040 825e 	bne.w	d00090de <pjpeg_decode_init+0x68e>
d0008c22:	2800      	cmp	r0, #0
d0008c24:	f000 829b 	beq.w	d000915e <pjpeg_decode_init+0x70e>
d0008c28:	2200      	movs	r2, #0
d0008c2a:	9500      	str	r5, [sp, #0]
d0008c2c:	f8df 90e4 	ldr.w	r9, [pc, #228]	; d0008d14 <pjpeg_decode_init+0x2c4>
d0008c30:	4614      	mov	r4, r2
d0008c32:	4615      	mov	r5, r2
d0008c34:	e004      	b.n	d0008c40 <pjpeg_decode_init+0x1f0>
d0008c36:	f89a 1000 	ldrb.w	r1, [sl]
d0008c3a:	4b2d      	ldr	r3, [pc, #180]	; (d0008cf0 <pjpeg_decode_init+0x2a0>)
d0008c3c:	42a1      	cmp	r1, r4
d0008c3e:	d921      	bls.n	d0008c84 <pjpeg_decode_init+0x234>
d0008c40:	2000      	movs	r0, #0
d0008c42:	3501      	adds	r5, #1
d0008c44:	f7fd fcf0 	bl	d0006628 <getBits.constprop.1>
d0008c48:	4b2a      	ldr	r3, [pc, #168]	; (d0008cf4 <pjpeg_decode_init+0x2a4>)
d0008c4a:	4684      	mov	ip, r0
d0008c4c:	2100      	movs	r1, #0
d0008c4e:	2004      	movs	r0, #4
d0008c50:	f803 c004 	strb.w	ip, [r3, r4]
d0008c54:	f7fe f9f4 	bl	d0007040 <getBits>
d0008c58:	4b25      	ldr	r3, [pc, #148]	; (d0008cf0 <pjpeg_decode_init+0x2a0>)
d0008c5a:	4684      	mov	ip, r0
d0008c5c:	2100      	movs	r1, #0
d0008c5e:	2004      	movs	r0, #4
d0008c60:	f803 c004 	strb.w	ip, [r3, r4]
d0008c64:	f7fe f9ec 	bl	d0007040 <getBits>
d0008c68:	4601      	mov	r1, r0
d0008c6a:	2000      	movs	r0, #0
d0008c6c:	f809 1004 	strb.w	r1, [r9, r4]
d0008c70:	f7fd fcda 	bl	d0006628 <getBits.constprop.1>
d0008c74:	b2c0      	uxtb	r0, r0
d0008c76:	4b20      	ldr	r3, [pc, #128]	; (d0008cf8 <pjpeg_decode_init+0x2a8>)
d0008c78:	2801      	cmp	r0, #1
d0008c7a:	5518      	strb	r0, [r3, r4]
d0008c7c:	b2ec      	uxtb	r4, r5
d0008c7e:	d9da      	bls.n	d0008c36 <pjpeg_decode_init+0x1e6>
d0008c80:	2424      	movs	r4, #36	; 0x24
d0008c82:	e772      	b.n	d0008b6a <pjpeg_decode_init+0x11a>
d0008c84:	783c      	ldrb	r4, [r7, #0]
d0008c86:	9d00      	ldr	r5, [sp, #0]
d0008c88:	2c00      	cmp	r4, #0
d0008c8a:	f47f af28 	bne.w	d0008ade <pjpeg_decode_init+0x8e>
d0008c8e:	2901      	cmp	r1, #1
d0008c90:	d042      	beq.n	d0008d18 <pjpeg_decode_init+0x2c8>
d0008c92:	2903      	cmp	r1, #3
d0008c94:	f040 80bc 	bne.w	d0008e10 <pjpeg_decode_init+0x3c0>
d0008c98:	7859      	ldrb	r1, [r3, #1]
d0008c9a:	2901      	cmp	r1, #1
d0008c9c:	d111      	bne.n	d0008cc2 <pjpeg_decode_init+0x272>
d0008c9e:	f899 1001 	ldrb.w	r1, [r9, #1]
d0008ca2:	2901      	cmp	r1, #1
d0008ca4:	d10d      	bne.n	d0008cc2 <pjpeg_decode_init+0x272>
d0008ca6:	7899      	ldrb	r1, [r3, #2]
d0008ca8:	2901      	cmp	r1, #1
d0008caa:	d10a      	bne.n	d0008cc2 <pjpeg_decode_init+0x272>
d0008cac:	f899 1002 	ldrb.w	r1, [r9, #2]
d0008cb0:	2901      	cmp	r1, #1
d0008cb2:	d106      	bne.n	d0008cc2 <pjpeg_decode_init+0x272>
d0008cb4:	781b      	ldrb	r3, [r3, #0]
d0008cb6:	2b01      	cmp	r3, #1
d0008cb8:	f000 80b4 	beq.w	d0008e24 <pjpeg_decode_init+0x3d4>
d0008cbc:	2b02      	cmp	r3, #2
d0008cbe:	f000 80d1 	beq.w	d0008e64 <pjpeg_decode_init+0x414>
d0008cc2:	241b      	movs	r4, #27
d0008cc4:	e70b      	b.n	d0008ade <pjpeg_decode_init+0x8e>
d0008cc6:	bf00      	nop
d0008cc8:	d000f258 	.word	0xd000f258
d0008ccc:	d000ed34 	.word	0xd000ed34
d0008cd0:	d000ed36 	.word	0xd000ed36
d0008cd4:	d000f25a 	.word	0xd000f25a
d0008cd8:	d000e933 	.word	0xd000e933
d0008cdc:	d000f260 	.word	0xd000f260
d0008ce0:	d000f261 	.word	0xd000f261
d0008ce4:	d000ee39 	.word	0xd000ee39
d0008ce8:	d000ee38 	.word	0xd000ee38
d0008cec:	d000e932 	.word	0xd000e932
d0008cf0:	d000e9bc 	.word	0xd000e9bc
d0008cf4:	d000e9c0 	.word	0xd000e9c0
d0008cf8:	d000e9c8 	.word	0xd000e9c8
d0008cfc:	d000f264 	.word	0xd000f264
d0008d00:	d000f25f 	.word	0xd000f25f
d0008d04:	d000f268 	.word	0xd000f268
d0008d08:	d000e9cf 	.word	0xd000e9cf
d0008d0c:	d000e9d0 	.word	0xd000e9d0
d0008d10:	d000e930 	.word	0xd000e930
d0008d14:	d000e9cc 	.word	0xd000e9cc
d0008d18:	781b      	ldrb	r3, [r3, #0]
d0008d1a:	2b01      	cmp	r3, #1
d0008d1c:	d1d1      	bne.n	d0008cc2 <pjpeg_decode_init+0x272>
d0008d1e:	f899 3000 	ldrb.w	r3, [r9]
d0008d22:	2b01      	cmp	r3, #1
d0008d24:	d1cd      	bne.n	d0008cc2 <pjpeg_decode_init+0x272>
d0008d26:	4a63      	ldr	r2, [pc, #396]	; (d0008eb4 <pjpeg_decode_init+0x464>)
d0008d28:	f04f 0c07 	mov.w	ip, #7
d0008d2c:	4862      	ldr	r0, [pc, #392]	; (d0008eb8 <pjpeg_decode_init+0x468>)
d0008d2e:	4611      	mov	r1, r2
d0008d30:	9202      	str	r2, [sp, #8]
d0008d32:	2208      	movs	r2, #8
d0008d34:	7003      	strb	r3, [r0, #0]
d0008d36:	700c      	strb	r4, [r1, #0]
d0008d38:	4b60      	ldr	r3, [pc, #384]	; (d0008ebc <pjpeg_decode_init+0x46c>)
d0008d3a:	4610      	mov	r0, r2
d0008d3c:	4960      	ldr	r1, [pc, #384]	; (d0008ec0 <pjpeg_decode_init+0x470>)
d0008d3e:	f8df e1a0 	ldr.w	lr, [pc, #416]	; d0008ee0 <pjpeg_decode_init+0x490>
d0008d42:	9300      	str	r3, [sp, #0]
d0008d44:	f88e 4000 	strb.w	r4, [lr]
d0008d48:	9101      	str	r1, [sp, #4]
d0008d4a:	701a      	strb	r2, [r3, #0]
d0008d4c:	700a      	strb	r2, [r1, #0]
d0008d4e:	4b5d      	ldr	r3, [pc, #372]	; (d0008ec4 <pjpeg_decode_init+0x474>)
d0008d50:	2103      	movs	r1, #3
d0008d52:	881b      	ldrh	r3, [r3, #0]
d0008d54:	3307      	adds	r3, #7
d0008d56:	4a5c      	ldr	r2, [pc, #368]	; (d0008ec8 <pjpeg_decode_init+0x478>)
d0008d58:	2808      	cmp	r0, #8
d0008d5a:	fa43 f301 	asr.w	r3, r3, r1
d0008d5e:	4c5b      	ldr	r4, [pc, #364]	; (d0008ecc <pjpeg_decode_init+0x47c>)
d0008d60:	8812      	ldrh	r2, [r2, #0]
d0008d62:	f10d 0017 	add.w	r0, sp, #23
d0008d66:	b29b      	uxth	r3, r3
d0008d68:	eb02 010c 	add.w	r1, r2, ip
d0008d6c:	bf0c      	ite	eq
d0008d6e:	2203      	moveq	r2, #3
d0008d70:	2204      	movne	r2, #4
d0008d72:	8023      	strh	r3, [r4, #0]
d0008d74:	4c56      	ldr	r4, [pc, #344]	; (d0008ed0 <pjpeg_decode_init+0x480>)
d0008d76:	fa41 f202 	asr.w	r2, r1, r2
d0008d7a:	4956      	ldr	r1, [pc, #344]	; (d0008ed4 <pjpeg_decode_init+0x484>)
d0008d7c:	8023      	strh	r3, [r4, #0]
d0008d7e:	b292      	uxth	r2, r2
d0008d80:	4b55      	ldr	r3, [pc, #340]	; (d0008ed8 <pjpeg_decode_init+0x488>)
d0008d82:	800a      	strh	r2, [r1, #0]
d0008d84:	801a      	strh	r2, [r3, #0]
d0008d86:	f7fd fcd1 	bl	d000672c <processMarkers>
d0008d8a:	4604      	mov	r4, r0
d0008d8c:	2800      	cmp	r0, #0
d0008d8e:	f47f aeec 	bne.w	d0008b6a <pjpeg_decode_init+0x11a>
d0008d92:	f89d 3017 	ldrb.w	r3, [sp, #23]
d0008d96:	2bda      	cmp	r3, #218	; 0xda
d0008d98:	d13c      	bne.n	d0008e14 <pjpeg_decode_init+0x3c4>
d0008d9a:	f7fd fc93 	bl	d00066c4 <getBits.constprop.0>
d0008d9e:	4603      	mov	r3, r0
d0008da0:	4620      	mov	r0, r4
d0008da2:	9303      	str	r3, [sp, #12]
d0008da4:	f7fd fc40 	bl	d0006628 <getBits.constprop.1>
d0008da8:	9b03      	ldr	r3, [sp, #12]
d0008daa:	b2c2      	uxtb	r2, r0
d0008dac:	2103      	movs	r1, #3
d0008dae:	3b03      	subs	r3, #3
d0008db0:	f888 2000 	strb.w	r2, [r8]
d0008db4:	fa1f fc83 	uxth.w	ip, r3
d0008db8:	eb01 0342 	add.w	r3, r1, r2, lsl #1
d0008dbc:	459c      	cmp	ip, r3
d0008dbe:	d12b      	bne.n	d0008e18 <pjpeg_decode_init+0x3c8>
d0008dc0:	3a01      	subs	r2, #1
d0008dc2:	2a02      	cmp	r2, #2
d0008dc4:	d828      	bhi.n	d0008e18 <pjpeg_decode_init+0x3c8>
d0008dc6:	9503      	str	r5, [sp, #12]
d0008dc8:	4625      	mov	r5, r4
d0008dca:	46e1      	mov	r9, ip
d0008dcc:	2000      	movs	r0, #0
d0008dce:	f7fd fc2b 	bl	d0006628 <getBits.constprop.1>
d0008dd2:	4604      	mov	r4, r0
d0008dd4:	2000      	movs	r0, #0
d0008dd6:	f7fd fc27 	bl	d0006628 <getBits.constprop.1>
d0008dda:	f1a9 0c02 	sub.w	ip, r9, #2
d0008dde:	f89a 1000 	ldrb.w	r1, [sl]
d0008de2:	b2e4      	uxtb	r4, r4
d0008de4:	b2c3      	uxtb	r3, r0
d0008de6:	fa1f fc8c 	uxth.w	ip, ip
d0008dea:	b179      	cbz	r1, d0008e0c <pjpeg_decode_init+0x3bc>
d0008dec:	4a3b      	ldr	r2, [pc, #236]	; (d0008edc <pjpeg_decode_init+0x48c>)
d0008dee:	7810      	ldrb	r0, [r2, #0]
d0008df0:	42a0      	cmp	r0, r4
d0008df2:	d079      	beq.n	d0008ee8 <pjpeg_decode_init+0x498>
d0008df4:	2901      	cmp	r1, #1
d0008df6:	d909      	bls.n	d0008e0c <pjpeg_decode_init+0x3bc>
d0008df8:	7850      	ldrb	r0, [r2, #1]
d0008dfa:	42a0      	cmp	r0, r4
d0008dfc:	f000 8171 	beq.w	d00090e2 <pjpeg_decode_init+0x692>
d0008e00:	2902      	cmp	r1, #2
d0008e02:	d003      	beq.n	d0008e0c <pjpeg_decode_init+0x3bc>
d0008e04:	7891      	ldrb	r1, [r2, #2]
d0008e06:	42a1      	cmp	r1, r4
d0008e08:	f000 816e 	beq.w	d00090e8 <pjpeg_decode_init+0x698>
d0008e0c:	240f      	movs	r4, #15
d0008e0e:	e6ac      	b.n	d0008b6a <pjpeg_decode_init+0x11a>
d0008e10:	241a      	movs	r4, #26
d0008e12:	e664      	b.n	d0008ade <pjpeg_decode_init+0x8e>
d0008e14:	2412      	movs	r4, #18
d0008e16:	e6a8      	b.n	d0008b6a <pjpeg_decode_init+0x11a>
d0008e18:	240e      	movs	r4, #14
d0008e1a:	e6a6      	b.n	d0008b6a <pjpeg_decode_init+0x11a>
d0008e1c:	461c      	mov	r4, r3
d0008e1e:	e6a4      	b.n	d0008b6a <pjpeg_decode_init+0x11a>
d0008e20:	2409      	movs	r4, #9
d0008e22:	e6a2      	b.n	d0008b6a <pjpeg_decode_init+0x11a>
d0008e24:	f899 3000 	ldrb.w	r3, [r9]
d0008e28:	2b01      	cmp	r3, #1
d0008e2a:	f000 8162 	beq.w	d00090f2 <pjpeg_decode_init+0x6a2>
d0008e2e:	2b02      	cmp	r3, #2
d0008e30:	f47f af47 	bne.w	d0008cc2 <pjpeg_decode_init+0x272>
d0008e34:	4a20      	ldr	r2, [pc, #128]	; (d0008eb8 <pjpeg_decode_init+0x468>)
d0008e36:	2004      	movs	r0, #4
d0008e38:	4b1e      	ldr	r3, [pc, #120]	; (d0008eb4 <pjpeg_decode_init+0x464>)
d0008e3a:	f04f 0c03 	mov.w	ip, #3
d0008e3e:	7010      	strb	r0, [r2, #0]
d0008e40:	2408      	movs	r4, #8
d0008e42:	4927      	ldr	r1, [pc, #156]	; (d0008ee0 <pjpeg_decode_init+0x490>)
d0008e44:	4a27      	ldr	r2, [pc, #156]	; (d0008ee4 <pjpeg_decode_init+0x494>)
d0008e46:	f883 c000 	strb.w	ip, [r3]
d0008e4a:	f04f 0c0f 	mov.w	ip, #15
d0008e4e:	600a      	str	r2, [r1, #0]
d0008e50:	9302      	str	r3, [sp, #8]
d0008e52:	2310      	movs	r3, #16
d0008e54:	4a19      	ldr	r2, [pc, #100]	; (d0008ebc <pjpeg_decode_init+0x46c>)
d0008e56:	491a      	ldr	r1, [pc, #104]	; (d0008ec0 <pjpeg_decode_init+0x470>)
d0008e58:	4618      	mov	r0, r3
d0008e5a:	9200      	str	r2, [sp, #0]
d0008e5c:	9101      	str	r1, [sp, #4]
d0008e5e:	7014      	strb	r4, [r2, #0]
d0008e60:	700b      	strb	r3, [r1, #0]
d0008e62:	e774      	b.n	d0008d4e <pjpeg_decode_init+0x2fe>
d0008e64:	f899 2000 	ldrb.w	r2, [r9]
d0008e68:	2a01      	cmp	r2, #1
d0008e6a:	f000 815f 	beq.w	d000912c <pjpeg_decode_init+0x6dc>
d0008e6e:	2a02      	cmp	r2, #2
d0008e70:	f47f af27 	bne.w	d0008cc2 <pjpeg_decode_init+0x272>
d0008e74:	4b0f      	ldr	r3, [pc, #60]	; (d0008eb4 <pjpeg_decode_init+0x464>)
d0008e76:	2004      	movs	r0, #4
d0008e78:	4a19      	ldr	r2, [pc, #100]	; (d0008ee0 <pjpeg_decode_init+0x490>)
d0008e7a:	2106      	movs	r1, #6
d0008e7c:	f240 2c01 	movw	ip, #513	; 0x201
d0008e80:	7018      	strb	r0, [r3, #0]
d0008e82:	f8df e034 	ldr.w	lr, [pc, #52]	; d0008eb8 <pjpeg_decode_init+0x468>
d0008e86:	2400      	movs	r4, #0
d0008e88:	9302      	str	r3, [sp, #8]
d0008e8a:	2310      	movs	r3, #16
d0008e8c:	6014      	str	r4, [r2, #0]
d0008e8e:	f8a2 c004 	strh.w	ip, [r2, #4]
d0008e92:	4618      	mov	r0, r3
d0008e94:	4a0a      	ldr	r2, [pc, #40]	; (d0008ec0 <pjpeg_decode_init+0x470>)
d0008e96:	f04f 0c0f 	mov.w	ip, #15
d0008e9a:	f88e 1000 	strb.w	r1, [lr]
d0008e9e:	4907      	ldr	r1, [pc, #28]	; (d0008ebc <pjpeg_decode_init+0x46c>)
d0008ea0:	9201      	str	r2, [sp, #4]
d0008ea2:	9100      	str	r1, [sp, #0]
d0008ea4:	700b      	strb	r3, [r1, #0]
d0008ea6:	7013      	strb	r3, [r2, #0]
d0008ea8:	4b06      	ldr	r3, [pc, #24]	; (d0008ec4 <pjpeg_decode_init+0x474>)
d0008eaa:	2104      	movs	r1, #4
d0008eac:	881b      	ldrh	r3, [r3, #0]
d0008eae:	330f      	adds	r3, #15
d0008eb0:	e751      	b.n	d0008d56 <pjpeg_decode_init+0x306>
d0008eb2:	bf00      	nop
d0008eb4:	d000f25e 	.word	0xd000f25e
d0008eb8:	d000f14a 	.word	0xd000f14a
d0008ebc:	d000f150 	.word	0xd000f150
d0008ec0:	d000f151 	.word	0xd000f151
d0008ec4:	d000ed34 	.word	0xd000ed34
d0008ec8:	d000ed36 	.word	0xd000ed36
d0008ecc:	d000f154 	.word	0xd000f154
d0008ed0:	d000f14e 	.word	0xd000f14e
d0008ed4:	d000f156 	.word	0xd000f156
d0008ed8:	d000f14c 	.word	0xd000f14c
d0008edc:	d000e9c0 	.word	0xd000e9c0
d0008ee0:	d000f144 	.word	0xd000f144
d0008ee4:	02010000 	.word	0x02010000
d0008ee8:	2000      	movs	r0, #0
d0008eea:	4601      	mov	r1, r0
d0008eec:	b2ec      	uxtb	r4, r5
d0008eee:	4a9e      	ldr	r2, [pc, #632]	; (d0009168 <pjpeg_decode_init+0x718>)
d0008ef0:	ea4f 1e13 	mov.w	lr, r3, lsr #4
d0008ef4:	3501      	adds	r5, #1
d0008ef6:	5510      	strb	r0, [r2, r4]
d0008ef8:	f003 030f 	and.w	r3, r3, #15
d0008efc:	4a9b      	ldr	r2, [pc, #620]	; (d000916c <pjpeg_decode_init+0x71c>)
d0008efe:	b2e8      	uxtb	r0, r5
d0008f00:	4c9b      	ldr	r4, [pc, #620]	; (d0009170 <pjpeg_decode_init+0x720>)
d0008f02:	f802 e001 	strb.w	lr, [r2, r1]
d0008f06:	f898 e000 	ldrb.w	lr, [r8]
d0008f0a:	5463      	strb	r3, [r4, r1]
d0008f0c:	4586      	cmp	lr, r0
d0008f0e:	f63f af5c 	bhi.w	d0008dca <pjpeg_decode_init+0x37a>
d0008f12:	2000      	movs	r0, #0
d0008f14:	9d03      	ldr	r5, [sp, #12]
d0008f16:	f7fd fb87 	bl	d0006628 <getBits.constprop.1>
d0008f1a:	2000      	movs	r0, #0
d0008f1c:	f7fd fb84 	bl	d0006628 <getBits.constprop.1>
d0008f20:	2100      	movs	r1, #0
d0008f22:	2004      	movs	r0, #4
d0008f24:	f7fe f88c 	bl	d0007040 <getBits>
d0008f28:	2100      	movs	r1, #0
d0008f2a:	2004      	movs	r0, #4
d0008f2c:	f7fe f888 	bl	d0007040 <getBits>
d0008f30:	f1a9 0305 	sub.w	r3, r9, #5
d0008f34:	b29b      	uxth	r3, r3
d0008f36:	b14b      	cbz	r3, d0008f4c <pjpeg_decode_init+0x4fc>
d0008f38:	46a9      	mov	r9, r5
d0008f3a:	461d      	mov	r5, r3
d0008f3c:	3d01      	subs	r5, #1
d0008f3e:	2000      	movs	r0, #0
d0008f40:	f7fd fb72 	bl	d0006628 <getBits.constprop.1>
d0008f44:	b2ad      	uxth	r5, r5
d0008f46:	2d00      	cmp	r5, #0
d0008f48:	d1f8      	bne.n	d0008f3c <pjpeg_decode_init+0x4ec>
d0008f4a:	464d      	mov	r5, r9
d0008f4c:	f898 c000 	ldrb.w	ip, [r8]
d0008f50:	f1bc 0f00 	cmp.w	ip, #0
d0008f54:	d05f      	beq.n	d0009016 <pjpeg_decode_init+0x5c6>
d0008f56:	4b84      	ldr	r3, [pc, #528]	; (d0009168 <pjpeg_decode_init+0x718>)
d0008f58:	2201      	movs	r2, #1
d0008f5a:	4986      	ldr	r1, [pc, #536]	; (d0009174 <pjpeg_decode_init+0x724>)
d0008f5c:	f893 e000 	ldrb.w	lr, [r3]
d0008f60:	f891 9000 	ldrb.w	r9, [r1]
d0008f64:	f814 300e 	ldrb.w	r3, [r4, lr]
d0008f68:	4980      	ldr	r1, [pc, #512]	; (d000916c <pjpeg_decode_init+0x71c>)
d0008f6a:	3302      	adds	r3, #2
d0008f6c:	4608      	mov	r0, r1
d0008f6e:	f811 100e 	ldrb.w	r1, [r1, lr]
d0008f72:	b2db      	uxtb	r3, r3
d0008f74:	fa02 f101 	lsl.w	r1, r2, r1
d0008f78:	fa02 f303 	lsl.w	r3, r2, r3
d0008f7c:	430b      	orrs	r3, r1
d0008f7e:	ea33 0809 	bics.w	r8, r3, r9
d0008f82:	f040 80aa 	bne.w	d00090da <pjpeg_decode_init+0x68a>
d0008f86:	4594      	cmp	ip, r2
d0008f88:	d920      	bls.n	d0008fcc <pjpeg_decode_init+0x57c>
d0008f8a:	4b77      	ldr	r3, [pc, #476]	; (d0009168 <pjpeg_decode_init+0x718>)
d0008f8c:	7859      	ldrb	r1, [r3, #1]
d0008f8e:	5c63      	ldrb	r3, [r4, r1]
d0008f90:	5c41      	ldrb	r1, [r0, r1]
d0008f92:	3302      	adds	r3, #2
d0008f94:	fa02 f101 	lsl.w	r1, r2, r1
d0008f98:	b2db      	uxtb	r3, r3
d0008f9a:	fa02 f303 	lsl.w	r3, r2, r3
d0008f9e:	430b      	orrs	r3, r1
d0008fa0:	ea33 0809 	bics.w	r8, r3, r9
d0008fa4:	f040 8099 	bne.w	d00090da <pjpeg_decode_init+0x68a>
d0008fa8:	f1bc 0f02 	cmp.w	ip, #2
d0008fac:	d00e      	beq.n	d0008fcc <pjpeg_decode_init+0x57c>
d0008fae:	4b6e      	ldr	r3, [pc, #440]	; (d0009168 <pjpeg_decode_init+0x718>)
d0008fb0:	7899      	ldrb	r1, [r3, #2]
d0008fb2:	5c63      	ldrb	r3, [r4, r1]
d0008fb4:	5c41      	ldrb	r1, [r0, r1]
d0008fb6:	3302      	adds	r3, #2
d0008fb8:	fa02 f101 	lsl.w	r1, r2, r1
d0008fbc:	b2db      	uxtb	r3, r3
d0008fbe:	fa02 f303 	lsl.w	r3, r2, r3
d0008fc2:	430b      	orrs	r3, r1
d0008fc4:	ea33 0309 	bics.w	r3, r3, r9
d0008fc8:	f040 8087 	bne.w	d00090da <pjpeg_decode_init+0x68a>
d0008fcc:	496a      	ldr	r1, [pc, #424]	; (d0009178 <pjpeg_decode_init+0x728>)
d0008fce:	4b6b      	ldr	r3, [pc, #428]	; (d000917c <pjpeg_decode_init+0x72c>)
d0008fd0:	f811 200e 	ldrb.w	r2, [r1, lr]
d0008fd4:	781b      	ldrb	r3, [r3, #0]
d0008fd6:	2a00      	cmp	r2, #0
d0008fd8:	bf14      	ite	ne
d0008fda:	2202      	movne	r2, #2
d0008fdc:	2201      	moveq	r2, #1
d0008fde:	4213      	tst	r3, r2
d0008fe0:	f000 80a2 	beq.w	d0009128 <pjpeg_decode_init+0x6d8>
d0008fe4:	f1bc 0f01 	cmp.w	ip, #1
d0008fe8:	d915      	bls.n	d0009016 <pjpeg_decode_init+0x5c6>
d0008fea:	485f      	ldr	r0, [pc, #380]	; (d0009168 <pjpeg_decode_init+0x718>)
d0008fec:	7842      	ldrb	r2, [r0, #1]
d0008fee:	5c8a      	ldrb	r2, [r1, r2]
d0008ff0:	2a00      	cmp	r2, #0
d0008ff2:	bf14      	ite	ne
d0008ff4:	2202      	movne	r2, #2
d0008ff6:	2201      	moveq	r2, #1
d0008ff8:	4213      	tst	r3, r2
d0008ffa:	f000 8095 	beq.w	d0009128 <pjpeg_decode_init+0x6d8>
d0008ffe:	f1bc 0f02 	cmp.w	ip, #2
d0009002:	d008      	beq.n	d0009016 <pjpeg_decode_init+0x5c6>
d0009004:	7882      	ldrb	r2, [r0, #2]
d0009006:	5c8a      	ldrb	r2, [r1, r2]
d0009008:	2a00      	cmp	r2, #0
d000900a:	bf14      	ite	ne
d000900c:	2202      	movne	r2, #2
d000900e:	2201      	moveq	r2, #1
d0009010:	4213      	tst	r3, r2
d0009012:	f000 8089 	beq.w	d0009128 <pjpeg_decode_init+0x6d8>
d0009016:	4b5a      	ldr	r3, [pc, #360]	; (d0009180 <pjpeg_decode_init+0x730>)
d0009018:	4a5a      	ldr	r2, [pc, #360]	; (d0009184 <pjpeg_decode_init+0x734>)
d000901a:	8819      	ldrh	r1, [r3, #0]
d000901c:	2300      	movs	r3, #0
d000901e:	6013      	str	r3, [r2, #0]
d0009020:	8093      	strh	r3, [r2, #4]
d0009022:	b119      	cbz	r1, d000902c <pjpeg_decode_init+0x5dc>
d0009024:	4858      	ldr	r0, [pc, #352]	; (d0009188 <pjpeg_decode_init+0x738>)
d0009026:	4a59      	ldr	r2, [pc, #356]	; (d000918c <pjpeg_decode_init+0x73c>)
d0009028:	8001      	strh	r1, [r0, #0]
d000902a:	8013      	strh	r3, [r2, #0]
d000902c:	7833      	ldrb	r3, [r6, #0]
d000902e:	2b00      	cmp	r3, #0
d0009030:	d144      	bne.n	d00090bc <pjpeg_decode_init+0x66c>
d0009032:	4b57      	ldr	r3, [pc, #348]	; (d0009190 <pjpeg_decode_init+0x740>)
d0009034:	4a57      	ldr	r2, [pc, #348]	; (d0009194 <pjpeg_decode_init+0x744>)
d0009036:	f8bb 1000 	ldrh.w	r1, [fp]
d000903a:	781b      	ldrb	r3, [r3, #0]
d000903c:	7812      	ldrb	r2, [r2, #0]
d000903e:	f8df c18c 	ldr.w	ip, [pc, #396]	; d00091cc <pjpeg_decode_init+0x77c>
d0009042:	3201      	adds	r2, #1
d0009044:	4c53      	ldr	r4, [pc, #332]	; (d0009194 <pjpeg_decode_init+0x744>)
d0009046:	3b01      	subs	r3, #1
d0009048:	0a09      	lsrs	r1, r1, #8
d000904a:	f04f 0e08 	mov.w	lr, #8
d000904e:	7022      	strb	r2, [r4, #0]
d0009050:	b2db      	uxtb	r3, r3
d0009052:	4a4f      	ldr	r2, [pc, #316]	; (d0009190 <pjpeg_decode_init+0x740>)
d0009054:	2001      	movs	r0, #1
d0009056:	f886 e000 	strb.w	lr, [r6]
d000905a:	7013      	strb	r3, [r2, #0]
d000905c:	f80c 1003 	strb.w	r1, [ip, r3]
d0009060:	f7fd fae2 	bl	d0006628 <getBits.constprop.1>
d0009064:	2001      	movs	r0, #1
d0009066:	f7fd fadf 	bl	d0006628 <getBits.constprop.1>
d000906a:	783c      	ldrb	r4, [r7, #0]
d000906c:	2c00      	cmp	r4, #0
d000906e:	f47f ad36 	bne.w	d0008ade <pjpeg_decode_init+0x8e>
d0009072:	9902      	ldr	r1, [sp, #8]
d0009074:	4b48      	ldr	r3, [pc, #288]	; (d0009198 <pjpeg_decode_init+0x748>)
d0009076:	780f      	ldrb	r7, [r1, #0]
d0009078:	4948      	ldr	r1, [pc, #288]	; (d000919c <pjpeg_decode_init+0x74c>)
d000907a:	881a      	ldrh	r2, [r3, #0]
d000907c:	f8b1 c000 	ldrh.w	ip, [r1]
d0009080:	4947      	ldr	r1, [pc, #284]	; (d00091a0 <pjpeg_decode_init+0x750>)
d0009082:	4b48      	ldr	r3, [pc, #288]	; (d00091a4 <pjpeg_decode_init+0x754>)
d0009084:	f8b1 e000 	ldrh.w	lr, [r1]
d0009088:	9900      	ldr	r1, [sp, #0]
d000908a:	881b      	ldrh	r3, [r3, #0]
d000908c:	f891 8000 	ldrb.w	r8, [r1]
d0009090:	9901      	ldr	r1, [sp, #4]
d0009092:	f89a 6000 	ldrb.w	r6, [sl]
d0009096:	7808      	ldrb	r0, [r1, #0]
d0009098:	602a      	str	r2, [r5, #0]
d000909a:	4943      	ldr	r1, [pc, #268]	; (d00091a8 <pjpeg_decode_init+0x758>)
d000909c:	4a43      	ldr	r2, [pc, #268]	; (d00091ac <pjpeg_decode_init+0x75c>)
d000909e:	606b      	str	r3, [r5, #4]
d00090a0:	4b43      	ldr	r3, [pc, #268]	; (d00091b0 <pjpeg_decode_init+0x760>)
d00090a2:	60ae      	str	r6, [r5, #8]
d00090a4:	752f      	strb	r7, [r5, #20]
d00090a6:	f8c5 c00c 	str.w	ip, [r5, #12]
d00090aa:	f8c5 e010 	str.w	lr, [r5, #16]
d00090ae:	f8c5 8018 	str.w	r8, [r5, #24]
d00090b2:	61e8      	str	r0, [r5, #28]
d00090b4:	6229      	str	r1, [r5, #32]
d00090b6:	626a      	str	r2, [r5, #36]	; 0x24
d00090b8:	62ab      	str	r3, [r5, #40]	; 0x28
d00090ba:	e510      	b.n	d0008ade <pjpeg_decode_init+0x8e>
d00090bc:	4b34      	ldr	r3, [pc, #208]	; (d0009190 <pjpeg_decode_init+0x740>)
d00090be:	4a35      	ldr	r2, [pc, #212]	; (d0009194 <pjpeg_decode_init+0x744>)
d00090c0:	781b      	ldrb	r3, [r3, #0]
d00090c2:	7812      	ldrb	r2, [r2, #0]
d00090c4:	3b01      	subs	r3, #1
d00090c6:	f8bb 1000 	ldrh.w	r1, [fp]
d00090ca:	3201      	adds	r2, #1
d00090cc:	f8df c0fc 	ldr.w	ip, [pc, #252]	; d00091cc <pjpeg_decode_init+0x77c>
d00090d0:	b2db      	uxtb	r3, r3
d00090d2:	b2d2      	uxtb	r2, r2
d00090d4:	f80c 1003 	strb.w	r1, [ip, r3]
d00090d8:	e7b3      	b.n	d0009042 <pjpeg_decode_init+0x5f2>
d00090da:	2418      	movs	r4, #24
d00090dc:	e545      	b.n	d0008b6a <pjpeg_decode_init+0x11a>
d00090de:	240b      	movs	r4, #11
d00090e0:	e543      	b.n	d0008b6a <pjpeg_decode_init+0x11a>
d00090e2:	2101      	movs	r1, #1
d00090e4:	4608      	mov	r0, r1
d00090e6:	e701      	b.n	d0008eec <pjpeg_decode_init+0x49c>
d00090e8:	2102      	movs	r1, #2
d00090ea:	4608      	mov	r0, r1
d00090ec:	e6fe      	b.n	d0008eec <pjpeg_decode_init+0x49c>
d00090ee:	240a      	movs	r4, #10
d00090f0:	e53b      	b.n	d0008b6a <pjpeg_decode_init+0x11a>
d00090f2:	4a30      	ldr	r2, [pc, #192]	; (d00091b4 <pjpeg_decode_init+0x764>)
d00090f4:	2003      	movs	r0, #3
d00090f6:	4930      	ldr	r1, [pc, #192]	; (d00091b8 <pjpeg_decode_init+0x768>)
d00090f8:	f44f 7480 	mov.w	r4, #256	; 0x100
d00090fc:	7013      	strb	r3, [r2, #0]
d00090fe:	f04f 0e02 	mov.w	lr, #2
d0009102:	2308      	movs	r3, #8
d0009104:	7008      	strb	r0, [r1, #0]
d0009106:	f8df 90bc 	ldr.w	r9, [pc, #188]	; d00091c4 <pjpeg_decode_init+0x774>
d000910a:	f04f 0c07 	mov.w	ip, #7
d000910e:	492b      	ldr	r1, [pc, #172]	; (d00091bc <pjpeg_decode_init+0x76c>)
d0009110:	4618      	mov	r0, r3
d0009112:	9202      	str	r2, [sp, #8]
d0009114:	4a2a      	ldr	r2, [pc, #168]	; (d00091c0 <pjpeg_decode_init+0x770>)
d0009116:	f8a9 4000 	strh.w	r4, [r9]
d000911a:	f889 e002 	strb.w	lr, [r9, #2]
d000911e:	9200      	str	r2, [sp, #0]
d0009120:	9101      	str	r1, [sp, #4]
d0009122:	7013      	strb	r3, [r2, #0]
d0009124:	700b      	strb	r3, [r1, #0]
d0009126:	e612      	b.n	d0008d4e <pjpeg_decode_init+0x2fe>
d0009128:	2417      	movs	r4, #23
d000912a:	e51e      	b.n	d0008b6a <pjpeg_decode_init+0x11a>
d000912c:	4a21      	ldr	r2, [pc, #132]	; (d00091b4 <pjpeg_decode_init+0x764>)
d000912e:	2004      	movs	r0, #4
d0009130:	4c24      	ldr	r4, [pc, #144]	; (d00091c4 <pjpeg_decode_init+0x774>)
d0009132:	f04f 0908 	mov.w	r9, #8
d0009136:	7013      	strb	r3, [r2, #0]
d0009138:	f04f 0e10 	mov.w	lr, #16
d000913c:	4b22      	ldr	r3, [pc, #136]	; (d00091c8 <pjpeg_decode_init+0x778>)
d000913e:	f04f 0c07 	mov.w	ip, #7
d0009142:	491d      	ldr	r1, [pc, #116]	; (d00091b8 <pjpeg_decode_init+0x768>)
d0009144:	9202      	str	r2, [sp, #8]
d0009146:	6023      	str	r3, [r4, #0]
d0009148:	4a1c      	ldr	r2, [pc, #112]	; (d00091bc <pjpeg_decode_init+0x76c>)
d000914a:	4b1d      	ldr	r3, [pc, #116]	; (d00091c0 <pjpeg_decode_init+0x770>)
d000914c:	7008      	strb	r0, [r1, #0]
d000914e:	4648      	mov	r0, r9
d0009150:	9300      	str	r3, [sp, #0]
d0009152:	9201      	str	r2, [sp, #4]
d0009154:	f883 e000 	strb.w	lr, [r3]
d0009158:	f882 9000 	strb.w	r9, [r2]
d000915c:	e6a4      	b.n	d0008ea8 <pjpeg_decode_init+0x458>
d000915e:	783c      	ldrb	r4, [r7, #0]
d0009160:	2c00      	cmp	r4, #0
d0009162:	bf08      	it	eq
d0009164:	241a      	moveq	r4, #26
d0009166:	e4ba      	b.n	d0008ade <pjpeg_decode_init+0x8e>
d0009168:	d000e9c4 	.word	0xd000e9c4
d000916c:	d000e9b8 	.word	0xd000e9b8
d0009170:	d000e9b4 	.word	0xd000e9b4
d0009174:	d000f260 	.word	0xd000f260
d0009178:	d000e9c8 	.word	0xd000e9c8
d000917c:	d000f261 	.word	0xd000f261
d0009180:	d000f25a 	.word	0xd000f25a
d0009184:	d000ee3c 	.word	0xd000ee3c
d0009188:	d000f25c 	.word	0xd000f25c
d000918c:	d000f152 	.word	0xd000f152
d0009190:	d000ee39 	.word	0xd000ee39
d0009194:	d000ee38 	.word	0xd000ee38
d0009198:	d000ed34 	.word	0xd000ed34
d000919c:	d000f14e 	.word	0xd000f14e
d00091a0:	d000f14c 	.word	0xd000f14c
d00091a4:	d000ed36 	.word	0xd000ed36
d00091a8:	d000f044 	.word	0xd000f044
d00091ac:	d000ef44 	.word	0xd000ef44
d00091b0:	d000ee44 	.word	0xd000ee44
d00091b4:	d000f25e 	.word	0xd000f25e
d00091b8:	d000f14a 	.word	0xd000f14a
d00091bc:	d000f151 	.word	0xd000f151
d00091c0:	d000f150 	.word	0xd000f150
d00091c4:	d000f144 	.word	0xd000f144
d00091c8:	02010000 	.word	0x02010000
d00091cc:	d000ed38 	.word	0xd000ed38

d00091d0 <init_rgb332_palette>:
d00091d0:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d00091d4:	2100      	movs	r1, #0
d00091d6:	2403      	movs	r4, #3
d00091d8:	f8df a230 	ldr.w	sl, [pc, #560]	; d000940c <init_rgb332_palette+0x23c>
d00091dc:	fbaa 2304 	umull	r2, r3, sl, r4
d00091e0:	014a      	lsls	r2, r1, #5
d00091e2:	01cd      	lsls	r5, r1, #7
d00091e4:	f8df c228 	ldr.w	ip, [pc, #552]	; d0009410 <init_rgb332_palette+0x240>
d00091e8:	1ae6      	subs	r6, r4, r3
d00091ea:	b212      	sxth	r2, r2
d00091ec:	4f7b      	ldr	r7, [pc, #492]	; (d00093dc <init_rgb332_palette+0x20c>)
d00091ee:	3101      	adds	r1, #1
d00091f0:	eb03 0356 	add.w	r3, r3, r6, lsr #1
d00091f4:	f8df e21c 	ldr.w	lr, [pc, #540]	; d0009414 <init_rgb332_palette+0x244>
d00091f8:	4e79      	ldr	r6, [pc, #484]	; (d00093e0 <init_rgb332_palette+0x210>)
d00091fa:	2908      	cmp	r1, #8
d00091fc:	ea4f 0393 	mov.w	r3, r3, lsr #2
d0009200:	f8df b214 	ldr.w	fp, [pc, #532]	; d0009418 <init_rgb332_palette+0x248>
d0009204:	f8df 9214 	ldr.w	r9, [pc, #532]	; d000941c <init_rgb332_palette+0x24c>
d0009208:	f104 04ff 	add.w	r4, r4, #255	; 0xff
d000920c:	ea4f 4303 	mov.w	r3, r3, lsl #16
d0009210:	f043 487f 	orr.w	r8, r3, #4278190080	; 0xff000000
d0009214:	ea43 0c0c 	orr.w	ip, r3, ip
d0009218:	ea47 0703 	orr.w	r7, r7, r3
d000921c:	ea43 0e0e 	orr.w	lr, r3, lr
d0009220:	f840 8005 	str.w	r8, [r0, r5]
d0009224:	f042 0801 	orr.w	r8, r2, #1
d0009228:	ea46 0603 	orr.w	r6, r6, r3
d000922c:	4d6d      	ldr	r5, [pc, #436]	; (d00093e4 <init_rgb332_palette+0x214>)
d000922e:	f840 c028 	str.w	ip, [r0, r8, lsl #2]
d0009232:	f042 0802 	orr.w	r8, r2, #2
d0009236:	ea45 0503 	orr.w	r5, r5, r3
d000923a:	f8df c1e4 	ldr.w	ip, [pc, #484]	; d0009420 <init_rgb332_palette+0x250>
d000923e:	f840 7028 	str.w	r7, [r0, r8, lsl #2]
d0009242:	f042 0803 	orr.w	r8, r2, #3
d0009246:	ea43 0c0c 	orr.w	ip, r3, ip
d000924a:	ea43 0b0b 	orr.w	fp, r3, fp
d000924e:	f840 e028 	str.w	lr, [r0, r8, lsl #2]
d0009252:	f042 0e04 	orr.w	lr, r2, #4
d0009256:	4f64      	ldr	r7, [pc, #400]	; (d00093e8 <init_rgb332_palette+0x218>)
d0009258:	ea43 0909 	orr.w	r9, r3, r9
d000925c:	f840 602e 	str.w	r6, [r0, lr, lsl #2]
d0009260:	f042 0605 	orr.w	r6, r2, #5
d0009264:	f8df e1bc 	ldr.w	lr, [pc, #444]	; d0009424 <init_rgb332_palette+0x254>
d0009268:	ea47 0703 	orr.w	r7, r7, r3
d000926c:	f8df 81b8 	ldr.w	r8, [pc, #440]	; d0009428 <init_rgb332_palette+0x258>
d0009270:	ea43 0e0e 	orr.w	lr, r3, lr
d0009274:	ea43 0808 	orr.w	r8, r3, r8
d0009278:	f840 e026 	str.w	lr, [r0, r6, lsl #2]
d000927c:	f042 0606 	orr.w	r6, r2, #6
d0009280:	f8df e1a8 	ldr.w	lr, [pc, #424]	; d000942c <init_rgb332_palette+0x25c>
d0009284:	ea43 0e0e 	orr.w	lr, r3, lr
d0009288:	f840 e026 	str.w	lr, [r0, r6, lsl #2]
d000928c:	f042 0e07 	orr.w	lr, r2, #7
d0009290:	4e56      	ldr	r6, [pc, #344]	; (d00093ec <init_rgb332_palette+0x21c>)
d0009292:	f840 502e 	str.w	r5, [r0, lr, lsl #2]
d0009296:	f042 0e08 	orr.w	lr, r2, #8
d000929a:	ea46 0603 	orr.w	r6, r6, r3
d000929e:	4d54      	ldr	r5, [pc, #336]	; (d00093f0 <init_rgb332_palette+0x220>)
d00092a0:	f840 c02e 	str.w	ip, [r0, lr, lsl #2]
d00092a4:	f042 0c09 	orr.w	ip, r2, #9
d00092a8:	f8df e184 	ldr.w	lr, [pc, #388]	; d0009430 <init_rgb332_palette+0x260>
d00092ac:	ea45 0503 	orr.w	r5, r5, r3
d00092b0:	ea43 0e0e 	orr.w	lr, r3, lr
d00092b4:	f840 e02c 	str.w	lr, [r0, ip, lsl #2]
d00092b8:	f042 0c0a 	orr.w	ip, r2, #10
d00092bc:	f8df e174 	ldr.w	lr, [pc, #372]	; d0009434 <init_rgb332_palette+0x264>
d00092c0:	f840 b02c 	str.w	fp, [r0, ip, lsl #2]
d00092c4:	f042 0b0b 	orr.w	fp, r2, #11
d00092c8:	ea43 0e0e 	orr.w	lr, r3, lr
d00092cc:	f8df c168 	ldr.w	ip, [pc, #360]	; d0009438 <init_rgb332_palette+0x268>
d00092d0:	f840 702b 	str.w	r7, [r0, fp, lsl #2]
d00092d4:	f042 0b0c 	orr.w	fp, r2, #12
d00092d8:	ea43 0c0c 	orr.w	ip, r3, ip
d00092dc:	4f45      	ldr	r7, [pc, #276]	; (d00093f4 <init_rgb332_palette+0x224>)
d00092de:	f840 902b 	str.w	r9, [r0, fp, lsl #2]
d00092e2:	f042 090d 	orr.w	r9, r2, #13
d00092e6:	f8df b154 	ldr.w	fp, [pc, #340]	; d000943c <init_rgb332_palette+0x26c>
d00092ea:	ea47 0703 	orr.w	r7, r7, r3
d00092ee:	ea43 0b0b 	orr.w	fp, r3, fp
d00092f2:	f840 b029 	str.w	fp, [r0, r9, lsl #2]
d00092f6:	f042 090e 	orr.w	r9, r2, #14
d00092fa:	f8df b144 	ldr.w	fp, [pc, #324]	; d0009440 <init_rgb332_palette+0x270>
d00092fe:	ea43 0b0b 	orr.w	fp, r3, fp
d0009302:	f840 b029 	str.w	fp, [r0, r9, lsl #2]
d0009306:	f042 090f 	orr.w	r9, r2, #15
d000930a:	f840 8029 	str.w	r8, [r0, r9, lsl #2]
d000930e:	f042 0810 	orr.w	r8, r2, #16
d0009312:	f8df 9130 	ldr.w	r9, [pc, #304]	; d0009444 <init_rgb332_palette+0x274>
d0009316:	f840 6028 	str.w	r6, [r0, r8, lsl #2]
d000931a:	f042 0811 	orr.w	r8, r2, #17
d000931e:	ea43 0909 	orr.w	r9, r3, r9
d0009322:	4e35      	ldr	r6, [pc, #212]	; (d00093f8 <init_rgb332_palette+0x228>)
d0009324:	f840 9028 	str.w	r9, [r0, r8, lsl #2]
d0009328:	f042 0812 	orr.w	r8, r2, #18
d000932c:	f8df 9118 	ldr.w	r9, [pc, #280]	; d0009448 <init_rgb332_palette+0x278>
d0009330:	ea46 0603 	orr.w	r6, r6, r3
d0009334:	ea43 0909 	orr.w	r9, r3, r9
d0009338:	f840 9028 	str.w	r9, [r0, r8, lsl #2]
d000933c:	f042 0813 	orr.w	r8, r2, #19
d0009340:	f840 5028 	str.w	r5, [r0, r8, lsl #2]
d0009344:	f042 0814 	orr.w	r8, r2, #20
d0009348:	4d2c      	ldr	r5, [pc, #176]	; (d00093fc <init_rgb332_palette+0x22c>)
d000934a:	f840 e028 	str.w	lr, [r0, r8, lsl #2]
d000934e:	f042 0815 	orr.w	r8, r2, #21
d0009352:	ea45 0503 	orr.w	r5, r5, r3
d0009356:	f8df e0f4 	ldr.w	lr, [pc, #244]	; d000944c <init_rgb332_palette+0x27c>
d000935a:	f840 c028 	str.w	ip, [r0, r8, lsl #2]
d000935e:	f042 0816 	orr.w	r8, r2, #22
d0009362:	ea43 0e0e 	orr.w	lr, r3, lr
d0009366:	f8df c0e8 	ldr.w	ip, [pc, #232]	; d0009450 <init_rgb332_palette+0x280>
d000936a:	f840 7028 	str.w	r7, [r0, r8, lsl #2]
d000936e:	f042 0817 	orr.w	r8, r2, #23
d0009372:	ea43 0c0c 	orr.w	ip, r3, ip
d0009376:	4f22      	ldr	r7, [pc, #136]	; (d0009400 <init_rgb332_palette+0x230>)
d0009378:	f840 6028 	str.w	r6, [r0, r8, lsl #2]
d000937c:	f042 0818 	orr.w	r8, r2, #24
d0009380:	ea47 0703 	orr.w	r7, r7, r3
d0009384:	4e1f      	ldr	r6, [pc, #124]	; (d0009404 <init_rgb332_palette+0x234>)
d0009386:	f840 5028 	str.w	r5, [r0, r8, lsl #2]
d000938a:	f042 0819 	orr.w	r8, r2, #25
d000938e:	4d1e      	ldr	r5, [pc, #120]	; (d0009408 <init_rgb332_palette+0x238>)
d0009390:	ea46 0603 	orr.w	r6, r6, r3
d0009394:	f840 e028 	str.w	lr, [r0, r8, lsl #2]
d0009398:	f042 0e1a 	orr.w	lr, r2, #26
d000939c:	ea45 0503 	orr.w	r5, r5, r3
d00093a0:	f840 c02e 	str.w	ip, [r0, lr, lsl #2]
d00093a4:	f042 0c1b 	orr.w	ip, r2, #27
d00093a8:	f840 702c 	str.w	r7, [r0, ip, lsl #2]
d00093ac:	f043 2cff 	orr.w	ip, r3, #4278255360	; 0xff00ff00
d00093b0:	f042 071c 	orr.w	r7, r2, #28
d00093b4:	f463 037f 	orn	r3, r3, #16711680	; 0xff0000
d00093b8:	f840 c027 	str.w	ip, [r0, r7, lsl #2]
d00093bc:	f042 0c1d 	orr.w	ip, r2, #29
d00093c0:	f042 071e 	orr.w	r7, r2, #30
d00093c4:	f042 021f 	orr.w	r2, r2, #31
d00093c8:	f840 602c 	str.w	r6, [r0, ip, lsl #2]
d00093cc:	f840 5027 	str.w	r5, [r0, r7, lsl #2]
d00093d0:	f840 3022 	str.w	r3, [r0, r2, lsl #2]
d00093d4:	f47f af02 	bne.w	d00091dc <init_rgb332_palette+0xc>
d00093d8:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d00093dc:	ff0000aa 	.word	0xff0000aa
d00093e0:	ff002400 	.word	0xff002400
d00093e4:	ff0024ff 	.word	0xff0024ff
d00093e8:	ff0049ff 	.word	0xff0049ff
d00093ec:	ff009200 	.word	0xff009200
d00093f0:	ff0092ff 	.word	0xff0092ff
d00093f4:	ff00b6aa 	.word	0xff00b6aa
d00093f8:	ff00b6ff 	.word	0xff00b6ff
d00093fc:	ff00db00 	.word	0xff00db00
d0009400:	ff00dbff 	.word	0xff00dbff
d0009404:	ff00ff55 	.word	0xff00ff55
d0009408:	ff00ffaa 	.word	0xff00ffaa
d000940c:	24924925 	.word	0x24924925
d0009410:	ff000055 	.word	0xff000055
d0009414:	ff0000ff 	.word	0xff0000ff
d0009418:	ff0049aa 	.word	0xff0049aa
d000941c:	ff006d00 	.word	0xff006d00
d0009420:	ff004900 	.word	0xff004900
d0009424:	ff002455 	.word	0xff002455
d0009428:	ff006dff 	.word	0xff006dff
d000942c:	ff0024aa 	.word	0xff0024aa
d0009430:	ff004955 	.word	0xff004955
d0009434:	ff00b600 	.word	0xff00b600
d0009438:	ff00b655 	.word	0xff00b655
d000943c:	ff006d55 	.word	0xff006d55
d0009440:	ff006daa 	.word	0xff006daa
d0009444:	ff009255 	.word	0xff009255
d0009448:	ff0092aa 	.word	0xff0092aa
d000944c:	ff00db55 	.word	0xff00db55
d0009450:	ff00dbaa 	.word	0xff00dbaa

d0009454 <bmp_make_mask_info>:
d0009454:	b430      	push	{r4, r5}
d0009456:	b311      	cbz	r1, d000949e <bmp_make_mask_info+0x4a>
d0009458:	f011 0501 	ands.w	r5, r1, #1
d000945c:	460b      	mov	r3, r1
d000945e:	d002      	beq.n	d0009466 <bmp_make_mask_info+0x12>
d0009460:	e013      	b.n	d000948a <bmp_make_mask_info+0x36>
d0009462:	07da      	lsls	r2, r3, #31
d0009464:	d411      	bmi.n	d000948a <bmp_make_mask_info+0x36>
d0009466:	085b      	lsrs	r3, r3, #1
d0009468:	d1fb      	bne.n	d0009462 <bmp_make_mask_info+0xe>
d000946a:	460a      	mov	r2, r1
d000946c:	2400      	movs	r4, #0
d000946e:	0852      	lsrs	r2, r2, #1
d0009470:	3401      	adds	r4, #1
d0009472:	07d5      	lsls	r5, r2, #31
d0009474:	d5fb      	bpl.n	d000946e <bmp_make_mask_info+0x1a>
d0009476:	b11b      	cbz	r3, d0009480 <bmp_make_mask_info+0x2c>
d0009478:	2201      	movs	r2, #1
d000947a:	fa02 f303 	lsl.w	r3, r2, r3
d000947e:	3b01      	subs	r3, #1
d0009480:	6083      	str	r3, [r0, #8]
d0009482:	e9c0 1400 	strd	r1, r4, [r0]
d0009486:	bc30      	pop	{r4, r5}
d0009488:	4770      	bx	lr
d000948a:	461a      	mov	r2, r3
d000948c:	2300      	movs	r3, #0
d000948e:	0852      	lsrs	r2, r2, #1
d0009490:	3301      	adds	r3, #1
d0009492:	f012 0401 	ands.w	r4, r2, #1
d0009496:	d1fa      	bne.n	d000948e <bmp_make_mask_info+0x3a>
d0009498:	2d00      	cmp	r5, #0
d000949a:	d0e6      	beq.n	d000946a <bmp_make_mask_info+0x16>
d000949c:	e7eb      	b.n	d0009476 <bmp_make_mask_info+0x22>
d000949e:	460c      	mov	r4, r1
d00094a0:	460b      	mov	r3, r1
d00094a2:	e7ed      	b.n	d0009480 <bmp_make_mask_info+0x2c>

d00094a4 <jpeg_need_file_bytes>:
d00094a4:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
d00094a8:	4f13      	ldr	r7, [pc, #76]	; (d00094f8 <jpeg_need_file_bytes+0x54>)
d00094aa:	461d      	mov	r5, r3
d00094ac:	b082      	sub	sp, #8
d00094ae:	4688      	mov	r8, r1
d00094b0:	793c      	ldrb	r4, [r7, #4]
d00094b2:	2600      	movs	r6, #0
d00094b4:	797b      	ldrb	r3, [r7, #5]
d00094b6:	4694      	mov	ip, r2
d00094b8:	f897 e006 	ldrb.w	lr, [r7, #6]
d00094bc:	4601      	mov	r1, r0
d00094be:	ea44 2403 	orr.w	r4, r4, r3, lsl #8
d00094c2:	79fb      	ldrb	r3, [r7, #7]
d00094c4:	4642      	mov	r2, r8
d00094c6:	7828      	ldrb	r0, [r5, #0]
d00094c8:	ea44 440e 	orr.w	r4, r4, lr, lsl #16
d00094cc:	9601      	str	r6, [sp, #4]
d00094ce:	4667      	mov	r7, ip
d00094d0:	ea44 6403 	orr.w	r4, r4, r3, lsl #24
d00094d4:	ab01      	add	r3, sp, #4
d00094d6:	6824      	ldr	r4, [r4, #0]
d00094d8:	68a4      	ldr	r4, [r4, #8]
d00094da:	47a0      	blx	r4
d00094dc:	b938      	cbnz	r0, d00094ee <jpeg_need_file_bytes+0x4a>
d00094de:	68ab      	ldr	r3, [r5, #8]
d00094e0:	9a01      	ldr	r2, [sp, #4]
d00094e2:	4413      	add	r3, r2
d00094e4:	60ab      	str	r3, [r5, #8]
d00094e6:	703a      	strb	r2, [r7, #0]
d00094e8:	b002      	add	sp, #8
d00094ea:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
d00094ee:	2021      	movs	r0, #33	; 0x21
d00094f0:	703e      	strb	r6, [r7, #0]
d00094f2:	b002      	add	sp, #8
d00094f4:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
d00094f8:	2001f000 	.word	0x2001f000

d00094fc <stb_file_read>:
d00094fc:	2300      	movs	r3, #0
d00094fe:	b5f0      	push	{r4, r5, r6, r7, lr}
d0009500:	429a      	cmp	r2, r3
d0009502:	b083      	sub	sp, #12
d0009504:	9301      	str	r3, [sp, #4]
d0009506:	dd18      	ble.n	d000953a <stb_file_read+0x3e>
d0009508:	4605      	mov	r5, r0
d000950a:	480d      	ldr	r0, [pc, #52]	; (d0009540 <stb_file_read+0x44>)
d000950c:	ab01      	add	r3, sp, #4
d000950e:	7904      	ldrb	r4, [r0, #4]
d0009510:	7946      	ldrb	r6, [r0, #5]
d0009512:	7987      	ldrb	r7, [r0, #6]
d0009514:	ea44 2406 	orr.w	r4, r4, r6, lsl #8
d0009518:	79c6      	ldrb	r6, [r0, #7]
d000951a:	7828      	ldrb	r0, [r5, #0]
d000951c:	ea44 4407 	orr.w	r4, r4, r7, lsl #16
d0009520:	ea44 6406 	orr.w	r4, r4, r6, lsl #24
d0009524:	6824      	ldr	r4, [r4, #0]
d0009526:	68a4      	ldr	r4, [r4, #8]
d0009528:	47a0      	blx	r4
d000952a:	b930      	cbnz	r0, d000953a <stb_file_read+0x3e>
d000952c:	9a01      	ldr	r2, [sp, #4]
d000952e:	68ab      	ldr	r3, [r5, #8]
d0009530:	4610      	mov	r0, r2
d0009532:	4413      	add	r3, r2
d0009534:	60ab      	str	r3, [r5, #8]
d0009536:	b003      	add	sp, #12
d0009538:	bdf0      	pop	{r4, r5, r6, r7, pc}
d000953a:	2000      	movs	r0, #0
d000953c:	b003      	add	sp, #12
d000953e:	bdf0      	pop	{r4, r5, r6, r7, pc}
d0009540:	2001f000 	.word	0x2001f000

d0009544 <stb_file_skip>:
d0009544:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
d0009548:	460a      	mov	r2, r1
d000954a:	17cb      	asrs	r3, r1, #31
d000954c:	6881      	ldr	r1, [r0, #8]
d000954e:	4605      	mov	r5, r0
d0009550:	1852      	adds	r2, r2, r1
d0009552:	f143 0300 	adc.w	r3, r3, #0
d0009556:	2a00      	cmp	r2, #0
d0009558:	4699      	mov	r9, r3
d000955a:	f173 0300 	sbcs.w	r3, r3, #0
d000955e:	db1c      	blt.n	d000959a <stb_file_skip+0x56>
d0009560:	4690      	mov	r8, r2
d0009562:	4910      	ldr	r1, [pc, #64]	; (d00095a4 <stb_file_skip+0x60>)
d0009564:	686e      	ldr	r6, [r5, #4]
d0009566:	790c      	ldrb	r4, [r1, #4]
d0009568:	7948      	ldrb	r0, [r1, #5]
d000956a:	f891 c006 	ldrb.w	ip, [r1, #6]
d000956e:	ea44 2400 	orr.w	r4, r4, r0, lsl #8
d0009572:	79cf      	ldrb	r7, [r1, #7]
d0009574:	2100      	movs	r1, #0
d0009576:	7828      	ldrb	r0, [r5, #0]
d0009578:	ea44 440c 	orr.w	r4, r4, ip, lsl #16
d000957c:	4549      	cmp	r1, r9
d000957e:	ea44 6307 	orr.w	r3, r4, r7, lsl #24
d0009582:	bf08      	it	eq
d0009584:	4546      	cmpeq	r6, r8
d0009586:	681b      	ldr	r3, [r3, #0]
d0009588:	bf28      	it	cs
d000958a:	4646      	movcs	r6, r8
d000958c:	695b      	ldr	r3, [r3, #20]
d000958e:	4631      	mov	r1, r6
d0009590:	4798      	blx	r3
d0009592:	b900      	cbnz	r0, d0009596 <stb_file_skip+0x52>
d0009594:	60ae      	str	r6, [r5, #8]
d0009596:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
d000959a:	f04f 0800 	mov.w	r8, #0
d000959e:	f04f 0900 	mov.w	r9, #0
d00095a2:	e7de      	b.n	d0009562 <stb_file_skip+0x1e>
d00095a4:	2001f000 	.word	0x2001f000

d00095a8 <stb_file_eof>:
d00095a8:	6882      	ldr	r2, [r0, #8]
d00095aa:	6840      	ldr	r0, [r0, #4]
d00095ac:	4282      	cmp	r2, r0
d00095ae:	bf34      	ite	cc
d00095b0:	2000      	movcc	r0, #0
d00095b2:	2001      	movcs	r0, #1
d00095b4:	4770      	bx	lr
d00095b6:	bf00      	nop

d00095b8 <jpeg_need_bytes>:
d00095b8:	b5e0      	push	{r5, r6, r7, lr}
d00095ba:	461e      	mov	r6, r3
d00095bc:	689b      	ldr	r3, [r3, #8]
d00095be:	4617      	mov	r7, r2
d00095c0:	6875      	ldr	r5, [r6, #4]
d00095c2:	1aed      	subs	r5, r5, r3
d00095c4:	428d      	cmp	r5, r1
d00095c6:	bf28      	it	cs
d00095c8:	460d      	movcs	r5, r1
d00095ca:	b915      	cbnz	r5, d00095d2 <jpeg_need_bytes+0x1a>
d00095cc:	2000      	movs	r0, #0
d00095ce:	703d      	strb	r5, [r7, #0]
d00095d0:	bde0      	pop	{r5, r6, r7, pc}
d00095d2:	6831      	ldr	r1, [r6, #0]
d00095d4:	462a      	mov	r2, r5
d00095d6:	4419      	add	r1, r3
d00095d8:	f003 f878 	bl	d000c6cc <memcpy>
d00095dc:	68b3      	ldr	r3, [r6, #8]
d00095de:	2000      	movs	r0, #0
d00095e0:	442b      	add	r3, r5
d00095e2:	60b3      	str	r3, [r6, #8]
d00095e4:	703d      	strb	r5, [r7, #0]
d00095e6:	bde0      	pop	{r5, r6, r7, pc}

d00095e8 <set_status>:
d00095e8:	b570      	push	{r4, r5, r6, lr}
d00095ea:	4d13      	ldr	r5, [pc, #76]	; (d0009638 <set_status+0x50>)
d00095ec:	4601      	mov	r1, r0
d00095ee:	4c13      	ldr	r4, [pc, #76]	; (d000963c <set_status+0x54>)
d00095f0:	229f      	movs	r2, #159	; 0x9f
d00095f2:	4628      	mov	r0, r5
d00095f4:	f003 fd42 	bl	d000d07c <strncpy>
d00095f8:	7823      	ldrb	r3, [r4, #0]
d00095fa:	7862      	ldrb	r2, [r4, #1]
d00095fc:	2000      	movs	r0, #0
d00095fe:	78a1      	ldrb	r1, [r4, #2]
d0009600:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0009604:	78e2      	ldrb	r2, [r4, #3]
d0009606:	f885 009f 	strb.w	r0, [r5, #159]	; 0x9f
d000960a:	4628      	mov	r0, r5
d000960c:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0009610:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0009614:	68db      	ldr	r3, [r3, #12]
d0009616:	4798      	blx	r3
d0009618:	7823      	ldrb	r3, [r4, #0]
d000961a:	7862      	ldrb	r2, [r4, #1]
d000961c:	78a1      	ldrb	r1, [r4, #2]
d000961e:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0009622:	78e2      	ldrb	r2, [r4, #3]
d0009624:	4806      	ldr	r0, [pc, #24]	; (d0009640 <set_status+0x58>)
d0009626:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d000962a:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d000962e:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
d0009632:	68db      	ldr	r3, [r3, #12]
d0009634:	4718      	bx	r3
d0009636:	bf00      	nop
d0009638:	d000fa7c 	.word	0xd000fa7c
d000963c:	2001f000 	.word	0x2001f000
d0009640:	d000e088 	.word	0xd000e088

d0009644 <load_file>:
d0009644:	e92d 43f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
d0009648:	4c4e      	ldr	r4, [pc, #312]	; (d0009784 <load_file+0x140>)
d000964a:	4606      	mov	r6, r0
d000964c:	2500      	movs	r5, #0
d000964e:	b085      	sub	sp, #20
d0009650:	7923      	ldrb	r3, [r4, #4]
d0009652:	4688      	mov	r8, r1
d0009654:	7960      	ldrb	r0, [r4, #5]
d0009656:	4631      	mov	r1, r6
d0009658:	79a2      	ldrb	r2, [r4, #6]
d000965a:	ea43 2300 	orr.w	r3, r3, r0, lsl #8
d000965e:	79e7      	ldrb	r7, [r4, #7]
d0009660:	4628      	mov	r0, r5
d0009662:	f8c8 5000 	str.w	r5, [r8]
d0009666:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d000966a:	9503      	str	r5, [sp, #12]
d000966c:	2201      	movs	r2, #1
d000966e:	ea43 6307 	orr.w	r3, r3, r7, lsl #24
d0009672:	681b      	ldr	r3, [r3, #0]
d0009674:	681b      	ldr	r3, [r3, #0]
d0009676:	4798      	blx	r3
d0009678:	4607      	mov	r7, r0
d000967a:	2800      	cmp	r0, #0
d000967c:	d165      	bne.n	d000974a <load_file+0x106>
d000967e:	7926      	ldrb	r6, [r4, #4]
d0009680:	7965      	ldrb	r5, [r4, #5]
d0009682:	79a2      	ldrb	r2, [r4, #6]
d0009684:	ea46 2505 	orr.w	r5, r6, r5, lsl #8
d0009688:	79e3      	ldrb	r3, [r4, #7]
d000968a:	ea45 4202 	orr.w	r2, r5, r2, lsl #16
d000968e:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0009692:	681b      	ldr	r3, [r3, #0]
d0009694:	685b      	ldr	r3, [r3, #4]
d0009696:	4798      	blx	r3
d0009698:	4606      	mov	r6, r0
d000969a:	2800      	cmp	r0, #0
d000969c:	d043      	beq.n	d0009726 <load_file+0xe2>
d000969e:	f002 fff7 	bl	d000c690 <malloc>
d00096a2:	4605      	mov	r5, r0
d00096a4:	2800      	cmp	r0, #0
d00096a6:	d05b      	beq.n	d0009760 <load_file+0x11c>
d00096a8:	f894 c004 	ldrb.w	ip, [r4, #4]
d00096ac:	ab03      	add	r3, sp, #12
d00096ae:	f894 e005 	ldrb.w	lr, [r4, #5]
d00096b2:	4632      	mov	r2, r6
d00096b4:	79a0      	ldrb	r0, [r4, #6]
d00096b6:	4629      	mov	r1, r5
d00096b8:	ea4c 2c0e 	orr.w	ip, ip, lr, lsl #8
d00096bc:	f894 e007 	ldrb.w	lr, [r4, #7]
d00096c0:	ea4c 4c00 	orr.w	ip, ip, r0, lsl #16
d00096c4:	4638      	mov	r0, r7
d00096c6:	ea4c 6c0e 	orr.w	ip, ip, lr, lsl #24
d00096ca:	f8dc c000 	ldr.w	ip, [ip]
d00096ce:	f8dc 9008 	ldr.w	r9, [ip, #8]
d00096d2:	47c8      	blx	r9
d00096d4:	7922      	ldrb	r2, [r4, #4]
d00096d6:	f894 c005 	ldrb.w	ip, [r4, #5]
d00096da:	4603      	mov	r3, r0
d00096dc:	79a1      	ldrb	r1, [r4, #6]
d00096de:	4638      	mov	r0, r7
d00096e0:	ea42 220c 	orr.w	r2, r2, ip, lsl #8
d00096e4:	461f      	mov	r7, r3
d00096e6:	79e3      	ldrb	r3, [r4, #7]
d00096e8:	ea42 4201 	orr.w	r2, r2, r1, lsl #16
d00096ec:	ea42 6203 	orr.w	r2, r2, r3, lsl #24
d00096f0:	6813      	ldr	r3, [r2, #0]
d00096f2:	68db      	ldr	r3, [r3, #12]
d00096f4:	4798      	blx	r3
d00096f6:	b947      	cbnz	r7, d000970a <load_file+0xc6>
d00096f8:	9b03      	ldr	r3, [sp, #12]
d00096fa:	42b3      	cmp	r3, r6
d00096fc:	d105      	bne.n	d000970a <load_file+0xc6>
d00096fe:	f8c8 3000 	str.w	r3, [r8]
d0009702:	4628      	mov	r0, r5
d0009704:	b005      	add	sp, #20
d0009706:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
d000970a:	4628      	mov	r0, r5
d000970c:	2500      	movs	r5, #0
d000970e:	f002 ffc7 	bl	d000c6a0 <free>
d0009712:	463b      	mov	r3, r7
d0009714:	4a1c      	ldr	r2, [pc, #112]	; (d0009788 <load_file+0x144>)
d0009716:	21a0      	movs	r1, #160	; 0xa0
d0009718:	481c      	ldr	r0, [pc, #112]	; (d000978c <load_file+0x148>)
d000971a:	f003 fc7b 	bl	d000d014 <sniprintf>
d000971e:	481b      	ldr	r0, [pc, #108]	; (d000978c <load_file+0x148>)
d0009720:	f7ff ff62 	bl	d00095e8 <set_status>
d0009724:	e7ed      	b.n	d0009702 <load_file+0xbe>
d0009726:	7923      	ldrb	r3, [r4, #4]
d0009728:	4605      	mov	r5, r0
d000972a:	7962      	ldrb	r2, [r4, #5]
d000972c:	79a1      	ldrb	r1, [r4, #6]
d000972e:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0009732:	79e2      	ldrb	r2, [r4, #7]
d0009734:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0009738:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d000973c:	681b      	ldr	r3, [r3, #0]
d000973e:	68db      	ldr	r3, [r3, #12]
d0009740:	4798      	blx	r3
d0009742:	4813      	ldr	r0, [pc, #76]	; (d0009790 <load_file+0x14c>)
d0009744:	f7ff ff50 	bl	d00095e8 <set_status>
d0009748:	e7db      	b.n	d0009702 <load_file+0xbe>
d000974a:	4603      	mov	r3, r0
d000974c:	4a11      	ldr	r2, [pc, #68]	; (d0009794 <load_file+0x150>)
d000974e:	21a0      	movs	r1, #160	; 0xa0
d0009750:	9600      	str	r6, [sp, #0]
d0009752:	480e      	ldr	r0, [pc, #56]	; (d000978c <load_file+0x148>)
d0009754:	f003 fc5e 	bl	d000d014 <sniprintf>
d0009758:	480c      	ldr	r0, [pc, #48]	; (d000978c <load_file+0x148>)
d000975a:	f7ff ff45 	bl	d00095e8 <set_status>
d000975e:	e7d0      	b.n	d0009702 <load_file+0xbe>
d0009760:	7923      	ldrb	r3, [r4, #4]
d0009762:	7962      	ldrb	r2, [r4, #5]
d0009764:	79a1      	ldrb	r1, [r4, #6]
d0009766:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d000976a:	79e2      	ldrb	r2, [r4, #7]
d000976c:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0009770:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0009774:	681b      	ldr	r3, [r3, #0]
d0009776:	68db      	ldr	r3, [r3, #12]
d0009778:	4798      	blx	r3
d000977a:	4807      	ldr	r0, [pc, #28]	; (d0009798 <load_file+0x154>)
d000977c:	f7ff ff34 	bl	d00095e8 <set_status>
d0009780:	e7bf      	b.n	d0009702 <load_file+0xbe>
d0009782:	bf00      	nop
d0009784:	2001f000 	.word	0x2001f000
d0009788:	d000e0d0 	.word	0xd000e0d0
d000978c:	d000fa7c 	.word	0xd000fa7c
d0009790:	d000e0a4 	.word	0xd000e0a4
d0009794:	d000e08c 	.word	0xd000e08c
d0009798:	d000e0b4 	.word	0xd000e0b4

d000979c <draw_message.constprop.0>:
d000979c:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
d00097a0:	4c68      	ldr	r4, [pc, #416]	; (d0009944 <draw_message.constprop.0+0x1a8>)
d00097a2:	4606      	mov	r6, r0
d00097a4:	4d68      	ldr	r5, [pc, #416]	; (d0009948 <draw_message.constprop.0+0x1ac>)
d00097a6:	b082      	sub	sp, #8
d00097a8:	7b22      	ldrb	r2, [r4, #12]
d00097aa:	f04f 0902 	mov.w	r9, #2
d00097ae:	7b63      	ldrb	r3, [r4, #13]
d00097b0:	7ba0      	ldrb	r0, [r4, #14]
d00097b2:	ea42 2303 	orr.w	r3, r2, r3, lsl #8
d00097b6:	7be1      	ldrb	r1, [r4, #15]
d00097b8:	f8df 8198 	ldr.w	r8, [pc, #408]	; d0009954 <draw_message.constprop.0+0x1b8>
d00097bc:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
d00097c0:	4862      	ldr	r0, [pc, #392]	; (d000994c <draw_message.constprop.0+0x1b0>)
d00097c2:	4f63      	ldr	r7, [pc, #396]	; (d0009950 <draw_message.constprop.0+0x1b4>)
d00097c4:	ea43 6301 	orr.w	r3, r3, r1, lsl #24
d00097c8:	f8df a18c 	ldr.w	sl, [pc, #396]	; d0009958 <draw_message.constprop.0+0x1bc>
d00097cc:	681b      	ldr	r3, [r3, #0]
d00097ce:	6cdb      	ldr	r3, [r3, #76]	; 0x4c
d00097d0:	4798      	blx	r3
d00097d2:	782b      	ldrb	r3, [r5, #0]
d00097d4:	2b00      	cmp	r3, #0
d00097d6:	f000 809b 	beq.w	d0009910 <draw_message.constprop.0+0x174>
d00097da:	f8d8 0000 	ldr.w	r0, [r8]
d00097de:	f894 c00c 	ldrb.w	ip, [r4, #12]
d00097e2:	7b61      	ldrb	r1, [r4, #13]
d00097e4:	7ba2      	ldrb	r2, [r4, #14]
d00097e6:	ea4c 2101 	orr.w	r1, ip, r1, lsl #8
d00097ea:	7be3      	ldrb	r3, [r4, #15]
d00097ec:	9001      	str	r0, [sp, #4]
d00097ee:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d00097f2:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d00097f6:	681b      	ldr	r3, [r3, #0]
d00097f8:	68db      	ldr	r3, [r3, #12]
d00097fa:	4798      	blx	r3
d00097fc:	7b23      	ldrb	r3, [r4, #12]
d00097fe:	7b61      	ldrb	r1, [r4, #13]
d0009800:	7ba2      	ldrb	r2, [r4, #14]
d0009802:	ea43 2101 	orr.w	r1, r3, r1, lsl #8
d0009806:	7be3      	ldrb	r3, [r4, #15]
d0009808:	9801      	ldr	r0, [sp, #4]
d000980a:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d000980e:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0009812:	681b      	ldr	r3, [r3, #0]
d0009814:	699b      	ldr	r3, [r3, #24]
d0009816:	4798      	blx	r3
d0009818:	f894 c00c 	ldrb.w	ip, [r4, #12]
d000981c:	7b61      	ldrb	r1, [r4, #13]
d000981e:	2000      	movs	r0, #0
d0009820:	7ba2      	ldrb	r2, [r4, #14]
d0009822:	ea4c 2101 	orr.w	r1, ip, r1, lsl #8
d0009826:	7be3      	ldrb	r3, [r4, #15]
d0009828:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d000982c:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0009830:	685b      	ldr	r3, [r3, #4]
d0009832:	68db      	ldr	r3, [r3, #12]
d0009834:	4798      	blx	r3
d0009836:	7b20      	ldrb	r0, [r4, #12]
d0009838:	7b61      	ldrb	r1, [r4, #13]
d000983a:	7ba2      	ldrb	r2, [r4, #14]
d000983c:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d0009840:	7be3      	ldrb	r3, [r4, #15]
d0009842:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d0009846:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d000984a:	685b      	ldr	r3, [r3, #4]
d000984c:	681b      	ldr	r3, [r3, #0]
d000984e:	4798      	blx	r3
d0009850:	f894 c00c 	ldrb.w	ip, [r4, #12]
d0009854:	7b61      	ldrb	r1, [r4, #13]
d0009856:	2001      	movs	r0, #1
d0009858:	7ba2      	ldrb	r2, [r4, #14]
d000985a:	ea4c 2101 	orr.w	r1, ip, r1, lsl #8
d000985e:	7be3      	ldrb	r3, [r4, #15]
d0009860:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d0009864:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0009868:	685b      	ldr	r3, [r3, #4]
d000986a:	68db      	ldr	r3, [r3, #12]
d000986c:	4798      	blx	r3
d000986e:	f894 e00c 	ldrb.w	lr, [r4, #12]
d0009872:	7b60      	ldrb	r0, [r4, #13]
d0009874:	4652      	mov	r2, sl
d0009876:	f894 c00e 	ldrb.w	ip, [r4, #14]
d000987a:	2178      	movs	r1, #120	; 0x78
d000987c:	ea4e 2000 	orr.w	r0, lr, r0, lsl #8
d0009880:	7be3      	ldrb	r3, [r4, #15]
d0009882:	ea40 4c0c 	orr.w	ip, r0, ip, lsl #16
d0009886:	2018      	movs	r0, #24
d0009888:	ea4c 6303 	orr.w	r3, ip, r3, lsl #24
d000988c:	685b      	ldr	r3, [r3, #4]
d000988e:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d0009890:	4798      	blx	r3
d0009892:	f894 e00c 	ldrb.w	lr, [r4, #12]
d0009896:	7b60      	ldrb	r0, [r4, #13]
d0009898:	4632      	mov	r2, r6
d000989a:	f894 c00e 	ldrb.w	ip, [r4, #14]
d000989e:	2190      	movs	r1, #144	; 0x90
d00098a0:	ea4e 2000 	orr.w	r0, lr, r0, lsl #8
d00098a4:	7be3      	ldrb	r3, [r4, #15]
d00098a6:	ea40 4c0c 	orr.w	ip, r0, ip, lsl #16
d00098aa:	2018      	movs	r0, #24
d00098ac:	ea4c 6303 	orr.w	r3, ip, r3, lsl #24
d00098b0:	685b      	ldr	r3, [r3, #4]
d00098b2:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d00098b4:	4798      	blx	r3
d00098b6:	782b      	ldrb	r3, [r5, #0]
d00098b8:	f1c3 0301 	rsb	r3, r3, #1
d00098bc:	b2db      	uxtb	r3, r3
d00098be:	702b      	strb	r3, [r5, #0]
d00098c0:	782b      	ldrb	r3, [r5, #0]
d00098c2:	7b21      	ldrb	r1, [r4, #12]
d00098c4:	7b60      	ldrb	r0, [r4, #13]
d00098c6:	7ba2      	ldrb	r2, [r4, #14]
d00098c8:	ea41 2000 	orr.w	r0, r1, r0, lsl #8
d00098cc:	b313      	cbz	r3, d0009914 <draw_message.constprop.0+0x178>
d00098ce:	ea40 4202 	orr.w	r2, r0, r2, lsl #16
d00098d2:	7be3      	ldrb	r3, [r4, #15]
d00098d4:	6839      	ldr	r1, [r7, #0]
d00098d6:	f8d8 0000 	ldr.w	r0, [r8]
d00098da:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d00098de:	681b      	ldr	r3, [r3, #0]
d00098e0:	6a5b      	ldr	r3, [r3, #36]	; 0x24
d00098e2:	4798      	blx	r3
d00098e4:	7b20      	ldrb	r0, [r4, #12]
d00098e6:	7b61      	ldrb	r1, [r4, #13]
d00098e8:	7ba2      	ldrb	r2, [r4, #14]
d00098ea:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d00098ee:	7be3      	ldrb	r3, [r4, #15]
d00098f0:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d00098f4:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d00098f8:	681b      	ldr	r3, [r3, #0]
d00098fa:	681b      	ldr	r3, [r3, #0]
d00098fc:	4798      	blx	r3
d00098fe:	f1b9 0f01 	cmp.w	r9, #1
d0009902:	d00e      	beq.n	d0009922 <draw_message.constprop.0+0x186>
d0009904:	782b      	ldrb	r3, [r5, #0]
d0009906:	f04f 0901 	mov.w	r9, #1
d000990a:	2b00      	cmp	r3, #0
d000990c:	f47f af65 	bne.w	d00097da <draw_message.constprop.0+0x3e>
d0009910:	6838      	ldr	r0, [r7, #0]
d0009912:	e764      	b.n	d00097de <draw_message.constprop.0+0x42>
d0009914:	ea40 4202 	orr.w	r2, r0, r2, lsl #16
d0009918:	7be3      	ldrb	r3, [r4, #15]
d000991a:	f8d8 1000 	ldr.w	r1, [r8]
d000991e:	6838      	ldr	r0, [r7, #0]
d0009920:	e7db      	b.n	d00098da <draw_message.constprop.0+0x13e>
d0009922:	7b23      	ldrb	r3, [r4, #12]
d0009924:	7b62      	ldrb	r2, [r4, #13]
d0009926:	7ba1      	ldrb	r1, [r4, #14]
d0009928:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d000992c:	7be2      	ldrb	r2, [r4, #15]
d000992e:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0009932:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0009936:	681b      	ldr	r3, [r3, #0]
d0009938:	68db      	ldr	r3, [r3, #12]
d000993a:	b002      	add	sp, #8
d000993c:	e8bd 47f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
d0009940:	4718      	bx	r3
d0009942:	bf00      	nop
d0009944:	2001f000 	.word	0x2001f000
d0009948:	d000f26c 	.word	0xd000f26c
d000994c:	d000f270 	.word	0xd000f270
d0009950:	d000fb80 	.word	0xd000fb80
d0009954:	d000fba0 	.word	0xd000fba0
d0009958:	d000e0e4 	.word	0xd000e0e4
d000995c:	00000000 	.word	0x00000000

d0009960 <decode_pjpeg_mcus_to_image.constprop.0>:
d0009960:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0009964:	6804      	ldr	r4, [r0, #0]
d0009966:	b089      	sub	sp, #36	; 0x24
d0009968:	2c00      	cmp	r4, #0
d000996a:	dd0b      	ble.n	d0009984 <decode_pjpeg_mcus_to_image.constprop.0+0x24>
d000996c:	6842      	ldr	r2, [r0, #4]
d000996e:	4680      	mov	r8, r0
d0009970:	1e51      	subs	r1, r2, #1
d0009972:	f5b1 5f80 	cmp.w	r1, #4096	; 0x1000
d0009976:	d205      	bcs.n	d0009984 <decode_pjpeg_mcus_to_image.constprop.0+0x24>
d0009978:	f5b4 5f80 	cmp.w	r4, #4096	; 0x1000
d000997c:	bfd4      	ite	le
d000997e:	2500      	movle	r5, #0
d0009980:	2501      	movgt	r5, #1
d0009982:	b135      	cbz	r5, d0009992 <decode_pjpeg_mcus_to_image.constprop.0+0x32>
d0009984:	4880      	ldr	r0, [pc, #512]	; (d0009b88 <decode_pjpeg_mcus_to_image.constprop.0+0x228>)
d0009986:	f7ff fe2f 	bl	d00095e8 <set_status>
d000998a:	2000      	movs	r0, #0
d000998c:	b009      	add	sp, #36	; 0x24
d000998e:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0009992:	fb84 0102 	smull	r0, r1, r4, r2
d0009996:	a77a      	add	r7, pc, #488	; (adr r7, d0009b80 <decode_pjpeg_mcus_to_image.constprop.0+0x220>)
d0009998:	e9d7 6700 	ldrd	r6, r7, [r7]
d000999c:	428f      	cmp	r7, r1
d000999e:	bf08      	it	eq
d00099a0:	4286      	cmpeq	r6, r0
d00099a2:	d3ef      	bcc.n	d0009984 <decode_pjpeg_mcus_to_image.constprop.0+0x24>
d00099a4:	4b79      	ldr	r3, [pc, #484]	; (d0009b8c <decode_pjpeg_mcus_to_image.constprop.0+0x22c>)
d00099a6:	fb02 f004 	mul.w	r0, r2, r4
d00099aa:	801c      	strh	r4, [r3, #0]
d00099ac:	805a      	strh	r2, [r3, #2]
d00099ae:	f002 fe6f 	bl	d000c690 <malloc>
d00099b2:	4b76      	ldr	r3, [pc, #472]	; (d0009b8c <decode_pjpeg_mcus_to_image.constprop.0+0x22c>)
d00099b4:	4604      	mov	r4, r0
d00099b6:	6058      	str	r0, [r3, #4]
d00099b8:	2800      	cmp	r0, #0
d00099ba:	f000 80d9 	beq.w	d0009b70 <decode_pjpeg_mcus_to_image.constprop.0+0x210>
d00099be:	f103 000c 	add.w	r0, r3, #12
d00099c2:	9507      	str	r5, [sp, #28]
d00099c4:	f7ff fc04 	bl	d00091d0 <init_rgb332_palette>
d00099c8:	f8d8 1010 	ldr.w	r1, [r8, #16]
d00099cc:	f8bd 201c 	ldrh.w	r2, [sp, #28]
d00099d0:	4610      	mov	r0, r2
d00099d2:	9206      	str	r2, [sp, #24]
d00099d4:	b28a      	uxth	r2, r1
d00099d6:	4282      	cmp	r2, r0
d00099d8:	f240 80c8 	bls.w	d0009b6c <decode_pjpeg_mcus_to_image.constprop.0+0x20c>
d00099dc:	f8b8 200c 	ldrh.w	r2, [r8, #12]
d00099e0:	2a00      	cmp	r2, #0
d00099e2:	f000 809c 	beq.w	d0009b1e <decode_pjpeg_mcus_to_image.constprop.0+0x1be>
d00099e6:	2200      	movs	r2, #0
d00099e8:	f8d8 101c 	ldr.w	r1, [r8, #28]
d00099ec:	9205      	str	r2, [sp, #20]
d00099ee:	9b06      	ldr	r3, [sp, #24]
d00099f0:	f8d8 2018 	ldr.w	r2, [r8, #24]
d00099f4:	fb11 f103 	smulbb	r1, r1, r3
d00099f8:	9b05      	ldr	r3, [sp, #20]
d00099fa:	fb12 f203 	smulbb	r2, r2, r3
d00099fe:	b28b      	uxth	r3, r1
d0009a00:	461c      	mov	r4, r3
d0009a02:	b293      	uxth	r3, r2
d0009a04:	9304      	str	r3, [sp, #16]
d0009a06:	f7fd fbbd 	bl	d0007184 <pjpeg_decode_mcu>
d0009a0a:	2800      	cmp	r0, #0
d0009a0c:	f040 80a3 	bne.w	d0009b56 <decode_pjpeg_mcus_to_image.constprop.0+0x1f6>
d0009a10:	f8d8 101c 	ldr.w	r1, [r8, #28]
d0009a14:	4b5d      	ldr	r3, [pc, #372]	; (d0009b8c <decode_pjpeg_mcus_to_image.constprop.0+0x22c>)
d0009a16:	b28a      	uxth	r2, r1
d0009a18:	2a00      	cmp	r2, #0
d0009a1a:	d075      	beq.n	d0009b08 <decode_pjpeg_mcus_to_image.constprop.0+0x1a8>
d0009a1c:	4686      	mov	lr, r0
d0009a1e:	4627      	mov	r7, r4
d0009a20:	9002      	str	r0, [sp, #8]
d0009a22:	885a      	ldrh	r2, [r3, #2]
d0009a24:	42ba      	cmp	r2, r7
d0009a26:	d96f      	bls.n	d0009b08 <decode_pjpeg_mcus_to_image.constprop.0+0x1a8>
d0009a28:	881c      	ldrh	r4, [r3, #0]
d0009a2a:	685d      	ldr	r5, [r3, #4]
d0009a2c:	f8b8 2018 	ldrh.w	r2, [r8, #24]
d0009a30:	fb04 5507 	mla	r5, r4, r7, r5
d0009a34:	2a00      	cmp	r2, #0
d0009a36:	d05d      	beq.n	d0009af4 <decode_pjpeg_mcus_to_image.constprop.0+0x194>
d0009a38:	ea4f 02de 	mov.w	r2, lr, lsr #3
d0009a3c:	f00e 0c07 	and.w	ip, lr, #7
d0009a40:	ea4f 06ce 	mov.w	r6, lr, lsl #3
d0009a44:	2000      	movs	r0, #0
d0009a46:	eb0c 1902 	add.w	r9, ip, r2, lsl #4
d0009a4a:	9904      	ldr	r1, [sp, #16]
d0009a4c:	0052      	lsls	r2, r2, #1
d0009a4e:	9703      	str	r7, [sp, #12]
d0009a50:	ea4f 09c9 	mov.w	r9, r9, lsl #3
d0009a54:	9201      	str	r2, [sp, #4]
d0009a56:	b2b6      	uxth	r6, r6
d0009a58:	fa1f f289 	uxth.w	r2, r9
d0009a5c:	9200      	str	r2, [sp, #0]
d0009a5e:	4602      	mov	r2, r0
d0009a60:	e01c      	b.n	d0009a9c <decode_pjpeg_mcus_to_image.constprop.0+0x13c>
d0009a62:	f8d8 7024 	ldr.w	r7, [r8, #36]	; 0x24
d0009a66:	f814 a002 	ldrb.w	sl, [r4, r2]
d0009a6a:	f817 9002 	ldrb.w	r9, [r7, r2]
d0009a6e:	f8d8 4028 	ldr.w	r4, [r8, #40]	; 0x28
d0009a72:	f02a 0a1f 	bic.w	sl, sl, #31
d0009a76:	ea4f 09d9 	mov.w	r9, r9, lsr #3
d0009a7a:	5ca2      	ldrb	r2, [r4, r2]
d0009a7c:	1c4c      	adds	r4, r1, #1
d0009a7e:	f009 091c 	and.w	r9, r9, #28
d0009a82:	ea4a 1a92 	orr.w	sl, sl, r2, lsr #6
d0009a86:	b282      	uxth	r2, r0
d0009a88:	ea4a 0909 	orr.w	r9, sl, r9
d0009a8c:	f805 9001 	strb.w	r9, [r5, r1]
d0009a90:	b2a1      	uxth	r1, r4
d0009a92:	f8b8 4018 	ldrh.w	r4, [r8, #24]
d0009a96:	4294      	cmp	r4, r2
d0009a98:	d929      	bls.n	d0009aee <decode_pjpeg_mcus_to_image.constprop.0+0x18e>
d0009a9a:	881c      	ldrh	r4, [r3, #0]
d0009a9c:	428c      	cmp	r4, r1
d0009a9e:	d926      	bls.n	d0009aee <decode_pjpeg_mcus_to_image.constprop.0+0x18e>
d0009aa0:	f898 4014 	ldrb.w	r4, [r8, #20]
d0009aa4:	2c03      	cmp	r4, #3
d0009aa6:	d047      	beq.n	d0009b38 <decode_pjpeg_mcus_to_image.constprop.0+0x1d8>
d0009aa8:	2c04      	cmp	r4, #4
d0009aaa:	d049      	beq.n	d0009b40 <decode_pjpeg_mcus_to_image.constprop.0+0x1e0>
d0009aac:	2c02      	cmp	r4, #2
d0009aae:	d03a      	beq.n	d0009b26 <decode_pjpeg_mcus_to_image.constprop.0+0x1c6>
d0009ab0:	4432      	add	r2, r6
d0009ab2:	b292      	uxth	r2, r2
d0009ab4:	f8d8 4008 	ldr.w	r4, [r8, #8]
d0009ab8:	3001      	adds	r0, #1
d0009aba:	2c01      	cmp	r4, #1
d0009abc:	f8d8 4020 	ldr.w	r4, [r8, #32]
d0009ac0:	d1cf      	bne.n	d0009a62 <decode_pjpeg_mcus_to_image.constprop.0+0x102>
d0009ac2:	f814 b002 	ldrb.w	fp, [r4, r2]
d0009ac6:	b282      	uxth	r2, r0
d0009ac8:	f101 0901 	add.w	r9, r1, #1
d0009acc:	f02b 041f 	bic.w	r4, fp, #31
d0009ad0:	ea4f 0adb 	mov.w	sl, fp, lsr #3
d0009ad4:	ea44 149b 	orr.w	r4, r4, fp, lsr #6
d0009ad8:	f00a 0a1c 	and.w	sl, sl, #28
d0009adc:	ea44 040a 	orr.w	r4, r4, sl
d0009ae0:	546c      	strb	r4, [r5, r1]
d0009ae2:	fa1f f189 	uxth.w	r1, r9
d0009ae6:	f8b8 4018 	ldrh.w	r4, [r8, #24]
d0009aea:	4294      	cmp	r4, r2
d0009aec:	d8d5      	bhi.n	d0009a9a <decode_pjpeg_mcus_to_image.constprop.0+0x13a>
d0009aee:	9f03      	ldr	r7, [sp, #12]
d0009af0:	f8d8 101c 	ldr.w	r1, [r8, #28]
d0009af4:	9802      	ldr	r0, [sp, #8]
d0009af6:	b28a      	uxth	r2, r1
d0009af8:	3701      	adds	r7, #1
d0009afa:	3001      	adds	r0, #1
d0009afc:	b2bf      	uxth	r7, r7
d0009afe:	fa1f fe80 	uxth.w	lr, r0
d0009b02:	9002      	str	r0, [sp, #8]
d0009b04:	4572      	cmp	r2, lr
d0009b06:	d88c      	bhi.n	d0009a22 <decode_pjpeg_mcus_to_image.constprop.0+0xc2>
d0009b08:	9a05      	ldr	r2, [sp, #20]
d0009b0a:	f8b8 000c 	ldrh.w	r0, [r8, #12]
d0009b0e:	3201      	adds	r2, #1
d0009b10:	9205      	str	r2, [sp, #20]
d0009b12:	b292      	uxth	r2, r2
d0009b14:	4290      	cmp	r0, r2
d0009b16:	f63f af6a 	bhi.w	d00099ee <decode_pjpeg_mcus_to_image.constprop.0+0x8e>
d0009b1a:	f8d8 1010 	ldr.w	r1, [r8, #16]
d0009b1e:	9a07      	ldr	r2, [sp, #28]
d0009b20:	3201      	adds	r2, #1
d0009b22:	9207      	str	r2, [sp, #28]
d0009b24:	e752      	b.n	d00099cc <decode_pjpeg_mcus_to_image.constprop.0+0x6c>
d0009b26:	08d4      	lsrs	r4, r2, #3
d0009b28:	f002 0207 	and.w	r2, r2, #7
d0009b2c:	eb0e 04c4 	add.w	r4, lr, r4, lsl #3
d0009b30:	eb02 02c4 	add.w	r2, r2, r4, lsl #3
d0009b34:	b292      	uxth	r2, r2
d0009b36:	e7bd      	b.n	d0009ab4 <decode_pjpeg_mcus_to_image.constprop.0+0x154>
d0009b38:	9c00      	ldr	r4, [sp, #0]
d0009b3a:	4422      	add	r2, r4
d0009b3c:	b292      	uxth	r2, r2
d0009b3e:	e7b9      	b.n	d0009ab4 <decode_pjpeg_mcus_to_image.constprop.0+0x154>
d0009b40:	9c01      	ldr	r4, [sp, #4]
d0009b42:	eb04 04d2 	add.w	r4, r4, r2, lsr #3
d0009b46:	f002 0207 	and.w	r2, r2, #7
d0009b4a:	eb0c 04c4 	add.w	r4, ip, r4, lsl #3
d0009b4e:	eb02 02c4 	add.w	r2, r2, r4, lsl #3
d0009b52:	b292      	uxth	r2, r2
d0009b54:	e7ae      	b.n	d0009ab4 <decode_pjpeg_mcus_to_image.constprop.0+0x154>
d0009b56:	4603      	mov	r3, r0
d0009b58:	4a0d      	ldr	r2, [pc, #52]	; (d0009b90 <decode_pjpeg_mcus_to_image.constprop.0+0x230>)
d0009b5a:	21a0      	movs	r1, #160	; 0xa0
d0009b5c:	480d      	ldr	r0, [pc, #52]	; (d0009b94 <decode_pjpeg_mcus_to_image.constprop.0+0x234>)
d0009b5e:	f003 fa59 	bl	d000d014 <sniprintf>
d0009b62:	480c      	ldr	r0, [pc, #48]	; (d0009b94 <decode_pjpeg_mcus_to_image.constprop.0+0x234>)
d0009b64:	f7ff fd40 	bl	d00095e8 <set_status>
d0009b68:	2000      	movs	r0, #0
d0009b6a:	e70f      	b.n	d000998c <decode_pjpeg_mcus_to_image.constprop.0+0x2c>
d0009b6c:	2001      	movs	r0, #1
d0009b6e:	e70d      	b.n	d000998c <decode_pjpeg_mcus_to_image.constprop.0+0x2c>
d0009b70:	4809      	ldr	r0, [pc, #36]	; (d0009b98 <decode_pjpeg_mcus_to_image.constprop.0+0x238>)
d0009b72:	f7ff fd39 	bl	d00095e8 <set_status>
d0009b76:	4620      	mov	r0, r4
d0009b78:	e708      	b.n	d000998c <decode_pjpeg_mcus_to_image.constprop.0+0x2c>
d0009b7a:	bf00      	nop
d0009b7c:	f3af 8000 	nop.w
d0009b80:	004c4b40 	.word	0x004c4b40
d0009b84:	00000000 	.word	0x00000000
d0009b88:	d000e0f4 	.word	0xd000e0f4
d0009b8c:	d000f670 	.word	0xd000f670
d0009b90:	d000e13c 	.word	0xd000e13c
d0009b94:	d000fa7c 	.word	0xd000fa7c
d0009b98:	d000e118 	.word	0xd000e118
d0009b9c:	00000000 	.word	0x00000000

d0009ba0 <load_stb_jpeg_from_file.constprop.0>:
d0009ba0:	4a4f      	ldr	r2, [pc, #316]	; (d0009ce0 <load_stb_jpeg_from_file.constprop.0+0x140>)
d0009ba2:	2100      	movs	r1, #0
d0009ba4:	e92d 43f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
d0009ba8:	7913      	ldrb	r3, [r2, #4]
d0009baa:	b089      	sub	sp, #36	; 0x24
d0009bac:	4d4d      	ldr	r5, [pc, #308]	; (d0009ce4 <load_stb_jpeg_from_file.constprop.0+0x144>)
d0009bae:	4604      	mov	r4, r0
d0009bb0:	7950      	ldrb	r0, [r2, #5]
d0009bb2:	9505      	str	r5, [sp, #20]
d0009bb4:	ea43 2300 	orr.w	r3, r3, r0, lsl #8
d0009bb8:	7995      	ldrb	r5, [r2, #6]
d0009bba:	79d0      	ldrb	r0, [r2, #7]
d0009bbc:	ea43 4305 	orr.w	r3, r3, r5, lsl #16
d0009bc0:	4a49      	ldr	r2, [pc, #292]	; (d0009ce8 <load_stb_jpeg_from_file.constprop.0+0x148>)
d0009bc2:	4d4a      	ldr	r5, [pc, #296]	; (d0009cec <load_stb_jpeg_from_file.constprop.0+0x14c>)
d0009bc4:	ea43 6300 	orr.w	r3, r3, r0, lsl #24
d0009bc8:	7820      	ldrb	r0, [r4, #0]
d0009bca:	9506      	str	r5, [sp, #24]
d0009bcc:	681b      	ldr	r3, [r3, #0]
d0009bce:	9207      	str	r2, [sp, #28]
d0009bd0:	695b      	ldr	r3, [r3, #20]
d0009bd2:	4798      	blx	r3
d0009bd4:	bb28      	cbnz	r0, d0009c22 <load_stb_jpeg_from_file.constprop.0+0x82>
d0009bd6:	2303      	movs	r3, #3
d0009bd8:	aa04      	add	r2, sp, #16
d0009bda:	60a0      	str	r0, [r4, #8]
d0009bdc:	4621      	mov	r1, r4
d0009bde:	9301      	str	r3, [sp, #4]
d0009be0:	a805      	add	r0, sp, #20
d0009be2:	9200      	str	r2, [sp, #0]
d0009be4:	ab03      	add	r3, sp, #12
d0009be6:	aa02      	add	r2, sp, #8
d0009be8:	f7fc f84a 	bl	d0005c80 <stbi_load_from_callbacks>
d0009bec:	4604      	mov	r4, r0
d0009bee:	2800      	cmp	r0, #0
d0009bf0:	d058      	beq.n	d0009ca4 <load_stb_jpeg_from_file.constprop.0+0x104>
d0009bf2:	9b02      	ldr	r3, [sp, #8]
d0009bf4:	2b00      	cmp	r3, #0
d0009bf6:	dd0a      	ble.n	d0009c0e <load_stb_jpeg_from_file.constprop.0+0x6e>
d0009bf8:	9a03      	ldr	r2, [sp, #12]
d0009bfa:	1e51      	subs	r1, r2, #1
d0009bfc:	f5b1 5f80 	cmp.w	r1, #4096	; 0x1000
d0009c00:	d205      	bcs.n	d0009c0e <load_stb_jpeg_from_file.constprop.0+0x6e>
d0009c02:	f5b3 5f80 	cmp.w	r3, #4096	; 0x1000
d0009c06:	bfd4      	ite	le
d0009c08:	2600      	movle	r6, #0
d0009c0a:	2601      	movgt	r6, #1
d0009c0c:	b176      	cbz	r6, d0009c2c <load_stb_jpeg_from_file.constprop.0+0x8c>
d0009c0e:	4620      	mov	r0, r4
d0009c10:	f7fc f81c 	bl	d0005c4c <stbi_image_free>
d0009c14:	4836      	ldr	r0, [pc, #216]	; (d0009cf0 <load_stb_jpeg_from_file.constprop.0+0x150>)
d0009c16:	f7ff fce7 	bl	d00095e8 <set_status>
d0009c1a:	2000      	movs	r0, #0
d0009c1c:	b009      	add	sp, #36	; 0x24
d0009c1e:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
d0009c22:	4834      	ldr	r0, [pc, #208]	; (d0009cf4 <load_stb_jpeg_from_file.constprop.0+0x154>)
d0009c24:	f7ff fce0 	bl	d00095e8 <set_status>
d0009c28:	2000      	movs	r0, #0
d0009c2a:	e7f7      	b.n	d0009c1c <load_stb_jpeg_from_file.constprop.0+0x7c>
d0009c2c:	fb83 0102 	smull	r0, r1, r3, r2
d0009c30:	f20f 09a4 	addw	r9, pc, #164	; 0xa4
d0009c34:	e9d9 8900 	ldrd	r8, r9, [r9]
d0009c38:	4589      	cmp	r9, r1
d0009c3a:	bf08      	it	eq
d0009c3c:	4580      	cmpeq	r8, r0
d0009c3e:	d3e6      	bcc.n	d0009c0e <load_stb_jpeg_from_file.constprop.0+0x6e>
d0009c40:	4d2d      	ldr	r5, [pc, #180]	; (d0009cf8 <load_stb_jpeg_from_file.constprop.0+0x158>)
d0009c42:	fb02 f003 	mul.w	r0, r2, r3
d0009c46:	802b      	strh	r3, [r5, #0]
d0009c48:	806a      	strh	r2, [r5, #2]
d0009c4a:	f002 fd21 	bl	d000c690 <malloc>
d0009c4e:	4607      	mov	r7, r0
d0009c50:	6068      	str	r0, [r5, #4]
d0009c52:	2800      	cmp	r0, #0
d0009c54:	d036      	beq.n	d0009cc4 <load_stb_jpeg_from_file.constprop.0+0x124>
d0009c56:	f105 000c 	add.w	r0, r5, #12
d0009c5a:	f7ff fab9 	bl	d00091d0 <init_rgb332_palette>
d0009c5e:	886a      	ldrh	r2, [r5, #2]
d0009c60:	882b      	ldrh	r3, [r5, #0]
d0009c62:	fb03 f302 	mul.w	r3, r3, r2
d0009c66:	b1c3      	cbz	r3, d0009c9a <load_stb_jpeg_from_file.constprop.0+0xfa>
d0009c68:	4631      	mov	r1, r6
d0009c6a:	4626      	mov	r6, r4
d0009c6c:	7833      	ldrb	r3, [r6, #0]
d0009c6e:	3603      	adds	r6, #3
d0009c70:	f816 2c02 	ldrb.w	r2, [r6, #-2]
d0009c74:	f816 0c01 	ldrb.w	r0, [r6, #-1]
d0009c78:	f023 031f 	bic.w	r3, r3, #31
d0009c7c:	08d2      	lsrs	r2, r2, #3
d0009c7e:	ea43 1390 	orr.w	r3, r3, r0, lsr #6
d0009c82:	6868      	ldr	r0, [r5, #4]
d0009c84:	f002 021c 	and.w	r2, r2, #28
d0009c88:	4313      	orrs	r3, r2
d0009c8a:	5443      	strb	r3, [r0, r1]
d0009c8c:	3101      	adds	r1, #1
d0009c8e:	882a      	ldrh	r2, [r5, #0]
d0009c90:	886b      	ldrh	r3, [r5, #2]
d0009c92:	fb03 f302 	mul.w	r3, r3, r2
d0009c96:	4299      	cmp	r1, r3
d0009c98:	d3e8      	bcc.n	d0009c6c <load_stb_jpeg_from_file.constprop.0+0xcc>
d0009c9a:	4620      	mov	r0, r4
d0009c9c:	f7fb ffd6 	bl	d0005c4c <stbi_image_free>
d0009ca0:	2001      	movs	r0, #1
d0009ca2:	e7bb      	b.n	d0009c1c <load_stb_jpeg_from_file.constprop.0+0x7c>
d0009ca4:	f7fb ffcc 	bl	d0005c40 <stbi_failure_reason>
d0009ca8:	4b14      	ldr	r3, [pc, #80]	; (d0009cfc <load_stb_jpeg_from_file.constprop.0+0x15c>)
d0009caa:	21a0      	movs	r1, #160	; 0xa0
d0009cac:	4a14      	ldr	r2, [pc, #80]	; (d0009d00 <load_stb_jpeg_from_file.constprop.0+0x160>)
d0009cae:	2800      	cmp	r0, #0
d0009cb0:	bf18      	it	ne
d0009cb2:	4603      	movne	r3, r0
d0009cb4:	4813      	ldr	r0, [pc, #76]	; (d0009d04 <load_stb_jpeg_from_file.constprop.0+0x164>)
d0009cb6:	f003 f9ad 	bl	d000d014 <sniprintf>
d0009cba:	4812      	ldr	r0, [pc, #72]	; (d0009d04 <load_stb_jpeg_from_file.constprop.0+0x164>)
d0009cbc:	f7ff fc94 	bl	d00095e8 <set_status>
d0009cc0:	4620      	mov	r0, r4
d0009cc2:	e7ab      	b.n	d0009c1c <load_stb_jpeg_from_file.constprop.0+0x7c>
d0009cc4:	4620      	mov	r0, r4
d0009cc6:	f7fb ffc1 	bl	d0005c4c <stbi_image_free>
d0009cca:	480f      	ldr	r0, [pc, #60]	; (d0009d08 <load_stb_jpeg_from_file.constprop.0+0x168>)
d0009ccc:	f7ff fc8c 	bl	d00095e8 <set_status>
d0009cd0:	4638      	mov	r0, r7
d0009cd2:	e7a3      	b.n	d0009c1c <load_stb_jpeg_from_file.constprop.0+0x7c>
d0009cd4:	f3af 8000 	nop.w
d0009cd8:	004c4b40 	.word	0x004c4b40
d0009cdc:	00000000 	.word	0x00000000
d0009ce0:	2001f000 	.word	0x2001f000
d0009ce4:	d00094fd 	.word	0xd00094fd
d0009ce8:	d00095a9 	.word	0xd00095a9
d0009cec:	d0009545 	.word	0xd0009545
d0009cf0:	d000e0f4 	.word	0xd000e0f4
d0009cf4:	d000e15c 	.word	0xd000e15c
d0009cf8:	d000f670 	.word	0xd000f670
d0009cfc:	d000e154 	.word	0xd000e154
d0009d00:	d000e170 	.word	0xd000e170
d0009d04:	d000fa7c 	.word	0xd000fa7c
d0009d08:	d000e118 	.word	0xd000e118
d0009d0c:	00000000 	.word	0x00000000

d0009d10 <load_stb_jpeg_from_memory.constprop.0>:
d0009d10:	2900      	cmp	r1, #0
d0009d12:	e92d 43f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
d0009d16:	b087      	sub	sp, #28
d0009d18:	db22      	blt.n	d0009d60 <load_stb_jpeg_from_memory.constprop.0+0x50>
d0009d1a:	ac05      	add	r4, sp, #20
d0009d1c:	2503      	movs	r5, #3
d0009d1e:	ab04      	add	r3, sp, #16
d0009d20:	aa03      	add	r2, sp, #12
d0009d22:	e9cd 4500 	strd	r4, r5, [sp]
d0009d26:	f7fb ff93 	bl	d0005c50 <stbi_load_from_memory>
d0009d2a:	4604      	mov	r4, r0
d0009d2c:	2800      	cmp	r0, #0
d0009d2e:	d058      	beq.n	d0009de2 <load_stb_jpeg_from_memory.constprop.0+0xd2>
d0009d30:	9b03      	ldr	r3, [sp, #12]
d0009d32:	2b00      	cmp	r3, #0
d0009d34:	dd0a      	ble.n	d0009d4c <load_stb_jpeg_from_memory.constprop.0+0x3c>
d0009d36:	9a04      	ldr	r2, [sp, #16]
d0009d38:	1e51      	subs	r1, r2, #1
d0009d3a:	f5b1 5f80 	cmp.w	r1, #4096	; 0x1000
d0009d3e:	d205      	bcs.n	d0009d4c <load_stb_jpeg_from_memory.constprop.0+0x3c>
d0009d40:	f5b3 5f80 	cmp.w	r3, #4096	; 0x1000
d0009d44:	bfd4      	ite	le
d0009d46:	2600      	movle	r6, #0
d0009d48:	2601      	movgt	r6, #1
d0009d4a:	b176      	cbz	r6, d0009d6a <load_stb_jpeg_from_memory.constprop.0+0x5a>
d0009d4c:	4620      	mov	r0, r4
d0009d4e:	f7fb ff7d 	bl	d0005c4c <stbi_image_free>
d0009d52:	4833      	ldr	r0, [pc, #204]	; (d0009e20 <load_stb_jpeg_from_memory.constprop.0+0x110>)
d0009d54:	f7ff fc48 	bl	d00095e8 <set_status>
d0009d58:	2000      	movs	r0, #0
d0009d5a:	b007      	add	sp, #28
d0009d5c:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
d0009d60:	4830      	ldr	r0, [pc, #192]	; (d0009e24 <load_stb_jpeg_from_memory.constprop.0+0x114>)
d0009d62:	f7ff fc41 	bl	d00095e8 <set_status>
d0009d66:	2000      	movs	r0, #0
d0009d68:	e7f7      	b.n	d0009d5a <load_stb_jpeg_from_memory.constprop.0+0x4a>
d0009d6a:	fb83 0102 	smull	r0, r1, r3, r2
d0009d6e:	f20f 09a8 	addw	r9, pc, #168	; 0xa8
d0009d72:	e9d9 8900 	ldrd	r8, r9, [r9]
d0009d76:	4589      	cmp	r9, r1
d0009d78:	bf08      	it	eq
d0009d7a:	4580      	cmpeq	r8, r0
d0009d7c:	d3e6      	bcc.n	d0009d4c <load_stb_jpeg_from_memory.constprop.0+0x3c>
d0009d7e:	4d2a      	ldr	r5, [pc, #168]	; (d0009e28 <load_stb_jpeg_from_memory.constprop.0+0x118>)
d0009d80:	fb02 f003 	mul.w	r0, r2, r3
d0009d84:	802b      	strh	r3, [r5, #0]
d0009d86:	806a      	strh	r2, [r5, #2]
d0009d88:	f002 fc82 	bl	d000c690 <malloc>
d0009d8c:	4607      	mov	r7, r0
d0009d8e:	6068      	str	r0, [r5, #4]
d0009d90:	2800      	cmp	r0, #0
d0009d92:	d036      	beq.n	d0009e02 <load_stb_jpeg_from_memory.constprop.0+0xf2>
d0009d94:	f105 000c 	add.w	r0, r5, #12
d0009d98:	f7ff fa1a 	bl	d00091d0 <init_rgb332_palette>
d0009d9c:	886a      	ldrh	r2, [r5, #2]
d0009d9e:	882b      	ldrh	r3, [r5, #0]
d0009da0:	fb03 f302 	mul.w	r3, r3, r2
d0009da4:	b1c3      	cbz	r3, d0009dd8 <load_stb_jpeg_from_memory.constprop.0+0xc8>
d0009da6:	4631      	mov	r1, r6
d0009da8:	4626      	mov	r6, r4
d0009daa:	7833      	ldrb	r3, [r6, #0]
d0009dac:	3603      	adds	r6, #3
d0009dae:	f816 2c02 	ldrb.w	r2, [r6, #-2]
d0009db2:	f816 0c01 	ldrb.w	r0, [r6, #-1]
d0009db6:	f023 031f 	bic.w	r3, r3, #31
d0009dba:	08d2      	lsrs	r2, r2, #3
d0009dbc:	ea43 1390 	orr.w	r3, r3, r0, lsr #6
d0009dc0:	6868      	ldr	r0, [r5, #4]
d0009dc2:	f002 021c 	and.w	r2, r2, #28
d0009dc6:	4313      	orrs	r3, r2
d0009dc8:	5443      	strb	r3, [r0, r1]
d0009dca:	3101      	adds	r1, #1
d0009dcc:	882a      	ldrh	r2, [r5, #0]
d0009dce:	886b      	ldrh	r3, [r5, #2]
d0009dd0:	fb03 f302 	mul.w	r3, r3, r2
d0009dd4:	4299      	cmp	r1, r3
d0009dd6:	d3e8      	bcc.n	d0009daa <load_stb_jpeg_from_memory.constprop.0+0x9a>
d0009dd8:	4620      	mov	r0, r4
d0009dda:	f7fb ff37 	bl	d0005c4c <stbi_image_free>
d0009dde:	2001      	movs	r0, #1
d0009de0:	e7bb      	b.n	d0009d5a <load_stb_jpeg_from_memory.constprop.0+0x4a>
d0009de2:	f7fb ff2d 	bl	d0005c40 <stbi_failure_reason>
d0009de6:	4b11      	ldr	r3, [pc, #68]	; (d0009e2c <load_stb_jpeg_from_memory.constprop.0+0x11c>)
d0009de8:	21a0      	movs	r1, #160	; 0xa0
d0009dea:	4a11      	ldr	r2, [pc, #68]	; (d0009e30 <load_stb_jpeg_from_memory.constprop.0+0x120>)
d0009dec:	2800      	cmp	r0, #0
d0009dee:	bf18      	it	ne
d0009df0:	4603      	movne	r3, r0
d0009df2:	4810      	ldr	r0, [pc, #64]	; (d0009e34 <load_stb_jpeg_from_memory.constprop.0+0x124>)
d0009df4:	f003 f90e 	bl	d000d014 <sniprintf>
d0009df8:	480e      	ldr	r0, [pc, #56]	; (d0009e34 <load_stb_jpeg_from_memory.constprop.0+0x124>)
d0009dfa:	f7ff fbf5 	bl	d00095e8 <set_status>
d0009dfe:	4620      	mov	r0, r4
d0009e00:	e7ab      	b.n	d0009d5a <load_stb_jpeg_from_memory.constprop.0+0x4a>
d0009e02:	4620      	mov	r0, r4
d0009e04:	f7fb ff22 	bl	d0005c4c <stbi_image_free>
d0009e08:	480b      	ldr	r0, [pc, #44]	; (d0009e38 <load_stb_jpeg_from_memory.constprop.0+0x128>)
d0009e0a:	f7ff fbed 	bl	d00095e8 <set_status>
d0009e0e:	4638      	mov	r0, r7
d0009e10:	e7a3      	b.n	d0009d5a <load_stb_jpeg_from_memory.constprop.0+0x4a>
d0009e12:	bf00      	nop
d0009e14:	f3af 8000 	nop.w
d0009e18:	004c4b40 	.word	0x004c4b40
d0009e1c:	00000000 	.word	0x00000000
d0009e20:	d000e0f4 	.word	0xd000e0f4
d0009e24:	d000e18c 	.word	0xd000e18c
d0009e28:	d000f670 	.word	0xd000f670
d0009e2c:	d000e154 	.word	0xd000e154
d0009e30:	d000e170 	.word	0xd000e170
d0009e34:	d000fa7c 	.word	0xd000fa7c
d0009e38:	d000e118 	.word	0xd000e118

d0009e3c <load_hw_jpeg_from_memory.constprop.0>:
d0009e3c:	b5f0      	push	{r4, r5, r6, r7, lr}
d0009e3e:	4c3d      	ldr	r4, [pc, #244]	; (d0009f34 <load_hw_jpeg_from_memory.constprop.0+0xf8>)
d0009e40:	b083      	sub	sp, #12
d0009e42:	f894 3024 	ldrb.w	r3, [r4, #36]	; 0x24
d0009e46:	f894 2025 	ldrb.w	r2, [r4, #37]	; 0x25
d0009e4a:	f894 5026 	ldrb.w	r5, [r4, #38]	; 0x26
d0009e4e:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0009e52:	f894 2027 	ldrb.w	r2, [r4, #39]	; 0x27
d0009e56:	ea43 4305 	orr.w	r3, r3, r5, lsl #16
d0009e5a:	ea53 6302 	orrs.w	r3, r3, r2, lsl #24
d0009e5e:	d044      	beq.n	d0009eea <load_hw_jpeg_from_memory.constprop.0+0xae>
d0009e60:	f894 6024 	ldrb.w	r6, [r4, #36]	; 0x24
d0009e64:	f894 5025 	ldrb.w	r5, [r4, #37]	; 0x25
d0009e68:	f894 2026 	ldrb.w	r2, [r4, #38]	; 0x26
d0009e6c:	ea46 2505 	orr.w	r5, r6, r5, lsl #8
d0009e70:	f894 3027 	ldrb.w	r3, [r4, #39]	; 0x27
d0009e74:	ea45 4202 	orr.w	r2, r5, r2, lsl #16
d0009e78:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0009e7c:	681b      	ldr	r3, [r3, #0]
d0009e7e:	b3a3      	cbz	r3, d0009eea <load_hw_jpeg_from_memory.constprop.0+0xae>
d0009e80:	f894 6024 	ldrb.w	r6, [r4, #36]	; 0x24
d0009e84:	f894 5025 	ldrb.w	r5, [r4, #37]	; 0x25
d0009e88:	f894 2026 	ldrb.w	r2, [r4, #38]	; 0x26
d0009e8c:	ea46 2505 	orr.w	r5, r6, r5, lsl #8
d0009e90:	f894 3027 	ldrb.w	r3, [r4, #39]	; 0x27
d0009e94:	ea45 4202 	orr.w	r2, r5, r2, lsl #16
d0009e98:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0009e9c:	681b      	ldr	r3, [r3, #0]
d0009e9e:	685b      	ldr	r3, [r3, #4]
d0009ea0:	b31b      	cbz	r3, d0009eea <load_hw_jpeg_from_memory.constprop.0+0xae>
d0009ea2:	f894 2024 	ldrb.w	r2, [r4, #36]	; 0x24
d0009ea6:	2700      	movs	r7, #0
d0009ea8:	f894 5025 	ldrb.w	r5, [r4, #37]	; 0x25
d0009eac:	f894 3026 	ldrb.w	r3, [r4, #38]	; 0x26
d0009eb0:	ea42 2605 	orr.w	r6, r2, r5, lsl #8
d0009eb4:	9701      	str	r7, [sp, #4]
d0009eb6:	9700      	str	r7, [sp, #0]
d0009eb8:	466a      	mov	r2, sp
d0009eba:	ea46 4503 	orr.w	r5, r6, r3, lsl #16
d0009ebe:	f894 3027 	ldrb.w	r3, [r4, #39]	; 0x27
d0009ec2:	ea45 6303 	orr.w	r3, r5, r3, lsl #24
d0009ec6:	681b      	ldr	r3, [r3, #0]
d0009ec8:	685b      	ldr	r3, [r3, #4]
d0009eca:	4798      	blx	r3
d0009ecc:	b980      	cbnz	r0, d0009ef0 <load_hw_jpeg_from_memory.constprop.0+0xb4>
d0009ece:	9a01      	ldr	r2, [sp, #4]
d0009ed0:	b172      	cbz	r2, d0009ef0 <load_hw_jpeg_from_memory.constprop.0+0xb4>
d0009ed2:	4b19      	ldr	r3, [pc, #100]	; (d0009f38 <load_hw_jpeg_from_memory.constprop.0+0xfc>)
d0009ed4:	2401      	movs	r4, #1
d0009ed6:	9900      	ldr	r1, [sp, #0]
d0009ed8:	f103 000c 	add.w	r0, r3, #12
d0009edc:	721c      	strb	r4, [r3, #8]
d0009ede:	e9c3 1200 	strd	r1, r2, [r3]
d0009ee2:	f7ff f975 	bl	d00091d0 <init_rgb332_palette>
d0009ee6:	4620      	mov	r0, r4
d0009ee8:	e000      	b.n	d0009eec <load_hw_jpeg_from_memory.constprop.0+0xb0>
d0009eea:	4618      	mov	r0, r3
d0009eec:	b003      	add	sp, #12
d0009eee:	bdf0      	pop	{r4, r5, r6, r7, pc}
d0009ef0:	4603      	mov	r3, r0
d0009ef2:	4a12      	ldr	r2, [pc, #72]	; (d0009f3c <load_hw_jpeg_from_memory.constprop.0+0x100>)
d0009ef4:	21a0      	movs	r1, #160	; 0xa0
d0009ef6:	4812      	ldr	r0, [pc, #72]	; (d0009f40 <load_hw_jpeg_from_memory.constprop.0+0x104>)
d0009ef8:	f003 f88c 	bl	d000d014 <sniprintf>
d0009efc:	7823      	ldrb	r3, [r4, #0]
d0009efe:	7862      	ldrb	r2, [r4, #1]
d0009f00:	78a1      	ldrb	r1, [r4, #2]
d0009f02:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0009f06:	78e2      	ldrb	r2, [r4, #3]
d0009f08:	480d      	ldr	r0, [pc, #52]	; (d0009f40 <load_hw_jpeg_from_memory.constprop.0+0x104>)
d0009f0a:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0009f0e:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0009f12:	68db      	ldr	r3, [r3, #12]
d0009f14:	4798      	blx	r3
d0009f16:	7823      	ldrb	r3, [r4, #0]
d0009f18:	7862      	ldrb	r2, [r4, #1]
d0009f1a:	78a1      	ldrb	r1, [r4, #2]
d0009f1c:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0009f20:	78e2      	ldrb	r2, [r4, #3]
d0009f22:	4808      	ldr	r0, [pc, #32]	; (d0009f44 <load_hw_jpeg_from_memory.constprop.0+0x108>)
d0009f24:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0009f28:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0009f2c:	68db      	ldr	r3, [r3, #12]
d0009f2e:	4798      	blx	r3
d0009f30:	2000      	movs	r0, #0
d0009f32:	e7db      	b.n	d0009eec <load_hw_jpeg_from_memory.constprop.0+0xb0>
d0009f34:	2001f000 	.word	0x2001f000
d0009f38:	d000f670 	.word	0xd000f670
d0009f3c:	d000e1a4 	.word	0xd000e1a4
d0009f40:	d000fa7c 	.word	0xd000fa7c
d0009f44:	d000e088 	.word	0xd000e088

d0009f48 <free_image.constprop.0>:
d0009f48:	b508      	push	{r3, lr}
d0009f4a:	4b08      	ldr	r3, [pc, #32]	; (d0009f6c <free_image.constprop.0+0x24>)
d0009f4c:	6858      	ldr	r0, [r3, #4]
d0009f4e:	b108      	cbz	r0, d0009f54 <free_image.constprop.0+0xc>
d0009f50:	7a1b      	ldrb	r3, [r3, #8]
d0009f52:	b13b      	cbz	r3, d0009f64 <free_image.constprop.0+0x1c>
d0009f54:	f240 420c 	movw	r2, #1036	; 0x40c
d0009f58:	2100      	movs	r1, #0
d0009f5a:	4804      	ldr	r0, [pc, #16]	; (d0009f6c <free_image.constprop.0+0x24>)
d0009f5c:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
d0009f60:	f002 bbc2 	b.w	d000c6e8 <memset>
d0009f64:	f002 fb9c 	bl	d000c6a0 <free>
d0009f68:	e7f4      	b.n	d0009f54 <free_image.constprop.0+0xc>
d0009f6a:	bf00      	nop
d0009f6c:	d000f670 	.word	0xd000f670

d0009f70 <render_view.constprop.0>:
d0009f70:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0009f74:	4c74      	ldr	r4, [pc, #464]	; (d000a148 <render_view.constprop.0+0x1d8>)
d0009f76:	b085      	sub	sp, #20
d0009f78:	468b      	mov	fp, r1
d0009f7a:	4690      	mov	r8, r2
d0009f7c:	7b23      	ldrb	r3, [r4, #12]
d0009f7e:	9000      	str	r0, [sp, #0]
d0009f80:	7b60      	ldrb	r0, [r4, #13]
d0009f82:	7ba1      	ldrb	r1, [r4, #14]
d0009f84:	ea43 2300 	orr.w	r3, r3, r0, lsl #8
d0009f88:	7be2      	ldrb	r2, [r4, #15]
d0009f8a:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0009f8e:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0009f92:	681b      	ldr	r3, [r3, #0]
d0009f94:	68db      	ldr	r3, [r3, #12]
d0009f96:	4798      	blx	r3
d0009f98:	7b23      	ldrb	r3, [r4, #12]
d0009f9a:	7b62      	ldrb	r2, [r4, #13]
d0009f9c:	7ba1      	ldrb	r1, [r4, #14]
d0009f9e:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0009fa2:	7be2      	ldrb	r2, [r4, #15]
d0009fa4:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0009fa8:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0009fac:	685b      	ldr	r3, [r3, #4]
d0009fae:	681b      	ldr	r3, [r3, #0]
d0009fb0:	4798      	blx	r3
d0009fb2:	7b23      	ldrb	r3, [r4, #12]
d0009fb4:	7b62      	ldrb	r2, [r4, #13]
d0009fb6:	7ba1      	ldrb	r1, [r4, #14]
d0009fb8:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0009fbc:	7be2      	ldrb	r2, [r4, #15]
d0009fbe:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0009fc2:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0009fc6:	681b      	ldr	r3, [r3, #0]
d0009fc8:	6b5b      	ldr	r3, [r3, #52]	; 0x34
d0009fca:	4798      	blx	r3
d0009fcc:	2800      	cmp	r0, #0
d0009fce:	d06d      	beq.n	d000a0ac <render_view.constprop.0+0x13c>
d0009fd0:	6802      	ldr	r2, [r0, #0]
d0009fd2:	2a00      	cmp	r2, #0
d0009fd4:	d06a      	beq.n	d000a0ac <render_view.constprop.0+0x13c>
d0009fd6:	4f5d      	ldr	r7, [pc, #372]	; (d000a14c <render_view.constprop.0+0x1dc>)
d0009fd8:	687b      	ldr	r3, [r7, #4]
d0009fda:	2b00      	cmp	r3, #0
d0009fdc:	d066      	beq.n	d000a0ac <render_view.constprop.0+0x13c>
d0009fde:	fab8 fc88 	clz	ip, r8
d0009fe2:	ea4f 1c5c 	mov.w	ip, ip, lsr #5
d0009fe6:	f1b8 0f00 	cmp.w	r8, #0
d0009fea:	d05f      	beq.n	d000a0ac <render_view.constprop.0+0x13c>
d0009fec:	883b      	ldrh	r3, [r7, #0]
d0009fee:	887e      	ldrh	r6, [r7, #2]
d0009ff0:	fb08 f503 	mul.w	r5, r8, r3
d0009ff4:	fb08 f606 	mul.w	r6, r8, r6
d0009ff8:	35ff      	adds	r5, #255	; 0xff
d0009ffa:	36ff      	adds	r6, #255	; 0xff
d0009ffc:	0a2d      	lsrs	r5, r5, #8
d0009ffe:	0a36      	lsrs	r6, r6, #8
d000a000:	f5b5 7ff0 	cmp.w	r5, #480	; 0x1e0
d000a004:	f240 8081 	bls.w	d000a10a <render_view.constprop.0+0x19a>
d000a008:	f5b6 7fa0 	cmp.w	r6, #320	; 0x140
d000a00c:	f200 8090 	bhi.w	d000a130 <render_view.constprop.0+0x1c0>
d000a010:	4661      	mov	r1, ip
d000a012:	f5c6 7ca0 	rsb	ip, r6, #320	; 0x140
d000a016:	f44f 75f0 	mov.w	r5, #480	; 0x1e0
d000a01a:	9601      	str	r6, [sp, #4]
d000a01c:	468b      	mov	fp, r1
d000a01e:	ea4f 0c6c 	mov.w	ip, ip, asr #1
d000a022:	9502      	str	r5, [sp, #8]
d000a024:	f06f 4a7f 	mvn.w	sl, #4278190080	; 0xff000000
d000a028:	9d01      	ldr	r5, [sp, #4]
d000a02a:	eb01 0181 	add.w	r1, r1, r1, lsl #2
d000a02e:	f04f 0900 	mov.w	r9, #0
d000a032:	44aa      	add	sl, r5
d000a034:	4616      	mov	r6, r2
d000a036:	eb0c 1c81 	add.w	ip, ip, r1, lsl #6
d000a03a:	9003      	str	r0, [sp, #12]
d000a03c:	ea4f 2a0a 	mov.w	sl, sl, lsl #8
d000a040:	ea4f 2009 	mov.w	r0, r9, lsl #8
d000a044:	9a00      	ldr	r2, [sp, #0]
d000a046:	fbb0 f0f8 	udiv	r0, r0, r8
d000a04a:	4410      	add	r0, r2
d000a04c:	9a01      	ldr	r2, [sp, #4]
d000a04e:	4298      	cmp	r0, r3
d000a050:	bf28      	it	cs
d000a052:	f103 30ff 	addcs.w	r0, r3, #4294967295	; 0xffffffff
d000a056:	b1f2      	cbz	r2, d000a096 <render_view.constprop.0+0x126>
d000a058:	f10c 32ff 	add.w	r2, ip, #4294967295	; 0xffffffff
d000a05c:	2500      	movs	r5, #0
d000a05e:	18b2      	adds	r2, r6, r2
d000a060:	e009      	b.n	d000a076 <render_view.constprop.0+0x106>
d000a062:	fb03 660e 	mla	r6, r3, lr, r6
d000a066:	4555      	cmp	r5, sl
d000a068:	5c33      	ldrb	r3, [r6, r0]
d000a06a:	f802 3f01 	strb.w	r3, [r2, #1]!
d000a06e:	d012      	beq.n	d000a096 <render_view.constprop.0+0x126>
d000a070:	f505 7580 	add.w	r5, r5, #256	; 0x100
d000a074:	883b      	ldrh	r3, [r7, #0]
d000a076:	887e      	ldrh	r6, [r7, #2]
d000a078:	fbb5 f1f8 	udiv	r1, r5, r8
d000a07c:	4459      	add	r1, fp
d000a07e:	f106 3eff 	add.w	lr, r6, #4294967295	; 0xffffffff
d000a082:	42b1      	cmp	r1, r6
d000a084:	687e      	ldr	r6, [r7, #4]
d000a086:	d2ec      	bcs.n	d000a062 <render_view.constprop.0+0xf2>
d000a088:	fb01 6103 	mla	r1, r1, r3, r6
d000a08c:	4555      	cmp	r5, sl
d000a08e:	5c0b      	ldrb	r3, [r1, r0]
d000a090:	f802 3f01 	strb.w	r3, [r2, #1]!
d000a094:	d1ec      	bne.n	d000a070 <render_view.constprop.0+0x100>
d000a096:	f109 0901 	add.w	r9, r9, #1
d000a09a:	9b02      	ldr	r3, [sp, #8]
d000a09c:	f50c 7ca0 	add.w	ip, ip, #320	; 0x140
d000a0a0:	4599      	cmp	r9, r3
d000a0a2:	da03      	bge.n	d000a0ac <render_view.constprop.0+0x13c>
d000a0a4:	9a03      	ldr	r2, [sp, #12]
d000a0a6:	883b      	ldrh	r3, [r7, #0]
d000a0a8:	6816      	ldr	r6, [r2, #0]
d000a0aa:	e7c9      	b.n	d000a040 <render_view.constprop.0+0xd0>
d000a0ac:	4a28      	ldr	r2, [pc, #160]	; (d000a150 <render_view.constprop.0+0x1e0>)
d000a0ae:	7813      	ldrb	r3, [r2, #0]
d000a0b0:	f1c3 0301 	rsb	r3, r3, #1
d000a0b4:	b2db      	uxtb	r3, r3
d000a0b6:	7013      	strb	r3, [r2, #0]
d000a0b8:	7813      	ldrb	r3, [r2, #0]
d000a0ba:	7b20      	ldrb	r0, [r4, #12]
d000a0bc:	7b61      	ldrb	r1, [r4, #13]
d000a0be:	7ba2      	ldrb	r2, [r4, #14]
d000a0c0:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d000a0c4:	b1db      	cbz	r3, d000a0fe <render_view.constprop.0+0x18e>
d000a0c6:	7be3      	ldrb	r3, [r4, #15]
d000a0c8:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d000a0cc:	4d21      	ldr	r5, [pc, #132]	; (d000a154 <render_view.constprop.0+0x1e4>)
d000a0ce:	4822      	ldr	r0, [pc, #136]	; (d000a158 <render_view.constprop.0+0x1e8>)
d000a0d0:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d000a0d4:	6829      	ldr	r1, [r5, #0]
d000a0d6:	6800      	ldr	r0, [r0, #0]
d000a0d8:	681b      	ldr	r3, [r3, #0]
d000a0da:	6a5b      	ldr	r3, [r3, #36]	; 0x24
d000a0dc:	4798      	blx	r3
d000a0de:	7b23      	ldrb	r3, [r4, #12]
d000a0e0:	7b62      	ldrb	r2, [r4, #13]
d000a0e2:	7ba1      	ldrb	r1, [r4, #14]
d000a0e4:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d000a0e8:	7be2      	ldrb	r2, [r4, #15]
d000a0ea:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d000a0ee:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d000a0f2:	681b      	ldr	r3, [r3, #0]
d000a0f4:	681b      	ldr	r3, [r3, #0]
d000a0f6:	b005      	add	sp, #20
d000a0f8:	e8bd 4ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d000a0fc:	4718      	bx	r3
d000a0fe:	7be3      	ldrb	r3, [r4, #15]
d000a100:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d000a104:	4d14      	ldr	r5, [pc, #80]	; (d000a158 <render_view.constprop.0+0x1e8>)
d000a106:	4813      	ldr	r0, [pc, #76]	; (d000a154 <render_view.constprop.0+0x1e4>)
d000a108:	e7e2      	b.n	d000a0d0 <render_view.constprop.0+0x160>
d000a10a:	f5c5 71f0 	rsb	r1, r5, #480	; 0x1e0
d000a10e:	f5b6 7fa0 	cmp.w	r6, #320	; 0x140
d000a112:	9502      	str	r5, [sp, #8]
d000a114:	ea4f 0161 	mov.w	r1, r1, asr #1
d000a118:	d812      	bhi.n	d000a140 <render_view.constprop.0+0x1d0>
d000a11a:	46e3      	mov	fp, ip
d000a11c:	f5c6 7ca0 	rsb	ip, r6, #320	; 0x140
d000a120:	9601      	str	r6, [sp, #4]
d000a122:	ea4f 0c6c 	mov.w	ip, ip, asr #1
d000a126:	2d00      	cmp	r5, #0
d000a128:	d0c0      	beq.n	d000a0ac <render_view.constprop.0+0x13c>
d000a12a:	2500      	movs	r5, #0
d000a12c:	9500      	str	r5, [sp, #0]
d000a12e:	e779      	b.n	d000a024 <render_view.constprop.0+0xb4>
d000a130:	f44f 71f0 	mov.w	r1, #480	; 0x1e0
d000a134:	9102      	str	r1, [sp, #8]
d000a136:	f44f 71a0 	mov.w	r1, #320	; 0x140
d000a13a:	9101      	str	r1, [sp, #4]
d000a13c:	4661      	mov	r1, ip
d000a13e:	e771      	b.n	d000a024 <render_view.constprop.0+0xb4>
d000a140:	f44f 76a0 	mov.w	r6, #320	; 0x140
d000a144:	9601      	str	r6, [sp, #4]
d000a146:	e7ee      	b.n	d000a126 <render_view.constprop.0+0x1b6>
d000a148:	2001f000 	.word	0x2001f000
d000a14c:	d000f670 	.word	0xd000f670
d000a150:	d000f26c 	.word	0xd000f26c
d000a154:	d000fb80 	.word	0xd000fb80
d000a158:	d000fba0 	.word	0xd000fba0
d000a15c:	00000000 	.word	0x00000000

d000a160 <main>:
d000a160:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d000a164:	f8df b378 	ldr.w	fp, [pc, #888]	; d000a4e0 <main+0x380>
d000a168:	460e      	mov	r6, r1
d000a16a:	4604      	mov	r4, r0
d000a16c:	2504      	movs	r5, #4
d000a16e:	f89b 3004 	ldrb.w	r3, [fp, #4]
d000a172:	f89b 2005 	ldrb.w	r2, [fp, #5]
d000a176:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d000a17a:	f89b 2006 	ldrb.w	r2, [fp, #6]
d000a17e:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d000a182:	f89b 2007 	ldrb.w	r2, [fp, #7]
d000a186:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d000a18a:	ed2d 8b04 	vpush	{d8-d9}
d000a18e:	689b      	ldr	r3, [r3, #8]
d000a190:	b0ad      	sub	sp, #180	; 0xb4
d000a192:	4798      	blx	r3
d000a194:	f89b 3000 	ldrb.w	r3, [fp]
d000a198:	f89b 2001 	ldrb.w	r2, [fp, #1]
d000a19c:	f44f 2000 	mov.w	r0, #524288	; 0x80000
d000a1a0:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d000a1a4:	f89b 2002 	ldrb.w	r2, [fp, #2]
d000a1a8:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d000a1ac:	f89b 2003 	ldrb.w	r2, [fp, #3]
d000a1b0:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d000a1b4:	681b      	ldr	r3, [r3, #0]
d000a1b6:	4798      	blx	r3
d000a1b8:	f7f6 ff4e 	bl	d0001058 <initMalloc>
d000a1bc:	4bbf      	ldr	r3, [pc, #764]	; (d000a4bc <main+0x35c>)
d000a1be:	f04f 427f 	mov.w	r2, #4278190080	; 0xff000000
d000a1c2:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d000a1c6:	49be      	ldr	r1, [pc, #760]	; (d000a4c0 <main+0x360>)
d000a1c8:	601a      	str	r2, [r3, #0]
d000a1ca:	461a      	mov	r2, r3
d000a1cc:	6058      	str	r0, [r3, #4]
d000a1ce:	6099      	str	r1, [r3, #8]
d000a1d0:	4bbc      	ldr	r3, [pc, #752]	; (d000a4c4 <main+0x364>)
d000a1d2:	f842 3f0c 	str.w	r3, [r2, #12]!
d000a1d6:	042b      	lsls	r3, r5, #16
d000a1d8:	ea43 2305 	orr.w	r3, r3, r5, lsl #8
d000a1dc:	432b      	orrs	r3, r5
d000a1de:	3501      	adds	r5, #1
d000a1e0:	f043 437f 	orr.w	r3, r3, #4278190080	; 0xff000000
d000a1e4:	f5b5 7f80 	cmp.w	r5, #256	; 0x100
d000a1e8:	f842 3f04 	str.w	r3, [r2, #4]!
d000a1ec:	d1f3      	bne.n	d000a1d6 <main+0x76>
d000a1ee:	2100      	movs	r1, #0
d000a1f0:	f240 420c 	movw	r2, #1036	; 0x40c
d000a1f4:	48b4      	ldr	r0, [pc, #720]	; (d000a4c8 <main+0x368>)
d000a1f6:	4689      	mov	r9, r1
d000a1f8:	f002 fa76 	bl	d000c6e8 <memset>
d000a1fc:	f89b 700c 	ldrb.w	r7, [fp, #12]
d000a200:	2190      	movs	r1, #144	; 0x90
d000a202:	f89b 300d 	ldrb.w	r3, [fp, #13]
d000a206:	20dc      	movs	r0, #220	; 0xdc
d000a208:	f89b 200e 	ldrb.w	r2, [fp, #14]
d000a20c:	ea47 2703 	orr.w	r7, r7, r3, lsl #8
d000a210:	f89b 300f 	ldrb.w	r3, [fp, #15]
d000a214:	f8df 82cc 	ldr.w	r8, [pc, #716]	; d000a4e4 <main+0x384>
d000a218:	ea47 4202 	orr.w	r2, r7, r2, lsl #16
d000a21c:	4fab      	ldr	r7, [pc, #684]	; (d000a4cc <main+0x36c>)
d000a21e:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d000a222:	681b      	ldr	r3, [r3, #0]
d000a224:	691b      	ldr	r3, [r3, #16]
d000a226:	4798      	blx	r3
d000a228:	f89b 200c 	ldrb.w	r2, [fp, #12]
d000a22c:	f89b 000d 	ldrb.w	r0, [fp, #13]
d000a230:	f04f 0c02 	mov.w	ip, #2
d000a234:	f89b 100e 	ldrb.w	r1, [fp, #14]
d000a238:	f44f 73a0 	mov.w	r3, #320	; 0x140
d000a23c:	ea42 2200 	orr.w	r2, r2, r0, lsl #8
d000a240:	f89b 000f 	ldrb.w	r0, [fp, #15]
d000a244:	ea42 4101 	orr.w	r1, r2, r1, lsl #16
d000a248:	f44f 72f0 	mov.w	r2, #480	; 0x1e0
d000a24c:	ea41 6000 	orr.w	r0, r1, r0, lsl #24
d000a250:	4619      	mov	r1, r3
d000a252:	f8d0 e000 	ldr.w	lr, [r0]
d000a256:	4610      	mov	r0, r2
d000a258:	f8cd c000 	str.w	ip, [sp]
d000a25c:	f8de a014 	ldr.w	sl, [lr, #20]
d000a260:	47d0      	blx	sl
d000a262:	f89b 100c 	ldrb.w	r1, [fp, #12]
d000a266:	f89b 300d 	ldrb.w	r3, [fp, #13]
d000a26a:	f89b 200e 	ldrb.w	r2, [fp, #14]
d000a26e:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
d000a272:	f89b 300f 	ldrb.w	r3, [fp, #15]
d000a276:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d000a27a:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d000a27e:	681b      	ldr	r3, [r3, #0]
d000a280:	6b5b      	ldr	r3, [r3, #52]	; 0x34
d000a282:	4798      	blx	r3
d000a284:	f89b 300c 	ldrb.w	r3, [fp, #12]
d000a288:	f89b 100d 	ldrb.w	r1, [fp, #13]
d000a28c:	f89b c00e 	ldrb.w	ip, [fp, #14]
d000a290:	ea43 2301 	orr.w	r3, r3, r1, lsl #8
d000a294:	f89b 100f 	ldrb.w	r1, [fp, #15]
d000a298:	f8c8 0000 	str.w	r0, [r8]
d000a29c:	ea43 420c 	orr.w	r2, r3, ip, lsl #16
d000a2a0:	ea42 6301 	orr.w	r3, r2, r1, lsl #24
d000a2a4:	681b      	ldr	r3, [r3, #0]
d000a2a6:	6b9b      	ldr	r3, [r3, #56]	; 0x38
d000a2a8:	4798      	blx	r3
d000a2aa:	4b89      	ldr	r3, [pc, #548]	; (d000a4d0 <main+0x370>)
d000a2ac:	6038      	str	r0, [r7, #0]
d000a2ae:	f883 9000 	strb.w	r9, [r3]
d000a2b2:	f89b 100c 	ldrb.w	r1, [fp, #12]
d000a2b6:	f89b 300d 	ldrb.w	r3, [fp, #13]
d000a2ba:	f89b 200e 	ldrb.w	r2, [fp, #14]
d000a2be:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
d000a2c2:	f89b 300f 	ldrb.w	r3, [fp, #15]
d000a2c6:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d000a2ca:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d000a2ce:	681b      	ldr	r3, [r3, #0]
d000a2d0:	6d9b      	ldr	r3, [r3, #88]	; 0x58
d000a2d2:	4798      	blx	r3
d000a2d4:	f89b 1018 	ldrb.w	r1, [fp, #24]
d000a2d8:	f89b 3019 	ldrb.w	r3, [fp, #25]
d000a2dc:	f89b 201a 	ldrb.w	r2, [fp, #26]
d000a2e0:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
d000a2e4:	f89b 301b 	ldrb.w	r3, [fp, #27]
d000a2e8:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d000a2ec:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d000a2f0:	681b      	ldr	r3, [r3, #0]
d000a2f2:	4798      	blx	r3
d000a2f4:	f89b 100c 	ldrb.w	r1, [fp, #12]
d000a2f8:	f89b 300d 	ldrb.w	r3, [fp, #13]
d000a2fc:	f89b 200e 	ldrb.w	r2, [fp, #14]
d000a300:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
d000a304:	f89b 300f 	ldrb.w	r3, [fp, #15]
d000a308:	486c      	ldr	r0, [pc, #432]	; (d000a4bc <main+0x35c>)
d000a30a:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d000a30e:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d000a312:	681b      	ldr	r3, [r3, #0]
d000a314:	6d1b      	ldr	r3, [r3, #80]	; 0x50
d000a316:	4798      	blx	r3
d000a318:	f89b 100c 	ldrb.w	r1, [fp, #12]
d000a31c:	f89b 300d 	ldrb.w	r3, [fp, #13]
d000a320:	f89b 200e 	ldrb.w	r2, [fp, #14]
d000a324:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
d000a328:	f89b 300f 	ldrb.w	r3, [fp, #15]
d000a32c:	4863      	ldr	r0, [pc, #396]	; (d000a4bc <main+0x35c>)
d000a32e:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d000a332:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d000a336:	681b      	ldr	r3, [r3, #0]
d000a338:	6cdb      	ldr	r3, [r3, #76]	; 0x4c
d000a33a:	4798      	blx	r3
d000a33c:	f44f 72a0 	mov.w	r2, #320	; 0x140
d000a340:	f44f 71f0 	mov.w	r1, #480	; 0x1e0
d000a344:	4863      	ldr	r0, [pc, #396]	; (d000a4d4 <main+0x374>)
d000a346:	f7f6 fe79 	bl	d000103c <gfx_createBitmap>
d000a34a:	f89b 100c 	ldrb.w	r1, [fp, #12]
d000a34e:	f89b 300d 	ldrb.w	r3, [fp, #13]
d000a352:	f89b 200e 	ldrb.w	r2, [fp, #14]
d000a356:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
d000a35a:	f89b 300f 	ldrb.w	r3, [fp, #15]
d000a35e:	485d      	ldr	r0, [pc, #372]	; (d000a4d4 <main+0x374>)
d000a360:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d000a364:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d000a368:	681b      	ldr	r3, [r3, #0]
d000a36a:	6a1b      	ldr	r3, [r3, #32]
d000a36c:	4798      	blx	r3
d000a36e:	f89b 100c 	ldrb.w	r1, [fp, #12]
d000a372:	f89b 300d 	ldrb.w	r3, [fp, #13]
d000a376:	f89b 200e 	ldrb.w	r2, [fp, #14]
d000a37a:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
d000a37e:	f89b 300f 	ldrb.w	r3, [fp, #15]
d000a382:	4854      	ldr	r0, [pc, #336]	; (d000a4d4 <main+0x374>)
d000a384:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d000a388:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d000a38c:	681b      	ldr	r3, [r3, #0]
d000a38e:	699b      	ldr	r3, [r3, #24]
d000a390:	4798      	blx	r3
d000a392:	f89b 100c 	ldrb.w	r1, [fp, #12]
d000a396:	f89b 300d 	ldrb.w	r3, [fp, #13]
d000a39a:	4648      	mov	r0, r9
d000a39c:	f89b 200e 	ldrb.w	r2, [fp, #14]
d000a3a0:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
d000a3a4:	f89b 300f 	ldrb.w	r3, [fp, #15]
d000a3a8:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d000a3ac:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d000a3b0:	685b      	ldr	r3, [r3, #4]
d000a3b2:	68db      	ldr	r3, [r3, #12]
d000a3b4:	4798      	blx	r3
d000a3b6:	f89b 100c 	ldrb.w	r1, [fp, #12]
d000a3ba:	f89b 300d 	ldrb.w	r3, [fp, #13]
d000a3be:	f89b 200e 	ldrb.w	r2, [fp, #14]
d000a3c2:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
d000a3c6:	f89b 300f 	ldrb.w	r3, [fp, #15]
d000a3ca:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d000a3ce:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d000a3d2:	685b      	ldr	r3, [r3, #4]
d000a3d4:	681b      	ldr	r3, [r3, #0]
d000a3d6:	4798      	blx	r3
d000a3d8:	f89b 100c 	ldrb.w	r1, [fp, #12]
d000a3dc:	f89b 300d 	ldrb.w	r3, [fp, #13]
d000a3e0:	f89b 200e 	ldrb.w	r2, [fp, #14]
d000a3e4:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
d000a3e8:	f89b 300f 	ldrb.w	r3, [fp, #15]
d000a3ec:	f8d8 0000 	ldr.w	r0, [r8]
d000a3f0:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d000a3f4:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d000a3f8:	681b      	ldr	r3, [r3, #0]
d000a3fa:	69db      	ldr	r3, [r3, #28]
d000a3fc:	4798      	blx	r3
d000a3fe:	f89b 100c 	ldrb.w	r1, [fp, #12]
d000a402:	f89b 300d 	ldrb.w	r3, [fp, #13]
d000a406:	f89b 200e 	ldrb.w	r2, [fp, #14]
d000a40a:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
d000a40e:	f89b 300f 	ldrb.w	r3, [fp, #15]
d000a412:	6838      	ldr	r0, [r7, #0]
d000a414:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d000a418:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d000a41c:	681b      	ldr	r3, [r3, #0]
d000a41e:	699b      	ldr	r3, [r3, #24]
d000a420:	4798      	blx	r3
d000a422:	2c01      	cmp	r4, #1
d000a424:	f340 8551 	ble.w	d000aeca <main+0xd6a>
d000a428:	4632      	mov	r2, r6
d000a42a:	2301      	movs	r3, #1
d000a42c:	f852 1f04 	ldr.w	r1, [r2, #4]!
d000a430:	3301      	adds	r3, #1
d000a432:	b111      	cbz	r1, d000a43a <main+0x2da>
d000a434:	7808      	ldrb	r0, [r1, #0]
d000a436:	2800      	cmp	r0, #0
d000a438:	d156      	bne.n	d000a4e8 <main+0x388>
d000a43a:	429c      	cmp	r4, r3
d000a43c:	d1f6      	bne.n	d000a42c <main+0x2cc>
d000a43e:	f8d6 a000 	ldr.w	sl, [r6]
d000a442:	f1ba 0f00 	cmp.w	sl, #0
d000a446:	d033      	beq.n	d000a4b0 <main+0x350>
d000a448:	212e      	movs	r1, #46	; 0x2e
d000a44a:	4650      	mov	r0, sl
d000a44c:	f002 fe29 	bl	d000d0a2 <strrchr>
d000a450:	b370      	cbz	r0, d000a4b0 <main+0x350>
d000a452:	7843      	ldrb	r3, [r0, #1]
d000a454:	f003 03df 	and.w	r3, r3, #223	; 0xdf
d000a458:	2b42      	cmp	r3, #66	; 0x42
d000a45a:	d10a      	bne.n	d000a472 <main+0x312>
d000a45c:	7883      	ldrb	r3, [r0, #2]
d000a45e:	f003 03df 	and.w	r3, r3, #223	; 0xdf
d000a462:	2b4d      	cmp	r3, #77	; 0x4d
d000a464:	d124      	bne.n	d000a4b0 <main+0x350>
d000a466:	78c3      	ldrb	r3, [r0, #3]
d000a468:	f003 03df 	and.w	r3, r3, #223	; 0xdf
d000a46c:	2b50      	cmp	r3, #80	; 0x50
d000a46e:	d01d      	beq.n	d000a4ac <main+0x34c>
d000a470:	e01e      	b.n	d000a4b0 <main+0x350>
d000a472:	2b49      	cmp	r3, #73	; 0x49
d000a474:	f000 82b8 	beq.w	d000a9e8 <main+0x888>
d000a478:	2b4c      	cmp	r3, #76	; 0x4c
d000a47a:	d10a      	bne.n	d000a492 <main+0x332>
d000a47c:	7883      	ldrb	r3, [r0, #2]
d000a47e:	f003 03df 	and.w	r3, r3, #223	; 0xdf
d000a482:	2b42      	cmp	r3, #66	; 0x42
d000a484:	d114      	bne.n	d000a4b0 <main+0x350>
d000a486:	78c3      	ldrb	r3, [r0, #3]
d000a488:	f003 03df 	and.w	r3, r3, #223	; 0xdf
d000a48c:	2b4d      	cmp	r3, #77	; 0x4d
d000a48e:	d10f      	bne.n	d000a4b0 <main+0x350>
d000a490:	e00c      	b.n	d000a4ac <main+0x34c>
d000a492:	2b47      	cmp	r3, #71	; 0x47
d000a494:	f040 82c2 	bne.w	d000aa1c <main+0x8bc>
d000a498:	7883      	ldrb	r3, [r0, #2]
d000a49a:	f003 03df 	and.w	r3, r3, #223	; 0xdf
d000a49e:	2b49      	cmp	r3, #73	; 0x49
d000a4a0:	d106      	bne.n	d000a4b0 <main+0x350>
d000a4a2:	78c3      	ldrb	r3, [r0, #3]
d000a4a4:	f003 03df 	and.w	r3, r3, #223	; 0xdf
d000a4a8:	2b46      	cmp	r3, #70	; 0x46
d000a4aa:	d101      	bne.n	d000a4b0 <main+0x350>
d000a4ac:	7903      	ldrb	r3, [r0, #4]
d000a4ae:	b1e3      	cbz	r3, d000a4ea <main+0x38a>
d000a4b0:	4909      	ldr	r1, [pc, #36]	; (d000a4d8 <main+0x378>)
d000a4b2:	2401      	movs	r4, #1
d000a4b4:	4809      	ldr	r0, [pc, #36]	; (d000a4dc <main+0x37c>)
d000a4b6:	f002 fcc7 	bl	d000ce48 <iprintf>
d000a4ba:	e096      	b.n	d000a5ea <main+0x48a>
d000a4bc:	d000f270 	.word	0xd000f270
d000a4c0:	ff606060 	.word	0xff606060
d000a4c4:	ffdcdcdc 	.word	0xffdcdcdc
d000a4c8:	d000f670 	.word	0xd000f670
d000a4cc:	d000fb80 	.word	0xd000fb80
d000a4d0:	d000f26c 	.word	0xd000f26c
d000a4d4:	d000fb40 	.word	0xd000fb40
d000a4d8:	d000e0e4 	.word	0xd000e0e4
d000a4dc:	d000e22c 	.word	0xd000e22c
d000a4e0:	2001f000 	.word	0x2001f000
d000a4e4:	d000fba0 	.word	0xd000fba0
d000a4e8:	468a      	mov	sl, r1
d000a4ea:	4877      	ldr	r0, [pc, #476]	; (d000a6c8 <main+0x568>)
d000a4ec:	f7ff f956 	bl	d000979c <draw_message.constprop.0>
d000a4f0:	2100      	movs	r1, #0
d000a4f2:	f240 420c 	movw	r2, #1036	; 0x40c
d000a4f6:	4875      	ldr	r0, [pc, #468]	; (d000a6cc <main+0x56c>)
d000a4f8:	911a      	str	r1, [sp, #104]	; 0x68
d000a4fa:	f002 f8f5 	bl	d000c6e8 <memset>
d000a4fe:	212e      	movs	r1, #46	; 0x2e
d000a500:	4650      	mov	r0, sl
d000a502:	f002 fdce 	bl	d000d0a2 <strrchr>
d000a506:	b150      	cbz	r0, d000a51e <main+0x3be>
d000a508:	7843      	ldrb	r3, [r0, #1]
d000a50a:	f003 03df 	and.w	r3, r3, #223	; 0xdf
d000a50e:	2b4a      	cmp	r3, #74	; 0x4a
d000a510:	d105      	bne.n	d000a51e <main+0x3be>
d000a512:	7883      	ldrb	r3, [r0, #2]
d000a514:	f003 03df 	and.w	r3, r3, #223	; 0xdf
d000a518:	2b50      	cmp	r3, #80	; 0x50
d000a51a:	f000 80e3 	beq.w	d000a6e4 <main+0x584>
d000a51e:	ab1a      	add	r3, sp, #104	; 0x68
d000a520:	4650      	mov	r0, sl
d000a522:	4619      	mov	r1, r3
d000a524:	ee09 3a10 	vmov	s18, r3
d000a528:	f7ff f88c 	bl	d0009644 <load_file>
d000a52c:	4681      	mov	r9, r0
d000a52e:	b3a0      	cbz	r0, d000a59a <main+0x43a>
d000a530:	9c1a      	ldr	r4, [sp, #104]	; 0x68
d000a532:	2c01      	cmp	r4, #1
d000a534:	d929      	bls.n	d000a58a <main+0x42a>
d000a536:	7806      	ldrb	r6, [r0, #0]
d000a538:	2e42      	cmp	r6, #66	; 0x42
d000a53a:	f000 8297 	beq.w	d000aa6c <main+0x90c>
d000a53e:	2c0b      	cmp	r4, #11
d000a540:	f240 875c 	bls.w	d000b3fc <main+0x129c>
d000a544:	f899 1001 	ldrb.w	r1, [r9, #1]
d000a548:	f899 3000 	ldrb.w	r3, [r9]
d000a54c:	f899 2002 	ldrb.w	r2, [r9, #2]
d000a550:	ea43 2301 	orr.w	r3, r3, r1, lsl #8
d000a554:	f899 1003 	ldrb.w	r1, [r9, #3]
d000a558:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d000a55c:	4a5c      	ldr	r2, [pc, #368]	; (d000a6d0 <main+0x570>)
d000a55e:	ea43 6301 	orr.w	r3, r3, r1, lsl #24
d000a562:	ba1b      	rev	r3, r3
d000a564:	4293      	cmp	r3, r2
d000a566:	f000 85d8 	beq.w	d000b11a <main+0xfba>
d000a56a:	2203      	movs	r2, #3
d000a56c:	4959      	ldr	r1, [pc, #356]	; (d000a6d4 <main+0x574>)
d000a56e:	4648      	mov	r0, r9
d000a570:	f002 f89e 	bl	d000c6b0 <memcmp>
d000a574:	9007      	str	r0, [sp, #28]
d000a576:	2800      	cmp	r0, #0
d000a578:	f000 84f1 	beq.w	d000af5e <main+0xdfe>
d000a57c:	2eff      	cmp	r6, #255	; 0xff
d000a57e:	d104      	bne.n	d000a58a <main+0x42a>
d000a580:	f899 3001 	ldrb.w	r3, [r9, #1]
d000a584:	2bd8      	cmp	r3, #216	; 0xd8
d000a586:	f000 8685 	beq.w	d000b294 <main+0x1134>
d000a58a:	4853      	ldr	r0, [pc, #332]	; (d000a6d8 <main+0x578>)
d000a58c:	f7ff f82c 	bl	d00095e8 <set_status>
d000a590:	4648      	mov	r0, r9
d000a592:	f002 f885 	bl	d000c6a0 <free>
d000a596:	f7ff fcd7 	bl	d0009f48 <free_image.constprop.0>
d000a59a:	4850      	ldr	r0, [pc, #320]	; (d000a6dc <main+0x57c>)
d000a59c:	f7ff f8fe 	bl	d000979c <draw_message.constprop.0>
d000a5a0:	f89b 1000 	ldrb.w	r1, [fp]
d000a5a4:	f89b 3001 	ldrb.w	r3, [fp, #1]
d000a5a8:	f89b 2002 	ldrb.w	r2, [fp, #2]
d000a5ac:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
d000a5b0:	f89b 3003 	ldrb.w	r3, [fp, #3]
d000a5b4:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d000a5b8:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d000a5bc:	6a1b      	ldr	r3, [r3, #32]
d000a5be:	4798      	blx	r3
d000a5c0:	0782      	lsls	r2, r0, #30
d000a5c2:	d5ed      	bpl.n	d000a5a0 <main+0x440>
d000a5c4:	f89b 1000 	ldrb.w	r1, [fp]
d000a5c8:	f89b 3001 	ldrb.w	r3, [fp, #1]
d000a5cc:	f89b 2002 	ldrb.w	r2, [fp, #2]
d000a5d0:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
d000a5d4:	f89b 3003 	ldrb.w	r3, [fp, #3]
d000a5d8:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d000a5dc:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d000a5e0:	6a1b      	ldr	r3, [r3, #32]
d000a5e2:	4798      	blx	r3
d000a5e4:	0783      	lsls	r3, r0, #30
d000a5e6:	d4ed      	bmi.n	d000a5c4 <main+0x464>
d000a5e8:	2401      	movs	r4, #1
d000a5ea:	4d3d      	ldr	r5, [pc, #244]	; (d000a6e0 <main+0x580>)
d000a5ec:	f7ff fcac 	bl	d0009f48 <free_image.constprop.0>
d000a5f0:	682b      	ldr	r3, [r5, #0]
d000a5f2:	b13b      	cbz	r3, d000a604 <main+0x4a4>
d000a5f4:	6828      	ldr	r0, [r5, #0]
d000a5f6:	f002 f853 	bl	d000c6a0 <free>
d000a5fa:	4628      	mov	r0, r5
d000a5fc:	2220      	movs	r2, #32
d000a5fe:	2100      	movs	r1, #0
d000a600:	f002 f872 	bl	d000c6e8 <memset>
d000a604:	f89b 300c 	ldrb.w	r3, [fp, #12]
d000a608:	2602      	movs	r6, #2
d000a60a:	f89b 200d 	ldrb.w	r2, [fp, #13]
d000a60e:	f89b 100e 	ldrb.w	r1, [fp, #14]
d000a612:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d000a616:	f89b 200f 	ldrb.w	r2, [fp, #15]
d000a61a:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d000a61e:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d000a622:	681b      	ldr	r3, [r3, #0]
d000a624:	68db      	ldr	r3, [r3, #12]
d000a626:	4798      	blx	r3
d000a628:	f89b 500c 	ldrb.w	r5, [fp, #12]
d000a62c:	f89b 200d 	ldrb.w	r2, [fp, #13]
d000a630:	f44f 73a0 	mov.w	r3, #320	; 0x140
d000a634:	f89b 100e 	ldrb.w	r1, [fp, #14]
d000a638:	ea45 2502 	orr.w	r5, r5, r2, lsl #8
d000a63c:	f89b 000f 	ldrb.w	r0, [fp, #15]
d000a640:	f44f 72f0 	mov.w	r2, #480	; 0x1e0
d000a644:	ea45 4501 	orr.w	r5, r5, r1, lsl #16
d000a648:	4619      	mov	r1, r3
d000a64a:	ea45 6500 	orr.w	r5, r5, r0, lsl #24
d000a64e:	4610      	mov	r0, r2
d000a650:	682d      	ldr	r5, [r5, #0]
d000a652:	9600      	str	r6, [sp, #0]
d000a654:	696d      	ldr	r5, [r5, #20]
d000a656:	47a8      	blx	r5
d000a658:	f89b 3004 	ldrb.w	r3, [fp, #4]
d000a65c:	f89b 2005 	ldrb.w	r2, [fp, #5]
d000a660:	f89b 1006 	ldrb.w	r1, [fp, #6]
d000a664:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d000a668:	f89b 2007 	ldrb.w	r2, [fp, #7]
d000a66c:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d000a670:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d000a674:	685b      	ldr	r3, [r3, #4]
d000a676:	4798      	blx	r3
d000a678:	f89b 300c 	ldrb.w	r3, [fp, #12]
d000a67c:	f89b 200d 	ldrb.w	r2, [fp, #13]
d000a680:	f89b 100e 	ldrb.w	r1, [fp, #14]
d000a684:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d000a688:	f89b 200f 	ldrb.w	r2, [fp, #15]
d000a68c:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d000a690:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d000a694:	681b      	ldr	r3, [r3, #0]
d000a696:	68db      	ldr	r3, [r3, #12]
d000a698:	4798      	blx	r3
d000a69a:	f89b 3000 	ldrb.w	r3, [fp]
d000a69e:	f89b 2001 	ldrb.w	r2, [fp, #1]
d000a6a2:	f89b 1002 	ldrb.w	r1, [fp, #2]
d000a6a6:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d000a6aa:	f89b 2003 	ldrb.w	r2, [fp, #3]
d000a6ae:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d000a6b2:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d000a6b6:	685b      	ldr	r3, [r3, #4]
d000a6b8:	4798      	blx	r3
d000a6ba:	4620      	mov	r0, r4
d000a6bc:	b02d      	add	sp, #180	; 0xb4
d000a6be:	ecbd 8b04 	vpop	{d8-d9}
d000a6c2:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d000a6c6:	bf00      	nop
d000a6c8:	d000e7a0 	.word	0xd000e7a0
d000a6cc:	d000f670 	.word	0xd000f670
d000a6d0:	464f524d 	.word	0x464f524d
d000a6d4:	d000e530 	.word	0xd000e530
d000a6d8:	d000e754 	.word	0xd000e754
d000a6dc:	d000fa7c 	.word	0xd000fa7c
d000a6e0:	d000fb40 	.word	0xd000fb40
d000a6e4:	78c3      	ldrb	r3, [r0, #3]
d000a6e6:	f003 03df 	and.w	r3, r3, #223	; 0xdf
d000a6ea:	2b47      	cmp	r3, #71	; 0x47
d000a6ec:	f040 83f1 	bne.w	d000aed2 <main+0xd72>
d000a6f0:	7903      	ldrb	r3, [r0, #4]
d000a6f2:	2b00      	cmp	r3, #0
d000a6f4:	f47f af13 	bne.w	d000a51e <main+0x3be>
d000a6f8:	ab1b      	add	r3, sp, #108	; 0x6c
d000a6fa:	4650      	mov	r0, sl
d000a6fc:	4619      	mov	r1, r3
d000a6fe:	ee08 3a10 	vmov	s16, r3
d000a702:	2300      	movs	r3, #0
d000a704:	931b      	str	r3, [sp, #108]	; 0x6c
d000a706:	f7fe ff9d 	bl	d0009644 <load_file>
d000a70a:	4604      	mov	r4, r0
d000a70c:	2800      	cmp	r0, #0
d000a70e:	f000 8396 	beq.w	d000ae3e <main+0xcde>
d000a712:	991b      	ldr	r1, [sp, #108]	; 0x6c
d000a714:	f7ff fb92 	bl	d0009e3c <load_hw_jpeg_from_memory.constprop.0>
d000a718:	4603      	mov	r3, r0
d000a71a:	4620      	mov	r0, r4
d000a71c:	461c      	mov	r4, r3
d000a71e:	f001 ffbf 	bl	d000c6a0 <free>
d000a722:	2c00      	cmp	r4, #0
d000a724:	f000 8389 	beq.w	d000ae3a <main+0xcda>
d000a728:	ab21      	add	r3, sp, #132	; 0x84
d000a72a:	f10d 0878 	add.w	r8, sp, #120	; 0x78
d000a72e:	ee08 3a90 	vmov	s17, r3
d000a732:	4bc7      	ldr	r3, [pc, #796]	; (d000aa50 <main+0x8f0>)
d000a734:	aa1a      	add	r2, sp, #104	; 0x68
d000a736:	f8cd a004 	str.w	sl, [sp, #4]
d000a73a:	21a0      	movs	r1, #160	; 0xa0
d000a73c:	ee09 2a10 	vmov	s18, r2
d000a740:	885a      	ldrh	r2, [r3, #2]
d000a742:	9304      	str	r3, [sp, #16]
d000a744:	881b      	ldrh	r3, [r3, #0]
d000a746:	9200      	str	r2, [sp, #0]
d000a748:	4ac2      	ldr	r2, [pc, #776]	; (d000aa54 <main+0x8f4>)
d000a74a:	48c3      	ldr	r0, [pc, #780]	; (d000aa58 <main+0x8f8>)
d000a74c:	f002 fc62 	bl	d000d014 <sniprintf>
d000a750:	48c1      	ldr	r0, [pc, #772]	; (d000aa58 <main+0x8f8>)
d000a752:	f7fe ff49 	bl	d00095e8 <set_status>
d000a756:	9b04      	ldr	r3, [sp, #16]
d000a758:	881a      	ldrh	r2, [r3, #0]
d000a75a:	2a00      	cmp	r2, #0
d000a75c:	f000 8360 	beq.w	d000ae20 <main+0xcc0>
d000a760:	9b04      	ldr	r3, [sp, #16]
d000a762:	8858      	ldrh	r0, [r3, #2]
d000a764:	2800      	cmp	r0, #0
d000a766:	f000 83f6 	beq.w	d000af56 <main+0xdf6>
d000a76a:	f44f 33f0 	mov.w	r3, #122880	; 0x1e000
d000a76e:	f44f 31a0 	mov.w	r1, #81920	; 0x14000
d000a772:	fbb3 f3f2 	udiv	r3, r3, r2
d000a776:	fbb1 f1f0 	udiv	r1, r1, r0
d000a77a:	428b      	cmp	r3, r1
d000a77c:	bf28      	it	cs
d000a77e:	460b      	movcs	r3, r1
d000a780:	f5b3 7f80 	cmp.w	r3, #256	; 0x100
d000a784:	bf28      	it	cs
d000a786:	f44f 7380 	movcs.w	r3, #256	; 0x100
d000a78a:	b29b      	uxth	r3, r3
d000a78c:	930d      	str	r3, [sp, #52]	; 0x34
d000a78e:	f5b2 7ff0 	cmp.w	r2, #480	; 0x1e0
d000a792:	f240 8348 	bls.w	d000ae26 <main+0xcc6>
d000a796:	f8dd a034 	ldr.w	sl, [sp, #52]	; 0x34
d000a79a:	f89b 200c 	ldrb.w	r2, [fp, #12]
d000a79e:	2500      	movs	r5, #0
d000a7a0:	f89b 300d 	ldrb.w	r3, [fp, #13]
d000a7a4:	f04f 0901 	mov.w	r9, #1
d000a7a8:	f89b 100e 	ldrb.w	r1, [fp, #14]
d000a7ac:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
d000a7b0:	f89b 400f 	ldrb.w	r4, [fp, #15]
d000a7b4:	9e0d      	ldr	r6, [sp, #52]	; 0x34
d000a7b6:	ea42 4301 	orr.w	r3, r2, r1, lsl #16
d000a7ba:	48a8      	ldr	r0, [pc, #672]	; (d000aa5c <main+0x8fc>)
d000a7bc:	950a      	str	r5, [sp, #40]	; 0x28
d000a7be:	ea43 6304 	orr.w	r3, r3, r4, lsl #24
d000a7c2:	9606      	str	r6, [sp, #24]
d000a7c4:	9509      	str	r5, [sp, #36]	; 0x24
d000a7c6:	462c      	mov	r4, r5
d000a7c8:	681b      	ldr	r3, [r3, #0]
d000a7ca:	9503      	str	r5, [sp, #12]
d000a7cc:	6cdb      	ldr	r3, [r3, #76]	; 0x4c
d000a7ce:	950c      	str	r5, [sp, #48]	; 0x30
d000a7d0:	950b      	str	r5, [sp, #44]	; 0x2c
d000a7d2:	9505      	str	r5, [sp, #20]
d000a7d4:	4798      	blx	r3
d000a7d6:	f89b 2000 	ldrb.w	r2, [fp]
d000a7da:	f89b 1001 	ldrb.w	r1, [fp, #1]
d000a7de:	f89b 3002 	ldrb.w	r3, [fp, #2]
d000a7e2:	ea42 2201 	orr.w	r2, r2, r1, lsl #8
d000a7e6:	f89b 1003 	ldrb.w	r1, [fp, #3]
d000a7ea:	4f9d      	ldr	r7, [pc, #628]	; (d000aa60 <main+0x900>)
d000a7ec:	ea42 4303 	orr.w	r3, r2, r3, lsl #16
d000a7f0:	ea43 6301 	orr.w	r3, r3, r1, lsl #24
d000a7f4:	69db      	ldr	r3, [r3, #28]
d000a7f6:	4798      	blx	r3
d000a7f8:	4629      	mov	r1, r5
d000a7fa:	4628      	mov	r0, r5
d000a7fc:	4652      	mov	r2, sl
d000a7fe:	f7ff fbb7 	bl	d0009f70 <render_view.constprop.0>
d000a802:	4898      	ldr	r0, [pc, #608]	; (d000aa64 <main+0x904>)
d000a804:	4998      	ldr	r1, [pc, #608]	; (d000aa68 <main+0x908>)
d000a806:	4633      	mov	r3, r6
d000a808:	4406      	add	r6, r0
d000a80a:	eb0a 0200 	add.w	r2, sl, r0
d000a80e:	185d      	adds	r5, r3, r1
d000a810:	eb0a 0c01 	add.w	ip, sl, r1
d000a814:	900e      	str	r0, [sp, #56]	; 0x38
d000a816:	4618      	mov	r0, r3
d000a818:	910f      	str	r1, [sp, #60]	; 0x3c
d000a81a:	9904      	ldr	r1, [sp, #16]
d000a81c:	fbb6 f3f3 	udiv	r3, r6, r3
d000a820:	8809      	ldrh	r1, [r1, #0]
d000a822:	eb03 76d3 	add.w	r6, r3, r3, lsr #31
d000a826:	9310      	str	r3, [sp, #64]	; 0x40
d000a828:	1acb      	subs	r3, r1, r3
d000a82a:	9904      	ldr	r1, [sp, #16]
d000a82c:	fa46 f609 	asr.w	r6, r6, r9
d000a830:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
d000a834:	8849      	ldrh	r1, [r1, #2]
d000a836:	fbb5 f5f0 	udiv	r5, r5, r0
d000a83a:	9308      	str	r3, [sp, #32]
d000a83c:	4628      	mov	r0, r5
d000a83e:	9511      	str	r5, [sp, #68]	; 0x44
d000a840:	eb05 75d5 	add.w	r5, r5, r5, lsr #31
d000a844:	fbbc f3fa 	udiv	r3, ip, sl
d000a848:	fbb2 f2fa 	udiv	r2, r2, sl
d000a84c:	fa45 f509 	asr.w	r5, r5, r9
d000a850:	ebc6 0662 	rsb	r6, r6, r2, asr #1
d000a854:	ebc5 0563 	rsb	r5, r5, r3, asr #1
d000a858:	1a0b      	subs	r3, r1, r0
d000a85a:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
d000a85e:	9307      	str	r3, [sp, #28]
d000a860:	f89b c000 	ldrb.w	ip, [fp]
d000a864:	f10d 0166 	add.w	r1, sp, #102	; 0x66
d000a868:	f89b 2001 	ldrb.w	r2, [fp, #1]
d000a86c:	a819      	add	r0, sp, #100	; 0x64
d000a86e:	f89b a002 	ldrb.w	sl, [fp, #2]
d000a872:	ea4c 2c02 	orr.w	ip, ip, r2, lsl #8
d000a876:	f89b 3003 	ldrb.w	r3, [fp, #3]
d000a87a:	f8ad 4064 	strh.w	r4, [sp, #100]	; 0x64
d000a87e:	ea4c 420a 	orr.w	r2, ip, sl, lsl #16
d000a882:	f8ad 4066 	strh.w	r4, [sp, #102]	; 0x66
d000a886:	f8ad 4068 	strh.w	r4, [sp, #104]	; 0x68
d000a88a:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d000a88e:	f8ad 406c 	strh.w	r4, [sp, #108]	; 0x6c
d000a892:	941e      	str	r4, [sp, #120]	; 0x78
d000a894:	691b      	ldr	r3, [r3, #16]
d000a896:	9421      	str	r4, [sp, #132]	; 0x84
d000a898:	4798      	blx	r3
d000a89a:	f89b c000 	ldrb.w	ip, [fp]
d000a89e:	f89b 2001 	ldrb.w	r2, [fp, #1]
d000a8a2:	ee18 1a90 	vmov	r1, s17
d000a8a6:	f89b a002 	ldrb.w	sl, [fp, #2]
d000a8aa:	4640      	mov	r0, r8
d000a8ac:	ea4c 2c02 	orr.w	ip, ip, r2, lsl #8
d000a8b0:	f89b 3003 	ldrb.w	r3, [fp, #3]
d000a8b4:	ea4c 420a 	orr.w	r2, ip, sl, lsl #16
d000a8b8:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d000a8bc:	699b      	ldr	r3, [r3, #24]
d000a8be:	4798      	blx	r3
d000a8c0:	f89b c018 	ldrb.w	ip, [fp, #24]
d000a8c4:	f89b 2019 	ldrb.w	r2, [fp, #25]
d000a8c8:	ee18 1a10 	vmov	r1, s16
d000a8cc:	f89b a01a 	ldrb.w	sl, [fp, #26]
d000a8d0:	ee19 0a10 	vmov	r0, s18
d000a8d4:	ea4c 2c02 	orr.w	ip, ip, r2, lsl #8
d000a8d8:	f89b 301b 	ldrb.w	r3, [fp, #27]
d000a8dc:	ea4c 420a 	orr.w	r2, ip, sl, lsl #16
d000a8e0:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d000a8e4:	689b      	ldr	r3, [r3, #8]
d000a8e6:	4798      	blx	r3
d000a8e8:	f89b 3000 	ldrb.w	r3, [fp]
d000a8ec:	f89b c001 	ldrb.w	ip, [fp, #1]
d000a8f0:	4602      	mov	r2, r0
d000a8f2:	f89b 1002 	ldrb.w	r1, [fp, #2]
d000a8f6:	ea43 200c 	orr.w	r0, r3, ip, lsl #8
d000a8fa:	f89b 3003 	ldrb.w	r3, [fp, #3]
d000a8fe:	4692      	mov	sl, r2
d000a900:	9202      	str	r2, [sp, #8]
d000a902:	ea40 4101 	orr.w	r1, r0, r1, lsl #16
d000a906:	ea41 6303 	orr.w	r3, r1, r3, lsl #24
d000a90a:	6a1b      	ldr	r3, [r3, #32]
d000a90c:	4798      	blx	r3
d000a90e:	7038      	strb	r0, [r7, #0]
d000a910:	7839      	ldrb	r1, [r7, #0]
d000a912:	783b      	ldrb	r3, [r7, #0]
d000a914:	f001 0101 	and.w	r1, r1, #1
d000a918:	9a02      	ldr	r2, [sp, #8]
d000a91a:	f013 0302 	ands.w	r3, r3, #2
d000a91e:	f040 827c 	bne.w	d000ae1a <main+0xcba>
d000a922:	2a00      	cmp	r2, #0
d000a924:	f000 8201 	beq.w	d000ad2a <main+0xbca>
d000a928:	9803      	ldr	r0, [sp, #12]
d000a92a:	2800      	cmp	r0, #0
d000a92c:	f040 81fd 	bne.w	d000ad2a <main+0xbca>
d000a930:	f9bd c068 	ldrsh.w	ip, [sp, #104]	; 0x68
d000a934:	f8bd 006c 	ldrh.w	r0, [sp, #108]	; 0x6c
d000a938:	f5bc 7fd4 	cmp.w	ip, #424	; 0x1a8
d000a93c:	bfb4      	ite	lt
d000a93e:	f04f 0e00 	movlt.w	lr, #0
d000a942:	f04f 0e01 	movge.w	lr, #1
d000a946:	2837      	cmp	r0, #55	; 0x37
d000a948:	d803      	bhi.n	d000a952 <main+0x7f2>
d000a94a:	f1be 0f00 	cmp.w	lr, #0
d000a94e:	f040 823a 	bne.w	d000adc6 <main+0xc66>
d000a952:	f5a0 7084 	sub.w	r0, r0, #264	; 0x108
d000a956:	2837      	cmp	r0, #55	; 0x37
d000a958:	d803      	bhi.n	d000a962 <main+0x802>
d000a95a:	f1be 0f00 	cmp.w	lr, #0
d000a95e:	f040 81b8 	bne.w	d000acd2 <main+0xb72>
d000a962:	2900      	cmp	r1, #0
d000a964:	f040 81e2 	bne.w	d000ad2c <main+0xbcc>
d000a968:	f9bd 206c 	ldrsh.w	r2, [sp, #108]	; 0x6c
d000a96c:	f8cd c024 	str.w	ip, [sp, #36]	; 0x24
d000a970:	920a      	str	r2, [sp, #40]	; 0x28
d000a972:	f89b 0000 	ldrb.w	r0, [fp]
d000a976:	f89b 3001 	ldrb.w	r3, [fp, #1]
d000a97a:	f89b 2002 	ldrb.w	r2, [fp, #2]
d000a97e:	ea40 2003 	orr.w	r0, r0, r3, lsl #8
d000a982:	f89b 3003 	ldrb.w	r3, [fp, #3]
d000a986:	9102      	str	r1, [sp, #8]
d000a988:	ea40 4202 	orr.w	r2, r0, r2, lsl #16
d000a98c:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d000a990:	69db      	ldr	r3, [r3, #28]
d000a992:	4798      	blx	r3
d000a994:	2e00      	cmp	r6, #0
d000a996:	9902      	ldr	r1, [sp, #8]
d000a998:	f2c0 81f1 	blt.w	d000ad7e <main+0xc1e>
d000a99c:	9b08      	ldr	r3, [sp, #32]
d000a99e:	f8cd a00c 	str.w	sl, [sp, #12]
d000a9a2:	429e      	cmp	r6, r3
d000a9a4:	9105      	str	r1, [sp, #20]
d000a9a6:	bfa8      	it	ge
d000a9a8:	461e      	movge	r6, r3
d000a9aa:	2d00      	cmp	r5, #0
d000a9ac:	f2c0 81e5 	blt.w	d000ad7a <main+0xc1a>
d000a9b0:	9b07      	ldr	r3, [sp, #28]
d000a9b2:	429d      	cmp	r5, r3
d000a9b4:	bfa8      	it	ge
d000a9b6:	461d      	movge	r5, r3
d000a9b8:	f89b 1014 	ldrb.w	r1, [fp, #20]
d000a9bc:	f89b 3015 	ldrb.w	r3, [fp, #21]
d000a9c0:	f89b 2016 	ldrb.w	r2, [fp, #22]
d000a9c4:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
d000a9c8:	f89b 3017 	ldrb.w	r3, [fp, #23]
d000a9cc:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d000a9d0:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d000a9d4:	685b      	ldr	r3, [r3, #4]
d000a9d6:	685b      	ldr	r3, [r3, #4]
d000a9d8:	4798      	blx	r3
d000a9da:	f1b9 0f00 	cmp.w	r9, #0
d000a9de:	f040 81d3 	bne.w	d000ad88 <main+0xc28>
d000a9e2:	f04f 0900 	mov.w	r9, #0
d000a9e6:	e73b      	b.n	d000a860 <main+0x700>
d000a9e8:	7883      	ldrb	r3, [r0, #2]
d000a9ea:	f003 03df 	and.w	r3, r3, #223	; 0xdf
d000a9ee:	2b46      	cmp	r3, #70	; 0x46
d000a9f0:	f43f ad57 	beq.w	d000a4a2 <main+0x342>
d000a9f4:	2b4c      	cmp	r3, #76	; 0x4c
d000a9f6:	f47f ad5b 	bne.w	d000a4b0 <main+0x350>
d000a9fa:	78c3      	ldrb	r3, [r0, #3]
d000a9fc:	f003 03df 	and.w	r3, r3, #223	; 0xdf
d000aa00:	2b42      	cmp	r3, #66	; 0x42
d000aa02:	f47f ad55 	bne.w	d000a4b0 <main+0x350>
d000aa06:	7903      	ldrb	r3, [r0, #4]
d000aa08:	f003 03df 	and.w	r3, r3, #223	; 0xdf
d000aa0c:	2b4d      	cmp	r3, #77	; 0x4d
d000aa0e:	f47f ad4f 	bne.w	d000a4b0 <main+0x350>
d000aa12:	7943      	ldrb	r3, [r0, #5]
d000aa14:	2b00      	cmp	r3, #0
d000aa16:	f43f ad68 	beq.w	d000a4ea <main+0x38a>
d000aa1a:	e549      	b.n	d000a4b0 <main+0x350>
d000aa1c:	2b4a      	cmp	r3, #74	; 0x4a
d000aa1e:	f47f ad47 	bne.w	d000a4b0 <main+0x350>
d000aa22:	7883      	ldrb	r3, [r0, #2]
d000aa24:	f003 03df 	and.w	r3, r3, #223	; 0xdf
d000aa28:	2b50      	cmp	r3, #80	; 0x50
d000aa2a:	f47f ad41 	bne.w	d000a4b0 <main+0x350>
d000aa2e:	78c3      	ldrb	r3, [r0, #3]
d000aa30:	f003 03df 	and.w	r3, r3, #223	; 0xdf
d000aa34:	2b47      	cmp	r3, #71	; 0x47
d000aa36:	f43f ad39 	beq.w	d000a4ac <main+0x34c>
d000aa3a:	2b45      	cmp	r3, #69	; 0x45
d000aa3c:	f47f ad38 	bne.w	d000a4b0 <main+0x350>
d000aa40:	7903      	ldrb	r3, [r0, #4]
d000aa42:	f003 03df 	and.w	r3, r3, #223	; 0xdf
d000aa46:	2b47      	cmp	r3, #71	; 0x47
d000aa48:	f47f ad32 	bne.w	d000a4b0 <main+0x350>
d000aa4c:	e7e1      	b.n	d000aa12 <main+0x8b2>
d000aa4e:	bf00      	nop
d000aa50:	d000f670 	.word	0xd000f670
d000aa54:	d000e250 	.word	0xd000e250
d000aa58:	d000fa7c 	.word	0xd000fa7c
d000aa5c:	d000f67c 	.word	0xd000f67c
d000aa60:	d000fb60 	.word	0xd000fb60
d000aa64:	0001dfff 	.word	0x0001dfff
d000aa68:	00013fff 	.word	0x00013fff
d000aa6c:	7843      	ldrb	r3, [r0, #1]
d000aa6e:	2b4d      	cmp	r3, #77	; 0x4d
d000aa70:	f47f ad65 	bne.w	d000a53e <main+0x3de>
d000aa74:	2c35      	cmp	r4, #53	; 0x35
d000aa76:	f240 84ee 	bls.w	d000b456 <main+0x12f6>
d000aa7a:	7bc3      	ldrb	r3, [r0, #15]
d000aa7c:	7b85      	ldrb	r5, [r0, #14]
d000aa7e:	7c02      	ldrb	r2, [r0, #16]
d000aa80:	ea45 2503 	orr.w	r5, r5, r3, lsl #8
d000aa84:	7c43      	ldrb	r3, [r0, #17]
d000aa86:	ea45 4502 	orr.w	r5, r5, r2, lsl #16
d000aa8a:	ea45 6503 	orr.w	r5, r5, r3, lsl #24
d000aa8e:	2d27      	cmp	r5, #39	; 0x27
d000aa90:	f240 8693 	bls.w	d000b7ba <main+0x165a>
d000aa94:	f105 0c0e 	add.w	ip, r5, #14
d000aa98:	4564      	cmp	r4, ip
d000aa9a:	f0c0 868e 	bcc.w	d000b7ba <main+0x165a>
d000aa9e:	7c81      	ldrb	r1, [r0, #18]
d000aaa0:	7cc2      	ldrb	r2, [r0, #19]
d000aaa2:	7d03      	ldrb	r3, [r0, #20]
d000aaa4:	ea41 2002 	orr.w	r0, r1, r2, lsl #8
d000aaa8:	f899 2017 	ldrb.w	r2, [r9, #23]
d000aaac:	f899 1016 	ldrb.w	r1, [r9, #22]
d000aab0:	ea40 4003 	orr.w	r0, r0, r3, lsl #16
d000aab4:	f899 3015 	ldrb.w	r3, [r9, #21]
d000aab8:	ea41 2102 	orr.w	r1, r1, r2, lsl #8
d000aabc:	f899 2018 	ldrb.w	r2, [r9, #24]
d000aac0:	ea40 6003 	orr.w	r0, r0, r3, lsl #24
d000aac4:	f899 3019 	ldrb.w	r3, [r9, #25]
d000aac8:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d000aacc:	2800      	cmp	r0, #0
d000aace:	9003      	str	r0, [sp, #12]
d000aad0:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d000aad4:	9302      	str	r3, [sp, #8]
d000aad6:	f340 864d 	ble.w	d000b774 <main+0x1614>
d000aada:	2b00      	cmp	r3, #0
d000aadc:	f000 864a 	beq.w	d000b774 <main+0x1614>
d000aae0:	9b02      	ldr	r3, [sp, #8]
d000aae2:	2b00      	cmp	r3, #0
d000aae4:	f2c0 8640 	blt.w	d000b768 <main+0x1608>
d000aae8:	2300      	movs	r3, #0
d000aaea:	9306      	str	r3, [sp, #24]
d000aaec:	9b03      	ldr	r3, [sp, #12]
d000aaee:	f5b3 5f80 	cmp.w	r3, #4096	; 0x1000
d000aaf2:	f200 862f 	bhi.w	d000b754 <main+0x15f4>
d000aaf6:	9a02      	ldr	r2, [sp, #8]
d000aaf8:	f5b2 5f80 	cmp.w	r2, #4096	; 0x1000
d000aafc:	f200 862a 	bhi.w	d000b754 <main+0x15f4>
d000ab00:	fba3 2302 	umull	r2, r3, r3, r2
d000ab04:	a1fc      	add	r1, pc, #1008	; (adr r1, d000aef8 <main+0xd98>)
d000ab06:	e9d1 0100 	ldrd	r0, r1, [r1]
d000ab0a:	4299      	cmp	r1, r3
d000ab0c:	bf08      	it	eq
d000ab0e:	4290      	cmpeq	r0, r2
d000ab10:	f0c0 8620 	bcc.w	d000b754 <main+0x15f4>
d000ab14:	f899 200b 	ldrb.w	r2, [r9, #11]
d000ab18:	f899 300a 	ldrb.w	r3, [r9, #10]
d000ab1c:	f899 100c 	ldrb.w	r1, [r9, #12]
d000ab20:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d000ab24:	f899 200d 	ldrb.w	r2, [r9, #13]
d000ab28:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d000ab2c:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d000ab30:	429c      	cmp	r4, r3
d000ab32:	9307      	str	r3, [sp, #28]
d000ab34:	f240 8604 	bls.w	d000b740 <main+0x15e0>
d000ab38:	f899 301f 	ldrb.w	r3, [r9, #31]
d000ab3c:	f899 201e 	ldrb.w	r2, [r9, #30]
d000ab40:	f899 1020 	ldrb.w	r1, [r9, #32]
d000ab44:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
d000ab48:	f899 3021 	ldrb.w	r3, [r9, #33]	; 0x21
d000ab4c:	ea42 4201 	orr.w	r2, r2, r1, lsl #16
d000ab50:	ea52 6203 	orrs.w	r2, r2, r3, lsl #24
d000ab54:	d002      	beq.n	d000ab5c <main+0x9fc>
d000ab56:	2a03      	cmp	r2, #3
d000ab58:	f040 8641 	bne.w	d000b7de <main+0x167e>
d000ab5c:	f899 301d 	ldrb.w	r3, [r9, #29]
d000ab60:	f899 e01c 	ldrb.w	lr, [r9, #28]
d000ab64:	ea4e 2e03 	orr.w	lr, lr, r3, lsl #8
d000ab68:	4676      	mov	r6, lr
d000ab6a:	f8cd e014 	str.w	lr, [sp, #20]
d000ab6e:	fa0f fe8e 	sxth.w	lr, lr
d000ab72:	2e08      	cmp	r6, #8
d000ab74:	f201 80fc 	bhi.w	d000bd70 <main+0x1c10>
d000ab78:	f899 002f 	ldrb.w	r0, [r9, #47]	; 0x2f
d000ab7c:	f899 302e 	ldrb.w	r3, [r9, #46]	; 0x2e
d000ab80:	f899 1030 	ldrb.w	r1, [r9, #48]	; 0x30
d000ab84:	ea43 2300 	orr.w	r3, r3, r0, lsl #8
d000ab88:	f899 0031 	ldrb.w	r0, [r9, #49]	; 0x31
d000ab8c:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d000ab90:	ea53 6300 	orrs.w	r3, r3, r0, lsl #24
d000ab94:	d101      	bne.n	d000ab9a <main+0xa3a>
d000ab96:	2301      	movs	r3, #1
d000ab98:	40b3      	lsls	r3, r6
d000ab9a:	f5b3 7f80 	cmp.w	r3, #256	; 0x100
d000ab9e:	bf28      	it	cs
d000aba0:	f44f 7380 	movcs.w	r3, #256	; 0x100
d000aba4:	eb0c 0183 	add.w	r1, ip, r3, lsl #2
d000aba8:	428c      	cmp	r4, r1
d000abaa:	f0c1 8281 	bcc.w	d000c0b0 <main+0x1f50>
d000abae:	2a03      	cmp	r2, #3
d000abb0:	f001 80e6 	beq.w	d000bd80 <main+0x1c20>
d000abb4:	9a05      	ldr	r2, [sp, #20]
d000abb6:	2a20      	cmp	r2, #32
d000abb8:	bf0b      	itete	eq
d000abba:	25ff      	moveq	r5, #255	; 0xff
d000abbc:	251f      	movne	r5, #31
d000abbe:	f44f 467f 	moveq.w	r6, #65280	; 0xff00
d000abc2:	f44f 7678 	movne.w	r6, #992	; 0x3e0
d000abc6:	bf0c      	ite	eq
d000abc8:	f44f 077f 	moveq.w	r7, #16711680	; 0xff0000
d000abcc:	f44f 47f8 	movne.w	r7, #31744	; 0x7c00
d000abd0:	9905      	ldr	r1, [sp, #20]
d000abd2:	9a03      	ldr	r2, [sp, #12]
d000abd4:	9807      	ldr	r0, [sp, #28]
d000abd6:	fb02 f201 	mul.w	r2, r2, r1
d000abda:	9902      	ldr	r1, [sp, #8]
d000abdc:	321f      	adds	r2, #31
d000abde:	0952      	lsrs	r2, r2, #5
d000abe0:	0092      	lsls	r2, r2, #2
d000abe2:	9208      	str	r2, [sp, #32]
d000abe4:	fb02 0201 	mla	r2, r2, r1, r0
d000abe8:	4294      	cmp	r4, r2
d000abea:	f0c1 826b 	bcc.w	d000c0c4 <main+0x1f64>
d000abee:	4ac0      	ldr	r2, [pc, #768]	; (d000aef0 <main+0xd90>)
d000abf0:	9803      	ldr	r0, [sp, #12]
d000abf2:	9905      	ldr	r1, [sp, #20]
d000abf4:	8010      	strh	r0, [r2, #0]
d000abf6:	2908      	cmp	r1, #8
d000abf8:	9802      	ldr	r0, [sp, #8]
d000abfa:	9204      	str	r2, [sp, #16]
d000abfc:	8050      	strh	r0, [r2, #2]
d000abfe:	f201 80dc 	bhi.w	d000bdba <main+0x1c5a>
d000ac02:	eb09 010c 	add.w	r1, r9, ip
d000ac06:	f102 000c 	add.w	r0, r2, #12
d000ac0a:	eb01 0683 	add.w	r6, r1, r3, lsl #2
d000ac0e:	e00b      	b.n	d000ac28 <main+0xac8>
d000ac10:	784a      	ldrb	r2, [r1, #1]
d000ac12:	788d      	ldrb	r5, [r1, #2]
d000ac14:	0212      	lsls	r2, r2, #8
d000ac16:	f811 4b04 	ldrb.w	r4, [r1], #4
d000ac1a:	ea42 4205 	orr.w	r2, r2, r5, lsl #16
d000ac1e:	4322      	orrs	r2, r4
d000ac20:	f042 427f 	orr.w	r2, r2, #4278190080	; 0xff000000
d000ac24:	f840 2b04 	str.w	r2, [r0], #4
d000ac28:	428e      	cmp	r6, r1
d000ac2a:	d1f1      	bne.n	d000ac10 <main+0xab0>
d000ac2c:	f04f 427f 	mov.w	r2, #4278190080	; 0xff000000
d000ac30:	e000      	b.n	d000ac34 <main+0xad4>
d000ac32:	60ca      	str	r2, [r1, #12]
d000ac34:	f5b3 7f80 	cmp.w	r3, #256	; 0x100
d000ac38:	9904      	ldr	r1, [sp, #16]
d000ac3a:	eb01 0183 	add.w	r1, r1, r3, lsl #2
d000ac3e:	f103 0301 	add.w	r3, r3, #1
d000ac42:	d1f6      	bne.n	d000ac32 <main+0xad2>
d000ac44:	9b02      	ldr	r3, [sp, #8]
d000ac46:	9a03      	ldr	r2, [sp, #12]
d000ac48:	fb03 f002 	mul.w	r0, r3, r2
d000ac4c:	f001 fd20 	bl	d000c690 <malloc>
d000ac50:	9b04      	ldr	r3, [sp, #16]
d000ac52:	6058      	str	r0, [r3, #4]
d000ac54:	2800      	cmp	r0, #0
d000ac56:	f001 82b9 	beq.w	d000c1cc <main+0x206c>
d000ac5a:	9b05      	ldr	r3, [sp, #20]
d000ac5c:	2b08      	cmp	r3, #8
d000ac5e:	f001 8297 	beq.w	d000c190 <main+0x2030>
d000ac62:	9b05      	ldr	r3, [sp, #20]
d000ac64:	2b04      	cmp	r3, #4
d000ac66:	f001 8269 	beq.w	d000c13c <main+0x1fdc>
d000ac6a:	9b05      	ldr	r3, [sp, #20]
d000ac6c:	2b01      	cmp	r3, #1
d000ac6e:	f041 81e6 	bne.w	d000c03e <main+0x1ede>
d000ac72:	2400      	movs	r4, #0
d000ac74:	9b02      	ldr	r3, [sp, #8]
d000ac76:	f04f 0c80 	mov.w	ip, #128	; 0x80
d000ac7a:	9d03      	ldr	r5, [sp, #12]
d000ac7c:	1e5f      	subs	r7, r3, #1
d000ac7e:	4621      	mov	r1, r4
d000ac80:	9e04      	ldr	r6, [sp, #16]
d000ac82:	9b02      	ldr	r3, [sp, #8]
d000ac84:	428b      	cmp	r3, r1
d000ac86:	f001 81cd 	beq.w	d000c024 <main+0x1ec4>
d000ac8a:	9b06      	ldr	r3, [sp, #24]
d000ac8c:	2b00      	cmp	r3, #0
d000ac8e:	f041 8252 	bne.w	d000c136 <main+0x1fd6>
d000ac92:	1a7b      	subs	r3, r7, r1
d000ac94:	9a08      	ldr	r2, [sp, #32]
d000ac96:	9807      	ldr	r0, [sp, #28]
d000ac98:	fb03 0302 	mla	r3, r3, r2, r0
d000ac9c:	6870      	ldr	r0, [r6, #4]
d000ac9e:	2200      	movs	r2, #0
d000aca0:	444b      	add	r3, r9
d000aca2:	4420      	add	r0, r4
d000aca4:	ea4f 08d2 	mov.w	r8, r2, lsr #3
d000aca8:	f002 0e07 	and.w	lr, r2, #7
d000acac:	3201      	adds	r2, #1
d000acae:	fa2c fe0e 	lsr.w	lr, ip, lr
d000acb2:	f813 8008 	ldrb.w	r8, [r3, r8]
d000acb6:	ea18 0f0e 	tst.w	r8, lr
d000acba:	bf14      	ite	ne
d000acbc:	f04f 0e01 	movne.w	lr, #1
d000acc0:	f04f 0e00 	moveq.w	lr, #0
d000acc4:	4295      	cmp	r5, r2
d000acc6:	f800 eb01 	strb.w	lr, [r0], #1
d000acca:	d8eb      	bhi.n	d000aca4 <main+0xb44>
d000accc:	3101      	adds	r1, #1
d000acce:	442c      	add	r4, r5
d000acd0:	e7d7      	b.n	d000ac82 <main+0xb22>
d000acd2:	9905      	ldr	r1, [sp, #20]
d000acd4:	f04f 0901 	mov.w	r9, #1
d000acd8:	f89b 3000 	ldrb.w	r3, [fp]
d000acdc:	f04f 0a00 	mov.w	sl, #0
d000ace0:	9102      	str	r1, [sp, #8]
d000ace2:	990d      	ldr	r1, [sp, #52]	; 0x34
d000ace4:	f89b 0001 	ldrb.w	r0, [fp, #1]
d000ace8:	9106      	str	r1, [sp, #24]
d000acea:	9904      	ldr	r1, [sp, #16]
d000acec:	ea43 2300 	orr.w	r3, r3, r0, lsl #8
d000acf0:	f89b 2002 	ldrb.w	r2, [fp, #2]
d000acf4:	880d      	ldrh	r5, [r1, #0]
d000acf6:	8848      	ldrh	r0, [r1, #2]
d000acf8:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d000acfc:	9910      	ldr	r1, [sp, #64]	; 0x40
d000acfe:	f89b 2003 	ldrb.w	r2, [fp, #3]
d000ad02:	1a69      	subs	r1, r5, r1
d000ad04:	9d11      	ldr	r5, [sp, #68]	; 0x44
d000ad06:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d000ad0a:	1b40      	subs	r0, r0, r5
d000ad0c:	ea21 75e1 	bic.w	r5, r1, r1, asr #31
d000ad10:	69db      	ldr	r3, [r3, #28]
d000ad12:	ea20 72e0 	bic.w	r2, r0, r0, asr #31
d000ad16:	9508      	str	r5, [sp, #32]
d000ad18:	fa45 f609 	asr.w	r6, r5, r9
d000ad1c:	9207      	str	r2, [sp, #28]
d000ad1e:	4798      	blx	r3
d000ad20:	9a07      	ldr	r2, [sp, #28]
d000ad22:	9902      	ldr	r1, [sp, #8]
d000ad24:	fa42 f509 	asr.w	r5, r2, r9
d000ad28:	e638      	b.n	d000a99c <main+0x83c>
d000ad2a:	b149      	cbz	r1, d000ad40 <main+0xbe0>
d000ad2c:	9b05      	ldr	r3, [sp, #20]
d000ad2e:	f9bd e064 	ldrsh.w	lr, [sp, #100]	; 0x64
d000ad32:	bb7b      	cbnz	r3, d000ad94 <main+0xc34>
d000ad34:	f9bd c066 	ldrsh.w	ip, [sp, #102]	; 0x66
d000ad38:	f8cd e02c 	str.w	lr, [sp, #44]	; 0x2c
d000ad3c:	f8cd c030 	str.w	ip, [sp, #48]	; 0x30
d000ad40:	2a00      	cmp	r2, #0
d000ad42:	f43f ae16 	beq.w	d000a972 <main+0x812>
d000ad46:	9b03      	ldr	r3, [sp, #12]
d000ad48:	f9bd c068 	ldrsh.w	ip, [sp, #104]	; 0x68
d000ad4c:	2b00      	cmp	r3, #0
d000ad4e:	f43f ae0b 	beq.w	d000a968 <main+0x808>
d000ad52:	9b09      	ldr	r3, [sp, #36]	; 0x24
d000ad54:	f04f 0901 	mov.w	r9, #1
d000ad58:	f9bd 206c 	ldrsh.w	r2, [sp, #108]	; 0x6c
d000ad5c:	ebac 0003 	sub.w	r0, ip, r3
d000ad60:	9b0a      	ldr	r3, [sp, #40]	; 0x28
d000ad62:	1ad3      	subs	r3, r2, r3
d000ad64:	0200      	lsls	r0, r0, #8
d000ad66:	ea4f 2e03 	mov.w	lr, r3, lsl #8
d000ad6a:	9b06      	ldr	r3, [sp, #24]
d000ad6c:	fb90 f0f3 	sdiv	r0, r0, r3
d000ad70:	fb9e f3f3 	sdiv	r3, lr, r3
d000ad74:	1a36      	subs	r6, r6, r0
d000ad76:	1aed      	subs	r5, r5, r3
d000ad78:	e5f8      	b.n	d000a96c <main+0x80c>
d000ad7a:	2500      	movs	r5, #0
d000ad7c:	e61c      	b.n	d000a9b8 <main+0x858>
d000ad7e:	2600      	movs	r6, #0
d000ad80:	f8cd a00c 	str.w	sl, [sp, #12]
d000ad84:	9105      	str	r1, [sp, #20]
d000ad86:	e610      	b.n	d000a9aa <main+0x84a>
d000ad88:	9a06      	ldr	r2, [sp, #24]
d000ad8a:	4629      	mov	r1, r5
d000ad8c:	4630      	mov	r0, r6
d000ad8e:	f7ff f8ef 	bl	d0009f70 <render_view.constprop.0>
d000ad92:	e626      	b.n	d000a9e2 <main+0x882>
d000ad94:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
d000ad96:	f9bd c066 	ldrsh.w	ip, [sp, #102]	; 0x66
d000ad9a:	ebae 0003 	sub.w	r0, lr, r3
d000ad9e:	9b0c      	ldr	r3, [sp, #48]	; 0x30
d000ada0:	f8dd 9014 	ldr.w	r9, [sp, #20]
d000ada4:	ebac 0303 	sub.w	r3, ip, r3
d000ada8:	0200      	lsls	r0, r0, #8
d000adaa:	021b      	lsls	r3, r3, #8
d000adac:	9305      	str	r3, [sp, #20]
d000adae:	9b06      	ldr	r3, [sp, #24]
d000adb0:	fb90 f3f3 	sdiv	r3, r0, r3
d000adb4:	9805      	ldr	r0, [sp, #20]
d000adb6:	9302      	str	r3, [sp, #8]
d000adb8:	9b06      	ldr	r3, [sp, #24]
d000adba:	fb90 f3f3 	sdiv	r3, r0, r3
d000adbe:	9802      	ldr	r0, [sp, #8]
d000adc0:	1aed      	subs	r5, r5, r3
d000adc2:	1a36      	subs	r6, r6, r0
d000adc4:	e7b8      	b.n	d000ad38 <main+0xbd8>
d000adc6:	9806      	ldr	r0, [sp, #24]
d000adc8:	f04f 0a00 	mov.w	sl, #0
d000adcc:	9a0e      	ldr	r2, [sp, #56]	; 0x38
d000adce:	f04f 0901 	mov.w	r9, #1
d000add2:	1881      	adds	r1, r0, r2
d000add4:	9a0f      	ldr	r2, [sp, #60]	; 0x3c
d000add6:	eb00 0c02 	add.w	ip, r0, r2
d000adda:	fbb1 f1f0 	udiv	r1, r1, r0
d000adde:	fbbc f2f0 	udiv	r2, ip, r0
d000ade2:	9804      	ldr	r0, [sp, #16]
d000ade4:	eb06 0661 	add.w	r6, r6, r1, asr #1
d000ade8:	eb05 0562 	add.w	r5, r5, r2, asr #1
d000adec:	9905      	ldr	r1, [sp, #20]
d000adee:	8800      	ldrh	r0, [r0, #0]
d000adf0:	3ef0      	subs	r6, #240	; 0xf0
d000adf2:	3da0      	subs	r5, #160	; 0xa0
d000adf4:	f5b0 7ff0 	cmp.w	r0, #480	; 0x1e0
d000adf8:	bf28      	it	cs
d000adfa:	f5a0 73f0 	subcs.w	r3, r0, #480	; 0x1e0
d000adfe:	9308      	str	r3, [sp, #32]
d000ae00:	9b04      	ldr	r3, [sp, #16]
d000ae02:	885b      	ldrh	r3, [r3, #2]
d000ae04:	f5b3 7fa0 	cmp.w	r3, #320	; 0x140
d000ae08:	bf2c      	ite	cs
d000ae0a:	f5a3 73a0 	subcs.w	r3, r3, #320	; 0x140
d000ae0e:	2300      	movcc	r3, #0
d000ae10:	9307      	str	r3, [sp, #28]
d000ae12:	f44f 7380 	mov.w	r3, #256	; 0x100
d000ae16:	9306      	str	r3, [sp, #24]
d000ae18:	e5ab      	b.n	d000a972 <main+0x812>
d000ae1a:	2400      	movs	r4, #0
d000ae1c:	f7ff bbe5 	b.w	d000a5ea <main+0x48a>
d000ae20:	f44f 7380 	mov.w	r3, #256	; 0x100
d000ae24:	930d      	str	r3, [sp, #52]	; 0x34
d000ae26:	9b04      	ldr	r3, [sp, #16]
d000ae28:	885b      	ldrh	r3, [r3, #2]
d000ae2a:	f5b3 7fa0 	cmp.w	r3, #320	; 0x140
d000ae2e:	9b0d      	ldr	r3, [sp, #52]	; 0x34
d000ae30:	bf94      	ite	ls
d000ae32:	f44f 7a80 	movls.w	sl, #256	; 0x100
d000ae36:	469a      	movhi	sl, r3
d000ae38:	e4af      	b.n	d000a79a <main+0x63a>
d000ae3a:	f7ff f885 	bl	d0009f48 <free_image.constprop.0>
d000ae3e:	f89b 3004 	ldrb.w	r3, [fp, #4]
d000ae42:	2201      	movs	r2, #1
d000ae44:	f89b 4005 	ldrb.w	r4, [fp, #5]
d000ae48:	4651      	mov	r1, sl
d000ae4a:	f89b 0006 	ldrb.w	r0, [fp, #6]
d000ae4e:	ea43 2304 	orr.w	r3, r3, r4, lsl #8
d000ae52:	f89b 4007 	ldrb.w	r4, [fp, #7]
d000ae56:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
d000ae5a:	2000      	movs	r0, #0
d000ae5c:	ea43 6304 	orr.w	r3, r3, r4, lsl #24
d000ae60:	681b      	ldr	r3, [r3, #0]
d000ae62:	681b      	ldr	r3, [r3, #0]
d000ae64:	4798      	blx	r3
d000ae66:	4604      	mov	r4, r0
d000ae68:	2800      	cmp	r0, #0
d000ae6a:	f040 824c 	bne.w	d000b306 <main+0x11a6>
d000ae6e:	f89b 2004 	ldrb.w	r2, [fp, #4]
d000ae72:	f89b 3005 	ldrb.w	r3, [fp, #5]
d000ae76:	f89b 1006 	ldrb.w	r1, [fp, #6]
d000ae7a:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
d000ae7e:	f89b 3007 	ldrb.w	r3, [fp, #7]
d000ae82:	f88d 0078 	strb.w	r0, [sp, #120]	; 0x78
d000ae86:	ea42 4201 	orr.w	r2, r2, r1, lsl #16
d000ae8a:	ea42 6203 	orr.w	r2, r2, r3, lsl #24
d000ae8e:	6813      	ldr	r3, [r2, #0]
d000ae90:	685b      	ldr	r3, [r3, #4]
d000ae92:	4798      	blx	r3
d000ae94:	9420      	str	r4, [sp, #128]	; 0x80
d000ae96:	901f      	str	r0, [sp, #124]	; 0x7c
d000ae98:	bb90      	cbnz	r0, d000af00 <main+0xda0>
d000ae9a:	f89b 3004 	ldrb.w	r3, [fp, #4]
d000ae9e:	f89b 2005 	ldrb.w	r2, [fp, #5]
d000aea2:	f89b 1006 	ldrb.w	r1, [fp, #6]
d000aea6:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d000aeaa:	f89b 2007 	ldrb.w	r2, [fp, #7]
d000aeae:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d000aeb2:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d000aeb6:	681b      	ldr	r3, [r3, #0]
d000aeb8:	68db      	ldr	r3, [r3, #12]
d000aeba:	4798      	blx	r3
d000aebc:	480d      	ldr	r0, [pc, #52]	; (d000aef4 <main+0xd94>)
d000aebe:	f7fe fb93 	bl	d00095e8 <set_status>
d000aec2:	f7ff f841 	bl	d0009f48 <free_image.constprop.0>
d000aec6:	f7ff bb68 	b.w	d000a59a <main+0x43a>
d000aeca:	f47f aaf1 	bne.w	d000a4b0 <main+0x350>
d000aece:	f7ff bab6 	b.w	d000a43e <main+0x2de>
d000aed2:	2b45      	cmp	r3, #69	; 0x45
d000aed4:	f47f ab23 	bne.w	d000a51e <main+0x3be>
d000aed8:	7903      	ldrb	r3, [r0, #4]
d000aeda:	f003 03df 	and.w	r3, r3, #223	; 0xdf
d000aede:	2b47      	cmp	r3, #71	; 0x47
d000aee0:	f47f ab1d 	bne.w	d000a51e <main+0x3be>
d000aee4:	7943      	ldrb	r3, [r0, #5]
d000aee6:	2b00      	cmp	r3, #0
d000aee8:	f47f ab19 	bne.w	d000a51e <main+0x3be>
d000aeec:	e404      	b.n	d000a6f8 <main+0x598>
d000aeee:	bf00      	nop
d000aef0:	d000f670 	.word	0xd000f670
d000aef4:	d000e0a4 	.word	0xd000e0a4
d000aef8:	004c4b40 	.word	0x004c4b40
d000aefc:	00000000 	.word	0x00000000
d000af00:	ab21      	add	r3, sp, #132	; 0x84
d000af02:	f10d 0878 	add.w	r8, sp, #120	; 0x78
d000af06:	49d4      	ldr	r1, [pc, #848]	; (d000b258 <main+0x10f8>)
d000af08:	4618      	mov	r0, r3
d000af0a:	ee08 3a90 	vmov	s17, r3
d000af0e:	4642      	mov	r2, r8
d000af10:	4623      	mov	r3, r4
d000af12:	f7fd fd9d 	bl	d0008a50 <pjpeg_decode_init>
d000af16:	4605      	mov	r5, r0
d000af18:	2800      	cmp	r0, #0
d000af1a:	f040 823d 	bne.w	d000b398 <main+0x1238>
d000af1e:	ee18 0a90 	vmov	r0, s17
d000af22:	f7fe fd1d 	bl	d0009960 <decode_pjpeg_mcus_to_image.constprop.0>
d000af26:	4606      	mov	r6, r0
d000af28:	2800      	cmp	r0, #0
d000af2a:	f000 81d0 	beq.w	d000b2ce <main+0x116e>
d000af2e:	f89b 3004 	ldrb.w	r3, [fp, #4]
d000af32:	4628      	mov	r0, r5
d000af34:	f89b 2005 	ldrb.w	r2, [fp, #5]
d000af38:	f89b 1006 	ldrb.w	r1, [fp, #6]
d000af3c:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d000af40:	f89b 2007 	ldrb.w	r2, [fp, #7]
d000af44:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d000af48:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d000af4c:	681b      	ldr	r3, [r3, #0]
d000af4e:	68db      	ldr	r3, [r3, #12]
d000af50:	4798      	blx	r3
d000af52:	f7ff bbee 	b.w	d000a732 <main+0x5d2>
d000af56:	f44f 7380 	mov.w	r3, #256	; 0x100
d000af5a:	930d      	str	r3, [sp, #52]	; 0x34
d000af5c:	e417      	b.n	d000a78e <main+0x62e>
d000af5e:	2c0c      	cmp	r4, #12
d000af60:	f000 818e 	beq.w	d000b280 <main+0x1120>
d000af64:	f109 0503 	add.w	r5, r9, #3
d000af68:	2203      	movs	r2, #3
d000af6a:	49bc      	ldr	r1, [pc, #752]	; (d000b25c <main+0x10fc>)
d000af6c:	4628      	mov	r0, r5
d000af6e:	f001 fb9f 	bl	d000c6b0 <memcmp>
d000af72:	2800      	cmp	r0, #0
d000af74:	f040 817c 	bne.w	d000b270 <main+0x1110>
d000af78:	f899 3007 	ldrb.w	r3, [r9, #7]
d000af7c:	f640 72ff 	movw	r2, #4095	; 0xfff
d000af80:	f899 5006 	ldrb.w	r5, [r9, #6]
d000af84:	f899 1009 	ldrb.w	r1, [r9, #9]
d000af88:	ea45 2003 	orr.w	r0, r5, r3, lsl #8
d000af8c:	f899 8008 	ldrb.w	r8, [r9, #8]
d000af90:	1e43      	subs	r3, r0, #1
d000af92:	ea48 2801 	orr.w	r8, r8, r1, lsl #8
d000af96:	9002      	str	r0, [sp, #8]
d000af98:	b29b      	uxth	r3, r3
d000af9a:	4293      	cmp	r3, r2
d000af9c:	f200 8244 	bhi.w	d000b428 <main+0x12c8>
d000afa0:	f108 33ff 	add.w	r3, r8, #4294967295	; 0xffffffff
d000afa4:	b29b      	uxth	r3, r3
d000afa6:	4293      	cmp	r3, r2
d000afa8:	f200 823e 	bhi.w	d000b428 <main+0x12c8>
d000afac:	fba0 2308 	umull	r2, r3, r0, r8
d000afb0:	a1a7      	add	r1, pc, #668	; (adr r1, d000b250 <main+0x10f0>)
d000afb2:	e9d1 0100 	ldrd	r0, r1, [r1]
d000afb6:	4299      	cmp	r1, r3
d000afb8:	bf08      	it	eq
d000afba:	4290      	cmpeq	r0, r2
d000afbc:	f0c0 8234 	bcc.w	d000b428 <main+0x12c8>
d000afc0:	48a7      	ldr	r0, [pc, #668]	; (d000b260 <main+0x1100>)
d000afc2:	f899 100a 	ldrb.w	r1, [r9, #10]
d000afc6:	f100 020c 	add.w	r2, r0, #12
d000afca:	f899 700b 	ldrb.w	r7, [r9, #11]
d000afce:	9004      	str	r0, [sp, #16]
d000afd0:	0755      	lsls	r5, r2, #29
d000afd2:	f3c2 0380 	ubfx	r3, r2, #2, #1
d000afd6:	9203      	str	r2, [sp, #12]
d000afd8:	d502      	bpl.n	d000afe0 <main+0xe80>
d000afda:	f04f 427f 	mov.w	r2, #4278190080	; 0xff000000
d000afde:	60c2      	str	r2, [r0, #12]
d000afe0:	f5c3 7080 	rsb	r0, r3, #256	; 0x100
d000afe4:	9d04      	ldr	r5, [sp, #16]
d000afe6:	1cda      	adds	r2, r3, #3
d000afe8:	46a4      	mov	ip, r4
d000afea:	f3c0 064e 	ubfx	r6, r0, #1, #15
d000afee:	469e      	mov	lr, r3
d000aff0:	eb05 0282 	add.w	r2, r5, r2, lsl #2
d000aff4:	9d02      	ldr	r5, [sp, #8]
d000aff6:	b280      	uxth	r0, r0
d000aff8:	eb02 06c6 	add.w	r6, r2, r6, lsl #3
d000affc:	f04f 437f 	mov.w	r3, #4278190080	; 0xff000000
d000b000:	f04f 447f 	mov.w	r4, #4278190080	; 0xff000000
d000b004:	e8e2 3402 	strd	r3, r4, [r2], #8
d000b008:	42b2      	cmp	r2, r6
d000b00a:	d1f7      	bne.n	d000affc <main+0xe9c>
d000b00c:	f020 0201 	bic.w	r2, r0, #1
d000b010:	4673      	mov	r3, lr
d000b012:	4664      	mov	r4, ip
d000b014:	9502      	str	r5, [sp, #8]
d000b016:	4413      	add	r3, r2
d000b018:	4282      	cmp	r2, r0
d000b01a:	b29b      	uxth	r3, r3
d000b01c:	d005      	beq.n	d000b02a <main+0xeca>
d000b01e:	9a04      	ldr	r2, [sp, #16]
d000b020:	eb02 0383 	add.w	r3, r2, r3, lsl #2
d000b024:	f04f 427f 	mov.w	r2, #4278190080	; 0xff000000
d000b028:	60da      	str	r2, [r3, #12]
d000b02a:	0608      	lsls	r0, r1, #24
d000b02c:	f140 869d 	bpl.w	d000bd6a <main+0x1c0a>
d000b030:	f04f 0c01 	mov.w	ip, #1
d000b034:	f001 0307 	and.w	r3, r1, #7
d000b038:	2603      	movs	r6, #3
d000b03a:	4463      	add	r3, ip
d000b03c:	409e      	lsls	r6, r3
d000b03e:	fa0c f303 	lsl.w	r3, ip, r3
d000b042:	360d      	adds	r6, #13
d000b044:	b29b      	uxth	r3, r3
d000b046:	42b4      	cmp	r4, r6
d000b048:	9305      	str	r3, [sp, #20]
d000b04a:	f0c0 8684 	bcc.w	d000bd56 <main+0x1bf6>
d000b04e:	464a      	mov	r2, r9
d000b050:	f8dd e00c 	ldr.w	lr, [sp, #12]
d000b054:	9d02      	ldr	r5, [sp, #8]
d000b056:	7b50      	ldrb	r0, [r2, #13]
d000b058:	fa1f f18c 	uxth.w	r1, ip
d000b05c:	7b93      	ldrb	r3, [r2, #14]
d000b05e:	f10c 0c01 	add.w	ip, ip, #1
d000b062:	9006      	str	r0, [sp, #24]
d000b064:	3203      	adds	r2, #3
d000b066:	7b10      	ldrb	r0, [r2, #12]
d000b068:	021b      	lsls	r3, r3, #8
d000b06a:	9002      	str	r0, [sp, #8]
d000b06c:	9806      	ldr	r0, [sp, #24]
d000b06e:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
d000b072:	9802      	ldr	r0, [sp, #8]
d000b074:	4303      	orrs	r3, r0
d000b076:	f043 437f 	orr.w	r3, r3, #4278190080	; 0xff000000
d000b07a:	f84e 3b04 	str.w	r3, [lr], #4
d000b07e:	9b05      	ldr	r3, [sp, #20]
d000b080:	428b      	cmp	r3, r1
d000b082:	d901      	bls.n	d000b088 <main+0xf28>
d000b084:	29ff      	cmp	r1, #255	; 0xff
d000b086:	d9e6      	bls.n	d000b056 <main+0xef6>
d000b088:	9502      	str	r5, [sp, #8]
d000b08a:	9802      	ldr	r0, [sp, #8]
d000b08c:	9d04      	ldr	r5, [sp, #16]
d000b08e:	fb08 f200 	mul.w	r2, r8, r0
d000b092:	8028      	strh	r0, [r5, #0]
d000b094:	4610      	mov	r0, r2
d000b096:	9205      	str	r2, [sp, #20]
d000b098:	f8a5 8002 	strh.w	r8, [r5, #2]
d000b09c:	f001 faf8 	bl	d000c690 <malloc>
d000b0a0:	9a05      	ldr	r2, [sp, #20]
d000b0a2:	6068      	str	r0, [r5, #4]
d000b0a4:	2800      	cmp	r0, #0
d000b0a6:	f000 85c5 	beq.w	d000bc34 <main+0x1ad4>
d000b0aa:	4639      	mov	r1, r7
d000b0ac:	f001 fb1c 	bl	d000c6e8 <memset>
d000b0b0:	f04f 31ff 	mov.w	r1, #4294967295	; 0xffffffff
d000b0b4:	9d02      	ldr	r5, [sp, #8]
d000b0b6:	42b4      	cmp	r4, r6
d000b0b8:	f240 85b2 	bls.w	d000bc20 <main+0x1ac0>
d000b0bc:	f819 3006 	ldrb.w	r3, [r9, r6]
d000b0c0:	f106 0e01 	add.w	lr, r6, #1
d000b0c4:	eb09 0c06 	add.w	ip, r9, r6
d000b0c8:	2b3b      	cmp	r3, #59	; 0x3b
d000b0ca:	f000 8407 	beq.w	d000b8dc <main+0x177c>
d000b0ce:	2b21      	cmp	r3, #33	; 0x21
d000b0d0:	f040 83ad 	bne.w	d000b82e <main+0x16ce>
d000b0d4:	4574      	cmp	r4, lr
d000b0d6:	f240 8363 	bls.w	d000b7a0 <main+0x1640>
d000b0da:	f819 200e 	ldrb.w	r2, [r9, lr]
d000b0de:	1cb3      	adds	r3, r6, #2
d000b0e0:	2af9      	cmp	r2, #249	; 0xf9
d000b0e2:	f040 8359 	bne.w	d000b798 <main+0x1638>
d000b0e6:	f106 0008 	add.w	r0, r6, #8
d000b0ea:	4284      	cmp	r4, r0
d000b0ec:	f0c0 8395 	bcc.w	d000b81a <main+0x16ba>
d000b0f0:	f819 2003 	ldrb.w	r2, [r9, r3]
d000b0f4:	1cf3      	adds	r3, r6, #3
d000b0f6:	2a04      	cmp	r2, #4
d000b0f8:	f040 8385 	bne.w	d000b806 <main+0x16a6>
d000b0fc:	f819 3003 	ldrb.w	r3, [r9, r3]
d000b100:	3607      	adds	r6, #7
d000b102:	07d9      	lsls	r1, r3, #31
d000b104:	f100 8356 	bmi.w	d000b7b4 <main+0x1654>
d000b108:	f04f 31ff 	mov.w	r1, #4294967295	; 0xffffffff
d000b10c:	f819 3006 	ldrb.w	r3, [r9, r6]
d000b110:	2b00      	cmp	r3, #0
d000b112:	f040 836e 	bne.w	d000b7f2 <main+0x1692>
d000b116:	4606      	mov	r6, r0
d000b118:	e7cd      	b.n	d000b0b6 <main+0xf56>
d000b11a:	2200      	movs	r2, #0
d000b11c:	a921      	add	r1, sp, #132	; 0x84
d000b11e:	9221      	str	r2, [sp, #132]	; 0x84
d000b120:	ee08 1a90 	vmov	s17, r1
d000b124:	9222      	str	r2, [sp, #136]	; 0x88
d000b126:	9223      	str	r2, [sp, #140]	; 0x8c
d000b128:	f8ad 2090 	strh.w	r2, [sp, #144]	; 0x90
d000b12c:	f899 0001 	ldrb.w	r0, [r9, #1]
d000b130:	f899 1000 	ldrb.w	r1, [r9]
d000b134:	f899 6002 	ldrb.w	r6, [r9, #2]
d000b138:	ea41 2100 	orr.w	r1, r1, r0, lsl #8
d000b13c:	f899 0003 	ldrb.w	r0, [r9, #3]
d000b140:	ea41 4106 	orr.w	r1, r1, r6, lsl #16
d000b144:	ea41 6100 	orr.w	r1, r1, r0, lsl #24
d000b148:	ba09      	rev	r1, r1
d000b14a:	4299      	cmp	r1, r3
d000b14c:	f040 8162 	bne.w	d000b414 <main+0x12b4>
d000b150:	f899 0009 	ldrb.w	r0, [r9, #9]
d000b154:	f899 3008 	ldrb.w	r3, [r9, #8]
d000b158:	f899 100a 	ldrb.w	r1, [r9, #10]
d000b15c:	ea43 2300 	orr.w	r3, r3, r0, lsl #8
d000b160:	f899 000b 	ldrb.w	r0, [r9, #11]
d000b164:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d000b168:	493e      	ldr	r1, [pc, #248]	; (d000b264 <main+0x1104>)
d000b16a:	ea43 6300 	orr.w	r3, r3, r0, lsl #24
d000b16e:	ba1b      	rev	r3, r3
d000b170:	428b      	cmp	r3, r1
d000b172:	f000 82e2 	beq.w	d000b73a <main+0x15da>
d000b176:	f101 4179 	add.w	r1, r1, #4177526784	; 0xf9000000
d000b17a:	f501 211f 	add.w	r1, r1, #651264	; 0x9f000
d000b17e:	f201 512d 	addw	r1, r1, #1325	; 0x52d
d000b182:	428b      	cmp	r3, r1
d000b184:	f040 8321 	bne.w	d000b7ca <main+0x166a>
d000b188:	9206      	str	r2, [sp, #24]
d000b18a:	f04f 0e00 	mov.w	lr, #0
d000b18e:	f04f 080c 	mov.w	r8, #12
d000b192:	f8cd e00c 	str.w	lr, [sp, #12]
d000b196:	f8cd e01c 	str.w	lr, [sp, #28]
d000b19a:	f8cd e020 	str.w	lr, [sp, #32]
d000b19e:	f8cd e02c 	str.w	lr, [sp, #44]	; 0x2c
d000b1a2:	f8cd e008 	str.w	lr, [sp, #8]
d000b1a6:	f108 0008 	add.w	r0, r8, #8
d000b1aa:	4284      	cmp	r4, r0
d000b1ac:	f0c0 815d 	bcc.w	d000b46a <main+0x130a>
d000b1b0:	eb09 0608 	add.w	r6, r9, r8
d000b1b4:	f819 1008 	ldrb.w	r1, [r9, r8]
d000b1b8:	eb09 0300 	add.w	r3, r9, r0
d000b1bc:	7977      	ldrb	r7, [r6, #5]
d000b1be:	7932      	ldrb	r2, [r6, #4]
d000b1c0:	f896 c002 	ldrb.w	ip, [r6, #2]
d000b1c4:	ea42 2207 	orr.w	r2, r2, r7, lsl #8
d000b1c8:	79b7      	ldrb	r7, [r6, #6]
d000b1ca:	ea42 4207 	orr.w	r2, r2, r7, lsl #16
d000b1ce:	79f7      	ldrb	r7, [r6, #7]
d000b1d0:	ea42 6207 	orr.w	r2, r2, r7, lsl #24
d000b1d4:	7877      	ldrb	r7, [r6, #1]
d000b1d6:	78f6      	ldrb	r6, [r6, #3]
d000b1d8:	ba12      	rev	r2, r2
d000b1da:	ea41 2107 	orr.w	r1, r1, r7, lsl #8
d000b1de:	eb02 0708 	add.w	r7, r2, r8
d000b1e2:	f002 0801 	and.w	r8, r2, #1
d000b1e6:	ea41 410c 	orr.w	r1, r1, ip, lsl #16
d000b1ea:	44b8      	add	r8, r7
d000b1ec:	3708      	adds	r7, #8
d000b1ee:	ea41 6106 	orr.w	r1, r1, r6, lsl #24
d000b1f2:	42bc      	cmp	r4, r7
d000b1f4:	f108 0808 	add.w	r8, r8, #8
d000b1f8:	ba09      	rev	r1, r1
d000b1fa:	f0c0 811f 	bcc.w	d000b43c <main+0x12dc>
d000b1fe:	4e1a      	ldr	r6, [pc, #104]	; (d000b268 <main+0x1108>)
d000b200:	42b1      	cmp	r1, r6
d000b202:	f000 8092 	beq.w	d000b32a <main+0x11ca>
d000b206:	4e19      	ldr	r6, [pc, #100]	; (d000b26c <main+0x110c>)
d000b208:	42b1      	cmp	r1, r6
d000b20a:	f000 8088 	beq.w	d000b31e <main+0x11be>
d000b20e:	f106 467f 	add.w	r6, r6, #4278190080	; 0xff000000
d000b212:	f506 3600 	add.w	r6, r6, #131072	; 0x20000
d000b216:	f206 3609 	addw	r6, r6, #777	; 0x309
d000b21a:	42b1      	cmp	r1, r6
d000b21c:	f000 8082 	beq.w	d000b324 <main+0x11c4>
d000b220:	f506 0672 	add.w	r6, r6, #15859712	; 0xf20000
d000b224:	f606 06ee 	addw	r6, r6, #2286	; 0x8ee
d000b228:	42b1      	cmp	r1, r6
d000b22a:	d1bc      	bne.n	d000b1a6 <main+0x1046>
d000b22c:	2a03      	cmp	r2, #3
d000b22e:	d9ba      	bls.n	d000b1a6 <main+0x1046>
d000b230:	7859      	ldrb	r1, [r3, #1]
d000b232:	f819 2000 	ldrb.w	r2, [r9, r0]
d000b236:	7898      	ldrb	r0, [r3, #2]
d000b238:	ea42 2201 	orr.w	r2, r2, r1, lsl #8
d000b23c:	78d9      	ldrb	r1, [r3, #3]
d000b23e:	ea42 4300 	orr.w	r3, r2, r0, lsl #16
d000b242:	ea43 6301 	orr.w	r3, r3, r1, lsl #24
d000b246:	ba1b      	rev	r3, r3
d000b248:	9303      	str	r3, [sp, #12]
d000b24a:	e7ac      	b.n	d000b1a6 <main+0x1046>
d000b24c:	f3af 8000 	nop.w
d000b250:	004c4b40 	.word	0x004c4b40
d000b254:	00000000 	.word	0x00000000
d000b258:	d00094a5 	.word	0xd00094a5
d000b25c:	d000e534 	.word	0xd000e534
d000b260:	d000f670 	.word	0xd000f670
d000b264:	50424d20 	.word	0x50424d20
d000b268:	424d4844 	.word	0x424d4844
d000b26c:	434d4150 	.word	0x434d4150
d000b270:	4628      	mov	r0, r5
d000b272:	2203      	movs	r2, #3
d000b274:	49b0      	ldr	r1, [pc, #704]	; (d000b538 <main+0x13d8>)
d000b276:	f001 fa1b 	bl	d000c6b0 <memcmp>
d000b27a:	2800      	cmp	r0, #0
d000b27c:	f43f ae7c 	beq.w	d000af78 <main+0xe18>
d000b280:	48ae      	ldr	r0, [pc, #696]	; (d000b53c <main+0x13dc>)
d000b282:	f7fe f9b1 	bl	d00095e8 <set_status>
d000b286:	4648      	mov	r0, r9
d000b288:	f001 fa0a 	bl	d000c6a0 <free>
d000b28c:	f7fe fe5c 	bl	d0009f48 <free_image.constprop.0>
d000b290:	f7ff b983 	b.w	d000a59a <main+0x43a>
d000b294:	4621      	mov	r1, r4
d000b296:	4648      	mov	r0, r9
d000b298:	f7fe fdd0 	bl	d0009e3c <load_hw_jpeg_from_memory.constprop.0>
d000b29c:	4603      	mov	r3, r0
d000b29e:	2800      	cmp	r0, #0
d000b2a0:	f000 87a0 	beq.w	d000c1e4 <main+0x2084>
d000b2a4:	ab1b      	add	r3, sp, #108	; 0x6c
d000b2a6:	4648      	mov	r0, r9
d000b2a8:	ee08 3a10 	vmov	s16, r3
d000b2ac:	f001 f9f8 	bl	d000c6a0 <free>
d000b2b0:	ab21      	add	r3, sp, #132	; 0x84
d000b2b2:	f10d 0878 	add.w	r8, sp, #120	; 0x78
d000b2b6:	ee08 3a90 	vmov	s17, r3
d000b2ba:	4ba1      	ldr	r3, [pc, #644]	; (d000b540 <main+0x13e0>)
d000b2bc:	9304      	str	r3, [sp, #16]
d000b2be:	9a04      	ldr	r2, [sp, #16]
d000b2c0:	21a0      	movs	r1, #160	; 0xa0
d000b2c2:	8853      	ldrh	r3, [r2, #2]
d000b2c4:	e9cd 3a00 	strd	r3, sl, [sp]
d000b2c8:	8813      	ldrh	r3, [r2, #0]
d000b2ca:	f7ff ba3d 	b.w	d000a748 <main+0x5e8>
d000b2ce:	f7fe fe3b 	bl	d0009f48 <free_image.constprop.0>
d000b2d2:	4640      	mov	r0, r8
d000b2d4:	f7fe fc64 	bl	d0009ba0 <load_stb_jpeg_from_file.constprop.0>
d000b2d8:	f89b 3004 	ldrb.w	r3, [fp, #4]
d000b2dc:	f89b 2005 	ldrb.w	r2, [fp, #5]
d000b2e0:	4604      	mov	r4, r0
d000b2e2:	f89b 1006 	ldrb.w	r1, [fp, #6]
d000b2e6:	4630      	mov	r0, r6
d000b2e8:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d000b2ec:	f89b 2007 	ldrb.w	r2, [fp, #7]
d000b2f0:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d000b2f4:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d000b2f8:	681b      	ldr	r3, [r3, #0]
d000b2fa:	68db      	ldr	r3, [r3, #12]
d000b2fc:	4798      	blx	r3
d000b2fe:	2c00      	cmp	r4, #0
d000b300:	f47f aa17 	bne.w	d000a732 <main+0x5d2>
d000b304:	e5dd      	b.n	d000aec2 <main+0xd62>
d000b306:	4603      	mov	r3, r0
d000b308:	4a8e      	ldr	r2, [pc, #568]	; (d000b544 <main+0x13e4>)
d000b30a:	21a0      	movs	r1, #160	; 0xa0
d000b30c:	f8cd a000 	str.w	sl, [sp]
d000b310:	488d      	ldr	r0, [pc, #564]	; (d000b548 <main+0x13e8>)
d000b312:	f001 fe7f 	bl	d000d014 <sniprintf>
d000b316:	488c      	ldr	r0, [pc, #560]	; (d000b548 <main+0x13e8>)
d000b318:	f7fe f966 	bl	d00095e8 <set_status>
d000b31c:	e5d1      	b.n	d000aec2 <main+0xd62>
d000b31e:	9208      	str	r2, [sp, #32]
d000b320:	9302      	str	r3, [sp, #8]
d000b322:	e740      	b.n	d000b1a6 <main+0x1046>
d000b324:	9207      	str	r2, [sp, #28]
d000b326:	930b      	str	r3, [sp, #44]	; 0x2c
d000b328:	e73d      	b.n	d000b1a6 <main+0x1046>
d000b32a:	2a13      	cmp	r2, #19
d000b32c:	d92a      	bls.n	d000b384 <main+0x1224>
d000b32e:	f819 2000 	ldrb.w	r2, [r9, r0]
d000b332:	7859      	ldrb	r1, [r3, #1]
d000b334:	ea41 2102 	orr.w	r1, r1, r2, lsl #8
d000b338:	f8ad 1084 	strh.w	r1, [sp, #132]	; 0x84
d000b33c:	7898      	ldrb	r0, [r3, #2]
d000b33e:	78da      	ldrb	r2, [r3, #3]
d000b340:	ea42 2200 	orr.w	r2, r2, r0, lsl #8
d000b344:	f8ad 2086 	strh.w	r2, [sp, #134]	; 0x86
d000b348:	7a18      	ldrb	r0, [r3, #8]
d000b34a:	f88d 0088 	strb.w	r0, [sp, #136]	; 0x88
d000b34e:	7a58      	ldrb	r0, [r3, #9]
d000b350:	f88d 0089 	strb.w	r0, [sp, #137]	; 0x89
d000b354:	7a98      	ldrb	r0, [r3, #10]
d000b356:	f88d 008a 	strb.w	r0, [sp, #138]	; 0x8a
d000b35a:	7b1e      	ldrb	r6, [r3, #12]
d000b35c:	7b58      	ldrb	r0, [r3, #13]
d000b35e:	ea40 2006 	orr.w	r0, r0, r6, lsl #8
d000b362:	f8ad 008c 	strh.w	r0, [sp, #140]	; 0x8c
d000b366:	7c1e      	ldrb	r6, [r3, #16]
d000b368:	7c58      	ldrb	r0, [r3, #17]
d000b36a:	ea40 2006 	orr.w	r0, r0, r6, lsl #8
d000b36e:	f8ad 008e 	strh.w	r0, [sp, #142]	; 0x8e
d000b372:	7c98      	ldrb	r0, [r3, #18]
d000b374:	7cdb      	ldrb	r3, [r3, #19]
d000b376:	ea43 2300 	orr.w	r3, r3, r0, lsl #8
d000b37a:	f8ad 3090 	strh.w	r3, [sp, #144]	; 0x90
d000b37e:	b109      	cbz	r1, d000b384 <main+0x1224>
d000b380:	2a00      	cmp	r2, #0
d000b382:	d165      	bne.n	d000b450 <main+0x12f0>
d000b384:	4871      	ldr	r0, [pc, #452]	; (d000b54c <main+0x13ec>)
d000b386:	f7fe f92f 	bl	d00095e8 <set_status>
d000b38a:	4648      	mov	r0, r9
d000b38c:	f001 f988 	bl	d000c6a0 <free>
d000b390:	f7fe fdda 	bl	d0009f48 <free_image.constprop.0>
d000b394:	f7ff b901 	b.w	d000a59a <main+0x43a>
d000b398:	4640      	mov	r0, r8
d000b39a:	f7fe fc01 	bl	d0009ba0 <load_stb_jpeg_from_file.constprop.0>
d000b39e:	4604      	mov	r4, r0
d000b3a0:	b9b0      	cbnz	r0, d000b3d0 <main+0x1270>
d000b3a2:	2d25      	cmp	r5, #37	; 0x25
d000b3a4:	f000 8772 	beq.w	d000c28c <main+0x212c>
d000b3a8:	2d1b      	cmp	r5, #27
d000b3aa:	f000 876c 	beq.w	d000c286 <main+0x2126>
d000b3ae:	2d1a      	cmp	r5, #26
d000b3b0:	f000 8748 	beq.w	d000c244 <main+0x20e4>
d000b3b4:	4b66      	ldr	r3, [pc, #408]	; (d000b550 <main+0x13f0>)
d000b3b6:	4a67      	ldr	r2, [pc, #412]	; (d000b554 <main+0x13f4>)
d000b3b8:	2d13      	cmp	r5, #19
d000b3ba:	bf08      	it	eq
d000b3bc:	4613      	moveq	r3, r2
d000b3be:	4a66      	ldr	r2, [pc, #408]	; (d000b558 <main+0x13f8>)
d000b3c0:	21a0      	movs	r1, #160	; 0xa0
d000b3c2:	4861      	ldr	r0, [pc, #388]	; (d000b548 <main+0x13e8>)
d000b3c4:	9500      	str	r5, [sp, #0]
d000b3c6:	f001 fe25 	bl	d000d014 <sniprintf>
d000b3ca:	485f      	ldr	r0, [pc, #380]	; (d000b548 <main+0x13e8>)
d000b3cc:	f7fe f90c 	bl	d00095e8 <set_status>
d000b3d0:	f89b 3004 	ldrb.w	r3, [fp, #4]
d000b3d4:	2000      	movs	r0, #0
d000b3d6:	f89b 2005 	ldrb.w	r2, [fp, #5]
d000b3da:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d000b3de:	f89b 2006 	ldrb.w	r2, [fp, #6]
d000b3e2:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d000b3e6:	f89b 2007 	ldrb.w	r2, [fp, #7]
d000b3ea:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d000b3ee:	681b      	ldr	r3, [r3, #0]
d000b3f0:	68db      	ldr	r3, [r3, #12]
d000b3f2:	4798      	blx	r3
d000b3f4:	2c00      	cmp	r4, #0
d000b3f6:	f47f a99c 	bne.w	d000a732 <main+0x5d2>
d000b3fa:	e562      	b.n	d000aec2 <main+0xd62>
d000b3fc:	2c05      	cmp	r4, #5
d000b3fe:	f67f a8bd 	bls.w	d000a57c <main+0x41c>
d000b402:	2203      	movs	r2, #3
d000b404:	4955      	ldr	r1, [pc, #340]	; (d000b55c <main+0x13fc>)
d000b406:	4648      	mov	r0, r9
d000b408:	f001 f952 	bl	d000c6b0 <memcmp>
d000b40c:	2800      	cmp	r0, #0
d000b40e:	f47f a8b5 	bne.w	d000a57c <main+0x41c>
d000b412:	e735      	b.n	d000b280 <main+0x1120>
d000b414:	4852      	ldr	r0, [pc, #328]	; (d000b560 <main+0x1400>)
d000b416:	f7fe f8e7 	bl	d00095e8 <set_status>
d000b41a:	4648      	mov	r0, r9
d000b41c:	f001 f940 	bl	d000c6a0 <free>
d000b420:	f7fe fd92 	bl	d0009f48 <free_image.constprop.0>
d000b424:	f7ff b8b9 	b.w	d000a59a <main+0x43a>
d000b428:	484e      	ldr	r0, [pc, #312]	; (d000b564 <main+0x1404>)
d000b42a:	f7fe f8dd 	bl	d00095e8 <set_status>
d000b42e:	4648      	mov	r0, r9
d000b430:	f001 f936 	bl	d000c6a0 <free>
d000b434:	f7fe fd88 	bl	d0009f48 <free_image.constprop.0>
d000b438:	f7ff b8af 	b.w	d000a59a <main+0x43a>
d000b43c:	484a      	ldr	r0, [pc, #296]	; (d000b568 <main+0x1408>)
d000b43e:	f7fe f8d3 	bl	d00095e8 <set_status>
d000b442:	4648      	mov	r0, r9
d000b444:	f001 f92c 	bl	d000c6a0 <free>
d000b448:	f7fe fd7e 	bl	d0009f48 <free_image.constprop.0>
d000b44c:	f7ff b8a5 	b.w	d000a59a <main+0x43a>
d000b450:	f04f 0e01 	mov.w	lr, #1
d000b454:	e6a7      	b.n	d000b1a6 <main+0x1046>
d000b456:	4845      	ldr	r0, [pc, #276]	; (d000b56c <main+0x140c>)
d000b458:	f7fe f8c6 	bl	d00095e8 <set_status>
d000b45c:	4648      	mov	r0, r9
d000b45e:	f001 f91f 	bl	d000c6a0 <free>
d000b462:	f7fe fd71 	bl	d0009f48 <free_image.constprop.0>
d000b466:	f7ff b898 	b.w	d000a59a <main+0x43a>
d000b46a:	f1be 0f00 	cmp.w	lr, #0
d000b46e:	f001 8009 	beq.w	d000c484 <main+0x2324>
d000b472:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
d000b474:	2b00      	cmp	r3, #0
d000b476:	f001 8005 	beq.w	d000c484 <main+0x2324>
d000b47a:	f89d 308a 	ldrb.w	r3, [sp, #138]	; 0x8a
d000b47e:	2b01      	cmp	r3, #1
d000b480:	f200 87f6 	bhi.w	d000c470 <main+0x2310>
d000b484:	f8bd 4084 	ldrh.w	r4, [sp, #132]	; 0x84
d000b488:	f5b4 5f80 	cmp.w	r4, #4096	; 0x1000
d000b48c:	f201 8004 	bhi.w	d000c498 <main+0x2338>
d000b490:	f8bd 3086 	ldrh.w	r3, [sp, #134]	; 0x86
d000b494:	f5b3 5f80 	cmp.w	r3, #4096	; 0x1000
d000b498:	9305      	str	r3, [sp, #20]
d000b49a:	f200 87fd 	bhi.w	d000c498 <main+0x2338>
d000b49e:	fba4 2303 	umull	r2, r3, r4, r3
d000b4a2:	a123      	add	r1, pc, #140	; (adr r1, d000b530 <main+0x13d0>)
d000b4a4:	e9d1 0100 	ldrd	r0, r1, [r1]
d000b4a8:	4299      	cmp	r1, r3
d000b4aa:	bf08      	it	eq
d000b4ac:	4290      	cmpeq	r0, r2
d000b4ae:	f0c0 87f3 	bcc.w	d000c498 <main+0x2338>
d000b4b2:	4a23      	ldr	r2, [pc, #140]	; (d000b540 <main+0x13e0>)
d000b4b4:	f44f 7380 	mov.w	r3, #256	; 0x100
d000b4b8:	9805      	ldr	r0, [sp, #20]
d000b4ba:	f04f 417f 	mov.w	r1, #4278190080	; 0xff000000
d000b4be:	f102 070c 	add.w	r7, r2, #12
d000b4c2:	9204      	str	r2, [sp, #16]
d000b4c4:	8014      	strh	r4, [r2, #0]
d000b4c6:	8050      	strh	r0, [r2, #2]
d000b4c8:	463a      	mov	r2, r7
d000b4ca:	3b01      	subs	r3, #1
d000b4cc:	f842 1b04 	str.w	r1, [r2], #4
d000b4d0:	b29b      	uxth	r3, r3
d000b4d2:	2b00      	cmp	r3, #0
d000b4d4:	d1f9      	bne.n	d000b4ca <main+0x136a>
d000b4d6:	9b02      	ldr	r3, [sp, #8]
d000b4d8:	2b00      	cmp	r3, #0
d000b4da:	d05c      	beq.n	d000b596 <main+0x1436>
d000b4dc:	f240 3302 	movw	r3, #770	; 0x302
d000b4e0:	9a08      	ldr	r2, [sp, #32]
d000b4e2:	429a      	cmp	r2, r3
d000b4e4:	d802      	bhi.n	d000b4ec <main+0x138c>
d000b4e6:	2503      	movs	r5, #3
d000b4e8:	fbb2 f5f5 	udiv	r5, r2, r5
d000b4ec:	9b02      	ldr	r3, [sp, #8]
d000b4ee:	46bc      	mov	ip, r7
d000b4f0:	2100      	movs	r1, #0
d000b4f2:	e00d      	b.n	d000b510 <main+0x13b0>
d000b4f4:	f813 2c02 	ldrb.w	r2, [r3, #-2]
d000b4f8:	f813 6c03 	ldrb.w	r6, [r3, #-3]
d000b4fc:	0212      	lsls	r2, r2, #8
d000b4fe:	f813 0c01 	ldrb.w	r0, [r3, #-1]
d000b502:	ea42 4206 	orr.w	r2, r2, r6, lsl #16
d000b506:	4302      	orrs	r2, r0
d000b508:	f042 427f 	orr.w	r2, r2, #4278190080	; 0xff000000
d000b50c:	f84c 2b04 	str.w	r2, [ip], #4
d000b510:	42a9      	cmp	r1, r5
d000b512:	f103 0303 	add.w	r3, r3, #3
d000b516:	f101 0101 	add.w	r1, r1, #1
d000b51a:	d1eb      	bne.n	d000b4f4 <main+0x1394>
d000b51c:	9b03      	ldr	r3, [sp, #12]
d000b51e:	061b      	lsls	r3, r3, #24
d000b520:	d539      	bpl.n	d000b596 <main+0x1436>
d000b522:	2d20      	cmp	r5, #32
d000b524:	d837      	bhi.n	d000b596 <main+0x1436>
d000b526:	2100      	movs	r1, #0
d000b528:	e031      	b.n	d000b58e <main+0x142e>
d000b52a:	bf00      	nop
d000b52c:	f3af 8000 	nop.w
d000b530:	004c4b40 	.word	0x004c4b40
d000b534:	00000000 	.word	0x00000000
d000b538:	d000e538 	.word	0xd000e538
d000b53c:	d000e53c 	.word	0xd000e53c
d000b540:	d000f670 	.word	0xd000f670
d000b544:	d000e08c 	.word	0xd000e08c
d000b548:	d000fa7c 	.word	0xd000fa7c
d000b54c:	d000e408 	.word	0xd000e408
d000b550:	d000e1dc 	.word	0xd000e1dc
d000b554:	d000e220 	.word	0xd000e220
d000b558:	d000e248 	.word	0xd000e248
d000b55c:	d000e530 	.word	0xd000e530
d000b560:	d000e3bc 	.word	0xd000e3bc
d000b564:	d000e54c 	.word	0xd000e54c
d000b568:	d000e3f0 	.word	0xd000e3f0
d000b56c:	d000e264 	.word	0xd000e264
d000b570:	f857 2b04 	ldr.w	r2, [r7], #4
d000b574:	f3c2 2346 	ubfx	r3, r2, #9, #7
d000b578:	f3c2 4046 	ubfx	r0, r2, #17, #7
d000b57c:	f3c2 0246 	ubfx	r2, r2, #1, #7
d000b580:	021b      	lsls	r3, r3, #8
d000b582:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
d000b586:	4313      	orrs	r3, r2
d000b588:	f043 437f 	orr.w	r3, r3, #4278190080	; 0xff000000
d000b58c:	67fb      	str	r3, [r7, #124]	; 0x7c
d000b58e:	428d      	cmp	r5, r1
d000b590:	f101 0101 	add.w	r1, r1, #1
d000b594:	d1ec      	bne.n	d000b570 <main+0x1410>
d000b596:	9b03      	ldr	r3, [sp, #12]
d000b598:	f3c3 23c0 	ubfx	r3, r3, #11, #1
d000b59c:	9302      	str	r3, [sp, #8]
d000b59e:	9b06      	ldr	r3, [sp, #24]
d000b5a0:	2b00      	cmp	r3, #0
d000b5a2:	f040 8753 	bne.w	d000c44c <main+0x22ec>
d000b5a6:	f89d 2088 	ldrb.w	r2, [sp, #136]	; 0x88
d000b5aa:	2a18      	cmp	r2, #24
d000b5ac:	f000 8749 	beq.w	d000c442 <main+0x22e2>
d000b5b0:	9b02      	ldr	r3, [sp, #8]
d000b5b2:	2b00      	cmp	r3, #0
d000b5b4:	f040 8740 	bne.w	d000c438 <main+0x22d8>
d000b5b8:	2a08      	cmp	r2, #8
d000b5ba:	f200 8733 	bhi.w	d000c424 <main+0x22c4>
d000b5be:	9b06      	ldr	r3, [sp, #24]
d000b5c0:	9309      	str	r3, [sp, #36]	; 0x24
d000b5c2:	930a      	str	r3, [sp, #40]	; 0x28
d000b5c4:	f104 030f 	add.w	r3, r4, #15
d000b5c8:	f89d 1089 	ldrb.w	r1, [sp, #137]	; 0x89
d000b5cc:	091b      	lsrs	r3, r3, #4
d000b5ce:	2901      	cmp	r1, #1
d000b5d0:	bf08      	it	eq
d000b5d2:	3201      	addeq	r2, #1
d000b5d4:	005b      	lsls	r3, r3, #1
d000b5d6:	920c      	str	r2, [sp, #48]	; 0x30
d000b5d8:	461d      	mov	r5, r3
d000b5da:	9b0c      	ldr	r3, [sp, #48]	; 0x30
d000b5dc:	fb03 f305 	mul.w	r3, r3, r5
d000b5e0:	4618      	mov	r0, r3
d000b5e2:	ee08 3a10 	vmov	s16, r3
d000b5e6:	f001 f853 	bl	d000c690 <malloc>
d000b5ea:	4680      	mov	r8, r0
d000b5ec:	2800      	cmp	r0, #0
d000b5ee:	f000 87d3 	beq.w	d000c598 <main+0x2438>
d000b5f2:	9805      	ldr	r0, [sp, #20]
d000b5f4:	fb00 f004 	mul.w	r0, r0, r4
d000b5f8:	f001 f84a 	bl	d000c690 <malloc>
d000b5fc:	9b04      	ldr	r3, [sp, #16]
d000b5fe:	6058      	str	r0, [r3, #4]
d000b600:	2800      	cmp	r0, #0
d000b602:	f000 87bc 	beq.w	d000c57e <main+0x241e>
d000b606:	2300      	movs	r3, #0
d000b608:	00ea      	lsls	r2, r5, #3
d000b60a:	462c      	mov	r4, r5
d000b60c:	f8cd a044 	str.w	sl, [sp, #68]	; 0x44
d000b610:	9308      	str	r3, [sp, #32]
d000b612:	920d      	str	r2, [sp, #52]	; 0x34
d000b614:	9303      	str	r3, [sp, #12]
d000b616:	f8cd 9014 	str.w	r9, [sp, #20]
d000b61a:	f8bd 3086 	ldrh.w	r3, [sp, #134]	; 0x86
d000b61e:	9a03      	ldr	r2, [sp, #12]
d000b620:	429a      	cmp	r2, r3
d000b622:	f080 8799 	bcs.w	d000c558 <main+0x23f8>
d000b626:	f89d 308a 	ldrb.w	r3, [sp, #138]	; 0x8a
d000b62a:	2b00      	cmp	r3, #0
d000b62c:	f040 873e 	bne.w	d000c4ac <main+0x234c>
d000b630:	9a08      	ldr	r2, [sp, #32]
d000b632:	ee18 3a10 	vmov	r3, s16
d000b636:	4413      	add	r3, r2
d000b638:	9a07      	ldr	r2, [sp, #28]
d000b63a:	4293      	cmp	r3, r2
d000b63c:	f200 87c3 	bhi.w	d000c5c6 <main+0x2466>
d000b640:	9a08      	ldr	r2, [sp, #32]
d000b642:	980b      	ldr	r0, [sp, #44]	; 0x2c
d000b644:	9308      	str	r3, [sp, #32]
d000b646:	4402      	add	r2, r0
d000b648:	4640      	mov	r0, r8
d000b64a:	4611      	mov	r1, r2
d000b64c:	ee18 2a10 	vmov	r2, s16
d000b650:	f001 f83c 	bl	d000c6cc <memcpy>
d000b654:	9b06      	ldr	r3, [sp, #24]
d000b656:	2b00      	cmp	r3, #0
d000b658:	f040 8621 	bne.w	d000c29e <main+0x213e>
d000b65c:	9b0a      	ldr	r3, [sp, #40]	; 0x28
d000b65e:	2b00      	cmp	r3, #0
d000b660:	f040 8684 	bne.w	d000c36c <main+0x220c>
d000b664:	9b02      	ldr	r3, [sp, #8]
d000b666:	2b00      	cmp	r3, #0
d000b668:	f000 8632 	beq.w	d000c2d0 <main+0x2170>
d000b66c:	f89d 3088 	ldrb.w	r3, [sp, #136]	; 0x88
d000b670:	990a      	ldr	r1, [sp, #40]	; 0x28
d000b672:	2b07      	cmp	r3, #7
d000b674:	f04f 0301 	mov.w	r3, #1
d000b678:	460a      	mov	r2, r1
d000b67a:	468a      	mov	sl, r1
d000b67c:	bf8c      	ite	hi
d000b67e:	f04f 0906 	movhi.w	r9, #6
d000b682:	f04f 0904 	movls.w	r9, #4
d000b686:	468c      	mov	ip, r1
d000b688:	fa03 f309 	lsl.w	r3, r3, r9
d000b68c:	3b01      	subs	r3, #1
d000b68e:	b2db      	uxtb	r3, r3
d000b690:	930e      	str	r3, [sp, #56]	; 0x38
d000b692:	f8bd 7084 	ldrh.w	r7, [sp, #132]	; 0x84
d000b696:	42b9      	cmp	r1, r7
d000b698:	f080 860b 	bcs.w	d000c2b2 <main+0x2152>
d000b69c:	f89d 5088 	ldrb.w	r5, [sp, #136]	; 0x88
d000b6a0:	f001 0007 	and.w	r0, r1, #7
d000b6a4:	2300      	movs	r3, #0
d000b6a6:	eb08 06d1 	add.w	r6, r8, r1, lsr #3
d000b6aa:	950f      	str	r5, [sp, #60]	; 0x3c
d000b6ac:	2580      	movs	r5, #128	; 0x80
d000b6ae:	9212      	str	r2, [sp, #72]	; 0x48
d000b6b0:	fa25 f000 	lsr.w	r0, r5, r0
d000b6b4:	461d      	mov	r5, r3
d000b6b6:	b2c0      	uxtb	r0, r0
d000b6b8:	9010      	str	r0, [sp, #64]	; 0x40
d000b6ba:	e00a      	b.n	d000b6d2 <main+0x1572>
d000b6bc:	f1be 0f07 	cmp.w	lr, #7
d000b6c0:	d811      	bhi.n	d000b6e6 <main+0x1586>
d000b6c2:	f896 e000 	ldrb.w	lr, [r6]
d000b6c6:	4426      	add	r6, r4
d000b6c8:	9a10      	ldr	r2, [sp, #64]	; 0x40
d000b6ca:	ea12 0f0e 	tst.w	r2, lr
d000b6ce:	bf18      	it	ne
d000b6d0:	b2c3      	uxtbne	r3, r0
d000b6d2:	2201      	movs	r2, #1
d000b6d4:	fa5f fe85 	uxtb.w	lr, r5
d000b6d8:	fa02 f005 	lsl.w	r0, r2, r5
d000b6dc:	4415      	add	r5, r2
d000b6de:	9a0f      	ldr	r2, [sp, #60]	; 0x3c
d000b6e0:	4318      	orrs	r0, r3
d000b6e2:	4596      	cmp	lr, r2
d000b6e4:	d3ea      	bcc.n	d000b6bc <main+0x155c>
d000b6e6:	980e      	ldr	r0, [sp, #56]	; 0x38
d000b6e8:	f1b9 0f06 	cmp.w	r9, #6
d000b6ec:	fa43 f509 	asr.w	r5, r3, r9
d000b6f0:	9a12      	ldr	r2, [sp, #72]	; 0x48
d000b6f2:	ea03 0300 	and.w	r3, r3, r0
d000b6f6:	f000 85cc 	beq.w	d000c292 <main+0x2132>
d000b6fa:	ea43 1003 	orr.w	r0, r3, r3, lsl #4
d000b6fe:	b2c0      	uxtb	r0, r0
d000b700:	2d00      	cmp	r5, #0
d000b702:	f040 85db 	bne.w	d000c2bc <main+0x215c>
d000b706:	9a04      	ldr	r2, [sp, #16]
d000b708:	eb02 0383 	add.w	r3, r2, r3, lsl #2
d000b70c:	68da      	ldr	r2, [r3, #12]
d000b70e:	f3c2 4c07 	ubfx	ip, r2, #16, #8
d000b712:	f3c2 2a07 	ubfx	sl, r2, #8, #8
d000b716:	b2d2      	uxtb	r2, r2
d000b718:	f02c 001f 	bic.w	r0, ip, #31
d000b71c:	ea4f 05da 	mov.w	r5, sl, lsr #3
d000b720:	9b04      	ldr	r3, [sp, #16]
d000b722:	ea40 1092 	orr.w	r0, r0, r2, lsr #6
d000b726:	f005 051c 	and.w	r5, r5, #28
d000b72a:	685b      	ldr	r3, [r3, #4]
d000b72c:	9e03      	ldr	r6, [sp, #12]
d000b72e:	4328      	orrs	r0, r5
d000b730:	fb07 3306 	mla	r3, r7, r6, r3
d000b734:	5458      	strb	r0, [r3, r1]
d000b736:	3101      	adds	r1, #1
d000b738:	e7ab      	b.n	d000b692 <main+0x1532>
d000b73a:	2301      	movs	r3, #1
d000b73c:	9306      	str	r3, [sp, #24]
d000b73e:	e524      	b.n	d000b18a <main+0x102a>
d000b740:	487a      	ldr	r0, [pc, #488]	; (d000b92c <main+0x17cc>)
d000b742:	f7fd ff51 	bl	d00095e8 <set_status>
d000b746:	4648      	mov	r0, r9
d000b748:	f000 ffaa 	bl	d000c6a0 <free>
d000b74c:	f7fe fbfc 	bl	d0009f48 <free_image.constprop.0>
d000b750:	f7fe bf23 	b.w	d000a59a <main+0x43a>
d000b754:	4876      	ldr	r0, [pc, #472]	; (d000b930 <main+0x17d0>)
d000b756:	f7fd ff47 	bl	d00095e8 <set_status>
d000b75a:	4648      	mov	r0, r9
d000b75c:	f000 ffa0 	bl	d000c6a0 <free>
d000b760:	f7fe fbf2 	bl	d0009f48 <free_image.constprop.0>
d000b764:	f7fe bf19 	b.w	d000a59a <main+0x43a>
d000b768:	425b      	negs	r3, r3
d000b76a:	9302      	str	r3, [sp, #8]
d000b76c:	2301      	movs	r3, #1
d000b76e:	9306      	str	r3, [sp, #24]
d000b770:	f7ff b9bc 	b.w	d000aaec <main+0x98c>
d000b774:	486f      	ldr	r0, [pc, #444]	; (d000b934 <main+0x17d4>)
d000b776:	f7fd ff37 	bl	d00095e8 <set_status>
d000b77a:	4648      	mov	r0, r9
d000b77c:	f000 ff90 	bl	d000c6a0 <free>
d000b780:	f7fe fbe2 	bl	d0009f48 <free_image.constprop.0>
d000b784:	f7fe bf09 	b.w	d000a59a <main+0x43a>
d000b788:	f819 2003 	ldrb.w	r2, [r9, r3]
d000b78c:	1813      	adds	r3, r2, r0
d000b78e:	2a00      	cmp	r2, #0
d000b790:	f43f acc1 	beq.w	d000b116 <main+0xfb6>
d000b794:	429c      	cmp	r4, r3
d000b796:	d303      	bcc.n	d000b7a0 <main+0x1640>
d000b798:	429c      	cmp	r4, r3
d000b79a:	f103 0001 	add.w	r0, r3, #1
d000b79e:	d8f3      	bhi.n	d000b788 <main+0x1628>
d000b7a0:	4865      	ldr	r0, [pc, #404]	; (d000b938 <main+0x17d8>)
d000b7a2:	f7fd ff21 	bl	d00095e8 <set_status>
d000b7a6:	4648      	mov	r0, r9
d000b7a8:	f000 ff7a 	bl	d000c6a0 <free>
d000b7ac:	f7fe fbcc 	bl	d0009f48 <free_image.constprop.0>
d000b7b0:	f7fe bef3 	b.w	d000a59a <main+0x43a>
d000b7b4:	f89c 1006 	ldrb.w	r1, [ip, #6]
d000b7b8:	e4a8      	b.n	d000b10c <main+0xfac>
d000b7ba:	4860      	ldr	r0, [pc, #384]	; (d000b93c <main+0x17dc>)
d000b7bc:	f7fd ff14 	bl	d00095e8 <set_status>
d000b7c0:	4648      	mov	r0, r9
d000b7c2:	f000 ff6d 	bl	d000c6a0 <free>
d000b7c6:	f7ff bb7c 	b.w	d000aec2 <main+0xd62>
d000b7ca:	485d      	ldr	r0, [pc, #372]	; (d000b940 <main+0x17e0>)
d000b7cc:	f7fd ff0c 	bl	d00095e8 <set_status>
d000b7d0:	4648      	mov	r0, r9
d000b7d2:	f000 ff65 	bl	d000c6a0 <free>
d000b7d6:	f7fe fbb7 	bl	d0009f48 <free_image.constprop.0>
d000b7da:	f7fe bede 	b.w	d000a59a <main+0x43a>
d000b7de:	4859      	ldr	r0, [pc, #356]	; (d000b944 <main+0x17e4>)
d000b7e0:	f7fd ff02 	bl	d00095e8 <set_status>
d000b7e4:	4648      	mov	r0, r9
d000b7e6:	f000 ff5b 	bl	d000c6a0 <free>
d000b7ea:	f7fe fbad 	bl	d0009f48 <free_image.constprop.0>
d000b7ee:	f7fe bed4 	b.w	d000a59a <main+0x43a>
d000b7f2:	4855      	ldr	r0, [pc, #340]	; (d000b948 <main+0x17e8>)
d000b7f4:	f7fd fef8 	bl	d00095e8 <set_status>
d000b7f8:	4648      	mov	r0, r9
d000b7fa:	f000 ff51 	bl	d000c6a0 <free>
d000b7fe:	f7fe fba3 	bl	d0009f48 <free_image.constprop.0>
d000b802:	f7fe beca 	b.w	d000a59a <main+0x43a>
d000b806:	4851      	ldr	r0, [pc, #324]	; (d000b94c <main+0x17ec>)
d000b808:	f7fd feee 	bl	d00095e8 <set_status>
d000b80c:	4648      	mov	r0, r9
d000b80e:	f000 ff47 	bl	d000c6a0 <free>
d000b812:	f7fe fb99 	bl	d0009f48 <free_image.constprop.0>
d000b816:	f7fe bec0 	b.w	d000a59a <main+0x43a>
d000b81a:	484d      	ldr	r0, [pc, #308]	; (d000b950 <main+0x17f0>)
d000b81c:	f7fd fee4 	bl	d00095e8 <set_status>
d000b820:	4648      	mov	r0, r9
d000b822:	f000 ff3d 	bl	d000c6a0 <free>
d000b826:	f7fe fb8f 	bl	d0009f48 <free_image.constprop.0>
d000b82a:	f7fe beb6 	b.w	d000a59a <main+0x43a>
d000b82e:	2b2c      	cmp	r3, #44	; 0x2c
d000b830:	9502      	str	r5, [sp, #8]
d000b832:	9115      	str	r1, [sp, #84]	; 0x54
d000b834:	f040 81ea 	bne.w	d000bc0c <main+0x1aac>
d000b838:	f106 030a 	add.w	r3, r6, #10
d000b83c:	429c      	cmp	r4, r3
d000b83e:	f0c0 81db 	bcc.w	d000bbf8 <main+0x1a98>
d000b842:	1cf1      	adds	r1, r6, #3
d000b844:	1df2      	adds	r2, r6, #7
d000b846:	eb09 050e 	add.w	r5, r9, lr
d000b84a:	3605      	adds	r6, #5
d000b84c:	eb09 0001 	add.w	r0, r9, r1
d000b850:	f819 1001 	ldrb.w	r1, [r9, r1]
d000b854:	eb09 0702 	add.w	r7, r9, r2
d000b858:	9505      	str	r5, [sp, #20]
d000b85a:	7840      	ldrb	r0, [r0, #1]
d000b85c:	eb09 0506 	add.w	r5, r9, r6
d000b860:	f819 2002 	ldrb.w	r2, [r9, r2]
d000b864:	ea41 2100 	orr.w	r1, r1, r0, lsl #8
d000b868:	787f      	ldrb	r7, [r7, #1]
d000b86a:	f819 0006 	ldrb.w	r0, [r9, r6]
d000b86e:	910d      	str	r1, [sp, #52]	; 0x34
d000b870:	ea42 2707 	orr.w	r7, r2, r7, lsl #8
d000b874:	7869      	ldrb	r1, [r5, #1]
d000b876:	9d05      	ldr	r5, [sp, #20]
d000b878:	f819 600e 	ldrb.w	r6, [r9, lr]
d000b87c:	ea50 2001 	orrs.w	r0, r0, r1, lsl #8
d000b880:	786a      	ldrb	r2, [r5, #1]
d000b882:	9706      	str	r7, [sp, #24]
d000b884:	ea46 2202 	orr.w	r2, r6, r2, lsl #8
d000b888:	9014      	str	r0, [sp, #80]	; 0x50
d000b88a:	9213      	str	r2, [sp, #76]	; 0x4c
d000b88c:	f000 8203 	beq.w	d000bc96 <main+0x1b36>
d000b890:	2f00      	cmp	r7, #0
d000b892:	f000 8200 	beq.w	d000bc96 <main+0x1b36>
d000b896:	9902      	ldr	r1, [sp, #8]
d000b898:	4291      	cmp	r1, r2
d000b89a:	f240 81fc 	bls.w	d000bc96 <main+0x1b36>
d000b89e:	990d      	ldr	r1, [sp, #52]	; 0x34
d000b8a0:	4588      	cmp	r8, r1
d000b8a2:	f240 81f8 	bls.w	d000bc96 <main+0x1b36>
d000b8a6:	f99c 2009 	ldrsb.w	r2, [ip, #9]
d000b8aa:	f89c 1009 	ldrb.w	r1, [ip, #9]
d000b8ae:	2a00      	cmp	r2, #0
d000b8b0:	9105      	str	r1, [sp, #20]
d000b8b2:	f2c0 81c9 	blt.w	d000bc48 <main+0x1ae8>
d000b8b6:	429c      	cmp	r4, r3
d000b8b8:	f240 8175 	bls.w	d000bba6 <main+0x1a46>
d000b8bc:	1c5d      	adds	r5, r3, #1
d000b8be:	2700      	movs	r7, #0
d000b8c0:	462a      	mov	r2, r5
d000b8c2:	e006      	b.n	d000b8d2 <main+0x1772>
d000b8c4:	f819 1002 	ldrb.w	r1, [r9, r2]
d000b8c8:	1842      	adds	r2, r0, r1
d000b8ca:	b1f1      	cbz	r1, d000b90a <main+0x17aa>
d000b8cc:	4294      	cmp	r4, r2
d000b8ce:	440f      	add	r7, r1
d000b8d0:	d311      	bcc.n	d000b8f6 <main+0x1796>
d000b8d2:	4294      	cmp	r4, r2
d000b8d4:	f102 0001 	add.w	r0, r2, #1
d000b8d8:	d8f4      	bhi.n	d000b8c4 <main+0x1764>
d000b8da:	e017      	b.n	d000b90c <main+0x17ac>
d000b8dc:	481d      	ldr	r0, [pc, #116]	; (d000b954 <main+0x17f4>)
d000b8de:	f7fd fe83 	bl	d00095e8 <set_status>
d000b8e2:	4648      	mov	r0, r9
d000b8e4:	f000 fedc 	bl	d000c6a0 <free>
d000b8e8:	f7fe fb2e 	bl	d0009f48 <free_image.constprop.0>
d000b8ec:	f7fe be55 	b.w	d000a59a <main+0x43a>
d000b8f0:	4819      	ldr	r0, [pc, #100]	; (d000b958 <main+0x17f8>)
d000b8f2:	f7fd fe79 	bl	d00095e8 <set_status>
d000b8f6:	4819      	ldr	r0, [pc, #100]	; (d000b95c <main+0x17fc>)
d000b8f8:	f7fd fe76 	bl	d00095e8 <set_status>
d000b8fc:	4648      	mov	r0, r9
d000b8fe:	f000 fecf 	bl	d000c6a0 <free>
d000b902:	f7fe fb21 	bl	d0009f48 <free_image.constprop.0>
d000b906:	f7fe be48 	b.w	d000a59a <main+0x43a>
d000b90a:	4602      	mov	r2, r0
d000b90c:	4294      	cmp	r4, r2
d000b90e:	d3f2      	bcc.n	d000b8f6 <main+0x1796>
d000b910:	fab7 f687 	clz	r6, r7
d000b914:	0976      	lsrs	r6, r6, #5
d000b916:	2f00      	cmp	r7, #0
d000b918:	d0ed      	beq.n	d000b8f6 <main+0x1796>
d000b91a:	f819 3003 	ldrb.w	r3, [r9, r3]
d000b91e:	4638      	mov	r0, r7
d000b920:	9302      	str	r3, [sp, #8]
d000b922:	f000 feb5 	bl	d000c690 <malloc>
d000b926:	9008      	str	r0, [sp, #32]
d000b928:	bb20      	cbnz	r0, d000b974 <main+0x1814>
d000b92a:	e7e1      	b.n	d000b8f0 <main+0x1790>
d000b92c:	d000e2c8 	.word	0xd000e2c8
d000b930:	d000e2a4 	.word	0xd000e2a4
d000b934:	d000e28c 	.word	0xd000e28c
d000b938:	d000e5cc 	.word	0xd000e5cc
d000b93c:	d000e274 	.word	0xd000e274
d000b940:	d000e3d4 	.word	0xd000e3d4
d000b944:	d000e2f0 	.word	0xd000e2f0
d000b948:	d000e620 	.word	0xd000e620
d000b94c:	d000e608 	.word	0xd000e608
d000b950:	d000e5e8 	.word	0xd000e5e8
d000b954:	d000e5b4 	.word	0xd000e5b4
d000b958:	d000e6bc 	.word	0xd000e6bc
d000b95c:	d000e784 	.word	0xd000e784
d000b960:	f819 5005 	ldrb.w	r5, [r9, r5]
d000b964:	eb09 0108 	add.w	r1, r9, r8
d000b968:	462a      	mov	r2, r5
d000b96a:	b155      	cbz	r5, d000b982 <main+0x1822>
d000b96c:	442e      	add	r6, r5
d000b96e:	4445      	add	r5, r8
d000b970:	f000 feac 	bl	d000c6cc <memcpy>
d000b974:	9b08      	ldr	r3, [sp, #32]
d000b976:	42ac      	cmp	r4, r5
d000b978:	f105 0801 	add.w	r8, r5, #1
d000b97c:	eb03 0006 	add.w	r0, r3, r6
d000b980:	d8ee      	bhi.n	d000b960 <main+0x1800>
d000b982:	9b02      	ldr	r3, [sp, #8]
d000b984:	3b02      	subs	r3, #2
d000b986:	2b06      	cmp	r3, #6
d000b988:	f200 8132 	bhi.w	d000bbf0 <main+0x1a90>
d000b98c:	f44f 5000 	mov.w	r0, #8192	; 0x2000
d000b990:	f000 fe7e 	bl	d000c690 <malloc>
d000b994:	4680      	mov	r8, r0
d000b996:	f44f 5080 	mov.w	r0, #4096	; 0x1000
d000b99a:	f000 fe79 	bl	d000c690 <malloc>
d000b99e:	4605      	mov	r5, r0
d000b9a0:	f44f 5080 	mov.w	r0, #4096	; 0x1000
d000b9a4:	f000 fe74 	bl	d000c690 <malloc>
d000b9a8:	2d00      	cmp	r5, #0
d000b9aa:	bf18      	it	ne
d000b9ac:	f1b8 0f00 	cmpne.w	r8, #0
d000b9b0:	4604      	mov	r4, r0
d000b9b2:	f000 8102 	beq.w	d000bbba <main+0x1a5a>
d000b9b6:	fab0 f380 	clz	r3, r0
d000b9ba:	095b      	lsrs	r3, r3, #5
d000b9bc:	2800      	cmp	r0, #0
d000b9be:	f000 80fc 	beq.w	d000bbba <main+0x1a5a>
d000b9c2:	2201      	movs	r2, #1
d000b9c4:	9902      	ldr	r1, [sp, #8]
d000b9c6:	461e      	mov	r6, r3
d000b9c8:	1888      	adds	r0, r1, r2
d000b9ca:	fa02 f101 	lsl.w	r1, r2, r1
d000b9ce:	b2c0      	uxtb	r0, r0
d000b9d0:	b289      	uxth	r1, r1
d000b9d2:	4082      	lsls	r2, r0
d000b9d4:	9010      	str	r0, [sp, #64]	; 0x40
d000b9d6:	1c48      	adds	r0, r1, #1
d000b9d8:	9109      	str	r1, [sp, #36]	; 0x24
d000b9da:	3a01      	subs	r2, #1
d000b9dc:	3102      	adds	r1, #2
d000b9de:	b292      	uxth	r2, r2
d000b9e0:	9211      	str	r2, [sp, #68]	; 0x44
d000b9e2:	b282      	uxth	r2, r0
d000b9e4:	9216      	str	r2, [sp, #88]	; 0x58
d000b9e6:	b28a      	uxth	r2, r1
d000b9e8:	920f      	str	r2, [sp, #60]	; 0x3c
d000b9ea:	f828 6013 	strh.w	r6, [r8, r3, lsl #1]
d000b9ee:	54eb      	strb	r3, [r5, r3]
d000b9f0:	3301      	adds	r3, #1
d000b9f2:	9909      	ldr	r1, [sp, #36]	; 0x24
d000b9f4:	b29a      	uxth	r2, r3
d000b9f6:	428a      	cmp	r2, r1
d000b9f8:	d3f7      	bcc.n	d000b9ea <main+0x188a>
d000b9fa:	9b05      	ldr	r3, [sp, #20]
d000b9fc:	f04f 0c00 	mov.w	ip, #0
d000ba00:	f8cd a008 	str.w	sl, [sp, #8]
d000ba04:	f3c3 1380 	ubfx	r3, r3, #6, #1
d000ba08:	990f      	ldr	r1, [sp, #60]	; 0x3c
d000ba0a:	46e6      	mov	lr, ip
d000ba0c:	f8cd c028 	str.w	ip, [sp, #40]	; 0x28
d000ba10:	930e      	str	r3, [sp, #56]	; 0x38
d000ba12:	00fb      	lsls	r3, r7, #3
d000ba14:	f64f 77ff 	movw	r7, #65535	; 0xffff
d000ba18:	f8cd c014 	str.w	ip, [sp, #20]
d000ba1c:	9317      	str	r3, [sp, #92]	; 0x5c
d000ba1e:	9b11      	ldr	r3, [sp, #68]	; 0x44
d000ba20:	f8cd c030 	str.w	ip, [sp, #48]	; 0x30
d000ba24:	930b      	str	r3, [sp, #44]	; 0x2c
d000ba26:	9b10      	ldr	r3, [sp, #64]	; 0x40
d000ba28:	f8cd 900c 	str.w	r9, [sp, #12]
d000ba2c:	469a      	mov	sl, r3
d000ba2e:	9b0c      	ldr	r3, [sp, #48]	; 0x30
d000ba30:	9a17      	ldr	r2, [sp, #92]	; 0x5c
d000ba32:	4699      	mov	r9, r3
d000ba34:	4453      	add	r3, sl
d000ba36:	4293      	cmp	r3, r2
d000ba38:	930c      	str	r3, [sp, #48]	; 0x30
d000ba3a:	f200 80a4 	bhi.w	d000bb86 <main+0x1a26>
d000ba3e:	2000      	movs	r0, #0
d000ba40:	9112      	str	r1, [sp, #72]	; 0x48
d000ba42:	4603      	mov	r3, r0
d000ba44:	eb09 0600 	add.w	r6, r9, r0
d000ba48:	9a08      	ldr	r2, [sp, #32]
d000ba4a:	08f1      	lsrs	r1, r6, #3
d000ba4c:	f006 0607 	and.w	r6, r6, #7
d000ba50:	5c52      	ldrb	r2, [r2, r1]
d000ba52:	4132      	asrs	r2, r6
d000ba54:	f002 0201 	and.w	r2, r2, #1
d000ba58:	4082      	lsls	r2, r0
d000ba5a:	3001      	adds	r0, #1
d000ba5c:	b2c6      	uxtb	r6, r0
d000ba5e:	4313      	orrs	r3, r2
d000ba60:	45b2      	cmp	sl, r6
d000ba62:	d8ef      	bhi.n	d000ba44 <main+0x18e4>
d000ba64:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
d000ba66:	9809      	ldr	r0, [sp, #36]	; 0x24
d000ba68:	4013      	ands	r3, r2
d000ba6a:	9912      	ldr	r1, [sp, #72]	; 0x48
d000ba6c:	4298      	cmp	r0, r3
d000ba6e:	f000 8162 	beq.w	d000bd36 <main+0x1bd6>
d000ba72:	9a16      	ldr	r2, [sp, #88]	; 0x58
d000ba74:	429a      	cmp	r2, r3
d000ba76:	f000 8086 	beq.w	d000bb86 <main+0x1a26>
d000ba7a:	f5b3 5f80 	cmp.w	r3, #4096	; 0x1000
d000ba7e:	f080 811e 	bcs.w	d000bcbe <main+0x1b5e>
d000ba82:	f64f 72ff 	movw	r2, #65535	; 0xffff
d000ba86:	4297      	cmp	r7, r2
d000ba88:	d102      	bne.n	d000ba90 <main+0x1930>
d000ba8a:	4298      	cmp	r0, r3
d000ba8c:	f240 8117 	bls.w	d000bcbe <main+0x1b5e>
d000ba90:	f64f 72ff 	movw	r2, #65535	; 0xffff
d000ba94:	4297      	cmp	r7, r2
d000ba96:	d002      	beq.n	d000ba9e <main+0x193e>
d000ba98:	428b      	cmp	r3, r1
d000ba9a:	f200 8110 	bhi.w	d000bcbe <main+0x1b5e>
d000ba9e:	f64f 72ff 	movw	r2, #65535	; 0xffff
d000baa2:	4297      	cmp	r7, r2
d000baa4:	f000 814f 	beq.w	d000bd46 <main+0x1be6>
d000baa8:	428b      	cmp	r3, r1
d000baaa:	f0c0 8141 	bcc.w	d000bd30 <main+0x1bd0>
d000baae:	9a05      	ldr	r2, [sp, #20]
d000bab0:	2001      	movs	r0, #1
d000bab2:	7022      	strb	r2, [r4, #0]
d000bab4:	463a      	mov	r2, r7
d000bab6:	eb04 0900 	add.w	r9, r4, r0
d000baba:	9305      	str	r3, [sp, #20]
d000babc:	e00d      	b.n	d000bada <main+0x197a>
d000babe:	f640 73ff 	movw	r3, #4095	; 0xfff
d000bac2:	4298      	cmp	r0, r3
d000bac4:	b2b0      	uxth	r0, r6
d000bac6:	f200 80fa 	bhi.w	d000bcbe <main+0x1b5e>
d000baca:	429a      	cmp	r2, r3
d000bacc:	f200 80f7 	bhi.w	d000bcbe <main+0x1b5e>
d000bad0:	5cae      	ldrb	r6, [r5, r2]
d000bad2:	f838 2012 	ldrh.w	r2, [r8, r2, lsl #1]
d000bad6:	f809 6b01 	strb.w	r6, [r9], #1
d000bada:	9e09      	ldr	r6, [sp, #36]	; 0x24
d000badc:	4296      	cmp	r6, r2
d000bade:	f100 0601 	add.w	r6, r0, #1
d000bae2:	d9ec      	bls.n	d000babe <main+0x195e>
d000bae4:	5caa      	ldrb	r2, [r5, r2]
d000bae6:	f5b1 5f80 	cmp.w	r1, #4096	; 0x1000
d000baea:	9b05      	ldr	r3, [sp, #20]
d000baec:	9205      	str	r2, [sp, #20]
d000baee:	d211      	bcs.n	d000bb14 <main+0x19b4>
d000baf0:	f04f 0901 	mov.w	r9, #1
d000baf4:	f828 7011 	strh.w	r7, [r8, r1, lsl #1]
d000baf8:	9a05      	ldr	r2, [sp, #20]
d000bafa:	eb01 0609 	add.w	r6, r1, r9
d000bafe:	fa09 f70a 	lsl.w	r7, r9, sl
d000bb02:	546a      	strb	r2, [r5, r1]
d000bb04:	b2bf      	uxth	r7, r7
d000bb06:	b2b1      	uxth	r1, r6
d000bb08:	428f      	cmp	r7, r1
d000bb0a:	d103      	bne.n	d000bb14 <main+0x19b4>
d000bb0c:	f1ba 0f0b 	cmp.w	sl, #11
d000bb10:	f240 80e6 	bls.w	d000bce0 <main+0x1b80>
d000bb14:	1c42      	adds	r2, r0, #1
d000bb16:	9e05      	ldr	r6, [sp, #20]
d000bb18:	9312      	str	r3, [sp, #72]	; 0x48
d000bb1a:	b292      	uxth	r2, r2
d000bb1c:	9b0a      	ldr	r3, [sp, #40]	; 0x28
d000bb1e:	5426      	strb	r6, [r4, r0]
d000bb20:	3a01      	subs	r2, #1
d000bb22:	9815      	ldr	r0, [sp, #84]	; 0x54
d000bb24:	b292      	uxth	r2, r2
d000bb26:	5ca7      	ldrb	r7, [r4, r2]
d000bb28:	42b8      	cmp	r0, r7
d000bb2a:	d013      	beq.n	d000bb54 <main+0x19f4>
d000bb2c:	9813      	ldr	r0, [sp, #76]	; 0x4c
d000bb2e:	9e04      	ldr	r6, [sp, #16]
d000bb30:	4418      	add	r0, r3
d000bb32:	f8b6 9000 	ldrh.w	r9, [r6]
d000bb36:	900a      	str	r0, [sp, #40]	; 0x28
d000bb38:	980a      	ldr	r0, [sp, #40]	; 0x28
d000bb3a:	4548      	cmp	r0, r9
d000bb3c:	da0a      	bge.n	d000bb54 <main+0x19f4>
d000bb3e:	980d      	ldr	r0, [sp, #52]	; 0x34
d000bb40:	8876      	ldrh	r6, [r6, #2]
d000bb42:	4470      	add	r0, lr
d000bb44:	42b0      	cmp	r0, r6
d000bb46:	da05      	bge.n	d000bb54 <main+0x19f4>
d000bb48:	9e04      	ldr	r6, [sp, #16]
d000bb4a:	6876      	ldr	r6, [r6, #4]
d000bb4c:	fb09 6000 	mla	r0, r9, r0, r6
d000bb50:	9e0a      	ldr	r6, [sp, #40]	; 0x28
d000bb52:	5587      	strb	r7, [r0, r6]
d000bb54:	1c58      	adds	r0, r3, #1
d000bb56:	b283      	uxth	r3, r0
d000bb58:	9814      	ldr	r0, [sp, #80]	; 0x50
d000bb5a:	4298      	cmp	r0, r3
d000bb5c:	d808      	bhi.n	d000bb70 <main+0x1a10>
d000bb5e:	9b0e      	ldr	r3, [sp, #56]	; 0x38
d000bb60:	2b00      	cmp	r3, #0
d000bb62:	f040 80c7 	bne.w	d000bcf4 <main+0x1b94>
d000bb66:	f10e 0e01 	add.w	lr, lr, #1
d000bb6a:	9b0e      	ldr	r3, [sp, #56]	; 0x38
d000bb6c:	fa1f fe8e 	uxth.w	lr, lr
d000bb70:	b112      	cbz	r2, d000bb78 <main+0x1a18>
d000bb72:	9806      	ldr	r0, [sp, #24]
d000bb74:	4570      	cmp	r0, lr
d000bb76:	d8d3      	bhi.n	d000bb20 <main+0x19c0>
d000bb78:	930a      	str	r3, [sp, #40]	; 0x28
d000bb7a:	9b12      	ldr	r3, [sp, #72]	; 0x48
d000bb7c:	461f      	mov	r7, r3
d000bb7e:	9b06      	ldr	r3, [sp, #24]
d000bb80:	4573      	cmp	r3, lr
d000bb82:	f63f af54 	bhi.w	d000ba2e <main+0x18ce>
d000bb86:	2301      	movs	r3, #1
d000bb88:	4640      	mov	r0, r8
d000bb8a:	f8dd a008 	ldr.w	sl, [sp, #8]
d000bb8e:	9307      	str	r3, [sp, #28]
d000bb90:	f8dd 900c 	ldr.w	r9, [sp, #12]
d000bb94:	f000 fd84 	bl	d000c6a0 <free>
d000bb98:	4628      	mov	r0, r5
d000bb9a:	f000 fd81 	bl	d000c6a0 <free>
d000bb9e:	4620      	mov	r0, r4
d000bba0:	f000 fd7e 	bl	d000c6a0 <free>
d000bba4:	e015      	b.n	d000bbd2 <main+0x1a72>
d000bba6:	48bf      	ldr	r0, [pc, #764]	; (d000bea4 <main+0x1d44>)
d000bba8:	f7fd fd1e 	bl	d00095e8 <set_status>
d000bbac:	4648      	mov	r0, r9
d000bbae:	f000 fd77 	bl	d000c6a0 <free>
d000bbb2:	f7fe f9c9 	bl	d0009f48 <free_image.constprop.0>
d000bbb6:	f7fe bcf0 	b.w	d000a59a <main+0x43a>
d000bbba:	4640      	mov	r0, r8
d000bbbc:	f000 fd70 	bl	d000c6a0 <free>
d000bbc0:	4628      	mov	r0, r5
d000bbc2:	f000 fd6d 	bl	d000c6a0 <free>
d000bbc6:	4620      	mov	r0, r4
d000bbc8:	f000 fd6a 	bl	d000c6a0 <free>
d000bbcc:	48b6      	ldr	r0, [pc, #728]	; (d000bea8 <main+0x1d48>)
d000bbce:	f7fd fd0b 	bl	d00095e8 <set_status>
d000bbd2:	9808      	ldr	r0, [sp, #32]
d000bbd4:	f000 fd64 	bl	d000c6a0 <free>
d000bbd8:	4648      	mov	r0, r9
d000bbda:	f000 fd61 	bl	d000c6a0 <free>
d000bbde:	9b07      	ldr	r3, [sp, #28]
d000bbe0:	2b00      	cmp	r3, #0
d000bbe2:	f43f a96e 	beq.w	d000aec2 <main+0xd62>
d000bbe6:	ab1b      	add	r3, sp, #108	; 0x6c
d000bbe8:	ee08 3a10 	vmov	s16, r3
d000bbec:	f7ff bb60 	b.w	d000b2b0 <main+0x1150>
d000bbf0:	48ae      	ldr	r0, [pc, #696]	; (d000beac <main+0x1d4c>)
d000bbf2:	f7fd fcf9 	bl	d00095e8 <set_status>
d000bbf6:	e7ec      	b.n	d000bbd2 <main+0x1a72>
d000bbf8:	48ad      	ldr	r0, [pc, #692]	; (d000beb0 <main+0x1d50>)
d000bbfa:	f7fd fcf5 	bl	d00095e8 <set_status>
d000bbfe:	4648      	mov	r0, r9
d000bc00:	f000 fd4e 	bl	d000c6a0 <free>
d000bc04:	f7fe f9a0 	bl	d0009f48 <free_image.constprop.0>
d000bc08:	f7fe bcc7 	b.w	d000a59a <main+0x43a>
d000bc0c:	48a9      	ldr	r0, [pc, #676]	; (d000beb4 <main+0x1d54>)
d000bc0e:	f7fd fceb 	bl	d00095e8 <set_status>
d000bc12:	4648      	mov	r0, r9
d000bc14:	f000 fd44 	bl	d000c6a0 <free>
d000bc18:	f7fe f996 	bl	d0009f48 <free_image.constprop.0>
d000bc1c:	f7fe bcbd 	b.w	d000a59a <main+0x43a>
d000bc20:	48a5      	ldr	r0, [pc, #660]	; (d000beb8 <main+0x1d58>)
d000bc22:	f7fd fce1 	bl	d00095e8 <set_status>
d000bc26:	4648      	mov	r0, r9
d000bc28:	f000 fd3a 	bl	d000c6a0 <free>
d000bc2c:	f7fe f98c 	bl	d0009f48 <free_image.constprop.0>
d000bc30:	f7fe bcb3 	b.w	d000a59a <main+0x43a>
d000bc34:	48a1      	ldr	r0, [pc, #644]	; (d000bebc <main+0x1d5c>)
d000bc36:	f7fd fcd7 	bl	d00095e8 <set_status>
d000bc3a:	4648      	mov	r0, r9
d000bc3c:	f000 fd30 	bl	d000c6a0 <free>
d000bc40:	f7fe f982 	bl	d0009f48 <free_image.constprop.0>
d000bc44:	f7fe bca9 	b.w	d000a59a <main+0x43a>
d000bc48:	f001 0207 	and.w	r2, r1, #7
d000bc4c:	2601      	movs	r6, #1
d000bc4e:	2103      	movs	r1, #3
d000bc50:	4432      	add	r2, r6
d000bc52:	4091      	lsls	r1, r2
d000bc54:	fa06 f202 	lsl.w	r2, r6, r2
d000bc58:	440b      	add	r3, r1
d000bc5a:	b297      	uxth	r7, r2
d000bc5c:	429c      	cmp	r4, r3
d000bc5e:	d324      	bcc.n	d000bcaa <main+0x1b4a>
d000bc60:	9803      	ldr	r0, [sp, #12]
d000bc62:	e002      	b.n	d000bc6a <main+0x1b0a>
d000bc64:	29ff      	cmp	r1, #255	; 0xff
d000bc66:	f63f ae26 	bhi.w	d000b8b6 <main+0x1756>
d000bc6a:	f89c 200b 	ldrb.w	r2, [ip, #11]
d000bc6e:	b2b1      	uxth	r1, r6
d000bc70:	f89c e00a 	ldrb.w	lr, [ip, #10]
d000bc74:	3601      	adds	r6, #1
d000bc76:	0212      	lsls	r2, r2, #8
d000bc78:	f89c 500c 	ldrb.w	r5, [ip, #12]
d000bc7c:	42b9      	cmp	r1, r7
d000bc7e:	f10c 0c03 	add.w	ip, ip, #3
d000bc82:	ea42 420e 	orr.w	r2, r2, lr, lsl #16
d000bc86:	ea42 0205 	orr.w	r2, r2, r5
d000bc8a:	f042 427f 	orr.w	r2, r2, #4278190080	; 0xff000000
d000bc8e:	f840 2b04 	str.w	r2, [r0], #4
d000bc92:	d3e7      	bcc.n	d000bc64 <main+0x1b04>
d000bc94:	e60f      	b.n	d000b8b6 <main+0x1756>
d000bc96:	488a      	ldr	r0, [pc, #552]	; (d000bec0 <main+0x1d60>)
d000bc98:	f7fd fca6 	bl	d00095e8 <set_status>
d000bc9c:	4648      	mov	r0, r9
d000bc9e:	f000 fcff 	bl	d000c6a0 <free>
d000bca2:	f7fe f951 	bl	d0009f48 <free_image.constprop.0>
d000bca6:	f7fe bc78 	b.w	d000a59a <main+0x43a>
d000bcaa:	4886      	ldr	r0, [pc, #536]	; (d000bec4 <main+0x1d64>)
d000bcac:	f7fd fc9c 	bl	d00095e8 <set_status>
d000bcb0:	4648      	mov	r0, r9
d000bcb2:	f000 fcf5 	bl	d000c6a0 <free>
d000bcb6:	f7fe f947 	bl	d0009f48 <free_image.constprop.0>
d000bcba:	f7fe bc6e 	b.w	d000a59a <main+0x43a>
d000bcbe:	4640      	mov	r0, r8
d000bcc0:	f8dd a008 	ldr.w	sl, [sp, #8]
d000bcc4:	f8dd 900c 	ldr.w	r9, [sp, #12]
d000bcc8:	f000 fcea 	bl	d000c6a0 <free>
d000bccc:	4628      	mov	r0, r5
d000bcce:	f000 fce7 	bl	d000c6a0 <free>
d000bcd2:	4620      	mov	r0, r4
d000bcd4:	f000 fce4 	bl	d000c6a0 <free>
d000bcd8:	487b      	ldr	r0, [pc, #492]	; (d000bec8 <main+0x1d68>)
d000bcda:	f7fd fc85 	bl	d00095e8 <set_status>
d000bcde:	e778      	b.n	d000bbd2 <main+0x1a72>
d000bce0:	eb0a 0609 	add.w	r6, sl, r9
d000bce4:	fa5f fa86 	uxtb.w	sl, r6
d000bce8:	fa09 f20a 	lsl.w	r2, r9, sl
d000bcec:	3a01      	subs	r2, #1
d000bcee:	b292      	uxth	r2, r2
d000bcf0:	920b      	str	r2, [sp, #44]	; 0x2c
d000bcf2:	e70f      	b.n	d000bb14 <main+0x19b4>
d000bcf4:	4b75      	ldr	r3, [pc, #468]	; (d000becc <main+0x1d6c>)
d000bcf6:	f10c 0001 	add.w	r0, ip, #1
d000bcfa:	f813 600c 	ldrb.w	r6, [r3, ip]
d000bcfe:	4b74      	ldr	r3, [pc, #464]	; (d000bed0 <main+0x1d70>)
d000bd00:	44b6      	add	lr, r6
d000bd02:	fa53 f080 	uxtab	r0, r3, r0
d000bd06:	fa1f fe8e 	uxth.w	lr, lr
d000bd0a:	e006      	b.n	d000bd1a <main+0x1bba>
d000bd0c:	9e06      	ldr	r6, [sp, #24]
d000bd0e:	4576      	cmp	r6, lr
d000bd10:	d80c      	bhi.n	d000bd2c <main+0x1bcc>
d000bd12:	fa5f fc83 	uxtb.w	ip, r3
d000bd16:	f810 eb01 	ldrb.w	lr, [r0], #1
d000bd1a:	f1bc 0f02 	cmp.w	ip, #2
d000bd1e:	f10c 0301 	add.w	r3, ip, #1
d000bd22:	d9f3      	bls.n	d000bd0c <main+0x1bac>
d000bd24:	9b06      	ldr	r3, [sp, #24]
d000bd26:	4573      	cmp	r3, lr
d000bd28:	f67f af2d 	bls.w	d000bb86 <main+0x1a26>
d000bd2c:	2300      	movs	r3, #0
d000bd2e:	e71f      	b.n	d000bb70 <main+0x1a10>
d000bd30:	461a      	mov	r2, r3
d000bd32:	2000      	movs	r0, #0
d000bd34:	e6bf      	b.n	d000bab6 <main+0x1956>
d000bd36:	9b11      	ldr	r3, [sp, #68]	; 0x44
d000bd38:	f64f 77ff 	movw	r7, #65535	; 0xffff
d000bd3c:	f8dd a040 	ldr.w	sl, [sp, #64]	; 0x40
d000bd40:	990f      	ldr	r1, [sp, #60]	; 0x3c
d000bd42:	930b      	str	r3, [sp, #44]	; 0x2c
d000bd44:	e71b      	b.n	d000bb7e <main+0x1a1e>
d000bd46:	5cea      	ldrb	r2, [r5, r3]
d000bd48:	9312      	str	r3, [sp, #72]	; 0x48
d000bd4a:	4610      	mov	r0, r2
d000bd4c:	9205      	str	r2, [sp, #20]
d000bd4e:	9b0a      	ldr	r3, [sp, #40]	; 0x28
d000bd50:	2201      	movs	r2, #1
d000bd52:	7020      	strb	r0, [r4, #0]
d000bd54:	e6e4      	b.n	d000bb20 <main+0x19c0>
d000bd56:	485f      	ldr	r0, [pc, #380]	; (d000bed4 <main+0x1d74>)
d000bd58:	f7fd fc46 	bl	d00095e8 <set_status>
d000bd5c:	4648      	mov	r0, r9
d000bd5e:	f000 fc9f 	bl	d000c6a0 <free>
d000bd62:	f7fe f8f1 	bl	d0009f48 <free_image.constprop.0>
d000bd66:	f7fe bc18 	b.w	d000a59a <main+0x43a>
d000bd6a:	260d      	movs	r6, #13
d000bd6c:	f7ff b98d 	b.w	d000b08a <main+0xf2a>
d000bd70:	2a03      	cmp	r2, #3
d000bd72:	9b05      	ldr	r3, [sp, #20]
d000bd74:	d00b      	beq.n	d000bd8e <main+0x1c2e>
d000bd76:	2b10      	cmp	r3, #16
d000bd78:	f04f 0300 	mov.w	r3, #0
d000bd7c:	f47e af1a 	bne.w	d000abb4 <main+0xa54>
d000bd80:	251f      	movs	r5, #31
d000bd82:	f44f 7678 	mov.w	r6, #992	; 0x3e0
d000bd86:	f44f 47f8 	mov.w	r7, #31744	; 0x7c00
d000bd8a:	f7fe bf21 	b.w	d000abd0 <main+0xa70>
d000bd8e:	2b10      	cmp	r3, #16
d000bd90:	d005      	beq.n	d000bd9e <main+0x1c3e>
d000bd92:	f1a3 0220 	sub.w	r2, r3, #32
d000bd96:	4253      	negs	r3, r2
d000bd98:	4153      	adcs	r3, r2
d000bd9a:	2b00      	cmp	r3, #0
d000bd9c:	d0f0      	beq.n	d000bd80 <main+0x1c20>
d000bd9e:	2d33      	cmp	r5, #51	; 0x33
d000bda0:	f200 819c 	bhi.w	d000c0dc <main+0x1f7c>
d000bda4:	2c41      	cmp	r4, #65	; 0x41
d000bda6:	f200 8199 	bhi.w	d000c0dc <main+0x1f7c>
d000bdaa:	2300      	movs	r3, #0
d000bdac:	251f      	movs	r5, #31
d000bdae:	f44f 7678 	mov.w	r6, #992	; 0x3e0
d000bdb2:	f44f 47f8 	mov.w	r7, #31744	; 0x7c00
d000bdb6:	f7fe bf0b 	b.w	d000abd0 <main+0xa70>
d000bdba:	f02e 0e08 	bic.w	lr, lr, #8
d000bdbe:	f1be 0f10 	cmp.w	lr, #16
d000bdc2:	d003      	beq.n	d000bdcc <main+0x1c6c>
d000bdc4:	9b05      	ldr	r3, [sp, #20]
d000bdc6:	2b20      	cmp	r3, #32
d000bdc8:	f040 8139 	bne.w	d000c03e <main+0x1ede>
d000bdcc:	9b02      	ldr	r3, [sp, #8]
d000bdce:	9a03      	ldr	r2, [sp, #12]
d000bdd0:	fb03 f002 	mul.w	r0, r3, r2
d000bdd4:	f000 fc5c 	bl	d000c690 <malloc>
d000bdd8:	9b04      	ldr	r3, [sp, #16]
d000bdda:	6058      	str	r0, [r3, #4]
d000bddc:	2800      	cmp	r0, #0
d000bdde:	f000 8115 	beq.w	d000c00c <main+0x1eac>
d000bde2:	483d      	ldr	r0, [pc, #244]	; (d000bed8 <main+0x1d78>)
d000bde4:	f7fd f9f4 	bl	d00091d0 <init_rgb332_palette>
d000bde8:	9b05      	ldr	r3, [sp, #20]
d000bdea:	2b18      	cmp	r3, #24
d000bdec:	f000 80de 	beq.w	d000bfac <main+0x1e4c>
d000bdf0:	f5b7 0f7f 	cmp.w	r7, #16711680	; 0xff0000
d000bdf4:	bf08      	it	eq
d000bdf6:	f5b6 4f7f 	cmpeq.w	r6, #65280	; 0xff00
d000bdfa:	9a05      	ldr	r2, [sp, #20]
d000bdfc:	bf0c      	ite	eq
d000bdfe:	2301      	moveq	r3, #1
d000be00:	2300      	movne	r3, #0
d000be02:	2a20      	cmp	r2, #32
d000be04:	bf14      	ite	ne
d000be06:	2300      	movne	r3, #0
d000be08:	f003 0301 	andeq.w	r3, r3, #1
d000be0c:	b113      	cbz	r3, d000be14 <main+0x1cb4>
d000be0e:	2dff      	cmp	r5, #255	; 0xff
d000be10:	f000 811f 	beq.w	d000c052 <main+0x1ef2>
d000be14:	ab1b      	add	r3, sp, #108	; 0x6c
d000be16:	aa21      	add	r2, sp, #132	; 0x84
d000be18:	f10d 0878 	add.w	r8, sp, #120	; 0x78
d000be1c:	4639      	mov	r1, r7
d000be1e:	4614      	mov	r4, r2
d000be20:	4618      	mov	r0, r3
d000be22:	ee08 3a10 	vmov	s16, r3
d000be26:	ee08 2a90 	vmov	s17, r2
d000be2a:	f7fd fb13 	bl	d0009454 <bmp_make_mask_info>
d000be2e:	4631      	mov	r1, r6
d000be30:	4640      	mov	r0, r8
d000be32:	f7fd fb0f 	bl	d0009454 <bmp_make_mask_info>
d000be36:	4629      	mov	r1, r5
d000be38:	4620      	mov	r0, r4
d000be3a:	f7fd fb0b 	bl	d0009454 <bmp_make_mask_info>
d000be3e:	f8dd e074 	ldr.w	lr, [sp, #116]	; 0x74
d000be42:	9e20      	ldr	r6, [sp, #128]	; 0x80
d000be44:	f04f 0c00 	mov.w	ip, #0
d000be48:	ea4f 035e 	mov.w	r3, lr, lsr #1
d000be4c:	9d23      	ldr	r5, [sp, #140]	; 0x8c
d000be4e:	9a02      	ldr	r2, [sp, #8]
d000be50:	ee07 8a90 	vmov	s15, r8
d000be54:	930d      	str	r3, [sp, #52]	; 0x34
d000be56:	0873      	lsrs	r3, r6, #1
d000be58:	4611      	mov	r1, r2
d000be5a:	930f      	str	r3, [sp, #60]	; 0x3c
d000be5c:	9b1b      	ldr	r3, [sp, #108]	; 0x6c
d000be5e:	9309      	str	r3, [sp, #36]	; 0x24
d000be60:	086b      	lsrs	r3, r5, #1
d000be62:	9311      	str	r3, [sp, #68]	; 0x44
d000be64:	9b1c      	ldr	r3, [sp, #112]	; 0x70
d000be66:	930c      	str	r3, [sp, #48]	; 0x30
d000be68:	9b1e      	ldr	r3, [sp, #120]	; 0x78
d000be6a:	930a      	str	r3, [sp, #40]	; 0x28
d000be6c:	9b1f      	ldr	r3, [sp, #124]	; 0x7c
d000be6e:	930e      	str	r3, [sp, #56]	; 0x38
d000be70:	9b21      	ldr	r3, [sp, #132]	; 0x84
d000be72:	930b      	str	r3, [sp, #44]	; 0x2c
d000be74:	9b22      	ldr	r3, [sp, #136]	; 0x88
d000be76:	9310      	str	r3, [sp, #64]	; 0x40
d000be78:	9b02      	ldr	r3, [sp, #8]
d000be7a:	1a5b      	subs	r3, r3, r1
d000be7c:	2900      	cmp	r1, #0
d000be7e:	d07f      	beq.n	d000bf80 <main+0x1e20>
d000be80:	9a06      	ldr	r2, [sp, #24]
d000be82:	3901      	subs	r1, #1
d000be84:	b902      	cbnz	r2, d000be88 <main+0x1d28>
d000be86:	460b      	mov	r3, r1
d000be88:	9807      	ldr	r0, [sp, #28]
d000be8a:	9a08      	ldr	r2, [sp, #32]
d000be8c:	9113      	str	r1, [sp, #76]	; 0x4c
d000be8e:	fb03 0202 	mla	r2, r3, r2, r0
d000be92:	9b04      	ldr	r3, [sp, #16]
d000be94:	2000      	movs	r0, #0
d000be96:	685b      	ldr	r3, [r3, #4]
d000be98:	444a      	add	r2, r9
d000be9a:	eb03 080c 	add.w	r8, r3, ip
d000be9e:	1c53      	adds	r3, r2, #1
d000bea0:	9312      	str	r3, [sp, #72]	; 0x48
d000bea2:	e05c      	b.n	d000bf5e <main+0x1dfe>
d000bea4:	d000e6a0 	.word	0xd000e6a0
d000bea8:	d000e6f8 	.word	0xd000e6f8
d000beac:	d000e6dc 	.word	0xd000e6dc
d000beb0:	d000e63c 	.word	0xd000e63c
d000beb4:	d000e718 	.word	0xd000e718
d000beb8:	d000e738 	.word	0xd000e738
d000bebc:	d000e590 	.word	0xd000e590
d000bec0:	d000e660 	.word	0xd000e660
d000bec4:	d000e680 	.word	0xd000e680
d000bec8:	d000e76c 	.word	0xd000e76c
d000becc:	d000e7c4 	.word	0xd000e7c4
d000bed0:	d000e7c0 	.word	0xd000e7c0
d000bed4:	d000e570 	.word	0xd000e570
d000bed8:	d000f67c 	.word	0xd000f67c
d000bedc:	9b12      	ldr	r3, [sp, #72]	; 0x48
d000bede:	f813 4010 	ldrb.w	r4, [r3, r0, lsl #1]
d000bee2:	f812 3010 	ldrb.w	r3, [r2, r0, lsl #1]
d000bee6:	ea43 2304 	orr.w	r3, r3, r4, lsl #8
d000beea:	9c09      	ldr	r4, [sp, #36]	; 0x24
d000beec:	2c00      	cmp	r4, #0
d000beee:	d05b      	beq.n	d000bfa8 <main+0x1e48>
d000bef0:	f1be 0f00 	cmp.w	lr, #0
d000bef4:	d056      	beq.n	d000bfa4 <main+0x1e44>
d000bef6:	990c      	ldr	r1, [sp, #48]	; 0x30
d000bef8:	401c      	ands	r4, r3
d000befa:	40cc      	lsrs	r4, r1
d000befc:	990d      	ldr	r1, [sp, #52]	; 0x34
d000befe:	ebc4 2404 	rsb	r4, r4, r4, lsl #8
d000bf02:	1867      	adds	r7, r4, r1
d000bf04:	fbb7 f7fe 	udiv	r7, r7, lr
d000bf08:	b2ff      	uxtb	r7, r7
d000bf0a:	9c0a      	ldr	r4, [sp, #40]	; 0x28
d000bf0c:	2c00      	cmp	r4, #0
d000bf0e:	d047      	beq.n	d000bfa0 <main+0x1e40>
d000bf10:	2e00      	cmp	r6, #0
d000bf12:	d043      	beq.n	d000bf9c <main+0x1e3c>
d000bf14:	990e      	ldr	r1, [sp, #56]	; 0x38
d000bf16:	401c      	ands	r4, r3
d000bf18:	40cc      	lsrs	r4, r1
d000bf1a:	990f      	ldr	r1, [sp, #60]	; 0x3c
d000bf1c:	ebc4 2404 	rsb	r4, r4, r4, lsl #8
d000bf20:	440c      	add	r4, r1
d000bf22:	fbb4 f4f6 	udiv	r4, r4, r6
d000bf26:	b2e4      	uxtb	r4, r4
d000bf28:	990b      	ldr	r1, [sp, #44]	; 0x2c
d000bf2a:	b3a9      	cbz	r1, d000bf98 <main+0x1e38>
d000bf2c:	b395      	cbz	r5, d000bf94 <main+0x1e34>
d000bf2e:	400b      	ands	r3, r1
d000bf30:	9910      	ldr	r1, [sp, #64]	; 0x40
d000bf32:	40cb      	lsrs	r3, r1
d000bf34:	9911      	ldr	r1, [sp, #68]	; 0x44
d000bf36:	ebc3 2303 	rsb	r3, r3, r3, lsl #8
d000bf3a:	440b      	add	r3, r1
d000bf3c:	fbb3 f3f5 	udiv	r3, r3, r5
d000bf40:	b2db      	uxtb	r3, r3
d000bf42:	08e4      	lsrs	r4, r4, #3
d000bf44:	f027 071f 	bic.w	r7, r7, #31
d000bf48:	3001      	adds	r0, #1
d000bf4a:	f004 041c 	and.w	r4, r4, #28
d000bf4e:	433c      	orrs	r4, r7
d000bf50:	ea44 1493 	orr.w	r4, r4, r3, lsr #6
d000bf54:	9b03      	ldr	r3, [sp, #12]
d000bf56:	4283      	cmp	r3, r0
d000bf58:	f808 4b01 	strb.w	r4, [r8], #1
d000bf5c:	d917      	bls.n	d000bf8e <main+0x1e2e>
d000bf5e:	9b05      	ldr	r3, [sp, #20]
d000bf60:	2b20      	cmp	r3, #32
d000bf62:	d1bb      	bne.n	d000bedc <main+0x1d7c>
d000bf64:	eb02 0480 	add.w	r4, r2, r0, lsl #2
d000bf68:	f812 1020 	ldrb.w	r1, [r2, r0, lsl #2]
d000bf6c:	7863      	ldrb	r3, [r4, #1]
d000bf6e:	78a7      	ldrb	r7, [r4, #2]
d000bf70:	ea41 2303 	orr.w	r3, r1, r3, lsl #8
d000bf74:	78e4      	ldrb	r4, [r4, #3]
d000bf76:	ea43 4307 	orr.w	r3, r3, r7, lsl #16
d000bf7a:	ea43 6304 	orr.w	r3, r3, r4, lsl #24
d000bf7e:	e7b4      	b.n	d000beea <main+0x1d8a>
d000bf80:	4648      	mov	r0, r9
d000bf82:	ee17 8a90 	vmov	r8, s15
d000bf86:	f000 fb8b 	bl	d000c6a0 <free>
d000bf8a:	f7ff b998 	b.w	d000b2be <main+0x115e>
d000bf8e:	9913      	ldr	r1, [sp, #76]	; 0x4c
d000bf90:	449c      	add	ip, r3
d000bf92:	e771      	b.n	d000be78 <main+0x1d18>
d000bf94:	462b      	mov	r3, r5
d000bf96:	e7d4      	b.n	d000bf42 <main+0x1de2>
d000bf98:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
d000bf9a:	e7d2      	b.n	d000bf42 <main+0x1de2>
d000bf9c:	4634      	mov	r4, r6
d000bf9e:	e7c3      	b.n	d000bf28 <main+0x1dc8>
d000bfa0:	9c0a      	ldr	r4, [sp, #40]	; 0x28
d000bfa2:	e7c1      	b.n	d000bf28 <main+0x1dc8>
d000bfa4:	4677      	mov	r7, lr
d000bfa6:	e7b0      	b.n	d000bf0a <main+0x1daa>
d000bfa8:	9f09      	ldr	r7, [sp, #36]	; 0x24
d000bfaa:	e7ae      	b.n	d000bf0a <main+0x1daa>
d000bfac:	2400      	movs	r4, #0
d000bfae:	9b02      	ldr	r3, [sp, #8]
d000bfb0:	9803      	ldr	r0, [sp, #12]
d000bfb2:	f103 3cff 	add.w	ip, r3, #4294967295	; 0xffffffff
d000bfb6:	4621      	mov	r1, r4
d000bfb8:	9d04      	ldr	r5, [sp, #16]
d000bfba:	9b02      	ldr	r3, [sp, #8]
d000bfbc:	428b      	cmp	r3, r1
d000bfbe:	d031      	beq.n	d000c024 <main+0x1ec4>
d000bfc0:	9b06      	ldr	r3, [sp, #24]
d000bfc2:	bb6b      	cbnz	r3, d000c020 <main+0x1ec0>
d000bfc4:	ebac 0301 	sub.w	r3, ip, r1
d000bfc8:	9a08      	ldr	r2, [sp, #32]
d000bfca:	9e07      	ldr	r6, [sp, #28]
d000bfcc:	fb03 6302 	mla	r3, r3, r2, r6
d000bfd0:	686a      	ldr	r2, [r5, #4]
d000bfd2:	2600      	movs	r6, #0
d000bfd4:	3303      	adds	r3, #3
d000bfd6:	1917      	adds	r7, r2, r4
d000bfd8:	444b      	add	r3, r9
d000bfda:	f813 2c01 	ldrb.w	r2, [r3, #-1]
d000bfde:	3601      	adds	r6, #1
d000bfe0:	f813 ec02 	ldrb.w	lr, [r3, #-2]
d000bfe4:	3303      	adds	r3, #3
d000bfe6:	f813 8c06 	ldrb.w	r8, [r3, #-6]
d000bfea:	f022 021f 	bic.w	r2, r2, #31
d000bfee:	ea4f 0ede 	mov.w	lr, lr, lsr #3
d000bff2:	42b0      	cmp	r0, r6
d000bff4:	ea42 1298 	orr.w	r2, r2, r8, lsr #6
d000bff8:	f00e 0e1c 	and.w	lr, lr, #28
d000bffc:	ea42 020e 	orr.w	r2, r2, lr
d000c000:	f807 2b01 	strb.w	r2, [r7], #1
d000c004:	d8e9      	bhi.n	d000bfda <main+0x1e7a>
d000c006:	3101      	adds	r1, #1
d000c008:	4404      	add	r4, r0
d000c00a:	e7d6      	b.n	d000bfba <main+0x1e5a>
d000c00c:	48c9      	ldr	r0, [pc, #804]	; (d000c334 <main+0x21d4>)
d000c00e:	f7fd faeb 	bl	d00095e8 <set_status>
d000c012:	4648      	mov	r0, r9
d000c014:	f000 fb44 	bl	d000c6a0 <free>
d000c018:	f7fd ff96 	bl	d0009f48 <free_image.constprop.0>
d000c01c:	f7fe babd 	b.w	d000a59a <main+0x43a>
d000c020:	460b      	mov	r3, r1
d000c022:	e7d1      	b.n	d000bfc8 <main+0x1e68>
d000c024:	ab1b      	add	r3, sp, #108	; 0x6c
d000c026:	4648      	mov	r0, r9
d000c028:	f10d 0878 	add.w	r8, sp, #120	; 0x78
d000c02c:	ee08 3a10 	vmov	s16, r3
d000c030:	f000 fb36 	bl	d000c6a0 <free>
d000c034:	ab21      	add	r3, sp, #132	; 0x84
d000c036:	ee08 3a90 	vmov	s17, r3
d000c03a:	f7ff b940 	b.w	d000b2be <main+0x115e>
d000c03e:	48be      	ldr	r0, [pc, #760]	; (d000c338 <main+0x21d8>)
d000c040:	f7fd fad2 	bl	d00095e8 <set_status>
d000c044:	4648      	mov	r0, r9
d000c046:	f000 fb2b 	bl	d000c6a0 <free>
d000c04a:	f7fd ff7d 	bl	d0009f48 <free_image.constprop.0>
d000c04e:	f7fe baa4 	b.w	d000a59a <main+0x43a>
d000c052:	2500      	movs	r5, #0
d000c054:	9b02      	ldr	r3, [sp, #8]
d000c056:	4628      	mov	r0, r5
d000c058:	f103 38ff 	add.w	r8, r3, #4294967295	; 0xffffffff
d000c05c:	9b02      	ldr	r3, [sp, #8]
d000c05e:	4283      	cmp	r3, r0
d000c060:	d0e0      	beq.n	d000c024 <main+0x1ec4>
d000c062:	9b06      	ldr	r3, [sp, #24]
d000c064:	bbc3      	cbnz	r3, d000c0d8 <main+0x1f78>
d000c066:	eba8 0300 	sub.w	r3, r8, r0
d000c06a:	9a08      	ldr	r2, [sp, #32]
d000c06c:	9907      	ldr	r1, [sp, #28]
d000c06e:	fb03 1302 	mla	r3, r3, r2, r1
d000c072:	9a04      	ldr	r2, [sp, #16]
d000c074:	2100      	movs	r1, #0
d000c076:	444b      	add	r3, r9
d000c078:	6856      	ldr	r6, [r2, #4]
d000c07a:	f103 0c02 	add.w	ip, r3, #2
d000c07e:	442e      	add	r6, r5
d000c080:	1c5f      	adds	r7, r3, #1
d000c082:	f81c 2021 	ldrb.w	r2, [ip, r1, lsl #2]
d000c086:	f817 4021 	ldrb.w	r4, [r7, r1, lsl #2]
d000c08a:	f813 e021 	ldrb.w	lr, [r3, r1, lsl #2]
d000c08e:	f022 021f 	bic.w	r2, r2, #31
d000c092:	08e4      	lsrs	r4, r4, #3
d000c094:	3101      	adds	r1, #1
d000c096:	ea42 129e 	orr.w	r2, r2, lr, lsr #6
d000c09a:	f004 041c 	and.w	r4, r4, #28
d000c09e:	4322      	orrs	r2, r4
d000c0a0:	f806 2b01 	strb.w	r2, [r6], #1
d000c0a4:	9a03      	ldr	r2, [sp, #12]
d000c0a6:	428a      	cmp	r2, r1
d000c0a8:	d8eb      	bhi.n	d000c082 <main+0x1f22>
d000c0aa:	3001      	adds	r0, #1
d000c0ac:	4415      	add	r5, r2
d000c0ae:	e7d5      	b.n	d000c05c <main+0x1efc>
d000c0b0:	48a2      	ldr	r0, [pc, #648]	; (d000c33c <main+0x21dc>)
d000c0b2:	f7fd fa99 	bl	d00095e8 <set_status>
d000c0b6:	4648      	mov	r0, r9
d000c0b8:	f000 faf2 	bl	d000c6a0 <free>
d000c0bc:	f7fd ff44 	bl	d0009f48 <free_image.constprop.0>
d000c0c0:	f7fe ba6b 	b.w	d000a59a <main+0x43a>
d000c0c4:	489e      	ldr	r0, [pc, #632]	; (d000c340 <main+0x21e0>)
d000c0c6:	f7fd fa8f 	bl	d00095e8 <set_status>
d000c0ca:	4648      	mov	r0, r9
d000c0cc:	f000 fae8 	bl	d000c6a0 <free>
d000c0d0:	f7fd ff3a 	bl	d0009f48 <free_image.constprop.0>
d000c0d4:	f7fe ba61 	b.w	d000a59a <main+0x43a>
d000c0d8:	4603      	mov	r3, r0
d000c0da:	e7c6      	b.n	d000c06a <main+0x1f0a>
d000c0dc:	f899 2037 	ldrb.w	r2, [r9, #55]	; 0x37
d000c0e0:	2300      	movs	r3, #0
d000c0e2:	f899 7036 	ldrb.w	r7, [r9, #54]	; 0x36
d000c0e6:	f899 103b 	ldrb.w	r1, [r9, #59]	; 0x3b
d000c0ea:	ea47 2702 	orr.w	r7, r7, r2, lsl #8
d000c0ee:	f899 603a 	ldrb.w	r6, [r9, #58]	; 0x3a
d000c0f2:	f899 2038 	ldrb.w	r2, [r9, #56]	; 0x38
d000c0f6:	ea46 2601 	orr.w	r6, r6, r1, lsl #8
d000c0fa:	f899 503e 	ldrb.w	r5, [r9, #62]	; 0x3e
d000c0fe:	f899 103f 	ldrb.w	r1, [r9, #63]	; 0x3f
d000c102:	ea47 4702 	orr.w	r7, r7, r2, lsl #16
d000c106:	f899 2039 	ldrb.w	r2, [r9, #57]	; 0x39
d000c10a:	ea45 2501 	orr.w	r5, r5, r1, lsl #8
d000c10e:	f899 103c 	ldrb.w	r1, [r9, #60]	; 0x3c
d000c112:	ea47 6702 	orr.w	r7, r7, r2, lsl #24
d000c116:	f899 2040 	ldrb.w	r2, [r9, #64]	; 0x40
d000c11a:	ea46 4601 	orr.w	r6, r6, r1, lsl #16
d000c11e:	f899 103d 	ldrb.w	r1, [r9, #61]	; 0x3d
d000c122:	ea45 4502 	orr.w	r5, r5, r2, lsl #16
d000c126:	f899 2041 	ldrb.w	r2, [r9, #65]	; 0x41
d000c12a:	ea46 6601 	orr.w	r6, r6, r1, lsl #24
d000c12e:	ea45 6502 	orr.w	r5, r5, r2, lsl #24
d000c132:	f7fe bd4d 	b.w	d000abd0 <main+0xa70>
d000c136:	460b      	mov	r3, r1
d000c138:	f7fe bdac 	b.w	d000ac94 <main+0xb34>
d000c13c:	2400      	movs	r4, #0
d000c13e:	9b02      	ldr	r3, [sp, #8]
d000c140:	9d03      	ldr	r5, [sp, #12]
d000c142:	1e5f      	subs	r7, r3, #1
d000c144:	4621      	mov	r1, r4
d000c146:	9e04      	ldr	r6, [sp, #16]
d000c148:	9b02      	ldr	r3, [sp, #8]
d000c14a:	428b      	cmp	r3, r1
d000c14c:	f43f af6a 	beq.w	d000c024 <main+0x1ec4>
d000c150:	9b06      	ldr	r3, [sp, #24]
d000c152:	2b00      	cmp	r3, #0
d000c154:	d144      	bne.n	d000c1e0 <main+0x2080>
d000c156:	1a7b      	subs	r3, r7, r1
d000c158:	9807      	ldr	r0, [sp, #28]
d000c15a:	9a08      	ldr	r2, [sp, #32]
d000c15c:	fb03 0202 	mla	r2, r3, r2, r0
d000c160:	6873      	ldr	r3, [r6, #4]
d000c162:	2000      	movs	r0, #0
d000c164:	444a      	add	r2, r9
d000c166:	4423      	add	r3, r4
d000c168:	ea4f 0c50 	mov.w	ip, r0, lsr #1
d000c16c:	f010 0f01 	tst.w	r0, #1
d000c170:	f100 0001 	add.w	r0, r0, #1
d000c174:	f812 e00c 	ldrb.w	lr, [r2, ip]
d000c178:	ea4f 1c1e 	mov.w	ip, lr, lsr #4
d000c17c:	bf18      	it	ne
d000c17e:	f00e 0c0f 	andne.w	ip, lr, #15
d000c182:	4285      	cmp	r5, r0
d000c184:	f803 cb01 	strb.w	ip, [r3], #1
d000c188:	d8ee      	bhi.n	d000c168 <main+0x2008>
d000c18a:	3101      	adds	r1, #1
d000c18c:	442c      	add	r4, r5
d000c18e:	e7db      	b.n	d000c148 <main+0x1fe8>
d000c190:	9b02      	ldr	r3, [sp, #8]
d000c192:	2400      	movs	r4, #0
d000c194:	9e03      	ldr	r6, [sp, #12]
d000c196:	9f04      	ldr	r7, [sp, #16]
d000c198:	e00d      	b.n	d000c1b6 <main+0x2056>
d000c19a:	1e5d      	subs	r5, r3, #1
d000c19c:	9b08      	ldr	r3, [sp, #32]
d000c19e:	4632      	mov	r2, r6
d000c1a0:	6878      	ldr	r0, [r7, #4]
d000c1a2:	469c      	mov	ip, r3
d000c1a4:	9b07      	ldr	r3, [sp, #28]
d000c1a6:	4420      	add	r0, r4
d000c1a8:	4434      	add	r4, r6
d000c1aa:	fb01 310c 	mla	r1, r1, ip, r3
d000c1ae:	4449      	add	r1, r9
d000c1b0:	f000 fa8c 	bl	d000c6cc <memcpy>
d000c1b4:	462b      	mov	r3, r5
d000c1b6:	9a02      	ldr	r2, [sp, #8]
d000c1b8:	1e5d      	subs	r5, r3, #1
d000c1ba:	1ad1      	subs	r1, r2, r3
d000c1bc:	2b00      	cmp	r3, #0
d000c1be:	f43f af31 	beq.w	d000c024 <main+0x1ec4>
d000c1c2:	9a06      	ldr	r2, [sp, #24]
d000c1c4:	2a00      	cmp	r2, #0
d000c1c6:	d1e8      	bne.n	d000c19a <main+0x203a>
d000c1c8:	4629      	mov	r1, r5
d000c1ca:	e7e7      	b.n	d000c19c <main+0x203c>
d000c1cc:	485d      	ldr	r0, [pc, #372]	; (d000c344 <main+0x21e4>)
d000c1ce:	f7fd fa0b 	bl	d00095e8 <set_status>
d000c1d2:	4648      	mov	r0, r9
d000c1d4:	f000 fa64 	bl	d000c6a0 <free>
d000c1d8:	f7fd feb6 	bl	d0009f48 <free_image.constprop.0>
d000c1dc:	f7fe b9dd 	b.w	d000a59a <main+0x43a>
d000c1e0:	460b      	mov	r3, r1
d000c1e2:	e7b9      	b.n	d000c158 <main+0x1ff8>
d000c1e4:	aa21      	add	r2, sp, #132	; 0x84
d000c1e6:	f10d 0878 	add.w	r8, sp, #120	; 0x78
d000c1ea:	4957      	ldr	r1, [pc, #348]	; (d000c348 <main+0x21e8>)
d000c1ec:	4610      	mov	r0, r2
d000c1ee:	ee08 2a90 	vmov	s17, r2
d000c1f2:	4642      	mov	r2, r8
d000c1f4:	9320      	str	r3, [sp, #128]	; 0x80
d000c1f6:	e9cd 941e 	strd	r9, r4, [sp, #120]	; 0x78
d000c1fa:	f7fc fc29 	bl	d0008a50 <pjpeg_decode_init>
d000c1fe:	4605      	mov	r5, r0
d000c200:	2800      	cmp	r0, #0
d000c202:	d032      	beq.n	d000c26a <main+0x210a>
d000c204:	4621      	mov	r1, r4
d000c206:	4648      	mov	r0, r9
d000c208:	f7fd fd82 	bl	d0009d10 <load_stb_jpeg_from_memory.constprop.0>
d000c20c:	bb18      	cbnz	r0, d000c256 <main+0x20f6>
d000c20e:	2d25      	cmp	r5, #37	; 0x25
d000c210:	d01f      	beq.n	d000c252 <main+0x20f2>
d000c212:	2d1b      	cmp	r5, #27
d000c214:	d01b      	beq.n	d000c24e <main+0x20ee>
d000c216:	2d1a      	cmp	r5, #26
d000c218:	d017      	beq.n	d000c24a <main+0x20ea>
d000c21a:	4b4c      	ldr	r3, [pc, #304]	; (d000c34c <main+0x21ec>)
d000c21c:	4a4c      	ldr	r2, [pc, #304]	; (d000c350 <main+0x21f0>)
d000c21e:	2d13      	cmp	r5, #19
d000c220:	bf08      	it	eq
d000c222:	4613      	moveq	r3, r2
d000c224:	4a4b      	ldr	r2, [pc, #300]	; (d000c354 <main+0x21f4>)
d000c226:	21a0      	movs	r1, #160	; 0xa0
d000c228:	9500      	str	r5, [sp, #0]
d000c22a:	484b      	ldr	r0, [pc, #300]	; (d000c358 <main+0x21f8>)
d000c22c:	f000 fef2 	bl	d000d014 <sniprintf>
d000c230:	4849      	ldr	r0, [pc, #292]	; (d000c358 <main+0x21f8>)
d000c232:	f7fd f9d9 	bl	d00095e8 <set_status>
d000c236:	4648      	mov	r0, r9
d000c238:	f000 fa32 	bl	d000c6a0 <free>
d000c23c:	f7fd fe84 	bl	d0009f48 <free_image.constprop.0>
d000c240:	f7fe b9ab 	b.w	d000a59a <main+0x43a>
d000c244:	4b45      	ldr	r3, [pc, #276]	; (d000c35c <main+0x21fc>)
d000c246:	f7ff b8ba 	b.w	d000b3be <main+0x125e>
d000c24a:	4b44      	ldr	r3, [pc, #272]	; (d000c35c <main+0x21fc>)
d000c24c:	e7ea      	b.n	d000c224 <main+0x20c4>
d000c24e:	4b44      	ldr	r3, [pc, #272]	; (d000c360 <main+0x2200>)
d000c250:	e7e8      	b.n	d000c224 <main+0x20c4>
d000c252:	4b44      	ldr	r3, [pc, #272]	; (d000c364 <main+0x2204>)
d000c254:	e7e6      	b.n	d000c224 <main+0x20c4>
d000c256:	ab1b      	add	r3, sp, #108	; 0x6c
d000c258:	4648      	mov	r0, r9
d000c25a:	ee08 3a10 	vmov	s16, r3
d000c25e:	f000 fa1f 	bl	d000c6a0 <free>
d000c262:	4b41      	ldr	r3, [pc, #260]	; (d000c368 <main+0x2208>)
d000c264:	9304      	str	r3, [sp, #16]
d000c266:	f7ff b82a 	b.w	d000b2be <main+0x115e>
d000c26a:	ee18 0a90 	vmov	r0, s17
d000c26e:	f7fd fb77 	bl	d0009960 <decode_pjpeg_mcus_to_image.constprop.0>
d000c272:	2800      	cmp	r0, #0
d000c274:	d1ef      	bne.n	d000c256 <main+0x20f6>
d000c276:	f7fd fe67 	bl	d0009f48 <free_image.constprop.0>
d000c27a:	4621      	mov	r1, r4
d000c27c:	4648      	mov	r0, r9
d000c27e:	f7fd fd47 	bl	d0009d10 <load_stb_jpeg_from_memory.constprop.0>
d000c282:	9007      	str	r0, [sp, #28]
d000c284:	e4a8      	b.n	d000bbd8 <main+0x1a78>
d000c286:	4b36      	ldr	r3, [pc, #216]	; (d000c360 <main+0x2200>)
d000c288:	f7ff b899 	b.w	d000b3be <main+0x125e>
d000c28c:	4b35      	ldr	r3, [pc, #212]	; (d000c364 <main+0x2204>)
d000c28e:	f7ff b896 	b.w	d000b3be <main+0x125e>
d000c292:	0918      	lsrs	r0, r3, #4
d000c294:	ea40 0083 	orr.w	r0, r0, r3, lsl #2
d000c298:	b2c0      	uxtb	r0, r0
d000c29a:	f7ff ba31 	b.w	d000b700 <main+0x15a0>
d000c29e:	9b04      	ldr	r3, [sp, #16]
d000c2a0:	4641      	mov	r1, r8
d000c2a2:	f8bd 2084 	ldrh.w	r2, [sp, #132]	; 0x84
d000c2a6:	6858      	ldr	r0, [r3, #4]
d000c2a8:	9b03      	ldr	r3, [sp, #12]
d000c2aa:	fb03 0002 	mla	r0, r3, r2, r0
d000c2ae:	f000 fa0d 	bl	d000c6cc <memcpy>
d000c2b2:	9b03      	ldr	r3, [sp, #12]
d000c2b4:	3301      	adds	r3, #1
d000c2b6:	9303      	str	r3, [sp, #12]
d000c2b8:	f7ff b9af 	b.w	d000b61a <main+0x14ba>
d000c2bc:	2d01      	cmp	r5, #1
d000c2be:	b2eb      	uxtb	r3, r5
d000c2c0:	f000 8193 	beq.w	d000c5ea <main+0x248a>
d000c2c4:	2b02      	cmp	r3, #2
d000c2c6:	f000 818d 	beq.w	d000c5e4 <main+0x2484>
d000c2ca:	4682      	mov	sl, r0
d000c2cc:	f7ff ba24 	b.w	d000b718 <main+0x15b8>
d000c2d0:	9b02      	ldr	r3, [sp, #8]
d000c2d2:	f04f 0a80 	mov.w	sl, #128	; 0x80
d000c2d6:	f8bd 2084 	ldrh.w	r2, [sp, #132]	; 0x84
d000c2da:	429a      	cmp	r2, r3
d000c2dc:	d9e9      	bls.n	d000c2b2 <main+0x2152>
d000c2de:	f003 0107 	and.w	r1, r3, #7
d000c2e2:	9803      	ldr	r0, [sp, #12]
d000c2e4:	2500      	movs	r5, #0
d000c2e6:	f89d c088 	ldrb.w	ip, [sp, #136]	; 0x88
d000c2ea:	fb02 3000 	mla	r0, r2, r0, r3
d000c2ee:	fa2a f201 	lsr.w	r2, sl, r1
d000c2f2:	9904      	ldr	r1, [sp, #16]
d000c2f4:	462e      	mov	r6, r5
d000c2f6:	eb08 07d3 	add.w	r7, r8, r3, lsr #3
d000c2fa:	f8d1 e004 	ldr.w	lr, [r1, #4]
d000c2fe:	b2d2      	uxtb	r2, r2
d000c300:	e009      	b.n	d000c316 <main+0x21b6>
d000c302:	f1b9 0f07 	cmp.w	r9, #7
d000c306:	d811      	bhi.n	d000c32c <main+0x21cc>
d000c308:	f897 9000 	ldrb.w	r9, [r7]
d000c30c:	4427      	add	r7, r4
d000c30e:	ea12 0f09 	tst.w	r2, r9
d000c312:	bf18      	it	ne
d000c314:	b2cd      	uxtbne	r5, r1
d000c316:	fa5f f986 	uxtb.w	r9, r6
d000c31a:	2101      	movs	r1, #1
d000c31c:	45e1      	cmp	r9, ip
d000c31e:	fa01 f106 	lsl.w	r1, r1, r6
d000c322:	f106 0601 	add.w	r6, r6, #1
d000c326:	ea41 0105 	orr.w	r1, r1, r5
d000c32a:	d3ea      	bcc.n	d000c302 <main+0x21a2>
d000c32c:	3301      	adds	r3, #1
d000c32e:	f80e 5000 	strb.w	r5, [lr, r0]
d000c332:	e7d0      	b.n	d000c2d6 <main+0x2176>
d000c334:	d000e394 	.word	0xd000e394
d000c338:	d000e378 	.word	0xd000e378
d000c33c:	d000e31c 	.word	0xd000e31c
d000c340:	d000e338 	.word	0xd000e338
d000c344:	d000e354 	.word	0xd000e354
d000c348:	d00095b9 	.word	0xd00095b9
d000c34c:	d000e1dc 	.word	0xd000e1dc
d000c350:	d000e220 	.word	0xd000e220
d000c354:	d000e248 	.word	0xd000e248
d000c358:	d000fa7c 	.word	0xd000fa7c
d000c35c:	d000e1bc 	.word	0xd000e1bc
d000c360:	d000e1f0 	.word	0xd000e1f0
d000c364:	d000e20c 	.word	0xd000e20c
d000c368:	d000f670 	.word	0xd000f670
d000c36c:	9906      	ldr	r1, [sp, #24]
d000c36e:	2780      	movs	r7, #128	; 0x80
d000c370:	f8bd 9084 	ldrh.w	r9, [sp, #132]	; 0x84
d000c374:	4549      	cmp	r1, r9
d000c376:	d29c      	bcs.n	d000c2b2 <main+0x2152>
d000c378:	f001 0007 	and.w	r0, r1, #7
d000c37c:	2500      	movs	r5, #0
d000c37e:	08ca      	lsrs	r2, r1, #3
d000c380:	fa27 f000 	lsr.w	r0, r7, r0
d000c384:	462e      	mov	r6, r5
d000c386:	eb08 0cd1 	add.w	ip, r8, r1, lsr #3
d000c38a:	b2c0      	uxtb	r0, r0
d000c38c:	fa27 f306 	lsr.w	r3, r7, r6
d000c390:	f89c e000 	ldrb.w	lr, [ip]
d000c394:	3601      	adds	r6, #1
d000c396:	44a4      	add	ip, r4
d000c398:	ea10 0f0e 	tst.w	r0, lr
d000c39c:	ea43 0305 	orr.w	r3, r3, r5
d000c3a0:	bf18      	it	ne
d000c3a2:	b2dd      	uxtbne	r5, r3
d000c3a4:	2e08      	cmp	r6, #8
d000c3a6:	d1f1      	bne.n	d000c38c <main+0x222c>
d000c3a8:	9b0d      	ldr	r3, [sp, #52]	; 0x34
d000c3aa:	441a      	add	r2, r3
d000c3ac:	2300      	movs	r3, #0
d000c3ae:	eb08 0e02 	add.w	lr, r8, r2
d000c3b2:	469c      	mov	ip, r3
d000c3b4:	fa27 f60c 	lsr.w	r6, r7, ip
d000c3b8:	f89e a000 	ldrb.w	sl, [lr]
d000c3bc:	f10c 0c01 	add.w	ip, ip, #1
d000c3c0:	44a6      	add	lr, r4
d000c3c2:	ea10 0f0a 	tst.w	r0, sl
d000c3c6:	ea46 0603 	orr.w	r6, r6, r3
d000c3ca:	bf18      	it	ne
d000c3cc:	b2f3      	uxtbne	r3, r6
d000c3ce:	f1bc 0f08 	cmp.w	ip, #8
d000c3d2:	d1ef      	bne.n	d000c3b4 <main+0x2254>
d000c3d4:	9e0d      	ldr	r6, [sp, #52]	; 0x34
d000c3d6:	f04f 0c00 	mov.w	ip, #0
d000c3da:	4432      	add	r2, r6
d000c3dc:	46e6      	mov	lr, ip
d000c3de:	4442      	add	r2, r8
d000c3e0:	fa27 f60e 	lsr.w	r6, r7, lr
d000c3e4:	f892 a000 	ldrb.w	sl, [r2]
d000c3e8:	f10e 0e01 	add.w	lr, lr, #1
d000c3ec:	4422      	add	r2, r4
d000c3ee:	ea10 0f0a 	tst.w	r0, sl
d000c3f2:	ea4c 0606 	orr.w	r6, ip, r6
d000c3f6:	bf18      	it	ne
d000c3f8:	fa5f fc86 	uxtbne.w	ip, r6
d000c3fc:	f1be 0f08 	cmp.w	lr, #8
d000c400:	d1ee      	bne.n	d000c3e0 <main+0x2280>
d000c402:	08db      	lsrs	r3, r3, #3
d000c404:	f025 051f 	bic.w	r5, r5, #31
d000c408:	9a04      	ldr	r2, [sp, #16]
d000c40a:	f003 031c 	and.w	r3, r3, #28
d000c40e:	9803      	ldr	r0, [sp, #12]
d000c410:	6852      	ldr	r2, [r2, #4]
d000c412:	432b      	orrs	r3, r5
d000c414:	fb09 2200 	mla	r2, r9, r0, r2
d000c418:	ea43 1c9c 	orr.w	ip, r3, ip, lsr #6
d000c41c:	f802 c001 	strb.w	ip, [r2, r1]
d000c420:	3101      	adds	r1, #1
d000c422:	e7a5      	b.n	d000c370 <main+0x2210>
d000c424:	4872      	ldr	r0, [pc, #456]	; (d000c5f0 <main+0x2490>)
d000c426:	f7fd f8df 	bl	d00095e8 <set_status>
d000c42a:	4648      	mov	r0, r9
d000c42c:	f000 f938 	bl	d000c6a0 <free>
d000c430:	f7fd fd8a 	bl	d0009f48 <free_image.constprop.0>
d000c434:	f7fe b8b1 	b.w	d000a59a <main+0x43a>
d000c438:	9309      	str	r3, [sp, #36]	; 0x24
d000c43a:	9b06      	ldr	r3, [sp, #24]
d000c43c:	930a      	str	r3, [sp, #40]	; 0x28
d000c43e:	f7ff b8c1 	b.w	d000b5c4 <main+0x1464>
d000c442:	2301      	movs	r3, #1
d000c444:	9309      	str	r3, [sp, #36]	; 0x24
d000c446:	930a      	str	r3, [sp, #40]	; 0x28
d000c448:	f7ff b8bc 	b.w	d000b5c4 <main+0x1464>
d000c44c:	9b02      	ldr	r3, [sp, #8]
d000c44e:	b923      	cbnz	r3, d000c45a <main+0x22fa>
d000c450:	f89d 3088 	ldrb.w	r3, [sp, #136]	; 0x88
d000c454:	2b08      	cmp	r3, #8
d000c456:	d8e5      	bhi.n	d000c424 <main+0x22c4>
d000c458:	9b02      	ldr	r3, [sp, #8]
d000c45a:	2200      	movs	r2, #0
d000c45c:	9309      	str	r3, [sp, #36]	; 0x24
d000c45e:	1c63      	adds	r3, r4, #1
d000c460:	920a      	str	r2, [sp, #40]	; 0x28
d000c462:	2201      	movs	r2, #1
d000c464:	f023 0301 	bic.w	r3, r3, #1
d000c468:	920c      	str	r2, [sp, #48]	; 0x30
d000c46a:	461d      	mov	r5, r3
d000c46c:	f7ff b8b5 	b.w	d000b5da <main+0x147a>
d000c470:	4860      	ldr	r0, [pc, #384]	; (d000c5f4 <main+0x2494>)
d000c472:	f7fd f8b9 	bl	d00095e8 <set_status>
d000c476:	4648      	mov	r0, r9
d000c478:	f000 f912 	bl	d000c6a0 <free>
d000c47c:	f7fd fd64 	bl	d0009f48 <free_image.constprop.0>
d000c480:	f7fe b88b 	b.w	d000a59a <main+0x43a>
d000c484:	485c      	ldr	r0, [pc, #368]	; (d000c5f8 <main+0x2498>)
d000c486:	f7fd f8af 	bl	d00095e8 <set_status>
d000c48a:	4648      	mov	r0, r9
d000c48c:	f000 f908 	bl	d000c6a0 <free>
d000c490:	f7fd fd5a 	bl	d0009f48 <free_image.constprop.0>
d000c494:	f7fe b881 	b.w	d000a59a <main+0x43a>
d000c498:	4858      	ldr	r0, [pc, #352]	; (d000c5fc <main+0x249c>)
d000c49a:	f7fd f8a5 	bl	d00095e8 <set_status>
d000c49e:	4648      	mov	r0, r9
d000c4a0:	f000 f8fe 	bl	d000c6a0 <free>
d000c4a4:	f7fd fd50 	bl	d0009f48 <free_image.constprop.0>
d000c4a8:	f7fe b877 	b.w	d000a59a <main+0x43a>
d000c4ac:	4646      	mov	r6, r8
d000c4ae:	2700      	movs	r7, #0
d000c4b0:	f8dd a02c 	ldr.w	sl, [sp, #44]	; 0x2c
d000c4b4:	f8dd c020 	ldr.w	ip, [sp, #32]
d000c4b8:	9b0c      	ldr	r3, [sp, #48]	; 0x30
d000c4ba:	42bb      	cmp	r3, r7
d000c4bc:	d048      	beq.n	d000c550 <main+0x23f0>
d000c4be:	2000      	movs	r0, #0
d000c4c0:	9b07      	ldr	r3, [sp, #28]
d000c4c2:	4563      	cmp	r3, ip
d000c4c4:	d93f      	bls.n	d000c546 <main+0x23e6>
d000c4c6:	4284      	cmp	r4, r0
d000c4c8:	d93d      	bls.n	d000c546 <main+0x23e6>
d000c4ca:	f91a 300c 	ldrsb.w	r3, [sl, ip]
d000c4ce:	f10c 0501 	add.w	r5, ip, #1
d000c4d2:	2b00      	cmp	r3, #0
d000c4d4:	db12      	blt.n	d000c4fc <main+0x239c>
d000c4d6:	1c5a      	adds	r2, r3, #1
d000c4d8:	9b07      	ldr	r3, [sp, #28]
d000c4da:	eb05 0c02 	add.w	ip, r5, r2
d000c4de:	4563      	cmp	r3, ip
d000c4e0:	d322      	bcc.n	d000c528 <main+0x23c8>
d000c4e2:	eb02 0900 	add.w	r9, r2, r0
d000c4e6:	454c      	cmp	r4, r9
d000c4e8:	d31e      	bcc.n	d000c528 <main+0x23c8>
d000c4ea:	eb0a 0105 	add.w	r1, sl, r5
d000c4ee:	4430      	add	r0, r6
d000c4f0:	4665      	mov	r5, ip
d000c4f2:	f000 f8eb 	bl	d000c6cc <memcpy>
d000c4f6:	4648      	mov	r0, r9
d000c4f8:	46ac      	mov	ip, r5
d000c4fa:	e7e1      	b.n	d000c4c0 <main+0x2360>
d000c4fc:	f113 0f80 	cmn.w	r3, #128	; 0x80
d000c500:	d0fa      	beq.n	d000c4f8 <main+0x2398>
d000c502:	f1c3 0201 	rsb	r2, r3, #1
d000c506:	9b07      	ldr	r3, [sp, #28]
d000c508:	42ab      	cmp	r3, r5
d000c50a:	d90d      	bls.n	d000c528 <main+0x23c8>
d000c50c:	eb00 0902 	add.w	r9, r0, r2
d000c510:	454c      	cmp	r4, r9
d000c512:	d309      	bcc.n	d000c528 <main+0x23c8>
d000c514:	f81a 1005 	ldrb.w	r1, [sl, r5]
d000c518:	f10c 0502 	add.w	r5, ip, #2
d000c51c:	4430      	add	r0, r6
d000c51e:	f000 f8e3 	bl	d000c6e8 <memset>
d000c522:	4648      	mov	r0, r9
d000c524:	46ac      	mov	ip, r5
d000c526:	e7cb      	b.n	d000c4c0 <main+0x2360>
d000c528:	f8dd 9014 	ldr.w	r9, [sp, #20]
d000c52c:	4640      	mov	r0, r8
d000c52e:	f000 f8b7 	bl	d000c6a0 <free>
d000c532:	4833      	ldr	r0, [pc, #204]	; (d000c600 <main+0x24a0>)
d000c534:	f7fd f858 	bl	d00095e8 <set_status>
d000c538:	4648      	mov	r0, r9
d000c53a:	f000 f8b1 	bl	d000c6a0 <free>
d000c53e:	f7fd fd03 	bl	d0009f48 <free_image.constprop.0>
d000c542:	f7fe b82a 	b.w	d000a59a <main+0x43a>
d000c546:	4284      	cmp	r4, r0
d000c548:	4426      	add	r6, r4
d000c54a:	d1ed      	bne.n	d000c528 <main+0x23c8>
d000c54c:	3701      	adds	r7, #1
d000c54e:	e7b3      	b.n	d000c4b8 <main+0x2358>
d000c550:	f8cd c020 	str.w	ip, [sp, #32]
d000c554:	f7ff b87e 	b.w	d000b654 <main+0x14f4>
d000c558:	4640      	mov	r0, r8
d000c55a:	f8dd a044 	ldr.w	sl, [sp, #68]	; 0x44
d000c55e:	f8dd 9014 	ldr.w	r9, [sp, #20]
d000c562:	f000 f89d 	bl	d000c6a0 <free>
d000c566:	9b09      	ldr	r3, [sp, #36]	; 0x24
d000c568:	bb03      	cbnz	r3, d000c5ac <main+0x244c>
d000c56a:	ab1b      	add	r3, sp, #108	; 0x6c
d000c56c:	4648      	mov	r0, r9
d000c56e:	f10d 0878 	add.w	r8, sp, #120	; 0x78
d000c572:	ee08 3a10 	vmov	s16, r3
d000c576:	f000 f893 	bl	d000c6a0 <free>
d000c57a:	f7fe bea0 	b.w	d000b2be <main+0x115e>
d000c57e:	4640      	mov	r0, r8
d000c580:	f000 f88e 	bl	d000c6a0 <free>
d000c584:	481f      	ldr	r0, [pc, #124]	; (d000c604 <main+0x24a4>)
d000c586:	f7fd f82f 	bl	d00095e8 <set_status>
d000c58a:	4648      	mov	r0, r9
d000c58c:	f000 f888 	bl	d000c6a0 <free>
d000c590:	f7fd fcda 	bl	d0009f48 <free_image.constprop.0>
d000c594:	f7fe b801 	b.w	d000a59a <main+0x43a>
d000c598:	481b      	ldr	r0, [pc, #108]	; (d000c608 <main+0x24a8>)
d000c59a:	f7fd f825 	bl	d00095e8 <set_status>
d000c59e:	4648      	mov	r0, r9
d000c5a0:	f000 f87e 	bl	d000c6a0 <free>
d000c5a4:	f7fd fcd0 	bl	d0009f48 <free_image.constprop.0>
d000c5a8:	f7fd bff7 	b.w	d000a59a <main+0x43a>
d000c5ac:	ab1b      	add	r3, sp, #108	; 0x6c
d000c5ae:	4817      	ldr	r0, [pc, #92]	; (d000c60c <main+0x24ac>)
d000c5b0:	f10d 0878 	add.w	r8, sp, #120	; 0x78
d000c5b4:	ee08 3a10 	vmov	s16, r3
d000c5b8:	f7fc fe0a 	bl	d00091d0 <init_rgb332_palette>
d000c5bc:	4648      	mov	r0, r9
d000c5be:	f000 f86f 	bl	d000c6a0 <free>
d000c5c2:	f7fe be7c 	b.w	d000b2be <main+0x115e>
d000c5c6:	f8dd 9014 	ldr.w	r9, [sp, #20]
d000c5ca:	4640      	mov	r0, r8
d000c5cc:	f000 f868 	bl	d000c6a0 <free>
d000c5d0:	480f      	ldr	r0, [pc, #60]	; (d000c610 <main+0x24b0>)
d000c5d2:	f7fd f809 	bl	d00095e8 <set_status>
d000c5d6:	4648      	mov	r0, r9
d000c5d8:	f000 f862 	bl	d000c6a0 <free>
d000c5dc:	f7fd fcb4 	bl	d0009f48 <free_image.constprop.0>
d000c5e0:	f7fd bfdb 	b.w	d000a59a <main+0x43a>
d000c5e4:	4684      	mov	ip, r0
d000c5e6:	f7ff b897 	b.w	d000b718 <main+0x15b8>
d000c5ea:	4602      	mov	r2, r0
d000c5ec:	f7ff b894 	b.w	d000b718 <main+0x15b8>
d000c5f0:	d000e478 	.word	0xd000e478
d000c5f4:	d000e438 	.word	0xd000e438
d000c5f8:	d000e41c 	.word	0xd000e41c
d000c5fc:	d000e454 	.word	0xd000e454
d000c600:	d000e510 	.word	0xd000e510
d000c604:	d000e4d4 	.word	0xd000e4d4
d000c608:	d000e4b4 	.word	0xd000e4b4
d000c60c:	d000f67c 	.word	0xd000f67c
d000c610:	d000e4f8 	.word	0xd000e4f8

d000c614 <__assert_func>:
d000c614:	b51f      	push	{r0, r1, r2, r3, r4, lr}
d000c616:	4614      	mov	r4, r2
d000c618:	461a      	mov	r2, r3
d000c61a:	4b09      	ldr	r3, [pc, #36]	; (d000c640 <__assert_func+0x2c>)
d000c61c:	681b      	ldr	r3, [r3, #0]
d000c61e:	4605      	mov	r5, r0
d000c620:	68d8      	ldr	r0, [r3, #12]
d000c622:	b14c      	cbz	r4, d000c638 <__assert_func+0x24>
d000c624:	4b07      	ldr	r3, [pc, #28]	; (d000c644 <__assert_func+0x30>)
d000c626:	9100      	str	r1, [sp, #0]
d000c628:	e9cd 3401 	strd	r3, r4, [sp, #4]
d000c62c:	4906      	ldr	r1, [pc, #24]	; (d000c648 <__assert_func+0x34>)
d000c62e:	462b      	mov	r3, r5
d000c630:	f000 f81c 	bl	d000c66c <fiprintf>
d000c634:	f000 fe0a 	bl	d000d24c <abort>
d000c638:	4b04      	ldr	r3, [pc, #16]	; (d000c64c <__assert_func+0x38>)
d000c63a:	461c      	mov	r4, r3
d000c63c:	e7f3      	b.n	d000c626 <__assert_func+0x12>
d000c63e:	bf00      	nop
d000c640:	d000e8a4 	.word	0xd000e8a4
d000c644:	d000e7c8 	.word	0xd000e7c8
d000c648:	d000e7d5 	.word	0xd000e7d5
d000c64c:	d000e803 	.word	0xd000e803

d000c650 <calloc>:
d000c650:	4b02      	ldr	r3, [pc, #8]	; (d000c65c <calloc+0xc>)
d000c652:	460a      	mov	r2, r1
d000c654:	4601      	mov	r1, r0
d000c656:	6818      	ldr	r0, [r3, #0]
d000c658:	f000 b84e 	b.w	d000c6f8 <_calloc_r>
d000c65c:	d000e8a4 	.word	0xd000e8a4

d000c660 <__errno>:
d000c660:	4b01      	ldr	r3, [pc, #4]	; (d000c668 <__errno+0x8>)
d000c662:	6818      	ldr	r0, [r3, #0]
d000c664:	4770      	bx	lr
d000c666:	bf00      	nop
d000c668:	d000e8a4 	.word	0xd000e8a4

d000c66c <fiprintf>:
d000c66c:	b40e      	push	{r1, r2, r3}
d000c66e:	b503      	push	{r0, r1, lr}
d000c670:	4601      	mov	r1, r0
d000c672:	ab03      	add	r3, sp, #12
d000c674:	4805      	ldr	r0, [pc, #20]	; (d000c68c <fiprintf+0x20>)
d000c676:	f853 2b04 	ldr.w	r2, [r3], #4
d000c67a:	6800      	ldr	r0, [r0, #0]
d000c67c:	9301      	str	r3, [sp, #4]
d000c67e:	f000 f91f 	bl	d000c8c0 <_vfiprintf_r>
d000c682:	b002      	add	sp, #8
d000c684:	f85d eb04 	ldr.w	lr, [sp], #4
d000c688:	b003      	add	sp, #12
d000c68a:	4770      	bx	lr
d000c68c:	d000e8a4 	.word	0xd000e8a4

d000c690 <malloc>:
d000c690:	4b02      	ldr	r3, [pc, #8]	; (d000c69c <malloc+0xc>)
d000c692:	4601      	mov	r1, r0
d000c694:	6818      	ldr	r0, [r3, #0]
d000c696:	f000 b88f 	b.w	d000c7b8 <_malloc_r>
d000c69a:	bf00      	nop
d000c69c:	d000e8a4 	.word	0xd000e8a4

d000c6a0 <free>:
d000c6a0:	4b02      	ldr	r3, [pc, #8]	; (d000c6ac <free+0xc>)
d000c6a2:	4601      	mov	r1, r0
d000c6a4:	6818      	ldr	r0, [r3, #0]
d000c6a6:	f000 b837 	b.w	d000c718 <_free_r>
d000c6aa:	bf00      	nop
d000c6ac:	d000e8a4 	.word	0xd000e8a4

d000c6b0 <memcmp>:
d000c6b0:	b530      	push	{r4, r5, lr}
d000c6b2:	3901      	subs	r1, #1
d000c6b4:	2400      	movs	r4, #0
d000c6b6:	42a2      	cmp	r2, r4
d000c6b8:	d101      	bne.n	d000c6be <memcmp+0xe>
d000c6ba:	2000      	movs	r0, #0
d000c6bc:	e005      	b.n	d000c6ca <memcmp+0x1a>
d000c6be:	5d03      	ldrb	r3, [r0, r4]
d000c6c0:	3401      	adds	r4, #1
d000c6c2:	5d0d      	ldrb	r5, [r1, r4]
d000c6c4:	42ab      	cmp	r3, r5
d000c6c6:	d0f6      	beq.n	d000c6b6 <memcmp+0x6>
d000c6c8:	1b58      	subs	r0, r3, r5
d000c6ca:	bd30      	pop	{r4, r5, pc}

d000c6cc <memcpy>:
d000c6cc:	440a      	add	r2, r1
d000c6ce:	4291      	cmp	r1, r2
d000c6d0:	f100 33ff 	add.w	r3, r0, #4294967295	; 0xffffffff
d000c6d4:	d100      	bne.n	d000c6d8 <memcpy+0xc>
d000c6d6:	4770      	bx	lr
d000c6d8:	b510      	push	{r4, lr}
d000c6da:	f811 4b01 	ldrb.w	r4, [r1], #1
d000c6de:	f803 4f01 	strb.w	r4, [r3, #1]!
d000c6e2:	4291      	cmp	r1, r2
d000c6e4:	d1f9      	bne.n	d000c6da <memcpy+0xe>
d000c6e6:	bd10      	pop	{r4, pc}

d000c6e8 <memset>:
d000c6e8:	4402      	add	r2, r0
d000c6ea:	4603      	mov	r3, r0
d000c6ec:	4293      	cmp	r3, r2
d000c6ee:	d100      	bne.n	d000c6f2 <memset+0xa>
d000c6f0:	4770      	bx	lr
d000c6f2:	f803 1b01 	strb.w	r1, [r3], #1
d000c6f6:	e7f9      	b.n	d000c6ec <memset+0x4>

d000c6f8 <_calloc_r>:
d000c6f8:	b513      	push	{r0, r1, r4, lr}
d000c6fa:	434a      	muls	r2, r1
d000c6fc:	4611      	mov	r1, r2
d000c6fe:	9201      	str	r2, [sp, #4]
d000c700:	f000 f85a 	bl	d000c7b8 <_malloc_r>
d000c704:	4604      	mov	r4, r0
d000c706:	b118      	cbz	r0, d000c710 <_calloc_r+0x18>
d000c708:	9a01      	ldr	r2, [sp, #4]
d000c70a:	2100      	movs	r1, #0
d000c70c:	f7ff ffec 	bl	d000c6e8 <memset>
d000c710:	4620      	mov	r0, r4
d000c712:	b002      	add	sp, #8
d000c714:	bd10      	pop	{r4, pc}
	...

d000c718 <_free_r>:
d000c718:	b537      	push	{r0, r1, r2, r4, r5, lr}
d000c71a:	2900      	cmp	r1, #0
d000c71c:	d048      	beq.n	d000c7b0 <_free_r+0x98>
d000c71e:	f851 3c04 	ldr.w	r3, [r1, #-4]
d000c722:	9001      	str	r0, [sp, #4]
d000c724:	2b00      	cmp	r3, #0
d000c726:	f1a1 0404 	sub.w	r4, r1, #4
d000c72a:	bfb8      	it	lt
d000c72c:	18e4      	addlt	r4, r4, r3
d000c72e:	f001 f821 	bl	d000d774 <__malloc_lock>
d000c732:	4a20      	ldr	r2, [pc, #128]	; (d000c7b4 <_free_r+0x9c>)
d000c734:	9801      	ldr	r0, [sp, #4]
d000c736:	6813      	ldr	r3, [r2, #0]
d000c738:	4615      	mov	r5, r2
d000c73a:	b933      	cbnz	r3, d000c74a <_free_r+0x32>
d000c73c:	6063      	str	r3, [r4, #4]
d000c73e:	6014      	str	r4, [r2, #0]
d000c740:	b003      	add	sp, #12
d000c742:	e8bd 4030 	ldmia.w	sp!, {r4, r5, lr}
d000c746:	f001 b81b 	b.w	d000d780 <__malloc_unlock>
d000c74a:	42a3      	cmp	r3, r4
d000c74c:	d90b      	bls.n	d000c766 <_free_r+0x4e>
d000c74e:	6821      	ldr	r1, [r4, #0]
d000c750:	1862      	adds	r2, r4, r1
d000c752:	4293      	cmp	r3, r2
d000c754:	bf04      	itt	eq
d000c756:	681a      	ldreq	r2, [r3, #0]
d000c758:	685b      	ldreq	r3, [r3, #4]
d000c75a:	6063      	str	r3, [r4, #4]
d000c75c:	bf04      	itt	eq
d000c75e:	1852      	addeq	r2, r2, r1
d000c760:	6022      	streq	r2, [r4, #0]
d000c762:	602c      	str	r4, [r5, #0]
d000c764:	e7ec      	b.n	d000c740 <_free_r+0x28>
d000c766:	461a      	mov	r2, r3
d000c768:	685b      	ldr	r3, [r3, #4]
d000c76a:	b10b      	cbz	r3, d000c770 <_free_r+0x58>
d000c76c:	42a3      	cmp	r3, r4
d000c76e:	d9fa      	bls.n	d000c766 <_free_r+0x4e>
d000c770:	6811      	ldr	r1, [r2, #0]
d000c772:	1855      	adds	r5, r2, r1
d000c774:	42a5      	cmp	r5, r4
d000c776:	d10b      	bne.n	d000c790 <_free_r+0x78>
d000c778:	6824      	ldr	r4, [r4, #0]
d000c77a:	4421      	add	r1, r4
d000c77c:	1854      	adds	r4, r2, r1
d000c77e:	42a3      	cmp	r3, r4
d000c780:	6011      	str	r1, [r2, #0]
d000c782:	d1dd      	bne.n	d000c740 <_free_r+0x28>
d000c784:	681c      	ldr	r4, [r3, #0]
d000c786:	685b      	ldr	r3, [r3, #4]
d000c788:	6053      	str	r3, [r2, #4]
d000c78a:	4421      	add	r1, r4
d000c78c:	6011      	str	r1, [r2, #0]
d000c78e:	e7d7      	b.n	d000c740 <_free_r+0x28>
d000c790:	d902      	bls.n	d000c798 <_free_r+0x80>
d000c792:	230c      	movs	r3, #12
d000c794:	6003      	str	r3, [r0, #0]
d000c796:	e7d3      	b.n	d000c740 <_free_r+0x28>
d000c798:	6825      	ldr	r5, [r4, #0]
d000c79a:	1961      	adds	r1, r4, r5
d000c79c:	428b      	cmp	r3, r1
d000c79e:	bf04      	itt	eq
d000c7a0:	6819      	ldreq	r1, [r3, #0]
d000c7a2:	685b      	ldreq	r3, [r3, #4]
d000c7a4:	6063      	str	r3, [r4, #4]
d000c7a6:	bf04      	itt	eq
d000c7a8:	1949      	addeq	r1, r1, r5
d000c7aa:	6021      	streq	r1, [r4, #0]
d000c7ac:	6054      	str	r4, [r2, #4]
d000c7ae:	e7c7      	b.n	d000c740 <_free_r+0x28>
d000c7b0:	b003      	add	sp, #12
d000c7b2:	bd30      	pop	{r4, r5, pc}
d000c7b4:	d000fb1c 	.word	0xd000fb1c

d000c7b8 <_malloc_r>:
d000c7b8:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d000c7ba:	1ccd      	adds	r5, r1, #3
d000c7bc:	f025 0503 	bic.w	r5, r5, #3
d000c7c0:	3508      	adds	r5, #8
d000c7c2:	2d0c      	cmp	r5, #12
d000c7c4:	bf38      	it	cc
d000c7c6:	250c      	movcc	r5, #12
d000c7c8:	2d00      	cmp	r5, #0
d000c7ca:	4606      	mov	r6, r0
d000c7cc:	db01      	blt.n	d000c7d2 <_malloc_r+0x1a>
d000c7ce:	42a9      	cmp	r1, r5
d000c7d0:	d903      	bls.n	d000c7da <_malloc_r+0x22>
d000c7d2:	230c      	movs	r3, #12
d000c7d4:	6033      	str	r3, [r6, #0]
d000c7d6:	2000      	movs	r0, #0
d000c7d8:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d000c7da:	f000 ffcb 	bl	d000d774 <__malloc_lock>
d000c7de:	4921      	ldr	r1, [pc, #132]	; (d000c864 <_malloc_r+0xac>)
d000c7e0:	680a      	ldr	r2, [r1, #0]
d000c7e2:	4614      	mov	r4, r2
d000c7e4:	b99c      	cbnz	r4, d000c80e <_malloc_r+0x56>
d000c7e6:	4f20      	ldr	r7, [pc, #128]	; (d000c868 <_malloc_r+0xb0>)
d000c7e8:	683b      	ldr	r3, [r7, #0]
d000c7ea:	b923      	cbnz	r3, d000c7f6 <_malloc_r+0x3e>
d000c7ec:	4621      	mov	r1, r4
d000c7ee:	4630      	mov	r0, r6
d000c7f0:	f7f4 fc84 	bl	d00010fc <_sbrk_r>
d000c7f4:	6038      	str	r0, [r7, #0]
d000c7f6:	4629      	mov	r1, r5
d000c7f8:	4630      	mov	r0, r6
d000c7fa:	f7f4 fc7f 	bl	d00010fc <_sbrk_r>
d000c7fe:	1c43      	adds	r3, r0, #1
d000c800:	d123      	bne.n	d000c84a <_malloc_r+0x92>
d000c802:	230c      	movs	r3, #12
d000c804:	6033      	str	r3, [r6, #0]
d000c806:	4630      	mov	r0, r6
d000c808:	f000 ffba 	bl	d000d780 <__malloc_unlock>
d000c80c:	e7e3      	b.n	d000c7d6 <_malloc_r+0x1e>
d000c80e:	6823      	ldr	r3, [r4, #0]
d000c810:	1b5b      	subs	r3, r3, r5
d000c812:	d417      	bmi.n	d000c844 <_malloc_r+0x8c>
d000c814:	2b0b      	cmp	r3, #11
d000c816:	d903      	bls.n	d000c820 <_malloc_r+0x68>
d000c818:	6023      	str	r3, [r4, #0]
d000c81a:	441c      	add	r4, r3
d000c81c:	6025      	str	r5, [r4, #0]
d000c81e:	e004      	b.n	d000c82a <_malloc_r+0x72>
d000c820:	6863      	ldr	r3, [r4, #4]
d000c822:	42a2      	cmp	r2, r4
d000c824:	bf0c      	ite	eq
d000c826:	600b      	streq	r3, [r1, #0]
d000c828:	6053      	strne	r3, [r2, #4]
d000c82a:	4630      	mov	r0, r6
d000c82c:	f000 ffa8 	bl	d000d780 <__malloc_unlock>
d000c830:	f104 000b 	add.w	r0, r4, #11
d000c834:	1d23      	adds	r3, r4, #4
d000c836:	f020 0007 	bic.w	r0, r0, #7
d000c83a:	1ac2      	subs	r2, r0, r3
d000c83c:	d0cc      	beq.n	d000c7d8 <_malloc_r+0x20>
d000c83e:	1a1b      	subs	r3, r3, r0
d000c840:	50a3      	str	r3, [r4, r2]
d000c842:	e7c9      	b.n	d000c7d8 <_malloc_r+0x20>
d000c844:	4622      	mov	r2, r4
d000c846:	6864      	ldr	r4, [r4, #4]
d000c848:	e7cc      	b.n	d000c7e4 <_malloc_r+0x2c>
d000c84a:	1cc4      	adds	r4, r0, #3
d000c84c:	f024 0403 	bic.w	r4, r4, #3
d000c850:	42a0      	cmp	r0, r4
d000c852:	d0e3      	beq.n	d000c81c <_malloc_r+0x64>
d000c854:	1a21      	subs	r1, r4, r0
d000c856:	4630      	mov	r0, r6
d000c858:	f7f4 fc50 	bl	d00010fc <_sbrk_r>
d000c85c:	3001      	adds	r0, #1
d000c85e:	d1dd      	bne.n	d000c81c <_malloc_r+0x64>
d000c860:	e7cf      	b.n	d000c802 <_malloc_r+0x4a>
d000c862:	bf00      	nop
d000c864:	d000fb1c 	.word	0xd000fb1c
d000c868:	d000fb20 	.word	0xd000fb20

d000c86c <__sfputc_r>:
d000c86c:	6893      	ldr	r3, [r2, #8]
d000c86e:	3b01      	subs	r3, #1
d000c870:	2b00      	cmp	r3, #0
d000c872:	b410      	push	{r4}
d000c874:	6093      	str	r3, [r2, #8]
d000c876:	da08      	bge.n	d000c88a <__sfputc_r+0x1e>
d000c878:	6994      	ldr	r4, [r2, #24]
d000c87a:	42a3      	cmp	r3, r4
d000c87c:	db01      	blt.n	d000c882 <__sfputc_r+0x16>
d000c87e:	290a      	cmp	r1, #10
d000c880:	d103      	bne.n	d000c88a <__sfputc_r+0x1e>
d000c882:	f85d 4b04 	ldr.w	r4, [sp], #4
d000c886:	f000 bc21 	b.w	d000d0cc <__swbuf_r>
d000c88a:	6813      	ldr	r3, [r2, #0]
d000c88c:	1c58      	adds	r0, r3, #1
d000c88e:	6010      	str	r0, [r2, #0]
d000c890:	7019      	strb	r1, [r3, #0]
d000c892:	4608      	mov	r0, r1
d000c894:	f85d 4b04 	ldr.w	r4, [sp], #4
d000c898:	4770      	bx	lr

d000c89a <__sfputs_r>:
d000c89a:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d000c89c:	4606      	mov	r6, r0
d000c89e:	460f      	mov	r7, r1
d000c8a0:	4614      	mov	r4, r2
d000c8a2:	18d5      	adds	r5, r2, r3
d000c8a4:	42ac      	cmp	r4, r5
d000c8a6:	d101      	bne.n	d000c8ac <__sfputs_r+0x12>
d000c8a8:	2000      	movs	r0, #0
d000c8aa:	e007      	b.n	d000c8bc <__sfputs_r+0x22>
d000c8ac:	f814 1b01 	ldrb.w	r1, [r4], #1
d000c8b0:	463a      	mov	r2, r7
d000c8b2:	4630      	mov	r0, r6
d000c8b4:	f7ff ffda 	bl	d000c86c <__sfputc_r>
d000c8b8:	1c43      	adds	r3, r0, #1
d000c8ba:	d1f3      	bne.n	d000c8a4 <__sfputs_r+0xa>
d000c8bc:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
	...

d000c8c0 <_vfiprintf_r>:
d000c8c0:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d000c8c4:	460d      	mov	r5, r1
d000c8c6:	b09d      	sub	sp, #116	; 0x74
d000c8c8:	4614      	mov	r4, r2
d000c8ca:	4698      	mov	r8, r3
d000c8cc:	4606      	mov	r6, r0
d000c8ce:	b118      	cbz	r0, d000c8d8 <_vfiprintf_r+0x18>
d000c8d0:	6983      	ldr	r3, [r0, #24]
d000c8d2:	b90b      	cbnz	r3, d000c8d8 <_vfiprintf_r+0x18>
d000c8d4:	f000 fddc 	bl	d000d490 <__sinit>
d000c8d8:	4b89      	ldr	r3, [pc, #548]	; (d000cb00 <_vfiprintf_r+0x240>)
d000c8da:	429d      	cmp	r5, r3
d000c8dc:	d11b      	bne.n	d000c916 <_vfiprintf_r+0x56>
d000c8de:	6875      	ldr	r5, [r6, #4]
d000c8e0:	6e6b      	ldr	r3, [r5, #100]	; 0x64
d000c8e2:	07d9      	lsls	r1, r3, #31
d000c8e4:	d405      	bmi.n	d000c8f2 <_vfiprintf_r+0x32>
d000c8e6:	89ab      	ldrh	r3, [r5, #12]
d000c8e8:	059a      	lsls	r2, r3, #22
d000c8ea:	d402      	bmi.n	d000c8f2 <_vfiprintf_r+0x32>
d000c8ec:	6da8      	ldr	r0, [r5, #88]	; 0x58
d000c8ee:	f000 fe6d 	bl	d000d5cc <__retarget_lock_acquire_recursive>
d000c8f2:	89ab      	ldrh	r3, [r5, #12]
d000c8f4:	071b      	lsls	r3, r3, #28
d000c8f6:	d501      	bpl.n	d000c8fc <_vfiprintf_r+0x3c>
d000c8f8:	692b      	ldr	r3, [r5, #16]
d000c8fa:	b9eb      	cbnz	r3, d000c938 <_vfiprintf_r+0x78>
d000c8fc:	4629      	mov	r1, r5
d000c8fe:	4630      	mov	r0, r6
d000c900:	f000 fc36 	bl	d000d170 <__swsetup_r>
d000c904:	b1c0      	cbz	r0, d000c938 <_vfiprintf_r+0x78>
d000c906:	6e6b      	ldr	r3, [r5, #100]	; 0x64
d000c908:	07dc      	lsls	r4, r3, #31
d000c90a:	d50e      	bpl.n	d000c92a <_vfiprintf_r+0x6a>
d000c90c:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d000c910:	b01d      	add	sp, #116	; 0x74
d000c912:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d000c916:	4b7b      	ldr	r3, [pc, #492]	; (d000cb04 <_vfiprintf_r+0x244>)
d000c918:	429d      	cmp	r5, r3
d000c91a:	d101      	bne.n	d000c920 <_vfiprintf_r+0x60>
d000c91c:	68b5      	ldr	r5, [r6, #8]
d000c91e:	e7df      	b.n	d000c8e0 <_vfiprintf_r+0x20>
d000c920:	4b79      	ldr	r3, [pc, #484]	; (d000cb08 <_vfiprintf_r+0x248>)
d000c922:	429d      	cmp	r5, r3
d000c924:	bf08      	it	eq
d000c926:	68f5      	ldreq	r5, [r6, #12]
d000c928:	e7da      	b.n	d000c8e0 <_vfiprintf_r+0x20>
d000c92a:	89ab      	ldrh	r3, [r5, #12]
d000c92c:	0598      	lsls	r0, r3, #22
d000c92e:	d4ed      	bmi.n	d000c90c <_vfiprintf_r+0x4c>
d000c930:	6da8      	ldr	r0, [r5, #88]	; 0x58
d000c932:	f000 fe4c 	bl	d000d5ce <__retarget_lock_release_recursive>
d000c936:	e7e9      	b.n	d000c90c <_vfiprintf_r+0x4c>
d000c938:	2300      	movs	r3, #0
d000c93a:	9309      	str	r3, [sp, #36]	; 0x24
d000c93c:	2320      	movs	r3, #32
d000c93e:	f88d 3029 	strb.w	r3, [sp, #41]	; 0x29
d000c942:	f8cd 800c 	str.w	r8, [sp, #12]
d000c946:	2330      	movs	r3, #48	; 0x30
d000c948:	f8df 81c0 	ldr.w	r8, [pc, #448]	; d000cb0c <_vfiprintf_r+0x24c>
d000c94c:	f88d 302a 	strb.w	r3, [sp, #42]	; 0x2a
d000c950:	f04f 0901 	mov.w	r9, #1
d000c954:	4623      	mov	r3, r4
d000c956:	469a      	mov	sl, r3
d000c958:	f813 2b01 	ldrb.w	r2, [r3], #1
d000c95c:	b10a      	cbz	r2, d000c962 <_vfiprintf_r+0xa2>
d000c95e:	2a25      	cmp	r2, #37	; 0x25
d000c960:	d1f9      	bne.n	d000c956 <_vfiprintf_r+0x96>
d000c962:	ebba 0b04 	subs.w	fp, sl, r4
d000c966:	d00b      	beq.n	d000c980 <_vfiprintf_r+0xc0>
d000c968:	465b      	mov	r3, fp
d000c96a:	4622      	mov	r2, r4
d000c96c:	4629      	mov	r1, r5
d000c96e:	4630      	mov	r0, r6
d000c970:	f7ff ff93 	bl	d000c89a <__sfputs_r>
d000c974:	3001      	adds	r0, #1
d000c976:	f000 80aa 	beq.w	d000cace <_vfiprintf_r+0x20e>
d000c97a:	9a09      	ldr	r2, [sp, #36]	; 0x24
d000c97c:	445a      	add	r2, fp
d000c97e:	9209      	str	r2, [sp, #36]	; 0x24
d000c980:	f89a 3000 	ldrb.w	r3, [sl]
d000c984:	2b00      	cmp	r3, #0
d000c986:	f000 80a2 	beq.w	d000cace <_vfiprintf_r+0x20e>
d000c98a:	2300      	movs	r3, #0
d000c98c:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
d000c990:	e9cd 2305 	strd	r2, r3, [sp, #20]
d000c994:	f10a 0a01 	add.w	sl, sl, #1
d000c998:	9304      	str	r3, [sp, #16]
d000c99a:	9307      	str	r3, [sp, #28]
d000c99c:	f88d 3053 	strb.w	r3, [sp, #83]	; 0x53
d000c9a0:	931a      	str	r3, [sp, #104]	; 0x68
d000c9a2:	4654      	mov	r4, sl
d000c9a4:	2205      	movs	r2, #5
d000c9a6:	f814 1b01 	ldrb.w	r1, [r4], #1
d000c9aa:	4858      	ldr	r0, [pc, #352]	; (d000cb0c <_vfiprintf_r+0x24c>)
d000c9ac:	f000 fe78 	bl	d000d6a0 <memchr>
d000c9b0:	9a04      	ldr	r2, [sp, #16]
d000c9b2:	b9d8      	cbnz	r0, d000c9ec <_vfiprintf_r+0x12c>
d000c9b4:	06d1      	lsls	r1, r2, #27
d000c9b6:	bf44      	itt	mi
d000c9b8:	2320      	movmi	r3, #32
d000c9ba:	f88d 3053 	strbmi.w	r3, [sp, #83]	; 0x53
d000c9be:	0713      	lsls	r3, r2, #28
d000c9c0:	bf44      	itt	mi
d000c9c2:	232b      	movmi	r3, #43	; 0x2b
d000c9c4:	f88d 3053 	strbmi.w	r3, [sp, #83]	; 0x53
d000c9c8:	f89a 3000 	ldrb.w	r3, [sl]
d000c9cc:	2b2a      	cmp	r3, #42	; 0x2a
d000c9ce:	d015      	beq.n	d000c9fc <_vfiprintf_r+0x13c>
d000c9d0:	9a07      	ldr	r2, [sp, #28]
d000c9d2:	4654      	mov	r4, sl
d000c9d4:	2000      	movs	r0, #0
d000c9d6:	f04f 0c0a 	mov.w	ip, #10
d000c9da:	4621      	mov	r1, r4
d000c9dc:	f811 3b01 	ldrb.w	r3, [r1], #1
d000c9e0:	3b30      	subs	r3, #48	; 0x30
d000c9e2:	2b09      	cmp	r3, #9
d000c9e4:	d94e      	bls.n	d000ca84 <_vfiprintf_r+0x1c4>
d000c9e6:	b1b0      	cbz	r0, d000ca16 <_vfiprintf_r+0x156>
d000c9e8:	9207      	str	r2, [sp, #28]
d000c9ea:	e014      	b.n	d000ca16 <_vfiprintf_r+0x156>
d000c9ec:	eba0 0308 	sub.w	r3, r0, r8
d000c9f0:	fa09 f303 	lsl.w	r3, r9, r3
d000c9f4:	4313      	orrs	r3, r2
d000c9f6:	9304      	str	r3, [sp, #16]
d000c9f8:	46a2      	mov	sl, r4
d000c9fa:	e7d2      	b.n	d000c9a2 <_vfiprintf_r+0xe2>
d000c9fc:	9b03      	ldr	r3, [sp, #12]
d000c9fe:	1d19      	adds	r1, r3, #4
d000ca00:	681b      	ldr	r3, [r3, #0]
d000ca02:	9103      	str	r1, [sp, #12]
d000ca04:	2b00      	cmp	r3, #0
d000ca06:	bfbb      	ittet	lt
d000ca08:	425b      	neglt	r3, r3
d000ca0a:	f042 0202 	orrlt.w	r2, r2, #2
d000ca0e:	9307      	strge	r3, [sp, #28]
d000ca10:	9307      	strlt	r3, [sp, #28]
d000ca12:	bfb8      	it	lt
d000ca14:	9204      	strlt	r2, [sp, #16]
d000ca16:	7823      	ldrb	r3, [r4, #0]
d000ca18:	2b2e      	cmp	r3, #46	; 0x2e
d000ca1a:	d10c      	bne.n	d000ca36 <_vfiprintf_r+0x176>
d000ca1c:	7863      	ldrb	r3, [r4, #1]
d000ca1e:	2b2a      	cmp	r3, #42	; 0x2a
d000ca20:	d135      	bne.n	d000ca8e <_vfiprintf_r+0x1ce>
d000ca22:	9b03      	ldr	r3, [sp, #12]
d000ca24:	1d1a      	adds	r2, r3, #4
d000ca26:	681b      	ldr	r3, [r3, #0]
d000ca28:	9203      	str	r2, [sp, #12]
d000ca2a:	2b00      	cmp	r3, #0
d000ca2c:	bfb8      	it	lt
d000ca2e:	f04f 33ff 	movlt.w	r3, #4294967295	; 0xffffffff
d000ca32:	3402      	adds	r4, #2
d000ca34:	9305      	str	r3, [sp, #20]
d000ca36:	f8df a0e4 	ldr.w	sl, [pc, #228]	; d000cb1c <_vfiprintf_r+0x25c>
d000ca3a:	7821      	ldrb	r1, [r4, #0]
d000ca3c:	2203      	movs	r2, #3
d000ca3e:	4650      	mov	r0, sl
d000ca40:	f000 fe2e 	bl	d000d6a0 <memchr>
d000ca44:	b140      	cbz	r0, d000ca58 <_vfiprintf_r+0x198>
d000ca46:	2340      	movs	r3, #64	; 0x40
d000ca48:	eba0 000a 	sub.w	r0, r0, sl
d000ca4c:	fa03 f000 	lsl.w	r0, r3, r0
d000ca50:	9b04      	ldr	r3, [sp, #16]
d000ca52:	4303      	orrs	r3, r0
d000ca54:	3401      	adds	r4, #1
d000ca56:	9304      	str	r3, [sp, #16]
d000ca58:	f814 1b01 	ldrb.w	r1, [r4], #1
d000ca5c:	482c      	ldr	r0, [pc, #176]	; (d000cb10 <_vfiprintf_r+0x250>)
d000ca5e:	f88d 1028 	strb.w	r1, [sp, #40]	; 0x28
d000ca62:	2206      	movs	r2, #6
d000ca64:	f000 fe1c 	bl	d000d6a0 <memchr>
d000ca68:	2800      	cmp	r0, #0
d000ca6a:	d03f      	beq.n	d000caec <_vfiprintf_r+0x22c>
d000ca6c:	4b29      	ldr	r3, [pc, #164]	; (d000cb14 <_vfiprintf_r+0x254>)
d000ca6e:	bb1b      	cbnz	r3, d000cab8 <_vfiprintf_r+0x1f8>
d000ca70:	9b03      	ldr	r3, [sp, #12]
d000ca72:	3307      	adds	r3, #7
d000ca74:	f023 0307 	bic.w	r3, r3, #7
d000ca78:	3308      	adds	r3, #8
d000ca7a:	9303      	str	r3, [sp, #12]
d000ca7c:	9b09      	ldr	r3, [sp, #36]	; 0x24
d000ca7e:	443b      	add	r3, r7
d000ca80:	9309      	str	r3, [sp, #36]	; 0x24
d000ca82:	e767      	b.n	d000c954 <_vfiprintf_r+0x94>
d000ca84:	fb0c 3202 	mla	r2, ip, r2, r3
d000ca88:	460c      	mov	r4, r1
d000ca8a:	2001      	movs	r0, #1
d000ca8c:	e7a5      	b.n	d000c9da <_vfiprintf_r+0x11a>
d000ca8e:	2300      	movs	r3, #0
d000ca90:	3401      	adds	r4, #1
d000ca92:	9305      	str	r3, [sp, #20]
d000ca94:	4619      	mov	r1, r3
d000ca96:	f04f 0c0a 	mov.w	ip, #10
d000ca9a:	4620      	mov	r0, r4
d000ca9c:	f810 2b01 	ldrb.w	r2, [r0], #1
d000caa0:	3a30      	subs	r2, #48	; 0x30
d000caa2:	2a09      	cmp	r2, #9
d000caa4:	d903      	bls.n	d000caae <_vfiprintf_r+0x1ee>
d000caa6:	2b00      	cmp	r3, #0
d000caa8:	d0c5      	beq.n	d000ca36 <_vfiprintf_r+0x176>
d000caaa:	9105      	str	r1, [sp, #20]
d000caac:	e7c3      	b.n	d000ca36 <_vfiprintf_r+0x176>
d000caae:	fb0c 2101 	mla	r1, ip, r1, r2
d000cab2:	4604      	mov	r4, r0
d000cab4:	2301      	movs	r3, #1
d000cab6:	e7f0      	b.n	d000ca9a <_vfiprintf_r+0x1da>
d000cab8:	ab03      	add	r3, sp, #12
d000caba:	9300      	str	r3, [sp, #0]
d000cabc:	462a      	mov	r2, r5
d000cabe:	4b16      	ldr	r3, [pc, #88]	; (d000cb18 <_vfiprintf_r+0x258>)
d000cac0:	a904      	add	r1, sp, #16
d000cac2:	4630      	mov	r0, r6
d000cac4:	f3af 8000 	nop.w
d000cac8:	4607      	mov	r7, r0
d000caca:	1c78      	adds	r0, r7, #1
d000cacc:	d1d6      	bne.n	d000ca7c <_vfiprintf_r+0x1bc>
d000cace:	6e6b      	ldr	r3, [r5, #100]	; 0x64
d000cad0:	07d9      	lsls	r1, r3, #31
d000cad2:	d405      	bmi.n	d000cae0 <_vfiprintf_r+0x220>
d000cad4:	89ab      	ldrh	r3, [r5, #12]
d000cad6:	059a      	lsls	r2, r3, #22
d000cad8:	d402      	bmi.n	d000cae0 <_vfiprintf_r+0x220>
d000cada:	6da8      	ldr	r0, [r5, #88]	; 0x58
d000cadc:	f000 fd77 	bl	d000d5ce <__retarget_lock_release_recursive>
d000cae0:	89ab      	ldrh	r3, [r5, #12]
d000cae2:	065b      	lsls	r3, r3, #25
d000cae4:	f53f af12 	bmi.w	d000c90c <_vfiprintf_r+0x4c>
d000cae8:	9809      	ldr	r0, [sp, #36]	; 0x24
d000caea:	e711      	b.n	d000c910 <_vfiprintf_r+0x50>
d000caec:	ab03      	add	r3, sp, #12
d000caee:	9300      	str	r3, [sp, #0]
d000caf0:	462a      	mov	r2, r5
d000caf2:	4b09      	ldr	r3, [pc, #36]	; (d000cb18 <_vfiprintf_r+0x258>)
d000caf4:	a904      	add	r1, sp, #16
d000caf6:	4630      	mov	r0, r6
d000caf8:	f000 f880 	bl	d000cbfc <_printf_i>
d000cafc:	e7e4      	b.n	d000cac8 <_vfiprintf_r+0x208>
d000cafe:	bf00      	nop
d000cb00:	d000e85c 	.word	0xd000e85c
d000cb04:	d000e87c 	.word	0xd000e87c
d000cb08:	d000e83c 	.word	0xd000e83c
d000cb0c:	d000e808 	.word	0xd000e808
d000cb10:	d000e812 	.word	0xd000e812
d000cb14:	00000000 	.word	0x00000000
d000cb18:	d000c89b 	.word	0xd000c89b
d000cb1c:	d000e80e 	.word	0xd000e80e

d000cb20 <_printf_common>:
d000cb20:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
d000cb24:	4616      	mov	r6, r2
d000cb26:	4699      	mov	r9, r3
d000cb28:	688a      	ldr	r2, [r1, #8]
d000cb2a:	690b      	ldr	r3, [r1, #16]
d000cb2c:	f8dd 8020 	ldr.w	r8, [sp, #32]
d000cb30:	4293      	cmp	r3, r2
d000cb32:	bfb8      	it	lt
d000cb34:	4613      	movlt	r3, r2
d000cb36:	6033      	str	r3, [r6, #0]
d000cb38:	f891 2043 	ldrb.w	r2, [r1, #67]	; 0x43
d000cb3c:	4607      	mov	r7, r0
d000cb3e:	460c      	mov	r4, r1
d000cb40:	b10a      	cbz	r2, d000cb46 <_printf_common+0x26>
d000cb42:	3301      	adds	r3, #1
d000cb44:	6033      	str	r3, [r6, #0]
d000cb46:	6823      	ldr	r3, [r4, #0]
d000cb48:	0699      	lsls	r1, r3, #26
d000cb4a:	bf42      	ittt	mi
d000cb4c:	6833      	ldrmi	r3, [r6, #0]
d000cb4e:	3302      	addmi	r3, #2
d000cb50:	6033      	strmi	r3, [r6, #0]
d000cb52:	6825      	ldr	r5, [r4, #0]
d000cb54:	f015 0506 	ands.w	r5, r5, #6
d000cb58:	d106      	bne.n	d000cb68 <_printf_common+0x48>
d000cb5a:	f104 0a19 	add.w	sl, r4, #25
d000cb5e:	68e3      	ldr	r3, [r4, #12]
d000cb60:	6832      	ldr	r2, [r6, #0]
d000cb62:	1a9b      	subs	r3, r3, r2
d000cb64:	42ab      	cmp	r3, r5
d000cb66:	dc26      	bgt.n	d000cbb6 <_printf_common+0x96>
d000cb68:	f894 2043 	ldrb.w	r2, [r4, #67]	; 0x43
d000cb6c:	1e13      	subs	r3, r2, #0
d000cb6e:	6822      	ldr	r2, [r4, #0]
d000cb70:	bf18      	it	ne
d000cb72:	2301      	movne	r3, #1
d000cb74:	0692      	lsls	r2, r2, #26
d000cb76:	d42b      	bmi.n	d000cbd0 <_printf_common+0xb0>
d000cb78:	f104 0243 	add.w	r2, r4, #67	; 0x43
d000cb7c:	4649      	mov	r1, r9
d000cb7e:	4638      	mov	r0, r7
d000cb80:	47c0      	blx	r8
d000cb82:	3001      	adds	r0, #1
d000cb84:	d01e      	beq.n	d000cbc4 <_printf_common+0xa4>
d000cb86:	6823      	ldr	r3, [r4, #0]
d000cb88:	68e5      	ldr	r5, [r4, #12]
d000cb8a:	6832      	ldr	r2, [r6, #0]
d000cb8c:	f003 0306 	and.w	r3, r3, #6
d000cb90:	2b04      	cmp	r3, #4
d000cb92:	bf08      	it	eq
d000cb94:	1aad      	subeq	r5, r5, r2
d000cb96:	68a3      	ldr	r3, [r4, #8]
d000cb98:	6922      	ldr	r2, [r4, #16]
d000cb9a:	bf0c      	ite	eq
d000cb9c:	ea25 75e5 	biceq.w	r5, r5, r5, asr #31
d000cba0:	2500      	movne	r5, #0
d000cba2:	4293      	cmp	r3, r2
d000cba4:	bfc4      	itt	gt
d000cba6:	1a9b      	subgt	r3, r3, r2
d000cba8:	18ed      	addgt	r5, r5, r3
d000cbaa:	2600      	movs	r6, #0
d000cbac:	341a      	adds	r4, #26
d000cbae:	42b5      	cmp	r5, r6
d000cbb0:	d11a      	bne.n	d000cbe8 <_printf_common+0xc8>
d000cbb2:	2000      	movs	r0, #0
d000cbb4:	e008      	b.n	d000cbc8 <_printf_common+0xa8>
d000cbb6:	2301      	movs	r3, #1
d000cbb8:	4652      	mov	r2, sl
d000cbba:	4649      	mov	r1, r9
d000cbbc:	4638      	mov	r0, r7
d000cbbe:	47c0      	blx	r8
d000cbc0:	3001      	adds	r0, #1
d000cbc2:	d103      	bne.n	d000cbcc <_printf_common+0xac>
d000cbc4:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d000cbc8:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
d000cbcc:	3501      	adds	r5, #1
d000cbce:	e7c6      	b.n	d000cb5e <_printf_common+0x3e>
d000cbd0:	18e1      	adds	r1, r4, r3
d000cbd2:	1c5a      	adds	r2, r3, #1
d000cbd4:	2030      	movs	r0, #48	; 0x30
d000cbd6:	f881 0043 	strb.w	r0, [r1, #67]	; 0x43
d000cbda:	4422      	add	r2, r4
d000cbdc:	f894 1045 	ldrb.w	r1, [r4, #69]	; 0x45
d000cbe0:	f882 1043 	strb.w	r1, [r2, #67]	; 0x43
d000cbe4:	3302      	adds	r3, #2
d000cbe6:	e7c7      	b.n	d000cb78 <_printf_common+0x58>
d000cbe8:	2301      	movs	r3, #1
d000cbea:	4622      	mov	r2, r4
d000cbec:	4649      	mov	r1, r9
d000cbee:	4638      	mov	r0, r7
d000cbf0:	47c0      	blx	r8
d000cbf2:	3001      	adds	r0, #1
d000cbf4:	d0e6      	beq.n	d000cbc4 <_printf_common+0xa4>
d000cbf6:	3601      	adds	r6, #1
d000cbf8:	e7d9      	b.n	d000cbae <_printf_common+0x8e>
	...

d000cbfc <_printf_i>:
d000cbfc:	e92d 47ff 	stmdb	sp!, {r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, lr}
d000cc00:	460c      	mov	r4, r1
d000cc02:	4691      	mov	r9, r2
d000cc04:	7e27      	ldrb	r7, [r4, #24]
d000cc06:	990c      	ldr	r1, [sp, #48]	; 0x30
d000cc08:	2f78      	cmp	r7, #120	; 0x78
d000cc0a:	4680      	mov	r8, r0
d000cc0c:	469a      	mov	sl, r3
d000cc0e:	f104 0243 	add.w	r2, r4, #67	; 0x43
d000cc12:	d807      	bhi.n	d000cc24 <_printf_i+0x28>
d000cc14:	2f62      	cmp	r7, #98	; 0x62
d000cc16:	d80a      	bhi.n	d000cc2e <_printf_i+0x32>
d000cc18:	2f00      	cmp	r7, #0
d000cc1a:	f000 80d8 	beq.w	d000cdce <_printf_i+0x1d2>
d000cc1e:	2f58      	cmp	r7, #88	; 0x58
d000cc20:	f000 80a3 	beq.w	d000cd6a <_printf_i+0x16e>
d000cc24:	f104 0642 	add.w	r6, r4, #66	; 0x42
d000cc28:	f884 7042 	strb.w	r7, [r4, #66]	; 0x42
d000cc2c:	e03a      	b.n	d000cca4 <_printf_i+0xa8>
d000cc2e:	f1a7 0363 	sub.w	r3, r7, #99	; 0x63
d000cc32:	2b15      	cmp	r3, #21
d000cc34:	d8f6      	bhi.n	d000cc24 <_printf_i+0x28>
d000cc36:	a001      	add	r0, pc, #4	; (adr r0, d000cc3c <_printf_i+0x40>)
d000cc38:	f850 f023 	ldr.w	pc, [r0, r3, lsl #2]
d000cc3c:	d000cc95 	.word	0xd000cc95
d000cc40:	d000cca9 	.word	0xd000cca9
d000cc44:	d000cc25 	.word	0xd000cc25
d000cc48:	d000cc25 	.word	0xd000cc25
d000cc4c:	d000cc25 	.word	0xd000cc25
d000cc50:	d000cc25 	.word	0xd000cc25
d000cc54:	d000cca9 	.word	0xd000cca9
d000cc58:	d000cc25 	.word	0xd000cc25
d000cc5c:	d000cc25 	.word	0xd000cc25
d000cc60:	d000cc25 	.word	0xd000cc25
d000cc64:	d000cc25 	.word	0xd000cc25
d000cc68:	d000cdb5 	.word	0xd000cdb5
d000cc6c:	d000ccd9 	.word	0xd000ccd9
d000cc70:	d000cd97 	.word	0xd000cd97
d000cc74:	d000cc25 	.word	0xd000cc25
d000cc78:	d000cc25 	.word	0xd000cc25
d000cc7c:	d000cdd7 	.word	0xd000cdd7
d000cc80:	d000cc25 	.word	0xd000cc25
d000cc84:	d000ccd9 	.word	0xd000ccd9
d000cc88:	d000cc25 	.word	0xd000cc25
d000cc8c:	d000cc25 	.word	0xd000cc25
d000cc90:	d000cd9f 	.word	0xd000cd9f
d000cc94:	680b      	ldr	r3, [r1, #0]
d000cc96:	1d1a      	adds	r2, r3, #4
d000cc98:	681b      	ldr	r3, [r3, #0]
d000cc9a:	600a      	str	r2, [r1, #0]
d000cc9c:	f104 0642 	add.w	r6, r4, #66	; 0x42
d000cca0:	f884 3042 	strb.w	r3, [r4, #66]	; 0x42
d000cca4:	2301      	movs	r3, #1
d000cca6:	e0a3      	b.n	d000cdf0 <_printf_i+0x1f4>
d000cca8:	6825      	ldr	r5, [r4, #0]
d000ccaa:	6808      	ldr	r0, [r1, #0]
d000ccac:	062e      	lsls	r6, r5, #24
d000ccae:	f100 0304 	add.w	r3, r0, #4
d000ccb2:	d50a      	bpl.n	d000ccca <_printf_i+0xce>
d000ccb4:	6805      	ldr	r5, [r0, #0]
d000ccb6:	600b      	str	r3, [r1, #0]
d000ccb8:	2d00      	cmp	r5, #0
d000ccba:	da03      	bge.n	d000ccc4 <_printf_i+0xc8>
d000ccbc:	232d      	movs	r3, #45	; 0x2d
d000ccbe:	426d      	negs	r5, r5
d000ccc0:	f884 3043 	strb.w	r3, [r4, #67]	; 0x43
d000ccc4:	485e      	ldr	r0, [pc, #376]	; (d000ce40 <_printf_i+0x244>)
d000ccc6:	230a      	movs	r3, #10
d000ccc8:	e019      	b.n	d000ccfe <_printf_i+0x102>
d000ccca:	f015 0f40 	tst.w	r5, #64	; 0x40
d000ccce:	6805      	ldr	r5, [r0, #0]
d000ccd0:	600b      	str	r3, [r1, #0]
d000ccd2:	bf18      	it	ne
d000ccd4:	b22d      	sxthne	r5, r5
d000ccd6:	e7ef      	b.n	d000ccb8 <_printf_i+0xbc>
d000ccd8:	680b      	ldr	r3, [r1, #0]
d000ccda:	6825      	ldr	r5, [r4, #0]
d000ccdc:	1d18      	adds	r0, r3, #4
d000ccde:	6008      	str	r0, [r1, #0]
d000cce0:	0628      	lsls	r0, r5, #24
d000cce2:	d501      	bpl.n	d000cce8 <_printf_i+0xec>
d000cce4:	681d      	ldr	r5, [r3, #0]
d000cce6:	e002      	b.n	d000ccee <_printf_i+0xf2>
d000cce8:	0669      	lsls	r1, r5, #25
d000ccea:	d5fb      	bpl.n	d000cce4 <_printf_i+0xe8>
d000ccec:	881d      	ldrh	r5, [r3, #0]
d000ccee:	4854      	ldr	r0, [pc, #336]	; (d000ce40 <_printf_i+0x244>)
d000ccf0:	2f6f      	cmp	r7, #111	; 0x6f
d000ccf2:	bf0c      	ite	eq
d000ccf4:	2308      	moveq	r3, #8
d000ccf6:	230a      	movne	r3, #10
d000ccf8:	2100      	movs	r1, #0
d000ccfa:	f884 1043 	strb.w	r1, [r4, #67]	; 0x43
d000ccfe:	6866      	ldr	r6, [r4, #4]
d000cd00:	60a6      	str	r6, [r4, #8]
d000cd02:	2e00      	cmp	r6, #0
d000cd04:	bfa2      	ittt	ge
d000cd06:	6821      	ldrge	r1, [r4, #0]
d000cd08:	f021 0104 	bicge.w	r1, r1, #4
d000cd0c:	6021      	strge	r1, [r4, #0]
d000cd0e:	b90d      	cbnz	r5, d000cd14 <_printf_i+0x118>
d000cd10:	2e00      	cmp	r6, #0
d000cd12:	d04d      	beq.n	d000cdb0 <_printf_i+0x1b4>
d000cd14:	4616      	mov	r6, r2
d000cd16:	fbb5 f1f3 	udiv	r1, r5, r3
d000cd1a:	fb03 5711 	mls	r7, r3, r1, r5
d000cd1e:	5dc7      	ldrb	r7, [r0, r7]
d000cd20:	f806 7d01 	strb.w	r7, [r6, #-1]!
d000cd24:	462f      	mov	r7, r5
d000cd26:	42bb      	cmp	r3, r7
d000cd28:	460d      	mov	r5, r1
d000cd2a:	d9f4      	bls.n	d000cd16 <_printf_i+0x11a>
d000cd2c:	2b08      	cmp	r3, #8
d000cd2e:	d10b      	bne.n	d000cd48 <_printf_i+0x14c>
d000cd30:	6823      	ldr	r3, [r4, #0]
d000cd32:	07df      	lsls	r7, r3, #31
d000cd34:	d508      	bpl.n	d000cd48 <_printf_i+0x14c>
d000cd36:	6923      	ldr	r3, [r4, #16]
d000cd38:	6861      	ldr	r1, [r4, #4]
d000cd3a:	4299      	cmp	r1, r3
d000cd3c:	bfde      	ittt	le
d000cd3e:	2330      	movle	r3, #48	; 0x30
d000cd40:	f806 3c01 	strble.w	r3, [r6, #-1]
d000cd44:	f106 36ff 	addle.w	r6, r6, #4294967295	; 0xffffffff
d000cd48:	1b92      	subs	r2, r2, r6
d000cd4a:	6122      	str	r2, [r4, #16]
d000cd4c:	f8cd a000 	str.w	sl, [sp]
d000cd50:	464b      	mov	r3, r9
d000cd52:	aa03      	add	r2, sp, #12
d000cd54:	4621      	mov	r1, r4
d000cd56:	4640      	mov	r0, r8
d000cd58:	f7ff fee2 	bl	d000cb20 <_printf_common>
d000cd5c:	3001      	adds	r0, #1
d000cd5e:	d14c      	bne.n	d000cdfa <_printf_i+0x1fe>
d000cd60:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d000cd64:	b004      	add	sp, #16
d000cd66:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
d000cd6a:	4835      	ldr	r0, [pc, #212]	; (d000ce40 <_printf_i+0x244>)
d000cd6c:	f884 7045 	strb.w	r7, [r4, #69]	; 0x45
d000cd70:	6823      	ldr	r3, [r4, #0]
d000cd72:	680e      	ldr	r6, [r1, #0]
d000cd74:	061f      	lsls	r7, r3, #24
d000cd76:	f856 5b04 	ldr.w	r5, [r6], #4
d000cd7a:	600e      	str	r6, [r1, #0]
d000cd7c:	d514      	bpl.n	d000cda8 <_printf_i+0x1ac>
d000cd7e:	07d9      	lsls	r1, r3, #31
d000cd80:	bf44      	itt	mi
d000cd82:	f043 0320 	orrmi.w	r3, r3, #32
d000cd86:	6023      	strmi	r3, [r4, #0]
d000cd88:	b91d      	cbnz	r5, d000cd92 <_printf_i+0x196>
d000cd8a:	6823      	ldr	r3, [r4, #0]
d000cd8c:	f023 0320 	bic.w	r3, r3, #32
d000cd90:	6023      	str	r3, [r4, #0]
d000cd92:	2310      	movs	r3, #16
d000cd94:	e7b0      	b.n	d000ccf8 <_printf_i+0xfc>
d000cd96:	6823      	ldr	r3, [r4, #0]
d000cd98:	f043 0320 	orr.w	r3, r3, #32
d000cd9c:	6023      	str	r3, [r4, #0]
d000cd9e:	2378      	movs	r3, #120	; 0x78
d000cda0:	4828      	ldr	r0, [pc, #160]	; (d000ce44 <_printf_i+0x248>)
d000cda2:	f884 3045 	strb.w	r3, [r4, #69]	; 0x45
d000cda6:	e7e3      	b.n	d000cd70 <_printf_i+0x174>
d000cda8:	065e      	lsls	r6, r3, #25
d000cdaa:	bf48      	it	mi
d000cdac:	b2ad      	uxthmi	r5, r5
d000cdae:	e7e6      	b.n	d000cd7e <_printf_i+0x182>
d000cdb0:	4616      	mov	r6, r2
d000cdb2:	e7bb      	b.n	d000cd2c <_printf_i+0x130>
d000cdb4:	680b      	ldr	r3, [r1, #0]
d000cdb6:	6826      	ldr	r6, [r4, #0]
d000cdb8:	6960      	ldr	r0, [r4, #20]
d000cdba:	1d1d      	adds	r5, r3, #4
d000cdbc:	600d      	str	r5, [r1, #0]
d000cdbe:	0635      	lsls	r5, r6, #24
d000cdc0:	681b      	ldr	r3, [r3, #0]
d000cdc2:	d501      	bpl.n	d000cdc8 <_printf_i+0x1cc>
d000cdc4:	6018      	str	r0, [r3, #0]
d000cdc6:	e002      	b.n	d000cdce <_printf_i+0x1d2>
d000cdc8:	0671      	lsls	r1, r6, #25
d000cdca:	d5fb      	bpl.n	d000cdc4 <_printf_i+0x1c8>
d000cdcc:	8018      	strh	r0, [r3, #0]
d000cdce:	2300      	movs	r3, #0
d000cdd0:	6123      	str	r3, [r4, #16]
d000cdd2:	4616      	mov	r6, r2
d000cdd4:	e7ba      	b.n	d000cd4c <_printf_i+0x150>
d000cdd6:	680b      	ldr	r3, [r1, #0]
d000cdd8:	1d1a      	adds	r2, r3, #4
d000cdda:	600a      	str	r2, [r1, #0]
d000cddc:	681e      	ldr	r6, [r3, #0]
d000cdde:	6862      	ldr	r2, [r4, #4]
d000cde0:	2100      	movs	r1, #0
d000cde2:	4630      	mov	r0, r6
d000cde4:	f000 fc5c 	bl	d000d6a0 <memchr>
d000cde8:	b108      	cbz	r0, d000cdee <_printf_i+0x1f2>
d000cdea:	1b80      	subs	r0, r0, r6
d000cdec:	6060      	str	r0, [r4, #4]
d000cdee:	6863      	ldr	r3, [r4, #4]
d000cdf0:	6123      	str	r3, [r4, #16]
d000cdf2:	2300      	movs	r3, #0
d000cdf4:	f884 3043 	strb.w	r3, [r4, #67]	; 0x43
d000cdf8:	e7a8      	b.n	d000cd4c <_printf_i+0x150>
d000cdfa:	6923      	ldr	r3, [r4, #16]
d000cdfc:	4632      	mov	r2, r6
d000cdfe:	4649      	mov	r1, r9
d000ce00:	4640      	mov	r0, r8
d000ce02:	47d0      	blx	sl
d000ce04:	3001      	adds	r0, #1
d000ce06:	d0ab      	beq.n	d000cd60 <_printf_i+0x164>
d000ce08:	6823      	ldr	r3, [r4, #0]
d000ce0a:	079b      	lsls	r3, r3, #30
d000ce0c:	d413      	bmi.n	d000ce36 <_printf_i+0x23a>
d000ce0e:	68e0      	ldr	r0, [r4, #12]
d000ce10:	9b03      	ldr	r3, [sp, #12]
d000ce12:	4298      	cmp	r0, r3
d000ce14:	bfb8      	it	lt
d000ce16:	4618      	movlt	r0, r3
d000ce18:	e7a4      	b.n	d000cd64 <_printf_i+0x168>
d000ce1a:	2301      	movs	r3, #1
d000ce1c:	4632      	mov	r2, r6
d000ce1e:	4649      	mov	r1, r9
d000ce20:	4640      	mov	r0, r8
d000ce22:	47d0      	blx	sl
d000ce24:	3001      	adds	r0, #1
d000ce26:	d09b      	beq.n	d000cd60 <_printf_i+0x164>
d000ce28:	3501      	adds	r5, #1
d000ce2a:	68e3      	ldr	r3, [r4, #12]
d000ce2c:	9903      	ldr	r1, [sp, #12]
d000ce2e:	1a5b      	subs	r3, r3, r1
d000ce30:	42ab      	cmp	r3, r5
d000ce32:	dcf2      	bgt.n	d000ce1a <_printf_i+0x21e>
d000ce34:	e7eb      	b.n	d000ce0e <_printf_i+0x212>
d000ce36:	2500      	movs	r5, #0
d000ce38:	f104 0619 	add.w	r6, r4, #25
d000ce3c:	e7f5      	b.n	d000ce2a <_printf_i+0x22e>
d000ce3e:	bf00      	nop
d000ce40:	d000e819 	.word	0xd000e819
d000ce44:	d000e82a 	.word	0xd000e82a

d000ce48 <iprintf>:
d000ce48:	b40f      	push	{r0, r1, r2, r3}
d000ce4a:	4b0a      	ldr	r3, [pc, #40]	; (d000ce74 <iprintf+0x2c>)
d000ce4c:	b513      	push	{r0, r1, r4, lr}
d000ce4e:	681c      	ldr	r4, [r3, #0]
d000ce50:	b124      	cbz	r4, d000ce5c <iprintf+0x14>
d000ce52:	69a3      	ldr	r3, [r4, #24]
d000ce54:	b913      	cbnz	r3, d000ce5c <iprintf+0x14>
d000ce56:	4620      	mov	r0, r4
d000ce58:	f000 fb1a 	bl	d000d490 <__sinit>
d000ce5c:	ab05      	add	r3, sp, #20
d000ce5e:	9a04      	ldr	r2, [sp, #16]
d000ce60:	68a1      	ldr	r1, [r4, #8]
d000ce62:	9301      	str	r3, [sp, #4]
d000ce64:	4620      	mov	r0, r4
d000ce66:	f7ff fd2b 	bl	d000c8c0 <_vfiprintf_r>
d000ce6a:	b002      	add	sp, #8
d000ce6c:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
d000ce70:	b004      	add	sp, #16
d000ce72:	4770      	bx	lr
d000ce74:	d000e8a4 	.word	0xd000e8a4

d000ce78 <setbuf>:
d000ce78:	2900      	cmp	r1, #0
d000ce7a:	f44f 6380 	mov.w	r3, #1024	; 0x400
d000ce7e:	bf0c      	ite	eq
d000ce80:	2202      	moveq	r2, #2
d000ce82:	2200      	movne	r2, #0
d000ce84:	f000 b800 	b.w	d000ce88 <setvbuf>

d000ce88 <setvbuf>:
d000ce88:	e92d 43f7 	stmdb	sp!, {r0, r1, r2, r4, r5, r6, r7, r8, r9, lr}
d000ce8c:	461d      	mov	r5, r3
d000ce8e:	4b5d      	ldr	r3, [pc, #372]	; (d000d004 <setvbuf+0x17c>)
d000ce90:	681f      	ldr	r7, [r3, #0]
d000ce92:	4604      	mov	r4, r0
d000ce94:	460e      	mov	r6, r1
d000ce96:	4690      	mov	r8, r2
d000ce98:	b127      	cbz	r7, d000cea4 <setvbuf+0x1c>
d000ce9a:	69bb      	ldr	r3, [r7, #24]
d000ce9c:	b913      	cbnz	r3, d000cea4 <setvbuf+0x1c>
d000ce9e:	4638      	mov	r0, r7
d000cea0:	f000 faf6 	bl	d000d490 <__sinit>
d000cea4:	4b58      	ldr	r3, [pc, #352]	; (d000d008 <setvbuf+0x180>)
d000cea6:	429c      	cmp	r4, r3
d000cea8:	d167      	bne.n	d000cf7a <setvbuf+0xf2>
d000ceaa:	687c      	ldr	r4, [r7, #4]
d000ceac:	f1b8 0f02 	cmp.w	r8, #2
d000ceb0:	d006      	beq.n	d000cec0 <setvbuf+0x38>
d000ceb2:	f1b8 0f01 	cmp.w	r8, #1
d000ceb6:	f200 809f 	bhi.w	d000cff8 <setvbuf+0x170>
d000ceba:	2d00      	cmp	r5, #0
d000cebc:	f2c0 809c 	blt.w	d000cff8 <setvbuf+0x170>
d000cec0:	6e63      	ldr	r3, [r4, #100]	; 0x64
d000cec2:	07db      	lsls	r3, r3, #31
d000cec4:	d405      	bmi.n	d000ced2 <setvbuf+0x4a>
d000cec6:	89a3      	ldrh	r3, [r4, #12]
d000cec8:	0598      	lsls	r0, r3, #22
d000ceca:	d402      	bmi.n	d000ced2 <setvbuf+0x4a>
d000cecc:	6da0      	ldr	r0, [r4, #88]	; 0x58
d000cece:	f000 fb7d 	bl	d000d5cc <__retarget_lock_acquire_recursive>
d000ced2:	4621      	mov	r1, r4
d000ced4:	4638      	mov	r0, r7
d000ced6:	f000 fa47 	bl	d000d368 <_fflush_r>
d000ceda:	6b61      	ldr	r1, [r4, #52]	; 0x34
d000cedc:	b141      	cbz	r1, d000cef0 <setvbuf+0x68>
d000cede:	f104 0344 	add.w	r3, r4, #68	; 0x44
d000cee2:	4299      	cmp	r1, r3
d000cee4:	d002      	beq.n	d000ceec <setvbuf+0x64>
d000cee6:	4638      	mov	r0, r7
d000cee8:	f7ff fc16 	bl	d000c718 <_free_r>
d000ceec:	2300      	movs	r3, #0
d000ceee:	6363      	str	r3, [r4, #52]	; 0x34
d000cef0:	2300      	movs	r3, #0
d000cef2:	61a3      	str	r3, [r4, #24]
d000cef4:	6063      	str	r3, [r4, #4]
d000cef6:	89a3      	ldrh	r3, [r4, #12]
d000cef8:	0619      	lsls	r1, r3, #24
d000cefa:	d503      	bpl.n	d000cf04 <setvbuf+0x7c>
d000cefc:	6921      	ldr	r1, [r4, #16]
d000cefe:	4638      	mov	r0, r7
d000cf00:	f7ff fc0a 	bl	d000c718 <_free_r>
d000cf04:	89a3      	ldrh	r3, [r4, #12]
d000cf06:	f423 634a 	bic.w	r3, r3, #3232	; 0xca0
d000cf0a:	f023 0303 	bic.w	r3, r3, #3
d000cf0e:	f1b8 0f02 	cmp.w	r8, #2
d000cf12:	81a3      	strh	r3, [r4, #12]
d000cf14:	d06c      	beq.n	d000cff0 <setvbuf+0x168>
d000cf16:	ab01      	add	r3, sp, #4
d000cf18:	466a      	mov	r2, sp
d000cf1a:	4621      	mov	r1, r4
d000cf1c:	4638      	mov	r0, r7
d000cf1e:	f000 fb57 	bl	d000d5d0 <__swhatbuf_r>
d000cf22:	89a3      	ldrh	r3, [r4, #12]
d000cf24:	4318      	orrs	r0, r3
d000cf26:	81a0      	strh	r0, [r4, #12]
d000cf28:	2d00      	cmp	r5, #0
d000cf2a:	d130      	bne.n	d000cf8e <setvbuf+0x106>
d000cf2c:	9d00      	ldr	r5, [sp, #0]
d000cf2e:	4628      	mov	r0, r5
d000cf30:	f7ff fbae 	bl	d000c690 <malloc>
d000cf34:	4606      	mov	r6, r0
d000cf36:	2800      	cmp	r0, #0
d000cf38:	d155      	bne.n	d000cfe6 <setvbuf+0x15e>
d000cf3a:	f8dd 9000 	ldr.w	r9, [sp]
d000cf3e:	45a9      	cmp	r9, r5
d000cf40:	d14a      	bne.n	d000cfd8 <setvbuf+0x150>
d000cf42:	f04f 35ff 	mov.w	r5, #4294967295	; 0xffffffff
d000cf46:	2200      	movs	r2, #0
d000cf48:	60a2      	str	r2, [r4, #8]
d000cf4a:	f104 0247 	add.w	r2, r4, #71	; 0x47
d000cf4e:	6022      	str	r2, [r4, #0]
d000cf50:	6122      	str	r2, [r4, #16]
d000cf52:	2201      	movs	r2, #1
d000cf54:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
d000cf58:	6162      	str	r2, [r4, #20]
d000cf5a:	6e62      	ldr	r2, [r4, #100]	; 0x64
d000cf5c:	f043 0302 	orr.w	r3, r3, #2
d000cf60:	07d2      	lsls	r2, r2, #31
d000cf62:	81a3      	strh	r3, [r4, #12]
d000cf64:	d405      	bmi.n	d000cf72 <setvbuf+0xea>
d000cf66:	f413 7f00 	tst.w	r3, #512	; 0x200
d000cf6a:	d102      	bne.n	d000cf72 <setvbuf+0xea>
d000cf6c:	6da0      	ldr	r0, [r4, #88]	; 0x58
d000cf6e:	f000 fb2e 	bl	d000d5ce <__retarget_lock_release_recursive>
d000cf72:	4628      	mov	r0, r5
d000cf74:	b003      	add	sp, #12
d000cf76:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
d000cf7a:	4b24      	ldr	r3, [pc, #144]	; (d000d00c <setvbuf+0x184>)
d000cf7c:	429c      	cmp	r4, r3
d000cf7e:	d101      	bne.n	d000cf84 <setvbuf+0xfc>
d000cf80:	68bc      	ldr	r4, [r7, #8]
d000cf82:	e793      	b.n	d000ceac <setvbuf+0x24>
d000cf84:	4b22      	ldr	r3, [pc, #136]	; (d000d010 <setvbuf+0x188>)
d000cf86:	429c      	cmp	r4, r3
d000cf88:	bf08      	it	eq
d000cf8a:	68fc      	ldreq	r4, [r7, #12]
d000cf8c:	e78e      	b.n	d000ceac <setvbuf+0x24>
d000cf8e:	2e00      	cmp	r6, #0
d000cf90:	d0cd      	beq.n	d000cf2e <setvbuf+0xa6>
d000cf92:	69bb      	ldr	r3, [r7, #24]
d000cf94:	b913      	cbnz	r3, d000cf9c <setvbuf+0x114>
d000cf96:	4638      	mov	r0, r7
d000cf98:	f000 fa7a 	bl	d000d490 <__sinit>
d000cf9c:	f1b8 0f01 	cmp.w	r8, #1
d000cfa0:	bf08      	it	eq
d000cfa2:	89a3      	ldrheq	r3, [r4, #12]
d000cfa4:	6026      	str	r6, [r4, #0]
d000cfa6:	bf04      	itt	eq
d000cfa8:	f043 0301 	orreq.w	r3, r3, #1
d000cfac:	81a3      	strheq	r3, [r4, #12]
d000cfae:	89a2      	ldrh	r2, [r4, #12]
d000cfb0:	f012 0308 	ands.w	r3, r2, #8
d000cfb4:	e9c4 6504 	strd	r6, r5, [r4, #16]
d000cfb8:	d01c      	beq.n	d000cff4 <setvbuf+0x16c>
d000cfba:	07d3      	lsls	r3, r2, #31
d000cfbc:	bf41      	itttt	mi
d000cfbe:	2300      	movmi	r3, #0
d000cfc0:	426d      	negmi	r5, r5
d000cfc2:	60a3      	strmi	r3, [r4, #8]
d000cfc4:	61a5      	strmi	r5, [r4, #24]
d000cfc6:	bf58      	it	pl
d000cfc8:	60a5      	strpl	r5, [r4, #8]
d000cfca:	6e65      	ldr	r5, [r4, #100]	; 0x64
d000cfcc:	f015 0501 	ands.w	r5, r5, #1
d000cfd0:	d115      	bne.n	d000cffe <setvbuf+0x176>
d000cfd2:	f412 7f00 	tst.w	r2, #512	; 0x200
d000cfd6:	e7c8      	b.n	d000cf6a <setvbuf+0xe2>
d000cfd8:	4648      	mov	r0, r9
d000cfda:	f7ff fb59 	bl	d000c690 <malloc>
d000cfde:	4606      	mov	r6, r0
d000cfe0:	2800      	cmp	r0, #0
d000cfe2:	d0ae      	beq.n	d000cf42 <setvbuf+0xba>
d000cfe4:	464d      	mov	r5, r9
d000cfe6:	89a3      	ldrh	r3, [r4, #12]
d000cfe8:	f043 0380 	orr.w	r3, r3, #128	; 0x80
d000cfec:	81a3      	strh	r3, [r4, #12]
d000cfee:	e7d0      	b.n	d000cf92 <setvbuf+0x10a>
d000cff0:	2500      	movs	r5, #0
d000cff2:	e7a8      	b.n	d000cf46 <setvbuf+0xbe>
d000cff4:	60a3      	str	r3, [r4, #8]
d000cff6:	e7e8      	b.n	d000cfca <setvbuf+0x142>
d000cff8:	f04f 35ff 	mov.w	r5, #4294967295	; 0xffffffff
d000cffc:	e7b9      	b.n	d000cf72 <setvbuf+0xea>
d000cffe:	2500      	movs	r5, #0
d000d000:	e7b7      	b.n	d000cf72 <setvbuf+0xea>
d000d002:	bf00      	nop
d000d004:	d000e8a4 	.word	0xd000e8a4
d000d008:	d000e85c 	.word	0xd000e85c
d000d00c:	d000e87c 	.word	0xd000e87c
d000d010:	d000e83c 	.word	0xd000e83c

d000d014 <sniprintf>:
d000d014:	b40c      	push	{r2, r3}
d000d016:	b530      	push	{r4, r5, lr}
d000d018:	4b17      	ldr	r3, [pc, #92]	; (d000d078 <sniprintf+0x64>)
d000d01a:	1e0c      	subs	r4, r1, #0
d000d01c:	681d      	ldr	r5, [r3, #0]
d000d01e:	b09d      	sub	sp, #116	; 0x74
d000d020:	da08      	bge.n	d000d034 <sniprintf+0x20>
d000d022:	238b      	movs	r3, #139	; 0x8b
d000d024:	602b      	str	r3, [r5, #0]
d000d026:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d000d02a:	b01d      	add	sp, #116	; 0x74
d000d02c:	e8bd 4030 	ldmia.w	sp!, {r4, r5, lr}
d000d030:	b002      	add	sp, #8
d000d032:	4770      	bx	lr
d000d034:	f44f 7302 	mov.w	r3, #520	; 0x208
d000d038:	f8ad 3014 	strh.w	r3, [sp, #20]
d000d03c:	bf14      	ite	ne
d000d03e:	f104 33ff 	addne.w	r3, r4, #4294967295	; 0xffffffff
d000d042:	4623      	moveq	r3, r4
d000d044:	9304      	str	r3, [sp, #16]
d000d046:	9307      	str	r3, [sp, #28]
d000d048:	f64f 73ff 	movw	r3, #65535	; 0xffff
d000d04c:	9002      	str	r0, [sp, #8]
d000d04e:	9006      	str	r0, [sp, #24]
d000d050:	f8ad 3016 	strh.w	r3, [sp, #22]
d000d054:	9a20      	ldr	r2, [sp, #128]	; 0x80
d000d056:	ab21      	add	r3, sp, #132	; 0x84
d000d058:	a902      	add	r1, sp, #8
d000d05a:	4628      	mov	r0, r5
d000d05c:	9301      	str	r3, [sp, #4]
d000d05e:	f000 fc17 	bl	d000d890 <_svfiprintf_r>
d000d062:	1c43      	adds	r3, r0, #1
d000d064:	bfbc      	itt	lt
d000d066:	238b      	movlt	r3, #139	; 0x8b
d000d068:	602b      	strlt	r3, [r5, #0]
d000d06a:	2c00      	cmp	r4, #0
d000d06c:	d0dd      	beq.n	d000d02a <sniprintf+0x16>
d000d06e:	9b02      	ldr	r3, [sp, #8]
d000d070:	2200      	movs	r2, #0
d000d072:	701a      	strb	r2, [r3, #0]
d000d074:	e7d9      	b.n	d000d02a <sniprintf+0x16>
d000d076:	bf00      	nop
d000d078:	d000e8a4 	.word	0xd000e8a4

d000d07c <strncpy>:
d000d07c:	b510      	push	{r4, lr}
d000d07e:	3901      	subs	r1, #1
d000d080:	4603      	mov	r3, r0
d000d082:	b132      	cbz	r2, d000d092 <strncpy+0x16>
d000d084:	f811 4f01 	ldrb.w	r4, [r1, #1]!
d000d088:	f803 4b01 	strb.w	r4, [r3], #1
d000d08c:	3a01      	subs	r2, #1
d000d08e:	2c00      	cmp	r4, #0
d000d090:	d1f7      	bne.n	d000d082 <strncpy+0x6>
d000d092:	441a      	add	r2, r3
d000d094:	2100      	movs	r1, #0
d000d096:	4293      	cmp	r3, r2
d000d098:	d100      	bne.n	d000d09c <strncpy+0x20>
d000d09a:	bd10      	pop	{r4, pc}
d000d09c:	f803 1b01 	strb.w	r1, [r3], #1
d000d0a0:	e7f9      	b.n	d000d096 <strncpy+0x1a>

d000d0a2 <strrchr>:
d000d0a2:	b538      	push	{r3, r4, r5, lr}
d000d0a4:	4603      	mov	r3, r0
d000d0a6:	460c      	mov	r4, r1
d000d0a8:	b969      	cbnz	r1, d000d0c6 <strrchr+0x24>
d000d0aa:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
d000d0ae:	f000 bd76 	b.w	d000db9e <strchr>
d000d0b2:	1c43      	adds	r3, r0, #1
d000d0b4:	4605      	mov	r5, r0
d000d0b6:	4621      	mov	r1, r4
d000d0b8:	4618      	mov	r0, r3
d000d0ba:	f000 fd70 	bl	d000db9e <strchr>
d000d0be:	2800      	cmp	r0, #0
d000d0c0:	d1f7      	bne.n	d000d0b2 <strrchr+0x10>
d000d0c2:	4628      	mov	r0, r5
d000d0c4:	bd38      	pop	{r3, r4, r5, pc}
d000d0c6:	2500      	movs	r5, #0
d000d0c8:	e7f5      	b.n	d000d0b6 <strrchr+0x14>
	...

d000d0cc <__swbuf_r>:
d000d0cc:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d000d0ce:	460e      	mov	r6, r1
d000d0d0:	4614      	mov	r4, r2
d000d0d2:	4605      	mov	r5, r0
d000d0d4:	b118      	cbz	r0, d000d0de <__swbuf_r+0x12>
d000d0d6:	6983      	ldr	r3, [r0, #24]
d000d0d8:	b90b      	cbnz	r3, d000d0de <__swbuf_r+0x12>
d000d0da:	f000 f9d9 	bl	d000d490 <__sinit>
d000d0de:	4b21      	ldr	r3, [pc, #132]	; (d000d164 <__swbuf_r+0x98>)
d000d0e0:	429c      	cmp	r4, r3
d000d0e2:	d12b      	bne.n	d000d13c <__swbuf_r+0x70>
d000d0e4:	686c      	ldr	r4, [r5, #4]
d000d0e6:	69a3      	ldr	r3, [r4, #24]
d000d0e8:	60a3      	str	r3, [r4, #8]
d000d0ea:	89a3      	ldrh	r3, [r4, #12]
d000d0ec:	071a      	lsls	r2, r3, #28
d000d0ee:	d52f      	bpl.n	d000d150 <__swbuf_r+0x84>
d000d0f0:	6923      	ldr	r3, [r4, #16]
d000d0f2:	b36b      	cbz	r3, d000d150 <__swbuf_r+0x84>
d000d0f4:	6923      	ldr	r3, [r4, #16]
d000d0f6:	6820      	ldr	r0, [r4, #0]
d000d0f8:	1ac0      	subs	r0, r0, r3
d000d0fa:	6963      	ldr	r3, [r4, #20]
d000d0fc:	b2f6      	uxtb	r6, r6
d000d0fe:	4283      	cmp	r3, r0
d000d100:	4637      	mov	r7, r6
d000d102:	dc04      	bgt.n	d000d10e <__swbuf_r+0x42>
d000d104:	4621      	mov	r1, r4
d000d106:	4628      	mov	r0, r5
d000d108:	f000 f92e 	bl	d000d368 <_fflush_r>
d000d10c:	bb30      	cbnz	r0, d000d15c <__swbuf_r+0x90>
d000d10e:	68a3      	ldr	r3, [r4, #8]
d000d110:	3b01      	subs	r3, #1
d000d112:	60a3      	str	r3, [r4, #8]
d000d114:	6823      	ldr	r3, [r4, #0]
d000d116:	1c5a      	adds	r2, r3, #1
d000d118:	6022      	str	r2, [r4, #0]
d000d11a:	701e      	strb	r6, [r3, #0]
d000d11c:	6963      	ldr	r3, [r4, #20]
d000d11e:	3001      	adds	r0, #1
d000d120:	4283      	cmp	r3, r0
d000d122:	d004      	beq.n	d000d12e <__swbuf_r+0x62>
d000d124:	89a3      	ldrh	r3, [r4, #12]
d000d126:	07db      	lsls	r3, r3, #31
d000d128:	d506      	bpl.n	d000d138 <__swbuf_r+0x6c>
d000d12a:	2e0a      	cmp	r6, #10
d000d12c:	d104      	bne.n	d000d138 <__swbuf_r+0x6c>
d000d12e:	4621      	mov	r1, r4
d000d130:	4628      	mov	r0, r5
d000d132:	f000 f919 	bl	d000d368 <_fflush_r>
d000d136:	b988      	cbnz	r0, d000d15c <__swbuf_r+0x90>
d000d138:	4638      	mov	r0, r7
d000d13a:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d000d13c:	4b0a      	ldr	r3, [pc, #40]	; (d000d168 <__swbuf_r+0x9c>)
d000d13e:	429c      	cmp	r4, r3
d000d140:	d101      	bne.n	d000d146 <__swbuf_r+0x7a>
d000d142:	68ac      	ldr	r4, [r5, #8]
d000d144:	e7cf      	b.n	d000d0e6 <__swbuf_r+0x1a>
d000d146:	4b09      	ldr	r3, [pc, #36]	; (d000d16c <__swbuf_r+0xa0>)
d000d148:	429c      	cmp	r4, r3
d000d14a:	bf08      	it	eq
d000d14c:	68ec      	ldreq	r4, [r5, #12]
d000d14e:	e7ca      	b.n	d000d0e6 <__swbuf_r+0x1a>
d000d150:	4621      	mov	r1, r4
d000d152:	4628      	mov	r0, r5
d000d154:	f000 f80c 	bl	d000d170 <__swsetup_r>
d000d158:	2800      	cmp	r0, #0
d000d15a:	d0cb      	beq.n	d000d0f4 <__swbuf_r+0x28>
d000d15c:	f04f 37ff 	mov.w	r7, #4294967295	; 0xffffffff
d000d160:	e7ea      	b.n	d000d138 <__swbuf_r+0x6c>
d000d162:	bf00      	nop
d000d164:	d000e85c 	.word	0xd000e85c
d000d168:	d000e87c 	.word	0xd000e87c
d000d16c:	d000e83c 	.word	0xd000e83c

d000d170 <__swsetup_r>:
d000d170:	4b32      	ldr	r3, [pc, #200]	; (d000d23c <__swsetup_r+0xcc>)
d000d172:	b570      	push	{r4, r5, r6, lr}
d000d174:	681d      	ldr	r5, [r3, #0]
d000d176:	4606      	mov	r6, r0
d000d178:	460c      	mov	r4, r1
d000d17a:	b125      	cbz	r5, d000d186 <__swsetup_r+0x16>
d000d17c:	69ab      	ldr	r3, [r5, #24]
d000d17e:	b913      	cbnz	r3, d000d186 <__swsetup_r+0x16>
d000d180:	4628      	mov	r0, r5
d000d182:	f000 f985 	bl	d000d490 <__sinit>
d000d186:	4b2e      	ldr	r3, [pc, #184]	; (d000d240 <__swsetup_r+0xd0>)
d000d188:	429c      	cmp	r4, r3
d000d18a:	d10f      	bne.n	d000d1ac <__swsetup_r+0x3c>
d000d18c:	686c      	ldr	r4, [r5, #4]
d000d18e:	89a3      	ldrh	r3, [r4, #12]
d000d190:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
d000d194:	0719      	lsls	r1, r3, #28
d000d196:	d42c      	bmi.n	d000d1f2 <__swsetup_r+0x82>
d000d198:	06dd      	lsls	r5, r3, #27
d000d19a:	d411      	bmi.n	d000d1c0 <__swsetup_r+0x50>
d000d19c:	2309      	movs	r3, #9
d000d19e:	6033      	str	r3, [r6, #0]
d000d1a0:	f042 0340 	orr.w	r3, r2, #64	; 0x40
d000d1a4:	81a3      	strh	r3, [r4, #12]
d000d1a6:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d000d1aa:	e03e      	b.n	d000d22a <__swsetup_r+0xba>
d000d1ac:	4b25      	ldr	r3, [pc, #148]	; (d000d244 <__swsetup_r+0xd4>)
d000d1ae:	429c      	cmp	r4, r3
d000d1b0:	d101      	bne.n	d000d1b6 <__swsetup_r+0x46>
d000d1b2:	68ac      	ldr	r4, [r5, #8]
d000d1b4:	e7eb      	b.n	d000d18e <__swsetup_r+0x1e>
d000d1b6:	4b24      	ldr	r3, [pc, #144]	; (d000d248 <__swsetup_r+0xd8>)
d000d1b8:	429c      	cmp	r4, r3
d000d1ba:	bf08      	it	eq
d000d1bc:	68ec      	ldreq	r4, [r5, #12]
d000d1be:	e7e6      	b.n	d000d18e <__swsetup_r+0x1e>
d000d1c0:	0758      	lsls	r0, r3, #29
d000d1c2:	d512      	bpl.n	d000d1ea <__swsetup_r+0x7a>
d000d1c4:	6b61      	ldr	r1, [r4, #52]	; 0x34
d000d1c6:	b141      	cbz	r1, d000d1da <__swsetup_r+0x6a>
d000d1c8:	f104 0344 	add.w	r3, r4, #68	; 0x44
d000d1cc:	4299      	cmp	r1, r3
d000d1ce:	d002      	beq.n	d000d1d6 <__swsetup_r+0x66>
d000d1d0:	4630      	mov	r0, r6
d000d1d2:	f7ff faa1 	bl	d000c718 <_free_r>
d000d1d6:	2300      	movs	r3, #0
d000d1d8:	6363      	str	r3, [r4, #52]	; 0x34
d000d1da:	89a3      	ldrh	r3, [r4, #12]
d000d1dc:	f023 0324 	bic.w	r3, r3, #36	; 0x24
d000d1e0:	81a3      	strh	r3, [r4, #12]
d000d1e2:	2300      	movs	r3, #0
d000d1e4:	6063      	str	r3, [r4, #4]
d000d1e6:	6923      	ldr	r3, [r4, #16]
d000d1e8:	6023      	str	r3, [r4, #0]
d000d1ea:	89a3      	ldrh	r3, [r4, #12]
d000d1ec:	f043 0308 	orr.w	r3, r3, #8
d000d1f0:	81a3      	strh	r3, [r4, #12]
d000d1f2:	6923      	ldr	r3, [r4, #16]
d000d1f4:	b94b      	cbnz	r3, d000d20a <__swsetup_r+0x9a>
d000d1f6:	89a3      	ldrh	r3, [r4, #12]
d000d1f8:	f403 7320 	and.w	r3, r3, #640	; 0x280
d000d1fc:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
d000d200:	d003      	beq.n	d000d20a <__swsetup_r+0x9a>
d000d202:	4621      	mov	r1, r4
d000d204:	4630      	mov	r0, r6
d000d206:	f000 fa07 	bl	d000d618 <__smakebuf_r>
d000d20a:	89a0      	ldrh	r0, [r4, #12]
d000d20c:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
d000d210:	f010 0301 	ands.w	r3, r0, #1
d000d214:	d00a      	beq.n	d000d22c <__swsetup_r+0xbc>
d000d216:	2300      	movs	r3, #0
d000d218:	60a3      	str	r3, [r4, #8]
d000d21a:	6963      	ldr	r3, [r4, #20]
d000d21c:	425b      	negs	r3, r3
d000d21e:	61a3      	str	r3, [r4, #24]
d000d220:	6923      	ldr	r3, [r4, #16]
d000d222:	b943      	cbnz	r3, d000d236 <__swsetup_r+0xc6>
d000d224:	f010 0080 	ands.w	r0, r0, #128	; 0x80
d000d228:	d1ba      	bne.n	d000d1a0 <__swsetup_r+0x30>
d000d22a:	bd70      	pop	{r4, r5, r6, pc}
d000d22c:	0781      	lsls	r1, r0, #30
d000d22e:	bf58      	it	pl
d000d230:	6963      	ldrpl	r3, [r4, #20]
d000d232:	60a3      	str	r3, [r4, #8]
d000d234:	e7f4      	b.n	d000d220 <__swsetup_r+0xb0>
d000d236:	2000      	movs	r0, #0
d000d238:	e7f7      	b.n	d000d22a <__swsetup_r+0xba>
d000d23a:	bf00      	nop
d000d23c:	d000e8a4 	.word	0xd000e8a4
d000d240:	d000e85c 	.word	0xd000e85c
d000d244:	d000e87c 	.word	0xd000e87c
d000d248:	d000e83c 	.word	0xd000e83c

d000d24c <abort>:
d000d24c:	b508      	push	{r3, lr}
d000d24e:	2006      	movs	r0, #6
d000d250:	f000 fc46 	bl	d000dae0 <raise>
d000d254:	2001      	movs	r0, #1
d000d256:	f7f3 ff73 	bl	d0001140 <_exit>
	...

d000d25c <__sflush_r>:
d000d25c:	898a      	ldrh	r2, [r1, #12]
d000d25e:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
d000d262:	4605      	mov	r5, r0
d000d264:	0710      	lsls	r0, r2, #28
d000d266:	460c      	mov	r4, r1
d000d268:	d458      	bmi.n	d000d31c <__sflush_r+0xc0>
d000d26a:	684b      	ldr	r3, [r1, #4]
d000d26c:	2b00      	cmp	r3, #0
d000d26e:	dc05      	bgt.n	d000d27c <__sflush_r+0x20>
d000d270:	6c0b      	ldr	r3, [r1, #64]	; 0x40
d000d272:	2b00      	cmp	r3, #0
d000d274:	dc02      	bgt.n	d000d27c <__sflush_r+0x20>
d000d276:	2000      	movs	r0, #0
d000d278:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
d000d27c:	6ae6      	ldr	r6, [r4, #44]	; 0x2c
d000d27e:	2e00      	cmp	r6, #0
d000d280:	d0f9      	beq.n	d000d276 <__sflush_r+0x1a>
d000d282:	2300      	movs	r3, #0
d000d284:	f412 5280 	ands.w	r2, r2, #4096	; 0x1000
d000d288:	682f      	ldr	r7, [r5, #0]
d000d28a:	602b      	str	r3, [r5, #0]
d000d28c:	d032      	beq.n	d000d2f4 <__sflush_r+0x98>
d000d28e:	6d60      	ldr	r0, [r4, #84]	; 0x54
d000d290:	89a3      	ldrh	r3, [r4, #12]
d000d292:	075a      	lsls	r2, r3, #29
d000d294:	d505      	bpl.n	d000d2a2 <__sflush_r+0x46>
d000d296:	6863      	ldr	r3, [r4, #4]
d000d298:	1ac0      	subs	r0, r0, r3
d000d29a:	6b63      	ldr	r3, [r4, #52]	; 0x34
d000d29c:	b10b      	cbz	r3, d000d2a2 <__sflush_r+0x46>
d000d29e:	6c23      	ldr	r3, [r4, #64]	; 0x40
d000d2a0:	1ac0      	subs	r0, r0, r3
d000d2a2:	2300      	movs	r3, #0
d000d2a4:	4602      	mov	r2, r0
d000d2a6:	6ae6      	ldr	r6, [r4, #44]	; 0x2c
d000d2a8:	6a21      	ldr	r1, [r4, #32]
d000d2aa:	4628      	mov	r0, r5
d000d2ac:	47b0      	blx	r6
d000d2ae:	1c43      	adds	r3, r0, #1
d000d2b0:	89a3      	ldrh	r3, [r4, #12]
d000d2b2:	d106      	bne.n	d000d2c2 <__sflush_r+0x66>
d000d2b4:	6829      	ldr	r1, [r5, #0]
d000d2b6:	291d      	cmp	r1, #29
d000d2b8:	d82c      	bhi.n	d000d314 <__sflush_r+0xb8>
d000d2ba:	4a2a      	ldr	r2, [pc, #168]	; (d000d364 <__sflush_r+0x108>)
d000d2bc:	40ca      	lsrs	r2, r1
d000d2be:	07d6      	lsls	r6, r2, #31
d000d2c0:	d528      	bpl.n	d000d314 <__sflush_r+0xb8>
d000d2c2:	2200      	movs	r2, #0
d000d2c4:	6062      	str	r2, [r4, #4]
d000d2c6:	04d9      	lsls	r1, r3, #19
d000d2c8:	6922      	ldr	r2, [r4, #16]
d000d2ca:	6022      	str	r2, [r4, #0]
d000d2cc:	d504      	bpl.n	d000d2d8 <__sflush_r+0x7c>
d000d2ce:	1c42      	adds	r2, r0, #1
d000d2d0:	d101      	bne.n	d000d2d6 <__sflush_r+0x7a>
d000d2d2:	682b      	ldr	r3, [r5, #0]
d000d2d4:	b903      	cbnz	r3, d000d2d8 <__sflush_r+0x7c>
d000d2d6:	6560      	str	r0, [r4, #84]	; 0x54
d000d2d8:	6b61      	ldr	r1, [r4, #52]	; 0x34
d000d2da:	602f      	str	r7, [r5, #0]
d000d2dc:	2900      	cmp	r1, #0
d000d2de:	d0ca      	beq.n	d000d276 <__sflush_r+0x1a>
d000d2e0:	f104 0344 	add.w	r3, r4, #68	; 0x44
d000d2e4:	4299      	cmp	r1, r3
d000d2e6:	d002      	beq.n	d000d2ee <__sflush_r+0x92>
d000d2e8:	4628      	mov	r0, r5
d000d2ea:	f7ff fa15 	bl	d000c718 <_free_r>
d000d2ee:	2000      	movs	r0, #0
d000d2f0:	6360      	str	r0, [r4, #52]	; 0x34
d000d2f2:	e7c1      	b.n	d000d278 <__sflush_r+0x1c>
d000d2f4:	6a21      	ldr	r1, [r4, #32]
d000d2f6:	2301      	movs	r3, #1
d000d2f8:	4628      	mov	r0, r5
d000d2fa:	47b0      	blx	r6
d000d2fc:	1c41      	adds	r1, r0, #1
d000d2fe:	d1c7      	bne.n	d000d290 <__sflush_r+0x34>
d000d300:	682b      	ldr	r3, [r5, #0]
d000d302:	2b00      	cmp	r3, #0
d000d304:	d0c4      	beq.n	d000d290 <__sflush_r+0x34>
d000d306:	2b1d      	cmp	r3, #29
d000d308:	d001      	beq.n	d000d30e <__sflush_r+0xb2>
d000d30a:	2b16      	cmp	r3, #22
d000d30c:	d101      	bne.n	d000d312 <__sflush_r+0xb6>
d000d30e:	602f      	str	r7, [r5, #0]
d000d310:	e7b1      	b.n	d000d276 <__sflush_r+0x1a>
d000d312:	89a3      	ldrh	r3, [r4, #12]
d000d314:	f043 0340 	orr.w	r3, r3, #64	; 0x40
d000d318:	81a3      	strh	r3, [r4, #12]
d000d31a:	e7ad      	b.n	d000d278 <__sflush_r+0x1c>
d000d31c:	690f      	ldr	r7, [r1, #16]
d000d31e:	2f00      	cmp	r7, #0
d000d320:	d0a9      	beq.n	d000d276 <__sflush_r+0x1a>
d000d322:	0793      	lsls	r3, r2, #30
d000d324:	680e      	ldr	r6, [r1, #0]
d000d326:	bf08      	it	eq
d000d328:	694b      	ldreq	r3, [r1, #20]
d000d32a:	600f      	str	r7, [r1, #0]
d000d32c:	bf18      	it	ne
d000d32e:	2300      	movne	r3, #0
d000d330:	eba6 0807 	sub.w	r8, r6, r7
d000d334:	608b      	str	r3, [r1, #8]
d000d336:	f1b8 0f00 	cmp.w	r8, #0
d000d33a:	dd9c      	ble.n	d000d276 <__sflush_r+0x1a>
d000d33c:	6a21      	ldr	r1, [r4, #32]
d000d33e:	6aa6      	ldr	r6, [r4, #40]	; 0x28
d000d340:	4643      	mov	r3, r8
d000d342:	463a      	mov	r2, r7
d000d344:	4628      	mov	r0, r5
d000d346:	47b0      	blx	r6
d000d348:	2800      	cmp	r0, #0
d000d34a:	dc06      	bgt.n	d000d35a <__sflush_r+0xfe>
d000d34c:	89a3      	ldrh	r3, [r4, #12]
d000d34e:	f043 0340 	orr.w	r3, r3, #64	; 0x40
d000d352:	81a3      	strh	r3, [r4, #12]
d000d354:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d000d358:	e78e      	b.n	d000d278 <__sflush_r+0x1c>
d000d35a:	4407      	add	r7, r0
d000d35c:	eba8 0800 	sub.w	r8, r8, r0
d000d360:	e7e9      	b.n	d000d336 <__sflush_r+0xda>
d000d362:	bf00      	nop
d000d364:	20400001 	.word	0x20400001

d000d368 <_fflush_r>:
d000d368:	b538      	push	{r3, r4, r5, lr}
d000d36a:	690b      	ldr	r3, [r1, #16]
d000d36c:	4605      	mov	r5, r0
d000d36e:	460c      	mov	r4, r1
d000d370:	b913      	cbnz	r3, d000d378 <_fflush_r+0x10>
d000d372:	2500      	movs	r5, #0
d000d374:	4628      	mov	r0, r5
d000d376:	bd38      	pop	{r3, r4, r5, pc}
d000d378:	b118      	cbz	r0, d000d382 <_fflush_r+0x1a>
d000d37a:	6983      	ldr	r3, [r0, #24]
d000d37c:	b90b      	cbnz	r3, d000d382 <_fflush_r+0x1a>
d000d37e:	f000 f887 	bl	d000d490 <__sinit>
d000d382:	4b14      	ldr	r3, [pc, #80]	; (d000d3d4 <_fflush_r+0x6c>)
d000d384:	429c      	cmp	r4, r3
d000d386:	d11b      	bne.n	d000d3c0 <_fflush_r+0x58>
d000d388:	686c      	ldr	r4, [r5, #4]
d000d38a:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
d000d38e:	2b00      	cmp	r3, #0
d000d390:	d0ef      	beq.n	d000d372 <_fflush_r+0xa>
d000d392:	6e62      	ldr	r2, [r4, #100]	; 0x64
d000d394:	07d0      	lsls	r0, r2, #31
d000d396:	d404      	bmi.n	d000d3a2 <_fflush_r+0x3a>
d000d398:	0599      	lsls	r1, r3, #22
d000d39a:	d402      	bmi.n	d000d3a2 <_fflush_r+0x3a>
d000d39c:	6da0      	ldr	r0, [r4, #88]	; 0x58
d000d39e:	f000 f915 	bl	d000d5cc <__retarget_lock_acquire_recursive>
d000d3a2:	4628      	mov	r0, r5
d000d3a4:	4621      	mov	r1, r4
d000d3a6:	f7ff ff59 	bl	d000d25c <__sflush_r>
d000d3aa:	6e63      	ldr	r3, [r4, #100]	; 0x64
d000d3ac:	07da      	lsls	r2, r3, #31
d000d3ae:	4605      	mov	r5, r0
d000d3b0:	d4e0      	bmi.n	d000d374 <_fflush_r+0xc>
d000d3b2:	89a3      	ldrh	r3, [r4, #12]
d000d3b4:	059b      	lsls	r3, r3, #22
d000d3b6:	d4dd      	bmi.n	d000d374 <_fflush_r+0xc>
d000d3b8:	6da0      	ldr	r0, [r4, #88]	; 0x58
d000d3ba:	f000 f908 	bl	d000d5ce <__retarget_lock_release_recursive>
d000d3be:	e7d9      	b.n	d000d374 <_fflush_r+0xc>
d000d3c0:	4b05      	ldr	r3, [pc, #20]	; (d000d3d8 <_fflush_r+0x70>)
d000d3c2:	429c      	cmp	r4, r3
d000d3c4:	d101      	bne.n	d000d3ca <_fflush_r+0x62>
d000d3c6:	68ac      	ldr	r4, [r5, #8]
d000d3c8:	e7df      	b.n	d000d38a <_fflush_r+0x22>
d000d3ca:	4b04      	ldr	r3, [pc, #16]	; (d000d3dc <_fflush_r+0x74>)
d000d3cc:	429c      	cmp	r4, r3
d000d3ce:	bf08      	it	eq
d000d3d0:	68ec      	ldreq	r4, [r5, #12]
d000d3d2:	e7da      	b.n	d000d38a <_fflush_r+0x22>
d000d3d4:	d000e85c 	.word	0xd000e85c
d000d3d8:	d000e87c 	.word	0xd000e87c
d000d3dc:	d000e83c 	.word	0xd000e83c

d000d3e0 <std>:
d000d3e0:	2300      	movs	r3, #0
d000d3e2:	b510      	push	{r4, lr}
d000d3e4:	4604      	mov	r4, r0
d000d3e6:	e9c0 3300 	strd	r3, r3, [r0]
d000d3ea:	e9c0 3304 	strd	r3, r3, [r0, #16]
d000d3ee:	6083      	str	r3, [r0, #8]
d000d3f0:	8181      	strh	r1, [r0, #12]
d000d3f2:	6643      	str	r3, [r0, #100]	; 0x64
d000d3f4:	81c2      	strh	r2, [r0, #14]
d000d3f6:	6183      	str	r3, [r0, #24]
d000d3f8:	4619      	mov	r1, r3
d000d3fa:	2208      	movs	r2, #8
d000d3fc:	305c      	adds	r0, #92	; 0x5c
d000d3fe:	f7ff f973 	bl	d000c6e8 <memset>
d000d402:	4b05      	ldr	r3, [pc, #20]	; (d000d418 <std+0x38>)
d000d404:	6263      	str	r3, [r4, #36]	; 0x24
d000d406:	4b05      	ldr	r3, [pc, #20]	; (d000d41c <std+0x3c>)
d000d408:	62a3      	str	r3, [r4, #40]	; 0x28
d000d40a:	4b05      	ldr	r3, [pc, #20]	; (d000d420 <std+0x40>)
d000d40c:	62e3      	str	r3, [r4, #44]	; 0x2c
d000d40e:	4b05      	ldr	r3, [pc, #20]	; (d000d424 <std+0x44>)
d000d410:	6224      	str	r4, [r4, #32]
d000d412:	6323      	str	r3, [r4, #48]	; 0x30
d000d414:	bd10      	pop	{r4, pc}
d000d416:	bf00      	nop
d000d418:	d000db19 	.word	0xd000db19
d000d41c:	d000db3b 	.word	0xd000db3b
d000d420:	d000db73 	.word	0xd000db73
d000d424:	d000db97 	.word	0xd000db97

d000d428 <_cleanup_r>:
d000d428:	4901      	ldr	r1, [pc, #4]	; (d000d430 <_cleanup_r+0x8>)
d000d42a:	f000 b8af 	b.w	d000d58c <_fwalk_reent>
d000d42e:	bf00      	nop
d000d430:	d000d369 	.word	0xd000d369

d000d434 <__sfmoreglue>:
d000d434:	b570      	push	{r4, r5, r6, lr}
d000d436:	1e4a      	subs	r2, r1, #1
d000d438:	2568      	movs	r5, #104	; 0x68
d000d43a:	4355      	muls	r5, r2
d000d43c:	460e      	mov	r6, r1
d000d43e:	f105 0174 	add.w	r1, r5, #116	; 0x74
d000d442:	f7ff f9b9 	bl	d000c7b8 <_malloc_r>
d000d446:	4604      	mov	r4, r0
d000d448:	b140      	cbz	r0, d000d45c <__sfmoreglue+0x28>
d000d44a:	2100      	movs	r1, #0
d000d44c:	e9c0 1600 	strd	r1, r6, [r0]
d000d450:	300c      	adds	r0, #12
d000d452:	60a0      	str	r0, [r4, #8]
d000d454:	f105 0268 	add.w	r2, r5, #104	; 0x68
d000d458:	f7ff f946 	bl	d000c6e8 <memset>
d000d45c:	4620      	mov	r0, r4
d000d45e:	bd70      	pop	{r4, r5, r6, pc}

d000d460 <__sfp_lock_acquire>:
d000d460:	4801      	ldr	r0, [pc, #4]	; (d000d468 <__sfp_lock_acquire+0x8>)
d000d462:	f000 b8b3 	b.w	d000d5cc <__retarget_lock_acquire_recursive>
d000d466:	bf00      	nop
d000d468:	d000fbac 	.word	0xd000fbac

d000d46c <__sfp_lock_release>:
d000d46c:	4801      	ldr	r0, [pc, #4]	; (d000d474 <__sfp_lock_release+0x8>)
d000d46e:	f000 b8ae 	b.w	d000d5ce <__retarget_lock_release_recursive>
d000d472:	bf00      	nop
d000d474:	d000fbac 	.word	0xd000fbac

d000d478 <__sinit_lock_acquire>:
d000d478:	4801      	ldr	r0, [pc, #4]	; (d000d480 <__sinit_lock_acquire+0x8>)
d000d47a:	f000 b8a7 	b.w	d000d5cc <__retarget_lock_acquire_recursive>
d000d47e:	bf00      	nop
d000d480:	d000fba7 	.word	0xd000fba7

d000d484 <__sinit_lock_release>:
d000d484:	4801      	ldr	r0, [pc, #4]	; (d000d48c <__sinit_lock_release+0x8>)
d000d486:	f000 b8a2 	b.w	d000d5ce <__retarget_lock_release_recursive>
d000d48a:	bf00      	nop
d000d48c:	d000fba7 	.word	0xd000fba7

d000d490 <__sinit>:
d000d490:	b510      	push	{r4, lr}
d000d492:	4604      	mov	r4, r0
d000d494:	f7ff fff0 	bl	d000d478 <__sinit_lock_acquire>
d000d498:	69a3      	ldr	r3, [r4, #24]
d000d49a:	b11b      	cbz	r3, d000d4a4 <__sinit+0x14>
d000d49c:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
d000d4a0:	f7ff bff0 	b.w	d000d484 <__sinit_lock_release>
d000d4a4:	e9c4 3312 	strd	r3, r3, [r4, #72]	; 0x48
d000d4a8:	6523      	str	r3, [r4, #80]	; 0x50
d000d4aa:	4b13      	ldr	r3, [pc, #76]	; (d000d4f8 <__sinit+0x68>)
d000d4ac:	4a13      	ldr	r2, [pc, #76]	; (d000d4fc <__sinit+0x6c>)
d000d4ae:	681b      	ldr	r3, [r3, #0]
d000d4b0:	62a2      	str	r2, [r4, #40]	; 0x28
d000d4b2:	42a3      	cmp	r3, r4
d000d4b4:	bf04      	itt	eq
d000d4b6:	2301      	moveq	r3, #1
d000d4b8:	61a3      	streq	r3, [r4, #24]
d000d4ba:	4620      	mov	r0, r4
d000d4bc:	f000 f820 	bl	d000d500 <__sfp>
d000d4c0:	6060      	str	r0, [r4, #4]
d000d4c2:	4620      	mov	r0, r4
d000d4c4:	f000 f81c 	bl	d000d500 <__sfp>
d000d4c8:	60a0      	str	r0, [r4, #8]
d000d4ca:	4620      	mov	r0, r4
d000d4cc:	f000 f818 	bl	d000d500 <__sfp>
d000d4d0:	2200      	movs	r2, #0
d000d4d2:	60e0      	str	r0, [r4, #12]
d000d4d4:	2104      	movs	r1, #4
d000d4d6:	6860      	ldr	r0, [r4, #4]
d000d4d8:	f7ff ff82 	bl	d000d3e0 <std>
d000d4dc:	68a0      	ldr	r0, [r4, #8]
d000d4de:	2201      	movs	r2, #1
d000d4e0:	2109      	movs	r1, #9
d000d4e2:	f7ff ff7d 	bl	d000d3e0 <std>
d000d4e6:	68e0      	ldr	r0, [r4, #12]
d000d4e8:	2202      	movs	r2, #2
d000d4ea:	2112      	movs	r1, #18
d000d4ec:	f7ff ff78 	bl	d000d3e0 <std>
d000d4f0:	2301      	movs	r3, #1
d000d4f2:	61a3      	str	r3, [r4, #24]
d000d4f4:	e7d2      	b.n	d000d49c <__sinit+0xc>
d000d4f6:	bf00      	nop
d000d4f8:	d000e804 	.word	0xd000e804
d000d4fc:	d000d429 	.word	0xd000d429

d000d500 <__sfp>:
d000d500:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d000d502:	4607      	mov	r7, r0
d000d504:	f7ff ffac 	bl	d000d460 <__sfp_lock_acquire>
d000d508:	4b1e      	ldr	r3, [pc, #120]	; (d000d584 <__sfp+0x84>)
d000d50a:	681e      	ldr	r6, [r3, #0]
d000d50c:	69b3      	ldr	r3, [r6, #24]
d000d50e:	b913      	cbnz	r3, d000d516 <__sfp+0x16>
d000d510:	4630      	mov	r0, r6
d000d512:	f7ff ffbd 	bl	d000d490 <__sinit>
d000d516:	3648      	adds	r6, #72	; 0x48
d000d518:	e9d6 3401 	ldrd	r3, r4, [r6, #4]
d000d51c:	3b01      	subs	r3, #1
d000d51e:	d503      	bpl.n	d000d528 <__sfp+0x28>
d000d520:	6833      	ldr	r3, [r6, #0]
d000d522:	b30b      	cbz	r3, d000d568 <__sfp+0x68>
d000d524:	6836      	ldr	r6, [r6, #0]
d000d526:	e7f7      	b.n	d000d518 <__sfp+0x18>
d000d528:	f9b4 500c 	ldrsh.w	r5, [r4, #12]
d000d52c:	b9d5      	cbnz	r5, d000d564 <__sfp+0x64>
d000d52e:	4b16      	ldr	r3, [pc, #88]	; (d000d588 <__sfp+0x88>)
d000d530:	60e3      	str	r3, [r4, #12]
d000d532:	f104 0058 	add.w	r0, r4, #88	; 0x58
d000d536:	6665      	str	r5, [r4, #100]	; 0x64
d000d538:	f000 f847 	bl	d000d5ca <__retarget_lock_init_recursive>
d000d53c:	f7ff ff96 	bl	d000d46c <__sfp_lock_release>
d000d540:	e9c4 5501 	strd	r5, r5, [r4, #4]
d000d544:	e9c4 5504 	strd	r5, r5, [r4, #16]
d000d548:	6025      	str	r5, [r4, #0]
d000d54a:	61a5      	str	r5, [r4, #24]
d000d54c:	2208      	movs	r2, #8
d000d54e:	4629      	mov	r1, r5
d000d550:	f104 005c 	add.w	r0, r4, #92	; 0x5c
d000d554:	f7ff f8c8 	bl	d000c6e8 <memset>
d000d558:	e9c4 550d 	strd	r5, r5, [r4, #52]	; 0x34
d000d55c:	e9c4 5512 	strd	r5, r5, [r4, #72]	; 0x48
d000d560:	4620      	mov	r0, r4
d000d562:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d000d564:	3468      	adds	r4, #104	; 0x68
d000d566:	e7d9      	b.n	d000d51c <__sfp+0x1c>
d000d568:	2104      	movs	r1, #4
d000d56a:	4638      	mov	r0, r7
d000d56c:	f7ff ff62 	bl	d000d434 <__sfmoreglue>
d000d570:	4604      	mov	r4, r0
d000d572:	6030      	str	r0, [r6, #0]
d000d574:	2800      	cmp	r0, #0
d000d576:	d1d5      	bne.n	d000d524 <__sfp+0x24>
d000d578:	f7ff ff78 	bl	d000d46c <__sfp_lock_release>
d000d57c:	230c      	movs	r3, #12
d000d57e:	603b      	str	r3, [r7, #0]
d000d580:	e7ee      	b.n	d000d560 <__sfp+0x60>
d000d582:	bf00      	nop
d000d584:	d000e804 	.word	0xd000e804
d000d588:	ffff0001 	.word	0xffff0001

d000d58c <_fwalk_reent>:
d000d58c:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
d000d590:	4606      	mov	r6, r0
d000d592:	4688      	mov	r8, r1
d000d594:	f100 0448 	add.w	r4, r0, #72	; 0x48
d000d598:	2700      	movs	r7, #0
d000d59a:	e9d4 9501 	ldrd	r9, r5, [r4, #4]
d000d59e:	f1b9 0901 	subs.w	r9, r9, #1
d000d5a2:	d505      	bpl.n	d000d5b0 <_fwalk_reent+0x24>
d000d5a4:	6824      	ldr	r4, [r4, #0]
d000d5a6:	2c00      	cmp	r4, #0
d000d5a8:	d1f7      	bne.n	d000d59a <_fwalk_reent+0xe>
d000d5aa:	4638      	mov	r0, r7
d000d5ac:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
d000d5b0:	89ab      	ldrh	r3, [r5, #12]
d000d5b2:	2b01      	cmp	r3, #1
d000d5b4:	d907      	bls.n	d000d5c6 <_fwalk_reent+0x3a>
d000d5b6:	f9b5 300e 	ldrsh.w	r3, [r5, #14]
d000d5ba:	3301      	adds	r3, #1
d000d5bc:	d003      	beq.n	d000d5c6 <_fwalk_reent+0x3a>
d000d5be:	4629      	mov	r1, r5
d000d5c0:	4630      	mov	r0, r6
d000d5c2:	47c0      	blx	r8
d000d5c4:	4307      	orrs	r7, r0
d000d5c6:	3568      	adds	r5, #104	; 0x68
d000d5c8:	e7e9      	b.n	d000d59e <_fwalk_reent+0x12>

d000d5ca <__retarget_lock_init_recursive>:
d000d5ca:	4770      	bx	lr

d000d5cc <__retarget_lock_acquire_recursive>:
d000d5cc:	4770      	bx	lr

d000d5ce <__retarget_lock_release_recursive>:
d000d5ce:	4770      	bx	lr

d000d5d0 <__swhatbuf_r>:
d000d5d0:	b570      	push	{r4, r5, r6, lr}
d000d5d2:	460e      	mov	r6, r1
d000d5d4:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d000d5d8:	2900      	cmp	r1, #0
d000d5da:	b096      	sub	sp, #88	; 0x58
d000d5dc:	4614      	mov	r4, r2
d000d5de:	461d      	mov	r5, r3
d000d5e0:	da07      	bge.n	d000d5f2 <__swhatbuf_r+0x22>
d000d5e2:	2300      	movs	r3, #0
d000d5e4:	602b      	str	r3, [r5, #0]
d000d5e6:	89b3      	ldrh	r3, [r6, #12]
d000d5e8:	061a      	lsls	r2, r3, #24
d000d5ea:	d410      	bmi.n	d000d60e <__swhatbuf_r+0x3e>
d000d5ec:	f44f 6380 	mov.w	r3, #1024	; 0x400
d000d5f0:	e00e      	b.n	d000d610 <__swhatbuf_r+0x40>
d000d5f2:	466a      	mov	r2, sp
d000d5f4:	f000 faf0 	bl	d000dbd8 <_fstat_r>
d000d5f8:	2800      	cmp	r0, #0
d000d5fa:	dbf2      	blt.n	d000d5e2 <__swhatbuf_r+0x12>
d000d5fc:	9a01      	ldr	r2, [sp, #4]
d000d5fe:	f402 4270 	and.w	r2, r2, #61440	; 0xf000
d000d602:	f5a2 5300 	sub.w	r3, r2, #8192	; 0x2000
d000d606:	425a      	negs	r2, r3
d000d608:	415a      	adcs	r2, r3
d000d60a:	602a      	str	r2, [r5, #0]
d000d60c:	e7ee      	b.n	d000d5ec <__swhatbuf_r+0x1c>
d000d60e:	2340      	movs	r3, #64	; 0x40
d000d610:	2000      	movs	r0, #0
d000d612:	6023      	str	r3, [r4, #0]
d000d614:	b016      	add	sp, #88	; 0x58
d000d616:	bd70      	pop	{r4, r5, r6, pc}

d000d618 <__smakebuf_r>:
d000d618:	898b      	ldrh	r3, [r1, #12]
d000d61a:	b573      	push	{r0, r1, r4, r5, r6, lr}
d000d61c:	079d      	lsls	r5, r3, #30
d000d61e:	4606      	mov	r6, r0
d000d620:	460c      	mov	r4, r1
d000d622:	d507      	bpl.n	d000d634 <__smakebuf_r+0x1c>
d000d624:	f104 0347 	add.w	r3, r4, #71	; 0x47
d000d628:	6023      	str	r3, [r4, #0]
d000d62a:	6123      	str	r3, [r4, #16]
d000d62c:	2301      	movs	r3, #1
d000d62e:	6163      	str	r3, [r4, #20]
d000d630:	b002      	add	sp, #8
d000d632:	bd70      	pop	{r4, r5, r6, pc}
d000d634:	ab01      	add	r3, sp, #4
d000d636:	466a      	mov	r2, sp
d000d638:	f7ff ffca 	bl	d000d5d0 <__swhatbuf_r>
d000d63c:	9900      	ldr	r1, [sp, #0]
d000d63e:	4605      	mov	r5, r0
d000d640:	4630      	mov	r0, r6
d000d642:	f7ff f8b9 	bl	d000c7b8 <_malloc_r>
d000d646:	b948      	cbnz	r0, d000d65c <__smakebuf_r+0x44>
d000d648:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
d000d64c:	059a      	lsls	r2, r3, #22
d000d64e:	d4ef      	bmi.n	d000d630 <__smakebuf_r+0x18>
d000d650:	f023 0303 	bic.w	r3, r3, #3
d000d654:	f043 0302 	orr.w	r3, r3, #2
d000d658:	81a3      	strh	r3, [r4, #12]
d000d65a:	e7e3      	b.n	d000d624 <__smakebuf_r+0xc>
d000d65c:	4b0d      	ldr	r3, [pc, #52]	; (d000d694 <__smakebuf_r+0x7c>)
d000d65e:	62b3      	str	r3, [r6, #40]	; 0x28
d000d660:	89a3      	ldrh	r3, [r4, #12]
d000d662:	6020      	str	r0, [r4, #0]
d000d664:	f043 0380 	orr.w	r3, r3, #128	; 0x80
d000d668:	81a3      	strh	r3, [r4, #12]
d000d66a:	9b00      	ldr	r3, [sp, #0]
d000d66c:	6163      	str	r3, [r4, #20]
d000d66e:	9b01      	ldr	r3, [sp, #4]
d000d670:	6120      	str	r0, [r4, #16]
d000d672:	b15b      	cbz	r3, d000d68c <__smakebuf_r+0x74>
d000d674:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
d000d678:	4630      	mov	r0, r6
d000d67a:	f000 fabf 	bl	d000dbfc <_isatty_r>
d000d67e:	b128      	cbz	r0, d000d68c <__smakebuf_r+0x74>
d000d680:	89a3      	ldrh	r3, [r4, #12]
d000d682:	f023 0303 	bic.w	r3, r3, #3
d000d686:	f043 0301 	orr.w	r3, r3, #1
d000d68a:	81a3      	strh	r3, [r4, #12]
d000d68c:	89a0      	ldrh	r0, [r4, #12]
d000d68e:	4305      	orrs	r5, r0
d000d690:	81a5      	strh	r5, [r4, #12]
d000d692:	e7cd      	b.n	d000d630 <__smakebuf_r+0x18>
d000d694:	d000d429 	.word	0xd000d429
	...

d000d6a0 <memchr>:
d000d6a0:	f001 01ff 	and.w	r1, r1, #255	; 0xff
d000d6a4:	2a10      	cmp	r2, #16
d000d6a6:	db2b      	blt.n	d000d700 <memchr+0x60>
d000d6a8:	f010 0f07 	tst.w	r0, #7
d000d6ac:	d008      	beq.n	d000d6c0 <memchr+0x20>
d000d6ae:	f810 3b01 	ldrb.w	r3, [r0], #1
d000d6b2:	3a01      	subs	r2, #1
d000d6b4:	428b      	cmp	r3, r1
d000d6b6:	d02d      	beq.n	d000d714 <memchr+0x74>
d000d6b8:	f010 0f07 	tst.w	r0, #7
d000d6bc:	b342      	cbz	r2, d000d710 <memchr+0x70>
d000d6be:	d1f6      	bne.n	d000d6ae <memchr+0xe>
d000d6c0:	b4f0      	push	{r4, r5, r6, r7}
d000d6c2:	ea41 2101 	orr.w	r1, r1, r1, lsl #8
d000d6c6:	ea41 4101 	orr.w	r1, r1, r1, lsl #16
d000d6ca:	f022 0407 	bic.w	r4, r2, #7
d000d6ce:	f07f 0700 	mvns.w	r7, #0
d000d6d2:	2300      	movs	r3, #0
d000d6d4:	e8f0 5602 	ldrd	r5, r6, [r0], #8
d000d6d8:	3c08      	subs	r4, #8
d000d6da:	ea85 0501 	eor.w	r5, r5, r1
d000d6de:	ea86 0601 	eor.w	r6, r6, r1
d000d6e2:	fa85 f547 	uadd8	r5, r5, r7
d000d6e6:	faa3 f587 	sel	r5, r3, r7
d000d6ea:	fa86 f647 	uadd8	r6, r6, r7
d000d6ee:	faa5 f687 	sel	r6, r5, r7
d000d6f2:	b98e      	cbnz	r6, d000d718 <memchr+0x78>
d000d6f4:	d1ee      	bne.n	d000d6d4 <memchr+0x34>
d000d6f6:	bcf0      	pop	{r4, r5, r6, r7}
d000d6f8:	f001 01ff 	and.w	r1, r1, #255	; 0xff
d000d6fc:	f002 0207 	and.w	r2, r2, #7
d000d700:	b132      	cbz	r2, d000d710 <memchr+0x70>
d000d702:	f810 3b01 	ldrb.w	r3, [r0], #1
d000d706:	3a01      	subs	r2, #1
d000d708:	ea83 0301 	eor.w	r3, r3, r1
d000d70c:	b113      	cbz	r3, d000d714 <memchr+0x74>
d000d70e:	d1f8      	bne.n	d000d702 <memchr+0x62>
d000d710:	2000      	movs	r0, #0
d000d712:	4770      	bx	lr
d000d714:	3801      	subs	r0, #1
d000d716:	4770      	bx	lr
d000d718:	2d00      	cmp	r5, #0
d000d71a:	bf06      	itte	eq
d000d71c:	4635      	moveq	r5, r6
d000d71e:	3803      	subeq	r0, #3
d000d720:	3807      	subne	r0, #7
d000d722:	f015 0f01 	tst.w	r5, #1
d000d726:	d107      	bne.n	d000d738 <memchr+0x98>
d000d728:	3001      	adds	r0, #1
d000d72a:	f415 7f80 	tst.w	r5, #256	; 0x100
d000d72e:	bf02      	ittt	eq
d000d730:	3001      	addeq	r0, #1
d000d732:	f415 3fc0 	tsteq.w	r5, #98304	; 0x18000
d000d736:	3001      	addeq	r0, #1
d000d738:	bcf0      	pop	{r4, r5, r6, r7}
d000d73a:	3801      	subs	r0, #1
d000d73c:	4770      	bx	lr
d000d73e:	bf00      	nop

d000d740 <memmove>:
d000d740:	4288      	cmp	r0, r1
d000d742:	b510      	push	{r4, lr}
d000d744:	eb01 0402 	add.w	r4, r1, r2
d000d748:	d902      	bls.n	d000d750 <memmove+0x10>
d000d74a:	4284      	cmp	r4, r0
d000d74c:	4623      	mov	r3, r4
d000d74e:	d807      	bhi.n	d000d760 <memmove+0x20>
d000d750:	1e43      	subs	r3, r0, #1
d000d752:	42a1      	cmp	r1, r4
d000d754:	d008      	beq.n	d000d768 <memmove+0x28>
d000d756:	f811 2b01 	ldrb.w	r2, [r1], #1
d000d75a:	f803 2f01 	strb.w	r2, [r3, #1]!
d000d75e:	e7f8      	b.n	d000d752 <memmove+0x12>
d000d760:	4402      	add	r2, r0
d000d762:	4601      	mov	r1, r0
d000d764:	428a      	cmp	r2, r1
d000d766:	d100      	bne.n	d000d76a <memmove+0x2a>
d000d768:	bd10      	pop	{r4, pc}
d000d76a:	f813 4d01 	ldrb.w	r4, [r3, #-1]!
d000d76e:	f802 4d01 	strb.w	r4, [r2, #-1]!
d000d772:	e7f7      	b.n	d000d764 <memmove+0x24>

d000d774 <__malloc_lock>:
d000d774:	4801      	ldr	r0, [pc, #4]	; (d000d77c <__malloc_lock+0x8>)
d000d776:	f7ff bf29 	b.w	d000d5cc <__retarget_lock_acquire_recursive>
d000d77a:	bf00      	nop
d000d77c:	d000fba8 	.word	0xd000fba8

d000d780 <__malloc_unlock>:
d000d780:	4801      	ldr	r0, [pc, #4]	; (d000d788 <__malloc_unlock+0x8>)
d000d782:	f7ff bf24 	b.w	d000d5ce <__retarget_lock_release_recursive>
d000d786:	bf00      	nop
d000d788:	d000fba8 	.word	0xd000fba8

d000d78c <_realloc_r>:
d000d78c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d000d78e:	4607      	mov	r7, r0
d000d790:	4614      	mov	r4, r2
d000d792:	460e      	mov	r6, r1
d000d794:	b921      	cbnz	r1, d000d7a0 <_realloc_r+0x14>
d000d796:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
d000d79a:	4611      	mov	r1, r2
d000d79c:	f7ff b80c 	b.w	d000c7b8 <_malloc_r>
d000d7a0:	b922      	cbnz	r2, d000d7ac <_realloc_r+0x20>
d000d7a2:	f7fe ffb9 	bl	d000c718 <_free_r>
d000d7a6:	4625      	mov	r5, r4
d000d7a8:	4628      	mov	r0, r5
d000d7aa:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d000d7ac:	f000 fa48 	bl	d000dc40 <_malloc_usable_size_r>
d000d7b0:	42a0      	cmp	r0, r4
d000d7b2:	d20f      	bcs.n	d000d7d4 <_realloc_r+0x48>
d000d7b4:	4621      	mov	r1, r4
d000d7b6:	4638      	mov	r0, r7
d000d7b8:	f7fe fffe 	bl	d000c7b8 <_malloc_r>
d000d7bc:	4605      	mov	r5, r0
d000d7be:	2800      	cmp	r0, #0
d000d7c0:	d0f2      	beq.n	d000d7a8 <_realloc_r+0x1c>
d000d7c2:	4631      	mov	r1, r6
d000d7c4:	4622      	mov	r2, r4
d000d7c6:	f7fe ff81 	bl	d000c6cc <memcpy>
d000d7ca:	4631      	mov	r1, r6
d000d7cc:	4638      	mov	r0, r7
d000d7ce:	f7fe ffa3 	bl	d000c718 <_free_r>
d000d7d2:	e7e9      	b.n	d000d7a8 <_realloc_r+0x1c>
d000d7d4:	4635      	mov	r5, r6
d000d7d6:	e7e7      	b.n	d000d7a8 <_realloc_r+0x1c>

d000d7d8 <__ssputs_r>:
d000d7d8:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
d000d7dc:	688e      	ldr	r6, [r1, #8]
d000d7de:	429e      	cmp	r6, r3
d000d7e0:	4682      	mov	sl, r0
d000d7e2:	460c      	mov	r4, r1
d000d7e4:	4690      	mov	r8, r2
d000d7e6:	461f      	mov	r7, r3
d000d7e8:	d838      	bhi.n	d000d85c <__ssputs_r+0x84>
d000d7ea:	898a      	ldrh	r2, [r1, #12]
d000d7ec:	f412 6f90 	tst.w	r2, #1152	; 0x480
d000d7f0:	d032      	beq.n	d000d858 <__ssputs_r+0x80>
d000d7f2:	6825      	ldr	r5, [r4, #0]
d000d7f4:	6909      	ldr	r1, [r1, #16]
d000d7f6:	eba5 0901 	sub.w	r9, r5, r1
d000d7fa:	6965      	ldr	r5, [r4, #20]
d000d7fc:	eb05 0545 	add.w	r5, r5, r5, lsl #1
d000d800:	eb05 75d5 	add.w	r5, r5, r5, lsr #31
d000d804:	3301      	adds	r3, #1
d000d806:	444b      	add	r3, r9
d000d808:	106d      	asrs	r5, r5, #1
d000d80a:	429d      	cmp	r5, r3
d000d80c:	bf38      	it	cc
d000d80e:	461d      	movcc	r5, r3
d000d810:	0553      	lsls	r3, r2, #21
d000d812:	d531      	bpl.n	d000d878 <__ssputs_r+0xa0>
d000d814:	4629      	mov	r1, r5
d000d816:	f7fe ffcf 	bl	d000c7b8 <_malloc_r>
d000d81a:	4606      	mov	r6, r0
d000d81c:	b950      	cbnz	r0, d000d834 <__ssputs_r+0x5c>
d000d81e:	230c      	movs	r3, #12
d000d820:	f8ca 3000 	str.w	r3, [sl]
d000d824:	89a3      	ldrh	r3, [r4, #12]
d000d826:	f043 0340 	orr.w	r3, r3, #64	; 0x40
d000d82a:	81a3      	strh	r3, [r4, #12]
d000d82c:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d000d830:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
d000d834:	6921      	ldr	r1, [r4, #16]
d000d836:	464a      	mov	r2, r9
d000d838:	f7fe ff48 	bl	d000c6cc <memcpy>
d000d83c:	89a3      	ldrh	r3, [r4, #12]
d000d83e:	f423 6390 	bic.w	r3, r3, #1152	; 0x480
d000d842:	f043 0380 	orr.w	r3, r3, #128	; 0x80
d000d846:	81a3      	strh	r3, [r4, #12]
d000d848:	6126      	str	r6, [r4, #16]
d000d84a:	6165      	str	r5, [r4, #20]
d000d84c:	444e      	add	r6, r9
d000d84e:	eba5 0509 	sub.w	r5, r5, r9
d000d852:	6026      	str	r6, [r4, #0]
d000d854:	60a5      	str	r5, [r4, #8]
d000d856:	463e      	mov	r6, r7
d000d858:	42be      	cmp	r6, r7
d000d85a:	d900      	bls.n	d000d85e <__ssputs_r+0x86>
d000d85c:	463e      	mov	r6, r7
d000d85e:	4632      	mov	r2, r6
d000d860:	6820      	ldr	r0, [r4, #0]
d000d862:	4641      	mov	r1, r8
d000d864:	f7ff ff6c 	bl	d000d740 <memmove>
d000d868:	68a3      	ldr	r3, [r4, #8]
d000d86a:	6822      	ldr	r2, [r4, #0]
d000d86c:	1b9b      	subs	r3, r3, r6
d000d86e:	4432      	add	r2, r6
d000d870:	60a3      	str	r3, [r4, #8]
d000d872:	6022      	str	r2, [r4, #0]
d000d874:	2000      	movs	r0, #0
d000d876:	e7db      	b.n	d000d830 <__ssputs_r+0x58>
d000d878:	462a      	mov	r2, r5
d000d87a:	f7ff ff87 	bl	d000d78c <_realloc_r>
d000d87e:	4606      	mov	r6, r0
d000d880:	2800      	cmp	r0, #0
d000d882:	d1e1      	bne.n	d000d848 <__ssputs_r+0x70>
d000d884:	6921      	ldr	r1, [r4, #16]
d000d886:	4650      	mov	r0, sl
d000d888:	f7fe ff46 	bl	d000c718 <_free_r>
d000d88c:	e7c7      	b.n	d000d81e <__ssputs_r+0x46>
	...

d000d890 <_svfiprintf_r>:
d000d890:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d000d894:	4698      	mov	r8, r3
d000d896:	898b      	ldrh	r3, [r1, #12]
d000d898:	061b      	lsls	r3, r3, #24
d000d89a:	b09d      	sub	sp, #116	; 0x74
d000d89c:	4607      	mov	r7, r0
d000d89e:	460d      	mov	r5, r1
d000d8a0:	4614      	mov	r4, r2
d000d8a2:	d50e      	bpl.n	d000d8c2 <_svfiprintf_r+0x32>
d000d8a4:	690b      	ldr	r3, [r1, #16]
d000d8a6:	b963      	cbnz	r3, d000d8c2 <_svfiprintf_r+0x32>
d000d8a8:	2140      	movs	r1, #64	; 0x40
d000d8aa:	f7fe ff85 	bl	d000c7b8 <_malloc_r>
d000d8ae:	6028      	str	r0, [r5, #0]
d000d8b0:	6128      	str	r0, [r5, #16]
d000d8b2:	b920      	cbnz	r0, d000d8be <_svfiprintf_r+0x2e>
d000d8b4:	230c      	movs	r3, #12
d000d8b6:	603b      	str	r3, [r7, #0]
d000d8b8:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d000d8bc:	e0d1      	b.n	d000da62 <_svfiprintf_r+0x1d2>
d000d8be:	2340      	movs	r3, #64	; 0x40
d000d8c0:	616b      	str	r3, [r5, #20]
d000d8c2:	2300      	movs	r3, #0
d000d8c4:	9309      	str	r3, [sp, #36]	; 0x24
d000d8c6:	2320      	movs	r3, #32
d000d8c8:	f88d 3029 	strb.w	r3, [sp, #41]	; 0x29
d000d8cc:	f8cd 800c 	str.w	r8, [sp, #12]
d000d8d0:	2330      	movs	r3, #48	; 0x30
d000d8d2:	f8df 81a8 	ldr.w	r8, [pc, #424]	; d000da7c <_svfiprintf_r+0x1ec>
d000d8d6:	f88d 302a 	strb.w	r3, [sp, #42]	; 0x2a
d000d8da:	f04f 0901 	mov.w	r9, #1
d000d8de:	4623      	mov	r3, r4
d000d8e0:	469a      	mov	sl, r3
d000d8e2:	f813 2b01 	ldrb.w	r2, [r3], #1
d000d8e6:	b10a      	cbz	r2, d000d8ec <_svfiprintf_r+0x5c>
d000d8e8:	2a25      	cmp	r2, #37	; 0x25
d000d8ea:	d1f9      	bne.n	d000d8e0 <_svfiprintf_r+0x50>
d000d8ec:	ebba 0b04 	subs.w	fp, sl, r4
d000d8f0:	d00b      	beq.n	d000d90a <_svfiprintf_r+0x7a>
d000d8f2:	465b      	mov	r3, fp
d000d8f4:	4622      	mov	r2, r4
d000d8f6:	4629      	mov	r1, r5
d000d8f8:	4638      	mov	r0, r7
d000d8fa:	f7ff ff6d 	bl	d000d7d8 <__ssputs_r>
d000d8fe:	3001      	adds	r0, #1
d000d900:	f000 80aa 	beq.w	d000da58 <_svfiprintf_r+0x1c8>
d000d904:	9a09      	ldr	r2, [sp, #36]	; 0x24
d000d906:	445a      	add	r2, fp
d000d908:	9209      	str	r2, [sp, #36]	; 0x24
d000d90a:	f89a 3000 	ldrb.w	r3, [sl]
d000d90e:	2b00      	cmp	r3, #0
d000d910:	f000 80a2 	beq.w	d000da58 <_svfiprintf_r+0x1c8>
d000d914:	2300      	movs	r3, #0
d000d916:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
d000d91a:	e9cd 2305 	strd	r2, r3, [sp, #20]
d000d91e:	f10a 0a01 	add.w	sl, sl, #1
d000d922:	9304      	str	r3, [sp, #16]
d000d924:	9307      	str	r3, [sp, #28]
d000d926:	f88d 3053 	strb.w	r3, [sp, #83]	; 0x53
d000d92a:	931a      	str	r3, [sp, #104]	; 0x68
d000d92c:	4654      	mov	r4, sl
d000d92e:	2205      	movs	r2, #5
d000d930:	f814 1b01 	ldrb.w	r1, [r4], #1
d000d934:	4851      	ldr	r0, [pc, #324]	; (d000da7c <_svfiprintf_r+0x1ec>)
d000d936:	f7ff feb3 	bl	d000d6a0 <memchr>
d000d93a:	9a04      	ldr	r2, [sp, #16]
d000d93c:	b9d8      	cbnz	r0, d000d976 <_svfiprintf_r+0xe6>
d000d93e:	06d0      	lsls	r0, r2, #27
d000d940:	bf44      	itt	mi
d000d942:	2320      	movmi	r3, #32
d000d944:	f88d 3053 	strbmi.w	r3, [sp, #83]	; 0x53
d000d948:	0711      	lsls	r1, r2, #28
d000d94a:	bf44      	itt	mi
d000d94c:	232b      	movmi	r3, #43	; 0x2b
d000d94e:	f88d 3053 	strbmi.w	r3, [sp, #83]	; 0x53
d000d952:	f89a 3000 	ldrb.w	r3, [sl]
d000d956:	2b2a      	cmp	r3, #42	; 0x2a
d000d958:	d015      	beq.n	d000d986 <_svfiprintf_r+0xf6>
d000d95a:	9a07      	ldr	r2, [sp, #28]
d000d95c:	4654      	mov	r4, sl
d000d95e:	2000      	movs	r0, #0
d000d960:	f04f 0c0a 	mov.w	ip, #10
d000d964:	4621      	mov	r1, r4
d000d966:	f811 3b01 	ldrb.w	r3, [r1], #1
d000d96a:	3b30      	subs	r3, #48	; 0x30
d000d96c:	2b09      	cmp	r3, #9
d000d96e:	d94e      	bls.n	d000da0e <_svfiprintf_r+0x17e>
d000d970:	b1b0      	cbz	r0, d000d9a0 <_svfiprintf_r+0x110>
d000d972:	9207      	str	r2, [sp, #28]
d000d974:	e014      	b.n	d000d9a0 <_svfiprintf_r+0x110>
d000d976:	eba0 0308 	sub.w	r3, r0, r8
d000d97a:	fa09 f303 	lsl.w	r3, r9, r3
d000d97e:	4313      	orrs	r3, r2
d000d980:	9304      	str	r3, [sp, #16]
d000d982:	46a2      	mov	sl, r4
d000d984:	e7d2      	b.n	d000d92c <_svfiprintf_r+0x9c>
d000d986:	9b03      	ldr	r3, [sp, #12]
d000d988:	1d19      	adds	r1, r3, #4
d000d98a:	681b      	ldr	r3, [r3, #0]
d000d98c:	9103      	str	r1, [sp, #12]
d000d98e:	2b00      	cmp	r3, #0
d000d990:	bfbb      	ittet	lt
d000d992:	425b      	neglt	r3, r3
d000d994:	f042 0202 	orrlt.w	r2, r2, #2
d000d998:	9307      	strge	r3, [sp, #28]
d000d99a:	9307      	strlt	r3, [sp, #28]
d000d99c:	bfb8      	it	lt
d000d99e:	9204      	strlt	r2, [sp, #16]
d000d9a0:	7823      	ldrb	r3, [r4, #0]
d000d9a2:	2b2e      	cmp	r3, #46	; 0x2e
d000d9a4:	d10c      	bne.n	d000d9c0 <_svfiprintf_r+0x130>
d000d9a6:	7863      	ldrb	r3, [r4, #1]
d000d9a8:	2b2a      	cmp	r3, #42	; 0x2a
d000d9aa:	d135      	bne.n	d000da18 <_svfiprintf_r+0x188>
d000d9ac:	9b03      	ldr	r3, [sp, #12]
d000d9ae:	1d1a      	adds	r2, r3, #4
d000d9b0:	681b      	ldr	r3, [r3, #0]
d000d9b2:	9203      	str	r2, [sp, #12]
d000d9b4:	2b00      	cmp	r3, #0
d000d9b6:	bfb8      	it	lt
d000d9b8:	f04f 33ff 	movlt.w	r3, #4294967295	; 0xffffffff
d000d9bc:	3402      	adds	r4, #2
d000d9be:	9305      	str	r3, [sp, #20]
d000d9c0:	f8df a0c8 	ldr.w	sl, [pc, #200]	; d000da8c <_svfiprintf_r+0x1fc>
d000d9c4:	7821      	ldrb	r1, [r4, #0]
d000d9c6:	2203      	movs	r2, #3
d000d9c8:	4650      	mov	r0, sl
d000d9ca:	f7ff fe69 	bl	d000d6a0 <memchr>
d000d9ce:	b140      	cbz	r0, d000d9e2 <_svfiprintf_r+0x152>
d000d9d0:	2340      	movs	r3, #64	; 0x40
d000d9d2:	eba0 000a 	sub.w	r0, r0, sl
d000d9d6:	fa03 f000 	lsl.w	r0, r3, r0
d000d9da:	9b04      	ldr	r3, [sp, #16]
d000d9dc:	4303      	orrs	r3, r0
d000d9de:	3401      	adds	r4, #1
d000d9e0:	9304      	str	r3, [sp, #16]
d000d9e2:	f814 1b01 	ldrb.w	r1, [r4], #1
d000d9e6:	4826      	ldr	r0, [pc, #152]	; (d000da80 <_svfiprintf_r+0x1f0>)
d000d9e8:	f88d 1028 	strb.w	r1, [sp, #40]	; 0x28
d000d9ec:	2206      	movs	r2, #6
d000d9ee:	f7ff fe57 	bl	d000d6a0 <memchr>
d000d9f2:	2800      	cmp	r0, #0
d000d9f4:	d038      	beq.n	d000da68 <_svfiprintf_r+0x1d8>
d000d9f6:	4b23      	ldr	r3, [pc, #140]	; (d000da84 <_svfiprintf_r+0x1f4>)
d000d9f8:	bb1b      	cbnz	r3, d000da42 <_svfiprintf_r+0x1b2>
d000d9fa:	9b03      	ldr	r3, [sp, #12]
d000d9fc:	3307      	adds	r3, #7
d000d9fe:	f023 0307 	bic.w	r3, r3, #7
d000da02:	3308      	adds	r3, #8
d000da04:	9303      	str	r3, [sp, #12]
d000da06:	9b09      	ldr	r3, [sp, #36]	; 0x24
d000da08:	4433      	add	r3, r6
d000da0a:	9309      	str	r3, [sp, #36]	; 0x24
d000da0c:	e767      	b.n	d000d8de <_svfiprintf_r+0x4e>
d000da0e:	fb0c 3202 	mla	r2, ip, r2, r3
d000da12:	460c      	mov	r4, r1
d000da14:	2001      	movs	r0, #1
d000da16:	e7a5      	b.n	d000d964 <_svfiprintf_r+0xd4>
d000da18:	2300      	movs	r3, #0
d000da1a:	3401      	adds	r4, #1
d000da1c:	9305      	str	r3, [sp, #20]
d000da1e:	4619      	mov	r1, r3
d000da20:	f04f 0c0a 	mov.w	ip, #10
d000da24:	4620      	mov	r0, r4
d000da26:	f810 2b01 	ldrb.w	r2, [r0], #1
d000da2a:	3a30      	subs	r2, #48	; 0x30
d000da2c:	2a09      	cmp	r2, #9
d000da2e:	d903      	bls.n	d000da38 <_svfiprintf_r+0x1a8>
d000da30:	2b00      	cmp	r3, #0
d000da32:	d0c5      	beq.n	d000d9c0 <_svfiprintf_r+0x130>
d000da34:	9105      	str	r1, [sp, #20]
d000da36:	e7c3      	b.n	d000d9c0 <_svfiprintf_r+0x130>
d000da38:	fb0c 2101 	mla	r1, ip, r1, r2
d000da3c:	4604      	mov	r4, r0
d000da3e:	2301      	movs	r3, #1
d000da40:	e7f0      	b.n	d000da24 <_svfiprintf_r+0x194>
d000da42:	ab03      	add	r3, sp, #12
d000da44:	9300      	str	r3, [sp, #0]
d000da46:	462a      	mov	r2, r5
d000da48:	4b0f      	ldr	r3, [pc, #60]	; (d000da88 <_svfiprintf_r+0x1f8>)
d000da4a:	a904      	add	r1, sp, #16
d000da4c:	4638      	mov	r0, r7
d000da4e:	f3af 8000 	nop.w
d000da52:	1c42      	adds	r2, r0, #1
d000da54:	4606      	mov	r6, r0
d000da56:	d1d6      	bne.n	d000da06 <_svfiprintf_r+0x176>
d000da58:	89ab      	ldrh	r3, [r5, #12]
d000da5a:	065b      	lsls	r3, r3, #25
d000da5c:	f53f af2c 	bmi.w	d000d8b8 <_svfiprintf_r+0x28>
d000da60:	9809      	ldr	r0, [sp, #36]	; 0x24
d000da62:	b01d      	add	sp, #116	; 0x74
d000da64:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d000da68:	ab03      	add	r3, sp, #12
d000da6a:	9300      	str	r3, [sp, #0]
d000da6c:	462a      	mov	r2, r5
d000da6e:	4b06      	ldr	r3, [pc, #24]	; (d000da88 <_svfiprintf_r+0x1f8>)
d000da70:	a904      	add	r1, sp, #16
d000da72:	4638      	mov	r0, r7
d000da74:	f7ff f8c2 	bl	d000cbfc <_printf_i>
d000da78:	e7eb      	b.n	d000da52 <_svfiprintf_r+0x1c2>
d000da7a:	bf00      	nop
d000da7c:	d000e808 	.word	0xd000e808
d000da80:	d000e812 	.word	0xd000e812
d000da84:	00000000 	.word	0x00000000
d000da88:	d000d7d9 	.word	0xd000d7d9
d000da8c:	d000e80e 	.word	0xd000e80e

d000da90 <_raise_r>:
d000da90:	291f      	cmp	r1, #31
d000da92:	b538      	push	{r3, r4, r5, lr}
d000da94:	4604      	mov	r4, r0
d000da96:	460d      	mov	r5, r1
d000da98:	d904      	bls.n	d000daa4 <_raise_r+0x14>
d000da9a:	2316      	movs	r3, #22
d000da9c:	6003      	str	r3, [r0, #0]
d000da9e:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d000daa2:	bd38      	pop	{r3, r4, r5, pc}
d000daa4:	6c42      	ldr	r2, [r0, #68]	; 0x44
d000daa6:	b112      	cbz	r2, d000daae <_raise_r+0x1e>
d000daa8:	f852 3021 	ldr.w	r3, [r2, r1, lsl #2]
d000daac:	b94b      	cbnz	r3, d000dac2 <_raise_r+0x32>
d000daae:	4620      	mov	r0, r4
d000dab0:	f000 f830 	bl	d000db14 <_getpid_r>
d000dab4:	462a      	mov	r2, r5
d000dab6:	4601      	mov	r1, r0
d000dab8:	4620      	mov	r0, r4
d000daba:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
d000dabe:	f000 b817 	b.w	d000daf0 <_kill_r>
d000dac2:	2b01      	cmp	r3, #1
d000dac4:	d00a      	beq.n	d000dadc <_raise_r+0x4c>
d000dac6:	1c59      	adds	r1, r3, #1
d000dac8:	d103      	bne.n	d000dad2 <_raise_r+0x42>
d000daca:	2316      	movs	r3, #22
d000dacc:	6003      	str	r3, [r0, #0]
d000dace:	2001      	movs	r0, #1
d000dad0:	e7e7      	b.n	d000daa2 <_raise_r+0x12>
d000dad2:	2400      	movs	r4, #0
d000dad4:	f842 4025 	str.w	r4, [r2, r5, lsl #2]
d000dad8:	4628      	mov	r0, r5
d000dada:	4798      	blx	r3
d000dadc:	2000      	movs	r0, #0
d000dade:	e7e0      	b.n	d000daa2 <_raise_r+0x12>

d000dae0 <raise>:
d000dae0:	4b02      	ldr	r3, [pc, #8]	; (d000daec <raise+0xc>)
d000dae2:	4601      	mov	r1, r0
d000dae4:	6818      	ldr	r0, [r3, #0]
d000dae6:	f7ff bfd3 	b.w	d000da90 <_raise_r>
d000daea:	bf00      	nop
d000daec:	d000e8a4 	.word	0xd000e8a4

d000daf0 <_kill_r>:
d000daf0:	b538      	push	{r3, r4, r5, lr}
d000daf2:	4d07      	ldr	r5, [pc, #28]	; (d000db10 <_kill_r+0x20>)
d000daf4:	2300      	movs	r3, #0
d000daf6:	4604      	mov	r4, r0
d000daf8:	4608      	mov	r0, r1
d000dafa:	4611      	mov	r1, r2
d000dafc:	602b      	str	r3, [r5, #0]
d000dafe:	f7f3 fb23 	bl	d0001148 <_kill>
d000db02:	1c43      	adds	r3, r0, #1
d000db04:	d102      	bne.n	d000db0c <_kill_r+0x1c>
d000db06:	682b      	ldr	r3, [r5, #0]
d000db08:	b103      	cbz	r3, d000db0c <_kill_r+0x1c>
d000db0a:	6023      	str	r3, [r4, #0]
d000db0c:	bd38      	pop	{r3, r4, r5, pc}
d000db0e:	bf00      	nop
d000db10:	d000fbb0 	.word	0xd000fbb0

d000db14 <_getpid_r>:
d000db14:	f7f3 bb16 	b.w	d0001144 <_getpid>

d000db18 <__sread>:
d000db18:	b510      	push	{r4, lr}
d000db1a:	460c      	mov	r4, r1
d000db1c:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d000db20:	f000 f896 	bl	d000dc50 <_read_r>
d000db24:	2800      	cmp	r0, #0
d000db26:	bfab      	itete	ge
d000db28:	6d63      	ldrge	r3, [r4, #84]	; 0x54
d000db2a:	89a3      	ldrhlt	r3, [r4, #12]
d000db2c:	181b      	addge	r3, r3, r0
d000db2e:	f423 5380 	biclt.w	r3, r3, #4096	; 0x1000
d000db32:	bfac      	ite	ge
d000db34:	6563      	strge	r3, [r4, #84]	; 0x54
d000db36:	81a3      	strhlt	r3, [r4, #12]
d000db38:	bd10      	pop	{r4, pc}

d000db3a <__swrite>:
d000db3a:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
d000db3e:	461f      	mov	r7, r3
d000db40:	898b      	ldrh	r3, [r1, #12]
d000db42:	05db      	lsls	r3, r3, #23
d000db44:	4605      	mov	r5, r0
d000db46:	460c      	mov	r4, r1
d000db48:	4616      	mov	r6, r2
d000db4a:	d505      	bpl.n	d000db58 <__swrite+0x1e>
d000db4c:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d000db50:	2302      	movs	r3, #2
d000db52:	2200      	movs	r2, #0
d000db54:	f000 f862 	bl	d000dc1c <_lseek_r>
d000db58:	89a3      	ldrh	r3, [r4, #12]
d000db5a:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
d000db5e:	f423 5380 	bic.w	r3, r3, #4096	; 0x1000
d000db62:	81a3      	strh	r3, [r4, #12]
d000db64:	4632      	mov	r2, r6
d000db66:	463b      	mov	r3, r7
d000db68:	4628      	mov	r0, r5
d000db6a:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
d000db6e:	f7f3 ba7f 	b.w	d0001070 <_write_r>

d000db72 <__sseek>:
d000db72:	b510      	push	{r4, lr}
d000db74:	460c      	mov	r4, r1
d000db76:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d000db7a:	f000 f84f 	bl	d000dc1c <_lseek_r>
d000db7e:	1c43      	adds	r3, r0, #1
d000db80:	89a3      	ldrh	r3, [r4, #12]
d000db82:	bf15      	itete	ne
d000db84:	6560      	strne	r0, [r4, #84]	; 0x54
d000db86:	f423 5380 	biceq.w	r3, r3, #4096	; 0x1000
d000db8a:	f443 5380 	orrne.w	r3, r3, #4096	; 0x1000
d000db8e:	81a3      	strheq	r3, [r4, #12]
d000db90:	bf18      	it	ne
d000db92:	81a3      	strhne	r3, [r4, #12]
d000db94:	bd10      	pop	{r4, pc}

d000db96 <__sclose>:
d000db96:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d000db9a:	f000 b80d 	b.w	d000dbb8 <_close_r>

d000db9e <strchr>:
d000db9e:	b2c9      	uxtb	r1, r1
d000dba0:	4603      	mov	r3, r0
d000dba2:	f810 2b01 	ldrb.w	r2, [r0], #1
d000dba6:	b11a      	cbz	r2, d000dbb0 <strchr+0x12>
d000dba8:	428a      	cmp	r2, r1
d000dbaa:	d1f9      	bne.n	d000dba0 <strchr+0x2>
d000dbac:	4618      	mov	r0, r3
d000dbae:	4770      	bx	lr
d000dbb0:	2900      	cmp	r1, #0
d000dbb2:	bf18      	it	ne
d000dbb4:	2300      	movne	r3, #0
d000dbb6:	e7f9      	b.n	d000dbac <strchr+0xe>

d000dbb8 <_close_r>:
d000dbb8:	b538      	push	{r3, r4, r5, lr}
d000dbba:	4d06      	ldr	r5, [pc, #24]	; (d000dbd4 <_close_r+0x1c>)
d000dbbc:	2300      	movs	r3, #0
d000dbbe:	4604      	mov	r4, r0
d000dbc0:	4608      	mov	r0, r1
d000dbc2:	602b      	str	r3, [r5, #0]
d000dbc4:	f7f3 fa8e 	bl	d00010e4 <_close>
d000dbc8:	1c43      	adds	r3, r0, #1
d000dbca:	d102      	bne.n	d000dbd2 <_close_r+0x1a>
d000dbcc:	682b      	ldr	r3, [r5, #0]
d000dbce:	b103      	cbz	r3, d000dbd2 <_close_r+0x1a>
d000dbd0:	6023      	str	r3, [r4, #0]
d000dbd2:	bd38      	pop	{r3, r4, r5, pc}
d000dbd4:	d000fbb0 	.word	0xd000fbb0

d000dbd8 <_fstat_r>:
d000dbd8:	b538      	push	{r3, r4, r5, lr}
d000dbda:	4d07      	ldr	r5, [pc, #28]	; (d000dbf8 <_fstat_r+0x20>)
d000dbdc:	2300      	movs	r3, #0
d000dbde:	4604      	mov	r4, r0
d000dbe0:	4608      	mov	r0, r1
d000dbe2:	4611      	mov	r1, r2
d000dbe4:	602b      	str	r3, [r5, #0]
d000dbe6:	f7f3 fa81 	bl	d00010ec <_fstat>
d000dbea:	1c43      	adds	r3, r0, #1
d000dbec:	d102      	bne.n	d000dbf4 <_fstat_r+0x1c>
d000dbee:	682b      	ldr	r3, [r5, #0]
d000dbf0:	b103      	cbz	r3, d000dbf4 <_fstat_r+0x1c>
d000dbf2:	6023      	str	r3, [r4, #0]
d000dbf4:	bd38      	pop	{r3, r4, r5, pc}
d000dbf6:	bf00      	nop
d000dbf8:	d000fbb0 	.word	0xd000fbb0

d000dbfc <_isatty_r>:
d000dbfc:	b538      	push	{r3, r4, r5, lr}
d000dbfe:	4d06      	ldr	r5, [pc, #24]	; (d000dc18 <_isatty_r+0x1c>)
d000dc00:	2300      	movs	r3, #0
d000dc02:	4604      	mov	r4, r0
d000dc04:	4608      	mov	r0, r1
d000dc06:	602b      	str	r3, [r5, #0]
d000dc08:	f7f3 fa98 	bl	d000113c <_isatty>
d000dc0c:	1c43      	adds	r3, r0, #1
d000dc0e:	d102      	bne.n	d000dc16 <_isatty_r+0x1a>
d000dc10:	682b      	ldr	r3, [r5, #0]
d000dc12:	b103      	cbz	r3, d000dc16 <_isatty_r+0x1a>
d000dc14:	6023      	str	r3, [r4, #0]
d000dc16:	bd38      	pop	{r3, r4, r5, pc}
d000dc18:	d000fbb0 	.word	0xd000fbb0

d000dc1c <_lseek_r>:
d000dc1c:	b538      	push	{r3, r4, r5, lr}
d000dc1e:	4d07      	ldr	r5, [pc, #28]	; (d000dc3c <_lseek_r+0x20>)
d000dc20:	4604      	mov	r4, r0
d000dc22:	4608      	mov	r0, r1
d000dc24:	4611      	mov	r1, r2
d000dc26:	2200      	movs	r2, #0
d000dc28:	602a      	str	r2, [r5, #0]
d000dc2a:	461a      	mov	r2, r3
d000dc2c:	f7f3 fa64 	bl	d00010f8 <_lseek>
d000dc30:	1c43      	adds	r3, r0, #1
d000dc32:	d102      	bne.n	d000dc3a <_lseek_r+0x1e>
d000dc34:	682b      	ldr	r3, [r5, #0]
d000dc36:	b103      	cbz	r3, d000dc3a <_lseek_r+0x1e>
d000dc38:	6023      	str	r3, [r4, #0]
d000dc3a:	bd38      	pop	{r3, r4, r5, pc}
d000dc3c:	d000fbb0 	.word	0xd000fbb0

d000dc40 <_malloc_usable_size_r>:
d000dc40:	f851 3c04 	ldr.w	r3, [r1, #-4]
d000dc44:	1f18      	subs	r0, r3, #4
d000dc46:	2b00      	cmp	r3, #0
d000dc48:	bfbc      	itt	lt
d000dc4a:	580b      	ldrlt	r3, [r1, r0]
d000dc4c:	18c0      	addlt	r0, r0, r3
d000dc4e:	4770      	bx	lr

d000dc50 <_read_r>:
d000dc50:	b538      	push	{r3, r4, r5, lr}
d000dc52:	4d07      	ldr	r5, [pc, #28]	; (d000dc70 <_read_r+0x20>)
d000dc54:	4604      	mov	r4, r0
d000dc56:	4608      	mov	r0, r1
d000dc58:	4611      	mov	r1, r2
d000dc5a:	2200      	movs	r2, #0
d000dc5c:	602a      	str	r2, [r5, #0]
d000dc5e:	461a      	mov	r2, r3
d000dc60:	f7f3 fa36 	bl	d00010d0 <_read>
d000dc64:	1c43      	adds	r3, r0, #1
d000dc66:	d102      	bne.n	d000dc6e <_read_r+0x1e>
d000dc68:	682b      	ldr	r3, [r5, #0]
d000dc6a:	b103      	cbz	r3, d000dc6e <_read_r+0x1e>
d000dc6c:	6023      	str	r3, [r4, #0]
d000dc6e:	bd38      	pop	{r3, r4, r5, pc}
d000dc70:	d000fbb0 	.word	0xd000fbb0
d000dc74:	20646162 	.word	0x20646162
d000dc78:	657a6973 	.word	0x657a6973
d000dc7c:	73696c20 	.word	0x73696c20
d000dc80:	00000074 	.word	0x00000074
d000dc84:	20646162 	.word	0x20646162
d000dc88:	65646f63 	.word	0x65646f63
d000dc8c:	6e656c20 	.word	0x6e656c20
d000dc90:	73687467 	.word	0x73687467
d000dc94:	00000000 	.word	0x00000000
d000dc98:	6a282828 	.word	0x6a282828
d000dc9c:	6f633e2d 	.word	0x6f633e2d
d000dca0:	625f6564 	.word	0x625f6564
d000dca4:	65666675 	.word	0x65666675
d000dca8:	3e202972 	.word	0x3e202972
d000dcac:	3328203e 	.word	0x3328203e
d000dcb0:	202d2032 	.word	0x202d2032
d000dcb4:	733e2d68 	.word	0x733e2d68
d000dcb8:	5b657a69 	.word	0x5b657a69
d000dcbc:	29295d63 	.word	0x29295d63
d000dcc0:	73202620 	.word	0x73202620
d000dcc4:	5f696274 	.word	0x5f696274
d000dcc8:	616d625f 	.word	0x616d625f
d000dccc:	685b6b73 	.word	0x685b6b73
d000dcd0:	69733e2d 	.word	0x69733e2d
d000dcd4:	635b657a 	.word	0x635b657a
d000dcd8:	20295d5d 	.word	0x20295d5d
d000dcdc:	68203d3d 	.word	0x68203d3d
d000dce0:	6f633e2d 	.word	0x6f633e2d
d000dce4:	635b6564 	.word	0x635b6564
d000dce8:	0000005d 	.word	0x0000005d
d000dcec:	6a6f7270 	.word	0x6a6f7270
d000dcf0:	2f746365 	.word	0x2f746365
d000dcf4:	5f627473 	.word	0x5f627473
d000dcf8:	67616d69 	.word	0x67616d69
d000dcfc:	00682e65 	.word	0x00682e65
d000dd00:	20646162 	.word	0x20646162
d000dd04:	66667568 	.word	0x66667568
d000dd08:	206e616d 	.word	0x206e616d
d000dd0c:	65646f63 	.word	0x65646f63
d000dd10:	00000000 	.word	0x00000000
d000dd14:	20646162 	.word	0x20646162
d000dd18:	746c6564 	.word	0x746c6564
d000dd1c:	00000061 	.word	0x00000061
d000dd20:	276e6163 	.word	0x276e6163
d000dd24:	656d2074 	.word	0x656d2074
d000dd28:	20656772 	.word	0x20656772
d000dd2c:	61206364 	.word	0x61206364
d000dd30:	6120646e 	.word	0x6120646e
d000dd34:	00000063 	.word	0x00000063
d000dd38:	65707865 	.word	0x65707865
d000dd3c:	64657463 	.word	0x64657463
d000dd40:	72616d20 	.word	0x72616d20
d000dd44:	0072656b 	.word	0x0072656b
d000dd48:	20646162 	.word	0x20646162
d000dd4c:	20495244 	.word	0x20495244
d000dd50:	006e656c 	.word	0x006e656c
d000dd54:	20646162 	.word	0x20646162
d000dd58:	20545144 	.word	0x20545144
d000dd5c:	65707974 	.word	0x65707974
d000dd60:	00000000 	.word	0x00000000
d000dd64:	20646162 	.word	0x20646162
d000dd68:	20545144 	.word	0x20545144
d000dd6c:	6c626174 	.word	0x6c626174
d000dd70:	00000065 	.word	0x00000065
d000dd74:	20646162 	.word	0x20646162
d000dd78:	20544844 	.word	0x20544844
d000dd7c:	64616568 	.word	0x64616568
d000dd80:	00007265 	.word	0x00007265
d000dd84:	20646162 	.word	0x20646162
d000dd88:	204d4f43 	.word	0x204d4f43
d000dd8c:	006e656c 	.word	0x006e656c
d000dd90:	20646162 	.word	0x20646162
d000dd94:	20505041 	.word	0x20505041
d000dd98:	006e656c 	.word	0x006e656c
d000dd9c:	6e6b6e75 	.word	0x6e6b6e75
d000dda0:	206e776f 	.word	0x206e776f
d000dda4:	6b72616d 	.word	0x6b72616d
d000dda8:	00007265 	.word	0x00007265
d000ddac:	53206f6e 	.word	0x53206f6e
d000ddb0:	0000494f 	.word	0x0000494f
d000ddb4:	53206f6e 	.word	0x53206f6e
d000ddb8:	0000464f 	.word	0x0000464f
d000ddbc:	20646162 	.word	0x20646162
d000ddc0:	20464f53 	.word	0x20464f53
d000ddc4:	006e656c 	.word	0x006e656c
d000ddc8:	796c6e6f 	.word	0x796c6e6f
d000ddcc:	622d3820 	.word	0x622d3820
d000ddd0:	00007469 	.word	0x00007469
d000ddd4:	68206f6e 	.word	0x68206f6e
d000ddd8:	65646165 	.word	0x65646165
d000dddc:	65682072 	.word	0x65682072
d000dde0:	74686769 	.word	0x74686769
d000dde4:	00000000 	.word	0x00000000
d000dde8:	69772030 	.word	0x69772030
d000ddec:	00687464 	.word	0x00687464
d000ddf0:	206f6f74 	.word	0x206f6f74
d000ddf4:	6772616c 	.word	0x6772616c
d000ddf8:	00000065 	.word	0x00000065
d000ddfc:	20646162 	.word	0x20646162
d000de00:	706d6f63 	.word	0x706d6f63
d000de04:	6e656e6f 	.word	0x6e656e6f
d000de08:	6f632074 	.word	0x6f632074
d000de0c:	00746e75 	.word	0x00746e75
d000de10:	20646162 	.word	0x20646162
d000de14:	00000048 	.word	0x00000048
d000de18:	20646162 	.word	0x20646162
d000de1c:	00000056 	.word	0x00000056
d000de20:	20646162 	.word	0x20646162
d000de24:	00005154 	.word	0x00005154
d000de28:	6f74756f 	.word	0x6f74756f
d000de2c:	6d656d66 	.word	0x6d656d66
d000de30:	00000000 	.word	0x00000000
d000de34:	20646162 	.word	0x20646162
d000de38:	5f716572 	.word	0x5f716572
d000de3c:	706d6f63 	.word	0x706d6f63
d000de40:	00000000 	.word	0x00000000
d000de44:	20646162 	.word	0x20646162
d000de48:	20534f53 	.word	0x20534f53
d000de4c:	706d6f63 	.word	0x706d6f63
d000de50:	6e656e6f 	.word	0x6e656e6f
d000de54:	6f632074 	.word	0x6f632074
d000de58:	00746e75 	.word	0x00746e75
d000de5c:	20646162 	.word	0x20646162
d000de60:	20534f53 	.word	0x20534f53
d000de64:	006e656c 	.word	0x006e656c
d000de68:	20646162 	.word	0x20646162
d000de6c:	68204344 	.word	0x68204344
d000de70:	00666675 	.word	0x00666675
d000de74:	20646162 	.word	0x20646162
d000de78:	68204341 	.word	0x68204341
d000de7c:	00666675 	.word	0x00666675
d000de80:	20646162 	.word	0x20646162
d000de84:	00534f53 	.word	0x00534f53
d000de88:	20646162 	.word	0x20646162
d000de8c:	204c4e44 	.word	0x204c4e44
d000de90:	006e656c 	.word	0x006e656c
d000de94:	20646162 	.word	0x20646162
d000de98:	204c4e44 	.word	0x204c4e44
d000de9c:	67696568 	.word	0x67696568
d000dea0:	00007468 	.word	0x00007468
d000dea4:	6e6b6e75 	.word	0x6e6b6e75
d000dea8:	206e776f 	.word	0x206e776f
d000deac:	67616d69 	.word	0x67616d69
d000deb0:	79742065 	.word	0x79742065
d000deb4:	00006570 	.word	0x00006570

d000deb8 <__func__.6929>:
d000deb8:	69627473 706a5f5f 685f6765 5f666675     stbi__jpeg_huff_
d000dec8:	6f636564 00006564                       decode..

d000ded0 <rgb.7252>:
d000ded0:	00424752                                RGB.

d000ded4 <stbi__bmask>:
d000ded4:	00000000 00000001 00000003 00000007     ................
d000dee4:	0000000f 0000001f 0000003f 0000007f     ........?.......
d000def4:	000000ff 000001ff 000003ff 000007ff     ................
d000df04:	00000fff 00001fff 00003fff 00007fff     .........?......
d000df14:	0000ffff                                ....

d000df18 <stbi__jbias>:
d000df18:	00000000 ffffffff fffffffd fffffff9     ................
d000df28:	fffffff1 ffffffe1 ffffffc1 ffffff81     ................
d000df38:	ffffff01 fffffe01 fffffc01 fffff801     ................
d000df48:	fffff001 ffffe001 ffffc001 ffff8001     ................

d000df58 <stbi__jpeg_dezigzag>:
d000df58:	10080100 0a030209 19201811 05040b12     .......... .....
d000df68:	211a130c 22293028 060d141b 1c150e07     ...!(0)"........
d000df78:	38312a23 242b3239 170f161d 332c251e     #*1892+$.....%,3
d000df88:	2d343b3a 2e271f26 363d3c35 3f3e372f     :;4-&.'.5<=6/7>?
d000df98:	3f3f3f3f 3f3f3f3f 3f3f3f3f 003f3f3f     ???????????????.

d000dfa8 <CSWTCH.309>:
d000dfa8:	00020001 00080004 00200010 00800040     .......... .@...
d000dfb8:	02000100 08000400 20001000 00004000     ........... .@..

d000dfc8 <CSWTCH.311>:
d000dfc8:	fffdffff fff1fff9 ffc1ffe1 ff01ff81     ................
d000dfd8:	fc01fe01 f001f801 c001e001 00008001     ................

d000dfe8 <CSWTCH.316>:
d000dfe8:	d000e9d4 d000ea24 d000ea74 d000eac4     ....$...t.......

d000dff8 <CSWTCH.318>:
d000dff8:	d000eb14 d000eb24 d000eb34 d000ec34     ....$...4...4...

d000e008 <ZAG>:
d000e008:	10080100 0a030209 19201811 05040b12     .......... .....
d000e018:	211a130c 22293028 060d141b 1c150e07     ...!(0)"........
d000e028:	38312a23 242b3239 170f161d 332c251e     #*1892+$.....%,3
d000e038:	2d343b3a 2e271f26 363d3c35 3f3e372f     :;4-&.'.5<=6/7>?

d000e048 <gWinogradQuant>:
d000e048:	a7b2b280 e897a7f6 d18097e8 6580d1db     ...............e
d000e058:	b2c5c5b2 a78b4565 458ba7b1 97836023     ....eE.....E#`..
d000e068:	23608397 80765b31 2e315b76 51656551     ..`#1[v.v[1.QeeQ
d000e078:	4f452a2e 36232a45 251c2336 0a13131c     .*EOE*#66#.%....
d000e088:	0000000a 6e65704f 69616620 2064656c     ....Open failed 
d000e098:	25205246 25203a75 00000073 656c6946     FR %u: %s...File
d000e0a8:	20736920 74706d65 00000079 20746f4e      is empty...Not 
d000e0b8:	756f6e65 6d206867 726f6d65 6f662079     enough memory fo
d000e0c8:	69662072 0000656c 64616552 69616620     r file..Read fai
d000e0d8:	2064656c 25205246 00000075 67616d49     led FR %u...Imag
d000e0e8:	69562065 72657765 00000000 4745504a     e Viewer....JPEG
d000e0f8:	20736920 206f6f74 6772616c 6f662065      is too large fo
d000e108:	68742072 61207369 656c7070 00000074     r this applet...
d000e118:	20746f4e 756f6e65 6d206867 726f6d65     Not enough memor
d000e128:	6f662079 504a2072 70204745 6c657869     y for JPEG pixel
d000e138:	00000073 4745504a 63656420 2065646f     s...JPEG decode 
d000e148:	6c696166 25206465 00000075 6e6b6e75     failed %u...unkn
d000e158:	006e776f 4745504a 65657320 6166206b     own.JPEG seek fa
d000e168:	64656c69 00000000 4745504a 6c616620     iled....JPEG fal
d000e178:	6361626c 6166206b 64656c69 7325203a     lback failed: %s
d000e188:	00000000 4745504a 6c696620 73692065     ....JPEG file is
d000e198:	6f6f7420 72616c20 00006567 4a205748      too large..HW J
d000e1a8:	20474550 70696b73 20646570 29642528     PEG skipped (%d)
d000e1b8:	00000000 75736e75 726f7070 20646574     ....unsupported 
d000e1c8:	4745504a 6c6f6320 7372756f 65636170     JPEG colourspace
d000e1d8:	00000000 4745504a 63656420 2065646f     ....JPEG decode 
d000e1e8:	6f727265 00000072 75736e75 726f7070     error...unsuppor
d000e1f8:	20646574 4745504a 6d617320 6e696c70     ted JPEG samplin
d000e208:	00000067 676f7270 73736572 20657669     g...progressive 
d000e218:	4745504a 00000000 20746f6e 504a2061     JPEG....not a JP
d000e228:	00004745 203a7325 6e75614c 77206863     EG..%s: Launch w
d000e238:	20687469 67616d49 69662065 000a656c     ith Image file..
d000e248:	28207325 00297525 64616f4c 25206465     %s (%u).Loaded %
d000e258:	75257875 7325203a 00000000 20746f4e     ux%u: %s....Not 
d000e268:	4d422061 69662050 0000656c 75736e55     a BMP file..Unsu
d000e278:	726f7070 20646574 20504d42 64616568     pported BMP head
d000e288:	00007265 61766e49 2064696c 20504d42     er..Invalid BMP 
d000e298:	656d6964 6f69736e 0000736e 20504d42     dimensions..BMP 
d000e2a8:	74207369 6c206f6f 65677261 726f6620     is too large for
d000e2b8:	69687420 70612073 74656c70 00000000      this applet....
d000e2c8:	20504d42 65786970 666f206c 74657366     BMP pixel offset
d000e2d8:	20736920 7374756f 20656469 20656874      is outside the 
d000e2e8:	656c6966 00000000 796c6e4f 636e7520     file....Only unc
d000e2f8:	72706d6f 65737365 4d422064 69662050     ompressed BMP fi
d000e308:	2073656c 20657261 70707573 6574726f     les are supporte
d000e318:	00000064 20504d42 656c6170 20657474     d...BMP palette 
d000e328:	74207369 636e7572 64657461 00000000     is truncated....
d000e338:	20504d42 65786970 6164206c 69206174     BMP pixel data i
d000e348:	72742073 61636e75 00646574 20746f4e     s truncated.Not 
d000e358:	756f6e65 6d206867 726f6d65 6f662079     enough memory fo
d000e368:	4d422072 69702050 736c6578 00000000     r BMP pixels....
d000e378:	75736e55 726f7070 20646574 20504d42     Unsupported BMP 
d000e388:	20746962 74706564 00000068 20746f4e     bit depth...Not 
d000e398:	756f6e65 6d206867 726f6d65 6f662079     enough memory fo
d000e3a8:	4d422072 72742050 6f636575 72756f6c     r BMP truecolour
d000e3b8:	00000000 20746f4e 49206e61 46204646     ....Not an IFF F
d000e3c8:	204d524f 656c6966 00000000 20464649     ORM file....IFF 
d000e3d8:	656c6966 20736920 20746f6e 4d424c49     file is not ILBM
d000e3e8:	4d42502f 00000000 20464649 6e756863     /PBM....IFF chun
d000e3f8:	7369206b 75727420 7461636e 00006465     k is truncated..
d000e408:	61766e49 2064696c 44484d42 75686320     Invalid BMHD chu
d000e418:	00006b6e 20464649 6d207369 69737369     nk..IFF is missi
d000e428:	4220676e 2044484d 4220726f 0059444f     ng BMHD or BODY.
d000e438:	75736e55 726f7070 20646574 20464649     Unsupported IFF 
d000e448:	706d6f63 73736572 006e6f69 20464649     compression.IFF 
d000e458:	74207369 6c206f6f 65677261 726f6620     is too large for
d000e468:	69687420 70612073 74656c70 00000000      this applet....
d000e478:	20464649 20736168 65726f6d 61687420     IFF has more tha
d000e488:	2038206e 6e616c70 203b7365 796c6e6f     n 8 planes; only
d000e498:	4d414820 2d34322f 20746962 20657261      HAM/24-bit are 
d000e4a8:	70707573 6574726f 00000064 20746f4e     supported...Not 
d000e4b8:	756f6e65 6d206867 726f6d65 6f662079     enough memory fo
d000e4c8:	46492072 6f722046 00000077 20746f4e     r IFF row...Not 
d000e4d8:	756f6e65 6d206867 726f6d65 6f662079     enough memory fo
d000e4e8:	46492072 69702046 736c6578 00000000     r IFF pixels....
d000e4f8:	20464649 59444f42 20736920 6e757274     IFF BODY is trun
d000e508:	65746163 00000064 20464649 65747942     cated...IFF Byte
d000e518:	316e7552 74616420 73692061 726f6320     Run1 data is cor
d000e528:	74707572 00000000 00464947 00613738     rupt....GIF.87a.
d000e538:	00613938 20746f4e 49472061 69662046     89a.Not a GIF fi
d000e548:	0000656c 20464947 74207369 6c206f6f     le..GIF is too l
d000e558:	65677261 726f6620 69687420 70612073     arge for this ap
d000e568:	74656c70 00000000 20464947 626f6c67     plet....GIF glob
d000e578:	70206c61 74656c61 69206574 72742073     al palette is tr
d000e588:	61636e75 00646574 20746f4e 756f6e65     uncated.Not enou
d000e598:	6d206867 726f6d65 6f662079 49472072     gh memory for GI
d000e5a8:	69702046 736c6578 00000000 20464947     F pixels....GIF 
d000e5b8:	20736168 69206f6e 6567616d 61726620     has no image fra
d000e5c8:	0000656d 20464947 65747865 6f69736e     me..GIF extensio
d000e5d8:	7369206e 75727420 7461636e 00006465     n is truncated..
d000e5e8:	20464947 746e6f63 206c6f72 636f6c62     GIF control bloc
d000e5f8:	7369206b 75727420 7461636e 00006465     k is truncated..
d000e608:	20646142 20464947 746e6f63 206c6f72     Bad GIF control 
d000e618:	636f6c62 0000006b 20646142 20464947     block...Bad GIF 
d000e628:	746e6f63 206c6f72 6d726574 74616e69     control terminat
d000e638:	0000726f 20464947 67616d69 65642065     or..GIF image de
d000e648:	69726373 726f7470 20736920 6e757274     scriptor is trun
d000e658:	65746163 00000064 61766e49 2064696c     cated...Invalid 
d000e668:	20464947 6d617266 69642065 736e656d     GIF frame dimens
d000e678:	736e6f69 00000000 20464947 61636f6c     ions....GIF loca
d000e688:	6170206c 7474656c 73692065 75727420     l palette is tru
d000e698:	7461636e 00006465 20464947 67616d69     ncated..GIF imag
d000e6a8:	61642065 69206174 696d2073 6e697373     e data is missin
d000e6b8:	00000067 20746f4e 756f6e65 6d206867     g...Not enough m
d000e6c8:	726f6d65 6f662079 49472072 61642046     emory for GIF da
d000e6d8:	00006174 75736e55 726f7070 20646574     ta..Unsupported 
d000e6e8:	20464947 65646f63 7a697320 00000065     GIF code size...
d000e6f8:	20746f4e 756f6e65 6d206867 726f6d65     Not enough memor
d000e708:	6f662079 49472072 5a4c2046 00000057     y for GIF LZW...
d000e718:	20464947 636f6c62 616d206b 72656b72     GIF block marker
d000e728:	20736920 75736e75 726f7070 00646574      is unsupported.
d000e738:	20464947 65646e65 65622064 65726f66     GIF ended before
d000e748:	616d6920 64206567 00617461 6e6b6e55      image data.Unkn
d000e758:	206e776f 67616d69 6f662065 74616d72     own image format
d000e768:	00000000 20464947 20575a4c 61746164     ....GIF LZW data
d000e778:	20736920 72726f63 00747075 20464947      is corrupt.GIF 
d000e788:	67616d69 61642065 69206174 72742073     image data is tr
d000e798:	61636e75 00646574 64616f4c 20676e69     uncated.Loading 
d000e7a8:	67616d69 2e2e2e65 656c5020 20657361     image... Please 
d000e7b8:	74696177 002e2e2e                       wait....

d000e7c0 <starts.10199>:
d000e7c0:	01020400                                ....

d000e7c4 <steps.10200>:
d000e7c4:	02040808 7566202c 6974636e 203a6e6f     ...., function: 
d000e7d4:	73736100 69747265 22206e6f 20227325     .assertion "%s" 
d000e7e4:	6c696166 203a6465 656c6966 73252220     failed: file "%s
d000e7f4:	6c202c22 20656e69 73256425 000a7325     ", line %d%s%s..

d000e804 <_global_impure_ptr>:
d000e804:	d000e8a8 2b302d23 6c680020 6665004c     ....#-0+ .hlL.ef
d000e814:	47464567 32313000 36353433 41393837     gEFG.0123456789A
d000e824:	45444342 31300046 35343332 39383736     BCDEF.0123456789
d000e834:	64636261 00006665                       abcdef..

d000e83c <__sf_fake_stderr>:
	...

d000e85c <__sf_fake_stdin>:
	...

d000e87c <__sf_fake_stdout>:
	...

Disassembly of section .init:

d000e89c <_init>:
d000e89c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d000e89e:	bf00      	nop

Disassembly of section .fini:

d000e8a0 <_fini>:
d000e8a0:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d000e8a2:	bf00      	nop

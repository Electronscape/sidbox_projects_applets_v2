
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
d000101e:	f002 fcff 	bl	d0003a20 <setbuf>
d0001022:	6833      	ldr	r3, [r6, #0]
d0001024:	2100      	movs	r1, #0
d0001026:	68d8      	ldr	r0, [r3, #12]
d0001028:	f002 fcfa 	bl	d0003a20 <setbuf>
d000102c:	4629      	mov	r1, r5
d000102e:	4620      	mov	r0, r4
d0001030:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
d0001034:	f000 be1c 	b.w	d0001c70 <main>
d0001038:	d0005228 	.word	0xd0005228

d000103c <gfx_createBitmap>:
d000103c:	b510      	push	{r4, lr}
d000103e:	4604      	mov	r4, r0
d0001040:	fb01 f002 	mul.w	r0, r1, r2
d0001044:	b292      	uxth	r2, r2
d0001046:	80a1      	strh	r1, [r4, #4]
d0001048:	60e0      	str	r0, [r4, #12]
d000104a:	80e2      	strh	r2, [r4, #6]
d000104c:	8122      	strh	r2, [r4, #8]
d000104e:	f002 fa65 	bl	d000351c <malloc>
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
d0001064:	d0008fd8 	.word	0xd0008fd8
d0001068:	d0600000 	.word	0xd0600000
d000106c:	d0006f6c 	.word	0xd0006f6c

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
d00010b8:	f002 fa2a 	bl	d0003510 <__errno>
d00010bc:	2209      	movs	r2, #9
d00010be:	4603      	mov	r3, r0
d00010c0:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d00010c4:	601a      	str	r2, [r3, #0]
d00010c6:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d00010c8:	d00052a4 	.word	0xd00052a4
d00010cc:	2001f000 	.word	0x2001f000

d00010d0 <_read>:
d00010d0:	b508      	push	{r3, lr}
d00010d2:	f002 fa1d 	bl	d0003510 <__errno>
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
d000111e:	f002 f9f7 	bl	d0003510 <__errno>
d0001122:	220c      	movs	r2, #12
d0001124:	4603      	mov	r3, r0
d0001126:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d000112a:	601a      	str	r2, [r3, #0]
d000112c:	bd10      	pop	{r4, pc}
d000112e:	bf00      	nop
d0001130:	d00052a0 	.word	0xd00052a0
d0001134:	d0008fd8 	.word	0xd0008fd8
d0001138:	d0600000 	.word	0xd0600000

d000113c <_isatty>:
d000113c:	2001      	movs	r0, #1
d000113e:	4770      	bx	lr

d0001140 <compare_bins>:
d0001140:	4b19      	ldr	r3, [pc, #100]	; (d00011a8 <compare_bins+0x68>)
d0001142:	8802      	ldrh	r2, [r0, #0]
d0001144:	b410      	push	{r4}
d0001146:	781c      	ldrb	r4, [r3, #0]
d0001148:	880b      	ldrh	r3, [r1, #0]
d000114a:	b95c      	cbnz	r4, d0001164 <compare_bins+0x24>
d000114c:	0ad0      	lsrs	r0, r2, #11
d000114e:	f85d 4b04 	ldr.w	r4, [sp], #4
d0001152:	0ad9      	lsrs	r1, r3, #11
d0001154:	0b52      	lsrs	r2, r2, #13
d0001156:	0b5b      	lsrs	r3, r3, #13
d0001158:	ea42 00c0 	orr.w	r0, r2, r0, lsl #3
d000115c:	ea43 03c1 	orr.w	r3, r3, r1, lsl #3
d0001160:	1ac0      	subs	r0, r0, r3
d0001162:	4770      	bx	lr
d0001164:	2c01      	cmp	r4, #1
d0001166:	d00f      	beq.n	d0001188 <compare_bins+0x48>
d0001168:	f002 001f 	and.w	r0, r2, #31
d000116c:	f003 011f 	and.w	r1, r3, #31
d0001170:	f3c2 0282 	ubfx	r2, r2, #2, #3
d0001174:	f3c3 0382 	ubfx	r3, r3, #2, #3
d0001178:	f85d 4b04 	ldr.w	r4, [sp], #4
d000117c:	ea42 00c0 	orr.w	r0, r2, r0, lsl #3
d0001180:	ea43 03c1 	orr.w	r3, r3, r1, lsl #3
d0001184:	1ac0      	subs	r0, r0, r3
d0001186:	4770      	bx	lr
d0001188:	f3c2 1045 	ubfx	r0, r2, #5, #6
d000118c:	f3c3 1145 	ubfx	r1, r3, #5, #6
d0001190:	f3c2 2241 	ubfx	r2, r2, #9, #2
d0001194:	f3c3 2341 	ubfx	r3, r3, #9, #2
d0001198:	f85d 4b04 	ldr.w	r4, [sp], #4
d000119c:	ea42 0080 	orr.w	r0, r2, r0, lsl #2
d00011a0:	ea43 0381 	orr.w	r3, r3, r1, lsl #2
d00011a4:	1ac0      	subs	r0, r0, r3
d00011a6:	4770      	bx	lr
d00011a8:	d0006ec0 	.word	0xd0006ec0

d00011ac <update_box>:
d00011ac:	e9d0 2300 	ldrd	r2, r3, [r0]
d00011b0:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d00011b4:	4413      	add	r3, r2
d00011b6:	b085      	sub	sp, #20
d00011b8:	429a      	cmp	r2, r3
d00011ba:	9003      	str	r0, [sp, #12]
d00011bc:	d25b      	bcs.n	d0001276 <update_box+0xca>
d00011be:	4832      	ldr	r0, [pc, #200]	; (d0001288 <update_box+0xdc>)
d00011c0:	f06f 4100 	mvn.w	r1, #2147483648	; 0x80000000
d00011c4:	4c31      	ldr	r4, [pc, #196]	; (d000128c <update_box+0xe0>)
d00011c6:	f04f 0800 	mov.w	r8, #0
d00011ca:	6800      	ldr	r0, [r0, #0]
d00011cc:	4411      	add	r1, r2
d00011ce:	6822      	ldr	r2, [r4, #0]
d00011d0:	26ff      	movs	r6, #255	; 0xff
d00011d2:	eb00 0e41 	add.w	lr, r0, r1, lsl #1
d00011d6:	4645      	mov	r5, r8
d00011d8:	9201      	str	r2, [sp, #4]
d00011da:	1e82      	subs	r2, r0, #2
d00011dc:	46b4      	mov	ip, r6
d00011de:	4640      	mov	r0, r8
d00011e0:	eb02 0343 	add.w	r3, r2, r3, lsl #1
d00011e4:	4637      	mov	r7, r6
d00011e6:	4642      	mov	r2, r8
d00011e8:	9302      	str	r3, [sp, #8]
d00011ea:	f83e 3f02 	ldrh.w	r3, [lr, #2]!
d00011ee:	0ad9      	lsrs	r1, r3, #11
d00011f0:	f3c3 1b45 	ubfx	fp, r3, #5, #6
d00011f4:	ea4f 3953 	mov.w	r9, r3, lsr #13
d00011f8:	f3c3 2441 	ubfx	r4, r3, #9, #2
d00011fc:	f003 0a1f 	and.w	sl, r3, #31
d0001200:	ea49 09c1 	orr.w	r9, r9, r1, lsl #3
d0001204:	f3c3 0182 	ubfx	r1, r3, #2, #3
d0001208:	ea44 048b 	orr.w	r4, r4, fp, lsl #2
d000120c:	454f      	cmp	r7, r9
d000120e:	ea41 01ca 	orr.w	r1, r1, sl, lsl #3
d0001212:	ea4f 1303 	mov.w	r3, r3, lsl #4
d0001216:	bf28      	it	cs
d0001218:	464f      	movcs	r7, r9
d000121a:	454a      	cmp	r2, r9
d000121c:	bf38      	it	cc
d000121e:	464a      	movcc	r2, r9
d0001220:	45a4      	cmp	ip, r4
d0001222:	b2ff      	uxtb	r7, r7
d0001224:	bf28      	it	cs
d0001226:	46a4      	movcs	ip, r4
d0001228:	4284      	cmp	r4, r0
d000122a:	b2d2      	uxtb	r2, r2
d000122c:	bf38      	it	cc
d000122e:	4604      	movcc	r4, r0
d0001230:	9801      	ldr	r0, [sp, #4]
d0001232:	428e      	cmp	r6, r1
d0001234:	fa5f fc8c 	uxtb.w	ip, ip
d0001238:	58c3      	ldr	r3, [r0, r3]
d000123a:	b2e0      	uxtb	r0, r4
d000123c:	bf28      	it	cs
d000123e:	460e      	movcs	r6, r1
d0001240:	42a9      	cmp	r1, r5
d0001242:	4498      	add	r8, r3
d0001244:	9b02      	ldr	r3, [sp, #8]
d0001246:	bf38      	it	cc
d0001248:	4629      	movcc	r1, r5
d000124a:	b2f6      	uxtb	r6, r6
d000124c:	459e      	cmp	lr, r3
d000124e:	b2cd      	uxtb	r5, r1
d0001250:	d1cb      	bne.n	d00011ea <update_box+0x3e>
d0001252:	2300      	movs	r3, #0
d0001254:	9903      	ldr	r1, [sp, #12]
d0001256:	f367 0307 	bfi	r3, r7, #0, #8
d000125a:	740e      	strb	r6, [r1, #16]
d000125c:	744d      	strb	r5, [r1, #17]
d000125e:	f362 230f 	bfi	r3, r2, #8, #8
d0001262:	f8c1 8008 	str.w	r8, [r1, #8]
d0001266:	f36c 4317 	bfi	r3, ip, #16, #8
d000126a:	f360 631f 	bfi	r3, r0, #24, #8
d000126e:	60cb      	str	r3, [r1, #12]
d0001270:	b005      	add	sp, #20
d0001272:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0001276:	f04f 0800 	mov.w	r8, #0
d000127a:	26ff      	movs	r6, #255	; 0xff
d000127c:	4645      	mov	r5, r8
d000127e:	4640      	mov	r0, r8
d0001280:	4642      	mov	r2, r8
d0001282:	46b4      	mov	ip, r6
d0001284:	4637      	mov	r7, r6
d0001286:	e7e4      	b.n	d0001252 <update_box+0xa6>
d0001288:	d00052b0 	.word	0xd00052b0
d000128c:	d0006ab4 	.word	0xd0006ab4

d0001290 <wait_for_exit_combo>:
d0001290:	b510      	push	{r4, lr}
d0001292:	4c11      	ldr	r4, [pc, #68]	; (d00012d8 <wait_for_exit_combo+0x48>)
d0001294:	7820      	ldrb	r0, [r4, #0]
d0001296:	7861      	ldrb	r1, [r4, #1]
d0001298:	78a2      	ldrb	r2, [r4, #2]
d000129a:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d000129e:	78e3      	ldrb	r3, [r4, #3]
d00012a0:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d00012a4:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d00012a8:	6a1b      	ldr	r3, [r3, #32]
d00012aa:	4798      	blx	r3
d00012ac:	f000 0003 	and.w	r0, r0, #3
d00012b0:	2803      	cmp	r0, #3
d00012b2:	d1ef      	bne.n	d0001294 <wait_for_exit_combo+0x4>
d00012b4:	7820      	ldrb	r0, [r4, #0]
d00012b6:	7861      	ldrb	r1, [r4, #1]
d00012b8:	78a2      	ldrb	r2, [r4, #2]
d00012ba:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d00012be:	78e3      	ldrb	r3, [r4, #3]
d00012c0:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d00012c4:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d00012c8:	6a1b      	ldr	r3, [r3, #32]
d00012ca:	4798      	blx	r3
d00012cc:	f000 0003 	and.w	r0, r0, #3
d00012d0:	2803      	cmp	r0, #3
d00012d2:	d0ef      	beq.n	d00012b4 <wait_for_exit_combo+0x24>
d00012d4:	bd10      	pop	{r4, pc}
d00012d6:	bf00      	nop
d00012d8:	2001f000 	.word	0x2001f000

d00012dc <set_status>:
d00012dc:	b570      	push	{r4, r5, r6, lr}
d00012de:	4d13      	ldr	r5, [pc, #76]	; (d000132c <set_status+0x50>)
d00012e0:	4601      	mov	r1, r0
d00012e2:	4c13      	ldr	r4, [pc, #76]	; (d0001330 <set_status+0x54>)
d00012e4:	229f      	movs	r2, #159	; 0x9f
d00012e6:	4628      	mov	r0, r5
d00012e8:	f002 fc9c 	bl	d0003c24 <strncpy>
d00012ec:	7823      	ldrb	r3, [r4, #0]
d00012ee:	7862      	ldrb	r2, [r4, #1]
d00012f0:	2000      	movs	r0, #0
d00012f2:	78a1      	ldrb	r1, [r4, #2]
d00012f4:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d00012f8:	78e2      	ldrb	r2, [r4, #3]
d00012fa:	f885 009f 	strb.w	r0, [r5, #159]	; 0x9f
d00012fe:	4628      	mov	r0, r5
d0001300:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0001304:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0001308:	68db      	ldr	r3, [r3, #12]
d000130a:	4798      	blx	r3
d000130c:	7823      	ldrb	r3, [r4, #0]
d000130e:	7862      	ldrb	r2, [r4, #1]
d0001310:	78a1      	ldrb	r1, [r4, #2]
d0001312:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0001316:	78e2      	ldrb	r2, [r4, #3]
d0001318:	4806      	ldr	r0, [pc, #24]	; (d0001334 <set_status+0x58>)
d000131a:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d000131e:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0001322:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
d0001326:	68db      	ldr	r3, [r3, #12]
d0001328:	4718      	bx	r3
d000132a:	bf00      	nop
d000132c:	d0006ec4 	.word	0xd0006ec4
d0001330:	2001f000 	.word	0x2001f000
d0001334:	d0004d64 	.word	0xd0004d64

d0001338 <scale_masked.part.0>:
d0001338:	f011 0201 	ands.w	r2, r1, #1
d000133c:	460b      	mov	r3, r1
d000133e:	b410      	push	{r4}
d0001340:	d116      	bne.n	d0001370 <scale_masked.part.0+0x38>
d0001342:	085b      	lsrs	r3, r3, #1
d0001344:	3201      	adds	r2, #1
d0001346:	07dc      	lsls	r4, r3, #31
d0001348:	d5fb      	bpl.n	d0001342 <scale_masked.part.0+0xa>
d000134a:	b1e9      	cbz	r1, d0001388 <scale_masked.part.0+0x50>
d000134c:	460b      	mov	r3, r1
d000134e:	e001      	b.n	d0001354 <scale_masked.part.0+0x1c>
d0001350:	07dc      	lsls	r4, r3, #31
d0001352:	d40e      	bmi.n	d0001372 <scale_masked.part.0+0x3a>
d0001354:	085b      	lsrs	r3, r3, #1
d0001356:	d1fb      	bne.n	d0001350 <scale_masked.part.0+0x18>
d0001358:	461c      	mov	r4, r3
d000135a:	4001      	ands	r1, r0
d000135c:	40d1      	lsrs	r1, r2
d000135e:	ebc1 2101 	rsb	r1, r1, r1, lsl #8
d0001362:	1908      	adds	r0, r1, r4
d0001364:	f85d 4b04 	ldr.w	r4, [sp], #4
d0001368:	fbb0 f0f3 	udiv	r0, r0, r3
d000136c:	b2c0      	uxtb	r0, r0
d000136e:	4770      	bx	lr
d0001370:	2200      	movs	r2, #0
d0001372:	2400      	movs	r4, #0
d0001374:	085b      	lsrs	r3, r3, #1
d0001376:	3401      	adds	r4, #1
d0001378:	f013 0f01 	tst.w	r3, #1
d000137c:	d1fa      	bne.n	d0001374 <scale_masked.part.0+0x3c>
d000137e:	2301      	movs	r3, #1
d0001380:	40a3      	lsls	r3, r4
d0001382:	3b01      	subs	r3, #1
d0001384:	085c      	lsrs	r4, r3, #1
d0001386:	e7e8      	b.n	d000135a <scale_masked.part.0+0x22>
d0001388:	460c      	mov	r4, r1
d000138a:	460b      	mov	r3, r1
d000138c:	e7e5      	b.n	d000135a <scale_masked.part.0+0x22>
d000138e:	bf00      	nop

d0001390 <render_view.constprop.0>:
d0001390:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0001394:	f8df 9168 	ldr.w	r9, [pc, #360]	; d0001500 <render_view.constprop.0+0x170>
d0001398:	b081      	sub	sp, #4
d000139a:	468a      	mov	sl, r1
d000139c:	f8b9 b000 	ldrh.w	fp, [r9]
d00013a0:	f8b9 7002 	ldrh.w	r7, [r9, #2]
d00013a4:	f5bb 7ff0 	cmp.w	fp, #480	; 0x1e0
d00013a8:	f080 8097 	bcs.w	d00014da <render_view.constprop.0+0x14a>
d00013ac:	f5cb 75f0 	rsb	r5, fp, #480	; 0x1e0
d00013b0:	2600      	movs	r6, #0
d00013b2:	106d      	asrs	r5, r5, #1
d00013b4:	f5b7 7fa0 	cmp.w	r7, #320	; 0x140
d00013b8:	f080 808a 	bcs.w	d00014d0 <render_view.constprop.0+0x140>
d00013bc:	f5c7 78a0 	rsb	r8, r7, #320	; 0x140
d00013c0:	f04f 0a00 	mov.w	sl, #0
d00013c4:	ea4f 0868 	mov.w	r8, r8, asr #1
d00013c8:	4c49      	ldr	r4, [pc, #292]	; (d00014f0 <render_view.constprop.0+0x160>)
d00013ca:	7b23      	ldrb	r3, [r4, #12]
d00013cc:	7b62      	ldrb	r2, [r4, #13]
d00013ce:	7ba1      	ldrb	r1, [r4, #14]
d00013d0:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d00013d4:	7be2      	ldrb	r2, [r4, #15]
d00013d6:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d00013da:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00013de:	681b      	ldr	r3, [r3, #0]
d00013e0:	68db      	ldr	r3, [r3, #12]
d00013e2:	4798      	blx	r3
d00013e4:	7b23      	ldrb	r3, [r4, #12]
d00013e6:	7b62      	ldrb	r2, [r4, #13]
d00013e8:	7ba1      	ldrb	r1, [r4, #14]
d00013ea:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d00013ee:	7be2      	ldrb	r2, [r4, #15]
d00013f0:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d00013f4:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00013f8:	685b      	ldr	r3, [r3, #4]
d00013fa:	681b      	ldr	r3, [r3, #0]
d00013fc:	4798      	blx	r3
d00013fe:	7b23      	ldrb	r3, [r4, #12]
d0001400:	7b62      	ldrb	r2, [r4, #13]
d0001402:	7ba1      	ldrb	r1, [r4, #14]
d0001404:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0001408:	7be2      	ldrb	r2, [r4, #15]
d000140a:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d000140e:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0001412:	681b      	ldr	r3, [r3, #0]
d0001414:	6b5b      	ldr	r3, [r3, #52]	; 0x34
d0001416:	4798      	blx	r3
d0001418:	b388      	cbz	r0, d000147e <render_view.constprop.0+0xee>
d000141a:	6801      	ldr	r1, [r0, #0]
d000141c:	b379      	cbz	r1, d000147e <render_view.constprop.0+0xee>
d000141e:	f1bb 0f00 	cmp.w	fp, #0
d0001422:	d02c      	beq.n	d000147e <render_view.constprop.0+0xee>
d0001424:	b35f      	cbz	r7, d000147e <render_view.constprop.0+0xee>
d0001426:	eb05 0585 	add.w	r5, r5, r5, lsl #2
d000142a:	44b3      	add	fp, r6
d000142c:	eb08 1885 	add.w	r8, r8, r5, lsl #6
d0001430:	f10b 3bff 	add.w	fp, fp, #4294967295	; 0xffffffff
d0001434:	f8b9 2000 	ldrh.w	r2, [r9]
d0001438:	2f01      	cmp	r7, #1
d000143a:	f8d9 c004 	ldr.w	ip, [r9, #4]
d000143e:	fb0a 6202 	mla	r2, sl, r2, r6
d0001442:	f81c 3002 	ldrb.w	r3, [ip, r2]
d0001446:	f801 3008 	strb.w	r3, [r1, r8]
d000144a:	d011      	beq.n	d0001470 <render_view.constprop.0+0xe0>
d000144c:	f108 0301 	add.w	r3, r8, #1
d0001450:	eb01 0508 	add.w	r5, r1, r8
d0001454:	4462      	add	r2, ip
d0001456:	440b      	add	r3, r1
d0001458:	eb07 0c05 	add.w	ip, r7, r5
d000145c:	f8b9 e000 	ldrh.w	lr, [r9]
d0001460:	1b59      	subs	r1, r3, r5
d0001462:	fb01 f10e 	mul.w	r1, r1, lr
d0001466:	5c51      	ldrb	r1, [r2, r1]
d0001468:	f803 1b01 	strb.w	r1, [r3], #1
d000146c:	459c      	cmp	ip, r3
d000146e:	d1f5      	bne.n	d000145c <render_view.constprop.0+0xcc>
d0001470:	45b3      	cmp	fp, r6
d0001472:	f508 78a0 	add.w	r8, r8, #320	; 0x140
d0001476:	d002      	beq.n	d000147e <render_view.constprop.0+0xee>
d0001478:	3601      	adds	r6, #1
d000147a:	6801      	ldr	r1, [r0, #0]
d000147c:	e7da      	b.n	d0001434 <render_view.constprop.0+0xa4>
d000147e:	4a1d      	ldr	r2, [pc, #116]	; (d00014f4 <render_view.constprop.0+0x164>)
d0001480:	7813      	ldrb	r3, [r2, #0]
d0001482:	f1c3 0301 	rsb	r3, r3, #1
d0001486:	b2db      	uxtb	r3, r3
d0001488:	7013      	strb	r3, [r2, #0]
d000148a:	7813      	ldrb	r3, [r2, #0]
d000148c:	7b20      	ldrb	r0, [r4, #12]
d000148e:	7b61      	ldrb	r1, [r4, #13]
d0001490:	7ba2      	ldrb	r2, [r4, #14]
d0001492:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d0001496:	b32b      	cbz	r3, d00014e4 <render_view.constprop.0+0x154>
d0001498:	7be3      	ldrb	r3, [r4, #15]
d000149a:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d000149e:	4d16      	ldr	r5, [pc, #88]	; (d00014f8 <render_view.constprop.0+0x168>)
d00014a0:	4816      	ldr	r0, [pc, #88]	; (d00014fc <render_view.constprop.0+0x16c>)
d00014a2:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d00014a6:	6829      	ldr	r1, [r5, #0]
d00014a8:	6800      	ldr	r0, [r0, #0]
d00014aa:	681b      	ldr	r3, [r3, #0]
d00014ac:	6a5b      	ldr	r3, [r3, #36]	; 0x24
d00014ae:	4798      	blx	r3
d00014b0:	7b23      	ldrb	r3, [r4, #12]
d00014b2:	7b62      	ldrb	r2, [r4, #13]
d00014b4:	7ba1      	ldrb	r1, [r4, #14]
d00014b6:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d00014ba:	7be2      	ldrb	r2, [r4, #15]
d00014bc:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d00014c0:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00014c4:	681b      	ldr	r3, [r3, #0]
d00014c6:	681b      	ldr	r3, [r3, #0]
d00014c8:	b001      	add	sp, #4
d00014ca:	e8bd 4ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d00014ce:	4718      	bx	r3
d00014d0:	f44f 77a0 	mov.w	r7, #320	; 0x140
d00014d4:	f04f 0800 	mov.w	r8, #0
d00014d8:	e776      	b.n	d00013c8 <render_view.constprop.0+0x38>
d00014da:	4606      	mov	r6, r0
d00014dc:	f44f 7bf0 	mov.w	fp, #480	; 0x1e0
d00014e0:	2500      	movs	r5, #0
d00014e2:	e767      	b.n	d00013b4 <render_view.constprop.0+0x24>
d00014e4:	7be3      	ldrb	r3, [r4, #15]
d00014e6:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d00014ea:	4d04      	ldr	r5, [pc, #16]	; (d00014fc <render_view.constprop.0+0x16c>)
d00014ec:	4802      	ldr	r0, [pc, #8]	; (d00014f8 <render_view.constprop.0+0x168>)
d00014ee:	e7d8      	b.n	d00014a2 <render_view.constprop.0+0x112>
d00014f0:	2001f000 	.word	0x2001f000
d00014f4:	d00052a8 	.word	0xd00052a8
d00014f8:	d0006fa0 	.word	0xd0006fa0
d00014fc:	d0006fc0 	.word	0xd0006fc0
d0001500:	d0006ab8 	.word	0xd0006ab8

d0001504 <quantize_rgb_to_image.constprop.0>:
d0001504:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0001508:	460b      	mov	r3, r1
d000150a:	b08b      	sub	sp, #44	; 0x2c
d000150c:	2110      	movs	r1, #16
d000150e:	4606      	mov	r6, r0
d0001510:	f44f 3080 	mov.w	r0, #65536	; 0x10000
d0001514:	9304      	str	r3, [sp, #16]
d0001516:	f001 fff3 	bl	d0003500 <calloc>
d000151a:	4b87      	ldr	r3, [pc, #540]	; (d0001738 <quantize_rgb_to_image.constprop.0+0x234>)
d000151c:	4605      	mov	r5, r0
d000151e:	f44f 3000 	mov.w	r0, #131072	; 0x20000
d0001522:	601d      	str	r5, [r3, #0]
d0001524:	f001 fffa 	bl	d000351c <malloc>
d0001528:	4603      	mov	r3, r0
d000152a:	4a84      	ldr	r2, [pc, #528]	; (d000173c <quantize_rgb_to_image.constprop.0+0x238>)
d000152c:	f44f 3080 	mov.w	r0, #65536	; 0x10000
d0001530:	461c      	mov	r4, r3
d0001532:	9301      	str	r3, [sp, #4]
d0001534:	6013      	str	r3, [r2, #0]
d0001536:	f001 fff1 	bl	d000351c <malloc>
d000153a:	4b81      	ldr	r3, [pc, #516]	; (d0001740 <quantize_rgb_to_image.constprop.0+0x23c>)
d000153c:	2c00      	cmp	r4, #0
d000153e:	bf18      	it	ne
d0001540:	2d00      	cmpne	r5, #0
d0001542:	4680      	mov	r8, r0
d0001544:	6018      	str	r0, [r3, #0]
d0001546:	f000 8285 	beq.w	d0001a54 <quantize_rgb_to_image.constprop.0+0x550>
d000154a:	fab0 f480 	clz	r4, r0
d000154e:	0964      	lsrs	r4, r4, #5
d0001550:	2800      	cmp	r0, #0
d0001552:	f000 827f 	beq.w	d0001a54 <quantize_rgb_to_image.constprop.0+0x550>
d0001556:	f44f 3280 	mov.w	r2, #65536	; 0x10000
d000155a:	21ff      	movs	r1, #255	; 0xff
d000155c:	f001 fffc 	bl	d0003558 <memset>
d0001560:	9b04      	ldr	r3, [sp, #16]
d0001562:	2b00      	cmp	r3, #0
d0001564:	f000 824a 	beq.w	d00019fc <quantize_rgb_to_image.constprop.0+0x4f8>
d0001568:	eb03 0a43 	add.w	sl, r3, r3, lsl #1
d000156c:	4632      	mov	r2, r6
d000156e:	46a6      	mov	lr, r4
d0001570:	f8dd b004 	ldr.w	fp, [sp, #4]
d0001574:	44b2      	add	sl, r6
d0001576:	9609      	str	r6, [sp, #36]	; 0x24
d0001578:	f892 c001 	ldrb.w	ip, [r2, #1]
d000157c:	3203      	adds	r2, #3
d000157e:	f812 1c03 	ldrb.w	r1, [r2, #-3]
d0001582:	ea4f 009c 	mov.w	r0, ip, lsr #2
d0001586:	f812 4c01 	ldrb.w	r4, [r2, #-1]
d000158a:	08cb      	lsrs	r3, r1, #3
d000158c:	0140      	lsls	r0, r0, #5
d000158e:	ea40 20c3 	orr.w	r0, r0, r3, lsl #11
d0001592:	ea40 00d4 	orr.w	r0, r0, r4, lsr #3
d0001596:	0106      	lsls	r6, r0, #4
d0001598:	eb05 1300 	add.w	r3, r5, r0, lsl #4
d000159c:	59af      	ldr	r7, [r5, r6]
d000159e:	f107 0901 	add.w	r9, r7, #1
d00015a2:	b91f      	cbnz	r7, d00015ac <quantize_rgb_to_image.constprop.0+0xa8>
d00015a4:	f82b 001e 	strh.w	r0, [fp, lr, lsl #1]
d00015a8:	f10e 0e01 	add.w	lr, lr, #1
d00015ac:	685f      	ldr	r7, [r3, #4]
d00015ae:	4592      	cmp	sl, r2
d00015b0:	6898      	ldr	r0, [r3, #8]
d00015b2:	4439      	add	r1, r7
d00015b4:	68df      	ldr	r7, [r3, #12]
d00015b6:	4460      	add	r0, ip
d00015b8:	f845 9006 	str.w	r9, [r5, r6]
d00015bc:	443c      	add	r4, r7
d00015be:	6059      	str	r1, [r3, #4]
d00015c0:	e9c3 0402 	strd	r0, r4, [r3, #8]
d00015c4:	d1d8      	bne.n	d0001578 <quantize_rgb_to_image.constprop.0+0x74>
d00015c6:	f1be 0f00 	cmp.w	lr, #0
d00015ca:	f000 8217 	beq.w	d00019fc <quantize_rgb_to_image.constprop.0+0x4f8>
d00015ce:	f8df 8174 	ldr.w	r8, [pc, #372]	; d0001744 <quantize_rgb_to_image.constprop.0+0x240>
d00015d2:	2300      	movs	r3, #0
d00015d4:	485b      	ldr	r0, [pc, #364]	; (d0001744 <quantize_rgb_to_image.constprop.0+0x240>)
d00015d6:	2401      	movs	r4, #1
d00015d8:	46c3      	mov	fp, r8
d00015da:	9003      	str	r0, [sp, #12]
d00015dc:	e9c0 3e00 	strd	r3, lr, [r0]
d00015e0:	f7ff fde4 	bl	d00011ac <update_box>
d00015e4:	2000      	movs	r0, #0
d00015e6:	fa1f f984 	uxth.w	r9, r4
d00015ea:	9b03      	ldr	r3, [sp, #12]
d00015ec:	f04f 36ff 	mov.w	r6, #4294967295	; 0xffffffff
d00015f0:	4605      	mov	r5, r0
d00015f2:	7b99      	ldrb	r1, [r3, #14]
d00015f4:	3314      	adds	r3, #20
d00015f6:	f813 cc08 	ldrb.w	ip, [r3, #-8]
d00015fa:	f813 2c05 	ldrb.w	r2, [r3, #-5]
d00015fe:	f813 7c07 	ldrb.w	r7, [r3, #-7]
d0001602:	1a52      	subs	r2, r2, r1
d0001604:	f813 1c03 	ldrb.w	r1, [r3, #-3]
d0001608:	eba7 070c 	sub.w	r7, r7, ip
d000160c:	f813 cc04 	ldrb.w	ip, [r3, #-4]
d0001610:	42ba      	cmp	r2, r7
d0001612:	eba1 010c 	sub.w	r1, r1, ip
d0001616:	bf38      	it	cc
d0001618:	463a      	movcc	r2, r7
d000161a:	f853 7c0c 	ldr.w	r7, [r3, #-12]
d000161e:	428a      	cmp	r2, r1
d0001620:	bf38      	it	cc
d0001622:	460a      	movcc	r2, r1
d0001624:	f853 1c10 	ldr.w	r1, [r3, #-16]
d0001628:	2901      	cmp	r1, #1
d000162a:	fb07 f202 	mul.w	r2, r7, r2
d000162e:	d903      	bls.n	d0001638 <quantize_rgb_to_image.constprop.0+0x134>
d0001630:	42aa      	cmp	r2, r5
d0001632:	d901      	bls.n	d0001638 <quantize_rgb_to_image.constprop.0+0x134>
d0001634:	4615      	mov	r5, r2
d0001636:	4606      	mov	r6, r0
d0001638:	3001      	adds	r0, #1
d000163a:	42a0      	cmp	r0, r4
d000163c:	d1d9      	bne.n	d00015f2 <quantize_rgb_to_image.constprop.0+0xee>
d000163e:	1c73      	adds	r3, r6, #1
d0001640:	f000 8086 	beq.w	d0001750 <quantize_rgb_to_image.constprop.0+0x24c>
d0001644:	eb06 0586 	add.w	r5, r6, r6, lsl #2
d0001648:	00b3      	lsls	r3, r6, #2
d000164a:	eb08 0585 	add.w	r5, r8, r5, lsl #2
d000164e:	9302      	str	r3, [sp, #8]
d0001650:	7be9      	ldrb	r1, [r5, #15]
d0001652:	7c28      	ldrb	r0, [r5, #16]
d0001654:	7baa      	ldrb	r2, [r5, #14]
d0001656:	7c6b      	ldrb	r3, [r5, #17]
d0001658:	1a8a      	subs	r2, r1, r2
d000165a:	7b2f      	ldrb	r7, [r5, #12]
d000165c:	1a1b      	subs	r3, r3, r0
d000165e:	7b69      	ldrb	r1, [r5, #13]
d0001660:	4610      	mov	r0, r2
d0001662:	429a      	cmp	r2, r3
d0001664:	eba1 0107 	sub.w	r1, r1, r7
d0001668:	bf38      	it	cc
d000166a:	4618      	movcc	r0, r3
d000166c:	4281      	cmp	r1, r0
d000166e:	d356      	bcc.n	d000171e <quantize_rgb_to_image.constprop.0+0x21a>
d0001670:	2300      	movs	r3, #0
d0001672:	4a35      	ldr	r2, [pc, #212]	; (d0001748 <quantize_rgb_to_image.constprop.0+0x244>)
d0001674:	7013      	strb	r3, [r2, #0]
d0001676:	00b3      	lsls	r3, r6, #2
d0001678:	9801      	ldr	r0, [sp, #4]
d000167a:	2202      	movs	r2, #2
d000167c:	eb03 0a06 	add.w	sl, r3, r6
d0001680:	4b32      	ldr	r3, [pc, #200]	; (d000174c <quantize_rgb_to_image.constprop.0+0x248>)
d0001682:	eb08 098a 	add.w	r9, r8, sl, lsl #2
d0001686:	f858 702a 	ldr.w	r7, [r8, sl, lsl #2]
d000168a:	f8d9 1004 	ldr.w	r1, [r9, #4]
d000168e:	eb00 0047 	add.w	r0, r0, r7, lsl #1
d0001692:	f002 f874 	bl	d000377e <qsort>
d0001696:	f858 a02a 	ldr.w	sl, [r8, sl, lsl #2]
d000169a:	f06f 4000 	mvn.w	r0, #2147483648	; 0x80000000
d000169e:	4b27      	ldr	r3, [pc, #156]	; (d000173c <quantize_rgb_to_image.constprop.0+0x238>)
d00016a0:	f8d9 7008 	ldr.w	r7, [r9, #8]
d00016a4:	4652      	mov	r2, sl
d00016a6:	681b      	ldr	r3, [r3, #0]
d00016a8:	4450      	add	r0, sl
d00016aa:	f8d9 9004 	ldr.w	r9, [r9, #4]
d00016ae:	087f      	lsrs	r7, r7, #1
d00016b0:	eb03 0040 	add.w	r0, r3, r0, lsl #1
d00016b4:	9301      	str	r3, [sp, #4]
d00016b6:	4b20      	ldr	r3, [pc, #128]	; (d0001738 <quantize_rgb_to_image.constprop.0+0x234>)
d00016b8:	eb0a 0c09 	add.w	ip, sl, r9
d00016bc:	2100      	movs	r1, #0
d00016be:	f8d3 e000 	ldr.w	lr, [r3]
d00016c2:	e007      	b.n	d00016d4 <quantize_rgb_to_image.constprop.0+0x1d0>
d00016c4:	f830 3f02 	ldrh.w	r3, [r0, #2]!
d00016c8:	011b      	lsls	r3, r3, #4
d00016ca:	f85e 3003 	ldr.w	r3, [lr, r3]
d00016ce:	4419      	add	r1, r3
d00016d0:	428f      	cmp	r7, r1
d00016d2:	d92b      	bls.n	d000172c <quantize_rgb_to_image.constprop.0+0x228>
d00016d4:	4562      	cmp	r2, ip
d00016d6:	f102 0201 	add.w	r2, r2, #1
d00016da:	d3f3      	bcc.n	d00016c4 <quantize_rgb_to_image.constprop.0+0x1c0>
d00016dc:	eb0a 0259 	add.w	r2, sl, r9, lsr #1
d00016e0:	9b02      	ldr	r3, [sp, #8]
d00016e2:	f10b 0b14 	add.w	fp, fp, #20
d00016e6:	f8cb 2000 	str.w	r2, [fp]
d00016ea:	4628      	mov	r0, r5
d00016ec:	4433      	add	r3, r6
d00016ee:	3401      	adds	r4, #1
d00016f0:	461e      	mov	r6, r3
d00016f2:	f858 3023 	ldr.w	r3, [r8, r3, lsl #2]
d00016f6:	4499      	add	r9, r3
d00016f8:	1ad3      	subs	r3, r2, r3
d00016fa:	eb08 0686 	add.w	r6, r8, r6, lsl #2
d00016fe:	eba9 0202 	sub.w	r2, r9, r2
d0001702:	f8cb 2004 	str.w	r2, [fp, #4]
d0001706:	6073      	str	r3, [r6, #4]
d0001708:	f7ff fd50 	bl	d00011ac <update_box>
d000170c:	4658      	mov	r0, fp
d000170e:	f7ff fd4d 	bl	d00011ac <update_box>
d0001712:	f5b4 7f80 	cmp.w	r4, #256	; 0x100
d0001716:	f47f af65 	bne.w	d00015e4 <quantize_rgb_to_image.constprop.0+0xe0>
d000171a:	9407      	str	r4, [sp, #28]
d000171c:	e01a      	b.n	d0001754 <quantize_rgb_to_image.constprop.0+0x250>
d000171e:	429a      	cmp	r2, r3
d0001720:	4a09      	ldr	r2, [pc, #36]	; (d0001748 <quantize_rgb_to_image.constprop.0+0x244>)
d0001722:	bf2c      	ite	cs
d0001724:	2301      	movcs	r3, #1
d0001726:	2302      	movcc	r3, #2
d0001728:	7013      	strb	r3, [r2, #0]
d000172a:	e7a4      	b.n	d0001676 <quantize_rgb_to_image.constprop.0+0x172>
d000172c:	4592      	cmp	sl, r2
d000172e:	d2d5      	bcs.n	d00016dc <quantize_rgb_to_image.constprop.0+0x1d8>
d0001730:	4562      	cmp	r2, ip
d0001732:	d3d5      	bcc.n	d00016e0 <quantize_rgb_to_image.constprop.0+0x1dc>
d0001734:	e7d2      	b.n	d00016dc <quantize_rgb_to_image.constprop.0+0x1d8>
d0001736:	bf00      	nop
d0001738:	d0006ab4 	.word	0xd0006ab4
d000173c:	d00052b0 	.word	0xd00052b0
d0001740:	d00052ac 	.word	0xd00052ac
d0001744:	d00052b4 	.word	0xd00052b4
d0001748:	d0006ec0 	.word	0xd0006ec0
d000174c:	d0001141 	.word	0xd0001141
d0001750:	f8cd 901c 	str.w	r9, [sp, #28]
d0001754:	4bc5      	ldr	r3, [pc, #788]	; (d0001a6c <quantize_rgb_to_image.constprop.0+0x568>)
d0001756:	9907      	ldr	r1, [sp, #28]
d0001758:	681a      	ldr	r2, [r3, #0]
d000175a:	2314      	movs	r3, #20
d000175c:	f8df b328 	ldr.w	fp, [pc, #808]	; d0001a88 <quantize_rgb_to_image.constprop.0+0x584>
d0001760:	9202      	str	r2, [sp, #8]
d0001762:	3a02      	subs	r2, #2
d0001764:	f8dd a00c 	ldr.w	sl, [sp, #12]
d0001768:	9206      	str	r2, [sp, #24]
d000176a:	4ac1      	ldr	r2, [pc, #772]	; (d0001a70 <quantize_rgb_to_image.constprop.0+0x56c>)
d000176c:	9108      	str	r1, [sp, #32]
d000176e:	fb03 2301 	mla	r3, r3, r1, r2
d0001772:	f8cd b004 	str.w	fp, [sp, #4]
d0001776:	9305      	str	r3, [sp, #20]
d0001778:	4bbe      	ldr	r3, [pc, #760]	; (d0001a74 <quantize_rgb_to_image.constprop.0+0x570>)
d000177a:	f8d3 8000 	ldr.w	r8, [r3]
d000177e:	e9da 2300 	ldrd	r2, r3, [sl]
d0001782:	eb02 0b03 	add.w	fp, r2, r3
d0001786:	455a      	cmp	r2, fp
d0001788:	f080 811f 	bcs.w	d00019ca <quantize_rgb_to_image.constprop.0+0x4c6>
d000178c:	9b06      	ldr	r3, [sp, #24]
d000178e:	f102 4200 	add.w	r2, r2, #2147483648	; 0x80000000
d0001792:	2400      	movs	r4, #0
d0001794:	2500      	movs	r5, #0
d0001796:	3a01      	subs	r2, #1
d0001798:	eb03 0b4b 	add.w	fp, r3, fp, lsl #1
d000179c:	9b02      	ldr	r3, [sp, #8]
d000179e:	f04f 0900 	mov.w	r9, #0
d00017a2:	4626      	mov	r6, r4
d00017a4:	462f      	mov	r7, r5
d00017a6:	eb03 0242 	add.w	r2, r3, r2, lsl #1
d00017aa:	4620      	mov	r0, r4
d00017ac:	4629      	mov	r1, r5
d00017ae:	f832 3f02 	ldrh.w	r3, [r2, #2]!
d00017b2:	ea4f 1c03 	mov.w	ip, r3, lsl #4
d00017b6:	eb08 1303 	add.w	r3, r8, r3, lsl #4
d00017ba:	f858 c00c 	ldr.w	ip, [r8, ip]
d00017be:	f8d3 e004 	ldr.w	lr, [r3, #4]
d00017c2:	44e1      	add	r9, ip
d00017c4:	f8d3 c008 	ldr.w	ip, [r3, #8]
d00017c8:	eb10 000e 	adds.w	r0, r0, lr
d00017cc:	68db      	ldr	r3, [r3, #12]
d00017ce:	f141 0100 	adc.w	r1, r1, #0
d00017d2:	eb16 060c 	adds.w	r6, r6, ip
d00017d6:	f147 0700 	adc.w	r7, r7, #0
d00017da:	18e4      	adds	r4, r4, r3
d00017dc:	f145 0500 	adc.w	r5, r5, #0
d00017e0:	455a      	cmp	r2, fp
d00017e2:	d1e4      	bne.n	d00017ae <quantize_rgb_to_image.constprop.0+0x2aa>
d00017e4:	f1b9 0f00 	cmp.w	r9, #0
d00017e8:	f000 80ef 	beq.w	d00019ca <quantize_rgb_to_image.constprop.0+0x4c6>
d00017ec:	464a      	mov	r2, r9
d00017ee:	2300      	movs	r3, #0
d00017f0:	f001 fd0a 	bl	d0003208 <__aeabi_uldivmod>
d00017f4:	4603      	mov	r3, r0
d00017f6:	464a      	mov	r2, r9
d00017f8:	4630      	mov	r0, r6
d00017fa:	4639      	mov	r1, r7
d00017fc:	b2de      	uxtb	r6, r3
d00017fe:	2300      	movs	r3, #0
d0001800:	f001 fd02 	bl	d0003208 <__aeabi_uldivmod>
d0001804:	4603      	mov	r3, r0
d0001806:	0436      	lsls	r6, r6, #16
d0001808:	4620      	mov	r0, r4
d000180a:	b2dc      	uxtb	r4, r3
d000180c:	464a      	mov	r2, r9
d000180e:	2300      	movs	r3, #0
d0001810:	4629      	mov	r1, r5
d0001812:	ea46 2604 	orr.w	r6, r6, r4, lsl #8
d0001816:	f001 fcf7 	bl	d0003208 <__aeabi_uldivmod>
d000181a:	b2c3      	uxtb	r3, r0
d000181c:	431e      	orrs	r6, r3
d000181e:	f046 467f 	orr.w	r6, r6, #4278190080	; 0xff000000
d0001822:	9b01      	ldr	r3, [sp, #4]
d0001824:	f10a 0a14 	add.w	sl, sl, #20
d0001828:	f843 6f04 	str.w	r6, [r3, #4]!
d000182c:	9301      	str	r3, [sp, #4]
d000182e:	9b05      	ldr	r3, [sp, #20]
d0001830:	459a      	cmp	sl, r3
d0001832:	d1a4      	bne.n	d000177e <quantize_rgb_to_image.constprop.0+0x27a>
d0001834:	9b07      	ldr	r3, [sp, #28]
d0001836:	f5b3 7f80 	cmp.w	r3, #256	; 0x100
d000183a:	f000 80f4 	beq.w	d0001a26 <quantize_rgb_to_image.constprop.0+0x522>
d000183e:	9d07      	ldr	r5, [sp, #28]
d0001840:	f8df b248 	ldr.w	fp, [pc, #584]	; d0001a8c <quantize_rgb_to_image.constprop.0+0x588>
d0001844:	f1c5 01ff 	rsb	r1, r5, #255	; 0xff
d0001848:	1cab      	adds	r3, r5, #2
d000184a:	f5c5 7080 	rsb	r0, r5, #256	; 0x100
d000184e:	b289      	uxth	r1, r1
d0001850:	eb0b 0283 	add.w	r2, fp, r3, lsl #2
d0001854:	2905      	cmp	r1, #5
d0001856:	b284      	uxth	r4, r0
d0001858:	f3c2 0280 	ubfx	r2, r2, #2, #1
d000185c:	d925      	bls.n	d00018aa <quantize_rgb_to_image.constprop.0+0x3a6>
d000185e:	b13a      	cbz	r2, d0001870 <quantize_rgb_to_image.constprop.0+0x36c>
d0001860:	4628      	mov	r0, r5
d0001862:	f04f 417f 	mov.w	r1, #4278190080	; 0xff000000
d0001866:	3001      	adds	r0, #1
d0001868:	f84b 1023 	str.w	r1, [fp, r3, lsl #2]
d000186c:	b280      	uxth	r0, r0
d000186e:	9007      	str	r0, [sp, #28]
d0001870:	1aa4      	subs	r4, r4, r2
d0001872:	18d1      	adds	r1, r2, r3
d0001874:	f04f 427f 	mov.w	r2, #4278190080	; 0xff000000
d0001878:	f04f 437f 	mov.w	r3, #4278190080	; 0xff000000
d000187c:	f3c4 004e 	ubfx	r0, r4, #1, #15
d0001880:	eb0b 0181 	add.w	r1, fp, r1, lsl #2
d0001884:	b2a4      	uxth	r4, r4
d0001886:	3801      	subs	r0, #1
d0001888:	b280      	uxth	r0, r0
d000188a:	3001      	adds	r0, #1
d000188c:	eb01 00c0 	add.w	r0, r1, r0, lsl #3
d0001890:	e8e1 2302 	strd	r2, r3, [r1], #8
d0001894:	4288      	cmp	r0, r1
d0001896:	d1fb      	bne.n	d0001890 <quantize_rgb_to_image.constprop.0+0x38c>
d0001898:	f024 0301 	bic.w	r3, r4, #1
d000189c:	9a07      	ldr	r2, [sp, #28]
d000189e:	441a      	add	r2, r3
d00018a0:	42a3      	cmp	r3, r4
d00018a2:	b292      	uxth	r2, r2
d00018a4:	9207      	str	r2, [sp, #28]
d00018a6:	d02d      	beq.n	d0001904 <quantize_rgb_to_image.constprop.0+0x400>
d00018a8:	1c93      	adds	r3, r2, #2
d00018aa:	9807      	ldr	r0, [sp, #28]
d00018ac:	f04f 427f 	mov.w	r2, #4278190080	; 0xff000000
d00018b0:	1c41      	adds	r1, r0, #1
d00018b2:	f84b 2023 	str.w	r2, [fp, r3, lsl #2]
d00018b6:	b289      	uxth	r1, r1
d00018b8:	f5b1 7f80 	cmp.w	r1, #256	; 0x100
d00018bc:	d022      	beq.n	d0001904 <quantize_rgb_to_image.constprop.0+0x400>
d00018be:	b29b      	uxth	r3, r3
d00018c0:	3102      	adds	r1, #2
d00018c2:	f5b3 7f80 	cmp.w	r3, #256	; 0x100
d00018c6:	f84b 2021 	str.w	r2, [fp, r1, lsl #2]
d00018ca:	d01b      	beq.n	d0001904 <quantize_rgb_to_image.constprop.0+0x400>
d00018cc:	1cc1      	adds	r1, r0, #3
d00018ce:	3302      	adds	r3, #2
d00018d0:	b289      	uxth	r1, r1
d00018d2:	f84b 2023 	str.w	r2, [fp, r3, lsl #2]
d00018d6:	f5b1 7f80 	cmp.w	r1, #256	; 0x100
d00018da:	d013      	beq.n	d0001904 <quantize_rgb_to_image.constprop.0+0x400>
d00018dc:	4603      	mov	r3, r0
d00018de:	3004      	adds	r0, #4
d00018e0:	3102      	adds	r1, #2
d00018e2:	b280      	uxth	r0, r0
d00018e4:	f84b 2021 	str.w	r2, [fp, r1, lsl #2]
d00018e8:	f5b0 7f80 	cmp.w	r0, #256	; 0x100
d00018ec:	d00a      	beq.n	d0001904 <quantize_rgb_to_image.constprop.0+0x400>
d00018ee:	3305      	adds	r3, #5
d00018f0:	3002      	adds	r0, #2
d00018f2:	b29b      	uxth	r3, r3
d00018f4:	f84b 2020 	str.w	r2, [fp, r0, lsl #2]
d00018f8:	f5b3 7f80 	cmp.w	r3, #256	; 0x100
d00018fc:	d002      	beq.n	d0001904 <quantize_rgb_to_image.constprop.0+0x400>
d00018fe:	3302      	adds	r3, #2
d0001900:	f84b 2023 	str.w	r2, [fp, r3, lsl #2]
d0001904:	9804      	ldr	r0, [sp, #16]
d0001906:	f001 fe09 	bl	d000351c <malloc>
d000190a:	4604      	mov	r4, r0
d000190c:	f8cb 0004 	str.w	r0, [fp, #4]
d0001910:	2800      	cmp	r0, #0
d0001912:	f000 808b 	beq.w	d0001a2c <quantize_rgb_to_image.constprop.0+0x528>
d0001916:	4b58      	ldr	r3, [pc, #352]	; (d0001a78 <quantize_rgb_to_image.constprop.0+0x574>)
d0001918:	2600      	movs	r6, #0
d000191a:	9d09      	ldr	r5, [sp, #36]	; 0x24
d000191c:	681b      	ldr	r3, [r3, #0]
d000191e:	f8cd 8018 	str.w	r8, [sp, #24]
d0001922:	9301      	str	r3, [sp, #4]
d0001924:	e007      	b.n	d0001936 <quantize_rgb_to_image.constprop.0+0x432>
d0001926:	f8db 3004 	ldr.w	r3, [fp, #4]
d000192a:	3503      	adds	r5, #3
d000192c:	5599      	strb	r1, [r3, r6]
d000192e:	3601      	adds	r6, #1
d0001930:	9b04      	ldr	r3, [sp, #16]
d0001932:	42b3      	cmp	r3, r6
d0001934:	d04c      	beq.n	d00019d0 <quantize_rgb_to_image.constprop.0+0x4cc>
d0001936:	786a      	ldrb	r2, [r5, #1]
d0001938:	782b      	ldrb	r3, [r5, #0]
d000193a:	0892      	lsrs	r2, r2, #2
d000193c:	78a9      	ldrb	r1, [r5, #2]
d000193e:	08db      	lsrs	r3, r3, #3
d0001940:	0152      	lsls	r2, r2, #5
d0001942:	ea42 22c3 	orr.w	r2, r2, r3, lsl #11
d0001946:	9b01      	ldr	r3, [sp, #4]
d0001948:	ea42 02d1 	orr.w	r2, r2, r1, lsr #3
d000194c:	4617      	mov	r7, r2
d000194e:	b212      	sxth	r2, r2
d0001950:	5dd9      	ldrb	r1, [r3, r7]
d0001952:	29ff      	cmp	r1, #255	; 0xff
d0001954:	d1e7      	bne.n	d0001926 <quantize_rgb_to_image.constprop.0+0x422>
d0001956:	f002 011f 	and.w	r1, r2, #31
d000195a:	0af8      	lsrs	r0, r7, #11
d000195c:	f3c7 1845 	ubfx	r8, r7, #5, #6
d0001960:	ea4f 3957 	mov.w	r9, r7, lsr #13
d0001964:	f3c7 2341 	ubfx	r3, r7, #9, #2
d0001968:	f3c2 0282 	ubfx	r2, r2, #2, #3
d000196c:	2400      	movs	r4, #0
d000196e:	ea49 09c0 	orr.w	r9, r9, r0, lsl #3
d0001972:	ea43 0888 	orr.w	r8, r3, r8, lsl #2
d0001976:	f8df c110 	ldr.w	ip, [pc, #272]	; d0001a88 <quantize_rgb_to_image.constprop.0+0x584>
d000197a:	ea42 02c1 	orr.w	r2, r2, r1, lsl #3
d000197e:	f04f 3eff 	mov.w	lr, #4294967295	; 0xffffffff
d0001982:	f8dd a020 	ldr.w	sl, [sp, #32]
d0001986:	9403      	str	r4, [sp, #12]
d0001988:	9705      	str	r7, [sp, #20]
d000198a:	f85c 3f04 	ldr.w	r3, [ip, #4]!
d000198e:	b2a7      	uxth	r7, r4
d0001990:	3401      	adds	r4, #1
d0001992:	f3c3 4007 	ubfx	r0, r3, #16, #8
d0001996:	f3c3 2107 	ubfx	r1, r3, #8, #8
d000199a:	b2db      	uxtb	r3, r3
d000199c:	eba9 0000 	sub.w	r0, r9, r0
d00019a0:	eba8 0101 	sub.w	r1, r8, r1
d00019a4:	1ad3      	subs	r3, r2, r3
d00019a6:	fb00 f000 	mul.w	r0, r0, r0
d00019aa:	fb01 0101 	mla	r1, r1, r1, r0
d00019ae:	fb03 1303 	mla	r3, r3, r3, r1
d00019b2:	4573      	cmp	r3, lr
d00019b4:	d201      	bcs.n	d00019ba <quantize_rgb_to_image.constprop.0+0x4b6>
d00019b6:	469e      	mov	lr, r3
d00019b8:	9703      	str	r7, [sp, #12]
d00019ba:	45a2      	cmp	sl, r4
d00019bc:	d1e5      	bne.n	d000198a <quantize_rgb_to_image.constprop.0+0x486>
d00019be:	9f05      	ldr	r7, [sp, #20]
d00019c0:	f89d 100c 	ldrb.w	r1, [sp, #12]
d00019c4:	9b01      	ldr	r3, [sp, #4]
d00019c6:	55d9      	strb	r1, [r3, r7]
d00019c8:	e7ad      	b.n	d0001926 <quantize_rgb_to_image.constprop.0+0x422>
d00019ca:	f04f 467f 	mov.w	r6, #4278190080	; 0xff000000
d00019ce:	e728      	b.n	d0001822 <quantize_rgb_to_image.constprop.0+0x31e>
d00019d0:	f8dd 8018 	ldr.w	r8, [sp, #24]
d00019d4:	4640      	mov	r0, r8
d00019d6:	f001 fda9 	bl	d000352c <free>
d00019da:	9802      	ldr	r0, [sp, #8]
d00019dc:	f001 fda6 	bl	d000352c <free>
d00019e0:	9801      	ldr	r0, [sp, #4]
d00019e2:	f001 fda3 	bl	d000352c <free>
d00019e6:	2300      	movs	r3, #0
d00019e8:	4a22      	ldr	r2, [pc, #136]	; (d0001a74 <quantize_rgb_to_image.constprop.0+0x570>)
d00019ea:	2001      	movs	r0, #1
d00019ec:	6013      	str	r3, [r2, #0]
d00019ee:	4a1f      	ldr	r2, [pc, #124]	; (d0001a6c <quantize_rgb_to_image.constprop.0+0x568>)
d00019f0:	6013      	str	r3, [r2, #0]
d00019f2:	4a21      	ldr	r2, [pc, #132]	; (d0001a78 <quantize_rgb_to_image.constprop.0+0x574>)
d00019f4:	6013      	str	r3, [r2, #0]
d00019f6:	b00b      	add	sp, #44	; 0x2c
d00019f8:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d00019fc:	4628      	mov	r0, r5
d00019fe:	2400      	movs	r4, #0
d0001a00:	f001 fd94 	bl	d000352c <free>
d0001a04:	9801      	ldr	r0, [sp, #4]
d0001a06:	f001 fd91 	bl	d000352c <free>
d0001a0a:	4640      	mov	r0, r8
d0001a0c:	f001 fd8e 	bl	d000352c <free>
d0001a10:	481a      	ldr	r0, [pc, #104]	; (d0001a7c <quantize_rgb_to_image.constprop.0+0x578>)
d0001a12:	4b18      	ldr	r3, [pc, #96]	; (d0001a74 <quantize_rgb_to_image.constprop.0+0x570>)
d0001a14:	601c      	str	r4, [r3, #0]
d0001a16:	4b15      	ldr	r3, [pc, #84]	; (d0001a6c <quantize_rgb_to_image.constprop.0+0x568>)
d0001a18:	601c      	str	r4, [r3, #0]
d0001a1a:	4b17      	ldr	r3, [pc, #92]	; (d0001a78 <quantize_rgb_to_image.constprop.0+0x574>)
d0001a1c:	601c      	str	r4, [r3, #0]
d0001a1e:	f7ff fc5d 	bl	d00012dc <set_status>
d0001a22:	4620      	mov	r0, r4
d0001a24:	e7e7      	b.n	d00019f6 <quantize_rgb_to_image.constprop.0+0x4f2>
d0001a26:	f8df b064 	ldr.w	fp, [pc, #100]	; d0001a8c <quantize_rgb_to_image.constprop.0+0x588>
d0001a2a:	e76b      	b.n	d0001904 <quantize_rgb_to_image.constprop.0+0x400>
d0001a2c:	4640      	mov	r0, r8
d0001a2e:	4d12      	ldr	r5, [pc, #72]	; (d0001a78 <quantize_rgb_to_image.constprop.0+0x574>)
d0001a30:	f001 fd7c 	bl	d000352c <free>
d0001a34:	9802      	ldr	r0, [sp, #8]
d0001a36:	f001 fd79 	bl	d000352c <free>
d0001a3a:	6828      	ldr	r0, [r5, #0]
d0001a3c:	f001 fd76 	bl	d000352c <free>
d0001a40:	4b0c      	ldr	r3, [pc, #48]	; (d0001a74 <quantize_rgb_to_image.constprop.0+0x570>)
d0001a42:	480f      	ldr	r0, [pc, #60]	; (d0001a80 <quantize_rgb_to_image.constprop.0+0x57c>)
d0001a44:	601c      	str	r4, [r3, #0]
d0001a46:	4b09      	ldr	r3, [pc, #36]	; (d0001a6c <quantize_rgb_to_image.constprop.0+0x568>)
d0001a48:	602c      	str	r4, [r5, #0]
d0001a4a:	601c      	str	r4, [r3, #0]
d0001a4c:	f7ff fc46 	bl	d00012dc <set_status>
d0001a50:	4620      	mov	r0, r4
d0001a52:	e7d0      	b.n	d00019f6 <quantize_rgb_to_image.constprop.0+0x4f2>
d0001a54:	4628      	mov	r0, r5
d0001a56:	2400      	movs	r4, #0
d0001a58:	f001 fd68 	bl	d000352c <free>
d0001a5c:	9801      	ldr	r0, [sp, #4]
d0001a5e:	f001 fd65 	bl	d000352c <free>
d0001a62:	4640      	mov	r0, r8
d0001a64:	f001 fd62 	bl	d000352c <free>
d0001a68:	4806      	ldr	r0, [pc, #24]	; (d0001a84 <quantize_rgb_to_image.constprop.0+0x580>)
d0001a6a:	e7d2      	b.n	d0001a12 <quantize_rgb_to_image.constprop.0+0x50e>
d0001a6c:	d00052b0 	.word	0xd00052b0
d0001a70:	d00052b4 	.word	0xd00052b4
d0001a74:	d0006ab4 	.word	0xd0006ab4
d0001a78:	d00052ac 	.word	0xd00052ac
d0001a7c:	d0004d88 	.word	0xd0004d88
d0001a80:	d0004d9c 	.word	0xd0004d9c
d0001a84:	d0004d68 	.word	0xd0004d68
d0001a88:	d0006abc 	.word	0xd0006abc
d0001a8c:	d0006ab8 	.word	0xd0006ab8

d0001a90 <free_image.constprop.0>:
d0001a90:	b508      	push	{r3, lr}
d0001a92:	4b06      	ldr	r3, [pc, #24]	; (d0001aac <free_image.constprop.0+0x1c>)
d0001a94:	6858      	ldr	r0, [r3, #4]
d0001a96:	b108      	cbz	r0, d0001a9c <free_image.constprop.0+0xc>
d0001a98:	f001 fd48 	bl	d000352c <free>
d0001a9c:	f44f 6281 	mov.w	r2, #1032	; 0x408
d0001aa0:	2100      	movs	r1, #0
d0001aa2:	4802      	ldr	r0, [pc, #8]	; (d0001aac <free_image.constprop.0+0x1c>)
d0001aa4:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
d0001aa8:	f001 bd56 	b.w	d0003558 <memset>
d0001aac:	d0006ab8 	.word	0xd0006ab8

d0001ab0 <draw_message.constprop.0>:
d0001ab0:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
d0001ab4:	4c68      	ldr	r4, [pc, #416]	; (d0001c58 <draw_message.constprop.0+0x1a8>)
d0001ab6:	4606      	mov	r6, r0
d0001ab8:	4d68      	ldr	r5, [pc, #416]	; (d0001c5c <draw_message.constprop.0+0x1ac>)
d0001aba:	b082      	sub	sp, #8
d0001abc:	7b22      	ldrb	r2, [r4, #12]
d0001abe:	f04f 0902 	mov.w	r9, #2
d0001ac2:	7b63      	ldrb	r3, [r4, #13]
d0001ac4:	7ba0      	ldrb	r0, [r4, #14]
d0001ac6:	ea42 2303 	orr.w	r3, r2, r3, lsl #8
d0001aca:	7be1      	ldrb	r1, [r4, #15]
d0001acc:	f8df 8198 	ldr.w	r8, [pc, #408]	; d0001c68 <draw_message.constprop.0+0x1b8>
d0001ad0:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
d0001ad4:	4862      	ldr	r0, [pc, #392]	; (d0001c60 <draw_message.constprop.0+0x1b0>)
d0001ad6:	4f63      	ldr	r7, [pc, #396]	; (d0001c64 <draw_message.constprop.0+0x1b4>)
d0001ad8:	ea43 6301 	orr.w	r3, r3, r1, lsl #24
d0001adc:	f8df a18c 	ldr.w	sl, [pc, #396]	; d0001c6c <draw_message.constprop.0+0x1bc>
d0001ae0:	681b      	ldr	r3, [r3, #0]
d0001ae2:	6cdb      	ldr	r3, [r3, #76]	; 0x4c
d0001ae4:	4798      	blx	r3
d0001ae6:	782b      	ldrb	r3, [r5, #0]
d0001ae8:	2b00      	cmp	r3, #0
d0001aea:	f000 809b 	beq.w	d0001c24 <draw_message.constprop.0+0x174>
d0001aee:	f8d8 0000 	ldr.w	r0, [r8]
d0001af2:	f894 c00c 	ldrb.w	ip, [r4, #12]
d0001af6:	7b61      	ldrb	r1, [r4, #13]
d0001af8:	7ba2      	ldrb	r2, [r4, #14]
d0001afa:	ea4c 2101 	orr.w	r1, ip, r1, lsl #8
d0001afe:	7be3      	ldrb	r3, [r4, #15]
d0001b00:	9001      	str	r0, [sp, #4]
d0001b02:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d0001b06:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0001b0a:	681b      	ldr	r3, [r3, #0]
d0001b0c:	68db      	ldr	r3, [r3, #12]
d0001b0e:	4798      	blx	r3
d0001b10:	7b23      	ldrb	r3, [r4, #12]
d0001b12:	7b61      	ldrb	r1, [r4, #13]
d0001b14:	7ba2      	ldrb	r2, [r4, #14]
d0001b16:	ea43 2101 	orr.w	r1, r3, r1, lsl #8
d0001b1a:	7be3      	ldrb	r3, [r4, #15]
d0001b1c:	9801      	ldr	r0, [sp, #4]
d0001b1e:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d0001b22:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0001b26:	681b      	ldr	r3, [r3, #0]
d0001b28:	699b      	ldr	r3, [r3, #24]
d0001b2a:	4798      	blx	r3
d0001b2c:	f894 c00c 	ldrb.w	ip, [r4, #12]
d0001b30:	7b61      	ldrb	r1, [r4, #13]
d0001b32:	2000      	movs	r0, #0
d0001b34:	7ba2      	ldrb	r2, [r4, #14]
d0001b36:	ea4c 2101 	orr.w	r1, ip, r1, lsl #8
d0001b3a:	7be3      	ldrb	r3, [r4, #15]
d0001b3c:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d0001b40:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0001b44:	685b      	ldr	r3, [r3, #4]
d0001b46:	68db      	ldr	r3, [r3, #12]
d0001b48:	4798      	blx	r3
d0001b4a:	7b20      	ldrb	r0, [r4, #12]
d0001b4c:	7b61      	ldrb	r1, [r4, #13]
d0001b4e:	7ba2      	ldrb	r2, [r4, #14]
d0001b50:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d0001b54:	7be3      	ldrb	r3, [r4, #15]
d0001b56:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d0001b5a:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0001b5e:	685b      	ldr	r3, [r3, #4]
d0001b60:	681b      	ldr	r3, [r3, #0]
d0001b62:	4798      	blx	r3
d0001b64:	f894 c00c 	ldrb.w	ip, [r4, #12]
d0001b68:	7b61      	ldrb	r1, [r4, #13]
d0001b6a:	2001      	movs	r0, #1
d0001b6c:	7ba2      	ldrb	r2, [r4, #14]
d0001b6e:	ea4c 2101 	orr.w	r1, ip, r1, lsl #8
d0001b72:	7be3      	ldrb	r3, [r4, #15]
d0001b74:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d0001b78:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0001b7c:	685b      	ldr	r3, [r3, #4]
d0001b7e:	68db      	ldr	r3, [r3, #12]
d0001b80:	4798      	blx	r3
d0001b82:	f894 e00c 	ldrb.w	lr, [r4, #12]
d0001b86:	7b60      	ldrb	r0, [r4, #13]
d0001b88:	4652      	mov	r2, sl
d0001b8a:	f894 c00e 	ldrb.w	ip, [r4, #14]
d0001b8e:	2178      	movs	r1, #120	; 0x78
d0001b90:	ea4e 2000 	orr.w	r0, lr, r0, lsl #8
d0001b94:	7be3      	ldrb	r3, [r4, #15]
d0001b96:	ea40 4c0c 	orr.w	ip, r0, ip, lsl #16
d0001b9a:	2018      	movs	r0, #24
d0001b9c:	ea4c 6303 	orr.w	r3, ip, r3, lsl #24
d0001ba0:	685b      	ldr	r3, [r3, #4]
d0001ba2:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d0001ba4:	4798      	blx	r3
d0001ba6:	f894 e00c 	ldrb.w	lr, [r4, #12]
d0001baa:	7b60      	ldrb	r0, [r4, #13]
d0001bac:	4632      	mov	r2, r6
d0001bae:	f894 c00e 	ldrb.w	ip, [r4, #14]
d0001bb2:	2190      	movs	r1, #144	; 0x90
d0001bb4:	ea4e 2000 	orr.w	r0, lr, r0, lsl #8
d0001bb8:	7be3      	ldrb	r3, [r4, #15]
d0001bba:	ea40 4c0c 	orr.w	ip, r0, ip, lsl #16
d0001bbe:	2018      	movs	r0, #24
d0001bc0:	ea4c 6303 	orr.w	r3, ip, r3, lsl #24
d0001bc4:	685b      	ldr	r3, [r3, #4]
d0001bc6:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d0001bc8:	4798      	blx	r3
d0001bca:	782b      	ldrb	r3, [r5, #0]
d0001bcc:	f1c3 0301 	rsb	r3, r3, #1
d0001bd0:	b2db      	uxtb	r3, r3
d0001bd2:	702b      	strb	r3, [r5, #0]
d0001bd4:	782b      	ldrb	r3, [r5, #0]
d0001bd6:	7b21      	ldrb	r1, [r4, #12]
d0001bd8:	7b60      	ldrb	r0, [r4, #13]
d0001bda:	7ba2      	ldrb	r2, [r4, #14]
d0001bdc:	ea41 2000 	orr.w	r0, r1, r0, lsl #8
d0001be0:	b313      	cbz	r3, d0001c28 <draw_message.constprop.0+0x178>
d0001be2:	ea40 4202 	orr.w	r2, r0, r2, lsl #16
d0001be6:	7be3      	ldrb	r3, [r4, #15]
d0001be8:	6839      	ldr	r1, [r7, #0]
d0001bea:	f8d8 0000 	ldr.w	r0, [r8]
d0001bee:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0001bf2:	681b      	ldr	r3, [r3, #0]
d0001bf4:	6a5b      	ldr	r3, [r3, #36]	; 0x24
d0001bf6:	4798      	blx	r3
d0001bf8:	7b20      	ldrb	r0, [r4, #12]
d0001bfa:	7b61      	ldrb	r1, [r4, #13]
d0001bfc:	7ba2      	ldrb	r2, [r4, #14]
d0001bfe:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d0001c02:	7be3      	ldrb	r3, [r4, #15]
d0001c04:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d0001c08:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0001c0c:	681b      	ldr	r3, [r3, #0]
d0001c0e:	681b      	ldr	r3, [r3, #0]
d0001c10:	4798      	blx	r3
d0001c12:	f1b9 0f01 	cmp.w	r9, #1
d0001c16:	d00e      	beq.n	d0001c36 <draw_message.constprop.0+0x186>
d0001c18:	782b      	ldrb	r3, [r5, #0]
d0001c1a:	f04f 0901 	mov.w	r9, #1
d0001c1e:	2b00      	cmp	r3, #0
d0001c20:	f47f af65 	bne.w	d0001aee <draw_message.constprop.0+0x3e>
d0001c24:	6838      	ldr	r0, [r7, #0]
d0001c26:	e764      	b.n	d0001af2 <draw_message.constprop.0+0x42>
d0001c28:	ea40 4202 	orr.w	r2, r0, r2, lsl #16
d0001c2c:	7be3      	ldrb	r3, [r4, #15]
d0001c2e:	f8d8 1000 	ldr.w	r1, [r8]
d0001c32:	6838      	ldr	r0, [r7, #0]
d0001c34:	e7db      	b.n	d0001bee <draw_message.constprop.0+0x13e>
d0001c36:	7b23      	ldrb	r3, [r4, #12]
d0001c38:	7b62      	ldrb	r2, [r4, #13]
d0001c3a:	7ba1      	ldrb	r1, [r4, #14]
d0001c3c:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0001c40:	7be2      	ldrb	r2, [r4, #15]
d0001c42:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0001c46:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0001c4a:	681b      	ldr	r3, [r3, #0]
d0001c4c:	68db      	ldr	r3, [r3, #12]
d0001c4e:	b002      	add	sp, #8
d0001c50:	e8bd 47f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
d0001c54:	4718      	bx	r3
d0001c56:	bf00      	nop
d0001c58:	2001f000 	.word	0x2001f000
d0001c5c:	d00052a8 	.word	0xd00052a8
d0001c60:	d00066b4 	.word	0xd00066b4
d0001c64:	d0006fa0 	.word	0xd0006fa0
d0001c68:	d0006fc0 	.word	0xd0006fc0
d0001c6c:	d0004dc0 	.word	0xd0004dc0

d0001c70 <main>:
d0001c70:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0001c74:	f8df b358 	ldr.w	fp, [pc, #856]	; d0001fd0 <main+0x360>
d0001c78:	460e      	mov	r6, r1
d0001c7a:	4604      	mov	r4, r0
d0001c7c:	2504      	movs	r5, #4
d0001c7e:	f89b 3004 	ldrb.w	r3, [fp, #4]
d0001c82:	f89b 2005 	ldrb.w	r2, [fp, #5]
d0001c86:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0001c8a:	f89b 2006 	ldrb.w	r2, [fp, #6]
d0001c8e:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d0001c92:	f89b 2007 	ldrb.w	r2, [fp, #7]
d0001c96:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0001c9a:	ed2d 8b02 	vpush	{d8}
d0001c9e:	689b      	ldr	r3, [r3, #8]
d0001ca0:	b09b      	sub	sp, #108	; 0x6c
d0001ca2:	4798      	blx	r3
d0001ca4:	f89b 3000 	ldrb.w	r3, [fp]
d0001ca8:	f89b 2001 	ldrb.w	r2, [fp, #1]
d0001cac:	f44f 2000 	mov.w	r0, #524288	; 0x80000
d0001cb0:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0001cb4:	f89b 2002 	ldrb.w	r2, [fp, #2]
d0001cb8:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d0001cbc:	f89b 2003 	ldrb.w	r2, [fp, #3]
d0001cc0:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0001cc4:	681b      	ldr	r3, [r3, #0]
d0001cc6:	4798      	blx	r3
d0001cc8:	f7ff f9c6 	bl	d0001058 <initMalloc>
d0001ccc:	4bb8      	ldr	r3, [pc, #736]	; (d0001fb0 <main+0x340>)
d0001cce:	f04f 427f 	mov.w	r2, #4278190080	; 0xff000000
d0001cd2:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d0001cd6:	49b7      	ldr	r1, [pc, #732]	; (d0001fb4 <main+0x344>)
d0001cd8:	601a      	str	r2, [r3, #0]
d0001cda:	461a      	mov	r2, r3
d0001cdc:	6058      	str	r0, [r3, #4]
d0001cde:	6099      	str	r1, [r3, #8]
d0001ce0:	4bb5      	ldr	r3, [pc, #724]	; (d0001fb8 <main+0x348>)
d0001ce2:	f842 3f0c 	str.w	r3, [r2, #12]!
d0001ce6:	022b      	lsls	r3, r5, #8
d0001ce8:	ea43 4305 	orr.w	r3, r3, r5, lsl #16
d0001cec:	432b      	orrs	r3, r5
d0001cee:	3501      	adds	r5, #1
d0001cf0:	f043 437f 	orr.w	r3, r3, #4278190080	; 0xff000000
d0001cf4:	f5b5 7f80 	cmp.w	r5, #256	; 0x100
d0001cf8:	f842 3f04 	str.w	r3, [r2, #4]!
d0001cfc:	d1f3      	bne.n	d0001ce6 <main+0x76>
d0001cfe:	2100      	movs	r1, #0
d0001d00:	f44f 6281 	mov.w	r2, #1032	; 0x408
d0001d04:	48ad      	ldr	r0, [pc, #692]	; (d0001fbc <main+0x34c>)
d0001d06:	4689      	mov	r9, r1
d0001d08:	f001 fc26 	bl	d0003558 <memset>
d0001d0c:	f89b 700c 	ldrb.w	r7, [fp, #12]
d0001d10:	2190      	movs	r1, #144	; 0x90
d0001d12:	f89b 300d 	ldrb.w	r3, [fp, #13]
d0001d16:	20dc      	movs	r0, #220	; 0xdc
d0001d18:	f89b 200e 	ldrb.w	r2, [fp, #14]
d0001d1c:	ea47 2703 	orr.w	r7, r7, r3, lsl #8
d0001d20:	f89b 300f 	ldrb.w	r3, [fp, #15]
d0001d24:	f8df 82ac 	ldr.w	r8, [pc, #684]	; d0001fd4 <main+0x364>
d0001d28:	ea47 4202 	orr.w	r2, r7, r2, lsl #16
d0001d2c:	4fa4      	ldr	r7, [pc, #656]	; (d0001fc0 <main+0x350>)
d0001d2e:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0001d32:	681b      	ldr	r3, [r3, #0]
d0001d34:	691b      	ldr	r3, [r3, #16]
d0001d36:	4798      	blx	r3
d0001d38:	f89b 200c 	ldrb.w	r2, [fp, #12]
d0001d3c:	f89b 000d 	ldrb.w	r0, [fp, #13]
d0001d40:	f04f 0c02 	mov.w	ip, #2
d0001d44:	f89b 100e 	ldrb.w	r1, [fp, #14]
d0001d48:	f44f 73a0 	mov.w	r3, #320	; 0x140
d0001d4c:	ea42 2200 	orr.w	r2, r2, r0, lsl #8
d0001d50:	f89b 000f 	ldrb.w	r0, [fp, #15]
d0001d54:	ea42 4101 	orr.w	r1, r2, r1, lsl #16
d0001d58:	f44f 72f0 	mov.w	r2, #480	; 0x1e0
d0001d5c:	ea41 6000 	orr.w	r0, r1, r0, lsl #24
d0001d60:	4619      	mov	r1, r3
d0001d62:	f8d0 e000 	ldr.w	lr, [r0]
d0001d66:	4610      	mov	r0, r2
d0001d68:	f8cd c000 	str.w	ip, [sp]
d0001d6c:	f8de a014 	ldr.w	sl, [lr, #20]
d0001d70:	47d0      	blx	sl
d0001d72:	f89b 100c 	ldrb.w	r1, [fp, #12]
d0001d76:	f89b 300d 	ldrb.w	r3, [fp, #13]
d0001d7a:	f89b 200e 	ldrb.w	r2, [fp, #14]
d0001d7e:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
d0001d82:	f89b 300f 	ldrb.w	r3, [fp, #15]
d0001d86:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d0001d8a:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0001d8e:	681b      	ldr	r3, [r3, #0]
d0001d90:	6b5b      	ldr	r3, [r3, #52]	; 0x34
d0001d92:	4798      	blx	r3
d0001d94:	f89b 300c 	ldrb.w	r3, [fp, #12]
d0001d98:	f89b 100d 	ldrb.w	r1, [fp, #13]
d0001d9c:	f89b c00e 	ldrb.w	ip, [fp, #14]
d0001da0:	ea43 2301 	orr.w	r3, r3, r1, lsl #8
d0001da4:	f89b 100f 	ldrb.w	r1, [fp, #15]
d0001da8:	f8c8 0000 	str.w	r0, [r8]
d0001dac:	ea43 420c 	orr.w	r2, r3, ip, lsl #16
d0001db0:	ea42 6301 	orr.w	r3, r2, r1, lsl #24
d0001db4:	681b      	ldr	r3, [r3, #0]
d0001db6:	6b9b      	ldr	r3, [r3, #56]	; 0x38
d0001db8:	4798      	blx	r3
d0001dba:	4b82      	ldr	r3, [pc, #520]	; (d0001fc4 <main+0x354>)
d0001dbc:	6038      	str	r0, [r7, #0]
d0001dbe:	f883 9000 	strb.w	r9, [r3]
d0001dc2:	f89b 100c 	ldrb.w	r1, [fp, #12]
d0001dc6:	f89b 300d 	ldrb.w	r3, [fp, #13]
d0001dca:	f89b 200e 	ldrb.w	r2, [fp, #14]
d0001dce:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
d0001dd2:	f89b 300f 	ldrb.w	r3, [fp, #15]
d0001dd6:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d0001dda:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0001dde:	681b      	ldr	r3, [r3, #0]
d0001de0:	6d9b      	ldr	r3, [r3, #88]	; 0x58
d0001de2:	4798      	blx	r3
d0001de4:	f89b 1018 	ldrb.w	r1, [fp, #24]
d0001de8:	f89b 3019 	ldrb.w	r3, [fp, #25]
d0001dec:	f89b 201a 	ldrb.w	r2, [fp, #26]
d0001df0:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
d0001df4:	f89b 301b 	ldrb.w	r3, [fp, #27]
d0001df8:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d0001dfc:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0001e00:	681b      	ldr	r3, [r3, #0]
d0001e02:	4798      	blx	r3
d0001e04:	f89b 100c 	ldrb.w	r1, [fp, #12]
d0001e08:	f89b 300d 	ldrb.w	r3, [fp, #13]
d0001e0c:	f89b 200e 	ldrb.w	r2, [fp, #14]
d0001e10:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
d0001e14:	f89b 300f 	ldrb.w	r3, [fp, #15]
d0001e18:	4865      	ldr	r0, [pc, #404]	; (d0001fb0 <main+0x340>)
d0001e1a:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d0001e1e:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0001e22:	681b      	ldr	r3, [r3, #0]
d0001e24:	6d1b      	ldr	r3, [r3, #80]	; 0x50
d0001e26:	4798      	blx	r3
d0001e28:	f89b 100c 	ldrb.w	r1, [fp, #12]
d0001e2c:	f89b 300d 	ldrb.w	r3, [fp, #13]
d0001e30:	f89b 200e 	ldrb.w	r2, [fp, #14]
d0001e34:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
d0001e38:	f89b 300f 	ldrb.w	r3, [fp, #15]
d0001e3c:	485c      	ldr	r0, [pc, #368]	; (d0001fb0 <main+0x340>)
d0001e3e:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d0001e42:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0001e46:	681b      	ldr	r3, [r3, #0]
d0001e48:	6cdb      	ldr	r3, [r3, #76]	; 0x4c
d0001e4a:	4798      	blx	r3
d0001e4c:	f44f 72a0 	mov.w	r2, #320	; 0x140
d0001e50:	f44f 71f0 	mov.w	r1, #480	; 0x1e0
d0001e54:	485c      	ldr	r0, [pc, #368]	; (d0001fc8 <main+0x358>)
d0001e56:	f7ff f8f1 	bl	d000103c <gfx_createBitmap>
d0001e5a:	f89b 100c 	ldrb.w	r1, [fp, #12]
d0001e5e:	f89b 300d 	ldrb.w	r3, [fp, #13]
d0001e62:	f89b 200e 	ldrb.w	r2, [fp, #14]
d0001e66:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
d0001e6a:	f89b 300f 	ldrb.w	r3, [fp, #15]
d0001e6e:	4856      	ldr	r0, [pc, #344]	; (d0001fc8 <main+0x358>)
d0001e70:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d0001e74:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0001e78:	681b      	ldr	r3, [r3, #0]
d0001e7a:	6a1b      	ldr	r3, [r3, #32]
d0001e7c:	4798      	blx	r3
d0001e7e:	f89b 100c 	ldrb.w	r1, [fp, #12]
d0001e82:	f89b 300d 	ldrb.w	r3, [fp, #13]
d0001e86:	f89b 200e 	ldrb.w	r2, [fp, #14]
d0001e8a:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
d0001e8e:	f89b 300f 	ldrb.w	r3, [fp, #15]
d0001e92:	484d      	ldr	r0, [pc, #308]	; (d0001fc8 <main+0x358>)
d0001e94:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d0001e98:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0001e9c:	681b      	ldr	r3, [r3, #0]
d0001e9e:	699b      	ldr	r3, [r3, #24]
d0001ea0:	4798      	blx	r3
d0001ea2:	f89b 100c 	ldrb.w	r1, [fp, #12]
d0001ea6:	f89b 300d 	ldrb.w	r3, [fp, #13]
d0001eaa:	4648      	mov	r0, r9
d0001eac:	f89b 200e 	ldrb.w	r2, [fp, #14]
d0001eb0:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
d0001eb4:	f89b 300f 	ldrb.w	r3, [fp, #15]
d0001eb8:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d0001ebc:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0001ec0:	685b      	ldr	r3, [r3, #4]
d0001ec2:	68db      	ldr	r3, [r3, #12]
d0001ec4:	4798      	blx	r3
d0001ec6:	f89b 100c 	ldrb.w	r1, [fp, #12]
d0001eca:	f89b 300d 	ldrb.w	r3, [fp, #13]
d0001ece:	f89b 200e 	ldrb.w	r2, [fp, #14]
d0001ed2:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
d0001ed6:	f89b 300f 	ldrb.w	r3, [fp, #15]
d0001eda:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d0001ede:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0001ee2:	685b      	ldr	r3, [r3, #4]
d0001ee4:	681b      	ldr	r3, [r3, #0]
d0001ee6:	4798      	blx	r3
d0001ee8:	f89b 100c 	ldrb.w	r1, [fp, #12]
d0001eec:	f89b 300d 	ldrb.w	r3, [fp, #13]
d0001ef0:	f89b 200e 	ldrb.w	r2, [fp, #14]
d0001ef4:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
d0001ef8:	f89b 300f 	ldrb.w	r3, [fp, #15]
d0001efc:	f8d8 0000 	ldr.w	r0, [r8]
d0001f00:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d0001f04:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0001f08:	681b      	ldr	r3, [r3, #0]
d0001f0a:	69db      	ldr	r3, [r3, #28]
d0001f0c:	4798      	blx	r3
d0001f0e:	f89b 100c 	ldrb.w	r1, [fp, #12]
d0001f12:	f89b 300d 	ldrb.w	r3, [fp, #13]
d0001f16:	f89b 200e 	ldrb.w	r2, [fp, #14]
d0001f1a:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
d0001f1e:	f89b 300f 	ldrb.w	r3, [fp, #15]
d0001f22:	6838      	ldr	r0, [r7, #0]
d0001f24:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d0001f28:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0001f2c:	681b      	ldr	r3, [r3, #0]
d0001f2e:	699b      	ldr	r3, [r3, #24]
d0001f30:	4798      	blx	r3
d0001f32:	2c01      	cmp	r4, #1
d0001f34:	f340 817e 	ble.w	d0002234 <main+0x5c4>
d0001f38:	4632      	mov	r2, r6
d0001f3a:	2301      	movs	r3, #1
d0001f3c:	f852 1f04 	ldr.w	r1, [r2, #4]!
d0001f40:	3301      	adds	r3, #1
d0001f42:	b111      	cbz	r1, d0001f4a <main+0x2da>
d0001f44:	7808      	ldrb	r0, [r1, #0]
d0001f46:	2800      	cmp	r0, #0
d0001f48:	d146      	bne.n	d0001fd8 <main+0x368>
d0001f4a:	429c      	cmp	r4, r3
d0001f4c:	d1f6      	bne.n	d0001f3c <main+0x2cc>
d0001f4e:	f8d6 9000 	ldr.w	r9, [r6]
d0001f52:	f1b9 0f00 	cmp.w	r9, #0
d0001f56:	d015      	beq.n	d0001f84 <main+0x314>
d0001f58:	212e      	movs	r1, #46	; 0x2e
d0001f5a:	4648      	mov	r0, r9
d0001f5c:	f001 fe75 	bl	d0003c4a <strrchr>
d0001f60:	b180      	cbz	r0, d0001f84 <main+0x314>
d0001f62:	7843      	ldrb	r3, [r0, #1]
d0001f64:	f003 03df 	and.w	r3, r3, #223	; 0xdf
d0001f68:	2b42      	cmp	r3, #66	; 0x42
d0001f6a:	d112      	bne.n	d0001f92 <main+0x322>
d0001f6c:	7883      	ldrb	r3, [r0, #2]
d0001f6e:	f003 03df 	and.w	r3, r3, #223	; 0xdf
d0001f72:	2b4d      	cmp	r3, #77	; 0x4d
d0001f74:	d106      	bne.n	d0001f84 <main+0x314>
d0001f76:	78c3      	ldrb	r3, [r0, #3]
d0001f78:	f003 03df 	and.w	r3, r3, #223	; 0xdf
d0001f7c:	2b50      	cmp	r3, #80	; 0x50
d0001f7e:	d101      	bne.n	d0001f84 <main+0x314>
d0001f80:	7903      	ldrb	r3, [r0, #4]
d0001f82:	b353      	cbz	r3, d0001fda <main+0x36a>
d0001f84:	4811      	ldr	r0, [pc, #68]	; (d0001fcc <main+0x35c>)
d0001f86:	2401      	movs	r4, #1
d0001f88:	f7ff fd92 	bl	d0001ab0 <draw_message.constprop.0>
d0001f8c:	f7ff f980 	bl	d0001290 <wait_for_exit_combo>
d0001f90:	e0ad      	b.n	d00020ee <main+0x47e>
d0001f92:	2b49      	cmp	r3, #73	; 0x49
d0001f94:	f040 8131 	bne.w	d00021fa <main+0x58a>
d0001f98:	7883      	ldrb	r3, [r0, #2]
d0001f9a:	f003 03df 	and.w	r3, r3, #223	; 0xdf
d0001f9e:	2b46      	cmp	r3, #70	; 0x46
d0001fa0:	f040 82e5 	bne.w	d000256e <main+0x8fe>
d0001fa4:	78c3      	ldrb	r3, [r0, #3]
d0001fa6:	f003 03df 	and.w	r3, r3, #223	; 0xdf
d0001faa:	2b46      	cmp	r3, #70	; 0x46
d0001fac:	d0e8      	beq.n	d0001f80 <main+0x310>
d0001fae:	e7e9      	b.n	d0001f84 <main+0x314>
d0001fb0:	d00066b4 	.word	0xd00066b4
d0001fb4:	ff606060 	.word	0xff606060
d0001fb8:	ffdcdcdc 	.word	0xffdcdcdc
d0001fbc:	d0006ab8 	.word	0xd0006ab8
d0001fc0:	d0006fa0 	.word	0xd0006fa0
d0001fc4:	d00052a8 	.word	0xd00052a8
d0001fc8:	d0006f80 	.word	0xd0006f80
d0001fcc:	d0004dd0 	.word	0xd0004dd0
d0001fd0:	2001f000 	.word	0x2001f000
d0001fd4:	d0006fc0 	.word	0xd0006fc0
d0001fd8:	4689      	mov	r9, r1
d0001fda:	4898      	ldr	r0, [pc, #608]	; (d000223c <main+0x5cc>)
d0001fdc:	f7ff fd68 	bl	d0001ab0 <draw_message.constprop.0>
d0001fe0:	f89b 1004 	ldrb.w	r1, [fp, #4]
d0001fe4:	f89b 3005 	ldrb.w	r3, [fp, #5]
d0001fe8:	2000      	movs	r0, #0
d0001fea:	f89b 4006 	ldrb.w	r4, [fp, #6]
d0001fee:	2201      	movs	r2, #1
d0001ff0:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
d0001ff4:	f89b 3007 	ldrb.w	r3, [fp, #7]
d0001ff8:	9016      	str	r0, [sp, #88]	; 0x58
d0001ffa:	ea41 4404 	orr.w	r4, r1, r4, lsl #16
d0001ffe:	4649      	mov	r1, r9
d0002000:	ea44 6303 	orr.w	r3, r4, r3, lsl #24
d0002004:	681b      	ldr	r3, [r3, #0]
d0002006:	681b      	ldr	r3, [r3, #0]
d0002008:	4798      	blx	r3
d000200a:	4606      	mov	r6, r0
d000200c:	2800      	cmp	r0, #0
d000200e:	f040 822e 	bne.w	d000246e <main+0x7fe>
d0002012:	f89b 1004 	ldrb.w	r1, [fp, #4]
d0002016:	f89b 3005 	ldrb.w	r3, [fp, #5]
d000201a:	f89b 2006 	ldrb.w	r2, [fp, #6]
d000201e:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
d0002022:	f89b 3007 	ldrb.w	r3, [fp, #7]
d0002026:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d000202a:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d000202e:	681b      	ldr	r3, [r3, #0]
d0002030:	685b      	ldr	r3, [r3, #4]
d0002032:	4798      	blx	r3
d0002034:	4604      	mov	r4, r0
d0002036:	2800      	cmp	r0, #0
d0002038:	f000 80ca 	beq.w	d00021d0 <main+0x560>
d000203c:	f001 fa6e 	bl	d000351c <malloc>
d0002040:	4682      	mov	sl, r0
d0002042:	2800      	cmp	r0, #0
d0002044:	f001 801c 	beq.w	d0003080 <main+0x1410>
d0002048:	f89b 1004 	ldrb.w	r1, [fp, #4]
d000204c:	4622      	mov	r2, r4
d000204e:	f89b 0005 	ldrb.w	r0, [fp, #5]
d0002052:	ab16      	add	r3, sp, #88	; 0x58
d0002054:	f89b 7006 	ldrb.w	r7, [fp, #6]
d0002058:	ea41 2000 	orr.w	r0, r1, r0, lsl #8
d000205c:	f89b c007 	ldrb.w	ip, [fp, #7]
d0002060:	4651      	mov	r1, sl
d0002062:	ea40 4707 	orr.w	r7, r0, r7, lsl #16
d0002066:	4630      	mov	r0, r6
d0002068:	ea47 670c 	orr.w	r7, r7, ip, lsl #24
d000206c:	683f      	ldr	r7, [r7, #0]
d000206e:	68bf      	ldr	r7, [r7, #8]
d0002070:	47b8      	blx	r7
d0002072:	f89b 2004 	ldrb.w	r2, [fp, #4]
d0002076:	f89b 1005 	ldrb.w	r1, [fp, #5]
d000207a:	4680      	mov	r8, r0
d000207c:	f89b 3006 	ldrb.w	r3, [fp, #6]
d0002080:	4630      	mov	r0, r6
d0002082:	ea42 2201 	orr.w	r2, r2, r1, lsl #8
d0002086:	f89b 1007 	ldrb.w	r1, [fp, #7]
d000208a:	ea42 4303 	orr.w	r3, r2, r3, lsl #16
d000208e:	ea43 6301 	orr.w	r3, r3, r1, lsl #24
d0002092:	681b      	ldr	r3, [r3, #0]
d0002094:	68db      	ldr	r3, [r3, #12]
d0002096:	4798      	blx	r3
d0002098:	f1b8 0f00 	cmp.w	r8, #0
d000209c:	f040 80bd 	bne.w	d000221a <main+0x5aa>
d00020a0:	9b16      	ldr	r3, [sp, #88]	; 0x58
d00020a2:	429c      	cmp	r4, r3
d00020a4:	f040 80b9 	bne.w	d000221a <main+0x5aa>
d00020a8:	f44f 6281 	mov.w	r2, #1032	; 0x408
d00020ac:	4641      	mov	r1, r8
d00020ae:	4864      	ldr	r0, [pc, #400]	; (d0002240 <main+0x5d0>)
d00020b0:	f001 fa52 	bl	d0003558 <memset>
d00020b4:	2c01      	cmp	r4, #1
d00020b6:	d90c      	bls.n	d00020d2 <main+0x462>
d00020b8:	f89a 3000 	ldrb.w	r3, [sl]
d00020bc:	2b42      	cmp	r3, #66	; 0x42
d00020be:	f000 80cf 	beq.w	d0002260 <main+0x5f0>
d00020c2:	2c0b      	cmp	r4, #11
d00020c4:	d905      	bls.n	d00020d2 <main+0x462>
d00020c6:	f8da 2000 	ldr.w	r2, [sl]
d00020ca:	4b5e      	ldr	r3, [pc, #376]	; (d0002244 <main+0x5d4>)
d00020cc:	429a      	cmp	r2, r3
d00020ce:	f000 81da 	beq.w	d0002486 <main+0x816>
d00020d2:	485d      	ldr	r0, [pc, #372]	; (d0002248 <main+0x5d8>)
d00020d4:	f7ff f902 	bl	d00012dc <set_status>
d00020d8:	4650      	mov	r0, sl
d00020da:	f001 fa27 	bl	d000352c <free>
d00020de:	f7ff fcd7 	bl	d0001a90 <free_image.constprop.0>
d00020e2:	485a      	ldr	r0, [pc, #360]	; (d000224c <main+0x5dc>)
d00020e4:	2401      	movs	r4, #1
d00020e6:	f7ff fce3 	bl	d0001ab0 <draw_message.constprop.0>
d00020ea:	f7ff f8d1 	bl	d0001290 <wait_for_exit_combo>
d00020ee:	4d58      	ldr	r5, [pc, #352]	; (d0002250 <main+0x5e0>)
d00020f0:	f7ff fcce 	bl	d0001a90 <free_image.constprop.0>
d00020f4:	682b      	ldr	r3, [r5, #0]
d00020f6:	b13b      	cbz	r3, d0002108 <main+0x498>
d00020f8:	6828      	ldr	r0, [r5, #0]
d00020fa:	f001 fa17 	bl	d000352c <free>
d00020fe:	4628      	mov	r0, r5
d0002100:	2220      	movs	r2, #32
d0002102:	2100      	movs	r1, #0
d0002104:	f001 fa28 	bl	d0003558 <memset>
d0002108:	4852      	ldr	r0, [pc, #328]	; (d0002254 <main+0x5e4>)
d000210a:	2602      	movs	r6, #2
d000210c:	f001 fae6 	bl	d00036dc <iprintf>
d0002110:	f89b 300c 	ldrb.w	r3, [fp, #12]
d0002114:	f89b 200d 	ldrb.w	r2, [fp, #13]
d0002118:	f89b 100e 	ldrb.w	r1, [fp, #14]
d000211c:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0002120:	f89b 200f 	ldrb.w	r2, [fp, #15]
d0002124:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0002128:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d000212c:	681b      	ldr	r3, [r3, #0]
d000212e:	68db      	ldr	r3, [r3, #12]
d0002130:	4798      	blx	r3
d0002132:	f89b 500c 	ldrb.w	r5, [fp, #12]
d0002136:	f89b 200d 	ldrb.w	r2, [fp, #13]
d000213a:	f44f 73a0 	mov.w	r3, #320	; 0x140
d000213e:	f89b 100e 	ldrb.w	r1, [fp, #14]
d0002142:	ea45 2502 	orr.w	r5, r5, r2, lsl #8
d0002146:	f89b 000f 	ldrb.w	r0, [fp, #15]
d000214a:	f44f 72f0 	mov.w	r2, #480	; 0x1e0
d000214e:	ea45 4501 	orr.w	r5, r5, r1, lsl #16
d0002152:	4619      	mov	r1, r3
d0002154:	ea45 6500 	orr.w	r5, r5, r0, lsl #24
d0002158:	4610      	mov	r0, r2
d000215a:	682d      	ldr	r5, [r5, #0]
d000215c:	9600      	str	r6, [sp, #0]
d000215e:	696d      	ldr	r5, [r5, #20]
d0002160:	47a8      	blx	r5
d0002162:	f89b 3004 	ldrb.w	r3, [fp, #4]
d0002166:	f89b 2005 	ldrb.w	r2, [fp, #5]
d000216a:	f89b 1006 	ldrb.w	r1, [fp, #6]
d000216e:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0002172:	f89b 2007 	ldrb.w	r2, [fp, #7]
d0002176:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d000217a:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d000217e:	685b      	ldr	r3, [r3, #4]
d0002180:	4798      	blx	r3
d0002182:	f89b 300c 	ldrb.w	r3, [fp, #12]
d0002186:	f89b 200d 	ldrb.w	r2, [fp, #13]
d000218a:	f89b 100e 	ldrb.w	r1, [fp, #14]
d000218e:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0002192:	f89b 200f 	ldrb.w	r2, [fp, #15]
d0002196:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d000219a:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d000219e:	681b      	ldr	r3, [r3, #0]
d00021a0:	68db      	ldr	r3, [r3, #12]
d00021a2:	4798      	blx	r3
d00021a4:	f89b 3000 	ldrb.w	r3, [fp]
d00021a8:	f89b 2001 	ldrb.w	r2, [fp, #1]
d00021ac:	f89b 1002 	ldrb.w	r1, [fp, #2]
d00021b0:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d00021b4:	f89b 2003 	ldrb.w	r2, [fp, #3]
d00021b8:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d00021bc:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00021c0:	685b      	ldr	r3, [r3, #4]
d00021c2:	4798      	blx	r3
d00021c4:	4620      	mov	r0, r4
d00021c6:	b01b      	add	sp, #108	; 0x6c
d00021c8:	ecbd 8b02 	vpop	{d8}
d00021cc:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d00021d0:	f89b 3004 	ldrb.w	r3, [fp, #4]
d00021d4:	f89b 2005 	ldrb.w	r2, [fp, #5]
d00021d8:	f89b 1006 	ldrb.w	r1, [fp, #6]
d00021dc:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d00021e0:	f89b 2007 	ldrb.w	r2, [fp, #7]
d00021e4:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d00021e8:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00021ec:	681b      	ldr	r3, [r3, #0]
d00021ee:	68db      	ldr	r3, [r3, #12]
d00021f0:	4798      	blx	r3
d00021f2:	4819      	ldr	r0, [pc, #100]	; (d0002258 <main+0x5e8>)
d00021f4:	f7ff f872 	bl	d00012dc <set_status>
d00021f8:	e773      	b.n	d00020e2 <main+0x472>
d00021fa:	2b4c      	cmp	r3, #76	; 0x4c
d00021fc:	f47f aec2 	bne.w	d0001f84 <main+0x314>
d0002200:	7883      	ldrb	r3, [r0, #2]
d0002202:	f003 03df 	and.w	r3, r3, #223	; 0xdf
d0002206:	2b42      	cmp	r3, #66	; 0x42
d0002208:	f47f aebc 	bne.w	d0001f84 <main+0x314>
d000220c:	78c3      	ldrb	r3, [r0, #3]
d000220e:	f003 03df 	and.w	r3, r3, #223	; 0xdf
d0002212:	2b4d      	cmp	r3, #77	; 0x4d
d0002214:	f47f aeb6 	bne.w	d0001f84 <main+0x314>
d0002218:	e6b2      	b.n	d0001f80 <main+0x310>
d000221a:	4650      	mov	r0, sl
d000221c:	f001 f986 	bl	d000352c <free>
d0002220:	4643      	mov	r3, r8
d0002222:	4a0e      	ldr	r2, [pc, #56]	; (d000225c <main+0x5ec>)
d0002224:	21a0      	movs	r1, #160	; 0xa0
d0002226:	4809      	ldr	r0, [pc, #36]	; (d000224c <main+0x5dc>)
d0002228:	f001 fcc8 	bl	d0003bbc <sniprintf>
d000222c:	4807      	ldr	r0, [pc, #28]	; (d000224c <main+0x5dc>)
d000222e:	f7ff f855 	bl	d00012dc <set_status>
d0002232:	e756      	b.n	d00020e2 <main+0x472>
d0002234:	f47f aea6 	bne.w	d0001f84 <main+0x314>
d0002238:	e689      	b.n	d0001f4e <main+0x2de>
d000223a:	bf00      	nop
d000223c:	d000516c 	.word	0xd000516c
d0002240:	d0006ab8 	.word	0xd0006ab8
d0002244:	4d524f46 	.word	0x4d524f46
d0002248:	d0005134 	.word	0xd0005134
d000224c:	d0006ec4 	.word	0xd0006ec4
d0002250:	d0006f80 	.word	0xd0006f80
d0002254:	d0005160 	.word	0xd0005160
d0002258:	d0004e18 	.word	0xd0004e18
d000225c:	d0004e44 	.word	0xd0004e44
d0002260:	f89a 3001 	ldrb.w	r3, [sl, #1]
d0002264:	2b4d      	cmp	r3, #77	; 0x4d
d0002266:	f47f af2c 	bne.w	d00020c2 <main+0x452>
d000226a:	2c35      	cmp	r4, #53	; 0x35
d000226c:	f240 81d3 	bls.w	d0002616 <main+0x9a6>
d0002270:	f8ba 500e 	ldrh.w	r5, [sl, #14]
d0002274:	f8ba 3010 	ldrh.w	r3, [sl, #16]
d0002278:	ea45 4503 	orr.w	r5, r5, r3, lsl #16
d000227c:	2d27      	cmp	r5, #39	; 0x27
d000227e:	f240 860e 	bls.w	d0002e9e <main+0x122e>
d0002282:	f105 060e 	add.w	r6, r5, #14
d0002286:	42b4      	cmp	r4, r6
d0002288:	f0c0 8609 	bcc.w	d0002e9e <main+0x122e>
d000228c:	f8ba 2012 	ldrh.w	r2, [sl, #18]
d0002290:	f8ba 1014 	ldrh.w	r1, [sl, #20]
d0002294:	f8ba 3016 	ldrh.w	r3, [sl, #22]
d0002298:	ea42 4101 	orr.w	r1, r2, r1, lsl #16
d000229c:	f8ba 2018 	ldrh.w	r2, [sl, #24]
d00022a0:	2900      	cmp	r1, #0
d00022a2:	ea43 4202 	orr.w	r2, r3, r2, lsl #16
d00022a6:	9104      	str	r1, [sp, #16]
d00022a8:	9203      	str	r2, [sp, #12]
d00022aa:	f340 86df 	ble.w	d000306c <main+0x13fc>
d00022ae:	fab2 f382 	clz	r3, r2
d00022b2:	095b      	lsrs	r3, r3, #5
d00022b4:	2a00      	cmp	r2, #0
d00022b6:	f000 86d9 	beq.w	d000306c <main+0x13fc>
d00022ba:	9a03      	ldr	r2, [sp, #12]
d00022bc:	2a00      	cmp	r2, #0
d00022be:	f2c0 86cf 	blt.w	d0003060 <main+0x13f0>
d00022c2:	9308      	str	r3, [sp, #32]
d00022c4:	9b04      	ldr	r3, [sp, #16]
d00022c6:	f5b3 5f80 	cmp.w	r3, #4096	; 0x1000
d00022ca:	f200 86bf 	bhi.w	d000304c <main+0x13dc>
d00022ce:	9a03      	ldr	r2, [sp, #12]
d00022d0:	f5b2 5f80 	cmp.w	r2, #4096	; 0x1000
d00022d4:	f200 86ba 	bhi.w	d000304c <main+0x13dc>
d00022d8:	fba3 2302 	umull	r2, r3, r3, r2
d00022dc:	a1d8      	add	r1, pc, #864	; (adr r1, d0002640 <main+0x9d0>)
d00022de:	e9d1 0100 	ldrd	r0, r1, [r1]
d00022e2:	4299      	cmp	r1, r3
d00022e4:	bf08      	it	eq
d00022e6:	4290      	cmpeq	r0, r2
d00022e8:	f0c0 86b0 	bcc.w	d000304c <main+0x13dc>
d00022ec:	f8ba 300a 	ldrh.w	r3, [sl, #10]
d00022f0:	f8ba 200c 	ldrh.w	r2, [sl, #12]
d00022f4:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d00022f8:	429c      	cmp	r4, r3
d00022fa:	930a      	str	r3, [sp, #40]	; 0x28
d00022fc:	f240 869c 	bls.w	d0003038 <main+0x13c8>
d0002300:	f8ba 201e 	ldrh.w	r2, [sl, #30]
d0002304:	f8ba 3020 	ldrh.w	r3, [sl, #32]
d0002308:	ea52 4203 	orrs.w	r2, r2, r3, lsl #16
d000230c:	d002      	beq.n	d0002314 <main+0x6a4>
d000230e:	2a03      	cmp	r2, #3
d0002310:	f040 86cc 	bne.w	d00030ac <main+0x143c>
d0002314:	f89a 301d 	ldrb.w	r3, [sl, #29]
d0002318:	f89a 701c 	ldrb.w	r7, [sl, #28]
d000231c:	ea47 2703 	orr.w	r7, r7, r3, lsl #8
d0002320:	4638      	mov	r0, r7
d0002322:	9705      	str	r7, [sp, #20]
d0002324:	b23f      	sxth	r7, r7
d0002326:	2808      	cmp	r0, #8
d0002328:	f200 85c3 	bhi.w	d0002eb2 <main+0x1242>
d000232c:	f8ba 302e 	ldrh.w	r3, [sl, #46]	; 0x2e
d0002330:	f8ba 1030 	ldrh.w	r1, [sl, #48]	; 0x30
d0002334:	ea53 4301 	orrs.w	r3, r3, r1, lsl #16
d0002338:	d101      	bne.n	d000233e <main+0x6ce>
d000233a:	2301      	movs	r3, #1
d000233c:	4083      	lsls	r3, r0
d000233e:	f5b3 7f80 	cmp.w	r3, #256	; 0x100
d0002342:	bf28      	it	cs
d0002344:	f44f 7380 	movcs.w	r3, #256	; 0x100
d0002348:	eb06 0183 	add.w	r1, r6, r3, lsl #2
d000234c:	428c      	cmp	r4, r1
d000234e:	f0c0 85d1 	bcc.w	d0002ef4 <main+0x1284>
d0002352:	2a03      	cmp	r2, #3
d0002354:	f000 85b5 	beq.w	d0002ec2 <main+0x1252>
d0002358:	9a05      	ldr	r2, [sp, #20]
d000235a:	2a20      	cmp	r2, #32
d000235c:	bf0b      	itete	eq
d000235e:	22ff      	moveq	r2, #255	; 0xff
d0002360:	221f      	movne	r2, #31
d0002362:	f44f 057f 	moveq.w	r5, #16711680	; 0xff0000
d0002366:	f44f 45f8 	movne.w	r5, #31744	; 0x7c00
d000236a:	9207      	str	r2, [sp, #28]
d000236c:	bf0c      	ite	eq
d000236e:	f44f 427f 	moveq.w	r2, #65280	; 0xff00
d0002372:	f44f 7278 	movne.w	r2, #992	; 0x3e0
d0002376:	9206      	str	r2, [sp, #24]
d0002378:	9a04      	ldr	r2, [sp, #16]
d000237a:	9905      	ldr	r1, [sp, #20]
d000237c:	980a      	ldr	r0, [sp, #40]	; 0x28
d000237e:	fb02 f101 	mul.w	r1, r2, r1
d0002382:	311f      	adds	r1, #31
d0002384:	0949      	lsrs	r1, r1, #5
d0002386:	008a      	lsls	r2, r1, #2
d0002388:	9903      	ldr	r1, [sp, #12]
d000238a:	fb02 0101 	mla	r1, r2, r1, r0
d000238e:	920b      	str	r2, [sp, #44]	; 0x2c
d0002390:	428c      	cmp	r4, r1
d0002392:	f0c0 8702 	bcc.w	d000319a <main+0x152a>
d0002396:	4aac      	ldr	r2, [pc, #688]	; (d0002648 <main+0x9d8>)
d0002398:	9804      	ldr	r0, [sp, #16]
d000239a:	9905      	ldr	r1, [sp, #20]
d000239c:	8010      	strh	r0, [r2, #0]
d000239e:	2908      	cmp	r1, #8
d00023a0:	9803      	ldr	r0, [sp, #12]
d00023a2:	9202      	str	r2, [sp, #8]
d00023a4:	8050      	strh	r0, [r2, #2]
d00023a6:	f200 85c6 	bhi.w	d0002f36 <main+0x12c6>
d00023aa:	eb0a 0106 	add.w	r1, sl, r6
d00023ae:	f102 0008 	add.w	r0, r2, #8
d00023b2:	eb01 0683 	add.w	r6, r1, r3, lsl #2
d00023b6:	e00b      	b.n	d00023d0 <main+0x760>
d00023b8:	784a      	ldrb	r2, [r1, #1]
d00023ba:	788d      	ldrb	r5, [r1, #2]
d00023bc:	0212      	lsls	r2, r2, #8
d00023be:	f811 4b04 	ldrb.w	r4, [r1], #4
d00023c2:	ea42 4205 	orr.w	r2, r2, r5, lsl #16
d00023c6:	4322      	orrs	r2, r4
d00023c8:	f042 427f 	orr.w	r2, r2, #4278190080	; 0xff000000
d00023cc:	f840 2b04 	str.w	r2, [r0], #4
d00023d0:	428e      	cmp	r6, r1
d00023d2:	d1f1      	bne.n	d00023b8 <main+0x748>
d00023d4:	3301      	adds	r3, #1
d00023d6:	f04f 427f 	mov.w	r2, #4278190080	; 0xff000000
d00023da:	e002      	b.n	d00023e2 <main+0x772>
d00023dc:	9902      	ldr	r1, [sp, #8]
d00023de:	f841 2023 	str.w	r2, [r1, r3, lsl #2]
d00023e2:	3301      	adds	r3, #1
d00023e4:	f5b3 7f81 	cmp.w	r3, #258	; 0x102
d00023e8:	d1f8      	bne.n	d00023dc <main+0x76c>
d00023ea:	9b03      	ldr	r3, [sp, #12]
d00023ec:	9a04      	ldr	r2, [sp, #16]
d00023ee:	fb03 f002 	mul.w	r0, r3, r2
d00023f2:	f001 f893 	bl	d000351c <malloc>
d00023f6:	9b02      	ldr	r3, [sp, #8]
d00023f8:	6058      	str	r0, [r3, #4]
d00023fa:	2800      	cmp	r0, #0
d00023fc:	f000 867e 	beq.w	d00030fc <main+0x148c>
d0002400:	2600      	movs	r6, #0
d0002402:	9b03      	ldr	r3, [sp, #12]
d0002404:	f04f 0c80 	mov.w	ip, #128	; 0x80
d0002408:	9d05      	ldr	r5, [sp, #20]
d000240a:	1e5f      	subs	r7, r3, #1
d000240c:	4630      	mov	r0, r6
d000240e:	9b03      	ldr	r3, [sp, #12]
d0002410:	4283      	cmp	r3, r0
d0002412:	f000 83bd 	beq.w	d0002b90 <main+0xf20>
d0002416:	9b08      	ldr	r3, [sp, #32]
d0002418:	2b00      	cmp	r3, #0
d000241a:	f040 866c 	bne.w	d00030f6 <main+0x1486>
d000241e:	1a3b      	subs	r3, r7, r0
d0002420:	990a      	ldr	r1, [sp, #40]	; 0x28
d0002422:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
d0002424:	fb03 1202 	mla	r2, r3, r2, r1
d0002428:	9b02      	ldr	r3, [sp, #8]
d000242a:	6859      	ldr	r1, [r3, #4]
d000242c:	4452      	add	r2, sl
d000242e:	2300      	movs	r3, #0
d0002430:	4431      	add	r1, r6
d0002432:	f003 0407 	and.w	r4, r3, #7
d0002436:	2d08      	cmp	r5, #8
d0002438:	ea4f 0ed3 	mov.w	lr, r3, lsr #3
d000243c:	fa2c f404 	lsr.w	r4, ip, r4
d0002440:	f000 8655 	beq.w	d00030ee <main+0x147e>
d0002444:	2d04      	cmp	r5, #4
d0002446:	f000 8645 	beq.w	d00030d4 <main+0x1464>
d000244a:	2d01      	cmp	r5, #1
d000244c:	f040 86af 	bne.w	d00031ae <main+0x153e>
d0002450:	f812 e00e 	ldrb.w	lr, [r2, lr]
d0002454:	ea1e 0f04 	tst.w	lr, r4
d0002458:	bf14      	ite	ne
d000245a:	2401      	movne	r4, #1
d000245c:	2400      	moveq	r4, #0
d000245e:	54cc      	strb	r4, [r1, r3]
d0002460:	3301      	adds	r3, #1
d0002462:	9c04      	ldr	r4, [sp, #16]
d0002464:	429c      	cmp	r4, r3
d0002466:	d8e4      	bhi.n	d0002432 <main+0x7c2>
d0002468:	3001      	adds	r0, #1
d000246a:	4426      	add	r6, r4
d000246c:	e7cf      	b.n	d000240e <main+0x79e>
d000246e:	4633      	mov	r3, r6
d0002470:	4a76      	ldr	r2, [pc, #472]	; (d000264c <main+0x9dc>)
d0002472:	21a0      	movs	r1, #160	; 0xa0
d0002474:	f8cd 9000 	str.w	r9, [sp]
d0002478:	4875      	ldr	r0, [pc, #468]	; (d0002650 <main+0x9e0>)
d000247a:	f001 fb9f 	bl	d0003bbc <sniprintf>
d000247e:	4874      	ldr	r0, [pc, #464]	; (d0002650 <main+0x9e0>)
d0002480:	f7fe ff2c 	bl	d00012dc <set_status>
d0002484:	e62d      	b.n	d00020e2 <main+0x472>
d0002486:	f8da 2008 	ldr.w	r2, [sl, #8]
d000248a:	2300      	movs	r3, #0
d000248c:	4971      	ldr	r1, [pc, #452]	; (d0002654 <main+0x9e4>)
d000248e:	ba12      	rev	r2, r2
d0002490:	9318      	str	r3, [sp, #96]	; 0x60
d0002492:	f8ad 3064 	strh.w	r3, [sp, #100]	; 0x64
d0002496:	428a      	cmp	r2, r1
d0002498:	e9cd 3316 	strd	r3, r3, [sp, #88]	; 0x58
d000249c:	d07b      	beq.n	d0002596 <main+0x926>
d000249e:	f101 4179 	add.w	r1, r1, #4177526784	; 0xf9000000
d00024a2:	f501 211f 	add.w	r1, r1, #651264	; 0x9f000
d00024a6:	f201 512d 	addw	r1, r1, #1325	; 0x52d
d00024aa:	428a      	cmp	r2, r1
d00024ac:	f040 821e 	bne.w	d00028ec <main+0xc7c>
d00024b0:	9307      	str	r3, [sp, #28]
d00024b2:	f04f 0e00 	mov.w	lr, #0
d00024b6:	210c      	movs	r1, #12
d00024b8:	f8cd e010 	str.w	lr, [sp, #16]
d00024bc:	f8cd e030 	str.w	lr, [sp, #48]	; 0x30
d00024c0:	f8cd e014 	str.w	lr, [sp, #20]
d00024c4:	f8cd e024 	str.w	lr, [sp, #36]	; 0x24
d00024c8:	f8cd e00c 	str.w	lr, [sp, #12]
d00024cc:	f101 0708 	add.w	r7, r1, #8
d00024d0:	42bc      	cmp	r4, r7
d00024d2:	f0c0 80cb 	bcc.w	d000266c <main+0x9fc>
d00024d6:	eb0a 0601 	add.w	r6, sl, r1
d00024da:	f81a c001 	ldrb.w	ip, [sl, r1]
d00024de:	eb0a 0007 	add.w	r0, sl, r7
d00024e2:	7972      	ldrb	r2, [r6, #5]
d00024e4:	7933      	ldrb	r3, [r6, #4]
d00024e6:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d00024ea:	79b2      	ldrb	r2, [r6, #6]
d00024ec:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d00024f0:	79f2      	ldrb	r2, [r6, #7]
d00024f2:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00024f6:	7872      	ldrb	r2, [r6, #1]
d00024f8:	ba1b      	rev	r3, r3
d00024fa:	ea4c 2202 	orr.w	r2, ip, r2, lsl #8
d00024fe:	f896 c002 	ldrb.w	ip, [r6, #2]
d0002502:	4419      	add	r1, r3
d0002504:	78f6      	ldrb	r6, [r6, #3]
d0002506:	ea42 420c 	orr.w	r2, r2, ip, lsl #16
d000250a:	f003 0c01 	and.w	ip, r3, #1
d000250e:	ea42 6206 	orr.w	r2, r2, r6, lsl #24
d0002512:	eb0c 0601 	add.w	r6, ip, r1
d0002516:	f101 0c08 	add.w	ip, r1, #8
d000251a:	ba12      	rev	r2, r2
d000251c:	f106 0108 	add.w	r1, r6, #8
d0002520:	4564      	cmp	r4, ip
d0002522:	f0c0 8081 	bcc.w	d0002628 <main+0x9b8>
d0002526:	4e4c      	ldr	r6, [pc, #304]	; (d0002658 <main+0x9e8>)
d0002528:	42b2      	cmp	r2, r6
d000252a:	d03a      	beq.n	d00025a2 <main+0x932>
d000252c:	4e4b      	ldr	r6, [pc, #300]	; (d000265c <main+0x9ec>)
d000252e:	42b2      	cmp	r2, r6
d0002530:	d034      	beq.n	d000259c <main+0x92c>
d0002532:	f106 467f 	add.w	r6, r6, #4278190080	; 0xff000000
d0002536:	f506 3600 	add.w	r6, r6, #131072	; 0x20000
d000253a:	f206 3609 	addw	r6, r6, #777	; 0x309
d000253e:	42b2      	cmp	r2, r6
d0002540:	d066      	beq.n	d0002610 <main+0x9a0>
d0002542:	f506 0672 	add.w	r6, r6, #15859712	; 0xf20000
d0002546:	f606 06ee 	addw	r6, r6, #2286	; 0x8ee
d000254a:	42b2      	cmp	r2, r6
d000254c:	d1be      	bne.n	d00024cc <main+0x85c>
d000254e:	2b03      	cmp	r3, #3
d0002550:	d9bc      	bls.n	d00024cc <main+0x85c>
d0002552:	7842      	ldrb	r2, [r0, #1]
d0002554:	f81a 3007 	ldrb.w	r3, [sl, r7]
d0002558:	7886      	ldrb	r6, [r0, #2]
d000255a:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d000255e:	78c2      	ldrb	r2, [r0, #3]
d0002560:	ea43 4306 	orr.w	r3, r3, r6, lsl #16
d0002564:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0002568:	ba1b      	rev	r3, r3
d000256a:	9304      	str	r3, [sp, #16]
d000256c:	e7ae      	b.n	d00024cc <main+0x85c>
d000256e:	2b4c      	cmp	r3, #76	; 0x4c
d0002570:	f47f ad08 	bne.w	d0001f84 <main+0x314>
d0002574:	78c3      	ldrb	r3, [r0, #3]
d0002576:	f003 03df 	and.w	r3, r3, #223	; 0xdf
d000257a:	2b42      	cmp	r3, #66	; 0x42
d000257c:	f47f ad02 	bne.w	d0001f84 <main+0x314>
d0002580:	7903      	ldrb	r3, [r0, #4]
d0002582:	f003 03df 	and.w	r3, r3, #223	; 0xdf
d0002586:	2b4d      	cmp	r3, #77	; 0x4d
d0002588:	f47f acfc 	bne.w	d0001f84 <main+0x314>
d000258c:	7943      	ldrb	r3, [r0, #5]
d000258e:	2b00      	cmp	r3, #0
d0002590:	f43f ad23 	beq.w	d0001fda <main+0x36a>
d0002594:	e4f6      	b.n	d0001f84 <main+0x314>
d0002596:	2301      	movs	r3, #1
d0002598:	9307      	str	r3, [sp, #28]
d000259a:	e78a      	b.n	d00024b2 <main+0x842>
d000259c:	9305      	str	r3, [sp, #20]
d000259e:	9003      	str	r0, [sp, #12]
d00025a0:	e794      	b.n	d00024cc <main+0x85c>
d00025a2:	2b13      	cmp	r3, #19
d00025a4:	d92b      	bls.n	d00025fe <main+0x98e>
d00025a6:	f81a 3007 	ldrb.w	r3, [sl, r7]
d00025aa:	7842      	ldrb	r2, [r0, #1]
d00025ac:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
d00025b0:	f8ad 2058 	strh.w	r2, [sp, #88]	; 0x58
d00025b4:	7886      	ldrb	r6, [r0, #2]
d00025b6:	78c3      	ldrb	r3, [r0, #3]
d00025b8:	ea43 2306 	orr.w	r3, r3, r6, lsl #8
d00025bc:	f8ad 305a 	strh.w	r3, [sp, #90]	; 0x5a
d00025c0:	7a06      	ldrb	r6, [r0, #8]
d00025c2:	f88d 605c 	strb.w	r6, [sp, #92]	; 0x5c
d00025c6:	7a46      	ldrb	r6, [r0, #9]
d00025c8:	f88d 605d 	strb.w	r6, [sp, #93]	; 0x5d
d00025cc:	7a86      	ldrb	r6, [r0, #10]
d00025ce:	f88d 605e 	strb.w	r6, [sp, #94]	; 0x5e
d00025d2:	7b07      	ldrb	r7, [r0, #12]
d00025d4:	7b46      	ldrb	r6, [r0, #13]
d00025d6:	ea46 2607 	orr.w	r6, r6, r7, lsl #8
d00025da:	f8ad 6060 	strh.w	r6, [sp, #96]	; 0x60
d00025de:	7c07      	ldrb	r7, [r0, #16]
d00025e0:	7c46      	ldrb	r6, [r0, #17]
d00025e2:	ea46 2607 	orr.w	r6, r6, r7, lsl #8
d00025e6:	f8ad 6062 	strh.w	r6, [sp, #98]	; 0x62
d00025ea:	7c86      	ldrb	r6, [r0, #18]
d00025ec:	7cc0      	ldrb	r0, [r0, #19]
d00025ee:	ea40 2006 	orr.w	r0, r0, r6, lsl #8
d00025f2:	f8ad 0064 	strh.w	r0, [sp, #100]	; 0x64
d00025f6:	b112      	cbz	r2, d00025fe <main+0x98e>
d00025f8:	2b00      	cmp	r3, #0
d00025fa:	f040 8181 	bne.w	d0002900 <main+0xc90>
d00025fe:	4818      	ldr	r0, [pc, #96]	; (d0002660 <main+0x9f0>)
d0002600:	f7fe fe6c 	bl	d00012dc <set_status>
d0002604:	4650      	mov	r0, sl
d0002606:	f000 ff91 	bl	d000352c <free>
d000260a:	f7ff fa41 	bl	d0001a90 <free_image.constprop.0>
d000260e:	e568      	b.n	d00020e2 <main+0x472>
d0002610:	930c      	str	r3, [sp, #48]	; 0x30
d0002612:	9009      	str	r0, [sp, #36]	; 0x24
d0002614:	e75a      	b.n	d00024cc <main+0x85c>
d0002616:	4813      	ldr	r0, [pc, #76]	; (d0002664 <main+0x9f4>)
d0002618:	f7fe fe60 	bl	d00012dc <set_status>
d000261c:	4650      	mov	r0, sl
d000261e:	f000 ff85 	bl	d000352c <free>
d0002622:	f7ff fa35 	bl	d0001a90 <free_image.constprop.0>
d0002626:	e55c      	b.n	d00020e2 <main+0x472>
d0002628:	480f      	ldr	r0, [pc, #60]	; (d0002668 <main+0x9f8>)
d000262a:	f7fe fe57 	bl	d00012dc <set_status>
d000262e:	4650      	mov	r0, sl
d0002630:	f000 ff7c 	bl	d000352c <free>
d0002634:	f7ff fa2c 	bl	d0001a90 <free_image.constprop.0>
d0002638:	e553      	b.n	d00020e2 <main+0x472>
d000263a:	bf00      	nop
d000263c:	f3af 8000 	nop.w
d0002640:	004c4b40 	.word	0x004c4b40
d0002644:	00000000 	.word	0x00000000
d0002648:	d0006ab8 	.word	0xd0006ab8
d000264c:	d0004e00 	.word	0xd0004e00
d0002650:	d0006ec4 	.word	0xd0006ec4
d0002654:	50424d20 	.word	0x50424d20
d0002658:	424d4844 	.word	0x424d4844
d000265c:	434d4150 	.word	0x434d4150
d0002660:	d0004fe4 	.word	0xd0004fe4
d0002664:	d0004e58 	.word	0xd0004e58
d0002668:	d0004fcc 	.word	0xd0004fcc
d000266c:	f1be 0f00 	cmp.w	lr, #0
d0002670:	f000 840b 	beq.w	d0002e8a <main+0x121a>
d0002674:	9b09      	ldr	r3, [sp, #36]	; 0x24
d0002676:	2b00      	cmp	r3, #0
d0002678:	f000 8407 	beq.w	d0002e8a <main+0x121a>
d000267c:	f89d 305e 	ldrb.w	r3, [sp, #94]	; 0x5e
d0002680:	2b01      	cmp	r3, #1
d0002682:	f200 83f8 	bhi.w	d0002e76 <main+0x1206>
d0002686:	f8bd 4058 	ldrh.w	r4, [sp, #88]	; 0x58
d000268a:	f5b4 5f80 	cmp.w	r4, #4096	; 0x1000
d000268e:	f200 8517 	bhi.w	d00030c0 <main+0x1450>
d0002692:	f8bd 705a 	ldrh.w	r7, [sp, #90]	; 0x5a
d0002696:	f5b7 5f80 	cmp.w	r7, #4096	; 0x1000
d000269a:	f200 8511 	bhi.w	d00030c0 <main+0x1450>
d000269e:	fba4 2307 	umull	r2, r3, r4, r7
d00026a2:	a1c1      	add	r1, pc, #772	; (adr r1, d00029a8 <main+0xd38>)
d00026a4:	e9d1 0100 	ldrd	r0, r1, [r1]
d00026a8:	4299      	cmp	r1, r3
d00026aa:	bf08      	it	eq
d00026ac:	4290      	cmpeq	r0, r2
d00026ae:	f0c0 8507 	bcc.w	d00030c0 <main+0x1450>
d00026b2:	4abb      	ldr	r2, [pc, #748]	; (d00029a0 <main+0xd30>)
d00026b4:	f44f 7380 	mov.w	r3, #256	; 0x100
d00026b8:	f04f 417f 	mov.w	r1, #4278190080	; 0xff000000
d00026bc:	f102 0c08 	add.w	ip, r2, #8
d00026c0:	9202      	str	r2, [sp, #8]
d00026c2:	8014      	strh	r4, [r2, #0]
d00026c4:	8057      	strh	r7, [r2, #2]
d00026c6:	4662      	mov	r2, ip
d00026c8:	3b01      	subs	r3, #1
d00026ca:	f842 1b04 	str.w	r1, [r2], #4
d00026ce:	b29b      	uxth	r3, r3
d00026d0:	2b00      	cmp	r3, #0
d00026d2:	d1f9      	bne.n	d00026c8 <main+0xa58>
d00026d4:	9b03      	ldr	r3, [sp, #12]
d00026d6:	b3d3      	cbz	r3, d000274e <main+0xade>
d00026d8:	f240 3302 	movw	r3, #770	; 0x302
d00026dc:	9a05      	ldr	r2, [sp, #20]
d00026de:	429a      	cmp	r2, r3
d00026e0:	d802      	bhi.n	d00026e8 <main+0xa78>
d00026e2:	2503      	movs	r5, #3
d00026e4:	fbb2 f5f5 	udiv	r5, r2, r5
d00026e8:	9b03      	ldr	r3, [sp, #12]
d00026ea:	46e6      	mov	lr, ip
d00026ec:	2100      	movs	r1, #0
d00026ee:	e00d      	b.n	d000270c <main+0xa9c>
d00026f0:	f813 2c02 	ldrb.w	r2, [r3, #-2]
d00026f4:	f813 6c03 	ldrb.w	r6, [r3, #-3]
d00026f8:	0212      	lsls	r2, r2, #8
d00026fa:	f813 0c01 	ldrb.w	r0, [r3, #-1]
d00026fe:	ea42 4206 	orr.w	r2, r2, r6, lsl #16
d0002702:	4302      	orrs	r2, r0
d0002704:	f042 427f 	orr.w	r2, r2, #4278190080	; 0xff000000
d0002708:	f84e 2b04 	str.w	r2, [lr], #4
d000270c:	42a9      	cmp	r1, r5
d000270e:	f103 0303 	add.w	r3, r3, #3
d0002712:	f101 0101 	add.w	r1, r1, #1
d0002716:	d1eb      	bne.n	d00026f0 <main+0xa80>
d0002718:	9b04      	ldr	r3, [sp, #16]
d000271a:	0618      	lsls	r0, r3, #24
d000271c:	d517      	bpl.n	d000274e <main+0xade>
d000271e:	2d20      	cmp	r5, #32
d0002720:	d815      	bhi.n	d000274e <main+0xade>
d0002722:	2100      	movs	r1, #0
d0002724:	e00f      	b.n	d0002746 <main+0xad6>
d0002726:	f85c 2b04 	ldr.w	r2, [ip], #4
d000272a:	f3c2 2346 	ubfx	r3, r2, #9, #7
d000272e:	f3c2 4046 	ubfx	r0, r2, #17, #7
d0002732:	f3c2 0246 	ubfx	r2, r2, #1, #7
d0002736:	021b      	lsls	r3, r3, #8
d0002738:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
d000273c:	4313      	orrs	r3, r2
d000273e:	f043 437f 	orr.w	r3, r3, #4278190080	; 0xff000000
d0002742:	f8cc 307c 	str.w	r3, [ip, #124]	; 0x7c
d0002746:	428d      	cmp	r5, r1
d0002748:	f101 0101 	add.w	r1, r1, #1
d000274c:	d1eb      	bne.n	d0002726 <main+0xab6>
d000274e:	9b04      	ldr	r3, [sp, #16]
d0002750:	f3c3 23c0 	ubfx	r3, r3, #11, #1
d0002754:	9304      	str	r3, [sp, #16]
d0002756:	9b07      	ldr	r3, [sp, #28]
d0002758:	2b00      	cmp	r3, #0
d000275a:	f040 837a 	bne.w	d0002e52 <main+0x11e2>
d000275e:	f89d 205c 	ldrb.w	r2, [sp, #92]	; 0x5c
d0002762:	2a18      	cmp	r2, #24
d0002764:	f000 8372 	beq.w	d0002e4c <main+0x11dc>
d0002768:	9b04      	ldr	r3, [sp, #16]
d000276a:	2b00      	cmp	r3, #0
d000276c:	f040 836a 	bne.w	d0002e44 <main+0x11d4>
d0002770:	2a08      	cmp	r2, #8
d0002772:	f200 8350 	bhi.w	d0002e16 <main+0x11a6>
d0002776:	9b07      	ldr	r3, [sp, #28]
d0002778:	461d      	mov	r5, r3
d000277a:	9308      	str	r3, [sp, #32]
d000277c:	f104 030f 	add.w	r3, r4, #15
d0002780:	f89d 105d 	ldrb.w	r1, [sp, #93]	; 0x5d
d0002784:	091b      	lsrs	r3, r3, #4
d0002786:	2901      	cmp	r1, #1
d0002788:	bf08      	it	eq
d000278a:	3201      	addeq	r2, #1
d000278c:	005b      	lsls	r3, r3, #1
d000278e:	920a      	str	r2, [sp, #40]	; 0x28
d0002790:	9305      	str	r3, [sp, #20]
d0002792:	9b0a      	ldr	r3, [sp, #40]	; 0x28
d0002794:	9a05      	ldr	r2, [sp, #20]
d0002796:	fb03 f302 	mul.w	r3, r3, r2
d000279a:	4618      	mov	r0, r3
d000279c:	ee08 3a10 	vmov	s16, r3
d00027a0:	f000 febc 	bl	d000351c <malloc>
d00027a4:	4606      	mov	r6, r0
d00027a6:	2800      	cmp	r0, #0
d00027a8:	f000 832b 	beq.w	d0002e02 <main+0x1192>
d00027ac:	fb07 f004 	mul.w	r0, r7, r4
d00027b0:	2d00      	cmp	r5, #0
d00027b2:	f000 831f 	beq.w	d0002df4 <main+0x1184>
d00027b6:	eb00 0040 	add.w	r0, r0, r0, lsl #1
d00027ba:	f000 feaf 	bl	d000351c <malloc>
d00027be:	9003      	str	r0, [sp, #12]
d00027c0:	2800      	cmp	r0, #0
d00027c2:	f000 82fe 	beq.w	d0002dc2 <main+0x1152>
d00027c6:	9f05      	ldr	r7, [sp, #20]
d00027c8:	2500      	movs	r5, #0
d00027ca:	f8cd 9044 	str.w	r9, [sp, #68]	; 0x44
d00027ce:	00fb      	lsls	r3, r7, #3
d00027d0:	9505      	str	r5, [sp, #20]
d00027d2:	f8cd a018 	str.w	sl, [sp, #24]
d00027d6:	930d      	str	r3, [sp, #52]	; 0x34
d00027d8:	f8cd 8048 	str.w	r8, [sp, #72]	; 0x48
d00027dc:	f8bd 405a 	ldrh.w	r4, [sp, #90]	; 0x5a
d00027e0:	9b05      	ldr	r3, [sp, #20]
d00027e2:	42a3      	cmp	r3, r4
d00027e4:	f080 81c7 	bcs.w	d0002b76 <main+0xf06>
d00027e8:	f89d 305e 	ldrb.w	r3, [sp, #94]	; 0x5e
d00027ec:	2b00      	cmp	r3, #0
d00027ee:	f040 816a 	bne.w	d0002ac6 <main+0xe56>
d00027f2:	ee18 3a10 	vmov	r3, s16
d00027f6:	9a0c      	ldr	r2, [sp, #48]	; 0x30
d00027f8:	442b      	add	r3, r5
d00027fa:	4293      	cmp	r3, r2
d00027fc:	f200 8151 	bhi.w	d0002aa2 <main+0xe32>
d0002800:	9a09      	ldr	r2, [sp, #36]	; 0x24
d0002802:	4630      	mov	r0, r6
d0002804:	1951      	adds	r1, r2, r5
d0002806:	ee18 2a10 	vmov	r2, s16
d000280a:	461d      	mov	r5, r3
d000280c:	f000 fe96 	bl	d000353c <memcpy>
d0002810:	9b07      	ldr	r3, [sp, #28]
d0002812:	2b00      	cmp	r3, #0
d0002814:	f040 813a 	bne.w	d0002a8c <main+0xe1c>
d0002818:	9b08      	ldr	r3, [sp, #32]
d000281a:	2b00      	cmp	r3, #0
d000281c:	f040 80c8 	bne.w	d00029b0 <main+0xd40>
d0002820:	9b04      	ldr	r3, [sp, #16]
d0002822:	2b00      	cmp	r3, #0
d0002824:	f000 8086 	beq.w	d0002934 <main+0xcc4>
d0002828:	f89d 305c 	ldrb.w	r3, [sp, #92]	; 0x5c
d000282c:	2201      	movs	r2, #1
d000282e:	9808      	ldr	r0, [sp, #32]
d0002830:	46aa      	mov	sl, r5
d0002832:	2b07      	cmp	r3, #7
d0002834:	930e      	str	r3, [sp, #56]	; 0x38
d0002836:	4601      	mov	r1, r0
d0002838:	4680      	mov	r8, r0
d000283a:	bf8c      	ite	hi
d000283c:	2306      	movhi	r3, #6
d000283e:	2304      	movls	r3, #4
d0002840:	900b      	str	r0, [sp, #44]	; 0x2c
d0002842:	930f      	str	r3, [sp, #60]	; 0x3c
d0002844:	fa02 f303 	lsl.w	r3, r2, r3
d0002848:	3b01      	subs	r3, #1
d000284a:	b2db      	uxtb	r3, r3
d000284c:	9310      	str	r3, [sp, #64]	; 0x40
d000284e:	f8bd 2058 	ldrh.w	r2, [sp, #88]	; 0x58
d0002852:	4290      	cmp	r0, r2
d0002854:	d265      	bcs.n	d0002922 <main+0xcb2>
d0002856:	2580      	movs	r5, #128	; 0x80
d0002858:	f000 0407 	and.w	r4, r0, #7
d000285c:	2300      	movs	r3, #0
d000285e:	eb06 09d0 	add.w	r9, r6, r0, lsr #3
d0002862:	fa25 f404 	lsr.w	r4, r5, r4
d0002866:	9213      	str	r2, [sp, #76]	; 0x4c
d0002868:	469e      	mov	lr, r3
d000286a:	4655      	mov	r5, sl
d000286c:	b2e4      	uxtb	r4, r4
d000286e:	e00a      	b.n	d0002886 <main+0xc16>
d0002870:	f1ba 0f07 	cmp.w	sl, #7
d0002874:	d812      	bhi.n	d000289c <main+0xc2c>
d0002876:	f899 a000 	ldrb.w	sl, [r9]
d000287a:	44b9      	add	r9, r7
d000287c:	ea14 0f0a 	tst.w	r4, sl
d0002880:	bf18      	it	ne
d0002882:	fa5f f38c 	uxtbne.w	r3, ip
d0002886:	2201      	movs	r2, #1
d0002888:	fa5f fa8e 	uxtb.w	sl, lr
d000288c:	fa02 fc0e 	lsl.w	ip, r2, lr
d0002890:	4496      	add	lr, r2
d0002892:	9a0e      	ldr	r2, [sp, #56]	; 0x38
d0002894:	ea43 0c0c 	orr.w	ip, r3, ip
d0002898:	4592      	cmp	sl, r2
d000289a:	d3e9      	bcc.n	d0002870 <main+0xc00>
d000289c:	9c0f      	ldr	r4, [sp, #60]	; 0x3c
d000289e:	46aa      	mov	sl, r5
d00028a0:	9d10      	ldr	r5, [sp, #64]	; 0x40
d00028a2:	2c06      	cmp	r4, #6
d00028a4:	fa43 fc04 	asr.w	ip, r3, r4
d00028a8:	9a13      	ldr	r2, [sp, #76]	; 0x4c
d00028aa:	ea03 0305 	and.w	r3, r3, r5
d00028ae:	d02a      	beq.n	d0002906 <main+0xc96>
d00028b0:	ea43 1403 	orr.w	r4, r3, r3, lsl #4
d00028b4:	b2e4      	uxtb	r4, r4
d00028b6:	f1bc 0f00 	cmp.w	ip, #0
d00028ba:	d129      	bne.n	d0002910 <main+0xca0>
d00028bc:	3302      	adds	r3, #2
d00028be:	9902      	ldr	r1, [sp, #8]
d00028c0:	f851 1023 	ldr.w	r1, [r1, r3, lsl #2]
d00028c4:	f3c1 4307 	ubfx	r3, r1, #16, #8
d00028c8:	f3c1 2807 	ubfx	r8, r1, #8, #8
d00028cc:	b2c9      	uxtb	r1, r1
d00028ce:	930b      	str	r3, [sp, #44]	; 0x2c
d00028d0:	9b05      	ldr	r3, [sp, #20]
d00028d2:	9c03      	ldr	r4, [sp, #12]
d00028d4:	fb02 0203 	mla	r2, r2, r3, r0
d00028d8:	9d0b      	ldr	r5, [sp, #44]	; 0x2c
d00028da:	3001      	adds	r0, #1
d00028dc:	eb02 0242 	add.w	r2, r2, r2, lsl #1
d00028e0:	18a3      	adds	r3, r4, r2
d00028e2:	54a5      	strb	r5, [r4, r2]
d00028e4:	f883 8001 	strb.w	r8, [r3, #1]
d00028e8:	7099      	strb	r1, [r3, #2]
d00028ea:	e7b0      	b.n	d000284e <main+0xbde>
d00028ec:	482d      	ldr	r0, [pc, #180]	; (d00029a4 <main+0xd34>)
d00028ee:	f7fe fcf5 	bl	d00012dc <set_status>
d00028f2:	4650      	mov	r0, sl
d00028f4:	f000 fe1a 	bl	d000352c <free>
d00028f8:	f7ff f8ca 	bl	d0001a90 <free_image.constprop.0>
d00028fc:	f7ff bbf1 	b.w	d00020e2 <main+0x472>
d0002900:	f04f 0e01 	mov.w	lr, #1
d0002904:	e5e2      	b.n	d00024cc <main+0x85c>
d0002906:	091c      	lsrs	r4, r3, #4
d0002908:	ea44 0483 	orr.w	r4, r4, r3, lsl #2
d000290c:	b2e4      	uxtb	r4, r4
d000290e:	e7d2      	b.n	d00028b6 <main+0xc46>
d0002910:	f1bc 0f01 	cmp.w	ip, #1
d0002914:	fa5f f38c 	uxtb.w	r3, ip
d0002918:	d00a      	beq.n	d0002930 <main+0xcc0>
d000291a:	2b02      	cmp	r3, #2
d000291c:	d006      	beq.n	d000292c <main+0xcbc>
d000291e:	46a0      	mov	r8, r4
d0002920:	e7d6      	b.n	d00028d0 <main+0xc60>
d0002922:	4655      	mov	r5, sl
d0002924:	9b05      	ldr	r3, [sp, #20]
d0002926:	3301      	adds	r3, #1
d0002928:	9305      	str	r3, [sp, #20]
d000292a:	e757      	b.n	d00027dc <main+0xb6c>
d000292c:	940b      	str	r4, [sp, #44]	; 0x2c
d000292e:	e7cf      	b.n	d00028d0 <main+0xc60>
d0002930:	4621      	mov	r1, r4
d0002932:	e7cd      	b.n	d00028d0 <main+0xc60>
d0002934:	9b04      	ldr	r3, [sp, #16]
d0002936:	f04f 0980 	mov.w	r9, #128	; 0x80
d000293a:	f8bd 2058 	ldrh.w	r2, [sp, #88]	; 0x58
d000293e:	429a      	cmp	r2, r3
d0002940:	d9f0      	bls.n	d0002924 <main+0xcb4>
d0002942:	f003 0107 	and.w	r1, r3, #7
d0002946:	9c05      	ldr	r4, [sp, #20]
d0002948:	2000      	movs	r0, #0
d000294a:	f89d a05c 	ldrb.w	sl, [sp, #92]	; 0x5c
d000294e:	fb02 3804 	mla	r8, r2, r4, r3
d0002952:	fa29 f201 	lsr.w	r2, r9, r1
d0002956:	9902      	ldr	r1, [sp, #8]
d0002958:	4604      	mov	r4, r0
d000295a:	eb06 0cd3 	add.w	ip, r6, r3, lsr #3
d000295e:	6849      	ldr	r1, [r1, #4]
d0002960:	b2d2      	uxtb	r2, r2
d0002962:	910b      	str	r1, [sp, #44]	; 0x2c
d0002964:	e009      	b.n	d000297a <main+0xd0a>
d0002966:	f1be 0f07 	cmp.w	lr, #7
d000296a:	d811      	bhi.n	d0002990 <main+0xd20>
d000296c:	f89c e000 	ldrb.w	lr, [ip]
d0002970:	44bc      	add	ip, r7
d0002972:	ea12 0f0e 	tst.w	r2, lr
d0002976:	bf18      	it	ne
d0002978:	b2c8      	uxtbne	r0, r1
d000297a:	fa5f fe84 	uxtb.w	lr, r4
d000297e:	2101      	movs	r1, #1
d0002980:	45d6      	cmp	lr, sl
d0002982:	fa01 f104 	lsl.w	r1, r1, r4
d0002986:	f104 0401 	add.w	r4, r4, #1
d000298a:	ea41 0100 	orr.w	r1, r1, r0
d000298e:	d3ea      	bcc.n	d0002966 <main+0xcf6>
d0002990:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
d0002992:	3301      	adds	r3, #1
d0002994:	f802 0008 	strb.w	r0, [r2, r8]
d0002998:	e7cf      	b.n	d000293a <main+0xcca>
d000299a:	bf00      	nop
d000299c:	f3af 8000 	nop.w
d00029a0:	d0006ab8 	.word	0xd0006ab8
d00029a4:	d0004fb0 	.word	0xd0004fb0
d00029a8:	004c4b40 	.word	0x004c4b40
d00029ac:	00000000 	.word	0x00000000
d00029b0:	9907      	ldr	r1, [sp, #28]
d00029b2:	f04f 0a80 	mov.w	sl, #128	; 0x80
d00029b6:	f8bd 3058 	ldrh.w	r3, [sp, #88]	; 0x58
d00029ba:	428b      	cmp	r3, r1
d00029bc:	d9b2      	bls.n	d0002924 <main+0xcb4>
d00029be:	9a05      	ldr	r2, [sp, #20]
d00029c0:	f001 0007 	and.w	r0, r1, #7
d00029c4:	f04f 0c00 	mov.w	ip, #0
d00029c8:	9c03      	ldr	r4, [sp, #12]
d00029ca:	fb03 1302 	mla	r3, r3, r2, r1
d00029ce:	fa2a f000 	lsr.w	r0, sl, r0
d00029d2:	08ca      	lsrs	r2, r1, #3
d00029d4:	46e6      	mov	lr, ip
d00029d6:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d00029da:	eb06 08d1 	add.w	r8, r6, r1, lsr #3
d00029de:	441c      	add	r4, r3
d00029e0:	b2c0      	uxtb	r0, r0
d00029e2:	940b      	str	r4, [sp, #44]	; 0x2c
d00029e4:	fa2a f40e 	lsr.w	r4, sl, lr
d00029e8:	f898 9000 	ldrb.w	r9, [r8]
d00029ec:	f10e 0e01 	add.w	lr, lr, #1
d00029f0:	44b8      	add	r8, r7
d00029f2:	ea10 0f09 	tst.w	r0, r9
d00029f6:	ea4c 0404 	orr.w	r4, ip, r4
d00029fa:	bf18      	it	ne
d00029fc:	fa5f fc84 	uxtbne.w	ip, r4
d0002a00:	f1be 0f08 	cmp.w	lr, #8
d0002a04:	d1ee      	bne.n	d00029e4 <main+0xd74>
d0002a06:	9c0d      	ldr	r4, [sp, #52]	; 0x34
d0002a08:	f04f 0e00 	mov.w	lr, #0
d0002a0c:	eb02 0904 	add.w	r9, r2, r4
d0002a10:	9c0b      	ldr	r4, [sp, #44]	; 0x2c
d0002a12:	1c5a      	adds	r2, r3, #1
d0002a14:	f884 c000 	strb.w	ip, [r4]
d0002a18:	eb06 0809 	add.w	r8, r6, r9
d0002a1c:	4614      	mov	r4, r2
d0002a1e:	9a03      	ldr	r2, [sp, #12]
d0002a20:	46f4      	mov	ip, lr
d0002a22:	1914      	adds	r4, r2, r4
d0002a24:	464a      	mov	r2, r9
d0002a26:	940b      	str	r4, [sp, #44]	; 0x2c
d0002a28:	fa2a f40c 	lsr.w	r4, sl, ip
d0002a2c:	f898 9000 	ldrb.w	r9, [r8]
d0002a30:	f10c 0c01 	add.w	ip, ip, #1
d0002a34:	44b8      	add	r8, r7
d0002a36:	ea10 0f09 	tst.w	r0, r9
d0002a3a:	ea4e 0404 	orr.w	r4, lr, r4
d0002a3e:	bf18      	it	ne
d0002a40:	fa5f fe84 	uxtbne.w	lr, r4
d0002a44:	f1bc 0f08 	cmp.w	ip, #8
d0002a48:	d1ee      	bne.n	d0002a28 <main+0xdb8>
d0002a4a:	1c9c      	adds	r4, r3, #2
d0002a4c:	9b0d      	ldr	r3, [sp, #52]	; 0x34
d0002a4e:	f04f 0c00 	mov.w	ip, #0
d0002a52:	441a      	add	r2, r3
d0002a54:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
d0002a56:	f883 e000 	strb.w	lr, [r3]
d0002a5a:	46e6      	mov	lr, ip
d0002a5c:	9b03      	ldr	r3, [sp, #12]
d0002a5e:	441c      	add	r4, r3
d0002a60:	18b3      	adds	r3, r6, r2
d0002a62:	fa2a f20e 	lsr.w	r2, sl, lr
d0002a66:	f893 8000 	ldrb.w	r8, [r3]
d0002a6a:	f10e 0e01 	add.w	lr, lr, #1
d0002a6e:	443b      	add	r3, r7
d0002a70:	ea10 0f08 	tst.w	r0, r8
d0002a74:	ea4c 0202 	orr.w	r2, ip, r2
d0002a78:	bf18      	it	ne
d0002a7a:	fa5f fc82 	uxtbne.w	ip, r2
d0002a7e:	f1be 0f08 	cmp.w	lr, #8
d0002a82:	d1ee      	bne.n	d0002a62 <main+0xdf2>
d0002a84:	3101      	adds	r1, #1
d0002a86:	f884 c000 	strb.w	ip, [r4]
d0002a8a:	e794      	b.n	d00029b6 <main+0xd46>
d0002a8c:	9b02      	ldr	r3, [sp, #8]
d0002a8e:	4631      	mov	r1, r6
d0002a90:	f8bd 2058 	ldrh.w	r2, [sp, #88]	; 0x58
d0002a94:	6858      	ldr	r0, [r3, #4]
d0002a96:	9b05      	ldr	r3, [sp, #20]
d0002a98:	fb03 0002 	mla	r0, r3, r2, r0
d0002a9c:	f000 fd4e 	bl	d000353c <memcpy>
d0002aa0:	e740      	b.n	d0002924 <main+0xcb4>
d0002aa2:	4630      	mov	r0, r6
d0002aa4:	f8dd a018 	ldr.w	sl, [sp, #24]
d0002aa8:	f000 fd40 	bl	d000352c <free>
d0002aac:	9803      	ldr	r0, [sp, #12]
d0002aae:	f000 fd3d 	bl	d000352c <free>
d0002ab2:	48ca      	ldr	r0, [pc, #808]	; (d0002ddc <main+0x116c>)
d0002ab4:	f7fe fc12 	bl	d00012dc <set_status>
d0002ab8:	4650      	mov	r0, sl
d0002aba:	f000 fd37 	bl	d000352c <free>
d0002abe:	f7fe ffe7 	bl	d0001a90 <free_image.constprop.0>
d0002ac2:	f7ff bb0e 	b.w	d00020e2 <main+0x472>
d0002ac6:	46ac      	mov	ip, r5
d0002ac8:	46b0      	mov	r8, r6
d0002aca:	f04f 0900 	mov.w	r9, #0
d0002ace:	f8dd a024 	ldr.w	sl, [sp, #36]	; 0x24
d0002ad2:	9d0c      	ldr	r5, [sp, #48]	; 0x30
d0002ad4:	9b0a      	ldr	r3, [sp, #40]	; 0x28
d0002ad6:	454b      	cmp	r3, r9
d0002ad8:	d04b      	beq.n	d0002b72 <main+0xf02>
d0002ada:	2000      	movs	r0, #0
d0002adc:	4287      	cmp	r7, r0
d0002ade:	d930      	bls.n	d0002b42 <main+0xed2>
d0002ae0:	4565      	cmp	r5, ip
d0002ae2:	d92e      	bls.n	d0002b42 <main+0xed2>
d0002ae4:	f91a 300c 	ldrsb.w	r3, [sl, ip]
d0002ae8:	f10c 0401 	add.w	r4, ip, #1
d0002aec:	2b00      	cmp	r3, #0
d0002aee:	db12      	blt.n	d0002b16 <main+0xea6>
d0002af0:	1c5a      	adds	r2, r3, #1
d0002af2:	eb04 0c02 	add.w	ip, r4, r2
d0002af6:	4565      	cmp	r5, ip
d0002af8:	d329      	bcc.n	d0002b4e <main+0xede>
d0002afa:	1813      	adds	r3, r2, r0
d0002afc:	429f      	cmp	r7, r3
d0002afe:	930b      	str	r3, [sp, #44]	; 0x2c
d0002b00:	d325      	bcc.n	d0002b4e <main+0xede>
d0002b02:	eb0a 0104 	add.w	r1, sl, r4
d0002b06:	4440      	add	r0, r8
d0002b08:	4664      	mov	r4, ip
d0002b0a:	f000 fd17 	bl	d000353c <memcpy>
d0002b0e:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
d0002b10:	4618      	mov	r0, r3
d0002b12:	46a4      	mov	ip, r4
d0002b14:	e7e2      	b.n	d0002adc <main+0xe6c>
d0002b16:	f113 0f80 	cmn.w	r3, #128	; 0x80
d0002b1a:	d0fa      	beq.n	d0002b12 <main+0xea2>
d0002b1c:	42a5      	cmp	r5, r4
d0002b1e:	f1c3 0201 	rsb	r2, r3, #1
d0002b22:	d914      	bls.n	d0002b4e <main+0xede>
d0002b24:	1883      	adds	r3, r0, r2
d0002b26:	429f      	cmp	r7, r3
d0002b28:	930b      	str	r3, [sp, #44]	; 0x2c
d0002b2a:	d310      	bcc.n	d0002b4e <main+0xede>
d0002b2c:	f81a 1004 	ldrb.w	r1, [sl, r4]
d0002b30:	4440      	add	r0, r8
d0002b32:	f10c 0402 	add.w	r4, ip, #2
d0002b36:	f000 fd0f 	bl	d0003558 <memset>
d0002b3a:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
d0002b3c:	46a4      	mov	ip, r4
d0002b3e:	4618      	mov	r0, r3
d0002b40:	e7cc      	b.n	d0002adc <main+0xe6c>
d0002b42:	4287      	cmp	r7, r0
d0002b44:	44b8      	add	r8, r7
d0002b46:	d102      	bne.n	d0002b4e <main+0xede>
d0002b48:	f109 0901 	add.w	r9, r9, #1
d0002b4c:	e7c2      	b.n	d0002ad4 <main+0xe64>
d0002b4e:	4630      	mov	r0, r6
d0002b50:	f8dd a018 	ldr.w	sl, [sp, #24]
d0002b54:	f000 fcea 	bl	d000352c <free>
d0002b58:	9803      	ldr	r0, [sp, #12]
d0002b5a:	f000 fce7 	bl	d000352c <free>
d0002b5e:	48a0      	ldr	r0, [pc, #640]	; (d0002de0 <main+0x1170>)
d0002b60:	f7fe fbbc 	bl	d00012dc <set_status>
d0002b64:	4650      	mov	r0, sl
d0002b66:	f000 fce1 	bl	d000352c <free>
d0002b6a:	f7fe ff91 	bl	d0001a90 <free_image.constprop.0>
d0002b6e:	f7ff bab8 	b.w	d00020e2 <main+0x472>
d0002b72:	4665      	mov	r5, ip
d0002b74:	e64c      	b.n	d0002810 <main+0xba0>
d0002b76:	4630      	mov	r0, r6
d0002b78:	f8dd 9044 	ldr.w	r9, [sp, #68]	; 0x44
d0002b7c:	f8dd a018 	ldr.w	sl, [sp, #24]
d0002b80:	f8dd 8048 	ldr.w	r8, [sp, #72]	; 0x48
d0002b84:	f000 fcd2 	bl	d000352c <free>
d0002b88:	9b03      	ldr	r3, [sp, #12]
d0002b8a:	2b00      	cmp	r3, #0
d0002b8c:	f040 8103 	bne.w	d0002d96 <main+0x1126>
d0002b90:	4650      	mov	r0, sl
d0002b92:	f000 fccb 	bl	d000352c <free>
d0002b96:	9c02      	ldr	r4, [sp, #8]
d0002b98:	21a0      	movs	r1, #160	; 0xa0
d0002b9a:	4a92      	ldr	r2, [pc, #584]	; (d0002de4 <main+0x1174>)
d0002b9c:	4647      	mov	r7, r8
d0002b9e:	8863      	ldrh	r3, [r4, #2]
d0002ba0:	4891      	ldr	r0, [pc, #580]	; (d0002de8 <main+0x1178>)
d0002ba2:	e9cd 3900 	strd	r3, r9, [sp]
d0002ba6:	8823      	ldrh	r3, [r4, #0]
d0002ba8:	f04f 0900 	mov.w	r9, #0
d0002bac:	f001 f806 	bl	d0003bbc <sniprintf>
d0002bb0:	488d      	ldr	r0, [pc, #564]	; (d0002de8 <main+0x1178>)
d0002bb2:	f7fe fb93 	bl	d00012dc <set_status>
d0002bb6:	8823      	ldrh	r3, [r4, #0]
d0002bb8:	f89b 200c 	ldrb.w	r2, [fp, #12]
d0002bbc:	464e      	mov	r6, r9
d0002bbe:	f5b3 7ff0 	cmp.w	r3, #480	; 0x1e0
d0002bc2:	f89b 100d 	ldrb.w	r1, [fp, #13]
d0002bc6:	4889      	ldr	r0, [pc, #548]	; (d0002dec <main+0x117c>)
d0002bc8:	46ca      	mov	sl, r9
d0002bca:	bf2c      	ite	cs
d0002bcc:	f5a3 73f0 	subcs.w	r3, r3, #480	; 0x1e0
d0002bd0:	2300      	movcc	r3, #0
d0002bd2:	ea42 2201 	orr.w	r2, r2, r1, lsl #8
d0002bd6:	f8cd 900c 	str.w	r9, [sp, #12]
d0002bda:	9306      	str	r3, [sp, #24]
d0002bdc:	46c8      	mov	r8, r9
d0002bde:	9b02      	ldr	r3, [sp, #8]
d0002be0:	f8cd 9014 	str.w	r9, [sp, #20]
d0002be4:	885b      	ldrh	r3, [r3, #2]
d0002be6:	f8cd 9008 	str.w	r9, [sp, #8]
d0002bea:	f5b3 7fa0 	cmp.w	r3, #320	; 0x140
d0002bee:	f8cd 9010 	str.w	r9, [sp, #16]
d0002bf2:	bf2c      	ite	cs
d0002bf4:	f5a3 73a0 	subcs.w	r3, r3, #320	; 0x140
d0002bf8:	2300      	movcc	r3, #0
d0002bfa:	9307      	str	r3, [sp, #28]
d0002bfc:	f89b 300e 	ldrb.w	r3, [fp, #14]
d0002c00:	f89b 100f 	ldrb.w	r1, [fp, #15]
d0002c04:	ea42 4303 	orr.w	r3, r2, r3, lsl #16
d0002c08:	ea43 6301 	orr.w	r3, r3, r1, lsl #24
d0002c0c:	681b      	ldr	r3, [r3, #0]
d0002c0e:	6cdb      	ldr	r3, [r3, #76]	; 0x4c
d0002c10:	4798      	blx	r3
d0002c12:	f89b 3000 	ldrb.w	r3, [fp]
d0002c16:	f89b 2001 	ldrb.w	r2, [fp, #1]
d0002c1a:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0002c1e:	f89b 2002 	ldrb.w	r2, [fp, #2]
d0002c22:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d0002c26:	f89b 2003 	ldrb.w	r2, [fp, #3]
d0002c2a:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0002c2e:	69db      	ldr	r3, [r3, #28]
d0002c30:	4798      	blx	r3
d0002c32:	4649      	mov	r1, r9
d0002c34:	4648      	mov	r0, r9
d0002c36:	f7fe fbab 	bl	d0001390 <render_view.constprop.0>
d0002c3a:	f89b 5000 	ldrb.w	r5, [fp]
d0002c3e:	a915      	add	r1, sp, #84	; 0x54
d0002c40:	f89b 4001 	ldrb.w	r4, [fp, #1]
d0002c44:	f10d 0052 	add.w	r0, sp, #82	; 0x52
d0002c48:	f8ad a052 	strh.w	sl, [sp, #82]	; 0x52
d0002c4c:	ea45 2404 	orr.w	r4, r5, r4, lsl #8
d0002c50:	f89b 5002 	ldrb.w	r5, [fp, #2]
d0002c54:	f8ad a054 	strh.w	sl, [sp, #84]	; 0x54
d0002c58:	ea44 4505 	orr.w	r5, r4, r5, lsl #16
d0002c5c:	f89b 4003 	ldrb.w	r4, [fp, #3]
d0002c60:	f8ad a056 	strh.w	sl, [sp, #86]	; 0x56
d0002c64:	ea45 6404 	orr.w	r4, r5, r4, lsl #24
d0002c68:	f8ad a058 	strh.w	sl, [sp, #88]	; 0x58
d0002c6c:	6924      	ldr	r4, [r4, #16]
d0002c6e:	47a0      	blx	r4
d0002c70:	f89b 4018 	ldrb.w	r4, [fp, #24]
d0002c74:	f89b 0019 	ldrb.w	r0, [fp, #25]
d0002c78:	a916      	add	r1, sp, #88	; 0x58
d0002c7a:	f89b 501a 	ldrb.w	r5, [fp, #26]
d0002c7e:	ea44 2000 	orr.w	r0, r4, r0, lsl #8
d0002c82:	f89b 401b 	ldrb.w	r4, [fp, #27]
d0002c86:	ea40 4505 	orr.w	r5, r0, r5, lsl #16
d0002c8a:	f10d 0056 	add.w	r0, sp, #86	; 0x56
d0002c8e:	ea45 6404 	orr.w	r4, r5, r4, lsl #24
d0002c92:	68a4      	ldr	r4, [r4, #8]
d0002c94:	47a0      	blx	r4
d0002c96:	f89b 1000 	ldrb.w	r1, [fp]
d0002c9a:	f89b 4001 	ldrb.w	r4, [fp, #1]
d0002c9e:	4605      	mov	r5, r0
d0002ca0:	f89b 0002 	ldrb.w	r0, [fp, #2]
d0002ca4:	ea41 2404 	orr.w	r4, r1, r4, lsl #8
d0002ca8:	f89b 1003 	ldrb.w	r1, [fp, #3]
d0002cac:	ea44 4000 	orr.w	r0, r4, r0, lsl #16
d0002cb0:	ea40 6101 	orr.w	r1, r0, r1, lsl #24
d0002cb4:	6a09      	ldr	r1, [r1, #32]
d0002cb6:	4788      	blx	r1
d0002cb8:	f000 0103 	and.w	r1, r0, #3
d0002cbc:	2903      	cmp	r1, #3
d0002cbe:	d02b      	beq.n	d0002d18 <main+0x10a8>
d0002cc0:	f010 0401 	ands.w	r4, r0, #1
d0002cc4:	d03f      	beq.n	d0002d46 <main+0x10d6>
d0002cc6:	2f00      	cmp	r7, #0
d0002cc8:	d05a      	beq.n	d0002d80 <main+0x1110>
d0002cca:	f9bd 0052 	ldrsh.w	r0, [sp, #82]	; 0x52
d0002cce:	9b04      	ldr	r3, [sp, #16]
d0002cd0:	f9bd 1054 	ldrsh.w	r1, [sp, #84]	; 0x54
d0002cd4:	eba0 0c03 	sub.w	ip, r0, r3
d0002cd8:	9b05      	ldr	r3, [sp, #20]
d0002cda:	9004      	str	r0, [sp, #16]
d0002cdc:	1ac8      	subs	r0, r1, r3
d0002cde:	eba8 080c 	sub.w	r8, r8, ip
d0002ce2:	9105      	str	r1, [sp, #20]
d0002ce4:	1a36      	subs	r6, r6, r0
d0002ce6:	b145      	cbz	r5, d0002cfa <main+0x108a>
d0002ce8:	f9bd 0056 	ldrsh.w	r0, [sp, #86]	; 0x56
d0002cec:	f1b9 0f00 	cmp.w	r9, #0
d0002cf0:	d138      	bne.n	d0002d64 <main+0x10f4>
d0002cf2:	f9bd 1058 	ldrsh.w	r1, [sp, #88]	; 0x58
d0002cf6:	9002      	str	r0, [sp, #8]
d0002cf8:	9103      	str	r1, [sp, #12]
d0002cfa:	f1b8 0f00 	cmp.w	r8, #0
d0002cfe:	da24      	bge.n	d0002d4a <main+0x10da>
d0002d00:	f04f 0800 	mov.w	r8, #0
d0002d04:	2e00      	cmp	r6, #0
d0002d06:	db25      	blt.n	d0002d54 <main+0x10e4>
d0002d08:	9b07      	ldr	r3, [sp, #28]
d0002d0a:	429e      	cmp	r6, r3
d0002d0c:	bfa8      	it	ge
d0002d0e:	461e      	movge	r6, r3
d0002d10:	bb1f      	cbnz	r7, d0002d5a <main+0x10ea>
d0002d12:	46a9      	mov	r9, r5
d0002d14:	4627      	mov	r7, r4
d0002d16:	e790      	b.n	d0002c3a <main+0xfca>
d0002d18:	f89b 1000 	ldrb.w	r1, [fp]
d0002d1c:	f89b 3001 	ldrb.w	r3, [fp, #1]
d0002d20:	f89b 2002 	ldrb.w	r2, [fp, #2]
d0002d24:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
d0002d28:	f89b 3003 	ldrb.w	r3, [fp, #3]
d0002d2c:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d0002d30:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0002d34:	6a1b      	ldr	r3, [r3, #32]
d0002d36:	4798      	blx	r3
d0002d38:	f000 0003 	and.w	r0, r0, #3
d0002d3c:	2803      	cmp	r0, #3
d0002d3e:	d0eb      	beq.n	d0002d18 <main+0x10a8>
d0002d40:	2400      	movs	r4, #0
d0002d42:	f7ff b9d4 	b.w	d00020ee <main+0x47e>
d0002d46:	bb25      	cbnz	r5, d0002d92 <main+0x1122>
d0002d48:	462f      	mov	r7, r5
d0002d4a:	9b06      	ldr	r3, [sp, #24]
d0002d4c:	4598      	cmp	r8, r3
d0002d4e:	bfa8      	it	ge
d0002d50:	4698      	movge	r8, r3
d0002d52:	e7d7      	b.n	d0002d04 <main+0x1094>
d0002d54:	2600      	movs	r6, #0
d0002d56:	2f00      	cmp	r7, #0
d0002d58:	d0db      	beq.n	d0002d12 <main+0x10a2>
d0002d5a:	4631      	mov	r1, r6
d0002d5c:	4640      	mov	r0, r8
d0002d5e:	f7fe fb17 	bl	d0001390 <render_view.constprop.0>
d0002d62:	e7d6      	b.n	d0002d12 <main+0x10a2>
d0002d64:	9b02      	ldr	r3, [sp, #8]
d0002d66:	2701      	movs	r7, #1
d0002d68:	f9bd 1058 	ldrsh.w	r1, [sp, #88]	; 0x58
d0002d6c:	eba0 0e03 	sub.w	lr, r0, r3
d0002d70:	9b03      	ldr	r3, [sp, #12]
d0002d72:	eba1 0c03 	sub.w	ip, r1, r3
d0002d76:	eba8 080e 	sub.w	r8, r8, lr
d0002d7a:	eba6 060c 	sub.w	r6, r6, ip
d0002d7e:	e7ba      	b.n	d0002cf6 <main+0x1086>
d0002d80:	f9bd 3052 	ldrsh.w	r3, [sp, #82]	; 0x52
d0002d84:	9304      	str	r3, [sp, #16]
d0002d86:	f9bd 3054 	ldrsh.w	r3, [sp, #84]	; 0x54
d0002d8a:	9305      	str	r3, [sp, #20]
d0002d8c:	2d00      	cmp	r5, #0
d0002d8e:	d1ab      	bne.n	d0002ce8 <main+0x1078>
d0002d90:	e7db      	b.n	d0002d4a <main+0x10da>
d0002d92:	4627      	mov	r7, r4
d0002d94:	e7a8      	b.n	d0002ce8 <main+0x1078>
d0002d96:	9d03      	ldr	r5, [sp, #12]
d0002d98:	f8bd 1058 	ldrh.w	r1, [sp, #88]	; 0x58
d0002d9c:	4628      	mov	r0, r5
d0002d9e:	fb04 f101 	mul.w	r1, r4, r1
d0002da2:	f7fe fbaf 	bl	d0001504 <quantize_rgb_to_image.constprop.0>
d0002da6:	4604      	mov	r4, r0
d0002da8:	4628      	mov	r0, r5
d0002daa:	f000 fbbf 	bl	d000352c <free>
d0002dae:	4650      	mov	r0, sl
d0002db0:	f000 fbbc 	bl	d000352c <free>
d0002db4:	2c00      	cmp	r4, #0
d0002db6:	f47f aeee 	bne.w	d0002b96 <main+0xf26>
d0002dba:	f7fe fe69 	bl	d0001a90 <free_image.constprop.0>
d0002dbe:	f7ff b990 	b.w	d00020e2 <main+0x472>
d0002dc2:	4630      	mov	r0, r6
d0002dc4:	f000 fbb2 	bl	d000352c <free>
d0002dc8:	4809      	ldr	r0, [pc, #36]	; (d0002df0 <main+0x1180>)
d0002dca:	f7fe fa87 	bl	d00012dc <set_status>
d0002dce:	4650      	mov	r0, sl
d0002dd0:	f000 fbac 	bl	d000352c <free>
d0002dd4:	f7fe fe5c 	bl	d0001a90 <free_image.constprop.0>
d0002dd8:	f7ff b983 	b.w	d00020e2 <main+0x472>
d0002ddc:	d00050fc 	.word	0xd00050fc
d0002de0:	d0005114 	.word	0xd0005114
d0002de4:	d000514c 	.word	0xd000514c
d0002de8:	d0006ec4 	.word	0xd0006ec4
d0002dec:	d0006ac0 	.word	0xd0006ac0
d0002df0:	d00050b0 	.word	0xd00050b0
d0002df4:	f000 fb92 	bl	d000351c <malloc>
d0002df8:	9b02      	ldr	r3, [sp, #8]
d0002dfa:	6058      	str	r0, [r3, #4]
d0002dfc:	b1a8      	cbz	r0, d0002e2a <main+0x11ba>
d0002dfe:	9503      	str	r5, [sp, #12]
d0002e00:	e4e1      	b.n	d00027c6 <main+0xb56>
d0002e02:	48c3      	ldr	r0, [pc, #780]	; (d0003110 <main+0x14a0>)
d0002e04:	f7fe fa6a 	bl	d00012dc <set_status>
d0002e08:	4650      	mov	r0, sl
d0002e0a:	f000 fb8f 	bl	d000352c <free>
d0002e0e:	f7fe fe3f 	bl	d0001a90 <free_image.constprop.0>
d0002e12:	f7ff b966 	b.w	d00020e2 <main+0x472>
d0002e16:	48bf      	ldr	r0, [pc, #764]	; (d0003114 <main+0x14a4>)
d0002e18:	f7fe fa60 	bl	d00012dc <set_status>
d0002e1c:	4650      	mov	r0, sl
d0002e1e:	f000 fb85 	bl	d000352c <free>
d0002e22:	f7fe fe35 	bl	d0001a90 <free_image.constprop.0>
d0002e26:	f7ff b95c 	b.w	d00020e2 <main+0x472>
d0002e2a:	4630      	mov	r0, r6
d0002e2c:	f000 fb7e 	bl	d000352c <free>
d0002e30:	48b9      	ldr	r0, [pc, #740]	; (d0003118 <main+0x14a8>)
d0002e32:	f7fe fa53 	bl	d00012dc <set_status>
d0002e36:	4650      	mov	r0, sl
d0002e38:	f000 fb78 	bl	d000352c <free>
d0002e3c:	f7fe fe28 	bl	d0001a90 <free_image.constprop.0>
d0002e40:	f7ff b94f 	b.w	d00020e2 <main+0x472>
d0002e44:	461d      	mov	r5, r3
d0002e46:	9b07      	ldr	r3, [sp, #28]
d0002e48:	9308      	str	r3, [sp, #32]
d0002e4a:	e497      	b.n	d000277c <main+0xb0c>
d0002e4c:	2501      	movs	r5, #1
d0002e4e:	9508      	str	r5, [sp, #32]
d0002e50:	e494      	b.n	d000277c <main+0xb0c>
d0002e52:	9b04      	ldr	r3, [sp, #16]
d0002e54:	b96b      	cbnz	r3, d0002e72 <main+0x1202>
d0002e56:	f89d 305c 	ldrb.w	r3, [sp, #92]	; 0x5c
d0002e5a:	2b08      	cmp	r3, #8
d0002e5c:	d8db      	bhi.n	d0002e16 <main+0x11a6>
d0002e5e:	9d04      	ldr	r5, [sp, #16]
d0002e60:	2200      	movs	r2, #0
d0002e62:	1c63      	adds	r3, r4, #1
d0002e64:	9208      	str	r2, [sp, #32]
d0002e66:	f023 0301 	bic.w	r3, r3, #1
d0002e6a:	2201      	movs	r2, #1
d0002e6c:	9305      	str	r3, [sp, #20]
d0002e6e:	920a      	str	r2, [sp, #40]	; 0x28
d0002e70:	e48f      	b.n	d0002792 <main+0xb22>
d0002e72:	461d      	mov	r5, r3
d0002e74:	e7f4      	b.n	d0002e60 <main+0x11f0>
d0002e76:	48a9      	ldr	r0, [pc, #676]	; (d000311c <main+0x14ac>)
d0002e78:	f7fe fa30 	bl	d00012dc <set_status>
d0002e7c:	4650      	mov	r0, sl
d0002e7e:	f000 fb55 	bl	d000352c <free>
d0002e82:	f7fe fe05 	bl	d0001a90 <free_image.constprop.0>
d0002e86:	f7ff b92c 	b.w	d00020e2 <main+0x472>
d0002e8a:	48a5      	ldr	r0, [pc, #660]	; (d0003120 <main+0x14b0>)
d0002e8c:	f7fe fa26 	bl	d00012dc <set_status>
d0002e90:	4650      	mov	r0, sl
d0002e92:	f000 fb4b 	bl	d000352c <free>
d0002e96:	f7fe fdfb 	bl	d0001a90 <free_image.constprop.0>
d0002e9a:	f7ff b922 	b.w	d00020e2 <main+0x472>
d0002e9e:	48a1      	ldr	r0, [pc, #644]	; (d0003124 <main+0x14b4>)
d0002ea0:	f7fe fa1c 	bl	d00012dc <set_status>
d0002ea4:	4650      	mov	r0, sl
d0002ea6:	f000 fb41 	bl	d000352c <free>
d0002eaa:	f7fe fdf1 	bl	d0001a90 <free_image.constprop.0>
d0002eae:	f7ff b918 	b.w	d00020e2 <main+0x472>
d0002eb2:	2a03      	cmp	r2, #3
d0002eb4:	9b05      	ldr	r3, [sp, #20]
d0002eb6:	d00d      	beq.n	d0002ed4 <main+0x1264>
d0002eb8:	2b10      	cmp	r3, #16
d0002eba:	f04f 0300 	mov.w	r3, #0
d0002ebe:	f47f aa4b 	bne.w	d0002358 <main+0x6e8>
d0002ec2:	221f      	movs	r2, #31
d0002ec4:	f44f 45f8 	mov.w	r5, #31744	; 0x7c00
d0002ec8:	9207      	str	r2, [sp, #28]
d0002eca:	f44f 7278 	mov.w	r2, #992	; 0x3e0
d0002ece:	9206      	str	r2, [sp, #24]
d0002ed0:	f7ff ba52 	b.w	d0002378 <main+0x708>
d0002ed4:	2b10      	cmp	r3, #16
d0002ed6:	d007      	beq.n	d0002ee8 <main+0x1278>
d0002ed8:	f1a3 0c20 	sub.w	ip, r3, #32
d0002edc:	f1dc 0300 	rsbs	r3, ip, #0
d0002ee0:	eb43 030c 	adc.w	r3, r3, ip
d0002ee4:	2b00      	cmp	r3, #0
d0002ee6:	d0ec      	beq.n	d0002ec2 <main+0x1252>
d0002ee8:	2d33      	cmp	r5, #51	; 0x33
d0002eea:	d80d      	bhi.n	d0002f08 <main+0x1298>
d0002eec:	2c41      	cmp	r4, #65	; 0x41
d0002eee:	d80b      	bhi.n	d0002f08 <main+0x1298>
d0002ef0:	2300      	movs	r3, #0
d0002ef2:	e7e6      	b.n	d0002ec2 <main+0x1252>
d0002ef4:	488c      	ldr	r0, [pc, #560]	; (d0003128 <main+0x14b8>)
d0002ef6:	f7fe f9f1 	bl	d00012dc <set_status>
d0002efa:	4650      	mov	r0, sl
d0002efc:	f000 fb16 	bl	d000352c <free>
d0002f00:	f7fe fdc6 	bl	d0001a90 <free_image.constprop.0>
d0002f04:	f7ff b8ed 	b.w	d00020e2 <main+0x472>
d0002f08:	f8ba 103a 	ldrh.w	r1, [sl, #58]	; 0x3a
d0002f0c:	2300      	movs	r3, #0
d0002f0e:	f8ba 003c 	ldrh.w	r0, [sl, #60]	; 0x3c
d0002f12:	f8ba 2036 	ldrh.w	r2, [sl, #54]	; 0x36
d0002f16:	ea41 4100 	orr.w	r1, r1, r0, lsl #16
d0002f1a:	f8ba 5038 	ldrh.w	r5, [sl, #56]	; 0x38
d0002f1e:	9106      	str	r1, [sp, #24]
d0002f20:	ea42 4505 	orr.w	r5, r2, r5, lsl #16
d0002f24:	f8ba 1040 	ldrh.w	r1, [sl, #64]	; 0x40
d0002f28:	f8ba 203e 	ldrh.w	r2, [sl, #62]	; 0x3e
d0002f2c:	ea42 4201 	orr.w	r2, r2, r1, lsl #16
d0002f30:	9207      	str	r2, [sp, #28]
d0002f32:	f7ff ba21 	b.w	d0002378 <main+0x708>
d0002f36:	f027 0708 	bic.w	r7, r7, #8
d0002f3a:	2f10      	cmp	r7, #16
d0002f3c:	d003      	beq.n	d0002f46 <main+0x12d6>
d0002f3e:	9b05      	ldr	r3, [sp, #20]
d0002f40:	2b20      	cmp	r3, #32
d0002f42:	f040 8134 	bne.w	d00031ae <main+0x153e>
d0002f46:	9b03      	ldr	r3, [sp, #12]
d0002f48:	9a04      	ldr	r2, [sp, #16]
d0002f4a:	fb03 f302 	mul.w	r3, r3, r2
d0002f4e:	eb03 0043 	add.w	r0, r3, r3, lsl #1
d0002f52:	930e      	str	r3, [sp, #56]	; 0x38
d0002f54:	f000 fae2 	bl	d000351c <malloc>
d0002f58:	2800      	cmp	r0, #0
d0002f5a:	f000 810a 	beq.w	d0003172 <main+0x1502>
d0002f5e:	9a03      	ldr	r2, [sp, #12]
d0002f60:	2300      	movs	r3, #0
d0002f62:	f8cd a034 	str.w	sl, [sp, #52]	; 0x34
d0002f66:	ee07 0a90 	vmov	s15, r0
d0002f6a:	46aa      	mov	sl, r5
d0002f6c:	4615      	mov	r5, r2
d0002f6e:	9309      	str	r3, [sp, #36]	; 0x24
d0002f70:	f8cd 9040 	str.w	r9, [sp, #64]	; 0x40
d0002f74:	f8cd 8044 	str.w	r8, [sp, #68]	; 0x44
d0002f78:	9b03      	ldr	r3, [sp, #12]
d0002f7a:	1b5b      	subs	r3, r3, r5
d0002f7c:	2d00      	cmp	r5, #0
d0002f7e:	f000 80e3 	beq.w	d0003148 <main+0x14d8>
d0002f82:	9a08      	ldr	r2, [sp, #32]
d0002f84:	3d01      	subs	r5, #1
d0002f86:	b902      	cbnz	r2, d0002f8a <main+0x131a>
d0002f88:	462b      	mov	r3, r5
d0002f8a:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
d0002f8c:	4654      	mov	r4, sl
d0002f8e:	990a      	ldr	r1, [sp, #40]	; 0x28
d0002f90:	f04f 0800 	mov.w	r8, #0
d0002f94:	9512      	str	r5, [sp, #72]	; 0x48
d0002f96:	fb03 1302 	mla	r3, r3, r2, r1
d0002f9a:	9a09      	ldr	r2, [sp, #36]	; 0x24
d0002f9c:	f8dd a01c 	ldr.w	sl, [sp, #28]
d0002fa0:	eb02 0742 	add.w	r7, r2, r2, lsl #1
d0002fa4:	9a0d      	ldr	r2, [sp, #52]	; 0x34
d0002fa6:	9d06      	ldr	r5, [sp, #24]
d0002fa8:	18d6      	adds	r6, r2, r3
d0002faa:	ee17 3a90 	vmov	r3, s15
d0002fae:	441f      	add	r7, r3
d0002fb0:	1c73      	adds	r3, r6, #1
d0002fb2:	930c      	str	r3, [sp, #48]	; 0x30
d0002fb4:	1cb3      	adds	r3, r6, #2
d0002fb6:	930f      	str	r3, [sp, #60]	; 0x3c
d0002fb8:	9b05      	ldr	r3, [sp, #20]
d0002fba:	2b18      	cmp	r3, #24
d0002fbc:	f000 8113 	beq.w	d00031e6 <main+0x1576>
d0002fc0:	9b05      	ldr	r3, [sp, #20]
d0002fc2:	2b20      	cmp	r3, #32
d0002fc4:	f000 80fd 	beq.w	d00031c2 <main+0x1552>
d0002fc8:	9b0c      	ldr	r3, [sp, #48]	; 0x30
d0002fca:	f813 2018 	ldrb.w	r2, [r3, r8, lsl #1]
d0002fce:	f816 3018 	ldrb.w	r3, [r6, r8, lsl #1]
d0002fd2:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0002fd6:	2c00      	cmp	r4, #0
d0002fd8:	f000 8103 	beq.w	d00031e2 <main+0x1572>
d0002fdc:	4618      	mov	r0, r3
d0002fde:	4621      	mov	r1, r4
d0002fe0:	9313      	str	r3, [sp, #76]	; 0x4c
d0002fe2:	f7fe f9a9 	bl	d0001338 <scale_masked.part.0>
d0002fe6:	9b13      	ldr	r3, [sp, #76]	; 0x4c
d0002fe8:	4681      	mov	r9, r0
d0002fea:	b31d      	cbz	r5, d0003034 <main+0x13c4>
d0002fec:	4618      	mov	r0, r3
d0002fee:	4629      	mov	r1, r5
d0002ff0:	9313      	str	r3, [sp, #76]	; 0x4c
d0002ff2:	f7fe f9a1 	bl	d0001338 <scale_masked.part.0>
d0002ff6:	9b13      	ldr	r3, [sp, #76]	; 0x4c
d0002ff8:	4602      	mov	r2, r0
d0002ffa:	f1ba 0f00 	cmp.w	sl, #0
d0002ffe:	f000 80fb 	beq.w	d00031f8 <main+0x1588>
d0003002:	4618      	mov	r0, r3
d0003004:	4651      	mov	r1, sl
d0003006:	9213      	str	r2, [sp, #76]	; 0x4c
d0003008:	f7fe f996 	bl	d0001338 <scale_masked.part.0>
d000300c:	9a13      	ldr	r2, [sp, #76]	; 0x4c
d000300e:	4603      	mov	r3, r0
d0003010:	70bb      	strb	r3, [r7, #2]
d0003012:	f108 0801 	add.w	r8, r8, #1
d0003016:	9b04      	ldr	r3, [sp, #16]
d0003018:	3703      	adds	r7, #3
d000301a:	f807 9c03 	strb.w	r9, [r7, #-3]
d000301e:	4543      	cmp	r3, r8
d0003020:	f807 2c02 	strb.w	r2, [r7, #-2]
d0003024:	d8c8      	bhi.n	d0002fb8 <main+0x1348>
d0003026:	9b09      	ldr	r3, [sp, #36]	; 0x24
d0003028:	46a2      	mov	sl, r4
d000302a:	9a04      	ldr	r2, [sp, #16]
d000302c:	9d12      	ldr	r5, [sp, #72]	; 0x48
d000302e:	4413      	add	r3, r2
d0003030:	9309      	str	r3, [sp, #36]	; 0x24
d0003032:	e7a1      	b.n	d0002f78 <main+0x1308>
d0003034:	462a      	mov	r2, r5
d0003036:	e7e0      	b.n	d0002ffa <main+0x138a>
d0003038:	483c      	ldr	r0, [pc, #240]	; (d000312c <main+0x14bc>)
d000303a:	f7fe f94f 	bl	d00012dc <set_status>
d000303e:	4650      	mov	r0, sl
d0003040:	f000 fa74 	bl	d000352c <free>
d0003044:	f7fe fd24 	bl	d0001a90 <free_image.constprop.0>
d0003048:	f7ff b84b 	b.w	d00020e2 <main+0x472>
d000304c:	4838      	ldr	r0, [pc, #224]	; (d0003130 <main+0x14c0>)
d000304e:	f7fe f945 	bl	d00012dc <set_status>
d0003052:	4650      	mov	r0, sl
d0003054:	f000 fa6a 	bl	d000352c <free>
d0003058:	f7fe fd1a 	bl	d0001a90 <free_image.constprop.0>
d000305c:	f7ff b841 	b.w	d00020e2 <main+0x472>
d0003060:	4253      	negs	r3, r2
d0003062:	9303      	str	r3, [sp, #12]
d0003064:	2301      	movs	r3, #1
d0003066:	9308      	str	r3, [sp, #32]
d0003068:	f7ff b92c 	b.w	d00022c4 <main+0x654>
d000306c:	4831      	ldr	r0, [pc, #196]	; (d0003134 <main+0x14c4>)
d000306e:	f7fe f935 	bl	d00012dc <set_status>
d0003072:	4650      	mov	r0, sl
d0003074:	f000 fa5a 	bl	d000352c <free>
d0003078:	f7fe fd0a 	bl	d0001a90 <free_image.constprop.0>
d000307c:	f7ff b831 	b.w	d00020e2 <main+0x472>
d0003080:	f89b 3004 	ldrb.w	r3, [fp, #4]
d0003084:	f89b 2005 	ldrb.w	r2, [fp, #5]
d0003088:	f89b 1006 	ldrb.w	r1, [fp, #6]
d000308c:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0003090:	f89b 2007 	ldrb.w	r2, [fp, #7]
d0003094:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0003098:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d000309c:	681b      	ldr	r3, [r3, #0]
d000309e:	68db      	ldr	r3, [r3, #12]
d00030a0:	4798      	blx	r3
d00030a2:	4825      	ldr	r0, [pc, #148]	; (d0003138 <main+0x14c8>)
d00030a4:	f7fe f91a 	bl	d00012dc <set_status>
d00030a8:	f7ff b81b 	b.w	d00020e2 <main+0x472>
d00030ac:	4823      	ldr	r0, [pc, #140]	; (d000313c <main+0x14cc>)
d00030ae:	f7fe f915 	bl	d00012dc <set_status>
d00030b2:	4650      	mov	r0, sl
d00030b4:	f000 fa3a 	bl	d000352c <free>
d00030b8:	f7fe fcea 	bl	d0001a90 <free_image.constprop.0>
d00030bc:	f7ff b811 	b.w	d00020e2 <main+0x472>
d00030c0:	481f      	ldr	r0, [pc, #124]	; (d0003140 <main+0x14d0>)
d00030c2:	f7fe f90b 	bl	d00012dc <set_status>
d00030c6:	4650      	mov	r0, sl
d00030c8:	f000 fa30 	bl	d000352c <free>
d00030cc:	f7fe fce0 	bl	d0001a90 <free_image.constprop.0>
d00030d0:	f7ff b807 	b.w	d00020e2 <main+0x472>
d00030d4:	085c      	lsrs	r4, r3, #1
d00030d6:	f013 0f01 	tst.w	r3, #1
d00030da:	f812 e004 	ldrb.w	lr, [r2, r4]
d00030de:	ea4f 141e 	mov.w	r4, lr, lsr #4
d00030e2:	f43f a9bc 	beq.w	d000245e <main+0x7ee>
d00030e6:	f00e 040f 	and.w	r4, lr, #15
d00030ea:	f7ff b9b8 	b.w	d000245e <main+0x7ee>
d00030ee:	5cd4      	ldrb	r4, [r2, r3]
d00030f0:	54cc      	strb	r4, [r1, r3]
d00030f2:	f7ff b9b5 	b.w	d0002460 <main+0x7f0>
d00030f6:	4603      	mov	r3, r0
d00030f8:	f7ff b992 	b.w	d0002420 <main+0x7b0>
d00030fc:	4811      	ldr	r0, [pc, #68]	; (d0003144 <main+0x14d4>)
d00030fe:	f7fe f8ed 	bl	d00012dc <set_status>
d0003102:	4650      	mov	r0, sl
d0003104:	f000 fa12 	bl	d000352c <free>
d0003108:	f7fe fcc2 	bl	d0001a90 <free_image.constprop.0>
d000310c:	f7fe bfe9 	b.w	d00020e2 <main+0x472>
d0003110:	d0005090 	.word	0xd0005090
d0003114:	d0005054 	.word	0xd0005054
d0003118:	d00050d8 	.word	0xd00050d8
d000311c:	d0005014 	.word	0xd0005014
d0003120:	d0004ff8 	.word	0xd0004ff8
d0003124:	d0004e68 	.word	0xd0004e68
d0003128:	d0004f10 	.word	0xd0004f10
d000312c:	d0004ebc 	.word	0xd0004ebc
d0003130:	d0004e98 	.word	0xd0004e98
d0003134:	d0004e80 	.word	0xd0004e80
d0003138:	d0004e28 	.word	0xd0004e28
d000313c:	d0004ee4 	.word	0xd0004ee4
d0003140:	d0005030 	.word	0xd0005030
d0003144:	d0004f48 	.word	0xd0004f48
d0003148:	990e      	ldr	r1, [sp, #56]	; 0x38
d000314a:	ee17 0a90 	vmov	r0, s15
d000314e:	f8dd 9040 	ldr.w	r9, [sp, #64]	; 0x40
d0003152:	ee17 4a90 	vmov	r4, s15
d0003156:	f8dd a034 	ldr.w	sl, [sp, #52]	; 0x34
d000315a:	f8dd 8044 	ldr.w	r8, [sp, #68]	; 0x44
d000315e:	f7fe f9d1 	bl	d0001504 <quantize_rgb_to_image.constprop.0>
d0003162:	b180      	cbz	r0, d0003186 <main+0x1516>
d0003164:	4620      	mov	r0, r4
d0003166:	f000 f9e1 	bl	d000352c <free>
d000316a:	4650      	mov	r0, sl
d000316c:	f000 f9de 	bl	d000352c <free>
d0003170:	e511      	b.n	d0002b96 <main+0xf26>
d0003172:	4822      	ldr	r0, [pc, #136]	; (d00031fc <main+0x158c>)
d0003174:	f7fe f8b2 	bl	d00012dc <set_status>
d0003178:	4650      	mov	r0, sl
d000317a:	f000 f9d7 	bl	d000352c <free>
d000317e:	f7fe fc87 	bl	d0001a90 <free_image.constprop.0>
d0003182:	f7fe bfae 	b.w	d00020e2 <main+0x472>
d0003186:	4620      	mov	r0, r4
d0003188:	f000 f9d0 	bl	d000352c <free>
d000318c:	4650      	mov	r0, sl
d000318e:	f000 f9cd 	bl	d000352c <free>
d0003192:	f7fe fc7d 	bl	d0001a90 <free_image.constprop.0>
d0003196:	f7fe bfa4 	b.w	d00020e2 <main+0x472>
d000319a:	4819      	ldr	r0, [pc, #100]	; (d0003200 <main+0x1590>)
d000319c:	f7fe f89e 	bl	d00012dc <set_status>
d00031a0:	4650      	mov	r0, sl
d00031a2:	f000 f9c3 	bl	d000352c <free>
d00031a6:	f7fe fc73 	bl	d0001a90 <free_image.constprop.0>
d00031aa:	f7fe bf9a 	b.w	d00020e2 <main+0x472>
d00031ae:	4815      	ldr	r0, [pc, #84]	; (d0003204 <main+0x1594>)
d00031b0:	f7fe f894 	bl	d00012dc <set_status>
d00031b4:	4650      	mov	r0, sl
d00031b6:	f000 f9b9 	bl	d000352c <free>
d00031ba:	f7fe fc69 	bl	d0001a90 <free_image.constprop.0>
d00031be:	f7fe bf90 	b.w	d00020e2 <main+0x472>
d00031c2:	eb06 0288 	add.w	r2, r6, r8, lsl #2
d00031c6:	f816 3028 	ldrb.w	r3, [r6, r8, lsl #2]
d00031ca:	7850      	ldrb	r0, [r2, #1]
d00031cc:	7891      	ldrb	r1, [r2, #2]
d00031ce:	ea43 2300 	orr.w	r3, r3, r0, lsl #8
d00031d2:	78d2      	ldrb	r2, [r2, #3]
d00031d4:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d00031d8:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00031dc:	2c00      	cmp	r4, #0
d00031de:	f47f aefd 	bne.w	d0002fdc <main+0x136c>
d00031e2:	46a1      	mov	r9, r4
d00031e4:	e701      	b.n	d0002fea <main+0x137a>
d00031e6:	eb08 0148 	add.w	r1, r8, r8, lsl #1
d00031ea:	9a0c      	ldr	r2, [sp, #48]	; 0x30
d00031ec:	980f      	ldr	r0, [sp, #60]	; 0x3c
d00031ee:	5c73      	ldrb	r3, [r6, r1]
d00031f0:	5c52      	ldrb	r2, [r2, r1]
d00031f2:	f810 9001 	ldrb.w	r9, [r0, r1]
d00031f6:	e70b      	b.n	d0003010 <main+0x13a0>
d00031f8:	4653      	mov	r3, sl
d00031fa:	e709      	b.n	d0003010 <main+0x13a0>
d00031fc:	d0004f88 	.word	0xd0004f88
d0003200:	d0004f2c 	.word	0xd0004f2c
d0003204:	d0004f6c 	.word	0xd0004f6c

d0003208 <__aeabi_uldivmod>:
d0003208:	b953      	cbnz	r3, d0003220 <__aeabi_uldivmod+0x18>
d000320a:	b94a      	cbnz	r2, d0003220 <__aeabi_uldivmod+0x18>
d000320c:	2900      	cmp	r1, #0
d000320e:	bf08      	it	eq
d0003210:	2800      	cmpeq	r0, #0
d0003212:	bf1c      	itt	ne
d0003214:	f04f 31ff 	movne.w	r1, #4294967295	; 0xffffffff
d0003218:	f04f 30ff 	movne.w	r0, #4294967295	; 0xffffffff
d000321c:	f000 b96e 	b.w	d00034fc <__aeabi_idiv0>
d0003220:	f1ad 0c08 	sub.w	ip, sp, #8
d0003224:	e96d ce04 	strd	ip, lr, [sp, #-16]!
d0003228:	f000 f806 	bl	d0003238 <__udivmoddi4>
d000322c:	f8dd e004 	ldr.w	lr, [sp, #4]
d0003230:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
d0003234:	b004      	add	sp, #16
d0003236:	4770      	bx	lr

d0003238 <__udivmoddi4>:
d0003238:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
d000323c:	9d08      	ldr	r5, [sp, #32]
d000323e:	4604      	mov	r4, r0
d0003240:	468c      	mov	ip, r1
d0003242:	2b00      	cmp	r3, #0
d0003244:	f040 8083 	bne.w	d000334e <__udivmoddi4+0x116>
d0003248:	428a      	cmp	r2, r1
d000324a:	4617      	mov	r7, r2
d000324c:	d947      	bls.n	d00032de <__udivmoddi4+0xa6>
d000324e:	fab2 f282 	clz	r2, r2
d0003252:	b142      	cbz	r2, d0003266 <__udivmoddi4+0x2e>
d0003254:	f1c2 0020 	rsb	r0, r2, #32
d0003258:	fa24 f000 	lsr.w	r0, r4, r0
d000325c:	4091      	lsls	r1, r2
d000325e:	4097      	lsls	r7, r2
d0003260:	ea40 0c01 	orr.w	ip, r0, r1
d0003264:	4094      	lsls	r4, r2
d0003266:	ea4f 4817 	mov.w	r8, r7, lsr #16
d000326a:	0c23      	lsrs	r3, r4, #16
d000326c:	fbbc f6f8 	udiv	r6, ip, r8
d0003270:	fa1f fe87 	uxth.w	lr, r7
d0003274:	fb08 c116 	mls	r1, r8, r6, ip
d0003278:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d000327c:	fb06 f10e 	mul.w	r1, r6, lr
d0003280:	4299      	cmp	r1, r3
d0003282:	d909      	bls.n	d0003298 <__udivmoddi4+0x60>
d0003284:	18fb      	adds	r3, r7, r3
d0003286:	f106 30ff 	add.w	r0, r6, #4294967295	; 0xffffffff
d000328a:	f080 8119 	bcs.w	d00034c0 <__udivmoddi4+0x288>
d000328e:	4299      	cmp	r1, r3
d0003290:	f240 8116 	bls.w	d00034c0 <__udivmoddi4+0x288>
d0003294:	3e02      	subs	r6, #2
d0003296:	443b      	add	r3, r7
d0003298:	1a5b      	subs	r3, r3, r1
d000329a:	b2a4      	uxth	r4, r4
d000329c:	fbb3 f0f8 	udiv	r0, r3, r8
d00032a0:	fb08 3310 	mls	r3, r8, r0, r3
d00032a4:	ea44 4403 	orr.w	r4, r4, r3, lsl #16
d00032a8:	fb00 fe0e 	mul.w	lr, r0, lr
d00032ac:	45a6      	cmp	lr, r4
d00032ae:	d909      	bls.n	d00032c4 <__udivmoddi4+0x8c>
d00032b0:	193c      	adds	r4, r7, r4
d00032b2:	f100 33ff 	add.w	r3, r0, #4294967295	; 0xffffffff
d00032b6:	f080 8105 	bcs.w	d00034c4 <__udivmoddi4+0x28c>
d00032ba:	45a6      	cmp	lr, r4
d00032bc:	f240 8102 	bls.w	d00034c4 <__udivmoddi4+0x28c>
d00032c0:	3802      	subs	r0, #2
d00032c2:	443c      	add	r4, r7
d00032c4:	ea40 4006 	orr.w	r0, r0, r6, lsl #16
d00032c8:	eba4 040e 	sub.w	r4, r4, lr
d00032cc:	2600      	movs	r6, #0
d00032ce:	b11d      	cbz	r5, d00032d8 <__udivmoddi4+0xa0>
d00032d0:	40d4      	lsrs	r4, r2
d00032d2:	2300      	movs	r3, #0
d00032d4:	e9c5 4300 	strd	r4, r3, [r5]
d00032d8:	4631      	mov	r1, r6
d00032da:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
d00032de:	b902      	cbnz	r2, d00032e2 <__udivmoddi4+0xaa>
d00032e0:	deff      	udf	#255	; 0xff
d00032e2:	fab2 f282 	clz	r2, r2
d00032e6:	2a00      	cmp	r2, #0
d00032e8:	d150      	bne.n	d000338c <__udivmoddi4+0x154>
d00032ea:	1bcb      	subs	r3, r1, r7
d00032ec:	ea4f 4e17 	mov.w	lr, r7, lsr #16
d00032f0:	fa1f f887 	uxth.w	r8, r7
d00032f4:	2601      	movs	r6, #1
d00032f6:	fbb3 fcfe 	udiv	ip, r3, lr
d00032fa:	0c21      	lsrs	r1, r4, #16
d00032fc:	fb0e 331c 	mls	r3, lr, ip, r3
d0003300:	ea41 4103 	orr.w	r1, r1, r3, lsl #16
d0003304:	fb08 f30c 	mul.w	r3, r8, ip
d0003308:	428b      	cmp	r3, r1
d000330a:	d907      	bls.n	d000331c <__udivmoddi4+0xe4>
d000330c:	1879      	adds	r1, r7, r1
d000330e:	f10c 30ff 	add.w	r0, ip, #4294967295	; 0xffffffff
d0003312:	d202      	bcs.n	d000331a <__udivmoddi4+0xe2>
d0003314:	428b      	cmp	r3, r1
d0003316:	f200 80e9 	bhi.w	d00034ec <__udivmoddi4+0x2b4>
d000331a:	4684      	mov	ip, r0
d000331c:	1ac9      	subs	r1, r1, r3
d000331e:	b2a3      	uxth	r3, r4
d0003320:	fbb1 f0fe 	udiv	r0, r1, lr
d0003324:	fb0e 1110 	mls	r1, lr, r0, r1
d0003328:	ea43 4401 	orr.w	r4, r3, r1, lsl #16
d000332c:	fb08 f800 	mul.w	r8, r8, r0
d0003330:	45a0      	cmp	r8, r4
d0003332:	d907      	bls.n	d0003344 <__udivmoddi4+0x10c>
d0003334:	193c      	adds	r4, r7, r4
d0003336:	f100 33ff 	add.w	r3, r0, #4294967295	; 0xffffffff
d000333a:	d202      	bcs.n	d0003342 <__udivmoddi4+0x10a>
d000333c:	45a0      	cmp	r8, r4
d000333e:	f200 80d9 	bhi.w	d00034f4 <__udivmoddi4+0x2bc>
d0003342:	4618      	mov	r0, r3
d0003344:	eba4 0408 	sub.w	r4, r4, r8
d0003348:	ea40 400c 	orr.w	r0, r0, ip, lsl #16
d000334c:	e7bf      	b.n	d00032ce <__udivmoddi4+0x96>
d000334e:	428b      	cmp	r3, r1
d0003350:	d909      	bls.n	d0003366 <__udivmoddi4+0x12e>
d0003352:	2d00      	cmp	r5, #0
d0003354:	f000 80b1 	beq.w	d00034ba <__udivmoddi4+0x282>
d0003358:	2600      	movs	r6, #0
d000335a:	e9c5 0100 	strd	r0, r1, [r5]
d000335e:	4630      	mov	r0, r6
d0003360:	4631      	mov	r1, r6
d0003362:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
d0003366:	fab3 f683 	clz	r6, r3
d000336a:	2e00      	cmp	r6, #0
d000336c:	d14a      	bne.n	d0003404 <__udivmoddi4+0x1cc>
d000336e:	428b      	cmp	r3, r1
d0003370:	d302      	bcc.n	d0003378 <__udivmoddi4+0x140>
d0003372:	4282      	cmp	r2, r0
d0003374:	f200 80b8 	bhi.w	d00034e8 <__udivmoddi4+0x2b0>
d0003378:	1a84      	subs	r4, r0, r2
d000337a:	eb61 0103 	sbc.w	r1, r1, r3
d000337e:	2001      	movs	r0, #1
d0003380:	468c      	mov	ip, r1
d0003382:	2d00      	cmp	r5, #0
d0003384:	d0a8      	beq.n	d00032d8 <__udivmoddi4+0xa0>
d0003386:	e9c5 4c00 	strd	r4, ip, [r5]
d000338a:	e7a5      	b.n	d00032d8 <__udivmoddi4+0xa0>
d000338c:	f1c2 0320 	rsb	r3, r2, #32
d0003390:	fa20 f603 	lsr.w	r6, r0, r3
d0003394:	4097      	lsls	r7, r2
d0003396:	fa01 f002 	lsl.w	r0, r1, r2
d000339a:	ea4f 4e17 	mov.w	lr, r7, lsr #16
d000339e:	40d9      	lsrs	r1, r3
d00033a0:	4330      	orrs	r0, r6
d00033a2:	0c03      	lsrs	r3, r0, #16
d00033a4:	fbb1 f6fe 	udiv	r6, r1, lr
d00033a8:	fa1f f887 	uxth.w	r8, r7
d00033ac:	fb0e 1116 	mls	r1, lr, r6, r1
d00033b0:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d00033b4:	fb06 f108 	mul.w	r1, r6, r8
d00033b8:	4299      	cmp	r1, r3
d00033ba:	fa04 f402 	lsl.w	r4, r4, r2
d00033be:	d909      	bls.n	d00033d4 <__udivmoddi4+0x19c>
d00033c0:	18fb      	adds	r3, r7, r3
d00033c2:	f106 3cff 	add.w	ip, r6, #4294967295	; 0xffffffff
d00033c6:	f080 808d 	bcs.w	d00034e4 <__udivmoddi4+0x2ac>
d00033ca:	4299      	cmp	r1, r3
d00033cc:	f240 808a 	bls.w	d00034e4 <__udivmoddi4+0x2ac>
d00033d0:	3e02      	subs	r6, #2
d00033d2:	443b      	add	r3, r7
d00033d4:	1a5b      	subs	r3, r3, r1
d00033d6:	b281      	uxth	r1, r0
d00033d8:	fbb3 f0fe 	udiv	r0, r3, lr
d00033dc:	fb0e 3310 	mls	r3, lr, r0, r3
d00033e0:	ea41 4103 	orr.w	r1, r1, r3, lsl #16
d00033e4:	fb00 f308 	mul.w	r3, r0, r8
d00033e8:	428b      	cmp	r3, r1
d00033ea:	d907      	bls.n	d00033fc <__udivmoddi4+0x1c4>
d00033ec:	1879      	adds	r1, r7, r1
d00033ee:	f100 3cff 	add.w	ip, r0, #4294967295	; 0xffffffff
d00033f2:	d273      	bcs.n	d00034dc <__udivmoddi4+0x2a4>
d00033f4:	428b      	cmp	r3, r1
d00033f6:	d971      	bls.n	d00034dc <__udivmoddi4+0x2a4>
d00033f8:	3802      	subs	r0, #2
d00033fa:	4439      	add	r1, r7
d00033fc:	1acb      	subs	r3, r1, r3
d00033fe:	ea40 4606 	orr.w	r6, r0, r6, lsl #16
d0003402:	e778      	b.n	d00032f6 <__udivmoddi4+0xbe>
d0003404:	f1c6 0c20 	rsb	ip, r6, #32
d0003408:	fa03 f406 	lsl.w	r4, r3, r6
d000340c:	fa22 f30c 	lsr.w	r3, r2, ip
d0003410:	431c      	orrs	r4, r3
d0003412:	fa20 f70c 	lsr.w	r7, r0, ip
d0003416:	fa01 f306 	lsl.w	r3, r1, r6
d000341a:	ea4f 4e14 	mov.w	lr, r4, lsr #16
d000341e:	fa21 f10c 	lsr.w	r1, r1, ip
d0003422:	431f      	orrs	r7, r3
d0003424:	0c3b      	lsrs	r3, r7, #16
d0003426:	fbb1 f9fe 	udiv	r9, r1, lr
d000342a:	fa1f f884 	uxth.w	r8, r4
d000342e:	fb0e 1119 	mls	r1, lr, r9, r1
d0003432:	ea43 4101 	orr.w	r1, r3, r1, lsl #16
d0003436:	fb09 fa08 	mul.w	sl, r9, r8
d000343a:	458a      	cmp	sl, r1
d000343c:	fa02 f206 	lsl.w	r2, r2, r6
d0003440:	fa00 f306 	lsl.w	r3, r0, r6
d0003444:	d908      	bls.n	d0003458 <__udivmoddi4+0x220>
d0003446:	1861      	adds	r1, r4, r1
d0003448:	f109 30ff 	add.w	r0, r9, #4294967295	; 0xffffffff
d000344c:	d248      	bcs.n	d00034e0 <__udivmoddi4+0x2a8>
d000344e:	458a      	cmp	sl, r1
d0003450:	d946      	bls.n	d00034e0 <__udivmoddi4+0x2a8>
d0003452:	f1a9 0902 	sub.w	r9, r9, #2
d0003456:	4421      	add	r1, r4
d0003458:	eba1 010a 	sub.w	r1, r1, sl
d000345c:	b2bf      	uxth	r7, r7
d000345e:	fbb1 f0fe 	udiv	r0, r1, lr
d0003462:	fb0e 1110 	mls	r1, lr, r0, r1
d0003466:	ea47 4701 	orr.w	r7, r7, r1, lsl #16
d000346a:	fb00 f808 	mul.w	r8, r0, r8
d000346e:	45b8      	cmp	r8, r7
d0003470:	d907      	bls.n	d0003482 <__udivmoddi4+0x24a>
d0003472:	19e7      	adds	r7, r4, r7
d0003474:	f100 31ff 	add.w	r1, r0, #4294967295	; 0xffffffff
d0003478:	d22e      	bcs.n	d00034d8 <__udivmoddi4+0x2a0>
d000347a:	45b8      	cmp	r8, r7
d000347c:	d92c      	bls.n	d00034d8 <__udivmoddi4+0x2a0>
d000347e:	3802      	subs	r0, #2
d0003480:	4427      	add	r7, r4
d0003482:	ea40 4009 	orr.w	r0, r0, r9, lsl #16
d0003486:	eba7 0708 	sub.w	r7, r7, r8
d000348a:	fba0 8902 	umull	r8, r9, r0, r2
d000348e:	454f      	cmp	r7, r9
d0003490:	46c6      	mov	lr, r8
d0003492:	4649      	mov	r1, r9
d0003494:	d31a      	bcc.n	d00034cc <__udivmoddi4+0x294>
d0003496:	d017      	beq.n	d00034c8 <__udivmoddi4+0x290>
d0003498:	b15d      	cbz	r5, d00034b2 <__udivmoddi4+0x27a>
d000349a:	ebb3 020e 	subs.w	r2, r3, lr
d000349e:	eb67 0701 	sbc.w	r7, r7, r1
d00034a2:	fa07 fc0c 	lsl.w	ip, r7, ip
d00034a6:	40f2      	lsrs	r2, r6
d00034a8:	ea4c 0202 	orr.w	r2, ip, r2
d00034ac:	40f7      	lsrs	r7, r6
d00034ae:	e9c5 2700 	strd	r2, r7, [r5]
d00034b2:	2600      	movs	r6, #0
d00034b4:	4631      	mov	r1, r6
d00034b6:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
d00034ba:	462e      	mov	r6, r5
d00034bc:	4628      	mov	r0, r5
d00034be:	e70b      	b.n	d00032d8 <__udivmoddi4+0xa0>
d00034c0:	4606      	mov	r6, r0
d00034c2:	e6e9      	b.n	d0003298 <__udivmoddi4+0x60>
d00034c4:	4618      	mov	r0, r3
d00034c6:	e6fd      	b.n	d00032c4 <__udivmoddi4+0x8c>
d00034c8:	4543      	cmp	r3, r8
d00034ca:	d2e5      	bcs.n	d0003498 <__udivmoddi4+0x260>
d00034cc:	ebb8 0e02 	subs.w	lr, r8, r2
d00034d0:	eb69 0104 	sbc.w	r1, r9, r4
d00034d4:	3801      	subs	r0, #1
d00034d6:	e7df      	b.n	d0003498 <__udivmoddi4+0x260>
d00034d8:	4608      	mov	r0, r1
d00034da:	e7d2      	b.n	d0003482 <__udivmoddi4+0x24a>
d00034dc:	4660      	mov	r0, ip
d00034de:	e78d      	b.n	d00033fc <__udivmoddi4+0x1c4>
d00034e0:	4681      	mov	r9, r0
d00034e2:	e7b9      	b.n	d0003458 <__udivmoddi4+0x220>
d00034e4:	4666      	mov	r6, ip
d00034e6:	e775      	b.n	d00033d4 <__udivmoddi4+0x19c>
d00034e8:	4630      	mov	r0, r6
d00034ea:	e74a      	b.n	d0003382 <__udivmoddi4+0x14a>
d00034ec:	f1ac 0c02 	sub.w	ip, ip, #2
d00034f0:	4439      	add	r1, r7
d00034f2:	e713      	b.n	d000331c <__udivmoddi4+0xe4>
d00034f4:	3802      	subs	r0, #2
d00034f6:	443c      	add	r4, r7
d00034f8:	e724      	b.n	d0003344 <__udivmoddi4+0x10c>
d00034fa:	bf00      	nop

d00034fc <__aeabi_idiv0>:
d00034fc:	4770      	bx	lr
d00034fe:	bf00      	nop

d0003500 <calloc>:
d0003500:	4b02      	ldr	r3, [pc, #8]	; (d000350c <calloc+0xc>)
d0003502:	460a      	mov	r2, r1
d0003504:	4601      	mov	r1, r0
d0003506:	6818      	ldr	r0, [r3, #0]
d0003508:	f000 b82e 	b.w	d0003568 <_calloc_r>
d000350c:	d0005228 	.word	0xd0005228

d0003510 <__errno>:
d0003510:	4b01      	ldr	r3, [pc, #4]	; (d0003518 <__errno+0x8>)
d0003512:	6818      	ldr	r0, [r3, #0]
d0003514:	4770      	bx	lr
d0003516:	bf00      	nop
d0003518:	d0005228 	.word	0xd0005228

d000351c <malloc>:
d000351c:	4b02      	ldr	r3, [pc, #8]	; (d0003528 <malloc+0xc>)
d000351e:	4601      	mov	r1, r0
d0003520:	6818      	ldr	r0, [r3, #0]
d0003522:	f000 b881 	b.w	d0003628 <_malloc_r>
d0003526:	bf00      	nop
d0003528:	d0005228 	.word	0xd0005228

d000352c <free>:
d000352c:	4b02      	ldr	r3, [pc, #8]	; (d0003538 <free+0xc>)
d000352e:	4601      	mov	r1, r0
d0003530:	6818      	ldr	r0, [r3, #0]
d0003532:	f000 b829 	b.w	d0003588 <_free_r>
d0003536:	bf00      	nop
d0003538:	d0005228 	.word	0xd0005228

d000353c <memcpy>:
d000353c:	440a      	add	r2, r1
d000353e:	4291      	cmp	r1, r2
d0003540:	f100 33ff 	add.w	r3, r0, #4294967295	; 0xffffffff
d0003544:	d100      	bne.n	d0003548 <memcpy+0xc>
d0003546:	4770      	bx	lr
d0003548:	b510      	push	{r4, lr}
d000354a:	f811 4b01 	ldrb.w	r4, [r1], #1
d000354e:	f803 4f01 	strb.w	r4, [r3, #1]!
d0003552:	4291      	cmp	r1, r2
d0003554:	d1f9      	bne.n	d000354a <memcpy+0xe>
d0003556:	bd10      	pop	{r4, pc}

d0003558 <memset>:
d0003558:	4402      	add	r2, r0
d000355a:	4603      	mov	r3, r0
d000355c:	4293      	cmp	r3, r2
d000355e:	d100      	bne.n	d0003562 <memset+0xa>
d0003560:	4770      	bx	lr
d0003562:	f803 1b01 	strb.w	r1, [r3], #1
d0003566:	e7f9      	b.n	d000355c <memset+0x4>

d0003568 <_calloc_r>:
d0003568:	b513      	push	{r0, r1, r4, lr}
d000356a:	434a      	muls	r2, r1
d000356c:	4611      	mov	r1, r2
d000356e:	9201      	str	r2, [sp, #4]
d0003570:	f000 f85a 	bl	d0003628 <_malloc_r>
d0003574:	4604      	mov	r4, r0
d0003576:	b118      	cbz	r0, d0003580 <_calloc_r+0x18>
d0003578:	9a01      	ldr	r2, [sp, #4]
d000357a:	2100      	movs	r1, #0
d000357c:	f7ff ffec 	bl	d0003558 <memset>
d0003580:	4620      	mov	r0, r4
d0003582:	b002      	add	sp, #8
d0003584:	bd10      	pop	{r4, pc}
	...

d0003588 <_free_r>:
d0003588:	b537      	push	{r0, r1, r2, r4, r5, lr}
d000358a:	2900      	cmp	r1, #0
d000358c:	d048      	beq.n	d0003620 <_free_r+0x98>
d000358e:	f851 3c04 	ldr.w	r3, [r1, #-4]
d0003592:	9001      	str	r0, [sp, #4]
d0003594:	2b00      	cmp	r3, #0
d0003596:	f1a1 0404 	sub.w	r4, r1, #4
d000359a:	bfb8      	it	lt
d000359c:	18e4      	addlt	r4, r4, r3
d000359e:	f000 fd87 	bl	d00040b0 <__malloc_lock>
d00035a2:	4a20      	ldr	r2, [pc, #128]	; (d0003624 <_free_r+0x9c>)
d00035a4:	9801      	ldr	r0, [sp, #4]
d00035a6:	6813      	ldr	r3, [r2, #0]
d00035a8:	4615      	mov	r5, r2
d00035aa:	b933      	cbnz	r3, d00035ba <_free_r+0x32>
d00035ac:	6063      	str	r3, [r4, #4]
d00035ae:	6014      	str	r4, [r2, #0]
d00035b0:	b003      	add	sp, #12
d00035b2:	e8bd 4030 	ldmia.w	sp!, {r4, r5, lr}
d00035b6:	f000 bd81 	b.w	d00040bc <__malloc_unlock>
d00035ba:	42a3      	cmp	r3, r4
d00035bc:	d90b      	bls.n	d00035d6 <_free_r+0x4e>
d00035be:	6821      	ldr	r1, [r4, #0]
d00035c0:	1862      	adds	r2, r4, r1
d00035c2:	4293      	cmp	r3, r2
d00035c4:	bf04      	itt	eq
d00035c6:	681a      	ldreq	r2, [r3, #0]
d00035c8:	685b      	ldreq	r3, [r3, #4]
d00035ca:	6063      	str	r3, [r4, #4]
d00035cc:	bf04      	itt	eq
d00035ce:	1852      	addeq	r2, r2, r1
d00035d0:	6022      	streq	r2, [r4, #0]
d00035d2:	602c      	str	r4, [r5, #0]
d00035d4:	e7ec      	b.n	d00035b0 <_free_r+0x28>
d00035d6:	461a      	mov	r2, r3
d00035d8:	685b      	ldr	r3, [r3, #4]
d00035da:	b10b      	cbz	r3, d00035e0 <_free_r+0x58>
d00035dc:	42a3      	cmp	r3, r4
d00035de:	d9fa      	bls.n	d00035d6 <_free_r+0x4e>
d00035e0:	6811      	ldr	r1, [r2, #0]
d00035e2:	1855      	adds	r5, r2, r1
d00035e4:	42a5      	cmp	r5, r4
d00035e6:	d10b      	bne.n	d0003600 <_free_r+0x78>
d00035e8:	6824      	ldr	r4, [r4, #0]
d00035ea:	4421      	add	r1, r4
d00035ec:	1854      	adds	r4, r2, r1
d00035ee:	42a3      	cmp	r3, r4
d00035f0:	6011      	str	r1, [r2, #0]
d00035f2:	d1dd      	bne.n	d00035b0 <_free_r+0x28>
d00035f4:	681c      	ldr	r4, [r3, #0]
d00035f6:	685b      	ldr	r3, [r3, #4]
d00035f8:	6053      	str	r3, [r2, #4]
d00035fa:	4421      	add	r1, r4
d00035fc:	6011      	str	r1, [r2, #0]
d00035fe:	e7d7      	b.n	d00035b0 <_free_r+0x28>
d0003600:	d902      	bls.n	d0003608 <_free_r+0x80>
d0003602:	230c      	movs	r3, #12
d0003604:	6003      	str	r3, [r0, #0]
d0003606:	e7d3      	b.n	d00035b0 <_free_r+0x28>
d0003608:	6825      	ldr	r5, [r4, #0]
d000360a:	1961      	adds	r1, r4, r5
d000360c:	428b      	cmp	r3, r1
d000360e:	bf04      	itt	eq
d0003610:	6819      	ldreq	r1, [r3, #0]
d0003612:	685b      	ldreq	r3, [r3, #4]
d0003614:	6063      	str	r3, [r4, #4]
d0003616:	bf04      	itt	eq
d0003618:	1949      	addeq	r1, r1, r5
d000361a:	6021      	streq	r1, [r4, #0]
d000361c:	6054      	str	r4, [r2, #4]
d000361e:	e7c7      	b.n	d00035b0 <_free_r+0x28>
d0003620:	b003      	add	sp, #12
d0003622:	bd30      	pop	{r4, r5, pc}
d0003624:	d0006f64 	.word	0xd0006f64

d0003628 <_malloc_r>:
d0003628:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d000362a:	1ccd      	adds	r5, r1, #3
d000362c:	f025 0503 	bic.w	r5, r5, #3
d0003630:	3508      	adds	r5, #8
d0003632:	2d0c      	cmp	r5, #12
d0003634:	bf38      	it	cc
d0003636:	250c      	movcc	r5, #12
d0003638:	2d00      	cmp	r5, #0
d000363a:	4606      	mov	r6, r0
d000363c:	db01      	blt.n	d0003642 <_malloc_r+0x1a>
d000363e:	42a9      	cmp	r1, r5
d0003640:	d903      	bls.n	d000364a <_malloc_r+0x22>
d0003642:	230c      	movs	r3, #12
d0003644:	6033      	str	r3, [r6, #0]
d0003646:	2000      	movs	r0, #0
d0003648:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d000364a:	f000 fd31 	bl	d00040b0 <__malloc_lock>
d000364e:	4921      	ldr	r1, [pc, #132]	; (d00036d4 <_malloc_r+0xac>)
d0003650:	680a      	ldr	r2, [r1, #0]
d0003652:	4614      	mov	r4, r2
d0003654:	b99c      	cbnz	r4, d000367e <_malloc_r+0x56>
d0003656:	4f20      	ldr	r7, [pc, #128]	; (d00036d8 <_malloc_r+0xb0>)
d0003658:	683b      	ldr	r3, [r7, #0]
d000365a:	b923      	cbnz	r3, d0003666 <_malloc_r+0x3e>
d000365c:	4621      	mov	r1, r4
d000365e:	4630      	mov	r0, r6
d0003660:	f7fd fd4c 	bl	d00010fc <_sbrk_r>
d0003664:	6038      	str	r0, [r7, #0]
d0003666:	4629      	mov	r1, r5
d0003668:	4630      	mov	r0, r6
d000366a:	f7fd fd47 	bl	d00010fc <_sbrk_r>
d000366e:	1c43      	adds	r3, r0, #1
d0003670:	d123      	bne.n	d00036ba <_malloc_r+0x92>
d0003672:	230c      	movs	r3, #12
d0003674:	6033      	str	r3, [r6, #0]
d0003676:	4630      	mov	r0, r6
d0003678:	f000 fd20 	bl	d00040bc <__malloc_unlock>
d000367c:	e7e3      	b.n	d0003646 <_malloc_r+0x1e>
d000367e:	6823      	ldr	r3, [r4, #0]
d0003680:	1b5b      	subs	r3, r3, r5
d0003682:	d417      	bmi.n	d00036b4 <_malloc_r+0x8c>
d0003684:	2b0b      	cmp	r3, #11
d0003686:	d903      	bls.n	d0003690 <_malloc_r+0x68>
d0003688:	6023      	str	r3, [r4, #0]
d000368a:	441c      	add	r4, r3
d000368c:	6025      	str	r5, [r4, #0]
d000368e:	e004      	b.n	d000369a <_malloc_r+0x72>
d0003690:	6863      	ldr	r3, [r4, #4]
d0003692:	42a2      	cmp	r2, r4
d0003694:	bf0c      	ite	eq
d0003696:	600b      	streq	r3, [r1, #0]
d0003698:	6053      	strne	r3, [r2, #4]
d000369a:	4630      	mov	r0, r6
d000369c:	f000 fd0e 	bl	d00040bc <__malloc_unlock>
d00036a0:	f104 000b 	add.w	r0, r4, #11
d00036a4:	1d23      	adds	r3, r4, #4
d00036a6:	f020 0007 	bic.w	r0, r0, #7
d00036aa:	1ac2      	subs	r2, r0, r3
d00036ac:	d0cc      	beq.n	d0003648 <_malloc_r+0x20>
d00036ae:	1a1b      	subs	r3, r3, r0
d00036b0:	50a3      	str	r3, [r4, r2]
d00036b2:	e7c9      	b.n	d0003648 <_malloc_r+0x20>
d00036b4:	4622      	mov	r2, r4
d00036b6:	6864      	ldr	r4, [r4, #4]
d00036b8:	e7cc      	b.n	d0003654 <_malloc_r+0x2c>
d00036ba:	1cc4      	adds	r4, r0, #3
d00036bc:	f024 0403 	bic.w	r4, r4, #3
d00036c0:	42a0      	cmp	r0, r4
d00036c2:	d0e3      	beq.n	d000368c <_malloc_r+0x64>
d00036c4:	1a21      	subs	r1, r4, r0
d00036c6:	4630      	mov	r0, r6
d00036c8:	f7fd fd18 	bl	d00010fc <_sbrk_r>
d00036cc:	3001      	adds	r0, #1
d00036ce:	d1dd      	bne.n	d000368c <_malloc_r+0x64>
d00036d0:	e7cf      	b.n	d0003672 <_malloc_r+0x4a>
d00036d2:	bf00      	nop
d00036d4:	d0006f64 	.word	0xd0006f64
d00036d8:	d0006f68 	.word	0xd0006f68

d00036dc <iprintf>:
d00036dc:	b40f      	push	{r0, r1, r2, r3}
d00036de:	4b0a      	ldr	r3, [pc, #40]	; (d0003708 <iprintf+0x2c>)
d00036e0:	b513      	push	{r0, r1, r4, lr}
d00036e2:	681c      	ldr	r4, [r3, #0]
d00036e4:	b124      	cbz	r4, d00036f0 <iprintf+0x14>
d00036e6:	69a3      	ldr	r3, [r4, #24]
d00036e8:	b913      	cbnz	r3, d00036f0 <iprintf+0x14>
d00036ea:	4620      	mov	r0, r4
d00036ec:	f000 fbdc 	bl	d0003ea8 <__sinit>
d00036f0:	ab05      	add	r3, sp, #20
d00036f2:	9a04      	ldr	r2, [sp, #16]
d00036f4:	68a1      	ldr	r1, [r4, #8]
d00036f6:	9301      	str	r3, [sp, #4]
d00036f8:	4620      	mov	r0, r4
d00036fa:	f000 fe6b 	bl	d00043d4 <_vfiprintf_r>
d00036fe:	b002      	add	sp, #8
d0003700:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
d0003704:	b004      	add	sp, #16
d0003706:	4770      	bx	lr
d0003708:	d0005228 	.word	0xd0005228

d000370c <swapfunc>:
d000370c:	2b02      	cmp	r3, #2
d000370e:	b510      	push	{r4, lr}
d0003710:	d00a      	beq.n	d0003728 <swapfunc+0x1c>
d0003712:	0892      	lsrs	r2, r2, #2
d0003714:	3a01      	subs	r2, #1
d0003716:	6803      	ldr	r3, [r0, #0]
d0003718:	680c      	ldr	r4, [r1, #0]
d000371a:	f840 4b04 	str.w	r4, [r0], #4
d000371e:	2a00      	cmp	r2, #0
d0003720:	f841 3b04 	str.w	r3, [r1], #4
d0003724:	dcf6      	bgt.n	d0003714 <swapfunc+0x8>
d0003726:	bd10      	pop	{r4, pc}
d0003728:	4402      	add	r2, r0
d000372a:	780c      	ldrb	r4, [r1, #0]
d000372c:	7803      	ldrb	r3, [r0, #0]
d000372e:	f800 4b01 	strb.w	r4, [r0], #1
d0003732:	f801 3b01 	strb.w	r3, [r1], #1
d0003736:	1a13      	subs	r3, r2, r0
d0003738:	2b00      	cmp	r3, #0
d000373a:	dcf6      	bgt.n	d000372a <swapfunc+0x1e>
d000373c:	e7f3      	b.n	d0003726 <swapfunc+0x1a>

d000373e <med3.isra.0>:
d000373e:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d0003740:	460f      	mov	r7, r1
d0003742:	4614      	mov	r4, r2
d0003744:	4606      	mov	r6, r0
d0003746:	461d      	mov	r5, r3
d0003748:	4798      	blx	r3
d000374a:	2800      	cmp	r0, #0
d000374c:	4621      	mov	r1, r4
d000374e:	4638      	mov	r0, r7
d0003750:	da0c      	bge.n	d000376c <med3.isra.0+0x2e>
d0003752:	47a8      	blx	r5
d0003754:	2800      	cmp	r0, #0
d0003756:	da02      	bge.n	d000375e <med3.isra.0+0x20>
d0003758:	463c      	mov	r4, r7
d000375a:	4620      	mov	r0, r4
d000375c:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d000375e:	4621      	mov	r1, r4
d0003760:	4630      	mov	r0, r6
d0003762:	47a8      	blx	r5
d0003764:	2800      	cmp	r0, #0
d0003766:	dbf8      	blt.n	d000375a <med3.isra.0+0x1c>
d0003768:	4634      	mov	r4, r6
d000376a:	e7f6      	b.n	d000375a <med3.isra.0+0x1c>
d000376c:	47a8      	blx	r5
d000376e:	2800      	cmp	r0, #0
d0003770:	dcf2      	bgt.n	d0003758 <med3.isra.0+0x1a>
d0003772:	4621      	mov	r1, r4
d0003774:	4630      	mov	r0, r6
d0003776:	47a8      	blx	r5
d0003778:	2800      	cmp	r0, #0
d000377a:	daee      	bge.n	d000375a <med3.isra.0+0x1c>
d000377c:	e7f4      	b.n	d0003768 <med3.isra.0+0x2a>

d000377e <qsort>:
d000377e:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0003782:	469a      	mov	sl, r3
d0003784:	ea40 0302 	orr.w	r3, r0, r2
d0003788:	079b      	lsls	r3, r3, #30
d000378a:	b097      	sub	sp, #92	; 0x5c
d000378c:	4606      	mov	r6, r0
d000378e:	4614      	mov	r4, r2
d0003790:	d11a      	bne.n	d00037c8 <qsort+0x4a>
d0003792:	f1b2 0804 	subs.w	r8, r2, #4
d0003796:	bf18      	it	ne
d0003798:	f04f 0801 	movne.w	r8, #1
d000379c:	2300      	movs	r3, #0
d000379e:	9302      	str	r3, [sp, #8]
d00037a0:	1933      	adds	r3, r6, r4
d00037a2:	fb04 f701 	mul.w	r7, r4, r1
d00037a6:	9301      	str	r3, [sp, #4]
d00037a8:	2906      	cmp	r1, #6
d00037aa:	eb06 0307 	add.w	r3, r6, r7
d00037ae:	9303      	str	r3, [sp, #12]
d00037b0:	d82a      	bhi.n	d0003808 <qsort+0x8a>
d00037b2:	9b01      	ldr	r3, [sp, #4]
d00037b4:	9a03      	ldr	r2, [sp, #12]
d00037b6:	4293      	cmp	r3, r2
d00037b8:	d310      	bcc.n	d00037dc <qsort+0x5e>
d00037ba:	9b02      	ldr	r3, [sp, #8]
d00037bc:	2b00      	cmp	r3, #0
d00037be:	f040 811f 	bne.w	d0003a00 <qsort+0x282>
d00037c2:	b017      	add	sp, #92	; 0x5c
d00037c4:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d00037c8:	f04f 0802 	mov.w	r8, #2
d00037cc:	e7e6      	b.n	d000379c <qsort+0x1e>
d00037ce:	4643      	mov	r3, r8
d00037d0:	4622      	mov	r2, r4
d00037d2:	4639      	mov	r1, r7
d00037d4:	4628      	mov	r0, r5
d00037d6:	f7ff ff99 	bl	d000370c <swapfunc>
d00037da:	e00e      	b.n	d00037fa <qsort+0x7c>
d00037dc:	9d01      	ldr	r5, [sp, #4]
d00037de:	e00d      	b.n	d00037fc <qsort+0x7e>
d00037e0:	1b2f      	subs	r7, r5, r4
d00037e2:	4629      	mov	r1, r5
d00037e4:	4638      	mov	r0, r7
d00037e6:	47d0      	blx	sl
d00037e8:	2800      	cmp	r0, #0
d00037ea:	dd09      	ble.n	d0003800 <qsort+0x82>
d00037ec:	f1b8 0f00 	cmp.w	r8, #0
d00037f0:	d1ed      	bne.n	d00037ce <qsort+0x50>
d00037f2:	682b      	ldr	r3, [r5, #0]
d00037f4:	683a      	ldr	r2, [r7, #0]
d00037f6:	602a      	str	r2, [r5, #0]
d00037f8:	603b      	str	r3, [r7, #0]
d00037fa:	463d      	mov	r5, r7
d00037fc:	42ae      	cmp	r6, r5
d00037fe:	d3ef      	bcc.n	d00037e0 <qsort+0x62>
d0003800:	9b01      	ldr	r3, [sp, #4]
d0003802:	4423      	add	r3, r4
d0003804:	9301      	str	r3, [sp, #4]
d0003806:	e7d4      	b.n	d00037b2 <qsort+0x34>
d0003808:	ea4f 0951 	mov.w	r9, r1, lsr #1
d000380c:	1b3f      	subs	r7, r7, r4
d000380e:	2907      	cmp	r1, #7
d0003810:	fb04 6909 	mla	r9, r4, r9, r6
d0003814:	4437      	add	r7, r6
d0003816:	d022      	beq.n	d000385e <qsort+0xe0>
d0003818:	2928      	cmp	r1, #40	; 0x28
d000381a:	d945      	bls.n	d00038a8 <qsort+0x12a>
d000381c:	08c9      	lsrs	r1, r1, #3
d000381e:	fb04 f501 	mul.w	r5, r4, r1
d0003822:	4653      	mov	r3, sl
d0003824:	eb06 0245 	add.w	r2, r6, r5, lsl #1
d0003828:	1971      	adds	r1, r6, r5
d000382a:	4630      	mov	r0, r6
d000382c:	f7ff ff87 	bl	d000373e <med3.isra.0>
d0003830:	4649      	mov	r1, r9
d0003832:	eb09 0205 	add.w	r2, r9, r5
d0003836:	4653      	mov	r3, sl
d0003838:	4683      	mov	fp, r0
d000383a:	1b48      	subs	r0, r1, r5
d000383c:	f7ff ff7f 	bl	d000373e <med3.isra.0>
d0003840:	463a      	mov	r2, r7
d0003842:	4681      	mov	r9, r0
d0003844:	4653      	mov	r3, sl
d0003846:	1b79      	subs	r1, r7, r5
d0003848:	eba7 0045 	sub.w	r0, r7, r5, lsl #1
d000384c:	f7ff ff77 	bl	d000373e <med3.isra.0>
d0003850:	4602      	mov	r2, r0
d0003852:	4649      	mov	r1, r9
d0003854:	4653      	mov	r3, sl
d0003856:	4658      	mov	r0, fp
d0003858:	f7ff ff71 	bl	d000373e <med3.isra.0>
d000385c:	4681      	mov	r9, r0
d000385e:	f1b8 0f00 	cmp.w	r8, #0
d0003862:	d124      	bne.n	d00038ae <qsort+0x130>
d0003864:	6833      	ldr	r3, [r6, #0]
d0003866:	f8d9 2000 	ldr.w	r2, [r9]
d000386a:	6032      	str	r2, [r6, #0]
d000386c:	f8c9 3000 	str.w	r3, [r9]
d0003870:	eb06 0b04 	add.w	fp, r6, r4
d0003874:	46b9      	mov	r9, r7
d0003876:	465d      	mov	r5, fp
d0003878:	2300      	movs	r3, #0
d000387a:	45bb      	cmp	fp, r7
d000387c:	d835      	bhi.n	d00038ea <qsort+0x16c>
d000387e:	4631      	mov	r1, r6
d0003880:	4658      	mov	r0, fp
d0003882:	9304      	str	r3, [sp, #16]
d0003884:	47d0      	blx	sl
d0003886:	2800      	cmp	r0, #0
d0003888:	9b04      	ldr	r3, [sp, #16]
d000388a:	dc3e      	bgt.n	d000390a <qsort+0x18c>
d000388c:	d10a      	bne.n	d00038a4 <qsort+0x126>
d000388e:	f1b8 0f00 	cmp.w	r8, #0
d0003892:	d113      	bne.n	d00038bc <qsort+0x13e>
d0003894:	682b      	ldr	r3, [r5, #0]
d0003896:	f8db 2000 	ldr.w	r2, [fp]
d000389a:	602a      	str	r2, [r5, #0]
d000389c:	f8cb 3000 	str.w	r3, [fp]
d00038a0:	4425      	add	r5, r4
d00038a2:	2301      	movs	r3, #1
d00038a4:	44a3      	add	fp, r4
d00038a6:	e7e8      	b.n	d000387a <qsort+0xfc>
d00038a8:	463a      	mov	r2, r7
d00038aa:	46b3      	mov	fp, r6
d00038ac:	e7d1      	b.n	d0003852 <qsort+0xd4>
d00038ae:	4643      	mov	r3, r8
d00038b0:	4622      	mov	r2, r4
d00038b2:	4649      	mov	r1, r9
d00038b4:	4630      	mov	r0, r6
d00038b6:	f7ff ff29 	bl	d000370c <swapfunc>
d00038ba:	e7d9      	b.n	d0003870 <qsort+0xf2>
d00038bc:	4643      	mov	r3, r8
d00038be:	4622      	mov	r2, r4
d00038c0:	4659      	mov	r1, fp
d00038c2:	4628      	mov	r0, r5
d00038c4:	f7ff ff22 	bl	d000370c <swapfunc>
d00038c8:	e7ea      	b.n	d00038a0 <qsort+0x122>
d00038ca:	d10b      	bne.n	d00038e4 <qsort+0x166>
d00038cc:	f1b8 0f00 	cmp.w	r8, #0
d00038d0:	d114      	bne.n	d00038fc <qsort+0x17e>
d00038d2:	683b      	ldr	r3, [r7, #0]
d00038d4:	f8d9 2000 	ldr.w	r2, [r9]
d00038d8:	603a      	str	r2, [r7, #0]
d00038da:	f8c9 3000 	str.w	r3, [r9]
d00038de:	eba9 0904 	sub.w	r9, r9, r4
d00038e2:	2301      	movs	r3, #1
d00038e4:	9f04      	ldr	r7, [sp, #16]
d00038e6:	45bb      	cmp	fp, r7
d00038e8:	d90f      	bls.n	d000390a <qsort+0x18c>
d00038ea:	2b00      	cmp	r3, #0
d00038ec:	d143      	bne.n	d0003976 <qsort+0x1f8>
d00038ee:	9b01      	ldr	r3, [sp, #4]
d00038f0:	9a03      	ldr	r2, [sp, #12]
d00038f2:	4293      	cmp	r3, r2
d00038f4:	f4bf af61 	bcs.w	d00037ba <qsort+0x3c>
d00038f8:	9d01      	ldr	r5, [sp, #4]
d00038fa:	e036      	b.n	d000396a <qsort+0x1ec>
d00038fc:	4643      	mov	r3, r8
d00038fe:	4622      	mov	r2, r4
d0003900:	4649      	mov	r1, r9
d0003902:	4638      	mov	r0, r7
d0003904:	f7ff ff02 	bl	d000370c <swapfunc>
d0003908:	e7e9      	b.n	d00038de <qsort+0x160>
d000390a:	4631      	mov	r1, r6
d000390c:	4638      	mov	r0, r7
d000390e:	9305      	str	r3, [sp, #20]
d0003910:	47d0      	blx	sl
d0003912:	1b3b      	subs	r3, r7, r4
d0003914:	2800      	cmp	r0, #0
d0003916:	9304      	str	r3, [sp, #16]
d0003918:	9b05      	ldr	r3, [sp, #20]
d000391a:	dad6      	bge.n	d00038ca <qsort+0x14c>
d000391c:	f1b8 0f00 	cmp.w	r8, #0
d0003920:	d006      	beq.n	d0003930 <qsort+0x1b2>
d0003922:	4643      	mov	r3, r8
d0003924:	4622      	mov	r2, r4
d0003926:	4639      	mov	r1, r7
d0003928:	4658      	mov	r0, fp
d000392a:	f7ff feef 	bl	d000370c <swapfunc>
d000392e:	e005      	b.n	d000393c <qsort+0x1be>
d0003930:	f8db 3000 	ldr.w	r3, [fp]
d0003934:	683a      	ldr	r2, [r7, #0]
d0003936:	f8cb 2000 	str.w	r2, [fp]
d000393a:	603b      	str	r3, [r7, #0]
d000393c:	9f04      	ldr	r7, [sp, #16]
d000393e:	e7b0      	b.n	d00038a2 <qsort+0x124>
d0003940:	4643      	mov	r3, r8
d0003942:	4622      	mov	r2, r4
d0003944:	4639      	mov	r1, r7
d0003946:	4628      	mov	r0, r5
d0003948:	f7ff fee0 	bl	d000370c <swapfunc>
d000394c:	e00c      	b.n	d0003968 <qsort+0x1ea>
d000394e:	1b2f      	subs	r7, r5, r4
d0003950:	4629      	mov	r1, r5
d0003952:	4638      	mov	r0, r7
d0003954:	47d0      	blx	sl
d0003956:	2800      	cmp	r0, #0
d0003958:	dd09      	ble.n	d000396e <qsort+0x1f0>
d000395a:	f1b8 0f00 	cmp.w	r8, #0
d000395e:	d1ef      	bne.n	d0003940 <qsort+0x1c2>
d0003960:	682b      	ldr	r3, [r5, #0]
d0003962:	683a      	ldr	r2, [r7, #0]
d0003964:	602a      	str	r2, [r5, #0]
d0003966:	603b      	str	r3, [r7, #0]
d0003968:	463d      	mov	r5, r7
d000396a:	42ae      	cmp	r6, r5
d000396c:	d3ef      	bcc.n	d000394e <qsort+0x1d0>
d000396e:	9b01      	ldr	r3, [sp, #4]
d0003970:	4423      	add	r3, r4
d0003972:	9301      	str	r3, [sp, #4]
d0003974:	e7bb      	b.n	d00038ee <qsort+0x170>
d0003976:	ebab 0305 	sub.w	r3, fp, r5
d000397a:	1baa      	subs	r2, r5, r6
d000397c:	429a      	cmp	r2, r3
d000397e:	bfa8      	it	ge
d0003980:	461a      	movge	r2, r3
d0003982:	9301      	str	r3, [sp, #4]
d0003984:	b12a      	cbz	r2, d0003992 <qsort+0x214>
d0003986:	4643      	mov	r3, r8
d0003988:	ebab 0102 	sub.w	r1, fp, r2
d000398c:	4630      	mov	r0, r6
d000398e:	f7ff febd 	bl	d000370c <swapfunc>
d0003992:	9b03      	ldr	r3, [sp, #12]
d0003994:	eba3 0209 	sub.w	r2, r3, r9
d0003998:	eba9 0707 	sub.w	r7, r9, r7
d000399c:	1b12      	subs	r2, r2, r4
d000399e:	42ba      	cmp	r2, r7
d00039a0:	bf28      	it	cs
d00039a2:	463a      	movcs	r2, r7
d00039a4:	b12a      	cbz	r2, d00039b2 <qsort+0x234>
d00039a6:	9903      	ldr	r1, [sp, #12]
d00039a8:	4643      	mov	r3, r8
d00039aa:	1a89      	subs	r1, r1, r2
d00039ac:	4658      	mov	r0, fp
d00039ae:	f7ff fead 	bl	d000370c <swapfunc>
d00039b2:	f8dd 9004 	ldr.w	r9, [sp, #4]
d00039b6:	9b03      	ldr	r3, [sp, #12]
d00039b8:	454f      	cmp	r7, r9
d00039ba:	eba3 0007 	sub.w	r0, r3, r7
d00039be:	d904      	bls.n	d00039ca <qsort+0x24c>
d00039c0:	4633      	mov	r3, r6
d00039c2:	46b9      	mov	r9, r7
d00039c4:	9f01      	ldr	r7, [sp, #4]
d00039c6:	4606      	mov	r6, r0
d00039c8:	4618      	mov	r0, r3
d00039ca:	42a7      	cmp	r7, r4
d00039cc:	d921      	bls.n	d0003a12 <qsort+0x294>
d00039ce:	fbb7 f1f4 	udiv	r1, r7, r4
d00039d2:	9b02      	ldr	r3, [sp, #8]
d00039d4:	2b07      	cmp	r3, #7
d00039d6:	d80d      	bhi.n	d00039f4 <qsort+0x276>
d00039d8:	fbb9 f7f4 	udiv	r7, r9, r4
d00039dc:	aa16      	add	r2, sp, #88	; 0x58
d00039de:	eb02 03c3 	add.w	r3, r2, r3, lsl #3
d00039e2:	f843 6c40 	str.w	r6, [r3, #-64]
d00039e6:	f843 7c3c 	str.w	r7, [r3, #-60]
d00039ea:	9b02      	ldr	r3, [sp, #8]
d00039ec:	3301      	adds	r3, #1
d00039ee:	9302      	str	r3, [sp, #8]
d00039f0:	4606      	mov	r6, r0
d00039f2:	e6d5      	b.n	d00037a0 <qsort+0x22>
d00039f4:	4653      	mov	r3, sl
d00039f6:	4622      	mov	r2, r4
d00039f8:	f7ff fec1 	bl	d000377e <qsort>
d00039fc:	45a1      	cmp	r9, r4
d00039fe:	d80b      	bhi.n	d0003a18 <qsort+0x29a>
d0003a00:	9b02      	ldr	r3, [sp, #8]
d0003a02:	aa16      	add	r2, sp, #88	; 0x58
d0003a04:	3b01      	subs	r3, #1
d0003a06:	9302      	str	r3, [sp, #8]
d0003a08:	eb02 03c3 	add.w	r3, r2, r3, lsl #3
d0003a0c:	e953 0110 	ldrd	r0, r1, [r3, #-64]	; 0x40
d0003a10:	e7ee      	b.n	d00039f0 <qsort+0x272>
d0003a12:	45a1      	cmp	r9, r4
d0003a14:	f67f aed1 	bls.w	d00037ba <qsort+0x3c>
d0003a18:	fbb9 f1f4 	udiv	r1, r9, r4
d0003a1c:	4630      	mov	r0, r6
d0003a1e:	e7e7      	b.n	d00039f0 <qsort+0x272>

d0003a20 <setbuf>:
d0003a20:	2900      	cmp	r1, #0
d0003a22:	f44f 6380 	mov.w	r3, #1024	; 0x400
d0003a26:	bf0c      	ite	eq
d0003a28:	2202      	moveq	r2, #2
d0003a2a:	2200      	movne	r2, #0
d0003a2c:	f000 b800 	b.w	d0003a30 <setvbuf>

d0003a30 <setvbuf>:
d0003a30:	e92d 43f7 	stmdb	sp!, {r0, r1, r2, r4, r5, r6, r7, r8, r9, lr}
d0003a34:	461d      	mov	r5, r3
d0003a36:	4b5d      	ldr	r3, [pc, #372]	; (d0003bac <setvbuf+0x17c>)
d0003a38:	681f      	ldr	r7, [r3, #0]
d0003a3a:	4604      	mov	r4, r0
d0003a3c:	460e      	mov	r6, r1
d0003a3e:	4690      	mov	r8, r2
d0003a40:	b127      	cbz	r7, d0003a4c <setvbuf+0x1c>
d0003a42:	69bb      	ldr	r3, [r7, #24]
d0003a44:	b913      	cbnz	r3, d0003a4c <setvbuf+0x1c>
d0003a46:	4638      	mov	r0, r7
d0003a48:	f000 fa2e 	bl	d0003ea8 <__sinit>
d0003a4c:	4b58      	ldr	r3, [pc, #352]	; (d0003bb0 <setvbuf+0x180>)
d0003a4e:	429c      	cmp	r4, r3
d0003a50:	d167      	bne.n	d0003b22 <setvbuf+0xf2>
d0003a52:	687c      	ldr	r4, [r7, #4]
d0003a54:	f1b8 0f02 	cmp.w	r8, #2
d0003a58:	d006      	beq.n	d0003a68 <setvbuf+0x38>
d0003a5a:	f1b8 0f01 	cmp.w	r8, #1
d0003a5e:	f200 809f 	bhi.w	d0003ba0 <setvbuf+0x170>
d0003a62:	2d00      	cmp	r5, #0
d0003a64:	f2c0 809c 	blt.w	d0003ba0 <setvbuf+0x170>
d0003a68:	6e63      	ldr	r3, [r4, #100]	; 0x64
d0003a6a:	07db      	lsls	r3, r3, #31
d0003a6c:	d405      	bmi.n	d0003a7a <setvbuf+0x4a>
d0003a6e:	89a3      	ldrh	r3, [r4, #12]
d0003a70:	0598      	lsls	r0, r3, #22
d0003a72:	d402      	bmi.n	d0003a7a <setvbuf+0x4a>
d0003a74:	6da0      	ldr	r0, [r4, #88]	; 0x58
d0003a76:	f000 fab5 	bl	d0003fe4 <__retarget_lock_acquire_recursive>
d0003a7a:	4621      	mov	r1, r4
d0003a7c:	4638      	mov	r0, r7
d0003a7e:	f000 f97f 	bl	d0003d80 <_fflush_r>
d0003a82:	6b61      	ldr	r1, [r4, #52]	; 0x34
d0003a84:	b141      	cbz	r1, d0003a98 <setvbuf+0x68>
d0003a86:	f104 0344 	add.w	r3, r4, #68	; 0x44
d0003a8a:	4299      	cmp	r1, r3
d0003a8c:	d002      	beq.n	d0003a94 <setvbuf+0x64>
d0003a8e:	4638      	mov	r0, r7
d0003a90:	f7ff fd7a 	bl	d0003588 <_free_r>
d0003a94:	2300      	movs	r3, #0
d0003a96:	6363      	str	r3, [r4, #52]	; 0x34
d0003a98:	2300      	movs	r3, #0
d0003a9a:	61a3      	str	r3, [r4, #24]
d0003a9c:	6063      	str	r3, [r4, #4]
d0003a9e:	89a3      	ldrh	r3, [r4, #12]
d0003aa0:	0619      	lsls	r1, r3, #24
d0003aa2:	d503      	bpl.n	d0003aac <setvbuf+0x7c>
d0003aa4:	6921      	ldr	r1, [r4, #16]
d0003aa6:	4638      	mov	r0, r7
d0003aa8:	f7ff fd6e 	bl	d0003588 <_free_r>
d0003aac:	89a3      	ldrh	r3, [r4, #12]
d0003aae:	f423 634a 	bic.w	r3, r3, #3232	; 0xca0
d0003ab2:	f023 0303 	bic.w	r3, r3, #3
d0003ab6:	f1b8 0f02 	cmp.w	r8, #2
d0003aba:	81a3      	strh	r3, [r4, #12]
d0003abc:	d06c      	beq.n	d0003b98 <setvbuf+0x168>
d0003abe:	ab01      	add	r3, sp, #4
d0003ac0:	466a      	mov	r2, sp
d0003ac2:	4621      	mov	r1, r4
d0003ac4:	4638      	mov	r0, r7
d0003ac6:	f000 fa8f 	bl	d0003fe8 <__swhatbuf_r>
d0003aca:	89a3      	ldrh	r3, [r4, #12]
d0003acc:	4318      	orrs	r0, r3
d0003ace:	81a0      	strh	r0, [r4, #12]
d0003ad0:	2d00      	cmp	r5, #0
d0003ad2:	d130      	bne.n	d0003b36 <setvbuf+0x106>
d0003ad4:	9d00      	ldr	r5, [sp, #0]
d0003ad6:	4628      	mov	r0, r5
d0003ad8:	f7ff fd20 	bl	d000351c <malloc>
d0003adc:	4606      	mov	r6, r0
d0003ade:	2800      	cmp	r0, #0
d0003ae0:	d155      	bne.n	d0003b8e <setvbuf+0x15e>
d0003ae2:	f8dd 9000 	ldr.w	r9, [sp]
d0003ae6:	45a9      	cmp	r9, r5
d0003ae8:	d14a      	bne.n	d0003b80 <setvbuf+0x150>
d0003aea:	f04f 35ff 	mov.w	r5, #4294967295	; 0xffffffff
d0003aee:	2200      	movs	r2, #0
d0003af0:	60a2      	str	r2, [r4, #8]
d0003af2:	f104 0247 	add.w	r2, r4, #71	; 0x47
d0003af6:	6022      	str	r2, [r4, #0]
d0003af8:	6122      	str	r2, [r4, #16]
d0003afa:	2201      	movs	r2, #1
d0003afc:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
d0003b00:	6162      	str	r2, [r4, #20]
d0003b02:	6e62      	ldr	r2, [r4, #100]	; 0x64
d0003b04:	f043 0302 	orr.w	r3, r3, #2
d0003b08:	07d2      	lsls	r2, r2, #31
d0003b0a:	81a3      	strh	r3, [r4, #12]
d0003b0c:	d405      	bmi.n	d0003b1a <setvbuf+0xea>
d0003b0e:	f413 7f00 	tst.w	r3, #512	; 0x200
d0003b12:	d102      	bne.n	d0003b1a <setvbuf+0xea>
d0003b14:	6da0      	ldr	r0, [r4, #88]	; 0x58
d0003b16:	f000 fa66 	bl	d0003fe6 <__retarget_lock_release_recursive>
d0003b1a:	4628      	mov	r0, r5
d0003b1c:	b003      	add	sp, #12
d0003b1e:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
d0003b22:	4b24      	ldr	r3, [pc, #144]	; (d0003bb4 <setvbuf+0x184>)
d0003b24:	429c      	cmp	r4, r3
d0003b26:	d101      	bne.n	d0003b2c <setvbuf+0xfc>
d0003b28:	68bc      	ldr	r4, [r7, #8]
d0003b2a:	e793      	b.n	d0003a54 <setvbuf+0x24>
d0003b2c:	4b22      	ldr	r3, [pc, #136]	; (d0003bb8 <setvbuf+0x188>)
d0003b2e:	429c      	cmp	r4, r3
d0003b30:	bf08      	it	eq
d0003b32:	68fc      	ldreq	r4, [r7, #12]
d0003b34:	e78e      	b.n	d0003a54 <setvbuf+0x24>
d0003b36:	2e00      	cmp	r6, #0
d0003b38:	d0cd      	beq.n	d0003ad6 <setvbuf+0xa6>
d0003b3a:	69bb      	ldr	r3, [r7, #24]
d0003b3c:	b913      	cbnz	r3, d0003b44 <setvbuf+0x114>
d0003b3e:	4638      	mov	r0, r7
d0003b40:	f000 f9b2 	bl	d0003ea8 <__sinit>
d0003b44:	f1b8 0f01 	cmp.w	r8, #1
d0003b48:	bf08      	it	eq
d0003b4a:	89a3      	ldrheq	r3, [r4, #12]
d0003b4c:	6026      	str	r6, [r4, #0]
d0003b4e:	bf04      	itt	eq
d0003b50:	f043 0301 	orreq.w	r3, r3, #1
d0003b54:	81a3      	strheq	r3, [r4, #12]
d0003b56:	89a2      	ldrh	r2, [r4, #12]
d0003b58:	f012 0308 	ands.w	r3, r2, #8
d0003b5c:	e9c4 6504 	strd	r6, r5, [r4, #16]
d0003b60:	d01c      	beq.n	d0003b9c <setvbuf+0x16c>
d0003b62:	07d3      	lsls	r3, r2, #31
d0003b64:	bf41      	itttt	mi
d0003b66:	2300      	movmi	r3, #0
d0003b68:	426d      	negmi	r5, r5
d0003b6a:	60a3      	strmi	r3, [r4, #8]
d0003b6c:	61a5      	strmi	r5, [r4, #24]
d0003b6e:	bf58      	it	pl
d0003b70:	60a5      	strpl	r5, [r4, #8]
d0003b72:	6e65      	ldr	r5, [r4, #100]	; 0x64
d0003b74:	f015 0501 	ands.w	r5, r5, #1
d0003b78:	d115      	bne.n	d0003ba6 <setvbuf+0x176>
d0003b7a:	f412 7f00 	tst.w	r2, #512	; 0x200
d0003b7e:	e7c8      	b.n	d0003b12 <setvbuf+0xe2>
d0003b80:	4648      	mov	r0, r9
d0003b82:	f7ff fccb 	bl	d000351c <malloc>
d0003b86:	4606      	mov	r6, r0
d0003b88:	2800      	cmp	r0, #0
d0003b8a:	d0ae      	beq.n	d0003aea <setvbuf+0xba>
d0003b8c:	464d      	mov	r5, r9
d0003b8e:	89a3      	ldrh	r3, [r4, #12]
d0003b90:	f043 0380 	orr.w	r3, r3, #128	; 0x80
d0003b94:	81a3      	strh	r3, [r4, #12]
d0003b96:	e7d0      	b.n	d0003b3a <setvbuf+0x10a>
d0003b98:	2500      	movs	r5, #0
d0003b9a:	e7a8      	b.n	d0003aee <setvbuf+0xbe>
d0003b9c:	60a3      	str	r3, [r4, #8]
d0003b9e:	e7e8      	b.n	d0003b72 <setvbuf+0x142>
d0003ba0:	f04f 35ff 	mov.w	r5, #4294967295	; 0xffffffff
d0003ba4:	e7b9      	b.n	d0003b1a <setvbuf+0xea>
d0003ba6:	2500      	movs	r5, #0
d0003ba8:	e7b7      	b.n	d0003b1a <setvbuf+0xea>
d0003baa:	bf00      	nop
d0003bac:	d0005228 	.word	0xd0005228
d0003bb0:	d00051a4 	.word	0xd00051a4
d0003bb4:	d00051c4 	.word	0xd00051c4
d0003bb8:	d0005184 	.word	0xd0005184

d0003bbc <sniprintf>:
d0003bbc:	b40c      	push	{r2, r3}
d0003bbe:	b530      	push	{r4, r5, lr}
d0003bc0:	4b17      	ldr	r3, [pc, #92]	; (d0003c20 <sniprintf+0x64>)
d0003bc2:	1e0c      	subs	r4, r1, #0
d0003bc4:	681d      	ldr	r5, [r3, #0]
d0003bc6:	b09d      	sub	sp, #116	; 0x74
d0003bc8:	da08      	bge.n	d0003bdc <sniprintf+0x20>
d0003bca:	238b      	movs	r3, #139	; 0x8b
d0003bcc:	602b      	str	r3, [r5, #0]
d0003bce:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d0003bd2:	b01d      	add	sp, #116	; 0x74
d0003bd4:	e8bd 4030 	ldmia.w	sp!, {r4, r5, lr}
d0003bd8:	b002      	add	sp, #8
d0003bda:	4770      	bx	lr
d0003bdc:	f44f 7302 	mov.w	r3, #520	; 0x208
d0003be0:	f8ad 3014 	strh.w	r3, [sp, #20]
d0003be4:	bf14      	ite	ne
d0003be6:	f104 33ff 	addne.w	r3, r4, #4294967295	; 0xffffffff
d0003bea:	4623      	moveq	r3, r4
d0003bec:	9304      	str	r3, [sp, #16]
d0003bee:	9307      	str	r3, [sp, #28]
d0003bf0:	f64f 73ff 	movw	r3, #65535	; 0xffff
d0003bf4:	9002      	str	r0, [sp, #8]
d0003bf6:	9006      	str	r0, [sp, #24]
d0003bf8:	f8ad 3016 	strh.w	r3, [sp, #22]
d0003bfc:	9a20      	ldr	r2, [sp, #128]	; 0x80
d0003bfe:	ab21      	add	r3, sp, #132	; 0x84
d0003c00:	a902      	add	r1, sp, #8
d0003c02:	4628      	mov	r0, r5
d0003c04:	9301      	str	r3, [sp, #4]
d0003c06:	f000 fabb 	bl	d0004180 <_svfiprintf_r>
d0003c0a:	1c43      	adds	r3, r0, #1
d0003c0c:	bfbc      	itt	lt
d0003c0e:	238b      	movlt	r3, #139	; 0x8b
d0003c10:	602b      	strlt	r3, [r5, #0]
d0003c12:	2c00      	cmp	r4, #0
d0003c14:	d0dd      	beq.n	d0003bd2 <sniprintf+0x16>
d0003c16:	9b02      	ldr	r3, [sp, #8]
d0003c18:	2200      	movs	r2, #0
d0003c1a:	701a      	strb	r2, [r3, #0]
d0003c1c:	e7d9      	b.n	d0003bd2 <sniprintf+0x16>
d0003c1e:	bf00      	nop
d0003c20:	d0005228 	.word	0xd0005228

d0003c24 <strncpy>:
d0003c24:	b510      	push	{r4, lr}
d0003c26:	3901      	subs	r1, #1
d0003c28:	4603      	mov	r3, r0
d0003c2a:	b132      	cbz	r2, d0003c3a <strncpy+0x16>
d0003c2c:	f811 4f01 	ldrb.w	r4, [r1, #1]!
d0003c30:	f803 4b01 	strb.w	r4, [r3], #1
d0003c34:	3a01      	subs	r2, #1
d0003c36:	2c00      	cmp	r4, #0
d0003c38:	d1f7      	bne.n	d0003c2a <strncpy+0x6>
d0003c3a:	441a      	add	r2, r3
d0003c3c:	2100      	movs	r1, #0
d0003c3e:	4293      	cmp	r3, r2
d0003c40:	d100      	bne.n	d0003c44 <strncpy+0x20>
d0003c42:	bd10      	pop	{r4, pc}
d0003c44:	f803 1b01 	strb.w	r1, [r3], #1
d0003c48:	e7f9      	b.n	d0003c3e <strncpy+0x1a>

d0003c4a <strrchr>:
d0003c4a:	b538      	push	{r3, r4, r5, lr}
d0003c4c:	4603      	mov	r3, r0
d0003c4e:	460c      	mov	r4, r1
d0003c50:	b969      	cbnz	r1, d0003c6e <strrchr+0x24>
d0003c52:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
d0003c56:	f000 bec4 	b.w	d00049e2 <strchr>
d0003c5a:	1c43      	adds	r3, r0, #1
d0003c5c:	4605      	mov	r5, r0
d0003c5e:	4621      	mov	r1, r4
d0003c60:	4618      	mov	r0, r3
d0003c62:	f000 febe 	bl	d00049e2 <strchr>
d0003c66:	2800      	cmp	r0, #0
d0003c68:	d1f7      	bne.n	d0003c5a <strrchr+0x10>
d0003c6a:	4628      	mov	r0, r5
d0003c6c:	bd38      	pop	{r3, r4, r5, pc}
d0003c6e:	2500      	movs	r5, #0
d0003c70:	e7f5      	b.n	d0003c5e <strrchr+0x14>
	...

d0003c74 <__sflush_r>:
d0003c74:	898a      	ldrh	r2, [r1, #12]
d0003c76:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
d0003c7a:	4605      	mov	r5, r0
d0003c7c:	0710      	lsls	r0, r2, #28
d0003c7e:	460c      	mov	r4, r1
d0003c80:	d458      	bmi.n	d0003d34 <__sflush_r+0xc0>
d0003c82:	684b      	ldr	r3, [r1, #4]
d0003c84:	2b00      	cmp	r3, #0
d0003c86:	dc05      	bgt.n	d0003c94 <__sflush_r+0x20>
d0003c88:	6c0b      	ldr	r3, [r1, #64]	; 0x40
d0003c8a:	2b00      	cmp	r3, #0
d0003c8c:	dc02      	bgt.n	d0003c94 <__sflush_r+0x20>
d0003c8e:	2000      	movs	r0, #0
d0003c90:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
d0003c94:	6ae6      	ldr	r6, [r4, #44]	; 0x2c
d0003c96:	2e00      	cmp	r6, #0
d0003c98:	d0f9      	beq.n	d0003c8e <__sflush_r+0x1a>
d0003c9a:	2300      	movs	r3, #0
d0003c9c:	f412 5280 	ands.w	r2, r2, #4096	; 0x1000
d0003ca0:	682f      	ldr	r7, [r5, #0]
d0003ca2:	602b      	str	r3, [r5, #0]
d0003ca4:	d032      	beq.n	d0003d0c <__sflush_r+0x98>
d0003ca6:	6d60      	ldr	r0, [r4, #84]	; 0x54
d0003ca8:	89a3      	ldrh	r3, [r4, #12]
d0003caa:	075a      	lsls	r2, r3, #29
d0003cac:	d505      	bpl.n	d0003cba <__sflush_r+0x46>
d0003cae:	6863      	ldr	r3, [r4, #4]
d0003cb0:	1ac0      	subs	r0, r0, r3
d0003cb2:	6b63      	ldr	r3, [r4, #52]	; 0x34
d0003cb4:	b10b      	cbz	r3, d0003cba <__sflush_r+0x46>
d0003cb6:	6c23      	ldr	r3, [r4, #64]	; 0x40
d0003cb8:	1ac0      	subs	r0, r0, r3
d0003cba:	2300      	movs	r3, #0
d0003cbc:	4602      	mov	r2, r0
d0003cbe:	6ae6      	ldr	r6, [r4, #44]	; 0x2c
d0003cc0:	6a21      	ldr	r1, [r4, #32]
d0003cc2:	4628      	mov	r0, r5
d0003cc4:	47b0      	blx	r6
d0003cc6:	1c43      	adds	r3, r0, #1
d0003cc8:	89a3      	ldrh	r3, [r4, #12]
d0003cca:	d106      	bne.n	d0003cda <__sflush_r+0x66>
d0003ccc:	6829      	ldr	r1, [r5, #0]
d0003cce:	291d      	cmp	r1, #29
d0003cd0:	d82c      	bhi.n	d0003d2c <__sflush_r+0xb8>
d0003cd2:	4a2a      	ldr	r2, [pc, #168]	; (d0003d7c <__sflush_r+0x108>)
d0003cd4:	40ca      	lsrs	r2, r1
d0003cd6:	07d6      	lsls	r6, r2, #31
d0003cd8:	d528      	bpl.n	d0003d2c <__sflush_r+0xb8>
d0003cda:	2200      	movs	r2, #0
d0003cdc:	6062      	str	r2, [r4, #4]
d0003cde:	04d9      	lsls	r1, r3, #19
d0003ce0:	6922      	ldr	r2, [r4, #16]
d0003ce2:	6022      	str	r2, [r4, #0]
d0003ce4:	d504      	bpl.n	d0003cf0 <__sflush_r+0x7c>
d0003ce6:	1c42      	adds	r2, r0, #1
d0003ce8:	d101      	bne.n	d0003cee <__sflush_r+0x7a>
d0003cea:	682b      	ldr	r3, [r5, #0]
d0003cec:	b903      	cbnz	r3, d0003cf0 <__sflush_r+0x7c>
d0003cee:	6560      	str	r0, [r4, #84]	; 0x54
d0003cf0:	6b61      	ldr	r1, [r4, #52]	; 0x34
d0003cf2:	602f      	str	r7, [r5, #0]
d0003cf4:	2900      	cmp	r1, #0
d0003cf6:	d0ca      	beq.n	d0003c8e <__sflush_r+0x1a>
d0003cf8:	f104 0344 	add.w	r3, r4, #68	; 0x44
d0003cfc:	4299      	cmp	r1, r3
d0003cfe:	d002      	beq.n	d0003d06 <__sflush_r+0x92>
d0003d00:	4628      	mov	r0, r5
d0003d02:	f7ff fc41 	bl	d0003588 <_free_r>
d0003d06:	2000      	movs	r0, #0
d0003d08:	6360      	str	r0, [r4, #52]	; 0x34
d0003d0a:	e7c1      	b.n	d0003c90 <__sflush_r+0x1c>
d0003d0c:	6a21      	ldr	r1, [r4, #32]
d0003d0e:	2301      	movs	r3, #1
d0003d10:	4628      	mov	r0, r5
d0003d12:	47b0      	blx	r6
d0003d14:	1c41      	adds	r1, r0, #1
d0003d16:	d1c7      	bne.n	d0003ca8 <__sflush_r+0x34>
d0003d18:	682b      	ldr	r3, [r5, #0]
d0003d1a:	2b00      	cmp	r3, #0
d0003d1c:	d0c4      	beq.n	d0003ca8 <__sflush_r+0x34>
d0003d1e:	2b1d      	cmp	r3, #29
d0003d20:	d001      	beq.n	d0003d26 <__sflush_r+0xb2>
d0003d22:	2b16      	cmp	r3, #22
d0003d24:	d101      	bne.n	d0003d2a <__sflush_r+0xb6>
d0003d26:	602f      	str	r7, [r5, #0]
d0003d28:	e7b1      	b.n	d0003c8e <__sflush_r+0x1a>
d0003d2a:	89a3      	ldrh	r3, [r4, #12]
d0003d2c:	f043 0340 	orr.w	r3, r3, #64	; 0x40
d0003d30:	81a3      	strh	r3, [r4, #12]
d0003d32:	e7ad      	b.n	d0003c90 <__sflush_r+0x1c>
d0003d34:	690f      	ldr	r7, [r1, #16]
d0003d36:	2f00      	cmp	r7, #0
d0003d38:	d0a9      	beq.n	d0003c8e <__sflush_r+0x1a>
d0003d3a:	0793      	lsls	r3, r2, #30
d0003d3c:	680e      	ldr	r6, [r1, #0]
d0003d3e:	bf08      	it	eq
d0003d40:	694b      	ldreq	r3, [r1, #20]
d0003d42:	600f      	str	r7, [r1, #0]
d0003d44:	bf18      	it	ne
d0003d46:	2300      	movne	r3, #0
d0003d48:	eba6 0807 	sub.w	r8, r6, r7
d0003d4c:	608b      	str	r3, [r1, #8]
d0003d4e:	f1b8 0f00 	cmp.w	r8, #0
d0003d52:	dd9c      	ble.n	d0003c8e <__sflush_r+0x1a>
d0003d54:	6a21      	ldr	r1, [r4, #32]
d0003d56:	6aa6      	ldr	r6, [r4, #40]	; 0x28
d0003d58:	4643      	mov	r3, r8
d0003d5a:	463a      	mov	r2, r7
d0003d5c:	4628      	mov	r0, r5
d0003d5e:	47b0      	blx	r6
d0003d60:	2800      	cmp	r0, #0
d0003d62:	dc06      	bgt.n	d0003d72 <__sflush_r+0xfe>
d0003d64:	89a3      	ldrh	r3, [r4, #12]
d0003d66:	f043 0340 	orr.w	r3, r3, #64	; 0x40
d0003d6a:	81a3      	strh	r3, [r4, #12]
d0003d6c:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d0003d70:	e78e      	b.n	d0003c90 <__sflush_r+0x1c>
d0003d72:	4407      	add	r7, r0
d0003d74:	eba8 0800 	sub.w	r8, r8, r0
d0003d78:	e7e9      	b.n	d0003d4e <__sflush_r+0xda>
d0003d7a:	bf00      	nop
d0003d7c:	20400001 	.word	0x20400001

d0003d80 <_fflush_r>:
d0003d80:	b538      	push	{r3, r4, r5, lr}
d0003d82:	690b      	ldr	r3, [r1, #16]
d0003d84:	4605      	mov	r5, r0
d0003d86:	460c      	mov	r4, r1
d0003d88:	b913      	cbnz	r3, d0003d90 <_fflush_r+0x10>
d0003d8a:	2500      	movs	r5, #0
d0003d8c:	4628      	mov	r0, r5
d0003d8e:	bd38      	pop	{r3, r4, r5, pc}
d0003d90:	b118      	cbz	r0, d0003d9a <_fflush_r+0x1a>
d0003d92:	6983      	ldr	r3, [r0, #24]
d0003d94:	b90b      	cbnz	r3, d0003d9a <_fflush_r+0x1a>
d0003d96:	f000 f887 	bl	d0003ea8 <__sinit>
d0003d9a:	4b14      	ldr	r3, [pc, #80]	; (d0003dec <_fflush_r+0x6c>)
d0003d9c:	429c      	cmp	r4, r3
d0003d9e:	d11b      	bne.n	d0003dd8 <_fflush_r+0x58>
d0003da0:	686c      	ldr	r4, [r5, #4]
d0003da2:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
d0003da6:	2b00      	cmp	r3, #0
d0003da8:	d0ef      	beq.n	d0003d8a <_fflush_r+0xa>
d0003daa:	6e62      	ldr	r2, [r4, #100]	; 0x64
d0003dac:	07d0      	lsls	r0, r2, #31
d0003dae:	d404      	bmi.n	d0003dba <_fflush_r+0x3a>
d0003db0:	0599      	lsls	r1, r3, #22
d0003db2:	d402      	bmi.n	d0003dba <_fflush_r+0x3a>
d0003db4:	6da0      	ldr	r0, [r4, #88]	; 0x58
d0003db6:	f000 f915 	bl	d0003fe4 <__retarget_lock_acquire_recursive>
d0003dba:	4628      	mov	r0, r5
d0003dbc:	4621      	mov	r1, r4
d0003dbe:	f7ff ff59 	bl	d0003c74 <__sflush_r>
d0003dc2:	6e63      	ldr	r3, [r4, #100]	; 0x64
d0003dc4:	07da      	lsls	r2, r3, #31
d0003dc6:	4605      	mov	r5, r0
d0003dc8:	d4e0      	bmi.n	d0003d8c <_fflush_r+0xc>
d0003dca:	89a3      	ldrh	r3, [r4, #12]
d0003dcc:	059b      	lsls	r3, r3, #22
d0003dce:	d4dd      	bmi.n	d0003d8c <_fflush_r+0xc>
d0003dd0:	6da0      	ldr	r0, [r4, #88]	; 0x58
d0003dd2:	f000 f908 	bl	d0003fe6 <__retarget_lock_release_recursive>
d0003dd6:	e7d9      	b.n	d0003d8c <_fflush_r+0xc>
d0003dd8:	4b05      	ldr	r3, [pc, #20]	; (d0003df0 <_fflush_r+0x70>)
d0003dda:	429c      	cmp	r4, r3
d0003ddc:	d101      	bne.n	d0003de2 <_fflush_r+0x62>
d0003dde:	68ac      	ldr	r4, [r5, #8]
d0003de0:	e7df      	b.n	d0003da2 <_fflush_r+0x22>
d0003de2:	4b04      	ldr	r3, [pc, #16]	; (d0003df4 <_fflush_r+0x74>)
d0003de4:	429c      	cmp	r4, r3
d0003de6:	bf08      	it	eq
d0003de8:	68ec      	ldreq	r4, [r5, #12]
d0003dea:	e7da      	b.n	d0003da2 <_fflush_r+0x22>
d0003dec:	d00051a4 	.word	0xd00051a4
d0003df0:	d00051c4 	.word	0xd00051c4
d0003df4:	d0005184 	.word	0xd0005184

d0003df8 <std>:
d0003df8:	2300      	movs	r3, #0
d0003dfa:	b510      	push	{r4, lr}
d0003dfc:	4604      	mov	r4, r0
d0003dfe:	e9c0 3300 	strd	r3, r3, [r0]
d0003e02:	e9c0 3304 	strd	r3, r3, [r0, #16]
d0003e06:	6083      	str	r3, [r0, #8]
d0003e08:	8181      	strh	r1, [r0, #12]
d0003e0a:	6643      	str	r3, [r0, #100]	; 0x64
d0003e0c:	81c2      	strh	r2, [r0, #14]
d0003e0e:	6183      	str	r3, [r0, #24]
d0003e10:	4619      	mov	r1, r3
d0003e12:	2208      	movs	r2, #8
d0003e14:	305c      	adds	r0, #92	; 0x5c
d0003e16:	f7ff fb9f 	bl	d0003558 <memset>
d0003e1a:	4b05      	ldr	r3, [pc, #20]	; (d0003e30 <std+0x38>)
d0003e1c:	6263      	str	r3, [r4, #36]	; 0x24
d0003e1e:	4b05      	ldr	r3, [pc, #20]	; (d0003e34 <std+0x3c>)
d0003e20:	62a3      	str	r3, [r4, #40]	; 0x28
d0003e22:	4b05      	ldr	r3, [pc, #20]	; (d0003e38 <std+0x40>)
d0003e24:	62e3      	str	r3, [r4, #44]	; 0x2c
d0003e26:	4b05      	ldr	r3, [pc, #20]	; (d0003e3c <std+0x44>)
d0003e28:	6224      	str	r4, [r4, #32]
d0003e2a:	6323      	str	r3, [r4, #48]	; 0x30
d0003e2c:	bd10      	pop	{r4, pc}
d0003e2e:	bf00      	nop
d0003e30:	d000495d 	.word	0xd000495d
d0003e34:	d000497f 	.word	0xd000497f
d0003e38:	d00049b7 	.word	0xd00049b7
d0003e3c:	d00049db 	.word	0xd00049db

d0003e40 <_cleanup_r>:
d0003e40:	4901      	ldr	r1, [pc, #4]	; (d0003e48 <_cleanup_r+0x8>)
d0003e42:	f000 b8af 	b.w	d0003fa4 <_fwalk_reent>
d0003e46:	bf00      	nop
d0003e48:	d0003d81 	.word	0xd0003d81

d0003e4c <__sfmoreglue>:
d0003e4c:	b570      	push	{r4, r5, r6, lr}
d0003e4e:	1e4a      	subs	r2, r1, #1
d0003e50:	2568      	movs	r5, #104	; 0x68
d0003e52:	4355      	muls	r5, r2
d0003e54:	460e      	mov	r6, r1
d0003e56:	f105 0174 	add.w	r1, r5, #116	; 0x74
d0003e5a:	f7ff fbe5 	bl	d0003628 <_malloc_r>
d0003e5e:	4604      	mov	r4, r0
d0003e60:	b140      	cbz	r0, d0003e74 <__sfmoreglue+0x28>
d0003e62:	2100      	movs	r1, #0
d0003e64:	e9c0 1600 	strd	r1, r6, [r0]
d0003e68:	300c      	adds	r0, #12
d0003e6a:	60a0      	str	r0, [r4, #8]
d0003e6c:	f105 0268 	add.w	r2, r5, #104	; 0x68
d0003e70:	f7ff fb72 	bl	d0003558 <memset>
d0003e74:	4620      	mov	r0, r4
d0003e76:	bd70      	pop	{r4, r5, r6, pc}

d0003e78 <__sfp_lock_acquire>:
d0003e78:	4801      	ldr	r0, [pc, #4]	; (d0003e80 <__sfp_lock_acquire+0x8>)
d0003e7a:	f000 b8b3 	b.w	d0003fe4 <__retarget_lock_acquire_recursive>
d0003e7e:	bf00      	nop
d0003e80:	d0006fcc 	.word	0xd0006fcc

d0003e84 <__sfp_lock_release>:
d0003e84:	4801      	ldr	r0, [pc, #4]	; (d0003e8c <__sfp_lock_release+0x8>)
d0003e86:	f000 b8ae 	b.w	d0003fe6 <__retarget_lock_release_recursive>
d0003e8a:	bf00      	nop
d0003e8c:	d0006fcc 	.word	0xd0006fcc

d0003e90 <__sinit_lock_acquire>:
d0003e90:	4801      	ldr	r0, [pc, #4]	; (d0003e98 <__sinit_lock_acquire+0x8>)
d0003e92:	f000 b8a7 	b.w	d0003fe4 <__retarget_lock_acquire_recursive>
d0003e96:	bf00      	nop
d0003e98:	d0006fc7 	.word	0xd0006fc7

d0003e9c <__sinit_lock_release>:
d0003e9c:	4801      	ldr	r0, [pc, #4]	; (d0003ea4 <__sinit_lock_release+0x8>)
d0003e9e:	f000 b8a2 	b.w	d0003fe6 <__retarget_lock_release_recursive>
d0003ea2:	bf00      	nop
d0003ea4:	d0006fc7 	.word	0xd0006fc7

d0003ea8 <__sinit>:
d0003ea8:	b510      	push	{r4, lr}
d0003eaa:	4604      	mov	r4, r0
d0003eac:	f7ff fff0 	bl	d0003e90 <__sinit_lock_acquire>
d0003eb0:	69a3      	ldr	r3, [r4, #24]
d0003eb2:	b11b      	cbz	r3, d0003ebc <__sinit+0x14>
d0003eb4:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
d0003eb8:	f7ff bff0 	b.w	d0003e9c <__sinit_lock_release>
d0003ebc:	e9c4 3312 	strd	r3, r3, [r4, #72]	; 0x48
d0003ec0:	6523      	str	r3, [r4, #80]	; 0x50
d0003ec2:	4b13      	ldr	r3, [pc, #76]	; (d0003f10 <__sinit+0x68>)
d0003ec4:	4a13      	ldr	r2, [pc, #76]	; (d0003f14 <__sinit+0x6c>)
d0003ec6:	681b      	ldr	r3, [r3, #0]
d0003ec8:	62a2      	str	r2, [r4, #40]	; 0x28
d0003eca:	42a3      	cmp	r3, r4
d0003ecc:	bf04      	itt	eq
d0003ece:	2301      	moveq	r3, #1
d0003ed0:	61a3      	streq	r3, [r4, #24]
d0003ed2:	4620      	mov	r0, r4
d0003ed4:	f000 f820 	bl	d0003f18 <__sfp>
d0003ed8:	6060      	str	r0, [r4, #4]
d0003eda:	4620      	mov	r0, r4
d0003edc:	f000 f81c 	bl	d0003f18 <__sfp>
d0003ee0:	60a0      	str	r0, [r4, #8]
d0003ee2:	4620      	mov	r0, r4
d0003ee4:	f000 f818 	bl	d0003f18 <__sfp>
d0003ee8:	2200      	movs	r2, #0
d0003eea:	60e0      	str	r0, [r4, #12]
d0003eec:	2104      	movs	r1, #4
d0003eee:	6860      	ldr	r0, [r4, #4]
d0003ef0:	f7ff ff82 	bl	d0003df8 <std>
d0003ef4:	68a0      	ldr	r0, [r4, #8]
d0003ef6:	2201      	movs	r2, #1
d0003ef8:	2109      	movs	r1, #9
d0003efa:	f7ff ff7d 	bl	d0003df8 <std>
d0003efe:	68e0      	ldr	r0, [r4, #12]
d0003f00:	2202      	movs	r2, #2
d0003f02:	2112      	movs	r1, #18
d0003f04:	f7ff ff78 	bl	d0003df8 <std>
d0003f08:	2301      	movs	r3, #1
d0003f0a:	61a3      	str	r3, [r4, #24]
d0003f0c:	e7d2      	b.n	d0003eb4 <__sinit+0xc>
d0003f0e:	bf00      	nop
d0003f10:	d0005180 	.word	0xd0005180
d0003f14:	d0003e41 	.word	0xd0003e41

d0003f18 <__sfp>:
d0003f18:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d0003f1a:	4607      	mov	r7, r0
d0003f1c:	f7ff ffac 	bl	d0003e78 <__sfp_lock_acquire>
d0003f20:	4b1e      	ldr	r3, [pc, #120]	; (d0003f9c <__sfp+0x84>)
d0003f22:	681e      	ldr	r6, [r3, #0]
d0003f24:	69b3      	ldr	r3, [r6, #24]
d0003f26:	b913      	cbnz	r3, d0003f2e <__sfp+0x16>
d0003f28:	4630      	mov	r0, r6
d0003f2a:	f7ff ffbd 	bl	d0003ea8 <__sinit>
d0003f2e:	3648      	adds	r6, #72	; 0x48
d0003f30:	e9d6 3401 	ldrd	r3, r4, [r6, #4]
d0003f34:	3b01      	subs	r3, #1
d0003f36:	d503      	bpl.n	d0003f40 <__sfp+0x28>
d0003f38:	6833      	ldr	r3, [r6, #0]
d0003f3a:	b30b      	cbz	r3, d0003f80 <__sfp+0x68>
d0003f3c:	6836      	ldr	r6, [r6, #0]
d0003f3e:	e7f7      	b.n	d0003f30 <__sfp+0x18>
d0003f40:	f9b4 500c 	ldrsh.w	r5, [r4, #12]
d0003f44:	b9d5      	cbnz	r5, d0003f7c <__sfp+0x64>
d0003f46:	4b16      	ldr	r3, [pc, #88]	; (d0003fa0 <__sfp+0x88>)
d0003f48:	60e3      	str	r3, [r4, #12]
d0003f4a:	f104 0058 	add.w	r0, r4, #88	; 0x58
d0003f4e:	6665      	str	r5, [r4, #100]	; 0x64
d0003f50:	f000 f847 	bl	d0003fe2 <__retarget_lock_init_recursive>
d0003f54:	f7ff ff96 	bl	d0003e84 <__sfp_lock_release>
d0003f58:	e9c4 5501 	strd	r5, r5, [r4, #4]
d0003f5c:	e9c4 5504 	strd	r5, r5, [r4, #16]
d0003f60:	6025      	str	r5, [r4, #0]
d0003f62:	61a5      	str	r5, [r4, #24]
d0003f64:	2208      	movs	r2, #8
d0003f66:	4629      	mov	r1, r5
d0003f68:	f104 005c 	add.w	r0, r4, #92	; 0x5c
d0003f6c:	f7ff faf4 	bl	d0003558 <memset>
d0003f70:	e9c4 550d 	strd	r5, r5, [r4, #52]	; 0x34
d0003f74:	e9c4 5512 	strd	r5, r5, [r4, #72]	; 0x48
d0003f78:	4620      	mov	r0, r4
d0003f7a:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d0003f7c:	3468      	adds	r4, #104	; 0x68
d0003f7e:	e7d9      	b.n	d0003f34 <__sfp+0x1c>
d0003f80:	2104      	movs	r1, #4
d0003f82:	4638      	mov	r0, r7
d0003f84:	f7ff ff62 	bl	d0003e4c <__sfmoreglue>
d0003f88:	4604      	mov	r4, r0
d0003f8a:	6030      	str	r0, [r6, #0]
d0003f8c:	2800      	cmp	r0, #0
d0003f8e:	d1d5      	bne.n	d0003f3c <__sfp+0x24>
d0003f90:	f7ff ff78 	bl	d0003e84 <__sfp_lock_release>
d0003f94:	230c      	movs	r3, #12
d0003f96:	603b      	str	r3, [r7, #0]
d0003f98:	e7ee      	b.n	d0003f78 <__sfp+0x60>
d0003f9a:	bf00      	nop
d0003f9c:	d0005180 	.word	0xd0005180
d0003fa0:	ffff0001 	.word	0xffff0001

d0003fa4 <_fwalk_reent>:
d0003fa4:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
d0003fa8:	4606      	mov	r6, r0
d0003faa:	4688      	mov	r8, r1
d0003fac:	f100 0448 	add.w	r4, r0, #72	; 0x48
d0003fb0:	2700      	movs	r7, #0
d0003fb2:	e9d4 9501 	ldrd	r9, r5, [r4, #4]
d0003fb6:	f1b9 0901 	subs.w	r9, r9, #1
d0003fba:	d505      	bpl.n	d0003fc8 <_fwalk_reent+0x24>
d0003fbc:	6824      	ldr	r4, [r4, #0]
d0003fbe:	2c00      	cmp	r4, #0
d0003fc0:	d1f7      	bne.n	d0003fb2 <_fwalk_reent+0xe>
d0003fc2:	4638      	mov	r0, r7
d0003fc4:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
d0003fc8:	89ab      	ldrh	r3, [r5, #12]
d0003fca:	2b01      	cmp	r3, #1
d0003fcc:	d907      	bls.n	d0003fde <_fwalk_reent+0x3a>
d0003fce:	f9b5 300e 	ldrsh.w	r3, [r5, #14]
d0003fd2:	3301      	adds	r3, #1
d0003fd4:	d003      	beq.n	d0003fde <_fwalk_reent+0x3a>
d0003fd6:	4629      	mov	r1, r5
d0003fd8:	4630      	mov	r0, r6
d0003fda:	47c0      	blx	r8
d0003fdc:	4307      	orrs	r7, r0
d0003fde:	3568      	adds	r5, #104	; 0x68
d0003fe0:	e7e9      	b.n	d0003fb6 <_fwalk_reent+0x12>

d0003fe2 <__retarget_lock_init_recursive>:
d0003fe2:	4770      	bx	lr

d0003fe4 <__retarget_lock_acquire_recursive>:
d0003fe4:	4770      	bx	lr

d0003fe6 <__retarget_lock_release_recursive>:
d0003fe6:	4770      	bx	lr

d0003fe8 <__swhatbuf_r>:
d0003fe8:	b570      	push	{r4, r5, r6, lr}
d0003fea:	460e      	mov	r6, r1
d0003fec:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d0003ff0:	2900      	cmp	r1, #0
d0003ff2:	b096      	sub	sp, #88	; 0x58
d0003ff4:	4614      	mov	r4, r2
d0003ff6:	461d      	mov	r5, r3
d0003ff8:	da07      	bge.n	d000400a <__swhatbuf_r+0x22>
d0003ffa:	2300      	movs	r3, #0
d0003ffc:	602b      	str	r3, [r5, #0]
d0003ffe:	89b3      	ldrh	r3, [r6, #12]
d0004000:	061a      	lsls	r2, r3, #24
d0004002:	d410      	bmi.n	d0004026 <__swhatbuf_r+0x3e>
d0004004:	f44f 6380 	mov.w	r3, #1024	; 0x400
d0004008:	e00e      	b.n	d0004028 <__swhatbuf_r+0x40>
d000400a:	466a      	mov	r2, sp
d000400c:	f000 fdc6 	bl	d0004b9c <_fstat_r>
d0004010:	2800      	cmp	r0, #0
d0004012:	dbf2      	blt.n	d0003ffa <__swhatbuf_r+0x12>
d0004014:	9a01      	ldr	r2, [sp, #4]
d0004016:	f402 4270 	and.w	r2, r2, #61440	; 0xf000
d000401a:	f5a2 5300 	sub.w	r3, r2, #8192	; 0x2000
d000401e:	425a      	negs	r2, r3
d0004020:	415a      	adcs	r2, r3
d0004022:	602a      	str	r2, [r5, #0]
d0004024:	e7ee      	b.n	d0004004 <__swhatbuf_r+0x1c>
d0004026:	2340      	movs	r3, #64	; 0x40
d0004028:	2000      	movs	r0, #0
d000402a:	6023      	str	r3, [r4, #0]
d000402c:	b016      	add	sp, #88	; 0x58
d000402e:	bd70      	pop	{r4, r5, r6, pc}

d0004030 <__smakebuf_r>:
d0004030:	898b      	ldrh	r3, [r1, #12]
d0004032:	b573      	push	{r0, r1, r4, r5, r6, lr}
d0004034:	079d      	lsls	r5, r3, #30
d0004036:	4606      	mov	r6, r0
d0004038:	460c      	mov	r4, r1
d000403a:	d507      	bpl.n	d000404c <__smakebuf_r+0x1c>
d000403c:	f104 0347 	add.w	r3, r4, #71	; 0x47
d0004040:	6023      	str	r3, [r4, #0]
d0004042:	6123      	str	r3, [r4, #16]
d0004044:	2301      	movs	r3, #1
d0004046:	6163      	str	r3, [r4, #20]
d0004048:	b002      	add	sp, #8
d000404a:	bd70      	pop	{r4, r5, r6, pc}
d000404c:	ab01      	add	r3, sp, #4
d000404e:	466a      	mov	r2, sp
d0004050:	f7ff ffca 	bl	d0003fe8 <__swhatbuf_r>
d0004054:	9900      	ldr	r1, [sp, #0]
d0004056:	4605      	mov	r5, r0
d0004058:	4630      	mov	r0, r6
d000405a:	f7ff fae5 	bl	d0003628 <_malloc_r>
d000405e:	b948      	cbnz	r0, d0004074 <__smakebuf_r+0x44>
d0004060:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
d0004064:	059a      	lsls	r2, r3, #22
d0004066:	d4ef      	bmi.n	d0004048 <__smakebuf_r+0x18>
d0004068:	f023 0303 	bic.w	r3, r3, #3
d000406c:	f043 0302 	orr.w	r3, r3, #2
d0004070:	81a3      	strh	r3, [r4, #12]
d0004072:	e7e3      	b.n	d000403c <__smakebuf_r+0xc>
d0004074:	4b0d      	ldr	r3, [pc, #52]	; (d00040ac <__smakebuf_r+0x7c>)
d0004076:	62b3      	str	r3, [r6, #40]	; 0x28
d0004078:	89a3      	ldrh	r3, [r4, #12]
d000407a:	6020      	str	r0, [r4, #0]
d000407c:	f043 0380 	orr.w	r3, r3, #128	; 0x80
d0004080:	81a3      	strh	r3, [r4, #12]
d0004082:	9b00      	ldr	r3, [sp, #0]
d0004084:	6163      	str	r3, [r4, #20]
d0004086:	9b01      	ldr	r3, [sp, #4]
d0004088:	6120      	str	r0, [r4, #16]
d000408a:	b15b      	cbz	r3, d00040a4 <__smakebuf_r+0x74>
d000408c:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
d0004090:	4630      	mov	r0, r6
d0004092:	f000 fd95 	bl	d0004bc0 <_isatty_r>
d0004096:	b128      	cbz	r0, d00040a4 <__smakebuf_r+0x74>
d0004098:	89a3      	ldrh	r3, [r4, #12]
d000409a:	f023 0303 	bic.w	r3, r3, #3
d000409e:	f043 0301 	orr.w	r3, r3, #1
d00040a2:	81a3      	strh	r3, [r4, #12]
d00040a4:	89a0      	ldrh	r0, [r4, #12]
d00040a6:	4305      	orrs	r5, r0
d00040a8:	81a5      	strh	r5, [r4, #12]
d00040aa:	e7cd      	b.n	d0004048 <__smakebuf_r+0x18>
d00040ac:	d0003e41 	.word	0xd0003e41

d00040b0 <__malloc_lock>:
d00040b0:	4801      	ldr	r0, [pc, #4]	; (d00040b8 <__malloc_lock+0x8>)
d00040b2:	f7ff bf97 	b.w	d0003fe4 <__retarget_lock_acquire_recursive>
d00040b6:	bf00      	nop
d00040b8:	d0006fc8 	.word	0xd0006fc8

d00040bc <__malloc_unlock>:
d00040bc:	4801      	ldr	r0, [pc, #4]	; (d00040c4 <__malloc_unlock+0x8>)
d00040be:	f7ff bf92 	b.w	d0003fe6 <__retarget_lock_release_recursive>
d00040c2:	bf00      	nop
d00040c4:	d0006fc8 	.word	0xd0006fc8

d00040c8 <__ssputs_r>:
d00040c8:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
d00040cc:	688e      	ldr	r6, [r1, #8]
d00040ce:	429e      	cmp	r6, r3
d00040d0:	4682      	mov	sl, r0
d00040d2:	460c      	mov	r4, r1
d00040d4:	4690      	mov	r8, r2
d00040d6:	461f      	mov	r7, r3
d00040d8:	d838      	bhi.n	d000414c <__ssputs_r+0x84>
d00040da:	898a      	ldrh	r2, [r1, #12]
d00040dc:	f412 6f90 	tst.w	r2, #1152	; 0x480
d00040e0:	d032      	beq.n	d0004148 <__ssputs_r+0x80>
d00040e2:	6825      	ldr	r5, [r4, #0]
d00040e4:	6909      	ldr	r1, [r1, #16]
d00040e6:	eba5 0901 	sub.w	r9, r5, r1
d00040ea:	6965      	ldr	r5, [r4, #20]
d00040ec:	eb05 0545 	add.w	r5, r5, r5, lsl #1
d00040f0:	eb05 75d5 	add.w	r5, r5, r5, lsr #31
d00040f4:	3301      	adds	r3, #1
d00040f6:	444b      	add	r3, r9
d00040f8:	106d      	asrs	r5, r5, #1
d00040fa:	429d      	cmp	r5, r3
d00040fc:	bf38      	it	cc
d00040fe:	461d      	movcc	r5, r3
d0004100:	0553      	lsls	r3, r2, #21
d0004102:	d531      	bpl.n	d0004168 <__ssputs_r+0xa0>
d0004104:	4629      	mov	r1, r5
d0004106:	f7ff fa8f 	bl	d0003628 <_malloc_r>
d000410a:	4606      	mov	r6, r0
d000410c:	b950      	cbnz	r0, d0004124 <__ssputs_r+0x5c>
d000410e:	230c      	movs	r3, #12
d0004110:	f8ca 3000 	str.w	r3, [sl]
d0004114:	89a3      	ldrh	r3, [r4, #12]
d0004116:	f043 0340 	orr.w	r3, r3, #64	; 0x40
d000411a:	81a3      	strh	r3, [r4, #12]
d000411c:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d0004120:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
d0004124:	6921      	ldr	r1, [r4, #16]
d0004126:	464a      	mov	r2, r9
d0004128:	f7ff fa08 	bl	d000353c <memcpy>
d000412c:	89a3      	ldrh	r3, [r4, #12]
d000412e:	f423 6390 	bic.w	r3, r3, #1152	; 0x480
d0004132:	f043 0380 	orr.w	r3, r3, #128	; 0x80
d0004136:	81a3      	strh	r3, [r4, #12]
d0004138:	6126      	str	r6, [r4, #16]
d000413a:	6165      	str	r5, [r4, #20]
d000413c:	444e      	add	r6, r9
d000413e:	eba5 0509 	sub.w	r5, r5, r9
d0004142:	6026      	str	r6, [r4, #0]
d0004144:	60a5      	str	r5, [r4, #8]
d0004146:	463e      	mov	r6, r7
d0004148:	42be      	cmp	r6, r7
d000414a:	d900      	bls.n	d000414e <__ssputs_r+0x86>
d000414c:	463e      	mov	r6, r7
d000414e:	4632      	mov	r2, r6
d0004150:	6820      	ldr	r0, [r4, #0]
d0004152:	4641      	mov	r1, r8
d0004154:	f000 fdac 	bl	d0004cb0 <memmove>
d0004158:	68a3      	ldr	r3, [r4, #8]
d000415a:	6822      	ldr	r2, [r4, #0]
d000415c:	1b9b      	subs	r3, r3, r6
d000415e:	4432      	add	r2, r6
d0004160:	60a3      	str	r3, [r4, #8]
d0004162:	6022      	str	r2, [r4, #0]
d0004164:	2000      	movs	r0, #0
d0004166:	e7db      	b.n	d0004120 <__ssputs_r+0x58>
d0004168:	462a      	mov	r2, r5
d000416a:	f000 fdbb 	bl	d0004ce4 <_realloc_r>
d000416e:	4606      	mov	r6, r0
d0004170:	2800      	cmp	r0, #0
d0004172:	d1e1      	bne.n	d0004138 <__ssputs_r+0x70>
d0004174:	6921      	ldr	r1, [r4, #16]
d0004176:	4650      	mov	r0, sl
d0004178:	f7ff fa06 	bl	d0003588 <_free_r>
d000417c:	e7c7      	b.n	d000410e <__ssputs_r+0x46>
	...

d0004180 <_svfiprintf_r>:
d0004180:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0004184:	4698      	mov	r8, r3
d0004186:	898b      	ldrh	r3, [r1, #12]
d0004188:	061b      	lsls	r3, r3, #24
d000418a:	b09d      	sub	sp, #116	; 0x74
d000418c:	4607      	mov	r7, r0
d000418e:	460d      	mov	r5, r1
d0004190:	4614      	mov	r4, r2
d0004192:	d50e      	bpl.n	d00041b2 <_svfiprintf_r+0x32>
d0004194:	690b      	ldr	r3, [r1, #16]
d0004196:	b963      	cbnz	r3, d00041b2 <_svfiprintf_r+0x32>
d0004198:	2140      	movs	r1, #64	; 0x40
d000419a:	f7ff fa45 	bl	d0003628 <_malloc_r>
d000419e:	6028      	str	r0, [r5, #0]
d00041a0:	6128      	str	r0, [r5, #16]
d00041a2:	b920      	cbnz	r0, d00041ae <_svfiprintf_r+0x2e>
d00041a4:	230c      	movs	r3, #12
d00041a6:	603b      	str	r3, [r7, #0]
d00041a8:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d00041ac:	e0d1      	b.n	d0004352 <_svfiprintf_r+0x1d2>
d00041ae:	2340      	movs	r3, #64	; 0x40
d00041b0:	616b      	str	r3, [r5, #20]
d00041b2:	2300      	movs	r3, #0
d00041b4:	9309      	str	r3, [sp, #36]	; 0x24
d00041b6:	2320      	movs	r3, #32
d00041b8:	f88d 3029 	strb.w	r3, [sp, #41]	; 0x29
d00041bc:	f8cd 800c 	str.w	r8, [sp, #12]
d00041c0:	2330      	movs	r3, #48	; 0x30
d00041c2:	f8df 81a8 	ldr.w	r8, [pc, #424]	; d000436c <_svfiprintf_r+0x1ec>
d00041c6:	f88d 302a 	strb.w	r3, [sp, #42]	; 0x2a
d00041ca:	f04f 0901 	mov.w	r9, #1
d00041ce:	4623      	mov	r3, r4
d00041d0:	469a      	mov	sl, r3
d00041d2:	f813 2b01 	ldrb.w	r2, [r3], #1
d00041d6:	b10a      	cbz	r2, d00041dc <_svfiprintf_r+0x5c>
d00041d8:	2a25      	cmp	r2, #37	; 0x25
d00041da:	d1f9      	bne.n	d00041d0 <_svfiprintf_r+0x50>
d00041dc:	ebba 0b04 	subs.w	fp, sl, r4
d00041e0:	d00b      	beq.n	d00041fa <_svfiprintf_r+0x7a>
d00041e2:	465b      	mov	r3, fp
d00041e4:	4622      	mov	r2, r4
d00041e6:	4629      	mov	r1, r5
d00041e8:	4638      	mov	r0, r7
d00041ea:	f7ff ff6d 	bl	d00040c8 <__ssputs_r>
d00041ee:	3001      	adds	r0, #1
d00041f0:	f000 80aa 	beq.w	d0004348 <_svfiprintf_r+0x1c8>
d00041f4:	9a09      	ldr	r2, [sp, #36]	; 0x24
d00041f6:	445a      	add	r2, fp
d00041f8:	9209      	str	r2, [sp, #36]	; 0x24
d00041fa:	f89a 3000 	ldrb.w	r3, [sl]
d00041fe:	2b00      	cmp	r3, #0
d0004200:	f000 80a2 	beq.w	d0004348 <_svfiprintf_r+0x1c8>
d0004204:	2300      	movs	r3, #0
d0004206:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
d000420a:	e9cd 2305 	strd	r2, r3, [sp, #20]
d000420e:	f10a 0a01 	add.w	sl, sl, #1
d0004212:	9304      	str	r3, [sp, #16]
d0004214:	9307      	str	r3, [sp, #28]
d0004216:	f88d 3053 	strb.w	r3, [sp, #83]	; 0x53
d000421a:	931a      	str	r3, [sp, #104]	; 0x68
d000421c:	4654      	mov	r4, sl
d000421e:	2205      	movs	r2, #5
d0004220:	f814 1b01 	ldrb.w	r1, [r4], #1
d0004224:	4851      	ldr	r0, [pc, #324]	; (d000436c <_svfiprintf_r+0x1ec>)
d0004226:	f000 fcf3 	bl	d0004c10 <memchr>
d000422a:	9a04      	ldr	r2, [sp, #16]
d000422c:	b9d8      	cbnz	r0, d0004266 <_svfiprintf_r+0xe6>
d000422e:	06d0      	lsls	r0, r2, #27
d0004230:	bf44      	itt	mi
d0004232:	2320      	movmi	r3, #32
d0004234:	f88d 3053 	strbmi.w	r3, [sp, #83]	; 0x53
d0004238:	0711      	lsls	r1, r2, #28
d000423a:	bf44      	itt	mi
d000423c:	232b      	movmi	r3, #43	; 0x2b
d000423e:	f88d 3053 	strbmi.w	r3, [sp, #83]	; 0x53
d0004242:	f89a 3000 	ldrb.w	r3, [sl]
d0004246:	2b2a      	cmp	r3, #42	; 0x2a
d0004248:	d015      	beq.n	d0004276 <_svfiprintf_r+0xf6>
d000424a:	9a07      	ldr	r2, [sp, #28]
d000424c:	4654      	mov	r4, sl
d000424e:	2000      	movs	r0, #0
d0004250:	f04f 0c0a 	mov.w	ip, #10
d0004254:	4621      	mov	r1, r4
d0004256:	f811 3b01 	ldrb.w	r3, [r1], #1
d000425a:	3b30      	subs	r3, #48	; 0x30
d000425c:	2b09      	cmp	r3, #9
d000425e:	d94e      	bls.n	d00042fe <_svfiprintf_r+0x17e>
d0004260:	b1b0      	cbz	r0, d0004290 <_svfiprintf_r+0x110>
d0004262:	9207      	str	r2, [sp, #28]
d0004264:	e014      	b.n	d0004290 <_svfiprintf_r+0x110>
d0004266:	eba0 0308 	sub.w	r3, r0, r8
d000426a:	fa09 f303 	lsl.w	r3, r9, r3
d000426e:	4313      	orrs	r3, r2
d0004270:	9304      	str	r3, [sp, #16]
d0004272:	46a2      	mov	sl, r4
d0004274:	e7d2      	b.n	d000421c <_svfiprintf_r+0x9c>
d0004276:	9b03      	ldr	r3, [sp, #12]
d0004278:	1d19      	adds	r1, r3, #4
d000427a:	681b      	ldr	r3, [r3, #0]
d000427c:	9103      	str	r1, [sp, #12]
d000427e:	2b00      	cmp	r3, #0
d0004280:	bfbb      	ittet	lt
d0004282:	425b      	neglt	r3, r3
d0004284:	f042 0202 	orrlt.w	r2, r2, #2
d0004288:	9307      	strge	r3, [sp, #28]
d000428a:	9307      	strlt	r3, [sp, #28]
d000428c:	bfb8      	it	lt
d000428e:	9204      	strlt	r2, [sp, #16]
d0004290:	7823      	ldrb	r3, [r4, #0]
d0004292:	2b2e      	cmp	r3, #46	; 0x2e
d0004294:	d10c      	bne.n	d00042b0 <_svfiprintf_r+0x130>
d0004296:	7863      	ldrb	r3, [r4, #1]
d0004298:	2b2a      	cmp	r3, #42	; 0x2a
d000429a:	d135      	bne.n	d0004308 <_svfiprintf_r+0x188>
d000429c:	9b03      	ldr	r3, [sp, #12]
d000429e:	1d1a      	adds	r2, r3, #4
d00042a0:	681b      	ldr	r3, [r3, #0]
d00042a2:	9203      	str	r2, [sp, #12]
d00042a4:	2b00      	cmp	r3, #0
d00042a6:	bfb8      	it	lt
d00042a8:	f04f 33ff 	movlt.w	r3, #4294967295	; 0xffffffff
d00042ac:	3402      	adds	r4, #2
d00042ae:	9305      	str	r3, [sp, #20]
d00042b0:	f8df a0c8 	ldr.w	sl, [pc, #200]	; d000437c <_svfiprintf_r+0x1fc>
d00042b4:	7821      	ldrb	r1, [r4, #0]
d00042b6:	2203      	movs	r2, #3
d00042b8:	4650      	mov	r0, sl
d00042ba:	f000 fca9 	bl	d0004c10 <memchr>
d00042be:	b140      	cbz	r0, d00042d2 <_svfiprintf_r+0x152>
d00042c0:	2340      	movs	r3, #64	; 0x40
d00042c2:	eba0 000a 	sub.w	r0, r0, sl
d00042c6:	fa03 f000 	lsl.w	r0, r3, r0
d00042ca:	9b04      	ldr	r3, [sp, #16]
d00042cc:	4303      	orrs	r3, r0
d00042ce:	3401      	adds	r4, #1
d00042d0:	9304      	str	r3, [sp, #16]
d00042d2:	f814 1b01 	ldrb.w	r1, [r4], #1
d00042d6:	4826      	ldr	r0, [pc, #152]	; (d0004370 <_svfiprintf_r+0x1f0>)
d00042d8:	f88d 1028 	strb.w	r1, [sp, #40]	; 0x28
d00042dc:	2206      	movs	r2, #6
d00042de:	f000 fc97 	bl	d0004c10 <memchr>
d00042e2:	2800      	cmp	r0, #0
d00042e4:	d038      	beq.n	d0004358 <_svfiprintf_r+0x1d8>
d00042e6:	4b23      	ldr	r3, [pc, #140]	; (d0004374 <_svfiprintf_r+0x1f4>)
d00042e8:	bb1b      	cbnz	r3, d0004332 <_svfiprintf_r+0x1b2>
d00042ea:	9b03      	ldr	r3, [sp, #12]
d00042ec:	3307      	adds	r3, #7
d00042ee:	f023 0307 	bic.w	r3, r3, #7
d00042f2:	3308      	adds	r3, #8
d00042f4:	9303      	str	r3, [sp, #12]
d00042f6:	9b09      	ldr	r3, [sp, #36]	; 0x24
d00042f8:	4433      	add	r3, r6
d00042fa:	9309      	str	r3, [sp, #36]	; 0x24
d00042fc:	e767      	b.n	d00041ce <_svfiprintf_r+0x4e>
d00042fe:	fb0c 3202 	mla	r2, ip, r2, r3
d0004302:	460c      	mov	r4, r1
d0004304:	2001      	movs	r0, #1
d0004306:	e7a5      	b.n	d0004254 <_svfiprintf_r+0xd4>
d0004308:	2300      	movs	r3, #0
d000430a:	3401      	adds	r4, #1
d000430c:	9305      	str	r3, [sp, #20]
d000430e:	4619      	mov	r1, r3
d0004310:	f04f 0c0a 	mov.w	ip, #10
d0004314:	4620      	mov	r0, r4
d0004316:	f810 2b01 	ldrb.w	r2, [r0], #1
d000431a:	3a30      	subs	r2, #48	; 0x30
d000431c:	2a09      	cmp	r2, #9
d000431e:	d903      	bls.n	d0004328 <_svfiprintf_r+0x1a8>
d0004320:	2b00      	cmp	r3, #0
d0004322:	d0c5      	beq.n	d00042b0 <_svfiprintf_r+0x130>
d0004324:	9105      	str	r1, [sp, #20]
d0004326:	e7c3      	b.n	d00042b0 <_svfiprintf_r+0x130>
d0004328:	fb0c 2101 	mla	r1, ip, r1, r2
d000432c:	4604      	mov	r4, r0
d000432e:	2301      	movs	r3, #1
d0004330:	e7f0      	b.n	d0004314 <_svfiprintf_r+0x194>
d0004332:	ab03      	add	r3, sp, #12
d0004334:	9300      	str	r3, [sp, #0]
d0004336:	462a      	mov	r2, r5
d0004338:	4b0f      	ldr	r3, [pc, #60]	; (d0004378 <_svfiprintf_r+0x1f8>)
d000433a:	a904      	add	r1, sp, #16
d000433c:	4638      	mov	r0, r7
d000433e:	f3af 8000 	nop.w
d0004342:	1c42      	adds	r2, r0, #1
d0004344:	4606      	mov	r6, r0
d0004346:	d1d6      	bne.n	d00042f6 <_svfiprintf_r+0x176>
d0004348:	89ab      	ldrh	r3, [r5, #12]
d000434a:	065b      	lsls	r3, r3, #25
d000434c:	f53f af2c 	bmi.w	d00041a8 <_svfiprintf_r+0x28>
d0004350:	9809      	ldr	r0, [sp, #36]	; 0x24
d0004352:	b01d      	add	sp, #116	; 0x74
d0004354:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0004358:	ab03      	add	r3, sp, #12
d000435a:	9300      	str	r3, [sp, #0]
d000435c:	462a      	mov	r2, r5
d000435e:	4b06      	ldr	r3, [pc, #24]	; (d0004378 <_svfiprintf_r+0x1f8>)
d0004360:	a904      	add	r1, sp, #16
d0004362:	4638      	mov	r0, r7
d0004364:	f000 f9d4 	bl	d0004710 <_printf_i>
d0004368:	e7eb      	b.n	d0004342 <_svfiprintf_r+0x1c2>
d000436a:	bf00      	nop
d000436c:	d00051e4 	.word	0xd00051e4
d0004370:	d00051ee 	.word	0xd00051ee
d0004374:	00000000 	.word	0x00000000
d0004378:	d00040c9 	.word	0xd00040c9
d000437c:	d00051ea 	.word	0xd00051ea

d0004380 <__sfputc_r>:
d0004380:	6893      	ldr	r3, [r2, #8]
d0004382:	3b01      	subs	r3, #1
d0004384:	2b00      	cmp	r3, #0
d0004386:	b410      	push	{r4}
d0004388:	6093      	str	r3, [r2, #8]
d000438a:	da08      	bge.n	d000439e <__sfputc_r+0x1e>
d000438c:	6994      	ldr	r4, [r2, #24]
d000438e:	42a3      	cmp	r3, r4
d0004390:	db01      	blt.n	d0004396 <__sfputc_r+0x16>
d0004392:	290a      	cmp	r1, #10
d0004394:	d103      	bne.n	d000439e <__sfputc_r+0x1e>
d0004396:	f85d 4b04 	ldr.w	r4, [sp], #4
d000439a:	f000 bb2f 	b.w	d00049fc <__swbuf_r>
d000439e:	6813      	ldr	r3, [r2, #0]
d00043a0:	1c58      	adds	r0, r3, #1
d00043a2:	6010      	str	r0, [r2, #0]
d00043a4:	7019      	strb	r1, [r3, #0]
d00043a6:	4608      	mov	r0, r1
d00043a8:	f85d 4b04 	ldr.w	r4, [sp], #4
d00043ac:	4770      	bx	lr

d00043ae <__sfputs_r>:
d00043ae:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d00043b0:	4606      	mov	r6, r0
d00043b2:	460f      	mov	r7, r1
d00043b4:	4614      	mov	r4, r2
d00043b6:	18d5      	adds	r5, r2, r3
d00043b8:	42ac      	cmp	r4, r5
d00043ba:	d101      	bne.n	d00043c0 <__sfputs_r+0x12>
d00043bc:	2000      	movs	r0, #0
d00043be:	e007      	b.n	d00043d0 <__sfputs_r+0x22>
d00043c0:	f814 1b01 	ldrb.w	r1, [r4], #1
d00043c4:	463a      	mov	r2, r7
d00043c6:	4630      	mov	r0, r6
d00043c8:	f7ff ffda 	bl	d0004380 <__sfputc_r>
d00043cc:	1c43      	adds	r3, r0, #1
d00043ce:	d1f3      	bne.n	d00043b8 <__sfputs_r+0xa>
d00043d0:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
	...

d00043d4 <_vfiprintf_r>:
d00043d4:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d00043d8:	460d      	mov	r5, r1
d00043da:	b09d      	sub	sp, #116	; 0x74
d00043dc:	4614      	mov	r4, r2
d00043de:	4698      	mov	r8, r3
d00043e0:	4606      	mov	r6, r0
d00043e2:	b118      	cbz	r0, d00043ec <_vfiprintf_r+0x18>
d00043e4:	6983      	ldr	r3, [r0, #24]
d00043e6:	b90b      	cbnz	r3, d00043ec <_vfiprintf_r+0x18>
d00043e8:	f7ff fd5e 	bl	d0003ea8 <__sinit>
d00043ec:	4b89      	ldr	r3, [pc, #548]	; (d0004614 <_vfiprintf_r+0x240>)
d00043ee:	429d      	cmp	r5, r3
d00043f0:	d11b      	bne.n	d000442a <_vfiprintf_r+0x56>
d00043f2:	6875      	ldr	r5, [r6, #4]
d00043f4:	6e6b      	ldr	r3, [r5, #100]	; 0x64
d00043f6:	07d9      	lsls	r1, r3, #31
d00043f8:	d405      	bmi.n	d0004406 <_vfiprintf_r+0x32>
d00043fa:	89ab      	ldrh	r3, [r5, #12]
d00043fc:	059a      	lsls	r2, r3, #22
d00043fe:	d402      	bmi.n	d0004406 <_vfiprintf_r+0x32>
d0004400:	6da8      	ldr	r0, [r5, #88]	; 0x58
d0004402:	f7ff fdef 	bl	d0003fe4 <__retarget_lock_acquire_recursive>
d0004406:	89ab      	ldrh	r3, [r5, #12]
d0004408:	071b      	lsls	r3, r3, #28
d000440a:	d501      	bpl.n	d0004410 <_vfiprintf_r+0x3c>
d000440c:	692b      	ldr	r3, [r5, #16]
d000440e:	b9eb      	cbnz	r3, d000444c <_vfiprintf_r+0x78>
d0004410:	4629      	mov	r1, r5
d0004412:	4630      	mov	r0, r6
d0004414:	f000 fb44 	bl	d0004aa0 <__swsetup_r>
d0004418:	b1c0      	cbz	r0, d000444c <_vfiprintf_r+0x78>
d000441a:	6e6b      	ldr	r3, [r5, #100]	; 0x64
d000441c:	07dc      	lsls	r4, r3, #31
d000441e:	d50e      	bpl.n	d000443e <_vfiprintf_r+0x6a>
d0004420:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d0004424:	b01d      	add	sp, #116	; 0x74
d0004426:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d000442a:	4b7b      	ldr	r3, [pc, #492]	; (d0004618 <_vfiprintf_r+0x244>)
d000442c:	429d      	cmp	r5, r3
d000442e:	d101      	bne.n	d0004434 <_vfiprintf_r+0x60>
d0004430:	68b5      	ldr	r5, [r6, #8]
d0004432:	e7df      	b.n	d00043f4 <_vfiprintf_r+0x20>
d0004434:	4b79      	ldr	r3, [pc, #484]	; (d000461c <_vfiprintf_r+0x248>)
d0004436:	429d      	cmp	r5, r3
d0004438:	bf08      	it	eq
d000443a:	68f5      	ldreq	r5, [r6, #12]
d000443c:	e7da      	b.n	d00043f4 <_vfiprintf_r+0x20>
d000443e:	89ab      	ldrh	r3, [r5, #12]
d0004440:	0598      	lsls	r0, r3, #22
d0004442:	d4ed      	bmi.n	d0004420 <_vfiprintf_r+0x4c>
d0004444:	6da8      	ldr	r0, [r5, #88]	; 0x58
d0004446:	f7ff fdce 	bl	d0003fe6 <__retarget_lock_release_recursive>
d000444a:	e7e9      	b.n	d0004420 <_vfiprintf_r+0x4c>
d000444c:	2300      	movs	r3, #0
d000444e:	9309      	str	r3, [sp, #36]	; 0x24
d0004450:	2320      	movs	r3, #32
d0004452:	f88d 3029 	strb.w	r3, [sp, #41]	; 0x29
d0004456:	f8cd 800c 	str.w	r8, [sp, #12]
d000445a:	2330      	movs	r3, #48	; 0x30
d000445c:	f8df 81c0 	ldr.w	r8, [pc, #448]	; d0004620 <_vfiprintf_r+0x24c>
d0004460:	f88d 302a 	strb.w	r3, [sp, #42]	; 0x2a
d0004464:	f04f 0901 	mov.w	r9, #1
d0004468:	4623      	mov	r3, r4
d000446a:	469a      	mov	sl, r3
d000446c:	f813 2b01 	ldrb.w	r2, [r3], #1
d0004470:	b10a      	cbz	r2, d0004476 <_vfiprintf_r+0xa2>
d0004472:	2a25      	cmp	r2, #37	; 0x25
d0004474:	d1f9      	bne.n	d000446a <_vfiprintf_r+0x96>
d0004476:	ebba 0b04 	subs.w	fp, sl, r4
d000447a:	d00b      	beq.n	d0004494 <_vfiprintf_r+0xc0>
d000447c:	465b      	mov	r3, fp
d000447e:	4622      	mov	r2, r4
d0004480:	4629      	mov	r1, r5
d0004482:	4630      	mov	r0, r6
d0004484:	f7ff ff93 	bl	d00043ae <__sfputs_r>
d0004488:	3001      	adds	r0, #1
d000448a:	f000 80aa 	beq.w	d00045e2 <_vfiprintf_r+0x20e>
d000448e:	9a09      	ldr	r2, [sp, #36]	; 0x24
d0004490:	445a      	add	r2, fp
d0004492:	9209      	str	r2, [sp, #36]	; 0x24
d0004494:	f89a 3000 	ldrb.w	r3, [sl]
d0004498:	2b00      	cmp	r3, #0
d000449a:	f000 80a2 	beq.w	d00045e2 <_vfiprintf_r+0x20e>
d000449e:	2300      	movs	r3, #0
d00044a0:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
d00044a4:	e9cd 2305 	strd	r2, r3, [sp, #20]
d00044a8:	f10a 0a01 	add.w	sl, sl, #1
d00044ac:	9304      	str	r3, [sp, #16]
d00044ae:	9307      	str	r3, [sp, #28]
d00044b0:	f88d 3053 	strb.w	r3, [sp, #83]	; 0x53
d00044b4:	931a      	str	r3, [sp, #104]	; 0x68
d00044b6:	4654      	mov	r4, sl
d00044b8:	2205      	movs	r2, #5
d00044ba:	f814 1b01 	ldrb.w	r1, [r4], #1
d00044be:	4858      	ldr	r0, [pc, #352]	; (d0004620 <_vfiprintf_r+0x24c>)
d00044c0:	f000 fba6 	bl	d0004c10 <memchr>
d00044c4:	9a04      	ldr	r2, [sp, #16]
d00044c6:	b9d8      	cbnz	r0, d0004500 <_vfiprintf_r+0x12c>
d00044c8:	06d1      	lsls	r1, r2, #27
d00044ca:	bf44      	itt	mi
d00044cc:	2320      	movmi	r3, #32
d00044ce:	f88d 3053 	strbmi.w	r3, [sp, #83]	; 0x53
d00044d2:	0713      	lsls	r3, r2, #28
d00044d4:	bf44      	itt	mi
d00044d6:	232b      	movmi	r3, #43	; 0x2b
d00044d8:	f88d 3053 	strbmi.w	r3, [sp, #83]	; 0x53
d00044dc:	f89a 3000 	ldrb.w	r3, [sl]
d00044e0:	2b2a      	cmp	r3, #42	; 0x2a
d00044e2:	d015      	beq.n	d0004510 <_vfiprintf_r+0x13c>
d00044e4:	9a07      	ldr	r2, [sp, #28]
d00044e6:	4654      	mov	r4, sl
d00044e8:	2000      	movs	r0, #0
d00044ea:	f04f 0c0a 	mov.w	ip, #10
d00044ee:	4621      	mov	r1, r4
d00044f0:	f811 3b01 	ldrb.w	r3, [r1], #1
d00044f4:	3b30      	subs	r3, #48	; 0x30
d00044f6:	2b09      	cmp	r3, #9
d00044f8:	d94e      	bls.n	d0004598 <_vfiprintf_r+0x1c4>
d00044fa:	b1b0      	cbz	r0, d000452a <_vfiprintf_r+0x156>
d00044fc:	9207      	str	r2, [sp, #28]
d00044fe:	e014      	b.n	d000452a <_vfiprintf_r+0x156>
d0004500:	eba0 0308 	sub.w	r3, r0, r8
d0004504:	fa09 f303 	lsl.w	r3, r9, r3
d0004508:	4313      	orrs	r3, r2
d000450a:	9304      	str	r3, [sp, #16]
d000450c:	46a2      	mov	sl, r4
d000450e:	e7d2      	b.n	d00044b6 <_vfiprintf_r+0xe2>
d0004510:	9b03      	ldr	r3, [sp, #12]
d0004512:	1d19      	adds	r1, r3, #4
d0004514:	681b      	ldr	r3, [r3, #0]
d0004516:	9103      	str	r1, [sp, #12]
d0004518:	2b00      	cmp	r3, #0
d000451a:	bfbb      	ittet	lt
d000451c:	425b      	neglt	r3, r3
d000451e:	f042 0202 	orrlt.w	r2, r2, #2
d0004522:	9307      	strge	r3, [sp, #28]
d0004524:	9307      	strlt	r3, [sp, #28]
d0004526:	bfb8      	it	lt
d0004528:	9204      	strlt	r2, [sp, #16]
d000452a:	7823      	ldrb	r3, [r4, #0]
d000452c:	2b2e      	cmp	r3, #46	; 0x2e
d000452e:	d10c      	bne.n	d000454a <_vfiprintf_r+0x176>
d0004530:	7863      	ldrb	r3, [r4, #1]
d0004532:	2b2a      	cmp	r3, #42	; 0x2a
d0004534:	d135      	bne.n	d00045a2 <_vfiprintf_r+0x1ce>
d0004536:	9b03      	ldr	r3, [sp, #12]
d0004538:	1d1a      	adds	r2, r3, #4
d000453a:	681b      	ldr	r3, [r3, #0]
d000453c:	9203      	str	r2, [sp, #12]
d000453e:	2b00      	cmp	r3, #0
d0004540:	bfb8      	it	lt
d0004542:	f04f 33ff 	movlt.w	r3, #4294967295	; 0xffffffff
d0004546:	3402      	adds	r4, #2
d0004548:	9305      	str	r3, [sp, #20]
d000454a:	f8df a0e4 	ldr.w	sl, [pc, #228]	; d0004630 <_vfiprintf_r+0x25c>
d000454e:	7821      	ldrb	r1, [r4, #0]
d0004550:	2203      	movs	r2, #3
d0004552:	4650      	mov	r0, sl
d0004554:	f000 fb5c 	bl	d0004c10 <memchr>
d0004558:	b140      	cbz	r0, d000456c <_vfiprintf_r+0x198>
d000455a:	2340      	movs	r3, #64	; 0x40
d000455c:	eba0 000a 	sub.w	r0, r0, sl
d0004560:	fa03 f000 	lsl.w	r0, r3, r0
d0004564:	9b04      	ldr	r3, [sp, #16]
d0004566:	4303      	orrs	r3, r0
d0004568:	3401      	adds	r4, #1
d000456a:	9304      	str	r3, [sp, #16]
d000456c:	f814 1b01 	ldrb.w	r1, [r4], #1
d0004570:	482c      	ldr	r0, [pc, #176]	; (d0004624 <_vfiprintf_r+0x250>)
d0004572:	f88d 1028 	strb.w	r1, [sp, #40]	; 0x28
d0004576:	2206      	movs	r2, #6
d0004578:	f000 fb4a 	bl	d0004c10 <memchr>
d000457c:	2800      	cmp	r0, #0
d000457e:	d03f      	beq.n	d0004600 <_vfiprintf_r+0x22c>
d0004580:	4b29      	ldr	r3, [pc, #164]	; (d0004628 <_vfiprintf_r+0x254>)
d0004582:	bb1b      	cbnz	r3, d00045cc <_vfiprintf_r+0x1f8>
d0004584:	9b03      	ldr	r3, [sp, #12]
d0004586:	3307      	adds	r3, #7
d0004588:	f023 0307 	bic.w	r3, r3, #7
d000458c:	3308      	adds	r3, #8
d000458e:	9303      	str	r3, [sp, #12]
d0004590:	9b09      	ldr	r3, [sp, #36]	; 0x24
d0004592:	443b      	add	r3, r7
d0004594:	9309      	str	r3, [sp, #36]	; 0x24
d0004596:	e767      	b.n	d0004468 <_vfiprintf_r+0x94>
d0004598:	fb0c 3202 	mla	r2, ip, r2, r3
d000459c:	460c      	mov	r4, r1
d000459e:	2001      	movs	r0, #1
d00045a0:	e7a5      	b.n	d00044ee <_vfiprintf_r+0x11a>
d00045a2:	2300      	movs	r3, #0
d00045a4:	3401      	adds	r4, #1
d00045a6:	9305      	str	r3, [sp, #20]
d00045a8:	4619      	mov	r1, r3
d00045aa:	f04f 0c0a 	mov.w	ip, #10
d00045ae:	4620      	mov	r0, r4
d00045b0:	f810 2b01 	ldrb.w	r2, [r0], #1
d00045b4:	3a30      	subs	r2, #48	; 0x30
d00045b6:	2a09      	cmp	r2, #9
d00045b8:	d903      	bls.n	d00045c2 <_vfiprintf_r+0x1ee>
d00045ba:	2b00      	cmp	r3, #0
d00045bc:	d0c5      	beq.n	d000454a <_vfiprintf_r+0x176>
d00045be:	9105      	str	r1, [sp, #20]
d00045c0:	e7c3      	b.n	d000454a <_vfiprintf_r+0x176>
d00045c2:	fb0c 2101 	mla	r1, ip, r1, r2
d00045c6:	4604      	mov	r4, r0
d00045c8:	2301      	movs	r3, #1
d00045ca:	e7f0      	b.n	d00045ae <_vfiprintf_r+0x1da>
d00045cc:	ab03      	add	r3, sp, #12
d00045ce:	9300      	str	r3, [sp, #0]
d00045d0:	462a      	mov	r2, r5
d00045d2:	4b16      	ldr	r3, [pc, #88]	; (d000462c <_vfiprintf_r+0x258>)
d00045d4:	a904      	add	r1, sp, #16
d00045d6:	4630      	mov	r0, r6
d00045d8:	f3af 8000 	nop.w
d00045dc:	4607      	mov	r7, r0
d00045de:	1c78      	adds	r0, r7, #1
d00045e0:	d1d6      	bne.n	d0004590 <_vfiprintf_r+0x1bc>
d00045e2:	6e6b      	ldr	r3, [r5, #100]	; 0x64
d00045e4:	07d9      	lsls	r1, r3, #31
d00045e6:	d405      	bmi.n	d00045f4 <_vfiprintf_r+0x220>
d00045e8:	89ab      	ldrh	r3, [r5, #12]
d00045ea:	059a      	lsls	r2, r3, #22
d00045ec:	d402      	bmi.n	d00045f4 <_vfiprintf_r+0x220>
d00045ee:	6da8      	ldr	r0, [r5, #88]	; 0x58
d00045f0:	f7ff fcf9 	bl	d0003fe6 <__retarget_lock_release_recursive>
d00045f4:	89ab      	ldrh	r3, [r5, #12]
d00045f6:	065b      	lsls	r3, r3, #25
d00045f8:	f53f af12 	bmi.w	d0004420 <_vfiprintf_r+0x4c>
d00045fc:	9809      	ldr	r0, [sp, #36]	; 0x24
d00045fe:	e711      	b.n	d0004424 <_vfiprintf_r+0x50>
d0004600:	ab03      	add	r3, sp, #12
d0004602:	9300      	str	r3, [sp, #0]
d0004604:	462a      	mov	r2, r5
d0004606:	4b09      	ldr	r3, [pc, #36]	; (d000462c <_vfiprintf_r+0x258>)
d0004608:	a904      	add	r1, sp, #16
d000460a:	4630      	mov	r0, r6
d000460c:	f000 f880 	bl	d0004710 <_printf_i>
d0004610:	e7e4      	b.n	d00045dc <_vfiprintf_r+0x208>
d0004612:	bf00      	nop
d0004614:	d00051a4 	.word	0xd00051a4
d0004618:	d00051c4 	.word	0xd00051c4
d000461c:	d0005184 	.word	0xd0005184
d0004620:	d00051e4 	.word	0xd00051e4
d0004624:	d00051ee 	.word	0xd00051ee
d0004628:	00000000 	.word	0x00000000
d000462c:	d00043af 	.word	0xd00043af
d0004630:	d00051ea 	.word	0xd00051ea

d0004634 <_printf_common>:
d0004634:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
d0004638:	4616      	mov	r6, r2
d000463a:	4699      	mov	r9, r3
d000463c:	688a      	ldr	r2, [r1, #8]
d000463e:	690b      	ldr	r3, [r1, #16]
d0004640:	f8dd 8020 	ldr.w	r8, [sp, #32]
d0004644:	4293      	cmp	r3, r2
d0004646:	bfb8      	it	lt
d0004648:	4613      	movlt	r3, r2
d000464a:	6033      	str	r3, [r6, #0]
d000464c:	f891 2043 	ldrb.w	r2, [r1, #67]	; 0x43
d0004650:	4607      	mov	r7, r0
d0004652:	460c      	mov	r4, r1
d0004654:	b10a      	cbz	r2, d000465a <_printf_common+0x26>
d0004656:	3301      	adds	r3, #1
d0004658:	6033      	str	r3, [r6, #0]
d000465a:	6823      	ldr	r3, [r4, #0]
d000465c:	0699      	lsls	r1, r3, #26
d000465e:	bf42      	ittt	mi
d0004660:	6833      	ldrmi	r3, [r6, #0]
d0004662:	3302      	addmi	r3, #2
d0004664:	6033      	strmi	r3, [r6, #0]
d0004666:	6825      	ldr	r5, [r4, #0]
d0004668:	f015 0506 	ands.w	r5, r5, #6
d000466c:	d106      	bne.n	d000467c <_printf_common+0x48>
d000466e:	f104 0a19 	add.w	sl, r4, #25
d0004672:	68e3      	ldr	r3, [r4, #12]
d0004674:	6832      	ldr	r2, [r6, #0]
d0004676:	1a9b      	subs	r3, r3, r2
d0004678:	42ab      	cmp	r3, r5
d000467a:	dc26      	bgt.n	d00046ca <_printf_common+0x96>
d000467c:	f894 2043 	ldrb.w	r2, [r4, #67]	; 0x43
d0004680:	1e13      	subs	r3, r2, #0
d0004682:	6822      	ldr	r2, [r4, #0]
d0004684:	bf18      	it	ne
d0004686:	2301      	movne	r3, #1
d0004688:	0692      	lsls	r2, r2, #26
d000468a:	d42b      	bmi.n	d00046e4 <_printf_common+0xb0>
d000468c:	f104 0243 	add.w	r2, r4, #67	; 0x43
d0004690:	4649      	mov	r1, r9
d0004692:	4638      	mov	r0, r7
d0004694:	47c0      	blx	r8
d0004696:	3001      	adds	r0, #1
d0004698:	d01e      	beq.n	d00046d8 <_printf_common+0xa4>
d000469a:	6823      	ldr	r3, [r4, #0]
d000469c:	68e5      	ldr	r5, [r4, #12]
d000469e:	6832      	ldr	r2, [r6, #0]
d00046a0:	f003 0306 	and.w	r3, r3, #6
d00046a4:	2b04      	cmp	r3, #4
d00046a6:	bf08      	it	eq
d00046a8:	1aad      	subeq	r5, r5, r2
d00046aa:	68a3      	ldr	r3, [r4, #8]
d00046ac:	6922      	ldr	r2, [r4, #16]
d00046ae:	bf0c      	ite	eq
d00046b0:	ea25 75e5 	biceq.w	r5, r5, r5, asr #31
d00046b4:	2500      	movne	r5, #0
d00046b6:	4293      	cmp	r3, r2
d00046b8:	bfc4      	itt	gt
d00046ba:	1a9b      	subgt	r3, r3, r2
d00046bc:	18ed      	addgt	r5, r5, r3
d00046be:	2600      	movs	r6, #0
d00046c0:	341a      	adds	r4, #26
d00046c2:	42b5      	cmp	r5, r6
d00046c4:	d11a      	bne.n	d00046fc <_printf_common+0xc8>
d00046c6:	2000      	movs	r0, #0
d00046c8:	e008      	b.n	d00046dc <_printf_common+0xa8>
d00046ca:	2301      	movs	r3, #1
d00046cc:	4652      	mov	r2, sl
d00046ce:	4649      	mov	r1, r9
d00046d0:	4638      	mov	r0, r7
d00046d2:	47c0      	blx	r8
d00046d4:	3001      	adds	r0, #1
d00046d6:	d103      	bne.n	d00046e0 <_printf_common+0xac>
d00046d8:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d00046dc:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
d00046e0:	3501      	adds	r5, #1
d00046e2:	e7c6      	b.n	d0004672 <_printf_common+0x3e>
d00046e4:	18e1      	adds	r1, r4, r3
d00046e6:	1c5a      	adds	r2, r3, #1
d00046e8:	2030      	movs	r0, #48	; 0x30
d00046ea:	f881 0043 	strb.w	r0, [r1, #67]	; 0x43
d00046ee:	4422      	add	r2, r4
d00046f0:	f894 1045 	ldrb.w	r1, [r4, #69]	; 0x45
d00046f4:	f882 1043 	strb.w	r1, [r2, #67]	; 0x43
d00046f8:	3302      	adds	r3, #2
d00046fa:	e7c7      	b.n	d000468c <_printf_common+0x58>
d00046fc:	2301      	movs	r3, #1
d00046fe:	4622      	mov	r2, r4
d0004700:	4649      	mov	r1, r9
d0004702:	4638      	mov	r0, r7
d0004704:	47c0      	blx	r8
d0004706:	3001      	adds	r0, #1
d0004708:	d0e6      	beq.n	d00046d8 <_printf_common+0xa4>
d000470a:	3601      	adds	r6, #1
d000470c:	e7d9      	b.n	d00046c2 <_printf_common+0x8e>
	...

d0004710 <_printf_i>:
d0004710:	e92d 47ff 	stmdb	sp!, {r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, lr}
d0004714:	460c      	mov	r4, r1
d0004716:	4691      	mov	r9, r2
d0004718:	7e27      	ldrb	r7, [r4, #24]
d000471a:	990c      	ldr	r1, [sp, #48]	; 0x30
d000471c:	2f78      	cmp	r7, #120	; 0x78
d000471e:	4680      	mov	r8, r0
d0004720:	469a      	mov	sl, r3
d0004722:	f104 0243 	add.w	r2, r4, #67	; 0x43
d0004726:	d807      	bhi.n	d0004738 <_printf_i+0x28>
d0004728:	2f62      	cmp	r7, #98	; 0x62
d000472a:	d80a      	bhi.n	d0004742 <_printf_i+0x32>
d000472c:	2f00      	cmp	r7, #0
d000472e:	f000 80d8 	beq.w	d00048e2 <_printf_i+0x1d2>
d0004732:	2f58      	cmp	r7, #88	; 0x58
d0004734:	f000 80a3 	beq.w	d000487e <_printf_i+0x16e>
d0004738:	f104 0642 	add.w	r6, r4, #66	; 0x42
d000473c:	f884 7042 	strb.w	r7, [r4, #66]	; 0x42
d0004740:	e03a      	b.n	d00047b8 <_printf_i+0xa8>
d0004742:	f1a7 0363 	sub.w	r3, r7, #99	; 0x63
d0004746:	2b15      	cmp	r3, #21
d0004748:	d8f6      	bhi.n	d0004738 <_printf_i+0x28>
d000474a:	a001      	add	r0, pc, #4	; (adr r0, d0004750 <_printf_i+0x40>)
d000474c:	f850 f023 	ldr.w	pc, [r0, r3, lsl #2]
d0004750:	d00047a9 	.word	0xd00047a9
d0004754:	d00047bd 	.word	0xd00047bd
d0004758:	d0004739 	.word	0xd0004739
d000475c:	d0004739 	.word	0xd0004739
d0004760:	d0004739 	.word	0xd0004739
d0004764:	d0004739 	.word	0xd0004739
d0004768:	d00047bd 	.word	0xd00047bd
d000476c:	d0004739 	.word	0xd0004739
d0004770:	d0004739 	.word	0xd0004739
d0004774:	d0004739 	.word	0xd0004739
d0004778:	d0004739 	.word	0xd0004739
d000477c:	d00048c9 	.word	0xd00048c9
d0004780:	d00047ed 	.word	0xd00047ed
d0004784:	d00048ab 	.word	0xd00048ab
d0004788:	d0004739 	.word	0xd0004739
d000478c:	d0004739 	.word	0xd0004739
d0004790:	d00048eb 	.word	0xd00048eb
d0004794:	d0004739 	.word	0xd0004739
d0004798:	d00047ed 	.word	0xd00047ed
d000479c:	d0004739 	.word	0xd0004739
d00047a0:	d0004739 	.word	0xd0004739
d00047a4:	d00048b3 	.word	0xd00048b3
d00047a8:	680b      	ldr	r3, [r1, #0]
d00047aa:	1d1a      	adds	r2, r3, #4
d00047ac:	681b      	ldr	r3, [r3, #0]
d00047ae:	600a      	str	r2, [r1, #0]
d00047b0:	f104 0642 	add.w	r6, r4, #66	; 0x42
d00047b4:	f884 3042 	strb.w	r3, [r4, #66]	; 0x42
d00047b8:	2301      	movs	r3, #1
d00047ba:	e0a3      	b.n	d0004904 <_printf_i+0x1f4>
d00047bc:	6825      	ldr	r5, [r4, #0]
d00047be:	6808      	ldr	r0, [r1, #0]
d00047c0:	062e      	lsls	r6, r5, #24
d00047c2:	f100 0304 	add.w	r3, r0, #4
d00047c6:	d50a      	bpl.n	d00047de <_printf_i+0xce>
d00047c8:	6805      	ldr	r5, [r0, #0]
d00047ca:	600b      	str	r3, [r1, #0]
d00047cc:	2d00      	cmp	r5, #0
d00047ce:	da03      	bge.n	d00047d8 <_printf_i+0xc8>
d00047d0:	232d      	movs	r3, #45	; 0x2d
d00047d2:	426d      	negs	r5, r5
d00047d4:	f884 3043 	strb.w	r3, [r4, #67]	; 0x43
d00047d8:	485e      	ldr	r0, [pc, #376]	; (d0004954 <_printf_i+0x244>)
d00047da:	230a      	movs	r3, #10
d00047dc:	e019      	b.n	d0004812 <_printf_i+0x102>
d00047de:	f015 0f40 	tst.w	r5, #64	; 0x40
d00047e2:	6805      	ldr	r5, [r0, #0]
d00047e4:	600b      	str	r3, [r1, #0]
d00047e6:	bf18      	it	ne
d00047e8:	b22d      	sxthne	r5, r5
d00047ea:	e7ef      	b.n	d00047cc <_printf_i+0xbc>
d00047ec:	680b      	ldr	r3, [r1, #0]
d00047ee:	6825      	ldr	r5, [r4, #0]
d00047f0:	1d18      	adds	r0, r3, #4
d00047f2:	6008      	str	r0, [r1, #0]
d00047f4:	0628      	lsls	r0, r5, #24
d00047f6:	d501      	bpl.n	d00047fc <_printf_i+0xec>
d00047f8:	681d      	ldr	r5, [r3, #0]
d00047fa:	e002      	b.n	d0004802 <_printf_i+0xf2>
d00047fc:	0669      	lsls	r1, r5, #25
d00047fe:	d5fb      	bpl.n	d00047f8 <_printf_i+0xe8>
d0004800:	881d      	ldrh	r5, [r3, #0]
d0004802:	4854      	ldr	r0, [pc, #336]	; (d0004954 <_printf_i+0x244>)
d0004804:	2f6f      	cmp	r7, #111	; 0x6f
d0004806:	bf0c      	ite	eq
d0004808:	2308      	moveq	r3, #8
d000480a:	230a      	movne	r3, #10
d000480c:	2100      	movs	r1, #0
d000480e:	f884 1043 	strb.w	r1, [r4, #67]	; 0x43
d0004812:	6866      	ldr	r6, [r4, #4]
d0004814:	60a6      	str	r6, [r4, #8]
d0004816:	2e00      	cmp	r6, #0
d0004818:	bfa2      	ittt	ge
d000481a:	6821      	ldrge	r1, [r4, #0]
d000481c:	f021 0104 	bicge.w	r1, r1, #4
d0004820:	6021      	strge	r1, [r4, #0]
d0004822:	b90d      	cbnz	r5, d0004828 <_printf_i+0x118>
d0004824:	2e00      	cmp	r6, #0
d0004826:	d04d      	beq.n	d00048c4 <_printf_i+0x1b4>
d0004828:	4616      	mov	r6, r2
d000482a:	fbb5 f1f3 	udiv	r1, r5, r3
d000482e:	fb03 5711 	mls	r7, r3, r1, r5
d0004832:	5dc7      	ldrb	r7, [r0, r7]
d0004834:	f806 7d01 	strb.w	r7, [r6, #-1]!
d0004838:	462f      	mov	r7, r5
d000483a:	42bb      	cmp	r3, r7
d000483c:	460d      	mov	r5, r1
d000483e:	d9f4      	bls.n	d000482a <_printf_i+0x11a>
d0004840:	2b08      	cmp	r3, #8
d0004842:	d10b      	bne.n	d000485c <_printf_i+0x14c>
d0004844:	6823      	ldr	r3, [r4, #0]
d0004846:	07df      	lsls	r7, r3, #31
d0004848:	d508      	bpl.n	d000485c <_printf_i+0x14c>
d000484a:	6923      	ldr	r3, [r4, #16]
d000484c:	6861      	ldr	r1, [r4, #4]
d000484e:	4299      	cmp	r1, r3
d0004850:	bfde      	ittt	le
d0004852:	2330      	movle	r3, #48	; 0x30
d0004854:	f806 3c01 	strble.w	r3, [r6, #-1]
d0004858:	f106 36ff 	addle.w	r6, r6, #4294967295	; 0xffffffff
d000485c:	1b92      	subs	r2, r2, r6
d000485e:	6122      	str	r2, [r4, #16]
d0004860:	f8cd a000 	str.w	sl, [sp]
d0004864:	464b      	mov	r3, r9
d0004866:	aa03      	add	r2, sp, #12
d0004868:	4621      	mov	r1, r4
d000486a:	4640      	mov	r0, r8
d000486c:	f7ff fee2 	bl	d0004634 <_printf_common>
d0004870:	3001      	adds	r0, #1
d0004872:	d14c      	bne.n	d000490e <_printf_i+0x1fe>
d0004874:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d0004878:	b004      	add	sp, #16
d000487a:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
d000487e:	4835      	ldr	r0, [pc, #212]	; (d0004954 <_printf_i+0x244>)
d0004880:	f884 7045 	strb.w	r7, [r4, #69]	; 0x45
d0004884:	6823      	ldr	r3, [r4, #0]
d0004886:	680e      	ldr	r6, [r1, #0]
d0004888:	061f      	lsls	r7, r3, #24
d000488a:	f856 5b04 	ldr.w	r5, [r6], #4
d000488e:	600e      	str	r6, [r1, #0]
d0004890:	d514      	bpl.n	d00048bc <_printf_i+0x1ac>
d0004892:	07d9      	lsls	r1, r3, #31
d0004894:	bf44      	itt	mi
d0004896:	f043 0320 	orrmi.w	r3, r3, #32
d000489a:	6023      	strmi	r3, [r4, #0]
d000489c:	b91d      	cbnz	r5, d00048a6 <_printf_i+0x196>
d000489e:	6823      	ldr	r3, [r4, #0]
d00048a0:	f023 0320 	bic.w	r3, r3, #32
d00048a4:	6023      	str	r3, [r4, #0]
d00048a6:	2310      	movs	r3, #16
d00048a8:	e7b0      	b.n	d000480c <_printf_i+0xfc>
d00048aa:	6823      	ldr	r3, [r4, #0]
d00048ac:	f043 0320 	orr.w	r3, r3, #32
d00048b0:	6023      	str	r3, [r4, #0]
d00048b2:	2378      	movs	r3, #120	; 0x78
d00048b4:	4828      	ldr	r0, [pc, #160]	; (d0004958 <_printf_i+0x248>)
d00048b6:	f884 3045 	strb.w	r3, [r4, #69]	; 0x45
d00048ba:	e7e3      	b.n	d0004884 <_printf_i+0x174>
d00048bc:	065e      	lsls	r6, r3, #25
d00048be:	bf48      	it	mi
d00048c0:	b2ad      	uxthmi	r5, r5
d00048c2:	e7e6      	b.n	d0004892 <_printf_i+0x182>
d00048c4:	4616      	mov	r6, r2
d00048c6:	e7bb      	b.n	d0004840 <_printf_i+0x130>
d00048c8:	680b      	ldr	r3, [r1, #0]
d00048ca:	6826      	ldr	r6, [r4, #0]
d00048cc:	6960      	ldr	r0, [r4, #20]
d00048ce:	1d1d      	adds	r5, r3, #4
d00048d0:	600d      	str	r5, [r1, #0]
d00048d2:	0635      	lsls	r5, r6, #24
d00048d4:	681b      	ldr	r3, [r3, #0]
d00048d6:	d501      	bpl.n	d00048dc <_printf_i+0x1cc>
d00048d8:	6018      	str	r0, [r3, #0]
d00048da:	e002      	b.n	d00048e2 <_printf_i+0x1d2>
d00048dc:	0671      	lsls	r1, r6, #25
d00048de:	d5fb      	bpl.n	d00048d8 <_printf_i+0x1c8>
d00048e0:	8018      	strh	r0, [r3, #0]
d00048e2:	2300      	movs	r3, #0
d00048e4:	6123      	str	r3, [r4, #16]
d00048e6:	4616      	mov	r6, r2
d00048e8:	e7ba      	b.n	d0004860 <_printf_i+0x150>
d00048ea:	680b      	ldr	r3, [r1, #0]
d00048ec:	1d1a      	adds	r2, r3, #4
d00048ee:	600a      	str	r2, [r1, #0]
d00048f0:	681e      	ldr	r6, [r3, #0]
d00048f2:	6862      	ldr	r2, [r4, #4]
d00048f4:	2100      	movs	r1, #0
d00048f6:	4630      	mov	r0, r6
d00048f8:	f000 f98a 	bl	d0004c10 <memchr>
d00048fc:	b108      	cbz	r0, d0004902 <_printf_i+0x1f2>
d00048fe:	1b80      	subs	r0, r0, r6
d0004900:	6060      	str	r0, [r4, #4]
d0004902:	6863      	ldr	r3, [r4, #4]
d0004904:	6123      	str	r3, [r4, #16]
d0004906:	2300      	movs	r3, #0
d0004908:	f884 3043 	strb.w	r3, [r4, #67]	; 0x43
d000490c:	e7a8      	b.n	d0004860 <_printf_i+0x150>
d000490e:	6923      	ldr	r3, [r4, #16]
d0004910:	4632      	mov	r2, r6
d0004912:	4649      	mov	r1, r9
d0004914:	4640      	mov	r0, r8
d0004916:	47d0      	blx	sl
d0004918:	3001      	adds	r0, #1
d000491a:	d0ab      	beq.n	d0004874 <_printf_i+0x164>
d000491c:	6823      	ldr	r3, [r4, #0]
d000491e:	079b      	lsls	r3, r3, #30
d0004920:	d413      	bmi.n	d000494a <_printf_i+0x23a>
d0004922:	68e0      	ldr	r0, [r4, #12]
d0004924:	9b03      	ldr	r3, [sp, #12]
d0004926:	4298      	cmp	r0, r3
d0004928:	bfb8      	it	lt
d000492a:	4618      	movlt	r0, r3
d000492c:	e7a4      	b.n	d0004878 <_printf_i+0x168>
d000492e:	2301      	movs	r3, #1
d0004930:	4632      	mov	r2, r6
d0004932:	4649      	mov	r1, r9
d0004934:	4640      	mov	r0, r8
d0004936:	47d0      	blx	sl
d0004938:	3001      	adds	r0, #1
d000493a:	d09b      	beq.n	d0004874 <_printf_i+0x164>
d000493c:	3501      	adds	r5, #1
d000493e:	68e3      	ldr	r3, [r4, #12]
d0004940:	9903      	ldr	r1, [sp, #12]
d0004942:	1a5b      	subs	r3, r3, r1
d0004944:	42ab      	cmp	r3, r5
d0004946:	dcf2      	bgt.n	d000492e <_printf_i+0x21e>
d0004948:	e7eb      	b.n	d0004922 <_printf_i+0x212>
d000494a:	2500      	movs	r5, #0
d000494c:	f104 0619 	add.w	r6, r4, #25
d0004950:	e7f5      	b.n	d000493e <_printf_i+0x22e>
d0004952:	bf00      	nop
d0004954:	d00051f5 	.word	0xd00051f5
d0004958:	d0005206 	.word	0xd0005206

d000495c <__sread>:
d000495c:	b510      	push	{r4, lr}
d000495e:	460c      	mov	r4, r1
d0004960:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d0004964:	f000 f9e4 	bl	d0004d30 <_read_r>
d0004968:	2800      	cmp	r0, #0
d000496a:	bfab      	itete	ge
d000496c:	6d63      	ldrge	r3, [r4, #84]	; 0x54
d000496e:	89a3      	ldrhlt	r3, [r4, #12]
d0004970:	181b      	addge	r3, r3, r0
d0004972:	f423 5380 	biclt.w	r3, r3, #4096	; 0x1000
d0004976:	bfac      	ite	ge
d0004978:	6563      	strge	r3, [r4, #84]	; 0x54
d000497a:	81a3      	strhlt	r3, [r4, #12]
d000497c:	bd10      	pop	{r4, pc}

d000497e <__swrite>:
d000497e:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
d0004982:	461f      	mov	r7, r3
d0004984:	898b      	ldrh	r3, [r1, #12]
d0004986:	05db      	lsls	r3, r3, #23
d0004988:	4605      	mov	r5, r0
d000498a:	460c      	mov	r4, r1
d000498c:	4616      	mov	r6, r2
d000498e:	d505      	bpl.n	d000499c <__swrite+0x1e>
d0004990:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d0004994:	2302      	movs	r3, #2
d0004996:	2200      	movs	r2, #0
d0004998:	f000 f922 	bl	d0004be0 <_lseek_r>
d000499c:	89a3      	ldrh	r3, [r4, #12]
d000499e:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
d00049a2:	f423 5380 	bic.w	r3, r3, #4096	; 0x1000
d00049a6:	81a3      	strh	r3, [r4, #12]
d00049a8:	4632      	mov	r2, r6
d00049aa:	463b      	mov	r3, r7
d00049ac:	4628      	mov	r0, r5
d00049ae:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
d00049b2:	f7fc bb5d 	b.w	d0001070 <_write_r>

d00049b6 <__sseek>:
d00049b6:	b510      	push	{r4, lr}
d00049b8:	460c      	mov	r4, r1
d00049ba:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d00049be:	f000 f90f 	bl	d0004be0 <_lseek_r>
d00049c2:	1c43      	adds	r3, r0, #1
d00049c4:	89a3      	ldrh	r3, [r4, #12]
d00049c6:	bf15      	itete	ne
d00049c8:	6560      	strne	r0, [r4, #84]	; 0x54
d00049ca:	f423 5380 	biceq.w	r3, r3, #4096	; 0x1000
d00049ce:	f443 5380 	orrne.w	r3, r3, #4096	; 0x1000
d00049d2:	81a3      	strheq	r3, [r4, #12]
d00049d4:	bf18      	it	ne
d00049d6:	81a3      	strhne	r3, [r4, #12]
d00049d8:	bd10      	pop	{r4, pc}

d00049da <__sclose>:
d00049da:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d00049de:	f000 b8cd 	b.w	d0004b7c <_close_r>

d00049e2 <strchr>:
d00049e2:	b2c9      	uxtb	r1, r1
d00049e4:	4603      	mov	r3, r0
d00049e6:	f810 2b01 	ldrb.w	r2, [r0], #1
d00049ea:	b11a      	cbz	r2, d00049f4 <strchr+0x12>
d00049ec:	428a      	cmp	r2, r1
d00049ee:	d1f9      	bne.n	d00049e4 <strchr+0x2>
d00049f0:	4618      	mov	r0, r3
d00049f2:	4770      	bx	lr
d00049f4:	2900      	cmp	r1, #0
d00049f6:	bf18      	it	ne
d00049f8:	2300      	movne	r3, #0
d00049fa:	e7f9      	b.n	d00049f0 <strchr+0xe>

d00049fc <__swbuf_r>:
d00049fc:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d00049fe:	460e      	mov	r6, r1
d0004a00:	4614      	mov	r4, r2
d0004a02:	4605      	mov	r5, r0
d0004a04:	b118      	cbz	r0, d0004a0e <__swbuf_r+0x12>
d0004a06:	6983      	ldr	r3, [r0, #24]
d0004a08:	b90b      	cbnz	r3, d0004a0e <__swbuf_r+0x12>
d0004a0a:	f7ff fa4d 	bl	d0003ea8 <__sinit>
d0004a0e:	4b21      	ldr	r3, [pc, #132]	; (d0004a94 <__swbuf_r+0x98>)
d0004a10:	429c      	cmp	r4, r3
d0004a12:	d12b      	bne.n	d0004a6c <__swbuf_r+0x70>
d0004a14:	686c      	ldr	r4, [r5, #4]
d0004a16:	69a3      	ldr	r3, [r4, #24]
d0004a18:	60a3      	str	r3, [r4, #8]
d0004a1a:	89a3      	ldrh	r3, [r4, #12]
d0004a1c:	071a      	lsls	r2, r3, #28
d0004a1e:	d52f      	bpl.n	d0004a80 <__swbuf_r+0x84>
d0004a20:	6923      	ldr	r3, [r4, #16]
d0004a22:	b36b      	cbz	r3, d0004a80 <__swbuf_r+0x84>
d0004a24:	6923      	ldr	r3, [r4, #16]
d0004a26:	6820      	ldr	r0, [r4, #0]
d0004a28:	1ac0      	subs	r0, r0, r3
d0004a2a:	6963      	ldr	r3, [r4, #20]
d0004a2c:	b2f6      	uxtb	r6, r6
d0004a2e:	4283      	cmp	r3, r0
d0004a30:	4637      	mov	r7, r6
d0004a32:	dc04      	bgt.n	d0004a3e <__swbuf_r+0x42>
d0004a34:	4621      	mov	r1, r4
d0004a36:	4628      	mov	r0, r5
d0004a38:	f7ff f9a2 	bl	d0003d80 <_fflush_r>
d0004a3c:	bb30      	cbnz	r0, d0004a8c <__swbuf_r+0x90>
d0004a3e:	68a3      	ldr	r3, [r4, #8]
d0004a40:	3b01      	subs	r3, #1
d0004a42:	60a3      	str	r3, [r4, #8]
d0004a44:	6823      	ldr	r3, [r4, #0]
d0004a46:	1c5a      	adds	r2, r3, #1
d0004a48:	6022      	str	r2, [r4, #0]
d0004a4a:	701e      	strb	r6, [r3, #0]
d0004a4c:	6963      	ldr	r3, [r4, #20]
d0004a4e:	3001      	adds	r0, #1
d0004a50:	4283      	cmp	r3, r0
d0004a52:	d004      	beq.n	d0004a5e <__swbuf_r+0x62>
d0004a54:	89a3      	ldrh	r3, [r4, #12]
d0004a56:	07db      	lsls	r3, r3, #31
d0004a58:	d506      	bpl.n	d0004a68 <__swbuf_r+0x6c>
d0004a5a:	2e0a      	cmp	r6, #10
d0004a5c:	d104      	bne.n	d0004a68 <__swbuf_r+0x6c>
d0004a5e:	4621      	mov	r1, r4
d0004a60:	4628      	mov	r0, r5
d0004a62:	f7ff f98d 	bl	d0003d80 <_fflush_r>
d0004a66:	b988      	cbnz	r0, d0004a8c <__swbuf_r+0x90>
d0004a68:	4638      	mov	r0, r7
d0004a6a:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d0004a6c:	4b0a      	ldr	r3, [pc, #40]	; (d0004a98 <__swbuf_r+0x9c>)
d0004a6e:	429c      	cmp	r4, r3
d0004a70:	d101      	bne.n	d0004a76 <__swbuf_r+0x7a>
d0004a72:	68ac      	ldr	r4, [r5, #8]
d0004a74:	e7cf      	b.n	d0004a16 <__swbuf_r+0x1a>
d0004a76:	4b09      	ldr	r3, [pc, #36]	; (d0004a9c <__swbuf_r+0xa0>)
d0004a78:	429c      	cmp	r4, r3
d0004a7a:	bf08      	it	eq
d0004a7c:	68ec      	ldreq	r4, [r5, #12]
d0004a7e:	e7ca      	b.n	d0004a16 <__swbuf_r+0x1a>
d0004a80:	4621      	mov	r1, r4
d0004a82:	4628      	mov	r0, r5
d0004a84:	f000 f80c 	bl	d0004aa0 <__swsetup_r>
d0004a88:	2800      	cmp	r0, #0
d0004a8a:	d0cb      	beq.n	d0004a24 <__swbuf_r+0x28>
d0004a8c:	f04f 37ff 	mov.w	r7, #4294967295	; 0xffffffff
d0004a90:	e7ea      	b.n	d0004a68 <__swbuf_r+0x6c>
d0004a92:	bf00      	nop
d0004a94:	d00051a4 	.word	0xd00051a4
d0004a98:	d00051c4 	.word	0xd00051c4
d0004a9c:	d0005184 	.word	0xd0005184

d0004aa0 <__swsetup_r>:
d0004aa0:	4b32      	ldr	r3, [pc, #200]	; (d0004b6c <__swsetup_r+0xcc>)
d0004aa2:	b570      	push	{r4, r5, r6, lr}
d0004aa4:	681d      	ldr	r5, [r3, #0]
d0004aa6:	4606      	mov	r6, r0
d0004aa8:	460c      	mov	r4, r1
d0004aaa:	b125      	cbz	r5, d0004ab6 <__swsetup_r+0x16>
d0004aac:	69ab      	ldr	r3, [r5, #24]
d0004aae:	b913      	cbnz	r3, d0004ab6 <__swsetup_r+0x16>
d0004ab0:	4628      	mov	r0, r5
d0004ab2:	f7ff f9f9 	bl	d0003ea8 <__sinit>
d0004ab6:	4b2e      	ldr	r3, [pc, #184]	; (d0004b70 <__swsetup_r+0xd0>)
d0004ab8:	429c      	cmp	r4, r3
d0004aba:	d10f      	bne.n	d0004adc <__swsetup_r+0x3c>
d0004abc:	686c      	ldr	r4, [r5, #4]
d0004abe:	89a3      	ldrh	r3, [r4, #12]
d0004ac0:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
d0004ac4:	0719      	lsls	r1, r3, #28
d0004ac6:	d42c      	bmi.n	d0004b22 <__swsetup_r+0x82>
d0004ac8:	06dd      	lsls	r5, r3, #27
d0004aca:	d411      	bmi.n	d0004af0 <__swsetup_r+0x50>
d0004acc:	2309      	movs	r3, #9
d0004ace:	6033      	str	r3, [r6, #0]
d0004ad0:	f042 0340 	orr.w	r3, r2, #64	; 0x40
d0004ad4:	81a3      	strh	r3, [r4, #12]
d0004ad6:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d0004ada:	e03e      	b.n	d0004b5a <__swsetup_r+0xba>
d0004adc:	4b25      	ldr	r3, [pc, #148]	; (d0004b74 <__swsetup_r+0xd4>)
d0004ade:	429c      	cmp	r4, r3
d0004ae0:	d101      	bne.n	d0004ae6 <__swsetup_r+0x46>
d0004ae2:	68ac      	ldr	r4, [r5, #8]
d0004ae4:	e7eb      	b.n	d0004abe <__swsetup_r+0x1e>
d0004ae6:	4b24      	ldr	r3, [pc, #144]	; (d0004b78 <__swsetup_r+0xd8>)
d0004ae8:	429c      	cmp	r4, r3
d0004aea:	bf08      	it	eq
d0004aec:	68ec      	ldreq	r4, [r5, #12]
d0004aee:	e7e6      	b.n	d0004abe <__swsetup_r+0x1e>
d0004af0:	0758      	lsls	r0, r3, #29
d0004af2:	d512      	bpl.n	d0004b1a <__swsetup_r+0x7a>
d0004af4:	6b61      	ldr	r1, [r4, #52]	; 0x34
d0004af6:	b141      	cbz	r1, d0004b0a <__swsetup_r+0x6a>
d0004af8:	f104 0344 	add.w	r3, r4, #68	; 0x44
d0004afc:	4299      	cmp	r1, r3
d0004afe:	d002      	beq.n	d0004b06 <__swsetup_r+0x66>
d0004b00:	4630      	mov	r0, r6
d0004b02:	f7fe fd41 	bl	d0003588 <_free_r>
d0004b06:	2300      	movs	r3, #0
d0004b08:	6363      	str	r3, [r4, #52]	; 0x34
d0004b0a:	89a3      	ldrh	r3, [r4, #12]
d0004b0c:	f023 0324 	bic.w	r3, r3, #36	; 0x24
d0004b10:	81a3      	strh	r3, [r4, #12]
d0004b12:	2300      	movs	r3, #0
d0004b14:	6063      	str	r3, [r4, #4]
d0004b16:	6923      	ldr	r3, [r4, #16]
d0004b18:	6023      	str	r3, [r4, #0]
d0004b1a:	89a3      	ldrh	r3, [r4, #12]
d0004b1c:	f043 0308 	orr.w	r3, r3, #8
d0004b20:	81a3      	strh	r3, [r4, #12]
d0004b22:	6923      	ldr	r3, [r4, #16]
d0004b24:	b94b      	cbnz	r3, d0004b3a <__swsetup_r+0x9a>
d0004b26:	89a3      	ldrh	r3, [r4, #12]
d0004b28:	f403 7320 	and.w	r3, r3, #640	; 0x280
d0004b2c:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
d0004b30:	d003      	beq.n	d0004b3a <__swsetup_r+0x9a>
d0004b32:	4621      	mov	r1, r4
d0004b34:	4630      	mov	r0, r6
d0004b36:	f7ff fa7b 	bl	d0004030 <__smakebuf_r>
d0004b3a:	89a0      	ldrh	r0, [r4, #12]
d0004b3c:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
d0004b40:	f010 0301 	ands.w	r3, r0, #1
d0004b44:	d00a      	beq.n	d0004b5c <__swsetup_r+0xbc>
d0004b46:	2300      	movs	r3, #0
d0004b48:	60a3      	str	r3, [r4, #8]
d0004b4a:	6963      	ldr	r3, [r4, #20]
d0004b4c:	425b      	negs	r3, r3
d0004b4e:	61a3      	str	r3, [r4, #24]
d0004b50:	6923      	ldr	r3, [r4, #16]
d0004b52:	b943      	cbnz	r3, d0004b66 <__swsetup_r+0xc6>
d0004b54:	f010 0080 	ands.w	r0, r0, #128	; 0x80
d0004b58:	d1ba      	bne.n	d0004ad0 <__swsetup_r+0x30>
d0004b5a:	bd70      	pop	{r4, r5, r6, pc}
d0004b5c:	0781      	lsls	r1, r0, #30
d0004b5e:	bf58      	it	pl
d0004b60:	6963      	ldrpl	r3, [r4, #20]
d0004b62:	60a3      	str	r3, [r4, #8]
d0004b64:	e7f4      	b.n	d0004b50 <__swsetup_r+0xb0>
d0004b66:	2000      	movs	r0, #0
d0004b68:	e7f7      	b.n	d0004b5a <__swsetup_r+0xba>
d0004b6a:	bf00      	nop
d0004b6c:	d0005228 	.word	0xd0005228
d0004b70:	d00051a4 	.word	0xd00051a4
d0004b74:	d00051c4 	.word	0xd00051c4
d0004b78:	d0005184 	.word	0xd0005184

d0004b7c <_close_r>:
d0004b7c:	b538      	push	{r3, r4, r5, lr}
d0004b7e:	4d06      	ldr	r5, [pc, #24]	; (d0004b98 <_close_r+0x1c>)
d0004b80:	2300      	movs	r3, #0
d0004b82:	4604      	mov	r4, r0
d0004b84:	4608      	mov	r0, r1
d0004b86:	602b      	str	r3, [r5, #0]
d0004b88:	f7fc faac 	bl	d00010e4 <_close>
d0004b8c:	1c43      	adds	r3, r0, #1
d0004b8e:	d102      	bne.n	d0004b96 <_close_r+0x1a>
d0004b90:	682b      	ldr	r3, [r5, #0]
d0004b92:	b103      	cbz	r3, d0004b96 <_close_r+0x1a>
d0004b94:	6023      	str	r3, [r4, #0]
d0004b96:	bd38      	pop	{r3, r4, r5, pc}
d0004b98:	d0006fd0 	.word	0xd0006fd0

d0004b9c <_fstat_r>:
d0004b9c:	b538      	push	{r3, r4, r5, lr}
d0004b9e:	4d07      	ldr	r5, [pc, #28]	; (d0004bbc <_fstat_r+0x20>)
d0004ba0:	2300      	movs	r3, #0
d0004ba2:	4604      	mov	r4, r0
d0004ba4:	4608      	mov	r0, r1
d0004ba6:	4611      	mov	r1, r2
d0004ba8:	602b      	str	r3, [r5, #0]
d0004baa:	f7fc fa9f 	bl	d00010ec <_fstat>
d0004bae:	1c43      	adds	r3, r0, #1
d0004bb0:	d102      	bne.n	d0004bb8 <_fstat_r+0x1c>
d0004bb2:	682b      	ldr	r3, [r5, #0]
d0004bb4:	b103      	cbz	r3, d0004bb8 <_fstat_r+0x1c>
d0004bb6:	6023      	str	r3, [r4, #0]
d0004bb8:	bd38      	pop	{r3, r4, r5, pc}
d0004bba:	bf00      	nop
d0004bbc:	d0006fd0 	.word	0xd0006fd0

d0004bc0 <_isatty_r>:
d0004bc0:	b538      	push	{r3, r4, r5, lr}
d0004bc2:	4d06      	ldr	r5, [pc, #24]	; (d0004bdc <_isatty_r+0x1c>)
d0004bc4:	2300      	movs	r3, #0
d0004bc6:	4604      	mov	r4, r0
d0004bc8:	4608      	mov	r0, r1
d0004bca:	602b      	str	r3, [r5, #0]
d0004bcc:	f7fc fab6 	bl	d000113c <_isatty>
d0004bd0:	1c43      	adds	r3, r0, #1
d0004bd2:	d102      	bne.n	d0004bda <_isatty_r+0x1a>
d0004bd4:	682b      	ldr	r3, [r5, #0]
d0004bd6:	b103      	cbz	r3, d0004bda <_isatty_r+0x1a>
d0004bd8:	6023      	str	r3, [r4, #0]
d0004bda:	bd38      	pop	{r3, r4, r5, pc}
d0004bdc:	d0006fd0 	.word	0xd0006fd0

d0004be0 <_lseek_r>:
d0004be0:	b538      	push	{r3, r4, r5, lr}
d0004be2:	4d07      	ldr	r5, [pc, #28]	; (d0004c00 <_lseek_r+0x20>)
d0004be4:	4604      	mov	r4, r0
d0004be6:	4608      	mov	r0, r1
d0004be8:	4611      	mov	r1, r2
d0004bea:	2200      	movs	r2, #0
d0004bec:	602a      	str	r2, [r5, #0]
d0004bee:	461a      	mov	r2, r3
d0004bf0:	f7fc fa82 	bl	d00010f8 <_lseek>
d0004bf4:	1c43      	adds	r3, r0, #1
d0004bf6:	d102      	bne.n	d0004bfe <_lseek_r+0x1e>
d0004bf8:	682b      	ldr	r3, [r5, #0]
d0004bfa:	b103      	cbz	r3, d0004bfe <_lseek_r+0x1e>
d0004bfc:	6023      	str	r3, [r4, #0]
d0004bfe:	bd38      	pop	{r3, r4, r5, pc}
d0004c00:	d0006fd0 	.word	0xd0006fd0
	...

d0004c10 <memchr>:
d0004c10:	f001 01ff 	and.w	r1, r1, #255	; 0xff
d0004c14:	2a10      	cmp	r2, #16
d0004c16:	db2b      	blt.n	d0004c70 <memchr+0x60>
d0004c18:	f010 0f07 	tst.w	r0, #7
d0004c1c:	d008      	beq.n	d0004c30 <memchr+0x20>
d0004c1e:	f810 3b01 	ldrb.w	r3, [r0], #1
d0004c22:	3a01      	subs	r2, #1
d0004c24:	428b      	cmp	r3, r1
d0004c26:	d02d      	beq.n	d0004c84 <memchr+0x74>
d0004c28:	f010 0f07 	tst.w	r0, #7
d0004c2c:	b342      	cbz	r2, d0004c80 <memchr+0x70>
d0004c2e:	d1f6      	bne.n	d0004c1e <memchr+0xe>
d0004c30:	b4f0      	push	{r4, r5, r6, r7}
d0004c32:	ea41 2101 	orr.w	r1, r1, r1, lsl #8
d0004c36:	ea41 4101 	orr.w	r1, r1, r1, lsl #16
d0004c3a:	f022 0407 	bic.w	r4, r2, #7
d0004c3e:	f07f 0700 	mvns.w	r7, #0
d0004c42:	2300      	movs	r3, #0
d0004c44:	e8f0 5602 	ldrd	r5, r6, [r0], #8
d0004c48:	3c08      	subs	r4, #8
d0004c4a:	ea85 0501 	eor.w	r5, r5, r1
d0004c4e:	ea86 0601 	eor.w	r6, r6, r1
d0004c52:	fa85 f547 	uadd8	r5, r5, r7
d0004c56:	faa3 f587 	sel	r5, r3, r7
d0004c5a:	fa86 f647 	uadd8	r6, r6, r7
d0004c5e:	faa5 f687 	sel	r6, r5, r7
d0004c62:	b98e      	cbnz	r6, d0004c88 <memchr+0x78>
d0004c64:	d1ee      	bne.n	d0004c44 <memchr+0x34>
d0004c66:	bcf0      	pop	{r4, r5, r6, r7}
d0004c68:	f001 01ff 	and.w	r1, r1, #255	; 0xff
d0004c6c:	f002 0207 	and.w	r2, r2, #7
d0004c70:	b132      	cbz	r2, d0004c80 <memchr+0x70>
d0004c72:	f810 3b01 	ldrb.w	r3, [r0], #1
d0004c76:	3a01      	subs	r2, #1
d0004c78:	ea83 0301 	eor.w	r3, r3, r1
d0004c7c:	b113      	cbz	r3, d0004c84 <memchr+0x74>
d0004c7e:	d1f8      	bne.n	d0004c72 <memchr+0x62>
d0004c80:	2000      	movs	r0, #0
d0004c82:	4770      	bx	lr
d0004c84:	3801      	subs	r0, #1
d0004c86:	4770      	bx	lr
d0004c88:	2d00      	cmp	r5, #0
d0004c8a:	bf06      	itte	eq
d0004c8c:	4635      	moveq	r5, r6
d0004c8e:	3803      	subeq	r0, #3
d0004c90:	3807      	subne	r0, #7
d0004c92:	f015 0f01 	tst.w	r5, #1
d0004c96:	d107      	bne.n	d0004ca8 <memchr+0x98>
d0004c98:	3001      	adds	r0, #1
d0004c9a:	f415 7f80 	tst.w	r5, #256	; 0x100
d0004c9e:	bf02      	ittt	eq
d0004ca0:	3001      	addeq	r0, #1
d0004ca2:	f415 3fc0 	tsteq.w	r5, #98304	; 0x18000
d0004ca6:	3001      	addeq	r0, #1
d0004ca8:	bcf0      	pop	{r4, r5, r6, r7}
d0004caa:	3801      	subs	r0, #1
d0004cac:	4770      	bx	lr
d0004cae:	bf00      	nop

d0004cb0 <memmove>:
d0004cb0:	4288      	cmp	r0, r1
d0004cb2:	b510      	push	{r4, lr}
d0004cb4:	eb01 0402 	add.w	r4, r1, r2
d0004cb8:	d902      	bls.n	d0004cc0 <memmove+0x10>
d0004cba:	4284      	cmp	r4, r0
d0004cbc:	4623      	mov	r3, r4
d0004cbe:	d807      	bhi.n	d0004cd0 <memmove+0x20>
d0004cc0:	1e43      	subs	r3, r0, #1
d0004cc2:	42a1      	cmp	r1, r4
d0004cc4:	d008      	beq.n	d0004cd8 <memmove+0x28>
d0004cc6:	f811 2b01 	ldrb.w	r2, [r1], #1
d0004cca:	f803 2f01 	strb.w	r2, [r3, #1]!
d0004cce:	e7f8      	b.n	d0004cc2 <memmove+0x12>
d0004cd0:	4402      	add	r2, r0
d0004cd2:	4601      	mov	r1, r0
d0004cd4:	428a      	cmp	r2, r1
d0004cd6:	d100      	bne.n	d0004cda <memmove+0x2a>
d0004cd8:	bd10      	pop	{r4, pc}
d0004cda:	f813 4d01 	ldrb.w	r4, [r3, #-1]!
d0004cde:	f802 4d01 	strb.w	r4, [r2, #-1]!
d0004ce2:	e7f7      	b.n	d0004cd4 <memmove+0x24>

d0004ce4 <_realloc_r>:
d0004ce4:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d0004ce6:	4607      	mov	r7, r0
d0004ce8:	4614      	mov	r4, r2
d0004cea:	460e      	mov	r6, r1
d0004cec:	b921      	cbnz	r1, d0004cf8 <_realloc_r+0x14>
d0004cee:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
d0004cf2:	4611      	mov	r1, r2
d0004cf4:	f7fe bc98 	b.w	d0003628 <_malloc_r>
d0004cf8:	b922      	cbnz	r2, d0004d04 <_realloc_r+0x20>
d0004cfa:	f7fe fc45 	bl	d0003588 <_free_r>
d0004cfe:	4625      	mov	r5, r4
d0004d00:	4628      	mov	r0, r5
d0004d02:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d0004d04:	f000 f826 	bl	d0004d54 <_malloc_usable_size_r>
d0004d08:	42a0      	cmp	r0, r4
d0004d0a:	d20f      	bcs.n	d0004d2c <_realloc_r+0x48>
d0004d0c:	4621      	mov	r1, r4
d0004d0e:	4638      	mov	r0, r7
d0004d10:	f7fe fc8a 	bl	d0003628 <_malloc_r>
d0004d14:	4605      	mov	r5, r0
d0004d16:	2800      	cmp	r0, #0
d0004d18:	d0f2      	beq.n	d0004d00 <_realloc_r+0x1c>
d0004d1a:	4631      	mov	r1, r6
d0004d1c:	4622      	mov	r2, r4
d0004d1e:	f7fe fc0d 	bl	d000353c <memcpy>
d0004d22:	4631      	mov	r1, r6
d0004d24:	4638      	mov	r0, r7
d0004d26:	f7fe fc2f 	bl	d0003588 <_free_r>
d0004d2a:	e7e9      	b.n	d0004d00 <_realloc_r+0x1c>
d0004d2c:	4635      	mov	r5, r6
d0004d2e:	e7e7      	b.n	d0004d00 <_realloc_r+0x1c>

d0004d30 <_read_r>:
d0004d30:	b538      	push	{r3, r4, r5, lr}
d0004d32:	4d07      	ldr	r5, [pc, #28]	; (d0004d50 <_read_r+0x20>)
d0004d34:	4604      	mov	r4, r0
d0004d36:	4608      	mov	r0, r1
d0004d38:	4611      	mov	r1, r2
d0004d3a:	2200      	movs	r2, #0
d0004d3c:	602a      	str	r2, [r5, #0]
d0004d3e:	461a      	mov	r2, r3
d0004d40:	f7fc f9c6 	bl	d00010d0 <_read>
d0004d44:	1c43      	adds	r3, r0, #1
d0004d46:	d102      	bne.n	d0004d4e <_read_r+0x1e>
d0004d48:	682b      	ldr	r3, [r5, #0]
d0004d4a:	b103      	cbz	r3, d0004d4e <_read_r+0x1e>
d0004d4c:	6023      	str	r3, [r4, #0]
d0004d4e:	bd38      	pop	{r3, r4, r5, pc}
d0004d50:	d0006fd0 	.word	0xd0006fd0

d0004d54 <_malloc_usable_size_r>:
d0004d54:	f851 3c04 	ldr.w	r3, [r1, #-4]
d0004d58:	1f18      	subs	r0, r3, #4
d0004d5a:	2b00      	cmp	r3, #0
d0004d5c:	bfbc      	itt	lt
d0004d5e:	580b      	ldrlt	r3, [r1, r0]
d0004d60:	18c0      	addlt	r0, r0, r3
d0004d62:	4770      	bx	lr
d0004d64:	0000000a 	.word	0x0000000a
d0004d68:	20746f4e 	.word	0x20746f4e
d0004d6c:	756f6e65 	.word	0x756f6e65
d0004d70:	6d206867 	.word	0x6d206867
d0004d74:	726f6d65 	.word	0x726f6d65
d0004d78:	6f662079 	.word	0x6f662079
d0004d7c:	75712072 	.word	0x75712072
d0004d80:	69746e61 	.word	0x69746e61
d0004d84:	0072657a 	.word	0x0072657a
d0004d88:	67616d49 	.word	0x67616d49
d0004d8c:	61682065 	.word	0x61682065
d0004d90:	6f6e2064 	.word	0x6f6e2064
d0004d94:	78697020 	.word	0x78697020
d0004d98:	00736c65 	.word	0x00736c65
d0004d9c:	20746f4e 	.word	0x20746f4e
d0004da0:	756f6e65 	.word	0x756f6e65
d0004da4:	6d206867 	.word	0x6d206867
d0004da8:	726f6d65 	.word	0x726f6d65
d0004dac:	6f662079 	.word	0x6f662079
d0004db0:	6e692072 	.word	0x6e692072
d0004db4:	65786564 	.word	0x65786564
d0004db8:	6d692064 	.word	0x6d692064
d0004dbc:	00656761 	.word	0x00656761
d0004dc0:	67616d49 	.word	0x67616d49
d0004dc4:	69562065 	.word	0x69562065
d0004dc8:	72657765 	.word	0x72657765
d0004dcc:	00000000 	.word	0x00000000
d0004dd0:	6e75614c 	.word	0x6e75614c
d0004dd4:	77206863 	.word	0x77206863
d0004dd8:	20687469 	.word	0x20687469
d0004ddc:	622e2061 	.word	0x622e2061
d0004de0:	202c706d 	.word	0x202c706d
d0004de4:	6666692e 	.word	0x6666692e
d0004de8:	692e202c 	.word	0x692e202c
d0004dec:	206d626c 	.word	0x206d626c
d0004df0:	2e20726f 	.word	0x2e20726f
d0004df4:	206d626c 	.word	0x206d626c
d0004df8:	656c6966 	.word	0x656c6966
d0004dfc:	0000002e 	.word	0x0000002e
d0004e00:	6e65704f 	.word	0x6e65704f
d0004e04:	69616620 	.word	0x69616620
d0004e08:	2064656c 	.word	0x2064656c
d0004e0c:	25205246 	.word	0x25205246
d0004e10:	25203a75 	.word	0x25203a75
d0004e14:	00000073 	.word	0x00000073
d0004e18:	656c6946 	.word	0x656c6946
d0004e1c:	20736920 	.word	0x20736920
d0004e20:	74706d65 	.word	0x74706d65
d0004e24:	00000079 	.word	0x00000079
d0004e28:	20746f4e 	.word	0x20746f4e
d0004e2c:	756f6e65 	.word	0x756f6e65
d0004e30:	6d206867 	.word	0x6d206867
d0004e34:	726f6d65 	.word	0x726f6d65
d0004e38:	6f662079 	.word	0x6f662079
d0004e3c:	69662072 	.word	0x69662072
d0004e40:	0000656c 	.word	0x0000656c
d0004e44:	64616552 	.word	0x64616552
d0004e48:	69616620 	.word	0x69616620
d0004e4c:	2064656c 	.word	0x2064656c
d0004e50:	25205246 	.word	0x25205246
d0004e54:	00000075 	.word	0x00000075
d0004e58:	20746f4e 	.word	0x20746f4e
d0004e5c:	4d422061 	.word	0x4d422061
d0004e60:	69662050 	.word	0x69662050
d0004e64:	0000656c 	.word	0x0000656c
d0004e68:	75736e55 	.word	0x75736e55
d0004e6c:	726f7070 	.word	0x726f7070
d0004e70:	20646574 	.word	0x20646574
d0004e74:	20504d42 	.word	0x20504d42
d0004e78:	64616568 	.word	0x64616568
d0004e7c:	00007265 	.word	0x00007265
d0004e80:	61766e49 	.word	0x61766e49
d0004e84:	2064696c 	.word	0x2064696c
d0004e88:	20504d42 	.word	0x20504d42
d0004e8c:	656d6964 	.word	0x656d6964
d0004e90:	6f69736e 	.word	0x6f69736e
d0004e94:	0000736e 	.word	0x0000736e
d0004e98:	20504d42 	.word	0x20504d42
d0004e9c:	74207369 	.word	0x74207369
d0004ea0:	6c206f6f 	.word	0x6c206f6f
d0004ea4:	65677261 	.word	0x65677261
d0004ea8:	726f6620 	.word	0x726f6620
d0004eac:	69687420 	.word	0x69687420
d0004eb0:	70612073 	.word	0x70612073
d0004eb4:	74656c70 	.word	0x74656c70
d0004eb8:	00000000 	.word	0x00000000
d0004ebc:	20504d42 	.word	0x20504d42
d0004ec0:	65786970 	.word	0x65786970
d0004ec4:	666f206c 	.word	0x666f206c
d0004ec8:	74657366 	.word	0x74657366
d0004ecc:	20736920 	.word	0x20736920
d0004ed0:	7374756f 	.word	0x7374756f
d0004ed4:	20656469 	.word	0x20656469
d0004ed8:	20656874 	.word	0x20656874
d0004edc:	656c6966 	.word	0x656c6966
d0004ee0:	00000000 	.word	0x00000000
d0004ee4:	796c6e4f 	.word	0x796c6e4f
d0004ee8:	636e7520 	.word	0x636e7520
d0004eec:	72706d6f 	.word	0x72706d6f
d0004ef0:	65737365 	.word	0x65737365
d0004ef4:	4d422064 	.word	0x4d422064
d0004ef8:	69662050 	.word	0x69662050
d0004efc:	2073656c 	.word	0x2073656c
d0004f00:	20657261 	.word	0x20657261
d0004f04:	70707573 	.word	0x70707573
d0004f08:	6574726f 	.word	0x6574726f
d0004f0c:	00000064 	.word	0x00000064
d0004f10:	20504d42 	.word	0x20504d42
d0004f14:	656c6170 	.word	0x656c6170
d0004f18:	20657474 	.word	0x20657474
d0004f1c:	74207369 	.word	0x74207369
d0004f20:	636e7572 	.word	0x636e7572
d0004f24:	64657461 	.word	0x64657461
d0004f28:	00000000 	.word	0x00000000
d0004f2c:	20504d42 	.word	0x20504d42
d0004f30:	65786970 	.word	0x65786970
d0004f34:	6164206c 	.word	0x6164206c
d0004f38:	69206174 	.word	0x69206174
d0004f3c:	72742073 	.word	0x72742073
d0004f40:	61636e75 	.word	0x61636e75
d0004f44:	00646574 	.word	0x00646574
d0004f48:	20746f4e 	.word	0x20746f4e
d0004f4c:	756f6e65 	.word	0x756f6e65
d0004f50:	6d206867 	.word	0x6d206867
d0004f54:	726f6d65 	.word	0x726f6d65
d0004f58:	6f662079 	.word	0x6f662079
d0004f5c:	4d422072 	.word	0x4d422072
d0004f60:	69702050 	.word	0x69702050
d0004f64:	736c6578 	.word	0x736c6578
d0004f68:	00000000 	.word	0x00000000
d0004f6c:	75736e55 	.word	0x75736e55
d0004f70:	726f7070 	.word	0x726f7070
d0004f74:	20646574 	.word	0x20646574
d0004f78:	20504d42 	.word	0x20504d42
d0004f7c:	20746962 	.word	0x20746962
d0004f80:	74706564 	.word	0x74706564
d0004f84:	00000068 	.word	0x00000068
d0004f88:	20746f4e 	.word	0x20746f4e
d0004f8c:	756f6e65 	.word	0x756f6e65
d0004f90:	6d206867 	.word	0x6d206867
d0004f94:	726f6d65 	.word	0x726f6d65
d0004f98:	6f662079 	.word	0x6f662079
d0004f9c:	4d422072 	.word	0x4d422072
d0004fa0:	72742050 	.word	0x72742050
d0004fa4:	6f636575 	.word	0x6f636575
d0004fa8:	72756f6c 	.word	0x72756f6c
d0004fac:	00000000 	.word	0x00000000
d0004fb0:	20464649 	.word	0x20464649
d0004fb4:	656c6966 	.word	0x656c6966
d0004fb8:	20736920 	.word	0x20736920
d0004fbc:	20746f6e 	.word	0x20746f6e
d0004fc0:	4d424c49 	.word	0x4d424c49
d0004fc4:	4d42502f 	.word	0x4d42502f
d0004fc8:	00000000 	.word	0x00000000
d0004fcc:	20464649 	.word	0x20464649
d0004fd0:	6e756863 	.word	0x6e756863
d0004fd4:	7369206b 	.word	0x7369206b
d0004fd8:	75727420 	.word	0x75727420
d0004fdc:	7461636e 	.word	0x7461636e
d0004fe0:	00006465 	.word	0x00006465
d0004fe4:	61766e49 	.word	0x61766e49
d0004fe8:	2064696c 	.word	0x2064696c
d0004fec:	44484d42 	.word	0x44484d42
d0004ff0:	75686320 	.word	0x75686320
d0004ff4:	00006b6e 	.word	0x00006b6e
d0004ff8:	20464649 	.word	0x20464649
d0004ffc:	6d207369 	.word	0x6d207369
d0005000:	69737369 	.word	0x69737369
d0005004:	4220676e 	.word	0x4220676e
d0005008:	2044484d 	.word	0x2044484d
d000500c:	4220726f 	.word	0x4220726f
d0005010:	0059444f 	.word	0x0059444f
d0005014:	75736e55 	.word	0x75736e55
d0005018:	726f7070 	.word	0x726f7070
d000501c:	20646574 	.word	0x20646574
d0005020:	20464649 	.word	0x20464649
d0005024:	706d6f63 	.word	0x706d6f63
d0005028:	73736572 	.word	0x73736572
d000502c:	006e6f69 	.word	0x006e6f69
d0005030:	20464649 	.word	0x20464649
d0005034:	74207369 	.word	0x74207369
d0005038:	6c206f6f 	.word	0x6c206f6f
d000503c:	65677261 	.word	0x65677261
d0005040:	726f6620 	.word	0x726f6620
d0005044:	69687420 	.word	0x69687420
d0005048:	70612073 	.word	0x70612073
d000504c:	74656c70 	.word	0x74656c70
d0005050:	00000000 	.word	0x00000000
d0005054:	20464649 	.word	0x20464649
d0005058:	20736168 	.word	0x20736168
d000505c:	65726f6d 	.word	0x65726f6d
d0005060:	61687420 	.word	0x61687420
d0005064:	2038206e 	.word	0x2038206e
d0005068:	6e616c70 	.word	0x6e616c70
d000506c:	203b7365 	.word	0x203b7365
d0005070:	796c6e6f 	.word	0x796c6e6f
d0005074:	4d414820 	.word	0x4d414820
d0005078:	2d34322f 	.word	0x2d34322f
d000507c:	20746962 	.word	0x20746962
d0005080:	20657261 	.word	0x20657261
d0005084:	70707573 	.word	0x70707573
d0005088:	6574726f 	.word	0x6574726f
d000508c:	00000064 	.word	0x00000064
d0005090:	20746f4e 	.word	0x20746f4e
d0005094:	756f6e65 	.word	0x756f6e65
d0005098:	6d206867 	.word	0x6d206867
d000509c:	726f6d65 	.word	0x726f6d65
d00050a0:	6f662079 	.word	0x6f662079
d00050a4:	46492072 	.word	0x46492072
d00050a8:	6f722046 	.word	0x6f722046
d00050ac:	00000077 	.word	0x00000077
d00050b0:	20746f4e 	.word	0x20746f4e
d00050b4:	756f6e65 	.word	0x756f6e65
d00050b8:	6d206867 	.word	0x6d206867
d00050bc:	726f6d65 	.word	0x726f6d65
d00050c0:	6f662079 	.word	0x6f662079
d00050c4:	46492072 	.word	0x46492072
d00050c8:	72742046 	.word	0x72742046
d00050cc:	6f636575 	.word	0x6f636575
d00050d0:	72756f6c 	.word	0x72756f6c
d00050d4:	00000000 	.word	0x00000000
d00050d8:	20746f4e 	.word	0x20746f4e
d00050dc:	756f6e65 	.word	0x756f6e65
d00050e0:	6d206867 	.word	0x6d206867
d00050e4:	726f6d65 	.word	0x726f6d65
d00050e8:	6f662079 	.word	0x6f662079
d00050ec:	46492072 	.word	0x46492072
d00050f0:	69702046 	.word	0x69702046
d00050f4:	736c6578 	.word	0x736c6578
d00050f8:	00000000 	.word	0x00000000
d00050fc:	20464649 	.word	0x20464649
d0005100:	59444f42 	.word	0x59444f42
d0005104:	20736920 	.word	0x20736920
d0005108:	6e757274 	.word	0x6e757274
d000510c:	65746163 	.word	0x65746163
d0005110:	00000064 	.word	0x00000064
d0005114:	20464649 	.word	0x20464649
d0005118:	65747942 	.word	0x65747942
d000511c:	316e7552 	.word	0x316e7552
d0005120:	74616420 	.word	0x74616420
d0005124:	73692061 	.word	0x73692061
d0005128:	726f6320 	.word	0x726f6320
d000512c:	74707572 	.word	0x74707572
d0005130:	00000000 	.word	0x00000000
d0005134:	6e6b6e55 	.word	0x6e6b6e55
d0005138:	206e776f 	.word	0x206e776f
d000513c:	67616d69 	.word	0x67616d69
d0005140:	6f662065 	.word	0x6f662065
d0005144:	74616d72 	.word	0x74616d72
d0005148:	00000000 	.word	0x00000000
d000514c:	64616f4c 	.word	0x64616f4c
d0005150:	25206465 	.word	0x25206465
d0005154:	75257875 	.word	0x75257875
d0005158:	7325203a 	.word	0x7325203a
d000515c:	00000000 	.word	0x00000000
d0005160:	67616d49 	.word	0x67616d49
d0005164:	6f642065 	.word	0x6f642065
d0005168:	0021656e 	.word	0x0021656e
d000516c:	64616f4c 	.word	0x64616f4c
d0005170:	20676e69 	.word	0x20676e69
d0005174:	67616d69 	.word	0x67616d69
d0005178:	2e2e2e65 	.word	0x2e2e2e65
d000517c:	00000000 	.word	0x00000000

d0005180 <_global_impure_ptr>:
d0005180:	d000522c                                ,R..

d0005184 <__sf_fake_stderr>:
	...

d00051a4 <__sf_fake_stdin>:
	...

d00051c4 <__sf_fake_stdout>:
	...
d00051e4:	2b302d23 6c680020 6665004c 47464567     #-0+ .hlL.efgEFG
d00051f4:	32313000 36353433 41393837 45444342     .0123456789ABCDE
d0005204:	31300046 35343332 39383736 64636261     F.0123456789abcd
d0005214:	                                         ef.

Disassembly of section .init:

d0005218 <_init>:
d0005218:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d000521a:	bf00      	nop

Disassembly of section .fini:

d000521c <_fini>:
d000521c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d000521e:	bf00      	nop

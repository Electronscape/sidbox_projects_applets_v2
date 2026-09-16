
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
d000101e:	f002 fcdf 	bl	d00039e0 <setbuf>
d0001022:	6833      	ldr	r3, [r6, #0]
d0001024:	2100      	movs	r1, #0
d0001026:	68d8      	ldr	r0, [r3, #12]
d0001028:	f002 fcda 	bl	d00039e0 <setbuf>
d000102c:	4629      	mov	r1, r5
d000102e:	4620      	mov	r0, r4
d0001030:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
d0001034:	f000 be1c 	b.w	d0001c70 <main>
d0001038:	d0004cfc 	.word	0xd0004cfc

d000103c <gfx_createBitmap>:
d000103c:	b510      	push	{r4, lr}
d000103e:	4604      	mov	r4, r0
d0001040:	fb01 f002 	mul.w	r0, r1, r2
d0001044:	b292      	uxth	r2, r2
d0001046:	80a1      	strh	r1, [r4, #4]
d0001048:	60e0      	str	r0, [r4, #12]
d000104a:	80e2      	strh	r2, [r4, #6]
d000104c:	8122      	strh	r2, [r4, #8]
d000104e:	f002 fa5d 	bl	d000350c <malloc>
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
d0001064:	d0008a98 	.word	0xd0008a98
d0001068:	d0600000 	.word	0xd0600000
d000106c:	d0006a2c 	.word	0xd0006a2c

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
d00010b8:	f002 fa22 	bl	d0003500 <__errno>
d00010bc:	2209      	movs	r2, #9
d00010be:	4603      	mov	r3, r0
d00010c0:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d00010c4:	601a      	str	r2, [r3, #0]
d00010c6:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d00010c8:	d0004d64 	.word	0xd0004d64
d00010cc:	2001f000 	.word	0x2001f000

d00010d0 <_read>:
d00010d0:	b508      	push	{r3, lr}
d00010d2:	f002 fa15 	bl	d0003500 <__errno>
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
d000111e:	f002 f9ef 	bl	d0003500 <__errno>
d0001122:	220c      	movs	r2, #12
d0001124:	4603      	mov	r3, r0
d0001126:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d000112a:	601a      	str	r2, [r3, #0]
d000112c:	bd10      	pop	{r4, pc}
d000112e:	bf00      	nop
d0001130:	d0004d60 	.word	0xd0004d60
d0001134:	d0008a98 	.word	0xd0008a98
d0001138:	d0600000 	.word	0xd0600000

d000113c <compare_bins>:
d000113c:	4b19      	ldr	r3, [pc, #100]	; (d00011a4 <compare_bins+0x68>)
d000113e:	8802      	ldrh	r2, [r0, #0]
d0001140:	b410      	push	{r4}
d0001142:	781c      	ldrb	r4, [r3, #0]
d0001144:	880b      	ldrh	r3, [r1, #0]
d0001146:	b95c      	cbnz	r4, d0001160 <compare_bins+0x24>
d0001148:	0ad0      	lsrs	r0, r2, #11
d000114a:	f85d 4b04 	ldr.w	r4, [sp], #4
d000114e:	0ad9      	lsrs	r1, r3, #11
d0001150:	0b52      	lsrs	r2, r2, #13
d0001152:	0b5b      	lsrs	r3, r3, #13
d0001154:	ea42 00c0 	orr.w	r0, r2, r0, lsl #3
d0001158:	ea43 03c1 	orr.w	r3, r3, r1, lsl #3
d000115c:	1ac0      	subs	r0, r0, r3
d000115e:	4770      	bx	lr
d0001160:	2c01      	cmp	r4, #1
d0001162:	d00f      	beq.n	d0001184 <compare_bins+0x48>
d0001164:	f002 001f 	and.w	r0, r2, #31
d0001168:	f003 011f 	and.w	r1, r3, #31
d000116c:	f3c2 0282 	ubfx	r2, r2, #2, #3
d0001170:	f3c3 0382 	ubfx	r3, r3, #2, #3
d0001174:	f85d 4b04 	ldr.w	r4, [sp], #4
d0001178:	ea42 00c0 	orr.w	r0, r2, r0, lsl #3
d000117c:	ea43 03c1 	orr.w	r3, r3, r1, lsl #3
d0001180:	1ac0      	subs	r0, r0, r3
d0001182:	4770      	bx	lr
d0001184:	f3c2 1045 	ubfx	r0, r2, #5, #6
d0001188:	f3c3 1145 	ubfx	r1, r3, #5, #6
d000118c:	f3c2 2241 	ubfx	r2, r2, #9, #2
d0001190:	f3c3 2341 	ubfx	r3, r3, #9, #2
d0001194:	f85d 4b04 	ldr.w	r4, [sp], #4
d0001198:	ea42 0080 	orr.w	r0, r2, r0, lsl #2
d000119c:	ea43 0381 	orr.w	r3, r3, r1, lsl #2
d00011a0:	1ac0      	subs	r0, r0, r3
d00011a2:	4770      	bx	lr
d00011a4:	d0006980 	.word	0xd0006980

d00011a8 <update_box>:
d00011a8:	e9d0 2300 	ldrd	r2, r3, [r0]
d00011ac:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d00011b0:	4413      	add	r3, r2
d00011b2:	b085      	sub	sp, #20
d00011b4:	429a      	cmp	r2, r3
d00011b6:	9003      	str	r0, [sp, #12]
d00011b8:	d25b      	bcs.n	d0001272 <update_box+0xca>
d00011ba:	4832      	ldr	r0, [pc, #200]	; (d0001284 <update_box+0xdc>)
d00011bc:	f06f 4100 	mvn.w	r1, #2147483648	; 0x80000000
d00011c0:	4c31      	ldr	r4, [pc, #196]	; (d0001288 <update_box+0xe0>)
d00011c2:	f04f 0800 	mov.w	r8, #0
d00011c6:	6800      	ldr	r0, [r0, #0]
d00011c8:	4411      	add	r1, r2
d00011ca:	6822      	ldr	r2, [r4, #0]
d00011cc:	26ff      	movs	r6, #255	; 0xff
d00011ce:	eb00 0e41 	add.w	lr, r0, r1, lsl #1
d00011d2:	4645      	mov	r5, r8
d00011d4:	9201      	str	r2, [sp, #4]
d00011d6:	1e82      	subs	r2, r0, #2
d00011d8:	46b4      	mov	ip, r6
d00011da:	4640      	mov	r0, r8
d00011dc:	eb02 0343 	add.w	r3, r2, r3, lsl #1
d00011e0:	4637      	mov	r7, r6
d00011e2:	4642      	mov	r2, r8
d00011e4:	9302      	str	r3, [sp, #8]
d00011e6:	f83e 3f02 	ldrh.w	r3, [lr, #2]!
d00011ea:	0ad9      	lsrs	r1, r3, #11
d00011ec:	f3c3 1b45 	ubfx	fp, r3, #5, #6
d00011f0:	ea4f 3953 	mov.w	r9, r3, lsr #13
d00011f4:	f3c3 2441 	ubfx	r4, r3, #9, #2
d00011f8:	f003 0a1f 	and.w	sl, r3, #31
d00011fc:	ea49 09c1 	orr.w	r9, r9, r1, lsl #3
d0001200:	f3c3 0182 	ubfx	r1, r3, #2, #3
d0001204:	ea44 048b 	orr.w	r4, r4, fp, lsl #2
d0001208:	454f      	cmp	r7, r9
d000120a:	ea41 01ca 	orr.w	r1, r1, sl, lsl #3
d000120e:	ea4f 1303 	mov.w	r3, r3, lsl #4
d0001212:	bf28      	it	cs
d0001214:	464f      	movcs	r7, r9
d0001216:	454a      	cmp	r2, r9
d0001218:	bf38      	it	cc
d000121a:	464a      	movcc	r2, r9
d000121c:	45a4      	cmp	ip, r4
d000121e:	b2ff      	uxtb	r7, r7
d0001220:	bf28      	it	cs
d0001222:	46a4      	movcs	ip, r4
d0001224:	4284      	cmp	r4, r0
d0001226:	b2d2      	uxtb	r2, r2
d0001228:	bf38      	it	cc
d000122a:	4604      	movcc	r4, r0
d000122c:	9801      	ldr	r0, [sp, #4]
d000122e:	428e      	cmp	r6, r1
d0001230:	fa5f fc8c 	uxtb.w	ip, ip
d0001234:	58c3      	ldr	r3, [r0, r3]
d0001236:	b2e0      	uxtb	r0, r4
d0001238:	bf28      	it	cs
d000123a:	460e      	movcs	r6, r1
d000123c:	42a9      	cmp	r1, r5
d000123e:	4498      	add	r8, r3
d0001240:	9b02      	ldr	r3, [sp, #8]
d0001242:	bf38      	it	cc
d0001244:	4629      	movcc	r1, r5
d0001246:	b2f6      	uxtb	r6, r6
d0001248:	459e      	cmp	lr, r3
d000124a:	b2cd      	uxtb	r5, r1
d000124c:	d1cb      	bne.n	d00011e6 <update_box+0x3e>
d000124e:	2300      	movs	r3, #0
d0001250:	9903      	ldr	r1, [sp, #12]
d0001252:	f367 0307 	bfi	r3, r7, #0, #8
d0001256:	740e      	strb	r6, [r1, #16]
d0001258:	744d      	strb	r5, [r1, #17]
d000125a:	f362 230f 	bfi	r3, r2, #8, #8
d000125e:	f8c1 8008 	str.w	r8, [r1, #8]
d0001262:	f36c 4317 	bfi	r3, ip, #16, #8
d0001266:	f360 631f 	bfi	r3, r0, #24, #8
d000126a:	60cb      	str	r3, [r1, #12]
d000126c:	b005      	add	sp, #20
d000126e:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0001272:	f04f 0800 	mov.w	r8, #0
d0001276:	26ff      	movs	r6, #255	; 0xff
d0001278:	4645      	mov	r5, r8
d000127a:	4640      	mov	r0, r8
d000127c:	4642      	mov	r2, r8
d000127e:	46b4      	mov	ip, r6
d0001280:	4637      	mov	r7, r6
d0001282:	e7e4      	b.n	d000124e <update_box+0xa6>
d0001284:	d0004d70 	.word	0xd0004d70
d0001288:	d0006574 	.word	0xd0006574

d000128c <wait_for_exit_combo>:
d000128c:	b510      	push	{r4, lr}
d000128e:	4c11      	ldr	r4, [pc, #68]	; (d00012d4 <wait_for_exit_combo+0x48>)
d0001290:	7820      	ldrb	r0, [r4, #0]
d0001292:	7861      	ldrb	r1, [r4, #1]
d0001294:	78a2      	ldrb	r2, [r4, #2]
d0001296:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d000129a:	78e3      	ldrb	r3, [r4, #3]
d000129c:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d00012a0:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d00012a4:	6a1b      	ldr	r3, [r3, #32]
d00012a6:	4798      	blx	r3
d00012a8:	f000 0003 	and.w	r0, r0, #3
d00012ac:	2803      	cmp	r0, #3
d00012ae:	d1ef      	bne.n	d0001290 <wait_for_exit_combo+0x4>
d00012b0:	7820      	ldrb	r0, [r4, #0]
d00012b2:	7861      	ldrb	r1, [r4, #1]
d00012b4:	78a2      	ldrb	r2, [r4, #2]
d00012b6:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d00012ba:	78e3      	ldrb	r3, [r4, #3]
d00012bc:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d00012c0:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d00012c4:	6a1b      	ldr	r3, [r3, #32]
d00012c6:	4798      	blx	r3
d00012c8:	f000 0003 	and.w	r0, r0, #3
d00012cc:	2803      	cmp	r0, #3
d00012ce:	d0ef      	beq.n	d00012b0 <wait_for_exit_combo+0x24>
d00012d0:	bd10      	pop	{r4, pc}
d00012d2:	bf00      	nop
d00012d4:	2001f000 	.word	0x2001f000

d00012d8 <set_status>:
d00012d8:	b570      	push	{r4, r5, r6, lr}
d00012da:	4d13      	ldr	r5, [pc, #76]	; (d0001328 <set_status+0x50>)
d00012dc:	4601      	mov	r1, r0
d00012de:	4c13      	ldr	r4, [pc, #76]	; (d000132c <set_status+0x54>)
d00012e0:	229f      	movs	r2, #159	; 0x9f
d00012e2:	4628      	mov	r0, r5
d00012e4:	f002 fc7e 	bl	d0003be4 <strncpy>
d00012e8:	7823      	ldrb	r3, [r4, #0]
d00012ea:	7862      	ldrb	r2, [r4, #1]
d00012ec:	2000      	movs	r0, #0
d00012ee:	78a1      	ldrb	r1, [r4, #2]
d00012f0:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d00012f4:	78e2      	ldrb	r2, [r4, #3]
d00012f6:	f885 009f 	strb.w	r0, [r5, #159]	; 0x9f
d00012fa:	4628      	mov	r0, r5
d00012fc:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0001300:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0001304:	68db      	ldr	r3, [r3, #12]
d0001306:	4798      	blx	r3
d0001308:	7823      	ldrb	r3, [r4, #0]
d000130a:	7862      	ldrb	r2, [r4, #1]
d000130c:	78a1      	ldrb	r1, [r4, #2]
d000130e:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0001312:	78e2      	ldrb	r2, [r4, #3]
d0001314:	4806      	ldr	r0, [pc, #24]	; (d0001330 <set_status+0x58>)
d0001316:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d000131a:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d000131e:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
d0001322:	68db      	ldr	r3, [r3, #12]
d0001324:	4718      	bx	r3
d0001326:	bf00      	nop
d0001328:	d0006984 	.word	0xd0006984
d000132c:	2001f000 	.word	0x2001f000
d0001330:	d0004844 	.word	0xd0004844

d0001334 <scale_masked.part.0>:
d0001334:	f011 0201 	ands.w	r2, r1, #1
d0001338:	460b      	mov	r3, r1
d000133a:	b410      	push	{r4}
d000133c:	d116      	bne.n	d000136c <scale_masked.part.0+0x38>
d000133e:	085b      	lsrs	r3, r3, #1
d0001340:	3201      	adds	r2, #1
d0001342:	07dc      	lsls	r4, r3, #31
d0001344:	d5fb      	bpl.n	d000133e <scale_masked.part.0+0xa>
d0001346:	b1e9      	cbz	r1, d0001384 <scale_masked.part.0+0x50>
d0001348:	460b      	mov	r3, r1
d000134a:	e001      	b.n	d0001350 <scale_masked.part.0+0x1c>
d000134c:	07dc      	lsls	r4, r3, #31
d000134e:	d40e      	bmi.n	d000136e <scale_masked.part.0+0x3a>
d0001350:	085b      	lsrs	r3, r3, #1
d0001352:	d1fb      	bne.n	d000134c <scale_masked.part.0+0x18>
d0001354:	461c      	mov	r4, r3
d0001356:	4001      	ands	r1, r0
d0001358:	40d1      	lsrs	r1, r2
d000135a:	ebc1 2101 	rsb	r1, r1, r1, lsl #8
d000135e:	1908      	adds	r0, r1, r4
d0001360:	f85d 4b04 	ldr.w	r4, [sp], #4
d0001364:	fbb0 f0f3 	udiv	r0, r0, r3
d0001368:	b2c0      	uxtb	r0, r0
d000136a:	4770      	bx	lr
d000136c:	2200      	movs	r2, #0
d000136e:	2400      	movs	r4, #0
d0001370:	085b      	lsrs	r3, r3, #1
d0001372:	3401      	adds	r4, #1
d0001374:	f013 0f01 	tst.w	r3, #1
d0001378:	d1fa      	bne.n	d0001370 <scale_masked.part.0+0x3c>
d000137a:	2301      	movs	r3, #1
d000137c:	40a3      	lsls	r3, r4
d000137e:	3b01      	subs	r3, #1
d0001380:	085c      	lsrs	r4, r3, #1
d0001382:	e7e8      	b.n	d0001356 <scale_masked.part.0+0x22>
d0001384:	460c      	mov	r4, r1
d0001386:	460b      	mov	r3, r1
d0001388:	e7e5      	b.n	d0001356 <scale_masked.part.0+0x22>
d000138a:	bf00      	nop

d000138c <render_view.constprop.0>:
d000138c:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0001390:	f8df 9168 	ldr.w	r9, [pc, #360]	; d00014fc <render_view.constprop.0+0x170>
d0001394:	b081      	sub	sp, #4
d0001396:	468a      	mov	sl, r1
d0001398:	f8b9 b000 	ldrh.w	fp, [r9]
d000139c:	f8b9 7002 	ldrh.w	r7, [r9, #2]
d00013a0:	f5bb 7ff0 	cmp.w	fp, #480	; 0x1e0
d00013a4:	f080 8097 	bcs.w	d00014d6 <render_view.constprop.0+0x14a>
d00013a8:	f5cb 75f0 	rsb	r5, fp, #480	; 0x1e0
d00013ac:	2600      	movs	r6, #0
d00013ae:	106d      	asrs	r5, r5, #1
d00013b0:	f5b7 7fa0 	cmp.w	r7, #320	; 0x140
d00013b4:	f080 808a 	bcs.w	d00014cc <render_view.constprop.0+0x140>
d00013b8:	f5c7 78a0 	rsb	r8, r7, #320	; 0x140
d00013bc:	f04f 0a00 	mov.w	sl, #0
d00013c0:	ea4f 0868 	mov.w	r8, r8, asr #1
d00013c4:	4c49      	ldr	r4, [pc, #292]	; (d00014ec <render_view.constprop.0+0x160>)
d00013c6:	7b23      	ldrb	r3, [r4, #12]
d00013c8:	7b62      	ldrb	r2, [r4, #13]
d00013ca:	7ba1      	ldrb	r1, [r4, #14]
d00013cc:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d00013d0:	7be2      	ldrb	r2, [r4, #15]
d00013d2:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d00013d6:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00013da:	681b      	ldr	r3, [r3, #0]
d00013dc:	68db      	ldr	r3, [r3, #12]
d00013de:	4798      	blx	r3
d00013e0:	7b23      	ldrb	r3, [r4, #12]
d00013e2:	7b62      	ldrb	r2, [r4, #13]
d00013e4:	7ba1      	ldrb	r1, [r4, #14]
d00013e6:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d00013ea:	7be2      	ldrb	r2, [r4, #15]
d00013ec:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d00013f0:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00013f4:	685b      	ldr	r3, [r3, #4]
d00013f6:	681b      	ldr	r3, [r3, #0]
d00013f8:	4798      	blx	r3
d00013fa:	7b23      	ldrb	r3, [r4, #12]
d00013fc:	7b62      	ldrb	r2, [r4, #13]
d00013fe:	7ba1      	ldrb	r1, [r4, #14]
d0001400:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0001404:	7be2      	ldrb	r2, [r4, #15]
d0001406:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d000140a:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d000140e:	681b      	ldr	r3, [r3, #0]
d0001410:	6b5b      	ldr	r3, [r3, #52]	; 0x34
d0001412:	4798      	blx	r3
d0001414:	b388      	cbz	r0, d000147a <render_view.constprop.0+0xee>
d0001416:	6801      	ldr	r1, [r0, #0]
d0001418:	b379      	cbz	r1, d000147a <render_view.constprop.0+0xee>
d000141a:	f1bb 0f00 	cmp.w	fp, #0
d000141e:	d02c      	beq.n	d000147a <render_view.constprop.0+0xee>
d0001420:	b35f      	cbz	r7, d000147a <render_view.constprop.0+0xee>
d0001422:	eb05 0585 	add.w	r5, r5, r5, lsl #2
d0001426:	44b3      	add	fp, r6
d0001428:	eb08 1885 	add.w	r8, r8, r5, lsl #6
d000142c:	f10b 3bff 	add.w	fp, fp, #4294967295	; 0xffffffff
d0001430:	f8b9 2000 	ldrh.w	r2, [r9]
d0001434:	2f01      	cmp	r7, #1
d0001436:	f8d9 c004 	ldr.w	ip, [r9, #4]
d000143a:	fb0a 6202 	mla	r2, sl, r2, r6
d000143e:	f81c 3002 	ldrb.w	r3, [ip, r2]
d0001442:	f801 3008 	strb.w	r3, [r1, r8]
d0001446:	d011      	beq.n	d000146c <render_view.constprop.0+0xe0>
d0001448:	f108 0301 	add.w	r3, r8, #1
d000144c:	eb01 0508 	add.w	r5, r1, r8
d0001450:	4462      	add	r2, ip
d0001452:	440b      	add	r3, r1
d0001454:	eb07 0c05 	add.w	ip, r7, r5
d0001458:	f8b9 e000 	ldrh.w	lr, [r9]
d000145c:	1b59      	subs	r1, r3, r5
d000145e:	fb01 f10e 	mul.w	r1, r1, lr
d0001462:	5c51      	ldrb	r1, [r2, r1]
d0001464:	f803 1b01 	strb.w	r1, [r3], #1
d0001468:	459c      	cmp	ip, r3
d000146a:	d1f5      	bne.n	d0001458 <render_view.constprop.0+0xcc>
d000146c:	45b3      	cmp	fp, r6
d000146e:	f508 78a0 	add.w	r8, r8, #320	; 0x140
d0001472:	d002      	beq.n	d000147a <render_view.constprop.0+0xee>
d0001474:	3601      	adds	r6, #1
d0001476:	6801      	ldr	r1, [r0, #0]
d0001478:	e7da      	b.n	d0001430 <render_view.constprop.0+0xa4>
d000147a:	4a1d      	ldr	r2, [pc, #116]	; (d00014f0 <render_view.constprop.0+0x164>)
d000147c:	7813      	ldrb	r3, [r2, #0]
d000147e:	f1c3 0301 	rsb	r3, r3, #1
d0001482:	b2db      	uxtb	r3, r3
d0001484:	7013      	strb	r3, [r2, #0]
d0001486:	7813      	ldrb	r3, [r2, #0]
d0001488:	7b20      	ldrb	r0, [r4, #12]
d000148a:	7b61      	ldrb	r1, [r4, #13]
d000148c:	7ba2      	ldrb	r2, [r4, #14]
d000148e:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d0001492:	b32b      	cbz	r3, d00014e0 <render_view.constprop.0+0x154>
d0001494:	7be3      	ldrb	r3, [r4, #15]
d0001496:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d000149a:	4d16      	ldr	r5, [pc, #88]	; (d00014f4 <render_view.constprop.0+0x168>)
d000149c:	4816      	ldr	r0, [pc, #88]	; (d00014f8 <render_view.constprop.0+0x16c>)
d000149e:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d00014a2:	6829      	ldr	r1, [r5, #0]
d00014a4:	6800      	ldr	r0, [r0, #0]
d00014a6:	681b      	ldr	r3, [r3, #0]
d00014a8:	6a5b      	ldr	r3, [r3, #36]	; 0x24
d00014aa:	4798      	blx	r3
d00014ac:	7b23      	ldrb	r3, [r4, #12]
d00014ae:	7b62      	ldrb	r2, [r4, #13]
d00014b0:	7ba1      	ldrb	r1, [r4, #14]
d00014b2:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d00014b6:	7be2      	ldrb	r2, [r4, #15]
d00014b8:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d00014bc:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00014c0:	681b      	ldr	r3, [r3, #0]
d00014c2:	681b      	ldr	r3, [r3, #0]
d00014c4:	b001      	add	sp, #4
d00014c6:	e8bd 4ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d00014ca:	4718      	bx	r3
d00014cc:	f44f 77a0 	mov.w	r7, #320	; 0x140
d00014d0:	f04f 0800 	mov.w	r8, #0
d00014d4:	e776      	b.n	d00013c4 <render_view.constprop.0+0x38>
d00014d6:	4606      	mov	r6, r0
d00014d8:	f44f 7bf0 	mov.w	fp, #480	; 0x1e0
d00014dc:	2500      	movs	r5, #0
d00014de:	e767      	b.n	d00013b0 <render_view.constprop.0+0x24>
d00014e0:	7be3      	ldrb	r3, [r4, #15]
d00014e2:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d00014e6:	4d04      	ldr	r5, [pc, #16]	; (d00014f8 <render_view.constprop.0+0x16c>)
d00014e8:	4802      	ldr	r0, [pc, #8]	; (d00014f4 <render_view.constprop.0+0x168>)
d00014ea:	e7d8      	b.n	d000149e <render_view.constprop.0+0x112>
d00014ec:	2001f000 	.word	0x2001f000
d00014f0:	d0004d68 	.word	0xd0004d68
d00014f4:	d0006a60 	.word	0xd0006a60
d00014f8:	d0006a80 	.word	0xd0006a80
d00014fc:	d0006578 	.word	0xd0006578

d0001500 <quantize_rgb_to_image.constprop.0>:
d0001500:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0001504:	460b      	mov	r3, r1
d0001506:	b08b      	sub	sp, #44	; 0x2c
d0001508:	2110      	movs	r1, #16
d000150a:	4606      	mov	r6, r0
d000150c:	f44f 3080 	mov.w	r0, #65536	; 0x10000
d0001510:	9304      	str	r3, [sp, #16]
d0001512:	f001 ffed 	bl	d00034f0 <calloc>
d0001516:	4b87      	ldr	r3, [pc, #540]	; (d0001734 <quantize_rgb_to_image.constprop.0+0x234>)
d0001518:	4605      	mov	r5, r0
d000151a:	f44f 3000 	mov.w	r0, #131072	; 0x20000
d000151e:	601d      	str	r5, [r3, #0]
d0001520:	f001 fff4 	bl	d000350c <malloc>
d0001524:	4603      	mov	r3, r0
d0001526:	4a84      	ldr	r2, [pc, #528]	; (d0001738 <quantize_rgb_to_image.constprop.0+0x238>)
d0001528:	f44f 3080 	mov.w	r0, #65536	; 0x10000
d000152c:	461c      	mov	r4, r3
d000152e:	9301      	str	r3, [sp, #4]
d0001530:	6013      	str	r3, [r2, #0]
d0001532:	f001 ffeb 	bl	d000350c <malloc>
d0001536:	4b81      	ldr	r3, [pc, #516]	; (d000173c <quantize_rgb_to_image.constprop.0+0x23c>)
d0001538:	2c00      	cmp	r4, #0
d000153a:	bf18      	it	ne
d000153c:	2d00      	cmpne	r5, #0
d000153e:	4680      	mov	r8, r0
d0001540:	6018      	str	r0, [r3, #0]
d0001542:	f000 8285 	beq.w	d0001a50 <quantize_rgb_to_image.constprop.0+0x550>
d0001546:	fab0 f480 	clz	r4, r0
d000154a:	0964      	lsrs	r4, r4, #5
d000154c:	2800      	cmp	r0, #0
d000154e:	f000 827f 	beq.w	d0001a50 <quantize_rgb_to_image.constprop.0+0x550>
d0001552:	f44f 3280 	mov.w	r2, #65536	; 0x10000
d0001556:	21ff      	movs	r1, #255	; 0xff
d0001558:	f001 fff6 	bl	d0003548 <memset>
d000155c:	9b04      	ldr	r3, [sp, #16]
d000155e:	2b00      	cmp	r3, #0
d0001560:	f000 824a 	beq.w	d00019f8 <quantize_rgb_to_image.constprop.0+0x4f8>
d0001564:	eb03 0a43 	add.w	sl, r3, r3, lsl #1
d0001568:	4632      	mov	r2, r6
d000156a:	46a6      	mov	lr, r4
d000156c:	f8dd b004 	ldr.w	fp, [sp, #4]
d0001570:	44b2      	add	sl, r6
d0001572:	9609      	str	r6, [sp, #36]	; 0x24
d0001574:	f892 c001 	ldrb.w	ip, [r2, #1]
d0001578:	3203      	adds	r2, #3
d000157a:	f812 1c03 	ldrb.w	r1, [r2, #-3]
d000157e:	ea4f 009c 	mov.w	r0, ip, lsr #2
d0001582:	f812 4c01 	ldrb.w	r4, [r2, #-1]
d0001586:	08cb      	lsrs	r3, r1, #3
d0001588:	0140      	lsls	r0, r0, #5
d000158a:	ea40 20c3 	orr.w	r0, r0, r3, lsl #11
d000158e:	ea40 00d4 	orr.w	r0, r0, r4, lsr #3
d0001592:	0106      	lsls	r6, r0, #4
d0001594:	eb05 1300 	add.w	r3, r5, r0, lsl #4
d0001598:	59af      	ldr	r7, [r5, r6]
d000159a:	f107 0901 	add.w	r9, r7, #1
d000159e:	b91f      	cbnz	r7, d00015a8 <quantize_rgb_to_image.constprop.0+0xa8>
d00015a0:	f82b 001e 	strh.w	r0, [fp, lr, lsl #1]
d00015a4:	f10e 0e01 	add.w	lr, lr, #1
d00015a8:	685f      	ldr	r7, [r3, #4]
d00015aa:	4592      	cmp	sl, r2
d00015ac:	6898      	ldr	r0, [r3, #8]
d00015ae:	4439      	add	r1, r7
d00015b0:	68df      	ldr	r7, [r3, #12]
d00015b2:	4460      	add	r0, ip
d00015b4:	f845 9006 	str.w	r9, [r5, r6]
d00015b8:	443c      	add	r4, r7
d00015ba:	6059      	str	r1, [r3, #4]
d00015bc:	e9c3 0402 	strd	r0, r4, [r3, #8]
d00015c0:	d1d8      	bne.n	d0001574 <quantize_rgb_to_image.constprop.0+0x74>
d00015c2:	f1be 0f00 	cmp.w	lr, #0
d00015c6:	f000 8217 	beq.w	d00019f8 <quantize_rgb_to_image.constprop.0+0x4f8>
d00015ca:	f8df 8174 	ldr.w	r8, [pc, #372]	; d0001740 <quantize_rgb_to_image.constprop.0+0x240>
d00015ce:	2300      	movs	r3, #0
d00015d0:	485b      	ldr	r0, [pc, #364]	; (d0001740 <quantize_rgb_to_image.constprop.0+0x240>)
d00015d2:	2401      	movs	r4, #1
d00015d4:	46c3      	mov	fp, r8
d00015d6:	9003      	str	r0, [sp, #12]
d00015d8:	e9c0 3e00 	strd	r3, lr, [r0]
d00015dc:	f7ff fde4 	bl	d00011a8 <update_box>
d00015e0:	2000      	movs	r0, #0
d00015e2:	fa1f f984 	uxth.w	r9, r4
d00015e6:	9b03      	ldr	r3, [sp, #12]
d00015e8:	f04f 36ff 	mov.w	r6, #4294967295	; 0xffffffff
d00015ec:	4605      	mov	r5, r0
d00015ee:	7b99      	ldrb	r1, [r3, #14]
d00015f0:	3314      	adds	r3, #20
d00015f2:	f813 cc08 	ldrb.w	ip, [r3, #-8]
d00015f6:	f813 2c05 	ldrb.w	r2, [r3, #-5]
d00015fa:	f813 7c07 	ldrb.w	r7, [r3, #-7]
d00015fe:	1a52      	subs	r2, r2, r1
d0001600:	f813 1c03 	ldrb.w	r1, [r3, #-3]
d0001604:	eba7 070c 	sub.w	r7, r7, ip
d0001608:	f813 cc04 	ldrb.w	ip, [r3, #-4]
d000160c:	42ba      	cmp	r2, r7
d000160e:	eba1 010c 	sub.w	r1, r1, ip
d0001612:	bf38      	it	cc
d0001614:	463a      	movcc	r2, r7
d0001616:	f853 7c0c 	ldr.w	r7, [r3, #-12]
d000161a:	428a      	cmp	r2, r1
d000161c:	bf38      	it	cc
d000161e:	460a      	movcc	r2, r1
d0001620:	f853 1c10 	ldr.w	r1, [r3, #-16]
d0001624:	2901      	cmp	r1, #1
d0001626:	fb07 f202 	mul.w	r2, r7, r2
d000162a:	d903      	bls.n	d0001634 <quantize_rgb_to_image.constprop.0+0x134>
d000162c:	42aa      	cmp	r2, r5
d000162e:	d901      	bls.n	d0001634 <quantize_rgb_to_image.constprop.0+0x134>
d0001630:	4615      	mov	r5, r2
d0001632:	4606      	mov	r6, r0
d0001634:	3001      	adds	r0, #1
d0001636:	42a0      	cmp	r0, r4
d0001638:	d1d9      	bne.n	d00015ee <quantize_rgb_to_image.constprop.0+0xee>
d000163a:	1c73      	adds	r3, r6, #1
d000163c:	f000 8086 	beq.w	d000174c <quantize_rgb_to_image.constprop.0+0x24c>
d0001640:	eb06 0586 	add.w	r5, r6, r6, lsl #2
d0001644:	00b3      	lsls	r3, r6, #2
d0001646:	eb08 0585 	add.w	r5, r8, r5, lsl #2
d000164a:	9302      	str	r3, [sp, #8]
d000164c:	7be9      	ldrb	r1, [r5, #15]
d000164e:	7c28      	ldrb	r0, [r5, #16]
d0001650:	7baa      	ldrb	r2, [r5, #14]
d0001652:	7c6b      	ldrb	r3, [r5, #17]
d0001654:	1a8a      	subs	r2, r1, r2
d0001656:	7b2f      	ldrb	r7, [r5, #12]
d0001658:	1a1b      	subs	r3, r3, r0
d000165a:	7b69      	ldrb	r1, [r5, #13]
d000165c:	4610      	mov	r0, r2
d000165e:	429a      	cmp	r2, r3
d0001660:	eba1 0107 	sub.w	r1, r1, r7
d0001664:	bf38      	it	cc
d0001666:	4618      	movcc	r0, r3
d0001668:	4281      	cmp	r1, r0
d000166a:	d356      	bcc.n	d000171a <quantize_rgb_to_image.constprop.0+0x21a>
d000166c:	2300      	movs	r3, #0
d000166e:	4a35      	ldr	r2, [pc, #212]	; (d0001744 <quantize_rgb_to_image.constprop.0+0x244>)
d0001670:	7013      	strb	r3, [r2, #0]
d0001672:	00b3      	lsls	r3, r6, #2
d0001674:	9801      	ldr	r0, [sp, #4]
d0001676:	2202      	movs	r2, #2
d0001678:	eb03 0a06 	add.w	sl, r3, r6
d000167c:	4b32      	ldr	r3, [pc, #200]	; (d0001748 <quantize_rgb_to_image.constprop.0+0x248>)
d000167e:	eb08 098a 	add.w	r9, r8, sl, lsl #2
d0001682:	f858 702a 	ldr.w	r7, [r8, sl, lsl #2]
d0001686:	f8d9 1004 	ldr.w	r1, [r9, #4]
d000168a:	eb00 0047 	add.w	r0, r0, r7, lsl #1
d000168e:	f002 f856 	bl	d000373e <qsort>
d0001692:	f858 a02a 	ldr.w	sl, [r8, sl, lsl #2]
d0001696:	f06f 4000 	mvn.w	r0, #2147483648	; 0x80000000
d000169a:	4b27      	ldr	r3, [pc, #156]	; (d0001738 <quantize_rgb_to_image.constprop.0+0x238>)
d000169c:	f8d9 7008 	ldr.w	r7, [r9, #8]
d00016a0:	4652      	mov	r2, sl
d00016a2:	681b      	ldr	r3, [r3, #0]
d00016a4:	4450      	add	r0, sl
d00016a6:	f8d9 9004 	ldr.w	r9, [r9, #4]
d00016aa:	087f      	lsrs	r7, r7, #1
d00016ac:	eb03 0040 	add.w	r0, r3, r0, lsl #1
d00016b0:	9301      	str	r3, [sp, #4]
d00016b2:	4b20      	ldr	r3, [pc, #128]	; (d0001734 <quantize_rgb_to_image.constprop.0+0x234>)
d00016b4:	eb0a 0c09 	add.w	ip, sl, r9
d00016b8:	2100      	movs	r1, #0
d00016ba:	f8d3 e000 	ldr.w	lr, [r3]
d00016be:	e007      	b.n	d00016d0 <quantize_rgb_to_image.constprop.0+0x1d0>
d00016c0:	f830 3f02 	ldrh.w	r3, [r0, #2]!
d00016c4:	011b      	lsls	r3, r3, #4
d00016c6:	f85e 3003 	ldr.w	r3, [lr, r3]
d00016ca:	4419      	add	r1, r3
d00016cc:	428f      	cmp	r7, r1
d00016ce:	d92b      	bls.n	d0001728 <quantize_rgb_to_image.constprop.0+0x228>
d00016d0:	4562      	cmp	r2, ip
d00016d2:	f102 0201 	add.w	r2, r2, #1
d00016d6:	d3f3      	bcc.n	d00016c0 <quantize_rgb_to_image.constprop.0+0x1c0>
d00016d8:	eb0a 0259 	add.w	r2, sl, r9, lsr #1
d00016dc:	9b02      	ldr	r3, [sp, #8]
d00016de:	f10b 0b14 	add.w	fp, fp, #20
d00016e2:	f8cb 2000 	str.w	r2, [fp]
d00016e6:	4628      	mov	r0, r5
d00016e8:	4433      	add	r3, r6
d00016ea:	3401      	adds	r4, #1
d00016ec:	461e      	mov	r6, r3
d00016ee:	f858 3023 	ldr.w	r3, [r8, r3, lsl #2]
d00016f2:	4499      	add	r9, r3
d00016f4:	1ad3      	subs	r3, r2, r3
d00016f6:	eb08 0686 	add.w	r6, r8, r6, lsl #2
d00016fa:	eba9 0202 	sub.w	r2, r9, r2
d00016fe:	f8cb 2004 	str.w	r2, [fp, #4]
d0001702:	6073      	str	r3, [r6, #4]
d0001704:	f7ff fd50 	bl	d00011a8 <update_box>
d0001708:	4658      	mov	r0, fp
d000170a:	f7ff fd4d 	bl	d00011a8 <update_box>
d000170e:	f5b4 7f80 	cmp.w	r4, #256	; 0x100
d0001712:	f47f af65 	bne.w	d00015e0 <quantize_rgb_to_image.constprop.0+0xe0>
d0001716:	9407      	str	r4, [sp, #28]
d0001718:	e01a      	b.n	d0001750 <quantize_rgb_to_image.constprop.0+0x250>
d000171a:	429a      	cmp	r2, r3
d000171c:	4a09      	ldr	r2, [pc, #36]	; (d0001744 <quantize_rgb_to_image.constprop.0+0x244>)
d000171e:	bf2c      	ite	cs
d0001720:	2301      	movcs	r3, #1
d0001722:	2302      	movcc	r3, #2
d0001724:	7013      	strb	r3, [r2, #0]
d0001726:	e7a4      	b.n	d0001672 <quantize_rgb_to_image.constprop.0+0x172>
d0001728:	4592      	cmp	sl, r2
d000172a:	d2d5      	bcs.n	d00016d8 <quantize_rgb_to_image.constprop.0+0x1d8>
d000172c:	4562      	cmp	r2, ip
d000172e:	d3d5      	bcc.n	d00016dc <quantize_rgb_to_image.constprop.0+0x1dc>
d0001730:	e7d2      	b.n	d00016d8 <quantize_rgb_to_image.constprop.0+0x1d8>
d0001732:	bf00      	nop
d0001734:	d0006574 	.word	0xd0006574
d0001738:	d0004d70 	.word	0xd0004d70
d000173c:	d0004d6c 	.word	0xd0004d6c
d0001740:	d0004d74 	.word	0xd0004d74
d0001744:	d0006980 	.word	0xd0006980
d0001748:	d000113d 	.word	0xd000113d
d000174c:	f8cd 901c 	str.w	r9, [sp, #28]
d0001750:	4bc5      	ldr	r3, [pc, #788]	; (d0001a68 <quantize_rgb_to_image.constprop.0+0x568>)
d0001752:	9907      	ldr	r1, [sp, #28]
d0001754:	681a      	ldr	r2, [r3, #0]
d0001756:	2314      	movs	r3, #20
d0001758:	f8df b328 	ldr.w	fp, [pc, #808]	; d0001a84 <quantize_rgb_to_image.constprop.0+0x584>
d000175c:	9202      	str	r2, [sp, #8]
d000175e:	3a02      	subs	r2, #2
d0001760:	f8dd a00c 	ldr.w	sl, [sp, #12]
d0001764:	9206      	str	r2, [sp, #24]
d0001766:	4ac1      	ldr	r2, [pc, #772]	; (d0001a6c <quantize_rgb_to_image.constprop.0+0x56c>)
d0001768:	9108      	str	r1, [sp, #32]
d000176a:	fb03 2301 	mla	r3, r3, r1, r2
d000176e:	f8cd b004 	str.w	fp, [sp, #4]
d0001772:	9305      	str	r3, [sp, #20]
d0001774:	4bbe      	ldr	r3, [pc, #760]	; (d0001a70 <quantize_rgb_to_image.constprop.0+0x570>)
d0001776:	f8d3 8000 	ldr.w	r8, [r3]
d000177a:	e9da 2300 	ldrd	r2, r3, [sl]
d000177e:	eb02 0b03 	add.w	fp, r2, r3
d0001782:	455a      	cmp	r2, fp
d0001784:	f080 811f 	bcs.w	d00019c6 <quantize_rgb_to_image.constprop.0+0x4c6>
d0001788:	9b06      	ldr	r3, [sp, #24]
d000178a:	f102 4200 	add.w	r2, r2, #2147483648	; 0x80000000
d000178e:	2400      	movs	r4, #0
d0001790:	2500      	movs	r5, #0
d0001792:	3a01      	subs	r2, #1
d0001794:	eb03 0b4b 	add.w	fp, r3, fp, lsl #1
d0001798:	9b02      	ldr	r3, [sp, #8]
d000179a:	f04f 0900 	mov.w	r9, #0
d000179e:	4626      	mov	r6, r4
d00017a0:	462f      	mov	r7, r5
d00017a2:	eb03 0242 	add.w	r2, r3, r2, lsl #1
d00017a6:	4620      	mov	r0, r4
d00017a8:	4629      	mov	r1, r5
d00017aa:	f832 3f02 	ldrh.w	r3, [r2, #2]!
d00017ae:	ea4f 1c03 	mov.w	ip, r3, lsl #4
d00017b2:	eb08 1303 	add.w	r3, r8, r3, lsl #4
d00017b6:	f858 c00c 	ldr.w	ip, [r8, ip]
d00017ba:	f8d3 e004 	ldr.w	lr, [r3, #4]
d00017be:	44e1      	add	r9, ip
d00017c0:	f8d3 c008 	ldr.w	ip, [r3, #8]
d00017c4:	eb10 000e 	adds.w	r0, r0, lr
d00017c8:	68db      	ldr	r3, [r3, #12]
d00017ca:	f141 0100 	adc.w	r1, r1, #0
d00017ce:	eb16 060c 	adds.w	r6, r6, ip
d00017d2:	f147 0700 	adc.w	r7, r7, #0
d00017d6:	18e4      	adds	r4, r4, r3
d00017d8:	f145 0500 	adc.w	r5, r5, #0
d00017dc:	455a      	cmp	r2, fp
d00017de:	d1e4      	bne.n	d00017aa <quantize_rgb_to_image.constprop.0+0x2aa>
d00017e0:	f1b9 0f00 	cmp.w	r9, #0
d00017e4:	f000 80ef 	beq.w	d00019c6 <quantize_rgb_to_image.constprop.0+0x4c6>
d00017e8:	464a      	mov	r2, r9
d00017ea:	2300      	movs	r3, #0
d00017ec:	f001 fd04 	bl	d00031f8 <__aeabi_uldivmod>
d00017f0:	4603      	mov	r3, r0
d00017f2:	464a      	mov	r2, r9
d00017f4:	4630      	mov	r0, r6
d00017f6:	4639      	mov	r1, r7
d00017f8:	b2de      	uxtb	r6, r3
d00017fa:	2300      	movs	r3, #0
d00017fc:	f001 fcfc 	bl	d00031f8 <__aeabi_uldivmod>
d0001800:	4603      	mov	r3, r0
d0001802:	0436      	lsls	r6, r6, #16
d0001804:	4620      	mov	r0, r4
d0001806:	b2dc      	uxtb	r4, r3
d0001808:	464a      	mov	r2, r9
d000180a:	2300      	movs	r3, #0
d000180c:	4629      	mov	r1, r5
d000180e:	ea46 2604 	orr.w	r6, r6, r4, lsl #8
d0001812:	f001 fcf1 	bl	d00031f8 <__aeabi_uldivmod>
d0001816:	b2c3      	uxtb	r3, r0
d0001818:	431e      	orrs	r6, r3
d000181a:	f046 467f 	orr.w	r6, r6, #4278190080	; 0xff000000
d000181e:	9b01      	ldr	r3, [sp, #4]
d0001820:	f10a 0a14 	add.w	sl, sl, #20
d0001824:	f843 6f04 	str.w	r6, [r3, #4]!
d0001828:	9301      	str	r3, [sp, #4]
d000182a:	9b05      	ldr	r3, [sp, #20]
d000182c:	459a      	cmp	sl, r3
d000182e:	d1a4      	bne.n	d000177a <quantize_rgb_to_image.constprop.0+0x27a>
d0001830:	9b07      	ldr	r3, [sp, #28]
d0001832:	f5b3 7f80 	cmp.w	r3, #256	; 0x100
d0001836:	f000 80f4 	beq.w	d0001a22 <quantize_rgb_to_image.constprop.0+0x522>
d000183a:	9d07      	ldr	r5, [sp, #28]
d000183c:	f8df b248 	ldr.w	fp, [pc, #584]	; d0001a88 <quantize_rgb_to_image.constprop.0+0x588>
d0001840:	f1c5 01ff 	rsb	r1, r5, #255	; 0xff
d0001844:	1cab      	adds	r3, r5, #2
d0001846:	f5c5 7080 	rsb	r0, r5, #256	; 0x100
d000184a:	b289      	uxth	r1, r1
d000184c:	eb0b 0283 	add.w	r2, fp, r3, lsl #2
d0001850:	2905      	cmp	r1, #5
d0001852:	b284      	uxth	r4, r0
d0001854:	f3c2 0280 	ubfx	r2, r2, #2, #1
d0001858:	d925      	bls.n	d00018a6 <quantize_rgb_to_image.constprop.0+0x3a6>
d000185a:	b13a      	cbz	r2, d000186c <quantize_rgb_to_image.constprop.0+0x36c>
d000185c:	4628      	mov	r0, r5
d000185e:	f04f 417f 	mov.w	r1, #4278190080	; 0xff000000
d0001862:	3001      	adds	r0, #1
d0001864:	f84b 1023 	str.w	r1, [fp, r3, lsl #2]
d0001868:	b280      	uxth	r0, r0
d000186a:	9007      	str	r0, [sp, #28]
d000186c:	1aa4      	subs	r4, r4, r2
d000186e:	18d1      	adds	r1, r2, r3
d0001870:	f04f 427f 	mov.w	r2, #4278190080	; 0xff000000
d0001874:	f04f 437f 	mov.w	r3, #4278190080	; 0xff000000
d0001878:	f3c4 004e 	ubfx	r0, r4, #1, #15
d000187c:	eb0b 0181 	add.w	r1, fp, r1, lsl #2
d0001880:	b2a4      	uxth	r4, r4
d0001882:	3801      	subs	r0, #1
d0001884:	b280      	uxth	r0, r0
d0001886:	3001      	adds	r0, #1
d0001888:	eb01 00c0 	add.w	r0, r1, r0, lsl #3
d000188c:	e8e1 2302 	strd	r2, r3, [r1], #8
d0001890:	4288      	cmp	r0, r1
d0001892:	d1fb      	bne.n	d000188c <quantize_rgb_to_image.constprop.0+0x38c>
d0001894:	f024 0301 	bic.w	r3, r4, #1
d0001898:	9a07      	ldr	r2, [sp, #28]
d000189a:	441a      	add	r2, r3
d000189c:	42a3      	cmp	r3, r4
d000189e:	b292      	uxth	r2, r2
d00018a0:	9207      	str	r2, [sp, #28]
d00018a2:	d02d      	beq.n	d0001900 <quantize_rgb_to_image.constprop.0+0x400>
d00018a4:	1c93      	adds	r3, r2, #2
d00018a6:	9807      	ldr	r0, [sp, #28]
d00018a8:	f04f 427f 	mov.w	r2, #4278190080	; 0xff000000
d00018ac:	1c41      	adds	r1, r0, #1
d00018ae:	f84b 2023 	str.w	r2, [fp, r3, lsl #2]
d00018b2:	b289      	uxth	r1, r1
d00018b4:	f5b1 7f80 	cmp.w	r1, #256	; 0x100
d00018b8:	d022      	beq.n	d0001900 <quantize_rgb_to_image.constprop.0+0x400>
d00018ba:	b29b      	uxth	r3, r3
d00018bc:	3102      	adds	r1, #2
d00018be:	f5b3 7f80 	cmp.w	r3, #256	; 0x100
d00018c2:	f84b 2021 	str.w	r2, [fp, r1, lsl #2]
d00018c6:	d01b      	beq.n	d0001900 <quantize_rgb_to_image.constprop.0+0x400>
d00018c8:	1cc1      	adds	r1, r0, #3
d00018ca:	3302      	adds	r3, #2
d00018cc:	b289      	uxth	r1, r1
d00018ce:	f84b 2023 	str.w	r2, [fp, r3, lsl #2]
d00018d2:	f5b1 7f80 	cmp.w	r1, #256	; 0x100
d00018d6:	d013      	beq.n	d0001900 <quantize_rgb_to_image.constprop.0+0x400>
d00018d8:	4603      	mov	r3, r0
d00018da:	3004      	adds	r0, #4
d00018dc:	3102      	adds	r1, #2
d00018de:	b280      	uxth	r0, r0
d00018e0:	f84b 2021 	str.w	r2, [fp, r1, lsl #2]
d00018e4:	f5b0 7f80 	cmp.w	r0, #256	; 0x100
d00018e8:	d00a      	beq.n	d0001900 <quantize_rgb_to_image.constprop.0+0x400>
d00018ea:	3305      	adds	r3, #5
d00018ec:	3002      	adds	r0, #2
d00018ee:	b29b      	uxth	r3, r3
d00018f0:	f84b 2020 	str.w	r2, [fp, r0, lsl #2]
d00018f4:	f5b3 7f80 	cmp.w	r3, #256	; 0x100
d00018f8:	d002      	beq.n	d0001900 <quantize_rgb_to_image.constprop.0+0x400>
d00018fa:	3302      	adds	r3, #2
d00018fc:	f84b 2023 	str.w	r2, [fp, r3, lsl #2]
d0001900:	9804      	ldr	r0, [sp, #16]
d0001902:	f001 fe03 	bl	d000350c <malloc>
d0001906:	4604      	mov	r4, r0
d0001908:	f8cb 0004 	str.w	r0, [fp, #4]
d000190c:	2800      	cmp	r0, #0
d000190e:	f000 808b 	beq.w	d0001a28 <quantize_rgb_to_image.constprop.0+0x528>
d0001912:	4b58      	ldr	r3, [pc, #352]	; (d0001a74 <quantize_rgb_to_image.constprop.0+0x574>)
d0001914:	2600      	movs	r6, #0
d0001916:	9d09      	ldr	r5, [sp, #36]	; 0x24
d0001918:	681b      	ldr	r3, [r3, #0]
d000191a:	f8cd 8018 	str.w	r8, [sp, #24]
d000191e:	9301      	str	r3, [sp, #4]
d0001920:	e007      	b.n	d0001932 <quantize_rgb_to_image.constprop.0+0x432>
d0001922:	f8db 3004 	ldr.w	r3, [fp, #4]
d0001926:	3503      	adds	r5, #3
d0001928:	5599      	strb	r1, [r3, r6]
d000192a:	3601      	adds	r6, #1
d000192c:	9b04      	ldr	r3, [sp, #16]
d000192e:	42b3      	cmp	r3, r6
d0001930:	d04c      	beq.n	d00019cc <quantize_rgb_to_image.constprop.0+0x4cc>
d0001932:	786a      	ldrb	r2, [r5, #1]
d0001934:	782b      	ldrb	r3, [r5, #0]
d0001936:	0892      	lsrs	r2, r2, #2
d0001938:	78a9      	ldrb	r1, [r5, #2]
d000193a:	08db      	lsrs	r3, r3, #3
d000193c:	0152      	lsls	r2, r2, #5
d000193e:	ea42 22c3 	orr.w	r2, r2, r3, lsl #11
d0001942:	9b01      	ldr	r3, [sp, #4]
d0001944:	ea42 02d1 	orr.w	r2, r2, r1, lsr #3
d0001948:	4617      	mov	r7, r2
d000194a:	b212      	sxth	r2, r2
d000194c:	5dd9      	ldrb	r1, [r3, r7]
d000194e:	29ff      	cmp	r1, #255	; 0xff
d0001950:	d1e7      	bne.n	d0001922 <quantize_rgb_to_image.constprop.0+0x422>
d0001952:	f002 011f 	and.w	r1, r2, #31
d0001956:	0af8      	lsrs	r0, r7, #11
d0001958:	f3c7 1845 	ubfx	r8, r7, #5, #6
d000195c:	ea4f 3957 	mov.w	r9, r7, lsr #13
d0001960:	f3c7 2341 	ubfx	r3, r7, #9, #2
d0001964:	f3c2 0282 	ubfx	r2, r2, #2, #3
d0001968:	2400      	movs	r4, #0
d000196a:	ea49 09c0 	orr.w	r9, r9, r0, lsl #3
d000196e:	ea43 0888 	orr.w	r8, r3, r8, lsl #2
d0001972:	f8df c110 	ldr.w	ip, [pc, #272]	; d0001a84 <quantize_rgb_to_image.constprop.0+0x584>
d0001976:	ea42 02c1 	orr.w	r2, r2, r1, lsl #3
d000197a:	f04f 3eff 	mov.w	lr, #4294967295	; 0xffffffff
d000197e:	f8dd a020 	ldr.w	sl, [sp, #32]
d0001982:	9403      	str	r4, [sp, #12]
d0001984:	9705      	str	r7, [sp, #20]
d0001986:	f85c 3f04 	ldr.w	r3, [ip, #4]!
d000198a:	b2a7      	uxth	r7, r4
d000198c:	3401      	adds	r4, #1
d000198e:	f3c3 4007 	ubfx	r0, r3, #16, #8
d0001992:	f3c3 2107 	ubfx	r1, r3, #8, #8
d0001996:	b2db      	uxtb	r3, r3
d0001998:	eba9 0000 	sub.w	r0, r9, r0
d000199c:	eba8 0101 	sub.w	r1, r8, r1
d00019a0:	1ad3      	subs	r3, r2, r3
d00019a2:	fb00 f000 	mul.w	r0, r0, r0
d00019a6:	fb01 0101 	mla	r1, r1, r1, r0
d00019aa:	fb03 1303 	mla	r3, r3, r3, r1
d00019ae:	4573      	cmp	r3, lr
d00019b0:	d201      	bcs.n	d00019b6 <quantize_rgb_to_image.constprop.0+0x4b6>
d00019b2:	469e      	mov	lr, r3
d00019b4:	9703      	str	r7, [sp, #12]
d00019b6:	45a2      	cmp	sl, r4
d00019b8:	d1e5      	bne.n	d0001986 <quantize_rgb_to_image.constprop.0+0x486>
d00019ba:	9f05      	ldr	r7, [sp, #20]
d00019bc:	f89d 100c 	ldrb.w	r1, [sp, #12]
d00019c0:	9b01      	ldr	r3, [sp, #4]
d00019c2:	55d9      	strb	r1, [r3, r7]
d00019c4:	e7ad      	b.n	d0001922 <quantize_rgb_to_image.constprop.0+0x422>
d00019c6:	f04f 467f 	mov.w	r6, #4278190080	; 0xff000000
d00019ca:	e728      	b.n	d000181e <quantize_rgb_to_image.constprop.0+0x31e>
d00019cc:	f8dd 8018 	ldr.w	r8, [sp, #24]
d00019d0:	4640      	mov	r0, r8
d00019d2:	f001 fda3 	bl	d000351c <free>
d00019d6:	9802      	ldr	r0, [sp, #8]
d00019d8:	f001 fda0 	bl	d000351c <free>
d00019dc:	9801      	ldr	r0, [sp, #4]
d00019de:	f001 fd9d 	bl	d000351c <free>
d00019e2:	2300      	movs	r3, #0
d00019e4:	4a22      	ldr	r2, [pc, #136]	; (d0001a70 <quantize_rgb_to_image.constprop.0+0x570>)
d00019e6:	2001      	movs	r0, #1
d00019e8:	6013      	str	r3, [r2, #0]
d00019ea:	4a1f      	ldr	r2, [pc, #124]	; (d0001a68 <quantize_rgb_to_image.constprop.0+0x568>)
d00019ec:	6013      	str	r3, [r2, #0]
d00019ee:	4a21      	ldr	r2, [pc, #132]	; (d0001a74 <quantize_rgb_to_image.constprop.0+0x574>)
d00019f0:	6013      	str	r3, [r2, #0]
d00019f2:	b00b      	add	sp, #44	; 0x2c
d00019f4:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d00019f8:	4628      	mov	r0, r5
d00019fa:	2400      	movs	r4, #0
d00019fc:	f001 fd8e 	bl	d000351c <free>
d0001a00:	9801      	ldr	r0, [sp, #4]
d0001a02:	f001 fd8b 	bl	d000351c <free>
d0001a06:	4640      	mov	r0, r8
d0001a08:	f001 fd88 	bl	d000351c <free>
d0001a0c:	481a      	ldr	r0, [pc, #104]	; (d0001a78 <quantize_rgb_to_image.constprop.0+0x578>)
d0001a0e:	4b18      	ldr	r3, [pc, #96]	; (d0001a70 <quantize_rgb_to_image.constprop.0+0x570>)
d0001a10:	601c      	str	r4, [r3, #0]
d0001a12:	4b15      	ldr	r3, [pc, #84]	; (d0001a68 <quantize_rgb_to_image.constprop.0+0x568>)
d0001a14:	601c      	str	r4, [r3, #0]
d0001a16:	4b17      	ldr	r3, [pc, #92]	; (d0001a74 <quantize_rgb_to_image.constprop.0+0x574>)
d0001a18:	601c      	str	r4, [r3, #0]
d0001a1a:	f7ff fc5d 	bl	d00012d8 <set_status>
d0001a1e:	4620      	mov	r0, r4
d0001a20:	e7e7      	b.n	d00019f2 <quantize_rgb_to_image.constprop.0+0x4f2>
d0001a22:	f8df b064 	ldr.w	fp, [pc, #100]	; d0001a88 <quantize_rgb_to_image.constprop.0+0x588>
d0001a26:	e76b      	b.n	d0001900 <quantize_rgb_to_image.constprop.0+0x400>
d0001a28:	4640      	mov	r0, r8
d0001a2a:	4d12      	ldr	r5, [pc, #72]	; (d0001a74 <quantize_rgb_to_image.constprop.0+0x574>)
d0001a2c:	f001 fd76 	bl	d000351c <free>
d0001a30:	9802      	ldr	r0, [sp, #8]
d0001a32:	f001 fd73 	bl	d000351c <free>
d0001a36:	6828      	ldr	r0, [r5, #0]
d0001a38:	f001 fd70 	bl	d000351c <free>
d0001a3c:	4b0c      	ldr	r3, [pc, #48]	; (d0001a70 <quantize_rgb_to_image.constprop.0+0x570>)
d0001a3e:	480f      	ldr	r0, [pc, #60]	; (d0001a7c <quantize_rgb_to_image.constprop.0+0x57c>)
d0001a40:	601c      	str	r4, [r3, #0]
d0001a42:	4b09      	ldr	r3, [pc, #36]	; (d0001a68 <quantize_rgb_to_image.constprop.0+0x568>)
d0001a44:	602c      	str	r4, [r5, #0]
d0001a46:	601c      	str	r4, [r3, #0]
d0001a48:	f7ff fc46 	bl	d00012d8 <set_status>
d0001a4c:	4620      	mov	r0, r4
d0001a4e:	e7d0      	b.n	d00019f2 <quantize_rgb_to_image.constprop.0+0x4f2>
d0001a50:	4628      	mov	r0, r5
d0001a52:	2400      	movs	r4, #0
d0001a54:	f001 fd62 	bl	d000351c <free>
d0001a58:	9801      	ldr	r0, [sp, #4]
d0001a5a:	f001 fd5f 	bl	d000351c <free>
d0001a5e:	4640      	mov	r0, r8
d0001a60:	f001 fd5c 	bl	d000351c <free>
d0001a64:	4806      	ldr	r0, [pc, #24]	; (d0001a80 <quantize_rgb_to_image.constprop.0+0x580>)
d0001a66:	e7d2      	b.n	d0001a0e <quantize_rgb_to_image.constprop.0+0x50e>
d0001a68:	d0004d70 	.word	0xd0004d70
d0001a6c:	d0004d74 	.word	0xd0004d74
d0001a70:	d0006574 	.word	0xd0006574
d0001a74:	d0004d6c 	.word	0xd0004d6c
d0001a78:	d0004868 	.word	0xd0004868
d0001a7c:	d000487c 	.word	0xd000487c
d0001a80:	d0004848 	.word	0xd0004848
d0001a84:	d000657c 	.word	0xd000657c
d0001a88:	d0006578 	.word	0xd0006578

d0001a8c <free_image.constprop.0>:
d0001a8c:	b508      	push	{r3, lr}
d0001a8e:	4b06      	ldr	r3, [pc, #24]	; (d0001aa8 <free_image.constprop.0+0x1c>)
d0001a90:	6858      	ldr	r0, [r3, #4]
d0001a92:	b108      	cbz	r0, d0001a98 <free_image.constprop.0+0xc>
d0001a94:	f001 fd42 	bl	d000351c <free>
d0001a98:	f44f 6281 	mov.w	r2, #1032	; 0x408
d0001a9c:	2100      	movs	r1, #0
d0001a9e:	4802      	ldr	r0, [pc, #8]	; (d0001aa8 <free_image.constprop.0+0x1c>)
d0001aa0:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
d0001aa4:	f001 bd50 	b.w	d0003548 <memset>
d0001aa8:	d0006578 	.word	0xd0006578

d0001aac <draw_message.constprop.0>:
d0001aac:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
d0001ab0:	4c68      	ldr	r4, [pc, #416]	; (d0001c54 <draw_message.constprop.0+0x1a8>)
d0001ab2:	4606      	mov	r6, r0
d0001ab4:	4d68      	ldr	r5, [pc, #416]	; (d0001c58 <draw_message.constprop.0+0x1ac>)
d0001ab6:	b082      	sub	sp, #8
d0001ab8:	7b22      	ldrb	r2, [r4, #12]
d0001aba:	f04f 0902 	mov.w	r9, #2
d0001abe:	7b63      	ldrb	r3, [r4, #13]
d0001ac0:	7ba0      	ldrb	r0, [r4, #14]
d0001ac2:	ea42 2303 	orr.w	r3, r2, r3, lsl #8
d0001ac6:	7be1      	ldrb	r1, [r4, #15]
d0001ac8:	f8df 8198 	ldr.w	r8, [pc, #408]	; d0001c64 <draw_message.constprop.0+0x1b8>
d0001acc:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
d0001ad0:	4862      	ldr	r0, [pc, #392]	; (d0001c5c <draw_message.constprop.0+0x1b0>)
d0001ad2:	4f63      	ldr	r7, [pc, #396]	; (d0001c60 <draw_message.constprop.0+0x1b4>)
d0001ad4:	ea43 6301 	orr.w	r3, r3, r1, lsl #24
d0001ad8:	f8df a18c 	ldr.w	sl, [pc, #396]	; d0001c68 <draw_message.constprop.0+0x1bc>
d0001adc:	681b      	ldr	r3, [r3, #0]
d0001ade:	6cdb      	ldr	r3, [r3, #76]	; 0x4c
d0001ae0:	4798      	blx	r3
d0001ae2:	782b      	ldrb	r3, [r5, #0]
d0001ae4:	2b00      	cmp	r3, #0
d0001ae6:	f000 809b 	beq.w	d0001c20 <draw_message.constprop.0+0x174>
d0001aea:	f8d8 0000 	ldr.w	r0, [r8]
d0001aee:	f894 c00c 	ldrb.w	ip, [r4, #12]
d0001af2:	7b61      	ldrb	r1, [r4, #13]
d0001af4:	7ba2      	ldrb	r2, [r4, #14]
d0001af6:	ea4c 2101 	orr.w	r1, ip, r1, lsl #8
d0001afa:	7be3      	ldrb	r3, [r4, #15]
d0001afc:	9001      	str	r0, [sp, #4]
d0001afe:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d0001b02:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0001b06:	681b      	ldr	r3, [r3, #0]
d0001b08:	68db      	ldr	r3, [r3, #12]
d0001b0a:	4798      	blx	r3
d0001b0c:	7b23      	ldrb	r3, [r4, #12]
d0001b0e:	7b61      	ldrb	r1, [r4, #13]
d0001b10:	7ba2      	ldrb	r2, [r4, #14]
d0001b12:	ea43 2101 	orr.w	r1, r3, r1, lsl #8
d0001b16:	7be3      	ldrb	r3, [r4, #15]
d0001b18:	9801      	ldr	r0, [sp, #4]
d0001b1a:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d0001b1e:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0001b22:	681b      	ldr	r3, [r3, #0]
d0001b24:	699b      	ldr	r3, [r3, #24]
d0001b26:	4798      	blx	r3
d0001b28:	f894 c00c 	ldrb.w	ip, [r4, #12]
d0001b2c:	7b61      	ldrb	r1, [r4, #13]
d0001b2e:	2000      	movs	r0, #0
d0001b30:	7ba2      	ldrb	r2, [r4, #14]
d0001b32:	ea4c 2101 	orr.w	r1, ip, r1, lsl #8
d0001b36:	7be3      	ldrb	r3, [r4, #15]
d0001b38:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d0001b3c:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0001b40:	685b      	ldr	r3, [r3, #4]
d0001b42:	68db      	ldr	r3, [r3, #12]
d0001b44:	4798      	blx	r3
d0001b46:	7b20      	ldrb	r0, [r4, #12]
d0001b48:	7b61      	ldrb	r1, [r4, #13]
d0001b4a:	7ba2      	ldrb	r2, [r4, #14]
d0001b4c:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d0001b50:	7be3      	ldrb	r3, [r4, #15]
d0001b52:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d0001b56:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0001b5a:	685b      	ldr	r3, [r3, #4]
d0001b5c:	681b      	ldr	r3, [r3, #0]
d0001b5e:	4798      	blx	r3
d0001b60:	f894 c00c 	ldrb.w	ip, [r4, #12]
d0001b64:	7b61      	ldrb	r1, [r4, #13]
d0001b66:	2001      	movs	r0, #1
d0001b68:	7ba2      	ldrb	r2, [r4, #14]
d0001b6a:	ea4c 2101 	orr.w	r1, ip, r1, lsl #8
d0001b6e:	7be3      	ldrb	r3, [r4, #15]
d0001b70:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d0001b74:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0001b78:	685b      	ldr	r3, [r3, #4]
d0001b7a:	68db      	ldr	r3, [r3, #12]
d0001b7c:	4798      	blx	r3
d0001b7e:	f894 e00c 	ldrb.w	lr, [r4, #12]
d0001b82:	7b60      	ldrb	r0, [r4, #13]
d0001b84:	4652      	mov	r2, sl
d0001b86:	f894 c00e 	ldrb.w	ip, [r4, #14]
d0001b8a:	2178      	movs	r1, #120	; 0x78
d0001b8c:	ea4e 2000 	orr.w	r0, lr, r0, lsl #8
d0001b90:	7be3      	ldrb	r3, [r4, #15]
d0001b92:	ea40 4c0c 	orr.w	ip, r0, ip, lsl #16
d0001b96:	2018      	movs	r0, #24
d0001b98:	ea4c 6303 	orr.w	r3, ip, r3, lsl #24
d0001b9c:	685b      	ldr	r3, [r3, #4]
d0001b9e:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d0001ba0:	4798      	blx	r3
d0001ba2:	f894 e00c 	ldrb.w	lr, [r4, #12]
d0001ba6:	7b60      	ldrb	r0, [r4, #13]
d0001ba8:	4632      	mov	r2, r6
d0001baa:	f894 c00e 	ldrb.w	ip, [r4, #14]
d0001bae:	2190      	movs	r1, #144	; 0x90
d0001bb0:	ea4e 2000 	orr.w	r0, lr, r0, lsl #8
d0001bb4:	7be3      	ldrb	r3, [r4, #15]
d0001bb6:	ea40 4c0c 	orr.w	ip, r0, ip, lsl #16
d0001bba:	2018      	movs	r0, #24
d0001bbc:	ea4c 6303 	orr.w	r3, ip, r3, lsl #24
d0001bc0:	685b      	ldr	r3, [r3, #4]
d0001bc2:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d0001bc4:	4798      	blx	r3
d0001bc6:	782b      	ldrb	r3, [r5, #0]
d0001bc8:	f1c3 0301 	rsb	r3, r3, #1
d0001bcc:	b2db      	uxtb	r3, r3
d0001bce:	702b      	strb	r3, [r5, #0]
d0001bd0:	782b      	ldrb	r3, [r5, #0]
d0001bd2:	7b21      	ldrb	r1, [r4, #12]
d0001bd4:	7b60      	ldrb	r0, [r4, #13]
d0001bd6:	7ba2      	ldrb	r2, [r4, #14]
d0001bd8:	ea41 2000 	orr.w	r0, r1, r0, lsl #8
d0001bdc:	b313      	cbz	r3, d0001c24 <draw_message.constprop.0+0x178>
d0001bde:	ea40 4202 	orr.w	r2, r0, r2, lsl #16
d0001be2:	7be3      	ldrb	r3, [r4, #15]
d0001be4:	6839      	ldr	r1, [r7, #0]
d0001be6:	f8d8 0000 	ldr.w	r0, [r8]
d0001bea:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0001bee:	681b      	ldr	r3, [r3, #0]
d0001bf0:	6a5b      	ldr	r3, [r3, #36]	; 0x24
d0001bf2:	4798      	blx	r3
d0001bf4:	7b20      	ldrb	r0, [r4, #12]
d0001bf6:	7b61      	ldrb	r1, [r4, #13]
d0001bf8:	7ba2      	ldrb	r2, [r4, #14]
d0001bfa:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d0001bfe:	7be3      	ldrb	r3, [r4, #15]
d0001c00:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d0001c04:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0001c08:	681b      	ldr	r3, [r3, #0]
d0001c0a:	681b      	ldr	r3, [r3, #0]
d0001c0c:	4798      	blx	r3
d0001c0e:	f1b9 0f01 	cmp.w	r9, #1
d0001c12:	d00e      	beq.n	d0001c32 <draw_message.constprop.0+0x186>
d0001c14:	782b      	ldrb	r3, [r5, #0]
d0001c16:	f04f 0901 	mov.w	r9, #1
d0001c1a:	2b00      	cmp	r3, #0
d0001c1c:	f47f af65 	bne.w	d0001aea <draw_message.constprop.0+0x3e>
d0001c20:	6838      	ldr	r0, [r7, #0]
d0001c22:	e764      	b.n	d0001aee <draw_message.constprop.0+0x42>
d0001c24:	ea40 4202 	orr.w	r2, r0, r2, lsl #16
d0001c28:	7be3      	ldrb	r3, [r4, #15]
d0001c2a:	f8d8 1000 	ldr.w	r1, [r8]
d0001c2e:	6838      	ldr	r0, [r7, #0]
d0001c30:	e7db      	b.n	d0001bea <draw_message.constprop.0+0x13e>
d0001c32:	7b23      	ldrb	r3, [r4, #12]
d0001c34:	7b62      	ldrb	r2, [r4, #13]
d0001c36:	7ba1      	ldrb	r1, [r4, #14]
d0001c38:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0001c3c:	7be2      	ldrb	r2, [r4, #15]
d0001c3e:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0001c42:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0001c46:	681b      	ldr	r3, [r3, #0]
d0001c48:	68db      	ldr	r3, [r3, #12]
d0001c4a:	b002      	add	sp, #8
d0001c4c:	e8bd 47f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
d0001c50:	4718      	bx	r3
d0001c52:	bf00      	nop
d0001c54:	2001f000 	.word	0x2001f000
d0001c58:	d0004d68 	.word	0xd0004d68
d0001c5c:	d0006174 	.word	0xd0006174
d0001c60:	d0006a60 	.word	0xd0006a60
d0001c64:	d0006a80 	.word	0xd0006a80
d0001c68:	d00048a0 	.word	0xd00048a0
d0001c6c:	00000000 	.word	0x00000000

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
d0001d08:	f001 fc1e 	bl	d0003548 <memset>
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
d0001f34:	f340 817b 	ble.w	d000222e <main+0x5be>
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
d0001f5c:	f001 fe55 	bl	d0003c0a <strrchr>
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
d0001f88:	f7ff fd90 	bl	d0001aac <draw_message.constprop.0>
d0001f8c:	f7ff f97e 	bl	d000128c <wait_for_exit_combo>
d0001f90:	e0ad      	b.n	d00020ee <main+0x47e>
d0001f92:	2b49      	cmp	r3, #73	; 0x49
d0001f94:	f040 812e 	bne.w	d00021f4 <main+0x584>
d0001f98:	7883      	ldrb	r3, [r0, #2]
d0001f9a:	f003 03df 	and.w	r3, r3, #223	; 0xdf
d0001f9e:	2b46      	cmp	r3, #70	; 0x46
d0001fa0:	f040 82df 	bne.w	d0002562 <main+0x8f2>
d0001fa4:	78c3      	ldrb	r3, [r0, #3]
d0001fa6:	f003 03df 	and.w	r3, r3, #223	; 0xdf
d0001faa:	2b46      	cmp	r3, #70	; 0x46
d0001fac:	d0e8      	beq.n	d0001f80 <main+0x310>
d0001fae:	e7e9      	b.n	d0001f84 <main+0x314>
d0001fb0:	d0006174 	.word	0xd0006174
d0001fb4:	ff606060 	.word	0xff606060
d0001fb8:	ffdcdcdc 	.word	0xffdcdcdc
d0001fbc:	d0006578 	.word	0xd0006578
d0001fc0:	d0006a60 	.word	0xd0006a60
d0001fc4:	d0004d68 	.word	0xd0004d68
d0001fc8:	d0006a40 	.word	0xd0006a40
d0001fcc:	d00048b0 	.word	0xd00048b0
d0001fd0:	2001f000 	.word	0x2001f000
d0001fd4:	d0006a80 	.word	0xd0006a80
d0001fd8:	4689      	mov	r9, r1
d0001fda:	4896      	ldr	r0, [pc, #600]	; (d0002234 <main+0x5c4>)
d0001fdc:	f7ff fd66 	bl	d0001aac <draw_message.constprop.0>
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
d000200e:	f040 8228 	bne.w	d0002462 <main+0x7f2>
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
d0002038:	f000 80c7 	beq.w	d00021ca <main+0x55a>
d000203c:	f001 fa66 	bl	d000350c <malloc>
d0002040:	4682      	mov	sl, r0
d0002042:	2800      	cmp	r0, #0
d0002044:	f001 8014 	beq.w	d0003070 <main+0x1400>
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
d000209c:	f040 80ba 	bne.w	d0002214 <main+0x5a4>
d00020a0:	9b16      	ldr	r3, [sp, #88]	; 0x58
d00020a2:	429c      	cmp	r4, r3
d00020a4:	f040 80b6 	bne.w	d0002214 <main+0x5a4>
d00020a8:	f44f 6281 	mov.w	r2, #1032	; 0x408
d00020ac:	4641      	mov	r1, r8
d00020ae:	4862      	ldr	r0, [pc, #392]	; (d0002238 <main+0x5c8>)
d00020b0:	f001 fa4a 	bl	d0003548 <memset>
d00020b4:	2c01      	cmp	r4, #1
d00020b6:	d90c      	bls.n	d00020d2 <main+0x462>
d00020b8:	f89a 3000 	ldrb.w	r3, [sl]
d00020bc:	2b42      	cmp	r3, #66	; 0x42
d00020be:	f000 80c9 	beq.w	d0002254 <main+0x5e4>
d00020c2:	2c0b      	cmp	r4, #11
d00020c4:	d905      	bls.n	d00020d2 <main+0x462>
d00020c6:	f8da 2000 	ldr.w	r2, [sl]
d00020ca:	4b5c      	ldr	r3, [pc, #368]	; (d000223c <main+0x5cc>)
d00020cc:	429a      	cmp	r2, r3
d00020ce:	f000 81d4 	beq.w	d000247a <main+0x80a>
d00020d2:	485b      	ldr	r0, [pc, #364]	; (d0002240 <main+0x5d0>)
d00020d4:	f7ff f900 	bl	d00012d8 <set_status>
d00020d8:	4650      	mov	r0, sl
d00020da:	f001 fa1f 	bl	d000351c <free>
d00020de:	f7ff fcd5 	bl	d0001a8c <free_image.constprop.0>
d00020e2:	4858      	ldr	r0, [pc, #352]	; (d0002244 <main+0x5d4>)
d00020e4:	2401      	movs	r4, #1
d00020e6:	f7ff fce1 	bl	d0001aac <draw_message.constprop.0>
d00020ea:	f7ff f8cf 	bl	d000128c <wait_for_exit_combo>
d00020ee:	4d56      	ldr	r5, [pc, #344]	; (d0002248 <main+0x5d8>)
d00020f0:	f7ff fccc 	bl	d0001a8c <free_image.constprop.0>
d00020f4:	682b      	ldr	r3, [r5, #0]
d00020f6:	b13b      	cbz	r3, d0002108 <main+0x498>
d00020f8:	6828      	ldr	r0, [r5, #0]
d00020fa:	f001 fa0f 	bl	d000351c <free>
d00020fe:	4628      	mov	r0, r5
d0002100:	2220      	movs	r2, #32
d0002102:	2100      	movs	r1, #0
d0002104:	f001 fa20 	bl	d0003548 <memset>
d0002108:	f89b 300c 	ldrb.w	r3, [fp, #12]
d000210c:	2602      	movs	r6, #2
d000210e:	f89b 200d 	ldrb.w	r2, [fp, #13]
d0002112:	f89b 100e 	ldrb.w	r1, [fp, #14]
d0002116:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d000211a:	f89b 200f 	ldrb.w	r2, [fp, #15]
d000211e:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0002122:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0002126:	681b      	ldr	r3, [r3, #0]
d0002128:	68db      	ldr	r3, [r3, #12]
d000212a:	4798      	blx	r3
d000212c:	f89b 500c 	ldrb.w	r5, [fp, #12]
d0002130:	f89b 200d 	ldrb.w	r2, [fp, #13]
d0002134:	f44f 73a0 	mov.w	r3, #320	; 0x140
d0002138:	f89b 100e 	ldrb.w	r1, [fp, #14]
d000213c:	ea45 2502 	orr.w	r5, r5, r2, lsl #8
d0002140:	f89b 000f 	ldrb.w	r0, [fp, #15]
d0002144:	f44f 72f0 	mov.w	r2, #480	; 0x1e0
d0002148:	ea45 4501 	orr.w	r5, r5, r1, lsl #16
d000214c:	4619      	mov	r1, r3
d000214e:	ea45 6500 	orr.w	r5, r5, r0, lsl #24
d0002152:	4610      	mov	r0, r2
d0002154:	682d      	ldr	r5, [r5, #0]
d0002156:	9600      	str	r6, [sp, #0]
d0002158:	696d      	ldr	r5, [r5, #20]
d000215a:	47a8      	blx	r5
d000215c:	f89b 3004 	ldrb.w	r3, [fp, #4]
d0002160:	f89b 2005 	ldrb.w	r2, [fp, #5]
d0002164:	f89b 1006 	ldrb.w	r1, [fp, #6]
d0002168:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d000216c:	f89b 2007 	ldrb.w	r2, [fp, #7]
d0002170:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0002174:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0002178:	685b      	ldr	r3, [r3, #4]
d000217a:	4798      	blx	r3
d000217c:	f89b 300c 	ldrb.w	r3, [fp, #12]
d0002180:	f89b 200d 	ldrb.w	r2, [fp, #13]
d0002184:	f89b 100e 	ldrb.w	r1, [fp, #14]
d0002188:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d000218c:	f89b 200f 	ldrb.w	r2, [fp, #15]
d0002190:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0002194:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0002198:	681b      	ldr	r3, [r3, #0]
d000219a:	68db      	ldr	r3, [r3, #12]
d000219c:	4798      	blx	r3
d000219e:	f89b 3000 	ldrb.w	r3, [fp]
d00021a2:	f89b 2001 	ldrb.w	r2, [fp, #1]
d00021a6:	f89b 1002 	ldrb.w	r1, [fp, #2]
d00021aa:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d00021ae:	f89b 2003 	ldrb.w	r2, [fp, #3]
d00021b2:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d00021b6:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00021ba:	685b      	ldr	r3, [r3, #4]
d00021bc:	4798      	blx	r3
d00021be:	4620      	mov	r0, r4
d00021c0:	b01b      	add	sp, #108	; 0x6c
d00021c2:	ecbd 8b02 	vpop	{d8}
d00021c6:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d00021ca:	f89b 3004 	ldrb.w	r3, [fp, #4]
d00021ce:	f89b 2005 	ldrb.w	r2, [fp, #5]
d00021d2:	f89b 1006 	ldrb.w	r1, [fp, #6]
d00021d6:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d00021da:	f89b 2007 	ldrb.w	r2, [fp, #7]
d00021de:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d00021e2:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00021e6:	681b      	ldr	r3, [r3, #0]
d00021e8:	68db      	ldr	r3, [r3, #12]
d00021ea:	4798      	blx	r3
d00021ec:	4817      	ldr	r0, [pc, #92]	; (d000224c <main+0x5dc>)
d00021ee:	f7ff f873 	bl	d00012d8 <set_status>
d00021f2:	e776      	b.n	d00020e2 <main+0x472>
d00021f4:	2b4c      	cmp	r3, #76	; 0x4c
d00021f6:	f47f aec5 	bne.w	d0001f84 <main+0x314>
d00021fa:	7883      	ldrb	r3, [r0, #2]
d00021fc:	f003 03df 	and.w	r3, r3, #223	; 0xdf
d0002200:	2b42      	cmp	r3, #66	; 0x42
d0002202:	f47f aebf 	bne.w	d0001f84 <main+0x314>
d0002206:	78c3      	ldrb	r3, [r0, #3]
d0002208:	f003 03df 	and.w	r3, r3, #223	; 0xdf
d000220c:	2b4d      	cmp	r3, #77	; 0x4d
d000220e:	f47f aeb9 	bne.w	d0001f84 <main+0x314>
d0002212:	e6b5      	b.n	d0001f80 <main+0x310>
d0002214:	4650      	mov	r0, sl
d0002216:	f001 f981 	bl	d000351c <free>
d000221a:	4643      	mov	r3, r8
d000221c:	4a0c      	ldr	r2, [pc, #48]	; (d0002250 <main+0x5e0>)
d000221e:	21a0      	movs	r1, #160	; 0xa0
d0002220:	4808      	ldr	r0, [pc, #32]	; (d0002244 <main+0x5d4>)
d0002222:	f001 fcab 	bl	d0003b7c <sniprintf>
d0002226:	4807      	ldr	r0, [pc, #28]	; (d0002244 <main+0x5d4>)
d0002228:	f7ff f856 	bl	d00012d8 <set_status>
d000222c:	e759      	b.n	d00020e2 <main+0x472>
d000222e:	f47f aea9 	bne.w	d0001f84 <main+0x314>
d0002232:	e68c      	b.n	d0001f4e <main+0x2de>
d0002234:	d0004c40 	.word	0xd0004c40
d0002238:	d0006578 	.word	0xd0006578
d000223c:	4d524f46 	.word	0x4d524f46
d0002240:	d0004c14 	.word	0xd0004c14
d0002244:	d0006984 	.word	0xd0006984
d0002248:	d0006a40 	.word	0xd0006a40
d000224c:	d00048f8 	.word	0xd00048f8
d0002250:	d0004924 	.word	0xd0004924
d0002254:	f89a 3001 	ldrb.w	r3, [sl, #1]
d0002258:	2b4d      	cmp	r3, #77	; 0x4d
d000225a:	f47f af32 	bne.w	d00020c2 <main+0x452>
d000225e:	2c35      	cmp	r4, #53	; 0x35
d0002260:	f240 81d3 	bls.w	d000260a <main+0x99a>
d0002264:	f8ba 500e 	ldrh.w	r5, [sl, #14]
d0002268:	f8ba 3010 	ldrh.w	r3, [sl, #16]
d000226c:	ea45 4503 	orr.w	r5, r5, r3, lsl #16
d0002270:	2d27      	cmp	r5, #39	; 0x27
d0002272:	f240 860c 	bls.w	d0002e8e <main+0x121e>
d0002276:	f105 060e 	add.w	r6, r5, #14
d000227a:	42b4      	cmp	r4, r6
d000227c:	f0c0 8607 	bcc.w	d0002e8e <main+0x121e>
d0002280:	f8ba 2012 	ldrh.w	r2, [sl, #18]
d0002284:	f8ba 1014 	ldrh.w	r1, [sl, #20]
d0002288:	f8ba 3016 	ldrh.w	r3, [sl, #22]
d000228c:	ea42 4101 	orr.w	r1, r2, r1, lsl #16
d0002290:	f8ba 2018 	ldrh.w	r2, [sl, #24]
d0002294:	2900      	cmp	r1, #0
d0002296:	ea43 4202 	orr.w	r2, r3, r2, lsl #16
d000229a:	9104      	str	r1, [sp, #16]
d000229c:	9203      	str	r2, [sp, #12]
d000229e:	f340 86dd 	ble.w	d000305c <main+0x13ec>
d00022a2:	fab2 f382 	clz	r3, r2
d00022a6:	095b      	lsrs	r3, r3, #5
d00022a8:	2a00      	cmp	r2, #0
d00022aa:	f000 86d7 	beq.w	d000305c <main+0x13ec>
d00022ae:	9a03      	ldr	r2, [sp, #12]
d00022b0:	2a00      	cmp	r2, #0
d00022b2:	f2c0 86cd 	blt.w	d0003050 <main+0x13e0>
d00022b6:	9308      	str	r3, [sp, #32]
d00022b8:	9b04      	ldr	r3, [sp, #16]
d00022ba:	f5b3 5f80 	cmp.w	r3, #4096	; 0x1000
d00022be:	f200 86bd 	bhi.w	d000303c <main+0x13cc>
d00022c2:	9a03      	ldr	r2, [sp, #12]
d00022c4:	f5b2 5f80 	cmp.w	r2, #4096	; 0x1000
d00022c8:	f200 86b8 	bhi.w	d000303c <main+0x13cc>
d00022cc:	fba3 2302 	umull	r2, r3, r3, r2
d00022d0:	a1d7      	add	r1, pc, #860	; (adr r1, d0002630 <main+0x9c0>)
d00022d2:	e9d1 0100 	ldrd	r0, r1, [r1]
d00022d6:	4299      	cmp	r1, r3
d00022d8:	bf08      	it	eq
d00022da:	4290      	cmpeq	r0, r2
d00022dc:	f0c0 86ae 	bcc.w	d000303c <main+0x13cc>
d00022e0:	f8ba 300a 	ldrh.w	r3, [sl, #10]
d00022e4:	f8ba 200c 	ldrh.w	r2, [sl, #12]
d00022e8:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d00022ec:	429c      	cmp	r4, r3
d00022ee:	930a      	str	r3, [sp, #40]	; 0x28
d00022f0:	f240 869a 	bls.w	d0003028 <main+0x13b8>
d00022f4:	f8ba 201e 	ldrh.w	r2, [sl, #30]
d00022f8:	f8ba 3020 	ldrh.w	r3, [sl, #32]
d00022fc:	ea52 4203 	orrs.w	r2, r2, r3, lsl #16
d0002300:	d002      	beq.n	d0002308 <main+0x698>
d0002302:	2a03      	cmp	r2, #3
d0002304:	f040 86ca 	bne.w	d000309c <main+0x142c>
d0002308:	f89a 301d 	ldrb.w	r3, [sl, #29]
d000230c:	f89a 701c 	ldrb.w	r7, [sl, #28]
d0002310:	ea47 2703 	orr.w	r7, r7, r3, lsl #8
d0002314:	4638      	mov	r0, r7
d0002316:	9705      	str	r7, [sp, #20]
d0002318:	b23f      	sxth	r7, r7
d000231a:	2808      	cmp	r0, #8
d000231c:	f200 85c1 	bhi.w	d0002ea2 <main+0x1232>
d0002320:	f8ba 302e 	ldrh.w	r3, [sl, #46]	; 0x2e
d0002324:	f8ba 1030 	ldrh.w	r1, [sl, #48]	; 0x30
d0002328:	ea53 4301 	orrs.w	r3, r3, r1, lsl #16
d000232c:	d101      	bne.n	d0002332 <main+0x6c2>
d000232e:	2301      	movs	r3, #1
d0002330:	4083      	lsls	r3, r0
d0002332:	f5b3 7f80 	cmp.w	r3, #256	; 0x100
d0002336:	bf28      	it	cs
d0002338:	f44f 7380 	movcs.w	r3, #256	; 0x100
d000233c:	eb06 0183 	add.w	r1, r6, r3, lsl #2
d0002340:	428c      	cmp	r4, r1
d0002342:	f0c0 85cf 	bcc.w	d0002ee4 <main+0x1274>
d0002346:	2a03      	cmp	r2, #3
d0002348:	f000 85b3 	beq.w	d0002eb2 <main+0x1242>
d000234c:	9a05      	ldr	r2, [sp, #20]
d000234e:	2a20      	cmp	r2, #32
d0002350:	bf0b      	itete	eq
d0002352:	22ff      	moveq	r2, #255	; 0xff
d0002354:	221f      	movne	r2, #31
d0002356:	f44f 057f 	moveq.w	r5, #16711680	; 0xff0000
d000235a:	f44f 45f8 	movne.w	r5, #31744	; 0x7c00
d000235e:	9207      	str	r2, [sp, #28]
d0002360:	bf0c      	ite	eq
d0002362:	f44f 427f 	moveq.w	r2, #65280	; 0xff00
d0002366:	f44f 7278 	movne.w	r2, #992	; 0x3e0
d000236a:	9206      	str	r2, [sp, #24]
d000236c:	9a04      	ldr	r2, [sp, #16]
d000236e:	9905      	ldr	r1, [sp, #20]
d0002370:	980a      	ldr	r0, [sp, #40]	; 0x28
d0002372:	fb02 f101 	mul.w	r1, r2, r1
d0002376:	311f      	adds	r1, #31
d0002378:	0949      	lsrs	r1, r1, #5
d000237a:	008a      	lsls	r2, r1, #2
d000237c:	9903      	ldr	r1, [sp, #12]
d000237e:	fb02 0101 	mla	r1, r2, r1, r0
d0002382:	920b      	str	r2, [sp, #44]	; 0x2c
d0002384:	428c      	cmp	r4, r1
d0002386:	f0c0 8700 	bcc.w	d000318a <main+0x151a>
d000238a:	4aab      	ldr	r2, [pc, #684]	; (d0002638 <main+0x9c8>)
d000238c:	9804      	ldr	r0, [sp, #16]
d000238e:	9905      	ldr	r1, [sp, #20]
d0002390:	8010      	strh	r0, [r2, #0]
d0002392:	2908      	cmp	r1, #8
d0002394:	9803      	ldr	r0, [sp, #12]
d0002396:	9202      	str	r2, [sp, #8]
d0002398:	8050      	strh	r0, [r2, #2]
d000239a:	f200 85c4 	bhi.w	d0002f26 <main+0x12b6>
d000239e:	eb0a 0106 	add.w	r1, sl, r6
d00023a2:	f102 0008 	add.w	r0, r2, #8
d00023a6:	eb01 0683 	add.w	r6, r1, r3, lsl #2
d00023aa:	e00b      	b.n	d00023c4 <main+0x754>
d00023ac:	784a      	ldrb	r2, [r1, #1]
d00023ae:	788d      	ldrb	r5, [r1, #2]
d00023b0:	0212      	lsls	r2, r2, #8
d00023b2:	f811 4b04 	ldrb.w	r4, [r1], #4
d00023b6:	ea42 4205 	orr.w	r2, r2, r5, lsl #16
d00023ba:	4322      	orrs	r2, r4
d00023bc:	f042 427f 	orr.w	r2, r2, #4278190080	; 0xff000000
d00023c0:	f840 2b04 	str.w	r2, [r0], #4
d00023c4:	428e      	cmp	r6, r1
d00023c6:	d1f1      	bne.n	d00023ac <main+0x73c>
d00023c8:	3301      	adds	r3, #1
d00023ca:	f04f 427f 	mov.w	r2, #4278190080	; 0xff000000
d00023ce:	e002      	b.n	d00023d6 <main+0x766>
d00023d0:	9902      	ldr	r1, [sp, #8]
d00023d2:	f841 2023 	str.w	r2, [r1, r3, lsl #2]
d00023d6:	3301      	adds	r3, #1
d00023d8:	f5b3 7f81 	cmp.w	r3, #258	; 0x102
d00023dc:	d1f8      	bne.n	d00023d0 <main+0x760>
d00023de:	9b03      	ldr	r3, [sp, #12]
d00023e0:	9a04      	ldr	r2, [sp, #16]
d00023e2:	fb03 f002 	mul.w	r0, r3, r2
d00023e6:	f001 f891 	bl	d000350c <malloc>
d00023ea:	9b02      	ldr	r3, [sp, #8]
d00023ec:	6058      	str	r0, [r3, #4]
d00023ee:	2800      	cmp	r0, #0
d00023f0:	f000 867c 	beq.w	d00030ec <main+0x147c>
d00023f4:	2600      	movs	r6, #0
d00023f6:	9b03      	ldr	r3, [sp, #12]
d00023f8:	f04f 0c80 	mov.w	ip, #128	; 0x80
d00023fc:	9d05      	ldr	r5, [sp, #20]
d00023fe:	1e5f      	subs	r7, r3, #1
d0002400:	4630      	mov	r0, r6
d0002402:	9b03      	ldr	r3, [sp, #12]
d0002404:	4283      	cmp	r3, r0
d0002406:	f000 83bb 	beq.w	d0002b80 <main+0xf10>
d000240a:	9b08      	ldr	r3, [sp, #32]
d000240c:	2b00      	cmp	r3, #0
d000240e:	f040 866a 	bne.w	d00030e6 <main+0x1476>
d0002412:	1a3b      	subs	r3, r7, r0
d0002414:	990a      	ldr	r1, [sp, #40]	; 0x28
d0002416:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
d0002418:	fb03 1202 	mla	r2, r3, r2, r1
d000241c:	9b02      	ldr	r3, [sp, #8]
d000241e:	6859      	ldr	r1, [r3, #4]
d0002420:	4452      	add	r2, sl
d0002422:	2300      	movs	r3, #0
d0002424:	4431      	add	r1, r6
d0002426:	f003 0407 	and.w	r4, r3, #7
d000242a:	2d08      	cmp	r5, #8
d000242c:	ea4f 0ed3 	mov.w	lr, r3, lsr #3
d0002430:	fa2c f404 	lsr.w	r4, ip, r4
d0002434:	f000 8653 	beq.w	d00030de <main+0x146e>
d0002438:	2d04      	cmp	r5, #4
d000243a:	f000 8643 	beq.w	d00030c4 <main+0x1454>
d000243e:	2d01      	cmp	r5, #1
d0002440:	f040 86ad 	bne.w	d000319e <main+0x152e>
d0002444:	f812 e00e 	ldrb.w	lr, [r2, lr]
d0002448:	ea1e 0f04 	tst.w	lr, r4
d000244c:	bf14      	ite	ne
d000244e:	2401      	movne	r4, #1
d0002450:	2400      	moveq	r4, #0
d0002452:	54cc      	strb	r4, [r1, r3]
d0002454:	3301      	adds	r3, #1
d0002456:	9c04      	ldr	r4, [sp, #16]
d0002458:	429c      	cmp	r4, r3
d000245a:	d8e4      	bhi.n	d0002426 <main+0x7b6>
d000245c:	3001      	adds	r0, #1
d000245e:	4426      	add	r6, r4
d0002460:	e7cf      	b.n	d0002402 <main+0x792>
d0002462:	4633      	mov	r3, r6
d0002464:	4a75      	ldr	r2, [pc, #468]	; (d000263c <main+0x9cc>)
d0002466:	21a0      	movs	r1, #160	; 0xa0
d0002468:	f8cd 9000 	str.w	r9, [sp]
d000246c:	4874      	ldr	r0, [pc, #464]	; (d0002640 <main+0x9d0>)
d000246e:	f001 fb85 	bl	d0003b7c <sniprintf>
d0002472:	4873      	ldr	r0, [pc, #460]	; (d0002640 <main+0x9d0>)
d0002474:	f7fe ff30 	bl	d00012d8 <set_status>
d0002478:	e633      	b.n	d00020e2 <main+0x472>
d000247a:	f8da 2008 	ldr.w	r2, [sl, #8]
d000247e:	2300      	movs	r3, #0
d0002480:	4970      	ldr	r1, [pc, #448]	; (d0002644 <main+0x9d4>)
d0002482:	ba12      	rev	r2, r2
d0002484:	9318      	str	r3, [sp, #96]	; 0x60
d0002486:	f8ad 3064 	strh.w	r3, [sp, #100]	; 0x64
d000248a:	428a      	cmp	r2, r1
d000248c:	e9cd 3316 	strd	r3, r3, [sp, #88]	; 0x58
d0002490:	d07b      	beq.n	d000258a <main+0x91a>
d0002492:	f101 4179 	add.w	r1, r1, #4177526784	; 0xf9000000
d0002496:	f501 211f 	add.w	r1, r1, #651264	; 0x9f000
d000249a:	f201 512d 	addw	r1, r1, #1325	; 0x52d
d000249e:	428a      	cmp	r2, r1
d00024a0:	f040 821c 	bne.w	d00028dc <main+0xc6c>
d00024a4:	9307      	str	r3, [sp, #28]
d00024a6:	f04f 0e00 	mov.w	lr, #0
d00024aa:	210c      	movs	r1, #12
d00024ac:	f8cd e010 	str.w	lr, [sp, #16]
d00024b0:	f8cd e030 	str.w	lr, [sp, #48]	; 0x30
d00024b4:	f8cd e014 	str.w	lr, [sp, #20]
d00024b8:	f8cd e024 	str.w	lr, [sp, #36]	; 0x24
d00024bc:	f8cd e00c 	str.w	lr, [sp, #12]
d00024c0:	f101 0708 	add.w	r7, r1, #8
d00024c4:	42bc      	cmp	r4, r7
d00024c6:	f0c0 80c9 	bcc.w	d000265c <main+0x9ec>
d00024ca:	eb0a 0601 	add.w	r6, sl, r1
d00024ce:	f81a c001 	ldrb.w	ip, [sl, r1]
d00024d2:	eb0a 0007 	add.w	r0, sl, r7
d00024d6:	7972      	ldrb	r2, [r6, #5]
d00024d8:	7933      	ldrb	r3, [r6, #4]
d00024da:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d00024de:	79b2      	ldrb	r2, [r6, #6]
d00024e0:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d00024e4:	79f2      	ldrb	r2, [r6, #7]
d00024e6:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00024ea:	7872      	ldrb	r2, [r6, #1]
d00024ec:	ba1b      	rev	r3, r3
d00024ee:	ea4c 2202 	orr.w	r2, ip, r2, lsl #8
d00024f2:	f896 c002 	ldrb.w	ip, [r6, #2]
d00024f6:	4419      	add	r1, r3
d00024f8:	78f6      	ldrb	r6, [r6, #3]
d00024fa:	ea42 420c 	orr.w	r2, r2, ip, lsl #16
d00024fe:	f003 0c01 	and.w	ip, r3, #1
d0002502:	ea42 6206 	orr.w	r2, r2, r6, lsl #24
d0002506:	eb0c 0601 	add.w	r6, ip, r1
d000250a:	f101 0c08 	add.w	ip, r1, #8
d000250e:	ba12      	rev	r2, r2
d0002510:	f106 0108 	add.w	r1, r6, #8
d0002514:	4564      	cmp	r4, ip
d0002516:	f0c0 8081 	bcc.w	d000261c <main+0x9ac>
d000251a:	4e4b      	ldr	r6, [pc, #300]	; (d0002648 <main+0x9d8>)
d000251c:	42b2      	cmp	r2, r6
d000251e:	d03a      	beq.n	d0002596 <main+0x926>
d0002520:	4e4a      	ldr	r6, [pc, #296]	; (d000264c <main+0x9dc>)
d0002522:	42b2      	cmp	r2, r6
d0002524:	d034      	beq.n	d0002590 <main+0x920>
d0002526:	f106 467f 	add.w	r6, r6, #4278190080	; 0xff000000
d000252a:	f506 3600 	add.w	r6, r6, #131072	; 0x20000
d000252e:	f206 3609 	addw	r6, r6, #777	; 0x309
d0002532:	42b2      	cmp	r2, r6
d0002534:	d066      	beq.n	d0002604 <main+0x994>
d0002536:	f506 0672 	add.w	r6, r6, #15859712	; 0xf20000
d000253a:	f606 06ee 	addw	r6, r6, #2286	; 0x8ee
d000253e:	42b2      	cmp	r2, r6
d0002540:	d1be      	bne.n	d00024c0 <main+0x850>
d0002542:	2b03      	cmp	r3, #3
d0002544:	d9bc      	bls.n	d00024c0 <main+0x850>
d0002546:	7842      	ldrb	r2, [r0, #1]
d0002548:	f81a 3007 	ldrb.w	r3, [sl, r7]
d000254c:	7886      	ldrb	r6, [r0, #2]
d000254e:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0002552:	78c2      	ldrb	r2, [r0, #3]
d0002554:	ea43 4306 	orr.w	r3, r3, r6, lsl #16
d0002558:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d000255c:	ba1b      	rev	r3, r3
d000255e:	9304      	str	r3, [sp, #16]
d0002560:	e7ae      	b.n	d00024c0 <main+0x850>
d0002562:	2b4c      	cmp	r3, #76	; 0x4c
d0002564:	f47f ad0e 	bne.w	d0001f84 <main+0x314>
d0002568:	78c3      	ldrb	r3, [r0, #3]
d000256a:	f003 03df 	and.w	r3, r3, #223	; 0xdf
d000256e:	2b42      	cmp	r3, #66	; 0x42
d0002570:	f47f ad08 	bne.w	d0001f84 <main+0x314>
d0002574:	7903      	ldrb	r3, [r0, #4]
d0002576:	f003 03df 	and.w	r3, r3, #223	; 0xdf
d000257a:	2b4d      	cmp	r3, #77	; 0x4d
d000257c:	f47f ad02 	bne.w	d0001f84 <main+0x314>
d0002580:	7943      	ldrb	r3, [r0, #5]
d0002582:	2b00      	cmp	r3, #0
d0002584:	f43f ad29 	beq.w	d0001fda <main+0x36a>
d0002588:	e4fc      	b.n	d0001f84 <main+0x314>
d000258a:	2301      	movs	r3, #1
d000258c:	9307      	str	r3, [sp, #28]
d000258e:	e78a      	b.n	d00024a6 <main+0x836>
d0002590:	9305      	str	r3, [sp, #20]
d0002592:	9003      	str	r0, [sp, #12]
d0002594:	e794      	b.n	d00024c0 <main+0x850>
d0002596:	2b13      	cmp	r3, #19
d0002598:	d92b      	bls.n	d00025f2 <main+0x982>
d000259a:	f81a 3007 	ldrb.w	r3, [sl, r7]
d000259e:	7842      	ldrb	r2, [r0, #1]
d00025a0:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
d00025a4:	f8ad 2058 	strh.w	r2, [sp, #88]	; 0x58
d00025a8:	7886      	ldrb	r6, [r0, #2]
d00025aa:	78c3      	ldrb	r3, [r0, #3]
d00025ac:	ea43 2306 	orr.w	r3, r3, r6, lsl #8
d00025b0:	f8ad 305a 	strh.w	r3, [sp, #90]	; 0x5a
d00025b4:	7a06      	ldrb	r6, [r0, #8]
d00025b6:	f88d 605c 	strb.w	r6, [sp, #92]	; 0x5c
d00025ba:	7a46      	ldrb	r6, [r0, #9]
d00025bc:	f88d 605d 	strb.w	r6, [sp, #93]	; 0x5d
d00025c0:	7a86      	ldrb	r6, [r0, #10]
d00025c2:	f88d 605e 	strb.w	r6, [sp, #94]	; 0x5e
d00025c6:	7b07      	ldrb	r7, [r0, #12]
d00025c8:	7b46      	ldrb	r6, [r0, #13]
d00025ca:	ea46 2607 	orr.w	r6, r6, r7, lsl #8
d00025ce:	f8ad 6060 	strh.w	r6, [sp, #96]	; 0x60
d00025d2:	7c07      	ldrb	r7, [r0, #16]
d00025d4:	7c46      	ldrb	r6, [r0, #17]
d00025d6:	ea46 2607 	orr.w	r6, r6, r7, lsl #8
d00025da:	f8ad 6062 	strh.w	r6, [sp, #98]	; 0x62
d00025de:	7c86      	ldrb	r6, [r0, #18]
d00025e0:	7cc0      	ldrb	r0, [r0, #19]
d00025e2:	ea40 2006 	orr.w	r0, r0, r6, lsl #8
d00025e6:	f8ad 0064 	strh.w	r0, [sp, #100]	; 0x64
d00025ea:	b112      	cbz	r2, d00025f2 <main+0x982>
d00025ec:	2b00      	cmp	r3, #0
d00025ee:	f040 817f 	bne.w	d00028f0 <main+0xc80>
d00025f2:	4817      	ldr	r0, [pc, #92]	; (d0002650 <main+0x9e0>)
d00025f4:	f7fe fe70 	bl	d00012d8 <set_status>
d00025f8:	4650      	mov	r0, sl
d00025fa:	f000 ff8f 	bl	d000351c <free>
d00025fe:	f7ff fa45 	bl	d0001a8c <free_image.constprop.0>
d0002602:	e56e      	b.n	d00020e2 <main+0x472>
d0002604:	930c      	str	r3, [sp, #48]	; 0x30
d0002606:	9009      	str	r0, [sp, #36]	; 0x24
d0002608:	e75a      	b.n	d00024c0 <main+0x850>
d000260a:	4812      	ldr	r0, [pc, #72]	; (d0002654 <main+0x9e4>)
d000260c:	f7fe fe64 	bl	d00012d8 <set_status>
d0002610:	4650      	mov	r0, sl
d0002612:	f000 ff83 	bl	d000351c <free>
d0002616:	f7ff fa39 	bl	d0001a8c <free_image.constprop.0>
d000261a:	e562      	b.n	d00020e2 <main+0x472>
d000261c:	480e      	ldr	r0, [pc, #56]	; (d0002658 <main+0x9e8>)
d000261e:	f7fe fe5b 	bl	d00012d8 <set_status>
d0002622:	4650      	mov	r0, sl
d0002624:	f000 ff7a 	bl	d000351c <free>
d0002628:	f7ff fa30 	bl	d0001a8c <free_image.constprop.0>
d000262c:	e559      	b.n	d00020e2 <main+0x472>
d000262e:	bf00      	nop
d0002630:	004c4b40 	.word	0x004c4b40
d0002634:	00000000 	.word	0x00000000
d0002638:	d0006578 	.word	0xd0006578
d000263c:	d00048e0 	.word	0xd00048e0
d0002640:	d0006984 	.word	0xd0006984
d0002644:	50424d20 	.word	0x50424d20
d0002648:	424d4844 	.word	0x424d4844
d000264c:	434d4150 	.word	0x434d4150
d0002650:	d0004ac4 	.word	0xd0004ac4
d0002654:	d0004938 	.word	0xd0004938
d0002658:	d0004aac 	.word	0xd0004aac
d000265c:	f1be 0f00 	cmp.w	lr, #0
d0002660:	f000 840b 	beq.w	d0002e7a <main+0x120a>
d0002664:	9b09      	ldr	r3, [sp, #36]	; 0x24
d0002666:	2b00      	cmp	r3, #0
d0002668:	f000 8407 	beq.w	d0002e7a <main+0x120a>
d000266c:	f89d 305e 	ldrb.w	r3, [sp, #94]	; 0x5e
d0002670:	2b01      	cmp	r3, #1
d0002672:	f200 83f8 	bhi.w	d0002e66 <main+0x11f6>
d0002676:	f8bd 4058 	ldrh.w	r4, [sp, #88]	; 0x58
d000267a:	f5b4 5f80 	cmp.w	r4, #4096	; 0x1000
d000267e:	f200 8517 	bhi.w	d00030b0 <main+0x1440>
d0002682:	f8bd 705a 	ldrh.w	r7, [sp, #90]	; 0x5a
d0002686:	f5b7 5f80 	cmp.w	r7, #4096	; 0x1000
d000268a:	f200 8511 	bhi.w	d00030b0 <main+0x1440>
d000268e:	fba4 2307 	umull	r2, r3, r4, r7
d0002692:	a1c1      	add	r1, pc, #772	; (adr r1, d0002998 <main+0xd28>)
d0002694:	e9d1 0100 	ldrd	r0, r1, [r1]
d0002698:	4299      	cmp	r1, r3
d000269a:	bf08      	it	eq
d000269c:	4290      	cmpeq	r0, r2
d000269e:	f0c0 8507 	bcc.w	d00030b0 <main+0x1440>
d00026a2:	4abb      	ldr	r2, [pc, #748]	; (d0002990 <main+0xd20>)
d00026a4:	f44f 7380 	mov.w	r3, #256	; 0x100
d00026a8:	f04f 417f 	mov.w	r1, #4278190080	; 0xff000000
d00026ac:	f102 0c08 	add.w	ip, r2, #8
d00026b0:	9202      	str	r2, [sp, #8]
d00026b2:	8014      	strh	r4, [r2, #0]
d00026b4:	8057      	strh	r7, [r2, #2]
d00026b6:	4662      	mov	r2, ip
d00026b8:	3b01      	subs	r3, #1
d00026ba:	f842 1b04 	str.w	r1, [r2], #4
d00026be:	b29b      	uxth	r3, r3
d00026c0:	2b00      	cmp	r3, #0
d00026c2:	d1f9      	bne.n	d00026b8 <main+0xa48>
d00026c4:	9b03      	ldr	r3, [sp, #12]
d00026c6:	b3d3      	cbz	r3, d000273e <main+0xace>
d00026c8:	f240 3302 	movw	r3, #770	; 0x302
d00026cc:	9a05      	ldr	r2, [sp, #20]
d00026ce:	429a      	cmp	r2, r3
d00026d0:	d802      	bhi.n	d00026d8 <main+0xa68>
d00026d2:	2503      	movs	r5, #3
d00026d4:	fbb2 f5f5 	udiv	r5, r2, r5
d00026d8:	9b03      	ldr	r3, [sp, #12]
d00026da:	46e6      	mov	lr, ip
d00026dc:	2100      	movs	r1, #0
d00026de:	e00d      	b.n	d00026fc <main+0xa8c>
d00026e0:	f813 2c02 	ldrb.w	r2, [r3, #-2]
d00026e4:	f813 6c03 	ldrb.w	r6, [r3, #-3]
d00026e8:	0212      	lsls	r2, r2, #8
d00026ea:	f813 0c01 	ldrb.w	r0, [r3, #-1]
d00026ee:	ea42 4206 	orr.w	r2, r2, r6, lsl #16
d00026f2:	4302      	orrs	r2, r0
d00026f4:	f042 427f 	orr.w	r2, r2, #4278190080	; 0xff000000
d00026f8:	f84e 2b04 	str.w	r2, [lr], #4
d00026fc:	42a9      	cmp	r1, r5
d00026fe:	f103 0303 	add.w	r3, r3, #3
d0002702:	f101 0101 	add.w	r1, r1, #1
d0002706:	d1eb      	bne.n	d00026e0 <main+0xa70>
d0002708:	9b04      	ldr	r3, [sp, #16]
d000270a:	0618      	lsls	r0, r3, #24
d000270c:	d517      	bpl.n	d000273e <main+0xace>
d000270e:	2d20      	cmp	r5, #32
d0002710:	d815      	bhi.n	d000273e <main+0xace>
d0002712:	2100      	movs	r1, #0
d0002714:	e00f      	b.n	d0002736 <main+0xac6>
d0002716:	f85c 2b04 	ldr.w	r2, [ip], #4
d000271a:	f3c2 2346 	ubfx	r3, r2, #9, #7
d000271e:	f3c2 4046 	ubfx	r0, r2, #17, #7
d0002722:	f3c2 0246 	ubfx	r2, r2, #1, #7
d0002726:	021b      	lsls	r3, r3, #8
d0002728:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
d000272c:	4313      	orrs	r3, r2
d000272e:	f043 437f 	orr.w	r3, r3, #4278190080	; 0xff000000
d0002732:	f8cc 307c 	str.w	r3, [ip, #124]	; 0x7c
d0002736:	428d      	cmp	r5, r1
d0002738:	f101 0101 	add.w	r1, r1, #1
d000273c:	d1eb      	bne.n	d0002716 <main+0xaa6>
d000273e:	9b04      	ldr	r3, [sp, #16]
d0002740:	f3c3 23c0 	ubfx	r3, r3, #11, #1
d0002744:	9304      	str	r3, [sp, #16]
d0002746:	9b07      	ldr	r3, [sp, #28]
d0002748:	2b00      	cmp	r3, #0
d000274a:	f040 837a 	bne.w	d0002e42 <main+0x11d2>
d000274e:	f89d 205c 	ldrb.w	r2, [sp, #92]	; 0x5c
d0002752:	2a18      	cmp	r2, #24
d0002754:	f000 8372 	beq.w	d0002e3c <main+0x11cc>
d0002758:	9b04      	ldr	r3, [sp, #16]
d000275a:	2b00      	cmp	r3, #0
d000275c:	f040 836a 	bne.w	d0002e34 <main+0x11c4>
d0002760:	2a08      	cmp	r2, #8
d0002762:	f200 8350 	bhi.w	d0002e06 <main+0x1196>
d0002766:	9b07      	ldr	r3, [sp, #28]
d0002768:	461d      	mov	r5, r3
d000276a:	9308      	str	r3, [sp, #32]
d000276c:	f104 030f 	add.w	r3, r4, #15
d0002770:	f89d 105d 	ldrb.w	r1, [sp, #93]	; 0x5d
d0002774:	091b      	lsrs	r3, r3, #4
d0002776:	2901      	cmp	r1, #1
d0002778:	bf08      	it	eq
d000277a:	3201      	addeq	r2, #1
d000277c:	005b      	lsls	r3, r3, #1
d000277e:	920a      	str	r2, [sp, #40]	; 0x28
d0002780:	9305      	str	r3, [sp, #20]
d0002782:	9b0a      	ldr	r3, [sp, #40]	; 0x28
d0002784:	9a05      	ldr	r2, [sp, #20]
d0002786:	fb03 f302 	mul.w	r3, r3, r2
d000278a:	4618      	mov	r0, r3
d000278c:	ee08 3a10 	vmov	s16, r3
d0002790:	f000 febc 	bl	d000350c <malloc>
d0002794:	4606      	mov	r6, r0
d0002796:	2800      	cmp	r0, #0
d0002798:	f000 832b 	beq.w	d0002df2 <main+0x1182>
d000279c:	fb07 f004 	mul.w	r0, r7, r4
d00027a0:	2d00      	cmp	r5, #0
d00027a2:	f000 831f 	beq.w	d0002de4 <main+0x1174>
d00027a6:	eb00 0040 	add.w	r0, r0, r0, lsl #1
d00027aa:	f000 feaf 	bl	d000350c <malloc>
d00027ae:	9003      	str	r0, [sp, #12]
d00027b0:	2800      	cmp	r0, #0
d00027b2:	f000 82fe 	beq.w	d0002db2 <main+0x1142>
d00027b6:	9f05      	ldr	r7, [sp, #20]
d00027b8:	2500      	movs	r5, #0
d00027ba:	f8cd 9044 	str.w	r9, [sp, #68]	; 0x44
d00027be:	00fb      	lsls	r3, r7, #3
d00027c0:	9505      	str	r5, [sp, #20]
d00027c2:	f8cd a018 	str.w	sl, [sp, #24]
d00027c6:	930d      	str	r3, [sp, #52]	; 0x34
d00027c8:	f8cd 8048 	str.w	r8, [sp, #72]	; 0x48
d00027cc:	f8bd 405a 	ldrh.w	r4, [sp, #90]	; 0x5a
d00027d0:	9b05      	ldr	r3, [sp, #20]
d00027d2:	42a3      	cmp	r3, r4
d00027d4:	f080 81c7 	bcs.w	d0002b66 <main+0xef6>
d00027d8:	f89d 305e 	ldrb.w	r3, [sp, #94]	; 0x5e
d00027dc:	2b00      	cmp	r3, #0
d00027de:	f040 816a 	bne.w	d0002ab6 <main+0xe46>
d00027e2:	ee18 3a10 	vmov	r3, s16
d00027e6:	9a0c      	ldr	r2, [sp, #48]	; 0x30
d00027e8:	442b      	add	r3, r5
d00027ea:	4293      	cmp	r3, r2
d00027ec:	f200 8151 	bhi.w	d0002a92 <main+0xe22>
d00027f0:	9a09      	ldr	r2, [sp, #36]	; 0x24
d00027f2:	4630      	mov	r0, r6
d00027f4:	1951      	adds	r1, r2, r5
d00027f6:	ee18 2a10 	vmov	r2, s16
d00027fa:	461d      	mov	r5, r3
d00027fc:	f000 fe96 	bl	d000352c <memcpy>
d0002800:	9b07      	ldr	r3, [sp, #28]
d0002802:	2b00      	cmp	r3, #0
d0002804:	f040 813a 	bne.w	d0002a7c <main+0xe0c>
d0002808:	9b08      	ldr	r3, [sp, #32]
d000280a:	2b00      	cmp	r3, #0
d000280c:	f040 80c8 	bne.w	d00029a0 <main+0xd30>
d0002810:	9b04      	ldr	r3, [sp, #16]
d0002812:	2b00      	cmp	r3, #0
d0002814:	f000 8086 	beq.w	d0002924 <main+0xcb4>
d0002818:	f89d 305c 	ldrb.w	r3, [sp, #92]	; 0x5c
d000281c:	2201      	movs	r2, #1
d000281e:	9808      	ldr	r0, [sp, #32]
d0002820:	46aa      	mov	sl, r5
d0002822:	2b07      	cmp	r3, #7
d0002824:	930e      	str	r3, [sp, #56]	; 0x38
d0002826:	4601      	mov	r1, r0
d0002828:	4680      	mov	r8, r0
d000282a:	bf8c      	ite	hi
d000282c:	2306      	movhi	r3, #6
d000282e:	2304      	movls	r3, #4
d0002830:	900b      	str	r0, [sp, #44]	; 0x2c
d0002832:	930f      	str	r3, [sp, #60]	; 0x3c
d0002834:	fa02 f303 	lsl.w	r3, r2, r3
d0002838:	3b01      	subs	r3, #1
d000283a:	b2db      	uxtb	r3, r3
d000283c:	9310      	str	r3, [sp, #64]	; 0x40
d000283e:	f8bd 2058 	ldrh.w	r2, [sp, #88]	; 0x58
d0002842:	4290      	cmp	r0, r2
d0002844:	d265      	bcs.n	d0002912 <main+0xca2>
d0002846:	2580      	movs	r5, #128	; 0x80
d0002848:	f000 0407 	and.w	r4, r0, #7
d000284c:	2300      	movs	r3, #0
d000284e:	eb06 09d0 	add.w	r9, r6, r0, lsr #3
d0002852:	fa25 f404 	lsr.w	r4, r5, r4
d0002856:	9213      	str	r2, [sp, #76]	; 0x4c
d0002858:	469e      	mov	lr, r3
d000285a:	4655      	mov	r5, sl
d000285c:	b2e4      	uxtb	r4, r4
d000285e:	e00a      	b.n	d0002876 <main+0xc06>
d0002860:	f1ba 0f07 	cmp.w	sl, #7
d0002864:	d812      	bhi.n	d000288c <main+0xc1c>
d0002866:	f899 a000 	ldrb.w	sl, [r9]
d000286a:	44b9      	add	r9, r7
d000286c:	ea14 0f0a 	tst.w	r4, sl
d0002870:	bf18      	it	ne
d0002872:	fa5f f38c 	uxtbne.w	r3, ip
d0002876:	2201      	movs	r2, #1
d0002878:	fa5f fa8e 	uxtb.w	sl, lr
d000287c:	fa02 fc0e 	lsl.w	ip, r2, lr
d0002880:	4496      	add	lr, r2
d0002882:	9a0e      	ldr	r2, [sp, #56]	; 0x38
d0002884:	ea43 0c0c 	orr.w	ip, r3, ip
d0002888:	4592      	cmp	sl, r2
d000288a:	d3e9      	bcc.n	d0002860 <main+0xbf0>
d000288c:	9c0f      	ldr	r4, [sp, #60]	; 0x3c
d000288e:	46aa      	mov	sl, r5
d0002890:	9d10      	ldr	r5, [sp, #64]	; 0x40
d0002892:	2c06      	cmp	r4, #6
d0002894:	fa43 fc04 	asr.w	ip, r3, r4
d0002898:	9a13      	ldr	r2, [sp, #76]	; 0x4c
d000289a:	ea03 0305 	and.w	r3, r3, r5
d000289e:	d02a      	beq.n	d00028f6 <main+0xc86>
d00028a0:	ea43 1403 	orr.w	r4, r3, r3, lsl #4
d00028a4:	b2e4      	uxtb	r4, r4
d00028a6:	f1bc 0f00 	cmp.w	ip, #0
d00028aa:	d129      	bne.n	d0002900 <main+0xc90>
d00028ac:	3302      	adds	r3, #2
d00028ae:	9902      	ldr	r1, [sp, #8]
d00028b0:	f851 1023 	ldr.w	r1, [r1, r3, lsl #2]
d00028b4:	f3c1 4307 	ubfx	r3, r1, #16, #8
d00028b8:	f3c1 2807 	ubfx	r8, r1, #8, #8
d00028bc:	b2c9      	uxtb	r1, r1
d00028be:	930b      	str	r3, [sp, #44]	; 0x2c
d00028c0:	9b05      	ldr	r3, [sp, #20]
d00028c2:	9c03      	ldr	r4, [sp, #12]
d00028c4:	fb02 0203 	mla	r2, r2, r3, r0
d00028c8:	9d0b      	ldr	r5, [sp, #44]	; 0x2c
d00028ca:	3001      	adds	r0, #1
d00028cc:	eb02 0242 	add.w	r2, r2, r2, lsl #1
d00028d0:	18a3      	adds	r3, r4, r2
d00028d2:	54a5      	strb	r5, [r4, r2]
d00028d4:	f883 8001 	strb.w	r8, [r3, #1]
d00028d8:	7099      	strb	r1, [r3, #2]
d00028da:	e7b0      	b.n	d000283e <main+0xbce>
d00028dc:	482d      	ldr	r0, [pc, #180]	; (d0002994 <main+0xd24>)
d00028de:	f7fe fcfb 	bl	d00012d8 <set_status>
d00028e2:	4650      	mov	r0, sl
d00028e4:	f000 fe1a 	bl	d000351c <free>
d00028e8:	f7ff f8d0 	bl	d0001a8c <free_image.constprop.0>
d00028ec:	f7ff bbf9 	b.w	d00020e2 <main+0x472>
d00028f0:	f04f 0e01 	mov.w	lr, #1
d00028f4:	e5e4      	b.n	d00024c0 <main+0x850>
d00028f6:	091c      	lsrs	r4, r3, #4
d00028f8:	ea44 0483 	orr.w	r4, r4, r3, lsl #2
d00028fc:	b2e4      	uxtb	r4, r4
d00028fe:	e7d2      	b.n	d00028a6 <main+0xc36>
d0002900:	f1bc 0f01 	cmp.w	ip, #1
d0002904:	fa5f f38c 	uxtb.w	r3, ip
d0002908:	d00a      	beq.n	d0002920 <main+0xcb0>
d000290a:	2b02      	cmp	r3, #2
d000290c:	d006      	beq.n	d000291c <main+0xcac>
d000290e:	46a0      	mov	r8, r4
d0002910:	e7d6      	b.n	d00028c0 <main+0xc50>
d0002912:	4655      	mov	r5, sl
d0002914:	9b05      	ldr	r3, [sp, #20]
d0002916:	3301      	adds	r3, #1
d0002918:	9305      	str	r3, [sp, #20]
d000291a:	e757      	b.n	d00027cc <main+0xb5c>
d000291c:	940b      	str	r4, [sp, #44]	; 0x2c
d000291e:	e7cf      	b.n	d00028c0 <main+0xc50>
d0002920:	4621      	mov	r1, r4
d0002922:	e7cd      	b.n	d00028c0 <main+0xc50>
d0002924:	9b04      	ldr	r3, [sp, #16]
d0002926:	f04f 0980 	mov.w	r9, #128	; 0x80
d000292a:	f8bd 2058 	ldrh.w	r2, [sp, #88]	; 0x58
d000292e:	429a      	cmp	r2, r3
d0002930:	d9f0      	bls.n	d0002914 <main+0xca4>
d0002932:	f003 0107 	and.w	r1, r3, #7
d0002936:	9c05      	ldr	r4, [sp, #20]
d0002938:	2000      	movs	r0, #0
d000293a:	f89d a05c 	ldrb.w	sl, [sp, #92]	; 0x5c
d000293e:	fb02 3804 	mla	r8, r2, r4, r3
d0002942:	fa29 f201 	lsr.w	r2, r9, r1
d0002946:	9902      	ldr	r1, [sp, #8]
d0002948:	4604      	mov	r4, r0
d000294a:	eb06 0cd3 	add.w	ip, r6, r3, lsr #3
d000294e:	6849      	ldr	r1, [r1, #4]
d0002950:	b2d2      	uxtb	r2, r2
d0002952:	910b      	str	r1, [sp, #44]	; 0x2c
d0002954:	e009      	b.n	d000296a <main+0xcfa>
d0002956:	f1be 0f07 	cmp.w	lr, #7
d000295a:	d811      	bhi.n	d0002980 <main+0xd10>
d000295c:	f89c e000 	ldrb.w	lr, [ip]
d0002960:	44bc      	add	ip, r7
d0002962:	ea12 0f0e 	tst.w	r2, lr
d0002966:	bf18      	it	ne
d0002968:	b2c8      	uxtbne	r0, r1
d000296a:	fa5f fe84 	uxtb.w	lr, r4
d000296e:	2101      	movs	r1, #1
d0002970:	45d6      	cmp	lr, sl
d0002972:	fa01 f104 	lsl.w	r1, r1, r4
d0002976:	f104 0401 	add.w	r4, r4, #1
d000297a:	ea41 0100 	orr.w	r1, r1, r0
d000297e:	d3ea      	bcc.n	d0002956 <main+0xce6>
d0002980:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
d0002982:	3301      	adds	r3, #1
d0002984:	f802 0008 	strb.w	r0, [r2, r8]
d0002988:	e7cf      	b.n	d000292a <main+0xcba>
d000298a:	bf00      	nop
d000298c:	f3af 8000 	nop.w
d0002990:	d0006578 	.word	0xd0006578
d0002994:	d0004a90 	.word	0xd0004a90
d0002998:	004c4b40 	.word	0x004c4b40
d000299c:	00000000 	.word	0x00000000
d00029a0:	9907      	ldr	r1, [sp, #28]
d00029a2:	f04f 0a80 	mov.w	sl, #128	; 0x80
d00029a6:	f8bd 3058 	ldrh.w	r3, [sp, #88]	; 0x58
d00029aa:	428b      	cmp	r3, r1
d00029ac:	d9b2      	bls.n	d0002914 <main+0xca4>
d00029ae:	9a05      	ldr	r2, [sp, #20]
d00029b0:	f001 0007 	and.w	r0, r1, #7
d00029b4:	f04f 0c00 	mov.w	ip, #0
d00029b8:	9c03      	ldr	r4, [sp, #12]
d00029ba:	fb03 1302 	mla	r3, r3, r2, r1
d00029be:	fa2a f000 	lsr.w	r0, sl, r0
d00029c2:	08ca      	lsrs	r2, r1, #3
d00029c4:	46e6      	mov	lr, ip
d00029c6:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d00029ca:	eb06 08d1 	add.w	r8, r6, r1, lsr #3
d00029ce:	441c      	add	r4, r3
d00029d0:	b2c0      	uxtb	r0, r0
d00029d2:	940b      	str	r4, [sp, #44]	; 0x2c
d00029d4:	fa2a f40e 	lsr.w	r4, sl, lr
d00029d8:	f898 9000 	ldrb.w	r9, [r8]
d00029dc:	f10e 0e01 	add.w	lr, lr, #1
d00029e0:	44b8      	add	r8, r7
d00029e2:	ea10 0f09 	tst.w	r0, r9
d00029e6:	ea4c 0404 	orr.w	r4, ip, r4
d00029ea:	bf18      	it	ne
d00029ec:	fa5f fc84 	uxtbne.w	ip, r4
d00029f0:	f1be 0f08 	cmp.w	lr, #8
d00029f4:	d1ee      	bne.n	d00029d4 <main+0xd64>
d00029f6:	9c0d      	ldr	r4, [sp, #52]	; 0x34
d00029f8:	f04f 0e00 	mov.w	lr, #0
d00029fc:	eb02 0904 	add.w	r9, r2, r4
d0002a00:	9c0b      	ldr	r4, [sp, #44]	; 0x2c
d0002a02:	1c5a      	adds	r2, r3, #1
d0002a04:	f884 c000 	strb.w	ip, [r4]
d0002a08:	eb06 0809 	add.w	r8, r6, r9
d0002a0c:	4614      	mov	r4, r2
d0002a0e:	9a03      	ldr	r2, [sp, #12]
d0002a10:	46f4      	mov	ip, lr
d0002a12:	1914      	adds	r4, r2, r4
d0002a14:	464a      	mov	r2, r9
d0002a16:	940b      	str	r4, [sp, #44]	; 0x2c
d0002a18:	fa2a f40c 	lsr.w	r4, sl, ip
d0002a1c:	f898 9000 	ldrb.w	r9, [r8]
d0002a20:	f10c 0c01 	add.w	ip, ip, #1
d0002a24:	44b8      	add	r8, r7
d0002a26:	ea10 0f09 	tst.w	r0, r9
d0002a2a:	ea4e 0404 	orr.w	r4, lr, r4
d0002a2e:	bf18      	it	ne
d0002a30:	fa5f fe84 	uxtbne.w	lr, r4
d0002a34:	f1bc 0f08 	cmp.w	ip, #8
d0002a38:	d1ee      	bne.n	d0002a18 <main+0xda8>
d0002a3a:	1c9c      	adds	r4, r3, #2
d0002a3c:	9b0d      	ldr	r3, [sp, #52]	; 0x34
d0002a3e:	f04f 0c00 	mov.w	ip, #0
d0002a42:	441a      	add	r2, r3
d0002a44:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
d0002a46:	f883 e000 	strb.w	lr, [r3]
d0002a4a:	46e6      	mov	lr, ip
d0002a4c:	9b03      	ldr	r3, [sp, #12]
d0002a4e:	441c      	add	r4, r3
d0002a50:	18b3      	adds	r3, r6, r2
d0002a52:	fa2a f20e 	lsr.w	r2, sl, lr
d0002a56:	f893 8000 	ldrb.w	r8, [r3]
d0002a5a:	f10e 0e01 	add.w	lr, lr, #1
d0002a5e:	443b      	add	r3, r7
d0002a60:	ea10 0f08 	tst.w	r0, r8
d0002a64:	ea4c 0202 	orr.w	r2, ip, r2
d0002a68:	bf18      	it	ne
d0002a6a:	fa5f fc82 	uxtbne.w	ip, r2
d0002a6e:	f1be 0f08 	cmp.w	lr, #8
d0002a72:	d1ee      	bne.n	d0002a52 <main+0xde2>
d0002a74:	3101      	adds	r1, #1
d0002a76:	f884 c000 	strb.w	ip, [r4]
d0002a7a:	e794      	b.n	d00029a6 <main+0xd36>
d0002a7c:	9b02      	ldr	r3, [sp, #8]
d0002a7e:	4631      	mov	r1, r6
d0002a80:	f8bd 2058 	ldrh.w	r2, [sp, #88]	; 0x58
d0002a84:	6858      	ldr	r0, [r3, #4]
d0002a86:	9b05      	ldr	r3, [sp, #20]
d0002a88:	fb03 0002 	mla	r0, r3, r2, r0
d0002a8c:	f000 fd4e 	bl	d000352c <memcpy>
d0002a90:	e740      	b.n	d0002914 <main+0xca4>
d0002a92:	4630      	mov	r0, r6
d0002a94:	f8dd a018 	ldr.w	sl, [sp, #24]
d0002a98:	f000 fd40 	bl	d000351c <free>
d0002a9c:	9803      	ldr	r0, [sp, #12]
d0002a9e:	f000 fd3d 	bl	d000351c <free>
d0002aa2:	48ca      	ldr	r0, [pc, #808]	; (d0002dcc <main+0x115c>)
d0002aa4:	f7fe fc18 	bl	d00012d8 <set_status>
d0002aa8:	4650      	mov	r0, sl
d0002aaa:	f000 fd37 	bl	d000351c <free>
d0002aae:	f7fe ffed 	bl	d0001a8c <free_image.constprop.0>
d0002ab2:	f7ff bb16 	b.w	d00020e2 <main+0x472>
d0002ab6:	46ac      	mov	ip, r5
d0002ab8:	46b0      	mov	r8, r6
d0002aba:	f04f 0900 	mov.w	r9, #0
d0002abe:	f8dd a024 	ldr.w	sl, [sp, #36]	; 0x24
d0002ac2:	9d0c      	ldr	r5, [sp, #48]	; 0x30
d0002ac4:	9b0a      	ldr	r3, [sp, #40]	; 0x28
d0002ac6:	454b      	cmp	r3, r9
d0002ac8:	d04b      	beq.n	d0002b62 <main+0xef2>
d0002aca:	2000      	movs	r0, #0
d0002acc:	4287      	cmp	r7, r0
d0002ace:	d930      	bls.n	d0002b32 <main+0xec2>
d0002ad0:	4565      	cmp	r5, ip
d0002ad2:	d92e      	bls.n	d0002b32 <main+0xec2>
d0002ad4:	f91a 300c 	ldrsb.w	r3, [sl, ip]
d0002ad8:	f10c 0401 	add.w	r4, ip, #1
d0002adc:	2b00      	cmp	r3, #0
d0002ade:	db12      	blt.n	d0002b06 <main+0xe96>
d0002ae0:	1c5a      	adds	r2, r3, #1
d0002ae2:	eb04 0c02 	add.w	ip, r4, r2
d0002ae6:	4565      	cmp	r5, ip
d0002ae8:	d329      	bcc.n	d0002b3e <main+0xece>
d0002aea:	1813      	adds	r3, r2, r0
d0002aec:	429f      	cmp	r7, r3
d0002aee:	930b      	str	r3, [sp, #44]	; 0x2c
d0002af0:	d325      	bcc.n	d0002b3e <main+0xece>
d0002af2:	eb0a 0104 	add.w	r1, sl, r4
d0002af6:	4440      	add	r0, r8
d0002af8:	4664      	mov	r4, ip
d0002afa:	f000 fd17 	bl	d000352c <memcpy>
d0002afe:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
d0002b00:	4618      	mov	r0, r3
d0002b02:	46a4      	mov	ip, r4
d0002b04:	e7e2      	b.n	d0002acc <main+0xe5c>
d0002b06:	f113 0f80 	cmn.w	r3, #128	; 0x80
d0002b0a:	d0fa      	beq.n	d0002b02 <main+0xe92>
d0002b0c:	42a5      	cmp	r5, r4
d0002b0e:	f1c3 0201 	rsb	r2, r3, #1
d0002b12:	d914      	bls.n	d0002b3e <main+0xece>
d0002b14:	1883      	adds	r3, r0, r2
d0002b16:	429f      	cmp	r7, r3
d0002b18:	930b      	str	r3, [sp, #44]	; 0x2c
d0002b1a:	d310      	bcc.n	d0002b3e <main+0xece>
d0002b1c:	f81a 1004 	ldrb.w	r1, [sl, r4]
d0002b20:	4440      	add	r0, r8
d0002b22:	f10c 0402 	add.w	r4, ip, #2
d0002b26:	f000 fd0f 	bl	d0003548 <memset>
d0002b2a:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
d0002b2c:	46a4      	mov	ip, r4
d0002b2e:	4618      	mov	r0, r3
d0002b30:	e7cc      	b.n	d0002acc <main+0xe5c>
d0002b32:	4287      	cmp	r7, r0
d0002b34:	44b8      	add	r8, r7
d0002b36:	d102      	bne.n	d0002b3e <main+0xece>
d0002b38:	f109 0901 	add.w	r9, r9, #1
d0002b3c:	e7c2      	b.n	d0002ac4 <main+0xe54>
d0002b3e:	4630      	mov	r0, r6
d0002b40:	f8dd a018 	ldr.w	sl, [sp, #24]
d0002b44:	f000 fcea 	bl	d000351c <free>
d0002b48:	9803      	ldr	r0, [sp, #12]
d0002b4a:	f000 fce7 	bl	d000351c <free>
d0002b4e:	48a0      	ldr	r0, [pc, #640]	; (d0002dd0 <main+0x1160>)
d0002b50:	f7fe fbc2 	bl	d00012d8 <set_status>
d0002b54:	4650      	mov	r0, sl
d0002b56:	f000 fce1 	bl	d000351c <free>
d0002b5a:	f7fe ff97 	bl	d0001a8c <free_image.constprop.0>
d0002b5e:	f7ff bac0 	b.w	d00020e2 <main+0x472>
d0002b62:	4665      	mov	r5, ip
d0002b64:	e64c      	b.n	d0002800 <main+0xb90>
d0002b66:	4630      	mov	r0, r6
d0002b68:	f8dd 9044 	ldr.w	r9, [sp, #68]	; 0x44
d0002b6c:	f8dd a018 	ldr.w	sl, [sp, #24]
d0002b70:	f8dd 8048 	ldr.w	r8, [sp, #72]	; 0x48
d0002b74:	f000 fcd2 	bl	d000351c <free>
d0002b78:	9b03      	ldr	r3, [sp, #12]
d0002b7a:	2b00      	cmp	r3, #0
d0002b7c:	f040 8103 	bne.w	d0002d86 <main+0x1116>
d0002b80:	4650      	mov	r0, sl
d0002b82:	f000 fccb 	bl	d000351c <free>
d0002b86:	9c02      	ldr	r4, [sp, #8]
d0002b88:	21a0      	movs	r1, #160	; 0xa0
d0002b8a:	4a92      	ldr	r2, [pc, #584]	; (d0002dd4 <main+0x1164>)
d0002b8c:	4647      	mov	r7, r8
d0002b8e:	8863      	ldrh	r3, [r4, #2]
d0002b90:	4891      	ldr	r0, [pc, #580]	; (d0002dd8 <main+0x1168>)
d0002b92:	e9cd 3900 	strd	r3, r9, [sp]
d0002b96:	8823      	ldrh	r3, [r4, #0]
d0002b98:	f04f 0900 	mov.w	r9, #0
d0002b9c:	f000 ffee 	bl	d0003b7c <sniprintf>
d0002ba0:	488d      	ldr	r0, [pc, #564]	; (d0002dd8 <main+0x1168>)
d0002ba2:	f7fe fb99 	bl	d00012d8 <set_status>
d0002ba6:	8823      	ldrh	r3, [r4, #0]
d0002ba8:	f89b 200c 	ldrb.w	r2, [fp, #12]
d0002bac:	464e      	mov	r6, r9
d0002bae:	f5b3 7ff0 	cmp.w	r3, #480	; 0x1e0
d0002bb2:	f89b 100d 	ldrb.w	r1, [fp, #13]
d0002bb6:	4889      	ldr	r0, [pc, #548]	; (d0002ddc <main+0x116c>)
d0002bb8:	46ca      	mov	sl, r9
d0002bba:	bf2c      	ite	cs
d0002bbc:	f5a3 73f0 	subcs.w	r3, r3, #480	; 0x1e0
d0002bc0:	2300      	movcc	r3, #0
d0002bc2:	ea42 2201 	orr.w	r2, r2, r1, lsl #8
d0002bc6:	f8cd 900c 	str.w	r9, [sp, #12]
d0002bca:	9306      	str	r3, [sp, #24]
d0002bcc:	46c8      	mov	r8, r9
d0002bce:	9b02      	ldr	r3, [sp, #8]
d0002bd0:	f8cd 9014 	str.w	r9, [sp, #20]
d0002bd4:	885b      	ldrh	r3, [r3, #2]
d0002bd6:	f8cd 9008 	str.w	r9, [sp, #8]
d0002bda:	f5b3 7fa0 	cmp.w	r3, #320	; 0x140
d0002bde:	f8cd 9010 	str.w	r9, [sp, #16]
d0002be2:	bf2c      	ite	cs
d0002be4:	f5a3 73a0 	subcs.w	r3, r3, #320	; 0x140
d0002be8:	2300      	movcc	r3, #0
d0002bea:	9307      	str	r3, [sp, #28]
d0002bec:	f89b 300e 	ldrb.w	r3, [fp, #14]
d0002bf0:	f89b 100f 	ldrb.w	r1, [fp, #15]
d0002bf4:	ea42 4303 	orr.w	r3, r2, r3, lsl #16
d0002bf8:	ea43 6301 	orr.w	r3, r3, r1, lsl #24
d0002bfc:	681b      	ldr	r3, [r3, #0]
d0002bfe:	6cdb      	ldr	r3, [r3, #76]	; 0x4c
d0002c00:	4798      	blx	r3
d0002c02:	f89b 3000 	ldrb.w	r3, [fp]
d0002c06:	f89b 2001 	ldrb.w	r2, [fp, #1]
d0002c0a:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0002c0e:	f89b 2002 	ldrb.w	r2, [fp, #2]
d0002c12:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d0002c16:	f89b 2003 	ldrb.w	r2, [fp, #3]
d0002c1a:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0002c1e:	69db      	ldr	r3, [r3, #28]
d0002c20:	4798      	blx	r3
d0002c22:	4649      	mov	r1, r9
d0002c24:	4648      	mov	r0, r9
d0002c26:	f7fe fbb1 	bl	d000138c <render_view.constprop.0>
d0002c2a:	f89b 5000 	ldrb.w	r5, [fp]
d0002c2e:	a915      	add	r1, sp, #84	; 0x54
d0002c30:	f89b 4001 	ldrb.w	r4, [fp, #1]
d0002c34:	f10d 0052 	add.w	r0, sp, #82	; 0x52
d0002c38:	f8ad a052 	strh.w	sl, [sp, #82]	; 0x52
d0002c3c:	ea45 2404 	orr.w	r4, r5, r4, lsl #8
d0002c40:	f89b 5002 	ldrb.w	r5, [fp, #2]
d0002c44:	f8ad a054 	strh.w	sl, [sp, #84]	; 0x54
d0002c48:	ea44 4505 	orr.w	r5, r4, r5, lsl #16
d0002c4c:	f89b 4003 	ldrb.w	r4, [fp, #3]
d0002c50:	f8ad a056 	strh.w	sl, [sp, #86]	; 0x56
d0002c54:	ea45 6404 	orr.w	r4, r5, r4, lsl #24
d0002c58:	f8ad a058 	strh.w	sl, [sp, #88]	; 0x58
d0002c5c:	6924      	ldr	r4, [r4, #16]
d0002c5e:	47a0      	blx	r4
d0002c60:	f89b 4018 	ldrb.w	r4, [fp, #24]
d0002c64:	f89b 0019 	ldrb.w	r0, [fp, #25]
d0002c68:	a916      	add	r1, sp, #88	; 0x58
d0002c6a:	f89b 501a 	ldrb.w	r5, [fp, #26]
d0002c6e:	ea44 2000 	orr.w	r0, r4, r0, lsl #8
d0002c72:	f89b 401b 	ldrb.w	r4, [fp, #27]
d0002c76:	ea40 4505 	orr.w	r5, r0, r5, lsl #16
d0002c7a:	f10d 0056 	add.w	r0, sp, #86	; 0x56
d0002c7e:	ea45 6404 	orr.w	r4, r5, r4, lsl #24
d0002c82:	68a4      	ldr	r4, [r4, #8]
d0002c84:	47a0      	blx	r4
d0002c86:	f89b 1000 	ldrb.w	r1, [fp]
d0002c8a:	f89b 4001 	ldrb.w	r4, [fp, #1]
d0002c8e:	4605      	mov	r5, r0
d0002c90:	f89b 0002 	ldrb.w	r0, [fp, #2]
d0002c94:	ea41 2404 	orr.w	r4, r1, r4, lsl #8
d0002c98:	f89b 1003 	ldrb.w	r1, [fp, #3]
d0002c9c:	ea44 4000 	orr.w	r0, r4, r0, lsl #16
d0002ca0:	ea40 6101 	orr.w	r1, r0, r1, lsl #24
d0002ca4:	6a09      	ldr	r1, [r1, #32]
d0002ca6:	4788      	blx	r1
d0002ca8:	f000 0103 	and.w	r1, r0, #3
d0002cac:	2903      	cmp	r1, #3
d0002cae:	d02b      	beq.n	d0002d08 <main+0x1098>
d0002cb0:	f010 0401 	ands.w	r4, r0, #1
d0002cb4:	d03f      	beq.n	d0002d36 <main+0x10c6>
d0002cb6:	2f00      	cmp	r7, #0
d0002cb8:	d05a      	beq.n	d0002d70 <main+0x1100>
d0002cba:	f9bd 0052 	ldrsh.w	r0, [sp, #82]	; 0x52
d0002cbe:	9b04      	ldr	r3, [sp, #16]
d0002cc0:	f9bd 1054 	ldrsh.w	r1, [sp, #84]	; 0x54
d0002cc4:	eba0 0c03 	sub.w	ip, r0, r3
d0002cc8:	9b05      	ldr	r3, [sp, #20]
d0002cca:	9004      	str	r0, [sp, #16]
d0002ccc:	1ac8      	subs	r0, r1, r3
d0002cce:	eba8 080c 	sub.w	r8, r8, ip
d0002cd2:	9105      	str	r1, [sp, #20]
d0002cd4:	1a36      	subs	r6, r6, r0
d0002cd6:	b145      	cbz	r5, d0002cea <main+0x107a>
d0002cd8:	f9bd 0056 	ldrsh.w	r0, [sp, #86]	; 0x56
d0002cdc:	f1b9 0f00 	cmp.w	r9, #0
d0002ce0:	d138      	bne.n	d0002d54 <main+0x10e4>
d0002ce2:	f9bd 1058 	ldrsh.w	r1, [sp, #88]	; 0x58
d0002ce6:	9002      	str	r0, [sp, #8]
d0002ce8:	9103      	str	r1, [sp, #12]
d0002cea:	f1b8 0f00 	cmp.w	r8, #0
d0002cee:	da24      	bge.n	d0002d3a <main+0x10ca>
d0002cf0:	f04f 0800 	mov.w	r8, #0
d0002cf4:	2e00      	cmp	r6, #0
d0002cf6:	db25      	blt.n	d0002d44 <main+0x10d4>
d0002cf8:	9b07      	ldr	r3, [sp, #28]
d0002cfa:	429e      	cmp	r6, r3
d0002cfc:	bfa8      	it	ge
d0002cfe:	461e      	movge	r6, r3
d0002d00:	bb1f      	cbnz	r7, d0002d4a <main+0x10da>
d0002d02:	46a9      	mov	r9, r5
d0002d04:	4627      	mov	r7, r4
d0002d06:	e790      	b.n	d0002c2a <main+0xfba>
d0002d08:	f89b 1000 	ldrb.w	r1, [fp]
d0002d0c:	f89b 3001 	ldrb.w	r3, [fp, #1]
d0002d10:	f89b 2002 	ldrb.w	r2, [fp, #2]
d0002d14:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
d0002d18:	f89b 3003 	ldrb.w	r3, [fp, #3]
d0002d1c:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d0002d20:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0002d24:	6a1b      	ldr	r3, [r3, #32]
d0002d26:	4798      	blx	r3
d0002d28:	f000 0003 	and.w	r0, r0, #3
d0002d2c:	2803      	cmp	r0, #3
d0002d2e:	d0eb      	beq.n	d0002d08 <main+0x1098>
d0002d30:	2400      	movs	r4, #0
d0002d32:	f7ff b9dc 	b.w	d00020ee <main+0x47e>
d0002d36:	bb25      	cbnz	r5, d0002d82 <main+0x1112>
d0002d38:	462f      	mov	r7, r5
d0002d3a:	9b06      	ldr	r3, [sp, #24]
d0002d3c:	4598      	cmp	r8, r3
d0002d3e:	bfa8      	it	ge
d0002d40:	4698      	movge	r8, r3
d0002d42:	e7d7      	b.n	d0002cf4 <main+0x1084>
d0002d44:	2600      	movs	r6, #0
d0002d46:	2f00      	cmp	r7, #0
d0002d48:	d0db      	beq.n	d0002d02 <main+0x1092>
d0002d4a:	4631      	mov	r1, r6
d0002d4c:	4640      	mov	r0, r8
d0002d4e:	f7fe fb1d 	bl	d000138c <render_view.constprop.0>
d0002d52:	e7d6      	b.n	d0002d02 <main+0x1092>
d0002d54:	9b02      	ldr	r3, [sp, #8]
d0002d56:	2701      	movs	r7, #1
d0002d58:	f9bd 1058 	ldrsh.w	r1, [sp, #88]	; 0x58
d0002d5c:	eba0 0e03 	sub.w	lr, r0, r3
d0002d60:	9b03      	ldr	r3, [sp, #12]
d0002d62:	eba1 0c03 	sub.w	ip, r1, r3
d0002d66:	eba8 080e 	sub.w	r8, r8, lr
d0002d6a:	eba6 060c 	sub.w	r6, r6, ip
d0002d6e:	e7ba      	b.n	d0002ce6 <main+0x1076>
d0002d70:	f9bd 3052 	ldrsh.w	r3, [sp, #82]	; 0x52
d0002d74:	9304      	str	r3, [sp, #16]
d0002d76:	f9bd 3054 	ldrsh.w	r3, [sp, #84]	; 0x54
d0002d7a:	9305      	str	r3, [sp, #20]
d0002d7c:	2d00      	cmp	r5, #0
d0002d7e:	d1ab      	bne.n	d0002cd8 <main+0x1068>
d0002d80:	e7db      	b.n	d0002d3a <main+0x10ca>
d0002d82:	4627      	mov	r7, r4
d0002d84:	e7a8      	b.n	d0002cd8 <main+0x1068>
d0002d86:	9d03      	ldr	r5, [sp, #12]
d0002d88:	f8bd 1058 	ldrh.w	r1, [sp, #88]	; 0x58
d0002d8c:	4628      	mov	r0, r5
d0002d8e:	fb04 f101 	mul.w	r1, r4, r1
d0002d92:	f7fe fbb5 	bl	d0001500 <quantize_rgb_to_image.constprop.0>
d0002d96:	4604      	mov	r4, r0
d0002d98:	4628      	mov	r0, r5
d0002d9a:	f000 fbbf 	bl	d000351c <free>
d0002d9e:	4650      	mov	r0, sl
d0002da0:	f000 fbbc 	bl	d000351c <free>
d0002da4:	2c00      	cmp	r4, #0
d0002da6:	f47f aeee 	bne.w	d0002b86 <main+0xf16>
d0002daa:	f7fe fe6f 	bl	d0001a8c <free_image.constprop.0>
d0002dae:	f7ff b998 	b.w	d00020e2 <main+0x472>
d0002db2:	4630      	mov	r0, r6
d0002db4:	f000 fbb2 	bl	d000351c <free>
d0002db8:	4809      	ldr	r0, [pc, #36]	; (d0002de0 <main+0x1170>)
d0002dba:	f7fe fa8d 	bl	d00012d8 <set_status>
d0002dbe:	4650      	mov	r0, sl
d0002dc0:	f000 fbac 	bl	d000351c <free>
d0002dc4:	f7fe fe62 	bl	d0001a8c <free_image.constprop.0>
d0002dc8:	f7ff b98b 	b.w	d00020e2 <main+0x472>
d0002dcc:	d0004bdc 	.word	0xd0004bdc
d0002dd0:	d0004bf4 	.word	0xd0004bf4
d0002dd4:	d0004c2c 	.word	0xd0004c2c
d0002dd8:	d0006984 	.word	0xd0006984
d0002ddc:	d0006580 	.word	0xd0006580
d0002de0:	d0004b90 	.word	0xd0004b90
d0002de4:	f000 fb92 	bl	d000350c <malloc>
d0002de8:	9b02      	ldr	r3, [sp, #8]
d0002dea:	6058      	str	r0, [r3, #4]
d0002dec:	b1a8      	cbz	r0, d0002e1a <main+0x11aa>
d0002dee:	9503      	str	r5, [sp, #12]
d0002df0:	e4e1      	b.n	d00027b6 <main+0xb46>
d0002df2:	48c3      	ldr	r0, [pc, #780]	; (d0003100 <main+0x1490>)
d0002df4:	f7fe fa70 	bl	d00012d8 <set_status>
d0002df8:	4650      	mov	r0, sl
d0002dfa:	f000 fb8f 	bl	d000351c <free>
d0002dfe:	f7fe fe45 	bl	d0001a8c <free_image.constprop.0>
d0002e02:	f7ff b96e 	b.w	d00020e2 <main+0x472>
d0002e06:	48bf      	ldr	r0, [pc, #764]	; (d0003104 <main+0x1494>)
d0002e08:	f7fe fa66 	bl	d00012d8 <set_status>
d0002e0c:	4650      	mov	r0, sl
d0002e0e:	f000 fb85 	bl	d000351c <free>
d0002e12:	f7fe fe3b 	bl	d0001a8c <free_image.constprop.0>
d0002e16:	f7ff b964 	b.w	d00020e2 <main+0x472>
d0002e1a:	4630      	mov	r0, r6
d0002e1c:	f000 fb7e 	bl	d000351c <free>
d0002e20:	48b9      	ldr	r0, [pc, #740]	; (d0003108 <main+0x1498>)
d0002e22:	f7fe fa59 	bl	d00012d8 <set_status>
d0002e26:	4650      	mov	r0, sl
d0002e28:	f000 fb78 	bl	d000351c <free>
d0002e2c:	f7fe fe2e 	bl	d0001a8c <free_image.constprop.0>
d0002e30:	f7ff b957 	b.w	d00020e2 <main+0x472>
d0002e34:	461d      	mov	r5, r3
d0002e36:	9b07      	ldr	r3, [sp, #28]
d0002e38:	9308      	str	r3, [sp, #32]
d0002e3a:	e497      	b.n	d000276c <main+0xafc>
d0002e3c:	2501      	movs	r5, #1
d0002e3e:	9508      	str	r5, [sp, #32]
d0002e40:	e494      	b.n	d000276c <main+0xafc>
d0002e42:	9b04      	ldr	r3, [sp, #16]
d0002e44:	b96b      	cbnz	r3, d0002e62 <main+0x11f2>
d0002e46:	f89d 305c 	ldrb.w	r3, [sp, #92]	; 0x5c
d0002e4a:	2b08      	cmp	r3, #8
d0002e4c:	d8db      	bhi.n	d0002e06 <main+0x1196>
d0002e4e:	9d04      	ldr	r5, [sp, #16]
d0002e50:	2200      	movs	r2, #0
d0002e52:	1c63      	adds	r3, r4, #1
d0002e54:	9208      	str	r2, [sp, #32]
d0002e56:	f023 0301 	bic.w	r3, r3, #1
d0002e5a:	2201      	movs	r2, #1
d0002e5c:	9305      	str	r3, [sp, #20]
d0002e5e:	920a      	str	r2, [sp, #40]	; 0x28
d0002e60:	e48f      	b.n	d0002782 <main+0xb12>
d0002e62:	461d      	mov	r5, r3
d0002e64:	e7f4      	b.n	d0002e50 <main+0x11e0>
d0002e66:	48a9      	ldr	r0, [pc, #676]	; (d000310c <main+0x149c>)
d0002e68:	f7fe fa36 	bl	d00012d8 <set_status>
d0002e6c:	4650      	mov	r0, sl
d0002e6e:	f000 fb55 	bl	d000351c <free>
d0002e72:	f7fe fe0b 	bl	d0001a8c <free_image.constprop.0>
d0002e76:	f7ff b934 	b.w	d00020e2 <main+0x472>
d0002e7a:	48a5      	ldr	r0, [pc, #660]	; (d0003110 <main+0x14a0>)
d0002e7c:	f7fe fa2c 	bl	d00012d8 <set_status>
d0002e80:	4650      	mov	r0, sl
d0002e82:	f000 fb4b 	bl	d000351c <free>
d0002e86:	f7fe fe01 	bl	d0001a8c <free_image.constprop.0>
d0002e8a:	f7ff b92a 	b.w	d00020e2 <main+0x472>
d0002e8e:	48a1      	ldr	r0, [pc, #644]	; (d0003114 <main+0x14a4>)
d0002e90:	f7fe fa22 	bl	d00012d8 <set_status>
d0002e94:	4650      	mov	r0, sl
d0002e96:	f000 fb41 	bl	d000351c <free>
d0002e9a:	f7fe fdf7 	bl	d0001a8c <free_image.constprop.0>
d0002e9e:	f7ff b920 	b.w	d00020e2 <main+0x472>
d0002ea2:	2a03      	cmp	r2, #3
d0002ea4:	9b05      	ldr	r3, [sp, #20]
d0002ea6:	d00d      	beq.n	d0002ec4 <main+0x1254>
d0002ea8:	2b10      	cmp	r3, #16
d0002eaa:	f04f 0300 	mov.w	r3, #0
d0002eae:	f47f aa4d 	bne.w	d000234c <main+0x6dc>
d0002eb2:	221f      	movs	r2, #31
d0002eb4:	f44f 45f8 	mov.w	r5, #31744	; 0x7c00
d0002eb8:	9207      	str	r2, [sp, #28]
d0002eba:	f44f 7278 	mov.w	r2, #992	; 0x3e0
d0002ebe:	9206      	str	r2, [sp, #24]
d0002ec0:	f7ff ba54 	b.w	d000236c <main+0x6fc>
d0002ec4:	2b10      	cmp	r3, #16
d0002ec6:	d007      	beq.n	d0002ed8 <main+0x1268>
d0002ec8:	f1a3 0c20 	sub.w	ip, r3, #32
d0002ecc:	f1dc 0300 	rsbs	r3, ip, #0
d0002ed0:	eb43 030c 	adc.w	r3, r3, ip
d0002ed4:	2b00      	cmp	r3, #0
d0002ed6:	d0ec      	beq.n	d0002eb2 <main+0x1242>
d0002ed8:	2d33      	cmp	r5, #51	; 0x33
d0002eda:	d80d      	bhi.n	d0002ef8 <main+0x1288>
d0002edc:	2c41      	cmp	r4, #65	; 0x41
d0002ede:	d80b      	bhi.n	d0002ef8 <main+0x1288>
d0002ee0:	2300      	movs	r3, #0
d0002ee2:	e7e6      	b.n	d0002eb2 <main+0x1242>
d0002ee4:	488c      	ldr	r0, [pc, #560]	; (d0003118 <main+0x14a8>)
d0002ee6:	f7fe f9f7 	bl	d00012d8 <set_status>
d0002eea:	4650      	mov	r0, sl
d0002eec:	f000 fb16 	bl	d000351c <free>
d0002ef0:	f7fe fdcc 	bl	d0001a8c <free_image.constprop.0>
d0002ef4:	f7ff b8f5 	b.w	d00020e2 <main+0x472>
d0002ef8:	f8ba 103a 	ldrh.w	r1, [sl, #58]	; 0x3a
d0002efc:	2300      	movs	r3, #0
d0002efe:	f8ba 003c 	ldrh.w	r0, [sl, #60]	; 0x3c
d0002f02:	f8ba 2036 	ldrh.w	r2, [sl, #54]	; 0x36
d0002f06:	ea41 4100 	orr.w	r1, r1, r0, lsl #16
d0002f0a:	f8ba 5038 	ldrh.w	r5, [sl, #56]	; 0x38
d0002f0e:	9106      	str	r1, [sp, #24]
d0002f10:	ea42 4505 	orr.w	r5, r2, r5, lsl #16
d0002f14:	f8ba 1040 	ldrh.w	r1, [sl, #64]	; 0x40
d0002f18:	f8ba 203e 	ldrh.w	r2, [sl, #62]	; 0x3e
d0002f1c:	ea42 4201 	orr.w	r2, r2, r1, lsl #16
d0002f20:	9207      	str	r2, [sp, #28]
d0002f22:	f7ff ba23 	b.w	d000236c <main+0x6fc>
d0002f26:	f027 0708 	bic.w	r7, r7, #8
d0002f2a:	2f10      	cmp	r7, #16
d0002f2c:	d003      	beq.n	d0002f36 <main+0x12c6>
d0002f2e:	9b05      	ldr	r3, [sp, #20]
d0002f30:	2b20      	cmp	r3, #32
d0002f32:	f040 8134 	bne.w	d000319e <main+0x152e>
d0002f36:	9b03      	ldr	r3, [sp, #12]
d0002f38:	9a04      	ldr	r2, [sp, #16]
d0002f3a:	fb03 f302 	mul.w	r3, r3, r2
d0002f3e:	eb03 0043 	add.w	r0, r3, r3, lsl #1
d0002f42:	930e      	str	r3, [sp, #56]	; 0x38
d0002f44:	f000 fae2 	bl	d000350c <malloc>
d0002f48:	2800      	cmp	r0, #0
d0002f4a:	f000 810a 	beq.w	d0003162 <main+0x14f2>
d0002f4e:	9a03      	ldr	r2, [sp, #12]
d0002f50:	2300      	movs	r3, #0
d0002f52:	f8cd a034 	str.w	sl, [sp, #52]	; 0x34
d0002f56:	ee07 0a90 	vmov	s15, r0
d0002f5a:	46aa      	mov	sl, r5
d0002f5c:	4615      	mov	r5, r2
d0002f5e:	9309      	str	r3, [sp, #36]	; 0x24
d0002f60:	f8cd 9040 	str.w	r9, [sp, #64]	; 0x40
d0002f64:	f8cd 8044 	str.w	r8, [sp, #68]	; 0x44
d0002f68:	9b03      	ldr	r3, [sp, #12]
d0002f6a:	1b5b      	subs	r3, r3, r5
d0002f6c:	2d00      	cmp	r5, #0
d0002f6e:	f000 80e3 	beq.w	d0003138 <main+0x14c8>
d0002f72:	9a08      	ldr	r2, [sp, #32]
d0002f74:	3d01      	subs	r5, #1
d0002f76:	b902      	cbnz	r2, d0002f7a <main+0x130a>
d0002f78:	462b      	mov	r3, r5
d0002f7a:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
d0002f7c:	4654      	mov	r4, sl
d0002f7e:	990a      	ldr	r1, [sp, #40]	; 0x28
d0002f80:	f04f 0800 	mov.w	r8, #0
d0002f84:	9512      	str	r5, [sp, #72]	; 0x48
d0002f86:	fb03 1302 	mla	r3, r3, r2, r1
d0002f8a:	9a09      	ldr	r2, [sp, #36]	; 0x24
d0002f8c:	f8dd a01c 	ldr.w	sl, [sp, #28]
d0002f90:	eb02 0742 	add.w	r7, r2, r2, lsl #1
d0002f94:	9a0d      	ldr	r2, [sp, #52]	; 0x34
d0002f96:	9d06      	ldr	r5, [sp, #24]
d0002f98:	18d6      	adds	r6, r2, r3
d0002f9a:	ee17 3a90 	vmov	r3, s15
d0002f9e:	441f      	add	r7, r3
d0002fa0:	1c73      	adds	r3, r6, #1
d0002fa2:	930c      	str	r3, [sp, #48]	; 0x30
d0002fa4:	1cb3      	adds	r3, r6, #2
d0002fa6:	930f      	str	r3, [sp, #60]	; 0x3c
d0002fa8:	9b05      	ldr	r3, [sp, #20]
d0002faa:	2b18      	cmp	r3, #24
d0002fac:	f000 8113 	beq.w	d00031d6 <main+0x1566>
d0002fb0:	9b05      	ldr	r3, [sp, #20]
d0002fb2:	2b20      	cmp	r3, #32
d0002fb4:	f000 80fd 	beq.w	d00031b2 <main+0x1542>
d0002fb8:	9b0c      	ldr	r3, [sp, #48]	; 0x30
d0002fba:	f813 2018 	ldrb.w	r2, [r3, r8, lsl #1]
d0002fbe:	f816 3018 	ldrb.w	r3, [r6, r8, lsl #1]
d0002fc2:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0002fc6:	2c00      	cmp	r4, #0
d0002fc8:	f000 8103 	beq.w	d00031d2 <main+0x1562>
d0002fcc:	4618      	mov	r0, r3
d0002fce:	4621      	mov	r1, r4
d0002fd0:	9313      	str	r3, [sp, #76]	; 0x4c
d0002fd2:	f7fe f9af 	bl	d0001334 <scale_masked.part.0>
d0002fd6:	9b13      	ldr	r3, [sp, #76]	; 0x4c
d0002fd8:	4681      	mov	r9, r0
d0002fda:	b31d      	cbz	r5, d0003024 <main+0x13b4>
d0002fdc:	4618      	mov	r0, r3
d0002fde:	4629      	mov	r1, r5
d0002fe0:	9313      	str	r3, [sp, #76]	; 0x4c
d0002fe2:	f7fe f9a7 	bl	d0001334 <scale_masked.part.0>
d0002fe6:	9b13      	ldr	r3, [sp, #76]	; 0x4c
d0002fe8:	4602      	mov	r2, r0
d0002fea:	f1ba 0f00 	cmp.w	sl, #0
d0002fee:	f000 80fb 	beq.w	d00031e8 <main+0x1578>
d0002ff2:	4618      	mov	r0, r3
d0002ff4:	4651      	mov	r1, sl
d0002ff6:	9213      	str	r2, [sp, #76]	; 0x4c
d0002ff8:	f7fe f99c 	bl	d0001334 <scale_masked.part.0>
d0002ffc:	9a13      	ldr	r2, [sp, #76]	; 0x4c
d0002ffe:	4603      	mov	r3, r0
d0003000:	70bb      	strb	r3, [r7, #2]
d0003002:	f108 0801 	add.w	r8, r8, #1
d0003006:	9b04      	ldr	r3, [sp, #16]
d0003008:	3703      	adds	r7, #3
d000300a:	f807 9c03 	strb.w	r9, [r7, #-3]
d000300e:	4543      	cmp	r3, r8
d0003010:	f807 2c02 	strb.w	r2, [r7, #-2]
d0003014:	d8c8      	bhi.n	d0002fa8 <main+0x1338>
d0003016:	9b09      	ldr	r3, [sp, #36]	; 0x24
d0003018:	46a2      	mov	sl, r4
d000301a:	9a04      	ldr	r2, [sp, #16]
d000301c:	9d12      	ldr	r5, [sp, #72]	; 0x48
d000301e:	4413      	add	r3, r2
d0003020:	9309      	str	r3, [sp, #36]	; 0x24
d0003022:	e7a1      	b.n	d0002f68 <main+0x12f8>
d0003024:	462a      	mov	r2, r5
d0003026:	e7e0      	b.n	d0002fea <main+0x137a>
d0003028:	483c      	ldr	r0, [pc, #240]	; (d000311c <main+0x14ac>)
d000302a:	f7fe f955 	bl	d00012d8 <set_status>
d000302e:	4650      	mov	r0, sl
d0003030:	f000 fa74 	bl	d000351c <free>
d0003034:	f7fe fd2a 	bl	d0001a8c <free_image.constprop.0>
d0003038:	f7ff b853 	b.w	d00020e2 <main+0x472>
d000303c:	4838      	ldr	r0, [pc, #224]	; (d0003120 <main+0x14b0>)
d000303e:	f7fe f94b 	bl	d00012d8 <set_status>
d0003042:	4650      	mov	r0, sl
d0003044:	f000 fa6a 	bl	d000351c <free>
d0003048:	f7fe fd20 	bl	d0001a8c <free_image.constprop.0>
d000304c:	f7ff b849 	b.w	d00020e2 <main+0x472>
d0003050:	4253      	negs	r3, r2
d0003052:	9303      	str	r3, [sp, #12]
d0003054:	2301      	movs	r3, #1
d0003056:	9308      	str	r3, [sp, #32]
d0003058:	f7ff b92e 	b.w	d00022b8 <main+0x648>
d000305c:	4831      	ldr	r0, [pc, #196]	; (d0003124 <main+0x14b4>)
d000305e:	f7fe f93b 	bl	d00012d8 <set_status>
d0003062:	4650      	mov	r0, sl
d0003064:	f000 fa5a 	bl	d000351c <free>
d0003068:	f7fe fd10 	bl	d0001a8c <free_image.constprop.0>
d000306c:	f7ff b839 	b.w	d00020e2 <main+0x472>
d0003070:	f89b 3004 	ldrb.w	r3, [fp, #4]
d0003074:	f89b 2005 	ldrb.w	r2, [fp, #5]
d0003078:	f89b 1006 	ldrb.w	r1, [fp, #6]
d000307c:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0003080:	f89b 2007 	ldrb.w	r2, [fp, #7]
d0003084:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0003088:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d000308c:	681b      	ldr	r3, [r3, #0]
d000308e:	68db      	ldr	r3, [r3, #12]
d0003090:	4798      	blx	r3
d0003092:	4825      	ldr	r0, [pc, #148]	; (d0003128 <main+0x14b8>)
d0003094:	f7fe f920 	bl	d00012d8 <set_status>
d0003098:	f7ff b823 	b.w	d00020e2 <main+0x472>
d000309c:	4823      	ldr	r0, [pc, #140]	; (d000312c <main+0x14bc>)
d000309e:	f7fe f91b 	bl	d00012d8 <set_status>
d00030a2:	4650      	mov	r0, sl
d00030a4:	f000 fa3a 	bl	d000351c <free>
d00030a8:	f7fe fcf0 	bl	d0001a8c <free_image.constprop.0>
d00030ac:	f7ff b819 	b.w	d00020e2 <main+0x472>
d00030b0:	481f      	ldr	r0, [pc, #124]	; (d0003130 <main+0x14c0>)
d00030b2:	f7fe f911 	bl	d00012d8 <set_status>
d00030b6:	4650      	mov	r0, sl
d00030b8:	f000 fa30 	bl	d000351c <free>
d00030bc:	f7fe fce6 	bl	d0001a8c <free_image.constprop.0>
d00030c0:	f7ff b80f 	b.w	d00020e2 <main+0x472>
d00030c4:	085c      	lsrs	r4, r3, #1
d00030c6:	f013 0f01 	tst.w	r3, #1
d00030ca:	f812 e004 	ldrb.w	lr, [r2, r4]
d00030ce:	ea4f 141e 	mov.w	r4, lr, lsr #4
d00030d2:	f43f a9be 	beq.w	d0002452 <main+0x7e2>
d00030d6:	f00e 040f 	and.w	r4, lr, #15
d00030da:	f7ff b9ba 	b.w	d0002452 <main+0x7e2>
d00030de:	5cd4      	ldrb	r4, [r2, r3]
d00030e0:	54cc      	strb	r4, [r1, r3]
d00030e2:	f7ff b9b7 	b.w	d0002454 <main+0x7e4>
d00030e6:	4603      	mov	r3, r0
d00030e8:	f7ff b994 	b.w	d0002414 <main+0x7a4>
d00030ec:	4811      	ldr	r0, [pc, #68]	; (d0003134 <main+0x14c4>)
d00030ee:	f7fe f8f3 	bl	d00012d8 <set_status>
d00030f2:	4650      	mov	r0, sl
d00030f4:	f000 fa12 	bl	d000351c <free>
d00030f8:	f7fe fcc8 	bl	d0001a8c <free_image.constprop.0>
d00030fc:	f7fe bff1 	b.w	d00020e2 <main+0x472>
d0003100:	d0004b70 	.word	0xd0004b70
d0003104:	d0004b34 	.word	0xd0004b34
d0003108:	d0004bb8 	.word	0xd0004bb8
d000310c:	d0004af4 	.word	0xd0004af4
d0003110:	d0004ad8 	.word	0xd0004ad8
d0003114:	d0004948 	.word	0xd0004948
d0003118:	d00049f0 	.word	0xd00049f0
d000311c:	d000499c 	.word	0xd000499c
d0003120:	d0004978 	.word	0xd0004978
d0003124:	d0004960 	.word	0xd0004960
d0003128:	d0004908 	.word	0xd0004908
d000312c:	d00049c4 	.word	0xd00049c4
d0003130:	d0004b10 	.word	0xd0004b10
d0003134:	d0004a28 	.word	0xd0004a28
d0003138:	990e      	ldr	r1, [sp, #56]	; 0x38
d000313a:	ee17 0a90 	vmov	r0, s15
d000313e:	f8dd 9040 	ldr.w	r9, [sp, #64]	; 0x40
d0003142:	ee17 4a90 	vmov	r4, s15
d0003146:	f8dd a034 	ldr.w	sl, [sp, #52]	; 0x34
d000314a:	f8dd 8044 	ldr.w	r8, [sp, #68]	; 0x44
d000314e:	f7fe f9d7 	bl	d0001500 <quantize_rgb_to_image.constprop.0>
d0003152:	b180      	cbz	r0, d0003176 <main+0x1506>
d0003154:	4620      	mov	r0, r4
d0003156:	f000 f9e1 	bl	d000351c <free>
d000315a:	4650      	mov	r0, sl
d000315c:	f000 f9de 	bl	d000351c <free>
d0003160:	e511      	b.n	d0002b86 <main+0xf16>
d0003162:	4822      	ldr	r0, [pc, #136]	; (d00031ec <main+0x157c>)
d0003164:	f7fe f8b8 	bl	d00012d8 <set_status>
d0003168:	4650      	mov	r0, sl
d000316a:	f000 f9d7 	bl	d000351c <free>
d000316e:	f7fe fc8d 	bl	d0001a8c <free_image.constprop.0>
d0003172:	f7fe bfb6 	b.w	d00020e2 <main+0x472>
d0003176:	4620      	mov	r0, r4
d0003178:	f000 f9d0 	bl	d000351c <free>
d000317c:	4650      	mov	r0, sl
d000317e:	f000 f9cd 	bl	d000351c <free>
d0003182:	f7fe fc83 	bl	d0001a8c <free_image.constprop.0>
d0003186:	f7fe bfac 	b.w	d00020e2 <main+0x472>
d000318a:	4819      	ldr	r0, [pc, #100]	; (d00031f0 <main+0x1580>)
d000318c:	f7fe f8a4 	bl	d00012d8 <set_status>
d0003190:	4650      	mov	r0, sl
d0003192:	f000 f9c3 	bl	d000351c <free>
d0003196:	f7fe fc79 	bl	d0001a8c <free_image.constprop.0>
d000319a:	f7fe bfa2 	b.w	d00020e2 <main+0x472>
d000319e:	4815      	ldr	r0, [pc, #84]	; (d00031f4 <main+0x1584>)
d00031a0:	f7fe f89a 	bl	d00012d8 <set_status>
d00031a4:	4650      	mov	r0, sl
d00031a6:	f000 f9b9 	bl	d000351c <free>
d00031aa:	f7fe fc6f 	bl	d0001a8c <free_image.constprop.0>
d00031ae:	f7fe bf98 	b.w	d00020e2 <main+0x472>
d00031b2:	eb06 0288 	add.w	r2, r6, r8, lsl #2
d00031b6:	f816 3028 	ldrb.w	r3, [r6, r8, lsl #2]
d00031ba:	7850      	ldrb	r0, [r2, #1]
d00031bc:	7891      	ldrb	r1, [r2, #2]
d00031be:	ea43 2300 	orr.w	r3, r3, r0, lsl #8
d00031c2:	78d2      	ldrb	r2, [r2, #3]
d00031c4:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d00031c8:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00031cc:	2c00      	cmp	r4, #0
d00031ce:	f47f aefd 	bne.w	d0002fcc <main+0x135c>
d00031d2:	46a1      	mov	r9, r4
d00031d4:	e701      	b.n	d0002fda <main+0x136a>
d00031d6:	eb08 0148 	add.w	r1, r8, r8, lsl #1
d00031da:	9a0c      	ldr	r2, [sp, #48]	; 0x30
d00031dc:	980f      	ldr	r0, [sp, #60]	; 0x3c
d00031de:	5c73      	ldrb	r3, [r6, r1]
d00031e0:	5c52      	ldrb	r2, [r2, r1]
d00031e2:	f810 9001 	ldrb.w	r9, [r0, r1]
d00031e6:	e70b      	b.n	d0003000 <main+0x1390>
d00031e8:	4653      	mov	r3, sl
d00031ea:	e709      	b.n	d0003000 <main+0x1390>
d00031ec:	d0004a68 	.word	0xd0004a68
d00031f0:	d0004a0c 	.word	0xd0004a0c
d00031f4:	d0004a4c 	.word	0xd0004a4c

d00031f8 <__aeabi_uldivmod>:
d00031f8:	b953      	cbnz	r3, d0003210 <__aeabi_uldivmod+0x18>
d00031fa:	b94a      	cbnz	r2, d0003210 <__aeabi_uldivmod+0x18>
d00031fc:	2900      	cmp	r1, #0
d00031fe:	bf08      	it	eq
d0003200:	2800      	cmpeq	r0, #0
d0003202:	bf1c      	itt	ne
d0003204:	f04f 31ff 	movne.w	r1, #4294967295	; 0xffffffff
d0003208:	f04f 30ff 	movne.w	r0, #4294967295	; 0xffffffff
d000320c:	f000 b96e 	b.w	d00034ec <__aeabi_idiv0>
d0003210:	f1ad 0c08 	sub.w	ip, sp, #8
d0003214:	e96d ce04 	strd	ip, lr, [sp, #-16]!
d0003218:	f000 f806 	bl	d0003228 <__udivmoddi4>
d000321c:	f8dd e004 	ldr.w	lr, [sp, #4]
d0003220:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
d0003224:	b004      	add	sp, #16
d0003226:	4770      	bx	lr

d0003228 <__udivmoddi4>:
d0003228:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
d000322c:	9d08      	ldr	r5, [sp, #32]
d000322e:	4604      	mov	r4, r0
d0003230:	468c      	mov	ip, r1
d0003232:	2b00      	cmp	r3, #0
d0003234:	f040 8083 	bne.w	d000333e <__udivmoddi4+0x116>
d0003238:	428a      	cmp	r2, r1
d000323a:	4617      	mov	r7, r2
d000323c:	d947      	bls.n	d00032ce <__udivmoddi4+0xa6>
d000323e:	fab2 f282 	clz	r2, r2
d0003242:	b142      	cbz	r2, d0003256 <__udivmoddi4+0x2e>
d0003244:	f1c2 0020 	rsb	r0, r2, #32
d0003248:	fa24 f000 	lsr.w	r0, r4, r0
d000324c:	4091      	lsls	r1, r2
d000324e:	4097      	lsls	r7, r2
d0003250:	ea40 0c01 	orr.w	ip, r0, r1
d0003254:	4094      	lsls	r4, r2
d0003256:	ea4f 4817 	mov.w	r8, r7, lsr #16
d000325a:	0c23      	lsrs	r3, r4, #16
d000325c:	fbbc f6f8 	udiv	r6, ip, r8
d0003260:	fa1f fe87 	uxth.w	lr, r7
d0003264:	fb08 c116 	mls	r1, r8, r6, ip
d0003268:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d000326c:	fb06 f10e 	mul.w	r1, r6, lr
d0003270:	4299      	cmp	r1, r3
d0003272:	d909      	bls.n	d0003288 <__udivmoddi4+0x60>
d0003274:	18fb      	adds	r3, r7, r3
d0003276:	f106 30ff 	add.w	r0, r6, #4294967295	; 0xffffffff
d000327a:	f080 8119 	bcs.w	d00034b0 <__udivmoddi4+0x288>
d000327e:	4299      	cmp	r1, r3
d0003280:	f240 8116 	bls.w	d00034b0 <__udivmoddi4+0x288>
d0003284:	3e02      	subs	r6, #2
d0003286:	443b      	add	r3, r7
d0003288:	1a5b      	subs	r3, r3, r1
d000328a:	b2a4      	uxth	r4, r4
d000328c:	fbb3 f0f8 	udiv	r0, r3, r8
d0003290:	fb08 3310 	mls	r3, r8, r0, r3
d0003294:	ea44 4403 	orr.w	r4, r4, r3, lsl #16
d0003298:	fb00 fe0e 	mul.w	lr, r0, lr
d000329c:	45a6      	cmp	lr, r4
d000329e:	d909      	bls.n	d00032b4 <__udivmoddi4+0x8c>
d00032a0:	193c      	adds	r4, r7, r4
d00032a2:	f100 33ff 	add.w	r3, r0, #4294967295	; 0xffffffff
d00032a6:	f080 8105 	bcs.w	d00034b4 <__udivmoddi4+0x28c>
d00032aa:	45a6      	cmp	lr, r4
d00032ac:	f240 8102 	bls.w	d00034b4 <__udivmoddi4+0x28c>
d00032b0:	3802      	subs	r0, #2
d00032b2:	443c      	add	r4, r7
d00032b4:	ea40 4006 	orr.w	r0, r0, r6, lsl #16
d00032b8:	eba4 040e 	sub.w	r4, r4, lr
d00032bc:	2600      	movs	r6, #0
d00032be:	b11d      	cbz	r5, d00032c8 <__udivmoddi4+0xa0>
d00032c0:	40d4      	lsrs	r4, r2
d00032c2:	2300      	movs	r3, #0
d00032c4:	e9c5 4300 	strd	r4, r3, [r5]
d00032c8:	4631      	mov	r1, r6
d00032ca:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
d00032ce:	b902      	cbnz	r2, d00032d2 <__udivmoddi4+0xaa>
d00032d0:	deff      	udf	#255	; 0xff
d00032d2:	fab2 f282 	clz	r2, r2
d00032d6:	2a00      	cmp	r2, #0
d00032d8:	d150      	bne.n	d000337c <__udivmoddi4+0x154>
d00032da:	1bcb      	subs	r3, r1, r7
d00032dc:	ea4f 4e17 	mov.w	lr, r7, lsr #16
d00032e0:	fa1f f887 	uxth.w	r8, r7
d00032e4:	2601      	movs	r6, #1
d00032e6:	fbb3 fcfe 	udiv	ip, r3, lr
d00032ea:	0c21      	lsrs	r1, r4, #16
d00032ec:	fb0e 331c 	mls	r3, lr, ip, r3
d00032f0:	ea41 4103 	orr.w	r1, r1, r3, lsl #16
d00032f4:	fb08 f30c 	mul.w	r3, r8, ip
d00032f8:	428b      	cmp	r3, r1
d00032fa:	d907      	bls.n	d000330c <__udivmoddi4+0xe4>
d00032fc:	1879      	adds	r1, r7, r1
d00032fe:	f10c 30ff 	add.w	r0, ip, #4294967295	; 0xffffffff
d0003302:	d202      	bcs.n	d000330a <__udivmoddi4+0xe2>
d0003304:	428b      	cmp	r3, r1
d0003306:	f200 80e9 	bhi.w	d00034dc <__udivmoddi4+0x2b4>
d000330a:	4684      	mov	ip, r0
d000330c:	1ac9      	subs	r1, r1, r3
d000330e:	b2a3      	uxth	r3, r4
d0003310:	fbb1 f0fe 	udiv	r0, r1, lr
d0003314:	fb0e 1110 	mls	r1, lr, r0, r1
d0003318:	ea43 4401 	orr.w	r4, r3, r1, lsl #16
d000331c:	fb08 f800 	mul.w	r8, r8, r0
d0003320:	45a0      	cmp	r8, r4
d0003322:	d907      	bls.n	d0003334 <__udivmoddi4+0x10c>
d0003324:	193c      	adds	r4, r7, r4
d0003326:	f100 33ff 	add.w	r3, r0, #4294967295	; 0xffffffff
d000332a:	d202      	bcs.n	d0003332 <__udivmoddi4+0x10a>
d000332c:	45a0      	cmp	r8, r4
d000332e:	f200 80d9 	bhi.w	d00034e4 <__udivmoddi4+0x2bc>
d0003332:	4618      	mov	r0, r3
d0003334:	eba4 0408 	sub.w	r4, r4, r8
d0003338:	ea40 400c 	orr.w	r0, r0, ip, lsl #16
d000333c:	e7bf      	b.n	d00032be <__udivmoddi4+0x96>
d000333e:	428b      	cmp	r3, r1
d0003340:	d909      	bls.n	d0003356 <__udivmoddi4+0x12e>
d0003342:	2d00      	cmp	r5, #0
d0003344:	f000 80b1 	beq.w	d00034aa <__udivmoddi4+0x282>
d0003348:	2600      	movs	r6, #0
d000334a:	e9c5 0100 	strd	r0, r1, [r5]
d000334e:	4630      	mov	r0, r6
d0003350:	4631      	mov	r1, r6
d0003352:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
d0003356:	fab3 f683 	clz	r6, r3
d000335a:	2e00      	cmp	r6, #0
d000335c:	d14a      	bne.n	d00033f4 <__udivmoddi4+0x1cc>
d000335e:	428b      	cmp	r3, r1
d0003360:	d302      	bcc.n	d0003368 <__udivmoddi4+0x140>
d0003362:	4282      	cmp	r2, r0
d0003364:	f200 80b8 	bhi.w	d00034d8 <__udivmoddi4+0x2b0>
d0003368:	1a84      	subs	r4, r0, r2
d000336a:	eb61 0103 	sbc.w	r1, r1, r3
d000336e:	2001      	movs	r0, #1
d0003370:	468c      	mov	ip, r1
d0003372:	2d00      	cmp	r5, #0
d0003374:	d0a8      	beq.n	d00032c8 <__udivmoddi4+0xa0>
d0003376:	e9c5 4c00 	strd	r4, ip, [r5]
d000337a:	e7a5      	b.n	d00032c8 <__udivmoddi4+0xa0>
d000337c:	f1c2 0320 	rsb	r3, r2, #32
d0003380:	fa20 f603 	lsr.w	r6, r0, r3
d0003384:	4097      	lsls	r7, r2
d0003386:	fa01 f002 	lsl.w	r0, r1, r2
d000338a:	ea4f 4e17 	mov.w	lr, r7, lsr #16
d000338e:	40d9      	lsrs	r1, r3
d0003390:	4330      	orrs	r0, r6
d0003392:	0c03      	lsrs	r3, r0, #16
d0003394:	fbb1 f6fe 	udiv	r6, r1, lr
d0003398:	fa1f f887 	uxth.w	r8, r7
d000339c:	fb0e 1116 	mls	r1, lr, r6, r1
d00033a0:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d00033a4:	fb06 f108 	mul.w	r1, r6, r8
d00033a8:	4299      	cmp	r1, r3
d00033aa:	fa04 f402 	lsl.w	r4, r4, r2
d00033ae:	d909      	bls.n	d00033c4 <__udivmoddi4+0x19c>
d00033b0:	18fb      	adds	r3, r7, r3
d00033b2:	f106 3cff 	add.w	ip, r6, #4294967295	; 0xffffffff
d00033b6:	f080 808d 	bcs.w	d00034d4 <__udivmoddi4+0x2ac>
d00033ba:	4299      	cmp	r1, r3
d00033bc:	f240 808a 	bls.w	d00034d4 <__udivmoddi4+0x2ac>
d00033c0:	3e02      	subs	r6, #2
d00033c2:	443b      	add	r3, r7
d00033c4:	1a5b      	subs	r3, r3, r1
d00033c6:	b281      	uxth	r1, r0
d00033c8:	fbb3 f0fe 	udiv	r0, r3, lr
d00033cc:	fb0e 3310 	mls	r3, lr, r0, r3
d00033d0:	ea41 4103 	orr.w	r1, r1, r3, lsl #16
d00033d4:	fb00 f308 	mul.w	r3, r0, r8
d00033d8:	428b      	cmp	r3, r1
d00033da:	d907      	bls.n	d00033ec <__udivmoddi4+0x1c4>
d00033dc:	1879      	adds	r1, r7, r1
d00033de:	f100 3cff 	add.w	ip, r0, #4294967295	; 0xffffffff
d00033e2:	d273      	bcs.n	d00034cc <__udivmoddi4+0x2a4>
d00033e4:	428b      	cmp	r3, r1
d00033e6:	d971      	bls.n	d00034cc <__udivmoddi4+0x2a4>
d00033e8:	3802      	subs	r0, #2
d00033ea:	4439      	add	r1, r7
d00033ec:	1acb      	subs	r3, r1, r3
d00033ee:	ea40 4606 	orr.w	r6, r0, r6, lsl #16
d00033f2:	e778      	b.n	d00032e6 <__udivmoddi4+0xbe>
d00033f4:	f1c6 0c20 	rsb	ip, r6, #32
d00033f8:	fa03 f406 	lsl.w	r4, r3, r6
d00033fc:	fa22 f30c 	lsr.w	r3, r2, ip
d0003400:	431c      	orrs	r4, r3
d0003402:	fa20 f70c 	lsr.w	r7, r0, ip
d0003406:	fa01 f306 	lsl.w	r3, r1, r6
d000340a:	ea4f 4e14 	mov.w	lr, r4, lsr #16
d000340e:	fa21 f10c 	lsr.w	r1, r1, ip
d0003412:	431f      	orrs	r7, r3
d0003414:	0c3b      	lsrs	r3, r7, #16
d0003416:	fbb1 f9fe 	udiv	r9, r1, lr
d000341a:	fa1f f884 	uxth.w	r8, r4
d000341e:	fb0e 1119 	mls	r1, lr, r9, r1
d0003422:	ea43 4101 	orr.w	r1, r3, r1, lsl #16
d0003426:	fb09 fa08 	mul.w	sl, r9, r8
d000342a:	458a      	cmp	sl, r1
d000342c:	fa02 f206 	lsl.w	r2, r2, r6
d0003430:	fa00 f306 	lsl.w	r3, r0, r6
d0003434:	d908      	bls.n	d0003448 <__udivmoddi4+0x220>
d0003436:	1861      	adds	r1, r4, r1
d0003438:	f109 30ff 	add.w	r0, r9, #4294967295	; 0xffffffff
d000343c:	d248      	bcs.n	d00034d0 <__udivmoddi4+0x2a8>
d000343e:	458a      	cmp	sl, r1
d0003440:	d946      	bls.n	d00034d0 <__udivmoddi4+0x2a8>
d0003442:	f1a9 0902 	sub.w	r9, r9, #2
d0003446:	4421      	add	r1, r4
d0003448:	eba1 010a 	sub.w	r1, r1, sl
d000344c:	b2bf      	uxth	r7, r7
d000344e:	fbb1 f0fe 	udiv	r0, r1, lr
d0003452:	fb0e 1110 	mls	r1, lr, r0, r1
d0003456:	ea47 4701 	orr.w	r7, r7, r1, lsl #16
d000345a:	fb00 f808 	mul.w	r8, r0, r8
d000345e:	45b8      	cmp	r8, r7
d0003460:	d907      	bls.n	d0003472 <__udivmoddi4+0x24a>
d0003462:	19e7      	adds	r7, r4, r7
d0003464:	f100 31ff 	add.w	r1, r0, #4294967295	; 0xffffffff
d0003468:	d22e      	bcs.n	d00034c8 <__udivmoddi4+0x2a0>
d000346a:	45b8      	cmp	r8, r7
d000346c:	d92c      	bls.n	d00034c8 <__udivmoddi4+0x2a0>
d000346e:	3802      	subs	r0, #2
d0003470:	4427      	add	r7, r4
d0003472:	ea40 4009 	orr.w	r0, r0, r9, lsl #16
d0003476:	eba7 0708 	sub.w	r7, r7, r8
d000347a:	fba0 8902 	umull	r8, r9, r0, r2
d000347e:	454f      	cmp	r7, r9
d0003480:	46c6      	mov	lr, r8
d0003482:	4649      	mov	r1, r9
d0003484:	d31a      	bcc.n	d00034bc <__udivmoddi4+0x294>
d0003486:	d017      	beq.n	d00034b8 <__udivmoddi4+0x290>
d0003488:	b15d      	cbz	r5, d00034a2 <__udivmoddi4+0x27a>
d000348a:	ebb3 020e 	subs.w	r2, r3, lr
d000348e:	eb67 0701 	sbc.w	r7, r7, r1
d0003492:	fa07 fc0c 	lsl.w	ip, r7, ip
d0003496:	40f2      	lsrs	r2, r6
d0003498:	ea4c 0202 	orr.w	r2, ip, r2
d000349c:	40f7      	lsrs	r7, r6
d000349e:	e9c5 2700 	strd	r2, r7, [r5]
d00034a2:	2600      	movs	r6, #0
d00034a4:	4631      	mov	r1, r6
d00034a6:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
d00034aa:	462e      	mov	r6, r5
d00034ac:	4628      	mov	r0, r5
d00034ae:	e70b      	b.n	d00032c8 <__udivmoddi4+0xa0>
d00034b0:	4606      	mov	r6, r0
d00034b2:	e6e9      	b.n	d0003288 <__udivmoddi4+0x60>
d00034b4:	4618      	mov	r0, r3
d00034b6:	e6fd      	b.n	d00032b4 <__udivmoddi4+0x8c>
d00034b8:	4543      	cmp	r3, r8
d00034ba:	d2e5      	bcs.n	d0003488 <__udivmoddi4+0x260>
d00034bc:	ebb8 0e02 	subs.w	lr, r8, r2
d00034c0:	eb69 0104 	sbc.w	r1, r9, r4
d00034c4:	3801      	subs	r0, #1
d00034c6:	e7df      	b.n	d0003488 <__udivmoddi4+0x260>
d00034c8:	4608      	mov	r0, r1
d00034ca:	e7d2      	b.n	d0003472 <__udivmoddi4+0x24a>
d00034cc:	4660      	mov	r0, ip
d00034ce:	e78d      	b.n	d00033ec <__udivmoddi4+0x1c4>
d00034d0:	4681      	mov	r9, r0
d00034d2:	e7b9      	b.n	d0003448 <__udivmoddi4+0x220>
d00034d4:	4666      	mov	r6, ip
d00034d6:	e775      	b.n	d00033c4 <__udivmoddi4+0x19c>
d00034d8:	4630      	mov	r0, r6
d00034da:	e74a      	b.n	d0003372 <__udivmoddi4+0x14a>
d00034dc:	f1ac 0c02 	sub.w	ip, ip, #2
d00034e0:	4439      	add	r1, r7
d00034e2:	e713      	b.n	d000330c <__udivmoddi4+0xe4>
d00034e4:	3802      	subs	r0, #2
d00034e6:	443c      	add	r4, r7
d00034e8:	e724      	b.n	d0003334 <__udivmoddi4+0x10c>
d00034ea:	bf00      	nop

d00034ec <__aeabi_idiv0>:
d00034ec:	4770      	bx	lr
d00034ee:	bf00      	nop

d00034f0 <calloc>:
d00034f0:	4b02      	ldr	r3, [pc, #8]	; (d00034fc <calloc+0xc>)
d00034f2:	460a      	mov	r2, r1
d00034f4:	4601      	mov	r1, r0
d00034f6:	6818      	ldr	r0, [r3, #0]
d00034f8:	f000 b82e 	b.w	d0003558 <_calloc_r>
d00034fc:	d0004cfc 	.word	0xd0004cfc

d0003500 <__errno>:
d0003500:	4b01      	ldr	r3, [pc, #4]	; (d0003508 <__errno+0x8>)
d0003502:	6818      	ldr	r0, [r3, #0]
d0003504:	4770      	bx	lr
d0003506:	bf00      	nop
d0003508:	d0004cfc 	.word	0xd0004cfc

d000350c <malloc>:
d000350c:	4b02      	ldr	r3, [pc, #8]	; (d0003518 <malloc+0xc>)
d000350e:	4601      	mov	r1, r0
d0003510:	6818      	ldr	r0, [r3, #0]
d0003512:	f000 b881 	b.w	d0003618 <_malloc_r>
d0003516:	bf00      	nop
d0003518:	d0004cfc 	.word	0xd0004cfc

d000351c <free>:
d000351c:	4b02      	ldr	r3, [pc, #8]	; (d0003528 <free+0xc>)
d000351e:	4601      	mov	r1, r0
d0003520:	6818      	ldr	r0, [r3, #0]
d0003522:	f000 b829 	b.w	d0003578 <_free_r>
d0003526:	bf00      	nop
d0003528:	d0004cfc 	.word	0xd0004cfc

d000352c <memcpy>:
d000352c:	440a      	add	r2, r1
d000352e:	4291      	cmp	r1, r2
d0003530:	f100 33ff 	add.w	r3, r0, #4294967295	; 0xffffffff
d0003534:	d100      	bne.n	d0003538 <memcpy+0xc>
d0003536:	4770      	bx	lr
d0003538:	b510      	push	{r4, lr}
d000353a:	f811 4b01 	ldrb.w	r4, [r1], #1
d000353e:	f803 4f01 	strb.w	r4, [r3, #1]!
d0003542:	4291      	cmp	r1, r2
d0003544:	d1f9      	bne.n	d000353a <memcpy+0xe>
d0003546:	bd10      	pop	{r4, pc}

d0003548 <memset>:
d0003548:	4402      	add	r2, r0
d000354a:	4603      	mov	r3, r0
d000354c:	4293      	cmp	r3, r2
d000354e:	d100      	bne.n	d0003552 <memset+0xa>
d0003550:	4770      	bx	lr
d0003552:	f803 1b01 	strb.w	r1, [r3], #1
d0003556:	e7f9      	b.n	d000354c <memset+0x4>

d0003558 <_calloc_r>:
d0003558:	b513      	push	{r0, r1, r4, lr}
d000355a:	434a      	muls	r2, r1
d000355c:	4611      	mov	r1, r2
d000355e:	9201      	str	r2, [sp, #4]
d0003560:	f000 f85a 	bl	d0003618 <_malloc_r>
d0003564:	4604      	mov	r4, r0
d0003566:	b118      	cbz	r0, d0003570 <_calloc_r+0x18>
d0003568:	9a01      	ldr	r2, [sp, #4]
d000356a:	2100      	movs	r1, #0
d000356c:	f7ff ffec 	bl	d0003548 <memset>
d0003570:	4620      	mov	r0, r4
d0003572:	b002      	add	sp, #8
d0003574:	bd10      	pop	{r4, pc}
	...

d0003578 <_free_r>:
d0003578:	b537      	push	{r0, r1, r2, r4, r5, lr}
d000357a:	2900      	cmp	r1, #0
d000357c:	d048      	beq.n	d0003610 <_free_r+0x98>
d000357e:	f851 3c04 	ldr.w	r3, [r1, #-4]
d0003582:	9001      	str	r0, [sp, #4]
d0003584:	2b00      	cmp	r3, #0
d0003586:	f1a1 0404 	sub.w	r4, r1, #4
d000358a:	bfb8      	it	lt
d000358c:	18e4      	addlt	r4, r4, r3
d000358e:	f000 fd2f 	bl	d0003ff0 <__malloc_lock>
d0003592:	4a20      	ldr	r2, [pc, #128]	; (d0003614 <_free_r+0x9c>)
d0003594:	9801      	ldr	r0, [sp, #4]
d0003596:	6813      	ldr	r3, [r2, #0]
d0003598:	4615      	mov	r5, r2
d000359a:	b933      	cbnz	r3, d00035aa <_free_r+0x32>
d000359c:	6063      	str	r3, [r4, #4]
d000359e:	6014      	str	r4, [r2, #0]
d00035a0:	b003      	add	sp, #12
d00035a2:	e8bd 4030 	ldmia.w	sp!, {r4, r5, lr}
d00035a6:	f000 bd29 	b.w	d0003ffc <__malloc_unlock>
d00035aa:	42a3      	cmp	r3, r4
d00035ac:	d90b      	bls.n	d00035c6 <_free_r+0x4e>
d00035ae:	6821      	ldr	r1, [r4, #0]
d00035b0:	1862      	adds	r2, r4, r1
d00035b2:	4293      	cmp	r3, r2
d00035b4:	bf04      	itt	eq
d00035b6:	681a      	ldreq	r2, [r3, #0]
d00035b8:	685b      	ldreq	r3, [r3, #4]
d00035ba:	6063      	str	r3, [r4, #4]
d00035bc:	bf04      	itt	eq
d00035be:	1852      	addeq	r2, r2, r1
d00035c0:	6022      	streq	r2, [r4, #0]
d00035c2:	602c      	str	r4, [r5, #0]
d00035c4:	e7ec      	b.n	d00035a0 <_free_r+0x28>
d00035c6:	461a      	mov	r2, r3
d00035c8:	685b      	ldr	r3, [r3, #4]
d00035ca:	b10b      	cbz	r3, d00035d0 <_free_r+0x58>
d00035cc:	42a3      	cmp	r3, r4
d00035ce:	d9fa      	bls.n	d00035c6 <_free_r+0x4e>
d00035d0:	6811      	ldr	r1, [r2, #0]
d00035d2:	1855      	adds	r5, r2, r1
d00035d4:	42a5      	cmp	r5, r4
d00035d6:	d10b      	bne.n	d00035f0 <_free_r+0x78>
d00035d8:	6824      	ldr	r4, [r4, #0]
d00035da:	4421      	add	r1, r4
d00035dc:	1854      	adds	r4, r2, r1
d00035de:	42a3      	cmp	r3, r4
d00035e0:	6011      	str	r1, [r2, #0]
d00035e2:	d1dd      	bne.n	d00035a0 <_free_r+0x28>
d00035e4:	681c      	ldr	r4, [r3, #0]
d00035e6:	685b      	ldr	r3, [r3, #4]
d00035e8:	6053      	str	r3, [r2, #4]
d00035ea:	4421      	add	r1, r4
d00035ec:	6011      	str	r1, [r2, #0]
d00035ee:	e7d7      	b.n	d00035a0 <_free_r+0x28>
d00035f0:	d902      	bls.n	d00035f8 <_free_r+0x80>
d00035f2:	230c      	movs	r3, #12
d00035f4:	6003      	str	r3, [r0, #0]
d00035f6:	e7d3      	b.n	d00035a0 <_free_r+0x28>
d00035f8:	6825      	ldr	r5, [r4, #0]
d00035fa:	1961      	adds	r1, r4, r5
d00035fc:	428b      	cmp	r3, r1
d00035fe:	bf04      	itt	eq
d0003600:	6819      	ldreq	r1, [r3, #0]
d0003602:	685b      	ldreq	r3, [r3, #4]
d0003604:	6063      	str	r3, [r4, #4]
d0003606:	bf04      	itt	eq
d0003608:	1949      	addeq	r1, r1, r5
d000360a:	6021      	streq	r1, [r4, #0]
d000360c:	6054      	str	r4, [r2, #4]
d000360e:	e7c7      	b.n	d00035a0 <_free_r+0x28>
d0003610:	b003      	add	sp, #12
d0003612:	bd30      	pop	{r4, r5, pc}
d0003614:	d0006a24 	.word	0xd0006a24

d0003618 <_malloc_r>:
d0003618:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d000361a:	1ccd      	adds	r5, r1, #3
d000361c:	f025 0503 	bic.w	r5, r5, #3
d0003620:	3508      	adds	r5, #8
d0003622:	2d0c      	cmp	r5, #12
d0003624:	bf38      	it	cc
d0003626:	250c      	movcc	r5, #12
d0003628:	2d00      	cmp	r5, #0
d000362a:	4606      	mov	r6, r0
d000362c:	db01      	blt.n	d0003632 <_malloc_r+0x1a>
d000362e:	42a9      	cmp	r1, r5
d0003630:	d903      	bls.n	d000363a <_malloc_r+0x22>
d0003632:	230c      	movs	r3, #12
d0003634:	6033      	str	r3, [r6, #0]
d0003636:	2000      	movs	r0, #0
d0003638:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d000363a:	f000 fcd9 	bl	d0003ff0 <__malloc_lock>
d000363e:	4921      	ldr	r1, [pc, #132]	; (d00036c4 <_malloc_r+0xac>)
d0003640:	680a      	ldr	r2, [r1, #0]
d0003642:	4614      	mov	r4, r2
d0003644:	b99c      	cbnz	r4, d000366e <_malloc_r+0x56>
d0003646:	4f20      	ldr	r7, [pc, #128]	; (d00036c8 <_malloc_r+0xb0>)
d0003648:	683b      	ldr	r3, [r7, #0]
d000364a:	b923      	cbnz	r3, d0003656 <_malloc_r+0x3e>
d000364c:	4621      	mov	r1, r4
d000364e:	4630      	mov	r0, r6
d0003650:	f7fd fd54 	bl	d00010fc <_sbrk_r>
d0003654:	6038      	str	r0, [r7, #0]
d0003656:	4629      	mov	r1, r5
d0003658:	4630      	mov	r0, r6
d000365a:	f7fd fd4f 	bl	d00010fc <_sbrk_r>
d000365e:	1c43      	adds	r3, r0, #1
d0003660:	d123      	bne.n	d00036aa <_malloc_r+0x92>
d0003662:	230c      	movs	r3, #12
d0003664:	6033      	str	r3, [r6, #0]
d0003666:	4630      	mov	r0, r6
d0003668:	f000 fcc8 	bl	d0003ffc <__malloc_unlock>
d000366c:	e7e3      	b.n	d0003636 <_malloc_r+0x1e>
d000366e:	6823      	ldr	r3, [r4, #0]
d0003670:	1b5b      	subs	r3, r3, r5
d0003672:	d417      	bmi.n	d00036a4 <_malloc_r+0x8c>
d0003674:	2b0b      	cmp	r3, #11
d0003676:	d903      	bls.n	d0003680 <_malloc_r+0x68>
d0003678:	6023      	str	r3, [r4, #0]
d000367a:	441c      	add	r4, r3
d000367c:	6025      	str	r5, [r4, #0]
d000367e:	e004      	b.n	d000368a <_malloc_r+0x72>
d0003680:	6863      	ldr	r3, [r4, #4]
d0003682:	42a2      	cmp	r2, r4
d0003684:	bf0c      	ite	eq
d0003686:	600b      	streq	r3, [r1, #0]
d0003688:	6053      	strne	r3, [r2, #4]
d000368a:	4630      	mov	r0, r6
d000368c:	f000 fcb6 	bl	d0003ffc <__malloc_unlock>
d0003690:	f104 000b 	add.w	r0, r4, #11
d0003694:	1d23      	adds	r3, r4, #4
d0003696:	f020 0007 	bic.w	r0, r0, #7
d000369a:	1ac2      	subs	r2, r0, r3
d000369c:	d0cc      	beq.n	d0003638 <_malloc_r+0x20>
d000369e:	1a1b      	subs	r3, r3, r0
d00036a0:	50a3      	str	r3, [r4, r2]
d00036a2:	e7c9      	b.n	d0003638 <_malloc_r+0x20>
d00036a4:	4622      	mov	r2, r4
d00036a6:	6864      	ldr	r4, [r4, #4]
d00036a8:	e7cc      	b.n	d0003644 <_malloc_r+0x2c>
d00036aa:	1cc4      	adds	r4, r0, #3
d00036ac:	f024 0403 	bic.w	r4, r4, #3
d00036b0:	42a0      	cmp	r0, r4
d00036b2:	d0e3      	beq.n	d000367c <_malloc_r+0x64>
d00036b4:	1a21      	subs	r1, r4, r0
d00036b6:	4630      	mov	r0, r6
d00036b8:	f7fd fd20 	bl	d00010fc <_sbrk_r>
d00036bc:	3001      	adds	r0, #1
d00036be:	d1dd      	bne.n	d000367c <_malloc_r+0x64>
d00036c0:	e7cf      	b.n	d0003662 <_malloc_r+0x4a>
d00036c2:	bf00      	nop
d00036c4:	d0006a24 	.word	0xd0006a24
d00036c8:	d0006a28 	.word	0xd0006a28

d00036cc <swapfunc>:
d00036cc:	2b02      	cmp	r3, #2
d00036ce:	b510      	push	{r4, lr}
d00036d0:	d00a      	beq.n	d00036e8 <swapfunc+0x1c>
d00036d2:	0892      	lsrs	r2, r2, #2
d00036d4:	3a01      	subs	r2, #1
d00036d6:	6803      	ldr	r3, [r0, #0]
d00036d8:	680c      	ldr	r4, [r1, #0]
d00036da:	f840 4b04 	str.w	r4, [r0], #4
d00036de:	2a00      	cmp	r2, #0
d00036e0:	f841 3b04 	str.w	r3, [r1], #4
d00036e4:	dcf6      	bgt.n	d00036d4 <swapfunc+0x8>
d00036e6:	bd10      	pop	{r4, pc}
d00036e8:	4402      	add	r2, r0
d00036ea:	780c      	ldrb	r4, [r1, #0]
d00036ec:	7803      	ldrb	r3, [r0, #0]
d00036ee:	f800 4b01 	strb.w	r4, [r0], #1
d00036f2:	f801 3b01 	strb.w	r3, [r1], #1
d00036f6:	1a13      	subs	r3, r2, r0
d00036f8:	2b00      	cmp	r3, #0
d00036fa:	dcf6      	bgt.n	d00036ea <swapfunc+0x1e>
d00036fc:	e7f3      	b.n	d00036e6 <swapfunc+0x1a>

d00036fe <med3.isra.0>:
d00036fe:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d0003700:	460f      	mov	r7, r1
d0003702:	4614      	mov	r4, r2
d0003704:	4606      	mov	r6, r0
d0003706:	461d      	mov	r5, r3
d0003708:	4798      	blx	r3
d000370a:	2800      	cmp	r0, #0
d000370c:	4621      	mov	r1, r4
d000370e:	4638      	mov	r0, r7
d0003710:	da0c      	bge.n	d000372c <med3.isra.0+0x2e>
d0003712:	47a8      	blx	r5
d0003714:	2800      	cmp	r0, #0
d0003716:	da02      	bge.n	d000371e <med3.isra.0+0x20>
d0003718:	463c      	mov	r4, r7
d000371a:	4620      	mov	r0, r4
d000371c:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d000371e:	4621      	mov	r1, r4
d0003720:	4630      	mov	r0, r6
d0003722:	47a8      	blx	r5
d0003724:	2800      	cmp	r0, #0
d0003726:	dbf8      	blt.n	d000371a <med3.isra.0+0x1c>
d0003728:	4634      	mov	r4, r6
d000372a:	e7f6      	b.n	d000371a <med3.isra.0+0x1c>
d000372c:	47a8      	blx	r5
d000372e:	2800      	cmp	r0, #0
d0003730:	dcf2      	bgt.n	d0003718 <med3.isra.0+0x1a>
d0003732:	4621      	mov	r1, r4
d0003734:	4630      	mov	r0, r6
d0003736:	47a8      	blx	r5
d0003738:	2800      	cmp	r0, #0
d000373a:	daee      	bge.n	d000371a <med3.isra.0+0x1c>
d000373c:	e7f4      	b.n	d0003728 <med3.isra.0+0x2a>

d000373e <qsort>:
d000373e:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0003742:	469a      	mov	sl, r3
d0003744:	ea40 0302 	orr.w	r3, r0, r2
d0003748:	079b      	lsls	r3, r3, #30
d000374a:	b097      	sub	sp, #92	; 0x5c
d000374c:	4606      	mov	r6, r0
d000374e:	4614      	mov	r4, r2
d0003750:	d11a      	bne.n	d0003788 <qsort+0x4a>
d0003752:	f1b2 0804 	subs.w	r8, r2, #4
d0003756:	bf18      	it	ne
d0003758:	f04f 0801 	movne.w	r8, #1
d000375c:	2300      	movs	r3, #0
d000375e:	9302      	str	r3, [sp, #8]
d0003760:	1933      	adds	r3, r6, r4
d0003762:	fb04 f701 	mul.w	r7, r4, r1
d0003766:	9301      	str	r3, [sp, #4]
d0003768:	2906      	cmp	r1, #6
d000376a:	eb06 0307 	add.w	r3, r6, r7
d000376e:	9303      	str	r3, [sp, #12]
d0003770:	d82a      	bhi.n	d00037c8 <qsort+0x8a>
d0003772:	9b01      	ldr	r3, [sp, #4]
d0003774:	9a03      	ldr	r2, [sp, #12]
d0003776:	4293      	cmp	r3, r2
d0003778:	d310      	bcc.n	d000379c <qsort+0x5e>
d000377a:	9b02      	ldr	r3, [sp, #8]
d000377c:	2b00      	cmp	r3, #0
d000377e:	f040 811f 	bne.w	d00039c0 <qsort+0x282>
d0003782:	b017      	add	sp, #92	; 0x5c
d0003784:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0003788:	f04f 0802 	mov.w	r8, #2
d000378c:	e7e6      	b.n	d000375c <qsort+0x1e>
d000378e:	4643      	mov	r3, r8
d0003790:	4622      	mov	r2, r4
d0003792:	4639      	mov	r1, r7
d0003794:	4628      	mov	r0, r5
d0003796:	f7ff ff99 	bl	d00036cc <swapfunc>
d000379a:	e00e      	b.n	d00037ba <qsort+0x7c>
d000379c:	9d01      	ldr	r5, [sp, #4]
d000379e:	e00d      	b.n	d00037bc <qsort+0x7e>
d00037a0:	1b2f      	subs	r7, r5, r4
d00037a2:	4629      	mov	r1, r5
d00037a4:	4638      	mov	r0, r7
d00037a6:	47d0      	blx	sl
d00037a8:	2800      	cmp	r0, #0
d00037aa:	dd09      	ble.n	d00037c0 <qsort+0x82>
d00037ac:	f1b8 0f00 	cmp.w	r8, #0
d00037b0:	d1ed      	bne.n	d000378e <qsort+0x50>
d00037b2:	682b      	ldr	r3, [r5, #0]
d00037b4:	683a      	ldr	r2, [r7, #0]
d00037b6:	602a      	str	r2, [r5, #0]
d00037b8:	603b      	str	r3, [r7, #0]
d00037ba:	463d      	mov	r5, r7
d00037bc:	42ae      	cmp	r6, r5
d00037be:	d3ef      	bcc.n	d00037a0 <qsort+0x62>
d00037c0:	9b01      	ldr	r3, [sp, #4]
d00037c2:	4423      	add	r3, r4
d00037c4:	9301      	str	r3, [sp, #4]
d00037c6:	e7d4      	b.n	d0003772 <qsort+0x34>
d00037c8:	ea4f 0951 	mov.w	r9, r1, lsr #1
d00037cc:	1b3f      	subs	r7, r7, r4
d00037ce:	2907      	cmp	r1, #7
d00037d0:	fb04 6909 	mla	r9, r4, r9, r6
d00037d4:	4437      	add	r7, r6
d00037d6:	d022      	beq.n	d000381e <qsort+0xe0>
d00037d8:	2928      	cmp	r1, #40	; 0x28
d00037da:	d945      	bls.n	d0003868 <qsort+0x12a>
d00037dc:	08c9      	lsrs	r1, r1, #3
d00037de:	fb04 f501 	mul.w	r5, r4, r1
d00037e2:	4653      	mov	r3, sl
d00037e4:	eb06 0245 	add.w	r2, r6, r5, lsl #1
d00037e8:	1971      	adds	r1, r6, r5
d00037ea:	4630      	mov	r0, r6
d00037ec:	f7ff ff87 	bl	d00036fe <med3.isra.0>
d00037f0:	4649      	mov	r1, r9
d00037f2:	eb09 0205 	add.w	r2, r9, r5
d00037f6:	4653      	mov	r3, sl
d00037f8:	4683      	mov	fp, r0
d00037fa:	1b48      	subs	r0, r1, r5
d00037fc:	f7ff ff7f 	bl	d00036fe <med3.isra.0>
d0003800:	463a      	mov	r2, r7
d0003802:	4681      	mov	r9, r0
d0003804:	4653      	mov	r3, sl
d0003806:	1b79      	subs	r1, r7, r5
d0003808:	eba7 0045 	sub.w	r0, r7, r5, lsl #1
d000380c:	f7ff ff77 	bl	d00036fe <med3.isra.0>
d0003810:	4602      	mov	r2, r0
d0003812:	4649      	mov	r1, r9
d0003814:	4653      	mov	r3, sl
d0003816:	4658      	mov	r0, fp
d0003818:	f7ff ff71 	bl	d00036fe <med3.isra.0>
d000381c:	4681      	mov	r9, r0
d000381e:	f1b8 0f00 	cmp.w	r8, #0
d0003822:	d124      	bne.n	d000386e <qsort+0x130>
d0003824:	6833      	ldr	r3, [r6, #0]
d0003826:	f8d9 2000 	ldr.w	r2, [r9]
d000382a:	6032      	str	r2, [r6, #0]
d000382c:	f8c9 3000 	str.w	r3, [r9]
d0003830:	eb06 0b04 	add.w	fp, r6, r4
d0003834:	46b9      	mov	r9, r7
d0003836:	465d      	mov	r5, fp
d0003838:	2300      	movs	r3, #0
d000383a:	45bb      	cmp	fp, r7
d000383c:	d835      	bhi.n	d00038aa <qsort+0x16c>
d000383e:	4631      	mov	r1, r6
d0003840:	4658      	mov	r0, fp
d0003842:	9304      	str	r3, [sp, #16]
d0003844:	47d0      	blx	sl
d0003846:	2800      	cmp	r0, #0
d0003848:	9b04      	ldr	r3, [sp, #16]
d000384a:	dc3e      	bgt.n	d00038ca <qsort+0x18c>
d000384c:	d10a      	bne.n	d0003864 <qsort+0x126>
d000384e:	f1b8 0f00 	cmp.w	r8, #0
d0003852:	d113      	bne.n	d000387c <qsort+0x13e>
d0003854:	682b      	ldr	r3, [r5, #0]
d0003856:	f8db 2000 	ldr.w	r2, [fp]
d000385a:	602a      	str	r2, [r5, #0]
d000385c:	f8cb 3000 	str.w	r3, [fp]
d0003860:	4425      	add	r5, r4
d0003862:	2301      	movs	r3, #1
d0003864:	44a3      	add	fp, r4
d0003866:	e7e8      	b.n	d000383a <qsort+0xfc>
d0003868:	463a      	mov	r2, r7
d000386a:	46b3      	mov	fp, r6
d000386c:	e7d1      	b.n	d0003812 <qsort+0xd4>
d000386e:	4643      	mov	r3, r8
d0003870:	4622      	mov	r2, r4
d0003872:	4649      	mov	r1, r9
d0003874:	4630      	mov	r0, r6
d0003876:	f7ff ff29 	bl	d00036cc <swapfunc>
d000387a:	e7d9      	b.n	d0003830 <qsort+0xf2>
d000387c:	4643      	mov	r3, r8
d000387e:	4622      	mov	r2, r4
d0003880:	4659      	mov	r1, fp
d0003882:	4628      	mov	r0, r5
d0003884:	f7ff ff22 	bl	d00036cc <swapfunc>
d0003888:	e7ea      	b.n	d0003860 <qsort+0x122>
d000388a:	d10b      	bne.n	d00038a4 <qsort+0x166>
d000388c:	f1b8 0f00 	cmp.w	r8, #0
d0003890:	d114      	bne.n	d00038bc <qsort+0x17e>
d0003892:	683b      	ldr	r3, [r7, #0]
d0003894:	f8d9 2000 	ldr.w	r2, [r9]
d0003898:	603a      	str	r2, [r7, #0]
d000389a:	f8c9 3000 	str.w	r3, [r9]
d000389e:	eba9 0904 	sub.w	r9, r9, r4
d00038a2:	2301      	movs	r3, #1
d00038a4:	9f04      	ldr	r7, [sp, #16]
d00038a6:	45bb      	cmp	fp, r7
d00038a8:	d90f      	bls.n	d00038ca <qsort+0x18c>
d00038aa:	2b00      	cmp	r3, #0
d00038ac:	d143      	bne.n	d0003936 <qsort+0x1f8>
d00038ae:	9b01      	ldr	r3, [sp, #4]
d00038b0:	9a03      	ldr	r2, [sp, #12]
d00038b2:	4293      	cmp	r3, r2
d00038b4:	f4bf af61 	bcs.w	d000377a <qsort+0x3c>
d00038b8:	9d01      	ldr	r5, [sp, #4]
d00038ba:	e036      	b.n	d000392a <qsort+0x1ec>
d00038bc:	4643      	mov	r3, r8
d00038be:	4622      	mov	r2, r4
d00038c0:	4649      	mov	r1, r9
d00038c2:	4638      	mov	r0, r7
d00038c4:	f7ff ff02 	bl	d00036cc <swapfunc>
d00038c8:	e7e9      	b.n	d000389e <qsort+0x160>
d00038ca:	4631      	mov	r1, r6
d00038cc:	4638      	mov	r0, r7
d00038ce:	9305      	str	r3, [sp, #20]
d00038d0:	47d0      	blx	sl
d00038d2:	1b3b      	subs	r3, r7, r4
d00038d4:	2800      	cmp	r0, #0
d00038d6:	9304      	str	r3, [sp, #16]
d00038d8:	9b05      	ldr	r3, [sp, #20]
d00038da:	dad6      	bge.n	d000388a <qsort+0x14c>
d00038dc:	f1b8 0f00 	cmp.w	r8, #0
d00038e0:	d006      	beq.n	d00038f0 <qsort+0x1b2>
d00038e2:	4643      	mov	r3, r8
d00038e4:	4622      	mov	r2, r4
d00038e6:	4639      	mov	r1, r7
d00038e8:	4658      	mov	r0, fp
d00038ea:	f7ff feef 	bl	d00036cc <swapfunc>
d00038ee:	e005      	b.n	d00038fc <qsort+0x1be>
d00038f0:	f8db 3000 	ldr.w	r3, [fp]
d00038f4:	683a      	ldr	r2, [r7, #0]
d00038f6:	f8cb 2000 	str.w	r2, [fp]
d00038fa:	603b      	str	r3, [r7, #0]
d00038fc:	9f04      	ldr	r7, [sp, #16]
d00038fe:	e7b0      	b.n	d0003862 <qsort+0x124>
d0003900:	4643      	mov	r3, r8
d0003902:	4622      	mov	r2, r4
d0003904:	4639      	mov	r1, r7
d0003906:	4628      	mov	r0, r5
d0003908:	f7ff fee0 	bl	d00036cc <swapfunc>
d000390c:	e00c      	b.n	d0003928 <qsort+0x1ea>
d000390e:	1b2f      	subs	r7, r5, r4
d0003910:	4629      	mov	r1, r5
d0003912:	4638      	mov	r0, r7
d0003914:	47d0      	blx	sl
d0003916:	2800      	cmp	r0, #0
d0003918:	dd09      	ble.n	d000392e <qsort+0x1f0>
d000391a:	f1b8 0f00 	cmp.w	r8, #0
d000391e:	d1ef      	bne.n	d0003900 <qsort+0x1c2>
d0003920:	682b      	ldr	r3, [r5, #0]
d0003922:	683a      	ldr	r2, [r7, #0]
d0003924:	602a      	str	r2, [r5, #0]
d0003926:	603b      	str	r3, [r7, #0]
d0003928:	463d      	mov	r5, r7
d000392a:	42ae      	cmp	r6, r5
d000392c:	d3ef      	bcc.n	d000390e <qsort+0x1d0>
d000392e:	9b01      	ldr	r3, [sp, #4]
d0003930:	4423      	add	r3, r4
d0003932:	9301      	str	r3, [sp, #4]
d0003934:	e7bb      	b.n	d00038ae <qsort+0x170>
d0003936:	ebab 0305 	sub.w	r3, fp, r5
d000393a:	1baa      	subs	r2, r5, r6
d000393c:	429a      	cmp	r2, r3
d000393e:	bfa8      	it	ge
d0003940:	461a      	movge	r2, r3
d0003942:	9301      	str	r3, [sp, #4]
d0003944:	b12a      	cbz	r2, d0003952 <qsort+0x214>
d0003946:	4643      	mov	r3, r8
d0003948:	ebab 0102 	sub.w	r1, fp, r2
d000394c:	4630      	mov	r0, r6
d000394e:	f7ff febd 	bl	d00036cc <swapfunc>
d0003952:	9b03      	ldr	r3, [sp, #12]
d0003954:	eba3 0209 	sub.w	r2, r3, r9
d0003958:	eba9 0707 	sub.w	r7, r9, r7
d000395c:	1b12      	subs	r2, r2, r4
d000395e:	42ba      	cmp	r2, r7
d0003960:	bf28      	it	cs
d0003962:	463a      	movcs	r2, r7
d0003964:	b12a      	cbz	r2, d0003972 <qsort+0x234>
d0003966:	9903      	ldr	r1, [sp, #12]
d0003968:	4643      	mov	r3, r8
d000396a:	1a89      	subs	r1, r1, r2
d000396c:	4658      	mov	r0, fp
d000396e:	f7ff fead 	bl	d00036cc <swapfunc>
d0003972:	f8dd 9004 	ldr.w	r9, [sp, #4]
d0003976:	9b03      	ldr	r3, [sp, #12]
d0003978:	454f      	cmp	r7, r9
d000397a:	eba3 0007 	sub.w	r0, r3, r7
d000397e:	d904      	bls.n	d000398a <qsort+0x24c>
d0003980:	4633      	mov	r3, r6
d0003982:	46b9      	mov	r9, r7
d0003984:	9f01      	ldr	r7, [sp, #4]
d0003986:	4606      	mov	r6, r0
d0003988:	4618      	mov	r0, r3
d000398a:	42a7      	cmp	r7, r4
d000398c:	d921      	bls.n	d00039d2 <qsort+0x294>
d000398e:	fbb7 f1f4 	udiv	r1, r7, r4
d0003992:	9b02      	ldr	r3, [sp, #8]
d0003994:	2b07      	cmp	r3, #7
d0003996:	d80d      	bhi.n	d00039b4 <qsort+0x276>
d0003998:	fbb9 f7f4 	udiv	r7, r9, r4
d000399c:	aa16      	add	r2, sp, #88	; 0x58
d000399e:	eb02 03c3 	add.w	r3, r2, r3, lsl #3
d00039a2:	f843 6c40 	str.w	r6, [r3, #-64]
d00039a6:	f843 7c3c 	str.w	r7, [r3, #-60]
d00039aa:	9b02      	ldr	r3, [sp, #8]
d00039ac:	3301      	adds	r3, #1
d00039ae:	9302      	str	r3, [sp, #8]
d00039b0:	4606      	mov	r6, r0
d00039b2:	e6d5      	b.n	d0003760 <qsort+0x22>
d00039b4:	4653      	mov	r3, sl
d00039b6:	4622      	mov	r2, r4
d00039b8:	f7ff fec1 	bl	d000373e <qsort>
d00039bc:	45a1      	cmp	r9, r4
d00039be:	d80b      	bhi.n	d00039d8 <qsort+0x29a>
d00039c0:	9b02      	ldr	r3, [sp, #8]
d00039c2:	aa16      	add	r2, sp, #88	; 0x58
d00039c4:	3b01      	subs	r3, #1
d00039c6:	9302      	str	r3, [sp, #8]
d00039c8:	eb02 03c3 	add.w	r3, r2, r3, lsl #3
d00039cc:	e953 0110 	ldrd	r0, r1, [r3, #-64]	; 0x40
d00039d0:	e7ee      	b.n	d00039b0 <qsort+0x272>
d00039d2:	45a1      	cmp	r9, r4
d00039d4:	f67f aed1 	bls.w	d000377a <qsort+0x3c>
d00039d8:	fbb9 f1f4 	udiv	r1, r9, r4
d00039dc:	4630      	mov	r0, r6
d00039de:	e7e7      	b.n	d00039b0 <qsort+0x272>

d00039e0 <setbuf>:
d00039e0:	2900      	cmp	r1, #0
d00039e2:	f44f 6380 	mov.w	r3, #1024	; 0x400
d00039e6:	bf0c      	ite	eq
d00039e8:	2202      	moveq	r2, #2
d00039ea:	2200      	movne	r2, #0
d00039ec:	f000 b800 	b.w	d00039f0 <setvbuf>

d00039f0 <setvbuf>:
d00039f0:	e92d 43f7 	stmdb	sp!, {r0, r1, r2, r4, r5, r6, r7, r8, r9, lr}
d00039f4:	461d      	mov	r5, r3
d00039f6:	4b5d      	ldr	r3, [pc, #372]	; (d0003b6c <setvbuf+0x17c>)
d00039f8:	681f      	ldr	r7, [r3, #0]
d00039fa:	4604      	mov	r4, r0
d00039fc:	460e      	mov	r6, r1
d00039fe:	4690      	mov	r8, r2
d0003a00:	b127      	cbz	r7, d0003a0c <setvbuf+0x1c>
d0003a02:	69bb      	ldr	r3, [r7, #24]
d0003a04:	b913      	cbnz	r3, d0003a0c <setvbuf+0x1c>
d0003a06:	4638      	mov	r0, r7
d0003a08:	f000 fa2e 	bl	d0003e68 <__sinit>
d0003a0c:	4b58      	ldr	r3, [pc, #352]	; (d0003b70 <setvbuf+0x180>)
d0003a0e:	429c      	cmp	r4, r3
d0003a10:	d167      	bne.n	d0003ae2 <setvbuf+0xf2>
d0003a12:	687c      	ldr	r4, [r7, #4]
d0003a14:	f1b8 0f02 	cmp.w	r8, #2
d0003a18:	d006      	beq.n	d0003a28 <setvbuf+0x38>
d0003a1a:	f1b8 0f01 	cmp.w	r8, #1
d0003a1e:	f200 809f 	bhi.w	d0003b60 <setvbuf+0x170>
d0003a22:	2d00      	cmp	r5, #0
d0003a24:	f2c0 809c 	blt.w	d0003b60 <setvbuf+0x170>
d0003a28:	6e63      	ldr	r3, [r4, #100]	; 0x64
d0003a2a:	07db      	lsls	r3, r3, #31
d0003a2c:	d405      	bmi.n	d0003a3a <setvbuf+0x4a>
d0003a2e:	89a3      	ldrh	r3, [r4, #12]
d0003a30:	0598      	lsls	r0, r3, #22
d0003a32:	d402      	bmi.n	d0003a3a <setvbuf+0x4a>
d0003a34:	6da0      	ldr	r0, [r4, #88]	; 0x58
d0003a36:	f000 fab5 	bl	d0003fa4 <__retarget_lock_acquire_recursive>
d0003a3a:	4621      	mov	r1, r4
d0003a3c:	4638      	mov	r0, r7
d0003a3e:	f000 f97f 	bl	d0003d40 <_fflush_r>
d0003a42:	6b61      	ldr	r1, [r4, #52]	; 0x34
d0003a44:	b141      	cbz	r1, d0003a58 <setvbuf+0x68>
d0003a46:	f104 0344 	add.w	r3, r4, #68	; 0x44
d0003a4a:	4299      	cmp	r1, r3
d0003a4c:	d002      	beq.n	d0003a54 <setvbuf+0x64>
d0003a4e:	4638      	mov	r0, r7
d0003a50:	f7ff fd92 	bl	d0003578 <_free_r>
d0003a54:	2300      	movs	r3, #0
d0003a56:	6363      	str	r3, [r4, #52]	; 0x34
d0003a58:	2300      	movs	r3, #0
d0003a5a:	61a3      	str	r3, [r4, #24]
d0003a5c:	6063      	str	r3, [r4, #4]
d0003a5e:	89a3      	ldrh	r3, [r4, #12]
d0003a60:	0619      	lsls	r1, r3, #24
d0003a62:	d503      	bpl.n	d0003a6c <setvbuf+0x7c>
d0003a64:	6921      	ldr	r1, [r4, #16]
d0003a66:	4638      	mov	r0, r7
d0003a68:	f7ff fd86 	bl	d0003578 <_free_r>
d0003a6c:	89a3      	ldrh	r3, [r4, #12]
d0003a6e:	f423 634a 	bic.w	r3, r3, #3232	; 0xca0
d0003a72:	f023 0303 	bic.w	r3, r3, #3
d0003a76:	f1b8 0f02 	cmp.w	r8, #2
d0003a7a:	81a3      	strh	r3, [r4, #12]
d0003a7c:	d06c      	beq.n	d0003b58 <setvbuf+0x168>
d0003a7e:	ab01      	add	r3, sp, #4
d0003a80:	466a      	mov	r2, sp
d0003a82:	4621      	mov	r1, r4
d0003a84:	4638      	mov	r0, r7
d0003a86:	f000 fa8f 	bl	d0003fa8 <__swhatbuf_r>
d0003a8a:	89a3      	ldrh	r3, [r4, #12]
d0003a8c:	4318      	orrs	r0, r3
d0003a8e:	81a0      	strh	r0, [r4, #12]
d0003a90:	2d00      	cmp	r5, #0
d0003a92:	d130      	bne.n	d0003af6 <setvbuf+0x106>
d0003a94:	9d00      	ldr	r5, [sp, #0]
d0003a96:	4628      	mov	r0, r5
d0003a98:	f7ff fd38 	bl	d000350c <malloc>
d0003a9c:	4606      	mov	r6, r0
d0003a9e:	2800      	cmp	r0, #0
d0003aa0:	d155      	bne.n	d0003b4e <setvbuf+0x15e>
d0003aa2:	f8dd 9000 	ldr.w	r9, [sp]
d0003aa6:	45a9      	cmp	r9, r5
d0003aa8:	d14a      	bne.n	d0003b40 <setvbuf+0x150>
d0003aaa:	f04f 35ff 	mov.w	r5, #4294967295	; 0xffffffff
d0003aae:	2200      	movs	r2, #0
d0003ab0:	60a2      	str	r2, [r4, #8]
d0003ab2:	f104 0247 	add.w	r2, r4, #71	; 0x47
d0003ab6:	6022      	str	r2, [r4, #0]
d0003ab8:	6122      	str	r2, [r4, #16]
d0003aba:	2201      	movs	r2, #1
d0003abc:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
d0003ac0:	6162      	str	r2, [r4, #20]
d0003ac2:	6e62      	ldr	r2, [r4, #100]	; 0x64
d0003ac4:	f043 0302 	orr.w	r3, r3, #2
d0003ac8:	07d2      	lsls	r2, r2, #31
d0003aca:	81a3      	strh	r3, [r4, #12]
d0003acc:	d405      	bmi.n	d0003ada <setvbuf+0xea>
d0003ace:	f413 7f00 	tst.w	r3, #512	; 0x200
d0003ad2:	d102      	bne.n	d0003ada <setvbuf+0xea>
d0003ad4:	6da0      	ldr	r0, [r4, #88]	; 0x58
d0003ad6:	f000 fa66 	bl	d0003fa6 <__retarget_lock_release_recursive>
d0003ada:	4628      	mov	r0, r5
d0003adc:	b003      	add	sp, #12
d0003ade:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
d0003ae2:	4b24      	ldr	r3, [pc, #144]	; (d0003b74 <setvbuf+0x184>)
d0003ae4:	429c      	cmp	r4, r3
d0003ae6:	d101      	bne.n	d0003aec <setvbuf+0xfc>
d0003ae8:	68bc      	ldr	r4, [r7, #8]
d0003aea:	e793      	b.n	d0003a14 <setvbuf+0x24>
d0003aec:	4b22      	ldr	r3, [pc, #136]	; (d0003b78 <setvbuf+0x188>)
d0003aee:	429c      	cmp	r4, r3
d0003af0:	bf08      	it	eq
d0003af2:	68fc      	ldreq	r4, [r7, #12]
d0003af4:	e78e      	b.n	d0003a14 <setvbuf+0x24>
d0003af6:	2e00      	cmp	r6, #0
d0003af8:	d0cd      	beq.n	d0003a96 <setvbuf+0xa6>
d0003afa:	69bb      	ldr	r3, [r7, #24]
d0003afc:	b913      	cbnz	r3, d0003b04 <setvbuf+0x114>
d0003afe:	4638      	mov	r0, r7
d0003b00:	f000 f9b2 	bl	d0003e68 <__sinit>
d0003b04:	f1b8 0f01 	cmp.w	r8, #1
d0003b08:	bf08      	it	eq
d0003b0a:	89a3      	ldrheq	r3, [r4, #12]
d0003b0c:	6026      	str	r6, [r4, #0]
d0003b0e:	bf04      	itt	eq
d0003b10:	f043 0301 	orreq.w	r3, r3, #1
d0003b14:	81a3      	strheq	r3, [r4, #12]
d0003b16:	89a2      	ldrh	r2, [r4, #12]
d0003b18:	f012 0308 	ands.w	r3, r2, #8
d0003b1c:	e9c4 6504 	strd	r6, r5, [r4, #16]
d0003b20:	d01c      	beq.n	d0003b5c <setvbuf+0x16c>
d0003b22:	07d3      	lsls	r3, r2, #31
d0003b24:	bf41      	itttt	mi
d0003b26:	2300      	movmi	r3, #0
d0003b28:	426d      	negmi	r5, r5
d0003b2a:	60a3      	strmi	r3, [r4, #8]
d0003b2c:	61a5      	strmi	r5, [r4, #24]
d0003b2e:	bf58      	it	pl
d0003b30:	60a5      	strpl	r5, [r4, #8]
d0003b32:	6e65      	ldr	r5, [r4, #100]	; 0x64
d0003b34:	f015 0501 	ands.w	r5, r5, #1
d0003b38:	d115      	bne.n	d0003b66 <setvbuf+0x176>
d0003b3a:	f412 7f00 	tst.w	r2, #512	; 0x200
d0003b3e:	e7c8      	b.n	d0003ad2 <setvbuf+0xe2>
d0003b40:	4648      	mov	r0, r9
d0003b42:	f7ff fce3 	bl	d000350c <malloc>
d0003b46:	4606      	mov	r6, r0
d0003b48:	2800      	cmp	r0, #0
d0003b4a:	d0ae      	beq.n	d0003aaa <setvbuf+0xba>
d0003b4c:	464d      	mov	r5, r9
d0003b4e:	89a3      	ldrh	r3, [r4, #12]
d0003b50:	f043 0380 	orr.w	r3, r3, #128	; 0x80
d0003b54:	81a3      	strh	r3, [r4, #12]
d0003b56:	e7d0      	b.n	d0003afa <setvbuf+0x10a>
d0003b58:	2500      	movs	r5, #0
d0003b5a:	e7a8      	b.n	d0003aae <setvbuf+0xbe>
d0003b5c:	60a3      	str	r3, [r4, #8]
d0003b5e:	e7e8      	b.n	d0003b32 <setvbuf+0x142>
d0003b60:	f04f 35ff 	mov.w	r5, #4294967295	; 0xffffffff
d0003b64:	e7b9      	b.n	d0003ada <setvbuf+0xea>
d0003b66:	2500      	movs	r5, #0
d0003b68:	e7b7      	b.n	d0003ada <setvbuf+0xea>
d0003b6a:	bf00      	nop
d0003b6c:	d0004cfc 	.word	0xd0004cfc
d0003b70:	d0004c78 	.word	0xd0004c78
d0003b74:	d0004c98 	.word	0xd0004c98
d0003b78:	d0004c58 	.word	0xd0004c58

d0003b7c <sniprintf>:
d0003b7c:	b40c      	push	{r2, r3}
d0003b7e:	b530      	push	{r4, r5, lr}
d0003b80:	4b17      	ldr	r3, [pc, #92]	; (d0003be0 <sniprintf+0x64>)
d0003b82:	1e0c      	subs	r4, r1, #0
d0003b84:	681d      	ldr	r5, [r3, #0]
d0003b86:	b09d      	sub	sp, #116	; 0x74
d0003b88:	da08      	bge.n	d0003b9c <sniprintf+0x20>
d0003b8a:	238b      	movs	r3, #139	; 0x8b
d0003b8c:	602b      	str	r3, [r5, #0]
d0003b8e:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d0003b92:	b01d      	add	sp, #116	; 0x74
d0003b94:	e8bd 4030 	ldmia.w	sp!, {r4, r5, lr}
d0003b98:	b002      	add	sp, #8
d0003b9a:	4770      	bx	lr
d0003b9c:	f44f 7302 	mov.w	r3, #520	; 0x208
d0003ba0:	f8ad 3014 	strh.w	r3, [sp, #20]
d0003ba4:	bf14      	ite	ne
d0003ba6:	f104 33ff 	addne.w	r3, r4, #4294967295	; 0xffffffff
d0003baa:	4623      	moveq	r3, r4
d0003bac:	9304      	str	r3, [sp, #16]
d0003bae:	9307      	str	r3, [sp, #28]
d0003bb0:	f64f 73ff 	movw	r3, #65535	; 0xffff
d0003bb4:	9002      	str	r0, [sp, #8]
d0003bb6:	9006      	str	r0, [sp, #24]
d0003bb8:	f8ad 3016 	strh.w	r3, [sp, #22]
d0003bbc:	9a20      	ldr	r2, [sp, #128]	; 0x80
d0003bbe:	ab21      	add	r3, sp, #132	; 0x84
d0003bc0:	a902      	add	r1, sp, #8
d0003bc2:	4628      	mov	r0, r5
d0003bc4:	9301      	str	r3, [sp, #4]
d0003bc6:	f000 fa7b 	bl	d00040c0 <_svfiprintf_r>
d0003bca:	1c43      	adds	r3, r0, #1
d0003bcc:	bfbc      	itt	lt
d0003bce:	238b      	movlt	r3, #139	; 0x8b
d0003bd0:	602b      	strlt	r3, [r5, #0]
d0003bd2:	2c00      	cmp	r4, #0
d0003bd4:	d0dd      	beq.n	d0003b92 <sniprintf+0x16>
d0003bd6:	9b02      	ldr	r3, [sp, #8]
d0003bd8:	2200      	movs	r2, #0
d0003bda:	701a      	strb	r2, [r3, #0]
d0003bdc:	e7d9      	b.n	d0003b92 <sniprintf+0x16>
d0003bde:	bf00      	nop
d0003be0:	d0004cfc 	.word	0xd0004cfc

d0003be4 <strncpy>:
d0003be4:	b510      	push	{r4, lr}
d0003be6:	3901      	subs	r1, #1
d0003be8:	4603      	mov	r3, r0
d0003bea:	b132      	cbz	r2, d0003bfa <strncpy+0x16>
d0003bec:	f811 4f01 	ldrb.w	r4, [r1, #1]!
d0003bf0:	f803 4b01 	strb.w	r4, [r3], #1
d0003bf4:	3a01      	subs	r2, #1
d0003bf6:	2c00      	cmp	r4, #0
d0003bf8:	d1f7      	bne.n	d0003bea <strncpy+0x6>
d0003bfa:	441a      	add	r2, r3
d0003bfc:	2100      	movs	r1, #0
d0003bfe:	4293      	cmp	r3, r2
d0003c00:	d100      	bne.n	d0003c04 <strncpy+0x20>
d0003c02:	bd10      	pop	{r4, pc}
d0003c04:	f803 1b01 	strb.w	r1, [r3], #1
d0003c08:	e7f9      	b.n	d0003bfe <strncpy+0x1a>

d0003c0a <strrchr>:
d0003c0a:	b538      	push	{r3, r4, r5, lr}
d0003c0c:	4603      	mov	r3, r0
d0003c0e:	460c      	mov	r4, r1
d0003c10:	b969      	cbnz	r1, d0003c2e <strrchr+0x24>
d0003c12:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
d0003c16:	f000 bd2a 	b.w	d000466e <strchr>
d0003c1a:	1c43      	adds	r3, r0, #1
d0003c1c:	4605      	mov	r5, r0
d0003c1e:	4621      	mov	r1, r4
d0003c20:	4618      	mov	r0, r3
d0003c22:	f000 fd24 	bl	d000466e <strchr>
d0003c26:	2800      	cmp	r0, #0
d0003c28:	d1f7      	bne.n	d0003c1a <strrchr+0x10>
d0003c2a:	4628      	mov	r0, r5
d0003c2c:	bd38      	pop	{r3, r4, r5, pc}
d0003c2e:	2500      	movs	r5, #0
d0003c30:	e7f5      	b.n	d0003c1e <strrchr+0x14>
	...

d0003c34 <__sflush_r>:
d0003c34:	898a      	ldrh	r2, [r1, #12]
d0003c36:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
d0003c3a:	4605      	mov	r5, r0
d0003c3c:	0710      	lsls	r0, r2, #28
d0003c3e:	460c      	mov	r4, r1
d0003c40:	d458      	bmi.n	d0003cf4 <__sflush_r+0xc0>
d0003c42:	684b      	ldr	r3, [r1, #4]
d0003c44:	2b00      	cmp	r3, #0
d0003c46:	dc05      	bgt.n	d0003c54 <__sflush_r+0x20>
d0003c48:	6c0b      	ldr	r3, [r1, #64]	; 0x40
d0003c4a:	2b00      	cmp	r3, #0
d0003c4c:	dc02      	bgt.n	d0003c54 <__sflush_r+0x20>
d0003c4e:	2000      	movs	r0, #0
d0003c50:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
d0003c54:	6ae6      	ldr	r6, [r4, #44]	; 0x2c
d0003c56:	2e00      	cmp	r6, #0
d0003c58:	d0f9      	beq.n	d0003c4e <__sflush_r+0x1a>
d0003c5a:	2300      	movs	r3, #0
d0003c5c:	f412 5280 	ands.w	r2, r2, #4096	; 0x1000
d0003c60:	682f      	ldr	r7, [r5, #0]
d0003c62:	602b      	str	r3, [r5, #0]
d0003c64:	d032      	beq.n	d0003ccc <__sflush_r+0x98>
d0003c66:	6d60      	ldr	r0, [r4, #84]	; 0x54
d0003c68:	89a3      	ldrh	r3, [r4, #12]
d0003c6a:	075a      	lsls	r2, r3, #29
d0003c6c:	d505      	bpl.n	d0003c7a <__sflush_r+0x46>
d0003c6e:	6863      	ldr	r3, [r4, #4]
d0003c70:	1ac0      	subs	r0, r0, r3
d0003c72:	6b63      	ldr	r3, [r4, #52]	; 0x34
d0003c74:	b10b      	cbz	r3, d0003c7a <__sflush_r+0x46>
d0003c76:	6c23      	ldr	r3, [r4, #64]	; 0x40
d0003c78:	1ac0      	subs	r0, r0, r3
d0003c7a:	2300      	movs	r3, #0
d0003c7c:	4602      	mov	r2, r0
d0003c7e:	6ae6      	ldr	r6, [r4, #44]	; 0x2c
d0003c80:	6a21      	ldr	r1, [r4, #32]
d0003c82:	4628      	mov	r0, r5
d0003c84:	47b0      	blx	r6
d0003c86:	1c43      	adds	r3, r0, #1
d0003c88:	89a3      	ldrh	r3, [r4, #12]
d0003c8a:	d106      	bne.n	d0003c9a <__sflush_r+0x66>
d0003c8c:	6829      	ldr	r1, [r5, #0]
d0003c8e:	291d      	cmp	r1, #29
d0003c90:	d82c      	bhi.n	d0003cec <__sflush_r+0xb8>
d0003c92:	4a2a      	ldr	r2, [pc, #168]	; (d0003d3c <__sflush_r+0x108>)
d0003c94:	40ca      	lsrs	r2, r1
d0003c96:	07d6      	lsls	r6, r2, #31
d0003c98:	d528      	bpl.n	d0003cec <__sflush_r+0xb8>
d0003c9a:	2200      	movs	r2, #0
d0003c9c:	6062      	str	r2, [r4, #4]
d0003c9e:	04d9      	lsls	r1, r3, #19
d0003ca0:	6922      	ldr	r2, [r4, #16]
d0003ca2:	6022      	str	r2, [r4, #0]
d0003ca4:	d504      	bpl.n	d0003cb0 <__sflush_r+0x7c>
d0003ca6:	1c42      	adds	r2, r0, #1
d0003ca8:	d101      	bne.n	d0003cae <__sflush_r+0x7a>
d0003caa:	682b      	ldr	r3, [r5, #0]
d0003cac:	b903      	cbnz	r3, d0003cb0 <__sflush_r+0x7c>
d0003cae:	6560      	str	r0, [r4, #84]	; 0x54
d0003cb0:	6b61      	ldr	r1, [r4, #52]	; 0x34
d0003cb2:	602f      	str	r7, [r5, #0]
d0003cb4:	2900      	cmp	r1, #0
d0003cb6:	d0ca      	beq.n	d0003c4e <__sflush_r+0x1a>
d0003cb8:	f104 0344 	add.w	r3, r4, #68	; 0x44
d0003cbc:	4299      	cmp	r1, r3
d0003cbe:	d002      	beq.n	d0003cc6 <__sflush_r+0x92>
d0003cc0:	4628      	mov	r0, r5
d0003cc2:	f7ff fc59 	bl	d0003578 <_free_r>
d0003cc6:	2000      	movs	r0, #0
d0003cc8:	6360      	str	r0, [r4, #52]	; 0x34
d0003cca:	e7c1      	b.n	d0003c50 <__sflush_r+0x1c>
d0003ccc:	6a21      	ldr	r1, [r4, #32]
d0003cce:	2301      	movs	r3, #1
d0003cd0:	4628      	mov	r0, r5
d0003cd2:	47b0      	blx	r6
d0003cd4:	1c41      	adds	r1, r0, #1
d0003cd6:	d1c7      	bne.n	d0003c68 <__sflush_r+0x34>
d0003cd8:	682b      	ldr	r3, [r5, #0]
d0003cda:	2b00      	cmp	r3, #0
d0003cdc:	d0c4      	beq.n	d0003c68 <__sflush_r+0x34>
d0003cde:	2b1d      	cmp	r3, #29
d0003ce0:	d001      	beq.n	d0003ce6 <__sflush_r+0xb2>
d0003ce2:	2b16      	cmp	r3, #22
d0003ce4:	d101      	bne.n	d0003cea <__sflush_r+0xb6>
d0003ce6:	602f      	str	r7, [r5, #0]
d0003ce8:	e7b1      	b.n	d0003c4e <__sflush_r+0x1a>
d0003cea:	89a3      	ldrh	r3, [r4, #12]
d0003cec:	f043 0340 	orr.w	r3, r3, #64	; 0x40
d0003cf0:	81a3      	strh	r3, [r4, #12]
d0003cf2:	e7ad      	b.n	d0003c50 <__sflush_r+0x1c>
d0003cf4:	690f      	ldr	r7, [r1, #16]
d0003cf6:	2f00      	cmp	r7, #0
d0003cf8:	d0a9      	beq.n	d0003c4e <__sflush_r+0x1a>
d0003cfa:	0793      	lsls	r3, r2, #30
d0003cfc:	680e      	ldr	r6, [r1, #0]
d0003cfe:	bf08      	it	eq
d0003d00:	694b      	ldreq	r3, [r1, #20]
d0003d02:	600f      	str	r7, [r1, #0]
d0003d04:	bf18      	it	ne
d0003d06:	2300      	movne	r3, #0
d0003d08:	eba6 0807 	sub.w	r8, r6, r7
d0003d0c:	608b      	str	r3, [r1, #8]
d0003d0e:	f1b8 0f00 	cmp.w	r8, #0
d0003d12:	dd9c      	ble.n	d0003c4e <__sflush_r+0x1a>
d0003d14:	6a21      	ldr	r1, [r4, #32]
d0003d16:	6aa6      	ldr	r6, [r4, #40]	; 0x28
d0003d18:	4643      	mov	r3, r8
d0003d1a:	463a      	mov	r2, r7
d0003d1c:	4628      	mov	r0, r5
d0003d1e:	47b0      	blx	r6
d0003d20:	2800      	cmp	r0, #0
d0003d22:	dc06      	bgt.n	d0003d32 <__sflush_r+0xfe>
d0003d24:	89a3      	ldrh	r3, [r4, #12]
d0003d26:	f043 0340 	orr.w	r3, r3, #64	; 0x40
d0003d2a:	81a3      	strh	r3, [r4, #12]
d0003d2c:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d0003d30:	e78e      	b.n	d0003c50 <__sflush_r+0x1c>
d0003d32:	4407      	add	r7, r0
d0003d34:	eba8 0800 	sub.w	r8, r8, r0
d0003d38:	e7e9      	b.n	d0003d0e <__sflush_r+0xda>
d0003d3a:	bf00      	nop
d0003d3c:	20400001 	.word	0x20400001

d0003d40 <_fflush_r>:
d0003d40:	b538      	push	{r3, r4, r5, lr}
d0003d42:	690b      	ldr	r3, [r1, #16]
d0003d44:	4605      	mov	r5, r0
d0003d46:	460c      	mov	r4, r1
d0003d48:	b913      	cbnz	r3, d0003d50 <_fflush_r+0x10>
d0003d4a:	2500      	movs	r5, #0
d0003d4c:	4628      	mov	r0, r5
d0003d4e:	bd38      	pop	{r3, r4, r5, pc}
d0003d50:	b118      	cbz	r0, d0003d5a <_fflush_r+0x1a>
d0003d52:	6983      	ldr	r3, [r0, #24]
d0003d54:	b90b      	cbnz	r3, d0003d5a <_fflush_r+0x1a>
d0003d56:	f000 f887 	bl	d0003e68 <__sinit>
d0003d5a:	4b14      	ldr	r3, [pc, #80]	; (d0003dac <_fflush_r+0x6c>)
d0003d5c:	429c      	cmp	r4, r3
d0003d5e:	d11b      	bne.n	d0003d98 <_fflush_r+0x58>
d0003d60:	686c      	ldr	r4, [r5, #4]
d0003d62:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
d0003d66:	2b00      	cmp	r3, #0
d0003d68:	d0ef      	beq.n	d0003d4a <_fflush_r+0xa>
d0003d6a:	6e62      	ldr	r2, [r4, #100]	; 0x64
d0003d6c:	07d0      	lsls	r0, r2, #31
d0003d6e:	d404      	bmi.n	d0003d7a <_fflush_r+0x3a>
d0003d70:	0599      	lsls	r1, r3, #22
d0003d72:	d402      	bmi.n	d0003d7a <_fflush_r+0x3a>
d0003d74:	6da0      	ldr	r0, [r4, #88]	; 0x58
d0003d76:	f000 f915 	bl	d0003fa4 <__retarget_lock_acquire_recursive>
d0003d7a:	4628      	mov	r0, r5
d0003d7c:	4621      	mov	r1, r4
d0003d7e:	f7ff ff59 	bl	d0003c34 <__sflush_r>
d0003d82:	6e63      	ldr	r3, [r4, #100]	; 0x64
d0003d84:	07da      	lsls	r2, r3, #31
d0003d86:	4605      	mov	r5, r0
d0003d88:	d4e0      	bmi.n	d0003d4c <_fflush_r+0xc>
d0003d8a:	89a3      	ldrh	r3, [r4, #12]
d0003d8c:	059b      	lsls	r3, r3, #22
d0003d8e:	d4dd      	bmi.n	d0003d4c <_fflush_r+0xc>
d0003d90:	6da0      	ldr	r0, [r4, #88]	; 0x58
d0003d92:	f000 f908 	bl	d0003fa6 <__retarget_lock_release_recursive>
d0003d96:	e7d9      	b.n	d0003d4c <_fflush_r+0xc>
d0003d98:	4b05      	ldr	r3, [pc, #20]	; (d0003db0 <_fflush_r+0x70>)
d0003d9a:	429c      	cmp	r4, r3
d0003d9c:	d101      	bne.n	d0003da2 <_fflush_r+0x62>
d0003d9e:	68ac      	ldr	r4, [r5, #8]
d0003da0:	e7df      	b.n	d0003d62 <_fflush_r+0x22>
d0003da2:	4b04      	ldr	r3, [pc, #16]	; (d0003db4 <_fflush_r+0x74>)
d0003da4:	429c      	cmp	r4, r3
d0003da6:	bf08      	it	eq
d0003da8:	68ec      	ldreq	r4, [r5, #12]
d0003daa:	e7da      	b.n	d0003d62 <_fflush_r+0x22>
d0003dac:	d0004c78 	.word	0xd0004c78
d0003db0:	d0004c98 	.word	0xd0004c98
d0003db4:	d0004c58 	.word	0xd0004c58

d0003db8 <std>:
d0003db8:	2300      	movs	r3, #0
d0003dba:	b510      	push	{r4, lr}
d0003dbc:	4604      	mov	r4, r0
d0003dbe:	e9c0 3300 	strd	r3, r3, [r0]
d0003dc2:	e9c0 3304 	strd	r3, r3, [r0, #16]
d0003dc6:	6083      	str	r3, [r0, #8]
d0003dc8:	8181      	strh	r1, [r0, #12]
d0003dca:	6643      	str	r3, [r0, #100]	; 0x64
d0003dcc:	81c2      	strh	r2, [r0, #14]
d0003dce:	6183      	str	r3, [r0, #24]
d0003dd0:	4619      	mov	r1, r3
d0003dd2:	2208      	movs	r2, #8
d0003dd4:	305c      	adds	r0, #92	; 0x5c
d0003dd6:	f7ff fbb7 	bl	d0003548 <memset>
d0003dda:	4b05      	ldr	r3, [pc, #20]	; (d0003df0 <std+0x38>)
d0003ddc:	6263      	str	r3, [r4, #36]	; 0x24
d0003dde:	4b05      	ldr	r3, [pc, #20]	; (d0003df4 <std+0x3c>)
d0003de0:	62a3      	str	r3, [r4, #40]	; 0x28
d0003de2:	4b05      	ldr	r3, [pc, #20]	; (d0003df8 <std+0x40>)
d0003de4:	62e3      	str	r3, [r4, #44]	; 0x2c
d0003de6:	4b05      	ldr	r3, [pc, #20]	; (d0003dfc <std+0x44>)
d0003de8:	6224      	str	r4, [r4, #32]
d0003dea:	6323      	str	r3, [r4, #48]	; 0x30
d0003dec:	bd10      	pop	{r4, pc}
d0003dee:	bf00      	nop
d0003df0:	d00045e9 	.word	0xd00045e9
d0003df4:	d000460b 	.word	0xd000460b
d0003df8:	d0004643 	.word	0xd0004643
d0003dfc:	d0004667 	.word	0xd0004667

d0003e00 <_cleanup_r>:
d0003e00:	4901      	ldr	r1, [pc, #4]	; (d0003e08 <_cleanup_r+0x8>)
d0003e02:	f000 b8af 	b.w	d0003f64 <_fwalk_reent>
d0003e06:	bf00      	nop
d0003e08:	d0003d41 	.word	0xd0003d41

d0003e0c <__sfmoreglue>:
d0003e0c:	b570      	push	{r4, r5, r6, lr}
d0003e0e:	1e4a      	subs	r2, r1, #1
d0003e10:	2568      	movs	r5, #104	; 0x68
d0003e12:	4355      	muls	r5, r2
d0003e14:	460e      	mov	r6, r1
d0003e16:	f105 0174 	add.w	r1, r5, #116	; 0x74
d0003e1a:	f7ff fbfd 	bl	d0003618 <_malloc_r>
d0003e1e:	4604      	mov	r4, r0
d0003e20:	b140      	cbz	r0, d0003e34 <__sfmoreglue+0x28>
d0003e22:	2100      	movs	r1, #0
d0003e24:	e9c0 1600 	strd	r1, r6, [r0]
d0003e28:	300c      	adds	r0, #12
d0003e2a:	60a0      	str	r0, [r4, #8]
d0003e2c:	f105 0268 	add.w	r2, r5, #104	; 0x68
d0003e30:	f7ff fb8a 	bl	d0003548 <memset>
d0003e34:	4620      	mov	r0, r4
d0003e36:	bd70      	pop	{r4, r5, r6, pc}

d0003e38 <__sfp_lock_acquire>:
d0003e38:	4801      	ldr	r0, [pc, #4]	; (d0003e40 <__sfp_lock_acquire+0x8>)
d0003e3a:	f000 b8b3 	b.w	d0003fa4 <__retarget_lock_acquire_recursive>
d0003e3e:	bf00      	nop
d0003e40:	d0006a8c 	.word	0xd0006a8c

d0003e44 <__sfp_lock_release>:
d0003e44:	4801      	ldr	r0, [pc, #4]	; (d0003e4c <__sfp_lock_release+0x8>)
d0003e46:	f000 b8ae 	b.w	d0003fa6 <__retarget_lock_release_recursive>
d0003e4a:	bf00      	nop
d0003e4c:	d0006a8c 	.word	0xd0006a8c

d0003e50 <__sinit_lock_acquire>:
d0003e50:	4801      	ldr	r0, [pc, #4]	; (d0003e58 <__sinit_lock_acquire+0x8>)
d0003e52:	f000 b8a7 	b.w	d0003fa4 <__retarget_lock_acquire_recursive>
d0003e56:	bf00      	nop
d0003e58:	d0006a87 	.word	0xd0006a87

d0003e5c <__sinit_lock_release>:
d0003e5c:	4801      	ldr	r0, [pc, #4]	; (d0003e64 <__sinit_lock_release+0x8>)
d0003e5e:	f000 b8a2 	b.w	d0003fa6 <__retarget_lock_release_recursive>
d0003e62:	bf00      	nop
d0003e64:	d0006a87 	.word	0xd0006a87

d0003e68 <__sinit>:
d0003e68:	b510      	push	{r4, lr}
d0003e6a:	4604      	mov	r4, r0
d0003e6c:	f7ff fff0 	bl	d0003e50 <__sinit_lock_acquire>
d0003e70:	69a3      	ldr	r3, [r4, #24]
d0003e72:	b11b      	cbz	r3, d0003e7c <__sinit+0x14>
d0003e74:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
d0003e78:	f7ff bff0 	b.w	d0003e5c <__sinit_lock_release>
d0003e7c:	e9c4 3312 	strd	r3, r3, [r4, #72]	; 0x48
d0003e80:	6523      	str	r3, [r4, #80]	; 0x50
d0003e82:	4b13      	ldr	r3, [pc, #76]	; (d0003ed0 <__sinit+0x68>)
d0003e84:	4a13      	ldr	r2, [pc, #76]	; (d0003ed4 <__sinit+0x6c>)
d0003e86:	681b      	ldr	r3, [r3, #0]
d0003e88:	62a2      	str	r2, [r4, #40]	; 0x28
d0003e8a:	42a3      	cmp	r3, r4
d0003e8c:	bf04      	itt	eq
d0003e8e:	2301      	moveq	r3, #1
d0003e90:	61a3      	streq	r3, [r4, #24]
d0003e92:	4620      	mov	r0, r4
d0003e94:	f000 f820 	bl	d0003ed8 <__sfp>
d0003e98:	6060      	str	r0, [r4, #4]
d0003e9a:	4620      	mov	r0, r4
d0003e9c:	f000 f81c 	bl	d0003ed8 <__sfp>
d0003ea0:	60a0      	str	r0, [r4, #8]
d0003ea2:	4620      	mov	r0, r4
d0003ea4:	f000 f818 	bl	d0003ed8 <__sfp>
d0003ea8:	2200      	movs	r2, #0
d0003eaa:	60e0      	str	r0, [r4, #12]
d0003eac:	2104      	movs	r1, #4
d0003eae:	6860      	ldr	r0, [r4, #4]
d0003eb0:	f7ff ff82 	bl	d0003db8 <std>
d0003eb4:	68a0      	ldr	r0, [r4, #8]
d0003eb6:	2201      	movs	r2, #1
d0003eb8:	2109      	movs	r1, #9
d0003eba:	f7ff ff7d 	bl	d0003db8 <std>
d0003ebe:	68e0      	ldr	r0, [r4, #12]
d0003ec0:	2202      	movs	r2, #2
d0003ec2:	2112      	movs	r1, #18
d0003ec4:	f7ff ff78 	bl	d0003db8 <std>
d0003ec8:	2301      	movs	r3, #1
d0003eca:	61a3      	str	r3, [r4, #24]
d0003ecc:	e7d2      	b.n	d0003e74 <__sinit+0xc>
d0003ece:	bf00      	nop
d0003ed0:	d0004c54 	.word	0xd0004c54
d0003ed4:	d0003e01 	.word	0xd0003e01

d0003ed8 <__sfp>:
d0003ed8:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d0003eda:	4607      	mov	r7, r0
d0003edc:	f7ff ffac 	bl	d0003e38 <__sfp_lock_acquire>
d0003ee0:	4b1e      	ldr	r3, [pc, #120]	; (d0003f5c <__sfp+0x84>)
d0003ee2:	681e      	ldr	r6, [r3, #0]
d0003ee4:	69b3      	ldr	r3, [r6, #24]
d0003ee6:	b913      	cbnz	r3, d0003eee <__sfp+0x16>
d0003ee8:	4630      	mov	r0, r6
d0003eea:	f7ff ffbd 	bl	d0003e68 <__sinit>
d0003eee:	3648      	adds	r6, #72	; 0x48
d0003ef0:	e9d6 3401 	ldrd	r3, r4, [r6, #4]
d0003ef4:	3b01      	subs	r3, #1
d0003ef6:	d503      	bpl.n	d0003f00 <__sfp+0x28>
d0003ef8:	6833      	ldr	r3, [r6, #0]
d0003efa:	b30b      	cbz	r3, d0003f40 <__sfp+0x68>
d0003efc:	6836      	ldr	r6, [r6, #0]
d0003efe:	e7f7      	b.n	d0003ef0 <__sfp+0x18>
d0003f00:	f9b4 500c 	ldrsh.w	r5, [r4, #12]
d0003f04:	b9d5      	cbnz	r5, d0003f3c <__sfp+0x64>
d0003f06:	4b16      	ldr	r3, [pc, #88]	; (d0003f60 <__sfp+0x88>)
d0003f08:	60e3      	str	r3, [r4, #12]
d0003f0a:	f104 0058 	add.w	r0, r4, #88	; 0x58
d0003f0e:	6665      	str	r5, [r4, #100]	; 0x64
d0003f10:	f000 f847 	bl	d0003fa2 <__retarget_lock_init_recursive>
d0003f14:	f7ff ff96 	bl	d0003e44 <__sfp_lock_release>
d0003f18:	e9c4 5501 	strd	r5, r5, [r4, #4]
d0003f1c:	e9c4 5504 	strd	r5, r5, [r4, #16]
d0003f20:	6025      	str	r5, [r4, #0]
d0003f22:	61a5      	str	r5, [r4, #24]
d0003f24:	2208      	movs	r2, #8
d0003f26:	4629      	mov	r1, r5
d0003f28:	f104 005c 	add.w	r0, r4, #92	; 0x5c
d0003f2c:	f7ff fb0c 	bl	d0003548 <memset>
d0003f30:	e9c4 550d 	strd	r5, r5, [r4, #52]	; 0x34
d0003f34:	e9c4 5512 	strd	r5, r5, [r4, #72]	; 0x48
d0003f38:	4620      	mov	r0, r4
d0003f3a:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d0003f3c:	3468      	adds	r4, #104	; 0x68
d0003f3e:	e7d9      	b.n	d0003ef4 <__sfp+0x1c>
d0003f40:	2104      	movs	r1, #4
d0003f42:	4638      	mov	r0, r7
d0003f44:	f7ff ff62 	bl	d0003e0c <__sfmoreglue>
d0003f48:	4604      	mov	r4, r0
d0003f4a:	6030      	str	r0, [r6, #0]
d0003f4c:	2800      	cmp	r0, #0
d0003f4e:	d1d5      	bne.n	d0003efc <__sfp+0x24>
d0003f50:	f7ff ff78 	bl	d0003e44 <__sfp_lock_release>
d0003f54:	230c      	movs	r3, #12
d0003f56:	603b      	str	r3, [r7, #0]
d0003f58:	e7ee      	b.n	d0003f38 <__sfp+0x60>
d0003f5a:	bf00      	nop
d0003f5c:	d0004c54 	.word	0xd0004c54
d0003f60:	ffff0001 	.word	0xffff0001

d0003f64 <_fwalk_reent>:
d0003f64:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
d0003f68:	4606      	mov	r6, r0
d0003f6a:	4688      	mov	r8, r1
d0003f6c:	f100 0448 	add.w	r4, r0, #72	; 0x48
d0003f70:	2700      	movs	r7, #0
d0003f72:	e9d4 9501 	ldrd	r9, r5, [r4, #4]
d0003f76:	f1b9 0901 	subs.w	r9, r9, #1
d0003f7a:	d505      	bpl.n	d0003f88 <_fwalk_reent+0x24>
d0003f7c:	6824      	ldr	r4, [r4, #0]
d0003f7e:	2c00      	cmp	r4, #0
d0003f80:	d1f7      	bne.n	d0003f72 <_fwalk_reent+0xe>
d0003f82:	4638      	mov	r0, r7
d0003f84:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
d0003f88:	89ab      	ldrh	r3, [r5, #12]
d0003f8a:	2b01      	cmp	r3, #1
d0003f8c:	d907      	bls.n	d0003f9e <_fwalk_reent+0x3a>
d0003f8e:	f9b5 300e 	ldrsh.w	r3, [r5, #14]
d0003f92:	3301      	adds	r3, #1
d0003f94:	d003      	beq.n	d0003f9e <_fwalk_reent+0x3a>
d0003f96:	4629      	mov	r1, r5
d0003f98:	4630      	mov	r0, r6
d0003f9a:	47c0      	blx	r8
d0003f9c:	4307      	orrs	r7, r0
d0003f9e:	3568      	adds	r5, #104	; 0x68
d0003fa0:	e7e9      	b.n	d0003f76 <_fwalk_reent+0x12>

d0003fa2 <__retarget_lock_init_recursive>:
d0003fa2:	4770      	bx	lr

d0003fa4 <__retarget_lock_acquire_recursive>:
d0003fa4:	4770      	bx	lr

d0003fa6 <__retarget_lock_release_recursive>:
d0003fa6:	4770      	bx	lr

d0003fa8 <__swhatbuf_r>:
d0003fa8:	b570      	push	{r4, r5, r6, lr}
d0003faa:	460e      	mov	r6, r1
d0003fac:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d0003fb0:	2900      	cmp	r1, #0
d0003fb2:	b096      	sub	sp, #88	; 0x58
d0003fb4:	4614      	mov	r4, r2
d0003fb6:	461d      	mov	r5, r3
d0003fb8:	da07      	bge.n	d0003fca <__swhatbuf_r+0x22>
d0003fba:	2300      	movs	r3, #0
d0003fbc:	602b      	str	r3, [r5, #0]
d0003fbe:	89b3      	ldrh	r3, [r6, #12]
d0003fc0:	061a      	lsls	r2, r3, #24
d0003fc2:	d410      	bmi.n	d0003fe6 <__swhatbuf_r+0x3e>
d0003fc4:	f44f 6380 	mov.w	r3, #1024	; 0x400
d0003fc8:	e00e      	b.n	d0003fe8 <__swhatbuf_r+0x40>
d0003fca:	466a      	mov	r2, sp
d0003fcc:	f000 fb6c 	bl	d00046a8 <_fstat_r>
d0003fd0:	2800      	cmp	r0, #0
d0003fd2:	dbf2      	blt.n	d0003fba <__swhatbuf_r+0x12>
d0003fd4:	9a01      	ldr	r2, [sp, #4]
d0003fd6:	f402 4270 	and.w	r2, r2, #61440	; 0xf000
d0003fda:	f5a2 5300 	sub.w	r3, r2, #8192	; 0x2000
d0003fde:	425a      	negs	r2, r3
d0003fe0:	415a      	adcs	r2, r3
d0003fe2:	602a      	str	r2, [r5, #0]
d0003fe4:	e7ee      	b.n	d0003fc4 <__swhatbuf_r+0x1c>
d0003fe6:	2340      	movs	r3, #64	; 0x40
d0003fe8:	2000      	movs	r0, #0
d0003fea:	6023      	str	r3, [r4, #0]
d0003fec:	b016      	add	sp, #88	; 0x58
d0003fee:	bd70      	pop	{r4, r5, r6, pc}

d0003ff0 <__malloc_lock>:
d0003ff0:	4801      	ldr	r0, [pc, #4]	; (d0003ff8 <__malloc_lock+0x8>)
d0003ff2:	f7ff bfd7 	b.w	d0003fa4 <__retarget_lock_acquire_recursive>
d0003ff6:	bf00      	nop
d0003ff8:	d0006a88 	.word	0xd0006a88

d0003ffc <__malloc_unlock>:
d0003ffc:	4801      	ldr	r0, [pc, #4]	; (d0004004 <__malloc_unlock+0x8>)
d0003ffe:	f7ff bfd2 	b.w	d0003fa6 <__retarget_lock_release_recursive>
d0004002:	bf00      	nop
d0004004:	d0006a88 	.word	0xd0006a88

d0004008 <__ssputs_r>:
d0004008:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
d000400c:	688e      	ldr	r6, [r1, #8]
d000400e:	429e      	cmp	r6, r3
d0004010:	4682      	mov	sl, r0
d0004012:	460c      	mov	r4, r1
d0004014:	4690      	mov	r8, r2
d0004016:	461f      	mov	r7, r3
d0004018:	d838      	bhi.n	d000408c <__ssputs_r+0x84>
d000401a:	898a      	ldrh	r2, [r1, #12]
d000401c:	f412 6f90 	tst.w	r2, #1152	; 0x480
d0004020:	d032      	beq.n	d0004088 <__ssputs_r+0x80>
d0004022:	6825      	ldr	r5, [r4, #0]
d0004024:	6909      	ldr	r1, [r1, #16]
d0004026:	eba5 0901 	sub.w	r9, r5, r1
d000402a:	6965      	ldr	r5, [r4, #20]
d000402c:	eb05 0545 	add.w	r5, r5, r5, lsl #1
d0004030:	eb05 75d5 	add.w	r5, r5, r5, lsr #31
d0004034:	3301      	adds	r3, #1
d0004036:	444b      	add	r3, r9
d0004038:	106d      	asrs	r5, r5, #1
d000403a:	429d      	cmp	r5, r3
d000403c:	bf38      	it	cc
d000403e:	461d      	movcc	r5, r3
d0004040:	0553      	lsls	r3, r2, #21
d0004042:	d531      	bpl.n	d00040a8 <__ssputs_r+0xa0>
d0004044:	4629      	mov	r1, r5
d0004046:	f7ff fae7 	bl	d0003618 <_malloc_r>
d000404a:	4606      	mov	r6, r0
d000404c:	b950      	cbnz	r0, d0004064 <__ssputs_r+0x5c>
d000404e:	230c      	movs	r3, #12
d0004050:	f8ca 3000 	str.w	r3, [sl]
d0004054:	89a3      	ldrh	r3, [r4, #12]
d0004056:	f043 0340 	orr.w	r3, r3, #64	; 0x40
d000405a:	81a3      	strh	r3, [r4, #12]
d000405c:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d0004060:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
d0004064:	6921      	ldr	r1, [r4, #16]
d0004066:	464a      	mov	r2, r9
d0004068:	f7ff fa60 	bl	d000352c <memcpy>
d000406c:	89a3      	ldrh	r3, [r4, #12]
d000406e:	f423 6390 	bic.w	r3, r3, #1152	; 0x480
d0004072:	f043 0380 	orr.w	r3, r3, #128	; 0x80
d0004076:	81a3      	strh	r3, [r4, #12]
d0004078:	6126      	str	r6, [r4, #16]
d000407a:	6165      	str	r5, [r4, #20]
d000407c:	444e      	add	r6, r9
d000407e:	eba5 0509 	sub.w	r5, r5, r9
d0004082:	6026      	str	r6, [r4, #0]
d0004084:	60a5      	str	r5, [r4, #8]
d0004086:	463e      	mov	r6, r7
d0004088:	42be      	cmp	r6, r7
d000408a:	d900      	bls.n	d000408e <__ssputs_r+0x86>
d000408c:	463e      	mov	r6, r7
d000408e:	4632      	mov	r2, r6
d0004090:	6820      	ldr	r0, [r4, #0]
d0004092:	4641      	mov	r1, r8
d0004094:	f000 fb7c 	bl	d0004790 <memmove>
d0004098:	68a3      	ldr	r3, [r4, #8]
d000409a:	6822      	ldr	r2, [r4, #0]
d000409c:	1b9b      	subs	r3, r3, r6
d000409e:	4432      	add	r2, r6
d00040a0:	60a3      	str	r3, [r4, #8]
d00040a2:	6022      	str	r2, [r4, #0]
d00040a4:	2000      	movs	r0, #0
d00040a6:	e7db      	b.n	d0004060 <__ssputs_r+0x58>
d00040a8:	462a      	mov	r2, r5
d00040aa:	f000 fb8b 	bl	d00047c4 <_realloc_r>
d00040ae:	4606      	mov	r6, r0
d00040b0:	2800      	cmp	r0, #0
d00040b2:	d1e1      	bne.n	d0004078 <__ssputs_r+0x70>
d00040b4:	6921      	ldr	r1, [r4, #16]
d00040b6:	4650      	mov	r0, sl
d00040b8:	f7ff fa5e 	bl	d0003578 <_free_r>
d00040bc:	e7c7      	b.n	d000404e <__ssputs_r+0x46>
	...

d00040c0 <_svfiprintf_r>:
d00040c0:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d00040c4:	4698      	mov	r8, r3
d00040c6:	898b      	ldrh	r3, [r1, #12]
d00040c8:	061b      	lsls	r3, r3, #24
d00040ca:	b09d      	sub	sp, #116	; 0x74
d00040cc:	4607      	mov	r7, r0
d00040ce:	460d      	mov	r5, r1
d00040d0:	4614      	mov	r4, r2
d00040d2:	d50e      	bpl.n	d00040f2 <_svfiprintf_r+0x32>
d00040d4:	690b      	ldr	r3, [r1, #16]
d00040d6:	b963      	cbnz	r3, d00040f2 <_svfiprintf_r+0x32>
d00040d8:	2140      	movs	r1, #64	; 0x40
d00040da:	f7ff fa9d 	bl	d0003618 <_malloc_r>
d00040de:	6028      	str	r0, [r5, #0]
d00040e0:	6128      	str	r0, [r5, #16]
d00040e2:	b920      	cbnz	r0, d00040ee <_svfiprintf_r+0x2e>
d00040e4:	230c      	movs	r3, #12
d00040e6:	603b      	str	r3, [r7, #0]
d00040e8:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d00040ec:	e0d1      	b.n	d0004292 <_svfiprintf_r+0x1d2>
d00040ee:	2340      	movs	r3, #64	; 0x40
d00040f0:	616b      	str	r3, [r5, #20]
d00040f2:	2300      	movs	r3, #0
d00040f4:	9309      	str	r3, [sp, #36]	; 0x24
d00040f6:	2320      	movs	r3, #32
d00040f8:	f88d 3029 	strb.w	r3, [sp, #41]	; 0x29
d00040fc:	f8cd 800c 	str.w	r8, [sp, #12]
d0004100:	2330      	movs	r3, #48	; 0x30
d0004102:	f8df 81a8 	ldr.w	r8, [pc, #424]	; d00042ac <_svfiprintf_r+0x1ec>
d0004106:	f88d 302a 	strb.w	r3, [sp, #42]	; 0x2a
d000410a:	f04f 0901 	mov.w	r9, #1
d000410e:	4623      	mov	r3, r4
d0004110:	469a      	mov	sl, r3
d0004112:	f813 2b01 	ldrb.w	r2, [r3], #1
d0004116:	b10a      	cbz	r2, d000411c <_svfiprintf_r+0x5c>
d0004118:	2a25      	cmp	r2, #37	; 0x25
d000411a:	d1f9      	bne.n	d0004110 <_svfiprintf_r+0x50>
d000411c:	ebba 0b04 	subs.w	fp, sl, r4
d0004120:	d00b      	beq.n	d000413a <_svfiprintf_r+0x7a>
d0004122:	465b      	mov	r3, fp
d0004124:	4622      	mov	r2, r4
d0004126:	4629      	mov	r1, r5
d0004128:	4638      	mov	r0, r7
d000412a:	f7ff ff6d 	bl	d0004008 <__ssputs_r>
d000412e:	3001      	adds	r0, #1
d0004130:	f000 80aa 	beq.w	d0004288 <_svfiprintf_r+0x1c8>
d0004134:	9a09      	ldr	r2, [sp, #36]	; 0x24
d0004136:	445a      	add	r2, fp
d0004138:	9209      	str	r2, [sp, #36]	; 0x24
d000413a:	f89a 3000 	ldrb.w	r3, [sl]
d000413e:	2b00      	cmp	r3, #0
d0004140:	f000 80a2 	beq.w	d0004288 <_svfiprintf_r+0x1c8>
d0004144:	2300      	movs	r3, #0
d0004146:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
d000414a:	e9cd 2305 	strd	r2, r3, [sp, #20]
d000414e:	f10a 0a01 	add.w	sl, sl, #1
d0004152:	9304      	str	r3, [sp, #16]
d0004154:	9307      	str	r3, [sp, #28]
d0004156:	f88d 3053 	strb.w	r3, [sp, #83]	; 0x53
d000415a:	931a      	str	r3, [sp, #104]	; 0x68
d000415c:	4654      	mov	r4, sl
d000415e:	2205      	movs	r2, #5
d0004160:	f814 1b01 	ldrb.w	r1, [r4], #1
d0004164:	4851      	ldr	r0, [pc, #324]	; (d00042ac <_svfiprintf_r+0x1ec>)
d0004166:	f000 fac3 	bl	d00046f0 <memchr>
d000416a:	9a04      	ldr	r2, [sp, #16]
d000416c:	b9d8      	cbnz	r0, d00041a6 <_svfiprintf_r+0xe6>
d000416e:	06d0      	lsls	r0, r2, #27
d0004170:	bf44      	itt	mi
d0004172:	2320      	movmi	r3, #32
d0004174:	f88d 3053 	strbmi.w	r3, [sp, #83]	; 0x53
d0004178:	0711      	lsls	r1, r2, #28
d000417a:	bf44      	itt	mi
d000417c:	232b      	movmi	r3, #43	; 0x2b
d000417e:	f88d 3053 	strbmi.w	r3, [sp, #83]	; 0x53
d0004182:	f89a 3000 	ldrb.w	r3, [sl]
d0004186:	2b2a      	cmp	r3, #42	; 0x2a
d0004188:	d015      	beq.n	d00041b6 <_svfiprintf_r+0xf6>
d000418a:	9a07      	ldr	r2, [sp, #28]
d000418c:	4654      	mov	r4, sl
d000418e:	2000      	movs	r0, #0
d0004190:	f04f 0c0a 	mov.w	ip, #10
d0004194:	4621      	mov	r1, r4
d0004196:	f811 3b01 	ldrb.w	r3, [r1], #1
d000419a:	3b30      	subs	r3, #48	; 0x30
d000419c:	2b09      	cmp	r3, #9
d000419e:	d94e      	bls.n	d000423e <_svfiprintf_r+0x17e>
d00041a0:	b1b0      	cbz	r0, d00041d0 <_svfiprintf_r+0x110>
d00041a2:	9207      	str	r2, [sp, #28]
d00041a4:	e014      	b.n	d00041d0 <_svfiprintf_r+0x110>
d00041a6:	eba0 0308 	sub.w	r3, r0, r8
d00041aa:	fa09 f303 	lsl.w	r3, r9, r3
d00041ae:	4313      	orrs	r3, r2
d00041b0:	9304      	str	r3, [sp, #16]
d00041b2:	46a2      	mov	sl, r4
d00041b4:	e7d2      	b.n	d000415c <_svfiprintf_r+0x9c>
d00041b6:	9b03      	ldr	r3, [sp, #12]
d00041b8:	1d19      	adds	r1, r3, #4
d00041ba:	681b      	ldr	r3, [r3, #0]
d00041bc:	9103      	str	r1, [sp, #12]
d00041be:	2b00      	cmp	r3, #0
d00041c0:	bfbb      	ittet	lt
d00041c2:	425b      	neglt	r3, r3
d00041c4:	f042 0202 	orrlt.w	r2, r2, #2
d00041c8:	9307      	strge	r3, [sp, #28]
d00041ca:	9307      	strlt	r3, [sp, #28]
d00041cc:	bfb8      	it	lt
d00041ce:	9204      	strlt	r2, [sp, #16]
d00041d0:	7823      	ldrb	r3, [r4, #0]
d00041d2:	2b2e      	cmp	r3, #46	; 0x2e
d00041d4:	d10c      	bne.n	d00041f0 <_svfiprintf_r+0x130>
d00041d6:	7863      	ldrb	r3, [r4, #1]
d00041d8:	2b2a      	cmp	r3, #42	; 0x2a
d00041da:	d135      	bne.n	d0004248 <_svfiprintf_r+0x188>
d00041dc:	9b03      	ldr	r3, [sp, #12]
d00041de:	1d1a      	adds	r2, r3, #4
d00041e0:	681b      	ldr	r3, [r3, #0]
d00041e2:	9203      	str	r2, [sp, #12]
d00041e4:	2b00      	cmp	r3, #0
d00041e6:	bfb8      	it	lt
d00041e8:	f04f 33ff 	movlt.w	r3, #4294967295	; 0xffffffff
d00041ec:	3402      	adds	r4, #2
d00041ee:	9305      	str	r3, [sp, #20]
d00041f0:	f8df a0c8 	ldr.w	sl, [pc, #200]	; d00042bc <_svfiprintf_r+0x1fc>
d00041f4:	7821      	ldrb	r1, [r4, #0]
d00041f6:	2203      	movs	r2, #3
d00041f8:	4650      	mov	r0, sl
d00041fa:	f000 fa79 	bl	d00046f0 <memchr>
d00041fe:	b140      	cbz	r0, d0004212 <_svfiprintf_r+0x152>
d0004200:	2340      	movs	r3, #64	; 0x40
d0004202:	eba0 000a 	sub.w	r0, r0, sl
d0004206:	fa03 f000 	lsl.w	r0, r3, r0
d000420a:	9b04      	ldr	r3, [sp, #16]
d000420c:	4303      	orrs	r3, r0
d000420e:	3401      	adds	r4, #1
d0004210:	9304      	str	r3, [sp, #16]
d0004212:	f814 1b01 	ldrb.w	r1, [r4], #1
d0004216:	4826      	ldr	r0, [pc, #152]	; (d00042b0 <_svfiprintf_r+0x1f0>)
d0004218:	f88d 1028 	strb.w	r1, [sp, #40]	; 0x28
d000421c:	2206      	movs	r2, #6
d000421e:	f000 fa67 	bl	d00046f0 <memchr>
d0004222:	2800      	cmp	r0, #0
d0004224:	d038      	beq.n	d0004298 <_svfiprintf_r+0x1d8>
d0004226:	4b23      	ldr	r3, [pc, #140]	; (d00042b4 <_svfiprintf_r+0x1f4>)
d0004228:	bb1b      	cbnz	r3, d0004272 <_svfiprintf_r+0x1b2>
d000422a:	9b03      	ldr	r3, [sp, #12]
d000422c:	3307      	adds	r3, #7
d000422e:	f023 0307 	bic.w	r3, r3, #7
d0004232:	3308      	adds	r3, #8
d0004234:	9303      	str	r3, [sp, #12]
d0004236:	9b09      	ldr	r3, [sp, #36]	; 0x24
d0004238:	4433      	add	r3, r6
d000423a:	9309      	str	r3, [sp, #36]	; 0x24
d000423c:	e767      	b.n	d000410e <_svfiprintf_r+0x4e>
d000423e:	fb0c 3202 	mla	r2, ip, r2, r3
d0004242:	460c      	mov	r4, r1
d0004244:	2001      	movs	r0, #1
d0004246:	e7a5      	b.n	d0004194 <_svfiprintf_r+0xd4>
d0004248:	2300      	movs	r3, #0
d000424a:	3401      	adds	r4, #1
d000424c:	9305      	str	r3, [sp, #20]
d000424e:	4619      	mov	r1, r3
d0004250:	f04f 0c0a 	mov.w	ip, #10
d0004254:	4620      	mov	r0, r4
d0004256:	f810 2b01 	ldrb.w	r2, [r0], #1
d000425a:	3a30      	subs	r2, #48	; 0x30
d000425c:	2a09      	cmp	r2, #9
d000425e:	d903      	bls.n	d0004268 <_svfiprintf_r+0x1a8>
d0004260:	2b00      	cmp	r3, #0
d0004262:	d0c5      	beq.n	d00041f0 <_svfiprintf_r+0x130>
d0004264:	9105      	str	r1, [sp, #20]
d0004266:	e7c3      	b.n	d00041f0 <_svfiprintf_r+0x130>
d0004268:	fb0c 2101 	mla	r1, ip, r1, r2
d000426c:	4604      	mov	r4, r0
d000426e:	2301      	movs	r3, #1
d0004270:	e7f0      	b.n	d0004254 <_svfiprintf_r+0x194>
d0004272:	ab03      	add	r3, sp, #12
d0004274:	9300      	str	r3, [sp, #0]
d0004276:	462a      	mov	r2, r5
d0004278:	4b0f      	ldr	r3, [pc, #60]	; (d00042b8 <_svfiprintf_r+0x1f8>)
d000427a:	a904      	add	r1, sp, #16
d000427c:	4638      	mov	r0, r7
d000427e:	f3af 8000 	nop.w
d0004282:	1c42      	adds	r2, r0, #1
d0004284:	4606      	mov	r6, r0
d0004286:	d1d6      	bne.n	d0004236 <_svfiprintf_r+0x176>
d0004288:	89ab      	ldrh	r3, [r5, #12]
d000428a:	065b      	lsls	r3, r3, #25
d000428c:	f53f af2c 	bmi.w	d00040e8 <_svfiprintf_r+0x28>
d0004290:	9809      	ldr	r0, [sp, #36]	; 0x24
d0004292:	b01d      	add	sp, #116	; 0x74
d0004294:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0004298:	ab03      	add	r3, sp, #12
d000429a:	9300      	str	r3, [sp, #0]
d000429c:	462a      	mov	r2, r5
d000429e:	4b06      	ldr	r3, [pc, #24]	; (d00042b8 <_svfiprintf_r+0x1f8>)
d00042a0:	a904      	add	r1, sp, #16
d00042a2:	4638      	mov	r0, r7
d00042a4:	f000 f87a 	bl	d000439c <_printf_i>
d00042a8:	e7eb      	b.n	d0004282 <_svfiprintf_r+0x1c2>
d00042aa:	bf00      	nop
d00042ac:	d0004cb8 	.word	0xd0004cb8
d00042b0:	d0004cc2 	.word	0xd0004cc2
d00042b4:	00000000 	.word	0x00000000
d00042b8:	d0004009 	.word	0xd0004009
d00042bc:	d0004cbe 	.word	0xd0004cbe

d00042c0 <_printf_common>:
d00042c0:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
d00042c4:	4616      	mov	r6, r2
d00042c6:	4699      	mov	r9, r3
d00042c8:	688a      	ldr	r2, [r1, #8]
d00042ca:	690b      	ldr	r3, [r1, #16]
d00042cc:	f8dd 8020 	ldr.w	r8, [sp, #32]
d00042d0:	4293      	cmp	r3, r2
d00042d2:	bfb8      	it	lt
d00042d4:	4613      	movlt	r3, r2
d00042d6:	6033      	str	r3, [r6, #0]
d00042d8:	f891 2043 	ldrb.w	r2, [r1, #67]	; 0x43
d00042dc:	4607      	mov	r7, r0
d00042de:	460c      	mov	r4, r1
d00042e0:	b10a      	cbz	r2, d00042e6 <_printf_common+0x26>
d00042e2:	3301      	adds	r3, #1
d00042e4:	6033      	str	r3, [r6, #0]
d00042e6:	6823      	ldr	r3, [r4, #0]
d00042e8:	0699      	lsls	r1, r3, #26
d00042ea:	bf42      	ittt	mi
d00042ec:	6833      	ldrmi	r3, [r6, #0]
d00042ee:	3302      	addmi	r3, #2
d00042f0:	6033      	strmi	r3, [r6, #0]
d00042f2:	6825      	ldr	r5, [r4, #0]
d00042f4:	f015 0506 	ands.w	r5, r5, #6
d00042f8:	d106      	bne.n	d0004308 <_printf_common+0x48>
d00042fa:	f104 0a19 	add.w	sl, r4, #25
d00042fe:	68e3      	ldr	r3, [r4, #12]
d0004300:	6832      	ldr	r2, [r6, #0]
d0004302:	1a9b      	subs	r3, r3, r2
d0004304:	42ab      	cmp	r3, r5
d0004306:	dc26      	bgt.n	d0004356 <_printf_common+0x96>
d0004308:	f894 2043 	ldrb.w	r2, [r4, #67]	; 0x43
d000430c:	1e13      	subs	r3, r2, #0
d000430e:	6822      	ldr	r2, [r4, #0]
d0004310:	bf18      	it	ne
d0004312:	2301      	movne	r3, #1
d0004314:	0692      	lsls	r2, r2, #26
d0004316:	d42b      	bmi.n	d0004370 <_printf_common+0xb0>
d0004318:	f104 0243 	add.w	r2, r4, #67	; 0x43
d000431c:	4649      	mov	r1, r9
d000431e:	4638      	mov	r0, r7
d0004320:	47c0      	blx	r8
d0004322:	3001      	adds	r0, #1
d0004324:	d01e      	beq.n	d0004364 <_printf_common+0xa4>
d0004326:	6823      	ldr	r3, [r4, #0]
d0004328:	68e5      	ldr	r5, [r4, #12]
d000432a:	6832      	ldr	r2, [r6, #0]
d000432c:	f003 0306 	and.w	r3, r3, #6
d0004330:	2b04      	cmp	r3, #4
d0004332:	bf08      	it	eq
d0004334:	1aad      	subeq	r5, r5, r2
d0004336:	68a3      	ldr	r3, [r4, #8]
d0004338:	6922      	ldr	r2, [r4, #16]
d000433a:	bf0c      	ite	eq
d000433c:	ea25 75e5 	biceq.w	r5, r5, r5, asr #31
d0004340:	2500      	movne	r5, #0
d0004342:	4293      	cmp	r3, r2
d0004344:	bfc4      	itt	gt
d0004346:	1a9b      	subgt	r3, r3, r2
d0004348:	18ed      	addgt	r5, r5, r3
d000434a:	2600      	movs	r6, #0
d000434c:	341a      	adds	r4, #26
d000434e:	42b5      	cmp	r5, r6
d0004350:	d11a      	bne.n	d0004388 <_printf_common+0xc8>
d0004352:	2000      	movs	r0, #0
d0004354:	e008      	b.n	d0004368 <_printf_common+0xa8>
d0004356:	2301      	movs	r3, #1
d0004358:	4652      	mov	r2, sl
d000435a:	4649      	mov	r1, r9
d000435c:	4638      	mov	r0, r7
d000435e:	47c0      	blx	r8
d0004360:	3001      	adds	r0, #1
d0004362:	d103      	bne.n	d000436c <_printf_common+0xac>
d0004364:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d0004368:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
d000436c:	3501      	adds	r5, #1
d000436e:	e7c6      	b.n	d00042fe <_printf_common+0x3e>
d0004370:	18e1      	adds	r1, r4, r3
d0004372:	1c5a      	adds	r2, r3, #1
d0004374:	2030      	movs	r0, #48	; 0x30
d0004376:	f881 0043 	strb.w	r0, [r1, #67]	; 0x43
d000437a:	4422      	add	r2, r4
d000437c:	f894 1045 	ldrb.w	r1, [r4, #69]	; 0x45
d0004380:	f882 1043 	strb.w	r1, [r2, #67]	; 0x43
d0004384:	3302      	adds	r3, #2
d0004386:	e7c7      	b.n	d0004318 <_printf_common+0x58>
d0004388:	2301      	movs	r3, #1
d000438a:	4622      	mov	r2, r4
d000438c:	4649      	mov	r1, r9
d000438e:	4638      	mov	r0, r7
d0004390:	47c0      	blx	r8
d0004392:	3001      	adds	r0, #1
d0004394:	d0e6      	beq.n	d0004364 <_printf_common+0xa4>
d0004396:	3601      	adds	r6, #1
d0004398:	e7d9      	b.n	d000434e <_printf_common+0x8e>
	...

d000439c <_printf_i>:
d000439c:	e92d 47ff 	stmdb	sp!, {r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, lr}
d00043a0:	460c      	mov	r4, r1
d00043a2:	4691      	mov	r9, r2
d00043a4:	7e27      	ldrb	r7, [r4, #24]
d00043a6:	990c      	ldr	r1, [sp, #48]	; 0x30
d00043a8:	2f78      	cmp	r7, #120	; 0x78
d00043aa:	4680      	mov	r8, r0
d00043ac:	469a      	mov	sl, r3
d00043ae:	f104 0243 	add.w	r2, r4, #67	; 0x43
d00043b2:	d807      	bhi.n	d00043c4 <_printf_i+0x28>
d00043b4:	2f62      	cmp	r7, #98	; 0x62
d00043b6:	d80a      	bhi.n	d00043ce <_printf_i+0x32>
d00043b8:	2f00      	cmp	r7, #0
d00043ba:	f000 80d8 	beq.w	d000456e <_printf_i+0x1d2>
d00043be:	2f58      	cmp	r7, #88	; 0x58
d00043c0:	f000 80a3 	beq.w	d000450a <_printf_i+0x16e>
d00043c4:	f104 0642 	add.w	r6, r4, #66	; 0x42
d00043c8:	f884 7042 	strb.w	r7, [r4, #66]	; 0x42
d00043cc:	e03a      	b.n	d0004444 <_printf_i+0xa8>
d00043ce:	f1a7 0363 	sub.w	r3, r7, #99	; 0x63
d00043d2:	2b15      	cmp	r3, #21
d00043d4:	d8f6      	bhi.n	d00043c4 <_printf_i+0x28>
d00043d6:	a001      	add	r0, pc, #4	; (adr r0, d00043dc <_printf_i+0x40>)
d00043d8:	f850 f023 	ldr.w	pc, [r0, r3, lsl #2]
d00043dc:	d0004435 	.word	0xd0004435
d00043e0:	d0004449 	.word	0xd0004449
d00043e4:	d00043c5 	.word	0xd00043c5
d00043e8:	d00043c5 	.word	0xd00043c5
d00043ec:	d00043c5 	.word	0xd00043c5
d00043f0:	d00043c5 	.word	0xd00043c5
d00043f4:	d0004449 	.word	0xd0004449
d00043f8:	d00043c5 	.word	0xd00043c5
d00043fc:	d00043c5 	.word	0xd00043c5
d0004400:	d00043c5 	.word	0xd00043c5
d0004404:	d00043c5 	.word	0xd00043c5
d0004408:	d0004555 	.word	0xd0004555
d000440c:	d0004479 	.word	0xd0004479
d0004410:	d0004537 	.word	0xd0004537
d0004414:	d00043c5 	.word	0xd00043c5
d0004418:	d00043c5 	.word	0xd00043c5
d000441c:	d0004577 	.word	0xd0004577
d0004420:	d00043c5 	.word	0xd00043c5
d0004424:	d0004479 	.word	0xd0004479
d0004428:	d00043c5 	.word	0xd00043c5
d000442c:	d00043c5 	.word	0xd00043c5
d0004430:	d000453f 	.word	0xd000453f
d0004434:	680b      	ldr	r3, [r1, #0]
d0004436:	1d1a      	adds	r2, r3, #4
d0004438:	681b      	ldr	r3, [r3, #0]
d000443a:	600a      	str	r2, [r1, #0]
d000443c:	f104 0642 	add.w	r6, r4, #66	; 0x42
d0004440:	f884 3042 	strb.w	r3, [r4, #66]	; 0x42
d0004444:	2301      	movs	r3, #1
d0004446:	e0a3      	b.n	d0004590 <_printf_i+0x1f4>
d0004448:	6825      	ldr	r5, [r4, #0]
d000444a:	6808      	ldr	r0, [r1, #0]
d000444c:	062e      	lsls	r6, r5, #24
d000444e:	f100 0304 	add.w	r3, r0, #4
d0004452:	d50a      	bpl.n	d000446a <_printf_i+0xce>
d0004454:	6805      	ldr	r5, [r0, #0]
d0004456:	600b      	str	r3, [r1, #0]
d0004458:	2d00      	cmp	r5, #0
d000445a:	da03      	bge.n	d0004464 <_printf_i+0xc8>
d000445c:	232d      	movs	r3, #45	; 0x2d
d000445e:	426d      	negs	r5, r5
d0004460:	f884 3043 	strb.w	r3, [r4, #67]	; 0x43
d0004464:	485e      	ldr	r0, [pc, #376]	; (d00045e0 <_printf_i+0x244>)
d0004466:	230a      	movs	r3, #10
d0004468:	e019      	b.n	d000449e <_printf_i+0x102>
d000446a:	f015 0f40 	tst.w	r5, #64	; 0x40
d000446e:	6805      	ldr	r5, [r0, #0]
d0004470:	600b      	str	r3, [r1, #0]
d0004472:	bf18      	it	ne
d0004474:	b22d      	sxthne	r5, r5
d0004476:	e7ef      	b.n	d0004458 <_printf_i+0xbc>
d0004478:	680b      	ldr	r3, [r1, #0]
d000447a:	6825      	ldr	r5, [r4, #0]
d000447c:	1d18      	adds	r0, r3, #4
d000447e:	6008      	str	r0, [r1, #0]
d0004480:	0628      	lsls	r0, r5, #24
d0004482:	d501      	bpl.n	d0004488 <_printf_i+0xec>
d0004484:	681d      	ldr	r5, [r3, #0]
d0004486:	e002      	b.n	d000448e <_printf_i+0xf2>
d0004488:	0669      	lsls	r1, r5, #25
d000448a:	d5fb      	bpl.n	d0004484 <_printf_i+0xe8>
d000448c:	881d      	ldrh	r5, [r3, #0]
d000448e:	4854      	ldr	r0, [pc, #336]	; (d00045e0 <_printf_i+0x244>)
d0004490:	2f6f      	cmp	r7, #111	; 0x6f
d0004492:	bf0c      	ite	eq
d0004494:	2308      	moveq	r3, #8
d0004496:	230a      	movne	r3, #10
d0004498:	2100      	movs	r1, #0
d000449a:	f884 1043 	strb.w	r1, [r4, #67]	; 0x43
d000449e:	6866      	ldr	r6, [r4, #4]
d00044a0:	60a6      	str	r6, [r4, #8]
d00044a2:	2e00      	cmp	r6, #0
d00044a4:	bfa2      	ittt	ge
d00044a6:	6821      	ldrge	r1, [r4, #0]
d00044a8:	f021 0104 	bicge.w	r1, r1, #4
d00044ac:	6021      	strge	r1, [r4, #0]
d00044ae:	b90d      	cbnz	r5, d00044b4 <_printf_i+0x118>
d00044b0:	2e00      	cmp	r6, #0
d00044b2:	d04d      	beq.n	d0004550 <_printf_i+0x1b4>
d00044b4:	4616      	mov	r6, r2
d00044b6:	fbb5 f1f3 	udiv	r1, r5, r3
d00044ba:	fb03 5711 	mls	r7, r3, r1, r5
d00044be:	5dc7      	ldrb	r7, [r0, r7]
d00044c0:	f806 7d01 	strb.w	r7, [r6, #-1]!
d00044c4:	462f      	mov	r7, r5
d00044c6:	42bb      	cmp	r3, r7
d00044c8:	460d      	mov	r5, r1
d00044ca:	d9f4      	bls.n	d00044b6 <_printf_i+0x11a>
d00044cc:	2b08      	cmp	r3, #8
d00044ce:	d10b      	bne.n	d00044e8 <_printf_i+0x14c>
d00044d0:	6823      	ldr	r3, [r4, #0]
d00044d2:	07df      	lsls	r7, r3, #31
d00044d4:	d508      	bpl.n	d00044e8 <_printf_i+0x14c>
d00044d6:	6923      	ldr	r3, [r4, #16]
d00044d8:	6861      	ldr	r1, [r4, #4]
d00044da:	4299      	cmp	r1, r3
d00044dc:	bfde      	ittt	le
d00044de:	2330      	movle	r3, #48	; 0x30
d00044e0:	f806 3c01 	strble.w	r3, [r6, #-1]
d00044e4:	f106 36ff 	addle.w	r6, r6, #4294967295	; 0xffffffff
d00044e8:	1b92      	subs	r2, r2, r6
d00044ea:	6122      	str	r2, [r4, #16]
d00044ec:	f8cd a000 	str.w	sl, [sp]
d00044f0:	464b      	mov	r3, r9
d00044f2:	aa03      	add	r2, sp, #12
d00044f4:	4621      	mov	r1, r4
d00044f6:	4640      	mov	r0, r8
d00044f8:	f7ff fee2 	bl	d00042c0 <_printf_common>
d00044fc:	3001      	adds	r0, #1
d00044fe:	d14c      	bne.n	d000459a <_printf_i+0x1fe>
d0004500:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d0004504:	b004      	add	sp, #16
d0004506:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
d000450a:	4835      	ldr	r0, [pc, #212]	; (d00045e0 <_printf_i+0x244>)
d000450c:	f884 7045 	strb.w	r7, [r4, #69]	; 0x45
d0004510:	6823      	ldr	r3, [r4, #0]
d0004512:	680e      	ldr	r6, [r1, #0]
d0004514:	061f      	lsls	r7, r3, #24
d0004516:	f856 5b04 	ldr.w	r5, [r6], #4
d000451a:	600e      	str	r6, [r1, #0]
d000451c:	d514      	bpl.n	d0004548 <_printf_i+0x1ac>
d000451e:	07d9      	lsls	r1, r3, #31
d0004520:	bf44      	itt	mi
d0004522:	f043 0320 	orrmi.w	r3, r3, #32
d0004526:	6023      	strmi	r3, [r4, #0]
d0004528:	b91d      	cbnz	r5, d0004532 <_printf_i+0x196>
d000452a:	6823      	ldr	r3, [r4, #0]
d000452c:	f023 0320 	bic.w	r3, r3, #32
d0004530:	6023      	str	r3, [r4, #0]
d0004532:	2310      	movs	r3, #16
d0004534:	e7b0      	b.n	d0004498 <_printf_i+0xfc>
d0004536:	6823      	ldr	r3, [r4, #0]
d0004538:	f043 0320 	orr.w	r3, r3, #32
d000453c:	6023      	str	r3, [r4, #0]
d000453e:	2378      	movs	r3, #120	; 0x78
d0004540:	4828      	ldr	r0, [pc, #160]	; (d00045e4 <_printf_i+0x248>)
d0004542:	f884 3045 	strb.w	r3, [r4, #69]	; 0x45
d0004546:	e7e3      	b.n	d0004510 <_printf_i+0x174>
d0004548:	065e      	lsls	r6, r3, #25
d000454a:	bf48      	it	mi
d000454c:	b2ad      	uxthmi	r5, r5
d000454e:	e7e6      	b.n	d000451e <_printf_i+0x182>
d0004550:	4616      	mov	r6, r2
d0004552:	e7bb      	b.n	d00044cc <_printf_i+0x130>
d0004554:	680b      	ldr	r3, [r1, #0]
d0004556:	6826      	ldr	r6, [r4, #0]
d0004558:	6960      	ldr	r0, [r4, #20]
d000455a:	1d1d      	adds	r5, r3, #4
d000455c:	600d      	str	r5, [r1, #0]
d000455e:	0635      	lsls	r5, r6, #24
d0004560:	681b      	ldr	r3, [r3, #0]
d0004562:	d501      	bpl.n	d0004568 <_printf_i+0x1cc>
d0004564:	6018      	str	r0, [r3, #0]
d0004566:	e002      	b.n	d000456e <_printf_i+0x1d2>
d0004568:	0671      	lsls	r1, r6, #25
d000456a:	d5fb      	bpl.n	d0004564 <_printf_i+0x1c8>
d000456c:	8018      	strh	r0, [r3, #0]
d000456e:	2300      	movs	r3, #0
d0004570:	6123      	str	r3, [r4, #16]
d0004572:	4616      	mov	r6, r2
d0004574:	e7ba      	b.n	d00044ec <_printf_i+0x150>
d0004576:	680b      	ldr	r3, [r1, #0]
d0004578:	1d1a      	adds	r2, r3, #4
d000457a:	600a      	str	r2, [r1, #0]
d000457c:	681e      	ldr	r6, [r3, #0]
d000457e:	6862      	ldr	r2, [r4, #4]
d0004580:	2100      	movs	r1, #0
d0004582:	4630      	mov	r0, r6
d0004584:	f000 f8b4 	bl	d00046f0 <memchr>
d0004588:	b108      	cbz	r0, d000458e <_printf_i+0x1f2>
d000458a:	1b80      	subs	r0, r0, r6
d000458c:	6060      	str	r0, [r4, #4]
d000458e:	6863      	ldr	r3, [r4, #4]
d0004590:	6123      	str	r3, [r4, #16]
d0004592:	2300      	movs	r3, #0
d0004594:	f884 3043 	strb.w	r3, [r4, #67]	; 0x43
d0004598:	e7a8      	b.n	d00044ec <_printf_i+0x150>
d000459a:	6923      	ldr	r3, [r4, #16]
d000459c:	4632      	mov	r2, r6
d000459e:	4649      	mov	r1, r9
d00045a0:	4640      	mov	r0, r8
d00045a2:	47d0      	blx	sl
d00045a4:	3001      	adds	r0, #1
d00045a6:	d0ab      	beq.n	d0004500 <_printf_i+0x164>
d00045a8:	6823      	ldr	r3, [r4, #0]
d00045aa:	079b      	lsls	r3, r3, #30
d00045ac:	d413      	bmi.n	d00045d6 <_printf_i+0x23a>
d00045ae:	68e0      	ldr	r0, [r4, #12]
d00045b0:	9b03      	ldr	r3, [sp, #12]
d00045b2:	4298      	cmp	r0, r3
d00045b4:	bfb8      	it	lt
d00045b6:	4618      	movlt	r0, r3
d00045b8:	e7a4      	b.n	d0004504 <_printf_i+0x168>
d00045ba:	2301      	movs	r3, #1
d00045bc:	4632      	mov	r2, r6
d00045be:	4649      	mov	r1, r9
d00045c0:	4640      	mov	r0, r8
d00045c2:	47d0      	blx	sl
d00045c4:	3001      	adds	r0, #1
d00045c6:	d09b      	beq.n	d0004500 <_printf_i+0x164>
d00045c8:	3501      	adds	r5, #1
d00045ca:	68e3      	ldr	r3, [r4, #12]
d00045cc:	9903      	ldr	r1, [sp, #12]
d00045ce:	1a5b      	subs	r3, r3, r1
d00045d0:	42ab      	cmp	r3, r5
d00045d2:	dcf2      	bgt.n	d00045ba <_printf_i+0x21e>
d00045d4:	e7eb      	b.n	d00045ae <_printf_i+0x212>
d00045d6:	2500      	movs	r5, #0
d00045d8:	f104 0619 	add.w	r6, r4, #25
d00045dc:	e7f5      	b.n	d00045ca <_printf_i+0x22e>
d00045de:	bf00      	nop
d00045e0:	d0004cc9 	.word	0xd0004cc9
d00045e4:	d0004cda 	.word	0xd0004cda

d00045e8 <__sread>:
d00045e8:	b510      	push	{r4, lr}
d00045ea:	460c      	mov	r4, r1
d00045ec:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d00045f0:	f000 f90e 	bl	d0004810 <_read_r>
d00045f4:	2800      	cmp	r0, #0
d00045f6:	bfab      	itete	ge
d00045f8:	6d63      	ldrge	r3, [r4, #84]	; 0x54
d00045fa:	89a3      	ldrhlt	r3, [r4, #12]
d00045fc:	181b      	addge	r3, r3, r0
d00045fe:	f423 5380 	biclt.w	r3, r3, #4096	; 0x1000
d0004602:	bfac      	ite	ge
d0004604:	6563      	strge	r3, [r4, #84]	; 0x54
d0004606:	81a3      	strhlt	r3, [r4, #12]
d0004608:	bd10      	pop	{r4, pc}

d000460a <__swrite>:
d000460a:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
d000460e:	461f      	mov	r7, r3
d0004610:	898b      	ldrh	r3, [r1, #12]
d0004612:	05db      	lsls	r3, r3, #23
d0004614:	4605      	mov	r5, r0
d0004616:	460c      	mov	r4, r1
d0004618:	4616      	mov	r6, r2
d000461a:	d505      	bpl.n	d0004628 <__swrite+0x1e>
d000461c:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d0004620:	2302      	movs	r3, #2
d0004622:	2200      	movs	r2, #0
d0004624:	f000 f852 	bl	d00046cc <_lseek_r>
d0004628:	89a3      	ldrh	r3, [r4, #12]
d000462a:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
d000462e:	f423 5380 	bic.w	r3, r3, #4096	; 0x1000
d0004632:	81a3      	strh	r3, [r4, #12]
d0004634:	4632      	mov	r2, r6
d0004636:	463b      	mov	r3, r7
d0004638:	4628      	mov	r0, r5
d000463a:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
d000463e:	f7fc bd17 	b.w	d0001070 <_write_r>

d0004642 <__sseek>:
d0004642:	b510      	push	{r4, lr}
d0004644:	460c      	mov	r4, r1
d0004646:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d000464a:	f000 f83f 	bl	d00046cc <_lseek_r>
d000464e:	1c43      	adds	r3, r0, #1
d0004650:	89a3      	ldrh	r3, [r4, #12]
d0004652:	bf15      	itete	ne
d0004654:	6560      	strne	r0, [r4, #84]	; 0x54
d0004656:	f423 5380 	biceq.w	r3, r3, #4096	; 0x1000
d000465a:	f443 5380 	orrne.w	r3, r3, #4096	; 0x1000
d000465e:	81a3      	strheq	r3, [r4, #12]
d0004660:	bf18      	it	ne
d0004662:	81a3      	strhne	r3, [r4, #12]
d0004664:	bd10      	pop	{r4, pc}

d0004666 <__sclose>:
d0004666:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d000466a:	f000 b80d 	b.w	d0004688 <_close_r>

d000466e <strchr>:
d000466e:	b2c9      	uxtb	r1, r1
d0004670:	4603      	mov	r3, r0
d0004672:	f810 2b01 	ldrb.w	r2, [r0], #1
d0004676:	b11a      	cbz	r2, d0004680 <strchr+0x12>
d0004678:	428a      	cmp	r2, r1
d000467a:	d1f9      	bne.n	d0004670 <strchr+0x2>
d000467c:	4618      	mov	r0, r3
d000467e:	4770      	bx	lr
d0004680:	2900      	cmp	r1, #0
d0004682:	bf18      	it	ne
d0004684:	2300      	movne	r3, #0
d0004686:	e7f9      	b.n	d000467c <strchr+0xe>

d0004688 <_close_r>:
d0004688:	b538      	push	{r3, r4, r5, lr}
d000468a:	4d06      	ldr	r5, [pc, #24]	; (d00046a4 <_close_r+0x1c>)
d000468c:	2300      	movs	r3, #0
d000468e:	4604      	mov	r4, r0
d0004690:	4608      	mov	r0, r1
d0004692:	602b      	str	r3, [r5, #0]
d0004694:	f7fc fd26 	bl	d00010e4 <_close>
d0004698:	1c43      	adds	r3, r0, #1
d000469a:	d102      	bne.n	d00046a2 <_close_r+0x1a>
d000469c:	682b      	ldr	r3, [r5, #0]
d000469e:	b103      	cbz	r3, d00046a2 <_close_r+0x1a>
d00046a0:	6023      	str	r3, [r4, #0]
d00046a2:	bd38      	pop	{r3, r4, r5, pc}
d00046a4:	d0006a90 	.word	0xd0006a90

d00046a8 <_fstat_r>:
d00046a8:	b538      	push	{r3, r4, r5, lr}
d00046aa:	4d07      	ldr	r5, [pc, #28]	; (d00046c8 <_fstat_r+0x20>)
d00046ac:	2300      	movs	r3, #0
d00046ae:	4604      	mov	r4, r0
d00046b0:	4608      	mov	r0, r1
d00046b2:	4611      	mov	r1, r2
d00046b4:	602b      	str	r3, [r5, #0]
d00046b6:	f7fc fd19 	bl	d00010ec <_fstat>
d00046ba:	1c43      	adds	r3, r0, #1
d00046bc:	d102      	bne.n	d00046c4 <_fstat_r+0x1c>
d00046be:	682b      	ldr	r3, [r5, #0]
d00046c0:	b103      	cbz	r3, d00046c4 <_fstat_r+0x1c>
d00046c2:	6023      	str	r3, [r4, #0]
d00046c4:	bd38      	pop	{r3, r4, r5, pc}
d00046c6:	bf00      	nop
d00046c8:	d0006a90 	.word	0xd0006a90

d00046cc <_lseek_r>:
d00046cc:	b538      	push	{r3, r4, r5, lr}
d00046ce:	4d07      	ldr	r5, [pc, #28]	; (d00046ec <_lseek_r+0x20>)
d00046d0:	4604      	mov	r4, r0
d00046d2:	4608      	mov	r0, r1
d00046d4:	4611      	mov	r1, r2
d00046d6:	2200      	movs	r2, #0
d00046d8:	602a      	str	r2, [r5, #0]
d00046da:	461a      	mov	r2, r3
d00046dc:	f7fc fd0c 	bl	d00010f8 <_lseek>
d00046e0:	1c43      	adds	r3, r0, #1
d00046e2:	d102      	bne.n	d00046ea <_lseek_r+0x1e>
d00046e4:	682b      	ldr	r3, [r5, #0]
d00046e6:	b103      	cbz	r3, d00046ea <_lseek_r+0x1e>
d00046e8:	6023      	str	r3, [r4, #0]
d00046ea:	bd38      	pop	{r3, r4, r5, pc}
d00046ec:	d0006a90 	.word	0xd0006a90

d00046f0 <memchr>:
d00046f0:	f001 01ff 	and.w	r1, r1, #255	; 0xff
d00046f4:	2a10      	cmp	r2, #16
d00046f6:	db2b      	blt.n	d0004750 <memchr+0x60>
d00046f8:	f010 0f07 	tst.w	r0, #7
d00046fc:	d008      	beq.n	d0004710 <memchr+0x20>
d00046fe:	f810 3b01 	ldrb.w	r3, [r0], #1
d0004702:	3a01      	subs	r2, #1
d0004704:	428b      	cmp	r3, r1
d0004706:	d02d      	beq.n	d0004764 <memchr+0x74>
d0004708:	f010 0f07 	tst.w	r0, #7
d000470c:	b342      	cbz	r2, d0004760 <memchr+0x70>
d000470e:	d1f6      	bne.n	d00046fe <memchr+0xe>
d0004710:	b4f0      	push	{r4, r5, r6, r7}
d0004712:	ea41 2101 	orr.w	r1, r1, r1, lsl #8
d0004716:	ea41 4101 	orr.w	r1, r1, r1, lsl #16
d000471a:	f022 0407 	bic.w	r4, r2, #7
d000471e:	f07f 0700 	mvns.w	r7, #0
d0004722:	2300      	movs	r3, #0
d0004724:	e8f0 5602 	ldrd	r5, r6, [r0], #8
d0004728:	3c08      	subs	r4, #8
d000472a:	ea85 0501 	eor.w	r5, r5, r1
d000472e:	ea86 0601 	eor.w	r6, r6, r1
d0004732:	fa85 f547 	uadd8	r5, r5, r7
d0004736:	faa3 f587 	sel	r5, r3, r7
d000473a:	fa86 f647 	uadd8	r6, r6, r7
d000473e:	faa5 f687 	sel	r6, r5, r7
d0004742:	b98e      	cbnz	r6, d0004768 <memchr+0x78>
d0004744:	d1ee      	bne.n	d0004724 <memchr+0x34>
d0004746:	bcf0      	pop	{r4, r5, r6, r7}
d0004748:	f001 01ff 	and.w	r1, r1, #255	; 0xff
d000474c:	f002 0207 	and.w	r2, r2, #7
d0004750:	b132      	cbz	r2, d0004760 <memchr+0x70>
d0004752:	f810 3b01 	ldrb.w	r3, [r0], #1
d0004756:	3a01      	subs	r2, #1
d0004758:	ea83 0301 	eor.w	r3, r3, r1
d000475c:	b113      	cbz	r3, d0004764 <memchr+0x74>
d000475e:	d1f8      	bne.n	d0004752 <memchr+0x62>
d0004760:	2000      	movs	r0, #0
d0004762:	4770      	bx	lr
d0004764:	3801      	subs	r0, #1
d0004766:	4770      	bx	lr
d0004768:	2d00      	cmp	r5, #0
d000476a:	bf06      	itte	eq
d000476c:	4635      	moveq	r5, r6
d000476e:	3803      	subeq	r0, #3
d0004770:	3807      	subne	r0, #7
d0004772:	f015 0f01 	tst.w	r5, #1
d0004776:	d107      	bne.n	d0004788 <memchr+0x98>
d0004778:	3001      	adds	r0, #1
d000477a:	f415 7f80 	tst.w	r5, #256	; 0x100
d000477e:	bf02      	ittt	eq
d0004780:	3001      	addeq	r0, #1
d0004782:	f415 3fc0 	tsteq.w	r5, #98304	; 0x18000
d0004786:	3001      	addeq	r0, #1
d0004788:	bcf0      	pop	{r4, r5, r6, r7}
d000478a:	3801      	subs	r0, #1
d000478c:	4770      	bx	lr
d000478e:	bf00      	nop

d0004790 <memmove>:
d0004790:	4288      	cmp	r0, r1
d0004792:	b510      	push	{r4, lr}
d0004794:	eb01 0402 	add.w	r4, r1, r2
d0004798:	d902      	bls.n	d00047a0 <memmove+0x10>
d000479a:	4284      	cmp	r4, r0
d000479c:	4623      	mov	r3, r4
d000479e:	d807      	bhi.n	d00047b0 <memmove+0x20>
d00047a0:	1e43      	subs	r3, r0, #1
d00047a2:	42a1      	cmp	r1, r4
d00047a4:	d008      	beq.n	d00047b8 <memmove+0x28>
d00047a6:	f811 2b01 	ldrb.w	r2, [r1], #1
d00047aa:	f803 2f01 	strb.w	r2, [r3, #1]!
d00047ae:	e7f8      	b.n	d00047a2 <memmove+0x12>
d00047b0:	4402      	add	r2, r0
d00047b2:	4601      	mov	r1, r0
d00047b4:	428a      	cmp	r2, r1
d00047b6:	d100      	bne.n	d00047ba <memmove+0x2a>
d00047b8:	bd10      	pop	{r4, pc}
d00047ba:	f813 4d01 	ldrb.w	r4, [r3, #-1]!
d00047be:	f802 4d01 	strb.w	r4, [r2, #-1]!
d00047c2:	e7f7      	b.n	d00047b4 <memmove+0x24>

d00047c4 <_realloc_r>:
d00047c4:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d00047c6:	4607      	mov	r7, r0
d00047c8:	4614      	mov	r4, r2
d00047ca:	460e      	mov	r6, r1
d00047cc:	b921      	cbnz	r1, d00047d8 <_realloc_r+0x14>
d00047ce:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
d00047d2:	4611      	mov	r1, r2
d00047d4:	f7fe bf20 	b.w	d0003618 <_malloc_r>
d00047d8:	b922      	cbnz	r2, d00047e4 <_realloc_r+0x20>
d00047da:	f7fe fecd 	bl	d0003578 <_free_r>
d00047de:	4625      	mov	r5, r4
d00047e0:	4628      	mov	r0, r5
d00047e2:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d00047e4:	f000 f826 	bl	d0004834 <_malloc_usable_size_r>
d00047e8:	42a0      	cmp	r0, r4
d00047ea:	d20f      	bcs.n	d000480c <_realloc_r+0x48>
d00047ec:	4621      	mov	r1, r4
d00047ee:	4638      	mov	r0, r7
d00047f0:	f7fe ff12 	bl	d0003618 <_malloc_r>
d00047f4:	4605      	mov	r5, r0
d00047f6:	2800      	cmp	r0, #0
d00047f8:	d0f2      	beq.n	d00047e0 <_realloc_r+0x1c>
d00047fa:	4631      	mov	r1, r6
d00047fc:	4622      	mov	r2, r4
d00047fe:	f7fe fe95 	bl	d000352c <memcpy>
d0004802:	4631      	mov	r1, r6
d0004804:	4638      	mov	r0, r7
d0004806:	f7fe feb7 	bl	d0003578 <_free_r>
d000480a:	e7e9      	b.n	d00047e0 <_realloc_r+0x1c>
d000480c:	4635      	mov	r5, r6
d000480e:	e7e7      	b.n	d00047e0 <_realloc_r+0x1c>

d0004810 <_read_r>:
d0004810:	b538      	push	{r3, r4, r5, lr}
d0004812:	4d07      	ldr	r5, [pc, #28]	; (d0004830 <_read_r+0x20>)
d0004814:	4604      	mov	r4, r0
d0004816:	4608      	mov	r0, r1
d0004818:	4611      	mov	r1, r2
d000481a:	2200      	movs	r2, #0
d000481c:	602a      	str	r2, [r5, #0]
d000481e:	461a      	mov	r2, r3
d0004820:	f7fc fc56 	bl	d00010d0 <_read>
d0004824:	1c43      	adds	r3, r0, #1
d0004826:	d102      	bne.n	d000482e <_read_r+0x1e>
d0004828:	682b      	ldr	r3, [r5, #0]
d000482a:	b103      	cbz	r3, d000482e <_read_r+0x1e>
d000482c:	6023      	str	r3, [r4, #0]
d000482e:	bd38      	pop	{r3, r4, r5, pc}
d0004830:	d0006a90 	.word	0xd0006a90

d0004834 <_malloc_usable_size_r>:
d0004834:	f851 3c04 	ldr.w	r3, [r1, #-4]
d0004838:	1f18      	subs	r0, r3, #4
d000483a:	2b00      	cmp	r3, #0
d000483c:	bfbc      	itt	lt
d000483e:	580b      	ldrlt	r3, [r1, r0]
d0004840:	18c0      	addlt	r0, r0, r3
d0004842:	4770      	bx	lr
d0004844:	0000000a 	.word	0x0000000a
d0004848:	20746f4e 	.word	0x20746f4e
d000484c:	756f6e65 	.word	0x756f6e65
d0004850:	6d206867 	.word	0x6d206867
d0004854:	726f6d65 	.word	0x726f6d65
d0004858:	6f662079 	.word	0x6f662079
d000485c:	75712072 	.word	0x75712072
d0004860:	69746e61 	.word	0x69746e61
d0004864:	0072657a 	.word	0x0072657a
d0004868:	67616d49 	.word	0x67616d49
d000486c:	61682065 	.word	0x61682065
d0004870:	6f6e2064 	.word	0x6f6e2064
d0004874:	78697020 	.word	0x78697020
d0004878:	00736c65 	.word	0x00736c65
d000487c:	20746f4e 	.word	0x20746f4e
d0004880:	756f6e65 	.word	0x756f6e65
d0004884:	6d206867 	.word	0x6d206867
d0004888:	726f6d65 	.word	0x726f6d65
d000488c:	6f662079 	.word	0x6f662079
d0004890:	6e692072 	.word	0x6e692072
d0004894:	65786564 	.word	0x65786564
d0004898:	6d692064 	.word	0x6d692064
d000489c:	00656761 	.word	0x00656761
d00048a0:	67616d49 	.word	0x67616d49
d00048a4:	69562065 	.word	0x69562065
d00048a8:	72657765 	.word	0x72657765
d00048ac:	00000000 	.word	0x00000000
d00048b0:	6e75614c 	.word	0x6e75614c
d00048b4:	77206863 	.word	0x77206863
d00048b8:	20687469 	.word	0x20687469
d00048bc:	622e2061 	.word	0x622e2061
d00048c0:	202c706d 	.word	0x202c706d
d00048c4:	6666692e 	.word	0x6666692e
d00048c8:	692e202c 	.word	0x692e202c
d00048cc:	206d626c 	.word	0x206d626c
d00048d0:	2e20726f 	.word	0x2e20726f
d00048d4:	206d626c 	.word	0x206d626c
d00048d8:	656c6966 	.word	0x656c6966
d00048dc:	0000002e 	.word	0x0000002e
d00048e0:	6e65704f 	.word	0x6e65704f
d00048e4:	69616620 	.word	0x69616620
d00048e8:	2064656c 	.word	0x2064656c
d00048ec:	25205246 	.word	0x25205246
d00048f0:	25203a75 	.word	0x25203a75
d00048f4:	00000073 	.word	0x00000073
d00048f8:	656c6946 	.word	0x656c6946
d00048fc:	20736920 	.word	0x20736920
d0004900:	74706d65 	.word	0x74706d65
d0004904:	00000079 	.word	0x00000079
d0004908:	20746f4e 	.word	0x20746f4e
d000490c:	756f6e65 	.word	0x756f6e65
d0004910:	6d206867 	.word	0x6d206867
d0004914:	726f6d65 	.word	0x726f6d65
d0004918:	6f662079 	.word	0x6f662079
d000491c:	69662072 	.word	0x69662072
d0004920:	0000656c 	.word	0x0000656c
d0004924:	64616552 	.word	0x64616552
d0004928:	69616620 	.word	0x69616620
d000492c:	2064656c 	.word	0x2064656c
d0004930:	25205246 	.word	0x25205246
d0004934:	00000075 	.word	0x00000075
d0004938:	20746f4e 	.word	0x20746f4e
d000493c:	4d422061 	.word	0x4d422061
d0004940:	69662050 	.word	0x69662050
d0004944:	0000656c 	.word	0x0000656c
d0004948:	75736e55 	.word	0x75736e55
d000494c:	726f7070 	.word	0x726f7070
d0004950:	20646574 	.word	0x20646574
d0004954:	20504d42 	.word	0x20504d42
d0004958:	64616568 	.word	0x64616568
d000495c:	00007265 	.word	0x00007265
d0004960:	61766e49 	.word	0x61766e49
d0004964:	2064696c 	.word	0x2064696c
d0004968:	20504d42 	.word	0x20504d42
d000496c:	656d6964 	.word	0x656d6964
d0004970:	6f69736e 	.word	0x6f69736e
d0004974:	0000736e 	.word	0x0000736e
d0004978:	20504d42 	.word	0x20504d42
d000497c:	74207369 	.word	0x74207369
d0004980:	6c206f6f 	.word	0x6c206f6f
d0004984:	65677261 	.word	0x65677261
d0004988:	726f6620 	.word	0x726f6620
d000498c:	69687420 	.word	0x69687420
d0004990:	70612073 	.word	0x70612073
d0004994:	74656c70 	.word	0x74656c70
d0004998:	00000000 	.word	0x00000000
d000499c:	20504d42 	.word	0x20504d42
d00049a0:	65786970 	.word	0x65786970
d00049a4:	666f206c 	.word	0x666f206c
d00049a8:	74657366 	.word	0x74657366
d00049ac:	20736920 	.word	0x20736920
d00049b0:	7374756f 	.word	0x7374756f
d00049b4:	20656469 	.word	0x20656469
d00049b8:	20656874 	.word	0x20656874
d00049bc:	656c6966 	.word	0x656c6966
d00049c0:	00000000 	.word	0x00000000
d00049c4:	796c6e4f 	.word	0x796c6e4f
d00049c8:	636e7520 	.word	0x636e7520
d00049cc:	72706d6f 	.word	0x72706d6f
d00049d0:	65737365 	.word	0x65737365
d00049d4:	4d422064 	.word	0x4d422064
d00049d8:	69662050 	.word	0x69662050
d00049dc:	2073656c 	.word	0x2073656c
d00049e0:	20657261 	.word	0x20657261
d00049e4:	70707573 	.word	0x70707573
d00049e8:	6574726f 	.word	0x6574726f
d00049ec:	00000064 	.word	0x00000064
d00049f0:	20504d42 	.word	0x20504d42
d00049f4:	656c6170 	.word	0x656c6170
d00049f8:	20657474 	.word	0x20657474
d00049fc:	74207369 	.word	0x74207369
d0004a00:	636e7572 	.word	0x636e7572
d0004a04:	64657461 	.word	0x64657461
d0004a08:	00000000 	.word	0x00000000
d0004a0c:	20504d42 	.word	0x20504d42
d0004a10:	65786970 	.word	0x65786970
d0004a14:	6164206c 	.word	0x6164206c
d0004a18:	69206174 	.word	0x69206174
d0004a1c:	72742073 	.word	0x72742073
d0004a20:	61636e75 	.word	0x61636e75
d0004a24:	00646574 	.word	0x00646574
d0004a28:	20746f4e 	.word	0x20746f4e
d0004a2c:	756f6e65 	.word	0x756f6e65
d0004a30:	6d206867 	.word	0x6d206867
d0004a34:	726f6d65 	.word	0x726f6d65
d0004a38:	6f662079 	.word	0x6f662079
d0004a3c:	4d422072 	.word	0x4d422072
d0004a40:	69702050 	.word	0x69702050
d0004a44:	736c6578 	.word	0x736c6578
d0004a48:	00000000 	.word	0x00000000
d0004a4c:	75736e55 	.word	0x75736e55
d0004a50:	726f7070 	.word	0x726f7070
d0004a54:	20646574 	.word	0x20646574
d0004a58:	20504d42 	.word	0x20504d42
d0004a5c:	20746962 	.word	0x20746962
d0004a60:	74706564 	.word	0x74706564
d0004a64:	00000068 	.word	0x00000068
d0004a68:	20746f4e 	.word	0x20746f4e
d0004a6c:	756f6e65 	.word	0x756f6e65
d0004a70:	6d206867 	.word	0x6d206867
d0004a74:	726f6d65 	.word	0x726f6d65
d0004a78:	6f662079 	.word	0x6f662079
d0004a7c:	4d422072 	.word	0x4d422072
d0004a80:	72742050 	.word	0x72742050
d0004a84:	6f636575 	.word	0x6f636575
d0004a88:	72756f6c 	.word	0x72756f6c
d0004a8c:	00000000 	.word	0x00000000
d0004a90:	20464649 	.word	0x20464649
d0004a94:	656c6966 	.word	0x656c6966
d0004a98:	20736920 	.word	0x20736920
d0004a9c:	20746f6e 	.word	0x20746f6e
d0004aa0:	4d424c49 	.word	0x4d424c49
d0004aa4:	4d42502f 	.word	0x4d42502f
d0004aa8:	00000000 	.word	0x00000000
d0004aac:	20464649 	.word	0x20464649
d0004ab0:	6e756863 	.word	0x6e756863
d0004ab4:	7369206b 	.word	0x7369206b
d0004ab8:	75727420 	.word	0x75727420
d0004abc:	7461636e 	.word	0x7461636e
d0004ac0:	00006465 	.word	0x00006465
d0004ac4:	61766e49 	.word	0x61766e49
d0004ac8:	2064696c 	.word	0x2064696c
d0004acc:	44484d42 	.word	0x44484d42
d0004ad0:	75686320 	.word	0x75686320
d0004ad4:	00006b6e 	.word	0x00006b6e
d0004ad8:	20464649 	.word	0x20464649
d0004adc:	6d207369 	.word	0x6d207369
d0004ae0:	69737369 	.word	0x69737369
d0004ae4:	4220676e 	.word	0x4220676e
d0004ae8:	2044484d 	.word	0x2044484d
d0004aec:	4220726f 	.word	0x4220726f
d0004af0:	0059444f 	.word	0x0059444f
d0004af4:	75736e55 	.word	0x75736e55
d0004af8:	726f7070 	.word	0x726f7070
d0004afc:	20646574 	.word	0x20646574
d0004b00:	20464649 	.word	0x20464649
d0004b04:	706d6f63 	.word	0x706d6f63
d0004b08:	73736572 	.word	0x73736572
d0004b0c:	006e6f69 	.word	0x006e6f69
d0004b10:	20464649 	.word	0x20464649
d0004b14:	74207369 	.word	0x74207369
d0004b18:	6c206f6f 	.word	0x6c206f6f
d0004b1c:	65677261 	.word	0x65677261
d0004b20:	726f6620 	.word	0x726f6620
d0004b24:	69687420 	.word	0x69687420
d0004b28:	70612073 	.word	0x70612073
d0004b2c:	74656c70 	.word	0x74656c70
d0004b30:	00000000 	.word	0x00000000
d0004b34:	20464649 	.word	0x20464649
d0004b38:	20736168 	.word	0x20736168
d0004b3c:	65726f6d 	.word	0x65726f6d
d0004b40:	61687420 	.word	0x61687420
d0004b44:	2038206e 	.word	0x2038206e
d0004b48:	6e616c70 	.word	0x6e616c70
d0004b4c:	203b7365 	.word	0x203b7365
d0004b50:	796c6e6f 	.word	0x796c6e6f
d0004b54:	4d414820 	.word	0x4d414820
d0004b58:	2d34322f 	.word	0x2d34322f
d0004b5c:	20746962 	.word	0x20746962
d0004b60:	20657261 	.word	0x20657261
d0004b64:	70707573 	.word	0x70707573
d0004b68:	6574726f 	.word	0x6574726f
d0004b6c:	00000064 	.word	0x00000064
d0004b70:	20746f4e 	.word	0x20746f4e
d0004b74:	756f6e65 	.word	0x756f6e65
d0004b78:	6d206867 	.word	0x6d206867
d0004b7c:	726f6d65 	.word	0x726f6d65
d0004b80:	6f662079 	.word	0x6f662079
d0004b84:	46492072 	.word	0x46492072
d0004b88:	6f722046 	.word	0x6f722046
d0004b8c:	00000077 	.word	0x00000077
d0004b90:	20746f4e 	.word	0x20746f4e
d0004b94:	756f6e65 	.word	0x756f6e65
d0004b98:	6d206867 	.word	0x6d206867
d0004b9c:	726f6d65 	.word	0x726f6d65
d0004ba0:	6f662079 	.word	0x6f662079
d0004ba4:	46492072 	.word	0x46492072
d0004ba8:	72742046 	.word	0x72742046
d0004bac:	6f636575 	.word	0x6f636575
d0004bb0:	72756f6c 	.word	0x72756f6c
d0004bb4:	00000000 	.word	0x00000000
d0004bb8:	20746f4e 	.word	0x20746f4e
d0004bbc:	756f6e65 	.word	0x756f6e65
d0004bc0:	6d206867 	.word	0x6d206867
d0004bc4:	726f6d65 	.word	0x726f6d65
d0004bc8:	6f662079 	.word	0x6f662079
d0004bcc:	46492072 	.word	0x46492072
d0004bd0:	69702046 	.word	0x69702046
d0004bd4:	736c6578 	.word	0x736c6578
d0004bd8:	00000000 	.word	0x00000000
d0004bdc:	20464649 	.word	0x20464649
d0004be0:	59444f42 	.word	0x59444f42
d0004be4:	20736920 	.word	0x20736920
d0004be8:	6e757274 	.word	0x6e757274
d0004bec:	65746163 	.word	0x65746163
d0004bf0:	00000064 	.word	0x00000064
d0004bf4:	20464649 	.word	0x20464649
d0004bf8:	65747942 	.word	0x65747942
d0004bfc:	316e7552 	.word	0x316e7552
d0004c00:	74616420 	.word	0x74616420
d0004c04:	73692061 	.word	0x73692061
d0004c08:	726f6320 	.word	0x726f6320
d0004c0c:	74707572 	.word	0x74707572
d0004c10:	00000000 	.word	0x00000000
d0004c14:	6e6b6e55 	.word	0x6e6b6e55
d0004c18:	206e776f 	.word	0x206e776f
d0004c1c:	67616d69 	.word	0x67616d69
d0004c20:	6f662065 	.word	0x6f662065
d0004c24:	74616d72 	.word	0x74616d72
d0004c28:	00000000 	.word	0x00000000
d0004c2c:	64616f4c 	.word	0x64616f4c
d0004c30:	25206465 	.word	0x25206465
d0004c34:	75257875 	.word	0x75257875
d0004c38:	7325203a 	.word	0x7325203a
d0004c3c:	00000000 	.word	0x00000000
d0004c40:	64616f4c 	.word	0x64616f4c
d0004c44:	20676e69 	.word	0x20676e69
d0004c48:	67616d69 	.word	0x67616d69
d0004c4c:	2e2e2e65 	.word	0x2e2e2e65
d0004c50:	00000000 	.word	0x00000000

d0004c54 <_global_impure_ptr>:
d0004c54:	d0004d00                                .M..

d0004c58 <__sf_fake_stderr>:
	...

d0004c78 <__sf_fake_stdin>:
	...

d0004c98 <__sf_fake_stdout>:
	...
d0004cb8:	2b302d23 6c680020 6665004c 47464567     #-0+ .hlL.efgEFG
d0004cc8:	32313000 36353433 41393837 45444342     .0123456789ABCDE
d0004cd8:	31300046 35343332 39383736 64636261     F.0123456789abcd
d0004ce8:	                                         ef.

Disassembly of section .init:

d0004cec <_init>:
d0004cec:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d0004cee:	bf00      	nop

Disassembly of section .fini:

d0004cf0 <_fini>:
d0004cf0:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d0004cf2:	bf00      	nop
